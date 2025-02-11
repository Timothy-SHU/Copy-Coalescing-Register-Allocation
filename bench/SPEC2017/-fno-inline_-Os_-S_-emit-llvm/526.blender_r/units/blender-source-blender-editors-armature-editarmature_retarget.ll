; ModuleID = 'blender/source/blender/editors/armature/editarmature_retarget.c'
source_filename = "blender/source/blender/editors/armature/editarmature_retarget.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.RigGraph = type { %struct.ListBase, %struct.ListBase, float, ptr, ptr, ptr, ptr, i32, %struct.ListBase, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.ListBase = type { ptr, ptr }
%struct.BGraph = type { %struct.ListBase, %struct.ListBase, float, ptr, ptr, ptr, ptr }
%struct.RigArc = type { ptr, ptr, ptr, ptr, i32, float, i32, i32, i32, %struct.ListBase, i32, ptr }
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
%struct.RetargetParam = type { ptr, ptr, ptr, ptr }
%struct.ReebArc = type { ptr, ptr, ptr, ptr, i32, float, i32, i32, i32, %struct.ListBase, i32, ptr, ptr, float, ptr }
%struct.ReebNode = type { ptr, ptr, [3 x float], i32, i32, ptr, i32, i32, i32, [3 x float], [3 x float], i32, float, i32, ptr, ptr }
%struct.ReebArcIterator = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, float, i32, i32, ptr, i32, i32, i32 }
%struct.EmbedBucket = type { float, i32, [3 x float], [3 x float] }
%struct.CollectionPointerLink = type { ptr, ptr, %struct.PointerRNA }
%struct.PointerRNA = type { %struct.anon, ptr, ptr }
%struct.anon = type { ptr }
%struct.Base = type { ptr, ptr, i32, i32, i32, i16, i16, ptr }
%struct._gh_Entry = type { ptr, ptr, ptr }
%struct.MemoNode = type { float, i32 }
%struct.BArcIterator = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, float, i32, i32 }
%struct.ReebGraph = type { %struct.ListBase, %struct.ListBase, float, ptr, ptr, ptr, ptr, i32, i32, ptr, i32, ptr }

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

; Function Attrs: noinline nounwind optsize uwtable
define dso_local float @rollBoneByQuat(ptr noundef %0, ptr nocapture noundef readonly %1, ptr noundef %2) local_unnamed_addr #0 {
  %4 = alloca [3 x float], align 4
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %4) #20
  call fastcc void @copy_v3_v3(ptr noundef nonnull %4, ptr noundef %1) #21
  call void @mul_qt_v3(ptr noundef %2, ptr noundef nonnull %4) #22
  %5 = call float @ED_rollBoneToVector(ptr noundef %0, ptr noundef nonnull %4, i8 noundef zeroext 0) #22
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %4) #20
  ret float %5
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @copy_v3_v3(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1) unnamed_addr #2 {
  %3 = load float, ptr %1, align 4, !tbaa !5
  store float %3, ptr %0, align 4, !tbaa !5
  %4 = getelementptr inbounds float, ptr %1, i64 1
  %5 = load float, ptr %4, align 4, !tbaa !5
  %6 = getelementptr inbounds float, ptr %0, i64 1
  store float %5, ptr %6, align 4, !tbaa !5
  %7 = getelementptr inbounds float, ptr %1, i64 2
  %8 = load float, ptr %7, align 4, !tbaa !5
  %9 = getelementptr inbounds float, ptr %0, i64 2
  store float %8, ptr %9, align 4, !tbaa !5
  ret void
}

; Function Attrs: optsize
declare void @mul_qt_v3(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare float @ED_rollBoneToVector(ptr noundef, ptr noundef, i8 noundef zeroext) local_unnamed_addr #3

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @RIG_freeRigGraph(ptr noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.RigGraph, ptr %0, i64 0, i32 13
  %3 = load ptr, ptr %2, align 8, !tbaa !9
  tail call void @BLI_task_pool_free(ptr noundef %3) #22
  %4 = getelementptr inbounds %struct.RigGraph, ptr %0, i64 0, i32 12
  %5 = load ptr, ptr %4, align 8, !tbaa !14
  tail call void @BLI_task_scheduler_free(ptr noundef %5) #22
  %6 = getelementptr inbounds %struct.RigGraph, ptr %0, i64 0, i32 11
  %7 = load ptr, ptr %6, align 8, !tbaa !15
  %8 = icmp eq ptr %7, null
  br i1 %8, label %10, label %9

9:                                                ; preds = %1
  tail call void @REEB_freeGraph(ptr noundef nonnull %7) #22
  br label %10

10:                                               ; preds = %9, %1
  %11 = load ptr, ptr %0, align 8, !tbaa !16
  %12 = icmp eq ptr %11, null
  br i1 %12, label %17, label %13

13:                                               ; preds = %10, %13
  %14 = phi ptr [ %15, %13 ], [ %11, %10 ]
  tail call void @RIG_freeRigArc(ptr noundef nonnull %14) #21
  %15 = load ptr, ptr %14, align 8, !tbaa !16
  %16 = icmp eq ptr %15, null
  br i1 %16, label %17, label %13, !llvm.loop !17

17:                                               ; preds = %13, %10
  tail call void @BLI_freelistN(ptr noundef nonnull %0) #22
  %18 = getelementptr inbounds %struct.BGraph, ptr %0, i64 0, i32 1
  %19 = load ptr, ptr %18, align 8, !tbaa !16
  %20 = icmp eq ptr %19, null
  br i1 %20, label %25, label %21

21:                                               ; preds = %17, %21
  %22 = phi ptr [ %23, %21 ], [ %19, %17 ]
  tail call void @BLI_freeNode(ptr noundef nonnull %0, ptr noundef nonnull %22) #22
  %23 = load ptr, ptr %22, align 8, !tbaa !16
  %24 = icmp eq ptr %23, null
  br i1 %24, label %25, label %21, !llvm.loop !19

25:                                               ; preds = %21, %17
  tail call void @BLI_freelistN(ptr noundef nonnull %18) #22
  %26 = getelementptr inbounds %struct.RigGraph, ptr %0, i64 0, i32 8
  tail call void @BLI_freelistN(ptr noundef nonnull %26) #22
  %27 = getelementptr inbounds %struct.RigGraph, ptr %0, i64 0, i32 14
  %28 = load ptr, ptr %27, align 8, !tbaa !20
  tail call void @BLI_ghash_free(ptr noundef %28, ptr noundef null, ptr noundef null) #22
  %29 = getelementptr inbounds %struct.RigGraph, ptr %0, i64 0, i32 15
  %30 = load ptr, ptr %29, align 8, !tbaa !21
  tail call void @BLI_ghash_free(ptr noundef %30, ptr noundef null, ptr noundef null) #22
  %31 = getelementptr inbounds %struct.RigGraph, ptr %0, i64 0, i32 7
  %32 = load i32, ptr %31, align 8, !tbaa !22
  %33 = and i32 %32, 1
  %34 = icmp eq i32 %33, 0
  br i1 %34, label %40, label %35

35:                                               ; preds = %25
  %36 = getelementptr inbounds %struct.RigGraph, ptr %0, i64 0, i32 9
  %37 = load ptr, ptr %36, align 8, !tbaa !23
  tail call void @BLI_freelistN(ptr noundef %37) #22
  %38 = load ptr, ptr @MEM_freeN, align 8, !tbaa !16
  %39 = load ptr, ptr %36, align 8, !tbaa !23
  tail call void %38(ptr noundef %39) #22
  br label %40

40:                                               ; preds = %35, %25
  %41 = load ptr, ptr @MEM_freeN, align 8, !tbaa !16
  tail call void %41(ptr noundef nonnull %0) #22
  ret void
}

; Function Attrs: optsize
declare void @BLI_task_pool_free(ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare void @BLI_task_scheduler_free(ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare void @REEB_freeGraph(ptr noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind optsize uwtable
define internal void @RIG_freeRigArc(ptr noundef %0) #0 {
  %2 = getelementptr inbounds %struct.RigArc, ptr %0, i64 0, i32 9
  tail call void @BLI_freelistN(ptr noundef nonnull %2) #22
  ret void
}

; Function Attrs: optsize
declare void @BLI_freelistN(ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare void @BLI_freeNode(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare void @BLI_ghash_free(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nofree noinline nounwind optsize uwtable
define dso_local void @RIG_printArcBones(ptr nocapture noundef readonly %0) local_unnamed_addr #4 {
  %2 = getelementptr inbounds %struct.RigArc, ptr %0, i64 0, i32 9
  %3 = load ptr, ptr %2, align 8, !tbaa !16
  %4 = icmp eq ptr %3, null
  br i1 %4, label %18, label %5

5:                                                ; preds = %1, %15
  %6 = phi ptr [ %16, %15 ], [ %3, %1 ]
  %7 = getelementptr inbounds %struct.RigEdge, ptr %6, i64 0, i32 7
  %8 = load ptr, ptr %7, align 8, !tbaa !24
  %9 = icmp eq ptr %8, null
  br i1 %9, label %13, label %10

10:                                               ; preds = %5
  %11 = getelementptr inbounds %struct.EditBone, ptr %8, i64 0, i32 5
  %12 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str, ptr noundef nonnull %11) #21
  br label %15

13:                                               ; preds = %5
  %14 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.1) #21
  br label %15

15:                                               ; preds = %10, %13
  %16 = load ptr, ptr %6, align 8, !tbaa !16
  %17 = icmp eq ptr %16, null
  br i1 %17, label %18, label %5, !llvm.loop !26

18:                                               ; preds = %15, %1
  %19 = tail call i32 @putchar(i32 10)
  ret void
}

; Function Attrs: nofree nounwind optsize
declare noundef i32 @printf(ptr nocapture noundef readonly, ...) local_unnamed_addr #5

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @RIG_printArc(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.RigArc, ptr %1, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !27
  tail call fastcc void @RIG_printNode(ptr noundef %4, ptr noundef nonnull @.str.3) #21
  %5 = getelementptr inbounds %struct.RigArc, ptr %1, i64 0, i32 9
  %6 = load ptr, ptr %5, align 8, !tbaa !16
  %7 = icmp eq ptr %6, null
  br i1 %7, label %39, label %8

8:                                                ; preds = %2, %36
  %9 = phi ptr [ %37, %36 ], [ %6, %2 ]
  %10 = getelementptr inbounds %struct.RigEdge, ptr %9, i64 0, i32 3
  %11 = load float, ptr %10, align 4, !tbaa !5
  %12 = fpext float %11 to double
  %13 = getelementptr inbounds %struct.RigEdge, ptr %9, i64 0, i32 3, i64 1
  %14 = load float, ptr %13, align 4, !tbaa !5
  %15 = fpext float %14 to double
  %16 = getelementptr inbounds %struct.RigEdge, ptr %9, i64 0, i32 3, i64 2
  %17 = load float, ptr %16, align 4, !tbaa !5
  %18 = fpext float %17 to double
  %19 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.4, double noundef %12, double noundef %15, double noundef %18) #21
  %20 = getelementptr inbounds %struct.RigEdge, ptr %9, i64 0, i32 4
  %21 = load float, ptr %20, align 8, !tbaa !29
  %22 = fpext float %21 to double
  %23 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.5, double noundef %22) #21
  %24 = getelementptr inbounds %struct.RigEdge, ptr %9, i64 0, i32 5
  %25 = load float, ptr %24, align 4, !tbaa !30
  %26 = fmul float %25, 0x404CA5DC20000000
  %27 = fpext float %26 to double
  %28 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.6, double noundef %27) #21
  %29 = getelementptr inbounds %struct.RigEdge, ptr %9, i64 0, i32 7
  %30 = load ptr, ptr %29, align 8, !tbaa !24
  %31 = icmp eq ptr %30, null
  br i1 %31, label %36, label %32

32:                                               ; preds = %8
  %33 = getelementptr inbounds %struct.EditBone, ptr %30, i64 0, i32 5
  %34 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.7, ptr noundef nonnull %33) #21
  %35 = load ptr, ptr %29, align 8, !tbaa !24
  tail call fastcc void @RIG_printLinkedCtrl(ptr noundef %0, ptr noundef %35, i32 noundef 3) #21
  br label %36

36:                                               ; preds = %8, %32
  %37 = load ptr, ptr %9, align 8, !tbaa !16
  %38 = icmp eq ptr %37, null
  br i1 %38, label %39, label %8, !llvm.loop !31

39:                                               ; preds = %36, %2
  %40 = getelementptr inbounds %struct.RigArc, ptr %1, i64 0, i32 6
  %41 = load i32, ptr %40, align 8, !tbaa !32
  %42 = getelementptr inbounds %struct.RigArc, ptr %1, i64 0, i32 8
  %43 = load i32, ptr %42, align 8, !tbaa !33
  %44 = getelementptr inbounds %struct.RigArc, ptr %1, i64 0, i32 7
  %45 = load i32, ptr %44, align 4, !tbaa !34
  %46 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.8, i32 noundef %41, i32 noundef %43, i32 noundef %45) #21
  %47 = getelementptr inbounds %struct.RigArc, ptr %1, i64 0, i32 3
  %48 = load ptr, ptr %47, align 8, !tbaa !35
  tail call fastcc void @RIG_printNode(ptr noundef %48, ptr noundef nonnull @.str.9) #21
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @RIG_printNode(ptr noundef %0, ptr noundef %1) unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.RigNode, ptr %0, i64 0, i32 4
  %4 = load i32, ptr %3, align 8, !tbaa !36
  %5 = getelementptr inbounds %struct.RigNode, ptr %0, i64 0, i32 2
  %6 = load float, ptr %5, align 8, !tbaa !5
  %7 = fpext float %6 to double
  %8 = getelementptr inbounds %struct.RigNode, ptr %0, i64 0, i32 2, i64 1
  %9 = load float, ptr %8, align 4, !tbaa !5
  %10 = fpext float %9 to double
  %11 = getelementptr inbounds %struct.RigNode, ptr %0, i64 0, i32 2, i64 2
  %12 = load float, ptr %11, align 8, !tbaa !5
  %13 = fpext float %12 to double
  %14 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.28, ptr noundef %1, ptr noundef %0, i32 noundef %4, double noundef %7, double noundef %10, double noundef %13) #21
  %15 = getelementptr inbounds %struct.RigNode, ptr %0, i64 0, i32 8
  %16 = load i32, ptr %15, align 8, !tbaa !38
  %17 = and i32 %16, 1
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %30, label %19

19:                                               ; preds = %2
  %20 = and i32 %16, 4
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %22, label %25

22:                                               ; preds = %19
  %23 = and i32 %16, 8
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %28, label %25

25:                                               ; preds = %22, %19
  %26 = phi ptr [ @str.50, %19 ], [ @str, %22 ]
  %27 = tail call i32 @puts(ptr nonnull dereferenceable(1) %26)
  br label %28

28:                                               ; preds = %25, %22
  %29 = getelementptr inbounds %struct.RigNode, ptr %0, i64 0, i32 9
  tail call void @print_v3(ptr noundef nonnull @.str.31, ptr noundef nonnull %29) #22
  br label %30

30:                                               ; preds = %28, %2
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @RIG_printLinkedCtrl(ptr nocapture noundef readonly %0, ptr noundef readnone %1, i32 noundef %2) unnamed_addr #0 {
  %4 = alloca [64 x i8], align 16
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %4) #20
  %5 = icmp sgt i32 %2, 0
  br i1 %5, label %6, label %10

6:                                                ; preds = %3
  %7 = zext nneg i32 %2 to i64
  call void @llvm.memset.p0.i64(ptr nonnull align 16 %4, i8 9, i64 %7, i1 false), !tbaa !39
  %8 = zext nneg i32 %2 to i64
  %9 = getelementptr i8, ptr %4, i64 %8
  br label %10

10:                                               ; preds = %6, %3
  %11 = phi ptr [ %4, %3 ], [ %9, %6 ]
  store i8 0, ptr %11, align 1, !tbaa !39
  %12 = getelementptr inbounds %struct.RigGraph, ptr %0, i64 0, i32 8
  %13 = load ptr, ptr %12, align 8, !tbaa !16
  %14 = icmp eq ptr %13, null
  br i1 %14, label %28, label %15

15:                                               ; preds = %10
  %16 = add nsw i32 %2, 1
  br label %17

17:                                               ; preds = %15, %25
  %18 = phi ptr [ %13, %15 ], [ %26, %25 ]
  %19 = getelementptr inbounds %struct.RigControl, ptr %18, i64 0, i32 5
  %20 = load ptr, ptr %19, align 8, !tbaa !40
  %21 = icmp eq ptr %20, %1
  br i1 %21, label %22, label %25

22:                                               ; preds = %17
  call fastcc void @RIG_printCtrl(ptr noundef nonnull %18, ptr noundef nonnull %4) #21
  %23 = getelementptr inbounds %struct.RigControl, ptr %18, i64 0, i32 4
  %24 = load ptr, ptr %23, align 8, !tbaa !42
  call fastcc void @RIG_printLinkedCtrl(ptr noundef %0, ptr noundef %24, i32 noundef %16) #21
  br label %25

25:                                               ; preds = %17, %22
  %26 = load ptr, ptr %18, align 8, !tbaa !16
  %27 = icmp eq ptr %26, null
  br i1 %27, label %28, label %17, !llvm.loop !43

28:                                               ; preds = %25, %10
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %4) #20
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @RIG_printGraph(ptr nocapture noundef readonly %0) local_unnamed_addr #0 {
  %2 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.51)
  %3 = load ptr, ptr %0, align 8, !tbaa !16
  %4 = icmp eq ptr %3, null
  br i1 %4, label %10, label %5

5:                                                ; preds = %1, %5
  %6 = phi ptr [ %8, %5 ], [ %3, %1 ]
  tail call void @RIG_printArc(ptr noundef nonnull %0, ptr noundef nonnull %6) #21
  %7 = tail call i32 @putchar(i32 10)
  %8 = load ptr, ptr %6, align 8, !tbaa !16
  %9 = icmp eq ptr %8, null
  br i1 %9, label %10, label %5, !llvm.loop !44

10:                                               ; preds = %5, %1
  %11 = getelementptr inbounds %struct.RigGraph, ptr %0, i64 0, i32 10
  %12 = load ptr, ptr %11, align 8, !tbaa !45
  %13 = icmp eq ptr %12, null
  br i1 %13, label %15, label %14

14:                                               ; preds = %10
  tail call fastcc void @RIG_printNode(ptr noundef nonnull %12, ptr noundef nonnull @.str.11) #21
  br label %17

15:                                               ; preds = %10
  %16 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.52)
  br label %17

17:                                               ; preds = %15, %14
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @RIG_graphFromArmature(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #0 {
  %4 = tail call ptr @CTX_data_edit_object(ptr noundef %0) #22
  %5 = tail call ptr @CTX_data_scene(ptr noundef %0) #22
  %6 = tail call fastcc ptr @newRigGraph() #21
  %7 = icmp eq ptr %4, %1
  br i1 %7, label %8, label %14

8:                                                ; preds = %3
  %9 = getelementptr inbounds %struct.Object, ptr %1, i64 0, i32 19
  %10 = load ptr, ptr %9, align 8, !tbaa !46
  %11 = getelementptr inbounds %struct.bArmature, ptr %10, i64 0, i32 4
  %12 = load ptr, ptr %11, align 8, !tbaa !52
  %13 = getelementptr inbounds %struct.RigGraph, ptr %6, i64 0, i32 9
  store ptr %12, ptr %13, align 8, !tbaa !23
  br label %24

14:                                               ; preds = %3
  %15 = load ptr, ptr @MEM_callocN, align 8, !tbaa !16
  %16 = tail call ptr %15(i64 noundef 16, ptr noundef nonnull @.str.13) #22
  %17 = getelementptr inbounds %struct.RigGraph, ptr %6, i64 0, i32 9
  store ptr %16, ptr %17, align 8, !tbaa !23
  %18 = getelementptr inbounds %struct.bArmature, ptr %2, i64 0, i32 2
  %19 = tail call ptr @make_boneList(ptr noundef %16, ptr noundef nonnull %18, ptr noundef null, ptr noundef null) #22
  %20 = getelementptr inbounds %struct.RigGraph, ptr %6, i64 0, i32 7
  %21 = load i32, ptr %20, align 8, !tbaa !22
  %22 = or i32 %21, 1
  store i32 %22, ptr %20, align 8, !tbaa !22
  %23 = load ptr, ptr %17, align 8, !tbaa !23
  br label %24

24:                                               ; preds = %14, %8
  %25 = phi ptr [ %23, %14 ], [ %12, %8 ]
  %26 = getelementptr inbounds %struct.RigGraph, ptr %6, i64 0, i32 16
  store ptr %1, ptr %26, align 8, !tbaa !54
  %27 = getelementptr inbounds %struct.RigGraph, ptr %6, i64 0, i32 9
  %28 = load ptr, ptr %25, align 8, !tbaa !16
  %29 = icmp eq ptr %28, null
  br i1 %29, label %40, label %30

30:                                               ; preds = %24, %37
  %31 = phi ptr [ %38, %37 ], [ %28, %24 ]
  %32 = getelementptr inbounds %struct.EditBone, ptr %31, i64 0, i32 3
  %33 = load ptr, ptr %32, align 8, !tbaa !55
  %34 = icmp eq ptr %33, null
  br i1 %34, label %35, label %37

35:                                               ; preds = %30
  %36 = load ptr, ptr %27, align 8, !tbaa !23
  tail call fastcc void @RIG_arcFromBoneChain(ptr noundef %6, ptr noundef %36, ptr noundef nonnull %31, ptr noundef null, i8 noundef zeroext 0) #21
  br label %37

37:                                               ; preds = %30, %35
  %38 = load ptr, ptr %31, align 8, !tbaa !16
  %39 = icmp eq ptr %38, null
  br i1 %39, label %40, label %30, !llvm.loop !57

40:                                               ; preds = %37, %24
  tail call void @BLI_removeDoubleNodes(ptr noundef %6, float noundef 0x3F50624DE0000000) #22
  tail call fastcc void @RIG_removeNormalNodes(ptr noundef %6) #21
  tail call fastcc void @RIG_removeUneededOffsets(ptr noundef %6) #21
  tail call void @BLI_buildAdjacencyList(ptr noundef %6) #22
  tail call fastcc void @RIG_findHead(ptr noundef %6) #21
  %41 = getelementptr inbounds %struct.RigGraph, ptr %6, i64 0, i32 10
  %42 = load ptr, ptr %41, align 8, !tbaa !45
  %43 = getelementptr inbounds %struct.Scene, ptr %5, i64 0, i32 20
  %44 = load ptr, ptr %43, align 8, !tbaa !58
  %45 = getelementptr inbounds %struct.ToolSettings, ptr %44, i64 0, i32 32
  %46 = load float, ptr %45, align 8, !tbaa !77
  tail call void @BLI_markdownSymmetry(ptr noundef %6, ptr noundef %42, float noundef %46) #22
  tail call fastcc void @RIG_reconnectControlBones(ptr noundef %6) #21
  %47 = tail call zeroext i8 @BLI_isGraphCyclic(ptr noundef %6) #22
  %48 = icmp eq i8 %47, 0
  br i1 %48, label %51, label %49

49:                                               ; preds = %40
  %50 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.59)
  br label %51

51:                                               ; preds = %49, %40
  ret ptr %6
}

; Function Attrs: optsize
declare ptr @CTX_data_edit_object(ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare ptr @CTX_data_scene(ptr noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @newRigGraph() unnamed_addr #0 {
  %1 = load ptr, ptr @MEM_callocN, align 8, !tbaa !16
  %2 = tail call ptr %1(i64 noundef 160, ptr noundef nonnull @.str.37) #22
  %3 = getelementptr inbounds %struct.RigGraph, ptr %2, i64 0, i32 10
  store ptr null, ptr %3, align 8, !tbaa !45
  %4 = tail call ptr @BLI_ghash_str_new(ptr noundef nonnull @.str.38) #22
  %5 = getelementptr inbounds %struct.RigGraph, ptr %2, i64 0, i32 14
  store ptr %4, ptr %5, align 8, !tbaa !20
  %6 = tail call ptr @BLI_ghash_str_new(ptr noundef nonnull @.str.39) #22
  %7 = getelementptr inbounds %struct.RigGraph, ptr %2, i64 0, i32 15
  store ptr %6, ptr %7, align 8, !tbaa !21
  %8 = getelementptr inbounds %struct.RigGraph, ptr %2, i64 0, i32 3
  store ptr @RIG_freeRigArc, ptr %8, align 8, !tbaa !84
  %9 = getelementptr inbounds %struct.RigGraph, ptr %2, i64 0, i32 4
  store ptr null, ptr %9, align 8, !tbaa !85
  %10 = tail call ptr @BLI_task_scheduler_create(i32 noundef 0) #22
  %11 = getelementptr inbounds %struct.RigGraph, ptr %2, i64 0, i32 12
  store ptr %10, ptr %11, align 8, !tbaa !14
  %12 = tail call ptr @BLI_task_pool_create(ptr noundef %10, ptr noundef null) #22
  %13 = getelementptr inbounds %struct.RigGraph, ptr %2, i64 0, i32 13
  store ptr %12, ptr %13, align 8, !tbaa !9
  ret ptr %2
}

; Function Attrs: optsize
declare ptr @make_boneList(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @RIG_arcFromBoneChain(ptr noundef %0, ptr nocapture noundef readonly %1, ptr noundef %2, ptr noundef %3, i8 noundef zeroext %4) unnamed_addr #0 {
  %6 = icmp eq ptr %2, null
  br i1 %6, label %92, label %7

7:                                                ; preds = %5
  %8 = icmp ne i8 %4, 0
  %9 = getelementptr inbounds %struct.RigGraph, ptr %0, i64 0, i32 14
  %10 = getelementptr inbounds %struct.EditBone, ptr %2, i64 0, i32 7
  br label %11

11:                                               ; preds = %7, %78
  %12 = phi i32 [ 0, %7 ], [ %61, %78 ]
  %13 = phi ptr [ null, %7 ], [ %60, %78 ]
  %14 = phi ptr [ %2, %7 ], [ %59, %78 ]
  %15 = phi ptr [ %2, %7 ], [ %79, %78 ]
  %16 = phi ptr [ %3, %7 ], [ %58, %78 ]
  %17 = getelementptr inbounds %struct.EditBone, ptr %15, i64 0, i32 9
  %18 = load i32, ptr %17, align 4, !tbaa !86
  %19 = and i32 %18, 1
  %20 = icmp eq i32 %19, 0
  %21 = select i1 %8, i1 %20, i1 false
  br i1 %21, label %57, label %22

22:                                               ; preds = %11
  %23 = getelementptr inbounds %struct.EditBone, ptr %15, i64 0, i32 9
  %24 = and i32 %18, 4096
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %26, label %53

26:                                               ; preds = %22
  %27 = load ptr, ptr %9, align 8, !tbaa !20
  %28 = getelementptr inbounds %struct.EditBone, ptr %15, i64 0, i32 5
  tail call void @BLI_ghash_insert(ptr noundef %27, ptr noundef nonnull %28, ptr noundef nonnull %15) #22
  %29 = icmp eq ptr %13, null
  br i1 %29, label %30, label %36

30:                                               ; preds = %26
  %31 = tail call fastcc ptr @newRigArc(ptr noundef nonnull %0) #21
  %32 = icmp eq ptr %16, null
  br i1 %32, label %33, label %35

33:                                               ; preds = %30
  %34 = tail call fastcc ptr @newRigNodeHead(ptr noundef nonnull %0, ptr noundef %31, ptr noundef nonnull %10) #21
  br label %36

35:                                               ; preds = %30
  tail call fastcc void @addRigNodeHead(ptr noundef %31, ptr noundef nonnull %16) #21
  br label %36

36:                                               ; preds = %33, %35, %26
  %37 = phi ptr [ %34, %33 ], [ %16, %35 ], [ %16, %26 ]
  %38 = phi ptr [ %31, %33 ], [ %31, %35 ], [ %13, %26 ]
  %39 = getelementptr inbounds %struct.EditBone, ptr %15, i64 0, i32 3
  %40 = load ptr, ptr %39, align 8, !tbaa !55
  %41 = icmp eq ptr %40, null
  br i1 %41, label %48, label %42

42:                                               ; preds = %36
  %43 = load i32, ptr %23, align 4, !tbaa !86
  %44 = and i32 %43, 16
  %45 = icmp eq i32 %44, 0
  br i1 %45, label %46, label %48

46:                                               ; preds = %42
  %47 = getelementptr inbounds %struct.EditBone, ptr %15, i64 0, i32 7
  tail call fastcc void @RIG_addEdgeToArc(ptr noundef %38, ptr noundef nonnull %47, ptr noundef null) #21
  br label %48

48:                                               ; preds = %46, %42, %36
  %49 = getelementptr inbounds %struct.EditBone, ptr %15, i64 0, i32 8
  tail call fastcc void @RIG_addEdgeToArc(ptr noundef %38, ptr noundef nonnull %49, ptr noundef nonnull %15) #21
  %50 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %28, ptr noundef nonnull dereferenceable(5) @.str.3) #23
  %51 = icmp eq i32 %50, 0
  %52 = select i1 %51, i32 1, i32 %12
  br label %57

53:                                               ; preds = %22
  %54 = and i32 %18, 524288
  %55 = icmp eq i32 %54, 0
  br i1 %55, label %56, label %57

56:                                               ; preds = %53
  tail call fastcc void @RIG_addControlBone(ptr noundef %0, ptr noundef nonnull %15) #21
  br label %57

57:                                               ; preds = %11, %48, %56, %53
  %58 = phi ptr [ %16, %56 ], [ %16, %53 ], [ %37, %48 ], [ %16, %11 ]
  %59 = phi ptr [ %14, %56 ], [ %14, %53 ], [ %15, %48 ], [ %14, %11 ]
  %60 = phi ptr [ %13, %56 ], [ %13, %53 ], [ %38, %48 ], [ %13, %11 ]
  %61 = phi i32 [ %12, %56 ], [ %12, %53 ], [ %52, %48 ], [ %12, %11 ]
  %62 = tail call fastcc i32 @countEditBoneChildren(ptr noundef %1, ptr noundef nonnull %15) #21
  %63 = icmp sgt i32 %62, 1
  br i1 %63, label %64, label %78

64:                                               ; preds = %57
  %65 = icmp eq ptr %60, null
  %66 = getelementptr inbounds %struct.EditBone, ptr %15, i64 0, i32 8
  br i1 %65, label %69, label %67

67:                                               ; preds = %64
  %68 = tail call fastcc ptr @newRigNodeTail(ptr noundef %0, ptr noundef nonnull %60, ptr noundef nonnull %66) #21
  br label %71

69:                                               ; preds = %64
  %70 = tail call fastcc ptr @newRigNode(ptr noundef %0, ptr noundef nonnull %66) #21
  br label %71

71:                                               ; preds = %69, %67
  %72 = phi ptr [ %68, %67 ], [ %70, %69 ]
  br label %73

73:                                               ; preds = %71, %73
  %74 = phi i32 [ 0, %71 ], [ %76, %73 ]
  %75 = tail call fastcc ptr @nextEditBoneChild(ptr noundef %1, ptr noundef nonnull %15, i32 noundef %74) #21
  tail call fastcc void @RIG_arcFromBoneChain(ptr noundef %0, ptr noundef %1, ptr noundef %75, ptr noundef %72, i8 noundef zeroext %4) #21
  %76 = add nuw nsw i32 %74, 1
  %77 = icmp eq i32 %76, %62
  br i1 %77, label %86, label %73, !llvm.loop !87

78:                                               ; preds = %57
  %79 = tail call fastcc ptr @nextEditBoneChild(ptr noundef %1, ptr noundef nonnull %15, i32 noundef 0) #21
  %80 = icmp eq ptr %79, null
  br i1 %80, label %81, label %11, !llvm.loop !88

81:                                               ; preds = %78
  %82 = icmp eq ptr %60, null
  br i1 %82, label %86, label %83

83:                                               ; preds = %81
  %84 = getelementptr inbounds %struct.EditBone, ptr %59, i64 0, i32 8
  %85 = tail call fastcc ptr @newRigNodeTail(ptr noundef %0, ptr noundef nonnull %60, ptr noundef nonnull %84) #21
  br label %86

86:                                               ; preds = %73, %83, %81
  %87 = icmp eq i32 %61, 0
  br i1 %87, label %92, label %88

88:                                               ; preds = %86
  %89 = getelementptr inbounds %struct.RigArc, ptr %60, i64 0, i32 3
  %90 = load ptr, ptr %89, align 8, !tbaa !35
  %91 = getelementptr inbounds %struct.RigGraph, ptr %0, i64 0, i32 10
  store ptr %90, ptr %91, align 8, !tbaa !45
  br label %92

92:                                               ; preds = %5, %88, %86
  ret void
}

