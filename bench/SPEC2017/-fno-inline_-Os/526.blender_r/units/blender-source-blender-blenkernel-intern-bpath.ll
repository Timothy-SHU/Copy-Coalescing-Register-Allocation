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

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @BKE_bpath_missing_files_check(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  tail call void @BKE_bpath_traverse_main(ptr noundef %0, ptr noundef nonnull @checkMissingFiles_visit_cb, i32 noundef 9, ptr noundef %1) #10
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @BKE_bpath_traverse_main(ptr noundef %0, ptr nocapture noundef readonly %1, i32 noundef %2, ptr noundef %3) local_unnamed_addr #0 {
  %5 = alloca [35 x ptr], align 16
  call void @llvm.lifetime.start.p0(i64 280, ptr nonnull %5) #11
  %6 = call i32 @set_listbasepointers(ptr noundef %0, ptr noundef nonnull %5) #12
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %17, label %8

8:                                                ; preds = %4
  %9 = sext i32 %6 to i64
  br label %10

10:                                               ; preds = %8, %10
  %11 = phi i64 [ %9, %8 ], [ %12, %10 ]
  %12 = add nsw i64 %11, -1
  %13 = getelementptr inbounds [35 x ptr], ptr %5, i64 0, i64 %12
  %14 = load ptr, ptr %13, align 8, !tbaa !34
  call void @BKE_bpath_traverse_id_list(ptr noundef %0, ptr noundef %14, ptr noundef %1, i32 noundef %2, ptr noundef %3) #10
  %15 = and i64 %12, 4294967295
  %16 = icmp eq i64 %15, 0
  br i1 %16, label %17, label %10, !llvm.loop !38

17:                                               ; preds = %10, %4
  call void @llvm.lifetime.end.p0(i64 280, ptr nonnull %5) #11
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal noundef zeroext i8 @checkMissingFiles_visit_cb(ptr noundef %0, ptr nocapture readnone %1, ptr noundef %2) #0 !PGOFuncName !40 {
  %4 = tail call i32 @BLI_exists(ptr noundef %2) #12
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %6, label %7

6:                                                ; preds = %3
  tail call void (ptr, i32, ptr, ...) @BKE_reportf(ptr noundef %0, i32 noundef 16, ptr noundef nonnull @.str.3, ptr noundef %2) #12
  br label %7

7:                                                ; preds = %6, %3
  ret i8 0
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @BKE_bpath_relative_convert(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #0 {
  %4 = alloca %struct.BPathRemap_Data, align 8
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %4) #11
  %5 = getelementptr inbounds i8, ptr %4, i64 16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %5, i8 0, i64 16, i1 false)
  %6 = load i8, ptr %1, align 1, !tbaa !41
  %7 = icmp eq i8 %6, 0
  br i1 %7, label %8, label %10

8:                                                ; preds = %3
  %9 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str, ptr noundef nonnull @__func__.BKE_bpath_relative_convert) #10
  br label %20

10:                                               ; preds = %3
  store ptr %1, ptr %4, align 8, !tbaa !42
  %11 = getelementptr inbounds %struct.BPathRemap_Data, ptr %4, i64 0, i32 1
  store ptr %2, ptr %11, align 8, !tbaa !45
  call void @BKE_bpath_traverse_main(ptr noundef %0, ptr noundef nonnull @bpath_relative_convert_visit_cb, i32 noundef 4, ptr noundef nonnull %4) #10
  %12 = getelementptr inbounds %struct.BPathRemap_Data, ptr %4, i64 0, i32 4
  %13 = load i32, ptr %12, align 8, !tbaa !46
  %14 = icmp eq i32 %13, 0
  %15 = select i1 %14, i32 2, i32 16
  %16 = getelementptr inbounds %struct.BPathRemap_Data, ptr %4, i64 0, i32 2
  %17 = load i32, ptr %16, align 8, !tbaa !47
  %18 = getelementptr inbounds %struct.BPathRemap_Data, ptr %4, i64 0, i32 3
  %19 = load i32, ptr %18, align 4, !tbaa !48
  call void (ptr, i32, ptr, ...) @BKE_reportf(ptr noundef %2, i32 noundef %15, ptr noundef nonnull @.str.1, i32 noundef %17, i32 noundef %19, i32 noundef %13) #12
  br label %20

20:                                               ; preds = %10, %8
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %4) #11
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #2

; Function Attrs: nofree nounwind optsize
declare noundef i32 @printf(ptr nocapture noundef readonly, ...) local_unnamed_addr #3

; Function Attrs: noinline nounwind optsize uwtable
define internal noundef zeroext i8 @bpath_relative_convert_visit_cb(ptr nocapture noundef %0, ptr noundef %1, ptr noundef %2) #0 !PGOFuncName !49 {
  %4 = getelementptr inbounds %struct.BPathRemap_Data, ptr %0, i64 0, i32 2
  %5 = load i32, ptr %4, align 8, !tbaa !47
  %6 = add nsw i32 %5, 1
  store i32 %6, ptr %4, align 8, !tbaa !47
  %7 = tail call zeroext i8 @BLI_path_is_rel(ptr noundef %2) #12
  %8 = icmp eq i8 %7, 0
  br i1 %8, label %9, label %24

9:                                                ; preds = %3
  %10 = tail call ptr @strcpy(ptr noundef nonnull dereferenceable(1) %1, ptr noundef nonnull dereferenceable(1) %2) #12
  %11 = load ptr, ptr %0, align 8, !tbaa !42
  tail call void @BLI_path_rel(ptr noundef %1, ptr noundef %11) #12
  %12 = tail call zeroext i8 @BLI_path_is_rel(ptr noundef %1) #12
  %13 = icmp eq i8 %12, 0
  br i1 %13, label %18, label %14

14:                                               ; preds = %9
  %15 = getelementptr inbounds %struct.BPathRemap_Data, ptr %0, i64 0, i32 3
  %16 = load i32, ptr %15, align 4, !tbaa !48
  %17 = add nsw i32 %16, 1
  store i32 %17, ptr %15, align 4, !tbaa !48
  br label %24

18:                                               ; preds = %9
  %19 = getelementptr inbounds %struct.BPathRemap_Data, ptr %0, i64 0, i32 1
  %20 = load ptr, ptr %19, align 8, !tbaa !45
  tail call void (ptr, i32, ptr, ...) @BKE_reportf(ptr noundef %20, i32 noundef 16, ptr noundef nonnull @.str.4, ptr noundef %2) #12
  %21 = getelementptr inbounds %struct.BPathRemap_Data, ptr %0, i64 0, i32 4
  %22 = load i32, ptr %21, align 8, !tbaa !46
  %23 = add nsw i32 %22, 1
  store i32 %23, ptr %21, align 8, !tbaa !46
  br label %24

24:                                               ; preds = %14, %18, %3
  %25 = phi i8 [ 0, %3 ], [ 1, %18 ], [ 1, %14 ]
  ret i8 %25
}

; Function Attrs: optsize
declare void @BKE_reportf(ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @BKE_bpath_absolute_convert(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #0 {
  %4 = alloca %struct.BPathRemap_Data, align 8
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %4) #11
  %5 = getelementptr inbounds i8, ptr %4, i64 16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %5, i8 0, i64 16, i1 false)
  %6 = load i8, ptr %1, align 1, !tbaa !41
  %7 = icmp eq i8 %6, 0
  br i1 %7, label %8, label %10

8:                                                ; preds = %3
  %9 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str, ptr noundef nonnull @__func__.BKE_bpath_absolute_convert) #10
  br label %20

10:                                               ; preds = %3
  store ptr %1, ptr %4, align 8, !tbaa !42
  %11 = getelementptr inbounds %struct.BPathRemap_Data, ptr %4, i64 0, i32 1
  store ptr %2, ptr %11, align 8, !tbaa !45
  call void @BKE_bpath_traverse_main(ptr noundef %0, ptr noundef nonnull @bpath_absolute_convert_visit_cb, i32 noundef 4, ptr noundef nonnull %4) #10
  %12 = getelementptr inbounds %struct.BPathRemap_Data, ptr %4, i64 0, i32 4
  %13 = load i32, ptr %12, align 8, !tbaa !46
  %14 = icmp eq i32 %13, 0
  %15 = select i1 %14, i32 2, i32 16
  %16 = getelementptr inbounds %struct.BPathRemap_Data, ptr %4, i64 0, i32 2
  %17 = load i32, ptr %16, align 8, !tbaa !47
  %18 = getelementptr inbounds %struct.BPathRemap_Data, ptr %4, i64 0, i32 3
  %19 = load i32, ptr %18, align 4, !tbaa !48
  call void (ptr, i32, ptr, ...) @BKE_reportf(ptr noundef %2, i32 noundef %15, ptr noundef nonnull @.str.1, i32 noundef %17, i32 noundef %19, i32 noundef %13) #12
  br label %20

20:                                               ; preds = %10, %8
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %4) #11
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal noundef zeroext i8 @bpath_absolute_convert_visit_cb(ptr nocapture noundef %0, ptr noundef %1, ptr noundef %2) #0 !PGOFuncName !50 {
  %4 = getelementptr inbounds %struct.BPathRemap_Data, ptr %0, i64 0, i32 2
  %5 = load i32, ptr %4, align 8, !tbaa !47
  %6 = add nsw i32 %5, 1
  store i32 %6, ptr %4, align 8, !tbaa !47
  %7 = tail call zeroext i8 @BLI_path_is_rel(ptr noundef %2) #12
  %8 = icmp eq i8 %7, 0
  br i1 %8, label %25, label %9

9:                                                ; preds = %3
  %10 = tail call ptr @strcpy(ptr noundef nonnull dereferenceable(1) %1, ptr noundef nonnull dereferenceable(1) %2) #12
  %11 = load ptr, ptr %0, align 8, !tbaa !42
  %12 = tail call zeroext i8 @BLI_path_abs(ptr noundef %1, ptr noundef %11) #12
  %13 = tail call zeroext i8 @BLI_path_is_rel(ptr noundef %1) #12
  %14 = icmp eq i8 %13, 0
  br i1 %14, label %15, label %19

15:                                               ; preds = %9
  %16 = getelementptr inbounds %struct.BPathRemap_Data, ptr %0, i64 0, i32 3
  %17 = load i32, ptr %16, align 4, !tbaa !48
  %18 = add nsw i32 %17, 1
  store i32 %18, ptr %16, align 4, !tbaa !48
  br label %25

19:                                               ; preds = %9
  %20 = getelementptr inbounds %struct.BPathRemap_Data, ptr %0, i64 0, i32 1
  %21 = load ptr, ptr %20, align 8, !tbaa !45
  tail call void (ptr, i32, ptr, ...) @BKE_reportf(ptr noundef %21, i32 noundef 16, ptr noundef nonnull @.str.5, ptr noundef %2) #12
  %22 = getelementptr inbounds %struct.BPathRemap_Data, ptr %0, i64 0, i32 4
  %23 = load i32, ptr %22, align 8, !tbaa !46
  %24 = add nsw i32 %23, 1
  store i32 %24, ptr %22, align 8, !tbaa !46
  br label %25

