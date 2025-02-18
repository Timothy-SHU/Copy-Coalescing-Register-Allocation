; ModuleID = 'blender/source/blender/blenkernel/intern/bpath.c'
source_filename = "blender/source/blender/blenkernel/intern/bpath.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.BPathRemap_Data = type { ptr, ptr, i32, i32, i32 }
%struct.BPathFind_Data = type { ptr, ptr, ptr, i8 }
%struct.Main = type { ptr, ptr, [1024 x i8], i16, i16, i16, i16, i64, [16 x i8], i16, ptr, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, [256 x i8], ptr, ptr }
%struct.ListBase = type { ptr, ptr }
%struct.SeqIterator = type { ptr, i32, i32, ptr, i32 }
%struct.ID = type { ptr, ptr, ptr, ptr, [66 x i8], i16, i32, i32, i32, ptr }
%struct.Library = type { %struct.ID, ptr, ptr, [1024 x i8], [1024 x i8], ptr, ptr }
%struct.Image = type { %struct.ID, [1024 x i8], ptr, ptr, ptr, ptr, [8 x ptr], i16, i16, i16, i16, i16, i16, i32, i16, i16, i16, i16, i16, i16, i32, ptr, ptr, ptr, float, i32, i16, i16, i32, i32, i8, i8, i16, [4 x float], float, float, %struct.ColorManagedColorspaceSettings, i8, [7 x i8], [8 x %struct.RenderSlot] }
%struct.ColorManagedColorspaceSettings = type { [64 x i8] }
%struct.RenderSlot = type { [64 x i8] }
%struct.Brush = type { %struct.ID, %struct.BrushClone, ptr, %struct.MTex, %struct.MTex, ptr, ptr, ptr, ptr, ptr, [1024 x i8], float, i16, i16, float, i32, i32, i32, float, i32, i32, i32, i32, float, float, [3 x float], float, [3 x float], i32, float, float, i32, i32, i32, i8, i8, i8, i8, float, float, float, float, float, i32, i32, i32, float, float, i32, i32, float, [3 x float], [3 x float], [2 x float], [2 x float], [2 x float], [2 x float] }
%struct.BrushClone = type { ptr, [2 x float], float, float }
%struct.MTex = type { i16, i16, i16, i16, ptr, ptr, [64 x i8], i8, i8, i8, i8, [3 x float], [3 x float], float, i16, i16, i16, i16, i16, i16, i8, [7 x i8], float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float }
%struct.Object = type { %struct.ID, ptr, ptr, i16, i16, i32, i32, i32, [64 x i8], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.bAnimVizSettings, ptr, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, i32, i32, ptr, ptr, i32, i32, [3 x float], [3 x float], [3 x float], [3 x float], [3 x float], [3 x float], [3 x float], [3 x float], [4 x float], [4 x float], [3 x float], [3 x float], float, float, [4 x [4 x float]], [4 x [4 x float]], [4 x [4 x float]], [4 x [4 x float]], [4 x [4 x float]], i32, i16, i16, i16, i16, i16, i16, i16, i16, i16, i8, i8, i32, i32, i32, i32, i32, float, float, float, float, float, float, float, float, float, float, float, float, i16, i16, i16, i8, i8, i16, i8, i8, float, float, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, float, i16, i16, [4 x float], i32, i32, ptr, i8, i8, i16, [3 x float], %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, ptr, ptr, ptr, i8, i8, i16, float, ptr, ptr, ptr, ptr, i64, i64, i32, i32, %struct.ListBase, %struct.ListBase, ptr, ptr, ptr, [2 x float], ptr, %struct.ListBase, ptr }
%struct.bAnimVizSettings = type { i32, i32, i32, i32, i16, i16, i16, i16, i16, i16, i16, i16, i32, i32, i32, i32 }
%struct.ModifierData = type { ptr, ptr, i32, i32, i32, i32, [64 x i8], ptr, ptr }
%struct.FluidsimModifierData = type { %struct.ModifierData, ptr, ptr }
%struct.FluidsimSettings = type { ptr, i32, i32, i16, i16, i16, i16, float, i16, i16, float, i16, i16, [3 x float], float, float, i32, i32, i32, i32, float, i32, float, float, float, ptr, ptr, [1024 x i8], [3 x float], [3 x float], ptr, i16, i8, i8, float, i32, float, float, i32, i32, float, float, float, ptr, i32, float, float, float, float, float, float, float, i32, float }
%struct.SmokeModifierData = type { %struct.ModifierData, ptr, ptr, ptr, float, i32 }
%struct.SmokeDomainSettings = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, [3 x float], [3 x float], [3 x float], [3 x float], [3 x float], [3 x float], [3 x i32], [3 x float], [3 x float], [4 x [4 x float]], [4 x [4 x float]], [3 x i32], [3 x i32], [3 x i32], [3 x i32], i32, float, float, i32, i32, float, float, float, i32, i32, i32, i32, i16, i16, i32, float, [3 x i32], float, i32, i32, [2 x ptr], [2 x %struct.ListBase], ptr, i32, float, float, i32, [3 x float], i32, float, float, float, float, float, [3 x float] }
%struct.PointCache = type { ptr, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i16, i16, [64 x i8], [64 x i8], [64 x i8], [1024 x i8], ptr, %struct.ListBase, ptr, ptr }
%struct.ClothModifierData = type { %struct.ModifierData, ptr, ptr, ptr, ptr, ptr, %struct.ListBase }
%struct.OceanModifierData = type { %struct.ModifierData, ptr, ptr, i32, i32, float, float, float, float, float, float, float, float, float, float, i32, i32, [1024 x i8], [64 x i8], i8, i8, i8, i8, i16, i16, i32, float, float, i32 }
%struct.MeshCacheModifierData = type { %struct.ModifierData, i8, i8, i8, i8, i8, i8, i8, i8, float, i8, [7 x i8], float, float, float, float, float, [1024 x i8] }
%struct.SoftBody = type { i32, i32, ptr, ptr, i8, i8, i16, float, [64 x i8], float, float, float, float, float, float, float, float, float, i16, [64 x i8], i16, float, float, [64 x i8], i32, i32, i32, i16, i16, ptr, i32, i32, float, float, float, float, i16, i16, i16, i16, i16, i16, i16, i16, ptr, float, float, ptr, %struct.ListBase, ptr, [3 x float], [3 x [3 x float]], [3 x [3 x float]], i32 }
%struct.ParticleSystem = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.ListBase, %struct.ListBase, ptr, ptr, ptr, ptr, ptr, ptr, %struct.ListBase, [64 x i8], [4 x [4 x float]], float, float, float, i32, i32, i32, i32, i32, i32, i32, i32, i16, i16, i16, i16, [3 x [64 x i8]], [12 x i16], i16, i16, ptr, ptr, %struct.ListBase, ptr, ptr, i32, i32, ptr, ptr, ptr, float, float }
%struct.bSound = type { %struct.ID, [1024 x i8], ptr, ptr, ptr, ptr, float, float, float, float, float, float, i32, i32, ptr, ptr, ptr }
%struct.Text = type { %struct.ID, ptr, i32, i32, %struct.ListBase, ptr, ptr, i32, i32, ptr, i32, i32, ptr, double }
%struct.VFont = type { %struct.ID, [1024 x i8], ptr, ptr, ptr }
%struct.Material = type { %struct.ID, ptr, i16, i16, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, %struct.VolumeSettings, %struct.GameSettings, float, float, float, float, float, float, float, i16, i16, i16, i8, i8, float, float, i16, i16, float, float, float, float, i16, i16, i32, i32, i32, i32, i16, i16, i16, i16, float, float, float, float, float, float, float, float, float, float, [64 x i8], float, float, float, i32, i8, i8, i8, i8, i16, i16, i16, i8, i8, i16, i16, float, float, [4 x float], float, float, i16, i16, ptr, ptr, i8, i8, i8, i8, i16, i16, float, float, [18 x ptr], ptr, ptr, ptr, ptr, float, float, float, float, float, i16, i16, [3 x float], [3 x float], float, float, float, float, float, float, float, i16, i16, i32, i16, i16, [4 x float], i16, i16, i16, i16, i16, [3 x i16], ptr, %struct.ListBase }
%struct.VolumeSettings = type { float, float, float, float, [3 x float], [3 x float], [3 x float], float, float, float, i16, i16, i16, i16, float, float, float, float }
%struct.GameSettings = type { i32, i32, i32, i32 }
%struct.bNodeTree = type { %struct.ID, ptr, ptr, [64 x i8], ptr, ptr, [2 x float], %struct.ListBase, %struct.ListBase, i32, i32, i32, i32, i32, i16, i16, i32, i32, i16, i16, i32, %struct.rctf, %struct.ListBase, %struct.ListBase, ptr, %struct.bNodeInstanceKey, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.rctf = type { float, float, float, float }
%struct.bNodeInstanceKey = type { i32 }
%struct.bNode = type { ptr, ptr, ptr, ptr, ptr, [64 x i8], [64 x i8], i32, i16, i16, i16, i16, i16, i16, i16, i16, [3 x float], %struct.ListBase, %struct.ListBase, ptr, ptr, ptr, ptr, %struct.ListBase, float, float, float, float, float, float, float, i32, [64 x i8], i16, i16, float, float, i16, i16, ptr, %struct.rctf, %struct.rctf, %struct.rctf, i16, i16, i32, ptr }
%struct.NodeShaderScript = type { i32, i32, [1024 x i8], [64 x i8], ptr }
%struct.Tex = type { %struct.ID, ptr, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, float, float, float, float, i32, i32, i16, i16, i16, i16, i32, i32, i32, i32, float, float, float, %struct.ImageUser, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8, [7 x i8] }
%struct.ImageUser = type { ptr, i32, i32, i32, i32, i8, i8, i8, i8, i16, i16, i16, i16, i32 }
%struct.VoxelData = type { [3 x i32], i32, i16, i16, i16, i16, i16, i16, i32, ptr, float, i32, [1024 x i8], ptr, i32, i32 }
%struct.Scene = type { %struct.ID, ptr, ptr, ptr, ptr, %struct.ListBase, ptr, ptr, [3 x float], [3 x float], [3 x float], [3 x float], i32, i32, i32, i16, i8, [1 x i8], ptr, ptr, ptr, ptr, %struct.RenderData, %struct.AudioData, %struct.ListBase, %struct.ListBase, ptr, ptr, ptr, ptr, ptr, ptr, i16, i16, i32, %struct.ListBase, %struct.GameFraming, %struct.GameData, %struct.UnitSettings, ptr, %struct.PhysicsSettings, ptr, i64, i64, %struct.ColorManagedViewSettings, %struct.ColorManagedDisplaySettings, %struct.ColorManagedColorspaceSettings, ptr }
%struct.RenderData = type { %struct.ImageFormatData, ptr, ptr, %struct.QuicktimeCodecSettings, %struct.FFMpegCodecData, i32, i32, i32, float, i32, i32, i32, i32, i16, i16, float, float, float, float, float, i16, i16, i16, i16, i16, i16, i32, i16, i16, i16, i16, i16, i16, i32, i32, i16, i16, i32, i32, i16, i16, i16, i16, i16, i8, i8, i32, i32, i32, i16, i16, i16, i16, i16, i16, i16, i16, %struct.rctf, %struct.rctf, %struct.rcti, %struct.ListBase, i16, i16, float, float, float, float, i32, float, float, float, float, i16, i16, i16, i16, i16, i16, float, float, i16, i16, float, float, [1024 x i8], i32, i16, i16, [768 x i8], [4 x float], [4 x float], i8, i8, i8, [5 x i8], i32, i16, i16, float, float, i16, i16, float, i16, i16, i32, i16, i16, i16, i16, float, float, ptr, i32, float, [32 x i8], %struct.BakeData, i32, i32 }
%struct.ImageFormatData = type { i8, i8, i8, i8, i8, i8, i8, i8, i16, i16, float, i8, i8, [6 x i8], %struct.ColorManagedViewSettings, %struct.ColorManagedDisplaySettings }
%struct.QuicktimeCodecSettings = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i16, i16, i32, i32, i32 }
%struct.FFMpegCodecData = type { i32, i32, i32, i32, i32, i32, i32, i32, float, i32, i32, i32, i32, i32, i32, i32, ptr }
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
%struct.Sequence = type { ptr, ptr, ptr, ptr, [64 x i8], i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, float, float, float, i16, i16, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, float, float, ptr, ptr, ptr, %struct.ListBase, ptr, ptr, float, float, float, float, ptr, i32, i32, i32, float, i32, i8, [3 x i8], %struct.ListBase }
%struct.Strip = type { ptr, ptr, i32, i32, i32, i32, ptr, [768 x i8], ptr, ptr, ptr, ptr, %struct.ColorManagedColorspaceSettings }
%struct.StripElem = type { [256 x i8], i32, i32 }
%struct.Mesh = type { %struct.ID, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.CustomData, %struct.CustomData, %struct.CustomData, %struct.CustomData, %struct.CustomData, i32, i32, i32, i32, i32, i32, i32, [3 x float], [3 x float], [3 x float], i32, i16, i16, float, i32, i8, i8, i8, i8, i8, i8, i16, ptr }
%struct.CustomData = type { ptr, [41 x i32], i32, i32, i32, ptr, ptr }
%struct.MovieClip = type { %struct.ID, ptr, [1024 x i8], i32, i32, [2 x i32], float, float, ptr, ptr, ptr, %struct.MovieTracking, ptr, %struct.MovieClipProxy, i32, i32, i32, i32, %struct.ColorManagedColorspaceSettings }
%struct.MovieTracking = type { %struct.MovieTrackingSettings, %struct.MovieTrackingCamera, %struct.ListBase, %struct.ListBase, %struct.MovieTrackingReconstruction, %struct.MovieTrackingStabilization, ptr, ptr, %struct.ListBase, i32, i32, ptr, %struct.MovieTrackingDopesheet }
%struct.MovieTrackingSettings = type { i32, i16, i16, float, i16, i16, i16, i16, i16, i16, float, i16, i16, i32, i32, i32, i16, i16, float, i32, i32, float, float, i32 }
%struct.MovieTrackingCamera = type { ptr, i16, i16, float, float, float, i16, i16, [2 x float], float, float, float, float, float }
%struct.MovieTrackingReconstruction = type { i32, float, i32, i32, ptr }
%struct.MovieTrackingStabilization = type { i32, i32, i32, float, ptr, float, float, float, i32, i32, float }
%struct.MovieTrackingDopesheet = type { i32, i16, i16, %struct.ListBase, %struct.ListBase, i32, i32 }
%struct.MovieClipProxy = type { [768 x i8], i16, i16, i16, i16 }
%struct.PathStore = type { ptr, ptr }
%struct.stat = type { i64, i64, i64, i32, i32, i32, i32, i64, i64, i64, i64, %struct.timespec, %struct.timespec, %struct.timespec, [3 x i64] }
%struct.timespec = type { i64, i64 }
%struct.dirent = type { i64, i64, i16, i8, [256 x i8] }

@.str = private unnamed_addr constant [31 x i8] c"%s: basedir='', this is a bug\0A\00", align 1
@__func__.BKE_bpath_relative_convert = private unnamed_addr constant [27 x i8] c"BKE_bpath_relative_convert\00", align 1
@.str.1 = private unnamed_addr constant [40 x i8] c"Total files %d | Changed %d | Failed %d\00", align 1
@__func__.BKE_bpath_absolute_convert = private unnamed_addr constant [27 x i8] c"BKE_bpath_absolute_convert\00", align 1
@MEM_allocN_len = external local_unnamed_addr global ptr, align 8
@.str.2 = private unnamed_addr constant [48 x i8] c"%s: error, old base path '%s' is not absolute.\0A\00", align 1
@__func__.BKE_bpath_relocate_visitor = private unnamed_addr constant [27 x i8] c"BKE_bpath_relocate_visitor\00", align 1
@MEM_callocN = external local_unnamed_addr global ptr, align 8
@__func__.BKE_bpath_list_backup = private unnamed_addr constant [22 x i8] c"BKE_bpath_list_backup\00", align 1
@MEM_freeN = external local_unnamed_addr global ptr, align 8
@.str.3 = private unnamed_addr constant [20 x i8] c"Path '%s' not found\00", align 1
@.str.4 = private unnamed_addr constant [34 x i8] c"Path '%s' cannot be made relative\00", align 1
@.str.5 = private unnamed_addr constant [34 x i8] c"Path '%s' cannot be made absolute\00", align 1
@.str.6 = private unnamed_addr constant [30 x i8] c"Could not open directory '%s'\00", align 1
@.str.7 = private unnamed_addr constant [28 x i8] c"Could not find '%s' in '%s'\00", align 1
@.str.8 = private unnamed_addr constant [2 x i8] c".\00", align 1
@.str.9 = private unnamed_addr constant [3 x i8] c"..\00", align 1
@MEM_mallocN = external local_unnamed_addr global ptr, align 8
@__func__.bpath_list_append = private unnamed_addr constant [18 x i8] c"bpath_list_append\00", align 1