; Function Attrs: optsize
declare void @BLI_removeDoubleNodes(ptr noundef, float noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @RIG_removeNormalNodes(ptr noundef %0) unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.RigGraph, ptr %0, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !89
  %4 = icmp eq ptr %3, null
  br i1 %4, label %35, label %5

5:                                                ; preds = %1, %33
  %6 = phi ptr [ %7, %33 ], [ %3, %1 ]
  %7 = load ptr, ptr %6, align 8, !tbaa !90
  %8 = getelementptr inbounds %struct.RigNode, ptr %6, i64 0, i32 4
  %9 = load i32, ptr %8, align 8, !tbaa !36
  %10 = icmp eq i32 %9, 2
  br i1 %10, label %11, label %33

11:                                               ; preds = %5
  %12 = load ptr, ptr %0, align 8, !tbaa !16
  %13 = icmp eq ptr %12, null
  br i1 %13, label %30, label %14

14:                                               ; preds = %11, %26
  %15 = phi ptr [ %28, %26 ], [ %12, %11 ]
  %16 = phi ptr [ %27, %26 ], [ null, %11 ]
  %17 = getelementptr inbounds %struct.RigArc, ptr %15, i64 0, i32 2
  %18 = load ptr, ptr %17, align 8, !tbaa !27
  %19 = icmp eq ptr %18, %6
  br i1 %19, label %24, label %20

20:                                               ; preds = %14
  %21 = getelementptr inbounds %struct.RigArc, ptr %15, i64 0, i32 3
  %22 = load ptr, ptr %21, align 8, !tbaa !35
  %23 = icmp eq ptr %22, %6
  br i1 %23, label %24, label %26

24:                                               ; preds = %20, %14
  %25 = icmp eq ptr %16, null
  br i1 %25, label %26, label %30

26:                                               ; preds = %24, %20
  %27 = phi ptr [ %16, %20 ], [ %15, %24 ]
  %28 = load ptr, ptr %15, align 8, !tbaa !16
  %29 = icmp eq ptr %28, null
  br i1 %29, label %30, label %14, !llvm.loop !91

30:                                               ; preds = %26, %24, %11
  %31 = phi ptr [ null, %11 ], [ %16, %24 ], [ %27, %26 ]
  %32 = phi ptr [ null, %11 ], [ %15, %24 ], [ null, %26 ]
  tail call fastcc void @RIG_joinArcs(ptr noundef nonnull %0, ptr noundef nonnull %6, ptr noundef %31, ptr noundef %32) #21
  br label %33

33:                                               ; preds = %5, %30
  %34 = icmp eq ptr %7, null
  br i1 %34, label %35, label %5, !llvm.loop !92

35:                                               ; preds = %33, %1
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @RIG_removeUneededOffsets(ptr noundef %0) unnamed_addr #0 {
  %2 = load ptr, ptr %0, align 8, !tbaa !16
  %3 = icmp eq ptr %2, null
  br i1 %3, label %179, label %4

4:                                                ; preds = %1, %176
  %5 = phi ptr [ %177, %176 ], [ %2, %1 ]
  %6 = getelementptr inbounds %struct.RigArc, ptr %5, i64 0, i32 9
  %7 = load ptr, ptr %6, align 8, !tbaa !93
  %8 = getelementptr inbounds %struct.RigArc, ptr %5, i64 0, i32 9, i32 1
  %9 = load ptr, ptr %8, align 8, !tbaa !94
  %10 = getelementptr inbounds %struct.RigEdge, ptr %7, i64 0, i32 7
  %11 = load ptr, ptr %10, align 8, !tbaa !24
  %12 = icmp eq ptr %11, null
  br i1 %12, label %13, label %139

13:                                               ; preds = %4
  %14 = getelementptr inbounds %struct.RigEdge, ptr %7, i64 0, i32 3
  %15 = getelementptr inbounds %struct.RigArc, ptr %5, i64 0, i32 2
  %16 = load ptr, ptr %15, align 8, !tbaa !27
  %17 = getelementptr inbounds %struct.RigNode, ptr %16, i64 0, i32 2
  %18 = tail call fastcc float @len_v3v3(ptr noundef nonnull %14, ptr noundef nonnull %17) #21
  %19 = fcmp ugt float %18, 0x3F50624DE0000000
  br i1 %19, label %22, label %20

20:                                               ; preds = %13
  tail call void @BLI_remlink(ptr noundef nonnull %6, ptr noundef nonnull %7) #22
  %21 = load ptr, ptr @MEM_freeN, align 8, !tbaa !16
  tail call void %21(ptr noundef nonnull %7) #22
  br label %139

22:                                               ; preds = %13
  %23 = load ptr, ptr %15, align 8, !tbaa !27
  %24 = getelementptr inbounds %struct.RigNode, ptr %23, i64 0, i32 4
  %25 = load i32, ptr %24, align 8, !tbaa !36
  %26 = icmp eq i32 %25, 1
  br i1 %26, label %30, label %27

27:                                               ; preds = %22
  %28 = load ptr, ptr %0, align 8, !tbaa !16
  %29 = icmp eq ptr %28, null
  br i1 %29, label %70, label %44

30:                                               ; preds = %22
  %31 = tail call ptr @BLI_FindNodeByPosition(ptr noundef nonnull %0, ptr noundef nonnull %14, float noundef 0x3F50624DE0000000) #22
  %32 = icmp eq ptr %31, null
  br i1 %32, label %36, label %33

33:                                               ; preds = %30
  tail call void @BLI_remlink(ptr noundef nonnull %6, ptr noundef nonnull %7) #22
  %34 = load ptr, ptr @MEM_freeN, align 8, !tbaa !16
  tail call void %34(ptr noundef nonnull %7) #22
  %35 = load ptr, ptr %15, align 8, !tbaa !27
  tail call void @BLI_replaceNodeInArc(ptr noundef nonnull %0, ptr noundef nonnull %5, ptr noundef nonnull %31, ptr noundef %35) #22
  br label %139

36:                                               ; preds = %30
  %37 = load ptr, ptr %7, align 8, !tbaa !95
  %38 = icmp eq ptr %37, null
  br i1 %38, label %139, label %39

39:                                               ; preds = %36
  tail call void @BLI_remlink(ptr noundef nonnull %6, ptr noundef nonnull %7) #22
  %40 = load ptr, ptr @MEM_freeN, align 8, !tbaa !16
  tail call void %40(ptr noundef nonnull %7) #22
  %41 = load ptr, ptr %15, align 8, !tbaa !27
  %42 = getelementptr inbounds %struct.RigNode, ptr %41, i64 0, i32 2
  %43 = getelementptr inbounds %struct.RigEdge, ptr %37, i64 0, i32 2
  tail call fastcc void @copy_v3_v3(ptr noundef nonnull %42, ptr noundef nonnull %43) #21
  br label %139

44:                                               ; preds = %27, %67
  %45 = phi ptr [ %68, %67 ], [ %28, %27 ]
  %46 = icmp eq ptr %45, %5
  br i1 %46, label %67, label %47

47:                                               ; preds = %44
  %48 = getelementptr inbounds %struct.RigArc, ptr %45, i64 0, i32 2
  %49 = load ptr, ptr %48, align 8, !tbaa !27
  %50 = icmp eq ptr %49, %23
  br i1 %50, label %51, label %57

51:                                               ; preds = %47
  %52 = getelementptr inbounds %struct.RigArc, ptr %45, i64 0, i32 9
  %53 = load ptr, ptr %52, align 8, !tbaa !93
  %54 = getelementptr inbounds %struct.RigEdge, ptr %53, i64 0, i32 7
  %55 = load ptr, ptr %54, align 8, !tbaa !24
  %56 = icmp eq ptr %55, null
  br i1 %56, label %67, label %139

57:                                               ; preds = %47
  %58 = getelementptr inbounds %struct.RigArc, ptr %45, i64 0, i32 3
  %59 = load ptr, ptr %58, align 8, !tbaa !35
  %60 = icmp eq ptr %59, %23
  br i1 %60, label %61, label %67

61:                                               ; preds = %57
  %62 = getelementptr inbounds %struct.RigArc, ptr %45, i64 0, i32 9, i32 1
  %63 = load ptr, ptr %62, align 8, !tbaa !94
  %64 = getelementptr inbounds %struct.RigEdge, ptr %63, i64 0, i32 7
  %65 = load ptr, ptr %64, align 8, !tbaa !24
  %66 = icmp eq ptr %65, null
  br i1 %66, label %67, label %139

67:                                               ; preds = %57, %61, %51, %44
  %68 = load ptr, ptr %45, align 8, !tbaa !16
  %69 = icmp eq ptr %68, null
  br i1 %69, label %70, label %44, !llvm.loop !96

70:                                               ; preds = %67, %27
  %71 = tail call ptr @BLI_FindNodeByPosition(ptr noundef nonnull %0, ptr noundef nonnull %14, float noundef 0x3F50624DE0000000) #22
  %72 = icmp eq ptr %71, null
  br i1 %72, label %104, label %73

73:                                               ; preds = %70
  %74 = load ptr, ptr %0, align 8, !tbaa !16
  %75 = icmp eq ptr %74, null
  br i1 %75, label %101, label %76

76:                                               ; preds = %73, %98
  %77 = phi ptr [ %99, %98 ], [ %74, %73 ]
  %78 = icmp eq ptr %77, %5
  br i1 %78, label %98, label %79

79:                                               ; preds = %76
  %80 = getelementptr inbounds %struct.RigArc, ptr %77, i64 0, i32 2
  %81 = load ptr, ptr %80, align 8, !tbaa !27
  %82 = load ptr, ptr %15, align 8, !tbaa !27
  %83 = icmp eq ptr %81, %82
  br i1 %83, label %84, label %87

84:                                               ; preds = %79
  tail call void @BLI_replaceNodeInArc(ptr noundef nonnull %0, ptr noundef nonnull %77, ptr noundef nonnull %71, ptr noundef %81) #22
  %85 = getelementptr inbounds %struct.RigArc, ptr %77, i64 0, i32 9
  %86 = load ptr, ptr %85, align 8, !tbaa !93
  tail call void @BLI_remlink(ptr noundef nonnull %85, ptr noundef %86) #22
  br label %95

87:                                               ; preds = %79
  %88 = getelementptr inbounds %struct.RigArc, ptr %77, i64 0, i32 3
  %89 = load ptr, ptr %88, align 8, !tbaa !35
  %90 = icmp eq ptr %89, %82
  br i1 %90, label %91, label %98

91:                                               ; preds = %87
  tail call void @BLI_replaceNodeInArc(ptr noundef nonnull %0, ptr noundef nonnull %77, ptr noundef nonnull %71, ptr noundef %82) #22
  %92 = getelementptr inbounds %struct.RigArc, ptr %77, i64 0, i32 9
  %93 = getelementptr inbounds %struct.RigArc, ptr %77, i64 0, i32 9, i32 1
  %94 = load ptr, ptr %93, align 8, !tbaa !94
  tail call void @BLI_remlink(ptr noundef nonnull %92, ptr noundef %94) #22
  br label %95

95:                                               ; preds = %91, %84
  %96 = phi ptr [ %86, %84 ], [ %94, %91 ]
  %97 = load ptr, ptr @MEM_freeN, align 8, !tbaa !16
  tail call void %97(ptr noundef %96) #22
  br label %98

98:                                               ; preds = %95, %87, %76
  %99 = load ptr, ptr %77, align 8, !tbaa !16
  %100 = icmp eq ptr %99, null
  br i1 %100, label %101, label %76, !llvm.loop !97

101:                                              ; preds = %98, %73
  tail call void @BLI_remlink(ptr noundef nonnull %6, ptr noundef %7) #22
  %102 = load ptr, ptr @MEM_freeN, align 8, !tbaa !16
  tail call void %102(ptr noundef %7) #22
  %103 = load ptr, ptr %15, align 8, !tbaa !27
  tail call void @BLI_replaceNodeInArc(ptr noundef nonnull %0, ptr noundef nonnull %5, ptr noundef nonnull %71, ptr noundef %103) #22
  br label %139

104:                                              ; preds = %70
  %105 = load ptr, ptr %7, align 8, !tbaa !95
  %106 = icmp eq ptr %105, null
  br i1 %106, label %139, label %107

107:                                              ; preds = %104
  tail call void @BLI_remlink(ptr noundef nonnull %6, ptr noundef nonnull %7) #22
  %108 = load ptr, ptr @MEM_freeN, align 8, !tbaa !16
  tail call void %108(ptr noundef nonnull %7) #22
  %109 = load ptr, ptr %15, align 8, !tbaa !27
  %110 = getelementptr inbounds %struct.RigNode, ptr %109, i64 0, i32 2
  %111 = getelementptr inbounds %struct.RigEdge, ptr %105, i64 0, i32 2
  tail call fastcc void @copy_v3_v3(ptr noundef nonnull %110, ptr noundef nonnull %111) #21
  %112 = load ptr, ptr %0, align 8, !tbaa !16
  %113 = icmp eq ptr %112, null
  br i1 %113, label %139, label %114

114:                                              ; preds = %107, %136
  %115 = phi ptr [ %137, %136 ], [ %112, %107 ]
  %116 = icmp eq ptr %115, %5
  br i1 %116, label %136, label %117

117:                                              ; preds = %114
  %118 = getelementptr inbounds %struct.RigArc, ptr %115, i64 0, i32 2
  %119 = load ptr, ptr %118, align 8, !tbaa !27
  %120 = load ptr, ptr %15, align 8, !tbaa !27
  %121 = icmp eq ptr %119, %120
  br i1 %121, label %122, label %125

122:                                              ; preds = %117
  %123 = getelementptr inbounds %struct.RigArc, ptr %115, i64 0, i32 9
  %124 = load ptr, ptr %123, align 8, !tbaa !93
  tail call void @BLI_remlink(ptr noundef nonnull %123, ptr noundef %124) #22
  br label %133

125:                                              ; preds = %117
  %126 = getelementptr inbounds %struct.RigArc, ptr %115, i64 0, i32 3
  %127 = load ptr, ptr %126, align 8, !tbaa !35
  %128 = icmp eq ptr %127, %120
  br i1 %128, label %129, label %136

129:                                              ; preds = %125
  %130 = getelementptr inbounds %struct.RigArc, ptr %115, i64 0, i32 9
  %131 = getelementptr inbounds %struct.RigArc, ptr %115, i64 0, i32 9, i32 1
  %132 = load ptr, ptr %131, align 8, !tbaa !94
  tail call void @BLI_remlink(ptr noundef nonnull %130, ptr noundef %132) #22
  br label %133

133:                                              ; preds = %129, %122
  %134 = phi ptr [ %124, %122 ], [ %132, %129 ]
  %135 = load ptr, ptr @MEM_freeN, align 8, !tbaa !16
  tail call void %135(ptr noundef %134) #22
  br label %136

136:                                              ; preds = %133, %125, %114
  %137 = load ptr, ptr %115, align 8, !tbaa !16
  %138 = icmp eq ptr %137, null
  br i1 %138, label %139, label %114, !llvm.loop !98

139:                                              ; preds = %61, %51, %136, %107, %104, %101, %33, %39, %36, %20, %4
  %140 = getelementptr inbounds %struct.RigEdge, ptr %9, i64 0, i32 7
  %141 = load ptr, ptr %140, align 8, !tbaa !24
  %142 = icmp eq ptr %141, null
  br i1 %142, label %143, label %176

143:                                              ; preds = %139
  %144 = getelementptr inbounds %struct.RigEdge, ptr %9, i64 0, i32 2
  %145 = getelementptr inbounds %struct.RigArc, ptr %5, i64 0, i32 3
  %146 = load ptr, ptr %145, align 8, !tbaa !35
  %147 = getelementptr inbounds %struct.RigNode, ptr %146, i64 0, i32 2
  %148 = tail call fastcc float @len_v3v3(ptr noundef nonnull %144, ptr noundef nonnull %147) #21
  %149 = fcmp ugt float %148, 0x3F50624DE0000000
  br i1 %149, label %152, label %150

150:                                              ; preds = %143
  tail call void @BLI_remlink(ptr noundef nonnull %6, ptr noundef nonnull %9) #22
  %151 = load ptr, ptr @MEM_freeN, align 8, !tbaa !16
  tail call void %151(ptr noundef nonnull %9) #22
  br label %176

152:                                              ; preds = %143
  %153 = load ptr, ptr %145, align 8, !tbaa !35
  %154 = getelementptr inbounds %struct.RigNode, ptr %153, i64 0, i32 4
  %155 = load i32, ptr %154, align 8, !tbaa !36
  %156 = icmp eq i32 %155, 1
  br i1 %156, label %157, label %176

157:                                              ; preds = %152
  %158 = tail call ptr @BLI_FindNodeByPosition(ptr noundef nonnull %0, ptr noundef nonnull %144, float noundef 0x3F50624DE0000000) #22
  %159 = icmp eq ptr %158, null
  %160 = getelementptr inbounds %struct.RigEdge, ptr %9, i64 0, i32 1
  %161 = load ptr, ptr %160, align 8, !tbaa !99
  br i1 %159, label %168, label %162

162:                                              ; preds = %157
  tail call void @BLI_remlink(ptr noundef nonnull %6, ptr noundef nonnull %9) #22
  %163 = load ptr, ptr @MEM_freeN, align 8, !tbaa !16
  tail call void %163(ptr noundef nonnull %9) #22
  %164 = load ptr, ptr %145, align 8, !tbaa !35
  tail call void @BLI_replaceNodeInArc(ptr noundef nonnull %0, ptr noundef nonnull %5, ptr noundef nonnull %158, ptr noundef %164) #22
  %165 = icmp eq ptr %161, null
  br i1 %165, label %176, label %166

166:                                              ; preds = %162
  %167 = getelementptr inbounds %struct.RigEdge, ptr %161, i64 0, i32 5
  store float 0.000000e+00, ptr %167, align 4, !tbaa !30
  br label %176

168:                                              ; preds = %157
  %169 = icmp eq ptr %161, null
  br i1 %169, label %176, label %170

170:                                              ; preds = %168
  tail call void @BLI_remlink(ptr noundef nonnull %6, ptr noundef nonnull %9) #22
  %171 = load ptr, ptr @MEM_freeN, align 8, !tbaa !16
  tail call void %171(ptr noundef nonnull %9) #22
  %172 = load ptr, ptr %145, align 8, !tbaa !35
  %173 = getelementptr inbounds %struct.RigNode, ptr %172, i64 0, i32 2
  %174 = getelementptr inbounds %struct.RigEdge, ptr %161, i64 0, i32 3
  tail call fastcc void @copy_v3_v3(ptr noundef nonnull %173, ptr noundef nonnull %174) #21
  %175 = getelementptr inbounds %struct.RigEdge, ptr %161, i64 0, i32 5
  store float 0.000000e+00, ptr %175, align 4, !tbaa !30
  br label %176

176:                                              ; preds = %166, %162, %170, %168, %150, %152, %139
  %177 = load ptr, ptr %5, align 8, !tbaa !16
  %178 = icmp eq ptr %177, null
  br i1 %178, label %179, label %4, !llvm.loop !100

179:                                              ; preds = %176, %1
  ret void
}

; Function Attrs: optsize
declare void @BLI_buildAdjacencyList(ptr noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @RIG_findHead(ptr noundef %0) unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.RigGraph, ptr %0, i64 0, i32 10
  %3 = load ptr, ptr %2, align 8, !tbaa !45
  %4 = icmp eq ptr %3, null
  br i1 %4, label %5, label %36

5:                                                ; preds = %1
  %6 = tail call i32 @BLI_countlist(ptr noundef nonnull %0) #22
  %7 = icmp eq i32 %6, 1
  br i1 %7, label %8, label %12

8:                                                ; preds = %5
  %9 = load ptr, ptr %0, align 8, !tbaa !101
  %10 = getelementptr inbounds %struct.RigArc, ptr %9, i64 0, i32 2
  %11 = load ptr, ptr %10, align 8, !tbaa !27
  store ptr %11, ptr %2, align 8, !tbaa !45
  br label %30

12:                                               ; preds = %5, %16
  %13 = phi ptr [ %14, %16 ], [ %0, %5 ]
  %14 = load ptr, ptr %13, align 8, !tbaa !16
  %15 = icmp eq ptr %14, null
  br i1 %15, label %28, label %16

16:                                               ; preds = %12
  %17 = getelementptr inbounds %struct.RigArc, ptr %14, i64 0, i32 9, i32 1
  %18 = load ptr, ptr %17, align 8, !tbaa !94
  %19 = getelementptr inbounds %struct.RigEdge, ptr %18, i64 0, i32 7
  %20 = load ptr, ptr %19, align 8, !tbaa !24
  %21 = getelementptr inbounds %struct.EditBone, ptr %20, i64 0, i32 9
  %22 = load i32, ptr %21, align 4, !tbaa !86
  %23 = and i32 %22, 5
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %12, label %25, !llvm.loop !102

25:                                               ; preds = %16
  %26 = getelementptr inbounds %struct.RigArc, ptr %14, i64 0, i32 3
  %27 = load ptr, ptr %26, align 8, !tbaa !35
  store ptr %27, ptr %2, align 8, !tbaa !45
  br label %30

28:                                               ; preds = %12
  %29 = load ptr, ptr %2, align 8, !tbaa !45
  br label %30

30:                                               ; preds = %28, %25, %8
  %31 = phi ptr [ %29, %28 ], [ %27, %25 ], [ %11, %8 ]
  %32 = icmp eq ptr %31, null
  br i1 %32, label %33, label %36

33:                                               ; preds = %30
  %34 = getelementptr inbounds %struct.RigGraph, ptr %0, i64 0, i32 1
  %35 = load ptr, ptr %34, align 8, !tbaa !89
  store ptr %35, ptr %2, align 8, !tbaa !45
  br label %36

36:                                               ; preds = %30, %33, %1
  ret void
}

; Function Attrs: optsize
declare void @BLI_markdownSymmetry(ptr noundef, ptr noundef, float noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @RIG_reconnectControlBones(ptr nocapture noundef readonly %0) unnamed_addr #0 {
  %2 = alloca %struct.ListBase, align 8
  %3 = alloca %struct.ListBase, align 8
  %4 = alloca %struct.GHashIterator, align 8
  %5 = getelementptr inbounds %struct.RigGraph, ptr %0, i64 0, i32 8
  %6 = load ptr, ptr %5, align 8, !tbaa !16
  %7 = icmp eq ptr %6, null
  br i1 %7, label %11, label %8

8:                                                ; preds = %1
  %9 = getelementptr inbounds %struct.RigGraph, ptr %0, i64 0, i32 16
  %10 = getelementptr inbounds %struct.RigGraph, ptr %0, i64 0, i32 14
  br label %14

11:                                               ; preds = %215, %1
  %12 = getelementptr inbounds %struct.RigGraph, ptr %0, i64 0, i32 15
  %13 = getelementptr inbounds %struct.RigGraph, ptr %0, i64 0, i32 16
  br label %220

14:                                               ; preds = %8, %215
  %15 = phi ptr [ %6, %8 ], [ %216, %215 ]
  %16 = load ptr, ptr %9, align 8, !tbaa !54
  %17 = getelementptr inbounds %struct.Object, ptr %16, i64 0, i32 18
  %18 = load ptr, ptr %17, align 8, !tbaa !103
  %19 = load ptr, ptr %18, align 8, !tbaa !16
  %20 = icmp eq ptr %19, null
  br i1 %20, label %104, label %21

21:                                               ; preds = %14
  %22 = getelementptr inbounds %struct.RigControl, ptr %15, i64 0, i32 4
  br label %27

23:                                               ; preds = %98, %27
  %24 = phi i32 [ %29, %27 ], [ %99, %98 ]
  %25 = load ptr, ptr %28, align 8, !tbaa !16
  %26 = icmp eq ptr %25, null
  br i1 %26, label %102, label %27, !llvm.loop !104

27:                                               ; preds = %21, %23
  %28 = phi ptr [ %19, %21 ], [ %25, %23 ]
  %29 = phi i32 [ 0, %21 ], [ %24, %23 ]
  %30 = getelementptr inbounds %struct.bPoseChannel, ptr %28, i64 0, i32 3
  %31 = load ptr, ptr %30, align 8, !tbaa !16
  %32 = icmp eq ptr %31, null
  br i1 %32, label %23, label %33

33:                                               ; preds = %27
  %34 = getelementptr inbounds %struct.bPoseChannel, ptr %28, i64 0, i32 4
  br label %35

35:                                               ; preds = %33, %98
  %36 = phi ptr [ %31, %33 ], [ %100, %98 ]
  %37 = phi i32 [ %29, %33 ], [ %99, %98 ]
  %38 = call ptr @BKE_constraint_typeinfo_get(ptr noundef nonnull %36) #22
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %2) #20
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %2, i8 0, i64 16, i1 false)
  %39 = icmp eq ptr %38, null
  br i1 %39, label %98, label %40

40:                                               ; preds = %35
  %41 = getelementptr inbounds %struct.bConstraintTypeInfo, ptr %38, i64 0, i32 8
  %42 = load ptr, ptr %41, align 8, !tbaa !105
  %43 = icmp eq ptr %42, null
  br i1 %43, label %98, label %44

44:                                               ; preds = %40
  %45 = call i32 %42(ptr noundef nonnull %36, ptr noundef nonnull %2) #22
  %46 = load ptr, ptr %2, align 8, !tbaa !16
  %47 = icmp eq ptr %46, null
  br i1 %47, label %92, label %48

48:                                               ; preds = %44
  %49 = getelementptr inbounds %struct.bConstraint, ptr %36, i64 0, i32 3
  br label %50

50:                                               ; preds = %48, %87
  %51 = phi ptr [ %46, %48 ], [ %90, %87 ]
  %52 = phi i32 [ 0, %48 ], [ %89, %87 ]
  %53 = phi i32 [ %37, %48 ], [ %88, %87 ]
  %54 = getelementptr inbounds %struct.bConstraintTarget, ptr %51, i64 0, i32 2
  %55 = load ptr, ptr %54, align 8, !tbaa !107
  %56 = load ptr, ptr %9, align 8, !tbaa !54
  %57 = icmp eq ptr %55, %56
  br i1 %57, label %58, label %87

58:                                               ; preds = %50
  %59 = getelementptr inbounds %struct.bConstraintTarget, ptr %51, i64 0, i32 3
  %60 = load ptr, ptr %22, align 8, !tbaa !42
  %61 = getelementptr inbounds %struct.EditBone, ptr %60, i64 0, i32 5
  %62 = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %59, ptr noundef nonnull dereferenceable(1) %61) #23
  %63 = icmp eq i32 %62, 0
  br i1 %63, label %64, label %87

64:                                               ; preds = %58
  %65 = load ptr, ptr %10, align 8, !tbaa !20
  %66 = call ptr @BLI_ghash_lookup(ptr noundef %65, ptr noundef nonnull %34) #22
  %67 = icmp eq ptr %66, null
  br i1 %67, label %87, label %68

68:                                               ; preds = %64
  %69 = load i16, ptr %49, align 8, !tbaa !109
  %70 = icmp eq i16 %69, 3
  %71 = icmp eq i32 %52, 1
  %72 = select i1 %70, i1 %71, i1 false
  br i1 %72, label %73, label %84

73:                                               ; preds = %68
  %74 = getelementptr inbounds %struct.EditBone, ptr %66, i64 0, i32 3
  %75 = load ptr, ptr %74, align 8, !tbaa !55
  %76 = icmp eq ptr %75, null
  br i1 %76, label %84, label %77

77:                                               ; preds = %73
  %78 = load ptr, ptr %10, align 8, !tbaa !20
  %79 = getelementptr inbounds %struct.EditBone, ptr %75, i64 0, i32 5
  %80 = call zeroext i8 @BLI_ghash_haskey(ptr noundef %78, ptr noundef nonnull %79) #22
  %81 = icmp eq i8 %80, 0
  br i1 %81, label %84, label %82

82:                                               ; preds = %77
  %83 = load ptr, ptr %74, align 8, !tbaa !55
  br label %84

84:                                               ; preds = %73, %77, %82, %68
  %85 = phi ptr [ %83, %82 ], [ %66, %77 ], [ %66, %73 ], [ %66, %68 ]
  %86 = call fastcc i32 @RIG_parentControl(ptr noundef nonnull %15, ptr noundef %85) #21, !range !111
  br label %87

87:                                               ; preds = %64, %84, %50, %58
  %88 = phi i32 [ %53, %58 ], [ %53, %50 ], [ %86, %84 ], [ %53, %64 ]
  %89 = add nuw nsw i32 %52, 1
  %90 = load ptr, ptr %51, align 8, !tbaa !16
  %91 = icmp eq ptr %90, null
  br i1 %91, label %92, label %50, !llvm.loop !112

92:                                               ; preds = %87, %44
  %93 = phi i32 [ %37, %44 ], [ %88, %87 ]
  %94 = getelementptr inbounds %struct.bConstraintTypeInfo, ptr %38, i64 0, i32 9
  %95 = load ptr, ptr %94, align 8, !tbaa !113
  %96 = icmp eq ptr %95, null
  br i1 %96, label %98, label %97

97:                                               ; preds = %92
  call void %95(ptr noundef nonnull %36, ptr noundef nonnull %2, i8 noundef zeroext 0) #22
  br label %98

98:                                               ; preds = %92, %97, %40, %35
  %99 = phi i32 [ %37, %40 ], [ %37, %35 ], [ %93, %97 ], [ %93, %92 ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %2) #20
  %100 = load ptr, ptr %36, align 8, !tbaa !16
  %101 = icmp eq ptr %100, null
  br i1 %101, label %23, label %35, !llvm.loop !114

102:                                              ; preds = %23
  %103 = icmp eq i32 %24, 0
  br i1 %103, label %104, label %215

104:                                              ; preds = %14, %102
  %105 = getelementptr inbounds %struct.RigControl, ptr %15, i64 0, i32 4
  %106 = load ptr, ptr %105, align 8, !tbaa !42
  %107 = getelementptr inbounds %struct.EditBone, ptr %106, i64 0, i32 3
  %108 = load ptr, ptr %107, align 8, !tbaa !55
  %109 = icmp eq ptr %108, null
  br i1 %109, label %115, label %110

110:                                              ; preds = %104
  %111 = load ptr, ptr %10, align 8, !tbaa !20
  %112 = getelementptr inbounds %struct.EditBone, ptr %108, i64 0, i32 5
  %113 = call ptr @BLI_ghash_lookup(ptr noundef %111, ptr noundef nonnull %112) #22
  %114 = call fastcc i32 @RIG_parentControl(ptr noundef nonnull %15, ptr noundef %113) #21, !range !111
  br label %115

115:                                              ; preds = %110, %104
  %116 = load ptr, ptr %0, align 8, !tbaa !16
  %117 = icmp eq ptr %116, null
  br i1 %117, label %166, label %123

118:                                              ; preds = %161, %123
  %119 = phi ptr [ %126, %123 ], [ %162, %161 ]
  %120 = phi ptr [ %125, %123 ], [ %163, %161 ]
  %121 = load ptr, ptr %124, align 8, !tbaa !16
  %122 = icmp eq ptr %121, null
  br i1 %122, label %166, label %123, !llvm.loop !115

123:                                              ; preds = %115, %118
  %124 = phi ptr [ %121, %118 ], [ %116, %115 ]
  %125 = phi ptr [ %120, %118 ], [ null, %115 ]
  %126 = phi ptr [ %119, %118 ], [ null, %115 ]
  %127 = getelementptr inbounds %struct.RigArc, ptr %124, i64 0, i32 9
  %128 = load ptr, ptr %127, align 8, !tbaa !16
  %129 = icmp eq ptr %128, null
  br i1 %129, label %118, label %130

130:                                              ; preds = %123
  %131 = getelementptr inbounds %struct.RigArc, ptr %124, i64 0, i32 6
  br label %132

132:                                              ; preds = %130, %161
  %133 = phi ptr [ %128, %130 ], [ %164, %161 ]
  %134 = phi ptr [ %125, %130 ], [ %163, %161 ]
  %135 = phi ptr [ %126, %130 ], [ %162, %161 ]
  %136 = getelementptr inbounds %struct.RigEdge, ptr %133, i64 0, i32 7
  %137 = load ptr, ptr %136, align 8, !tbaa !24
  %138 = icmp eq ptr %137, null
  br i1 %138, label %161, label %139

139:                                              ; preds = %132
  %140 = load ptr, ptr %105, align 8, !tbaa !42
  %141 = getelementptr inbounds %struct.EditBone, ptr %140, i64 0, i32 7
  %142 = getelementptr inbounds %struct.EditBone, ptr %137, i64 0, i32 7
  %143 = call fastcc float @len_v3v3(ptr noundef nonnull %141, ptr noundef nonnull %142) #21
  %144 = fcmp olt float %143, 0x3F1A36E2E0000000
  br i1 %144, label %152, label %145

145:                                              ; preds = %139
  %146 = load ptr, ptr %105, align 8, !tbaa !42
  %147 = getelementptr inbounds %struct.EditBone, ptr %146, i64 0, i32 8
  %148 = load ptr, ptr %136, align 8, !tbaa !24
  %149 = getelementptr inbounds %struct.EditBone, ptr %148, i64 0, i32 8
  %150 = call fastcc float @len_v3v3(ptr noundef nonnull %147, ptr noundef nonnull %149) #21
  %151 = fcmp olt float %150, 0x3F1A36E2E0000000
  br i1 %151, label %152, label %161

152:                                              ; preds = %139, %145
  %153 = icmp eq ptr %135, null
  br i1 %153, label %159, label %154

154:                                              ; preds = %152
  %155 = load i32, ptr %131, align 8, !tbaa !32
  %156 = getelementptr inbounds %struct.RigArc, ptr %135, i64 0, i32 6
  %157 = load i32, ptr %156, align 8, !tbaa !32
  %158 = icmp slt i32 %155, %157
  br i1 %158, label %159, label %161

159:                                              ; preds = %154, %152
  %160 = load ptr, ptr %136, align 8, !tbaa !24
  br label %161

161:                                              ; preds = %145, %159, %154, %132
  %162 = phi ptr [ %135, %132 ], [ %124, %159 ], [ %135, %154 ], [ %135, %145 ]
  %163 = phi ptr [ %134, %132 ], [ %160, %159 ], [ %134, %154 ], [ %134, %145 ]
  %164 = load ptr, ptr %133, align 8, !tbaa !16
  %165 = icmp eq ptr %164, null
  br i1 %165, label %118, label %132, !llvm.loop !116

166:                                              ; preds = %118, %115
  %167 = phi ptr [ null, %115 ], [ %120, %118 ]
  %168 = call fastcc i32 @RIG_parentControl(ptr noundef nonnull %15, ptr noundef %167) #21, !range !111
  %169 = icmp eq i32 %168, 0
  br i1 %169, label %170, label %215

170:                                              ; preds = %166
  %171 = load ptr, ptr %0, align 8, !tbaa !16
  %172 = icmp eq ptr %171, null
  br i1 %172, label %212, label %178

173:                                              ; preds = %207, %178
  %174 = phi ptr [ %181, %178 ], [ %208, %207 ]
  %175 = phi ptr [ %180, %178 ], [ %209, %207 ]
  %176 = load ptr, ptr %179, align 8, !tbaa !16
  %177 = icmp eq ptr %176, null
  br i1 %177, label %212, label %178, !llvm.loop !117

178:                                              ; preds = %170, %173
  %179 = phi ptr [ %176, %173 ], [ %171, %170 ]
  %180 = phi ptr [ %175, %173 ], [ null, %170 ]
  %181 = phi ptr [ %174, %173 ], [ null, %170 ]
  %182 = getelementptr inbounds %struct.RigArc, ptr %179, i64 0, i32 9
  %183 = load ptr, ptr %182, align 8, !tbaa !16
  %184 = icmp eq ptr %183, null
  br i1 %184, label %173, label %185

185:                                              ; preds = %178
  %186 = getelementptr inbounds %struct.RigArc, ptr %179, i64 0, i32 6
  br label %187

187:                                              ; preds = %185, %207
  %188 = phi ptr [ %183, %185 ], [ %210, %207 ]
  %189 = phi ptr [ %180, %185 ], [ %209, %207 ]
  %190 = phi ptr [ %181, %185 ], [ %208, %207 ]
  %191 = getelementptr inbounds %struct.RigEdge, ptr %188, i64 0, i32 7
  %192 = load ptr, ptr %191, align 8, !tbaa !24
  %193 = icmp eq ptr %192, null
  br i1 %193, label %207, label %194

194:                                              ; preds = %187
  %195 = getelementptr inbounds %struct.EditBone, ptr %192, i64 0, i32 3
  %196 = load ptr, ptr %195, align 8, !tbaa !55
  %197 = load ptr, ptr %105, align 8, !tbaa !42
  %198 = icmp eq ptr %196, %197
  br i1 %198, label %199, label %207

199:                                              ; preds = %194
  %200 = icmp eq ptr %190, null
  br i1 %200, label %206, label %201

201:                                              ; preds = %199
  %202 = load i32, ptr %186, align 8, !tbaa !32
  %203 = getelementptr inbounds %struct.RigArc, ptr %190, i64 0, i32 6
  %204 = load i32, ptr %203, align 8, !tbaa !32
  %205 = icmp slt i32 %202, %204
  br i1 %205, label %206, label %207

