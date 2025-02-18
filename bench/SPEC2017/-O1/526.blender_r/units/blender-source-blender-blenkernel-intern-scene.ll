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
%struct.bAction = type { %struct.ID, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, i32, i32, i32, i32 }
%struct.FCurve = type { ptr, ptr, ptr, ptr, %struct.ListBase, ptr, ptr, i32, float, i16, i16, i32, ptr, i32, [3 x float], float, float }
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
%struct.Main = type { ptr, ptr, [1024 x i8], i16, i16, i16, i16, i64, [16 x i8], i16, ptr, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, [256 x i8], ptr, ptr }
%struct.Object = type { %struct.ID, ptr, ptr, i16, i16, i32, i32, i32, [64 x i8], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.bAnimVizSettings, ptr, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, i32, i32, ptr, ptr, i32, i32, [3 x float], [3 x float], [3 x float], [3 x float], [3 x float], [3 x float], [3 x float], [3 x float], [4 x float], [4 x float], [3 x float], [3 x float], float, float, [4 x [4 x float]], [4 x [4 x float]], [4 x [4 x float]], [4 x [4 x float]], [4 x [4 x float]], i32, i16, i16, i16, i16, i16, i16, i16, i16, i16, i8, i8, i32, i32, i32, i32, i32, float, float, float, float, float, float, float, float, float, float, float, float, i16, i16, i16, i8, i8, i16, i8, i8, float, float, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, float, i16, i16, [4 x float], i32, i32, ptr, i8, i8, i16, [3 x float], %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, ptr, ptr, ptr, i8, i8, i16, float, ptr, ptr, ptr, ptr, i64, i64, i32, i32, %struct.ListBase, %struct.ListBase, ptr, ptr, ptr, [2 x float], ptr, %struct.ListBase, ptr }
%struct.bAnimVizSettings = type { i32, i32, i32, i32, i16, i16, i16, i16, i16, i16, i16, i16, i32, i32, i32, i32 }
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
%struct.wmWindowManager = type { %struct.ID, ptr, ptr, %struct.ListBase, i32, i16, i16, %struct.ListBase, %struct.ListBase, %struct.ReportList, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, ptr, ptr, ptr, %struct.ListBase, ptr, i8, [7 x i8] }
%struct.ReportList = type { %struct.ListBase, i32, i32, i32, i32, ptr }
%struct.wmWindow = type { ptr, ptr, ptr, ptr, ptr, [64 x i8], i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i32, i16, i16, ptr, ptr, ptr, i32, i32, ptr, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase }
%struct.View3D = type { ptr, ptr, %struct.ListBase, i32, float, [8 x i16], [4 x float], float, float, i8, [3 x i8], i32, i32, i16, i16, ptr, ptr, %struct.rctf, %struct.ListBase, ptr, ptr, [64 x i8], i32, i32, i16, i16, i16, i16, i16, i16, float, float, float, float, [3 x float], [3 x float], i16, i16, i16, i8, i8, i8, i8, [2 x i8], %struct.ListBase, %struct.ListBase, %struct.ListBase, i8, i8, i8, [5 x i8], ptr, ptr, ptr }
%struct.Mesh = type { %struct.ID, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.CustomData, %struct.CustomData, %struct.CustomData, %struct.CustomData, %struct.CustomData, i32, i32, i32, i32, i32, i32, i32, [3 x float], [3 x float], [3 x float], i32, i16, i16, float, i32, i8, i8, i8, i8, i8, i8, i16, ptr }
%struct.CustomData = type { ptr, [41 x i32], i32, i32, i32, ptr, ptr }
%struct.AnimData = type { ptr, ptr, ptr, %struct.ListBase, ptr, %struct.ListBase, %struct.ListBase, i32, i32, i16, i16, float }
%struct.ThreadedObjectUpdateState = type { ptr, ptr, ptr, double, [1 x %struct.ListBase], i8, i8 }
%struct.StatisicsEntry = type { ptr, ptr, ptr, double, double }
%struct.World = type { %struct.ID, ptr, i16, i16, i16, i16, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, i16, i16, i16, i16, i16, i16, i16, i16, float, float, float, float, float, float, float, float, float, float, float, float, i16, i16, i16, i16, float, float, float, float, i16, i16, i16, i16, float, float, float, float, float, float, float, i16, i16, i16, i16, i16, i16, ptr, ptr, ptr, [18 x ptr], i16, i16, [2 x i16], ptr, ptr }
%struct.FreestyleLineSet = type { ptr, ptr, [64 x i8], i32, i32, i16, i16, i32, i32, i32, i32, i32, ptr, ptr }
%struct.RigidBodyWorld = type { ptr, ptr, ptr, ptr, i32, float, ptr, %struct.ListBase, i32, i16, i16, i32, float, ptr }
%struct.RenderEngineType = type { ptr, ptr, [64 x i8], [64 x i8], i32, ptr, ptr, ptr, ptr, ptr, ptr, %struct.ExtensionRNA }
%struct.ExtensionRNA = type { ptr, ptr, ptr, ptr }

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

; Function Attrs: nounwind uwtable
define dso_local void @free_avicodecdata(ptr noundef %0) local_unnamed_addr #0 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %16, label %3

3:                                                ; preds = %1
  %4 = load ptr, ptr %0, align 8, !tbaa !34
  %5 = icmp eq ptr %4, null
  br i1 %5, label %9, label %6

6:                                                ; preds = %3
  %7 = load ptr, ptr @MEM_freeN, align 8, !tbaa !40
  tail call void %7(ptr noundef nonnull %4) #21
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
  tail call void %14(ptr noundef nonnull %11) #21
  store ptr null, ptr %10, align 8, !tbaa !42
  %15 = getelementptr inbounds %struct.AviCodecData, ptr %0, i64 0, i32 3
  store i32 0, ptr %15, align 4, !tbaa !43
  br label %16

16:                                               ; preds = %9, %13, %1
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @free_qtcodecdata(ptr noundef %0) local_unnamed_addr #0 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %9, label %3

3:                                                ; preds = %1
  %4 = load ptr, ptr %0, align 8, !tbaa !44
  %5 = icmp eq ptr %4, null
  br i1 %5, label %9, label %6

6:                                                ; preds = %3
  %7 = load ptr, ptr @MEM_freeN, align 8, !tbaa !40
  tail call void %7(ptr noundef nonnull %4) #21
  store ptr null, ptr %0, align 8, !tbaa !44
  %8 = getelementptr inbounds %struct.QuicktimeCodecData, ptr %0, i64 0, i32 2
  store i32 0, ptr %8, align 8, !tbaa !46
  br label %9

9:                                                ; preds = %3, %6, %1
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local ptr @BKE_scene_copy(ptr noundef %0, i32 noundef %1) local_unnamed_addr #0 {
  %3 = alloca %struct.ListBase, align 8
  %4 = icmp eq i32 %1, 1
  br i1 %4, label %5, label %32

5:                                                ; preds = %2
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %3)
  %6 = load ptr, ptr @G, align 8, !tbaa !47
  %7 = getelementptr inbounds %struct.ID, ptr %0, i64 0, i32 4, i64 2
  %8 = tail call ptr @BKE_scene_add(ptr noundef %6, ptr noundef nonnull %7)
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
  %26 = tail call ptr @IDP_CopyProperty(ptr noundef nonnull %23) #21
  %27 = getelementptr inbounds %struct.ID, ptr %8, i64 0, i32 9
  store ptr %26, ptr %27, align 8, !tbaa !82
  br label %28

28:                                               ; preds = %25, %5
  %29 = load ptr, ptr @MEM_freeN, align 8, !tbaa !40
  %30 = getelementptr inbounds %struct.Scene, ptr %8, i64 0, i32 20
  %31 = load ptr, ptr %30, align 8, !tbaa !83
  tail call void %29(ptr noundef %31) #21
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %3)
  br label %131

32:                                               ; preds = %2
  %33 = tail call ptr @BKE_libblock_copy(ptr noundef %0) #21
  %34 = getelementptr inbounds %struct.Scene, ptr %33, i64 0, i32 5
  %35 = getelementptr inbounds %struct.Scene, ptr %0, i64 0, i32 5
  tail call void @BLI_duplicatelist(ptr noundef nonnull %34, ptr noundef nonnull %35) #21
  %36 = load ptr, ptr @G, align 8, !tbaa !47
  tail call void @BKE_main_id_clear_newpoins(ptr noundef %36) #21
  %37 = getelementptr inbounds %struct.Scene, ptr %33, i64 0, i32 3
  %38 = load ptr, ptr %37, align 8, !tbaa !84
  tail call void @id_us_plus(ptr noundef %38) #21
  %39 = getelementptr inbounds %struct.Scene, ptr %33, i64 0, i32 4
  %40 = load ptr, ptr %39, align 8, !tbaa !85
  tail call void @id_us_plus(ptr noundef %40) #21
  %41 = getelementptr inbounds %struct.Scene, ptr %33, i64 0, i32 37, i32 11, i32 6
  %42 = load ptr, ptr %41, align 8, !tbaa !86
  tail call void @id_us_plus(ptr noundef %42) #21
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
  %51 = tail call ptr @BKE_rigidbody_world_copy(ptr noundef nonnull %48) #21
  %52 = getelementptr inbounds %struct.Scene, ptr %33, i64 0, i32 47
  store ptr %51, ptr %52, align 8, !tbaa !90
  br label %53

53:                                               ; preds = %50, %32
  %54 = getelementptr inbounds %struct.Scene, ptr %33, i64 0, i32 24
  %55 = getelementptr inbounds %struct.Scene, ptr %0, i64 0, i32 24
  tail call void @BLI_duplicatelist(ptr noundef nonnull %54, ptr noundef nonnull %55) #21
  %56 = getelementptr inbounds %struct.Scene, ptr %33, i64 0, i32 25
  %57 = getelementptr inbounds %struct.Scene, ptr %0, i64 0, i32 25
  tail call void @BLI_duplicatelist(ptr noundef nonnull %56, ptr noundef nonnull %57) #21
  %58 = getelementptr inbounds %struct.Scene, ptr %33, i64 0, i32 22, i32 60
  %59 = getelementptr inbounds %struct.Scene, ptr %0, i64 0, i32 22, i32 60
  tail call void @BLI_duplicatelist(ptr noundef nonnull %58, ptr noundef nonnull %59) #21
  %60 = getelementptr inbounds %struct.Scene, ptr %33, i64 0, i32 35
  %61 = getelementptr inbounds %struct.Scene, ptr %0, i64 0, i32 35
  tail call void @BKE_keyingsets_copy(ptr noundef nonnull %60, ptr noundef nonnull %61) #21
  %62 = getelementptr inbounds %struct.Scene, ptr %0, i64 0, i32 18
  %63 = load ptr, ptr %62, align 8, !tbaa !91
  %64 = icmp eq ptr %63, null
  br i1 %64, label %68, label %65

65:                                               ; preds = %53
  %66 = tail call ptr @ntreeCopyTree(ptr noundef nonnull %63) #21
  %67 = getelementptr inbounds %struct.Scene, ptr %33, i64 0, i32 18
  store ptr %66, ptr %67, align 8, !tbaa !91
  tail call void @ntreeSwitchID(ptr noundef %66, ptr noundef %0, ptr noundef %33) #21
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
  tail call void @id_us_plus(ptr noundef %79) #21
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
  tail call void @BKE_color_managed_display_settings_copy(ptr noundef nonnull %87, ptr noundef nonnull %88) #21
  %89 = getelementptr inbounds %struct.Scene, ptr %33, i64 0, i32 44
  %90 = getelementptr inbounds %struct.Scene, ptr %0, i64 0, i32 44
  tail call void @BKE_color_managed_view_settings_copy(ptr noundef nonnull %89, ptr noundef nonnull %90) #21
  %91 = getelementptr inbounds %struct.Scene, ptr %33, i64 0, i32 22, i32 0, i32 14
  %92 = getelementptr inbounds %struct.Scene, ptr %0, i64 0, i32 22, i32 0, i32 14
  tail call void @BKE_color_managed_view_settings_copy(ptr noundef nonnull %91, ptr noundef nonnull %92) #21
  %93 = getelementptr inbounds %struct.Scene, ptr %33, i64 0, i32 46
  %94 = getelementptr inbounds %struct.Scene, ptr %0, i64 0, i32 46
  %95 = tail call ptr @BLI_strncpy(ptr noundef nonnull %93, ptr noundef nonnull %94, i64 noundef 64) #21
  tail call void @BKE_copy_animdata_id_action(ptr noundef %33) #21
  %96 = icmp eq i32 %1, 4
  br i1 %96, label %120, label %97

97:                                               ; preds = %86
  %98 = tail call ptr @BKE_animdata_from_id(ptr noundef %33) #21
  %99 = icmp eq ptr %98, null
  br i1 %99, label %120, label %100

100:                                              ; preds = %97
  %101 = load ptr, ptr %98, align 8, !tbaa !98
  %102 = icmp eq ptr %101, null
  br i1 %102, label %120, label %103

103:                                              ; preds = %100
  %104 = getelementptr inbounds %struct.bAction, ptr %101, i64 0, i32 1
  %105 = load ptr, ptr %104, align 8, !tbaa !100
  %106 = icmp eq ptr %105, null
  br i1 %106, label %120, label %107

107:                                              ; preds = %103, %118
  %108 = phi ptr [ %109, %118 ], [ %105, %103 ]
  %109 = load ptr, ptr %108, align 8, !tbaa !102
  %110 = getelementptr inbounds %struct.FCurve, ptr %108, i64 0, i32 12
  %111 = load ptr, ptr %110, align 8, !tbaa !104
  %112 = icmp eq ptr %111, null
  br i1 %112, label %118, label %113

113:                                              ; preds = %107
  %114 = tail call ptr @strstr(ptr noundef nonnull dereferenceable(1) %111, ptr noundef nonnull dereferenceable(1) @.str.11) #22
  %115 = icmp eq ptr %114, null
  br i1 %115, label %118, label %116

116:                                              ; preds = %113
  %117 = load ptr, ptr %98, align 8, !tbaa !98
  tail call void @action_groups_remove_channel(ptr noundef %117, ptr noundef nonnull %108) #21
  tail call void @free_fcurve(ptr noundef nonnull %108) #21
  br label %118

118:                                              ; preds = %116, %113, %107
  %119 = icmp eq ptr %109, null
  br i1 %119, label %120, label %107, !llvm.loop !105

120:                                              ; preds = %118, %103, %100, %97, %86
  %121 = load ptr, ptr %59, align 8, !tbaa !40
  %122 = icmp eq ptr %121, null
  br i1 %122, label %131, label %123

123:                                              ; preds = %120, %123
  %124 = phi ptr [ %129, %123 ], [ %121, %120 ]
  %125 = phi ptr [ %126, %123 ], [ %58, %120 ]
  %126 = load ptr, ptr %125, align 8, !tbaa !40
  %127 = getelementptr inbounds %struct.SceneRenderLayer, ptr %126, i64 0, i32 13
  %128 = getelementptr inbounds %struct.SceneRenderLayer, ptr %124, i64 0, i32 13
  tail call void @BKE_freestyle_config_copy(ptr noundef nonnull %127, ptr noundef nonnull %128) #21
  %129 = load ptr, ptr %124, align 8, !tbaa !40
  %130 = icmp eq ptr %129, null
  br i1 %130, label %131, label %123, !llvm.loop !106

131:                                              ; preds = %123, %120, %28
  %132 = phi ptr [ %8, %28 ], [ %33, %120 ], [ %33, %123 ]
  %133 = load ptr, ptr @MEM_dupallocN, align 8, !tbaa !40
  %134 = getelementptr inbounds %struct.Scene, ptr %0, i64 0, i32 20
  %135 = load ptr, ptr %134, align 8, !tbaa !83
  %136 = tail call ptr %133(ptr noundef %135) #21
  %137 = getelementptr inbounds %struct.Scene, ptr %132, i64 0, i32 20
  store ptr %136, ptr %137, align 8, !tbaa !83
  %138 = icmp eq ptr %136, null
  br i1 %138, label %167, label %139

139:                                              ; preds = %131
  %140 = load ptr, ptr %136, align 8, !tbaa !107
  %141 = icmp eq ptr %140, null
  br i1 %141, label %146, label %142

142:                                              ; preds = %139
  %143 = load ptr, ptr @MEM_dupallocN, align 8, !tbaa !40
  %144 = tail call ptr %143(ptr noundef nonnull %140) #21
  store ptr %144, ptr %136, align 8, !tbaa !107
  %145 = getelementptr inbounds %struct.VPaint, ptr %144, i64 0, i32 4
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %145, i8 0, i64 24, i1 false)
  tail call void @BKE_paint_copy(ptr noundef %144, ptr noundef %144) #21
  br label %146

146:                                              ; preds = %142, %139
  %147 = getelementptr inbounds %struct.ToolSettings, ptr %136, i64 0, i32 1
  %148 = load ptr, ptr %147, align 8, !tbaa !114
  %149 = icmp eq ptr %148, null
  br i1 %149, label %154, label %150

150:                                              ; preds = %146
  %151 = load ptr, ptr @MEM_dupallocN, align 8, !tbaa !40
  %152 = tail call ptr %151(ptr noundef nonnull %148) #21
  store ptr %152, ptr %147, align 8, !tbaa !114
  %153 = getelementptr inbounds %struct.VPaint, ptr %152, i64 0, i32 4
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %153, i8 0, i64 24, i1 false)
  tail call void @BKE_paint_copy(ptr noundef %152, ptr noundef %152) #21
  br label %154

154:                                              ; preds = %150, %146
  %155 = getelementptr inbounds %struct.ToolSettings, ptr %136, i64 0, i32 2
  %156 = load ptr, ptr %155, align 8, !tbaa !115
  %157 = icmp eq ptr %156, null
  br i1 %157, label %161, label %158

158:                                              ; preds = %154
  %159 = load ptr, ptr @MEM_dupallocN, align 8, !tbaa !40
  %160 = tail call ptr %159(ptr noundef nonnull %156) #21
  store ptr %160, ptr %155, align 8, !tbaa !115
  tail call void @BKE_paint_copy(ptr noundef %160, ptr noundef %160) #21
  br label %161

161:                                              ; preds = %158, %154
  %162 = getelementptr inbounds %struct.ToolSettings, ptr %136, i64 0, i32 17
  tail call void @BKE_paint_copy(ptr noundef nonnull %162, ptr noundef nonnull %162) #21
  %163 = getelementptr inbounds %struct.ToolSettings, ptr %136, i64 0, i32 17, i32 7
  store ptr null, ptr %163, align 8, !tbaa !116
  %164 = getelementptr inbounds %struct.ToolSettings, ptr %136, i64 0, i32 17, i32 8
  %165 = load ptr, ptr %164, align 8, !tbaa !117
  tail call void @id_us_plus(ptr noundef %165) #21
  %166 = getelementptr inbounds %struct.ToolSettings, ptr %136, i64 0, i32 18, i32 5
  store ptr null, ptr %166, align 8, !tbaa !118
  br label %167

167:                                              ; preds = %161, %131
  %168 = getelementptr inbounds %struct.Scene, ptr %0, i64 0, i32 22, i32 1
  %169 = load ptr, ptr %168, align 8, !tbaa !119
  %170 = icmp eq ptr %169, null
  br i1 %170, label %185, label %171

171:                                              ; preds = %167
  %172 = load ptr, ptr @MEM_dupallocN, align 8, !tbaa !40
  %173 = tail call ptr %172(ptr noundef nonnull %169) #21
  %174 = getelementptr inbounds %struct.Scene, ptr %132, i64 0, i32 22, i32 1
  store ptr %173, ptr %174, align 8, !tbaa !119
  %175 = load ptr, ptr @MEM_dupallocN, align 8, !tbaa !40
  %176 = load ptr, ptr %173, align 8, !tbaa !34
  %177 = tail call ptr %175(ptr noundef %176) #21
  %178 = load ptr, ptr %174, align 8, !tbaa !119
  store ptr %177, ptr %178, align 8, !tbaa !34
  %179 = load ptr, ptr @MEM_dupallocN, align 8, !tbaa !40
  %180 = getelementptr inbounds %struct.AviCodecData, ptr %178, i64 0, i32 1
  %181 = load ptr, ptr %180, align 8, !tbaa !42
  %182 = tail call ptr %179(ptr noundef %181) #21
  %183 = load ptr, ptr %174, align 8, !tbaa !119
  %184 = getelementptr inbounds %struct.AviCodecData, ptr %183, i64 0, i32 1
  store ptr %182, ptr %184, align 8, !tbaa !42
  br label %185

185:                                              ; preds = %171, %167
  %186 = getelementptr inbounds %struct.Scene, ptr %0, i64 0, i32 22, i32 2
  %187 = load ptr, ptr %186, align 8, !tbaa !120
  %188 = icmp eq ptr %187, null
  br i1 %188, label %197, label %189

189:                                              ; preds = %185
  %190 = load ptr, ptr @MEM_dupallocN, align 8, !tbaa !40
  %191 = tail call ptr %190(ptr noundef nonnull %187) #21
  %192 = getelementptr inbounds %struct.Scene, ptr %132, i64 0, i32 22, i32 2
  store ptr %191, ptr %192, align 8, !tbaa !120
  %193 = load ptr, ptr @MEM_dupallocN, align 8, !tbaa !40
  %194 = load ptr, ptr %191, align 8, !tbaa !44
  %195 = tail call ptr %193(ptr noundef %194) #21
  %196 = load ptr, ptr %192, align 8, !tbaa !120
  store ptr %195, ptr %196, align 8, !tbaa !44
  br label %197

197:                                              ; preds = %189, %185
  %198 = getelementptr inbounds %struct.Scene, ptr %0, i64 0, i32 22, i32 4, i32 16
  %199 = load ptr, ptr %198, align 8, !tbaa !121
  %200 = icmp eq ptr %199, null
  br i1 %200, label %204, label %201

201:                                              ; preds = %197
  %202 = tail call ptr @IDP_CopyProperty(ptr noundef nonnull %199) #21
  %203 = getelementptr inbounds %struct.Scene, ptr %132, i64 0, i32 22, i32 4, i32 16
  store ptr %202, ptr %203, align 8, !tbaa !121
  br label %204

204:                                              ; preds = %201, %197
  %205 = icmp eq i32 %1, 4
  %206 = add i32 %1, -3
  %207 = icmp ult i32 %206, 2
  br i1 %207, label %208, label %217

208:                                              ; preds = %204
  %209 = getelementptr inbounds %struct.Scene, ptr %132, i64 0, i32 2
  %210 = load ptr, ptr %209, align 8, !tbaa !122
  %211 = icmp eq ptr %210, null
  br i1 %211, label %217, label %212

212:                                              ; preds = %208
  %213 = getelementptr inbounds %struct.ID, ptr %210, i64 0, i32 2
  %214 = load ptr, ptr %213, align 8, !tbaa !123
  %215 = icmp eq ptr %214, null
  br i1 %215, label %217, label %216

216:                                              ; preds = %212
  store ptr %214, ptr %209, align 8, !tbaa !122
  br label %217

217:                                              ; preds = %208, %212, %216, %204
  tail call void @sound_create_scene(ptr noundef %132) #21
  br i1 %205, label %218, label %236

218:                                              ; preds = %217
  %219 = getelementptr inbounds %struct.Scene, ptr %132, i64 0, i32 3
  %220 = load ptr, ptr %219, align 8, !tbaa !84
  %221 = icmp eq ptr %220, null
  br i1 %221, label %225, label %222

222:                                              ; preds = %218
  tail call void @id_us_plus(ptr noundef nonnull %220) #21
  %223 = load ptr, ptr %219, align 8, !tbaa !84
  %224 = tail call ptr @BKE_world_copy(ptr noundef %223) #21
  store ptr %224, ptr %219, align 8, !tbaa !84
  tail call void @BKE_copy_animdata_id_action(ptr noundef %224) #21
  br label %225

225:                                              ; preds = %222, %218
  %226 = getelementptr inbounds %struct.Scene, ptr %0, i64 0, i32 19
  %227 = load ptr, ptr %226, align 8, !tbaa !87
  %228 = icmp eq ptr %227, null
  br i1 %228, label %236, label %229

229:                                              ; preds = %225
  %230 = load ptr, ptr @MEM_callocN, align 8, !tbaa !40
  %231 = tail call ptr %230(i64 noundef 2128, ptr noundef nonnull @.str.3) #21
  %232 = getelementptr inbounds %struct.Scene, ptr %132, i64 0, i32 19
  store ptr %231, ptr %232, align 8, !tbaa !87
  %233 = getelementptr inbounds %struct.Editing, ptr %231, i64 0, i32 1
  store ptr %233, ptr %231, align 8, !tbaa !126
  %234 = load ptr, ptr %226, align 8, !tbaa !87
  %235 = getelementptr inbounds %struct.Editing, ptr %234, i64 0, i32 1
  tail call void @BKE_sequence_base_dupli_recursive(ptr noundef %0, ptr noundef %132, ptr noundef nonnull %233, ptr noundef nonnull %235, i32 noundef 8) #21
  br label %236