; Function Attrs: nounwind uwtable
define dso_local void @BKE_bpath_missing_files_check(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = alloca [35 x ptr], align 16
  call void @llvm.lifetime.start.p0(i64 280, ptr nonnull %3) #10
  %4 = call i32 @set_listbasepointers(ptr noundef %0, ptr noundef nonnull %3) #10
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %22, label %6

6:                                                ; preds = %2
  %7 = sext i32 %4 to i64
  br label %11

8:                                                ; preds = %18, %11
  %9 = and i64 %13, 4294967295
  %10 = icmp eq i64 %9, 0
  br i1 %10, label %22, label %11, !llvm.loop !34

11:                                               ; preds = %8, %6
  %12 = phi i64 [ %7, %6 ], [ %13, %8 ]
  %13 = add nsw i64 %12, -1
  %14 = getelementptr inbounds [35 x ptr], ptr %3, i64 0, i64 %13
  %15 = load ptr, ptr %14, align 8, !tbaa !37
  %16 = load ptr, ptr %15, align 8, !tbaa !37
  %17 = icmp eq ptr %16, null
  br i1 %17, label %8, label %18

18:                                               ; preds = %11, %18
  %19 = phi ptr [ %20, %18 ], [ %16, %11 ]
  call void @BKE_bpath_traverse_id(ptr noundef %0, ptr noundef nonnull %19, ptr noundef nonnull @checkMissingFiles_visit_cb, i32 noundef 9, ptr noundef %1)
  %20 = load ptr, ptr %19, align 8, !tbaa !37
  %21 = icmp eq ptr %20, null
  br i1 %21, label %8, label %18, !llvm.loop !41

22:                                               ; preds = %8, %2
  call void @llvm.lifetime.end.p0(i64 280, ptr nonnull %3) #10
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @BKE_bpath_traverse_main(ptr noundef %0, ptr nocapture noundef readonly %1, i32 noundef %2, ptr noundef %3) local_unnamed_addr #0 {
  %5 = alloca [35 x ptr], align 16
  call void @llvm.lifetime.start.p0(i64 280, ptr nonnull %5) #10
  %6 = call i32 @set_listbasepointers(ptr noundef %0, ptr noundef nonnull %5) #10
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %24, label %8

8:                                                ; preds = %4
  %9 = sext i32 %6 to i64
  br label %13

10:                                               ; preds = %20, %13
  %11 = and i64 %15, 4294967295
  %12 = icmp eq i64 %11, 0
  br i1 %12, label %24, label %13, !llvm.loop !34

13:                                               ; preds = %8, %10
  %14 = phi i64 [ %9, %8 ], [ %15, %10 ]
  %15 = add nsw i64 %14, -1
  %16 = getelementptr inbounds [35 x ptr], ptr %5, i64 0, i64 %15
  %17 = load ptr, ptr %16, align 8, !tbaa !37
  %18 = load ptr, ptr %17, align 8, !tbaa !37
  %19 = icmp eq ptr %18, null
  br i1 %19, label %10, label %20

20:                                               ; preds = %13, %20
  %21 = phi ptr [ %22, %20 ], [ %18, %13 ]
  call void @BKE_bpath_traverse_id(ptr noundef %0, ptr noundef nonnull %21, ptr noundef %1, i32 noundef %2, ptr noundef %3)
  %22 = load ptr, ptr %21, align 8, !tbaa !37
  %23 = icmp eq ptr %22, null
  br i1 %23, label %10, label %20, !llvm.loop !41

24:                                               ; preds = %10, %4
  call void @llvm.lifetime.end.p0(i64 280, ptr nonnull %5) #10
  ret void
}

; Function Attrs: nounwind uwtable
define internal noundef zeroext i8 @checkMissingFiles_visit_cb(ptr noundef %0, ptr nocapture readnone %1, ptr noundef %2) #0 {
  %4 = tail call i32 @BLI_exists(ptr noundef %2) #10
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %6, label %7

6:                                                ; preds = %3
  tail call void (ptr, i32, ptr, ...) @BKE_reportf(ptr noundef %0, i32 noundef 16, ptr noundef nonnull @.str.3, ptr noundef %2) #10
  br label %7

7:                                                ; preds = %6, %3
  ret i8 0
}

; Function Attrs: nounwind uwtable
define dso_local void @BKE_bpath_relative_convert(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #0 {
  %4 = alloca [35 x ptr], align 16
  %5 = alloca %struct.BPathRemap_Data, align 8
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %5) #10
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %5, i8 0, i64 32, i1 false)
  %6 = load i8, ptr %1, align 1, !tbaa !42
  %7 = icmp eq i8 %6, 0
  br i1 %7, label %8, label %10

8:                                                ; preds = %3
  %9 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str, ptr noundef nonnull @__func__.BKE_bpath_relative_convert)
  br label %39

10:                                               ; preds = %3
  store ptr %1, ptr %5, align 8, !tbaa !43
  %11 = getelementptr inbounds %struct.BPathRemap_Data, ptr %5, i64 0, i32 1
  store ptr %2, ptr %11, align 8, !tbaa !46
  call void @llvm.lifetime.start.p0(i64 280, ptr nonnull %4) #10
  %12 = call i32 @set_listbasepointers(ptr noundef %0, ptr noundef nonnull %4) #10
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %30, label %14

14:                                               ; preds = %10
  %15 = sext i32 %12 to i64
  br label %19

16:                                               ; preds = %26, %19
  %17 = and i64 %21, 4294967295
  %18 = icmp eq i64 %17, 0
  br i1 %18, label %30, label %19, !llvm.loop !34

19:                                               ; preds = %16, %14
  %20 = phi i64 [ %15, %14 ], [ %21, %16 ]
  %21 = add nsw i64 %20, -1
  %22 = getelementptr inbounds [35 x ptr], ptr %4, i64 0, i64 %21
  %23 = load ptr, ptr %22, align 8, !tbaa !37
  %24 = load ptr, ptr %23, align 8, !tbaa !37
  %25 = icmp eq ptr %24, null
  br i1 %25, label %16, label %26

26:                                               ; preds = %19, %26
  %27 = phi ptr [ %28, %26 ], [ %24, %19 ]
  call void @BKE_bpath_traverse_id(ptr noundef %0, ptr noundef nonnull %27, ptr noundef nonnull @bpath_relative_convert_visit_cb, i32 noundef 4, ptr noundef nonnull %5)
  %28 = load ptr, ptr %27, align 8, !tbaa !37
  %29 = icmp eq ptr %28, null
  br i1 %29, label %16, label %26, !llvm.loop !41

30:                                               ; preds = %16, %10
  call void @llvm.lifetime.end.p0(i64 280, ptr nonnull %4) #10
  %31 = getelementptr inbounds %struct.BPathRemap_Data, ptr %5, i64 0, i32 4
  %32 = load i32, ptr %31, align 8, !tbaa !47
  %33 = icmp eq i32 %32, 0
  %34 = select i1 %33, i32 2, i32 16
  %35 = getelementptr inbounds %struct.BPathRemap_Data, ptr %5, i64 0, i32 2
  %36 = load i32, ptr %35, align 8, !tbaa !48
  %37 = getelementptr inbounds %struct.BPathRemap_Data, ptr %5, i64 0, i32 3
  %38 = load i32, ptr %37, align 4, !tbaa !49
  call void (ptr, i32, ptr, ...) @BKE_reportf(ptr noundef %2, i32 noundef %34, ptr noundef nonnull @.str.1, i32 noundef %36, i32 noundef %38, i32 noundef %32) #10
  br label %39

39:                                               ; preds = %30, %8
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %5) #10
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #2

; Function Attrs: nofree nounwind
declare noundef i32 @printf(ptr nocapture noundef readonly, ...) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define internal noundef zeroext i8 @bpath_relative_convert_visit_cb(ptr nocapture noundef %0, ptr noundef %1, ptr noundef %2) #0 {
  %4 = getelementptr inbounds %struct.BPathRemap_Data, ptr %0, i64 0, i32 2
  %5 = load i32, ptr %4, align 8, !tbaa !48
  %6 = add nsw i32 %5, 1
  store i32 %6, ptr %4, align 8, !tbaa !48
  %7 = tail call zeroext i8 @BLI_path_is_rel(ptr noundef %2) #10
  %8 = icmp eq i8 %7, 0
  br i1 %8, label %9, label %24

9:                                                ; preds = %3
  %10 = tail call ptr @strcpy(ptr noundef nonnull dereferenceable(1) %1, ptr noundef nonnull dereferenceable(1) %2) #10
  %11 = load ptr, ptr %0, align 8, !tbaa !43
  tail call void @BLI_path_rel(ptr noundef %1, ptr noundef %11) #10
  %12 = tail call zeroext i8 @BLI_path_is_rel(ptr noundef %1) #10
  %13 = icmp eq i8 %12, 0
  br i1 %13, label %18, label %14

14:                                               ; preds = %9
  %15 = getelementptr inbounds %struct.BPathRemap_Data, ptr %0, i64 0, i32 3
  %16 = load i32, ptr %15, align 4, !tbaa !49
  %17 = add nsw i32 %16, 1
  store i32 %17, ptr %15, align 4, !tbaa !49
  br label %24

18:                                               ; preds = %9
  %19 = getelementptr inbounds %struct.BPathRemap_Data, ptr %0, i64 0, i32 1
  %20 = load ptr, ptr %19, align 8, !tbaa !46
  tail call void (ptr, i32, ptr, ...) @BKE_reportf(ptr noundef %20, i32 noundef 16, ptr noundef nonnull @.str.4, ptr noundef %2) #10
  %21 = getelementptr inbounds %struct.BPathRemap_Data, ptr %0, i64 0, i32 4
  %22 = load i32, ptr %21, align 8, !tbaa !47
  %23 = add nsw i32 %22, 1
  store i32 %23, ptr %21, align 8, !tbaa !47
  br label %24

24:                                               ; preds = %14, %18, %3
  %25 = phi i8 [ 0, %3 ], [ 1, %18 ], [ 1, %14 ]
  ret i8 %25
}

declare void @BKE_reportf(ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind uwtable
define dso_local void @BKE_bpath_absolute_convert(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #0 {
  %4 = alloca [35 x ptr], align 16
  %5 = alloca %struct.BPathRemap_Data, align 8
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %5) #10
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %5, i8 0, i64 32, i1 false)
  %6 = load i8, ptr %1, align 1, !tbaa !42
  %7 = icmp eq i8 %6, 0
  br i1 %7, label %8, label %10

8:                                                ; preds = %3
  %9 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str, ptr noundef nonnull @__func__.BKE_bpath_absolute_convert)
  br label %39

10:                                               ; preds = %3
  store ptr %1, ptr %5, align 8, !tbaa !43
  %11 = getelementptr inbounds %struct.BPathRemap_Data, ptr %5, i64 0, i32 1
  store ptr %2, ptr %11, align 8, !tbaa !46
  call void @llvm.lifetime.start.p0(i64 280, ptr nonnull %4) #10
  %12 = call i32 @set_listbasepointers(ptr noundef %0, ptr noundef nonnull %4) #10
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %30, label %14

14:                                               ; preds = %10
  %15 = sext i32 %12 to i64
  br label %19

16:                                               ; preds = %26, %19
  %17 = and i64 %21, 4294967295
  %18 = icmp eq i64 %17, 0
  br i1 %18, label %30, label %19, !llvm.loop !34

19:                                               ; preds = %16, %14
  %20 = phi i64 [ %15, %14 ], [ %21, %16 ]
  %21 = add nsw i64 %20, -1
  %22 = getelementptr inbounds [35 x ptr], ptr %4, i64 0, i64 %21
  %23 = load ptr, ptr %22, align 8, !tbaa !37
  %24 = load ptr, ptr %23, align 8, !tbaa !37
  %25 = icmp eq ptr %24, null
  br i1 %25, label %16, label %26

26:                                               ; preds = %19, %26
  %27 = phi ptr [ %28, %26 ], [ %24, %19 ]
  call void @BKE_bpath_traverse_id(ptr noundef %0, ptr noundef nonnull %27, ptr noundef nonnull @bpath_absolute_convert_visit_cb, i32 noundef 4, ptr noundef nonnull %5)
  %28 = load ptr, ptr %27, align 8, !tbaa !37
  %29 = icmp eq ptr %28, null
  br i1 %29, label %16, label %26, !llvm.loop !41

30:                                               ; preds = %16, %10
  call void @llvm.lifetime.end.p0(i64 280, ptr nonnull %4) #10
  %31 = getelementptr inbounds %struct.BPathRemap_Data, ptr %5, i64 0, i32 4
  %32 = load i32, ptr %31, align 8, !tbaa !47
  %33 = icmp eq i32 %32, 0
  %34 = select i1 %33, i32 2, i32 16
  %35 = getelementptr inbounds %struct.BPathRemap_Data, ptr %5, i64 0, i32 2
  %36 = load i32, ptr %35, align 8, !tbaa !48
  %37 = getelementptr inbounds %struct.BPathRemap_Data, ptr %5, i64 0, i32 3
  %38 = load i32, ptr %37, align 4, !tbaa !49
  call void (ptr, i32, ptr, ...) @BKE_reportf(ptr noundef %2, i32 noundef %34, ptr noundef nonnull @.str.1, i32 noundef %36, i32 noundef %38, i32 noundef %32) #10
  br label %39

39:                                               ; preds = %30, %8
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %5) #10
  ret void
}

; Function Attrs: nounwind uwtable
define internal noundef zeroext i8 @bpath_absolute_convert_visit_cb(ptr nocapture noundef %0, ptr noundef %1, ptr noundef %2) #0 {
  %4 = getelementptr inbounds %struct.BPathRemap_Data, ptr %0, i64 0, i32 2
  %5 = load i32, ptr %4, align 8, !tbaa !48
  %6 = add nsw i32 %5, 1
  store i32 %6, ptr %4, align 8, !tbaa !48
  %7 = tail call zeroext i8 @BLI_path_is_rel(ptr noundef %2) #10
  %8 = icmp eq i8 %7, 0
  br i1 %8, label %25, label %9

9:                                                ; preds = %3
  %10 = tail call ptr @strcpy(ptr noundef nonnull dereferenceable(1) %1, ptr noundef nonnull dereferenceable(1) %2) #10
  %11 = load ptr, ptr %0, align 8, !tbaa !43
  %12 = tail call zeroext i8 @BLI_path_abs(ptr noundef %1, ptr noundef %11) #10
  %13 = tail call zeroext i8 @BLI_path_is_rel(ptr noundef %1) #10
  %14 = icmp eq i8 %13, 0
  br i1 %14, label %15, label %19

15:                                               ; preds = %9
  %16 = getelementptr inbounds %struct.BPathRemap_Data, ptr %0, i64 0, i32 3
  %17 = load i32, ptr %16, align 4, !tbaa !49
  %18 = add nsw i32 %17, 1
  store i32 %18, ptr %16, align 4, !tbaa !49
  br label %25

19:                                               ; preds = %9
  %20 = getelementptr inbounds %struct.BPathRemap_Data, ptr %0, i64 0, i32 1
  %21 = load ptr, ptr %20, align 8, !tbaa !46
  tail call void (ptr, i32, ptr, ...) @BKE_reportf(ptr noundef %21, i32 noundef 16, ptr noundef nonnull @.str.5, ptr noundef %2) #10
  %22 = getelementptr inbounds %struct.BPathRemap_Data, ptr %0, i64 0, i32 4
  %23 = load i32, ptr %22, align 8, !tbaa !47
  %24 = add nsw i32 %23, 1
  store i32 %24, ptr %22, align 8, !tbaa !47
  br label %25

25:                                               ; preds = %15, %19, %3
  %26 = phi i8 [ 0, %3 ], [ 1, %19 ], [ 1, %15 ]
  ret i8 %26
}

; Function Attrs: nounwind uwtable
define dso_local void @BKE_bpath_missing_files_find(ptr noundef %0, ptr noundef %1, ptr noundef %2, i8 noundef zeroext %3) local_unnamed_addr #0 {
  %5 = alloca [35 x ptr], align 16
  %6 = alloca %struct.BPathFind_Data, align 8
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %6) #10
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %6, i8 0, i64 32, i1 false)
  %7 = getelementptr inbounds %struct.Main, ptr %0, i64 0, i32 2
  store ptr %7, ptr %6, align 8, !tbaa !50
  %8 = getelementptr inbounds %struct.BPathFind_Data, ptr %6, i64 0, i32 2
  store ptr %2, ptr %8, align 8, !tbaa !52
  %9 = getelementptr inbounds %struct.BPathFind_Data, ptr %6, i64 0, i32 1
  store ptr %1, ptr %9, align 8, !tbaa !53
  %10 = getelementptr inbounds %struct.BPathFind_Data, ptr %6, i64 0, i32 3
  store i8 %3, ptr %10, align 8, !tbaa !54
  call void @llvm.lifetime.start.p0(i64 280, ptr nonnull %5) #10
  %11 = call i32 @set_listbasepointers(ptr noundef %0, ptr noundef nonnull %5) #10
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %29, label %13

13:                                               ; preds = %4
  %14 = sext i32 %11 to i64
  br label %18

15:                                               ; preds = %25, %18
  %16 = and i64 %20, 4294967295
  %17 = icmp eq i64 %16, 0
  br i1 %17, label %29, label %18, !llvm.loop !34

18:                                               ; preds = %15, %13
  %19 = phi i64 [ %14, %13 ], [ %20, %15 ]
  %20 = add nsw i64 %19, -1
  %21 = getelementptr inbounds [35 x ptr], ptr %5, i64 0, i64 %20
  %22 = load ptr, ptr %21, align 8, !tbaa !37
  %23 = load ptr, ptr %22, align 8, !tbaa !37
  %24 = icmp eq ptr %23, null
  br i1 %24, label %15, label %25