206:                                              ; preds = %201, %199
  br label %207

207:                                              ; preds = %187, %194, %206, %201
  %208 = phi ptr [ %179, %206 ], [ %190, %201 ], [ %190, %194 ], [ %190, %187 ]
  %209 = phi ptr [ %192, %206 ], [ %189, %201 ], [ %189, %194 ], [ %189, %187 ]
  %210 = load ptr, ptr %188, align 8, !tbaa !16
  %211 = icmp eq ptr %210, null
  br i1 %211, label %173, label %187, !llvm.loop !118

212:                                              ; preds = %173, %170
  %213 = phi ptr [ null, %170 ], [ %175, %173 ]
  %214 = call fastcc i32 @RIG_parentControl(ptr noundef nonnull %15, ptr noundef %213) #21, !range !111
  br label %215

215:                                              ; preds = %102, %212, %166
  %216 = load ptr, ptr %15, align 8, !tbaa !16
  %217 = icmp eq ptr %216, null
  br i1 %217, label %11, label %14, !llvm.loop !119

218:                                              ; preds = %345
  %219 = icmp eq i8 %346, 0
  br i1 %219, label %223, label %220, !llvm.loop !120

220:                                              ; preds = %11, %218
  %221 = load ptr, ptr %5, align 8, !tbaa !16
  %222 = icmp eq ptr %221, null
  br i1 %222, label %389, label %228

223:                                              ; preds = %218
  %224 = load ptr, ptr %5, align 8, !tbaa !16
  %225 = icmp eq ptr %224, null
  br i1 %225, label %389, label %226

226:                                              ; preds = %223
  %227 = getelementptr inbounds %struct.RigGraph, ptr %0, i64 0, i32 14
  br label %349

228:                                              ; preds = %220, %345
  %229 = phi ptr [ %347, %345 ], [ %221, %220 ]
  %230 = phi i8 [ %346, %345 ], [ 0, %220 ]
  %231 = getelementptr inbounds %struct.RigControl, ptr %229, i64 0, i32 5
  %232 = load ptr, ptr %231, align 8, !tbaa !40
  %233 = icmp eq ptr %232, null
  br i1 %233, label %234, label %345

234:                                              ; preds = %228
  %235 = getelementptr inbounds %struct.RigControl, ptr %229, i64 0, i32 4
  %236 = load ptr, ptr %235, align 8, !tbaa !42
  %237 = getelementptr inbounds %struct.EditBone, ptr %236, i64 0, i32 3
  %238 = load ptr, ptr %237, align 8, !tbaa !55
  %239 = icmp eq ptr %238, null
  br i1 %239, label %244, label %240

240:                                              ; preds = %234
  %241 = load ptr, ptr %12, align 8, !tbaa !21
  %242 = getelementptr inbounds %struct.EditBone, ptr %238, i64 0, i32 5
  %243 = call ptr @BLI_ghash_lookup(ptr noundef %241, ptr noundef nonnull %242) #22
  br label %244

244:                                              ; preds = %240, %234
  %245 = phi ptr [ %243, %240 ], [ null, %234 ]
  %246 = load ptr, ptr %13, align 8, !tbaa !54
  %247 = getelementptr inbounds %struct.Object, ptr %246, i64 0, i32 18
  %248 = load ptr, ptr %247, align 8, !tbaa !103
  %249 = load ptr, ptr %248, align 8, !tbaa !16
  %250 = icmp eq ptr %249, null
  br i1 %250, label %315, label %255

251:                                              ; preds = %309, %255
  %252 = phi i32 [ %257, %255 ], [ %310, %309 ]
  %253 = load ptr, ptr %256, align 8, !tbaa !16
  %254 = icmp eq ptr %253, null
  br i1 %254, label %313, label %255, !llvm.loop !121

255:                                              ; preds = %244, %251
  %256 = phi ptr [ %253, %251 ], [ %249, %244 ]
  %257 = phi i32 [ %252, %251 ], [ 0, %244 ]
  %258 = getelementptr inbounds %struct.bPoseChannel, ptr %256, i64 0, i32 3
  %259 = load ptr, ptr %258, align 8, !tbaa !16
  %260 = icmp eq ptr %259, null
  br i1 %260, label %251, label %261

261:                                              ; preds = %255
  %262 = getelementptr inbounds %struct.bPoseChannel, ptr %256, i64 0, i32 4
  br label %263

263:                                              ; preds = %261, %309
  %264 = phi ptr [ %259, %261 ], [ %311, %309 ]
  %265 = phi i32 [ %257, %261 ], [ %310, %309 ]
  %266 = call ptr @BKE_constraint_typeinfo_get(ptr noundef nonnull %264) #22
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %3) #20
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %3, i8 0, i64 16, i1 false)
  %267 = icmp eq ptr %266, null
  br i1 %267, label %309, label %268

268:                                              ; preds = %263
  %269 = getelementptr inbounds %struct.bConstraintTypeInfo, ptr %266, i64 0, i32 8
  %270 = load ptr, ptr %269, align 8, !tbaa !105
  %271 = icmp eq ptr %270, null
  br i1 %271, label %309, label %272

272:                                              ; preds = %268
  %273 = call i32 %270(ptr noundef nonnull %264, ptr noundef nonnull %3) #22
  %274 = load ptr, ptr %3, align 8, !tbaa !16
  %275 = icmp eq ptr %274, null
  br i1 %275, label %303, label %276

276:                                              ; preds = %272, %300
  %277 = phi ptr [ %301, %300 ], [ %274, %272 ]
  %278 = getelementptr inbounds %struct.bConstraintTarget, ptr %277, i64 0, i32 2
  %279 = load ptr, ptr %278, align 8, !tbaa !107
  %280 = load ptr, ptr %13, align 8, !tbaa !54
  %281 = icmp eq ptr %279, %280
  br i1 %281, label %282, label %300

282:                                              ; preds = %276
  %283 = getelementptr inbounds %struct.bConstraintTarget, ptr %277, i64 0, i32 3
  %284 = load ptr, ptr %235, align 8, !tbaa !42
  %285 = getelementptr inbounds %struct.EditBone, ptr %284, i64 0, i32 5
  %286 = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %283, ptr noundef nonnull dereferenceable(1) %285) #23
  %287 = icmp eq i32 %286, 0
  br i1 %287, label %288, label %300

288:                                              ; preds = %282
  %289 = load ptr, ptr %12, align 8, !tbaa !21
  %290 = call ptr @BLI_ghash_lookup(ptr noundef %289, ptr noundef nonnull %262) #22
  %291 = icmp eq ptr %290, null
  br i1 %291, label %300, label %292

292:                                              ; preds = %288
  %293 = getelementptr inbounds %struct.RigControl, ptr %290, i64 0, i32 5
  %294 = load ptr, ptr %293, align 8, !tbaa !40
  %295 = icmp eq ptr %294, null
  br i1 %295, label %300, label %296

296:                                              ; preds = %292
  %297 = getelementptr inbounds %struct.RigControl, ptr %290, i64 0, i32 4
  %298 = load ptr, ptr %297, align 8, !tbaa !42
  %299 = call fastcc i32 @RIG_parentControl(ptr noundef nonnull %229, ptr noundef %298) #21, !range !111
  br label %303

300:                                              ; preds = %288, %292, %276, %282
  %301 = load ptr, ptr %277, align 8, !tbaa !16
  %302 = icmp eq ptr %301, null
  br i1 %302, label %303, label %276, !llvm.loop !122

303:                                              ; preds = %300, %272, %296
  %304 = phi i32 [ 1, %296 ], [ %265, %272 ], [ %265, %300 ]
  %305 = getelementptr inbounds %struct.bConstraintTypeInfo, ptr %266, i64 0, i32 9
  %306 = load ptr, ptr %305, align 8, !tbaa !113
  %307 = icmp eq ptr %306, null
  br i1 %307, label %309, label %308

308:                                              ; preds = %303
  call void %306(ptr noundef nonnull %264, ptr noundef nonnull %3, i8 noundef zeroext 0) #22
  br label %309

309:                                              ; preds = %303, %308, %268, %263
  %310 = phi i32 [ %304, %308 ], [ %304, %303 ], [ %265, %268 ], [ %265, %263 ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %3) #20
  %311 = load ptr, ptr %264, align 8, !tbaa !16
  %312 = icmp eq ptr %311, null
  br i1 %312, label %251, label %263, !llvm.loop !123

313:                                              ; preds = %251
  %314 = icmp eq i32 %252, 0
  br i1 %314, label %315, label %345

315:                                              ; preds = %244, %313
  %316 = icmp eq ptr %245, null
  br i1 %316, label %325, label %317

317:                                              ; preds = %315
  %318 = getelementptr inbounds %struct.RigControl, ptr %245, i64 0, i32 5
  %319 = load ptr, ptr %318, align 8, !tbaa !40
  %320 = icmp eq ptr %319, null
  br i1 %320, label %325, label %321

321:                                              ; preds = %317
  %322 = getelementptr inbounds %struct.RigControl, ptr %245, i64 0, i32 4
  %323 = load ptr, ptr %322, align 8, !tbaa !42
  %324 = call fastcc i32 @RIG_parentControl(ptr noundef nonnull %229, ptr noundef %323) #21, !range !111
  br label %345

325:                                              ; preds = %317, %315
  %326 = load ptr, ptr %5, align 8, !tbaa !16
  %327 = icmp eq ptr %326, null
  br i1 %327, label %345, label %328

328:                                              ; preds = %325, %342
  %329 = phi ptr [ %343, %342 ], [ %326, %325 ]
  %330 = getelementptr inbounds %struct.RigControl, ptr %329, i64 0, i32 5
  %331 = load ptr, ptr %330, align 8, !tbaa !40
  %332 = icmp eq ptr %331, null
  br i1 %332, label %342, label %333

333:                                              ; preds = %328
  %334 = getelementptr inbounds %struct.RigControl, ptr %329, i64 0, i32 4
  %335 = load ptr, ptr %334, align 8, !tbaa !42
  %336 = getelementptr inbounds %struct.EditBone, ptr %335, i64 0, i32 3
  %337 = load ptr, ptr %336, align 8, !tbaa !55
  %338 = load ptr, ptr %235, align 8, !tbaa !42
  %339 = icmp eq ptr %337, %338
  br i1 %339, label %340, label %342

340:                                              ; preds = %333
  %341 = call fastcc i32 @RIG_parentControl(ptr noundef nonnull %229, ptr noundef nonnull %335) #21, !range !111
  br label %345

342:                                              ; preds = %328, %333
  %343 = load ptr, ptr %329, align 8, !tbaa !16
  %344 = icmp eq ptr %343, null
  br i1 %344, label %345, label %328, !llvm.loop !124

345:                                              ; preds = %342, %325, %313, %340, %321, %228
  %346 = phi i8 [ %230, %228 ], [ 1, %321 ], [ 1, %340 ], [ %230, %313 ], [ %230, %325 ], [ %230, %342 ]
  %347 = load ptr, ptr %229, align 8, !tbaa !16
  %348 = icmp eq ptr %347, null
  br i1 %348, label %218, label %228, !llvm.loop !125

349:                                              ; preds = %226, %386
  %350 = phi ptr [ %224, %226 ], [ %387, %386 ]
  %351 = getelementptr inbounds %struct.RigControl, ptr %350, i64 0, i32 10
  %352 = load i32, ptr %351, align 8, !tbaa !126
  %353 = and i32 %352, 16
  %354 = icmp eq i32 %353, 0
  br i1 %354, label %355, label %386

355:                                              ; preds = %349
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %4) #20
  %356 = load ptr, ptr %227, align 8, !tbaa !20
  call void @BLI_ghashIterator_init(ptr noundef nonnull %4, ptr noundef %356) #22
  %357 = call fastcc zeroext i8 @BLI_ghashIterator_done(ptr noundef nonnull %4) #21, !range !127
  %358 = icmp eq i8 %357, 0
  br i1 %358, label %359, label %385

359:                                              ; preds = %355
  %360 = getelementptr inbounds %struct.RigControl, ptr %350, i64 0, i32 4
  br label %361

361:                                              ; preds = %359, %378
  %362 = call fastcc ptr @BLI_ghashIterator_getValue(ptr noundef nonnull %4) #21
  %363 = getelementptr inbounds %struct.EditBone, ptr %362, i64 0, i32 3
  %364 = load ptr, ptr %363, align 8, !tbaa !55
  %365 = load ptr, ptr %360, align 8, !tbaa !42
  %366 = icmp eq ptr %364, %365
  br i1 %366, label %378, label %367

367:                                              ; preds = %361
  %368 = getelementptr inbounds %struct.EditBone, ptr %365, i64 0, i32 8
  %369 = getelementptr inbounds %struct.EditBone, ptr %362, i64 0, i32 7
  %370 = call fastcc float @len_v3v3(ptr noundef nonnull %368, ptr noundef nonnull %369) #21
  %371 = fcmp olt float %370, 0x3F847AE140000000
  br i1 %371, label %381, label %372

372:                                              ; preds = %367
  %373 = load ptr, ptr %360, align 8, !tbaa !42
  %374 = getelementptr inbounds %struct.EditBone, ptr %373, i64 0, i32 8
  %375 = getelementptr inbounds %struct.EditBone, ptr %362, i64 0, i32 8
  %376 = call fastcc float @len_v3v3(ptr noundef nonnull %374, ptr noundef nonnull %375) #21
  %377 = fcmp olt float %376, 0x3F847AE140000000
  br i1 %377, label %381, label %378

378:                                              ; preds = %372, %361
  call void @BLI_ghashIterator_step(ptr noundef nonnull %4) #22
  %379 = call fastcc zeroext i8 @BLI_ghashIterator_done(ptr noundef nonnull %4) #21, !range !127
  %380 = icmp eq i8 %379, 0
  br i1 %380, label %361, label %385, !llvm.loop !128

381:                                              ; preds = %372, %367
  %382 = phi i32 [ 2, %367 ], [ 1, %372 ]
  %383 = getelementptr inbounds %struct.RigControl, ptr %350, i64 0, i32 11
  store i32 %382, ptr %383, align 4, !tbaa !129
  %384 = getelementptr inbounds %struct.RigControl, ptr %350, i64 0, i32 6
  store ptr %362, ptr %384, align 8, !tbaa !130
  br label %385

385:                                              ; preds = %378, %381, %355
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %4) #20
  br label %386

386:                                              ; preds = %349, %385
  %387 = load ptr, ptr %350, align 8, !tbaa !16
  %388 = icmp eq ptr %387, null
  br i1 %388, label %389, label %349, !llvm.loop !131

389:                                              ; preds = %220, %386, %223
  ret void
}

; Function Attrs: optsize
declare zeroext i8 @BLI_isGraphCyclic(ptr noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @exec_retargetArctoArc(ptr nocapture readnone %0, ptr nocapture noundef readonly %1, i32 %2) #0 {
  %4 = load ptr, ptr %1, align 8, !tbaa !132
  %5 = getelementptr inbounds %struct.RetargetParam, ptr %1, i64 0, i32 1
  %6 = load ptr, ptr %5, align 8, !tbaa !134
  %7 = getelementptr inbounds %struct.RetargetParam, ptr %1, i64 0, i32 3
  %8 = load ptr, ptr %7, align 8, !tbaa !135
  %9 = getelementptr inbounds %struct.RetargetParam, ptr %1, i64 0, i32 2
  %10 = load ptr, ptr %9, align 8, !tbaa !136
  %11 = getelementptr inbounds %struct.RigArc, ptr %6, i64 0, i32 11
  %12 = load ptr, ptr %11, align 8, !tbaa !137
  %13 = getelementptr inbounds %struct.RigArc, ptr %6, i64 0, i32 9
  %14 = tail call i32 @BLI_countlist(ptr noundef nonnull %13) #22
  %15 = icmp eq i32 %14, 1
  br i1 %15, label %16, label %36

16:                                               ; preds = %3
  %17 = load ptr, ptr %13, align 8, !tbaa !93
  %18 = tail call fastcc i32 @testFlipArc(ptr noundef nonnull %6, ptr noundef %10) #21, !range !111
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %28, label %20

20:                                               ; preds = %16
  %21 = getelementptr inbounds %struct.ReebArc, ptr %12, i64 0, i32 3
  %22 = load ptr, ptr %21, align 8, !tbaa !138
  %23 = getelementptr inbounds %struct.ReebNode, ptr %22, i64 0, i32 2
  %24 = getelementptr inbounds %struct.ReebArc, ptr %12, i64 0, i32 2
  %25 = load ptr, ptr %24, align 8, !tbaa !140
  %26 = getelementptr inbounds %struct.ReebNode, ptr %25, i64 0, i32 2
  %27 = getelementptr inbounds %struct.ReebNode, ptr %25, i64 0, i32 10
  tail call fastcc void @repositionBone(ptr noundef %8, ptr noundef %4, ptr noundef %17, ptr noundef nonnull %23, ptr noundef nonnull %26, ptr noundef nonnull %27) #21
  br label %41

28:                                               ; preds = %16
  %29 = getelementptr inbounds %struct.ReebArc, ptr %12, i64 0, i32 2
  %30 = load ptr, ptr %29, align 8, !tbaa !140
  %31 = getelementptr inbounds %struct.ReebNode, ptr %30, i64 0, i32 2
  %32 = getelementptr inbounds %struct.ReebArc, ptr %12, i64 0, i32 3
  %33 = load ptr, ptr %32, align 8, !tbaa !138
  %34 = getelementptr inbounds %struct.ReebNode, ptr %33, i64 0, i32 2
  %35 = getelementptr inbounds %struct.ReebNode, ptr %33, i64 0, i32 10
  tail call fastcc void @repositionBone(ptr noundef %8, ptr noundef %4, ptr noundef %17, ptr noundef nonnull %31, ptr noundef nonnull %34, ptr noundef nonnull %35) #21
  br label %41

36:                                               ; preds = %3
  %37 = tail call fastcc i32 @detectArcRetargetMode(ptr noundef nonnull %6) #21, !range !111
  %38 = icmp eq i32 %37, 0
  br i1 %38, label %40, label %39

39:                                               ; preds = %36
  tail call fastcc void @retargetArctoArcAggresive(ptr noundef %8, ptr noundef %4, ptr noundef nonnull %6, ptr noundef %10) #21
  br label %41

40:                                               ; preds = %36
  tail call fastcc void @retargetArctoArcLength(ptr noundef %8, ptr noundef %4, ptr noundef nonnull %6, ptr noundef %10) #21
  br label %41

41:                                               ; preds = %39, %40, %20, %28
  ret void
}

; Function Attrs: optsize
declare i32 @BLI_countlist(ptr noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc noundef i32 @testFlipArc(ptr nocapture noundef readonly %0, ptr noundef readonly %1) unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.RigArc, ptr %0, i64 0, i32 11
  %4 = load ptr, ptr %3, align 8, !tbaa !137
  %5 = getelementptr inbounds %struct.RigNode, ptr %1, i64 0, i32 10
  %6 = load ptr, ptr %5, align 8, !tbaa !141
  %7 = tail call ptr @BIF_NodeFromIndex(ptr noundef %4, ptr noundef %6) #22
  %8 = getelementptr inbounds %struct.ReebArc, ptr %4, i64 0, i32 2
  %9 = load ptr, ptr %8, align 8, !tbaa !140
  %10 = icmp eq ptr %7, %9
  br i1 %10, label %11, label %15

11:                                               ; preds = %2
  %12 = getelementptr inbounds %struct.RigArc, ptr %0, i64 0, i32 2
  %13 = load ptr, ptr %12, align 8, !tbaa !27
  %14 = icmp eq ptr %13, %1
  br i1 %14, label %24, label %15

15:                                               ; preds = %11, %2
  %16 = getelementptr inbounds %struct.ReebArc, ptr %4, i64 0, i32 3
  %17 = load ptr, ptr %16, align 8, !tbaa !138
  %18 = icmp eq ptr %7, %17
  br i1 %18, label %19, label %23

19:                                               ; preds = %15
  %20 = getelementptr inbounds %struct.RigArc, ptr %0, i64 0, i32 3
  %21 = load ptr, ptr %20, align 8, !tbaa !35
  %22 = icmp eq ptr %21, %1
  br i1 %22, label %24, label %23

23:                                               ; preds = %19, %15
  br label %24

24:                                               ; preds = %11, %19, %23
  %25 = phi i32 [ 1, %23 ], [ 0, %19 ], [ 0, %11 ]
  ret i32 %25
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @repositionBone(ptr noundef %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2, ptr nocapture noundef readonly %3, ptr nocapture noundef readonly %4, ptr nocapture noundef readonly %5) unnamed_addr #0 {
  %7 = alloca [4 x float], align 16
  %8 = alloca [3 x float], align 4
  %9 = alloca [3 x float], align 4
  %10 = alloca [4 x float], align 16
  %11 = tail call ptr @CTX_data_scene(ptr noundef %0) #22
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %7) #20
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %8) #20
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %9) #20
  %12 = getelementptr inbounds %struct.RigEdge, ptr %2, i64 0, i32 7
  %13 = load ptr, ptr %12, align 8, !tbaa !24
  %14 = getelementptr inbounds %struct.RigEdge, ptr %2, i64 0, i32 3
  %15 = getelementptr inbounds %struct.RigEdge, ptr %2, i64 0, i32 2
  call fastcc void @sub_v3_v3v3(ptr noundef nonnull %8, ptr noundef nonnull %14, ptr noundef nonnull %15) #21
  call fastcc void @sub_v3_v3v3(ptr noundef nonnull %9, ptr noundef %4, ptr noundef %3) #21
  %16 = call fastcc float @normalize_v3(ptr noundef nonnull %8) #21
  %17 = call fastcc float @normalize_v3(ptr noundef nonnull %9) #21
  %18 = fdiv float %17, %16
  call void @rotation_between_vecs_to_quat(ptr noundef nonnull %7, ptr noundef nonnull %8, ptr noundef nonnull %9) #22
  %19 = getelementptr inbounds %struct.EditBone, ptr %13, i64 0, i32 7
  call fastcc void @copy_v3_v3(ptr noundef nonnull %19, ptr noundef %3) #21
  %20 = getelementptr inbounds %struct.EditBone, ptr %13, i64 0, i32 8
  call fastcc void @copy_v3_v3(ptr noundef nonnull %20, ptr noundef %4) #21
  %21 = call fastcc zeroext i8 @is_zero_v3(ptr noundef %5) #21, !range !127
  %22 = icmp eq i8 %21, 0
  br i1 %22, label %23, label %39

23:                                               ; preds = %6
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %10) #20
  %24 = getelementptr inbounds %struct.Scene, ptr %11, i64 0, i32 20
  %25 = load ptr, ptr %24, align 8, !tbaa !58
  %26 = getelementptr inbounds %struct.ToolSettings, ptr %25, i64 0, i32 46
  %27 = load i8, ptr %26, align 4, !tbaa !142
  switch i8 %27, label %37 [
    i8 1, label %28
    i8 2, label %32
  ]

28:                                               ; preds = %23
  %29 = getelementptr inbounds %struct.RigEdge, ptr %2, i64 0, i32 8
  %30 = call fastcc float @rollBoneByQuatAligned(ptr noundef %13, ptr noundef nonnull %29, ptr noundef nonnull %7, ptr noundef nonnull %10, ptr noundef %5) #21
  %31 = getelementptr inbounds %struct.EditBone, ptr %13, i64 0, i32 6
  store float %30, ptr %31, align 8, !tbaa !143
  br label %38

32:                                               ; preds = %23
  %33 = getelementptr inbounds %struct.RigEdge, ptr %2, i64 0, i32 1
  %34 = load ptr, ptr %33, align 8, !tbaa !99
  %35 = call fastcc float @rollBoneByQuatJoint(ptr noundef nonnull %2, ptr noundef %34, ptr noundef nonnull %7, ptr noundef nonnull %10, ptr noundef %5) #21
  %36 = getelementptr inbounds %struct.EditBone, ptr %13, i64 0, i32 6
  store float %35, ptr %36, align 8, !tbaa !143
  br label %38

37:                                               ; preds = %23
  call void @unit_qt(ptr noundef nonnull %10) #22
  br label %38

38:                                               ; preds = %32, %37, %28
  call void @mul_qt_qtqt(ptr noundef nonnull %7, ptr noundef nonnull %10, ptr noundef nonnull %7) #22
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %10) #20
  br label %43

39:                                               ; preds = %6
  %40 = getelementptr inbounds %struct.RigEdge, ptr %2, i64 0, i32 8
  %41 = call float @rollBoneByQuat(ptr noundef %13, ptr noundef nonnull %40, ptr noundef nonnull %7) #21
  %42 = getelementptr inbounds %struct.EditBone, ptr %13, i64 0, i32 6
  store float %41, ptr %42, align 8, !tbaa !143
  br label %43

43:                                               ; preds = %39, %38
  %44 = getelementptr inbounds %struct.RigGraph, ptr %1, i64 0, i32 8
  %45 = load ptr, ptr %44, align 8, !tbaa !16
  %46 = icmp eq ptr %45, null
  br i1 %46, label %61, label %47

47:                                               ; preds = %43, %58
  %48 = phi ptr [ %59, %58 ], [ %45, %43 ]
  %49 = getelementptr inbounds %struct.RigControl, ptr %48, i64 0, i32 5
  %50 = load ptr, ptr %49, align 8, !tbaa !40
  %51 = icmp eq ptr %50, %13
  br i1 %51, label %52, label %53

52:                                               ; preds = %47
  call fastcc void @repositionControl(ptr noundef %1, ptr noundef nonnull %48, ptr noundef %3, ptr noundef nonnull %7, float noundef %18) #21
  br label %53

53:                                               ; preds = %52, %47
  %54 = getelementptr inbounds %struct.RigControl, ptr %48, i64 0, i32 6
  %55 = load ptr, ptr %54, align 8, !tbaa !130
  %56 = icmp eq ptr %55, %13
  br i1 %56, label %57, label %58

57:                                               ; preds = %53
  call fastcc void @repositionTailControl(ptr noundef %1, ptr noundef nonnull %48) #21
  br label %58

58:                                               ; preds = %53, %57
  %59 = load ptr, ptr %48, align 8, !tbaa !16
  %60 = icmp eq ptr %59, null
  br i1 %60, label %61, label %47, !llvm.loop !144

61:                                               ; preds = %58, %43
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %9) #20
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %8) #20
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %7) #20
  ret void
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(read, inaccessiblemem: none) uwtable
define internal fastcc i32 @detectArcRetargetMode(ptr nocapture noundef readonly %0) unnamed_addr #6 {
  %2 = getelementptr inbounds %struct.RigArc, ptr %0, i64 0, i32 11
  %3 = load ptr, ptr %2, align 8, !tbaa !137
  %4 = getelementptr inbounds %struct.RigArc, ptr %0, i64 0, i32 9
  %5 = load ptr, ptr %4, align 8, !tbaa !16
  %6 = icmp eq ptr %5, null
  br i1 %6, label %33, label %7

7:                                                ; preds = %1, %7
  %8 = phi ptr [ %15, %7 ], [ %5, %1 ]
  %9 = phi i32 [ %14, %7 ], [ 0, %1 ]
  %10 = phi float [ %13, %7 ], [ 0.000000e+00, %1 ]
  %11 = getelementptr inbounds %struct.RigEdge, ptr %8, i64 0, i32 5
  %12 = load float, ptr %11, align 4, !tbaa !30
  %13 = fadd float %10, %12
  %14 = add nuw nsw i32 %9, 1
  %15 = load ptr, ptr %8, align 8, !tbaa !16
  %16 = icmp eq ptr %15, null
  br i1 %16, label %17, label %7, !llvm.loop !145

17:                                               ; preds = %7
  %18 = sitofp i32 %9 to float
  %19 = fdiv float %13, %18
  %20 = icmp ugt i32 %9, 1
  br i1 %20, label %21, label %33

21:                                               ; preds = %17
  br i1 %6, label %41, label %22

22:                                               ; preds = %21, %22
  %23 = phi ptr [ %31, %22 ], [ %5, %21 ]
  %24 = phi i32 [ %30, %22 ], [ 0, %21 ]
  %25 = getelementptr inbounds %struct.RigEdge, ptr %23, i64 0, i32 5
  %26 = load float, ptr %25, align 4, !tbaa !30
  %27 = fsub float %26, %19
  %28 = tail call float @llvm.fabs.f32(float %27)
  %29 = fcmp ogt float %28, 0x3FE0C15240000000
  %30 = select i1 %29, i32 1, i32 %24
  %31 = load ptr, ptr %23, align 8, !tbaa !16
  %32 = icmp eq ptr %31, null
  br i1 %32, label %39, label %22, !llvm.loop !146

33:                                               ; preds = %1, %17
  %34 = phi float [ %19, %17 ], [ -0.000000e+00, %1 ]
  %35 = phi i32 [ %14, %17 ], [ 0, %1 ]
  %36 = icmp eq i32 %35, 2
  %37 = fcmp ogt float %34, 0.000000e+00
  %38 = select i1 %36, i1 %37, i1 false
  br label %41

39:                                               ; preds = %22
  %40 = icmp ne i32 %30, 0
  br label %41

41:                                               ; preds = %39, %21, %33
  %42 = phi i1 [ %38, %33 ], [ false, %21 ], [ %40, %39 ]
  %43 = getelementptr inbounds %struct.ReebArc, ptr %3, i64 0, i32 10
  %44 = load i32, ptr %43, align 8, !tbaa !147
  %45 = getelementptr inbounds %struct.RigArc, ptr %0, i64 0, i32 10
  %46 = load i32, ptr %45, align 8, !tbaa !148
  %47 = icmp sge i32 %44, %46
  %48 = select i1 %47, i1 %42, i1 false
  %49 = zext i1 %48 to i32
  ret i32 %49
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @retargetArctoArcAggresive(ptr noundef %0, ptr nocapture noundef readonly %1, ptr noundef %2, ptr noundef %3) unnamed_addr #0 {
  %5 = alloca %struct.ReebArcIterator, align 8
  call void @llvm.lifetime.start.p0(i64 112, ptr nonnull %5) #20
  %6 = getelementptr inbounds %struct.RigArc, ptr %2, i64 0, i32 11
  %7 = load ptr, ptr %6, align 8, !tbaa !137
  %8 = getelementptr inbounds %struct.RigArc, ptr %2, i64 0, i32 9
  %9 = tail call i32 @BLI_countlist(ptr noundef nonnull %8) #22
  %10 = add nsw i32 %9, -1
  %11 = getelementptr inbounds %struct.ReebArc, ptr %7, i64 0, i32 10
  %12 = load i32, ptr %11, align 8, !tbaa !147
  %13 = icmp sgt i32 %10, %12
  br i1 %13, label %14, label %16

14:                                               ; preds = %4
  %15 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.54)
  br label %142

16:                                               ; preds = %4
  %17 = load ptr, ptr @MEM_callocN, align 8, !tbaa !16
  %18 = sext i32 %10 to i64
  %19 = shl nsw i64 %18, 2
  %20 = tail call ptr %17(i64 noundef %19, ptr noundef nonnull @.str.45) #22
  %21 = tail call fastcc i32 @testFlipArc(ptr noundef nonnull %2, ptr noundef %3) #21, !range !111
  %22 = icmp eq i32 %21, 0
  %23 = getelementptr inbounds %struct.ReebArc, ptr %7, i64 0, i32 3
  %24 = getelementptr inbounds %struct.ReebArc, ptr %7, i64 0, i32 2
  %25 = select i1 %22, ptr %23, ptr %24
  %26 = select i1 %22, ptr %24, ptr %23
  %27 = load ptr, ptr %26, align 8, !tbaa !16
  %28 = load ptr, ptr %25, align 8, !tbaa !16
  %29 = load i32, ptr %11, align 8, !tbaa !147
  %30 = icmp eq i32 %10, %29
  %31 = icmp sgt i32 %9, 1
  %32 = and i1 %30, %31
  br i1 %32, label %33, label %77

33:                                               ; preds = %16
  %34 = zext nneg i32 %10 to i64
  %35 = add nuw nsw i64 %34, 3
  %36 = and i64 %35, 4294967292
  %37 = add nsw i64 %34, -1
  %38 = insertelement <4 x i64> poison, i64 %37, i64 0
  %39 = shufflevector <4 x i64> %38, <4 x i64> poison, <4 x i32> zeroinitializer
  br label %40

40:                                               ; preds = %71, %33
  %41 = phi i64 [ 0, %33 ], [ %72, %71 ]
  %42 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %33 ], [ %73, %71 ]
  %43 = icmp ule <4 x i64> %42, %39
  %44 = add nuw nsw <4 x i64> %42, <i64 1, i64 1, i64 1, i64 1>
  %45 = extractelement <4 x i1> %43, i64 0
  br i1 %45, label %46, label %50

46:                                               ; preds = %40
  %47 = getelementptr inbounds i32, ptr %20, i64 %41
  %48 = bitcast <4 x i64> %44 to <8 x i32>
  %49 = extractelement <8 x i32> %48, i64 0
  store i32 %49, ptr %47, align 4, !tbaa !149
  br label %50

50:                                               ; preds = %46, %40
  %51 = extractelement <4 x i1> %43, i64 1
  br i1 %51, label %52, label %57

52:                                               ; preds = %50
  %53 = or disjoint i64 %41, 1
  %54 = getelementptr inbounds i32, ptr %20, i64 %53
  %55 = bitcast <4 x i64> %44 to <8 x i32>
  %56 = extractelement <8 x i32> %55, i64 2
  store i32 %56, ptr %54, align 4, !tbaa !149
  br label %57

57:                                               ; preds = %52, %50
  %58 = extractelement <4 x i1> %43, i64 2
  br i1 %58, label %59, label %64

59:                                               ; preds = %57
  %60 = or disjoint i64 %41, 2
  %61 = getelementptr inbounds i32, ptr %20, i64 %60
  %62 = bitcast <4 x i64> %44 to <8 x i32>
  %63 = extractelement <8 x i32> %62, i64 4
  store i32 %63, ptr %61, align 4, !tbaa !149
  br label %64

64:                                               ; preds = %59, %57
  %65 = extractelement <4 x i1> %43, i64 3
  br i1 %65, label %66, label %71

66:                                               ; preds = %64
  %67 = or disjoint i64 %41, 3
  %68 = getelementptr inbounds i32, ptr %20, i64 %67
  %69 = bitcast <4 x i64> %44 to <8 x i32>
  %70 = extractelement <8 x i32> %69, i64 6
  store i32 %70, ptr %68, align 4, !tbaa !149
  br label %71

71:                                               ; preds = %66, %64
  %72 = add i64 %41, 4
  %73 = add <4 x i64> %42, <i64 4, i64 4, i64 4, i64 4>
  %74 = icmp eq i64 %72, %36
  br i1 %74, label %75, label %40, !llvm.loop !150

75:                                               ; preds = %71
  %76 = load i32, ptr %11, align 8, !tbaa !147
  br label %77