236:                                              ; preds = %225, %229, %217
  ret ptr %132
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind uwtable
define dso_local ptr @BKE_scene_add(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = tail call ptr @BKE_libblock_alloc(ptr noundef %0, i16 noundef signext 17235, ptr noundef %1) #21
  %4 = getelementptr inbounds %struct.Scene, ptr %3, i64 0, i32 13
  store i32 1, ptr %4, align 4, !tbaa !128
  %5 = getelementptr inbounds %struct.Scene, ptr %3, i64 0, i32 12
  store i32 1, ptr %5, align 8, !tbaa !129
  %6 = getelementptr inbounds %struct.Scene, ptr %3, i64 0, i32 22
  %7 = getelementptr inbounds %struct.Scene, ptr %3, i64 0, i32 22, i32 47
  store i32 2162711, ptr %7, align 8, !tbaa !130
  %8 = getelementptr inbounds %struct.Scene, ptr %3, i64 0, i32 22, i32 5
  store i32 1, ptr %8, align 8, !tbaa !131
  %9 = getelementptr inbounds %struct.Scene, ptr %3, i64 0, i32 22, i32 6
  store i32 1, ptr %9, align 4, !tbaa !132
  %10 = getelementptr inbounds %struct.Scene, ptr %3, i64 0, i32 22, i32 7
  store i32 250, ptr %10, align 8, !tbaa !133
  %11 = getelementptr inbounds %struct.Scene, ptr %3, i64 0, i32 22, i32 26
  store i32 1, ptr %11, align 4, !tbaa !134
  %12 = getelementptr inbounds %struct.Scene, ptr %3, i64 0, i32 22, i32 33
  store i32 1920, ptr %12, align 4, !tbaa !135
  %13 = getelementptr inbounds %struct.Scene, ptr %3, i64 0, i32 22, i32 34
  store i32 1080, ptr %13, align 8, !tbaa !136
  %14 = getelementptr inbounds %struct.Scene, ptr %3, i64 0, i32 22, i32 63
  store float 1.000000e+00, ptr %14, align 4, !tbaa !137
  %15 = getelementptr inbounds %struct.Scene, ptr %3, i64 0, i32 22, i32 64
  store float 1.000000e+00, ptr %15, align 8, !tbaa !138
  %16 = getelementptr inbounds %struct.Scene, ptr %3, i64 0, i32 22, i32 37
  store i32 256, ptr %16, align 8, !tbaa !139
  %17 = getelementptr inbounds %struct.Scene, ptr %3, i64 0, i32 22, i32 38
  store i32 256, ptr %17, align 4, !tbaa !140
  %18 = getelementptr inbounds %struct.Scene, ptr %3, i64 0, i32 22, i32 62
  store i16 1, ptr %18, align 2, !tbaa !141
  %19 = getelementptr inbounds %struct.Scene, ptr %3, i64 0, i32 22, i32 29
  store i16 6, ptr %19, align 4, !tbaa !142
  %20 = getelementptr inbounds %struct.Scene, ptr %3, i64 0, i32 22, i32 30
  store i16 50, ptr %20, align 2, !tbaa !143
  %21 = getelementptr inbounds %struct.Scene, ptr %3, i64 0, i32 22, i32 0, i32 2
  store i8 32, ptr %21, align 2, !tbaa !144
  store i8 17, ptr %6, align 8, !tbaa !145
  %22 = getelementptr inbounds %struct.Scene, ptr %3, i64 0, i32 22, i32 0, i32 1
  store i8 2, ptr %22, align 1, !tbaa !146
  %23 = getelementptr inbounds %struct.Scene, ptr %3, i64 0, i32 22, i32 0, i32 4
  store i8 90, ptr %23, align 4, !tbaa !147
  %24 = getelementptr inbounds %struct.Scene, ptr %3, i64 0, i32 22, i32 0, i32 5
  store i8 15, ptr %24, align 1, !tbaa !148
  %25 = getelementptr inbounds %struct.Scene, ptr %3, i64 0, i32 22, i32 43
  store i16 1, ptr %25, align 8, !tbaa !149
  %26 = getelementptr inbounds %struct.Scene, ptr %3, i64 0, i32 22, i32 12
  store i32 100, ptr %26, align 4, !tbaa !150
  %27 = getelementptr inbounds %struct.Scene, ptr %3, i64 0, i32 22, i32 11
  store i32 100, ptr %27, align 8, !tbaa !151
  %28 = getelementptr inbounds %struct.Scene, ptr %3, i64 0, i32 22, i32 15
  store float 1.000000e+00, ptr %28, align 4, !tbaa !152
  %29 = getelementptr inbounds %struct.Scene, ptr %3, i64 0, i32 22, i32 16
  store float 5.000000e-01, ptr %29, align 8, !tbaa !153
  %30 = getelementptr inbounds %struct.Scene, ptr %3, i64 0, i32 22, i32 55
  store i16 24, ptr %30, align 4, !tbaa !154
  %31 = getelementptr inbounds %struct.Scene, ptr %3, i64 0, i32 22, i32 65
  store float 1.000000e+00, ptr %31, align 4, !tbaa !155
  %32 = getelementptr inbounds %struct.Scene, ptr %3, i64 0, i32 22, i32 56
  store i16 10, ptr %32, align 2, !tbaa !156
  %33 = getelementptr inbounds %struct.Scene, ptr %3, i64 0, i32 22, i32 51
  store i16 128, ptr %33, align 4, !tbaa !157
  %34 = getelementptr inbounds %struct.Scene, ptr %3, i64 0, i32 22, i32 67
  %35 = load i32, ptr %34, align 4, !tbaa !158
  %36 = or i32 %35, 1
  store i32 %36, ptr %34, align 4, !tbaa !158
  %37 = getelementptr inbounds %struct.Scene, ptr %3, i64 0, i32 22, i32 66
  store float 1.000000e+00, ptr %37, align 8, !tbaa !159
  %38 = getelementptr inbounds %struct.Scene, ptr %3, i64 0, i32 22, i32 68
  store float 1.000000e+00, ptr %38, align 8, !tbaa !160
  %39 = getelementptr inbounds %struct.Scene, ptr %3, i64 0, i32 22, i32 69
  store float 0.000000e+00, ptr %39, align 4, !tbaa !161
  %40 = getelementptr inbounds %struct.Scene, ptr %3, i64 0, i32 22, i32 70
  store float 1.000000e+00, ptr %40, align 8, !tbaa !162
  %41 = getelementptr inbounds %struct.Scene, ptr %3, i64 0, i32 22, i32 74
  store i16 1, ptr %41, align 4, !tbaa !163
  %42 = getelementptr inbounds %struct.Scene, ptr %3, i64 0, i32 22, i32 73
  store i16 16, ptr %42, align 2, !tbaa !164
  %43 = getelementptr inbounds %struct.Scene, ptr %3, i64 0, i32 22, i32 72
  store i16 5, ptr %43, align 8, !tbaa !165
  %44 = getelementptr inbounds %struct.Scene, ptr %3, i64 0, i32 22, i32 75
  store i16 1, ptr %44, align 2, !tbaa !166
  %45 = getelementptr inbounds %struct.Scene, ptr %3, i64 0, i32 22, i32 76
  store i16 3, ptr %45, align 8, !tbaa !167
  %46 = getelementptr inbounds %struct.Scene, ptr %3, i64 0, i32 22, i32 80
  store i16 256, ptr %46, align 4, !tbaa !168
  %47 = getelementptr inbounds %struct.Scene, ptr %3, i64 0, i32 22, i32 79
  store float 0x3F50624DE0000000, ptr %47, align 8, !tbaa !169
  %48 = getelementptr inbounds %struct.Scene, ptr %3, i64 0, i32 22, i32 116
  %49 = getelementptr inbounds %struct.Scene, ptr %3, i64 0, i32 22, i32 116, i32 5
  store i16 1, ptr %49, align 2, !tbaa !170
  %50 = getelementptr inbounds %struct.Scene, ptr %3, i64 0, i32 22, i32 116, i32 2
  store i16 512, ptr %50, align 8, !tbaa !171
  %51 = getelementptr inbounds %struct.Scene, ptr %3, i64 0, i32 22, i32 116, i32 3
  store i16 512, ptr %51, align 2, !tbaa !172
  %52 = getelementptr inbounds %struct.Scene, ptr %3, i64 0, i32 22, i32 116, i32 4
  store i16 16, ptr %52, align 4, !tbaa !173
  %53 = getelementptr inbounds %struct.Scene, ptr %3, i64 0, i32 22, i32 116, i32 9
  store i8 3, ptr %53, align 1, !tbaa !174
  %54 = getelementptr inbounds %struct.Scene, ptr %3, i64 0, i32 22, i32 116, i32 8
  store i8 0, ptr %54, align 8, !tbaa !53
  %55 = getelementptr inbounds %struct.Scene, ptr %3, i64 0, i32 22, i32 116, i32 8, i64 1
  store i8 1, ptr %55, align 1, !tbaa !53
  %56 = getelementptr inbounds %struct.Scene, ptr %3, i64 0, i32 22, i32 116, i32 8, i64 2
  store i8 2, ptr %56, align 2, !tbaa !53
  %57 = getelementptr inbounds %struct.Scene, ptr %3, i64 0, i32 22, i32 116, i32 1
  %58 = tail call ptr @BLI_strncpy(ptr noundef nonnull %57, ptr noundef nonnull getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 7), i64 noundef 1024) #21
  %59 = getelementptr inbounds %struct.Scene, ptr %3, i64 0, i32 22, i32 116, i32 0, i32 2
  store i8 32, ptr %59, align 2, !tbaa !175
  store i8 17, ptr %48, align 8, !tbaa !176
  %60 = getelementptr inbounds %struct.Scene, ptr %3, i64 0, i32 22, i32 116, i32 0, i32 1
  store i8 2, ptr %60, align 1, !tbaa !177
  %61 = getelementptr inbounds %struct.Scene, ptr %3, i64 0, i32 22, i32 116, i32 0, i32 4
  store i8 90, ptr %61, align 4, !tbaa !178
  %62 = getelementptr inbounds %struct.Scene, ptr %3, i64 0, i32 22, i32 116, i32 0, i32 5
  store i8 15, ptr %62, align 1, !tbaa !179
  %63 = getelementptr inbounds %struct.Scene, ptr %3, i64 0, i32 22, i32 46
  store i32 81, ptr %63, align 4, !tbaa !180
  %64 = getelementptr inbounds %struct.Scene, ptr %3, i64 0, i32 22, i32 85
  store i32 1311, ptr %64, align 8, !tbaa !181
  %65 = getelementptr inbounds %struct.Scene, ptr %3, i64 0, i32 22, i32 86
  store i16 12, ptr %65, align 4, !tbaa !182
  %66 = getelementptr inbounds %struct.Scene, ptr %3, i64 0, i32 22, i32 89
  %67 = getelementptr inbounds %struct.Scene, ptr %3, i64 0, i32 22, i32 89, i64 2
  store float 0x3FE99999A0000000, ptr %67, align 8, !tbaa !55
  %68 = getelementptr inbounds %struct.Scene, ptr %3, i64 0, i32 22, i32 89, i64 1
  store float 0x3FE99999A0000000, ptr %68, align 4, !tbaa !55
  store float 0x3FE99999A0000000, ptr %66, align 8, !tbaa !55
  %69 = getelementptr inbounds %struct.Scene, ptr %3, i64 0, i32 22, i32 89, i64 3
  store float 1.000000e+00, ptr %69, align 4, !tbaa !55
  %70 = getelementptr inbounds %struct.Scene, ptr %3, i64 0, i32 22, i32 90
  %71 = getelementptr inbounds %struct.Scene, ptr %3, i64 0, i32 22, i32 90, i64 2
  store float 0.000000e+00, ptr %71, align 8, !tbaa !55
  %72 = getelementptr inbounds %struct.Scene, ptr %3, i64 0, i32 22, i32 90, i64 1
  store float 0.000000e+00, ptr %72, align 4, !tbaa !55
  store float 0.000000e+00, ptr %70, align 8, !tbaa !55
  %73 = getelementptr inbounds %struct.Scene, ptr %3, i64 0, i32 22, i32 90, i64 3
  store float 2.500000e-01, ptr %73, align 4, !tbaa !55
  %74 = getelementptr inbounds %struct.Scene, ptr %3, i64 0, i32 22, i32 48
  store i32 2, ptr %74, align 4, !tbaa !183
  %75 = getelementptr inbounds %struct.Scene, ptr %3, i64 0, i32 22, i32 91
  store i8 3, ptr %75, align 8, !tbaa !184
  %76 = getelementptr inbounds %struct.Scene, ptr %3, i64 0, i32 22, i32 92
  store i8 3, ptr %76, align 1, !tbaa !185
  %77 = getelementptr inbounds %struct.Scene, ptr %3, i64 0, i32 22, i32 93
  store i8 1, ptr %77, align 2, !tbaa !186
  %78 = getelementptr inbounds %struct.Scene, ptr %3, i64 0, i32 22, i32 14
  store i16 1, ptr %78, align 2, !tbaa !187
  %79 = getelementptr inbounds %struct.Scene, ptr %3, i64 0, i32 22, i32 96
  store i16 6, ptr %79, align 4, !tbaa !188
  %80 = getelementptr inbounds %struct.Scene, ptr %3, i64 0, i32 22, i32 98
  store float 1.000000e+00, ptr %80, align 8, !tbaa !189
  %81 = getelementptr inbounds %struct.Scene, ptr %3, i64 0, i32 22, i32 97
  store i16 16, ptr %81, align 2, !tbaa !190
  %82 = getelementptr inbounds %struct.Scene, ptr %3, i64 0, i32 22, i32 99
  store float 1.000000e+00, ptr %82, align 4, !tbaa !191
  %83 = getelementptr inbounds %struct.Scene, ptr %3, i64 0, i32 22, i32 58
  store float 0.000000e+00, ptr %83, align 8, !tbaa !192
  %84 = getelementptr inbounds %struct.Scene, ptr %3, i64 0, i32 22, i32 58, i32 2
  store float 0.000000e+00, ptr %84, align 8, !tbaa !193
  %85 = getelementptr inbounds %struct.Scene, ptr %3, i64 0, i32 22, i32 58, i32 1
  store float 1.000000e+00, ptr %85, align 4, !tbaa !194
  %86 = getelementptr inbounds %struct.Scene, ptr %3, i64 0, i32 22, i32 58, i32 3
  store float 1.000000e+00, ptr %86, align 4, !tbaa !195
  %87 = getelementptr inbounds %struct.Scene, ptr %3, i64 0, i32 22, i32 117
  store i32 64, ptr %87, align 8, !tbaa !196
  %88 = getelementptr inbounds %struct.Scene, ptr %3, i64 0, i32 22, i32 113
  store i32 1, ptr %88, align 8, !tbaa !197
  %89 = getelementptr inbounds %struct.Scene, ptr %3, i64 0, i32 22, i32 114
  store float 1.000000e+00, ptr %89, align 4, !tbaa !198
  %90 = load ptr, ptr @MEM_callocN, align 8, !tbaa !40
  %91 = tail call ptr %90(i64 noundef 648, ptr noundef nonnull @.str.4) #21
  %92 = getelementptr inbounds %struct.Scene, ptr %3, i64 0, i32 20
  store ptr %91, ptr %92, align 8, !tbaa !83
  %93 = getelementptr inbounds %struct.ToolSettings, ptr %91, i64 0, i32 5
  store float 0x3F50624DE0000000, ptr %93, align 4, !tbaa !199
  %94 = getelementptr inbounds %struct.ToolSettings, ptr %91, i64 0, i32 13
  store float 0x3F50624DE0000000, ptr %94, align 4, !tbaa !200
  %95 = getelementptr inbounds %struct.ToolSettings, ptr %91, i64 0, i32 9
  store i8 1, ptr %95, align 8, !tbaa !201
  %96 = getelementptr inbounds %struct.ToolSettings, ptr %91, i64 0, i32 20
  store float 0x3F847AE140000000, ptr %96, align 4, !tbaa !202
  %97 = getelementptr inbounds %struct.ToolSettings, ptr %91, i64 0, i32 8
  store i16 1, ptr %97, align 2, !tbaa !203
  %98 = getelementptr inbounds %struct.ToolSettings, ptr %91, i64 0, i32 12
  store i8 1, ptr %98, align 1, !tbaa !204
  %99 = getelementptr inbounds %struct.ToolSettings, ptr %91, i64 0, i32 6
  store float 0x3FB99999A0000000, ptr %99, align 8, !tbaa !205
  %100 = load i16, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 91), align 8, !tbaa !206
  %101 = getelementptr inbounds %struct.ToolSettings, ptr %91, i64 0, i32 21
  store i16 %100, ptr %101, align 8, !tbaa !210
  %102 = getelementptr inbounds %struct.ToolSettings, ptr %91, i64 0, i32 52
  store i8 8, ptr %102, align 8, !tbaa !211
  %103 = getelementptr inbounds %struct.ToolSettings, ptr %91, i64 0, i32 25
  store i16 100, ptr %103, align 2, !tbaa !212
  %104 = getelementptr inbounds %struct.ToolSettings, ptr %91, i64 0, i32 26
  store float 0x3F847AE140000000, ptr %104, align 8, !tbaa !213
  %105 = getelementptr inbounds %struct.ToolSettings, ptr %91, i64 0, i32 27
  store float 0x3F847AE140000000, ptr %105, align 4, !tbaa !214
  %106 = getelementptr inbounds %struct.ToolSettings, ptr %91, i64 0, i32 30
  store float 4.500000e+01, ptr %106, align 8, !tbaa !215
  %107 = getelementptr inbounds %struct.ToolSettings, ptr %91, i64 0, i32 28
  store float 0x3FF4CCCCC0000000, ptr %107, align 8, !tbaa !216
  %108 = getelementptr inbounds %struct.ToolSettings, ptr %91, i64 0, i32 29
  store float 1.500000e+00, ptr %108, align 4, !tbaa !217
  %109 = getelementptr inbounds %struct.ToolSettings, ptr %91, i64 0, i32 31
  store float 0x3FEF5C2900000000, ptr %109, align 4, !tbaa !218
  %110 = getelementptr inbounds %struct.ToolSettings, ptr %91, i64 0, i32 32
  store float 0x3FB99999A0000000, ptr %110, align 8, !tbaa !219
  %111 = getelementptr inbounds %struct.ToolSettings, ptr %91, i64 0, i32 37
  store i8 0, ptr %111, align 2, !tbaa !220
  %112 = getelementptr inbounds %struct.ToolSettings, ptr %91, i64 0, i32 38
  store i8 1, ptr %112, align 1, !tbaa !221
  %113 = getelementptr inbounds %struct.ToolSettings, ptr %91, i64 0, i32 36
  store i16 707, ptr %113, align 8, !tbaa !222
  %114 = getelementptr inbounds %struct.ToolSettings, ptr %91, i64 0, i32 39
  store i8 2, ptr %114, align 4, !tbaa !53
  %115 = load ptr, ptr %92, align 8, !tbaa !83
  %116 = getelementptr inbounds %struct.ToolSettings, ptr %115, i64 0, i32 39, i64 1
  store i8 0, ptr %116, align 1, !tbaa !53
  %117 = load ptr, ptr %92, align 8, !tbaa !83
  %118 = getelementptr inbounds %struct.ToolSettings, ptr %117, i64 0, i32 39, i64 2
  store i8 1, ptr %118, align 2, !tbaa !53
  %119 = load ptr, ptr %92, align 8, !tbaa !83
  %120 = getelementptr inbounds %struct.ToolSettings, ptr %119, i64 0, i32 74, i32 2
  store i8 5, ptr %120, align 1, !tbaa !223
  %121 = getelementptr inbounds %struct.ToolSettings, ptr %119, i64 0, i32 74, i32 3
  store float 0.000000e+00, ptr %121, align 4, !tbaa !224
  %122 = getelementptr inbounds %struct.ToolSettings, ptr %119, i64 0, i32 74, i32 4
  store float 0x3FE921FB60000000, ptr %122, align 8, !tbaa !225
  %123 = getelementptr inbounds %struct.ToolSettings, ptr %119, i64 0, i32 74, i32 6
  store float 0x3FB99999A0000000, ptr %123, align 8, !tbaa !226
  %124 = getelementptr inbounds %struct.ToolSettings, ptr %119, i64 0, i32 74, i32 7
  store i8 1, ptr %124, align 4, !tbaa !227
  %125 = getelementptr inbounds %struct.ToolSettings, ptr %119, i64 0, i32 74, i32 9
  store float 0x3FB6571840000000, ptr %125, align 8, !tbaa !228
  %126 = getelementptr inbounds %struct.ToolSettings, ptr %119, i64 0, i32 74, i32 10
  store float 0x3FE921FB60000000, ptr %126, align 4, !tbaa !229
  %127 = getelementptr inbounds %struct.ToolSettings, ptr %119, i64 0, i32 74, i32 11
  store float 0x3FF921FB60000000, ptr %127, align 8, !tbaa !230
  %128 = getelementptr inbounds %struct.ToolSettings, ptr %119, i64 0, i32 74, i32 12
  store float 0x400921FB60000000, ptr %128, align 4, !tbaa !231
  %129 = getelementptr inbounds %struct.ToolSettings, ptr %119, i64 0, i32 19
  store float 1.000000e+00, ptr %129, align 8, !tbaa !232
  %130 = getelementptr inbounds %struct.ToolSettings, ptr %119, i64 0, i32 17, i32 0, i32 4
  %131 = load i32, ptr %130, align 4, !tbaa !233
  %132 = or i32 %131, 1
  store i32 %132, ptr %130, align 4, !tbaa !233
  %133 = getelementptr inbounds %struct.ToolSettings, ptr %119, i64 0, i32 17, i32 4
  store i16 80, ptr %133, align 2, !tbaa !234
  %134 = getelementptr inbounds %struct.ToolSettings, ptr %119, i64 0, i32 17, i32 3
  store i16 2, ptr %134, align 4, !tbaa !235
  %135 = getelementptr inbounds %struct.Scene, ptr %3, i64 0, i32 40
  store float 0.000000e+00, ptr %135, align 8, !tbaa !55
  %136 = getelementptr inbounds %struct.Scene, ptr %3, i64 0, i32 40, i32 0, i64 1
  store float 0.000000e+00, ptr %136, align 4, !tbaa !55
  %137 = getelementptr inbounds %struct.Scene, ptr %3, i64 0, i32 40, i32 0, i64 2
  store float 0xC0239EB860000000, ptr %137, align 8, !tbaa !55
  %138 = getelementptr inbounds %struct.Scene, ptr %3, i64 0, i32 40, i32 1
  store i32 1, ptr %138, align 4, !tbaa !236
  %139 = getelementptr inbounds %struct.Scene, ptr %3, i64 0, i32 38
  store float 1.000000e+00, ptr %139, align 8, !tbaa !237
  %140 = getelementptr inbounds %struct.ToolSettings, ptr %119, i64 0, i32 18
  store i16 263, ptr %140, align 8, !tbaa !238
  %141 = getelementptr inbounds %struct.ToolSettings, ptr %119, i64 0, i32 18, i32 6
  store float 2.500000e-01, ptr %141, align 8, !tbaa !239
  %142 = getelementptr inbounds %struct.ToolSettings, ptr %119, i64 0, i32 18, i32 1
  store i16 5, ptr %142, align 2, !tbaa !240
  %143 = getelementptr inbounds %struct.ToolSettings, ptr %119, i64 0, i32 18, i32 2
  store i16 5, ptr %143, align 4, !tbaa !241
  %144 = getelementptr inbounds %struct.ToolSettings, ptr %119, i64 0, i32 18, i32 3
  store i16 -1, ptr %144, align 2, !tbaa !242
  %145 = getelementptr inbounds %struct.ToolSettings, ptr %119, i64 0, i32 18, i32 10
  store i32 2, ptr %145, align 8, !tbaa !243
  %146 = getelementptr inbounds %struct.ToolSettings, ptr %119, i64 0, i32 18, i32 11
  store i32 2, ptr %146, align 4, !tbaa !244
  %147 = getelementptr inbounds %struct.ToolSettings, ptr %119, i64 0, i32 18, i32 8
  store i32 1, ptr %147, align 8, !tbaa !245
  br label %148

148:                                              ; preds = %2, %148
  %149 = phi i64 [ 0, %2 ], [ %154, %148 ]
  %150 = getelementptr inbounds %struct.ToolSettings, ptr %119, i64 0, i32 18, i32 4, i64 %149
  %151 = getelementptr inbounds %struct.ToolSettings, ptr %119, i64 0, i32 18, i32 4, i64 %149, i32 5
  store float 5.000000e-01, ptr %151, align 4, !tbaa !246
  store i16 50, ptr %150, align 8, !tbaa !248
  %152 = getelementptr inbounds %struct.ToolSettings, ptr %119, i64 0, i32 18, i32 4, i64 %149, i32 1
  store i16 10, ptr %152, align 2, !tbaa !249
  %153 = getelementptr inbounds %struct.ToolSettings, ptr %119, i64 0, i32 18, i32 4, i64 %149, i32 3
  store i16 10, ptr %153, align 2, !tbaa !250
  %154 = add nuw nsw i64 %149, 1
  %155 = icmp eq i64 %154, 6
  br i1 %155, label %156, label %148, !llvm.loop !251

156:                                              ; preds = %148
  %157 = getelementptr inbounds %struct.ToolSettings, ptr %119, i64 0, i32 18, i32 4, i64 1, i32 5
  store float 1.000000e+02, ptr %157, align 4, !tbaa !246
  %158 = getelementptr inbounds %struct.Scene, ptr %3, i64 0, i32 22, i32 4, i32 5
  store i32 44100, ptr %158, align 4, !tbaa !252
  %159 = getelementptr inbounds %struct.Scene, ptr %3, i64 0, i32 22, i32 4, i32 8
  store float 1.000000e+00, ptr %159, align 8, !tbaa !253
  %160 = getelementptr inbounds %struct.Scene, ptr %3, i64 0, i32 22, i32 4, i32 4
  store i32 192, ptr %160, align 8, !tbaa !254
  %161 = getelementptr inbounds %struct.Scene, ptr %3, i64 0, i32 22, i32 4, i32 6
  store i32 2, ptr %161, align 8, !tbaa !255
  %162 = getelementptr inbounds %struct.Scene, ptr %3, i64 0, i32 22, i32 115
  %163 = load ptr, ptr @RE_engine_id_BLENDER_RENDER, align 8, !tbaa !40
  %164 = tail call ptr @BLI_strncpy(ptr noundef nonnull %162, ptr noundef %163, i64 noundef 32) #21
  %165 = getelementptr inbounds %struct.Scene, ptr %3, i64 0, i32 23, i32 4
  store i32 2, ptr %165, align 8, !tbaa !256
  %166 = getelementptr inbounds %struct.Scene, ptr %3, i64 0, i32 23, i32 3
  store float 1.000000e+00, ptr %166, align 4, !tbaa !257
  %167 = getelementptr inbounds %struct.Scene, ptr %3, i64 0, i32 23, i32 2
  store float 0x407574CCC0000000, ptr %167, align 8, !tbaa !258
  %168 = getelementptr inbounds %struct.Scene, ptr %3, i64 0, i32 23, i32 7
  store float 1.000000e+00, ptr %168, align 8, !tbaa !259
  %169 = getelementptr inbounds %struct.Scene, ptr %3, i64 0, i32 22, i32 84
  %170 = tail call ptr @BLI_strncpy(ptr noundef nonnull %169, ptr noundef nonnull getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 7), i64 noundef 1024) #21
  %171 = getelementptr inbounds %struct.Scene, ptr %3, i64 0, i32 22, i32 57
  tail call void @BLI_rctf_init(ptr noundef nonnull %171, float noundef 0x3FB99999A0000000, float noundef 0x3FECCCCCC0000000, float noundef 0x3FB99999A0000000, float noundef 0x3FECCCCCC0000000) #21
  %172 = getelementptr inbounds %struct.Scene, ptr %3, i64 0, i32 22, i32 54
  store i16 8, ptr %172, align 2, !tbaa !260
  %173 = load ptr, ptr @MEM_callocN, align 8, !tbaa !40
  %174 = tail call ptr %173(i64 noundef 184, ptr noundef nonnull @.str.9) #21
  %175 = getelementptr inbounds %struct.SceneRenderLayer, ptr %174, i64 0, i32 2
  %176 = tail call ptr @BLI_strncpy(ptr noundef nonnull %175, ptr noundef nonnull @.str.8, i64 noundef 64) #21
  %177 = getelementptr inbounds %struct.Scene, ptr %3, i64 0, i32 22, i32 60
  tail call void @BLI_uniquename(ptr noundef nonnull %177, ptr noundef %174, ptr noundef nonnull @.str.8, i8 noundef zeroext 46, i32 noundef 16, i32 noundef 64) #21
  tail call void @BLI_addtail(ptr noundef nonnull %177, ptr noundef %174) #21
  %178 = getelementptr inbounds %struct.SceneRenderLayer, ptr %174, i64 0, i32 5
  store i32 1048575, ptr %178, align 8, !tbaa !261
  %179 = getelementptr inbounds %struct.SceneRenderLayer, ptr %174, i64 0, i32 8
  store i32 32767, ptr %179, align 4, !tbaa !264
  %180 = getelementptr inbounds %struct.SceneRenderLayer, ptr %174, i64 0, i32 9
  store i32 3, ptr %180, align 8, !tbaa !265
  %181 = getelementptr inbounds %struct.SceneRenderLayer, ptr %174, i64 0, i32 12
  store float 5.000000e-01, ptr %181, align 4, !tbaa !266
  %182 = getelementptr inbounds %struct.SceneRenderLayer, ptr %174, i64 0, i32 13
  tail call void @BKE_freestyle_config_init(ptr noundef nonnull %182) #21
  %183 = getelementptr inbounds %struct.Scene, ptr %3, i64 0, i32 37, i32 12
  store i16 1, ptr %183, align 8, !tbaa !267
  %184 = getelementptr inbounds %struct.Scene, ptr %3, i64 0, i32 37, i32 13
  store i16 5, ptr %184, align 2, !tbaa !268
  %185 = getelementptr inbounds %struct.Scene, ptr %3, i64 0, i32 37, i32 14
  store float 0x3FB99999A0000000, ptr %185, align 4, !tbaa !269
  %186 = getelementptr inbounds %struct.Scene, ptr %3, i64 0, i32 37, i32 11
  %187 = getelementptr inbounds %struct.Scene, ptr %3, i64 0, i32 37, i32 11, i32 2
  store i16 180, ptr %187, align 4, !tbaa !270
  %188 = getelementptr inbounds %struct.Scene, ptr %3, i64 0, i32 37, i32 11, i32 1
  store i16 1, ptr %188, align 2, !tbaa !271
  store i16 4, ptr %186, align 8, !tbaa !272
  %189 = getelementptr inbounds %struct.Scene, ptr %3, i64 0, i32 37, i32 11, i32 4
  store float 1.000000e+00, ptr %189, align 8, !tbaa !273
  %190 = getelementptr inbounds %struct.Scene, ptr %3, i64 0, i32 37, i32 11, i32 3
  store i16 0, ptr %190, align 2, !tbaa !274
  %191 = getelementptr inbounds %struct.Scene, ptr %3, i64 0, i32 37, i32 2
  store i16 640, ptr %191, align 2, !tbaa !275
  %192 = getelementptr inbounds %struct.Scene, ptr %3, i64 0, i32 37, i32 3
  store i16 480, ptr %192, align 4, !tbaa !276
  %193 = getelementptr inbounds %struct.Scene, ptr %3, i64 0, i32 37, i32 4
  store i16 60, ptr %193, align 2, !tbaa !277
  %194 = getelementptr inbounds %struct.Scene, ptr %3, i64 0, i32 37, i32 5
  store i16 32, ptr %194, align 8, !tbaa !278
  %195 = getelementptr inbounds %struct.Scene, ptr %3, i64 0, i32 37, i32 16
  store float 0x40239999A0000000, ptr %195, align 8, !tbaa !279
  %196 = getelementptr inbounds %struct.Scene, ptr %3, i64 0, i32 37, i32 22
  store i16 5, ptr %196, align 2, !tbaa !280
  %197 = getelementptr inbounds %struct.Scene, ptr %3, i64 0, i32 37, i32 19
  store i16 32, ptr %197, align 4, !tbaa !281
  %198 = getelementptr inbounds %struct.Scene, ptr %3, i64 0, i32 37, i32 21
  store i16 128, ptr %198, align 8, !tbaa !282
  %199 = getelementptr inbounds %struct.Scene, ptr %3, i64 0, i32 37, i32 25
  store i16 60, ptr %199, align 8, !tbaa !283
  %200 = getelementptr inbounds %struct.Scene, ptr %3, i64 0, i32 37, i32 26
  store i16 5, ptr %200, align 2, !tbaa !284
  %201 = getelementptr inbounds %struct.Scene, ptr %3, i64 0, i32 37, i32 27
  store i16 1, ptr %201, align 4, !tbaa !285
  %202 = getelementptr inbounds %struct.Scene, ptr %3, i64 0, i32 37, i32 28
  store i16 5, ptr %202, align 2, !tbaa !286
  %203 = getelementptr inbounds %struct.Scene, ptr %3, i64 0, i32 37, i32 33
  store float 0x3FE99999A0000000, ptr %203, align 4, !tbaa !287
  %204 = getelementptr inbounds %struct.Scene, ptr %3, i64 0, i32 37, i32 34
  store float 1.000000e+00, ptr %204, align 8, !tbaa !288
  %205 = getelementptr inbounds %struct.Scene, ptr %3, i64 0, i32 37, i32 32
  store float 0.000000e+00, ptr %205, align 8, !tbaa !289
  %206 = getelementptr inbounds %struct.Scene, ptr %3, i64 0, i32 37, i32 18
  store i32 32, ptr %206, align 8, !tbaa !290
  %207 = getelementptr inbounds %struct.Scene, ptr %3, i64 0, i32 37, i32 20
  store i16 1, ptr %207, align 2, !tbaa !291
  %208 = getelementptr inbounds %struct.Scene, ptr %3, i64 0, i32 37, i32 29
  store i16 0, ptr %208, align 8, !tbaa !292
  %209 = getelementptr inbounds %struct.Scene, ptr %3, i64 0, i32 37, i32 31
  store float 2.000000e+00, ptr %209, align 4, !tbaa !293
  %210 = getelementptr inbounds %struct.Scene, ptr %3, i64 0, i32 37, i32 15
  store float 0x3FD3333340000000, ptr %210, align 8, !tbaa !294
  %211 = getelementptr inbounds %struct.Scene, ptr %3, i64 0, i32 37, i32 15, i32 1
  store float 0x3FC99999A0000000, ptr %211, align 4, !tbaa !295
  %212 = getelementptr inbounds %struct.Scene, ptr %3, i64 0, i32 37, i32 15, i32 2
  store float 0x3FF921FB60000000, ptr %212, align 8, !tbaa !296
  %213 = getelementptr inbounds %struct.Scene, ptr %3, i64 0, i32 37, i32 15, i32 3
  store float 0x3FECCCCCC0000000, ptr %213, align 4, !tbaa !297
  %214 = getelementptr inbounds %struct.Scene, ptr %3, i64 0, i32 37, i32 15, i32 4
  store float 2.000000e+00, ptr %214, align 8, !tbaa !298
  %215 = getelementptr inbounds %struct.Scene, ptr %3, i64 0, i32 37, i32 15, i32 5
  store float 0x3FE3333340000000, ptr %215, align 4, !tbaa !299
  %216 = getelementptr inbounds %struct.Scene, ptr %3, i64 0, i32 37, i32 15, i32 6
  store float 1.200000e+01, ptr %216, align 8, !tbaa !300
  %217 = getelementptr inbounds %struct.Scene, ptr %3, i64 0, i32 37, i32 15, i32 7
  store float 0x3FF4CCCCC0000000, ptr %217, align 4, !tbaa !301
  %218 = getelementptr inbounds %struct.Scene, ptr %3, i64 0, i32 37, i32 15, i32 8
  store float 8.000000e+00, ptr %218, align 8, !tbaa !302
  %219 = getelementptr inbounds %struct.Scene, ptr %3, i64 0, i32 37, i32 15, i32 9
  store float 2.000000e+01, ptr %219, align 4, !tbaa !303
  %220 = getelementptr inbounds %struct.Scene, ptr %3, i64 0, i32 37, i32 15, i32 10
  store i32 6, ptr %220, align 8, !tbaa !304
  %221 = getelementptr inbounds %struct.Scene, ptr %3, i64 0, i32 37, i32 15, i32 11
  store float 6.000000e+00, ptr %221, align 4, !tbaa !305
  %222 = getelementptr inbounds %struct.Scene, ptr %3, i64 0, i32 37, i32 15, i32 12
  store float 1.000000e+00, ptr %222, align 8, !tbaa !306
  %223 = getelementptr inbounds %struct.Scene, ptr %3, i64 0, i32 37, i32 23
  store i16 218, ptr %223, align 4, !tbaa !307
  tail call void @sound_create_scene(ptr noundef %3) #21
  %224 = tail call ptr @IMB_colormanagement_role_colorspace_name_get(i32 noundef 3) #21
  %225 = getelementptr inbounds %struct.Scene, ptr %3, i64 0, i32 45
  tail call void @BKE_color_managed_display_settings_init(ptr noundef nonnull %225) #21
  %226 = getelementptr inbounds %struct.Scene, ptr %3, i64 0, i32 44
  tail call void @BKE_color_managed_view_settings_init(ptr noundef nonnull %226) #21
  %227 = getelementptr inbounds %struct.Scene, ptr %3, i64 0, i32 46
  %228 = tail call ptr @BLI_strncpy(ptr noundef nonnull %227, ptr noundef %224, i64 noundef 64) #21
  ret ptr %3
}

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #2