25:                                               ; preds = %18, %25
  %26 = phi ptr [ %27, %25 ], [ %23, %18 ]
  call void @BKE_bpath_traverse_id(ptr noundef %0, ptr noundef nonnull %26, ptr noundef nonnull @findMissingFiles_visit_cb, i32 noundef 1, ptr noundef nonnull %6)
  %27 = load ptr, ptr %26, align 8, !tbaa !37
  %28 = icmp eq ptr %27, null
  br i1 %28, label %15, label %25, !llvm.loop !41

29:                                               ; preds = %15, %4
  call void @llvm.lifetime.end.p0(i64 280, ptr nonnull %5) #10
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %6) #10
  ret void
}

; Function Attrs: nounwind uwtable
define internal noundef zeroext i8 @findMissingFiles_visit_cb(ptr nocapture noundef readonly %0, ptr noundef %1, ptr noundef %2) #0 {
  %4 = alloca [1024 x i8], align 16
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 1024, ptr nonnull %4) #10
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #10
  store i32 -1, ptr %5, align 4, !tbaa !55
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %6) #10
  store i32 0, ptr %6, align 4, !tbaa !55
  %7 = getelementptr inbounds %struct.BPathFind_Data, ptr %0, i64 0, i32 3
  %8 = load i8, ptr %7, align 8, !tbaa !54
  %9 = icmp eq i8 %8, 0
  br i1 %9, label %10, label %13

10:                                               ; preds = %3
  %11 = tail call i32 @BLI_exists(ptr noundef %2) #10
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %13, label %38

13:                                               ; preds = %10, %3
  store i8 0, ptr %4, align 16, !tbaa !42
  %14 = getelementptr inbounds %struct.BPathFind_Data, ptr %0, i64 0, i32 1
  %15 = load ptr, ptr %14, align 8, !tbaa !53
  %16 = tail call ptr @BLI_path_basename(ptr noundef %2) #10
  %17 = call fastcc i32 @findFileRecursive(ptr noundef nonnull %4, ptr noundef %15, ptr noundef %16, ptr noundef nonnull %5, ptr noundef nonnull %6), !range !56
  %18 = load i32, ptr %5, align 4, !tbaa !55
  %19 = icmp eq i32 %18, -1
  br i1 %19, label %20, label %25

20:                                               ; preds = %13
  %21 = getelementptr inbounds %struct.BPathFind_Data, ptr %0, i64 0, i32 2
  %22 = load ptr, ptr %21, align 8, !tbaa !52
  %23 = load ptr, ptr %14, align 8, !tbaa !53
  %24 = call ptr @BLI_path_basename(ptr noundef %23) #10
  call void (ptr, i32, ptr, ...) @BKE_reportf(ptr noundef %22, i32 noundef 16, ptr noundef nonnull @.str.6, ptr noundef %24) #10
  br label %38

25:                                               ; preds = %13
  %26 = icmp eq i32 %17, 0
  br i1 %26, label %27, label %32

27:                                               ; preds = %25
  %28 = getelementptr inbounds %struct.BPathFind_Data, ptr %0, i64 0, i32 2
  %29 = load ptr, ptr %28, align 8, !tbaa !52
  %30 = call ptr @BLI_path_basename(ptr noundef %2) #10
  %31 = load ptr, ptr %14, align 8, !tbaa !53
  call void (ptr, i32, ptr, ...) @BKE_reportf(ptr noundef %29, i32 noundef 16, ptr noundef nonnull @.str.7, ptr noundef %30, ptr noundef %31) #10
  br label %38

32:                                               ; preds = %25
  %33 = call zeroext i8 @BLI_path_is_rel(ptr noundef %1) #10
  %34 = call ptr @BLI_strncpy(ptr noundef %1, ptr noundef nonnull %4, i64 noundef 1024) #10
  %35 = icmp eq i8 %33, 0
  br i1 %35, label %38, label %36

36:                                               ; preds = %32
  %37 = load ptr, ptr %0, align 8, !tbaa !50
  call void @BLI_path_rel(ptr noundef %1, ptr noundef %37) #10
  br label %38

38:                                               ; preds = %32, %36, %10, %27, %20
  %39 = phi i8 [ 0, %20 ], [ 0, %27 ], [ 0, %10 ], [ 1, %36 ], [ 1, %32 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %6) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #10
  call void @llvm.lifetime.end.p0(i64 1024, ptr nonnull %4) #10
  ret i8 %39
}

; Function Attrs: nounwind uwtable
define dso_local void @BKE_bpath_traverse_id(ptr noundef %0, ptr noundef %1, ptr nocapture noundef readonly %2, i32 noundef %3, ptr noundef %4) local_unnamed_addr #0 {
  %6 = alloca [1024 x i8], align 16
  %7 = alloca [1024 x i8], align 16
  %8 = alloca [1024 x i8], align 16
  %9 = alloca [1024 x i8], align 16
  %10 = alloca [1024 x i8], align 16
  %11 = alloca [1024 x i8], align 16
  %12 = alloca [1024 x i8], align 16
  %13 = alloca [1024 x i8], align 16
  %14 = alloca [1024 x i8], align 16
  %15 = alloca [1024 x i8], align 16
  %16 = alloca [1024 x i8], align 16
  %17 = alloca [1024 x i8], align 16
  %18 = alloca [1024 x i8], align 16
  %19 = alloca [1024 x i8], align 16
  %20 = alloca [1024 x i8], align 16
  %21 = alloca [1024 x i8], align 16
  %22 = alloca [1024 x i8], align 16
  %23 = alloca [1024 x i8], align 16
  %24 = alloca [1024 x i8], align 16
  %25 = alloca [1024 x i8], align 16
  %26 = alloca [1024 x i8], align 16
  %27 = alloca [1024 x i8], align 16
  %28 = alloca [1024 x i8], align 16
  %29 = alloca [1024 x i8], align 16
  %30 = alloca [1024 x i8], align 16
  %31 = alloca [1024 x i8], align 16
  %32 = alloca [1024 x i8], align 16
  %33 = alloca [1024 x i8], align 16
  %34 = alloca [1024 x i8], align 16
  %35 = alloca [1024 x i8], align 16
  %36 = alloca [1024 x i8], align 16
  %37 = alloca [1024 x i8], align 16
  %38 = alloca [1024 x i8], align 16
  %39 = alloca [1024 x i8], align 16
  %40 = alloca [1024 x i8], align 16
  %41 = alloca [1024 x i8], align 16
  %42 = alloca [1024 x i8], align 16
  %43 = alloca [1024 x i8], align 16
  %44 = alloca [1024 x i8], align 16
  %45 = alloca [1024 x i8], align 16
  %46 = alloca [1024 x i8], align 16
  %47 = alloca [1024 x i8], align 16
  %48 = alloca %struct.SeqIterator, align 8
  %49 = and i32 %3, 1
  %50 = icmp eq i32 %49, 0
  br i1 %50, label %59, label %51

51:                                               ; preds = %5
  %52 = getelementptr inbounds %struct.ID, ptr %1, i64 0, i32 3
  %53 = load ptr, ptr %52, align 8, !tbaa !57
  %54 = icmp eq ptr %53, null
  br i1 %54, label %57, label %55

55:                                               ; preds = %51
  %56 = getelementptr inbounds %struct.Library, ptr %53, i64 0, i32 4
  br label %59

57:                                               ; preds = %51
  %58 = getelementptr inbounds %struct.Main, ptr %0, i64 0, i32 2
  br label %59

59:                                               ; preds = %5, %55, %57
  %60 = phi ptr [ %56, %55 ], [ %58, %57 ], [ null, %5 ]
  %61 = and i32 %3, 4
  %62 = icmp eq i32 %61, 0
  br i1 %62, label %67, label %63

63:                                               ; preds = %59
  %64 = getelementptr inbounds %struct.ID, ptr %1, i64 0, i32 3
  %65 = load ptr, ptr %64, align 8, !tbaa !57
  %66 = icmp eq ptr %65, null
  br i1 %66, label %67, label %589

67:                                               ; preds = %63, %59
  %68 = getelementptr inbounds %struct.ID, ptr %1, i64 0, i32 4
  %69 = load i16, ptr %68, align 8, !tbaa !60
  switch i16 %69, label %589 [
    i16 19785, label %70
    i16 21058, label %98
    i16 16975, label %115
    i16 20307, label %302
    i16 22612, label %323
    i16 18006, label %341
    i16 16717, label %365
    i16 21582, label %398
    i16 17748, label %431
    i16 17235, label %455
    i16 17741, label %539
    i16 18764, label %556
    i16 17229, label %573
  ]

70:                                               ; preds = %67
  %71 = getelementptr inbounds %struct.Image, ptr %1, i64 0, i32 22
  %72 = load ptr, ptr %71, align 8, !tbaa !61
  %73 = icmp eq ptr %72, null
  %74 = and i32 %3, 8
  %75 = icmp eq i32 %74, 0
  %76 = or i1 %75, %73
  br i1 %76, label %77, label %589

77:                                               ; preds = %70
  %78 = getelementptr inbounds %struct.Image, ptr %1, i64 0, i32 11
  %79 = load i16, ptr %78, align 8, !tbaa !65
  %80 = add i16 %79, -1
  %81 = icmp ult i16 %80, 3
  br i1 %81, label %82, label %589

82:                                               ; preds = %77
  %83 = getelementptr inbounds %struct.Image, ptr %1, i64 0, i32 1
  call void @llvm.lifetime.start.p0(i64 1024, ptr nonnull %44) #10
  call void @llvm.lifetime.start.p0(i64 1024, ptr nonnull %45) #10
  %84 = icmp eq ptr %60, null
  br i1 %84, label %88, label %85

85:                                               ; preds = %82
  %86 = call ptr @BLI_strncpy(ptr noundef nonnull %44, ptr noundef nonnull %83, i64 noundef 1024) #10
  %87 = call zeroext i8 @BLI_path_abs(ptr noundef nonnull %44, ptr noundef nonnull %60) #10
  br label %88

88:                                               ; preds = %85, %82
  %89 = phi ptr [ %44, %85 ], [ %83, %82 ]
  %90 = call ptr @BLI_strncpy(ptr noundef nonnull %45, ptr noundef nonnull %83, i64 noundef 1024) #10
  %91 = call zeroext i8 %2(ptr noundef %4, ptr noundef nonnull %45, ptr noundef nonnull %89) #10
  %92 = icmp eq i8 %91, 0
  br i1 %92, label %587, label %93

93:                                               ; preds = %88
  %94 = call ptr @BLI_strncpy(ptr noundef nonnull %83, ptr noundef nonnull %45, i64 noundef 1024) #10
  call void @llvm.lifetime.end.p0(i64 1024, ptr nonnull %45) #10
  call void @llvm.lifetime.end.p0(i64 1024, ptr nonnull %44) #10
  %95 = load ptr, ptr %71, align 8, !tbaa !61
  %96 = icmp eq ptr %95, null
  br i1 %96, label %97, label %589

97:                                               ; preds = %93
  call void @BKE_image_signal(ptr noundef %1, ptr noundef null, i32 noundef 0) #10
  call void @BKE_image_walk_all_users(ptr noundef %0, ptr noundef %1, ptr noundef nonnull @bpath_traverse_image_user_cb) #10
  br label %589

98:                                               ; preds = %67
  %99 = getelementptr inbounds %struct.Brush, ptr %1, i64 0, i32 10
  %100 = load i8, ptr %99, align 8, !tbaa !42
  %101 = icmp eq i8 %100, 0
  br i1 %101, label %589, label %102

102:                                              ; preds = %98
  call void @llvm.lifetime.start.p0(i64 1024, ptr nonnull %42) #10
  call void @llvm.lifetime.start.p0(i64 1024, ptr nonnull %43) #10
  %103 = icmp eq ptr %60, null
  br i1 %103, label %107, label %104

104:                                              ; preds = %102
  %105 = call ptr @BLI_strncpy(ptr noundef nonnull %42, ptr noundef nonnull %99, i64 noundef 1024) #10
  %106 = call zeroext i8 @BLI_path_abs(ptr noundef nonnull %42, ptr noundef nonnull %60) #10
  br label %107

107:                                              ; preds = %104, %102
  %108 = phi ptr [ %42, %104 ], [ %99, %102 ]
  %109 = call ptr @BLI_strncpy(ptr noundef nonnull %43, ptr noundef nonnull %99, i64 noundef 1024) #10
  %110 = call zeroext i8 %2(ptr noundef %4, ptr noundef nonnull %43, ptr noundef nonnull %108) #10
  %111 = icmp eq i8 %110, 0
  br i1 %111, label %114, label %112

112:                                              ; preds = %107
  %113 = call ptr @BLI_strncpy(ptr noundef nonnull %99, ptr noundef nonnull %43, i64 noundef 1024) #10
  br label %114

114:                                              ; preds = %107, %112
  call void @llvm.lifetime.end.p0(i64 1024, ptr nonnull %43) #10
  call void @llvm.lifetime.end.p0(i64 1024, ptr nonnull %42) #10
  br label %589

115:                                              ; preds = %67
  %116 = getelementptr inbounds %struct.Object, ptr %1, i64 0, i32 26
  %117 = load ptr, ptr %116, align 8, !tbaa !37
  %118 = icmp eq ptr %117, null
  br i1 %118, label %234, label %119

119:                                              ; preds = %115
  %120 = icmp eq ptr %60, null
  %121 = icmp eq ptr %60, null
  %122 = icmp eq ptr %60, null
  %123 = icmp eq ptr %60, null
  %124 = icmp eq ptr %60, null
  br label %125

125:                                              ; preds = %119, %231
  %126 = phi ptr [ %117, %119 ], [ %232, %231 ]
  %127 = getelementptr inbounds %struct.ModifierData, ptr %126, i64 0, i32 2
  %128 = load i32, ptr %127, align 8, !tbaa !66
  switch i32 %128, label %231 [
    i32 26, label %129
    i32 31, label %146
    i32 22, label %179
    i32 39, label %205
    i32 46, label %218
  ]

129:                                              ; preds = %125
  %130 = getelementptr inbounds %struct.FluidsimModifierData, ptr %126, i64 0, i32 1
  %131 = load ptr, ptr %130, align 8, !tbaa !68
  %132 = icmp eq ptr %131, null
  br i1 %132, label %231, label %133

133:                                              ; preds = %129
  %134 = getelementptr inbounds %struct.FluidsimSettings, ptr %131, i64 0, i32 27
  call void @llvm.lifetime.start.p0(i64 1024, ptr nonnull %40) #10
  call void @llvm.lifetime.start.p0(i64 1024, ptr nonnull %41) #10
  br i1 %124, label %138, label %135

135:                                              ; preds = %133
  %136 = call ptr @BLI_strncpy(ptr noundef nonnull %40, ptr noundef nonnull %134, i64 noundef 1024) #10
  %137 = call zeroext i8 @BLI_path_abs(ptr noundef nonnull %40, ptr noundef nonnull %60) #10
  br label %138

138:                                              ; preds = %135, %133
  %139 = phi ptr [ %40, %135 ], [ %134, %133 ]
  %140 = call ptr @BLI_strncpy(ptr noundef nonnull %41, ptr noundef nonnull %134, i64 noundef 1024) #10
  %141 = call zeroext i8 %2(ptr noundef %4, ptr noundef nonnull %41, ptr noundef nonnull %139) #10
  %142 = icmp eq i8 %141, 0
  br i1 %142, label %145, label %143

143:                                              ; preds = %138
  %144 = call ptr @BLI_strncpy(ptr noundef nonnull %134, ptr noundef nonnull %41, i64 noundef 1024) #10
  br label %145

145:                                              ; preds = %138, %143
  call void @llvm.lifetime.end.p0(i64 1024, ptr nonnull %41) #10
  call void @llvm.lifetime.end.p0(i64 1024, ptr nonnull %40) #10
  br label %231

146:                                              ; preds = %125
  %147 = getelementptr inbounds %struct.SmokeModifierData, ptr %126, i64 0, i32 5
  %148 = load i32, ptr %147, align 4, !tbaa !70
  %149 = and i32 %148, 1
  %150 = icmp eq i32 %149, 0
  br i1 %150, label %231, label %151

151:                                              ; preds = %146
  %152 = getelementptr inbounds %struct.SmokeModifierData, ptr %126, i64 0, i32 1
  %153 = load ptr, ptr %152, align 8, !tbaa !72
  %154 = getelementptr inbounds %struct.SmokeDomainSettings, ptr %153, i64 0, i32 48
  %155 = load ptr, ptr %154, align 8, !tbaa !37
  %156 = icmp eq ptr %155, null
  br i1 %156, label %231, label %157

157:                                              ; preds = %151, %176
  %158 = phi ptr [ %177, %176 ], [ %155, %151 ]
  %159 = getelementptr inbounds %struct.PointCache, ptr %158, i64 0, i32 2
  %160 = load i32, ptr %159, align 8, !tbaa !73
  %161 = and i32 %160, 64
  %162 = icmp eq i32 %161, 0
  br i1 %162, label %176, label %163