77:                                               ; preds = %75, %16
  %78 = phi i32 [ %76, %75 ], [ %29, %16 ]
  %79 = mul i32 %78, %9
  %80 = mul i32 %79, %78
  %81 = load ptr, ptr @MEM_callocN, align 8, !tbaa !16
  %82 = sext i32 %80 to i64
  %83 = shl nsw i64 %82, 3
  %84 = tail call ptr %81(i64 noundef %83, ptr noundef nonnull @.str.46) #22
  %85 = load ptr, ptr @MEM_callocN, align 8, !tbaa !16
  %86 = add nsw i32 %78, 2
  %87 = sext i32 %86 to i64
  %88 = shl nsw i64 %87, 3
  %89 = tail call ptr %85(i64 noundef %88, ptr noundef nonnull @.str.47) #22
  %90 = getelementptr inbounds %struct.ReebNode, ptr %27, i64 0, i32 2
  store ptr %90, ptr %89, align 8, !tbaa !16
  %91 = getelementptr inbounds %struct.ReebNode, ptr %28, i64 0, i32 2
  %92 = sext i32 %78 to i64
  %93 = getelementptr ptr, ptr %89, i64 %92
  %94 = getelementptr ptr, ptr %93, i64 1
  store ptr %91, ptr %94, align 8, !tbaa !16
  call void @initArcIterator(ptr noundef nonnull %5, ptr noundef nonnull %7, ptr noundef %27) #22
  %95 = icmp slt i32 %78, 1
  br i1 %95, label %107, label %96

96:                                               ; preds = %77
  %97 = add nuw i32 %78, 1
  %98 = zext i32 %97 to i64
  br label %99

99:                                               ; preds = %96, %99
  %100 = phi i64 [ 1, %96 ], [ %105, %99 ]
  %101 = trunc i64 %100 to i32
  %102 = call ptr @IT_peek(ptr noundef nonnull %5, i32 noundef %101) #22
  %103 = getelementptr inbounds %struct.EmbedBucket, ptr %102, i64 0, i32 2
  %104 = getelementptr inbounds ptr, ptr %89, i64 %100
  store ptr %103, ptr %104, align 8, !tbaa !16
  %105 = add nuw nsw i64 %100, 1
  %106 = icmp eq i64 %105, %98
  br i1 %106, label %107, label %99, !llvm.loop !153

107:                                              ; preds = %99, %77
  %108 = load i32, ptr %11, align 8, !tbaa !147
  %109 = load ptr, ptr %8, align 8, !tbaa !93
  %110 = call fastcc ptr @solveJoints(ptr noundef %84, ptr noundef nonnull %5, ptr noundef nonnull %89, i32 noundef %108, i32 noundef 0, i32 noundef 0, ptr noundef %109, i32 noundef %10) #21
  %111 = load i32, ptr %11, align 8, !tbaa !147
  call fastcc void @copyMemoPositions(ptr noundef %20, ptr noundef %84, i32 noundef %111, i32 noundef %10) #21
  %112 = load ptr, ptr @MEM_freeN, align 8, !tbaa !16
  call void %112(ptr noundef %84) #22
  %113 = load ptr, ptr @MEM_freeN, align 8, !tbaa !16
  call void %113(ptr noundef nonnull %89) #22
  call void @initArcIterator(ptr noundef nonnull %5, ptr noundef %7, ptr noundef %27) #22
  %114 = load ptr, ptr %8, align 8, !tbaa !16
  %115 = icmp eq ptr %114, null
  br i1 %115, label %140, label %116

116:                                              ; preds = %107
  %117 = getelementptr inbounds %struct.ReebNode, ptr %28, i64 0, i32 10
  br label %118

118:                                              ; preds = %116, %136
  %119 = phi i64 [ 0, %116 ], [ %137, %136 ]
  %120 = phi ptr [ %114, %116 ], [ %138, %136 ]
  %121 = phi ptr [ %90, %116 ], [ %130, %136 ]
  %122 = icmp slt i64 %119, %18
  br i1 %122, label %123, label %129

123:                                              ; preds = %118
  %124 = getelementptr inbounds i32, ptr %20, i64 %119
  %125 = load i32, ptr %124, align 4, !tbaa !149
  %126 = call ptr @IT_peek(ptr noundef nonnull %5, i32 noundef %125) #22
  %127 = getelementptr inbounds %struct.EmbedBucket, ptr %126, i64 0, i32 2
  %128 = getelementptr inbounds %struct.EmbedBucket, ptr %126, i64 0, i32 3
  br label %129

129:                                              ; preds = %118, %123
  %130 = phi ptr [ %127, %123 ], [ %91, %118 ]
  %131 = phi ptr [ %128, %123 ], [ %117, %118 ]
  %132 = getelementptr inbounds %struct.RigEdge, ptr %120, i64 0, i32 7
  %133 = load ptr, ptr %132, align 8, !tbaa !24
  %134 = icmp eq ptr %133, null
  br i1 %134, label %136, label %135

135:                                              ; preds = %129
  call fastcc void @repositionBone(ptr noundef %0, ptr noundef %1, ptr noundef nonnull %120, ptr noundef %121, ptr noundef nonnull %130, ptr noundef nonnull %131) #21
  br label %136

136:                                              ; preds = %135, %129
  %137 = add nuw i64 %119, 1
  %138 = load ptr, ptr %120, align 8, !tbaa !16
  %139 = icmp eq ptr %138, null
  br i1 %139, label %140, label %118, !llvm.loop !154

140:                                              ; preds = %136, %107
  %141 = load ptr, ptr @MEM_freeN, align 8, !tbaa !16
  call void %141(ptr noundef %20) #22
  br label %142

142:                                              ; preds = %140, %14
  call void @llvm.lifetime.end.p0(i64 112, ptr nonnull %5) #20
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @retargetArctoArcLength(ptr noundef %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2, ptr noundef %3) unnamed_addr #0 {
  %5 = alloca %struct.ReebArcIterator, align 8
  call void @llvm.lifetime.start.p0(i64 112, ptr nonnull %5) #20
  %6 = getelementptr inbounds %struct.RigArc, ptr %2, i64 0, i32 11
  %7 = load ptr, ptr %6, align 8, !tbaa !137
  %8 = tail call fastcc i32 @testFlipArc(ptr noundef %2, ptr noundef %3) #21, !range !111
  %9 = icmp eq i32 %8, 0
  %10 = getelementptr inbounds %struct.ReebArc, ptr %7, i64 0, i32 3
  %11 = getelementptr inbounds %struct.ReebArc, ptr %7, i64 0, i32 2
  %12 = select i1 %9, ptr %10, ptr %11
  %13 = select i1 %9, ptr %11, ptr %10
  %14 = load ptr, ptr %13, align 8, !tbaa !16
  %15 = load ptr, ptr %12, align 8, !tbaa !16
  call void @initArcIterator(ptr noundef nonnull %5, ptr noundef %7, ptr noundef %14) #22
  %16 = call ptr @IT_next(ptr noundef nonnull %5) #22
  %17 = getelementptr inbounds %struct.ReebNode, ptr %14, i64 0, i32 2
  %18 = icmp eq ptr %16, null
  br i1 %18, label %28, label %19

19:                                               ; preds = %4, %19
  %20 = phi ptr [ %23, %19 ], [ %17, %4 ]
  %21 = phi float [ %25, %19 ], [ 0.000000e+00, %4 ]
  %22 = phi ptr [ %26, %19 ], [ %16, %4 ]
  %23 = getelementptr inbounds %struct.EmbedBucket, ptr %22, i64 0, i32 2
  %24 = call fastcc float @len_v3v3(ptr noundef nonnull %20, ptr noundef nonnull %23) #21
  %25 = fadd float %21, %24
  %26 = call ptr @IT_next(ptr noundef nonnull %5) #22
  %27 = icmp eq ptr %26, null
  br i1 %27, label %28, label %19, !llvm.loop !155

28:                                               ; preds = %19, %4
  %29 = phi float [ 0.000000e+00, %4 ], [ %25, %19 ]
  %30 = phi ptr [ null, %4 ], [ %23, %19 ]
  %31 = getelementptr inbounds %struct.ReebNode, ptr %15, i64 0, i32 2
  %32 = call fastcc float @len_v3v3(ptr noundef nonnull %31, ptr noundef %30) #21
  %33 = fadd float %29, %32
  call void @initArcIterator(ptr noundef nonnull %5, ptr noundef %7, ptr noundef %14) #22
  %34 = call ptr @IT_next(ptr noundef nonnull %5) #22
  %35 = getelementptr inbounds %struct.RigArc, ptr %2, i64 0, i32 9
  %36 = load ptr, ptr %35, align 8, !tbaa !16
  %37 = icmp eq ptr %36, null
  br i1 %37, label %82, label %38

38:                                               ; preds = %28
  %39 = getelementptr inbounds %struct.EmbedBucket, ptr %34, i64 0, i32 2
  %40 = getelementptr inbounds %struct.RigArc, ptr %2, i64 0, i32 5
  %41 = getelementptr inbounds %struct.ReebNode, ptr %15, i64 0, i32 10
  br label %42

42:                                               ; preds = %38, %79
  %43 = phi ptr [ %36, %38 ], [ %80, %79 ]
  %44 = phi ptr [ %17, %38 ], [ %73, %79 ]
  %45 = phi ptr [ %39, %38 ], [ %73, %79 ]
  %46 = phi ptr [ %34, %38 ], [ %69, %79 ]
  %47 = getelementptr inbounds %struct.RigEdge, ptr %43, i64 0, i32 4
  %48 = load float, ptr %47, align 8, !tbaa !29
  %49 = load float, ptr %40, align 4, !tbaa !156
  %50 = fdiv float %48, %49
  %51 = fmul float %33, %50
  %52 = icmp ne ptr %46, null
  %53 = fcmp ogt float %51, 0.000000e+00
  %54 = select i1 %52, i1 %53, i1 false
  br i1 %54, label %55, label %68

55:                                               ; preds = %42, %55
  %56 = phi float [ %60, %55 ], [ 0.000000e+00, %42 ]
  %57 = phi ptr [ %58, %55 ], [ %44, %42 ]
  %58 = phi ptr [ %62, %55 ], [ %45, %42 ]
  %59 = call fastcc float @len_v3v3(ptr noundef %57, ptr noundef %58) #21
  %60 = fadd float %56, %59
  %61 = call ptr @IT_next(ptr noundef nonnull %5) #22
  %62 = getelementptr inbounds %struct.EmbedBucket, ptr %61, i64 0, i32 2
  %63 = icmp ne ptr %61, null
  %64 = fcmp ogt float %51, %60
  %65 = select i1 %63, i1 %64, i1 false
  br i1 %65, label %55, label %66, !llvm.loop !157

66:                                               ; preds = %55
  %67 = getelementptr inbounds %struct.EmbedBucket, ptr %61, i64 0, i32 3
  br label %68

68:                                               ; preds = %66, %42
  %69 = phi ptr [ %61, %66 ], [ %46, %42 ]
  %70 = phi ptr [ %62, %66 ], [ %45, %42 ]
  %71 = phi ptr [ %67, %66 ], [ null, %42 ]
  %72 = icmp eq ptr %69, null
  %73 = select i1 %72, ptr %31, ptr %70
  %74 = getelementptr inbounds %struct.RigEdge, ptr %43, i64 0, i32 7
  %75 = load ptr, ptr %74, align 8, !tbaa !24
  %76 = icmp eq ptr %75, null
  br i1 %76, label %79, label %77

77:                                               ; preds = %68
  %78 = select i1 %72, ptr %41, ptr %71
  call fastcc void @repositionBone(ptr noundef %0, ptr noundef %1, ptr noundef nonnull %43, ptr noundef %44, ptr noundef %73, ptr noundef %78) #21
  br label %79

79:                                               ; preds = %77, %68
  %80 = load ptr, ptr %43, align 8, !tbaa !16
  %81 = icmp eq ptr %80, null
  br i1 %81, label %82, label %42, !llvm.loop !158

82:                                               ; preds = %79, %28
  call void @llvm.lifetime.end.p0(i64 112, ptr nonnull %5) #20
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local nonnull ptr @RIG_nameBone(ptr noundef %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #0 {
  %4 = tail call ptr @BLI_findlink(ptr noundef %0, i32 noundef %1) #22
  %5 = icmp eq ptr %4, null
  br i1 %5, label %19, label %6

6:                                                ; preds = %3
  %7 = getelementptr inbounds %struct.RigArc, ptr %4, i64 0, i32 9
  %8 = tail call i32 @BLI_countlist(ptr noundef nonnull %7) #22
  %9 = icmp eq i32 %8, %2
  br i1 %9, label %19, label %10

10:                                               ; preds = %6
  %11 = tail call ptr @BLI_findlink(ptr noundef nonnull %7, i32 noundef %2) #22
  %12 = icmp eq ptr %11, null
  br i1 %12, label %19, label %13

13:                                               ; preds = %10
  %14 = getelementptr inbounds %struct.RigEdge, ptr %11, i64 0, i32 7
  %15 = load ptr, ptr %14, align 8, !tbaa !24
  %16 = icmp eq ptr %15, null
  %17 = getelementptr inbounds %struct.EditBone, ptr %15, i64 0, i32 5
  %18 = select i1 %16, ptr @.str.18, ptr %17
  br label %19

19:                                               ; preds = %13, %10, %6, %3
  %20 = phi ptr [ @.str.15, %3 ], [ @.str.16, %6 ], [ @.str.17, %10 ], [ %18, %13 ]
  ret ptr %20
}

; Function Attrs: optsize
declare ptr @BLI_findlink(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind optsize uwtable
define dso_local i32 @RIG_nbJoints(ptr noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.RigGraph, ptr %0, i64 0, i32 1
  %3 = tail call i32 @BLI_countlist(ptr noundef nonnull %2) #22
  %4 = load ptr, ptr %0, align 8, !tbaa !16
  %5 = icmp eq ptr %4, null
  br i1 %5, label %15, label %6

6:                                                ; preds = %1, %6
  %7 = phi ptr [ %13, %6 ], [ %4, %1 ]
  %8 = phi i32 [ %12, %6 ], [ %3, %1 ]
  %9 = getelementptr inbounds %struct.RigArc, ptr %7, i64 0, i32 9
  %10 = tail call i32 @BLI_countlist(ptr noundef nonnull %9) #22
  %11 = add i32 %8, -1
  %12 = add i32 %11, %10
  %13 = load ptr, ptr %7, align 8, !tbaa !16
  %14 = icmp eq ptr %13, null
  br i1 %14, label %15, label %6, !llvm.loop !159

15:                                               ; preds = %6, %1
  %16 = phi i32 [ %3, %1 ], [ %12, %6 ]
  ret i32 %16
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @BIF_retargetArmature(ptr noundef %0) local_unnamed_addr #0 {
  %2 = alloca %struct.ListBase, align 8
  %3 = tail call double @PIL_check_seconds_timer() #22
  %4 = tail call ptr @BIF_ReebGraphMultiFromEditMesh(ptr noundef %0) #22
  %5 = tail call double @PIL_check_seconds_timer() #22
  %6 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.55)
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %2) #20
  %7 = call i32 @CTX_data_selected_editable_bases(ptr noundef %0, ptr noundef nonnull %2) #22
  br label %8

8:                                                ; preds = %12, %1
  %9 = phi ptr [ %2, %1 ], [ %10, %12 ]
  %10 = load ptr, ptr %9, align 8, !tbaa !16
  %11 = icmp eq ptr %10, null
  br i1 %11, label %34, label %12

12:                                               ; preds = %8
  %13 = getelementptr inbounds %struct.CollectionPointerLink, ptr %10, i64 0, i32 2, i32 2
  %14 = load ptr, ptr %13, align 8, !tbaa !160
  %15 = getelementptr inbounds %struct.Base, ptr %14, i64 0, i32 7
  %16 = load ptr, ptr %15, align 8, !tbaa !164
  %17 = getelementptr inbounds %struct.Object, ptr %16, i64 0, i32 3
  %18 = load i16, ptr %17, align 8, !tbaa !166
  %19 = icmp eq i16 %18, 25
  br i1 %19, label %20, label %8, !llvm.loop !167

20:                                               ; preds = %12
  %21 = getelementptr inbounds %struct.Object, ptr %16, i64 0, i32 19
  %22 = load ptr, ptr %21, align 8, !tbaa !46
  %23 = call double @PIL_check_seconds_timer() #22
  %24 = call ptr @RIG_graphFromArmature(ptr noundef %0, ptr noundef nonnull %16, ptr noundef %22) #21
  %25 = call double @PIL_check_seconds_timer() #22
  %26 = fsub double %25, %23
  %27 = call i32 @puts(ptr nonnull dereferenceable(1) @str.56)
  %28 = getelementptr inbounds %struct.RigGraph, ptr %24, i64 0, i32 11
  store ptr %4, ptr %28, align 8, !tbaa !15
  %29 = getelementptr inbounds %struct.ID, ptr %16, i64 0, i32 4
  %30 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.21, ptr noundef nonnull %29) #21
  %31 = call double @PIL_check_seconds_timer() #22
  call fastcc void @retargetGraphs(ptr noundef %0, ptr noundef %24) #21
  %32 = call double @PIL_check_seconds_timer() #22
  %33 = fsub double %32, %31
  call fastcc void @BIF_freeRetarget() #21
  store ptr %24, ptr @GLOBAL_RIGG, align 8, !tbaa !16
  br label %34

34:                                               ; preds = %8, %20
  %35 = phi double [ %33, %20 ], [ 0.000000e+00, %8 ]
  %36 = phi double [ %26, %20 ], [ 0.000000e+00, %8 ]
  %37 = fsub double %5, %3
  call void @BLI_freelistN(ptr noundef nonnull %2) #22
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %2) #20
  %38 = call double @PIL_check_seconds_timer() #22
  %39 = fsub double %38, %3
  %40 = call i32 @puts(ptr nonnull dereferenceable(1) @str.58)
  %41 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.23, double noundef %39) #21
  %42 = fdiv double %37, %39
  %43 = fmul double %42, 1.000000e+02
  %44 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.24, double noundef %37, double noundef %43) #21
  %45 = fdiv double %36, %39
  %46 = fmul double %45, 1.000000e+02
  %47 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.25, double noundef %36, double noundef %46) #21
  %48 = fdiv double %35, %39
  %49 = fmul double %48, 1.000000e+02
  %50 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.26, double noundef %35, double noundef %49) #21
  %51 = call i32 @puts(ptr nonnull dereferenceable(1) @str.58)
  call void @ED_undo_push(ptr noundef %0, ptr noundef nonnull @.str.27) #22
  ret void
}

; Function Attrs: optsize
declare double @PIL_check_seconds_timer() local_unnamed_addr #3

; Function Attrs: optsize
declare ptr @BIF_ReebGraphMultiFromEditMesh(ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare i32 @CTX_data_selected_editable_bases(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @retargetGraphs(ptr noundef %0, ptr noundef %1) unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.RigGraph, ptr %1, i64 0, i32 16
  %4 = load ptr, ptr %3, align 8, !tbaa !54
  %5 = getelementptr inbounds %struct.Object, ptr %4, i64 0, i32 19
  %6 = load ptr, ptr %5, align 8, !tbaa !46
  %7 = getelementptr inbounds %struct.RigGraph, ptr %1, i64 0, i32 11
  %8 = load ptr, ptr %7, align 8, !tbaa !15
  tail call void @BIF_flagMultiArcs(ptr noundef %8, i32 noundef 0) #22
  %9 = getelementptr inbounds %struct.RigGraph, ptr %1, i64 0, i32 10
  %10 = load ptr, ptr %9, align 8, !tbaa !45
  tail call fastcc void @matchMultiResolutionStartingNode(ptr noundef %1, ptr noundef %8, ptr noundef %10) #21
  tail call fastcc void @retargetSubgraph(ptr noundef %0, ptr noundef %1, ptr noundef null, ptr noundef %10) #21
  tail call fastcc void @finishRetarget(ptr noundef %1) #21
  %11 = getelementptr inbounds %struct.RigGraph, ptr %1, i64 0, i32 9
  %12 = load ptr, ptr %11, align 8, !tbaa !23
  %13 = getelementptr inbounds %struct.bArmature, ptr %6, i64 0, i32 4
  store ptr %12, ptr %13, align 8, !tbaa !52
  tail call void @ED_armature_from_edit(ptr noundef %6) #22
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @BIF_freeRetarget() unnamed_addr #0 {
  %1 = load ptr, ptr @GLOBAL_RIGG, align 8, !tbaa !16
  %2 = icmp eq ptr %1, null
  br i1 %2, label %4, label %3

3:                                                ; preds = %0
  tail call void @RIG_freeRigGraph(ptr noundef nonnull %1) #21
  store ptr null, ptr @GLOBAL_RIGG, align 8, !tbaa !16
  br label %4

4:                                                ; preds = %3, %0
  ret void
}

; Function Attrs: optsize
declare void @ED_undo_push(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @BIF_retargetArc(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #0 {
  %4 = tail call ptr @CTX_data_edit_object(ptr noundef %0) #22
  %5 = tail call ptr @CTX_data_scene(ptr noundef %0) #22
  %6 = getelementptr inbounds %struct.Object, ptr %4, i64 0, i32 19
  %7 = load ptr, ptr %6, align 8, !tbaa !46
  %8 = getelementptr inbounds %struct.Scene, ptr %5, i64 0, i32 20
  %9 = load ptr, ptr %8, align 8, !tbaa !58
  %10 = getelementptr inbounds %struct.ToolSettings, ptr %9, i64 0, i32 47
  %11 = getelementptr inbounds %struct.ToolSettings, ptr %9, i64 0, i32 48
  %12 = icmp eq ptr %2, null
  br i1 %12, label %13, label %15

13:                                               ; preds = %3
  %14 = tail call fastcc ptr @armatureSelectedToGraph(ptr noundef %0, ptr noundef nonnull %4, ptr noundef %7) #21
  br label %15

15:                                               ; preds = %3, %13
  %16 = phi ptr [ %14, %13 ], [ %2, %3 ]
  %17 = tail call fastcc zeroext i8 @BLI_listbase_is_empty(ptr noundef %16) #21, !range !127
  %18 = icmp eq i8 %17, 0
  br i1 %18, label %19, label %37

19:                                               ; preds = %15
  %20 = getelementptr inbounds %struct.bArmature, ptr %7, i64 0, i32 4
  %21 = load ptr, ptr %20, align 8, !tbaa !52
  %22 = tail call fastcc ptr @cloneRigGraph(ptr noundef %16, ptr noundef %21, ptr noundef nonnull %4, ptr noundef nonnull %10, ptr noundef nonnull %11) #21
  %23 = load ptr, ptr %22, align 8, !tbaa !101
  %24 = getelementptr inbounds %struct.RigArc, ptr %23, i64 0, i32 11
  store ptr %1, ptr %24, align 8, !tbaa !137
  %25 = getelementptr inbounds %struct.ReebArc, ptr %1, i64 0, i32 2
  %26 = load ptr, ptr %25, align 8, !tbaa !140
  %27 = getelementptr inbounds %struct.RigArc, ptr %23, i64 0, i32 2
  %28 = load ptr, ptr %27, align 8, !tbaa !27
  %29 = getelementptr inbounds %struct.RigNode, ptr %28, i64 0, i32 10
  store ptr %26, ptr %29, align 8, !tbaa !141
  %30 = getelementptr inbounds %struct.ReebArc, ptr %1, i64 0, i32 3
  %31 = load ptr, ptr %30, align 8, !tbaa !138
  %32 = getelementptr inbounds %struct.RigArc, ptr %23, i64 0, i32 3
  %33 = load ptr, ptr %32, align 8, !tbaa !35
  %34 = getelementptr inbounds %struct.RigNode, ptr %33, i64 0, i32 10
  store ptr %31, ptr %34, align 8, !tbaa !141
  tail call fastcc void @retargetArctoArc(ptr noundef %0, ptr noundef nonnull %22, ptr noundef %23, ptr noundef %28) #21
  tail call fastcc void @finishRetarget(ptr noundef nonnull %22) #21
  br i1 %12, label %35, label %36

35:                                               ; preds = %19
  tail call void @RIG_freeRigGraph(ptr noundef %16) #21
  br label %36

36:                                               ; preds = %35, %19
  tail call void @RIG_freeRigGraph(ptr noundef nonnull %22) #21
  tail call void @ED_armature_validate_active(ptr noundef nonnull %7) #22
  br label %37

37:                                               ; preds = %15, %36
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @armatureSelectedToGraph(ptr noundef %0, ptr noundef %1, ptr noundef %2) unnamed_addr #0 {
  %4 = tail call ptr @CTX_data_edit_object(ptr noundef %0) #22
  %5 = tail call ptr @CTX_data_scene(ptr noundef %0) #22
  %6 = tail call fastcc ptr @newRigGraph() #21
  %7 = icmp eq ptr %4, %1
  %8 = getelementptr inbounds %struct.RigGraph, ptr %6, i64 0, i32 9
  br i1 %7, label %9, label %12

9:                                                ; preds = %3
  %10 = getelementptr inbounds %struct.bArmature, ptr %2, i64 0, i32 4
  %11 = load ptr, ptr %10, align 8, !tbaa !52
  store ptr %11, ptr %8, align 8, !tbaa !23
  br label %21

12:                                               ; preds = %3
  %13 = load ptr, ptr @MEM_callocN, align 8, !tbaa !16
  %14 = tail call ptr %13(i64 noundef 16, ptr noundef nonnull @.str.13) #22
  store ptr %14, ptr %8, align 8, !tbaa !23
  %15 = getelementptr inbounds %struct.bArmature, ptr %2, i64 0, i32 2
  %16 = tail call ptr @make_boneList(ptr noundef %14, ptr noundef nonnull %15, ptr noundef null, ptr noundef null) #22
  %17 = getelementptr inbounds %struct.RigGraph, ptr %6, i64 0, i32 7
  %18 = load i32, ptr %17, align 8, !tbaa !22
  %19 = or i32 %18, 1
  store i32 %19, ptr %17, align 8, !tbaa !22
  %20 = load ptr, ptr %8, align 8, !tbaa !23
  br label %21

21:                                               ; preds = %12, %9
  %22 = phi ptr [ %20, %12 ], [ %11, %9 ]
  %23 = getelementptr inbounds %struct.RigGraph, ptr %6, i64 0, i32 16
  store ptr %1, ptr %23, align 8, !tbaa !54
  %24 = getelementptr inbounds %struct.RigGraph, ptr %6, i64 0, i32 9
  %25 = load ptr, ptr %22, align 8, !tbaa !16
  %26 = icmp eq ptr %25, null
  br i1 %26, label %37, label %27

27:                                               ; preds = %21, %34
  %28 = phi ptr [ %35, %34 ], [ %25, %21 ]
  %29 = getelementptr inbounds %struct.EditBone, ptr %28, i64 0, i32 3
  %30 = load ptr, ptr %29, align 8, !tbaa !55
  %31 = icmp eq ptr %30, null
  br i1 %31, label %32, label %34

32:                                               ; preds = %27
  %33 = load ptr, ptr %24, align 8, !tbaa !23
  tail call fastcc void @RIG_arcFromBoneChain(ptr noundef %6, ptr noundef %33, ptr noundef nonnull %28, ptr noundef null, i8 noundef zeroext 1) #21
  br label %34

34:                                               ; preds = %27, %32
  %35 = load ptr, ptr %28, align 8, !tbaa !16
  %36 = icmp eq ptr %35, null
  br i1 %36, label %37, label %27, !llvm.loop !168

37:                                               ; preds = %34, %21
  tail call void @BLI_removeDoubleNodes(ptr noundef %6, float noundef 0x3F50624DE0000000) #22
  tail call fastcc void @RIG_removeNormalNodes(ptr noundef %6) #21
  tail call fastcc void @RIG_removeUneededOffsets(ptr noundef %6) #21
  tail call void @BLI_buildAdjacencyList(ptr noundef %6) #22
  tail call fastcc void @RIG_findHead(ptr noundef %6) #21
  %38 = getelementptr inbounds %struct.RigGraph, ptr %6, i64 0, i32 10
  %39 = load ptr, ptr %38, align 8, !tbaa !45
  %40 = getelementptr inbounds %struct.Scene, ptr %5, i64 0, i32 20
  %41 = load ptr, ptr %40, align 8, !tbaa !58
  %42 = getelementptr inbounds %struct.ToolSettings, ptr %41, i64 0, i32 32
  %43 = load float, ptr %42, align 8, !tbaa !77
  tail call void @BLI_markdownSymmetry(ptr noundef %6, ptr noundef %39, float noundef %43) #22
  tail call fastcc void @RIG_reconnectControlBones(ptr noundef %6) #21
  %44 = tail call zeroext i8 @BLI_isGraphCyclic(ptr noundef %6) #22
  %45 = icmp eq i8 %44, 0
  br i1 %45, label %48, label %46

46:                                               ; preds = %37
  %47 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.59)
  br label %48

48:                                               ; preds = %46, %37
  ret ptr %6
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc zeroext i8 @BLI_listbase_is_empty(ptr nocapture noundef readonly %0) unnamed_addr #7 {
  %2 = load ptr, ptr %0, align 8, !tbaa !169
  %3 = icmp eq ptr %2, null
  %4 = zext i1 %3 to i8
  ret i8 %4
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @cloneRigGraph(ptr nocapture noundef readonly %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4) unnamed_addr #0 {
  %6 = tail call ptr @BLI_ghash_ptr_new(ptr noundef nonnull @.str.48) #22
  %7 = tail call fastcc ptr @newRigGraph() #21
  %8 = getelementptr inbounds %struct.RigGraph, ptr %7, i64 0, i32 16
  store ptr %2, ptr %8, align 8, !tbaa !54
  %9 = getelementptr inbounds %struct.RigGraph, ptr %7, i64 0, i32 9
  store ptr %1, ptr %9, align 8, !tbaa !23
  tail call void @preEditBoneDuplicate(ptr noundef %1) #22
  %10 = getelementptr inbounds %struct.RigGraph, ptr %0, i64 0, i32 9
  %11 = load ptr, ptr %10, align 8, !tbaa !23
  tail call void @preEditBoneDuplicate(ptr noundef %11) #22
  %12 = getelementptr inbounds %struct.RigGraph, ptr %0, i64 0, i32 1
  %13 = load ptr, ptr %12, align 8, !tbaa !16
  %14 = icmp eq ptr %13, null
  br i1 %14, label %21, label %15

15:                                               ; preds = %5, %15
  %16 = phi ptr [ %19, %15 ], [ %13, %5 ]
  %17 = getelementptr inbounds %struct.RigNode, ptr %16, i64 0, i32 2
  %18 = tail call fastcc ptr @newRigNode(ptr noundef %7, ptr noundef nonnull %17) #21
  tail call void @BLI_ghash_insert(ptr noundef %6, ptr noundef nonnull %16, ptr noundef %18) #22
  %19 = load ptr, ptr %16, align 8, !tbaa !16
  %20 = icmp eq ptr %19, null
  br i1 %20, label %21, label %15, !llvm.loop !170

21:                                               ; preds = %15, %5
  %22 = getelementptr inbounds %struct.RigGraph, ptr %0, i64 0, i32 10
  %23 = load ptr, ptr %22, align 8, !tbaa !45
  %24 = tail call ptr @BLI_ghash_lookup(ptr noundef %6, ptr noundef %23) #22
  %25 = getelementptr inbounds %struct.RigGraph, ptr %7, i64 0, i32 10
  store ptr %24, ptr %25, align 8, !tbaa !45
  %26 = load ptr, ptr %0, align 8, !tbaa !16
  %27 = icmp eq ptr %26, null
  br i1 %27, label %32, label %28

28:                                               ; preds = %21, %28
  %29 = phi ptr [ %30, %28 ], [ %26, %21 ]
  tail call fastcc void @cloneArc(ptr noundef %7, ptr noundef nonnull %0, ptr noundef nonnull %29, ptr noundef %6, ptr noundef %3, ptr noundef %4) #21
  %30 = load ptr, ptr %29, align 8, !tbaa !16
  %31 = icmp eq ptr %30, null
  br i1 %31, label %32, label %28, !llvm.loop !171

32:                                               ; preds = %28, %21
  %33 = getelementptr inbounds %struct.RigGraph, ptr %0, i64 0, i32 8
  %34 = load ptr, ptr %33, align 8, !tbaa !16
  %35 = icmp eq ptr %34, null
  br i1 %35, label %36, label %41

36:                                               ; preds = %41, %32
  %37 = load ptr, ptr %7, align 8, !tbaa !16
  %38 = icmp eq ptr %37, null
  br i1 %38, label %79, label %39

39:                                               ; preds = %36
  %40 = getelementptr inbounds %struct.RigGraph, ptr %0, i64 0, i32 16
  br label %48

41:                                               ; preds = %32, %41
  %42 = phi ptr [ %43, %41 ], [ %34, %32 ]
  tail call fastcc void @cloneControl(ptr noundef %7, ptr noundef nonnull %0, ptr noundef nonnull %42, ptr noundef %6, ptr noundef %3, ptr noundef %4) #21
  %43 = load ptr, ptr %42, align 8, !tbaa !16
  %44 = icmp eq ptr %43, null
  br i1 %44, label %36, label %41, !llvm.loop !172

45:                                               ; preds = %76, %48
  %46 = load ptr, ptr %49, align 8, !tbaa !16
  %47 = icmp eq ptr %46, null
  br i1 %47, label %79, label %48, !llvm.loop !173

48:                                               ; preds = %39, %45
  %49 = phi ptr [ %37, %39 ], [ %46, %45 ]
  %50 = getelementptr inbounds %struct.RigArc, ptr %49, i64 0, i32 9
  %51 = load ptr, ptr %50, align 8, !tbaa !16
  %52 = icmp eq ptr %51, null
  br i1 %52, label %45, label %53

53:                                               ; preds = %48, %76
  %54 = phi ptr [ %77, %76 ], [ %51, %48 ]
  %55 = getelementptr inbounds %struct.RigEdge, ptr %54, i64 0, i32 7
  %56 = load ptr, ptr %55, align 8, !tbaa !24
  %57 = icmp eq ptr %56, null
  br i1 %57, label %76, label %58

58:                                               ; preds = %53
  %59 = load ptr, ptr %10, align 8, !tbaa !23
  %60 = load ptr, ptr %40, align 8, !tbaa !54
  %61 = load ptr, ptr %8, align 8, !tbaa !54
  tail call void @updateDuplicateSubtargetObjects(ptr noundef nonnull %56, ptr noundef %59, ptr noundef %60, ptr noundef %61) #22
  %62 = load ptr, ptr %55, align 8, !tbaa !24
  %63 = getelementptr inbounds %struct.EditBone, ptr %62, i64 0, i32 3
  %64 = load ptr, ptr %63, align 8, !tbaa !55
  %65 = icmp eq ptr %64, null
  br i1 %65, label %76, label %66

66:                                               ; preds = %58
  %67 = tail call ptr @BLI_ghash_lookup(ptr noundef %6, ptr noundef nonnull %64) #22
  %68 = icmp eq ptr %67, null
  %69 = load ptr, ptr %55, align 8, !tbaa !24
  br i1 %68, label %72, label %70

70:                                               ; preds = %66
  %71 = getelementptr inbounds %struct.EditBone, ptr %69, i64 0, i32 3
  store ptr %67, ptr %71, align 8, !tbaa !55
  br label %76

72:                                               ; preds = %66
  %73 = getelementptr inbounds %struct.EditBone, ptr %69, i64 0, i32 9
  %74 = load i32, ptr %73, align 4, !tbaa !86
  %75 = and i32 %74, -17
  store i32 %75, ptr %73, align 4, !tbaa !86
  br label %76

76:                                               ; preds = %58, %72, %70, %53
  %77 = load ptr, ptr %54, align 8, !tbaa !16
  %78 = icmp eq ptr %77, null
  br i1 %78, label %45, label %53, !llvm.loop !174

79:                                               ; preds = %45, %36
  %80 = getelementptr inbounds %struct.RigGraph, ptr %7, i64 0, i32 8
  %81 = load ptr, ptr %80, align 8, !tbaa !16
  %82 = icmp eq ptr %81, null
  br i1 %82, label %115, label %83

83:                                               ; preds = %79
  %84 = getelementptr inbounds %struct.RigGraph, ptr %0, i64 0, i32 16
  br label %85

85:                                               ; preds = %83, %106
  %86 = phi ptr [ %81, %83 ], [ %113, %106 ]
  %87 = getelementptr inbounds %struct.RigControl, ptr %86, i64 0, i32 4
  %88 = load ptr, ptr %87, align 8, !tbaa !42
  %89 = load ptr, ptr %10, align 8, !tbaa !23
  %90 = load ptr, ptr %84, align 8, !tbaa !54
  %91 = load ptr, ptr %8, align 8, !tbaa !54
  tail call void @updateDuplicateSubtargetObjects(ptr noundef %88, ptr noundef %89, ptr noundef %90, ptr noundef %91) #22
  %92 = load ptr, ptr %87, align 8, !tbaa !42
  %93 = getelementptr inbounds %struct.EditBone, ptr %92, i64 0, i32 3
  %94 = load ptr, ptr %93, align 8, !tbaa !55
  %95 = icmp eq ptr %94, null
  br i1 %95, label %106, label %96

96:                                               ; preds = %85
  %97 = tail call ptr @BLI_ghash_lookup(ptr noundef %6, ptr noundef nonnull %94) #22
  %98 = icmp eq ptr %97, null
  %99 = load ptr, ptr %87, align 8, !tbaa !42
  br i1 %98, label %102, label %100

100:                                              ; preds = %96
  %101 = getelementptr inbounds %struct.EditBone, ptr %99, i64 0, i32 3
  store ptr %97, ptr %101, align 8, !tbaa !55
  br label %106

102:                                              ; preds = %96
  %103 = getelementptr inbounds %struct.EditBone, ptr %99, i64 0, i32 9
  %104 = load i32, ptr %103, align 4, !tbaa !86
  %105 = and i32 %104, -17
  store i32 %105, ptr %103, align 4, !tbaa !86
  br label %106

106:                                              ; preds = %100, %102, %85
  %107 = getelementptr inbounds %struct.RigControl, ptr %86, i64 0, i32 5
  %108 = load ptr, ptr %107, align 8, !tbaa !40
  %109 = tail call ptr @BLI_ghash_lookup(ptr noundef %6, ptr noundef %108) #22
  store ptr %109, ptr %107, align 8, !tbaa !40
  %110 = getelementptr inbounds %struct.RigControl, ptr %86, i64 0, i32 6
  %111 = load ptr, ptr %110, align 8, !tbaa !130
  %112 = tail call ptr @BLI_ghash_lookup(ptr noundef %6, ptr noundef %111) #22
  store ptr %112, ptr %110, align 8, !tbaa !130
  %113 = load ptr, ptr %86, align 8, !tbaa !16
  %114 = icmp eq ptr %113, null
  br i1 %114, label %115, label %85, !llvm.loop !175

115:                                              ; preds = %106, %79
  tail call void @BLI_ghash_free(ptr noundef %6, ptr noundef null, ptr noundef null) #22
  ret ptr %7
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @retargetArctoArc(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) unnamed_addr #0 {
  %5 = load ptr, ptr @MEM_callocN, align 8, !tbaa !16
  %6 = tail call ptr %5(i64 noundef 32, ptr noundef nonnull @.str.49) #22
  store ptr %1, ptr %6, align 8, !tbaa !132
  %7 = getelementptr inbounds %struct.RetargetParam, ptr %6, i64 0, i32 1
  store ptr %2, ptr %7, align 8, !tbaa !134
  %8 = getelementptr inbounds %struct.RetargetParam, ptr %6, i64 0, i32 2
  store ptr %3, ptr %8, align 8, !tbaa !136
  %9 = getelementptr inbounds %struct.RetargetParam, ptr %6, i64 0, i32 3
  store ptr %0, ptr %9, align 8, !tbaa !135
  %10 = getelementptr inbounds %struct.RigGraph, ptr %1, i64 0, i32 13
  %11 = load ptr, ptr %10, align 8, !tbaa !9
  tail call void @BLI_task_pool_push(ptr noundef %11, ptr noundef nonnull @exec_retargetArctoArc, ptr noundef nonnull %6, i8 noundef zeroext 1, i32 noundef 1) #22
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @finishRetarget(ptr nocapture noundef readonly %0) unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.RigGraph, ptr %0, i64 0, i32 13
  %3 = load ptr, ptr %2, align 8, !tbaa !9
  tail call void @BLI_task_pool_work_and_wait(ptr noundef %3) #22
  ret void
}

; Function Attrs: optsize
declare void @ED_armature_validate_active(ptr noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @BIF_adjustRetarget(ptr noundef %0) local_unnamed_addr #0 {
  %2 = load ptr, ptr @GLOBAL_RIGG, align 8, !tbaa !16
  %3 = icmp eq ptr %2, null
  br i1 %3, label %5, label %4

4:                                                ; preds = %1
  tail call fastcc void @adjustGraphs(ptr noundef %0, ptr noundef nonnull %2) #21
  br label %5

5:                                                ; preds = %4, %1
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @adjustGraphs(ptr noundef %0, ptr noundef %1) unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.RigGraph, ptr %1, i64 0, i32 16
  %4 = load ptr, ptr %3, align 8, !tbaa !54
  %5 = getelementptr inbounds %struct.Object, ptr %4, i64 0, i32 19
  %6 = load ptr, ptr %5, align 8, !tbaa !46
  %7 = load ptr, ptr %1, align 8, !tbaa !16
  %8 = icmp eq ptr %7, null
  br i1 %8, label %20, label %9

9:                                                ; preds = %2, %17
  %10 = phi ptr [ %18, %17 ], [ %7, %2 ]
  %11 = getelementptr inbounds %struct.RigArc, ptr %10, i64 0, i32 11
  %12 = load ptr, ptr %11, align 8, !tbaa !137
  %13 = icmp eq ptr %12, null
  br i1 %13, label %17, label %14

14:                                               ; preds = %9
  %15 = getelementptr inbounds %struct.RigArc, ptr %10, i64 0, i32 2
  %16 = load ptr, ptr %15, align 8, !tbaa !27
  tail call fastcc void @retargetArctoArc(ptr noundef %0, ptr noundef nonnull %1, ptr noundef nonnull %10, ptr noundef %16) #21
  br label %17

17:                                               ; preds = %9, %14
  %18 = load ptr, ptr %10, align 8, !tbaa !16
  %19 = icmp eq ptr %18, null
  br i1 %19, label %20, label %9, !llvm.loop !176

20:                                               ; preds = %17, %2
  tail call fastcc void @finishRetarget(ptr noundef nonnull %1) #21
  %21 = getelementptr inbounds %struct.RigGraph, ptr %1, i64 0, i32 9
  %22 = load ptr, ptr %21, align 8, !tbaa !23
  %23 = getelementptr inbounds %struct.bArmature, ptr %6, i64 0, i32 4
  store ptr %22, ptr %23, align 8, !tbaa !52
  tail call void @ED_armature_from_edit(ptr noundef %6) #22
  tail call void @ED_undo_push(ptr noundef %0, ptr noundef nonnull @.str.27) #22
  ret void
}

; Function Attrs: optsize
declare void @print_v3(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @RIG_printCtrl(ptr noundef %0, ptr noundef %1) unnamed_addr #0 {
  %3 = alloca [128 x i8], align 16
  call void @llvm.lifetime.start.p0(i64 128, ptr nonnull %3) #20
  %4 = getelementptr inbounds %struct.RigControl, ptr %0, i64 0, i32 4
  %5 = load ptr, ptr %4, align 8, !tbaa !42
  %6 = getelementptr inbounds %struct.EditBone, ptr %5, i64 0, i32 5
  %7 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.32, ptr noundef %1, ptr noundef nonnull %6) #21
  %8 = getelementptr inbounds %struct.RigControl, ptr %0, i64 0, i32 5
  %9 = load ptr, ptr %8, align 8, !tbaa !40
  %10 = icmp eq ptr %9, null
  %11 = getelementptr inbounds %struct.EditBone, ptr %9, i64 0, i32 5
  %12 = select i1 %10, ptr @.str.34, ptr %11
  %13 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.33, ptr noundef %1, ptr noundef nonnull %12) #21
  %14 = call i64 (ptr, i64, ptr, ...) @BLI_snprintf(ptr noundef nonnull %3, i64 noundef 128, ptr noundef nonnull @.str.35, ptr noundef %1) #22
  %15 = getelementptr inbounds %struct.RigControl, ptr %0, i64 0, i32 8
  call void @print_v3(ptr noundef nonnull %3, ptr noundef nonnull %15) #22
  %16 = getelementptr inbounds %struct.RigControl, ptr %0, i64 0, i32 10
  %17 = load i32, ptr %16, align 8, !tbaa !126
  %18 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.36, ptr noundef %1, i32 noundef %17) #21
  call void @llvm.lifetime.end.p0(i64 128, ptr nonnull %3) #20
  ret void
}