25:                                               ; preds = %15, %19, %3
  %26 = phi i8 [ 0, %3 ], [ 1, %19 ], [ 1, %15 ]
  ret i8 %26
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @BKE_bpath_missing_files_find(ptr noundef %0, ptr noundef %1, ptr noundef %2, i8 noundef zeroext %3) local_unnamed_addr #0 {
  %5 = alloca %struct.BPathFind_Data, align 8
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %5) #11
  %6 = getelementptr inbounds i8, ptr %5, i64 24
  store i64 0, ptr %6, align 8
  %7 = getelementptr inbounds %struct.Main, ptr %0, i64 0, i32 2
  store ptr %7, ptr %5, align 8, !tbaa !51
  %8 = getelementptr inbounds %struct.BPathFind_Data, ptr %5, i64 0, i32 2
  store ptr %2, ptr %8, align 8, !tbaa !53
  %9 = getelementptr inbounds %struct.BPathFind_Data, ptr %5, i64 0, i32 1
  store ptr %1, ptr %9, align 8, !tbaa !54
  %10 = getelementptr inbounds %struct.BPathFind_Data, ptr %5, i64 0, i32 3
  store i8 %3, ptr %10, align 8, !tbaa !55
  call void @BKE_bpath_traverse_main(ptr noundef %0, ptr noundef nonnull @findMissingFiles_visit_cb, i32 noundef 1, ptr noundef nonnull %5) #10
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %5) #11
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal noundef zeroext i8 @findMissingFiles_visit_cb(ptr nocapture noundef readonly %0, ptr noundef %1, ptr noundef %2) #0 !PGOFuncName !56 {
  %4 = alloca [1024 x i8], align 16
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 1024, ptr nonnull %4) #11
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #11
  store i32 -1, ptr %5, align 4, !tbaa !57
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %6) #11
  store i32 0, ptr %6, align 4, !tbaa !57
  %7 = getelementptr inbounds %struct.BPathFind_Data, ptr %0, i64 0, i32 3
  %8 = load i8, ptr %7, align 8, !tbaa !55
  %9 = icmp eq i8 %8, 0
  br i1 %9, label %10, label %13

10:                                               ; preds = %3
  %11 = tail call i32 @BLI_exists(ptr noundef %2) #12
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %13, label %38

13:                                               ; preds = %10, %3
  store i8 0, ptr %4, align 16, !tbaa !41
  %14 = getelementptr inbounds %struct.BPathFind_Data, ptr %0, i64 0, i32 1
  %15 = load ptr, ptr %14, align 8, !tbaa !54
  %16 = tail call ptr @BLI_path_basename(ptr noundef %2) #12
  %17 = call fastcc i32 @findFileRecursive(ptr noundef nonnull %4, ptr noundef %15, ptr noundef %16, ptr noundef nonnull %5, ptr noundef nonnull %6) #10, !range !58
  %18 = load i32, ptr %5, align 4, !tbaa !57
  %19 = icmp eq i32 %18, -1
  br i1 %19, label %20, label %25

20:                                               ; preds = %13
  %21 = getelementptr inbounds %struct.BPathFind_Data, ptr %0, i64 0, i32 2
  %22 = load ptr, ptr %21, align 8, !tbaa !53
  %23 = load ptr, ptr %14, align 8, !tbaa !54
  %24 = call ptr @BLI_path_basename(ptr noundef %23) #12
  call void (ptr, i32, ptr, ...) @BKE_reportf(ptr noundef %22, i32 noundef 16, ptr noundef nonnull @.str.6, ptr noundef %24) #12
  br label %38

25:                                               ; preds = %13
  %26 = icmp eq i32 %17, 0
  br i1 %26, label %27, label %32

27:                                               ; preds = %25
  %28 = getelementptr inbounds %struct.BPathFind_Data, ptr %0, i64 0, i32 2
  %29 = load ptr, ptr %28, align 8, !tbaa !53
  %30 = call ptr @BLI_path_basename(ptr noundef %2) #12
  %31 = load ptr, ptr %14, align 8, !tbaa !54
  call void (ptr, i32, ptr, ...) @BKE_reportf(ptr noundef %29, i32 noundef 16, ptr noundef nonnull @.str.7, ptr noundef %30, ptr noundef %31) #12
  br label %38

32:                                               ; preds = %25
  %33 = call zeroext i8 @BLI_path_is_rel(ptr noundef %1) #12
  %34 = call ptr @BLI_strncpy(ptr noundef %1, ptr noundef nonnull %4, i64 noundef 1024) #12
  %35 = icmp eq i8 %33, 0
  br i1 %35, label %38, label %36

36:                                               ; preds = %32
  %37 = load ptr, ptr %0, align 8, !tbaa !51
  call void @BLI_path_rel(ptr noundef %1, ptr noundef %37) #12
  br label %38

38:                                               ; preds = %32, %36, %10, %27, %20
  %39 = phi i8 [ 0, %20 ], [ 0, %27 ], [ 0, %10 ], [ 1, %36 ], [ 1, %32 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %6) #11
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #11
  call void @llvm.lifetime.end.p0(i64 1024, ptr nonnull %4) #11
  ret i8 %39
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @BKE_bpath_traverse_id(ptr noundef %0, ptr noundef %1, ptr nocapture noundef readonly %2, i32 noundef %3, ptr noundef %4) local_unnamed_addr #0 {
  %6 = alloca %struct.SeqIterator, align 8
  %7 = and i32 %3, 1
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %17, label %9

9:                                                ; preds = %5
  %10 = getelementptr inbounds %struct.ID, ptr %1, i64 0, i32 3
  %11 = load ptr, ptr %10, align 8, !tbaa !59
  %12 = icmp eq ptr %11, null
  br i1 %12, label %15, label %13

13:                                               ; preds = %9
  %14 = getelementptr inbounds %struct.Library, ptr %11, i64 0, i32 4
  br label %17

15:                                               ; preds = %9
  %16 = getelementptr inbounds %struct.Main, ptr %0, i64 0, i32 2
  br label %17

17:                                               ; preds = %5, %13, %15
  %18 = phi ptr [ %14, %13 ], [ %16, %15 ], [ null, %5 ]
  %19 = and i32 %3, 4
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %25, label %21

21:                                               ; preds = %17
  %22 = getelementptr inbounds %struct.ID, ptr %1, i64 0, i32 3
  %23 = load ptr, ptr %22, align 8, !tbaa !59
  %24 = icmp eq ptr %23, null
  br i1 %24, label %25, label %318

25:                                               ; preds = %21, %17
  %26 = getelementptr inbounds %struct.ID, ptr %1, i64 0, i32 4
  %27 = load i16, ptr %26, align 8, !tbaa !62
  switch i16 %27, label %318 [
    i16 19785, label %28
    i16 21058, label %48
    i16 16975, label %54
    i16 20307, label %161
    i16 22612, label %171
    i16 18006, label %176
    i16 16717, label %189
    i16 21582, label %210
    i16 17748, label %231
    i16 17235, label %244
    i16 17741, label %300
    i16 18764, label %306
    i16 17229, label %315
  ]

28:                                               ; preds = %25
  %29 = getelementptr inbounds %struct.Image, ptr %1, i64 0, i32 22
  %30 = load ptr, ptr %29, align 8, !tbaa !63
  %31 = icmp eq ptr %30, null
  %32 = and i32 %3, 8
  %33 = icmp eq i32 %32, 0
  %34 = or i1 %33, %31
  br i1 %34, label %35, label %318

35:                                               ; preds = %28
  %36 = getelementptr inbounds %struct.Image, ptr %1, i64 0, i32 11
  %37 = load i16, ptr %36, align 8, !tbaa !67
  %38 = add i16 %37, -1
  %39 = icmp ult i16 %38, 3
  br i1 %39, label %40, label %318

40:                                               ; preds = %35
  %41 = getelementptr inbounds %struct.Image, ptr %1, i64 0, i32 1
  %42 = tail call fastcc zeroext i8 @rewrite_path_fixed(ptr noundef nonnull %41, ptr noundef %2, ptr noundef %18, ptr noundef %4) #10, !range !68
  %43 = icmp eq i8 %42, 0
  br i1 %43, label %318, label %44

44:                                               ; preds = %40
  %45 = load ptr, ptr %29, align 8, !tbaa !63
  %46 = icmp eq ptr %45, null
  br i1 %46, label %47, label %318

47:                                               ; preds = %44
  tail call void @BKE_image_signal(ptr noundef nonnull %1, ptr noundef null, i32 noundef 0) #12
  tail call void @BKE_image_walk_all_users(ptr noundef %0, ptr noundef nonnull %1, ptr noundef nonnull @bpath_traverse_image_user_cb) #12
  br label %318

48:                                               ; preds = %25
  %49 = getelementptr inbounds %struct.Brush, ptr %1, i64 0, i32 10
  %50 = load i8, ptr %49, align 8, !tbaa !41
  %51 = icmp eq i8 %50, 0
  br i1 %51, label %318, label %52

52:                                               ; preds = %48
  %53 = tail call fastcc zeroext i8 @rewrite_path_fixed(ptr noundef nonnull %49, ptr noundef %2, ptr noundef %18, ptr noundef %4) #10, !range !68
  br label %318

54:                                               ; preds = %25
  %55 = getelementptr inbounds %struct.Object, ptr %1, i64 0, i32 26
  %56 = load ptr, ptr %55, align 8, !tbaa !34
  %57 = icmp eq ptr %56, null
  br i1 %57, label %117, label %58

58:                                               ; preds = %54, %114
  %59 = phi ptr [ %115, %114 ], [ %56, %54 ]
  %60 = getelementptr inbounds %struct.ModifierData, ptr %59, i64 0, i32 2
  %61 = load i32, ptr %60, align 8, !tbaa !69
  switch i32 %61, label %114 [
    i32 26, label %62
    i32 31, label %68
    i32 22, label %91
    i32 39, label %107
    i32 46, label %109
  ]

62:                                               ; preds = %58
  %63 = getelementptr inbounds %struct.FluidsimModifierData, ptr %59, i64 0, i32 1
  %64 = load ptr, ptr %63, align 8, !tbaa !71
  %65 = icmp eq ptr %64, null
  br i1 %65, label %114, label %66

66:                                               ; preds = %62
  %67 = getelementptr inbounds %struct.FluidsimSettings, ptr %64, i64 0, i32 27
  br label %111

68:                                               ; preds = %58
  %69 = getelementptr inbounds %struct.SmokeModifierData, ptr %59, i64 0, i32 5
  %70 = load i32, ptr %69, align 4, !tbaa !73
  %71 = and i32 %70, 1
  %72 = icmp eq i32 %71, 0
  br i1 %72, label %114, label %73

73:                                               ; preds = %68
  %74 = getelementptr inbounds %struct.SmokeModifierData, ptr %59, i64 0, i32 1
  %75 = load ptr, ptr %74, align 8, !tbaa !75
  %76 = getelementptr inbounds %struct.SmokeDomainSettings, ptr %75, i64 0, i32 48
  %77 = load ptr, ptr %76, align 8, !tbaa !34
  %78 = icmp eq ptr %77, null
  br i1 %78, label %114, label %79

79:                                               ; preds = %73, %88
  %80 = phi ptr [ %89, %88 ], [ %77, %73 ]
  %81 = getelementptr inbounds %struct.PointCache, ptr %80, i64 0, i32 2
  %82 = load i32, ptr %81, align 8, !tbaa !76
  %83 = and i32 %82, 64
  %84 = icmp eq i32 %83, 0
  br i1 %84, label %88, label %85