declare ptr @IDP_CopyProperty(ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

declare ptr @BKE_libblock_copy(ptr noundef) local_unnamed_addr #3

declare void @BLI_duplicatelist(ptr noundef, ptr noundef) local_unnamed_addr #3

declare void @BKE_main_id_clear_newpoins(ptr noundef) local_unnamed_addr #3

declare void @id_us_plus(ptr noundef) local_unnamed_addr #3

declare ptr @BKE_rigidbody_world_copy(ptr noundef) local_unnamed_addr #3

declare void @BKE_keyingsets_copy(ptr noundef, ptr noundef) local_unnamed_addr #3

declare ptr @ntreeCopyTree(ptr noundef) local_unnamed_addr #3

declare void @ntreeSwitchID(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

declare void @BKE_color_managed_display_settings_copy(ptr noundef, ptr noundef) local_unnamed_addr #3

declare void @BKE_color_managed_view_settings_copy(ptr noundef, ptr noundef) local_unnamed_addr #3

declare ptr @BLI_strncpy(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #3

declare void @BKE_copy_animdata_id_action(ptr noundef) local_unnamed_addr #3

declare void @BKE_freestyle_config_copy(ptr noundef, ptr noundef) local_unnamed_addr #3

declare void @BKE_paint_copy(ptr noundef, ptr noundef) local_unnamed_addr #3

declare void @sound_create_scene(ptr noundef) local_unnamed_addr #3

declare ptr @BKE_world_copy(ptr noundef) local_unnamed_addr #3

declare void @BKE_sequence_base_dupli_recursive(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define dso_local void @BKE_scene_groups_relink(ptr nocapture noundef readonly %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.Scene, ptr %0, i64 0, i32 47
  %3 = load ptr, ptr %2, align 8, !tbaa !90
  %4 = icmp eq ptr %3, null
  br i1 %4, label %6, label %5

5:                                                ; preds = %1
  tail call void @BKE_rigidbody_world_groups_relink(ptr noundef nonnull %3) #21
  br label %6

6:                                                ; preds = %5, %1
  ret void
}

declare void @BKE_rigidbody_world_groups_relink(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define dso_local void @BKE_scene_free(ptr noundef %0) local_unnamed_addr #0 {
  %2 = load ptr, ptr @G, align 8, !tbaa !47
  tail call void @BKE_sequencer_clear_scene_in_allseqs(ptr noundef %2, ptr noundef %0) #21
  %3 = getelementptr inbounds %struct.Scene, ptr %0, i64 0, i32 5
  %4 = load ptr, ptr %3, align 8, !tbaa !40
  %5 = icmp eq ptr %4, null
  br i1 %5, label %15, label %6

6:                                                ; preds = %1, %6
  %7 = phi ptr [ %13, %6 ], [ %4, %1 ]
  %8 = getelementptr inbounds %struct.Base, ptr %7, i64 0, i32 7
  %9 = load ptr, ptr %8, align 8, !tbaa !92
  %10 = getelementptr inbounds %struct.ID, ptr %9, i64 0, i32 6
  %11 = load i32, ptr %10, align 4, !tbaa !308
  %12 = add nsw i32 %11, -1
  store i32 %12, ptr %10, align 4, !tbaa !308
  %13 = load ptr, ptr %7, align 8, !tbaa !40
  %14 = icmp eq ptr %13, null
  br i1 %14, label %15, label %6, !llvm.loop !309

15:                                               ; preds = %6, %1
  %16 = getelementptr inbounds %struct.Scene, ptr %0, i64 0, i32 39
  %17 = load ptr, ptr %16, align 8, !tbaa !310
  %18 = icmp eq ptr %17, null
  br i1 %18, label %20, label %19

19:                                               ; preds = %15
  store ptr null, ptr %16, align 8, !tbaa !310
  br label %20

20:                                               ; preds = %19, %15
  tail call void @BLI_freelistN(ptr noundef nonnull %3) #21
  tail call void @BKE_sequencer_editing_free(ptr noundef %0) #21
  tail call void @BKE_free_animdata(ptr noundef %0) #21
  %21 = getelementptr inbounds %struct.Scene, ptr %0, i64 0, i32 35
  tail call void @BKE_keyingsets_free(ptr noundef nonnull %21) #21
  %22 = getelementptr inbounds %struct.Scene, ptr %0, i64 0, i32 47
  %23 = load ptr, ptr %22, align 8, !tbaa !90
  %24 = icmp eq ptr %23, null
  br i1 %24, label %26, label %25

25:                                               ; preds = %20
  tail call void @BKE_rigidbody_free_world(ptr noundef nonnull %23) #21
  br label %26

26:                                               ; preds = %25, %20
  %27 = getelementptr inbounds %struct.Scene, ptr %0, i64 0, i32 22, i32 1
  %28 = load ptr, ptr %27, align 8, !tbaa !119
  %29 = icmp eq ptr %28, null
  br i1 %29, label %46, label %30

30:                                               ; preds = %26
  %31 = load ptr, ptr %28, align 8, !tbaa !34
  %32 = icmp eq ptr %31, null
  br i1 %32, label %36, label %33

33:                                               ; preds = %30
  %34 = load ptr, ptr @MEM_freeN, align 8, !tbaa !40
  tail call void %34(ptr noundef nonnull %31) #21
  store ptr null, ptr %28, align 8, !tbaa !34
  %35 = getelementptr inbounds %struct.AviCodecData, ptr %28, i64 0, i32 2
  store i32 0, ptr %35, align 8, !tbaa !41
  br label %36

36:                                               ; preds = %33, %30
  %37 = getelementptr inbounds %struct.AviCodecData, ptr %28, i64 0, i32 1
  %38 = load ptr, ptr %37, align 8, !tbaa !42
  %39 = icmp eq ptr %38, null
  br i1 %39, label %43, label %40

40:                                               ; preds = %36
  %41 = load ptr, ptr @MEM_freeN, align 8, !tbaa !40
  tail call void %41(ptr noundef nonnull %38) #21
  store ptr null, ptr %37, align 8, !tbaa !42
  %42 = getelementptr inbounds %struct.AviCodecData, ptr %28, i64 0, i32 3
  store i32 0, ptr %42, align 4, !tbaa !43
  br label %43

43:                                               ; preds = %36, %40
  %44 = load ptr, ptr @MEM_freeN, align 8, !tbaa !40
  %45 = load ptr, ptr %27, align 8, !tbaa !119
  tail call void %44(ptr noundef %45) #21
  store ptr null, ptr %27, align 8, !tbaa !119
  br label %46

46:                                               ; preds = %43, %26
  %47 = getelementptr inbounds %struct.Scene, ptr %0, i64 0, i32 22, i32 2
  %48 = load ptr, ptr %47, align 8, !tbaa !120
  %49 = icmp eq ptr %48, null
  br i1 %49, label %59, label %50

50:                                               ; preds = %46
  %51 = load ptr, ptr %48, align 8, !tbaa !44
  %52 = icmp eq ptr %51, null
  br i1 %52, label %56, label %53

53:                                               ; preds = %50
  %54 = load ptr, ptr @MEM_freeN, align 8, !tbaa !40
  tail call void %54(ptr noundef nonnull %51) #21
  store ptr null, ptr %48, align 8, !tbaa !44
  %55 = getelementptr inbounds %struct.QuicktimeCodecData, ptr %48, i64 0, i32 2
  store i32 0, ptr %55, align 8, !tbaa !46
  br label %56

56:                                               ; preds = %50, %53
  %57 = load ptr, ptr @MEM_freeN, align 8, !tbaa !40
  %58 = load ptr, ptr %47, align 8, !tbaa !120
  tail call void %57(ptr noundef %58) #21
  store ptr null, ptr %47, align 8, !tbaa !120
  br label %59

59:                                               ; preds = %56, %46
  %60 = getelementptr inbounds %struct.Scene, ptr %0, i64 0, i32 22, i32 4, i32 16
  %61 = load ptr, ptr %60, align 8, !tbaa !121
  %62 = icmp eq ptr %61, null
  br i1 %62, label %66, label %63

63:                                               ; preds = %59
  tail call void @IDP_FreeProperty(ptr noundef nonnull %61) #21
  %64 = load ptr, ptr @MEM_freeN, align 8, !tbaa !40
  %65 = load ptr, ptr %60, align 8, !tbaa !121
  tail call void %64(ptr noundef %65) #21
  store ptr null, ptr %60, align 8, !tbaa !121
  br label %66

66:                                               ; preds = %63, %59
  %67 = getelementptr inbounds %struct.Scene, ptr %0, i64 0, i32 22, i32 60
  %68 = load ptr, ptr %67, align 8, !tbaa !40
  %69 = icmp eq ptr %68, null
  br i1 %69, label %75, label %70

70:                                               ; preds = %66, %70
  %71 = phi ptr [ %73, %70 ], [ %68, %66 ]
  %72 = getelementptr inbounds %struct.SceneRenderLayer, ptr %71, i64 0, i32 13
  tail call void @BKE_freestyle_config_free(ptr noundef nonnull %72) #21
  %73 = load ptr, ptr %71, align 8, !tbaa !40
  %74 = icmp eq ptr %73, null
  br i1 %74, label %75, label %70, !llvm.loop !311

75:                                               ; preds = %70, %66
  %76 = getelementptr inbounds %struct.Scene, ptr %0, i64 0, i32 24
  tail call void @BLI_freelistN(ptr noundef nonnull %76) #21
  %77 = getelementptr inbounds %struct.Scene, ptr %0, i64 0, i32 25
  tail call void @BLI_freelistN(ptr noundef nonnull %77) #21
  tail call void @BLI_freelistN(ptr noundef nonnull %67) #21
  %78 = getelementptr inbounds %struct.Scene, ptr %0, i64 0, i32 20
  %79 = load ptr, ptr %78, align 8, !tbaa !83
  %80 = icmp eq ptr %79, null
  br i1 %80, label %123, label %81

81:                                               ; preds = %75
  %82 = load ptr, ptr %79, align 8, !tbaa !107
  %83 = icmp eq ptr %82, null
  br i1 %83, label %88, label %84

84:                                               ; preds = %81
  tail call void @BKE_paint_free(ptr noundef nonnull %82) #21
  %85 = load ptr, ptr @MEM_freeN, align 8, !tbaa !40
  %86 = load ptr, ptr %78, align 8, !tbaa !83
  %87 = load ptr, ptr %86, align 8, !tbaa !107
  tail call void %85(ptr noundef %87) #21
  br label %88

88:                                               ; preds = %84, %81
  %89 = load ptr, ptr %78, align 8, !tbaa !83
  %90 = getelementptr inbounds %struct.ToolSettings, ptr %89, i64 0, i32 1
  %91 = load ptr, ptr %90, align 8, !tbaa !114
  %92 = icmp eq ptr %91, null
  br i1 %92, label %98, label %93

93:                                               ; preds = %88
  tail call void @BKE_paint_free(ptr noundef nonnull %91) #21
  %94 = load ptr, ptr @MEM_freeN, align 8, !tbaa !40
  %95 = load ptr, ptr %78, align 8, !tbaa !83
  %96 = getelementptr inbounds %struct.ToolSettings, ptr %95, i64 0, i32 1
  %97 = load ptr, ptr %96, align 8, !tbaa !114
  tail call void %94(ptr noundef %97) #21
  br label %98

98:                                               ; preds = %93, %88
  %99 = load ptr, ptr %78, align 8, !tbaa !83
  %100 = getelementptr inbounds %struct.ToolSettings, ptr %99, i64 0, i32 2
  %101 = load ptr, ptr %100, align 8, !tbaa !115
  %102 = icmp eq ptr %101, null
  br i1 %102, label %108, label %103

103:                                              ; preds = %98
  tail call void @BKE_paint_free(ptr noundef nonnull %101) #21
  %104 = load ptr, ptr @MEM_freeN, align 8, !tbaa !40
  %105 = load ptr, ptr %78, align 8, !tbaa !83
  %106 = getelementptr inbounds %struct.ToolSettings, ptr %105, i64 0, i32 2
  %107 = load ptr, ptr %106, align 8, !tbaa !115
  tail call void %104(ptr noundef %107) #21
  br label %108

108:                                              ; preds = %103, %98
  %109 = load ptr, ptr %78, align 8, !tbaa !83
  %110 = getelementptr inbounds %struct.ToolSettings, ptr %109, i64 0, i32 3
  %111 = load ptr, ptr %110, align 8, !tbaa !312
  %112 = icmp eq ptr %111, null
  br i1 %112, label %118, label %113

113:                                              ; preds = %108
  tail call void @BKE_paint_free(ptr noundef nonnull %111) #21
  %114 = load ptr, ptr @MEM_freeN, align 8, !tbaa !40
  %115 = load ptr, ptr %78, align 8, !tbaa !83
  %116 = getelementptr inbounds %struct.ToolSettings, ptr %115, i64 0, i32 3
  %117 = load ptr, ptr %116, align 8, !tbaa !312
  tail call void %114(ptr noundef %117) #21
  br label %118

118:                                              ; preds = %113, %108
  %119 = load ptr, ptr %78, align 8, !tbaa !83
  %120 = getelementptr inbounds %struct.ToolSettings, ptr %119, i64 0, i32 17
  tail call void @BKE_paint_free(ptr noundef nonnull %120) #21
  %121 = load ptr, ptr @MEM_freeN, align 8, !tbaa !40
  %122 = load ptr, ptr %78, align 8, !tbaa !83
  tail call void %121(ptr noundef %122) #21
  store ptr null, ptr %78, align 8, !tbaa !83
  br label %123

123:                                              ; preds = %118, %75
  tail call void @DAG_scene_free(ptr noundef %0) #21
  %124 = getelementptr inbounds %struct.Scene, ptr %0, i64 0, i32 18
  %125 = load ptr, ptr %124, align 8, !tbaa !91
  %126 = icmp eq ptr %125, null
  br i1 %126, label %130, label %127

127:                                              ; preds = %123
  tail call void @ntreeFreeTree(ptr noundef nonnull %125) #21
  %128 = load ptr, ptr @MEM_freeN, align 8, !tbaa !40
  %129 = load ptr, ptr %124, align 8, !tbaa !91
  tail call void %128(ptr noundef %129) #21
  br label %130

130:                                              ; preds = %127, %123
  %131 = getelementptr inbounds %struct.Scene, ptr %0, i64 0, i32 21
  %132 = load ptr, ptr %131, align 8, !tbaa !89
  %133 = icmp eq ptr %132, null
  br i1 %133, label %136, label %134

134:                                              ; preds = %130
  %135 = load ptr, ptr @MEM_freeN, align 8, !tbaa !40
  tail call void %135(ptr noundef nonnull %132) #21
  br label %136

136:                                              ; preds = %134, %130
  %137 = getelementptr inbounds %struct.Scene, ptr %0, i64 0, i32 30
  %138 = load ptr, ptr %137, align 8, !tbaa !313
  %139 = icmp eq ptr %138, null
  br i1 %139, label %142, label %140

140:                                              ; preds = %136
  %141 = load ptr, ptr @MEM_freeN, align 8, !tbaa !40
  tail call void %141(ptr noundef nonnull %138) #21
  br label %142

142:                                              ; preds = %140, %136
  tail call void @sound_destroy_scene(ptr noundef %0) #21
  %143 = getelementptr inbounds %struct.Scene, ptr %0, i64 0, i32 44
  tail call void @BKE_color_managed_view_settings_free(ptr noundef nonnull %143) #21
  ret void
}

declare void @BKE_sequencer_clear_scene_in_allseqs(ptr noundef, ptr noundef) local_unnamed_addr #3

declare void @BLI_freelistN(ptr noundef) local_unnamed_addr #3

declare void @BKE_sequencer_editing_free(ptr noundef) local_unnamed_addr #3

declare void @BKE_free_animdata(ptr noundef) local_unnamed_addr #3

declare void @BKE_keyingsets_free(ptr noundef) local_unnamed_addr #3

declare void @BKE_rigidbody_free_world(ptr noundef) local_unnamed_addr #3

declare void @IDP_FreeProperty(ptr noundef) local_unnamed_addr #3

declare void @BKE_freestyle_config_free(ptr noundef) local_unnamed_addr #3

declare void @BKE_paint_free(ptr noundef) local_unnamed_addr #3

declare void @DAG_scene_free(ptr noundef) local_unnamed_addr #3

declare void @ntreeFreeTree(ptr noundef) local_unnamed_addr #3

declare void @sound_destroy_scene(ptr noundef) local_unnamed_addr #3

declare void @BKE_color_managed_view_settings_free(ptr noundef) local_unnamed_addr #3

declare ptr @BKE_libblock_alloc(ptr noundef, i16 noundef signext, ptr noundef) local_unnamed_addr #3

declare void @BLI_rctf_init(ptr noundef, float noundef, float noundef, float noundef, float noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define dso_local ptr @BKE_scene_add_render_layer(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = icmp eq ptr %1, null
  %4 = select i1 %3, ptr @.str.8, ptr %1
  %5 = load ptr, ptr @MEM_callocN, align 8, !tbaa !40
  %6 = tail call ptr %5(i64 noundef 184, ptr noundef nonnull @.str.9) #21
  %7 = getelementptr inbounds %struct.SceneRenderLayer, ptr %6, i64 0, i32 2
  %8 = tail call ptr @BLI_strncpy(ptr noundef nonnull %7, ptr noundef nonnull %4, i64 noundef 64) #21
  %9 = getelementptr inbounds %struct.Scene, ptr %0, i64 0, i32 22, i32 60
  tail call void @BLI_uniquename(ptr noundef nonnull %9, ptr noundef %6, ptr noundef nonnull @.str.8, i8 noundef zeroext 46, i32 noundef 16, i32 noundef 64) #21
  tail call void @BLI_addtail(ptr noundef nonnull %9, ptr noundef %6) #21
  %10 = getelementptr inbounds %struct.SceneRenderLayer, ptr %6, i64 0, i32 5
  store i32 1048575, ptr %10, align 8, !tbaa !261
  %11 = getelementptr inbounds %struct.SceneRenderLayer, ptr %6, i64 0, i32 8
  store i32 32767, ptr %11, align 4, !tbaa !264
  %12 = getelementptr inbounds %struct.SceneRenderLayer, ptr %6, i64 0, i32 9
  store i32 3, ptr %12, align 8, !tbaa !265
  %13 = getelementptr inbounds %struct.SceneRenderLayer, ptr %6, i64 0, i32 12
  store float 5.000000e-01, ptr %13, align 4, !tbaa !266
  %14 = getelementptr inbounds %struct.SceneRenderLayer, ptr %6, i64 0, i32 13
  tail call void @BKE_freestyle_config_init(ptr noundef nonnull %14) #21
  ret ptr %6
}

declare ptr @IMB_colormanagement_role_colorspace_name_get(i32 noundef) local_unnamed_addr #3

declare void @BKE_color_managed_display_settings_init(ptr noundef) local_unnamed_addr #3

declare void @BKE_color_managed_view_settings_init(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define dso_local ptr @BKE_scene_base_find(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.Scene, ptr %0, i64 0, i32 5
  %4 = tail call ptr @BLI_findptr(ptr noundef nonnull %3, ptr noundef %1, i32 noundef 32) #21
  ret ptr %4
}

declare ptr @BLI_findptr(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define dso_local void @BKE_scene_set_background(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.Scene, ptr %1, i64 0, i32 4
  %4 = load ptr, ptr %3, align 8, !tbaa !85
  %5 = icmp eq ptr %4, null
  br i1 %5, label %28, label %6

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.Main, ptr %0, i64 0, i32 11
  br label %8

8:                                                ; preds = %8, %6
  %9 = phi i32 [ %13, %8 ], [ 1, %6 ]
  %10 = phi ptr [ %11, %8 ], [ %7, %6 ]
  %11 = load ptr, ptr %10, align 8, !tbaa !40
  %12 = icmp eq ptr %11, null
  %13 = add nuw i32 %9, 1
  br i1 %12, label %14, label %8, !llvm.loop !314

14:                                               ; preds = %8
  %15 = getelementptr inbounds %struct.Scene, ptr %1, i64 0, i32 4
  %16 = load ptr, ptr %15, align 8, !tbaa !85
  %17 = icmp eq ptr %16, null
  br i1 %17, label %28, label %23

18:                                               ; preds = %23
  %19 = add nuw i32 %25, 1
  %20 = getelementptr inbounds %struct.Scene, ptr %24, i64 0, i32 4
  %21 = load ptr, ptr %20, align 8, !tbaa !85
  %22 = icmp eq ptr %21, null
  br i1 %22, label %28, label %23, !llvm.loop !315

23:                                               ; preds = %14, %18
  %24 = phi ptr [ %21, %18 ], [ %16, %14 ]
  %25 = phi i32 [ %19, %18 ], [ 0, %14 ]
  %26 = icmp eq i32 %25, %9
  br i1 %26, label %27, label %18

27:                                               ; preds = %23
  store ptr null, ptr %3, align 8, !tbaa !85
  br label %28

28:                                               ; preds = %18, %14, %2, %27
  %29 = getelementptr inbounds %struct.Scene, ptr %1, i64 0, i32 7
  %30 = load ptr, ptr %29, align 8, !tbaa !88
  %31 = icmp eq ptr %30, null
  br i1 %31, label %38, label %32

32:                                               ; preds = %28
  %33 = getelementptr inbounds %struct.Object, ptr %30, i64 0, i32 27
  %34 = load i32, ptr %33, align 8, !tbaa !316
  %35 = and i32 %34, 1
  %36 = icmp eq i32 %35, 0
  br i1 %36, label %37, label %38

37:                                               ; preds = %32
  store ptr null, ptr %29, align 8, !tbaa !88
  br label %38

38:                                               ; preds = %37, %32, %28
  %39 = getelementptr inbounds %struct.Main, ptr %0, i64 0, i32 13
  %40 = load ptr, ptr %39, align 8, !tbaa !40
  %41 = icmp eq ptr %40, null
  br i1 %41, label %49, label %42

42:                                               ; preds = %38, %42
  %43 = phi ptr [ %47, %42 ], [ %40, %38 ]
  %44 = getelementptr inbounds %struct.Object, ptr %43, i64 0, i32 53
  %45 = load i16, ptr %44, align 4, !tbaa !317
  %46 = and i16 %45, -4098
  store i16 %46, ptr %44, align 4, !tbaa !317
  %47 = load ptr, ptr %43, align 8, !tbaa !40
  %48 = icmp eq ptr %47, null
  br i1 %48, label %49, label %42, !llvm.loop !318

49:                                               ; preds = %42, %38
  %50 = getelementptr inbounds %struct.Main, ptr %0, i64 0, i32 32
  %51 = load ptr, ptr %50, align 8, !tbaa !40
  %52 = icmp eq ptr %51, null
  br i1 %52, label %56, label %58

53:                                               ; preds = %72, %58
  %54 = load ptr, ptr %59, align 8, !tbaa !40
  %55 = icmp eq ptr %54, null
  br i1 %55, label %56, label %58, !llvm.loop !319

56:                                               ; preds = %53, %49
  %57 = icmp eq ptr %1, null
  br i1 %57, label %80, label %75

58:                                               ; preds = %49, %53
  %59 = phi ptr [ %54, %53 ], [ %51, %49 ]
  %60 = getelementptr inbounds %struct.Group, ptr %59, i64 0, i32 1
  %61 = load ptr, ptr %60, align 8, !tbaa !40
  %62 = icmp eq ptr %61, null
  br i1 %62, label %53, label %63

63:                                               ; preds = %58, %72
  %64 = phi ptr [ %73, %72 ], [ %61, %58 ]
  %65 = getelementptr inbounds %struct.GroupObject, ptr %64, i64 0, i32 2
  %66 = load ptr, ptr %65, align 8, !tbaa !320
  %67 = icmp eq ptr %66, null
  br i1 %67, label %72, label %68

68:                                               ; preds = %63
  %69 = getelementptr inbounds %struct.Object, ptr %66, i64 0, i32 53
  %70 = load i16, ptr %69, align 4, !tbaa !317
  %71 = or i16 %70, 4096
  store i16 %71, ptr %69, align 4, !tbaa !317
  br label %72

72:                                               ; preds = %63, %68
  %73 = load ptr, ptr %64, align 8, !tbaa !40
  %74 = icmp eq ptr %73, null
  br i1 %74, label %53, label %63, !llvm.loop !322

75:                                               ; preds = %56, %75
  %76 = phi ptr [ %78, %75 ], [ %1, %56 ]
  tail call void @DAG_scene_relations_rebuild(ptr noundef %0, ptr noundef nonnull %76) #21
  %77 = getelementptr inbounds %struct.Scene, ptr %76, i64 0, i32 4
  %78 = load ptr, ptr %77, align 8, !tbaa !85
  %79 = icmp eq ptr %78, null
  br i1 %79, label %80, label %75, !llvm.loop !323

80:                                               ; preds = %75, %56
  %81 = getelementptr inbounds %struct.Scene, ptr %1, i64 0, i32 5
  %82 = load ptr, ptr %81, align 8, !tbaa !40
  %83 = icmp eq ptr %82, null
  br i1 %83, label %102, label %84

84:                                               ; preds = %80, %84
  %85 = phi ptr [ %100, %84 ], [ %82, %80 ]
  %86 = getelementptr inbounds %struct.Base, ptr %85, i64 0, i32 7
  %87 = load ptr, ptr %86, align 8, !tbaa !92
  %88 = getelementptr inbounds %struct.Base, ptr %85, i64 0, i32 2
  %89 = load i32, ptr %88, align 8, !tbaa !324
  %90 = getelementptr inbounds %struct.Object, ptr %87, i64 0, i32 52
  store i32 %89, ptr %90, align 8, !tbaa !325
  %91 = getelementptr inbounds %struct.Base, ptr %85, i64 0, i32 4
  %92 = load i32, ptr %91, align 8, !tbaa !326
  %93 = and i32 %92, -4097
  store i32 %93, ptr %91, align 8, !tbaa !326
  %94 = getelementptr inbounds %struct.Object, ptr %87, i64 0, i32 53
  %95 = load i16, ptr %94, align 4, !tbaa !317
  %96 = and i16 %95, 4096
  %97 = zext nneg i16 %96 to i32
  %98 = or disjoint i32 %93, %97
  store i32 %98, ptr %91, align 8, !tbaa !326
  %99 = trunc i32 %98 to i16
  store i16 %99, ptr %94, align 4, !tbaa !317
  %100 = load ptr, ptr %85, align 8, !tbaa !40
  %101 = icmp eq ptr %100, null
  br i1 %101, label %102, label %84, !llvm.loop !327

102:                                              ; preds = %84, %80
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local noundef i32 @BKE_scene_validate_setscene(ptr nocapture noundef readonly %0, ptr nocapture noundef %1) local_unnamed_addr #4 {
  %3 = getelementptr inbounds %struct.Scene, ptr %1, i64 0, i32 4
  %4 = load ptr, ptr %3, align 8, !tbaa !85
  %5 = icmp eq ptr %4, null
  br i1 %5, label %28, label %6

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.Main, ptr %0, i64 0, i32 11
  br label %8

8:                                                ; preds = %8, %6
  %9 = phi i32 [ %13, %8 ], [ 1, %6 ]
  %10 = phi ptr [ %11, %8 ], [ %7, %6 ]
  %11 = load ptr, ptr %10, align 8, !tbaa !40
  %12 = icmp eq ptr %11, null
  %13 = add nuw i32 %9, 1
  br i1 %12, label %14, label %8, !llvm.loop !314

14:                                               ; preds = %8
  %15 = getelementptr inbounds %struct.Scene, ptr %1, i64 0, i32 4
  %16 = load ptr, ptr %15, align 8, !tbaa !85
  %17 = icmp eq ptr %16, null
  br i1 %17, label %28, label %23

18:                                               ; preds = %23
  %19 = add nuw i32 %25, 1
  %20 = getelementptr inbounds %struct.Scene, ptr %24, i64 0, i32 4
  %21 = load ptr, ptr %20, align 8, !tbaa !85
  %22 = icmp eq ptr %21, null
  br i1 %22, label %28, label %23, !llvm.loop !315

23:                                               ; preds = %14, %18
  %24 = phi ptr [ %21, %18 ], [ %16, %14 ]
  %25 = phi i32 [ %19, %18 ], [ 0, %14 ]
  %26 = icmp eq i32 %25, %9
  br i1 %26, label %27, label %18

27:                                               ; preds = %23
  store ptr null, ptr %3, align 8, !tbaa !85
  br label %28

28:                                               ; preds = %18, %14, %2, %27
  %29 = phi i32 [ 0, %27 ], [ 1, %2 ], [ 1, %14 ], [ 1, %18 ]
  ret i32 %29
}

declare void @DAG_scene_relations_rebuild(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define dso_local ptr @BKE_scene_set_name(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = tail call ptr @BKE_libblock_find_name_ex(ptr noundef %0, i16 noundef signext 17235, ptr noundef %1) #21
  %4 = icmp eq ptr %3, null
  br i1 %4, label %6, label %5

5:                                                ; preds = %2
  tail call void @BKE_scene_set_background(ptr noundef %0, ptr noundef nonnull %3)
  br label %6

6:                                                ; preds = %2, %5
  %7 = phi ptr [ @.str.5, %5 ], [ @.str.6, %2 ]
  %8 = phi ptr [ %3, %5 ], [ null, %2 ]
  %9 = getelementptr inbounds %struct.Main, ptr %0, i64 0, i32 2
  %10 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) %7, ptr noundef %1, ptr noundef nonnull %9)
  ret ptr %8
}

declare ptr @BKE_libblock_find_name_ex(ptr noundef, i16 noundef signext, ptr noundef) local_unnamed_addr #3

; Function Attrs: nofree nounwind
declare noundef i32 @printf(ptr nocapture noundef readonly, ...) local_unnamed_addr #5

; Function Attrs: nounwind uwtable
define dso_local void @BKE_scene_unlink(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #0 {
  %4 = getelementptr inbounds %struct.Main, ptr %0, i64 0, i32 11
  %5 = load ptr, ptr %4, align 8, !tbaa !40
  %6 = icmp eq ptr %5, null
  br i1 %6, label %7, label %10

7:                                                ; preds = %16, %3
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
  br i1 %18, label %7, label %10, !llvm.loop !328

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
  %33 = load ptr, ptr %32, align 8, !tbaa !329
  %34 = icmp eq ptr %33, %1
  br i1 %34, label %35, label %36

35:                                               ; preds = %30
  store ptr null, ptr %32, align 8, !tbaa !329
  br label %36

36:                                               ; preds = %30, %35
  %37 = load ptr, ptr %31, align 8, !tbaa !40
  %38 = icmp eq ptr %37, null
  br i1 %38, label %39, label %30, !llvm.loop !331

39:                                               ; preds = %36, %26, %19, %22
  %40 = load ptr, ptr %20, align 8, !tbaa !40
  %41 = icmp eq ptr %40, null
  br i1 %41, label %42, label %19, !llvm.loop !332

42:                                               ; preds = %39, %7
  %43 = getelementptr inbounds %struct.Main, ptr %0, i64 0, i32 26
  %44 = load ptr, ptr %43, align 8, !tbaa !40
  %45 = icmp eq ptr %44, null
  br i1 %45, label %93, label %49

46:                                               ; preds = %59, %55
  %47 = load ptr, ptr %50, align 8, !tbaa !40
  %48 = icmp eq ptr %47, null
  br i1 %48, label %93, label %49, !llvm.loop !333

49:                                               ; preds = %42, %46
  %50 = phi ptr [ %47, %46 ], [ %44, %42 ]
  %51 = getelementptr inbounds %struct.bScreen, ptr %50, i64 0, i32 5
  %52 = load ptr, ptr %51, align 8, !tbaa !334
  %53 = icmp eq ptr %52, %1
  br i1 %53, label %54, label %55

54:                                               ; preds = %49
  store ptr %2, ptr %51, align 8, !tbaa !334
  br label %55

55:                                               ; preds = %54, %49
  %56 = getelementptr inbounds %struct.bScreen, ptr %50, i64 0, i32 3
  %57 = load ptr, ptr %56, align 8, !tbaa !40
  %58 = icmp eq ptr %57, null
  br i1 %58, label %46, label %62

59:                                               ; preds = %90, %62
  %60 = load ptr, ptr %63, align 8, !tbaa !40
  %61 = icmp eq ptr %60, null
  br i1 %61, label %46, label %62, !llvm.loop !336

62:                                               ; preds = %55, %59
  %63 = phi ptr [ %60, %59 ], [ %57, %55 ]
  %64 = getelementptr inbounds %struct.ScrArea, ptr %63, i64 0, i32 19
  %65 = load ptr, ptr %64, align 8, !tbaa !40
  %66 = icmp eq ptr %65, null
  br i1 %66, label %59, label %67

67:                                               ; preds = %62, %90
  %68 = phi ptr [ %91, %90 ], [ %65, %62 ]
  %69 = getelementptr inbounds %struct.SpaceLink, ptr %68, i64 0, i32 3
  %70 = load i32, ptr %69, align 8, !tbaa !337
  switch i32 %70, label %90 [
    i32 16, label %71
    i32 4, label %85
  ]

71:                                               ; preds = %67
  %72 = getelementptr inbounds %struct.SpaceNode, ptr %68, i64 0, i32 7
  %73 = load ptr, ptr %72, align 8, !tbaa !339
  %74 = icmp eq ptr %73, %1
  br i1 %74, label %75, label %90

75:                                               ; preds = %71
  %76 = getelementptr inbounds %struct.SpaceNode, ptr %68, i64 0, i32 17
  %77 = load ptr, ptr %76, align 8, !tbaa !342
  %78 = icmp eq ptr %77, null
  br i1 %78, label %84, label %79

79:                                               ; preds = %75, %79
  %80 = phi ptr [ %81, %79 ], [ %77, %75 ]
  %81 = load ptr, ptr %80, align 8, !tbaa !343
  %82 = load ptr, ptr @MEM_freeN, align 8, !tbaa !40
  tail call void %82(ptr noundef nonnull %80) #21
  %83 = icmp eq ptr %81, null
  br i1 %83, label %84, label %79, !llvm.loop !346

84:                                               ; preds = %79, %75
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %72, i8 0, i64 16, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %76, i8 0, i64 32, i1 false)
  br label %90

85:                                               ; preds = %67
  %86 = getelementptr inbounds %struct.SpaceButs, ptr %68, i64 0, i32 20
  %87 = load ptr, ptr %86, align 8, !tbaa !347
  %88 = icmp eq ptr %87, %1
  br i1 %88, label %89, label %90

89:                                               ; preds = %85
  store ptr null, ptr %86, align 8, !tbaa !347
  br label %90

90:                                               ; preds = %89, %85, %84, %71, %67
  %91 = load ptr, ptr %68, align 8, !tbaa !40
  %92 = icmp eq ptr %91, null
  br i1 %92, label %59, label %67, !llvm.loop !349

93:                                               ; preds = %46, %42
  tail call void @BKE_libblock_free(ptr noundef %0, ptr noundef %1) #21
  ret void
}

declare void @BKE_libblock_free(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define dso_local i32 @BKE_scene_base_iter_next(ptr noundef %0, ptr noundef %1, ptr nocapture noundef %2, i32 noundef %3, ptr nocapture noundef %4, ptr nocapture noundef %5) local_unnamed_addr #0 {
  %7 = icmp eq i32 %3, 0
  %8 = getelementptr inbounds %struct.SceneBaseIter, ptr %1, i64 0, i32 4
  %9 = getelementptr inbounds %struct.SceneBaseIter, ptr %1, i64 0, i32 3
  br i1 %7, label %18, label %10

10:                                               ; preds = %6
  %11 = getelementptr inbounds %struct.SceneBaseIter, ptr %1, i64 0, i32 1
  %12 = getelementptr inbounds %struct.SceneBaseIter, ptr %1, i64 0, i32 1
  %13 = getelementptr inbounds %struct.SceneBaseIter, ptr %1, i64 0, i32 3
  %14 = getelementptr inbounds %struct.SceneBaseIter, ptr %1, i64 0, i32 2
  %15 = getelementptr inbounds %struct.SceneBaseIter, ptr %1, i64 0, i32 2
  %16 = getelementptr inbounds %struct.SceneBaseIter, ptr %1, i64 0, i32 3
  %17 = getelementptr inbounds %struct.SceneBaseIter, ptr %1, i64 0, i32 2
  br label %19

18:                                               ; preds = %6
  store i32 0, ptr %8, align 8, !tbaa !350
  store ptr null, ptr %9, align 8, !tbaa !352
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %1, i8 0, i64 16, i1 false)
  br label %136

19:                                               ; preds = %134, %10
  %20 = load i32, ptr %8, align 8, !tbaa !350
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %22, label %44

22:                                               ; preds = %19
  %23 = load ptr, ptr %2, align 8, !tbaa !40
  %24 = getelementptr inbounds %struct.Scene, ptr %23, i64 0, i32 5
  %25 = load ptr, ptr %24, align 8, !tbaa !353
  store ptr %25, ptr %4, align 8, !tbaa !40
  %26 = icmp eq ptr %25, null
  br i1 %26, label %27, label %29

27:                                               ; preds = %22
  %28 = load ptr, ptr %2, align 8, !tbaa !40
  br label %32

29:                                               ; preds = %22
  %30 = getelementptr inbounds %struct.Base, ptr %25, i64 0, i32 7
  %31 = load ptr, ptr %30, align 8, !tbaa !92
  store ptr %31, ptr %5, align 8, !tbaa !40
  store i32 1, ptr %8, align 8, !tbaa !350
  br label %71

32:                                               ; preds = %27, %37
  %33 = phi ptr [ %28, %27 ], [ %35, %37 ]
  %34 = getelementptr inbounds %struct.Scene, ptr %33, i64 0, i32 4
  %35 = load ptr, ptr %34, align 8, !tbaa !85
  %36 = icmp eq ptr %35, null
  br i1 %36, label %71, label %37

37:                                               ; preds = %32
  store ptr %35, ptr %2, align 8, !tbaa !40
  %38 = getelementptr inbounds %struct.Scene, ptr %35, i64 0, i32 5
  %39 = load ptr, ptr %38, align 8, !tbaa !353
  %40 = icmp eq ptr %39, null
  br i1 %40, label %32, label %41, !llvm.loop !354

41:                                               ; preds = %37
  store ptr %39, ptr %4, align 8, !tbaa !40
  %42 = getelementptr inbounds %struct.Base, ptr %39, i64 0, i32 7
  %43 = load ptr, ptr %42, align 8, !tbaa !92
  store ptr %43, ptr %5, align 8, !tbaa !40
  store i32 1, ptr %8, align 8, !tbaa !350
  br label %71

44:                                               ; preds = %19
  %45 = load ptr, ptr %4, align 8, !tbaa !40
  %46 = icmp eq ptr %45, null
  %47 = icmp eq i32 %20, 3
  %48 = or i1 %47, %46
  br i1 %48, label %71, label %49

49:                                               ; preds = %44
  %50 = load ptr, ptr %45, align 8, !tbaa !355
  store ptr %50, ptr %4, align 8, !tbaa !40
  %51 = icmp eq ptr %50, null
  br i1 %51, label %55, label %52

52:                                               ; preds = %49
  %53 = getelementptr inbounds %struct.Base, ptr %50, i64 0, i32 7
  %54 = load ptr, ptr %53, align 8, !tbaa !92
  store ptr %54, ptr %5, align 8, !tbaa !40
  br label %71

55:                                               ; preds = %49
  %56 = icmp eq i32 %20, 1
  br i1 %56, label %57, label %71

57:                                               ; preds = %55
  %58 = load ptr, ptr %2, align 8, !tbaa !40
  br label %59

59:                                               ; preds = %57, %64
  %60 = phi ptr [ %58, %57 ], [ %62, %64 ]
  %61 = getelementptr inbounds %struct.Scene, ptr %60, i64 0, i32 4
  %62 = load ptr, ptr %61, align 8, !tbaa !85
  %63 = icmp eq ptr %62, null
  br i1 %63, label %71, label %64

64:                                               ; preds = %59
  store ptr %62, ptr %2, align 8, !tbaa !40
  %65 = getelementptr inbounds %struct.Scene, ptr %62, i64 0, i32 5
  %66 = load ptr, ptr %65, align 8, !tbaa !353
  %67 = icmp eq ptr %66, null
  br i1 %67, label %59, label %68, !llvm.loop !356

68:                                               ; preds = %64
  store ptr %66, ptr %4, align 8, !tbaa !40
  %69 = getelementptr inbounds %struct.Base, ptr %66, i64 0, i32 7
  %70 = load ptr, ptr %69, align 8, !tbaa !92
  store ptr %70, ptr %5, align 8, !tbaa !40
  br label %71

71:                                               ; preds = %59, %32, %44, %55, %68, %52, %29, %41
  %72 = load ptr, ptr %4, align 8, !tbaa !40
  %73 = icmp eq ptr %72, null
  br i1 %73, label %74, label %75

74:                                               ; preds = %71
  store i32 0, ptr %8, align 8, !tbaa !350
  br label %136

75:                                               ; preds = %71
  %76 = load i32, ptr %8, align 8, !tbaa !350
  %77 = icmp eq i32 %76, 3
  br i1 %77, label %96, label %78

78:                                               ; preds = %75
  %79 = getelementptr inbounds %struct.Base, ptr %72, i64 0, i32 7
  %80 = load ptr, ptr %79, align 8, !tbaa !92
  %81 = getelementptr inbounds %struct.Object, ptr %80, i64 0, i32 55
  %82 = load i16, ptr %81, align 8, !tbaa !357
  %83 = and i16 %82, 2840
  %84 = icmp eq i16 %83, 0
  br i1 %84, label %96, label %85

85:                                               ; preds = %78
  %86 = getelementptr inbounds %struct.Object, ptr %80, i64 0, i32 112
  %87 = load ptr, ptr %86, align 8, !tbaa !358
  %88 = icmp eq ptr %87, null
  br i1 %88, label %89, label %96

89:                                               ; preds = %85
  %90 = load ptr, ptr %2, align 8, !tbaa !40
  %91 = tail call ptr @object_duplilist_ex(ptr noundef %0, ptr noundef %90, ptr noundef %80, i8 noundef zeroext 0) #21
  store ptr %91, ptr %1, align 8, !tbaa !359
  %92 = load ptr, ptr %91, align 8, !tbaa !360
  store ptr %92, ptr %11, align 8, !tbaa !361
  %93 = icmp eq ptr %92, null
  br i1 %93, label %94, label %95

94:                                               ; preds = %89
  tail call void @free_object_duplilist(ptr noundef nonnull %91) #21
  store ptr null, ptr %1, align 8, !tbaa !359
  br label %95

95:                                               ; preds = %94, %89
  store ptr null, ptr %9, align 8, !tbaa !352
  br label %96

96:                                               ; preds = %78, %95, %85, %75
  %97 = load ptr, ptr %12, align 8, !tbaa !361
  %98 = icmp eq ptr %97, null
  br i1 %98, label %122, label %99

99:                                               ; preds = %96
  %100 = load ptr, ptr %4, align 8, !tbaa !40
  %101 = getelementptr inbounds %struct.Base, ptr %100, i64 0, i32 4
  %102 = load i32, ptr %101, align 8, !tbaa !326
  %103 = or i32 %102, 512
  store i32 %103, ptr %101, align 8, !tbaa !326
  %104 = getelementptr inbounds %struct.DupliObject, ptr %97, i64 0, i32 2
  %105 = load ptr, ptr %104, align 8, !tbaa !362
  store ptr %105, ptr %5, align 8, !tbaa !40
  store i32 3, ptr %8, align 8, !tbaa !350
  %106 = load ptr, ptr %13, align 8, !tbaa !352
  %107 = icmp eq ptr %106, %105
  br i1 %107, label %115, label %108

108:                                              ; preds = %99
  %109 = icmp eq ptr %106, null
  br i1 %109, label %112, label %110

110:                                              ; preds = %108
  %111 = getelementptr inbounds %struct.Object, ptr %106, i64 0, i32 47
  tail call void @copy_m4_m4(ptr noundef nonnull %111, ptr noundef nonnull %14) #21
  br label %112

112:                                              ; preds = %110, %108
  %113 = load ptr, ptr %5, align 8, !tbaa !40
  store ptr %113, ptr %13, align 8, !tbaa !352
  %114 = getelementptr inbounds %struct.Object, ptr %113, i64 0, i32 47
  tail call void @copy_m4_m4(ptr noundef nonnull %15, ptr noundef nonnull %114) #21
  br label %115

115:                                              ; preds = %112, %99
  %116 = load ptr, ptr %5, align 8, !tbaa !40
  %117 = getelementptr inbounds %struct.Object, ptr %116, i64 0, i32 47
  %118 = load ptr, ptr %12, align 8, !tbaa !361
  %119 = getelementptr inbounds %struct.DupliObject, ptr %118, i64 0, i32 3
  tail call void @copy_m4_m4(ptr noundef nonnull %117, ptr noundef nonnull %119) #21
  %120 = load ptr, ptr %12, align 8, !tbaa !361
  %121 = load ptr, ptr %120, align 8, !tbaa !364
  store ptr %121, ptr %12, align 8, !tbaa !361
  br label %136

122:                                              ; preds = %96
  %123 = load i32, ptr %8, align 8, !tbaa !350
  %124 = icmp eq i32 %123, 3
  br i1 %124, label %125, label %136

125:                                              ; preds = %122
  store i32 1, ptr %8, align 8, !tbaa !350
  %126 = load ptr, ptr %4, align 8, !tbaa !40
  %127 = getelementptr inbounds %struct.Base, ptr %126, i64 0, i32 4
  %128 = load i32, ptr %127, align 8, !tbaa !326
  %129 = and i32 %128, -513
  store i32 %129, ptr %127, align 8, !tbaa !326
  %130 = load ptr, ptr %16, align 8, !tbaa !352
  %131 = icmp eq ptr %130, null
  br i1 %131, label %134, label %132

132:                                              ; preds = %125
  %133 = getelementptr inbounds %struct.Object, ptr %130, i64 0, i32 47
  tail call void @copy_m4_m4(ptr noundef nonnull %133, ptr noundef nonnull %17) #21
  store ptr null, ptr %16, align 8, !tbaa !352
  br label %134

134:                                              ; preds = %132, %125
  %135 = load ptr, ptr %1, align 8, !tbaa !359
  tail call void @free_object_duplilist(ptr noundef %135) #21
  store ptr null, ptr %1, align 8, !tbaa !359
  br label %19, !llvm.loop !365

136:                                              ; preds = %122, %74, %115, %18
  %137 = getelementptr inbounds %struct.SceneBaseIter, ptr %1, i64 0, i32 4
  %138 = load i32, ptr %137, align 8, !tbaa !350
  ret i32 %138
}

declare ptr @object_duplilist_ex(ptr noundef, ptr noundef, ptr noundef, i8 noundef zeroext) local_unnamed_addr #3

declare void @free_object_duplilist(ptr noundef) local_unnamed_addr #3

declare void @copy_m4_m4(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nofree norecurse nosync nounwind memory(read, inaccessiblemem: none) uwtable
define dso_local ptr @BKE_scene_camera_find(ptr nocapture noundef readonly %0) local_unnamed_addr #6 {
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
  %11 = load i16, ptr %10, align 8, !tbaa !366
  %12 = icmp eq i16 %11, 11
  br i1 %12, label %13, label %3, !llvm.loop !367

13:                                               ; preds = %3, %7
  %14 = phi ptr [ %9, %7 ], [ null, %3 ]
  ret ptr %14
}

; Function Attrs: nofree norecurse nosync nounwind memory(read, inaccessiblemem: none) uwtable
define dso_local ptr @BKE_scene_camera_switch_find(ptr nocapture noundef readonly %0) local_unnamed_addr #6 {
  %2 = getelementptr inbounds %struct.Scene, ptr %0, i64 0, i32 22, i32 5
  %3 = load i32, ptr %2, align 8, !tbaa !131
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
  %14 = load ptr, ptr %13, align 8, !tbaa !368
  %15 = icmp eq ptr %14, null
  br i1 %15, label %35, label %16

16:                                               ; preds = %7
  %17 = getelementptr inbounds %struct.Object, ptr %14, i64 0, i32 102
  %18 = load i8, ptr %17, align 8, !tbaa !370
  %19 = and i8 %18, 4
  %20 = icmp eq i8 %19, 0
  br i1 %20, label %21, label %35

21:                                               ; preds = %16
  %22 = getelementptr inbounds %struct.TimeMarker, ptr %8, i64 0, i32 2
  %23 = load i32, ptr %22, align 8, !tbaa !371
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
  br i1 %41, label %42, label %7, !llvm.loop !372

42:                                               ; preds = %35, %27, %1
  %43 = phi ptr [ null, %1 ], [ %39, %35 ], [ %9, %27 ]
  %44 = phi ptr [ null, %1 ], [ %38, %35 ], [ %14, %27 ]
  %45 = icmp eq ptr %44, null
  %46 = select i1 %45, ptr %43, ptr %44
  ret ptr %46
}

; Function Attrs: nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local noundef i32 @BKE_scene_camera_switch_update(ptr nocapture noundef %0) local_unnamed_addr #4 {
  %2 = getelementptr inbounds %struct.Scene, ptr %0, i64 0, i32 22, i32 5
  %3 = load i32, ptr %2, align 8, !tbaa !131
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
  %14 = load ptr, ptr %13, align 8, !tbaa !368
  %15 = icmp eq ptr %14, null
  br i1 %15, label %35, label %16

16:                                               ; preds = %7
  %17 = getelementptr inbounds %struct.Object, ptr %14, i64 0, i32 102
  %18 = load i8, ptr %17, align 8, !tbaa !370
  %19 = and i8 %18, 4
  %20 = icmp eq i8 %19, 0
  br i1 %20, label %21, label %35

21:                                               ; preds = %16
  %22 = getelementptr inbounds %struct.TimeMarker, ptr %8, i64 0, i32 2
  %23 = load i32, ptr %22, align 8, !tbaa !371
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

35:                                               ; preds = %29, %16, %7
  %36 = phi i32 [ %12, %16 ], [ %12, %7 ], [ %30, %29 ]
  %37 = phi i32 [ %11, %16 ], [ %11, %7 ], [ %33, %29 ]
  %38 = phi ptr [ %10, %16 ], [ %10, %7 ], [ %31, %29 ]
  %39 = phi ptr [ %9, %16 ], [ %9, %7 ], [ %34, %29 ]
  %40 = load ptr, ptr %8, align 8, !tbaa !40
  %41 = icmp eq ptr %40, null
  br i1 %41, label %42, label %7, !llvm.loop !372

42:                                               ; preds = %27, %35, %1
  %43 = phi ptr [ null, %1 ], [ %39, %35 ], [ %9, %27 ]
  %44 = phi ptr [ null, %1 ], [ %38, %35 ], [ %14, %27 ]
  %45 = icmp eq ptr %44, null
  %46 = select i1 %45, ptr %43, ptr %44
  %47 = icmp eq ptr %46, null
  br i1 %47, label %50, label %48

48:                                               ; preds = %42
  %49 = getelementptr inbounds %struct.Scene, ptr %0, i64 0, i32 2
  store ptr %46, ptr %49, align 8, !tbaa !122
  br label %50

50:                                               ; preds = %42, %48
  %51 = phi i32 [ 1, %48 ], [ 0, %42 ]
  ret i32 %51
}

; Function Attrs: nofree norecurse nosync nounwind memory(read, inaccessiblemem: none) uwtable
define dso_local ptr @BKE_scene_find_marker_name(ptr nocapture noundef readonly %0, i32 noundef %1) local_unnamed_addr #6 {
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
  %14 = load i32, ptr %13, align 8, !tbaa !371
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
  %22 = load i32, ptr %21, align 8, !tbaa !371
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
  br i1 %32, label %10, label %33, !llvm.loop !373

33:                                               ; preds = %18, %26, %2, %24, %16
  %34 = phi ptr [ %17, %16 ], [ %25, %24 ], [ null, %2 ], [ null, %26 ], [ null, %18 ]
  ret ptr %34
}

; Function Attrs: nofree norecurse nosync nounwind memory(read, inaccessiblemem: none) uwtable
define dso_local ptr @BKE_scene_find_last_marker_name(ptr nocapture noundef readonly %0, i32 noundef %1) local_unnamed_addr #6 {
  %3 = getelementptr inbounds %struct.Scene, ptr %0, i64 0, i32 24
  %4 = load ptr, ptr %3, align 8, !tbaa !40
  %5 = icmp eq ptr %4, null
  br i1 %5, label %23, label %6

6:                                                ; preds = %2, %15
  %7 = phi ptr [ %21, %15 ], [ %4, %2 ]
  %8 = phi i32 [ %20, %15 ], [ -600000, %2 ]
  %9 = phi ptr [ %19, %15 ], [ null, %2 ]
  %10 = getelementptr inbounds %struct.TimeMarker, ptr %7, i64 0, i32 2
  %11 = load i32, ptr %10, align 8, !tbaa !371
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
  br i1 %22, label %23, label %6, !llvm.loop !374

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

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @BKE_scene_base_add(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = load ptr, ptr @MEM_callocN, align 8, !tbaa !40
  %4 = tail call ptr %3(i64 noundef 40, ptr noundef nonnull @.str.7) #21
  %5 = getelementptr inbounds %struct.Scene, ptr %0, i64 0, i32 5
  tail call void @BLI_addhead(ptr noundef nonnull %5, ptr noundef %4) #21
  %6 = getelementptr inbounds %struct.Base, ptr %4, i64 0, i32 7
  store ptr %1, ptr %6, align 8, !tbaa !92
  %7 = getelementptr inbounds %struct.Object, ptr %1, i64 0, i32 53
  %8 = load i16, ptr %7, align 4, !tbaa !317
  %9 = sext i16 %8 to i32
  %10 = getelementptr inbounds %struct.Base, ptr %4, i64 0, i32 4
  store i32 %9, ptr %10, align 8, !tbaa !326
  %11 = getelementptr inbounds %struct.Object, ptr %1, i64 0, i32 52
  %12 = load i32, ptr %11, align 8, !tbaa !325
  %13 = getelementptr inbounds %struct.Base, ptr %4, i64 0, i32 2
  store i32 %12, ptr %13, align 8, !tbaa !324
  ret ptr %4
}

declare void @BLI_addhead(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define dso_local void @BKE_scene_base_unlink(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.Base, ptr %1, i64 0, i32 7
  %4 = load ptr, ptr %3, align 8, !tbaa !92
  %5 = getelementptr inbounds %struct.Object, ptr %4, i64 0, i32 129
  %6 = load ptr, ptr %5, align 8, !tbaa !375
  %7 = icmp eq ptr %6, null
  br i1 %7, label %9, label %8

8:                                                ; preds = %2
  tail call void @BKE_rigidbody_remove_constraint(ptr noundef %0, ptr noundef %4) #21
  br label %9

9:                                                ; preds = %8, %2
  %10 = load ptr, ptr %3, align 8, !tbaa !92
  %11 = getelementptr inbounds %struct.Object, ptr %10, i64 0, i32 128
  %12 = load ptr, ptr %11, align 8, !tbaa !376
  %13 = icmp eq ptr %12, null
  br i1 %13, label %15, label %14

14:                                               ; preds = %9
  tail call void @BKE_rigidbody_remove_object(ptr noundef %0, ptr noundef %10) #21
  br label %15

15:                                               ; preds = %14, %9
  %16 = getelementptr inbounds %struct.Scene, ptr %0, i64 0, i32 5
  tail call void @BLI_remlink(ptr noundef nonnull %16, ptr noundef %1) #21
  ret void
}

declare void @BKE_rigidbody_remove_constraint(ptr noundef, ptr noundef) local_unnamed_addr #3

declare void @BKE_rigidbody_remove_object(ptr noundef, ptr noundef) local_unnamed_addr #3

declare void @BLI_remlink(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @BKE_scene_base_deselect_all(ptr nocapture noundef readonly %0) local_unnamed_addr #7 {
  %2 = getelementptr inbounds %struct.Scene, ptr %0, i64 0, i32 5
  %3 = load ptr, ptr %2, align 8, !tbaa !40
  %4 = icmp eq ptr %3, null
  br i1 %4, label %16, label %5

5:                                                ; preds = %1, %5
  %6 = phi ptr [ %14, %5 ], [ %3, %1 ]
  %7 = getelementptr inbounds %struct.Base, ptr %6, i64 0, i32 4
  %8 = load i32, ptr %7, align 8, !tbaa !326
  %9 = and i32 %8, -2
  store i32 %9, ptr %7, align 8, !tbaa !326
  %10 = trunc i32 %9 to i16
  %11 = getelementptr inbounds %struct.Base, ptr %6, i64 0, i32 7
  %12 = load ptr, ptr %11, align 8, !tbaa !92
  %13 = getelementptr inbounds %struct.Object, ptr %12, i64 0, i32 53
  store i16 %10, ptr %13, align 4, !tbaa !317
  %14 = load ptr, ptr %6, align 8, !tbaa !40
  %15 = icmp eq ptr %14, null
  br i1 %15, label %16, label %5, !llvm.loop !377

16:                                               ; preds = %5, %1
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local void @BKE_scene_base_select(ptr nocapture noundef writeonly %0, ptr noundef %1) local_unnamed_addr #8 {
  %3 = getelementptr inbounds %struct.Base, ptr %1, i64 0, i32 4
  %4 = load i32, ptr %3, align 8, !tbaa !326
  %5 = or i32 %4, 1
  store i32 %5, ptr %3, align 8, !tbaa !326
  %6 = trunc i32 %5 to i16
  %7 = getelementptr inbounds %struct.Base, ptr %1, i64 0, i32 7
  %8 = load ptr, ptr %7, align 8, !tbaa !92
  %9 = getelementptr inbounds %struct.Object, ptr %8, i64 0, i32 53
  store i16 %6, ptr %9, align 4, !tbaa !317
  %10 = getelementptr inbounds %struct.Scene, ptr %0, i64 0, i32 6
  store ptr %1, ptr %10, align 8, !tbaa !94
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local float @BKE_scene_frame_get(ptr nocapture noundef readonly %0) local_unnamed_addr #9 {
  %2 = getelementptr inbounds %struct.Scene, ptr %0, i64 0, i32 22, i32 5
  %3 = load i32, ptr %2, align 8, !tbaa !131
  %4 = sitofp i32 %3 to float
  %5 = getelementptr inbounds %struct.Scene, ptr %0, i64 0, i32 22, i32 8
  %6 = load float, ptr %5, align 4, !tbaa !378
  %7 = fadd float %6, %4
  %8 = getelementptr inbounds %struct.Scene, ptr %0, i64 0, i32 22, i32 15
  %9 = load float, ptr %8, align 4, !tbaa !152
  %10 = fmul float %7, %9
  ret float %10
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local float @BKE_scene_frame_get_from_ctime(ptr nocapture noundef readonly %0, float noundef %1) local_unnamed_addr #9 {
  %3 = getelementptr inbounds %struct.Scene, ptr %0, i64 0, i32 22, i32 8
  %4 = load float, ptr %3, align 4, !tbaa !378
  %5 = fadd float %4, %1
  %6 = getelementptr inbounds %struct.Scene, ptr %0, i64 0, i32 22, i32 15
  %7 = load float, ptr %6, align 4, !tbaa !152
  %8 = fmul float %5, %7
  ret float %8
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: write) uwtable
define dso_local void @BKE_scene_frame_set(ptr nocapture noundef writeonly %0, double noundef %1) local_unnamed_addr #10 {
  %3 = alloca double, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #21
  %4 = call double @modf(double noundef %1, ptr noundef nonnull %3) #21
  %5 = fptrunc double %4 to float
  %6 = getelementptr inbounds %struct.Scene, ptr %0, i64 0, i32 22, i32 8
  store float %5, ptr %6, align 4, !tbaa !378
  %7 = load double, ptr %3, align 8, !tbaa !379
  %8 = fptosi double %7 to i32
  %9 = getelementptr inbounds %struct.Scene, ptr %0, i64 0, i32 22, i32 5
  store i32 %8, ptr %9, align 8, !tbaa !131
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #21
  ret void
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: write)
declare double @modf(double noundef, ptr nocapture noundef) local_unnamed_addr #11

; Function Attrs: nounwind uwtable
define dso_local void @BKE_scene_update_tagged(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #0 {
  %4 = alloca %struct.NodeTreeIterStore, align 8
  %5 = alloca ptr, align 8
  %6 = alloca ptr, align 8
  tail call void @BLI_callback_exec(ptr noundef %1, ptr noundef %2, i32 noundef 12) #21
  %7 = icmp eq ptr %2, null
  br i1 %7, label %13, label %8

8:                                                ; preds = %3, %8
  %9 = phi ptr [ %11, %8 ], [ %2, %3 ]
  tail call void @DAG_scene_relations_update(ptr noundef %1, ptr noundef nonnull %9) #21
  %10 = getelementptr inbounds %struct.Scene, ptr %9, i64 0, i32 4
  %11 = load ptr, ptr %10, align 8, !tbaa !85
  %12 = icmp eq ptr %11, null
  br i1 %12, label %13, label %8, !llvm.loop !381

13:                                               ; preds = %8, %3
  %14 = getelementptr inbounds %struct.Scene, ptr %2, i64 0, i32 7
  %15 = load ptr, ptr %14, align 8, !tbaa !88
  %16 = icmp eq ptr %15, null
  br i1 %16, label %66, label %17

17:                                               ; preds = %13
  %18 = getelementptr inbounds %struct.Object, ptr %15, i64 0, i32 19
  %19 = load ptr, ptr %18, align 8, !tbaa !382
  %20 = getelementptr inbounds %struct.Object, ptr %15, i64 0, i32 3
  %21 = load i16, ptr %20, align 8, !tbaa !366
  %22 = icmp eq i16 %21, 1
  br i1 %22, label %23, label %66

23:                                               ; preds = %17
  %24 = getelementptr inbounds %struct.ID, ptr %19, i64 0, i32 5
  %25 = load i16, ptr %24, align 2, !tbaa !383
  %26 = and i16 %25, 12288
  %27 = icmp eq i16 %26, 0
  br i1 %27, label %66, label %28

28:                                               ; preds = %23
  %29 = getelementptr inbounds %struct.Main, ptr %1, i64 0, i32 40
  %30 = load ptr, ptr %29, align 8, !tbaa !386
  %31 = getelementptr inbounds %struct.wmWindowManager, ptr %30, i64 0, i32 3
  br label %32

32:                                               ; preds = %59, %28
  %33 = phi ptr [ %31, %28 ], [ %34, %59 ]
  %34 = load ptr, ptr %33, align 8, !tbaa !40
  %35 = icmp eq ptr %34, null
  br i1 %35, label %66, label %36

36:                                               ; preds = %32
  %37 = getelementptr inbounds %struct.wmWindow, ptr %34, i64 0, i32 3
  %38 = load ptr, ptr %37, align 8, !tbaa !388
  %39 = getelementptr inbounds %struct.bScreen, ptr %38, i64 0, i32 3
  %40 = load ptr, ptr %39, align 8, !tbaa !40
  %41 = icmp eq ptr %40, null
  br i1 %41, label %59, label %42

42:                                               ; preds = %36, %56
  %43 = phi ptr [ %57, %56 ], [ %40, %36 ]
  %44 = getelementptr inbounds %struct.ScrArea, ptr %43, i64 0, i32 8
  %45 = load i8, ptr %44, align 8, !tbaa !390
  %46 = icmp eq i8 %45, 1
  br i1 %46, label %47, label %54

47:                                               ; preds = %42
  %48 = getelementptr inbounds %struct.ScrArea, ptr %43, i64 0, i32 19
  %49 = load ptr, ptr %48, align 8, !tbaa !392
  %50 = getelementptr inbounds %struct.View3D, ptr %49, i64 0, i32 24
  %51 = load i16, ptr %50, align 8, !tbaa !393
  %52 = icmp eq i16 %51, 6
  %53 = zext i1 %52 to i32
  br label %54

54:                                               ; preds = %47, %42
  %55 = phi i32 [ 7, %42 ], [ %53, %47 ]
  switch i32 %55, label %59 [
    i32 0, label %56
    i32 7, label %56
  ]

56:                                               ; preds = %54, %54
  %57 = load ptr, ptr %43, align 8, !tbaa !40
  %58 = icmp eq ptr %57, null
  br i1 %58, label %59, label %42, !llvm.loop !395

59:                                               ; preds = %56, %54, %36
  %60 = phi i32 [ 0, %36 ], [ 0, %56 ], [ %55, %54 ]
  %61 = icmp eq i32 %60, 0
  br i1 %61, label %32, label %62, !llvm.loop !396

62:                                               ; preds = %59
  %63 = getelementptr inbounds %struct.Mesh, ptr %19, i64 0, i32 20
  %64 = load ptr, ptr %63, align 8, !tbaa !397
  %65 = load ptr, ptr %64, align 8, !tbaa !398
  tail call void @BM_mesh_bm_to_me(ptr noundef %65, ptr noundef %19, i8 noundef zeroext 0) #21
  tail call void @DAG_id_tag_update(ptr noundef %19, i16 noundef signext 0) #21
  br label %66

66:                                               ; preds = %32, %13, %17, %23, %62
  tail call void @DAG_ids_flush_tagged(ptr noundef %1) #21
  tail call void @BKE_main_id_tag_idcode(ptr noundef %1, i16 noundef signext 16717, i8 noundef zeroext 0) #21
  tail call void @BKE_main_id_tag_idcode(ptr noundef %1, i16 noundef signext 16716, i8 noundef zeroext 0) #21
  tail call fastcc void @scene_update_tagged_recursive(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %2)
  tail call void @sound_update_scene(ptr noundef %1, ptr noundef %2) #21
  %67 = tail call ptr @BKE_animdata_from_id(ptr noundef %2) #21
  %68 = getelementptr inbounds %struct.Scene, ptr %2, i64 0, i32 22, i32 5
  %69 = load i32, ptr %68, align 8, !tbaa !131
  %70 = sitofp i32 %69 to float
  %71 = getelementptr inbounds %struct.Scene, ptr %2, i64 0, i32 22, i32 8
  %72 = load float, ptr %71, align 4, !tbaa !378
  %73 = fadd float %72, %70
  %74 = getelementptr inbounds %struct.Scene, ptr %2, i64 0, i32 22, i32 15
  %75 = load float, ptr %74, align 4, !tbaa !152
  %76 = fmul float %73, %75
  %77 = icmp eq ptr %67, null
  br i1 %77, label %84, label %78

78:                                               ; preds = %66
  %79 = getelementptr inbounds %struct.AnimData, ptr %67, i64 0, i32 8
  %80 = load i32, ptr %79, align 4, !tbaa !400
  %81 = and i32 %80, 2
  %82 = icmp eq i32 %81, 0
  br i1 %82, label %84, label %83

83:                                               ; preds = %78
  tail call void @BKE_animsys_evaluate_animdata(ptr noundef %2, ptr noundef %2, ptr noundef nonnull %67, float noundef %76, i16 noundef signext 0) #21
  br label %84

84:                                               ; preds = %83, %78, %66
  %85 = tail call i32 @DAG_id_type_tagged(ptr noundef %1, i16 noundef signext 16717) #21
  %86 = icmp eq i32 %85, 0
  br i1 %86, label %110, label %87

87:                                               ; preds = %84
  %88 = load i32, ptr %68, align 8, !tbaa !131
  %89 = sitofp i32 %88 to float
  %90 = load float, ptr %71, align 4, !tbaa !378
  %91 = fadd float %90, %89
  %92 = load float, ptr %74, align 4, !tbaa !152
  %93 = fmul float %91, %92
  %94 = getelementptr inbounds %struct.Main, ptr %1, i64 0, i32 17
  %95 = load ptr, ptr %94, align 8, !tbaa !40
  %96 = icmp eq ptr %95, null
  br i1 %96, label %110, label %97

97:                                               ; preds = %87, %107
  %98 = phi ptr [ %108, %107 ], [ %95, %87 ]
  %99 = tail call ptr @BKE_animdata_from_id(ptr noundef nonnull %98) #21
  %100 = icmp eq ptr %99, null
  br i1 %100, label %107, label %101

101:                                              ; preds = %97
  %102 = getelementptr inbounds %struct.AnimData, ptr %99, i64 0, i32 8
  %103 = load i32, ptr %102, align 4, !tbaa !400
  %104 = and i32 %103, 2
  %105 = icmp eq i32 %104, 0
  br i1 %105, label %107, label %106

106:                                              ; preds = %101
  tail call void @BKE_animsys_evaluate_animdata(ptr noundef %2, ptr noundef nonnull %98, ptr noundef nonnull %99, float noundef %93, i16 noundef signext 0) #21
  br label %107

107:                                              ; preds = %106, %101, %97
  %108 = load ptr, ptr %98, align 8, !tbaa !40
  %109 = icmp eq ptr %108, null
  br i1 %109, label %110, label %97, !llvm.loop !401

110:                                              ; preds = %107, %87, %84
  %111 = tail call i32 @DAG_id_type_tagged(ptr noundef %1, i16 noundef signext 21582) #21
  %112 = icmp eq i32 %111, 0
  br i1 %112, label %139, label %113

113:                                              ; preds = %110
  %114 = load i32, ptr %68, align 8, !tbaa !131
  %115 = sitofp i32 %114 to float
  %116 = load float, ptr %71, align 4, !tbaa !378
  %117 = fadd float %116, %115
  %118 = load float, ptr %74, align 4, !tbaa !152
  %119 = fmul float %117, %118
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %4) #21
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #21
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %6) #21
  call void @BKE_node_tree_iter_init(ptr noundef nonnull %4, ptr noundef %1) #21
  %120 = call zeroext i8 @BKE_node_tree_iter_step(ptr noundef nonnull %4, ptr noundef nonnull %5, ptr noundef nonnull %6) #21
  %121 = icmp eq i8 %120, 1
  br i1 %121, label %122, label %138