163:                                              ; preds = %157
  %164 = getelementptr inbounds %struct.PointCache, ptr %158, i64 0, i32 18
  call void @llvm.lifetime.start.p0(i64 1024, ptr nonnull %38) #10
  call void @llvm.lifetime.start.p0(i64 1024, ptr nonnull %39) #10
  br i1 %123, label %168, label %165

165:                                              ; preds = %163
  %166 = call ptr @BLI_strncpy(ptr noundef nonnull %38, ptr noundef nonnull %164, i64 noundef 1024) #10
  %167 = call zeroext i8 @BLI_path_abs(ptr noundef nonnull %38, ptr noundef nonnull %60) #10
  br label %168

168:                                              ; preds = %165, %163
  %169 = phi ptr [ %38, %165 ], [ %164, %163 ]
  %170 = call ptr @BLI_strncpy(ptr noundef nonnull %39, ptr noundef nonnull %164, i64 noundef 1024) #10
  %171 = call zeroext i8 %2(ptr noundef %4, ptr noundef nonnull %39, ptr noundef nonnull %169) #10
  %172 = icmp eq i8 %171, 0
  br i1 %172, label %175, label %173

173:                                              ; preds = %168
  %174 = call ptr @BLI_strncpy(ptr noundef nonnull %164, ptr noundef nonnull %39, i64 noundef 1024) #10
  br label %175

175:                                              ; preds = %168, %173
  call void @llvm.lifetime.end.p0(i64 1024, ptr nonnull %39) #10
  call void @llvm.lifetime.end.p0(i64 1024, ptr nonnull %38) #10
  br label %176

176:                                              ; preds = %157, %175
  %177 = load ptr, ptr %158, align 8, !tbaa !37
  %178 = icmp eq ptr %177, null
  br i1 %178, label %231, label %157, !llvm.loop !76

179:                                              ; preds = %125
  %180 = getelementptr inbounds %struct.ClothModifierData, ptr %126, i64 0, i32 6
  %181 = load ptr, ptr %180, align 8, !tbaa !37
  %182 = icmp eq ptr %181, null
  br i1 %182, label %231, label %183

183:                                              ; preds = %179, %202
  %184 = phi ptr [ %203, %202 ], [ %181, %179 ]
  %185 = getelementptr inbounds %struct.PointCache, ptr %184, i64 0, i32 2
  %186 = load i32, ptr %185, align 8, !tbaa !73
  %187 = and i32 %186, 64
  %188 = icmp eq i32 %187, 0
  br i1 %188, label %202, label %189

189:                                              ; preds = %183
  %190 = getelementptr inbounds %struct.PointCache, ptr %184, i64 0, i32 18
  call void @llvm.lifetime.start.p0(i64 1024, ptr nonnull %36) #10
  call void @llvm.lifetime.start.p0(i64 1024, ptr nonnull %37) #10
  br i1 %122, label %194, label %191

191:                                              ; preds = %189
  %192 = call ptr @BLI_strncpy(ptr noundef nonnull %36, ptr noundef nonnull %190, i64 noundef 1024) #10
  %193 = call zeroext i8 @BLI_path_abs(ptr noundef nonnull %36, ptr noundef nonnull %60) #10
  br label %194

194:                                              ; preds = %191, %189
  %195 = phi ptr [ %36, %191 ], [ %190, %189 ]
  %196 = call ptr @BLI_strncpy(ptr noundef nonnull %37, ptr noundef nonnull %190, i64 noundef 1024) #10
  %197 = call zeroext i8 %2(ptr noundef %4, ptr noundef nonnull %37, ptr noundef nonnull %195) #10
  %198 = icmp eq i8 %197, 0
  br i1 %198, label %201, label %199

199:                                              ; preds = %194
  %200 = call ptr @BLI_strncpy(ptr noundef nonnull %190, ptr noundef nonnull %37, i64 noundef 1024) #10
  br label %201

201:                                              ; preds = %194, %199
  call void @llvm.lifetime.end.p0(i64 1024, ptr nonnull %37) #10
  call void @llvm.lifetime.end.p0(i64 1024, ptr nonnull %36) #10
  br label %202

202:                                              ; preds = %183, %201
  %203 = load ptr, ptr %184, align 8, !tbaa !37
  %204 = icmp eq ptr %203, null
  br i1 %204, label %231, label %183, !llvm.loop !77

205:                                              ; preds = %125
  %206 = getelementptr inbounds %struct.OceanModifierData, ptr %126, i64 0, i32 17
  call void @llvm.lifetime.start.p0(i64 1024, ptr nonnull %34) #10
  call void @llvm.lifetime.start.p0(i64 1024, ptr nonnull %35) #10
  br i1 %121, label %210, label %207

207:                                              ; preds = %205
  %208 = call ptr @BLI_strncpy(ptr noundef nonnull %34, ptr noundef nonnull %206, i64 noundef 1024) #10
  %209 = call zeroext i8 @BLI_path_abs(ptr noundef nonnull %34, ptr noundef nonnull %60) #10
  br label %210

210:                                              ; preds = %207, %205
  %211 = phi ptr [ %34, %207 ], [ %206, %205 ]
  %212 = call ptr @BLI_strncpy(ptr noundef nonnull %35, ptr noundef nonnull %206, i64 noundef 1024) #10
  %213 = call zeroext i8 %2(ptr noundef %4, ptr noundef nonnull %35, ptr noundef nonnull %211) #10
  %214 = icmp eq i8 %213, 0
  br i1 %214, label %217, label %215

215:                                              ; preds = %210
  %216 = call ptr @BLI_strncpy(ptr noundef nonnull %206, ptr noundef nonnull %35, i64 noundef 1024) #10
  br label %217

217:                                              ; preds = %210, %215
  call void @llvm.lifetime.end.p0(i64 1024, ptr nonnull %35) #10
  call void @llvm.lifetime.end.p0(i64 1024, ptr nonnull %34) #10
  br label %231

218:                                              ; preds = %125
  %219 = getelementptr inbounds %struct.MeshCacheModifierData, ptr %126, i64 0, i32 17
  call void @llvm.lifetime.start.p0(i64 1024, ptr nonnull %32) #10
  call void @llvm.lifetime.start.p0(i64 1024, ptr nonnull %33) #10
  br i1 %120, label %223, label %220

220:                                              ; preds = %218
  %221 = call ptr @BLI_strncpy(ptr noundef nonnull %32, ptr noundef nonnull %219, i64 noundef 1024) #10
  %222 = call zeroext i8 @BLI_path_abs(ptr noundef nonnull %32, ptr noundef nonnull %60) #10
  br label %223

223:                                              ; preds = %220, %218
  %224 = phi ptr [ %32, %220 ], [ %219, %218 ]
  %225 = call ptr @BLI_strncpy(ptr noundef nonnull %33, ptr noundef nonnull %219, i64 noundef 1024) #10
  %226 = call zeroext i8 %2(ptr noundef %4, ptr noundef nonnull %33, ptr noundef nonnull %224) #10
  %227 = icmp eq i8 %226, 0
  br i1 %227, label %230, label %228

228:                                              ; preds = %223
  %229 = call ptr @BLI_strncpy(ptr noundef nonnull %219, ptr noundef nonnull %33, i64 noundef 1024) #10
  br label %230

230:                                              ; preds = %223, %228
  call void @llvm.lifetime.end.p0(i64 1024, ptr nonnull %33) #10
  call void @llvm.lifetime.end.p0(i64 1024, ptr nonnull %32) #10
  br label %231

231:                                              ; preds = %202, %176, %179, %151, %125, %146, %129, %145, %230, %217
  %232 = load ptr, ptr %126, align 8, !tbaa !37
  %233 = icmp eq ptr %232, null
  br i1 %233, label %234, label %125, !llvm.loop !78

234:                                              ; preds = %231, %115
  %235 = getelementptr inbounds %struct.Object, ptr %1, i64 0, i32 111
  %236 = load ptr, ptr %235, align 8, !tbaa !79
  %237 = icmp eq ptr %236, null
  br i1 %237, label %266, label %238

238:                                              ; preds = %234
  %239 = getelementptr inbounds %struct.SoftBody, ptr %236, i64 0, i32 48
  %240 = load ptr, ptr %239, align 8, !tbaa !37
  %241 = icmp eq ptr %240, null
  br i1 %241, label %266, label %242

242:                                              ; preds = %238
  %243 = icmp eq ptr %60, null
  br label %244

244:                                              ; preds = %242, %263
  %245 = phi ptr [ %240, %242 ], [ %264, %263 ]
  %246 = getelementptr inbounds %struct.PointCache, ptr %245, i64 0, i32 2
  %247 = load i32, ptr %246, align 8, !tbaa !73
  %248 = and i32 %247, 64
  %249 = icmp eq i32 %248, 0
  br i1 %249, label %263, label %250

250:                                              ; preds = %244
  %251 = getelementptr inbounds %struct.PointCache, ptr %245, i64 0, i32 18
  call void @llvm.lifetime.start.p0(i64 1024, ptr nonnull %30) #10
  call void @llvm.lifetime.start.p0(i64 1024, ptr nonnull %31) #10
  br i1 %243, label %255, label %252

252:                                              ; preds = %250
  %253 = call ptr @BLI_strncpy(ptr noundef nonnull %30, ptr noundef nonnull %251, i64 noundef 1024) #10
  %254 = call zeroext i8 @BLI_path_abs(ptr noundef nonnull %30, ptr noundef nonnull %60) #10
  br label %255

255:                                              ; preds = %252, %250
  %256 = phi ptr [ %30, %252 ], [ %251, %250 ]
  %257 = call ptr @BLI_strncpy(ptr noundef nonnull %31, ptr noundef nonnull %251, i64 noundef 1024) #10
  %258 = call zeroext i8 %2(ptr noundef %4, ptr noundef nonnull %31, ptr noundef nonnull %256) #10
  %259 = icmp eq i8 %258, 0
  br i1 %259, label %262, label %260

260:                                              ; preds = %255
  %261 = call ptr @BLI_strncpy(ptr noundef nonnull %251, ptr noundef nonnull %31, i64 noundef 1024) #10
  br label %262

262:                                              ; preds = %255, %260
  call void @llvm.lifetime.end.p0(i64 1024, ptr nonnull %31) #10
  call void @llvm.lifetime.end.p0(i64 1024, ptr nonnull %30) #10
  br label %263

263:                                              ; preds = %244, %262
  %264 = load ptr, ptr %245, align 8, !tbaa !37
  %265 = icmp eq ptr %264, null
  br i1 %265, label %266, label %244, !llvm.loop !83

266:                                              ; preds = %263, %238, %234
  %267 = getelementptr inbounds %struct.Object, ptr %1, i64 0, i32 109
  %268 = load ptr, ptr %267, align 8, !tbaa !37
  %269 = icmp eq ptr %268, null
  br i1 %269, label %589, label %270

270:                                              ; preds = %266
  %271 = icmp eq ptr %60, null
  br label %275

272:                                              ; preds = %299, %275
  %273 = load ptr, ptr %276, align 8, !tbaa !37
  %274 = icmp eq ptr %273, null
  br i1 %274, label %589, label %275, !llvm.loop !84

275:                                              ; preds = %270, %272
  %276 = phi ptr [ %268, %270 ], [ %273, %272 ]
  %277 = getelementptr inbounds %struct.ParticleSystem, ptr %276, i64 0, i32 41
  %278 = load ptr, ptr %277, align 8, !tbaa !37
  %279 = icmp eq ptr %278, null
  br i1 %279, label %272, label %280

280:                                              ; preds = %275, %299
  %281 = phi ptr [ %300, %299 ], [ %278, %275 ]
  %282 = getelementptr inbounds %struct.PointCache, ptr %281, i64 0, i32 2
  %283 = load i32, ptr %282, align 8, !tbaa !73
  %284 = and i32 %283, 64
  %285 = icmp eq i32 %284, 0
  br i1 %285, label %299, label %286

286:                                              ; preds = %280
  %287 = getelementptr inbounds %struct.PointCache, ptr %281, i64 0, i32 18
  call void @llvm.lifetime.start.p0(i64 1024, ptr nonnull %28) #10
  call void @llvm.lifetime.start.p0(i64 1024, ptr nonnull %29) #10
  br i1 %271, label %291, label %288

288:                                              ; preds = %286
  %289 = call ptr @BLI_strncpy(ptr noundef nonnull %28, ptr noundef nonnull %287, i64 noundef 1024) #10
  %290 = call zeroext i8 @BLI_path_abs(ptr noundef nonnull %28, ptr noundef nonnull %60) #10
  br label %291

291:                                              ; preds = %288, %286
  %292 = phi ptr [ %28, %288 ], [ %287, %286 ]
  %293 = call ptr @BLI_strncpy(ptr noundef nonnull %29, ptr noundef nonnull %287, i64 noundef 1024) #10
  %294 = call zeroext i8 %2(ptr noundef %4, ptr noundef nonnull %29, ptr noundef nonnull %292) #10
  %295 = icmp eq i8 %294, 0
  br i1 %295, label %298, label %296

296:                                              ; preds = %291
  %297 = call ptr @BLI_strncpy(ptr noundef nonnull %287, ptr noundef nonnull %29, i64 noundef 1024) #10
  br label %298

298:                                              ; preds = %291, %296
  call void @llvm.lifetime.end.p0(i64 1024, ptr nonnull %29) #10
  call void @llvm.lifetime.end.p0(i64 1024, ptr nonnull %28) #10
  br label %299

299:                                              ; preds = %280, %298
  %300 = load ptr, ptr %281, align 8, !tbaa !37
  %301 = icmp eq ptr %300, null
  br i1 %301, label %272, label %280, !llvm.loop !85

302:                                              ; preds = %67
  %303 = getelementptr inbounds %struct.bSound, ptr %1, i64 0, i32 2
  %304 = load ptr, ptr %303, align 8, !tbaa !86
  %305 = icmp eq ptr %304, null
  %306 = and i32 %3, 8
  %307 = icmp eq i32 %306, 0
  %308 = or i1 %307, %305
  br i1 %308, label %309, label %589

309:                                              ; preds = %302
  %310 = getelementptr inbounds %struct.bSound, ptr %1, i64 0, i32 1
  call void @llvm.lifetime.start.p0(i64 1024, ptr nonnull %26) #10
  call void @llvm.lifetime.start.p0(i64 1024, ptr nonnull %27) #10
  %311 = icmp eq ptr %60, null
  br i1 %311, label %315, label %312

312:                                              ; preds = %309
  %313 = call ptr @BLI_strncpy(ptr noundef nonnull %26, ptr noundef nonnull %310, i64 noundef 1024) #10
  %314 = call zeroext i8 @BLI_path_abs(ptr noundef nonnull %26, ptr noundef nonnull %60) #10
  br label %315

315:                                              ; preds = %312, %309
  %316 = phi ptr [ %26, %312 ], [ %310, %309 ]
  %317 = call ptr @BLI_strncpy(ptr noundef nonnull %27, ptr noundef nonnull %310, i64 noundef 1024) #10
  %318 = call zeroext i8 %2(ptr noundef %4, ptr noundef nonnull %27, ptr noundef nonnull %316) #10
  %319 = icmp eq i8 %318, 0
  br i1 %319, label %322, label %320

320:                                              ; preds = %315
  %321 = call ptr @BLI_strncpy(ptr noundef nonnull %310, ptr noundef nonnull %27, i64 noundef 1024) #10
  br label %322

322:                                              ; preds = %315, %320
  call void @llvm.lifetime.end.p0(i64 1024, ptr nonnull %27) #10
  call void @llvm.lifetime.end.p0(i64 1024, ptr nonnull %26) #10
  br label %589

323:                                              ; preds = %67
  %324 = getelementptr inbounds %struct.Text, ptr %1, i64 0, i32 1
  %325 = load ptr, ptr %324, align 8, !tbaa !37
  %326 = icmp eq ptr %325, null
  br i1 %326, label %589, label %327

327:                                              ; preds = %323
  call void @llvm.lifetime.start.p0(i64 1024, ptr nonnull %46) #10
  call void @llvm.lifetime.start.p0(i64 1024, ptr nonnull %47) #10
  %328 = icmp eq ptr %60, null
  br i1 %328, label %332, label %329

329:                                              ; preds = %327
  %330 = call ptr @BLI_strncpy(ptr noundef nonnull %46, ptr noundef nonnull %325, i64 noundef 1024) #10
  %331 = call zeroext i8 @BLI_path_abs(ptr noundef nonnull %46, ptr noundef nonnull %60) #10
  br label %332

332:                                              ; preds = %327, %329
  %333 = phi ptr [ %46, %329 ], [ %325, %327 ]
  %334 = call zeroext i8 %2(ptr noundef %4, ptr noundef nonnull %47, ptr noundef nonnull %333) #10
  %335 = icmp eq i8 %334, 0
  br i1 %335, label %340, label %336

336:                                              ; preds = %332
  %337 = load ptr, ptr @MEM_freeN, align 8, !tbaa !37
  %338 = load ptr, ptr %324, align 8, !tbaa !37
  call void %337(ptr noundef %338) #10
  %339 = call ptr @BLI_strdup(ptr noundef nonnull %47) #10
  store ptr %339, ptr %324, align 8, !tbaa !37
  br label %340

340:                                              ; preds = %332, %336
  call void @llvm.lifetime.end.p0(i64 1024, ptr nonnull %47) #10
  call void @llvm.lifetime.end.p0(i64 1024, ptr nonnull %46) #10
  br label %589