85:                                               ; preds = %79
  %86 = getelementptr inbounds %struct.PointCache, ptr %80, i64 0, i32 18
  %87 = tail call fastcc zeroext i8 @rewrite_path_fixed(ptr noundef nonnull %86, ptr noundef %2, ptr noundef %18, ptr noundef %4) #10, !range !68
  br label %88

88:                                               ; preds = %79, %85
  %89 = load ptr, ptr %80, align 8, !tbaa !34
  %90 = icmp eq ptr %89, null
  br i1 %90, label %114, label %79, !llvm.loop !79

91:                                               ; preds = %58
  %92 = getelementptr inbounds %struct.ClothModifierData, ptr %59, i64 0, i32 6
  %93 = load ptr, ptr %92, align 8, !tbaa !34
  %94 = icmp eq ptr %93, null
  br i1 %94, label %114, label %95

95:                                               ; preds = %91, %104
  %96 = phi ptr [ %105, %104 ], [ %93, %91 ]
  %97 = getelementptr inbounds %struct.PointCache, ptr %96, i64 0, i32 2
  %98 = load i32, ptr %97, align 8, !tbaa !76
  %99 = and i32 %98, 64
  %100 = icmp eq i32 %99, 0
  br i1 %100, label %104, label %101

101:                                              ; preds = %95
  %102 = getelementptr inbounds %struct.PointCache, ptr %96, i64 0, i32 18
  %103 = tail call fastcc zeroext i8 @rewrite_path_fixed(ptr noundef nonnull %102, ptr noundef %2, ptr noundef %18, ptr noundef %4) #10, !range !68
  br label %104

104:                                              ; preds = %95, %101
  %105 = load ptr, ptr %96, align 8, !tbaa !34
  %106 = icmp eq ptr %105, null
  br i1 %106, label %114, label %95, !llvm.loop !80

107:                                              ; preds = %58
  %108 = getelementptr inbounds %struct.OceanModifierData, ptr %59, i64 0, i32 17
  br label %111

109:                                              ; preds = %58
  %110 = getelementptr inbounds %struct.MeshCacheModifierData, ptr %59, i64 0, i32 17
  br label %111

111:                                              ; preds = %107, %109, %66
  %112 = phi ptr [ %67, %66 ], [ %110, %109 ], [ %108, %107 ]
  %113 = tail call fastcc zeroext i8 @rewrite_path_fixed(ptr noundef nonnull %112, ptr noundef %2, ptr noundef %18, ptr noundef %4) #10, !range !68
  br label %114

114:                                              ; preds = %104, %88, %111, %91, %73, %58, %68, %62
  %115 = load ptr, ptr %59, align 8, !tbaa !34
  %116 = icmp eq ptr %115, null
  br i1 %116, label %117, label %58, !llvm.loop !81

117:                                              ; preds = %114, %54
  %118 = getelementptr inbounds %struct.Object, ptr %1, i64 0, i32 111
  %119 = load ptr, ptr %118, align 8, !tbaa !82
  %120 = icmp eq ptr %119, null
  br i1 %120, label %137, label %121

121:                                              ; preds = %117
  %122 = getelementptr inbounds %struct.SoftBody, ptr %119, i64 0, i32 48
  %123 = load ptr, ptr %122, align 8, !tbaa !34
  %124 = icmp eq ptr %123, null
  br i1 %124, label %137, label %125

125:                                              ; preds = %121, %134
  %126 = phi ptr [ %135, %134 ], [ %123, %121 ]
  %127 = getelementptr inbounds %struct.PointCache, ptr %126, i64 0, i32 2
  %128 = load i32, ptr %127, align 8, !tbaa !76
  %129 = and i32 %128, 64
  %130 = icmp eq i32 %129, 0
  br i1 %130, label %134, label %131

131:                                              ; preds = %125
  %132 = getelementptr inbounds %struct.PointCache, ptr %126, i64 0, i32 18
  %133 = tail call fastcc zeroext i8 @rewrite_path_fixed(ptr noundef nonnull %132, ptr noundef %2, ptr noundef %18, ptr noundef %4) #10, !range !68
  br label %134

134:                                              ; preds = %125, %131
  %135 = load ptr, ptr %126, align 8, !tbaa !34
  %136 = icmp eq ptr %135, null
  br i1 %136, label %137, label %125, !llvm.loop !86

137:                                              ; preds = %134, %121, %117
  %138 = getelementptr inbounds %struct.Object, ptr %1, i64 0, i32 109
  %139 = load ptr, ptr %138, align 8, !tbaa !34
  %140 = icmp eq ptr %139, null
  br i1 %140, label %318, label %144

141:                                              ; preds = %158, %144
  %142 = load ptr, ptr %145, align 8, !tbaa !34
  %143 = icmp eq ptr %142, null
  br i1 %143, label %318, label %144, !llvm.loop !87

144:                                              ; preds = %137, %141
  %145 = phi ptr [ %142, %141 ], [ %139, %137 ]
  %146 = getelementptr inbounds %struct.ParticleSystem, ptr %145, i64 0, i32 41
  %147 = load ptr, ptr %146, align 8, !tbaa !34
  %148 = icmp eq ptr %147, null
  br i1 %148, label %141, label %149

149:                                              ; preds = %144, %158
  %150 = phi ptr [ %159, %158 ], [ %147, %144 ]
  %151 = getelementptr inbounds %struct.PointCache, ptr %150, i64 0, i32 2
  %152 = load i32, ptr %151, align 8, !tbaa !76
  %153 = and i32 %152, 64
  %154 = icmp eq i32 %153, 0
  br i1 %154, label %158, label %155

155:                                              ; preds = %149
  %156 = getelementptr inbounds %struct.PointCache, ptr %150, i64 0, i32 18
  %157 = tail call fastcc zeroext i8 @rewrite_path_fixed(ptr noundef nonnull %156, ptr noundef %2, ptr noundef %18, ptr noundef %4) #10, !range !68
  br label %158

158:                                              ; preds = %149, %155
  %159 = load ptr, ptr %150, align 8, !tbaa !34
  %160 = icmp eq ptr %159, null
  br i1 %160, label %141, label %149, !llvm.loop !88

161:                                              ; preds = %25
  %162 = getelementptr inbounds %struct.bSound, ptr %1, i64 0, i32 2
  %163 = load ptr, ptr %162, align 8, !tbaa !89
  %164 = icmp eq ptr %163, null
  %165 = and i32 %3, 8
  %166 = icmp eq i32 %165, 0
  %167 = or i1 %166, %164
  br i1 %167, label %168, label %318

168:                                              ; preds = %161
  %169 = getelementptr inbounds %struct.bSound, ptr %1, i64 0, i32 1
  %170 = tail call fastcc zeroext i8 @rewrite_path_fixed(ptr noundef nonnull %169, ptr noundef %2, ptr noundef %18, ptr noundef %4) #10, !range !68
  br label %318

171:                                              ; preds = %25
  %172 = getelementptr inbounds %struct.Text, ptr %1, i64 0, i32 1
  %173 = load ptr, ptr %172, align 8, !tbaa !91
  %174 = icmp eq ptr %173, null
  br i1 %174, label %318, label %175

175:                                              ; preds = %171
  tail call fastcc void @rewrite_path_alloc(ptr noundef nonnull %172, ptr noundef %2, ptr noundef %18, ptr noundef %4) #10
  br label %318

176:                                              ; preds = %25
  %177 = getelementptr inbounds %struct.VFont, ptr %1, i64 0, i32 3
  %178 = load ptr, ptr %177, align 8, !tbaa !94
  %179 = icmp eq ptr %178, null
  %180 = and i32 %3, 8
  %181 = icmp eq i32 %180, 0
  %182 = or i1 %181, %179
  br i1 %182, label %183, label %318

183:                                              ; preds = %176
  %184 = tail call zeroext i8 @BKE_vfont_is_builtin(ptr noundef nonnull %1) #12
  %185 = icmp eq i8 %184, 0
  br i1 %185, label %186, label %318

186:                                              ; preds = %183
  %187 = getelementptr inbounds %struct.VFont, ptr %1, i64 0, i32 1
  %188 = tail call fastcc zeroext i8 @rewrite_path_fixed(ptr noundef nonnull %187, ptr noundef %2, ptr noundef %18, ptr noundef %4) #10, !range !68
  br label %318

189:                                              ; preds = %25
  %190 = getelementptr inbounds %struct.Material, ptr %1, i64 0, i32 103
  %191 = load ptr, ptr %190, align 8, !tbaa !96
  %192 = icmp eq ptr %191, null
  br i1 %192, label %318, label %193

193:                                              ; preds = %189
  %194 = getelementptr inbounds %struct.bNodeTree, ptr %191, i64 0, i32 7
  %195 = load ptr, ptr %194, align 8, !tbaa !34
  %196 = icmp eq ptr %195, null
  br i1 %196, label %318, label %197

197:                                              ; preds = %193, %207
  %198 = phi ptr [ %208, %207 ], [ %195, %193 ]
  %199 = getelementptr inbounds %struct.bNode, ptr %198, i64 0, i32 8
  %200 = load i16, ptr %199, align 4, !tbaa !100
  %201 = icmp eq i16 %200, 171
  br i1 %201, label %202, label %207

202:                                              ; preds = %197
  %203 = getelementptr inbounds %struct.bNode, ptr %198, i64 0, i32 21
  %204 = load ptr, ptr %203, align 8, !tbaa !103
  %205 = getelementptr inbounds %struct.NodeShaderScript, ptr %204, i64 0, i32 2
  %206 = tail call fastcc zeroext i8 @rewrite_path_fixed(ptr noundef nonnull %205, ptr noundef %2, ptr noundef %18, ptr noundef %4) #10, !range !68
  br label %207

207:                                              ; preds = %197, %202
  %208 = load ptr, ptr %198, align 8, !tbaa !34
  %209 = icmp eq ptr %208, null
  br i1 %209, label %318, label %197, !llvm.loop !104

210:                                              ; preds = %25
  %211 = getelementptr inbounds %struct.bNodeTree, ptr %1, i64 0, i32 9
  %212 = load i32, ptr %211, align 8, !tbaa !105
  %213 = icmp eq i32 %212, 0
  br i1 %213, label %214, label %318

214:                                              ; preds = %210
  %215 = getelementptr inbounds %struct.bNodeTree, ptr %1, i64 0, i32 7
  %216 = load ptr, ptr %215, align 8, !tbaa !34
  %217 = icmp eq ptr %216, null
  br i1 %217, label %318, label %218

218:                                              ; preds = %214, %228
  %219 = phi ptr [ %229, %228 ], [ %216, %214 ]
  %220 = getelementptr inbounds %struct.bNode, ptr %219, i64 0, i32 8
  %221 = load i16, ptr %220, align 4, !tbaa !100
  %222 = icmp eq i16 %221, 171
  br i1 %222, label %223, label %228