; Function Attrs: optsize
declare i64 @BLI_snprintf(ptr noundef, i64 noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: optsize
declare ptr @BLI_ghash_str_new(ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare ptr @BLI_task_scheduler_create(i32 noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare ptr @BLI_task_pool_create(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare void @BLI_ghash_insert(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc noundef ptr @newRigArc(ptr noundef %0) unnamed_addr #0 {
  %2 = load ptr, ptr @MEM_callocN, align 8, !tbaa !16
  %3 = tail call ptr %2(i64 noundef 88, ptr noundef nonnull @.str.40) #22
  %4 = getelementptr inbounds %struct.RigArc, ptr %3, i64 0, i32 10
  store i32 0, ptr %4, align 8, !tbaa !148
  tail call void @BLI_addtail(ptr noundef %0, ptr noundef %3) #22
  ret ptr %3
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc noundef ptr @newRigNodeHead(ptr noundef %0, ptr nocapture noundef writeonly %1, ptr nocapture noundef readonly %2) unnamed_addr #0 {
  %4 = load ptr, ptr @MEM_callocN, align 8, !tbaa !16
  %5 = tail call ptr %4(i64 noundef 80, ptr noundef nonnull @.str.41) #22
  %6 = getelementptr inbounds %struct.RigGraph, ptr %0, i64 0, i32 1
  tail call void @BLI_addtail(ptr noundef nonnull %6, ptr noundef %5) #22
  %7 = getelementptr inbounds %struct.RigNode, ptr %5, i64 0, i32 2
  tail call fastcc void @copy_v3_v3(ptr noundef nonnull %7, ptr noundef %2) #21
  %8 = getelementptr inbounds %struct.RigNode, ptr %5, i64 0, i32 4
  store i32 1, ptr %8, align 8, !tbaa !36
  %9 = getelementptr inbounds %struct.RigNode, ptr %5, i64 0, i32 5
  store ptr null, ptr %9, align 8, !tbaa !177
  %10 = getelementptr inbounds %struct.RigArc, ptr %1, i64 0, i32 2
  store ptr %5, ptr %10, align 8, !tbaa !27
  ret ptr %5
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @addRigNodeHead(ptr nocapture noundef writeonly %0, ptr noundef %1) unnamed_addr #2 {
  %3 = getelementptr inbounds %struct.RigNode, ptr %1, i64 0, i32 4
  %4 = load i32, ptr %3, align 8, !tbaa !36
  %5 = add nsw i32 %4, 1
  store i32 %5, ptr %3, align 8, !tbaa !36
  %6 = getelementptr inbounds %struct.RigArc, ptr %0, i64 0, i32 2
  store ptr %1, ptr %6, align 8, !tbaa !27
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @RIG_addEdgeToArc(ptr noundef %0, ptr nocapture noundef readonly %1, ptr noundef %2) unnamed_addr #0 {
  %4 = load ptr, ptr @MEM_callocN, align 8, !tbaa !16
  %5 = tail call ptr %4(i64 noundef 80, ptr noundef nonnull @.str.42) #22
  %6 = getelementptr inbounds %struct.RigEdge, ptr %5, i64 0, i32 3
  tail call fastcc void @copy_v3_v3(ptr noundef nonnull %6, ptr noundef %1) #21
  %7 = getelementptr inbounds %struct.RigEdge, ptr %5, i64 0, i32 7
  store ptr %2, ptr %7, align 8, !tbaa !24
  %8 = icmp eq ptr %2, null
  br i1 %8, label %13, label %9

9:                                                ; preds = %3
  %10 = getelementptr inbounds %struct.EditBone, ptr %2, i64 0, i32 6
  %11 = load float, ptr %10, align 8, !tbaa !143
  %12 = getelementptr inbounds %struct.RigEdge, ptr %5, i64 0, i32 8
  tail call fastcc void @getEditBoneRollUpAxis(ptr noundef nonnull %2, float noundef %11, ptr noundef nonnull %12) #21
  br label %13

13:                                               ; preds = %9, %3
  tail call fastcc void @RIG_appendEdgeToArc(ptr noundef %0, ptr noundef nonnull %5) #21
  ret void
}

; Function Attrs: mustprogress nofree nounwind optsize willreturn memory(argmem: read)
declare i32 @strcmp(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #8

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @RIG_addControlBone(ptr noundef %0, ptr noundef %1) unnamed_addr #0 {
  %3 = tail call fastcc ptr @newRigControl(ptr noundef %0) #21
  %4 = getelementptr inbounds %struct.RigControl, ptr %3, i64 0, i32 4
  store ptr %1, ptr %4, align 8, !tbaa !42
  %5 = getelementptr inbounds %struct.RigControl, ptr %3, i64 0, i32 2
  %6 = getelementptr inbounds %struct.EditBone, ptr %1, i64 0, i32 7
  tail call fastcc void @copy_v3_v3(ptr noundef nonnull %5, ptr noundef nonnull %6) #21
  %7 = getelementptr inbounds %struct.RigControl, ptr %3, i64 0, i32 3
  %8 = getelementptr inbounds %struct.EditBone, ptr %1, i64 0, i32 8
  tail call fastcc void @copy_v3_v3(ptr noundef nonnull %7, ptr noundef nonnull %8) #21
  %9 = getelementptr inbounds %struct.EditBone, ptr %1, i64 0, i32 6
  %10 = load float, ptr %9, align 8, !tbaa !143
  %11 = getelementptr inbounds %struct.RigControl, ptr %3, i64 0, i32 7
  tail call fastcc void @getEditBoneRollUpAxis(ptr noundef %1, float noundef %10, ptr noundef nonnull %11) #21
  %12 = getelementptr inbounds %struct.RigControl, ptr %3, i64 0, i32 11
  store i32 0, ptr %12, align 4, !tbaa !129
  %13 = getelementptr inbounds %struct.RigGraph, ptr %0, i64 0, i32 15
  %14 = load ptr, ptr %13, align 8, !tbaa !21
  %15 = getelementptr inbounds %struct.EditBone, ptr %1, i64 0, i32 5
  tail call void @BLI_ghash_insert(ptr noundef %14, ptr noundef nonnull %15, ptr noundef %3) #22
  ret void
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(read, inaccessiblemem: none) uwtable
define internal fastcc i32 @countEditBoneChildren(ptr nocapture noundef readonly %0, ptr noundef readnone %1) unnamed_addr #6 {
  %3 = load ptr, ptr %0, align 8, !tbaa !16
  %4 = icmp eq ptr %3, null
  br i1 %4, label %15, label %5

5:                                                ; preds = %2, %5
  %6 = phi ptr [ %13, %5 ], [ %3, %2 ]
  %7 = phi i32 [ %12, %5 ], [ 0, %2 ]
  %8 = getelementptr inbounds %struct.EditBone, ptr %6, i64 0, i32 3
  %9 = load ptr, ptr %8, align 8, !tbaa !55
  %10 = icmp eq ptr %9, %1
  %11 = zext i1 %10 to i32
  %12 = add nuw nsw i32 %7, %11
  %13 = load ptr, ptr %6, align 8, !tbaa !16
  %14 = icmp eq ptr %13, null
  br i1 %14, label %15, label %5, !llvm.loop !178

15:                                               ; preds = %5, %2
  %16 = phi i32 [ 0, %2 ], [ %12, %5 ]
  ret i32 %16
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc noundef ptr @newRigNodeTail(ptr noundef %0, ptr nocapture noundef writeonly %1, ptr nocapture noundef readonly %2) unnamed_addr #0 {
  %4 = tail call fastcc ptr @newRigNode(ptr noundef %0, ptr noundef %2) #21
  %5 = getelementptr inbounds %struct.RigNode, ptr %4, i64 0, i32 4
  store i32 1, ptr %5, align 8, !tbaa !36
  %6 = getelementptr inbounds %struct.RigArc, ptr %1, i64 0, i32 3
  store ptr %4, ptr %6, align 8, !tbaa !35
  ret ptr %4
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc noundef ptr @newRigNode(ptr noundef %0, ptr nocapture noundef readonly %1) unnamed_addr #0 {
  %3 = load ptr, ptr @MEM_callocN, align 8, !tbaa !16
  %4 = tail call ptr %3(i64 noundef 80, ptr noundef nonnull @.str.41) #22
  %5 = getelementptr inbounds %struct.RigGraph, ptr %0, i64 0, i32 1
  tail call void @BLI_addtail(ptr noundef nonnull %5, ptr noundef %4) #22
  %6 = getelementptr inbounds %struct.RigNode, ptr %4, i64 0, i32 2
  tail call fastcc void @copy_v3_v3(ptr noundef nonnull %6, ptr noundef %1) #21
  %7 = getelementptr inbounds %struct.RigNode, ptr %4, i64 0, i32 4
  store i32 0, ptr %7, align 8, !tbaa !36
  %8 = getelementptr inbounds %struct.RigNode, ptr %4, i64 0, i32 5
  store ptr null, ptr %8, align 8, !tbaa !177
  ret ptr %4
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(read, inaccessiblemem: none) uwtable
define internal fastcc ptr @nextEditBoneChild(ptr nocapture noundef readonly %0, ptr noundef readnone %1, i32 noundef %2) unnamed_addr #6 {
  %4 = load ptr, ptr %0, align 8, !tbaa !16
  %5 = icmp eq ptr %4, null
  br i1 %5, label %20, label %6

6:                                                ; preds = %3, %16
  %7 = phi ptr [ %18, %16 ], [ %4, %3 ]
  %8 = phi i32 [ %17, %16 ], [ %2, %3 ]
  %9 = getelementptr inbounds %struct.EditBone, ptr %7, i64 0, i32 3
  %10 = load ptr, ptr %9, align 8, !tbaa !55
  %11 = icmp eq ptr %10, %1
  br i1 %11, label %12, label %16

12:                                               ; preds = %6
  %13 = icmp eq i32 %8, 0
  br i1 %13, label %20, label %14

14:                                               ; preds = %12
  %15 = add nsw i32 %8, -1
  br label %16

16:                                               ; preds = %6, %14
  %17 = phi i32 [ %15, %14 ], [ %8, %6 ]
  %18 = load ptr, ptr %7, align 8, !tbaa !16
  %19 = icmp eq ptr %18, null
  br i1 %19, label %20, label %6, !llvm.loop !179

20:                                               ; preds = %12, %16, %3
  %21 = phi ptr [ null, %3 ], [ null, %16 ], [ %7, %12 ]
  ret ptr %21
}

; Function Attrs: optsize
declare void @BLI_addtail(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @getEditBoneRollUpAxis(ptr nocapture noundef readonly %0, float noundef %1, ptr nocapture noundef writeonly %2) unnamed_addr #0 {
  %4 = alloca [3 x [3 x float]], align 16
  %5 = alloca [3 x float], align 4
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %4) #20
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %5) #20
  %6 = getelementptr inbounds %struct.EditBone, ptr %0, i64 0, i32 8
  %7 = getelementptr inbounds %struct.EditBone, ptr %0, i64 0, i32 7
  call fastcc void @sub_v3_v3v3(ptr noundef nonnull %5, ptr noundef nonnull %6, ptr noundef nonnull %7) #21
  call void @vec_roll_to_mat3(ptr noundef nonnull %5, float noundef %1, ptr noundef nonnull %4) #22
  %8 = getelementptr inbounds [3 x [3 x float]], ptr %4, i64 0, i64 2
  call fastcc void @copy_v3_v3(ptr noundef %2, ptr noundef nonnull %8) #21
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %5) #20
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %4) #20
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @RIG_appendEdgeToArc(ptr noundef %0, ptr noundef %1) unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.RigArc, ptr %0, i64 0, i32 9
  tail call void @BLI_addtail(ptr noundef nonnull %3, ptr noundef %1) #22
  %4 = getelementptr inbounds %struct.RigEdge, ptr %1, i64 0, i32 1
  %5 = load ptr, ptr %4, align 8, !tbaa !99
  %6 = icmp eq ptr %5, null
  %7 = getelementptr inbounds %struct.RigEdge, ptr %1, i64 0, i32 2
  br i1 %6, label %8, label %12

8:                                                ; preds = %2
  %9 = getelementptr inbounds %struct.RigArc, ptr %0, i64 0, i32 2
  %10 = load ptr, ptr %9, align 8, !tbaa !27
  %11 = getelementptr inbounds %struct.RigNode, ptr %10, i64 0, i32 2
  tail call fastcc void @copy_v3_v3(ptr noundef nonnull %7, ptr noundef nonnull %11) #21
  br label %14

12:                                               ; preds = %2
  %13 = getelementptr inbounds %struct.RigEdge, ptr %5, i64 0, i32 3
  tail call fastcc void @copy_v3_v3(ptr noundef nonnull %7, ptr noundef nonnull %13) #21
  tail call fastcc void @RIG_calculateEdgeAngles(ptr noundef nonnull %5, ptr noundef nonnull %1) #21
  br label %14

14:                                               ; preds = %12, %8
  %15 = getelementptr inbounds %struct.RigEdge, ptr %1, i64 0, i32 2
  %16 = getelementptr inbounds %struct.RigEdge, ptr %1, i64 0, i32 3
  %17 = tail call fastcc float @len_v3v3(ptr noundef nonnull %15, ptr noundef nonnull %16) #21
  %18 = getelementptr inbounds %struct.RigEdge, ptr %1, i64 0, i32 4
  store float %17, ptr %18, align 8, !tbaa !29
  %19 = getelementptr inbounds %struct.RigArc, ptr %0, i64 0, i32 5
  %20 = load float, ptr %19, align 4, !tbaa !156
  %21 = fadd float %17, %20
  store float %21, ptr %19, align 4, !tbaa !156
  %22 = getelementptr inbounds %struct.RigArc, ptr %0, i64 0, i32 10
  %23 = load i32, ptr %22, align 8, !tbaa !148
  %24 = add nsw i32 %23, 1
  store i32 %24, ptr %22, align 8, !tbaa !148
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @sub_v3_v3v3(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2) unnamed_addr #2 {
  %4 = load float, ptr %1, align 4, !tbaa !5
  %5 = load float, ptr %2, align 4, !tbaa !5
  %6 = fsub float %4, %5
  store float %6, ptr %0, align 4, !tbaa !5
  %7 = getelementptr inbounds float, ptr %1, i64 1
  %8 = load float, ptr %7, align 4, !tbaa !5
  %9 = getelementptr inbounds float, ptr %2, i64 1
  %10 = load float, ptr %9, align 4, !tbaa !5
  %11 = fsub float %8, %10
  %12 = getelementptr inbounds float, ptr %0, i64 1
  store float %11, ptr %12, align 4, !tbaa !5
  %13 = getelementptr inbounds float, ptr %1, i64 2
  %14 = load float, ptr %13, align 4, !tbaa !5
  %15 = getelementptr inbounds float, ptr %2, i64 2
  %16 = load float, ptr %15, align 4, !tbaa !5
  %17 = fsub float %14, %16
  %18 = getelementptr inbounds float, ptr %0, i64 2
  store float %17, ptr %18, align 4, !tbaa !5
  ret void
}

; Function Attrs: optsize
declare void @vec_roll_to_mat3(ptr noundef, float noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @RIG_calculateEdgeAngles(ptr nocapture noundef %0, ptr noundef %1) unnamed_addr #0 {
  %3 = alloca [3 x float], align 4
  %4 = alloca [3 x float], align 4
  %5 = alloca [3 x float], align 4
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %3) #20
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %4) #20
  %6 = getelementptr inbounds %struct.RigEdge, ptr %0, i64 0, i32 3
  %7 = getelementptr inbounds %struct.RigEdge, ptr %0, i64 0, i32 2
  call fastcc void @sub_v3_v3v3(ptr noundef nonnull %3, ptr noundef nonnull %6, ptr noundef nonnull %7) #21
  %8 = getelementptr inbounds %struct.RigEdge, ptr %1, i64 0, i32 3
  %9 = getelementptr inbounds %struct.RigEdge, ptr %1, i64 0, i32 2
  call fastcc void @sub_v3_v3v3(ptr noundef nonnull %4, ptr noundef nonnull %8, ptr noundef nonnull %9) #21
  %10 = call fastcc float @normalize_v3(ptr noundef nonnull %3) #21
  %11 = call fastcc float @normalize_v3(ptr noundef nonnull %4) #21
  %12 = call float @angle_normalized_v3v3(ptr noundef nonnull %3, ptr noundef nonnull %4) #22
  %13 = getelementptr inbounds %struct.RigEdge, ptr %0, i64 0, i32 5
  store float %12, ptr %13, align 4, !tbaa !30
  %14 = getelementptr inbounds %struct.RigEdge, ptr %1, i64 0, i32 7
  %15 = load ptr, ptr %14, align 8, !tbaa !24
  %16 = icmp eq ptr %15, null
  br i1 %16, label %22, label %17

17:                                               ; preds = %2
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %5) #20
  call fastcc void @cross_v3_v3v3(ptr noundef nonnull %5, ptr noundef nonnull %3, ptr noundef nonnull %4) #21
  %18 = call fastcc float @normalize_v3(ptr noundef nonnull %5) #21
  %19 = getelementptr inbounds %struct.RigEdge, ptr %1, i64 0, i32 8
  %20 = call float @angle_normalized_v3v3(ptr noundef nonnull %5, ptr noundef nonnull %19) #22
  %21 = getelementptr inbounds %struct.RigEdge, ptr %1, i64 0, i32 6
  store float %20, ptr %21, align 8, !tbaa !180
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %5) #20
  br label %22

22:                                               ; preds = %17, %2
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %4) #20
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %3) #20
  ret void
}

; Function Attrs: mustprogress nofree noinline nounwind optsize willreturn memory(write, argmem: readwrite) uwtable
define internal fastcc float @len_v3v3(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) unnamed_addr #9 {
  %3 = alloca [3 x float], align 4
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %3) #20
  call fastcc void @sub_v3_v3v3(ptr noundef nonnull %3, ptr noundef %1, ptr noundef %0) #21
  %4 = call fastcc float @len_v3(ptr noundef nonnull %3) #21
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %3) #20
  ret float %4
}

; Function Attrs: mustprogress nofree noinline nounwind optsize willreturn memory(write, argmem: readwrite) uwtable
define internal fastcc float @normalize_v3(ptr nocapture noundef %0) unnamed_addr #9 {
  %2 = tail call fastcc float @normalize_v3_v3(ptr noundef %0, ptr noundef %0) #21
  ret float %2
}

; Function Attrs: optsize
declare float @angle_normalized_v3v3(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @cross_v3_v3v3(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2) unnamed_addr #2 {
  %4 = getelementptr inbounds float, ptr %1, i64 1
  %5 = load float, ptr %4, align 4, !tbaa !5
  %6 = getelementptr inbounds float, ptr %2, i64 2
  %7 = load float, ptr %6, align 4, !tbaa !5
  %8 = getelementptr inbounds float, ptr %1, i64 2
  %9 = load float, ptr %8, align 4, !tbaa !5
  %10 = getelementptr inbounds float, ptr %2, i64 1
  %11 = load float, ptr %10, align 4, !tbaa !5
  %12 = fneg float %9
  %13 = fmul float %11, %12
  %14 = tail call float @llvm.fmuladd.f32(float %5, float %7, float %13)
  store float %14, ptr %0, align 4, !tbaa !5
  %15 = load float, ptr %8, align 4, !tbaa !5
  %16 = load float, ptr %2, align 4, !tbaa !5
  %17 = load float, ptr %1, align 4, !tbaa !5
  %18 = load float, ptr %6, align 4, !tbaa !5
  %19 = fneg float %17
  %20 = fmul float %18, %19
  %21 = tail call float @llvm.fmuladd.f32(float %15, float %16, float %20)
  %22 = getelementptr inbounds float, ptr %0, i64 1
  store float %21, ptr %22, align 4, !tbaa !5
  %23 = load float, ptr %1, align 4, !tbaa !5
  %24 = load float, ptr %10, align 4, !tbaa !5
  %25 = load float, ptr %4, align 4, !tbaa !5
  %26 = load float, ptr %2, align 4, !tbaa !5
  %27 = fneg float %25
  %28 = fmul float %26, %27
  %29 = tail call float @llvm.fmuladd.f32(float %23, float %24, float %28)
  %30 = getelementptr inbounds float, ptr %0, i64 2
  store float %29, ptr %30, align 4, !tbaa !5
  ret void
}

; Function Attrs: mustprogress nofree noinline nounwind optsize willreturn memory(write, argmem: readwrite) uwtable
define internal fastcc float @normalize_v3_v3(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1) unnamed_addr #9 {
  %3 = tail call fastcc float @dot_v3v3(ptr noundef %1, ptr noundef %1) #21
  %4 = fcmp ogt float %3, 0x38AA95A5C0000000
  br i1 %4, label %5, label %8

5:                                                ; preds = %2
  %6 = tail call float @sqrtf(float noundef %3) #22
  %7 = fdiv float 1.000000e+00, %6
  tail call fastcc void @mul_v3_v3fl(ptr noundef %0, ptr noundef %1, float noundef %7) #21
  br label %9

8:                                                ; preds = %2
  tail call fastcc void @zero_v3(ptr noundef %0) #21
  br label %9

9:                                                ; preds = %8, %5
  %10 = phi float [ %6, %5 ], [ 0.000000e+00, %8 ]
  ret float %10
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc float @dot_v3v3(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) unnamed_addr #7 {
  %3 = load float, ptr %0, align 4, !tbaa !5
  %4 = load float, ptr %1, align 4, !tbaa !5
  %5 = getelementptr inbounds float, ptr %0, i64 1
  %6 = load float, ptr %5, align 4, !tbaa !5
  %7 = getelementptr inbounds float, ptr %1, i64 1
  %8 = load float, ptr %7, align 4, !tbaa !5
  %9 = fmul float %6, %8
  %10 = tail call float @llvm.fmuladd.f32(float %3, float %4, float %9)
  %11 = getelementptr inbounds float, ptr %0, i64 2
  %12 = load float, ptr %11, align 4, !tbaa !5
  %13 = getelementptr inbounds float, ptr %1, i64 2
  %14 = load float, ptr %13, align 4, !tbaa !5
  %15 = tail call float @llvm.fmuladd.f32(float %12, float %14, float %10)
  ret float %15
}

; Function Attrs: mustprogress nofree nounwind optsize willreturn memory(write)
declare float @sqrtf(float noundef) local_unnamed_addr #10

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @mul_v3_v3fl(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1, float noundef %2) unnamed_addr #2 {
  %4 = load float, ptr %1, align 4, !tbaa !5
  %5 = fmul float %4, %2
  store float %5, ptr %0, align 4, !tbaa !5
  %6 = getelementptr inbounds float, ptr %1, i64 1
  %7 = load float, ptr %6, align 4, !tbaa !5
  %8 = fmul float %7, %2
  %9 = getelementptr inbounds float, ptr %0, i64 1
  store float %8, ptr %9, align 4, !tbaa !5
  %10 = getelementptr inbounds float, ptr %1, i64 2
  %11 = load float, ptr %10, align 4, !tbaa !5
  %12 = fmul float %11, %2
  %13 = getelementptr inbounds float, ptr %0, i64 2
  store float %12, ptr %13, align 4, !tbaa !5
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable
define internal fastcc void @zero_v3(ptr nocapture noundef writeonly %0) unnamed_addr #11 {
  store <2 x float> zeroinitializer, ptr %0, align 4, !tbaa !5
  %2 = getelementptr inbounds float, ptr %0, i64 2
  store float 0.000000e+00, ptr %2, align 4, !tbaa !5
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fmuladd.f32(float, float, float) #12

; Function Attrs: mustprogress nofree noinline nounwind optsize willreturn memory(write, argmem: readwrite) uwtable
define internal fastcc float @len_v3(ptr nocapture noundef readonly %0) unnamed_addr #9 {
  %2 = tail call fastcc float @dot_v3v3(ptr noundef %0, ptr noundef %0) #21
  %3 = tail call float @sqrtf(float noundef %2) #22
  ret float %3
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc noundef ptr @newRigControl(ptr noundef %0) unnamed_addr #0 {
  %2 = load ptr, ptr @MEM_callocN, align 8, !tbaa !16
  %3 = tail call ptr %2(i64 noundef 112, ptr noundef nonnull @.str.43) #22
  %4 = getelementptr inbounds %struct.RigGraph, ptr %0, i64 0, i32 8
  tail call void @BLI_addtail(ptr noundef nonnull %4, ptr noundef %3) #22
  ret ptr %3
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @RIG_joinArcs(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) unnamed_addr #0 {
  %5 = getelementptr inbounds %struct.RigArc, ptr %2, i64 0, i32 2
  %6 = load ptr, ptr %5, align 8, !tbaa !27
  %7 = getelementptr inbounds %struct.RigArc, ptr %3, i64 0, i32 2
  %8 = load ptr, ptr %7, align 8, !tbaa !27
  %9 = icmp eq ptr %6, %8
  br i1 %9, label %31, label %10

10:                                               ; preds = %4
  %11 = getelementptr inbounds %struct.RigArc, ptr %2, i64 0, i32 3
  %12 = load ptr, ptr %11, align 8, !tbaa !35
  %13 = getelementptr inbounds %struct.RigArc, ptr %3, i64 0, i32 3
  %14 = load ptr, ptr %13, align 8, !tbaa !35
  %15 = icmp eq ptr %12, %14
  br i1 %15, label %31, label %16

