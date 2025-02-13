; ModuleID = 'blender/source/blender/blenkernel/intern/scene.c'
source_filename = "blender/source/blender/blenkernel/intern/scene.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.Global = type { ptr, [1024 x i8], [1024 x i8], i8, i8, i8, %struct.ListBase, i8, i8, i8, i16, i16, i16, i8, i16, i32, i32, i8, i32, i32, [200 x i8] }
%struct.ListBase = type { ptr, ptr }
%struct.UserDef = type { i32, i32, i32, i32, i32, [768 x i8], [768 x i8], [1024 x i8], [768 x i8], [768 x i8], [768 x i8], [768 x i8], [768 x i8], [1024 x i8], [1024 x i8], i32, i16, i16, i16, i16, i16, i16, i32, i32, i32, i16, i16, i32, i32, i32, i32, i32, i32, i32, i16, i16, i16, i16, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, [64 x i8], i16, i16, i16, i16, i16, i16, i16, i16, [3 x %struct.SolidLight], i16, i16, i16, i16, i16, i16, i16, i16, i32, i32, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i8, i8, i8, i8, i16, i16, i16, i16, i16, i16, float, float, i32, i16, i16, float, i16, i16, i16, i16, %struct.ColorBand, [3 x float], [4 x float], i16, i8, i8, [80 x i8], [1024 x i8], i32, i32, float, float, i32, i16, i16, i16, i16, i16, i16, %struct.WalkNavigation }
%struct.SolidLight = type { i32, i32, [4 x float], [4 x float], [4 x float] }
%struct.ColorBand = type { i16, i16, i8, i8, i8, [1 x i8], [32 x %struct.CBData] }
%struct.CBData = type { float, float, float, float, float, i32 }
%struct.WalkNavigation = type { float, float, float, float, float, float, i16, [3 x i16] }
%struct.AviCodecData = type { ptr, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [128 x i8] }
%struct.QuicktimeCodecData = type { ptr, ptr, i32, i32, [128 x i8] }
%struct.ID = type { ptr, ptr, ptr, ptr, [66 x i8], i16, i32, i32, i32, ptr }
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
%struct.SceneRenderLayer = type { ptr, ptr, [64 x i8], ptr, ptr, i32, i32, i32, i32, i32, i32, i32, float, %struct.FreestyleConfig }
%struct.FreestyleConfig = type { %struct.ListBase, i32, i32, i32, float, float, float, %struct.ListBase }
%struct.VPaint = type { %struct.Paint, i16, i16, i32, ptr, ptr, ptr }
%struct.Paint = type { ptr, ptr, ptr, [4 x i8], i32, i32, i32 }
%struct.ToolSettings = type { ptr, ptr, ptr, ptr, float, float, float, i16, i16, i8, i8, i8, i8, float, i16, i8, [5 x i8], %struct.ImagePaintSettings, %struct.ParticleEditSettings, float, float, i16, i16, i8, [1 x i8], i16, float, float, float, float, float, float, float, float, float, float, i16, i8, i8, [3 x i8], i8, ptr, i8, i8, i8, i8, i8, [8 x i8], [8 x i8], i8, i8, i8, i8, i8, i16, i16, i16, i16, i8, i8, i8, i8, i8, i8, i32, i32, i32, i32, i16, i16, i32, float, float, %struct.UnifiedPaintSettings, %struct.MeshStatVis }
%struct.ImagePaintSettings = type { %struct.Paint, i16, i16, i16, i16, [2 x i16], i32, ptr, ptr, ptr, ptr, [3 x float], float }
%struct.ParticleEditSettings = type { i16, i16, i16, i16, [7 x %struct.ParticleBrushData], ptr, float, float, i32, i32, i32, i32, ptr, ptr }
%struct.ParticleBrushData = type { i16, i16, i16, i16, i32, float }
%struct.UnifiedPaintSettings = type { i32, float, float, float, [3 x float], [3 x float], i32, [2 x float], float, i32, i32, i8, [7 x i8], float, [2 x float], i32, float, [2 x float], [2 x float], i32, ptr, float, i32 }
%struct.MeshStatVis = type { i8, [2 x i8], i8, float, float, float, float, i8, [3 x i8], float, float, float, float }
%struct.Editing = type { ptr, %struct.ListBase, %struct.ListBase, ptr, [1024 x i8], [1024 x i8], i32, i32, i32, i32, %struct.rctf }
%struct.bAction = type { %struct.ID, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, i32, i32, i32, i32 }
%struct.FCurve = type { ptr, ptr, ptr, ptr, %struct.ListBase, ptr, ptr, i32, float, i16, i16, i32, ptr, i32, [3 x float], float, float }
%struct.Object = type { %struct.ID, ptr, ptr, i16, i16, i32, i32, i32, [64 x i8], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.bAnimVizSettings, ptr, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, i32, i32, ptr, ptr, i32, i32, [3 x float], [3 x float], [3 x float], [3 x float], [3 x float], [3 x float], [3 x float], [3 x float], [4 x float], [4 x float], [3 x float], [3 x float], float, float, [4 x [4 x float]], [4 x [4 x float]], [4 x [4 x float]], [4 x [4 x float]], [4 x [4 x float]], i32, i16, i16, i16, i16, i16, i16, i16, i16, i16, i8, i8, i32, i32, i32, i32, i32, float, float, float, float, float, float, float, float, float, float, float, float, i16, i16, i16, i8, i8, i16, i8, i8, float, float, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, float, i16, i16, [4 x float], i32, i32, ptr, i8, i8, i16, [3 x float], %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, ptr, ptr, ptr, i8, i8, i16, float, ptr, ptr, ptr, ptr, i64, i64, i32, i32, %struct.ListBase, %struct.ListBase, ptr, ptr, ptr, [2 x float], ptr, %struct.ListBase, ptr }
%struct.bAnimVizSettings = type { i32, i32, i32, i32, i16, i16, i16, i16, i16, i16, i16, i16, i32, i32, i32, i32 }
%struct.Main = type { ptr, ptr, [1024 x i8], i16, i16, i16, i16, i64, [16 x i8], i16, ptr, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, [256 x i8], ptr, ptr }
%struct.Group = type { %struct.ID, %struct.ListBase, i32, [3 x float] }
%struct.GroupObject = type { ptr, ptr, ptr, ptr, i16, [6 x i8] }
%struct.bNodeTree = type { %struct.ID, ptr, ptr, [64 x i8], ptr, ptr, [2 x float], %struct.ListBase, %struct.ListBase, i32, i32, i32, i32, i32, i16, i16, i32, i32, i16, i16, i32, %struct.rctf, %struct.ListBase, %struct.ListBase, ptr, %struct.bNodeInstanceKey, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.bNodeInstanceKey = type { i32 }
%struct.bNode = type { ptr, ptr, ptr, ptr, ptr, [64 x i8], [64 x i8], i32, i16, i16, i16, i16, i16, i16, i16, i16, [3 x float], %struct.ListBase, %struct.ListBase, ptr, ptr, ptr, ptr, %struct.ListBase, float, float, float, float, float, float, float, i32, [64 x i8], i16, i16, float, float, i16, i16, ptr, %struct.rctf, %struct.rctf, %struct.rctf, i16, i16, i32, ptr }
%struct.bScreen = type { %struct.ID, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, ptr, ptr, i32, i32, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, ptr, ptr }
%struct.ScrArea = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.rcti, i8, i8, i16, i16, i16, i16, i16, i16, i8, i8, ptr, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase }
%struct.SpaceLink = type { ptr, ptr, %struct.ListBase, i32, float, [8 x i16] }
%struct.SpaceNode = type { ptr, ptr, %struct.ListBase, i32, float, [8 x i16], %struct.View2D, ptr, ptr, i16, i16, float, float, float, float, float, [2 x float], %struct.ListBase, ptr, ptr, [64 x i8], i32, i32, i16, i16, i16, i16, %struct.ListBase, ptr }
%struct.View2D = type { %struct.rctf, %struct.rctf, %struct.rcti, %struct.rcti, %struct.rcti, [2 x float], [2 x float], float, float, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, ptr, i32, i32, ptr, ptr }
%struct.SpaceButs = type { ptr, ptr, %struct.ListBase, i32, float, [8 x i16], %struct.View2D, i16, i16, i16, i16, i16, i16, i16, i16, i8, [7 x i8], ptr, i32, i32, ptr, ptr }
%struct.SceneBaseIter = type { ptr, ptr, [4 x [4 x float]], ptr, i32 }
%struct.DupliObject = type { ptr, ptr, ptr, [4 x [4 x float]], [3 x float], [2 x float], i16, i8, i8, [8 x i32], ptr }
%struct.TimeMarker = type { ptr, ptr, i32, [64 x i8], i32, ptr }
%struct.NodeTreeIterStore = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.AnimData = type { ptr, ptr, ptr, %struct.ListBase, ptr, %struct.ListBase, %struct.ListBase, i32, i32, i16, i16, float }
%struct.Mesh = type { %struct.ID, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.CustomData, %struct.CustomData, %struct.CustomData, %struct.CustomData, %struct.CustomData, i32, i32, i32, i32, i32, i32, i32, [3 x float], [3 x float], [3 x float], i32, i16, i16, float, i32, i8, i8, i8, i8, i8, i8, i16, ptr }
%struct.CustomData = type { ptr, [41 x i32], i32, i32, i32, ptr, ptr }
%struct.RenderEngineType = type { ptr, ptr, [64 x i8], [64 x i8], i32, ptr, ptr, ptr, ptr, ptr, ptr, %struct.ExtensionRNA }
%struct.ExtensionRNA = type { ptr, ptr, ptr, ptr }
%struct.RigidBodyWorld = type { ptr, ptr, ptr, ptr, i32, float, ptr, %struct.ListBase, i32, i16, i16, i32, float, ptr }
%struct.wmWindowManager = type { %struct.ID, ptr, ptr, %struct.ListBase, i32, i16, i16, %struct.ListBase, %struct.ListBase, %struct.ReportList, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, ptr, ptr, ptr, %struct.ListBase, ptr, i8, [7 x i8] }
%struct.ReportList = type { %struct.ListBase, i32, i32, i32, i32, ptr }
%struct.wmWindow = type { ptr, ptr, ptr, ptr, ptr, [64 x i8], i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i32, i16, i16, ptr, ptr, ptr, i32, i32, ptr, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase }
%struct.View3D = type { ptr, ptr, %struct.ListBase, i32, float, [8 x i16], [4 x float], float, float, i8, [3 x i8], i32, i32, i16, i16, ptr, ptr, %struct.rctf, %struct.ListBase, ptr, ptr, [64 x i8], i32, i32, i16, i16, i16, i16, i16, i16, float, float, float, float, [3 x float], [3 x float], i16, i16, i16, i8, i8, i8, i8, [2 x i8], %struct.ListBase, %struct.ListBase, %struct.ListBase, i8, i8, i8, [5 x i8], ptr, ptr, ptr }
%struct.ThreadedObjectUpdateState = type { ptr, ptr, ptr, double, [1 x %struct.ListBase], i8, i8 }
%struct.World = type { %struct.ID, ptr, i16, i16, i16, i16, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, i16, i16, i16, i16, i16, i16, i16, i16, float, float, float, float, float, float, float, float, float, float, float, float, i16, i16, i16, i16, float, float, float, float, i16, i16, i16, i16, float, float, float, float, float, float, float, i16, i16, i16, i16, i16, i16, ptr, ptr, ptr, [18 x ptr], i16, i16, [2 x i16], ptr, ptr }
%struct.FreestyleLineSet = type { ptr, ptr, [64 x i8], i32, i32, i16, i16, i32, i32, i32, i32, i32, ptr, ptr }
%struct.StatisicsEntry = type { ptr, ptr, ptr, double, double }

@.str = private unnamed_addr constant [15 x i8] c"BLENDER_RENDER\00", align 1
@RE_engine_id_BLENDER_RENDER = dso_local local_unnamed_addr global ptr @.str, align 8
@.str.1 = private unnamed_addr constant [13 x i8] c"BLENDER_GAME\00", align 1
@RE_engine_id_BLENDER_GAME = dso_local local_unnamed_addr global ptr @.str.1, align 8
@.str.2 = private unnamed_addr constant [7 x i8] c"CYCLES\00", align 1
@RE_engine_id_CYCLES = dso_local local_unnamed_addr global ptr @.str.2, align 8
@MEM_freeN = external local_unnamed_addr global ptr, align 8
@G = external local_unnamed_addr global %struct.Global, align 8
@MEM_dupallocN = external local_unnamed_addr global ptr, align 8
@MEM_callocN = external local_unnamed_addr global ptr, align 8
@.str.3 = private unnamed_addr constant [7 x i8] c"addseq\00", align 1
@U = external global %struct.UserDef, align 8
@.str.4 = private unnamed_addr constant [21 x i8] c"Tool Settings Struct\00", align 1
@.str.5 = private unnamed_addr constant [34 x i8] c"Scene switch: '%s' in file: '%s'\0A\00", align 1
@.str.6 = private unnamed_addr constant [38 x i8] c"Can't find scene: '%s' in file: '%s'\0A\00", align 1
@.str.7 = private unnamed_addr constant [19 x i8] c"BKE_scene_base_add\00", align 1
@.str.8 = private unnamed_addr constant [12 x i8] c"RenderLayer\00", align 1
@.str.9 = private unnamed_addr constant [17 x i8] c"new render layer\00", align 1
@.str.10 = private unnamed_addr constant [5 x i8] c"None\00", align 1
@.str.11 = private unnamed_addr constant [14 x i8] c"sequences_all\00", align 1
@.str.12 = private unnamed_addr constant [29 x i8] c"Thread %d: update object %s\0A\00", align 1
@MEM_mallocN = external local_unnamed_addr global ptr, align 8
@.str.13 = private unnamed_addr constant [25 x i8] c"update thread statistics\00", align 1
@.str.14 = private unnamed_addr constant [40 x i8] c"Thread %d: total %d objects in %f sec.\0A\00", align 1
@.str.15 = private unnamed_addr constant [16 x i8] c"  %s in %f sec\0A\00", align 1

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @free_avicodecdata(ptr noundef %0) local_unnamed_addr #0 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %16, label %3

3:                                                ; preds = %1
  %4 = load ptr, ptr %0, align 8, !tbaa !34
  %5 = icmp eq ptr %4, null
  br i1 %5, label %9, label %6

6:                                                ; preds = %3
  %7 = load ptr, ptr @MEM_freeN, align 8, !tbaa !40
  tail call void %7(ptr noundef nonnull %4) #24
  store ptr null, ptr %0, align 8, !tbaa !34
  %8 = getelementptr inbounds %struct.AviCodecData, ptr %0, i64 0, i32 2
  store i32 0, ptr %8, align 8, !tbaa !41
  br label %9

9:                                                ; preds = %6, %3
  %10 = getelementptr inbounds %struct.AviCodecData, ptr %0, i64 0, i32 1
  %11 = load ptr, ptr %10, align 8, !tbaa !42
  %12 = icmp eq ptr %11, null
  br i1 %12, label %16, label %13

13:                                               ; preds = %9
  %14 = load ptr, ptr @MEM_freeN, align 8, !tbaa !40
  tail call void %14(ptr noundef nonnull %11) #24
  store ptr null, ptr %10, align 8, !tbaa !42
  %15 = getelementptr inbounds %struct.AviCodecData, ptr %0, i64 0, i32 3
  store i32 0, ptr %15, align 4, !tbaa !43
  br label %16

16:                                               ; preds = %9, %13, %1
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @free_qtcodecdata(ptr noundef %0) local_unnamed_addr #0 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %9, label %3

3:                                                ; preds = %1
  %4 = load ptr, ptr %0, align 8, !tbaa !44
  %5 = icmp eq ptr %4, null
  br i1 %5, label %9, label %6

6:                                                ; preds = %3
  %7 = load ptr, ptr @MEM_freeN, align 8, !tbaa !40
  tail call void %7(ptr noundef nonnull %4) #24
  store ptr null, ptr %0, align 8, !tbaa !44
  %8 = getelementptr inbounds %struct.QuicktimeCodecData, ptr %0, i64 0, i32 2
  store i32 0, ptr %8, align 8, !tbaa !46
  br label %9

9:                                                ; preds = %3, %6, %1
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @BKE_scene_copy(ptr noundef %0, i32 noundef %1) local_unnamed_addr #0 {
  %3 = alloca %struct.ListBase, align 8
  %4 = icmp eq i32 %1, 1
  br i1 %4, label %5, label %32

5:                                                ; preds = %2
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %3)
  %6 = load ptr, ptr @G, align 8, !tbaa !47
  %7 = getelementptr inbounds %struct.ID, ptr %0, i64 0, i32 4, i64 2
  %8 = tail call ptr @BKE_scene_add(ptr noundef %6, ptr noundef nonnull %7) #25
  %9 = getelementptr inbounds %struct.Scene, ptr %8, i64 0, i32 22
  %10 = getelementptr inbounds %struct.Scene, ptr %8, i64 0, i32 22, i32 60
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %3, ptr noundef nonnull align 8 dereferenceable(16) %10, i64 16, i1 false), !tbaa.struct !51
  %11 = getelementptr inbounds %struct.Scene, ptr %0, i64 0, i32 22
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(3984) %9, ptr noundef nonnull align 8 dereferenceable(3984) %11, i64 3984, i1 false), !tbaa.struct !52
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %10, ptr noundef nonnull align 8 dereferenceable(16) %3, i64 16, i1 false), !tbaa.struct !51
  %12 = getelementptr inbounds %struct.Scene, ptr %8, i64 0, i32 22, i32 61
  store i16 0, ptr %12, align 8, !tbaa !58
  %13 = getelementptr inbounds %struct.Scene, ptr %8, i64 0, i32 38
  %14 = getelementptr inbounds %struct.Scene, ptr %0, i64 0, i32 38
  %15 = load i64, ptr %14, align 8
  store i64 %15, ptr %13, align 8
  %16 = getelementptr inbounds %struct.Scene, ptr %8, i64 0, i32 40
  %17 = getelementptr inbounds %struct.Scene, ptr %0, i64 0, i32 40
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %16, ptr noundef nonnull align 8 dereferenceable(24) %17, i64 24, i1 false), !tbaa.struct !79
  %18 = getelementptr inbounds %struct.Scene, ptr %8, i64 0, i32 37
  %19 = getelementptr inbounds %struct.Scene, ptr %0, i64 0, i32 37
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(184) %18, ptr noundef nonnull align 8 dereferenceable(184) %19, i64 184, i1 false), !tbaa.struct !80
  %20 = getelementptr inbounds %struct.Scene, ptr %8, i64 0, i32 23
  %21 = getelementptr inbounds %struct.Scene, ptr %0, i64 0, i32 23
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %20, ptr noundef nonnull align 8 dereferenceable(32) %21, i64 32, i1 false), !tbaa.struct !81
  %22 = getelementptr inbounds %struct.ID, ptr %0, i64 0, i32 9
  %23 = load ptr, ptr %22, align 8, !tbaa !82
  %24 = icmp eq ptr %23, null
  br i1 %24, label %28, label %25

25:                                               ; preds = %5
  %26 = tail call ptr @IDP_CopyProperty(ptr noundef nonnull %23) #24
  %27 = getelementptr inbounds %struct.ID, ptr %8, i64 0, i32 9
  store ptr %26, ptr %27, align 8, !tbaa !82
  br label %28

28:                                               ; preds = %25, %5
  %29 = load ptr, ptr @MEM_freeN, align 8, !tbaa !40
  %30 = getelementptr inbounds %struct.Scene, ptr %8, i64 0, i32 20
  %31 = load ptr, ptr %30, align 8, !tbaa !83
  tail call void %29(ptr noundef %31) #24
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %3)
  br label %109

32:                                               ; preds = %2
  %33 = tail call ptr @BKE_libblock_copy(ptr noundef %0) #24
  %34 = getelementptr inbounds %struct.Scene, ptr %33, i64 0, i32 5
  %35 = getelementptr inbounds %struct.Scene, ptr %0, i64 0, i32 5
  tail call void @BLI_duplicatelist(ptr noundef nonnull %34, ptr noundef nonnull %35) #24
  %36 = load ptr, ptr @G, align 8, !tbaa !47
  tail call void @BKE_main_id_clear_newpoins(ptr noundef %36) #24
  %37 = getelementptr inbounds %struct.Scene, ptr %33, i64 0, i32 3
  %38 = load ptr, ptr %37, align 8, !tbaa !84
  tail call void @id_us_plus(ptr noundef %38) #24
  %39 = getelementptr inbounds %struct.Scene, ptr %33, i64 0, i32 4
  %40 = load ptr, ptr %39, align 8, !tbaa !85
  tail call void @id_us_plus(ptr noundef %40) #24
  %41 = getelementptr inbounds %struct.Scene, ptr %33, i64 0, i32 37, i32 11, i32 6
  %42 = load ptr, ptr %41, align 8, !tbaa !86
  tail call void @id_us_plus(ptr noundef %42) #24
  %43 = getelementptr inbounds %struct.Scene, ptr %33, i64 0, i32 19
  store ptr null, ptr %43, align 8, !tbaa !87
  %44 = getelementptr inbounds %struct.Scene, ptr %33, i64 0, i32 7
  store ptr null, ptr %44, align 8, !tbaa !88
  %45 = getelementptr inbounds %struct.Scene, ptr %33, i64 0, i32 21
  store ptr null, ptr %45, align 8, !tbaa !89
  %46 = getelementptr inbounds %struct.Scene, ptr %33, i64 0, i32 30
  %47 = getelementptr inbounds %struct.Scene, ptr %0, i64 0, i32 47
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %46, i8 0, i64 16, i1 false)
  %48 = load ptr, ptr %47, align 8, !tbaa !90
  %49 = icmp eq ptr %48, null
  br i1 %49, label %53, label %50

50:                                               ; preds = %32
  %51 = tail call ptr @BKE_rigidbody_world_copy(ptr noundef nonnull %48) #24
  %52 = getelementptr inbounds %struct.Scene, ptr %33, i64 0, i32 47
  store ptr %51, ptr %52, align 8, !tbaa !90
  br label %53

53:                                               ; preds = %50, %32
  %54 = getelementptr inbounds %struct.Scene, ptr %33, i64 0, i32 24
  %55 = getelementptr inbounds %struct.Scene, ptr %0, i64 0, i32 24
  tail call void @BLI_duplicatelist(ptr noundef nonnull %54, ptr noundef nonnull %55) #24
  %56 = getelementptr inbounds %struct.Scene, ptr %33, i64 0, i32 25
  %57 = getelementptr inbounds %struct.Scene, ptr %0, i64 0, i32 25
  tail call void @BLI_duplicatelist(ptr noundef nonnull %56, ptr noundef nonnull %57) #24
  %58 = getelementptr inbounds %struct.Scene, ptr %33, i64 0, i32 22, i32 60
  %59 = getelementptr inbounds %struct.Scene, ptr %0, i64 0, i32 22, i32 60
  tail call void @BLI_duplicatelist(ptr noundef nonnull %58, ptr noundef nonnull %59) #24
  %60 = getelementptr inbounds %struct.Scene, ptr %33, i64 0, i32 35
  %61 = getelementptr inbounds %struct.Scene, ptr %0, i64 0, i32 35
  tail call void @BKE_keyingsets_copy(ptr noundef nonnull %60, ptr noundef nonnull %61) #24
  %62 = getelementptr inbounds %struct.Scene, ptr %0, i64 0, i32 18
  %63 = load ptr, ptr %62, align 8, !tbaa !91
  %64 = icmp eq ptr %63, null
  br i1 %64, label %68, label %65

65:                                               ; preds = %53
  %66 = tail call ptr @ntreeCopyTree(ptr noundef nonnull %63) #24
  %67 = getelementptr inbounds %struct.Scene, ptr %33, i64 0, i32 18
  store ptr %66, ptr %67, align 8, !tbaa !91
  tail call void @ntreeSwitchID(ptr noundef %66, ptr noundef nonnull %0, ptr noundef nonnull %33) #24
  br label %68

68:                                               ; preds = %65, %53
  %69 = load ptr, ptr %34, align 8, !tbaa !40
  %70 = icmp eq ptr %69, null
  br i1 %70, label %86, label %71

71:                                               ; preds = %68
  %72 = getelementptr inbounds %struct.Scene, ptr %0, i64 0, i32 6
  %73 = getelementptr inbounds %struct.Scene, ptr %33, i64 0, i32 6
  br label %74

74:                                               ; preds = %71, %83
  %75 = phi ptr [ %69, %71 ], [ %84, %83 ]
  %76 = phi ptr [ %35, %71 ], [ %77, %83 ]
  %77 = load ptr, ptr %76, align 8, !tbaa !40
  %78 = getelementptr inbounds %struct.Base, ptr %75, i64 0, i32 7
  %79 = load ptr, ptr %78, align 8, !tbaa !92
  tail call void @id_us_plus(ptr noundef %79) #24
  %80 = load ptr, ptr %72, align 8, !tbaa !94
  %81 = icmp eq ptr %77, %80
  br i1 %81, label %82, label %83

82:                                               ; preds = %74
  store ptr %75, ptr %73, align 8, !tbaa !94
  br label %83

83:                                               ; preds = %82, %74
  %84 = load ptr, ptr %75, align 8, !tbaa !40
  %85 = icmp eq ptr %84, null
  br i1 %85, label %86, label %74, !llvm.loop !95

86:                                               ; preds = %83, %68
  %87 = getelementptr inbounds %struct.Scene, ptr %33, i64 0, i32 45
  %88 = getelementptr inbounds %struct.Scene, ptr %0, i64 0, i32 45
  tail call void @BKE_color_managed_display_settings_copy(ptr noundef nonnull %87, ptr noundef nonnull %88) #24
  %89 = getelementptr inbounds %struct.Scene, ptr %33, i64 0, i32 44
  %90 = getelementptr inbounds %struct.Scene, ptr %0, i64 0, i32 44
  tail call void @BKE_color_managed_view_settings_copy(ptr noundef nonnull %89, ptr noundef nonnull %90) #24
  %91 = getelementptr inbounds %struct.Scene, ptr %33, i64 0, i32 22, i32 0, i32 14
  %92 = getelementptr inbounds %struct.Scene, ptr %0, i64 0, i32 22, i32 0, i32 14
  tail call void @BKE_color_managed_view_settings_copy(ptr noundef nonnull %91, ptr noundef nonnull %92) #24
  %93 = getelementptr inbounds %struct.Scene, ptr %33, i64 0, i32 46
  %94 = getelementptr inbounds %struct.Scene, ptr %0, i64 0, i32 46
  %95 = tail call ptr @BLI_strncpy(ptr noundef nonnull %93, ptr noundef nonnull %94, i64 noundef 64) #24
  tail call void @BKE_copy_animdata_id_action(ptr noundef %33) #24
  %96 = icmp eq i32 %1, 4
  br i1 %96, label %98, label %97

97:                                               ; preds = %86
  tail call fastcc void @remove_sequencer_fcurves(ptr noundef %33) #25
  br label %98

98:                                               ; preds = %97, %86
  %99 = load ptr, ptr %59, align 8, !tbaa !40
  %100 = icmp eq ptr %99, null
  br i1 %100, label %109, label %101

101:                                              ; preds = %98, %101
  %102 = phi ptr [ %107, %101 ], [ %99, %98 ]
  %103 = phi ptr [ %104, %101 ], [ %58, %98 ]
  %104 = load ptr, ptr %103, align 8, !tbaa !40
  %105 = getelementptr inbounds %struct.SceneRenderLayer, ptr %104, i64 0, i32 13
  %106 = getelementptr inbounds %struct.SceneRenderLayer, ptr %102, i64 0, i32 13
  tail call void @BKE_freestyle_config_copy(ptr noundef nonnull %105, ptr noundef nonnull %106) #24
  %107 = load ptr, ptr %102, align 8, !tbaa !40
  %108 = icmp eq ptr %107, null
  br i1 %108, label %109, label %101, !llvm.loop !97

109:                                              ; preds = %101, %98, %28
  %110 = phi ptr [ %8, %28 ], [ %33, %98 ], [ %33, %101 ]
  %111 = load ptr, ptr @MEM_dupallocN, align 8, !tbaa !40
  %112 = getelementptr inbounds %struct.Scene, ptr %0, i64 0, i32 20
  %113 = load ptr, ptr %112, align 8, !tbaa !83
  %114 = tail call ptr %111(ptr noundef %113) #24
  %115 = getelementptr inbounds %struct.Scene, ptr %110, i64 0, i32 20
  store ptr %114, ptr %115, align 8, !tbaa !83
  %116 = icmp eq ptr %114, null
  br i1 %116, label %145, label %117

117:                                              ; preds = %109
  %118 = load ptr, ptr %114, align 8, !tbaa !98
  %119 = icmp eq ptr %118, null
  br i1 %119, label %124, label %120

120:                                              ; preds = %117
  %121 = load ptr, ptr @MEM_dupallocN, align 8, !tbaa !40
  %122 = tail call ptr %121(ptr noundef nonnull %118) #24
  store ptr %122, ptr %114, align 8, !tbaa !98
  %123 = getelementptr inbounds %struct.VPaint, ptr %122, i64 0, i32 4
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %123, i8 0, i64 24, i1 false)
  tail call void @BKE_paint_copy(ptr noundef %122, ptr noundef %122) #24
  br label %124

124:                                              ; preds = %120, %117
  %125 = getelementptr inbounds %struct.ToolSettings, ptr %114, i64 0, i32 1
  %126 = load ptr, ptr %125, align 8, !tbaa !105
  %127 = icmp eq ptr %126, null
  br i1 %127, label %132, label %128

128:                                              ; preds = %124
  %129 = load ptr, ptr @MEM_dupallocN, align 8, !tbaa !40
  %130 = tail call ptr %129(ptr noundef nonnull %126) #24
  store ptr %130, ptr %125, align 8, !tbaa !105
  %131 = getelementptr inbounds %struct.VPaint, ptr %130, i64 0, i32 4
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %131, i8 0, i64 24, i1 false)
  tail call void @BKE_paint_copy(ptr noundef %130, ptr noundef %130) #24
  br label %132

132:                                              ; preds = %128, %124
  %133 = getelementptr inbounds %struct.ToolSettings, ptr %114, i64 0, i32 2
  %134 = load ptr, ptr %133, align 8, !tbaa !106
  %135 = icmp eq ptr %134, null
  br i1 %135, label %139, label %136

136:                                              ; preds = %132
  %137 = load ptr, ptr @MEM_dupallocN, align 8, !tbaa !40
  %138 = tail call ptr %137(ptr noundef nonnull %134) #24
  store ptr %138, ptr %133, align 8, !tbaa !106
  tail call void @BKE_paint_copy(ptr noundef %138, ptr noundef %138) #24
  br label %139

139:                                              ; preds = %136, %132
  %140 = getelementptr inbounds %struct.ToolSettings, ptr %114, i64 0, i32 17
  tail call void @BKE_paint_copy(ptr noundef nonnull %140, ptr noundef nonnull %140) #24
  %141 = getelementptr inbounds %struct.ToolSettings, ptr %114, i64 0, i32 17, i32 7
  store ptr null, ptr %141, align 8, !tbaa !107
  %142 = getelementptr inbounds %struct.ToolSettings, ptr %114, i64 0, i32 17, i32 8
  %143 = load ptr, ptr %142, align 8, !tbaa !108
  tail call void @id_us_plus(ptr noundef %143) #24
  %144 = getelementptr inbounds %struct.ToolSettings, ptr %114, i64 0, i32 18, i32 5
  store ptr null, ptr %144, align 8, !tbaa !109
  br label %145