341:                                              ; preds = %67
  %342 = getelementptr inbounds %struct.VFont, ptr %1, i64 0, i32 3
  %343 = load ptr, ptr %342, align 8, !tbaa !88
  %344 = icmp eq ptr %343, null
  %345 = and i32 %3, 8
  %346 = icmp eq i32 %345, 0
  %347 = or i1 %346, %344
  br i1 %347, label %348, label %589

348:                                              ; preds = %341
  %349 = tail call zeroext i8 @BKE_vfont_is_builtin(ptr noundef %1) #10
  %350 = icmp eq i8 %349, 0
  br i1 %350, label %351, label %589

351:                                              ; preds = %348
  %352 = getelementptr inbounds %struct.VFont, ptr %1, i64 0, i32 1
  call void @llvm.lifetime.start.p0(i64 1024, ptr nonnull %24) #10
  call void @llvm.lifetime.start.p0(i64 1024, ptr nonnull %25) #10
  %353 = icmp eq ptr %60, null
  br i1 %353, label %357, label %354

354:                                              ; preds = %351
  %355 = call ptr @BLI_strncpy(ptr noundef nonnull %24, ptr noundef nonnull %352, i64 noundef 1024) #10
  %356 = call zeroext i8 @BLI_path_abs(ptr noundef nonnull %24, ptr noundef nonnull %60) #10
  br label %357

357:                                              ; preds = %354, %351
  %358 = phi ptr [ %24, %354 ], [ %352, %351 ]
  %359 = call ptr @BLI_strncpy(ptr noundef nonnull %25, ptr noundef nonnull %352, i64 noundef 1024) #10
  %360 = call zeroext i8 %2(ptr noundef %4, ptr noundef nonnull %25, ptr noundef nonnull %358) #10
  %361 = icmp eq i8 %360, 0
  br i1 %361, label %364, label %362

362:                                              ; preds = %357
  %363 = call ptr @BLI_strncpy(ptr noundef nonnull %352, ptr noundef nonnull %25, i64 noundef 1024) #10
  br label %364

364:                                              ; preds = %357, %362
  call void @llvm.lifetime.end.p0(i64 1024, ptr nonnull %25) #10
  call void @llvm.lifetime.end.p0(i64 1024, ptr nonnull %24) #10
  br label %589

365:                                              ; preds = %67
  %366 = getelementptr inbounds %struct.Material, ptr %1, i64 0, i32 103
  %367 = load ptr, ptr %366, align 8, !tbaa !90
  %368 = icmp eq ptr %367, null
  br i1 %368, label %589, label %369

369:                                              ; preds = %365
  %370 = getelementptr inbounds %struct.bNodeTree, ptr %367, i64 0, i32 7
  %371 = load ptr, ptr %370, align 8, !tbaa !37
  %372 = icmp eq ptr %371, null
  br i1 %372, label %589, label %373

373:                                              ; preds = %369
  %374 = icmp eq ptr %60, null
  br label %375

375:                                              ; preds = %373, %395
  %376 = phi ptr [ %371, %373 ], [ %396, %395 ]
  %377 = getelementptr inbounds %struct.bNode, ptr %376, i64 0, i32 8
  %378 = load i16, ptr %377, align 4, !tbaa !94
  %379 = icmp eq i16 %378, 171
  br i1 %379, label %380, label %395

380:                                              ; preds = %375
  %381 = getelementptr inbounds %struct.bNode, ptr %376, i64 0, i32 21
  %382 = load ptr, ptr %381, align 8, !tbaa !97
  %383 = getelementptr inbounds %struct.NodeShaderScript, ptr %382, i64 0, i32 2
  call void @llvm.lifetime.start.p0(i64 1024, ptr nonnull %22) #10
  call void @llvm.lifetime.start.p0(i64 1024, ptr nonnull %23) #10
  br i1 %374, label %387, label %384

384:                                              ; preds = %380
  %385 = call ptr @BLI_strncpy(ptr noundef nonnull %22, ptr noundef nonnull %383, i64 noundef 1024) #10
  %386 = call zeroext i8 @BLI_path_abs(ptr noundef nonnull %22, ptr noundef nonnull %60) #10
  br label %387

387:                                              ; preds = %384, %380
  %388 = phi ptr [ %22, %384 ], [ %383, %380 ]
  %389 = call ptr @BLI_strncpy(ptr noundef nonnull %23, ptr noundef nonnull %383, i64 noundef 1024) #10
  %390 = call zeroext i8 %2(ptr noundef %4, ptr noundef nonnull %23, ptr noundef nonnull %388) #10
  %391 = icmp eq i8 %390, 0
  br i1 %391, label %394, label %392

392:                                              ; preds = %387
  %393 = call ptr @BLI_strncpy(ptr noundef nonnull %383, ptr noundef nonnull %23, i64 noundef 1024) #10
  br label %394

394:                                              ; preds = %387, %392
  call void @llvm.lifetime.end.p0(i64 1024, ptr nonnull %23) #10
  call void @llvm.lifetime.end.p0(i64 1024, ptr nonnull %22) #10
  br label %395

395:                                              ; preds = %375, %394
  %396 = load ptr, ptr %376, align 8, !tbaa !37
  %397 = icmp eq ptr %396, null
  br i1 %397, label %589, label %375, !llvm.loop !98

398:                                              ; preds = %67
  %399 = getelementptr inbounds %struct.bNodeTree, ptr %1, i64 0, i32 9
  %400 = load i32, ptr %399, align 8, !tbaa !99
  %401 = icmp eq i32 %400, 0
  br i1 %401, label %402, label %589

402:                                              ; preds = %398
  %403 = getelementptr inbounds %struct.bNodeTree, ptr %1, i64 0, i32 7
  %404 = load ptr, ptr %403, align 8, !tbaa !37
  %405 = icmp eq ptr %404, null
  br i1 %405, label %589, label %406

406:                                              ; preds = %402
  %407 = icmp eq ptr %60, null
  br label %408

408:                                              ; preds = %406, %428
  %409 = phi ptr [ %404, %406 ], [ %429, %428 ]
  %410 = getelementptr inbounds %struct.bNode, ptr %409, i64 0, i32 8
  %411 = load i16, ptr %410, align 4, !tbaa !94
  %412 = icmp eq i16 %411, 171
  br i1 %412, label %413, label %428

413:                                              ; preds = %408
  %414 = getelementptr inbounds %struct.bNode, ptr %409, i64 0, i32 21
  %415 = load ptr, ptr %414, align 8, !tbaa !97
  %416 = getelementptr inbounds %struct.NodeShaderScript, ptr %415, i64 0, i32 2
  call void @llvm.lifetime.start.p0(i64 1024, ptr nonnull %20) #10
  call void @llvm.lifetime.start.p0(i64 1024, ptr nonnull %21) #10
  br i1 %407, label %420, label %417

417:                                              ; preds = %413
  %418 = call ptr @BLI_strncpy(ptr noundef nonnull %20, ptr noundef nonnull %416, i64 noundef 1024) #10
  %419 = call zeroext i8 @BLI_path_abs(ptr noundef nonnull %20, ptr noundef nonnull %60) #10
  br label %420

420:                                              ; preds = %417, %413
  %421 = phi ptr [ %20, %417 ], [ %416, %413 ]
  %422 = call ptr @BLI_strncpy(ptr noundef nonnull %21, ptr noundef nonnull %416, i64 noundef 1024) #10
  %423 = call zeroext i8 %2(ptr noundef %4, ptr noundef nonnull %21, ptr noundef nonnull %421) #10
  %424 = icmp eq i8 %423, 0
  br i1 %424, label %427, label %425

425:                                              ; preds = %420
  %426 = call ptr @BLI_strncpy(ptr noundef nonnull %416, ptr noundef nonnull %21, i64 noundef 1024) #10
  br label %427

427:                                              ; preds = %420, %425
  call void @llvm.lifetime.end.p0(i64 1024, ptr nonnull %21) #10
  call void @llvm.lifetime.end.p0(i64 1024, ptr nonnull %20) #10
  br label %428

428:                                              ; preds = %408, %427
  %429 = load ptr, ptr %409, align 8, !tbaa !37
  %430 = icmp eq ptr %429, null
  br i1 %430, label %589, label %408, !llvm.loop !102

431:                                              ; preds = %67
  %432 = getelementptr inbounds %struct.Tex, ptr %1, i64 0, i32 32
  %433 = load i16, ptr %432, align 8, !tbaa !103
  %434 = icmp eq i16 %433, 15
  br i1 %434, label %435, label %589

435:                                              ; preds = %431
  %436 = getelementptr inbounds %struct.Tex, ptr %1, i64 0, i32 59
  %437 = load ptr, ptr %436, align 8, !tbaa !106
  %438 = getelementptr inbounds %struct.VoxelData, ptr %437, i64 0, i32 2
  %439 = load i16, ptr %438, align 8, !tbaa !107
  %440 = icmp ult i16 %439, 3
  br i1 %440, label %441, label %589

441:                                              ; preds = %435
  %442 = getelementptr inbounds %struct.VoxelData, ptr %437, i64 0, i32 12
  call void @llvm.lifetime.start.p0(i64 1024, ptr nonnull %18) #10
  call void @llvm.lifetime.start.p0(i64 1024, ptr nonnull %19) #10
  %443 = icmp eq ptr %60, null
  br i1 %443, label %447, label %444

444:                                              ; preds = %441
  %445 = call ptr @BLI_strncpy(ptr noundef nonnull %18, ptr noundef nonnull %442, i64 noundef 1024) #10
  %446 = call zeroext i8 @BLI_path_abs(ptr noundef nonnull %18, ptr noundef nonnull %60) #10
  br label %447

447:                                              ; preds = %444, %441
  %448 = phi ptr [ %18, %444 ], [ %442, %441 ]
  %449 = call ptr @BLI_strncpy(ptr noundef nonnull %19, ptr noundef nonnull %442, i64 noundef 1024) #10
  %450 = call zeroext i8 %2(ptr noundef %4, ptr noundef nonnull %19, ptr noundef nonnull %448) #10
  %451 = icmp eq i8 %450, 0
  br i1 %451, label %454, label %452

452:                                              ; preds = %447
  %453 = call ptr @BLI_strncpy(ptr noundef nonnull %442, ptr noundef nonnull %19, i64 noundef 1024) #10
  br label %454

454:                                              ; preds = %447, %452
  call void @llvm.lifetime.end.p0(i64 1024, ptr nonnull %19) #10
  call void @llvm.lifetime.end.p0(i64 1024, ptr nonnull %18) #10
  br label %589

455:                                              ; preds = %67
  %456 = getelementptr inbounds %struct.Scene, ptr %1, i64 0, i32 19
  %457 = load ptr, ptr %456, align 8, !tbaa !109
  %458 = icmp eq ptr %457, null
  br i1 %458, label %589, label %459

459:                                              ; preds = %455
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %48) #10
  call void @BKE_sequence_iterator_begin(ptr noundef nonnull %457, ptr noundef nonnull %48, i8 noundef zeroext 0) #10
  %460 = getelementptr inbounds %struct.SeqIterator, ptr %48, i64 0, i32 4
  %461 = load i32, ptr %460, align 8, !tbaa !126
  %462 = icmp eq i32 %461, 0
  br i1 %462, label %538, label %463

463:                                              ; preds = %459
  %464 = getelementptr inbounds %struct.SeqIterator, ptr %48, i64 0, i32 3
  %465 = icmp eq ptr %60, null
  %466 = icmp eq ptr %60, null
  %467 = and i32 %3, 16
  %468 = icmp eq i32 %467, 0
  %469 = icmp eq ptr %60, null
  br label %470

470:                                              ; preds = %463, %535
  %471 = load ptr, ptr %464, align 8, !tbaa !128
  %472 = getelementptr inbounds %struct.Sequence, ptr %471, i64 0, i32 6
  %473 = load i32, ptr %472, align 4, !tbaa !129
  switch i32 %473, label %535 [
    i32 3, label %474
    i32 0, label %474
    i32 4, label %474
    i32 5, label %474
  ]

474:                                              ; preds = %470, %470, %470, %470
  %475 = getelementptr inbounds %struct.Sequence, ptr %471, i64 0, i32 24
  %476 = load ptr, ptr %475, align 8, !tbaa !131
  %477 = getelementptr inbounds %struct.Strip, ptr %476, i64 0, i32 6
  %478 = load ptr, ptr %477, align 8, !tbaa !132
  %479 = icmp eq i32 %473, 3
  br i1 %479, label %484, label %480

480:                                              ; preds = %474
  %481 = icmp eq i32 %473, 4
  %482 = icmp ne ptr %478, null
  %483 = select i1 %481, i1 %482, i1 false
  br i1 %483, label %486, label %495

484:                                              ; preds = %474
  %485 = icmp eq ptr %478, null
  br i1 %485, label %495, label %486

486:                                              ; preds = %480, %484
  %487 = getelementptr inbounds %struct.Strip, ptr %476, i64 0, i32 7
  call void @llvm.lifetime.start.p0(i64 1024, ptr nonnull %16) #10
  call void @llvm.lifetime.start.p0(i64 1024, ptr nonnull %17) #10
  call void @BLI_join_dirfile(ptr noundef nonnull %16, i64 noundef 1024, ptr noundef nonnull %487, ptr noundef %478) #10
  br i1 %465, label %490, label %488

488:                                              ; preds = %486
  %489 = call zeroext i8 @BLI_path_abs(ptr noundef nonnull %16, ptr noundef nonnull %60) #10
  br label %490

490:                                              ; preds = %488, %486
  %491 = call zeroext i8 %2(ptr noundef %4, ptr noundef nonnull %17, ptr noundef nonnull %16) #10
  %492 = icmp eq i8 %491, 0
  br i1 %492, label %494, label %493

493:                                              ; preds = %490
  call void @BLI_split_dirfile(ptr noundef nonnull %17, ptr noundef nonnull %487, ptr noundef %478, i64 noundef 768, i64 noundef 256) #10
  br label %494

494:                                              ; preds = %490, %493
  call void @llvm.lifetime.end.p0(i64 1024, ptr nonnull %17) #10
  call void @llvm.lifetime.end.p0(i64 1024, ptr nonnull %16) #10
  br label %535

495:                                              ; preds = %484, %480
  %496 = icmp eq i32 %473, 0
  %497 = icmp ne ptr %478, null
  %498 = select i1 %496, i1 %497, i1 false
  br i1 %498, label %499, label %522

499:                                              ; preds = %495
  %500 = load ptr, ptr @MEM_allocN_len, align 8, !tbaa !37
  %501 = call i64 %500(ptr noundef nonnull %478) #10
  %502 = udiv i64 %501, 264
  %503 = trunc i64 %502 to i32
  %504 = call i32 @llvm.smin.i32(i32 %503, i32 1)
  %505 = select i1 %468, i32 %503, i32 %504
  %506 = icmp sgt i32 %505, 0
  br i1 %506, label %507, label %535

507:                                              ; preds = %499, %518
  %508 = phi i32 [ %519, %518 ], [ 0, %499 ]
  %509 = phi ptr [ %520, %518 ], [ %478, %499 ]
  %510 = load ptr, ptr %475, align 8, !tbaa !131
  %511 = getelementptr inbounds %struct.Strip, ptr %510, i64 0, i32 7
  call void @llvm.lifetime.start.p0(i64 1024, ptr nonnull %14) #10
  call void @llvm.lifetime.start.p0(i64 1024, ptr nonnull %15) #10
  call void @BLI_join_dirfile(ptr noundef nonnull %14, i64 noundef 1024, ptr noundef nonnull %511, ptr noundef nonnull %509) #10
  br i1 %469, label %514, label %512

512:                                              ; preds = %507
  %513 = call zeroext i8 @BLI_path_abs(ptr noundef nonnull %14, ptr noundef nonnull %60) #10
  br label %514

514:                                              ; preds = %512, %507
  %515 = call zeroext i8 %2(ptr noundef %4, ptr noundef nonnull %15, ptr noundef nonnull %14) #10
  %516 = icmp eq i8 %515, 0
  br i1 %516, label %518, label %517

517:                                              ; preds = %514
  call void @BLI_split_dirfile(ptr noundef nonnull %15, ptr noundef nonnull %511, ptr noundef nonnull %509, i64 noundef 768, i64 noundef 256) #10
  br label %518

518:                                              ; preds = %514, %517
  call void @llvm.lifetime.end.p0(i64 1024, ptr nonnull %15) #10
  call void @llvm.lifetime.end.p0(i64 1024, ptr nonnull %14) #10
  %519 = add nuw nsw i32 %508, 1
  %520 = getelementptr inbounds %struct.StripElem, ptr %509, i64 1
  %521 = icmp eq i32 %519, %505
  br i1 %521, label %535, label %507, !llvm.loop !134

522:                                              ; preds = %495
  %523 = getelementptr inbounds %struct.Strip, ptr %476, i64 0, i32 7
  call void @llvm.lifetime.start.p0(i64 1024, ptr nonnull %12) #10
  call void @llvm.lifetime.start.p0(i64 1024, ptr nonnull %13) #10
  br i1 %466, label %527, label %524