223:                                              ; preds = %218
  %224 = getelementptr inbounds %struct.bNode, ptr %219, i64 0, i32 21
  %225 = load ptr, ptr %224, align 8, !tbaa !103
  %226 = getelementptr inbounds %struct.NodeShaderScript, ptr %225, i64 0, i32 2
  %227 = tail call fastcc zeroext i8 @rewrite_path_fixed(ptr noundef nonnull %226, ptr noundef %2, ptr noundef %18, ptr noundef %4) #10, !range !68
  br label %228

228:                                              ; preds = %218, %223
  %229 = load ptr, ptr %219, align 8, !tbaa !34
  %230 = icmp eq ptr %229, null
  br i1 %230, label %318, label %218, !llvm.loop !108

231:                                              ; preds = %25
  %232 = getelementptr inbounds %struct.Tex, ptr %1, i64 0, i32 32
  %233 = load i16, ptr %232, align 8, !tbaa !109
  %234 = icmp eq i16 %233, 15
  br i1 %234, label %235, label %318

235:                                              ; preds = %231
  %236 = getelementptr inbounds %struct.Tex, ptr %1, i64 0, i32 59
  %237 = load ptr, ptr %236, align 8, !tbaa !112
  %238 = getelementptr inbounds %struct.VoxelData, ptr %237, i64 0, i32 2
  %239 = load i16, ptr %238, align 8, !tbaa !113
  %240 = icmp ult i16 %239, 3
  br i1 %240, label %241, label %318

241:                                              ; preds = %235
  %242 = getelementptr inbounds %struct.VoxelData, ptr %237, i64 0, i32 12
  %243 = tail call fastcc zeroext i8 @rewrite_path_fixed(ptr noundef nonnull %242, ptr noundef %2, ptr noundef %18, ptr noundef %4) #10, !range !68
  br label %318

244:                                              ; preds = %25
  %245 = getelementptr inbounds %struct.Scene, ptr %1, i64 0, i32 19
  %246 = load ptr, ptr %245, align 8, !tbaa !115
  %247 = icmp eq ptr %246, null
  br i1 %247, label %318, label %248

248:                                              ; preds = %244
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %6) #11
  call void @BKE_sequence_iterator_begin(ptr noundef nonnull %246, ptr noundef nonnull %6, i8 noundef zeroext 0) #12
  %249 = getelementptr inbounds %struct.SeqIterator, ptr %6, i64 0, i32 4
  %250 = load i32, ptr %249, align 8, !tbaa !132
  %251 = icmp eq i32 %250, 0
  br i1 %251, label %299, label %252

252:                                              ; preds = %248
  %253 = getelementptr inbounds %struct.SeqIterator, ptr %6, i64 0, i32 3
  %254 = and i32 %3, 16
  %255 = icmp eq i32 %254, 0
  br label %256

256:                                              ; preds = %252, %296
  %257 = load ptr, ptr %253, align 8, !tbaa !134
  %258 = getelementptr inbounds %struct.Sequence, ptr %257, i64 0, i32 6
  %259 = load i32, ptr %258, align 4, !tbaa !135
  switch i32 %259, label %296 [
    i32 3, label %260
    i32 0, label %260
    i32 4, label %260
    i32 5, label %260
  ]

260:                                              ; preds = %256, %256, %256, %256
  %261 = getelementptr inbounds %struct.Sequence, ptr %257, i64 0, i32 24
  %262 = load ptr, ptr %261, align 8, !tbaa !137
  %263 = getelementptr inbounds %struct.Strip, ptr %262, i64 0, i32 6
  %264 = load ptr, ptr %263, align 8, !tbaa !138
  %265 = icmp eq i32 %259, 3
  br i1 %265, label %270, label %266

266:                                              ; preds = %260
  %267 = icmp eq i32 %259, 4
  %268 = icmp ne ptr %264, null
  %269 = select i1 %267, i1 %268, i1 false
  br i1 %269, label %272, label %274

270:                                              ; preds = %260
  %271 = icmp eq ptr %264, null
  br i1 %271, label %293, label %272

272:                                              ; preds = %266, %270
  %273 = getelementptr inbounds %struct.Strip, ptr %262, i64 0, i32 7
  call fastcc void @rewrite_path_fixed_dirfile(ptr noundef nonnull %273, ptr noundef nonnull %264, ptr noundef %2, ptr noundef %18, ptr noundef %4) #10
  br label %296

274:                                              ; preds = %266
  %275 = icmp eq i32 %259, 0
  %276 = select i1 %275, i1 %268, i1 false
  br i1 %276, label %277, label %293

277:                                              ; preds = %274
  %278 = load ptr, ptr @MEM_allocN_len, align 8, !tbaa !34
  %279 = call i64 %278(ptr noundef nonnull %264) #12
  %280 = udiv i64 %279, 264
  %281 = trunc i64 %280 to i32
  %282 = call i32 @llvm.smin.i32(i32 %281, i32 1)
  %283 = select i1 %255, i32 %281, i32 %282
  %284 = icmp sgt i32 %283, 0
  br i1 %284, label %285, label %296

285:                                              ; preds = %277, %285
  %286 = phi i32 [ %290, %285 ], [ 0, %277 ]
  %287 = phi ptr [ %291, %285 ], [ %264, %277 ]
  %288 = load ptr, ptr %261, align 8, !tbaa !137
  %289 = getelementptr inbounds %struct.Strip, ptr %288, i64 0, i32 7
  call fastcc void @rewrite_path_fixed_dirfile(ptr noundef nonnull %289, ptr noundef nonnull %287, ptr noundef %2, ptr noundef %18, ptr noundef %4) #10
  %290 = add nuw nsw i32 %286, 1
  %291 = getelementptr inbounds %struct.StripElem, ptr %287, i64 1
  %292 = icmp eq i32 %290, %283
  br i1 %292, label %296, label %285, !llvm.loop !140

293:                                              ; preds = %270, %274
  %294 = getelementptr inbounds %struct.Strip, ptr %262, i64 0, i32 7
  %295 = call fastcc zeroext i8 @rewrite_path_fixed(ptr noundef nonnull %294, ptr noundef %2, ptr noundef %18, ptr noundef %4) #10, !range !68
  br label %296

296:                                              ; preds = %285, %277, %272, %293, %256
  call void @BKE_sequence_iterator_next(ptr noundef nonnull %6) #12
  %297 = load i32, ptr %249, align 8, !tbaa !132
  %298 = icmp eq i32 %297, 0
  br i1 %298, label %299, label %256, !llvm.loop !141

299:                                              ; preds = %296, %248
  call void @BKE_sequence_iterator_end(ptr noundef nonnull %6) #12
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %6) #11
  br label %318

300:                                              ; preds = %25
  %301 = getelementptr inbounds %struct.Mesh, ptr %1, i64 0, i32 25, i32 6
  %302 = load ptr, ptr %301, align 8, !tbaa !142
  %303 = icmp eq ptr %302, null
  br i1 %303, label %318, label %304

304:                                              ; preds = %300
  %305 = tail call fastcc zeroext i8 @rewrite_path_fixed(ptr noundef nonnull %302, ptr noundef %2, ptr noundef %18, ptr noundef %4) #10, !range !68
  br label %318

306:                                              ; preds = %25
  %307 = getelementptr inbounds %struct.Library, ptr %1, i64 0, i32 6
  %308 = load ptr, ptr %307, align 8, !tbaa !145
  %309 = icmp eq ptr %308, null
  br i1 %309, label %310, label %318

310:                                              ; preds = %306
  %311 = getelementptr inbounds %struct.Library, ptr %1, i64 0, i32 3
  %312 = tail call fastcc zeroext i8 @rewrite_path_fixed(ptr noundef nonnull %311, ptr noundef %2, ptr noundef %18, ptr noundef %4) #10, !range !68
  %313 = icmp eq i8 %312, 0
  br i1 %313, label %318, label %314

314:                                              ; preds = %310
  tail call void @BKE_library_filepath_set(ptr noundef nonnull %1, ptr noundef nonnull %311) #12
  br label %318

315:                                              ; preds = %25
  %316 = getelementptr inbounds %struct.MovieClip, ptr %1, i64 0, i32 2
  %317 = tail call fastcc zeroext i8 @rewrite_path_fixed(ptr noundef nonnull %316, ptr noundef %2, ptr noundef %18, ptr noundef %4) #10, !range !68
  br label %318

318:                                              ; preds = %228, %207, %141, %214, %193, %137, %235, %35, %315, %175, %171, %25, %28, %44, %47, %40, %52, %48, %161, %168, %176, %183, %186, %189, %210, %241, %231, %299, %244, %304, %300, %310, %314, %306, %21
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc noundef zeroext i8 @rewrite_path_fixed(ptr noundef %0, ptr nocapture noundef readonly %1, ptr noundef %2, ptr noundef %3) unnamed_addr #0 !PGOFuncName !147 {
  %5 = alloca [1024 x i8], align 16
  %6 = alloca [1024 x i8], align 16
  call void @llvm.lifetime.start.p0(i64 1024, ptr nonnull %5) #11
  call void @llvm.lifetime.start.p0(i64 1024, ptr nonnull %6) #11
  %7 = icmp eq ptr %2, null
  br i1 %7, label %11, label %8

8:                                                ; preds = %4
  %9 = call ptr @BLI_strncpy(ptr noundef nonnull %5, ptr noundef %0, i64 noundef 1024) #12
  %10 = call zeroext i8 @BLI_path_abs(ptr noundef nonnull %5, ptr noundef nonnull %2) #12
  br label %11

11:                                               ; preds = %4, %8
  %12 = phi ptr [ %5, %8 ], [ %0, %4 ]
  %13 = call ptr @BLI_strncpy(ptr noundef nonnull %6, ptr noundef %0, i64 noundef 1024) #12
  %14 = call zeroext i8 %1(ptr noundef %3, ptr noundef nonnull %6, ptr noundef %12) #12
  %15 = icmp eq i8 %14, 0
  br i1 %15, label %18, label %16

16:                                               ; preds = %11
  %17 = call ptr @BLI_strncpy(ptr noundef %0, ptr noundef nonnull %6, i64 noundef 1024) #12
  br label %18

18:                                               ; preds = %11, %16
  %19 = phi i8 [ 1, %16 ], [ 0, %11 ]
  call void @llvm.lifetime.end.p0(i64 1024, ptr nonnull %6) #11
  call void @llvm.lifetime.end.p0(i64 1024, ptr nonnull %5) #11
  ret i8 %19
}