16:                                               ; preds = %10
  %17 = icmp eq ptr %6, %14
  %18 = select i1 %17, ptr %2, ptr %3
  %19 = select i1 %17, ptr %3, ptr %2
  %20 = getelementptr inbounds %struct.RigArc, ptr %18, i64 0, i32 9
  %21 = load ptr, ptr %20, align 8, !tbaa !93
  %22 = icmp eq ptr %21, null
  br i1 %22, label %27, label %23

23:                                               ; preds = %16, %23
  %24 = phi ptr [ %25, %23 ], [ %21, %16 ]
  %25 = load ptr, ptr %24, align 8, !tbaa !95
  tail call fastcc void @RIG_appendEdgeToArc(ptr noundef %19, ptr noundef nonnull %24) #21
  %26 = icmp eq ptr %25, null
  br i1 %26, label %27, label %23, !llvm.loop !181

27:                                               ; preds = %23, %16
  %28 = getelementptr inbounds %struct.RigArc, ptr %18, i64 0, i32 3
  %29 = load ptr, ptr %28, align 8, !tbaa !35
  %30 = getelementptr inbounds %struct.RigArc, ptr %19, i64 0, i32 3
  store ptr %29, ptr %30, align 8, !tbaa !35
  tail call fastcc void @BLI_listbase_clear(ptr noundef nonnull %20) #21
  tail call void @BLI_removeArc(ptr noundef %0, ptr noundef %18) #22
  tail call void @BLI_removeNode(ptr noundef %0, ptr noundef %1) #22
  br label %31

31:                                               ; preds = %4, %10, %27
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable
define internal fastcc void @BLI_listbase_clear(ptr nocapture noundef writeonly %0) unnamed_addr #11 {
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, i8 0, i64 16, i1 false)
  ret void
}

; Function Attrs: optsize
declare void @BLI_removeArc(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare void @BLI_removeNode(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare void @BLI_remlink(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare ptr @BLI_FindNodeByPosition(ptr noundef, ptr noundef, float noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare void @BLI_replaceNodeInArc(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare ptr @BKE_constraint_typeinfo_get(ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #13

; Function Attrs: optsize
declare ptr @BLI_ghash_lookup(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare zeroext i8 @BLI_ghash_haskey(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(readwrite, inaccessiblemem: none) uwtable
define internal fastcc noundef i32 @RIG_parentControl(ptr nocapture noundef %0, ptr noundef %1) unnamed_addr #14 {
  %3 = alloca [3 x float], align 4
  %4 = alloca [3 x float], align 4
  %5 = alloca [3 x float], align 4
  %6 = alloca [3 x float], align 4
  %7 = icmp eq ptr %1, null
  br i1 %7, label %51, label %8

8:                                                ; preds = %2
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %3) #20
  %9 = getelementptr inbounds %struct.RigControl, ptr %0, i64 0, i32 4
  %10 = load ptr, ptr %9, align 8, !tbaa !42
  %11 = getelementptr inbounds %struct.EditBone, ptr %10, i64 0, i32 7
  %12 = getelementptr inbounds %struct.EditBone, ptr %1, i64 0, i32 7
  call fastcc void @sub_v3_v3v3(ptr noundef nonnull %3, ptr noundef nonnull %11, ptr noundef nonnull %12) #21
  %13 = call fastcc float @dot_v3v3(ptr noundef nonnull %3, ptr noundef nonnull %3) #21
  %14 = fcmp olt float %13, 0x3F1A36E2E0000000
  br i1 %14, label %15, label %26

15:                                               ; preds = %8
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %4) #20
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %5) #20
  %16 = getelementptr inbounds %struct.EditBone, ptr %10, i64 0, i32 8
  call fastcc void @sub_v3_v3v3(ptr noundef nonnull %4, ptr noundef nonnull %16, ptr noundef nonnull %11) #21
  %17 = getelementptr inbounds %struct.EditBone, ptr %1, i64 0, i32 8
  call fastcc void @sub_v3_v3v3(ptr noundef nonnull %5, ptr noundef nonnull %17, ptr noundef nonnull %12) #21
  %18 = call fastcc float @dot_v3v3(ptr noundef nonnull %4, ptr noundef nonnull %5) #21
  %19 = fcmp ogt float %18, 0.000000e+00
  br i1 %19, label %20, label %24

20:                                               ; preds = %15
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %6) #20
  call fastcc void @cross_v3_v3v3(ptr noundef nonnull %6, ptr noundef nonnull %4, ptr noundef nonnull %5) #21
  %21 = call fastcc float @dot_v3v3(ptr noundef nonnull %6, ptr noundef nonnull %6) #21
  %22 = fcmp olt float %21, 0x3F1A36E2E0000000
  %23 = select i1 %22, i32 24, i32 8
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %6) #20
  br label %24

24:                                               ; preds = %20, %15
  %25 = phi i32 [ %23, %20 ], [ 8, %15 ]
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %5) #20
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %4) #20
  br label %26

26:                                               ; preds = %24, %8
  %27 = phi i32 [ %25, %24 ], [ 0, %8 ]
  %28 = getelementptr inbounds %struct.RigControl, ptr %0, i64 0, i32 10
  %29 = load i32, ptr %28, align 8, !tbaa !126
  %30 = icmp slt i32 %27, %29
  br i1 %30, label %49, label %31

31:                                               ; preds = %26
  %32 = getelementptr inbounds %struct.RigControl, ptr %0, i64 0, i32 5
  %33 = load ptr, ptr %32, align 8, !tbaa !40
  %34 = icmp eq ptr %33, null
  %35 = icmp ne i32 %27, %29
  %36 = or i1 %35, %34
  %37 = icmp eq ptr %33, %1
  %38 = or i1 %36, %37
  br i1 %38, label %47, label %39

39:                                               ; preds = %31, %39
  %40 = phi ptr [ %42, %39 ], [ %33, %31 ]
  %41 = getelementptr inbounds %struct.EditBone, ptr %40, i64 0, i32 3
  %42 = load ptr, ptr %41, align 8, !tbaa !55
  %43 = icmp eq ptr %42, null
  %44 = icmp eq ptr %42, %1
  %45 = or i1 %43, %44
  br i1 %45, label %46, label %39, !llvm.loop !182

46:                                               ; preds = %39
  br i1 %43, label %49, label %47

47:                                               ; preds = %46, %31
  store ptr %1, ptr %32, align 8, !tbaa !40
  store i32 %27, ptr %28, align 8, !tbaa !126
  %48 = getelementptr inbounds %struct.RigControl, ptr %0, i64 0, i32 8
  call fastcc void @copy_v3_v3(ptr noundef nonnull %48, ptr noundef nonnull %3) #21
  br label %49

49:                                               ; preds = %26, %46, %47
  %50 = phi i32 [ 1, %47 ], [ 0, %46 ], [ 0, %26 ]
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %3) #20
  br label %51

51:                                               ; preds = %2, %49
  %52 = phi i32 [ %50, %49 ], [ 0, %2 ]
  ret i32 %52
}

; Function Attrs: optsize
declare void @BLI_ghashIterator_init(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc zeroext i8 @BLI_ghashIterator_done(ptr nocapture noundef readonly %0) unnamed_addr #7 {
  %2 = getelementptr inbounds %struct.GHashIterator, ptr %0, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !183
  %4 = icmp eq ptr %3, null
  %5 = zext i1 %4 to i8
  ret i8 %5
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define internal fastcc ptr @BLI_ghashIterator_getValue(ptr nocapture noundef readonly %0) unnamed_addr #15 {
  %2 = getelementptr inbounds %struct.GHashIterator, ptr %0, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !183
  %4 = getelementptr inbounds %struct._gh_Entry, ptr %3, i64 0, i32 2
  %5 = load ptr, ptr %4, align 8, !tbaa !185
  ret ptr %5
}

; Function Attrs: optsize
declare void @BLI_ghashIterator_step(ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare ptr @BIF_NodeFromIndex(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare void @rotation_between_vecs_to_quat(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc zeroext i8 @is_zero_v3(ptr nocapture noundef readonly %0) unnamed_addr #7 {
  %2 = load float, ptr %0, align 4, !tbaa !5
  %3 = fcmp oeq float %2, 0.000000e+00
  br i1 %3, label %4, label %13

4:                                                ; preds = %1
  %5 = getelementptr inbounds float, ptr %0, i64 1
  %6 = load float, ptr %5, align 4, !tbaa !5
  %7 = fcmp oeq float %6, 0.000000e+00
  br i1 %7, label %8, label %13

8:                                                ; preds = %4
  %9 = getelementptr inbounds float, ptr %0, i64 2
  %10 = load float, ptr %9, align 4, !tbaa !5
  %11 = fcmp oeq float %10, 0.000000e+00
  %12 = zext i1 %11 to i8
  br label %13

13:                                               ; preds = %8, %4, %1
  %14 = phi i8 [ 0, %4 ], [ 0, %1 ], [ %12, %8 ]
  ret i8 %14
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc float @rollBoneByQuatAligned(ptr noundef %0, ptr nocapture noundef readonly %1, ptr noundef %2, ptr noundef %3, ptr nocapture noundef readonly %4) unnamed_addr #0 {
  %6 = alloca [3 x float], align 4
  %7 = alloca [3 x float], align 4
  %8 = alloca [3 x float], align 4
  %9 = alloca [3 x float], align 4
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %6) #20
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %7) #20
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %8) #20
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %9) #20
  call fastcc void @copy_v3_v3(ptr noundef nonnull %7, ptr noundef %1) #21
  call void @mul_qt_v3(ptr noundef %2, ptr noundef nonnull %7) #22
  %10 = getelementptr inbounds %struct.EditBone, ptr %0, i64 0, i32 8
  %11 = getelementptr inbounds %struct.EditBone, ptr %0, i64 0, i32 7
  call fastcc void @sub_v3_v3v3(ptr noundef nonnull %6, ptr noundef nonnull %10, ptr noundef nonnull %11) #21
  call fastcc void @cross_v3_v3v3(ptr noundef nonnull %8, ptr noundef nonnull %6, ptr noundef %4) #21
  call fastcc void @cross_v3_v3v3(ptr noundef nonnull %9, ptr noundef nonnull %8, ptr noundef nonnull %6) #21
  %12 = call fastcc float @normalize_v3(ptr noundef nonnull %7) #21
  %13 = call fastcc float @normalize_v3(ptr noundef nonnull %8) #21
  %14 = call fastcc float @normalize_v3(ptr noundef nonnull %9) #21
  %15 = call fastcc float @dot_v3v3(ptr noundef nonnull %7, ptr noundef nonnull %8) #21
  %16 = fcmp olt float %15, 0.000000e+00
  br i1 %16, label %17, label %18

17:                                               ; preds = %5
  call fastcc void @negate_v3(ptr noundef nonnull %8) #21
  br label %18

18:                                               ; preds = %17, %5
  %19 = call fastcc float @dot_v3v3(ptr noundef nonnull %7, ptr noundef nonnull %9) #21
  %20 = fcmp olt float %19, 0.000000e+00
  br i1 %20, label %21, label %22

21:                                               ; preds = %18
  call fastcc void @negate_v3(ptr noundef nonnull %9) #21
  br label %22

22:                                               ; preds = %21, %18
  %23 = call float @angle_normalized_v3v3(ptr noundef nonnull %8, ptr noundef nonnull %7) #22
  %24 = call float @angle_normalized_v3v3(ptr noundef nonnull %9, ptr noundef nonnull %7) #22
  %25 = fcmp olt float %23, %24
  %26 = select i1 %25, ptr %8, ptr %9
  call void @rotation_between_vecs_to_quat(ptr noundef %3, ptr noundef nonnull %7, ptr noundef nonnull %26) #22
  %27 = call float @ED_rollBoneToVector(ptr noundef %0, ptr noundef nonnull %26, i8 noundef zeroext 0) #22
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %9) #20
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %8) #20
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %7) #20
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %6) #20
  ret float %27
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc float @rollBoneByQuatJoint(ptr nocapture noundef readonly %0, ptr noundef readonly %1, ptr noundef %2, ptr noundef %3, ptr nocapture noundef readonly %4) unnamed_addr #0 {
  %6 = alloca [3 x float], align 4
  %7 = alloca [3 x float], align 4
  %8 = alloca [3 x float], align 4
  %9 = alloca [3 x float], align 4
  %10 = icmp eq ptr %1, null
  br i1 %10, label %11, label %16

11:                                               ; preds = %5
  %12 = getelementptr inbounds %struct.RigEdge, ptr %0, i64 0, i32 7
  %13 = load ptr, ptr %12, align 8, !tbaa !24
  %14 = getelementptr inbounds %struct.RigEdge, ptr %0, i64 0, i32 8
  %15 = tail call fastcc float @rollBoneByQuatAligned(ptr noundef %13, ptr noundef nonnull %14, ptr noundef %2, ptr noundef %3, ptr noundef %4) #21
  br label %55

16:                                               ; preds = %5
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %6) #20
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %7) #20
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %8) #20
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %9) #20
  %17 = getelementptr inbounds %struct.RigEdge, ptr %1, i64 0, i32 7
  %18 = load ptr, ptr %17, align 8, !tbaa !24
  %19 = icmp eq ptr %18, null
  br i1 %19, label %25, label %20

20:                                               ; preds = %16
  %21 = getelementptr inbounds %struct.EditBone, ptr %18, i64 0, i32 8
  %22 = getelementptr inbounds %struct.EditBone, ptr %18, i64 0, i32 7
  call fastcc void @sub_v3_v3v3(ptr noundef nonnull %7, ptr noundef nonnull %21, ptr noundef nonnull %22) #21
  %23 = getelementptr inbounds %struct.RigEdge, ptr %0, i64 0, i32 7
  %24 = load ptr, ptr %23, align 8, !tbaa !24
  br label %39

25:                                               ; preds = %16
  %26 = getelementptr inbounds %struct.RigEdge, ptr %1, i64 0, i32 1
  %27 = load ptr, ptr %26, align 8, !tbaa !99
  %28 = getelementptr inbounds %struct.RigEdge, ptr %27, i64 0, i32 7
  %29 = load ptr, ptr %28, align 8, !tbaa !24
  %30 = icmp eq ptr %29, null
  %31 = getelementptr inbounds %struct.RigEdge, ptr %0, i64 0, i32 7
  %32 = load ptr, ptr %31, align 8, !tbaa !24
  br i1 %30, label %36, label %33

33:                                               ; preds = %25
  %34 = getelementptr inbounds %struct.EditBone, ptr %32, i64 0, i32 7
  %35 = getelementptr inbounds %struct.EditBone, ptr %29, i64 0, i32 8
  call fastcc void @sub_v3_v3v3(ptr noundef nonnull %7, ptr noundef nonnull %34, ptr noundef nonnull %35) #21
  br label %39

36:                                               ; preds = %25
  %37 = getelementptr inbounds %struct.RigEdge, ptr %0, i64 0, i32 8
  %38 = tail call fastcc float @rollBoneByQuatAligned(ptr noundef %32, ptr noundef nonnull %37, ptr noundef %2, ptr noundef %3, ptr noundef %4) #21
  br label %53

39:                                               ; preds = %33, %20
  %40 = phi ptr [ %32, %33 ], [ %24, %20 ]
  %41 = getelementptr inbounds %struct.RigEdge, ptr %0, i64 0, i32 7
  %42 = getelementptr inbounds %struct.EditBone, ptr %40, i64 0, i32 8
  %43 = getelementptr inbounds %struct.EditBone, ptr %40, i64 0, i32 7
  call fastcc void @sub_v3_v3v3(ptr noundef nonnull %8, ptr noundef nonnull %42, ptr noundef nonnull %43) #21
  %44 = call fastcc float @normalize_v3(ptr noundef nonnull %7) #21
  %45 = call fastcc float @normalize_v3(ptr noundef nonnull %8) #21
  call fastcc void @cross_v3_v3v3(ptr noundef nonnull %9, ptr noundef nonnull %7, ptr noundef nonnull %8) #21
  %46 = call fastcc float @normalize_v3(ptr noundef nonnull %9) #21
  %47 = getelementptr inbounds %struct.RigEdge, ptr %0, i64 0, i32 6
  %48 = load float, ptr %47, align 8, !tbaa !180
  call void @axis_angle_to_quat(ptr noundef %3, ptr noundef nonnull %8, float noundef %48) #22
  call void @mul_qt_v3(ptr noundef %3, ptr noundef nonnull %9) #22
  %49 = getelementptr inbounds %struct.RigEdge, ptr %0, i64 0, i32 8
  call fastcc void @copy_v3_v3(ptr noundef nonnull %6, ptr noundef nonnull %49) #21
  call void @mul_qt_v3(ptr noundef %2, ptr noundef nonnull %6) #22
  %50 = call fastcc float @normalize_v3(ptr noundef nonnull %6) #21
  call void @rotation_between_vecs_to_quat(ptr noundef %3, ptr noundef nonnull %6, ptr noundef nonnull %9) #22
  %51 = load ptr, ptr %41, align 8, !tbaa !24
  %52 = call float @ED_rollBoneToVector(ptr noundef %51, ptr noundef nonnull %9, i8 noundef zeroext 0) #22
  br label %53

53:                                               ; preds = %39, %36
  %54 = phi float [ %52, %39 ], [ %38, %36 ]
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %9) #20
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %8) #20
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %7) #20
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %6) #20
  br label %55

55:                                               ; preds = %53, %11
  %56 = phi float [ %15, %11 ], [ %54, %53 ]
  ret float %56
}

; Function Attrs: optsize
declare void @unit_qt(ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare void @mul_qt_qtqt(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @repositionControl(ptr nocapture noundef readonly %0, ptr noundef %1, ptr nocapture noundef readonly %2, ptr noundef %3, float noundef %4) unnamed_addr #0 {
  %6 = alloca [3 x float], align 4
  %7 = alloca [3 x float], align 4
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %6) #20
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %7) #20
  %8 = getelementptr inbounds %struct.RigControl, ptr %1, i64 0, i32 8
  call fastcc void @copy_v3_v3(ptr noundef nonnull %6, ptr noundef nonnull %8) #21
  call fastcc void @mul_v3_fl(ptr noundef nonnull %6, float noundef %4) #21
  call void @mul_qt_v3(ptr noundef %3, ptr noundef nonnull %6) #22
  %9 = getelementptr inbounds %struct.RigControl, ptr %1, i64 0, i32 4
  %10 = load ptr, ptr %9, align 8, !tbaa !42
  %11 = getelementptr inbounds %struct.EditBone, ptr %10, i64 0, i32 7
  call fastcc void @add_v3_v3v3(ptr noundef nonnull %11, ptr noundef %2, ptr noundef nonnull %6) #21
  %12 = getelementptr inbounds %struct.RigControl, ptr %1, i64 0, i32 10
  %13 = load i32, ptr %12, align 8, !tbaa !126
  %14 = or i32 %13, 1
  store i32 %14, ptr %12, align 8, !tbaa !126
  %15 = getelementptr inbounds %struct.RigControl, ptr %1, i64 0, i32 9
  call void @copy_qt_qt(ptr noundef nonnull %15, ptr noundef %3) #22
  %16 = getelementptr inbounds %struct.RigControl, ptr %1, i64 0, i32 11
  %17 = load i32, ptr %16, align 4, !tbaa !129
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %19, label %27

19:                                               ; preds = %5
  %20 = getelementptr inbounds %struct.RigControl, ptr %1, i64 0, i32 3
  %21 = getelementptr inbounds %struct.RigControl, ptr %1, i64 0, i32 2
  call fastcc void @sub_v3_v3v3(ptr noundef nonnull %7, ptr noundef nonnull %20, ptr noundef nonnull %21) #21
  call fastcc void @mul_v3_fl(ptr noundef nonnull %7, float noundef %4) #21
  call void @mul_qt_v3(ptr noundef %3, ptr noundef nonnull %7) #22
  %22 = load ptr, ptr %9, align 8, !tbaa !42
  %23 = getelementptr inbounds %struct.EditBone, ptr %22, i64 0, i32 8
  %24 = getelementptr inbounds %struct.EditBone, ptr %22, i64 0, i32 7
  call fastcc void @add_v3_v3v3(ptr noundef nonnull %23, ptr noundef nonnull %24, ptr noundef nonnull %7) #21
  %25 = load i32, ptr %12, align 8, !tbaa !126
  %26 = or i32 %25, 2
  store i32 %26, ptr %12, align 8, !tbaa !126
  br label %27

27:                                               ; preds = %19, %5
  call fastcc void @finalizeControl(ptr noundef %0, ptr noundef nonnull %1, float noundef %4) #21
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %7) #20
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %6) #20
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @repositionTailControl(ptr nocapture noundef readonly %0, ptr noundef %1) unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.RigControl, ptr %1, i64 0, i32 10
  %4 = load i32, ptr %3, align 8, !tbaa !126
  %5 = or i32 %4, 2
  store i32 %5, ptr %3, align 8, !tbaa !126
  tail call fastcc void @finalizeControl(ptr noundef %0, ptr noundef %1, float noundef 1.000000e+00) #21
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @negate_v3(ptr nocapture noundef %0) unnamed_addr #2 {
  %2 = load <2 x float>, ptr %0, align 4, !tbaa !5
  %3 = fneg <2 x float> %2
  store <2 x float> %3, ptr %0, align 4, !tbaa !5
  %4 = getelementptr inbounds float, ptr %0, i64 2
  %5 = load float, ptr %4, align 4, !tbaa !5
  %6 = fneg float %5
  store float %6, ptr %4, align 4, !tbaa !5
  ret void
}

; Function Attrs: optsize
declare void @axis_angle_to_quat(ptr noundef, ptr noundef, float noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @mul_v3_fl(ptr nocapture noundef %0, float noundef %1) unnamed_addr #2 {
  %3 = load <2 x float>, ptr %0, align 4, !tbaa !5
  %4 = insertelement <2 x float> poison, float %1, i64 0
  %5 = shufflevector <2 x float> %4, <2 x float> poison, <2 x i32> zeroinitializer
  %6 = fmul <2 x float> %3, %5
  store <2 x float> %6, ptr %0, align 4, !tbaa !5
  %7 = getelementptr inbounds float, ptr %0, i64 2
  %8 = load float, ptr %7, align 4, !tbaa !5
  %9 = fmul float %8, %1
  store float %9, ptr %7, align 4, !tbaa !5
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @add_v3_v3v3(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2) unnamed_addr #2 {
  %4 = load float, ptr %1, align 4, !tbaa !5
  %5 = load float, ptr %2, align 4, !tbaa !5
  %6 = fadd float %4, %5
  store float %6, ptr %0, align 4, !tbaa !5
  %7 = getelementptr inbounds float, ptr %1, i64 1
  %8 = load float, ptr %7, align 4, !tbaa !5
  %9 = getelementptr inbounds float, ptr %2, i64 1
  %10 = load float, ptr %9, align 4, !tbaa !5
  %11 = fadd float %8, %10
  %12 = getelementptr inbounds float, ptr %0, i64 1
  store float %11, ptr %12, align 4, !tbaa !5
  %13 = getelementptr inbounds float, ptr %1, i64 2
  %14 = load float, ptr %13, align 4, !tbaa !5
  %15 = getelementptr inbounds float, ptr %2, i64 2
  %16 = load float, ptr %15, align 4, !tbaa !5
  %17 = fadd float %14, %16
  %18 = getelementptr inbounds float, ptr %0, i64 2
  store float %17, ptr %18, align 4, !tbaa !5
  ret void
}

; Function Attrs: optsize
declare void @copy_qt_qt(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @finalizeControl(ptr nocapture noundef readonly %0, ptr noundef %1, float noundef %2) unnamed_addr #0 {
  %4 = alloca [3 x float], align 4
  %5 = alloca [3 x float], align 4
  %6 = alloca [4 x float], align 16
  %7 = getelementptr inbounds %struct.RigControl, ptr %1, i64 0, i32 10
  %8 = load i32, ptr %7, align 8, !tbaa !126
  %9 = and i32 %8, 3
  %10 = icmp eq i32 %9, 3
  br i1 %10, label %11, label %66

11:                                               ; preds = %3
  %12 = getelementptr inbounds %struct.RigControl, ptr %1, i64 0, i32 11
  %13 = load i32, ptr %12, align 4, !tbaa !129
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %36, label %15

15:                                               ; preds = %11
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %4) #20
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %5) #20
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %6) #20
  switch i32 %13, label %24 [
    i32 1, label %16
    i32 2, label %20
  ]

16:                                               ; preds = %15
  %17 = getelementptr inbounds %struct.RigControl, ptr %1, i64 0, i32 6
  %18 = load ptr, ptr %17, align 8, !tbaa !130
  %19 = getelementptr inbounds %struct.EditBone, ptr %18, i64 0, i32 8
  br label %24

20:                                               ; preds = %15
  %21 = getelementptr inbounds %struct.RigControl, ptr %1, i64 0, i32 6
  %22 = load ptr, ptr %21, align 8, !tbaa !130
  %23 = getelementptr inbounds %struct.EditBone, ptr %22, i64 0, i32 7
  br label %24

24:                                               ; preds = %15, %20, %16
  %25 = phi ptr [ %19, %16 ], [ %23, %20 ], [ null, %15 ]
  %26 = getelementptr inbounds %struct.RigControl, ptr %1, i64 0, i32 4
  %27 = load ptr, ptr %26, align 8, !tbaa !42
  %28 = getelementptr inbounds %struct.EditBone, ptr %27, i64 0, i32 8
  %29 = getelementptr inbounds %struct.EditBone, ptr %27, i64 0, i32 7
  call fastcc void @sub_v3_v3v3(ptr noundef nonnull %4, ptr noundef nonnull %28, ptr noundef nonnull %29) #21
  call fastcc void @sub_v3_v3v3(ptr noundef nonnull %5, ptr noundef %25, ptr noundef nonnull %29) #21
  tail call fastcc void @copy_v3_v3(ptr noundef nonnull %28, ptr noundef %25) #21
  call void @rotation_between_vecs_to_quat(ptr noundef nonnull %6, ptr noundef nonnull %4, ptr noundef nonnull %5) #22
  %30 = getelementptr inbounds %struct.RigControl, ptr %1, i64 0, i32 9
  call void @mul_qt_qtqt(ptr noundef nonnull %30, ptr noundef nonnull %6, ptr noundef nonnull %30) #22
  %31 = call fastcc float @len_v3(ptr noundef nonnull %5) #21
  %32 = getelementptr inbounds %struct.RigControl, ptr %1, i64 0, i32 2
  %33 = getelementptr inbounds %struct.RigControl, ptr %1, i64 0, i32 3
  %34 = call fastcc float @len_v3v3(ptr noundef nonnull %32, ptr noundef nonnull %33) #21
  %35 = fdiv float %31, %34
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %6) #20
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %5) #20
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %4) #20
  br label %36

36:                                               ; preds = %24, %11
  %37 = phi float [ %35, %24 ], [ %2, %11 ]
  %38 = getelementptr inbounds %struct.RigControl, ptr %1, i64 0, i32 4
  %39 = load ptr, ptr %38, align 8, !tbaa !42
  %40 = getelementptr inbounds %struct.RigControl, ptr %1, i64 0, i32 7
  %41 = getelementptr inbounds %struct.RigControl, ptr %1, i64 0, i32 9
  %42 = call float @rollBoneByQuat(ptr noundef %39, ptr noundef nonnull %40, ptr noundef nonnull %41) #21
  %43 = load ptr, ptr %38, align 8, !tbaa !42
  %44 = getelementptr inbounds %struct.EditBone, ptr %43, i64 0, i32 6
  store float %42, ptr %44, align 8, !tbaa !143
  %45 = getelementptr inbounds %struct.RigGraph, ptr %0, i64 0, i32 8
  %46 = load ptr, ptr %45, align 8, !tbaa !16
  %47 = icmp eq ptr %46, null
  br i1 %47, label %66, label %48

48:                                               ; preds = %36, %63
  %49 = phi ptr [ %64, %63 ], [ %46, %36 ]
  %50 = getelementptr inbounds %struct.RigControl, ptr %49, i64 0, i32 5
  %51 = load ptr, ptr %50, align 8, !tbaa !40
  %52 = load ptr, ptr %38, align 8, !tbaa !42
  %53 = icmp eq ptr %51, %52
  br i1 %53, label %54, label %57

54:                                               ; preds = %48
  %55 = getelementptr inbounds %struct.EditBone, ptr %51, i64 0, i32 7
  call fastcc void @repositionControl(ptr noundef %0, ptr noundef nonnull %49, ptr noundef nonnull %55, ptr noundef nonnull %41, float noundef %37) #21
  %56 = load ptr, ptr %38, align 8, !tbaa !42
  br label %57

57:                                               ; preds = %54, %48
  %58 = phi ptr [ %56, %54 ], [ %52, %48 ]
  %59 = getelementptr inbounds %struct.RigControl, ptr %49, i64 0, i32 6
  %60 = load ptr, ptr %59, align 8, !tbaa !130
  %61 = icmp eq ptr %60, %58
  br i1 %61, label %62, label %63

62:                                               ; preds = %57
  call fastcc void @repositionTailControl(ptr noundef %0, ptr noundef nonnull %49) #21
  br label %63

63:                                               ; preds = %57, %62
  %64 = load ptr, ptr %49, align 8, !tbaa !16
  %65 = icmp eq ptr %64, null
  br i1 %65, label %66, label %48, !llvm.loop !187

66:                                               ; preds = %63, %36, %3
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fabs.f32(float) #12

; Function Attrs: optsize
declare void @initArcIterator(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare ptr @IT_peek(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc noundef ptr @solveJoints(ptr noundef %0, ptr noundef %1, ptr nocapture noundef readonly %2, i32 noundef %3, i32 noundef %4, i32 noundef %5, ptr nocapture noundef readonly %6, i32 noundef %7) unnamed_addr #0 {
  %9 = tail call fastcc i32 @indexMemoNode(i32 noundef %3, i32 noundef %4, i32 noundef %5, i32 noundef %7) #21
  %10 = sext i32 %9 to i64
  %11 = getelementptr inbounds %struct.MemoNode, ptr %0, i64 %10
  %12 = load float, ptr %11, align 4, !tbaa !188
  %13 = fcmp une float %12, 0.000000e+00
  br i1 %13, label %68, label %14

14:                                               ; preds = %8
  %15 = icmp eq i32 %7, 0
  %16 = sext i32 %4 to i64
  %17 = getelementptr inbounds ptr, ptr %2, i64 %16
  %18 = load ptr, ptr %17, align 8, !tbaa !16
  %19 = sext i32 %5 to i64
  %20 = getelementptr inbounds ptr, ptr %2, i64 %19
  %21 = load ptr, ptr %20, align 8, !tbaa !16
  br i1 %15, label %22, label %30

22:                                               ; preds = %14
  %23 = sext i32 %3 to i64
  %24 = getelementptr ptr, ptr %2, i64 %23
  %25 = getelementptr ptr, ptr %24, i64 1
  %26 = load ptr, ptr %25, align 8, !tbaa !16
  %27 = getelementptr inbounds %struct.BArcIterator, ptr %1, i64 0, i32 10
  %28 = load i32, ptr %27, align 4, !tbaa !190
  %29 = tail call fastcc float @calcCostAngleLengthDistance(ptr noundef %1, ptr noundef %6, ptr noundef %18, ptr noundef %21, ptr noundef %26, i32 noundef %5, i32 noundef %28) #21
  store float %29, ptr %11, align 4, !tbaa !188
  br label %68

30:                                               ; preds = %14
  %31 = add nsw i32 %7, -1
  %32 = sub nsw i32 %3, %31
  %33 = icmp sgt i32 %32, %5
  br i1 %33, label %34, label %67

34:                                               ; preds = %30
  %35 = sext i32 %32 to i64
  br label %36

36:                                               ; preds = %34, %58
  %37 = phi i64 [ %19, %34 ], [ %41, %58 ]
  %38 = phi i32 [ 0, %34 ], [ %61, %58 ]
  %39 = phi float [ 0.000000e+00, %34 ], [ %60, %58 ]
  %40 = phi ptr [ null, %34 ], [ %59, %58 ]
  %41 = add nsw i64 %37, 1
  %42 = getelementptr inbounds ptr, ptr %2, i64 %41
  %43 = load ptr, ptr %42, align 8, !tbaa !16
  %44 = trunc i64 %41 to i32
  %45 = tail call fastcc float @calcCostAngleLengthDistance(ptr noundef %1, ptr noundef %6, ptr noundef %18, ptr noundef %21, ptr noundef %43, i32 noundef %5, i32 noundef %44) #21
  %46 = fcmp ult float %45, 0x47EFFFFFE0000000
  br i1 %46, label %47, label %58

47:                                               ; preds = %36
  %48 = load ptr, ptr %6, align 8, !tbaa !95
  %49 = tail call fastcc ptr @solveJoints(ptr noundef %0, ptr noundef %1, ptr noundef nonnull %2, i32 noundef %3, i32 noundef %5, i32 noundef %44, ptr noundef %48, i32 noundef %31) #21
  %50 = load float, ptr %49, align 4, !tbaa !188
  %51 = fadd float %45, %50
  %52 = icmp eq ptr %40, null
  %53 = fcmp olt float %51, %39
  %54 = select i1 %52, i1 true, i1 %53
  %55 = select i1 %54, ptr %49, ptr %40
  %56 = select i1 %54, float %51, float %39
  %57 = select i1 %54, i32 %44, i32 %38
  br label %58

58:                                               ; preds = %36, %47
  %59 = phi ptr [ %55, %47 ], [ %40, %36 ]
  %60 = phi float [ %56, %47 ], [ %39, %36 ]
  %61 = phi i32 [ %57, %47 ], [ %38, %36 ]
  %62 = icmp eq i64 %41, %35
  br i1 %62, label %63, label %36, !llvm.loop !192

63:                                               ; preds = %58
  %64 = icmp eq ptr %59, null
  br i1 %64, label %67, label %65

65:                                               ; preds = %63
  store float %60, ptr %11, align 4, !tbaa !188
  %66 = getelementptr inbounds %struct.MemoNode, ptr %0, i64 %10, i32 1
  store i32 %61, ptr %66, align 4, !tbaa !193
  br label %68

67:                                               ; preds = %30, %63
  store float 0x47EFFFFFE0000000, ptr %11, align 4, !tbaa !188
  br label %68

68:                                               ; preds = %65, %67, %8, %22
  ret ptr %11
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(argmem: readwrite) uwtable
define internal fastcc void @copyMemoPositions(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1, i32 noundef %2, i32 noundef %3) unnamed_addr #16 {
  %5 = icmp sgt i32 %3, 0
  br i1 %5, label %6, label %21

6:                                                ; preds = %4
  %7 = zext nneg i32 %3 to i64
  br label %8

8:                                                ; preds = %6, %8
  %9 = phi i64 [ 0, %6 ], [ %19, %8 ]
  %10 = phi i32 [ %3, %6 ], [ %18, %8 ]
  %11 = phi i32 [ 0, %6 ], [ %16, %8 ]
  %12 = phi i32 [ 0, %6 ], [ %11, %8 ]
  %13 = tail call fastcc i32 @indexMemoNode(i32 noundef %2, i32 noundef %12, i32 noundef %11, i32 noundef %10) #21
  %14 = sext i32 %13 to i64
  %15 = getelementptr inbounds %struct.MemoNode, ptr %1, i64 %14, i32 1
  %16 = load i32, ptr %15, align 4, !tbaa !193
  %17 = getelementptr inbounds i32, ptr %0, i64 %9
  store i32 %16, ptr %17, align 4, !tbaa !149
  %18 = add nsw i32 %10, -1
  %19 = add nuw nsw i64 %9, 1
  %20 = icmp eq i64 %19, %7
  br i1 %20, label %21, label %8, !llvm.loop !194

21:                                               ; preds = %8, %4
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define internal fastcc i32 @indexMemoNode(i32 noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3) unnamed_addr #17 {
  %5 = mul nsw i32 %3, %0
  %6 = add i32 %5, %2
  %7 = mul i32 %6, %0
  %8 = add nsw i32 %7, %1
  ret i32 %8
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc float @calcCostAngleLengthDistance(ptr noundef %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2, ptr nocapture noundef readonly %3, ptr nocapture noundef readonly %4, i32 noundef %5, i32 noundef %6) unnamed_addr #0 {
  %8 = alloca [3 x float], align 4
  %9 = alloca [3 x float], align 4
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %8) #20
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %9) #20
  call fastcc void @sub_v3_v3v3(ptr noundef nonnull %8, ptr noundef %4, ptr noundef %3) #21
  %10 = call fastcc float @normalize_v3(ptr noundef nonnull %8) #21
  %11 = getelementptr inbounds %struct.RigEdge, ptr %1, i64 0, i32 1
  %12 = load ptr, ptr %11, align 8, !tbaa !99
  %13 = icmp eq ptr %12, null
  br i1 %13, label %21, label %14