122:                                              ; preds = %113, %135
  %123 = load ptr, ptr %5, align 8, !tbaa !40
  %124 = icmp eq ptr %123, null
  br i1 %124, label %135, label %125

125:                                              ; preds = %122
  %126 = call ptr @BKE_animdata_from_id(ptr noundef nonnull %123) #21
  %127 = icmp eq ptr %126, null
  br i1 %127, label %135, label %128

128:                                              ; preds = %125
  %129 = getelementptr inbounds %struct.AnimData, ptr %126, i64 0, i32 8
  %130 = load i32, ptr %129, align 4, !tbaa !400
  %131 = and i32 %130, 2
  %132 = icmp eq i32 %131, 0
  br i1 %132, label %135, label %133

133:                                              ; preds = %128
  %134 = load ptr, ptr %5, align 8, !tbaa !40
  call void @BKE_animsys_evaluate_animdata(ptr noundef %2, ptr noundef %134, ptr noundef nonnull %126, float noundef %119, i16 noundef signext 0) #21
  br label %135

135:                                              ; preds = %125, %128, %133, %122
  %136 = call zeroext i8 @BKE_node_tree_iter_step(ptr noundef nonnull %4, ptr noundef nonnull %5, ptr noundef nonnull %6) #21
  %137 = icmp eq i8 %136, 1
  br i1 %137, label %122, label %138, !llvm.loop !402