; Function Attrs: optsize
declare void @BKE_image_signal(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: optsize
declare void @BKE_image_walk_all_users(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable
define internal void @bpath_traverse_image_user_cb(ptr noundef readnone %0, ptr nocapture noundef writeonly %1, ptr noundef readnone %2) #5 !PGOFuncName !148 {
  %4 = icmp eq ptr %0, %2
  br i1 %4, label %5, label %7

5:                                                ; preds = %3
  %6 = getelementptr inbounds %struct.ImageUser, ptr %1, i64 0, i32 7
  store i8 1, ptr %6, align 2, !tbaa !149
  br label %7

7:                                                ; preds = %5, %3
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @rewrite_path_alloc(ptr nocapture noundef %0, ptr nocapture noundef readonly %1, ptr noundef %2, ptr noundef %3) unnamed_addr #0 !PGOFuncName !150 {
  %5 = alloca [1024 x i8], align 16
  %6 = alloca [1024 x i8], align 16
  call void @llvm.lifetime.start.p0(i64 1024, ptr nonnull %5) #11
  call void @llvm.lifetime.start.p0(i64 1024, ptr nonnull %6) #11
  %7 = icmp eq ptr %2, null
  %8 = load ptr, ptr %0, align 8, !tbaa !34
  br i1 %7, label %12, label %9

9:                                                ; preds = %4
  %10 = call ptr @BLI_strncpy(ptr noundef nonnull %5, ptr noundef %8, i64 noundef 1024) #12
  %11 = call zeroext i8 @BLI_path_abs(ptr noundef nonnull %5, ptr noundef nonnull %2) #12
  br label %12

12:                                               ; preds = %4, %9
  %13 = phi ptr [ %5, %9 ], [ %8, %4 ]
  %14 = call zeroext i8 %1(ptr noundef %3, ptr noundef nonnull %6, ptr noundef %13) #12
  %15 = icmp eq i8 %14, 0
  br i1 %15, label %20, label %16

16:                                               ; preds = %12
  %17 = load ptr, ptr @MEM_freeN, align 8, !tbaa !34
  %18 = load ptr, ptr %0, align 8, !tbaa !34
  call void %17(ptr noundef %18) #12
  %19 = call ptr @BLI_strdup(ptr noundef nonnull %6) #12
  store ptr %19, ptr %0, align 8, !tbaa !34
  br label %20

20:                                               ; preds = %12, %16
  call void @llvm.lifetime.end.p0(i64 1024, ptr nonnull %6) #11
  call void @llvm.lifetime.end.p0(i64 1024, ptr nonnull %5) #11
  ret void
}

; Function Attrs: optsize
declare zeroext i8 @BKE_vfont_is_builtin(ptr noundef) local_unnamed_addr #4

; Function Attrs: optsize
declare void @BKE_sequence_iterator_begin(ptr noundef, ptr noundef, i8 noundef zeroext) local_unnamed_addr #4

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @rewrite_path_fixed_dirfile(ptr noundef %0, ptr noundef %1, ptr nocapture noundef readonly %2, ptr noundef %3, ptr noundef %4) unnamed_addr #0 !PGOFuncName !151 {
  %6 = alloca [1024 x i8], align 16
  %7 = alloca [1024 x i8], align 16
  call void @llvm.lifetime.start.p0(i64 1024, ptr nonnull %6) #11
  call void @llvm.lifetime.start.p0(i64 1024, ptr nonnull %7) #11
  call void @BLI_join_dirfile(ptr noundef nonnull %6, i64 noundef 1024, ptr noundef %0, ptr noundef %1) #12
  %8 = icmp eq ptr %3, null
  br i1 %8, label %11, label %9

9:                                                ; preds = %5
  %10 = call zeroext i8 @BLI_path_abs(ptr noundef nonnull %6, ptr noundef nonnull %3) #12
  br label %11

11:                                               ; preds = %9, %5
  %12 = call zeroext i8 %2(ptr noundef %4, ptr noundef nonnull %7, ptr noundef nonnull %6) #12
  %13 = icmp eq i8 %12, 0
  br i1 %13, label %15, label %14

14:                                               ; preds = %11
  call void @BLI_split_dirfile(ptr noundef nonnull %7, ptr noundef %0, ptr noundef %1, i64 noundef 768, i64 noundef 256) #12
  br label %15

15:                                               ; preds = %11, %14
  call void @llvm.lifetime.end.p0(i64 1024, ptr nonnull %7) #11
  call void @llvm.lifetime.end.p0(i64 1024, ptr nonnull %6) #11
  ret void
}

; Function Attrs: optsize
declare void @BKE_sequence_iterator_next(ptr noundef) local_unnamed_addr #4

; Function Attrs: optsize
declare void @BKE_sequence_iterator_end(ptr noundef) local_unnamed_addr #4

; Function Attrs: optsize
declare void @BKE_library_filepath_set(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @BKE_bpath_traverse_id_list(ptr noundef %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2, i32 noundef %3, ptr noundef %4) local_unnamed_addr #0 {
  %6 = load ptr, ptr %1, align 8, !tbaa !34
  %7 = icmp eq ptr %6, null
  br i1 %7, label %12, label %8

8:                                                ; preds = %5, %8
  %9 = phi ptr [ %10, %8 ], [ %6, %5 ]
  tail call void @BKE_bpath_traverse_id(ptr noundef %0, ptr noundef nonnull %9, ptr noundef %2, i32 noundef %3, ptr noundef %4) #10
  %10 = load ptr, ptr %9, align 8, !tbaa !34
  %11 = icmp eq ptr %10, null
  br i1 %11, label %12, label %8, !llvm.loop !152

12:                                               ; preds = %8, %5
  ret void
}

; Function Attrs: optsize
declare i32 @set_listbasepointers(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef zeroext i8 @BKE_bpath_relocate_visitor(ptr nocapture noundef readonly %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #0 {
  %4 = alloca [1792 x i8], align 16
  call void @llvm.lifetime.start.p0(i64 1792, ptr nonnull %4) #11
  %5 = load ptr, ptr %0, align 8, !tbaa !34
  %6 = getelementptr inbounds ptr, ptr %0, i64 1
  %7 = load ptr, ptr %6, align 8, !tbaa !34
  %8 = tail call zeroext i8 @BLI_path_is_rel(ptr noundef %7) #12
  %9 = icmp eq i8 %8, 0
  br i1 %9, label %12, label %10

10:                                               ; preds = %3
  %11 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.2, ptr noundef nonnull @__func__.BKE_bpath_relocate_visitor, ptr noundef %7) #10
  br label %18

12:                                               ; preds = %3
  %13 = call ptr @BLI_strncpy(ptr noundef nonnull %4, ptr noundef %2, i64 noundef 1024) #12
  %14 = call zeroext i8 @BLI_path_abs(ptr noundef nonnull %4, ptr noundef %7) #12
  %15 = icmp eq i8 %14, 0
  br i1 %15, label %18, label %16

16:                                               ; preds = %12
  call void @BLI_cleanup_file(ptr noundef %5, ptr noundef nonnull %4) #12
  call void @BLI_path_rel(ptr noundef nonnull %4, ptr noundef %5) #12
  %17 = call ptr @BLI_strncpy(ptr noundef %1, ptr noundef nonnull %4, i64 noundef 1024) #12
  br label %18

18:                                               ; preds = %12, %16, %10
  %19 = phi i8 [ 0, %10 ], [ 1, %16 ], [ 0, %12 ]
  call void @llvm.lifetime.end.p0(i64 1792, ptr nonnull %4) #11
  ret i8 %19
}

; Function Attrs: optsize
declare zeroext i8 @BLI_path_is_rel(ptr noundef) local_unnamed_addr #4

; Function Attrs: optsize
declare ptr @BLI_strncpy(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #4

; Function Attrs: optsize
declare zeroext i8 @BLI_path_abs(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: optsize
declare void @BLI_cleanup_file(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: optsize
declare void @BLI_path_rel(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef ptr @BKE_bpath_list_backup(ptr noundef %0, i32 noundef %1) local_unnamed_addr #0 {
  %3 = load ptr, ptr @MEM_callocN, align 8, !tbaa !34
  %4 = tail call ptr %3(i64 noundef 16, ptr noundef nonnull @__func__.BKE_bpath_list_backup) #12
  tail call void @BKE_bpath_traverse_main(ptr noundef %0, ptr noundef nonnull @bpath_list_append, i32 noundef %1, ptr noundef %4) #10
  ret ptr %4
}

; Function Attrs: noinline nounwind optsize uwtable
define internal noundef zeroext i8 @bpath_list_append(ptr noundef %0, ptr nocapture readnone %1, ptr nocapture noundef readonly %2) #0 !PGOFuncName !153 {
  %4 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %2) #13
  %5 = add i64 %4, 1
  %6 = load ptr, ptr @MEM_mallocN, align 8, !tbaa !34
  %7 = add i64 %4, 17
  %8 = tail call ptr %6(i64 noundef %7, ptr noundef nonnull @__func__.bpath_list_append) #12
  %9 = getelementptr inbounds %struct.PathStore, ptr %8, i64 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %9, ptr align 1 %2, i64 %5, i1 false)
  tail call void @BLI_addtail(ptr noundef %0, ptr noundef %8) #12
  ret i8 0
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @BKE_bpath_list_restore(ptr noundef %0, i32 noundef %1, ptr noundef %2) local_unnamed_addr #0 {
  tail call void @BKE_bpath_traverse_main(ptr noundef %0, ptr noundef nonnull @bpath_list_restore, i32 noundef %1, ptr noundef %2) #10
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal noundef zeroext i8 @bpath_list_restore(ptr noundef %0, ptr noundef %1, ptr nocapture noundef readonly %2) #0 !PGOFuncName !154 {
  %4 = load ptr, ptr %0, align 8, !tbaa !155
  %5 = getelementptr inbounds %struct.PathStore, ptr %4, i64 1
  %6 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %2, ptr noundef nonnull dereferenceable(1) %5) #13
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %10, label %8

8:                                                ; preds = %3
  %9 = tail call ptr @BLI_strncpy(ptr noundef %1, ptr noundef nonnull %5, i64 noundef 1024) #12
  br label %10

10:                                               ; preds = %3, %8
  %11 = phi i8 [ 1, %8 ], [ 0, %3 ]
  tail call void @BLI_freelinkN(ptr noundef nonnull %0, ptr noundef %4) #12
  ret i8 %11
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @BKE_bpath_list_free(ptr noundef %0) local_unnamed_addr #0 {
  tail call void @BLI_freelistN(ptr noundef %0) #12
  %2 = load ptr, ptr @MEM_freeN, align 8, !tbaa !34
  tail call void %2(ptr noundef %0) #12
  ret void
}

; Function Attrs: optsize
declare void @BLI_freelistN(ptr noundef) local_unnamed_addr #4

