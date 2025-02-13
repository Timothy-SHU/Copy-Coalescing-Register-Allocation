; ModuleID = 'blender/source/blender/blenkernel/intern/pointcache.c'
source_filename = "blender/source/blender/blenkernel/intern/pointcache.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.Global = type { ptr, [1024 x i8], [1024 x i8], i8, i8, i8, %struct.ListBase, i8, i8, i8, i16, i16, i16, i8, i16, i32, i32, i8, i32, i32, [200 x i8] }
%struct.ListBase = type { ptr, ptr }
%struct.ParticleKey = type { [3 x float], [3 x float], [4 x float], [3 x float], float }
%struct.PTCacheID = type { ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.SoftBody = type { i32, i32, ptr, ptr, i8, i8, i16, float, [64 x i8], float, float, float, float, float, float, float, float, float, i16, [64 x i8], i16, float, float, [64 x i8], i32, i32, i32, i16, i16, ptr, i32, i32, float, float, float, float, i16, i16, i16, i16, i16, i16, i16, i16, ptr, float, float, ptr, %struct.ListBase, ptr, [3 x float], [3 x [3 x float]], [3 x [3 x float]], i32 }
%struct.PointCache = type { ptr, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i16, i16, [64 x i8], [64 x i8], [64 x i8], [1024 x i8], ptr, %struct.ListBase, ptr, ptr }
%struct.BodyPoint = type { [3 x float], [3 x float], [3 x float], [3 x float], [3 x float], [3 x float], float, [3 x float], [3 x float], [3 x float], [3 x float], [3 x float], [3 x float], i32, ptr, float, float, float, float, i16, float, float }
%struct.PTCacheFile = type { ptr, i32, i32, i32, i32, i32, i32, %struct.PTCacheData, [8 x ptr] }
%struct.PTCacheData = type { i32, [3 x float], [3 x float], [4 x float], [3 x float], float, [3 x float], %struct.BoidData }
%struct.BoidData = type { float, [3 x float], i16, i16 }
%struct.ParticleSystem = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.ListBase, %struct.ListBase, ptr, ptr, ptr, ptr, ptr, ptr, %struct.ListBase, [64 x i8], [4 x [4 x float]], float, float, float, i32, i32, i32, i32, i32, i32, i32, i32, i16, i16, i16, i16, [3 x [64 x i8]], [12 x i16], i16, i16, ptr, ptr, %struct.ListBase, ptr, ptr, i32, i32, ptr, ptr, ptr, float, float }
%struct.ParticleSettings = type { %struct.ID, ptr, ptr, ptr, ptr, i32, i32, i16, i16, i16, i16, i16, i16, i16, i16, i32, i32, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, float, float, [2 x float], [2 x float], float, float, float, i16, i16, float, float, float, float, float, float, float, float, float, float, float, float, [1 x float], i32, i32, i32, i32, i16, [3 x i16], float, float, float, float, float, float, float, [3 x float], float, float, float, float, float, float, float, [3 x float], float, float, float, float, i32, i32, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, [2 x float], float, float, i32, i32, [18 x ptr], ptr, %struct.ListBase, ptr, ptr, ptr, ptr, ptr, ptr, i16, [3 x i16] }
%struct.ID = type { ptr, ptr, ptr, ptr, [66 x i8], i16, i32, i32, i32, ptr }
%struct.SPHFluidSettings = type { float, float, float, float, float, float, float, float, float, float, float, float, float, i32, i32, i16, [3 x i16] }
%struct.ParticleData = type { %struct.ParticleKey, %struct.ParticleKey, ptr, ptr, ptr, i32, float, float, float, i32, i32, [4 x float], float, float, float, i32, i32, i16, i16 }
%struct.BoidParticle = type { ptr, %struct.BoidData, [3 x float], [3 x float], float }
%struct.PTCacheExtra = type { ptr, ptr, i32, i32, ptr }
%struct.PTCacheMem = type { ptr, ptr, i32, i32, i32, i32, [8 x ptr], [8 x ptr], %struct.ListBase }
%struct.ClothModifierData = type { %struct.ModifierData, ptr, ptr, ptr, ptr, ptr, %struct.ListBase }
%struct.ModifierData = type { ptr, ptr, i32, i32, i32, i32, [64 x i8], ptr, ptr }
%struct.Cloth = type { ptr, ptr, i32, i32, i32, i8, i8, i16, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32 }
%struct.ClothVertex = type { i32, [3 x float], [3 x float], [3 x float], [3 x float], [3 x float], [3 x float], [3 x float], float, float, [3 x float], ptr, i32, float, float, float, float, i32, float }
%struct.SmokeModifierData = type { %struct.ModifierData, ptr, ptr, ptr, float, i32 }
%struct.SmokeDomainSettings = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, [3 x float], [3 x float], [3 x float], [3 x float], [3 x float], [3 x float], [3 x i32], [3 x float], [3 x float], [4 x [4 x float]], [4 x [4 x float]], [3 x i32], [3 x i32], [3 x i32], [3 x i32], i32, float, float, i32, i32, float, float, float, i32, i32, i32, i32, i16, i16, i32, float, [3 x i32], float, i32, i32, [2 x ptr], [2 x %struct.ListBase], ptr, i32, float, float, i32, [3 x float], i32, float, float, float, float, float, [3 x float] }
%struct.DynamicPaintSurface = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.ListBase, i32, [64 x i8], i16, i16, i16, i16, i16, i16, i16, i16, i32, i32, i32, i32, i32, i32, i32, [4 x float], ptr, [64 x i8], i32, i32, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, i32, [64 x i8], [1024 x i8], [64 x i8], [64 x i8] }
%struct.PaintSurfaceData = type { ptr, ptr, ptr, ptr, i32 }
%struct.RigidBodyWorld = type { ptr, ptr, ptr, ptr, i32, float, ptr, %struct.ListBase, i32, i16, i16, i32, float, ptr }
%struct.Object = type { %struct.ID, ptr, ptr, i16, i16, i32, i32, i32, [64 x i8], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.bAnimVizSettings, ptr, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, i32, i32, ptr, ptr, i32, i32, [3 x float], [3 x float], [3 x float], [3 x float], [3 x float], [3 x float], [3 x float], [3 x float], [4 x float], [4 x float], [3 x float], [3 x float], float, float, [4 x [4 x float]], [4 x [4 x float]], [4 x [4 x float]], [4 x [4 x float]], [4 x [4 x float]], i32, i16, i16, i16, i16, i16, i16, i16, i16, i16, i8, i8, i32, i32, i32, i32, i32, float, float, float, float, float, float, float, float, float, float, float, float, i16, i16, i16, i8, i8, i16, i8, i8, float, float, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, float, i16, i16, [4 x float], i32, i32, ptr, i8, i8, i16, [3 x float], %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, ptr, ptr, ptr, i8, i8, i16, float, ptr, ptr, ptr, ptr, i64, i64, i32, i32, %struct.ListBase, %struct.ListBase, ptr, ptr, ptr, [2 x float], ptr, %struct.ListBase, ptr }
%struct.bAnimVizSettings = type { i32, i32, i32, i32, i16, i16, i16, i16, i16, i16, i16, i16, i32, i32, i32, i32 }
%struct.RigidBodyOb = type { ptr, ptr, i16, i16, i32, i32, i16, i16, float, float, float, float, float, float, float, float, [4 x float], [3 x float], float }
%struct.DynamicPaintModifierData = type { %struct.ModifierData, ptr, ptr, i32, i32 }
%struct.DynamicPaintCanvasSettings = type { ptr, ptr, %struct.ListBase, i16, i16, i32, [64 x i8] }
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
%struct.Main = type { ptr, ptr, [1024 x i8], i16, i16, i16, i16, i64, [16 x i8], i16, ptr, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, [256 x i8], ptr, ptr }
%struct.DupliObject = type { ptr, ptr, ptr, [4 x [4 x float]], [3 x float], [2 x float], i16, i8, i8, [8 x i32], ptr }
%struct.dirent = type { i64, i64, i16, i8, [256 x i8] }
%struct.Library = type { %struct.ID, ptr, ptr, [1024 x i8], [1024 x i8], ptr, ptr }
%struct.PTCacheBaker = type { ptr, ptr, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.ptcache_bake_data = type { i32, i32, i32, i32, ptr, ptr, ptr }
%struct.Base = type { ptr, ptr, i32, i32, i32, i16, i16, ptr }

@ptcache_data_size = internal unnamed_addr constant [8 x i32] [i32 4, i32 12, i32 12, i32 16, i32 12, i32 4, i32 12, i32 20], align 16
@MEM_callocN = external local_unnamed_addr global ptr, align 8
@.str = private unnamed_addr constant [10 x i8] c"PTCacheID\00", align 1
@G = external local_unnamed_addr global %struct.Global, align 8
@.str.2 = private unnamed_addr constant [12 x i8] c"_%02u.bphys\00", align 1
@MEM_allocN_len = external local_unnamed_addr global ptr, align 8
@MEM_freeN = external local_unnamed_addr global ptr, align 8
@.str.3 = private unnamed_addr constant [20 x i8] c"cached frames array\00", align 1
@.str.4 = private unnamed_addr constant [2 x i8] c".\00", align 1
@.str.5 = private unnamed_addr constant [3 x i8] c"..\00", align 1
@.str.6 = private unnamed_addr constant [7 x i8] c".bphys\00", align 1
@.str.7 = private unnamed_addr constant [11 x i8] c"PointCache\00", align 1
@.str.9 = private unnamed_addr constant [12 x i8] c"_%02d.bphys\00", align 1
@.str.10 = private unnamed_addr constant [17 x i8] c"%i frames found!\00", align 1
@.str.11 = private unnamed_addr constant [17 x i8] c"%i points found!\00", align 1
@.str.12 = private unnamed_addr constant [23 x i8] c"No valid data to read!\00", align 1
@.str.13 = private unnamed_addr constant [34 x i8] c"%i cells + High Resolution cached\00", align 1
@.str.14 = private unnamed_addr constant [16 x i8] c"%i cells cached\00", align 1
@.str.15 = private unnamed_addr constant [18 x i8] c"%i frames on disk\00", align 1
@.str.16 = private unnamed_addr constant [30 x i8] c"%i frames in memory (%.1f %s)\00", align 1
@.str.17 = private unnamed_addr constant [3 x i8] c"Mb\00", align 1
@.str.18 = private unnamed_addr constant [3 x i8] c"kb\00", align 1
@.str.19 = private unnamed_addr constant [23 x i8] c"%s, cache is outdated!\00", align 1
@.str.20 = private unnamed_addr constant [29 x i8] c"%s, not exact since frame %i\00", align 1
@.str.21 = private unnamed_addr constant [4 x i8] c"%s.\00", align 1
@.str.22 = private unnamed_addr constant [30 x i8] c"Point cache: fluid extra data\00", align 1
@ptcache_extra_datasize = internal unnamed_addr constant [2 x i32] [i32 0, i32 16], align 4
@.str.23 = private unnamed_addr constant [24 x i8] c"Point cache: extra data\00", align 1
@MEM_dupallocN = external local_unnamed_addr global ptr, align 8
@.str.24 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.25 = private unnamed_addr constant [5 x i8] c"1.01\00", align 1
@.str.26 = private unnamed_addr constant [22 x i8] c"pointcache_lzo_buffer\00", align 1
@.str.27 = private unnamed_addr constant [4 x i8] c"tmp\00", align 1
@.str.28 = private unnamed_addr constant [51 x i8] c"Dynamic Paint: Invalid cache version: '%c%c%c%c'!\0A\00", align 1
@.str.29 = private unnamed_addr constant [29 x i8] c"pointcache_compressed_buffer\00", align 1
@.str.30 = private unnamed_addr constant [46 x i8] c"Number of points in cache does not match mesh\00", align 1
@.str.32 = private unnamed_addr constant [32 x i8] c"Failed to read point cache file\00", align 1
@.str.33 = private unnamed_addr constant [32 x i8] c"Point cache file has wrong type\00", align 1
@.str.34 = private unnamed_addr constant [39 x i8] c"Failed to read point cache file header\00", align 1
@.str.35 = private unnamed_addr constant [37 x i8] c"Failed to read point cache file data\00", align 1
@.str.38 = private unnamed_addr constant [9 x i8] c"BPHYSICS\00", align 1
@.str.39 = private unnamed_addr constant [15 x i8] c"Pointcache mem\00", align 1
@.str.40 = private unnamed_addr constant [13 x i8] c"PTCache Data\00", align 1
@.str.41 = private unnamed_addr constant [16 x i8] c"//blendcache_%s\00", align 1
@.str.42 = private unnamed_addr constant [14 x i8] c"%sblendcache_\00", align 1
@.str.43 = private unnamed_addr constant [5 x i8] c"%02X\00", align 1
@.str.44 = private unnamed_addr constant [17 x i8] c"_%06d_%02u.bphys\00", align 1
@.str.45 = private unnamed_addr constant [12 x i8] c"_%06d.bphys\00", align 1
@.str.46 = private unnamed_addr constant [22 x i8] c"bake: frame %d :: %d\0A\00", align 1
@.str.47 = private unnamed_addr constant [53 x i8] c"Baked for %s, current frame: %i/%i (%.3fs), ETC: %s\0D\00", align 1
@.str.48 = private unnamed_addr constant [36 x i8] c"\0ABake %s %s (%i frames simulated).\0A\00", align 1
@.str.49 = private unnamed_addr constant [15 x i8] c"canceled after\00", align 1
@.str.50 = private unnamed_addr constant [12 x i8] c"finished in\00", align 1
@.str.51 = private unnamed_addr constant [12 x i8] c"%ih %im %is\00", align 1
@.str.52 = private unnamed_addr constant [8 x i8] c"%im %is\00", align 1
@.str.53 = private unnamed_addr constant [4 x i8] c"%is\00", align 1
@.str.54 = private unnamed_addr constant [21 x i8] c"Pointcache extradata\00", align 1
@.str.55 = private unnamed_addr constant [27 x i8] c"Pointcache extradata->data\00", align 1
@.str.57 = private unnamed_addr constant [3 x i8] c"rb\00", align 1
@.str.58 = private unnamed_addr constant [3 x i8] c"wb\00", align 1
@MEM_mallocN = external local_unnamed_addr global ptr, align 8
@.str.60 = private unnamed_addr constant [12 x i8] c"PTCacheFile\00", align 1
@str = private unnamed_addr constant [13 x i8] c"Adding Dupli\00", align 1
@str.61 = private unnamed_addr constant [42 x i8] c"Error opening disk cache file for reading\00", align 1
@str.64 = private unnamed_addr constant [30 x i8] c"Error reading from disk cache\00", align 1
@str.65 = private unnamed_addr constant [28 x i8] c"Error writing to disk cache\00", align 1
@str.66 = private unnamed_addr constant [42 x i8] c"Error opening disk cache file for writing\00", align 1
@str.67 = private unnamed_addr constant [44 x i8] c"File must be saved before using disk cache!\00", align 1
@switch.table.ptcache_dynamicpaint_read = private unnamed_addr constant [4 x i32] [i32 40, i32 4, i32 4, i32 16], align 4
@switch.table.ptcache_old_elemsize = private unnamed_addr constant [3 x i32] [i32 24, i32 56, i32 36], align 4

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @BKE_ptcache_make_particle_key(ptr noundef %0, i32 noundef %1, ptr nocapture noundef readonly %2, float noundef %3) local_unnamed_addr #0 {
  %5 = getelementptr inbounds ptr, ptr %2, i64 1
  %6 = load ptr, ptr %5, align 8, !tbaa !34
  %7 = icmp eq ptr %6, null
  br i1 %7, label %12, label %8

8:                                                ; preds = %4
  %9 = mul i32 %1, 12
  %10 = sext i32 %9 to i64
  %11 = getelementptr inbounds i8, ptr %6, i64 %10
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %0, ptr noundef nonnull align 1 dereferenceable(12) %11, i64 12, i1 false)
  br label %12

12:                                               ; preds = %8, %4
  %13 = getelementptr inbounds ptr, ptr %2, i64 2
  %14 = load ptr, ptr %13, align 8, !tbaa !34
  %15 = icmp eq ptr %14, null
  br i1 %15, label %21, label %16

16:                                               ; preds = %12
  %17 = getelementptr inbounds %struct.ParticleKey, ptr %0, i64 0, i32 1
  %18 = mul i32 %1, 12
  %19 = sext i32 %18 to i64
  %20 = getelementptr inbounds i8, ptr %14, i64 %19
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %17, ptr noundef nonnull align 1 dereferenceable(12) %20, i64 12, i1 false)
  br label %21

21:                                               ; preds = %16, %12
  %22 = getelementptr inbounds ptr, ptr %2, i64 3
  %23 = load ptr, ptr %22, align 8, !tbaa !34
  %24 = icmp eq ptr %23, null
  %25 = getelementptr inbounds %struct.ParticleKey, ptr %0, i64 0, i32 2
  br i1 %24, label %26, label %28

26:                                               ; preds = %21
  %27 = getelementptr inbounds %struct.ParticleKey, ptr %0, i64 0, i32 1
  tail call void @vec_to_quat(ptr noundef nonnull %25, ptr noundef nonnull %27, i16 noundef signext 3, i16 noundef signext 2) #24
  br label %32

28:                                               ; preds = %21
  %29 = shl i32 %1, 4
  %30 = sext i32 %29 to i64
  %31 = getelementptr inbounds i8, ptr %23, i64 %30
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %25, ptr noundef nonnull align 1 dereferenceable(16) %31, i64 16, i1 false)
  br label %32

32:                                               ; preds = %28, %26
  %33 = getelementptr inbounds ptr, ptr %2, i64 4
  %34 = load ptr, ptr %33, align 8, !tbaa !34
  %35 = icmp eq ptr %34, null
  br i1 %35, label %41, label %36

36:                                               ; preds = %32
  %37 = getelementptr inbounds %struct.ParticleKey, ptr %0, i64 0, i32 3
  %38 = mul i32 %1, 12
  %39 = sext i32 %38 to i64
  %40 = getelementptr inbounds i8, ptr %34, i64 %39
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %37, ptr noundef nonnull align 1 dereferenceable(12) %40, i64 12, i1 false)
  br label %41

41:                                               ; preds = %36, %32
  %42 = getelementptr inbounds %struct.ParticleKey, ptr %0, i64 0, i32 4
  store float %3, ptr %42, align 4, !tbaa !38
  ret void
}

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #1

; Function Attrs: optsize
declare void @vec_to_quat(ptr noundef, ptr noundef, i16 noundef signext, i16 noundef signext) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local void @BKE_ptcache_id_from_softbody(ptr nocapture noundef writeonly %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #3 {
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(200) %0, i8 0, i64 200, i1 false)
  %4 = getelementptr inbounds %struct.PTCacheID, ptr %0, i64 0, i32 3
  store ptr %1, ptr %4, align 8, !tbaa !41
  %5 = getelementptr inbounds %struct.PTCacheID, ptr %0, i64 0, i32 4
  store ptr %2, ptr %5, align 8, !tbaa !44
  %6 = getelementptr inbounds %struct.SoftBody, ptr %2, i64 0, i32 47
  %7 = load ptr, ptr %6, align 8, !tbaa !45
  %8 = getelementptr inbounds %struct.PTCacheID, ptr %0, i64 0, i32 25
  store ptr %7, ptr %8, align 8, !tbaa !49
  %9 = getelementptr inbounds %struct.PTCacheID, ptr %0, i64 0, i32 26
  store ptr %6, ptr %9, align 8, !tbaa !50
  %10 = getelementptr inbounds %struct.SoftBody, ptr %2, i64 0, i32 48
  %11 = getelementptr inbounds %struct.PTCacheID, ptr %0, i64 0, i32 27
  store ptr %10, ptr %11, align 8, !tbaa !51
  %12 = getelementptr inbounds %struct.PTCacheID, ptr %0, i64 0, i32 22
  store ptr @ptcache_softbody_totpoint, ptr %12, align 8, !tbaa !52
  %13 = getelementptr inbounds %struct.PTCacheID, ptr %0, i64 0, i32 20
  store ptr @ptcache_softbody_totpoint, ptr %13, align 8, !tbaa !53
  %14 = getelementptr inbounds %struct.PTCacheID, ptr %0, i64 0, i32 21
  store ptr @ptcache_softbody_error, ptr %14, align 8, !tbaa !54
  %15 = getelementptr inbounds %struct.PTCacheID, ptr %0, i64 0, i32 12
  store ptr @ptcache_softbody_write, ptr %15, align 8, !tbaa !55
  %16 = getelementptr inbounds %struct.PTCacheID, ptr %0, i64 0, i32 13
  store ptr @ptcache_softbody_read, ptr %16, align 8, !tbaa !56
  %17 = getelementptr inbounds %struct.PTCacheID, ptr %0, i64 0, i32 14
  store ptr @ptcache_softbody_interpolate, ptr %17, align 8, !tbaa !57
  %18 = getelementptr inbounds %struct.PTCacheID, ptr %0, i64 0, i32 15
  %19 = getelementptr inbounds %struct.PTCacheID, ptr %0, i64 0, i32 23
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %18, i8 0, i64 40, i1 false)
  store ptr @ptcache_basic_header_write, ptr %19, align 8, !tbaa !58
  %20 = getelementptr inbounds %struct.PTCacheID, ptr %0, i64 0, i32 24
  store ptr @ptcache_basic_header_read, ptr %20, align 8, !tbaa !59
  %21 = getelementptr inbounds %struct.PTCacheID, ptr %0, i64 0, i32 10
  store i32 6, ptr %21, align 4, !tbaa !60
  %22 = getelementptr inbounds %struct.PointCache, ptr %7, i64 0, i32 12
  %23 = load i32, ptr %22, align 8, !tbaa !61
  %24 = getelementptr inbounds %struct.PTCacheID, ptr %0, i64 0, i32 6
  store i32 %23, ptr %24, align 4, !tbaa !63
  %25 = getelementptr inbounds %struct.PTCacheID, ptr %0, i64 0, i32 8
  store i32 10, ptr %25, align 4, !tbaa !64
  %26 = getelementptr inbounds %struct.PTCacheID, ptr %0, i64 0, i32 9
  store i32 20, ptr %26, align 8, !tbaa !65
  ret void
}

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #4

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal i32 @ptcache_softbody_totpoint(ptr nocapture noundef readonly %0, i32 %1) #5 !PGOFuncName !66 {
  %3 = load i32, ptr %0, align 8, !tbaa !67
  ret i32 %3
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define internal void @ptcache_softbody_error(ptr nocapture readnone %0, ptr nocapture readnone %1) #6 !PGOFuncName !68 {
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(readwrite, inaccessiblemem: none) uwtable
define internal noundef i32 @ptcache_softbody_write(i32 noundef %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2, i32 %3) #7 !PGOFuncName !69 {
  %5 = getelementptr inbounds %struct.SoftBody, ptr %1, i64 0, i32 2
  %6 = load ptr, ptr %5, align 8, !tbaa !70
  %7 = sext i32 %0 to i64
  %8 = getelementptr inbounds ptr, ptr %2, i64 1
  %9 = load ptr, ptr %8, align 8, !tbaa !34
  %10 = icmp eq ptr %9, null
  br i1 %10, label %13, label %11

11:                                               ; preds = %4
  %12 = getelementptr inbounds %struct.BodyPoint, ptr %6, i64 %7, i32 3
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(12) %9, ptr noundef nonnull align 4 dereferenceable(12) %12, i64 12, i1 false)
  br label %13

13:                                               ; preds = %11, %4
  %14 = getelementptr inbounds ptr, ptr %2, i64 2
  %15 = load ptr, ptr %14, align 8, !tbaa !34
  %16 = icmp eq ptr %15, null
  br i1 %16, label %19, label %17

17:                                               ; preds = %13
  %18 = getelementptr inbounds %struct.BodyPoint, ptr %6, i64 %7, i32 4
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(12) %15, ptr noundef nonnull align 8 dereferenceable(12) %18, i64 12, i1 false)
  br label %19

19:                                               ; preds = %17, %13
  ret i32 1
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(readwrite, inaccessiblemem: none) uwtable
define internal void @ptcache_softbody_read(i32 noundef %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2, float %3, ptr noundef readnone %4) #7 !PGOFuncName !71 {
  %6 = getelementptr inbounds %struct.SoftBody, ptr %1, i64 0, i32 2
  %7 = load ptr, ptr %6, align 8, !tbaa !70
  %8 = sext i32 %0 to i64
  %9 = icmp eq ptr %4, null
  br i1 %9, label %14, label %10

10:                                               ; preds = %5
  %11 = getelementptr inbounds %struct.BodyPoint, ptr %7, i64 %8, i32 3
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %11, ptr noundef nonnull align 8 dereferenceable(12) %2, i64 12, i1 false)
  %12 = getelementptr inbounds %struct.BodyPoint, ptr %7, i64 %8, i32 4
  %13 = getelementptr inbounds ptr, ptr %2, i64 3
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(12) %12, ptr noundef nonnull align 8 dereferenceable(12) %13, i64 12, i1 false)
  br label %26

14:                                               ; preds = %5
  %15 = getelementptr inbounds ptr, ptr %2, i64 1
  %16 = load ptr, ptr %15, align 8, !tbaa !34
  %17 = icmp eq ptr %16, null
  br i1 %17, label %20, label %18

18:                                               ; preds = %14
  %19 = getelementptr inbounds %struct.BodyPoint, ptr %7, i64 %8, i32 3
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %19, ptr noundef nonnull align 1 dereferenceable(12) %16, i64 12, i1 false)
  br label %20

20:                                               ; preds = %18, %14
  %21 = getelementptr inbounds ptr, ptr %2, i64 2
  %22 = load ptr, ptr %21, align 8, !tbaa !34
  %23 = icmp eq ptr %22, null
  br i1 %23, label %26, label %24

24:                                               ; preds = %20
  %25 = getelementptr inbounds %struct.BodyPoint, ptr %7, i64 %8, i32 4
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(12) %25, ptr noundef nonnull align 1 dereferenceable(12) %22, i64 12, i1 false)
  br label %26

26:                                               ; preds = %20, %24, %10
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal void @ptcache_softbody_interpolate(i32 noundef %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2, float noundef %3, float noundef %4, float noundef %5, ptr noundef readonly %6) #0 !PGOFuncName !72 {
  %8 = alloca [4 x %struct.ParticleKey], align 16
  %9 = getelementptr inbounds %struct.SoftBody, ptr %1, i64 0, i32 2
  %10 = load ptr, ptr %9, align 8, !tbaa !70
  call void @llvm.lifetime.start.p0(i64 224, ptr nonnull %8) #25
  %11 = fcmp oeq float %4, %5
  br i1 %11, label %32, label %12

12:                                               ; preds = %7
  %13 = sext i32 %0 to i64
  %14 = getelementptr inbounds [4 x %struct.ParticleKey], ptr %8, i64 0, i64 1
  %15 = getelementptr inbounds %struct.BodyPoint, ptr %10, i64 %13, i32 3
  call fastcc void @copy_v3_v3(ptr noundef nonnull %14, ptr noundef nonnull %15) #26
  %16 = getelementptr inbounds [4 x %struct.ParticleKey], ptr %8, i64 0, i64 1, i32 1
  %17 = getelementptr inbounds %struct.BodyPoint, ptr %10, i64 %13, i32 4
  call fastcc void @copy_v3_v3(ptr noundef nonnull %16, ptr noundef nonnull %17) #26
  %18 = icmp eq ptr %6, null
  br i1 %18, label %23, label %19

19:                                               ; preds = %12
  %20 = getelementptr inbounds [4 x %struct.ParticleKey], ptr %8, i64 0, i64 2
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(12) %20, ptr noundef nonnull align 4 dereferenceable(12) %6, i64 12, i1 false)
  %21 = getelementptr inbounds [4 x %struct.ParticleKey], ptr %8, i64 0, i64 2, i32 1
  %22 = getelementptr inbounds float, ptr %6, i64 3
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %21, ptr noundef nonnull align 4 dereferenceable(12) %22, i64 12, i1 false)
  br label %25

23:                                               ; preds = %12
  %24 = getelementptr inbounds %struct.ParticleKey, ptr %8, i64 2
  call void @BKE_ptcache_make_particle_key(ptr noundef nonnull %24, i32 noundef 0, ptr noundef %2, float noundef %5) #26
  br label %25

25:                                               ; preds = %23, %19
  %26 = fsub float %5, %4
  call fastcc void @mul_v3_fl(ptr noundef nonnull %16, float noundef %26) #26
  %27 = getelementptr inbounds [4 x %struct.ParticleKey], ptr %8, i64 0, i64 2, i32 1
  call fastcc void @mul_v3_fl(ptr noundef nonnull %27, float noundef %26) #26
  %28 = fsub float %3, %4
  %29 = fdiv float %28, %26
  call void @psys_interpolate_particle(i16 noundef signext -1, ptr noundef nonnull %8, float noundef %29, ptr noundef nonnull %8, i32 noundef 1) #24
  %30 = getelementptr inbounds %struct.ParticleKey, ptr %8, i64 0, i32 1
  %31 = fdiv float 1.000000e+00, %26
  call fastcc void @mul_v3_fl(ptr noundef nonnull %30, float noundef %31) #26
  call fastcc void @copy_v3_v3(ptr noundef nonnull %15, ptr noundef nonnull %8) #26
  call fastcc void @copy_v3_v3(ptr noundef nonnull %17, ptr noundef nonnull %30) #26
  br label %32

32:                                               ; preds = %7, %25
  call void @llvm.lifetime.end.p0(i64 224, ptr nonnull %8) #25
  ret void
}

; Function Attrs: nofree noinline nounwind optsize uwtable
define internal noundef i32 @ptcache_basic_header_write(ptr nocapture noundef %0) #8 !PGOFuncName !73 {
  %2 = getelementptr inbounds %struct.PTCacheFile, ptr %0, i64 0, i32 3
  %3 = load ptr, ptr %0, align 8, !tbaa !74
  %4 = tail call i64 @fwrite(ptr noundef nonnull %2, i64 noundef 4, i64 noundef 1, ptr noundef %3) #26
  %5 = icmp eq i64 %4, 0
  br i1 %5, label %12, label %6

6:                                                ; preds = %1
  %7 = getelementptr inbounds %struct.PTCacheFile, ptr %0, i64 0, i32 5
  %8 = load ptr, ptr %0, align 8, !tbaa !74
  %9 = tail call i64 @fwrite(ptr noundef nonnull %7, i64 noundef 4, i64 noundef 1, ptr noundef %8) #26
  %10 = icmp ne i64 %9, 0
  %11 = zext i1 %10 to i32
  br label %12

12:                                               ; preds = %6, %1
  %13 = phi i32 [ 0, %1 ], [ %11, %6 ]
  ret i32 %13
}

; Function Attrs: nofree noinline nounwind optsize uwtable
define internal noundef i32 @ptcache_basic_header_read(ptr nocapture noundef %0) #8 !PGOFuncName !78 {
  %2 = getelementptr inbounds %struct.PTCacheFile, ptr %0, i64 0, i32 3
  %3 = load ptr, ptr %0, align 8, !tbaa !74
  %4 = tail call i64 @fread(ptr noundef nonnull %2, i64 noundef 4, i64 noundef 1, ptr noundef %3) #26
  %5 = icmp eq i64 %4, 0
  br i1 %5, label %12, label %6

6:                                                ; preds = %1
  %7 = getelementptr inbounds %struct.PTCacheFile, ptr %0, i64 0, i32 5
  %8 = load ptr, ptr %0, align 8, !tbaa !74
  %9 = tail call i64 @fread(ptr noundef nonnull %7, i64 noundef 4, i64 noundef 1, ptr noundef %8) #26
  %10 = icmp ne i64 %9, 0
  %11 = zext i1 %10 to i32
  br label %12

12:                                               ; preds = %6, %1
  %13 = phi i32 [ 0, %1 ], [ %11, %6 ]
  ret i32 %13
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local void @BKE_ptcache_id_from_particles(ptr nocapture noundef writeonly %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #3 {
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(200) %0, i8 0, i64 200, i1 false)
  %4 = getelementptr inbounds %struct.PTCacheID, ptr %0, i64 0, i32 3
  store ptr %1, ptr %4, align 8, !tbaa !41
  %5 = getelementptr inbounds %struct.PTCacheID, ptr %0, i64 0, i32 4
  store ptr %2, ptr %5, align 8, !tbaa !44
  %6 = getelementptr inbounds %struct.PTCacheID, ptr %0, i64 0, i32 5
  store i32 1, ptr %6, align 8, !tbaa !79
  %7 = getelementptr inbounds %struct.ParticleSystem, ptr %2, i64 0, i32 40
  %8 = load ptr, ptr %7, align 8, !tbaa !80
  %9 = getelementptr inbounds %struct.PointCache, ptr %8, i64 0, i32 12
  %10 = load i32, ptr %9, align 8, !tbaa !61
  %11 = getelementptr inbounds %struct.PTCacheID, ptr %0, i64 0, i32 6
  store i32 %10, ptr %11, align 4, !tbaa !63
  %12 = getelementptr inbounds %struct.PTCacheID, ptr %0, i64 0, i32 25
  store ptr %8, ptr %12, align 8, !tbaa !49
  %13 = getelementptr inbounds %struct.PTCacheID, ptr %0, i64 0, i32 26
  store ptr %7, ptr %13, align 8, !tbaa !50
  %14 = getelementptr inbounds %struct.ParticleSystem, ptr %2, i64 0, i32 41
  %15 = getelementptr inbounds %struct.PTCacheID, ptr %0, i64 0, i32 27
  store ptr %14, ptr %15, align 8, !tbaa !51
  %16 = getelementptr inbounds %struct.ParticleSystem, ptr %2, i64 0, i32 2
  %17 = load ptr, ptr %16, align 8, !tbaa !82
  %18 = getelementptr inbounds %struct.ParticleSettings, ptr %17, i64 0, i32 7
  %19 = load i16, ptr %18, align 8, !tbaa !83
  %20 = icmp eq i16 %19, 2
  br i1 %20, label %23, label %21

21:                                               ; preds = %3
  %22 = getelementptr inbounds %struct.PTCacheID, ptr %0, i64 0, i32 7
  store i32 1, ptr %22, align 8, !tbaa !86
  br label %23

23:                                               ; preds = %21, %3
  %24 = getelementptr inbounds %struct.PTCacheID, ptr %0, i64 0, i32 20
  store ptr @ptcache_particle_totpoint, ptr %24, align 8, !tbaa !53
  %25 = getelementptr inbounds %struct.PTCacheID, ptr %0, i64 0, i32 22
  store ptr @ptcache_particle_totwrite, ptr %25, align 8, !tbaa !52
  %26 = getelementptr inbounds %struct.PTCacheID, ptr %0, i64 0, i32 21
  store ptr @ptcache_particle_error, ptr %26, align 8, !tbaa !54
  %27 = getelementptr inbounds %struct.PTCacheID, ptr %0, i64 0, i32 12
  store ptr @ptcache_particle_write, ptr %27, align 8, !tbaa !55
  %28 = getelementptr inbounds %struct.PTCacheID, ptr %0, i64 0, i32 13
  store ptr @ptcache_particle_read, ptr %28, align 8, !tbaa !56
  %29 = getelementptr inbounds %struct.PTCacheID, ptr %0, i64 0, i32 14
  store ptr @ptcache_particle_interpolate, ptr %29, align 8, !tbaa !57
  %30 = getelementptr inbounds %struct.PTCacheID, ptr %0, i64 0, i32 15
  %31 = getelementptr inbounds %struct.PTCacheID, ptr %0, i64 0, i32 17
  %32 = getelementptr inbounds %struct.PTCacheID, ptr %0, i64 0, i32 18
  %33 = getelementptr inbounds %struct.PTCacheID, ptr %0, i64 0, i32 23
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %30, i8 0, i64 40, i1 false)
  store ptr @ptcache_basic_header_write, ptr %33, align 8, !tbaa !58
  %34 = getelementptr inbounds %struct.PTCacheID, ptr %0, i64 0, i32 24
  store ptr @ptcache_basic_header_read, ptr %34, align 8, !tbaa !59
  %35 = getelementptr inbounds %struct.PTCacheID, ptr %0, i64 0, i32 10
  store i32 7, ptr %35, align 4, !tbaa !60
  %36 = getelementptr inbounds %struct.ParticleSettings, ptr %17, i64 0, i32 11
  %37 = load i16, ptr %36, align 8, !tbaa !87
  switch i16 %37, label %49 [
    i16 3, label %38
    i16 4, label %39
  ]

38:                                               ; preds = %23
  store i32 159, ptr %35, align 4, !tbaa !60
  br label %49

39:                                               ; preds = %23
  %40 = getelementptr inbounds %struct.ParticleSettings, ptr %17, i64 0, i32 3
  %41 = load ptr, ptr %40, align 8, !tbaa !88
  %42 = icmp eq ptr %41, null
  br i1 %42, label %49, label %43

43:                                               ; preds = %39
  %44 = getelementptr inbounds %struct.SPHFluidSettings, ptr %41, i64 0, i32 13
  %45 = load i32, ptr %44, align 4, !tbaa !89
  %46 = and i32 %45, 1
  %47 = icmp eq i32 %46, 0
  br i1 %47, label %49, label %48

48:                                               ; preds = %43
  store ptr @ptcache_particle_extra_write, ptr %31, align 8, !tbaa !91
  store ptr @ptcache_particle_extra_read, ptr %32, align 8, !tbaa !92
  br label %49

49:                                               ; preds = %23, %39, %43, %48, %38
  %50 = phi i32 [ 7, %23 ], [ 7, %39 ], [ 7, %43 ], [ 7, %48 ], [ 159, %38 ]
  %51 = getelementptr inbounds %struct.ParticleSettings, ptr %17, i64 0, i32 5
  %52 = load i32, ptr %51, align 8, !tbaa !93
  %53 = and i32 %52, 512
  %54 = icmp eq i32 %53, 0
  br i1 %54, label %70, label %55

55:                                               ; preds = %49
  %56 = or i32 %50, 8
  store i32 %56, ptr %35, align 4, !tbaa !60
  %57 = getelementptr inbounds %struct.ParticleSettings, ptr %17, i64 0, i32 12
  %58 = load i16, ptr %57, align 2, !tbaa !94
  %59 = icmp eq i16 %58, 2
  br i1 %59, label %60, label %68

60:                                               ; preds = %55
  %61 = getelementptr inbounds %struct.ParticleSettings, ptr %17, i64 0, i32 13
  %62 = load i16, ptr %61, align 4, !tbaa !95
  %63 = icmp eq i16 %62, 2
  br i1 %63, label %68, label %64

64:                                               ; preds = %60
  %65 = getelementptr inbounds %struct.ParticleSettings, ptr %17, i64 0, i32 77
  %66 = load float, ptr %65, align 4, !tbaa !96
  %67 = fcmp une float %66, 0.000000e+00
  br i1 %67, label %68, label %70

68:                                               ; preds = %64, %60, %55
  %69 = or i32 %50, 24
  store i32 %69, ptr %35, align 4, !tbaa !60
  br label %70

70:                                               ; preds = %64, %68, %49
  %71 = getelementptr inbounds %struct.PTCacheID, ptr %0, i64 0, i32 11
  store i32 64, ptr %71, align 8, !tbaa !97
  %72 = getelementptr inbounds %struct.PTCacheID, ptr %0, i64 0, i32 8
  store i32 10, ptr %72, align 4, !tbaa !64
  %73 = getelementptr inbounds %struct.PTCacheID, ptr %0, i64 0, i32 9
  store i32 20, ptr %73, align 8, !tbaa !65
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal i32 @ptcache_particle_totpoint(ptr nocapture noundef readonly %0, i32 %1) #5 !PGOFuncName !98 {
  %3 = getelementptr inbounds %struct.ParticleSystem, ptr %0, i64 0, i32 26
  %4 = load i32, ptr %3, align 8, !tbaa !99
  ret i32 %4
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(read, inaccessiblemem: none) uwtable
define internal i32 @ptcache_particle_totwrite(ptr nocapture noundef readonly %0, i32 noundef %1) #9 !PGOFuncName !100 {
  %3 = getelementptr inbounds %struct.ParticleSystem, ptr %0, i64 0, i32 40
  %4 = load ptr, ptr %3, align 8, !tbaa !80
  %5 = getelementptr inbounds %struct.PointCache, ptr %4, i64 0, i32 3
  %6 = load i32, ptr %5, align 4, !tbaa !101
  %7 = icmp eq i32 %1, 0
  %8 = getelementptr inbounds %struct.ParticleSystem, ptr %0, i64 0, i32 26
  %9 = load i32, ptr %8, align 8, !tbaa !99
  br i1 %7, label %37, label %10

10:                                               ; preds = %2
  %11 = icmp sgt i32 %9, 0
  br i1 %11, label %12, label %37

12:                                               ; preds = %10
  %13 = getelementptr inbounds %struct.ParticleSystem, ptr %0, i64 0, i32 3
  %14 = load ptr, ptr %13, align 8, !tbaa !102
  %15 = sitofp i32 %1 to float
  %16 = sitofp i32 %6 to float
  br label %17

17:                                               ; preds = %12, %30
  %18 = phi i32 [ 0, %12 ], [ %33, %30 ]
  %19 = phi i32 [ 0, %12 ], [ %34, %30 ]
  %20 = phi ptr [ %14, %12 ], [ %35, %30 ]
  %21 = getelementptr inbounds %struct.ParticleData, ptr %20, i64 0, i32 6
  %22 = load float, ptr %21, align 4, !tbaa !103
  %23 = fsub float %22, %16
  %24 = fcmp ugt float %23, %15
  br i1 %24, label %30, label %25

25:                                               ; preds = %17
  %26 = getelementptr inbounds %struct.ParticleData, ptr %20, i64 0, i32 8
  %27 = load float, ptr %26, align 4, !tbaa !105
  %28 = fadd float %27, %16
  %29 = fcmp oge float %28, %15
  br label %30

30:                                               ; preds = %25, %17
  %31 = phi i1 [ false, %17 ], [ %29, %25 ]
  %32 = zext i1 %31 to i32
  %33 = add nuw nsw i32 %18, %32
  %34 = add nuw nsw i32 %19, 1
  %35 = getelementptr inbounds %struct.ParticleData, ptr %20, i64 1
  %36 = icmp eq i32 %34, %9
  br i1 %36, label %37, label %17, !llvm.loop !106

37:                                               ; preds = %30, %2, %10
  %38 = phi i32 [ 0, %10 ], [ %9, %2 ], [ %33, %30 ]
  ret i32 %38
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define internal void @ptcache_particle_error(ptr nocapture readnone %0, ptr nocapture readnone %1) #6 !PGOFuncName !108 {
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(readwrite, inaccessiblemem: none) uwtable
define internal i32 @ptcache_particle_write(i32 noundef %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2, i32 noundef %3) #7 !PGOFuncName !109 {
  %5 = getelementptr inbounds %struct.ParticleSystem, ptr %1, i64 0, i32 3
  %6 = load ptr, ptr %5, align 8, !tbaa !102
  %7 = sext i32 %0 to i64
  %8 = getelementptr inbounds %struct.ParticleData, ptr %6, i64 %7
  %9 = getelementptr inbounds %struct.ParticleSystem, ptr %1, i64 0, i32 2
  %10 = load ptr, ptr %9, align 8, !tbaa !82
  %11 = getelementptr inbounds %struct.ParticleSettings, ptr %10, i64 0, i32 11
  %12 = load i16, ptr %11, align 8, !tbaa !87
  %13 = icmp eq i16 %12, 3
  br i1 %13, label %14, label %17

14:                                               ; preds = %4
  %15 = getelementptr inbounds %struct.ParticleData, ptr %6, i64 %7, i32 4
  %16 = load ptr, ptr %15, align 8, !tbaa !110
  br label %17

17:                                               ; preds = %4, %14
  %18 = phi ptr [ %16, %14 ], [ null, %4 ]
  %19 = load ptr, ptr %2, align 8, !tbaa !34
  %20 = icmp eq ptr %19, null
  br i1 %20, label %21, label %28

21:                                               ; preds = %17
  %22 = getelementptr inbounds %struct.ParticleData, ptr %6, i64 %7, i32 6
  %23 = load float, ptr %22, align 4, !tbaa !103
  %24 = getelementptr inbounds %struct.ParticleData, ptr %6, i64 %7, i32 8
  %25 = load float, ptr %24, align 4, !tbaa !105
  %26 = getelementptr inbounds %struct.ParticleData, ptr %6, i64 %7, i32 7
  %27 = load float, ptr %26, align 8, !tbaa !111
  br label %47

28:                                               ; preds = %17
  %29 = getelementptr inbounds %struct.ParticleSystem, ptr %1, i64 0, i32 40
  %30 = load ptr, ptr %29, align 8, !tbaa !80
  %31 = getelementptr inbounds %struct.PointCache, ptr %30, i64 0, i32 3
  %32 = load i32, ptr %31, align 4, !tbaa !101
  %33 = sitofp i32 %3 to float
  %34 = getelementptr inbounds %struct.ParticleData, ptr %6, i64 %7, i32 6
  %35 = load float, ptr %34, align 4, !tbaa !103
  %36 = sitofp i32 %32 to float
  %37 = fsub float %35, %36
  %38 = fcmp ogt float %37, %33
  br i1 %38, label %106, label %39

39:                                               ; preds = %28
  %40 = getelementptr inbounds %struct.ParticleData, ptr %6, i64 %7, i32 8
  %41 = load float, ptr %40, align 4, !tbaa !105
  %42 = fadd float %41, %36
  %43 = fcmp olt float %42, %33
  br i1 %43, label %106, label %44

44:                                               ; preds = %39
  %45 = getelementptr inbounds %struct.ParticleData, ptr %6, i64 %7, i32 7
  %46 = load float, ptr %45, align 8, !tbaa !111
  store i32 %0, ptr %19, align 1
  br label %47

47:                                               ; preds = %21, %44
  %48 = phi float [ %27, %21 ], [ %46, %44 ]
  %49 = phi float [ %25, %21 ], [ %41, %44 ]
  %50 = phi float [ %23, %21 ], [ %35, %44 ]
  %51 = phi ptr [ %22, %21 ], [ %34, %44 ]
  %52 = getelementptr inbounds ptr, ptr %2, i64 1
  %53 = load ptr, ptr %52, align 8, !tbaa !34
  %54 = icmp eq ptr %53, null
  br i1 %54, label %56, label %55

55:                                               ; preds = %47
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(12) %53, ptr noundef nonnull align 8 dereferenceable(12) %8, i64 12, i1 false)
  br label %56

56:                                               ; preds = %55, %47
  %57 = getelementptr inbounds ptr, ptr %2, i64 2
  %58 = load ptr, ptr %57, align 8, !tbaa !34
  %59 = icmp eq ptr %58, null
  br i1 %59, label %62, label %60

60:                                               ; preds = %56
  %61 = getelementptr inbounds %struct.ParticleKey, ptr %8, i64 0, i32 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(12) %58, ptr noundef nonnull align 4 dereferenceable(12) %61, i64 12, i1 false)
  br label %62

62:                                               ; preds = %60, %56
  %63 = getelementptr inbounds ptr, ptr %2, i64 3
  %64 = load ptr, ptr %63, align 8, !tbaa !34
  %65 = icmp eq ptr %64, null
  br i1 %65, label %68, label %66

66:                                               ; preds = %62
  %67 = getelementptr inbounds %struct.ParticleKey, ptr %8, i64 0, i32 2
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(16) %64, ptr noundef nonnull align 8 dereferenceable(16) %67, i64 16, i1 false)
  br label %68

68:                                               ; preds = %66, %62
  %69 = getelementptr inbounds ptr, ptr %2, i64 4
  %70 = load ptr, ptr %69, align 8, !tbaa !34
  %71 = icmp eq ptr %70, null
  br i1 %71, label %74, label %72

72:                                               ; preds = %68
  %73 = getelementptr inbounds %struct.ParticleKey, ptr %8, i64 0, i32 3
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(12) %70, ptr noundef nonnull align 8 dereferenceable(12) %73, i64 12, i1 false)
  br label %74

74:                                               ; preds = %72, %68
  %75 = getelementptr inbounds ptr, ptr %2, i64 5
  %76 = load ptr, ptr %75, align 8, !tbaa !34
  %77 = icmp eq ptr %76, null
  br i1 %77, label %81, label %78

78:                                               ; preds = %74
  %79 = getelementptr inbounds %struct.ParticleData, ptr %6, i64 %7, i32 13
  %80 = load i32, ptr %79, align 4
  store i32 %80, ptr %76, align 1
  br label %81

81:                                               ; preds = %78, %74
  %82 = getelementptr inbounds ptr, ptr %2, i64 6
  %83 = load ptr, ptr %82, align 8, !tbaa !34
  %84 = icmp eq ptr %83, null
  br i1 %84, label %88, label %85

85:                                               ; preds = %81
  store float %50, ptr %83, align 1
  %86 = getelementptr inbounds i8, ptr %83, i64 4
  store float %49, ptr %86, align 1
  %87 = getelementptr inbounds i8, ptr %83, i64 8
  store float %48, ptr %87, align 1
  br label %88

88:                                               ; preds = %85, %81
  %89 = icmp eq ptr %18, null
  br i1 %89, label %96, label %90

90:                                               ; preds = %88
  %91 = getelementptr inbounds ptr, ptr %2, i64 7
  %92 = load ptr, ptr %91, align 8, !tbaa !34
  %93 = icmp eq ptr %92, null
  br i1 %93, label %96, label %94

94:                                               ; preds = %90
  %95 = getelementptr inbounds %struct.BoidParticle, ptr %18, i64 0, i32 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(20) %92, ptr noundef nonnull align 8 dereferenceable(20) %95, i64 20, i1 false)
  br label %96

96:                                               ; preds = %90, %94, %88
  %97 = getelementptr inbounds %struct.ParticleKey, ptr %8, i64 0, i32 4
  %98 = load float, ptr %97, align 4, !tbaa !112
  %99 = load float, ptr %51, align 4, !tbaa !103
  %100 = fcmp ult float %98, %99
  br i1 %100, label %106, label %101

101:                                              ; preds = %96
  %102 = getelementptr inbounds %struct.ParticleData, ptr %6, i64 %7, i32 1, i32 4
  %103 = load float, ptr %102, align 4, !tbaa !113
  %104 = fcmp ole float %103, %99
  %105 = select i1 %104, i32 2, i32 1
  br label %106

106:                                              ; preds = %96, %101, %28, %39
  %107 = phi i32 [ 0, %39 ], [ 0, %28 ], [ 1, %96 ], [ %105, %101 ]
  ret i32 %107
}

; Function Attrs: noinline nounwind optsize uwtable
define internal void @ptcache_particle_read(i32 noundef %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2, float noundef %3, ptr noundef readonly %4) #0 !PGOFuncName !114 {
  %6 = getelementptr inbounds %struct.ParticleSystem, ptr %1, i64 0, i32 2
  %7 = load ptr, ptr %6, align 8, !tbaa !82
  %8 = getelementptr inbounds %struct.ParticleSettings, ptr %7, i64 0, i32 57
  %9 = load float, ptr %8, align 4, !tbaa !115
  %10 = fmul float %9, 0x3FA47AE140000000
  %11 = getelementptr inbounds %struct.ParticleSystem, ptr %1, i64 0, i32 26
  %12 = load i32, ptr %11, align 8, !tbaa !99
  %13 = icmp sgt i32 %12, %0
  br i1 %13, label %14, label %102

14:                                               ; preds = %5
  %15 = getelementptr inbounds %struct.ParticleSystem, ptr %1, i64 0, i32 3
  %16 = load ptr, ptr %15, align 8, !tbaa !102
  %17 = sext i32 %0 to i64
  %18 = getelementptr inbounds %struct.ParticleData, ptr %16, i64 %17
  %19 = getelementptr inbounds %struct.ParticleSettings, ptr %7, i64 0, i32 11
  %20 = load i16, ptr %19, align 8, !tbaa !87
  %21 = icmp eq i16 %20, 3
  br i1 %21, label %22, label %25

22:                                               ; preds = %14
  %23 = getelementptr inbounds %struct.ParticleData, ptr %16, i64 %17, i32 4
  %24 = load ptr, ptr %23, align 8, !tbaa !110
  br label %25

25:                                               ; preds = %14, %22
  %26 = phi ptr [ %24, %22 ], [ null, %14 ]
  %27 = getelementptr inbounds %struct.ParticleKey, ptr %18, i64 0, i32 4
  %28 = load float, ptr %27, align 4, !tbaa !112
  %29 = fcmp olt float %28, %3
  br i1 %29, label %30, label %32

30:                                               ; preds = %25
  %31 = getelementptr inbounds %struct.ParticleData, ptr %16, i64 %17, i32 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %31, ptr noundef nonnull align 8 dereferenceable(56) %18, i64 56, i1 false)
  br label %32

32:                                               ; preds = %30, %25
  %33 = icmp eq ptr %4, null
  br i1 %33, label %35, label %34

34:                                               ; preds = %32
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %18, ptr noundef nonnull align 4 dereferenceable(56) %4, i64 56, i1 false)
  br label %102

35:                                               ; preds = %32
  tail call void @BKE_ptcache_make_particle_key(ptr noundef nonnull %18, i32 noundef 0, ptr noundef %2, float noundef %3) #26
  %36 = getelementptr inbounds %struct.ParticleData, ptr %16, i64 %17, i32 6
  %37 = load float, ptr %36, align 4, !tbaa !103
  %38 = fcmp ogt float %37, %3
  br i1 %38, label %43, label %39

39:                                               ; preds = %35
  %40 = getelementptr inbounds %struct.ParticleData, ptr %16, i64 %17, i32 8
  %41 = load float, ptr %40, align 4, !tbaa !105
  %42 = fcmp olt float %41, %3
  br i1 %42, label %43, label %45

43:                                               ; preds = %39, %35
  %44 = phi float [ %37, %35 ], [ %41, %39 ]
  store float %44, ptr %27, align 4, !tbaa !112
  br label %45

45:                                               ; preds = %43, %39
  %46 = getelementptr inbounds ptr, ptr %2, i64 5
  %47 = load ptr, ptr %46, align 8, !tbaa !34
  %48 = icmp eq ptr %47, null
  br i1 %48, label %52, label %49

49:                                               ; preds = %45
  %50 = getelementptr inbounds %struct.ParticleData, ptr %16, i64 %17, i32 13
  %51 = load i32, ptr %47, align 1
  store i32 %51, ptr %50, align 4
  br label %52

52:                                               ; preds = %49, %45
  %53 = getelementptr inbounds ptr, ptr %2, i64 6
  %54 = load ptr, ptr %53, align 8, !tbaa !34
  %55 = icmp eq ptr %54, null
  br i1 %55, label %62, label %56

56:                                               ; preds = %52
  %57 = load float, ptr %54, align 1
  %58 = getelementptr inbounds i8, ptr %54, i64 4
  %59 = getelementptr inbounds %struct.ParticleData, ptr %16, i64 %17, i32 7
  %60 = load <2 x float>, ptr %58, align 1
  store float %57, ptr %36, align 4, !tbaa !103
  %61 = shufflevector <2 x float> %60, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  store <2 x float> %61, ptr %59, align 8, !tbaa !116
  br label %62

62:                                               ; preds = %56, %52
  %63 = icmp eq ptr %26, null
  br i1 %63, label %70, label %64

64:                                               ; preds = %62
  %65 = getelementptr inbounds ptr, ptr %2, i64 7
  %66 = load ptr, ptr %65, align 8, !tbaa !34
  %67 = icmp eq ptr %66, null
  br i1 %67, label %70, label %68

68:                                               ; preds = %64
  %69 = getelementptr inbounds %struct.BoidParticle, ptr %26, i64 0, i32 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(20) %69, ptr noundef nonnull align 1 dereferenceable(20) %66, i64 20, i1 false)
  br label %70

70:                                               ; preds = %64, %68, %62
  %71 = getelementptr inbounds ptr, ptr %2, i64 1
  %72 = load ptr, ptr %71, align 8, !tbaa !34
  %73 = icmp eq ptr %72, null
  br i1 %73, label %102, label %74

74:                                               ; preds = %70
  %75 = getelementptr inbounds ptr, ptr %2, i64 2
  %76 = load ptr, ptr %75, align 8, !tbaa !34
  %77 = icmp eq ptr %76, null
  br i1 %77, label %78, label %93

78:                                               ; preds = %74
  %79 = getelementptr inbounds %struct.ParticleData, ptr %16, i64 %17, i32 1
  %80 = getelementptr inbounds %struct.ParticleData, ptr %16, i64 %17, i32 1, i32 4
  %81 = load float, ptr %80, align 4, !tbaa !113
  %82 = fcmp olt float %81, %3
  %83 = getelementptr inbounds %struct.ParticleKey, ptr %18, i64 0, i32 1
  br i1 %82, label %84, label %86

84:                                               ; preds = %78
  tail call fastcc void @sub_v3_v3v3(ptr noundef nonnull %83, ptr noundef nonnull %18, ptr noundef nonnull %79) #26
  %85 = load float, ptr %80, align 4, !tbaa !113
  br label %88

86:                                               ; preds = %78
  tail call fastcc void @sub_v3_v3v3(ptr noundef nonnull %83, ptr noundef nonnull %79, ptr noundef nonnull %18) #26
  %87 = load float, ptr %80, align 4, !tbaa !113
  br label %88

88:                                               ; preds = %86, %84
  %89 = phi float [ %85, %84 ], [ %3, %86 ]
  %90 = phi float [ %3, %84 ], [ %87, %86 ]
  %91 = fsub float %90, %89
  %92 = fmul float %10, %91
  tail call fastcc void @mul_v3_fl(ptr noundef nonnull %83, float noundef %92) #26
  br label %93

93:                                               ; preds = %88, %74
  %94 = load ptr, ptr %71, align 8, !tbaa !34
  %95 = icmp eq ptr %94, null
  br i1 %95, label %102, label %96

96:                                               ; preds = %93
  %97 = getelementptr inbounds ptr, ptr %2, i64 3
  %98 = load ptr, ptr %97, align 8, !tbaa !34
  %99 = icmp eq ptr %98, null
  br i1 %99, label %100, label %102

100:                                              ; preds = %96
  %101 = getelementptr inbounds %struct.ParticleKey, ptr %18, i64 0, i32 2
  tail call void @unit_qt(ptr noundef nonnull %101) #24
  br label %102

102:                                              ; preds = %70, %93, %96, %100, %5, %34
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal void @ptcache_particle_interpolate(i32 noundef %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2, float noundef %3, float noundef %4, float noundef %5, ptr noundef readonly %6) #0 !PGOFuncName !117 {
  %8 = alloca [4 x %struct.ParticleKey], align 16
  call void @llvm.lifetime.start.p0(i64 224, ptr nonnull %8) #25
  %9 = getelementptr inbounds %struct.ParticleSystem, ptr %1, i64 0, i32 2
  %10 = load ptr, ptr %9, align 8, !tbaa !82
  %11 = getelementptr inbounds %struct.ParticleSettings, ptr %10, i64 0, i32 57
  %12 = load float, ptr %11, align 4, !tbaa !115
  %13 = fmul float %12, 0x3FA47AE140000000
  %14 = getelementptr inbounds %struct.ParticleSystem, ptr %1, i64 0, i32 26
  %15 = load i32, ptr %14, align 8, !tbaa !99
  %16 = icmp sgt i32 %15, %0
  br i1 %16, label %17, label %102

17:                                               ; preds = %7
  %18 = getelementptr inbounds %struct.ParticleSystem, ptr %1, i64 0, i32 3
  %19 = load ptr, ptr %18, align 8, !tbaa !102
  %20 = sext i32 %0 to i64
  %21 = getelementptr inbounds %struct.ParticleData, ptr %19, i64 %20
  %22 = fptosi float %4 to i32
  %23 = sitofp i32 %22 to float
  %24 = getelementptr inbounds %struct.ParticleData, ptr %19, i64 %20, i32 6
  %25 = load float, ptr %24, align 4, !tbaa !103
  %26 = getelementptr inbounds %struct.ParticleSystem, ptr %1, i64 0, i32 40
  %27 = load ptr, ptr %26, align 8, !tbaa !80
  %28 = getelementptr inbounds %struct.PointCache, ptr %27, i64 0, i32 3
  %29 = load i32, ptr %28, align 4, !tbaa !101
  %30 = sitofp i32 %29 to float
  %31 = fsub float %25, %30
  %32 = fcmp ogt float %31, %23
  br i1 %32, label %102, label %33

33:                                               ; preds = %17
  %34 = getelementptr inbounds %struct.ParticleData, ptr %19, i64 %20, i32 8
  %35 = load float, ptr %34, align 4, !tbaa !105
  %36 = fadd float %35, %30
  %37 = fcmp olt float %36, %23
  br i1 %37, label %102, label %38

38:                                               ; preds = %33
  %39 = fcmp ogt float %35, %3
  %40 = select i1 %39, float %3, float %35
  %41 = fcmp ogt float %35, %4
  %42 = select i1 %41, float %4, float %35
  %43 = fcmp ogt float %35, %5
  %44 = select i1 %43, float %5, float %35
  %45 = fcmp oeq float %42, %44
  br i1 %45, label %102, label %46

46:                                               ; preds = %38
  %47 = getelementptr inbounds %struct.ParticleKey, ptr %8, i64 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %47, ptr noundef nonnull align 8 dereferenceable(56) %21, i64 56, i1 false)
  %48 = icmp eq ptr %6, null
  %49 = getelementptr inbounds %struct.ParticleKey, ptr %8, i64 2
  br i1 %48, label %51, label %50

50:                                               ; preds = %46
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(56) %49, ptr noundef nonnull align 4 dereferenceable(56) %6, i64 56, i1 false)
  br label %52

51:                                               ; preds = %46
  call void @BKE_ptcache_make_particle_key(ptr noundef nonnull %49, i32 noundef 0, ptr noundef %2, float noundef %44) #26
  br label %52

52:                                               ; preds = %51, %50
  %53 = getelementptr inbounds ptr, ptr %2, i64 1
  %54 = load ptr, ptr %53, align 8, !tbaa !34
  %55 = icmp eq ptr %54, null
  br i1 %55, label %84, label %56

56:                                               ; preds = %52
  %57 = getelementptr inbounds ptr, ptr %2, i64 2
  %58 = load ptr, ptr %57, align 8, !tbaa !34
  %59 = icmp eq ptr %58, null
  br i1 %59, label %60, label %77

60:                                               ; preds = %56
  %61 = getelementptr inbounds %struct.ParticleKey, ptr %8, i64 1, i32 4
  %62 = load float, ptr %61, align 4, !tbaa !38
  %63 = getelementptr inbounds [4 x %struct.ParticleKey], ptr %8, i64 0, i64 2
  %64 = getelementptr inbounds [4 x %struct.ParticleKey], ptr %8, i64 0, i64 2, i32 4
  %65 = load float, ptr %64, align 4, !tbaa !38
  %66 = fcmp ogt float %62, %65
  %67 = getelementptr inbounds [4 x %struct.ParticleKey], ptr %8, i64 0, i64 2, i32 1
  br i1 %66, label %68, label %69

68:                                               ; preds = %60
  call fastcc void @sub_v3_v3v3(ptr noundef nonnull %67, ptr noundef nonnull %47, ptr noundef nonnull %63) #26
  br label %70

69:                                               ; preds = %60
  call fastcc void @sub_v3_v3v3(ptr noundef nonnull %67, ptr noundef nonnull %63, ptr noundef nonnull %47) #26
  br label %70

70:                                               ; preds = %69, %68
  %71 = phi ptr [ %61, %68 ], [ %64, %69 ]
  %72 = phi ptr [ %64, %68 ], [ %61, %69 ]
  %73 = load float, ptr %71, align 4, !tbaa !38
  %74 = load float, ptr %72, align 4, !tbaa !38
  %75 = fsub float %73, %74
  %76 = fmul float %13, %75
  call fastcc void @mul_v3_fl(ptr noundef nonnull %67, float noundef %76) #26
  br label %77

77:                                               ; preds = %70, %56
  %78 = getelementptr inbounds ptr, ptr %2, i64 3
  %79 = load ptr, ptr %78, align 8, !tbaa !34
  %80 = icmp eq ptr %79, null
  br i1 %80, label %81, label %84

81:                                               ; preds = %77
  %82 = getelementptr inbounds [4 x %struct.ParticleKey], ptr %8, i64 0, i64 2, i32 2
  %83 = getelementptr inbounds [4 x %struct.ParticleKey], ptr %8, i64 0, i64 2, i32 1
  call void @vec_to_quat(ptr noundef nonnull %82, ptr noundef nonnull %83, i16 noundef signext 3, i16 noundef signext 2) #24
  br label %84

84:                                               ; preds = %52, %81, %77
  %85 = load float, ptr %24, align 4, !tbaa !103
  %86 = fcmp ogt float %40, %85
  %87 = fcmp ogt float %42, %85
  %88 = select i1 %87, float %42, float %85
  %89 = select i1 %86, float %88, float %42
  %90 = fsub float %44, %89
  %91 = getelementptr inbounds %struct.ParticleKey, ptr %8, i64 1, i32 1
  %92 = fmul float %13, %90
  call fastcc void @mul_v3_fl(ptr noundef nonnull %91, float noundef %92) #26
  %93 = getelementptr inbounds [4 x %struct.ParticleKey], ptr %8, i64 0, i64 2, i32 1
  call fastcc void @mul_v3_fl(ptr noundef nonnull %93, float noundef %92) #26
  %94 = fsub float %40, %89
  %95 = fdiv float %94, %90
  call void @psys_interpolate_particle(i16 noundef signext -1, ptr noundef nonnull %8, float noundef %95, ptr noundef nonnull %21, i32 noundef 1) #24
  %96 = getelementptr inbounds %struct.ParticleKey, ptr %21, i64 0, i32 2
  %97 = getelementptr inbounds %struct.ParticleKey, ptr %8, i64 1, i32 2
  %98 = getelementptr inbounds [4 x %struct.ParticleKey], ptr %8, i64 0, i64 2, i32 2
  call void @interp_qt_qtqt(ptr noundef nonnull %96, ptr noundef nonnull %97, ptr noundef nonnull %98, float noundef %95) #24
  %99 = getelementptr inbounds %struct.ParticleKey, ptr %21, i64 0, i32 1
  %100 = fdiv float 1.000000e+00, %92
  call fastcc void @mul_v3_fl(ptr noundef nonnull %99, float noundef %100) #26
  %101 = getelementptr inbounds %struct.ParticleKey, ptr %21, i64 0, i32 4
  store float %40, ptr %101, align 4, !tbaa !112
  br label %102

102:                                              ; preds = %38, %17, %33, %7, %84
  call void @llvm.lifetime.end.p0(i64 224, ptr nonnull %8) #25
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal void @ptcache_particle_extra_write(ptr nocapture noundef readonly %0, ptr noundef %1, i32 %2) #0 !PGOFuncName !118 {
  %4 = getelementptr inbounds %struct.ParticleSystem, ptr %0, i64 0, i32 2
  %5 = load ptr, ptr %4, align 8, !tbaa !82
  %6 = getelementptr inbounds %struct.ParticleSettings, ptr %5, i64 0, i32 11
  %7 = load i16, ptr %6, align 8, !tbaa !87
  %8 = icmp eq i16 %7, 4
  br i1 %8, label %9, label %46

9:                                                ; preds = %3
  %10 = getelementptr inbounds %struct.ParticleSettings, ptr %5, i64 0, i32 3
  %11 = load ptr, ptr %10, align 8, !tbaa !88
  %12 = icmp eq ptr %11, null
  br i1 %12, label %46, label %13

13:                                               ; preds = %9
  %14 = getelementptr inbounds %struct.SPHFluidSettings, ptr %11, i64 0, i32 13
  %15 = load i32, ptr %14, align 4, !tbaa !89
  %16 = and i32 %15, 1
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %46, label %18

18:                                               ; preds = %13
  %19 = getelementptr inbounds %struct.ParticleSystem, ptr %0, i64 0, i32 44
  %20 = load i32, ptr %19, align 8, !tbaa !119
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %46, label %22

22:                                               ; preds = %18
  %23 = getelementptr inbounds %struct.ParticleSystem, ptr %0, i64 0, i32 43
  %24 = load ptr, ptr %23, align 8, !tbaa !120
  %25 = icmp eq ptr %24, null
  br i1 %25, label %46, label %26

26:                                               ; preds = %22
  %27 = load ptr, ptr @MEM_callocN, align 8, !tbaa !34
  %28 = tail call ptr %27(i64 noundef 32, ptr noundef nonnull @.str.22) #24
  %29 = getelementptr inbounds %struct.PTCacheExtra, ptr %28, i64 0, i32 2
  store i32 1, ptr %29, align 8, !tbaa !121
  %30 = load i32, ptr %19, align 8, !tbaa !119
  %31 = getelementptr inbounds %struct.PTCacheExtra, ptr %28, i64 0, i32 3
  store i32 %30, ptr %31, align 4, !tbaa !123
  %32 = load ptr, ptr @MEM_callocN, align 8, !tbaa !34
  %33 = shl i32 %30, 4
  %34 = zext i32 %33 to i64
  %35 = tail call ptr %32(i64 noundef %34, ptr noundef nonnull @.str.23) #24
  %36 = getelementptr inbounds %struct.PTCacheExtra, ptr %28, i64 0, i32 4
  store ptr %35, ptr %36, align 8, !tbaa !124
  %37 = load ptr, ptr %23, align 8, !tbaa !120
  %38 = load i32, ptr %31, align 4, !tbaa !123
  %39 = load i32, ptr %29, align 8, !tbaa !121
  %40 = zext i32 %39 to i64
  %41 = getelementptr inbounds [2 x i32], ptr @ptcache_extra_datasize, i64 0, i64 %40
  %42 = load i32, ptr %41, align 4, !tbaa !125
  %43 = mul i32 %42, %38
  %44 = zext i32 %43 to i64
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %35, ptr align 4 %37, i64 %44, i1 false)
  %45 = getelementptr inbounds %struct.PTCacheMem, ptr %1, i64 0, i32 8
  tail call void @BLI_addtail(ptr noundef nonnull %45, ptr noundef %28) #24
  br label %46

46:                                               ; preds = %26, %22, %18, %13, %9, %3
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal void @ptcache_particle_extra_read(ptr nocapture noundef %0, ptr nocapture noundef readonly %1, float %2) #0 !PGOFuncName !126 {
  %4 = getelementptr inbounds %struct.PTCacheMem, ptr %1, i64 0, i32 8
  %5 = load ptr, ptr %4, align 8, !tbaa !34
  %6 = icmp eq ptr %5, null
  br i1 %6, label %31, label %7

7:                                                ; preds = %3
  %8 = getelementptr inbounds %struct.ParticleSystem, ptr %0, i64 0, i32 43
  %9 = getelementptr inbounds %struct.ParticleSystem, ptr %0, i64 0, i32 45
  %10 = getelementptr inbounds %struct.ParticleSystem, ptr %0, i64 0, i32 44
  br label %11

11:                                               ; preds = %7, %28
  %12 = phi ptr [ %5, %7 ], [ %29, %28 ]
  %13 = getelementptr inbounds %struct.PTCacheExtra, ptr %12, i64 0, i32 2
  %14 = load i32, ptr %13, align 8, !tbaa !121
  %15 = icmp eq i32 %14, 1
  br i1 %15, label %16, label %28

16:                                               ; preds = %11
  %17 = load ptr, ptr %8, align 8, !tbaa !120
  %18 = icmp eq ptr %17, null
  br i1 %18, label %21, label %19

19:                                               ; preds = %16
  %20 = load ptr, ptr @MEM_freeN, align 8, !tbaa !34
  tail call void %20(ptr noundef nonnull %17) #24
  br label %21

21:                                               ; preds = %19, %16
  %22 = load ptr, ptr @MEM_dupallocN, align 8, !tbaa !34
  %23 = getelementptr inbounds %struct.PTCacheExtra, ptr %12, i64 0, i32 4
  %24 = load ptr, ptr %23, align 8, !tbaa !124
  %25 = tail call ptr %22(ptr noundef %24) #24
  store ptr %25, ptr %8, align 8, !tbaa !120
  %26 = getelementptr inbounds %struct.PTCacheExtra, ptr %12, i64 0, i32 3
  %27 = load i32, ptr %26, align 4, !tbaa !123
  store i32 %27, ptr %9, align 4, !tbaa !127
  store i32 %27, ptr %10, align 8, !tbaa !119
  br label %28

28:                                               ; preds = %21, %11
  %29 = load ptr, ptr %12, align 8, !tbaa !34
  %30 = icmp eq ptr %29, null
  br i1 %30, label %31, label %11, !llvm.loop !128

31:                                               ; preds = %28, %3
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local void @BKE_ptcache_id_from_cloth(ptr nocapture noundef writeonly %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #3 {
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(200) %0, i8 0, i64 200, i1 false)
  %4 = getelementptr inbounds %struct.PTCacheID, ptr %0, i64 0, i32 3
  store ptr %1, ptr %4, align 8, !tbaa !41
  %5 = getelementptr inbounds %struct.PTCacheID, ptr %0, i64 0, i32 4
  store ptr %2, ptr %5, align 8, !tbaa !44
  %6 = getelementptr inbounds %struct.PTCacheID, ptr %0, i64 0, i32 5
  store i32 2, ptr %6, align 8, !tbaa !79
  %7 = getelementptr inbounds %struct.ClothModifierData, ptr %2, i64 0, i32 5
  %8 = load ptr, ptr %7, align 8, !tbaa !129
  %9 = getelementptr inbounds %struct.PointCache, ptr %8, i64 0, i32 12
  %10 = load i32, ptr %9, align 8, !tbaa !61
  %11 = getelementptr inbounds %struct.PTCacheID, ptr %0, i64 0, i32 6
  store i32 %10, ptr %11, align 4, !tbaa !63
  %12 = getelementptr inbounds %struct.PTCacheID, ptr %0, i64 0, i32 25
  store ptr %8, ptr %12, align 8, !tbaa !49
  %13 = getelementptr inbounds %struct.PTCacheID, ptr %0, i64 0, i32 26
  store ptr %7, ptr %13, align 8, !tbaa !50
  %14 = getelementptr inbounds %struct.ClothModifierData, ptr %2, i64 0, i32 6
  %15 = getelementptr inbounds %struct.PTCacheID, ptr %0, i64 0, i32 27
  store ptr %14, ptr %15, align 8, !tbaa !51
  %16 = getelementptr inbounds %struct.PTCacheID, ptr %0, i64 0, i32 22
  store ptr @ptcache_cloth_totpoint, ptr %16, align 8, !tbaa !52
  %17 = getelementptr inbounds %struct.PTCacheID, ptr %0, i64 0, i32 20
  store ptr @ptcache_cloth_totpoint, ptr %17, align 8, !tbaa !53
  %18 = getelementptr inbounds %struct.PTCacheID, ptr %0, i64 0, i32 21
  store ptr @ptcache_cloth_error, ptr %18, align 8, !tbaa !54
  %19 = getelementptr inbounds %struct.PTCacheID, ptr %0, i64 0, i32 12
  store ptr @ptcache_cloth_write, ptr %19, align 8, !tbaa !55
  %20 = getelementptr inbounds %struct.PTCacheID, ptr %0, i64 0, i32 13
  store ptr @ptcache_cloth_read, ptr %20, align 8, !tbaa !56
  %21 = getelementptr inbounds %struct.PTCacheID, ptr %0, i64 0, i32 14
  store ptr @ptcache_cloth_interpolate, ptr %21, align 8, !tbaa !57
  %22 = getelementptr inbounds %struct.PTCacheID, ptr %0, i64 0, i32 15
  %23 = getelementptr inbounds %struct.PTCacheID, ptr %0, i64 0, i32 23
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %22, i8 0, i64 40, i1 false)
  store ptr @ptcache_basic_header_write, ptr %23, align 8, !tbaa !58
  %24 = getelementptr inbounds %struct.PTCacheID, ptr %0, i64 0, i32 24
  store ptr @ptcache_basic_header_read, ptr %24, align 8, !tbaa !59
  %25 = getelementptr inbounds %struct.PTCacheID, ptr %0, i64 0, i32 10
  store i32 22, ptr %25, align 4, !tbaa !60
  %26 = getelementptr inbounds %struct.PTCacheID, ptr %0, i64 0, i32 8
  store i32 1, ptr %26, align 4, !tbaa !64
  %27 = getelementptr inbounds %struct.PTCacheID, ptr %0, i64 0, i32 9
  store i32 1, ptr %27, align 8, !tbaa !65
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define internal i32 @ptcache_cloth_totpoint(ptr nocapture noundef readonly %0, i32 %1) #10 !PGOFuncName !132 {
  %3 = getelementptr inbounds %struct.ClothModifierData, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !133
  %5 = icmp eq ptr %4, null
  br i1 %5, label %9, label %6

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.Cloth, ptr %4, i64 0, i32 2
  %8 = load i32, ptr %7, align 8, !tbaa !134
  br label %9

9:                                                ; preds = %2, %6
  %10 = phi i32 [ %8, %6 ], [ 0, %2 ]
  ret i32 %10
}

; Function Attrs: noinline nounwind optsize uwtable
define internal void @ptcache_cloth_error(ptr noundef %0, ptr noundef %1) #0 !PGOFuncName !136 {
  tail call void (ptr, ptr, ...) @modifier_setError(ptr noundef %0, ptr noundef nonnull @.str.24, ptr noundef %1) #24
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(readwrite, inaccessiblemem: none) uwtable
define internal noundef i32 @ptcache_cloth_write(i32 noundef %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2, i32 %3) #7 !PGOFuncName !137 {
  %5 = getelementptr inbounds %struct.ClothModifierData, ptr %1, i64 0, i32 2
  %6 = load ptr, ptr %5, align 8, !tbaa !133
  %7 = load ptr, ptr %6, align 8, !tbaa !138
  %8 = sext i32 %0 to i64
  %9 = getelementptr inbounds ptr, ptr %2, i64 1
  %10 = load ptr, ptr %9, align 8, !tbaa !34
  %11 = icmp eq ptr %10, null
  br i1 %11, label %14, label %12

12:                                               ; preds = %4
  %13 = getelementptr inbounds %struct.ClothVertex, ptr %7, i64 %8, i32 3
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(12) %10, ptr noundef nonnull align 4 dereferenceable(12) %13, i64 12, i1 false)
  br label %14

14:                                               ; preds = %12, %4
  %15 = getelementptr inbounds ptr, ptr %2, i64 2
  %16 = load ptr, ptr %15, align 8, !tbaa !34
  %17 = icmp eq ptr %16, null
  br i1 %17, label %20, label %18

18:                                               ; preds = %14
  %19 = getelementptr inbounds %struct.ClothVertex, ptr %7, i64 %8, i32 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(12) %16, ptr noundef nonnull align 4 dereferenceable(12) %19, i64 12, i1 false)
  br label %20

20:                                               ; preds = %18, %14
  %21 = getelementptr inbounds ptr, ptr %2, i64 4
  %22 = load ptr, ptr %21, align 8, !tbaa !34
  %23 = icmp eq ptr %22, null
  br i1 %23, label %26, label %24

24:                                               ; preds = %20
  %25 = getelementptr inbounds %struct.ClothVertex, ptr %7, i64 %8, i32 2
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(12) %22, ptr noundef nonnull align 8 dereferenceable(12) %25, i64 12, i1 false)
  br label %26

26:                                               ; preds = %24, %20
  ret i32 1
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(readwrite, inaccessiblemem: none) uwtable
define internal void @ptcache_cloth_read(i32 noundef %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2, float %3, ptr noundef readnone %4) #7 !PGOFuncName !139 {
  %6 = getelementptr inbounds %struct.ClothModifierData, ptr %1, i64 0, i32 2
  %7 = load ptr, ptr %6, align 8, !tbaa !133
  %8 = load ptr, ptr %7, align 8, !tbaa !138
  %9 = sext i32 %0 to i64
  %10 = icmp eq ptr %4, null
  br i1 %10, label %17, label %11

11:                                               ; preds = %5
  %12 = getelementptr inbounds %struct.ClothVertex, ptr %8, i64 %9, i32 3
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %12, ptr noundef nonnull align 8 dereferenceable(12) %2, i64 12, i1 false)
  %13 = getelementptr inbounds %struct.ClothVertex, ptr %8, i64 %9, i32 2
  %14 = getelementptr inbounds ptr, ptr %2, i64 3
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(12) %13, ptr noundef nonnull align 8 dereferenceable(12) %14, i64 12, i1 false)
  %15 = getelementptr inbounds %struct.ClothVertex, ptr %8, i64 %9, i32 1
  %16 = getelementptr inbounds ptr, ptr %2, i64 6
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %15, ptr noundef nonnull align 8 dereferenceable(12) %16, i64 12, i1 false)
  br label %35

17:                                               ; preds = %5
  %18 = getelementptr inbounds ptr, ptr %2, i64 1
  %19 = load ptr, ptr %18, align 8, !tbaa !34
  %20 = icmp eq ptr %19, null
  br i1 %20, label %23, label %21

21:                                               ; preds = %17
  %22 = getelementptr inbounds %struct.ClothVertex, ptr %8, i64 %9, i32 3
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %22, ptr noundef nonnull align 1 dereferenceable(12) %19, i64 12, i1 false)
  br label %23

23:                                               ; preds = %21, %17
  %24 = getelementptr inbounds ptr, ptr %2, i64 2
  %25 = load ptr, ptr %24, align 8, !tbaa !34
  %26 = icmp eq ptr %25, null
  br i1 %26, label %29, label %27

27:                                               ; preds = %23
  %28 = getelementptr inbounds %struct.ClothVertex, ptr %8, i64 %9, i32 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %28, ptr noundef nonnull align 1 dereferenceable(12) %25, i64 12, i1 false)
  br label %29

29:                                               ; preds = %27, %23
  %30 = getelementptr inbounds ptr, ptr %2, i64 4
  %31 = load ptr, ptr %30, align 8, !tbaa !34
  %32 = icmp eq ptr %31, null
  br i1 %32, label %35, label %33

33:                                               ; preds = %29
  %34 = getelementptr inbounds %struct.ClothVertex, ptr %8, i64 %9, i32 2
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(12) %34, ptr noundef nonnull align 1 dereferenceable(12) %31, i64 12, i1 false)
  br label %35

35:                                               ; preds = %29, %33, %11
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal void @ptcache_cloth_interpolate(i32 noundef %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2, float noundef %3, float noundef %4, float noundef %5, ptr noundef readonly %6) #0 !PGOFuncName !140 {
  %8 = alloca [4 x %struct.ParticleKey], align 16
  %9 = getelementptr inbounds %struct.ClothModifierData, ptr %1, i64 0, i32 2
  %10 = load ptr, ptr %9, align 8, !tbaa !133
  %11 = load ptr, ptr %10, align 8, !tbaa !138
  call void @llvm.lifetime.start.p0(i64 224, ptr nonnull %8) #25
  %12 = fcmp oeq float %4, %5
  br i1 %12, label %33, label %13

13:                                               ; preds = %7
  %14 = sext i32 %0 to i64
  %15 = getelementptr inbounds [4 x %struct.ParticleKey], ptr %8, i64 0, i64 1
  %16 = getelementptr inbounds %struct.ClothVertex, ptr %11, i64 %14, i32 3
  call fastcc void @copy_v3_v3(ptr noundef nonnull %15, ptr noundef nonnull %16) #26
  %17 = getelementptr inbounds [4 x %struct.ParticleKey], ptr %8, i64 0, i64 1, i32 1
  %18 = getelementptr inbounds %struct.ClothVertex, ptr %11, i64 %14, i32 1
  call fastcc void @copy_v3_v3(ptr noundef nonnull %17, ptr noundef nonnull %18) #26
  %19 = icmp eq ptr %6, null
  br i1 %19, label %24, label %20

20:                                               ; preds = %13
  %21 = getelementptr inbounds [4 x %struct.ParticleKey], ptr %8, i64 0, i64 2
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(12) %21, ptr noundef nonnull align 4 dereferenceable(12) %6, i64 12, i1 false)
  %22 = getelementptr inbounds [4 x %struct.ParticleKey], ptr %8, i64 0, i64 2, i32 1
  %23 = getelementptr inbounds float, ptr %6, i64 6
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %22, ptr noundef nonnull align 4 dereferenceable(12) %23, i64 12, i1 false)
  br label %26

24:                                               ; preds = %13
  %25 = getelementptr inbounds %struct.ParticleKey, ptr %8, i64 2
  call void @BKE_ptcache_make_particle_key(ptr noundef nonnull %25, i32 noundef 0, ptr noundef %2, float noundef %5) #26
  br label %26

26:                                               ; preds = %24, %20
  %27 = fsub float %5, %4
  call fastcc void @mul_v3_fl(ptr noundef nonnull %17, float noundef %27) #26
  %28 = getelementptr inbounds [4 x %struct.ParticleKey], ptr %8, i64 0, i64 2, i32 1
  call fastcc void @mul_v3_fl(ptr noundef nonnull %28, float noundef %27) #26
  %29 = fsub float %3, %4
  %30 = fdiv float %29, %27
  call void @psys_interpolate_particle(i16 noundef signext -1, ptr noundef nonnull %8, float noundef %30, ptr noundef nonnull %8, i32 noundef 1) #24
  %31 = getelementptr inbounds %struct.ParticleKey, ptr %8, i64 0, i32 1
  %32 = fdiv float 1.000000e+00, %27
  call fastcc void @mul_v3_fl(ptr noundef nonnull %31, float noundef %32) #26
  call fastcc void @copy_v3_v3(ptr noundef nonnull %16, ptr noundef nonnull %8) #26
  call fastcc void @copy_v3_v3(ptr noundef nonnull %18, ptr noundef nonnull %31) #26
  br label %33

33:                                               ; preds = %7, %26
  call void @llvm.lifetime.end.p0(i64 224, ptr nonnull %8) #25
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local void @BKE_ptcache_id_from_smoke(ptr nocapture noundef writeonly %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #3 {
  %4 = getelementptr inbounds %struct.SmokeModifierData, ptr %2, i64 0, i32 1
  %5 = load ptr, ptr %4, align 8, !tbaa !141
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(200) %0, i8 0, i64 200, i1 false)
  %6 = getelementptr inbounds %struct.PTCacheID, ptr %0, i64 0, i32 3
  store ptr %1, ptr %6, align 8, !tbaa !41
  %7 = getelementptr inbounds %struct.PTCacheID, ptr %0, i64 0, i32 4
  store ptr %2, ptr %7, align 8, !tbaa !44
  %8 = getelementptr inbounds %struct.PTCacheID, ptr %0, i64 0, i32 5
  store i32 3, ptr %8, align 8, !tbaa !79
  %9 = getelementptr inbounds %struct.SmokeDomainSettings, ptr %5, i64 0, i32 47
  %10 = load ptr, ptr %9, align 8, !tbaa !34
  %11 = getelementptr inbounds %struct.PointCache, ptr %10, i64 0, i32 12
  %12 = load i32, ptr %11, align 8, !tbaa !61
  %13 = getelementptr inbounds %struct.PTCacheID, ptr %0, i64 0, i32 6
  store i32 %12, ptr %13, align 4, !tbaa !63
  %14 = getelementptr inbounds %struct.PTCacheID, ptr %0, i64 0, i32 25
  store ptr %10, ptr %14, align 8, !tbaa !49
  %15 = getelementptr inbounds %struct.PTCacheID, ptr %0, i64 0, i32 26
  store ptr %9, ptr %15, align 8, !tbaa !50
  %16 = getelementptr inbounds %struct.SmokeDomainSettings, ptr %5, i64 0, i32 48
  %17 = getelementptr inbounds %struct.PTCacheID, ptr %0, i64 0, i32 27
  store ptr %16, ptr %17, align 8, !tbaa !51
  %18 = getelementptr inbounds %struct.PTCacheID, ptr %0, i64 0, i32 22
  store ptr @ptcache_smoke_totpoint, ptr %18, align 8, !tbaa !52
  %19 = getelementptr inbounds %struct.PTCacheID, ptr %0, i64 0, i32 20
  store ptr @ptcache_smoke_totpoint, ptr %19, align 8, !tbaa !53
  %20 = getelementptr inbounds %struct.PTCacheID, ptr %0, i64 0, i32 21
  store ptr @ptcache_smoke_error, ptr %20, align 8, !tbaa !54
  %21 = getelementptr inbounds %struct.PTCacheID, ptr %0, i64 0, i32 12
  %22 = getelementptr inbounds %struct.PTCacheID, ptr %0, i64 0, i32 16
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %21, i8 0, i64 24, i1 false)
  store ptr @ptcache_smoke_read, ptr %22, align 8, !tbaa !143
  %23 = getelementptr inbounds %struct.PTCacheID, ptr %0, i64 0, i32 15
  store ptr @ptcache_smoke_write, ptr %23, align 8, !tbaa !144
  %24 = getelementptr inbounds %struct.PTCacheID, ptr %0, i64 0, i32 17
  %25 = getelementptr inbounds %struct.PTCacheID, ptr %0, i64 0, i32 23
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %24, i8 0, i64 24, i1 false)
  store ptr @ptcache_basic_header_write, ptr %25, align 8, !tbaa !58
  %26 = getelementptr inbounds %struct.PTCacheID, ptr %0, i64 0, i32 24
  store ptr @ptcache_basic_header_read, ptr %26, align 8, !tbaa !59
  %27 = getelementptr inbounds %struct.PTCacheID, ptr %0, i64 0, i32 10
  %28 = getelementptr inbounds %struct.PTCacheID, ptr %0, i64 0, i32 11
  store i32 0, ptr %28, align 8, !tbaa !97
  %29 = getelementptr inbounds %struct.SmokeDomainSettings, ptr %5, i64 0, i32 1
  %30 = load ptr, ptr %29, align 8, !tbaa !145
  %31 = icmp eq ptr %30, null
  br i1 %31, label %33, label %32

32:                                               ; preds = %3
  store i32 2, ptr %27, align 4, !tbaa !60
  br label %33

33:                                               ; preds = %32, %3
  %34 = phi i32 [ 6, %32 ], [ 4, %3 ]
  %35 = getelementptr inbounds %struct.SmokeDomainSettings, ptr %5, i64 0, i32 6
  %36 = load ptr, ptr %35, align 8, !tbaa !147
  %37 = icmp eq ptr %36, null
  br i1 %37, label %39, label %38

38:                                               ; preds = %33
  store i32 %34, ptr %27, align 4, !tbaa !60
  br label %39

39:                                               ; preds = %38, %33
  %40 = getelementptr inbounds %struct.PTCacheID, ptr %0, i64 0, i32 8
  store i32 1, ptr %40, align 4, !tbaa !64
  %41 = getelementptr inbounds %struct.PTCacheID, ptr %0, i64 0, i32 9
  store i32 1, ptr %41, align 8, !tbaa !65
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #11

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define internal noundef i32 @ptcache_smoke_totpoint(ptr nocapture readnone %0, i32 %1) #6 !PGOFuncName !148 {
  ret i32 0
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define internal void @ptcache_smoke_error(ptr nocapture readnone %0, ptr nocapture readnone %1) #6 !PGOFuncName !149 {
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define internal noundef i32 @ptcache_smoke_read(ptr nocapture readnone %0, ptr nocapture readnone %1) #6 !PGOFuncName !150 {
  ret i32 0
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define internal noundef i32 @ptcache_smoke_write(ptr nocapture readnone %0, ptr nocapture readnone %1) #6 !PGOFuncName !151 {
  ret i32 0
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #11

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local void @BKE_ptcache_id_from_dynamicpaint(ptr nocapture noundef writeonly %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #3 {
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(200) %0, i8 0, i64 200, i1 false)
  %4 = getelementptr inbounds %struct.PTCacheID, ptr %0, i64 0, i32 3
  store ptr %1, ptr %4, align 8, !tbaa !41
  %5 = getelementptr inbounds %struct.PTCacheID, ptr %0, i64 0, i32 4
  store ptr %2, ptr %5, align 8, !tbaa !44
  %6 = getelementptr inbounds %struct.PTCacheID, ptr %0, i64 0, i32 5
  store i32 5, ptr %6, align 8, !tbaa !79
  %7 = getelementptr inbounds %struct.DynamicPaintSurface, ptr %2, i64 0, i32 6
  %8 = load ptr, ptr %7, align 8, !tbaa !152
  %9 = getelementptr inbounds %struct.PTCacheID, ptr %0, i64 0, i32 25
  store ptr %8, ptr %9, align 8, !tbaa !49
  %10 = getelementptr inbounds %struct.PTCacheID, ptr %0, i64 0, i32 26
  store ptr %7, ptr %10, align 8, !tbaa !50
  %11 = getelementptr inbounds %struct.DynamicPaintSurface, ptr %2, i64 0, i32 7
  %12 = getelementptr inbounds %struct.PTCacheID, ptr %0, i64 0, i32 27
  store ptr %11, ptr %12, align 8, !tbaa !51
  %13 = getelementptr inbounds %struct.PTCacheID, ptr %0, i64 0, i32 22
  store ptr @ptcache_dynamicpaint_totpoint, ptr %13, align 8, !tbaa !52
  %14 = getelementptr inbounds %struct.PTCacheID, ptr %0, i64 0, i32 20
  store ptr @ptcache_dynamicpaint_totpoint, ptr %14, align 8, !tbaa !53
  %15 = getelementptr inbounds %struct.PTCacheID, ptr %0, i64 0, i32 21
  store ptr @ptcache_dynamicpaint_error, ptr %15, align 8, !tbaa !54
  %16 = getelementptr inbounds %struct.PTCacheID, ptr %0, i64 0, i32 12
  %17 = getelementptr inbounds %struct.PTCacheID, ptr %0, i64 0, i32 15
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %16, i8 0, i64 24, i1 false)
  store ptr @ptcache_dynamicpaint_write, ptr %17, align 8, !tbaa !144
  %18 = getelementptr inbounds %struct.PTCacheID, ptr %0, i64 0, i32 16
  store ptr @ptcache_dynamicpaint_read, ptr %18, align 8, !tbaa !143
  %19 = getelementptr inbounds %struct.PTCacheID, ptr %0, i64 0, i32 17
  %20 = getelementptr inbounds %struct.PTCacheID, ptr %0, i64 0, i32 23
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %19, i8 0, i64 24, i1 false)
  store ptr @ptcache_basic_header_write, ptr %20, align 8, !tbaa !58
  %21 = getelementptr inbounds %struct.PTCacheID, ptr %0, i64 0, i32 24
  store ptr @ptcache_basic_header_read, ptr %21, align 8, !tbaa !59
  %22 = getelementptr inbounds %struct.PTCacheID, ptr %0, i64 0, i32 10
  store i32 3, ptr %22, align 4, !tbaa !60
  %23 = getelementptr inbounds %struct.PointCache, ptr %8, i64 0, i32 12
  %24 = load i32, ptr %23, align 8, !tbaa !61
  %25 = getelementptr inbounds %struct.PTCacheID, ptr %0, i64 0, i32 6
  store i32 %24, ptr %25, align 4, !tbaa !63
  %26 = getelementptr inbounds %struct.PTCacheID, ptr %0, i64 0, i32 8
  store i32 1, ptr %26, align 4, !tbaa !64
  %27 = getelementptr inbounds %struct.PTCacheID, ptr %0, i64 0, i32 9
  store i32 1, ptr %27, align 8, !tbaa !65
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define internal i32 @ptcache_dynamicpaint_totpoint(ptr nocapture noundef readonly %0, i32 %1) #10 !PGOFuncName !154 {
  %3 = getelementptr inbounds %struct.DynamicPaintSurface, ptr %0, i64 0, i32 3
  %4 = load ptr, ptr %3, align 8, !tbaa !155
  %5 = icmp eq ptr %4, null
  br i1 %5, label %9, label %6

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.PaintSurfaceData, ptr %4, i64 0, i32 4
  %8 = load i32, ptr %7, align 8, !tbaa !156
  br label %9

9:                                                ; preds = %2, %6
  %10 = phi i32 [ %8, %6 ], [ 0, %2 ]
  ret i32 %10
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define internal void @ptcache_dynamicpaint_error(ptr nocapture readnone %0, ptr nocapture readnone %1) #6 !PGOFuncName !158 {
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal noundef i32 @ptcache_dynamicpaint_write(ptr nocapture noundef readonly %0, ptr nocapture noundef %1) #0 !PGOFuncName !159 {
  %3 = tail call fastcc i32 @ptcache_file_write(ptr noundef %0, ptr noundef nonnull @.str.25, i32 noundef 1, i32 noundef 4) #26, !range !160
  %4 = getelementptr inbounds %struct.DynamicPaintSurface, ptr %1, i64 0, i32 10
  %5 = load i16, ptr %4, align 4, !tbaa !161
  %6 = icmp eq i16 %5, 2
  br i1 %6, label %35, label %7

7:                                                ; preds = %2
  %8 = getelementptr inbounds %struct.DynamicPaintSurface, ptr %1, i64 0, i32 3
  %9 = load ptr, ptr %8, align 8, !tbaa !155
  %10 = icmp eq ptr %9, null
  br i1 %10, label %35, label %11

11:                                               ; preds = %7
  %12 = getelementptr inbounds %struct.PaintSurfaceData, ptr %9, i64 0, i32 4
  %13 = load i32, ptr %12, align 8, !tbaa !156
  %14 = getelementptr inbounds %struct.DynamicPaintSurface, ptr %1, i64 0, i32 11
  %15 = tail call fastcc i32 @ptcache_file_write(ptr noundef %0, ptr noundef nonnull %14, i32 noundef 1, i32 noundef 4) #26, !range !160
  %16 = load i16, ptr %14, align 2, !tbaa !162
  switch i16 %16, label %35 [
    i16 0, label %17
    i16 1, label %19
    i16 2, label %19
    i16 3, label %21
  ]

17:                                               ; preds = %11
  %18 = mul i32 %13, 40
  br label %23

19:                                               ; preds = %11, %11
  %20 = shl i32 %13, 2
  br label %23

21:                                               ; preds = %11
  %22 = shl i32 %13, 4
  br label %23

23:                                               ; preds = %19, %21, %17
  %24 = phi i32 [ %18, %17 ], [ %20, %19 ], [ %22, %21 ]
  %25 = load ptr, ptr @MEM_callocN, align 8, !tbaa !34
  %26 = lshr i32 %24, 4
  %27 = add i32 %24, 67
  %28 = add i32 %27, %26
  %29 = zext i32 %28 to i64
  %30 = tail call ptr %25(i64 noundef %29, ptr noundef nonnull @.str.26) #24
  %31 = load ptr, ptr %8, align 8, !tbaa !155
  %32 = getelementptr inbounds %struct.PaintSurfaceData, ptr %31, i64 0, i32 1
  %33 = load ptr, ptr %32, align 8, !tbaa !163
  tail call fastcc void @ptcache_file_compressed_write(ptr noundef %0, ptr noundef %33, i32 noundef %24, ptr noundef %30) #26
  %34 = load ptr, ptr @MEM_freeN, align 8, !tbaa !34
  tail call void %34(ptr noundef %30) #24
  br label %35

35:                                               ; preds = %2, %7, %23, %11
  %36 = phi i32 [ 0, %11 ], [ 1, %23 ], [ 1, %7 ], [ 1, %2 ]
  ret i32 %36
}

; Function Attrs: noinline nounwind optsize uwtable
define internal noundef i32 @ptcache_dynamicpaint_read(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) #0 !PGOFuncName !164 {
  %3 = alloca [4 x i8], align 1
  %4 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #25
  %5 = call fastcc i32 @ptcache_file_read(ptr noundef %0, ptr noundef nonnull %3, i32 noundef 1, i32 noundef 4) #26, !range !160
  %6 = call i32 @bcmp(ptr noundef nonnull dereferenceable(4) %3, ptr noundef nonnull dereferenceable(4) @.str.25, i64 4)
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %21, label %8

8:                                                ; preds = %2
  %9 = load i8, ptr %3, align 1, !tbaa !165
  %10 = zext i8 %9 to i32
  %11 = getelementptr inbounds [4 x i8], ptr %3, i64 0, i64 1
  %12 = load i8, ptr %11, align 1, !tbaa !165
  %13 = zext i8 %12 to i32
  %14 = getelementptr inbounds [4 x i8], ptr %3, i64 0, i64 2
  %15 = load i8, ptr %14, align 1, !tbaa !165
  %16 = zext i8 %15 to i32
  %17 = getelementptr inbounds [4 x i8], ptr %3, i64 0, i64 3
  %18 = load i8, ptr %17, align 1, !tbaa !165
  %19 = zext i8 %18 to i32
  %20 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.28, i32 noundef %10, i32 noundef %13, i32 noundef %16, i32 noundef %19) #26
  br label %49

21:                                               ; preds = %2
  %22 = getelementptr inbounds %struct.DynamicPaintSurface, ptr %1, i64 0, i32 10
  %23 = load i16, ptr %22, align 4, !tbaa !161
  %24 = icmp eq i16 %23, 2
  br i1 %24, label %49, label %25

25:                                               ; preds = %21
  %26 = getelementptr inbounds %struct.DynamicPaintSurface, ptr %1, i64 0, i32 3
  %27 = load ptr, ptr %26, align 8, !tbaa !155
  %28 = icmp eq ptr %27, null
  br i1 %28, label %49, label %29

29:                                               ; preds = %25
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #25
  %30 = call fastcc i32 @ptcache_file_read(ptr noundef %0, ptr noundef nonnull %4, i32 noundef 1, i32 noundef 4) #26, !range !160
  %31 = load i32, ptr %4, align 4, !tbaa !125
  %32 = getelementptr inbounds %struct.DynamicPaintSurface, ptr %1, i64 0, i32 11
  %33 = load i16, ptr %32, align 2, !tbaa !162
  %34 = sext i16 %33 to i32
  %35 = icmp eq i32 %31, %34
  %36 = icmp ult i16 %33, 4
  %37 = and i1 %35, %36
  br i1 %37, label %38, label %48

38:                                               ; preds = %29
  %39 = sext i16 %33 to i64
  %40 = getelementptr inbounds [4 x i32], ptr @switch.table.ptcache_dynamicpaint_read, i64 0, i64 %39
  %41 = load i32, ptr %40, align 4
  %42 = load ptr, ptr %26, align 8, !tbaa !155
  %43 = getelementptr inbounds %struct.PaintSurfaceData, ptr %42, i64 0, i32 1
  %44 = load ptr, ptr %43, align 8, !tbaa !163
  %45 = getelementptr inbounds %struct.PaintSurfaceData, ptr %42, i64 0, i32 4
  %46 = load i32, ptr %45, align 8, !tbaa !156
  %47 = mul i32 %46, %41
  tail call fastcc void @ptcache_file_compressed_read(ptr noundef %0, ptr noundef %44, i32 noundef %47) #26
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #25
  br label %49

48:                                               ; preds = %29
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #25
  br label %49

49:                                               ; preds = %21, %25, %38, %48, %8
  %50 = phi i32 [ 0, %8 ], [ 0, %48 ], [ 1, %38 ], [ 1, %25 ], [ 1, %21 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #25
  ret i32 %50
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local void @BKE_ptcache_id_from_rigidbody(ptr nocapture noundef writeonly %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #3 {
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(200) %0, i8 0, i64 200, i1 false)
  %4 = getelementptr inbounds %struct.PTCacheID, ptr %0, i64 0, i32 3
  store ptr %1, ptr %4, align 8, !tbaa !41
  %5 = getelementptr inbounds %struct.PTCacheID, ptr %0, i64 0, i32 4
  store ptr %2, ptr %5, align 8, !tbaa !44
  %6 = getelementptr inbounds %struct.PTCacheID, ptr %0, i64 0, i32 5
  store i32 6, ptr %6, align 8, !tbaa !79
  %7 = getelementptr inbounds %struct.RigidBodyWorld, ptr %2, i64 0, i32 6
  %8 = load ptr, ptr %7, align 8, !tbaa !166
  %9 = getelementptr inbounds %struct.PTCacheID, ptr %0, i64 0, i32 25
  store ptr %8, ptr %9, align 8, !tbaa !49
  %10 = getelementptr inbounds %struct.PTCacheID, ptr %0, i64 0, i32 26
  store ptr %7, ptr %10, align 8, !tbaa !50
  %11 = getelementptr inbounds %struct.RigidBodyWorld, ptr %2, i64 0, i32 7
  %12 = getelementptr inbounds %struct.PTCacheID, ptr %0, i64 0, i32 27
  store ptr %11, ptr %12, align 8, !tbaa !51
  %13 = getelementptr inbounds %struct.PTCacheID, ptr %0, i64 0, i32 22
  store ptr @ptcache_rigidbody_totpoint, ptr %13, align 8, !tbaa !52
  %14 = getelementptr inbounds %struct.PTCacheID, ptr %0, i64 0, i32 20
  store ptr @ptcache_rigidbody_totpoint, ptr %14, align 8, !tbaa !53
  %15 = getelementptr inbounds %struct.PTCacheID, ptr %0, i64 0, i32 21
  store ptr @ptcache_rigidbody_error, ptr %15, align 8, !tbaa !54
  %16 = getelementptr inbounds %struct.PTCacheID, ptr %0, i64 0, i32 12
  store ptr @ptcache_rigidbody_write, ptr %16, align 8, !tbaa !55
  %17 = getelementptr inbounds %struct.PTCacheID, ptr %0, i64 0, i32 13
  store ptr @ptcache_rigidbody_read, ptr %17, align 8, !tbaa !56
  %18 = getelementptr inbounds %struct.PTCacheID, ptr %0, i64 0, i32 14
  store ptr @ptcache_rigidbody_interpolate, ptr %18, align 8, !tbaa !57
  %19 = getelementptr inbounds %struct.PTCacheID, ptr %0, i64 0, i32 15
  %20 = getelementptr inbounds %struct.PTCacheID, ptr %0, i64 0, i32 23
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %19, i8 0, i64 40, i1 false)
  store ptr @ptcache_basic_header_write, ptr %20, align 8, !tbaa !58
  %21 = getelementptr inbounds %struct.PTCacheID, ptr %0, i64 0, i32 24
  store ptr @ptcache_basic_header_read, ptr %21, align 8, !tbaa !59
  %22 = getelementptr inbounds %struct.PTCacheID, ptr %0, i64 0, i32 10
  store i32 10, ptr %22, align 4, !tbaa !60
  %23 = getelementptr inbounds %struct.PointCache, ptr %8, i64 0, i32 12
  %24 = load i32, ptr %23, align 8, !tbaa !61
  %25 = getelementptr inbounds %struct.PTCacheID, ptr %0, i64 0, i32 6
  store i32 %24, ptr %25, align 4, !tbaa !63
  %26 = getelementptr inbounds %struct.PTCacheID, ptr %0, i64 0, i32 8
  store i32 1, ptr %26, align 4, !tbaa !64
  %27 = getelementptr inbounds %struct.PTCacheID, ptr %0, i64 0, i32 9
  store i32 1, ptr %27, align 8, !tbaa !65
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal i32 @ptcache_rigidbody_totpoint(ptr nocapture noundef readonly %0, i32 %1) #5 !PGOFuncName !168 {
  %3 = getelementptr inbounds %struct.RigidBodyWorld, ptr %0, i64 0, i32 8
  %4 = load i32, ptr %3, align 8, !tbaa !169
  ret i32 %4
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define internal void @ptcache_rigidbody_error(ptr nocapture readnone %0, ptr nocapture readnone %1) #6 !PGOFuncName !170 {
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(readwrite, inaccessiblemem: none) uwtable
define internal noundef i32 @ptcache_rigidbody_write(i32 noundef %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2, i32 %3) #7 !PGOFuncName !171 {
  %5 = getelementptr inbounds %struct.RigidBodyWorld, ptr %1, i64 0, i32 2
  %6 = load ptr, ptr %5, align 8, !tbaa !172
  %7 = icmp eq ptr %6, null
  br i1 %7, label %33, label %8

8:                                                ; preds = %4
  %9 = sext i32 %0 to i64
  %10 = getelementptr inbounds ptr, ptr %6, i64 %9
  %11 = load ptr, ptr %10, align 8, !tbaa !34
  %12 = icmp eq ptr %11, null
  br i1 %12, label %33, label %13

13:                                               ; preds = %8
  %14 = getelementptr inbounds %struct.Object, ptr %11, i64 0, i32 128
  %15 = load ptr, ptr %14, align 8, !tbaa !173
  %16 = icmp eq ptr %15, null
  br i1 %16, label %33, label %17

17:                                               ; preds = %13
  %18 = getelementptr inbounds %struct.RigidBodyOb, ptr %15, i64 0, i32 2
  %19 = load i16, ptr %18, align 8, !tbaa !177
  %20 = icmp eq i16 %19, 0
  br i1 %20, label %21, label %33

21:                                               ; preds = %17
  %22 = getelementptr inbounds ptr, ptr %2, i64 1
  %23 = load ptr, ptr %22, align 8, !tbaa !34
  %24 = icmp eq ptr %23, null
  br i1 %24, label %27, label %25

25:                                               ; preds = %21
  %26 = getelementptr inbounds %struct.RigidBodyOb, ptr %15, i64 0, i32 17
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(12) %23, ptr noundef nonnull align 8 dereferenceable(12) %26, i64 12, i1 false)
  br label %27

27:                                               ; preds = %25, %21
  %28 = getelementptr inbounds ptr, ptr %2, i64 3
  %29 = load ptr, ptr %28, align 8, !tbaa !34
  %30 = icmp eq ptr %29, null
  br i1 %30, label %33, label %31

31:                                               ; preds = %27
  %32 = getelementptr inbounds %struct.RigidBodyOb, ptr %15, i64 0, i32 16
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(16) %29, ptr noundef nonnull align 8 dereferenceable(16) %32, i64 16, i1 false)
  br label %33

33:                                               ; preds = %4, %17, %31, %27, %13, %8
  ret i32 1
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(readwrite, inaccessiblemem: none) uwtable
define internal void @ptcache_rigidbody_read(i32 noundef %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2, float %3, ptr noundef readnone %4) #7 !PGOFuncName !179 {
  %6 = getelementptr inbounds %struct.RigidBodyWorld, ptr %1, i64 0, i32 2
  %7 = load ptr, ptr %6, align 8, !tbaa !172
  %8 = icmp eq ptr %7, null
  br i1 %8, label %40, label %9

9:                                                ; preds = %5
  %10 = sext i32 %0 to i64
  %11 = getelementptr inbounds ptr, ptr %7, i64 %10
  %12 = load ptr, ptr %11, align 8, !tbaa !34
  %13 = icmp eq ptr %12, null
  br i1 %13, label %40, label %14

14:                                               ; preds = %9
  %15 = getelementptr inbounds %struct.Object, ptr %12, i64 0, i32 128
  %16 = load ptr, ptr %15, align 8, !tbaa !173
  %17 = icmp eq ptr %16, null
  br i1 %17, label %40, label %18

18:                                               ; preds = %14
  %19 = getelementptr inbounds %struct.RigidBodyOb, ptr %16, i64 0, i32 2
  %20 = load i16, ptr %19, align 8, !tbaa !177
  %21 = icmp eq i16 %20, 0
  br i1 %21, label %22, label %40

22:                                               ; preds = %18
  %23 = icmp eq ptr %4, null
  br i1 %23, label %28, label %24

24:                                               ; preds = %22
  %25 = getelementptr inbounds %struct.RigidBodyOb, ptr %16, i64 0, i32 17
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(12) %25, ptr noundef nonnull align 8 dereferenceable(12) %2, i64 12, i1 false)
  %26 = getelementptr inbounds %struct.RigidBodyOb, ptr %16, i64 0, i32 16
  %27 = getelementptr inbounds ptr, ptr %2, i64 3
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %26, ptr noundef nonnull align 8 dereferenceable(16) %27, i64 16, i1 false)
  br label %40

28:                                               ; preds = %22
  %29 = getelementptr inbounds ptr, ptr %2, i64 1
  %30 = load ptr, ptr %29, align 8, !tbaa !34
  %31 = icmp eq ptr %30, null
  br i1 %31, label %34, label %32

32:                                               ; preds = %28
  %33 = getelementptr inbounds %struct.RigidBodyOb, ptr %16, i64 0, i32 17
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(12) %33, ptr noundef nonnull align 1 dereferenceable(12) %30, i64 12, i1 false)
  br label %34

34:                                               ; preds = %32, %28
  %35 = getelementptr inbounds ptr, ptr %2, i64 3
  %36 = load ptr, ptr %35, align 8, !tbaa !34
  %37 = icmp eq ptr %36, null
  br i1 %37, label %40, label %38

38:                                               ; preds = %34
  %39 = getelementptr inbounds %struct.RigidBodyOb, ptr %16, i64 0, i32 16
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %39, ptr noundef nonnull align 1 dereferenceable(16) %36, i64 16, i1 false)
  br label %40

40:                                               ; preds = %5, %18, %34, %38, %24, %14, %9
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal void @ptcache_rigidbody_interpolate(i32 noundef %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2, float noundef %3, float noundef %4, float noundef %5, ptr noundef readnone %6) #0 !PGOFuncName !180 {
  %8 = alloca [4 x %struct.ParticleKey], align 16
  call void @llvm.lifetime.start.p0(i64 224, ptr nonnull %8) #25
  %9 = getelementptr inbounds %struct.RigidBodyWorld, ptr %1, i64 0, i32 2
  %10 = load ptr, ptr %9, align 8, !tbaa !172
  %11 = icmp eq ptr %10, null
  br i1 %11, label %43, label %12

12:                                               ; preds = %7
  %13 = sext i32 %0 to i64
  %14 = getelementptr inbounds ptr, ptr %10, i64 %13
  %15 = load ptr, ptr %14, align 8, !tbaa !34
  %16 = icmp eq ptr %15, null
  br i1 %16, label %43, label %17

17:                                               ; preds = %12
  %18 = getelementptr inbounds %struct.Object, ptr %15, i64 0, i32 128
  %19 = load ptr, ptr %18, align 8, !tbaa !173
  %20 = icmp eq ptr %19, null
  br i1 %20, label %43, label %21

21:                                               ; preds = %17
  %22 = getelementptr inbounds %struct.RigidBodyOb, ptr %19, i64 0, i32 2
  %23 = load i16, ptr %22, align 8, !tbaa !177
  %24 = icmp eq i16 %23, 0
  br i1 %24, label %25, label %43

25:                                               ; preds = %21
  %26 = getelementptr inbounds [4 x %struct.ParticleKey], ptr %8, i64 0, i64 1
  %27 = getelementptr inbounds %struct.RigidBodyOb, ptr %19, i64 0, i32 17
  call fastcc void @copy_v3_v3(ptr noundef nonnull %26, ptr noundef nonnull %27) #26
  %28 = getelementptr inbounds [4 x %struct.ParticleKey], ptr %8, i64 0, i64 1, i32 2
  %29 = getelementptr inbounds %struct.RigidBodyOb, ptr %19, i64 0, i32 16
  call void @copy_qt_qt(ptr noundef nonnull %28, ptr noundef nonnull %29) #24
  %30 = icmp eq ptr %6, null
  br i1 %30, label %35, label %31

31:                                               ; preds = %25
  %32 = getelementptr inbounds [4 x %struct.ParticleKey], ptr %8, i64 0, i64 2
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(12) %32, ptr noundef nonnull align 8 dereferenceable(12) %2, i64 12, i1 false)
  %33 = getelementptr inbounds [4 x %struct.ParticleKey], ptr %8, i64 0, i64 2, i32 2
  %34 = getelementptr inbounds ptr, ptr %2, i64 3
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %33, ptr noundef nonnull align 8 dereferenceable(16) %34, i64 16, i1 false)
  br label %37

35:                                               ; preds = %25
  %36 = getelementptr inbounds %struct.ParticleKey, ptr %8, i64 2
  call void @BKE_ptcache_make_particle_key(ptr noundef nonnull %36, i32 noundef 0, ptr noundef %2, float noundef %5) #26
  br label %37

37:                                               ; preds = %35, %31
  %38 = fsub float %5, %4
  %39 = fsub float %3, %4
  %40 = fdiv float %39, %38
  call void @psys_interpolate_particle(i16 noundef signext -1, ptr noundef nonnull %8, float noundef %40, ptr noundef nonnull %8, i32 noundef 1) #24
  %41 = getelementptr inbounds %struct.ParticleKey, ptr %8, i64 0, i32 2
  %42 = getelementptr inbounds [4 x %struct.ParticleKey], ptr %8, i64 0, i64 2, i32 2
  call void @interp_qt_qtqt(ptr noundef nonnull %41, ptr noundef nonnull %28, ptr noundef nonnull %42, float noundef %40) #24
  call fastcc void @copy_v3_v3(ptr noundef nonnull %27, ptr noundef nonnull %8) #26
  call void @copy_qt_qt(ptr noundef nonnull %29, ptr noundef nonnull %41) #24
  br label %43

43:                                               ; preds = %7, %21, %37, %17, %12
  call void @llvm.lifetime.end.p0(i64 224, ptr nonnull %8) #25
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @BKE_ptcache_ids_from_object(ptr noundef %0, ptr noundef %1, ptr noundef %2, i32 noundef %3) local_unnamed_addr #0 {
  %5 = alloca %struct.ListBase, align 8
  %6 = getelementptr inbounds %struct.Object, ptr %1, i64 0, i32 111
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, i8 0, i64 16, i1 false)
  %7 = load ptr, ptr %6, align 8, !tbaa !181
  %8 = icmp eq ptr %7, null
  br i1 %8, label %13, label %9

9:                                                ; preds = %4
  %10 = load ptr, ptr @MEM_callocN, align 8, !tbaa !34
  %11 = tail call ptr %10(i64 noundef 200, ptr noundef nonnull @.str) #24
  %12 = load ptr, ptr %6, align 8, !tbaa !181
  tail call void @BKE_ptcache_id_from_softbody(ptr noundef %11, ptr noundef nonnull %1, ptr noundef %12) #26
  tail call void @BLI_addtail(ptr noundef nonnull %0, ptr noundef %11) #24
  br label %13

13:                                               ; preds = %9, %4
  %14 = getelementptr inbounds %struct.Object, ptr %1, i64 0, i32 109
  %15 = load ptr, ptr %14, align 8, !tbaa !34
  %16 = icmp eq ptr %15, null
  br i1 %16, label %35, label %17

17:                                               ; preds = %13, %32
  %18 = phi ptr [ %33, %32 ], [ %15, %13 ]
  %19 = getelementptr inbounds %struct.ParticleSystem, ptr %18, i64 0, i32 2
  %20 = load ptr, ptr %19, align 8, !tbaa !82
  %21 = icmp eq ptr %20, null
  br i1 %21, label %32, label %22

22:                                               ; preds = %17
  %23 = getelementptr inbounds %struct.ParticleSettings, ptr %20, i64 0, i32 11
  %24 = load i16, ptr %23, align 8, !tbaa !87
  switch i16 %24, label %25 [
    i16 0, label %32
    i16 2, label %32
  ]

25:                                               ; preds = %22
  %26 = getelementptr inbounds %struct.ParticleSettings, ptr %20, i64 0, i32 7
  %27 = load i16, ptr %26, align 8, !tbaa !83
  %28 = icmp eq i16 %27, 3
  br i1 %28, label %32, label %29

29:                                               ; preds = %25
  %30 = load ptr, ptr @MEM_callocN, align 8, !tbaa !34
  %31 = tail call ptr %30(i64 noundef 200, ptr noundef nonnull @.str) #24
  tail call void @BKE_ptcache_id_from_particles(ptr noundef %31, ptr noundef %1, ptr noundef nonnull %18) #26
  tail call void @BLI_addtail(ptr noundef nonnull %0, ptr noundef %31) #24
  br label %32

32:                                               ; preds = %22, %22, %25, %17, %29
  %33 = load ptr, ptr %18, align 8, !tbaa !34
  %34 = icmp eq ptr %33, null
  br i1 %34, label %35, label %17, !llvm.loop !182

35:                                               ; preds = %32, %13
  %36 = getelementptr inbounds %struct.Object, ptr %1, i64 0, i32 26
  %37 = load ptr, ptr %36, align 8, !tbaa !34
  %38 = icmp eq ptr %37, null
  br i1 %38, label %73, label %39

39:                                               ; preds = %35, %70
  %40 = phi ptr [ %71, %70 ], [ %37, %35 ]
  %41 = getelementptr inbounds %struct.ModifierData, ptr %40, i64 0, i32 2
  %42 = load i32, ptr %41, align 8, !tbaa !183
  switch i32 %42, label %70 [
    i32 22, label %43
    i32 31, label %46
    i32 40, label %54
  ]

43:                                               ; preds = %39
  %44 = load ptr, ptr @MEM_callocN, align 8, !tbaa !34
  %45 = tail call ptr %44(i64 noundef 200, ptr noundef nonnull @.str) #24
  tail call void @BKE_ptcache_id_from_cloth(ptr noundef %45, ptr noundef %1, ptr noundef nonnull %40) #26
  br label %68

46:                                               ; preds = %39
  %47 = getelementptr inbounds %struct.SmokeModifierData, ptr %40, i64 0, i32 5
  %48 = load i32, ptr %47, align 4, !tbaa !184
  %49 = and i32 %48, 1
  %50 = icmp eq i32 %49, 0
  br i1 %50, label %70, label %51

51:                                               ; preds = %46
  %52 = load ptr, ptr @MEM_callocN, align 8, !tbaa !34
  %53 = tail call ptr %52(i64 noundef 200, ptr noundef nonnull @.str) #24
  tail call void @BKE_ptcache_id_from_smoke(ptr noundef %53, ptr noundef %1, ptr noundef nonnull %40) #26
  br label %68

54:                                               ; preds = %39
  %55 = getelementptr inbounds %struct.DynamicPaintModifierData, ptr %40, i64 0, i32 1
  %56 = load ptr, ptr %55, align 8, !tbaa !185
  %57 = icmp eq ptr %56, null
  br i1 %57, label %70, label %58

58:                                               ; preds = %54
  %59 = getelementptr inbounds %struct.DynamicPaintCanvasSettings, ptr %56, i64 0, i32 2
  %60 = load ptr, ptr %59, align 8, !tbaa !34
  %61 = icmp eq ptr %60, null
  br i1 %61, label %70, label %62

62:                                               ; preds = %58, %62
  %63 = phi ptr [ %66, %62 ], [ %60, %58 ]
  %64 = load ptr, ptr @MEM_callocN, align 8, !tbaa !34
  %65 = tail call ptr %64(i64 noundef 200, ptr noundef nonnull @.str) #24
  tail call void @BKE_ptcache_id_from_dynamicpaint(ptr noundef %65, ptr noundef %1, ptr noundef nonnull %63) #26
  tail call void @BLI_addtail(ptr noundef nonnull %0, ptr noundef %65) #24
  %66 = load ptr, ptr %63, align 8, !tbaa !34
  %67 = icmp eq ptr %66, null
  br i1 %67, label %70, label %62, !llvm.loop !187

68:                                               ; preds = %43, %51
  %69 = phi ptr [ %53, %51 ], [ %45, %43 ]
  tail call void @BLI_addtail(ptr noundef nonnull %0, ptr noundef %69) #24
  br label %70

70:                                               ; preds = %62, %68, %58, %54, %39, %46
  %71 = load ptr, ptr %40, align 8, !tbaa !34
  %72 = icmp eq ptr %71, null
  br i1 %72, label %73, label %39, !llvm.loop !188

73:                                               ; preds = %70, %35
  %74 = icmp eq ptr %2, null
  br i1 %74, label %119, label %75

75:                                               ; preds = %73
  %76 = getelementptr inbounds %struct.Object, ptr %1, i64 0, i32 128
  %77 = load ptr, ptr %76, align 8, !tbaa !173
  %78 = icmp eq ptr %77, null
  br i1 %78, label %87, label %79

79:                                               ; preds = %75
  %80 = getelementptr inbounds %struct.Scene, ptr %2, i64 0, i32 47
  %81 = load ptr, ptr %80, align 8, !tbaa !189
  %82 = icmp eq ptr %81, null
  br i1 %82, label %87, label %83

83:                                               ; preds = %79
  %84 = load ptr, ptr @MEM_callocN, align 8, !tbaa !34
  %85 = tail call ptr %84(i64 noundef 200, ptr noundef nonnull @.str) #24
  %86 = load ptr, ptr %80, align 8, !tbaa !189
  tail call void @BKE_ptcache_id_from_rigidbody(ptr noundef %85, ptr noundef nonnull %1, ptr noundef %86) #26
  tail call void @BLI_addtail(ptr noundef nonnull %0, ptr noundef %85) #24
  br label %87

87:                                               ; preds = %75, %79, %83
  %88 = add nsw i32 %3, -1
  %89 = icmp sgt i32 %3, 0
  br i1 %89, label %90, label %119

90:                                               ; preds = %87
  %91 = getelementptr inbounds %struct.Object, ptr %1, i64 0, i32 55
  %92 = load i16, ptr %91, align 8, !tbaa !208
  %93 = and i16 %92, 2840
  %94 = icmp eq i16 %93, 0
  br i1 %94, label %119, label %95

95:                                               ; preds = %90
  %96 = load ptr, ptr @G, align 8, !tbaa !209
  %97 = getelementptr inbounds %struct.Main, ptr %96, i64 0, i32 46
  %98 = load ptr, ptr %97, align 8, !tbaa !211
  %99 = tail call ptr @object_duplilist_ex(ptr noundef %98, ptr noundef nonnull %2, ptr noundef nonnull %1, i8 noundef zeroext 0) #24
  %100 = icmp eq ptr %99, null
  br i1 %100, label %119, label %101

101:                                              ; preds = %95
  %102 = load ptr, ptr %99, align 8, !tbaa !34
  %103 = icmp eq ptr %102, null
  br i1 %103, label %118, label %104

104:                                              ; preds = %101, %115
  %105 = phi ptr [ %116, %115 ], [ %102, %101 ]
  %106 = getelementptr inbounds %struct.DupliObject, ptr %105, i64 0, i32 2
  %107 = load ptr, ptr %106, align 8, !tbaa !213
  %108 = icmp eq ptr %107, %1
  br i1 %108, label %115, label %109

109:                                              ; preds = %104
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %5) #25
  call void @BKE_ptcache_ids_from_object(ptr noundef nonnull %5, ptr noundef %107, ptr noundef nonnull %2, i32 noundef %88) #26
  call void @BLI_movelisttolist(ptr noundef nonnull %0, ptr noundef nonnull %5) #24
  %110 = load ptr, ptr %5, align 8, !tbaa !215
  %111 = icmp eq ptr %110, null
  br i1 %111, label %114, label %112

112:                                              ; preds = %109
  %113 = call i32 @puts(ptr nonnull dereferenceable(1) @str)
  br label %114

114:                                              ; preds = %112, %109
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %5) #25
  br label %115

115:                                              ; preds = %104, %114
  %116 = load ptr, ptr %105, align 8, !tbaa !34
  %117 = icmp eq ptr %116, null
  br i1 %117, label %118, label %104, !llvm.loop !216

118:                                              ; preds = %115, %101
  call void @free_object_duplilist(ptr noundef nonnull %99) #24
  br label %119

119:                                              ; preds = %73, %95, %118, %90, %87
  ret void
}

; Function Attrs: optsize
declare void @BLI_addtail(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @object_duplilist_ex(ptr noundef, ptr noundef, ptr noundef, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: optsize
declare void @BLI_movelisttolist(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nofree nounwind optsize
declare noundef i32 @printf(ptr nocapture noundef readonly, ...) local_unnamed_addr #12

; Function Attrs: optsize
declare void @free_object_duplilist(ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define dso_local i32 @BKE_ptcache_data_size(i32 noundef %0) local_unnamed_addr #6 {
  %2 = sext i32 %0 to i64
  %3 = getelementptr inbounds [8 x i32], ptr @ptcache_data_size, i64 0, i64 %2
  %4 = load i32, ptr %3, align 4, !tbaa !125
  ret i32 %4
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @BKE_ptcache_mem_index_find(ptr nocapture noundef readonly %0, i32 noundef %1) local_unnamed_addr #9 {
  %3 = getelementptr inbounds %struct.PTCacheMem, ptr %0, i64 0, i32 3
  %4 = load i32, ptr %3, align 4, !tbaa !217
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %47, label %6

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.PTCacheMem, ptr %0, i64 0, i32 6
  %8 = load ptr, ptr %7, align 8, !tbaa !34
  %9 = icmp eq ptr %8, null
  br i1 %9, label %47, label %10

10:                                               ; preds = %6
  %11 = add i32 %4, -1
  %12 = load i32, ptr %8, align 4, !tbaa !125
  %13 = icmp ugt i32 %12, %1
  br i1 %13, label %50, label %14

14:                                               ; preds = %10
  %15 = zext i32 %11 to i64
  %16 = getelementptr inbounds i32, ptr %8, i64 %15
  %17 = load i32, ptr %16, align 4, !tbaa !125
  %18 = icmp ult i32 %17, %1
  br i1 %18, label %50, label %19

19:                                               ; preds = %14
  %20 = sub i32 %1, %12
  %21 = icmp ult i32 %20, %11
  br i1 %21, label %22, label %27

22:                                               ; preds = %19
  %23 = zext i32 %20 to i64
  %24 = getelementptr inbounds i32, ptr %8, i64 %23
  %25 = load i32, ptr %24, align 4, !tbaa !125
  %26 = icmp eq i32 %25, %1
  br i1 %26, label %50, label %27

27:                                               ; preds = %22, %19
  br label %28

28:                                               ; preds = %27, %43
  %29 = phi i32 [ %45, %43 ], [ %11, %27 ]
  %30 = phi i32 [ %44, %43 ], [ 0, %27 ]
  %31 = add i32 %29, %30
  %32 = lshr i32 %31, 1
  %33 = zext nneg i32 %32 to i64
  %34 = getelementptr inbounds i32, ptr %8, i64 %33
  %35 = load i32, ptr %34, align 4, !tbaa !125
  %36 = icmp ugt i32 %35, %1
  br i1 %36, label %37, label %39

37:                                               ; preds = %28
  %38 = add nsw i32 %32, -1
  br label %43

39:                                               ; preds = %28
  %40 = icmp ult i32 %35, %1
  br i1 %40, label %41, label %50

41:                                               ; preds = %39
  %42 = add nuw i32 %32, 1
  br label %43

43:                                               ; preds = %41, %37
  %44 = phi i32 [ %30, %37 ], [ %42, %41 ]
  %45 = phi i32 [ %38, %37 ], [ %29, %41 ]
  %46 = icmp ugt i32 %44, %45
  br i1 %46, label %50, label %28, !llvm.loop !219

47:                                               ; preds = %6, %2
  %48 = icmp ugt i32 %4, %1
  %49 = select i1 %48, i32 %1, i32 -1
  br label %50

50:                                               ; preds = %39, %43, %14, %10, %22, %47
  %51 = phi i32 [ %49, %47 ], [ -1, %14 ], [ -1, %10 ], [ %20, %22 ], [ -1, %43 ], [ %32, %39 ]
  ret i32 %51
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(argmem: readwrite) uwtable
define dso_local void @BKE_ptcache_mem_pointers_init(ptr nocapture noundef %0) local_unnamed_addr #13 {
  %2 = getelementptr inbounds %struct.PTCacheMem, ptr %0, i64 0, i32 4
  %3 = load i32, ptr %2, align 8, !tbaa !220
  br label %4

4:                                                ; preds = %1, %13
  %5 = phi i64 [ 0, %1 ], [ %16, %13 ]
  %6 = trunc i64 %5 to i32
  %7 = shl nuw nsw i32 1, %6
  %8 = and i32 %7, %3
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %13, label %10

10:                                               ; preds = %4
  %11 = getelementptr inbounds %struct.PTCacheMem, ptr %0, i64 0, i32 6, i64 %5
  %12 = load ptr, ptr %11, align 8, !tbaa !34
  br label %13

13:                                               ; preds = %4, %10
  %14 = phi ptr [ %12, %10 ], [ null, %4 ]
  %15 = getelementptr inbounds %struct.PTCacheMem, ptr %0, i64 0, i32 7, i64 %5
  store ptr %14, ptr %15, align 8, !tbaa !34
  %16 = add nuw nsw i64 %5, 1
  %17 = icmp eq i64 %16, 8
  br i1 %17, label %18, label %4, !llvm.loop !221

18:                                               ; preds = %13
  ret void
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(argmem: readwrite) uwtable
define dso_local void @BKE_ptcache_mem_pointers_incr(ptr nocapture noundef %0) local_unnamed_addr #13 {
  br label %2

2:                                                ; preds = %24, %1
  %3 = phi i64 [ 0, %1 ], [ %25, %24 ]
  %4 = getelementptr inbounds %struct.PTCacheMem, ptr %0, i64 0, i32 7, i64 %3
  %5 = load <2 x ptr>, ptr %4, align 8, !tbaa !34
  %6 = icmp ne <2 x ptr> %5, zeroinitializer
  %7 = getelementptr [8 x i32], ptr @ptcache_data_size, i64 0, i64 %3
  %8 = load <2 x i32>, ptr %7, align 8, !tbaa !125
  %9 = sext <2 x i32> %8 to <2 x i64>
  %10 = extractelement <2 x i1> %6, i64 0
  br i1 %10, label %11, label %16

11:                                               ; preds = %2
  %12 = getelementptr inbounds %struct.PTCacheMem, ptr %0, i64 0, i32 7, i64 %3
  %13 = extractelement <2 x ptr> %5, i64 0
  %14 = extractelement <2 x i64> %9, i64 0
  %15 = getelementptr inbounds i8, ptr %13, i64 %14
  store ptr %15, ptr %12, align 8, !tbaa !34
  br label %16

16:                                               ; preds = %11, %2
  %17 = extractelement <2 x i1> %6, i64 1
  br i1 %17, label %18, label %24

18:                                               ; preds = %16
  %19 = or disjoint i64 %3, 1
  %20 = getelementptr inbounds %struct.PTCacheMem, ptr %0, i64 0, i32 7, i64 %19
  %21 = extractelement <2 x ptr> %5, i64 1
  %22 = extractelement <2 x i64> %9, i64 1
  %23 = getelementptr inbounds i8, ptr %21, i64 %22
  store ptr %23, ptr %20, align 8, !tbaa !34
  br label %24

24:                                               ; preds = %18, %16
  %25 = add nuw i64 %3, 2
  %26 = icmp eq i64 %25, 8
  br i1 %26, label %27, label %2, !llvm.loop !222

27:                                               ; preds = %24
  ret void
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local noundef i32 @BKE_ptcache_mem_pointers_seek(i32 noundef %0, ptr nocapture noundef %1) local_unnamed_addr #14 {
  %3 = getelementptr inbounds %struct.PTCacheMem, ptr %1, i64 0, i32 4
  %4 = load i32, ptr %3, align 8, !tbaa !220
  %5 = tail call i32 @BKE_ptcache_mem_index_find(ptr noundef %1, i32 noundef %0) #26
  %6 = icmp slt i32 %5, 0
  br i1 %6, label %26, label %7

7:                                                ; preds = %2, %21
  %8 = phi i64 [ %24, %21 ], [ 0, %2 ]
  %9 = trunc i64 %8 to i32
  %10 = shl nuw nsw i32 1, %9
  %11 = and i32 %10, %4
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %21, label %13

13:                                               ; preds = %7
  %14 = getelementptr inbounds %struct.PTCacheMem, ptr %1, i64 0, i32 6, i64 %8
  %15 = load ptr, ptr %14, align 8, !tbaa !34
  %16 = getelementptr inbounds [8 x i32], ptr @ptcache_data_size, i64 0, i64 %8
  %17 = load i32, ptr %16, align 4, !tbaa !125
  %18 = mul nsw i32 %17, %5
  %19 = sext i32 %18 to i64
  %20 = getelementptr inbounds i8, ptr %15, i64 %19
  br label %21

21:                                               ; preds = %7, %13
  %22 = phi ptr [ %20, %13 ], [ null, %7 ]
  %23 = getelementptr inbounds %struct.PTCacheMem, ptr %1, i64 0, i32 7, i64 %8
  store ptr %22, ptr %23, align 8, !tbaa !34
  %24 = add nuw nsw i64 %8, 1
  %25 = icmp eq i64 %24, 8
  br i1 %25, label %26, label %7, !llvm.loop !225

26:                                               ; preds = %21, %2
  %27 = phi i32 [ 0, %2 ], [ 1, %21 ]
  ret i32 %27
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local i32 @BKE_ptcache_read(ptr noundef %0, float noundef %1) local_unnamed_addr #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = tail call float @llvm.floor.f32(float %1)
  %6 = fptosi float %5 to i32
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #25
  store i32 0, ptr %3, align 4, !tbaa !125
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #25
  store i32 0, ptr %4, align 4, !tbaa !125
  %7 = getelementptr inbounds %struct.PTCacheID, ptr %0, i64 0, i32 20
  %8 = load ptr, ptr %7, align 8, !tbaa !53
  %9 = getelementptr inbounds %struct.PTCacheID, ptr %0, i64 0, i32 4
  %10 = load ptr, ptr %9, align 8, !tbaa !44
  %11 = tail call i32 %8(ptr noundef %10, i32 noundef %6) #24
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %118, label %13

13:                                               ; preds = %2
  %14 = getelementptr inbounds %struct.PTCacheID, ptr %0, i64 0, i32 25
  %15 = load ptr, ptr %14, align 8, !tbaa !49
  %16 = getelementptr inbounds %struct.PointCache, ptr %15, i64 0, i32 2
  %17 = load i32, ptr %16, align 8, !tbaa !226
  %18 = and i32 %17, 1024
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %22, label %20

20:                                               ; preds = %13
  %21 = and i32 %17, -1025
  store i32 %21, ptr %16, align 8, !tbaa !226
  tail call fastcc void @ptcache_read(ptr noundef nonnull %0, i32 noundef 0) #26
  br label %22

22:                                               ; preds = %20, %13
  %23 = sitofp i32 %6 to float
  %24 = fcmp oeq float %23, %1
  br i1 %24, label %25, label %30

25:                                               ; preds = %22
  %26 = tail call i32 @BKE_ptcache_id_exist(ptr noundef nonnull %0, i32 noundef %6) #26
  %27 = icmp eq i32 %26, 0
  br i1 %27, label %30, label %28

28:                                               ; preds = %25
  store i32 %6, ptr %3, align 4, !tbaa !125
  %29 = icmp eq i32 %6, 0
  br i1 %29, label %30, label %49

30:                                               ; preds = %25, %22, %28
  call fastcc void @ptcache_find_frames_around(ptr noundef nonnull %0, i32 noundef %6, ptr noundef nonnull %3, ptr noundef nonnull %4) #26
  %31 = load i32, ptr %3, align 4, !tbaa !125
  %32 = load i32, ptr %4, align 4
  %33 = icmp eq i32 %31, 0
  %34 = icmp eq i32 %32, 0
  %35 = select i1 %33, i1 %34, i1 false
  br i1 %35, label %118, label %36

36:                                               ; preds = %30
  %37 = icmp ne i32 %32, 0
  %38 = select i1 %33, i1 %37, i1 false
  br i1 %38, label %39, label %44

39:                                               ; preds = %36
  %40 = load ptr, ptr %14, align 8, !tbaa !49
  %41 = getelementptr inbounds %struct.PointCache, ptr %40, i64 0, i32 4
  %42 = load i32, ptr %41, align 8, !tbaa !227
  %43 = icmp sgt i32 %32, %42
  br i1 %43, label %66, label %118

44:                                               ; preds = %36
  %45 = icmp ne i32 %31, 0
  %46 = icmp eq i32 %31, %32
  %47 = select i1 %45, i1 %46, i1 false
  br i1 %47, label %118, label %48

48:                                               ; preds = %44
  br i1 %33, label %65, label %49

49:                                               ; preds = %28, %48
  %50 = phi i32 [ %32, %48 ], [ 0, %28 ]
  %51 = phi i32 [ %31, %48 ], [ %6, %28 ]
  %52 = phi i1 [ %34, %48 ], [ true, %28 ]
  %53 = getelementptr inbounds %struct.PTCacheID, ptr %0, i64 0, i32 16
  %54 = load ptr, ptr %53, align 8, !tbaa !143
  %55 = icmp eq ptr %54, null
  br i1 %55, label %59, label %56

56:                                               ; preds = %49
  %57 = tail call fastcc i32 @ptcache_read_stream(ptr noundef nonnull %0, i32 noundef %51) #26, !range !160
  %58 = icmp eq i32 %57, 0
  br i1 %58, label %118, label %64

59:                                               ; preds = %49
  %60 = getelementptr inbounds %struct.PTCacheID, ptr %0, i64 0, i32 13
  %61 = load ptr, ptr %60, align 8, !tbaa !56
  %62 = icmp eq ptr %61, null
  br i1 %62, label %64, label %63

63:                                               ; preds = %59
  tail call fastcc void @ptcache_read(ptr noundef nonnull %0, i32 noundef %51) #26
  br label %64

64:                                               ; preds = %56, %63, %59
  br i1 %52, label %89, label %66

65:                                               ; preds = %48
  br i1 %34, label %96, label %66

66:                                               ; preds = %65, %39, %64
  %67 = phi i32 [ %32, %65 ], [ %32, %39 ], [ %50, %64 ]
  %68 = phi i32 [ %31, %65 ], [ 0, %39 ], [ %51, %64 ]
  %69 = phi i1 [ true, %65 ], [ %33, %39 ], [ false, %64 ]
  %70 = phi i1 [ false, %65 ], [ %34, %39 ], [ false, %64 ]
  %71 = getelementptr inbounds %struct.PTCacheID, ptr %0, i64 0, i32 16
  %72 = load ptr, ptr %71, align 8, !tbaa !143
  %73 = icmp eq ptr %72, null
  br i1 %73, label %77, label %74

74:                                               ; preds = %66
  %75 = tail call fastcc i32 @ptcache_read_stream(ptr noundef nonnull %0, i32 noundef %67) #26, !range !160
  %76 = icmp eq i32 %75, 0
  br i1 %76, label %118, label %88

77:                                               ; preds = %66
  %78 = getelementptr inbounds %struct.PTCacheID, ptr %0, i64 0, i32 13
  %79 = load ptr, ptr %78, align 8, !tbaa !56
  %80 = icmp eq ptr %79, null
  br i1 %80, label %88, label %81

81:                                               ; preds = %77
  br i1 %69, label %87, label %82

82:                                               ; preds = %81
  %83 = getelementptr inbounds %struct.PTCacheID, ptr %0, i64 0, i32 14
  %84 = load ptr, ptr %83, align 8, !tbaa !57
  %85 = icmp eq ptr %84, null
  br i1 %85, label %87, label %86

86:                                               ; preds = %82
  tail call fastcc void @ptcache_interpolate(ptr noundef nonnull %0, float noundef %1, i32 noundef %68, i32 noundef %67) #26
  br label %89

87:                                               ; preds = %82, %81
  tail call fastcc void @ptcache_read(ptr noundef nonnull %0, i32 noundef %67) #26
  br label %88

88:                                               ; preds = %74, %87, %77
  br i1 %69, label %92, label %89

89:                                               ; preds = %64, %86, %88
  %90 = phi i1 [ true, %64 ], [ %70, %86 ], [ %70, %88 ]
  %91 = select i1 %90, i32 1, i32 2
  br label %96

92:                                               ; preds = %88
  br i1 %70, label %96, label %93

93:                                               ; preds = %92
  %94 = load ptr, ptr %14, align 8, !tbaa !49
  %95 = getelementptr inbounds %struct.PointCache, ptr %94, i64 0, i32 4
  store i32 %67, ptr %95, align 8, !tbaa !227
  br label %96

96:                                               ; preds = %65, %92, %93, %89
  %97 = phi i32 [ %91, %89 ], [ 3, %93 ], [ 0, %92 ], [ 0, %65 ]
  %98 = fptosi float %1 to i32
  %99 = load ptr, ptr %14, align 8, !tbaa !49
  %100 = getelementptr inbounds %struct.PointCache, ptr %99, i64 0, i32 2
  %101 = load i32, ptr %100, align 8, !tbaa !226
  %102 = and i32 %101, 2
  %103 = icmp eq i32 %102, 0
  br i1 %103, label %104, label %116

104:                                              ; preds = %96
  %105 = and i32 %101, 256
  %106 = icmp eq i32 %105, 0
  br i1 %106, label %118, label %107

107:                                              ; preds = %104
  %108 = getelementptr inbounds %struct.PointCache, ptr %99, i64 0, i32 8
  %109 = load i32, ptr %108, align 8, !tbaa !228
  %110 = sitofp i32 %109 to float
  %111 = fcmp ult float %110, %1
  br i1 %111, label %114, label %112

112:                                              ; preds = %107
  %113 = and i32 %101, -259
  store i32 %113, ptr %100, align 8, !tbaa !226
  br label %114

114:                                              ; preds = %112, %107
  %115 = tail call i32 @llvm.smax.i32(i32 %109, i32 %98)
  br label %116

116:                                              ; preds = %96, %114
  %117 = phi i32 [ %115, %114 ], [ %98, %96 ]
  tail call void @BKE_ptcache_id_clear(ptr noundef nonnull %0, i32 noundef 3, i32 noundef %117) #26
  br label %118

118:                                              ; preds = %116, %104, %74, %56, %44, %39, %30, %2
  %119 = phi i32 [ 0, %2 ], [ 0, %30 ], [ 0, %39 ], [ 0, %44 ], [ 0, %56 ], [ 0, %74 ], [ %97, %104 ], [ %97, %116 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #25
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #25
  ret i32 %119
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @ptcache_read(ptr nocapture noundef %0, i32 noundef %1) unnamed_addr #0 !PGOFuncName !229 {
  %3 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3)
  %4 = getelementptr inbounds %struct.PTCacheID, ptr %0, i64 0, i32 25
  %5 = load ptr, ptr %4, align 8, !tbaa !49
  %6 = getelementptr inbounds %struct.PointCache, ptr %5, i64 0, i32 2
  %7 = load i32, ptr %6, align 8, !tbaa !226
  %8 = and i32 %7, 64
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %10, label %20

10:                                               ; preds = %2
  %11 = getelementptr inbounds %struct.PointCache, ptr %5, i64 0, i32 20
  br label %12

12:                                               ; preds = %16, %10
  %13 = phi ptr [ %11, %10 ], [ %14, %16 ]
  %14 = load ptr, ptr %13, align 8, !tbaa !34
  %15 = icmp eq ptr %14, null
  br i1 %15, label %91, label %16

16:                                               ; preds = %12
  %17 = getelementptr inbounds %struct.PTCacheMem, ptr %14, i64 0, i32 2
  %18 = load i32, ptr %17, align 8, !tbaa !230
  %19 = icmp eq i32 %18, %1
  br i1 %19, label %23, label %12, !llvm.loop !231

20:                                               ; preds = %2
  %21 = tail call fastcc ptr @ptcache_disk_frame_to_mem(ptr noundef nonnull %0, i32 noundef %1) #26
  %22 = icmp eq ptr %21, null
  br i1 %22, label %91, label %23

23:                                               ; preds = %16, %20
  %24 = phi ptr [ %21, %20 ], [ %14, %16 ]
  %25 = getelementptr inbounds %struct.PTCacheMem, ptr %24, i64 0, i32 3
  %26 = load i32, ptr %25, align 4, !tbaa !217
  %27 = getelementptr inbounds %struct.PTCacheID, ptr %0, i64 0, i32 10
  %28 = load i32, ptr %27, align 4, !tbaa !60
  %29 = and i32 %28, 1
  %30 = icmp eq i32 %29, 0
  br i1 %30, label %31, label %43

31:                                               ; preds = %23
  %32 = getelementptr inbounds %struct.PTCacheID, ptr %0, i64 0, i32 20
  %33 = load ptr, ptr %32, align 8, !tbaa !53
  %34 = getelementptr inbounds %struct.PTCacheID, ptr %0, i64 0, i32 4
  %35 = load ptr, ptr %34, align 8, !tbaa !44
  %36 = tail call i32 %33(ptr noundef %35, i32 noundef %1) #24
  %37 = icmp eq i32 %26, %36
  br i1 %37, label %43, label %38

38:                                               ; preds = %31
  %39 = getelementptr inbounds %struct.PTCacheID, ptr %0, i64 0, i32 21
  %40 = load ptr, ptr %39, align 8, !tbaa !54
  %41 = load ptr, ptr %34, align 8, !tbaa !44
  tail call void %40(ptr noundef %41, ptr noundef nonnull @.str.30) #24
  %42 = tail call i32 @llvm.smin.i32(i32 %26, i32 %36)
  br label %43

43:                                               ; preds = %31, %38, %23
  %44 = phi i32 [ %26, %23 ], [ %42, %38 ], [ %26, %31 ]
  tail call void @BKE_ptcache_mem_pointers_init(ptr noundef nonnull %24) #26
  store i32 0, ptr %3, align 4, !tbaa !125
  %45 = icmp sgt i32 %44, 0
  br i1 %45, label %46, label %69

46:                                               ; preds = %43
  %47 = getelementptr inbounds %struct.PTCacheMem, ptr %24, i64 0, i32 4
  %48 = getelementptr inbounds %struct.PTCacheMem, ptr %24, i64 0, i32 7
  %49 = getelementptr inbounds %struct.PTCacheID, ptr %0, i64 0, i32 13
  %50 = getelementptr inbounds %struct.PTCacheID, ptr %0, i64 0, i32 4
  %51 = getelementptr inbounds %struct.PTCacheMem, ptr %24, i64 0, i32 2
  br label %52

52:                                               ; preds = %46, %60
  %53 = phi ptr [ %3, %46 ], [ %61, %60 ]
  %54 = phi i32 [ 0, %46 ], [ %67, %60 ]
  %55 = load i32, ptr %47, align 8, !tbaa !220
  %56 = and i32 %55, 1
  %57 = icmp eq i32 %56, 0
  br i1 %57, label %60, label %58

58:                                               ; preds = %52
  %59 = load ptr, ptr %48, align 8, !tbaa !34
  br label %60

60:                                               ; preds = %58, %52
  %61 = phi ptr [ %59, %58 ], [ %53, %52 ]
  %62 = load ptr, ptr %49, align 8, !tbaa !56
  %63 = load i32, ptr %61, align 4, !tbaa !125
  %64 = load ptr, ptr %50, align 8, !tbaa !44
  %65 = load i32, ptr %51, align 8, !tbaa !230
  %66 = uitofp i32 %65 to float
  tail call void %62(i32 noundef %63, ptr noundef %64, ptr noundef nonnull %48, float noundef %66, ptr noundef null) #24
  tail call void @BKE_ptcache_mem_pointers_incr(ptr noundef nonnull %24) #26
  %67 = add nuw nsw i32 %54, 1
  store i32 %67, ptr %3, align 4, !tbaa !125
  %68 = icmp eq i32 %67, %44
  br i1 %68, label %69, label %52, !llvm.loop !232

69:                                               ; preds = %60, %43
  %70 = getelementptr inbounds %struct.PTCacheID, ptr %0, i64 0, i32 18
  %71 = load ptr, ptr %70, align 8, !tbaa !92
  %72 = icmp eq ptr %71, null
  br i1 %72, label %83, label %73

73:                                               ; preds = %69
  %74 = getelementptr inbounds %struct.PTCacheMem, ptr %24, i64 0, i32 8
  %75 = load ptr, ptr %74, align 8, !tbaa !233
  %76 = icmp eq ptr %75, null
  br i1 %76, label %83, label %77

77:                                               ; preds = %73
  %78 = getelementptr inbounds %struct.PTCacheID, ptr %0, i64 0, i32 4
  %79 = load ptr, ptr %78, align 8, !tbaa !44
  %80 = getelementptr inbounds %struct.PTCacheMem, ptr %24, i64 0, i32 2
  %81 = load i32, ptr %80, align 8, !tbaa !230
  %82 = uitofp i32 %81 to float
  tail call void %71(ptr noundef %79, ptr noundef nonnull %24, float noundef %82) #24
  br label %83

83:                                               ; preds = %77, %73, %69
  %84 = load ptr, ptr %4, align 8, !tbaa !49
  %85 = getelementptr inbounds %struct.PointCache, ptr %84, i64 0, i32 2
  %86 = load i32, ptr %85, align 8, !tbaa !226
  %87 = and i32 %86, 64
  %88 = icmp eq i32 %87, 0
  br i1 %88, label %91, label %89

89:                                               ; preds = %83
  tail call fastcc void @ptcache_data_free(ptr noundef nonnull %24) #26
  tail call fastcc void @ptcache_extra_free(ptr noundef nonnull %24) #26
  %90 = load ptr, ptr @MEM_freeN, align 8, !tbaa !34
  tail call void %90(ptr noundef nonnull %24) #24
  br label %91

91:                                               ; preds = %12, %83, %89, %20
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3)
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local i32 @BKE_ptcache_id_exist(ptr nocapture noundef %0, i32 noundef %1) local_unnamed_addr #0 {
  %3 = alloca [2048 x i8], align 16
  %4 = getelementptr inbounds %struct.PTCacheID, ptr %0, i64 0, i32 25
  %5 = load ptr, ptr %4, align 8, !tbaa !49
  %6 = icmp eq ptr %5, null
  br i1 %6, label %43, label %7

7:                                                ; preds = %2
  %8 = getelementptr inbounds %struct.PointCache, ptr %5, i64 0, i32 5
  %9 = load i32, ptr %8, align 4, !tbaa !234
  %10 = icmp sgt i32 %9, %1
  br i1 %10, label %43, label %11

11:                                               ; preds = %7
  %12 = getelementptr inbounds %struct.PointCache, ptr %5, i64 0, i32 6
  %13 = load i32, ptr %12, align 8, !tbaa !235
  %14 = icmp slt i32 %13, %1
  br i1 %14, label %43, label %15

15:                                               ; preds = %11
  %16 = getelementptr inbounds %struct.PointCache, ptr %5, i64 0, i32 19
  %17 = load ptr, ptr %16, align 8, !tbaa !236
  %18 = icmp eq ptr %17, null
  br i1 %18, label %25, label %19

19:                                               ; preds = %15
  %20 = sub nsw i32 %1, %9
  %21 = sext i32 %20 to i64
  %22 = getelementptr inbounds i8, ptr %17, i64 %21
  %23 = load i8, ptr %22, align 1, !tbaa !165
  %24 = icmp eq i8 %23, 0
  br i1 %24, label %43, label %25

25:                                               ; preds = %19, %15
  %26 = getelementptr inbounds %struct.PointCache, ptr %5, i64 0, i32 2
  %27 = load i32, ptr %26, align 8, !tbaa !226
  %28 = and i32 %27, 64
  %29 = icmp eq i32 %28, 0
  br i1 %29, label %33, label %30

30:                                               ; preds = %25
  call void @llvm.lifetime.start.p0(i64 2048, ptr nonnull %3) #25
  %31 = call fastcc i32 @ptcache_filename(ptr noundef nonnull %0, ptr noundef nonnull %3, i32 noundef %1, i16 noundef signext 1, i16 noundef signext 1) #26
  %32 = call i32 @BLI_exists(ptr noundef nonnull %3) #24
  call void @llvm.lifetime.end.p0(i64 2048, ptr nonnull %3) #25
  br label %43

33:                                               ; preds = %25
  %34 = getelementptr inbounds %struct.PointCache, ptr %5, i64 0, i32 20
  br label %35

35:                                               ; preds = %39, %33
  %36 = phi ptr [ %34, %33 ], [ %37, %39 ]
  %37 = load ptr, ptr %36, align 8, !tbaa !34
  %38 = icmp eq ptr %37, null
  br i1 %38, label %43, label %39

39:                                               ; preds = %35
  %40 = getelementptr inbounds %struct.PTCacheMem, ptr %37, i64 0, i32 2
  %41 = load i32, ptr %40, align 8, !tbaa !230
  %42 = icmp eq i32 %41, %1
  br i1 %42, label %43, label %35, !llvm.loop !237

43:                                               ; preds = %39, %35, %19, %7, %11, %2, %30
  %44 = phi i32 [ %32, %30 ], [ 0, %2 ], [ 0, %11 ], [ 0, %7 ], [ 0, %19 ], [ 0, %35 ], [ 1, %39 ]
  ret i32 %44
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @ptcache_find_frames_around(ptr nocapture noundef %0, i32 noundef %1, ptr nocapture noundef writeonly %2, ptr nocapture noundef writeonly %3) unnamed_addr #0 !PGOFuncName !238 {
  %5 = getelementptr inbounds %struct.PTCacheID, ptr %0, i64 0, i32 25
  %6 = load ptr, ptr %5, align 8, !tbaa !49
  %7 = getelementptr inbounds %struct.PointCache, ptr %6, i64 0, i32 2
  %8 = load i32, ptr %7, align 8, !tbaa !226
  %9 = and i32 %8, 64
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %56, label %11

11:                                               ; preds = %4
  %12 = getelementptr inbounds %struct.PointCache, ptr %6, i64 0, i32 5
  %13 = load i32, ptr %12, align 4, !tbaa !234
  %14 = icmp sgt i32 %13, %1
  br i1 %14, label %28, label %15

15:                                               ; preds = %11, %23
  %16 = phi i32 [ %24, %23 ], [ %1, %11 ]
  %17 = tail call i32 @BKE_ptcache_id_exist(ptr noundef nonnull %0, i32 noundef %16) #26
  %18 = icmp eq i32 %17, 0
  %19 = load ptr, ptr %5, align 8, !tbaa !49
  br i1 %18, label %23, label %20

20:                                               ; preds = %15
  %21 = getelementptr inbounds %struct.PointCache, ptr %19, i64 0, i32 5
  %22 = load i32, ptr %21, align 4, !tbaa !234
  br label %28

23:                                               ; preds = %15
  %24 = add nsw i32 %16, -1
  %25 = getelementptr inbounds %struct.PointCache, ptr %19, i64 0, i32 5
  %26 = load i32, ptr %25, align 4, !tbaa !234
  %27 = icmp sgt i32 %16, %26
  br i1 %27, label %15, label %28, !llvm.loop !239

28:                                               ; preds = %23, %20, %11
  %29 = phi i32 [ %13, %11 ], [ %22, %20 ], [ %26, %23 ]
  %30 = phi i32 [ %1, %11 ], [ %16, %20 ], [ %24, %23 ]
  %31 = icmp slt i32 %30, %29
  %32 = select i1 %31, i32 0, i32 %30
  br label %33

33:                                               ; preds = %40, %28
  %34 = phi i32 [ %1, %28 ], [ %35, %40 ]
  %35 = add i32 %34, 1
  %36 = load ptr, ptr %5, align 8, !tbaa !49
  %37 = getelementptr inbounds %struct.PointCache, ptr %36, i64 0, i32 6
  %38 = load i32, ptr %37, align 8, !tbaa !235
  %39 = icmp sgt i32 %35, %38
  br i1 %39, label %47, label %40

40:                                               ; preds = %33
  %41 = tail call i32 @BKE_ptcache_id_exist(ptr noundef nonnull %0, i32 noundef %35) #26
  %42 = icmp eq i32 %41, 0
  br i1 %42, label %33, label %43, !llvm.loop !240

43:                                               ; preds = %40
  %44 = load ptr, ptr %5, align 8, !tbaa !49
  %45 = getelementptr inbounds %struct.PointCache, ptr %44, i64 0, i32 6
  %46 = load i32, ptr %45, align 8, !tbaa !235
  br label %47

47:                                               ; preds = %33, %43
  %48 = phi i32 [ %46, %43 ], [ %38, %33 ]
  %49 = icmp sgt i32 %35, %48
  %50 = select i1 %49, i32 0, i32 %35
  %51 = icmp eq i32 %32, 0
  %52 = icmp ne i32 %50, 0
  %53 = select i1 %51, i1 true, i1 %52
  %54 = select i1 %53, i32 %32, i32 0
  %55 = select i1 %53, i32 %50, i32 %32
  store i32 %54, ptr %2, align 4, !tbaa !125
  br label %92

56:                                               ; preds = %4
  %57 = getelementptr inbounds %struct.PointCache, ptr %6, i64 0, i32 20
  %58 = load ptr, ptr %57, align 8, !tbaa !241
  %59 = icmp eq ptr %58, null
  br i1 %59, label %94, label %60

60:                                               ; preds = %56
  %61 = getelementptr inbounds %struct.PointCache, ptr %6, i64 0, i32 20, i32 1
  %62 = load ptr, ptr %61, align 8, !tbaa !242
  br label %63

63:                                               ; preds = %67, %60
  %64 = phi ptr [ %58, %60 ], [ %65, %67 ]
  %65 = load ptr, ptr %64, align 8, !tbaa !243
  %66 = icmp eq ptr %65, null
  br i1 %66, label %71, label %67

67:                                               ; preds = %63
  %68 = getelementptr inbounds %struct.PTCacheMem, ptr %65, i64 0, i32 2
  %69 = load i32, ptr %68, align 8, !tbaa !230
  %70 = icmp ugt i32 %69, %1
  br i1 %70, label %71, label %63, !llvm.loop !244

71:                                               ; preds = %63, %67
  %72 = getelementptr inbounds %struct.PTCacheMem, ptr %62, i64 0, i32 2
  %73 = load i32, ptr %72, align 8, !tbaa !230
  %74 = icmp ult i32 %73, %1
  br i1 %74, label %87, label %75

75:                                               ; preds = %71, %80
  %76 = phi ptr [ %78, %80 ], [ %62, %71 ]
  %77 = getelementptr inbounds %struct.PTCacheMem, ptr %76, i64 0, i32 1
  %78 = load ptr, ptr %77, align 8, !tbaa !245
  %79 = icmp eq ptr %78, null
  br i1 %79, label %84, label %80

80:                                               ; preds = %75
  %81 = getelementptr inbounds %struct.PTCacheMem, ptr %78, i64 0, i32 2
  %82 = load i32, ptr %81, align 8, !tbaa !230
  %83 = icmp ugt i32 %82, %1
  br i1 %83, label %75, label %84, !llvm.loop !246

84:                                               ; preds = %80, %75
  %85 = getelementptr inbounds %struct.PTCacheMem, ptr %64, i64 0, i32 2
  %86 = load i32, ptr %85, align 8, !tbaa !230
  br label %87

87:                                               ; preds = %71, %84
  %88 = phi i32 [ %86, %84 ], [ 0, %71 ]
  %89 = phi ptr [ %76, %84 ], [ %64, %71 ]
  store i32 %88, ptr %2, align 4, !tbaa !125
  %90 = getelementptr inbounds %struct.PTCacheMem, ptr %89, i64 0, i32 2
  %91 = load i32, ptr %90, align 8, !tbaa !230
  br label %92

92:                                               ; preds = %47, %87
  %93 = phi i32 [ %91, %87 ], [ %55, %47 ]
  store i32 %93, ptr %3, align 4, !tbaa !125
  br label %94

94:                                               ; preds = %92, %56
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc noundef i32 @ptcache_read_stream(ptr nocapture noundef %0, i32 noundef %1) unnamed_addr #0 !PGOFuncName !247 {
  %3 = tail call fastcc ptr @ptcache_file_open(ptr noundef %0, i32 noundef 0, i32 noundef %1) #26
  %4 = getelementptr inbounds %struct.PTCacheID, ptr %0, i64 0, i32 16
  %5 = load ptr, ptr %4, align 8, !tbaa !143
  %6 = icmp eq ptr %5, null
  br i1 %6, label %68, label %7

7:                                                ; preds = %2
  %8 = icmp eq ptr %3, null
  br i1 %8, label %9, label %15

9:                                                ; preds = %7
  %10 = load i32, ptr getelementptr inbounds (%struct.Global, ptr @G, i64 0, i32 16), align 4, !tbaa !248
  %11 = and i32 %10, 1
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %68, label %13

13:                                               ; preds = %9
  %14 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.61)
  br label %68

15:                                               ; preds = %7
  %16 = tail call fastcc i32 @ptcache_file_header_begin_read(ptr noundef nonnull %3) #26, !range !160
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %18, label %23

18:                                               ; preds = %15
  %19 = getelementptr inbounds %struct.PTCacheID, ptr %0, i64 0, i32 21
  %20 = load ptr, ptr %19, align 8, !tbaa !54
  %21 = getelementptr inbounds %struct.PTCacheID, ptr %0, i64 0, i32 4
  %22 = load ptr, ptr %21, align 8, !tbaa !44
  tail call void %20(ptr noundef %22, ptr noundef nonnull @.str.32) #24
  br label %66

23:                                               ; preds = %15
  %24 = getelementptr inbounds %struct.PTCacheFile, ptr %3, i64 0, i32 4
  %25 = load i32, ptr %24, align 4, !tbaa !249
  %26 = getelementptr inbounds %struct.PTCacheID, ptr %0, i64 0, i32 5
  %27 = load i32, ptr %26, align 8, !tbaa !79
  %28 = icmp eq i32 %25, %27
  br i1 %28, label %34, label %29

29:                                               ; preds = %23
  %30 = getelementptr inbounds %struct.PTCacheID, ptr %0, i64 0, i32 21
  %31 = load ptr, ptr %30, align 8, !tbaa !54
  %32 = getelementptr inbounds %struct.PTCacheID, ptr %0, i64 0, i32 4
  %33 = load ptr, ptr %32, align 8, !tbaa !44
  tail call void %31(ptr noundef %33, ptr noundef nonnull @.str.33) #24
  br label %66

34:                                               ; preds = %23
  %35 = getelementptr inbounds %struct.PTCacheID, ptr %0, i64 0, i32 24
  %36 = load ptr, ptr %35, align 8, !tbaa !59
  %37 = tail call i32 %36(ptr noundef nonnull %3) #24
  %38 = icmp eq i32 %37, 0
  br i1 %38, label %39, label %44

39:                                               ; preds = %34
  %40 = getelementptr inbounds %struct.PTCacheID, ptr %0, i64 0, i32 21
  %41 = load ptr, ptr %40, align 8, !tbaa !54
  %42 = getelementptr inbounds %struct.PTCacheID, ptr %0, i64 0, i32 4
  %43 = load ptr, ptr %42, align 8, !tbaa !44
  tail call void %41(ptr noundef %43, ptr noundef nonnull @.str.34) #24
  br label %66

44:                                               ; preds = %34
  %45 = getelementptr inbounds %struct.PTCacheFile, ptr %3, i64 0, i32 3
  %46 = load i32, ptr %45, align 8, !tbaa !250
  %47 = getelementptr inbounds %struct.PTCacheID, ptr %0, i64 0, i32 20
  %48 = load ptr, ptr %47, align 8, !tbaa !53
  %49 = getelementptr inbounds %struct.PTCacheID, ptr %0, i64 0, i32 4
  %50 = load ptr, ptr %49, align 8, !tbaa !44
  %51 = tail call i32 %48(ptr noundef %50, i32 noundef %1) #24
  %52 = icmp eq i32 %46, %51
  br i1 %52, label %57, label %53

53:                                               ; preds = %44
  %54 = getelementptr inbounds %struct.PTCacheID, ptr %0, i64 0, i32 21
  %55 = load ptr, ptr %54, align 8, !tbaa !54
  %56 = load ptr, ptr %49, align 8, !tbaa !44
  tail call void %55(ptr noundef %56, ptr noundef nonnull @.str.30) #24
  br label %66

57:                                               ; preds = %44
  tail call fastcc void @ptcache_file_pointers_init(ptr noundef nonnull %3) #26
  %58 = load ptr, ptr %4, align 8, !tbaa !143
  %59 = load ptr, ptr %49, align 8, !tbaa !44
  %60 = tail call i32 %58(ptr noundef nonnull %3, ptr noundef %59) #24
  %61 = icmp eq i32 %60, 0
  br i1 %61, label %62, label %66

62:                                               ; preds = %57
  %63 = getelementptr inbounds %struct.PTCacheID, ptr %0, i64 0, i32 21
  %64 = load ptr, ptr %63, align 8, !tbaa !54
  %65 = load ptr, ptr %49, align 8, !tbaa !44
  tail call void %64(ptr noundef %65, ptr noundef nonnull @.str.35) #24
  br label %66

66:                                               ; preds = %29, %53, %39, %18, %57, %62
  %67 = phi i32 [ 1, %57 ], [ 0, %62 ], [ 0, %18 ], [ 0, %39 ], [ 0, %53 ], [ 0, %29 ]
  tail call fastcc void @ptcache_file_close(ptr noundef nonnull %3) #26
  br label %68

68:                                               ; preds = %9, %13, %2, %66
  %69 = phi i32 [ %67, %66 ], [ 0, %2 ], [ 0, %13 ], [ 0, %9 ]
  ret i32 %69
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @ptcache_interpolate(ptr nocapture noundef %0, float noundef %1, i32 noundef %2, i32 noundef %3) unnamed_addr #0 !PGOFuncName !251 {
  %5 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5)
  %6 = getelementptr inbounds %struct.PTCacheID, ptr %0, i64 0, i32 25
  %7 = load ptr, ptr %6, align 8, !tbaa !49
  %8 = getelementptr inbounds %struct.PointCache, ptr %7, i64 0, i32 2
  %9 = load i32, ptr %8, align 8, !tbaa !226
  %10 = and i32 %9, 64
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %12, label %22

12:                                               ; preds = %4
  %13 = getelementptr inbounds %struct.PointCache, ptr %7, i64 0, i32 20
  br label %14

14:                                               ; preds = %18, %12
  %15 = phi ptr [ %13, %12 ], [ %16, %18 ]
  %16 = load ptr, ptr %15, align 8, !tbaa !34
  %17 = icmp eq ptr %16, null
  br i1 %17, label %92, label %18

18:                                               ; preds = %14
  %19 = getelementptr inbounds %struct.PTCacheMem, ptr %16, i64 0, i32 2
  %20 = load i32, ptr %19, align 8, !tbaa !230
  %21 = icmp eq i32 %20, %3
  br i1 %21, label %25, label %14, !llvm.loop !252

22:                                               ; preds = %4
  %23 = tail call fastcc ptr @ptcache_disk_frame_to_mem(ptr noundef nonnull %0, i32 noundef %3) #26
  %24 = icmp eq ptr %23, null
  br i1 %24, label %92, label %25

25:                                               ; preds = %18, %22
  %26 = phi ptr [ %23, %22 ], [ %16, %18 ]
  %27 = getelementptr inbounds %struct.PTCacheMem, ptr %26, i64 0, i32 3
  %28 = load i32, ptr %27, align 4, !tbaa !217
  %29 = getelementptr inbounds %struct.PTCacheID, ptr %0, i64 0, i32 10
  %30 = load i32, ptr %29, align 4, !tbaa !60
  %31 = and i32 %30, 1
  %32 = icmp eq i32 %31, 0
  br i1 %32, label %33, label %46

33:                                               ; preds = %25
  %34 = getelementptr inbounds %struct.PTCacheID, ptr %0, i64 0, i32 20
  %35 = load ptr, ptr %34, align 8, !tbaa !53
  %36 = getelementptr inbounds %struct.PTCacheID, ptr %0, i64 0, i32 4
  %37 = load ptr, ptr %36, align 8, !tbaa !44
  %38 = fptosi float %1 to i32
  %39 = tail call i32 %35(ptr noundef %37, i32 noundef %38) #24
  %40 = icmp eq i32 %28, %39
  br i1 %40, label %46, label %41

41:                                               ; preds = %33
  %42 = getelementptr inbounds %struct.PTCacheID, ptr %0, i64 0, i32 21
  %43 = load ptr, ptr %42, align 8, !tbaa !54
  %44 = load ptr, ptr %36, align 8, !tbaa !44
  tail call void %43(ptr noundef %44, ptr noundef nonnull @.str.30) #24
  %45 = tail call i32 @llvm.smin.i32(i32 %28, i32 %39)
  br label %46

46:                                               ; preds = %33, %41, %25
  %47 = phi i32 [ %28, %25 ], [ %45, %41 ], [ %28, %33 ]
  tail call void @BKE_ptcache_mem_pointers_init(ptr noundef nonnull %26) #26
  store i32 0, ptr %5, align 4, !tbaa !125
  %48 = icmp sgt i32 %47, 0
  br i1 %48, label %49, label %71

49:                                               ; preds = %46
  %50 = getelementptr inbounds %struct.PTCacheMem, ptr %26, i64 0, i32 4
  %51 = getelementptr inbounds %struct.PTCacheMem, ptr %26, i64 0, i32 7
  %52 = getelementptr inbounds %struct.PTCacheID, ptr %0, i64 0, i32 14
  %53 = getelementptr inbounds %struct.PTCacheID, ptr %0, i64 0, i32 4
  %54 = sitofp i32 %2 to float
  %55 = sitofp i32 %3 to float
  br label %56

56:                                               ; preds = %49, %64
  %57 = phi ptr [ %5, %49 ], [ %65, %64 ]
  %58 = phi i32 [ 0, %49 ], [ %69, %64 ]
  %59 = load i32, ptr %50, align 8, !tbaa !220
  %60 = and i32 %59, 1
  %61 = icmp eq i32 %60, 0
  br i1 %61, label %64, label %62

62:                                               ; preds = %56
  %63 = load ptr, ptr %51, align 8, !tbaa !34
  br label %64

64:                                               ; preds = %62, %56
  %65 = phi ptr [ %63, %62 ], [ %57, %56 ]
  %66 = load ptr, ptr %52, align 8, !tbaa !57
  %67 = load i32, ptr %65, align 4, !tbaa !125
  %68 = load ptr, ptr %53, align 8, !tbaa !44
  tail call void %66(i32 noundef %67, ptr noundef %68, ptr noundef nonnull %51, float noundef %1, float noundef %54, float noundef %55, ptr noundef null) #24
  tail call void @BKE_ptcache_mem_pointers_incr(ptr noundef nonnull %26) #26
  %69 = add nuw nsw i32 %58, 1
  store i32 %69, ptr %5, align 4, !tbaa !125
  %70 = icmp eq i32 %69, %47
  br i1 %70, label %71, label %56, !llvm.loop !253

71:                                               ; preds = %64, %46
  %72 = getelementptr inbounds %struct.PTCacheID, ptr %0, i64 0, i32 19
  %73 = load ptr, ptr %72, align 8, !tbaa !254
  %74 = icmp eq ptr %73, null
  br i1 %74, label %84, label %75

75:                                               ; preds = %71
  %76 = getelementptr inbounds %struct.PTCacheMem, ptr %26, i64 0, i32 8
  %77 = load ptr, ptr %76, align 8, !tbaa !233
  %78 = icmp eq ptr %77, null
  br i1 %78, label %84, label %79

79:                                               ; preds = %75
  %80 = getelementptr inbounds %struct.PTCacheID, ptr %0, i64 0, i32 4
  %81 = load ptr, ptr %80, align 8, !tbaa !44
  %82 = sitofp i32 %2 to float
  %83 = sitofp i32 %3 to float
  tail call void %73(ptr noundef %81, ptr noundef nonnull %26, float noundef %1, float noundef %82, float noundef %83) #24
  br label %84

84:                                               ; preds = %79, %75, %71
  %85 = load ptr, ptr %6, align 8, !tbaa !49
  %86 = getelementptr inbounds %struct.PointCache, ptr %85, i64 0, i32 2
  %87 = load i32, ptr %86, align 8, !tbaa !226
  %88 = and i32 %87, 64
  %89 = icmp eq i32 %88, 0
  br i1 %89, label %92, label %90

90:                                               ; preds = %84
  tail call fastcc void @ptcache_data_free(ptr noundef nonnull %26) #26
  tail call fastcc void @ptcache_extra_free(ptr noundef nonnull %26) #26
  %91 = load ptr, ptr @MEM_freeN, align 8, !tbaa !34
  tail call void %91(ptr noundef nonnull %26) #24
  br label %92

92:                                               ; preds = %14, %84, %90, %22
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5)
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @BKE_ptcache_id_clear(ptr noundef %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #0 {
  %4 = alloca [1024 x i8], align 16
  %5 = alloca [2048 x i8], align 16
  %6 = alloca [2048 x i8], align 16
  %7 = alloca [1024 x i8], align 16
  %8 = alloca [7 x i8], align 1
  call void @llvm.lifetime.start.p0(i64 1024, ptr nonnull %4) #25
  call void @llvm.lifetime.start.p0(i64 2048, ptr nonnull %5) #25
  call void @llvm.lifetime.start.p0(i64 2048, ptr nonnull %6) #25
  call void @llvm.lifetime.start.p0(i64 1024, ptr nonnull %7) #25
  %9 = icmp eq ptr %0, null
  br i1 %9, label %198, label %10

10:                                               ; preds = %3
  %11 = getelementptr inbounds %struct.PTCacheID, ptr %0, i64 0, i32 25
  %12 = load ptr, ptr %11, align 8, !tbaa !49
  %13 = icmp eq ptr %12, null
  br i1 %13, label %198, label %14

14:                                               ; preds = %10
  %15 = getelementptr inbounds %struct.PointCache, ptr %12, i64 0, i32 2
  %16 = load i32, ptr %15, align 8, !tbaa !226
  %17 = and i32 %16, 8193
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %19, label %198

19:                                               ; preds = %14
  %20 = getelementptr inbounds %struct.PointCache, ptr %12, i64 0, i32 5
  %21 = load i32, ptr %20, align 4, !tbaa !234
  %22 = getelementptr inbounds %struct.PointCache, ptr %12, i64 0, i32 6
  %23 = load i32, ptr %22, align 8, !tbaa !235
  switch i32 %1, label %197 [
    i32 0, label %24
    i32 2, label %24
    i32 3, label %24
    i32 1, label %162
  ]

24:                                               ; preds = %19, %19, %19
  %25 = and i32 %16, 64
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %103, label %27

27:                                               ; preds = %24
  %28 = call fastcc i32 @ptcache_path(ptr noundef nonnull %0, ptr noundef nonnull %4) #26
  %29 = call fastcc i32 @ptcache_filename(ptr noundef nonnull %0, ptr noundef nonnull %5, i32 noundef %2, i16 noundef signext 0, i16 noundef signext 0) #26
  %30 = call ptr @opendir(ptr noundef nonnull %4) #26
  %31 = icmp eq ptr %30, null
  br i1 %31, label %198, label %32

32:                                               ; preds = %27
  %33 = getelementptr inbounds %struct.PTCacheID, ptr %0, i64 0, i32 6
  %34 = load i32, ptr %33, align 4, !tbaa !63
  %35 = call i64 (ptr, i64, ptr, ...) @BLI_snprintf(ptr noundef nonnull %7, i64 noundef 1024, ptr noundef nonnull @.str.2, i32 noundef %34) #24
  %36 = call ptr @readdir(ptr noundef nonnull %30) #24
  %37 = icmp eq ptr %36, null
  br i1 %37, label %92, label %38

38:                                               ; preds = %32
  %39 = zext i32 %29 to i64
  %40 = icmp eq i32 %1, 0
  %41 = icmp eq i32 %1, 2
  %42 = icmp eq i32 %1, 3
  br label %43

43:                                               ; preds = %38, %89
  %44 = phi ptr [ %36, %38 ], [ %90, %89 ]
  %45 = getelementptr inbounds %struct.dirent, ptr %44, i64 0, i32 4
  %46 = call ptr @strstr(ptr noundef nonnull dereferenceable(1) %45, ptr noundef nonnull dereferenceable(1) %7) #27
  %47 = icmp eq ptr %46, null
  br i1 %47, label %89, label %48

48:                                               ; preds = %43
  %49 = call i32 @strncmp(ptr noundef nonnull %5, ptr noundef nonnull %45, i64 noundef %39) #27
  %50 = icmp eq i32 %49, 0
  br i1 %50, label %51, label %89

51:                                               ; preds = %48
  br i1 %40, label %52, label %59

52:                                               ; preds = %51
  %53 = load ptr, ptr %11, align 8, !tbaa !49
  %54 = getelementptr inbounds %struct.PointCache, ptr %53, i64 0, i32 5
  %55 = load i32, ptr %54, align 4, !tbaa !234
  %56 = call i32 @llvm.smin.i32(i32 %55, i32 0)
  %57 = getelementptr inbounds %struct.PointCache, ptr %53, i64 0, i32 8
  store i32 %56, ptr %57, align 8, !tbaa !228
  call void @BLI_join_dirfile(ptr noundef nonnull %6, i64 noundef 2048, ptr noundef nonnull %4, ptr noundef nonnull %45) #24
  %58 = call i32 @BLI_delete(ptr noundef nonnull %6, i8 noundef zeroext 0, i8 noundef zeroext 0) #24
  br label %89

59:                                               ; preds = %51
  %60 = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %45) #27
  call void @llvm.lifetime.start.p0(i64 7, ptr nonnull %8) #25
  %61 = and i64 %60, 4294967280
  %62 = icmp eq i64 %61, 0
  br i1 %62, label %88, label %63

63:                                               ; preds = %59
  %64 = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %45) #27
  %65 = getelementptr i8, ptr %45, i64 %64
  %66 = getelementptr i8, ptr %65, i64 -15
  %67 = call ptr @BLI_strncpy(ptr noundef nonnull %8, ptr noundef %66, i64 noundef 7) #24
  %68 = call i32 @atoi(ptr nocapture noundef nonnull %8) #27
  %69 = icmp ult i32 %68, %2
  %70 = select i1 %41, i1 %69, i1 false
  %71 = icmp ugt i32 %68, %2
  %72 = select i1 %42, i1 %71, i1 false
  %73 = select i1 %70, i1 true, i1 %72
  br i1 %73, label %74, label %88

74:                                               ; preds = %63
  call void @BLI_join_dirfile(ptr noundef nonnull %6, i64 noundef 2048, ptr noundef nonnull %4, ptr noundef nonnull %45) #24
  %75 = call i32 @BLI_delete(ptr noundef nonnull %6, i8 noundef zeroext 0, i8 noundef zeroext 0) #24
  %76 = load ptr, ptr %11, align 8, !tbaa !49
  %77 = getelementptr inbounds %struct.PointCache, ptr %76, i64 0, i32 19
  %78 = load ptr, ptr %77, align 8, !tbaa !236
  %79 = icmp eq ptr %78, null
  %80 = icmp ult i32 %68, %21
  %81 = select i1 %79, i1 true, i1 %80
  %82 = icmp ugt i32 %68, %23
  %83 = select i1 %81, i1 true, i1 %82
  br i1 %83, label %88, label %84

84:                                               ; preds = %74
  %85 = sub i32 %68, %21
  %86 = zext i32 %85 to i64
  %87 = getelementptr inbounds i8, ptr %78, i64 %86
  store i8 0, ptr %87, align 1, !tbaa !165
  br label %88

88:                                               ; preds = %63, %84, %74, %59
  call void @llvm.lifetime.end.p0(i64 7, ptr nonnull %8) #25
  br label %89

89:                                               ; preds = %48, %88, %52, %43
  %90 = call ptr @readdir(ptr noundef nonnull %30) #24
  %91 = icmp eq ptr %90, null
  br i1 %91, label %92, label %43, !llvm.loop !255

92:                                               ; preds = %89, %32
  %93 = call i32 @closedir(ptr noundef nonnull %30) #26
  %94 = icmp eq i32 %1, 0
  br i1 %94, label %95, label %197

95:                                               ; preds = %92
  %96 = load ptr, ptr %11, align 8, !tbaa !49
  %97 = getelementptr inbounds %struct.PointCache, ptr %96, i64 0, i32 19
  %98 = load ptr, ptr %97, align 8, !tbaa !236
  %99 = icmp eq ptr %98, null
  br i1 %99, label %197, label %100

100:                                              ; preds = %95
  %101 = load ptr, ptr @MEM_allocN_len, align 8, !tbaa !34
  %102 = call i64 %101(ptr noundef nonnull %98) #24
  call void @llvm.memset.p0.i64(ptr nonnull align 1 %98, i8 0, i64 %102, i1 false)
  br label %197

103:                                              ; preds = %24
  %104 = getelementptr inbounds %struct.PointCache, ptr %12, i64 0, i32 20
  %105 = load ptr, ptr %104, align 8, !tbaa !241
  %106 = icmp eq i32 %1, 0
  br i1 %106, label %109, label %107

107:                                              ; preds = %103
  %108 = icmp eq ptr %105, null
  br i1 %108, label %197, label %129

109:                                              ; preds = %103
  %110 = tail call i32 @llvm.smin.i32(i32 %21, i32 0)
  %111 = getelementptr inbounds %struct.PointCache, ptr %12, i64 0, i32 8
  store i32 %110, ptr %111, align 8, !tbaa !228
  %112 = icmp eq ptr %105, null
  br i1 %112, label %119, label %113

113:                                              ; preds = %109, %113
  %114 = phi ptr [ %115, %113 ], [ %105, %109 ]
  tail call fastcc void @ptcache_data_free(ptr noundef nonnull %114) #26
  tail call fastcc void @ptcache_extra_free(ptr noundef nonnull %114) #26
  %115 = load ptr, ptr %114, align 8, !tbaa !243
  %116 = icmp eq ptr %115, null
  br i1 %116, label %117, label %113, !llvm.loop !256

117:                                              ; preds = %113
  %118 = load ptr, ptr %11, align 8, !tbaa !49
  br label %119

119:                                              ; preds = %117, %109
  %120 = phi ptr [ %118, %117 ], [ %12, %109 ]
  %121 = getelementptr inbounds %struct.PointCache, ptr %120, i64 0, i32 20
  tail call void @BLI_freelistN(ptr noundef nonnull %121) #24
  %122 = load ptr, ptr %11, align 8, !tbaa !49
  %123 = getelementptr inbounds %struct.PointCache, ptr %122, i64 0, i32 19
  %124 = load ptr, ptr %123, align 8, !tbaa !236
  %125 = icmp eq ptr %124, null
  br i1 %125, label %197, label %126

126:                                              ; preds = %119
  %127 = load ptr, ptr @MEM_allocN_len, align 8, !tbaa !34
  %128 = tail call i64 %127(ptr noundef nonnull %124) #24
  tail call void @llvm.memset.p0.i64(ptr nonnull align 1 %124, i8 0, i64 %128, i1 false)
  br label %197

129:                                              ; preds = %107, %159
  %130 = phi ptr [ %160, %159 ], [ %105, %107 ]
  switch i32 %1, label %157 [
    i32 2, label %131
    i32 3, label %135
  ]

131:                                              ; preds = %129
  %132 = getelementptr inbounds %struct.PTCacheMem, ptr %130, i64 0, i32 2
  %133 = load i32, ptr %132, align 8, !tbaa !230
  %134 = icmp ult i32 %133, %2
  br i1 %134, label %139, label %157

135:                                              ; preds = %129
  %136 = getelementptr inbounds %struct.PTCacheMem, ptr %130, i64 0, i32 2
  %137 = load i32, ptr %136, align 8, !tbaa !230
  %138 = icmp ugt i32 %137, %2
  br i1 %138, label %139, label %157

139:                                              ; preds = %135, %131
  %140 = phi i32 [ %137, %135 ], [ %133, %131 ]
  %141 = load ptr, ptr %11, align 8, !tbaa !49
  %142 = getelementptr inbounds %struct.PointCache, ptr %141, i64 0, i32 19
  %143 = load ptr, ptr %142, align 8, !tbaa !236
  %144 = icmp eq ptr %143, null
  br i1 %144, label %153, label %145

145:                                              ; preds = %139
  %146 = icmp ult i32 %140, %21
  %147 = icmp ugt i32 %140, %23
  %148 = select i1 %146, i1 true, i1 %147
  br i1 %148, label %153, label %149

149:                                              ; preds = %145
  %150 = sub i32 %140, %21
  %151 = zext i32 %150 to i64
  %152 = getelementptr inbounds i8, ptr %143, i64 %151
  store i8 0, ptr %152, align 1, !tbaa !165
  br label %153

153:                                              ; preds = %149, %145, %139
  tail call fastcc void @ptcache_data_free(ptr noundef nonnull %130) #26
  tail call fastcc void @ptcache_extra_free(ptr noundef nonnull %130) #26
  %154 = load ptr, ptr %130, align 8, !tbaa !243
  %155 = load ptr, ptr %11, align 8, !tbaa !49
  %156 = getelementptr inbounds %struct.PointCache, ptr %155, i64 0, i32 20
  tail call void @BLI_freelinkN(ptr noundef nonnull %156, ptr noundef nonnull %130) #24
  br label %159

157:                                              ; preds = %131, %129, %135
  %158 = load ptr, ptr %130, align 8, !tbaa !243
  br label %159

159:                                              ; preds = %157, %153
  %160 = phi ptr [ %154, %153 ], [ %158, %157 ]
  %161 = icmp eq ptr %160, null
  br i1 %161, label %197, label %129, !llvm.loop !257

162:                                              ; preds = %19
  %163 = and i32 %16, 64
  %164 = icmp eq i32 %163, 0
  br i1 %164, label %171, label %165

165:                                              ; preds = %162
  %166 = tail call i32 @BKE_ptcache_id_exist(ptr noundef nonnull %0, i32 noundef %2) #26
  %167 = icmp eq i32 %166, 0
  br i1 %167, label %184, label %168

168:                                              ; preds = %165
  %169 = call fastcc i32 @ptcache_filename(ptr noundef nonnull %0, ptr noundef nonnull %5, i32 noundef %2, i16 noundef signext 1, i16 noundef signext 1) #26
  %170 = call i32 @BLI_delete(ptr noundef nonnull %5, i8 noundef zeroext 0, i8 noundef zeroext 0) #24
  br label %184

171:                                              ; preds = %162
  %172 = getelementptr inbounds %struct.PointCache, ptr %12, i64 0, i32 20
  br label %173

173:                                              ; preds = %177, %171
  %174 = phi ptr [ %172, %171 ], [ %175, %177 ]
  %175 = load ptr, ptr %174, align 8, !tbaa !34
  %176 = icmp eq ptr %175, null
  br i1 %176, label %184, label %177

177:                                              ; preds = %173
  %178 = getelementptr inbounds %struct.PTCacheMem, ptr %175, i64 0, i32 2
  %179 = load i32, ptr %178, align 8, !tbaa !230
  %180 = icmp eq i32 %179, %2
  br i1 %180, label %181, label %173, !llvm.loop !258

181:                                              ; preds = %177
  tail call fastcc void @ptcache_data_free(ptr noundef nonnull %175) #26
  tail call fastcc void @ptcache_extra_free(ptr noundef nonnull %175) #26
  %182 = load ptr, ptr %11, align 8, !tbaa !49
  %183 = getelementptr inbounds %struct.PointCache, ptr %182, i64 0, i32 20
  tail call void @BLI_freelinkN(ptr noundef nonnull %183, ptr noundef nonnull %175) #24
  br label %184

184:                                              ; preds = %173, %181, %165, %168
  %185 = load ptr, ptr %11, align 8, !tbaa !49
  %186 = getelementptr inbounds %struct.PointCache, ptr %185, i64 0, i32 19
  %187 = load ptr, ptr %186, align 8, !tbaa !236
  %188 = icmp eq ptr %187, null
  %189 = icmp ugt i32 %21, %2
  %190 = select i1 %188, i1 true, i1 %189
  %191 = icmp ult i32 %23, %2
  %192 = select i1 %190, i1 true, i1 %191
  br i1 %192, label %197, label %193

193:                                              ; preds = %184
  %194 = sub i32 %2, %21
  %195 = zext i32 %194 to i64
  %196 = getelementptr inbounds i8, ptr %187, i64 %195
  store i8 0, ptr %196, align 1, !tbaa !165
  br label %197

197:                                              ; preds = %159, %107, %126, %119, %184, %193, %100, %95, %92, %19
  call void @BKE_ptcache_update_info(ptr noundef nonnull %0) #26
  br label %198

198:                                              ; preds = %27, %3, %10, %14, %197
  call void @llvm.lifetime.end.p0(i64 1024, ptr nonnull %7) #25
  call void @llvm.lifetime.end.p0(i64 2048, ptr nonnull %6) #25
  call void @llvm.lifetime.end.p0(i64 2048, ptr nonnull %5) #25
  call void @llvm.lifetime.end.p0(i64 1024, ptr nonnull %4) #25
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local i32 @BKE_ptcache_write(ptr noundef %0, i32 noundef %1) local_unnamed_addr #0 {
  %3 = alloca i32, align 4
  %4 = getelementptr inbounds %struct.PTCacheID, ptr %0, i64 0, i32 25
  %5 = load ptr, ptr %4, align 8, !tbaa !49
  %6 = getelementptr inbounds %struct.PTCacheID, ptr %0, i64 0, i32 20
  %7 = load ptr, ptr %6, align 8, !tbaa !53
  %8 = getelementptr inbounds %struct.PTCacheID, ptr %0, i64 0, i32 4
  %9 = load ptr, ptr %8, align 8, !tbaa !44
  %10 = tail call i32 %7(ptr noundef %9, i32 noundef %1) #24
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #25
  store i32 0, ptr %3, align 4, !tbaa !125
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %69, label %12

12:                                               ; preds = %2
  %13 = icmp eq i32 %1, 0
  br i1 %13, label %18, label %14

14:                                               ; preds = %12
  %15 = getelementptr inbounds %struct.PTCacheID, ptr %0, i64 0, i32 10
  %16 = load i32, ptr %15, align 4, !tbaa !60
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %69, label %22

18:                                               ; preds = %12
  %19 = getelementptr inbounds %struct.PTCacheID, ptr %0, i64 0, i32 11
  %20 = load i32, ptr %19, align 8, !tbaa !97
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %69, label %22

22:                                               ; preds = %18, %14
  %23 = call fastcc i32 @ptcache_write_needed(ptr noundef nonnull %0, i32 noundef %1, ptr noundef nonnull %3) #26
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %69, label %25

25:                                               ; preds = %22
  %26 = getelementptr inbounds %struct.PTCacheID, ptr %0, i64 0, i32 15
  %27 = load ptr, ptr %26, align 8, !tbaa !144
  %28 = icmp eq ptr %27, null
  br i1 %28, label %30, label %29

29:                                               ; preds = %25
  tail call fastcc void @ptcache_write_stream(ptr noundef nonnull %0, i32 noundef %1, i32 noundef %10) #26
  br label %39

30:                                               ; preds = %25
  %31 = getelementptr inbounds %struct.PTCacheID, ptr %0, i64 0, i32 12
  %32 = load ptr, ptr %31, align 8, !tbaa !55
  %33 = icmp eq ptr %32, null
  br i1 %33, label %39, label %34

34:                                               ; preds = %30
  %35 = load i32, ptr %3, align 4, !tbaa !125
  %36 = tail call fastcc i32 @ptcache_write(ptr noundef nonnull %0, i32 noundef %1, i32 noundef %35) #26, !range !259
  %37 = icmp eq i32 %36, 0
  %38 = zext i1 %37 to i32
  br label %39

39:                                               ; preds = %30, %34, %29
  %40 = phi i32 [ 1, %29 ], [ %38, %34 ], [ 1, %30 ]
  %41 = getelementptr inbounds %struct.PointCache, ptr %5, i64 0, i32 8
  %42 = load i32, ptr %41, align 8, !tbaa !228
  %43 = sub i32 %1, %42
  %44 = icmp eq i32 %43, 1
  br i1 %44, label %54, label %45

45:                                               ; preds = %39
  %46 = getelementptr inbounds %struct.PointCache, ptr %5, i64 0, i32 5
  %47 = load i32, ptr %46, align 4, !tbaa !234
  %48 = icmp eq i32 %47, %1
  br i1 %48, label %54, label %49

49:                                               ; preds = %45
  br i1 %13, label %68, label %50

50:                                               ; preds = %49
  %51 = getelementptr inbounds %struct.PointCache, ptr %5, i64 0, i32 2
  %52 = load i32, ptr %51, align 8, !tbaa !226
  %53 = or i32 %52, 256
  store i32 %53, ptr %51, align 8, !tbaa !226
  br label %58

54:                                               ; preds = %39, %45
  store i32 %1, ptr %41, align 8, !tbaa !228
  %55 = getelementptr inbounds %struct.PointCache, ptr %5, i64 0, i32 2
  %56 = load i32, ptr %55, align 8, !tbaa !226
  %57 = and i32 %56, -257
  store i32 %57, ptr %55, align 8, !tbaa !226
  br i1 %13, label %68, label %58

58:                                               ; preds = %50, %54
  %59 = getelementptr inbounds %struct.PointCache, ptr %5, i64 0, i32 19
  %60 = load ptr, ptr %59, align 8, !tbaa !236
  %61 = icmp eq ptr %60, null
  br i1 %61, label %68, label %62

62:                                               ; preds = %58
  %63 = getelementptr inbounds %struct.PointCache, ptr %5, i64 0, i32 5
  %64 = load i32, ptr %63, align 4, !tbaa !234
  %65 = sub i32 %1, %64
  %66 = zext i32 %65 to i64
  %67 = getelementptr inbounds i8, ptr %60, i64 %66
  store i8 1, ptr %67, align 1, !tbaa !165
  br label %68

68:                                               ; preds = %49, %62, %58, %54
  tail call void @BKE_ptcache_update_info(ptr noundef nonnull %0) #26
  br label %69

69:                                               ; preds = %22, %2, %14, %18, %68
  %70 = phi i32 [ %40, %68 ], [ 0, %18 ], [ 0, %14 ], [ 0, %2 ], [ 0, %22 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #25
  ret i32 %70
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc noundef i32 @ptcache_write_needed(ptr noundef %0, i32 noundef %1, ptr nocapture noundef writeonly %2) unnamed_addr #0 !PGOFuncName !260 {
  %4 = getelementptr inbounds %struct.PTCacheID, ptr %0, i64 0, i32 25
  %5 = load ptr, ptr %4, align 8, !tbaa !49
  %6 = getelementptr inbounds %struct.PointCache, ptr %5, i64 0, i32 6
  %7 = load i32, ptr %6, align 8, !tbaa !235
  %8 = icmp eq i32 %1, 0
  br i1 %8, label %17, label %9

9:                                                ; preds = %3
  %10 = getelementptr inbounds %struct.PointCache, ptr %5, i64 0, i32 5
  %11 = load i32, ptr %10, align 4, !tbaa !234
  %12 = icmp eq i32 %11, %1
  br i1 %12, label %13, label %22

13:                                               ; preds = %9
  tail call void @BKE_ptcache_id_clear(ptr noundef nonnull %0, i32 noundef 0, i32 noundef %1) #26
  %14 = getelementptr inbounds %struct.PointCache, ptr %5, i64 0, i32 2
  %15 = load i32, ptr %14, align 8, !tbaa !226
  %16 = and i32 %15, -259
  store i32 %16, ptr %14, align 8, !tbaa !226
  br label %87

17:                                               ; preds = %3
  %18 = getelementptr inbounds %struct.PointCache, ptr %5, i64 0, i32 2
  %19 = load i32, ptr %18, align 8, !tbaa !226
  %20 = and i32 %19, 64
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %87, label %27

22:                                               ; preds = %9
  %23 = getelementptr inbounds %struct.PointCache, ptr %5, i64 0, i32 2
  %24 = load i32, ptr %23, align 8, !tbaa !226
  %25 = and i32 %24, 64
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %55, label %31

27:                                               ; preds = %17
  %28 = getelementptr inbounds %struct.PointCache, ptr %5, i64 0, i32 5
  %29 = load i32, ptr %28, align 4, !tbaa !234
  %30 = icmp sgt i32 %29, 0
  br i1 %30, label %87, label %31

31:                                               ; preds = %22, %27
  %32 = phi i32 [ %11, %22 ], [ %29, %27 ]
  %33 = getelementptr inbounds %struct.PointCache, ptr %5, i64 0, i32 5
  %34 = icmp sgt i32 %7, %32
  br i1 %34, label %35, label %43

35:                                               ; preds = %31, %39
  %36 = phi i32 [ %40, %39 ], [ %7, %31 ]
  %37 = tail call i32 @BKE_ptcache_id_exist(ptr noundef %0, i32 noundef %36) #26
  %38 = icmp eq i32 %37, 0
  br i1 %38, label %39, label %43

39:                                               ; preds = %35
  %40 = add nsw i32 %36, -1
  %41 = load i32, ptr %33, align 4, !tbaa !234
  %42 = icmp sgt i32 %40, %41
  br i1 %42, label %35, label %43, !llvm.loop !261

43:                                               ; preds = %35, %39, %31
  %44 = phi i32 [ %7, %31 ], [ %40, %39 ], [ %36, %35 ]
  br label %45

45:                                               ; preds = %50, %43
  %46 = phi i32 [ %44, %43 ], [ %47, %50 ]
  %47 = add nsw i32 %46, -1
  %48 = load i32, ptr %33, align 4, !tbaa !234
  %49 = icmp sgt i32 %47, %48
  br i1 %49, label %50, label %72

50:                                               ; preds = %45
  %51 = tail call i32 @BKE_ptcache_id_exist(ptr noundef %0, i32 noundef %47) #26
  %52 = icmp eq i32 %51, 0
  br i1 %52, label %45, label %53, !llvm.loop !262

53:                                               ; preds = %50
  %54 = load i32, ptr %33, align 4, !tbaa !234
  br label %72

55:                                               ; preds = %22
  %56 = getelementptr inbounds %struct.PointCache, ptr %5, i64 0, i32 20, i32 1
  %57 = load ptr, ptr %56, align 8, !tbaa !242
  %58 = icmp eq ptr %57, null
  br i1 %58, label %87, label %59

59:                                               ; preds = %55
  %60 = getelementptr inbounds %struct.PTCacheMem, ptr %57, i64 0, i32 2
  %61 = load i32, ptr %60, align 8, !tbaa !230
  %62 = getelementptr inbounds %struct.PTCacheMem, ptr %57, i64 0, i32 1
  %63 = load ptr, ptr %62, align 8, !tbaa !245
  %64 = icmp eq ptr %63, null
  br i1 %64, label %68, label %65

65:                                               ; preds = %59
  %66 = getelementptr inbounds %struct.PTCacheMem, ptr %63, i64 0, i32 2
  %67 = load i32, ptr %66, align 8, !tbaa !230
  br label %72

68:                                               ; preds = %59
  %69 = getelementptr inbounds %struct.PointCache, ptr %5, i64 0, i32 3
  %70 = load i32, ptr %69, align 4, !tbaa !101
  %71 = sub nsw i32 %61, %70
  br label %72

72:                                               ; preds = %45, %53, %65, %68
  %73 = phi i32 [ %11, %68 ], [ %11, %65 ], [ %54, %53 ], [ %48, %45 ]
  %74 = phi i32 [ %71, %68 ], [ %67, %65 ], [ %47, %53 ], [ %47, %45 ]
  %75 = phi i32 [ %61, %68 ], [ %61, %65 ], [ %44, %53 ], [ %44, %45 ]
  %76 = icmp sge i32 %75, %73
  %77 = icmp slt i32 %75, %1
  %78 = and i1 %77, %76
  br i1 %78, label %79, label %87

79:                                               ; preds = %72
  %80 = icmp slt i32 %74, %73
  br i1 %80, label %87, label %81

81:                                               ; preds = %79
  %82 = sub nsw i32 %75, %74
  %83 = getelementptr inbounds %struct.PointCache, ptr %5, i64 0, i32 3
  %84 = load i32, ptr %83, align 4, !tbaa !101
  %85 = icmp slt i32 %82, %84
  br i1 %85, label %86, label %87

86:                                               ; preds = %81
  tail call void @BKE_ptcache_id_clear(ptr noundef %0, i32 noundef 1, i32 noundef %75) #26
  store i32 1, ptr %2, align 4, !tbaa !125
  br label %87

87:                                               ; preds = %17, %55, %72, %79, %81, %86, %27, %13
  %88 = phi i32 [ 1, %13 ], [ 1, %27 ], [ 1, %86 ], [ 1, %81 ], [ 1, %79 ], [ 0, %72 ], [ 1, %55 ], [ 0, %17 ]
  ret i32 %88
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @ptcache_write_stream(ptr noundef %0, i32 noundef %1, i32 noundef %2) unnamed_addr #0 !PGOFuncName !263 {
  tail call void @BKE_ptcache_id_clear(ptr noundef %0, i32 noundef 1, i32 noundef %1) #26
  %4 = tail call fastcc ptr @ptcache_file_open(ptr noundef %0, i32 noundef 1, i32 noundef %1) #26
  %5 = icmp eq ptr %4, null
  br i1 %5, label %6, label %12

6:                                                ; preds = %3
  %7 = load i32, ptr getelementptr inbounds (%struct.Global, ptr @G, i64 0, i32 16), align 4, !tbaa !248
  %8 = and i32 %7, 1
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %43, label %10

10:                                               ; preds = %6
  %11 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.66)
  br label %43

12:                                               ; preds = %3
  %13 = getelementptr inbounds %struct.PTCacheID, ptr %0, i64 0, i32 10
  %14 = load i32, ptr %13, align 4, !tbaa !60
  %15 = getelementptr inbounds %struct.PTCacheFile, ptr %4, i64 0, i32 5
  store i32 %14, ptr %15, align 8, !tbaa !264
  %16 = getelementptr inbounds %struct.PTCacheFile, ptr %4, i64 0, i32 3
  store i32 %2, ptr %16, align 8, !tbaa !250
  %17 = getelementptr inbounds %struct.PTCacheID, ptr %0, i64 0, i32 5
  %18 = load i32, ptr %17, align 8, !tbaa !79
  %19 = getelementptr inbounds %struct.PTCacheFile, ptr %4, i64 0, i32 4
  store i32 %18, ptr %19, align 4, !tbaa !249
  %20 = getelementptr inbounds %struct.PTCacheFile, ptr %4, i64 0, i32 6
  store i32 0, ptr %20, align 4, !tbaa !265
  %21 = tail call fastcc i32 @ptcache_file_header_begin_write(ptr noundef nonnull %4) #26, !range !160
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %37, label %23

23:                                               ; preds = %12
  %24 = getelementptr inbounds %struct.PTCacheID, ptr %0, i64 0, i32 23
  %25 = load ptr, ptr %24, align 8, !tbaa !58
  %26 = tail call i32 %25(ptr noundef nonnull %4) #24
  %27 = icmp eq i32 %26, 0
  br i1 %27, label %37, label %28

28:                                               ; preds = %23
  %29 = getelementptr inbounds %struct.PTCacheID, ptr %0, i64 0, i32 15
  %30 = load ptr, ptr %29, align 8, !tbaa !144
  %31 = icmp eq ptr %30, null
  br i1 %31, label %36, label %32

32:                                               ; preds = %28
  %33 = getelementptr inbounds %struct.PTCacheID, ptr %0, i64 0, i32 4
  %34 = load ptr, ptr %33, align 8, !tbaa !44
  %35 = tail call i32 %30(ptr noundef nonnull %4, ptr noundef %34) #24
  br label %36

36:                                               ; preds = %32, %28
  tail call fastcc void @ptcache_file_close(ptr noundef nonnull %4) #26
  br label %43

37:                                               ; preds = %12, %23
  tail call fastcc void @ptcache_file_close(ptr noundef nonnull %4) #26
  %38 = load i32, ptr getelementptr inbounds (%struct.Global, ptr @G, i64 0, i32 16), align 4, !tbaa !248
  %39 = and i32 %38, 1
  %40 = icmp eq i32 %39, 0
  br i1 %40, label %43, label %41

41:                                               ; preds = %37
  %42 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.65)
  br label %43

43:                                               ; preds = %37, %41, %36, %6, %10
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc i32 @ptcache_write(ptr noundef %0, i32 noundef %1, i32 noundef %2) unnamed_addr #0 !PGOFuncName !266 {
  %4 = getelementptr inbounds %struct.PTCacheID, ptr %0, i64 0, i32 25
  %5 = load ptr, ptr %4, align 8, !tbaa !49
  %6 = getelementptr inbounds %struct.PTCacheID, ptr %0, i64 0, i32 20
  %7 = load ptr, ptr %6, align 8, !tbaa !53
  %8 = getelementptr inbounds %struct.PTCacheID, ptr %0, i64 0, i32 4
  %9 = load ptr, ptr %8, align 8, !tbaa !44
  %10 = tail call i32 %7(ptr noundef %9, i32 noundef %1) #24
  %11 = load ptr, ptr @MEM_callocN, align 8, !tbaa !34
  %12 = tail call ptr %11(i64 noundef 176, ptr noundef nonnull @.str.39) #24
  %13 = getelementptr inbounds %struct.PTCacheID, ptr %0, i64 0, i32 22
  %14 = load ptr, ptr %13, align 8, !tbaa !52
  %15 = load ptr, ptr %8, align 8, !tbaa !44
  %16 = tail call i32 %14(ptr noundef %15, i32 noundef %1) #24
  %17 = getelementptr inbounds %struct.PTCacheMem, ptr %12, i64 0, i32 3
  store i32 %16, ptr %17, align 4, !tbaa !217
  %18 = icmp eq i32 %1, 0
  %19 = getelementptr inbounds %struct.PTCacheID, ptr %0, i64 0, i32 10
  %20 = getelementptr inbounds %struct.PTCacheID, ptr %0, i64 0, i32 11
  %21 = select i1 %18, ptr %20, ptr %19
  %22 = load i32, ptr %21, align 4, !tbaa !125
  %23 = getelementptr inbounds %struct.PTCacheMem, ptr %12, i64 0, i32 4
  store i32 %22, ptr %23, align 8, !tbaa !220
  tail call fastcc void @ptcache_data_alloc(ptr noundef %12) #26
  tail call void @BKE_ptcache_mem_pointers_init(ptr noundef %12) #26
  %24 = icmp ne i32 %2, 0
  br i1 %24, label %25, label %45

25:                                               ; preds = %3
  %26 = getelementptr inbounds %struct.PointCache, ptr %5, i64 0, i32 2
  %27 = load i32, ptr %26, align 8, !tbaa !226
  %28 = and i32 %27, 64
  %29 = icmp eq i32 %28, 0
  br i1 %29, label %42, label %30

30:                                               ; preds = %25
  %31 = getelementptr inbounds %struct.PointCache, ptr %5, i64 0, i32 5
  br label %32

32:                                               ; preds = %30, %37
  %33 = phi i32 [ %34, %37 ], [ %1, %30 ]
  %34 = add nsw i32 %33, -1
  %35 = load i32, ptr %31, align 4, !tbaa !234
  %36 = icmp sgt i32 %33, %35
  br i1 %36, label %37, label %40

37:                                               ; preds = %32
  %38 = tail call i32 @BKE_ptcache_id_exist(ptr noundef %0, i32 noundef %34) #26
  %39 = icmp eq i32 %38, 0
  br i1 %39, label %32, label %40, !llvm.loop !267

40:                                               ; preds = %32, %37
  %41 = tail call fastcc ptr @ptcache_disk_frame_to_mem(ptr noundef %0, i32 noundef %34) #26
  br label %45

42:                                               ; preds = %25
  %43 = getelementptr inbounds %struct.PointCache, ptr %5, i64 0, i32 20, i32 1
  %44 = load ptr, ptr %43, align 8, !tbaa !242
  br label %45

45:                                               ; preds = %40, %42, %3
  %46 = phi ptr [ %41, %40 ], [ %44, %42 ], [ null, %3 ]
  %47 = getelementptr inbounds %struct.PTCacheID, ptr %0, i64 0, i32 12
  %48 = load ptr, ptr %47, align 8, !tbaa !55
  %49 = icmp ne ptr %48, null
  %50 = icmp sgt i32 %10, 0
  %51 = select i1 %49, i1 %50, i1 false
  br i1 %51, label %52, label %76

52:                                               ; preds = %45
  %53 = getelementptr inbounds %struct.PTCacheMem, ptr %12, i64 0, i32 7
  %54 = icmp ne ptr %46, null
  %55 = getelementptr inbounds %struct.PTCacheMem, ptr %46, i64 0, i32 7
  br label %56

56:                                               ; preds = %52, %73
  %57 = phi i32 [ 0, %52 ], [ %74, %73 ]
  %58 = load ptr, ptr %47, align 8, !tbaa !55
  %59 = load ptr, ptr %8, align 8, !tbaa !44
  %60 = tail call i32 %58(i32 noundef %57, ptr noundef %59, ptr noundef nonnull %53, i32 noundef %1) #24
  %61 = icmp eq i32 %60, 0
  br i1 %61, label %73, label %62

62:                                               ; preds = %56
  tail call void @BKE_ptcache_mem_pointers_incr(ptr noundef %12) #26
  %63 = icmp eq i32 %60, 2
  %64 = and i1 %24, %63
  %65 = select i1 %64, i1 %54, i1 false
  br i1 %65, label %66, label %73

66:                                               ; preds = %62
  %67 = tail call i32 @BKE_ptcache_mem_pointers_seek(i32 noundef %57, ptr noundef nonnull %46) #26, !range !160
  %68 = icmp eq i32 %67, 0
  br i1 %68, label %73, label %69

69:                                               ; preds = %66
  %70 = load ptr, ptr %47, align 8, !tbaa !55
  %71 = load ptr, ptr %8, align 8, !tbaa !44
  %72 = tail call i32 %70(i32 noundef %57, ptr noundef %71, ptr noundef nonnull %55, i32 noundef %1) #24
  br label %73

73:                                               ; preds = %62, %66, %69, %56
  %74 = add nuw nsw i32 %57, 1
  %75 = icmp eq i32 %74, %10
  br i1 %75, label %76, label %56, !llvm.loop !268

76:                                               ; preds = %73, %45
  %77 = getelementptr inbounds %struct.PTCacheID, ptr %0, i64 0, i32 17
  %78 = load ptr, ptr %77, align 8, !tbaa !91
  %79 = icmp eq ptr %78, null
  br i1 %79, label %82, label %80

80:                                               ; preds = %76
  %81 = load ptr, ptr %8, align 8, !tbaa !44
  tail call void %78(ptr noundef %81, ptr noundef %12, i32 noundef %1) #24
  br label %82

82:                                               ; preds = %80, %76
  %83 = getelementptr inbounds %struct.PTCacheMem, ptr %12, i64 0, i32 2
  store i32 %1, ptr %83, align 8, !tbaa !230
  %84 = getelementptr inbounds %struct.PointCache, ptr %5, i64 0, i32 2
  %85 = load i32, ptr %84, align 8, !tbaa !226
  %86 = and i32 %85, 64
  %87 = icmp eq i32 %86, 0
  br i1 %87, label %98, label %88

88:                                               ; preds = %82
  %89 = tail call fastcc i32 @ptcache_mem_frame_to_disk(ptr noundef nonnull %0, ptr noundef nonnull %12) #26, !range !160
  %90 = xor i32 %89, 1
  tail call fastcc void @ptcache_data_free(ptr noundef nonnull %12) #26
  tail call fastcc void @ptcache_extra_free(ptr noundef nonnull %12) #26
  %91 = load ptr, ptr @MEM_freeN, align 8, !tbaa !34
  tail call void %91(ptr noundef nonnull %12) #24
  %92 = icmp eq ptr %46, null
  br i1 %92, label %100, label %93

93:                                               ; preds = %88
  %94 = tail call fastcc i32 @ptcache_mem_frame_to_disk(ptr noundef nonnull %0, ptr noundef nonnull %46) #26, !range !160
  %95 = xor i32 %94, 1
  %96 = add nuw nsw i32 %95, %90
  tail call fastcc void @ptcache_data_free(ptr noundef nonnull %46) #26
  tail call fastcc void @ptcache_extra_free(ptr noundef nonnull %46) #26
  %97 = load ptr, ptr @MEM_freeN, align 8, !tbaa !34
  tail call void %97(ptr noundef nonnull %46) #24
  br label %100

98:                                               ; preds = %82
  %99 = getelementptr inbounds %struct.PointCache, ptr %5, i64 0, i32 20
  tail call void @BLI_addtail(ptr noundef nonnull %99, ptr noundef nonnull %12) #24
  br label %100

100:                                              ; preds = %88, %93, %98
  %101 = phi i32 [ %96, %93 ], [ %90, %88 ], [ 0, %98 ]
  ret i32 %101
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @BKE_ptcache_update_info(ptr nocapture noundef %0) local_unnamed_addr #0 {
  %2 = alloca [64 x i8], align 16
  %3 = getelementptr inbounds %struct.PTCacheID, ptr %0, i64 0, i32 25
  %4 = load ptr, ptr %3, align 8, !tbaa !49
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %2) #25
  %5 = getelementptr inbounds %struct.PointCache, ptr %4, i64 0, i32 2
  %6 = load i32, ptr %5, align 8, !tbaa !226
  %7 = and i32 %6, 512
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %45, label %9

9:                                                ; preds = %1
  %10 = getelementptr inbounds %struct.PointCache, ptr %4, i64 0, i32 5
  %11 = load i32, ptr %10, align 4, !tbaa !234
  %12 = getelementptr inbounds %struct.PointCache, ptr %4, i64 0, i32 6
  %13 = load i32, ptr %12, align 8, !tbaa !235
  %14 = icmp sgt i32 %11, %13
  br i1 %14, label %42, label %15

15:                                               ; preds = %9, %15
  %16 = phi i32 [ %21, %15 ], [ 0, %9 ]
  %17 = phi i32 [ %22, %15 ], [ %11, %9 ]
  %18 = tail call i32 @BKE_ptcache_id_exist(ptr noundef %0, i32 noundef %17) #26
  %19 = icmp ne i32 %18, 0
  %20 = zext i1 %19 to i32
  %21 = add nuw nsw i32 %16, %20
  %22 = add nsw i32 %17, 1
  %23 = load i32, ptr %12, align 8, !tbaa !235
  %24 = icmp slt i32 %17, %23
  br i1 %24, label %15, label %25, !llvm.loop !269

25:                                               ; preds = %15
  %26 = getelementptr inbounds %struct.PTCacheID, ptr %0, i64 0, i32 5
  %27 = load i32, ptr %26, align 8, !tbaa !79
  %28 = icmp eq i32 %27, 3
  %29 = icmp ne i32 %21, 0
  %30 = select i1 %28, i1 %29, i1 false
  br i1 %30, label %31, label %34

31:                                               ; preds = %25
  %32 = getelementptr inbounds %struct.PointCache, ptr %4, i64 0, i32 17
  %33 = tail call i64 (ptr, i64, ptr, ...) @BLI_snprintf(ptr noundef nonnull %32, i64 noundef 64, ptr noundef nonnull @.str.10, i32 noundef %21) #24
  br label %151

34:                                               ; preds = %25
  br i1 %29, label %35, label %42

35:                                               ; preds = %34
  %36 = getelementptr inbounds %struct.PointCache, ptr %4, i64 0, i32 11
  %37 = load i32, ptr %36, align 4, !tbaa !270
  %38 = icmp eq i32 %37, 0
  br i1 %38, label %42, label %39

39:                                               ; preds = %35
  %40 = getelementptr inbounds %struct.PointCache, ptr %4, i64 0, i32 17
  %41 = tail call i64 (ptr, i64, ptr, ...) @BLI_snprintf(ptr noundef nonnull %40, i64 noundef 64, ptr noundef nonnull @.str.11, i32 noundef %37) #24
  br label %151

42:                                               ; preds = %9, %35, %34
  %43 = getelementptr inbounds %struct.PointCache, ptr %4, i64 0, i32 17
  %44 = tail call ptr @BLI_strncpy(ptr noundef nonnull %43, ptr noundef nonnull @.str.12, i64 noundef 64) #24
  br label %151

45:                                               ; preds = %1
  %46 = and i32 %6, 64
  %47 = icmp eq i32 %46, 0
  br i1 %47, label %84, label %48

48:                                               ; preds = %45
  %49 = getelementptr inbounds %struct.PTCacheID, ptr %0, i64 0, i32 5
  %50 = load i32, ptr %49, align 8, !tbaa !79
  %51 = icmp eq i32 %50, 3
  br i1 %51, label %52, label %65

52:                                               ; preds = %48
  %53 = getelementptr inbounds %struct.PTCacheID, ptr %0, i64 0, i32 20
  %54 = load ptr, ptr %53, align 8, !tbaa !53
  %55 = getelementptr inbounds %struct.PTCacheID, ptr %0, i64 0, i32 4
  %56 = load ptr, ptr %55, align 8, !tbaa !44
  %57 = tail call i32 %54(ptr noundef %56, i32 noundef 0) #24
  %58 = getelementptr inbounds %struct.PointCache, ptr %4, i64 0, i32 11
  %59 = load i32, ptr %58, align 4, !tbaa !270
  %60 = icmp sgt i32 %59, %57
  br i1 %60, label %61, label %63

61:                                               ; preds = %52
  %62 = call i64 (ptr, i64, ptr, ...) @BLI_snprintf(ptr noundef nonnull %2, i64 noundef 64, ptr noundef nonnull @.str.13, i32 noundef %57) #24
  br label %134

63:                                               ; preds = %52
  %64 = call i64 (ptr, i64, ptr, ...) @BLI_snprintf(ptr noundef nonnull %2, i64 noundef 64, ptr noundef nonnull @.str.14, i32 noundef %57) #24
  br label %134

65:                                               ; preds = %48
  %66 = getelementptr inbounds %struct.PointCache, ptr %4, i64 0, i32 5
  %67 = load i32, ptr %66, align 4, !tbaa !234
  %68 = getelementptr inbounds %struct.PointCache, ptr %4, i64 0, i32 6
  %69 = load i32, ptr %68, align 8, !tbaa !235
  %70 = icmp sgt i32 %67, %69
  br i1 %70, label %81, label %71

71:                                               ; preds = %65, %71
  %72 = phi i32 [ %78, %71 ], [ %67, %65 ]
  %73 = phi i32 [ %77, %71 ], [ 0, %65 ]
  %74 = tail call i32 @BKE_ptcache_id_exist(ptr noundef %0, i32 noundef %72) #26
  %75 = icmp ne i32 %74, 0
  %76 = zext i1 %75 to i32
  %77 = add nuw nsw i32 %73, %76
  %78 = add nsw i32 %72, 1
  %79 = load i32, ptr %68, align 8, !tbaa !235
  %80 = icmp slt i32 %72, %79
  br i1 %80, label %71, label %81, !llvm.loop !271

81:                                               ; preds = %71, %65
  %82 = phi i32 [ 0, %65 ], [ %77, %71 ]
  %83 = call i64 (ptr, i64, ptr, ...) @BLI_snprintf(ptr noundef nonnull %2, i64 noundef 64, ptr noundef nonnull @.str.15, i32 noundef %82) #24
  br label %134

84:                                               ; preds = %45
  %85 = getelementptr inbounds %struct.PointCache, ptr %4, i64 0, i32 20
  %86 = load ptr, ptr %85, align 8, !tbaa !34
  %87 = icmp eq ptr %86, null
  br i1 %87, label %125, label %88

88:                                               ; preds = %84, %119
  %89 = phi ptr [ %123, %119 ], [ %86, %84 ]
  %90 = phi float [ %121, %119 ], [ 0.000000e+00, %84 ]
  %91 = phi i32 [ %122, %119 ], [ 0, %84 ]
  br label %92

92:                                               ; preds = %88, %92
  %93 = phi i64 [ 0, %88 ], [ %101, %92 ]
  %94 = phi float [ %90, %88 ], [ %100, %92 ]
  %95 = load ptr, ptr @MEM_allocN_len, align 8, !tbaa !34
  %96 = getelementptr inbounds %struct.PTCacheMem, ptr %89, i64 0, i32 6, i64 %93
  %97 = load ptr, ptr %96, align 8, !tbaa !34
  %98 = tail call i64 %95(ptr noundef %97) #24
  %99 = uitofp i64 %98 to float
  %100 = fadd float %94, %99
  %101 = add nuw nsw i64 %93, 1
  %102 = icmp eq i64 %101, 8
  br i1 %102, label %103, label %92, !llvm.loop !272

103:                                              ; preds = %92
  %104 = getelementptr inbounds %struct.PTCacheMem, ptr %89, i64 0, i32 8
  %105 = load ptr, ptr %104, align 8, !tbaa !34
  %106 = icmp eq ptr %105, null
  br i1 %106, label %119, label %107

107:                                              ; preds = %103, %107
  %108 = phi ptr [ %117, %107 ], [ %105, %103 ]
  %109 = phi float [ %116, %107 ], [ %100, %103 ]
  %110 = load ptr, ptr @MEM_allocN_len, align 8, !tbaa !34
  %111 = getelementptr inbounds %struct.PTCacheExtra, ptr %108, i64 0, i32 4
  %112 = load ptr, ptr %111, align 8, !tbaa !124
  %113 = tail call i64 %110(ptr noundef %112) #24
  %114 = uitofp i64 %113 to float
  %115 = fadd float %109, %114
  %116 = fadd float %115, 3.200000e+01
  %117 = load ptr, ptr %108, align 8, !tbaa !34
  %118 = icmp eq ptr %117, null
  br i1 %118, label %119, label %107, !llvm.loop !273

119:                                              ; preds = %107, %103
  %120 = phi float [ %100, %103 ], [ %116, %107 ]
  %121 = fadd float %120, 1.760000e+02
  %122 = add nuw nsw i32 %91, 1
  %123 = load ptr, ptr %89, align 8, !tbaa !34
  %124 = icmp eq ptr %123, null
  br i1 %124, label %125, label %88, !llvm.loop !274

125:                                              ; preds = %119, %84
  %126 = phi i32 [ 0, %84 ], [ %122, %119 ]
  %127 = phi float [ 0.000000e+00, %84 ], [ %121, %119 ]
  %128 = fcmp ogt float %127, 0x4130000000000000
  %129 = select i1 %128, float 0x4130000000000000, float 1.024000e+03
  %130 = fdiv float %127, %129
  %131 = fpext float %130 to double
  %132 = select i1 %128, ptr @.str.17, ptr @.str.18
  %133 = call i64 (ptr, i64, ptr, ...) @BLI_snprintf(ptr noundef nonnull %2, i64 noundef 64, ptr noundef nonnull @.str.16, i32 noundef %126, double noundef %131, ptr noundef nonnull %132) #24
  br label %134

134:                                              ; preds = %61, %63, %81, %125
  %135 = load i32, ptr %5, align 8, !tbaa !226
  %136 = and i32 %135, 2
  %137 = icmp eq i32 %136, 0
  br i1 %137, label %141, label %138

138:                                              ; preds = %134
  %139 = getelementptr inbounds %struct.PointCache, ptr %4, i64 0, i32 17
  %140 = call i64 (ptr, i64, ptr, ...) @BLI_snprintf(ptr noundef nonnull %139, i64 noundef 64, ptr noundef nonnull @.str.19, ptr noundef nonnull %2) #24
  br label %151

141:                                              ; preds = %134
  %142 = and i32 %135, 256
  %143 = icmp eq i32 %142, 0
  %144 = getelementptr inbounds %struct.PointCache, ptr %4, i64 0, i32 17
  br i1 %143, label %149, label %145

145:                                              ; preds = %141
  %146 = getelementptr inbounds %struct.PointCache, ptr %4, i64 0, i32 8
  %147 = load i32, ptr %146, align 8, !tbaa !228
  %148 = call i64 (ptr, i64, ptr, ...) @BLI_snprintf(ptr noundef nonnull %144, i64 noundef 64, ptr noundef nonnull @.str.20, ptr noundef nonnull %2, i32 noundef %147) #24
  br label %151

149:                                              ; preds = %141
  %150 = call i64 (ptr, i64, ptr, ...) @BLI_snprintf(ptr noundef nonnull %144, i64 noundef 64, ptr noundef nonnull @.str.21, ptr noundef nonnull %2) #24
  br label %151

151:                                              ; preds = %138, %149, %145, %31, %42, %39
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %2) #25
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc i32 @ptcache_path(ptr nocapture noundef readonly %0, ptr noundef %1) unnamed_addr #0 !PGOFuncName !275 {
  %3 = alloca [1024 x i8], align 16
  %4 = getelementptr inbounds %struct.PTCacheID, ptr %0, i64 0, i32 3
  %5 = load ptr, ptr %4, align 8, !tbaa !41
  %6 = icmp eq ptr %5, null
  br i1 %6, label %20, label %7

7:                                                ; preds = %2
  %8 = getelementptr inbounds %struct.ID, ptr %5, i64 0, i32 3
  %9 = load ptr, ptr %8, align 8, !tbaa !276
  %10 = icmp eq ptr %9, null
  br i1 %10, label %20, label %11

11:                                               ; preds = %7
  %12 = getelementptr inbounds %struct.PTCacheID, ptr %0, i64 0, i32 25
  %13 = load ptr, ptr %12, align 8, !tbaa !49
  %14 = getelementptr inbounds %struct.PointCache, ptr %13, i64 0, i32 2
  %15 = load i32, ptr %14, align 8, !tbaa !226
  %16 = and i32 %15, 2048
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %18, label %20

18:                                               ; preds = %11
  %19 = getelementptr inbounds %struct.Library, ptr %9, i64 0, i32 4
  br label %28

20:                                               ; preds = %2, %11, %7
  %21 = phi i1 [ true, %11 ], [ false, %7 ], [ false, %2 ]
  %22 = load ptr, ptr @G, align 8, !tbaa !209
  %23 = getelementptr inbounds %struct.Main, ptr %22, i64 0, i32 2
  %24 = getelementptr inbounds %struct.PTCacheID, ptr %0, i64 0, i32 25
  %25 = load ptr, ptr %24, align 8, !tbaa !49
  %26 = getelementptr inbounds %struct.PointCache, ptr %25, i64 0, i32 2
  %27 = load i32, ptr %26, align 8, !tbaa !226
  br label %28

28:                                               ; preds = %20, %18
  %29 = phi i32 [ %15, %18 ], [ %27, %20 ]
  %30 = phi ptr [ %13, %18 ], [ %25, %20 ]
  %31 = phi i1 [ true, %18 ], [ %21, %20 ]
  %32 = phi ptr [ %19, %18 ], [ %23, %20 ]
  %33 = and i32 %29, 512
  %34 = icmp eq i32 %33, 0
  br i1 %34, label %44, label %35

35:                                               ; preds = %28
  %36 = getelementptr inbounds %struct.PointCache, ptr %30, i64 0, i32 18
  %37 = tail call ptr @strcpy(ptr noundef nonnull dereferenceable(1) %1, ptr noundef nonnull dereferenceable(1) %36) #24
  %38 = tail call zeroext i8 @BLI_path_is_rel(ptr noundef %1) #24
  %39 = icmp eq i8 %38, 0
  br i1 %39, label %42, label %40

40:                                               ; preds = %35
  %41 = tail call zeroext i8 @BLI_path_abs(ptr noundef %1, ptr noundef nonnull %32) #24
  br label %42

42:                                               ; preds = %40, %35
  %43 = tail call i32 @BLI_add_slash(ptr noundef %1) #24
  br label %62

44:                                               ; preds = %28
  %45 = load i8, ptr getelementptr inbounds (%struct.Global, ptr @G, i64 0, i32 3), align 8, !tbaa !277
  %46 = icmp ne i8 %45, 0
  %47 = or i1 %31, %46
  br i1 %47, label %48, label %58

48:                                               ; preds = %44
  call void @llvm.lifetime.start.p0(i64 1024, ptr nonnull %3) #25
  call void @BLI_split_file_part(ptr noundef nonnull %32, ptr noundef nonnull %3, i64 noundef 1024) #24
  %49 = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %3) #27
  %50 = icmp ugt i64 %49, 6
  br i1 %50, label %51, label %54

51:                                               ; preds = %48
  %52 = add i64 %49, -6
  %53 = getelementptr inbounds [1024 x i8], ptr %3, i64 0, i64 %52
  store i8 0, ptr %53, align 1, !tbaa !165
  br label %54

54:                                               ; preds = %51, %48
  %55 = call i64 (ptr, i64, ptr, ...) @BLI_snprintf(ptr noundef %1, i64 noundef 1024, ptr noundef nonnull @.str.41, ptr noundef nonnull %3) #24
  %56 = call zeroext i8 @BLI_path_abs(ptr noundef %1, ptr noundef nonnull %32) #24
  %57 = call i32 @BLI_add_slash(ptr noundef %1) #24
  call void @llvm.lifetime.end.p0(i64 1024, ptr nonnull %3) #25
  br label %62

58:                                               ; preds = %44
  %59 = tail call ptr @BLI_temp_dir_session() #24
  %60 = tail call i64 (ptr, i64, ptr, ...) @BLI_snprintf(ptr noundef %1, i64 noundef 1024, ptr noundef nonnull @.str.42, ptr noundef %59) #24
  %61 = tail call i32 @BLI_add_slash(ptr noundef %1) #24
  br label %62

62:                                               ; preds = %58, %54, %42
  %63 = phi i32 [ %43, %42 ], [ %57, %54 ], [ %61, %58 ]
  ret i32 %63
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc i32 @ptcache_filename(ptr nocapture noundef %0, ptr noundef %1, i32 noundef %2, i16 noundef signext %3, i16 noundef signext %4) unnamed_addr #0 !PGOFuncName !278 {
  store i8 0, ptr %1, align 1, !tbaa !165
  %6 = load i8, ptr getelementptr inbounds (%struct.Global, ptr @G, i64 0, i32 3), align 8, !tbaa !277
  %7 = icmp eq i8 %6, 0
  br i1 %7, label %8, label %15

8:                                                ; preds = %5
  %9 = getelementptr inbounds %struct.PTCacheID, ptr %0, i64 0, i32 25
  %10 = load ptr, ptr %9, align 8, !tbaa !49
  %11 = getelementptr inbounds %struct.PointCache, ptr %10, i64 0, i32 2
  %12 = load i32, ptr %11, align 8, !tbaa !226
  %13 = and i32 %12, 512
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %99, label %15

15:                                               ; preds = %8, %5
  %16 = icmp eq i16 %3, 0
  br i1 %16, label %21, label %17

17:                                               ; preds = %15
  %18 = tail call fastcc i32 @ptcache_path(ptr noundef %0, ptr noundef nonnull %1) #26
  %19 = sext i32 %18 to i64
  %20 = getelementptr inbounds i8, ptr %1, i64 %19
  br label %21

21:                                               ; preds = %17, %15
  %22 = phi i32 [ %18, %17 ], [ 0, %15 ]
  %23 = phi ptr [ %20, %17 ], [ %1, %15 ]
  %24 = getelementptr inbounds %struct.PTCacheID, ptr %0, i64 0, i32 25
  %25 = load ptr, ptr %24, align 8, !tbaa !49
  %26 = getelementptr inbounds %struct.PointCache, ptr %25, i64 0, i32 15
  %27 = load i8, ptr %26, align 8, !tbaa !165
  %28 = icmp eq i8 %27, 0
  br i1 %28, label %29, label %52

29:                                               ; preds = %21
  %30 = getelementptr inbounds %struct.PointCache, ptr %25, i64 0, i32 2
  %31 = load i32, ptr %30, align 8, !tbaa !226
  %32 = and i32 %31, 512
  %33 = icmp eq i32 %32, 0
  br i1 %33, label %34, label %52

34:                                               ; preds = %29
  %35 = getelementptr inbounds %struct.PTCacheID, ptr %0, i64 0, i32 3
  %36 = load ptr, ptr %35, align 8, !tbaa !41
  %37 = getelementptr inbounds %struct.ID, ptr %36, i64 0, i32 4, i64 2
  %38 = load i8, ptr %37, align 1, !tbaa !165
  %39 = icmp eq i8 %38, 0
  br i1 %39, label %60, label %40

40:                                               ; preds = %34, %40
  %41 = phi i8 [ %50, %40 ], [ %38, %34 ]
  %42 = phi ptr [ %48, %40 ], [ %23, %34 ]
  %43 = phi ptr [ %46, %40 ], [ %37, %34 ]
  %44 = phi i32 [ %49, %40 ], [ %22, %34 ]
  %45 = zext i8 %41 to i32
  %46 = getelementptr inbounds i8, ptr %43, i64 1
  %47 = tail call i64 (ptr, i64, ptr, ...) @BLI_snprintf(ptr noundef %42, i64 noundef 2048, ptr noundef nonnull @.str.43, i32 noundef %45) #24
  %48 = getelementptr inbounds i8, ptr %42, i64 2
  %49 = add nsw i32 %44, 2
  %50 = load i8, ptr %46, align 1, !tbaa !165
  %51 = icmp eq i8 %50, 0
  br i1 %51, label %60, label %40, !llvm.loop !279

52:                                               ; preds = %29, %21
  %53 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %26) #27
  %54 = trunc i64 %53 to i32
  %55 = tail call ptr @strcpy(ptr noundef nonnull dereferenceable(1) %23, ptr noundef nonnull dereferenceable(1) %26) #24
  %56 = shl i64 %53, 32
  %57 = ashr exact i64 %56, 32
  %58 = getelementptr inbounds i8, ptr %23, i64 %57
  %59 = add nsw i32 %22, %54
  br label %60

60:                                               ; preds = %40, %34, %52
  %61 = phi i32 [ %59, %52 ], [ %22, %34 ], [ %49, %40 ]
  %62 = phi ptr [ %58, %52 ], [ %23, %34 ], [ %48, %40 ]
  %63 = icmp eq i16 %4, 0
  br i1 %63, label %99, label %64

64:                                               ; preds = %60
  %65 = load ptr, ptr %24, align 8, !tbaa !49
  %66 = getelementptr inbounds %struct.PointCache, ptr %65, i64 0, i32 12
  %67 = load i32, ptr %66, align 8, !tbaa !61
  %68 = icmp slt i32 %67, 0
  br i1 %68, label %69, label %80

69:                                               ; preds = %64
  %70 = getelementptr inbounds %struct.PTCacheID, ptr %0, i64 0, i32 3
  %71 = load ptr, ptr %70, align 8, !tbaa !41
  %72 = tail call i32 @BKE_object_insert_ptcache(ptr noundef %71) #24
  %73 = getelementptr inbounds %struct.PTCacheID, ptr %0, i64 0, i32 6
  store i32 %72, ptr %73, align 4, !tbaa !63
  %74 = load ptr, ptr %24, align 8, !tbaa !49
  %75 = getelementptr inbounds %struct.PointCache, ptr %74, i64 0, i32 12
  store i32 %72, ptr %75, align 8, !tbaa !61
  %76 = getelementptr inbounds %struct.PointCache, ptr %74, i64 0, i32 2
  %77 = load i32, ptr %76, align 8, !tbaa !226
  %78 = and i32 %77, 512
  %79 = icmp eq i32 %78, 0
  br i1 %79, label %93, label %85

80:                                               ; preds = %64
  %81 = getelementptr inbounds %struct.PointCache, ptr %65, i64 0, i32 2
  %82 = load i32, ptr %81, align 8, !tbaa !226
  %83 = and i32 %82, 512
  %84 = icmp eq i32 %83, 0
  br i1 %84, label %93, label %87

85:                                               ; preds = %69
  %86 = icmp sgt i32 %72, -1
  br i1 %86, label %87, label %91

87:                                               ; preds = %80, %85
  %88 = getelementptr inbounds %struct.PTCacheID, ptr %0, i64 0, i32 6
  %89 = load i32, ptr %88, align 4, !tbaa !63
  %90 = tail call i64 (ptr, i64, ptr, ...) @BLI_snprintf(ptr noundef %62, i64 noundef 2048, ptr noundef nonnull @.str.44, i32 noundef %2, i32 noundef %89) #24
  br label %97

91:                                               ; preds = %85
  %92 = tail call i64 (ptr, i64, ptr, ...) @BLI_snprintf(ptr noundef %62, i64 noundef 2048, ptr noundef nonnull @.str.45, i32 noundef %2) #24
  br label %97

93:                                               ; preds = %80, %69
  %94 = getelementptr inbounds %struct.PTCacheID, ptr %0, i64 0, i32 6
  %95 = load i32, ptr %94, align 4, !tbaa !63
  %96 = tail call i64 (ptr, i64, ptr, ...) @BLI_snprintf(ptr noundef %62, i64 noundef 2048, ptr noundef nonnull @.str.44, i32 noundef %2, i32 noundef %95) #24
  br label %97

97:                                               ; preds = %87, %91, %93
  %98 = add nsw i32 %61, 16
  br label %99

99:                                               ; preds = %60, %97, %8
  %100 = phi i32 [ 0, %8 ], [ %98, %97 ], [ %61, %60 ]
  ret i32 %100
}

; Function Attrs: nofree nounwind optsize
declare noalias noundef ptr @opendir(ptr nocapture noundef readonly) local_unnamed_addr #12

; Function Attrs: optsize
declare i64 @BLI_snprintf(ptr noundef, i64 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @readdir(ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree nounwind optsize willreturn memory(argmem: read)
declare ptr @strstr(ptr noundef, ptr nocapture noundef) local_unnamed_addr #15

; Function Attrs: mustprogress nofree nounwind optsize willreturn memory(argmem: read)
declare i32 @strncmp(ptr nocapture noundef, ptr nocapture noundef, i64 noundef) local_unnamed_addr #15

; Function Attrs: optsize
declare void @BLI_join_dirfile(ptr noundef, i64 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare i32 @BLI_delete(ptr noundef, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: mustprogress nofree nounwind optsize willreturn memory(argmem: read)
declare i64 @strlen(ptr nocapture noundef) local_unnamed_addr #15

; Function Attrs: optsize
declare ptr @BLI_strncpy(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree nounwind optsize willreturn memory(read)
declare i32 @atoi(ptr nocapture noundef) local_unnamed_addr #16

; Function Attrs: nofree nounwind optsize
declare noundef i32 @closedir(ptr nocapture noundef) local_unnamed_addr #12

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @ptcache_data_free(ptr nocapture noundef readonly %0) unnamed_addr #0 !PGOFuncName !280 {
  %2 = getelementptr inbounds %struct.PTCacheMem, ptr %0, i64 0, i32 6
  br label %3

3:                                                ; preds = %1, %10
  %4 = phi i64 [ 0, %1 ], [ %11, %10 ]
  %5 = getelementptr inbounds ptr, ptr %2, i64 %4
  %6 = load ptr, ptr %5, align 8, !tbaa !34
  %7 = icmp eq ptr %6, null
  br i1 %7, label %10, label %8

8:                                                ; preds = %3
  %9 = load ptr, ptr @MEM_freeN, align 8, !tbaa !34
  tail call void %9(ptr noundef nonnull %6) #24
  br label %10

10:                                               ; preds = %3, %8
  %11 = add nuw nsw i64 %4, 1
  %12 = icmp eq i64 %11, 8
  br i1 %12, label %13, label %3, !llvm.loop !281

13:                                               ; preds = %10
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @ptcache_extra_free(ptr noundef %0) unnamed_addr #0 !PGOFuncName !282 {
  %2 = getelementptr inbounds %struct.PTCacheMem, ptr %0, i64 0, i32 8
  %3 = load ptr, ptr %2, align 8, !tbaa !233
  %4 = icmp eq ptr %3, null
  br i1 %4, label %16, label %5

5:                                                ; preds = %1, %12
  %6 = phi ptr [ %13, %12 ], [ %3, %1 ]
  %7 = getelementptr inbounds %struct.PTCacheExtra, ptr %6, i64 0, i32 4
  %8 = load ptr, ptr %7, align 8, !tbaa !124
  %9 = icmp eq ptr %8, null
  br i1 %9, label %12, label %10

10:                                               ; preds = %5
  %11 = load ptr, ptr @MEM_freeN, align 8, !tbaa !34
  tail call void %11(ptr noundef nonnull %8) #24
  br label %12

12:                                               ; preds = %5, %10
  %13 = load ptr, ptr %6, align 8, !tbaa !283
  %14 = icmp eq ptr %13, null
  br i1 %14, label %15, label %5, !llvm.loop !284

15:                                               ; preds = %12
  tail call void @BLI_freelistN(ptr noundef nonnull %2) #24
  br label %16

16:                                               ; preds = %15, %1
  ret void
}

; Function Attrs: optsize
declare void @BLI_freelistN(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @BLI_freelinkN(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare i32 @BLI_exists(ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @BKE_ptcache_id_time(ptr nocapture noundef %0, ptr noundef %1, float noundef %2, ptr noundef writeonly %3, ptr noundef writeonly %4, ptr noundef writeonly %5) local_unnamed_addr #0 {
  %7 = alloca [1024 x i8], align 16
  %8 = alloca [2048 x i8], align 16
  %9 = alloca [1024 x i8], align 16
  %10 = alloca [7 x i8], align 1
  %11 = getelementptr inbounds %struct.PTCacheID, ptr %0, i64 0, i32 25
  %12 = load ptr, ptr %11, align 8, !tbaa !49
  %13 = icmp eq ptr %5, null
  br i1 %13, label %24, label %14

14:                                               ; preds = %6
  %15 = tail call float @BKE_scene_frame_get(ptr noundef %1) #24
  %16 = getelementptr inbounds %struct.Scene, ptr %1, i64 0, i32 22, i32 5
  %17 = load i32, ptr %16, align 8, !tbaa !285
  %18 = sitofp i32 %17 to float
  %19 = fadd float %18, 1.000000e+00
  %20 = tail call float @BKE_scene_frame_get_from_ctime(ptr noundef %1, float noundef %19) #24
  %21 = fsub float %20, %15
  %22 = fcmp ogt float %21, 0.000000e+00
  %23 = select i1 %22, float %21, float 0.000000e+00
  store float %23, ptr %5, align 4, !tbaa !116
  br label %24

24:                                               ; preds = %14, %6
  %25 = icmp ne ptr %3, null
  %26 = icmp ne ptr %4, null
  %27 = and i1 %25, %26
  br i1 %27, label %28, label %33

28:                                               ; preds = %24
  %29 = getelementptr inbounds %struct.PointCache, ptr %12, i64 0, i32 5
  %30 = load i32, ptr %29, align 4, !tbaa !234
  store i32 %30, ptr %3, align 4, !tbaa !125
  %31 = getelementptr inbounds %struct.PointCache, ptr %12, i64 0, i32 6
  %32 = load i32, ptr %31, align 8, !tbaa !235
  store i32 %32, ptr %4, align 4, !tbaa !125
  br label %33

33:                                               ; preds = %28, %24
  %34 = getelementptr inbounds %struct.PointCache, ptr %12, i64 0, i32 19
  %35 = load ptr, ptr %34, align 8, !tbaa !236
  %36 = icmp eq ptr %35, null
  br i1 %36, label %54, label %37

37:                                               ; preds = %33
  %38 = load ptr, ptr @MEM_allocN_len, align 8, !tbaa !34
  %39 = tail call i64 %38(ptr noundef nonnull %35) #24
  %40 = getelementptr inbounds %struct.PointCache, ptr %12, i64 0, i32 6
  %41 = load i32, ptr %40, align 8, !tbaa !235
  %42 = getelementptr inbounds %struct.PointCache, ptr %12, i64 0, i32 5
  %43 = load i32, ptr %42, align 4, !tbaa !234
  %44 = add i32 %41, 1
  %45 = sub i32 %44, %43
  %46 = sext i32 %45 to i64
  %47 = icmp eq i64 %39, %46
  br i1 %47, label %51, label %48

48:                                               ; preds = %37
  %49 = load ptr, ptr @MEM_freeN, align 8, !tbaa !34
  %50 = load ptr, ptr %34, align 8, !tbaa !236
  tail call void %49(ptr noundef %50) #24
  store ptr null, ptr %34, align 8, !tbaa !236
  br label %54

51:                                               ; preds = %37
  %52 = load ptr, ptr %34, align 8, !tbaa !236
  %53 = icmp eq ptr %52, null
  br i1 %53, label %54, label %137

54:                                               ; preds = %33, %48, %51
  %55 = getelementptr inbounds %struct.PointCache, ptr %12, i64 0, i32 6
  %56 = load i32, ptr %55, align 8, !tbaa !235
  %57 = getelementptr inbounds %struct.PointCache, ptr %12, i64 0, i32 5
  %58 = load i32, ptr %57, align 4, !tbaa !234
  %59 = icmp sgt i32 %56, %58
  br i1 %59, label %60, label %137

60:                                               ; preds = %54
  %61 = load ptr, ptr @MEM_callocN, align 8, !tbaa !34
  %62 = add i32 %56, 1
  %63 = sub i32 %62, %58
  %64 = sext i32 %63 to i64
  %65 = tail call ptr %61(i64 noundef %64, ptr noundef nonnull @.str.3) #24
  store ptr %65, ptr %34, align 8, !tbaa !236
  %66 = load ptr, ptr %11, align 8, !tbaa !49
  %67 = getelementptr inbounds %struct.PointCache, ptr %66, i64 0, i32 2
  %68 = load i32, ptr %67, align 8, !tbaa !226
  %69 = and i32 %68, 64
  %70 = icmp eq i32 %69, 0
  br i1 %70, label %117, label %71

71:                                               ; preds = %60
  call void @llvm.lifetime.start.p0(i64 1024, ptr nonnull %7) #25
  call void @llvm.lifetime.start.p0(i64 2048, ptr nonnull %8) #25
  call void @llvm.lifetime.start.p0(i64 1024, ptr nonnull %9) #25
  %72 = call fastcc i32 @ptcache_path(ptr noundef nonnull %0, ptr noundef nonnull %7) #26
  %73 = fptosi float %2 to i32
  %74 = call fastcc i32 @ptcache_filename(ptr noundef nonnull %0, ptr noundef nonnull %8, i32 noundef %73, i16 noundef signext 0, i16 noundef signext 0) #26
  %75 = call ptr @opendir(ptr noundef nonnull %7) #26
  %76 = icmp eq ptr %75, null
  br i1 %76, label %136, label %77

77:                                               ; preds = %71
  %78 = getelementptr inbounds %struct.PTCacheID, ptr %0, i64 0, i32 6
  %79 = load i32, ptr %78, align 4, !tbaa !63
  %80 = call i64 (ptr, i64, ptr, ...) @BLI_snprintf(ptr noundef nonnull %9, i64 noundef 1024, ptr noundef nonnull @.str.2, i32 noundef %79) #24
  %81 = call ptr @readdir(ptr noundef nonnull %75) #24
  %82 = icmp eq ptr %81, null
  br i1 %82, label %115, label %83

83:                                               ; preds = %77
  %84 = zext i32 %74 to i64
  br label %85

85:                                               ; preds = %83, %112
  %86 = phi ptr [ %81, %83 ], [ %113, %112 ]
  %87 = getelementptr inbounds %struct.dirent, ptr %86, i64 0, i32 4
  %88 = call ptr @strstr(ptr noundef nonnull dereferenceable(1) %87, ptr noundef nonnull dereferenceable(1) %9) #27
  %89 = icmp eq ptr %88, null
  br i1 %89, label %112, label %90

90:                                               ; preds = %85
  %91 = call i32 @strncmp(ptr noundef nonnull %8, ptr noundef nonnull %87, i64 noundef %84) #27
  %92 = icmp eq i32 %91, 0
  br i1 %92, label %93, label %112

93:                                               ; preds = %90
  %94 = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %87) #27
  call void @llvm.lifetime.start.p0(i64 7, ptr nonnull %10) #25
  %95 = and i64 %94, 4294967280
  %96 = icmp eq i64 %95, 0
  br i1 %96, label %111, label %97

97:                                               ; preds = %93
  %98 = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %87) #27
  %99 = getelementptr i8, ptr %87, i64 %98
  %100 = getelementptr i8, ptr %99, i64 -15
  %101 = call ptr @BLI_strncpy(ptr noundef nonnull %10, ptr noundef %100, i64 noundef 7) #24
  %102 = call i32 @atoi(ptr nocapture noundef nonnull %10) #27
  %103 = icmp ult i32 %102, %58
  %104 = icmp ugt i32 %102, %56
  %105 = or i1 %103, %104
  br i1 %105, label %111, label %106

106:                                              ; preds = %97
  %107 = load ptr, ptr %34, align 8, !tbaa !236
  %108 = sub i32 %102, %58
  %109 = zext i32 %108 to i64
  %110 = getelementptr inbounds i8, ptr %107, i64 %109
  store i8 1, ptr %110, align 1, !tbaa !165
  br label %111

111:                                              ; preds = %97, %106, %93
  call void @llvm.lifetime.end.p0(i64 7, ptr nonnull %10) #25
  br label %112

112:                                              ; preds = %90, %111, %85
  %113 = call ptr @readdir(ptr noundef nonnull %75) #24
  %114 = icmp eq ptr %113, null
  br i1 %114, label %115, label %85, !llvm.loop !286

115:                                              ; preds = %112, %77
  %116 = call i32 @closedir(ptr noundef nonnull %75) #26
  call void @llvm.lifetime.end.p0(i64 1024, ptr nonnull %9) #25
  call void @llvm.lifetime.end.p0(i64 2048, ptr nonnull %8) #25
  call void @llvm.lifetime.end.p0(i64 1024, ptr nonnull %7) #25
  br label %137

117:                                              ; preds = %60
  %118 = getelementptr inbounds %struct.PointCache, ptr %66, i64 0, i32 20
  %119 = load ptr, ptr %118, align 8, !tbaa !34
  %120 = icmp eq ptr %119, null
  br i1 %120, label %137, label %121

121:                                              ; preds = %117, %133
  %122 = phi ptr [ %134, %133 ], [ %119, %117 ]
  %123 = getelementptr inbounds %struct.PTCacheMem, ptr %122, i64 0, i32 2
  %124 = load i32, ptr %123, align 8, !tbaa !230
  %125 = icmp ult i32 %124, %58
  %126 = icmp ugt i32 %124, %56
  %127 = or i1 %125, %126
  br i1 %127, label %133, label %128

128:                                              ; preds = %121
  %129 = load ptr, ptr %34, align 8, !tbaa !236
  %130 = sub i32 %124, %58
  %131 = zext i32 %130 to i64
  %132 = getelementptr inbounds i8, ptr %129, i64 %131
  store i8 1, ptr %132, align 1, !tbaa !165
  br label %133

133:                                              ; preds = %128, %121
  %134 = load ptr, ptr %122, align 8, !tbaa !34
  %135 = icmp eq ptr %134, null
  br i1 %135, label %137, label %121, !llvm.loop !287

136:                                              ; preds = %71
  call void @llvm.lifetime.end.p0(i64 1024, ptr nonnull %9) #25
  call void @llvm.lifetime.end.p0(i64 2048, ptr nonnull %8) #25
  call void @llvm.lifetime.end.p0(i64 1024, ptr nonnull %7) #25
  br label %137

137:                                              ; preds = %133, %117, %115, %51, %54, %136
  ret void
}

; Function Attrs: optsize
declare float @BKE_scene_frame_get(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare float @BKE_scene_frame_get_from_ctime(ptr noundef, float noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef i32 @BKE_ptcache_id_reset(ptr noundef %0, ptr noundef %1, i32 noundef %2) local_unnamed_addr #0 {
  %4 = getelementptr inbounds %struct.PTCacheID, ptr %1, i64 0, i32 25
  %5 = load ptr, ptr %4, align 8, !tbaa !49
  %6 = icmp eq ptr %5, null
  br i1 %6, label %53, label %7

7:                                                ; preds = %3
  switch i32 %2, label %47 [
    i32 0, label %8
    i32 1, label %14
    i32 2, label %18
  ]

8:                                                ; preds = %7
  %9 = getelementptr inbounds %struct.PointCache, ptr %5, i64 0, i32 2
  %10 = load i32, ptr %9, align 8, !tbaa !226
  %11 = and i32 %10, 1
  %12 = icmp eq i32 %11, 0
  %13 = or i32 %10, 2
  store i32 %13, ptr %9, align 8, !tbaa !226
  br i1 %12, label %44, label %47

14:                                               ; preds = %7
  %15 = getelementptr inbounds %struct.PointCache, ptr %5, i64 0, i32 2
  %16 = load i32, ptr %15, align 8, !tbaa !226
  %17 = or i32 %16, 2
  store i32 %17, ptr %15, align 8, !tbaa !226
  br label %47

18:                                               ; preds = %7
  %19 = getelementptr inbounds %struct.PointCache, ptr %5, i64 0, i32 2
  %20 = load i32, ptr %19, align 8, !tbaa !226
  %21 = and i32 %20, 3
  %22 = icmp eq i32 %21, 2
  br i1 %22, label %23, label %25

23:                                               ; preds = %18
  %24 = and i32 %20, -4
  store i32 %24, ptr %19, align 8, !tbaa !226
  br label %25

25:                                               ; preds = %23, %18
  tail call void @BKE_ptcache_invalidate(ptr noundef nonnull %5) #26
  %26 = load i32, ptr %19, align 8, !tbaa !226
  %27 = and i32 %26, -259
  store i32 %27, ptr %19, align 8, !tbaa !226
  %28 = getelementptr inbounds %struct.PTCacheID, ptr %1, i64 0, i32 5
  %29 = load i32, ptr %28, align 8, !tbaa !79
  switch i32 %29, label %42 [
    i32 2, label %30
    i32 0, label %33
    i32 1, label %36
    i32 5, label %39
  ]

30:                                               ; preds = %25
  %31 = getelementptr inbounds %struct.PTCacheID, ptr %1, i64 0, i32 4
  %32 = load ptr, ptr %31, align 8, !tbaa !44
  tail call void @cloth_free_modifier(ptr noundef %32) #24
  br i1 %22, label %43, label %47

33:                                               ; preds = %25
  %34 = getelementptr inbounds %struct.PTCacheID, ptr %1, i64 0, i32 4
  %35 = load ptr, ptr %34, align 8, !tbaa !44
  tail call void @sbFreeSimulation(ptr noundef %35) #24
  br i1 %22, label %43, label %47

36:                                               ; preds = %25
  %37 = getelementptr inbounds %struct.PTCacheID, ptr %1, i64 0, i32 4
  %38 = load ptr, ptr %37, align 8, !tbaa !44
  tail call void @psys_reset(ptr noundef %38, i32 noundef 2) #24
  br i1 %22, label %43, label %47

39:                                               ; preds = %25
  %40 = getelementptr inbounds %struct.PTCacheID, ptr %1, i64 0, i32 4
  %41 = load ptr, ptr %40, align 8, !tbaa !44
  tail call void @dynamicPaint_clearSurface(ptr noundef %0, ptr noundef %41) #24
  br i1 %22, label %43, label %47

42:                                               ; preds = %25
  br i1 %22, label %43, label %47

43:                                               ; preds = %33, %39, %36, %30, %42
  tail call void @BKE_ptcache_id_clear(ptr noundef nonnull %1, i32 noundef 0, i32 noundef 0) #26
  br label %47

44:                                               ; preds = %8
  %45 = getelementptr inbounds %struct.Scene, ptr %0, i64 0, i32 22, i32 5
  %46 = load i32, ptr %45, align 8, !tbaa !285
  tail call void @BKE_ptcache_id_clear(ptr noundef nonnull %1, i32 noundef 3, i32 noundef %46) #26
  br label %47

47:                                               ; preds = %8, %14, %7, %33, %39, %36, %30, %42, %44, %43
  %48 = phi i1 [ false, %44 ], [ true, %43 ], [ true, %33 ], [ true, %39 ], [ true, %36 ], [ true, %30 ], [ true, %42 ], [ false, %7 ], [ false, %14 ], [ false, %8 ]
  %49 = phi i1 [ false, %44 ], [ true, %43 ], [ false, %33 ], [ false, %39 ], [ false, %36 ], [ false, %30 ], [ false, %42 ], [ false, %7 ], [ false, %14 ], [ false, %8 ]
  %50 = phi i32 [ 1, %44 ], [ 0, %43 ], [ 0, %33 ], [ 0, %39 ], [ 0, %36 ], [ 0, %30 ], [ 0, %42 ], [ 0, %7 ], [ 0, %14 ], [ 0, %8 ]
  %51 = or i1 %48, %49
  %52 = select i1 %51, i32 1, i32 %50
  br label %53

53:                                               ; preds = %3, %47
  %54 = phi i32 [ %52, %47 ], [ 0, %3 ]
  ret i32 %54
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define dso_local void @BKE_ptcache_invalidate(ptr noundef %0) local_unnamed_addr #17 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %12, label %3

3:                                                ; preds = %1
  %4 = getelementptr inbounds %struct.PointCache, ptr %0, i64 0, i32 2
  %5 = load i32, ptr %4, align 8, !tbaa !226
  %6 = and i32 %5, -5
  store i32 %6, ptr %4, align 8, !tbaa !226
  %7 = getelementptr inbounds %struct.PointCache, ptr %0, i64 0, i32 4
  store i32 0, ptr %7, align 8, !tbaa !227
  %8 = getelementptr inbounds %struct.PointCache, ptr %0, i64 0, i32 5
  %9 = load i32, ptr %8, align 4, !tbaa !234
  %10 = tail call i32 @llvm.smin.i32(i32 %9, i32 0)
  %11 = getelementptr inbounds %struct.PointCache, ptr %0, i64 0, i32 8
  store i32 %10, ptr %11, align 8, !tbaa !228
  br label %12

12:                                               ; preds = %3, %1
  ret void
}

; Function Attrs: optsize
declare void @cloth_free_modifier(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @sbFreeSimulation(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @psys_reset(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @dynamicPaint_clearSurface(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define dso_local i32 @BKE_ptcache_object_reset(ptr noundef %0, ptr noundef %1, i32 noundef %2) local_unnamed_addr #0 {
  %4 = alloca %struct.PTCacheID, align 8
  call void @llvm.lifetime.start.p0(i64 200, ptr nonnull %4) #25
  %5 = getelementptr inbounds %struct.Object, ptr %1, i64 0, i32 111
  %6 = load ptr, ptr %5, align 8, !tbaa !181
  %7 = icmp eq ptr %6, null
  br i1 %7, label %10, label %8

8:                                                ; preds = %3
  call void @BKE_ptcache_id_from_softbody(ptr noundef nonnull %4, ptr noundef nonnull %1, ptr noundef nonnull %6) #26
  %9 = call i32 @BKE_ptcache_id_reset(ptr noundef %0, ptr noundef nonnull %4, i32 noundef %2) #26, !range !160
  br label %10

10:                                               ; preds = %8, %3
  %11 = phi i32 [ %9, %8 ], [ 0, %3 ]
  %12 = getelementptr inbounds %struct.Object, ptr %1, i64 0, i32 109
  %13 = load ptr, ptr %12, align 8, !tbaa !34
  %14 = icmp eq ptr %13, null
  br i1 %14, label %61, label %15

15:                                               ; preds = %10
  %16 = icmp eq i32 %2, 1
  %17 = getelementptr inbounds %struct.PTCacheID, ptr %4, i64 0, i32 25
  br label %18

18:                                               ; preds = %15, %56
  %19 = phi ptr [ %13, %15 ], [ %59, %56 ]
  %20 = phi i32 [ 0, %15 ], [ %57, %56 ]
  %21 = phi i32 [ %11, %15 ], [ %58, %56 ]
  %22 = getelementptr inbounds %struct.ParticleSystem, ptr %19, i64 0, i32 31
  %23 = load i16, ptr %22, align 4, !tbaa !288
  %24 = and i16 %23, 72
  %25 = icmp eq i16 %24, 0
  br i1 %25, label %26, label %56

26:                                               ; preds = %18
  %27 = getelementptr inbounds %struct.ParticleSystem, ptr %19, i64 0, i32 11
  %28 = load ptr, ptr %27, align 8, !tbaa !289
  %29 = icmp eq ptr %28, null
  br i1 %29, label %46, label %30

30:                                               ; preds = %26
  call void @BKE_ptcache_id_from_cloth(ptr noundef nonnull %4, ptr noundef %1, ptr noundef nonnull %28) #26
  br i1 %16, label %43, label %31

31:                                               ; preds = %30
  %32 = getelementptr inbounds %struct.ParticleSystem, ptr %19, i64 0, i32 2
  %33 = load ptr, ptr %32, align 8, !tbaa !82
  %34 = getelementptr inbounds %struct.ParticleSettings, ptr %33, i64 0, i32 7
  %35 = load i16, ptr %34, align 8, !tbaa !83
  %36 = icmp eq i16 %35, 2
  br i1 %36, label %37, label %43

37:                                               ; preds = %31
  %38 = load ptr, ptr %17, align 8, !tbaa !49
  %39 = getelementptr inbounds %struct.PointCache, ptr %38, i64 0, i32 2
  %40 = load i32, ptr %39, align 8, !tbaa !226
  %41 = and i32 %40, 1
  %42 = icmp eq i32 %41, 0
  br i1 %42, label %43, label %56

43:                                               ; preds = %37, %31, %30
  %44 = call i32 @BKE_ptcache_id_reset(ptr noundef %0, ptr noundef nonnull %4, i32 noundef %2) #26, !range !160
  %45 = or i32 %44, %21
  br label %46

46:                                               ; preds = %26, %43
  %47 = phi i32 [ %45, %43 ], [ %21, %26 ]
  %48 = icmp eq i32 %20, 0
  br i1 %48, label %49, label %56

49:                                               ; preds = %46
  %50 = getelementptr inbounds %struct.ParticleSystem, ptr %19, i64 0, i32 2
  %51 = load ptr, ptr %50, align 8, !tbaa !82
  %52 = icmp eq ptr %51, null
  br i1 %52, label %56, label %53

53:                                               ; preds = %49
  call void @BKE_ptcache_id_from_particles(ptr noundef nonnull %4, ptr noundef %1, ptr noundef nonnull %19) #26
  %54 = call i32 @BKE_ptcache_id_reset(ptr noundef %0, ptr noundef nonnull %4, i32 noundef %2) #26, !range !160
  %55 = or i32 %54, %47
  br label %56

56:                                               ; preds = %37, %18, %46, %49, %53
  %57 = phi i32 [ 0, %53 ], [ 0, %49 ], [ %20, %46 ], [ 1, %18 ], [ 1, %37 ]
  %58 = phi i32 [ %55, %53 ], [ %47, %49 ], [ %47, %46 ], [ %21, %18 ], [ %21, %37 ]
  %59 = load ptr, ptr %19, align 8, !tbaa !34
  %60 = icmp eq ptr %59, null
  br i1 %60, label %61, label %18, !llvm.loop !290

61:                                               ; preds = %56, %10
  %62 = phi i32 [ %11, %10 ], [ %58, %56 ]
  %63 = getelementptr inbounds %struct.Object, ptr %1, i64 0, i32 26
  %64 = load ptr, ptr %63, align 8, !tbaa !34
  %65 = icmp eq ptr %64, null
  br i1 %65, label %112, label %66

66:                                               ; preds = %61, %108
  %67 = phi ptr [ %110, %108 ], [ %64, %61 ]
  %68 = phi i32 [ %109, %108 ], [ %62, %61 ]
  %69 = getelementptr inbounds %struct.ModifierData, ptr %67, i64 0, i32 2
  %70 = load i32, ptr %69, align 8, !tbaa !183
  %71 = icmp eq i32 %70, 22
  br i1 %71, label %72, label %76

72:                                               ; preds = %66
  call void @BKE_ptcache_id_from_cloth(ptr noundef nonnull %4, ptr noundef %1, ptr noundef nonnull %67) #26
  %73 = call i32 @BKE_ptcache_id_reset(ptr noundef %0, ptr noundef nonnull %4, i32 noundef %2) #26, !range !160
  %74 = or i32 %73, %68
  %75 = load i32, ptr %69, align 8, !tbaa !183
  br label %76

76:                                               ; preds = %72, %66
  %77 = phi i32 [ %75, %72 ], [ %70, %66 ]
  %78 = phi i32 [ %74, %72 ], [ %68, %66 ]
  %79 = icmp eq i32 %77, 31
  br i1 %79, label %80, label %89

80:                                               ; preds = %76
  %81 = getelementptr inbounds %struct.SmokeModifierData, ptr %67, i64 0, i32 5
  %82 = load i32, ptr %81, align 4, !tbaa !184
  %83 = and i32 %82, 1
  %84 = icmp eq i32 %83, 0
  br i1 %84, label %108, label %85

85:                                               ; preds = %80
  call void @BKE_ptcache_id_from_smoke(ptr noundef nonnull %4, ptr noundef %1, ptr noundef nonnull %67) #26
  %86 = call i32 @BKE_ptcache_id_reset(ptr noundef %0, ptr noundef nonnull %4, i32 noundef %2) #26, !range !160
  %87 = or i32 %86, %78
  %88 = load i32, ptr %69, align 8, !tbaa !183
  br label %89

89:                                               ; preds = %85, %76
  %90 = phi i32 [ %77, %76 ], [ %88, %85 ]
  %91 = phi i32 [ %78, %76 ], [ %87, %85 ]
  %92 = icmp eq i32 %90, 40
  br i1 %92, label %93, label %108

93:                                               ; preds = %89
  %94 = getelementptr inbounds %struct.DynamicPaintModifierData, ptr %67, i64 0, i32 1
  %95 = load ptr, ptr %94, align 8, !tbaa !185
  %96 = icmp eq ptr %95, null
  br i1 %96, label %108, label %97

97:                                               ; preds = %93
  %98 = getelementptr inbounds %struct.DynamicPaintCanvasSettings, ptr %95, i64 0, i32 2
  %99 = load ptr, ptr %98, align 8, !tbaa !34
  %100 = icmp eq ptr %99, null
  br i1 %100, label %108, label %101

101:                                              ; preds = %97, %101
  %102 = phi ptr [ %106, %101 ], [ %99, %97 ]
  %103 = phi i32 [ %105, %101 ], [ %91, %97 ]
  call void @BKE_ptcache_id_from_dynamicpaint(ptr noundef nonnull %4, ptr noundef %1, ptr noundef nonnull %102) #26
  %104 = call i32 @BKE_ptcache_id_reset(ptr noundef %0, ptr noundef nonnull %4, i32 noundef %2) #26, !range !160
  %105 = or i32 %104, %103
  %106 = load ptr, ptr %102, align 8, !tbaa !34
  %107 = icmp eq ptr %106, null
  br i1 %107, label %108, label %101, !llvm.loop !291

108:                                              ; preds = %101, %80, %97, %93, %89
  %109 = phi i32 [ %91, %89 ], [ %91, %93 ], [ %91, %97 ], [ %78, %80 ], [ %105, %101 ]
  %110 = load ptr, ptr %67, align 8, !tbaa !34
  %111 = icmp eq ptr %110, null
  br i1 %111, label %112, label %66, !llvm.loop !292

112:                                              ; preds = %108, %61
  %113 = phi i32 [ %62, %61 ], [ %109, %108 ]
  %114 = getelementptr inbounds %struct.Scene, ptr %0, i64 0, i32 47
  %115 = load ptr, ptr %114, align 8, !tbaa !189
  %116 = icmp eq ptr %115, null
  br i1 %116, label %135, label %117

117:                                              ; preds = %112
  %118 = getelementptr inbounds %struct.Object, ptr %1, i64 0, i32 128
  %119 = load ptr, ptr %118, align 8, !tbaa !173
  %120 = icmp eq ptr %119, null
  br i1 %120, label %121, label %125

121:                                              ; preds = %117
  %122 = getelementptr inbounds %struct.Object, ptr %1, i64 0, i32 129
  %123 = load ptr, ptr %122, align 8, !tbaa !293
  %124 = icmp eq ptr %123, null
  br i1 %124, label %135, label %129

125:                                              ; preds = %117
  %126 = getelementptr inbounds %struct.RigidBodyOb, ptr %119, i64 0, i32 4
  %127 = load i32, ptr %126, align 4, !tbaa !294
  %128 = or i32 %127, 4
  store i32 %128, ptr %126, align 4, !tbaa !294
  br label %129

129:                                              ; preds = %121, %125
  call void @BKE_ptcache_id_from_rigidbody(ptr noundef nonnull %4, ptr noundef nonnull %1, ptr noundef nonnull %115) #26
  %130 = getelementptr inbounds %struct.PTCacheID, ptr %4, i64 0, i32 25
  %131 = load ptr, ptr %130, align 8, !tbaa !49
  %132 = getelementptr inbounds %struct.PointCache, ptr %131, i64 0, i32 2
  %133 = load i32, ptr %132, align 8, !tbaa !226
  %134 = or i32 %133, 2
  store i32 %134, ptr %132, align 8, !tbaa !226
  br label %135

135:                                              ; preds = %129, %121, %112
  %136 = getelementptr inbounds %struct.Object, ptr %1, i64 0, i32 3
  %137 = load i16, ptr %136, align 8, !tbaa !295
  %138 = icmp eq i16 %137, 25
  br i1 %138, label %139, label %142

139:                                              ; preds = %135
  %140 = getelementptr inbounds %struct.Object, ptr %1, i64 0, i32 18
  %141 = load ptr, ptr %140, align 8, !tbaa !296
  call void @BIK_clear_cache(ptr noundef %141) #24
  br label %142

142:                                              ; preds = %139, %135
  call void @llvm.lifetime.end.p0(i64 200, ptr nonnull %4) #25
  ret i32 %113
}

; Function Attrs: optsize
declare void @BIK_clear_cache(ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @BKE_ptcache_remove() local_unnamed_addr #0 {
  %1 = alloca [1024 x i8], align 16
  %2 = alloca [1024 x i8], align 16
  call void @llvm.lifetime.start.p0(i64 1024, ptr nonnull %1) #25
  call void @llvm.lifetime.start.p0(i64 1024, ptr nonnull %2) #25
  %3 = call fastcc i32 @ptcache_path(ptr noundef null, ptr noundef nonnull %1) #26
  %4 = call i32 @BLI_exists(ptr noundef nonnull %1) #24
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %37, label %6

6:                                                ; preds = %0
  %7 = call ptr @opendir(ptr noundef nonnull %1) #26
  %8 = icmp eq ptr %7, null
  br i1 %8, label %37, label %9

9:                                                ; preds = %6
  %10 = call ptr @readdir(ptr noundef nonnull %7) #24
  %11 = icmp eq ptr %10, null
  br i1 %11, label %12, label %14

12:                                               ; preds = %9
  %13 = call i32 @closedir(ptr noundef nonnull %7) #26
  br label %35

14:                                               ; preds = %9, %28
  %15 = phi ptr [ %30, %28 ], [ %10, %9 ]
  %16 = phi i32 [ %29, %28 ], [ 1, %9 ]
  %17 = getelementptr inbounds %struct.dirent, ptr %15, i64 0, i32 4
  %18 = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %17, ptr noundef nonnull dereferenceable(2) @.str.4) #27
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %28, label %20

20:                                               ; preds = %14
  %21 = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %17, ptr noundef nonnull dereferenceable(3) @.str.5) #27
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %28, label %23

23:                                               ; preds = %20
  %24 = call ptr @strstr(ptr noundef nonnull dereferenceable(1) %17, ptr noundef nonnull dereferenceable(1) @.str.6) #27
  %25 = icmp eq ptr %24, null
  br i1 %25, label %28, label %26

26:                                               ; preds = %23
  call void @BLI_join_dirfile(ptr noundef nonnull %2, i64 noundef 1024, ptr noundef nonnull %1, ptr noundef nonnull %17) #24
  %27 = call i32 @BLI_delete(ptr noundef nonnull %2, i8 noundef zeroext 0, i8 noundef zeroext 0) #24
  br label %28

28:                                               ; preds = %23, %26, %14, %20
  %29 = phi i32 [ %16, %14 ], [ %16, %20 ], [ %16, %26 ], [ 0, %23 ]
  %30 = call ptr @readdir(ptr noundef nonnull %7) #24
  %31 = icmp eq ptr %30, null
  br i1 %31, label %32, label %14, !llvm.loop !297

32:                                               ; preds = %28
  %33 = icmp eq i32 %29, 0
  %34 = call i32 @closedir(ptr noundef nonnull %7) #26
  br i1 %33, label %37, label %35

35:                                               ; preds = %12, %32
  %36 = call i32 @BLI_delete(ptr noundef nonnull %1, i8 noundef zeroext 1, i8 noundef zeroext 0) #24
  br label %37

37:                                               ; preds = %6, %0, %35, %32
  call void @llvm.lifetime.end.p0(i64 1024, ptr nonnull %2) #25
  call void @llvm.lifetime.end.p0(i64 1024, ptr nonnull %1) #25
  ret void
}

; Function Attrs: mustprogress nofree nounwind optsize willreturn memory(argmem: read)
declare i32 @strcmp(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #15

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef ptr @BKE_ptcache_add(ptr noundef %0) local_unnamed_addr #0 {
  %2 = load ptr, ptr @MEM_callocN, align 8, !tbaa !34
  %3 = tail call ptr %2(i64 noundef 1320, ptr noundef nonnull @.str.7) #24
  %4 = getelementptr inbounds %struct.PointCache, ptr %3, i64 0, i32 5
  store i32 1, ptr %4, align 4, !tbaa !234
  %5 = getelementptr inbounds %struct.PointCache, ptr %3, i64 0, i32 6
  store i32 250, ptr %5, align 8, !tbaa !235
  %6 = getelementptr inbounds %struct.PointCache, ptr %3, i64 0, i32 3
  store i32 1, ptr %6, align 4, !tbaa !101
  %7 = getelementptr inbounds %struct.PointCache, ptr %3, i64 0, i32 12
  store i32 -1, ptr %7, align 8, !tbaa !61
  tail call void @BLI_addtail(ptr noundef %0, ptr noundef %3) #24
  ret ptr %3
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @BKE_ptcache_free_mem(ptr noundef %0) local_unnamed_addr #0 {
  %2 = load ptr, ptr %0, align 8, !tbaa !215
  %3 = icmp eq ptr %2, null
  br i1 %3, label %9, label %4

4:                                                ; preds = %1, %4
  %5 = phi ptr [ %6, %4 ], [ %2, %1 ]
  tail call fastcc void @ptcache_data_free(ptr noundef nonnull %5) #26
  tail call fastcc void @ptcache_extra_free(ptr noundef nonnull %5) #26
  %6 = load ptr, ptr %5, align 8, !tbaa !243
  %7 = icmp eq ptr %6, null
  br i1 %7, label %8, label %4, !llvm.loop !298

8:                                                ; preds = %4
  tail call void @BLI_freelistN(ptr noundef nonnull %0) #24
  br label %9

9:                                                ; preds = %8, %1
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @BKE_ptcache_free(ptr noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.PointCache, ptr %0, i64 0, i32 20
  tail call void @BKE_ptcache_free_mem(ptr noundef nonnull %2) #26
  %3 = getelementptr inbounds %struct.PointCache, ptr %0, i64 0, i32 21
  %4 = load ptr, ptr %3, align 8, !tbaa !299
  %5 = icmp eq ptr %4, null
  br i1 %5, label %11, label %6

6:                                                ; preds = %1
  %7 = getelementptr inbounds %struct.PointCache, ptr %0, i64 0, i32 22
  %8 = load ptr, ptr %7, align 8, !tbaa !300
  %9 = icmp eq ptr %8, null
  br i1 %9, label %11, label %10

10:                                               ; preds = %6
  tail call void %8(ptr noundef nonnull %4) #24
  br label %11

11:                                               ; preds = %10, %6, %1
  %12 = getelementptr inbounds %struct.PointCache, ptr %0, i64 0, i32 19
  %13 = load ptr, ptr %12, align 8, !tbaa !236
  %14 = icmp eq ptr %13, null
  br i1 %14, label %17, label %15

15:                                               ; preds = %11
  %16 = load ptr, ptr @MEM_freeN, align 8, !tbaa !34
  tail call void %16(ptr noundef nonnull %13) #24
  br label %17

17:                                               ; preds = %15, %11
  %18 = load ptr, ptr @MEM_freeN, align 8, !tbaa !34
  tail call void %18(ptr noundef nonnull %0) #24
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @BKE_ptcache_free_list(ptr noundef %0) local_unnamed_addr #0 {
  %2 = tail call ptr @BLI_pophead(ptr noundef %0) #24
  %3 = icmp eq ptr %2, null
  br i1 %3, label %8, label %4

4:                                                ; preds = %1, %4
  %5 = phi ptr [ %6, %4 ], [ %2, %1 ]
  tail call void @BKE_ptcache_free(ptr noundef nonnull %5) #26
  %6 = tail call ptr @BLI_pophead(ptr noundef %0) #24
  %7 = icmp eq ptr %6, null
  br i1 %7, label %8, label %4, !llvm.loop !301

8:                                                ; preds = %4, %1
  ret void
}

; Function Attrs: optsize
declare ptr @BLI_pophead(ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @BKE_ptcache_copy_list(ptr noundef %0, ptr nocapture noundef readonly %1, i8 noundef zeroext %2) local_unnamed_addr #0 {
  %4 = load ptr, ptr %1, align 8, !tbaa !215
  tail call fastcc void @BLI_listbase_clear(ptr noundef %0) #26
  %5 = icmp eq ptr %4, null
  br i1 %5, label %11, label %6

6:                                                ; preds = %3, %6
  %7 = phi ptr [ %9, %6 ], [ %4, %3 ]
  %8 = tail call fastcc ptr @ptcache_copy(ptr noundef nonnull %7, i8 noundef zeroext %2) #26
  tail call void @BLI_addtail(ptr noundef %0, ptr noundef %8) #24
  %9 = load ptr, ptr %7, align 8, !tbaa !302
  %10 = icmp eq ptr %9, null
  br i1 %10, label %11, label %6, !llvm.loop !303

11:                                               ; preds = %6, %3
  %12 = load ptr, ptr %0, align 8, !tbaa !215
  ret ptr %12
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable
define internal fastcc void @BLI_listbase_clear(ptr nocapture noundef writeonly %0) unnamed_addr #18 !PGOFuncName !304 {
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, i8 0, i64 16, i1 false)
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @ptcache_copy(ptr noundef %0, i8 noundef zeroext %1) unnamed_addr #0 !PGOFuncName !305 {
  %3 = load ptr, ptr @MEM_dupallocN, align 8, !tbaa !34
  %4 = tail call ptr %3(ptr noundef %0) #24
  %5 = getelementptr inbounds %struct.PointCache, ptr %4, i64 0, i32 20
  tail call fastcc void @BLI_listbase_clear(ptr noundef nonnull %5) #26
  %6 = icmp eq i8 %1, 0
  br i1 %6, label %7, label %13

7:                                                ; preds = %2
  %8 = getelementptr inbounds %struct.PointCache, ptr %4, i64 0, i32 19
  store ptr null, ptr %8, align 8, !tbaa !236
  %9 = getelementptr inbounds %struct.PointCache, ptr %4, i64 0, i32 2
  %10 = load i32, ptr %9, align 8, !tbaa !226
  %11 = and i32 %10, 2624
  store i32 %11, ptr %9, align 8, !tbaa !226
  %12 = getelementptr inbounds %struct.PointCache, ptr %4, i64 0, i32 4
  store i32 0, ptr %12, align 8, !tbaa !227
  br label %46

13:                                               ; preds = %2
  %14 = getelementptr inbounds %struct.PointCache, ptr %0, i64 0, i32 20
  %15 = load ptr, ptr %14, align 8, !tbaa !34
  %16 = icmp eq ptr %15, null
  br i1 %16, label %37, label %17

17:                                               ; preds = %13, %34
  %18 = phi ptr [ %35, %34 ], [ %15, %13 ]
  %19 = load ptr, ptr @MEM_dupallocN, align 8, !tbaa !34
  %20 = tail call ptr %19(ptr noundef nonnull %18) #24
  br label %21

21:                                               ; preds = %17, %31
  %22 = phi i64 [ 0, %17 ], [ %32, %31 ]
  %23 = getelementptr inbounds %struct.PTCacheMem, ptr %20, i64 0, i32 6, i64 %22
  %24 = load ptr, ptr %23, align 8, !tbaa !34
  %25 = icmp eq ptr %24, null
  br i1 %25, label %31, label %26

26:                                               ; preds = %21
  %27 = load ptr, ptr @MEM_dupallocN, align 8, !tbaa !34
  %28 = getelementptr inbounds %struct.PTCacheMem, ptr %18, i64 0, i32 6, i64 %22
  %29 = load ptr, ptr %28, align 8, !tbaa !34
  %30 = tail call ptr %27(ptr noundef %29) #24
  store ptr %30, ptr %23, align 8, !tbaa !34
  br label %31

31:                                               ; preds = %21, %26
  %32 = add nuw nsw i64 %22, 1
  %33 = icmp eq i64 %32, 8
  br i1 %33, label %34, label %21, !llvm.loop !306

34:                                               ; preds = %31
  tail call void @BKE_ptcache_mem_pointers_init(ptr noundef nonnull %18) #26
  tail call void @BLI_addtail(ptr noundef nonnull %5, ptr noundef nonnull %20) #24
  %35 = load ptr, ptr %18, align 8, !tbaa !34
  %36 = icmp eq ptr %35, null
  br i1 %36, label %37, label %17, !llvm.loop !307

37:                                               ; preds = %34, %13
  %38 = getelementptr inbounds %struct.PointCache, ptr %4, i64 0, i32 19
  %39 = load ptr, ptr %38, align 8, !tbaa !236
  %40 = icmp eq ptr %39, null
  br i1 %40, label %46, label %41

41:                                               ; preds = %37
  %42 = load ptr, ptr @MEM_dupallocN, align 8, !tbaa !34
  %43 = getelementptr inbounds %struct.PointCache, ptr %0, i64 0, i32 19
  %44 = load ptr, ptr %43, align 8, !tbaa !236
  %45 = tail call ptr %42(ptr noundef %44) #24
  store ptr %45, ptr %38, align 8, !tbaa !236
  br label %46

46:                                               ; preds = %37, %41, %7
  %47 = getelementptr inbounds %struct.PointCache, ptr %4, i64 0, i32 21
  store ptr null, ptr %47, align 8, !tbaa !299
  ret ptr %4
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @BKE_ptcache_quick_cache_all(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = alloca %struct.PTCacheBaker, align 8
  call void @llvm.lifetime.start.p0(i64 80, ptr nonnull %3) #25
  %4 = getelementptr inbounds %struct.PTCacheBaker, ptr %3, i64 0, i32 2
  store i32 0, ptr %4, align 8, !tbaa !308
  %5 = getelementptr inbounds %struct.PTCacheBaker, ptr %3, i64 0, i32 6
  %6 = getelementptr inbounds %struct.PTCacheBaker, ptr %3, i64 0, i32 3
  store i32 0, ptr %6, align 4, !tbaa !310
  %7 = getelementptr inbounds %struct.PTCacheBaker, ptr %3, i64 0, i32 4
  store i32 0, ptr %7, align 8, !tbaa !311
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %5, i8 0, i64 48, i1 false)
  store ptr %0, ptr %3, align 8, !tbaa !312
  %8 = getelementptr inbounds %struct.PTCacheBaker, ptr %3, i64 0, i32 1
  store ptr %1, ptr %8, align 8, !tbaa !313
  %9 = getelementptr inbounds %struct.Scene, ptr %1, i64 0, i32 40, i32 2
  %10 = load i32, ptr %9, align 8, !tbaa !314
  %11 = getelementptr inbounds %struct.PTCacheBaker, ptr %3, i64 0, i32 5
  store i32 %10, ptr %11, align 4, !tbaa !315
  call void @BKE_ptcache_bake(ptr noundef nonnull %3) #26
  call void @llvm.lifetime.end.p0(i64 80, ptr nonnull %3) #25
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @BKE_ptcache_bake(ptr nocapture noundef readonly %0) local_unnamed_addr #0 {
  %2 = alloca ptr, align 8
  %3 = alloca %struct.ListBase, align 8
  %4 = alloca %struct.ListBase, align 8
  %5 = alloca %struct.ptcache_bake_data, align 8
  %6 = alloca %struct.ListBase, align 8
  %7 = load ptr, ptr %0, align 8, !tbaa !312
  %8 = getelementptr inbounds %struct.PTCacheBaker, ptr %0, i64 0, i32 1
  %9 = load ptr, ptr %8, align 8, !tbaa !313
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %2) #25
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %3) #25
  %10 = getelementptr inbounds %struct.PTCacheBaker, ptr %0, i64 0, i32 6
  %11 = load ptr, ptr %10, align 8, !tbaa !316
  %12 = getelementptr inbounds %struct.Scene, ptr %9, i64 0, i32 22, i32 15
  %13 = load float, ptr %12, align 4, !tbaa !317
  %14 = getelementptr inbounds %struct.Scene, ptr %9, i64 0, i32 22, i32 5
  %15 = load i32, ptr %14, align 8, !tbaa !285
  %16 = getelementptr inbounds %struct.PTCacheBaker, ptr %0, i64 0, i32 2
  %17 = load i32, ptr %16, align 8, !tbaa !308
  %18 = getelementptr inbounds %struct.PTCacheBaker, ptr %0, i64 0, i32 3
  %19 = load i32, ptr %18, align 4, !tbaa !310
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %4) #25
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %5) #25
  %20 = getelementptr inbounds %struct.PTCacheBaker, ptr %0, i64 0, i32 4
  %21 = load i32, ptr %20, align 8, !tbaa !311
  %22 = icmp eq i32 %21, 0
  %23 = getelementptr inbounds %struct.Scene, ptr %9, i64 0, i32 22, i32 6
  %24 = select i1 %22, ptr %14, ptr %23
  %25 = load i32, ptr %24, align 4, !tbaa !125
  %26 = getelementptr inbounds %struct.ptcache_bake_data, ptr %5, i64 0, i32 2
  store i32 %25, ptr %26, align 8, !tbaa !318
  %27 = getelementptr inbounds %struct.PTCacheBaker, ptr %0, i64 0, i32 5
  %28 = load i32, ptr %27, align 4, !tbaa !315
  %29 = getelementptr inbounds %struct.ptcache_bake_data, ptr %5, i64 0, i32 3
  store i32 %28, ptr %29, align 4, !tbaa !320
  %30 = getelementptr inbounds %struct.ptcache_bake_data, ptr %5, i64 0, i32 4
  store ptr %14, ptr %30, align 8, !tbaa !321
  %31 = getelementptr inbounds %struct.ptcache_bake_data, ptr %5, i64 0, i32 6
  store ptr %9, ptr %31, align 8, !tbaa !322
  %32 = getelementptr inbounds %struct.ptcache_bake_data, ptr %5, i64 0, i32 5
  store ptr %7, ptr %32, align 8, !tbaa !323
  store i8 0, ptr getelementptr inbounds (%struct.Global, ptr @G, i64 0, i32 7), align 8, !tbaa !324
  %33 = icmp eq ptr %11, null
  br i1 %33, label %125, label %34

34:                                               ; preds = %1
  %35 = getelementptr inbounds %struct.PTCacheID, ptr %11, i64 0, i32 25
  %36 = load ptr, ptr %35, align 8, !tbaa !49
  %37 = getelementptr inbounds %struct.PointCache, ptr %36, i64 0, i32 2
  %38 = load i32, ptr %37, align 8, !tbaa !226
  %39 = and i32 %38, 1
  %40 = icmp eq i32 %39, 0
  br i1 %40, label %41, label %203

41:                                               ; preds = %34
  %42 = getelementptr inbounds %struct.PTCacheID, ptr %11, i64 0, i32 5
  %43 = load i32, ptr %42, align 8, !tbaa !79
  switch i32 %43, label %91 [
    i32 1, label %44
    i32 4, label %55
  ]

44:                                               ; preds = %41
  %45 = getelementptr inbounds %struct.PTCacheID, ptr %11, i64 0, i32 4
  %46 = load ptr, ptr %45, align 8, !tbaa !44
  %47 = getelementptr inbounds %struct.ParticleSystem, ptr %46, i64 0, i32 2
  %48 = load ptr, ptr %47, align 8, !tbaa !82
  %49 = getelementptr inbounds %struct.ParticleSettings, ptr %48, i64 0, i32 7
  %50 = load i16, ptr %49, align 8, !tbaa !83
  %51 = icmp eq i16 %50, 0
  br i1 %51, label %52, label %91

52:                                               ; preds = %44
  %53 = getelementptr inbounds %struct.PointCache, ptr %36, i64 0, i32 5
  %54 = getelementptr inbounds %struct.PointCache, ptr %36, i64 0, i32 6
  tail call void @psys_get_pointcache_start_end(ptr noundef nonnull %9, ptr noundef nonnull %46, ptr noundef nonnull %53, ptr noundef nonnull %54) #24
  br label %91

55:                                               ; preds = %41
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %6) #25
  %56 = getelementptr inbounds %struct.PTCacheID, ptr %11, i64 0, i32 3
  %57 = load ptr, ptr %56, align 8, !tbaa !41
  call void @BKE_ptcache_ids_from_object(ptr noundef nonnull %6, ptr noundef %57, ptr noundef nonnull %9, i32 noundef 8) #26
  %58 = load ptr, ptr %6, align 8, !tbaa !34
  %59 = icmp eq ptr %58, null
  br i1 %59, label %90, label %60

60:                                               ; preds = %55
  %61 = icmp eq i32 %17, 0
  br label %62

62:                                               ; preds = %60, %87
  %63 = phi ptr [ %58, %60 ], [ %88, %87 ]
  %64 = getelementptr inbounds %struct.PTCacheID, ptr %63, i64 0, i32 5
  %65 = load i32, ptr %64, align 8, !tbaa !79
  %66 = icmp eq i32 %65, 3
  br i1 %66, label %67, label %87

67:                                               ; preds = %62
  %68 = getelementptr inbounds %struct.PTCacheID, ptr %63, i64 0, i32 25
  %69 = load ptr, ptr %68, align 8, !tbaa !49
  %70 = icmp eq ptr %69, null
  br i1 %70, label %87, label %71

71:                                               ; preds = %67
  %72 = getelementptr inbounds %struct.PointCache, ptr %69, i64 0, i32 2
  %73 = load i32, ptr %72, align 8, !tbaa !226
  %74 = and i32 %73, 1
  %75 = icmp eq i32 %74, 0
  br i1 %75, label %76, label %87

76:                                               ; preds = %71
  %77 = and i32 %73, 258
  %78 = or i32 %77, %17
  %79 = icmp eq i32 %78, 0
  br i1 %79, label %87, label %80

80:                                               ; preds = %76
  call void @BKE_ptcache_id_clear(ptr noundef nonnull %63, i32 noundef 0, i32 noundef 0) #26
  br i1 %61, label %87, label %81

81:                                               ; preds = %80
  %82 = load ptr, ptr %68, align 8, !tbaa !49
  %83 = getelementptr inbounds %struct.PointCache, ptr %82, i64 0, i32 2
  %84 = load i32, ptr %83, align 8, !tbaa !226
  %85 = and i32 %84, -10
  %86 = or disjoint i32 %85, 8
  store i32 %86, ptr %83, align 8, !tbaa !226
  br label %87

87:                                               ; preds = %76, %62, %80, %81, %71, %67
  %88 = load ptr, ptr %63, align 8, !tbaa !34
  %89 = icmp eq ptr %88, null
  br i1 %89, label %90, label %62, !llvm.loop !325

90:                                               ; preds = %87, %55
  call void @BLI_freelistN(ptr noundef nonnull %6) #24
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %6) #25
  br label %91

91:                                               ; preds = %41, %44, %52, %90
  %92 = icmp eq i32 %17, 0
  br i1 %92, label %93, label %103

93:                                               ; preds = %91
  %94 = load i32, ptr %37, align 8, !tbaa !226
  %95 = and i32 %94, 258
  %96 = icmp eq i32 %95, 0
  br i1 %96, label %97, label %103

97:                                               ; preds = %93
  %98 = getelementptr inbounds %struct.PointCache, ptr %36, i64 0, i32 8
  %99 = load i32, ptr %98, align 8, !tbaa !228
  %100 = getelementptr inbounds %struct.PointCache, ptr %36, i64 0, i32 5
  %101 = load i32, ptr %100, align 4, !tbaa !234
  %102 = call i32 @llvm.smax.i32(i32 %99, i32 %101)
  br label %114

103:                                              ; preds = %91, %93
  call void @BKE_ptcache_id_clear(ptr noundef nonnull %11, i32 noundef 0, i32 noundef 0) #26
  %104 = getelementptr inbounds %struct.PointCache, ptr %36, i64 0, i32 8
  %105 = load i32, ptr %104, align 8, !tbaa !228
  %106 = getelementptr inbounds %struct.PointCache, ptr %36, i64 0, i32 5
  %107 = load i32, ptr %106, align 4, !tbaa !234
  %108 = call i32 @llvm.smax.i32(i32 %105, i32 %107)
  %109 = load i32, ptr %37, align 8, !tbaa !226
  br i1 %92, label %114, label %110

110:                                              ; preds = %103
  %111 = getelementptr inbounds %struct.PointCache, ptr %36, i64 0, i32 6
  %112 = load i32, ptr %111, align 8, !tbaa !235
  store i32 %112, ptr %26, align 8, !tbaa !318
  %113 = or i32 %109, 8
  br label %121

114:                                              ; preds = %97, %103
  %115 = phi i32 [ %94, %97 ], [ %109, %103 ]
  %116 = phi i32 [ %102, %97 ], [ %108, %103 ]
  %117 = load i32, ptr %26, align 8, !tbaa !318
  %118 = getelementptr inbounds %struct.PointCache, ptr %36, i64 0, i32 6
  %119 = load i32, ptr %118, align 8, !tbaa !235
  %120 = call i32 @llvm.smin.i32(i32 %117, i32 %119)
  store i32 %120, ptr %26, align 8, !tbaa !318
  br label %121

121:                                              ; preds = %114, %110
  %122 = phi i32 [ %115, %114 ], [ %113, %110 ]
  %123 = phi i32 [ %116, %114 ], [ %108, %110 ]
  %124 = and i32 %122, -2
  store i32 %124, ptr %37, align 8, !tbaa !226
  br label %203

125:                                              ; preds = %1
  store ptr %9, ptr %2, align 8, !tbaa !34
  %126 = call ptr @_setlooper_base_step(ptr noundef nonnull %2, ptr noundef null) #24
  %127 = icmp eq ptr %126, null
  br i1 %127, label %203, label %128

128:                                              ; preds = %125
  %129 = icmp eq i32 %19, 0
  %130 = icmp eq i32 %17, 0
  %131 = select i1 %129, i1 %130, i1 false
  %132 = icmp ne i32 %17, 0
  %133 = icmp ne i32 %19, 0
  %134 = select i1 %132, i1 true, i1 %133
  br label %135

135:                                              ; preds = %128, %198
  %136 = phi ptr [ %126, %128 ], [ %201, %198 ]
  %137 = phi ptr [ null, %128 ], [ %200, %198 ]
  %138 = phi i32 [ 300000, %128 ], [ %199, %198 ]
  %139 = getelementptr inbounds %struct.Base, ptr %136, i64 0, i32 7
  %140 = load ptr, ptr %139, align 8, !tbaa !326
  call void @BKE_ptcache_ids_from_object(ptr noundef nonnull %3, ptr noundef %140, ptr noundef %9, i32 noundef 8) #26
  %141 = load ptr, ptr %3, align 8, !tbaa !34
  %142 = icmp eq ptr %141, null
  br i1 %142, label %198, label %143

143:                                              ; preds = %135, %194
  %144 = phi ptr [ %196, %194 ], [ %141, %135 ]
  %145 = phi i32 [ %195, %194 ], [ %138, %135 ]
  %146 = getelementptr inbounds %struct.PTCacheID, ptr %144, i64 0, i32 25
  %147 = load ptr, ptr %146, align 8, !tbaa !49
  %148 = getelementptr inbounds %struct.PointCache, ptr %147, i64 0, i32 2
  %149 = load i32, ptr %148, align 8, !tbaa !226
  %150 = and i32 %149, 1
  %151 = icmp eq i32 %150, 0
  br i1 %151, label %152, label %194

152:                                              ; preds = %143
  %153 = getelementptr inbounds %struct.PTCacheID, ptr %144, i64 0, i32 5
  %154 = load i32, ptr %153, align 8, !tbaa !79
  %155 = icmp eq i32 %154, 1
  br i1 %155, label %156, label %172

156:                                              ; preds = %152
  %157 = getelementptr inbounds %struct.PTCacheID, ptr %144, i64 0, i32 4
  %158 = load ptr, ptr %157, align 8, !tbaa !44
  %159 = getelementptr inbounds %struct.ParticleSystem, ptr %158, i64 0, i32 2
  %160 = load ptr, ptr %159, align 8, !tbaa !82
  %161 = getelementptr inbounds %struct.ParticleSettings, ptr %160, i64 0, i32 7
  %162 = load i16, ptr %161, align 8, !tbaa !83
  %163 = icmp eq i16 %162, 2
  br i1 %163, label %194, label %164

164:                                              ; preds = %156
  %165 = getelementptr inbounds %struct.ParticleSettings, ptr %160, i64 0, i32 11
  %166 = load i16, ptr %165, align 8, !tbaa !87
  %167 = icmp eq i16 %166, 2
  br i1 %167, label %194, label %168

168:                                              ; preds = %164
  %169 = getelementptr inbounds %struct.PointCache, ptr %147, i64 0, i32 5
  %170 = getelementptr inbounds %struct.PointCache, ptr %147, i64 0, i32 6
  call void @psys_get_pointcache_start_end(ptr noundef %9, ptr noundef nonnull %158, ptr noundef nonnull %169, ptr noundef nonnull %170) #24
  %171 = load i32, ptr %148, align 8, !tbaa !226
  br label %172

172:                                              ; preds = %168, %152
  %173 = phi i32 [ %171, %168 ], [ %149, %152 ]
  %174 = and i32 %173, 262
  %175 = icmp eq i32 %174, 4
  %176 = select i1 %175, i1 true, i1 %131
  br i1 %176, label %179, label %177

177:                                              ; preds = %172
  call void @BKE_ptcache_id_clear(ptr noundef nonnull %144, i32 noundef 0, i32 noundef 0) #26
  %178 = load i32, ptr %148, align 8, !tbaa !226
  br label %179

179:                                              ; preds = %172, %177
  %180 = phi i32 [ %173, %172 ], [ %178, %177 ]
  %181 = getelementptr inbounds %struct.PointCache, ptr %147, i64 0, i32 5
  %182 = load i32, ptr %181, align 4, !tbaa !234
  %183 = call i32 @llvm.smin.i32(i32 %145, i32 %182)
  br i1 %134, label %184, label %191

184:                                              ; preds = %179
  %185 = or i32 %180, 8
  br i1 %132, label %186, label %191

186:                                              ; preds = %184
  %187 = load i32, ptr %26, align 8, !tbaa !318
  %188 = getelementptr inbounds %struct.PointCache, ptr %147, i64 0, i32 6
  %189 = load i32, ptr %188, align 8, !tbaa !235
  %190 = call i32 @llvm.smax.i32(i32 %187, i32 %189)
  store i32 %190, ptr %26, align 8, !tbaa !318
  br label %191

191:                                              ; preds = %184, %186, %179
  %192 = phi i32 [ %185, %184 ], [ %185, %186 ], [ %180, %179 ]
  %193 = and i32 %192, -2
  store i32 %193, ptr %148, align 8, !tbaa !226
  br label %194

194:                                              ; preds = %156, %164, %143, %191
  %195 = phi i32 [ %183, %191 ], [ %145, %143 ], [ %145, %164 ], [ %145, %156 ]
  %196 = load ptr, ptr %144, align 8, !tbaa !34
  %197 = icmp eq ptr %196, null
  br i1 %197, label %198, label %143, !llvm.loop !328

198:                                              ; preds = %194, %135
  %199 = phi i32 [ %138, %135 ], [ %195, %194 ]
  %200 = phi ptr [ %137, %135 ], [ %147, %194 ]
  call void @BLI_freelistN(ptr noundef nonnull %3) #24
  %201 = call ptr @_setlooper_base_step(ptr noundef nonnull %2, ptr noundef nonnull %136) #24
  %202 = icmp eq ptr %201, null
  br i1 %202, label %203, label %135, !llvm.loop !329

203:                                              ; preds = %198, %125, %34, %121
  %204 = phi i32 [ %123, %121 ], [ 300000, %34 ], [ 300000, %125 ], [ %199, %198 ]
  %205 = phi ptr [ %36, %121 ], [ %36, %34 ], [ null, %125 ], [ %200, %198 ]
  %206 = phi ptr [ %11, %121 ], [ %11, %34 ], [ null, %125 ], [ null, %198 ]
  store i32 %204, ptr %14, align 8, !tbaa !285
  store float 1.000000e+00, ptr %12, align 4, !tbaa !317
  store i32 0, ptr %5, align 8, !tbaa !330
  %207 = getelementptr inbounds %struct.ptcache_bake_data, ptr %5, i64 0, i32 1
  store i32 0, ptr %207, align 4, !tbaa !331
  call void @WM_cursor_wait(i8 noundef zeroext 1) #24
  %208 = load i8, ptr getelementptr inbounds (%struct.Global, ptr @G, i64 0, i32 8), align 1, !tbaa !332
  %209 = icmp eq i8 %208, 0
  br i1 %209, label %212, label %210

210:                                              ; preds = %203
  %211 = call ptr @ptcache_bake_thread(ptr noundef nonnull %5) #26
  br label %257

212:                                              ; preds = %203
  call void @BLI_init_threads(ptr noundef nonnull %4, ptr noundef nonnull @ptcache_bake_thread, i32 noundef 1) #24
  call void @BLI_insert_thread(ptr noundef nonnull %4, ptr noundef nonnull %5) #24
  %213 = load i32, ptr %207, align 4, !tbaa !331
  %214 = icmp eq i32 %213, 0
  br i1 %214, label %215, label %256

215:                                              ; preds = %212
  %216 = icmp eq i32 %17, 0
  %217 = getelementptr inbounds %struct.PTCacheBaker, ptr %0, i64 0, i32 9
  %218 = getelementptr inbounds %struct.PTCacheBaker, ptr %0, i64 0, i32 11
  %219 = getelementptr inbounds %struct.PTCacheBaker, ptr %0, i64 0, i32 10
  br label %220

220:                                              ; preds = %215, %253
  %221 = phi i32 [ -1, %215 ], [ %241, %253 ]
  %222 = load i32, ptr %14, align 8, !tbaa !285
  br i1 %216, label %232, label %223

223:                                              ; preds = %220
  %224 = sub nsw i32 %222, %204
  %225 = sitofp i32 %224 to float
  %226 = fmul float %225, 1.000000e+02
  %227 = load i32, ptr %26, align 8, !tbaa !318
  %228 = sub nsw i32 %227, %204
  %229 = sitofp i32 %228 to float
  %230 = fdiv float %226, %229
  %231 = fptosi float %230 to i32
  br label %232

232:                                              ; preds = %220, %223
  %233 = phi i32 [ %231, %223 ], [ %222, %220 ]
  %234 = load ptr, ptr %217, align 8, !tbaa !333
  %235 = icmp eq ptr %234, null
  %236 = icmp eq i32 %233, %221
  %237 = select i1 %235, i1 true, i1 %236
  br i1 %237, label %240, label %238

238:                                              ; preds = %232
  %239 = load ptr, ptr %218, align 8, !tbaa !334
  call void %234(ptr noundef %239, i32 noundef %233) #24
  br label %240

240:                                              ; preds = %238, %232
  %241 = phi i32 [ %233, %238 ], [ %221, %232 ]
  call void @PIL_sleep_ms(i32 noundef 200) #24
  %242 = call i32 @blender_test_break() #24
  %243 = icmp eq i32 %242, 0
  %244 = load i32, ptr %5, align 8
  %245 = icmp ne i32 %244, 0
  %246 = select i1 %243, i1 true, i1 %245
  br i1 %246, label %253, label %247

247:                                              ; preds = %240
  store i32 1, ptr %5, align 8, !tbaa !330
  %248 = load ptr, ptr %219, align 8, !tbaa !335
  %249 = icmp eq ptr %248, null
  br i1 %249, label %252, label %250

250:                                              ; preds = %247
  %251 = load ptr, ptr %218, align 8, !tbaa !334
  call void %248(ptr noundef %251) #24
  br label %252

252:                                              ; preds = %250, %247
  call void @WM_cursor_wait(i8 noundef zeroext 1) #24
  br label %253

253:                                              ; preds = %252, %240
  %254 = load i32, ptr %207, align 4, !tbaa !331
  %255 = icmp eq i32 %254, 0
  br i1 %255, label %220, label %256, !llvm.loop !336

256:                                              ; preds = %253, %212
  call void @BLI_end_threads(ptr noundef nonnull %4) #24
  br label %257

257:                                              ; preds = %256, %210
  %258 = icmp eq ptr %206, null
  br i1 %258, label %272, label %259

259:                                              ; preds = %257
  %260 = getelementptr inbounds %struct.PointCache, ptr %205, i64 0, i32 2
  %261 = load i32, ptr %260, align 8, !tbaa !226
  %262 = and i32 %261, -271
  %263 = or disjoint i32 %262, 4
  store i32 %263, ptr %260, align 8, !tbaa !226
  %264 = icmp eq i32 %17, 0
  br i1 %264, label %265, label %266

265:                                              ; preds = %259
  store float %13, ptr %12, align 4, !tbaa !317
  store i32 %15, ptr %14, align 8, !tbaa !285
  br label %327

266:                                              ; preds = %259
  %267 = or i32 %262, 5
  store i32 %267, ptr %260, align 8, !tbaa !226
  %268 = and i32 %261, 64
  %269 = icmp eq i32 %268, 0
  br i1 %269, label %319, label %270

270:                                              ; preds = %266
  %271 = call i32 @BKE_ptcache_write(ptr noundef nonnull %206, i32 noundef 0) #26, !range !160
  br label %319

272:                                              ; preds = %257
  store ptr %9, ptr %2, align 8, !tbaa !34
  %273 = call ptr @_setlooper_base_step(ptr noundef nonnull %2, ptr noundef null) #24
  %274 = icmp eq ptr %273, null
  br i1 %274, label %320, label %275

275:                                              ; preds = %272
  %276 = icmp eq i32 %17, 0
  br label %277

277:                                              ; preds = %275, %316
  %278 = phi ptr [ %273, %275 ], [ %317, %316 ]
  %279 = getelementptr inbounds %struct.Base, ptr %278, i64 0, i32 7
  %280 = load ptr, ptr %279, align 8, !tbaa !326
  call void @BKE_ptcache_ids_from_object(ptr noundef nonnull %3, ptr noundef %280, ptr noundef %9, i32 noundef 8) #26
  %281 = load ptr, ptr %3, align 8, !tbaa !34
  %282 = icmp eq ptr %281, null
  br i1 %282, label %316, label %283

283:                                              ; preds = %277, %313
  %284 = phi ptr [ %314, %313 ], [ %281, %277 ]
  %285 = getelementptr inbounds %struct.PTCacheID, ptr %284, i64 0, i32 5
  %286 = load i32, ptr %285, align 8, !tbaa !79
  %287 = icmp eq i32 %286, 1
  br i1 %287, label %288, label %296

288:                                              ; preds = %283
  %289 = getelementptr inbounds %struct.PTCacheID, ptr %284, i64 0, i32 4
  %290 = load ptr, ptr %289, align 8, !tbaa !44
  %291 = getelementptr inbounds %struct.ParticleSystem, ptr %290, i64 0, i32 2
  %292 = load ptr, ptr %291, align 8, !tbaa !82
  %293 = getelementptr inbounds %struct.ParticleSettings, ptr %292, i64 0, i32 7
  %294 = load i16, ptr %293, align 8, !tbaa !83
  %295 = icmp eq i16 %294, 2
  br i1 %295, label %313, label %296

296:                                              ; preds = %288, %283
  %297 = getelementptr inbounds %struct.PTCacheID, ptr %284, i64 0, i32 25
  %298 = load ptr, ptr %297, align 8, !tbaa !49
  %299 = load i32, ptr %29, align 4, !tbaa !320
  %300 = icmp sgt i32 %299, 1
  %301 = getelementptr inbounds %struct.PointCache, ptr %298, i64 0, i32 2
  %302 = load i32, ptr %301, align 8, !tbaa !226
  %303 = select i1 %300, i32 -11, i32 -267
  %304 = and i32 %302, %303
  %305 = getelementptr inbounds %struct.PointCache, ptr %298, i64 0, i32 2
  %306 = or i32 %304, 4
  store i32 %306, ptr %305, align 8, !tbaa !226
  br i1 %276, label %313, label %307

307:                                              ; preds = %296
  %308 = or i32 %304, 5
  store i32 %308, ptr %305, align 8, !tbaa !226
  %309 = and i32 %302, 64
  %310 = icmp eq i32 %309, 0
  br i1 %310, label %313, label %311

311:                                              ; preds = %307
  %312 = call i32 @BKE_ptcache_write(ptr noundef nonnull %284, i32 noundef 0) #26, !range !160
  br label %313

313:                                              ; preds = %296, %311, %307, %288
  %314 = load ptr, ptr %284, align 8, !tbaa !34
  %315 = icmp eq ptr %314, null
  br i1 %315, label %316, label %283, !llvm.loop !337

316:                                              ; preds = %313, %277
  call void @BLI_freelistN(ptr noundef nonnull %3) #24
  %317 = call ptr @_setlooper_base_step(ptr noundef nonnull %2, ptr noundef nonnull %278) #24
  %318 = icmp eq ptr %317, null
  br i1 %318, label %320, label %277, !llvm.loop !338

319:                                              ; preds = %270, %266
  store float %13, ptr %12, align 4, !tbaa !317
  store i32 %15, ptr %14, align 8, !tbaa !285
  br label %322

320:                                              ; preds = %316, %272
  store float %13, ptr %12, align 4, !tbaa !317
  store i32 %15, ptr %14, align 8, !tbaa !285
  %321 = icmp eq i32 %17, 0
  br i1 %321, label %327, label %322

322:                                              ; preds = %319, %320
  %323 = getelementptr inbounds %struct.Main, ptr %7, i64 0, i32 46
  %324 = load ptr, ptr %323, align 8, !tbaa !211
  %325 = getelementptr inbounds %struct.Scene, ptr %9, i64 0, i32 12
  %326 = load i32, ptr %325, align 8, !tbaa !339
  call void @BKE_scene_update_for_newframe(ptr noundef %324, ptr noundef %7, ptr noundef nonnull %9, i32 noundef %326) #24
  br label %327

327:                                              ; preds = %265, %322, %320
  %328 = load i32, ptr %5, align 8, !tbaa !330
  %329 = icmp eq i32 %328, 0
  br i1 %329, label %331, label %330

330:                                              ; preds = %327
  call void @WM_cursor_wait(i8 noundef zeroext 0) #24
  br label %338

331:                                              ; preds = %327
  %332 = getelementptr inbounds %struct.PTCacheBaker, ptr %0, i64 0, i32 10
  %333 = load ptr, ptr %332, align 8, !tbaa !335
  %334 = icmp eq ptr %333, null
  br i1 %334, label %338, label %335

335:                                              ; preds = %331
  %336 = getelementptr inbounds %struct.PTCacheBaker, ptr %0, i64 0, i32 11
  %337 = load ptr, ptr %336, align 8, !tbaa !334
  call void %333(ptr noundef %337) #24
  br label %338

338:                                              ; preds = %331, %335, %330
  call void @WM_cursor_wait(i8 noundef zeroext 0) #24
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %5) #25
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %4) #25
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %3) #25
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %2) #25
  ret void
}

; Function Attrs: optsize
declare void @psys_get_pointcache_start_end(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @_setlooper_base_step(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @WM_cursor_wait(i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal noalias noundef ptr @ptcache_bake_thread(ptr nocapture noundef %0) #0 !PGOFuncName !340 {
  %2 = alloca [32 x i8], align 16
  %3 = alloca [32 x i8], align 16
  %4 = alloca [32 x i8], align 16
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %2) #25
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %3) #25
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %4) #25
  %5 = tail call double @PIL_check_seconds_timer() #24
  %6 = getelementptr inbounds %struct.ptcache_bake_data, ptr %0, i64 0, i32 4
  %7 = load ptr, ptr %6, align 8, !tbaa !321
  %8 = load i32, ptr %7, align 4, !tbaa !125
  %9 = getelementptr inbounds %struct.ptcache_bake_data, ptr %0, i64 0, i32 2
  %10 = load i32, ptr %9, align 8, !tbaa !318
  %11 = icmp sgt i32 %8, %10
  br i1 %11, label %81, label %12

12:                                               ; preds = %1
  %13 = getelementptr inbounds %struct.ptcache_bake_data, ptr %0, i64 0, i32 5
  %14 = getelementptr inbounds %struct.ptcache_bake_data, ptr %0, i64 0, i32 6
  %15 = getelementptr inbounds %struct.ptcache_bake_data, ptr %0, i64 0, i32 3
  %16 = sub i32 %10, %8
  %17 = add i32 %16, 1
  br label %18

18:                                               ; preds = %12, %59
  %19 = phi i8 [ 0, %12 ], [ %61, %59 ]
  %20 = phi double [ %5, %12 ], [ %60, %59 ]
  %21 = load i32, ptr %0, align 8, !tbaa !330
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %23, label %68

23:                                               ; preds = %18
  %24 = load ptr, ptr @G, align 8, !tbaa !209
  %25 = getelementptr inbounds %struct.Main, ptr %24, i64 0, i32 46
  %26 = load ptr, ptr %25, align 8, !tbaa !211
  %27 = load ptr, ptr %13, align 8, !tbaa !323
  %28 = load ptr, ptr %14, align 8, !tbaa !322
  %29 = getelementptr inbounds %struct.Scene, ptr %28, i64 0, i32 12
  %30 = load i32, ptr %29, align 8, !tbaa !339
  call void @BKE_scene_update_for_newframe(ptr noundef %26, ptr noundef %27, ptr noundef %28, i32 noundef %30) #24
  %31 = load i8, ptr getelementptr inbounds (%struct.Global, ptr @G, i64 0, i32 8), align 1, !tbaa !332
  %32 = icmp eq i8 %31, 0
  br i1 %32, label %38, label %33

33:                                               ; preds = %23
  %34 = load ptr, ptr %6, align 8, !tbaa !321
  %35 = load i32, ptr %34, align 4, !tbaa !125
  %36 = load i32, ptr %9, align 8, !tbaa !318
  %37 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.46, i32 noundef %35, i32 noundef %36) #26
  br label %59

38:                                               ; preds = %23
  %39 = call double @PIL_check_seconds_timer() #24
  %40 = fsub double %39, %20
  %41 = load ptr, ptr %6, align 8, !tbaa !321
  %42 = load i32, ptr %41, align 4, !tbaa !125
  %43 = sub nsw i32 %10, %42
  %44 = sitofp i32 %43 to double
  %45 = fmul double %40, %44
  %46 = load i32, ptr %15, align 4, !tbaa !320
  %47 = sitofp i32 %46 to double
  %48 = fdiv double %45, %47
  %49 = icmp ne i8 %19, 0
  %50 = fcmp ogt double %48, 6.000000e+01
  %51 = select i1 %49, i1 true, i1 %50
  br i1 %51, label %52, label %59

52:                                               ; preds = %38
  call fastcc void @ptcache_dt_to_str(ptr noundef nonnull %3, double noundef %40) #26
  %53 = fsub double %39, %5
  call fastcc void @ptcache_dt_to_str(ptr noundef nonnull %2, double noundef %53) #26
  call fastcc void @ptcache_dt_to_str(ptr noundef nonnull %4, double noundef %48) #26
  %54 = load ptr, ptr %6, align 8, !tbaa !321
  %55 = load i32, ptr %54, align 4, !tbaa !125
  %56 = sub i32 %55, %8
  %57 = add i32 %56, 1
  %58 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.47, ptr noundef nonnull %2, i32 noundef %57, i32 noundef %17, double noundef %40, ptr noundef nonnull %4) #26
  br label %59

59:                                               ; preds = %52, %38, %33
  %60 = phi double [ %20, %33 ], [ %39, %38 ], [ %39, %52 ]
  %61 = phi i8 [ %19, %33 ], [ 0, %38 ], [ 1, %52 ]
  %62 = load i32, ptr %15, align 4, !tbaa !320
  %63 = load ptr, ptr %6, align 8, !tbaa !321
  %64 = load i32, ptr %63, align 4, !tbaa !125
  %65 = add nsw i32 %64, %62
  store i32 %65, ptr %63, align 4, !tbaa !125
  %66 = load i32, ptr %9, align 8, !tbaa !318
  %67 = icmp sgt i32 %65, %66
  br i1 %67, label %68, label %18, !llvm.loop !341

68:                                               ; preds = %18, %59
  %69 = phi i8 [ %19, %18 ], [ %61, %59 ]
  %70 = icmp eq i8 %69, 0
  br i1 %70, label %81, label %71

71:                                               ; preds = %68
  %72 = call double @PIL_check_seconds_timer() #24
  %73 = fsub double %72, %5
  call fastcc void @ptcache_dt_to_str(ptr noundef nonnull %2, double noundef %73) #26
  %74 = load i32, ptr %0, align 8, !tbaa !330
  %75 = icmp eq i32 %74, 0
  %76 = select i1 %75, ptr @.str.50, ptr @.str.49
  %77 = load ptr, ptr %6, align 8, !tbaa !321
  %78 = load i32, ptr %77, align 4, !tbaa !125
  %79 = sub nsw i32 %78, %8
  %80 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.48, ptr noundef nonnull %76, ptr noundef nonnull %2, i32 noundef %79) #26
  br label %81

81:                                               ; preds = %1, %71, %68
  %82 = getelementptr inbounds %struct.ptcache_bake_data, ptr %0, i64 0, i32 1
  store i32 1, ptr %82, align 4, !tbaa !331
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %4) #25
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %3) #25
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %2) #25
  ret ptr null
}

; Function Attrs: optsize
declare void @BLI_init_threads(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @BLI_insert_thread(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @PIL_sleep_ms(i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare i32 @blender_test_break() local_unnamed_addr #2

; Function Attrs: optsize
declare void @BLI_end_threads(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @BKE_scene_update_for_newframe(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @BKE_ptcache_disk_to_mem(ptr noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.PTCacheID, ptr %0, i64 0, i32 25
  %3 = load ptr, ptr %2, align 8, !tbaa !49
  %4 = getelementptr inbounds %struct.PointCache, ptr %3, i64 0, i32 2
  %5 = load i32, ptr %4, align 8, !tbaa !226
  %6 = and i32 %5, 1
  %7 = getelementptr inbounds %struct.PointCache, ptr %3, i64 0, i32 5
  %8 = load i32, ptr %7, align 4, !tbaa !234
  %9 = getelementptr inbounds %struct.PointCache, ptr %3, i64 0, i32 6
  %10 = load i32, ptr %9, align 8, !tbaa !235
  %11 = and i32 %5, -2
  store i32 %11, ptr %4, align 8, !tbaa !226
  tail call void @BKE_ptcache_id_clear(ptr noundef %0, i32 noundef 0, i32 noundef 0) #26
  %12 = load i32, ptr %4, align 8, !tbaa !226
  %13 = or i32 %12, %6
  store i32 %13, ptr %4, align 8, !tbaa !226
  %14 = icmp sgt i32 %8, %10
  br i1 %14, label %25, label %15

15:                                               ; preds = %1, %22
  %16 = phi i32 [ %23, %22 ], [ %8, %1 ]
  %17 = tail call fastcc ptr @ptcache_disk_frame_to_mem(ptr noundef %0, i32 noundef %16) #26
  %18 = icmp eq ptr %17, null
  br i1 %18, label %22, label %19

19:                                               ; preds = %15
  %20 = load ptr, ptr %2, align 8, !tbaa !49
  %21 = getelementptr inbounds %struct.PointCache, ptr %20, i64 0, i32 20
  tail call void @BLI_addtail(ptr noundef nonnull %21, ptr noundef nonnull %17) #24
  br label %22

22:                                               ; preds = %15, %19
  %23 = add i32 %16, 1
  %24 = icmp eq i32 %16, %10
  br i1 %24, label %25, label %15, !llvm.loop !342

25:                                               ; preds = %22, %1
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc noundef ptr @ptcache_disk_frame_to_mem(ptr nocapture noundef %0, i32 noundef %1) unnamed_addr #0 !PGOFuncName !343 {
  %3 = alloca i32, align 4
  %4 = tail call fastcc ptr @ptcache_file_open(ptr noundef %0, i32 noundef 0, i32 noundef %1) #26
  %5 = icmp eq ptr %4, null
  br i1 %5, label %118, label %6

6:                                                ; preds = %2
  %7 = tail call fastcc i32 @ptcache_file_header_begin_read(ptr noundef nonnull %4) #26, !range !160
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %112, label %9

9:                                                ; preds = %6
  %10 = getelementptr inbounds %struct.PTCacheFile, ptr %4, i64 0, i32 4
  %11 = load i32, ptr %10, align 4, !tbaa !249
  %12 = getelementptr inbounds %struct.PTCacheID, ptr %0, i64 0, i32 5
  %13 = load i32, ptr %12, align 8, !tbaa !79
  %14 = icmp eq i32 %11, %13
  br i1 %14, label %15, label %112

15:                                               ; preds = %9
  %16 = getelementptr inbounds %struct.PTCacheID, ptr %0, i64 0, i32 24
  %17 = load ptr, ptr %16, align 8, !tbaa !59
  %18 = tail call i32 %17(ptr noundef nonnull %4) #24
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %112, label %20

20:                                               ; preds = %15
  %21 = load ptr, ptr @MEM_callocN, align 8, !tbaa !34
  %22 = tail call ptr %21(i64 noundef 176, ptr noundef nonnull @.str.39) #24
  %23 = getelementptr inbounds %struct.PTCacheFile, ptr %4, i64 0, i32 3
  %24 = load i32, ptr %23, align 8, !tbaa !250
  %25 = getelementptr inbounds %struct.PTCacheMem, ptr %22, i64 0, i32 3
  store i32 %24, ptr %25, align 4, !tbaa !217
  %26 = getelementptr inbounds %struct.PTCacheFile, ptr %4, i64 0, i32 5
  %27 = load i32, ptr %26, align 8, !tbaa !264
  %28 = getelementptr inbounds %struct.PTCacheMem, ptr %22, i64 0, i32 4
  store i32 %27, ptr %28, align 8, !tbaa !220
  %29 = getelementptr inbounds %struct.PTCacheFile, ptr %4, i64 0, i32 1
  %30 = load i32, ptr %29, align 8, !tbaa !344
  %31 = getelementptr inbounds %struct.PTCacheMem, ptr %22, i64 0, i32 2
  store i32 %30, ptr %31, align 8, !tbaa !230
  tail call fastcc void @ptcache_data_alloc(ptr noundef %22) #26
  %32 = getelementptr inbounds %struct.PTCacheFile, ptr %4, i64 0, i32 6
  %33 = load i32, ptr %32, align 4, !tbaa !265
  %34 = and i32 %33, 65536
  %35 = icmp eq i32 %34, 0
  br i1 %35, label %53, label %36

36:                                               ; preds = %20, %50
  %37 = phi i64 [ %51, %50 ], [ 0, %20 ]
  %38 = load i32, ptr %26, align 8, !tbaa !264
  %39 = trunc i64 %37 to i32
  %40 = shl nuw nsw i32 1, %39
  %41 = and i32 %38, %40
  %42 = icmp eq i32 %41, 0
  br i1 %42, label %50, label %43

43:                                               ; preds = %36
  %44 = load i32, ptr %25, align 4, !tbaa !217
  %45 = getelementptr inbounds [8 x i32], ptr @ptcache_data_size, i64 0, i64 %37
  %46 = load i32, ptr %45, align 4, !tbaa !125
  %47 = mul i32 %46, %44
  %48 = getelementptr inbounds %struct.PTCacheMem, ptr %22, i64 0, i32 6, i64 %37
  %49 = load ptr, ptr %48, align 8, !tbaa !34
  tail call fastcc void @ptcache_file_compressed_read(ptr noundef nonnull %4, ptr noundef %49, i32 noundef %47) #26
  br label %50

50:                                               ; preds = %43, %36
  %51 = add nuw nsw i64 %37, 1
  %52 = icmp eq i64 %51, 8
  br i1 %52, label %67, label %36, !llvm.loop !345

53:                                               ; preds = %20
  tail call void @BKE_ptcache_mem_pointers_init(ptr noundef nonnull %22) #26
  tail call fastcc void @ptcache_file_pointers_init(ptr noundef nonnull %4) #26
  %54 = load i32, ptr %25, align 4, !tbaa !217
  %55 = icmp eq i32 %54, 0
  br i1 %55, label %67, label %56

56:                                               ; preds = %53
  %57 = getelementptr inbounds %struct.PTCacheFile, ptr %4, i64 0, i32 8
  %58 = getelementptr inbounds %struct.PTCacheMem, ptr %22, i64 0, i32 7
  br label %59

59:                                               ; preds = %56, %63
  %60 = phi i32 [ 0, %56 ], [ %64, %63 ]
  %61 = tail call fastcc i32 @ptcache_file_data_read(ptr noundef nonnull %4) #26, !range !160
  %62 = icmp eq i32 %61, 0
  br i1 %62, label %109, label %63

63:                                               ; preds = %59
  tail call fastcc void @ptcache_data_copy(ptr noundef nonnull %57, ptr noundef nonnull %58) #26
  tail call void @BKE_ptcache_mem_pointers_incr(ptr noundef nonnull %22) #26
  %64 = add nuw i32 %60, 1
  %65 = load i32, ptr %25, align 4, !tbaa !217
  %66 = icmp ult i32 %64, %65
  br i1 %66, label %59, label %67, !llvm.loop !346

67:                                               ; preds = %50, %63, %53
  %68 = load i32, ptr %32, align 4, !tbaa !265
  %69 = and i32 %68, 131072
  %70 = icmp eq i32 %69, 0
  br i1 %70, label %111, label %71

71:                                               ; preds = %67
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #25
  store i32 0, ptr %3, align 4, !tbaa !125
  %72 = call fastcc i32 @ptcache_file_read(ptr noundef nonnull %4, ptr noundef nonnull %3, i32 noundef 1, i32 noundef 4) #26, !range !160
  %73 = icmp eq i32 %72, 0
  br i1 %73, label %108, label %74

74:                                               ; preds = %71
  %75 = getelementptr inbounds %struct.PTCacheMem, ptr %22, i64 0, i32 8
  br label %76

76:                                               ; preds = %74, %105
  %77 = load ptr, ptr @MEM_callocN, align 8, !tbaa !34
  %78 = tail call ptr %77(i64 noundef 32, ptr noundef nonnull @.str.54) #24
  %79 = load i32, ptr %3, align 4, !tbaa !125
  %80 = getelementptr inbounds %struct.PTCacheExtra, ptr %78, i64 0, i32 2
  store i32 %79, ptr %80, align 8, !tbaa !121
  %81 = getelementptr inbounds %struct.PTCacheExtra, ptr %78, i64 0, i32 3
  %82 = tail call fastcc i32 @ptcache_file_read(ptr noundef nonnull %4, ptr noundef nonnull %81, i32 noundef 1, i32 noundef 4) #26, !range !160
  %83 = load ptr, ptr @MEM_callocN, align 8, !tbaa !34
  %84 = load i32, ptr %81, align 4, !tbaa !123
  %85 = load i32, ptr %80, align 8, !tbaa !121
  %86 = zext i32 %85 to i64
  %87 = getelementptr inbounds [2 x i32], ptr @ptcache_extra_datasize, i64 0, i64 %86
  %88 = load i32, ptr %87, align 4, !tbaa !125
  %89 = mul i32 %88, %84
  %90 = zext i32 %89 to i64
  %91 = tail call ptr %83(i64 noundef %90, ptr noundef nonnull @.str.55) #24
  %92 = getelementptr inbounds %struct.PTCacheExtra, ptr %78, i64 0, i32 4
  store ptr %91, ptr %92, align 8, !tbaa !124
  %93 = load i32, ptr %32, align 4, !tbaa !265
  %94 = and i32 %93, 65536
  %95 = icmp eq i32 %94, 0
  %96 = load i32, ptr %81, align 4, !tbaa !123
  %97 = load i32, ptr %80, align 8, !tbaa !121
  %98 = zext i32 %97 to i64
  %99 = getelementptr inbounds [2 x i32], ptr @ptcache_extra_datasize, i64 0, i64 %98
  %100 = load i32, ptr %99, align 4, !tbaa !125
  br i1 %95, label %103, label %101

101:                                              ; preds = %76
  %102 = mul i32 %100, %96
  tail call fastcc void @ptcache_file_compressed_read(ptr noundef nonnull %4, ptr noundef %91, i32 noundef %102) #26
  br label %105

103:                                              ; preds = %76
  %104 = tail call fastcc i32 @ptcache_file_read(ptr noundef nonnull %4, ptr noundef %91, i32 noundef %96, i32 noundef %100) #26, !range !160
  br label %105

105:                                              ; preds = %103, %101
  tail call void @BLI_addtail(ptr noundef nonnull %75, ptr noundef nonnull %78) #24
  %106 = call fastcc i32 @ptcache_file_read(ptr noundef nonnull %4, ptr noundef nonnull %3, i32 noundef 1, i32 noundef 4) #26, !range !160
  %107 = icmp eq i32 %106, 0
  br i1 %107, label %108, label %76, !llvm.loop !347

108:                                              ; preds = %105, %71
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #25
  br label %111

109:                                              ; preds = %59
  tail call fastcc void @ptcache_data_free(ptr noundef nonnull %22) #26
  tail call fastcc void @ptcache_extra_free(ptr noundef nonnull %22) #26
  %110 = load ptr, ptr @MEM_freeN, align 8, !tbaa !34
  tail call void %110(ptr noundef nonnull %22) #24
  br label %112

111:                                              ; preds = %108, %67
  tail call fastcc void @ptcache_file_close(ptr noundef nonnull %4) #26
  br label %118

112:                                              ; preds = %6, %15, %9, %109
  tail call fastcc void @ptcache_file_close(ptr noundef nonnull %4) #26
  %113 = load i32, ptr getelementptr inbounds (%struct.Global, ptr @G, i64 0, i32 16), align 4, !tbaa !248
  %114 = and i32 %113, 1
  %115 = icmp eq i32 %114, 0
  br i1 %115, label %118, label %116

116:                                              ; preds = %112
  %117 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.64)
  br label %118

118:                                              ; preds = %111, %112, %116, %2
  %119 = phi ptr [ null, %2 ], [ null, %116 ], [ null, %112 ], [ %22, %111 ]
  ret ptr %119
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @BKE_ptcache_mem_to_disk(ptr noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.PTCacheID, ptr %0, i64 0, i32 25
  %3 = load ptr, ptr %2, align 8, !tbaa !49
  %4 = getelementptr inbounds %struct.PointCache, ptr %3, i64 0, i32 20
  %5 = load ptr, ptr %4, align 8, !tbaa !241
  %6 = getelementptr inbounds %struct.PointCache, ptr %3, i64 0, i32 2
  %7 = load i32, ptr %6, align 8, !tbaa !226
  %8 = and i32 %7, 1
  %9 = and i32 %7, -2
  store i32 %9, ptr %6, align 8, !tbaa !226
  tail call void @BKE_ptcache_id_clear(ptr noundef %0, i32 noundef 0, i32 noundef 0) #26
  %10 = load i32, ptr %6, align 8, !tbaa !226
  %11 = or i32 %10, %8
  store i32 %11, ptr %6, align 8, !tbaa !226
  %12 = icmp eq ptr %5, null
  br i1 %12, label %25, label %13

13:                                               ; preds = %1, %20
  %14 = phi ptr [ %21, %20 ], [ %5, %1 ]
  %15 = tail call fastcc i32 @ptcache_mem_frame_to_disk(ptr noundef %0, ptr noundef nonnull %14) #26, !range !160
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %17, label %20

17:                                               ; preds = %13
  %18 = load i32, ptr %6, align 8, !tbaa !226
  %19 = and i32 %18, -65
  store i32 %19, ptr %6, align 8, !tbaa !226
  br label %25

20:                                               ; preds = %13
  %21 = load ptr, ptr %14, align 8, !tbaa !243
  %22 = icmp eq ptr %21, null
  br i1 %22, label %23, label %13, !llvm.loop !348

23:                                               ; preds = %20
  %24 = load i32, ptr %6, align 8, !tbaa !226
  br label %25

25:                                               ; preds = %23, %1, %17
  %26 = phi i32 [ %24, %23 ], [ %11, %1 ], [ %19, %17 ]
  %27 = and i32 %26, 1
  %28 = icmp eq i32 %27, 0
  br i1 %28, label %31, label %29

29:                                               ; preds = %25
  %30 = tail call i32 @BKE_ptcache_write(ptr noundef %0, i32 noundef 0) #26, !range !160
  br label %31

31:                                               ; preds = %29, %25
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc noundef i32 @ptcache_mem_frame_to_disk(ptr noundef %0, ptr nocapture noundef %1) unnamed_addr #0 !PGOFuncName !349 {
  %3 = getelementptr inbounds %struct.PTCacheMem, ptr %1, i64 0, i32 2
  %4 = load i32, ptr %3, align 8, !tbaa !230
  tail call void @BKE_ptcache_id_clear(ptr noundef %0, i32 noundef 1, i32 noundef %4) #26
  %5 = load i32, ptr %3, align 8, !tbaa !230
  %6 = tail call fastcc ptr @ptcache_file_open(ptr noundef %0, i32 noundef 1, i32 noundef %5) #26
  %7 = icmp eq ptr %6, null
  br i1 %7, label %8, label %14

8:                                                ; preds = %2
  %9 = load i32, ptr getelementptr inbounds (%struct.Global, ptr @G, i64 0, i32 16), align 4, !tbaa !248
  %10 = and i32 %9, 1
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %139, label %12

12:                                               ; preds = %8
  %13 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.66)
  br label %139

14:                                               ; preds = %2
  %15 = getelementptr inbounds %struct.PTCacheMem, ptr %1, i64 0, i32 4
  %16 = load i32, ptr %15, align 8, !tbaa !220
  %17 = getelementptr inbounds %struct.PTCacheFile, ptr %6, i64 0, i32 5
  store i32 %16, ptr %17, align 8, !tbaa !264
  %18 = getelementptr inbounds %struct.PTCacheMem, ptr %1, i64 0, i32 3
  %19 = load i32, ptr %18, align 4, !tbaa !217
  %20 = getelementptr inbounds %struct.PTCacheFile, ptr %6, i64 0, i32 3
  store i32 %19, ptr %20, align 8, !tbaa !250
  %21 = getelementptr inbounds %struct.PTCacheID, ptr %0, i64 0, i32 5
  %22 = load i32, ptr %21, align 8, !tbaa !79
  %23 = getelementptr inbounds %struct.PTCacheFile, ptr %6, i64 0, i32 4
  store i32 %22, ptr %23, align 4, !tbaa !249
  %24 = getelementptr inbounds %struct.PTCacheFile, ptr %6, i64 0, i32 6
  %25 = getelementptr inbounds %struct.PTCacheMem, ptr %1, i64 0, i32 8
  %26 = load ptr, ptr %25, align 8, !tbaa !233
  %27 = icmp eq ptr %26, null
  %28 = select i1 %27, i32 0, i32 131072
  store i32 %28, ptr %24, align 4
  %29 = getelementptr inbounds %struct.PTCacheID, ptr %0, i64 0, i32 25
  %30 = load ptr, ptr %29, align 8, !tbaa !49
  %31 = getelementptr inbounds %struct.PointCache, ptr %30, i64 0, i32 13
  %32 = load i16, ptr %31, align 4, !tbaa !350
  %33 = icmp eq i16 %32, 0
  br i1 %33, label %36, label %34

34:                                               ; preds = %14
  %35 = or disjoint i32 %28, 65536
  store i32 %35, ptr %24, align 4, !tbaa !265
  br label %36

36:                                               ; preds = %34, %14
  %37 = tail call fastcc i32 @ptcache_file_header_begin_write(ptr noundef nonnull %6) #26, !range !160
  %38 = icmp eq i32 %37, 0
  br i1 %38, label %133, label %39

39:                                               ; preds = %36
  %40 = getelementptr inbounds %struct.PTCacheID, ptr %0, i64 0, i32 23
  %41 = load ptr, ptr %40, align 8, !tbaa !58
  %42 = tail call i32 %41(ptr noundef nonnull %6) #24
  %43 = icmp eq i32 %42, 0
  br i1 %43, label %133, label %44

44:                                               ; preds = %39
  %45 = load ptr, ptr %29, align 8, !tbaa !49
  %46 = getelementptr inbounds %struct.PointCache, ptr %45, i64 0, i32 13
  %47 = load i16, ptr %46, align 4, !tbaa !350
  %48 = icmp eq i16 %47, 0
  br i1 %48, label %71, label %49

49:                                               ; preds = %44, %68
  %50 = phi i64 [ %69, %68 ], [ 0, %44 ]
  %51 = getelementptr inbounds %struct.PTCacheMem, ptr %1, i64 0, i32 6, i64 %50
  %52 = load ptr, ptr %51, align 8, !tbaa !34
  %53 = icmp eq ptr %52, null
  br i1 %53, label %68, label %54

54:                                               ; preds = %49
  %55 = load i32, ptr %18, align 4, !tbaa !217
  %56 = getelementptr inbounds [8 x i32], ptr @ptcache_data_size, i64 0, i64 %50
  %57 = load i32, ptr %56, align 4, !tbaa !125
  %58 = mul i32 %57, %55
  %59 = load ptr, ptr @MEM_callocN, align 8, !tbaa !34
  %60 = lshr i32 %58, 4
  %61 = add i32 %60, %58
  %62 = shl i32 %61, 2
  %63 = add i32 %62, 268
  %64 = zext i32 %63 to i64
  %65 = tail call ptr %59(i64 noundef %64, ptr noundef nonnull @.str.26) #24
  %66 = load ptr, ptr %51, align 8, !tbaa !34
  tail call fastcc void @ptcache_file_compressed_write(ptr noundef nonnull %6, ptr noundef %66, i32 noundef %58, ptr noundef %65) #26
  %67 = load ptr, ptr @MEM_freeN, align 8, !tbaa !34
  tail call void %67(ptr noundef %65) #24
  br label %68

68:                                               ; preds = %49, %54
  %69 = add nuw nsw i64 %50, 1
  %70 = icmp eq i64 %69, 8
  br i1 %70, label %85, label %49, !llvm.loop !351

71:                                               ; preds = %44
  tail call void @BKE_ptcache_mem_pointers_init(ptr noundef nonnull %1) #26
  tail call fastcc void @ptcache_file_pointers_init(ptr noundef nonnull %6) #26
  %72 = load i32, ptr %18, align 4, !tbaa !217
  %73 = icmp eq i32 %72, 0
  br i1 %73, label %85, label %74

74:                                               ; preds = %71
  %75 = getelementptr inbounds %struct.PTCacheMem, ptr %1, i64 0, i32 7
  %76 = getelementptr inbounds %struct.PTCacheFile, ptr %6, i64 0, i32 8
  br label %77

77:                                               ; preds = %74, %81
  %78 = phi i32 [ 0, %74 ], [ %82, %81 ]
  tail call fastcc void @ptcache_data_copy(ptr noundef nonnull %75, ptr noundef nonnull %76) #26
  %79 = tail call fastcc i32 @ptcache_file_data_write(ptr noundef nonnull %6) #26, !range !160
  %80 = icmp eq i32 %79, 0
  br i1 %80, label %133, label %81

81:                                               ; preds = %77
  tail call void @BKE_ptcache_mem_pointers_incr(ptr noundef nonnull %1) #26
  %82 = add nuw i32 %78, 1
  %83 = load i32, ptr %18, align 4, !tbaa !217
  %84 = icmp ult i32 %82, %83
  br i1 %84, label %77, label %85, !llvm.loop !352

85:                                               ; preds = %68, %81, %71
  %86 = load ptr, ptr %25, align 8, !tbaa !233
  %87 = icmp eq ptr %86, null
  br i1 %87, label %132, label %88

88:                                               ; preds = %85, %129
  %89 = phi ptr [ %130, %129 ], [ %86, %85 ]
  %90 = getelementptr inbounds %struct.PTCacheExtra, ptr %89, i64 0, i32 4
  %91 = load ptr, ptr %90, align 8, !tbaa !124
  %92 = icmp eq ptr %91, null
  br i1 %92, label %129, label %93

93:                                               ; preds = %88
  %94 = getelementptr inbounds %struct.PTCacheExtra, ptr %89, i64 0, i32 3
  %95 = load i32, ptr %94, align 4, !tbaa !123
  %96 = icmp eq i32 %95, 0
  br i1 %96, label %129, label %97

97:                                               ; preds = %93
  %98 = getelementptr inbounds %struct.PTCacheExtra, ptr %89, i64 0, i32 2
  %99 = tail call fastcc i32 @ptcache_file_write(ptr noundef nonnull %6, ptr noundef nonnull %98, i32 noundef 1, i32 noundef 4) #26, !range !160
  %100 = tail call fastcc i32 @ptcache_file_write(ptr noundef nonnull %6, ptr noundef nonnull %94, i32 noundef 1, i32 noundef 4) #26, !range !160
  %101 = load ptr, ptr %29, align 8, !tbaa !49
  %102 = getelementptr inbounds %struct.PointCache, ptr %101, i64 0, i32 13
  %103 = load i16, ptr %102, align 4, !tbaa !350
  %104 = icmp eq i16 %103, 0
  br i1 %104, label %121, label %105

105:                                              ; preds = %97
  %106 = load i32, ptr %94, align 4, !tbaa !123
  %107 = load i32, ptr %98, align 8, !tbaa !121
  %108 = zext i32 %107 to i64
  %109 = getelementptr inbounds [2 x i32], ptr @ptcache_extra_datasize, i64 0, i64 %108
  %110 = load i32, ptr %109, align 4, !tbaa !125
  %111 = mul i32 %110, %106
  %112 = load ptr, ptr @MEM_callocN, align 8, !tbaa !34
  %113 = lshr i32 %111, 4
  %114 = add i32 %113, %111
  %115 = shl i32 %114, 2
  %116 = add i32 %115, 268
  %117 = zext i32 %116 to i64
  %118 = tail call ptr %112(i64 noundef %117, ptr noundef nonnull @.str.26) #24
  %119 = load ptr, ptr %90, align 8, !tbaa !124
  tail call fastcc void @ptcache_file_compressed_write(ptr noundef nonnull %6, ptr noundef %119, i32 noundef %111, ptr noundef %118) #26
  %120 = load ptr, ptr @MEM_freeN, align 8, !tbaa !34
  tail call void %120(ptr noundef %118) #24
  br label %129

121:                                              ; preds = %97
  %122 = load ptr, ptr %90, align 8, !tbaa !124
  %123 = load i32, ptr %94, align 4, !tbaa !123
  %124 = load i32, ptr %98, align 8, !tbaa !121
  %125 = zext i32 %124 to i64
  %126 = getelementptr inbounds [2 x i32], ptr @ptcache_extra_datasize, i64 0, i64 %125
  %127 = load i32, ptr %126, align 4, !tbaa !125
  %128 = tail call fastcc i32 @ptcache_file_write(ptr noundef nonnull %6, ptr noundef %122, i32 noundef %123, i32 noundef %127) #26, !range !160
  br label %129

129:                                              ; preds = %105, %121, %88, %93
  %130 = load ptr, ptr %89, align 8, !tbaa !283
  %131 = icmp eq ptr %130, null
  br i1 %131, label %132, label %88, !llvm.loop !353

132:                                              ; preds = %129, %85
  tail call fastcc void @ptcache_file_close(ptr noundef nonnull %6) #26
  br label %139

133:                                              ; preds = %77, %36, %39
  tail call fastcc void @ptcache_file_close(ptr noundef nonnull %6) #26
  %134 = load i32, ptr getelementptr inbounds (%struct.Global, ptr @G, i64 0, i32 16), align 4, !tbaa !248
  %135 = and i32 %134, 1
  %136 = icmp eq i32 %135, 0
  br i1 %136, label %139, label %137

137:                                              ; preds = %133
  %138 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.65)
  br label %139

139:                                              ; preds = %133, %137, %132, %8, %12
  %140 = phi i32 [ 0, %12 ], [ 0, %8 ], [ 0, %137 ], [ 0, %133 ], [ 1, %132 ]
  ret i32 %140
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @BKE_ptcache_toggle_disk_cache(ptr noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.PTCacheID, ptr %0, i64 0, i32 25
  %3 = load ptr, ptr %2, align 8, !tbaa !49
  %4 = getelementptr inbounds %struct.PointCache, ptr %3, i64 0, i32 8
  %5 = load i32, ptr %4, align 8, !tbaa !228
  %6 = load i8, ptr getelementptr inbounds (%struct.Global, ptr @G, i64 0, i32 3), align 8, !tbaa !277
  %7 = icmp eq i8 %6, 0
  br i1 %7, label %8, label %17

8:                                                ; preds = %1
  %9 = getelementptr inbounds %struct.PointCache, ptr %3, i64 0, i32 2
  %10 = load i32, ptr %9, align 8, !tbaa !226
  %11 = and i32 %10, -65
  store i32 %11, ptr %9, align 8, !tbaa !226
  %12 = load i32, ptr getelementptr inbounds (%struct.Global, ptr @G, i64 0, i32 16), align 4, !tbaa !248
  %13 = and i32 %12, 1
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %45, label %15

15:                                               ; preds = %8
  %16 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.67)
  br label %45

17:                                               ; preds = %1
  %18 = getelementptr inbounds %struct.PointCache, ptr %3, i64 0, i32 19
  %19 = load ptr, ptr %18, align 8, !tbaa !236
  %20 = icmp eq ptr %19, null
  br i1 %20, label %23, label %21

21:                                               ; preds = %17
  %22 = load ptr, ptr @MEM_freeN, align 8, !tbaa !34
  tail call void %22(ptr noundef nonnull %19) #24
  store ptr null, ptr %18, align 8, !tbaa !236
  br label %23

23:                                               ; preds = %21, %17
  %24 = getelementptr inbounds %struct.PointCache, ptr %3, i64 0, i32 2
  %25 = load i32, ptr %24, align 8, !tbaa !226
  %26 = and i32 %25, 64
  %27 = icmp eq i32 %26, 0
  br i1 %27, label %29, label %28

28:                                               ; preds = %23
  tail call void @BKE_ptcache_mem_to_disk(ptr noundef nonnull %0) #26
  br label %30

29:                                               ; preds = %23
  tail call void @BKE_ptcache_disk_to_mem(ptr noundef nonnull %0) #26
  br label %30

30:                                               ; preds = %29, %28
  %31 = load i32, ptr %24, align 8, !tbaa !226
  %32 = xor i32 %31, 64
  store i32 %32, ptr %24, align 8, !tbaa !226
  tail call void @BKE_ptcache_id_clear(ptr noundef nonnull %0, i32 noundef 0, i32 noundef 0) #26
  %33 = load i32, ptr %24, align 8, !tbaa !226
  %34 = xor i32 %33, 64
  store i32 %34, ptr %24, align 8, !tbaa !226
  store i32 %5, ptr %4, align 8, !tbaa !228
  tail call void @BKE_ptcache_id_time(ptr noundef nonnull %0, ptr noundef null, float noundef 0.000000e+00, ptr noundef null, ptr noundef null, ptr noundef null) #26
  tail call void @BKE_ptcache_update_info(ptr noundef nonnull %0) #26
  %35 = load i32, ptr %24, align 8, !tbaa !226
  %36 = and i32 %35, 64
  %37 = icmp eq i32 %36, 0
  br i1 %37, label %38, label %45

38:                                               ; preds = %30
  %39 = getelementptr inbounds %struct.PointCache, ptr %3, i64 0, i32 12
  %40 = load i32, ptr %39, align 8, !tbaa !61
  %41 = icmp eq i32 %40, 0
  br i1 %41, label %45, label %42

42:                                               ; preds = %38
  %43 = getelementptr inbounds %struct.PTCacheID, ptr %0, i64 0, i32 3
  %44 = load ptr, ptr %43, align 8, !tbaa !41
  tail call void @BKE_object_delete_ptcache(ptr noundef %44, i32 noundef %40) #24
  store i32 -1, ptr %39, align 8, !tbaa !61
  br label %45

45:                                               ; preds = %30, %42, %38, %8, %15
  ret void
}

; Function Attrs: optsize
declare void @BKE_object_delete_ptcache(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @BKE_ptcache_disk_cache_rename(ptr nocapture noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #0 {
  %4 = alloca [80 x i8], align 16
  %5 = alloca [1024 x i8], align 16
  %6 = alloca [2048 x i8], align 16
  %7 = alloca [2048 x i8], align 16
  %8 = alloca [2048 x i8], align 16
  %9 = alloca [1024 x i8], align 16
  %10 = alloca [7 x i8], align 1
  call void @llvm.lifetime.start.p0(i64 80, ptr nonnull %4) #25
  call void @llvm.lifetime.start.p0(i64 1024, ptr nonnull %5) #25
  call void @llvm.lifetime.start.p0(i64 2048, ptr nonnull %6) #25
  call void @llvm.lifetime.start.p0(i64 2048, ptr nonnull %7) #25
  call void @llvm.lifetime.start.p0(i64 2048, ptr nonnull %8) #25
  call void @llvm.lifetime.start.p0(i64 1024, ptr nonnull %9) #25
  %11 = getelementptr inbounds %struct.PTCacheID, ptr %0, i64 0, i32 25
  %12 = load ptr, ptr %11, align 8, !tbaa !49
  %13 = getelementptr inbounds %struct.PointCache, ptr %12, i64 0, i32 15
  %14 = call ptr @BLI_strncpy(ptr noundef nonnull %4, ptr noundef nonnull %13, i64 noundef 80) #24
  %15 = load ptr, ptr %11, align 8, !tbaa !49
  %16 = getelementptr inbounds %struct.PointCache, ptr %15, i64 0, i32 15
  %17 = call ptr @BLI_strncpy(ptr noundef nonnull %16, ptr noundef %1, i64 noundef 64) #24
  %18 = call fastcc i32 @ptcache_filename(ptr noundef %0, ptr noundef nonnull %6, i32 noundef 0, i16 noundef signext 0, i16 noundef signext 0) #26
  %19 = call fastcc i32 @ptcache_path(ptr noundef %0, ptr noundef nonnull %5) #26
  %20 = call ptr @opendir(ptr noundef nonnull %5) #26
  %21 = icmp eq ptr %20, null
  br i1 %21, label %59, label %22

22:                                               ; preds = %3
  %23 = getelementptr inbounds %struct.PTCacheID, ptr %0, i64 0, i32 6
  %24 = load i32, ptr %23, align 4, !tbaa !63
  %25 = call i64 (ptr, i64, ptr, ...) @BLI_snprintf(ptr noundef nonnull %9, i64 noundef 1024, ptr noundef nonnull @.str.2, i32 noundef %24) #24
  %26 = load ptr, ptr %11, align 8, !tbaa !49
  %27 = getelementptr inbounds %struct.PointCache, ptr %26, i64 0, i32 15
  %28 = call ptr @BLI_strncpy(ptr noundef nonnull %27, ptr noundef %2, i64 noundef 64) #24
  %29 = call ptr @readdir(ptr noundef nonnull %20) #24
  %30 = icmp eq ptr %29, null
  br i1 %30, label %57, label %31

31:                                               ; preds = %22
  %32 = sext i32 %18 to i64
  br label %33

33:                                               ; preds = %31, %54
  %34 = phi ptr [ %29, %31 ], [ %55, %54 ]
  %35 = getelementptr inbounds %struct.dirent, ptr %34, i64 0, i32 4
  %36 = call ptr @strstr(ptr noundef nonnull dereferenceable(1) %35, ptr noundef nonnull dereferenceable(1) %9) #27
  %37 = icmp eq ptr %36, null
  br i1 %37, label %54, label %38

38:                                               ; preds = %33
  %39 = call i32 @strncmp(ptr noundef nonnull %6, ptr noundef nonnull %35, i64 noundef %32) #27
  %40 = icmp eq i32 %39, 0
  br i1 %40, label %41, label %54

41:                                               ; preds = %38
  %42 = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %35) #27
  %43 = trunc i64 %42 to i32
  call void @llvm.lifetime.start.p0(i64 7, ptr nonnull %10) #25
  %44 = icmp sgt i32 %43, 15
  br i1 %44, label %45, label %53

45:                                               ; preds = %41
  %46 = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %35) #27
  %47 = getelementptr i8, ptr %35, i64 %46
  %48 = getelementptr i8, ptr %47, i64 -15
  %49 = call ptr @BLI_strncpy(ptr noundef nonnull %10, ptr noundef %48, i64 noundef 7) #24
  %50 = call i32 @atoi(ptr nocapture noundef nonnull %10) #27
  call void @BLI_join_dirfile(ptr noundef nonnull %8, i64 noundef 2048, ptr noundef nonnull %5, ptr noundef nonnull %35) #24
  %51 = call fastcc i32 @ptcache_filename(ptr noundef %0, ptr noundef nonnull %7, i32 noundef %50, i16 noundef signext 1, i16 noundef signext 1) #26
  %52 = call i32 @BLI_rename(ptr noundef nonnull %8, ptr noundef nonnull %7) #24
  br label %53

53:                                               ; preds = %45, %41
  call void @llvm.lifetime.end.p0(i64 7, ptr nonnull %10) #25
  br label %54

54:                                               ; preds = %38, %53, %33
  %55 = call ptr @readdir(ptr noundef nonnull %20) #24
  %56 = icmp eq ptr %55, null
  br i1 %56, label %57, label %33, !llvm.loop !354

57:                                               ; preds = %54, %22
  %58 = call i32 @closedir(ptr noundef nonnull %20) #26
  br label %59

59:                                               ; preds = %3, %57
  %60 = load ptr, ptr %11, align 8, !tbaa !49
  %61 = getelementptr inbounds %struct.PointCache, ptr %60, i64 0, i32 15
  %62 = call ptr @BLI_strncpy(ptr noundef nonnull %61, ptr noundef nonnull %4, i64 noundef 64) #24
  call void @llvm.lifetime.end.p0(i64 1024, ptr nonnull %9) #25
  call void @llvm.lifetime.end.p0(i64 2048, ptr nonnull %8) #25
  call void @llvm.lifetime.end.p0(i64 2048, ptr nonnull %7) #25
  call void @llvm.lifetime.end.p0(i64 2048, ptr nonnull %6) #25
  call void @llvm.lifetime.end.p0(i64 1024, ptr nonnull %5) #25
  call void @llvm.lifetime.end.p0(i64 80, ptr nonnull %4) #25
  ret void
}

; Function Attrs: optsize
declare i32 @BLI_rename(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @BKE_ptcache_load_external(ptr nocapture noundef %0) local_unnamed_addr #0 {
  %2 = alloca [1024 x i8], align 16
  %3 = alloca [2048 x i8], align 16
  %4 = alloca [1024 x i8], align 16
  %5 = alloca [7 x i8], align 1
  %6 = alloca [14 x float], align 16
  %7 = getelementptr inbounds %struct.PTCacheID, ptr %0, i64 0, i32 25
  %8 = load ptr, ptr %7, align 8, !tbaa !49
  call void @llvm.lifetime.start.p0(i64 1024, ptr nonnull %2) #25
  call void @llvm.lifetime.start.p0(i64 2048, ptr nonnull %3) #25
  call void @llvm.lifetime.start.p0(i64 1024, ptr nonnull %4) #25
  %9 = icmp eq ptr %8, null
  br i1 %9, label %127, label %10

10:                                               ; preds = %1
  %11 = call fastcc i32 @ptcache_path(ptr noundef nonnull %0, ptr noundef nonnull %2) #26
  %12 = call fastcc i32 @ptcache_filename(ptr noundef nonnull %0, ptr noundef nonnull %3, i32 noundef 1, i16 noundef signext 0, i16 noundef signext 0) #26
  %13 = call ptr @opendir(ptr noundef nonnull %2) #26
  %14 = icmp eq ptr %13, null
  br i1 %14, label %127, label %15

15:                                               ; preds = %10
  %16 = getelementptr inbounds %struct.PointCache, ptr %8, i64 0, i32 12
  %17 = load i32, ptr %16, align 8, !tbaa !61
  %18 = icmp sgt i32 %17, -1
  br i1 %18, label %19, label %21

19:                                               ; preds = %15
  %20 = call i64 (ptr, i64, ptr, ...) @BLI_snprintf(ptr noundef nonnull %4, i64 noundef 1024, ptr noundef nonnull @.str.9, i32 noundef %17) #24
  br label %23

21:                                               ; preds = %15
  %22 = call ptr @BLI_strncpy(ptr noundef nonnull %4, ptr noundef nonnull @.str.6, i64 noundef 1024) #24
  br label %23

23:                                               ; preds = %21, %19
  %24 = call ptr @readdir(ptr noundef nonnull %13) #24
  %25 = icmp eq ptr %24, null
  br i1 %25, label %26, label %28

26:                                               ; preds = %23
  %27 = call i32 @closedir(ptr noundef nonnull %13) #26
  br label %120

28:                                               ; preds = %23
  %29 = sext i32 %12 to i64
  br label %30

30:                                               ; preds = %28, %59
  %31 = phi ptr [ %24, %28 ], [ %63, %59 ]
  %32 = phi i32 [ 0, %28 ], [ %62, %59 ]
  %33 = phi i32 [ 300000, %28 ], [ %61, %59 ]
  %34 = phi i32 [ -1, %28 ], [ %60, %59 ]
  %35 = getelementptr inbounds %struct.dirent, ptr %31, i64 0, i32 4
  %36 = call ptr @strstr(ptr noundef nonnull dereferenceable(1) %35, ptr noundef nonnull dereferenceable(1) %4) #27
  %37 = icmp eq ptr %36, null
  br i1 %37, label %59, label %38

38:                                               ; preds = %30
  %39 = call i32 @strncmp(ptr noundef nonnull %3, ptr noundef nonnull %35, i64 noundef %29) #27
  %40 = icmp eq i32 %39, 0
  br i1 %40, label %41, label %59

41:                                               ; preds = %38
  %42 = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %35) #27
  %43 = trunc i64 %42 to i32
  call void @llvm.lifetime.start.p0(i64 7, ptr nonnull %5) #25
  %44 = icmp sgt i32 %43, 15
  br i1 %44, label %45, label %55

45:                                               ; preds = %41
  %46 = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %35) #27
  %47 = getelementptr i8, ptr %35, i64 %46
  %48 = getelementptr i8, ptr %47, i64 -15
  %49 = call ptr @BLI_strncpy(ptr noundef nonnull %5, ptr noundef %48, i64 noundef 7) #24
  %50 = call i32 @atoi(ptr nocapture noundef nonnull %5) #27
  %51 = icmp eq i32 %50, 0
  br i1 %51, label %55, label %52

52:                                               ; preds = %45
  %53 = call i32 @llvm.smin.i32(i32 %33, i32 %50)
  %54 = call i32 @llvm.smax.i32(i32 %34, i32 %50)
  br label %55

55:                                               ; preds = %45, %52, %41
  %56 = phi i32 [ %54, %52 ], [ %34, %41 ], [ %34, %45 ]
  %57 = phi i32 [ %53, %52 ], [ %33, %41 ], [ %33, %45 ]
  %58 = phi i32 [ %32, %52 ], [ %32, %41 ], [ 1, %45 ]
  call void @llvm.lifetime.end.p0(i64 7, ptr nonnull %5) #25
  br label %59

59:                                               ; preds = %38, %55, %30
  %60 = phi i32 [ %56, %55 ], [ %34, %38 ], [ %34, %30 ]
  %61 = phi i32 [ %57, %55 ], [ %33, %38 ], [ %33, %30 ]
  %62 = phi i32 [ %58, %55 ], [ %32, %38 ], [ %32, %30 ]
  %63 = call ptr @readdir(ptr noundef nonnull %13) #24
  %64 = icmp eq ptr %63, null
  br i1 %64, label %65, label %30, !llvm.loop !355

65:                                               ; preds = %59
  %66 = icmp eq i32 %62, 0
  %67 = call i32 @closedir(ptr noundef nonnull %13) #26
  %68 = icmp eq i32 %61, 300000
  br i1 %68, label %120, label %69

69:                                               ; preds = %65
  %70 = getelementptr inbounds %struct.PointCache, ptr %8, i64 0, i32 5
  store i32 %61, ptr %70, align 4, !tbaa !234
  %71 = getelementptr inbounds %struct.PointCache, ptr %8, i64 0, i32 6
  store i32 %60, ptr %71, align 8, !tbaa !235
  %72 = getelementptr inbounds %struct.PointCache, ptr %8, i64 0, i32 11
  store i32 0, ptr %72, align 4, !tbaa !270
  %73 = getelementptr inbounds %struct.PTCacheID, ptr %0, i64 0, i32 5
  %74 = load i32, ptr %73, align 8, !tbaa !79
  %75 = icmp eq i32 %74, 3
  br i1 %75, label %115, label %76

76:                                               ; preds = %69
  br i1 %66, label %101, label %77

77:                                               ; preds = %76
  %78 = call fastcc ptr @ptcache_file_open(ptr noundef nonnull %0, i32 noundef 0, i32 noundef 0) #26
  %79 = icmp eq ptr %78, null
  br i1 %79, label %115, label %80

80:                                               ; preds = %77
  %81 = call fastcc i32 @ptcache_file_header_begin_read(ptr noundef nonnull %78) #26, !range !160
  %82 = icmp eq i32 %81, 0
  br i1 %82, label %100, label %83

83:                                               ; preds = %80
  %84 = getelementptr inbounds %struct.PTCacheFile, ptr %78, i64 0, i32 4
  %85 = load i32, ptr %84, align 4, !tbaa !249
  %86 = load i32, ptr %73, align 8, !tbaa !79
  %87 = icmp eq i32 %85, %86
  br i1 %87, label %88, label %99

88:                                               ; preds = %83
  %89 = getelementptr inbounds %struct.PTCacheID, ptr %0, i64 0, i32 24
  %90 = load ptr, ptr %89, align 8, !tbaa !59
  %91 = call i32 %90(ptr noundef nonnull %78) #24
  %92 = icmp eq i32 %91, 0
  br i1 %92, label %99, label %93

93:                                               ; preds = %88
  %94 = getelementptr inbounds %struct.PTCacheFile, ptr %78, i64 0, i32 3
  %95 = load i32, ptr %94, align 8, !tbaa !250
  store i32 %95, ptr %72, align 4, !tbaa !270
  %96 = getelementptr inbounds %struct.PointCache, ptr %8, i64 0, i32 2
  %97 = load i32, ptr %96, align 8, !tbaa !226
  %98 = or i32 %97, 1024
  store i32 %98, ptr %96, align 8, !tbaa !226
  br label %100

99:                                               ; preds = %88, %83
  store i32 0, ptr %72, align 4, !tbaa !270
  br label %100

100:                                              ; preds = %93, %99, %80
  call fastcc void @ptcache_file_close(ptr noundef nonnull %78) #26
  br label %115

101:                                              ; preds = %76
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %6) #25
  %102 = call fastcc i32 @ptcache_old_elemsize(ptr noundef nonnull %0) #26, !range !356
  %103 = call fastcc ptr @ptcache_file_open(ptr noundef nonnull %0, i32 noundef 0, i32 noundef %61) #26
  %104 = icmp eq ptr %103, null
  br i1 %104, label %114, label %105

105:                                              ; preds = %101
  %106 = call fastcc i32 @ptcache_file_read(ptr noundef nonnull %103, ptr noundef nonnull %6, i32 noundef 1, i32 noundef %102) #26, !range !160
  %107 = icmp eq i32 %106, 0
  br i1 %107, label %113, label %108

108:                                              ; preds = %105, %108
  %109 = load i32, ptr %72, align 4, !tbaa !270
  %110 = add nsw i32 %109, 1
  store i32 %110, ptr %72, align 4, !tbaa !270
  %111 = call fastcc i32 @ptcache_file_read(ptr noundef nonnull %103, ptr noundef nonnull %6, i32 noundef 1, i32 noundef %102) #26, !range !160
  %112 = icmp eq i32 %111, 0
  br i1 %112, label %113, label %108, !llvm.loop !357

113:                                              ; preds = %108, %105
  call fastcc void @ptcache_file_close(ptr noundef nonnull %103) #26
  br label %114

114:                                              ; preds = %113, %101
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %6) #25
  br label %115

115:                                              ; preds = %114, %100, %77, %69
  %116 = getelementptr inbounds %struct.PointCache, ptr %8, i64 0, i32 2
  %117 = load i32, ptr %116, align 8, !tbaa !226
  %118 = and i32 %117, -328
  %119 = or disjoint i32 %118, 69
  store i32 %119, ptr %116, align 8, !tbaa !226
  br label %120

120:                                              ; preds = %26, %115, %65
  %121 = getelementptr inbounds %struct.PointCache, ptr %8, i64 0, i32 19
  %122 = load ptr, ptr %121, align 8, !tbaa !236
  %123 = icmp eq ptr %122, null
  br i1 %123, label %126, label %124

124:                                              ; preds = %120
  %125 = load ptr, ptr @MEM_freeN, align 8, !tbaa !34
  call void %125(ptr noundef nonnull %122) #24
  store ptr null, ptr %121, align 8, !tbaa !236
  br label %126

126:                                              ; preds = %124, %120
  call void @BKE_ptcache_update_info(ptr noundef %0) #26
  br label %127

127:                                              ; preds = %10, %1, %126
  call void @llvm.lifetime.end.p0(i64 1024, ptr nonnull %4) #25
  call void @llvm.lifetime.end.p0(i64 2048, ptr nonnull %3) #25
  call void @llvm.lifetime.end.p0(i64 1024, ptr nonnull %2) #25
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc noundef ptr @ptcache_file_open(ptr nocapture noundef %0, i32 noundef %1, i32 noundef %2) unnamed_addr #0 !PGOFuncName !358 {
  %4 = alloca [2048 x i8], align 16
  call void @llvm.lifetime.start.p0(i64 2048, ptr nonnull %4) #25
  %5 = load i8, ptr getelementptr inbounds (%struct.Global, ptr @G, i64 0, i32 3), align 8, !tbaa !277
  %6 = icmp eq i8 %5, 0
  br i1 %6, label %7, label %14

7:                                                ; preds = %3
  %8 = getelementptr inbounds %struct.PTCacheID, ptr %0, i64 0, i32 25
  %9 = load ptr, ptr %8, align 8, !tbaa !49
  %10 = getelementptr inbounds %struct.PointCache, ptr %9, i64 0, i32 2
  %11 = load i32, ptr %10, align 8, !tbaa !226
  %12 = and i32 %11, 512
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %30, label %14

14:                                               ; preds = %7, %3
  %15 = call fastcc i32 @ptcache_filename(ptr noundef %0, ptr noundef nonnull %4, i32 noundef %2, i16 noundef signext 1, i16 noundef signext 1) #26
  %16 = icmp eq i32 %1, 0
  br i1 %16, label %17, label %20

17:                                               ; preds = %14
  %18 = call i32 @BLI_exists(ptr noundef nonnull %4) #24
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %30, label %21

20:                                               ; preds = %14
  call void @BLI_make_existing_file(ptr noundef nonnull %4) #24
  br label %21

21:                                               ; preds = %17, %20
  %22 = phi ptr [ @.str.58, %20 ], [ @.str.57, %17 ]
  %23 = call ptr @BLI_fopen(ptr noundef nonnull %4, ptr noundef nonnull %22) #24
  %24 = icmp eq ptr %23, null
  br i1 %24, label %30, label %25

25:                                               ; preds = %21
  %26 = load ptr, ptr @MEM_mallocN, align 8, !tbaa !34
  %27 = call ptr %26(i64 noundef 192, ptr noundef nonnull @.str.60) #24
  store ptr %23, ptr %27, align 8, !tbaa !74
  %28 = getelementptr inbounds %struct.PTCacheFile, ptr %27, i64 0, i32 2
  store i32 0, ptr %28, align 4, !tbaa !359
  %29 = getelementptr inbounds %struct.PTCacheFile, ptr %27, i64 0, i32 1
  store i32 %2, ptr %29, align 8, !tbaa !344
  br label %30

30:                                               ; preds = %21, %17, %7, %25
  %31 = phi ptr [ %27, %25 ], [ null, %7 ], [ null, %17 ], [ null, %21 ]
  call void @llvm.lifetime.end.p0(i64 2048, ptr nonnull %4) #25
  ret ptr %31
}

; Function Attrs: nofree noinline nounwind optsize uwtable
define internal fastcc noundef i32 @ptcache_file_header_begin_read(ptr nocapture noundef %0) unnamed_addr #8 !PGOFuncName !360 {
  %2 = alloca i32, align 4
  %3 = alloca [8 x i8], align 1
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %2) #25
  store i32 0, ptr %2, align 4, !tbaa !125
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #25
  %4 = getelementptr inbounds %struct.PTCacheFile, ptr %0, i64 0, i32 5
  store i32 0, ptr %4, align 8, !tbaa !264
  %5 = load ptr, ptr %0, align 8, !tbaa !74
  %6 = call i64 @fread(ptr noundef nonnull %3, i64 noundef 1, i64 noundef 8, ptr noundef %5) #26
  %7 = icmp eq i64 %6, 8
  br i1 %7, label %8, label %11

8:                                                ; preds = %1
  %9 = call i32 @bcmp(ptr noundef nonnull dereferenceable(8) %3, ptr noundef nonnull dereferenceable(8) @.str.38, i64 8)
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %14, label %11

11:                                               ; preds = %8, %1
  %12 = getelementptr inbounds %struct.PTCacheFile, ptr %0, i64 0, i32 4
  store i32 0, ptr %12, align 4, !tbaa !249
  %13 = getelementptr inbounds %struct.PTCacheFile, ptr %0, i64 0, i32 6
  store i32 0, ptr %13, align 4, !tbaa !265
  br label %23

14:                                               ; preds = %8
  %15 = load ptr, ptr %0, align 8, !tbaa !74
  %16 = call i64 @fread(ptr noundef nonnull %2, i64 noundef 4, i64 noundef 1, ptr noundef %15) #26
  %17 = icmp eq i64 %16, 0
  %18 = load i32, ptr %2, align 4, !tbaa !125
  %19 = and i32 %18, 65535
  %20 = getelementptr inbounds %struct.PTCacheFile, ptr %0, i64 0, i32 4
  store i32 %19, ptr %20, align 4, !tbaa !249
  %21 = and i32 %18, -65536
  %22 = getelementptr inbounds %struct.PTCacheFile, ptr %0, i64 0, i32 6
  store i32 %21, ptr %22, align 4, !tbaa !265
  br i1 %17, label %23, label %26

23:                                               ; preds = %11, %14
  %24 = load ptr, ptr %0, align 8, !tbaa !74
  %25 = tail call i32 @fseek(ptr noundef %24, i64 noundef 0, i32 noundef 0) #26
  br label %26

26:                                               ; preds = %23, %14
  %27 = phi i32 [ 0, %23 ], [ 1, %14 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #25
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2) #25
  ret i32 %27
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @ptcache_file_close(ptr noundef %0) unnamed_addr #0 !PGOFuncName !361 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %7, label %3

3:                                                ; preds = %1
  %4 = load ptr, ptr %0, align 8, !tbaa !74
  %5 = tail call i32 @fclose(ptr noundef %4) #26
  %6 = load ptr, ptr @MEM_freeN, align 8, !tbaa !34
  tail call void %6(ptr noundef nonnull %0) #24
  br label %7

7:                                                ; preds = %3, %1
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc noundef i32 @ptcache_old_elemsize(ptr nocapture noundef readonly %0) unnamed_addr #5 !PGOFuncName !362 {
  %2 = getelementptr inbounds %struct.PTCacheID, ptr %0, i64 0, i32 5
  %3 = load i32, ptr %2, align 8, !tbaa !79
  %4 = icmp ult i32 %3, 3
  br i1 %4, label %5, label %9

5:                                                ; preds = %1
  %6 = zext nneg i32 %3 to i64
  %7 = getelementptr inbounds [3 x i32], ptr @switch.table.ptcache_old_elemsize, i64 0, i64 %6
  %8 = load i32, ptr %7, align 4
  br label %9

9:                                                ; preds = %1, %5
  %10 = phi i32 [ %8, %5 ], [ 0, %1 ]
  ret i32 %10
}

; Function Attrs: nofree noinline nounwind optsize uwtable
define internal fastcc noundef i32 @ptcache_file_read(ptr nocapture noundef readonly %0, ptr nocapture noundef %1, i32 noundef %2, i32 noundef %3) unnamed_addr #8 !PGOFuncName !363 {
  %5 = zext i32 %3 to i64
  %6 = zext i32 %2 to i64
  %7 = load ptr, ptr %0, align 8, !tbaa !74
  %8 = tail call i64 @fread(ptr noundef %1, i64 noundef %5, i64 noundef %6, ptr noundef %7) #26
  %9 = icmp eq i64 %8, %6
  %10 = zext i1 %9 to i32
  ret i32 %10
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define dso_local void @BKE_ptcache_validate(ptr noundef %0, i32 noundef %1) local_unnamed_addr #17 {
  %3 = icmp eq ptr %0, null
  br i1 %3, label %9, label %4

4:                                                ; preds = %2
  %5 = getelementptr inbounds %struct.PointCache, ptr %0, i64 0, i32 2
  %6 = load i32, ptr %5, align 8, !tbaa !226
  %7 = or i32 %6, 4
  store i32 %7, ptr %5, align 8, !tbaa !226
  %8 = getelementptr inbounds %struct.PointCache, ptr %0, i64 0, i32 4
  store i32 %1, ptr %8, align 8, !tbaa !227
  br label %9

9:                                                ; preds = %4, %2
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @copy_v3_v3(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1) unnamed_addr #17 !PGOFuncName !364 {
  %3 = load float, ptr %1, align 4, !tbaa !116
  store float %3, ptr %0, align 4, !tbaa !116
  %4 = getelementptr inbounds float, ptr %1, i64 1
  %5 = load float, ptr %4, align 4, !tbaa !116
  %6 = getelementptr inbounds float, ptr %0, i64 1
  store float %5, ptr %6, align 4, !tbaa !116
  %7 = getelementptr inbounds float, ptr %1, i64 2
  %8 = load float, ptr %7, align 4, !tbaa !116
  %9 = getelementptr inbounds float, ptr %0, i64 2
  store float %8, ptr %9, align 4, !tbaa !116
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @mul_v3_fl(ptr nocapture noundef %0, float noundef %1) unnamed_addr #17 !PGOFuncName !365 {
  %3 = load <2 x float>, ptr %0, align 4, !tbaa !116
  %4 = insertelement <2 x float> poison, float %1, i64 0
  %5 = shufflevector <2 x float> %4, <2 x float> poison, <2 x i32> zeroinitializer
  %6 = fmul <2 x float> %3, %5
  store <2 x float> %6, ptr %0, align 4, !tbaa !116
  %7 = getelementptr inbounds float, ptr %0, i64 2
  %8 = load float, ptr %7, align 4, !tbaa !116
  %9 = fmul float %8, %1
  store float %9, ptr %7, align 4, !tbaa !116
  ret void
}

; Function Attrs: optsize
declare void @psys_interpolate_particle(i16 noundef signext, ptr noundef, float noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nofree nounwind optsize
declare noundef i64 @fwrite(ptr nocapture noundef, i64 noundef, i64 noundef, ptr nocapture noundef) local_unnamed_addr #12

; Function Attrs: nofree nounwind optsize
declare noundef i64 @fread(ptr nocapture noundef, i64 noundef, i64 noundef, ptr nocapture noundef) local_unnamed_addr #12

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @sub_v3_v3v3(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2) unnamed_addr #17 !PGOFuncName !366 {
  %4 = load float, ptr %1, align 4, !tbaa !116
  %5 = load float, ptr %2, align 4, !tbaa !116
  %6 = fsub float %4, %5
  store float %6, ptr %0, align 4, !tbaa !116
  %7 = getelementptr inbounds float, ptr %1, i64 1
  %8 = load float, ptr %7, align 4, !tbaa !116
  %9 = getelementptr inbounds float, ptr %2, i64 1
  %10 = load float, ptr %9, align 4, !tbaa !116
  %11 = fsub float %8, %10
  %12 = getelementptr inbounds float, ptr %0, i64 1
  store float %11, ptr %12, align 4, !tbaa !116
  %13 = getelementptr inbounds float, ptr %1, i64 2
  %14 = load float, ptr %13, align 4, !tbaa !116
  %15 = getelementptr inbounds float, ptr %2, i64 2
  %16 = load float, ptr %15, align 4, !tbaa !116
  %17 = fsub float %14, %16
  %18 = getelementptr inbounds float, ptr %0, i64 2
  store float %17, ptr %18, align 4, !tbaa !116
  ret void
}

; Function Attrs: optsize
declare void @unit_qt(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @interp_qt_qtqt(ptr noundef, ptr noundef, ptr noundef, float noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @modifier_setError(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nofree noinline nounwind optsize uwtable
define internal fastcc noundef i32 @ptcache_file_write(ptr nocapture noundef readonly %0, ptr nocapture noundef %1, i32 noundef %2, i32 noundef %3) unnamed_addr #8 !PGOFuncName !367 {
  %5 = zext i32 %3 to i64
  %6 = zext i32 %2 to i64
  %7 = load ptr, ptr %0, align 8, !tbaa !74
  %8 = tail call i64 @fwrite(ptr noundef %1, i64 noundef %5, i64 noundef %6, ptr noundef %7) #26
  %9 = icmp eq i64 %8, %6
  %10 = zext i1 %9 to i32
  ret i32 %10
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @ptcache_file_compressed_write(ptr nocapture noundef readonly %0, ptr nocapture noundef %1, i32 noundef %2, ptr nocapture noundef %3) unnamed_addr #0 !PGOFuncName !368 {
  %5 = alloca i8, align 1
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %5) #25
  store i8 0, ptr %5, align 1, !tbaa !165
  %8 = load ptr, ptr @MEM_callocN, align 8, !tbaa !34
  %9 = tail call ptr %8(i64 noundef 16, ptr noundef nonnull @.str.27) #24
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %6) #25
  store i64 5, ptr %6, align 8, !tbaa !369
  %10 = call fastcc i32 @ptcache_file_write(ptr noundef %0, ptr noundef nonnull %5, i32 noundef 1, i32 noundef 1) #26, !range !160
  %11 = load i8, ptr %5, align 1, !tbaa !165
  %12 = icmp eq i8 %11, 0
  br i1 %12, label %13, label %15

13:                                               ; preds = %4
  %14 = tail call fastcc i32 @ptcache_file_write(ptr noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef 1) #26, !range !160
  br label %22

15:                                               ; preds = %4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %7) #25
  store i32 0, ptr %7, align 4, !tbaa !125
  %16 = call fastcc i32 @ptcache_file_write(ptr noundef %0, ptr noundef nonnull %7, i32 noundef 1, i32 noundef 4) #26, !range !160
  %17 = tail call fastcc i32 @ptcache_file_write(ptr noundef %0, ptr noundef %3, i32 noundef 0, i32 noundef 1) #26, !range !160
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %7) #25
  %18 = icmp eq i8 %11, 2
  br i1 %18, label %19, label %22

19:                                               ; preds = %15
  %20 = call fastcc i32 @ptcache_file_write(ptr noundef %0, ptr noundef nonnull %6, i32 noundef 1, i32 noundef 4) #26, !range !160
  %21 = tail call fastcc i32 @ptcache_file_write(ptr noundef %0, ptr noundef %9, i32 noundef 5, i32 noundef 1) #26, !range !160
  br label %22

22:                                               ; preds = %13, %19, %15
  %23 = load ptr, ptr @MEM_freeN, align 8, !tbaa !34
  tail call void %23(ptr noundef %9) #24
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %6) #25
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %5) #25
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @ptcache_file_compressed_read(ptr nocapture noundef readonly %0, ptr nocapture noundef %1, i32 noundef %2) unnamed_addr #0 !PGOFuncName !370 {
  %4 = alloca i8, align 1
  %5 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %4) #25
  store i8 0, ptr %4, align 1, !tbaa !165
  %6 = load ptr, ptr @MEM_callocN, align 8, !tbaa !34
  %7 = tail call ptr %6(i64 noundef 16, ptr noundef nonnull @.str.27) #24
  %8 = call fastcc i32 @ptcache_file_read(ptr noundef %0, ptr noundef nonnull %4, i32 noundef 1, i32 noundef 1) #26, !range !160
  %9 = load i8, ptr %4, align 1, !tbaa !165
  %10 = icmp eq i8 %9, 0
  br i1 %10, label %22, label %11

11:                                               ; preds = %3
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #25
  %12 = call fastcc i32 @ptcache_file_read(ptr noundef %0, ptr noundef nonnull %5, i32 noundef 1, i32 noundef 4) #26, !range !160
  %13 = load i32, ptr %5, align 4, !tbaa !125
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %21, label %15

15:                                               ; preds = %11
  %16 = zext i32 %13 to i64
  %17 = load ptr, ptr @MEM_callocN, align 8, !tbaa !34
  %18 = tail call ptr %17(i64 noundef %16, ptr noundef nonnull @.str.29) #24
  %19 = tail call fastcc i32 @ptcache_file_read(ptr noundef %0, ptr noundef %18, i32 noundef %13, i32 noundef 1) #26, !range !160
  %20 = load ptr, ptr @MEM_freeN, align 8, !tbaa !34
  tail call void %20(ptr noundef %18) #24
  br label %21

21:                                               ; preds = %11, %15
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #25
  br label %24

22:                                               ; preds = %3
  %23 = tail call fastcc i32 @ptcache_file_read(ptr noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef 1) #26, !range !160
  br label %24

24:                                               ; preds = %22, %21
  %25 = load ptr, ptr @MEM_freeN, align 8, !tbaa !34
  tail call void %25(ptr noundef %7) #24
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %4) #25
  ret void
}

; Function Attrs: optsize
declare void @copy_qt_qt(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @ptcache_file_pointers_init(ptr noundef %0) unnamed_addr #17 !PGOFuncName !371 {
  %2 = getelementptr inbounds %struct.PTCacheFile, ptr %0, i64 0, i32 5
  %3 = load i32, ptr %2, align 8, !tbaa !264
  %4 = getelementptr inbounds %struct.PTCacheFile, ptr %0, i64 0, i32 7
  %5 = getelementptr inbounds %struct.PTCacheFile, ptr %0, i64 0, i32 8
  %6 = getelementptr inbounds %struct.PTCacheFile, ptr %0, i64 0, i32 7, i32 1
  %7 = insertelement <2 x i32> poison, i32 %3, i64 0
  %8 = shufflevector <2 x i32> %7, <2 x i32> poison, <2 x i32> zeroinitializer
  %9 = and <2 x i32> %8, <i32 1, i32 2>
  %10 = icmp eq <2 x i32> %9, zeroinitializer
  %11 = insertelement <2 x ptr> poison, ptr %4, i64 0
  %12 = insertelement <2 x ptr> %11, ptr %6, i64 1
  %13 = select <2 x i1> %10, <2 x ptr> zeroinitializer, <2 x ptr> %12
  store <2 x ptr> %13, ptr %5, align 8, !tbaa !34
  %14 = getelementptr inbounds %struct.PTCacheFile, ptr %0, i64 0, i32 7, i32 2
  %15 = getelementptr inbounds %struct.PTCacheFile, ptr %0, i64 0, i32 8, i64 2
  %16 = getelementptr inbounds %struct.PTCacheFile, ptr %0, i64 0, i32 7, i32 3
  %17 = and <2 x i32> %8, <i32 4, i32 8>
  %18 = icmp eq <2 x i32> %17, zeroinitializer
  %19 = insertelement <2 x ptr> poison, ptr %14, i64 0
  %20 = insertelement <2 x ptr> %19, ptr %16, i64 1
  %21 = select <2 x i1> %18, <2 x ptr> zeroinitializer, <2 x ptr> %20
  store <2 x ptr> %21, ptr %15, align 8, !tbaa !34
  %22 = getelementptr inbounds %struct.PTCacheFile, ptr %0, i64 0, i32 7, i32 4
  %23 = getelementptr inbounds %struct.PTCacheFile, ptr %0, i64 0, i32 8, i64 4
  %24 = getelementptr inbounds %struct.PTCacheFile, ptr %0, i64 0, i32 7, i32 5
  %25 = and <2 x i32> %8, <i32 16, i32 32>
  %26 = icmp eq <2 x i32> %25, zeroinitializer
  %27 = insertelement <2 x ptr> poison, ptr %22, i64 0
  %28 = insertelement <2 x ptr> %27, ptr %24, i64 1
  %29 = select <2 x i1> %26, <2 x ptr> zeroinitializer, <2 x ptr> %28
  store <2 x ptr> %29, ptr %23, align 8, !tbaa !34
  %30 = getelementptr inbounds %struct.PTCacheFile, ptr %0, i64 0, i32 7, i32 6
  %31 = getelementptr inbounds %struct.PTCacheFile, ptr %0, i64 0, i32 8, i64 6
  %32 = getelementptr inbounds %struct.PTCacheFile, ptr %0, i64 0, i32 7, i32 7
  %33 = and <2 x i32> %8, <i32 64, i32 128>
  %34 = icmp eq <2 x i32> %33, zeroinitializer
  %35 = insertelement <2 x ptr> poison, ptr %30, i64 0
  %36 = insertelement <2 x ptr> %35, ptr %32, i64 1
  %37 = select <2 x i1> %34, <2 x ptr> zeroinitializer, <2 x ptr> %36
  store <2 x ptr> %37, ptr %31, align 8, !tbaa !34
  ret void
}

; Function Attrs: nofree noinline nounwind optsize uwtable
define internal fastcc noundef i32 @ptcache_file_header_begin_write(ptr nocapture noundef readonly %0) unnamed_addr #8 !PGOFuncName !372 {
  %2 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %2) #25
  %3 = getelementptr inbounds %struct.PTCacheFile, ptr %0, i64 0, i32 4
  %4 = load i32, ptr %3, align 4, !tbaa !249
  %5 = getelementptr inbounds %struct.PTCacheFile, ptr %0, i64 0, i32 6
  %6 = load i32, ptr %5, align 4, !tbaa !265
  %7 = add i32 %6, %4
  store i32 %7, ptr %2, align 4, !tbaa !125
  %8 = load ptr, ptr %0, align 8, !tbaa !74
  %9 = tail call i64 @fwrite(ptr noundef nonnull @.str.38, i64 noundef 1, i64 noundef 8, ptr noundef %8) #26
  %10 = icmp eq i64 %9, 8
  br i1 %10, label %11, label %16

11:                                               ; preds = %1
  %12 = load ptr, ptr %0, align 8, !tbaa !74
  %13 = call i64 @fwrite(ptr noundef nonnull %2, i64 noundef 4, i64 noundef 1, ptr noundef %12) #26
  %14 = icmp ne i64 %13, 0
  %15 = zext i1 %14 to i32
  br label %16

16:                                               ; preds = %11, %1
  %17 = phi i32 [ 0, %1 ], [ %15, %11 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2) #25
  ret i32 %17
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @ptcache_data_alloc(ptr nocapture noundef %0) unnamed_addr #0 !PGOFuncName !373 {
  %2 = getelementptr inbounds %struct.PTCacheMem, ptr %0, i64 0, i32 4
  %3 = load i32, ptr %2, align 8, !tbaa !220
  %4 = getelementptr inbounds %struct.PTCacheMem, ptr %0, i64 0, i32 3
  %5 = load i32, ptr %4, align 4, !tbaa !217
  br label %6

6:                                                ; preds = %1, %20
  %7 = phi i64 [ 0, %1 ], [ %21, %20 ]
  %8 = trunc i64 %7 to i32
  %9 = shl nuw nsw i32 1, %8
  %10 = and i32 %9, %3
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %20, label %12

12:                                               ; preds = %6
  %13 = load ptr, ptr @MEM_callocN, align 8, !tbaa !34
  %14 = getelementptr inbounds [8 x i32], ptr @ptcache_data_size, i64 0, i64 %7
  %15 = load i32, ptr %14, align 4, !tbaa !125
  %16 = mul nsw i32 %15, %5
  %17 = sext i32 %16 to i64
  %18 = tail call ptr %13(i64 noundef %17, ptr noundef nonnull @.str.40) #24
  %19 = getelementptr inbounds %struct.PTCacheMem, ptr %0, i64 0, i32 6, i64 %7
  store ptr %18, ptr %19, align 8, !tbaa !34
  br label %20

20:                                               ; preds = %6, %12
  %21 = add nuw nsw i64 %7, 1
  %22 = icmp eq i64 %21, 8
  br i1 %22, label %23, label %6, !llvm.loop !374

23:                                               ; preds = %20
  ret void
}

; Function Attrs: mustprogress nofree nounwind optsize willreturn memory(argmem: readwrite)
declare ptr @strcpy(ptr noalias noundef returned writeonly, ptr noalias nocapture noundef readonly) local_unnamed_addr #19

; Function Attrs: optsize
declare zeroext i8 @BLI_path_is_rel(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare zeroext i8 @BLI_path_abs(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare i32 @BLI_add_slash(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @BLI_split_file_part(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @BLI_temp_dir_session() local_unnamed_addr #2

; Function Attrs: optsize
declare i32 @BKE_object_insert_ptcache(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare double @PIL_check_seconds_timer() local_unnamed_addr #2

; Function Attrs: nofree noinline nounwind optsize uwtable
define internal fastcc void @ptcache_dt_to_str(ptr nocapture noundef writeonly %0, double noundef %1) unnamed_addr #8 !PGOFuncName !375 {
  %3 = fcmp ogt double %1, 6.000000e+01
  br i1 %3, label %4, label %22

4:                                                ; preds = %2
  %5 = fcmp ogt double %1, 3.600000e+03
  br i1 %5, label %6, label %15

6:                                                ; preds = %4
  %7 = fdiv double %1, 3.600000e+03
  %8 = fptosi double %7 to i32
  %9 = fdiv double %1, 6.000000e+01
  %10 = fptosi double %9 to i32
  %11 = srem i32 %10, 60
  %12 = fptosi double %1 to i32
  %13 = srem i32 %12, 60
  %14 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %0, ptr noundef nonnull dereferenceable(1) @.str.51, i32 noundef %8, i32 noundef %11, i32 noundef %13) #24
  br label %26

15:                                               ; preds = %4
  %16 = fdiv double %1, 6.000000e+01
  %17 = fptosi double %16 to i32
  %18 = srem i32 %17, 60
  %19 = fptosi double %1 to i32
  %20 = srem i32 %19, 60
  %21 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %0, ptr noundef nonnull dereferenceable(1) @.str.52, i32 noundef %18, i32 noundef %20) #24
  br label %26

22:                                               ; preds = %2
  %23 = fptosi double %1 to i32
  %24 = srem i32 %23, 60
  %25 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %0, ptr noundef nonnull dereferenceable(1) @.str.53, i32 noundef %24) #24
  br label %26

26:                                               ; preds = %6, %15, %22
  ret void
}

; Function Attrs: nofree nounwind optsize
declare noundef i32 @sprintf(ptr noalias nocapture noundef writeonly, ptr nocapture noundef readonly, ...) local_unnamed_addr #12

; Function Attrs: nofree noinline nounwind optsize uwtable
define internal fastcc noundef i32 @ptcache_file_data_read(ptr nocapture noundef readonly %0) unnamed_addr #8 !PGOFuncName !376 {
  %2 = getelementptr inbounds %struct.PTCacheFile, ptr %0, i64 0, i32 5
  br label %3

3:                                                ; preds = %1, %17
  %4 = phi i64 [ 0, %1 ], [ %18, %17 ]
  %5 = load i32, ptr %2, align 8, !tbaa !264
  %6 = trunc i64 %4 to i32
  %7 = shl nuw nsw i32 1, %6
  %8 = and i32 %5, %7
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %17, label %10

10:                                               ; preds = %3
  %11 = getelementptr inbounds %struct.PTCacheFile, ptr %0, i64 0, i32 8, i64 %4
  %12 = load ptr, ptr %11, align 8, !tbaa !34
  %13 = getelementptr inbounds [8 x i32], ptr @ptcache_data_size, i64 0, i64 %4
  %14 = load i32, ptr %13, align 4, !tbaa !125
  %15 = tail call fastcc i32 @ptcache_file_read(ptr noundef nonnull %0, ptr noundef %12, i32 noundef 1, i32 noundef %14) #26, !range !160
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %20, label %17

17:                                               ; preds = %3, %10
  %18 = add nuw nsw i64 %4, 1
  %19 = icmp eq i64 %18, 8
  br i1 %19, label %20, label %3, !llvm.loop !377

20:                                               ; preds = %17, %10
  %21 = phi i32 [ 0, %10 ], [ 1, %17 ]
  ret i32 %21
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @ptcache_data_copy(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) unnamed_addr #20 !PGOFuncName !378 {
  br label %3

3:                                                ; preds = %2, %16
  %4 = phi i64 [ 0, %2 ], [ %17, %16 ]
  %5 = getelementptr inbounds ptr, ptr %0, i64 %4
  %6 = load ptr, ptr %5, align 8, !tbaa !34
  %7 = icmp eq ptr %6, null
  br i1 %7, label %16, label %8

8:                                                ; preds = %3
  %9 = getelementptr inbounds ptr, ptr %1, i64 %4
  %10 = load ptr, ptr %9, align 8, !tbaa !34
  %11 = icmp eq ptr %10, null
  br i1 %11, label %16, label %12

12:                                               ; preds = %8
  %13 = getelementptr inbounds [8 x i32], ptr @ptcache_data_size, i64 0, i64 %4
  %14 = load i32, ptr %13, align 4, !tbaa !125
  %15 = sext i32 %14 to i64
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %10, ptr nonnull align 1 %6, i64 %15, i1 false)
  br label %16

16:                                               ; preds = %3, %8, %12
  %17 = add nuw nsw i64 %4, 1
  %18 = icmp eq i64 %17, 8
  br i1 %18, label %19, label %3, !llvm.loop !379

19:                                               ; preds = %16
  ret void
}

; Function Attrs: nofree noinline nounwind optsize uwtable
define internal fastcc noundef i32 @ptcache_file_data_write(ptr nocapture noundef readonly %0) unnamed_addr #8 !PGOFuncName !380 {
  %2 = getelementptr inbounds %struct.PTCacheFile, ptr %0, i64 0, i32 5
  br label %3

3:                                                ; preds = %1, %17
  %4 = phi i64 [ 0, %1 ], [ %18, %17 ]
  %5 = load i32, ptr %2, align 8, !tbaa !264
  %6 = trunc i64 %4 to i32
  %7 = shl nuw nsw i32 1, %6
  %8 = and i32 %5, %7
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %17, label %10

10:                                               ; preds = %3
  %11 = getelementptr inbounds %struct.PTCacheFile, ptr %0, i64 0, i32 8, i64 %4
  %12 = load ptr, ptr %11, align 8, !tbaa !34
  %13 = getelementptr inbounds [8 x i32], ptr @ptcache_data_size, i64 0, i64 %4
  %14 = load i32, ptr %13, align 4, !tbaa !125
  %15 = tail call fastcc i32 @ptcache_file_write(ptr noundef nonnull %0, ptr noundef %12, i32 noundef 1, i32 noundef %14) #26, !range !160
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %20, label %17

17:                                               ; preds = %3, %10
  %18 = add nuw nsw i64 %4, 1
  %19 = icmp eq i64 %18, 8
  br i1 %19, label %20, label %3, !llvm.loop !381

20:                                               ; preds = %17, %10
  %21 = phi i32 [ 0, %10 ], [ 1, %17 ]
  ret i32 %21
}

; Function Attrs: optsize
declare ptr @BLI_fopen(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @BLI_make_existing_file(ptr noundef) local_unnamed_addr #2

; Function Attrs: nofree nounwind optsize
declare noundef i32 @fseek(ptr nocapture noundef, i64 noundef, i32 noundef) local_unnamed_addr #12

; Function Attrs: nofree nounwind optsize
declare noundef i32 @fclose(ptr nocapture noundef) local_unnamed_addr #12

; Function Attrs: nofree nounwind willreturn memory(argmem: read)
declare i32 @bcmp(ptr nocapture, ptr nocapture, i64) local_unnamed_addr #21

; Function Attrs: nofree nounwind
declare noundef i32 @puts(ptr nocapture noundef readonly) local_unnamed_addr #22

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.floor.f32(float) #23

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #23

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #23

attributes #0 = { noinline nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, argmem: readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #5 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nofree noinline nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { nofree noinline norecurse nosync nounwind optsize memory(read, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #12 = { nofree nounwind optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { nofree noinline norecurse nosync nounwind optsize memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { nofree noinline norecurse nosync nounwind optsize memory(read, argmem: readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #15 = { mustprogress nofree nounwind optsize willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #16 = { mustprogress nofree nounwind optsize willreturn memory(read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #17 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #18 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #19 = { mustprogress nofree nounwind optsize willreturn memory(argmem: readwrite) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #20 = { nofree noinline norecurse nosync nounwind optsize memory(readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #21 = { nofree nounwind willreturn memory(argmem: read) }
attributes #22 = { nofree nounwind }
attributes #23 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #24 = { nounwind optsize }
attributes #25 = { nounwind }
attributes #26 = { optsize }
attributes #27 = { nounwind optsize willreturn memory(read) }

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
!38 = !{!39, !40, i64 52}
!39 = !{!"ParticleKey", !36, i64 0, !36, i64 12, !36, i64 24, !36, i64 40, !40, i64 52}
!40 = !{!"float", !36, i64 0}
!41 = !{!42, !35, i64 24}
!42 = !{!"PTCacheID", !35, i64 0, !35, i64 8, !35, i64 16, !35, i64 24, !35, i64 32, !43, i64 40, !43, i64 44, !43, i64 48, !43, i64 52, !43, i64 56, !43, i64 60, !43, i64 64, !35, i64 72, !35, i64 80, !35, i64 88, !35, i64 96, !35, i64 104, !35, i64 112, !35, i64 120, !35, i64 128, !35, i64 136, !35, i64 144, !35, i64 152, !35, i64 160, !35, i64 168, !35, i64 176, !35, i64 184, !35, i64 192}
!43 = !{!"int", !36, i64 0}
!44 = !{!42, !35, i64 32}
!45 = !{!46, !35, i64 352}
!46 = !{!"SoftBody", !43, i64 0, !43, i64 4, !35, i64 8, !35, i64 16, !36, i64 24, !36, i64 25, !47, i64 26, !40, i64 28, !36, i64 32, !40, i64 96, !40, i64 100, !40, i64 104, !40, i64 108, !40, i64 112, !40, i64 116, !40, i64 120, !40, i64 124, !40, i64 128, !47, i64 132, !36, i64 134, !47, i64 198, !40, i64 200, !40, i64 204, !36, i64 208, !43, i64 272, !43, i64 276, !43, i64 280, !47, i64 284, !47, i64 286, !35, i64 288, !43, i64 296, !43, i64 300, !40, i64 304, !40, i64 308, !40, i64 312, !40, i64 316, !47, i64 320, !47, i64 322, !47, i64 324, !47, i64 326, !47, i64 328, !47, i64 330, !47, i64 332, !47, i64 334, !35, i64 336, !40, i64 344, !40, i64 348, !35, i64 352, !48, i64 360, !35, i64 376, !36, i64 384, !36, i64 396, !36, i64 432, !43, i64 468}
!47 = !{!"short", !36, i64 0}
!48 = !{!"ListBase", !35, i64 0, !35, i64 8}
!49 = !{!42, !35, i64 176}
!50 = !{!42, !35, i64 184}
!51 = !{!42, !35, i64 192}
!52 = !{!42, !35, i64 152}
!53 = !{!42, !35, i64 136}
!54 = !{!42, !35, i64 144}
!55 = !{!42, !35, i64 72}
!56 = !{!42, !35, i64 80}
!57 = !{!42, !35, i64 88}
!58 = !{!42, !35, i64 160}
!59 = !{!42, !35, i64 168}
!60 = !{!42, !43, i64 60}
!61 = !{!62, !43, i64 56}
!62 = !{!"PointCache", !35, i64 0, !35, i64 8, !43, i64 16, !43, i64 20, !43, i64 24, !43, i64 28, !43, i64 32, !43, i64 36, !43, i64 40, !43, i64 44, !43, i64 48, !43, i64 52, !43, i64 56, !47, i64 60, !47, i64 62, !36, i64 64, !36, i64 128, !36, i64 192, !36, i64 256, !35, i64 1280, !48, i64 1288, !35, i64 1304, !35, i64 1312}
!63 = !{!42, !43, i64 44}
!64 = !{!42, !43, i64 52}
!65 = !{!42, !43, i64 56}
!66 = !{!"pointcache.c:ptcache_softbody_totpoint"}
!67 = !{!46, !43, i64 0}
!68 = !{!"pointcache.c:ptcache_softbody_error"}
!69 = !{!"pointcache.c:ptcache_softbody_write"}
!70 = !{!46, !35, i64 8}
!71 = !{!"pointcache.c:ptcache_softbody_read"}
!72 = !{!"pointcache.c:ptcache_softbody_interpolate"}
!73 = !{!"pointcache.c:ptcache_basic_header_write"}
!74 = !{!75, !35, i64 0}
!75 = !{!"PTCacheFile", !35, i64 0, !43, i64 8, !43, i64 12, !43, i64 16, !43, i64 20, !43, i64 24, !43, i64 28, !76, i64 32, !36, i64 128}
!76 = !{!"PTCacheData", !43, i64 0, !36, i64 4, !36, i64 16, !36, i64 28, !36, i64 44, !40, i64 56, !36, i64 60, !77, i64 72}
!77 = !{!"BoidData", !40, i64 0, !36, i64 4, !47, i64 16, !47, i64 18}
!78 = !{!"pointcache.c:ptcache_basic_header_read"}
!79 = !{!42, !43, i64 40}
!80 = !{!81, !35, i64 576}
!81 = !{!"ParticleSystem", !35, i64 0, !35, i64 8, !35, i64 16, !35, i64 24, !35, i64 32, !35, i64 40, !35, i64 48, !35, i64 56, !35, i64 64, !48, i64 72, !48, i64 88, !35, i64 104, !35, i64 112, !35, i64 120, !35, i64 128, !35, i64 136, !35, i64 144, !48, i64 152, !36, i64 168, !36, i64 232, !40, i64 296, !40, i64 300, !40, i64 304, !43, i64 308, !43, i64 312, !43, i64 316, !43, i64 320, !43, i64 324, !43, i64 328, !43, i64 332, !43, i64 336, !47, i64 340, !47, i64 342, !47, i64 344, !47, i64 346, !36, i64 348, !36, i64 540, !47, i64 564, !47, i64 566, !35, i64 568, !35, i64 576, !48, i64 584, !35, i64 600, !35, i64 608, !43, i64 616, !43, i64 620, !35, i64 624, !35, i64 632, !35, i64 640, !40, i64 648, !40, i64 652}
!82 = !{!81, !35, i64 16}
!83 = !{!84, !47, i64 160}
!84 = !{!"ParticleSettings", !85, i64 0, !35, i64 120, !35, i64 128, !35, i64 136, !35, i64 144, !43, i64 152, !43, i64 156, !47, i64 160, !47, i64 162, !47, i64 164, !47, i64 166, !47, i64 168, !47, i64 170, !47, i64 172, !47, i64 174, !43, i64 176, !43, i64 180, !47, i64 184, !47, i64 186, !47, i64 188, !47, i64 190, !47, i64 192, !47, i64 194, !47, i64 196, !47, i64 198, !47, i64 200, !47, i64 202, !47, i64 204, !47, i64 206, !47, i64 208, !47, i64 210, !47, i64 212, !47, i64 214, !47, i64 216, !47, i64 218, !47, i64 220, !47, i64 222, !47, i64 224, !47, i64 226, !47, i64 228, !47, i64 230, !40, i64 232, !40, i64 236, !36, i64 240, !36, i64 248, !40, i64 256, !40, i64 260, !40, i64 264, !47, i64 268, !47, i64 270, !40, i64 272, !40, i64 276, !40, i64 280, !40, i64 284, !40, i64 288, !40, i64 292, !40, i64 296, !40, i64 300, !40, i64 304, !40, i64 308, !40, i64 312, !40, i64 316, !36, i64 320, !43, i64 324, !43, i64 328, !43, i64 332, !43, i64 336, !47, i64 340, !36, i64 342, !40, i64 348, !40, i64 352, !40, i64 356, !40, i64 360, !40, i64 364, !40, i64 368, !40, i64 372, !36, i64 376, !40, i64 388, !40, i64 392, !40, i64 396, !40, i64 400, !40, i64 404, !40, i64 408, !40, i64 412, !36, i64 416, !40, i64 428, !40, i64 432, !40, i64 436, !40, i64 440, !43, i64 444, !43, i64 448, !40, i64 452, !40, i64 456, !40, i64 460, !40, i64 464, !40, i64 468, !40, i64 472, !40, i64 476, !40, i64 480, !40, i64 484, !40, i64 488, !40, i64 492, !40, i64 496, !40, i64 500, !40, i64 504, !40, i64 508, !40, i64 512, !40, i64 516, !40, i64 520, !40, i64 524, !40, i64 528, !40, i64 532, !40, i64 536, !40, i64 540, !40, i64 544, !40, i64 548, !36, i64 552, !40, i64 560, !40, i64 564, !43, i64 568, !43, i64 572, !36, i64 576, !35, i64 720, !48, i64 728, !35, i64 744, !35, i64 752, !35, i64 760, !35, i64 768, !35, i64 776, !35, i64 784, !47, i64 792, !36, i64 794}
!85 = !{!"ID", !35, i64 0, !35, i64 8, !35, i64 16, !35, i64 24, !36, i64 32, !47, i64 98, !43, i64 100, !43, i64 104, !43, i64 108, !35, i64 112}
!86 = !{!42, !43, i64 48}
!87 = !{!84, !47, i64 168}
!88 = !{!84, !35, i64 136}
!89 = !{!90, !43, i64 52}
!90 = !{!"SPHFluidSettings", !40, i64 0, !40, i64 4, !40, i64 8, !40, i64 12, !40, i64 16, !40, i64 20, !40, i64 24, !40, i64 28, !40, i64 32, !40, i64 36, !40, i64 40, !40, i64 44, !40, i64 48, !43, i64 52, !43, i64 56, !47, i64 60, !36, i64 62}
!91 = !{!42, !35, i64 112}
!92 = !{!42, !35, i64 120}
!93 = !{!84, !43, i64 152}
!94 = !{!84, !47, i64 170}
!95 = !{!84, !47, i64 172}
!96 = !{!84, !40, i64 388}
!97 = !{!42, !43, i64 64}
!98 = !{!"pointcache.c:ptcache_particle_totpoint"}
!99 = !{!81, !43, i64 320}
!100 = !{!"pointcache.c:ptcache_particle_totwrite"}
!101 = !{!62, !43, i64 20}
!102 = !{!81, !35, i64 24}
!103 = !{!104, !40, i64 140}
!104 = !{!"ParticleData", !39, i64 0, !39, i64 56, !35, i64 112, !35, i64 120, !35, i64 128, !43, i64 136, !40, i64 140, !40, i64 144, !40, i64 148, !43, i64 152, !43, i64 156, !36, i64 160, !40, i64 176, !40, i64 180, !40, i64 184, !43, i64 188, !43, i64 192, !47, i64 196, !47, i64 198}
!105 = !{!104, !40, i64 148}
!106 = distinct !{!106, !107}
!107 = !{!"llvm.loop.mustprogress"}
!108 = !{!"pointcache.c:ptcache_particle_error"}
!109 = !{!"pointcache.c:ptcache_particle_write"}
!110 = !{!104, !35, i64 128}
!111 = !{!104, !40, i64 144}
!112 = !{!104, !40, i64 52}
!113 = !{!104, !40, i64 108}
!114 = !{!"pointcache.c:ptcache_particle_read"}
!115 = !{!84, !40, i64 300}
!116 = !{!40, !40, i64 0}
!117 = !{!"pointcache.c:ptcache_particle_interpolate"}
!118 = !{!"pointcache.c:ptcache_particle_extra_write"}
!119 = !{!81, !43, i64 616}
!120 = !{!81, !35, i64 608}
!121 = !{!122, !43, i64 16}
!122 = !{!"PTCacheExtra", !35, i64 0, !35, i64 8, !43, i64 16, !43, i64 20, !35, i64 24}
!123 = !{!122, !43, i64 20}
!124 = !{!122, !35, i64 24}
!125 = !{!43, !43, i64 0}
!126 = !{!"pointcache.c:ptcache_particle_extra_read"}
!127 = !{!81, !43, i64 620}
!128 = distinct !{!128, !107}
!129 = !{!130, !35, i64 144}
!130 = !{!"ClothModifierData", !131, i64 0, !35, i64 112, !35, i64 120, !35, i64 128, !35, i64 136, !35, i64 144, !48, i64 152}
!131 = !{!"ModifierData", !35, i64 0, !35, i64 8, !43, i64 16, !43, i64 20, !43, i64 24, !43, i64 28, !36, i64 32, !35, i64 96, !35, i64 104}
!132 = !{!"pointcache.c:ptcache_cloth_totpoint"}
!133 = !{!130, !35, i64 120}
!134 = !{!135, !43, i64 16}
!135 = !{!"Cloth", !35, i64 0, !35, i64 8, !43, i64 16, !43, i64 20, !43, i64 24, !36, i64 28, !36, i64 29, !47, i64 30, !35, i64 32, !35, i64 40, !35, i64 48, !35, i64 56, !35, i64 64, !35, i64 72, !43, i64 80, !43, i64 84}
!136 = !{!"pointcache.c:ptcache_cloth_error"}
!137 = !{!"pointcache.c:ptcache_cloth_write"}
!138 = !{!135, !35, i64 0}
!139 = !{!"pointcache.c:ptcache_cloth_read"}
!140 = !{!"pointcache.c:ptcache_cloth_interpolate"}
!141 = !{!142, !35, i64 112}
!142 = !{!"SmokeModifierData", !131, i64 0, !35, i64 112, !35, i64 120, !35, i64 128, !40, i64 136, !43, i64 140}
!143 = !{!42, !35, i64 104}
!144 = !{!42, !35, i64 96}
!145 = !{!146, !35, i64 8}
!146 = !{!"SmokeDomainSettings", !35, i64 0, !35, i64 8, !35, i64 16, !35, i64 24, !35, i64 32, !35, i64 40, !35, i64 48, !35, i64 56, !35, i64 64, !35, i64 72, !35, i64 80, !35, i64 88, !36, i64 96, !36, i64 108, !36, i64 120, !36, i64 132, !36, i64 144, !36, i64 156, !36, i64 168, !36, i64 180, !36, i64 192, !36, i64 204, !36, i64 268, !36, i64 332, !36, i64 344, !36, i64 356, !36, i64 368, !43, i64 380, !40, i64 384, !40, i64 388, !43, i64 392, !43, i64 396, !40, i64 400, !40, i64 404, !40, i64 408, !43, i64 412, !43, i64 416, !43, i64 420, !43, i64 424, !47, i64 428, !47, i64 430, !43, i64 432, !40, i64 436, !36, i64 440, !40, i64 452, !43, i64 456, !43, i64 460, !36, i64 464, !36, i64 480, !35, i64 512, !43, i64 520, !40, i64 524, !40, i64 528, !43, i64 532, !36, i64 536, !43, i64 548, !40, i64 552, !40, i64 556, !40, i64 560, !40, i64 564, !40, i64 568, !36, i64 572}
!147 = !{!146, !35, i64 48}
!148 = !{!"pointcache.c:ptcache_smoke_totpoint"}
!149 = !{!"pointcache.c:ptcache_smoke_error"}
!150 = !{!"pointcache.c:ptcache_smoke_read"}
!151 = !{!"pointcache.c:ptcache_smoke_write"}
!152 = !{!153, !35, i64 48}
!153 = !{!"DynamicPaintSurface", !35, i64 0, !35, i64 8, !35, i64 16, !35, i64 24, !35, i64 32, !35, i64 40, !35, i64 48, !48, i64 56, !43, i64 72, !36, i64 76, !47, i64 140, !47, i64 142, !47, i64 144, !47, i64 146, !47, i64 148, !47, i64 150, !47, i64 152, !47, i64 154, !43, i64 156, !43, i64 160, !43, i64 164, !43, i64 168, !43, i64 172, !43, i64 176, !43, i64 180, !36, i64 184, !35, i64 200, !36, i64 208, !43, i64 272, !43, i64 276, !40, i64 280, !40, i64 284, !40, i64 288, !40, i64 292, !40, i64 296, !40, i64 300, !40, i64 304, !40, i64 308, !40, i64 312, !40, i64 316, !40, i64 320, !40, i64 324, !40, i64 328, !40, i64 332, !40, i64 336, !43, i64 340, !36, i64 344, !36, i64 408, !36, i64 1432, !36, i64 1496}
!154 = !{!"pointcache.c:ptcache_dynamicpaint_totpoint"}
!155 = !{!153, !35, i64 24}
!156 = !{!157, !43, i64 32}
!157 = !{!"PaintSurfaceData", !35, i64 0, !35, i64 8, !35, i64 16, !35, i64 24, !43, i64 32}
!158 = !{!"pointcache.c:ptcache_dynamicpaint_error"}
!159 = !{!"pointcache.c:ptcache_dynamicpaint_write"}
!160 = !{i32 0, i32 2}
!161 = !{!153, !47, i64 140}
!162 = !{!153, !47, i64 142}
!163 = !{!157, !35, i64 8}
!164 = !{!"pointcache.c:ptcache_dynamicpaint_read"}
!165 = !{!36, !36, i64 0}
!166 = !{!167, !35, i64 40}
!167 = !{!"RigidBodyWorld", !35, i64 0, !35, i64 8, !35, i64 16, !35, i64 24, !43, i64 32, !40, i64 36, !35, i64 40, !48, i64 48, !43, i64 64, !47, i64 68, !47, i64 70, !43, i64 72, !40, i64 76, !35, i64 80}
!168 = !{!"pointcache.c:ptcache_rigidbody_totpoint"}
!169 = !{!167, !43, i64 64}
!170 = !{!"pointcache.c:ptcache_rigidbody_error"}
!171 = !{!"pointcache.c:ptcache_rigidbody_write"}
!172 = !{!167, !35, i64 16}
!173 = !{!174, !35, i64 1368}
!174 = !{!"Object", !85, i64 0, !35, i64 120, !35, i64 128, !47, i64 136, !47, i64 138, !43, i64 140, !43, i64 144, !43, i64 148, !36, i64 152, !35, i64 216, !35, i64 224, !35, i64 232, !35, i64 240, !35, i64 248, !35, i64 256, !35, i64 264, !35, i64 272, !35, i64 280, !35, i64 288, !35, i64 296, !35, i64 304, !175, i64 312, !35, i64 360, !48, i64 368, !48, i64 384, !48, i64 400, !48, i64 416, !43, i64 432, !43, i64 436, !35, i64 440, !35, i64 448, !43, i64 456, !43, i64 460, !36, i64 464, !36, i64 476, !36, i64 488, !36, i64 500, !36, i64 512, !36, i64 524, !36, i64 536, !36, i64 548, !36, i64 560, !36, i64 576, !36, i64 592, !36, i64 604, !40, i64 616, !40, i64 620, !36, i64 624, !36, i64 688, !36, i64 752, !36, i64 816, !36, i64 880, !43, i64 944, !47, i64 948, !47, i64 950, !47, i64 952, !47, i64 954, !47, i64 956, !47, i64 958, !47, i64 960, !47, i64 962, !47, i64 964, !36, i64 966, !36, i64 967, !43, i64 968, !43, i64 972, !43, i64 976, !43, i64 980, !43, i64 984, !40, i64 988, !40, i64 992, !40, i64 996, !40, i64 1000, !40, i64 1004, !40, i64 1008, !40, i64 1012, !40, i64 1016, !40, i64 1020, !40, i64 1024, !40, i64 1028, !40, i64 1032, !47, i64 1036, !47, i64 1038, !47, i64 1040, !36, i64 1042, !36, i64 1043, !47, i64 1044, !36, i64 1046, !36, i64 1047, !40, i64 1048, !40, i64 1052, !48, i64 1056, !48, i64 1072, !48, i64 1088, !48, i64 1104, !40, i64 1120, !47, i64 1124, !47, i64 1126, !36, i64 1128, !43, i64 1144, !43, i64 1148, !35, i64 1152, !36, i64 1160, !36, i64 1161, !47, i64 1162, !36, i64 1164, !48, i64 1176, !48, i64 1192, !48, i64 1208, !48, i64 1224, !35, i64 1240, !35, i64 1248, !35, i64 1256, !36, i64 1264, !36, i64 1265, !47, i64 1266, !40, i64 1268, !35, i64 1272, !35, i64 1280, !35, i64 1288, !35, i64 1296, !176, i64 1304, !176, i64 1312, !43, i64 1320, !43, i64 1324, !48, i64 1328, !48, i64 1344, !35, i64 1360, !35, i64 1368, !35, i64 1376, !36, i64 1384, !35, i64 1392, !48, i64 1400, !35, i64 1416}
!175 = !{!"bAnimVizSettings", !43, i64 0, !43, i64 4, !43, i64 8, !43, i64 12, !47, i64 16, !47, i64 18, !47, i64 20, !47, i64 22, !47, i64 24, !47, i64 26, !47, i64 28, !47, i64 30, !43, i64 32, !43, i64 36, !43, i64 40, !43, i64 44}
!176 = !{!"long", !36, i64 0}
!177 = !{!178, !47, i64 16}
!178 = !{!"RigidBodyOb", !35, i64 0, !35, i64 8, !47, i64 16, !47, i64 18, !43, i64 20, !43, i64 24, !47, i64 28, !47, i64 30, !40, i64 32, !40, i64 36, !40, i64 40, !40, i64 44, !40, i64 48, !40, i64 52, !40, i64 56, !40, i64 60, !36, i64 64, !36, i64 80, !40, i64 92}
!179 = !{!"pointcache.c:ptcache_rigidbody_read"}
!180 = !{!"pointcache.c:ptcache_rigidbody_interpolate"}
!181 = !{!174, !35, i64 1248}
!182 = distinct !{!182, !107}
!183 = !{!131, !43, i64 16}
!184 = !{!142, !43, i64 140}
!185 = !{!186, !35, i64 112}
!186 = !{!"DynamicPaintModifierData", !131, i64 0, !35, i64 112, !35, i64 120, !43, i64 128, !43, i64 132}
!187 = distinct !{!187, !107}
!188 = distinct !{!188, !107}
!189 = !{!190, !35, i64 4952}
!190 = !{!"Scene", !85, i64 0, !35, i64 120, !35, i64 128, !35, i64 136, !35, i64 144, !48, i64 152, !35, i64 168, !35, i64 176, !36, i64 184, !36, i64 196, !36, i64 208, !36, i64 220, !43, i64 232, !43, i64 236, !43, i64 240, !47, i64 244, !36, i64 246, !36, i64 247, !35, i64 248, !35, i64 256, !35, i64 264, !35, i64 272, !191, i64 280, !200, i64 4264, !48, i64 4296, !48, i64 4312, !35, i64 4328, !35, i64 4336, !35, i64 4344, !35, i64 4352, !35, i64 4360, !35, i64 4368, !47, i64 4376, !47, i64 4378, !43, i64 4380, !48, i64 4384, !201, i64 4400, !202, i64 4416, !205, i64 4600, !35, i64 4608, !206, i64 4616, !35, i64 4640, !176, i64 4648, !176, i64 4656, !193, i64 4664, !194, i64 4824, !207, i64 4888, !35, i64 4952}
!191 = !{!"RenderData", !192, i64 0, !35, i64 248, !35, i64 256, !195, i64 264, !196, i64 328, !43, i64 400, !43, i64 404, !43, i64 408, !40, i64 412, !43, i64 416, !43, i64 420, !43, i64 424, !43, i64 428, !47, i64 432, !47, i64 434, !40, i64 436, !40, i64 440, !40, i64 444, !40, i64 448, !40, i64 452, !47, i64 456, !47, i64 458, !47, i64 460, !47, i64 462, !47, i64 464, !47, i64 466, !43, i64 468, !47, i64 472, !47, i64 474, !47, i64 476, !47, i64 478, !47, i64 480, !47, i64 482, !43, i64 484, !43, i64 488, !47, i64 492, !47, i64 494, !43, i64 496, !43, i64 500, !47, i64 504, !47, i64 506, !47, i64 508, !47, i64 510, !47, i64 512, !36, i64 514, !36, i64 515, !43, i64 516, !43, i64 520, !43, i64 524, !47, i64 528, !47, i64 530, !47, i64 532, !47, i64 534, !47, i64 536, !47, i64 538, !47, i64 540, !47, i64 542, !197, i64 544, !197, i64 560, !198, i64 576, !48, i64 592, !47, i64 608, !47, i64 610, !40, i64 612, !40, i64 616, !40, i64 620, !40, i64 624, !43, i64 628, !40, i64 632, !40, i64 636, !40, i64 640, !40, i64 644, !47, i64 648, !47, i64 650, !47, i64 652, !47, i64 654, !47, i64 656, !47, i64 658, !40, i64 660, !40, i64 664, !47, i64 668, !47, i64 670, !40, i64 672, !40, i64 676, !36, i64 680, !43, i64 1704, !47, i64 1708, !47, i64 1710, !36, i64 1712, !36, i64 2480, !36, i64 2496, !36, i64 2512, !36, i64 2513, !36, i64 2514, !36, i64 2515, !43, i64 2520, !47, i64 2524, !47, i64 2526, !40, i64 2528, !40, i64 2532, !47, i64 2536, !47, i64 2538, !40, i64 2540, !47, i64 2544, !47, i64 2546, !43, i64 2548, !47, i64 2552, !47, i64 2554, !47, i64 2556, !47, i64 2558, !40, i64 2560, !40, i64 2564, !35, i64 2568, !43, i64 2576, !40, i64 2580, !36, i64 2584, !199, i64 2616, !43, i64 3976, !43, i64 3980}
!192 = !{!"ImageFormatData", !36, i64 0, !36, i64 1, !36, i64 2, !36, i64 3, !36, i64 4, !36, i64 5, !36, i64 6, !36, i64 7, !47, i64 8, !47, i64 10, !40, i64 12, !36, i64 16, !36, i64 17, !36, i64 18, !193, i64 24, !194, i64 184}
!193 = !{!"ColorManagedViewSettings", !43, i64 0, !43, i64 4, !36, i64 8, !36, i64 72, !40, i64 136, !40, i64 140, !35, i64 144, !35, i64 152}
!194 = !{!"ColorManagedDisplaySettings", !36, i64 0}
!195 = !{!"QuicktimeCodecSettings", !43, i64 0, !43, i64 4, !43, i64 8, !43, i64 12, !43, i64 16, !43, i64 20, !43, i64 24, !43, i64 28, !43, i64 32, !43, i64 36, !43, i64 40, !43, i64 44, !47, i64 48, !47, i64 50, !43, i64 52, !43, i64 56, !43, i64 60}
!196 = !{!"FFMpegCodecData", !43, i64 0, !43, i64 4, !43, i64 8, !43, i64 12, !43, i64 16, !43, i64 20, !43, i64 24, !43, i64 28, !40, i64 32, !43, i64 36, !43, i64 40, !43, i64 44, !43, i64 48, !43, i64 52, !43, i64 56, !43, i64 60, !35, i64 64}
!197 = !{!"rctf", !40, i64 0, !40, i64 4, !40, i64 8, !40, i64 12}
!198 = !{!"rcti", !43, i64 0, !43, i64 4, !43, i64 8, !43, i64 12}
!199 = !{!"BakeData", !192, i64 0, !36, i64 248, !47, i64 1272, !47, i64 1274, !47, i64 1276, !47, i64 1278, !40, i64 1280, !40, i64 1284, !36, i64 1288, !36, i64 1291, !36, i64 1292, !36, i64 1293, !36, i64 1296}
!200 = !{!"AudioData", !43, i64 0, !40, i64 4, !40, i64 8, !40, i64 12, !43, i64 16, !47, i64 20, !47, i64 22, !40, i64 24, !40, i64 28}
!201 = !{!"GameFraming", !36, i64 0, !36, i64 12, !36, i64 13, !36, i64 14, !36, i64 15}
!202 = !{!"GameData", !201, i64 0, !47, i64 16, !47, i64 18, !47, i64 20, !47, i64 22, !47, i64 24, !47, i64 26, !47, i64 28, !47, i64 30, !47, i64 32, !36, i64 34, !203, i64 40, !47, i64 64, !47, i64 66, !40, i64 68, !204, i64 72, !40, i64 128, !40, i64 132, !43, i64 136, !47, i64 140, !47, i64 142, !47, i64 144, !47, i64 146, !47, i64 148, !47, i64 150, !47, i64 152, !47, i64 154, !47, i64 156, !47, i64 158, !47, i64 160, !47, i64 162, !40, i64 164, !40, i64 168, !40, i64 172, !40, i64 176, !40, i64 180}
!203 = !{!"GameDome", !47, i64 0, !47, i64 2, !47, i64 4, !47, i64 6, !40, i64 8, !40, i64 12, !35, i64 16}
!204 = !{!"RecastData", !40, i64 0, !40, i64 4, !40, i64 8, !40, i64 12, !40, i64 16, !40, i64 20, !40, i64 24, !40, i64 28, !40, i64 32, !40, i64 36, !43, i64 40, !40, i64 44, !40, i64 48, !47, i64 52, !47, i64 54}
!205 = !{!"UnitSettings", !40, i64 0, !36, i64 4, !36, i64 5, !47, i64 6}
!206 = !{!"PhysicsSettings", !36, i64 0, !43, i64 12, !43, i64 16, !43, i64 20}
!207 = !{!"ColorManagedColorspaceSettings", !36, i64 0}
!208 = !{!174, !47, i64 952}
!209 = !{!210, !35, i64 0}
!210 = !{!"Global", !35, i64 0, !36, i64 8, !36, i64 1032, !36, i64 2056, !36, i64 2057, !36, i64 2058, !48, i64 2064, !36, i64 2080, !36, i64 2081, !36, i64 2082, !47, i64 2084, !47, i64 2086, !47, i64 2088, !36, i64 2090, !47, i64 2092, !43, i64 2096, !43, i64 2100, !36, i64 2104, !43, i64 2108, !43, i64 2112, !36, i64 2116}
!211 = !{!212, !35, i64 1888}
!212 = !{!"Main", !35, i64 0, !35, i64 8, !36, i64 16, !47, i64 1040, !47, i64 1042, !47, i64 1044, !47, i64 1046, !176, i64 1048, !36, i64 1056, !47, i64 1072, !35, i64 1080, !48, i64 1088, !48, i64 1104, !48, i64 1120, !48, i64 1136, !48, i64 1152, !48, i64 1168, !48, i64 1184, !48, i64 1200, !48, i64 1216, !48, i64 1232, !48, i64 1248, !48, i64 1264, !48, i64 1280, !48, i64 1296, !48, i64 1312, !48, i64 1328, !48, i64 1344, !48, i64 1360, !48, i64 1376, !48, i64 1392, !48, i64 1408, !48, i64 1424, !48, i64 1440, !48, i64 1456, !48, i64 1472, !48, i64 1488, !48, i64 1504, !48, i64 1520, !48, i64 1536, !48, i64 1552, !48, i64 1568, !48, i64 1584, !48, i64 1600, !48, i64 1616, !36, i64 1632, !35, i64 1888, !35, i64 1896}
!213 = !{!214, !35, i64 16}
!214 = !{!"DupliObject", !35, i64 0, !35, i64 8, !35, i64 16, !36, i64 24, !36, i64 88, !36, i64 100, !47, i64 108, !36, i64 110, !36, i64 111, !36, i64 112, !35, i64 144}
!215 = !{!48, !35, i64 0}
!216 = distinct !{!216, !107}
!217 = !{!218, !43, i64 20}
!218 = !{!"PTCacheMem", !35, i64 0, !35, i64 8, !43, i64 16, !43, i64 20, !43, i64 24, !43, i64 28, !36, i64 32, !36, i64 96, !48, i64 160}
!219 = distinct !{!219, !107}
!220 = !{!218, !43, i64 24}
!221 = distinct !{!221, !107}
!222 = distinct !{!222, !107, !223, !224}
!223 = !{!"llvm.loop.isvectorized", i32 1}
!224 = !{!"llvm.loop.unroll.runtime.disable"}
!225 = distinct !{!225, !107}
!226 = !{!62, !43, i64 16}
!227 = !{!62, !43, i64 24}
!228 = !{!62, !43, i64 40}
!229 = !{!"pointcache.c:ptcache_read"}
!230 = !{!218, !43, i64 16}
!231 = distinct !{!231, !107}
!232 = distinct !{!232, !107}
!233 = !{!218, !35, i64 160}
!234 = !{!62, !43, i64 28}
!235 = !{!62, !43, i64 32}
!236 = !{!62, !35, i64 1280}
!237 = distinct !{!237, !107}
!238 = !{!"pointcache.c:ptcache_find_frames_around"}
!239 = distinct !{!239, !107}
!240 = distinct !{!240, !107}
!241 = !{!62, !35, i64 1288}
!242 = !{!62, !35, i64 1296}
!243 = !{!218, !35, i64 0}
!244 = distinct !{!244, !107}
!245 = !{!218, !35, i64 8}
!246 = distinct !{!246, !107}
!247 = !{!"pointcache.c:ptcache_read_stream"}
!248 = !{!210, !43, i64 2100}
!249 = !{!75, !43, i64 20}
!250 = !{!75, !43, i64 16}
!251 = !{!"pointcache.c:ptcache_interpolate"}
!252 = distinct !{!252, !107}
!253 = distinct !{!253, !107}
!254 = !{!42, !35, i64 128}
!255 = distinct !{!255, !107}
!256 = distinct !{!256, !107}
!257 = distinct !{!257, !107}
!258 = distinct !{!258, !107}
!259 = !{i32 0, i32 3}
!260 = !{!"pointcache.c:ptcache_write_needed"}
!261 = distinct !{!261, !107}
!262 = distinct !{!262, !107}
!263 = !{!"pointcache.c:ptcache_write_stream"}
!264 = !{!75, !43, i64 24}
!265 = !{!75, !43, i64 28}
!266 = !{!"pointcache.c:ptcache_write"}
!267 = distinct !{!267, !107}
!268 = distinct !{!268, !107}
!269 = distinct !{!269, !107}
!270 = !{!62, !43, i64 52}
!271 = distinct !{!271, !107}
!272 = distinct !{!272, !107}
!273 = distinct !{!273, !107}
!274 = distinct !{!274, !107}
!275 = !{!"pointcache.c:ptcache_path"}
!276 = !{!174, !35, i64 24}
!277 = !{!210, !36, i64 2056}
!278 = !{!"pointcache.c:ptcache_filename"}
!279 = distinct !{!279, !107}
!280 = !{!"pointcache.c:ptcache_data_free"}
!281 = distinct !{!281, !107}
!282 = !{!"pointcache.c:ptcache_extra_free"}
!283 = !{!122, !35, i64 0}
!284 = distinct !{!284, !107}
!285 = !{!190, !43, i64 680}
!286 = distinct !{!286, !107}
!287 = distinct !{!287, !107}
!288 = !{!81, !47, i64 340}
!289 = !{!81, !35, i64 104}
!290 = distinct !{!290, !107}
!291 = distinct !{!291, !107}
!292 = distinct !{!292, !107}
!293 = !{!174, !35, i64 1376}
!294 = !{!178, !43, i64 20}
!295 = !{!174, !47, i64 136}
!296 = !{!174, !35, i64 288}
!297 = distinct !{!297, !107}
!298 = distinct !{!298, !107}
!299 = !{!62, !35, i64 1304}
!300 = !{!62, !35, i64 1312}
!301 = distinct !{!301, !107}
!302 = !{!62, !35, i64 0}
!303 = distinct !{!303, !107}
!304 = !{!"pointcache.c:BLI_listbase_clear"}
!305 = !{!"pointcache.c:ptcache_copy"}
!306 = distinct !{!306, !107}
!307 = distinct !{!307, !107}
!308 = !{!309, !43, i64 16}
!309 = !{!"PTCacheBaker", !35, i64 0, !35, i64 8, !43, i64 16, !43, i64 20, !43, i64 24, !43, i64 28, !35, i64 32, !35, i64 40, !35, i64 48, !35, i64 56, !35, i64 64, !35, i64 72}
!310 = !{!309, !43, i64 20}
!311 = !{!309, !43, i64 24}
!312 = !{!309, !35, i64 0}
!313 = !{!309, !35, i64 8}
!314 = !{!190, !43, i64 4632}
!315 = !{!309, !43, i64 28}
!316 = !{!309, !35, i64 32}
!317 = !{!190, !40, i64 716}
!318 = !{!319, !43, i64 8}
!319 = !{!"", !43, i64 0, !43, i64 4, !43, i64 8, !43, i64 12, !35, i64 16, !35, i64 24, !35, i64 32}
!320 = !{!319, !43, i64 12}
!321 = !{!319, !35, i64 16}
!322 = !{!319, !35, i64 32}
!323 = !{!319, !35, i64 24}
!324 = !{!210, !36, i64 2080}
!325 = distinct !{!325, !107}
!326 = !{!327, !35, i64 32}
!327 = !{!"Base", !35, i64 0, !35, i64 8, !43, i64 16, !43, i64 20, !43, i64 24, !47, i64 28, !47, i64 30, !35, i64 32}
!328 = distinct !{!328, !107}
!329 = distinct !{!329, !107}
!330 = !{!319, !43, i64 0}
!331 = !{!319, !43, i64 4}
!332 = !{!210, !36, i64 2081}
!333 = !{!309, !35, i64 56}
!334 = !{!309, !35, i64 72}
!335 = !{!309, !35, i64 64}
!336 = distinct !{!336, !107}
!337 = distinct !{!337, !107}
!338 = distinct !{!338, !107}
!339 = !{!190, !43, i64 232}
!340 = !{!"pointcache.c:ptcache_bake_thread"}
!341 = distinct !{!341, !107}
!342 = distinct !{!342, !107}
!343 = !{!"pointcache.c:ptcache_disk_frame_to_mem"}
!344 = !{!75, !43, i64 8}
!345 = distinct !{!345, !107}
!346 = distinct !{!346, !107}
!347 = distinct !{!347, !107}
!348 = distinct !{!348, !107}
!349 = !{!"pointcache.c:ptcache_mem_frame_to_disk"}
!350 = !{!62, !47, i64 60}
!351 = distinct !{!351, !107}
!352 = distinct !{!352, !107}
!353 = distinct !{!353, !107}
!354 = distinct !{!354, !107}
!355 = distinct !{!355, !107}
!356 = !{i32 0, i32 57}
!357 = distinct !{!357, !107}
!358 = !{!"pointcache.c:ptcache_file_open"}
!359 = !{!75, !43, i64 12}
!360 = !{!"pointcache.c:ptcache_file_header_begin_read"}
!361 = !{!"pointcache.c:ptcache_file_close"}
!362 = !{!"pointcache.c:ptcache_old_elemsize"}
!363 = !{!"pointcache.c:ptcache_file_read"}
!364 = !{!"pointcache.c:copy_v3_v3"}
!365 = !{!"pointcache.c:mul_v3_fl"}
!366 = !{!"pointcache.c:sub_v3_v3v3"}
!367 = !{!"pointcache.c:ptcache_file_write"}
!368 = !{!"pointcache.c:ptcache_file_compressed_write"}
!369 = !{!176, !176, i64 0}
!370 = !{!"pointcache.c:ptcache_file_compressed_read"}
!371 = !{!"pointcache.c:ptcache_file_pointers_init"}
!372 = !{!"pointcache.c:ptcache_file_header_begin_write"}
!373 = !{!"pointcache.c:ptcache_data_alloc"}
!374 = distinct !{!374, !107}
!375 = !{!"pointcache.c:ptcache_dt_to_str"}
!376 = !{!"pointcache.c:ptcache_file_data_read"}
!377 = distinct !{!377, !107}
!378 = !{!"pointcache.c:ptcache_data_copy"}
!379 = distinct !{!379, !107}
!380 = !{!"pointcache.c:ptcache_file_data_write"}
!381 = distinct !{!381, !107}