138:                                              ; preds = %135, %113
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %6) #21
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #21
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %4) #21
  br label %139

139:                                              ; preds = %138, %110
  call void @BLI_callback_exec(ptr noundef %1, ptr noundef %2, i32 noundef 13) #21
  call void @DAG_ids_check_recalc(ptr noundef %1, ptr noundef %2, i8 noundef zeroext 0) #21
  call void @DAG_ids_clear_recalc(ptr noundef %1) #21
  ret void
}

declare void @BLI_callback_exec(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

declare void @DAG_scene_relations_update(ptr noundef, ptr noundef) local_unnamed_addr #3

declare void @DAG_ids_flush_tagged(ptr noundef) local_unnamed_addr #3

declare void @BKE_main_id_tag_idcode(ptr noundef, i16 noundef signext, i8 noundef zeroext) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define internal fastcc void @scene_update_tagged_recursive(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) unnamed_addr #0 {
  %5 = alloca %struct.ThreadedObjectUpdateState, align 8
  %6 = getelementptr inbounds %struct.Scene, ptr %3, i64 0, i32 42
  %7 = load i64, ptr %6, align 8, !tbaa !403
  %8 = getelementptr inbounds %struct.Scene, ptr %2, i64 0, i32 42
  store i64 %7, ptr %8, align 8, !tbaa !403
  %9 = getelementptr inbounds %struct.Scene, ptr %2, i64 0, i32 4
  %10 = load ptr, ptr %9, align 8, !tbaa !85
  %11 = icmp eq ptr %10, null
  br i1 %11, label %13, label %12

12:                                               ; preds = %4
  tail call fastcc void @scene_update_tagged_recursive(ptr noundef %0, ptr noundef %1, ptr noundef nonnull %10, ptr noundef %3)
  br label %13

13:                                               ; preds = %12, %4
  %14 = tail call ptr @BLI_task_scheduler_get() #21
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %5) #21
  %15 = tail call i32 @DAG_id_type_tagged(ptr noundef %1, i16 noundef signext 16975) #21
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %17, label %44

17:                                               ; preds = %13
  %18 = tail call i32 @DAG_id_type_tagged(ptr noundef %1, i16 noundef signext 17741) #21
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %20, label %44

20:                                               ; preds = %17
  %21 = tail call i32 @DAG_id_type_tagged(ptr noundef %1, i16 noundef signext 21827) #21
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %23, label %44

23:                                               ; preds = %20
  %24 = tail call i32 @DAG_id_type_tagged(ptr noundef %1, i16 noundef signext 16973) #21
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %26, label %44

26:                                               ; preds = %23
  %27 = tail call i32 @DAG_id_type_tagged(ptr noundef %1, i16 noundef signext 16716) #21
  %28 = icmp eq i32 %27, 0
  br i1 %28, label %29, label %44

29:                                               ; preds = %26
  %30 = tail call i32 @DAG_id_type_tagged(ptr noundef %1, i16 noundef signext 21580) #21
  %31 = icmp eq i32 %30, 0
  br i1 %31, label %32, label %44

32:                                               ; preds = %29
  %33 = tail call i32 @DAG_id_type_tagged(ptr noundef %1, i16 noundef signext 16707) #21
  %34 = icmp eq i32 %33, 0
  br i1 %34, label %35, label %44

35:                                               ; preds = %32
  %36 = tail call i32 @DAG_id_type_tagged(ptr noundef %1, i16 noundef signext 17739) #21
  %37 = icmp eq i32 %36, 0
  br i1 %37, label %38, label %44

38:                                               ; preds = %35
  %39 = tail call i32 @DAG_id_type_tagged(ptr noundef %1, i16 noundef signext 19283) #21
  %40 = icmp eq i32 %39, 0
  br i1 %40, label %41, label %44

41:                                               ; preds = %38
  %42 = tail call i32 @DAG_id_type_tagged(ptr noundef %1, i16 noundef signext 21057) #21
  %43 = icmp eq i32 %42, 0
  br i1 %43, label %135, label %44

44:                                               ; preds = %38, %35, %32, %29, %26, %23, %20, %17, %13, %41
  store ptr %0, ptr %5, align 8, !tbaa !404
  %45 = getelementptr inbounds %struct.ThreadedObjectUpdateState, ptr %5, i64 0, i32 1
  store ptr %2, ptr %45, align 8, !tbaa !406
  %46 = getelementptr inbounds %struct.ThreadedObjectUpdateState, ptr %5, i64 0, i32 2
  store ptr %3, ptr %46, align 8, !tbaa !407
  %47 = load i32, ptr getelementptr inbounds (%struct.Global, ptr @G, i64 0, i32 16), align 4, !tbaa !408
  %48 = and i32 %47, 256
  %49 = icmp eq i32 %48, 0
  br i1 %49, label %54, label %50

50:                                               ; preds = %44
  %51 = getelementptr inbounds %struct.ThreadedObjectUpdateState, ptr %5, i64 0, i32 4
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(17) %51, i8 0, i64 17, i1 false)
  %52 = tail call double @PIL_check_seconds_timer() #21
  %53 = getelementptr inbounds %struct.ThreadedObjectUpdateState, ptr %5, i64 0, i32 3
  store double %52, ptr %53, align 8, !tbaa !409
  br label %54

54:                                               ; preds = %50, %44
  %55 = getelementptr inbounds %struct.ThreadedObjectUpdateState, ptr %5, i64 0, i32 6
  store i8 0, ptr %55, align 1, !tbaa !410
  %56 = call ptr @BLI_task_pool_create(ptr noundef %14, ptr noundef nonnull %5) #21
  call void @DAG_threaded_update_begin(ptr noundef %2, ptr noundef nonnull @scene_update_object_add_task, ptr noundef %56) #21
  call void @BLI_task_pool_work_and_wait(ptr noundef %56) #21
  call void @BLI_task_pool_free(ptr noundef %56) #21
  %57 = load i32, ptr getelementptr inbounds (%struct.Global, ptr @G, i64 0, i32 16), align 4, !tbaa !408
  %58 = and i32 %57, 256
  %59 = icmp eq i32 %58, 0
  br i1 %59, label %105, label %60

60:                                               ; preds = %54
  %61 = call i32 @BLI_system_thread_count() #21
  %62 = icmp sgt i32 %61, 0
  br i1 %62, label %63, label %105

63:                                               ; preds = %60
  %64 = getelementptr inbounds %struct.ThreadedObjectUpdateState, ptr %5, i64 0, i32 5
  %65 = zext nneg i32 %61 to i64
  br label %66

66:                                               ; preds = %63, %101
  %67 = phi i64 [ 0, %63 ], [ %103, %101 ]
  %68 = load i8, ptr %64, align 8, !tbaa !411
  %69 = icmp eq i8 %68, 0
  br i1 %69, label %101, label %70

70:                                               ; preds = %66
  %71 = getelementptr inbounds %struct.ThreadedObjectUpdateState, ptr %5, i64 0, i32 4, i64 %67
  %72 = load ptr, ptr %71, align 8, !tbaa !40
  %73 = icmp eq ptr %72, null
  br i1 %73, label %84, label %74

74:                                               ; preds = %70, %74
  %75 = phi ptr [ %82, %74 ], [ %72, %70 ]
  %76 = phi double [ %81, %74 ], [ 0.000000e+00, %70 ]
  %77 = phi i32 [ %78, %74 ], [ 0, %70 ]
  %78 = add nuw nsw i32 %77, 1
  %79 = getelementptr inbounds %struct.StatisicsEntry, ptr %75, i64 0, i32 4
  %80 = load double, ptr %79, align 8, !tbaa !412
  %81 = fadd double %76, %80
  %82 = load ptr, ptr %75, align 8, !tbaa !40
  %83 = icmp eq ptr %82, null
  br i1 %83, label %84, label %74, !llvm.loop !414

84:                                               ; preds = %74, %70
  %85 = phi i32 [ 0, %70 ], [ %78, %74 ]
  %86 = phi double [ 0.000000e+00, %70 ], [ %81, %74 ]
  %87 = trunc i64 %67 to i32
  %88 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.14, i32 noundef %87, i32 noundef %85, double noundef %86)
  %89 = load ptr, ptr %71, align 8, !tbaa !40
  %90 = icmp eq ptr %89, null
  br i1 %90, label %101, label %91