524:                                              ; preds = %522
  %525 = call ptr @BLI_strncpy(ptr noundef nonnull %12, ptr noundef nonnull %523, i64 noundef 1024) #10
  %526 = call zeroext i8 @BLI_path_abs(ptr noundef nonnull %12, ptr noundef nonnull %60) #10
  br label %527

527:                                              ; preds = %524, %522
  %528 = phi ptr [ %12, %524 ], [ %523, %522 ]
  %529 = call ptr @BLI_strncpy(ptr noundef nonnull %13, ptr noundef nonnull %523, i64 noundef 1024) #10
  %530 = call zeroext i8 %2(ptr noundef %4, ptr noundef nonnull %13, ptr noundef nonnull %528) #10
  %531 = icmp eq i8 %530, 0
  br i1 %531, label %534, label %532

532:                                              ; preds = %527
  %533 = call ptr @BLI_strncpy(ptr noundef nonnull %523, ptr noundef nonnull %13, i64 noundef 1024) #10
  br label %534

534:                                              ; preds = %527, %532
  call void @llvm.lifetime.end.p0(i64 1024, ptr nonnull %13) #10
  call void @llvm.lifetime.end.p0(i64 1024, ptr nonnull %12) #10
  br label %535

535:                                              ; preds = %518, %499, %494, %534, %470
  call void @BKE_sequence_iterator_next(ptr noundef nonnull %48) #10
  %536 = load i32, ptr %460, align 8, !tbaa !126
  %537 = icmp eq i32 %536, 0
  br i1 %537, label %538, label %470, !llvm.loop !135

538:                                              ; preds = %535, %459
  call void @BKE_sequence_iterator_end(ptr noundef nonnull %48) #10
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %48) #10
  br label %589

539:                                              ; preds = %67
  %540 = getelementptr inbounds %struct.Mesh, ptr %1, i64 0, i32 25, i32 6
  %541 = load ptr, ptr %540, align 8, !tbaa !136
  %542 = icmp eq ptr %541, null
  br i1 %542, label %589, label %543

543:                                              ; preds = %539
  call void @llvm.lifetime.start.p0(i64 1024, ptr nonnull %10) #10
  call void @llvm.lifetime.start.p0(i64 1024, ptr nonnull %11) #10
  %544 = icmp eq ptr %60, null
  br i1 %544, label %548, label %545

545:                                              ; preds = %543
  %546 = call ptr @BLI_strncpy(ptr noundef nonnull %10, ptr noundef nonnull %541, i64 noundef 1024) #10
  %547 = call zeroext i8 @BLI_path_abs(ptr noundef nonnull %10, ptr noundef nonnull %60) #10
  br label %548

548:                                              ; preds = %545, %543
  %549 = phi ptr [ %10, %545 ], [ %541, %543 ]
  %550 = call ptr @BLI_strncpy(ptr noundef nonnull %11, ptr noundef nonnull %541, i64 noundef 1024) #10
  %551 = call zeroext i8 %2(ptr noundef %4, ptr noundef nonnull %11, ptr noundef nonnull %549) #10
  %552 = icmp eq i8 %551, 0
  br i1 %552, label %555, label %553

553:                                              ; preds = %548
  %554 = call ptr @BLI_strncpy(ptr noundef nonnull %541, ptr noundef nonnull %11, i64 noundef 1024) #10
  br label %555

555:                                              ; preds = %548, %553
  call void @llvm.lifetime.end.p0(i64 1024, ptr nonnull %11) #10
  call void @llvm.lifetime.end.p0(i64 1024, ptr nonnull %10) #10
  br label %589

556:                                              ; preds = %67
  %557 = getelementptr inbounds %struct.Library, ptr %1, i64 0, i32 6
  %558 = load ptr, ptr %557, align 8, !tbaa !139
  %559 = icmp eq ptr %558, null
  br i1 %559, label %560, label %589

560:                                              ; preds = %556
  %561 = getelementptr inbounds %struct.Library, ptr %1, i64 0, i32 3
  call void @llvm.lifetime.start.p0(i64 1024, ptr nonnull %8) #10
  call void @llvm.lifetime.start.p0(i64 1024, ptr nonnull %9) #10
  %562 = icmp eq ptr %60, null
  br i1 %562, label %566, label %563

563:                                              ; preds = %560
  %564 = call ptr @BLI_strncpy(ptr noundef nonnull %8, ptr noundef nonnull %561, i64 noundef 1024) #10
  %565 = call zeroext i8 @BLI_path_abs(ptr noundef nonnull %8, ptr noundef nonnull %60) #10
  br label %566

566:                                              ; preds = %563, %560
  %567 = phi ptr [ %8, %563 ], [ %561, %560 ]
  %568 = call ptr @BLI_strncpy(ptr noundef nonnull %9, ptr noundef nonnull %561, i64 noundef 1024) #10
  %569 = call zeroext i8 %2(ptr noundef %4, ptr noundef nonnull %9, ptr noundef nonnull %567) #10
  %570 = icmp eq i8 %569, 0
  br i1 %570, label %588, label %571

571:                                              ; preds = %566
  %572 = call ptr @BLI_strncpy(ptr noundef nonnull %561, ptr noundef nonnull %9, i64 noundef 1024) #10
  call void @llvm.lifetime.end.p0(i64 1024, ptr nonnull %9) #10
  call void @llvm.lifetime.end.p0(i64 1024, ptr nonnull %8) #10
  call void @BKE_library_filepath_set(ptr noundef %1, ptr noundef nonnull %561) #10
  br label %589

573:                                              ; preds = %67
  %574 = getelementptr inbounds %struct.MovieClip, ptr %1, i64 0, i32 2
  call void @llvm.lifetime.start.p0(i64 1024, ptr nonnull %6) #10
  call void @llvm.lifetime.start.p0(i64 1024, ptr nonnull %7) #10
  %575 = icmp eq ptr %60, null
  br i1 %575, label %579, label %576

576:                                              ; preds = %573
  %577 = call ptr @BLI_strncpy(ptr noundef nonnull %6, ptr noundef nonnull %574, i64 noundef 1024) #10
  %578 = call zeroext i8 @BLI_path_abs(ptr noundef nonnull %6, ptr noundef nonnull %60) #10
  br label %579

579:                                              ; preds = %576, %573
  %580 = phi ptr [ %6, %576 ], [ %574, %573 ]
  %581 = call ptr @BLI_strncpy(ptr noundef nonnull %7, ptr noundef nonnull %574, i64 noundef 1024) #10
  %582 = call zeroext i8 %2(ptr noundef %4, ptr noundef nonnull %7, ptr noundef nonnull %580) #10
  %583 = icmp eq i8 %582, 0
  br i1 %583, label %586, label %584

584:                                              ; preds = %579
  %585 = call ptr @BLI_strncpy(ptr noundef nonnull %574, ptr noundef nonnull %7, i64 noundef 1024) #10
  br label %586

586:                                              ; preds = %579, %584
  call void @llvm.lifetime.end.p0(i64 1024, ptr nonnull %7) #10
  call void @llvm.lifetime.end.p0(i64 1024, ptr nonnull %6) #10
  br label %589

587:                                              ; preds = %88
  call void @llvm.lifetime.end.p0(i64 1024, ptr nonnull %45) #10
  call void @llvm.lifetime.end.p0(i64 1024, ptr nonnull %44) #10
  br label %589

588:                                              ; preds = %566
  call void @llvm.lifetime.end.p0(i64 1024, ptr nonnull %9) #10
  call void @llvm.lifetime.end.p0(i64 1024, ptr nonnull %8) #10
  br label %589

589:                                              ; preds = %428, %395, %272, %402, %369, %266, %588, %587, %435, %77, %586, %340, %323, %67, %70, %93, %97, %114, %98, %302, %322, %341, %348, %364, %365, %398, %454, %431, %538, %455, %555, %539, %571, %556, %63
  ret void
}

declare void @BKE_image_signal(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #4

declare void @BKE_image_walk_all_users(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define internal void @bpath_traverse_image_user_cb(ptr noundef readnone %0, ptr nocapture noundef writeonly %1, ptr noundef readnone %2) #5 {
  %4 = icmp eq ptr %0, %2
  br i1 %4, label %5, label %7

5:                                                ; preds = %3
  %6 = getelementptr inbounds %struct.ImageUser, ptr %1, i64 0, i32 7
  store i8 1, ptr %6, align 2, !tbaa !141
  br label %7

7:                                                ; preds = %5, %3
  ret void
}

declare zeroext i8 @BKE_vfont_is_builtin(ptr noundef) local_unnamed_addr #4

declare void @BKE_sequence_iterator_begin(ptr noundef, ptr noundef, i8 noundef zeroext) local_unnamed_addr #4

declare void @BKE_sequence_iterator_next(ptr noundef) local_unnamed_addr #4

declare void @BKE_sequence_iterator_end(ptr noundef) local_unnamed_addr #4

declare void @BKE_library_filepath_set(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind uwtable
define dso_local void @BKE_bpath_traverse_id_list(ptr noundef %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2, i32 noundef %3, ptr noundef %4) local_unnamed_addr #0 {
  %6 = load ptr, ptr %1, align 8, !tbaa !37
  %7 = icmp eq ptr %6, null
  br i1 %7, label %12, label %8

8:                                                ; preds = %5, %8
  %9 = phi ptr [ %10, %8 ], [ %6, %5 ]
  tail call void @BKE_bpath_traverse_id(ptr noundef %0, ptr noundef nonnull %9, ptr noundef %2, i32 noundef %3, ptr noundef %4)
  %10 = load ptr, ptr %9, align 8, !tbaa !37
  %11 = icmp eq ptr %10, null
  br i1 %11, label %12, label %8, !llvm.loop !41

12:                                               ; preds = %8, %5
  ret void
}

declare i32 @set_listbasepointers(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind uwtable
define dso_local noundef zeroext i8 @BKE_bpath_relocate_visitor(ptr nocapture noundef readonly %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #0 {
  %4 = alloca [1792 x i8], align 16
  call void @llvm.lifetime.start.p0(i64 1792, ptr nonnull %4) #10
  %5 = load ptr, ptr %0, align 8, !tbaa !37
  %6 = getelementptr inbounds ptr, ptr %0, i64 1
  %7 = load ptr, ptr %6, align 8, !tbaa !37
  %8 = tail call zeroext i8 @BLI_path_is_rel(ptr noundef %7) #10
  %9 = icmp eq i8 %8, 0
  br i1 %9, label %12, label %10

10:                                               ; preds = %3
  %11 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.2, ptr noundef nonnull @__func__.BKE_bpath_relocate_visitor, ptr noundef %7)
  br label %18

12:                                               ; preds = %3
  %13 = call ptr @BLI_strncpy(ptr noundef nonnull %4, ptr noundef %2, i64 noundef 1024) #10
  %14 = call zeroext i8 @BLI_path_abs(ptr noundef nonnull %4, ptr noundef %7) #10
  %15 = icmp eq i8 %14, 0
  br i1 %15, label %18, label %16

16:                                               ; preds = %12
  call void @BLI_cleanup_file(ptr noundef %5, ptr noundef nonnull %4) #10
  call void @BLI_path_rel(ptr noundef nonnull %4, ptr noundef %5) #10
  %17 = call ptr @BLI_strncpy(ptr noundef %1, ptr noundef nonnull %4, i64 noundef 1024) #10
  br label %18

18:                                               ; preds = %12, %16, %10
  %19 = phi i8 [ 0, %10 ], [ 1, %16 ], [ 0, %12 ]
  call void @llvm.lifetime.end.p0(i64 1792, ptr nonnull %4) #10
  ret i8 %19
}

declare zeroext i8 @BLI_path_is_rel(ptr noundef) local_unnamed_addr #4

declare ptr @BLI_strncpy(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #4

declare zeroext i8 @BLI_path_abs(ptr noundef, ptr noundef) local_unnamed_addr #4

declare void @BLI_cleanup_file(ptr noundef, ptr noundef) local_unnamed_addr #4

declare void @BLI_path_rel(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind uwtable
define dso_local ptr @BKE_bpath_list_backup(ptr noundef %0, i32 noundef %1) local_unnamed_addr #0 {
  %3 = alloca [35 x ptr], align 16
  %4 = load ptr, ptr @MEM_callocN, align 8, !tbaa !37
  %5 = tail call ptr %4(i64 noundef 16, ptr noundef nonnull @__func__.BKE_bpath_list_backup) #10
  call void @llvm.lifetime.start.p0(i64 280, ptr nonnull %3) #10
  %6 = call i32 @set_listbasepointers(ptr noundef %0, ptr noundef nonnull %3) #10
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %24, label %8

8:                                                ; preds = %2
  %9 = sext i32 %6 to i64
  br label %13

10:                                               ; preds = %20, %13
  %11 = and i64 %15, 4294967295
  %12 = icmp eq i64 %11, 0
  br i1 %12, label %24, label %13, !llvm.loop !34

13:                                               ; preds = %10, %8
  %14 = phi i64 [ %9, %8 ], [ %15, %10 ]
  %15 = add nsw i64 %14, -1
  %16 = getelementptr inbounds [35 x ptr], ptr %3, i64 0, i64 %15
  %17 = load ptr, ptr %16, align 8, !tbaa !37
  %18 = load ptr, ptr %17, align 8, !tbaa !37
  %19 = icmp eq ptr %18, null
  br i1 %19, label %10, label %20

20:                                               ; preds = %13, %20
  %21 = phi ptr [ %22, %20 ], [ %18, %13 ]
  call void @BKE_bpath_traverse_id(ptr noundef %0, ptr noundef nonnull %21, ptr noundef nonnull @bpath_list_append, i32 noundef %1, ptr noundef %5)
  %22 = load ptr, ptr %21, align 8, !tbaa !37
  %23 = icmp eq ptr %22, null
  br i1 %23, label %10, label %20, !llvm.loop !41

24:                                               ; preds = %10, %2
  call void @llvm.lifetime.end.p0(i64 280, ptr nonnull %3) #10
  ret ptr %5
}

; Function Attrs: nounwind uwtable
define internal noundef zeroext i8 @bpath_list_append(ptr noundef %0, ptr nocapture readnone %1, ptr nocapture noundef readonly %2) #0 {
  %4 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %2) #11
  %5 = add i64 %4, 1
  %6 = load ptr, ptr @MEM_mallocN, align 8, !tbaa !37
  %7 = add i64 %4, 17
  %8 = tail call ptr %6(i64 noundef %7, ptr noundef nonnull @__func__.bpath_list_append) #10
  %9 = getelementptr inbounds %struct.PathStore, ptr %8, i64 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %9, ptr align 1 %2, i64 %5, i1 false)
  tail call void @BLI_addtail(ptr noundef %0, ptr noundef %8) #10
  ret i8 0
}

; Function Attrs: nounwind uwtable
define dso_local void @BKE_bpath_list_restore(ptr noundef %0, i32 noundef %1, ptr noundef %2) local_unnamed_addr #0 {
  %4 = alloca [35 x ptr], align 16
  call void @llvm.lifetime.start.p0(i64 280, ptr nonnull %4) #10
  %5 = call i32 @set_listbasepointers(ptr noundef %0, ptr noundef nonnull %4) #10
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %23, label %7

7:                                                ; preds = %3
  %8 = sext i32 %5 to i64
  br label %12

9:                                                ; preds = %19, %12
  %10 = and i64 %14, 4294967295
  %11 = icmp eq i64 %10, 0
  br i1 %11, label %23, label %12, !llvm.loop !34

12:                                               ; preds = %9, %7
  %13 = phi i64 [ %8, %7 ], [ %14, %9 ]
  %14 = add nsw i64 %13, -1
  %15 = getelementptr inbounds [35 x ptr], ptr %4, i64 0, i64 %14
  %16 = load ptr, ptr %15, align 8, !tbaa !37
  %17 = load ptr, ptr %16, align 8, !tbaa !37
  %18 = icmp eq ptr %17, null
  br i1 %18, label %9, label %19

19:                                               ; preds = %12, %19
  %20 = phi ptr [ %21, %19 ], [ %17, %12 ]
  call void @BKE_bpath_traverse_id(ptr noundef %0, ptr noundef nonnull %20, ptr noundef nonnull @bpath_list_restore, i32 noundef %1, ptr noundef %2)
  %21 = load ptr, ptr %20, align 8, !tbaa !37
  %22 = icmp eq ptr %21, null
  br i1 %22, label %9, label %19, !llvm.loop !41

23:                                               ; preds = %9, %3
  call void @llvm.lifetime.end.p0(i64 280, ptr nonnull %4) #10
  ret void
}

; Function Attrs: nounwind uwtable
define internal noundef zeroext i8 @bpath_list_restore(ptr noundef %0, ptr noundef %1, ptr nocapture noundef readonly %2) #0 {
  %4 = load ptr, ptr %0, align 8, !tbaa !142
  %5 = getelementptr inbounds %struct.PathStore, ptr %4, i64 1
  %6 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %2, ptr noundef nonnull dereferenceable(1) %5) #11
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %10, label %8

8:                                                ; preds = %3
  %9 = tail call ptr @BLI_strncpy(ptr noundef %1, ptr noundef nonnull %5, i64 noundef 1024) #10
  br label %10

10:                                               ; preds = %3, %8
  %11 = phi i8 [ 1, %8 ], [ 0, %3 ]
  tail call void @BLI_freelinkN(ptr noundef nonnull %0, ptr noundef %4) #10
  ret i8 %11
}