14:                                               ; preds = %7
  call fastcc void @sub_v3_v3v3(ptr noundef nonnull %9, ptr noundef %3, ptr noundef %2) #21
  %15 = call fastcc float @normalize_v3(ptr noundef nonnull %9) #21
  %16 = load ptr, ptr %11, align 8, !tbaa !99
  %17 = getelementptr inbounds %struct.RigEdge, ptr %16, i64 0, i32 5
  %18 = load float, ptr %17, align 4, !tbaa !30
  %19 = call fastcc float @costAngle(float noundef %18, ptr noundef nonnull %9, ptr noundef nonnull %8) #21
  %20 = fadd float %19, 0.000000e+00
  br label %21

21:                                               ; preds = %14, %7
  %22 = phi float [ %20, %14 ], [ 0.000000e+00, %7 ]
  %23 = getelementptr inbounds %struct.RigEdge, ptr %1, i64 0, i32 4
  %24 = load float, ptr %23, align 8, !tbaa !29
  %25 = tail call fastcc float @costLength(float noundef %24, float noundef %10) #21
  %26 = fadd float %22, %25
  %27 = tail call fastcc float @costDistance(ptr noundef %0, ptr noundef %3, ptr noundef %4, i32 noundef %5, i32 noundef %6) #21
  %28 = fadd float %26, %27
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %9) #20
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %8) #20
  ret float %28
}

; Function Attrs: mustprogress nofree noinline nounwind optsize willreturn memory(write, argmem: readwrite) uwtable
define internal fastcc float @costAngle(float noundef %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2) unnamed_addr #9 {
  %4 = tail call fastcc zeroext i8 @is_zero_v3(ptr noundef %1) #21, !range !127
  %5 = icmp eq i8 %4, 0
  br i1 %5, label %6, label %14

6:                                                ; preds = %3
  %7 = tail call fastcc zeroext i8 @is_zero_v3(ptr noundef %2) #21, !range !127
  %8 = icmp eq i8 %7, 0
  br i1 %8, label %9, label %14

9:                                                ; preds = %6
  %10 = tail call fastcc float @dot_v3v3(ptr noundef %1, ptr noundef %2) #21
  %11 = tail call fastcc float @saacos(float noundef %10) #21
  %12 = fsub float %11, %0
  %13 = tail call float @llvm.fabs.f32(float %12)
  br label %14

14:                                               ; preds = %9, %6, %3
  %15 = phi float [ %13, %9 ], [ 0x400921FB60000000, %6 ], [ 0x400921FB60000000, %3 ]
  ret float %15
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define internal fastcc noundef float @costLength(float noundef %0, float noundef %1) unnamed_addr #17 {
  %3 = fcmp oeq float %1, 0.000000e+00
  %4 = fsub float %1, %0
  %5 = fdiv float %4, %0
  %6 = fmul float %5, %5
  %7 = select i1 %3, float 0x47EFFFFFE0000000, float %6
  ret float %7
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc float @costDistance(ptr noundef %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2, i32 noundef %3, i32 noundef %4) unnamed_addr #0 {
  %6 = alloca [3 x float], align 4
  %7 = alloca [3 x float], align 4
  %8 = alloca [3 x float], align 4
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %6) #20
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %7) #20
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %8) #20
  call fastcc void @sub_v3_v3v3(ptr noundef nonnull %6, ptr noundef %1, ptr noundef %2) #21
  %9 = call fastcc float @dot_v3v3(ptr noundef nonnull %6, ptr noundef nonnull %6) #21
  %10 = fcmp ogt float %9, 0.000000e+00
  br i1 %10, label %11, label %26

11:                                               ; preds = %5
  %12 = add nsw i32 %4, -1
  %13 = add nsw i32 %3, 1
  %14 = icmp slt i32 %13, %12
  br i1 %14, label %15, label %26

15:                                               ; preds = %11, %15
  %16 = phi i32 [ %24, %15 ], [ %13, %11 ]
  %17 = phi float [ %23, %15 ], [ 0.000000e+00, %11 ]
  %18 = tail call ptr @IT_peek(ptr noundef %0, i32 noundef %16) #22
  %19 = getelementptr inbounds %struct.EmbedBucket, ptr %18, i64 0, i32 2
  call fastcc void @sub_v3_v3v3(ptr noundef nonnull %7, ptr noundef nonnull %19, ptr noundef %2) #21
  call fastcc void @cross_v3_v3v3(ptr noundef nonnull %8, ptr noundef nonnull %6, ptr noundef nonnull %7) #21
  %20 = call fastcc float @dot_v3v3(ptr noundef nonnull %8, ptr noundef nonnull %8) #21
  %21 = fdiv float %20, %9
  %22 = fcmp ogt float %21, %17
  %23 = select i1 %22, float %21, float %17
  %24 = add i32 %16, 1
  %25 = icmp eq i32 %24, %12
  br i1 %25, label %26, label %15, !llvm.loop !195

26:                                               ; preds = %15, %11, %5
  %27 = phi float [ 0x47EFFFFFE0000000, %5 ], [ 0.000000e+00, %11 ], [ %23, %15 ]
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %8) #20
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %7) #20
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %6) #20
  ret float %27
}

; Function Attrs: mustprogress nofree noinline nounwind optsize willreturn memory(write) uwtable
define internal fastcc float @saacos(float noundef %0) unnamed_addr #18 {
  %2 = fcmp ugt float %0, -1.000000e+00
  br i1 %2, label %3, label %7

3:                                                ; preds = %1
  %4 = fcmp ult float %0, 1.000000e+00
  br i1 %4, label %5, label %7

5:                                                ; preds = %3
  %6 = tail call float @acosf(float noundef %0) #22
  br label %7

7:                                                ; preds = %3, %1, %5
  %8 = phi float [ %6, %5 ], [ 0x400921FB60000000, %1 ], [ 0.000000e+00, %3 ]
  ret float %8
}

; Function Attrs: mustprogress nofree nounwind optsize willreturn memory(write)
declare float @acosf(float noundef) local_unnamed_addr #10