91:                                               ; preds = %84, %91
  %92 = phi ptr [ %99, %91 ], [ %89, %84 ]
  %93 = getelementptr inbounds %struct.StatisicsEntry, ptr %92, i64 0, i32 2
  %94 = load ptr, ptr %93, align 8, !tbaa !415
  %95 = getelementptr inbounds %struct.ID, ptr %94, i64 0, i32 4, i64 2
  %96 = getelementptr inbounds %struct.StatisicsEntry, ptr %92, i64 0, i32 4
  %97 = load double, ptr %96, align 8, !tbaa !412
  %98 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.15, ptr noundef nonnull %95, double noundef %97)
  %99 = load ptr, ptr %92, align 8, !tbaa !40
  %100 = icmp eq ptr %99, null
  br i1 %100, label %101, label %91, !llvm.loop !416

101:                                              ; preds = %91, %84, %66
  %102 = getelementptr inbounds %struct.ThreadedObjectUpdateState, ptr %5, i64 0, i32 4, i64 %67
  call void @BLI_freelistN(ptr noundef nonnull %102) #21
  %103 = add nuw nsw i64 %67, 1
  %104 = icmp eq i64 %103, %65
  br i1 %104, label %105, label %66, !llvm.loop !417

105:                                              ; preds = %101, %60, %54
  %106 = call zeroext i8 @DAG_is_acyclic(ptr noundef %2) #21
  %107 = icmp eq i8 %106, 0
  %108 = load i8, ptr %55, align 1, !tbaa !410
  %109 = zext i1 %107 to i8
  %110 = or i8 %108, %109
  %111 = icmp eq i8 %110, 0
  br i1 %111, label %135, label %112

112:                                              ; preds = %105
  %113 = getelementptr inbounds %struct.Scene, ptr %2, i64 0, i32 5
  %114 = load ptr, ptr %113, align 8, !tbaa !40
  %115 = icmp eq ptr %114, null
  br i1 %115, label %135, label %116

116:                                              ; preds = %112
  %117 = getelementptr inbounds %struct.Scene, ptr %2, i64 0, i32 47
  br label %118

118:                                              ; preds = %116, %132
  %119 = phi ptr [ %114, %116 ], [ %133, %132 ]
  %120 = getelementptr inbounds %struct.Base, ptr %119, i64 0, i32 7
  %121 = load ptr, ptr %120, align 8, !tbaa !92
  %122 = load ptr, ptr %117, align 8, !tbaa !90
  call void @BKE_object_handle_update_ex(ptr noundef %0, ptr noundef %3, ptr noundef %121, ptr noundef %122, i8 noundef zeroext 1) #21
  %123 = getelementptr inbounds %struct.Object, ptr %121, i64 0, i32 112
  %124 = load ptr, ptr %123, align 8, !tbaa !358
  %125 = icmp eq ptr %124, null
  br i1 %125, label %132, label %126

126:                                              ; preds = %118
  %127 = getelementptr inbounds %struct.Object, ptr %121, i64 0, i32 55
  %128 = load i16, ptr %127, align 8, !tbaa !357
  %129 = and i16 %128, 256
  %130 = icmp eq i16 %129, 0
  br i1 %130, label %132, label %131

131:                                              ; preds = %126
  call void @BKE_group_handle_recalc_and_update(ptr noundef %0, ptr noundef %3, ptr noundef %121, ptr noundef nonnull %124) #21
  br label %132

132:                                              ; preds = %131, %126, %118
  %133 = load ptr, ptr %119, align 8, !tbaa !40
  %134 = icmp eq ptr %133, null
  br i1 %134, label %135, label %118, !llvm.loop !418

135:                                              ; preds = %132, %112, %41, %105
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %5) #21
  %136 = getelementptr inbounds %struct.Scene, ptr %2, i64 0, i32 22, i32 5
  %137 = load i32, ptr %136, align 8, !tbaa !131
  %138 = sitofp i32 %137 to float
  %139 = getelementptr inbounds %struct.Scene, ptr %2, i64 0, i32 22, i32 8
  %140 = load float, ptr %139, align 4, !tbaa !378
  %141 = fadd float %140, %138
  %142 = getelementptr inbounds %struct.Scene, ptr %2, i64 0, i32 22, i32 15
  %143 = load float, ptr %142, align 4, !tbaa !152
  %144 = fmul float %141, %143
  %145 = getelementptr inbounds %struct.Scene, ptr %2, i64 0, i32 1
  %146 = load ptr, ptr %145, align 8, !tbaa !419
  %147 = icmp eq ptr %146, null
  br i1 %147, label %153, label %148

148:                                              ; preds = %135
  %149 = getelementptr inbounds %struct.AnimData, ptr %146, i64 0, i32 5
  %150 = load ptr, ptr %149, align 8, !tbaa !420
  %151 = icmp eq ptr %150, null
  br i1 %151, label %153, label %152

152:                                              ; preds = %148
  call void @BKE_animsys_evaluate_animdata(ptr noundef %2, ptr noundef %2, ptr noundef nonnull %146, float noundef %144, i16 noundef signext 1) #21
  br label %153

153:                                              ; preds = %152, %148, %135
  %154 = getelementptr inbounds %struct.Scene, ptr %2, i64 0, i32 3
  %155 = load ptr, ptr %154, align 8, !tbaa !84
  %156 = icmp eq ptr %155, null
  br i1 %156, label %165, label %157

157:                                              ; preds = %153
  %158 = call ptr @BKE_animdata_from_id(ptr noundef nonnull %155) #21
  %159 = icmp eq ptr %158, null
  br i1 %159, label %165, label %160

160:                                              ; preds = %157
  %161 = getelementptr inbounds %struct.AnimData, ptr %158, i64 0, i32 5
  %162 = load ptr, ptr %161, align 8, !tbaa !420
  %163 = icmp eq ptr %162, null
  br i1 %163, label %165, label %164

164:                                              ; preds = %160
  call void @BKE_animsys_evaluate_animdata(ptr noundef %2, ptr noundef nonnull %155, ptr noundef nonnull %158, float noundef %144, i16 noundef signext 1) #21
  br label %165

165:                                              ; preds = %164, %160, %157, %153
  %166 = getelementptr inbounds %struct.Scene, ptr %2, i64 0, i32 18
  %167 = load ptr, ptr %166, align 8, !tbaa !91
  %168 = icmp eq ptr %167, null
  br i1 %168, label %177, label %169

169:                                              ; preds = %165
  %170 = call ptr @BKE_animdata_from_id(ptr noundef nonnull %167) #21
  %171 = icmp eq ptr %170, null
  br i1 %171, label %177, label %172

172:                                              ; preds = %169
  %173 = getelementptr inbounds %struct.AnimData, ptr %170, i64 0, i32 5
  %174 = load ptr, ptr %173, align 8, !tbaa !420
  %175 = icmp eq ptr %174, null
  br i1 %175, label %177, label %176

176:                                              ; preds = %172
  call void @BKE_animsys_evaluate_animdata(ptr noundef %2, ptr noundef nonnull %167, ptr noundef nonnull %170, float noundef %144, i16 noundef signext 1) #21
  br label %177

177:                                              ; preds = %176, %172, %169, %165
  %178 = load ptr, ptr %154, align 8, !tbaa !84
  %179 = icmp eq ptr %178, null
  br i1 %179, label %192, label %180

180:                                              ; preds = %177
  %181 = getelementptr inbounds %struct.World, ptr %178, i64 0, i32 75
  %182 = load ptr, ptr %181, align 8, !tbaa !421
  %183 = icmp eq ptr %182, null
  br i1 %183, label %192, label %184

184:                                              ; preds = %180
  %185 = call ptr @BKE_animdata_from_id(ptr noundef nonnull %182) #21
  %186 = icmp eq ptr %185, null
  br i1 %186, label %192, label %187

187:                                              ; preds = %184
  %188 = getelementptr inbounds %struct.AnimData, ptr %185, i64 0, i32 5
  %189 = load ptr, ptr %188, align 8, !tbaa !420
  %190 = icmp eq ptr %189, null
  br i1 %190, label %192, label %191

191:                                              ; preds = %187
  call void @BKE_animsys_evaluate_animdata(ptr noundef %2, ptr noundef nonnull %182, ptr noundef nonnull %185, float noundef %144, i16 noundef signext 1) #21
  br label %192

192:                                              ; preds = %191, %187, %184, %180, %177
  %193 = getelementptr inbounds %struct.Scene, ptr %2, i64 0, i32 22, i32 60
  %194 = load ptr, ptr %193, align 8, !tbaa !40
  %195 = icmp eq ptr %194, null
  br i1 %195, label %220, label %199

196:                                              ; preds = %217, %199
  %197 = load ptr, ptr %200, align 8, !tbaa !40
  %198 = icmp eq ptr %197, null
  br i1 %198, label %220, label %199, !llvm.loop !423

199:                                              ; preds = %192, %196
  %200 = phi ptr [ %197, %196 ], [ %194, %192 ]
  %201 = getelementptr inbounds %struct.SceneRenderLayer, ptr %200, i64 0, i32 13, i32 7
  %202 = load ptr, ptr %201, align 8, !tbaa !40
  %203 = icmp eq ptr %202, null
  br i1 %203, label %196, label %204

204:                                              ; preds = %199, %217
  %205 = phi ptr [ %218, %217 ], [ %202, %199 ]
  %206 = getelementptr inbounds %struct.FreestyleLineSet, ptr %205, i64 0, i32 13
  %207 = load ptr, ptr %206, align 8, !tbaa !424
  %208 = icmp eq ptr %207, null
  br i1 %208, label %217, label %209

209:                                              ; preds = %204
  %210 = call ptr @BKE_animdata_from_id(ptr noundef nonnull %207) #21
  %211 = icmp eq ptr %210, null
  br i1 %211, label %217, label %212

212:                                              ; preds = %209
  %213 = getelementptr inbounds %struct.AnimData, ptr %210, i64 0, i32 5
  %214 = load ptr, ptr %213, align 8, !tbaa !420
  %215 = icmp eq ptr %214, null
  br i1 %215, label %217, label %216

216:                                              ; preds = %212
  call void @BKE_animsys_evaluate_animdata(ptr noundef %2, ptr noundef nonnull %207, ptr noundef nonnull %210, float noundef %144, i16 noundef signext 1) #21
  br label %217

217:                                              ; preds = %216, %212, %209, %204
  %218 = load ptr, ptr %205, align 8, !tbaa !40
  %219 = icmp eq ptr %218, null
  br i1 %219, label %196, label %204, !llvm.loop !426

220:                                              ; preds = %196, %192
  call void @BKE_mask_update_scene(ptr noundef %1, ptr noundef %2) #21
  ret void
}

declare void @sound_update_scene(ptr noundef, ptr noundef) local_unnamed_addr #3

declare ptr @BKE_animdata_from_id(ptr noundef) local_unnamed_addr #3

declare void @BKE_animsys_evaluate_animdata(ptr noundef, ptr noundef, ptr noundef, float noundef, i16 noundef signext) local_unnamed_addr #3

declare i32 @DAG_id_type_tagged(ptr noundef, i16 noundef signext) local_unnamed_addr #3

declare void @BKE_node_tree_iter_init(ptr noundef, ptr noundef) local_unnamed_addr #3

declare zeroext i8 @BKE_node_tree_iter_step(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

declare void @DAG_ids_check_recalc(ptr noundef, ptr noundef, i8 noundef zeroext) local_unnamed_addr #3

declare void @DAG_ids_clear_recalc(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define dso_local void @BKE_scene_update_for_newframe(ptr noundef %0, ptr noundef %1, ptr noundef %2, i32 noundef %3) local_unnamed_addr #0 {
  tail call void @BKE_scene_update_for_newframe_ex(ptr noundef %0, ptr noundef %1, ptr noundef %2, i32 noundef %3, i8 noundef zeroext 0)
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @BKE_scene_update_for_newframe_ex(ptr noundef %0, ptr noundef %1, ptr noundef %2, i32 noundef %3, i8 noundef zeroext %4) local_unnamed_addr #0 {
  %6 = getelementptr inbounds %struct.Scene, ptr %2, i64 0, i32 22, i32 5
  %7 = load i32, ptr %6, align 8, !tbaa !131
  %8 = sitofp i32 %7 to float
  %9 = getelementptr inbounds %struct.Scene, ptr %2, i64 0, i32 22, i32 8
  %10 = load float, ptr %9, align 4, !tbaa !378
  %11 = fadd float %10, %8
  %12 = getelementptr inbounds %struct.Scene, ptr %2, i64 0, i32 22, i32 15
  %13 = load float, ptr %12, align 4, !tbaa !152
  %14 = fmul float %11, %13
  tail call void @BLI_callback_exec(ptr noundef %1, ptr noundef %2, i32 noundef 0) #21
  tail call void @BLI_callback_exec(ptr noundef %1, ptr noundef %2, i32 noundef 12) #21
  %15 = load i32, ptr %6, align 8, !tbaa !131
  tail call void @BKE_image_update_frame(ptr noundef %1, i32 noundef %15) #21
  tail call fastcc void @scene_rebuild_rbw_recursive(ptr noundef %2, float noundef %14)
  %16 = load i32, ptr %6, align 8, !tbaa !131
  tail call void @sound_set_cfra(i32 noundef %16) #21
  %17 = icmp eq ptr %2, null
  br i1 %17, label %23, label %18

18:                                               ; preds = %5, %18
  %19 = phi ptr [ %21, %18 ], [ %2, %5 ]
  tail call void @DAG_scene_relations_update(ptr noundef %1, ptr noundef nonnull %19) #21
  %20 = getelementptr inbounds %struct.Scene, ptr %19, i64 0, i32 4
  %21 = load ptr, ptr %20, align 8, !tbaa !85
  %22 = icmp eq ptr %21, null
  br i1 %22, label %23, label %18, !llvm.loop !427

23:                                               ; preds = %18, %5
  tail call void @DAG_ids_flush_tagged(ptr noundef %1) #21
  tail call void @DAG_scene_update_flags(ptr noundef %1, ptr noundef %2, i32 noundef %3, i8 noundef zeroext 1, i8 noundef zeroext %4) #21
  tail call void @BKE_mask_evaluate_all_masks(ptr noundef %1, float noundef %14, i8 noundef zeroext 1) #21
  tail call void @BKE_animsys_evaluate_all_animation(ptr noundef %1, ptr noundef %2, float noundef %14) #21
  tail call void @BKE_main_id_tag_idcode(ptr noundef %1, i16 noundef signext 16717, i8 noundef zeroext 0) #21
  tail call void @BKE_main_id_tag_idcode(ptr noundef %1, i16 noundef signext 16716, i8 noundef zeroext 0) #21
  tail call fastcc void @scene_do_rb_simulation_recursive(ptr noundef %2, float noundef %14)
  tail call fastcc void @scene_update_tagged_recursive(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %2)
  tail call void @sound_update_scene(ptr noundef %1, ptr noundef %2) #21
  tail call fastcc void @scene_depsgraph_hack(ptr noundef %0, ptr noundef %2, ptr noundef %2)
  tail call void @BLI_callback_exec(ptr noundef %1, ptr noundef %2, i32 noundef 13) #21
  tail call void @BLI_callback_exec(ptr noundef %1, ptr noundef %2, i32 noundef 1) #21
  tail call void @DAG_ids_check_recalc(ptr noundef %1, ptr noundef %2, i8 noundef zeroext 1) #21
  tail call void @DAG_ids_clear_recalc(ptr noundef %1) #21
  ret void
}

declare void @BKE_image_update_frame(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define internal fastcc void @scene_rebuild_rbw_recursive(ptr noundef %0, float noundef %1) unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.Scene, ptr %0, i64 0, i32 4
  %4 = load ptr, ptr %3, align 8, !tbaa !85
  %5 = icmp eq ptr %4, null
  br i1 %5, label %7, label %6

6:                                                ; preds = %2
  tail call fastcc void @scene_rebuild_rbw_recursive(ptr noundef nonnull %4, float noundef %1)
  br label %7

7:                                                ; preds = %6, %2
  %8 = icmp eq ptr %0, null
  br i1 %8, label %23, label %9

9:                                                ; preds = %7
  %10 = getelementptr inbounds %struct.Scene, ptr %0, i64 0, i32 47
  %11 = load ptr, ptr %10, align 8, !tbaa !90
  %12 = icmp eq ptr %11, null
  br i1 %12, label %23, label %13

13:                                               ; preds = %9
  %14 = getelementptr inbounds %struct.RigidBodyWorld, ptr %11, i64 0, i32 1
  %15 = load ptr, ptr %14, align 8, !tbaa !428
  %16 = icmp eq ptr %15, null
  br i1 %16, label %23, label %17

17:                                               ; preds = %13
  %18 = getelementptr inbounds %struct.RigidBodyWorld, ptr %11, i64 0, i32 11
  %19 = load i32, ptr %18, align 8, !tbaa !430
  %20 = and i32 %19, 1
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %22, label %23

22:                                               ; preds = %17
  tail call void @BKE_rigidbody_rebuild_world(ptr noundef nonnull %0, float noundef %1) #21
  br label %23

23:                                               ; preds = %13, %9, %7, %22, %17
  ret void
}

declare void @sound_set_cfra(i32 noundef) local_unnamed_addr #3

declare void @DAG_scene_update_flags(ptr noundef, ptr noundef, i32 noundef, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #3

declare void @BKE_mask_evaluate_all_masks(ptr noundef, float noundef, i8 noundef zeroext) local_unnamed_addr #3

declare void @BKE_animsys_evaluate_all_animation(ptr noundef, ptr noundef, float noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define internal fastcc void @scene_do_rb_simulation_recursive(ptr noundef %0, float noundef %1) unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.Scene, ptr %0, i64 0, i32 4
  %4 = load ptr, ptr %3, align 8, !tbaa !85
  %5 = icmp eq ptr %4, null
  br i1 %5, label %7, label %6

6:                                                ; preds = %2
  tail call fastcc void @scene_do_rb_simulation_recursive(ptr noundef nonnull %4, float noundef %1)
  br label %7

7:                                                ; preds = %6, %2
  %8 = icmp eq ptr %0, null
  br i1 %8, label %23, label %9

9:                                                ; preds = %7
  %10 = getelementptr inbounds %struct.Scene, ptr %0, i64 0, i32 47
  %11 = load ptr, ptr %10, align 8, !tbaa !90
  %12 = icmp eq ptr %11, null
  br i1 %12, label %23, label %13

13:                                               ; preds = %9
  %14 = getelementptr inbounds %struct.RigidBodyWorld, ptr %11, i64 0, i32 1
  %15 = load ptr, ptr %14, align 8, !tbaa !428
  %16 = icmp eq ptr %15, null
  br i1 %16, label %23, label %17

17:                                               ; preds = %13
  %18 = getelementptr inbounds %struct.RigidBodyWorld, ptr %11, i64 0, i32 11
  %19 = load i32, ptr %18, align 8, !tbaa !430
  %20 = and i32 %19, 1
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %22, label %23

22:                                               ; preds = %17
  tail call void @BKE_rigidbody_do_simulation(ptr noundef nonnull %0, float noundef %1) #21
  br label %23

23:                                               ; preds = %13, %9, %7, %22, %17
  ret void
}

; Function Attrs: nounwind uwtable
define internal fastcc void @scene_depsgraph_hack(ptr noundef %0, ptr nocapture noundef %1, ptr noundef %2) unnamed_addr #0 {
  %4 = getelementptr inbounds %struct.Scene, ptr %2, i64 0, i32 42
  %5 = load i64, ptr %4, align 8, !tbaa !403
  %6 = getelementptr inbounds %struct.Scene, ptr %1, i64 0, i32 42
  store i64 %5, ptr %6, align 8, !tbaa !403
  %7 = getelementptr inbounds %struct.Scene, ptr %1, i64 0, i32 4
  %8 = load ptr, ptr %7, align 8, !tbaa !85
  %9 = icmp eq ptr %8, null
  br i1 %9, label %11, label %10

10:                                               ; preds = %3
  tail call fastcc void @scene_depsgraph_hack(ptr noundef %0, ptr noundef nonnull %8, ptr noundef %2)
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
  %20 = load i8, ptr %19, align 1, !tbaa !431
  %21 = icmp eq i8 %20, 0
  br i1 %21, label %52, label %22

22:                                               ; preds = %15
  %23 = and i8 %20, 3
  %24 = getelementptr inbounds %struct.Object, ptr %18, i64 0, i32 103
  %25 = load i8, ptr %24, align 1, !tbaa !432
  %26 = or i8 %25, %23
  store i8 %26, ptr %24, align 1, !tbaa !432
  tail call void @BKE_object_handle_update(ptr noundef %0, ptr noundef %2, ptr noundef %18) #21
  %27 = getelementptr inbounds %struct.Object, ptr %18, i64 0, i32 112
  %28 = load ptr, ptr %27, align 8, !tbaa !358
  %29 = icmp eq ptr %28, null
  br i1 %29, label %52, label %30

30:                                               ; preds = %22
  %31 = getelementptr inbounds %struct.Object, ptr %18, i64 0, i32 55
  %32 = load i16, ptr %31, align 8, !tbaa !357
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
  %42 = load ptr, ptr %41, align 8, !tbaa !320
  %43 = icmp eq ptr %42, null
  br i1 %43, label %48, label %44

44:                                               ; preds = %39
  %45 = getelementptr inbounds %struct.Object, ptr %42, i64 0, i32 103
  %46 = load i8, ptr %45, align 1, !tbaa !432
  %47 = or i8 %46, %23
  store i8 %47, ptr %45, align 1, !tbaa !432
  br label %48

48:                                               ; preds = %39, %44
  %49 = load ptr, ptr %40, align 8, !tbaa !40
  %50 = icmp eq ptr %49, null
  br i1 %50, label %51, label %39, !llvm.loop !433

51:                                               ; preds = %48, %35
  tail call void @BKE_group_handle_recalc_and_update(ptr noundef %0, ptr noundef %2, ptr noundef %18, ptr noundef nonnull %28) #21
  br label %52

52:                                               ; preds = %22, %30, %51, %15
  %53 = load ptr, ptr %16, align 8, !tbaa !40
  %54 = icmp eq ptr %53, null
  br i1 %54, label %55, label %15, !llvm.loop !434

55:                                               ; preds = %52, %11
  ret void
}

declare void @BLI_uniquename(ptr noundef, ptr noundef, ptr noundef, i8 noundef zeroext, i32 noundef, i32 noundef) local_unnamed_addr #3

declare void @BLI_addtail(ptr noundef, ptr noundef) local_unnamed_addr #3

declare void @BKE_freestyle_config_init(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define dso_local noundef zeroext i8 @BKE_scene_remove_render_layer(ptr nocapture noundef readonly %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #0 {
  %4 = getelementptr inbounds %struct.Scene, ptr %1, i64 0, i32 22, i32 60
  %5 = tail call i32 @BLI_findindex(ptr noundef nonnull %4, ptr noundef %2) #21
  %6 = icmp eq i32 %5, -1
  br i1 %6, label %55, label %7

7:                                                ; preds = %3
  %8 = load ptr, ptr %4, align 8, !tbaa !435
  %9 = getelementptr inbounds %struct.Scene, ptr %1, i64 0, i32 22, i32 60, i32 1
  %10 = load ptr, ptr %9, align 8, !tbaa !436
  %11 = icmp eq ptr %8, %10
  %12 = icmp eq ptr %8, %2
  %13 = and i1 %12, %11
  br i1 %13, label %55, label %14

14:                                               ; preds = %7
  tail call void @BLI_remlink(ptr noundef nonnull %4, ptr noundef %2) #21
  %15 = load ptr, ptr @MEM_freeN, align 8, !tbaa !40
  tail call void %15(ptr noundef %2) #21
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
  %32 = load i16, ptr %31, align 4, !tbaa !437
  %33 = icmp eq i16 %32, 221
  br i1 %33, label %34, label %49

34:                                               ; preds = %29
  %35 = getelementptr inbounds %struct.bNode, ptr %30, i64 0, i32 20
  %36 = load ptr, ptr %35, align 8, !tbaa !329
  %37 = icmp eq ptr %36, %1
  br i1 %37, label %38, label %49

38:                                               ; preds = %34
  %39 = getelementptr inbounds %struct.bNode, ptr %30, i64 0, i32 33
  %40 = load i16, ptr %39, align 8, !tbaa !438
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
  store i16 %48, ptr %39, align 8, !tbaa !438
  br label %49

49:                                               ; preds = %47, %29, %34, %43
  %50 = load ptr, ptr %30, align 8, !tbaa !40
  %51 = icmp eq ptr %50, null
  br i1 %51, label %52, label %29, !llvm.loop !439

52:                                               ; preds = %49, %25, %20
  %53 = load ptr, ptr %21, align 8, !tbaa !40
  %54 = icmp eq ptr %53, null
  br i1 %54, label %55, label %20, !llvm.loop !440

55:                                               ; preds = %52, %14, %7, %3
  %56 = phi i8 [ 0, %3 ], [ 0, %7 ], [ 1, %14 ], [ 1, %52 ]
  ret i8 %56
}

declare i32 @BLI_findindex(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local i32 @get_render_subsurf_level(ptr nocapture noundef readonly %0, i32 noundef %1) local_unnamed_addr #9 {
  %3 = getelementptr inbounds %struct.RenderData, ptr %0, i64 0, i32 47
  %4 = load i32, ptr %3, align 8, !tbaa !441
  %5 = and i32 %4, 16777216
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %12, label %7

7:                                                ; preds = %2
  %8 = getelementptr inbounds %struct.RenderData, ptr %0, i64 0, i32 96
  %9 = load i16, ptr %8, align 4, !tbaa !442
  %10 = sext i16 %9 to i32
  %11 = tail call i32 @llvm.smin.i32(i32 %10, i32 %1)
  br label %12

12:                                               ; preds = %2, %7
  %13 = phi i32 [ %11, %7 ], [ %1, %2 ]
  ret i32 %13
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local i32 @get_render_child_particle_number(ptr nocapture noundef readonly %0, i32 noundef %1) local_unnamed_addr #9 {
  %3 = getelementptr inbounds %struct.RenderData, ptr %0, i64 0, i32 47
  %4 = load i32, ptr %3, align 8, !tbaa !441
  %5 = and i32 %4, 16777216
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %13, label %7

7:                                                ; preds = %2
  %8 = getelementptr inbounds %struct.RenderData, ptr %0, i64 0, i32 98
  %9 = load float, ptr %8, align 8, !tbaa !443
  %10 = sitofp i32 %1 to float
  %11 = fmul float %9, %10
  %12 = fptosi float %11 to i32
  br label %13

13:                                               ; preds = %2, %7
  %14 = phi i32 [ %12, %7 ], [ %1, %2 ]
  ret i32 %14
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local i32 @get_render_shadow_samples(ptr nocapture noundef readonly %0, i32 noundef %1) local_unnamed_addr #9 {
  %3 = getelementptr inbounds %struct.RenderData, ptr %0, i64 0, i32 47
  %4 = load i32, ptr %3, align 8, !tbaa !441
  %5 = and i32 %4, 16777216
  %6 = icmp ne i32 %5, 0
  %7 = icmp sgt i32 %1, 0
  %8 = and i1 %7, %6
  br i1 %8, label %9, label %14

9:                                                ; preds = %2
  %10 = getelementptr inbounds %struct.RenderData, ptr %0, i64 0, i32 97
  %11 = load i16, ptr %10, align 2, !tbaa !444
  %12 = sext i16 %11 to i32
  %13 = tail call i32 @llvm.smin.i32(i32 %12, i32 %1)
  br label %14

14:                                               ; preds = %2, %9
  %15 = phi i32 [ %13, %9 ], [ %1, %2 ]
  ret i32 %15
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local float @get_render_aosss_error(ptr nocapture noundef readonly %0, float noundef %1) local_unnamed_addr #9 {
  %3 = getelementptr inbounds %struct.RenderData, ptr %0, i64 0, i32 47
  %4 = load i32, ptr %3, align 8, !tbaa !441
  %5 = and i32 %4, 16777216
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %13, label %7

7:                                                ; preds = %2
  %8 = getelementptr inbounds %struct.RenderData, ptr %0, i64 0, i32 99
  %9 = load float, ptr %8, align 4, !tbaa !445
  %10 = fsub float 1.000000e+00, %9
  %11 = tail call float @llvm.fmuladd.f32(float %10, float 1.000000e+01, float 1.000000e+00)
  %12 = fmul float %11, %1
  br label %13

13:                                               ; preds = %2, %7
  %14 = phi float [ %12, %7 ], [ %1, %2 ]
  ret float %14
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fmuladd.f32(float, float, float) #12

; Function Attrs: nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local ptr @_setlooper_base_step(ptr nocapture noundef %0, ptr noundef readonly %1) local_unnamed_addr #4 {
  %3 = icmp eq ptr %1, null
  br i1 %3, label %7, label %4

4:                                                ; preds = %2
  %5 = load ptr, ptr %1, align 8, !tbaa !355
  %6 = icmp eq ptr %5, null
  br i1 %6, label %12, label %23

7:                                                ; preds = %2
  %8 = load ptr, ptr %0, align 8, !tbaa !40
  %9 = getelementptr inbounds %struct.Scene, ptr %8, i64 0, i32 5
  %10 = load ptr, ptr %9, align 8, !tbaa !353
  %11 = icmp eq ptr %10, null
  br i1 %11, label %12, label %23

12:                                               ; preds = %4, %7
  %13 = load ptr, ptr %0, align 8, !tbaa !40
  br label %14

14:                                               ; preds = %19, %12
  %15 = phi ptr [ %17, %19 ], [ %13, %12 ]
  %16 = getelementptr inbounds %struct.Scene, ptr %15, i64 0, i32 4
  %17 = load ptr, ptr %16, align 8, !tbaa !85
  store ptr %17, ptr %0, align 8, !tbaa !40
  %18 = icmp eq ptr %17, null
  br i1 %18, label %23, label %19

19:                                               ; preds = %14
  %20 = getelementptr inbounds %struct.Scene, ptr %17, i64 0, i32 5
  %21 = load ptr, ptr %20, align 8, !tbaa !353
  %22 = icmp eq ptr %21, null
  br i1 %22, label %14, label %23, !llvm.loop !446

23:                                               ; preds = %14, %19, %7, %4
  %24 = phi ptr [ %5, %4 ], [ %10, %7 ], [ %21, %19 ], [ null, %14 ]
  ret ptr %24
}

; Function Attrs: nounwind uwtable
define dso_local zeroext i8 @BKE_scene_use_new_shading_nodes(ptr noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.Scene, ptr %0, i64 0, i32 22, i32 115
  %3 = tail call ptr @RE_engines_find(ptr noundef nonnull %2) #21
  %4 = icmp eq ptr %3, null
  br i1 %4, label %11, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.RenderEngineType, ptr %3, i64 0, i32 4
  %7 = load i32, ptr %6, align 8, !tbaa !447
  %8 = trunc i32 %7 to i8
  %9 = lshr i8 %8, 4
  %10 = and i8 %9, 1
  br label %11

11:                                               ; preds = %5, %1
  %12 = phi i8 [ 0, %1 ], [ %10, %5 ]
  ret i8 %12
}

declare ptr @RE_engines_find(ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree nounwind willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local zeroext i8 @BKE_scene_uses_blender_internal(ptr nocapture noundef readonly %0) local_unnamed_addr #13 {
  %2 = getelementptr inbounds %struct.Scene, ptr %0, i64 0, i32 22, i32 115
  %3 = load ptr, ptr @RE_engine_id_BLENDER_RENDER, align 8, !tbaa !40
  %4 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %2, ptr noundef nonnull dereferenceable(1) %3) #22
  %5 = icmp eq i32 %4, 0
  %6 = zext i1 %5 to i8
  ret i8 %6
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read)
declare i32 @strcmp(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #14

; Function Attrs: mustprogress nofree nounwind willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local zeroext i8 @BKE_scene_uses_blender_game(ptr nocapture noundef readonly %0) local_unnamed_addr #13 {
  %2 = getelementptr inbounds %struct.Scene, ptr %0, i64 0, i32 22, i32 115
  %3 = load ptr, ptr @RE_engine_id_BLENDER_GAME, align 8, !tbaa !40
  %4 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %2, ptr noundef nonnull dereferenceable(1) %3) #22
  %5 = icmp eq i32 %4, 0
  %6 = zext i1 %5 to i8
  ret i8 %6
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @BKE_scene_base_flag_to_objects(ptr nocapture noundef readonly %0) local_unnamed_addr #7 {
  %2 = getelementptr inbounds %struct.Scene, ptr %0, i64 0, i32 5
  %3 = load ptr, ptr %2, align 8, !tbaa !40
  %4 = icmp eq ptr %3, null
  br i1 %4, label %15, label %5

5:                                                ; preds = %1, %5
  %6 = phi ptr [ %13, %5 ], [ %3, %1 ]
  %7 = getelementptr inbounds %struct.Base, ptr %6, i64 0, i32 4
  %8 = load i32, ptr %7, align 8, !tbaa !326
  %9 = trunc i32 %8 to i16
  %10 = getelementptr inbounds %struct.Base, ptr %6, i64 0, i32 7
  %11 = load ptr, ptr %10, align 8, !tbaa !92
  %12 = getelementptr inbounds %struct.Object, ptr %11, i64 0, i32 53
  store i16 %9, ptr %12, align 4, !tbaa !317
  %13 = load ptr, ptr %6, align 8, !tbaa !40
  %14 = icmp eq ptr %13, null
  br i1 %14, label %15, label %5, !llvm.loop !450

15:                                               ; preds = %5, %1
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @BKE_scene_base_flag_from_objects(ptr nocapture noundef readonly %0) local_unnamed_addr #7 {
  %2 = getelementptr inbounds %struct.Scene, ptr %0, i64 0, i32 5
  %3 = load ptr, ptr %2, align 8, !tbaa !40
  %4 = icmp eq ptr %3, null
  br i1 %4, label %15, label %5

5:                                                ; preds = %1, %5
  %6 = phi ptr [ %13, %5 ], [ %3, %1 ]
  %7 = getelementptr inbounds %struct.Base, ptr %6, i64 0, i32 7
  %8 = load ptr, ptr %7, align 8, !tbaa !92
  %9 = getelementptr inbounds %struct.Object, ptr %8, i64 0, i32 53
  %10 = load i16, ptr %9, align 4, !tbaa !317
  %11 = sext i16 %10 to i32
  %12 = getelementptr inbounds %struct.Base, ptr %6, i64 0, i32 4
  store i32 %11, ptr %12, align 8, !tbaa !326
  %13 = load ptr, ptr %6, align 8, !tbaa !40
  %14 = icmp eq ptr %13, null
  br i1 %14, label %15, label %5, !llvm.loop !451

15:                                               ; preds = %5, %1
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @BKE_scene_disable_color_management(ptr noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.Scene, ptr %0, i64 0, i32 45
  %3 = tail call ptr @IMB_colormanagement_display_get_none_name() #21
  %4 = tail call ptr @BLI_strncpy(ptr noundef nonnull %2, ptr noundef %3, i64 noundef 64) #21
  %5 = tail call ptr @IMB_colormanagement_view_get_default_name(ptr noundef nonnull %2) #21
  %6 = icmp eq ptr %5, null
  br i1 %6, label %10, label %7

7:                                                ; preds = %1
  %8 = getelementptr inbounds %struct.Scene, ptr %0, i64 0, i32 44, i32 3
  %9 = tail call ptr @BLI_strncpy(ptr noundef nonnull %8, ptr noundef nonnull %5, i64 noundef 64) #21
  br label %10

10:                                               ; preds = %7, %1
  ret void
}

declare ptr @IMB_colormanagement_display_get_none_name() local_unnamed_addr #3

declare ptr @IMB_colormanagement_view_get_default_name(ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read) uwtable
define dso_local zeroext i8 @BKE_scene_check_color_management_enabled(ptr nocapture noundef readonly %0) local_unnamed_addr #15 {
  %2 = getelementptr inbounds %struct.Scene, ptr %0, i64 0, i32 45
  %3 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %2, ptr noundef nonnull dereferenceable(5) @.str.10) #22
  %4 = icmp ne i32 %3, 0
  %5 = zext i1 %4 to i8
  ret i8 %5
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local zeroext i8 @BKE_scene_check_rigidbody_active(ptr noundef readonly %0) local_unnamed_addr #16 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %17, label %3