; Function Attrs: nounwind uwtable
define dso_local void @BKE_bpath_list_free(ptr noundef %0) local_unnamed_addr #0 {
  tail call void @BLI_freelistN(ptr noundef %0) #10
  %2 = load ptr, ptr @MEM_freeN, align 8, !tbaa !37
  tail call void %2(ptr noundef %0) #10
  ret void
}

declare void @BLI_freelistN(ptr noundef) local_unnamed_addr #4

declare i32 @BLI_exists(ptr noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: readwrite)
declare ptr @strcpy(ptr noalias noundef returned writeonly, ptr noalias nocapture noundef readonly) local_unnamed_addr #6

; Function Attrs: nounwind uwtable
define internal fastcc i32 @findFileRecursive(ptr noundef %0, ptr noundef %1, ptr nocapture noundef readonly %2, ptr nocapture noundef %3, ptr nocapture noundef %4) unnamed_addr #0 {
  %6 = alloca %struct.stat, align 8
  %7 = alloca [1024 x i8], align 16
  call void @llvm.lifetime.start.p0(i64 144, ptr nonnull %6) #10
  call void @llvm.lifetime.start.p0(i64 1024, ptr nonnull %7) #10
  %8 = tail call ptr @opendir(ptr noundef %1)
  %9 = icmp eq ptr %8, null
  br i1 %9, label %71, label %10

10:                                               ; preds = %5
  %11 = load i32, ptr %3, align 4, !tbaa !55
  %12 = icmp eq i32 %11, -1
  br i1 %12, label %13, label %14

13:                                               ; preds = %10
  store i32 0, ptr %3, align 4, !tbaa !55
  br label %14

14:                                               ; preds = %13, %10
  %15 = tail call ptr @readdir(ptr noundef nonnull %8) #10
  %16 = icmp eq ptr %15, null
  br i1 %16, label %67, label %17

17:                                               ; preds = %14
  %18 = getelementptr inbounds %struct.stat, ptr %6, i64 0, i32 3
  %19 = getelementptr inbounds %struct.stat, ptr %6, i64 0, i32 8
  br label %20

20:                                               ; preds = %17, %63
  %21 = phi ptr [ %15, %17 ], [ %65, %63 ]
  %22 = phi i8 [ 0, %17 ], [ %64, %63 ]
  br label %23

23:                                               ; preds = %20, %31
  %24 = phi ptr [ %21, %20 ], [ %32, %31 ]
  %25 = getelementptr inbounds %struct.dirent, ptr %24, i64 0, i32 4
  %26 = call i32 @strcmp(ptr noundef nonnull dereferenceable(2) @.str.8, ptr noundef nonnull dereferenceable(1) %25) #11
  %27 = icmp eq i32 %26, 0
  br i1 %27, label %31, label %28

28:                                               ; preds = %23
  %29 = call i32 @strcmp(ptr noundef nonnull dereferenceable(3) @.str.9, ptr noundef nonnull dereferenceable(1) %25) #11
  %30 = icmp eq i32 %29, 0
  br i1 %30, label %31, label %34

31:                                               ; preds = %23, %28, %34
  %32 = call ptr @readdir(ptr noundef nonnull %8) #10
  %33 = icmp eq ptr %32, null
  br i1 %33, label %67, label %23, !llvm.loop !143

34:                                               ; preds = %28
  call void @BLI_join_dirfile(ptr noundef nonnull %7, i64 noundef 1024, ptr noundef %1, ptr noundef nonnull %25) #10
  %35 = call i32 @BLI_stat(ptr noundef nonnull %7, ptr noundef nonnull %6) #10
  %36 = icmp eq i32 %35, 0
  br i1 %36, label %37, label %31

37:                                               ; preds = %34
  %38 = load i32, ptr %18, align 8, !tbaa !144
  %39 = trunc i32 %38 to i16
  %40 = and i16 %39, -4096
  switch i16 %40, label %63 [
    i16 -32768, label %41
    i16 16384, label %53
  ]

41:                                               ; preds = %37
  %42 = call i32 @strncmp(ptr noundef nonnull dereferenceable(1) %2, ptr noundef nonnull dereferenceable(1) %25, i64 noundef 1024) #11
  %43 = icmp eq i32 %42, 0
  br i1 %43, label %44, label %63

44:                                               ; preds = %41
  %45 = load i64, ptr %19, align 8, !tbaa !147
  %46 = trunc i64 %45 to i32
  %47 = icmp sgt i32 %46, 0
  br i1 %47, label %48, label %63

48:                                               ; preds = %44
  %49 = load i32, ptr %3, align 4, !tbaa !55
  %50 = icmp slt i32 %49, %46
  br i1 %50, label %51, label %63

51:                                               ; preds = %48
  store i32 %46, ptr %3, align 4, !tbaa !55
  %52 = call ptr @BLI_strncpy(ptr noundef %0, ptr noundef nonnull %7, i64 noundef 1024) #10
  br label %63

53:                                               ; preds = %37
  %54 = load i32, ptr %4, align 4, !tbaa !55
  %55 = icmp slt i32 %54, 17
  br i1 %55, label %56, label %63

56:                                               ; preds = %53
  %57 = add nsw i32 %54, 1
  store i32 %57, ptr %4, align 4, !tbaa !55
  %58 = call fastcc i32 @findFileRecursive(ptr noundef %0, ptr noundef nonnull %7, ptr noundef %2, ptr noundef nonnull %3, ptr noundef nonnull %4), !range !56
  %59 = trunc i32 %58 to i8
  %60 = or i8 %22, %59
  %61 = load i32, ptr %4, align 4, !tbaa !55
  %62 = add nsw i32 %61, -1
  store i32 %62, ptr %4, align 4, !tbaa !55
  br label %63

63:                                               ; preds = %37, %56, %53, %41, %51, %48, %44
  %64 = phi i8 [ 1, %51 ], [ %22, %48 ], [ %22, %44 ], [ %22, %41 ], [ %60, %56 ], [ %22, %53 ], [ %22, %37 ]
  %65 = call ptr @readdir(ptr noundef nonnull %8) #10
  %66 = icmp eq ptr %65, null
  br i1 %66, label %67, label %20, !llvm.loop !143

67:                                               ; preds = %63, %31, %14
  %68 = phi i8 [ 0, %14 ], [ %22, %31 ], [ %64, %63 ]
  %69 = call i32 @closedir(ptr noundef nonnull %8)
  %70 = zext nneg i8 %68 to i32
  br label %71

71:                                               ; preds = %5, %67
  %72 = phi i32 [ %70, %67 ], [ 0, %5 ]
  call void @llvm.lifetime.end.p0(i64 1024, ptr nonnull %7) #10
  call void @llvm.lifetime.end.p0(i64 144, ptr nonnull %6) #10
  ret i32 %72
}

declare ptr @BLI_path_basename(ptr noundef) local_unnamed_addr #4

; Function Attrs: nofree nounwind
declare noalias noundef ptr @opendir(ptr nocapture noundef readonly) local_unnamed_addr #3