; Function Attrs: optsize
declare i32 @BLI_exists(ptr noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nofree nounwind optsize willreturn memory(argmem: readwrite)
declare ptr @strcpy(ptr noalias noundef returned writeonly, ptr noalias nocapture noundef readonly) local_unnamed_addr #6

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc i32 @findFileRecursive(ptr noundef %0, ptr noundef %1, ptr nocapture noundef readonly %2, ptr nocapture noundef %3, ptr nocapture noundef %4) unnamed_addr #0 !PGOFuncName !156 {
  %6 = alloca %struct.stat, align 8
  %7 = alloca [1024 x i8], align 16
  call void @llvm.lifetime.start.p0(i64 144, ptr nonnull %6) #11
  call void @llvm.lifetime.start.p0(i64 1024, ptr nonnull %7) #11
  %8 = tail call ptr @opendir(ptr noundef %1) #10
  %9 = icmp eq ptr %8, null
  br i1 %9, label %71, label %10

10:                                               ; preds = %5
  %11 = load i32, ptr %3, align 4, !tbaa !57
  %12 = icmp eq i32 %11, -1
  br i1 %12, label %13, label %14

13:                                               ; preds = %10
  store i32 0, ptr %3, align 4, !tbaa !57
  br label %14

14:                                               ; preds = %13, %10
  %15 = tail call ptr @readdir(ptr noundef nonnull %8) #12
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
  %26 = call i32 @strcmp(ptr noundef nonnull dereferenceable(2) @.str.8, ptr noundef nonnull dereferenceable(1) %25) #13
  %27 = icmp eq i32 %26, 0
  br i1 %27, label %31, label %28

28:                                               ; preds = %23
  %29 = call i32 @strcmp(ptr noundef nonnull dereferenceable(3) @.str.9, ptr noundef nonnull dereferenceable(1) %25) #13
  %30 = icmp eq i32 %29, 0
  br i1 %30, label %31, label %34

31:                                               ; preds = %23, %28, %34
  %32 = call ptr @readdir(ptr noundef nonnull %8) #12
  %33 = icmp eq ptr %32, null
  br i1 %33, label %67, label %23, !llvm.loop !157

34:                                               ; preds = %28
  call void @BLI_join_dirfile(ptr noundef nonnull %7, i64 noundef 1024, ptr noundef %1, ptr noundef nonnull %25) #12
  %35 = call i32 @BLI_stat(ptr noundef nonnull %7, ptr noundef nonnull %6) #12
  %36 = icmp eq i32 %35, 0
  br i1 %36, label %37, label %31

37:                                               ; preds = %34
  %38 = load i32, ptr %18, align 8, !tbaa !158
  %39 = trunc i32 %38 to i16
  %40 = and i16 %39, -4096
  switch i16 %40, label %63 [
    i16 -32768, label %41
    i16 16384, label %53
  ]

41:                                               ; preds = %37
  %42 = call i32 @strncmp(ptr noundef nonnull dereferenceable(1) %2, ptr noundef nonnull dereferenceable(1) %25, i64 noundef 1024) #13
  %43 = icmp eq i32 %42, 0
  br i1 %43, label %44, label %63

44:                                               ; preds = %41
  %45 = load i64, ptr %19, align 8, !tbaa !161
  %46 = trunc i64 %45 to i32
  %47 = icmp sgt i32 %46, 0
  br i1 %47, label %48, label %63

48:                                               ; preds = %44
  %49 = load i32, ptr %3, align 4, !tbaa !57
  %50 = icmp slt i32 %49, %46
  br i1 %50, label %51, label %63

51:                                               ; preds = %48
  store i32 %46, ptr %3, align 4, !tbaa !57
  %52 = call ptr @BLI_strncpy(ptr noundef %0, ptr noundef nonnull %7, i64 noundef 1024) #12
  br label %63

53:                                               ; preds = %37
  %54 = load i32, ptr %4, align 4, !tbaa !57
  %55 = icmp slt i32 %54, 17
  br i1 %55, label %56, label %63

56:                                               ; preds = %53
  %57 = add nsw i32 %54, 1
  store i32 %57, ptr %4, align 4, !tbaa !57
  %58 = call fastcc i32 @findFileRecursive(ptr noundef %0, ptr noundef nonnull %7, ptr noundef %2, ptr noundef nonnull %3, ptr noundef nonnull %4) #10, !range !58
  %59 = trunc i32 %58 to i8
  %60 = or i8 %22, %59
  %61 = load i32, ptr %4, align 4, !tbaa !57
  %62 = add nsw i32 %61, -1
  store i32 %62, ptr %4, align 4, !tbaa !57
  br label %63

63:                                               ; preds = %37, %56, %53, %41, %51, %48, %44
  %64 = phi i8 [ 1, %51 ], [ %22, %48 ], [ %22, %44 ], [ %22, %41 ], [ %60, %56 ], [ %22, %53 ], [ %22, %37 ]
  %65 = call ptr @readdir(ptr noundef nonnull %8) #12
  %66 = icmp eq ptr %65, null
  br i1 %66, label %67, label %20, !llvm.loop !157

67:                                               ; preds = %63, %31, %14
  %68 = phi i8 [ 0, %14 ], [ %22, %31 ], [ %64, %63 ]
  %69 = call i32 @closedir(ptr noundef nonnull %8) #10
  %70 = zext nneg i8 %68 to i32
  br label %71

71:                                               ; preds = %5, %67
  %72 = phi i32 [ %70, %67 ], [ 0, %5 ]
  call void @llvm.lifetime.end.p0(i64 1024, ptr nonnull %7) #11
  call void @llvm.lifetime.end.p0(i64 144, ptr nonnull %6) #11
  ret i32 %72
}

; Function Attrs: optsize
declare ptr @BLI_path_basename(ptr noundef) local_unnamed_addr #4

; Function Attrs: nofree nounwind optsize
declare noalias noundef ptr @opendir(ptr nocapture noundef readonly) local_unnamed_addr #3