145:                                              ; preds = %139, %109
  %146 = getelementptr inbounds %struct.Scene, ptr %0, i64 0, i32 22, i32 1
  %147 = load ptr, ptr %146, align 8, !tbaa !110
  %148 = icmp eq ptr %147, null
  br i1 %148, label %163, label %149

149:                                              ; preds = %145
  %150 = load ptr, ptr @MEM_dupallocN, align 8, !tbaa !40
  %151 = tail call ptr %150(ptr noundef nonnull %147) #24
  %152 = getelementptr inbounds %struct.Scene, ptr %110, i64 0, i32 22, i32 1
  store ptr %151, ptr %152, align 8, !tbaa !110
  %153 = load ptr, ptr @MEM_dupallocN, align 8, !tbaa !40
  %154 = load ptr, ptr %151, align 8, !tbaa !34
  %155 = tail call ptr %153(ptr noundef %154) #24
  %156 = load ptr, ptr %152, align 8, !tbaa !110
  store ptr %155, ptr %156, align 8, !tbaa !34
  %157 = load ptr, ptr @MEM_dupallocN, align 8, !tbaa !40
  %158 = getelementptr inbounds %struct.AviCodecData, ptr %156, i64 0, i32 1
  %159 = load ptr, ptr %158, align 8, !tbaa !42
  %160 = tail call ptr %157(ptr noundef %159) #24
  %161 = load ptr, ptr %152, align 8, !tbaa !110
  %162 = getelementptr inbounds %struct.AviCodecData, ptr %161, i64 0, i32 1
  store ptr %160, ptr %162, align 8, !tbaa !42
  br label %163

163:                                              ; preds = %149, %145
  %164 = getelementptr inbounds %struct.Scene, ptr %0, i64 0, i32 22, i32 2
  %165 = load ptr, ptr %164, align 8, !tbaa !111
  %166 = icmp eq ptr %165, null
  br i1 %166, label %175, label %167

167:                                              ; preds = %163
  %168 = load ptr, ptr @MEM_dupallocN, align 8, !tbaa !40
  %169 = tail call ptr %168(ptr noundef nonnull %165) #24
  %170 = getelementptr inbounds %struct.Scene, ptr %110, i64 0, i32 22, i32 2
  store ptr %169, ptr %170, align 8, !tbaa !111
  %171 = load ptr, ptr @MEM_dupallocN, align 8, !tbaa !40
  %172 = load ptr, ptr %169, align 8, !tbaa !44
  %173 = tail call ptr %171(ptr noundef %172) #24
  %174 = load ptr, ptr %170, align 8, !tbaa !111
  store ptr %173, ptr %174, align 8, !tbaa !44
  br label %175

175:                                              ; preds = %167, %163
  %176 = getelementptr inbounds %struct.Scene, ptr %0, i64 0, i32 22, i32 4, i32 16
  %177 = load ptr, ptr %176, align 8, !tbaa !112
  %178 = icmp eq ptr %177, null
  br i1 %178, label %182, label %179

179:                                              ; preds = %175
  %180 = tail call ptr @IDP_CopyProperty(ptr noundef nonnull %177) #24
  %181 = getelementptr inbounds %struct.Scene, ptr %110, i64 0, i32 22, i32 4, i32 16
  store ptr %180, ptr %181, align 8, !tbaa !112
  br label %182

182:                                              ; preds = %179, %175
  %183 = icmp eq i32 %1, 4
  %184 = add i32 %1, -3
  %185 = icmp ult i32 %184, 2
  br i1 %185, label %187, label %186

186:                                              ; preds = %182
  tail call void @sound_create_scene(ptr noundef nonnull %110) #24
  br label %215

187:                                              ; preds = %182
  %188 = getelementptr inbounds %struct.Scene, ptr %110, i64 0, i32 2
  %189 = load ptr, ptr %188, align 8, !tbaa !113
  %190 = icmp eq ptr %189, null
  br i1 %190, label %196, label %191

191:                                              ; preds = %187
  %192 = getelementptr inbounds %struct.ID, ptr %189, i64 0, i32 2
  %193 = load ptr, ptr %192, align 8, !tbaa !114
  %194 = icmp eq ptr %193, null
  br i1 %194, label %196, label %195

195:                                              ; preds = %191
  store ptr %193, ptr %188, align 8, !tbaa !113
  br label %196

196:                                              ; preds = %187, %191, %195
  tail call void @sound_create_scene(ptr noundef nonnull %110) #24
  br i1 %183, label %197, label %215

197:                                              ; preds = %196
  %198 = getelementptr inbounds %struct.Scene, ptr %110, i64 0, i32 3
  %199 = load ptr, ptr %198, align 8, !tbaa !84
  %200 = icmp eq ptr %199, null
  br i1 %200, label %204, label %201

201:                                              ; preds = %197
  tail call void @id_us_plus(ptr noundef nonnull %199) #24
  %202 = load ptr, ptr %198, align 8, !tbaa !84
  %203 = tail call ptr @BKE_world_copy(ptr noundef %202) #24
  store ptr %203, ptr %198, align 8, !tbaa !84
  tail call void @BKE_copy_animdata_id_action(ptr noundef %203) #24
  br label %204

204:                                              ; preds = %201, %197
  %205 = getelementptr inbounds %struct.Scene, ptr %0, i64 0, i32 19
  %206 = load ptr, ptr %205, align 8, !tbaa !87
  %207 = icmp eq ptr %206, null
  br i1 %207, label %215, label %208

208:                                              ; preds = %204
  %209 = load ptr, ptr @MEM_callocN, align 8, !tbaa !40
  %210 = tail call ptr %209(i64 noundef 2128, ptr noundef nonnull @.str.3) #24
  %211 = getelementptr inbounds %struct.Scene, ptr %110, i64 0, i32 19
  store ptr %210, ptr %211, align 8, !tbaa !87
  %212 = getelementptr inbounds %struct.Editing, ptr %210, i64 0, i32 1
  store ptr %212, ptr %210, align 8, !tbaa !117
  %213 = load ptr, ptr %205, align 8, !tbaa !87
  %214 = getelementptr inbounds %struct.Editing, ptr %213, i64 0, i32 1
  tail call void @BKE_sequence_base_dupli_recursive(ptr noundef nonnull %0, ptr noundef nonnull %110, ptr noundef nonnull %212, ptr noundef nonnull %214, i32 noundef 8) #24
  br label %215

215:                                              ; preds = %186, %204, %208, %196
  ret ptr %110
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @BKE_scene_add(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = tail call ptr @BKE_libblock_alloc(ptr noundef %0, i16 noundef signext 17235, ptr noundef %1) #24
  %4 = getelementptr inbounds %struct.Scene, ptr %3, i64 0, i32 13
  store i32 1, ptr %4, align 4, !tbaa !119
  %5 = getelementptr inbounds %struct.Scene, ptr %3, i64 0, i32 12
  store i32 1, ptr %5, align 8, !tbaa !120
  %6 = getelementptr inbounds %struct.Scene, ptr %3, i64 0, i32 22
  %7 = getelementptr inbounds %struct.Scene, ptr %3, i64 0, i32 22, i32 47
  store i32 2162711, ptr %7, align 8, !tbaa !121
  %8 = getelementptr inbounds %struct.Scene, ptr %3, i64 0, i32 22, i32 5
  store i32 1, ptr %8, align 8, !tbaa !122
  %9 = getelementptr inbounds %struct.Scene, ptr %3, i64 0, i32 22, i32 6
  store i32 1, ptr %9, align 4, !tbaa !123
  %10 = getelementptr inbounds %struct.Scene, ptr %3, i64 0, i32 22, i32 7
  store i32 250, ptr %10, align 8, !tbaa !124
  %11 = getelementptr inbounds %struct.Scene, ptr %3, i64 0, i32 22, i32 26
  store i32 1, ptr %11, align 4, !tbaa !125
  %12 = getelementptr inbounds %struct.Scene, ptr %3, i64 0, i32 22, i32 33
  store i32 1920, ptr %12, align 4, !tbaa !126
  %13 = getelementptr inbounds %struct.Scene, ptr %3, i64 0, i32 22, i32 34
  store i32 1080, ptr %13, align 8, !tbaa !127
  %14 = getelementptr inbounds %struct.Scene, ptr %3, i64 0, i32 22, i32 63
  %15 = getelementptr inbounds %struct.Scene, ptr %3, i64 0, i32 22, i32 37
  store i32 256, ptr %15, align 8, !tbaa !128
  %16 = getelementptr inbounds %struct.Scene, ptr %3, i64 0, i32 22, i32 38
  store i32 256, ptr %16, align 4, !tbaa !129
  %17 = getelementptr inbounds %struct.Scene, ptr %3, i64 0, i32 22, i32 62
  store i16 1, ptr %17, align 2, !tbaa !130
  %18 = getelementptr inbounds %struct.Scene, ptr %3, i64 0, i32 22, i32 29
  store i16 6, ptr %18, align 4, !tbaa !131
  %19 = getelementptr inbounds %struct.Scene, ptr %3, i64 0, i32 22, i32 30
  store i16 50, ptr %19, align 2, !tbaa !132
  %20 = getelementptr inbounds %struct.Scene, ptr %3, i64 0, i32 22, i32 0, i32 2
  store i8 32, ptr %20, align 2, !tbaa !133
  store i8 17, ptr %6, align 8, !tbaa !134
  %21 = getelementptr inbounds %struct.Scene, ptr %3, i64 0, i32 22, i32 0, i32 1
  store i8 2, ptr %21, align 1, !tbaa !135
  %22 = getelementptr inbounds %struct.Scene, ptr %3, i64 0, i32 22, i32 0, i32 4
  store i8 90, ptr %22, align 4, !tbaa !136
  %23 = getelementptr inbounds %struct.Scene, ptr %3, i64 0, i32 22, i32 0, i32 5
  store i8 15, ptr %23, align 1, !tbaa !137
  %24 = getelementptr inbounds %struct.Scene, ptr %3, i64 0, i32 22, i32 43
  store i16 1, ptr %24, align 8, !tbaa !138
  %25 = getelementptr inbounds %struct.Scene, ptr %3, i64 0, i32 22, i32 12
  store i32 100, ptr %25, align 4, !tbaa !139
  %26 = getelementptr inbounds %struct.Scene, ptr %3, i64 0, i32 22, i32 11
  store i32 100, ptr %26, align 8, !tbaa !140
  %27 = getelementptr inbounds %struct.Scene, ptr %3, i64 0, i32 22, i32 15
  store <2 x float> <float 1.000000e+00, float 5.000000e-01>, ptr %27, align 4, !tbaa !55
  %28 = getelementptr inbounds %struct.Scene, ptr %3, i64 0, i32 22, i32 55
  store i16 24, ptr %28, align 4, !tbaa !141
  %29 = getelementptr inbounds %struct.Scene, ptr %3, i64 0, i32 22, i32 56
  store i16 10, ptr %29, align 2, !tbaa !142
  %30 = getelementptr inbounds %struct.Scene, ptr %3, i64 0, i32 22, i32 51
  store i16 128, ptr %30, align 4, !tbaa !143
  %31 = getelementptr inbounds %struct.Scene, ptr %3, i64 0, i32 22, i32 67
  %32 = load i32, ptr %31, align 4, !tbaa !144
  %33 = or i32 %32, 1
  store i32 %33, ptr %31, align 4, !tbaa !144
  store <4 x float> <float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float 1.000000e+00>, ptr %14, align 4, !tbaa !55
  %34 = getelementptr inbounds %struct.Scene, ptr %3, i64 0, i32 22, i32 68
  store <2 x float> <float 1.000000e+00, float 0.000000e+00>, ptr %34, align 8, !tbaa !55
  %35 = getelementptr inbounds %struct.Scene, ptr %3, i64 0, i32 22, i32 70
  store float 1.000000e+00, ptr %35, align 8, !tbaa !145
  %36 = getelementptr inbounds %struct.Scene, ptr %3, i64 0, i32 22, i32 72
  store <4 x i16> <i16 5, i16 16, i16 1, i16 1>, ptr %36, align 8, !tbaa !54
  %37 = getelementptr inbounds %struct.Scene, ptr %3, i64 0, i32 22, i32 76
  store i16 3, ptr %37, align 8, !tbaa !146
  %38 = getelementptr inbounds %struct.Scene, ptr %3, i64 0, i32 22, i32 80
  store i16 256, ptr %38, align 4, !tbaa !147
  %39 = getelementptr inbounds %struct.Scene, ptr %3, i64 0, i32 22, i32 79
  store float 0x3F50624DE0000000, ptr %39, align 8, !tbaa !148
  %40 = getelementptr inbounds %struct.Scene, ptr %3, i64 0, i32 22, i32 116
  %41 = getelementptr inbounds %struct.Scene, ptr %3, i64 0, i32 22, i32 116, i32 2
  store <4 x i16> <i16 512, i16 512, i16 16, i16 1>, ptr %41, align 8, !tbaa !54
  %42 = getelementptr inbounds %struct.Scene, ptr %3, i64 0, i32 22, i32 116, i32 8
  store <4 x i8> <i8 0, i8 1, i8 2, i8 3>, ptr %42, align 8, !tbaa !53
  %43 = getelementptr inbounds %struct.Scene, ptr %3, i64 0, i32 22, i32 116, i32 1
  %44 = tail call ptr @BLI_strncpy(ptr noundef nonnull %43, ptr noundef nonnull getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 7), i64 noundef 1024) #24
  %45 = getelementptr inbounds %struct.Scene, ptr %3, i64 0, i32 22, i32 116, i32 0, i32 2
  store i8 32, ptr %45, align 2, !tbaa !149
  store i8 17, ptr %40, align 8, !tbaa !150
  %46 = getelementptr inbounds %struct.Scene, ptr %3, i64 0, i32 22, i32 116, i32 0, i32 1
  store i8 2, ptr %46, align 1, !tbaa !151
  %47 = getelementptr inbounds %struct.Scene, ptr %3, i64 0, i32 22, i32 116, i32 0, i32 4
  store i8 90, ptr %47, align 4, !tbaa !152
  %48 = getelementptr inbounds %struct.Scene, ptr %3, i64 0, i32 22, i32 116, i32 0, i32 5
  store i8 15, ptr %48, align 1, !tbaa !153
  %49 = getelementptr inbounds %struct.Scene, ptr %3, i64 0, i32 22, i32 46
  store i32 81, ptr %49, align 4, !tbaa !154
  %50 = getelementptr inbounds %struct.Scene, ptr %3, i64 0, i32 22, i32 85
  store i32 1311, ptr %50, align 8, !tbaa !155
  %51 = getelementptr inbounds %struct.Scene, ptr %3, i64 0, i32 22, i32 86
  store i16 12, ptr %51, align 4, !tbaa !156
  %52 = getelementptr inbounds %struct.Scene, ptr %3, i64 0, i32 22, i32 89
  store <4 x float> <float 0x3FE99999A0000000, float 0x3FE99999A0000000, float 0x3FE99999A0000000, float 1.000000e+00>, ptr %52, align 8, !tbaa !55
  %53 = getelementptr inbounds %struct.Scene, ptr %3, i64 0, i32 22, i32 90
  store <4 x float> <float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 2.500000e-01>, ptr %53, align 8, !tbaa !55
  %54 = getelementptr inbounds %struct.Scene, ptr %3, i64 0, i32 22, i32 48
  store i32 2, ptr %54, align 4, !tbaa !157
  %55 = getelementptr inbounds %struct.Scene, ptr %3, i64 0, i32 22, i32 91
  store i8 3, ptr %55, align 8, !tbaa !158
  %56 = getelementptr inbounds %struct.Scene, ptr %3, i64 0, i32 22, i32 92
  store i8 3, ptr %56, align 1, !tbaa !159
  %57 = getelementptr inbounds %struct.Scene, ptr %3, i64 0, i32 22, i32 93
  store i8 1, ptr %57, align 2, !tbaa !160
  %58 = getelementptr inbounds %struct.Scene, ptr %3, i64 0, i32 22, i32 14
  store i16 1, ptr %58, align 2, !tbaa !161
  %59 = getelementptr inbounds %struct.Scene, ptr %3, i64 0, i32 22, i32 96
  store i16 6, ptr %59, align 4, !tbaa !162
  %60 = getelementptr inbounds %struct.Scene, ptr %3, i64 0, i32 22, i32 98
  %61 = getelementptr inbounds %struct.Scene, ptr %3, i64 0, i32 22, i32 97
  store i16 16, ptr %61, align 2, !tbaa !163
  store <2 x float> <float 1.000000e+00, float 1.000000e+00>, ptr %60, align 8, !tbaa !55
  %62 = getelementptr inbounds %struct.Scene, ptr %3, i64 0, i32 22, i32 58
  store <4 x float> <float 0.000000e+00, float 1.000000e+00, float 0.000000e+00, float 1.000000e+00>, ptr %62, align 8, !tbaa !55
  %63 = getelementptr inbounds %struct.Scene, ptr %3, i64 0, i32 22, i32 117
  store i32 64, ptr %63, align 8, !tbaa !164
  %64 = getelementptr inbounds %struct.Scene, ptr %3, i64 0, i32 22, i32 113
  store i32 1, ptr %64, align 8, !tbaa !165
  %65 = getelementptr inbounds %struct.Scene, ptr %3, i64 0, i32 22, i32 114
  store float 1.000000e+00, ptr %65, align 4, !tbaa !166
  %66 = load ptr, ptr @MEM_callocN, align 8, !tbaa !40
  %67 = tail call ptr %66(i64 noundef 648, ptr noundef nonnull @.str.4) #24
  %68 = getelementptr inbounds %struct.Scene, ptr %3, i64 0, i32 20
  store ptr %67, ptr %68, align 8, !tbaa !83
  %69 = getelementptr inbounds %struct.ToolSettings, ptr %67, i64 0, i32 5
  %70 = getelementptr inbounds %struct.ToolSettings, ptr %67, i64 0, i32 13
  store float 0x3F50624DE0000000, ptr %70, align 4, !tbaa !167
  %71 = getelementptr inbounds %struct.ToolSettings, ptr %67, i64 0, i32 9
  store i8 1, ptr %71, align 8, !tbaa !168
  %72 = getelementptr inbounds %struct.ToolSettings, ptr %67, i64 0, i32 20
  store float 0x3F847AE140000000, ptr %72, align 4, !tbaa !169
  %73 = getelementptr inbounds %struct.ToolSettings, ptr %67, i64 0, i32 8
  store i16 1, ptr %73, align 2, !tbaa !170
  %74 = getelementptr inbounds %struct.ToolSettings, ptr %67, i64 0, i32 12
  store i8 1, ptr %74, align 1, !tbaa !171
  store <2 x float> <float 0x3F50624DE0000000, float 0x3FB99999A0000000>, ptr %69, align 4, !tbaa !55
  %75 = load i16, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 91), align 8, !tbaa !172
  %76 = getelementptr inbounds %struct.ToolSettings, ptr %67, i64 0, i32 21
  store i16 %75, ptr %76, align 8, !tbaa !176
  %77 = getelementptr inbounds %struct.ToolSettings, ptr %67, i64 0, i32 52
  store i8 8, ptr %77, align 8, !tbaa !177
  %78 = getelementptr inbounds %struct.ToolSettings, ptr %67, i64 0, i32 25
  store i16 100, ptr %78, align 2, !tbaa !178
  %79 = getelementptr inbounds %struct.ToolSettings, ptr %67, i64 0, i32 26
  %80 = getelementptr inbounds %struct.ToolSettings, ptr %67, i64 0, i32 30
  store <4 x float> <float 0x3F847AE140000000, float 0x3F847AE140000000, float 0x3FF4CCCCC0000000, float 1.500000e+00>, ptr %79, align 8, !tbaa !55
  store <2 x float> <float 4.500000e+01, float 0x3FEF5C2900000000>, ptr %80, align 8, !tbaa !55
  %81 = getelementptr inbounds %struct.ToolSettings, ptr %67, i64 0, i32 32
  store float 0x3FB99999A0000000, ptr %81, align 8, !tbaa !179
  %82 = getelementptr inbounds %struct.ToolSettings, ptr %67, i64 0, i32 37
  store i8 0, ptr %82, align 2, !tbaa !180
  %83 = getelementptr inbounds %struct.ToolSettings, ptr %67, i64 0, i32 38
  store i8 1, ptr %83, align 1, !tbaa !181
  %84 = getelementptr inbounds %struct.ToolSettings, ptr %67, i64 0, i32 36
  store i16 707, ptr %84, align 8, !tbaa !182
  %85 = getelementptr inbounds %struct.ToolSettings, ptr %67, i64 0, i32 39
  store i8 2, ptr %85, align 4, !tbaa !53
  %86 = load ptr, ptr %68, align 8, !tbaa !83
  %87 = getelementptr inbounds %struct.ToolSettings, ptr %86, i64 0, i32 39, i64 1
  store i8 0, ptr %87, align 1, !tbaa !53
  %88 = load ptr, ptr %68, align 8, !tbaa !83
  %89 = getelementptr inbounds %struct.ToolSettings, ptr %88, i64 0, i32 39, i64 2
  store i8 1, ptr %89, align 2, !tbaa !53
  %90 = load ptr, ptr %68, align 8, !tbaa !83
  %91 = getelementptr inbounds %struct.ToolSettings, ptr %90, i64 0, i32 74, i32 2
  store i8 5, ptr %91, align 1, !tbaa !183
  %92 = getelementptr inbounds %struct.ToolSettings, ptr %90, i64 0, i32 74, i32 3
  store <2 x float> <float 0.000000e+00, float 0x3FE921FB60000000>, ptr %92, align 4, !tbaa !55
  %93 = getelementptr inbounds %struct.ToolSettings, ptr %90, i64 0, i32 74, i32 6
  store float 0x3FB99999A0000000, ptr %93, align 8, !tbaa !184
  %94 = getelementptr inbounds %struct.ToolSettings, ptr %90, i64 0, i32 74, i32 7
  store i8 1, ptr %94, align 4, !tbaa !185
  %95 = getelementptr inbounds %struct.ToolSettings, ptr %90, i64 0, i32 74, i32 9
  store <4 x float> <float 0x3FB6571840000000, float 0x3FE921FB60000000, float 0x3FF921FB60000000, float 0x400921FB60000000>, ptr %95, align 8, !tbaa !55
  %96 = getelementptr inbounds %struct.ToolSettings, ptr %90, i64 0, i32 19
  store float 1.000000e+00, ptr %96, align 8, !tbaa !186
  %97 = getelementptr inbounds %struct.ToolSettings, ptr %90, i64 0, i32 17, i32 0, i32 4
  %98 = load i32, ptr %97, align 4, !tbaa !187
  %99 = or i32 %98, 1
  store i32 %99, ptr %97, align 4, !tbaa !187
  %100 = getelementptr inbounds %struct.ToolSettings, ptr %90, i64 0, i32 17, i32 4
  store i16 80, ptr %100, align 2, !tbaa !188
  %101 = getelementptr inbounds %struct.ToolSettings, ptr %90, i64 0, i32 17, i32 3
  store i16 2, ptr %101, align 4, !tbaa !189
  %102 = getelementptr inbounds %struct.Scene, ptr %3, i64 0, i32 40
  store <2 x float> zeroinitializer, ptr %102, align 8, !tbaa !55
  %103 = getelementptr inbounds %struct.Scene, ptr %3, i64 0, i32 40, i32 0, i64 2
  store float 0xC0239EB860000000, ptr %103, align 8, !tbaa !55
  %104 = getelementptr inbounds %struct.Scene, ptr %3, i64 0, i32 40, i32 1
  store i32 1, ptr %104, align 4, !tbaa !190
  %105 = getelementptr inbounds %struct.Scene, ptr %3, i64 0, i32 38
  store float 1.000000e+00, ptr %105, align 8, !tbaa !191
  %106 = getelementptr inbounds %struct.ToolSettings, ptr %90, i64 0, i32 18
  %107 = getelementptr inbounds %struct.ToolSettings, ptr %90, i64 0, i32 18, i32 6
  store float 2.500000e-01, ptr %107, align 8, !tbaa !192
  store <4 x i16> <i16 263, i16 5, i16 5, i16 -1>, ptr %106, align 8, !tbaa !54
  %108 = getelementptr inbounds %struct.ToolSettings, ptr %90, i64 0, i32 18, i32 10
  store i32 2, ptr %108, align 8, !tbaa !193
  %109 = getelementptr inbounds %struct.ToolSettings, ptr %90, i64 0, i32 18, i32 11
  store i32 2, ptr %109, align 4, !tbaa !194
  %110 = getelementptr inbounds %struct.ToolSettings, ptr %90, i64 0, i32 18, i32 8
  store i32 1, ptr %110, align 8, !tbaa !195
  br label %111

111:                                              ; preds = %2, %111
  %112 = phi i64 [ 0, %2 ], [ %117, %111 ]
  %113 = getelementptr inbounds %struct.ToolSettings, ptr %90, i64 0, i32 18, i32 4, i64 %112
  %114 = getelementptr inbounds %struct.ToolSettings, ptr %90, i64 0, i32 18, i32 4, i64 %112, i32 5
  store float 5.000000e-01, ptr %114, align 4, !tbaa !196
  store i16 50, ptr %113, align 8, !tbaa !198
  %115 = getelementptr inbounds %struct.ToolSettings, ptr %90, i64 0, i32 18, i32 4, i64 %112, i32 1
  store i16 10, ptr %115, align 2, !tbaa !199
  %116 = getelementptr inbounds %struct.ToolSettings, ptr %90, i64 0, i32 18, i32 4, i64 %112, i32 3
  store i16 10, ptr %116, align 2, !tbaa !200
  %117 = add nuw nsw i64 %112, 1
  %118 = icmp eq i64 %117, 6
  br i1 %118, label %119, label %111, !llvm.loop !201

119:                                              ; preds = %111
  %120 = getelementptr inbounds %struct.ToolSettings, ptr %90, i64 0, i32 18, i32 4, i64 1, i32 5
  store float 1.000000e+02, ptr %120, align 4, !tbaa !196
  %121 = getelementptr inbounds %struct.Scene, ptr %3, i64 0, i32 22, i32 4, i32 5
  store i32 44100, ptr %121, align 4, !tbaa !202
  %122 = getelementptr inbounds %struct.Scene, ptr %3, i64 0, i32 22, i32 4, i32 8
  store float 1.000000e+00, ptr %122, align 8, !tbaa !203
  %123 = getelementptr inbounds %struct.Scene, ptr %3, i64 0, i32 22, i32 4, i32 4
  store i32 192, ptr %123, align 8, !tbaa !204
  %124 = getelementptr inbounds %struct.Scene, ptr %3, i64 0, i32 22, i32 4, i32 6
  store i32 2, ptr %124, align 8, !tbaa !205
  %125 = getelementptr inbounds %struct.Scene, ptr %3, i64 0, i32 22, i32 115
  %126 = load ptr, ptr @RE_engine_id_BLENDER_RENDER, align 8, !tbaa !40
  %127 = tail call ptr @BLI_strncpy(ptr noundef nonnull %125, ptr noundef %126, i64 noundef 32) #24
  %128 = getelementptr inbounds %struct.Scene, ptr %3, i64 0, i32 23, i32 4
  store i32 2, ptr %128, align 8, !tbaa !206
  %129 = getelementptr inbounds %struct.Scene, ptr %3, i64 0, i32 23, i32 2
  store <2 x float> <float 0x407574CCC0000000, float 1.000000e+00>, ptr %129, align 8, !tbaa !55
  %130 = getelementptr inbounds %struct.Scene, ptr %3, i64 0, i32 23, i32 7
  store float 1.000000e+00, ptr %130, align 8, !tbaa !207
  %131 = getelementptr inbounds %struct.Scene, ptr %3, i64 0, i32 22, i32 84
  %132 = tail call ptr @BLI_strncpy(ptr noundef nonnull %131, ptr noundef nonnull getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 7), i64 noundef 1024) #24
  %133 = getelementptr inbounds %struct.Scene, ptr %3, i64 0, i32 22, i32 57
  tail call void @BLI_rctf_init(ptr noundef nonnull %133, float noundef 0x3FB99999A0000000, float noundef 0x3FECCCCCC0000000, float noundef 0x3FB99999A0000000, float noundef 0x3FECCCCCC0000000) #24
  %134 = getelementptr inbounds %struct.Scene, ptr %3, i64 0, i32 22, i32 54
  store i16 8, ptr %134, align 2, !tbaa !208
  %135 = tail call ptr @BKE_scene_add_render_layer(ptr noundef %3, ptr noundef null) #25
  %136 = getelementptr inbounds %struct.Scene, ptr %3, i64 0, i32 37, i32 12
  store i16 1, ptr %136, align 8, !tbaa !209
  %137 = getelementptr inbounds %struct.Scene, ptr %3, i64 0, i32 37, i32 13
  store i16 5, ptr %137, align 2, !tbaa !210
  %138 = getelementptr inbounds %struct.Scene, ptr %3, i64 0, i32 37, i32 14
  %139 = getelementptr inbounds %struct.Scene, ptr %3, i64 0, i32 37, i32 11
  %140 = getelementptr inbounds %struct.Scene, ptr %3, i64 0, i32 37, i32 11, i32 4
  store float 1.000000e+00, ptr %140, align 8, !tbaa !211
  store <4 x i16> <i16 4, i16 1, i16 180, i16 0>, ptr %139, align 8, !tbaa !54
  %141 = getelementptr inbounds %struct.Scene, ptr %3, i64 0, i32 37, i32 2
  store <4 x i16> <i16 640, i16 480, i16 60, i16 32>, ptr %141, align 2, !tbaa !54
  %142 = getelementptr inbounds %struct.Scene, ptr %3, i64 0, i32 37, i32 16
  store float 0x40239999A0000000, ptr %142, align 8, !tbaa !212
  %143 = getelementptr inbounds %struct.Scene, ptr %3, i64 0, i32 37, i32 22
  store i16 5, ptr %143, align 2, !tbaa !213
  %144 = getelementptr inbounds %struct.Scene, ptr %3, i64 0, i32 37, i32 19
  store i16 32, ptr %144, align 4, !tbaa !214
  %145 = getelementptr inbounds %struct.Scene, ptr %3, i64 0, i32 37, i32 21
  store i16 128, ptr %145, align 8, !tbaa !215
  %146 = getelementptr inbounds %struct.Scene, ptr %3, i64 0, i32 37, i32 25
  store <4 x i16> <i16 60, i16 5, i16 1, i16 5>, ptr %146, align 8, !tbaa !54
  %147 = getelementptr inbounds %struct.Scene, ptr %3, i64 0, i32 37, i32 18
  store i32 32, ptr %147, align 8, !tbaa !216
  %148 = getelementptr inbounds %struct.Scene, ptr %3, i64 0, i32 37, i32 20
  store i16 1, ptr %148, align 2, !tbaa !217
  %149 = getelementptr inbounds %struct.Scene, ptr %3, i64 0, i32 37, i32 29
  store i16 0, ptr %149, align 8, !tbaa !218
  %150 = getelementptr inbounds %struct.Scene, ptr %3, i64 0, i32 37, i32 31
  store <4 x float> <float 2.000000e+00, float 0.000000e+00, float 0x3FE99999A0000000, float 1.000000e+00>, ptr %150, align 4, !tbaa !55
  store <4 x float> <float 0x3FB99999A0000000, float 0x3FD3333340000000, float 0x3FC99999A0000000, float 0x3FF921FB60000000>, ptr %138, align 4, !tbaa !55
  %151 = getelementptr inbounds %struct.Scene, ptr %3, i64 0, i32 37, i32 15, i32 3
  store <4 x float> <float 0x3FECCCCCC0000000, float 2.000000e+00, float 0x3FE3333340000000, float 1.200000e+01>, ptr %151, align 4, !tbaa !55
  %152 = getelementptr inbounds %struct.Scene, ptr %3, i64 0, i32 37, i32 15, i32 7
  store <2 x float> <float 0x3FF4CCCCC0000000, float 8.000000e+00>, ptr %152, align 4, !tbaa !55
  %153 = getelementptr inbounds %struct.Scene, ptr %3, i64 0, i32 37, i32 15, i32 9
  store float 2.000000e+01, ptr %153, align 4, !tbaa !219
  %154 = getelementptr inbounds %struct.Scene, ptr %3, i64 0, i32 37, i32 15, i32 10
  store i32 6, ptr %154, align 8, !tbaa !220
  %155 = getelementptr inbounds %struct.Scene, ptr %3, i64 0, i32 37, i32 15, i32 11
  store <2 x float> <float 6.000000e+00, float 1.000000e+00>, ptr %155, align 4, !tbaa !55
  %156 = getelementptr inbounds %struct.Scene, ptr %3, i64 0, i32 37, i32 23
  store i16 218, ptr %156, align 4, !tbaa !221
  tail call void @sound_create_scene(ptr noundef %3) #24
  %157 = tail call ptr @IMB_colormanagement_role_colorspace_name_get(i32 noundef 3) #24
  %158 = getelementptr inbounds %struct.Scene, ptr %3, i64 0, i32 45
  tail call void @BKE_color_managed_display_settings_init(ptr noundef nonnull %158) #24
  %159 = getelementptr inbounds %struct.Scene, ptr %3, i64 0, i32 44
  tail call void @BKE_color_managed_view_settings_init(ptr noundef nonnull %159) #24
  %160 = getelementptr inbounds %struct.Scene, ptr %3, i64 0, i32 46
  %161 = tail call ptr @BLI_strncpy(ptr noundef nonnull %160, ptr noundef %157, i64 noundef 64) #24
  ret ptr %3
}

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #2