declare ptr @readdir(ptr noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read)
declare i32 @strcmp(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #7

declare void @BLI_join_dirfile(ptr noundef, i64 noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

declare i32 @BLI_stat(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read)
declare i32 @strncmp(ptr nocapture noundef, ptr nocapture noundef, i64 noundef) local_unnamed_addr #7

; Function Attrs: nofree nounwind
declare noundef i32 @closedir(ptr nocapture noundef) local_unnamed_addr #3

declare ptr @BLI_strdup(ptr noundef) local_unnamed_addr #4

declare void @BLI_split_dirfile(ptr noundef, ptr noundef, ptr noundef, i64 noundef, i64 noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read)
declare i64 @strlen(ptr nocapture noundef) local_unnamed_addr #7

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #8

declare void @BLI_addtail(ptr noundef, ptr noundef) local_unnamed_addr #4

declare void @BLI_freelinkN(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #9

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #3 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nofree nounwind willreturn memory(argmem: readwrite) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nofree nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #9 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #10 = { nounwind }
attributes #11 = { nounwind willreturn memory(read) }

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
!34 = distinct !{!34, !35, !36}
!35 = !{!"llvm.loop.mustprogress"}
!36 = !{!"llvm.loop.unroll.disable"}
!37 = !{!38, !38, i64 0}
!38 = !{!"any pointer", !39, i64 0}
!39 = !{!"omnipotent char", !40, i64 0}
!40 = !{!"Simple C/C++ TBAA"}
!41 = distinct !{!41, !35, !36}
!42 = !{!39, !39, i64 0}
!43 = !{!44, !38, i64 0}
!44 = !{!"BPathRemap_Data", !38, i64 0, !38, i64 8, !45, i64 16, !45, i64 20, !45, i64 24}
!45 = !{!"int", !39, i64 0}
!46 = !{!44, !38, i64 8}
!47 = !{!44, !45, i64 24}
!48 = !{!44, !45, i64 16}
!49 = !{!44, !45, i64 20}
!50 = !{!51, !38, i64 0}
!51 = !{!"BPathFind_Data", !38, i64 0, !38, i64 8, !38, i64 16, !39, i64 24}
!52 = !{!51, !38, i64 16}
!53 = !{!51, !38, i64 8}
!54 = !{!51, !39, i64 24}
!55 = !{!45, !45, i64 0}
!56 = !{i32 0, i32 2}
!57 = !{!58, !38, i64 24}
!58 = !{!"ID", !38, i64 0, !38, i64 8, !38, i64 16, !38, i64 24, !39, i64 32, !59, i64 98, !45, i64 100, !45, i64 104, !45, i64 108, !38, i64 112}
!59 = !{!"short", !39, i64 0}
!60 = !{!59, !59, i64 0}
!61 = !{!62, !38, i64 1280}
!62 = !{!"Image", !58, i64 0, !39, i64 120, !38, i64 1144, !38, i64 1152, !38, i64 1160, !38, i64 1168, !39, i64 1176, !59, i64 1240, !59, i64 1242, !59, i64 1244, !59, i64 1246, !59, i64 1248, !59, i64 1250, !45, i64 1252, !59, i64 1256, !59, i64 1258, !59, i64 1260, !59, i64 1262, !59, i64 1264, !59, i64 1266, !45, i64 1268, !38, i64 1272, !38, i64 1280, !38, i64 1288, !63, i64 1296, !45, i64 1300, !59, i64 1304, !59, i64 1306, !45, i64 1308, !45, i64 1312, !39, i64 1316, !39, i64 1317, !59, i64 1318, !39, i64 1320, !63, i64 1336, !63, i64 1340, !64, i64 1344, !39, i64 1408, !39, i64 1409, !39, i64 1416}
!63 = !{!"float", !39, i64 0}
!64 = !{!"ColorManagedColorspaceSettings", !39, i64 0}
!65 = !{!62, !59, i64 1248}
!66 = !{!67, !45, i64 16}
!67 = !{!"ModifierData", !38, i64 0, !38, i64 8, !45, i64 16, !45, i64 20, !45, i64 24, !45, i64 28, !39, i64 32, !38, i64 96, !38, i64 104}
!68 = !{!69, !38, i64 112}
!69 = !{!"FluidsimModifierData", !67, i64 0, !38, i64 112, !38, i64 120}
!70 = !{!71, !45, i64 140}
!71 = !{!"SmokeModifierData", !67, i64 0, !38, i64 112, !38, i64 120, !38, i64 128, !63, i64 136, !45, i64 140}
!72 = !{!71, !38, i64 112}
!73 = !{!74, !45, i64 16}
!74 = !{!"PointCache", !38, i64 0, !38, i64 8, !45, i64 16, !45, i64 20, !45, i64 24, !45, i64 28, !45, i64 32, !45, i64 36, !45, i64 40, !45, i64 44, !45, i64 48, !45, i64 52, !45, i64 56, !59, i64 60, !59, i64 62, !39, i64 64, !39, i64 128, !39, i64 192, !39, i64 256, !38, i64 1280, !75, i64 1288, !38, i64 1304, !38, i64 1312}
!75 = !{!"ListBase", !38, i64 0, !38, i64 8}
!76 = distinct !{!76, !35, !36}
!77 = distinct !{!77, !35, !36}
!78 = distinct !{!78, !35, !36}
!79 = !{!80, !38, i64 1248}
!80 = !{!"Object", !58, i64 0, !38, i64 120, !38, i64 128, !59, i64 136, !59, i64 138, !45, i64 140, !45, i64 144, !45, i64 148, !39, i64 152, !38, i64 216, !38, i64 224, !38, i64 232, !38, i64 240, !38, i64 248, !38, i64 256, !38, i64 264, !38, i64 272, !38, i64 280, !38, i64 288, !38, i64 296, !38, i64 304, !81, i64 312, !38, i64 360, !75, i64 368, !75, i64 384, !75, i64 400, !75, i64 416, !45, i64 432, !45, i64 436, !38, i64 440, !38, i64 448, !45, i64 456, !45, i64 460, !39, i64 464, !39, i64 476, !39, i64 488, !39, i64 500, !39, i64 512, !39, i64 524, !39, i64 536, !39, i64 548, !39, i64 560, !39, i64 576, !39, i64 592, !39, i64 604, !63, i64 616, !63, i64 620, !39, i64 624, !39, i64 688, !39, i64 752, !39, i64 816, !39, i64 880, !45, i64 944, !59, i64 948, !59, i64 950, !59, i64 952, !59, i64 954, !59, i64 956, !59, i64 958, !59, i64 960, !59, i64 962, !59, i64 964, !39, i64 966, !39, i64 967, !45, i64 968, !45, i64 972, !45, i64 976, !45, i64 980, !45, i64 984, !63, i64 988, !63, i64 992, !63, i64 996, !63, i64 1000, !63, i64 1004, !63, i64 1008, !63, i64 1012, !63, i64 1016, !63, i64 1020, !63, i64 1024, !63, i64 1028, !63, i64 1032, !59, i64 1036, !59, i64 1038, !59, i64 1040, !39, i64 1042, !39, i64 1043, !59, i64 1044, !39, i64 1046, !39, i64 1047, !63, i64 1048, !63, i64 1052, !75, i64 1056, !75, i64 1072, !75, i64 1088, !75, i64 1104, !63, i64 1120, !59, i64 1124, !59, i64 1126, !39, i64 1128, !45, i64 1144, !45, i64 1148, !38, i64 1152, !39, i64 1160, !39, i64 1161, !59, i64 1162, !39, i64 1164, !75, i64 1176, !75, i64 1192, !75, i64 1208, !75, i64 1224, !38, i64 1240, !38, i64 1248, !38, i64 1256, !39, i64 1264, !39, i64 1265, !59, i64 1266, !63, i64 1268, !38, i64 1272, !38, i64 1280, !38, i64 1288, !38, i64 1296, !82, i64 1304, !82, i64 1312, !45, i64 1320, !45, i64 1324, !75, i64 1328, !75, i64 1344, !38, i64 1360, !38, i64 1368, !38, i64 1376, !39, i64 1384, !38, i64 1392, !75, i64 1400, !38, i64 1416}
!81 = !{!"bAnimVizSettings", !45, i64 0, !45, i64 4, !45, i64 8, !45, i64 12, !59, i64 16, !59, i64 18, !59, i64 20, !59, i64 22, !59, i64 24, !59, i64 26, !59, i64 28, !59, i64 30, !45, i64 32, !45, i64 36, !45, i64 40, !45, i64 44}
!82 = !{!"long", !39, i64 0}
!83 = distinct !{!83, !35, !36}
!84 = distinct !{!84, !35, !36}
!85 = distinct !{!85, !35, !36}
!86 = !{!87, !38, i64 1144}
!87 = !{!"bSound", !58, i64 0, !39, i64 120, !38, i64 1144, !38, i64 1152, !38, i64 1160, !38, i64 1168, !63, i64 1176, !63, i64 1180, !63, i64 1184, !63, i64 1188, !63, i64 1192, !63, i64 1196, !45, i64 1200, !45, i64 1204, !38, i64 1208, !38, i64 1216, !38, i64 1224}
!88 = !{!89, !38, i64 1152}
!89 = !{!"VFont", !58, i64 0, !39, i64 120, !38, i64 1144, !38, i64 1152, !38, i64 1160}
!90 = !{!91, !38, i64 768}
!91 = !{!"Material", !58, i64 0, !38, i64 120, !59, i64 128, !59, i64 130, !63, i64 132, !63, i64 136, !63, i64 140, !63, i64 144, !63, i64 148, !63, i64 152, !63, i64 156, !63, i64 160, !63, i64 164, !63, i64 168, !63, i64 172, !63, i64 176, !63, i64 180, !63, i64 184, !63, i64 188, !63, i64 192, !63, i64 196, !63, i64 200, !63, i64 204, !63, i64 208, !63, i64 212, !63, i64 216, !63, i64 220, !92, i64 224, !93, i64 312, !63, i64 328, !63, i64 332, !63, i64 336, !63, i64 340, !63, i64 344, !63, i64 348, !63, i64 352, !59, i64 356, !59, i64 358, !59, i64 360, !39, i64 362, !39, i64 363, !63, i64 364, !63, i64 368, !59, i64 372, !59, i64 374, !63, i64 376, !63, i64 380, !63, i64 384, !63, i64 388, !59, i64 392, !59, i64 394, !45, i64 396, !45, i64 400, !45, i64 404, !45, i64 408, !59, i64 412, !59, i64 414, !59, i64 416, !59, i64 418, !63, i64 420, !63, i64 424, !63, i64 428, !63, i64 432, !63, i64 436, !63, i64 440, !63, i64 444, !63, i64 448, !63, i64 452, !63, i64 456, !39, i64 460, !63, i64 524, !63, i64 528, !63, i64 532, !45, i64 536, !39, i64 540, !39, i64 541, !39, i64 542, !39, i64 543, !59, i64 544, !59, i64 546, !59, i64 548, !39, i64 550, !39, i64 551, !59, i64 552, !59, i64 554, !63, i64 556, !63, i64 560, !39, i64 564, !63, i64 580, !63, i64 584, !59, i64 588, !59, i64 590, !38, i64 592, !38, i64 600, !39, i64 608, !39, i64 609, !39, i64 610, !39, i64 611, !59, i64 612, !59, i64 614, !63, i64 616, !63, i64 620, !39, i64 624, !38, i64 768, !38, i64 776, !38, i64 784, !38, i64 792, !63, i64 800, !63, i64 804, !63, i64 808, !63, i64 812, !63, i64 816, !59, i64 820, !59, i64 822, !39, i64 824, !39, i64 836, !63, i64 848, !63, i64 852, !63, i64 856, !63, i64 860, !63, i64 864, !63, i64 868, !63, i64 872, !59, i64 876, !59, i64 878, !45, i64 880, !59, i64 884, !59, i64 886, !39, i64 888, !59, i64 904, !59, i64 906, !59, i64 908, !59, i64 910, !59, i64 912, !39, i64 914, !38, i64 920, !75, i64 928}
!92 = !{!"VolumeSettings", !63, i64 0, !63, i64 4, !63, i64 8, !63, i64 12, !39, i64 16, !39, i64 28, !39, i64 40, !63, i64 52, !63, i64 56, !63, i64 60, !59, i64 64, !59, i64 66, !59, i64 68, !59, i64 70, !63, i64 72, !63, i64 76, !63, i64 80, !63, i64 84}
!93 = !{!"GameSettings", !45, i64 0, !45, i64 4, !45, i64 8, !45, i64 12}
!94 = !{!95, !59, i64 172}
!95 = !{!"bNode", !38, i64 0, !38, i64 8, !38, i64 16, !38, i64 24, !38, i64 32, !39, i64 40, !39, i64 104, !45, i64 168, !59, i64 172, !59, i64 174, !59, i64 176, !59, i64 178, !59, i64 180, !59, i64 182, !59, i64 184, !59, i64 186, !39, i64 188, !75, i64 200, !75, i64 216, !38, i64 232, !38, i64 240, !38, i64 248, !38, i64 256, !75, i64 264, !63, i64 280, !63, i64 284, !63, i64 288, !63, i64 292, !63, i64 296, !63, i64 300, !63, i64 304, !45, i64 308, !39, i64 312, !59, i64 376, !59, i64 378, !63, i64 380, !63, i64 384, !59, i64 388, !59, i64 390, !38, i64 392, !96, i64 400, !96, i64 416, !96, i64 432, !59, i64 448, !59, i64 450, !45, i64 452, !38, i64 456}
!96 = !{!"rctf", !63, i64 0, !63, i64 4, !63, i64 8, !63, i64 12}
!97 = !{!95, !38, i64 248}
!98 = distinct !{!98, !35, !36}
!99 = !{!100, !45, i64 256}
!100 = !{!"bNodeTree", !58, i64 0, !38, i64 120, !38, i64 128, !39, i64 136, !38, i64 200, !38, i64 208, !39, i64 216, !75, i64 224, !75, i64 240, !45, i64 256, !45, i64 260, !45, i64 264, !45, i64 268, !45, i64 272, !59, i64 276, !59, i64 278, !45, i64 280, !45, i64 284, !59, i64 288, !59, i64 290, !45, i64 292, !96, i64 296, !75, i64 312, !75, i64 328, !38, i64 344, !101, i64 352, !45, i64 356, !38, i64 360, !38, i64 368, !38, i64 376, !38, i64 384, !38, i64 392, !38, i64 400, !38, i64 408, !38, i64 416, !38, i64 424}
!101 = !{!"bNodeInstanceKey", !45, i64 0}
!102 = distinct !{!102, !35, !36}
!103 = !{!104, !59, i64 232}
!104 = !{!"Tex", !58, i64 0, !38, i64 120, !63, i64 128, !63, i64 132, !63, i64 136, !63, i64 140, !63, i64 144, !63, i64 148, !63, i64 152, !63, i64 156, !63, i64 160, !63, i64 164, !63, i64 168, !63, i64 172, !63, i64 176, !63, i64 180, !63, i64 184, !63, i64 188, !63, i64 192, !63, i64 196, !63, i64 200, !63, i64 204, !63, i64 208, !63, i64 212, !59, i64 216, !59, i64 218, !59, i64 220, !59, i64 222, !59, i64 224, !59, i64 226, !59, i64 228, !59, i64 230, !59, i64 232, !59, i64 234, !63, i64 236, !63, i64 240, !63, i64 244, !63, i64 248, !45, i64 252, !45, i64 256, !59, i64 260, !59, i64 262, !59, i64 264, !59, i64 266, !45, i64 268, !45, i64 272, !45, i64 276, !45, i64 280, !63, i64 284, !63, i64 288, !63, i64 292, !105, i64 296, !38, i64 336, !38, i64 344, !38, i64 352, !38, i64 360, !38, i64 368, !38, i64 376, !38, i64 384, !38, i64 392, !38, i64 400, !39, i64 408, !39, i64 409}
!105 = !{!"ImageUser", !38, i64 0, !45, i64 8, !45, i64 12, !45, i64 16, !45, i64 20, !39, i64 24, !39, i64 25, !39, i64 26, !39, i64 27, !59, i64 28, !59, i64 30, !59, i64 32, !59, i64 34, !45, i64 36}
!106 = !{!104, !38, i64 392}
!107 = !{!108, !59, i64 16}
!108 = !{!"VoxelData", !39, i64 0, !45, i64 12, !59, i64 16, !59, i64 18, !59, i64 20, !59, i64 22, !59, i64 24, !59, i64 26, !45, i64 28, !38, i64 32, !63, i64 40, !45, i64 44, !39, i64 48, !38, i64 1072, !45, i64 1080, !45, i64 1084}
!109 = !{!110, !38, i64 256}
!110 = !{!"Scene", !58, i64 0, !38, i64 120, !38, i64 128, !38, i64 136, !38, i64 144, !75, i64 152, !38, i64 168, !38, i64 176, !39, i64 184, !39, i64 196, !39, i64 208, !39, i64 220, !45, i64 232, !45, i64 236, !45, i64 240, !59, i64 244, !39, i64 246, !39, i64 247, !38, i64 248, !38, i64 256, !38, i64 264, !38, i64 272, !111, i64 280, !119, i64 4264, !75, i64 4296, !75, i64 4312, !38, i64 4328, !38, i64 4336, !38, i64 4344, !38, i64 4352, !38, i64 4360, !38, i64 4368, !59, i64 4376, !59, i64 4378, !45, i64 4380, !75, i64 4384, !120, i64 4400, !121, i64 4416, !124, i64 4600, !38, i64 4608, !125, i64 4616, !38, i64 4640, !82, i64 4648, !82, i64 4656, !113, i64 4664, !114, i64 4824, !64, i64 4888, !38, i64 4952}
!111 = !{!"RenderData", !112, i64 0, !38, i64 248, !38, i64 256, !115, i64 264, !116, i64 328, !45, i64 400, !45, i64 404, !45, i64 408, !63, i64 412, !45, i64 416, !45, i64 420, !45, i64 424, !45, i64 428, !59, i64 432, !59, i64 434, !63, i64 436, !63, i64 440, !63, i64 444, !63, i64 448, !63, i64 452, !59, i64 456, !59, i64 458, !59, i64 460, !59, i64 462, !59, i64 464, !59, i64 466, !45, i64 468, !59, i64 472, !59, i64 474, !59, i64 476, !59, i64 478, !59, i64 480, !59, i64 482, !45, i64 484, !45, i64 488, !59, i64 492, !59, i64 494, !45, i64 496, !45, i64 500, !59, i64 504, !59, i64 506, !59, i64 508, !59, i64 510, !59, i64 512, !39, i64 514, !39, i64 515, !45, i64 516, !45, i64 520, !45, i64 524, !59, i64 528, !59, i64 530, !59, i64 532, !59, i64 534, !59, i64 536, !59, i64 538, !59, i64 540, !59, i64 542, !96, i64 544, !96, i64 560, !117, i64 576, !75, i64 592, !59, i64 608, !59, i64 610, !63, i64 612, !63, i64 616, !63, i64 620, !63, i64 624, !45, i64 628, !63, i64 632, !63, i64 636, !63, i64 640, !63, i64 644, !59, i64 648, !59, i64 650, !59, i64 652, !59, i64 654, !59, i64 656, !59, i64 658, !63, i64 660, !63, i64 664, !59, i64 668, !59, i64 670, !63, i64 672, !63, i64 676, !39, i64 680, !45, i64 1704, !59, i64 1708, !59, i64 1710, !39, i64 1712, !39, i64 2480, !39, i64 2496, !39, i64 2512, !39, i64 2513, !39, i64 2514, !39, i64 2515, !45, i64 2520, !59, i64 2524, !59, i64 2526, !63, i64 2528, !63, i64 2532, !59, i64 2536, !59, i64 2538, !63, i64 2540, !59, i64 2544, !59, i64 2546, !45, i64 2548, !59, i64 2552, !59, i64 2554, !59, i64 2556, !59, i64 2558, !63, i64 2560, !63, i64 2564, !38, i64 2568, !45, i64 2576, !63, i64 2580, !39, i64 2584, !118, i64 2616, !45, i64 3976, !45, i64 3980}
!112 = !{!"ImageFormatData", !39, i64 0, !39, i64 1, !39, i64 2, !39, i64 3, !39, i64 4, !39, i64 5, !39, i64 6, !39, i64 7, !59, i64 8, !59, i64 10, !63, i64 12, !39, i64 16, !39, i64 17, !39, i64 18, !113, i64 24, !114, i64 184}
!113 = !{!"ColorManagedViewSettings", !45, i64 0, !45, i64 4, !39, i64 8, !39, i64 72, !63, i64 136, !63, i64 140, !38, i64 144, !38, i64 152}
!114 = !{!"ColorManagedDisplaySettings", !39, i64 0}
!115 = !{!"QuicktimeCodecSettings", !45, i64 0, !45, i64 4, !45, i64 8, !45, i64 12, !45, i64 16, !45, i64 20, !45, i64 24, !45, i64 28, !45, i64 32, !45, i64 36, !45, i64 40, !45, i64 44, !59, i64 48, !59, i64 50, !45, i64 52, !45, i64 56, !45, i64 60}
!116 = !{!"FFMpegCodecData", !45, i64 0, !45, i64 4, !45, i64 8, !45, i64 12, !45, i64 16, !45, i64 20, !45, i64 24, !45, i64 28, !63, i64 32, !45, i64 36, !45, i64 40, !45, i64 44, !45, i64 48, !45, i64 52, !45, i64 56, !45, i64 60, !38, i64 64}
!117 = !{!"rcti", !45, i64 0, !45, i64 4, !45, i64 8, !45, i64 12}
!118 = !{!"BakeData", !112, i64 0, !39, i64 248, !59, i64 1272, !59, i64 1274, !59, i64 1276, !59, i64 1278, !63, i64 1280, !63, i64 1284, !39, i64 1288, !39, i64 1291, !39, i64 1292, !39, i64 1293, !39, i64 1296}
!119 = !{!"AudioData", !45, i64 0, !63, i64 4, !63, i64 8, !63, i64 12, !45, i64 16, !59, i64 20, !59, i64 22, !63, i64 24, !63, i64 28}
!120 = !{!"GameFraming", !39, i64 0, !39, i64 12, !39, i64 13, !39, i64 14, !39, i64 15}
!121 = !{!"GameData", !120, i64 0, !59, i64 16, !59, i64 18, !59, i64 20, !59, i64 22, !59, i64 24, !59, i64 26, !59, i64 28, !59, i64 30, !59, i64 32, !39, i64 34, !122, i64 40, !59, i64 64, !59, i64 66, !63, i64 68, !123, i64 72, !63, i64 128, !63, i64 132, !45, i64 136, !59, i64 140, !59, i64 142, !59, i64 144, !59, i64 146, !59, i64 148, !59, i64 150, !59, i64 152, !59, i64 154, !59, i64 156, !59, i64 158, !59, i64 160, !59, i64 162, !63, i64 164, !63, i64 168, !63, i64 172, !63, i64 176, !63, i64 180}
!122 = !{!"GameDome", !59, i64 0, !59, i64 2, !59, i64 4, !59, i64 6, !63, i64 8, !63, i64 12, !38, i64 16}
!123 = !{!"RecastData", !63, i64 0, !63, i64 4, !63, i64 8, !63, i64 12, !63, i64 16, !63, i64 20, !63, i64 24, !63, i64 28, !63, i64 32, !63, i64 36, !45, i64 40, !63, i64 44, !63, i64 48, !59, i64 52, !59, i64 54}
!124 = !{!"UnitSettings", !63, i64 0, !39, i64 4, !39, i64 5, !59, i64 6}
!125 = !{!"PhysicsSettings", !39, i64 0, !45, i64 12, !45, i64 16, !45, i64 20}
!126 = !{!127, !45, i64 24}
!127 = !{!"SeqIterator", !38, i64 0, !45, i64 8, !45, i64 12, !38, i64 16, !45, i64 24}
!128 = !{!127, !38, i64 16}
!129 = !{!130, !45, i64 100}
!130 = !{!"Sequence", !38, i64 0, !38, i64 8, !38, i64 16, !38, i64 24, !39, i64 32, !45, i64 96, !45, i64 100, !45, i64 104, !45, i64 108, !45, i64 112, !45, i64 116, !45, i64 120, !45, i64 124, !45, i64 128, !45, i64 132, !45, i64 136, !45, i64 140, !63, i64 144, !63, i64 148, !63, i64 152, !59, i64 156, !59, i64 158, !45, i64 160, !45, i64 164, !38, i64 168, !38, i64 176, !38, i64 184, !38, i64 192, !38, i64 200, !38, i64 208, !38, i64 216, !63, i64 224, !63, i64 228, !38, i64 232, !38, i64 240, !38, i64 248, !75, i64 256, !38, i64 272, !38, i64 280, !63, i64 288, !63, i64 292, !63, i64 296, !63, i64 300, !38, i64 304, !45, i64 312, !45, i64 316, !45, i64 320, !63, i64 324, !45, i64 328, !39, i64 332, !39, i64 333, !75, i64 336}
!131 = !{!130, !38, i64 168}
!132 = !{!133, !38, i64 32}
!133 = !{!"Strip", !38, i64 0, !38, i64 8, !45, i64 16, !45, i64 20, !45, i64 24, !45, i64 28, !38, i64 32, !39, i64 40, !38, i64 808, !38, i64 816, !38, i64 824, !38, i64 832, !64, i64 840}
!134 = distinct !{!134, !35, !36}
!135 = distinct !{!135, !35, !36}
!136 = !{!137, !38, i64 1272}
!137 = !{!"Mesh", !58, i64 0, !38, i64 120, !38, i64 128, !38, i64 136, !38, i64 144, !38, i64 152, !38, i64 160, !38, i64 168, !38, i64 176, !38, i64 184, !38, i64 192, !38, i64 200, !38, i64 208, !38, i64 216, !38, i64 224, !38, i64 232, !38, i64 240, !38, i64 248, !38, i64 256, !38, i64 264, !38, i64 272, !138, i64 280, !138, i64 480, !138, i64 680, !138, i64 880, !138, i64 1080, !45, i64 1280, !45, i64 1284, !45, i64 1288, !45, i64 1292, !45, i64 1296, !45, i64 1300, !45, i64 1304, !39, i64 1308, !39, i64 1320, !39, i64 1332, !45, i64 1344, !59, i64 1348, !59, i64 1350, !63, i64 1352, !45, i64 1356, !39, i64 1360, !39, i64 1361, !39, i64 1362, !39, i64 1363, !39, i64 1364, !39, i64 1365, !59, i64 1366, !38, i64 1368}
!138 = !{!"CustomData", !38, i64 0, !39, i64 8, !45, i64 172, !45, i64 176, !45, i64 180, !38, i64 184, !38, i64 192}
!139 = !{!140, !38, i64 2192}
!140 = !{!"Library", !58, i64 0, !38, i64 120, !38, i64 128, !39, i64 136, !39, i64 1160, !38, i64 2184, !38, i64 2192}
!141 = !{!105, !39, i64 26}
!142 = !{!75, !38, i64 0}
!143 = distinct !{!143, !35, !36}
!144 = !{!145, !45, i64 24}
!145 = !{!"stat", !82, i64 0, !82, i64 8, !82, i64 16, !45, i64 24, !45, i64 28, !45, i64 32, !45, i64 36, !82, i64 40, !82, i64 48, !82, i64 56, !82, i64 64, !146, i64 72, !146, i64 88, !146, i64 104, !39, i64 120}
!146 = !{!"timespec", !82, i64 0, !82, i64 8}
!147 = !{!145, !82, i64 48}