3:                                                ; preds = %1
  %4 = getelementptr inbounds %struct.Scene, ptr %0, i64 0, i32 47
  %5 = load ptr, ptr %4, align 8, !tbaa !90
  %6 = icmp eq ptr %5, null
  br i1 %6, label %17, label %7

7:                                                ; preds = %3
  %8 = getelementptr inbounds %struct.RigidBodyWorld, ptr %5, i64 0, i32 1
  %9 = load ptr, ptr %8, align 8, !tbaa !428
  %10 = icmp eq ptr %9, null
  br i1 %10, label %17, label %11

11:                                               ; preds = %7
  %12 = getelementptr inbounds %struct.RigidBodyWorld, ptr %5, i64 0, i32 11
  %13 = load i32, ptr %12, align 8, !tbaa !430
  %14 = trunc i32 %13 to i8
  %15 = and i8 %14, 1
  %16 = xor i8 %15, 1
  br label %17

17:                                               ; preds = %11, %7, %3, %1
  %18 = phi i8 [ 0, %7 ], [ 0, %3 ], [ 0, %1 ], [ %16, %11 ]
  ret i8 %18
}

; Function Attrs: nounwind uwtable
define dso_local i32 @BKE_render_num_threads(ptr nocapture noundef readonly %0) local_unnamed_addr #0 {
  %2 = tail call i32 @BLI_system_num_threads_override_get() #21
  %3 = icmp sgt i32 %2, 0
  br i1 %3, label %18, label %4

4:                                                ; preds = %1
  %5 = getelementptr inbounds %struct.RenderData, ptr %0, i64 0, i32 47
  %6 = load i32, ptr %5, align 8, !tbaa !441
  %7 = and i32 %6, 524288
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %13, label %9

9:                                                ; preds = %4
  %10 = getelementptr inbounds %struct.RenderData, ptr %0, i64 0, i32 14
  %11 = load i16, ptr %10, align 2, !tbaa !452
  %12 = sext i16 %11 to i32
  br label %15

13:                                               ; preds = %4
  %14 = tail call i32 @BLI_system_thread_count() #21
  br label %15

15:                                               ; preds = %13, %9
  %16 = phi i32 [ %12, %9 ], [ %14, %13 ]
  %17 = tail call i32 @llvm.smax.i32(i32 %16, i32 1)
  br label %18

18:                                               ; preds = %1, %15
  %19 = phi i32 [ %17, %15 ], [ %2, %1 ]
  ret i32 %19
}

declare i32 @BLI_system_num_threads_override_get() local_unnamed_addr #3

declare i32 @BLI_system_thread_count() local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define dso_local i32 @BKE_scene_num_threads(ptr nocapture noundef readonly %0) local_unnamed_addr #0 {
  %2 = tail call i32 @BLI_system_num_threads_override_get() #21
  %3 = icmp sgt i32 %2, 0
  br i1 %3, label %18, label %4

4:                                                ; preds = %1
  %5 = getelementptr inbounds %struct.Scene, ptr %0, i64 0, i32 22, i32 47
  %6 = load i32, ptr %5, align 8, !tbaa !441
  %7 = and i32 %6, 524288
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %13, label %9

9:                                                ; preds = %4
  %10 = getelementptr inbounds %struct.Scene, ptr %0, i64 0, i32 22, i32 14
  %11 = load i16, ptr %10, align 2, !tbaa !452
  %12 = sext i16 %11 to i32
  br label %15

13:                                               ; preds = %4
  %14 = tail call i32 @BLI_system_thread_count() #21
  br label %15

15:                                               ; preds = %13, %9
  %16 = phi i32 [ %12, %9 ], [ %14, %13 ]
  %17 = tail call i32 @llvm.smax.i32(i32 %16, i32 1)
  br label %18

18:                                               ; preds = %1, %15
  %19 = phi i32 [ %17, %15 ], [ %2, %1 ]
  ret i32 %19
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(write, argmem: readwrite) uwtable
define dso_local double @BKE_scene_unit_scale(ptr nocapture noundef readonly %0, i32 noundef %1, double noundef %2) local_unnamed_addr #17 {
  %4 = getelementptr inbounds %struct.UnitSettings, ptr %0, i64 0, i32 1
  %5 = load i8, ptr %4, align 4, !tbaa !453
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
  %9 = load float, ptr %0, align 4, !tbaa !454
  %10 = fpext float %9 to double
  %11 = fmul double %10, %2
  br label %27

12:                                               ; preds = %7
  %13 = load float, ptr %0, align 4, !tbaa !454
  %14 = fpext float %13 to double
  %15 = fmul double %14, %14
  %16 = fmul double %15, %2
  br label %27

17:                                               ; preds = %7
  %18 = load float, ptr %0, align 4, !tbaa !454
  %19 = fpext float %18 to double
  %20 = tail call double @pow(double noundef %19, double noundef 3.000000e+00) #21
  %21 = fmul double %20, %2
  br label %27

22:                                               ; preds = %7
  %23 = load float, ptr %0, align 4, !tbaa !454
  %24 = fpext float %23 to double
  %25 = tail call double @pow(double noundef %24, double noundef 3.000000e+00) #21
  %26 = fmul double %25, %2
  br label %27

27:                                               ; preds = %7, %3, %22, %17, %12, %8
  %28 = phi double [ %26, %22 ], [ %21, %17 ], [ %16, %12 ], [ %11, %8 ], [ %2, %3 ], [ %2, %7 ]
  ret double %28
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(write)
declare double @pow(double noundef, double noundef) local_unnamed_addr #18

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read)
declare ptr @strstr(ptr noundef, ptr nocapture noundef) local_unnamed_addr #14

declare void @action_groups_remove_channel(ptr noundef, ptr noundef) local_unnamed_addr #3

declare void @free_fcurve(ptr noundef) local_unnamed_addr #3

declare void @BM_mesh_bm_to_me(ptr noundef, ptr noundef, i8 noundef zeroext) local_unnamed_addr #3

declare void @DAG_id_tag_update(ptr noundef, i16 noundef signext) local_unnamed_addr #3

declare void @BKE_mask_update_scene(ptr noundef, ptr noundef) local_unnamed_addr #3

declare ptr @BLI_task_scheduler_get() local_unnamed_addr #3

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #19

declare double @PIL_check_seconds_timer() local_unnamed_addr #3

declare ptr @BLI_task_pool_create(ptr noundef, ptr noundef) local_unnamed_addr #3

declare void @DAG_threaded_update_begin(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define internal void @scene_update_object_add_task(ptr noundef %0, ptr noundef %1) #0 {
  tail call void @BLI_task_pool_push(ptr noundef %1, ptr noundef nonnull @scene_update_object_func, ptr noundef %0, i8 noundef zeroext 0, i32 noundef 0) #21
  ret void
}

declare void @BLI_task_pool_work_and_wait(ptr noundef) local_unnamed_addr #3

declare void @BLI_task_pool_free(ptr noundef) local_unnamed_addr #3

declare zeroext i8 @DAG_is_acyclic(ptr noundef) local_unnamed_addr #3

declare void @BLI_task_pool_push(ptr noundef, ptr noundef, ptr noundef, i8 noundef zeroext, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define internal void @scene_update_object_func(ptr noundef %0, ptr noundef %1, i32 noundef %2) #0 {
  %4 = tail call ptr @BLI_task_pool_userdata(ptr noundef %0) #21
  %5 = tail call ptr @DAG_get_node_object(ptr noundef %1) #21
  %6 = load ptr, ptr %4, align 8, !tbaa !404
  %7 = getelementptr inbounds %struct.ThreadedObjectUpdateState, ptr %4, i64 0, i32 1
  %8 = load ptr, ptr %7, align 8, !tbaa !406
  %9 = getelementptr inbounds %struct.ThreadedObjectUpdateState, ptr %4, i64 0, i32 2
  %10 = load ptr, ptr %9, align 8, !tbaa !407
  %11 = icmp eq ptr %5, null
  br i1 %11, label %52, label %12

12:                                               ; preds = %3
  %13 = getelementptr inbounds %struct.Object, ptr %5, i64 0, i32 3
  %14 = load i16, ptr %13, align 8, !tbaa !366
  %15 = icmp eq i16 %14, 5
  br i1 %15, label %16, label %18

16:                                               ; preds = %12
  %17 = getelementptr inbounds %struct.ThreadedObjectUpdateState, ptr %4, i64 0, i32 6
  store i8 1, ptr %17, align 1, !tbaa !410
  br label %52

18:                                               ; preds = %12
  %19 = load i32, ptr getelementptr inbounds (%struct.Global, ptr @G, i64 0, i32 16), align 4, !tbaa !408
  %20 = and i32 %19, 256
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %37, label %22

22:                                               ; preds = %18
  %23 = getelementptr inbounds %struct.Object, ptr %5, i64 0, i32 103
  %24 = load i8, ptr %23, align 1, !tbaa !432
  %25 = and i8 %24, 7
  %26 = icmp eq i8 %25, 0
  br i1 %26, label %30, label %27

27:                                               ; preds = %22
  %28 = getelementptr inbounds %struct.ID, ptr %5, i64 0, i32 4
  %29 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.12, i32 noundef %2, ptr noundef nonnull %28)
  br label %30

30:                                               ; preds = %27, %22
  %31 = tail call double @PIL_check_seconds_timer() #21
  %32 = load i8, ptr %23, align 1, !tbaa !432
  %33 = and i8 %32, 7
  %34 = icmp eq i8 %33, 0
  br i1 %34, label %37, label %35

35:                                               ; preds = %30
  %36 = getelementptr inbounds %struct.ThreadedObjectUpdateState, ptr %4, i64 0, i32 5
  store i8 1, ptr %36, align 8, !tbaa !411
  br label %37

37:                                               ; preds = %30, %35, %18
  %38 = phi i1 [ false, %35 ], [ true, %30 ], [ true, %18 ]
  %39 = phi double [ %31, %35 ], [ %31, %30 ], [ 0.000000e+00, %18 ]
  %40 = getelementptr inbounds %struct.Scene, ptr %8, i64 0, i32 47
  %41 = load ptr, ptr %40, align 8, !tbaa !90
  tail call void @BKE_object_handle_update_ex(ptr noundef %6, ptr noundef %10, ptr noundef nonnull %5, ptr noundef %41, i8 noundef zeroext 0) #21
  br i1 %38, label %52, label %42

42:                                               ; preds = %37
  %43 = load ptr, ptr @MEM_mallocN, align 8, !tbaa !40
  %44 = tail call ptr %43(i64 noundef 40, ptr noundef nonnull @.str.13) #21
  %45 = getelementptr inbounds %struct.StatisicsEntry, ptr %44, i64 0, i32 2
  store ptr %5, ptr %45, align 8, !tbaa !415
  %46 = getelementptr inbounds %struct.StatisicsEntry, ptr %44, i64 0, i32 3
  store double %39, ptr %46, align 8, !tbaa !455
  %47 = tail call double @PIL_check_seconds_timer() #21
  %48 = fsub double %47, %39
  %49 = getelementptr inbounds %struct.StatisicsEntry, ptr %44, i64 0, i32 4
  store double %48, ptr %49, align 8, !tbaa !412
  %50 = sext i32 %2 to i64
  %51 = getelementptr inbounds %struct.ThreadedObjectUpdateState, ptr %4, i64 0, i32 4, i64 %50
  tail call void @BLI_addtail(ptr noundef nonnull %51, ptr noundef %44) #21
  br label %52

52:                                               ; preds = %3, %37, %42, %16
  tail call void @DAG_threaded_update_handle_node_updated(ptr noundef %1, ptr noundef nonnull @scene_update_object_add_task, ptr noundef %0) #21
  ret void
}

declare ptr @BLI_task_pool_userdata(ptr noundef) local_unnamed_addr #3

declare ptr @DAG_get_node_object(ptr noundef) local_unnamed_addr #3

declare void @BKE_object_handle_update_ex(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i8 noundef zeroext) local_unnamed_addr #3