; Function Attrs: optsize
declare ptr @IDP_CopyProperty(ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: optsize
declare ptr @BKE_libblock_copy(ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare void @BLI_duplicatelist(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare void @BKE_main_id_clear_newpoins(ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare void @id_us_plus(ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare ptr @BKE_rigidbody_world_copy(ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare void @BKE_keyingsets_copy(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare ptr @ntreeCopyTree(ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare void @ntreeSwitchID(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare void @BKE_color_managed_display_settings_copy(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare void @BKE_color_managed_view_settings_copy(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare ptr @BLI_strncpy(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare void @BKE_copy_animdata_id_action(ptr noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @remove_sequencer_fcurves(ptr noundef %0) unnamed_addr #0 !PGOFuncName !222 {
  %2 = tail call ptr @BKE_animdata_from_id(ptr noundef %0) #24
  %3 = icmp eq ptr %2, null
  br i1 %3, label %24, label %4

4:                                                ; preds = %1
  %5 = load ptr, ptr %2, align 8, !tbaa !223
  %6 = icmp eq ptr %5, null
  br i1 %6, label %24, label %7

7:                                                ; preds = %4
  %8 = getelementptr inbounds %struct.bAction, ptr %5, i64 0, i32 1
  %9 = load ptr, ptr %8, align 8, !tbaa !225
  %10 = icmp eq ptr %9, null
  br i1 %10, label %24, label %11

11:                                               ; preds = %7, %22
  %12 = phi ptr [ %13, %22 ], [ %9, %7 ]
  %13 = load ptr, ptr %12, align 8, !tbaa !227
  %14 = getelementptr inbounds %struct.FCurve, ptr %12, i64 0, i32 12
  %15 = load ptr, ptr %14, align 8, !tbaa !229
  %16 = icmp eq ptr %15, null
  br i1 %16, label %22, label %17

17:                                               ; preds = %11
  %18 = tail call ptr @strstr(ptr noundef nonnull dereferenceable(1) %15, ptr noundef nonnull dereferenceable(1) @.str.11) #26
  %19 = icmp eq ptr %18, null
  br i1 %19, label %22, label %20

20:                                               ; preds = %17
  %21 = load ptr, ptr %2, align 8, !tbaa !223
  tail call void @action_groups_remove_channel(ptr noundef %21, ptr noundef nonnull %12) #24
  tail call void @free_fcurve(ptr noundef nonnull %12) #24
  br label %22

22:                                               ; preds = %11, %17, %20
  %23 = icmp eq ptr %13, null
  br i1 %23, label %24, label %11, !llvm.loop !230

24:                                               ; preds = %22, %7, %4, %1
  ret void
}

; Function Attrs: optsize
declare void @BKE_freestyle_config_copy(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare void @BKE_paint_copy(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare void @sound_create_scene(ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare ptr @BKE_world_copy(ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare void @BKE_sequence_base_dupli_recursive(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @BKE_scene_groups_relink(ptr nocapture noundef readonly %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.Scene, ptr %0, i64 0, i32 47
  %3 = load ptr, ptr %2, align 8, !tbaa !90
  %4 = icmp eq ptr %3, null
  br i1 %4, label %6, label %5

5:                                                ; preds = %1
  tail call void @BKE_rigidbody_world_groups_relink(ptr noundef nonnull %3) #24
  br label %6

6:                                                ; preds = %5, %1
  ret void
}

; Function Attrs: optsize
declare void @BKE_rigidbody_world_groups_relink(ptr noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @BKE_scene_free(ptr noundef %0) local_unnamed_addr #0 {
  %2 = load ptr, ptr @G, align 8, !tbaa !47
  tail call void @BKE_sequencer_clear_scene_in_allseqs(ptr noundef %2, ptr noundef %0) #24
  %3 = getelementptr inbounds %struct.Scene, ptr %0, i64 0, i32 5
  %4 = load ptr, ptr %3, align 8, !tbaa !40
  %5 = icmp eq ptr %4, null
  br i1 %5, label %15, label %6

6:                                                ; preds = %1, %6
  %7 = phi ptr [ %13, %6 ], [ %4, %1 ]
  %8 = getelementptr inbounds %struct.Base, ptr %7, i64 0, i32 7
  %9 = load ptr, ptr %8, align 8, !tbaa !92
  %10 = getelementptr inbounds %struct.ID, ptr %9, i64 0, i32 6
  %11 = load i32, ptr %10, align 4, !tbaa !231
  %12 = add nsw i32 %11, -1
  store i32 %12, ptr %10, align 4, !tbaa !231
  %13 = load ptr, ptr %7, align 8, !tbaa !40
  %14 = icmp eq ptr %13, null
  br i1 %14, label %15, label %6, !llvm.loop !232

15:                                               ; preds = %6, %1
  %16 = getelementptr inbounds %struct.Scene, ptr %0, i64 0, i32 39
  %17 = load ptr, ptr %16, align 8, !tbaa !233
  %18 = icmp eq ptr %17, null
  br i1 %18, label %20, label %19

19:                                               ; preds = %15
  store ptr null, ptr %16, align 8, !tbaa !233
  br label %20

20:                                               ; preds = %19, %15
  tail call void @BLI_freelistN(ptr noundef nonnull %3) #24
  tail call void @BKE_sequencer_editing_free(ptr noundef nonnull %0) #24
  tail call void @BKE_free_animdata(ptr noundef nonnull %0) #24
  %21 = getelementptr inbounds %struct.Scene, ptr %0, i64 0, i32 35
  tail call void @BKE_keyingsets_free(ptr noundef nonnull %21) #24
  %22 = getelementptr inbounds %struct.Scene, ptr %0, i64 0, i32 47
  %23 = load ptr, ptr %22, align 8, !tbaa !90
  %24 = icmp eq ptr %23, null
  br i1 %24, label %26, label %25

25:                                               ; preds = %20
  tail call void @BKE_rigidbody_free_world(ptr noundef nonnull %23) #24
  br label %26

26:                                               ; preds = %25, %20
  %27 = getelementptr inbounds %struct.Scene, ptr %0, i64 0, i32 22, i32 1
  %28 = load ptr, ptr %27, align 8, !tbaa !110
  %29 = icmp eq ptr %28, null
  br i1 %29, label %33, label %30

30:                                               ; preds = %26
  tail call void @free_avicodecdata(ptr noundef nonnull %28) #25
  %31 = load ptr, ptr @MEM_freeN, align 8, !tbaa !40
  %32 = load ptr, ptr %27, align 8, !tbaa !110
  tail call void %31(ptr noundef %32) #24
  store ptr null, ptr %27, align 8, !tbaa !110
  br label %33

33:                                               ; preds = %30, %26
  %34 = getelementptr inbounds %struct.Scene, ptr %0, i64 0, i32 22, i32 2
  %35 = load ptr, ptr %34, align 8, !tbaa !111
  %36 = icmp eq ptr %35, null
  br i1 %36, label %40, label %37

37:                                               ; preds = %33
  tail call void @free_qtcodecdata(ptr noundef nonnull %35) #25
  %38 = load ptr, ptr @MEM_freeN, align 8, !tbaa !40
  %39 = load ptr, ptr %34, align 8, !tbaa !111
  tail call void %38(ptr noundef %39) #24
  store ptr null, ptr %34, align 8, !tbaa !111
  br label %40

40:                                               ; preds = %37, %33
  %41 = getelementptr inbounds %struct.Scene, ptr %0, i64 0, i32 22, i32 4, i32 16
  %42 = load ptr, ptr %41, align 8, !tbaa !112
  %43 = icmp eq ptr %42, null
  br i1 %43, label %47, label %44

44:                                               ; preds = %40
  tail call void @IDP_FreeProperty(ptr noundef nonnull %42) #24
  %45 = load ptr, ptr @MEM_freeN, align 8, !tbaa !40
  %46 = load ptr, ptr %41, align 8, !tbaa !112
  tail call void %45(ptr noundef %46) #24
  store ptr null, ptr %41, align 8, !tbaa !112
  br label %47

47:                                               ; preds = %44, %40
  %48 = getelementptr inbounds %struct.Scene, ptr %0, i64 0, i32 22, i32 60
  %49 = load ptr, ptr %48, align 8, !tbaa !40
  %50 = icmp eq ptr %49, null
  br i1 %50, label %56, label %51

51:                                               ; preds = %47, %51
  %52 = phi ptr [ %54, %51 ], [ %49, %47 ]
  %53 = getelementptr inbounds %struct.SceneRenderLayer, ptr %52, i64 0, i32 13
  tail call void @BKE_freestyle_config_free(ptr noundef nonnull %53) #24
  %54 = load ptr, ptr %52, align 8, !tbaa !40
  %55 = icmp eq ptr %54, null
  br i1 %55, label %56, label %51, !llvm.loop !234

56:                                               ; preds = %51, %47
  %57 = getelementptr inbounds %struct.Scene, ptr %0, i64 0, i32 24
  tail call void @BLI_freelistN(ptr noundef nonnull %57) #24
  %58 = getelementptr inbounds %struct.Scene, ptr %0, i64 0, i32 25
  tail call void @BLI_freelistN(ptr noundef nonnull %58) #24
  tail call void @BLI_freelistN(ptr noundef nonnull %48) #24
  %59 = getelementptr inbounds %struct.Scene, ptr %0, i64 0, i32 20
  %60 = load ptr, ptr %59, align 8, !tbaa !83
  %61 = icmp eq ptr %60, null
  br i1 %61, label %108, label %62

62:                                               ; preds = %56
  %63 = load ptr, ptr %60, align 8, !tbaa !98
  %64 = icmp eq ptr %63, null
  br i1 %64, label %70, label %65

65:                                               ; preds = %62
  tail call void @BKE_paint_free(ptr noundef nonnull %63) #24
  %66 = load ptr, ptr @MEM_freeN, align 8, !tbaa !40
  %67 = load ptr, ptr %59, align 8, !tbaa !83
  %68 = load ptr, ptr %67, align 8, !tbaa !98
  tail call void %66(ptr noundef %68) #24
  %69 = load ptr, ptr %59, align 8, !tbaa !83
  br label %70

70:                                               ; preds = %65, %62
  %71 = phi ptr [ %69, %65 ], [ %60, %62 ]
  %72 = getelementptr inbounds %struct.ToolSettings, ptr %71, i64 0, i32 1
  %73 = load ptr, ptr %72, align 8, !tbaa !105
  %74 = icmp eq ptr %73, null
  br i1 %74, label %81, label %75

75:                                               ; preds = %70
  tail call void @BKE_paint_free(ptr noundef nonnull %73) #24
  %76 = load ptr, ptr @MEM_freeN, align 8, !tbaa !40
  %77 = load ptr, ptr %59, align 8, !tbaa !83
  %78 = getelementptr inbounds %struct.ToolSettings, ptr %77, i64 0, i32 1
  %79 = load ptr, ptr %78, align 8, !tbaa !105
  tail call void %76(ptr noundef %79) #24
  %80 = load ptr, ptr %59, align 8, !tbaa !83
  br label %81

81:                                               ; preds = %75, %70
  %82 = phi ptr [ %80, %75 ], [ %71, %70 ]
  %83 = getelementptr inbounds %struct.ToolSettings, ptr %82, i64 0, i32 2
  %84 = load ptr, ptr %83, align 8, !tbaa !106
  %85 = icmp eq ptr %84, null
  br i1 %85, label %92, label %86

86:                                               ; preds = %81
  tail call void @BKE_paint_free(ptr noundef nonnull %84) #24
  %87 = load ptr, ptr @MEM_freeN, align 8, !tbaa !40
  %88 = load ptr, ptr %59, align 8, !tbaa !83
  %89 = getelementptr inbounds %struct.ToolSettings, ptr %88, i64 0, i32 2
  %90 = load ptr, ptr %89, align 8, !tbaa !106
  tail call void %87(ptr noundef %90) #24
  %91 = load ptr, ptr %59, align 8, !tbaa !83
  br label %92

92:                                               ; preds = %86, %81
  %93 = phi ptr [ %91, %86 ], [ %82, %81 ]
  %94 = getelementptr inbounds %struct.ToolSettings, ptr %93, i64 0, i32 3
  %95 = load ptr, ptr %94, align 8, !tbaa !235
  %96 = icmp eq ptr %95, null
  br i1 %96, label %103, label %97

97:                                               ; preds = %92
  tail call void @BKE_paint_free(ptr noundef nonnull %95) #24
  %98 = load ptr, ptr @MEM_freeN, align 8, !tbaa !40
  %99 = load ptr, ptr %59, align 8, !tbaa !83
  %100 = getelementptr inbounds %struct.ToolSettings, ptr %99, i64 0, i32 3
  %101 = load ptr, ptr %100, align 8, !tbaa !235
  tail call void %98(ptr noundef %101) #24
  %102 = load ptr, ptr %59, align 8, !tbaa !83
  br label %103

103:                                              ; preds = %97, %92
  %104 = phi ptr [ %102, %97 ], [ %93, %92 ]
  %105 = getelementptr inbounds %struct.ToolSettings, ptr %104, i64 0, i32 17
  tail call void @BKE_paint_free(ptr noundef nonnull %105) #24
  %106 = load ptr, ptr @MEM_freeN, align 8, !tbaa !40
  %107 = load ptr, ptr %59, align 8, !tbaa !83
  tail call void %106(ptr noundef %107) #24
  store ptr null, ptr %59, align 8, !tbaa !83
  br label %108

108:                                              ; preds = %103, %56
  tail call void @DAG_scene_free(ptr noundef nonnull %0) #24
  %109 = getelementptr inbounds %struct.Scene, ptr %0, i64 0, i32 18
  %110 = load ptr, ptr %109, align 8, !tbaa !91
  %111 = icmp eq ptr %110, null
  br i1 %111, label %115, label %112

112:                                              ; preds = %108
  tail call void @ntreeFreeTree(ptr noundef nonnull %110) #24
  %113 = load ptr, ptr @MEM_freeN, align 8, !tbaa !40
  %114 = load ptr, ptr %109, align 8, !tbaa !91
  tail call void %113(ptr noundef %114) #24
  br label %115

115:                                              ; preds = %112, %108
  %116 = getelementptr inbounds %struct.Scene, ptr %0, i64 0, i32 21
  %117 = load ptr, ptr %116, align 8, !tbaa !89
  %118 = icmp eq ptr %117, null
  br i1 %118, label %121, label %119

119:                                              ; preds = %115
  %120 = load ptr, ptr @MEM_freeN, align 8, !tbaa !40
  tail call void %120(ptr noundef nonnull %117) #24
  br label %121

121:                                              ; preds = %119, %115
  %122 = getelementptr inbounds %struct.Scene, ptr %0, i64 0, i32 30
  %123 = load ptr, ptr %122, align 8, !tbaa !236
  %124 = icmp eq ptr %123, null
  br i1 %124, label %127, label %125

125:                                              ; preds = %121
  %126 = load ptr, ptr @MEM_freeN, align 8, !tbaa !40
  tail call void %126(ptr noundef nonnull %123) #24
  br label %127

127:                                              ; preds = %125, %121
  tail call void @sound_destroy_scene(ptr noundef nonnull %0) #24
  %128 = getelementptr inbounds %struct.Scene, ptr %0, i64 0, i32 44
  tail call void @BKE_color_managed_view_settings_free(ptr noundef nonnull %128) #24
  ret void
}

; Function Attrs: optsize
declare void @BKE_sequencer_clear_scene_in_allseqs(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare void @BLI_freelistN(ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare void @BKE_sequencer_editing_free(ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare void @BKE_free_animdata(ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare void @BKE_keyingsets_free(ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare void @BKE_rigidbody_free_world(ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare void @IDP_FreeProperty(ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare void @BKE_freestyle_config_free(ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare void @BKE_paint_free(ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare void @DAG_scene_free(ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare void @ntreeFreeTree(ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare void @sound_destroy_scene(ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare void @BKE_color_managed_view_settings_free(ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare ptr @BKE_libblock_alloc(ptr noundef, i16 noundef signext, ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare void @BLI_rctf_init(ptr noundef, float noundef, float noundef, float noundef, float noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @BKE_scene_add_render_layer(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = icmp eq ptr %1, null
  %4 = select i1 %3, ptr @.str.8, ptr %1
  %5 = load ptr, ptr @MEM_callocN, align 8, !tbaa !40
  %6 = tail call ptr %5(i64 noundef 184, ptr noundef nonnull @.str.9) #24
  %7 = getelementptr inbounds %struct.SceneRenderLayer, ptr %6, i64 0, i32 2
  %8 = tail call ptr @BLI_strncpy(ptr noundef nonnull %7, ptr noundef nonnull %4, i64 noundef 64) #24
  %9 = getelementptr inbounds %struct.Scene, ptr %0, i64 0, i32 22, i32 60
  tail call void @BLI_uniquename(ptr noundef nonnull %9, ptr noundef %6, ptr noundef nonnull @.str.8, i8 noundef zeroext 46, i32 noundef 16, i32 noundef 64) #24
  tail call void @BLI_addtail(ptr noundef nonnull %9, ptr noundef %6) #24
  %10 = getelementptr inbounds %struct.SceneRenderLayer, ptr %6, i64 0, i32 5
  store i32 1048575, ptr %10, align 8, !tbaa !237
  %11 = getelementptr inbounds %struct.SceneRenderLayer, ptr %6, i64 0, i32 8
  store i32 32767, ptr %11, align 4, !tbaa !240
  %12 = getelementptr inbounds %struct.SceneRenderLayer, ptr %6, i64 0, i32 9
  store i32 3, ptr %12, align 8, !tbaa !241
  %13 = getelementptr inbounds %struct.SceneRenderLayer, ptr %6, i64 0, i32 12
  store float 5.000000e-01, ptr %13, align 4, !tbaa !242
  %14 = getelementptr inbounds %struct.SceneRenderLayer, ptr %6, i64 0, i32 13
  tail call void @BKE_freestyle_config_init(ptr noundef nonnull %14) #24
  ret ptr %6
}

; Function Attrs: optsize
declare ptr @IMB_colormanagement_role_colorspace_name_get(i32 noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare void @BKE_color_managed_display_settings_init(ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare void @BKE_color_managed_view_settings_init(ptr noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @BKE_scene_base_find(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.Scene, ptr %0, i64 0, i32 5
  %4 = tail call ptr @BLI_findptr(ptr noundef nonnull %3, ptr noundef %1, i32 noundef 32) #24
  ret ptr %4
}

; Function Attrs: optsize
declare ptr @BLI_findptr(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @BKE_scene_set_background(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = tail call i32 @BKE_scene_validate_setscene(ptr noundef %0, ptr noundef %1) #25, !range !243
  %4 = getelementptr inbounds %struct.Scene, ptr %1, i64 0, i32 7
  %5 = load ptr, ptr %4, align 8, !tbaa !88
  %6 = icmp eq ptr %5, null
  br i1 %6, label %13, label %7

7:                                                ; preds = %2
  %8 = getelementptr inbounds %struct.Object, ptr %5, i64 0, i32 27
  %9 = load i32, ptr %8, align 8, !tbaa !244
  %10 = and i32 %9, 1
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %12, label %13

12:                                               ; preds = %7
  store ptr null, ptr %4, align 8, !tbaa !88
  br label %13

13:                                               ; preds = %12, %7, %2
  %14 = getelementptr inbounds %struct.Main, ptr %0, i64 0, i32 13
  %15 = load ptr, ptr %14, align 8, !tbaa !40
  %16 = icmp eq ptr %15, null
  br i1 %16, label %24, label %17

17:                                               ; preds = %13, %17
  %18 = phi ptr [ %22, %17 ], [ %15, %13 ]
  %19 = getelementptr inbounds %struct.Object, ptr %18, i64 0, i32 53
  %20 = load i16, ptr %19, align 4, !tbaa !245
  %21 = and i16 %20, -4098
  store i16 %21, ptr %19, align 4, !tbaa !245
  %22 = load ptr, ptr %18, align 8, !tbaa !40
  %23 = icmp eq ptr %22, null
  br i1 %23, label %24, label %17, !llvm.loop !246

24:                                               ; preds = %17, %13
  %25 = getelementptr inbounds %struct.Main, ptr %0, i64 0, i32 32
  %26 = load ptr, ptr %25, align 8, !tbaa !40
  %27 = icmp eq ptr %26, null
  br i1 %27, label %31, label %33

28:                                               ; preds = %47, %33
  %29 = load ptr, ptr %34, align 8, !tbaa !40
  %30 = icmp eq ptr %29, null
  br i1 %30, label %31, label %33, !llvm.loop !247

31:                                               ; preds = %28, %24
  %32 = icmp eq ptr %1, null
  br i1 %32, label %55, label %50

33:                                               ; preds = %24, %28
  %34 = phi ptr [ %29, %28 ], [ %26, %24 ]
  %35 = getelementptr inbounds %struct.Group, ptr %34, i64 0, i32 1
  %36 = load ptr, ptr %35, align 8, !tbaa !40
  %37 = icmp eq ptr %36, null
  br i1 %37, label %28, label %38

38:                                               ; preds = %33, %47
  %39 = phi ptr [ %48, %47 ], [ %36, %33 ]
  %40 = getelementptr inbounds %struct.GroupObject, ptr %39, i64 0, i32 2
  %41 = load ptr, ptr %40, align 8, !tbaa !248
  %42 = icmp eq ptr %41, null
  br i1 %42, label %47, label %43

43:                                               ; preds = %38
  %44 = getelementptr inbounds %struct.Object, ptr %41, i64 0, i32 53
  %45 = load i16, ptr %44, align 4, !tbaa !245
  %46 = or i16 %45, 4096
  store i16 %46, ptr %44, align 4, !tbaa !245
  br label %47

47:                                               ; preds = %38, %43
  %48 = load ptr, ptr %39, align 8, !tbaa !40
  %49 = icmp eq ptr %48, null
  br i1 %49, label %28, label %38, !llvm.loop !250

50:                                               ; preds = %31, %50
  %51 = phi ptr [ %53, %50 ], [ %1, %31 ]
  tail call void @DAG_scene_relations_rebuild(ptr noundef %0, ptr noundef nonnull %51) #24
  %52 = getelementptr inbounds %struct.Scene, ptr %51, i64 0, i32 4
  %53 = load ptr, ptr %52, align 8, !tbaa !85
  %54 = icmp eq ptr %53, null
  br i1 %54, label %55, label %50, !llvm.loop !251

55:                                               ; preds = %50, %31
  %56 = getelementptr inbounds %struct.Scene, ptr %1, i64 0, i32 5
  %57 = load ptr, ptr %56, align 8, !tbaa !40
  %58 = icmp eq ptr %57, null
  br i1 %58, label %77, label %59

59:                                               ; preds = %55, %59
  %60 = phi ptr [ %75, %59 ], [ %57, %55 ]
  %61 = getelementptr inbounds %struct.Base, ptr %60, i64 0, i32 7
  %62 = load ptr, ptr %61, align 8, !tbaa !92
  %63 = getelementptr inbounds %struct.Base, ptr %60, i64 0, i32 2
  %64 = load i32, ptr %63, align 8, !tbaa !252
  %65 = getelementptr inbounds %struct.Object, ptr %62, i64 0, i32 52
  store i32 %64, ptr %65, align 8, !tbaa !253
  %66 = getelementptr inbounds %struct.Base, ptr %60, i64 0, i32 4
  %67 = load i32, ptr %66, align 8, !tbaa !254
  %68 = and i32 %67, -4097
  %69 = getelementptr inbounds %struct.Object, ptr %62, i64 0, i32 53
  %70 = load i16, ptr %69, align 4, !tbaa !245
  %71 = and i16 %70, 4096
  %72 = zext nneg i16 %71 to i32
  %73 = or disjoint i32 %68, %72
  store i32 %73, ptr %66, align 8, !tbaa !254
  %74 = trunc i32 %73 to i16
  store i16 %74, ptr %69, align 4, !tbaa !245
  %75 = load ptr, ptr %60, align 8, !tbaa !40
  %76 = icmp eq ptr %75, null
  br i1 %76, label %77, label %59, !llvm.loop !255

77:                                               ; preds = %59, %55
  ret void
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local noundef i32 @BKE_scene_validate_setscene(ptr nocapture noundef readonly %0, ptr nocapture noundef %1) local_unnamed_addr #4 {
  %3 = getelementptr inbounds %struct.Scene, ptr %1, i64 0, i32 4
  %4 = load ptr, ptr %3, align 8, !tbaa !85
  %5 = icmp eq ptr %4, null
  br i1 %5, label %24, label %6

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.Main, ptr %0, i64 0, i32 11
  br label %8

8:                                                ; preds = %8, %6
  %9 = phi i32 [ %13, %8 ], [ 1, %6 ]
  %10 = phi ptr [ %11, %8 ], [ %7, %6 ]
  %11 = load ptr, ptr %10, align 8, !tbaa !40
  %12 = icmp eq ptr %11, null
  %13 = add nuw i32 %9, 1
  br i1 %12, label %19, label %8, !llvm.loop !256

14:                                               ; preds = %19
  %15 = add nuw i32 %21, 1
  %16 = getelementptr inbounds %struct.Scene, ptr %20, i64 0, i32 4
  %17 = load ptr, ptr %16, align 8, !tbaa !85
  %18 = icmp eq ptr %17, null
  br i1 %18, label %24, label %19, !llvm.loop !257

19:                                               ; preds = %8, %14
  %20 = phi ptr [ %17, %14 ], [ %4, %8 ]
  %21 = phi i32 [ %15, %14 ], [ 0, %8 ]
  %22 = icmp eq i32 %21, %9
  br i1 %22, label %23, label %14

23:                                               ; preds = %19
  store ptr null, ptr %3, align 8, !tbaa !85
  br label %24

24:                                               ; preds = %14, %2, %23
  %25 = phi i32 [ 0, %23 ], [ 1, %2 ], [ 1, %14 ]
  ret i32 %25
}

; Function Attrs: optsize
declare void @DAG_scene_relations_rebuild(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @BKE_scene_set_name(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = tail call ptr @BKE_libblock_find_name_ex(ptr noundef %0, i16 noundef signext 17235, ptr noundef %1) #24
  %4 = icmp eq ptr %3, null
  br i1 %4, label %6, label %5

5:                                                ; preds = %2
  tail call void @BKE_scene_set_background(ptr noundef %0, ptr noundef nonnull %3) #25
  br label %6

6:                                                ; preds = %2, %5
  %7 = phi ptr [ @.str.5, %5 ], [ @.str.6, %2 ]
  %8 = getelementptr inbounds %struct.Main, ptr %0, i64 0, i32 2
  %9 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) %7, ptr noundef %1, ptr noundef nonnull %8) #25
  ret ptr %3
}

; Function Attrs: optsize
declare ptr @BKE_libblock_find_name_ex(ptr noundef, i16 noundef signext, ptr noundef) local_unnamed_addr #3

; Function Attrs: nofree nounwind optsize
declare noundef i32 @printf(ptr nocapture noundef readonly, ...) local_unnamed_addr #5

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @BKE_scene_unlink(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #0 {
  %4 = getelementptr inbounds %struct.Main, ptr %0, i64 0, i32 11
  %5 = load ptr, ptr %4, align 8, !tbaa !40
  %6 = icmp eq ptr %5, null
  br i1 %6, label %42, label %10

7:                                                ; preds = %16
  %8 = load ptr, ptr %4, align 8, !tbaa !40
  %9 = icmp eq ptr %8, null
  br i1 %9, label %42, label %19

10:                                               ; preds = %3, %16
  %11 = phi ptr [ %17, %16 ], [ %5, %3 ]
  %12 = getelementptr inbounds %struct.Scene, ptr %11, i64 0, i32 4
  %13 = load ptr, ptr %12, align 8, !tbaa !85
  %14 = icmp eq ptr %13, %1
  br i1 %14, label %15, label %16

15:                                               ; preds = %10
  store ptr null, ptr %12, align 8, !tbaa !85
  br label %16

16:                                               ; preds = %10, %15
  %17 = load ptr, ptr %11, align 8, !tbaa !40
  %18 = icmp eq ptr %17, null
  br i1 %18, label %7, label %10, !llvm.loop !258

19:                                               ; preds = %7, %39
  %20 = phi ptr [ %40, %39 ], [ %8, %7 ]
  %21 = icmp eq ptr %20, %1
  br i1 %21, label %39, label %22

22:                                               ; preds = %19
  %23 = getelementptr inbounds %struct.Scene, ptr %20, i64 0, i32 18
  %24 = load ptr, ptr %23, align 8, !tbaa !91
  %25 = icmp eq ptr %24, null
  br i1 %25, label %39, label %26

26:                                               ; preds = %22
  %27 = getelementptr inbounds %struct.bNodeTree, ptr %24, i64 0, i32 7
  %28 = load ptr, ptr %27, align 8, !tbaa !40
  %29 = icmp eq ptr %28, null
  br i1 %29, label %39, label %30

30:                                               ; preds = %26, %36
  %31 = phi ptr [ %37, %36 ], [ %28, %26 ]
  %32 = getelementptr inbounds %struct.bNode, ptr %31, i64 0, i32 20
  %33 = load ptr, ptr %32, align 8, !tbaa !259
  %34 = icmp eq ptr %33, %1
  br i1 %34, label %35, label %36

35:                                               ; preds = %30
  store ptr null, ptr %32, align 8, !tbaa !259
  br label %36

36:                                               ; preds = %30, %35
  %37 = load ptr, ptr %31, align 8, !tbaa !40
  %38 = icmp eq ptr %37, null
  br i1 %38, label %39, label %30, !llvm.loop !261

39:                                               ; preds = %36, %26, %19, %22
  %40 = load ptr, ptr %20, align 8, !tbaa !40
  %41 = icmp eq ptr %40, null
  br i1 %41, label %42, label %19, !llvm.loop !262

42:                                               ; preds = %39, %3, %7
  %43 = getelementptr inbounds %struct.Main, ptr %0, i64 0, i32 26
  %44 = load ptr, ptr %43, align 8, !tbaa !40
  %45 = icmp eq ptr %44, null
  br i1 %45, label %76, label %49

46:                                               ; preds = %59, %55
  %47 = load ptr, ptr %50, align 8, !tbaa !40
  %48 = icmp eq ptr %47, null
  br i1 %48, label %76, label %49, !llvm.loop !263

49:                                               ; preds = %42, %46
  %50 = phi ptr [ %47, %46 ], [ %44, %42 ]
  %51 = getelementptr inbounds %struct.bScreen, ptr %50, i64 0, i32 5
  %52 = load ptr, ptr %51, align 8, !tbaa !264
  %53 = icmp eq ptr %52, %1
  br i1 %53, label %54, label %55

54:                                               ; preds = %49
  store ptr %2, ptr %51, align 8, !tbaa !264
  br label %55

55:                                               ; preds = %54, %49
  %56 = getelementptr inbounds %struct.bScreen, ptr %50, i64 0, i32 3
  %57 = load ptr, ptr %56, align 8, !tbaa !40
  %58 = icmp eq ptr %57, null
  br i1 %58, label %46, label %62

59:                                               ; preds = %73, %62
  %60 = load ptr, ptr %63, align 8, !tbaa !40
  %61 = icmp eq ptr %60, null
  br i1 %61, label %46, label %62, !llvm.loop !266

62:                                               ; preds = %55, %59
  %63 = phi ptr [ %60, %59 ], [ %57, %55 ]
  %64 = getelementptr inbounds %struct.ScrArea, ptr %63, i64 0, i32 19
  %65 = load ptr, ptr %64, align 8, !tbaa !40
  %66 = icmp eq ptr %65, null
  br i1 %66, label %59, label %67

67:                                               ; preds = %62, %73
  %68 = phi ptr [ %74, %73 ], [ %65, %62 ]
  %69 = getelementptr inbounds %struct.SpaceLink, ptr %68, i64 0, i32 3
  %70 = load i32, ptr %69, align 8, !tbaa !267
  switch i32 %70, label %73 [
    i32 16, label %71
    i32 4, label %72
  ]

71:                                               ; preds = %67
  tail call fastcc void @scene_unlink_space_node(ptr noundef nonnull %68, ptr noundef %1) #25
  br label %73

72:                                               ; preds = %67
  tail call fastcc void @scene_unlink_space_buts(ptr noundef nonnull %68, ptr noundef %1) #25
  br label %73

73:                                               ; preds = %71, %72, %67
  %74 = load ptr, ptr %68, align 8, !tbaa !40
  %75 = icmp eq ptr %74, null
  br i1 %75, label %59, label %67, !llvm.loop !269

76:                                               ; preds = %46, %42
  tail call void @BKE_libblock_free(ptr noundef %0, ptr noundef %1) #24
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @scene_unlink_space_node(ptr nocapture noundef %0, ptr noundef readnone %1) unnamed_addr #0 !PGOFuncName !270 {
  %3 = getelementptr inbounds %struct.SpaceNode, ptr %0, i64 0, i32 7
  %4 = load ptr, ptr %3, align 8, !tbaa !271
  %5 = icmp eq ptr %4, %1
  br i1 %5, label %6, label %17

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.SpaceNode, ptr %0, i64 0, i32 17
  %8 = load ptr, ptr %7, align 8, !tbaa !274
  %9 = icmp eq ptr %8, null
  br i1 %9, label %15, label %10

10:                                               ; preds = %6, %10
  %11 = phi ptr [ %12, %10 ], [ %8, %6 ]
  %12 = load ptr, ptr %11, align 8, !tbaa !275
  %13 = load ptr, ptr @MEM_freeN, align 8, !tbaa !40
  tail call void %13(ptr noundef nonnull %11) #24
  %14 = icmp eq ptr %12, null
  br i1 %14, label %15, label %10, !llvm.loop !278

15:                                               ; preds = %10, %6
  tail call fastcc void @BLI_listbase_clear(ptr noundef nonnull %7) #25
  %16 = getelementptr inbounds %struct.SpaceNode, ptr %0, i64 0, i32 18
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %3, i8 0, i64 16, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %16, i8 0, i64 16, i1 false)
  br label %17

17:                                               ; preds = %15, %2
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @scene_unlink_space_buts(ptr nocapture noundef %0, ptr noundef readnone %1) unnamed_addr #6 !PGOFuncName !279 {
  %3 = getelementptr inbounds %struct.SpaceButs, ptr %0, i64 0, i32 20
  %4 = load ptr, ptr %3, align 8, !tbaa !280
  %5 = icmp eq ptr %4, %1
  br i1 %5, label %6, label %7

6:                                                ; preds = %2
  store ptr null, ptr %3, align 8, !tbaa !280
  br label %7

7:                                                ; preds = %6, %2
  ret void
}

; Function Attrs: optsize
declare void @BKE_libblock_free(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind optsize uwtable
define dso_local i32 @BKE_scene_base_iter_next(ptr noundef %0, ptr noundef %1, ptr nocapture noundef %2, i32 noundef %3, ptr nocapture noundef %4, ptr nocapture noundef %5) local_unnamed_addr #0 {
  %7 = icmp eq i32 %3, 0
  %8 = getelementptr inbounds %struct.SceneBaseIter, ptr %1, i64 0, i32 4
  %9 = getelementptr inbounds %struct.SceneBaseIter, ptr %1, i64 0, i32 3
  br i1 %7, label %13, label %10

10:                                               ; preds = %6
  %11 = getelementptr inbounds %struct.SceneBaseIter, ptr %1, i64 0, i32 1
  %12 = getelementptr inbounds %struct.SceneBaseIter, ptr %1, i64 0, i32 2
  br label %14

13:                                               ; preds = %6
  store i32 0, ptr %8, align 8, !tbaa !282
  store ptr null, ptr %9, align 8, !tbaa !284
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %1, i8 0, i64 16, i1 false)
  br label %138

14:                                               ; preds = %134, %10
  %15 = load i32, ptr %8, align 8, !tbaa !282
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %17, label %39

17:                                               ; preds = %14
  %18 = load ptr, ptr %2, align 8, !tbaa !40
  %19 = getelementptr inbounds %struct.Scene, ptr %18, i64 0, i32 5
  %20 = load ptr, ptr %19, align 8, !tbaa !285
  store ptr %20, ptr %4, align 8, !tbaa !40
  %21 = icmp eq ptr %20, null
  br i1 %21, label %22, label %24

22:                                               ; preds = %17
  %23 = load ptr, ptr %2, align 8, !tbaa !40
  br label %27

24:                                               ; preds = %17
  %25 = getelementptr inbounds %struct.Base, ptr %20, i64 0, i32 7
  %26 = load ptr, ptr %25, align 8, !tbaa !92
  store ptr %26, ptr %5, align 8, !tbaa !40
  store i32 1, ptr %8, align 8, !tbaa !282
  br label %66

27:                                               ; preds = %22, %32
  %28 = phi ptr [ %23, %22 ], [ %30, %32 ]
  %29 = getelementptr inbounds %struct.Scene, ptr %28, i64 0, i32 4
  %30 = load ptr, ptr %29, align 8, !tbaa !85
  %31 = icmp eq ptr %30, null
  br i1 %31, label %66, label %32

32:                                               ; preds = %27
  store ptr %30, ptr %2, align 8, !tbaa !40
  %33 = getelementptr inbounds %struct.Scene, ptr %30, i64 0, i32 5
  %34 = load ptr, ptr %33, align 8, !tbaa !285
  %35 = icmp eq ptr %34, null
  br i1 %35, label %27, label %36, !llvm.loop !286

36:                                               ; preds = %32
  store ptr %34, ptr %4, align 8, !tbaa !40
  %37 = getelementptr inbounds %struct.Base, ptr %34, i64 0, i32 7
  %38 = load ptr, ptr %37, align 8, !tbaa !92
  store ptr %38, ptr %5, align 8, !tbaa !40
  store i32 1, ptr %8, align 8, !tbaa !282
  br label %66

39:                                               ; preds = %14
  %40 = load ptr, ptr %4, align 8, !tbaa !40
  %41 = icmp eq ptr %40, null
  %42 = icmp eq i32 %15, 3
  %43 = or i1 %42, %41
  br i1 %43, label %69, label %44

44:                                               ; preds = %39
  %45 = load ptr, ptr %40, align 8, !tbaa !287
  store ptr %45, ptr %4, align 8, !tbaa !40
  %46 = icmp eq ptr %45, null
  br i1 %46, label %50, label %47

47:                                               ; preds = %44
  %48 = getelementptr inbounds %struct.Base, ptr %45, i64 0, i32 7
  %49 = load ptr, ptr %48, align 8, !tbaa !92
  store ptr %49, ptr %5, align 8, !tbaa !40
  br label %66

50:                                               ; preds = %44
  %51 = icmp eq i32 %15, 1
  br i1 %51, label %52, label %73

52:                                               ; preds = %50
  %53 = load ptr, ptr %2, align 8, !tbaa !40
  br label %54

54:                                               ; preds = %52, %59
  %55 = phi ptr [ %53, %52 ], [ %57, %59 ]
  %56 = getelementptr inbounds %struct.Scene, ptr %55, i64 0, i32 4
  %57 = load ptr, ptr %56, align 8, !tbaa !85
  %58 = icmp eq ptr %57, null
  br i1 %58, label %66, label %59

59:                                               ; preds = %54
  store ptr %57, ptr %2, align 8, !tbaa !40
  %60 = getelementptr inbounds %struct.Scene, ptr %57, i64 0, i32 5
  %61 = load ptr, ptr %60, align 8, !tbaa !285
  %62 = icmp eq ptr %61, null
  br i1 %62, label %54, label %63, !llvm.loop !288

63:                                               ; preds = %59
  store ptr %61, ptr %4, align 8, !tbaa !40
  %64 = getelementptr inbounds %struct.Base, ptr %61, i64 0, i32 7
  %65 = load ptr, ptr %64, align 8, !tbaa !92
  store ptr %65, ptr %5, align 8, !tbaa !40
  br label %66

66:                                               ; preds = %54, %27, %36, %24, %47, %63
  %67 = phi i32 [ 1, %36 ], [ 1, %24 ], [ %15, %47 ], [ 1, %63 ], [ 0, %27 ], [ 1, %54 ]
  %68 = load ptr, ptr %4, align 8, !tbaa !40
  br label %69

69:                                               ; preds = %66, %39
  %70 = phi i32 [ %67, %66 ], [ %15, %39 ]
  %71 = phi ptr [ %68, %66 ], [ %40, %39 ]
  %72 = icmp eq ptr %71, null
  br i1 %72, label %73, label %74

73:                                               ; preds = %50, %69
  store i32 0, ptr %8, align 8, !tbaa !282
  br label %136

74:                                               ; preds = %69
  %75 = icmp eq i32 %70, 3
  br i1 %75, label %94, label %76

76:                                               ; preds = %74
  %77 = getelementptr inbounds %struct.Base, ptr %71, i64 0, i32 7
  %78 = load ptr, ptr %77, align 8, !tbaa !92
  %79 = getelementptr inbounds %struct.Object, ptr %78, i64 0, i32 55
  %80 = load i16, ptr %79, align 8, !tbaa !289
  %81 = and i16 %80, 2840
  %82 = icmp eq i16 %81, 0
  br i1 %82, label %94, label %83

83:                                               ; preds = %76
  %84 = getelementptr inbounds %struct.Object, ptr %78, i64 0, i32 112
  %85 = load ptr, ptr %84, align 8, !tbaa !290
  %86 = icmp eq ptr %85, null
  br i1 %86, label %87, label %94

87:                                               ; preds = %83
  %88 = load ptr, ptr %2, align 8, !tbaa !40
  %89 = tail call ptr @object_duplilist_ex(ptr noundef %0, ptr noundef %88, ptr noundef nonnull %78, i8 noundef zeroext 0) #24
  store ptr %89, ptr %1, align 8, !tbaa !291
  %90 = load ptr, ptr %89, align 8, !tbaa !292
  store ptr %90, ptr %11, align 8, !tbaa !293
  %91 = icmp eq ptr %90, null
  br i1 %91, label %92, label %93

92:                                               ; preds = %87
  tail call void @free_object_duplilist(ptr noundef nonnull %89) #24
  store ptr null, ptr %1, align 8, !tbaa !291
  br label %93

93:                                               ; preds = %92, %87
  store ptr null, ptr %9, align 8, !tbaa !284
  br label %94

94:                                               ; preds = %76, %93, %83, %74
  %95 = load ptr, ptr %11, align 8, !tbaa !293
  %96 = icmp eq ptr %95, null
  br i1 %96, label %122, label %97

97:                                               ; preds = %94
  %98 = load ptr, ptr %4, align 8, !tbaa !40
  %99 = getelementptr inbounds %struct.Base, ptr %98, i64 0, i32 4
  %100 = load i32, ptr %99, align 8, !tbaa !254
  %101 = or i32 %100, 512
  store i32 %101, ptr %99, align 8, !tbaa !254
  %102 = getelementptr inbounds %struct.DupliObject, ptr %95, i64 0, i32 2
  %103 = load ptr, ptr %102, align 8, !tbaa !294
  store ptr %103, ptr %5, align 8, !tbaa !40
  store i32 3, ptr %8, align 8, !tbaa !282
  %104 = load ptr, ptr %9, align 8, !tbaa !284
  %105 = icmp eq ptr %104, %103
  br i1 %105, label %115, label %106

106:                                              ; preds = %97
  %107 = icmp eq ptr %104, null
  br i1 %107, label %111, label %108

108:                                              ; preds = %106
  %109 = getelementptr inbounds %struct.Object, ptr %104, i64 0, i32 47
  tail call void @copy_m4_m4(ptr noundef nonnull %109, ptr noundef nonnull %12) #24
  %110 = load ptr, ptr %5, align 8, !tbaa !40
  br label %111

111:                                              ; preds = %108, %106
  %112 = phi ptr [ %110, %108 ], [ %103, %106 ]
  store ptr %112, ptr %9, align 8, !tbaa !284
  %113 = getelementptr inbounds %struct.Object, ptr %112, i64 0, i32 47
  tail call void @copy_m4_m4(ptr noundef nonnull %12, ptr noundef nonnull %113) #24
  %114 = load ptr, ptr %5, align 8, !tbaa !40
  br label %115

115:                                              ; preds = %111, %97
  %116 = phi ptr [ %114, %111 ], [ %103, %97 ]
  %117 = getelementptr inbounds %struct.Object, ptr %116, i64 0, i32 47
  %118 = load ptr, ptr %11, align 8, !tbaa !293
  %119 = getelementptr inbounds %struct.DupliObject, ptr %118, i64 0, i32 3
  tail call void @copy_m4_m4(ptr noundef nonnull %117, ptr noundef nonnull %119) #24
  %120 = load ptr, ptr %11, align 8, !tbaa !293
  %121 = load ptr, ptr %120, align 8, !tbaa !296
  store ptr %121, ptr %11, align 8, !tbaa !293
  br label %136

122:                                              ; preds = %94
  %123 = load i32, ptr %8, align 8, !tbaa !282
  %124 = icmp eq i32 %123, 3
  br i1 %124, label %125, label %136

125:                                              ; preds = %122
  store i32 1, ptr %8, align 8, !tbaa !282
  %126 = load ptr, ptr %4, align 8, !tbaa !40
  %127 = getelementptr inbounds %struct.Base, ptr %126, i64 0, i32 4
  %128 = load i32, ptr %127, align 8, !tbaa !254
  %129 = and i32 %128, -513
  store i32 %129, ptr %127, align 8, !tbaa !254
  %130 = load ptr, ptr %9, align 8, !tbaa !284
  %131 = icmp eq ptr %130, null
  br i1 %131, label %134, label %132

132:                                              ; preds = %125
  %133 = getelementptr inbounds %struct.Object, ptr %130, i64 0, i32 47
  tail call void @copy_m4_m4(ptr noundef nonnull %133, ptr noundef nonnull %12) #24
  store ptr null, ptr %9, align 8, !tbaa !284
  br label %134

134:                                              ; preds = %125, %132
  %135 = load ptr, ptr %1, align 8, !tbaa !291
  tail call void @free_object_duplilist(ptr noundef %135) #24
  store ptr null, ptr %1, align 8, !tbaa !291
  br label %14, !llvm.loop !297

136:                                              ; preds = %122, %73, %115
  %137 = load i32, ptr %8, align 8, !tbaa !282
  br label %138

138:                                              ; preds = %136, %13
  %139 = phi i32 [ %137, %136 ], [ 0, %13 ]
  ret i32 %139
}

; Function Attrs: optsize
declare ptr @object_duplilist_ex(ptr noundef, ptr noundef, ptr noundef, i8 noundef zeroext) local_unnamed_addr #3

; Function Attrs: optsize
declare void @free_object_duplilist(ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare void @copy_m4_m4(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(read, inaccessiblemem: none) uwtable
define dso_local ptr @BKE_scene_camera_find(ptr nocapture noundef readonly %0) local_unnamed_addr #7 {
  %2 = getelementptr inbounds %struct.Scene, ptr %0, i64 0, i32 5
  br label %3

3:                                                ; preds = %7, %1
  %4 = phi ptr [ %2, %1 ], [ %5, %7 ]
  %5 = load ptr, ptr %4, align 8, !tbaa !40
  %6 = icmp eq ptr %5, null
  br i1 %6, label %13, label %7

7:                                                ; preds = %3
  %8 = getelementptr inbounds %struct.Base, ptr %5, i64 0, i32 7
  %9 = load ptr, ptr %8, align 8, !tbaa !92
  %10 = getelementptr inbounds %struct.Object, ptr %9, i64 0, i32 3
  %11 = load i16, ptr %10, align 8, !tbaa !298
  %12 = icmp eq i16 %11, 11
  br i1 %12, label %13, label %3, !llvm.loop !299

13:                                               ; preds = %3, %7
  %14 = phi ptr [ %9, %7 ], [ null, %3 ]
  ret ptr %14
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(read, inaccessiblemem: none) uwtable
define dso_local ptr @BKE_scene_camera_switch_find(ptr nocapture noundef readonly %0) local_unnamed_addr #7 {
  %2 = getelementptr inbounds %struct.Scene, ptr %0, i64 0, i32 22, i32 5
  %3 = load i32, ptr %2, align 8, !tbaa !122
  %4 = getelementptr inbounds %struct.Scene, ptr %0, i64 0, i32 24
  %5 = load ptr, ptr %4, align 8, !tbaa !40
  %6 = icmp eq ptr %5, null
  br i1 %6, label %42, label %7

7:                                                ; preds = %1, %35
  %8 = phi ptr [ %40, %35 ], [ %5, %1 ]
  %9 = phi ptr [ %39, %35 ], [ null, %1 ]
  %10 = phi ptr [ %38, %35 ], [ null, %1 ]
  %11 = phi i32 [ %37, %35 ], [ 300001, %1 ]
  %12 = phi i32 [ %36, %35 ], [ -300001, %1 ]
  %13 = getelementptr inbounds %struct.TimeMarker, ptr %8, i64 0, i32 5
  %14 = load ptr, ptr %13, align 8, !tbaa !300
  %15 = icmp eq ptr %14, null
  br i1 %15, label %35, label %16

16:                                               ; preds = %7
  %17 = getelementptr inbounds %struct.Object, ptr %14, i64 0, i32 102
  %18 = load i8, ptr %17, align 8, !tbaa !302
  %19 = and i8 %18, 4
  %20 = icmp eq i8 %19, 0
  br i1 %20, label %21, label %35

21:                                               ; preds = %16
  %22 = getelementptr inbounds %struct.TimeMarker, ptr %8, i64 0, i32 2
  %23 = load i32, ptr %22, align 8, !tbaa !303
  %24 = icmp sle i32 %23, %3
  %25 = icmp sgt i32 %23, %12
  %26 = select i1 %24, i1 %25, i1 false
  br i1 %26, label %27, label %29

27:                                               ; preds = %21
  %28 = icmp eq i32 %23, %3
  br i1 %28, label %42, label %29

29:                                               ; preds = %27, %21
  %30 = phi i32 [ %23, %27 ], [ %12, %21 ]
  %31 = phi ptr [ %14, %27 ], [ %10, %21 ]
  %32 = icmp slt i32 %23, %11
  %33 = tail call i32 @llvm.smin.i32(i32 %23, i32 %11)
  %34 = select i1 %32, ptr %14, ptr %9
  br label %35

35:                                               ; preds = %29, %7, %16
  %36 = phi i32 [ %12, %16 ], [ %12, %7 ], [ %30, %29 ]
  %37 = phi i32 [ %11, %16 ], [ %11, %7 ], [ %33, %29 ]
  %38 = phi ptr [ %10, %16 ], [ %10, %7 ], [ %31, %29 ]
  %39 = phi ptr [ %9, %16 ], [ %9, %7 ], [ %34, %29 ]
  %40 = load ptr, ptr %8, align 8, !tbaa !40
  %41 = icmp eq ptr %40, null
  br i1 %41, label %42, label %7, !llvm.loop !304

42:                                               ; preds = %35, %27, %1
  %43 = phi ptr [ null, %1 ], [ %9, %27 ], [ %39, %35 ]
  %44 = phi ptr [ null, %1 ], [ %14, %27 ], [ %38, %35 ]
  %45 = icmp eq ptr %44, null
  %46 = select i1 %45, ptr %43, ptr %44
  ret ptr %46
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local noundef i32 @BKE_scene_camera_switch_update(ptr nocapture noundef %0) local_unnamed_addr #4 {
  %2 = tail call ptr @BKE_scene_camera_switch_find(ptr noundef %0) #25
  %3 = icmp eq ptr %2, null
  br i1 %3, label %6, label %4

4:                                                ; preds = %1
  %5 = getelementptr inbounds %struct.Scene, ptr %0, i64 0, i32 2
  store ptr %2, ptr %5, align 8, !tbaa !113
  br label %6

6:                                                ; preds = %1, %4
  %7 = phi i32 [ 1, %4 ], [ 0, %1 ]
  ret i32 %7
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(read, inaccessiblemem: none) uwtable
define dso_local ptr @BKE_scene_find_marker_name(ptr nocapture noundef readonly %0, i32 noundef %1) local_unnamed_addr #7 {
  %3 = getelementptr inbounds %struct.Scene, ptr %0, i64 0, i32 24
  %4 = getelementptr inbounds %struct.Scene, ptr %0, i64 0, i32 24, i32 1
  %5 = load ptr, ptr %4, align 8, !tbaa !40
  %6 = load ptr, ptr %3, align 8, !tbaa !40
  %7 = icmp ne ptr %6, null
  %8 = icmp ne ptr %5, null
  %9 = select i1 %7, i1 %8, i1 false
  br i1 %9, label %10, label %33

10:                                               ; preds = %2, %26
  %11 = phi ptr [ %29, %26 ], [ %6, %2 ]
  %12 = phi ptr [ %28, %26 ], [ %5, %2 ]
  %13 = getelementptr inbounds %struct.TimeMarker, ptr %11, i64 0, i32 2
  %14 = load i32, ptr %13, align 8, !tbaa !303
  %15 = icmp eq i32 %14, %1
  br i1 %15, label %16, label %18

16:                                               ; preds = %10
  %17 = getelementptr inbounds %struct.TimeMarker, ptr %11, i64 0, i32 3
  br label %33

18:                                               ; preds = %10
  %19 = icmp eq ptr %11, %12
  br i1 %19, label %33, label %20

20:                                               ; preds = %18
  %21 = getelementptr inbounds %struct.TimeMarker, ptr %12, i64 0, i32 2
  %22 = load i32, ptr %21, align 8, !tbaa !303
  %23 = icmp eq i32 %22, %1
  br i1 %23, label %24, label %26

24:                                               ; preds = %20
  %25 = getelementptr inbounds %struct.TimeMarker, ptr %12, i64 0, i32 3
  br label %33

26:                                               ; preds = %20
  %27 = getelementptr inbounds %struct.TimeMarker, ptr %12, i64 0, i32 1
  %28 = load ptr, ptr %27, align 8, !tbaa !40
  %29 = load ptr, ptr %11, align 8, !tbaa !40
  %30 = icmp ne ptr %29, null
  %31 = icmp ne ptr %28, null
  %32 = select i1 %30, i1 %31, i1 false
  br i1 %32, label %10, label %33, !llvm.loop !305

33:                                               ; preds = %18, %26, %2, %24, %16
  %34 = phi ptr [ %17, %16 ], [ %25, %24 ], [ null, %2 ], [ null, %26 ], [ null, %18 ]
  ret ptr %34
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(read, inaccessiblemem: none) uwtable
define dso_local ptr @BKE_scene_find_last_marker_name(ptr nocapture noundef readonly %0, i32 noundef %1) local_unnamed_addr #7 {
  %3 = getelementptr inbounds %struct.Scene, ptr %0, i64 0, i32 24
  %4 = load ptr, ptr %3, align 8, !tbaa !40
  %5 = icmp eq ptr %4, null
  br i1 %5, label %23, label %6

6:                                                ; preds = %2, %15
  %7 = phi ptr [ %21, %15 ], [ %4, %2 ]
  %8 = phi i32 [ %20, %15 ], [ -600000, %2 ]
  %9 = phi ptr [ %19, %15 ], [ null, %2 ]
  %10 = getelementptr inbounds %struct.TimeMarker, ptr %7, i64 0, i32 2
  %11 = load i32, ptr %10, align 8, !tbaa !303
  %12 = icmp eq i32 %11, %1
  br i1 %12, label %13, label %15

13:                                               ; preds = %6
  %14 = getelementptr inbounds %struct.TimeMarker, ptr %7, i64 0, i32 3
  br label %28

15:                                               ; preds = %6
  %16 = icmp sgt i32 %11, %8
  %17 = icmp slt i32 %11, %1
  %18 = and i1 %16, %17
  %19 = select i1 %18, ptr %7, ptr %9
  %20 = select i1 %18, i32 %11, i32 %8
  %21 = load ptr, ptr %7, align 8, !tbaa !40
  %22 = icmp eq ptr %21, null
  br i1 %22, label %23, label %6, !llvm.loop !306

23:                                               ; preds = %15, %2
  %24 = phi ptr [ null, %2 ], [ %19, %15 ]
  %25 = icmp eq ptr %24, null
  %26 = getelementptr inbounds %struct.TimeMarker, ptr %24, i64 0, i32 3
  %27 = select i1 %25, ptr null, ptr %26
  br label %28

28:                                               ; preds = %23, %13
  %29 = phi ptr [ %14, %13 ], [ %27, %23 ]
  ret ptr %29
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef ptr @BKE_scene_base_add(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = load ptr, ptr @MEM_callocN, align 8, !tbaa !40
  %4 = tail call ptr %3(i64 noundef 40, ptr noundef nonnull @.str.7) #24
  %5 = getelementptr inbounds %struct.Scene, ptr %0, i64 0, i32 5
  tail call void @BLI_addhead(ptr noundef nonnull %5, ptr noundef %4) #24
  %6 = getelementptr inbounds %struct.Base, ptr %4, i64 0, i32 7
  store ptr %1, ptr %6, align 8, !tbaa !92
  %7 = getelementptr inbounds %struct.Object, ptr %1, i64 0, i32 53
  %8 = load i16, ptr %7, align 4, !tbaa !245
  %9 = sext i16 %8 to i32
  %10 = getelementptr inbounds %struct.Base, ptr %4, i64 0, i32 4
  store i32 %9, ptr %10, align 8, !tbaa !254
  %11 = getelementptr inbounds %struct.Object, ptr %1, i64 0, i32 52
  %12 = load i32, ptr %11, align 8, !tbaa !253
  %13 = getelementptr inbounds %struct.Base, ptr %4, i64 0, i32 2
  store i32 %12, ptr %13, align 8, !tbaa !252
  ret ptr %4
}

; Function Attrs: optsize
declare void @BLI_addhead(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @BKE_scene_base_unlink(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.Base, ptr %1, i64 0, i32 7
  %4 = load ptr, ptr %3, align 8, !tbaa !92
  %5 = getelementptr inbounds %struct.Object, ptr %4, i64 0, i32 129
  %6 = load ptr, ptr %5, align 8, !tbaa !307
  %7 = icmp eq ptr %6, null
  br i1 %7, label %10, label %8

8:                                                ; preds = %2
  tail call void @BKE_rigidbody_remove_constraint(ptr noundef %0, ptr noundef nonnull %4) #24
  %9 = load ptr, ptr %3, align 8, !tbaa !92
  br label %10

10:                                               ; preds = %8, %2
  %11 = phi ptr [ %9, %8 ], [ %4, %2 ]
  %12 = getelementptr inbounds %struct.Object, ptr %11, i64 0, i32 128
  %13 = load ptr, ptr %12, align 8, !tbaa !308
  %14 = icmp eq ptr %13, null
  br i1 %14, label %16, label %15

15:                                               ; preds = %10
  tail call void @BKE_rigidbody_remove_object(ptr noundef %0, ptr noundef nonnull %11) #24
  br label %16

16:                                               ; preds = %15, %10
  %17 = getelementptr inbounds %struct.Scene, ptr %0, i64 0, i32 5
  tail call void @BLI_remlink(ptr noundef nonnull %17, ptr noundef nonnull %1) #24
  ret void
}

; Function Attrs: optsize
declare void @BKE_rigidbody_remove_constraint(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare void @BKE_rigidbody_remove_object(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare void @BLI_remlink(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @BKE_scene_base_deselect_all(ptr nocapture noundef readonly %0) local_unnamed_addr #8 {
  %2 = getelementptr inbounds %struct.Scene, ptr %0, i64 0, i32 5
  %3 = load ptr, ptr %2, align 8, !tbaa !40
  %4 = icmp eq ptr %3, null
  br i1 %4, label %16, label %5

5:                                                ; preds = %1, %5
  %6 = phi ptr [ %14, %5 ], [ %3, %1 ]
  %7 = getelementptr inbounds %struct.Base, ptr %6, i64 0, i32 4
  %8 = load i32, ptr %7, align 8, !tbaa !254
  %9 = and i32 %8, -2
  store i32 %9, ptr %7, align 8, !tbaa !254
  %10 = trunc i32 %9 to i16
  %11 = getelementptr inbounds %struct.Base, ptr %6, i64 0, i32 7
  %12 = load ptr, ptr %11, align 8, !tbaa !92
  %13 = getelementptr inbounds %struct.Object, ptr %12, i64 0, i32 53
  store i16 %10, ptr %13, align 4, !tbaa !245
  %14 = load ptr, ptr %6, align 8, !tbaa !40
  %15 = icmp eq ptr %14, null
  br i1 %15, label %16, label %5, !llvm.loop !309

16:                                               ; preds = %5, %1
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(write, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local void @BKE_scene_base_select(ptr nocapture noundef writeonly %0, ptr noundef %1) local_unnamed_addr #9 {
  %3 = getelementptr inbounds %struct.Base, ptr %1, i64 0, i32 4
  %4 = load i32, ptr %3, align 8, !tbaa !254
  %5 = or i32 %4, 1
  store i32 %5, ptr %3, align 8, !tbaa !254
  %6 = trunc i32 %5 to i16
  %7 = getelementptr inbounds %struct.Base, ptr %1, i64 0, i32 7
  %8 = load ptr, ptr %7, align 8, !tbaa !92
  %9 = getelementptr inbounds %struct.Object, ptr %8, i64 0, i32 53
  store i16 %6, ptr %9, align 4, !tbaa !245
  %10 = getelementptr inbounds %struct.Scene, ptr %0, i64 0, i32 6
  store ptr %1, ptr %10, align 8, !tbaa !94
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define dso_local float @BKE_scene_frame_get(ptr nocapture noundef readonly %0) local_unnamed_addr #10 {
  %2 = getelementptr inbounds %struct.Scene, ptr %0, i64 0, i32 22, i32 5
  %3 = load i32, ptr %2, align 8, !tbaa !122
  %4 = sitofp i32 %3 to float
  %5 = tail call float @BKE_scene_frame_get_from_ctime(ptr noundef %0, float noundef %4) #25
  ret float %5
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define dso_local float @BKE_scene_frame_get_from_ctime(ptr nocapture noundef readonly %0, float noundef %1) local_unnamed_addr #10 {
  %3 = getelementptr inbounds %struct.Scene, ptr %0, i64 0, i32 22, i32 8
  %4 = load float, ptr %3, align 4, !tbaa !310
  %5 = fadd float %4, %1
  %6 = getelementptr inbounds %struct.Scene, ptr %0, i64 0, i32 22, i32 15
  %7 = load float, ptr %6, align 4, !tbaa !311
  %8 = fmul float %5, %7
  ret float %8
}

; Function Attrs: mustprogress nofree noinline nounwind optsize willreturn memory(argmem: write) uwtable
define dso_local void @BKE_scene_frame_set(ptr nocapture noundef writeonly %0, double noundef %1) local_unnamed_addr #11 {
  %3 = alloca double, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #27
  %4 = call double @modf(double noundef %1, ptr noundef nonnull %3) #24
  %5 = fptrunc double %4 to float
  %6 = getelementptr inbounds %struct.Scene, ptr %0, i64 0, i32 22, i32 8
  store float %5, ptr %6, align 4, !tbaa !310
  %7 = load double, ptr %3, align 8, !tbaa !312
  %8 = fptosi double %7 to i32
  %9 = getelementptr inbounds %struct.Scene, ptr %0, i64 0, i32 22, i32 5
  store i32 %8, ptr %9, align 8, !tbaa !122
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #27
  ret void
}

; Function Attrs: mustprogress nofree nounwind optsize willreturn memory(argmem: write)
declare double @modf(double noundef, ptr nocapture noundef) local_unnamed_addr #12

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @BKE_scene_update_tagged(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #0 {
  %4 = alloca %struct.NodeTreeIterStore, align 8
  %5 = alloca ptr, align 8
  %6 = alloca ptr, align 8
  tail call void @BLI_callback_exec(ptr noundef %1, ptr noundef %2, i32 noundef 12) #24
  %7 = icmp eq ptr %2, null
  br i1 %7, label %13, label %8

8:                                                ; preds = %3, %8
  %9 = phi ptr [ %11, %8 ], [ %2, %3 ]
  tail call void @DAG_scene_relations_update(ptr noundef %1, ptr noundef nonnull %9) #24
  %10 = getelementptr inbounds %struct.Scene, ptr %9, i64 0, i32 4
  %11 = load ptr, ptr %10, align 8, !tbaa !85
  %12 = icmp eq ptr %11, null
  br i1 %12, label %13, label %8, !llvm.loop !314

13:                                               ; preds = %8, %3
  tail call fastcc void @prepare_mesh_for_viewport_render(ptr noundef %1, ptr noundef %2) #25
  tail call void @DAG_ids_flush_tagged(ptr noundef %1) #24
  tail call void @BKE_main_id_tag_idcode(ptr noundef %1, i16 noundef signext 16717, i8 noundef zeroext 0) #24
  tail call void @BKE_main_id_tag_idcode(ptr noundef %1, i16 noundef signext 16716, i8 noundef zeroext 0) #24
  tail call fastcc void @scene_update_tagged_recursive(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %2) #25
  tail call void @sound_update_scene(ptr noundef %1, ptr noundef %2) #24
  %14 = tail call ptr @BKE_animdata_from_id(ptr noundef %2) #24
  %15 = tail call float @BKE_scene_frame_get(ptr noundef %2) #25
  %16 = icmp eq ptr %14, null
  br i1 %16, label %23, label %17

17:                                               ; preds = %13
  %18 = getelementptr inbounds %struct.AnimData, ptr %14, i64 0, i32 8
  %19 = load i32, ptr %18, align 4, !tbaa !315
  %20 = and i32 %19, 2
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %23, label %22

22:                                               ; preds = %17
  tail call void @BKE_animsys_evaluate_animdata(ptr noundef %2, ptr noundef %2, ptr noundef nonnull %14, float noundef %15, i16 noundef signext 0) #24
  br label %23

23:                                               ; preds = %22, %17, %13
  %24 = tail call i32 @DAG_id_type_tagged(ptr noundef %1, i16 noundef signext 16717) #24
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %44, label %26

26:                                               ; preds = %23
  %27 = tail call float @BKE_scene_frame_get(ptr noundef %2) #25
  %28 = getelementptr inbounds %struct.Main, ptr %1, i64 0, i32 17
  %29 = load ptr, ptr %28, align 8, !tbaa !40
  %30 = icmp eq ptr %29, null
  br i1 %30, label %44, label %31

31:                                               ; preds = %26, %41
  %32 = phi ptr [ %42, %41 ], [ %29, %26 ]
  %33 = tail call ptr @BKE_animdata_from_id(ptr noundef nonnull %32) #24
  %34 = icmp eq ptr %33, null
  br i1 %34, label %41, label %35

35:                                               ; preds = %31
  %36 = getelementptr inbounds %struct.AnimData, ptr %33, i64 0, i32 8
  %37 = load i32, ptr %36, align 4, !tbaa !315
  %38 = and i32 %37, 2
  %39 = icmp eq i32 %38, 0
  br i1 %39, label %41, label %40

40:                                               ; preds = %35
  tail call void @BKE_animsys_evaluate_animdata(ptr noundef %2, ptr noundef nonnull %32, ptr noundef nonnull %33, float noundef %27, i16 noundef signext 0) #24
  br label %41

41:                                               ; preds = %40, %35, %31
  %42 = load ptr, ptr %32, align 8, !tbaa !40
  %43 = icmp eq ptr %42, null
  br i1 %43, label %44, label %31, !llvm.loop !316

44:                                               ; preds = %41, %26, %23
  %45 = tail call i32 @DAG_id_type_tagged(ptr noundef %1, i16 noundef signext 21582) #24
  %46 = icmp eq i32 %45, 0
  br i1 %46, label %68, label %47

47:                                               ; preds = %44
  %48 = tail call float @BKE_scene_frame_get(ptr noundef %2) #25
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %4) #27
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #27
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %6) #27
  call void @BKE_node_tree_iter_init(ptr noundef nonnull %4, ptr noundef %1) #24
  %49 = call zeroext i8 @BKE_node_tree_iter_step(ptr noundef nonnull %4, ptr noundef nonnull %5, ptr noundef nonnull %6) #24
  %50 = icmp eq i8 %49, 1
  br i1 %50, label %51, label %67

51:                                               ; preds = %47, %64
  %52 = load ptr, ptr %5, align 8, !tbaa !40
  %53 = icmp eq ptr %52, null
  br i1 %53, label %64, label %54

54:                                               ; preds = %51
  %55 = call ptr @BKE_animdata_from_id(ptr noundef nonnull %52) #24
  %56 = icmp eq ptr %55, null
  br i1 %56, label %64, label %57

57:                                               ; preds = %54
  %58 = getelementptr inbounds %struct.AnimData, ptr %55, i64 0, i32 8
  %59 = load i32, ptr %58, align 4, !tbaa !315
  %60 = and i32 %59, 2
  %61 = icmp eq i32 %60, 0
  br i1 %61, label %64, label %62

62:                                               ; preds = %57
  %63 = load ptr, ptr %5, align 8, !tbaa !40
  call void @BKE_animsys_evaluate_animdata(ptr noundef %2, ptr noundef %63, ptr noundef nonnull %55, float noundef %48, i16 noundef signext 0) #24
  br label %64

64:                                               ; preds = %54, %57, %62, %51
  %65 = call zeroext i8 @BKE_node_tree_iter_step(ptr noundef nonnull %4, ptr noundef nonnull %5, ptr noundef nonnull %6) #24
  %66 = icmp eq i8 %65, 1
  br i1 %66, label %51, label %67, !llvm.loop !317

67:                                               ; preds = %64, %47
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %6) #27
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #27
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %4) #27
  br label %68

68:                                               ; preds = %67, %44
  call void @BLI_callback_exec(ptr noundef %1, ptr noundef %2, i32 noundef 13) #24
  call void @DAG_ids_check_recalc(ptr noundef %1, ptr noundef %2, i8 noundef zeroext 0) #24
  call void @DAG_ids_clear_recalc(ptr noundef %1) #24
  ret void
}

; Function Attrs: optsize
declare void @BLI_callback_exec(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare void @DAG_scene_relations_update(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @prepare_mesh_for_viewport_render(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) unnamed_addr #0 !PGOFuncName !318 {
  %3 = getelementptr inbounds %struct.Scene, ptr %1, i64 0, i32 7
  %4 = load ptr, ptr %3, align 8, !tbaa !88
  %5 = icmp eq ptr %4, null
  br i1 %5, label %24, label %6

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.Object, ptr %4, i64 0, i32 19
  %8 = load ptr, ptr %7, align 8, !tbaa !319
  %9 = getelementptr inbounds %struct.Object, ptr %4, i64 0, i32 3
  %10 = load i16, ptr %9, align 8, !tbaa !298
  %11 = icmp eq i16 %10, 1
  br i1 %11, label %12, label %24

12:                                               ; preds = %6
  %13 = getelementptr inbounds %struct.ID, ptr %8, i64 0, i32 5
  %14 = load i16, ptr %13, align 2, !tbaa !320
  %15 = and i16 %14, 12288
  %16 = icmp eq i16 %15, 0
  br i1 %16, label %24, label %17

17:                                               ; preds = %12
  %18 = tail call fastcc zeroext i8 @check_rendered_viewport_visible(ptr noundef %0) #25
  %19 = icmp eq i8 %18, 0
  br i1 %19, label %24, label %20

20:                                               ; preds = %17
  %21 = getelementptr inbounds %struct.Mesh, ptr %8, i64 0, i32 20
  %22 = load ptr, ptr %21, align 8, !tbaa !323
  %23 = load ptr, ptr %22, align 8, !tbaa !324
  tail call void @BM_mesh_bm_to_me(ptr noundef %23, ptr noundef nonnull %8, i8 noundef zeroext 0) #24
  tail call void @DAG_id_tag_update(ptr noundef nonnull %8, i16 noundef signext 0) #24
  br label %24

24:                                               ; preds = %6, %12, %20, %17, %2
  ret void
}

; Function Attrs: optsize
declare void @DAG_ids_flush_tagged(ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare void @BKE_main_id_tag_idcode(ptr noundef, i16 noundef signext, i8 noundef zeroext) local_unnamed_addr #3

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @scene_update_tagged_recursive(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) unnamed_addr #0 !PGOFuncName !326 {
  %5 = getelementptr inbounds %struct.Scene, ptr %3, i64 0, i32 42
  %6 = load i64, ptr %5, align 8, !tbaa !327
  %7 = getelementptr inbounds %struct.Scene, ptr %2, i64 0, i32 42
  store i64 %6, ptr %7, align 8, !tbaa !327
  %8 = getelementptr inbounds %struct.Scene, ptr %2, i64 0, i32 4
  %9 = load ptr, ptr %8, align 8, !tbaa !85
  %10 = icmp eq ptr %9, null
  br i1 %10, label %12, label %11

11:                                               ; preds = %4
  tail call fastcc void @scene_update_tagged_recursive(ptr noundef %0, ptr noundef %1, ptr noundef nonnull %9, ptr noundef nonnull %3) #25
  br label %12

12:                                               ; preds = %11, %4
  tail call fastcc void @scene_update_objects(ptr noundef %0, ptr noundef %1, ptr noundef nonnull %2, ptr noundef nonnull %3) #25
  tail call fastcc void @scene_update_drivers(ptr noundef nonnull %2) #25
  tail call void @BKE_mask_update_scene(ptr noundef %1, ptr noundef nonnull %2) #24
  ret void
}

; Function Attrs: optsize
declare void @sound_update_scene(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare ptr @BKE_animdata_from_id(ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare void @BKE_animsys_evaluate_animdata(ptr noundef, ptr noundef, ptr noundef, float noundef, i16 noundef signext) local_unnamed_addr #3

; Function Attrs: optsize
declare i32 @DAG_id_type_tagged(ptr noundef, i16 noundef signext) local_unnamed_addr #3

; Function Attrs: optsize
declare void @BKE_node_tree_iter_init(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare zeroext i8 @BKE_node_tree_iter_step(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare void @DAG_ids_check_recalc(ptr noundef, ptr noundef, i8 noundef zeroext) local_unnamed_addr #3

; Function Attrs: optsize
declare void @DAG_ids_clear_recalc(ptr noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @BKE_scene_update_for_newframe(ptr noundef %0, ptr noundef %1, ptr noundef %2, i32 noundef %3) local_unnamed_addr #0 {
  tail call void @BKE_scene_update_for_newframe_ex(ptr noundef %0, ptr noundef %1, ptr noundef %2, i32 noundef %3, i8 noundef zeroext 0) #25
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @BKE_scene_update_for_newframe_ex(ptr noundef %0, ptr noundef %1, ptr noundef %2, i32 noundef %3, i8 noundef zeroext %4) local_unnamed_addr #0 {
  %6 = tail call float @BKE_scene_frame_get(ptr noundef %2) #25
  tail call void @BLI_callback_exec(ptr noundef %1, ptr noundef %2, i32 noundef 0) #24
  tail call void @BLI_callback_exec(ptr noundef %1, ptr noundef %2, i32 noundef 12) #24
  %7 = getelementptr inbounds %struct.Scene, ptr %2, i64 0, i32 22, i32 5
  %8 = load i32, ptr %7, align 8, !tbaa !122
  tail call void @BKE_image_update_frame(ptr noundef %1, i32 noundef %8) #24
  tail call fastcc void @scene_rebuild_rbw_recursive(ptr noundef %2, float noundef %6) #25
  %9 = load i32, ptr %7, align 8, !tbaa !122
  tail call void @sound_set_cfra(i32 noundef %9) #24
  br label %10

10:                                               ; preds = %5, %10
  %11 = phi ptr [ %13, %10 ], [ %2, %5 ]
  tail call void @DAG_scene_relations_update(ptr noundef %1, ptr noundef nonnull %11) #24
  %12 = getelementptr inbounds %struct.Scene, ptr %11, i64 0, i32 4
  %13 = load ptr, ptr %12, align 8, !tbaa !85
  %14 = icmp eq ptr %13, null
  br i1 %14, label %15, label %10, !llvm.loop !328

15:                                               ; preds = %10
  tail call void @DAG_ids_flush_tagged(ptr noundef %1) #24
  tail call void @DAG_scene_update_flags(ptr noundef %1, ptr noundef %2, i32 noundef %3, i8 noundef zeroext 1, i8 noundef zeroext %4) #24
  tail call void @BKE_mask_evaluate_all_masks(ptr noundef %1, float noundef %6, i8 noundef zeroext 1) #24
  tail call void @BKE_animsys_evaluate_all_animation(ptr noundef %1, ptr noundef %2, float noundef %6) #24
  tail call void @BKE_main_id_tag_idcode(ptr noundef %1, i16 noundef signext 16717, i8 noundef zeroext 0) #24
  tail call void @BKE_main_id_tag_idcode(ptr noundef %1, i16 noundef signext 16716, i8 noundef zeroext 0) #24
  tail call fastcc void @scene_do_rb_simulation_recursive(ptr noundef %2, float noundef %6) #25
  tail call fastcc void @scene_update_tagged_recursive(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %2) #25
  tail call void @sound_update_scene(ptr noundef %1, ptr noundef %2) #24
  tail call fastcc void @scene_depsgraph_hack(ptr noundef %0, ptr noundef %2, ptr noundef %2) #25
  tail call void @BLI_callback_exec(ptr noundef %1, ptr noundef %2, i32 noundef 13) #24
  tail call void @BLI_callback_exec(ptr noundef %1, ptr noundef %2, i32 noundef 1) #24
  tail call void @DAG_ids_check_recalc(ptr noundef %1, ptr noundef %2, i8 noundef zeroext 1) #24
  tail call void @DAG_ids_clear_recalc(ptr noundef %1) #24
  ret void
}

; Function Attrs: optsize
declare void @BKE_image_update_frame(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @scene_rebuild_rbw_recursive(ptr noundef %0, float noundef %1) unnamed_addr #0 !PGOFuncName !329 {
  %3 = getelementptr inbounds %struct.Scene, ptr %0, i64 0, i32 4
  %4 = load ptr, ptr %3, align 8, !tbaa !85
  %5 = icmp eq ptr %4, null
  br i1 %5, label %7, label %6

6:                                                ; preds = %2
  tail call fastcc void @scene_rebuild_rbw_recursive(ptr noundef nonnull %4, float noundef %1) #25
  br label %7

7:                                                ; preds = %6, %2
  %8 = tail call zeroext i8 @BKE_scene_check_rigidbody_active(ptr noundef nonnull %0) #25, !range !330
  %9 = icmp eq i8 %8, 0
  br i1 %9, label %11, label %10

10:                                               ; preds = %7
  tail call void @BKE_rigidbody_rebuild_world(ptr noundef nonnull %0, float noundef %1) #24
  br label %11

11:                                               ; preds = %10, %7
  ret void
}

; Function Attrs: optsize
declare void @sound_set_cfra(i32 noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare void @DAG_scene_update_flags(ptr noundef, ptr noundef, i32 noundef, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #3

; Function Attrs: optsize
declare void @BKE_mask_evaluate_all_masks(ptr noundef, float noundef, i8 noundef zeroext) local_unnamed_addr #3

; Function Attrs: optsize
declare void @BKE_animsys_evaluate_all_animation(ptr noundef, ptr noundef, float noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @scene_do_rb_simulation_recursive(ptr noundef %0, float noundef %1) unnamed_addr #0 !PGOFuncName !331 {
  %3 = getelementptr inbounds %struct.Scene, ptr %0, i64 0, i32 4
  %4 = load ptr, ptr %3, align 8, !tbaa !85
  %5 = icmp eq ptr %4, null
  br i1 %5, label %7, label %6

6:                                                ; preds = %2
  tail call fastcc void @scene_do_rb_simulation_recursive(ptr noundef nonnull %4, float noundef %1) #25
  br label %7

7:                                                ; preds = %6, %2
  %8 = tail call zeroext i8 @BKE_scene_check_rigidbody_active(ptr noundef nonnull %0) #25, !range !330
  %9 = icmp eq i8 %8, 0
  br i1 %9, label %11, label %10

10:                                               ; preds = %7
  tail call void @BKE_rigidbody_do_simulation(ptr noundef nonnull %0, float noundef %1) #24
  br label %11

11:                                               ; preds = %10, %7
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @scene_depsgraph_hack(ptr noundef %0, ptr nocapture noundef %1, ptr noundef %2) unnamed_addr #0 !PGOFuncName !332 {
  %4 = getelementptr inbounds %struct.Scene, ptr %2, i64 0, i32 42
  %5 = load i64, ptr %4, align 8, !tbaa !327
  %6 = getelementptr inbounds %struct.Scene, ptr %1, i64 0, i32 42
  store i64 %5, ptr %6, align 8, !tbaa !327
  %7 = getelementptr inbounds %struct.Scene, ptr %1, i64 0, i32 4
  %8 = load ptr, ptr %7, align 8, !tbaa !85
  %9 = icmp eq ptr %8, null
  br i1 %9, label %11, label %10

10:                                               ; preds = %3
  tail call fastcc void @scene_depsgraph_hack(ptr noundef %0, ptr noundef nonnull %8, ptr noundef nonnull %2) #25
  br label %11

11:                                               ; preds = %10, %3
  %12 = getelementptr inbounds %struct.Scene, ptr %1, i64 0, i32 5
  %13 = load ptr, ptr %12, align 8, !tbaa !40
  %14 = icmp eq ptr %13, null
  br i1 %14, label %55, label %15

15:                                               ; preds = %11, %52
  %16 = phi ptr [ %53, %52 ], [ %13, %11 ]
  %17 = getelementptr inbounds %struct.Base, ptr %16, i64 0, i32 7
  %18 = load ptr, ptr %17, align 8, !tbaa !92
  %19 = getelementptr inbounds %struct.Object, ptr %18, i64 0, i32 63
  %20 = load i8, ptr %19, align 1, !tbaa !333
  %21 = icmp eq i8 %20, 0
  br i1 %21, label %52, label %22

22:                                               ; preds = %15
  %23 = and i8 %20, 3
  %24 = getelementptr inbounds %struct.Object, ptr %18, i64 0, i32 103
  %25 = load i8, ptr %24, align 1, !tbaa !334
  %26 = or i8 %25, %23
  store i8 %26, ptr %24, align 1, !tbaa !334
  tail call void @BKE_object_handle_update(ptr noundef %0, ptr noundef %2, ptr noundef nonnull %18) #24
  %27 = getelementptr inbounds %struct.Object, ptr %18, i64 0, i32 112
  %28 = load ptr, ptr %27, align 8, !tbaa !290
  %29 = icmp eq ptr %28, null
  br i1 %29, label %52, label %30

30:                                               ; preds = %22
  %31 = getelementptr inbounds %struct.Object, ptr %18, i64 0, i32 55
  %32 = load i16, ptr %31, align 8, !tbaa !289
  %33 = and i16 %32, 256
  %34 = icmp eq i16 %33, 0
  br i1 %34, label %52, label %35

35:                                               ; preds = %30
  %36 = getelementptr inbounds %struct.Group, ptr %28, i64 0, i32 1
  %37 = load ptr, ptr %36, align 8, !tbaa !40
  %38 = icmp eq ptr %37, null
  br i1 %38, label %51, label %39

39:                                               ; preds = %35, %48
  %40 = phi ptr [ %49, %48 ], [ %37, %35 ]
  %41 = getelementptr inbounds %struct.GroupObject, ptr %40, i64 0, i32 2
  %42 = load ptr, ptr %41, align 8, !tbaa !248
  %43 = icmp eq ptr %42, null
  br i1 %43, label %48, label %44

44:                                               ; preds = %39
  %45 = getelementptr inbounds %struct.Object, ptr %42, i64 0, i32 103
  %46 = load i8, ptr %45, align 1, !tbaa !334
  %47 = or i8 %46, %23
  store i8 %47, ptr %45, align 1, !tbaa !334
  br label %48

48:                                               ; preds = %39, %44
  %49 = load ptr, ptr %40, align 8, !tbaa !40
  %50 = icmp eq ptr %49, null
  br i1 %50, label %51, label %39, !llvm.loop !335

51:                                               ; preds = %48, %35
  tail call void @BKE_group_handle_recalc_and_update(ptr noundef %0, ptr noundef %2, ptr noundef %18, ptr noundef nonnull %28) #24
  br label %52

52:                                               ; preds = %22, %30, %51, %15
  %53 = load ptr, ptr %16, align 8, !tbaa !40
  %54 = icmp eq ptr %53, null
  br i1 %54, label %55, label %15, !llvm.loop !336

55:                                               ; preds = %52, %11
  ret void
}

; Function Attrs: optsize
declare void @BLI_uniquename(ptr noundef, ptr noundef, ptr noundef, i8 noundef zeroext, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare void @BLI_addtail(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare void @BKE_freestyle_config_init(ptr noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef zeroext i8 @BKE_scene_remove_render_layer(ptr nocapture noundef readonly %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #0 {
  %4 = getelementptr inbounds %struct.Scene, ptr %1, i64 0, i32 22, i32 60
  %5 = tail call i32 @BLI_findindex(ptr noundef nonnull %4, ptr noundef %2) #24
  %6 = icmp eq i32 %5, -1
  br i1 %6, label %55, label %7

7:                                                ; preds = %3
  %8 = load ptr, ptr %4, align 8, !tbaa !337
  %9 = getelementptr inbounds %struct.Scene, ptr %1, i64 0, i32 22, i32 60, i32 1
  %10 = load ptr, ptr %9, align 8, !tbaa !338
  %11 = icmp eq ptr %8, %10
  %12 = icmp eq ptr %8, %2
  %13 = and i1 %12, %11
  br i1 %13, label %55, label %14

14:                                               ; preds = %7
  tail call void @BLI_remlink(ptr noundef nonnull %4, ptr noundef %2) #24
  %15 = load ptr, ptr @MEM_freeN, align 8, !tbaa !40
  tail call void %15(ptr noundef %2) #24
  %16 = getelementptr inbounds %struct.Scene, ptr %1, i64 0, i32 22, i32 61
  store i16 0, ptr %16, align 8, !tbaa !58
  %17 = getelementptr inbounds %struct.Main, ptr %0, i64 0, i32 11
  %18 = load ptr, ptr %17, align 8, !tbaa !40
  %19 = icmp eq ptr %18, null
  br i1 %19, label %55, label %20

20:                                               ; preds = %14, %52
  %21 = phi ptr [ %53, %52 ], [ %18, %14 ]
  %22 = getelementptr inbounds %struct.Scene, ptr %21, i64 0, i32 18
  %23 = load ptr, ptr %22, align 8, !tbaa !91
  %24 = icmp eq ptr %23, null
  br i1 %24, label %52, label %25

25:                                               ; preds = %20
  %26 = getelementptr inbounds %struct.bNodeTree, ptr %23, i64 0, i32 7
  %27 = load ptr, ptr %26, align 8, !tbaa !40
  %28 = icmp eq ptr %27, null
  br i1 %28, label %52, label %29

29:                                               ; preds = %25, %49
  %30 = phi ptr [ %50, %49 ], [ %27, %25 ]
  %31 = getelementptr inbounds %struct.bNode, ptr %30, i64 0, i32 8
  %32 = load i16, ptr %31, align 4, !tbaa !339
  %33 = icmp eq i16 %32, 221
  br i1 %33, label %34, label %49

34:                                               ; preds = %29
  %35 = getelementptr inbounds %struct.bNode, ptr %30, i64 0, i32 20
  %36 = load ptr, ptr %35, align 8, !tbaa !259
  %37 = icmp eq ptr %36, %1
  br i1 %37, label %38, label %49

38:                                               ; preds = %34
  %39 = getelementptr inbounds %struct.bNode, ptr %30, i64 0, i32 33
  %40 = load i16, ptr %39, align 8, !tbaa !340
  %41 = sext i16 %40 to i32
  %42 = icmp eq i32 %5, %41
  br i1 %42, label %47, label %43

43:                                               ; preds = %38
  %44 = icmp slt i32 %5, %41
  br i1 %44, label %45, label %49

45:                                               ; preds = %43
  %46 = add i16 %40, -1
  br label %47

47:                                               ; preds = %38, %45
  %48 = phi i16 [ %46, %45 ], [ 0, %38 ]
  store i16 %48, ptr %39, align 8, !tbaa !340
  br label %49

49:                                               ; preds = %47, %29, %34, %43
  %50 = load ptr, ptr %30, align 8, !tbaa !40
  %51 = icmp eq ptr %50, null
  br i1 %51, label %52, label %29, !llvm.loop !341

52:                                               ; preds = %49, %25, %20
  %53 = load ptr, ptr %21, align 8, !tbaa !40
  %54 = icmp eq ptr %53, null
  br i1 %54, label %55, label %20, !llvm.loop !342

55:                                               ; preds = %52, %14, %7, %3
  %56 = phi i8 [ 0, %3 ], [ 0, %7 ], [ 1, %14 ], [ 1, %52 ]
  ret i8 %56
}

; Function Attrs: optsize
declare i32 @BLI_findindex(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define dso_local noundef i32 @get_render_subsurf_level(ptr nocapture noundef readonly %0, i32 noundef %1) local_unnamed_addr #10 {
  %3 = getelementptr inbounds %struct.RenderData, ptr %0, i64 0, i32 47
  %4 = load i32, ptr %3, align 8, !tbaa !343
  %5 = and i32 %4, 16777216
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %12, label %7

7:                                                ; preds = %2
  %8 = getelementptr inbounds %struct.RenderData, ptr %0, i64 0, i32 96
  %9 = load i16, ptr %8, align 4, !tbaa !344
  %10 = sext i16 %9 to i32
  %11 = tail call fastcc i32 @min_ii(i32 noundef %10, i32 noundef %1) #25
  br label %12

12:                                               ; preds = %2, %7
  %13 = phi i32 [ %11, %7 ], [ %1, %2 ]
  ret i32 %13
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define internal fastcc noundef i32 @min_ii(i32 noundef %0, i32 noundef %1) unnamed_addr #13 !PGOFuncName !345 {
  %3 = tail call i32 @llvm.smin.i32(i32 %0, i32 %1)
  ret i32 %3
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define dso_local i32 @get_render_child_particle_number(ptr nocapture noundef readonly %0, i32 noundef %1) local_unnamed_addr #10 {
  %3 = getelementptr inbounds %struct.RenderData, ptr %0, i64 0, i32 47
  %4 = load i32, ptr %3, align 8, !tbaa !343
  %5 = and i32 %4, 16777216
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %13, label %7

7:                                                ; preds = %2
  %8 = getelementptr inbounds %struct.RenderData, ptr %0, i64 0, i32 98
  %9 = load float, ptr %8, align 8, !tbaa !346
  %10 = sitofp i32 %1 to float
  %11 = fmul float %9, %10
  %12 = fptosi float %11 to i32
  br label %13

13:                                               ; preds = %2, %7
  %14 = phi i32 [ %12, %7 ], [ %1, %2 ]
  ret i32 %14
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define dso_local noundef i32 @get_render_shadow_samples(ptr nocapture noundef readonly %0, i32 noundef %1) local_unnamed_addr #10 {
  %3 = getelementptr inbounds %struct.RenderData, ptr %0, i64 0, i32 47
  %4 = load i32, ptr %3, align 8, !tbaa !343
  %5 = and i32 %4, 16777216
  %6 = icmp ne i32 %5, 0
  %7 = icmp sgt i32 %1, 0
  %8 = and i1 %7, %6
  br i1 %8, label %9, label %14

9:                                                ; preds = %2
  %10 = getelementptr inbounds %struct.RenderData, ptr %0, i64 0, i32 97
  %11 = load i16, ptr %10, align 2, !tbaa !347
  %12 = sext i16 %11 to i32
  %13 = tail call fastcc i32 @min_ii(i32 noundef %12, i32 noundef %1) #25
  br label %14

14:                                               ; preds = %2, %9
  %15 = phi i32 [ %13, %9 ], [ %1, %2 ]
  ret i32 %15
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define dso_local float @get_render_aosss_error(ptr nocapture noundef readonly %0, float noundef %1) local_unnamed_addr #10 {
  %3 = getelementptr inbounds %struct.RenderData, ptr %0, i64 0, i32 47
  %4 = load i32, ptr %3, align 8, !tbaa !343
  %5 = and i32 %4, 16777216
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %13, label %7

7:                                                ; preds = %2
  %8 = getelementptr inbounds %struct.RenderData, ptr %0, i64 0, i32 99
  %9 = load float, ptr %8, align 4, !tbaa !348
  %10 = fsub float 1.000000e+00, %9
  %11 = tail call float @llvm.fmuladd.f32(float %10, float 1.000000e+01, float 1.000000e+00)
  %12 = fmul float %11, %1
  br label %13

13:                                               ; preds = %2, %7
  %14 = phi float [ %12, %7 ], [ %1, %2 ]
  ret float %14
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fmuladd.f32(float, float, float) #14

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local ptr @_setlooper_base_step(ptr nocapture noundef %0, ptr noundef readonly %1) local_unnamed_addr #4 {
  %3 = icmp eq ptr %1, null
  br i1 %3, label %9, label %4

4:                                                ; preds = %2
  %5 = load ptr, ptr %1, align 8, !tbaa !287
  %6 = icmp eq ptr %5, null
  br i1 %6, label %7, label %25

7:                                                ; preds = %4
  %8 = load ptr, ptr %0, align 8, !tbaa !40
  br label %14

9:                                                ; preds = %2
  %10 = load ptr, ptr %0, align 8, !tbaa !40
  %11 = getelementptr inbounds %struct.Scene, ptr %10, i64 0, i32 5
  %12 = load ptr, ptr %11, align 8, !tbaa !285
  %13 = icmp eq ptr %12, null
  br i1 %13, label %14, label %25

14:                                               ; preds = %7, %9
  %15 = phi ptr [ %10, %9 ], [ %8, %7 ]
  br label %16

16:                                               ; preds = %14, %21
  %17 = phi ptr [ %19, %21 ], [ %15, %14 ]
  %18 = getelementptr inbounds %struct.Scene, ptr %17, i64 0, i32 4
  %19 = load ptr, ptr %18, align 8, !tbaa !85
  store ptr %19, ptr %0, align 8, !tbaa !40
  %20 = icmp eq ptr %19, null
  br i1 %20, label %25, label %21

21:                                               ; preds = %16
  %22 = getelementptr inbounds %struct.Scene, ptr %19, i64 0, i32 5
  %23 = load ptr, ptr %22, align 8, !tbaa !285
  %24 = icmp eq ptr %23, null
  br i1 %24, label %16, label %25, !llvm.loop !349

25:                                               ; preds = %16, %21, %9, %4
  %26 = phi ptr [ %5, %4 ], [ %12, %9 ], [ null, %16 ], [ %23, %21 ]
  ret ptr %26
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local zeroext i8 @BKE_scene_use_new_shading_nodes(ptr noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.Scene, ptr %0, i64 0, i32 22, i32 115
  %3 = tail call ptr @RE_engines_find(ptr noundef nonnull %2) #24
  %4 = icmp eq ptr %3, null
  br i1 %4, label %11, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.RenderEngineType, ptr %3, i64 0, i32 4
  %7 = load i32, ptr %6, align 8, !tbaa !350
  %8 = trunc i32 %7 to i8
  %9 = lshr i8 %8, 4
  %10 = and i8 %9, 1
  br label %11

11:                                               ; preds = %5, %1
  %12 = phi i8 [ 0, %1 ], [ %10, %5 ]
  ret i8 %12
}

; Function Attrs: optsize
declare ptr @RE_engines_find(ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree noinline nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local zeroext i8 @BKE_scene_uses_blender_internal(ptr nocapture noundef readonly %0) local_unnamed_addr #15 {
  %2 = getelementptr inbounds %struct.Scene, ptr %0, i64 0, i32 22, i32 115
  %3 = load ptr, ptr @RE_engine_id_BLENDER_RENDER, align 8, !tbaa !40
  %4 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %2, ptr noundef nonnull dereferenceable(1) %3) #26
  %5 = icmp eq i32 %4, 0
  %6 = zext i1 %5 to i8
  ret i8 %6
}

; Function Attrs: mustprogress nofree nounwind optsize willreturn memory(argmem: read)
declare i32 @strcmp(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #16

; Function Attrs: mustprogress nofree noinline nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local zeroext i8 @BKE_scene_uses_blender_game(ptr nocapture noundef readonly %0) local_unnamed_addr #15 {
  %2 = getelementptr inbounds %struct.Scene, ptr %0, i64 0, i32 22, i32 115
  %3 = load ptr, ptr @RE_engine_id_BLENDER_GAME, align 8, !tbaa !40
  %4 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %2, ptr noundef nonnull dereferenceable(1) %3) #26
  %5 = icmp eq i32 %4, 0
  %6 = zext i1 %5 to i8
  ret i8 %6
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @BKE_scene_base_flag_to_objects(ptr nocapture noundef readonly %0) local_unnamed_addr #8 {
  %2 = getelementptr inbounds %struct.Scene, ptr %0, i64 0, i32 5
  %3 = load ptr, ptr %2, align 8, !tbaa !40
  %4 = icmp eq ptr %3, null
  br i1 %4, label %15, label %5

5:                                                ; preds = %1, %5
  %6 = phi ptr [ %13, %5 ], [ %3, %1 ]
  %7 = getelementptr inbounds %struct.Base, ptr %6, i64 0, i32 4
  %8 = load i32, ptr %7, align 8, !tbaa !254
  %9 = trunc i32 %8 to i16
  %10 = getelementptr inbounds %struct.Base, ptr %6, i64 0, i32 7
  %11 = load ptr, ptr %10, align 8, !tbaa !92
  %12 = getelementptr inbounds %struct.Object, ptr %11, i64 0, i32 53
  store i16 %9, ptr %12, align 4, !tbaa !245
  %13 = load ptr, ptr %6, align 8, !tbaa !40
  %14 = icmp eq ptr %13, null
  br i1 %14, label %15, label %5, !llvm.loop !353

15:                                               ; preds = %5, %1
  ret void
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @BKE_scene_base_flag_from_objects(ptr nocapture noundef readonly %0) local_unnamed_addr #8 {
  %2 = getelementptr inbounds %struct.Scene, ptr %0, i64 0, i32 5
  %3 = load ptr, ptr %2, align 8, !tbaa !40
  %4 = icmp eq ptr %3, null
  br i1 %4, label %15, label %5

5:                                                ; preds = %1, %5
  %6 = phi ptr [ %13, %5 ], [ %3, %1 ]
  %7 = getelementptr inbounds %struct.Base, ptr %6, i64 0, i32 7
  %8 = load ptr, ptr %7, align 8, !tbaa !92
  %9 = getelementptr inbounds %struct.Object, ptr %8, i64 0, i32 53
  %10 = load i16, ptr %9, align 4, !tbaa !245
  %11 = sext i16 %10 to i32
  %12 = getelementptr inbounds %struct.Base, ptr %6, i64 0, i32 4
  store i32 %11, ptr %12, align 8, !tbaa !254
  %13 = load ptr, ptr %6, align 8, !tbaa !40
  %14 = icmp eq ptr %13, null
  br i1 %14, label %15, label %5, !llvm.loop !354

15:                                               ; preds = %5, %1
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @BKE_scene_disable_color_management(ptr noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.Scene, ptr %0, i64 0, i32 45
  %3 = tail call ptr @IMB_colormanagement_display_get_none_name() #24
  %4 = tail call ptr @BLI_strncpy(ptr noundef nonnull %2, ptr noundef %3, i64 noundef 64) #24
  %5 = tail call ptr @IMB_colormanagement_view_get_default_name(ptr noundef nonnull %2) #24
  %6 = icmp eq ptr %5, null
  br i1 %6, label %10, label %7

7:                                                ; preds = %1
  %8 = getelementptr inbounds %struct.Scene, ptr %0, i64 0, i32 44, i32 3
  %9 = tail call ptr @BLI_strncpy(ptr noundef nonnull %8, ptr noundef nonnull %5, i64 noundef 64) #24
  br label %10

10:                                               ; preds = %7, %1
  ret void
}

; Function Attrs: optsize
declare ptr @IMB_colormanagement_display_get_none_name() local_unnamed_addr #3

; Function Attrs: optsize
declare ptr @IMB_colormanagement_view_get_default_name(ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree noinline nounwind optsize willreturn memory(argmem: read) uwtable
define dso_local zeroext i8 @BKE_scene_check_color_management_enabled(ptr nocapture noundef readonly %0) local_unnamed_addr #17 {
  %2 = getelementptr inbounds %struct.Scene, ptr %0, i64 0, i32 45
  %3 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %2, ptr noundef nonnull dereferenceable(5) @.str.10) #26
  %4 = icmp ne i32 %3, 0
  %5 = zext i1 %4 to i8
  ret i8 %5
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local zeroext i8 @BKE_scene_check_rigidbody_active(ptr noundef readonly %0) local_unnamed_addr #18 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %17, label %3

3:                                                ; preds = %1
  %4 = getelementptr inbounds %struct.Scene, ptr %0, i64 0, i32 47
  %5 = load ptr, ptr %4, align 8, !tbaa !90
  %6 = icmp eq ptr %5, null
  br i1 %6, label %17, label %7

7:                                                ; preds = %3
  %8 = getelementptr inbounds %struct.RigidBodyWorld, ptr %5, i64 0, i32 1
  %9 = load ptr, ptr %8, align 8, !tbaa !355
  %10 = icmp eq ptr %9, null
  br i1 %10, label %17, label %11

11:                                               ; preds = %7
  %12 = getelementptr inbounds %struct.RigidBodyWorld, ptr %5, i64 0, i32 11
  %13 = load i32, ptr %12, align 8, !tbaa !357
  %14 = trunc i32 %13 to i8
  %15 = and i8 %14, 1
  %16 = xor i8 %15, 1
  br label %17

17:                                               ; preds = %11, %7, %3, %1
  %18 = phi i8 [ 0, %7 ], [ 0, %3 ], [ 0, %1 ], [ %16, %11 ]
  ret i8 %18
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local i32 @BKE_render_num_threads(ptr nocapture noundef readonly %0) local_unnamed_addr #0 {
  %2 = tail call i32 @BLI_system_num_threads_override_get() #24
  %3 = icmp sgt i32 %2, 0
  br i1 %3, label %18, label %4

4:                                                ; preds = %1
  %5 = getelementptr inbounds %struct.RenderData, ptr %0, i64 0, i32 47
  %6 = load i32, ptr %5, align 8, !tbaa !343
  %7 = and i32 %6, 524288
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %13, label %9

9:                                                ; preds = %4
  %10 = getelementptr inbounds %struct.RenderData, ptr %0, i64 0, i32 14
  %11 = load i16, ptr %10, align 2, !tbaa !358
  %12 = sext i16 %11 to i32
  br label %15

13:                                               ; preds = %4
  %14 = tail call i32 @BLI_system_thread_count() #24
  br label %15

15:                                               ; preds = %13, %9
  %16 = phi i32 [ %12, %9 ], [ %14, %13 ]
  %17 = tail call fastcc i32 @max_ii(i32 noundef %16) #25
  br label %18

18:                                               ; preds = %1, %15
  %19 = phi i32 [ %17, %15 ], [ %2, %1 ]
  ret i32 %19
}

; Function Attrs: optsize
declare i32 @BLI_system_num_threads_override_get() local_unnamed_addr #3

; Function Attrs: optsize
declare i32 @BLI_system_thread_count() local_unnamed_addr #3

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define internal fastcc noundef i32 @max_ii(i32 noundef %0) unnamed_addr #13 !PGOFuncName !359 {
  %2 = tail call i32 @llvm.smax.i32(i32 %0, i32 1)
  ret i32 %2
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local i32 @BKE_scene_num_threads(ptr nocapture noundef readonly %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.Scene, ptr %0, i64 0, i32 22
  %3 = tail call i32 @BKE_render_num_threads(ptr noundef nonnull %2) #25
  ret i32 %3
}

; Function Attrs: mustprogress nofree noinline nounwind optsize willreturn memory(write, argmem: readwrite) uwtable
define dso_local double @BKE_scene_unit_scale(ptr nocapture noundef readonly %0, i32 noundef %1, double noundef %2) local_unnamed_addr #19 {
  %4 = getelementptr inbounds %struct.UnitSettings, ptr %0, i64 0, i32 1
  %5 = load i8, ptr %4, align 4, !tbaa !360
  %6 = icmp eq i8 %5, 0
  br i1 %6, label %27, label %7

7:                                                ; preds = %3
  switch i32 %1, label %27 [
    i32 1, label %8
    i32 2, label %12
    i32 3, label %17
    i32 4, label %22
  ]

8:                                                ; preds = %7
  %9 = load float, ptr %0, align 4, !tbaa !361
  %10 = fpext float %9 to double
  %11 = fmul double %10, %2
  br label %27

12:                                               ; preds = %7
  %13 = load float, ptr %0, align 4, !tbaa !361
  %14 = fpext float %13 to double
  %15 = fmul double %14, %14
  %16 = fmul double %15, %2
  br label %27

17:                                               ; preds = %7
  %18 = load float, ptr %0, align 4, !tbaa !361
  %19 = fpext float %18 to double
  %20 = tail call double @pow(double noundef %19, double noundef 3.000000e+00) #24
  %21 = fmul double %20, %2
  br label %27

22:                                               ; preds = %7
  %23 = load float, ptr %0, align 4, !tbaa !361
  %24 = fpext float %23 to double
  %25 = tail call double @pow(double noundef %24, double noundef 3.000000e+00) #24
  %26 = fmul double %25, %2
  br label %27

27:                                               ; preds = %7, %3, %22, %17, %12, %8
  %28 = phi double [ %26, %22 ], [ %21, %17 ], [ %16, %12 ], [ %11, %8 ], [ %2, %3 ], [ %2, %7 ]
  ret double %28
}

; Function Attrs: mustprogress nofree nounwind optsize willreturn memory(write)
declare double @pow(double noundef, double noundef) local_unnamed_addr #20

; Function Attrs: mustprogress nofree nounwind optsize willreturn memory(argmem: read)
declare ptr @strstr(ptr noundef, ptr nocapture noundef) local_unnamed_addr #16

; Function Attrs: optsize
declare void @action_groups_remove_channel(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare void @free_fcurve(ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable
define internal fastcc void @BLI_listbase_clear(ptr nocapture noundef writeonly %0) unnamed_addr #21 !PGOFuncName !362 {
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, i8 0, i64 16, i1 false)
  ret void
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(read, inaccessiblemem: none) uwtable
define internal fastcc noundef zeroext i8 @check_rendered_viewport_visible(ptr nocapture noundef readonly %0) unnamed_addr #7 !PGOFuncName !363 {
  %2 = getelementptr inbounds %struct.Main, ptr %0, i64 0, i32 40
  %3 = load ptr, ptr %2, align 8, !tbaa !364
  %4 = getelementptr inbounds %struct.wmWindowManager, ptr %3, i64 0, i32 3
  %5 = load ptr, ptr %4, align 8, !tbaa !40
  %6 = icmp eq ptr %5, null
  br i1 %6, label %31, label %10

7:                                                ; preds = %28, %10
  %8 = load ptr, ptr %11, align 8, !tbaa !40
  %9 = icmp eq ptr %8, null
  br i1 %9, label %31, label %10, !llvm.loop !366

10:                                               ; preds = %1, %7
  %11 = phi ptr [ %8, %7 ], [ %5, %1 ]
  %12 = getelementptr inbounds %struct.wmWindow, ptr %11, i64 0, i32 3
  %13 = load ptr, ptr %12, align 8, !tbaa !367
  %14 = getelementptr inbounds %struct.bScreen, ptr %13, i64 0, i32 3
  %15 = load ptr, ptr %14, align 8, !tbaa !40
  %16 = icmp eq ptr %15, null
  br i1 %16, label %7, label %17

17:                                               ; preds = %10, %28
  %18 = phi ptr [ %29, %28 ], [ %15, %10 ]
  %19 = getelementptr inbounds %struct.ScrArea, ptr %18, i64 0, i32 8
  %20 = load i8, ptr %19, align 8, !tbaa !369
  %21 = icmp eq i8 %20, 1
  br i1 %21, label %22, label %28

22:                                               ; preds = %17
  %23 = getelementptr inbounds %struct.ScrArea, ptr %18, i64 0, i32 19
  %24 = load ptr, ptr %23, align 8, !tbaa !371
  %25 = getelementptr inbounds %struct.View3D, ptr %24, i64 0, i32 24
  %26 = load i16, ptr %25, align 8, !tbaa !372
  %27 = icmp eq i16 %26, 6
  br i1 %27, label %31, label %28

28:                                               ; preds = %17, %22
  %29 = load ptr, ptr %18, align 8, !tbaa !40
  %30 = icmp eq ptr %29, null
  br i1 %30, label %7, label %17, !llvm.loop !374

31:                                               ; preds = %7, %22, %1
  %32 = phi i8 [ 0, %1 ], [ 1, %22 ], [ 0, %7 ]
  ret i8 %32
}

; Function Attrs: optsize
declare void @BM_mesh_bm_to_me(ptr noundef, ptr noundef, i8 noundef zeroext) local_unnamed_addr #3

; Function Attrs: optsize
declare void @DAG_id_tag_update(ptr noundef, i16 noundef signext) local_unnamed_addr #3

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @scene_update_objects(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) unnamed_addr #0 !PGOFuncName !375 {
  %5 = alloca %struct.ThreadedObjectUpdateState, align 8
  %6 = tail call ptr @BLI_task_scheduler_get() #24
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %5) #27
  %7 = tail call fastcc zeroext i8 @scene_need_update_objects(ptr noundef %1) #25, !range !330
  %8 = icmp eq i8 %7, 0
  br i1 %8, label %34, label %9

9:                                                ; preds = %4
  store ptr %0, ptr %5, align 8, !tbaa !376
  %10 = getelementptr inbounds %struct.ThreadedObjectUpdateState, ptr %5, i64 0, i32 1
  store ptr %2, ptr %10, align 8, !tbaa !378
  %11 = getelementptr inbounds %struct.ThreadedObjectUpdateState, ptr %5, i64 0, i32 2
  store ptr %3, ptr %11, align 8, !tbaa !379
  %12 = load i32, ptr getelementptr inbounds (%struct.Global, ptr @G, i64 0, i32 16), align 4, !tbaa !380
  %13 = and i32 %12, 256
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %19, label %15

15:                                               ; preds = %9
  %16 = getelementptr inbounds %struct.ThreadedObjectUpdateState, ptr %5, i64 0, i32 4
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(17) %16, i8 0, i64 17, i1 false)
  %17 = tail call double @PIL_check_seconds_timer() #24
  %18 = getelementptr inbounds %struct.ThreadedObjectUpdateState, ptr %5, i64 0, i32 3
  store double %17, ptr %18, align 8, !tbaa !381
  br label %19

19:                                               ; preds = %15, %9
  %20 = getelementptr inbounds %struct.ThreadedObjectUpdateState, ptr %5, i64 0, i32 6
  store i8 0, ptr %20, align 1, !tbaa !382
  %21 = call ptr @BLI_task_pool_create(ptr noundef %6, ptr noundef nonnull %5) #24
  call void @DAG_threaded_update_begin(ptr noundef %2, ptr noundef nonnull @scene_update_object_add_task, ptr noundef %21) #24
  call void @BLI_task_pool_work_and_wait(ptr noundef %21) #24
  call void @BLI_task_pool_free(ptr noundef %21) #24
  %22 = load i32, ptr getelementptr inbounds (%struct.Global, ptr @G, i64 0, i32 16), align 4, !tbaa !380
  %23 = and i32 %22, 256
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %26, label %25

25:                                               ; preds = %19
  call fastcc void @print_threads_statistics(ptr noundef nonnull %5) #25
  br label %26

26:                                               ; preds = %25, %19
  %27 = call zeroext i8 @DAG_is_acyclic(ptr noundef %2) #24
  %28 = icmp eq i8 %27, 0
  %29 = load i8, ptr %20, align 1, !tbaa !382
  %30 = zext i1 %28 to i8
  %31 = or i8 %29, %30
  %32 = icmp eq i8 %31, 0
  br i1 %32, label %34, label %33

33:                                               ; preds = %26
  call fastcc void @scene_update_all_bases(ptr noundef %0, ptr noundef %2, ptr noundef %3) #25
  br label %34

34:                                               ; preds = %26, %33, %4
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %5) #27
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @scene_update_drivers(ptr noundef %0) unnamed_addr #0 !PGOFuncName !383 {
  %2 = tail call float @BKE_scene_frame_get(ptr noundef %0) #25
  %3 = getelementptr inbounds %struct.Scene, ptr %0, i64 0, i32 1
  %4 = load ptr, ptr %3, align 8, !tbaa !384
  %5 = icmp eq ptr %4, null
  br i1 %5, label %11, label %6

6:                                                ; preds = %1
  %7 = getelementptr inbounds %struct.AnimData, ptr %4, i64 0, i32 5
  %8 = load ptr, ptr %7, align 8, !tbaa !385
  %9 = icmp eq ptr %8, null
  br i1 %9, label %11, label %10

10:                                               ; preds = %6
  tail call void @BKE_animsys_evaluate_animdata(ptr noundef nonnull %0, ptr noundef nonnull %0, ptr noundef nonnull %4, float noundef %2, i16 noundef signext 1) #24
  br label %11

11:                                               ; preds = %10, %6, %1
  %12 = getelementptr inbounds %struct.Scene, ptr %0, i64 0, i32 3
  %13 = load ptr, ptr %12, align 8, !tbaa !84
  %14 = icmp eq ptr %13, null
  br i1 %14, label %23, label %15

15:                                               ; preds = %11
  %16 = tail call ptr @BKE_animdata_from_id(ptr noundef nonnull %13) #24
  %17 = icmp eq ptr %16, null
  br i1 %17, label %23, label %18

18:                                               ; preds = %15
  %19 = getelementptr inbounds %struct.AnimData, ptr %16, i64 0, i32 5
  %20 = load ptr, ptr %19, align 8, !tbaa !385
  %21 = icmp eq ptr %20, null
  br i1 %21, label %23, label %22

22:                                               ; preds = %18
  tail call void @BKE_animsys_evaluate_animdata(ptr noundef nonnull %0, ptr noundef nonnull %13, ptr noundef nonnull %16, float noundef %2, i16 noundef signext 1) #24
  br label %23

23:                                               ; preds = %15, %18, %22, %11
  %24 = getelementptr inbounds %struct.Scene, ptr %0, i64 0, i32 18
  %25 = load ptr, ptr %24, align 8, !tbaa !91
  %26 = icmp eq ptr %25, null
  br i1 %26, label %35, label %27

27:                                               ; preds = %23
  %28 = tail call ptr @BKE_animdata_from_id(ptr noundef nonnull %25) #24
  %29 = icmp eq ptr %28, null
  br i1 %29, label %35, label %30

30:                                               ; preds = %27
  %31 = getelementptr inbounds %struct.AnimData, ptr %28, i64 0, i32 5
  %32 = load ptr, ptr %31, align 8, !tbaa !385
  %33 = icmp eq ptr %32, null
  br i1 %33, label %35, label %34

34:                                               ; preds = %30
  tail call void @BKE_animsys_evaluate_animdata(ptr noundef nonnull %0, ptr noundef nonnull %25, ptr noundef nonnull %28, float noundef %2, i16 noundef signext 1) #24
  br label %35

35:                                               ; preds = %27, %30, %34, %23
  %36 = load ptr, ptr %12, align 8, !tbaa !84
  %37 = icmp eq ptr %36, null
  br i1 %37, label %50, label %38

38:                                               ; preds = %35
  %39 = getelementptr inbounds %struct.World, ptr %36, i64 0, i32 75
  %40 = load ptr, ptr %39, align 8, !tbaa !386
  %41 = icmp eq ptr %40, null
  br i1 %41, label %50, label %42

42:                                               ; preds = %38
  %43 = tail call ptr @BKE_animdata_from_id(ptr noundef nonnull %40) #24
  %44 = icmp eq ptr %43, null
  br i1 %44, label %50, label %45

45:                                               ; preds = %42
  %46 = getelementptr inbounds %struct.AnimData, ptr %43, i64 0, i32 5
  %47 = load ptr, ptr %46, align 8, !tbaa !385
  %48 = icmp eq ptr %47, null
  br i1 %48, label %50, label %49

49:                                               ; preds = %45
  tail call void @BKE_animsys_evaluate_animdata(ptr noundef nonnull %0, ptr noundef nonnull %40, ptr noundef nonnull %43, float noundef %2, i16 noundef signext 1) #24
  br label %50

50:                                               ; preds = %42, %45, %49, %38, %35
  %51 = getelementptr inbounds %struct.Scene, ptr %0, i64 0, i32 22, i32 60
  %52 = load ptr, ptr %51, align 8, !tbaa !40
  %53 = icmp eq ptr %52, null
  br i1 %53, label %78, label %57

54:                                               ; preds = %75, %57
  %55 = load ptr, ptr %58, align 8, !tbaa !40
  %56 = icmp eq ptr %55, null
  br i1 %56, label %78, label %57, !llvm.loop !388

57:                                               ; preds = %50, %54
  %58 = phi ptr [ %55, %54 ], [ %52, %50 ]
  %59 = getelementptr inbounds %struct.SceneRenderLayer, ptr %58, i64 0, i32 13, i32 7
  %60 = load ptr, ptr %59, align 8, !tbaa !40
  %61 = icmp eq ptr %60, null
  br i1 %61, label %54, label %62

62:                                               ; preds = %57, %75
  %63 = phi ptr [ %76, %75 ], [ %60, %57 ]
  %64 = getelementptr inbounds %struct.FreestyleLineSet, ptr %63, i64 0, i32 13
  %65 = load ptr, ptr %64, align 8, !tbaa !389
  %66 = icmp eq ptr %65, null
  br i1 %66, label %75, label %67

67:                                               ; preds = %62
  %68 = tail call ptr @BKE_animdata_from_id(ptr noundef nonnull %65) #24
  %69 = icmp eq ptr %68, null
  br i1 %69, label %75, label %70

70:                                               ; preds = %67
  %71 = getelementptr inbounds %struct.AnimData, ptr %68, i64 0, i32 5
  %72 = load ptr, ptr %71, align 8, !tbaa !385
  %73 = icmp eq ptr %72, null
  br i1 %73, label %75, label %74

74:                                               ; preds = %70
  tail call void @BKE_animsys_evaluate_animdata(ptr noundef %0, ptr noundef nonnull %65, ptr noundef nonnull %68, float noundef %2, i16 noundef signext 1) #24
  br label %75

75:                                               ; preds = %67, %70, %74, %62
  %76 = load ptr, ptr %63, align 8, !tbaa !40
  %77 = icmp eq ptr %76, null
  br i1 %77, label %54, label %62, !llvm.loop !391

78:                                               ; preds = %54, %50
  ret void
}

; Function Attrs: optsize
declare void @BKE_mask_update_scene(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare ptr @BLI_task_scheduler_get() local_unnamed_addr #3

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc zeroext i8 @scene_need_update_objects(ptr noundef %0) unnamed_addr #0 !PGOFuncName !392 {
  %2 = tail call i32 @DAG_id_type_tagged(ptr noundef %0, i16 noundef signext 16975) #24
  %3 = icmp eq i32 %2, 0
  br i1 %3, label %4, label %32

4:                                                ; preds = %1
  %5 = tail call i32 @DAG_id_type_tagged(ptr noundef %0, i16 noundef signext 17741) #24
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %7, label %32

7:                                                ; preds = %4
  %8 = tail call i32 @DAG_id_type_tagged(ptr noundef %0, i16 noundef signext 21827) #24
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %10, label %32

10:                                               ; preds = %7
  %11 = tail call i32 @DAG_id_type_tagged(ptr noundef %0, i16 noundef signext 16973) #24
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %13, label %32

13:                                               ; preds = %10
  %14 = tail call i32 @DAG_id_type_tagged(ptr noundef %0, i16 noundef signext 16716) #24
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %16, label %32

16:                                               ; preds = %13
  %17 = tail call i32 @DAG_id_type_tagged(ptr noundef %0, i16 noundef signext 21580) #24
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %19, label %32

19:                                               ; preds = %16
  %20 = tail call i32 @DAG_id_type_tagged(ptr noundef %0, i16 noundef signext 16707) #24
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %22, label %32

22:                                               ; preds = %19
  %23 = tail call i32 @DAG_id_type_tagged(ptr noundef %0, i16 noundef signext 17739) #24
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %25, label %32

25:                                               ; preds = %22
  %26 = tail call i32 @DAG_id_type_tagged(ptr noundef %0, i16 noundef signext 19283) #24
  %27 = icmp eq i32 %26, 0
  br i1 %27, label %28, label %32

28:                                               ; preds = %25
  %29 = tail call i32 @DAG_id_type_tagged(ptr noundef %0, i16 noundef signext 21057) #24
  %30 = icmp ne i32 %29, 0
  %31 = zext i1 %30 to i8
  br label %32

32:                                               ; preds = %28, %25, %22, %19, %16, %13, %10, %7, %4, %1
  %33 = phi i8 [ 1, %25 ], [ 1, %22 ], [ 1, %19 ], [ 1, %16 ], [ 1, %13 ], [ 1, %10 ], [ 1, %7 ], [ 1, %4 ], [ 1, %1 ], [ %31, %28 ]
  ret i8 %33
}

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #22

; Function Attrs: optsize
declare double @PIL_check_seconds_timer() local_unnamed_addr #3

; Function Attrs: optsize
declare ptr @BLI_task_pool_create(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare void @DAG_threaded_update_begin(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind optsize uwtable
define internal void @scene_update_object_add_task(ptr noundef %0, ptr noundef %1) #0 !PGOFuncName !393 {
  tail call void @BLI_task_pool_push(ptr noundef %1, ptr noundef nonnull @scene_update_object_func, ptr noundef %0, i8 noundef zeroext 0, i32 noundef 0) #24
  ret void
}

; Function Attrs: optsize
declare void @BLI_task_pool_work_and_wait(ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare void @BLI_task_pool_free(ptr noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @print_threads_statistics(ptr noundef %0) unnamed_addr #0 !PGOFuncName !394 {
  %2 = load i32, ptr getelementptr inbounds (%struct.Global, ptr @G, i64 0, i32 16), align 4, !tbaa !380
  %3 = and i32 %2, 256
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %50, label %5

5:                                                ; preds = %1
  %6 = tail call i32 @BLI_system_thread_count() #24
  %7 = icmp sgt i32 %6, 0
  br i1 %7, label %8, label %50

8:                                                ; preds = %5
  %9 = getelementptr inbounds %struct.ThreadedObjectUpdateState, ptr %0, i64 0, i32 5
  %10 = zext nneg i32 %6 to i64
  br label %11

11:                                               ; preds = %8, %46
  %12 = phi i64 [ 0, %8 ], [ %48, %46 ]
  %13 = load i8, ptr %9, align 8, !tbaa !395
  %14 = icmp eq i8 %13, 0
  br i1 %14, label %46, label %15

15:                                               ; preds = %11
  %16 = getelementptr inbounds %struct.ThreadedObjectUpdateState, ptr %0, i64 0, i32 4, i64 %12
  %17 = load ptr, ptr %16, align 8, !tbaa !40
  %18 = icmp eq ptr %17, null
  br i1 %18, label %29, label %19

19:                                               ; preds = %15, %19
  %20 = phi ptr [ %27, %19 ], [ %17, %15 ]
  %21 = phi double [ %26, %19 ], [ 0.000000e+00, %15 ]
  %22 = phi i32 [ %23, %19 ], [ 0, %15 ]
  %23 = add nuw nsw i32 %22, 1
  %24 = getelementptr inbounds %struct.StatisicsEntry, ptr %20, i64 0, i32 4
  %25 = load double, ptr %24, align 8, !tbaa !396
  %26 = fadd double %21, %25
  %27 = load ptr, ptr %20, align 8, !tbaa !40
  %28 = icmp eq ptr %27, null
  br i1 %28, label %29, label %19, !llvm.loop !398

29:                                               ; preds = %19, %15
  %30 = phi i32 [ 0, %15 ], [ %23, %19 ]
  %31 = phi double [ 0.000000e+00, %15 ], [ %26, %19 ]
  %32 = trunc i64 %12 to i32
  %33 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.14, i32 noundef %32, i32 noundef %30, double noundef %31) #25
  %34 = load ptr, ptr %16, align 8, !tbaa !40
  %35 = icmp eq ptr %34, null
  br i1 %35, label %46, label %36

36:                                               ; preds = %29, %36
  %37 = phi ptr [ %44, %36 ], [ %34, %29 ]
  %38 = getelementptr inbounds %struct.StatisicsEntry, ptr %37, i64 0, i32 2
  %39 = load ptr, ptr %38, align 8, !tbaa !399
  %40 = getelementptr inbounds %struct.ID, ptr %39, i64 0, i32 4, i64 2
  %41 = getelementptr inbounds %struct.StatisicsEntry, ptr %37, i64 0, i32 4
  %42 = load double, ptr %41, align 8, !tbaa !396
  %43 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.15, ptr noundef nonnull %40, double noundef %42) #25
  %44 = load ptr, ptr %37, align 8, !tbaa !40
  %45 = icmp eq ptr %44, null
  br i1 %45, label %46, label %36, !llvm.loop !400

46:                                               ; preds = %36, %29, %11
  %47 = getelementptr inbounds %struct.ThreadedObjectUpdateState, ptr %0, i64 0, i32 4, i64 %12
  tail call void @BLI_freelistN(ptr noundef nonnull %47) #24
  %48 = add nuw nsw i64 %12, 1
  %49 = icmp eq i64 %48, %10
  br i1 %49, label %50, label %11, !llvm.loop !401

50:                                               ; preds = %46, %5, %1
  ret void
}

; Function Attrs: optsize
declare zeroext i8 @DAG_is_acyclic(ptr noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @scene_update_all_bases(ptr noundef %0, ptr nocapture noundef readonly %1, ptr noundef %2) unnamed_addr #0 !PGOFuncName !402 {
  %4 = getelementptr inbounds %struct.Scene, ptr %1, i64 0, i32 5
  %5 = load ptr, ptr %4, align 8, !tbaa !40
  %6 = icmp eq ptr %5, null
  br i1 %6, label %26, label %7

7:                                                ; preds = %3
  %8 = getelementptr inbounds %struct.Scene, ptr %1, i64 0, i32 47
  br label %9

9:                                                ; preds = %7, %23
  %10 = phi ptr [ %5, %7 ], [ %24, %23 ]
  %11 = getelementptr inbounds %struct.Base, ptr %10, i64 0, i32 7
  %12 = load ptr, ptr %11, align 8, !tbaa !92
  %13 = load ptr, ptr %8, align 8, !tbaa !90
  tail call void @BKE_object_handle_update_ex(ptr noundef %0, ptr noundef %2, ptr noundef %12, ptr noundef %13, i8 noundef zeroext 1) #24
  %14 = getelementptr inbounds %struct.Object, ptr %12, i64 0, i32 112
  %15 = load ptr, ptr %14, align 8, !tbaa !290
  %16 = icmp eq ptr %15, null
  br i1 %16, label %23, label %17

17:                                               ; preds = %9
  %18 = getelementptr inbounds %struct.Object, ptr %12, i64 0, i32 55
  %19 = load i16, ptr %18, align 8, !tbaa !289
  %20 = and i16 %19, 256
  %21 = icmp eq i16 %20, 0
  br i1 %21, label %23, label %22

22:                                               ; preds = %17
  tail call void @BKE_group_handle_recalc_and_update(ptr noundef %0, ptr noundef %2, ptr noundef nonnull %12, ptr noundef nonnull %15) #24
  br label %23

23:                                               ; preds = %22, %17, %9
  %24 = load ptr, ptr %10, align 8, !tbaa !40
  %25 = icmp eq ptr %24, null
  br i1 %25, label %26, label %9, !llvm.loop !403

26:                                               ; preds = %23, %3
  ret void
}

; Function Attrs: optsize
declare void @BLI_task_pool_push(ptr noundef, ptr noundef, ptr noundef, i8 noundef zeroext, i32 noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind optsize uwtable
define internal void @scene_update_object_func(ptr noundef %0, ptr noundef %1, i32 noundef %2) #0 !PGOFuncName !404 {
  %4 = tail call ptr @BLI_task_pool_userdata(ptr noundef %0) #24
  %5 = tail call ptr @DAG_get_node_object(ptr noundef %1) #24
  %6 = load ptr, ptr %4, align 8, !tbaa !376
  %7 = getelementptr inbounds %struct.ThreadedObjectUpdateState, ptr %4, i64 0, i32 1
  %8 = load ptr, ptr %7, align 8, !tbaa !378
  %9 = getelementptr inbounds %struct.ThreadedObjectUpdateState, ptr %4, i64 0, i32 2
  %10 = load ptr, ptr %9, align 8, !tbaa !379
  %11 = icmp eq ptr %5, null
  br i1 %11, label %51, label %12

12:                                               ; preds = %3
  %13 = getelementptr inbounds %struct.Object, ptr %5, i64 0, i32 3
  %14 = load i16, ptr %13, align 8, !tbaa !298
  %15 = icmp eq i16 %14, 5
  br i1 %15, label %16, label %18

16:                                               ; preds = %12
  %17 = getelementptr inbounds %struct.ThreadedObjectUpdateState, ptr %4, i64 0, i32 6
  store i8 1, ptr %17, align 1, !tbaa !382
  br label %51

18:                                               ; preds = %12
  %19 = load i32, ptr getelementptr inbounds (%struct.Global, ptr @G, i64 0, i32 16), align 4, !tbaa !380
  %20 = and i32 %19, 256
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %35, label %22

22:                                               ; preds = %18
  %23 = getelementptr inbounds %struct.Object, ptr %5, i64 0, i32 103
  %24 = load i8, ptr %23, align 1, !tbaa !334
  %25 = and i8 %24, 7
  %26 = icmp eq i8 %25, 0
  br i1 %26, label %30, label %27

27:                                               ; preds = %22
  %28 = getelementptr inbounds %struct.ID, ptr %5, i64 0, i32 4
  %29 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.12, i32 noundef %2, ptr noundef nonnull %28) #25
  br label %30

30:                                               ; preds = %27, %22
  %31 = tail call double @PIL_check_seconds_timer() #24
  %32 = load i8, ptr %23, align 1, !tbaa !334
  %33 = and i8 %32, 7
  %34 = icmp eq i8 %33, 0
  br i1 %34, label %35, label %38

35:                                               ; preds = %30, %18
  %36 = getelementptr inbounds %struct.Scene, ptr %8, i64 0, i32 47
  %37 = load ptr, ptr %36, align 8, !tbaa !90
  tail call void @BKE_object_handle_update_ex(ptr noundef %6, ptr noundef %10, ptr noundef nonnull %5, ptr noundef %37, i8 noundef zeroext 0) #24
  br label %51

38:                                               ; preds = %30
  %39 = getelementptr inbounds %struct.ThreadedObjectUpdateState, ptr %4, i64 0, i32 5
  store i8 1, ptr %39, align 8, !tbaa !395
  %40 = getelementptr inbounds %struct.Scene, ptr %8, i64 0, i32 47
  %41 = load ptr, ptr %40, align 8, !tbaa !90
  tail call void @BKE_object_handle_update_ex(ptr noundef %6, ptr noundef %10, ptr noundef nonnull %5, ptr noundef %41, i8 noundef zeroext 0) #24
  %42 = load ptr, ptr @MEM_mallocN, align 8, !tbaa !40
  %43 = tail call ptr %42(i64 noundef 40, ptr noundef nonnull @.str.13) #24
  %44 = getelementptr inbounds %struct.StatisicsEntry, ptr %43, i64 0, i32 2
  store ptr %5, ptr %44, align 8, !tbaa !399
  %45 = getelementptr inbounds %struct.StatisicsEntry, ptr %43, i64 0, i32 3
  store double %31, ptr %45, align 8, !tbaa !405
  %46 = tail call double @PIL_check_seconds_timer() #24
  %47 = fsub double %46, %31
  %48 = getelementptr inbounds %struct.StatisicsEntry, ptr %43, i64 0, i32 4
  store double %47, ptr %48, align 8, !tbaa !396
  %49 = sext i32 %2 to i64
  %50 = getelementptr inbounds %struct.ThreadedObjectUpdateState, ptr %4, i64 0, i32 4, i64 %49
  tail call void @BLI_addtail(ptr noundef nonnull %50, ptr noundef %43) #24
  br label %51

51:                                               ; preds = %35, %3, %38, %16
  tail call void @DAG_threaded_update_handle_node_updated(ptr noundef %1, ptr noundef nonnull @scene_update_object_add_task, ptr noundef %0) #24
  ret void
}

; Function Attrs: optsize
declare ptr @BLI_task_pool_userdata(ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare ptr @DAG_get_node_object(ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare void @BKE_object_handle_update_ex(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i8 noundef zeroext) local_unnamed_addr #3

; Function Attrs: optsize
declare void @DAG_threaded_update_handle_node_updated(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare void @BKE_group_handle_recalc_and_update(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare void @BKE_rigidbody_rebuild_world(ptr noundef, float noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare void @BKE_rigidbody_do_simulation(ptr noundef, float noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare void @BKE_object_handle_update(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #23

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #23

attributes #0 = { noinline nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nofree noinline norecurse nosync nounwind optsize memory(read, argmem: readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nofree nounwind optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nofree noinline norecurse nosync nounwind optsize memory(read, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nofree noinline norecurse nosync nounwind optsize memory(readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(write, argmem: readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { mustprogress nofree noinline nounwind optsize willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { mustprogress nofree nounwind optsize willreturn memory(argmem: write) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #15 = { mustprogress nofree noinline nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #16 = { mustprogress nofree nounwind optsize willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #17 = { mustprogress nofree noinline nounwind optsize willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #18 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #19 = { mustprogress nofree noinline nounwind optsize willreturn memory(write, argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #20 = { mustprogress nofree nounwind optsize willreturn memory(write) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #21 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #22 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #23 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #24 = { nounwind optsize }
attributes #25 = { optsize }
attributes #26 = { nounwind optsize willreturn memory(read) }
attributes #27 = { nounwind }

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
!34 = !{!35, !36, i64 0}
!35 = !{!"AviCodecData", !36, i64 0, !36, i64 8, !39, i64 16, !39, i64 20, !39, i64 24, !39, i64 28, !39, i64 32, !39, i64 36, !39, i64 40, !39, i64 44, !39, i64 48, !39, i64 52, !37, i64 56}
!36 = !{!"any pointer", !37, i64 0}
!37 = !{!"omnipotent char", !38, i64 0}
!38 = !{!"Simple C/C++ TBAA"}
!39 = !{!"int", !37, i64 0}
!40 = !{!36, !36, i64 0}
!41 = !{!35, !39, i64 16}
!42 = !{!35, !36, i64 8}
!43 = !{!35, !39, i64 20}
!44 = !{!45, !36, i64 0}
!45 = !{!"QuicktimeCodecData", !36, i64 0, !36, i64 8, !39, i64 16, !39, i64 20, !37, i64 24}
!46 = !{!45, !39, i64 16}
!47 = !{!48, !36, i64 0}
!48 = !{!"Global", !36, i64 0, !37, i64 8, !37, i64 1032, !37, i64 2056, !37, i64 2057, !37, i64 2058, !49, i64 2064, !37, i64 2080, !37, i64 2081, !37, i64 2082, !50, i64 2084, !50, i64 2086, !50, i64 2088, !37, i64 2090, !50, i64 2092, !39, i64 2096, !39, i64 2100, !37, i64 2104, !39, i64 2108, !39, i64 2112, !37, i64 2116}
!49 = !{!"ListBase", !36, i64 0, !36, i64 8}
!50 = !{!"short", !37, i64 0}
!51 = !{i64 0, i64 8, !40, i64 8, i64 8, !40}
!52 = !{i64 0, i64 1, !53, i64 1, i64 1, !53, i64 2, i64 1, !53, i64 3, i64 1, !53, i64 4, i64 1, !53, i64 5, i64 1, !53, i64 6, i64 1, !53, i64 7, i64 1, !53, i64 8, i64 2, !54, i64 10, i64 2, !54, i64 12, i64 4, !55, i64 16, i64 1, !53, i64 17, i64 1, !53, i64 18, i64 6, !53, i64 24, i64 4, !57, i64 28, i64 4, !57, i64 32, i64 64, !53, i64 96, i64 64, !53, i64 160, i64 4, !55, i64 164, i64 4, !55, i64 168, i64 8, !40, i64 176, i64 8, !40, i64 184, i64 64, !53, i64 248, i64 8, !40, i64 256, i64 8, !40, i64 264, i64 4, !57, i64 268, i64 4, !57, i64 272, i64 4, !57, i64 276, i64 4, !57, i64 280, i64 4, !57, i64 284, i64 4, !57, i64 288, i64 4, !57, i64 292, i64 4, !57, i64 296, i64 4, !57, i64 300, i64 4, !57, i64 304, i64 4, !57, i64 308, i64 4, !57, i64 312, i64 2, !54, i64 314, i64 2, !54, i64 316, i64 4, !57, i64 320, i64 4, !57, i64 324, i64 4, !57, i64 328, i64 4, !57, i64 332, i64 4, !57, i64 336, i64 4, !57, i64 340, i64 4, !57, i64 344, i64 4, !57, i64 348, i64 4, !57, i64 352, i64 4, !57, i64 356, i64 4, !57, i64 360, i64 4, !55, i64 364, i64 4, !57, i64 368, i64 4, !57, i64 372, i64 4, !57, i64 376, i64 4, !57, i64 380, i64 4, !57, i64 384, i64 4, !57, i64 388, i64 4, !57, i64 392, i64 8, !40, i64 400, i64 4, !57, i64 404, i64 4, !57, i64 408, i64 4, !57, i64 412, i64 4, !55, i64 416, i64 4, !57, i64 420, i64 4, !57, i64 424, i64 4, !57, i64 428, i64 4, !57, i64 432, i64 2, !54, i64 434, i64 2, !54, i64 436, i64 4, !55, i64 440, i64 4, !55, i64 444, i64 4, !55, i64 448, i64 4, !55, i64 452, i64 4, !55, i64 456, i64 2, !54, i64 458, i64 2, !54, i64 460, i64 2, !54, i64 462, i64 2, !54, i64 464, i64 2, !54, i64 466, i64 2, !54, i64 468, i64 4, !57, i64 472, i64 2, !54, i64 474, i64 2, !54, i64 476, i64 2, !54, i64 478, i64 2, !54, i64 480, i64 2, !54, i64 482, i64 2, !54, i64 484, i64 4, !57, i64 488, i64 4, !57, i64 492, i64 2, !54, i64 494, i64 2, !54, i64 496, i64 4, !57, i64 500, i64 4, !57, i64 504, i64 2, !54, i64 506, i64 2, !54, i64 508, i64 2, !54, i64 510, i64 2, !54, i64 512, i64 2, !54, i64 514, i64 1, !53, i64 515, i64 1, !53, i64 516, i64 4, !57, i64 520, i64 4, !57, i64 524, i64 4, !57, i64 528, i64 2, !54, i64 530, i64 2, !54, i64 532, i64 2, !54, i64 534, i64 2, !54, i64 536, i64 2, !54, i64 538, i64 2, !54, i64 540, i64 2, !54, i64 542, i64 2, !54, i64 544, i64 4, !55, i64 548, i64 4, !55, i64 552, i64 4, !55, i64 556, i64 4, !55, i64 560, i64 4, !55, i64 564, i64 4, !55, i64 568, i64 4, !55, i64 572, i64 4, !55, i64 576, i64 4, !57, i64 580, i64 4, !57, i64 584, i64 4, !57, i64 588, i64 4, !57, i64 592, i64 8, !40, i64 600, i64 8, !40, i64 608, i64 2, !54, i64 610, i64 2, !54, i64 612, i64 4, !55, i64 616, i64 4, !55, i64 620, i64 4, !55, i64 624, i64 4, !55, i64 628, i64 4, !57, i64 632, i64 4, !55, i64 636, i64 4, !55, i64 640, i64 4, !55, i64 644, i64 4, !55, i64 648, i64 2, !54, i64 650, i64 2, !54, i64 652, i64 2, !54, i64 654, i64 2, !54, i64 656, i64 2, !54, i64 658, i64 2, !54, i64 660, i64 4, !55, i64 664, i64 4, !55, i64 668, i64 2, !54, i64 670, i64 2, !54, i64 672, i64 4, !55, i64 676, i64 4, !55, i64 680, i64 1024, !53, i64 1704, i64 4, !57, i64 1708, i64 2, !54, i64 1710, i64 2, !54, i64 1712, i64 768, !53, i64 2480, i64 16, !53, i64 2496, i64 16, !53, i64 2512, i64 1, !53, i64 2513, i64 1, !53, i64 2514, i64 1, !53, i64 2515, i64 5, !53, i64 2520, i64 4, !57, i64 2524, i64 2, !54, i64 2526, i64 2, !54, i64 2528, i64 4, !55, i64 2532, i64 4, !55, i64 2536, i64 2, !54, i64 2538, i64 2, !54, i64 2540, i64 4, !55, i64 2544, i64 2, !54, i64 2546, i64 2, !54, i64 2548, i64 4, !57, i64 2552, i64 2, !54, i64 2554, i64 2, !54, i64 2556, i64 2, !54, i64 2558, i64 2, !54, i64 2560, i64 4, !55, i64 2564, i64 4, !55, i64 2568, i64 8, !40, i64 2576, i64 4, !57, i64 2580, i64 4, !55, i64 2584, i64 32, !53, i64 2616, i64 1, !53, i64 2617, i64 1, !53, i64 2618, i64 1, !53, i64 2619, i64 1, !53, i64 2620, i64 1, !53, i64 2621, i64 1, !53, i64 2622, i64 1, !53, i64 2623, i64 1, !53, i64 2624, i64 2, !54, i64 2626, i64 2, !54, i64 2628, i64 4, !55, i64 2632, i64 1, !53, i64 2633, i64 1, !53, i64 2634, i64 6, !53, i64 2640, i64 4, !57, i64 2644, i64 4, !57, i64 2648, i64 64, !53, i64 2712, i64 64, !53, i64 2776, i64 4, !55, i64 2780, i64 4, !55, i64 2784, i64 8, !40, i64 2792, i64 8, !40, i64 2800, i64 64, !53, i64 2864, i64 1024, !53, i64 3888, i64 2, !54, i64 3890, i64 2, !54, i64 3892, i64 2, !54, i64 3894, i64 2, !54, i64 3896, i64 4, !55, i64 3900, i64 4, !55, i64 3904, i64 3, !53, i64 3907, i64 1, !53, i64 3908, i64 1, !53, i64 3909, i64 3, !53, i64 3912, i64 64, !53, i64 3976, i64 4, !57, i64 3980, i64 4, !57}
!53 = !{!37, !37, i64 0}
!54 = !{!50, !50, i64 0}
!55 = !{!56, !56, i64 0}
!56 = !{!"float", !37, i64 0}
!57 = !{!39, !39, i64 0}
!58 = !{!59, !50, i64 888}
!59 = !{!"Scene", !60, i64 0, !36, i64 120, !36, i64 128, !36, i64 136, !36, i64 144, !49, i64 152, !36, i64 168, !36, i64 176, !37, i64 184, !37, i64 196, !37, i64 208, !37, i64 220, !39, i64 232, !39, i64 236, !39, i64 240, !50, i64 244, !37, i64 246, !37, i64 247, !36, i64 248, !36, i64 256, !36, i64 264, !36, i64 272, !61, i64 280, !70, i64 4264, !49, i64 4296, !49, i64 4312, !36, i64 4328, !36, i64 4336, !36, i64 4344, !36, i64 4352, !36, i64 4360, !36, i64 4368, !50, i64 4376, !50, i64 4378, !39, i64 4380, !49, i64 4384, !71, i64 4400, !72, i64 4416, !75, i64 4600, !36, i64 4608, !76, i64 4616, !36, i64 4640, !77, i64 4648, !77, i64 4656, !63, i64 4664, !64, i64 4824, !78, i64 4888, !36, i64 4952}
!60 = !{!"ID", !36, i64 0, !36, i64 8, !36, i64 16, !36, i64 24, !37, i64 32, !50, i64 98, !39, i64 100, !39, i64 104, !39, i64 108, !36, i64 112}
!61 = !{!"RenderData", !62, i64 0, !36, i64 248, !36, i64 256, !65, i64 264, !66, i64 328, !39, i64 400, !39, i64 404, !39, i64 408, !56, i64 412, !39, i64 416, !39, i64 420, !39, i64 424, !39, i64 428, !50, i64 432, !50, i64 434, !56, i64 436, !56, i64 440, !56, i64 444, !56, i64 448, !56, i64 452, !50, i64 456, !50, i64 458, !50, i64 460, !50, i64 462, !50, i64 464, !50, i64 466, !39, i64 468, !50, i64 472, !50, i64 474, !50, i64 476, !50, i64 478, !50, i64 480, !50, i64 482, !39, i64 484, !39, i64 488, !50, i64 492, !50, i64 494, !39, i64 496, !39, i64 500, !50, i64 504, !50, i64 506, !50, i64 508, !50, i64 510, !50, i64 512, !37, i64 514, !37, i64 515, !39, i64 516, !39, i64 520, !39, i64 524, !50, i64 528, !50, i64 530, !50, i64 532, !50, i64 534, !50, i64 536, !50, i64 538, !50, i64 540, !50, i64 542, !67, i64 544, !67, i64 560, !68, i64 576, !49, i64 592, !50, i64 608, !50, i64 610, !56, i64 612, !56, i64 616, !56, i64 620, !56, i64 624, !39, i64 628, !56, i64 632, !56, i64 636, !56, i64 640, !56, i64 644, !50, i64 648, !50, i64 650, !50, i64 652, !50, i64 654, !50, i64 656, !50, i64 658, !56, i64 660, !56, i64 664, !50, i64 668, !50, i64 670, !56, i64 672, !56, i64 676, !37, i64 680, !39, i64 1704, !50, i64 1708, !50, i64 1710, !37, i64 1712, !37, i64 2480, !37, i64 2496, !37, i64 2512, !37, i64 2513, !37, i64 2514, !37, i64 2515, !39, i64 2520, !50, i64 2524, !50, i64 2526, !56, i64 2528, !56, i64 2532, !50, i64 2536, !50, i64 2538, !56, i64 2540, !50, i64 2544, !50, i64 2546, !39, i64 2548, !50, i64 2552, !50, i64 2554, !50, i64 2556, !50, i64 2558, !56, i64 2560, !56, i64 2564, !36, i64 2568, !39, i64 2576, !56, i64 2580, !37, i64 2584, !69, i64 2616, !39, i64 3976, !39, i64 3980}
!62 = !{!"ImageFormatData", !37, i64 0, !37, i64 1, !37, i64 2, !37, i64 3, !37, i64 4, !37, i64 5, !37, i64 6, !37, i64 7, !50, i64 8, !50, i64 10, !56, i64 12, !37, i64 16, !37, i64 17, !37, i64 18, !63, i64 24, !64, i64 184}
!63 = !{!"ColorManagedViewSettings", !39, i64 0, !39, i64 4, !37, i64 8, !37, i64 72, !56, i64 136, !56, i64 140, !36, i64 144, !36, i64 152}
!64 = !{!"ColorManagedDisplaySettings", !37, i64 0}
!65 = !{!"QuicktimeCodecSettings", !39, i64 0, !39, i64 4, !39, i64 8, !39, i64 12, !39, i64 16, !39, i64 20, !39, i64 24, !39, i64 28, !39, i64 32, !39, i64 36, !39, i64 40, !39, i64 44, !50, i64 48, !50, i64 50, !39, i64 52, !39, i64 56, !39, i64 60}
!66 = !{!"FFMpegCodecData", !39, i64 0, !39, i64 4, !39, i64 8, !39, i64 12, !39, i64 16, !39, i64 20, !39, i64 24, !39, i64 28, !56, i64 32, !39, i64 36, !39, i64 40, !39, i64 44, !39, i64 48, !39, i64 52, !39, i64 56, !39, i64 60, !36, i64 64}
!67 = !{!"rctf", !56, i64 0, !56, i64 4, !56, i64 8, !56, i64 12}
!68 = !{!"rcti", !39, i64 0, !39, i64 4, !39, i64 8, !39, i64 12}
!69 = !{!"BakeData", !62, i64 0, !37, i64 248, !50, i64 1272, !50, i64 1274, !50, i64 1276, !50, i64 1278, !56, i64 1280, !56, i64 1284, !37, i64 1288, !37, i64 1291, !37, i64 1292, !37, i64 1293, !37, i64 1296}
!70 = !{!"AudioData", !39, i64 0, !56, i64 4, !56, i64 8, !56, i64 12, !39, i64 16, !50, i64 20, !50, i64 22, !56, i64 24, !56, i64 28}
!71 = !{!"GameFraming", !37, i64 0, !37, i64 12, !37, i64 13, !37, i64 14, !37, i64 15}
!72 = !{!"GameData", !71, i64 0, !50, i64 16, !50, i64 18, !50, i64 20, !50, i64 22, !50, i64 24, !50, i64 26, !50, i64 28, !50, i64 30, !50, i64 32, !37, i64 34, !73, i64 40, !50, i64 64, !50, i64 66, !56, i64 68, !74, i64 72, !56, i64 128, !56, i64 132, !39, i64 136, !50, i64 140, !50, i64 142, !50, i64 144, !50, i64 146, !50, i64 148, !50, i64 150, !50, i64 152, !50, i64 154, !50, i64 156, !50, i64 158, !50, i64 160, !50, i64 162, !56, i64 164, !56, i64 168, !56, i64 172, !56, i64 176, !56, i64 180}
!73 = !{!"GameDome", !50, i64 0, !50, i64 2, !50, i64 4, !50, i64 6, !56, i64 8, !56, i64 12, !36, i64 16}
!74 = !{!"RecastData", !56, i64 0, !56, i64 4, !56, i64 8, !56, i64 12, !56, i64 16, !56, i64 20, !56, i64 24, !56, i64 28, !56, i64 32, !56, i64 36, !39, i64 40, !56, i64 44, !56, i64 48, !50, i64 52, !50, i64 54}
!75 = !{!"UnitSettings", !56, i64 0, !37, i64 4, !37, i64 5, !50, i64 6}
!76 = !{!"PhysicsSettings", !37, i64 0, !39, i64 12, !39, i64 16, !39, i64 20}
!77 = !{!"long", !37, i64 0}
!78 = !{!"ColorManagedColorspaceSettings", !37, i64 0}
!79 = !{i64 0, i64 12, !53, i64 12, i64 4, !57, i64 16, i64 4, !57, i64 20, i64 4, !57}
!80 = !{i64 0, i64 12, !53, i64 12, i64 1, !53, i64 13, i64 1, !53, i64 14, i64 1, !53, i64 15, i64 1, !53, i64 16, i64 2, !54, i64 18, i64 2, !54, i64 20, i64 2, !54, i64 22, i64 2, !54, i64 24, i64 2, !54, i64 26, i64 2, !54, i64 28, i64 2, !54, i64 30, i64 2, !54, i64 32, i64 2, !54, i64 34, i64 6, !53, i64 40, i64 2, !54, i64 42, i64 2, !54, i64 44, i64 2, !54, i64 46, i64 2, !54, i64 48, i64 4, !55, i64 52, i64 4, !55, i64 56, i64 8, !40, i64 64, i64 2, !54, i64 66, i64 2, !54, i64 68, i64 4, !55, i64 72, i64 4, !55, i64 76, i64 4, !55, i64 80, i64 4, !55, i64 84, i64 4, !55, i64 88, i64 4, !55, i64 92, i64 4, !55, i64 96, i64 4, !55, i64 100, i64 4, !55, i64 104, i64 4, !55, i64 108, i64 4, !55, i64 112, i64 4, !57, i64 116, i64 4, !55, i64 120, i64 4, !55, i64 124, i64 2, !54, i64 126, i64 2, !54, i64 128, i64 4, !55, i64 132, i64 4, !55, i64 136, i64 4, !57, i64 140, i64 2, !54, i64 142, i64 2, !54, i64 144, i64 2, !54, i64 146, i64 2, !54, i64 148, i64 2, !54, i64 150, i64 2, !54, i64 152, i64 2, !54, i64 154, i64 2, !54, i64 156, i64 2, !54, i64 158, i64 2, !54, i64 160, i64 2, !54, i64 162, i64 2, !54, i64 164, i64 4, !55, i64 168, i64 4, !55, i64 172, i64 4, !55, i64 176, i64 4, !55, i64 180, i64 4, !55}
!81 = !{i64 0, i64 4, !57, i64 4, i64 4, !55, i64 8, i64 4, !55, i64 12, i64 4, !55, i64 16, i64 4, !57, i64 20, i64 2, !54, i64 22, i64 2, !54, i64 24, i64 4, !55, i64 28, i64 4, !55}
!82 = !{!59, !36, i64 112}
!83 = !{!59, !36, i64 264}
!84 = !{!59, !36, i64 136}
!85 = !{!59, !36, i64 144}
!86 = !{!59, !36, i64 4472}
!87 = !{!59, !36, i64 256}
!88 = !{!59, !36, i64 176}
!89 = !{!59, !36, i64 272}
!90 = !{!59, !36, i64 4952}
!91 = !{!59, !36, i64 248}
!92 = !{!93, !36, i64 32}
!93 = !{!"Base", !36, i64 0, !36, i64 8, !39, i64 16, !39, i64 20, !39, i64 24, !50, i64 28, !50, i64 30, !36, i64 32}
!94 = !{!59, !36, i64 168}
!95 = distinct !{!95, !96}
!96 = !{!"llvm.loop.mustprogress"}
!97 = distinct !{!97, !96}
!98 = !{!99, !36, i64 0}
!99 = !{!"ToolSettings", !36, i64 0, !36, i64 8, !36, i64 16, !36, i64 24, !56, i64 32, !56, i64 36, !56, i64 40, !50, i64 44, !50, i64 46, !37, i64 48, !37, i64 49, !37, i64 50, !37, i64 51, !56, i64 52, !50, i64 56, !37, i64 58, !37, i64 59, !100, i64 64, !102, i64 168, !56, i64 336, !56, i64 340, !50, i64 344, !50, i64 346, !37, i64 348, !37, i64 349, !50, i64 350, !56, i64 352, !56, i64 356, !56, i64 360, !56, i64 364, !56, i64 368, !56, i64 372, !56, i64 376, !56, i64 380, !56, i64 384, !56, i64 388, !50, i64 392, !37, i64 394, !37, i64 395, !37, i64 396, !37, i64 399, !36, i64 400, !37, i64 408, !37, i64 409, !37, i64 410, !37, i64 411, !37, i64 412, !37, i64 413, !37, i64 421, !37, i64 429, !37, i64 430, !37, i64 431, !37, i64 432, !37, i64 433, !50, i64 434, !50, i64 436, !50, i64 438, !50, i64 440, !37, i64 442, !37, i64 443, !37, i64 444, !37, i64 445, !37, i64 446, !37, i64 447, !39, i64 448, !39, i64 452, !39, i64 456, !39, i64 460, !50, i64 464, !50, i64 466, !39, i64 468, !56, i64 472, !56, i64 476, !103, i64 480, !104, i64 608}
!100 = !{!"ImagePaintSettings", !101, i64 0, !50, i64 40, !50, i64 42, !50, i64 44, !50, i64 46, !37, i64 48, !39, i64 52, !36, i64 56, !36, i64 64, !36, i64 72, !36, i64 80, !37, i64 88, !56, i64 100}
!101 = !{!"Paint", !36, i64 0, !36, i64 8, !36, i64 16, !37, i64 24, !39, i64 28, !39, i64 32, !39, i64 36}
!102 = !{!"ParticleEditSettings", !50, i64 0, !50, i64 2, !50, i64 4, !50, i64 6, !37, i64 8, !36, i64 120, !56, i64 128, !56, i64 132, !39, i64 136, !39, i64 140, !39, i64 144, !39, i64 148, !36, i64 152, !36, i64 160}
!103 = !{!"UnifiedPaintSettings", !39, i64 0, !56, i64 4, !56, i64 8, !56, i64 12, !37, i64 16, !37, i64 28, !39, i64 40, !37, i64 44, !56, i64 52, !39, i64 56, !39, i64 60, !37, i64 64, !37, i64 65, !56, i64 72, !37, i64 76, !39, i64 84, !56, i64 88, !37, i64 92, !37, i64 100, !39, i64 108, !36, i64 112, !56, i64 120, !39, i64 124}
!104 = !{!"MeshStatVis", !37, i64 0, !37, i64 1, !37, i64 3, !56, i64 4, !56, i64 8, !56, i64 12, !56, i64 16, !37, i64 20, !37, i64 21, !56, i64 24, !56, i64 28, !56, i64 32, !56, i64 36}
!105 = !{!99, !36, i64 8}
!106 = !{!99, !36, i64 16}
!107 = !{!99, !36, i64 120}
!108 = !{!99, !36, i64 128}
!109 = !{!99, !36, i64 288}
!110 = !{!59, !36, i64 528}
!111 = !{!59, !36, i64 536}
!112 = !{!59, !36, i64 672}
!113 = !{!59, !36, i64 128}
!114 = !{!115, !36, i64 16}
!115 = !{!"Object", !60, i64 0, !36, i64 120, !36, i64 128, !50, i64 136, !50, i64 138, !39, i64 140, !39, i64 144, !39, i64 148, !37, i64 152, !36, i64 216, !36, i64 224, !36, i64 232, !36, i64 240, !36, i64 248, !36, i64 256, !36, i64 264, !36, i64 272, !36, i64 280, !36, i64 288, !36, i64 296, !36, i64 304, !116, i64 312, !36, i64 360, !49, i64 368, !49, i64 384, !49, i64 400, !49, i64 416, !39, i64 432, !39, i64 436, !36, i64 440, !36, i64 448, !39, i64 456, !39, i64 460, !37, i64 464, !37, i64 476, !37, i64 488, !37, i64 500, !37, i64 512, !37, i64 524, !37, i64 536, !37, i64 548, !37, i64 560, !37, i64 576, !37, i64 592, !37, i64 604, !56, i64 616, !56, i64 620, !37, i64 624, !37, i64 688, !37, i64 752, !37, i64 816, !37, i64 880, !39, i64 944, !50, i64 948, !50, i64 950, !50, i64 952, !50, i64 954, !50, i64 956, !50, i64 958, !50, i64 960, !50, i64 962, !50, i64 964, !37, i64 966, !37, i64 967, !39, i64 968, !39, i64 972, !39, i64 976, !39, i64 980, !39, i64 984, !56, i64 988, !56, i64 992, !56, i64 996, !56, i64 1000, !56, i64 1004, !56, i64 1008, !56, i64 1012, !56, i64 1016, !56, i64 1020, !56, i64 1024, !56, i64 1028, !56, i64 1032, !50, i64 1036, !50, i64 1038, !50, i64 1040, !37, i64 1042, !37, i64 1043, !50, i64 1044, !37, i64 1046, !37, i64 1047, !56, i64 1048, !56, i64 1052, !49, i64 1056, !49, i64 1072, !49, i64 1088, !49, i64 1104, !56, i64 1120, !50, i64 1124, !50, i64 1126, !37, i64 1128, !39, i64 1144, !39, i64 1148, !36, i64 1152, !37, i64 1160, !37, i64 1161, !50, i64 1162, !37, i64 1164, !49, i64 1176, !49, i64 1192, !49, i64 1208, !49, i64 1224, !36, i64 1240, !36, i64 1248, !36, i64 1256, !37, i64 1264, !37, i64 1265, !50, i64 1266, !56, i64 1268, !36, i64 1272, !36, i64 1280, !36, i64 1288, !36, i64 1296, !77, i64 1304, !77, i64 1312, !39, i64 1320, !39, i64 1324, !49, i64 1328, !49, i64 1344, !36, i64 1360, !36, i64 1368, !36, i64 1376, !37, i64 1384, !36, i64 1392, !49, i64 1400, !36, i64 1416}
!116 = !{!"bAnimVizSettings", !39, i64 0, !39, i64 4, !39, i64 8, !39, i64 12, !50, i64 16, !50, i64 18, !50, i64 20, !50, i64 22, !50, i64 24, !50, i64 26, !50, i64 28, !50, i64 30, !39, i64 32, !39, i64 36, !39, i64 40, !39, i64 44}
!117 = !{!118, !36, i64 0}
!118 = !{!"Editing", !36, i64 0, !49, i64 8, !49, i64 24, !36, i64 40, !37, i64 48, !37, i64 1072, !39, i64 2096, !39, i64 2100, !39, i64 2104, !39, i64 2108, !67, i64 2112}
!119 = !{!59, !39, i64 236}
!120 = !{!59, !39, i64 232}
!121 = !{!59, !39, i64 800}
!122 = !{!59, !39, i64 680}
!123 = !{!59, !39, i64 684}
!124 = !{!59, !39, i64 688}
!125 = !{!59, !39, i64 748}
!126 = !{!59, !39, i64 764}
!127 = !{!59, !39, i64 768}
!128 = !{!59, !39, i64 776}
!129 = !{!59, !39, i64 780}
!130 = !{!59, !50, i64 890}
!131 = !{!59, !50, i64 756}
!132 = !{!59, !50, i64 758}
!133 = !{!59, !37, i64 282}
!134 = !{!59, !37, i64 280}
!135 = !{!59, !37, i64 281}
!136 = !{!59, !37, i64 284}
!137 = !{!59, !37, i64 285}
!138 = !{!59, !50, i64 792}
!139 = !{!59, !39, i64 708}
!140 = !{!59, !39, i64 704}
!141 = !{!59, !50, i64 820}
!142 = !{!59, !50, i64 822}
!143 = !{!59, !50, i64 812}
!144 = !{!59, !39, i64 908}
!145 = !{!59, !56, i64 920}
!146 = !{!59, !50, i64 936}
!147 = !{!59, !50, i64 948}
!148 = !{!59, !56, i64 944}
!149 = !{!59, !37, i64 2898}
!150 = !{!59, !37, i64 2896}
!151 = !{!59, !37, i64 2897}
!152 = !{!59, !37, i64 2900}
!153 = !{!59, !37, i64 2901}
!154 = !{!59, !39, i64 796}
!155 = !{!59, !39, i64 1984}
!156 = !{!59, !50, i64 1988}
!157 = !{!59, !39, i64 804}
!158 = !{!59, !37, i64 2792}
!159 = !{!59, !37, i64 2793}
!160 = !{!59, !37, i64 2794}
!161 = !{!59, !50, i64 714}
!162 = !{!59, !50, i64 2804}
!163 = !{!59, !50, i64 2806}
!164 = !{!59, !39, i64 4256}
!165 = !{!59, !39, i64 2856}
!166 = !{!59, !56, i64 2860}
!167 = !{!99, !56, i64 52}
!168 = !{!99, !37, i64 48}
!169 = !{!99, !56, i64 340}
!170 = !{!99, !50, i64 46}
!171 = !{!99, !37, i64 51}
!172 = !{!173, !50, i64 8976}
!173 = !{!"UserDef", !39, i64 0, !39, i64 4, !39, i64 8, !39, i64 12, !39, i64 16, !37, i64 20, !37, i64 788, !37, i64 1556, !37, i64 2580, !37, i64 3348, !37, i64 4116, !37, i64 4884, !37, i64 5652, !37, i64 6420, !37, i64 7444, !39, i64 8468, !50, i64 8472, !50, i64 8474, !50, i64 8476, !50, i64 8478, !50, i64 8480, !50, i64 8482, !39, i64 8484, !39, i64 8488, !39, i64 8492, !50, i64 8496, !50, i64 8498, !39, i64 8500, !39, i64 8504, !39, i64 8508, !39, i64 8512, !39, i64 8516, !39, i64 8520, !39, i64 8524, !50, i64 8528, !50, i64 8530, !50, i64 8532, !50, i64 8534, !49, i64 8536, !49, i64 8552, !49, i64 8568, !49, i64 8584, !49, i64 8600, !49, i64 8616, !49, i64 8632, !37, i64 8648, !50, i64 8712, !50, i64 8714, !50, i64 8716, !50, i64 8718, !50, i64 8720, !50, i64 8722, !50, i64 8724, !50, i64 8726, !37, i64 8728, !50, i64 8896, !50, i64 8898, !50, i64 8900, !50, i64 8902, !50, i64 8904, !50, i64 8906, !50, i64 8908, !50, i64 8910, !39, i64 8912, !39, i64 8916, !50, i64 8920, !50, i64 8922, !50, i64 8924, !50, i64 8926, !50, i64 8928, !50, i64 8930, !50, i64 8932, !50, i64 8934, !50, i64 8936, !50, i64 8938, !37, i64 8940, !37, i64 8941, !37, i64 8942, !37, i64 8943, !50, i64 8944, !50, i64 8946, !50, i64 8948, !50, i64 8950, !50, i64 8952, !50, i64 8954, !56, i64 8956, !56, i64 8960, !39, i64 8964, !50, i64 8968, !50, i64 8970, !56, i64 8972, !50, i64 8976, !50, i64 8978, !50, i64 8980, !50, i64 8982, !174, i64 8984, !37, i64 9760, !37, i64 9772, !50, i64 9788, !37, i64 9790, !37, i64 9791, !37, i64 9792, !37, i64 9872, !39, i64 10896, !39, i64 10900, !56, i64 10904, !56, i64 10908, !39, i64 10912, !50, i64 10916, !50, i64 10918, !50, i64 10920, !50, i64 10922, !50, i64 10924, !50, i64 10926, !175, i64 10928}
!174 = !{!"ColorBand", !50, i64 0, !50, i64 2, !37, i64 4, !37, i64 5, !37, i64 6, !37, i64 7, !37, i64 8}
!175 = !{!"WalkNavigation", !56, i64 0, !56, i64 4, !56, i64 8, !56, i64 12, !56, i64 16, !56, i64 20, !50, i64 24, !37, i64 26}
!176 = !{!99, !50, i64 344}
!177 = !{!99, !37, i64 432}
!178 = !{!99, !50, i64 350}
!179 = !{!99, !56, i64 376}
!180 = !{!99, !37, i64 394}
!181 = !{!99, !37, i64 395}
!182 = !{!99, !50, i64 392}
!183 = !{!99, !37, i64 611}
!184 = !{!99, !56, i64 624}
!185 = !{!99, !37, i64 628}
!186 = !{!99, !56, i64 336}
!187 = !{!99, !39, i64 92}
!188 = !{!99, !50, i64 110}
!189 = !{!99, !50, i64 108}
!190 = !{!59, !39, i64 4628}
!191 = !{!59, !56, i64 4600}
!192 = !{!102, !56, i64 128}
!193 = !{!102, !39, i64 144}
!194 = !{!102, !39, i64 148}
!195 = !{!102, !39, i64 136}
!196 = !{!197, !56, i64 12}
!197 = !{!"ParticleBrushData", !50, i64 0, !50, i64 2, !50, i64 4, !50, i64 6, !39, i64 8, !56, i64 12}
!198 = !{!197, !50, i64 0}
!199 = !{!197, !50, i64 2}
!200 = !{!197, !50, i64 6}
!201 = distinct !{!201, !96}
!202 = !{!59, !39, i64 628}
!203 = !{!59, !56, i64 640}
!204 = !{!59, !39, i64 624}
!205 = !{!59, !39, i64 632}
!206 = !{!59, !39, i64 4280}
!207 = !{!59, !56, i64 4288}
!208 = !{!59, !50, i64 818}
!209 = !{!59, !50, i64 4480}
!210 = !{!59, !50, i64 4482}
!211 = !{!59, !56, i64 4464}
!212 = !{!59, !56, i64 4544}
!213 = !{!59, !50, i64 4562}
!214 = !{!59, !50, i64 4556}
!215 = !{!59, !50, i64 4560}
!216 = !{!59, !39, i64 4552}
!217 = !{!59, !50, i64 4558}
!218 = !{!59, !50, i64 4576}
!219 = !{!59, !56, i64 4524}
!220 = !{!59, !39, i64 4528}
!221 = !{!59, !50, i64 4564}
!222 = !{!"scene.c:remove_sequencer_fcurves"}
!223 = !{!224, !36, i64 0}
!224 = !{!"AnimData", !36, i64 0, !36, i64 8, !36, i64 16, !49, i64 24, !36, i64 40, !49, i64 48, !49, i64 64, !39, i64 80, !39, i64 84, !50, i64 88, !50, i64 90, !56, i64 92}
!225 = !{!226, !36, i64 120}
!226 = !{!"bAction", !60, i64 0, !49, i64 120, !49, i64 136, !49, i64 152, !49, i64 168, !39, i64 184, !39, i64 188, !39, i64 192, !39, i64 196}
!227 = !{!228, !36, i64 0}
!228 = !{!"FCurve", !36, i64 0, !36, i64 8, !36, i64 16, !36, i64 24, !49, i64 32, !36, i64 48, !36, i64 56, !39, i64 64, !56, i64 68, !50, i64 72, !50, i64 74, !39, i64 76, !36, i64 80, !39, i64 88, !37, i64 92, !56, i64 104, !56, i64 108}
!229 = !{!228, !36, i64 80}
!230 = distinct !{!230, !96}
!231 = !{!115, !39, i64 100}
!232 = distinct !{!232, !96}
!233 = !{!59, !36, i64 4608}
!234 = distinct !{!234, !96}
!235 = !{!99, !36, i64 24}
!236 = !{!59, !36, i64 4360}
!237 = !{!238, !39, i64 96}
!238 = !{!"SceneRenderLayer", !36, i64 0, !36, i64 8, !37, i64 16, !36, i64 80, !36, i64 88, !39, i64 96, !39, i64 100, !39, i64 104, !39, i64 108, !39, i64 112, !39, i64 116, !39, i64 120, !56, i64 124, !239, i64 128}
!239 = !{!"FreestyleConfig", !49, i64 0, !39, i64 16, !39, i64 20, !39, i64 24, !56, i64 28, !56, i64 32, !56, i64 36, !49, i64 40}
!240 = !{!238, !39, i64 108}
!241 = !{!238, !39, i64 112}
!242 = !{!238, !56, i64 124}
!243 = !{i32 0, i32 2}
!244 = !{!115, !39, i64 432}
!245 = !{!115, !50, i64 948}
!246 = distinct !{!246, !96}
!247 = distinct !{!247, !96}
!248 = !{!249, !36, i64 16}
!249 = !{!"GroupObject", !36, i64 0, !36, i64 8, !36, i64 16, !36, i64 24, !50, i64 32, !37, i64 34}
!250 = distinct !{!250, !96}
!251 = distinct !{!251, !96}
!252 = !{!93, !39, i64 16}
!253 = !{!115, !39, i64 944}
!254 = !{!93, !39, i64 24}
!255 = distinct !{!255, !96}
!256 = distinct !{!256, !96}
!257 = distinct !{!257, !96}
!258 = distinct !{!258, !96}
!259 = !{!260, !36, i64 240}
!260 = !{!"bNode", !36, i64 0, !36, i64 8, !36, i64 16, !36, i64 24, !36, i64 32, !37, i64 40, !37, i64 104, !39, i64 168, !50, i64 172, !50, i64 174, !50, i64 176, !50, i64 178, !50, i64 180, !50, i64 182, !50, i64 184, !50, i64 186, !37, i64 188, !49, i64 200, !49, i64 216, !36, i64 232, !36, i64 240, !36, i64 248, !36, i64 256, !49, i64 264, !56, i64 280, !56, i64 284, !56, i64 288, !56, i64 292, !56, i64 296, !56, i64 300, !56, i64 304, !39, i64 308, !37, i64 312, !50, i64 376, !50, i64 378, !56, i64 380, !56, i64 384, !50, i64 388, !50, i64 390, !36, i64 392, !67, i64 400, !67, i64 416, !67, i64 432, !50, i64 448, !50, i64 450, !39, i64 452, !36, i64 456}
!261 = distinct !{!261, !96}
!262 = distinct !{!262, !96}
!263 = distinct !{!263, !96}
!264 = !{!265, !36, i64 184}
!265 = !{!"bScreen", !60, i64 0, !49, i64 120, !49, i64 136, !49, i64 152, !49, i64 168, !36, i64 184, !36, i64 192, !39, i64 200, !39, i64 204, !50, i64 208, !50, i64 210, !50, i64 212, !50, i64 214, !50, i64 216, !50, i64 218, !50, i64 220, !50, i64 222, !50, i64 224, !50, i64 226, !50, i64 228, !50, i64 230, !36, i64 232, !36, i64 240}
!266 = distinct !{!266, !96}
!267 = !{!268, !39, i64 32}
!268 = !{!"SpaceLink", !36, i64 0, !36, i64 8, !49, i64 16, !39, i64 32, !56, i64 36, !37, i64 40}
!269 = distinct !{!269, !96}
!270 = !{!"scene.c:scene_unlink_space_node"}
!271 = !{!272, !36, i64 216}
!272 = !{!"SpaceNode", !36, i64 0, !36, i64 8, !49, i64 16, !39, i64 32, !56, i64 36, !37, i64 40, !273, i64 56, !36, i64 216, !36, i64 224, !50, i64 232, !50, i64 234, !56, i64 236, !56, i64 240, !56, i64 244, !56, i64 248, !56, i64 252, !37, i64 256, !49, i64 264, !36, i64 280, !36, i64 288, !37, i64 296, !39, i64 360, !39, i64 364, !50, i64 368, !50, i64 370, !50, i64 372, !50, i64 374, !49, i64 376, !36, i64 392}
!273 = !{!"View2D", !67, i64 0, !67, i64 16, !68, i64 32, !68, i64 48, !68, i64 64, !37, i64 80, !37, i64 88, !56, i64 96, !56, i64 100, !50, i64 104, !50, i64 106, !50, i64 108, !50, i64 110, !50, i64 112, !50, i64 114, !50, i64 116, !50, i64 118, !50, i64 120, !50, i64 122, !50, i64 124, !50, i64 126, !36, i64 128, !39, i64 136, !39, i64 140, !36, i64 144, !36, i64 152}
!274 = !{!272, !36, i64 264}
!275 = !{!276, !36, i64 0}
!276 = !{!"bNodeTreePath", !36, i64 0, !36, i64 8, !36, i64 16, !277, i64 24, !39, i64 28, !37, i64 32, !37, i64 40}
!277 = !{!"bNodeInstanceKey", !39, i64 0}
!278 = distinct !{!278, !96}
!279 = !{!"scene.c:scene_unlink_space_buts"}
!280 = !{!281, !36, i64 256}
!281 = !{!"SpaceButs", !36, i64 0, !36, i64 8, !49, i64 16, !39, i64 32, !56, i64 36, !37, i64 40, !273, i64 56, !50, i64 216, !50, i64 218, !50, i64 220, !50, i64 222, !50, i64 224, !50, i64 226, !50, i64 228, !50, i64 230, !37, i64 232, !37, i64 233, !36, i64 240, !39, i64 248, !39, i64 252, !36, i64 256, !36, i64 264}
!282 = !{!283, !39, i64 88}
!283 = !{!"SceneBaseIter", !36, i64 0, !36, i64 8, !37, i64 16, !36, i64 80, !39, i64 88}
!284 = !{!283, !36, i64 80}
!285 = !{!59, !36, i64 152}
!286 = distinct !{!286, !96}
!287 = !{!93, !36, i64 0}
!288 = distinct !{!288, !96}
!289 = !{!115, !50, i64 952}
!290 = !{!115, !36, i64 1256}
!291 = !{!283, !36, i64 0}
!292 = !{!49, !36, i64 0}
!293 = !{!283, !36, i64 8}
!294 = !{!295, !36, i64 16}
!295 = !{!"DupliObject", !36, i64 0, !36, i64 8, !36, i64 16, !37, i64 24, !37, i64 88, !37, i64 100, !50, i64 108, !37, i64 110, !37, i64 111, !37, i64 112, !36, i64 144}
!296 = !{!295, !36, i64 0}
!297 = distinct !{!297, !96}
!298 = !{!115, !50, i64 136}
!299 = distinct !{!299, !96}
!300 = !{!301, !36, i64 88}
!301 = !{!"TimeMarker", !36, i64 0, !36, i64 8, !39, i64 16, !37, i64 20, !39, i64 84, !36, i64 88}
!302 = !{!115, !37, i64 1160}
!303 = !{!301, !39, i64 16}
!304 = distinct !{!304, !96}
!305 = distinct !{!305, !96}
!306 = distinct !{!306, !96}
!307 = !{!115, !36, i64 1376}
!308 = !{!115, !36, i64 1368}
!309 = distinct !{!309, !96}
!310 = !{!59, !56, i64 692}
!311 = !{!59, !56, i64 716}
!312 = !{!313, !313, i64 0}
!313 = !{!"double", !37, i64 0}
!314 = distinct !{!314, !96}
!315 = !{!224, !39, i64 84}
!316 = distinct !{!316, !96}
!317 = distinct !{!317, !96}
!318 = !{!"scene.c:prepare_mesh_for_viewport_render"}
!319 = !{!115, !36, i64 296}
!320 = !{!321, !50, i64 98}
!321 = !{!"Mesh", !60, i64 0, !36, i64 120, !36, i64 128, !36, i64 136, !36, i64 144, !36, i64 152, !36, i64 160, !36, i64 168, !36, i64 176, !36, i64 184, !36, i64 192, !36, i64 200, !36, i64 208, !36, i64 216, !36, i64 224, !36, i64 232, !36, i64 240, !36, i64 248, !36, i64 256, !36, i64 264, !36, i64 272, !322, i64 280, !322, i64 480, !322, i64 680, !322, i64 880, !322, i64 1080, !39, i64 1280, !39, i64 1284, !39, i64 1288, !39, i64 1292, !39, i64 1296, !39, i64 1300, !39, i64 1304, !37, i64 1308, !37, i64 1320, !37, i64 1332, !39, i64 1344, !50, i64 1348, !50, i64 1350, !56, i64 1352, !39, i64 1356, !37, i64 1360, !37, i64 1361, !37, i64 1362, !37, i64 1363, !37, i64 1364, !37, i64 1365, !50, i64 1366, !36, i64 1368}
!322 = !{!"CustomData", !36, i64 0, !37, i64 8, !39, i64 172, !39, i64 176, !39, i64 180, !36, i64 184, !36, i64 192}
!323 = !{!321, !36, i64 272}
!324 = !{!325, !36, i64 0}
!325 = !{!"BMEditMesh", !36, i64 0, !36, i64 8, !39, i64 16, !36, i64 24, !39, i64 32, !36, i64 40, !36, i64 48, !77, i64 56, !36, i64 64, !39, i64 72, !36, i64 80, !39, i64 88, !50, i64 92, !50, i64 94, !36, i64 96, !39, i64 104}
!326 = !{!"scene.c:scene_update_tagged_recursive"}
!327 = !{!59, !77, i64 4648}
!328 = distinct !{!328, !96}
!329 = !{!"scene.c:scene_rebuild_rbw_recursive"}
!330 = !{i8 0, i8 2}
!331 = !{!"scene.c:scene_do_rb_simulation_recursive"}
!332 = !{!"scene.c:scene_depsgraph_hack"}
!333 = !{!115, !37, i64 967}
!334 = !{!115, !37, i64 1161}
!335 = distinct !{!335, !96}
!336 = distinct !{!336, !96}
!337 = !{!59, !36, i64 872}
!338 = !{!59, !36, i64 880}
!339 = !{!260, !50, i64 172}
!340 = !{!260, !50, i64 376}
!341 = distinct !{!341, !96}
!342 = distinct !{!342, !96}
!343 = !{!61, !39, i64 520}
!344 = !{!61, !50, i64 2524}
!345 = !{!"scene.c:min_ii"}
!346 = !{!61, !56, i64 2528}
!347 = !{!61, !50, i64 2526}
!348 = !{!61, !56, i64 2532}
!349 = distinct !{!349, !96}
!350 = !{!351, !39, i64 144}
!351 = !{!"RenderEngineType", !36, i64 0, !36, i64 8, !37, i64 16, !37, i64 80, !39, i64 144, !36, i64 152, !36, i64 160, !36, i64 168, !36, i64 176, !36, i64 184, !36, i64 192, !352, i64 200}
!352 = !{!"ExtensionRNA", !36, i64 0, !36, i64 8, !36, i64 16, !36, i64 24}
!353 = distinct !{!353, !96}
!354 = distinct !{!354, !96}
!355 = !{!356, !36, i64 8}
!356 = !{!"RigidBodyWorld", !36, i64 0, !36, i64 8, !36, i64 16, !36, i64 24, !39, i64 32, !56, i64 36, !36, i64 40, !49, i64 48, !39, i64 64, !50, i64 68, !50, i64 70, !39, i64 72, !56, i64 76, !36, i64 80}
!357 = !{!356, !39, i64 72}
!358 = !{!61, !50, i64 434}
!359 = !{!"scene.c:max_ii"}
!360 = !{!75, !37, i64 4}
!361 = !{!75, !56, i64 0}
!362 = !{!"scene.c:BLI_listbase_clear"}
!363 = !{!"scene.c:check_rendered_viewport_visible"}
!364 = !{!365, !36, i64 1552}
!365 = !{!"Main", !36, i64 0, !36, i64 8, !37, i64 16, !50, i64 1040, !50, i64 1042, !50, i64 1044, !50, i64 1046, !77, i64 1048, !37, i64 1056, !50, i64 1072, !36, i64 1080, !49, i64 1088, !49, i64 1104, !49, i64 1120, !49, i64 1136, !49, i64 1152, !49, i64 1168, !49, i64 1184, !49, i64 1200, !49, i64 1216, !49, i64 1232, !49, i64 1248, !49, i64 1264, !49, i64 1280, !49, i64 1296, !49, i64 1312, !49, i64 1328, !49, i64 1344, !49, i64 1360, !49, i64 1376, !49, i64 1392, !49, i64 1408, !49, i64 1424, !49, i64 1440, !49, i64 1456, !49, i64 1472, !49, i64 1488, !49, i64 1504, !49, i64 1520, !49, i64 1536, !49, i64 1552, !49, i64 1568, !49, i64 1584, !49, i64 1600, !49, i64 1616, !37, i64 1632, !36, i64 1888, !36, i64 1896}
!366 = distinct !{!366, !96}
!367 = !{!368, !36, i64 24}
!368 = !{!"wmWindow", !36, i64 0, !36, i64 8, !36, i64 16, !36, i64 24, !36, i64 32, !37, i64 40, !50, i64 104, !50, i64 106, !50, i64 108, !50, i64 110, !50, i64 112, !50, i64 114, !50, i64 116, !50, i64 118, !50, i64 120, !50, i64 122, !50, i64 124, !50, i64 126, !39, i64 128, !50, i64 132, !50, i64 134, !36, i64 136, !36, i64 144, !36, i64 152, !39, i64 160, !39, i64 164, !36, i64 168, !49, i64 176, !49, i64 192, !49, i64 208, !49, i64 224, !49, i64 240}
!369 = !{!370, !37, i64 72}
!370 = !{!"ScrArea", !36, i64 0, !36, i64 8, !36, i64 16, !36, i64 24, !36, i64 32, !36, i64 40, !36, i64 48, !68, i64 56, !37, i64 72, !37, i64 73, !50, i64 74, !50, i64 76, !50, i64 78, !50, i64 80, !50, i64 82, !50, i64 84, !37, i64 86, !37, i64 87, !36, i64 88, !49, i64 96, !49, i64 112, !49, i64 128, !49, i64 144}
!371 = !{!370, !36, i64 96}
!372 = !{!373, !50, i64 232}
!373 = !{!"View3D", !36, i64 0, !36, i64 8, !49, i64 16, !39, i64 32, !56, i64 36, !37, i64 40, !37, i64 56, !56, i64 72, !56, i64 76, !37, i64 80, !37, i64 81, !39, i64 84, !39, i64 88, !50, i64 92, !50, i64 94, !36, i64 96, !36, i64 104, !67, i64 112, !49, i64 128, !36, i64 144, !36, i64 152, !37, i64 160, !39, i64 224, !39, i64 228, !50, i64 232, !50, i64 234, !50, i64 236, !50, i64 238, !50, i64 240, !50, i64 242, !56, i64 244, !56, i64 248, !56, i64 252, !56, i64 256, !37, i64 260, !37, i64 272, !50, i64 284, !50, i64 286, !50, i64 288, !37, i64 290, !37, i64 291, !37, i64 292, !37, i64 293, !37, i64 294, !49, i64 296, !49, i64 312, !49, i64 328, !37, i64 344, !37, i64 345, !37, i64 346, !37, i64 347, !36, i64 352, !36, i64 360, !36, i64 368}
!374 = distinct !{!374, !96}
!375 = !{!"scene.c:scene_update_objects"}
!376 = !{!377, !36, i64 0}
!377 = !{!"ThreadedObjectUpdateState", !36, i64 0, !36, i64 8, !36, i64 16, !313, i64 24, !37, i64 32, !37, i64 48, !37, i64 49}
!378 = !{!377, !36, i64 8}
!379 = !{!377, !36, i64 16}
!380 = !{!48, !39, i64 2100}
!381 = !{!377, !313, i64 24}
!382 = !{!377, !37, i64 49}
!383 = !{!"scene.c:scene_update_drivers"}
!384 = !{!59, !36, i64 120}
!385 = !{!224, !36, i64 48}
!386 = !{!387, !36, i64 520}
!387 = !{!"World", !60, i64 0, !36, i64 120, !50, i64 128, !50, i64 130, !50, i64 132, !50, i64 134, !56, i64 136, !56, i64 140, !56, i64 144, !56, i64 148, !56, i64 152, !56, i64 156, !56, i64 160, !56, i64 164, !56, i64 168, !56, i64 172, !56, i64 176, !56, i64 180, !56, i64 184, !56, i64 188, !56, i64 192, !56, i64 196, !50, i64 200, !50, i64 202, !50, i64 204, !50, i64 206, !50, i64 208, !50, i64 210, !50, i64 212, !50, i64 214, !56, i64 216, !56, i64 220, !56, i64 224, !56, i64 228, !56, i64 232, !56, i64 236, !56, i64 240, !56, i64 244, !56, i64 248, !56, i64 252, !56, i64 256, !56, i64 260, !50, i64 264, !50, i64 266, !50, i64 268, !50, i64 270, !56, i64 272, !56, i64 276, !56, i64 280, !56, i64 284, !50, i64 288, !50, i64 290, !50, i64 292, !50, i64 294, !56, i64 296, !56, i64 300, !56, i64 304, !56, i64 308, !56, i64 312, !56, i64 316, !56, i64 320, !50, i64 324, !50, i64 326, !50, i64 328, !50, i64 330, !50, i64 332, !50, i64 334, !36, i64 336, !36, i64 344, !36, i64 352, !37, i64 360, !50, i64 504, !50, i64 506, !37, i64 508, !36, i64 512, !36, i64 520}
!388 = distinct !{!388, !96}
!389 = !{!390, !36, i64 120}
!390 = !{!"FreestyleLineSet", !36, i64 0, !36, i64 8, !37, i64 16, !39, i64 80, !39, i64 84, !50, i64 88, !50, i64 90, !39, i64 92, !39, i64 96, !39, i64 100, !39, i64 104, !39, i64 108, !36, i64 112, !36, i64 120}
!391 = distinct !{!391, !96}
!392 = !{!"scene.c:scene_need_update_objects"}
!393 = !{!"scene.c:scene_update_object_add_task"}
!394 = !{!"scene.c:print_threads_statistics"}
!395 = !{!377, !37, i64 48}
!396 = !{!397, !313, i64 32}
!397 = !{!"StatisicsEntry", !36, i64 0, !36, i64 8, !36, i64 16, !313, i64 24, !313, i64 32}
!398 = distinct !{!398, !96}
!399 = !{!397, !36, i64 16}
!400 = distinct !{!400, !96}
!401 = distinct !{!401, !96}
!402 = !{!"scene.c:scene_update_all_bases"}
!403 = distinct !{!403, !96}
!404 = !{!"scene.c:scene_update_object_func"}
!405 = !{!397, !313, i64 24}