; Function Attrs: optsize
declare ptr @readdir(ptr noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nofree nounwind optsize willreturn memory(argmem: read)
declare i32 @strcmp(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #7

; Function Attrs: optsize
declare void @BLI_join_dirfile(ptr noundef, i64 noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: optsize
declare i32 @BLI_stat(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nofree nounwind optsize willreturn memory(argmem: read)
declare i32 @strncmp(ptr nocapture noundef, ptr nocapture noundef, i64 noundef) local_unnamed_addr #7

; Function Attrs: nofree nounwind optsize
declare noundef i32 @closedir(ptr nocapture noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare ptr @BLI_strdup(ptr noundef) local_unnamed_addr #4

; Function Attrs: optsize
declare void @BLI_split_dirfile(ptr noundef, ptr noundef, ptr noundef, i64 noundef, i64 noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nofree nounwind optsize willreturn memory(argmem: read)
declare i64 @strlen(ptr nocapture noundef) local_unnamed_addr #7

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #8

; Function Attrs: optsize
declare void @BLI_addtail(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: optsize
declare void @BLI_freelinkN(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #9

attributes #0 = { noinline nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #3 = { nofree nounwind optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nofree nounwind optsize willreturn memory(argmem: readwrite) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nofree nounwind optsize willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #9 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #10 = { optsize }
attributes #11 = { nounwind }
attributes #12 = { nounwind optsize }
attributes #13 = { nounwind optsize willreturn memory(read) }

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
!38 = distinct !{!38, !39}
!39 = !{!"llvm.loop.mustprogress"}
!40 = !{!"bpath.c:checkMissingFiles_visit_cb"}
!41 = !{!36, !36, i64 0}
!42 = !{!43, !35, i64 0}
!43 = !{!"BPathRemap_Data", !35, i64 0, !35, i64 8, !44, i64 16, !44, i64 20, !44, i64 24}
!44 = !{!"int", !36, i64 0}
!45 = !{!43, !35, i64 8}
!46 = !{!43, !44, i64 24}
!47 = !{!43, !44, i64 16}
!48 = !{!43, !44, i64 20}
!49 = !{!"bpath.c:bpath_relative_convert_visit_cb"}
!50 = !{!"bpath.c:bpath_absolute_convert_visit_cb"}
!51 = !{!52, !35, i64 0}
!52 = !{!"BPathFind_Data", !35, i64 0, !35, i64 8, !35, i64 16, !36, i64 24}
!53 = !{!52, !35, i64 16}
!54 = !{!52, !35, i64 8}
!55 = !{!52, !36, i64 24}
!56 = !{!"bpath.c:findMissingFiles_visit_cb"}
!57 = !{!44, !44, i64 0}
!58 = !{i32 0, i32 2}
!59 = !{!60, !35, i64 24}
!60 = !{!"ID", !35, i64 0, !35, i64 8, !35, i64 16, !35, i64 24, !36, i64 32, !61, i64 98, !44, i64 100, !44, i64 104, !44, i64 108, !35, i64 112}
!61 = !{!"short", !36, i64 0}
!62 = !{!61, !61, i64 0}
!63 = !{!64, !35, i64 1280}
!64 = !{!"Image", !60, i64 0, !36, i64 120, !35, i64 1144, !35, i64 1152, !35, i64 1160, !35, i64 1168, !36, i64 1176, !61, i64 1240, !61, i64 1242, !61, i64 1244, !61, i64 1246, !61, i64 1248, !61, i64 1250, !44, i64 1252, !61, i64 1256, !61, i64 1258, !61, i64 1260, !61, i64 1262, !61, i64 1264, !61, i64 1266, !44, i64 1268, !35, i64 1272, !35, i64 1280, !35, i64 1288, !65, i64 1296, !44, i64 1300, !61, i64 1304, !61, i64 1306, !44, i64 1308, !44, i64 1312, !36, i64 1316, !36, i64 1317, !61, i64 1318, !36, i64 1320, !65, i64 1336, !65, i64 1340, !66, i64 1344, !36, i64 1408, !36, i64 1409, !36, i64 1416}
!65 = !{!"float", !36, i64 0}
!66 = !{!"ColorManagedColorspaceSettings", !36, i64 0}
!67 = !{!64, !61, i64 1248}
!68 = !{i8 0, i8 2}
!69 = !{!70, !44, i64 16}
!70 = !{!"ModifierData", !35, i64 0, !35, i64 8, !44, i64 16, !44, i64 20, !44, i64 24, !44, i64 28, !36, i64 32, !35, i64 96, !35, i64 104}
!71 = !{!72, !35, i64 112}
!72 = !{!"FluidsimModifierData", !70, i64 0, !35, i64 112, !35, i64 120}
!73 = !{!74, !44, i64 140}
!74 = !{!"SmokeModifierData", !70, i64 0, !35, i64 112, !35, i64 120, !35, i64 128, !65, i64 136, !44, i64 140}
!75 = !{!74, !35, i64 112}
!76 = !{!77, !44, i64 16}
!77 = !{!"PointCache", !35, i64 0, !35, i64 8, !44, i64 16, !44, i64 20, !44, i64 24, !44, i64 28, !44, i64 32, !44, i64 36, !44, i64 40, !44, i64 44, !44, i64 48, !44, i64 52, !44, i64 56, !61, i64 60, !61, i64 62, !36, i64 64, !36, i64 128, !36, i64 192, !36, i64 256, !35, i64 1280, !78, i64 1288, !35, i64 1304, !35, i64 1312}
!78 = !{!"ListBase", !35, i64 0, !35, i64 8}
!79 = distinct !{!79, !39}
!80 = distinct !{!80, !39}
!81 = distinct !{!81, !39}
!82 = !{!83, !35, i64 1248}
!83 = !{!"Object", !60, i64 0, !35, i64 120, !35, i64 128, !61, i64 136, !61, i64 138, !44, i64 140, !44, i64 144, !44, i64 148, !36, i64 152, !35, i64 216, !35, i64 224, !35, i64 232, !35, i64 240, !35, i64 248, !35, i64 256, !35, i64 264, !35, i64 272, !35, i64 280, !35, i64 288, !35, i64 296, !35, i64 304, !84, i64 312, !35, i64 360, !78, i64 368, !78, i64 384, !78, i64 400, !78, i64 416, !44, i64 432, !44, i64 436, !35, i64 440, !35, i64 448, !44, i64 456, !44, i64 460, !36, i64 464, !36, i64 476, !36, i64 488, !36, i64 500, !36, i64 512, !36, i64 524, !36, i64 536, !36, i64 548, !36, i64 560, !36, i64 576, !36, i64 592, !36, i64 604, !65, i64 616, !65, i64 620, !36, i64 624, !36, i64 688, !36, i64 752, !36, i64 816, !36, i64 880, !44, i64 944, !61, i64 948, !61, i64 950, !61, i64 952, !61, i64 954, !61, i64 956, !61, i64 958, !61, i64 960, !61, i64 962, !61, i64 964, !36, i64 966, !36, i64 967, !44, i64 968, !44, i64 972, !44, i64 976, !44, i64 980, !44, i64 984, !65, i64 988, !65, i64 992, !65, i64 996, !65, i64 1000, !65, i64 1004, !65, i64 1008, !65, i64 1012, !65, i64 1016, !65, i64 1020, !65, i64 1024, !65, i64 1028, !65, i64 1032, !61, i64 1036, !61, i64 1038, !61, i64 1040, !36, i64 1042, !36, i64 1043, !61, i64 1044, !36, i64 1046, !36, i64 1047, !65, i64 1048, !65, i64 1052, !78, i64 1056, !78, i64 1072, !78, i64 1088, !78, i64 1104, !65, i64 1120, !61, i64 1124, !61, i64 1126, !36, i64 1128, !44, i64 1144, !44, i64 1148, !35, i64 1152, !36, i64 1160, !36, i64 1161, !61, i64 1162, !36, i64 1164, !78, i64 1176, !78, i64 1192, !78, i64 1208, !78, i64 1224, !35, i64 1240, !35, i64 1248, !35, i64 1256, !36, i64 1264, !36, i64 1265, !61, i64 1266, !65, i64 1268, !35, i64 1272, !35, i64 1280, !35, i64 1288, !35, i64 1296, !85, i64 1304, !85, i64 1312, !44, i64 1320, !44, i64 1324, !78, i64 1328, !78, i64 1344, !35, i64 1360, !35, i64 1368, !35, i64 1376, !36, i64 1384, !35, i64 1392, !78, i64 1400, !35, i64 1416}
!84 = !{!"bAnimVizSettings", !44, i64 0, !44, i64 4, !44, i64 8, !44, i64 12, !61, i64 16, !61, i64 18, !61, i64 20, !61, i64 22, !61, i64 24, !61, i64 26, !61, i64 28, !61, i64 30, !44, i64 32, !44, i64 36, !44, i64 40, !44, i64 44}
!85 = !{!"long", !36, i64 0}
!86 = distinct !{!86, !39}
!87 = distinct !{!87, !39}
!88 = distinct !{!88, !39}
!89 = !{!90, !35, i64 1144}
!90 = !{!"bSound", !60, i64 0, !36, i64 120, !35, i64 1144, !35, i64 1152, !35, i64 1160, !35, i64 1168, !65, i64 1176, !65, i64 1180, !65, i64 1184, !65, i64 1188, !65, i64 1192, !65, i64 1196, !44, i64 1200, !44, i64 1204, !35, i64 1208, !35, i64 1216, !35, i64 1224}
!91 = !{!92, !35, i64 120}
!92 = !{!"Text", !60, i64 0, !35, i64 120, !44, i64 128, !44, i64 132, !78, i64 136, !35, i64 152, !35, i64 160, !44, i64 168, !44, i64 172, !35, i64 176, !44, i64 184, !44, i64 188, !35, i64 192, !93, i64 200}
!93 = !{!"double", !36, i64 0}
!94 = !{!95, !35, i64 1152}
!95 = !{!"VFont", !60, i64 0, !36, i64 120, !35, i64 1144, !35, i64 1152, !35, i64 1160}
!96 = !{!97, !35, i64 768}
!97 = !{!"Material", !60, i64 0, !35, i64 120, !61, i64 128, !61, i64 130, !65, i64 132, !65, i64 136, !65, i64 140, !65, i64 144, !65, i64 148, !65, i64 152, !65, i64 156, !65, i64 160, !65, i64 164, !65, i64 168, !65, i64 172, !65, i64 176, !65, i64 180, !65, i64 184, !65, i64 188, !65, i64 192, !65, i64 196, !65, i64 200, !65, i64 204, !65, i64 208, !65, i64 212, !65, i64 216, !65, i64 220, !98, i64 224, !99, i64 312, !65, i64 328, !65, i64 332, !65, i64 336, !65, i64 340, !65, i64 344, !65, i64 348, !65, i64 352, !61, i64 356, !61, i64 358, !61, i64 360, !36, i64 362, !36, i64 363, !65, i64 364, !65, i64 368, !61, i64 372, !61, i64 374, !65, i64 376, !65, i64 380, !65, i64 384, !65, i64 388, !61, i64 392, !61, i64 394, !44, i64 396, !44, i64 400, !44, i64 404, !44, i64 408, !61, i64 412, !61, i64 414, !61, i64 416, !61, i64 418, !65, i64 420, !65, i64 424, !65, i64 428, !65, i64 432, !65, i64 436, !65, i64 440, !65, i64 444, !65, i64 448, !65, i64 452, !65, i64 456, !36, i64 460, !65, i64 524, !65, i64 528, !65, i64 532, !44, i64 536, !36, i64 540, !36, i64 541, !36, i64 542, !36, i64 543, !61, i64 544, !61, i64 546, !61, i64 548, !36, i64 550, !36, i64 551, !61, i64 552, !61, i64 554, !65, i64 556, !65, i64 560, !36, i64 564, !65, i64 580, !65, i64 584, !61, i64 588, !61, i64 590, !35, i64 592, !35, i64 600, !36, i64 608, !36, i64 609, !36, i64 610, !36, i64 611, !61, i64 612, !61, i64 614, !65, i64 616, !65, i64 620, !36, i64 624, !35, i64 768, !35, i64 776, !35, i64 784, !35, i64 792, !65, i64 800, !65, i64 804, !65, i64 808, !65, i64 812, !65, i64 816, !61, i64 820, !61, i64 822, !36, i64 824, !36, i64 836, !65, i64 848, !65, i64 852, !65, i64 856, !65, i64 860, !65, i64 864, !65, i64 868, !65, i64 872, !61, i64 876, !61, i64 878, !44, i64 880, !61, i64 884, !61, i64 886, !36, i64 888, !61, i64 904, !61, i64 906, !61, i64 908, !61, i64 910, !61, i64 912, !36, i64 914, !35, i64 920, !78, i64 928}
!98 = !{!"VolumeSettings", !65, i64 0, !65, i64 4, !65, i64 8, !65, i64 12, !36, i64 16, !36, i64 28, !36, i64 40, !65, i64 52, !65, i64 56, !65, i64 60, !61, i64 64, !61, i64 66, !61, i64 68, !61, i64 70, !65, i64 72, !65, i64 76, !65, i64 80, !65, i64 84}
!99 = !{!"GameSettings", !44, i64 0, !44, i64 4, !44, i64 8, !44, i64 12}
!100 = !{!101, !61, i64 172}
!101 = !{!"bNode", !35, i64 0, !35, i64 8, !35, i64 16, !35, i64 24, !35, i64 32, !36, i64 40, !36, i64 104, !44, i64 168, !61, i64 172, !61, i64 174, !61, i64 176, !61, i64 178, !61, i64 180, !61, i64 182, !61, i64 184, !61, i64 186, !36, i64 188, !78, i64 200, !78, i64 216, !35, i64 232, !35, i64 240, !35, i64 248, !35, i64 256, !78, i64 264, !65, i64 280, !65, i64 284, !65, i64 288, !65, i64 292, !65, i64 296, !65, i64 300, !65, i64 304, !44, i64 308, !36, i64 312, !61, i64 376, !61, i64 378, !65, i64 380, !65, i64 384, !61, i64 388, !61, i64 390, !35, i64 392, !102, i64 400, !102, i64 416, !102, i64 432, !61, i64 448, !61, i64 450, !44, i64 452, !35, i64 456}
!102 = !{!"rctf", !65, i64 0, !65, i64 4, !65, i64 8, !65, i64 12}
!103 = !{!101, !35, i64 248}
!104 = distinct !{!104, !39}
!105 = !{!106, !44, i64 256}
!106 = !{!"bNodeTree", !60, i64 0, !35, i64 120, !35, i64 128, !36, i64 136, !35, i64 200, !35, i64 208, !36, i64 216, !78, i64 224, !78, i64 240, !44, i64 256, !44, i64 260, !44, i64 264, !44, i64 268, !44, i64 272, !61, i64 276, !61, i64 278, !44, i64 280, !44, i64 284, !61, i64 288, !61, i64 290, !44, i64 292, !102, i64 296, !78, i64 312, !78, i64 328, !35, i64 344, !107, i64 352, !44, i64 356, !35, i64 360, !35, i64 368, !35, i64 376, !35, i64 384, !35, i64 392, !35, i64 400, !35, i64 408, !35, i64 416, !35, i64 424}
!107 = !{!"bNodeInstanceKey", !44, i64 0}
!108 = distinct !{!108, !39}
!109 = !{!110, !61, i64 232}
!110 = !{!"Tex", !60, i64 0, !35, i64 120, !65, i64 128, !65, i64 132, !65, i64 136, !65, i64 140, !65, i64 144, !65, i64 148, !65, i64 152, !65, i64 156, !65, i64 160, !65, i64 164, !65, i64 168, !65, i64 172, !65, i64 176, !65, i64 180, !65, i64 184, !65, i64 188, !65, i64 192, !65, i64 196, !65, i64 200, !65, i64 204, !65, i64 208, !65, i64 212, !61, i64 216, !61, i64 218, !61, i64 220, !61, i64 222, !61, i64 224, !61, i64 226, !61, i64 228, !61, i64 230, !61, i64 232, !61, i64 234, !65, i64 236, !65, i64 240, !65, i64 244, !65, i64 248, !44, i64 252, !44, i64 256, !61, i64 260, !61, i64 262, !61, i64 264, !61, i64 266, !44, i64 268, !44, i64 272, !44, i64 276, !44, i64 280, !65, i64 284, !65, i64 288, !65, i64 292, !111, i64 296, !35, i64 336, !35, i64 344, !35, i64 352, !35, i64 360, !35, i64 368, !35, i64 376, !35, i64 384, !35, i64 392, !35, i64 400, !36, i64 408, !36, i64 409}
!111 = !{!"ImageUser", !35, i64 0, !44, i64 8, !44, i64 12, !44, i64 16, !44, i64 20, !36, i64 24, !36, i64 25, !36, i64 26, !36, i64 27, !61, i64 28, !61, i64 30, !61, i64 32, !61, i64 34, !44, i64 36}
!112 = !{!110, !35, i64 392}
!113 = !{!114, !61, i64 16}
!114 = !{!"VoxelData", !36, i64 0, !44, i64 12, !61, i64 16, !61, i64 18, !61, i64 20, !61, i64 22, !61, i64 24, !61, i64 26, !44, i64 28, !35, i64 32, !65, i64 40, !44, i64 44, !36, i64 48, !35, i64 1072, !44, i64 1080, !44, i64 1084}
!115 = !{!116, !35, i64 256}
!116 = !{!"Scene", !60, i64 0, !35, i64 120, !35, i64 128, !35, i64 136, !35, i64 144, !78, i64 152, !35, i64 168, !35, i64 176, !36, i64 184, !36, i64 196, !36, i64 208, !36, i64 220, !44, i64 232, !44, i64 236, !44, i64 240, !61, i64 244, !36, i64 246, !36, i64 247, !35, i64 248, !35, i64 256, !35, i64 264, !35, i64 272, !117, i64 280, !125, i64 4264, !78, i64 4296, !78, i64 4312, !35, i64 4328, !35, i64 4336, !35, i64 4344, !35, i64 4352, !35, i64 4360, !35, i64 4368, !61, i64 4376, !61, i64 4378, !44, i64 4380, !78, i64 4384, !126, i64 4400, !127, i64 4416, !130, i64 4600, !35, i64 4608, !131, i64 4616, !35, i64 4640, !85, i64 4648, !85, i64 4656, !119, i64 4664, !120, i64 4824, !66, i64 4888, !35, i64 4952}
!117 = !{!"RenderData", !118, i64 0, !35, i64 248, !35, i64 256, !121, i64 264, !122, i64 328, !44, i64 400, !44, i64 404, !44, i64 408, !65, i64 412, !44, i64 416, !44, i64 420, !44, i64 424, !44, i64 428, !61, i64 432, !61, i64 434, !65, i64 436, !65, i64 440, !65, i64 444, !65, i64 448, !65, i64 452, !61, i64 456, !61, i64 458, !61, i64 460, !61, i64 462, !61, i64 464, !61, i64 466, !44, i64 468, !61, i64 472, !61, i64 474, !61, i64 476, !61, i64 478, !61, i64 480, !61, i64 482, !44, i64 484, !44, i64 488, !61, i64 492, !61, i64 494, !44, i64 496, !44, i64 500, !61, i64 504, !61, i64 506, !61, i64 508, !61, i64 510, !61, i64 512, !36, i64 514, !36, i64 515, !44, i64 516, !44, i64 520, !44, i64 524, !61, i64 528, !61, i64 530, !61, i64 532, !61, i64 534, !61, i64 536, !61, i64 538, !61, i64 540, !61, i64 542, !102, i64 544, !102, i64 560, !123, i64 576, !78, i64 592, !61, i64 608, !61, i64 610, !65, i64 612, !65, i64 616, !65, i64 620, !65, i64 624, !44, i64 628, !65, i64 632, !65, i64 636, !65, i64 640, !65, i64 644, !61, i64 648, !61, i64 650, !61, i64 652, !61, i64 654, !61, i64 656, !61, i64 658, !65, i64 660, !65, i64 664, !61, i64 668, !61, i64 670, !65, i64 672, !65, i64 676, !36, i64 680, !44, i64 1704, !61, i64 1708, !61, i64 1710, !36, i64 1712, !36, i64 2480, !36, i64 2496, !36, i64 2512, !36, i64 2513, !36, i64 2514, !36, i64 2515, !44, i64 2520, !61, i64 2524, !61, i64 2526, !65, i64 2528, !65, i64 2532, !61, i64 2536, !61, i64 2538, !65, i64 2540, !61, i64 2544, !61, i64 2546, !44, i64 2548, !61, i64 2552, !61, i64 2554, !61, i64 2556, !61, i64 2558, !65, i64 2560, !65, i64 2564, !35, i64 2568, !44, i64 2576, !65, i64 2580, !36, i64 2584, !124, i64 2616, !44, i64 3976, !44, i64 3980}
!118 = !{!"ImageFormatData", !36, i64 0, !36, i64 1, !36, i64 2, !36, i64 3, !36, i64 4, !36, i64 5, !36, i64 6, !36, i64 7, !61, i64 8, !61, i64 10, !65, i64 12, !36, i64 16, !36, i64 17, !36, i64 18, !119, i64 24, !120, i64 184}
!119 = !{!"ColorManagedViewSettings", !44, i64 0, !44, i64 4, !36, i64 8, !36, i64 72, !65, i64 136, !65, i64 140, !35, i64 144, !35, i64 152}
!120 = !{!"ColorManagedDisplaySettings", !36, i64 0}
!121 = !{!"QuicktimeCodecSettings", !44, i64 0, !44, i64 4, !44, i64 8, !44, i64 12, !44, i64 16, !44, i64 20, !44, i64 24, !44, i64 28, !44, i64 32, !44, i64 36, !44, i64 40, !44, i64 44, !61, i64 48, !61, i64 50, !44, i64 52, !44, i64 56, !44, i64 60}
!122 = !{!"FFMpegCodecData", !44, i64 0, !44, i64 4, !44, i64 8, !44, i64 12, !44, i64 16, !44, i64 20, !44, i64 24, !44, i64 28, !65, i64 32, !44, i64 36, !44, i64 40, !44, i64 44, !44, i64 48, !44, i64 52, !44, i64 56, !44, i64 60, !35, i64 64}
!123 = !{!"rcti", !44, i64 0, !44, i64 4, !44, i64 8, !44, i64 12}
!124 = !{!"BakeData", !118, i64 0, !36, i64 248, !61, i64 1272, !61, i64 1274, !61, i64 1276, !61, i64 1278, !65, i64 1280, !65, i64 1284, !36, i64 1288, !36, i64 1291, !36, i64 1292, !36, i64 1293, !36, i64 1296}
!125 = !{!"AudioData", !44, i64 0, !65, i64 4, !65, i64 8, !65, i64 12, !44, i64 16, !61, i64 20, !61, i64 22, !65, i64 24, !65, i64 28}
!126 = !{!"GameFraming", !36, i64 0, !36, i64 12, !36, i64 13, !36, i64 14, !36, i64 15}
!127 = !{!"GameData", !126, i64 0, !61, i64 16, !61, i64 18, !61, i64 20, !61, i64 22, !61, i64 24, !61, i64 26, !61, i64 28, !61, i64 30, !61, i64 32, !36, i64 34, !128, i64 40, !61, i64 64, !61, i64 66, !65, i64 68, !129, i64 72, !65, i64 128, !65, i64 132, !44, i64 136, !61, i64 140, !61, i64 142, !61, i64 144, !61, i64 146, !61, i64 148, !61, i64 150, !61, i64 152, !61, i64 154, !61, i64 156, !61, i64 158, !61, i64 160, !61, i64 162, !65, i64 164, !65, i64 168, !65, i64 172, !65, i64 176, !65, i64 180}
!128 = !{!"GameDome", !61, i64 0, !61, i64 2, !61, i64 4, !61, i64 6, !65, i64 8, !65, i64 12, !35, i64 16}
!129 = !{!"RecastData", !65, i64 0, !65, i64 4, !65, i64 8, !65, i64 12, !65, i64 16, !65, i64 20, !65, i64 24, !65, i64 28, !65, i64 32, !65, i64 36, !44, i64 40, !65, i64 44, !65, i64 48, !61, i64 52, !61, i64 54}
!130 = !{!"UnitSettings", !65, i64 0, !36, i64 4, !36, i64 5, !61, i64 6}
!131 = !{!"PhysicsSettings", !36, i64 0, !44, i64 12, !44, i64 16, !44, i64 20}
!132 = !{!133, !44, i64 24}
!133 = !{!"SeqIterator", !35, i64 0, !44, i64 8, !44, i64 12, !35, i64 16, !44, i64 24}
!134 = !{!133, !35, i64 16}
!135 = !{!136, !44, i64 100}
!136 = !{!"Sequence", !35, i64 0, !35, i64 8, !35, i64 16, !35, i64 24, !36, i64 32, !44, i64 96, !44, i64 100, !44, i64 104, !44, i64 108, !44, i64 112, !44, i64 116, !44, i64 120, !44, i64 124, !44, i64 128, !44, i64 132, !44, i64 136, !44, i64 140, !65, i64 144, !65, i64 148, !65, i64 152, !61, i64 156, !61, i64 158, !44, i64 160, !44, i64 164, !35, i64 168, !35, i64 176, !35, i64 184, !35, i64 192, !35, i64 200, !35, i64 208, !35, i64 216, !65, i64 224, !65, i64 228, !35, i64 232, !35, i64 240, !35, i64 248, !78, i64 256, !35, i64 272, !35, i64 280, !65, i64 288, !65, i64 292, !65, i64 296, !65, i64 300, !35, i64 304, !44, i64 312, !44, i64 316, !44, i64 320, !65, i64 324, !44, i64 328, !36, i64 332, !36, i64 333, !78, i64 336}
!137 = !{!136, !35, i64 168}
!138 = !{!139, !35, i64 32}
!139 = !{!"Strip", !35, i64 0, !35, i64 8, !44, i64 16, !44, i64 20, !44, i64 24, !44, i64 28, !35, i64 32, !36, i64 40, !35, i64 808, !35, i64 816, !35, i64 824, !35, i64 832, !66, i64 840}
!140 = distinct !{!140, !39}
!141 = distinct !{!141, !39}
!142 = !{!143, !35, i64 1272}
!143 = !{!"Mesh", !60, i64 0, !35, i64 120, !35, i64 128, !35, i64 136, !35, i64 144, !35, i64 152, !35, i64 160, !35, i64 168, !35, i64 176, !35, i64 184, !35, i64 192, !35, i64 200, !35, i64 208, !35, i64 216, !35, i64 224, !35, i64 232, !35, i64 240, !35, i64 248, !35, i64 256, !35, i64 264, !35, i64 272, !144, i64 280, !144, i64 480, !144, i64 680, !144, i64 880, !144, i64 1080, !44, i64 1280, !44, i64 1284, !44, i64 1288, !44, i64 1292, !44, i64 1296, !44, i64 1300, !44, i64 1304, !36, i64 1308, !36, i64 1320, !36, i64 1332, !44, i64 1344, !61, i64 1348, !61, i64 1350, !65, i64 1352, !44, i64 1356, !36, i64 1360, !36, i64 1361, !36, i64 1362, !36, i64 1363, !36, i64 1364, !36, i64 1365, !61, i64 1366, !35, i64 1368}
!144 = !{!"CustomData", !35, i64 0, !36, i64 8, !44, i64 172, !44, i64 176, !44, i64 180, !35, i64 184, !35, i64 192}
!145 = !{!146, !35, i64 2192}
!146 = !{!"Library", !60, i64 0, !35, i64 120, !35, i64 128, !36, i64 136, !36, i64 1160, !35, i64 2184, !35, i64 2192}
!147 = !{!"bpath.c:rewrite_path_fixed"}
!148 = !{!"bpath.c:bpath_traverse_image_user_cb"}
!149 = !{!111, !36, i64 26}
!150 = !{!"bpath.c:rewrite_path_alloc"}
!151 = !{!"bpath.c:rewrite_path_fixed_dirfile"}
!152 = distinct !{!152, !39}
!153 = !{!"bpath.c:bpath_list_append"}
!154 = !{!"bpath.c:bpath_list_restore"}
!155 = !{!78, !35, i64 0}
!156 = !{!"bpath.c:findFileRecursive"}
!157 = distinct !{!157, !39}
!158 = !{!159, !44, i64 24}
!159 = !{!"stat", !85, i64 0, !85, i64 8, !85, i64 16, !44, i64 24, !44, i64 28, !44, i64 32, !44, i64 36, !85, i64 40, !85, i64 48, !85, i64 56, !85, i64 64, !160, i64 72, !160, i64 88, !160, i64 104, !36, i64 120}
!160 = !{!"timespec", !85, i64 0, !85, i64 8}
!161 = !{!159, !85, i64 48}