; Function Attrs: optsize
declare ptr @IT_next(ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare void @BIF_flagMultiArcs(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @matchMultiResolutionStartingNode(ptr noundef %0, ptr nocapture noundef readonly %1, ptr noundef %2) unnamed_addr #0 {
  %4 = getelementptr inbounds %struct.ReebGraph, ptr %1, i64 0, i32 1
  %5 = load ptr, ptr %4, align 8, !tbaa !196
  %6 = tail call i32 @BLI_subtreeShape(ptr noundef %0, ptr noundef %2, ptr noundef null, i32 noundef 0) #22
  %7 = srem i32 %6, 100
  %8 = getelementptr inbounds %struct.RigGraph, ptr %0, i64 0, i32 11
  %9 = load ptr, ptr %8, align 8, !tbaa !15
  %10 = tail call i32 @BLI_subtreeShape(ptr noundef %9, ptr noundef %5, ptr noundef null, i32 noundef 0) #22
  %11 = srem i32 %10, 100
  %12 = icmp eq i32 %7, %11
  br i1 %12, label %28, label %13

13:                                               ; preds = %3
  %14 = getelementptr inbounds %struct.ReebGraph, ptr %1, i64 0, i32 11
  %15 = load ptr, ptr %14, align 8, !tbaa !198
  %16 = icmp eq ptr %15, null
  br i1 %16, label %28, label %21

17:                                               ; preds = %21
  %18 = getelementptr inbounds %struct.ReebGraph, ptr %22, i64 0, i32 11
  %19 = load ptr, ptr %18, align 8, !tbaa !198
  %20 = icmp eq ptr %19, null
  br i1 %20, label %28, label %21, !llvm.loop !199

21:                                               ; preds = %13, %17
  %22 = phi ptr [ %19, %17 ], [ %15, %13 ]
  %23 = getelementptr inbounds %struct.ReebGraph, ptr %22, i64 0, i32 1
  %24 = load ptr, ptr %23, align 8, !tbaa !196
  %25 = tail call i32 @BLI_subtreeShape(ptr noundef nonnull %22, ptr noundef %24, ptr noundef null, i32 noundef 0) #22
  %26 = srem i32 %25, 100
  %27 = icmp eq i32 %7, %26
  br i1 %27, label %28, label %17, !llvm.loop !199

28:                                               ; preds = %21, %17, %13, %3
  %29 = phi ptr [ %5, %3 ], [ %5, %13 ], [ %24, %17 ], [ %24, %21 ]
  %30 = getelementptr inbounds %struct.RigNode, ptr %2, i64 0, i32 10
  store ptr %29, ptr %30, align 8, !tbaa !141
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @retargetSubgraph(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) unnamed_addr #0 {
  %5 = icmp eq ptr %2, null
  br i1 %5, label %13, label %6

6:                                                ; preds = %4
  %7 = getelementptr inbounds %struct.RigNode, ptr %3, i64 0, i32 10
  %8 = load ptr, ptr %7, align 8, !tbaa !141
  %9 = getelementptr inbounds %struct.RigArc, ptr %2, i64 0, i32 11
  %10 = load ptr, ptr %9, align 8, !tbaa !137
  tail call fastcc void @retargetArctoArc(ptr noundef %0, ptr noundef %1, ptr noundef nonnull %2, ptr noundef %3) #21
  %11 = tail call ptr @BIF_otherNodeFromIndex(ptr noundef %10, ptr noundef %8) #22
  %12 = tail call ptr @BLI_otherNode(ptr noundef nonnull %2, ptr noundef %3) #22
  tail call fastcc void @matchMultiResolutionNode(ptr noundef %1, ptr noundef %12, ptr noundef %11) #21
  br label %13

13:                                               ; preds = %6, %4
  %14 = phi ptr [ %12, %6 ], [ %3, %4 ]
  %15 = getelementptr inbounds %struct.RigNode, ptr %14, i64 0, i32 4
  %16 = load i32, ptr %15, align 8, !tbaa !36
  %17 = icmp sgt i32 %16, 0
  br i1 %17, label %18, label %36

18:                                               ; preds = %13
  %19 = getelementptr inbounds %struct.RigNode, ptr %14, i64 0, i32 5
  br label %20

20:                                               ; preds = %18, %31
  %21 = phi i64 [ 0, %18 ], [ %32, %31 ]
  %22 = load ptr, ptr %19, align 8, !tbaa !177
  %23 = getelementptr inbounds ptr, ptr %22, i64 %21
  %24 = load ptr, ptr %23, align 8, !tbaa !16
  %25 = icmp eq ptr %24, %2
  br i1 %25, label %31, label %26

26:                                               ; preds = %20
  tail call fastcc void @findCorrespondingArc(ptr noundef %1, ptr noundef nonnull %14, ptr noundef %24, i32 noundef 1) #21
  %27 = getelementptr inbounds %struct.RigArc, ptr %24, i64 0, i32 11
  %28 = load ptr, ptr %27, align 8, !tbaa !137
  %29 = icmp eq ptr %28, null
  br i1 %29, label %31, label %30

30:                                               ; preds = %26
  tail call fastcc void @retargetSubgraph(ptr noundef %0, ptr noundef %1, ptr noundef nonnull %24, ptr noundef nonnull %14) #21
  br label %31

31:                                               ; preds = %26, %30, %20
  %32 = add nuw nsw i64 %21, 1
  %33 = load i32, ptr %15, align 8, !tbaa !36
  %34 = sext i32 %33 to i64
  %35 = icmp slt i64 %32, %34
  br i1 %35, label %20, label %36, !llvm.loop !200

36:                                               ; preds = %31, %13
  ret void
}

; Function Attrs: optsize
declare void @ED_armature_from_edit(ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare i32 @BLI_subtreeShape(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare ptr @BIF_otherNodeFromIndex(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare ptr @BLI_otherNode(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @matchMultiResolutionNode(ptr noundef %0, ptr noundef %1, ptr noundef %2) unnamed_addr #0 {
  %4 = getelementptr inbounds %struct.RigGraph, ptr %0, i64 0, i32 11
  %5 = load ptr, ptr %4, align 8, !tbaa !15
  %6 = tail call ptr @BIF_graphForMultiNode(ptr noundef %5, ptr noundef %2) #22
  %7 = tail call i32 @BLI_subtreeShape(ptr noundef %0, ptr noundef %1, ptr noundef null, i32 noundef 0) #22
  %8 = srem i32 %7, 100
  %9 = tail call i32 @BLI_subtreeShape(ptr noundef %6, ptr noundef %2, ptr noundef null, i32 noundef 0) #22
  %10 = getelementptr inbounds %struct.RigNode, ptr %1, i64 0, i32 10
  store ptr %2, ptr %10, align 8, !tbaa !141
  %11 = srem i32 %9, 100
  %12 = icmp eq i32 %8, %11
  br i1 %12, label %13, label %24

13:                                               ; preds = %3, %18
  %14 = phi ptr [ %16, %18 ], [ %2, %3 ]
  %15 = getelementptr inbounds %struct.ReebNode, ptr %14, i64 0, i32 14
  %16 = load ptr, ptr %15, align 8, !tbaa !201
  %17 = icmp eq ptr %16, null
  br i1 %17, label %24, label %18

18:                                               ; preds = %13
  store ptr %14, ptr %10, align 8, !tbaa !141
  %19 = load ptr, ptr %4, align 8, !tbaa !15
  %20 = tail call ptr @BIF_graphForMultiNode(ptr noundef %19, ptr noundef nonnull %16) #22
  %21 = tail call i32 @BLI_subtreeShape(ptr noundef %20, ptr noundef nonnull %16, ptr noundef null, i32 noundef 0) #22
  %22 = srem i32 %21, 100
  %23 = icmp eq i32 %8, %22
  br i1 %23, label %13, label %24, !llvm.loop !203

24:                                               ; preds = %13, %18, %3
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @findCorrespondingArc(ptr noundef %0, ptr noundef %1, ptr noundef %2, i32 noundef %3) unnamed_addr #0 {
  %5 = getelementptr inbounds %struct.RigNode, ptr %1, i64 0, i32 10
  %6 = load ptr, ptr %5, align 8, !tbaa !141
  %7 = getelementptr inbounds %struct.RigArc, ptr %2, i64 0, i32 6
  %8 = load i32, ptr %7, align 8, !tbaa !32
  %9 = getelementptr inbounds %struct.RigArc, ptr %2, i64 0, i32 7
  %10 = load i32, ptr %9, align 4, !tbaa !34
  %11 = getelementptr inbounds %struct.RigArc, ptr %2, i64 0, i32 8
  %12 = load i32, ptr %11, align 8, !tbaa !33
  %13 = getelementptr inbounds %struct.RigArc, ptr %2, i64 0, i32 11
  store ptr null, ptr %13, align 8, !tbaa !137
  %14 = getelementptr inbounds %struct.ReebNode, ptr %6, i64 0, i32 4
  %15 = load i32, ptr %14, align 8, !tbaa !204
  %16 = icmp sgt i32 %15, 0
  br i1 %16, label %17, label %46

17:                                               ; preds = %4
  %18 = getelementptr inbounds %struct.ReebNode, ptr %6, i64 0, i32 5
  %19 = load ptr, ptr %18, align 8, !tbaa !205
  %20 = zext nneg i32 %15 to i64
  br label %21

21:                                               ; preds = %17, %40
  %22 = phi i64 [ 0, %17 ], [ %41, %40 ]
  %23 = getelementptr inbounds ptr, ptr %19, i64 %22
  %24 = load ptr, ptr %23, align 8, !tbaa !16
  %25 = getelementptr inbounds %struct.ReebArc, ptr %24, i64 0, i32 4
  %26 = load i32, ptr %25, align 8, !tbaa !206
  %27 = icmp eq i32 %26, 0
  br i1 %27, label %28, label %40

28:                                               ; preds = %21
  %29 = getelementptr inbounds %struct.ReebArc, ptr %24, i64 0, i32 8
  %30 = load i32, ptr %29, align 8, !tbaa !207
  %31 = icmp eq i32 %30, %12
  br i1 %31, label %32, label %40

32:                                               ; preds = %28
  %33 = getelementptr inbounds %struct.ReebArc, ptr %24, i64 0, i32 7
  %34 = load i32, ptr %33, align 4, !tbaa !208
  %35 = icmp eq i32 %34, %10
  br i1 %35, label %36, label %40

36:                                               ; preds = %32
  %37 = getelementptr inbounds %struct.ReebArc, ptr %24, i64 0, i32 6
  %38 = load i32, ptr %37, align 8, !tbaa !209
  %39 = icmp eq i32 %38, %8
  br i1 %39, label %43, label %40

40:                                               ; preds = %21, %28, %32, %36
  %41 = add nuw nsw i64 %22, 1
  %42 = icmp eq i64 %41, %20
  br i1 %42, label %46, label %21, !llvm.loop !210

43:                                               ; preds = %36
  tail call fastcc void @matchMultiResolutionArc(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef nonnull %24) #21
  %44 = load ptr, ptr %13, align 8, !tbaa !137
  %45 = icmp eq ptr %44, null
  br i1 %45, label %46, label %51

46:                                               ; preds = %40, %4, %43
  %47 = getelementptr inbounds %struct.ReebNode, ptr %6, i64 0, i32 15
  %48 = load ptr, ptr %47, align 8, !tbaa !211
  %49 = icmp eq ptr %48, null
  br i1 %49, label %51, label %50

50:                                               ; preds = %46
  store ptr %48, ptr %5, align 8, !tbaa !141
  tail call fastcc void @findCorrespondingArc(ptr noundef %0, ptr noundef %1, ptr noundef nonnull %2, i32 noundef 0) #21
  br label %51

51:                                               ; preds = %46, %50, %43
  %52 = icmp eq i32 %3, 0
  br i1 %52, label %78, label %53

53:                                               ; preds = %51
  %54 = load ptr, ptr %13, align 8, !tbaa !137
  %55 = icmp eq ptr %54, null
  br i1 %55, label %56, label %78

56:                                               ; preds = %53
  store ptr %6, ptr %5, align 8, !tbaa !141
  %57 = load i32, ptr %14, align 8, !tbaa !204
  %58 = icmp sgt i32 %57, 0
  br i1 %58, label %59, label %78

59:                                               ; preds = %56
  %60 = getelementptr inbounds %struct.ReebNode, ptr %6, i64 0, i32 5
  %61 = load ptr, ptr %60, align 8, !tbaa !205
  %62 = zext nneg i32 %57 to i64
  br label %63

63:                                               ; preds = %59, %75
  %64 = phi i64 [ 0, %59 ], [ %76, %75 ]
  %65 = getelementptr inbounds ptr, ptr %61, i64 %64
  %66 = load ptr, ptr %65, align 8, !tbaa !16
  %67 = getelementptr inbounds %struct.ReebArc, ptr %66, i64 0, i32 4
  %68 = load i32, ptr %67, align 8, !tbaa !206
  %69 = icmp eq i32 %68, 0
  br i1 %69, label %70, label %75

70:                                               ; preds = %63
  %71 = getelementptr inbounds %struct.ReebArc, ptr %66, i64 0, i32 6
  %72 = load i32, ptr %71, align 8, !tbaa !209
  %73 = icmp eq i32 %72, %8
  br i1 %73, label %74, label %75

74:                                               ; preds = %70
  tail call fastcc void @matchMultiResolutionArc(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef nonnull %66) #21
  br label %78

75:                                               ; preds = %63, %70
  %76 = add nuw nsw i64 %64, 1
  %77 = icmp eq i64 %76, %62
  br i1 %77, label %78, label %63, !llvm.loop !212

78:                                               ; preds = %75, %56, %74, %53, %51
  ret void
}

; Function Attrs: optsize
declare ptr @BIF_graphForMultiNode(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @matchMultiResolutionArc(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) unnamed_addr #0 {
  %5 = getelementptr inbounds %struct.ReebArc, ptr %3, i64 0, i32 2
  %6 = load ptr, ptr %5, align 8, !tbaa !140
  %7 = getelementptr inbounds %struct.RigGraph, ptr %0, i64 0, i32 11
  %8 = load ptr, ptr %7, align 8, !tbaa !15
  %9 = tail call ptr @BIF_graphForMultiNode(ptr noundef %8, ptr noundef %6) #22
  %10 = tail call i32 @BLI_subtreeShape(ptr noundef %0, ptr noundef %1, ptr noundef %2, i32 noundef 1) #22
  %11 = srem i32 %10, 100
  %12 = tail call i32 @BLI_subtreeShape(ptr noundef %9, ptr noundef %6, ptr noundef %3, i32 noundef 1) #22
  %13 = srem i32 %12, 100
  %14 = icmp eq i32 %11, %13
  br i1 %14, label %30, label %15

15:                                               ; preds = %4, %21
  %16 = phi ptr [ %19, %21 ], [ %3, %4 ]
  %17 = phi ptr [ %24, %21 ], [ %9, %4 ]
  %18 = getelementptr inbounds %struct.ReebArc, ptr %16, i64 0, i32 14
  %19 = load ptr, ptr %18, align 8, !tbaa !213
  %20 = icmp eq ptr %19, null
  br i1 %20, label %30, label %21

21:                                               ; preds = %15
  %22 = getelementptr inbounds %struct.ReebArc, ptr %16, i64 0, i32 4
  store i32 1, ptr %22, align 8, !tbaa !206
  %23 = getelementptr inbounds %struct.ReebGraph, ptr %17, i64 0, i32 11
  %24 = load ptr, ptr %23, align 8, !tbaa !198
  %25 = getelementptr inbounds %struct.ReebArc, ptr %19, i64 0, i32 2
  %26 = load ptr, ptr %25, align 8, !tbaa !140
  %27 = tail call i32 @BLI_subtreeShape(ptr noundef %24, ptr noundef %26, ptr noundef nonnull %19, i32 noundef 1) #22
  %28 = srem i32 %27, 100
  %29 = icmp eq i32 %11, %28
  br i1 %29, label %30, label %15, !llvm.loop !214

30:                                               ; preds = %15, %21, %4
  %31 = phi ptr [ %3, %4 ], [ %19, %21 ], [ %16, %15 ]
  %32 = getelementptr inbounds %struct.ReebArc, ptr %31, i64 0, i32 4
  store i32 2, ptr %32, align 8, !tbaa !206
  %33 = getelementptr inbounds %struct.RigArc, ptr %2, i64 0, i32 11
  store ptr %31, ptr %33, align 8, !tbaa !137
  tail call fastcc void @markMultiResolutionArc(ptr noundef nonnull %31) #21
  ret void
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @markMultiResolutionArc(ptr nocapture noundef readonly %0) unnamed_addr #14 {
  %2 = getelementptr inbounds %struct.ReebArc, ptr %0, i64 0, i32 14
  %3 = load ptr, ptr %2, align 8, !tbaa !213
  %4 = icmp eq ptr %3, null
  br i1 %4, label %23, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.ReebArc, ptr %0, i64 0, i32 3
  br label %7

7:                                                ; preds = %5, %19
  %8 = phi ptr [ %3, %5 ], [ %21, %19 ]
  %9 = getelementptr inbounds %struct.ReebArc, ptr %8, i64 0, i32 4
  store i32 1, ptr %9, align 8, !tbaa !206
  %10 = getelementptr inbounds %struct.ReebArc, ptr %8, i64 0, i32 3
  %11 = load ptr, ptr %10, align 8, !tbaa !138
  %12 = getelementptr inbounds %struct.ReebNode, ptr %11, i64 0, i32 11
  %13 = load i32, ptr %12, align 4, !tbaa !215
  %14 = load ptr, ptr %6, align 8, !tbaa !138
  %15 = getelementptr inbounds %struct.ReebNode, ptr %14, i64 0, i32 11
  %16 = load i32, ptr %15, align 4, !tbaa !215
  %17 = icmp eq i32 %13, %16
  br i1 %17, label %19, label %18

18:                                               ; preds = %7
  tail call fastcc void @markMultiResolutionChildArc(ptr noundef nonnull %11, ptr noundef nonnull %11) #21
  br label %19

19:                                               ; preds = %7, %18
  %20 = getelementptr inbounds %struct.ReebArc, ptr %8, i64 0, i32 14
  %21 = load ptr, ptr %20, align 8, !tbaa !213
  %22 = icmp eq ptr %21, null
  br i1 %22, label %23, label %7, !llvm.loop !216

23:                                               ; preds = %19, %1
  ret void
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @markMultiResolutionChildArc(ptr noundef readnone %0, ptr nocapture noundef readonly %1) unnamed_addr #14 {
  %3 = getelementptr inbounds %struct.ReebNode, ptr %1, i64 0, i32 4
  %4 = load i32, ptr %3, align 8, !tbaa !204
  br label %5

5:                                                ; preds = %23, %2
  %6 = phi i32 [ %4, %2 ], [ %28, %23 ]
  %7 = phi ptr [ %1, %2 ], [ %26, %23 ]
  %8 = icmp sgt i32 %6, 0
  br i1 %8, label %9, label %32

9:                                                ; preds = %5
  %10 = getelementptr inbounds %struct.ReebNode, ptr %7, i64 0, i32 5
  %11 = load ptr, ptr %10, align 8, !tbaa !205
  %12 = zext nneg i32 %6 to i64
  br label %16

13:                                               ; preds = %16
  %14 = add nuw nsw i64 %17, 1
  %15 = icmp eq i64 %14, %12
  br i1 %15, label %32, label %16, !llvm.loop !217

16:                                               ; preds = %9, %13
  %17 = phi i64 [ 0, %9 ], [ %14, %13 ]
  %18 = getelementptr inbounds ptr, ptr %11, i64 %17
  %19 = load ptr, ptr %18, align 8, !tbaa !16
  %20 = getelementptr inbounds %struct.ReebArc, ptr %19, i64 0, i32 4
  %21 = load i32, ptr %20, align 8, !tbaa !206
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %23, label %13

23:                                               ; preds = %16
  %24 = getelementptr inbounds %struct.ReebArc, ptr %19, i64 0, i32 4
  store i32 1, ptr %24, align 8, !tbaa !206
  %25 = getelementptr inbounds %struct.ReebArc, ptr %19, i64 0, i32 3
  %26 = load ptr, ptr %25, align 8, !tbaa !138
  %27 = getelementptr inbounds %struct.ReebNode, ptr %26, i64 0, i32 4
  %28 = load i32, ptr %27, align 8, !tbaa !204
  %29 = icmp slt i32 %28, 2
  %30 = icmp eq ptr %26, %0
  %31 = or i1 %30, %29
  br i1 %31, label %32, label %5

32:                                               ; preds = %23, %5, %13
  ret void
}

; Function Attrs: optsize
declare ptr @BLI_ghash_ptr_new(ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare void @preEditBoneDuplicate(ptr noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @cloneArc(ptr noundef %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2, ptr noundef %3, ptr noundef %4, ptr noundef %5) unnamed_addr #0 {
  %7 = alloca [64 x i8], align 16
  %8 = tail call fastcc ptr @newRigArc(ptr noundef %0) #21
  %9 = getelementptr inbounds %struct.RigArc, ptr %2, i64 0, i32 2
  %10 = load ptr, ptr %9, align 8, !tbaa !27
  %11 = tail call ptr @BLI_ghash_lookup(ptr noundef %3, ptr noundef %10) #22
  %12 = getelementptr inbounds %struct.RigArc, ptr %8, i64 0, i32 2
  store ptr %11, ptr %12, align 8, !tbaa !27
  %13 = getelementptr inbounds %struct.RigArc, ptr %2, i64 0, i32 3
  %14 = load ptr, ptr %13, align 8, !tbaa !35
  %15 = tail call ptr @BLI_ghash_lookup(ptr noundef %3, ptr noundef %14) #22
  %16 = getelementptr inbounds %struct.RigArc, ptr %8, i64 0, i32 3
  store ptr %15, ptr %16, align 8, !tbaa !35
  %17 = load ptr, ptr %12, align 8, !tbaa !27
  %18 = getelementptr inbounds %struct.RigNode, ptr %17, i64 0, i32 4
  %19 = load i32, ptr %18, align 8, !tbaa !36
  %20 = add nsw i32 %19, 1
  store i32 %20, ptr %18, align 8, !tbaa !36
  %21 = getelementptr inbounds %struct.RigNode, ptr %15, i64 0, i32 4
  %22 = load i32, ptr %21, align 8, !tbaa !36
  %23 = add nsw i32 %22, 1
  store i32 %23, ptr %21, align 8, !tbaa !36
  %24 = getelementptr inbounds %struct.RigArc, ptr %2, i64 0, i32 5
  %25 = load float, ptr %24, align 4, !tbaa !156
  %26 = getelementptr inbounds %struct.RigArc, ptr %8, i64 0, i32 5
  store float %25, ptr %26, align 4, !tbaa !156
  %27 = getelementptr inbounds %struct.RigArc, ptr %2, i64 0, i32 10
  %28 = load i32, ptr %27, align 8, !tbaa !148
  %29 = getelementptr inbounds %struct.RigArc, ptr %8, i64 0, i32 10
  store i32 %28, ptr %29, align 8, !tbaa !148
  %30 = getelementptr inbounds %struct.RigArc, ptr %2, i64 0, i32 9
  %31 = load ptr, ptr %30, align 8, !tbaa !16
  %32 = icmp eq ptr %31, null
  br i1 %32, label %73, label %33

33:                                               ; preds = %6
  %34 = getelementptr inbounds %struct.RigGraph, ptr %0, i64 0, i32 9
  %35 = getelementptr inbounds %struct.RigGraph, ptr %1, i64 0, i32 16
  %36 = getelementptr inbounds %struct.RigGraph, ptr %0, i64 0, i32 16
  %37 = getelementptr inbounds %struct.RigArc, ptr %8, i64 0, i32 9
  br label %38

38:                                               ; preds = %33, %70
  %39 = phi ptr [ %31, %33 ], [ %71, %70 ]
  %40 = load ptr, ptr @MEM_callocN, align 8, !tbaa !16
  %41 = call ptr %40(i64 noundef 80, ptr noundef nonnull @.str.42) #22
  %42 = getelementptr inbounds %struct.RigEdge, ptr %41, i64 0, i32 2
  %43 = getelementptr inbounds %struct.RigEdge, ptr %39, i64 0, i32 2
  call fastcc void @copy_v3_v3(ptr noundef nonnull %42, ptr noundef nonnull %43) #21
  %44 = getelementptr inbounds %struct.RigEdge, ptr %41, i64 0, i32 3
  %45 = getelementptr inbounds %struct.RigEdge, ptr %39, i64 0, i32 3
  call fastcc void @copy_v3_v3(ptr noundef nonnull %44, ptr noundef nonnull %45) #21
  %46 = getelementptr inbounds %struct.RigEdge, ptr %41, i64 0, i32 8
  %47 = getelementptr inbounds %struct.RigEdge, ptr %39, i64 0, i32 8
  call fastcc void @copy_v3_v3(ptr noundef nonnull %46, ptr noundef nonnull %47) #21
  %48 = getelementptr inbounds %struct.RigEdge, ptr %39, i64 0, i32 4
  %49 = getelementptr inbounds %struct.RigEdge, ptr %41, i64 0, i32 4
  %50 = load <2 x float>, ptr %48, align 8, !tbaa !5
  store <2 x float> %50, ptr %49, align 8, !tbaa !5
  %51 = getelementptr inbounds %struct.RigEdge, ptr %39, i64 0, i32 6
  %52 = load float, ptr %51, align 8, !tbaa !180
  %53 = getelementptr inbounds %struct.RigEdge, ptr %41, i64 0, i32 6
  store float %52, ptr %53, align 8, !tbaa !180
  %54 = getelementptr inbounds %struct.RigEdge, ptr %39, i64 0, i32 7
  %55 = load ptr, ptr %54, align 8, !tbaa !24
  %56 = icmp eq ptr %55, null
  br i1 %56, label %70, label %57

57:                                               ; preds = %38
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %7) #20
  %58 = getelementptr inbounds %struct.EditBone, ptr %55, i64 0, i32 5
  %59 = load ptr, ptr %34, align 8, !tbaa !23
  call fastcc void @renameTemplateBone(ptr noundef nonnull %7, ptr noundef nonnull %58, ptr noundef %59, ptr noundef %4, ptr noundef %5) #21
  %60 = load ptr, ptr %54, align 8, !tbaa !24
  %61 = load ptr, ptr %34, align 8, !tbaa !23
  %62 = load ptr, ptr %35, align 8, !tbaa !54
  %63 = load ptr, ptr %36, align 8, !tbaa !54
  %64 = call ptr @duplicateEditBoneObjects(ptr noundef %60, ptr noundef nonnull %7, ptr noundef %61, ptr noundef %62, ptr noundef %63) #22
  %65 = getelementptr inbounds %struct.RigEdge, ptr %41, i64 0, i32 7
  store ptr %64, ptr %65, align 8, !tbaa !24
  %66 = getelementptr inbounds %struct.EditBone, ptr %64, i64 0, i32 9
  %67 = load i32, ptr %66, align 4, !tbaa !86
  %68 = and i32 %67, -8
  store i32 %68, ptr %66, align 4, !tbaa !86
  %69 = load ptr, ptr %54, align 8, !tbaa !24
  call void @BLI_ghash_insert(ptr noundef %3, ptr noundef %69, ptr noundef %64) #22
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %7) #20
  br label %70

70:                                               ; preds = %57, %38
  call void @BLI_addtail(ptr noundef nonnull %37, ptr noundef nonnull %41) #22
  %71 = load ptr, ptr %39, align 8, !tbaa !16
  %72 = icmp eq ptr %71, null
  br i1 %72, label %73, label %38, !llvm.loop !218

73:                                               ; preds = %70, %6
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @cloneControl(ptr noundef %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2, ptr noundef %3, ptr noundef %4, ptr noundef %5) unnamed_addr #0 {
  %7 = alloca [64 x i8], align 16
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %7) #20
  %8 = tail call fastcc ptr @newRigControl(ptr noundef %0) #21
  %9 = getelementptr inbounds %struct.RigControl, ptr %8, i64 0, i32 2
  %10 = getelementptr inbounds %struct.RigControl, ptr %2, i64 0, i32 2
  tail call fastcc void @copy_v3_v3(ptr noundef nonnull %9, ptr noundef nonnull %10) #21
  %11 = getelementptr inbounds %struct.RigControl, ptr %8, i64 0, i32 3
  %12 = getelementptr inbounds %struct.RigControl, ptr %2, i64 0, i32 3
  tail call fastcc void @copy_v3_v3(ptr noundef nonnull %11, ptr noundef nonnull %12) #21
  %13 = getelementptr inbounds %struct.RigControl, ptr %8, i64 0, i32 7
  %14 = getelementptr inbounds %struct.RigControl, ptr %2, i64 0, i32 7
  tail call fastcc void @copy_v3_v3(ptr noundef nonnull %13, ptr noundef nonnull %14) #21
  %15 = getelementptr inbounds %struct.RigControl, ptr %8, i64 0, i32 8
  %16 = getelementptr inbounds %struct.RigControl, ptr %2, i64 0, i32 8
  tail call fastcc void @copy_v3_v3(ptr noundef nonnull %15, ptr noundef nonnull %16) #21
  %17 = getelementptr inbounds %struct.RigControl, ptr %2, i64 0, i32 10
  %18 = getelementptr inbounds %struct.RigControl, ptr %8, i64 0, i32 10
  %19 = load <2 x i32>, ptr %17, align 8, !tbaa !149
  store <2 x i32> %19, ptr %18, align 8, !tbaa !149
  %20 = getelementptr inbounds %struct.RigControl, ptr %2, i64 0, i32 4
  %21 = load ptr, ptr %20, align 8, !tbaa !42
  %22 = getelementptr inbounds %struct.EditBone, ptr %21, i64 0, i32 5
  %23 = getelementptr inbounds %struct.RigGraph, ptr %0, i64 0, i32 9
  %24 = load ptr, ptr %23, align 8, !tbaa !23
  call fastcc void @renameTemplateBone(ptr noundef nonnull %7, ptr noundef nonnull %22, ptr noundef %24, ptr noundef %4, ptr noundef %5) #21
  %25 = load ptr, ptr %20, align 8, !tbaa !42
  %26 = load ptr, ptr %23, align 8, !tbaa !23
  %27 = getelementptr inbounds %struct.RigGraph, ptr %1, i64 0, i32 16
  %28 = load ptr, ptr %27, align 8, !tbaa !54
  %29 = getelementptr inbounds %struct.RigGraph, ptr %0, i64 0, i32 16
  %30 = load ptr, ptr %29, align 8, !tbaa !54
  %31 = call ptr @duplicateEditBoneObjects(ptr noundef %25, ptr noundef nonnull %7, ptr noundef %26, ptr noundef %28, ptr noundef %30) #22
  %32 = getelementptr inbounds %struct.RigControl, ptr %8, i64 0, i32 4
  store ptr %31, ptr %32, align 8, !tbaa !42
  %33 = getelementptr inbounds %struct.EditBone, ptr %31, i64 0, i32 9
  %34 = load i32, ptr %33, align 4, !tbaa !86
  %35 = and i32 %34, -8
  store i32 %35, ptr %33, align 4, !tbaa !86
  %36 = load ptr, ptr %20, align 8, !tbaa !42
  call void @BLI_ghash_insert(ptr noundef %3, ptr noundef %36, ptr noundef %31) #22
  %37 = getelementptr inbounds %struct.RigControl, ptr %2, i64 0, i32 5
  %38 = getelementptr inbounds %struct.RigControl, ptr %8, i64 0, i32 5
  %39 = load <2 x ptr>, ptr %37, align 8, !tbaa !16
  store <2 x ptr> %39, ptr %38, align 8, !tbaa !16
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %7) #20
  ret void
}

; Function Attrs: optsize
declare void @updateDuplicateSubtargetObjects(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @renameTemplateBone(ptr noundef %0, ptr nocapture noundef readonly %1, ptr noundef %2, ptr noundef %3, ptr noundef %4) unnamed_addr #0 {
  br label %6

6:                                                ; preds = %5, %33
  %7 = phi i32 [ 0, %5 ], [ %36, %33 ]
  %8 = phi i32 [ 0, %5 ], [ %37, %33 ]
  %9 = sext i32 %8 to i64
  %10 = getelementptr inbounds i8, ptr %1, i64 %9
  %11 = load i8, ptr %10, align 1, !tbaa !39
  switch i8 %11, label %30 [
    i8 0, label %41
    i8 38, label %12
  ]

12:                                               ; preds = %6
  %13 = add nsw i32 %8, 1
  %14 = sext i32 %13 to i64
  %15 = getelementptr inbounds i8, ptr %1, i64 %14
  %16 = load i8, ptr %15, align 1, !tbaa !39
  switch i8 %16, label %27 [
    i8 83, label %17
    i8 115, label %17
    i8 78, label %22
    i8 110, label %22
  ]

17:                                               ; preds = %12, %12
  %18 = sext i32 %7 to i64
  %19 = getelementptr inbounds i8, ptr %0, i64 %18
  %20 = tail call i64 @BLI_strncpy_rlen(ptr noundef %19, ptr noundef %3, i64 noundef 64) #22
  %21 = trunc i64 %20 to i32
  br label %33

22:                                               ; preds = %12, %12
  %23 = sext i32 %7 to i64
  %24 = getelementptr inbounds i8, ptr %0, i64 %23
  %25 = tail call i64 @BLI_strncpy_rlen(ptr noundef %24, ptr noundef %4, i64 noundef 64) #22
  %26 = trunc i64 %25 to i32
  br label %33

27:                                               ; preds = %12
  %28 = sext i32 %7 to i64
  %29 = getelementptr inbounds i8, ptr %0, i64 %28
  store i8 38, ptr %29, align 1, !tbaa !39
  br label %33

30:                                               ; preds = %6
  %31 = sext i32 %7 to i64
  %32 = getelementptr inbounds i8, ptr %0, i64 %31
  store i8 %11, ptr %32, align 1, !tbaa !39
  br label %33

33:                                               ; preds = %30, %22, %27, %17
  %34 = phi i32 [ %13, %17 ], [ %13, %22 ], [ %8, %27 ], [ %8, %30 ]
  %35 = phi i32 [ %21, %17 ], [ %26, %22 ], [ 1, %27 ], [ 1, %30 ]
  %36 = add i32 %35, %7
  %37 = add nsw i32 %34, 1
  %38 = icmp slt i32 %34, 62
  %39 = icmp slt i32 %36, 63
  %40 = select i1 %38, i1 %39, i1 false
  br i1 %40, label %6, label %41, !llvm.loop !219

41:                                               ; preds = %6, %33
  %42 = phi i32 [ %7, %6 ], [ %36, %33 ]
  %43 = sext i32 %42 to i64
  %44 = getelementptr inbounds i8, ptr %0, i64 %43
  store i8 0, ptr %44, align 1, !tbaa !39
  tail call void @unique_editbone_name(ptr noundef %2, ptr noundef %0, ptr noundef null) #22
  ret void
}

; Function Attrs: optsize
declare ptr @duplicateEditBoneObjects(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare i64 @BLI_strncpy_rlen(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare void @unique_editbone_name(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare void @BLI_task_pool_push(ptr noundef, ptr noundef, ptr noundef, i8 noundef zeroext, i32 noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare void @BLI_task_pool_work_and_wait(ptr noundef) local_unnamed_addr #3

; Function Attrs: nofree nounwind
declare noundef i32 @putchar(i32 noundef) local_unnamed_addr #19

; Function Attrs: nofree nounwind
declare noundef i32 @puts(ptr nocapture noundef readonly) local_unnamed_addr #19

attributes #0 = { noinline nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nofree noinline nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nofree nounwind optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nofree noinline norecurse nosync nounwind optsize memory(read, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { mustprogress nofree nounwind optsize willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { mustprogress nofree noinline nounwind optsize willreturn memory(write, argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { mustprogress nofree nounwind optsize willreturn memory(write) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #13 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #14 = { nofree noinline norecurse nosync nounwind optsize memory(readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #15 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #16 = { nofree noinline norecurse nosync nounwind optsize memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #17 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #18 = { mustprogress nofree noinline nounwind optsize willreturn memory(write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #19 = { nofree nounwind }
attributes #20 = { nounwind }
attributes #21 = { optsize }
attributes #22 = { nounwind optsize }
attributes #23 = { nounwind optsize willreturn memory(read) }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!5 = !{!6, !6, i64 0}
!6 = !{!"float", !7, i64 0}
!7 = !{!"omnipotent char", !8, i64 0}
!8 = !{!"Simple C/C++ TBAA"}
!9 = !{!10, !12, i64 128}
!10 = !{!"RigGraph", !11, i64 0, !11, i64 16, !6, i64 32, !12, i64 40, !12, i64 48, !12, i64 56, !12, i64 64, !13, i64 72, !11, i64 80, !12, i64 96, !12, i64 104, !12, i64 112, !12, i64 120, !12, i64 128, !12, i64 136, !12, i64 144, !12, i64 152}
!11 = !{!"ListBase", !12, i64 0, !12, i64 8}
!12 = !{!"any pointer", !7, i64 0}
!13 = !{!"int", !7, i64 0}
!14 = !{!10, !12, i64 120}
!15 = !{!10, !12, i64 112}
!16 = !{!12, !12, i64 0}
!17 = distinct !{!17, !18}
!18 = !{!"llvm.loop.mustprogress"}
!19 = distinct !{!19, !18}
!20 = !{!10, !12, i64 136}
!21 = !{!10, !12, i64 144}
!22 = !{!10, !13, i64 72}
!23 = !{!10, !12, i64 96}
!24 = !{!25, !12, i64 56}
!25 = !{!"RigEdge", !12, i64 0, !12, i64 8, !7, i64 16, !7, i64 28, !6, i64 40, !6, i64 44, !6, i64 48, !12, i64 56, !7, i64 64}
!26 = distinct !{!26, !18}
!27 = !{!28, !12, i64 16}
!28 = !{!"RigArc", !12, i64 0, !12, i64 8, !12, i64 16, !12, i64 24, !13, i64 32, !6, i64 36, !13, i64 40, !13, i64 44, !13, i64 48, !11, i64 56, !13, i64 72, !12, i64 80}
!29 = !{!25, !6, i64 40}
!30 = !{!25, !6, i64 44}
!31 = distinct !{!31, !18}
!32 = !{!28, !13, i64 40}
!33 = !{!28, !13, i64 48}
!34 = !{!28, !13, i64 44}
!35 = !{!28, !12, i64 24}
!36 = !{!37, !13, i64 32}
!37 = !{!"RigNode", !12, i64 0, !12, i64 8, !7, i64 16, !13, i64 28, !13, i64 32, !12, i64 40, !13, i64 48, !13, i64 52, !13, i64 56, !7, i64 60, !12, i64 72}
!38 = !{!37, !13, i64 56}
!39 = !{!7, !7, i64 0}
!40 = !{!41, !12, i64 48}
!41 = !{!"RigControl", !12, i64 0, !12, i64 8, !7, i64 16, !7, i64 28, !12, i64 40, !12, i64 48, !12, i64 56, !7, i64 64, !7, i64 76, !7, i64 88, !13, i64 104, !13, i64 108}
!42 = !{!41, !12, i64 40}
!43 = distinct !{!43, !18}
!44 = distinct !{!44, !18}
!45 = !{!10, !12, i64 104}
!46 = !{!47, !12, i64 296}
!47 = !{!"Object", !48, i64 0, !12, i64 120, !12, i64 128, !49, i64 136, !49, i64 138, !13, i64 140, !13, i64 144, !13, i64 148, !7, i64 152, !12, i64 216, !12, i64 224, !12, i64 232, !12, i64 240, !12, i64 248, !12, i64 256, !12, i64 264, !12, i64 272, !12, i64 280, !12, i64 288, !12, i64 296, !12, i64 304, !50, i64 312, !12, i64 360, !11, i64 368, !11, i64 384, !11, i64 400, !11, i64 416, !13, i64 432, !13, i64 436, !12, i64 440, !12, i64 448, !13, i64 456, !13, i64 460, !7, i64 464, !7, i64 476, !7, i64 488, !7, i64 500, !7, i64 512, !7, i64 524, !7, i64 536, !7, i64 548, !7, i64 560, !7, i64 576, !7, i64 592, !7, i64 604, !6, i64 616, !6, i64 620, !7, i64 624, !7, i64 688, !7, i64 752, !7, i64 816, !7, i64 880, !13, i64 944, !49, i64 948, !49, i64 950, !49, i64 952, !49, i64 954, !49, i64 956, !49, i64 958, !49, i64 960, !49, i64 962, !49, i64 964, !7, i64 966, !7, i64 967, !13, i64 968, !13, i64 972, !13, i64 976, !13, i64 980, !13, i64 984, !6, i64 988, !6, i64 992, !6, i64 996, !6, i64 1000, !6, i64 1004, !6, i64 1008, !6, i64 1012, !6, i64 1016, !6, i64 1020, !6, i64 1024, !6, i64 1028, !6, i64 1032, !49, i64 1036, !49, i64 1038, !49, i64 1040, !7, i64 1042, !7, i64 1043, !49, i64 1044, !7, i64 1046, !7, i64 1047, !6, i64 1048, !6, i64 1052, !11, i64 1056, !11, i64 1072, !11, i64 1088, !11, i64 1104, !6, i64 1120, !49, i64 1124, !49, i64 1126, !7, i64 1128, !13, i64 1144, !13, i64 1148, !12, i64 1152, !7, i64 1160, !7, i64 1161, !49, i64 1162, !7, i64 1164, !11, i64 1176, !11, i64 1192, !11, i64 1208, !11, i64 1224, !12, i64 1240, !12, i64 1248, !12, i64 1256, !7, i64 1264, !7, i64 1265, !49, i64 1266, !6, i64 1268, !12, i64 1272, !12, i64 1280, !12, i64 1288, !12, i64 1296, !51, i64 1304, !51, i64 1312, !13, i64 1320, !13, i64 1324, !11, i64 1328, !11, i64 1344, !12, i64 1360, !12, i64 1368, !12, i64 1376, !7, i64 1384, !12, i64 1392, !11, i64 1400, !12, i64 1416}
!48 = !{!"ID", !12, i64 0, !12, i64 8, !12, i64 16, !12, i64 24, !7, i64 32, !49, i64 98, !13, i64 100, !13, i64 104, !13, i64 108, !12, i64 112}
!49 = !{!"short", !7, i64 0}
!50 = !{!"bAnimVizSettings", !13, i64 0, !13, i64 4, !13, i64 8, !13, i64 12, !49, i64 16, !49, i64 18, !49, i64 20, !49, i64 22, !49, i64 24, !49, i64 26, !49, i64 28, !49, i64 30, !13, i64 32, !13, i64 36, !13, i64 40, !13, i64 44}
!51 = !{!"long", !7, i64 0}
!52 = !{!53, !12, i64 160}
!53 = !{!"bArmature", !48, i64 0, !12, i64 120, !11, i64 128, !11, i64 144, !12, i64 160, !12, i64 168, !12, i64 176, !12, i64 184, !13, i64 192, !13, i64 196, !13, i64 200, !13, i64 204, !49, i64 208, !49, i64 210, !13, i64 212, !13, i64 216, !13, i64 220, !49, i64 224, !49, i64 226, !49, i64 228, !49, i64 230, !13, i64 232, !13, i64 236, !13, i64 240, !13, i64 244, !13, i64 248, !13, i64 252}
!54 = !{!10, !12, i64 152}
!55 = !{!56, !12, i64 24}
!56 = !{!"EditBone", !12, i64 0, !12, i64 8, !12, i64 16, !12, i64 24, !12, i64 32, !7, i64 40, !6, i64 104, !7, i64 108, !7, i64 120, !13, i64 132, !13, i64 136, !6, i64 140, !6, i64 144, !6, i64 148, !6, i64 152, !6, i64 156, !6, i64 160, !6, i64 164, !6, i64 168, !6, i64 172, !6, i64 176, !49, i64 180}
!57 = distinct !{!57, !18}
!58 = !{!59, !12, i64 264}
!59 = !{!"Scene", !48, i64 0, !12, i64 120, !12, i64 128, !12, i64 136, !12, i64 144, !11, i64 152, !12, i64 168, !12, i64 176, !7, i64 184, !7, i64 196, !7, i64 208, !7, i64 220, !13, i64 232, !13, i64 236, !13, i64 240, !49, i64 244, !7, i64 246, !7, i64 247, !12, i64 248, !12, i64 256, !12, i64 264, !12, i64 272, !60, i64 280, !69, i64 4264, !11, i64 4296, !11, i64 4312, !12, i64 4328, !12, i64 4336, !12, i64 4344, !12, i64 4352, !12, i64 4360, !12, i64 4368, !49, i64 4376, !49, i64 4378, !13, i64 4380, !11, i64 4384, !70, i64 4400, !71, i64 4416, !74, i64 4600, !12, i64 4608, !75, i64 4616, !12, i64 4640, !51, i64 4648, !51, i64 4656, !62, i64 4664, !63, i64 4824, !76, i64 4888, !12, i64 4952}
!60 = !{!"RenderData", !61, i64 0, !12, i64 248, !12, i64 256, !64, i64 264, !65, i64 328, !13, i64 400, !13, i64 404, !13, i64 408, !6, i64 412, !13, i64 416, !13, i64 420, !13, i64 424, !13, i64 428, !49, i64 432, !49, i64 434, !6, i64 436, !6, i64 440, !6, i64 444, !6, i64 448, !6, i64 452, !49, i64 456, !49, i64 458, !49, i64 460, !49, i64 462, !49, i64 464, !49, i64 466, !13, i64 468, !49, i64 472, !49, i64 474, !49, i64 476, !49, i64 478, !49, i64 480, !49, i64 482, !13, i64 484, !13, i64 488, !49, i64 492, !49, i64 494, !13, i64 496, !13, i64 500, !49, i64 504, !49, i64 506, !49, i64 508, !49, i64 510, !49, i64 512, !7, i64 514, !7, i64 515, !13, i64 516, !13, i64 520, !13, i64 524, !49, i64 528, !49, i64 530, !49, i64 532, !49, i64 534, !49, i64 536, !49, i64 538, !49, i64 540, !49, i64 542, !66, i64 544, !66, i64 560, !67, i64 576, !11, i64 592, !49, i64 608, !49, i64 610, !6, i64 612, !6, i64 616, !6, i64 620, !6, i64 624, !13, i64 628, !6, i64 632, !6, i64 636, !6, i64 640, !6, i64 644, !49, i64 648, !49, i64 650, !49, i64 652, !49, i64 654, !49, i64 656, !49, i64 658, !6, i64 660, !6, i64 664, !49, i64 668, !49, i64 670, !6, i64 672, !6, i64 676, !7, i64 680, !13, i64 1704, !49, i64 1708, !49, i64 1710, !7, i64 1712, !7, i64 2480, !7, i64 2496, !7, i64 2512, !7, i64 2513, !7, i64 2514, !7, i64 2515, !13, i64 2520, !49, i64 2524, !49, i64 2526, !6, i64 2528, !6, i64 2532, !49, i64 2536, !49, i64 2538, !6, i64 2540, !49, i64 2544, !49, i64 2546, !13, i64 2548, !49, i64 2552, !49, i64 2554, !49, i64 2556, !49, i64 2558, !6, i64 2560, !6, i64 2564, !12, i64 2568, !13, i64 2576, !6, i64 2580, !7, i64 2584, !68, i64 2616, !13, i64 3976, !13, i64 3980}
!61 = !{!"ImageFormatData", !7, i64 0, !7, i64 1, !7, i64 2, !7, i64 3, !7, i64 4, !7, i64 5, !7, i64 6, !7, i64 7, !49, i64 8, !49, i64 10, !6, i64 12, !7, i64 16, !7, i64 17, !7, i64 18, !62, i64 24, !63, i64 184}
!62 = !{!"ColorManagedViewSettings", !13, i64 0, !13, i64 4, !7, i64 8, !7, i64 72, !6, i64 136, !6, i64 140, !12, i64 144, !12, i64 152}
!63 = !{!"ColorManagedDisplaySettings", !7, i64 0}
!64 = !{!"QuicktimeCodecSettings", !13, i64 0, !13, i64 4, !13, i64 8, !13, i64 12, !13, i64 16, !13, i64 20, !13, i64 24, !13, i64 28, !13, i64 32, !13, i64 36, !13, i64 40, !13, i64 44, !49, i64 48, !49, i64 50, !13, i64 52, !13, i64 56, !13, i64 60}
!65 = !{!"FFMpegCodecData", !13, i64 0, !13, i64 4, !13, i64 8, !13, i64 12, !13, i64 16, !13, i64 20, !13, i64 24, !13, i64 28, !6, i64 32, !13, i64 36, !13, i64 40, !13, i64 44, !13, i64 48, !13, i64 52, !13, i64 56, !13, i64 60, !12, i64 64}
!66 = !{!"rctf", !6, i64 0, !6, i64 4, !6, i64 8, !6, i64 12}
!67 = !{!"rcti", !13, i64 0, !13, i64 4, !13, i64 8, !13, i64 12}
!68 = !{!"BakeData", !61, i64 0, !7, i64 248, !49, i64 1272, !49, i64 1274, !49, i64 1276, !49, i64 1278, !6, i64 1280, !6, i64 1284, !7, i64 1288, !7, i64 1291, !7, i64 1292, !7, i64 1293, !7, i64 1296}
!69 = !{!"AudioData", !13, i64 0, !6, i64 4, !6, i64 8, !6, i64 12, !13, i64 16, !49, i64 20, !49, i64 22, !6, i64 24, !6, i64 28}
!70 = !{!"GameFraming", !7, i64 0, !7, i64 12, !7, i64 13, !7, i64 14, !7, i64 15}
!71 = !{!"GameData", !70, i64 0, !49, i64 16, !49, i64 18, !49, i64 20, !49, i64 22, !49, i64 24, !49, i64 26, !49, i64 28, !49, i64 30, !49, i64 32, !7, i64 34, !72, i64 40, !49, i64 64, !49, i64 66, !6, i64 68, !73, i64 72, !6, i64 128, !6, i64 132, !13, i64 136, !49, i64 140, !49, i64 142, !49, i64 144, !49, i64 146, !49, i64 148, !49, i64 150, !49, i64 152, !49, i64 154, !49, i64 156, !49, i64 158, !49, i64 160, !49, i64 162, !6, i64 164, !6, i64 168, !6, i64 172, !6, i64 176, !6, i64 180}
!72 = !{!"GameDome", !49, i64 0, !49, i64 2, !49, i64 4, !49, i64 6, !6, i64 8, !6, i64 12, !12, i64 16}
!73 = !{!"RecastData", !6, i64 0, !6, i64 4, !6, i64 8, !6, i64 12, !6, i64 16, !6, i64 20, !6, i64 24, !6, i64 28, !6, i64 32, !6, i64 36, !13, i64 40, !6, i64 44, !6, i64 48, !49, i64 52, !49, i64 54}
!74 = !{!"UnitSettings", !6, i64 0, !7, i64 4, !7, i64 5, !49, i64 6}
!75 = !{!"PhysicsSettings", !7, i64 0, !13, i64 12, !13, i64 16, !13, i64 20}
!76 = !{!"ColorManagedColorspaceSettings", !7, i64 0}
!77 = !{!78, !6, i64 376}
!78 = !{!"ToolSettings", !12, i64 0, !12, i64 8, !12, i64 16, !12, i64 24, !6, i64 32, !6, i64 36, !6, i64 40, !49, i64 44, !49, i64 46, !7, i64 48, !7, i64 49, !7, i64 50, !7, i64 51, !6, i64 52, !49, i64 56, !7, i64 58, !7, i64 59, !79, i64 64, !81, i64 168, !6, i64 336, !6, i64 340, !49, i64 344, !49, i64 346, !7, i64 348, !7, i64 349, !49, i64 350, !6, i64 352, !6, i64 356, !6, i64 360, !6, i64 364, !6, i64 368, !6, i64 372, !6, i64 376, !6, i64 380, !6, i64 384, !6, i64 388, !49, i64 392, !7, i64 394, !7, i64 395, !7, i64 396, !7, i64 399, !12, i64 400, !7, i64 408, !7, i64 409, !7, i64 410, !7, i64 411, !7, i64 412, !7, i64 413, !7, i64 421, !7, i64 429, !7, i64 430, !7, i64 431, !7, i64 432, !7, i64 433, !49, i64 434, !49, i64 436, !49, i64 438, !49, i64 440, !7, i64 442, !7, i64 443, !7, i64 444, !7, i64 445, !7, i64 446, !7, i64 447, !13, i64 448, !13, i64 452, !13, i64 456, !13, i64 460, !49, i64 464, !49, i64 466, !13, i64 468, !6, i64 472, !6, i64 476, !82, i64 480, !83, i64 608}
!79 = !{!"ImagePaintSettings", !80, i64 0, !49, i64 40, !49, i64 42, !49, i64 44, !49, i64 46, !7, i64 48, !13, i64 52, !12, i64 56, !12, i64 64, !12, i64 72, !12, i64 80, !7, i64 88, !6, i64 100}
!80 = !{!"Paint", !12, i64 0, !12, i64 8, !12, i64 16, !7, i64 24, !13, i64 28, !13, i64 32, !13, i64 36}
!81 = !{!"ParticleEditSettings", !49, i64 0, !49, i64 2, !49, i64 4, !49, i64 6, !7, i64 8, !12, i64 120, !6, i64 128, !6, i64 132, !13, i64 136, !13, i64 140, !13, i64 144, !13, i64 148, !12, i64 152, !12, i64 160}
!82 = !{!"UnifiedPaintSettings", !13, i64 0, !6, i64 4, !6, i64 8, !6, i64 12, !7, i64 16, !7, i64 28, !13, i64 40, !7, i64 44, !6, i64 52, !13, i64 56, !13, i64 60, !7, i64 64, !7, i64 65, !6, i64 72, !7, i64 76, !13, i64 84, !6, i64 88, !7, i64 92, !7, i64 100, !13, i64 108, !12, i64 112, !6, i64 120, !13, i64 124}
!83 = !{!"MeshStatVis", !7, i64 0, !7, i64 1, !7, i64 3, !6, i64 4, !6, i64 8, !6, i64 12, !6, i64 16, !7, i64 20, !7, i64 21, !6, i64 24, !6, i64 28, !6, i64 32, !6, i64 36}
!84 = !{!10, !12, i64 40}
!85 = !{!10, !12, i64 48}
!86 = !{!56, !13, i64 132}
!87 = distinct !{!87, !18}
!88 = distinct !{!88, !18}
!89 = !{!10, !12, i64 16}
!90 = !{!37, !12, i64 0}
!91 = distinct !{!91, !18}
!92 = distinct !{!92, !18}
!93 = !{!28, !12, i64 56}
!94 = !{!28, !12, i64 64}
!95 = !{!25, !12, i64 0}
!96 = distinct !{!96, !18}
!97 = distinct !{!97, !18}
!98 = distinct !{!98, !18}
!99 = !{!25, !12, i64 8}
!100 = distinct !{!100, !18}
!101 = !{!10, !12, i64 0}
!102 = distinct !{!102, !18}
!103 = !{!47, !12, i64 288}
!104 = distinct !{!104, !18}
!105 = !{!106, !12, i64 104}
!106 = !{!"bConstraintTypeInfo", !49, i64 0, !49, i64 2, !7, i64 4, !7, i64 36, !12, i64 72, !12, i64 80, !12, i64 88, !12, i64 96, !12, i64 104, !12, i64 112, !12, i64 120, !12, i64 128}
!107 = !{!108, !12, i64 16}
!108 = !{!"bConstraintTarget", !12, i64 0, !12, i64 8, !12, i64 16, !7, i64 24, !7, i64 88, !49, i64 152, !49, i64 154, !49, i64 156, !49, i64 158}
!109 = !{!110, !49, i64 24}
!110 = !{!"bConstraint", !12, i64 0, !12, i64 8, !12, i64 16, !49, i64 24, !49, i64 26, !7, i64 28, !7, i64 29, !7, i64 30, !49, i64 94, !6, i64 96, !6, i64 100, !12, i64 104, !6, i64 112, !6, i64 116}
!111 = !{i32 0, i32 2}
!112 = distinct !{!112, !18}
!113 = !{!106, !12, i64 112}
!114 = distinct !{!114, !18}
!115 = distinct !{!115, !18}
!116 = distinct !{!116, !18}
!117 = distinct !{!117, !18}
!118 = distinct !{!118, !18}
!119 = distinct !{!119, !18}
!120 = distinct !{!120, !18}
!121 = distinct !{!121, !18}
!122 = distinct !{!122, !18}
!123 = distinct !{!123, !18}
!124 = distinct !{!124, !18}
!125 = distinct !{!125, !18}
!126 = !{!41, !13, i64 104}
!127 = !{i8 0, i8 2}
!128 = distinct !{!128, !18}
!129 = !{!41, !13, i64 108}
!130 = !{!41, !12, i64 56}
!131 = distinct !{!131, !18}
!132 = !{!133, !12, i64 0}
!133 = !{!"RetargetParam", !12, i64 0, !12, i64 8, !12, i64 16, !12, i64 24}
!134 = !{!133, !12, i64 8}
!135 = !{!133, !12, i64 24}
!136 = !{!133, !12, i64 16}
!137 = !{!28, !12, i64 80}
!138 = !{!139, !12, i64 24}
!139 = !{!"ReebArc", !12, i64 0, !12, i64 8, !12, i64 16, !12, i64 24, !13, i64 32, !6, i64 36, !13, i64 40, !13, i64 44, !13, i64 48, !11, i64 56, !13, i64 72, !12, i64 80, !12, i64 88, !6, i64 96, !12, i64 104}
!140 = !{!139, !12, i64 16}
!141 = !{!37, !12, i64 72}
!142 = !{!78, !7, i64 412}
!143 = !{!56, !6, i64 104}
!144 = distinct !{!144, !18}
!145 = distinct !{!145, !18}
!146 = distinct !{!146, !18}
!147 = !{!139, !13, i64 72}
!148 = !{!28, !13, i64 72}
!149 = !{!13, !13, i64 0}
!150 = distinct !{!150, !18, !151, !152}
!151 = !{!"llvm.loop.isvectorized", i32 1}
!152 = !{!"llvm.loop.unroll.runtime.disable"}
!153 = distinct !{!153, !18}
!154 = distinct !{!154, !18}
!155 = distinct !{!155, !18}
!156 = !{!28, !6, i64 36}
!157 = distinct !{!157, !18}
!158 = distinct !{!158, !18}
!159 = distinct !{!159, !18}
!160 = !{!161, !12, i64 32}
!161 = !{!"CollectionPointerLink", !12, i64 0, !12, i64 8, !162, i64 16}
!162 = !{!"PointerRNA", !163, i64 0, !12, i64 8, !12, i64 16}
!163 = !{!"", !12, i64 0}
!164 = !{!165, !12, i64 32}
!165 = !{!"Base", !12, i64 0, !12, i64 8, !13, i64 16, !13, i64 20, !13, i64 24, !49, i64 28, !49, i64 30, !12, i64 32}
!166 = !{!47, !49, i64 136}
!167 = distinct !{!167, !18}
!168 = distinct !{!168, !18}
!169 = !{!11, !12, i64 0}
!170 = distinct !{!170, !18}
!171 = distinct !{!171, !18}
!172 = distinct !{!172, !18}
!173 = distinct !{!173, !18}
!174 = distinct !{!174, !18}
!175 = distinct !{!175, !18}
!176 = distinct !{!176, !18}
!177 = !{!37, !12, i64 40}
!178 = distinct !{!178, !18}
!179 = distinct !{!179, !18}
!180 = !{!25, !6, i64 48}
!181 = distinct !{!181, !18}
!182 = distinct !{!182, !18}
!183 = !{!184, !12, i64 8}
!184 = !{!"GHashIterator", !12, i64 0, !12, i64 8, !13, i64 16}
!185 = !{!186, !12, i64 16}
!186 = !{!"_gh_Entry", !12, i64 0, !12, i64 8, !12, i64 16}
!187 = distinct !{!187, !18}
!188 = !{!189, !6, i64 0}
!189 = !{!"MemoNode", !6, i64 0, !13, i64 4}
!190 = !{!191, !13, i64 76}
!191 = !{!"BArcIterator", !12, i64 0, !12, i64 8, !12, i64 16, !12, i64 24, !12, i64 32, !12, i64 40, !12, i64 48, !12, i64 56, !12, i64 64, !6, i64 72, !13, i64 76, !13, i64 80}
!192 = distinct !{!192, !18}
!193 = !{!189, !13, i64 4}
!194 = distinct !{!194, !18}
!195 = distinct !{!195, !18}
!196 = !{!197, !12, i64 16}
!197 = !{!"ReebGraph", !11, i64 0, !11, i64 16, !6, i64 32, !12, i64 40, !12, i64 48, !12, i64 56, !12, i64 64, !13, i64 72, !13, i64 76, !12, i64 80, !13, i64 88, !12, i64 96}
!198 = !{!197, !12, i64 96}
!199 = distinct !{!199, !18}
!200 = distinct !{!200, !18}
!201 = !{!202, !12, i64 96}
!202 = !{!"ReebNode", !12, i64 0, !12, i64 8, !7, i64 16, !13, i64 28, !13, i64 32, !12, i64 40, !13, i64 48, !13, i64 52, !13, i64 56, !7, i64 60, !7, i64 72, !13, i64 84, !6, i64 88, !13, i64 92, !12, i64 96, !12, i64 104}
!203 = distinct !{!203, !18}
!204 = !{!202, !13, i64 32}
!205 = !{!202, !12, i64 40}
!206 = !{!139, !13, i64 32}
!207 = !{!139, !13, i64 48}
!208 = !{!139, !13, i64 44}
!209 = !{!139, !13, i64 40}
!210 = distinct !{!210, !18}
!211 = !{!202, !12, i64 104}
!212 = distinct !{!212, !18}
!213 = !{!139, !12, i64 104}
!214 = distinct !{!214, !18}
!215 = !{!202, !13, i64 84}
!216 = distinct !{!216, !18}
!217 = distinct !{!217, !18}
!218 = distinct !{!218, !18}
!219 = distinct !{!219, !18}