declare void @DAG_threaded_update_handle_node_updated(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

declare void @BKE_group_handle_recalc_and_update(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

declare void @BKE_rigidbody_rebuild_world(ptr noundef, float noundef) local_unnamed_addr #3

declare void @BKE_rigidbody_do_simulation(ptr noundef, float noundef) local_unnamed_addr #3

declare void @BKE_object_handle_update(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #20

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #20

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nofree norecurse nosync nounwind memory(read, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { mustprogress nofree nounwind willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { mustprogress nofree nounwind willreturn memory(argmem: write) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #13 = { mustprogress nofree nounwind willreturn memory(read, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { mustprogress nofree nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #15 = { mustprogress nofree nounwind willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #16 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #17 = { mustprogress nofree nounwind willreturn memory(write, argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #18 = { mustprogress nofree nounwind willreturn memory(write) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #19 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #20 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #21 = { nounwind }
attributes #22 = { nounwind willreturn memory(read) }

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
!95 = distinct !{!95, !96, !97}
!96 = !{!"llvm.loop.mustprogress"}
!97 = !{!"llvm.loop.unroll.disable"}
!98 = !{!99, !36, i64 0}
!99 = !{!"AnimData", !36, i64 0, !36, i64 8, !36, i64 16, !49, i64 24, !36, i64 40, !49, i64 48, !49, i64 64, !39, i64 80, !39, i64 84, !50, i64 88, !50, i64 90, !56, i64 92}
!100 = !{!101, !36, i64 120}
!101 = !{!"bAction", !60, i64 0, !49, i64 120, !49, i64 136, !49, i64 152, !49, i64 168, !39, i64 184, !39, i64 188, !39, i64 192, !39, i64 196}
!102 = !{!103, !36, i64 0}
!103 = !{!"FCurve", !36, i64 0, !36, i64 8, !36, i64 16, !36, i64 24, !49, i64 32, !36, i64 48, !36, i64 56, !39, i64 64, !56, i64 68, !50, i64 72, !50, i64 74, !39, i64 76, !36, i64 80, !39, i64 88, !37, i64 92, !56, i64 104, !56, i64 108}
!104 = !{!103, !36, i64 80}
!105 = distinct !{!105, !96, !97}
!106 = distinct !{!106, !96, !97}
!107 = !{!108, !36, i64 0}
!108 = !{!"ToolSettings", !36, i64 0, !36, i64 8, !36, i64 16, !36, i64 24, !56, i64 32, !56, i64 36, !56, i64 40, !50, i64 44, !50, i64 46, !37, i64 48, !37, i64 49, !37, i64 50, !37, i64 51, !56, i64 52, !50, i64 56, !37, i64 58, !37, i64 59, !109, i64 64, !111, i64 168, !56, i64 336, !56, i64 340, !50, i64 344, !50, i64 346, !37, i64 348, !37, i64 349, !50, i64 350, !56, i64 352, !56, i64 356, !56, i64 360, !56, i64 364, !56, i64 368, !56, i64 372, !56, i64 376, !56, i64 380, !56, i64 384, !56, i64 388, !50, i64 392, !37, i64 394, !37, i64 395, !37, i64 396, !37, i64 399, !36, i64 400, !37, i64 408, !37, i64 409, !37, i64 410, !37, i64 411, !37, i64 412, !37, i64 413, !37, i64 421, !37, i64 429, !37, i64 430, !37, i64 431, !37, i64 432, !37, i64 433, !50, i64 434, !50, i64 436, !50, i64 438, !50, i64 440, !37, i64 442, !37, i64 443, !37, i64 444, !37, i64 445, !37, i64 446, !37, i64 447, !39, i64 448, !39, i64 452, !39, i64 456, !39, i64 460, !50, i64 464, !50, i64 466, !39, i64 468, !56, i64 472, !56, i64 476, !112, i64 480, !113, i64 608}
!109 = !{!"ImagePaintSettings", !110, i64 0, !50, i64 40, !50, i64 42, !50, i64 44, !50, i64 46, !37, i64 48, !39, i64 52, !36, i64 56, !36, i64 64, !36, i64 72, !36, i64 80, !37, i64 88, !56, i64 100}
!110 = !{!"Paint", !36, i64 0, !36, i64 8, !36, i64 16, !37, i64 24, !39, i64 28, !39, i64 32, !39, i64 36}
!111 = !{!"ParticleEditSettings", !50, i64 0, !50, i64 2, !50, i64 4, !50, i64 6, !37, i64 8, !36, i64 120, !56, i64 128, !56, i64 132, !39, i64 136, !39, i64 140, !39, i64 144, !39, i64 148, !36, i64 152, !36, i64 160}
!112 = !{!"UnifiedPaintSettings", !39, i64 0, !56, i64 4, !56, i64 8, !56, i64 12, !37, i64 16, !37, i64 28, !39, i64 40, !37, i64 44, !56, i64 52, !39, i64 56, !39, i64 60, !37, i64 64, !37, i64 65, !56, i64 72, !37, i64 76, !39, i64 84, !56, i64 88, !37, i64 92, !37, i64 100, !39, i64 108, !36, i64 112, !56, i64 120, !39, i64 124}
!113 = !{!"MeshStatVis", !37, i64 0, !37, i64 1, !37, i64 3, !56, i64 4, !56, i64 8, !56, i64 12, !56, i64 16, !37, i64 20, !37, i64 21, !56, i64 24, !56, i64 28, !56, i64 32, !56, i64 36}
!114 = !{!108, !36, i64 8}
!115 = !{!108, !36, i64 16}
!116 = !{!108, !36, i64 120}
!117 = !{!108, !36, i64 128}
!118 = !{!108, !36, i64 288}
!119 = !{!59, !36, i64 528}
!120 = !{!59, !36, i64 536}
!121 = !{!59, !36, i64 672}
!122 = !{!59, !36, i64 128}
!123 = !{!124, !36, i64 16}
!124 = !{!"Object", !60, i64 0, !36, i64 120, !36, i64 128, !50, i64 136, !50, i64 138, !39, i64 140, !39, i64 144, !39, i64 148, !37, i64 152, !36, i64 216, !36, i64 224, !36, i64 232, !36, i64 240, !36, i64 248, !36, i64 256, !36, i64 264, !36, i64 272, !36, i64 280, !36, i64 288, !36, i64 296, !36, i64 304, !125, i64 312, !36, i64 360, !49, i64 368, !49, i64 384, !49, i64 400, !49, i64 416, !39, i64 432, !39, i64 436, !36, i64 440, !36, i64 448, !39, i64 456, !39, i64 460, !37, i64 464, !37, i64 476, !37, i64 488, !37, i64 500, !37, i64 512, !37, i64 524, !37, i64 536, !37, i64 548, !37, i64 560, !37, i64 576, !37, i64 592, !37, i64 604, !56, i64 616, !56, i64 620, !37, i64 624, !37, i64 688, !37, i64 752, !37, i64 816, !37, i64 880, !39, i64 944, !50, i64 948, !50, i64 950, !50, i64 952, !50, i64 954, !50, i64 956, !50, i64 958, !50, i64 960, !50, i64 962, !50, i64 964, !37, i64 966, !37, i64 967, !39, i64 968, !39, i64 972, !39, i64 976, !39, i64 980, !39, i64 984, !56, i64 988, !56, i64 992, !56, i64 996, !56, i64 1000, !56, i64 1004, !56, i64 1008, !56, i64 1012, !56, i64 1016, !56, i64 1020, !56, i64 1024, !56, i64 1028, !56, i64 1032, !50, i64 1036, !50, i64 1038, !50, i64 1040, !37, i64 1042, !37, i64 1043, !50, i64 1044, !37, i64 1046, !37, i64 1047, !56, i64 1048, !56, i64 1052, !49, i64 1056, !49, i64 1072, !49, i64 1088, !49, i64 1104, !56, i64 1120, !50, i64 1124, !50, i64 1126, !37, i64 1128, !39, i64 1144, !39, i64 1148, !36, i64 1152, !37, i64 1160, !37, i64 1161, !50, i64 1162, !37, i64 1164, !49, i64 1176, !49, i64 1192, !49, i64 1208, !49, i64 1224, !36, i64 1240, !36, i64 1248, !36, i64 1256, !37, i64 1264, !37, i64 1265, !50, i64 1266, !56, i64 1268, !36, i64 1272, !36, i64 1280, !36, i64 1288, !36, i64 1296, !77, i64 1304, !77, i64 1312, !39, i64 1320, !39, i64 1324, !49, i64 1328, !49, i64 1344, !36, i64 1360, !36, i64 1368, !36, i64 1376, !37, i64 1384, !36, i64 1392, !49, i64 1400, !36, i64 1416}
!125 = !{!"bAnimVizSettings", !39, i64 0, !39, i64 4, !39, i64 8, !39, i64 12, !50, i64 16, !50, i64 18, !50, i64 20, !50, i64 22, !50, i64 24, !50, i64 26, !50, i64 28, !50, i64 30, !39, i64 32, !39, i64 36, !39, i64 40, !39, i64 44}
!126 = !{!127, !36, i64 0}
!127 = !{!"Editing", !36, i64 0, !49, i64 8, !49, i64 24, !36, i64 40, !37, i64 48, !37, i64 1072, !39, i64 2096, !39, i64 2100, !39, i64 2104, !39, i64 2108, !67, i64 2112}
!128 = !{!59, !39, i64 236}
!129 = !{!59, !39, i64 232}
!130 = !{!59, !39, i64 800}
!131 = !{!59, !39, i64 680}
!132 = !{!59, !39, i64 684}
!133 = !{!59, !39, i64 688}
!134 = !{!59, !39, i64 748}
!135 = !{!59, !39, i64 764}
!136 = !{!59, !39, i64 768}
!137 = !{!59, !56, i64 892}
!138 = !{!59, !56, i64 896}
!139 = !{!59, !39, i64 776}
!140 = !{!59, !39, i64 780}
!141 = !{!59, !50, i64 890}
!142 = !{!59, !50, i64 756}
!143 = !{!59, !50, i64 758}
!144 = !{!59, !37, i64 282}
!145 = !{!59, !37, i64 280}
!146 = !{!59, !37, i64 281}
!147 = !{!59, !37, i64 284}
!148 = !{!59, !37, i64 285}
!149 = !{!59, !50, i64 792}
!150 = !{!59, !39, i64 708}
!151 = !{!59, !39, i64 704}
!152 = !{!59, !56, i64 716}
!153 = !{!59, !56, i64 720}
!154 = !{!59, !50, i64 820}
!155 = !{!59, !56, i64 900}
!156 = !{!59, !50, i64 822}
!157 = !{!59, !50, i64 812}
!158 = !{!59, !39, i64 908}
!159 = !{!59, !56, i64 904}
!160 = !{!59, !56, i64 912}
!161 = !{!59, !56, i64 916}
!162 = !{!59, !56, i64 920}
!163 = !{!59, !50, i64 932}
!164 = !{!59, !50, i64 930}
!165 = !{!59, !50, i64 928}
!166 = !{!59, !50, i64 934}
!167 = !{!59, !50, i64 936}
!168 = !{!59, !50, i64 948}
!169 = !{!59, !56, i64 944}
!170 = !{!59, !50, i64 4174}
!171 = !{!59, !50, i64 4168}
!172 = !{!59, !50, i64 4170}
!173 = !{!59, !50, i64 4172}
!174 = !{!59, !37, i64 4187}
!175 = !{!59, !37, i64 2898}
!176 = !{!59, !37, i64 2896}
!177 = !{!59, !37, i64 2897}
!178 = !{!59, !37, i64 2900}
!179 = !{!59, !37, i64 2901}
!180 = !{!59, !39, i64 796}
!181 = !{!59, !39, i64 1984}
!182 = !{!59, !50, i64 1988}
!183 = !{!59, !39, i64 804}
!184 = !{!59, !37, i64 2792}
!185 = !{!59, !37, i64 2793}
!186 = !{!59, !37, i64 2794}
!187 = !{!59, !50, i64 714}
!188 = !{!59, !50, i64 2804}
!189 = !{!59, !56, i64 2808}
!190 = !{!59, !50, i64 2806}
!191 = !{!59, !56, i64 2812}
!192 = !{!59, !56, i64 840}
!193 = !{!59, !56, i64 848}
!194 = !{!59, !56, i64 844}
!195 = !{!59, !56, i64 852}
!196 = !{!59, !39, i64 4256}
!197 = !{!59, !39, i64 2856}
!198 = !{!59, !56, i64 2860}
!199 = !{!108, !56, i64 36}
!200 = !{!108, !56, i64 52}
!201 = !{!108, !37, i64 48}
!202 = !{!108, !56, i64 340}
!203 = !{!108, !50, i64 46}
!204 = !{!108, !37, i64 51}
!205 = !{!108, !56, i64 40}
!206 = !{!207, !50, i64 8976}
!207 = !{!"UserDef", !39, i64 0, !39, i64 4, !39, i64 8, !39, i64 12, !39, i64 16, !37, i64 20, !37, i64 788, !37, i64 1556, !37, i64 2580, !37, i64 3348, !37, i64 4116, !37, i64 4884, !37, i64 5652, !37, i64 6420, !37, i64 7444, !39, i64 8468, !50, i64 8472, !50, i64 8474, !50, i64 8476, !50, i64 8478, !50, i64 8480, !50, i64 8482, !39, i64 8484, !39, i64 8488, !39, i64 8492, !50, i64 8496, !50, i64 8498, !39, i64 8500, !39, i64 8504, !39, i64 8508, !39, i64 8512, !39, i64 8516, !39, i64 8520, !39, i64 8524, !50, i64 8528, !50, i64 8530, !50, i64 8532, !50, i64 8534, !49, i64 8536, !49, i64 8552, !49, i64 8568, !49, i64 8584, !49, i64 8600, !49, i64 8616, !49, i64 8632, !37, i64 8648, !50, i64 8712, !50, i64 8714, !50, i64 8716, !50, i64 8718, !50, i64 8720, !50, i64 8722, !50, i64 8724, !50, i64 8726, !37, i64 8728, !50, i64 8896, !50, i64 8898, !50, i64 8900, !50, i64 8902, !50, i64 8904, !50, i64 8906, !50, i64 8908, !50, i64 8910, !39, i64 8912, !39, i64 8916, !50, i64 8920, !50, i64 8922, !50, i64 8924, !50, i64 8926, !50, i64 8928, !50, i64 8930, !50, i64 8932, !50, i64 8934, !50, i64 8936, !50, i64 8938, !37, i64 8940, !37, i64 8941, !37, i64 8942, !37, i64 8943, !50, i64 8944, !50, i64 8946, !50, i64 8948, !50, i64 8950, !50, i64 8952, !50, i64 8954, !56, i64 8956, !56, i64 8960, !39, i64 8964, !50, i64 8968, !50, i64 8970, !56, i64 8972, !50, i64 8976, !50, i64 8978, !50, i64 8980, !50, i64 8982, !208, i64 8984, !37, i64 9760, !37, i64 9772, !50, i64 9788, !37, i64 9790, !37, i64 9791, !37, i64 9792, !37, i64 9872, !39, i64 10896, !39, i64 10900, !56, i64 10904, !56, i64 10908, !39, i64 10912, !50, i64 10916, !50, i64 10918, !50, i64 10920, !50, i64 10922, !50, i64 10924, !50, i64 10926, !209, i64 10928}
!208 = !{!"ColorBand", !50, i64 0, !50, i64 2, !37, i64 4, !37, i64 5, !37, i64 6, !37, i64 7, !37, i64 8}
!209 = !{!"WalkNavigation", !56, i64 0, !56, i64 4, !56, i64 8, !56, i64 12, !56, i64 16, !56, i64 20, !50, i64 24, !37, i64 26}
!210 = !{!108, !50, i64 344}
!211 = !{!108, !37, i64 432}
!212 = !{!108, !50, i64 350}
!213 = !{!108, !56, i64 352}
!214 = !{!108, !56, i64 356}
!215 = !{!108, !56, i64 368}
!216 = !{!108, !56, i64 360}
!217 = !{!108, !56, i64 364}
!218 = !{!108, !56, i64 372}
!219 = !{!108, !56, i64 376}
!220 = !{!108, !37, i64 394}
!221 = !{!108, !37, i64 395}
!222 = !{!108, !50, i64 392}
!223 = !{!108, !37, i64 611}
!224 = !{!108, !56, i64 612}
!225 = !{!108, !56, i64 616}
!226 = !{!108, !56, i64 624}
!227 = !{!108, !37, i64 628}
!228 = !{!108, !56, i64 632}
!229 = !{!108, !56, i64 636}
!230 = !{!108, !56, i64 640}
!231 = !{!108, !56, i64 644}
!232 = !{!108, !56, i64 336}
!233 = !{!108, !39, i64 92}
!234 = !{!108, !50, i64 110}
!235 = !{!108, !50, i64 108}
!236 = !{!59, !39, i64 4628}
!237 = !{!59, !56, i64 4600}
!238 = !{!111, !50, i64 0}
!239 = !{!111, !56, i64 128}
!240 = !{!111, !50, i64 2}
!241 = !{!111, !50, i64 4}
!242 = !{!111, !50, i64 6}
!243 = !{!111, !39, i64 144}
!244 = !{!111, !39, i64 148}
!245 = !{!111, !39, i64 136}
!246 = !{!247, !56, i64 12}
!247 = !{!"ParticleBrushData", !50, i64 0, !50, i64 2, !50, i64 4, !50, i64 6, !39, i64 8, !56, i64 12}
!248 = !{!247, !50, i64 0}
!249 = !{!247, !50, i64 2}
!250 = !{!247, !50, i64 6}
!251 = distinct !{!251, !96, !97}
!252 = !{!59, !39, i64 628}
!253 = !{!59, !56, i64 640}
!254 = !{!59, !39, i64 624}
!255 = !{!59, !39, i64 632}
!256 = !{!59, !39, i64 4280}
!257 = !{!59, !56, i64 4276}
!258 = !{!59, !56, i64 4272}
!259 = !{!59, !56, i64 4288}
!260 = !{!59, !50, i64 818}
!261 = !{!262, !39, i64 96}
!262 = !{!"SceneRenderLayer", !36, i64 0, !36, i64 8, !37, i64 16, !36, i64 80, !36, i64 88, !39, i64 96, !39, i64 100, !39, i64 104, !39, i64 108, !39, i64 112, !39, i64 116, !39, i64 120, !56, i64 124, !263, i64 128}
!263 = !{!"FreestyleConfig", !49, i64 0, !39, i64 16, !39, i64 20, !39, i64 24, !56, i64 28, !56, i64 32, !56, i64 36, !49, i64 40}
!264 = !{!262, !39, i64 108}
!265 = !{!262, !39, i64 112}
!266 = !{!262, !56, i64 124}
!267 = !{!59, !50, i64 4480}
!268 = !{!59, !50, i64 4482}
!269 = !{!59, !56, i64 4484}
!270 = !{!59, !50, i64 4460}
!271 = !{!59, !50, i64 4458}
!272 = !{!59, !50, i64 4456}
!273 = !{!59, !56, i64 4464}
!274 = !{!59, !50, i64 4462}
!275 = !{!59, !50, i64 4434}
!276 = !{!59, !50, i64 4436}
!277 = !{!59, !50, i64 4438}
!278 = !{!59, !50, i64 4440}
!279 = !{!59, !56, i64 4544}
!280 = !{!59, !50, i64 4562}
!281 = !{!59, !50, i64 4556}
!282 = !{!59, !50, i64 4560}
!283 = !{!59, !50, i64 4568}
!284 = !{!59, !50, i64 4570}
!285 = !{!59, !50, i64 4572}
!286 = !{!59, !50, i64 4574}
!287 = !{!59, !56, i64 4588}
!288 = !{!59, !56, i64 4592}
!289 = !{!59, !56, i64 4584}
!290 = !{!59, !39, i64 4552}
!291 = !{!59, !50, i64 4558}
!292 = !{!59, !50, i64 4576}
!293 = !{!59, !56, i64 4580}
!294 = !{!59, !56, i64 4488}
!295 = !{!59, !56, i64 4492}
!296 = !{!59, !56, i64 4496}
!297 = !{!59, !56, i64 4500}
!298 = !{!59, !56, i64 4504}
!299 = !{!59, !56, i64 4508}
!300 = !{!59, !56, i64 4512}
!301 = !{!59, !56, i64 4516}
!302 = !{!59, !56, i64 4520}
!303 = !{!59, !56, i64 4524}
!304 = !{!59, !39, i64 4528}
!305 = !{!59, !56, i64 4532}
!306 = !{!59, !56, i64 4536}
!307 = !{!59, !50, i64 4564}
!308 = !{!124, !39, i64 100}
!309 = distinct !{!309, !96, !97}
!310 = !{!59, !36, i64 4608}
!311 = distinct !{!311, !96, !97}
!312 = !{!108, !36, i64 24}
!313 = !{!59, !36, i64 4360}
!314 = distinct !{!314, !96, !97}
!315 = distinct !{!315, !96, !97}
!316 = !{!124, !39, i64 432}
!317 = !{!124, !50, i64 948}
!318 = distinct !{!318, !96, !97}
!319 = distinct !{!319, !96, !97}
!320 = !{!321, !36, i64 16}
!321 = !{!"GroupObject", !36, i64 0, !36, i64 8, !36, i64 16, !36, i64 24, !50, i64 32, !37, i64 34}
!322 = distinct !{!322, !96, !97}
!323 = distinct !{!323, !96, !97}
!324 = !{!93, !39, i64 16}
!325 = !{!124, !39, i64 944}
!326 = !{!93, !39, i64 24}
!327 = distinct !{!327, !96, !97}
!328 = distinct !{!328, !96, !97}
!329 = !{!330, !36, i64 240}
!330 = !{!"bNode", !36, i64 0, !36, i64 8, !36, i64 16, !36, i64 24, !36, i64 32, !37, i64 40, !37, i64 104, !39, i64 168, !50, i64 172, !50, i64 174, !50, i64 176, !50, i64 178, !50, i64 180, !50, i64 182, !50, i64 184, !50, i64 186, !37, i64 188, !49, i64 200, !49, i64 216, !36, i64 232, !36, i64 240, !36, i64 248, !36, i64 256, !49, i64 264, !56, i64 280, !56, i64 284, !56, i64 288, !56, i64 292, !56, i64 296, !56, i64 300, !56, i64 304, !39, i64 308, !37, i64 312, !50, i64 376, !50, i64 378, !56, i64 380, !56, i64 384, !50, i64 388, !50, i64 390, !36, i64 392, !67, i64 400, !67, i64 416, !67, i64 432, !50, i64 448, !50, i64 450, !39, i64 452, !36, i64 456}
!331 = distinct !{!331, !96, !97}
!332 = distinct !{!332, !96, !97}
!333 = distinct !{!333, !96, !97}
!334 = !{!335, !36, i64 184}
!335 = !{!"bScreen", !60, i64 0, !49, i64 120, !49, i64 136, !49, i64 152, !49, i64 168, !36, i64 184, !36, i64 192, !39, i64 200, !39, i64 204, !50, i64 208, !50, i64 210, !50, i64 212, !50, i64 214, !50, i64 216, !50, i64 218, !50, i64 220, !50, i64 222, !50, i64 224, !50, i64 226, !50, i64 228, !50, i64 230, !36, i64 232, !36, i64 240}
!336 = distinct !{!336, !96, !97}
!337 = !{!338, !39, i64 32}
!338 = !{!"SpaceLink", !36, i64 0, !36, i64 8, !49, i64 16, !39, i64 32, !56, i64 36, !37, i64 40}
!339 = !{!340, !36, i64 216}
!340 = !{!"SpaceNode", !36, i64 0, !36, i64 8, !49, i64 16, !39, i64 32, !56, i64 36, !37, i64 40, !341, i64 56, !36, i64 216, !36, i64 224, !50, i64 232, !50, i64 234, !56, i64 236, !56, i64 240, !56, i64 244, !56, i64 248, !56, i64 252, !37, i64 256, !49, i64 264, !36, i64 280, !36, i64 288, !37, i64 296, !39, i64 360, !39, i64 364, !50, i64 368, !50, i64 370, !50, i64 372, !50, i64 374, !49, i64 376, !36, i64 392}
!341 = !{!"View2D", !67, i64 0, !67, i64 16, !68, i64 32, !68, i64 48, !68, i64 64, !37, i64 80, !37, i64 88, !56, i64 96, !56, i64 100, !50, i64 104, !50, i64 106, !50, i64 108, !50, i64 110, !50, i64 112, !50, i64 114, !50, i64 116, !50, i64 118, !50, i64 120, !50, i64 122, !50, i64 124, !50, i64 126, !36, i64 128, !39, i64 136, !39, i64 140, !36, i64 144, !36, i64 152}
!342 = !{!340, !36, i64 264}
!343 = !{!344, !36, i64 0}
!344 = !{!"bNodeTreePath", !36, i64 0, !36, i64 8, !36, i64 16, !345, i64 24, !39, i64 28, !37, i64 32, !37, i64 40}
!345 = !{!"bNodeInstanceKey", !39, i64 0}
!346 = distinct !{!346, !96, !97}
!347 = !{!348, !36, i64 256}
!348 = !{!"SpaceButs", !36, i64 0, !36, i64 8, !49, i64 16, !39, i64 32, !56, i64 36, !37, i64 40, !341, i64 56, !50, i64 216, !50, i64 218, !50, i64 220, !50, i64 222, !50, i64 224, !50, i64 226, !50, i64 228, !50, i64 230, !37, i64 232, !37, i64 233, !36, i64 240, !39, i64 248, !39, i64 252, !36, i64 256, !36, i64 264}
!349 = distinct !{!349, !96, !97}
!350 = !{!351, !39, i64 88}
!351 = !{!"SceneBaseIter", !36, i64 0, !36, i64 8, !37, i64 16, !36, i64 80, !39, i64 88}
!352 = !{!351, !36, i64 80}
!353 = !{!59, !36, i64 152}
!354 = distinct !{!354, !96, !97}
!355 = !{!93, !36, i64 0}
!356 = distinct !{!356, !96, !97}
!357 = !{!124, !50, i64 952}
!358 = !{!124, !36, i64 1256}
!359 = !{!351, !36, i64 0}
!360 = !{!49, !36, i64 0}
!361 = !{!351, !36, i64 8}
!362 = !{!363, !36, i64 16}
!363 = !{!"DupliObject", !36, i64 0, !36, i64 8, !36, i64 16, !37, i64 24, !37, i64 88, !37, i64 100, !50, i64 108, !37, i64 110, !37, i64 111, !37, i64 112, !36, i64 144}
!364 = !{!363, !36, i64 0}
!365 = distinct !{!365, !96, !97}
!366 = !{!124, !50, i64 136}
!367 = distinct !{!367, !96, !97}
!368 = !{!369, !36, i64 88}
!369 = !{!"TimeMarker", !36, i64 0, !36, i64 8, !39, i64 16, !37, i64 20, !39, i64 84, !36, i64 88}
!370 = !{!124, !37, i64 1160}
!371 = !{!369, !39, i64 16}
!372 = distinct !{!372, !96, !97}
!373 = distinct !{!373, !96, !97}
!374 = distinct !{!374, !96, !97}
!375 = !{!124, !36, i64 1376}
!376 = !{!124, !36, i64 1368}
!377 = distinct !{!377, !96, !97}
!378 = !{!59, !56, i64 692}
!379 = !{!380, !380, i64 0}
!380 = !{!"double", !37, i64 0}
!381 = distinct !{!381, !96, !97}
!382 = !{!124, !36, i64 296}
!383 = !{!384, !50, i64 98}
!384 = !{!"Mesh", !60, i64 0, !36, i64 120, !36, i64 128, !36, i64 136, !36, i64 144, !36, i64 152, !36, i64 160, !36, i64 168, !36, i64 176, !36, i64 184, !36, i64 192, !36, i64 200, !36, i64 208, !36, i64 216, !36, i64 224, !36, i64 232, !36, i64 240, !36, i64 248, !36, i64 256, !36, i64 264, !36, i64 272, !385, i64 280, !385, i64 480, !385, i64 680, !385, i64 880, !385, i64 1080, !39, i64 1280, !39, i64 1284, !39, i64 1288, !39, i64 1292, !39, i64 1296, !39, i64 1300, !39, i64 1304, !37, i64 1308, !37, i64 1320, !37, i64 1332, !39, i64 1344, !50, i64 1348, !50, i64 1350, !56, i64 1352, !39, i64 1356, !37, i64 1360, !37, i64 1361, !37, i64 1362, !37, i64 1363, !37, i64 1364, !37, i64 1365, !50, i64 1366, !36, i64 1368}
!385 = !{!"CustomData", !36, i64 0, !37, i64 8, !39, i64 172, !39, i64 176, !39, i64 180, !36, i64 184, !36, i64 192}
!386 = !{!387, !36, i64 1552}
!387 = !{!"Main", !36, i64 0, !36, i64 8, !37, i64 16, !50, i64 1040, !50, i64 1042, !50, i64 1044, !50, i64 1046, !77, i64 1048, !37, i64 1056, !50, i64 1072, !36, i64 1080, !49, i64 1088, !49, i64 1104, !49, i64 1120, !49, i64 1136, !49, i64 1152, !49, i64 1168, !49, i64 1184, !49, i64 1200, !49, i64 1216, !49, i64 1232, !49, i64 1248, !49, i64 1264, !49, i64 1280, !49, i64 1296, !49, i64 1312, !49, i64 1328, !49, i64 1344, !49, i64 1360, !49, i64 1376, !49, i64 1392, !49, i64 1408, !49, i64 1424, !49, i64 1440, !49, i64 1456, !49, i64 1472, !49, i64 1488, !49, i64 1504, !49, i64 1520, !49, i64 1536, !49, i64 1552, !49, i64 1568, !49, i64 1584, !49, i64 1600, !49, i64 1616, !37, i64 1632, !36, i64 1888, !36, i64 1896}
!388 = !{!389, !36, i64 24}
!389 = !{!"wmWindow", !36, i64 0, !36, i64 8, !36, i64 16, !36, i64 24, !36, i64 32, !37, i64 40, !50, i64 104, !50, i64 106, !50, i64 108, !50, i64 110, !50, i64 112, !50, i64 114, !50, i64 116, !50, i64 118, !50, i64 120, !50, i64 122, !50, i64 124, !50, i64 126, !39, i64 128, !50, i64 132, !50, i64 134, !36, i64 136, !36, i64 144, !36, i64 152, !39, i64 160, !39, i64 164, !36, i64 168, !49, i64 176, !49, i64 192, !49, i64 208, !49, i64 224, !49, i64 240}
!390 = !{!391, !37, i64 72}
!391 = !{!"ScrArea", !36, i64 0, !36, i64 8, !36, i64 16, !36, i64 24, !36, i64 32, !36, i64 40, !36, i64 48, !68, i64 56, !37, i64 72, !37, i64 73, !50, i64 74, !50, i64 76, !50, i64 78, !50, i64 80, !50, i64 82, !50, i64 84, !37, i64 86, !37, i64 87, !36, i64 88, !49, i64 96, !49, i64 112, !49, i64 128, !49, i64 144}
!392 = !{!391, !36, i64 96}
!393 = !{!394, !50, i64 232}
!394 = !{!"View3D", !36, i64 0, !36, i64 8, !49, i64 16, !39, i64 32, !56, i64 36, !37, i64 40, !37, i64 56, !56, i64 72, !56, i64 76, !37, i64 80, !37, i64 81, !39, i64 84, !39, i64 88, !50, i64 92, !50, i64 94, !36, i64 96, !36, i64 104, !67, i64 112, !49, i64 128, !36, i64 144, !36, i64 152, !37, i64 160, !39, i64 224, !39, i64 228, !50, i64 232, !50, i64 234, !50, i64 236, !50, i64 238, !50, i64 240, !50, i64 242, !56, i64 244, !56, i64 248, !56, i64 252, !56, i64 256, !37, i64 260, !37, i64 272, !50, i64 284, !50, i64 286, !50, i64 288, !37, i64 290, !37, i64 291, !37, i64 292, !37, i64 293, !37, i64 294, !49, i64 296, !49, i64 312, !49, i64 328, !37, i64 344, !37, i64 345, !37, i64 346, !37, i64 347, !36, i64 352, !36, i64 360, !36, i64 368}
!395 = distinct !{!395, !96, !97}
!396 = distinct !{!396, !96, !97}
!397 = !{!384, !36, i64 272}
!398 = !{!399, !36, i64 0}
!399 = !{!"BMEditMesh", !36, i64 0, !36, i64 8, !39, i64 16, !36, i64 24, !39, i64 32, !36, i64 40, !36, i64 48, !77, i64 56, !36, i64 64, !39, i64 72, !36, i64 80, !39, i64 88, !50, i64 92, !50, i64 94, !36, i64 96, !39, i64 104}
!400 = !{!99, !39, i64 84}
!401 = distinct !{!401, !96, !97}
!402 = distinct !{!402, !96, !97}
!403 = !{!59, !77, i64 4648}
!404 = !{!405, !36, i64 0}
!405 = !{!"ThreadedObjectUpdateState", !36, i64 0, !36, i64 8, !36, i64 16, !380, i64 24, !37, i64 32, !37, i64 48, !37, i64 49}
!406 = !{!405, !36, i64 8}
!407 = !{!405, !36, i64 16}
!408 = !{!48, !39, i64 2100}
!409 = !{!405, !380, i64 24}
!410 = !{!405, !37, i64 49}
!411 = !{!405, !37, i64 48}
!412 = !{!413, !380, i64 32}
!413 = !{!"StatisicsEntry", !36, i64 0, !36, i64 8, !36, i64 16, !380, i64 24, !380, i64 32}
!414 = distinct !{!414, !96, !97}
!415 = !{!413, !36, i64 16}
!416 = distinct !{!416, !96, !97}
!417 = distinct !{!417, !96, !97}
!418 = distinct !{!418, !96, !97}
!419 = !{!59, !36, i64 120}
!420 = !{!99, !36, i64 48}
!421 = !{!422, !36, i64 520}
!422 = !{!"World", !60, i64 0, !36, i64 120, !50, i64 128, !50, i64 130, !50, i64 132, !50, i64 134, !56, i64 136, !56, i64 140, !56, i64 144, !56, i64 148, !56, i64 152, !56, i64 156, !56, i64 160, !56, i64 164, !56, i64 168, !56, i64 172, !56, i64 176, !56, i64 180, !56, i64 184, !56, i64 188, !56, i64 192, !56, i64 196, !50, i64 200, !50, i64 202, !50, i64 204, !50, i64 206, !50, i64 208, !50, i64 210, !50, i64 212, !50, i64 214, !56, i64 216, !56, i64 220, !56, i64 224, !56, i64 228, !56, i64 232, !56, i64 236, !56, i64 240, !56, i64 244, !56, i64 248, !56, i64 252, !56, i64 256, !56, i64 260, !50, i64 264, !50, i64 266, !50, i64 268, !50, i64 270, !56, i64 272, !56, i64 276, !56, i64 280, !56, i64 284, !50, i64 288, !50, i64 290, !50, i64 292, !50, i64 294, !56, i64 296, !56, i64 300, !56, i64 304, !56, i64 308, !56, i64 312, !56, i64 316, !56, i64 320, !50, i64 324, !50, i64 326, !50, i64 328, !50, i64 330, !50, i64 332, !50, i64 334, !36, i64 336, !36, i64 344, !36, i64 352, !37, i64 360, !50, i64 504, !50, i64 506, !37, i64 508, !36, i64 512, !36, i64 520}
!423 = distinct !{!423, !96, !97}
!424 = !{!425, !36, i64 120}
!425 = !{!"FreestyleLineSet", !36, i64 0, !36, i64 8, !37, i64 16, !39, i64 80, !39, i64 84, !50, i64 88, !50, i64 90, !39, i64 92, !39, i64 96, !39, i64 100, !39, i64 104, !39, i64 108, !36, i64 112, !36, i64 120}
!426 = distinct !{!426, !96, !97}
!427 = distinct !{!427, !96, !97}
!428 = !{!429, !36, i64 8}
!429 = !{!"RigidBodyWorld", !36, i64 0, !36, i64 8, !36, i64 16, !36, i64 24, !39, i64 32, !56, i64 36, !36, i64 40, !49, i64 48, !39, i64 64, !50, i64 68, !50, i64 70, !39, i64 72, !56, i64 76, !36, i64 80}
!430 = !{!429, !39, i64 72}
!431 = !{!124, !37, i64 967}
!432 = !{!124, !37, i64 1161}
!433 = distinct !{!433, !96, !97}
!434 = distinct !{!434, !96, !97}
!435 = !{!59, !36, i64 872}
!436 = !{!59, !36, i64 880}
!437 = !{!330, !50, i64 172}
!438 = !{!330, !50, i64 376}
!439 = distinct !{!439, !96, !97}
!440 = distinct !{!440, !96, !97}
!441 = !{!61, !39, i64 520}
!442 = !{!61, !50, i64 2524}
!443 = !{!61, !56, i64 2528}
!444 = !{!61, !50, i64 2526}
!445 = !{!61, !56, i64 2532}
!446 = distinct !{!446, !96, !97}
!447 = !{!448, !39, i64 144}
!448 = !{!"RenderEngineType", !36, i64 0, !36, i64 8, !37, i64 16, !37, i64 80, !39, i64 144, !36, i64 152, !36, i64 160, !36, i64 168, !36, i64 176, !36, i64 184, !36, i64 192, !449, i64 200}
!449 = !{!"ExtensionRNA", !36, i64 0, !36, i64 8, !36, i64 16, !36, i64 24}
!450 = distinct !{!450, !96, !97}
!451 = distinct !{!451, !96, !97}
!452 = !{!61, !50, i64 434}
!453 = !{!75, !37, i64 4}
!454 = !{!75, !56, i64 0}
!455 = !{!413, !380, i64 24}
