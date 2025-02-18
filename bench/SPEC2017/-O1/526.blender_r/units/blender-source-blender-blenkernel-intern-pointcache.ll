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
@switch.table.BKE_ptcache_load_external = private unnamed_addr constant [3 x i64] [i64 24, i64 56, i64 36], align 8

; Function Attrs: nounwind uwtable
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
  tail call void @vec_to_quat(ptr noundef nonnull %25, ptr noundef nonnull %27, i16 noundef signext 3, i16 noundef signext 2) #22
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

declare void @vec_to_quat(ptr noundef, ptr noundef, i16 noundef signext, i16 noundef signext) local_unnamed_addr #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local void @BKE_ptcache_id_from_softbody(ptr nocapture noundef writeonly %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #3 {
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(200) %0, i8 0, i64 200, i1 false)
  %4 = getelementptr inbounds %struct.PTCacheID, ptr %0, i64 0, i32 3
  store ptr %1, ptr %4, align 8, !tbaa !41
  %5 = getelementptr inbounds %struct.PTCacheID, ptr %0, i64 0, i32 4
  store ptr %2, ptr %5, align 8, !tbaa !44
  %6 = getelementptr inbounds %struct.PTCacheID, ptr %0, i64 0, i32 5
  store i32 0, ptr %6, align 8, !tbaa !45
  %7 = getelementptr inbounds %struct.SoftBody, ptr %2, i64 0, i32 47
  %8 = load ptr, ptr %7, align 8, !tbaa !46
  %9 = getelementptr inbounds %struct.PTCacheID, ptr %0, i64 0, i32 25
  store ptr %8, ptr %9, align 8, !tbaa !50
  %10 = getelementptr inbounds %struct.PTCacheID, ptr %0, i64 0, i32 26
  store ptr %7, ptr %10, align 8, !tbaa !51
  %11 = getelementptr inbounds %struct.SoftBody, ptr %2, i64 0, i32 48
  %12 = getelementptr inbounds %struct.PTCacheID, ptr %0, i64 0, i32 27
  store ptr %11, ptr %12, align 8, !tbaa !52
  %13 = getelementptr inbounds %struct.PTCacheID, ptr %0, i64 0, i32 22
  store ptr @ptcache_softbody_totpoint, ptr %13, align 8, !tbaa !53
  %14 = getelementptr inbounds %struct.PTCacheID, ptr %0, i64 0, i32 20
  store ptr @ptcache_softbody_totpoint, ptr %14, align 8, !tbaa !54
  %15 = getelementptr inbounds %struct.PTCacheID, ptr %0, i64 0, i32 21
  store ptr @ptcache_softbody_error, ptr %15, align 8, !tbaa !55
  %16 = getelementptr inbounds %struct.PTCacheID, ptr %0, i64 0, i32 12
  store ptr @ptcache_softbody_write, ptr %16, align 8, !tbaa !56
  %17 = getelementptr inbounds %struct.PTCacheID, ptr %0, i64 0, i32 13
  store ptr @ptcache_softbody_read, ptr %17, align 8, !tbaa !57
  %18 = getelementptr inbounds %struct.PTCacheID, ptr %0, i64 0, i32 14
  store ptr @ptcache_softbody_interpolate, ptr %18, align 8, !tbaa !58
  %19 = getelementptr inbounds %struct.PTCacheID, ptr %0, i64 0, i32 15
  %20 = getelementptr inbounds %struct.PTCacheID, ptr %0, i64 0, i32 23
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %19, i8 0, i64 40, i1 false)
  store ptr @ptcache_basic_header_write, ptr %20, align 8, !tbaa !59
  %21 = getelementptr inbounds %struct.PTCacheID, ptr %0, i64 0, i32 24
  store ptr @ptcache_basic_header_read, ptr %21, align 8, !tbaa !60
  %22 = getelementptr inbounds %struct.PTCacheID, ptr %0, i64 0, i32 10
  store i32 6, ptr %22, align 4, !tbaa !61
  %23 = getelementptr inbounds %struct.PTCacheID, ptr %0, i64 0, i32 11
  store i32 0, ptr %23, align 8, !tbaa !62
  %24 = getelementptr inbounds %struct.PointCache, ptr %8, i64 0, i32 12
  %25 = load i32, ptr %24, align 8, !tbaa !63
  %26 = getelementptr inbounds %struct.PTCacheID, ptr %0, i64 0, i32 6
  store i32 %25, ptr %26, align 4, !tbaa !65
  %27 = getelementptr inbounds %struct.PTCacheID, ptr %0, i64 0, i32 8
  store i32 10, ptr %27, align 4, !tbaa !66
  %28 = getelementptr inbounds %struct.PTCacheID, ptr %0, i64 0, i32 9
  store i32 20, ptr %28, align 8, !tbaa !67
  ret void
}

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #4

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define internal i32 @ptcache_softbody_totpoint(ptr nocapture noundef readonly %0, i32 %1) #5 {
  %3 = load i32, ptr %0, align 8, !tbaa !68
  ret i32 %3
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define internal void @ptcache_softbody_error(ptr nocapture readnone %0, ptr nocapture readnone %1) #6 {
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none) uwtable
define internal noundef i32 @ptcache_softbody_write(i32 noundef %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2, i32 %3) #7 {
  %5 = getelementptr inbounds %struct.SoftBody, ptr %1, i64 0, i32 2
  %6 = load ptr, ptr %5, align 8, !tbaa !69
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

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none) uwtable
define internal void @ptcache_softbody_read(i32 noundef %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2, float %3, ptr noundef readnone %4) #7 {
  %6 = getelementptr inbounds %struct.SoftBody, ptr %1, i64 0, i32 2
  %7 = load ptr, ptr %6, align 8, !tbaa !69
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

; Function Attrs: nounwind uwtable
define internal void @ptcache_softbody_interpolate(i32 noundef %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2, float noundef %3, float noundef %4, float noundef %5, ptr noundef readonly %6) #0 {
  %8 = alloca [4 x %struct.ParticleKey], align 16
  %9 = getelementptr inbounds %struct.SoftBody, ptr %1, i64 0, i32 2
  %10 = load ptr, ptr %9, align 8, !tbaa !69
  call void @llvm.lifetime.start.p0(i64 224, ptr nonnull %8) #22
  %11 = fcmp oeq float %4, %5
  br i1 %11, label %102, label %12

12:                                               ; preds = %7
  %13 = sext i32 %0 to i64
  %14 = getelementptr inbounds [4 x %struct.ParticleKey], ptr %8, i64 0, i64 1
  %15 = getelementptr inbounds %struct.BodyPoint, ptr %10, i64 %13, i32 3
  %16 = load float, ptr %15, align 4, !tbaa !70
  store float %16, ptr %14, align 8, !tbaa !70
  %17 = getelementptr inbounds float, ptr %15, i64 1
  %18 = load float, ptr %17, align 4, !tbaa !70
  %19 = getelementptr inbounds [4 x %struct.ParticleKey], ptr %8, i64 0, i64 1, i32 0, i64 1
  store float %18, ptr %19, align 4, !tbaa !70
  %20 = getelementptr inbounds float, ptr %15, i64 2
  %21 = load float, ptr %20, align 4, !tbaa !70
  %22 = getelementptr inbounds [4 x %struct.ParticleKey], ptr %8, i64 0, i64 1, i32 0, i64 2
  store float %21, ptr %22, align 16, !tbaa !70
  %23 = getelementptr inbounds [4 x %struct.ParticleKey], ptr %8, i64 0, i64 1, i32 1
  %24 = getelementptr inbounds %struct.BodyPoint, ptr %10, i64 %13, i32 4
  %25 = load float, ptr %24, align 4, !tbaa !70
  store float %25, ptr %23, align 4, !tbaa !70
  %26 = getelementptr inbounds float, ptr %24, i64 1
  %27 = load float, ptr %26, align 4, !tbaa !70
  %28 = getelementptr inbounds [4 x %struct.ParticleKey], ptr %8, i64 0, i64 1, i32 1, i64 1
  store float %27, ptr %28, align 8, !tbaa !70
  %29 = getelementptr inbounds float, ptr %24, i64 2
  %30 = load float, ptr %29, align 4, !tbaa !70
  %31 = getelementptr inbounds [4 x %struct.ParticleKey], ptr %8, i64 0, i64 1, i32 1, i64 2
  store float %30, ptr %31, align 4, !tbaa !70
  %32 = icmp eq ptr %6, null
  br i1 %32, label %37, label %33

33:                                               ; preds = %12
  %34 = getelementptr inbounds [4 x %struct.ParticleKey], ptr %8, i64 0, i64 2
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(12) %34, ptr noundef nonnull align 4 dereferenceable(12) %6, i64 12, i1 false)
  %35 = getelementptr inbounds [4 x %struct.ParticleKey], ptr %8, i64 0, i64 2, i32 1
  %36 = getelementptr inbounds float, ptr %6, i64 3
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %35, ptr noundef nonnull align 4 dereferenceable(12) %36, i64 12, i1 false)
  br label %65

37:                                               ; preds = %12
  %38 = getelementptr inbounds ptr, ptr %2, i64 1
  %39 = load ptr, ptr %38, align 8, !tbaa !34
  %40 = icmp eq ptr %39, null
  br i1 %40, label %43, label %41

41:                                               ; preds = %37
  %42 = getelementptr inbounds %struct.ParticleKey, ptr %8, i64 2
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(12) %42, ptr noundef nonnull align 1 dereferenceable(12) %39, i64 12, i1 false)
  br label %43

43:                                               ; preds = %41, %37
  %44 = getelementptr inbounds ptr, ptr %2, i64 2
  %45 = load ptr, ptr %44, align 8, !tbaa !34
  %46 = icmp eq ptr %45, null
  br i1 %46, label %49, label %47

47:                                               ; preds = %43
  %48 = getelementptr inbounds %struct.ParticleKey, ptr %8, i64 2, i32 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %48, ptr noundef nonnull align 1 dereferenceable(12) %45, i64 12, i1 false)
  br label %49

49:                                               ; preds = %47, %43
  %50 = getelementptr inbounds ptr, ptr %2, i64 3
  %51 = load ptr, ptr %50, align 8, !tbaa !34
  %52 = icmp eq ptr %51, null
  %53 = getelementptr inbounds %struct.ParticleKey, ptr %8, i64 2, i32 2
  br i1 %52, label %54, label %56

54:                                               ; preds = %49
  %55 = getelementptr inbounds %struct.ParticleKey, ptr %8, i64 2, i32 1
  call void @vec_to_quat(ptr noundef nonnull %53, ptr noundef nonnull %55, i16 noundef signext 3, i16 noundef signext 2) #22
  br label %57

56:                                               ; preds = %49
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %53, ptr noundef nonnull align 1 dereferenceable(16) %51, i64 16, i1 false)
  br label %57

57:                                               ; preds = %56, %54
  %58 = getelementptr inbounds ptr, ptr %2, i64 4
  %59 = load ptr, ptr %58, align 8, !tbaa !34
  %60 = icmp eq ptr %59, null
  br i1 %60, label %63, label %61

61:                                               ; preds = %57
  %62 = getelementptr inbounds %struct.ParticleKey, ptr %8, i64 2, i32 3
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(12) %62, ptr noundef nonnull align 1 dereferenceable(12) %59, i64 12, i1 false)
  br label %63

63:                                               ; preds = %57, %61
  %64 = getelementptr inbounds %struct.ParticleKey, ptr %8, i64 2, i32 4
  store float %5, ptr %64, align 4, !tbaa !38
  br label %65

65:                                               ; preds = %63, %33
  %66 = fsub float %5, %4
  %67 = load float, ptr %23, align 4, !tbaa !70
  %68 = fmul float %66, %67
  store float %68, ptr %23, align 4, !tbaa !70
  %69 = load float, ptr %28, align 8, !tbaa !70
  %70 = fmul float %66, %69
  store float %70, ptr %28, align 8, !tbaa !70
  %71 = load float, ptr %31, align 4, !tbaa !70
  %72 = fmul float %66, %71
  store float %72, ptr %31, align 4, !tbaa !70
  %73 = getelementptr inbounds [4 x %struct.ParticleKey], ptr %8, i64 0, i64 2, i32 1
  %74 = load float, ptr %73, align 4, !tbaa !70
  %75 = fmul float %66, %74
  store float %75, ptr %73, align 4, !tbaa !70
  %76 = getelementptr inbounds [4 x %struct.ParticleKey], ptr %8, i64 0, i64 2, i32 1, i64 1
  %77 = load float, ptr %76, align 16, !tbaa !70
  %78 = fmul float %66, %77
  store float %78, ptr %76, align 16, !tbaa !70
  %79 = getelementptr inbounds [4 x %struct.ParticleKey], ptr %8, i64 0, i64 2, i32 1, i64 2
  %80 = load float, ptr %79, align 4, !tbaa !70
  %81 = fmul float %66, %80
  store float %81, ptr %79, align 4, !tbaa !70
  %82 = fsub float %3, %4
  %83 = fdiv float %82, %66
  call void @psys_interpolate_particle(i16 noundef signext -1, ptr noundef nonnull %8, float noundef %83, ptr noundef nonnull %8, i32 noundef 1) #22
  %84 = getelementptr inbounds %struct.ParticleKey, ptr %8, i64 0, i32 1
  %85 = fdiv float 1.000000e+00, %66
  %86 = load float, ptr %84, align 4, !tbaa !70
  %87 = fmul float %85, %86
  store float %87, ptr %84, align 4, !tbaa !70
  %88 = getelementptr inbounds %struct.ParticleKey, ptr %8, i64 0, i32 1, i64 1
  %89 = load float, ptr %88, align 16, !tbaa !70
  %90 = fmul float %85, %89
  store float %90, ptr %88, align 16, !tbaa !70
  %91 = getelementptr inbounds %struct.ParticleKey, ptr %8, i64 0, i32 1, i64 2
  %92 = load float, ptr %91, align 4, !tbaa !70
  %93 = fmul float %85, %92
  store float %93, ptr %91, align 4, !tbaa !70
  %94 = load float, ptr %8, align 16, !tbaa !70
  store float %94, ptr %15, align 4, !tbaa !70
  %95 = getelementptr inbounds float, ptr %8, i64 1
  %96 = load float, ptr %95, align 4, !tbaa !70
  store float %96, ptr %17, align 4, !tbaa !70
  %97 = getelementptr inbounds float, ptr %8, i64 2
  %98 = load float, ptr %97, align 8, !tbaa !70
  store float %98, ptr %20, align 4, !tbaa !70
  %99 = load float, ptr %84, align 4, !tbaa !70
  store float %99, ptr %24, align 4, !tbaa !70
  %100 = load float, ptr %88, align 16, !tbaa !70
  store float %100, ptr %26, align 4, !tbaa !70
  %101 = load float, ptr %91, align 4, !tbaa !70
  store float %101, ptr %29, align 4, !tbaa !70
  br label %102

102:                                              ; preds = %7, %65
  call void @llvm.lifetime.end.p0(i64 224, ptr nonnull %8) #22
  ret void
}

; Function Attrs: nofree nounwind uwtable
define internal noundef i32 @ptcache_basic_header_write(ptr nocapture noundef %0) #8 {
  %2 = getelementptr inbounds %struct.PTCacheFile, ptr %0, i64 0, i32 3
  %3 = load ptr, ptr %0, align 8, !tbaa !71
  %4 = tail call i64 @fwrite(ptr noundef nonnull %2, i64 noundef 4, i64 noundef 1, ptr noundef %3)
  %5 = icmp eq i64 %4, 0
  br i1 %5, label %12, label %6

6:                                                ; preds = %1
  %7 = getelementptr inbounds %struct.PTCacheFile, ptr %0, i64 0, i32 5
  %8 = load ptr, ptr %0, align 8, !tbaa !71
  %9 = tail call i64 @fwrite(ptr noundef nonnull %7, i64 noundef 4, i64 noundef 1, ptr noundef %8)
  %10 = icmp ne i64 %9, 0
  %11 = zext i1 %10 to i32
  br label %12

12:                                               ; preds = %6, %1
  %13 = phi i32 [ 0, %1 ], [ %11, %6 ]
  ret i32 %13
}

; Function Attrs: nofree nounwind uwtable
define internal noundef i32 @ptcache_basic_header_read(ptr nocapture noundef %0) #8 {
  %2 = getelementptr inbounds %struct.PTCacheFile, ptr %0, i64 0, i32 3
  %3 = load ptr, ptr %0, align 8, !tbaa !71
  %4 = tail call i64 @fread(ptr noundef nonnull %2, i64 noundef 4, i64 noundef 1, ptr noundef %3)
  %5 = icmp eq i64 %4, 0
  br i1 %5, label %12, label %6

6:                                                ; preds = %1
  %7 = getelementptr inbounds %struct.PTCacheFile, ptr %0, i64 0, i32 5
  %8 = load ptr, ptr %0, align 8, !tbaa !71
  %9 = tail call i64 @fread(ptr noundef nonnull %7, i64 noundef 4, i64 noundef 1, ptr noundef %8)
  %10 = icmp ne i64 %9, 0
  %11 = zext i1 %10 to i32
  br label %12

12:                                               ; preds = %6, %1
  %13 = phi i32 [ 0, %1 ], [ %11, %6 ]
  ret i32 %13
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local void @BKE_ptcache_id_from_particles(ptr nocapture noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #3 {
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(200) %0, i8 0, i64 200, i1 false)
  %4 = getelementptr inbounds %struct.PTCacheID, ptr %0, i64 0, i32 3
  store ptr %1, ptr %4, align 8, !tbaa !41
  %5 = getelementptr inbounds %struct.PTCacheID, ptr %0, i64 0, i32 4
  store ptr %2, ptr %5, align 8, !tbaa !44
  %6 = getelementptr inbounds %struct.PTCacheID, ptr %0, i64 0, i32 5
  store i32 1, ptr %6, align 8, !tbaa !45
  %7 = getelementptr inbounds %struct.ParticleSystem, ptr %2, i64 0, i32 40
  %8 = load ptr, ptr %7, align 8, !tbaa !75
  %9 = getelementptr inbounds %struct.PointCache, ptr %8, i64 0, i32 12
  %10 = load i32, ptr %9, align 8, !tbaa !63
  %11 = getelementptr inbounds %struct.PTCacheID, ptr %0, i64 0, i32 6
  store i32 %10, ptr %11, align 4, !tbaa !65
  %12 = getelementptr inbounds %struct.PTCacheID, ptr %0, i64 0, i32 25
  store ptr %8, ptr %12, align 8, !tbaa !50
  %13 = getelementptr inbounds %struct.PTCacheID, ptr %0, i64 0, i32 26
  store ptr %7, ptr %13, align 8, !tbaa !51
  %14 = getelementptr inbounds %struct.ParticleSystem, ptr %2, i64 0, i32 41
  %15 = getelementptr inbounds %struct.PTCacheID, ptr %0, i64 0, i32 27
  store ptr %14, ptr %15, align 8, !tbaa !52
  %16 = getelementptr inbounds %struct.ParticleSystem, ptr %2, i64 0, i32 2
  %17 = load ptr, ptr %16, align 8, !tbaa !77
  %18 = getelementptr inbounds %struct.ParticleSettings, ptr %17, i64 0, i32 7
  %19 = load i16, ptr %18, align 8, !tbaa !78
  %20 = icmp eq i16 %19, 2
  br i1 %20, label %25, label %21

21:                                               ; preds = %3
  %22 = getelementptr inbounds %struct.PTCacheID, ptr %0, i64 0, i32 7
  %23 = load i32, ptr %22, align 8, !tbaa !81
  %24 = or i32 %23, 1
  store i32 %24, ptr %22, align 8, !tbaa !81
  br label %25

25:                                               ; preds = %21, %3
  %26 = getelementptr inbounds %struct.PTCacheID, ptr %0, i64 0, i32 20
  store ptr @ptcache_particle_totpoint, ptr %26, align 8, !tbaa !54
  %27 = getelementptr inbounds %struct.PTCacheID, ptr %0, i64 0, i32 22
  store ptr @ptcache_particle_totwrite, ptr %27, align 8, !tbaa !53
  %28 = getelementptr inbounds %struct.PTCacheID, ptr %0, i64 0, i32 21
  store ptr @ptcache_particle_error, ptr %28, align 8, !tbaa !55
  %29 = getelementptr inbounds %struct.PTCacheID, ptr %0, i64 0, i32 12
  store ptr @ptcache_particle_write, ptr %29, align 8, !tbaa !56
  %30 = getelementptr inbounds %struct.PTCacheID, ptr %0, i64 0, i32 13
  store ptr @ptcache_particle_read, ptr %30, align 8, !tbaa !57
  %31 = getelementptr inbounds %struct.PTCacheID, ptr %0, i64 0, i32 14
  store ptr @ptcache_particle_interpolate, ptr %31, align 8, !tbaa !58
  %32 = getelementptr inbounds %struct.PTCacheID, ptr %0, i64 0, i32 15
  %33 = getelementptr inbounds %struct.PTCacheID, ptr %0, i64 0, i32 17
  %34 = getelementptr inbounds %struct.PTCacheID, ptr %0, i64 0, i32 18
  %35 = getelementptr inbounds %struct.PTCacheID, ptr %0, i64 0, i32 23
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %32, i8 0, i64 40, i1 false)
  store ptr @ptcache_basic_header_write, ptr %35, align 8, !tbaa !59
  %36 = getelementptr inbounds %struct.PTCacheID, ptr %0, i64 0, i32 24
  store ptr @ptcache_basic_header_read, ptr %36, align 8, !tbaa !60
  %37 = getelementptr inbounds %struct.PTCacheID, ptr %0, i64 0, i32 10
  store i32 7, ptr %37, align 4, !tbaa !61
  %38 = getelementptr inbounds %struct.ParticleSettings, ptr %17, i64 0, i32 11
  %39 = load i16, ptr %38, align 8, !tbaa !82
  switch i16 %39, label %51 [
    i16 3, label %40
    i16 4, label %41
  ]

40:                                               ; preds = %25
  store i32 159, ptr %37, align 4, !tbaa !61
  br label %51

41:                                               ; preds = %25
  %42 = getelementptr inbounds %struct.ParticleSettings, ptr %17, i64 0, i32 3
  %43 = load ptr, ptr %42, align 8, !tbaa !83
  %44 = icmp eq ptr %43, null
  br i1 %44, label %51, label %45

45:                                               ; preds = %41
  %46 = getelementptr inbounds %struct.SPHFluidSettings, ptr %43, i64 0, i32 13
  %47 = load i32, ptr %46, align 4, !tbaa !84
  %48 = and i32 %47, 1
  %49 = icmp eq i32 %48, 0
  br i1 %49, label %51, label %50

50:                                               ; preds = %45
  store ptr @ptcache_particle_extra_write, ptr %33, align 8, !tbaa !86
  store ptr @ptcache_particle_extra_read, ptr %34, align 8, !tbaa !87
  br label %51

51:                                               ; preds = %25, %41, %45, %50, %40
  %52 = getelementptr inbounds %struct.ParticleSettings, ptr %17, i64 0, i32 5
  %53 = load i32, ptr %52, align 8, !tbaa !88
  %54 = and i32 %53, 512
  %55 = icmp eq i32 %54, 0
  br i1 %55, label %72, label %56

56:                                               ; preds = %51
  %57 = load i32, ptr %37, align 4, !tbaa !61
  %58 = or i32 %57, 8
  store i32 %58, ptr %37, align 4, !tbaa !61
  %59 = getelementptr inbounds %struct.ParticleSettings, ptr %17, i64 0, i32 12
  %60 = load i16, ptr %59, align 2, !tbaa !89
  %61 = icmp eq i16 %60, 2
  br i1 %61, label %62, label %70

62:                                               ; preds = %56
  %63 = getelementptr inbounds %struct.ParticleSettings, ptr %17, i64 0, i32 13
  %64 = load i16, ptr %63, align 4, !tbaa !90
  %65 = icmp eq i16 %64, 2
  br i1 %65, label %70, label %66

66:                                               ; preds = %62
  %67 = getelementptr inbounds %struct.ParticleSettings, ptr %17, i64 0, i32 77
  %68 = load float, ptr %67, align 4, !tbaa !91
  %69 = fcmp une float %68, 0.000000e+00
  br i1 %69, label %70, label %72

70:                                               ; preds = %66, %62, %56
  %71 = or i32 %57, 24
  store i32 %71, ptr %37, align 4, !tbaa !61
  br label %72

72:                                               ; preds = %66, %70, %51
  %73 = getelementptr inbounds %struct.PTCacheID, ptr %0, i64 0, i32 11
  store i32 64, ptr %73, align 8, !tbaa !62
  %74 = getelementptr inbounds %struct.PTCacheID, ptr %0, i64 0, i32 8
  store i32 10, ptr %74, align 4, !tbaa !66
  %75 = getelementptr inbounds %struct.PTCacheID, ptr %0, i64 0, i32 9
  store i32 20, ptr %75, align 8, !tbaa !67
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define internal i32 @ptcache_particle_totpoint(ptr nocapture noundef readonly %0, i32 %1) #5 {
  %3 = getelementptr inbounds %struct.ParticleSystem, ptr %0, i64 0, i32 26
  %4 = load i32, ptr %3, align 8, !tbaa !92
  ret i32 %4
}

; Function Attrs: nofree norecurse nosync nounwind memory(read, inaccessiblemem: none) uwtable
define internal i32 @ptcache_particle_totwrite(ptr nocapture noundef readonly %0, i32 noundef %1) #9 {
  %3 = getelementptr inbounds %struct.ParticleSystem, ptr %0, i64 0, i32 40
  %4 = load ptr, ptr %3, align 8, !tbaa !75
  %5 = getelementptr inbounds %struct.PointCache, ptr %4, i64 0, i32 3
  %6 = load i32, ptr %5, align 4, !tbaa !93
  %7 = icmp eq i32 %1, 0
  %8 = getelementptr inbounds %struct.ParticleSystem, ptr %0, i64 0, i32 26
  %9 = load i32, ptr %8, align 8, !tbaa !92
  br i1 %7, label %37, label %10

10:                                               ; preds = %2
  %11 = icmp sgt i32 %9, 0
  br i1 %11, label %12, label %37

12:                                               ; preds = %10
  %13 = getelementptr inbounds %struct.ParticleSystem, ptr %0, i64 0, i32 3
  %14 = load ptr, ptr %13, align 8, !tbaa !94
  %15 = sitofp i32 %1 to float
  %16 = sitofp i32 %6 to float
  br label %17

17:                                               ; preds = %12, %30
  %18 = phi i32 [ 0, %12 ], [ %33, %30 ]
  %19 = phi i32 [ 0, %12 ], [ %34, %30 ]
  %20 = phi ptr [ %14, %12 ], [ %35, %30 ]
  %21 = getelementptr inbounds %struct.ParticleData, ptr %20, i64 0, i32 6
  %22 = load float, ptr %21, align 4, !tbaa !95
  %23 = fsub float %22, %16
  %24 = fcmp ugt float %23, %15
  br i1 %24, label %30, label %25

25:                                               ; preds = %17
  %26 = getelementptr inbounds %struct.ParticleData, ptr %20, i64 0, i32 8
  %27 = load float, ptr %26, align 4, !tbaa !97
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
  br i1 %36, label %37, label %17, !llvm.loop !98

37:                                               ; preds = %30, %2, %10
  %38 = phi i32 [ 0, %10 ], [ %9, %2 ], [ %33, %30 ]
  ret i32 %38
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define internal void @ptcache_particle_error(ptr nocapture readnone %0, ptr nocapture readnone %1) #6 {
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none) uwtable
define internal i32 @ptcache_particle_write(i32 noundef %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2, i32 noundef %3) #7 {
  %5 = getelementptr inbounds %struct.ParticleSystem, ptr %1, i64 0, i32 3
  %6 = load ptr, ptr %5, align 8, !tbaa !94
  %7 = sext i32 %0 to i64
  %8 = getelementptr inbounds %struct.ParticleData, ptr %6, i64 %7
  %9 = getelementptr inbounds %struct.ParticleSystem, ptr %1, i64 0, i32 2
  %10 = load ptr, ptr %9, align 8, !tbaa !77
  %11 = getelementptr inbounds %struct.ParticleSettings, ptr %10, i64 0, i32 11
  %12 = load i16, ptr %11, align 8, !tbaa !82
  %13 = icmp eq i16 %12, 3
  br i1 %13, label %14, label %17

14:                                               ; preds = %4
  %15 = getelementptr inbounds %struct.ParticleData, ptr %6, i64 %7, i32 4
  %16 = load ptr, ptr %15, align 8, !tbaa !101
  br label %17

17:                                               ; preds = %4, %14
  %18 = phi ptr [ %16, %14 ], [ null, %4 ]
  %19 = load ptr, ptr %2, align 8, !tbaa !34
  %20 = icmp eq ptr %19, null
  br i1 %20, label %37, label %21

21:                                               ; preds = %17
  %22 = getelementptr inbounds %struct.ParticleSystem, ptr %1, i64 0, i32 40
  %23 = load ptr, ptr %22, align 8, !tbaa !75
  %24 = getelementptr inbounds %struct.PointCache, ptr %23, i64 0, i32 3
  %25 = load i32, ptr %24, align 4, !tbaa !93
  %26 = sitofp i32 %3 to float
  %27 = getelementptr inbounds %struct.ParticleData, ptr %6, i64 %7, i32 6
  %28 = load float, ptr %27, align 4, !tbaa !95
  %29 = sitofp i32 %25 to float
  %30 = fsub float %28, %29
  %31 = fcmp ogt float %30, %26
  br i1 %31, label %100, label %32

32:                                               ; preds = %21
  %33 = getelementptr inbounds %struct.ParticleData, ptr %6, i64 %7, i32 8
  %34 = load float, ptr %33, align 4, !tbaa !97
  %35 = fadd float %34, %29
  %36 = fcmp olt float %35, %26
  br i1 %36, label %100, label %37

37:                                               ; preds = %32, %17
  %38 = getelementptr inbounds %struct.ParticleData, ptr %6, i64 %7, i32 6
  %39 = load float, ptr %38, align 4, !tbaa !95
  %40 = getelementptr inbounds %struct.ParticleData, ptr %6, i64 %7, i32 8
  %41 = load float, ptr %40, align 4, !tbaa !97
  %42 = getelementptr inbounds %struct.ParticleData, ptr %6, i64 %7, i32 7
  %43 = load float, ptr %42, align 8, !tbaa !102
  br i1 %20, label %45, label %44

44:                                               ; preds = %37
  store i32 %0, ptr %19, align 1
  br label %45

45:                                               ; preds = %44, %37
  %46 = getelementptr inbounds ptr, ptr %2, i64 1
  %47 = load ptr, ptr %46, align 8, !tbaa !34
  %48 = icmp eq ptr %47, null
  br i1 %48, label %50, label %49

49:                                               ; preds = %45
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(12) %47, ptr noundef nonnull align 8 dereferenceable(12) %8, i64 12, i1 false)
  br label %50

50:                                               ; preds = %49, %45
  %51 = getelementptr inbounds ptr, ptr %2, i64 2
  %52 = load ptr, ptr %51, align 8, !tbaa !34
  %53 = icmp eq ptr %52, null
  br i1 %53, label %56, label %54

54:                                               ; preds = %50
  %55 = getelementptr inbounds %struct.ParticleKey, ptr %8, i64 0, i32 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(12) %52, ptr noundef nonnull align 4 dereferenceable(12) %55, i64 12, i1 false)
  br label %56

56:                                               ; preds = %54, %50
  %57 = getelementptr inbounds ptr, ptr %2, i64 3
  %58 = load ptr, ptr %57, align 8, !tbaa !34
  %59 = icmp eq ptr %58, null
  br i1 %59, label %62, label %60

60:                                               ; preds = %56
  %61 = getelementptr inbounds %struct.ParticleKey, ptr %8, i64 0, i32 2
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(16) %58, ptr noundef nonnull align 8 dereferenceable(16) %61, i64 16, i1 false)
  br label %62

62:                                               ; preds = %60, %56
  %63 = getelementptr inbounds ptr, ptr %2, i64 4
  %64 = load ptr, ptr %63, align 8, !tbaa !34
  %65 = icmp eq ptr %64, null
  br i1 %65, label %68, label %66

66:                                               ; preds = %62
  %67 = getelementptr inbounds %struct.ParticleKey, ptr %8, i64 0, i32 3
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(12) %64, ptr noundef nonnull align 8 dereferenceable(12) %67, i64 12, i1 false)
  br label %68

68:                                               ; preds = %66, %62
  %69 = getelementptr inbounds ptr, ptr %2, i64 5
  %70 = load ptr, ptr %69, align 8, !tbaa !34
  %71 = icmp eq ptr %70, null
  br i1 %71, label %75, label %72

72:                                               ; preds = %68
  %73 = getelementptr inbounds %struct.ParticleData, ptr %6, i64 %7, i32 13
  %74 = load i32, ptr %73, align 4
  store i32 %74, ptr %70, align 1
  br label %75

75:                                               ; preds = %72, %68
  %76 = getelementptr inbounds ptr, ptr %2, i64 6
  %77 = load ptr, ptr %76, align 8, !tbaa !34
  %78 = icmp eq ptr %77, null
  br i1 %78, label %82, label %79

79:                                               ; preds = %75
  store float %39, ptr %77, align 1
  %80 = getelementptr inbounds i8, ptr %77, i64 4
  store float %41, ptr %80, align 1
  %81 = getelementptr inbounds i8, ptr %77, i64 8
  store float %43, ptr %81, align 1
  br label %82

82:                                               ; preds = %79, %75
  %83 = icmp eq ptr %18, null
  br i1 %83, label %90, label %84

84:                                               ; preds = %82
  %85 = getelementptr inbounds ptr, ptr %2, i64 7
  %86 = load ptr, ptr %85, align 8, !tbaa !34
  %87 = icmp eq ptr %86, null
  br i1 %87, label %90, label %88

88:                                               ; preds = %84
  %89 = getelementptr inbounds %struct.BoidParticle, ptr %18, i64 0, i32 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(20) %86, ptr noundef nonnull align 8 dereferenceable(20) %89, i64 20, i1 false)
  br label %90

90:                                               ; preds = %84, %88, %82
  %91 = getelementptr inbounds %struct.ParticleKey, ptr %8, i64 0, i32 4
  %92 = load float, ptr %91, align 4, !tbaa !103
  %93 = load float, ptr %38, align 4, !tbaa !95
  %94 = fcmp ult float %92, %93
  br i1 %94, label %100, label %95

95:                                               ; preds = %90
  %96 = getelementptr inbounds %struct.ParticleData, ptr %6, i64 %7, i32 1, i32 4
  %97 = load float, ptr %96, align 4, !tbaa !104
  %98 = fcmp ole float %97, %93
  %99 = select i1 %98, i32 2, i32 1
  br label %100

100:                                              ; preds = %90, %95, %21, %32
  %101 = phi i32 [ 0, %32 ], [ 0, %21 ], [ 1, %90 ], [ %99, %95 ]
  ret i32 %101
}

; Function Attrs: nounwind uwtable
define internal void @ptcache_particle_read(i32 noundef %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2, float noundef %3, ptr noundef readonly %4) #0 {
  %6 = getelementptr inbounds %struct.ParticleSystem, ptr %1, i64 0, i32 2
  %7 = load ptr, ptr %6, align 8, !tbaa !77
  %8 = getelementptr inbounds %struct.ParticleSettings, ptr %7, i64 0, i32 57
  %9 = load float, ptr %8, align 4, !tbaa !105
  %10 = fmul float %9, 0x3FA47AE140000000
  %11 = getelementptr inbounds %struct.ParticleSystem, ptr %1, i64 0, i32 26
  %12 = load i32, ptr %11, align 8, !tbaa !92
  %13 = icmp sgt i32 %12, %0
  br i1 %13, label %14, label %157

14:                                               ; preds = %5
  %15 = getelementptr inbounds %struct.ParticleSystem, ptr %1, i64 0, i32 3
  %16 = load ptr, ptr %15, align 8, !tbaa !94
  %17 = sext i32 %0 to i64
  %18 = getelementptr inbounds %struct.ParticleData, ptr %16, i64 %17
  %19 = getelementptr inbounds %struct.ParticleSettings, ptr %7, i64 0, i32 11
  %20 = load i16, ptr %19, align 8, !tbaa !82
  %21 = icmp eq i16 %20, 3
  br i1 %21, label %22, label %25

22:                                               ; preds = %14
  %23 = getelementptr inbounds %struct.ParticleData, ptr %16, i64 %17, i32 4
  %24 = load ptr, ptr %23, align 8, !tbaa !101
  br label %25

25:                                               ; preds = %14, %22
  %26 = phi ptr [ %24, %22 ], [ null, %14 ]
  %27 = getelementptr inbounds %struct.ParticleKey, ptr %18, i64 0, i32 4
  %28 = load float, ptr %27, align 4, !tbaa !103
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
  br label %157

35:                                               ; preds = %32
  %36 = getelementptr inbounds ptr, ptr %2, i64 1
  %37 = load ptr, ptr %36, align 8, !tbaa !34
  %38 = icmp eq ptr %37, null
  br i1 %38, label %40, label %39

39:                                               ; preds = %35
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %18, ptr noundef nonnull align 1 dereferenceable(12) %37, i64 12, i1 false)
  br label %40

40:                                               ; preds = %39, %35
  %41 = getelementptr inbounds ptr, ptr %2, i64 2
  %42 = load ptr, ptr %41, align 8, !tbaa !34
  %43 = icmp eq ptr %42, null
  br i1 %43, label %46, label %44

44:                                               ; preds = %40
  %45 = getelementptr inbounds %struct.ParticleKey, ptr %18, i64 0, i32 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %45, ptr noundef nonnull align 1 dereferenceable(12) %42, i64 12, i1 false)
  br label %46

46:                                               ; preds = %44, %40
  %47 = getelementptr inbounds ptr, ptr %2, i64 3
  %48 = load ptr, ptr %47, align 8, !tbaa !34
  %49 = icmp eq ptr %48, null
  %50 = getelementptr inbounds %struct.ParticleKey, ptr %18, i64 0, i32 2
  br i1 %49, label %51, label %53

51:                                               ; preds = %46
  %52 = getelementptr inbounds %struct.ParticleKey, ptr %18, i64 0, i32 1
  tail call void @vec_to_quat(ptr noundef nonnull %50, ptr noundef nonnull %52, i16 noundef signext 3, i16 noundef signext 2) #22
  br label %54

53:                                               ; preds = %46
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %50, ptr noundef nonnull align 1 dereferenceable(16) %48, i64 16, i1 false)
  br label %54

54:                                               ; preds = %53, %51
  %55 = getelementptr inbounds ptr, ptr %2, i64 4
  %56 = load ptr, ptr %55, align 8, !tbaa !34
  %57 = icmp eq ptr %56, null
  br i1 %57, label %60, label %58

58:                                               ; preds = %54
  %59 = getelementptr inbounds %struct.ParticleKey, ptr %18, i64 0, i32 3
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %59, ptr noundef nonnull align 1 dereferenceable(12) %56, i64 12, i1 false)
  br label %60

60:                                               ; preds = %54, %58
  store float %3, ptr %27, align 4, !tbaa !38
  %61 = getelementptr inbounds %struct.ParticleData, ptr %16, i64 %17, i32 6
  %62 = load float, ptr %61, align 4, !tbaa !95
  %63 = fcmp ogt float %62, %3
  br i1 %63, label %68, label %64

64:                                               ; preds = %60
  %65 = getelementptr inbounds %struct.ParticleData, ptr %16, i64 %17, i32 8
  %66 = load float, ptr %65, align 4, !tbaa !97
  %67 = fcmp olt float %66, %3
  br i1 %67, label %68, label %70

68:                                               ; preds = %64, %60
  %69 = phi float [ %62, %60 ], [ %66, %64 ]
  store float %69, ptr %27, align 4, !tbaa !103
  br label %70

70:                                               ; preds = %68, %64
  %71 = getelementptr inbounds ptr, ptr %2, i64 5
  %72 = load ptr, ptr %71, align 8, !tbaa !34
  %73 = icmp eq ptr %72, null
  br i1 %73, label %77, label %74

74:                                               ; preds = %70
  %75 = getelementptr inbounds %struct.ParticleData, ptr %16, i64 %17, i32 13
  %76 = load i32, ptr %72, align 1
  store i32 %76, ptr %75, align 4
  br label %77

77:                                               ; preds = %74, %70
  %78 = getelementptr inbounds ptr, ptr %2, i64 6
  %79 = load ptr, ptr %78, align 8, !tbaa !34
  %80 = icmp eq ptr %79, null
  br i1 %80, label %89, label %81

81:                                               ; preds = %77
  %82 = load float, ptr %79, align 1
  %83 = getelementptr inbounds i8, ptr %79, i64 4
  %84 = load float, ptr %83, align 1
  %85 = getelementptr inbounds i8, ptr %79, i64 8
  %86 = load float, ptr %85, align 1
  store float %82, ptr %61, align 4, !tbaa !95
  %87 = getelementptr inbounds %struct.ParticleData, ptr %16, i64 %17, i32 8
  store float %84, ptr %87, align 4, !tbaa !97
  %88 = getelementptr inbounds %struct.ParticleData, ptr %16, i64 %17, i32 7
  store float %86, ptr %88, align 8, !tbaa !102
  br label %89

89:                                               ; preds = %81, %77
  %90 = icmp eq ptr %26, null
  br i1 %90, label %97, label %91

91:                                               ; preds = %89
  %92 = getelementptr inbounds ptr, ptr %2, i64 7
  %93 = load ptr, ptr %92, align 8, !tbaa !34
  %94 = icmp eq ptr %93, null
  br i1 %94, label %97, label %95

95:                                               ; preds = %91
  %96 = getelementptr inbounds %struct.BoidParticle, ptr %26, i64 0, i32 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(20) %96, ptr noundef nonnull align 1 dereferenceable(20) %93, i64 20, i1 false)
  br label %97

97:                                               ; preds = %91, %95, %89
  %98 = load ptr, ptr %36, align 8, !tbaa !34
  %99 = icmp eq ptr %98, null
  br i1 %99, label %157, label %100

100:                                              ; preds = %97
  %101 = load ptr, ptr %41, align 8, !tbaa !34
  %102 = icmp eq ptr %101, null
  br i1 %102, label %103, label %151

103:                                              ; preds = %100
  %104 = getelementptr inbounds %struct.ParticleData, ptr %16, i64 %17, i32 1
  %105 = getelementptr inbounds %struct.ParticleData, ptr %16, i64 %17, i32 1, i32 4
  %106 = load float, ptr %105, align 4, !tbaa !104
  %107 = fcmp olt float %106, %3
  %108 = getelementptr inbounds %struct.ParticleKey, ptr %18, i64 0, i32 1
  %109 = getelementptr inbounds %struct.ParticleKey, ptr %18, i64 0, i32 1, i64 1
  %110 = getelementptr inbounds %struct.ParticleKey, ptr %18, i64 0, i32 1, i64 2
  br i1 %107, label %111, label %130

111:                                              ; preds = %103
  %112 = load float, ptr %18, align 4, !tbaa !70
  %113 = load float, ptr %104, align 4, !tbaa !70
  %114 = fsub float %112, %113
  store float %114, ptr %108, align 4, !tbaa !70
  %115 = getelementptr inbounds float, ptr %18, i64 1
  %116 = load float, ptr %115, align 4, !tbaa !70
  %117 = getelementptr inbounds float, ptr %104, i64 1
  %118 = load float, ptr %117, align 4, !tbaa !70
  %119 = fsub float %116, %118
  store float %119, ptr %109, align 4, !tbaa !70
  %120 = getelementptr inbounds float, ptr %18, i64 2
  %121 = load float, ptr %120, align 4, !tbaa !70
  %122 = getelementptr inbounds float, ptr %104, i64 2
  %123 = load float, ptr %122, align 4, !tbaa !70
  %124 = fsub float %121, %123
  store float %124, ptr %110, align 4, !tbaa !70
  %125 = fsub float %3, %106
  %126 = fmul float %10, %125
  %127 = fmul float %126, %114
  store float %127, ptr %108, align 4, !tbaa !70
  %128 = fmul float %126, %119
  store float %128, ptr %109, align 4, !tbaa !70
  %129 = fmul float %126, %124
  br label %149

130:                                              ; preds = %103
  %131 = load float, ptr %104, align 4, !tbaa !70
  %132 = load float, ptr %18, align 4, !tbaa !70
  %133 = fsub float %131, %132
  store float %133, ptr %108, align 4, !tbaa !70
  %134 = getelementptr inbounds float, ptr %104, i64 1
  %135 = load float, ptr %134, align 4, !tbaa !70
  %136 = getelementptr inbounds float, ptr %18, i64 1
  %137 = load float, ptr %136, align 4, !tbaa !70
  %138 = fsub float %135, %137
  store float %138, ptr %109, align 4, !tbaa !70
  %139 = getelementptr inbounds float, ptr %104, i64 2
  %140 = load float, ptr %139, align 4, !tbaa !70
  %141 = getelementptr inbounds float, ptr %18, i64 2
  %142 = load float, ptr %141, align 4, !tbaa !70
  %143 = fsub float %140, %142
  store float %143, ptr %110, align 4, !tbaa !70
  %144 = fsub float %106, %3
  %145 = fmul float %10, %144
  %146 = fmul float %145, %133
  store float %146, ptr %108, align 4, !tbaa !70
  %147 = fmul float %145, %138
  store float %147, ptr %109, align 4, !tbaa !70
  %148 = fmul float %145, %143
  br label %149

149:                                              ; preds = %130, %111
  %150 = phi float [ %129, %111 ], [ %148, %130 ]
  store float %150, ptr %110, align 4, !tbaa !70
  br label %151

151:                                              ; preds = %149, %100
  br i1 %99, label %157, label %152

152:                                              ; preds = %151
  %153 = load ptr, ptr %47, align 8, !tbaa !34
  %154 = icmp eq ptr %153, null
  br i1 %154, label %155, label %157

155:                                              ; preds = %152
  %156 = getelementptr inbounds %struct.ParticleKey, ptr %18, i64 0, i32 2
  tail call void @unit_qt(ptr noundef nonnull %156) #22
  br label %157

157:                                              ; preds = %97, %151, %152, %155, %5, %34
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @ptcache_particle_interpolate(i32 noundef %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2, float noundef %3, float noundef %4, float noundef %5, ptr noundef readonly %6) #0 {
  %8 = alloca [4 x %struct.ParticleKey], align 16
  call void @llvm.lifetime.start.p0(i64 224, ptr nonnull %8) #22
  %9 = getelementptr inbounds %struct.ParticleSystem, ptr %1, i64 0, i32 2
  %10 = load ptr, ptr %9, align 8, !tbaa !77
  %11 = getelementptr inbounds %struct.ParticleSettings, ptr %10, i64 0, i32 57
  %12 = load float, ptr %11, align 4, !tbaa !105
  %13 = fmul float %12, 0x3FA47AE140000000
  %14 = getelementptr inbounds %struct.ParticleSystem, ptr %1, i64 0, i32 26
  %15 = load i32, ptr %14, align 8, !tbaa !92
  %16 = icmp sgt i32 %15, %0
  br i1 %16, label %17, label %187

17:                                               ; preds = %7
  %18 = getelementptr inbounds %struct.ParticleSystem, ptr %1, i64 0, i32 3
  %19 = load ptr, ptr %18, align 8, !tbaa !94
  %20 = sext i32 %0 to i64
  %21 = getelementptr inbounds %struct.ParticleData, ptr %19, i64 %20
  %22 = fptosi float %4 to i32
  %23 = sitofp i32 %22 to float
  %24 = getelementptr inbounds %struct.ParticleData, ptr %19, i64 %20, i32 6
  %25 = load float, ptr %24, align 4, !tbaa !95
  %26 = getelementptr inbounds %struct.ParticleSystem, ptr %1, i64 0, i32 40
  %27 = load ptr, ptr %26, align 8, !tbaa !75
  %28 = getelementptr inbounds %struct.PointCache, ptr %27, i64 0, i32 3
  %29 = load i32, ptr %28, align 4, !tbaa !93
  %30 = sitofp i32 %29 to float
  %31 = fsub float %25, %30
  %32 = fcmp ogt float %31, %23
  br i1 %32, label %187, label %33

33:                                               ; preds = %17
  %34 = getelementptr inbounds %struct.ParticleData, ptr %19, i64 %20, i32 8
  %35 = load float, ptr %34, align 4, !tbaa !97
  %36 = fadd float %35, %30
  %37 = fcmp olt float %36, %23
  br i1 %37, label %187, label %38

38:                                               ; preds = %33
  %39 = fcmp ogt float %35, %3
  %40 = select i1 %39, float %3, float %35
  %41 = fcmp ogt float %35, %4
  %42 = select i1 %41, float %4, float %35
  %43 = fcmp ogt float %35, %5
  %44 = select i1 %43, float %5, float %35
  %45 = fcmp oeq float %42, %44
  br i1 %45, label %187, label %46

46:                                               ; preds = %38
  %47 = getelementptr inbounds %struct.ParticleKey, ptr %8, i64 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %47, ptr noundef nonnull align 8 dereferenceable(56) %21, i64 56, i1 false)
  %48 = icmp eq ptr %6, null
  br i1 %48, label %51, label %49

49:                                               ; preds = %46
  %50 = getelementptr inbounds %struct.ParticleKey, ptr %8, i64 2
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(56) %50, ptr noundef nonnull align 4 dereferenceable(56) %6, i64 56, i1 false)
  br label %79

51:                                               ; preds = %46
  %52 = getelementptr inbounds ptr, ptr %2, i64 1
  %53 = load ptr, ptr %52, align 8, !tbaa !34
  %54 = icmp eq ptr %53, null
  br i1 %54, label %57, label %55

55:                                               ; preds = %51
  %56 = getelementptr inbounds %struct.ParticleKey, ptr %8, i64 2
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(12) %56, ptr noundef nonnull align 1 dereferenceable(12) %53, i64 12, i1 false)
  br label %57

57:                                               ; preds = %55, %51
  %58 = getelementptr inbounds ptr, ptr %2, i64 2
  %59 = load ptr, ptr %58, align 8, !tbaa !34
  %60 = icmp eq ptr %59, null
  br i1 %60, label %63, label %61

61:                                               ; preds = %57
  %62 = getelementptr inbounds %struct.ParticleKey, ptr %8, i64 2, i32 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %62, ptr noundef nonnull align 1 dereferenceable(12) %59, i64 12, i1 false)
  br label %63

63:                                               ; preds = %61, %57
  %64 = getelementptr inbounds ptr, ptr %2, i64 3
  %65 = load ptr, ptr %64, align 8, !tbaa !34
  %66 = icmp eq ptr %65, null
  %67 = getelementptr inbounds %struct.ParticleKey, ptr %8, i64 2, i32 2
  br i1 %66, label %68, label %70

68:                                               ; preds = %63
  %69 = getelementptr inbounds %struct.ParticleKey, ptr %8, i64 2, i32 1
  call void @vec_to_quat(ptr noundef nonnull %67, ptr noundef nonnull %69, i16 noundef signext 3, i16 noundef signext 2) #22
  br label %71

70:                                               ; preds = %63
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %67, ptr noundef nonnull align 1 dereferenceable(16) %65, i64 16, i1 false)
  br label %71

71:                                               ; preds = %70, %68
  %72 = getelementptr inbounds ptr, ptr %2, i64 4
  %73 = load ptr, ptr %72, align 8, !tbaa !34
  %74 = icmp eq ptr %73, null
  br i1 %74, label %77, label %75

75:                                               ; preds = %71
  %76 = getelementptr inbounds %struct.ParticleKey, ptr %8, i64 2, i32 3
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(12) %76, ptr noundef nonnull align 1 dereferenceable(12) %73, i64 12, i1 false)
  br label %77

77:                                               ; preds = %71, %75
  %78 = getelementptr inbounds %struct.ParticleKey, ptr %8, i64 2, i32 4
  store float %44, ptr %78, align 4, !tbaa !38
  br label %79

79:                                               ; preds = %77, %49
  %80 = getelementptr inbounds ptr, ptr %2, i64 1
  %81 = load ptr, ptr %80, align 8, !tbaa !34
  %82 = icmp eq ptr %81, null
  br i1 %82, label %145, label %83

83:                                               ; preds = %79
  %84 = getelementptr inbounds ptr, ptr %2, i64 2
  %85 = load ptr, ptr %84, align 8, !tbaa !34
  %86 = icmp eq ptr %85, null
  br i1 %86, label %87, label %137

87:                                               ; preds = %83
  %88 = getelementptr inbounds %struct.ParticleKey, ptr %8, i64 1, i32 4
  %89 = load float, ptr %88, align 4, !tbaa !38
  %90 = getelementptr inbounds [4 x %struct.ParticleKey], ptr %8, i64 0, i64 2
  %91 = getelementptr inbounds [4 x %struct.ParticleKey], ptr %8, i64 0, i64 2, i32 4
  %92 = load float, ptr %91, align 4, !tbaa !38
  %93 = fcmp ogt float %89, %92
  %94 = getelementptr inbounds [4 x %struct.ParticleKey], ptr %8, i64 0, i64 2, i32 1
  %95 = getelementptr inbounds [4 x %struct.ParticleKey], ptr %8, i64 0, i64 2, i32 1, i64 1
  %96 = getelementptr inbounds [4 x %struct.ParticleKey], ptr %8, i64 0, i64 2, i32 1, i64 2
  br i1 %93, label %97, label %116

97:                                               ; preds = %87
  %98 = load float, ptr %47, align 8, !tbaa !70
  %99 = load float, ptr %90, align 16, !tbaa !70
  %100 = fsub float %98, %99
  store float %100, ptr %94, align 4, !tbaa !70
  %101 = getelementptr inbounds %struct.ParticleKey, ptr %8, i64 1, i32 0, i64 1
  %102 = load float, ptr %101, align 4, !tbaa !70
  %103 = getelementptr inbounds [4 x %struct.ParticleKey], ptr %8, i64 0, i64 2, i32 0, i64 1
  %104 = load float, ptr %103, align 4, !tbaa !70
  %105 = fsub float %102, %104
  store float %105, ptr %95, align 16, !tbaa !70
  %106 = getelementptr inbounds %struct.ParticleKey, ptr %8, i64 1, i32 0, i64 2
  %107 = load float, ptr %106, align 16, !tbaa !70
  %108 = getelementptr inbounds [4 x %struct.ParticleKey], ptr %8, i64 0, i64 2, i32 0, i64 2
  %109 = load float, ptr %108, align 8, !tbaa !70
  %110 = fsub float %107, %109
  store float %110, ptr %96, align 4, !tbaa !70
  %111 = fsub float %89, %92
  %112 = fmul float %13, %111
  %113 = fmul float %112, %100
  store float %113, ptr %94, align 4, !tbaa !70
  %114 = fmul float %112, %105
  store float %114, ptr %95, align 16, !tbaa !70
  %115 = fmul float %112, %110
  br label %135

116:                                              ; preds = %87
  %117 = load float, ptr %90, align 16, !tbaa !70
  %118 = load float, ptr %47, align 8, !tbaa !70
  %119 = fsub float %117, %118
  store float %119, ptr %94, align 4, !tbaa !70
  %120 = getelementptr inbounds [4 x %struct.ParticleKey], ptr %8, i64 0, i64 2, i32 0, i64 1
  %121 = load float, ptr %120, align 4, !tbaa !70
  %122 = getelementptr inbounds %struct.ParticleKey, ptr %8, i64 1, i32 0, i64 1
  %123 = load float, ptr %122, align 4, !tbaa !70
  %124 = fsub float %121, %123
  store float %124, ptr %95, align 16, !tbaa !70
  %125 = getelementptr inbounds [4 x %struct.ParticleKey], ptr %8, i64 0, i64 2, i32 0, i64 2
  %126 = load float, ptr %125, align 8, !tbaa !70
  %127 = getelementptr inbounds %struct.ParticleKey, ptr %8, i64 1, i32 0, i64 2
  %128 = load float, ptr %127, align 16, !tbaa !70
  %129 = fsub float %126, %128
  store float %129, ptr %96, align 4, !tbaa !70
  %130 = fsub float %92, %89
  %131 = fmul float %13, %130
  %132 = fmul float %131, %119
  store float %132, ptr %94, align 4, !tbaa !70
  %133 = fmul float %131, %124
  store float %133, ptr %95, align 16, !tbaa !70
  %134 = fmul float %131, %129
  br label %135

135:                                              ; preds = %116, %97
  %136 = phi float [ %115, %97 ], [ %134, %116 ]
  store float %136, ptr %96, align 4, !tbaa !70
  br label %137

137:                                              ; preds = %135, %83
  br i1 %82, label %145, label %138

138:                                              ; preds = %137
  %139 = getelementptr inbounds ptr, ptr %2, i64 3
  %140 = load ptr, ptr %139, align 8, !tbaa !34
  %141 = icmp eq ptr %140, null
  br i1 %141, label %142, label %145

142:                                              ; preds = %138
  %143 = getelementptr inbounds [4 x %struct.ParticleKey], ptr %8, i64 0, i64 2, i32 2
  %144 = getelementptr inbounds [4 x %struct.ParticleKey], ptr %8, i64 0, i64 2, i32 1
  call void @vec_to_quat(ptr noundef nonnull %143, ptr noundef nonnull %144, i16 noundef signext 3, i16 noundef signext 2) #22
  br label %145

145:                                              ; preds = %79, %142, %138, %137
  %146 = load float, ptr %24, align 4, !tbaa !95
  %147 = fcmp ogt float %40, %146
  %148 = fcmp ogt float %42, %146
  %149 = select i1 %148, float %42, float %146
  %150 = select i1 %147, float %149, float %42
  %151 = fsub float %44, %150
  %152 = getelementptr inbounds %struct.ParticleKey, ptr %8, i64 1, i32 1
  %153 = fmul float %13, %151
  %154 = load float, ptr %152, align 4, !tbaa !70
  %155 = fmul float %154, %153
  store float %155, ptr %152, align 4, !tbaa !70
  %156 = getelementptr inbounds %struct.ParticleKey, ptr %8, i64 1, i32 1, i64 1
  %157 = load float, ptr %156, align 8, !tbaa !70
  %158 = fmul float %157, %153
  store float %158, ptr %156, align 8, !tbaa !70
  %159 = getelementptr inbounds %struct.ParticleKey, ptr %8, i64 1, i32 1, i64 2
  %160 = load float, ptr %159, align 4, !tbaa !70
  %161 = fmul float %160, %153
  store float %161, ptr %159, align 4, !tbaa !70
  %162 = getelementptr inbounds [4 x %struct.ParticleKey], ptr %8, i64 0, i64 2, i32 1
  %163 = load float, ptr %162, align 4, !tbaa !70
  %164 = fmul float %153, %163
  store float %164, ptr %162, align 4, !tbaa !70
  %165 = getelementptr inbounds [4 x %struct.ParticleKey], ptr %8, i64 0, i64 2, i32 1, i64 1
  %166 = load float, ptr %165, align 16, !tbaa !70
  %167 = fmul float %153, %166
  store float %167, ptr %165, align 16, !tbaa !70
  %168 = getelementptr inbounds [4 x %struct.ParticleKey], ptr %8, i64 0, i64 2, i32 1, i64 2
  %169 = load float, ptr %168, align 4, !tbaa !70
  %170 = fmul float %153, %169
  store float %170, ptr %168, align 4, !tbaa !70
  %171 = fsub float %40, %150
  %172 = fdiv float %171, %151
  call void @psys_interpolate_particle(i16 noundef signext -1, ptr noundef nonnull %8, float noundef %172, ptr noundef %21, i32 noundef 1) #22
  %173 = getelementptr inbounds %struct.ParticleKey, ptr %21, i64 0, i32 2
  %174 = getelementptr inbounds %struct.ParticleKey, ptr %8, i64 1, i32 2
  %175 = getelementptr inbounds [4 x %struct.ParticleKey], ptr %8, i64 0, i64 2, i32 2
  call void @interp_qt_qtqt(ptr noundef nonnull %173, ptr noundef nonnull %174, ptr noundef nonnull %175, float noundef %172) #22
  %176 = getelementptr inbounds %struct.ParticleKey, ptr %21, i64 0, i32 1
  %177 = fdiv float 1.000000e+00, %153
  %178 = load float, ptr %176, align 4, !tbaa !70
  %179 = fmul float %177, %178
  store float %179, ptr %176, align 4, !tbaa !70
  %180 = getelementptr inbounds %struct.ParticleKey, ptr %21, i64 0, i32 1, i64 1
  %181 = load float, ptr %180, align 4, !tbaa !70
  %182 = fmul float %177, %181
  store float %182, ptr %180, align 4, !tbaa !70
  %183 = getelementptr inbounds %struct.ParticleKey, ptr %21, i64 0, i32 1, i64 2
  %184 = load float, ptr %183, align 4, !tbaa !70
  %185 = fmul float %177, %184
  store float %185, ptr %183, align 4, !tbaa !70
  %186 = getelementptr inbounds %struct.ParticleKey, ptr %21, i64 0, i32 4
  store float %40, ptr %186, align 4, !tbaa !103
  br label %187

187:                                              ; preds = %38, %17, %33, %7, %145
  call void @llvm.lifetime.end.p0(i64 224, ptr nonnull %8) #22
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @ptcache_particle_extra_write(ptr nocapture noundef readonly %0, ptr noundef %1, i32 %2) #0 {
  %4 = getelementptr inbounds %struct.ParticleSystem, ptr %0, i64 0, i32 2
  %5 = load ptr, ptr %4, align 8, !tbaa !77
  %6 = getelementptr inbounds %struct.ParticleSettings, ptr %5, i64 0, i32 11
  %7 = load i16, ptr %6, align 8, !tbaa !82
  %8 = icmp eq i16 %7, 4
  br i1 %8, label %9, label %46

9:                                                ; preds = %3
  %10 = getelementptr inbounds %struct.ParticleSettings, ptr %5, i64 0, i32 3
  %11 = load ptr, ptr %10, align 8, !tbaa !83
  %12 = icmp eq ptr %11, null
  br i1 %12, label %46, label %13

13:                                               ; preds = %9
  %14 = getelementptr inbounds %struct.SPHFluidSettings, ptr %11, i64 0, i32 13
  %15 = load i32, ptr %14, align 4, !tbaa !84
  %16 = and i32 %15, 1
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %46, label %18

18:                                               ; preds = %13
  %19 = getelementptr inbounds %struct.ParticleSystem, ptr %0, i64 0, i32 44
  %20 = load i32, ptr %19, align 8, !tbaa !106
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %46, label %22

22:                                               ; preds = %18
  %23 = getelementptr inbounds %struct.ParticleSystem, ptr %0, i64 0, i32 43
  %24 = load ptr, ptr %23, align 8, !tbaa !107
  %25 = icmp eq ptr %24, null
  br i1 %25, label %46, label %26

26:                                               ; preds = %22
  %27 = load ptr, ptr @MEM_callocN, align 8, !tbaa !34
  %28 = tail call ptr %27(i64 noundef 32, ptr noundef nonnull @.str.22) #22
  %29 = getelementptr inbounds %struct.PTCacheExtra, ptr %28, i64 0, i32 2
  store i32 1, ptr %29, align 8, !tbaa !108
  %30 = load i32, ptr %19, align 8, !tbaa !106
  %31 = getelementptr inbounds %struct.PTCacheExtra, ptr %28, i64 0, i32 3
  store i32 %30, ptr %31, align 4, !tbaa !110
  %32 = load ptr, ptr @MEM_callocN, align 8, !tbaa !34
  %33 = shl i32 %30, 4
  %34 = zext i32 %33 to i64
  %35 = tail call ptr %32(i64 noundef %34, ptr noundef nonnull @.str.23) #22
  %36 = getelementptr inbounds %struct.PTCacheExtra, ptr %28, i64 0, i32 4
  store ptr %35, ptr %36, align 8, !tbaa !111
  %37 = load ptr, ptr %23, align 8, !tbaa !107
  %38 = load i32, ptr %31, align 4, !tbaa !110
  %39 = load i32, ptr %29, align 8, !tbaa !108
  %40 = zext i32 %39 to i64
  %41 = getelementptr inbounds [2 x i32], ptr @ptcache_extra_datasize, i64 0, i64 %40
  %42 = load i32, ptr %41, align 4, !tbaa !112
  %43 = mul i32 %42, %38
  %44 = zext i32 %43 to i64
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %35, ptr align 4 %37, i64 %44, i1 false)
  %45 = getelementptr inbounds %struct.PTCacheMem, ptr %1, i64 0, i32 8
  tail call void @BLI_addtail(ptr noundef nonnull %45, ptr noundef %28) #22
  br label %46

46:                                               ; preds = %26, %22, %18, %13, %9, %3
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @ptcache_particle_extra_read(ptr nocapture noundef %0, ptr nocapture noundef readonly %1, float %2) #0 {
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
  %14 = load i32, ptr %13, align 8, !tbaa !108
  %15 = icmp eq i32 %14, 1
  br i1 %15, label %16, label %28

16:                                               ; preds = %11
  %17 = load ptr, ptr %8, align 8, !tbaa !107
  %18 = icmp eq ptr %17, null
  br i1 %18, label %21, label %19

19:                                               ; preds = %16
  %20 = load ptr, ptr @MEM_freeN, align 8, !tbaa !34
  tail call void %20(ptr noundef nonnull %17) #22
  br label %21

21:                                               ; preds = %19, %16
  %22 = load ptr, ptr @MEM_dupallocN, align 8, !tbaa !34
  %23 = getelementptr inbounds %struct.PTCacheExtra, ptr %12, i64 0, i32 4
  %24 = load ptr, ptr %23, align 8, !tbaa !111
  %25 = tail call ptr %22(ptr noundef %24) #22
  store ptr %25, ptr %8, align 8, !tbaa !107
  %26 = getelementptr inbounds %struct.PTCacheExtra, ptr %12, i64 0, i32 3
  %27 = load i32, ptr %26, align 4, !tbaa !110
  store i32 %27, ptr %9, align 4, !tbaa !113
  store i32 %27, ptr %10, align 8, !tbaa !106
  br label %28

28:                                               ; preds = %21, %11
  %29 = load ptr, ptr %12, align 8, !tbaa !34
  %30 = icmp eq ptr %29, null
  br i1 %30, label %31, label %11, !llvm.loop !114

31:                                               ; preds = %28, %3
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local void @BKE_ptcache_id_from_cloth(ptr nocapture noundef writeonly %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #3 {
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(200) %0, i8 0, i64 200, i1 false)
  %4 = getelementptr inbounds %struct.PTCacheID, ptr %0, i64 0, i32 3
  store ptr %1, ptr %4, align 8, !tbaa !41
  %5 = getelementptr inbounds %struct.PTCacheID, ptr %0, i64 0, i32 4
  store ptr %2, ptr %5, align 8, !tbaa !44
  %6 = getelementptr inbounds %struct.PTCacheID, ptr %0, i64 0, i32 5
  store i32 2, ptr %6, align 8, !tbaa !45
  %7 = getelementptr inbounds %struct.ClothModifierData, ptr %2, i64 0, i32 5
  %8 = load ptr, ptr %7, align 8, !tbaa !115
  %9 = getelementptr inbounds %struct.PointCache, ptr %8, i64 0, i32 12
  %10 = load i32, ptr %9, align 8, !tbaa !63
  %11 = getelementptr inbounds %struct.PTCacheID, ptr %0, i64 0, i32 6
  store i32 %10, ptr %11, align 4, !tbaa !65
  %12 = getelementptr inbounds %struct.PTCacheID, ptr %0, i64 0, i32 25
  store ptr %8, ptr %12, align 8, !tbaa !50
  %13 = getelementptr inbounds %struct.PTCacheID, ptr %0, i64 0, i32 26
  store ptr %7, ptr %13, align 8, !tbaa !51
  %14 = getelementptr inbounds %struct.ClothModifierData, ptr %2, i64 0, i32 6
  %15 = getelementptr inbounds %struct.PTCacheID, ptr %0, i64 0, i32 27
  store ptr %14, ptr %15, align 8, !tbaa !52
  %16 = getelementptr inbounds %struct.PTCacheID, ptr %0, i64 0, i32 22
  store ptr @ptcache_cloth_totpoint, ptr %16, align 8, !tbaa !53
  %17 = getelementptr inbounds %struct.PTCacheID, ptr %0, i64 0, i32 20
  store ptr @ptcache_cloth_totpoint, ptr %17, align 8, !tbaa !54
  %18 = getelementptr inbounds %struct.PTCacheID, ptr %0, i64 0, i32 21
  store ptr @ptcache_cloth_error, ptr %18, align 8, !tbaa !55
  %19 = getelementptr inbounds %struct.PTCacheID, ptr %0, i64 0, i32 12
  store ptr @ptcache_cloth_write, ptr %19, align 8, !tbaa !56
  %20 = getelementptr inbounds %struct.PTCacheID, ptr %0, i64 0, i32 13
  store ptr @ptcache_cloth_read, ptr %20, align 8, !tbaa !57
  %21 = getelementptr inbounds %struct.PTCacheID, ptr %0, i64 0, i32 14
  store ptr @ptcache_cloth_interpolate, ptr %21, align 8, !tbaa !58
  %22 = getelementptr inbounds %struct.PTCacheID, ptr %0, i64 0, i32 15
  %23 = getelementptr inbounds %struct.PTCacheID, ptr %0, i64 0, i32 23
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %22, i8 0, i64 40, i1 false)
  store ptr @ptcache_basic_header_write, ptr %23, align 8, !tbaa !59
  %24 = getelementptr inbounds %struct.PTCacheID, ptr %0, i64 0, i32 24
  store ptr @ptcache_basic_header_read, ptr %24, align 8, !tbaa !60
  %25 = getelementptr inbounds %struct.PTCacheID, ptr %0, i64 0, i32 10
  store i32 22, ptr %25, align 4, !tbaa !61
  %26 = getelementptr inbounds %struct.PTCacheID, ptr %0, i64 0, i32 11
  store i32 0, ptr %26, align 8, !tbaa !62
  %27 = getelementptr inbounds %struct.PTCacheID, ptr %0, i64 0, i32 8
  store i32 1, ptr %27, align 4, !tbaa !66
  %28 = getelementptr inbounds %struct.PTCacheID, ptr %0, i64 0, i32 9
  store i32 1, ptr %28, align 8, !tbaa !67
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable
define internal i32 @ptcache_cloth_totpoint(ptr nocapture noundef readonly %0, i32 %1) #10 {
  %3 = getelementptr inbounds %struct.ClothModifierData, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !118
  %5 = icmp eq ptr %4, null
  br i1 %5, label %9, label %6

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.Cloth, ptr %4, i64 0, i32 2
  %8 = load i32, ptr %7, align 8, !tbaa !119
  br label %9

9:                                                ; preds = %2, %6
  %10 = phi i32 [ %8, %6 ], [ 0, %2 ]
  ret i32 %10
}

; Function Attrs: nounwind uwtable
define internal void @ptcache_cloth_error(ptr noundef %0, ptr noundef %1) #0 {
  tail call void (ptr, ptr, ...) @modifier_setError(ptr noundef %0, ptr noundef nonnull @.str.24, ptr noundef %1) #22
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none) uwtable
define internal noundef i32 @ptcache_cloth_write(i32 noundef %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2, i32 %3) #7 {
  %5 = getelementptr inbounds %struct.ClothModifierData, ptr %1, i64 0, i32 2
  %6 = load ptr, ptr %5, align 8, !tbaa !118
  %7 = load ptr, ptr %6, align 8, !tbaa !121
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

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none) uwtable
define internal void @ptcache_cloth_read(i32 noundef %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2, float %3, ptr noundef readnone %4) #7 {
  %6 = getelementptr inbounds %struct.ClothModifierData, ptr %1, i64 0, i32 2
  %7 = load ptr, ptr %6, align 8, !tbaa !118
  %8 = load ptr, ptr %7, align 8, !tbaa !121
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

; Function Attrs: nounwind uwtable
define internal void @ptcache_cloth_interpolate(i32 noundef %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2, float noundef %3, float noundef %4, float noundef %5, ptr noundef readonly %6) #0 {
  %8 = alloca [4 x %struct.ParticleKey], align 16
  %9 = getelementptr inbounds %struct.ClothModifierData, ptr %1, i64 0, i32 2
  %10 = load ptr, ptr %9, align 8, !tbaa !118
  %11 = load ptr, ptr %10, align 8, !tbaa !121
  call void @llvm.lifetime.start.p0(i64 224, ptr nonnull %8) #22
  %12 = fcmp oeq float %4, %5
  br i1 %12, label %103, label %13

13:                                               ; preds = %7
  %14 = sext i32 %0 to i64
  %15 = getelementptr inbounds [4 x %struct.ParticleKey], ptr %8, i64 0, i64 1
  %16 = getelementptr inbounds %struct.ClothVertex, ptr %11, i64 %14, i32 3
  %17 = load float, ptr %16, align 4, !tbaa !70
  store float %17, ptr %15, align 8, !tbaa !70
  %18 = getelementptr inbounds float, ptr %16, i64 1
  %19 = load float, ptr %18, align 4, !tbaa !70
  %20 = getelementptr inbounds [4 x %struct.ParticleKey], ptr %8, i64 0, i64 1, i32 0, i64 1
  store float %19, ptr %20, align 4, !tbaa !70
  %21 = getelementptr inbounds float, ptr %16, i64 2
  %22 = load float, ptr %21, align 4, !tbaa !70
  %23 = getelementptr inbounds [4 x %struct.ParticleKey], ptr %8, i64 0, i64 1, i32 0, i64 2
  store float %22, ptr %23, align 16, !tbaa !70
  %24 = getelementptr inbounds [4 x %struct.ParticleKey], ptr %8, i64 0, i64 1, i32 1
  %25 = getelementptr inbounds %struct.ClothVertex, ptr %11, i64 %14, i32 1
  %26 = load float, ptr %25, align 4, !tbaa !70
  store float %26, ptr %24, align 4, !tbaa !70
  %27 = getelementptr inbounds float, ptr %25, i64 1
  %28 = load float, ptr %27, align 4, !tbaa !70
  %29 = getelementptr inbounds [4 x %struct.ParticleKey], ptr %8, i64 0, i64 1, i32 1, i64 1
  store float %28, ptr %29, align 8, !tbaa !70
  %30 = getelementptr inbounds float, ptr %25, i64 2
  %31 = load float, ptr %30, align 4, !tbaa !70
  %32 = getelementptr inbounds [4 x %struct.ParticleKey], ptr %8, i64 0, i64 1, i32 1, i64 2
  store float %31, ptr %32, align 4, !tbaa !70
  %33 = icmp eq ptr %6, null
  br i1 %33, label %38, label %34

34:                                               ; preds = %13
  %35 = getelementptr inbounds [4 x %struct.ParticleKey], ptr %8, i64 0, i64 2
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(12) %35, ptr noundef nonnull align 4 dereferenceable(12) %6, i64 12, i1 false)
  %36 = getelementptr inbounds [4 x %struct.ParticleKey], ptr %8, i64 0, i64 2, i32 1
  %37 = getelementptr inbounds float, ptr %6, i64 6
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %36, ptr noundef nonnull align 4 dereferenceable(12) %37, i64 12, i1 false)
  br label %66

38:                                               ; preds = %13
  %39 = getelementptr inbounds ptr, ptr %2, i64 1
  %40 = load ptr, ptr %39, align 8, !tbaa !34
  %41 = icmp eq ptr %40, null
  br i1 %41, label %44, label %42

42:                                               ; preds = %38
  %43 = getelementptr inbounds %struct.ParticleKey, ptr %8, i64 2
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(12) %43, ptr noundef nonnull align 1 dereferenceable(12) %40, i64 12, i1 false)
  br label %44

44:                                               ; preds = %42, %38
  %45 = getelementptr inbounds ptr, ptr %2, i64 2
  %46 = load ptr, ptr %45, align 8, !tbaa !34
  %47 = icmp eq ptr %46, null
  br i1 %47, label %50, label %48

48:                                               ; preds = %44
  %49 = getelementptr inbounds %struct.ParticleKey, ptr %8, i64 2, i32 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %49, ptr noundef nonnull align 1 dereferenceable(12) %46, i64 12, i1 false)
  br label %50

50:                                               ; preds = %48, %44
  %51 = getelementptr inbounds ptr, ptr %2, i64 3
  %52 = load ptr, ptr %51, align 8, !tbaa !34
  %53 = icmp eq ptr %52, null
  %54 = getelementptr inbounds %struct.ParticleKey, ptr %8, i64 2, i32 2
  br i1 %53, label %55, label %57

55:                                               ; preds = %50
  %56 = getelementptr inbounds %struct.ParticleKey, ptr %8, i64 2, i32 1
  call void @vec_to_quat(ptr noundef nonnull %54, ptr noundef nonnull %56, i16 noundef signext 3, i16 noundef signext 2) #22
  br label %58

57:                                               ; preds = %50
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %54, ptr noundef nonnull align 1 dereferenceable(16) %52, i64 16, i1 false)
  br label %58

58:                                               ; preds = %57, %55
  %59 = getelementptr inbounds ptr, ptr %2, i64 4
  %60 = load ptr, ptr %59, align 8, !tbaa !34
  %61 = icmp eq ptr %60, null
  br i1 %61, label %64, label %62

62:                                               ; preds = %58
  %63 = getelementptr inbounds %struct.ParticleKey, ptr %8, i64 2, i32 3
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(12) %63, ptr noundef nonnull align 1 dereferenceable(12) %60, i64 12, i1 false)
  br label %64

64:                                               ; preds = %58, %62
  %65 = getelementptr inbounds %struct.ParticleKey, ptr %8, i64 2, i32 4
  store float %5, ptr %65, align 4, !tbaa !38
  br label %66

66:                                               ; preds = %64, %34
  %67 = fsub float %5, %4
  %68 = load float, ptr %24, align 4, !tbaa !70
  %69 = fmul float %67, %68
  store float %69, ptr %24, align 4, !tbaa !70
  %70 = load float, ptr %29, align 8, !tbaa !70
  %71 = fmul float %67, %70
  store float %71, ptr %29, align 8, !tbaa !70
  %72 = load float, ptr %32, align 4, !tbaa !70
  %73 = fmul float %67, %72
  store float %73, ptr %32, align 4, !tbaa !70
  %74 = getelementptr inbounds [4 x %struct.ParticleKey], ptr %8, i64 0, i64 2, i32 1
  %75 = load float, ptr %74, align 4, !tbaa !70
  %76 = fmul float %67, %75
  store float %76, ptr %74, align 4, !tbaa !70
  %77 = getelementptr inbounds [4 x %struct.ParticleKey], ptr %8, i64 0, i64 2, i32 1, i64 1
  %78 = load float, ptr %77, align 16, !tbaa !70
  %79 = fmul float %67, %78
  store float %79, ptr %77, align 16, !tbaa !70
  %80 = getelementptr inbounds [4 x %struct.ParticleKey], ptr %8, i64 0, i64 2, i32 1, i64 2
  %81 = load float, ptr %80, align 4, !tbaa !70
  %82 = fmul float %67, %81
  store float %82, ptr %80, align 4, !tbaa !70
  %83 = fsub float %3, %4
  %84 = fdiv float %83, %67
  call void @psys_interpolate_particle(i16 noundef signext -1, ptr noundef nonnull %8, float noundef %84, ptr noundef nonnull %8, i32 noundef 1) #22
  %85 = getelementptr inbounds %struct.ParticleKey, ptr %8, i64 0, i32 1
  %86 = fdiv float 1.000000e+00, %67
  %87 = load float, ptr %85, align 4, !tbaa !70
  %88 = fmul float %86, %87
  store float %88, ptr %85, align 4, !tbaa !70
  %89 = getelementptr inbounds %struct.ParticleKey, ptr %8, i64 0, i32 1, i64 1
  %90 = load float, ptr %89, align 16, !tbaa !70
  %91 = fmul float %86, %90
  store float %91, ptr %89, align 16, !tbaa !70
  %92 = getelementptr inbounds %struct.ParticleKey, ptr %8, i64 0, i32 1, i64 2
  %93 = load float, ptr %92, align 4, !tbaa !70
  %94 = fmul float %86, %93
  store float %94, ptr %92, align 4, !tbaa !70
  %95 = load float, ptr %8, align 16, !tbaa !70
  store float %95, ptr %16, align 4, !tbaa !70
  %96 = getelementptr inbounds float, ptr %8, i64 1
  %97 = load float, ptr %96, align 4, !tbaa !70
  store float %97, ptr %18, align 4, !tbaa !70
  %98 = getelementptr inbounds float, ptr %8, i64 2
  %99 = load float, ptr %98, align 8, !tbaa !70
  store float %99, ptr %21, align 4, !tbaa !70
  %100 = load float, ptr %85, align 4, !tbaa !70
  store float %100, ptr %25, align 4, !tbaa !70
  %101 = load float, ptr %89, align 16, !tbaa !70
  store float %101, ptr %27, align 4, !tbaa !70
  %102 = load float, ptr %92, align 4, !tbaa !70
  store float %102, ptr %30, align 4, !tbaa !70
  br label %103

103:                                              ; preds = %7, %66
  call void @llvm.lifetime.end.p0(i64 224, ptr nonnull %8) #22
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local void @BKE_ptcache_id_from_smoke(ptr nocapture noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #3 {
  %4 = getelementptr inbounds %struct.SmokeModifierData, ptr %2, i64 0, i32 1
  %5 = load ptr, ptr %4, align 8, !tbaa !122
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(200) %0, i8 0, i64 200, i1 false)
  %6 = getelementptr inbounds %struct.PTCacheID, ptr %0, i64 0, i32 3
  store ptr %1, ptr %6, align 8, !tbaa !41
  %7 = getelementptr inbounds %struct.PTCacheID, ptr %0, i64 0, i32 4
  store ptr %2, ptr %7, align 8, !tbaa !44
  %8 = getelementptr inbounds %struct.PTCacheID, ptr %0, i64 0, i32 5
  store i32 3, ptr %8, align 8, !tbaa !45
  %9 = getelementptr inbounds %struct.SmokeDomainSettings, ptr %5, i64 0, i32 47
  %10 = load ptr, ptr %9, align 8, !tbaa !34
  %11 = getelementptr inbounds %struct.PointCache, ptr %10, i64 0, i32 12
  %12 = load i32, ptr %11, align 8, !tbaa !63
  %13 = getelementptr inbounds %struct.PTCacheID, ptr %0, i64 0, i32 6
  store i32 %12, ptr %13, align 4, !tbaa !65
  %14 = getelementptr inbounds %struct.PTCacheID, ptr %0, i64 0, i32 25
  store ptr %10, ptr %14, align 8, !tbaa !50
  %15 = getelementptr inbounds %struct.PTCacheID, ptr %0, i64 0, i32 26
  store ptr %9, ptr %15, align 8, !tbaa !51
  %16 = getelementptr inbounds %struct.SmokeDomainSettings, ptr %5, i64 0, i32 48
  %17 = getelementptr inbounds %struct.PTCacheID, ptr %0, i64 0, i32 27
  store ptr %16, ptr %17, align 8, !tbaa !52
  %18 = getelementptr inbounds %struct.PTCacheID, ptr %0, i64 0, i32 22
  store ptr @ptcache_smoke_totpoint, ptr %18, align 8, !tbaa !53
  %19 = getelementptr inbounds %struct.PTCacheID, ptr %0, i64 0, i32 20
  store ptr @ptcache_smoke_totpoint, ptr %19, align 8, !tbaa !54
  %20 = getelementptr inbounds %struct.PTCacheID, ptr %0, i64 0, i32 21
  store ptr @ptcache_smoke_error, ptr %20, align 8, !tbaa !55
  %21 = getelementptr inbounds %struct.PTCacheID, ptr %0, i64 0, i32 12
  %22 = getelementptr inbounds %struct.PTCacheID, ptr %0, i64 0, i32 16
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %21, i8 0, i64 24, i1 false)
  store ptr @ptcache_smoke_read, ptr %22, align 8, !tbaa !124
  %23 = getelementptr inbounds %struct.PTCacheID, ptr %0, i64 0, i32 15
  store ptr @ptcache_smoke_write, ptr %23, align 8, !tbaa !125
  %24 = getelementptr inbounds %struct.PTCacheID, ptr %0, i64 0, i32 17
  %25 = getelementptr inbounds %struct.PTCacheID, ptr %0, i64 0, i32 23
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %24, i8 0, i64 24, i1 false)
  store ptr @ptcache_basic_header_write, ptr %25, align 8, !tbaa !59
  %26 = getelementptr inbounds %struct.PTCacheID, ptr %0, i64 0, i32 24
  store ptr @ptcache_basic_header_read, ptr %26, align 8, !tbaa !60
  %27 = getelementptr inbounds %struct.PTCacheID, ptr %0, i64 0, i32 10
  store i32 0, ptr %27, align 4, !tbaa !61
  %28 = getelementptr inbounds %struct.PTCacheID, ptr %0, i64 0, i32 11
  store i32 0, ptr %28, align 8, !tbaa !62
  %29 = getelementptr inbounds %struct.SmokeDomainSettings, ptr %5, i64 0, i32 1
  %30 = load ptr, ptr %29, align 8, !tbaa !126
  %31 = icmp eq ptr %30, null
  br i1 %31, label %33, label %32

32:                                               ; preds = %3
  store i32 2, ptr %27, align 4, !tbaa !61
  br label %33

33:                                               ; preds = %32, %3
  %34 = getelementptr inbounds %struct.SmokeDomainSettings, ptr %5, i64 0, i32 6
  %35 = load ptr, ptr %34, align 8, !tbaa !128
  %36 = icmp eq ptr %35, null
  br i1 %36, label %40, label %37

37:                                               ; preds = %33
  %38 = load i32, ptr %27, align 4, !tbaa !61
  %39 = or i32 %38, 4
  store i32 %39, ptr %27, align 4, !tbaa !61
  br label %40

40:                                               ; preds = %37, %33
  %41 = getelementptr inbounds %struct.PTCacheID, ptr %0, i64 0, i32 8
  store i32 1, ptr %41, align 4, !tbaa !66
  %42 = getelementptr inbounds %struct.PTCacheID, ptr %0, i64 0, i32 9
  store i32 1, ptr %42, align 8, !tbaa !67
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #11

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define internal noundef i32 @ptcache_smoke_totpoint(ptr nocapture readnone %0, i32 %1) #6 {
  ret i32 0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define internal void @ptcache_smoke_error(ptr nocapture readnone %0, ptr nocapture readnone %1) #6 {
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define internal noundef i32 @ptcache_smoke_read(ptr nocapture readnone %0, ptr nocapture readnone %1) #6 {
  ret i32 0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define internal noundef i32 @ptcache_smoke_write(ptr nocapture readnone %0, ptr nocapture readnone %1) #6 {
  ret i32 0
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #11

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local void @BKE_ptcache_id_from_dynamicpaint(ptr nocapture noundef writeonly %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #3 {
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(200) %0, i8 0, i64 200, i1 false)
  %4 = getelementptr inbounds %struct.PTCacheID, ptr %0, i64 0, i32 3
  store ptr %1, ptr %4, align 8, !tbaa !41
  %5 = getelementptr inbounds %struct.PTCacheID, ptr %0, i64 0, i32 4
  store ptr %2, ptr %5, align 8, !tbaa !44
  %6 = getelementptr inbounds %struct.PTCacheID, ptr %0, i64 0, i32 5
  store i32 5, ptr %6, align 8, !tbaa !45
  %7 = getelementptr inbounds %struct.DynamicPaintSurface, ptr %2, i64 0, i32 6
  %8 = load ptr, ptr %7, align 8, !tbaa !129
  %9 = getelementptr inbounds %struct.PTCacheID, ptr %0, i64 0, i32 25
  store ptr %8, ptr %9, align 8, !tbaa !50
  %10 = getelementptr inbounds %struct.PTCacheID, ptr %0, i64 0, i32 26
  store ptr %7, ptr %10, align 8, !tbaa !51
  %11 = getelementptr inbounds %struct.DynamicPaintSurface, ptr %2, i64 0, i32 7
  %12 = getelementptr inbounds %struct.PTCacheID, ptr %0, i64 0, i32 27
  store ptr %11, ptr %12, align 8, !tbaa !52
  %13 = getelementptr inbounds %struct.PTCacheID, ptr %0, i64 0, i32 22
  store ptr @ptcache_dynamicpaint_totpoint, ptr %13, align 8, !tbaa !53
  %14 = getelementptr inbounds %struct.PTCacheID, ptr %0, i64 0, i32 20
  store ptr @ptcache_dynamicpaint_totpoint, ptr %14, align 8, !tbaa !54
  %15 = getelementptr inbounds %struct.PTCacheID, ptr %0, i64 0, i32 21
  store ptr @ptcache_dynamicpaint_error, ptr %15, align 8, !tbaa !55
  %16 = getelementptr inbounds %struct.PTCacheID, ptr %0, i64 0, i32 12
  %17 = getelementptr inbounds %struct.PTCacheID, ptr %0, i64 0, i32 15
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %16, i8 0, i64 24, i1 false)
  store ptr @ptcache_dynamicpaint_write, ptr %17, align 8, !tbaa !125
  %18 = getelementptr inbounds %struct.PTCacheID, ptr %0, i64 0, i32 16
  store ptr @ptcache_dynamicpaint_read, ptr %18, align 8, !tbaa !124
  %19 = getelementptr inbounds %struct.PTCacheID, ptr %0, i64 0, i32 17
  %20 = getelementptr inbounds %struct.PTCacheID, ptr %0, i64 0, i32 23
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %19, i8 0, i64 24, i1 false)
  store ptr @ptcache_basic_header_write, ptr %20, align 8, !tbaa !59
  %21 = getelementptr inbounds %struct.PTCacheID, ptr %0, i64 0, i32 24
  store ptr @ptcache_basic_header_read, ptr %21, align 8, !tbaa !60
  %22 = getelementptr inbounds %struct.PTCacheID, ptr %0, i64 0, i32 10
  store i32 3, ptr %22, align 4, !tbaa !61
  %23 = getelementptr inbounds %struct.PTCacheID, ptr %0, i64 0, i32 11
  store i32 0, ptr %23, align 8, !tbaa !62
  %24 = getelementptr inbounds %struct.PointCache, ptr %8, i64 0, i32 12
  %25 = load i32, ptr %24, align 8, !tbaa !63
  %26 = getelementptr inbounds %struct.PTCacheID, ptr %0, i64 0, i32 6
  store i32 %25, ptr %26, align 4, !tbaa !65
  %27 = getelementptr inbounds %struct.PTCacheID, ptr %0, i64 0, i32 8
  store i32 1, ptr %27, align 4, !tbaa !66
  %28 = getelementptr inbounds %struct.PTCacheID, ptr %0, i64 0, i32 9
  store i32 1, ptr %28, align 8, !tbaa !67
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable
define internal i32 @ptcache_dynamicpaint_totpoint(ptr nocapture noundef readonly %0, i32 %1) #10 {
  %3 = getelementptr inbounds %struct.DynamicPaintSurface, ptr %0, i64 0, i32 3
  %4 = load ptr, ptr %3, align 8, !tbaa !131
  %5 = icmp eq ptr %4, null
  br i1 %5, label %9, label %6

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.PaintSurfaceData, ptr %4, i64 0, i32 4
  %8 = load i32, ptr %7, align 8, !tbaa !132
  br label %9

9:                                                ; preds = %2, %6
  %10 = phi i32 [ %8, %6 ], [ 0, %2 ]
  ret i32 %10
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define internal void @ptcache_dynamicpaint_error(ptr nocapture readnone %0, ptr nocapture readnone %1) #6 {
  ret void
}

; Function Attrs: nounwind uwtable
define internal noundef i32 @ptcache_dynamicpaint_write(ptr nocapture noundef readonly %0, ptr nocapture noundef %1) #0 {
  %3 = load ptr, ptr %0, align 8, !tbaa !71
  %4 = tail call i64 @fwrite(ptr noundef nonnull @.str.25, i64 noundef 4, i64 noundef 1, ptr noundef %3)
  %5 = getelementptr inbounds %struct.DynamicPaintSurface, ptr %1, i64 0, i32 10
  %6 = load i16, ptr %5, align 4, !tbaa !134
  %7 = icmp eq i16 %6, 2
  br i1 %7, label %45, label %8

8:                                                ; preds = %2
  %9 = getelementptr inbounds %struct.DynamicPaintSurface, ptr %1, i64 0, i32 3
  %10 = load ptr, ptr %9, align 8, !tbaa !131
  %11 = icmp eq ptr %10, null
  br i1 %11, label %45, label %12

12:                                               ; preds = %8
  %13 = getelementptr inbounds %struct.PaintSurfaceData, ptr %10, i64 0, i32 4
  %14 = load i32, ptr %13, align 8, !tbaa !132
  %15 = getelementptr inbounds %struct.DynamicPaintSurface, ptr %1, i64 0, i32 11
  %16 = load ptr, ptr %0, align 8, !tbaa !71
  %17 = tail call i64 @fwrite(ptr noundef nonnull %15, i64 noundef 4, i64 noundef 1, ptr noundef %16)
  %18 = load i16, ptr %15, align 2, !tbaa !135
  switch i16 %18, label %45 [
    i16 0, label %19
    i16 1, label %21
    i16 2, label %21
    i16 3, label %23
  ]

19:                                               ; preds = %12
  %20 = mul i32 %14, 40
  br label %25

21:                                               ; preds = %12, %12
  %22 = shl i32 %14, 2
  br label %25

23:                                               ; preds = %12
  %24 = shl i32 %14, 4
  br label %25

25:                                               ; preds = %21, %23, %19
  %26 = phi i32 [ %20, %19 ], [ %22, %21 ], [ %24, %23 ]
  %27 = load ptr, ptr @MEM_callocN, align 8, !tbaa !34
  %28 = lshr i32 %26, 4
  %29 = add i32 %26, 67
  %30 = add i32 %29, %28
  %31 = zext i32 %30 to i64
  %32 = tail call ptr %27(i64 noundef %31, ptr noundef nonnull @.str.26) #22
  %33 = load ptr, ptr %9, align 8, !tbaa !131
  %34 = getelementptr inbounds %struct.PaintSurfaceData, ptr %33, i64 0, i32 1
  %35 = load ptr, ptr %34, align 8, !tbaa !136
  %36 = load ptr, ptr @MEM_callocN, align 8, !tbaa !34
  %37 = tail call ptr %36(i64 noundef 16, ptr noundef nonnull @.str.27) #22
  %38 = load ptr, ptr %0, align 8, !tbaa !71
  %39 = tail call i32 @fputc(i32 0, ptr %38)
  %40 = zext i32 %26 to i64
  %41 = load ptr, ptr %0, align 8, !tbaa !71
  %42 = tail call i64 @fwrite(ptr noundef %35, i64 noundef 1, i64 noundef %40, ptr noundef %41)
  %43 = load ptr, ptr @MEM_freeN, align 8, !tbaa !34
  tail call void %43(ptr noundef %37) #22
  %44 = load ptr, ptr @MEM_freeN, align 8, !tbaa !34
  tail call void %44(ptr noundef %32) #22
  br label %45

45:                                               ; preds = %2, %8, %25, %12
  %46 = phi i32 [ 0, %12 ], [ 1, %25 ], [ 1, %8 ], [ 1, %2 ]
  ret i32 %46
}

; Function Attrs: nounwind uwtable
define internal noundef i32 @ptcache_dynamicpaint_read(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) #0 {
  %3 = alloca [4 x i8], align 1
  %4 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #22
  %5 = load ptr, ptr %0, align 8, !tbaa !71
  %6 = call i64 @fread(ptr noundef nonnull %3, i64 noundef 4, i64 noundef 1, ptr noundef %5)
  %7 = call i32 @bcmp(ptr noundef nonnull dereferenceable(4) %3, ptr noundef nonnull dereferenceable(4) @.str.25, i64 4)
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %22, label %9

9:                                                ; preds = %2
  %10 = load i8, ptr %3, align 1, !tbaa !137
  %11 = zext i8 %10 to i32
  %12 = getelementptr inbounds [4 x i8], ptr %3, i64 0, i64 1
  %13 = load i8, ptr %12, align 1, !tbaa !137
  %14 = zext i8 %13 to i32
  %15 = getelementptr inbounds [4 x i8], ptr %3, i64 0, i64 2
  %16 = load i8, ptr %15, align 1, !tbaa !137
  %17 = zext i8 %16 to i32
  %18 = getelementptr inbounds [4 x i8], ptr %3, i64 0, i64 3
  %19 = load i8, ptr %18, align 1, !tbaa !137
  %20 = zext i8 %19 to i32
  %21 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.28, i32 noundef %11, i32 noundef %14, i32 noundef %17, i32 noundef %20)
  br label %51

22:                                               ; preds = %2
  %23 = getelementptr inbounds %struct.DynamicPaintSurface, ptr %1, i64 0, i32 10
  %24 = load i16, ptr %23, align 4, !tbaa !134
  %25 = icmp eq i16 %24, 2
  br i1 %25, label %51, label %26

26:                                               ; preds = %22
  %27 = getelementptr inbounds %struct.DynamicPaintSurface, ptr %1, i64 0, i32 3
  %28 = load ptr, ptr %27, align 8, !tbaa !131
  %29 = icmp eq ptr %28, null
  br i1 %29, label %51, label %30

30:                                               ; preds = %26
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #22
  %31 = load ptr, ptr %0, align 8, !tbaa !71
  %32 = call i64 @fread(ptr noundef nonnull %4, i64 noundef 4, i64 noundef 1, ptr noundef %31)
  %33 = load i32, ptr %4, align 4, !tbaa !112
  %34 = getelementptr inbounds %struct.DynamicPaintSurface, ptr %1, i64 0, i32 11
  %35 = load i16, ptr %34, align 2, !tbaa !135
  %36 = sext i16 %35 to i32
  %37 = icmp eq i32 %33, %36
  %38 = icmp ult i16 %35, 4
  %39 = and i1 %37, %38
  br i1 %39, label %40, label %50

40:                                               ; preds = %30
  %41 = sext i16 %35 to i64
  %42 = getelementptr inbounds [4 x i32], ptr @switch.table.ptcache_dynamicpaint_read, i64 0, i64 %41
  %43 = load i32, ptr %42, align 4
  %44 = load ptr, ptr %27, align 8, !tbaa !131
  %45 = getelementptr inbounds %struct.PaintSurfaceData, ptr %44, i64 0, i32 1
  %46 = load ptr, ptr %45, align 8, !tbaa !136
  %47 = getelementptr inbounds %struct.PaintSurfaceData, ptr %44, i64 0, i32 4
  %48 = load i32, ptr %47, align 8, !tbaa !132
  %49 = mul i32 %48, %43
  tail call fastcc void @ptcache_file_compressed_read(ptr noundef nonnull %0, ptr noundef %46, i32 noundef %49)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #22
  br label %51

50:                                               ; preds = %30
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #22
  br label %51

51:                                               ; preds = %22, %26, %40, %50, %9
  %52 = phi i32 [ 0, %9 ], [ 0, %50 ], [ 1, %40 ], [ 1, %26 ], [ 1, %22 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #22
  ret i32 %52
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local void @BKE_ptcache_id_from_rigidbody(ptr nocapture noundef writeonly %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #3 {
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(200) %0, i8 0, i64 200, i1 false)
  %4 = getelementptr inbounds %struct.PTCacheID, ptr %0, i64 0, i32 3
  store ptr %1, ptr %4, align 8, !tbaa !41
  %5 = getelementptr inbounds %struct.PTCacheID, ptr %0, i64 0, i32 4
  store ptr %2, ptr %5, align 8, !tbaa !44
  %6 = getelementptr inbounds %struct.PTCacheID, ptr %0, i64 0, i32 5
  store i32 6, ptr %6, align 8, !tbaa !45
  %7 = getelementptr inbounds %struct.RigidBodyWorld, ptr %2, i64 0, i32 6
  %8 = load ptr, ptr %7, align 8, !tbaa !138
  %9 = getelementptr inbounds %struct.PTCacheID, ptr %0, i64 0, i32 25
  store ptr %8, ptr %9, align 8, !tbaa !50
  %10 = getelementptr inbounds %struct.PTCacheID, ptr %0, i64 0, i32 26
  store ptr %7, ptr %10, align 8, !tbaa !51
  %11 = getelementptr inbounds %struct.RigidBodyWorld, ptr %2, i64 0, i32 7
  %12 = getelementptr inbounds %struct.PTCacheID, ptr %0, i64 0, i32 27
  store ptr %11, ptr %12, align 8, !tbaa !52
  %13 = getelementptr inbounds %struct.PTCacheID, ptr %0, i64 0, i32 22
  store ptr @ptcache_rigidbody_totpoint, ptr %13, align 8, !tbaa !53
  %14 = getelementptr inbounds %struct.PTCacheID, ptr %0, i64 0, i32 20
  store ptr @ptcache_rigidbody_totpoint, ptr %14, align 8, !tbaa !54
  %15 = getelementptr inbounds %struct.PTCacheID, ptr %0, i64 0, i32 21
  store ptr @ptcache_rigidbody_error, ptr %15, align 8, !tbaa !55
  %16 = getelementptr inbounds %struct.PTCacheID, ptr %0, i64 0, i32 12
  store ptr @ptcache_rigidbody_write, ptr %16, align 8, !tbaa !56
  %17 = getelementptr inbounds %struct.PTCacheID, ptr %0, i64 0, i32 13
  store ptr @ptcache_rigidbody_read, ptr %17, align 8, !tbaa !57
  %18 = getelementptr inbounds %struct.PTCacheID, ptr %0, i64 0, i32 14
  store ptr @ptcache_rigidbody_interpolate, ptr %18, align 8, !tbaa !58
  %19 = getelementptr inbounds %struct.PTCacheID, ptr %0, i64 0, i32 15
  %20 = getelementptr inbounds %struct.PTCacheID, ptr %0, i64 0, i32 23
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %19, i8 0, i64 40, i1 false)
  store ptr @ptcache_basic_header_write, ptr %20, align 8, !tbaa !59
  %21 = getelementptr inbounds %struct.PTCacheID, ptr %0, i64 0, i32 24
  store ptr @ptcache_basic_header_read, ptr %21, align 8, !tbaa !60
  %22 = getelementptr inbounds %struct.PTCacheID, ptr %0, i64 0, i32 10
  store i32 10, ptr %22, align 4, !tbaa !61
  %23 = getelementptr inbounds %struct.PTCacheID, ptr %0, i64 0, i32 11
  store i32 0, ptr %23, align 8, !tbaa !62
  %24 = getelementptr inbounds %struct.PointCache, ptr %8, i64 0, i32 12
  %25 = load i32, ptr %24, align 8, !tbaa !63
  %26 = getelementptr inbounds %struct.PTCacheID, ptr %0, i64 0, i32 6
  store i32 %25, ptr %26, align 4, !tbaa !65
  %27 = getelementptr inbounds %struct.PTCacheID, ptr %0, i64 0, i32 8
  store i32 1, ptr %27, align 4, !tbaa !66
  %28 = getelementptr inbounds %struct.PTCacheID, ptr %0, i64 0, i32 9
  store i32 1, ptr %28, align 8, !tbaa !67
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define internal i32 @ptcache_rigidbody_totpoint(ptr nocapture noundef readonly %0, i32 %1) #5 {
  %3 = getelementptr inbounds %struct.RigidBodyWorld, ptr %0, i64 0, i32 8
  %4 = load i32, ptr %3, align 8, !tbaa !140
  ret i32 %4
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define internal void @ptcache_rigidbody_error(ptr nocapture readnone %0, ptr nocapture readnone %1) #6 {
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none) uwtable
define internal noundef i32 @ptcache_rigidbody_write(i32 noundef %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2, i32 %3) #7 {
  %5 = getelementptr inbounds %struct.RigidBodyWorld, ptr %1, i64 0, i32 2
  %6 = load ptr, ptr %5, align 8, !tbaa !141
  %7 = icmp eq ptr %6, null
  br i1 %7, label %12, label %8

8:                                                ; preds = %4
  %9 = sext i32 %0 to i64
  %10 = getelementptr inbounds ptr, ptr %6, i64 %9
  %11 = load ptr, ptr %10, align 8, !tbaa !34
  br label %12

12:                                               ; preds = %8, %4
  %13 = phi ptr [ %11, %8 ], [ null, %4 ]
  %14 = icmp eq ptr %13, null
  br i1 %14, label %35, label %15

15:                                               ; preds = %12
  %16 = getelementptr inbounds %struct.Object, ptr %13, i64 0, i32 128
  %17 = load ptr, ptr %16, align 8, !tbaa !142
  %18 = icmp eq ptr %17, null
  br i1 %18, label %35, label %19

19:                                               ; preds = %15
  %20 = getelementptr inbounds %struct.RigidBodyOb, ptr %17, i64 0, i32 2
  %21 = load i16, ptr %20, align 8, !tbaa !146
  %22 = icmp eq i16 %21, 0
  br i1 %22, label %23, label %35

23:                                               ; preds = %19
  %24 = getelementptr inbounds ptr, ptr %2, i64 1
  %25 = load ptr, ptr %24, align 8, !tbaa !34
  %26 = icmp eq ptr %25, null
  br i1 %26, label %29, label %27

27:                                               ; preds = %23
  %28 = getelementptr inbounds %struct.RigidBodyOb, ptr %17, i64 0, i32 17
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(12) %25, ptr noundef nonnull align 8 dereferenceable(12) %28, i64 12, i1 false)
  br label %29

29:                                               ; preds = %27, %23
  %30 = getelementptr inbounds ptr, ptr %2, i64 3
  %31 = load ptr, ptr %30, align 8, !tbaa !34
  %32 = icmp eq ptr %31, null
  br i1 %32, label %35, label %33

33:                                               ; preds = %29
  %34 = getelementptr inbounds %struct.RigidBodyOb, ptr %17, i64 0, i32 16
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(16) %31, ptr noundef nonnull align 8 dereferenceable(16) %34, i64 16, i1 false)
  br label %35

35:                                               ; preds = %19, %33, %29, %15, %12
  ret i32 1
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none) uwtable
define internal void @ptcache_rigidbody_read(i32 noundef %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2, float %3, ptr noundef readnone %4) #7 {
  %6 = getelementptr inbounds %struct.RigidBodyWorld, ptr %1, i64 0, i32 2
  %7 = load ptr, ptr %6, align 8, !tbaa !141
  %8 = icmp eq ptr %7, null
  br i1 %8, label %13, label %9

9:                                                ; preds = %5
  %10 = sext i32 %0 to i64
  %11 = getelementptr inbounds ptr, ptr %7, i64 %10
  %12 = load ptr, ptr %11, align 8, !tbaa !34
  br label %13

13:                                               ; preds = %9, %5
  %14 = phi ptr [ %12, %9 ], [ null, %5 ]
  %15 = icmp eq ptr %14, null
  br i1 %15, label %42, label %16

16:                                               ; preds = %13
  %17 = getelementptr inbounds %struct.Object, ptr %14, i64 0, i32 128
  %18 = load ptr, ptr %17, align 8, !tbaa !142
  %19 = icmp eq ptr %18, null
  br i1 %19, label %42, label %20

20:                                               ; preds = %16
  %21 = getelementptr inbounds %struct.RigidBodyOb, ptr %18, i64 0, i32 2
  %22 = load i16, ptr %21, align 8, !tbaa !146
  %23 = icmp eq i16 %22, 0
  br i1 %23, label %24, label %42

24:                                               ; preds = %20
  %25 = icmp eq ptr %4, null
  br i1 %25, label %30, label %26

26:                                               ; preds = %24
  %27 = getelementptr inbounds %struct.RigidBodyOb, ptr %18, i64 0, i32 17
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(12) %27, ptr noundef nonnull align 8 dereferenceable(12) %2, i64 12, i1 false)
  %28 = getelementptr inbounds %struct.RigidBodyOb, ptr %18, i64 0, i32 16
  %29 = getelementptr inbounds ptr, ptr %2, i64 3
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %28, ptr noundef nonnull align 8 dereferenceable(16) %29, i64 16, i1 false)
  br label %42

30:                                               ; preds = %24
  %31 = getelementptr inbounds ptr, ptr %2, i64 1
  %32 = load ptr, ptr %31, align 8, !tbaa !34
  %33 = icmp eq ptr %32, null
  br i1 %33, label %36, label %34

34:                                               ; preds = %30
  %35 = getelementptr inbounds %struct.RigidBodyOb, ptr %18, i64 0, i32 17
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(12) %35, ptr noundef nonnull align 1 dereferenceable(12) %32, i64 12, i1 false)
  br label %36

36:                                               ; preds = %34, %30
  %37 = getelementptr inbounds ptr, ptr %2, i64 3
  %38 = load ptr, ptr %37, align 8, !tbaa !34
  %39 = icmp eq ptr %38, null
  br i1 %39, label %42, label %40

40:                                               ; preds = %36
  %41 = getelementptr inbounds %struct.RigidBodyOb, ptr %18, i64 0, i32 16
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %41, ptr noundef nonnull align 1 dereferenceable(16) %38, i64 16, i1 false)
  br label %42

42:                                               ; preds = %20, %36, %40, %26, %16, %13
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @ptcache_rigidbody_interpolate(i32 noundef %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2, float noundef %3, float noundef %4, float noundef %5, ptr noundef readnone %6) #0 {
  %8 = alloca [4 x %struct.ParticleKey], align 16
  call void @llvm.lifetime.start.p0(i64 224, ptr nonnull %8) #22
  %9 = getelementptr inbounds %struct.RigidBodyWorld, ptr %1, i64 0, i32 2
  %10 = load ptr, ptr %9, align 8, !tbaa !141
  %11 = icmp eq ptr %10, null
  br i1 %11, label %16, label %12

12:                                               ; preds = %7
  %13 = sext i32 %0 to i64
  %14 = getelementptr inbounds ptr, ptr %10, i64 %13
  %15 = load ptr, ptr %14, align 8, !tbaa !34
  br label %16

16:                                               ; preds = %12, %7
  %17 = phi ptr [ %15, %12 ], [ null, %7 ]
  %18 = icmp eq ptr %17, null
  br i1 %18, label %83, label %19

19:                                               ; preds = %16
  %20 = getelementptr inbounds %struct.Object, ptr %17, i64 0, i32 128
  %21 = load ptr, ptr %20, align 8, !tbaa !142
  %22 = icmp eq ptr %21, null
  br i1 %22, label %83, label %23

23:                                               ; preds = %19
  %24 = getelementptr inbounds %struct.RigidBodyOb, ptr %21, i64 0, i32 2
  %25 = load i16, ptr %24, align 8, !tbaa !146
  %26 = icmp eq i16 %25, 0
  br i1 %26, label %27, label %83

27:                                               ; preds = %23
  %28 = getelementptr inbounds [4 x %struct.ParticleKey], ptr %8, i64 0, i64 1
  %29 = getelementptr inbounds %struct.RigidBodyOb, ptr %21, i64 0, i32 17
  %30 = load float, ptr %29, align 4, !tbaa !70
  store float %30, ptr %28, align 8, !tbaa !70
  %31 = getelementptr inbounds %struct.RigidBodyOb, ptr %21, i64 0, i32 17, i64 1
  %32 = load float, ptr %31, align 4, !tbaa !70
  %33 = getelementptr inbounds [4 x %struct.ParticleKey], ptr %8, i64 0, i64 1, i32 0, i64 1
  store float %32, ptr %33, align 4, !tbaa !70
  %34 = getelementptr inbounds %struct.RigidBodyOb, ptr %21, i64 0, i32 17, i64 2
  %35 = load float, ptr %34, align 4, !tbaa !70
  %36 = getelementptr inbounds [4 x %struct.ParticleKey], ptr %8, i64 0, i64 1, i32 0, i64 2
  store float %35, ptr %36, align 16, !tbaa !70
  %37 = getelementptr inbounds [4 x %struct.ParticleKey], ptr %8, i64 0, i64 1, i32 2
  %38 = getelementptr inbounds %struct.RigidBodyOb, ptr %21, i64 0, i32 16
  call void @copy_qt_qt(ptr noundef nonnull %37, ptr noundef nonnull %38) #22
  %39 = icmp eq ptr %6, null
  br i1 %39, label %44, label %40

40:                                               ; preds = %27
  %41 = getelementptr inbounds [4 x %struct.ParticleKey], ptr %8, i64 0, i64 2
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(12) %41, ptr noundef nonnull align 8 dereferenceable(12) %2, i64 12, i1 false)
  %42 = getelementptr inbounds [4 x %struct.ParticleKey], ptr %8, i64 0, i64 2, i32 2
  %43 = getelementptr inbounds ptr, ptr %2, i64 3
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %42, ptr noundef nonnull align 8 dereferenceable(16) %43, i64 16, i1 false)
  br label %72

44:                                               ; preds = %27
  %45 = getelementptr inbounds ptr, ptr %2, i64 1
  %46 = load ptr, ptr %45, align 8, !tbaa !34
  %47 = icmp eq ptr %46, null
  br i1 %47, label %50, label %48

48:                                               ; preds = %44
  %49 = getelementptr inbounds %struct.ParticleKey, ptr %8, i64 2
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(12) %49, ptr noundef nonnull align 1 dereferenceable(12) %46, i64 12, i1 false)
  br label %50

50:                                               ; preds = %48, %44
  %51 = getelementptr inbounds ptr, ptr %2, i64 2
  %52 = load ptr, ptr %51, align 8, !tbaa !34
  %53 = icmp eq ptr %52, null
  br i1 %53, label %56, label %54

54:                                               ; preds = %50
  %55 = getelementptr inbounds %struct.ParticleKey, ptr %8, i64 2, i32 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %55, ptr noundef nonnull align 1 dereferenceable(12) %52, i64 12, i1 false)
  br label %56

56:                                               ; preds = %54, %50
  %57 = getelementptr inbounds ptr, ptr %2, i64 3
  %58 = load ptr, ptr %57, align 8, !tbaa !34
  %59 = icmp eq ptr %58, null
  %60 = getelementptr inbounds %struct.ParticleKey, ptr %8, i64 2, i32 2
  br i1 %59, label %61, label %63

61:                                               ; preds = %56
  %62 = getelementptr inbounds %struct.ParticleKey, ptr %8, i64 2, i32 1
  call void @vec_to_quat(ptr noundef nonnull %60, ptr noundef nonnull %62, i16 noundef signext 3, i16 noundef signext 2) #22
  br label %64

63:                                               ; preds = %56
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %60, ptr noundef nonnull align 1 dereferenceable(16) %58, i64 16, i1 false)
  br label %64

64:                                               ; preds = %63, %61
  %65 = getelementptr inbounds ptr, ptr %2, i64 4
  %66 = load ptr, ptr %65, align 8, !tbaa !34
  %67 = icmp eq ptr %66, null
  br i1 %67, label %70, label %68

68:                                               ; preds = %64
  %69 = getelementptr inbounds %struct.ParticleKey, ptr %8, i64 2, i32 3
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(12) %69, ptr noundef nonnull align 1 dereferenceable(12) %66, i64 12, i1 false)
  br label %70

70:                                               ; preds = %64, %68
  %71 = getelementptr inbounds %struct.ParticleKey, ptr %8, i64 2, i32 4
  store float %5, ptr %71, align 4, !tbaa !38
  br label %72

72:                                               ; preds = %70, %40
  %73 = fsub float %5, %4
  %74 = fsub float %3, %4
  %75 = fdiv float %74, %73
  call void @psys_interpolate_particle(i16 noundef signext -1, ptr noundef nonnull %8, float noundef %75, ptr noundef nonnull %8, i32 noundef 1) #22
  %76 = getelementptr inbounds %struct.ParticleKey, ptr %8, i64 0, i32 2
  %77 = getelementptr inbounds [4 x %struct.ParticleKey], ptr %8, i64 0, i64 2, i32 2
  call void @interp_qt_qtqt(ptr noundef nonnull %76, ptr noundef nonnull %37, ptr noundef nonnull %77, float noundef %75) #22
  %78 = load float, ptr %8, align 16, !tbaa !70
  store float %78, ptr %29, align 4, !tbaa !70
  %79 = getelementptr inbounds float, ptr %8, i64 1
  %80 = load float, ptr %79, align 4, !tbaa !70
  store float %80, ptr %31, align 4, !tbaa !70
  %81 = getelementptr inbounds float, ptr %8, i64 2
  %82 = load float, ptr %81, align 8, !tbaa !70
  store float %82, ptr %34, align 4, !tbaa !70
  call void @copy_qt_qt(ptr noundef nonnull %38, ptr noundef nonnull %76) #22
  br label %83

83:                                               ; preds = %23, %72, %19, %16
  call void @llvm.lifetime.end.p0(i64 224, ptr nonnull %8) #22
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @BKE_ptcache_ids_from_object(ptr noundef %0, ptr noundef %1, ptr noundef %2, i32 noundef %3) local_unnamed_addr #0 {
  %5 = alloca %struct.ListBase, align 8
  %6 = getelementptr inbounds %struct.Object, ptr %1, i64 0, i32 111
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, i8 0, i64 16, i1 false)
  %7 = load ptr, ptr %6, align 8, !tbaa !148
  %8 = icmp eq ptr %7, null
  br i1 %8, label %38, label %9

9:                                                ; preds = %4
  %10 = load ptr, ptr @MEM_callocN, align 8, !tbaa !34
  %11 = tail call ptr %10(i64 noundef 200, ptr noundef nonnull @.str) #22
  %12 = load ptr, ptr %6, align 8, !tbaa !148
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(200) %11, i8 0, i64 200, i1 false)
  %13 = getelementptr inbounds %struct.PTCacheID, ptr %11, i64 0, i32 3
  store ptr %1, ptr %13, align 8, !tbaa !41
  %14 = getelementptr inbounds %struct.PTCacheID, ptr %11, i64 0, i32 4
  store ptr %12, ptr %14, align 8, !tbaa !44
  %15 = getelementptr inbounds %struct.PTCacheID, ptr %11, i64 0, i32 5
  store i32 0, ptr %15, align 8, !tbaa !45
  %16 = getelementptr inbounds %struct.SoftBody, ptr %12, i64 0, i32 47
  %17 = load ptr, ptr %16, align 8, !tbaa !46
  %18 = getelementptr inbounds %struct.PTCacheID, ptr %11, i64 0, i32 25
  store ptr %17, ptr %18, align 8, !tbaa !50
  %19 = getelementptr inbounds %struct.PTCacheID, ptr %11, i64 0, i32 26
  store ptr %16, ptr %19, align 8, !tbaa !51
  %20 = getelementptr inbounds %struct.SoftBody, ptr %12, i64 0, i32 48
  %21 = getelementptr inbounds %struct.PTCacheID, ptr %11, i64 0, i32 27
  store ptr %20, ptr %21, align 8, !tbaa !52
  %22 = getelementptr inbounds %struct.PTCacheID, ptr %11, i64 0, i32 22
  store ptr @ptcache_softbody_totpoint, ptr %22, align 8, !tbaa !53
  %23 = getelementptr inbounds %struct.PTCacheID, ptr %11, i64 0, i32 20
  store ptr @ptcache_softbody_totpoint, ptr %23, align 8, !tbaa !54
  %24 = getelementptr inbounds %struct.PTCacheID, ptr %11, i64 0, i32 21
  store ptr @ptcache_softbody_error, ptr %24, align 8, !tbaa !55
  %25 = getelementptr inbounds %struct.PTCacheID, ptr %11, i64 0, i32 12
  store ptr @ptcache_softbody_write, ptr %25, align 8, !tbaa !56
  %26 = getelementptr inbounds %struct.PTCacheID, ptr %11, i64 0, i32 13
  store ptr @ptcache_softbody_read, ptr %26, align 8, !tbaa !57
  %27 = getelementptr inbounds %struct.PTCacheID, ptr %11, i64 0, i32 14
  store ptr @ptcache_softbody_interpolate, ptr %27, align 8, !tbaa !58
  %28 = getelementptr inbounds %struct.PTCacheID, ptr %11, i64 0, i32 15
  %29 = getelementptr inbounds %struct.PTCacheID, ptr %11, i64 0, i32 23
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %28, i8 0, i64 40, i1 false)
  store ptr @ptcache_basic_header_write, ptr %29, align 8, !tbaa !59
  %30 = getelementptr inbounds %struct.PTCacheID, ptr %11, i64 0, i32 24
  store ptr @ptcache_basic_header_read, ptr %30, align 8, !tbaa !60
  %31 = getelementptr inbounds %struct.PTCacheID, ptr %11, i64 0, i32 10
  store i32 6, ptr %31, align 4, !tbaa !61
  %32 = getelementptr inbounds %struct.PTCacheID, ptr %11, i64 0, i32 11
  store i32 0, ptr %32, align 8, !tbaa !62
  %33 = getelementptr inbounds %struct.PointCache, ptr %17, i64 0, i32 12
  %34 = load i32, ptr %33, align 8, !tbaa !63
  %35 = getelementptr inbounds %struct.PTCacheID, ptr %11, i64 0, i32 6
  store i32 %34, ptr %35, align 4, !tbaa !65
  %36 = getelementptr inbounds %struct.PTCacheID, ptr %11, i64 0, i32 8
  store i32 10, ptr %36, align 4, !tbaa !66
  %37 = getelementptr inbounds %struct.PTCacheID, ptr %11, i64 0, i32 9
  store i32 20, ptr %37, align 8, !tbaa !67
  tail call void @BLI_addtail(ptr noundef nonnull %0, ptr noundef %11) #22
  br label %38

38:                                               ; preds = %9, %4
  %39 = getelementptr inbounds %struct.Object, ptr %1, i64 0, i32 109
  %40 = load ptr, ptr %39, align 8, !tbaa !34
  %41 = icmp eq ptr %40, null
  br i1 %41, label %60, label %42

42:                                               ; preds = %38, %57
  %43 = phi ptr [ %58, %57 ], [ %40, %38 ]
  %44 = getelementptr inbounds %struct.ParticleSystem, ptr %43, i64 0, i32 2
  %45 = load ptr, ptr %44, align 8, !tbaa !77
  %46 = icmp eq ptr %45, null
  br i1 %46, label %57, label %47

47:                                               ; preds = %42
  %48 = getelementptr inbounds %struct.ParticleSettings, ptr %45, i64 0, i32 11
  %49 = load i16, ptr %48, align 8, !tbaa !82
  switch i16 %49, label %50 [
    i16 0, label %57
    i16 2, label %57
  ]

50:                                               ; preds = %47
  %51 = getelementptr inbounds %struct.ParticleSettings, ptr %45, i64 0, i32 7
  %52 = load i16, ptr %51, align 8, !tbaa !78
  %53 = icmp eq i16 %52, 3
  br i1 %53, label %57, label %54

54:                                               ; preds = %50
  %55 = load ptr, ptr @MEM_callocN, align 8, !tbaa !34
  %56 = tail call ptr %55(i64 noundef 200, ptr noundef nonnull @.str) #22
  tail call void @BKE_ptcache_id_from_particles(ptr noundef %56, ptr noundef %1, ptr noundef nonnull %43)
  tail call void @BLI_addtail(ptr noundef nonnull %0, ptr noundef %56) #22
  br label %57

57:                                               ; preds = %47, %47, %50, %42, %54
  %58 = load ptr, ptr %43, align 8, !tbaa !34
  %59 = icmp eq ptr %58, null
  br i1 %59, label %60, label %42, !llvm.loop !149

60:                                               ; preds = %57, %38
  %61 = getelementptr inbounds %struct.Object, ptr %1, i64 0, i32 26
  %62 = load ptr, ptr %61, align 8, !tbaa !34
  %63 = icmp eq ptr %62, null
  br i1 %63, label %184, label %64

64:                                               ; preds = %60, %181
  %65 = phi ptr [ %182, %181 ], [ %62, %60 ]
  %66 = getelementptr inbounds %struct.ModifierData, ptr %65, i64 0, i32 2
  %67 = load i32, ptr %66, align 8, !tbaa !150
  switch i32 %67, label %181 [
    i32 22, label %68
    i32 31, label %94
    i32 40, label %138
  ]

68:                                               ; preds = %64
  %69 = load ptr, ptr @MEM_callocN, align 8, !tbaa !34
  %70 = tail call ptr %69(i64 noundef 200, ptr noundef nonnull @.str) #22
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(200) %70, i8 0, i64 200, i1 false)
  %71 = getelementptr inbounds %struct.PTCacheID, ptr %70, i64 0, i32 3
  store ptr %1, ptr %71, align 8, !tbaa !41
  %72 = getelementptr inbounds %struct.PTCacheID, ptr %70, i64 0, i32 4
  store ptr %65, ptr %72, align 8, !tbaa !44
  %73 = getelementptr inbounds %struct.PTCacheID, ptr %70, i64 0, i32 5
  store i32 2, ptr %73, align 8, !tbaa !45
  %74 = getelementptr inbounds %struct.ClothModifierData, ptr %65, i64 0, i32 5
  %75 = load ptr, ptr %74, align 8, !tbaa !115
  %76 = getelementptr inbounds %struct.PointCache, ptr %75, i64 0, i32 12
  %77 = load i32, ptr %76, align 8, !tbaa !63
  %78 = getelementptr inbounds %struct.PTCacheID, ptr %70, i64 0, i32 6
  store i32 %77, ptr %78, align 4, !tbaa !65
  %79 = getelementptr inbounds %struct.PTCacheID, ptr %70, i64 0, i32 25
  store ptr %75, ptr %79, align 8, !tbaa !50
  %80 = getelementptr inbounds %struct.PTCacheID, ptr %70, i64 0, i32 26
  store ptr %74, ptr %80, align 8, !tbaa !51
  %81 = getelementptr inbounds %struct.ClothModifierData, ptr %65, i64 0, i32 6
  %82 = getelementptr inbounds %struct.PTCacheID, ptr %70, i64 0, i32 27
  store ptr %81, ptr %82, align 8, !tbaa !52
  %83 = getelementptr inbounds %struct.PTCacheID, ptr %70, i64 0, i32 22
  store ptr @ptcache_cloth_totpoint, ptr %83, align 8, !tbaa !53
  %84 = getelementptr inbounds %struct.PTCacheID, ptr %70, i64 0, i32 20
  store ptr @ptcache_cloth_totpoint, ptr %84, align 8, !tbaa !54
  %85 = getelementptr inbounds %struct.PTCacheID, ptr %70, i64 0, i32 21
  store ptr @ptcache_cloth_error, ptr %85, align 8, !tbaa !55
  %86 = getelementptr inbounds %struct.PTCacheID, ptr %70, i64 0, i32 12
  store ptr @ptcache_cloth_write, ptr %86, align 8, !tbaa !56
  %87 = getelementptr inbounds %struct.PTCacheID, ptr %70, i64 0, i32 13
  store ptr @ptcache_cloth_read, ptr %87, align 8, !tbaa !57
  %88 = getelementptr inbounds %struct.PTCacheID, ptr %70, i64 0, i32 14
  store ptr @ptcache_cloth_interpolate, ptr %88, align 8, !tbaa !58
  %89 = getelementptr inbounds %struct.PTCacheID, ptr %70, i64 0, i32 15
  %90 = getelementptr inbounds %struct.PTCacheID, ptr %70, i64 0, i32 23
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %89, i8 0, i64 40, i1 false)
  store ptr @ptcache_basic_header_write, ptr %90, align 8, !tbaa !59
  %91 = getelementptr inbounds %struct.PTCacheID, ptr %70, i64 0, i32 24
  store ptr @ptcache_basic_header_read, ptr %91, align 8, !tbaa !60
  %92 = getelementptr inbounds %struct.PTCacheID, ptr %70, i64 0, i32 10
  store i32 22, ptr %92, align 4, !tbaa !61
  %93 = getelementptr inbounds %struct.PTCacheID, ptr %70, i64 0, i32 11
  store i32 0, ptr %93, align 8, !tbaa !62
  br label %177

94:                                               ; preds = %64
  %95 = getelementptr inbounds %struct.SmokeModifierData, ptr %65, i64 0, i32 5
  %96 = load i32, ptr %95, align 4, !tbaa !151
  %97 = and i32 %96, 1
  %98 = icmp eq i32 %97, 0
  br i1 %98, label %181, label %99

99:                                               ; preds = %94
  %100 = load ptr, ptr @MEM_callocN, align 8, !tbaa !34
  %101 = tail call ptr %100(i64 noundef 200, ptr noundef nonnull @.str) #22
  %102 = getelementptr inbounds %struct.SmokeModifierData, ptr %65, i64 0, i32 1
  %103 = load ptr, ptr %102, align 8, !tbaa !122
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(200) %101, i8 0, i64 200, i1 false)
  %104 = getelementptr inbounds %struct.PTCacheID, ptr %101, i64 0, i32 3
  store ptr %1, ptr %104, align 8, !tbaa !41
  %105 = getelementptr inbounds %struct.PTCacheID, ptr %101, i64 0, i32 4
  store ptr %65, ptr %105, align 8, !tbaa !44
  %106 = getelementptr inbounds %struct.PTCacheID, ptr %101, i64 0, i32 5
  store i32 3, ptr %106, align 8, !tbaa !45
  %107 = getelementptr inbounds %struct.SmokeDomainSettings, ptr %103, i64 0, i32 47
  %108 = load ptr, ptr %107, align 8, !tbaa !34
  %109 = getelementptr inbounds %struct.PointCache, ptr %108, i64 0, i32 12
  %110 = load i32, ptr %109, align 8, !tbaa !63
  %111 = getelementptr inbounds %struct.PTCacheID, ptr %101, i64 0, i32 6
  store i32 %110, ptr %111, align 4, !tbaa !65
  %112 = getelementptr inbounds %struct.PTCacheID, ptr %101, i64 0, i32 25
  store ptr %108, ptr %112, align 8, !tbaa !50
  %113 = getelementptr inbounds %struct.PTCacheID, ptr %101, i64 0, i32 26
  store ptr %107, ptr %113, align 8, !tbaa !51
  %114 = getelementptr inbounds %struct.SmokeDomainSettings, ptr %103, i64 0, i32 48
  %115 = getelementptr inbounds %struct.PTCacheID, ptr %101, i64 0, i32 27
  store ptr %114, ptr %115, align 8, !tbaa !52
  %116 = getelementptr inbounds %struct.PTCacheID, ptr %101, i64 0, i32 22
  store ptr @ptcache_smoke_totpoint, ptr %116, align 8, !tbaa !53
  %117 = getelementptr inbounds %struct.PTCacheID, ptr %101, i64 0, i32 20
  store ptr @ptcache_smoke_totpoint, ptr %117, align 8, !tbaa !54
  %118 = getelementptr inbounds %struct.PTCacheID, ptr %101, i64 0, i32 21
  store ptr @ptcache_smoke_error, ptr %118, align 8, !tbaa !55
  %119 = getelementptr inbounds %struct.PTCacheID, ptr %101, i64 0, i32 12
  %120 = getelementptr inbounds %struct.PTCacheID, ptr %101, i64 0, i32 16
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %119, i8 0, i64 24, i1 false)
  store ptr @ptcache_smoke_read, ptr %120, align 8, !tbaa !124
  %121 = getelementptr inbounds %struct.PTCacheID, ptr %101, i64 0, i32 15
  store ptr @ptcache_smoke_write, ptr %121, align 8, !tbaa !125
  %122 = getelementptr inbounds %struct.PTCacheID, ptr %101, i64 0, i32 17
  %123 = getelementptr inbounds %struct.PTCacheID, ptr %101, i64 0, i32 23
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %122, i8 0, i64 24, i1 false)
  store ptr @ptcache_basic_header_write, ptr %123, align 8, !tbaa !59
  %124 = getelementptr inbounds %struct.PTCacheID, ptr %101, i64 0, i32 24
  store ptr @ptcache_basic_header_read, ptr %124, align 8, !tbaa !60
  %125 = getelementptr inbounds %struct.PTCacheID, ptr %101, i64 0, i32 10
  store i32 0, ptr %125, align 4, !tbaa !61
  %126 = getelementptr inbounds %struct.PTCacheID, ptr %101, i64 0, i32 11
  store i32 0, ptr %126, align 8, !tbaa !62
  %127 = getelementptr inbounds %struct.SmokeDomainSettings, ptr %103, i64 0, i32 1
  %128 = load ptr, ptr %127, align 8, !tbaa !126
  %129 = icmp eq ptr %128, null
  br i1 %129, label %131, label %130

130:                                              ; preds = %99
  store i32 2, ptr %125, align 4, !tbaa !61
  br label %131

131:                                              ; preds = %130, %99
  %132 = getelementptr inbounds %struct.SmokeDomainSettings, ptr %103, i64 0, i32 6
  %133 = load ptr, ptr %132, align 8, !tbaa !128
  %134 = icmp eq ptr %133, null
  br i1 %134, label %177, label %135

135:                                              ; preds = %131
  %136 = load i32, ptr %125, align 4, !tbaa !61
  %137 = or i32 %136, 4
  store i32 %137, ptr %125, align 4, !tbaa !61
  br label %177

138:                                              ; preds = %64
  %139 = getelementptr inbounds %struct.DynamicPaintModifierData, ptr %65, i64 0, i32 1
  %140 = load ptr, ptr %139, align 8, !tbaa !152
  %141 = icmp eq ptr %140, null
  br i1 %141, label %181, label %142

142:                                              ; preds = %138
  %143 = getelementptr inbounds %struct.DynamicPaintCanvasSettings, ptr %140, i64 0, i32 2
  %144 = load ptr, ptr %143, align 8, !tbaa !34
  %145 = icmp eq ptr %144, null
  br i1 %145, label %181, label %146

146:                                              ; preds = %142, %146
  %147 = phi ptr [ %175, %146 ], [ %144, %142 ]
  %148 = load ptr, ptr @MEM_callocN, align 8, !tbaa !34
  %149 = tail call ptr %148(i64 noundef 200, ptr noundef nonnull @.str) #22
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(200) %149, i8 0, i64 200, i1 false)
  %150 = getelementptr inbounds %struct.PTCacheID, ptr %149, i64 0, i32 3
  store ptr %1, ptr %150, align 8, !tbaa !41
  %151 = getelementptr inbounds %struct.PTCacheID, ptr %149, i64 0, i32 4
  store ptr %147, ptr %151, align 8, !tbaa !44
  %152 = getelementptr inbounds %struct.PTCacheID, ptr %149, i64 0, i32 5
  store i32 5, ptr %152, align 8, !tbaa !45
  %153 = getelementptr inbounds %struct.DynamicPaintSurface, ptr %147, i64 0, i32 6
  %154 = load ptr, ptr %153, align 8, !tbaa !129
  %155 = getelementptr inbounds %struct.PTCacheID, ptr %149, i64 0, i32 25
  store ptr %154, ptr %155, align 8, !tbaa !50
  %156 = getelementptr inbounds %struct.PTCacheID, ptr %149, i64 0, i32 26
  store ptr %153, ptr %156, align 8, !tbaa !51
  %157 = getelementptr inbounds %struct.DynamicPaintSurface, ptr %147, i64 0, i32 7
  %158 = getelementptr inbounds %struct.PTCacheID, ptr %149, i64 0, i32 27
  store ptr %157, ptr %158, align 8, !tbaa !52
  %159 = getelementptr inbounds %struct.PTCacheID, ptr %149, i64 0, i32 22
  store ptr @ptcache_dynamicpaint_totpoint, ptr %159, align 8, !tbaa !53
  %160 = getelementptr inbounds %struct.PTCacheID, ptr %149, i64 0, i32 20
  store ptr @ptcache_dynamicpaint_totpoint, ptr %160, align 8, !tbaa !54
  %161 = getelementptr inbounds %struct.PTCacheID, ptr %149, i64 0, i32 21
  store ptr @ptcache_dynamicpaint_error, ptr %161, align 8, !tbaa !55
  %162 = getelementptr inbounds %struct.PTCacheID, ptr %149, i64 0, i32 12
  %163 = getelementptr inbounds %struct.PTCacheID, ptr %149, i64 0, i32 15
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %162, i8 0, i64 24, i1 false)
  store ptr @ptcache_dynamicpaint_write, ptr %163, align 8, !tbaa !125
  %164 = getelementptr inbounds %struct.PTCacheID, ptr %149, i64 0, i32 16
  store ptr @ptcache_dynamicpaint_read, ptr %164, align 8, !tbaa !124
  %165 = getelementptr inbounds %struct.PTCacheID, ptr %149, i64 0, i32 17
  %166 = getelementptr inbounds %struct.PTCacheID, ptr %149, i64 0, i32 23
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %165, i8 0, i64 24, i1 false)
  store ptr @ptcache_basic_header_write, ptr %166, align 8, !tbaa !59
  %167 = getelementptr inbounds %struct.PTCacheID, ptr %149, i64 0, i32 24
  store ptr @ptcache_basic_header_read, ptr %167, align 8, !tbaa !60
  %168 = getelementptr inbounds %struct.PTCacheID, ptr %149, i64 0, i32 10
  store i32 3, ptr %168, align 4, !tbaa !61
  %169 = getelementptr inbounds %struct.PTCacheID, ptr %149, i64 0, i32 11
  store i32 0, ptr %169, align 8, !tbaa !62
  %170 = getelementptr inbounds %struct.PointCache, ptr %154, i64 0, i32 12
  %171 = load i32, ptr %170, align 8, !tbaa !63
  %172 = getelementptr inbounds %struct.PTCacheID, ptr %149, i64 0, i32 6
  store i32 %171, ptr %172, align 4, !tbaa !65
  %173 = getelementptr inbounds %struct.PTCacheID, ptr %149, i64 0, i32 8
  store i32 1, ptr %173, align 4, !tbaa !66
  %174 = getelementptr inbounds %struct.PTCacheID, ptr %149, i64 0, i32 9
  store i32 1, ptr %174, align 8, !tbaa !67
  tail call void @BLI_addtail(ptr noundef nonnull %0, ptr noundef %149) #22
  %175 = load ptr, ptr %147, align 8, !tbaa !34
  %176 = icmp eq ptr %175, null
  br i1 %176, label %181, label %146, !llvm.loop !154

177:                                              ; preds = %135, %131, %68
  %178 = phi ptr [ %70, %68 ], [ %101, %131 ], [ %101, %135 ]
  %179 = getelementptr inbounds %struct.PTCacheID, ptr %178, i64 0, i32 8
  store i32 1, ptr %179, align 4, !tbaa !66
  %180 = getelementptr inbounds %struct.PTCacheID, ptr %178, i64 0, i32 9
  store i32 1, ptr %180, align 8, !tbaa !67
  tail call void @BLI_addtail(ptr noundef nonnull %0, ptr noundef %178) #22
  br label %181

181:                                              ; preds = %146, %177, %142, %138, %64, %94
  %182 = load ptr, ptr %65, align 8, !tbaa !34
  %183 = icmp eq ptr %182, null
  br i1 %183, label %184, label %64, !llvm.loop !155

184:                                              ; preds = %181, %60
  %185 = icmp eq ptr %2, null
  br i1 %185, label %255, label %186

186:                                              ; preds = %184
  %187 = getelementptr inbounds %struct.Object, ptr %1, i64 0, i32 128
  %188 = load ptr, ptr %187, align 8, !tbaa !142
  %189 = icmp eq ptr %188, null
  br i1 %189, label %223, label %190

190:                                              ; preds = %186
  %191 = getelementptr inbounds %struct.Scene, ptr %2, i64 0, i32 47
  %192 = load ptr, ptr %191, align 8, !tbaa !156
  %193 = icmp eq ptr %192, null
  br i1 %193, label %223, label %194

194:                                              ; preds = %190
  %195 = load ptr, ptr @MEM_callocN, align 8, !tbaa !34
  %196 = tail call ptr %195(i64 noundef 200, ptr noundef nonnull @.str) #22
  %197 = load ptr, ptr %191, align 8, !tbaa !156
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(200) %196, i8 0, i64 200, i1 false)
  %198 = getelementptr inbounds %struct.PTCacheID, ptr %196, i64 0, i32 3
  store ptr %1, ptr %198, align 8, !tbaa !41
  %199 = getelementptr inbounds %struct.PTCacheID, ptr %196, i64 0, i32 4
  store ptr %197, ptr %199, align 8, !tbaa !44
  %200 = getelementptr inbounds %struct.PTCacheID, ptr %196, i64 0, i32 5
  store i32 6, ptr %200, align 8, !tbaa !45
  %201 = getelementptr inbounds %struct.RigidBodyWorld, ptr %197, i64 0, i32 6
  %202 = load ptr, ptr %201, align 8, !tbaa !138
  %203 = getelementptr inbounds %struct.PTCacheID, ptr %196, i64 0, i32 25
  store ptr %202, ptr %203, align 8, !tbaa !50
  %204 = getelementptr inbounds %struct.PTCacheID, ptr %196, i64 0, i32 26
  store ptr %201, ptr %204, align 8, !tbaa !51
  %205 = getelementptr inbounds %struct.RigidBodyWorld, ptr %197, i64 0, i32 7
  %206 = getelementptr inbounds %struct.PTCacheID, ptr %196, i64 0, i32 27
  store ptr %205, ptr %206, align 8, !tbaa !52
  %207 = getelementptr inbounds %struct.PTCacheID, ptr %196, i64 0, i32 22
  store ptr @ptcache_rigidbody_totpoint, ptr %207, align 8, !tbaa !53
  %208 = getelementptr inbounds %struct.PTCacheID, ptr %196, i64 0, i32 20
  store ptr @ptcache_rigidbody_totpoint, ptr %208, align 8, !tbaa !54
  %209 = getelementptr inbounds %struct.PTCacheID, ptr %196, i64 0, i32 21
  store ptr @ptcache_rigidbody_error, ptr %209, align 8, !tbaa !55
  %210 = getelementptr inbounds %struct.PTCacheID, ptr %196, i64 0, i32 12
  store ptr @ptcache_rigidbody_write, ptr %210, align 8, !tbaa !56
  %211 = getelementptr inbounds %struct.PTCacheID, ptr %196, i64 0, i32 13
  store ptr @ptcache_rigidbody_read, ptr %211, align 8, !tbaa !57
  %212 = getelementptr inbounds %struct.PTCacheID, ptr %196, i64 0, i32 14
  store ptr @ptcache_rigidbody_interpolate, ptr %212, align 8, !tbaa !58
  %213 = getelementptr inbounds %struct.PTCacheID, ptr %196, i64 0, i32 15
  %214 = getelementptr inbounds %struct.PTCacheID, ptr %196, i64 0, i32 23
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %213, i8 0, i64 40, i1 false)
  store ptr @ptcache_basic_header_write, ptr %214, align 8, !tbaa !59
  %215 = getelementptr inbounds %struct.PTCacheID, ptr %196, i64 0, i32 24
  store ptr @ptcache_basic_header_read, ptr %215, align 8, !tbaa !60
  %216 = getelementptr inbounds %struct.PTCacheID, ptr %196, i64 0, i32 10
  store i32 10, ptr %216, align 4, !tbaa !61
  %217 = getelementptr inbounds %struct.PTCacheID, ptr %196, i64 0, i32 11
  store i32 0, ptr %217, align 8, !tbaa !62
  %218 = getelementptr inbounds %struct.PointCache, ptr %202, i64 0, i32 12
  %219 = load i32, ptr %218, align 8, !tbaa !63
  %220 = getelementptr inbounds %struct.PTCacheID, ptr %196, i64 0, i32 6
  store i32 %219, ptr %220, align 4, !tbaa !65
  %221 = getelementptr inbounds %struct.PTCacheID, ptr %196, i64 0, i32 8
  store i32 1, ptr %221, align 4, !tbaa !66
  %222 = getelementptr inbounds %struct.PTCacheID, ptr %196, i64 0, i32 9
  store i32 1, ptr %222, align 8, !tbaa !67
  tail call void @BLI_addtail(ptr noundef nonnull %0, ptr noundef %196) #22
  br label %223

223:                                              ; preds = %186, %190, %194
  %224 = add nsw i32 %3, -1
  %225 = icmp sgt i32 %3, 0
  br i1 %225, label %226, label %255

226:                                              ; preds = %223
  %227 = getelementptr inbounds %struct.Object, ptr %1, i64 0, i32 55
  %228 = load i16, ptr %227, align 8, !tbaa !175
  %229 = and i16 %228, 2840
  %230 = icmp eq i16 %229, 0
  br i1 %230, label %255, label %231

231:                                              ; preds = %226
  %232 = load ptr, ptr @G, align 8, !tbaa !176
  %233 = getelementptr inbounds %struct.Main, ptr %232, i64 0, i32 46
  %234 = load ptr, ptr %233, align 8, !tbaa !178
  %235 = tail call ptr @object_duplilist_ex(ptr noundef %234, ptr noundef nonnull %2, ptr noundef %1, i8 noundef zeroext 0) #22
  %236 = icmp eq ptr %235, null
  br i1 %236, label %255, label %237

237:                                              ; preds = %231
  %238 = load ptr, ptr %235, align 8, !tbaa !34
  %239 = icmp eq ptr %238, null
  br i1 %239, label %254, label %240

240:                                              ; preds = %237, %251
  %241 = phi ptr [ %252, %251 ], [ %238, %237 ]
  %242 = getelementptr inbounds %struct.DupliObject, ptr %241, i64 0, i32 2
  %243 = load ptr, ptr %242, align 8, !tbaa !180
  %244 = icmp eq ptr %243, %1
  br i1 %244, label %251, label %245

245:                                              ; preds = %240
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %5) #22
  call void @BKE_ptcache_ids_from_object(ptr noundef nonnull %5, ptr noundef %243, ptr noundef nonnull %2, i32 noundef %224)
  call void @BLI_movelisttolist(ptr noundef nonnull %0, ptr noundef nonnull %5) #22
  %246 = load ptr, ptr %5, align 8, !tbaa !182
  %247 = icmp eq ptr %246, null
  br i1 %247, label %250, label %248

248:                                              ; preds = %245
  %249 = call i32 @puts(ptr nonnull dereferenceable(1) @str)
  br label %250

250:                                              ; preds = %248, %245
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %5) #22
  br label %251

251:                                              ; preds = %240, %250
  %252 = load ptr, ptr %241, align 8, !tbaa !34
  %253 = icmp eq ptr %252, null
  br i1 %253, label %254, label %240, !llvm.loop !183

254:                                              ; preds = %251, %237
  call void @free_object_duplilist(ptr noundef nonnull %235) #22
  br label %255

255:                                              ; preds = %184, %231, %254, %226, %223
  ret void
}

declare void @BLI_addtail(ptr noundef, ptr noundef) local_unnamed_addr #2

declare ptr @object_duplilist_ex(ptr noundef, ptr noundef, ptr noundef, i8 noundef zeroext) local_unnamed_addr #2

declare void @BLI_movelisttolist(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nofree nounwind
declare noundef i32 @printf(ptr nocapture noundef readonly, ...) local_unnamed_addr #12

declare void @free_object_duplilist(ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local i32 @BKE_ptcache_data_size(i32 noundef %0) local_unnamed_addr #6 {
  %2 = sext i32 %0 to i64
  %3 = getelementptr inbounds [8 x i32], ptr @ptcache_data_size, i64 0, i64 %2
  %4 = load i32, ptr %3, align 4, !tbaa !112
  ret i32 %4
}

; Function Attrs: nofree norecurse nosync nounwind memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @BKE_ptcache_mem_index_find(ptr nocapture noundef readonly %0, i32 noundef %1) local_unnamed_addr #9 {
  %3 = getelementptr inbounds %struct.PTCacheMem, ptr %0, i64 0, i32 3
  %4 = load i32, ptr %3, align 4, !tbaa !184
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %47, label %6

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.PTCacheMem, ptr %0, i64 0, i32 6
  %8 = load ptr, ptr %7, align 8, !tbaa !34
  %9 = icmp eq ptr %8, null
  br i1 %9, label %47, label %10

10:                                               ; preds = %6
  %11 = add i32 %4, -1
  %12 = load i32, ptr %8, align 4, !tbaa !112
  %13 = icmp ugt i32 %12, %1
  br i1 %13, label %50, label %14

14:                                               ; preds = %10
  %15 = zext i32 %11 to i64
  %16 = getelementptr inbounds i32, ptr %8, i64 %15
  %17 = load i32, ptr %16, align 4, !tbaa !112
  %18 = icmp ult i32 %17, %1
  br i1 %18, label %50, label %19

19:                                               ; preds = %14
  %20 = sub i32 %1, %12
  %21 = icmp ult i32 %20, %11
  br i1 %21, label %22, label %27

22:                                               ; preds = %19
  %23 = zext i32 %20 to i64
  %24 = getelementptr inbounds i32, ptr %8, i64 %23
  %25 = load i32, ptr %24, align 4, !tbaa !112
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
  %35 = load i32, ptr %34, align 4, !tbaa !112
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
  br i1 %46, label %50, label %28, !llvm.loop !186

47:                                               ; preds = %6, %2
  %48 = icmp ugt i32 %4, %1
  %49 = select i1 %48, i32 %1, i32 -1
  br label %50

50:                                               ; preds = %39, %43, %14, %10, %22, %47
  %51 = phi i32 [ %49, %47 ], [ -1, %14 ], [ -1, %10 ], [ %20, %22 ], [ %32, %39 ], [ -1, %43 ]
  ret i32 %51
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define dso_local void @BKE_ptcache_mem_pointers_init(ptr nocapture noundef %0) local_unnamed_addr #13 {
  %2 = getelementptr inbounds %struct.PTCacheMem, ptr %0, i64 0, i32 4
  %3 = load i32, ptr %2, align 8, !tbaa !187
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
  br i1 %17, label %18, label %4, !llvm.loop !188

18:                                               ; preds = %13
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define dso_local void @BKE_ptcache_mem_pointers_incr(ptr nocapture noundef %0) local_unnamed_addr #13 {
  br label %2

2:                                                ; preds = %1, %12
  %3 = phi i64 [ 0, %1 ], [ %13, %12 ]
  %4 = getelementptr inbounds %struct.PTCacheMem, ptr %0, i64 0, i32 7, i64 %3
  %5 = load ptr, ptr %4, align 8, !tbaa !34
  %6 = icmp eq ptr %5, null
  br i1 %6, label %12, label %7

7:                                                ; preds = %2
  %8 = getelementptr inbounds [8 x i32], ptr @ptcache_data_size, i64 0, i64 %3
  %9 = load i32, ptr %8, align 4, !tbaa !112
  %10 = sext i32 %9 to i64
  %11 = getelementptr inbounds i8, ptr %5, i64 %10
  store ptr %11, ptr %4, align 8, !tbaa !34
  br label %12

12:                                               ; preds = %2, %7
  %13 = add nuw nsw i64 %3, 1
  %14 = icmp eq i64 %13, 8
  br i1 %14, label %15, label %2, !llvm.loop !189

15:                                               ; preds = %12
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local noundef i32 @BKE_ptcache_mem_pointers_seek(i32 noundef %0, ptr nocapture noundef %1) local_unnamed_addr #14 {
  %3 = getelementptr inbounds %struct.PTCacheMem, ptr %1, i64 0, i32 4
  %4 = load i32, ptr %3, align 8, !tbaa !187
  %5 = getelementptr inbounds %struct.PTCacheMem, ptr %1, i64 0, i32 3
  %6 = load i32, ptr %5, align 4, !tbaa !184
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %49, label %8

8:                                                ; preds = %2
  %9 = getelementptr inbounds %struct.PTCacheMem, ptr %1, i64 0, i32 6
  %10 = load ptr, ptr %9, align 8, !tbaa !34
  %11 = icmp eq ptr %10, null
  br i1 %11, label %49, label %12

12:                                               ; preds = %8
  %13 = add i32 %6, -1
  %14 = load i32, ptr %10, align 4, !tbaa !112
  %15 = icmp ugt i32 %14, %0
  br i1 %15, label %52, label %16

16:                                               ; preds = %12
  %17 = zext i32 %13 to i64
  %18 = getelementptr inbounds i32, ptr %10, i64 %17
  %19 = load i32, ptr %18, align 4, !tbaa !112
  %20 = icmp ult i32 %19, %0
  br i1 %20, label %52, label %21

21:                                               ; preds = %16
  %22 = sub i32 %0, %14
  %23 = icmp ult i32 %22, %13
  br i1 %23, label %24, label %29

24:                                               ; preds = %21
  %25 = zext i32 %22 to i64
  %26 = getelementptr inbounds i32, ptr %10, i64 %25
  %27 = load i32, ptr %26, align 4, !tbaa !112
  %28 = icmp eq i32 %27, %0
  br i1 %28, label %52, label %29

29:                                               ; preds = %24, %21
  br label %30

30:                                               ; preds = %29, %45
  %31 = phi i32 [ %47, %45 ], [ %13, %29 ]
  %32 = phi i32 [ %46, %45 ], [ 0, %29 ]
  %33 = add i32 %32, %31
  %34 = lshr i32 %33, 1
  %35 = zext nneg i32 %34 to i64
  %36 = getelementptr inbounds i32, ptr %10, i64 %35
  %37 = load i32, ptr %36, align 4, !tbaa !112
  %38 = icmp ugt i32 %37, %0
  br i1 %38, label %39, label %41

39:                                               ; preds = %30
  %40 = add nsw i32 %34, -1
  br label %45

41:                                               ; preds = %30
  %42 = icmp ult i32 %37, %0
  br i1 %42, label %43, label %52

43:                                               ; preds = %41
  %44 = add nuw i32 %34, 1
  br label %45

45:                                               ; preds = %43, %39
  %46 = phi i32 [ %32, %39 ], [ %44, %43 ]
  %47 = phi i32 [ %40, %39 ], [ %31, %43 ]
  %48 = icmp ugt i32 %46, %47
  br i1 %48, label %52, label %30, !llvm.loop !186

49:                                               ; preds = %8, %2
  %50 = icmp ugt i32 %6, %0
  %51 = select i1 %50, i32 %0, i32 -1
  br label %52

52:                                               ; preds = %41, %45, %12, %16, %24, %49
  %53 = phi i32 [ %51, %49 ], [ -1, %16 ], [ -1, %12 ], [ %22, %24 ], [ %34, %41 ], [ -1, %45 ]
  %54 = icmp slt i32 %53, 0
  br i1 %54, label %74, label %55

55:                                               ; preds = %52, %69
  %56 = phi i64 [ %72, %69 ], [ 0, %52 ]
  %57 = trunc i64 %56 to i32
  %58 = shl nuw nsw i32 1, %57
  %59 = and i32 %58, %4
  %60 = icmp eq i32 %59, 0
  br i1 %60, label %69, label %61

61:                                               ; preds = %55
  %62 = getelementptr inbounds %struct.PTCacheMem, ptr %1, i64 0, i32 6, i64 %56
  %63 = load ptr, ptr %62, align 8, !tbaa !34
  %64 = getelementptr inbounds [8 x i32], ptr @ptcache_data_size, i64 0, i64 %56
  %65 = load i32, ptr %64, align 4, !tbaa !112
  %66 = mul nsw i32 %65, %53
  %67 = sext i32 %66 to i64
  %68 = getelementptr inbounds i8, ptr %63, i64 %67
  br label %69

69:                                               ; preds = %55, %61
  %70 = phi ptr [ %68, %61 ], [ null, %55 ]
  %71 = getelementptr inbounds %struct.PTCacheMem, ptr %1, i64 0, i32 7, i64 %56
  store ptr %70, ptr %71, align 8, !tbaa !34
  %72 = add nuw nsw i64 %56, 1
  %73 = icmp eq i64 %72, 8
  br i1 %73, label %74, label %55, !llvm.loop !190

74:                                               ; preds = %69, %52
  %75 = phi i32 [ 0, %52 ], [ 1, %69 ]
  ret i32 %75
}

; Function Attrs: nounwind uwtable
define dso_local i32 @BKE_ptcache_read(ptr noundef %0, float noundef %1) local_unnamed_addr #0 {
  %3 = alloca i32, align 4
  %4 = alloca [2048 x i8], align 16
  %5 = alloca [2048 x i8], align 16
  %6 = alloca [2048 x i8], align 16
  %7 = tail call float @llvm.floor.f32(float %1)
  %8 = fptosi float %7 to i32
  %9 = getelementptr inbounds %struct.PTCacheID, ptr %0, i64 0, i32 20
  %10 = load ptr, ptr %9, align 8, !tbaa !54
  %11 = getelementptr inbounds %struct.PTCacheID, ptr %0, i64 0, i32 4
  %12 = load ptr, ptr %11, align 8, !tbaa !44
  %13 = tail call i32 %10(ptr noundef %12, i32 noundef %8) #22
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %446, label %15

15:                                               ; preds = %2
  %16 = getelementptr inbounds %struct.PTCacheID, ptr %0, i64 0, i32 25
  %17 = load ptr, ptr %16, align 8, !tbaa !50
  %18 = getelementptr inbounds %struct.PointCache, ptr %17, i64 0, i32 2
  %19 = load i32, ptr %18, align 8, !tbaa !191
  %20 = and i32 %19, 1024
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %24, label %22

22:                                               ; preds = %15
  %23 = and i32 %19, -1025
  store i32 %23, ptr %18, align 8, !tbaa !191
  tail call fastcc void @ptcache_read(ptr noundef %0, i32 noundef 0)
  br label %24

24:                                               ; preds = %22, %15
  %25 = sitofp i32 %8 to float
  %26 = fcmp oeq float %25, %1
  br i1 %26, label %27, label %69

27:                                               ; preds = %24
  %28 = load ptr, ptr %16, align 8, !tbaa !50
  %29 = icmp eq ptr %28, null
  br i1 %29, label %65, label %30

30:                                               ; preds = %27
  %31 = getelementptr inbounds %struct.PointCache, ptr %28, i64 0, i32 5
  %32 = load i32, ptr %31, align 4, !tbaa !192
  %33 = icmp sgt i32 %32, %8
  br i1 %33, label %65, label %34

34:                                               ; preds = %30
  %35 = getelementptr inbounds %struct.PointCache, ptr %28, i64 0, i32 6
  %36 = load i32, ptr %35, align 8, !tbaa !193
  %37 = icmp slt i32 %36, %8
  br i1 %37, label %65, label %38

38:                                               ; preds = %34
  %39 = getelementptr inbounds %struct.PointCache, ptr %28, i64 0, i32 19
  %40 = load ptr, ptr %39, align 8, !tbaa !194
  %41 = icmp eq ptr %40, null
  br i1 %41, label %48, label %42

42:                                               ; preds = %38
  %43 = sub nsw i32 %8, %32
  %44 = sext i32 %43 to i64
  %45 = getelementptr inbounds i8, ptr %40, i64 %44
  %46 = load i8, ptr %45, align 1, !tbaa !137
  %47 = icmp eq i8 %46, 0
  br i1 %47, label %65, label %48

48:                                               ; preds = %42, %38
  %49 = getelementptr inbounds %struct.PointCache, ptr %28, i64 0, i32 2
  %50 = load i32, ptr %49, align 8, !tbaa !191
  %51 = and i32 %50, 64
  %52 = icmp eq i32 %51, 0
  br i1 %52, label %55, label %53

53:                                               ; preds = %48
  call void @llvm.lifetime.start.p0(i64 2048, ptr nonnull %6) #22
  call fastcc void @ptcache_filename(ptr noundef %0, ptr noundef nonnull %6, i32 noundef %8, i16 noundef signext 1, i16 noundef signext 1)
  %54 = call i32 @BLI_exists(ptr noundef nonnull %6) #22
  call void @llvm.lifetime.end.p0(i64 2048, ptr nonnull %6) #22
  br label %65

55:                                               ; preds = %48
  %56 = getelementptr inbounds %struct.PointCache, ptr %28, i64 0, i32 20
  br label %57

57:                                               ; preds = %61, %55
  %58 = phi ptr [ %56, %55 ], [ %59, %61 ]
  %59 = load ptr, ptr %58, align 8, !tbaa !34
  %60 = icmp eq ptr %59, null
  br i1 %60, label %65, label %61

61:                                               ; preds = %57
  %62 = getelementptr inbounds %struct.PTCacheMem, ptr %59, i64 0, i32 2
  %63 = load i32, ptr %62, align 8, !tbaa !195
  %64 = icmp eq i32 %63, %8
  br i1 %64, label %65, label %57, !llvm.loop !196

65:                                               ; preds = %57, %61, %27, %30, %34, %42, %53
  %66 = phi i32 [ %54, %53 ], [ 0, %27 ], [ 0, %34 ], [ 0, %30 ], [ 0, %42 ], [ 1, %61 ], [ 0, %57 ]
  %67 = icmp eq i32 %66, 0
  %68 = select i1 %67, i32 0, i32 %8
  br label %69

69:                                               ; preds = %65, %24
  %70 = phi i32 [ 0, %24 ], [ %68, %65 ]
  %71 = icmp eq i32 %70, 0
  br i1 %71, label %72, label %228

72:                                               ; preds = %69
  %73 = load ptr, ptr %16, align 8, !tbaa !50
  %74 = getelementptr inbounds %struct.PointCache, ptr %73, i64 0, i32 2
  %75 = load i32, ptr %74, align 8, !tbaa !191
  %76 = and i32 %75, 64
  %77 = icmp eq i32 %76, 0
  br i1 %77, label %189, label %78

78:                                               ; preds = %72
  %79 = load ptr, ptr %16, align 8, !tbaa !50
  %80 = getelementptr inbounds %struct.PointCache, ptr %79, i64 0, i32 5
  %81 = load i32, ptr %80, align 4, !tbaa !192
  %82 = icmp sgt i32 %81, %8
  br i1 %82, label %128, label %83

83:                                               ; preds = %78, %122
  %84 = phi i32 [ %126, %122 ], [ %81, %78 ]
  %85 = phi ptr [ %124, %122 ], [ %79, %78 ]
  %86 = phi i32 [ %123, %122 ], [ %8, %78 ]
  %87 = icmp eq ptr %85, null
  br i1 %87, label %119, label %88

88:                                               ; preds = %83
  %89 = getelementptr inbounds %struct.PointCache, ptr %85, i64 0, i32 6
  %90 = load i32, ptr %89, align 8, !tbaa !193
  %91 = icmp slt i32 %90, %86
  br i1 %91, label %119, label %92

92:                                               ; preds = %88
  %93 = getelementptr inbounds %struct.PointCache, ptr %85, i64 0, i32 19
  %94 = load ptr, ptr %93, align 8, !tbaa !194
  %95 = icmp eq ptr %94, null
  br i1 %95, label %102, label %96

96:                                               ; preds = %92
  %97 = sub nsw i32 %86, %84
  %98 = sext i32 %97 to i64
  %99 = getelementptr inbounds i8, ptr %94, i64 %98
  %100 = load i8, ptr %99, align 1, !tbaa !137
  %101 = icmp eq i8 %100, 0
  br i1 %101, label %119, label %102

102:                                              ; preds = %96, %92
  %103 = getelementptr inbounds %struct.PointCache, ptr %85, i64 0, i32 2
  %104 = load i32, ptr %103, align 8, !tbaa !191
  %105 = and i32 %104, 64
  %106 = icmp eq i32 %105, 0
  br i1 %106, label %109, label %107

107:                                              ; preds = %102
  call void @llvm.lifetime.start.p0(i64 2048, ptr nonnull %5) #22
  call fastcc void @ptcache_filename(ptr noundef %0, ptr noundef nonnull %5, i32 noundef %86, i16 noundef signext 1, i16 noundef signext 1)
  %108 = call i32 @BLI_exists(ptr noundef nonnull %5) #22
  call void @llvm.lifetime.end.p0(i64 2048, ptr nonnull %5) #22
  br label %119

109:                                              ; preds = %102
  %110 = getelementptr inbounds %struct.PointCache, ptr %85, i64 0, i32 20
  br label %111

111:                                              ; preds = %115, %109
  %112 = phi ptr [ %110, %109 ], [ %113, %115 ]
  %113 = load ptr, ptr %112, align 8, !tbaa !34
  %114 = icmp eq ptr %113, null
  br i1 %114, label %119, label %115

115:                                              ; preds = %111
  %116 = getelementptr inbounds %struct.PTCacheMem, ptr %113, i64 0, i32 2
  %117 = load i32, ptr %116, align 8, !tbaa !195
  %118 = icmp eq i32 %117, %86
  br i1 %118, label %119, label %111, !llvm.loop !196

119:                                              ; preds = %111, %115, %83, %88, %96, %107
  %120 = phi i32 [ %108, %107 ], [ 0, %83 ], [ 0, %88 ], [ 0, %96 ], [ 1, %115 ], [ 0, %111 ]
  %121 = icmp eq i32 %120, 0
  br i1 %121, label %122, label %128

122:                                              ; preds = %119
  %123 = add nsw i32 %86, -1
  %124 = load ptr, ptr %16, align 8, !tbaa !50
  %125 = getelementptr inbounds %struct.PointCache, ptr %124, i64 0, i32 5
  %126 = load i32, ptr %125, align 4, !tbaa !192
  %127 = icmp sgt i32 %86, %126
  br i1 %127, label %83, label %128, !llvm.loop !197

128:                                              ; preds = %122, %119, %78
  %129 = phi i32 [ %8, %78 ], [ %123, %122 ], [ %86, %119 ]
  %130 = load ptr, ptr %16, align 8, !tbaa !50
  %131 = getelementptr inbounds %struct.PointCache, ptr %130, i64 0, i32 5
  %132 = load i32, ptr %131, align 4, !tbaa !192
  %133 = icmp slt i32 %129, %132
  %134 = select i1 %133, i32 0, i32 %129
  br label %135

135:                                              ; preds = %175, %128
  %136 = phi i32 [ %8, %128 ], [ %137, %175 ]
  %137 = add i32 %136, 1
  %138 = load ptr, ptr %16, align 8, !tbaa !50
  %139 = getelementptr inbounds %struct.PointCache, ptr %138, i64 0, i32 6
  %140 = load i32, ptr %139, align 8, !tbaa !193
  %141 = icmp sgt i32 %137, %140
  br i1 %141, label %178, label %142

142:                                              ; preds = %135
  %143 = icmp eq ptr %138, null
  br i1 %143, label %175, label %144

144:                                              ; preds = %142
  %145 = getelementptr inbounds %struct.PointCache, ptr %138, i64 0, i32 5
  %146 = load i32, ptr %145, align 4, !tbaa !192
  %147 = icmp sgt i32 %146, %137
  br i1 %147, label %175, label %148

148:                                              ; preds = %144
  %149 = getelementptr inbounds %struct.PointCache, ptr %138, i64 0, i32 19
  %150 = load ptr, ptr %149, align 8, !tbaa !194
  %151 = icmp eq ptr %150, null
  br i1 %151, label %158, label %152

152:                                              ; preds = %148
  %153 = sub nsw i32 %137, %146
  %154 = sext i32 %153 to i64
  %155 = getelementptr inbounds i8, ptr %150, i64 %154
  %156 = load i8, ptr %155, align 1, !tbaa !137
  %157 = icmp eq i8 %156, 0
  br i1 %157, label %175, label %158

158:                                              ; preds = %152, %148
  %159 = getelementptr inbounds %struct.PointCache, ptr %138, i64 0, i32 2
  %160 = load i32, ptr %159, align 8, !tbaa !191
  %161 = and i32 %160, 64
  %162 = icmp eq i32 %161, 0
  br i1 %162, label %165, label %163

163:                                              ; preds = %158
  call void @llvm.lifetime.start.p0(i64 2048, ptr nonnull %4) #22
  call fastcc void @ptcache_filename(ptr noundef %0, ptr noundef nonnull %4, i32 noundef %137, i16 noundef signext 1, i16 noundef signext 1)
  %164 = call i32 @BLI_exists(ptr noundef nonnull %4) #22
  call void @llvm.lifetime.end.p0(i64 2048, ptr nonnull %4) #22
  br label %175

165:                                              ; preds = %158
  %166 = getelementptr inbounds %struct.PointCache, ptr %138, i64 0, i32 20
  br label %167

167:                                              ; preds = %171, %165
  %168 = phi ptr [ %166, %165 ], [ %169, %171 ]
  %169 = load ptr, ptr %168, align 8, !tbaa !34
  %170 = icmp eq ptr %169, null
  br i1 %170, label %175, label %171

171:                                              ; preds = %167
  %172 = getelementptr inbounds %struct.PTCacheMem, ptr %169, i64 0, i32 2
  %173 = load i32, ptr %172, align 8, !tbaa !195
  %174 = icmp eq i32 %173, %137
  br i1 %174, label %175, label %167, !llvm.loop !196

175:                                              ; preds = %167, %171, %142, %144, %152, %163
  %176 = phi i32 [ %164, %163 ], [ 0, %142 ], [ 0, %144 ], [ 0, %152 ], [ 1, %171 ], [ 0, %167 ]
  %177 = icmp eq i32 %176, 0
  br i1 %177, label %135, label %178, !llvm.loop !198

178:                                              ; preds = %175, %135
  %179 = load ptr, ptr %16, align 8, !tbaa !50
  %180 = getelementptr inbounds %struct.PointCache, ptr %179, i64 0, i32 6
  %181 = load i32, ptr %180, align 8, !tbaa !193
  %182 = icmp sgt i32 %137, %181
  %183 = select i1 %182, i32 0, i32 %137
  %184 = icmp eq i32 %134, 0
  %185 = icmp ne i32 %183, 0
  %186 = select i1 %184, i1 true, i1 %185
  %187 = select i1 %186, i32 %134, i32 0
  %188 = select i1 %186, i32 %183, i32 %134
  br label %228

189:                                              ; preds = %72
  %190 = getelementptr inbounds %struct.PointCache, ptr %73, i64 0, i32 20
  %191 = load ptr, ptr %190, align 8, !tbaa !199
  %192 = icmp eq ptr %191, null
  br i1 %192, label %228, label %193

193:                                              ; preds = %189
  %194 = getelementptr inbounds %struct.PointCache, ptr %73, i64 0, i32 20, i32 1
  %195 = load ptr, ptr %194, align 8, !tbaa !200
  br label %196

196:                                              ; preds = %200, %193
  %197 = phi ptr [ %191, %193 ], [ %198, %200 ]
  %198 = load ptr, ptr %197, align 8, !tbaa !201
  %199 = icmp eq ptr %198, null
  br i1 %199, label %204, label %200

200:                                              ; preds = %196
  %201 = getelementptr inbounds %struct.PTCacheMem, ptr %198, i64 0, i32 2
  %202 = load i32, ptr %201, align 8, !tbaa !195
  %203 = icmp ugt i32 %202, %8
  br i1 %203, label %204, label %196, !llvm.loop !202

204:                                              ; preds = %200, %196
  %205 = getelementptr inbounds %struct.PTCacheMem, ptr %195, i64 0, i32 2
  %206 = load i32, ptr %205, align 8, !tbaa !195
  %207 = icmp ult i32 %206, %8
  br i1 %207, label %217, label %208

208:                                              ; preds = %204, %213
  %209 = phi ptr [ %211, %213 ], [ %195, %204 ]
  %210 = getelementptr inbounds %struct.PTCacheMem, ptr %209, i64 0, i32 1
  %211 = load ptr, ptr %210, align 8, !tbaa !203
  %212 = icmp eq ptr %211, null
  br i1 %212, label %217, label %213

213:                                              ; preds = %208
  %214 = getelementptr inbounds %struct.PTCacheMem, ptr %211, i64 0, i32 2
  %215 = load i32, ptr %214, align 8, !tbaa !195
  %216 = icmp ugt i32 %215, %8
  br i1 %216, label %208, label %217, !llvm.loop !204

217:                                              ; preds = %213, %208, %204
  %218 = phi ptr [ null, %204 ], [ %209, %208 ], [ %209, %213 ]
  %219 = icmp eq ptr %218, null
  br i1 %219, label %223, label %220

220:                                              ; preds = %217
  %221 = getelementptr inbounds %struct.PTCacheMem, ptr %197, i64 0, i32 2
  %222 = load i32, ptr %221, align 8, !tbaa !195
  br label %223

223:                                              ; preds = %220, %217
  %224 = phi i32 [ %222, %220 ], [ 0, %217 ]
  %225 = phi ptr [ %218, %220 ], [ %197, %217 ]
  %226 = getelementptr inbounds %struct.PTCacheMem, ptr %225, i64 0, i32 2
  %227 = load i32, ptr %226, align 8, !tbaa !195
  br label %228

228:                                              ; preds = %223, %189, %178, %69
  %229 = phi i32 [ %70, %69 ], [ %70, %189 ], [ %224, %223 ], [ %187, %178 ]
  %230 = phi i32 [ 0, %69 ], [ 0, %189 ], [ %227, %223 ], [ %188, %178 ]
  %231 = icmp eq i32 %229, 0
  %232 = icmp eq i32 %230, 0
  %233 = select i1 %231, i1 %232, i1 false
  br i1 %233, label %446, label %234

234:                                              ; preds = %228
  %235 = icmp ne i32 %230, 0
  %236 = select i1 %231, i1 %235, i1 false
  br i1 %236, label %237, label %242

237:                                              ; preds = %234
  %238 = load ptr, ptr %16, align 8, !tbaa !50
  %239 = getelementptr inbounds %struct.PointCache, ptr %238, i64 0, i32 4
  %240 = load i32, ptr %239, align 8, !tbaa !205
  %241 = icmp sgt i32 %230, %240
  br i1 %241, label %242, label %446

242:                                              ; preds = %237, %234
  %243 = icmp ne i32 %229, 0
  %244 = icmp eq i32 %229, %230
  %245 = select i1 %243, i1 %244, i1 false
  br i1 %245, label %446, label %246

246:                                              ; preds = %242
  br i1 %231, label %259, label %247

247:                                              ; preds = %246
  %248 = getelementptr inbounds %struct.PTCacheID, ptr %0, i64 0, i32 16
  %249 = load ptr, ptr %248, align 8, !tbaa !124
  %250 = icmp eq ptr %249, null
  br i1 %250, label %254, label %251

251:                                              ; preds = %247
  %252 = call fastcc i32 @ptcache_read_stream(ptr noundef %0, i32 noundef %229), !range !206
  %253 = icmp eq i32 %252, 0
  br i1 %253, label %446, label %259

254:                                              ; preds = %247
  %255 = getelementptr inbounds %struct.PTCacheID, ptr %0, i64 0, i32 13
  %256 = load ptr, ptr %255, align 8, !tbaa !57
  %257 = icmp eq ptr %256, null
  br i1 %257, label %259, label %258

258:                                              ; preds = %254
  call fastcc void @ptcache_read(ptr noundef %0, i32 noundef %229)
  br label %259

259:                                              ; preds = %251, %258, %254, %246
  br i1 %232, label %417, label %260

260:                                              ; preds = %259
  %261 = getelementptr inbounds %struct.PTCacheID, ptr %0, i64 0, i32 16
  %262 = load ptr, ptr %261, align 8, !tbaa !124
  %263 = icmp eq ptr %262, null
  br i1 %263, label %267, label %264

264:                                              ; preds = %260
  %265 = call fastcc i32 @ptcache_read_stream(ptr noundef %0, i32 noundef %230), !range !206
  %266 = icmp eq i32 %265, 0
  br i1 %266, label %446, label %417

267:                                              ; preds = %260
  %268 = getelementptr inbounds %struct.PTCacheID, ptr %0, i64 0, i32 13
  %269 = load ptr, ptr %268, align 8, !tbaa !57
  %270 = icmp eq ptr %269, null
  br i1 %270, label %417, label %271

271:                                              ; preds = %267
  br i1 %231, label %416, label %272

272:                                              ; preds = %271
  %273 = getelementptr inbounds %struct.PTCacheID, ptr %0, i64 0, i32 14
  %274 = load ptr, ptr %273, align 8, !tbaa !58
  %275 = icmp eq ptr %274, null
  br i1 %275, label %416, label %276

276:                                              ; preds = %272
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3)
  %277 = load ptr, ptr %16, align 8, !tbaa !50
  %278 = getelementptr inbounds %struct.PointCache, ptr %277, i64 0, i32 2
  %279 = load i32, ptr %278, align 8, !tbaa !191
  %280 = and i32 %279, 64
  %281 = icmp eq i32 %280, 0
  br i1 %281, label %284, label %282

282:                                              ; preds = %276
  %283 = call fastcc ptr @ptcache_disk_frame_to_mem(ptr noundef %0, i32 noundef %230)
  br label %294

284:                                              ; preds = %276
  %285 = getelementptr inbounds %struct.PointCache, ptr %277, i64 0, i32 20
  br label %286

286:                                              ; preds = %290, %284
  %287 = phi ptr [ %285, %284 ], [ %288, %290 ]
  %288 = load ptr, ptr %287, align 8, !tbaa !34
  %289 = icmp eq ptr %288, null
  br i1 %289, label %294, label %290

290:                                              ; preds = %286
  %291 = getelementptr inbounds %struct.PTCacheMem, ptr %288, i64 0, i32 2
  %292 = load i32, ptr %291, align 8, !tbaa !195
  %293 = icmp eq i32 %292, %230
  br i1 %293, label %294, label %286, !llvm.loop !207

294:                                              ; preds = %290, %286, %282
  %295 = phi ptr [ %283, %282 ], [ %288, %290 ], [ null, %286 ]
  %296 = icmp eq ptr %295, null
  br i1 %296, label %415, label %297

297:                                              ; preds = %294
  %298 = getelementptr inbounds %struct.PTCacheMem, ptr %295, i64 0, i32 3
  %299 = load i32, ptr %298, align 4, !tbaa !184
  %300 = getelementptr inbounds %struct.PTCacheID, ptr %0, i64 0, i32 10
  %301 = load i32, ptr %300, align 4, !tbaa !61
  %302 = and i32 %301, 1
  %303 = icmp eq i32 %302, 0
  br i1 %303, label %304, label %315

304:                                              ; preds = %297
  %305 = load ptr, ptr %9, align 8, !tbaa !54
  %306 = load ptr, ptr %11, align 8, !tbaa !44
  %307 = fptosi float %1 to i32
  %308 = call i32 %305(ptr noundef %306, i32 noundef %307) #22
  %309 = icmp eq i32 %299, %308
  br i1 %309, label %315, label %310

310:                                              ; preds = %304
  %311 = getelementptr inbounds %struct.PTCacheID, ptr %0, i64 0, i32 21
  %312 = load ptr, ptr %311, align 8, !tbaa !55
  %313 = load ptr, ptr %11, align 8, !tbaa !44
  call void %312(ptr noundef %313, ptr noundef nonnull @.str.30) #22
  %314 = call i32 @llvm.smin.i32(i32 %299, i32 %308)
  br label %315

315:                                              ; preds = %310, %304, %297
  %316 = phi i32 [ %299, %297 ], [ %314, %310 ], [ %299, %304 ]
  %317 = getelementptr inbounds %struct.PTCacheMem, ptr %295, i64 0, i32 4
  %318 = load i32, ptr %317, align 8, !tbaa !187
  br label %325

319:                                              ; preds = %334
  store i32 0, ptr %3, align 4, !tbaa !112
  %320 = icmp sgt i32 %316, 0
  br i1 %320, label %321, label %368

321:                                              ; preds = %319
  %322 = getelementptr inbounds %struct.PTCacheMem, ptr %295, i64 0, i32 7
  %323 = sitofp i32 %229 to float
  %324 = sitofp i32 %230 to float
  br label %339

325:                                              ; preds = %334, %315
  %326 = phi i64 [ 0, %315 ], [ %337, %334 ]
  %327 = trunc i64 %326 to i32
  %328 = shl nuw nsw i32 1, %327
  %329 = and i32 %328, %318
  %330 = icmp eq i32 %329, 0
  br i1 %330, label %334, label %331

331:                                              ; preds = %325
  %332 = getelementptr inbounds %struct.PTCacheMem, ptr %295, i64 0, i32 6, i64 %326
  %333 = load ptr, ptr %332, align 8, !tbaa !34
  br label %334

334:                                              ; preds = %331, %325
  %335 = phi ptr [ %333, %331 ], [ null, %325 ]
  %336 = getelementptr inbounds %struct.PTCacheMem, ptr %295, i64 0, i32 7, i64 %326
  store ptr %335, ptr %336, align 8, !tbaa !34
  %337 = add nuw nsw i64 %326, 1
  %338 = icmp eq i64 %337, 8
  br i1 %338, label %319, label %325, !llvm.loop !188

339:                                              ; preds = %364, %321
  %340 = phi ptr [ %3, %321 ], [ %347, %364 ]
  %341 = load i32, ptr %317, align 8, !tbaa !187
  %342 = and i32 %341, 1
  %343 = icmp eq i32 %342, 0
  br i1 %343, label %346, label %344

344:                                              ; preds = %339
  %345 = load ptr, ptr %322, align 8, !tbaa !34
  br label %346

346:                                              ; preds = %344, %339
  %347 = phi ptr [ %345, %344 ], [ %340, %339 ]
  %348 = load ptr, ptr %273, align 8, !tbaa !58
  %349 = load i32, ptr %347, align 4, !tbaa !112
  %350 = load ptr, ptr %11, align 8, !tbaa !44
  call void %348(i32 noundef %349, ptr noundef %350, ptr noundef nonnull %322, float noundef %1, float noundef %323, float noundef %324, ptr noundef null) #22
  br label %351

351:                                              ; preds = %361, %346
  %352 = phi i64 [ 0, %346 ], [ %362, %361 ]
  %353 = getelementptr inbounds %struct.PTCacheMem, ptr %295, i64 0, i32 7, i64 %352
  %354 = load ptr, ptr %353, align 8, !tbaa !34
  %355 = icmp eq ptr %354, null
  br i1 %355, label %361, label %356

356:                                              ; preds = %351
  %357 = getelementptr inbounds [8 x i32], ptr @ptcache_data_size, i64 0, i64 %352
  %358 = load i32, ptr %357, align 4, !tbaa !112
  %359 = sext i32 %358 to i64
  %360 = getelementptr inbounds i8, ptr %354, i64 %359
  store ptr %360, ptr %353, align 8, !tbaa !34
  br label %361

361:                                              ; preds = %356, %351
  %362 = add nuw nsw i64 %352, 1
  %363 = icmp eq i64 %362, 8
  br i1 %363, label %364, label %351, !llvm.loop !189

364:                                              ; preds = %361
  %365 = load i32, ptr %3, align 4, !tbaa !112
  %366 = add nsw i32 %365, 1
  store i32 %366, ptr %3, align 4, !tbaa !112
  %367 = icmp slt i32 %366, %316
  br i1 %367, label %339, label %368, !llvm.loop !208

368:                                              ; preds = %364, %319
  %369 = getelementptr inbounds %struct.PTCacheID, ptr %0, i64 0, i32 19
  %370 = load ptr, ptr %369, align 8, !tbaa !209
  %371 = icmp eq ptr %370, null
  br i1 %371, label %380, label %372

372:                                              ; preds = %368
  %373 = getelementptr inbounds %struct.PTCacheMem, ptr %295, i64 0, i32 8
  %374 = load ptr, ptr %373, align 8, !tbaa !210
  %375 = icmp eq ptr %374, null
  br i1 %375, label %380, label %376

376:                                              ; preds = %372
  %377 = load ptr, ptr %11, align 8, !tbaa !44
  %378 = sitofp i32 %229 to float
  %379 = sitofp i32 %230 to float
  call void %370(ptr noundef %377, ptr noundef nonnull %295, float noundef %1, float noundef %378, float noundef %379) #22
  br label %380

380:                                              ; preds = %376, %372, %368
  %381 = load ptr, ptr %16, align 8, !tbaa !50
  %382 = getelementptr inbounds %struct.PointCache, ptr %381, i64 0, i32 2
  %383 = load i32, ptr %382, align 8, !tbaa !191
  %384 = and i32 %383, 64
  %385 = icmp eq i32 %384, 0
  br i1 %385, label %415, label %386

386:                                              ; preds = %380
  %387 = getelementptr inbounds %struct.PTCacheMem, ptr %295, i64 0, i32 6
  br label %388

388:                                              ; preds = %395, %386
  %389 = phi i64 [ 0, %386 ], [ %396, %395 ]
  %390 = getelementptr inbounds ptr, ptr %387, i64 %389
  %391 = load ptr, ptr %390, align 8, !tbaa !34
  %392 = icmp eq ptr %391, null
  br i1 %392, label %395, label %393

393:                                              ; preds = %388
  %394 = load ptr, ptr @MEM_freeN, align 8, !tbaa !34
  call void %394(ptr noundef nonnull %391) #22
  br label %395

395:                                              ; preds = %393, %388
  %396 = add nuw nsw i64 %389, 1
  %397 = icmp eq i64 %396, 8
  br i1 %397, label %398, label %388, !llvm.loop !211

398:                                              ; preds = %395
  %399 = getelementptr inbounds %struct.PTCacheMem, ptr %295, i64 0, i32 8
  %400 = load ptr, ptr %399, align 8, !tbaa !210
  %401 = icmp eq ptr %400, null
  br i1 %401, label %413, label %402

402:                                              ; preds = %398, %409
  %403 = phi ptr [ %410, %409 ], [ %400, %398 ]
  %404 = getelementptr inbounds %struct.PTCacheExtra, ptr %403, i64 0, i32 4
  %405 = load ptr, ptr %404, align 8, !tbaa !111
  %406 = icmp eq ptr %405, null
  br i1 %406, label %409, label %407

407:                                              ; preds = %402
  %408 = load ptr, ptr @MEM_freeN, align 8, !tbaa !34
  call void %408(ptr noundef nonnull %405) #22
  br label %409

409:                                              ; preds = %407, %402
  %410 = load ptr, ptr %403, align 8, !tbaa !212
  %411 = icmp eq ptr %410, null
  br i1 %411, label %412, label %402, !llvm.loop !213

412:                                              ; preds = %409
  call void @BLI_freelistN(ptr noundef nonnull %399) #22
  br label %413

413:                                              ; preds = %412, %398
  %414 = load ptr, ptr @MEM_freeN, align 8, !tbaa !34
  call void %414(ptr noundef nonnull %295) #22
  br label %415

415:                                              ; preds = %294, %380, %413
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3)
  br label %417

416:                                              ; preds = %272, %271
  call fastcc void @ptcache_read(ptr noundef %0, i32 noundef %230)
  br label %417

417:                                              ; preds = %264, %415, %416, %267, %259
  br i1 %231, label %420, label %418

418:                                              ; preds = %417
  %419 = select i1 %232, i32 1, i32 2
  br label %424

420:                                              ; preds = %417
  br i1 %232, label %424, label %421

421:                                              ; preds = %420
  %422 = load ptr, ptr %16, align 8, !tbaa !50
  %423 = getelementptr inbounds %struct.PointCache, ptr %422, i64 0, i32 4
  store i32 %230, ptr %423, align 8, !tbaa !205
  br label %424

424:                                              ; preds = %420, %421, %418
  %425 = phi i32 [ %419, %418 ], [ 3, %421 ], [ 0, %420 ]
  %426 = fptosi float %1 to i32
  %427 = load ptr, ptr %16, align 8, !tbaa !50
  %428 = getelementptr inbounds %struct.PointCache, ptr %427, i64 0, i32 2
  %429 = load i32, ptr %428, align 8, !tbaa !191
  %430 = and i32 %429, 2
  %431 = icmp eq i32 %430, 0
  br i1 %431, label %432, label %444

432:                                              ; preds = %424
  %433 = and i32 %429, 256
  %434 = icmp eq i32 %433, 0
  br i1 %434, label %446, label %435

435:                                              ; preds = %432
  %436 = getelementptr inbounds %struct.PointCache, ptr %427, i64 0, i32 8
  %437 = load i32, ptr %436, align 8, !tbaa !214
  %438 = sitofp i32 %437 to float
  %439 = fcmp ult float %438, %1
  br i1 %439, label %442, label %440

440:                                              ; preds = %435
  %441 = and i32 %429, -259
  store i32 %441, ptr %428, align 8, !tbaa !191
  br label %442

442:                                              ; preds = %440, %435
  %443 = call i32 @llvm.smax.i32(i32 %437, i32 %426)
  br label %444

444:                                              ; preds = %424, %442
  %445 = phi i32 [ %443, %442 ], [ %426, %424 ]
  call void @BKE_ptcache_id_clear(ptr noundef %0, i32 noundef 3, i32 noundef %445)
  br label %446

446:                                              ; preds = %444, %432, %264, %251, %242, %237, %228, %2
  %447 = phi i32 [ 0, %2 ], [ 0, %228 ], [ 0, %237 ], [ 0, %242 ], [ 0, %251 ], [ 0, %264 ], [ %425, %432 ], [ %425, %444 ]
  ret i32 %447
}

; Function Attrs: nounwind uwtable
define internal fastcc void @ptcache_read(ptr nocapture noundef %0, i32 noundef %1) unnamed_addr #0 {
  %3 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3)
  %4 = getelementptr inbounds %struct.PTCacheID, ptr %0, i64 0, i32 25
  %5 = load ptr, ptr %4, align 8, !tbaa !50
  %6 = getelementptr inbounds %struct.PointCache, ptr %5, i64 0, i32 2
  %7 = load i32, ptr %6, align 8, !tbaa !191
  %8 = and i32 %7, 64
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %12, label %10

10:                                               ; preds = %2
  %11 = tail call fastcc ptr @ptcache_disk_frame_to_mem(ptr noundef %0, i32 noundef %1)
  br label %22

12:                                               ; preds = %2
  %13 = getelementptr inbounds %struct.PointCache, ptr %5, i64 0, i32 20
  br label %14

14:                                               ; preds = %18, %12
  %15 = phi ptr [ %13, %12 ], [ %16, %18 ]
  %16 = load ptr, ptr %15, align 8, !tbaa !34
  %17 = icmp eq ptr %16, null
  br i1 %17, label %22, label %18

18:                                               ; preds = %14
  %19 = getelementptr inbounds %struct.PTCacheMem, ptr %16, i64 0, i32 2
  %20 = load i32, ptr %19, align 8, !tbaa !195
  %21 = icmp eq i32 %20, %1
  br i1 %21, label %22, label %14, !llvm.loop !215

22:                                               ; preds = %18, %14, %10
  %23 = phi ptr [ %11, %10 ], [ %16, %18 ], [ null, %14 ]
  %24 = icmp eq ptr %23, null
  br i1 %24, label %150, label %25

25:                                               ; preds = %22
  %26 = getelementptr inbounds %struct.PTCacheMem, ptr %23, i64 0, i32 3
  %27 = load i32, ptr %26, align 4, !tbaa !184
  %28 = getelementptr inbounds %struct.PTCacheID, ptr %0, i64 0, i32 10
  %29 = load i32, ptr %28, align 4, !tbaa !61
  %30 = and i32 %29, 1
  %31 = icmp eq i32 %30, 0
  br i1 %31, label %32, label %44

32:                                               ; preds = %25
  %33 = getelementptr inbounds %struct.PTCacheID, ptr %0, i64 0, i32 20
  %34 = load ptr, ptr %33, align 8, !tbaa !54
  %35 = getelementptr inbounds %struct.PTCacheID, ptr %0, i64 0, i32 4
  %36 = load ptr, ptr %35, align 8, !tbaa !44
  %37 = tail call i32 %34(ptr noundef %36, i32 noundef %1) #22
  %38 = icmp eq i32 %27, %37
  br i1 %38, label %44, label %39

39:                                               ; preds = %32
  %40 = getelementptr inbounds %struct.PTCacheID, ptr %0, i64 0, i32 21
  %41 = load ptr, ptr %40, align 8, !tbaa !55
  %42 = load ptr, ptr %35, align 8, !tbaa !44
  tail call void %41(ptr noundef %42, ptr noundef nonnull @.str.30) #22
  %43 = tail call i32 @llvm.smin.i32(i32 %27, i32 %37)
  br label %44

44:                                               ; preds = %32, %39, %25
  %45 = phi i32 [ %27, %25 ], [ %43, %39 ], [ %27, %32 ]
  %46 = getelementptr inbounds %struct.PTCacheMem, ptr %23, i64 0, i32 4
  %47 = load i32, ptr %46, align 8, !tbaa !187
  br label %56

48:                                               ; preds = %65
  store i32 0, ptr %3, align 4, !tbaa !112
  %49 = icmp sgt i32 %45, 0
  br i1 %49, label %50, label %101

50:                                               ; preds = %48
  %51 = getelementptr inbounds %struct.PTCacheMem, ptr %23, i64 0, i32 7
  %52 = getelementptr inbounds %struct.PTCacheID, ptr %0, i64 0, i32 13
  %53 = getelementptr inbounds %struct.PTCacheID, ptr %0, i64 0, i32 4
  %54 = getelementptr inbounds %struct.PTCacheMem, ptr %23, i64 0, i32 7
  %55 = getelementptr inbounds %struct.PTCacheMem, ptr %23, i64 0, i32 2
  br label %70

56:                                               ; preds = %44, %65
  %57 = phi i64 [ 0, %44 ], [ %68, %65 ]
  %58 = trunc i64 %57 to i32
  %59 = shl nuw nsw i32 1, %58
  %60 = and i32 %59, %47
  %61 = icmp eq i32 %60, 0
  br i1 %61, label %65, label %62

62:                                               ; preds = %56
  %63 = getelementptr inbounds %struct.PTCacheMem, ptr %23, i64 0, i32 6, i64 %57
  %64 = load ptr, ptr %63, align 8, !tbaa !34
  br label %65

65:                                               ; preds = %62, %56
  %66 = phi ptr [ %64, %62 ], [ null, %56 ]
  %67 = getelementptr inbounds %struct.PTCacheMem, ptr %23, i64 0, i32 7, i64 %57
  store ptr %66, ptr %67, align 8, !tbaa !34
  %68 = add nuw nsw i64 %57, 1
  %69 = icmp eq i64 %68, 8
  br i1 %69, label %48, label %56, !llvm.loop !188

70:                                               ; preds = %50, %97
  %71 = phi ptr [ %3, %50 ], [ %78, %97 ]
  %72 = load i32, ptr %46, align 8, !tbaa !187
  %73 = and i32 %72, 1
  %74 = icmp eq i32 %73, 0
  br i1 %74, label %77, label %75

75:                                               ; preds = %70
  %76 = load ptr, ptr %51, align 8, !tbaa !34
  br label %77

77:                                               ; preds = %75, %70
  %78 = phi ptr [ %76, %75 ], [ %71, %70 ]
  %79 = load ptr, ptr %52, align 8, !tbaa !57
  %80 = load i32, ptr %78, align 4, !tbaa !112
  %81 = load ptr, ptr %53, align 8, !tbaa !44
  %82 = load i32, ptr %55, align 8, !tbaa !195
  %83 = uitofp i32 %82 to float
  tail call void %79(i32 noundef %80, ptr noundef %81, ptr noundef nonnull %54, float noundef %83, ptr noundef null) #22
  br label %84

84:                                               ; preds = %77, %94
  %85 = phi i64 [ 0, %77 ], [ %95, %94 ]
  %86 = getelementptr inbounds %struct.PTCacheMem, ptr %23, i64 0, i32 7, i64 %85
  %87 = load ptr, ptr %86, align 8, !tbaa !34
  %88 = icmp eq ptr %87, null
  br i1 %88, label %94, label %89

89:                                               ; preds = %84
  %90 = getelementptr inbounds [8 x i32], ptr @ptcache_data_size, i64 0, i64 %85
  %91 = load i32, ptr %90, align 4, !tbaa !112
  %92 = sext i32 %91 to i64
  %93 = getelementptr inbounds i8, ptr %87, i64 %92
  store ptr %93, ptr %86, align 8, !tbaa !34
  br label %94

94:                                               ; preds = %89, %84
  %95 = add nuw nsw i64 %85, 1
  %96 = icmp eq i64 %95, 8
  br i1 %96, label %97, label %84, !llvm.loop !189

97:                                               ; preds = %94
  %98 = load i32, ptr %3, align 4, !tbaa !112
  %99 = add nsw i32 %98, 1
  store i32 %99, ptr %3, align 4, !tbaa !112
  %100 = icmp slt i32 %99, %45
  br i1 %100, label %70, label %101, !llvm.loop !216

101:                                              ; preds = %97, %48
  %102 = getelementptr inbounds %struct.PTCacheID, ptr %0, i64 0, i32 18
  %103 = load ptr, ptr %102, align 8, !tbaa !87
  %104 = icmp eq ptr %103, null
  br i1 %104, label %115, label %105

105:                                              ; preds = %101
  %106 = getelementptr inbounds %struct.PTCacheMem, ptr %23, i64 0, i32 8
  %107 = load ptr, ptr %106, align 8, !tbaa !210
  %108 = icmp eq ptr %107, null
  br i1 %108, label %115, label %109

109:                                              ; preds = %105
  %110 = getelementptr inbounds %struct.PTCacheID, ptr %0, i64 0, i32 4
  %111 = load ptr, ptr %110, align 8, !tbaa !44
  %112 = getelementptr inbounds %struct.PTCacheMem, ptr %23, i64 0, i32 2
  %113 = load i32, ptr %112, align 8, !tbaa !195
  %114 = uitofp i32 %113 to float
  tail call void %103(ptr noundef %111, ptr noundef nonnull %23, float noundef %114) #22
  br label %115

115:                                              ; preds = %109, %105, %101
  %116 = load ptr, ptr %4, align 8, !tbaa !50
  %117 = getelementptr inbounds %struct.PointCache, ptr %116, i64 0, i32 2
  %118 = load i32, ptr %117, align 8, !tbaa !191
  %119 = and i32 %118, 64
  %120 = icmp eq i32 %119, 0
  br i1 %120, label %150, label %121

121:                                              ; preds = %115
  %122 = getelementptr inbounds %struct.PTCacheMem, ptr %23, i64 0, i32 6
  br label %123

123:                                              ; preds = %121, %130
  %124 = phi i64 [ 0, %121 ], [ %131, %130 ]
  %125 = getelementptr inbounds ptr, ptr %122, i64 %124
  %126 = load ptr, ptr %125, align 8, !tbaa !34
  %127 = icmp eq ptr %126, null
  br i1 %127, label %130, label %128

128:                                              ; preds = %123
  %129 = load ptr, ptr @MEM_freeN, align 8, !tbaa !34
  tail call void %129(ptr noundef nonnull %126) #22
  br label %130

130:                                              ; preds = %128, %123
  %131 = add nuw nsw i64 %124, 1
  %132 = icmp eq i64 %131, 8
  br i1 %132, label %133, label %123, !llvm.loop !211

133:                                              ; preds = %130
  %134 = getelementptr inbounds %struct.PTCacheMem, ptr %23, i64 0, i32 8
  %135 = load ptr, ptr %134, align 8, !tbaa !210
  %136 = icmp eq ptr %135, null
  br i1 %136, label %148, label %137

137:                                              ; preds = %133, %144
  %138 = phi ptr [ %145, %144 ], [ %135, %133 ]
  %139 = getelementptr inbounds %struct.PTCacheExtra, ptr %138, i64 0, i32 4
  %140 = load ptr, ptr %139, align 8, !tbaa !111
  %141 = icmp eq ptr %140, null
  br i1 %141, label %144, label %142

142:                                              ; preds = %137
  %143 = load ptr, ptr @MEM_freeN, align 8, !tbaa !34
  tail call void %143(ptr noundef nonnull %140) #22
  br label %144

144:                                              ; preds = %142, %137
  %145 = load ptr, ptr %138, align 8, !tbaa !212
  %146 = icmp eq ptr %145, null
  br i1 %146, label %147, label %137, !llvm.loop !213

147:                                              ; preds = %144
  tail call void @BLI_freelistN(ptr noundef nonnull %134) #22
  br label %148

148:                                              ; preds = %133, %147
  %149 = load ptr, ptr @MEM_freeN, align 8, !tbaa !34
  tail call void %149(ptr noundef nonnull %23) #22
  br label %150

150:                                              ; preds = %115, %148, %22
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3)
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local i32 @BKE_ptcache_id_exist(ptr nocapture noundef %0, i32 noundef %1) local_unnamed_addr #0 {
  %3 = alloca [2048 x i8], align 16
  %4 = getelementptr inbounds %struct.PTCacheID, ptr %0, i64 0, i32 25
  %5 = load ptr, ptr %4, align 8, !tbaa !50
  %6 = icmp eq ptr %5, null
  br i1 %6, label %42, label %7

7:                                                ; preds = %2
  %8 = getelementptr inbounds %struct.PointCache, ptr %5, i64 0, i32 5
  %9 = load i32, ptr %8, align 4, !tbaa !192
  %10 = icmp sgt i32 %9, %1
  br i1 %10, label %42, label %11

11:                                               ; preds = %7
  %12 = getelementptr inbounds %struct.PointCache, ptr %5, i64 0, i32 6
  %13 = load i32, ptr %12, align 8, !tbaa !193
  %14 = icmp slt i32 %13, %1
  br i1 %14, label %42, label %15

15:                                               ; preds = %11
  %16 = getelementptr inbounds %struct.PointCache, ptr %5, i64 0, i32 19
  %17 = load ptr, ptr %16, align 8, !tbaa !194
  %18 = icmp eq ptr %17, null
  br i1 %18, label %25, label %19

19:                                               ; preds = %15
  %20 = sub nsw i32 %1, %9
  %21 = sext i32 %20 to i64
  %22 = getelementptr inbounds i8, ptr %17, i64 %21
  %23 = load i8, ptr %22, align 1, !tbaa !137
  %24 = icmp eq i8 %23, 0
  br i1 %24, label %42, label %25

25:                                               ; preds = %19, %15
  %26 = getelementptr inbounds %struct.PointCache, ptr %5, i64 0, i32 2
  %27 = load i32, ptr %26, align 8, !tbaa !191
  %28 = and i32 %27, 64
  %29 = icmp eq i32 %28, 0
  br i1 %29, label %32, label %30

30:                                               ; preds = %25
  call void @llvm.lifetime.start.p0(i64 2048, ptr nonnull %3) #22
  call fastcc void @ptcache_filename(ptr noundef %0, ptr noundef nonnull %3, i32 noundef %1, i16 noundef signext 1, i16 noundef signext 1)
  %31 = call i32 @BLI_exists(ptr noundef nonnull %3) #22
  call void @llvm.lifetime.end.p0(i64 2048, ptr nonnull %3) #22
  br label %42

32:                                               ; preds = %25
  %33 = getelementptr inbounds %struct.PointCache, ptr %5, i64 0, i32 20
  br label %34

34:                                               ; preds = %38, %32
  %35 = phi ptr [ %33, %32 ], [ %36, %38 ]
  %36 = load ptr, ptr %35, align 8, !tbaa !34
  %37 = icmp eq ptr %36, null
  br i1 %37, label %42, label %38

38:                                               ; preds = %34
  %39 = getelementptr inbounds %struct.PTCacheMem, ptr %36, i64 0, i32 2
  %40 = load i32, ptr %39, align 8, !tbaa !195
  %41 = icmp eq i32 %40, %1
  br i1 %41, label %42, label %34, !llvm.loop !196

42:                                               ; preds = %38, %34, %19, %7, %11, %2, %30
  %43 = phi i32 [ %31, %30 ], [ 0, %2 ], [ 0, %11 ], [ 0, %7 ], [ 0, %19 ], [ 1, %38 ], [ 0, %34 ]
  ret i32 %43
}

; Function Attrs: nounwind uwtable
define internal fastcc noundef i32 @ptcache_read_stream(ptr nocapture noundef %0, i32 noundef %1) unnamed_addr #0 {
  %3 = alloca [2048 x i8], align 16
  call void @llvm.lifetime.start.p0(i64 2048, ptr nonnull %3) #22
  %4 = load i8, ptr getelementptr inbounds (%struct.Global, ptr @G, i64 0, i32 3), align 8, !tbaa !217
  %5 = icmp eq i8 %4, 0
  br i1 %5, label %6, label %13

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.PTCacheID, ptr %0, i64 0, i32 25
  %8 = load ptr, ptr %7, align 8, !tbaa !50
  %9 = getelementptr inbounds %struct.PointCache, ptr %8, i64 0, i32 2
  %10 = load i32, ptr %9, align 8, !tbaa !191
  %11 = and i32 %10, 512
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %24, label %13

13:                                               ; preds = %6, %2
  call fastcc void @ptcache_filename(ptr noundef %0, ptr noundef nonnull %3, i32 noundef %1, i16 noundef signext 1, i16 noundef signext 1)
  %14 = call i32 @BLI_exists(ptr noundef nonnull %3) #22
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %24, label %16

16:                                               ; preds = %13
  %17 = call ptr @BLI_fopen(ptr noundef nonnull %3, ptr noundef nonnull @.str.57) #22
  %18 = icmp eq ptr %17, null
  br i1 %18, label %24, label %19

19:                                               ; preds = %16
  %20 = load ptr, ptr @MEM_mallocN, align 8, !tbaa !34
  %21 = call ptr %20(i64 noundef 192, ptr noundef nonnull @.str.60) #22
  store ptr %17, ptr %21, align 8, !tbaa !71
  %22 = getelementptr inbounds %struct.PTCacheFile, ptr %21, i64 0, i32 2
  store i32 0, ptr %22, align 4, !tbaa !218
  %23 = getelementptr inbounds %struct.PTCacheFile, ptr %21, i64 0, i32 1
  store i32 %1, ptr %23, align 8, !tbaa !219
  br label %24

24:                                               ; preds = %6, %13, %16, %19
  %25 = phi ptr [ %21, %19 ], [ null, %6 ], [ null, %13 ], [ null, %16 ]
  call void @llvm.lifetime.end.p0(i64 2048, ptr nonnull %3) #22
  %26 = getelementptr inbounds %struct.PTCacheID, ptr %0, i64 0, i32 16
  %27 = load ptr, ptr %26, align 8, !tbaa !124
  %28 = icmp eq ptr %27, null
  br i1 %28, label %135, label %29

29:                                               ; preds = %24
  %30 = icmp eq ptr %25, null
  br i1 %30, label %31, label %37

31:                                               ; preds = %29
  %32 = load i32, ptr getelementptr inbounds (%struct.Global, ptr @G, i64 0, i32 16), align 4, !tbaa !220
  %33 = and i32 %32, 1
  %34 = icmp eq i32 %33, 0
  br i1 %34, label %135, label %35

35:                                               ; preds = %31
  %36 = call i32 @puts(ptr nonnull dereferenceable(1) @str.61)
  br label %135

37:                                               ; preds = %29
  %38 = call fastcc i32 @ptcache_file_header_begin_read(ptr noundef nonnull %25), !range !206
  %39 = icmp eq i32 %38, 0
  br i1 %39, label %40, label %45

40:                                               ; preds = %37
  %41 = getelementptr inbounds %struct.PTCacheID, ptr %0, i64 0, i32 21
  %42 = load ptr, ptr %41, align 8, !tbaa !55
  %43 = getelementptr inbounds %struct.PTCacheID, ptr %0, i64 0, i32 4
  %44 = load ptr, ptr %43, align 8, !tbaa !44
  call void %42(ptr noundef %44, ptr noundef nonnull @.str.32) #22
  br label %130

45:                                               ; preds = %37
  %46 = getelementptr inbounds %struct.PTCacheFile, ptr %25, i64 0, i32 4
  %47 = load i32, ptr %46, align 4, !tbaa !221
  %48 = getelementptr inbounds %struct.PTCacheID, ptr %0, i64 0, i32 5
  %49 = load i32, ptr %48, align 8, !tbaa !45
  %50 = icmp eq i32 %47, %49
  br i1 %50, label %56, label %51

51:                                               ; preds = %45
  %52 = getelementptr inbounds %struct.PTCacheID, ptr %0, i64 0, i32 21
  %53 = load ptr, ptr %52, align 8, !tbaa !55
  %54 = getelementptr inbounds %struct.PTCacheID, ptr %0, i64 0, i32 4
  %55 = load ptr, ptr %54, align 8, !tbaa !44
  call void %53(ptr noundef %55, ptr noundef nonnull @.str.33) #22
  br label %130

56:                                               ; preds = %45
  %57 = getelementptr inbounds %struct.PTCacheID, ptr %0, i64 0, i32 24
  %58 = load ptr, ptr %57, align 8, !tbaa !60
  %59 = call i32 %58(ptr noundef nonnull %25) #22
  %60 = icmp eq i32 %59, 0
  br i1 %60, label %61, label %66

61:                                               ; preds = %56
  %62 = getelementptr inbounds %struct.PTCacheID, ptr %0, i64 0, i32 21
  %63 = load ptr, ptr %62, align 8, !tbaa !55
  %64 = getelementptr inbounds %struct.PTCacheID, ptr %0, i64 0, i32 4
  %65 = load ptr, ptr %64, align 8, !tbaa !44
  call void %63(ptr noundef %65, ptr noundef nonnull @.str.34) #22
  br label %130

66:                                               ; preds = %56
  %67 = getelementptr inbounds %struct.PTCacheFile, ptr %25, i64 0, i32 3
  %68 = load i32, ptr %67, align 8, !tbaa !222
  %69 = getelementptr inbounds %struct.PTCacheID, ptr %0, i64 0, i32 20
  %70 = load ptr, ptr %69, align 8, !tbaa !54
  %71 = getelementptr inbounds %struct.PTCacheID, ptr %0, i64 0, i32 4
  %72 = load ptr, ptr %71, align 8, !tbaa !44
  %73 = call i32 %70(ptr noundef %72, i32 noundef %1) #22
  %74 = icmp eq i32 %68, %73
  br i1 %74, label %79, label %75

75:                                               ; preds = %66
  %76 = getelementptr inbounds %struct.PTCacheID, ptr %0, i64 0, i32 21
  %77 = load ptr, ptr %76, align 8, !tbaa !55
  %78 = load ptr, ptr %71, align 8, !tbaa !44
  call void %77(ptr noundef %78, ptr noundef nonnull @.str.30) #22
  br label %130

79:                                               ; preds = %66
  %80 = getelementptr inbounds %struct.PTCacheFile, ptr %25, i64 0, i32 5
  %81 = load i32, ptr %80, align 8, !tbaa !223
  %82 = and i32 %81, 1
  %83 = icmp eq i32 %82, 0
  %84 = getelementptr inbounds %struct.PTCacheFile, ptr %25, i64 0, i32 7
  %85 = select i1 %83, ptr null, ptr %84
  %86 = getelementptr inbounds %struct.PTCacheFile, ptr %25, i64 0, i32 8
  store ptr %85, ptr %86, align 8, !tbaa !34
  %87 = and i32 %81, 2
  %88 = icmp eq i32 %87, 0
  %89 = getelementptr inbounds %struct.PTCacheFile, ptr %25, i64 0, i32 7, i32 1
  %90 = select i1 %88, ptr null, ptr %89
  %91 = getelementptr inbounds %struct.PTCacheFile, ptr %25, i64 0, i32 8, i64 1
  store ptr %90, ptr %91, align 8, !tbaa !34
  %92 = and i32 %81, 4
  %93 = icmp eq i32 %92, 0
  %94 = getelementptr inbounds %struct.PTCacheFile, ptr %25, i64 0, i32 7, i32 2
  %95 = select i1 %93, ptr null, ptr %94
  %96 = getelementptr inbounds %struct.PTCacheFile, ptr %25, i64 0, i32 8, i64 2
  store ptr %95, ptr %96, align 8, !tbaa !34
  %97 = and i32 %81, 8
  %98 = icmp eq i32 %97, 0
  %99 = getelementptr inbounds %struct.PTCacheFile, ptr %25, i64 0, i32 7, i32 3
  %100 = select i1 %98, ptr null, ptr %99
  %101 = getelementptr inbounds %struct.PTCacheFile, ptr %25, i64 0, i32 8, i64 3
  store ptr %100, ptr %101, align 8, !tbaa !34
  %102 = and i32 %81, 16
  %103 = icmp eq i32 %102, 0
  %104 = getelementptr inbounds %struct.PTCacheFile, ptr %25, i64 0, i32 7, i32 4
  %105 = select i1 %103, ptr null, ptr %104
  %106 = getelementptr inbounds %struct.PTCacheFile, ptr %25, i64 0, i32 8, i64 4
  store ptr %105, ptr %106, align 8, !tbaa !34
  %107 = and i32 %81, 32
  %108 = icmp eq i32 %107, 0
  %109 = getelementptr inbounds %struct.PTCacheFile, ptr %25, i64 0, i32 7, i32 5
  %110 = select i1 %108, ptr null, ptr %109
  %111 = getelementptr inbounds %struct.PTCacheFile, ptr %25, i64 0, i32 8, i64 5
  store ptr %110, ptr %111, align 8, !tbaa !34
  %112 = and i32 %81, 64
  %113 = icmp eq i32 %112, 0
  %114 = getelementptr inbounds %struct.PTCacheFile, ptr %25, i64 0, i32 7, i32 6
  %115 = select i1 %113, ptr null, ptr %114
  %116 = getelementptr inbounds %struct.PTCacheFile, ptr %25, i64 0, i32 8, i64 6
  store ptr %115, ptr %116, align 8, !tbaa !34
  %117 = and i32 %81, 128
  %118 = icmp eq i32 %117, 0
  %119 = getelementptr inbounds %struct.PTCacheFile, ptr %25, i64 0, i32 7, i32 7
  %120 = select i1 %118, ptr null, ptr %119
  %121 = getelementptr inbounds %struct.PTCacheFile, ptr %25, i64 0, i32 8, i64 7
  store ptr %120, ptr %121, align 8, !tbaa !34
  %122 = load ptr, ptr %26, align 8, !tbaa !124
  %123 = load ptr, ptr %71, align 8, !tbaa !44
  %124 = call i32 %122(ptr noundef nonnull %25, ptr noundef %123) #22
  %125 = icmp eq i32 %124, 0
  br i1 %125, label %126, label %130

126:                                              ; preds = %79
  %127 = getelementptr inbounds %struct.PTCacheID, ptr %0, i64 0, i32 21
  %128 = load ptr, ptr %127, align 8, !tbaa !55
  %129 = load ptr, ptr %71, align 8, !tbaa !44
  call void %128(ptr noundef %129, ptr noundef nonnull @.str.35) #22
  br label %130

130:                                              ; preds = %126, %79, %40, %61, %75, %51
  %131 = phi i32 [ 1, %79 ], [ 0, %126 ], [ 0, %40 ], [ 0, %61 ], [ 0, %75 ], [ 0, %51 ]
  %132 = load ptr, ptr %25, align 8, !tbaa !71
  %133 = call i32 @fclose(ptr noundef %132)
  %134 = load ptr, ptr @MEM_freeN, align 8, !tbaa !34
  call void %134(ptr noundef nonnull %25) #22
  br label %135

135:                                              ; preds = %31, %35, %24, %130
  %136 = phi i32 [ %131, %130 ], [ 0, %24 ], [ 0, %35 ], [ 0, %31 ]
  ret i32 %136
}

; Function Attrs: nounwind uwtable
define dso_local void @BKE_ptcache_id_clear(ptr noundef %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #0 {
  %4 = alloca [2048 x i8], align 16
  %5 = alloca [1024 x i8], align 16
  %6 = alloca [2048 x i8], align 16
  %7 = alloca [2048 x i8], align 16
  %8 = alloca [1024 x i8], align 16
  %9 = alloca [7 x i8], align 1
  call void @llvm.lifetime.start.p0(i64 1024, ptr nonnull %5) #22
  call void @llvm.lifetime.start.p0(i64 2048, ptr nonnull %6) #22
  call void @llvm.lifetime.start.p0(i64 2048, ptr nonnull %7) #22
  call void @llvm.lifetime.start.p0(i64 1024, ptr nonnull %8) #22
  %10 = icmp eq ptr %0, null
  br i1 %10, label %337, label %11

11:                                               ; preds = %3
  %12 = getelementptr inbounds %struct.PTCacheID, ptr %0, i64 0, i32 25
  %13 = load ptr, ptr %12, align 8, !tbaa !50
  %14 = icmp eq ptr %13, null
  br i1 %14, label %337, label %15

15:                                               ; preds = %11
  %16 = getelementptr inbounds %struct.PointCache, ptr %13, i64 0, i32 2
  %17 = load i32, ptr %16, align 8, !tbaa !191
  %18 = and i32 %17, 8193
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %20, label %337

20:                                               ; preds = %15
  %21 = getelementptr inbounds %struct.PointCache, ptr %13, i64 0, i32 5
  %22 = load i32, ptr %21, align 4, !tbaa !192
  %23 = getelementptr inbounds %struct.PointCache, ptr %13, i64 0, i32 6
  %24 = load i32, ptr %23, align 8, !tbaa !193
  switch i32 %1, label %336 [
    i32 0, label %25
    i32 2, label %25
    i32 3, label %25
    i32 1, label %261
  ]

25:                                               ; preds = %20, %20, %20
  %26 = and i32 %17, 64
  %27 = icmp eq i32 %26, 0
  br i1 %27, label %146, label %28

28:                                               ; preds = %25
  %29 = call fastcc i32 @ptcache_path(ptr noundef nonnull %0, ptr noundef nonnull %5)
  store i8 0, ptr %6, align 16, !tbaa !137
  %30 = load i8, ptr getelementptr inbounds (%struct.Global, ptr @G, i64 0, i32 3), align 8, !tbaa !217
  %31 = icmp eq i8 %30, 0
  br i1 %31, label %32, label %38

32:                                               ; preds = %28
  %33 = load ptr, ptr %12, align 8, !tbaa !50
  %34 = getelementptr inbounds %struct.PointCache, ptr %33, i64 0, i32 2
  %35 = load i32, ptr %34, align 8, !tbaa !191
  %36 = and i32 %35, 512
  %37 = icmp eq i32 %36, 0
  br i1 %37, label %70, label %38

38:                                               ; preds = %32, %28
  %39 = load ptr, ptr %12, align 8, !tbaa !50
  %40 = getelementptr inbounds %struct.PointCache, ptr %39, i64 0, i32 15
  %41 = load i8, ptr %40, align 8, !tbaa !137
  %42 = icmp eq i8 %41, 0
  br i1 %42, label %43, label %66

43:                                               ; preds = %38
  %44 = getelementptr inbounds %struct.PointCache, ptr %39, i64 0, i32 2
  %45 = load i32, ptr %44, align 8, !tbaa !191
  %46 = and i32 %45, 512
  %47 = icmp eq i32 %46, 0
  br i1 %47, label %48, label %66

48:                                               ; preds = %43
  %49 = getelementptr inbounds %struct.PTCacheID, ptr %0, i64 0, i32 3
  %50 = load ptr, ptr %49, align 8, !tbaa !41
  %51 = getelementptr inbounds %struct.ID, ptr %50, i64 0, i32 4, i64 2
  %52 = load i8, ptr %51, align 1, !tbaa !137
  %53 = icmp eq i8 %52, 0
  br i1 %53, label %70, label %54

54:                                               ; preds = %48, %54
  %55 = phi i8 [ %64, %54 ], [ %52, %48 ]
  %56 = phi ptr [ %62, %54 ], [ %6, %48 ]
  %57 = phi ptr [ %60, %54 ], [ %51, %48 ]
  %58 = phi i32 [ %63, %54 ], [ 0, %48 ]
  %59 = zext i8 %55 to i32
  %60 = getelementptr inbounds i8, ptr %57, i64 1
  %61 = call i64 (ptr, i64, ptr, ...) @BLI_snprintf(ptr noundef nonnull %56, i64 noundef 2048, ptr noundef nonnull @.str.43, i32 noundef %59) #22
  %62 = getelementptr inbounds i8, ptr %56, i64 2
  %63 = add nuw nsw i32 %58, 2
  %64 = load i8, ptr %60, align 1, !tbaa !137
  %65 = icmp eq i8 %64, 0
  br i1 %65, label %70, label %54, !llvm.loop !224

66:                                               ; preds = %43, %38
  %67 = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %40) #23
  %68 = trunc i64 %67 to i32
  %69 = call ptr @strcpy(ptr noundef nonnull dereferenceable(1) %6, ptr noundef nonnull dereferenceable(1) %40) #22
  br label %70

70:                                               ; preds = %54, %48, %66, %32
  %71 = phi i32 [ 0, %32 ], [ %68, %66 ], [ 0, %48 ], [ %63, %54 ]
  %72 = call ptr @opendir(ptr noundef nonnull %5)
  %73 = icmp eq ptr %72, null
  br i1 %73, label %337, label %74

74:                                               ; preds = %70
  %75 = getelementptr inbounds %struct.PTCacheID, ptr %0, i64 0, i32 6
  %76 = load i32, ptr %75, align 4, !tbaa !65
  %77 = call i64 (ptr, i64, ptr, ...) @BLI_snprintf(ptr noundef nonnull %8, i64 noundef 1024, ptr noundef nonnull @.str.2, i32 noundef %76) #22
  %78 = call ptr @readdir(ptr noundef nonnull %72) #22
  %79 = icmp eq ptr %78, null
  br i1 %79, label %135, label %80

80:                                               ; preds = %74
  %81 = zext i32 %71 to i64
  %82 = icmp eq i32 %1, 0
  %83 = icmp eq i32 %1, 2
  %84 = icmp eq i32 %1, 3
  br label %85

85:                                               ; preds = %80, %132
  %86 = phi ptr [ %78, %80 ], [ %133, %132 ]
  %87 = getelementptr inbounds %struct.dirent, ptr %86, i64 0, i32 4
  %88 = call ptr @strstr(ptr noundef nonnull dereferenceable(1) %87, ptr noundef nonnull dereferenceable(1) %8) #23
  %89 = icmp eq ptr %88, null
  br i1 %89, label %132, label %90

90:                                               ; preds = %85
  %91 = call i32 @strncmp(ptr noundef nonnull %6, ptr noundef nonnull %87, i64 noundef %81) #23
  %92 = icmp eq i32 %91, 0
  br i1 %92, label %93, label %132

93:                                               ; preds = %90
  br i1 %82, label %94, label %101

94:                                               ; preds = %93
  %95 = load ptr, ptr %12, align 8, !tbaa !50
  %96 = getelementptr inbounds %struct.PointCache, ptr %95, i64 0, i32 5
  %97 = load i32, ptr %96, align 4, !tbaa !192
  %98 = call i32 @llvm.smin.i32(i32 %97, i32 0)
  %99 = getelementptr inbounds %struct.PointCache, ptr %95, i64 0, i32 8
  store i32 %98, ptr %99, align 8, !tbaa !214
  call void @BLI_join_dirfile(ptr noundef nonnull %7, i64 noundef 2048, ptr noundef nonnull %5, ptr noundef nonnull %87) #22
  %100 = call i32 @BLI_delete(ptr noundef nonnull %7, i8 noundef zeroext 0, i8 noundef zeroext 0) #22
  br label %132

101:                                              ; preds = %93
  %102 = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %87) #23
  call void @llvm.lifetime.start.p0(i64 7, ptr nonnull %9) #22
  %103 = and i64 %102, 4294967280
  %104 = icmp eq i64 %103, 0
  br i1 %104, label %131, label %105

105:                                              ; preds = %101
  %106 = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %87) #23
  %107 = getelementptr i8, ptr %87, i64 %106
  %108 = getelementptr i8, ptr %107, i64 -15
  %109 = call ptr @BLI_strncpy(ptr noundef nonnull %9, ptr noundef %108, i64 noundef 7) #22
  %110 = call i64 @strtol(ptr nocapture noundef nonnull %9, ptr noundef null, i32 noundef 10) #22
  %111 = trunc i64 %110 to i32
  %112 = icmp ult i32 %111, %2
  %113 = select i1 %83, i1 %112, i1 false
  %114 = icmp ugt i32 %111, %2
  %115 = select i1 %84, i1 %114, i1 false
  %116 = select i1 %113, i1 true, i1 %115
  br i1 %116, label %117, label %131

117:                                              ; preds = %105
  call void @BLI_join_dirfile(ptr noundef nonnull %7, i64 noundef 2048, ptr noundef nonnull %5, ptr noundef nonnull %87) #22
  %118 = call i32 @BLI_delete(ptr noundef nonnull %7, i8 noundef zeroext 0, i8 noundef zeroext 0) #22
  %119 = load ptr, ptr %12, align 8, !tbaa !50
  %120 = getelementptr inbounds %struct.PointCache, ptr %119, i64 0, i32 19
  %121 = load ptr, ptr %120, align 8, !tbaa !194
  %122 = icmp eq ptr %121, null
  %123 = icmp ugt i32 %22, %111
  %124 = select i1 %122, i1 true, i1 %123
  %125 = icmp ult i32 %24, %111
  %126 = select i1 %124, i1 true, i1 %125
  br i1 %126, label %131, label %127

127:                                              ; preds = %117
  %128 = sub i32 %111, %22
  %129 = zext i32 %128 to i64
  %130 = getelementptr inbounds i8, ptr %121, i64 %129
  store i8 0, ptr %130, align 1, !tbaa !137
  br label %131

131:                                              ; preds = %105, %127, %117, %101
  call void @llvm.lifetime.end.p0(i64 7, ptr nonnull %9) #22
  br label %132

132:                                              ; preds = %90, %131, %94, %85
  %133 = call ptr @readdir(ptr noundef nonnull %72) #22
  %134 = icmp eq ptr %133, null
  br i1 %134, label %135, label %85, !llvm.loop !225

135:                                              ; preds = %132, %74
  %136 = call i32 @closedir(ptr noundef nonnull %72)
  %137 = icmp eq i32 %1, 0
  br i1 %137, label %138, label %336

138:                                              ; preds = %135
  %139 = load ptr, ptr %12, align 8, !tbaa !50
  %140 = getelementptr inbounds %struct.PointCache, ptr %139, i64 0, i32 19
  %141 = load ptr, ptr %140, align 8, !tbaa !194
  %142 = icmp eq ptr %141, null
  br i1 %142, label %336, label %143

143:                                              ; preds = %138
  %144 = load ptr, ptr @MEM_allocN_len, align 8, !tbaa !34
  %145 = call i64 %144(ptr noundef nonnull %141) #22
  call void @llvm.memset.p0.i64(ptr nonnull align 1 %141, i8 0, i64 %145, i1 false)
  br label %336

146:                                              ; preds = %25
  %147 = getelementptr inbounds %struct.PointCache, ptr %13, i64 0, i32 20
  %148 = load ptr, ptr %147, align 8, !tbaa !199
  %149 = icmp eq i32 %1, 0
  br i1 %149, label %154, label %150

150:                                              ; preds = %146
  %151 = icmp eq ptr %148, null
  br i1 %151, label %336, label %152

152:                                              ; preds = %150
  %153 = icmp eq i32 %1, 3
  br label %199

154:                                              ; preds = %146
  %155 = tail call i32 @llvm.smin.i32(i32 %22, i32 0)
  %156 = getelementptr inbounds %struct.PointCache, ptr %13, i64 0, i32 8
  store i32 %155, ptr %156, align 8, !tbaa !214
  %157 = icmp eq ptr %148, null
  br i1 %157, label %189, label %158

158:                                              ; preds = %154, %186
  %159 = phi ptr [ %187, %186 ], [ %148, %154 ]
  %160 = getelementptr inbounds %struct.PTCacheMem, ptr %159, i64 0, i32 6
  br label %161

161:                                              ; preds = %158, %168
  %162 = phi i64 [ 0, %158 ], [ %169, %168 ]
  %163 = getelementptr inbounds ptr, ptr %160, i64 %162
  %164 = load ptr, ptr %163, align 8, !tbaa !34
  %165 = icmp eq ptr %164, null
  br i1 %165, label %168, label %166

166:                                              ; preds = %161
  %167 = load ptr, ptr @MEM_freeN, align 8, !tbaa !34
  tail call void %167(ptr noundef nonnull %164) #22
  br label %168

168:                                              ; preds = %166, %161
  %169 = add nuw nsw i64 %162, 1
  %170 = icmp eq i64 %169, 8
  br i1 %170, label %171, label %161, !llvm.loop !211

171:                                              ; preds = %168
  %172 = getelementptr inbounds %struct.PTCacheMem, ptr %159, i64 0, i32 8
  %173 = load ptr, ptr %172, align 8, !tbaa !210
  %174 = icmp eq ptr %173, null
  br i1 %174, label %186, label %175

175:                                              ; preds = %171, %182
  %176 = phi ptr [ %183, %182 ], [ %173, %171 ]
  %177 = getelementptr inbounds %struct.PTCacheExtra, ptr %176, i64 0, i32 4
  %178 = load ptr, ptr %177, align 8, !tbaa !111
  %179 = icmp eq ptr %178, null
  br i1 %179, label %182, label %180

180:                                              ; preds = %175
  %181 = load ptr, ptr @MEM_freeN, align 8, !tbaa !34
  tail call void %181(ptr noundef nonnull %178) #22
  br label %182

182:                                              ; preds = %180, %175
  %183 = load ptr, ptr %176, align 8, !tbaa !212
  %184 = icmp eq ptr %183, null
  br i1 %184, label %185, label %175, !llvm.loop !213

185:                                              ; preds = %182
  tail call void @BLI_freelistN(ptr noundef nonnull %172) #22
  br label %186

186:                                              ; preds = %171, %185
  %187 = load ptr, ptr %159, align 8, !tbaa !201
  %188 = icmp eq ptr %187, null
  br i1 %188, label %189, label %158, !llvm.loop !226

189:                                              ; preds = %186, %154
  %190 = load ptr, ptr %12, align 8, !tbaa !50
  %191 = getelementptr inbounds %struct.PointCache, ptr %190, i64 0, i32 20
  tail call void @BLI_freelistN(ptr noundef nonnull %191) #22
  %192 = load ptr, ptr %12, align 8, !tbaa !50
  %193 = getelementptr inbounds %struct.PointCache, ptr %192, i64 0, i32 19
  %194 = load ptr, ptr %193, align 8, !tbaa !194
  %195 = icmp eq ptr %194, null
  br i1 %195, label %336, label %196

196:                                              ; preds = %189
  %197 = load ptr, ptr @MEM_allocN_len, align 8, !tbaa !34
  %198 = tail call i64 %197(ptr noundef nonnull %194) #22
  tail call void @llvm.memset.p0.i64(ptr nonnull align 1 %194, i8 0, i64 %198, i1 false)
  br label %336

199:                                              ; preds = %152, %258
  %200 = phi ptr [ %148, %152 ], [ %259, %258 ]
  switch i32 %1, label %256 [
    i32 2, label %201
    i32 3, label %206
  ]

201:                                              ; preds = %199
  %202 = getelementptr inbounds %struct.PTCacheMem, ptr %200, i64 0, i32 2
  %203 = load i32, ptr %202, align 8, !tbaa !195
  %204 = icmp ult i32 %203, %2
  br i1 %204, label %210, label %205

205:                                              ; preds = %201
  br i1 %153, label %206, label %256

206:                                              ; preds = %199, %205
  %207 = getelementptr inbounds %struct.PTCacheMem, ptr %200, i64 0, i32 2
  %208 = load i32, ptr %207, align 8, !tbaa !195
  %209 = icmp ugt i32 %208, %2
  br i1 %209, label %210, label %256

210:                                              ; preds = %206, %201
  %211 = load ptr, ptr %12, align 8, !tbaa !50
  %212 = getelementptr inbounds %struct.PointCache, ptr %211, i64 0, i32 19
  %213 = load ptr, ptr %212, align 8, !tbaa !194
  %214 = icmp eq ptr %213, null
  br i1 %214, label %225, label %215

215:                                              ; preds = %210
  %216 = getelementptr inbounds %struct.PTCacheMem, ptr %200, i64 0, i32 2
  %217 = load i32, ptr %216, align 8, !tbaa !195
  %218 = icmp ult i32 %217, %22
  %219 = icmp ugt i32 %217, %24
  %220 = select i1 %218, i1 true, i1 %219
  br i1 %220, label %225, label %221

221:                                              ; preds = %215
  %222 = sub i32 %217, %22
  %223 = zext i32 %222 to i64
  %224 = getelementptr inbounds i8, ptr %213, i64 %223
  store i8 0, ptr %224, align 1, !tbaa !137
  br label %225

225:                                              ; preds = %221, %215, %210
  %226 = getelementptr inbounds %struct.PTCacheMem, ptr %200, i64 0, i32 6
  br label %227

227:                                              ; preds = %225, %234
  %228 = phi i64 [ 0, %225 ], [ %235, %234 ]
  %229 = getelementptr inbounds ptr, ptr %226, i64 %228
  %230 = load ptr, ptr %229, align 8, !tbaa !34
  %231 = icmp eq ptr %230, null
  br i1 %231, label %234, label %232

232:                                              ; preds = %227
  %233 = load ptr, ptr @MEM_freeN, align 8, !tbaa !34
  tail call void %233(ptr noundef nonnull %230) #22
  br label %234

234:                                              ; preds = %232, %227
  %235 = add nuw nsw i64 %228, 1
  %236 = icmp eq i64 %235, 8
  br i1 %236, label %237, label %227, !llvm.loop !211

237:                                              ; preds = %234
  %238 = getelementptr inbounds %struct.PTCacheMem, ptr %200, i64 0, i32 8
  %239 = load ptr, ptr %238, align 8, !tbaa !210
  %240 = icmp eq ptr %239, null
  br i1 %240, label %252, label %241

241:                                              ; preds = %237, %248
  %242 = phi ptr [ %249, %248 ], [ %239, %237 ]
  %243 = getelementptr inbounds %struct.PTCacheExtra, ptr %242, i64 0, i32 4
  %244 = load ptr, ptr %243, align 8, !tbaa !111
  %245 = icmp eq ptr %244, null
  br i1 %245, label %248, label %246

246:                                              ; preds = %241
  %247 = load ptr, ptr @MEM_freeN, align 8, !tbaa !34
  tail call void %247(ptr noundef nonnull %244) #22
  br label %248

248:                                              ; preds = %246, %241
  %249 = load ptr, ptr %242, align 8, !tbaa !212
  %250 = icmp eq ptr %249, null
  br i1 %250, label %251, label %241, !llvm.loop !213

251:                                              ; preds = %248
  tail call void @BLI_freelistN(ptr noundef nonnull %238) #22
  br label %252

252:                                              ; preds = %237, %251
  %253 = load ptr, ptr %200, align 8, !tbaa !201
  %254 = load ptr, ptr %12, align 8, !tbaa !50
  %255 = getelementptr inbounds %struct.PointCache, ptr %254, i64 0, i32 20
  tail call void @BLI_freelinkN(ptr noundef nonnull %255, ptr noundef nonnull %200) #22
  br label %258

256:                                              ; preds = %199, %206, %205
  %257 = load ptr, ptr %200, align 8, !tbaa !201
  br label %258

258:                                              ; preds = %256, %252
  %259 = phi ptr [ %253, %252 ], [ %257, %256 ]
  %260 = icmp eq ptr %259, null
  br i1 %260, label %336, label %199, !llvm.loop !227

261:                                              ; preds = %20
  %262 = and i32 %17, 64
  %263 = icmp eq i32 %262, 0
  br i1 %263, label %283, label %264

264:                                              ; preds = %261
  %265 = icmp sgt i32 %22, %2
  %266 = icmp slt i32 %24, %2
  %267 = select i1 %265, i1 true, i1 %266
  br i1 %267, label %323, label %268

268:                                              ; preds = %264
  %269 = getelementptr inbounds %struct.PointCache, ptr %13, i64 0, i32 19
  %270 = load ptr, ptr %269, align 8, !tbaa !194
  %271 = icmp eq ptr %270, null
  br i1 %271, label %278, label %272

272:                                              ; preds = %268
  %273 = sub nsw i32 %2, %22
  %274 = sext i32 %273 to i64
  %275 = getelementptr inbounds i8, ptr %270, i64 %274
  %276 = load i8, ptr %275, align 1, !tbaa !137
  %277 = icmp eq i8 %276, 0
  br i1 %277, label %323, label %278

278:                                              ; preds = %268, %272
  call void @llvm.lifetime.start.p0(i64 2048, ptr nonnull %4) #22
  call fastcc void @ptcache_filename(ptr noundef nonnull %0, ptr noundef nonnull %4, i32 noundef %2, i16 noundef signext 1, i16 noundef signext 1)
  %279 = call i32 @BLI_exists(ptr noundef nonnull %4) #22
  call void @llvm.lifetime.end.p0(i64 2048, ptr nonnull %4) #22
  %280 = icmp eq i32 %279, 0
  br i1 %280, label %323, label %281

281:                                              ; preds = %278
  call fastcc void @ptcache_filename(ptr noundef nonnull %0, ptr noundef nonnull %6, i32 noundef %2, i16 noundef signext 1, i16 noundef signext 1)
  %282 = call i32 @BLI_delete(ptr noundef nonnull %6, i8 noundef zeroext 0, i8 noundef zeroext 0) #22
  br label %323

283:                                              ; preds = %261
  %284 = getelementptr inbounds %struct.PointCache, ptr %13, i64 0, i32 20
  br label %285

285:                                              ; preds = %289, %283
  %286 = phi ptr [ %284, %283 ], [ %287, %289 ]
  %287 = load ptr, ptr %286, align 8, !tbaa !34
  %288 = icmp eq ptr %287, null
  br i1 %288, label %323, label %289

289:                                              ; preds = %285
  %290 = getelementptr inbounds %struct.PTCacheMem, ptr %287, i64 0, i32 2
  %291 = load i32, ptr %290, align 8, !tbaa !195
  %292 = icmp eq i32 %291, %2
  br i1 %292, label %293, label %285, !llvm.loop !228

293:                                              ; preds = %289
  %294 = getelementptr inbounds %struct.PTCacheMem, ptr %287, i64 0, i32 6
  br label %295

295:                                              ; preds = %293, %302
  %296 = phi i64 [ 0, %293 ], [ %303, %302 ]
  %297 = getelementptr inbounds ptr, ptr %294, i64 %296
  %298 = load ptr, ptr %297, align 8, !tbaa !34
  %299 = icmp eq ptr %298, null
  br i1 %299, label %302, label %300

300:                                              ; preds = %295
  %301 = load ptr, ptr @MEM_freeN, align 8, !tbaa !34
  tail call void %301(ptr noundef nonnull %298) #22
  br label %302

302:                                              ; preds = %300, %295
  %303 = add nuw nsw i64 %296, 1
  %304 = icmp eq i64 %303, 8
  br i1 %304, label %305, label %295, !llvm.loop !211

305:                                              ; preds = %302
  %306 = getelementptr inbounds %struct.PTCacheMem, ptr %287, i64 0, i32 8
  %307 = load ptr, ptr %306, align 8, !tbaa !210
  %308 = icmp eq ptr %307, null
  br i1 %308, label %320, label %309

309:                                              ; preds = %305, %316
  %310 = phi ptr [ %317, %316 ], [ %307, %305 ]
  %311 = getelementptr inbounds %struct.PTCacheExtra, ptr %310, i64 0, i32 4
  %312 = load ptr, ptr %311, align 8, !tbaa !111
  %313 = icmp eq ptr %312, null
  br i1 %313, label %316, label %314

314:                                              ; preds = %309
  %315 = load ptr, ptr @MEM_freeN, align 8, !tbaa !34
  tail call void %315(ptr noundef nonnull %312) #22
  br label %316

316:                                              ; preds = %314, %309
  %317 = load ptr, ptr %310, align 8, !tbaa !212
  %318 = icmp eq ptr %317, null
  br i1 %318, label %319, label %309, !llvm.loop !213

319:                                              ; preds = %316
  tail call void @BLI_freelistN(ptr noundef nonnull %306) #22
  br label %320

320:                                              ; preds = %305, %319
  %321 = load ptr, ptr %12, align 8, !tbaa !50
  %322 = getelementptr inbounds %struct.PointCache, ptr %321, i64 0, i32 20
  tail call void @BLI_freelinkN(ptr noundef nonnull %322, ptr noundef nonnull %287) #22
  br label %323

323:                                              ; preds = %285, %264, %272, %320, %278, %281
  %324 = load ptr, ptr %12, align 8, !tbaa !50
  %325 = getelementptr inbounds %struct.PointCache, ptr %324, i64 0, i32 19
  %326 = load ptr, ptr %325, align 8, !tbaa !194
  %327 = icmp eq ptr %326, null
  %328 = icmp ugt i32 %22, %2
  %329 = select i1 %327, i1 true, i1 %328
  %330 = icmp ult i32 %24, %2
  %331 = select i1 %329, i1 true, i1 %330
  br i1 %331, label %336, label %332

332:                                              ; preds = %323
  %333 = sub i32 %2, %22
  %334 = zext i32 %333 to i64
  %335 = getelementptr inbounds i8, ptr %326, i64 %334
  store i8 0, ptr %335, align 1, !tbaa !137
  br label %336

336:                                              ; preds = %258, %150, %196, %189, %323, %332, %143, %138, %135, %20
  call void @BKE_ptcache_update_info(ptr noundef nonnull %0)
  br label %337

337:                                              ; preds = %70, %3, %11, %15, %336
  call void @llvm.lifetime.end.p0(i64 1024, ptr nonnull %8) #22
  call void @llvm.lifetime.end.p0(i64 2048, ptr nonnull %7) #22
  call void @llvm.lifetime.end.p0(i64 2048, ptr nonnull %6) #22
  call void @llvm.lifetime.end.p0(i64 1024, ptr nonnull %5) #22
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local i32 @BKE_ptcache_write(ptr noundef %0, i32 noundef %1) local_unnamed_addr #0 {
  %3 = alloca [2048 x i8], align 16
  %4 = alloca i32, align 4
  %5 = alloca [2048 x i8], align 16
  %6 = alloca [2048 x i8], align 16
  %7 = alloca [2048 x i8], align 16
  %8 = getelementptr inbounds %struct.PTCacheID, ptr %0, i64 0, i32 25
  %9 = load ptr, ptr %8, align 8, !tbaa !50
  %10 = getelementptr inbounds %struct.PTCacheID, ptr %0, i64 0, i32 20
  %11 = load ptr, ptr %10, align 8, !tbaa !54
  %12 = getelementptr inbounds %struct.PTCacheID, ptr %0, i64 0, i32 4
  %13 = load ptr, ptr %12, align 8, !tbaa !44
  %14 = tail call i32 %11(ptr noundef %13, i32 noundef %1) #22
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %604, label %16

16:                                               ; preds = %2
  %17 = icmp eq i32 %1, 0
  br i1 %17, label %22, label %18

18:                                               ; preds = %16
  %19 = getelementptr inbounds %struct.PTCacheID, ptr %0, i64 0, i32 10
  %20 = load i32, ptr %19, align 4, !tbaa !61
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %604, label %26

22:                                               ; preds = %16
  %23 = getelementptr inbounds %struct.PTCacheID, ptr %0, i64 0, i32 11
  %24 = load i32, ptr %23, align 8, !tbaa !62
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %604, label %26

26:                                               ; preds = %22, %18
  %27 = load ptr, ptr %8, align 8, !tbaa !50
  %28 = getelementptr inbounds %struct.PointCache, ptr %27, i64 0, i32 6
  %29 = load i32, ptr %28, align 8, !tbaa !193
  br i1 %17, label %38, label %30

30:                                               ; preds = %26
  %31 = getelementptr inbounds %struct.PointCache, ptr %27, i64 0, i32 5
  %32 = load i32, ptr %31, align 4, !tbaa !192
  %33 = icmp eq i32 %32, %1
  br i1 %33, label %34, label %38

34:                                               ; preds = %30
  tail call void @BKE_ptcache_id_clear(ptr noundef %0, i32 noundef 0, i32 noundef %1)
  %35 = getelementptr inbounds %struct.PointCache, ptr %27, i64 0, i32 2
  %36 = load i32, ptr %35, align 8, !tbaa !191
  %37 = and i32 %36, -259
  store i32 %37, ptr %35, align 8, !tbaa !191
  br label %186

38:                                               ; preds = %30, %26
  %39 = getelementptr inbounds %struct.PointCache, ptr %27, i64 0, i32 2
  %40 = load i32, ptr %39, align 8, !tbaa !191
  %41 = and i32 %40, 64
  %42 = icmp eq i32 %41, 0
  br i1 %42, label %147, label %43

43:                                               ; preds = %38
  br i1 %17, label %44, label %48

44:                                               ; preds = %43
  %45 = getelementptr inbounds %struct.PointCache, ptr %27, i64 0, i32 5
  %46 = load i32, ptr %45, align 4, !tbaa !192
  %47 = icmp sgt i32 %46, 0
  br i1 %47, label %186, label %48

48:                                               ; preds = %44, %43
  %49 = getelementptr inbounds %struct.PointCache, ptr %27, i64 0, i32 5
  %50 = load i32, ptr %49, align 4, !tbaa !192
  %51 = icmp sgt i32 %29, %50
  br i1 %51, label %52, label %98

52:                                               ; preds = %48, %94
  %53 = phi i32 [ %95, %94 ], [ %29, %48 ]
  %54 = load ptr, ptr %8, align 8, !tbaa !50
  %55 = icmp eq ptr %54, null
  br i1 %55, label %91, label %56

56:                                               ; preds = %52
  %57 = getelementptr inbounds %struct.PointCache, ptr %54, i64 0, i32 5
  %58 = load i32, ptr %57, align 4, !tbaa !192
  %59 = icmp sgt i32 %58, %53
  br i1 %59, label %91, label %60

60:                                               ; preds = %56
  %61 = getelementptr inbounds %struct.PointCache, ptr %54, i64 0, i32 6
  %62 = load i32, ptr %61, align 8, !tbaa !193
  %63 = icmp slt i32 %62, %53
  br i1 %63, label %91, label %64

64:                                               ; preds = %60
  %65 = getelementptr inbounds %struct.PointCache, ptr %54, i64 0, i32 19
  %66 = load ptr, ptr %65, align 8, !tbaa !194
  %67 = icmp eq ptr %66, null
  br i1 %67, label %74, label %68

68:                                               ; preds = %64
  %69 = sub nsw i32 %53, %58
  %70 = sext i32 %69 to i64
  %71 = getelementptr inbounds i8, ptr %66, i64 %70
  %72 = load i8, ptr %71, align 1, !tbaa !137
  %73 = icmp eq i8 %72, 0
  br i1 %73, label %91, label %74

74:                                               ; preds = %68, %64
  %75 = getelementptr inbounds %struct.PointCache, ptr %54, i64 0, i32 2
  %76 = load i32, ptr %75, align 8, !tbaa !191
  %77 = and i32 %76, 64
  %78 = icmp eq i32 %77, 0
  br i1 %78, label %81, label %79

79:                                               ; preds = %74
  call void @llvm.lifetime.start.p0(i64 2048, ptr nonnull %7) #22
  call fastcc void @ptcache_filename(ptr noundef %0, ptr noundef nonnull %7, i32 noundef %53, i16 noundef signext 1, i16 noundef signext 1)
  %80 = call i32 @BLI_exists(ptr noundef nonnull %7) #22
  call void @llvm.lifetime.end.p0(i64 2048, ptr nonnull %7) #22
  br label %91

81:                                               ; preds = %74
  %82 = getelementptr inbounds %struct.PointCache, ptr %54, i64 0, i32 20
  br label %83

83:                                               ; preds = %87, %81
  %84 = phi ptr [ %82, %81 ], [ %85, %87 ]
  %85 = load ptr, ptr %84, align 8, !tbaa !34
  %86 = icmp eq ptr %85, null
  br i1 %86, label %91, label %87

87:                                               ; preds = %83
  %88 = getelementptr inbounds %struct.PTCacheMem, ptr %85, i64 0, i32 2
  %89 = load i32, ptr %88, align 8, !tbaa !195
  %90 = icmp eq i32 %89, %53
  br i1 %90, label %91, label %83, !llvm.loop !196

91:                                               ; preds = %83, %87, %52, %56, %60, %68, %79
  %92 = phi i32 [ %80, %79 ], [ 0, %52 ], [ 0, %60 ], [ 0, %56 ], [ 0, %68 ], [ 1, %87 ], [ 0, %83 ]
  %93 = icmp eq i32 %92, 0
  br i1 %93, label %94, label %98

94:                                               ; preds = %91
  %95 = add nsw i32 %53, -1
  %96 = load i32, ptr %49, align 4, !tbaa !192
  %97 = icmp sgt i32 %95, %96
  br i1 %97, label %52, label %98, !llvm.loop !229

98:                                               ; preds = %94, %91, %48
  %99 = phi i32 [ %29, %48 ], [ %95, %94 ], [ %53, %91 ]
  %100 = getelementptr inbounds %struct.PointCache, ptr %27, i64 0, i32 5
  br label %101

101:                                              ; preds = %144, %98
  %102 = phi i32 [ %99, %98 ], [ %103, %144 ]
  %103 = add nsw i32 %102, -1
  %104 = load i32, ptr %100, align 4, !tbaa !192
  %105 = icmp sgt i32 %103, %104
  br i1 %105, label %106, label %170

106:                                              ; preds = %101
  %107 = load ptr, ptr %8, align 8, !tbaa !50
  %108 = icmp eq ptr %107, null
  br i1 %108, label %144, label %109

109:                                              ; preds = %106
  %110 = getelementptr inbounds %struct.PointCache, ptr %107, i64 0, i32 5
  %111 = load i32, ptr %110, align 4, !tbaa !192
  %112 = icmp slt i32 %111, %102
  br i1 %112, label %113, label %144

113:                                              ; preds = %109
  %114 = getelementptr inbounds %struct.PointCache, ptr %107, i64 0, i32 6
  %115 = load i32, ptr %114, align 8, !tbaa !193
  %116 = icmp slt i32 %115, %103
  br i1 %116, label %144, label %117

117:                                              ; preds = %113
  %118 = getelementptr inbounds %struct.PointCache, ptr %107, i64 0, i32 19
  %119 = load ptr, ptr %118, align 8, !tbaa !194
  %120 = icmp eq ptr %119, null
  br i1 %120, label %127, label %121

121:                                              ; preds = %117
  %122 = sub nsw i32 %103, %111
  %123 = sext i32 %122 to i64
  %124 = getelementptr inbounds i8, ptr %119, i64 %123
  %125 = load i8, ptr %124, align 1, !tbaa !137
  %126 = icmp eq i8 %125, 0
  br i1 %126, label %144, label %127

127:                                              ; preds = %121, %117
  %128 = getelementptr inbounds %struct.PointCache, ptr %107, i64 0, i32 2
  %129 = load i32, ptr %128, align 8, !tbaa !191
  %130 = and i32 %129, 64
  %131 = icmp eq i32 %130, 0
  br i1 %131, label %134, label %132

132:                                              ; preds = %127
  call void @llvm.lifetime.start.p0(i64 2048, ptr nonnull %6) #22
  call fastcc void @ptcache_filename(ptr noundef %0, ptr noundef nonnull %6, i32 noundef %103, i16 noundef signext 1, i16 noundef signext 1)
  %133 = call i32 @BLI_exists(ptr noundef nonnull %6) #22
  call void @llvm.lifetime.end.p0(i64 2048, ptr nonnull %6) #22
  br label %144

134:                                              ; preds = %127
  %135 = getelementptr inbounds %struct.PointCache, ptr %107, i64 0, i32 20
  br label %136

136:                                              ; preds = %140, %134
  %137 = phi ptr [ %135, %134 ], [ %138, %140 ]
  %138 = load ptr, ptr %137, align 8, !tbaa !34
  %139 = icmp eq ptr %138, null
  br i1 %139, label %144, label %140

140:                                              ; preds = %136
  %141 = getelementptr inbounds %struct.PTCacheMem, ptr %138, i64 0, i32 2
  %142 = load i32, ptr %141, align 8, !tbaa !195
  %143 = icmp eq i32 %142, %103
  br i1 %143, label %144, label %136, !llvm.loop !196

144:                                              ; preds = %136, %140, %106, %109, %113, %121, %132
  %145 = phi i32 [ %133, %132 ], [ 0, %106 ], [ 0, %113 ], [ 0, %109 ], [ 0, %121 ], [ 1, %140 ], [ 0, %136 ]
  %146 = icmp eq i32 %145, 0
  br i1 %146, label %101, label %170, !llvm.loop !230

147:                                              ; preds = %38
  %148 = getelementptr inbounds %struct.PointCache, ptr %27, i64 0, i32 20, i32 1
  %149 = load ptr, ptr %148, align 8, !tbaa !200
  br i1 %17, label %165, label %150

150:                                              ; preds = %147
  %151 = icmp eq ptr %149, null
  br i1 %151, label %165, label %152

152:                                              ; preds = %150
  %153 = getelementptr inbounds %struct.PTCacheMem, ptr %149, i64 0, i32 2
  %154 = load i32, ptr %153, align 8, !tbaa !195
  %155 = getelementptr inbounds %struct.PTCacheMem, ptr %149, i64 0, i32 1
  %156 = load ptr, ptr %155, align 8, !tbaa !203
  %157 = icmp eq ptr %156, null
  br i1 %157, label %161, label %158

158:                                              ; preds = %152
  %159 = getelementptr inbounds %struct.PTCacheMem, ptr %156, i64 0, i32 2
  %160 = load i32, ptr %159, align 8, !tbaa !195
  br label %165

161:                                              ; preds = %152
  %162 = getelementptr inbounds %struct.PointCache, ptr %27, i64 0, i32 3
  %163 = load i32, ptr %162, align 4, !tbaa !93
  %164 = sub nsw i32 %154, %163
  br label %165

165:                                              ; preds = %161, %158, %150, %147
  %166 = phi i32 [ 0, %147 ], [ 0, %150 ], [ %160, %158 ], [ %164, %161 ]
  %167 = phi i32 [ %29, %147 ], [ %29, %150 ], [ %154, %158 ], [ %154, %161 ]
  %168 = phi i1 [ false, %147 ], [ false, %150 ], [ true, %158 ], [ true, %161 ]
  %169 = phi i32 [ 0, %147 ], [ 1, %150 ], [ undef, %158 ], [ undef, %161 ]
  br i1 %168, label %170, label %186

170:                                              ; preds = %144, %101, %165
  %171 = phi i32 [ %166, %165 ], [ %103, %101 ], [ %103, %144 ]
  %172 = phi i32 [ %167, %165 ], [ %99, %101 ], [ %99, %144 ]
  %173 = getelementptr inbounds %struct.PointCache, ptr %27, i64 0, i32 5
  %174 = load i32, ptr %173, align 4, !tbaa !192
  %175 = icmp sge i32 %172, %174
  %176 = icmp slt i32 %172, %1
  %177 = and i1 %176, %175
  br i1 %177, label %178, label %186

178:                                              ; preds = %170
  %179 = icmp slt i32 %171, %174
  br i1 %179, label %186, label %180

180:                                              ; preds = %178
  %181 = sub nsw i32 %172, %171
  %182 = getelementptr inbounds %struct.PointCache, ptr %27, i64 0, i32 3
  %183 = load i32, ptr %182, align 4, !tbaa !93
  %184 = icmp slt i32 %181, %183
  br i1 %184, label %185, label %186

185:                                              ; preds = %180
  call void @BKE_ptcache_id_clear(ptr noundef %0, i32 noundef 1, i32 noundef %172)
  br label %186

186:                                              ; preds = %34, %44, %165, %170, %178, %180, %185
  %187 = phi i1 [ false, %178 ], [ true, %185 ], [ false, %180 ], [ false, %170 ], [ false, %165 ], [ false, %44 ], [ false, %34 ]
  %188 = phi i32 [ 1, %178 ], [ 1, %185 ], [ 1, %180 ], [ 0, %170 ], [ %169, %165 ], [ 1, %44 ], [ 1, %34 ]
  %189 = icmp eq i32 %188, 0
  br i1 %189, label %604, label %190

190:                                              ; preds = %186
  %191 = getelementptr inbounds %struct.PTCacheID, ptr %0, i64 0, i32 15
  %192 = load ptr, ptr %191, align 8, !tbaa !125
  %193 = icmp eq ptr %192, null
  br i1 %193, label %265, label %194

194:                                              ; preds = %190
  call void @BKE_ptcache_id_clear(ptr noundef %0, i32 noundef 1, i32 noundef %1)
  call void @llvm.lifetime.start.p0(i64 2048, ptr nonnull %5) #22
  %195 = load i8, ptr getelementptr inbounds (%struct.Global, ptr @G, i64 0, i32 3), align 8, !tbaa !217
  %196 = icmp eq i8 %195, 0
  br i1 %196, label %197, label %203

197:                                              ; preds = %194
  %198 = load ptr, ptr %8, align 8, !tbaa !50
  %199 = getelementptr inbounds %struct.PointCache, ptr %198, i64 0, i32 2
  %200 = load i32, ptr %199, align 8, !tbaa !191
  %201 = and i32 %200, 512
  %202 = icmp eq i32 %201, 0
  br i1 %202, label %211, label %203

203:                                              ; preds = %197, %194
  call fastcc void @ptcache_filename(ptr noundef %0, ptr noundef nonnull %5, i32 noundef %1, i16 noundef signext 1, i16 noundef signext 1)
  call void @BLI_make_existing_file(ptr noundef nonnull %5) #22
  %204 = call ptr @BLI_fopen(ptr noundef nonnull %5, ptr noundef nonnull @.str.58) #22
  %205 = icmp eq ptr %204, null
  br i1 %205, label %211, label %206

206:                                              ; preds = %203
  %207 = load ptr, ptr @MEM_mallocN, align 8, !tbaa !34
  %208 = call ptr %207(i64 noundef 192, ptr noundef nonnull @.str.60) #22
  store ptr %204, ptr %208, align 8, !tbaa !71
  %209 = getelementptr inbounds %struct.PTCacheFile, ptr %208, i64 0, i32 2
  store i32 0, ptr %209, align 4, !tbaa !218
  %210 = getelementptr inbounds %struct.PTCacheFile, ptr %208, i64 0, i32 1
  store i32 %1, ptr %210, align 8, !tbaa !219
  br label %211

211:                                              ; preds = %197, %203, %206
  %212 = phi ptr [ %208, %206 ], [ null, %197 ], [ null, %203 ]
  call void @llvm.lifetime.end.p0(i64 2048, ptr nonnull %5) #22
  %213 = icmp eq ptr %212, null
  br i1 %213, label %214, label %220

214:                                              ; preds = %211
  %215 = load i32, ptr getelementptr inbounds (%struct.Global, ptr @G, i64 0, i32 16), align 4, !tbaa !220
  %216 = and i32 %215, 1
  %217 = icmp eq i32 %216, 0
  br i1 %217, label %573, label %218

218:                                              ; preds = %214
  %219 = call i32 @puts(ptr nonnull dereferenceable(1) @str.66)
  br label %573

220:                                              ; preds = %211
  %221 = getelementptr inbounds %struct.PTCacheID, ptr %0, i64 0, i32 10
  %222 = load i32, ptr %221, align 4, !tbaa !61
  %223 = getelementptr inbounds %struct.PTCacheFile, ptr %212, i64 0, i32 5
  store i32 %222, ptr %223, align 8, !tbaa !223
  %224 = getelementptr inbounds %struct.PTCacheFile, ptr %212, i64 0, i32 3
  store i32 %14, ptr %224, align 8, !tbaa !222
  %225 = getelementptr inbounds %struct.PTCacheID, ptr %0, i64 0, i32 5
  %226 = load i32, ptr %225, align 8, !tbaa !45
  %227 = getelementptr inbounds %struct.PTCacheFile, ptr %212, i64 0, i32 4
  store i32 %226, ptr %227, align 4, !tbaa !221
  %228 = getelementptr inbounds %struct.PTCacheFile, ptr %212, i64 0, i32 6
  store i32 0, ptr %228, align 4, !tbaa !231
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #22
  store i32 %226, ptr %4, align 4, !tbaa !112
  %229 = load ptr, ptr %212, align 8, !tbaa !71
  %230 = call i64 @fwrite(ptr noundef nonnull @.str.38, i64 noundef 1, i64 noundef 8, ptr noundef %229)
  %231 = icmp eq i64 %230, 8
  br i1 %231, label %232, label %241

232:                                              ; preds = %220
  %233 = load ptr, ptr %212, align 8, !tbaa !71
  %234 = call i64 @fwrite(ptr noundef nonnull %4, i64 noundef 4, i64 noundef 1, ptr noundef %233)
  %235 = icmp eq i64 %234, 0
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #22
  br i1 %235, label %242, label %236

236:                                              ; preds = %232
  %237 = getelementptr inbounds %struct.PTCacheID, ptr %0, i64 0, i32 23
  %238 = load ptr, ptr %237, align 8, !tbaa !59
  %239 = call i32 %238(ptr noundef nonnull %212) #22
  %240 = icmp eq i32 %239, 0
  br i1 %240, label %242, label %243

241:                                              ; preds = %220
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #22
  br label %242

242:                                              ; preds = %241, %236, %232
  br label %243

243:                                              ; preds = %242, %236
  %244 = phi i1 [ true, %236 ], [ false, %242 ]
  br i1 %244, label %245, label %255

245:                                              ; preds = %243
  %246 = load ptr, ptr %191, align 8, !tbaa !125
  %247 = icmp eq ptr %246, null
  br i1 %247, label %251, label %248

248:                                              ; preds = %245
  %249 = load ptr, ptr %12, align 8, !tbaa !44
  %250 = call i32 %246(ptr noundef nonnull %212, ptr noundef %249) #22
  br label %251

251:                                              ; preds = %248, %245
  %252 = load ptr, ptr %212, align 8, !tbaa !71
  %253 = call i32 @fclose(ptr noundef %252)
  %254 = load ptr, ptr @MEM_freeN, align 8, !tbaa !34
  call void %254(ptr noundef nonnull %212) #22
  br i1 %244, label %573, label %259

255:                                              ; preds = %243
  %256 = load ptr, ptr %212, align 8, !tbaa !71
  %257 = call i32 @fclose(ptr noundef %256)
  %258 = load ptr, ptr @MEM_freeN, align 8, !tbaa !34
  call void %258(ptr noundef nonnull %212) #22
  br label %259

259:                                              ; preds = %255, %251
  %260 = load i32, ptr getelementptr inbounds (%struct.Global, ptr @G, i64 0, i32 16), align 4, !tbaa !220
  %261 = and i32 %260, 1
  %262 = icmp eq i32 %261, 0
  br i1 %262, label %573, label %263

263:                                              ; preds = %259
  %264 = call i32 @puts(ptr nonnull dereferenceable(1) @str.65)
  br label %573

265:                                              ; preds = %190
  %266 = getelementptr inbounds %struct.PTCacheID, ptr %0, i64 0, i32 12
  %267 = load ptr, ptr %266, align 8, !tbaa !56
  %268 = icmp eq ptr %267, null
  br i1 %268, label %573, label %269

269:                                              ; preds = %265
  %270 = load ptr, ptr %8, align 8, !tbaa !50
  %271 = load ptr, ptr %10, align 8, !tbaa !54
  %272 = load ptr, ptr %12, align 8, !tbaa !44
  %273 = call i32 %271(ptr noundef %272, i32 noundef %1) #22
  %274 = load ptr, ptr @MEM_callocN, align 8, !tbaa !34
  %275 = call ptr %274(i64 noundef 176, ptr noundef nonnull @.str.39) #22
  %276 = getelementptr inbounds %struct.PTCacheID, ptr %0, i64 0, i32 22
  %277 = load ptr, ptr %276, align 8, !tbaa !53
  %278 = load ptr, ptr %12, align 8, !tbaa !44
  %279 = call i32 %277(ptr noundef %278, i32 noundef %1) #22
  %280 = getelementptr inbounds %struct.PTCacheMem, ptr %275, i64 0, i32 3
  store i32 %279, ptr %280, align 4, !tbaa !184
  %281 = getelementptr inbounds %struct.PTCacheID, ptr %0, i64 0, i32 10
  %282 = getelementptr inbounds %struct.PTCacheID, ptr %0, i64 0, i32 11
  %283 = select i1 %17, ptr %282, ptr %281
  %284 = load i32, ptr %283, align 4, !tbaa !112
  %285 = getelementptr inbounds %struct.PTCacheMem, ptr %275, i64 0, i32 4
  store i32 %284, ptr %285, align 8, !tbaa !187
  br label %286

286:                                              ; preds = %269, %300
  %287 = phi i64 [ 0, %269 ], [ %301, %300 ]
  %288 = trunc i64 %287 to i32
  %289 = shl nuw nsw i32 1, %288
  %290 = and i32 %289, %284
  %291 = icmp eq i32 %290, 0
  br i1 %291, label %300, label %292

292:                                              ; preds = %286
  %293 = load ptr, ptr @MEM_callocN, align 8, !tbaa !34
  %294 = getelementptr inbounds [8 x i32], ptr @ptcache_data_size, i64 0, i64 %287
  %295 = load i32, ptr %294, align 4, !tbaa !112
  %296 = mul nsw i32 %295, %279
  %297 = sext i32 %296 to i64
  %298 = call ptr %293(i64 noundef %297, ptr noundef nonnull @.str.40) #22
  %299 = getelementptr inbounds %struct.PTCacheMem, ptr %275, i64 0, i32 6, i64 %287
  store ptr %298, ptr %299, align 8, !tbaa !34
  br label %300

300:                                              ; preds = %292, %286
  %301 = add nuw nsw i64 %287, 1
  %302 = icmp eq i64 %301, 8
  br i1 %302, label %303, label %286, !llvm.loop !232

303:                                              ; preds = %300
  %304 = load i32, ptr %285, align 8, !tbaa !187
  br label %305

305:                                              ; preds = %303, %314
  %306 = phi i64 [ 0, %303 ], [ %317, %314 ]
  %307 = trunc i64 %306 to i32
  %308 = shl nuw nsw i32 1, %307
  %309 = and i32 %308, %304
  %310 = icmp eq i32 %309, 0
  br i1 %310, label %314, label %311

311:                                              ; preds = %305
  %312 = getelementptr inbounds %struct.PTCacheMem, ptr %275, i64 0, i32 6, i64 %306
  %313 = load ptr, ptr %312, align 8, !tbaa !34
  br label %314

314:                                              ; preds = %311, %305
  %315 = phi ptr [ %313, %311 ], [ null, %305 ]
  %316 = getelementptr inbounds %struct.PTCacheMem, ptr %275, i64 0, i32 7, i64 %306
  store ptr %315, ptr %316, align 8, !tbaa !34
  %317 = add nuw nsw i64 %306, 1
  %318 = icmp eq i64 %317, 8
  br i1 %318, label %319, label %305, !llvm.loop !188

319:                                              ; preds = %314
  br i1 %187, label %320, label %378

320:                                              ; preds = %319
  %321 = getelementptr inbounds %struct.PointCache, ptr %270, i64 0, i32 2
  %322 = load i32, ptr %321, align 8, !tbaa !191
  %323 = and i32 %322, 64
  %324 = icmp eq i32 %323, 0
  br i1 %324, label %375, label %325

325:                                              ; preds = %320
  %326 = getelementptr inbounds %struct.PointCache, ptr %270, i64 0, i32 5
  br label %327

327:                                              ; preds = %325, %370
  %328 = phi i32 [ %329, %370 ], [ %1, %325 ]
  %329 = add nsw i32 %328, -1
  %330 = load i32, ptr %326, align 4, !tbaa !192
  %331 = icmp sgt i32 %328, %330
  br i1 %331, label %332, label %373

332:                                              ; preds = %327
  %333 = load ptr, ptr %8, align 8, !tbaa !50
  %334 = icmp eq ptr %333, null
  br i1 %334, label %370, label %335

335:                                              ; preds = %332
  %336 = getelementptr inbounds %struct.PointCache, ptr %333, i64 0, i32 5
  %337 = load i32, ptr %336, align 4, !tbaa !192
  %338 = icmp slt i32 %337, %328
  br i1 %338, label %339, label %370

339:                                              ; preds = %335
  %340 = getelementptr inbounds %struct.PointCache, ptr %333, i64 0, i32 6
  %341 = load i32, ptr %340, align 8, !tbaa !193
  %342 = icmp slt i32 %341, %329
  br i1 %342, label %370, label %343

343:                                              ; preds = %339
  %344 = getelementptr inbounds %struct.PointCache, ptr %333, i64 0, i32 19
  %345 = load ptr, ptr %344, align 8, !tbaa !194
  %346 = icmp eq ptr %345, null
  br i1 %346, label %353, label %347

347:                                              ; preds = %343
  %348 = sub nsw i32 %329, %337
  %349 = sext i32 %348 to i64
  %350 = getelementptr inbounds i8, ptr %345, i64 %349
  %351 = load i8, ptr %350, align 1, !tbaa !137
  %352 = icmp eq i8 %351, 0
  br i1 %352, label %370, label %353

353:                                              ; preds = %347, %343
  %354 = getelementptr inbounds %struct.PointCache, ptr %333, i64 0, i32 2
  %355 = load i32, ptr %354, align 8, !tbaa !191
  %356 = and i32 %355, 64
  %357 = icmp eq i32 %356, 0
  br i1 %357, label %360, label %358

358:                                              ; preds = %353
  call void @llvm.lifetime.start.p0(i64 2048, ptr nonnull %3) #22
  call fastcc void @ptcache_filename(ptr noundef %0, ptr noundef nonnull %3, i32 noundef %329, i16 noundef signext 1, i16 noundef signext 1)
  %359 = call i32 @BLI_exists(ptr noundef nonnull %3) #22
  call void @llvm.lifetime.end.p0(i64 2048, ptr nonnull %3) #22
  br label %370

360:                                              ; preds = %353
  %361 = getelementptr inbounds %struct.PointCache, ptr %333, i64 0, i32 20
  br label %362

362:                                              ; preds = %366, %360
  %363 = phi ptr [ %361, %360 ], [ %364, %366 ]
  %364 = load ptr, ptr %363, align 8, !tbaa !34
  %365 = icmp eq ptr %364, null
  br i1 %365, label %370, label %366

366:                                              ; preds = %362
  %367 = getelementptr inbounds %struct.PTCacheMem, ptr %364, i64 0, i32 2
  %368 = load i32, ptr %367, align 8, !tbaa !195
  %369 = icmp eq i32 %368, %329
  br i1 %369, label %370, label %362, !llvm.loop !196

370:                                              ; preds = %362, %366, %332, %335, %339, %347, %358
  %371 = phi i32 [ %359, %358 ], [ 0, %332 ], [ 0, %339 ], [ 0, %335 ], [ 0, %347 ], [ 1, %366 ], [ 0, %362 ]
  %372 = icmp eq i32 %371, 0
  br i1 %372, label %327, label %373, !llvm.loop !233

373:                                              ; preds = %370, %327
  %374 = call fastcc ptr @ptcache_disk_frame_to_mem(ptr noundef %0, i32 noundef %329)
  br label %378

375:                                              ; preds = %320
  %376 = getelementptr inbounds %struct.PointCache, ptr %270, i64 0, i32 20, i32 1
  %377 = load ptr, ptr %376, align 8, !tbaa !200
  br label %378

378:                                              ; preds = %375, %373, %319
  %379 = phi ptr [ %374, %373 ], [ %377, %375 ], [ null, %319 ]
  %380 = load ptr, ptr %266, align 8, !tbaa !56
  %381 = icmp ne ptr %380, null
  %382 = icmp sgt i32 %273, 0
  %383 = select i1 %381, i1 %382, i1 false
  br i1 %383, label %384, label %491

384:                                              ; preds = %378
  %385 = getelementptr inbounds %struct.PTCacheMem, ptr %275, i64 0, i32 7
  %386 = icmp ne ptr %379, null
  %387 = getelementptr inbounds %struct.PTCacheMem, ptr %379, i64 0, i32 4
  %388 = getelementptr inbounds %struct.PTCacheMem, ptr %379, i64 0, i32 3
  %389 = getelementptr inbounds %struct.PTCacheMem, ptr %379, i64 0, i32 6
  %390 = getelementptr inbounds %struct.PTCacheMem, ptr %379, i64 0, i32 7
  br label %391

391:                                              ; preds = %384, %488
  %392 = phi i32 [ 0, %384 ], [ %489, %488 ]
  %393 = load ptr, ptr %266, align 8, !tbaa !56
  %394 = load ptr, ptr %12, align 8, !tbaa !44
  %395 = call i32 %393(i32 noundef %392, ptr noundef %394, ptr noundef nonnull %385, i32 noundef %1) #22
  %396 = icmp eq i32 %395, 0
  br i1 %396, label %488, label %397

397:                                              ; preds = %391, %407
  %398 = phi i64 [ %408, %407 ], [ 0, %391 ]
  %399 = getelementptr inbounds %struct.PTCacheMem, ptr %275, i64 0, i32 7, i64 %398
  %400 = load ptr, ptr %399, align 8, !tbaa !34
  %401 = icmp eq ptr %400, null
  br i1 %401, label %407, label %402

402:                                              ; preds = %397
  %403 = getelementptr inbounds [8 x i32], ptr @ptcache_data_size, i64 0, i64 %398
  %404 = load i32, ptr %403, align 4, !tbaa !112
  %405 = sext i32 %404 to i64
  %406 = getelementptr inbounds i8, ptr %400, i64 %405
  store ptr %406, ptr %399, align 8, !tbaa !34
  br label %407

407:                                              ; preds = %402, %397
  %408 = add nuw nsw i64 %398, 1
  %409 = icmp eq i64 %408, 8
  br i1 %409, label %410, label %397, !llvm.loop !189

410:                                              ; preds = %407
  %411 = icmp eq i32 %395, 2
  %412 = and i1 %187, %411
  %413 = select i1 %412, i1 %386, i1 false
  br i1 %413, label %414, label %488

414:                                              ; preds = %410
  %415 = load i32, ptr %387, align 8, !tbaa !187
  %416 = load i32, ptr %388, align 4, !tbaa !184
  %417 = icmp eq i32 %416, 0
  br i1 %417, label %458, label %418

418:                                              ; preds = %414
  %419 = load ptr, ptr %389, align 8, !tbaa !34
  %420 = icmp eq ptr %419, null
  br i1 %420, label %458, label %421

421:                                              ; preds = %418
  %422 = add i32 %416, -1
  %423 = load i32, ptr %419, align 4, !tbaa !112
  %424 = icmp ugt i32 %423, %392
  br i1 %424, label %461, label %425

425:                                              ; preds = %421
  %426 = zext i32 %422 to i64
  %427 = getelementptr inbounds i32, ptr %419, i64 %426
  %428 = load i32, ptr %427, align 4, !tbaa !112
  %429 = icmp ult i32 %428, %392
  br i1 %429, label %461, label %430

430:                                              ; preds = %425
  %431 = sub i32 %392, %423
  %432 = icmp ult i32 %431, %422
  br i1 %432, label %433, label %438

433:                                              ; preds = %430
  %434 = zext i32 %431 to i64
  %435 = getelementptr inbounds i32, ptr %419, i64 %434
  %436 = load i32, ptr %435, align 4, !tbaa !112
  %437 = icmp eq i32 %436, %392
  br i1 %437, label %461, label %438

438:                                              ; preds = %433, %430
  br label %439

439:                                              ; preds = %438, %454
  %440 = phi i32 [ %456, %454 ], [ %422, %438 ]
  %441 = phi i32 [ %455, %454 ], [ 0, %438 ]
  %442 = add i32 %441, %440
  %443 = lshr i32 %442, 1
  %444 = zext nneg i32 %443 to i64
  %445 = getelementptr inbounds i32, ptr %419, i64 %444
  %446 = load i32, ptr %445, align 4, !tbaa !112
  %447 = icmp ugt i32 %446, %392
  br i1 %447, label %448, label %450

448:                                              ; preds = %439
  %449 = add nsw i32 %443, -1
  br label %454

450:                                              ; preds = %439
  %451 = icmp ult i32 %446, %392
  br i1 %451, label %452, label %461

452:                                              ; preds = %450
  %453 = add nuw i32 %443, 1
  br label %454

454:                                              ; preds = %452, %448
  %455 = phi i32 [ %441, %448 ], [ %453, %452 ]
  %456 = phi i32 [ %449, %448 ], [ %440, %452 ]
  %457 = icmp ugt i32 %455, %456
  br i1 %457, label %461, label %439, !llvm.loop !186

458:                                              ; preds = %418, %414
  %459 = icmp ugt i32 %416, %392
  %460 = select i1 %459, i32 %392, i32 -1
  br label %461

461:                                              ; preds = %454, %450, %458, %433, %425, %421
  %462 = phi i32 [ %460, %458 ], [ -1, %425 ], [ -1, %421 ], [ %431, %433 ], [ %443, %450 ], [ -1, %454 ]
  %463 = icmp slt i32 %462, 0
  br i1 %463, label %488, label %464

464:                                              ; preds = %461, %478
  %465 = phi i64 [ %481, %478 ], [ 0, %461 ]
  %466 = trunc i64 %465 to i32
  %467 = shl nuw nsw i32 1, %466
  %468 = and i32 %467, %415
  %469 = icmp eq i32 %468, 0
  br i1 %469, label %478, label %470

470:                                              ; preds = %464
  %471 = getelementptr inbounds %struct.PTCacheMem, ptr %379, i64 0, i32 6, i64 %465
  %472 = load ptr, ptr %471, align 8, !tbaa !34
  %473 = getelementptr inbounds [8 x i32], ptr @ptcache_data_size, i64 0, i64 %465
  %474 = load i32, ptr %473, align 4, !tbaa !112
  %475 = mul nsw i32 %474, %462
  %476 = sext i32 %475 to i64
  %477 = getelementptr inbounds i8, ptr %472, i64 %476
  br label %478

478:                                              ; preds = %470, %464
  %479 = phi ptr [ %477, %470 ], [ null, %464 ]
  %480 = getelementptr inbounds %struct.PTCacheMem, ptr %379, i64 0, i32 7, i64 %465
  store ptr %479, ptr %480, align 8, !tbaa !34
  %481 = add nuw nsw i64 %465, 1
  %482 = icmp eq i64 %481, 8
  br i1 %482, label %483, label %464, !llvm.loop !190

483:                                              ; preds = %478
  br i1 %463, label %488, label %484

484:                                              ; preds = %483
  %485 = load ptr, ptr %266, align 8, !tbaa !56
  %486 = load ptr, ptr %12, align 8, !tbaa !44
  %487 = call i32 %485(i32 noundef %392, ptr noundef %486, ptr noundef nonnull %390, i32 noundef %1) #22
  br label %488

488:                                              ; preds = %461, %484, %483, %410, %391
  %489 = add nuw nsw i32 %392, 1
  %490 = icmp eq i32 %489, %273
  br i1 %490, label %491, label %391, !llvm.loop !234

491:                                              ; preds = %488, %378
  %492 = getelementptr inbounds %struct.PTCacheID, ptr %0, i64 0, i32 17
  %493 = load ptr, ptr %492, align 8, !tbaa !86
  %494 = icmp eq ptr %493, null
  br i1 %494, label %497, label %495

495:                                              ; preds = %491
  %496 = load ptr, ptr %12, align 8, !tbaa !44
  call void %493(ptr noundef %496, ptr noundef %275, i32 noundef %1) #22
  br label %497

497:                                              ; preds = %495, %491
  %498 = getelementptr inbounds %struct.PTCacheMem, ptr %275, i64 0, i32 2
  store i32 %1, ptr %498, align 8, !tbaa !195
  %499 = getelementptr inbounds %struct.PointCache, ptr %270, i64 0, i32 2
  %500 = load i32, ptr %499, align 8, !tbaa !191
  %501 = and i32 %500, 64
  %502 = icmp eq i32 %501, 0
  br i1 %502, label %567, label %503

503:                                              ; preds = %497
  %504 = call fastcc i32 @ptcache_mem_frame_to_disk(ptr noundef %0, ptr noundef %275), !range !206
  %505 = getelementptr inbounds %struct.PTCacheMem, ptr %275, i64 0, i32 6
  br label %506

506:                                              ; preds = %503, %513
  %507 = phi i64 [ 0, %503 ], [ %514, %513 ]
  %508 = getelementptr inbounds ptr, ptr %505, i64 %507
  %509 = load ptr, ptr %508, align 8, !tbaa !34
  %510 = icmp eq ptr %509, null
  br i1 %510, label %513, label %511

511:                                              ; preds = %506
  %512 = load ptr, ptr @MEM_freeN, align 8, !tbaa !34
  call void %512(ptr noundef nonnull %509) #22
  br label %513

513:                                              ; preds = %511, %506
  %514 = add nuw nsw i64 %507, 1
  %515 = icmp eq i64 %514, 8
  br i1 %515, label %516, label %506, !llvm.loop !211

516:                                              ; preds = %513
  %517 = xor i32 %504, 1
  %518 = getelementptr inbounds %struct.PTCacheMem, ptr %275, i64 0, i32 8
  %519 = load ptr, ptr %518, align 8, !tbaa !210
  %520 = icmp eq ptr %519, null
  br i1 %520, label %532, label %521

521:                                              ; preds = %516, %528
  %522 = phi ptr [ %529, %528 ], [ %519, %516 ]
  %523 = getelementptr inbounds %struct.PTCacheExtra, ptr %522, i64 0, i32 4
  %524 = load ptr, ptr %523, align 8, !tbaa !111
  %525 = icmp eq ptr %524, null
  br i1 %525, label %528, label %526

526:                                              ; preds = %521
  %527 = load ptr, ptr @MEM_freeN, align 8, !tbaa !34
  call void %527(ptr noundef nonnull %524) #22
  br label %528

528:                                              ; preds = %526, %521
  %529 = load ptr, ptr %522, align 8, !tbaa !212
  %530 = icmp eq ptr %529, null
  br i1 %530, label %531, label %521, !llvm.loop !213

531:                                              ; preds = %528
  call void @BLI_freelistN(ptr noundef nonnull %518) #22
  br label %532

532:                                              ; preds = %531, %516
  %533 = load ptr, ptr @MEM_freeN, align 8, !tbaa !34
  call void %533(ptr noundef %275) #22
  %534 = icmp eq ptr %379, null
  br i1 %534, label %569, label %535

535:                                              ; preds = %532
  %536 = call fastcc i32 @ptcache_mem_frame_to_disk(ptr noundef %0, ptr noundef nonnull %379), !range !206
  %537 = xor i32 %536, 1
  %538 = getelementptr inbounds %struct.PTCacheMem, ptr %379, i64 0, i32 6
  br label %539

539:                                              ; preds = %535, %546
  %540 = phi i64 [ 0, %535 ], [ %547, %546 ]
  %541 = getelementptr inbounds ptr, ptr %538, i64 %540
  %542 = load ptr, ptr %541, align 8, !tbaa !34
  %543 = icmp eq ptr %542, null
  br i1 %543, label %546, label %544

544:                                              ; preds = %539
  %545 = load ptr, ptr @MEM_freeN, align 8, !tbaa !34
  call void %545(ptr noundef nonnull %542) #22
  br label %546

546:                                              ; preds = %544, %539
  %547 = add nuw nsw i64 %540, 1
  %548 = icmp eq i64 %547, 8
  br i1 %548, label %549, label %539, !llvm.loop !211

549:                                              ; preds = %546
  %550 = add nuw nsw i32 %537, %517
  %551 = getelementptr inbounds %struct.PTCacheMem, ptr %379, i64 0, i32 8
  %552 = load ptr, ptr %551, align 8, !tbaa !210
  %553 = icmp eq ptr %552, null
  br i1 %553, label %565, label %554

554:                                              ; preds = %549, %561
  %555 = phi ptr [ %562, %561 ], [ %552, %549 ]
  %556 = getelementptr inbounds %struct.PTCacheExtra, ptr %555, i64 0, i32 4
  %557 = load ptr, ptr %556, align 8, !tbaa !111
  %558 = icmp eq ptr %557, null
  br i1 %558, label %561, label %559

559:                                              ; preds = %554
  %560 = load ptr, ptr @MEM_freeN, align 8, !tbaa !34
  call void %560(ptr noundef nonnull %557) #22
  br label %561

561:                                              ; preds = %559, %554
  %562 = load ptr, ptr %555, align 8, !tbaa !212
  %563 = icmp eq ptr %562, null
  br i1 %563, label %564, label %554, !llvm.loop !213

564:                                              ; preds = %561
  call void @BLI_freelistN(ptr noundef nonnull %551) #22
  br label %565

565:                                              ; preds = %564, %549
  %566 = load ptr, ptr @MEM_freeN, align 8, !tbaa !34
  call void %566(ptr noundef nonnull %379) #22
  br label %569

567:                                              ; preds = %497
  %568 = getelementptr inbounds %struct.PointCache, ptr %270, i64 0, i32 20
  call void @BLI_addtail(ptr noundef nonnull %568, ptr noundef %275) #22
  br label %569

569:                                              ; preds = %532, %565, %567
  %570 = phi i32 [ %550, %565 ], [ %517, %532 ], [ 0, %567 ]
  %571 = icmp eq i32 %570, 0
  %572 = zext i1 %571 to i32
  br label %573

573:                                              ; preds = %218, %214, %263, %259, %251, %265, %569
  %574 = phi i32 [ %572, %569 ], [ 1, %265 ], [ 1, %251 ], [ 1, %259 ], [ 1, %263 ], [ 1, %214 ], [ 1, %218 ]
  %575 = getelementptr inbounds %struct.PointCache, ptr %9, i64 0, i32 8
  %576 = load i32, ptr %575, align 8, !tbaa !214
  %577 = sub i32 %1, %576
  %578 = icmp eq i32 %577, 1
  br i1 %578, label %583, label %579

579:                                              ; preds = %573
  %580 = getelementptr inbounds %struct.PointCache, ptr %9, i64 0, i32 5
  %581 = load i32, ptr %580, align 4, !tbaa !192
  %582 = icmp eq i32 %581, %1
  br i1 %582, label %583, label %587

583:                                              ; preds = %579, %573
  store i32 %1, ptr %575, align 8, !tbaa !214
  %584 = getelementptr inbounds %struct.PointCache, ptr %9, i64 0, i32 2
  %585 = load i32, ptr %584, align 8, !tbaa !191
  %586 = and i32 %585, -257
  store i32 %586, ptr %584, align 8, !tbaa !191
  br label %592

587:                                              ; preds = %579
  br i1 %17, label %603, label %588

588:                                              ; preds = %587
  %589 = getelementptr inbounds %struct.PointCache, ptr %9, i64 0, i32 2
  %590 = load i32, ptr %589, align 8, !tbaa !191
  %591 = or i32 %590, 256
  store i32 %591, ptr %589, align 8, !tbaa !191
  br label %592

592:                                              ; preds = %588, %583
  br i1 %17, label %603, label %593

593:                                              ; preds = %592
  %594 = getelementptr inbounds %struct.PointCache, ptr %9, i64 0, i32 19
  %595 = load ptr, ptr %594, align 8, !tbaa !194
  %596 = icmp eq ptr %595, null
  br i1 %596, label %603, label %597

597:                                              ; preds = %593
  %598 = getelementptr inbounds %struct.PointCache, ptr %9, i64 0, i32 5
  %599 = load i32, ptr %598, align 4, !tbaa !192
  %600 = sub i32 %1, %599
  %601 = zext i32 %600 to i64
  %602 = getelementptr inbounds i8, ptr %595, i64 %601
  store i8 1, ptr %602, align 1, !tbaa !137
  br label %603

603:                                              ; preds = %587, %597, %593, %592
  call void @BKE_ptcache_update_info(ptr noundef %0)
  br label %604

604:                                              ; preds = %186, %2, %18, %22, %603
  %605 = phi i32 [ %574, %603 ], [ 0, %22 ], [ 0, %18 ], [ 0, %2 ], [ 0, %186 ]
  ret i32 %605
}

; Function Attrs: nounwind uwtable
define dso_local void @BKE_ptcache_update_info(ptr nocapture noundef %0) local_unnamed_addr #0 {
  %2 = alloca [2048 x i8], align 16
  %3 = alloca [2048 x i8], align 16
  %4 = alloca [64 x i8], align 16
  %5 = getelementptr inbounds %struct.PTCacheID, ptr %0, i64 0, i32 25
  %6 = load ptr, ptr %5, align 8, !tbaa !50
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %4) #22
  %7 = getelementptr inbounds %struct.PointCache, ptr %6, i64 0, i32 2
  %8 = load i32, ptr %7, align 8, !tbaa !191
  %9 = and i32 %8, 512
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %86, label %11

11:                                               ; preds = %1
  %12 = getelementptr inbounds %struct.PointCache, ptr %6, i64 0, i32 5
  %13 = load i32, ptr %12, align 4, !tbaa !192
  %14 = getelementptr inbounds %struct.PointCache, ptr %6, i64 0, i32 6
  %15 = load i32, ptr %14, align 8, !tbaa !193
  %16 = icmp sgt i32 %13, %15
  br i1 %16, label %65, label %17

17:                                               ; preds = %11, %57
  %18 = phi i32 [ %61, %57 ], [ 0, %11 ]
  %19 = phi i32 [ %62, %57 ], [ %13, %11 ]
  %20 = load ptr, ptr %5, align 8, !tbaa !50
  %21 = icmp eq ptr %20, null
  br i1 %21, label %57, label %22

22:                                               ; preds = %17
  %23 = getelementptr inbounds %struct.PointCache, ptr %20, i64 0, i32 5
  %24 = load i32, ptr %23, align 4, !tbaa !192
  %25 = icmp sgt i32 %24, %19
  br i1 %25, label %57, label %26

26:                                               ; preds = %22
  %27 = getelementptr inbounds %struct.PointCache, ptr %20, i64 0, i32 6
  %28 = load i32, ptr %27, align 8, !tbaa !193
  %29 = icmp slt i32 %28, %19
  br i1 %29, label %57, label %30

30:                                               ; preds = %26
  %31 = getelementptr inbounds %struct.PointCache, ptr %20, i64 0, i32 19
  %32 = load ptr, ptr %31, align 8, !tbaa !194
  %33 = icmp eq ptr %32, null
  br i1 %33, label %40, label %34

34:                                               ; preds = %30
  %35 = sub nsw i32 %19, %24
  %36 = sext i32 %35 to i64
  %37 = getelementptr inbounds i8, ptr %32, i64 %36
  %38 = load i8, ptr %37, align 1, !tbaa !137
  %39 = icmp eq i8 %38, 0
  br i1 %39, label %57, label %40

40:                                               ; preds = %34, %30
  %41 = getelementptr inbounds %struct.PointCache, ptr %20, i64 0, i32 2
  %42 = load i32, ptr %41, align 8, !tbaa !191
  %43 = and i32 %42, 64
  %44 = icmp eq i32 %43, 0
  br i1 %44, label %47, label %45

45:                                               ; preds = %40
  call void @llvm.lifetime.start.p0(i64 2048, ptr nonnull %3) #22
  call fastcc void @ptcache_filename(ptr noundef %0, ptr noundef nonnull %3, i32 noundef %19, i16 noundef signext 1, i16 noundef signext 1)
  %46 = call i32 @BLI_exists(ptr noundef nonnull %3) #22
  call void @llvm.lifetime.end.p0(i64 2048, ptr nonnull %3) #22
  br label %57

47:                                               ; preds = %40
  %48 = getelementptr inbounds %struct.PointCache, ptr %20, i64 0, i32 20
  br label %49

49:                                               ; preds = %53, %47
  %50 = phi ptr [ %48, %47 ], [ %51, %53 ]
  %51 = load ptr, ptr %50, align 8, !tbaa !34
  %52 = icmp eq ptr %51, null
  br i1 %52, label %57, label %53

53:                                               ; preds = %49
  %54 = getelementptr inbounds %struct.PTCacheMem, ptr %51, i64 0, i32 2
  %55 = load i32, ptr %54, align 8, !tbaa !195
  %56 = icmp eq i32 %55, %19
  br i1 %56, label %57, label %49, !llvm.loop !196

57:                                               ; preds = %49, %53, %17, %22, %26, %34, %45
  %58 = phi i32 [ %46, %45 ], [ 0, %17 ], [ 0, %26 ], [ 0, %22 ], [ 0, %34 ], [ 1, %53 ], [ 0, %49 ]
  %59 = icmp ne i32 %58, 0
  %60 = zext i1 %59 to i32
  %61 = add nuw nsw i32 %18, %60
  %62 = add nsw i32 %19, 1
  %63 = load i32, ptr %14, align 8, !tbaa !193
  %64 = icmp slt i32 %19, %63
  br i1 %64, label %17, label %65, !llvm.loop !235

65:                                               ; preds = %57, %11
  %66 = phi i32 [ 0, %11 ], [ %61, %57 ]
  %67 = getelementptr inbounds %struct.PTCacheID, ptr %0, i64 0, i32 5
  %68 = load i32, ptr %67, align 8, !tbaa !45
  %69 = icmp eq i32 %68, 3
  %70 = icmp ne i32 %66, 0
  %71 = select i1 %69, i1 %70, i1 false
  br i1 %71, label %72, label %75

72:                                               ; preds = %65
  %73 = getelementptr inbounds %struct.PointCache, ptr %6, i64 0, i32 17
  %74 = call i64 (ptr, i64, ptr, ...) @BLI_snprintf(ptr noundef nonnull %73, i64 noundef 64, ptr noundef nonnull @.str.10, i32 noundef %66) #22
  br label %230

75:                                               ; preds = %65
  br i1 %70, label %76, label %83

76:                                               ; preds = %75
  %77 = getelementptr inbounds %struct.PointCache, ptr %6, i64 0, i32 11
  %78 = load i32, ptr %77, align 4, !tbaa !236
  %79 = icmp eq i32 %78, 0
  br i1 %79, label %83, label %80

80:                                               ; preds = %76
  %81 = getelementptr inbounds %struct.PointCache, ptr %6, i64 0, i32 17
  %82 = call i64 (ptr, i64, ptr, ...) @BLI_snprintf(ptr noundef nonnull %81, i64 noundef 64, ptr noundef nonnull @.str.11, i32 noundef %78) #22
  br label %230

83:                                               ; preds = %76, %75
  %84 = getelementptr inbounds %struct.PointCache, ptr %6, i64 0, i32 17
  %85 = call ptr @BLI_strncpy(ptr noundef nonnull %84, ptr noundef nonnull @.str.12, i64 noundef 64) #22
  br label %230

86:                                               ; preds = %1
  %87 = and i32 %8, 64
  %88 = icmp eq i32 %87, 0
  br i1 %88, label %163, label %89

89:                                               ; preds = %86
  %90 = getelementptr inbounds %struct.PTCacheID, ptr %0, i64 0, i32 5
  %91 = load i32, ptr %90, align 8, !tbaa !45
  %92 = icmp eq i32 %91, 3
  br i1 %92, label %93, label %106

93:                                               ; preds = %89
  %94 = getelementptr inbounds %struct.PTCacheID, ptr %0, i64 0, i32 20
  %95 = load ptr, ptr %94, align 8, !tbaa !54
  %96 = getelementptr inbounds %struct.PTCacheID, ptr %0, i64 0, i32 4
  %97 = load ptr, ptr %96, align 8, !tbaa !44
  %98 = tail call i32 %95(ptr noundef %97, i32 noundef 0) #22
  %99 = getelementptr inbounds %struct.PointCache, ptr %6, i64 0, i32 11
  %100 = load i32, ptr %99, align 4, !tbaa !236
  %101 = icmp sgt i32 %100, %98
  br i1 %101, label %102, label %104

102:                                              ; preds = %93
  %103 = call i64 (ptr, i64, ptr, ...) @BLI_snprintf(ptr noundef nonnull %4, i64 noundef 64, ptr noundef nonnull @.str.13, i32 noundef %98) #22
  br label %213

104:                                              ; preds = %93
  %105 = call i64 (ptr, i64, ptr, ...) @BLI_snprintf(ptr noundef nonnull %4, i64 noundef 64, ptr noundef nonnull @.str.14, i32 noundef %98) #22
  br label %213

106:                                              ; preds = %89
  %107 = getelementptr inbounds %struct.PointCache, ptr %6, i64 0, i32 5
  %108 = load i32, ptr %107, align 4, !tbaa !192
  %109 = getelementptr inbounds %struct.PointCache, ptr %6, i64 0, i32 6
  %110 = load i32, ptr %109, align 8, !tbaa !193
  %111 = icmp sgt i32 %108, %110
  br i1 %111, label %160, label %112

112:                                              ; preds = %106, %152
  %113 = phi i32 [ %157, %152 ], [ %108, %106 ]
  %114 = phi i32 [ %156, %152 ], [ 0, %106 ]
  %115 = load ptr, ptr %5, align 8, !tbaa !50
  %116 = icmp eq ptr %115, null
  br i1 %116, label %152, label %117

117:                                              ; preds = %112
  %118 = getelementptr inbounds %struct.PointCache, ptr %115, i64 0, i32 5
  %119 = load i32, ptr %118, align 4, !tbaa !192
  %120 = icmp sgt i32 %119, %113
  br i1 %120, label %152, label %121

121:                                              ; preds = %117
  %122 = getelementptr inbounds %struct.PointCache, ptr %115, i64 0, i32 6
  %123 = load i32, ptr %122, align 8, !tbaa !193
  %124 = icmp slt i32 %123, %113
  br i1 %124, label %152, label %125

125:                                              ; preds = %121
  %126 = getelementptr inbounds %struct.PointCache, ptr %115, i64 0, i32 19
  %127 = load ptr, ptr %126, align 8, !tbaa !194
  %128 = icmp eq ptr %127, null
  br i1 %128, label %135, label %129

129:                                              ; preds = %125
  %130 = sub nsw i32 %113, %119
  %131 = sext i32 %130 to i64
  %132 = getelementptr inbounds i8, ptr %127, i64 %131
  %133 = load i8, ptr %132, align 1, !tbaa !137
  %134 = icmp eq i8 %133, 0
  br i1 %134, label %152, label %135

135:                                              ; preds = %129, %125
  %136 = getelementptr inbounds %struct.PointCache, ptr %115, i64 0, i32 2
  %137 = load i32, ptr %136, align 8, !tbaa !191
  %138 = and i32 %137, 64
  %139 = icmp eq i32 %138, 0
  br i1 %139, label %142, label %140

140:                                              ; preds = %135
  call void @llvm.lifetime.start.p0(i64 2048, ptr nonnull %2) #22
  call fastcc void @ptcache_filename(ptr noundef %0, ptr noundef nonnull %2, i32 noundef %113, i16 noundef signext 1, i16 noundef signext 1)
  %141 = call i32 @BLI_exists(ptr noundef nonnull %2) #22
  call void @llvm.lifetime.end.p0(i64 2048, ptr nonnull %2) #22
  br label %152

142:                                              ; preds = %135
  %143 = getelementptr inbounds %struct.PointCache, ptr %115, i64 0, i32 20
  br label %144

144:                                              ; preds = %148, %142
  %145 = phi ptr [ %143, %142 ], [ %146, %148 ]
  %146 = load ptr, ptr %145, align 8, !tbaa !34
  %147 = icmp eq ptr %146, null
  br i1 %147, label %152, label %148

148:                                              ; preds = %144
  %149 = getelementptr inbounds %struct.PTCacheMem, ptr %146, i64 0, i32 2
  %150 = load i32, ptr %149, align 8, !tbaa !195
  %151 = icmp eq i32 %150, %113
  br i1 %151, label %152, label %144, !llvm.loop !196

152:                                              ; preds = %144, %148, %112, %117, %121, %129, %140
  %153 = phi i32 [ %141, %140 ], [ 0, %112 ], [ 0, %121 ], [ 0, %117 ], [ 0, %129 ], [ 1, %148 ], [ 0, %144 ]
  %154 = icmp ne i32 %153, 0
  %155 = zext i1 %154 to i32
  %156 = add nuw nsw i32 %114, %155
  %157 = add nsw i32 %113, 1
  %158 = load i32, ptr %109, align 8, !tbaa !193
  %159 = icmp slt i32 %113, %158
  br i1 %159, label %112, label %160, !llvm.loop !237

160:                                              ; preds = %152, %106
  %161 = phi i32 [ 0, %106 ], [ %156, %152 ]
  %162 = call i64 (ptr, i64, ptr, ...) @BLI_snprintf(ptr noundef nonnull %4, i64 noundef 64, ptr noundef nonnull @.str.15, i32 noundef %161) #22
  br label %213

163:                                              ; preds = %86
  %164 = getelementptr inbounds %struct.PointCache, ptr %6, i64 0, i32 20
  %165 = load ptr, ptr %164, align 8, !tbaa !34
  %166 = icmp eq ptr %165, null
  br i1 %166, label %204, label %167

167:                                              ; preds = %163, %198
  %168 = phi ptr [ %202, %198 ], [ %165, %163 ]
  %169 = phi float [ %200, %198 ], [ 0.000000e+00, %163 ]
  %170 = phi i32 [ %201, %198 ], [ 0, %163 ]
  br label %171

171:                                              ; preds = %167, %171
  %172 = phi i64 [ 0, %167 ], [ %180, %171 ]
  %173 = phi float [ %169, %167 ], [ %179, %171 ]
  %174 = load ptr, ptr @MEM_allocN_len, align 8, !tbaa !34
  %175 = getelementptr inbounds %struct.PTCacheMem, ptr %168, i64 0, i32 6, i64 %172
  %176 = load ptr, ptr %175, align 8, !tbaa !34
  %177 = tail call i64 %174(ptr noundef %176) #22
  %178 = uitofp i64 %177 to float
  %179 = fadd float %173, %178
  %180 = add nuw nsw i64 %172, 1
  %181 = icmp eq i64 %180, 8
  br i1 %181, label %182, label %171, !llvm.loop !238

182:                                              ; preds = %171
  %183 = getelementptr inbounds %struct.PTCacheMem, ptr %168, i64 0, i32 8
  %184 = load ptr, ptr %183, align 8, !tbaa !34
  %185 = icmp eq ptr %184, null
  br i1 %185, label %198, label %186

186:                                              ; preds = %182, %186
  %187 = phi ptr [ %196, %186 ], [ %184, %182 ]
  %188 = phi float [ %195, %186 ], [ %179, %182 ]
  %189 = load ptr, ptr @MEM_allocN_len, align 8, !tbaa !34
  %190 = getelementptr inbounds %struct.PTCacheExtra, ptr %187, i64 0, i32 4
  %191 = load ptr, ptr %190, align 8, !tbaa !111
  %192 = tail call i64 %189(ptr noundef %191) #22
  %193 = uitofp i64 %192 to float
  %194 = fadd float %188, %193
  %195 = fadd float %194, 3.200000e+01
  %196 = load ptr, ptr %187, align 8, !tbaa !34
  %197 = icmp eq ptr %196, null
  br i1 %197, label %198, label %186, !llvm.loop !239

198:                                              ; preds = %186, %182
  %199 = phi float [ %179, %182 ], [ %195, %186 ]
  %200 = fadd float %199, 1.760000e+02
  %201 = add nuw nsw i32 %170, 1
  %202 = load ptr, ptr %168, align 8, !tbaa !34
  %203 = icmp eq ptr %202, null
  br i1 %203, label %204, label %167, !llvm.loop !240

204:                                              ; preds = %198, %163
  %205 = phi i32 [ 0, %163 ], [ %201, %198 ]
  %206 = phi float [ 0.000000e+00, %163 ], [ %200, %198 ]
  %207 = fcmp ogt float %206, 0x4130000000000000
  %208 = select i1 %207, float 0x4130000000000000, float 1.024000e+03
  %209 = fdiv float %206, %208
  %210 = fpext float %209 to double
  %211 = select i1 %207, ptr @.str.17, ptr @.str.18
  %212 = call i64 (ptr, i64, ptr, ...) @BLI_snprintf(ptr noundef nonnull %4, i64 noundef 64, ptr noundef nonnull @.str.16, i32 noundef %205, double noundef %210, ptr noundef nonnull %211) #22
  br label %213

213:                                              ; preds = %102, %104, %160, %204
  %214 = load i32, ptr %7, align 8, !tbaa !191
  %215 = and i32 %214, 2
  %216 = icmp eq i32 %215, 0
  br i1 %216, label %220, label %217

217:                                              ; preds = %213
  %218 = getelementptr inbounds %struct.PointCache, ptr %6, i64 0, i32 17
  %219 = call i64 (ptr, i64, ptr, ...) @BLI_snprintf(ptr noundef nonnull %218, i64 noundef 64, ptr noundef nonnull @.str.19, ptr noundef nonnull %4) #22
  br label %230

220:                                              ; preds = %213
  %221 = and i32 %214, 256
  %222 = icmp eq i32 %221, 0
  %223 = getelementptr inbounds %struct.PointCache, ptr %6, i64 0, i32 17
  br i1 %222, label %228, label %224

224:                                              ; preds = %220
  %225 = getelementptr inbounds %struct.PointCache, ptr %6, i64 0, i32 8
  %226 = load i32, ptr %225, align 8, !tbaa !214
  %227 = call i64 (ptr, i64, ptr, ...) @BLI_snprintf(ptr noundef nonnull %223, i64 noundef 64, ptr noundef nonnull @.str.20, ptr noundef nonnull %4, i32 noundef %226) #22
  br label %230

228:                                              ; preds = %220
  %229 = call i64 (ptr, i64, ptr, ...) @BLI_snprintf(ptr noundef nonnull %223, i64 noundef 64, ptr noundef nonnull @.str.21, ptr noundef nonnull %4) #22
  br label %230

230:                                              ; preds = %217, %228, %224, %72, %83, %80
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %4) #22
  ret void
}

; Function Attrs: nounwind uwtable
define internal fastcc i32 @ptcache_path(ptr nocapture noundef readonly %0, ptr noundef %1) unnamed_addr #0 {
  %3 = alloca [1024 x i8], align 16
  %4 = getelementptr inbounds %struct.PTCacheID, ptr %0, i64 0, i32 3
  %5 = load ptr, ptr %4, align 8, !tbaa !41
  %6 = icmp eq ptr %5, null
  br i1 %6, label %10, label %7

7:                                                ; preds = %2
  %8 = getelementptr inbounds %struct.ID, ptr %5, i64 0, i32 3
  %9 = load ptr, ptr %8, align 8, !tbaa !241
  br label %10

10:                                               ; preds = %2, %7
  %11 = phi ptr [ %9, %7 ], [ null, %2 ]
  %12 = icmp ne ptr %11, null
  br i1 %12, label %13, label %22

13:                                               ; preds = %10
  %14 = getelementptr inbounds %struct.PTCacheID, ptr %0, i64 0, i32 25
  %15 = load ptr, ptr %14, align 8, !tbaa !50
  %16 = getelementptr inbounds %struct.PointCache, ptr %15, i64 0, i32 2
  %17 = load i32, ptr %16, align 8, !tbaa !191
  %18 = and i32 %17, 2048
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %20, label %22

20:                                               ; preds = %13
  %21 = getelementptr inbounds %struct.Library, ptr %11, i64 0, i32 4
  br label %25

22:                                               ; preds = %13, %10
  %23 = load ptr, ptr @G, align 8, !tbaa !176
  %24 = getelementptr inbounds %struct.Main, ptr %23, i64 0, i32 2
  br label %25

25:                                               ; preds = %22, %20
  %26 = phi ptr [ %21, %20 ], [ %24, %22 ]
  %27 = getelementptr inbounds %struct.PTCacheID, ptr %0, i64 0, i32 25
  %28 = load ptr, ptr %27, align 8, !tbaa !50
  %29 = getelementptr inbounds %struct.PointCache, ptr %28, i64 0, i32 2
  %30 = load i32, ptr %29, align 8, !tbaa !191
  %31 = and i32 %30, 512
  %32 = icmp eq i32 %31, 0
  br i1 %32, label %42, label %33

33:                                               ; preds = %25
  %34 = getelementptr inbounds %struct.PointCache, ptr %28, i64 0, i32 18
  %35 = tail call ptr @strcpy(ptr noundef nonnull dereferenceable(1) %1, ptr noundef nonnull dereferenceable(1) %34) #22
  %36 = tail call zeroext i8 @BLI_path_is_rel(ptr noundef %1) #22
  %37 = icmp eq i8 %36, 0
  br i1 %37, label %40, label %38

38:                                               ; preds = %33
  %39 = tail call zeroext i8 @BLI_path_abs(ptr noundef %1, ptr noundef nonnull %26) #22
  br label %40

40:                                               ; preds = %38, %33
  %41 = tail call i32 @BLI_add_slash(ptr noundef %1) #22
  br label %60

42:                                               ; preds = %25
  %43 = load i8, ptr getelementptr inbounds (%struct.Global, ptr @G, i64 0, i32 3), align 8, !tbaa !217
  %44 = icmp ne i8 %43, 0
  %45 = or i1 %12, %44
  br i1 %45, label %46, label %56

46:                                               ; preds = %42
  call void @llvm.lifetime.start.p0(i64 1024, ptr nonnull %3) #22
  call void @BLI_split_file_part(ptr noundef nonnull %26, ptr noundef nonnull %3, i64 noundef 1024) #22
  %47 = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %3) #23
  %48 = icmp ugt i64 %47, 6
  br i1 %48, label %49, label %52

49:                                               ; preds = %46
  %50 = add i64 %47, -6
  %51 = getelementptr inbounds [1024 x i8], ptr %3, i64 0, i64 %50
  store i8 0, ptr %51, align 1, !tbaa !137
  br label %52

52:                                               ; preds = %49, %46
  %53 = call i64 (ptr, i64, ptr, ...) @BLI_snprintf(ptr noundef %1, i64 noundef 1024, ptr noundef nonnull @.str.41, ptr noundef nonnull %3) #22
  %54 = call zeroext i8 @BLI_path_abs(ptr noundef %1, ptr noundef nonnull %26) #22
  %55 = call i32 @BLI_add_slash(ptr noundef %1) #22
  call void @llvm.lifetime.end.p0(i64 1024, ptr nonnull %3) #22
  br label %60

56:                                               ; preds = %42
  %57 = tail call ptr @BLI_temp_dir_session() #22
  %58 = tail call i64 (ptr, i64, ptr, ...) @BLI_snprintf(ptr noundef %1, i64 noundef 1024, ptr noundef nonnull @.str.42, ptr noundef %57) #22
  %59 = tail call i32 @BLI_add_slash(ptr noundef %1) #22
  br label %60

60:                                               ; preds = %56, %52, %40
  %61 = phi i32 [ %41, %40 ], [ %55, %52 ], [ %59, %56 ]
  ret i32 %61
}

; Function Attrs: nounwind uwtable
define internal fastcc void @ptcache_filename(ptr nocapture noundef %0, ptr noundef %1, i32 noundef %2, i16 noundef signext %3, i16 noundef signext %4) unnamed_addr #0 {
  store i8 0, ptr %1, align 1, !tbaa !137
  %6 = load i8, ptr getelementptr inbounds (%struct.Global, ptr @G, i64 0, i32 3), align 8, !tbaa !217
  %7 = icmp eq i8 %6, 0
  br i1 %7, label %8, label %15

8:                                                ; preds = %5
  %9 = getelementptr inbounds %struct.PTCacheID, ptr %0, i64 0, i32 25
  %10 = load ptr, ptr %9, align 8, !tbaa !50
  %11 = getelementptr inbounds %struct.PointCache, ptr %10, i64 0, i32 2
  %12 = load i32, ptr %11, align 8, !tbaa !191
  %13 = and i32 %12, 512
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %90, label %15

15:                                               ; preds = %8, %5
  %16 = icmp eq i16 %3, 0
  br i1 %16, label %21, label %17

17:                                               ; preds = %15
  %18 = tail call fastcc i32 @ptcache_path(ptr noundef %0, ptr noundef nonnull %1)
  %19 = sext i32 %18 to i64
  %20 = getelementptr inbounds i8, ptr %1, i64 %19
  br label %21

21:                                               ; preds = %17, %15
  %22 = phi ptr [ %20, %17 ], [ %1, %15 ]
  %23 = getelementptr inbounds %struct.PTCacheID, ptr %0, i64 0, i32 25
  %24 = load ptr, ptr %23, align 8, !tbaa !50
  %25 = getelementptr inbounds %struct.PointCache, ptr %24, i64 0, i32 15
  %26 = load i8, ptr %25, align 8, !tbaa !137
  %27 = icmp eq i8 %26, 0
  br i1 %27, label %28, label %49

28:                                               ; preds = %21
  %29 = getelementptr inbounds %struct.PointCache, ptr %24, i64 0, i32 2
  %30 = load i32, ptr %29, align 8, !tbaa !191
  %31 = and i32 %30, 512
  %32 = icmp eq i32 %31, 0
  br i1 %32, label %33, label %49

33:                                               ; preds = %28
  %34 = getelementptr inbounds %struct.PTCacheID, ptr %0, i64 0, i32 3
  %35 = load ptr, ptr %34, align 8, !tbaa !41
  %36 = getelementptr inbounds %struct.ID, ptr %35, i64 0, i32 4, i64 2
  %37 = load i8, ptr %36, align 1, !tbaa !137
  %38 = icmp eq i8 %37, 0
  br i1 %38, label %55, label %39

39:                                               ; preds = %33, %39
  %40 = phi i8 [ %47, %39 ], [ %37, %33 ]
  %41 = phi ptr [ %46, %39 ], [ %22, %33 ]
  %42 = phi ptr [ %44, %39 ], [ %36, %33 ]
  %43 = zext i8 %40 to i32
  %44 = getelementptr inbounds i8, ptr %42, i64 1
  %45 = tail call i64 (ptr, i64, ptr, ...) @BLI_snprintf(ptr noundef %41, i64 noundef 2048, ptr noundef nonnull @.str.43, i32 noundef %43) #22
  %46 = getelementptr inbounds i8, ptr %41, i64 2
  %47 = load i8, ptr %44, align 1, !tbaa !137
  %48 = icmp eq i8 %47, 0
  br i1 %48, label %55, label %39, !llvm.loop !224

49:                                               ; preds = %28, %21
  %50 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %25) #23
  %51 = tail call ptr @strcpy(ptr noundef nonnull dereferenceable(1) %22, ptr noundef nonnull dereferenceable(1) %25) #22
  %52 = shl i64 %50, 32
  %53 = ashr exact i64 %52, 32
  %54 = getelementptr inbounds i8, ptr %22, i64 %53
  br label %55

55:                                               ; preds = %39, %33, %49
  %56 = phi ptr [ %54, %49 ], [ %22, %33 ], [ %46, %39 ]
  %57 = icmp eq i16 %4, 0
  br i1 %57, label %90, label %58

58:                                               ; preds = %55
  %59 = load ptr, ptr %23, align 8, !tbaa !50
  %60 = getelementptr inbounds %struct.PointCache, ptr %59, i64 0, i32 12
  %61 = load i32, ptr %60, align 8, !tbaa !63
  %62 = icmp slt i32 %61, 0
  br i1 %62, label %63, label %70

63:                                               ; preds = %58
  %64 = getelementptr inbounds %struct.PTCacheID, ptr %0, i64 0, i32 3
  %65 = load ptr, ptr %64, align 8, !tbaa !41
  %66 = tail call i32 @BKE_object_insert_ptcache(ptr noundef %65) #22
  %67 = getelementptr inbounds %struct.PTCacheID, ptr %0, i64 0, i32 6
  store i32 %66, ptr %67, align 4, !tbaa !65
  %68 = load ptr, ptr %23, align 8, !tbaa !50
  %69 = getelementptr inbounds %struct.PointCache, ptr %68, i64 0, i32 12
  store i32 %66, ptr %69, align 8, !tbaa !63
  br label %70

70:                                               ; preds = %63, %58
  %71 = load ptr, ptr %23, align 8, !tbaa !50
  %72 = getelementptr inbounds %struct.PointCache, ptr %71, i64 0, i32 2
  %73 = load i32, ptr %72, align 8, !tbaa !191
  %74 = and i32 %73, 512
  %75 = icmp eq i32 %74, 0
  br i1 %75, label %86, label %76

76:                                               ; preds = %70
  %77 = getelementptr inbounds %struct.PointCache, ptr %71, i64 0, i32 12
  %78 = load i32, ptr %77, align 8, !tbaa !63
  %79 = icmp sgt i32 %78, -1
  br i1 %79, label %80, label %84

80:                                               ; preds = %76
  %81 = getelementptr inbounds %struct.PTCacheID, ptr %0, i64 0, i32 6
  %82 = load i32, ptr %81, align 4, !tbaa !65
  %83 = tail call i64 (ptr, i64, ptr, ...) @BLI_snprintf(ptr noundef %56, i64 noundef 2048, ptr noundef nonnull @.str.44, i32 noundef %2, i32 noundef %82) #22
  br label %90

84:                                               ; preds = %76
  %85 = tail call i64 (ptr, i64, ptr, ...) @BLI_snprintf(ptr noundef %56, i64 noundef 2048, ptr noundef nonnull @.str.45, i32 noundef %2) #22
  br label %90

86:                                               ; preds = %70
  %87 = getelementptr inbounds %struct.PTCacheID, ptr %0, i64 0, i32 6
  %88 = load i32, ptr %87, align 4, !tbaa !65
  %89 = tail call i64 (ptr, i64, ptr, ...) @BLI_snprintf(ptr noundef %56, i64 noundef 2048, ptr noundef nonnull @.str.44, i32 noundef %2, i32 noundef %88) #22
  br label %90

90:                                               ; preds = %86, %84, %80, %55, %8
  ret void
}

; Function Attrs: nofree nounwind
declare noalias noundef ptr @opendir(ptr nocapture noundef readonly) local_unnamed_addr #12

declare i64 @BLI_snprintf(ptr noundef, i64 noundef, ptr noundef, ...) local_unnamed_addr #2

declare ptr @readdir(ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read)
declare ptr @strstr(ptr noundef, ptr nocapture noundef) local_unnamed_addr #15

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read)
declare i32 @strncmp(ptr nocapture noundef, ptr nocapture noundef, i64 noundef) local_unnamed_addr #15

declare void @BLI_join_dirfile(ptr noundef, i64 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare i32 @BLI_delete(ptr noundef, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read)
declare i64 @strlen(ptr nocapture noundef) local_unnamed_addr #15

declare ptr @BLI_strncpy(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: nofree nounwind
declare noundef i32 @closedir(ptr nocapture noundef) local_unnamed_addr #12

declare void @BLI_freelistN(ptr noundef) local_unnamed_addr #2

declare void @BLI_freelinkN(ptr noundef, ptr noundef) local_unnamed_addr #2

declare i32 @BLI_exists(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local void @BKE_ptcache_id_time(ptr nocapture noundef readonly %0, ptr noundef %1, float %2, ptr noundef writeonly %3, ptr noundef writeonly %4, ptr noundef writeonly %5) local_unnamed_addr #0 {
  %7 = alloca [1024 x i8], align 16
  %8 = alloca [2048 x i8], align 16
  %9 = alloca [1024 x i8], align 16
  %10 = alloca [7 x i8], align 1
  %11 = getelementptr inbounds %struct.PTCacheID, ptr %0, i64 0, i32 25
  %12 = load ptr, ptr %11, align 8, !tbaa !50
  %13 = icmp eq ptr %5, null
  br i1 %13, label %24, label %14

14:                                               ; preds = %6
  %15 = tail call float @BKE_scene_frame_get(ptr noundef %1) #22
  %16 = getelementptr inbounds %struct.Scene, ptr %1, i64 0, i32 22, i32 5
  %17 = load i32, ptr %16, align 8, !tbaa !242
  %18 = sitofp i32 %17 to float
  %19 = fadd float %18, 1.000000e+00
  %20 = tail call float @BKE_scene_frame_get_from_ctime(ptr noundef %1, float noundef %19) #22
  %21 = fsub float %20, %15
  %22 = fcmp ogt float %21, 0.000000e+00
  %23 = select i1 %22, float %21, float 0.000000e+00
  store float %23, ptr %5, align 4, !tbaa !70
  br label %24

24:                                               ; preds = %14, %6
  %25 = icmp ne ptr %3, null
  %26 = icmp ne ptr %4, null
  %27 = and i1 %25, %26
  br i1 %27, label %28, label %33

28:                                               ; preds = %24
  %29 = getelementptr inbounds %struct.PointCache, ptr %12, i64 0, i32 5
  %30 = load i32, ptr %29, align 4, !tbaa !192
  store i32 %30, ptr %3, align 4, !tbaa !112
  %31 = getelementptr inbounds %struct.PointCache, ptr %12, i64 0, i32 6
  %32 = load i32, ptr %31, align 8, !tbaa !193
  store i32 %32, ptr %4, align 4, !tbaa !112
  br label %33

33:                                               ; preds = %28, %24
  %34 = getelementptr inbounds %struct.PointCache, ptr %12, i64 0, i32 19
  %35 = load ptr, ptr %34, align 8, !tbaa !194
  %36 = icmp eq ptr %35, null
  br i1 %36, label %51, label %37

37:                                               ; preds = %33
  %38 = load ptr, ptr @MEM_allocN_len, align 8, !tbaa !34
  %39 = tail call i64 %38(ptr noundef nonnull %35) #22
  %40 = getelementptr inbounds %struct.PointCache, ptr %12, i64 0, i32 6
  %41 = load i32, ptr %40, align 8, !tbaa !193
  %42 = getelementptr inbounds %struct.PointCache, ptr %12, i64 0, i32 5
  %43 = load i32, ptr %42, align 4, !tbaa !192
  %44 = add i32 %41, 1
  %45 = sub i32 %44, %43
  %46 = sext i32 %45 to i64
  %47 = icmp eq i64 %39, %46
  br i1 %47, label %51, label %48

48:                                               ; preds = %37
  %49 = load ptr, ptr @MEM_freeN, align 8, !tbaa !34
  %50 = load ptr, ptr %34, align 8, !tbaa !194
  tail call void %49(ptr noundef %50) #22
  store ptr null, ptr %34, align 8, !tbaa !194
  br label %51

51:                                               ; preds = %37, %48, %33
  %52 = load ptr, ptr %34, align 8, !tbaa !194
  %53 = icmp eq ptr %52, null
  br i1 %53, label %54, label %178

54:                                               ; preds = %51
  %55 = getelementptr inbounds %struct.PointCache, ptr %12, i64 0, i32 6
  %56 = load i32, ptr %55, align 8, !tbaa !193
  %57 = getelementptr inbounds %struct.PointCache, ptr %12, i64 0, i32 5
  %58 = load i32, ptr %57, align 4, !tbaa !192
  %59 = icmp sgt i32 %56, %58
  br i1 %59, label %60, label %178

60:                                               ; preds = %54
  %61 = load ptr, ptr @MEM_callocN, align 8, !tbaa !34
  %62 = add i32 %56, 1
  %63 = sub i32 %62, %58
  %64 = sext i32 %63 to i64
  %65 = tail call ptr %61(i64 noundef %64, ptr noundef nonnull @.str.3) #22
  store ptr %65, ptr %34, align 8, !tbaa !194
  %66 = load ptr, ptr %11, align 8, !tbaa !50
  %67 = getelementptr inbounds %struct.PointCache, ptr %66, i64 0, i32 2
  %68 = load i32, ptr %67, align 8, !tbaa !191
  %69 = and i32 %68, 64
  %70 = icmp eq i32 %69, 0
  br i1 %70, label %158, label %71

71:                                               ; preds = %60
  call void @llvm.lifetime.start.p0(i64 1024, ptr nonnull %7) #22
  call void @llvm.lifetime.start.p0(i64 2048, ptr nonnull %8) #22
  call void @llvm.lifetime.start.p0(i64 1024, ptr nonnull %9) #22
  %72 = call fastcc i32 @ptcache_path(ptr noundef %0, ptr noundef nonnull %7)
  store i8 0, ptr %8, align 16, !tbaa !137
  %73 = load i8, ptr getelementptr inbounds (%struct.Global, ptr @G, i64 0, i32 3), align 8, !tbaa !217
  %74 = icmp eq i8 %73, 0
  br i1 %74, label %75, label %81

75:                                               ; preds = %71
  %76 = load ptr, ptr %11, align 8, !tbaa !50
  %77 = getelementptr inbounds %struct.PointCache, ptr %76, i64 0, i32 2
  %78 = load i32, ptr %77, align 8, !tbaa !191
  %79 = and i32 %78, 512
  %80 = icmp eq i32 %79, 0
  br i1 %80, label %113, label %81

81:                                               ; preds = %75, %71
  %82 = load ptr, ptr %11, align 8, !tbaa !50
  %83 = getelementptr inbounds %struct.PointCache, ptr %82, i64 0, i32 15
  %84 = load i8, ptr %83, align 8, !tbaa !137
  %85 = icmp eq i8 %84, 0
  br i1 %85, label %86, label %109

86:                                               ; preds = %81
  %87 = getelementptr inbounds %struct.PointCache, ptr %82, i64 0, i32 2
  %88 = load i32, ptr %87, align 8, !tbaa !191
  %89 = and i32 %88, 512
  %90 = icmp eq i32 %89, 0
  br i1 %90, label %91, label %109

91:                                               ; preds = %86
  %92 = getelementptr inbounds %struct.PTCacheID, ptr %0, i64 0, i32 3
  %93 = load ptr, ptr %92, align 8, !tbaa !41
  %94 = getelementptr inbounds %struct.ID, ptr %93, i64 0, i32 4, i64 2
  %95 = load i8, ptr %94, align 1, !tbaa !137
  %96 = icmp eq i8 %95, 0
  br i1 %96, label %113, label %97

97:                                               ; preds = %91, %97
  %98 = phi i8 [ %107, %97 ], [ %95, %91 ]
  %99 = phi ptr [ %105, %97 ], [ %8, %91 ]
  %100 = phi ptr [ %103, %97 ], [ %94, %91 ]
  %101 = phi i32 [ %106, %97 ], [ 0, %91 ]
  %102 = zext i8 %98 to i32
  %103 = getelementptr inbounds i8, ptr %100, i64 1
  %104 = call i64 (ptr, i64, ptr, ...) @BLI_snprintf(ptr noundef nonnull %99, i64 noundef 2048, ptr noundef nonnull @.str.43, i32 noundef %102) #22
  %105 = getelementptr inbounds i8, ptr %99, i64 2
  %106 = add nuw nsw i32 %101, 2
  %107 = load i8, ptr %103, align 1, !tbaa !137
  %108 = icmp eq i8 %107, 0
  br i1 %108, label %113, label %97, !llvm.loop !224

109:                                              ; preds = %86, %81
  %110 = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %83) #23
  %111 = trunc i64 %110 to i32
  %112 = call ptr @strcpy(ptr noundef nonnull dereferenceable(1) %8, ptr noundef nonnull dereferenceable(1) %83) #22
  br label %113

113:                                              ; preds = %97, %91, %109, %75
  %114 = phi i32 [ 0, %75 ], [ %111, %109 ], [ 0, %91 ], [ %106, %97 ]
  %115 = call ptr @opendir(ptr noundef nonnull %7)
  %116 = icmp eq ptr %115, null
  br i1 %116, label %177, label %117

117:                                              ; preds = %113
  %118 = getelementptr inbounds %struct.PTCacheID, ptr %0, i64 0, i32 6
  %119 = load i32, ptr %118, align 4, !tbaa !65
  %120 = call i64 (ptr, i64, ptr, ...) @BLI_snprintf(ptr noundef nonnull %9, i64 noundef 1024, ptr noundef nonnull @.str.2, i32 noundef %119) #22
  %121 = call ptr @readdir(ptr noundef nonnull %115) #22
  %122 = icmp eq ptr %121, null
  br i1 %122, label %156, label %123

123:                                              ; preds = %117
  %124 = zext i32 %114 to i64
  br label %125

125:                                              ; preds = %123, %153
  %126 = phi ptr [ %121, %123 ], [ %154, %153 ]
  %127 = getelementptr inbounds %struct.dirent, ptr %126, i64 0, i32 4
  %128 = call ptr @strstr(ptr noundef nonnull dereferenceable(1) %127, ptr noundef nonnull dereferenceable(1) %9) #23
  %129 = icmp eq ptr %128, null
  br i1 %129, label %153, label %130

130:                                              ; preds = %125
  %131 = call i32 @strncmp(ptr noundef nonnull %8, ptr noundef nonnull %127, i64 noundef %124) #23
  %132 = icmp eq i32 %131, 0
  br i1 %132, label %133, label %153

133:                                              ; preds = %130
  %134 = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %127) #23
  call void @llvm.lifetime.start.p0(i64 7, ptr nonnull %10) #22
  %135 = and i64 %134, 4294967280
  %136 = icmp eq i64 %135, 0
  br i1 %136, label %152, label %137

137:                                              ; preds = %133
  %138 = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %127) #23
  %139 = getelementptr i8, ptr %127, i64 %138
  %140 = getelementptr i8, ptr %139, i64 -15
  %141 = call ptr @BLI_strncpy(ptr noundef nonnull %10, ptr noundef %140, i64 noundef 7) #22
  %142 = call i64 @strtol(ptr nocapture noundef nonnull %10, ptr noundef null, i32 noundef 10) #22
  %143 = trunc i64 %142 to i32
  %144 = icmp ugt i32 %58, %143
  %145 = icmp ult i32 %56, %143
  %146 = or i1 %144, %145
  br i1 %146, label %152, label %147

147:                                              ; preds = %137
  %148 = load ptr, ptr %34, align 8, !tbaa !194
  %149 = sub i32 %143, %58
  %150 = zext i32 %149 to i64
  %151 = getelementptr inbounds i8, ptr %148, i64 %150
  store i8 1, ptr %151, align 1, !tbaa !137
  br label %152

152:                                              ; preds = %137, %147, %133
  call void @llvm.lifetime.end.p0(i64 7, ptr nonnull %10) #22
  br label %153

153:                                              ; preds = %130, %152, %125
  %154 = call ptr @readdir(ptr noundef nonnull %115) #22
  %155 = icmp eq ptr %154, null
  br i1 %155, label %156, label %125, !llvm.loop !243

156:                                              ; preds = %153, %117
  %157 = call i32 @closedir(ptr noundef nonnull %115)
  call void @llvm.lifetime.end.p0(i64 1024, ptr nonnull %9) #22
  call void @llvm.lifetime.end.p0(i64 2048, ptr nonnull %8) #22
  call void @llvm.lifetime.end.p0(i64 1024, ptr nonnull %7) #22
  br label %178

158:                                              ; preds = %60
  %159 = getelementptr inbounds %struct.PointCache, ptr %66, i64 0, i32 20
  %160 = load ptr, ptr %159, align 8, !tbaa !34
  %161 = icmp eq ptr %160, null
  br i1 %161, label %178, label %162

162:                                              ; preds = %158, %174
  %163 = phi ptr [ %175, %174 ], [ %160, %158 ]
  %164 = getelementptr inbounds %struct.PTCacheMem, ptr %163, i64 0, i32 2
  %165 = load i32, ptr %164, align 8, !tbaa !195
  %166 = icmp ult i32 %165, %58
  %167 = icmp ugt i32 %165, %56
  %168 = or i1 %166, %167
  br i1 %168, label %174, label %169

169:                                              ; preds = %162
  %170 = load ptr, ptr %34, align 8, !tbaa !194
  %171 = sub i32 %165, %58
  %172 = zext i32 %171 to i64
  %173 = getelementptr inbounds i8, ptr %170, i64 %172
  store i8 1, ptr %173, align 1, !tbaa !137
  br label %174

174:                                              ; preds = %169, %162
  %175 = load ptr, ptr %163, align 8, !tbaa !34
  %176 = icmp eq ptr %175, null
  br i1 %176, label %178, label %162, !llvm.loop !244

177:                                              ; preds = %113
  call void @llvm.lifetime.end.p0(i64 1024, ptr nonnull %9) #22
  call void @llvm.lifetime.end.p0(i64 2048, ptr nonnull %8) #22
  call void @llvm.lifetime.end.p0(i64 1024, ptr nonnull %7) #22
  br label %178

178:                                              ; preds = %174, %158, %156, %51, %54, %177
  ret void
}

declare float @BKE_scene_frame_get(ptr noundef) local_unnamed_addr #2

declare float @BKE_scene_frame_get_from_ctime(ptr noundef, float noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local i32 @BKE_ptcache_id_reset(ptr noundef %0, ptr noundef %1, i32 noundef %2) local_unnamed_addr #0 {
  %4 = getelementptr inbounds %struct.PTCacheID, ptr %1, i64 0, i32 25
  %5 = load ptr, ptr %4, align 8, !tbaa !50
  %6 = icmp eq ptr %5, null
  br i1 %6, label %65, label %7

7:                                                ; preds = %3
  switch i32 %2, label %25 [
    i32 0, label %8
    i32 1, label %14
    i32 2, label %18
  ]

8:                                                ; preds = %7
  %9 = getelementptr inbounds %struct.PointCache, ptr %5, i64 0, i32 2
  %10 = load i32, ptr %9, align 8, !tbaa !191
  %11 = and i32 %10, 1
  %12 = xor i32 %11, 1
  %13 = or i32 %10, 2
  store i32 %13, ptr %9, align 8, !tbaa !191
  br label %25

14:                                               ; preds = %7
  %15 = getelementptr inbounds %struct.PointCache, ptr %5, i64 0, i32 2
  %16 = load i32, ptr %15, align 8, !tbaa !191
  %17 = or i32 %16, 2
  store i32 %17, ptr %15, align 8, !tbaa !191
  br label %25

18:                                               ; preds = %7
  %19 = getelementptr inbounds %struct.PointCache, ptr %5, i64 0, i32 2
  %20 = load i32, ptr %19, align 8, !tbaa !191
  %21 = and i32 %20, 3
  %22 = icmp eq i32 %21, 2
  br i1 %22, label %23, label %25

23:                                               ; preds = %18
  %24 = and i32 %20, -4
  store i32 %24, ptr %19, align 8, !tbaa !191
  br label %25

25:                                               ; preds = %7, %14, %18, %23, %8
  %26 = phi i1 [ false, %8 ], [ false, %14 ], [ true, %23 ], [ true, %18 ], [ false, %7 ]
  %27 = phi i1 [ false, %8 ], [ false, %14 ], [ true, %23 ], [ false, %18 ], [ false, %7 ]
  %28 = phi i32 [ %12, %8 ], [ 0, %14 ], [ 0, %23 ], [ 0, %18 ], [ 0, %7 ]
  br i1 %26, label %29, label %53

29:                                               ; preds = %25
  %30 = getelementptr inbounds %struct.PointCache, ptr %5, i64 0, i32 2
  %31 = load i32, ptr %30, align 8, !tbaa !191
  %32 = and i32 %31, -5
  store i32 %32, ptr %30, align 8, !tbaa !191
  %33 = getelementptr inbounds %struct.PointCache, ptr %5, i64 0, i32 4
  store i32 0, ptr %33, align 8, !tbaa !205
  %34 = getelementptr inbounds %struct.PointCache, ptr %5, i64 0, i32 5
  %35 = load i32, ptr %34, align 4, !tbaa !192
  %36 = tail call i32 @llvm.smin.i32(i32 %35, i32 0)
  %37 = getelementptr inbounds %struct.PointCache, ptr %5, i64 0, i32 8
  store i32 %36, ptr %37, align 8, !tbaa !214
  %38 = and i32 %31, -263
  store i32 %38, ptr %30, align 8, !tbaa !191
  %39 = getelementptr inbounds %struct.PTCacheID, ptr %1, i64 0, i32 5
  %40 = load i32, ptr %39, align 8, !tbaa !45
  switch i32 %40, label %53 [
    i32 2, label %41
    i32 0, label %44
    i32 1, label %47
    i32 5, label %50
  ]

41:                                               ; preds = %29
  %42 = getelementptr inbounds %struct.PTCacheID, ptr %1, i64 0, i32 4
  %43 = load ptr, ptr %42, align 8, !tbaa !44
  tail call void @cloth_free_modifier(ptr noundef %43) #22
  br label %53

44:                                               ; preds = %29
  %45 = getelementptr inbounds %struct.PTCacheID, ptr %1, i64 0, i32 4
  %46 = load ptr, ptr %45, align 8, !tbaa !44
  tail call void @sbFreeSimulation(ptr noundef %46) #22
  br label %53

47:                                               ; preds = %29
  %48 = getelementptr inbounds %struct.PTCacheID, ptr %1, i64 0, i32 4
  %49 = load ptr, ptr %48, align 8, !tbaa !44
  tail call void @psys_reset(ptr noundef %49, i32 noundef 2) #22
  br label %53

50:                                               ; preds = %29
  %51 = getelementptr inbounds %struct.PTCacheID, ptr %1, i64 0, i32 4
  %52 = load ptr, ptr %51, align 8, !tbaa !44
  tail call void @dynamicPaint_clearSurface(ptr noundef %0, ptr noundef %52) #22
  br label %53

53:                                               ; preds = %29, %41, %47, %50, %44, %25
  br i1 %27, label %54, label %55

54:                                               ; preds = %53
  tail call void @BKE_ptcache_id_clear(ptr noundef %1, i32 noundef 0, i32 noundef 0)
  br label %60

55:                                               ; preds = %53
  %56 = icmp eq i32 %28, 0
  br i1 %56, label %60, label %57

57:                                               ; preds = %55
  %58 = getelementptr inbounds %struct.Scene, ptr %0, i64 0, i32 22, i32 5
  %59 = load i32, ptr %58, align 8, !tbaa !242
  tail call void @BKE_ptcache_id_clear(ptr noundef %1, i32 noundef 3, i32 noundef %59)
  br label %60

60:                                               ; preds = %55, %57, %54
  %61 = or i1 %26, %27
  %62 = icmp ne i32 %28, 0
  %63 = select i1 %61, i1 true, i1 %62
  %64 = zext i1 %63 to i32
  br label %65

65:                                               ; preds = %3, %60
  %66 = phi i32 [ %64, %60 ], [ 0, %3 ]
  ret i32 %66
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define dso_local void @BKE_ptcache_invalidate(ptr noundef %0) local_unnamed_addr #16 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %12, label %3

3:                                                ; preds = %1
  %4 = getelementptr inbounds %struct.PointCache, ptr %0, i64 0, i32 2
  %5 = load i32, ptr %4, align 8, !tbaa !191
  %6 = and i32 %5, -5
  store i32 %6, ptr %4, align 8, !tbaa !191
  %7 = getelementptr inbounds %struct.PointCache, ptr %0, i64 0, i32 4
  store i32 0, ptr %7, align 8, !tbaa !205
  %8 = getelementptr inbounds %struct.PointCache, ptr %0, i64 0, i32 5
  %9 = load i32, ptr %8, align 4, !tbaa !192
  %10 = tail call i32 @llvm.smin.i32(i32 %9, i32 0)
  %11 = getelementptr inbounds %struct.PointCache, ptr %0, i64 0, i32 8
  store i32 %10, ptr %11, align 8, !tbaa !214
  br label %12

12:                                               ; preds = %3, %1
  ret void
}

declare void @cloth_free_modifier(ptr noundef) local_unnamed_addr #2

declare void @sbFreeSimulation(ptr noundef) local_unnamed_addr #2

declare void @psys_reset(ptr noundef, i32 noundef) local_unnamed_addr #2

declare void @dynamicPaint_clearSurface(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local i32 @BKE_ptcache_object_reset(ptr noundef %0, ptr noundef %1, i32 noundef %2) local_unnamed_addr #0 {
  %4 = alloca %struct.PTCacheID, align 8
  call void @llvm.lifetime.start.p0(i64 200, ptr nonnull %4) #22
  %5 = getelementptr inbounds %struct.Object, ptr %1, i64 0, i32 111
  %6 = load ptr, ptr %5, align 8, !tbaa !148
  %7 = icmp eq ptr %6, null
  br i1 %7, label %35, label %8

8:                                                ; preds = %3
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(200) %4, i8 0, i64 200, i1 false)
  %9 = getelementptr inbounds %struct.PTCacheID, ptr %4, i64 0, i32 3
  store ptr %1, ptr %9, align 8, !tbaa !41
  %10 = getelementptr inbounds %struct.PTCacheID, ptr %4, i64 0, i32 4
  store ptr %6, ptr %10, align 8, !tbaa !44
  %11 = getelementptr inbounds %struct.PTCacheID, ptr %4, i64 0, i32 5
  store i32 0, ptr %11, align 8, !tbaa !45
  %12 = getelementptr inbounds %struct.SoftBody, ptr %6, i64 0, i32 47
  %13 = load ptr, ptr %12, align 8, !tbaa !46
  %14 = getelementptr inbounds %struct.PTCacheID, ptr %4, i64 0, i32 25
  store ptr %13, ptr %14, align 8, !tbaa !50
  %15 = getelementptr inbounds %struct.PTCacheID, ptr %4, i64 0, i32 26
  store ptr %12, ptr %15, align 8, !tbaa !51
  %16 = getelementptr inbounds %struct.SoftBody, ptr %6, i64 0, i32 48
  %17 = getelementptr inbounds %struct.PTCacheID, ptr %4, i64 0, i32 27
  store ptr %16, ptr %17, align 8, !tbaa !52
  %18 = getelementptr inbounds %struct.PTCacheID, ptr %4, i64 0, i32 22
  store ptr @ptcache_softbody_totpoint, ptr %18, align 8, !tbaa !53
  %19 = getelementptr inbounds %struct.PTCacheID, ptr %4, i64 0, i32 20
  store ptr @ptcache_softbody_totpoint, ptr %19, align 8, !tbaa !54
  %20 = getelementptr inbounds %struct.PTCacheID, ptr %4, i64 0, i32 21
  store ptr @ptcache_softbody_error, ptr %20, align 8, !tbaa !55
  %21 = getelementptr inbounds %struct.PTCacheID, ptr %4, i64 0, i32 12
  store ptr @ptcache_softbody_write, ptr %21, align 8, !tbaa !56
  %22 = getelementptr inbounds %struct.PTCacheID, ptr %4, i64 0, i32 13
  store ptr @ptcache_softbody_read, ptr %22, align 8, !tbaa !57
  %23 = getelementptr inbounds %struct.PTCacheID, ptr %4, i64 0, i32 14
  store ptr @ptcache_softbody_interpolate, ptr %23, align 8, !tbaa !58
  %24 = getelementptr inbounds %struct.PTCacheID, ptr %4, i64 0, i32 15
  %25 = getelementptr inbounds %struct.PTCacheID, ptr %4, i64 0, i32 23
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %24, i8 0, i64 40, i1 false)
  store ptr @ptcache_basic_header_write, ptr %25, align 8, !tbaa !59
  %26 = getelementptr inbounds %struct.PTCacheID, ptr %4, i64 0, i32 24
  store ptr @ptcache_basic_header_read, ptr %26, align 8, !tbaa !60
  %27 = getelementptr inbounds %struct.PTCacheID, ptr %4, i64 0, i32 10
  store i32 6, ptr %27, align 4, !tbaa !61
  %28 = getelementptr inbounds %struct.PTCacheID, ptr %4, i64 0, i32 11
  store i32 0, ptr %28, align 8, !tbaa !62
  %29 = getelementptr inbounds %struct.PointCache, ptr %13, i64 0, i32 12
  %30 = load i32, ptr %29, align 8, !tbaa !63
  %31 = getelementptr inbounds %struct.PTCacheID, ptr %4, i64 0, i32 6
  store i32 %30, ptr %31, align 4, !tbaa !65
  %32 = getelementptr inbounds %struct.PTCacheID, ptr %4, i64 0, i32 8
  store i32 10, ptr %32, align 4, !tbaa !66
  %33 = getelementptr inbounds %struct.PTCacheID, ptr %4, i64 0, i32 9
  store i32 20, ptr %33, align 8, !tbaa !67
  %34 = call i32 @BKE_ptcache_id_reset(ptr noundef %0, ptr noundef nonnull %4, i32 noundef %2), !range !206
  br label %35

35:                                               ; preds = %8, %3
  %36 = phi i32 [ %34, %8 ], [ 0, %3 ]
  %37 = getelementptr inbounds %struct.Object, ptr %1, i64 0, i32 109
  %38 = load ptr, ptr %37, align 8, !tbaa !34
  %39 = icmp eq ptr %38, null
  br i1 %39, label %180, label %40

40:                                               ; preds = %35
  %41 = getelementptr inbounds %struct.PTCacheID, ptr %4, i64 0, i32 3
  %42 = getelementptr inbounds %struct.PTCacheID, ptr %4, i64 0, i32 4
  %43 = getelementptr inbounds %struct.PTCacheID, ptr %4, i64 0, i32 5
  %44 = getelementptr inbounds %struct.PTCacheID, ptr %4, i64 0, i32 6
  %45 = getelementptr inbounds %struct.PTCacheID, ptr %4, i64 0, i32 25
  %46 = getelementptr inbounds %struct.PTCacheID, ptr %4, i64 0, i32 26
  %47 = getelementptr inbounds %struct.PTCacheID, ptr %4, i64 0, i32 27
  %48 = getelementptr inbounds %struct.PTCacheID, ptr %4, i64 0, i32 22
  %49 = getelementptr inbounds %struct.PTCacheID, ptr %4, i64 0, i32 20
  %50 = getelementptr inbounds %struct.PTCacheID, ptr %4, i64 0, i32 21
  %51 = getelementptr inbounds %struct.PTCacheID, ptr %4, i64 0, i32 12
  %52 = getelementptr inbounds %struct.PTCacheID, ptr %4, i64 0, i32 13
  %53 = getelementptr inbounds %struct.PTCacheID, ptr %4, i64 0, i32 14
  %54 = getelementptr inbounds %struct.PTCacheID, ptr %4, i64 0, i32 15
  %55 = getelementptr inbounds %struct.PTCacheID, ptr %4, i64 0, i32 23
  %56 = getelementptr inbounds %struct.PTCacheID, ptr %4, i64 0, i32 24
  %57 = getelementptr inbounds %struct.PTCacheID, ptr %4, i64 0, i32 10
  %58 = getelementptr inbounds %struct.PTCacheID, ptr %4, i64 0, i32 11
  %59 = getelementptr inbounds %struct.PTCacheID, ptr %4, i64 0, i32 8
  %60 = getelementptr inbounds %struct.PTCacheID, ptr %4, i64 0, i32 9
  %61 = icmp eq i32 %2, 1
  %62 = getelementptr inbounds %struct.PTCacheID, ptr %4, i64 0, i32 3
  %63 = getelementptr inbounds %struct.PTCacheID, ptr %4, i64 0, i32 4
  %64 = getelementptr inbounds %struct.PTCacheID, ptr %4, i64 0, i32 5
  %65 = getelementptr inbounds %struct.PTCacheID, ptr %4, i64 0, i32 6
  %66 = getelementptr inbounds %struct.PTCacheID, ptr %4, i64 0, i32 25
  %67 = getelementptr inbounds %struct.PTCacheID, ptr %4, i64 0, i32 26
  %68 = getelementptr inbounds %struct.PTCacheID, ptr %4, i64 0, i32 27
  %69 = getelementptr inbounds %struct.PTCacheID, ptr %4, i64 0, i32 7
  %70 = getelementptr inbounds %struct.PTCacheID, ptr %4, i64 0, i32 20
  %71 = getelementptr inbounds %struct.PTCacheID, ptr %4, i64 0, i32 22
  %72 = getelementptr inbounds %struct.PTCacheID, ptr %4, i64 0, i32 21
  %73 = getelementptr inbounds %struct.PTCacheID, ptr %4, i64 0, i32 12
  %74 = getelementptr inbounds %struct.PTCacheID, ptr %4, i64 0, i32 13
  %75 = getelementptr inbounds %struct.PTCacheID, ptr %4, i64 0, i32 14
  %76 = getelementptr inbounds %struct.PTCacheID, ptr %4, i64 0, i32 15
  %77 = getelementptr inbounds %struct.PTCacheID, ptr %4, i64 0, i32 17
  %78 = getelementptr inbounds %struct.PTCacheID, ptr %4, i64 0, i32 18
  %79 = getelementptr inbounds %struct.PTCacheID, ptr %4, i64 0, i32 23
  %80 = getelementptr inbounds %struct.PTCacheID, ptr %4, i64 0, i32 24
  %81 = getelementptr inbounds %struct.PTCacheID, ptr %4, i64 0, i32 10
  %82 = getelementptr inbounds %struct.PTCacheID, ptr %4, i64 0, i32 11
  %83 = getelementptr inbounds %struct.PTCacheID, ptr %4, i64 0, i32 8
  %84 = getelementptr inbounds %struct.PTCacheID, ptr %4, i64 0, i32 9
  br label %85

85:                                               ; preds = %40, %176
  %86 = phi ptr [ %38, %40 ], [ %178, %176 ]
  %87 = phi i32 [ 0, %40 ], [ %119, %176 ]
  %88 = phi i32 [ %36, %40 ], [ %177, %176 ]
  %89 = getelementptr inbounds %struct.ParticleSystem, ptr %86, i64 0, i32 31
  %90 = load i16, ptr %89, align 4, !tbaa !245
  %91 = and i16 %90, 72
  %92 = icmp eq i16 %91, 0
  br i1 %92, label %93, label %117

93:                                               ; preds = %85
  %94 = getelementptr inbounds %struct.ParticleSystem, ptr %86, i64 0, i32 11
  %95 = load ptr, ptr %94, align 8, !tbaa !246
  %96 = icmp eq ptr %95, null
  br i1 %96, label %117, label %97

97:                                               ; preds = %93
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(200) %4, i8 0, i64 200, i1 false)
  store ptr %1, ptr %41, align 8, !tbaa !41
  store ptr %95, ptr %42, align 8, !tbaa !44
  store i32 2, ptr %43, align 8, !tbaa !45
  %98 = getelementptr inbounds %struct.ClothModifierData, ptr %95, i64 0, i32 5
  %99 = load ptr, ptr %98, align 8, !tbaa !115
  %100 = getelementptr inbounds %struct.PointCache, ptr %99, i64 0, i32 12
  %101 = load i32, ptr %100, align 8, !tbaa !63
  store i32 %101, ptr %44, align 4, !tbaa !65
  store ptr %99, ptr %45, align 8, !tbaa !50
  store ptr %98, ptr %46, align 8, !tbaa !51
  %102 = getelementptr inbounds %struct.ClothModifierData, ptr %95, i64 0, i32 6
  store ptr %102, ptr %47, align 8, !tbaa !52
  store ptr @ptcache_cloth_totpoint, ptr %48, align 8, !tbaa !53
  store ptr @ptcache_cloth_totpoint, ptr %49, align 8, !tbaa !54
  store ptr @ptcache_cloth_error, ptr %50, align 8, !tbaa !55
  store ptr @ptcache_cloth_write, ptr %51, align 8, !tbaa !56
  store ptr @ptcache_cloth_read, ptr %52, align 8, !tbaa !57
  store ptr @ptcache_cloth_interpolate, ptr %53, align 8, !tbaa !58
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %54, i8 0, i64 40, i1 false)
  store ptr @ptcache_basic_header_write, ptr %55, align 8, !tbaa !59
  store ptr @ptcache_basic_header_read, ptr %56, align 8, !tbaa !60
  store i32 22, ptr %57, align 4, !tbaa !61
  store i32 0, ptr %58, align 8, !tbaa !62
  store i32 1, ptr %59, align 4, !tbaa !66
  store i32 1, ptr %60, align 8, !tbaa !67
  br i1 %61, label %114, label %103

103:                                              ; preds = %97
  %104 = getelementptr inbounds %struct.ParticleSystem, ptr %86, i64 0, i32 2
  %105 = load ptr, ptr %104, align 8, !tbaa !77
  %106 = getelementptr inbounds %struct.ParticleSettings, ptr %105, i64 0, i32 7
  %107 = load i16, ptr %106, align 8, !tbaa !78
  %108 = icmp eq i16 %107, 2
  br i1 %108, label %109, label %114

109:                                              ; preds = %103
  %110 = getelementptr inbounds %struct.PointCache, ptr %99, i64 0, i32 2
  %111 = load i32, ptr %110, align 8, !tbaa !191
  %112 = and i32 %111, 1
  %113 = icmp eq i32 %112, 0
  br i1 %113, label %114, label %117

114:                                              ; preds = %109, %103, %97
  %115 = call i32 @BKE_ptcache_id_reset(ptr noundef %0, ptr noundef nonnull %4, i32 noundef %2), !range !206
  %116 = or i32 %115, %88
  br label %117

117:                                              ; preds = %109, %85, %93, %114
  %118 = phi i32 [ %116, %114 ], [ %88, %93 ], [ %88, %85 ], [ %88, %109 ]
  %119 = phi i32 [ %87, %114 ], [ %87, %93 ], [ 1, %85 ], [ 1, %109 ]
  %120 = icmp eq i32 %119, 0
  br i1 %120, label %121, label %176

121:                                              ; preds = %117
  %122 = getelementptr inbounds %struct.ParticleSystem, ptr %86, i64 0, i32 2
  %123 = load ptr, ptr %122, align 8, !tbaa !77
  %124 = icmp eq ptr %123, null
  br i1 %124, label %176, label %125

125:                                              ; preds = %121
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(200) %4, i8 0, i64 200, i1 false)
  store ptr %1, ptr %62, align 8, !tbaa !41
  store ptr %86, ptr %63, align 8, !tbaa !44
  store i32 1, ptr %64, align 8, !tbaa !45
  %126 = getelementptr inbounds %struct.ParticleSystem, ptr %86, i64 0, i32 40
  %127 = load ptr, ptr %126, align 8, !tbaa !75
  %128 = getelementptr inbounds %struct.PointCache, ptr %127, i64 0, i32 12
  %129 = load i32, ptr %128, align 8, !tbaa !63
  store i32 %129, ptr %65, align 4, !tbaa !65
  store ptr %127, ptr %66, align 8, !tbaa !50
  store ptr %126, ptr %67, align 8, !tbaa !51
  %130 = getelementptr inbounds %struct.ParticleSystem, ptr %86, i64 0, i32 41
  store ptr %130, ptr %68, align 8, !tbaa !52
  %131 = load ptr, ptr %122, align 8, !tbaa !77
  %132 = getelementptr inbounds %struct.ParticleSettings, ptr %131, i64 0, i32 7
  %133 = load i16, ptr %132, align 8, !tbaa !78
  %134 = icmp eq i16 %133, 2
  br i1 %134, label %138, label %135

135:                                              ; preds = %125
  %136 = load i32, ptr %69, align 8, !tbaa !81
  %137 = or i32 %136, 1
  store i32 %137, ptr %69, align 8, !tbaa !81
  br label %138

138:                                              ; preds = %135, %125
  store ptr @ptcache_particle_totpoint, ptr %70, align 8, !tbaa !54
  store ptr @ptcache_particle_totwrite, ptr %71, align 8, !tbaa !53
  store ptr @ptcache_particle_error, ptr %72, align 8, !tbaa !55
  store ptr @ptcache_particle_write, ptr %73, align 8, !tbaa !56
  store ptr @ptcache_particle_read, ptr %74, align 8, !tbaa !57
  store ptr @ptcache_particle_interpolate, ptr %75, align 8, !tbaa !58
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %76, i8 0, i64 40, i1 false)
  store ptr @ptcache_basic_header_write, ptr %79, align 8, !tbaa !59
  store ptr @ptcache_basic_header_read, ptr %80, align 8, !tbaa !60
  store i32 7, ptr %81, align 4, !tbaa !61
  %139 = getelementptr inbounds %struct.ParticleSettings, ptr %131, i64 0, i32 11
  %140 = load i16, ptr %139, align 8, !tbaa !82
  switch i16 %140, label %152 [
    i16 3, label %141
    i16 4, label %142
  ]

141:                                              ; preds = %138
  store i32 159, ptr %81, align 4, !tbaa !61
  br label %152

142:                                              ; preds = %138
  %143 = getelementptr inbounds %struct.ParticleSettings, ptr %131, i64 0, i32 3
  %144 = load ptr, ptr %143, align 8, !tbaa !83
  %145 = icmp eq ptr %144, null
  br i1 %145, label %152, label %146

146:                                              ; preds = %142
  %147 = getelementptr inbounds %struct.SPHFluidSettings, ptr %144, i64 0, i32 13
  %148 = load i32, ptr %147, align 4, !tbaa !84
  %149 = and i32 %148, 1
  %150 = icmp eq i32 %149, 0
  br i1 %150, label %152, label %151

151:                                              ; preds = %146
  store ptr @ptcache_particle_extra_write, ptr %77, align 8, !tbaa !86
  store ptr @ptcache_particle_extra_read, ptr %78, align 8, !tbaa !87
  br label %152

152:                                              ; preds = %151, %146, %142, %141, %138
  %153 = getelementptr inbounds %struct.ParticleSettings, ptr %131, i64 0, i32 5
  %154 = load i32, ptr %153, align 8, !tbaa !88
  %155 = and i32 %154, 512
  %156 = icmp eq i32 %155, 0
  br i1 %156, label %173, label %157

157:                                              ; preds = %152
  %158 = load i32, ptr %81, align 4, !tbaa !61
  %159 = or i32 %158, 8
  store i32 %159, ptr %81, align 4, !tbaa !61
  %160 = getelementptr inbounds %struct.ParticleSettings, ptr %131, i64 0, i32 12
  %161 = load i16, ptr %160, align 2, !tbaa !89
  %162 = icmp eq i16 %161, 2
  br i1 %162, label %163, label %171

163:                                              ; preds = %157
  %164 = getelementptr inbounds %struct.ParticleSettings, ptr %131, i64 0, i32 13
  %165 = load i16, ptr %164, align 4, !tbaa !90
  %166 = icmp eq i16 %165, 2
  br i1 %166, label %171, label %167

167:                                              ; preds = %163
  %168 = getelementptr inbounds %struct.ParticleSettings, ptr %131, i64 0, i32 77
  %169 = load float, ptr %168, align 4, !tbaa !91
  %170 = fcmp une float %169, 0.000000e+00
  br i1 %170, label %171, label %173

171:                                              ; preds = %167, %163, %157
  %172 = or i32 %158, 24
  store i32 %172, ptr %81, align 4, !tbaa !61
  br label %173

173:                                              ; preds = %152, %167, %171
  store i32 64, ptr %82, align 8, !tbaa !62
  store i32 10, ptr %83, align 4, !tbaa !66
  store i32 20, ptr %84, align 8, !tbaa !67
  %174 = call i32 @BKE_ptcache_id_reset(ptr noundef %0, ptr noundef nonnull %4, i32 noundef %2), !range !206
  %175 = or i32 %174, %118
  br label %176

176:                                              ; preds = %117, %121, %173
  %177 = phi i32 [ %175, %173 ], [ %118, %121 ], [ %118, %117 ]
  %178 = load ptr, ptr %86, align 8, !tbaa !34
  %179 = icmp eq ptr %178, null
  br i1 %179, label %180, label %85, !llvm.loop !247

180:                                              ; preds = %176, %35
  %181 = phi i32 [ %36, %35 ], [ %177, %176 ]
  %182 = getelementptr inbounds %struct.Object, ptr %1, i64 0, i32 26
  %183 = load ptr, ptr %182, align 8, !tbaa !34
  %184 = icmp eq ptr %183, null
  br i1 %184, label %319, label %185

185:                                              ; preds = %180
  %186 = getelementptr inbounds %struct.PTCacheID, ptr %4, i64 0, i32 3
  %187 = getelementptr inbounds %struct.PTCacheID, ptr %4, i64 0, i32 4
  %188 = getelementptr inbounds %struct.PTCacheID, ptr %4, i64 0, i32 5
  %189 = getelementptr inbounds %struct.PTCacheID, ptr %4, i64 0, i32 6
  %190 = getelementptr inbounds %struct.PTCacheID, ptr %4, i64 0, i32 25
  %191 = getelementptr inbounds %struct.PTCacheID, ptr %4, i64 0, i32 26
  %192 = getelementptr inbounds %struct.PTCacheID, ptr %4, i64 0, i32 27
  %193 = getelementptr inbounds %struct.PTCacheID, ptr %4, i64 0, i32 22
  %194 = getelementptr inbounds %struct.PTCacheID, ptr %4, i64 0, i32 20
  %195 = getelementptr inbounds %struct.PTCacheID, ptr %4, i64 0, i32 21
  %196 = getelementptr inbounds %struct.PTCacheID, ptr %4, i64 0, i32 12
  %197 = getelementptr inbounds %struct.PTCacheID, ptr %4, i64 0, i32 13
  %198 = getelementptr inbounds %struct.PTCacheID, ptr %4, i64 0, i32 14
  %199 = getelementptr inbounds %struct.PTCacheID, ptr %4, i64 0, i32 15
  %200 = getelementptr inbounds %struct.PTCacheID, ptr %4, i64 0, i32 23
  %201 = getelementptr inbounds %struct.PTCacheID, ptr %4, i64 0, i32 24
  %202 = getelementptr inbounds %struct.PTCacheID, ptr %4, i64 0, i32 10
  %203 = getelementptr inbounds %struct.PTCacheID, ptr %4, i64 0, i32 11
  %204 = getelementptr inbounds %struct.PTCacheID, ptr %4, i64 0, i32 8
  %205 = getelementptr inbounds %struct.PTCacheID, ptr %4, i64 0, i32 9
  %206 = getelementptr inbounds %struct.PTCacheID, ptr %4, i64 0, i32 3
  %207 = getelementptr inbounds %struct.PTCacheID, ptr %4, i64 0, i32 4
  %208 = getelementptr inbounds %struct.PTCacheID, ptr %4, i64 0, i32 5
  %209 = getelementptr inbounds %struct.PTCacheID, ptr %4, i64 0, i32 6
  %210 = getelementptr inbounds %struct.PTCacheID, ptr %4, i64 0, i32 25
  %211 = getelementptr inbounds %struct.PTCacheID, ptr %4, i64 0, i32 26
  %212 = getelementptr inbounds %struct.PTCacheID, ptr %4, i64 0, i32 27
  %213 = getelementptr inbounds %struct.PTCacheID, ptr %4, i64 0, i32 22
  %214 = getelementptr inbounds %struct.PTCacheID, ptr %4, i64 0, i32 20
  %215 = getelementptr inbounds %struct.PTCacheID, ptr %4, i64 0, i32 21
  %216 = getelementptr inbounds %struct.PTCacheID, ptr %4, i64 0, i32 12
  %217 = getelementptr inbounds %struct.PTCacheID, ptr %4, i64 0, i32 16
  %218 = getelementptr inbounds %struct.PTCacheID, ptr %4, i64 0, i32 15
  %219 = getelementptr inbounds %struct.PTCacheID, ptr %4, i64 0, i32 17
  %220 = getelementptr inbounds %struct.PTCacheID, ptr %4, i64 0, i32 23
  %221 = getelementptr inbounds %struct.PTCacheID, ptr %4, i64 0, i32 24
  %222 = getelementptr inbounds %struct.PTCacheID, ptr %4, i64 0, i32 10
  %223 = getelementptr inbounds %struct.PTCacheID, ptr %4, i64 0, i32 11
  %224 = getelementptr inbounds %struct.PTCacheID, ptr %4, i64 0, i32 8
  %225 = getelementptr inbounds %struct.PTCacheID, ptr %4, i64 0, i32 9
  %226 = getelementptr inbounds %struct.PTCacheID, ptr %4, i64 0, i32 3
  %227 = getelementptr inbounds %struct.PTCacheID, ptr %4, i64 0, i32 4
  %228 = getelementptr inbounds %struct.PTCacheID, ptr %4, i64 0, i32 5
  %229 = getelementptr inbounds %struct.PTCacheID, ptr %4, i64 0, i32 25
  %230 = getelementptr inbounds %struct.PTCacheID, ptr %4, i64 0, i32 26
  %231 = getelementptr inbounds %struct.PTCacheID, ptr %4, i64 0, i32 27
  %232 = getelementptr inbounds %struct.PTCacheID, ptr %4, i64 0, i32 22
  %233 = getelementptr inbounds %struct.PTCacheID, ptr %4, i64 0, i32 20
  %234 = getelementptr inbounds %struct.PTCacheID, ptr %4, i64 0, i32 21
  %235 = getelementptr inbounds %struct.PTCacheID, ptr %4, i64 0, i32 12
  %236 = getelementptr inbounds %struct.PTCacheID, ptr %4, i64 0, i32 15
  %237 = getelementptr inbounds %struct.PTCacheID, ptr %4, i64 0, i32 16
  %238 = getelementptr inbounds %struct.PTCacheID, ptr %4, i64 0, i32 17
  %239 = getelementptr inbounds %struct.PTCacheID, ptr %4, i64 0, i32 23
  %240 = getelementptr inbounds %struct.PTCacheID, ptr %4, i64 0, i32 24
  %241 = getelementptr inbounds %struct.PTCacheID, ptr %4, i64 0, i32 10
  %242 = getelementptr inbounds %struct.PTCacheID, ptr %4, i64 0, i32 11
  %243 = getelementptr inbounds %struct.PTCacheID, ptr %4, i64 0, i32 6
  %244 = getelementptr inbounds %struct.PTCacheID, ptr %4, i64 0, i32 8
  %245 = getelementptr inbounds %struct.PTCacheID, ptr %4, i64 0, i32 9
  br label %246

246:                                              ; preds = %185, %315
  %247 = phi ptr [ %183, %185 ], [ %317, %315 ]
  %248 = phi i32 [ %181, %185 ], [ %316, %315 ]
  %249 = getelementptr inbounds %struct.ModifierData, ptr %247, i64 0, i32 2
  %250 = load i32, ptr %249, align 8, !tbaa !150
  %251 = icmp eq i32 %250, 22
  br i1 %251, label %252, label %260

252:                                              ; preds = %246
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(200) %4, i8 0, i64 200, i1 false)
  store ptr %1, ptr %186, align 8, !tbaa !41
  store ptr %247, ptr %187, align 8, !tbaa !44
  store i32 2, ptr %188, align 8, !tbaa !45
  %253 = getelementptr inbounds %struct.ClothModifierData, ptr %247, i64 0, i32 5
  %254 = load ptr, ptr %253, align 8, !tbaa !115
  %255 = getelementptr inbounds %struct.PointCache, ptr %254, i64 0, i32 12
  %256 = load i32, ptr %255, align 8, !tbaa !63
  store i32 %256, ptr %189, align 4, !tbaa !65
  store ptr %254, ptr %190, align 8, !tbaa !50
  store ptr %253, ptr %191, align 8, !tbaa !51
  %257 = getelementptr inbounds %struct.ClothModifierData, ptr %247, i64 0, i32 6
  store ptr %257, ptr %192, align 8, !tbaa !52
  store ptr @ptcache_cloth_totpoint, ptr %193, align 8, !tbaa !53
  store ptr @ptcache_cloth_totpoint, ptr %194, align 8, !tbaa !54
  store ptr @ptcache_cloth_error, ptr %195, align 8, !tbaa !55
  store ptr @ptcache_cloth_write, ptr %196, align 8, !tbaa !56
  store ptr @ptcache_cloth_read, ptr %197, align 8, !tbaa !57
  store ptr @ptcache_cloth_interpolate, ptr %198, align 8, !tbaa !58
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %199, i8 0, i64 40, i1 false)
  store ptr @ptcache_basic_header_write, ptr %200, align 8, !tbaa !59
  store ptr @ptcache_basic_header_read, ptr %201, align 8, !tbaa !60
  store i32 22, ptr %202, align 4, !tbaa !61
  store i32 0, ptr %203, align 8, !tbaa !62
  store i32 1, ptr %204, align 4, !tbaa !66
  store i32 1, ptr %205, align 8, !tbaa !67
  %258 = call i32 @BKE_ptcache_id_reset(ptr noundef %0, ptr noundef nonnull %4, i32 noundef %2), !range !206
  %259 = or i32 %258, %248
  br label %260

260:                                              ; preds = %252, %246
  %261 = phi i32 [ %259, %252 ], [ %248, %246 ]
  %262 = load i32, ptr %249, align 8, !tbaa !150
  %263 = icmp eq i32 %262, 31
  br i1 %263, label %264, label %291

264:                                              ; preds = %260
  %265 = getelementptr inbounds %struct.SmokeModifierData, ptr %247, i64 0, i32 5
  %266 = load i32, ptr %265, align 4, !tbaa !151
  %267 = and i32 %266, 1
  %268 = icmp eq i32 %267, 0
  br i1 %268, label %291, label %269

269:                                              ; preds = %264
  %270 = getelementptr inbounds %struct.SmokeModifierData, ptr %247, i64 0, i32 1
  %271 = load ptr, ptr %270, align 8, !tbaa !122
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(200) %4, i8 0, i64 200, i1 false)
  store ptr %1, ptr %206, align 8, !tbaa !41
  store ptr %247, ptr %207, align 8, !tbaa !44
  store i32 3, ptr %208, align 8, !tbaa !45
  %272 = getelementptr inbounds %struct.SmokeDomainSettings, ptr %271, i64 0, i32 47
  %273 = load ptr, ptr %272, align 8, !tbaa !34
  %274 = getelementptr inbounds %struct.PointCache, ptr %273, i64 0, i32 12
  %275 = load i32, ptr %274, align 8, !tbaa !63
  store i32 %275, ptr %209, align 4, !tbaa !65
  store ptr %273, ptr %210, align 8, !tbaa !50
  store ptr %272, ptr %211, align 8, !tbaa !51
  %276 = getelementptr inbounds %struct.SmokeDomainSettings, ptr %271, i64 0, i32 48
  store ptr %276, ptr %212, align 8, !tbaa !52
  store ptr @ptcache_smoke_totpoint, ptr %213, align 8, !tbaa !53
  store ptr @ptcache_smoke_totpoint, ptr %214, align 8, !tbaa !54
  store ptr @ptcache_smoke_error, ptr %215, align 8, !tbaa !55
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %216, i8 0, i64 24, i1 false)
  store ptr @ptcache_smoke_read, ptr %217, align 8, !tbaa !124
  store ptr @ptcache_smoke_write, ptr %218, align 8, !tbaa !125
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %219, i8 0, i64 24, i1 false)
  store ptr @ptcache_basic_header_write, ptr %220, align 8, !tbaa !59
  store ptr @ptcache_basic_header_read, ptr %221, align 8, !tbaa !60
  store i32 0, ptr %222, align 4, !tbaa !61
  store i32 0, ptr %223, align 8, !tbaa !62
  %277 = getelementptr inbounds %struct.SmokeDomainSettings, ptr %271, i64 0, i32 1
  %278 = load ptr, ptr %277, align 8, !tbaa !126
  %279 = icmp eq ptr %278, null
  br i1 %279, label %281, label %280

280:                                              ; preds = %269
  store i32 2, ptr %222, align 4, !tbaa !61
  br label %281

281:                                              ; preds = %280, %269
  %282 = getelementptr inbounds %struct.SmokeDomainSettings, ptr %271, i64 0, i32 6
  %283 = load ptr, ptr %282, align 8, !tbaa !128
  %284 = icmp eq ptr %283, null
  br i1 %284, label %288, label %285

285:                                              ; preds = %281
  %286 = load i32, ptr %222, align 4, !tbaa !61
  %287 = or i32 %286, 4
  store i32 %287, ptr %222, align 4, !tbaa !61
  br label %288

288:                                              ; preds = %281, %285
  store i32 1, ptr %224, align 4, !tbaa !66
  store i32 1, ptr %225, align 8, !tbaa !67
  %289 = call i32 @BKE_ptcache_id_reset(ptr noundef %0, ptr noundef nonnull %4, i32 noundef %2), !range !206
  %290 = or i32 %289, %261
  br label %291

291:                                              ; preds = %264, %288, %260
  %292 = phi i32 [ %261, %260 ], [ %290, %288 ], [ %261, %264 ]
  %293 = load i32, ptr %249, align 8, !tbaa !150
  %294 = icmp eq i32 %293, 40
  br i1 %294, label %295, label %315

295:                                              ; preds = %291
  %296 = getelementptr inbounds %struct.DynamicPaintModifierData, ptr %247, i64 0, i32 1
  %297 = load ptr, ptr %296, align 8, !tbaa !152
  %298 = icmp eq ptr %297, null
  br i1 %298, label %315, label %299

299:                                              ; preds = %295
  %300 = getelementptr inbounds %struct.DynamicPaintCanvasSettings, ptr %297, i64 0, i32 2
  %301 = load ptr, ptr %300, align 8, !tbaa !34
  %302 = icmp eq ptr %301, null
  br i1 %302, label %315, label %303

303:                                              ; preds = %299, %303
  %304 = phi ptr [ %313, %303 ], [ %301, %299 ]
  %305 = phi i32 [ %312, %303 ], [ %292, %299 ]
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(200) %4, i8 0, i64 200, i1 false)
  store ptr %1, ptr %226, align 8, !tbaa !41
  store ptr %304, ptr %227, align 8, !tbaa !44
  store i32 5, ptr %228, align 8, !tbaa !45
  %306 = getelementptr inbounds %struct.DynamicPaintSurface, ptr %304, i64 0, i32 6
  %307 = load ptr, ptr %306, align 8, !tbaa !129
  store ptr %307, ptr %229, align 8, !tbaa !50
  store ptr %306, ptr %230, align 8, !tbaa !51
  %308 = getelementptr inbounds %struct.DynamicPaintSurface, ptr %304, i64 0, i32 7
  store ptr %308, ptr %231, align 8, !tbaa !52
  store ptr @ptcache_dynamicpaint_totpoint, ptr %232, align 8, !tbaa !53
  store ptr @ptcache_dynamicpaint_totpoint, ptr %233, align 8, !tbaa !54
  store ptr @ptcache_dynamicpaint_error, ptr %234, align 8, !tbaa !55
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %235, i8 0, i64 24, i1 false)
  store ptr @ptcache_dynamicpaint_write, ptr %236, align 8, !tbaa !125
  store ptr @ptcache_dynamicpaint_read, ptr %237, align 8, !tbaa !124
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %238, i8 0, i64 24, i1 false)
  store ptr @ptcache_basic_header_write, ptr %239, align 8, !tbaa !59
  store ptr @ptcache_basic_header_read, ptr %240, align 8, !tbaa !60
  store i32 3, ptr %241, align 4, !tbaa !61
  store i32 0, ptr %242, align 8, !tbaa !62
  %309 = getelementptr inbounds %struct.PointCache, ptr %307, i64 0, i32 12
  %310 = load i32, ptr %309, align 8, !tbaa !63
  store i32 %310, ptr %243, align 4, !tbaa !65
  store i32 1, ptr %244, align 4, !tbaa !66
  store i32 1, ptr %245, align 8, !tbaa !67
  %311 = call i32 @BKE_ptcache_id_reset(ptr noundef %0, ptr noundef nonnull %4, i32 noundef %2), !range !206
  %312 = or i32 %311, %305
  %313 = load ptr, ptr %304, align 8, !tbaa !34
  %314 = icmp eq ptr %313, null
  br i1 %314, label %315, label %303, !llvm.loop !248

315:                                              ; preds = %303, %299, %295, %291
  %316 = phi i32 [ %292, %291 ], [ %292, %295 ], [ %292, %299 ], [ %312, %303 ]
  %317 = load ptr, ptr %247, align 8, !tbaa !34
  %318 = icmp eq ptr %317, null
  br i1 %318, label %319, label %246, !llvm.loop !249

319:                                              ; preds = %315, %180
  %320 = phi i32 [ %181, %180 ], [ %316, %315 ]
  %321 = getelementptr inbounds %struct.Scene, ptr %0, i64 0, i32 47
  %322 = load ptr, ptr %321, align 8, !tbaa !156
  %323 = icmp eq ptr %322, null
  br i1 %323, label %366, label %324

324:                                              ; preds = %319
  %325 = getelementptr inbounds %struct.Object, ptr %1, i64 0, i32 128
  %326 = load ptr, ptr %325, align 8, !tbaa !142
  %327 = icmp eq ptr %326, null
  br i1 %327, label %328, label %333

328:                                              ; preds = %324
  %329 = getelementptr inbounds %struct.Object, ptr %1, i64 0, i32 129
  %330 = load ptr, ptr %329, align 8, !tbaa !250
  %331 = icmp eq ptr %330, null
  br i1 %331, label %366, label %332

332:                                              ; preds = %328
  br i1 %327, label %337, label %333

333:                                              ; preds = %324, %332
  %334 = getelementptr inbounds %struct.RigidBodyOb, ptr %326, i64 0, i32 4
  %335 = load i32, ptr %334, align 4, !tbaa !251
  %336 = or i32 %335, 4
  store i32 %336, ptr %334, align 4, !tbaa !251
  br label %337

337:                                              ; preds = %333, %332
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(200) %4, i8 0, i64 200, i1 false)
  %338 = getelementptr inbounds %struct.PTCacheID, ptr %4, i64 0, i32 3
  store ptr %1, ptr %338, align 8, !tbaa !41
  %339 = getelementptr inbounds %struct.PTCacheID, ptr %4, i64 0, i32 4
  store ptr %322, ptr %339, align 8, !tbaa !44
  %340 = getelementptr inbounds %struct.PTCacheID, ptr %4, i64 0, i32 5
  store i32 6, ptr %340, align 8, !tbaa !45
  %341 = getelementptr inbounds %struct.RigidBodyWorld, ptr %322, i64 0, i32 6
  %342 = load ptr, ptr %341, align 8, !tbaa !138
  %343 = getelementptr inbounds %struct.PTCacheID, ptr %4, i64 0, i32 25
  store ptr %342, ptr %343, align 8, !tbaa !50
  %344 = getelementptr inbounds %struct.PTCacheID, ptr %4, i64 0, i32 26
  store ptr %341, ptr %344, align 8, !tbaa !51
  %345 = getelementptr inbounds %struct.RigidBodyWorld, ptr %322, i64 0, i32 7
  %346 = getelementptr inbounds %struct.PTCacheID, ptr %4, i64 0, i32 27
  store ptr %345, ptr %346, align 8, !tbaa !52
  %347 = getelementptr inbounds %struct.PTCacheID, ptr %4, i64 0, i32 22
  store ptr @ptcache_rigidbody_totpoint, ptr %347, align 8, !tbaa !53
  %348 = getelementptr inbounds %struct.PTCacheID, ptr %4, i64 0, i32 20
  store ptr @ptcache_rigidbody_totpoint, ptr %348, align 8, !tbaa !54
  %349 = getelementptr inbounds %struct.PTCacheID, ptr %4, i64 0, i32 21
  store ptr @ptcache_rigidbody_error, ptr %349, align 8, !tbaa !55
  %350 = getelementptr inbounds %struct.PTCacheID, ptr %4, i64 0, i32 12
  store ptr @ptcache_rigidbody_write, ptr %350, align 8, !tbaa !56
  %351 = getelementptr inbounds %struct.PTCacheID, ptr %4, i64 0, i32 13
  store ptr @ptcache_rigidbody_read, ptr %351, align 8, !tbaa !57
  %352 = getelementptr inbounds %struct.PTCacheID, ptr %4, i64 0, i32 14
  store ptr @ptcache_rigidbody_interpolate, ptr %352, align 8, !tbaa !58
  %353 = getelementptr inbounds %struct.PTCacheID, ptr %4, i64 0, i32 15
  %354 = getelementptr inbounds %struct.PTCacheID, ptr %4, i64 0, i32 23
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %353, i8 0, i64 40, i1 false)
  store ptr @ptcache_basic_header_write, ptr %354, align 8, !tbaa !59
  %355 = getelementptr inbounds %struct.PTCacheID, ptr %4, i64 0, i32 24
  store ptr @ptcache_basic_header_read, ptr %355, align 8, !tbaa !60
  %356 = getelementptr inbounds %struct.PTCacheID, ptr %4, i64 0, i32 10
  store i32 10, ptr %356, align 4, !tbaa !61
  %357 = getelementptr inbounds %struct.PTCacheID, ptr %4, i64 0, i32 11
  store i32 0, ptr %357, align 8, !tbaa !62
  %358 = getelementptr inbounds %struct.PointCache, ptr %342, i64 0, i32 12
  %359 = load i32, ptr %358, align 8, !tbaa !63
  %360 = getelementptr inbounds %struct.PTCacheID, ptr %4, i64 0, i32 6
  store i32 %359, ptr %360, align 4, !tbaa !65
  %361 = getelementptr inbounds %struct.PTCacheID, ptr %4, i64 0, i32 8
  store i32 1, ptr %361, align 4, !tbaa !66
  %362 = getelementptr inbounds %struct.PTCacheID, ptr %4, i64 0, i32 9
  store i32 1, ptr %362, align 8, !tbaa !67
  %363 = getelementptr inbounds %struct.PointCache, ptr %342, i64 0, i32 2
  %364 = load i32, ptr %363, align 8, !tbaa !191
  %365 = or i32 %364, 2
  store i32 %365, ptr %363, align 8, !tbaa !191
  br label %366

366:                                              ; preds = %337, %328, %319
  %367 = getelementptr inbounds %struct.Object, ptr %1, i64 0, i32 3
  %368 = load i16, ptr %367, align 8, !tbaa !252
  %369 = icmp eq i16 %368, 25
  br i1 %369, label %370, label %373

370:                                              ; preds = %366
  %371 = getelementptr inbounds %struct.Object, ptr %1, i64 0, i32 18
  %372 = load ptr, ptr %371, align 8, !tbaa !253
  call void @BIK_clear_cache(ptr noundef %372) #22
  br label %373

373:                                              ; preds = %370, %366
  call void @llvm.lifetime.end.p0(i64 200, ptr nonnull %4) #22
  ret i32 %320
}

declare void @BIK_clear_cache(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local void @BKE_ptcache_remove() local_unnamed_addr #0 {
  %1 = alloca [1024 x i8], align 16
  %2 = alloca [1024 x i8], align 16
  call void @llvm.lifetime.start.p0(i64 1024, ptr nonnull %1) #22
  call void @llvm.lifetime.start.p0(i64 1024, ptr nonnull %2) #22
  %3 = call fastcc i32 @ptcache_path(ptr noundef null, ptr noundef nonnull %1)
  %4 = call i32 @BLI_exists(ptr noundef nonnull %1) #22
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %35, label %6

6:                                                ; preds = %0
  %7 = call ptr @opendir(ptr noundef nonnull %1)
  %8 = icmp eq ptr %7, null
  br i1 %8, label %33, label %9

9:                                                ; preds = %6
  %10 = call ptr @readdir(ptr noundef nonnull %7) #22
  %11 = icmp eq ptr %10, null
  br i1 %11, label %30, label %12

12:                                               ; preds = %9, %26
  %13 = phi ptr [ %28, %26 ], [ %10, %9 ]
  %14 = phi i32 [ %27, %26 ], [ 1, %9 ]
  %15 = getelementptr inbounds %struct.dirent, ptr %13, i64 0, i32 4
  %16 = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %15, ptr noundef nonnull dereferenceable(2) @.str.4) #23
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %26, label %18

18:                                               ; preds = %12
  %19 = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %15, ptr noundef nonnull dereferenceable(3) @.str.5) #23
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %26, label %21

21:                                               ; preds = %18
  %22 = call ptr @strstr(ptr noundef nonnull dereferenceable(1) %15, ptr noundef nonnull dereferenceable(1) @.str.6) #23
  %23 = icmp eq ptr %22, null
  br i1 %23, label %26, label %24

24:                                               ; preds = %21
  call void @BLI_join_dirfile(ptr noundef nonnull %2, i64 noundef 1024, ptr noundef nonnull %1, ptr noundef nonnull %15) #22
  %25 = call i32 @BLI_delete(ptr noundef nonnull %2, i8 noundef zeroext 0, i8 noundef zeroext 0) #22
  br label %26

26:                                               ; preds = %21, %24, %12, %18
  %27 = phi i32 [ %14, %12 ], [ %14, %18 ], [ %14, %24 ], [ 0, %21 ]
  %28 = call ptr @readdir(ptr noundef nonnull %7) #22
  %29 = icmp eq ptr %28, null
  br i1 %29, label %30, label %12, !llvm.loop !254

30:                                               ; preds = %26, %9
  %31 = phi i32 [ 1, %9 ], [ %27, %26 ]
  %32 = call i32 @closedir(ptr noundef nonnull %7)
  br label %33

33:                                               ; preds = %6, %30
  %34 = phi i32 [ %31, %30 ], [ 1, %6 ]
  br i1 %8, label %40, label %35

35:                                               ; preds = %0, %33
  %36 = phi i32 [ %34, %33 ], [ 0, %0 ]
  %37 = icmp eq i32 %36, 0
  br i1 %37, label %40, label %38

38:                                               ; preds = %35
  %39 = call i32 @BLI_delete(ptr noundef nonnull %1, i8 noundef zeroext 1, i8 noundef zeroext 0) #22
  br label %40

40:                                               ; preds = %35, %38, %33
  call void @llvm.lifetime.end.p0(i64 1024, ptr nonnull %2) #22
  call void @llvm.lifetime.end.p0(i64 1024, ptr nonnull %1) #22
  ret void
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read)
declare i32 @strcmp(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #15

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @BKE_ptcache_add(ptr noundef %0) local_unnamed_addr #0 {
  %2 = load ptr, ptr @MEM_callocN, align 8, !tbaa !34
  %3 = tail call ptr %2(i64 noundef 1320, ptr noundef nonnull @.str.7) #22
  %4 = getelementptr inbounds %struct.PointCache, ptr %3, i64 0, i32 5
  store i32 1, ptr %4, align 4, !tbaa !192
  %5 = getelementptr inbounds %struct.PointCache, ptr %3, i64 0, i32 6
  store i32 250, ptr %5, align 8, !tbaa !193
  %6 = getelementptr inbounds %struct.PointCache, ptr %3, i64 0, i32 3
  store i32 1, ptr %6, align 4, !tbaa !93
  %7 = getelementptr inbounds %struct.PointCache, ptr %3, i64 0, i32 12
  store i32 -1, ptr %7, align 8, !tbaa !63
  tail call void @BLI_addtail(ptr noundef %0, ptr noundef %3) #22
  ret ptr %3
}

; Function Attrs: nounwind uwtable
define dso_local void @BKE_ptcache_free_mem(ptr noundef %0) local_unnamed_addr #0 {
  %2 = load ptr, ptr %0, align 8, !tbaa !182
  %3 = icmp eq ptr %2, null
  br i1 %3, label %36, label %4

4:                                                ; preds = %1, %32
  %5 = phi ptr [ %33, %32 ], [ %2, %1 ]
  %6 = getelementptr inbounds %struct.PTCacheMem, ptr %5, i64 0, i32 6
  br label %7

7:                                                ; preds = %4, %14
  %8 = phi i64 [ 0, %4 ], [ %15, %14 ]
  %9 = getelementptr inbounds ptr, ptr %6, i64 %8
  %10 = load ptr, ptr %9, align 8, !tbaa !34
  %11 = icmp eq ptr %10, null
  br i1 %11, label %14, label %12

12:                                               ; preds = %7
  %13 = load ptr, ptr @MEM_freeN, align 8, !tbaa !34
  tail call void %13(ptr noundef nonnull %10) #22
  br label %14

14:                                               ; preds = %12, %7
  %15 = add nuw nsw i64 %8, 1
  %16 = icmp eq i64 %15, 8
  br i1 %16, label %17, label %7, !llvm.loop !211

17:                                               ; preds = %14
  %18 = getelementptr inbounds %struct.PTCacheMem, ptr %5, i64 0, i32 8
  %19 = load ptr, ptr %18, align 8, !tbaa !210
  %20 = icmp eq ptr %19, null
  br i1 %20, label %32, label %21

21:                                               ; preds = %17, %28
  %22 = phi ptr [ %29, %28 ], [ %19, %17 ]
  %23 = getelementptr inbounds %struct.PTCacheExtra, ptr %22, i64 0, i32 4
  %24 = load ptr, ptr %23, align 8, !tbaa !111
  %25 = icmp eq ptr %24, null
  br i1 %25, label %28, label %26

26:                                               ; preds = %21
  %27 = load ptr, ptr @MEM_freeN, align 8, !tbaa !34
  tail call void %27(ptr noundef nonnull %24) #22
  br label %28

28:                                               ; preds = %26, %21
  %29 = load ptr, ptr %22, align 8, !tbaa !212
  %30 = icmp eq ptr %29, null
  br i1 %30, label %31, label %21, !llvm.loop !213

31:                                               ; preds = %28
  tail call void @BLI_freelistN(ptr noundef nonnull %18) #22
  br label %32

32:                                               ; preds = %17, %31
  %33 = load ptr, ptr %5, align 8, !tbaa !201
  %34 = icmp eq ptr %33, null
  br i1 %34, label %35, label %4, !llvm.loop !255

35:                                               ; preds = %32
  tail call void @BLI_freelistN(ptr noundef nonnull %0) #22
  br label %36

36:                                               ; preds = %35, %1
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @BKE_ptcache_free(ptr noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.PointCache, ptr %0, i64 0, i32 20
  %3 = load ptr, ptr %2, align 8, !tbaa !182
  %4 = icmp eq ptr %3, null
  br i1 %4, label %37, label %5

5:                                                ; preds = %1, %33
  %6 = phi ptr [ %34, %33 ], [ %3, %1 ]
  %7 = getelementptr inbounds %struct.PTCacheMem, ptr %6, i64 0, i32 6
  br label %8

8:                                                ; preds = %15, %5
  %9 = phi i64 [ 0, %5 ], [ %16, %15 ]
  %10 = getelementptr inbounds ptr, ptr %7, i64 %9
  %11 = load ptr, ptr %10, align 8, !tbaa !34
  %12 = icmp eq ptr %11, null
  br i1 %12, label %15, label %13

13:                                               ; preds = %8
  %14 = load ptr, ptr @MEM_freeN, align 8, !tbaa !34
  tail call void %14(ptr noundef nonnull %11) #22
  br label %15

15:                                               ; preds = %13, %8
  %16 = add nuw nsw i64 %9, 1
  %17 = icmp eq i64 %16, 8
  br i1 %17, label %18, label %8, !llvm.loop !211

18:                                               ; preds = %15
  %19 = getelementptr inbounds %struct.PTCacheMem, ptr %6, i64 0, i32 8
  %20 = load ptr, ptr %19, align 8, !tbaa !210
  %21 = icmp eq ptr %20, null
  br i1 %21, label %33, label %22

22:                                               ; preds = %18, %29
  %23 = phi ptr [ %30, %29 ], [ %20, %18 ]
  %24 = getelementptr inbounds %struct.PTCacheExtra, ptr %23, i64 0, i32 4
  %25 = load ptr, ptr %24, align 8, !tbaa !111
  %26 = icmp eq ptr %25, null
  br i1 %26, label %29, label %27

27:                                               ; preds = %22
  %28 = load ptr, ptr @MEM_freeN, align 8, !tbaa !34
  tail call void %28(ptr noundef nonnull %25) #22
  br label %29

29:                                               ; preds = %27, %22
  %30 = load ptr, ptr %23, align 8, !tbaa !212
  %31 = icmp eq ptr %30, null
  br i1 %31, label %32, label %22, !llvm.loop !213

32:                                               ; preds = %29
  tail call void @BLI_freelistN(ptr noundef nonnull %19) #22
  br label %33

33:                                               ; preds = %32, %18
  %34 = load ptr, ptr %6, align 8, !tbaa !201
  %35 = icmp eq ptr %34, null
  br i1 %35, label %36, label %5, !llvm.loop !255

36:                                               ; preds = %33
  tail call void @BLI_freelistN(ptr noundef nonnull %2) #22
  br label %37

37:                                               ; preds = %1, %36
  %38 = getelementptr inbounds %struct.PointCache, ptr %0, i64 0, i32 21
  %39 = load ptr, ptr %38, align 8, !tbaa !256
  %40 = icmp eq ptr %39, null
  br i1 %40, label %46, label %41

41:                                               ; preds = %37
  %42 = getelementptr inbounds %struct.PointCache, ptr %0, i64 0, i32 22
  %43 = load ptr, ptr %42, align 8, !tbaa !257
  %44 = icmp eq ptr %43, null
  br i1 %44, label %46, label %45

45:                                               ; preds = %41
  tail call void %43(ptr noundef nonnull %39) #22
  br label %46

46:                                               ; preds = %45, %41, %37
  %47 = getelementptr inbounds %struct.PointCache, ptr %0, i64 0, i32 19
  %48 = load ptr, ptr %47, align 8, !tbaa !194
  %49 = icmp eq ptr %48, null
  br i1 %49, label %52, label %50

50:                                               ; preds = %46
  %51 = load ptr, ptr @MEM_freeN, align 8, !tbaa !34
  tail call void %51(ptr noundef nonnull %48) #22
  br label %52

52:                                               ; preds = %50, %46
  %53 = load ptr, ptr @MEM_freeN, align 8, !tbaa !34
  tail call void %53(ptr noundef %0) #22
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @BKE_ptcache_free_list(ptr noundef %0) local_unnamed_addr #0 {
  %2 = tail call ptr @BLI_pophead(ptr noundef %0) #22
  %3 = icmp eq ptr %2, null
  br i1 %3, label %8, label %4

4:                                                ; preds = %1, %4
  %5 = phi ptr [ %6, %4 ], [ %2, %1 ]
  tail call void @BKE_ptcache_free(ptr noundef nonnull %5)
  %6 = tail call ptr @BLI_pophead(ptr noundef %0) #22
  %7 = icmp eq ptr %6, null
  br i1 %7, label %8, label %4, !llvm.loop !258

8:                                                ; preds = %4, %1
  ret void
}

declare ptr @BLI_pophead(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local ptr @BKE_ptcache_copy_list(ptr noundef %0, ptr nocapture noundef readonly %1, i8 noundef zeroext %2) local_unnamed_addr #0 {
  %4 = load ptr, ptr %1, align 8, !tbaa !182
  %5 = icmp eq ptr %4, null
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, i8 0, i64 16, i1 false)
  br i1 %5, label %73, label %6

6:                                                ; preds = %3
  %7 = icmp eq i8 %2, 0
  br label %8

8:                                                ; preds = %6, %69
  %9 = phi ptr [ %4, %6 ], [ %71, %69 ]
  %10 = load ptr, ptr @MEM_dupallocN, align 8, !tbaa !34
  %11 = tail call ptr %10(ptr noundef nonnull %9) #22
  %12 = getelementptr inbounds %struct.PointCache, ptr %11, i64 0, i32 20
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %12, i8 0, i64 16, i1 false)
  br i1 %7, label %13, label %19

13:                                               ; preds = %8
  %14 = getelementptr inbounds %struct.PointCache, ptr %11, i64 0, i32 19
  store ptr null, ptr %14, align 8, !tbaa !194
  %15 = getelementptr inbounds %struct.PointCache, ptr %11, i64 0, i32 2
  %16 = load i32, ptr %15, align 8, !tbaa !191
  %17 = and i32 %16, 2624
  store i32 %17, ptr %15, align 8, !tbaa !191
  %18 = getelementptr inbounds %struct.PointCache, ptr %11, i64 0, i32 4
  store i32 0, ptr %18, align 8, !tbaa !205
  br label %69

19:                                               ; preds = %8
  %20 = getelementptr inbounds %struct.PointCache, ptr %9, i64 0, i32 20
  %21 = load ptr, ptr %20, align 8, !tbaa !34
  %22 = icmp eq ptr %21, null
  br i1 %22, label %60, label %23

23:                                               ; preds = %19, %57
  %24 = phi ptr [ %58, %57 ], [ %21, %19 ]
  %25 = load ptr, ptr @MEM_dupallocN, align 8, !tbaa !34
  %26 = tail call ptr %25(ptr noundef nonnull %24) #22
  br label %27

27:                                               ; preds = %23, %37
  %28 = phi i64 [ 0, %23 ], [ %38, %37 ]
  %29 = getelementptr inbounds %struct.PTCacheMem, ptr %26, i64 0, i32 6, i64 %28
  %30 = load ptr, ptr %29, align 8, !tbaa !34
  %31 = icmp eq ptr %30, null
  br i1 %31, label %37, label %32

32:                                               ; preds = %27
  %33 = load ptr, ptr @MEM_dupallocN, align 8, !tbaa !34
  %34 = getelementptr inbounds %struct.PTCacheMem, ptr %24, i64 0, i32 6, i64 %28
  %35 = load ptr, ptr %34, align 8, !tbaa !34
  %36 = tail call ptr %33(ptr noundef %35) #22
  store ptr %36, ptr %29, align 8, !tbaa !34
  br label %37

37:                                               ; preds = %32, %27
  %38 = add nuw nsw i64 %28, 1
  %39 = icmp eq i64 %38, 8
  br i1 %39, label %40, label %27, !llvm.loop !259

40:                                               ; preds = %37
  %41 = getelementptr inbounds %struct.PTCacheMem, ptr %24, i64 0, i32 4
  %42 = load i32, ptr %41, align 8, !tbaa !187
  br label %43

43:                                               ; preds = %40, %52
  %44 = phi i64 [ 0, %40 ], [ %55, %52 ]
  %45 = trunc i64 %44 to i32
  %46 = shl nuw nsw i32 1, %45
  %47 = and i32 %46, %42
  %48 = icmp eq i32 %47, 0
  br i1 %48, label %52, label %49

49:                                               ; preds = %43
  %50 = getelementptr inbounds %struct.PTCacheMem, ptr %24, i64 0, i32 6, i64 %44
  %51 = load ptr, ptr %50, align 8, !tbaa !34
  br label %52

52:                                               ; preds = %49, %43
  %53 = phi ptr [ %51, %49 ], [ null, %43 ]
  %54 = getelementptr inbounds %struct.PTCacheMem, ptr %24, i64 0, i32 7, i64 %44
  store ptr %53, ptr %54, align 8, !tbaa !34
  %55 = add nuw nsw i64 %44, 1
  %56 = icmp eq i64 %55, 8
  br i1 %56, label %57, label %43, !llvm.loop !188

57:                                               ; preds = %52
  tail call void @BLI_addtail(ptr noundef nonnull %12, ptr noundef %26) #22
  %58 = load ptr, ptr %24, align 8, !tbaa !34
  %59 = icmp eq ptr %58, null
  br i1 %59, label %60, label %23, !llvm.loop !260

60:                                               ; preds = %57, %19
  %61 = getelementptr inbounds %struct.PointCache, ptr %11, i64 0, i32 19
  %62 = load ptr, ptr %61, align 8, !tbaa !194
  %63 = icmp eq ptr %62, null
  br i1 %63, label %69, label %64

64:                                               ; preds = %60
  %65 = load ptr, ptr @MEM_dupallocN, align 8, !tbaa !34
  %66 = getelementptr inbounds %struct.PointCache, ptr %9, i64 0, i32 19
  %67 = load ptr, ptr %66, align 8, !tbaa !194
  %68 = tail call ptr %65(ptr noundef %67) #22
  store ptr %68, ptr %61, align 8, !tbaa !194
  br label %69

69:                                               ; preds = %13, %60, %64
  %70 = getelementptr inbounds %struct.PointCache, ptr %11, i64 0, i32 21
  store ptr null, ptr %70, align 8, !tbaa !256
  tail call void @BLI_addtail(ptr noundef nonnull %0, ptr noundef %11) #22
  %71 = load ptr, ptr %9, align 8, !tbaa !261
  %72 = icmp eq ptr %71, null
  br i1 %72, label %73, label %8, !llvm.loop !262

73:                                               ; preds = %69, %3
  %74 = load ptr, ptr %0, align 8, !tbaa !182
  ret ptr %74
}

; Function Attrs: nounwind uwtable
define dso_local void @BKE_ptcache_quick_cache_all(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = alloca %struct.PTCacheBaker, align 8
  call void @llvm.lifetime.start.p0(i64 80, ptr nonnull %3) #22
  %4 = getelementptr inbounds %struct.PTCacheBaker, ptr %3, i64 0, i32 2
  store i32 0, ptr %4, align 8, !tbaa !263
  %5 = getelementptr inbounds %struct.PTCacheBaker, ptr %3, i64 0, i32 6
  %6 = getelementptr inbounds %struct.PTCacheBaker, ptr %3, i64 0, i32 3
  store i32 0, ptr %6, align 4, !tbaa !265
  %7 = getelementptr inbounds %struct.PTCacheBaker, ptr %3, i64 0, i32 4
  store i32 0, ptr %7, align 8, !tbaa !266
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %5, i8 0, i64 48, i1 false)
  store ptr %0, ptr %3, align 8, !tbaa !267
  %8 = getelementptr inbounds %struct.PTCacheBaker, ptr %3, i64 0, i32 1
  store ptr %1, ptr %8, align 8, !tbaa !268
  %9 = getelementptr inbounds %struct.Scene, ptr %1, i64 0, i32 40, i32 2
  %10 = load i32, ptr %9, align 8, !tbaa !269
  %11 = getelementptr inbounds %struct.PTCacheBaker, ptr %3, i64 0, i32 5
  store i32 %10, ptr %11, align 4, !tbaa !270
  call void @BKE_ptcache_bake(ptr noundef nonnull %3)
  call void @llvm.lifetime.end.p0(i64 80, ptr nonnull %3) #22
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @BKE_ptcache_bake(ptr nocapture noundef readonly %0) local_unnamed_addr #0 {
  %2 = alloca ptr, align 8
  %3 = alloca %struct.ListBase, align 8
  %4 = alloca %struct.ListBase, align 8
  %5 = alloca %struct.ptcache_bake_data, align 8
  %6 = alloca %struct.ListBase, align 8
  %7 = load ptr, ptr %0, align 8, !tbaa !267
  %8 = getelementptr inbounds %struct.PTCacheBaker, ptr %0, i64 0, i32 1
  %9 = load ptr, ptr %8, align 8, !tbaa !268
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %2) #22
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %3) #22
  %10 = getelementptr inbounds %struct.PTCacheBaker, ptr %0, i64 0, i32 6
  %11 = load ptr, ptr %10, align 8, !tbaa !271
  %12 = getelementptr inbounds %struct.Scene, ptr %9, i64 0, i32 22, i32 15
  %13 = load float, ptr %12, align 4, !tbaa !272
  %14 = getelementptr inbounds %struct.Scene, ptr %9, i64 0, i32 22, i32 5
  %15 = load i32, ptr %14, align 8, !tbaa !242
  %16 = getelementptr inbounds %struct.PTCacheBaker, ptr %0, i64 0, i32 2
  %17 = load i32, ptr %16, align 8, !tbaa !263
  %18 = getelementptr inbounds %struct.PTCacheBaker, ptr %0, i64 0, i32 3
  %19 = load i32, ptr %18, align 4, !tbaa !265
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %4) #22
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %5) #22
  %20 = getelementptr inbounds %struct.PTCacheBaker, ptr %0, i64 0, i32 4
  %21 = load i32, ptr %20, align 8, !tbaa !266
  %22 = icmp eq i32 %21, 0
  %23 = getelementptr inbounds %struct.Scene, ptr %9, i64 0, i32 22, i32 6
  %24 = select i1 %22, ptr %14, ptr %23
  %25 = load i32, ptr %24, align 4, !tbaa !112
  %26 = getelementptr inbounds %struct.ptcache_bake_data, ptr %5, i64 0, i32 2
  store i32 %25, ptr %26, align 8, !tbaa !273
  %27 = getelementptr inbounds %struct.PTCacheBaker, ptr %0, i64 0, i32 5
  %28 = load i32, ptr %27, align 4, !tbaa !270
  %29 = getelementptr inbounds %struct.ptcache_bake_data, ptr %5, i64 0, i32 3
  store i32 %28, ptr %29, align 4, !tbaa !275
  %30 = getelementptr inbounds %struct.ptcache_bake_data, ptr %5, i64 0, i32 4
  store ptr %14, ptr %30, align 8, !tbaa !276
  %31 = getelementptr inbounds %struct.ptcache_bake_data, ptr %5, i64 0, i32 6
  store ptr %9, ptr %31, align 8, !tbaa !277
  %32 = getelementptr inbounds %struct.ptcache_bake_data, ptr %5, i64 0, i32 5
  store ptr %7, ptr %32, align 8, !tbaa !278
  store i8 0, ptr getelementptr inbounds (%struct.Global, ptr @G, i64 0, i32 7), align 8, !tbaa !279
  %33 = icmp eq ptr %11, null
  br i1 %33, label %118, label %34

34:                                               ; preds = %1
  %35 = getelementptr inbounds %struct.PTCacheID, ptr %11, i64 0, i32 25
  %36 = load ptr, ptr %35, align 8, !tbaa !50
  %37 = getelementptr inbounds %struct.PointCache, ptr %36, i64 0, i32 2
  %38 = load i32, ptr %37, align 8, !tbaa !191
  %39 = and i32 %38, 1
  %40 = icmp eq i32 %39, 0
  br i1 %40, label %41, label %194

41:                                               ; preds = %34
  %42 = getelementptr inbounds %struct.PTCacheID, ptr %11, i64 0, i32 5
  %43 = load i32, ptr %42, align 8, !tbaa !45
  switch i32 %43, label %92 [
    i32 1, label %44
    i32 4, label %55
  ]

44:                                               ; preds = %41
  %45 = getelementptr inbounds %struct.PTCacheID, ptr %11, i64 0, i32 4
  %46 = load ptr, ptr %45, align 8, !tbaa !44
  %47 = getelementptr inbounds %struct.ParticleSystem, ptr %46, i64 0, i32 2
  %48 = load ptr, ptr %47, align 8, !tbaa !77
  %49 = getelementptr inbounds %struct.ParticleSettings, ptr %48, i64 0, i32 7
  %50 = load i16, ptr %49, align 8, !tbaa !78
  %51 = icmp eq i16 %50, 0
  br i1 %51, label %52, label %92

52:                                               ; preds = %44
  %53 = getelementptr inbounds %struct.PointCache, ptr %36, i64 0, i32 5
  %54 = getelementptr inbounds %struct.PointCache, ptr %36, i64 0, i32 6
  tail call void @psys_get_pointcache_start_end(ptr noundef %9, ptr noundef %46, ptr noundef nonnull %53, ptr noundef nonnull %54) #22
  br label %92

55:                                               ; preds = %41
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %6) #22
  %56 = getelementptr inbounds %struct.PTCacheID, ptr %11, i64 0, i32 3
  %57 = load ptr, ptr %56, align 8, !tbaa !41
  call void @BKE_ptcache_ids_from_object(ptr noundef nonnull %6, ptr noundef %57, ptr noundef %9, i32 noundef 8)
  %58 = load ptr, ptr %6, align 8, !tbaa !34
  %59 = icmp eq ptr %58, null
  br i1 %59, label %91, label %60

60:                                               ; preds = %55
  %61 = icmp eq i32 %17, 0
  br label %62

62:                                               ; preds = %60, %88
  %63 = phi ptr [ %58, %60 ], [ %89, %88 ]
  %64 = getelementptr inbounds %struct.PTCacheID, ptr %63, i64 0, i32 5
  %65 = load i32, ptr %64, align 8, !tbaa !45
  %66 = icmp eq i32 %65, 3
  br i1 %66, label %67, label %88

67:                                               ; preds = %62
  %68 = getelementptr inbounds %struct.PTCacheID, ptr %63, i64 0, i32 25
  %69 = load ptr, ptr %68, align 8, !tbaa !50
  %70 = icmp eq ptr %69, null
  br i1 %70, label %88, label %71

71:                                               ; preds = %67
  %72 = getelementptr inbounds %struct.PointCache, ptr %69, i64 0, i32 2
  %73 = load i32, ptr %72, align 8, !tbaa !191
  %74 = and i32 %73, 1
  %75 = icmp eq i32 %74, 0
  br i1 %75, label %76, label %88

76:                                               ; preds = %71
  %77 = and i32 %73, 258
  %78 = or i32 %77, %17
  %79 = icmp eq i32 %78, 0
  br i1 %79, label %81, label %80

80:                                               ; preds = %76
  call void @BKE_ptcache_id_clear(ptr noundef nonnull %63, i32 noundef 0, i32 noundef 0)
  br label %81

81:                                               ; preds = %76, %80
  br i1 %61, label %88, label %82

82:                                               ; preds = %81
  %83 = load ptr, ptr %68, align 8, !tbaa !50
  %84 = getelementptr inbounds %struct.PointCache, ptr %83, i64 0, i32 2
  %85 = load i32, ptr %84, align 8, !tbaa !191
  %86 = and i32 %85, -10
  %87 = or disjoint i32 %86, 8
  store i32 %87, ptr %84, align 8, !tbaa !191
  br label %88

88:                                               ; preds = %62, %81, %82, %71, %67
  %89 = load ptr, ptr %63, align 8, !tbaa !34
  %90 = icmp eq ptr %89, null
  br i1 %90, label %91, label %62, !llvm.loop !280

91:                                               ; preds = %88, %55
  call void @BLI_freelistN(ptr noundef nonnull %6) #22
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %6) #22
  br label %92

92:                                               ; preds = %41, %44, %52, %91
  %93 = icmp eq i32 %17, 0
  br i1 %93, label %94, label %98

94:                                               ; preds = %92
  %95 = load i32, ptr %37, align 8, !tbaa !191
  %96 = and i32 %95, 258
  %97 = icmp eq i32 %96, 0
  br i1 %97, label %99, label %98

98:                                               ; preds = %94, %92
  call void @BKE_ptcache_id_clear(ptr noundef nonnull %11, i32 noundef 0, i32 noundef 0)
  br label %99

99:                                               ; preds = %98, %94
  %100 = getelementptr inbounds %struct.PointCache, ptr %36, i64 0, i32 8
  %101 = load i32, ptr %100, align 8, !tbaa !214
  %102 = getelementptr inbounds %struct.PointCache, ptr %36, i64 0, i32 5
  %103 = load i32, ptr %102, align 4, !tbaa !192
  %104 = call i32 @llvm.smax.i32(i32 %101, i32 %103)
  br i1 %93, label %110, label %105

105:                                              ; preds = %99
  %106 = getelementptr inbounds %struct.PointCache, ptr %36, i64 0, i32 6
  %107 = load i32, ptr %106, align 8, !tbaa !193
  store i32 %107, ptr %26, align 8, !tbaa !273
  %108 = load i32, ptr %37, align 8, !tbaa !191
  %109 = or i32 %108, 8
  store i32 %109, ptr %37, align 8, !tbaa !191
  br label %115

110:                                              ; preds = %99
  %111 = load i32, ptr %26, align 8, !tbaa !273
  %112 = getelementptr inbounds %struct.PointCache, ptr %36, i64 0, i32 6
  %113 = load i32, ptr %112, align 8, !tbaa !193
  %114 = call i32 @llvm.smin.i32(i32 %111, i32 %113)
  store i32 %114, ptr %26, align 8, !tbaa !273
  br label %115

115:                                              ; preds = %110, %105
  %116 = load i32, ptr %37, align 8, !tbaa !191
  %117 = and i32 %116, -2
  store i32 %117, ptr %37, align 8, !tbaa !191
  br label %194

118:                                              ; preds = %1
  store ptr %9, ptr %2, align 8, !tbaa !34
  %119 = call ptr @_setlooper_base_step(ptr noundef nonnull %2, ptr noundef null) #22
  %120 = icmp eq ptr %119, null
  br i1 %120, label %194, label %121

121:                                              ; preds = %118
  %122 = icmp eq i32 %19, 0
  %123 = icmp eq i32 %17, 0
  %124 = select i1 %122, i1 %123, i1 false
  %125 = icmp ne i32 %17, 0
  %126 = icmp ne i32 %19, 0
  %127 = select i1 %125, i1 true, i1 %126
  br label %128

128:                                              ; preds = %121, %189
  %129 = phi ptr [ %119, %121 ], [ %192, %189 ]
  %130 = phi ptr [ null, %121 ], [ %191, %189 ]
  %131 = phi i32 [ 300000, %121 ], [ %190, %189 ]
  %132 = getelementptr inbounds %struct.Base, ptr %129, i64 0, i32 7
  %133 = load ptr, ptr %132, align 8, !tbaa !281
  call void @BKE_ptcache_ids_from_object(ptr noundef nonnull %3, ptr noundef %133, ptr noundef %9, i32 noundef 8)
  %134 = load ptr, ptr %3, align 8, !tbaa !34
  %135 = icmp eq ptr %134, null
  br i1 %135, label %189, label %136

136:                                              ; preds = %128, %185
  %137 = phi ptr [ %187, %185 ], [ %134, %128 ]
  %138 = phi i32 [ %186, %185 ], [ %131, %128 ]
  %139 = getelementptr inbounds %struct.PTCacheID, ptr %137, i64 0, i32 25
  %140 = load ptr, ptr %139, align 8, !tbaa !50
  %141 = getelementptr inbounds %struct.PointCache, ptr %140, i64 0, i32 2
  %142 = load i32, ptr %141, align 8, !tbaa !191
  %143 = and i32 %142, 1
  %144 = icmp eq i32 %143, 0
  br i1 %144, label %145, label %185

145:                                              ; preds = %136
  %146 = getelementptr inbounds %struct.PTCacheID, ptr %137, i64 0, i32 5
  %147 = load i32, ptr %146, align 8, !tbaa !45
  %148 = icmp eq i32 %147, 1
  br i1 %148, label %149, label %164

149:                                              ; preds = %145
  %150 = getelementptr inbounds %struct.PTCacheID, ptr %137, i64 0, i32 4
  %151 = load ptr, ptr %150, align 8, !tbaa !44
  %152 = getelementptr inbounds %struct.ParticleSystem, ptr %151, i64 0, i32 2
  %153 = load ptr, ptr %152, align 8, !tbaa !77
  %154 = getelementptr inbounds %struct.ParticleSettings, ptr %153, i64 0, i32 7
  %155 = load i16, ptr %154, align 8, !tbaa !78
  %156 = icmp eq i16 %155, 2
  br i1 %156, label %185, label %157

157:                                              ; preds = %149
  %158 = getelementptr inbounds %struct.ParticleSettings, ptr %153, i64 0, i32 11
  %159 = load i16, ptr %158, align 8, !tbaa !82
  %160 = icmp eq i16 %159, 2
  br i1 %160, label %185, label %161

161:                                              ; preds = %157
  %162 = getelementptr inbounds %struct.PointCache, ptr %140, i64 0, i32 5
  %163 = getelementptr inbounds %struct.PointCache, ptr %140, i64 0, i32 6
  call void @psys_get_pointcache_start_end(ptr noundef %9, ptr noundef %151, ptr noundef nonnull %162, ptr noundef nonnull %163) #22
  br label %164

164:                                              ; preds = %161, %145
  %165 = load i32, ptr %141, align 8, !tbaa !191
  %166 = and i32 %165, 262
  %167 = icmp eq i32 %166, 4
  %168 = select i1 %167, i1 true, i1 %124
  br i1 %168, label %170, label %169

169:                                              ; preds = %164
  call void @BKE_ptcache_id_clear(ptr noundef nonnull %137, i32 noundef 0, i32 noundef 0)
  br label %170

170:                                              ; preds = %164, %169
  %171 = getelementptr inbounds %struct.PointCache, ptr %140, i64 0, i32 5
  %172 = load i32, ptr %171, align 4, !tbaa !192
  %173 = call i32 @llvm.smin.i32(i32 %138, i32 %172)
  br i1 %127, label %174, label %182

174:                                              ; preds = %170
  %175 = load i32, ptr %141, align 8, !tbaa !191
  %176 = or i32 %175, 8
  store i32 %176, ptr %141, align 8, !tbaa !191
  br i1 %125, label %177, label %182

177:                                              ; preds = %174
  %178 = load i32, ptr %26, align 8, !tbaa !273
  %179 = getelementptr inbounds %struct.PointCache, ptr %140, i64 0, i32 6
  %180 = load i32, ptr %179, align 8, !tbaa !193
  %181 = call i32 @llvm.smax.i32(i32 %178, i32 %180)
  store i32 %181, ptr %26, align 8, !tbaa !273
  br label %182

182:                                              ; preds = %174, %177, %170
  %183 = load i32, ptr %141, align 8, !tbaa !191
  %184 = and i32 %183, -2
  store i32 %184, ptr %141, align 8, !tbaa !191
  br label %185

185:                                              ; preds = %157, %149, %136, %182
  %186 = phi i32 [ %173, %182 ], [ %138, %136 ], [ %138, %149 ], [ %138, %157 ]
  %187 = load ptr, ptr %137, align 8, !tbaa !34
  %188 = icmp eq ptr %187, null
  br i1 %188, label %189, label %136, !llvm.loop !283

189:                                              ; preds = %185, %128
  %190 = phi i32 [ %131, %128 ], [ %186, %185 ]
  %191 = phi ptr [ %130, %128 ], [ %140, %185 ]
  call void @BLI_freelistN(ptr noundef nonnull %3) #22
  %192 = call ptr @_setlooper_base_step(ptr noundef nonnull %2, ptr noundef nonnull %129) #22
  %193 = icmp eq ptr %192, null
  br i1 %193, label %194, label %128, !llvm.loop !284

194:                                              ; preds = %189, %118, %34, %115
  %195 = phi i32 [ %104, %115 ], [ 300000, %34 ], [ 300000, %118 ], [ %190, %189 ]
  %196 = phi ptr [ %36, %115 ], [ %36, %34 ], [ null, %118 ], [ %191, %189 ]
  %197 = phi ptr [ %11, %115 ], [ %11, %34 ], [ null, %118 ], [ null, %189 ]
  store i32 %195, ptr %14, align 8, !tbaa !242
  store float 1.000000e+00, ptr %12, align 4, !tbaa !272
  store i32 0, ptr %5, align 8, !tbaa !285
  %198 = getelementptr inbounds %struct.ptcache_bake_data, ptr %5, i64 0, i32 1
  store i32 0, ptr %198, align 4, !tbaa !286
  call void @WM_cursor_wait(i8 noundef zeroext 1) #22
  %199 = load i8, ptr getelementptr inbounds (%struct.Global, ptr @G, i64 0, i32 8), align 1, !tbaa !287
  %200 = icmp eq i8 %199, 0
  br i1 %200, label %203, label %201

201:                                              ; preds = %194
  %202 = call ptr @ptcache_bake_thread(ptr noundef nonnull %5)
  br label %249

203:                                              ; preds = %194
  call void @BLI_init_threads(ptr noundef nonnull %4, ptr noundef nonnull @ptcache_bake_thread, i32 noundef 1) #22
  call void @BLI_insert_thread(ptr noundef nonnull %4, ptr noundef nonnull %5) #22
  %204 = load i32, ptr %198, align 4, !tbaa !286
  %205 = icmp eq i32 %204, 0
  br i1 %205, label %206, label %248

206:                                              ; preds = %203
  %207 = icmp eq i32 %17, 0
  %208 = getelementptr inbounds %struct.PTCacheBaker, ptr %0, i64 0, i32 9
  %209 = getelementptr inbounds %struct.PTCacheBaker, ptr %0, i64 0, i32 11
  %210 = getelementptr inbounds %struct.PTCacheBaker, ptr %0, i64 0, i32 10
  %211 = getelementptr inbounds %struct.PTCacheBaker, ptr %0, i64 0, i32 11
  br label %212

212:                                              ; preds = %206, %245
  %213 = phi i32 [ -1, %206 ], [ %233, %245 ]
  %214 = load i32, ptr %14, align 8, !tbaa !242
  br i1 %207, label %224, label %215

215:                                              ; preds = %212
  %216 = sub nsw i32 %214, %195
  %217 = sitofp i32 %216 to float
  %218 = fmul float %217, 1.000000e+02
  %219 = load i32, ptr %26, align 8, !tbaa !273
  %220 = sub nsw i32 %219, %195
  %221 = sitofp i32 %220 to float
  %222 = fdiv float %218, %221
  %223 = fptosi float %222 to i32
  br label %224

224:                                              ; preds = %212, %215
  %225 = phi i32 [ %223, %215 ], [ %214, %212 ]
  %226 = load ptr, ptr %208, align 8, !tbaa !288
  %227 = icmp eq ptr %226, null
  %228 = icmp eq i32 %225, %213
  %229 = select i1 %227, i1 true, i1 %228
  br i1 %229, label %232, label %230

230:                                              ; preds = %224
  %231 = load ptr, ptr %209, align 8, !tbaa !289
  call void %226(ptr noundef %231, i32 noundef %225) #22
  br label %232

232:                                              ; preds = %230, %224
  %233 = phi i32 [ %225, %230 ], [ %213, %224 ]
  call void @PIL_sleep_ms(i32 noundef 200) #22
  %234 = call i32 @blender_test_break() #22
  %235 = icmp eq i32 %234, 0
  %236 = load i32, ptr %5, align 8
  %237 = icmp ne i32 %236, 0
  %238 = select i1 %235, i1 true, i1 %237
  br i1 %238, label %245, label %239

239:                                              ; preds = %232
  store i32 1, ptr %5, align 8, !tbaa !285
  %240 = load ptr, ptr %210, align 8, !tbaa !290
  %241 = icmp eq ptr %240, null
  br i1 %241, label %244, label %242

242:                                              ; preds = %239
  %243 = load ptr, ptr %211, align 8, !tbaa !289
  call void %240(ptr noundef %243) #22
  br label %244

244:                                              ; preds = %242, %239
  call void @WM_cursor_wait(i8 noundef zeroext 1) #22
  br label %245

245:                                              ; preds = %244, %232
  %246 = load i32, ptr %198, align 4, !tbaa !286
  %247 = icmp eq i32 %246, 0
  br i1 %247, label %212, label %248, !llvm.loop !291

248:                                              ; preds = %245, %203
  call void @BLI_end_threads(ptr noundef nonnull %4) #22
  br label %249

249:                                              ; preds = %248, %201
  %250 = icmp eq ptr %197, null
  br i1 %250, label %263, label %251

251:                                              ; preds = %249
  %252 = getelementptr inbounds %struct.PointCache, ptr %196, i64 0, i32 2
  %253 = load i32, ptr %252, align 8, !tbaa !191
  %254 = and i32 %253, -271
  %255 = or disjoint i32 %254, 4
  store i32 %255, ptr %252, align 8, !tbaa !191
  %256 = icmp eq i32 %17, 0
  br i1 %256, label %310, label %257

257:                                              ; preds = %251
  %258 = or i32 %254, 5
  store i32 %258, ptr %252, align 8, !tbaa !191
  %259 = and i32 %253, 64
  %260 = icmp eq i32 %259, 0
  br i1 %260, label %310, label %261

261:                                              ; preds = %257
  %262 = call i32 @BKE_ptcache_write(ptr noundef nonnull %197, i32 noundef 0), !range !206
  br label %310

263:                                              ; preds = %249
  store ptr %9, ptr %2, align 8, !tbaa !34
  %264 = call ptr @_setlooper_base_step(ptr noundef nonnull %2, ptr noundef null) #22
  %265 = icmp eq ptr %264, null
  br i1 %265, label %310, label %266

266:                                              ; preds = %263
  %267 = icmp eq i32 %17, 0
  br label %268

268:                                              ; preds = %266, %307
  %269 = phi ptr [ %264, %266 ], [ %308, %307 ]
  %270 = getelementptr inbounds %struct.Base, ptr %269, i64 0, i32 7
  %271 = load ptr, ptr %270, align 8, !tbaa !281
  call void @BKE_ptcache_ids_from_object(ptr noundef nonnull %3, ptr noundef %271, ptr noundef %9, i32 noundef 8)
  %272 = load ptr, ptr %3, align 8, !tbaa !34
  %273 = icmp eq ptr %272, null
  br i1 %273, label %307, label %274

274:                                              ; preds = %268, %304
  %275 = phi ptr [ %305, %304 ], [ %272, %268 ]
  %276 = getelementptr inbounds %struct.PTCacheID, ptr %275, i64 0, i32 5
  %277 = load i32, ptr %276, align 8, !tbaa !45
  %278 = icmp eq i32 %277, 1
  br i1 %278, label %279, label %287

279:                                              ; preds = %274
  %280 = getelementptr inbounds %struct.PTCacheID, ptr %275, i64 0, i32 4
  %281 = load ptr, ptr %280, align 8, !tbaa !44
  %282 = getelementptr inbounds %struct.ParticleSystem, ptr %281, i64 0, i32 2
  %283 = load ptr, ptr %282, align 8, !tbaa !77
  %284 = getelementptr inbounds %struct.ParticleSettings, ptr %283, i64 0, i32 7
  %285 = load i16, ptr %284, align 8, !tbaa !78
  %286 = icmp eq i16 %285, 2
  br i1 %286, label %304, label %287

287:                                              ; preds = %279, %274
  %288 = getelementptr inbounds %struct.PTCacheID, ptr %275, i64 0, i32 25
  %289 = load ptr, ptr %288, align 8, !tbaa !50
  %290 = load i32, ptr %29, align 4, !tbaa !275
  %291 = icmp sgt i32 %290, 1
  %292 = getelementptr inbounds %struct.PointCache, ptr %289, i64 0, i32 2
  %293 = load i32, ptr %292, align 8, !tbaa !191
  %294 = select i1 %291, i32 -11, i32 -267
  %295 = and i32 %293, %294
  %296 = getelementptr inbounds %struct.PointCache, ptr %289, i64 0, i32 2
  %297 = or i32 %295, 4
  store i32 %297, ptr %296, align 8, !tbaa !191
  br i1 %267, label %304, label %298

298:                                              ; preds = %287
  %299 = or i32 %295, 5
  store i32 %299, ptr %296, align 8, !tbaa !191
  %300 = and i32 %293, 64
  %301 = icmp eq i32 %300, 0
  br i1 %301, label %304, label %302

302:                                              ; preds = %298
  %303 = call i32 @BKE_ptcache_write(ptr noundef nonnull %275, i32 noundef 0), !range !206
  br label %304

304:                                              ; preds = %287, %302, %298, %279
  %305 = load ptr, ptr %275, align 8, !tbaa !34
  %306 = icmp eq ptr %305, null
  br i1 %306, label %307, label %274, !llvm.loop !292

307:                                              ; preds = %304, %268
  call void @BLI_freelistN(ptr noundef nonnull %3) #22
  %308 = call ptr @_setlooper_base_step(ptr noundef nonnull %2, ptr noundef nonnull %269) #22
  %309 = icmp eq ptr %308, null
  br i1 %309, label %310, label %268, !llvm.loop !293

310:                                              ; preds = %307, %263, %251, %261, %257
  store float %13, ptr %12, align 4, !tbaa !272
  store i32 %15, ptr %14, align 8, !tbaa !242
  %311 = icmp eq i32 %17, 0
  br i1 %311, label %317, label %312

312:                                              ; preds = %310
  %313 = getelementptr inbounds %struct.Main, ptr %7, i64 0, i32 46
  %314 = load ptr, ptr %313, align 8, !tbaa !178
  %315 = getelementptr inbounds %struct.Scene, ptr %9, i64 0, i32 12
  %316 = load i32, ptr %315, align 8, !tbaa !294
  call void @BKE_scene_update_for_newframe(ptr noundef %314, ptr noundef %7, ptr noundef %9, i32 noundef %316) #22
  br label %317

317:                                              ; preds = %312, %310
  %318 = load i32, ptr %5, align 8, !tbaa !285
  %319 = icmp eq i32 %318, 0
  br i1 %319, label %321, label %320

320:                                              ; preds = %317
  call void @WM_cursor_wait(i8 noundef zeroext 0) #22
  br label %328

321:                                              ; preds = %317
  %322 = getelementptr inbounds %struct.PTCacheBaker, ptr %0, i64 0, i32 10
  %323 = load ptr, ptr %322, align 8, !tbaa !290
  %324 = icmp eq ptr %323, null
  br i1 %324, label %328, label %325

325:                                              ; preds = %321
  %326 = getelementptr inbounds %struct.PTCacheBaker, ptr %0, i64 0, i32 11
  %327 = load ptr, ptr %326, align 8, !tbaa !289
  call void %323(ptr noundef %327) #22
  br label %328

328:                                              ; preds = %321, %325, %320
  call void @WM_cursor_wait(i8 noundef zeroext 0) #22
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %5) #22
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %4) #22
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %3) #22
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %2) #22
  ret void
}

declare void @psys_get_pointcache_start_end(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare ptr @_setlooper_base_step(ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @WM_cursor_wait(i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal noalias noundef ptr @ptcache_bake_thread(ptr nocapture noundef %0) #0 {
  %2 = alloca [32 x i8], align 16
  %3 = alloca [32 x i8], align 16
  %4 = alloca [32 x i8], align 16
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %2) #22
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %3) #22
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %4) #22
  %5 = tail call double @PIL_check_seconds_timer() #22
  %6 = getelementptr inbounds %struct.ptcache_bake_data, ptr %0, i64 0, i32 4
  %7 = load ptr, ptr %6, align 8, !tbaa !276
  %8 = load i32, ptr %7, align 4, !tbaa !112
  %9 = getelementptr inbounds %struct.ptcache_bake_data, ptr %0, i64 0, i32 2
  %10 = load i32, ptr %9, align 8, !tbaa !273
  %11 = icmp sgt i32 %8, %10
  br i1 %11, label %177, label %12

12:                                               ; preds = %1
  %13 = getelementptr inbounds %struct.ptcache_bake_data, ptr %0, i64 0, i32 5
  %14 = getelementptr inbounds %struct.ptcache_bake_data, ptr %0, i64 0, i32 6
  %15 = getelementptr inbounds %struct.ptcache_bake_data, ptr %0, i64 0, i32 3
  %16 = sub i32 %10, %8
  %17 = add i32 %16, 1
  %18 = getelementptr inbounds %struct.ptcache_bake_data, ptr %0, i64 0, i32 3
  br label %19

19:                                               ; preds = %12, %131
  %20 = phi i8 [ 0, %12 ], [ %133, %131 ]
  %21 = phi double [ %5, %12 ], [ %132, %131 ]
  %22 = load i32, ptr %0, align 8, !tbaa !285
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %24, label %140

24:                                               ; preds = %19
  %25 = load ptr, ptr @G, align 8, !tbaa !176
  %26 = getelementptr inbounds %struct.Main, ptr %25, i64 0, i32 46
  %27 = load ptr, ptr %26, align 8, !tbaa !178
  %28 = load ptr, ptr %13, align 8, !tbaa !278
  %29 = load ptr, ptr %14, align 8, !tbaa !277
  %30 = getelementptr inbounds %struct.Scene, ptr %29, i64 0, i32 12
  %31 = load i32, ptr %30, align 8, !tbaa !294
  call void @BKE_scene_update_for_newframe(ptr noundef %27, ptr noundef %28, ptr noundef %29, i32 noundef %31) #22
  %32 = load i8, ptr getelementptr inbounds (%struct.Global, ptr @G, i64 0, i32 8), align 1, !tbaa !287
  %33 = icmp eq i8 %32, 0
  br i1 %33, label %39, label %34

34:                                               ; preds = %24
  %35 = load ptr, ptr %6, align 8, !tbaa !276
  %36 = load i32, ptr %35, align 4, !tbaa !112
  %37 = load i32, ptr %9, align 8, !tbaa !273
  %38 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.46, i32 noundef %36, i32 noundef %37)
  br label %131

39:                                               ; preds = %24
  %40 = call double @PIL_check_seconds_timer() #22
  %41 = fsub double %40, %21
  %42 = load ptr, ptr %6, align 8, !tbaa !276
  %43 = load i32, ptr %42, align 4, !tbaa !112
  %44 = sub nsw i32 %10, %43
  %45 = sitofp i32 %44 to double
  %46 = fmul double %41, %45
  %47 = load i32, ptr %15, align 4, !tbaa !275
  %48 = sitofp i32 %47 to double
  %49 = fdiv double %46, %48
  %50 = icmp ne i8 %20, 0
  %51 = fcmp ogt double %49, 6.000000e+01
  %52 = select i1 %50, i1 true, i1 %51
  br i1 %52, label %53, label %131

53:                                               ; preds = %39
  %54 = fcmp ogt double %41, 6.000000e+01
  br i1 %54, label %55, label %73

55:                                               ; preds = %53
  %56 = fcmp ogt double %41, 3.600000e+03
  br i1 %56, label %57, label %66

57:                                               ; preds = %55
  %58 = fdiv double %41, 3.600000e+03
  %59 = fptosi double %58 to i32
  %60 = fdiv double %41, 6.000000e+01
  %61 = fptosi double %60 to i32
  %62 = srem i32 %61, 60
  %63 = fptosi double %41 to i32
  %64 = srem i32 %63, 60
  %65 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %3, ptr noundef nonnull dereferenceable(1) @.str.51, i32 noundef %59, i32 noundef %62, i32 noundef %64) #22
  br label %77

66:                                               ; preds = %55
  %67 = fdiv double %41, 6.000000e+01
  %68 = fptosi double %67 to i32
  %69 = srem i32 %68, 60
  %70 = fptosi double %41 to i32
  %71 = srem i32 %70, 60
  %72 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %3, ptr noundef nonnull dereferenceable(1) @.str.52, i32 noundef %69, i32 noundef %71) #22
  br label %77

73:                                               ; preds = %53
  %74 = fptosi double %41 to i32
  %75 = srem i32 %74, 60
  %76 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %3, ptr noundef nonnull dereferenceable(1) @.str.53, i32 noundef %75) #22
  br label %77

77:                                               ; preds = %57, %66, %73
  %78 = fsub double %40, %5
  %79 = fcmp ogt double %78, 6.000000e+01
  br i1 %79, label %80, label %98

80:                                               ; preds = %77
  %81 = fcmp ogt double %78, 3.600000e+03
  br i1 %81, label %82, label %91

82:                                               ; preds = %80
  %83 = fdiv double %78, 3.600000e+03
  %84 = fptosi double %83 to i32
  %85 = fdiv double %78, 6.000000e+01
  %86 = fptosi double %85 to i32
  %87 = srem i32 %86, 60
  %88 = fptosi double %78 to i32
  %89 = srem i32 %88, 60
  %90 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %2, ptr noundef nonnull dereferenceable(1) @.str.51, i32 noundef %84, i32 noundef %87, i32 noundef %89) #22
  br label %102

91:                                               ; preds = %80
  %92 = fdiv double %78, 6.000000e+01
  %93 = fptosi double %92 to i32
  %94 = srem i32 %93, 60
  %95 = fptosi double %78 to i32
  %96 = srem i32 %95, 60
  %97 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %2, ptr noundef nonnull dereferenceable(1) @.str.52, i32 noundef %94, i32 noundef %96) #22
  br label %102

98:                                               ; preds = %77
  %99 = fptosi double %78 to i32
  %100 = srem i32 %99, 60
  %101 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %2, ptr noundef nonnull dereferenceable(1) @.str.53, i32 noundef %100) #22
  br label %102

102:                                              ; preds = %82, %91, %98
  br i1 %51, label %103, label %121

103:                                              ; preds = %102
  %104 = fcmp ogt double %49, 3.600000e+03
  br i1 %104, label %105, label %114

105:                                              ; preds = %103
  %106 = fdiv double %49, 3.600000e+03
  %107 = fptosi double %106 to i32
  %108 = fdiv double %49, 6.000000e+01
  %109 = fptosi double %108 to i32
  %110 = srem i32 %109, 60
  %111 = fptosi double %49 to i32
  %112 = srem i32 %111, 60
  %113 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %4, ptr noundef nonnull dereferenceable(1) @.str.51, i32 noundef %107, i32 noundef %110, i32 noundef %112) #22
  br label %125

114:                                              ; preds = %103
  %115 = fdiv double %49, 6.000000e+01
  %116 = fptosi double %115 to i32
  %117 = srem i32 %116, 60
  %118 = fptosi double %49 to i32
  %119 = srem i32 %118, 60
  %120 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %4, ptr noundef nonnull dereferenceable(1) @.str.52, i32 noundef %117, i32 noundef %119) #22
  br label %125

121:                                              ; preds = %102
  %122 = fptosi double %49 to i32
  %123 = srem i32 %122, 60
  %124 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %4, ptr noundef nonnull dereferenceable(1) @.str.53, i32 noundef %123) #22
  br label %125

125:                                              ; preds = %105, %114, %121
  %126 = load ptr, ptr %6, align 8, !tbaa !276
  %127 = load i32, ptr %126, align 4, !tbaa !112
  %128 = sub i32 %127, %8
  %129 = add i32 %128, 1
  %130 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.47, ptr noundef nonnull %2, i32 noundef %129, i32 noundef %17, double noundef %41, ptr noundef nonnull %4)
  br label %131

131:                                              ; preds = %125, %39, %34
  %132 = phi double [ %21, %34 ], [ %40, %39 ], [ %40, %125 ]
  %133 = phi i8 [ %20, %34 ], [ %20, %39 ], [ 1, %125 ]
  %134 = load i32, ptr %18, align 4, !tbaa !275
  %135 = load ptr, ptr %6, align 8, !tbaa !276
  %136 = load i32, ptr %135, align 4, !tbaa !112
  %137 = add nsw i32 %136, %134
  store i32 %137, ptr %135, align 4, !tbaa !112
  %138 = load i32, ptr %9, align 8, !tbaa !273
  %139 = icmp sgt i32 %137, %138
  br i1 %139, label %140, label %19, !llvm.loop !295

140:                                              ; preds = %131, %19
  %141 = phi i8 [ %20, %19 ], [ %133, %131 ]
  %142 = icmp eq i8 %141, 0
  br i1 %142, label %177, label %143

143:                                              ; preds = %140
  %144 = call double @PIL_check_seconds_timer() #22
  %145 = fsub double %144, %5
  %146 = fcmp ogt double %145, 6.000000e+01
  br i1 %146, label %147, label %165

147:                                              ; preds = %143
  %148 = fcmp ogt double %145, 3.600000e+03
  br i1 %148, label %149, label %158

149:                                              ; preds = %147
  %150 = fdiv double %145, 3.600000e+03
  %151 = fptosi double %150 to i32
  %152 = fdiv double %145, 6.000000e+01
  %153 = fptosi double %152 to i32
  %154 = srem i32 %153, 60
  %155 = fptosi double %145 to i32
  %156 = srem i32 %155, 60
  %157 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %2, ptr noundef nonnull dereferenceable(1) @.str.51, i32 noundef %151, i32 noundef %154, i32 noundef %156) #22
  br label %169

158:                                              ; preds = %147
  %159 = fdiv double %145, 6.000000e+01
  %160 = fptosi double %159 to i32
  %161 = srem i32 %160, 60
  %162 = fptosi double %145 to i32
  %163 = srem i32 %162, 60
  %164 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %2, ptr noundef nonnull dereferenceable(1) @.str.52, i32 noundef %161, i32 noundef %163) #22
  br label %169

165:                                              ; preds = %143
  %166 = fptosi double %145 to i32
  %167 = srem i32 %166, 60
  %168 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %2, ptr noundef nonnull dereferenceable(1) @.str.53, i32 noundef %167) #22
  br label %169

169:                                              ; preds = %149, %158, %165
  %170 = load i32, ptr %0, align 8, !tbaa !285
  %171 = icmp eq i32 %170, 0
  %172 = select i1 %171, ptr @.str.50, ptr @.str.49
  %173 = load ptr, ptr %6, align 8, !tbaa !276
  %174 = load i32, ptr %173, align 4, !tbaa !112
  %175 = sub nsw i32 %174, %8
  %176 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.48, ptr noundef nonnull %172, ptr noundef nonnull %2, i32 noundef %175)
  br label %177

177:                                              ; preds = %1, %169, %140
  %178 = getelementptr inbounds %struct.ptcache_bake_data, ptr %0, i64 0, i32 1
  store i32 1, ptr %178, align 4, !tbaa !286
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %4) #22
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %3) #22
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %2) #22
  ret ptr null
}

declare void @BLI_init_threads(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

declare void @BLI_insert_thread(ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @PIL_sleep_ms(i32 noundef) local_unnamed_addr #2

declare i32 @blender_test_break() local_unnamed_addr #2

declare void @BLI_end_threads(ptr noundef) local_unnamed_addr #2

declare void @BKE_scene_update_for_newframe(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local void @BKE_ptcache_disk_to_mem(ptr noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.PTCacheID, ptr %0, i64 0, i32 25
  %3 = load ptr, ptr %2, align 8, !tbaa !50
  %4 = getelementptr inbounds %struct.PointCache, ptr %3, i64 0, i32 2
  %5 = load i32, ptr %4, align 8, !tbaa !191
  %6 = and i32 %5, 1
  %7 = getelementptr inbounds %struct.PointCache, ptr %3, i64 0, i32 5
  %8 = load i32, ptr %7, align 4, !tbaa !192
  %9 = getelementptr inbounds %struct.PointCache, ptr %3, i64 0, i32 6
  %10 = load i32, ptr %9, align 8, !tbaa !193
  %11 = and i32 %5, -2
  store i32 %11, ptr %4, align 8, !tbaa !191
  tail call void @BKE_ptcache_id_clear(ptr noundef %0, i32 noundef 0, i32 noundef 0)
  %12 = load i32, ptr %4, align 8, !tbaa !191
  %13 = or i32 %12, %6
  store i32 %13, ptr %4, align 8, !tbaa !191
  %14 = icmp sgt i32 %8, %10
  br i1 %14, label %25, label %15

15:                                               ; preds = %1, %22
  %16 = phi i32 [ %23, %22 ], [ %8, %1 ]
  %17 = tail call fastcc ptr @ptcache_disk_frame_to_mem(ptr noundef %0, i32 noundef %16)
  %18 = icmp eq ptr %17, null
  br i1 %18, label %22, label %19

19:                                               ; preds = %15
  %20 = load ptr, ptr %2, align 8, !tbaa !50
  %21 = getelementptr inbounds %struct.PointCache, ptr %20, i64 0, i32 20
  tail call void @BLI_addtail(ptr noundef nonnull %21, ptr noundef nonnull %17) #22
  br label %22

22:                                               ; preds = %15, %19
  %23 = add i32 %16, 1
  %24 = icmp eq i32 %16, %10
  br i1 %24, label %25, label %15, !llvm.loop !296

25:                                               ; preds = %22, %1
  ret void
}

; Function Attrs: nounwind uwtable
define internal fastcc ptr @ptcache_disk_frame_to_mem(ptr nocapture noundef %0, i32 noundef %1) unnamed_addr #0 {
  %3 = alloca [2048 x i8], align 16
  %4 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 2048, ptr nonnull %3) #22
  %5 = load i8, ptr getelementptr inbounds (%struct.Global, ptr @G, i64 0, i32 3), align 8, !tbaa !217
  %6 = icmp eq i8 %5, 0
  br i1 %6, label %7, label %14

7:                                                ; preds = %2
  %8 = getelementptr inbounds %struct.PTCacheID, ptr %0, i64 0, i32 25
  %9 = load ptr, ptr %8, align 8, !tbaa !50
  %10 = getelementptr inbounds %struct.PointCache, ptr %9, i64 0, i32 2
  %11 = load i32, ptr %10, align 8, !tbaa !191
  %12 = and i32 %11, 512
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %25, label %14

14:                                               ; preds = %7, %2
  call fastcc void @ptcache_filename(ptr noundef %0, ptr noundef nonnull %3, i32 noundef %1, i16 noundef signext 1, i16 noundef signext 1)
  %15 = call i32 @BLI_exists(ptr noundef nonnull %3) #22
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %25, label %17

17:                                               ; preds = %14
  %18 = call ptr @BLI_fopen(ptr noundef nonnull %3, ptr noundef nonnull @.str.57) #22
  %19 = icmp eq ptr %18, null
  br i1 %19, label %25, label %20

20:                                               ; preds = %17
  %21 = load ptr, ptr @MEM_mallocN, align 8, !tbaa !34
  %22 = call ptr %21(i64 noundef 192, ptr noundef nonnull @.str.60) #22
  store ptr %18, ptr %22, align 8, !tbaa !71
  %23 = getelementptr inbounds %struct.PTCacheFile, ptr %22, i64 0, i32 2
  store i32 0, ptr %23, align 4, !tbaa !218
  %24 = getelementptr inbounds %struct.PTCacheFile, ptr %22, i64 0, i32 1
  store i32 %1, ptr %24, align 8, !tbaa !219
  br label %25

25:                                               ; preds = %7, %14, %17, %20
  %26 = phi ptr [ %22, %20 ], [ null, %7 ], [ null, %14 ], [ null, %17 ]
  call void @llvm.lifetime.end.p0(i64 2048, ptr nonnull %3) #22
  %27 = icmp eq ptr %26, null
  br i1 %27, label %308, label %28

28:                                               ; preds = %25
  %29 = call fastcc i32 @ptcache_file_header_begin_read(ptr noundef nonnull %26), !range !206
  %30 = icmp eq i32 %29, 0
  br i1 %30, label %213, label %31

31:                                               ; preds = %28
  %32 = getelementptr inbounds %struct.PTCacheFile, ptr %26, i64 0, i32 4
  %33 = load i32, ptr %32, align 4, !tbaa !221
  %34 = getelementptr inbounds %struct.PTCacheID, ptr %0, i64 0, i32 5
  %35 = load i32, ptr %34, align 8, !tbaa !45
  %36 = icmp eq i32 %33, %35
  br i1 %36, label %37, label %213

37:                                               ; preds = %31
  %38 = getelementptr inbounds %struct.PTCacheID, ptr %0, i64 0, i32 24
  %39 = load ptr, ptr %38, align 8, !tbaa !60
  %40 = call i32 %39(ptr noundef nonnull %26) #22
  %41 = icmp eq i32 %40, 0
  br i1 %41, label %213, label %42

42:                                               ; preds = %37
  %43 = load ptr, ptr @MEM_callocN, align 8, !tbaa !34
  %44 = call ptr %43(i64 noundef 176, ptr noundef nonnull @.str.39) #22
  %45 = getelementptr inbounds %struct.PTCacheFile, ptr %26, i64 0, i32 3
  %46 = load i32, ptr %45, align 8, !tbaa !222
  %47 = getelementptr inbounds %struct.PTCacheMem, ptr %44, i64 0, i32 3
  store i32 %46, ptr %47, align 4, !tbaa !184
  %48 = getelementptr inbounds %struct.PTCacheFile, ptr %26, i64 0, i32 5
  %49 = load i32, ptr %48, align 8, !tbaa !223
  %50 = getelementptr inbounds %struct.PTCacheMem, ptr %44, i64 0, i32 4
  store i32 %49, ptr %50, align 8, !tbaa !187
  %51 = getelementptr inbounds %struct.PTCacheFile, ptr %26, i64 0, i32 1
  %52 = load i32, ptr %51, align 8, !tbaa !219
  %53 = getelementptr inbounds %struct.PTCacheMem, ptr %44, i64 0, i32 2
  store i32 %52, ptr %53, align 8, !tbaa !195
  br label %54

54:                                               ; preds = %42, %68
  %55 = phi i64 [ 0, %42 ], [ %69, %68 ]
  %56 = trunc i64 %55 to i32
  %57 = shl nuw nsw i32 1, %56
  %58 = and i32 %57, %49
  %59 = icmp eq i32 %58, 0
  br i1 %59, label %68, label %60

60:                                               ; preds = %54
  %61 = load ptr, ptr @MEM_callocN, align 8, !tbaa !34
  %62 = getelementptr inbounds [8 x i32], ptr @ptcache_data_size, i64 0, i64 %55
  %63 = load i32, ptr %62, align 4, !tbaa !112
  %64 = mul nsw i32 %63, %46
  %65 = sext i32 %64 to i64
  %66 = call ptr %61(i64 noundef %65, ptr noundef nonnull @.str.40) #22
  %67 = getelementptr inbounds %struct.PTCacheMem, ptr %44, i64 0, i32 6, i64 %55
  store ptr %66, ptr %67, align 8, !tbaa !34
  br label %68

68:                                               ; preds = %60, %54
  %69 = add nuw nsw i64 %55, 1
  %70 = icmp eq i64 %69, 8
  br i1 %70, label %71, label %54, !llvm.loop !232

71:                                               ; preds = %68
  %72 = getelementptr inbounds %struct.PTCacheFile, ptr %26, i64 0, i32 6
  %73 = load i32, ptr %72, align 4, !tbaa !231
  %74 = and i32 %73, 65536
  %75 = icmp eq i32 %74, 0
  br i1 %75, label %93, label %76

76:                                               ; preds = %71, %90
  %77 = phi i64 [ %91, %90 ], [ 0, %71 ]
  %78 = load i32, ptr %48, align 8, !tbaa !223
  %79 = trunc i64 %77 to i32
  %80 = shl nuw nsw i32 1, %79
  %81 = and i32 %78, %80
  %82 = icmp eq i32 %81, 0
  br i1 %82, label %90, label %83

83:                                               ; preds = %76
  %84 = load i32, ptr %47, align 4, !tbaa !184
  %85 = getelementptr inbounds [8 x i32], ptr @ptcache_data_size, i64 0, i64 %77
  %86 = load i32, ptr %85, align 4, !tbaa !112
  %87 = mul i32 %86, %84
  %88 = getelementptr inbounds %struct.PTCacheMem, ptr %44, i64 0, i32 6, i64 %77
  %89 = load ptr, ptr %88, align 8, !tbaa !34
  call fastcc void @ptcache_file_compressed_read(ptr noundef nonnull %26, ptr noundef %89, i32 noundef %87)
  br label %90

90:                                               ; preds = %83, %76
  %91 = add nuw nsw i64 %77, 1
  %92 = icmp eq i64 %91, 8
  br i1 %92, label %213, label %76, !llvm.loop !297

93:                                               ; preds = %71
  %94 = load i32, ptr %50, align 8, !tbaa !187
  br label %95

95:                                               ; preds = %93, %104
  %96 = phi i64 [ 0, %93 ], [ %107, %104 ]
  %97 = trunc i64 %96 to i32
  %98 = shl nuw nsw i32 1, %97
  %99 = and i32 %98, %94
  %100 = icmp eq i32 %99, 0
  br i1 %100, label %104, label %101

101:                                              ; preds = %95
  %102 = getelementptr inbounds %struct.PTCacheMem, ptr %44, i64 0, i32 6, i64 %96
  %103 = load ptr, ptr %102, align 8, !tbaa !34
  br label %104

104:                                              ; preds = %101, %95
  %105 = phi ptr [ %103, %101 ], [ null, %95 ]
  %106 = getelementptr inbounds %struct.PTCacheMem, ptr %44, i64 0, i32 7, i64 %96
  store ptr %105, ptr %106, align 8, !tbaa !34
  %107 = add nuw nsw i64 %96, 1
  %108 = icmp eq i64 %107, 8
  br i1 %108, label %109, label %95, !llvm.loop !188

109:                                              ; preds = %104
  %110 = load i32, ptr %48, align 8, !tbaa !223
  %111 = and i32 %110, 1
  %112 = icmp eq i32 %111, 0
  %113 = getelementptr inbounds %struct.PTCacheFile, ptr %26, i64 0, i32 7
  %114 = select i1 %112, ptr null, ptr %113
  %115 = getelementptr inbounds %struct.PTCacheFile, ptr %26, i64 0, i32 8
  store ptr %114, ptr %115, align 8, !tbaa !34
  %116 = and i32 %110, 2
  %117 = icmp eq i32 %116, 0
  %118 = getelementptr inbounds %struct.PTCacheFile, ptr %26, i64 0, i32 7, i32 1
  %119 = select i1 %117, ptr null, ptr %118
  %120 = getelementptr inbounds %struct.PTCacheFile, ptr %26, i64 0, i32 8, i64 1
  store ptr %119, ptr %120, align 8, !tbaa !34
  %121 = and i32 %110, 4
  %122 = icmp eq i32 %121, 0
  %123 = getelementptr inbounds %struct.PTCacheFile, ptr %26, i64 0, i32 7, i32 2
  %124 = select i1 %122, ptr null, ptr %123
  %125 = getelementptr inbounds %struct.PTCacheFile, ptr %26, i64 0, i32 8, i64 2
  store ptr %124, ptr %125, align 8, !tbaa !34
  %126 = and i32 %110, 8
  %127 = icmp eq i32 %126, 0
  %128 = getelementptr inbounds %struct.PTCacheFile, ptr %26, i64 0, i32 7, i32 3
  %129 = select i1 %127, ptr null, ptr %128
  %130 = getelementptr inbounds %struct.PTCacheFile, ptr %26, i64 0, i32 8, i64 3
  store ptr %129, ptr %130, align 8, !tbaa !34
  %131 = and i32 %110, 16
  %132 = icmp eq i32 %131, 0
  %133 = getelementptr inbounds %struct.PTCacheFile, ptr %26, i64 0, i32 7, i32 4
  %134 = select i1 %132, ptr null, ptr %133
  %135 = getelementptr inbounds %struct.PTCacheFile, ptr %26, i64 0, i32 8, i64 4
  store ptr %134, ptr %135, align 8, !tbaa !34
  %136 = and i32 %110, 32
  %137 = icmp eq i32 %136, 0
  %138 = getelementptr inbounds %struct.PTCacheFile, ptr %26, i64 0, i32 7, i32 5
  %139 = select i1 %137, ptr null, ptr %138
  %140 = getelementptr inbounds %struct.PTCacheFile, ptr %26, i64 0, i32 8, i64 5
  store ptr %139, ptr %140, align 8, !tbaa !34
  %141 = and i32 %110, 64
  %142 = icmp eq i32 %141, 0
  %143 = getelementptr inbounds %struct.PTCacheFile, ptr %26, i64 0, i32 7, i32 6
  %144 = select i1 %142, ptr null, ptr %143
  %145 = getelementptr inbounds %struct.PTCacheFile, ptr %26, i64 0, i32 8, i64 6
  store ptr %144, ptr %145, align 8, !tbaa !34
  %146 = and i32 %110, 128
  %147 = icmp eq i32 %146, 0
  %148 = getelementptr inbounds %struct.PTCacheFile, ptr %26, i64 0, i32 7, i32 7
  %149 = select i1 %147, ptr null, ptr %148
  %150 = getelementptr inbounds %struct.PTCacheFile, ptr %26, i64 0, i32 8, i64 7
  store ptr %149, ptr %150, align 8, !tbaa !34
  %151 = load i32, ptr %47, align 4, !tbaa !184
  %152 = icmp eq i32 %151, 0
  br i1 %152, label %213, label %153

153:                                              ; preds = %109
  %154 = getelementptr inbounds %struct.PTCacheMem, ptr %44, i64 0, i32 7
  br label %155

155:                                              ; preds = %153, %209
  %156 = phi i32 [ 0, %153 ], [ %210, %209 ]
  br label %157

157:                                              ; preds = %155, %174
  %158 = phi i64 [ 0, %155 ], [ %175, %174 ]
  %159 = phi i1 [ true, %155 ], [ %176, %174 ]
  %160 = load i32, ptr %48, align 8, !tbaa !223
  %161 = trunc i64 %158 to i32
  %162 = shl nuw nsw i32 1, %161
  %163 = and i32 %160, %162
  %164 = icmp eq i32 %163, 0
  br i1 %164, label %174, label %165

165:                                              ; preds = %157
  %166 = getelementptr inbounds %struct.PTCacheFile, ptr %26, i64 0, i32 8, i64 %158
  %167 = load ptr, ptr %166, align 8, !tbaa !34
  %168 = getelementptr inbounds [8 x i32], ptr @ptcache_data_size, i64 0, i64 %158
  %169 = load i32, ptr %168, align 4, !tbaa !112
  %170 = zext i32 %169 to i64
  %171 = load ptr, ptr %26, align 8, !tbaa !71
  %172 = call i64 @fread(ptr noundef %167, i64 noundef %170, i64 noundef 1, ptr noundef %171)
  %173 = icmp eq i64 %172, 1
  br i1 %173, label %174, label %178

174:                                              ; preds = %165, %157
  %175 = add nuw nsw i64 %158, 1
  %176 = icmp ult i64 %158, 7
  %177 = icmp eq i64 %175, 8
  br i1 %177, label %179, label %157, !llvm.loop !298

178:                                              ; preds = %165
  br i1 %159, label %213, label %179

179:                                              ; preds = %174, %178
  br label %180

180:                                              ; preds = %179, %193
  %181 = phi i64 [ %194, %193 ], [ 0, %179 ]
  %182 = getelementptr inbounds ptr, ptr %115, i64 %181
  %183 = load ptr, ptr %182, align 8, !tbaa !34
  %184 = icmp eq ptr %183, null
  br i1 %184, label %193, label %185

185:                                              ; preds = %180
  %186 = getelementptr inbounds ptr, ptr %154, i64 %181
  %187 = load ptr, ptr %186, align 8, !tbaa !34
  %188 = icmp eq ptr %187, null
  br i1 %188, label %193, label %189

189:                                              ; preds = %185
  %190 = getelementptr inbounds [8 x i32], ptr @ptcache_data_size, i64 0, i64 %181
  %191 = load i32, ptr %190, align 4, !tbaa !112
  %192 = sext i32 %191 to i64
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %187, ptr nonnull align 1 %183, i64 %192, i1 false)
  br label %193

193:                                              ; preds = %189, %185, %180
  %194 = add nuw nsw i64 %181, 1
  %195 = icmp eq i64 %194, 8
  br i1 %195, label %196, label %180, !llvm.loop !299

196:                                              ; preds = %193, %206
  %197 = phi i64 [ %207, %206 ], [ 0, %193 ]
  %198 = getelementptr inbounds %struct.PTCacheMem, ptr %44, i64 0, i32 7, i64 %197
  %199 = load ptr, ptr %198, align 8, !tbaa !34
  %200 = icmp eq ptr %199, null
  br i1 %200, label %206, label %201

201:                                              ; preds = %196
  %202 = getelementptr inbounds [8 x i32], ptr @ptcache_data_size, i64 0, i64 %197
  %203 = load i32, ptr %202, align 4, !tbaa !112
  %204 = sext i32 %203 to i64
  %205 = getelementptr inbounds i8, ptr %199, i64 %204
  store ptr %205, ptr %198, align 8, !tbaa !34
  br label %206

206:                                              ; preds = %201, %196
  %207 = add nuw nsw i64 %197, 1
  %208 = icmp eq i64 %207, 8
  br i1 %208, label %209, label %196, !llvm.loop !189

209:                                              ; preds = %206
  %210 = add nuw i32 %156, 1
  %211 = load i32, ptr %47, align 4, !tbaa !184
  %212 = icmp ult i32 %210, %211
  br i1 %212, label %155, label %213, !llvm.loop !300

213:                                              ; preds = %90, %209, %178, %109, %31, %37, %28
  %214 = phi i1 [ true, %28 ], [ true, %37 ], [ true, %31 ], [ false, %109 ], [ true, %178 ], [ false, %209 ], [ false, %90 ]
  %215 = phi ptr [ null, %28 ], [ null, %37 ], [ null, %31 ], [ %44, %109 ], [ %44, %178 ], [ %44, %209 ], [ %44, %90 ]
  br i1 %214, label %265, label %216

216:                                              ; preds = %213
  %217 = getelementptr inbounds %struct.PTCacheFile, ptr %26, i64 0, i32 6
  %218 = load i32, ptr %217, align 4, !tbaa !231
  %219 = and i32 %218, 131072
  %220 = icmp eq i32 %219, 0
  br i1 %220, label %265, label %221

221:                                              ; preds = %216
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #22
  store i32 0, ptr %4, align 4, !tbaa !112
  %222 = load ptr, ptr %26, align 8, !tbaa !71
  %223 = call i64 @fread(ptr noundef nonnull %4, i64 noundef 4, i64 noundef 1, ptr noundef %222)
  %224 = icmp eq i64 %223, 1
  br i1 %224, label %225, label %264

225:                                              ; preds = %221
  %226 = getelementptr inbounds %struct.PTCacheMem, ptr %215, i64 0, i32 8
  br label %227

227:                                              ; preds = %225, %260
  %228 = load ptr, ptr @MEM_callocN, align 8, !tbaa !34
  %229 = call ptr %228(i64 noundef 32, ptr noundef nonnull @.str.54) #22
  %230 = load i32, ptr %4, align 4, !tbaa !112
  %231 = getelementptr inbounds %struct.PTCacheExtra, ptr %229, i64 0, i32 2
  store i32 %230, ptr %231, align 8, !tbaa !108
  %232 = getelementptr inbounds %struct.PTCacheExtra, ptr %229, i64 0, i32 3
  %233 = load ptr, ptr %26, align 8, !tbaa !71
  %234 = call i64 @fread(ptr noundef nonnull %232, i64 noundef 4, i64 noundef 1, ptr noundef %233)
  %235 = load ptr, ptr @MEM_callocN, align 8, !tbaa !34
  %236 = load i32, ptr %232, align 4, !tbaa !110
  %237 = load i32, ptr %231, align 8, !tbaa !108
  %238 = zext i32 %237 to i64
  %239 = getelementptr inbounds [2 x i32], ptr @ptcache_extra_datasize, i64 0, i64 %238
  %240 = load i32, ptr %239, align 4, !tbaa !112
  %241 = mul i32 %240, %236
  %242 = zext i32 %241 to i64
  %243 = call ptr %235(i64 noundef %242, ptr noundef nonnull @.str.55) #22
  %244 = getelementptr inbounds %struct.PTCacheExtra, ptr %229, i64 0, i32 4
  store ptr %243, ptr %244, align 8, !tbaa !111
  %245 = load i32, ptr %217, align 4, !tbaa !231
  %246 = and i32 %245, 65536
  %247 = icmp eq i32 %246, 0
  %248 = load i32, ptr %232, align 4, !tbaa !110
  %249 = load i32, ptr %231, align 8, !tbaa !108
  %250 = zext i32 %249 to i64
  %251 = getelementptr inbounds [2 x i32], ptr @ptcache_extra_datasize, i64 0, i64 %250
  %252 = load i32, ptr %251, align 4, !tbaa !112
  br i1 %247, label %255, label %253

253:                                              ; preds = %227
  %254 = mul i32 %252, %248
  call fastcc void @ptcache_file_compressed_read(ptr noundef nonnull %26, ptr noundef %243, i32 noundef %254)
  br label %260

255:                                              ; preds = %227
  %256 = zext i32 %252 to i64
  %257 = zext i32 %248 to i64
  %258 = load ptr, ptr %26, align 8, !tbaa !71
  %259 = call i64 @fread(ptr noundef %243, i64 noundef %256, i64 noundef %257, ptr noundef %258)
  br label %260

260:                                              ; preds = %255, %253
  call void @BLI_addtail(ptr noundef nonnull %226, ptr noundef %229) #22
  %261 = load ptr, ptr %26, align 8, !tbaa !71
  %262 = call i64 @fread(ptr noundef nonnull %4, i64 noundef 4, i64 noundef 1, ptr noundef %261)
  %263 = icmp eq i64 %262, 1
  br i1 %263, label %227, label %264, !llvm.loop !301

264:                                              ; preds = %260, %221
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #22
  br label %265

265:                                              ; preds = %264, %216, %213
  %266 = icmp ne ptr %215, null
  %267 = and i1 %214, %266
  br i1 %267, label %268, label %297

268:                                              ; preds = %265
  %269 = getelementptr inbounds %struct.PTCacheMem, ptr %215, i64 0, i32 6
  br label %270

270:                                              ; preds = %268, %277
  %271 = phi i64 [ 0, %268 ], [ %278, %277 ]
  %272 = getelementptr inbounds ptr, ptr %269, i64 %271
  %273 = load ptr, ptr %272, align 8, !tbaa !34
  %274 = icmp eq ptr %273, null
  br i1 %274, label %277, label %275

275:                                              ; preds = %270
  %276 = load ptr, ptr @MEM_freeN, align 8, !tbaa !34
  call void %276(ptr noundef nonnull %273) #22
  br label %277

277:                                              ; preds = %275, %270
  %278 = add nuw nsw i64 %271, 1
  %279 = icmp eq i64 %278, 8
  br i1 %279, label %280, label %270, !llvm.loop !211

280:                                              ; preds = %277
  %281 = getelementptr inbounds %struct.PTCacheMem, ptr %215, i64 0, i32 8
  %282 = load ptr, ptr %281, align 8, !tbaa !210
  %283 = icmp eq ptr %282, null
  br i1 %283, label %295, label %284

284:                                              ; preds = %280, %291
  %285 = phi ptr [ %292, %291 ], [ %282, %280 ]
  %286 = getelementptr inbounds %struct.PTCacheExtra, ptr %285, i64 0, i32 4
  %287 = load ptr, ptr %286, align 8, !tbaa !111
  %288 = icmp eq ptr %287, null
  br i1 %288, label %291, label %289

289:                                              ; preds = %284
  %290 = load ptr, ptr @MEM_freeN, align 8, !tbaa !34
  call void %290(ptr noundef nonnull %287) #22
  br label %291

291:                                              ; preds = %289, %284
  %292 = load ptr, ptr %285, align 8, !tbaa !212
  %293 = icmp eq ptr %292, null
  br i1 %293, label %294, label %284, !llvm.loop !213

294:                                              ; preds = %291
  call void @BLI_freelistN(ptr noundef nonnull %281) #22
  br label %295

295:                                              ; preds = %280, %294
  %296 = load ptr, ptr @MEM_freeN, align 8, !tbaa !34
  call void %296(ptr noundef nonnull %215) #22
  br label %297

297:                                              ; preds = %265, %295
  %298 = phi ptr [ null, %295 ], [ %215, %265 ]
  %299 = load ptr, ptr %26, align 8, !tbaa !71
  %300 = call i32 @fclose(ptr noundef %299)
  %301 = load ptr, ptr @MEM_freeN, align 8, !tbaa !34
  call void %301(ptr noundef nonnull %26) #22
  br i1 %214, label %302, label %308

302:                                              ; preds = %297
  %303 = load i32, ptr getelementptr inbounds (%struct.Global, ptr @G, i64 0, i32 16), align 4, !tbaa !220
  %304 = and i32 %303, 1
  %305 = icmp eq i32 %304, 0
  br i1 %305, label %308, label %306

306:                                              ; preds = %302
  %307 = call i32 @puts(ptr nonnull dereferenceable(1) @str.64)
  br label %308

308:                                              ; preds = %297, %302, %306, %25
  %309 = phi ptr [ null, %25 ], [ %298, %306 ], [ %298, %302 ], [ %298, %297 ]
  ret ptr %309
}

; Function Attrs: nounwind uwtable
define dso_local void @BKE_ptcache_mem_to_disk(ptr noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.PTCacheID, ptr %0, i64 0, i32 25
  %3 = load ptr, ptr %2, align 8, !tbaa !50
  %4 = getelementptr inbounds %struct.PointCache, ptr %3, i64 0, i32 20
  %5 = load ptr, ptr %4, align 8, !tbaa !199
  %6 = getelementptr inbounds %struct.PointCache, ptr %3, i64 0, i32 2
  %7 = load i32, ptr %6, align 8, !tbaa !191
  %8 = and i32 %7, 1
  %9 = and i32 %7, -2
  store i32 %9, ptr %6, align 8, !tbaa !191
  tail call void @BKE_ptcache_id_clear(ptr noundef %0, i32 noundef 0, i32 noundef 0)
  %10 = load i32, ptr %6, align 8, !tbaa !191
  %11 = or i32 %10, %8
  store i32 %11, ptr %6, align 8, !tbaa !191
  %12 = icmp eq ptr %5, null
  br i1 %12, label %23, label %13

13:                                               ; preds = %1, %20
  %14 = phi ptr [ %21, %20 ], [ %5, %1 ]
  %15 = tail call fastcc i32 @ptcache_mem_frame_to_disk(ptr noundef %0, ptr noundef nonnull %14), !range !206
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %17, label %20

17:                                               ; preds = %13
  %18 = load i32, ptr %6, align 8, !tbaa !191
  %19 = and i32 %18, -65
  store i32 %19, ptr %6, align 8, !tbaa !191
  br label %23

20:                                               ; preds = %13
  %21 = load ptr, ptr %14, align 8, !tbaa !201
  %22 = icmp eq ptr %21, null
  br i1 %22, label %23, label %13, !llvm.loop !302

23:                                               ; preds = %20, %1, %17
  %24 = load i32, ptr %6, align 8, !tbaa !191
  %25 = and i32 %24, 1
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %29, label %27

27:                                               ; preds = %23
  %28 = tail call i32 @BKE_ptcache_write(ptr noundef %0, i32 noundef 0), !range !206
  br label %29

29:                                               ; preds = %27, %23
  ret void
}

; Function Attrs: nounwind uwtable
define internal fastcc noundef i32 @ptcache_mem_frame_to_disk(ptr noundef %0, ptr nocapture noundef %1) unnamed_addr #0 {
  %3 = alloca i32, align 4
  %4 = alloca [2048 x i8], align 16
  %5 = getelementptr inbounds %struct.PTCacheMem, ptr %1, i64 0, i32 2
  %6 = load i32, ptr %5, align 8, !tbaa !195
  tail call void @BKE_ptcache_id_clear(ptr noundef %0, i32 noundef 1, i32 noundef %6)
  %7 = load i32, ptr %5, align 8, !tbaa !195
  call void @llvm.lifetime.start.p0(i64 2048, ptr nonnull %4) #22
  %8 = load i8, ptr getelementptr inbounds (%struct.Global, ptr @G, i64 0, i32 3), align 8, !tbaa !217
  %9 = icmp eq i8 %8, 0
  br i1 %9, label %10, label %17

10:                                               ; preds = %2
  %11 = getelementptr inbounds %struct.PTCacheID, ptr %0, i64 0, i32 25
  %12 = load ptr, ptr %11, align 8, !tbaa !50
  %13 = getelementptr inbounds %struct.PointCache, ptr %12, i64 0, i32 2
  %14 = load i32, ptr %13, align 8, !tbaa !191
  %15 = and i32 %14, 512
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %25, label %17

17:                                               ; preds = %10, %2
  call fastcc void @ptcache_filename(ptr noundef %0, ptr noundef nonnull %4, i32 noundef %7, i16 noundef signext 1, i16 noundef signext 1)
  call void @BLI_make_existing_file(ptr noundef nonnull %4) #22
  %18 = call ptr @BLI_fopen(ptr noundef nonnull %4, ptr noundef nonnull @.str.58) #22
  %19 = icmp eq ptr %18, null
  br i1 %19, label %25, label %20

20:                                               ; preds = %17
  %21 = load ptr, ptr @MEM_mallocN, align 8, !tbaa !34
  %22 = call ptr %21(i64 noundef 192, ptr noundef nonnull @.str.60) #22
  store ptr %18, ptr %22, align 8, !tbaa !71
  %23 = getelementptr inbounds %struct.PTCacheFile, ptr %22, i64 0, i32 2
  store i32 0, ptr %23, align 4, !tbaa !218
  %24 = getelementptr inbounds %struct.PTCacheFile, ptr %22, i64 0, i32 1
  store i32 %7, ptr %24, align 8, !tbaa !219
  br label %25

25:                                               ; preds = %10, %17, %20
  %26 = phi ptr [ %22, %20 ], [ null, %10 ], [ null, %17 ]
  call void @llvm.lifetime.end.p0(i64 2048, ptr nonnull %4) #22
  %27 = icmp eq ptr %26, null
  br i1 %27, label %28, label %34

28:                                               ; preds = %25
  %29 = load i32, ptr getelementptr inbounds (%struct.Global, ptr @G, i64 0, i32 16), align 4, !tbaa !220
  %30 = and i32 %29, 1
  %31 = icmp eq i32 %30, 0
  br i1 %31, label %306, label %32

32:                                               ; preds = %28
  %33 = call i32 @puts(ptr nonnull dereferenceable(1) @str.66)
  br label %306

34:                                               ; preds = %25
  %35 = getelementptr inbounds %struct.PTCacheMem, ptr %1, i64 0, i32 4
  %36 = load i32, ptr %35, align 8, !tbaa !187
  %37 = getelementptr inbounds %struct.PTCacheFile, ptr %26, i64 0, i32 5
  store i32 %36, ptr %37, align 8, !tbaa !223
  %38 = getelementptr inbounds %struct.PTCacheMem, ptr %1, i64 0, i32 3
  %39 = load i32, ptr %38, align 4, !tbaa !184
  %40 = getelementptr inbounds %struct.PTCacheFile, ptr %26, i64 0, i32 3
  store i32 %39, ptr %40, align 8, !tbaa !222
  %41 = getelementptr inbounds %struct.PTCacheID, ptr %0, i64 0, i32 5
  %42 = load i32, ptr %41, align 8, !tbaa !45
  %43 = getelementptr inbounds %struct.PTCacheFile, ptr %26, i64 0, i32 4
  store i32 %42, ptr %43, align 4, !tbaa !221
  %44 = getelementptr inbounds %struct.PTCacheFile, ptr %26, i64 0, i32 6
  store i32 0, ptr %44, align 4, !tbaa !231
  %45 = getelementptr inbounds %struct.PTCacheMem, ptr %1, i64 0, i32 8
  %46 = load ptr, ptr %45, align 8, !tbaa !210
  %47 = icmp eq ptr %46, null
  %48 = select i1 %47, i32 0, i32 131072
  store i32 %48, ptr %44, align 4
  %49 = getelementptr inbounds %struct.PTCacheID, ptr %0, i64 0, i32 25
  %50 = load ptr, ptr %49, align 8, !tbaa !50
  %51 = getelementptr inbounds %struct.PointCache, ptr %50, i64 0, i32 13
  %52 = load i16, ptr %51, align 4, !tbaa !303
  %53 = icmp eq i16 %52, 0
  br i1 %53, label %56, label %54

54:                                               ; preds = %34
  %55 = or disjoint i32 %48, 65536
  store i32 %55, ptr %44, align 4, !tbaa !231
  br label %56

56:                                               ; preds = %54, %34
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #22
  %57 = load i32, ptr %43, align 4, !tbaa !221
  %58 = load i32, ptr %44, align 4, !tbaa !231
  %59 = add i32 %58, %57
  store i32 %59, ptr %3, align 4, !tbaa !112
  %60 = load ptr, ptr %26, align 8, !tbaa !71
  %61 = call i64 @fwrite(ptr noundef nonnull @.str.38, i64 noundef 1, i64 noundef 8, ptr noundef %60)
  %62 = icmp eq i64 %61, 8
  br i1 %62, label %63, label %227

63:                                               ; preds = %56
  %64 = load ptr, ptr %26, align 8, !tbaa !71
  %65 = call i64 @fwrite(ptr noundef nonnull %3, i64 noundef 4, i64 noundef 1, ptr noundef %64)
  %66 = icmp eq i64 %65, 0
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #22
  br i1 %66, label %228, label %67

67:                                               ; preds = %63
  %68 = getelementptr inbounds %struct.PTCacheID, ptr %0, i64 0, i32 23
  %69 = load ptr, ptr %68, align 8, !tbaa !59
  %70 = call i32 %69(ptr noundef nonnull %26) #22
  %71 = icmp eq i32 %70, 0
  br i1 %71, label %228, label %72

72:                                               ; preds = %67
  %73 = load ptr, ptr %49, align 8, !tbaa !50
  %74 = getelementptr inbounds %struct.PointCache, ptr %73, i64 0, i32 13
  %75 = load i16, ptr %74, align 4, !tbaa !303
  %76 = icmp eq i16 %75, 0
  br i1 %76, label %107, label %77

77:                                               ; preds = %72, %104
  %78 = phi i64 [ %105, %104 ], [ 0, %72 ]
  %79 = getelementptr inbounds %struct.PTCacheMem, ptr %1, i64 0, i32 6, i64 %78
  %80 = load ptr, ptr %79, align 8, !tbaa !34
  %81 = icmp eq ptr %80, null
  br i1 %81, label %104, label %82

82:                                               ; preds = %77
  %83 = load i32, ptr %38, align 4, !tbaa !184
  %84 = getelementptr inbounds [8 x i32], ptr @ptcache_data_size, i64 0, i64 %78
  %85 = load i32, ptr %84, align 4, !tbaa !112
  %86 = mul i32 %85, %83
  %87 = load ptr, ptr @MEM_callocN, align 8, !tbaa !34
  %88 = lshr i32 %86, 4
  %89 = add i32 %88, %86
  %90 = shl i32 %89, 2
  %91 = add i32 %90, 268
  %92 = zext i32 %91 to i64
  %93 = call ptr %87(i64 noundef %92, ptr noundef nonnull @.str.26) #22
  %94 = load ptr, ptr %79, align 8, !tbaa !34
  %95 = load ptr, ptr @MEM_callocN, align 8, !tbaa !34
  %96 = call ptr %95(i64 noundef 16, ptr noundef nonnull @.str.27) #22
  %97 = load ptr, ptr %26, align 8, !tbaa !71
  %98 = call i32 @fputc(i32 0, ptr %97)
  %99 = zext i32 %86 to i64
  %100 = load ptr, ptr %26, align 8, !tbaa !71
  %101 = call i64 @fwrite(ptr noundef %94, i64 noundef 1, i64 noundef %99, ptr noundef %100)
  %102 = load ptr, ptr @MEM_freeN, align 8, !tbaa !34
  call void %102(ptr noundef %96) #22
  %103 = load ptr, ptr @MEM_freeN, align 8, !tbaa !34
  call void %103(ptr noundef %93) #22
  br label %104

104:                                              ; preds = %77, %82
  %105 = add nuw nsw i64 %78, 1
  %106 = icmp eq i64 %105, 8
  br i1 %106, label %228, label %77, !llvm.loop !304

107:                                              ; preds = %72
  %108 = load i32, ptr %35, align 8, !tbaa !187
  br label %109

109:                                              ; preds = %107, %118
  %110 = phi i64 [ 0, %107 ], [ %121, %118 ]
  %111 = trunc i64 %110 to i32
  %112 = shl nuw nsw i32 1, %111
  %113 = and i32 %112, %108
  %114 = icmp eq i32 %113, 0
  br i1 %114, label %118, label %115

115:                                              ; preds = %109
  %116 = getelementptr inbounds %struct.PTCacheMem, ptr %1, i64 0, i32 6, i64 %110
  %117 = load ptr, ptr %116, align 8, !tbaa !34
  br label %118

118:                                              ; preds = %115, %109
  %119 = phi ptr [ %117, %115 ], [ null, %109 ]
  %120 = getelementptr inbounds %struct.PTCacheMem, ptr %1, i64 0, i32 7, i64 %110
  store ptr %119, ptr %120, align 8, !tbaa !34
  %121 = add nuw nsw i64 %110, 1
  %122 = icmp eq i64 %121, 8
  br i1 %122, label %123, label %109, !llvm.loop !188

123:                                              ; preds = %118
  %124 = load i32, ptr %37, align 8, !tbaa !223
  %125 = and i32 %124, 1
  %126 = icmp eq i32 %125, 0
  %127 = getelementptr inbounds %struct.PTCacheFile, ptr %26, i64 0, i32 7
  %128 = select i1 %126, ptr null, ptr %127
  %129 = getelementptr inbounds %struct.PTCacheFile, ptr %26, i64 0, i32 8
  store ptr %128, ptr %129, align 8, !tbaa !34
  %130 = and i32 %124, 2
  %131 = icmp eq i32 %130, 0
  %132 = getelementptr inbounds %struct.PTCacheFile, ptr %26, i64 0, i32 7, i32 1
  %133 = select i1 %131, ptr null, ptr %132
  %134 = getelementptr inbounds %struct.PTCacheFile, ptr %26, i64 0, i32 8, i64 1
  store ptr %133, ptr %134, align 8, !tbaa !34
  %135 = and i32 %124, 4
  %136 = icmp eq i32 %135, 0
  %137 = getelementptr inbounds %struct.PTCacheFile, ptr %26, i64 0, i32 7, i32 2
  %138 = select i1 %136, ptr null, ptr %137
  %139 = getelementptr inbounds %struct.PTCacheFile, ptr %26, i64 0, i32 8, i64 2
  store ptr %138, ptr %139, align 8, !tbaa !34
  %140 = and i32 %124, 8
  %141 = icmp eq i32 %140, 0
  %142 = getelementptr inbounds %struct.PTCacheFile, ptr %26, i64 0, i32 7, i32 3
  %143 = select i1 %141, ptr null, ptr %142
  %144 = getelementptr inbounds %struct.PTCacheFile, ptr %26, i64 0, i32 8, i64 3
  store ptr %143, ptr %144, align 8, !tbaa !34
  %145 = and i32 %124, 16
  %146 = icmp eq i32 %145, 0
  %147 = getelementptr inbounds %struct.PTCacheFile, ptr %26, i64 0, i32 7, i32 4
  %148 = select i1 %146, ptr null, ptr %147
  %149 = getelementptr inbounds %struct.PTCacheFile, ptr %26, i64 0, i32 8, i64 4
  store ptr %148, ptr %149, align 8, !tbaa !34
  %150 = and i32 %124, 32
  %151 = icmp eq i32 %150, 0
  %152 = getelementptr inbounds %struct.PTCacheFile, ptr %26, i64 0, i32 7, i32 5
  %153 = select i1 %151, ptr null, ptr %152
  %154 = getelementptr inbounds %struct.PTCacheFile, ptr %26, i64 0, i32 8, i64 5
  store ptr %153, ptr %154, align 8, !tbaa !34
  %155 = and i32 %124, 64
  %156 = icmp eq i32 %155, 0
  %157 = getelementptr inbounds %struct.PTCacheFile, ptr %26, i64 0, i32 7, i32 6
  %158 = select i1 %156, ptr null, ptr %157
  %159 = getelementptr inbounds %struct.PTCacheFile, ptr %26, i64 0, i32 8, i64 6
  store ptr %158, ptr %159, align 8, !tbaa !34
  %160 = and i32 %124, 128
  %161 = icmp eq i32 %160, 0
  %162 = getelementptr inbounds %struct.PTCacheFile, ptr %26, i64 0, i32 7, i32 7
  %163 = select i1 %161, ptr null, ptr %162
  %164 = getelementptr inbounds %struct.PTCacheFile, ptr %26, i64 0, i32 8, i64 7
  store ptr %163, ptr %164, align 8, !tbaa !34
  %165 = load i32, ptr %38, align 4, !tbaa !184
  %166 = icmp eq i32 %165, 0
  br i1 %166, label %228, label %167

167:                                              ; preds = %123
  %168 = getelementptr inbounds %struct.PTCacheMem, ptr %1, i64 0, i32 7
  br label %169

169:                                              ; preds = %167, %223
  %170 = phi i32 [ 0, %167 ], [ %224, %223 ]
  br label %171

171:                                              ; preds = %169, %184
  %172 = phi i64 [ 0, %169 ], [ %185, %184 ]
  %173 = getelementptr inbounds ptr, ptr %168, i64 %172
  %174 = load ptr, ptr %173, align 8, !tbaa !34
  %175 = icmp eq ptr %174, null
  br i1 %175, label %184, label %176

176:                                              ; preds = %171
  %177 = getelementptr inbounds ptr, ptr %129, i64 %172
  %178 = load ptr, ptr %177, align 8, !tbaa !34
  %179 = icmp eq ptr %178, null
  br i1 %179, label %184, label %180

180:                                              ; preds = %176
  %181 = getelementptr inbounds [8 x i32], ptr @ptcache_data_size, i64 0, i64 %172
  %182 = load i32, ptr %181, align 4, !tbaa !112
  %183 = sext i32 %182 to i64
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %178, ptr nonnull align 1 %174, i64 %183, i1 false)
  br label %184

184:                                              ; preds = %180, %176, %171
  %185 = add nuw nsw i64 %172, 1
  %186 = icmp eq i64 %185, 8
  br i1 %186, label %187, label %171, !llvm.loop !299

187:                                              ; preds = %184, %204
  %188 = phi i64 [ %205, %204 ], [ 0, %184 ]
  %189 = phi i1 [ %206, %204 ], [ true, %184 ]
  %190 = load i32, ptr %37, align 8, !tbaa !223
  %191 = trunc i64 %188 to i32
  %192 = shl nuw nsw i32 1, %191
  %193 = and i32 %190, %192
  %194 = icmp eq i32 %193, 0
  br i1 %194, label %204, label %195

195:                                              ; preds = %187
  %196 = getelementptr inbounds %struct.PTCacheFile, ptr %26, i64 0, i32 8, i64 %188
  %197 = load ptr, ptr %196, align 8, !tbaa !34
  %198 = getelementptr inbounds [8 x i32], ptr @ptcache_data_size, i64 0, i64 %188
  %199 = load i32, ptr %198, align 4, !tbaa !112
  %200 = zext i32 %199 to i64
  %201 = load ptr, ptr %26, align 8, !tbaa !71
  %202 = call i64 @fwrite(ptr noundef %197, i64 noundef %200, i64 noundef 1, ptr noundef %201)
  %203 = icmp eq i64 %202, 1
  br i1 %203, label %204, label %208

204:                                              ; preds = %195, %187
  %205 = add nuw nsw i64 %188, 1
  %206 = icmp ult i64 %188, 7
  %207 = icmp eq i64 %205, 8
  br i1 %207, label %209, label %187, !llvm.loop !305

208:                                              ; preds = %195
  br i1 %189, label %228, label %209

209:                                              ; preds = %204, %208
  br label %210

210:                                              ; preds = %209, %220
  %211 = phi i64 [ %221, %220 ], [ 0, %209 ]
  %212 = getelementptr inbounds %struct.PTCacheMem, ptr %1, i64 0, i32 7, i64 %211
  %213 = load ptr, ptr %212, align 8, !tbaa !34
  %214 = icmp eq ptr %213, null
  br i1 %214, label %220, label %215

215:                                              ; preds = %210
  %216 = getelementptr inbounds [8 x i32], ptr @ptcache_data_size, i64 0, i64 %211
  %217 = load i32, ptr %216, align 4, !tbaa !112
  %218 = sext i32 %217 to i64
  %219 = getelementptr inbounds i8, ptr %213, i64 %218
  store ptr %219, ptr %212, align 8, !tbaa !34
  br label %220

220:                                              ; preds = %215, %210
  %221 = add nuw nsw i64 %211, 1
  %222 = icmp eq i64 %221, 8
  br i1 %222, label %223, label %210, !llvm.loop !189

223:                                              ; preds = %220
  %224 = add nuw i32 %170, 1
  %225 = load i32, ptr %38, align 4, !tbaa !184
  %226 = icmp ult i32 %224, %225
  br i1 %226, label %169, label %228, !llvm.loop !306

227:                                              ; preds = %56
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #22
  br label %228

228:                                              ; preds = %104, %223, %208, %227, %123, %63, %67
  %229 = phi i1 [ false, %67 ], [ false, %63 ], [ true, %123 ], [ false, %227 ], [ false, %208 ], [ true, %223 ], [ true, %104 ]
  br i1 %229, label %230, label %294

230:                                              ; preds = %228
  %231 = load ptr, ptr %45, align 8, !tbaa !210
  %232 = icmp eq ptr %231, null
  br i1 %232, label %290, label %233

233:                                              ; preds = %230, %287
  %234 = phi ptr [ %288, %287 ], [ %231, %230 ]
  %235 = getelementptr inbounds %struct.PTCacheExtra, ptr %234, i64 0, i32 4
  %236 = load ptr, ptr %235, align 8, !tbaa !111
  %237 = icmp eq ptr %236, null
  br i1 %237, label %287, label %238

238:                                              ; preds = %233
  %239 = getelementptr inbounds %struct.PTCacheExtra, ptr %234, i64 0, i32 3
  %240 = load i32, ptr %239, align 4, !tbaa !110
  %241 = icmp eq i32 %240, 0
  br i1 %241, label %287, label %242

242:                                              ; preds = %238
  %243 = getelementptr inbounds %struct.PTCacheExtra, ptr %234, i64 0, i32 2
  %244 = load ptr, ptr %26, align 8, !tbaa !71
  %245 = call i64 @fwrite(ptr noundef nonnull %243, i64 noundef 4, i64 noundef 1, ptr noundef %244)
  %246 = load ptr, ptr %26, align 8, !tbaa !71
  %247 = call i64 @fwrite(ptr noundef nonnull %239, i64 noundef 4, i64 noundef 1, ptr noundef %246)
  %248 = load ptr, ptr %49, align 8, !tbaa !50
  %249 = getelementptr inbounds %struct.PointCache, ptr %248, i64 0, i32 13
  %250 = load i16, ptr %249, align 4, !tbaa !303
  %251 = icmp eq i16 %250, 0
  br i1 %251, label %276, label %252

252:                                              ; preds = %242
  %253 = load i32, ptr %239, align 4, !tbaa !110
  %254 = load i32, ptr %243, align 8, !tbaa !108
  %255 = zext i32 %254 to i64
  %256 = getelementptr inbounds [2 x i32], ptr @ptcache_extra_datasize, i64 0, i64 %255
  %257 = load i32, ptr %256, align 4, !tbaa !112
  %258 = mul i32 %257, %253
  %259 = load ptr, ptr @MEM_callocN, align 8, !tbaa !34
  %260 = lshr i32 %258, 4
  %261 = add i32 %260, %258
  %262 = shl i32 %261, 2
  %263 = add i32 %262, 268
  %264 = zext i32 %263 to i64
  %265 = call ptr %259(i64 noundef %264, ptr noundef nonnull @.str.26) #22
  %266 = load ptr, ptr %235, align 8, !tbaa !111
  %267 = load ptr, ptr @MEM_callocN, align 8, !tbaa !34
  %268 = call ptr %267(i64 noundef 16, ptr noundef nonnull @.str.27) #22
  %269 = load ptr, ptr %26, align 8, !tbaa !71
  %270 = call i32 @fputc(i32 0, ptr %269)
  %271 = zext i32 %258 to i64
  %272 = load ptr, ptr %26, align 8, !tbaa !71
  %273 = call i64 @fwrite(ptr noundef %266, i64 noundef 1, i64 noundef %271, ptr noundef %272)
  %274 = load ptr, ptr @MEM_freeN, align 8, !tbaa !34
  call void %274(ptr noundef %268) #22
  %275 = load ptr, ptr @MEM_freeN, align 8, !tbaa !34
  call void %275(ptr noundef %265) #22
  br label %287

276:                                              ; preds = %242
  %277 = load ptr, ptr %235, align 8, !tbaa !111
  %278 = load i32, ptr %239, align 4, !tbaa !110
  %279 = load i32, ptr %243, align 8, !tbaa !108
  %280 = zext i32 %279 to i64
  %281 = getelementptr inbounds [2 x i32], ptr @ptcache_extra_datasize, i64 0, i64 %280
  %282 = load i32, ptr %281, align 4, !tbaa !112
  %283 = zext i32 %282 to i64
  %284 = zext i32 %278 to i64
  %285 = load ptr, ptr %26, align 8, !tbaa !71
  %286 = call i64 @fwrite(ptr noundef %277, i64 noundef %283, i64 noundef %284, ptr noundef %285)
  br label %287

287:                                              ; preds = %252, %276, %233, %238
  %288 = load ptr, ptr %234, align 8, !tbaa !212
  %289 = icmp eq ptr %288, null
  br i1 %289, label %290, label %233, !llvm.loop !307

290:                                              ; preds = %287, %230
  %291 = load ptr, ptr %26, align 8, !tbaa !71
  %292 = call i32 @fclose(ptr noundef %291)
  %293 = load ptr, ptr @MEM_freeN, align 8, !tbaa !34
  call void %293(ptr noundef nonnull %26) #22
  br i1 %229, label %304, label %298

294:                                              ; preds = %228
  %295 = load ptr, ptr %26, align 8, !tbaa !71
  %296 = call i32 @fclose(ptr noundef %295)
  %297 = load ptr, ptr @MEM_freeN, align 8, !tbaa !34
  call void %297(ptr noundef nonnull %26) #22
  br label %298

298:                                              ; preds = %294, %290
  %299 = load i32, ptr getelementptr inbounds (%struct.Global, ptr @G, i64 0, i32 16), align 4, !tbaa !220
  %300 = and i32 %299, 1
  %301 = icmp eq i32 %300, 0
  br i1 %301, label %304, label %302

302:                                              ; preds = %298
  %303 = call i32 @puts(ptr nonnull dereferenceable(1) @str.65)
  br label %304

304:                                              ; preds = %302, %298, %290
  %305 = zext i1 %229 to i32
  br label %306

306:                                              ; preds = %28, %32, %304
  %307 = phi i32 [ %305, %304 ], [ 0, %32 ], [ 0, %28 ]
  ret i32 %307
}

; Function Attrs: nounwind uwtable
define dso_local void @BKE_ptcache_toggle_disk_cache(ptr noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.PTCacheID, ptr %0, i64 0, i32 25
  %3 = load ptr, ptr %2, align 8, !tbaa !50
  %4 = getelementptr inbounds %struct.PointCache, ptr %3, i64 0, i32 8
  %5 = load i32, ptr %4, align 8, !tbaa !214
  %6 = load i8, ptr getelementptr inbounds (%struct.Global, ptr @G, i64 0, i32 3), align 8, !tbaa !217
  %7 = icmp eq i8 %6, 0
  br i1 %7, label %8, label %17

8:                                                ; preds = %1
  %9 = getelementptr inbounds %struct.PointCache, ptr %3, i64 0, i32 2
  %10 = load i32, ptr %9, align 8, !tbaa !191
  %11 = and i32 %10, -65
  store i32 %11, ptr %9, align 8, !tbaa !191
  %12 = load i32, ptr getelementptr inbounds (%struct.Global, ptr @G, i64 0, i32 16), align 4, !tbaa !220
  %13 = and i32 %12, 1
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %92, label %15

15:                                               ; preds = %8
  %16 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.67)
  br label %92

17:                                               ; preds = %1
  %18 = getelementptr inbounds %struct.PointCache, ptr %3, i64 0, i32 19
  %19 = load ptr, ptr %18, align 8, !tbaa !194
  %20 = icmp eq ptr %19, null
  br i1 %20, label %23, label %21

21:                                               ; preds = %17
  %22 = load ptr, ptr @MEM_freeN, align 8, !tbaa !34
  tail call void %22(ptr noundef nonnull %19) #22
  store ptr null, ptr %18, align 8, !tbaa !194
  br label %23

23:                                               ; preds = %21, %17
  %24 = getelementptr inbounds %struct.PointCache, ptr %3, i64 0, i32 2
  %25 = load i32, ptr %24, align 8, !tbaa !191
  %26 = and i32 %25, 64
  %27 = icmp eq i32 %26, 0
  %28 = load ptr, ptr %2, align 8, !tbaa !50
  br i1 %27, label %55, label %29

29:                                               ; preds = %23
  %30 = getelementptr inbounds %struct.PointCache, ptr %28, i64 0, i32 20
  %31 = load ptr, ptr %30, align 8, !tbaa !199
  %32 = getelementptr inbounds %struct.PointCache, ptr %28, i64 0, i32 2
  %33 = load i32, ptr %32, align 8, !tbaa !191
  %34 = and i32 %33, 1
  %35 = and i32 %33, -2
  store i32 %35, ptr %32, align 8, !tbaa !191
  tail call void @BKE_ptcache_id_clear(ptr noundef %0, i32 noundef 0, i32 noundef 0)
  %36 = load i32, ptr %32, align 8, !tbaa !191
  %37 = or i32 %36, %34
  store i32 %37, ptr %32, align 8, !tbaa !191
  %38 = icmp eq ptr %31, null
  br i1 %38, label %49, label %39

39:                                               ; preds = %29, %46
  %40 = phi ptr [ %47, %46 ], [ %31, %29 ]
  %41 = tail call fastcc i32 @ptcache_mem_frame_to_disk(ptr noundef %0, ptr noundef nonnull %40), !range !206
  %42 = icmp eq i32 %41, 0
  br i1 %42, label %43, label %46

43:                                               ; preds = %39
  %44 = load i32, ptr %32, align 8, !tbaa !191
  %45 = and i32 %44, -65
  store i32 %45, ptr %32, align 8, !tbaa !191
  br label %49

46:                                               ; preds = %39
  %47 = load ptr, ptr %40, align 8, !tbaa !201
  %48 = icmp eq ptr %47, null
  br i1 %48, label %49, label %39, !llvm.loop !302

49:                                               ; preds = %46, %43, %29
  %50 = load i32, ptr %32, align 8, !tbaa !191
  %51 = and i32 %50, 1
  %52 = icmp eq i32 %51, 0
  br i1 %52, label %77, label %53

53:                                               ; preds = %49
  %54 = tail call i32 @BKE_ptcache_write(ptr noundef %0, i32 noundef 0), !range !206
  br label %77

55:                                               ; preds = %23
  %56 = getelementptr inbounds %struct.PointCache, ptr %28, i64 0, i32 2
  %57 = load i32, ptr %56, align 8, !tbaa !191
  %58 = and i32 %57, 1
  %59 = getelementptr inbounds %struct.PointCache, ptr %28, i64 0, i32 5
  %60 = load i32, ptr %59, align 4, !tbaa !192
  %61 = getelementptr inbounds %struct.PointCache, ptr %28, i64 0, i32 6
  %62 = load i32, ptr %61, align 8, !tbaa !193
  %63 = and i32 %57, -2
  store i32 %63, ptr %56, align 8, !tbaa !191
  tail call void @BKE_ptcache_id_clear(ptr noundef %0, i32 noundef 0, i32 noundef 0)
  %64 = load i32, ptr %56, align 8, !tbaa !191
  %65 = or i32 %64, %58
  store i32 %65, ptr %56, align 8, !tbaa !191
  %66 = icmp sgt i32 %60, %62
  br i1 %66, label %77, label %67

67:                                               ; preds = %55, %74
  %68 = phi i32 [ %75, %74 ], [ %60, %55 ]
  %69 = tail call fastcc ptr @ptcache_disk_frame_to_mem(ptr noundef %0, i32 noundef %68)
  %70 = icmp eq ptr %69, null
  br i1 %70, label %74, label %71

71:                                               ; preds = %67
  %72 = load ptr, ptr %2, align 8, !tbaa !50
  %73 = getelementptr inbounds %struct.PointCache, ptr %72, i64 0, i32 20
  tail call void @BLI_addtail(ptr noundef nonnull %73, ptr noundef nonnull %69) #22
  br label %74

74:                                               ; preds = %71, %67
  %75 = add i32 %68, 1
  %76 = icmp eq i32 %68, %62
  br i1 %76, label %77, label %67, !llvm.loop !296

77:                                               ; preds = %74, %55, %53, %49
  %78 = load i32, ptr %24, align 8, !tbaa !191
  %79 = xor i32 %78, 64
  store i32 %79, ptr %24, align 8, !tbaa !191
  tail call void @BKE_ptcache_id_clear(ptr noundef %0, i32 noundef 0, i32 noundef 0)
  %80 = load i32, ptr %24, align 8, !tbaa !191
  %81 = xor i32 %80, 64
  store i32 %81, ptr %24, align 8, !tbaa !191
  store i32 %5, ptr %4, align 8, !tbaa !214
  tail call void @BKE_ptcache_id_time(ptr noundef %0, ptr noundef null, float poison, ptr noundef null, ptr noundef null, ptr noundef null)
  tail call void @BKE_ptcache_update_info(ptr noundef %0)
  %82 = load i32, ptr %24, align 8, !tbaa !191
  %83 = and i32 %82, 64
  %84 = icmp eq i32 %83, 0
  br i1 %84, label %85, label %92

85:                                               ; preds = %77
  %86 = getelementptr inbounds %struct.PointCache, ptr %3, i64 0, i32 12
  %87 = load i32, ptr %86, align 8, !tbaa !63
  %88 = icmp eq i32 %87, 0
  br i1 %88, label %92, label %89

89:                                               ; preds = %85
  %90 = getelementptr inbounds %struct.PTCacheID, ptr %0, i64 0, i32 3
  %91 = load ptr, ptr %90, align 8, !tbaa !41
  tail call void @BKE_object_delete_ptcache(ptr noundef %91, i32 noundef %87) #22
  store i32 -1, ptr %86, align 8, !tbaa !63
  br label %92

92:                                               ; preds = %77, %89, %85, %8, %15
  ret void
}

declare void @BKE_object_delete_ptcache(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local void @BKE_ptcache_disk_cache_rename(ptr nocapture noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #0 {
  %4 = alloca [80 x i8], align 16
  %5 = alloca [1024 x i8], align 16
  %6 = alloca [2048 x i8], align 16
  %7 = alloca [2048 x i8], align 16
  %8 = alloca [2048 x i8], align 16
  %9 = alloca [1024 x i8], align 16
  %10 = alloca [7 x i8], align 1
  call void @llvm.lifetime.start.p0(i64 80, ptr nonnull %4) #22
  call void @llvm.lifetime.start.p0(i64 1024, ptr nonnull %5) #22
  call void @llvm.lifetime.start.p0(i64 2048, ptr nonnull %6) #22
  call void @llvm.lifetime.start.p0(i64 2048, ptr nonnull %7) #22
  call void @llvm.lifetime.start.p0(i64 2048, ptr nonnull %8) #22
  call void @llvm.lifetime.start.p0(i64 1024, ptr nonnull %9) #22
  %11 = getelementptr inbounds %struct.PTCacheID, ptr %0, i64 0, i32 25
  %12 = load ptr, ptr %11, align 8, !tbaa !50
  %13 = getelementptr inbounds %struct.PointCache, ptr %12, i64 0, i32 15
  %14 = call ptr @BLI_strncpy(ptr noundef nonnull %4, ptr noundef nonnull %13, i64 noundef 80) #22
  %15 = load ptr, ptr %11, align 8, !tbaa !50
  %16 = getelementptr inbounds %struct.PointCache, ptr %15, i64 0, i32 15
  %17 = call ptr @BLI_strncpy(ptr noundef nonnull %16, ptr noundef %1, i64 noundef 64) #22
  store i8 0, ptr %6, align 16, !tbaa !137
  %18 = load i8, ptr getelementptr inbounds (%struct.Global, ptr @G, i64 0, i32 3), align 8, !tbaa !217
  %19 = icmp eq i8 %18, 0
  br i1 %19, label %20, label %26

20:                                               ; preds = %3
  %21 = load ptr, ptr %11, align 8, !tbaa !50
  %22 = getelementptr inbounds %struct.PointCache, ptr %21, i64 0, i32 2
  %23 = load i32, ptr %22, align 8, !tbaa !191
  %24 = and i32 %23, 512
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %58, label %26

26:                                               ; preds = %20, %3
  %27 = load ptr, ptr %11, align 8, !tbaa !50
  %28 = getelementptr inbounds %struct.PointCache, ptr %27, i64 0, i32 15
  %29 = load i8, ptr %28, align 8, !tbaa !137
  %30 = icmp eq i8 %29, 0
  br i1 %30, label %31, label %54

31:                                               ; preds = %26
  %32 = getelementptr inbounds %struct.PointCache, ptr %27, i64 0, i32 2
  %33 = load i32, ptr %32, align 8, !tbaa !191
  %34 = and i32 %33, 512
  %35 = icmp eq i32 %34, 0
  br i1 %35, label %36, label %54

36:                                               ; preds = %31
  %37 = getelementptr inbounds %struct.PTCacheID, ptr %0, i64 0, i32 3
  %38 = load ptr, ptr %37, align 8, !tbaa !41
  %39 = getelementptr inbounds %struct.ID, ptr %38, i64 0, i32 4, i64 2
  %40 = load i8, ptr %39, align 1, !tbaa !137
  %41 = icmp eq i8 %40, 0
  br i1 %41, label %58, label %42

42:                                               ; preds = %36, %42
  %43 = phi i8 [ %52, %42 ], [ %40, %36 ]
  %44 = phi ptr [ %50, %42 ], [ %6, %36 ]
  %45 = phi ptr [ %48, %42 ], [ %39, %36 ]
  %46 = phi i32 [ %51, %42 ], [ 0, %36 ]
  %47 = zext i8 %43 to i32
  %48 = getelementptr inbounds i8, ptr %45, i64 1
  %49 = call i64 (ptr, i64, ptr, ...) @BLI_snprintf(ptr noundef nonnull %44, i64 noundef 2048, ptr noundef nonnull @.str.43, i32 noundef %47) #22
  %50 = getelementptr inbounds i8, ptr %44, i64 2
  %51 = add nuw nsw i32 %46, 2
  %52 = load i8, ptr %48, align 1, !tbaa !137
  %53 = icmp eq i8 %52, 0
  br i1 %53, label %58, label %42, !llvm.loop !224

54:                                               ; preds = %31, %26
  %55 = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %28) #23
  %56 = trunc i64 %55 to i32
  %57 = call ptr @strcpy(ptr noundef nonnull dereferenceable(1) %6, ptr noundef nonnull dereferenceable(1) %28) #22
  br label %58

58:                                               ; preds = %42, %36, %54, %20
  %59 = phi i32 [ 0, %20 ], [ %56, %54 ], [ 0, %36 ], [ %51, %42 ]
  %60 = call fastcc i32 @ptcache_path(ptr noundef %0, ptr noundef nonnull %5)
  %61 = call ptr @opendir(ptr noundef nonnull %5)
  %62 = icmp eq ptr %61, null
  br i1 %62, label %100, label %63

63:                                               ; preds = %58
  %64 = getelementptr inbounds %struct.PTCacheID, ptr %0, i64 0, i32 6
  %65 = load i32, ptr %64, align 4, !tbaa !65
  %66 = call i64 (ptr, i64, ptr, ...) @BLI_snprintf(ptr noundef nonnull %9, i64 noundef 1024, ptr noundef nonnull @.str.2, i32 noundef %65) #22
  %67 = load ptr, ptr %11, align 8, !tbaa !50
  %68 = getelementptr inbounds %struct.PointCache, ptr %67, i64 0, i32 15
  %69 = call ptr @BLI_strncpy(ptr noundef nonnull %68, ptr noundef %2, i64 noundef 64) #22
  %70 = call ptr @readdir(ptr noundef nonnull %61) #22
  %71 = icmp eq ptr %70, null
  br i1 %71, label %98, label %72

72:                                               ; preds = %63
  %73 = sext i32 %59 to i64
  br label %74

74:                                               ; preds = %72, %95
  %75 = phi ptr [ %70, %72 ], [ %96, %95 ]
  %76 = getelementptr inbounds %struct.dirent, ptr %75, i64 0, i32 4
  %77 = call ptr @strstr(ptr noundef nonnull dereferenceable(1) %76, ptr noundef nonnull dereferenceable(1) %9) #23
  %78 = icmp eq ptr %77, null
  br i1 %78, label %95, label %79

79:                                               ; preds = %74
  %80 = call i32 @strncmp(ptr noundef nonnull %6, ptr noundef nonnull %76, i64 noundef %73) #23
  %81 = icmp eq i32 %80, 0
  br i1 %81, label %82, label %95

82:                                               ; preds = %79
  %83 = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %76) #23
  %84 = trunc i64 %83 to i32
  call void @llvm.lifetime.start.p0(i64 7, ptr nonnull %10) #22
  %85 = icmp sgt i32 %84, 15
  br i1 %85, label %86, label %94

86:                                               ; preds = %82
  %87 = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %76) #23
  %88 = getelementptr i8, ptr %76, i64 %87
  %89 = getelementptr i8, ptr %88, i64 -15
  %90 = call ptr @BLI_strncpy(ptr noundef nonnull %10, ptr noundef %89, i64 noundef 7) #22
  %91 = call i64 @strtol(ptr nocapture noundef nonnull %10, ptr noundef null, i32 noundef 10) #22
  %92 = trunc i64 %91 to i32
  call void @BLI_join_dirfile(ptr noundef nonnull %8, i64 noundef 2048, ptr noundef nonnull %5, ptr noundef nonnull %76) #22
  call fastcc void @ptcache_filename(ptr noundef %0, ptr noundef nonnull %7, i32 noundef %92, i16 noundef signext 1, i16 noundef signext 1)
  %93 = call i32 @BLI_rename(ptr noundef nonnull %8, ptr noundef nonnull %7) #22
  br label %94

94:                                               ; preds = %86, %82
  call void @llvm.lifetime.end.p0(i64 7, ptr nonnull %10) #22
  br label %95

95:                                               ; preds = %79, %94, %74
  %96 = call ptr @readdir(ptr noundef nonnull %61) #22
  %97 = icmp eq ptr %96, null
  br i1 %97, label %98, label %74, !llvm.loop !308

98:                                               ; preds = %95, %63
  %99 = call i32 @closedir(ptr noundef nonnull %61)
  br label %100

100:                                              ; preds = %58, %98
  %101 = load ptr, ptr %11, align 8, !tbaa !50
  %102 = getelementptr inbounds %struct.PointCache, ptr %101, i64 0, i32 15
  %103 = call ptr @BLI_strncpy(ptr noundef nonnull %102, ptr noundef nonnull %4, i64 noundef 64) #22
  call void @llvm.lifetime.end.p0(i64 1024, ptr nonnull %9) #22
  call void @llvm.lifetime.end.p0(i64 2048, ptr nonnull %8) #22
  call void @llvm.lifetime.end.p0(i64 2048, ptr nonnull %7) #22
  call void @llvm.lifetime.end.p0(i64 2048, ptr nonnull %6) #22
  call void @llvm.lifetime.end.p0(i64 1024, ptr nonnull %5) #22
  call void @llvm.lifetime.end.p0(i64 80, ptr nonnull %4) #22
  ret void
}

declare i32 @BLI_rename(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local void @BKE_ptcache_load_external(ptr nocapture noundef %0) local_unnamed_addr #0 {
  %2 = alloca [2048 x i8], align 16
  %3 = alloca [2048 x i8], align 16
  %4 = alloca [1024 x i8], align 16
  %5 = alloca [2048 x i8], align 16
  %6 = alloca [1024 x i8], align 16
  %7 = alloca [7 x i8], align 1
  %8 = alloca [14 x float], align 16
  %9 = getelementptr inbounds %struct.PTCacheID, ptr %0, i64 0, i32 25
  %10 = load ptr, ptr %9, align 8, !tbaa !50
  call void @llvm.lifetime.start.p0(i64 1024, ptr nonnull %4) #22
  call void @llvm.lifetime.start.p0(i64 2048, ptr nonnull %5) #22
  call void @llvm.lifetime.start.p0(i64 1024, ptr nonnull %6) #22
  %11 = icmp eq ptr %10, null
  br i1 %11, label %226, label %12

12:                                               ; preds = %1
  %13 = call fastcc i32 @ptcache_path(ptr noundef %0, ptr noundef nonnull %4)
  store i8 0, ptr %5, align 16, !tbaa !137
  %14 = load i8, ptr getelementptr inbounds (%struct.Global, ptr @G, i64 0, i32 3), align 8, !tbaa !217
  %15 = icmp eq i8 %14, 0
  br i1 %15, label %16, label %22

16:                                               ; preds = %12
  %17 = load ptr, ptr %9, align 8, !tbaa !50
  %18 = getelementptr inbounds %struct.PointCache, ptr %17, i64 0, i32 2
  %19 = load i32, ptr %18, align 8, !tbaa !191
  %20 = and i32 %19, 512
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %54, label %22

22:                                               ; preds = %16, %12
  %23 = load ptr, ptr %9, align 8, !tbaa !50
  %24 = getelementptr inbounds %struct.PointCache, ptr %23, i64 0, i32 15
  %25 = load i8, ptr %24, align 8, !tbaa !137
  %26 = icmp eq i8 %25, 0
  br i1 %26, label %27, label %50

27:                                               ; preds = %22
  %28 = getelementptr inbounds %struct.PointCache, ptr %23, i64 0, i32 2
  %29 = load i32, ptr %28, align 8, !tbaa !191
  %30 = and i32 %29, 512
  %31 = icmp eq i32 %30, 0
  br i1 %31, label %32, label %50

32:                                               ; preds = %27
  %33 = getelementptr inbounds %struct.PTCacheID, ptr %0, i64 0, i32 3
  %34 = load ptr, ptr %33, align 8, !tbaa !41
  %35 = getelementptr inbounds %struct.ID, ptr %34, i64 0, i32 4, i64 2
  %36 = load i8, ptr %35, align 1, !tbaa !137
  %37 = icmp eq i8 %36, 0
  br i1 %37, label %54, label %38

38:                                               ; preds = %32, %38
  %39 = phi i8 [ %48, %38 ], [ %36, %32 ]
  %40 = phi ptr [ %46, %38 ], [ %5, %32 ]
  %41 = phi ptr [ %44, %38 ], [ %35, %32 ]
  %42 = phi i32 [ %47, %38 ], [ 0, %32 ]
  %43 = zext i8 %39 to i32
  %44 = getelementptr inbounds i8, ptr %41, i64 1
  %45 = call i64 (ptr, i64, ptr, ...) @BLI_snprintf(ptr noundef nonnull %40, i64 noundef 2048, ptr noundef nonnull @.str.43, i32 noundef %43) #22
  %46 = getelementptr inbounds i8, ptr %40, i64 2
  %47 = add nuw nsw i32 %42, 2
  %48 = load i8, ptr %44, align 1, !tbaa !137
  %49 = icmp eq i8 %48, 0
  br i1 %49, label %54, label %38, !llvm.loop !224

50:                                               ; preds = %27, %22
  %51 = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %24) #23
  %52 = trunc i64 %51 to i32
  %53 = call ptr @strcpy(ptr noundef nonnull dereferenceable(1) %5, ptr noundef nonnull dereferenceable(1) %24) #22
  br label %54

54:                                               ; preds = %38, %32, %50, %16
  %55 = phi i32 [ 0, %16 ], [ %52, %50 ], [ 0, %32 ], [ %47, %38 ]
  %56 = call ptr @opendir(ptr noundef nonnull %4)
  %57 = icmp eq ptr %56, null
  br i1 %57, label %226, label %58

58:                                               ; preds = %54
  %59 = getelementptr inbounds %struct.PointCache, ptr %10, i64 0, i32 12
  %60 = load i32, ptr %59, align 8, !tbaa !63
  %61 = icmp sgt i32 %60, -1
  br i1 %61, label %62, label %64

62:                                               ; preds = %58
  %63 = call i64 (ptr, i64, ptr, ...) @BLI_snprintf(ptr noundef nonnull %6, i64 noundef 1024, ptr noundef nonnull @.str.9, i32 noundef %60) #22
  br label %66

64:                                               ; preds = %58
  %65 = call ptr @BLI_strncpy(ptr noundef nonnull %6, ptr noundef nonnull @.str.6, i64 noundef 1024) #22
  br label %66

66:                                               ; preds = %64, %62
  %67 = call ptr @readdir(ptr noundef nonnull %56) #22
  %68 = icmp eq ptr %67, null
  br i1 %68, label %107, label %69

69:                                               ; preds = %66
  %70 = sext i32 %55 to i64
  br label %71

71:                                               ; preds = %69, %101
  %72 = phi ptr [ %67, %69 ], [ %105, %101 ]
  %73 = phi i32 [ 0, %69 ], [ %104, %101 ]
  %74 = phi i32 [ 300000, %69 ], [ %103, %101 ]
  %75 = phi i32 [ -1, %69 ], [ %102, %101 ]
  %76 = getelementptr inbounds %struct.dirent, ptr %72, i64 0, i32 4
  %77 = call ptr @strstr(ptr noundef nonnull dereferenceable(1) %76, ptr noundef nonnull dereferenceable(1) %6) #23
  %78 = icmp eq ptr %77, null
  br i1 %78, label %101, label %79

79:                                               ; preds = %71
  %80 = call i32 @strncmp(ptr noundef nonnull %5, ptr noundef nonnull %76, i64 noundef %70) #23
  %81 = icmp eq i32 %80, 0
  br i1 %81, label %82, label %101

82:                                               ; preds = %79
  %83 = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %76) #23
  %84 = trunc i64 %83 to i32
  call void @llvm.lifetime.start.p0(i64 7, ptr nonnull %7) #22
  %85 = icmp sgt i32 %84, 15
  br i1 %85, label %86, label %97

86:                                               ; preds = %82
  %87 = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %76) #23
  %88 = getelementptr i8, ptr %76, i64 %87
  %89 = getelementptr i8, ptr %88, i64 -15
  %90 = call ptr @BLI_strncpy(ptr noundef nonnull %7, ptr noundef %89, i64 noundef 7) #22
  %91 = call i64 @strtol(ptr nocapture noundef nonnull %7, ptr noundef null, i32 noundef 10) #22
  %92 = trunc i64 %91 to i32
  %93 = icmp eq i32 %92, 0
  br i1 %93, label %97, label %94

94:                                               ; preds = %86
  %95 = call i32 @llvm.smin.i32(i32 %74, i32 %92)
  %96 = call i32 @llvm.smax.i32(i32 %75, i32 %92)
  br label %97

97:                                               ; preds = %86, %94, %82
  %98 = phi i32 [ %96, %94 ], [ %75, %82 ], [ %75, %86 ]
  %99 = phi i32 [ %95, %94 ], [ %74, %82 ], [ %74, %86 ]
  %100 = phi i32 [ %73, %94 ], [ %73, %82 ], [ 1, %86 ]
  call void @llvm.lifetime.end.p0(i64 7, ptr nonnull %7) #22
  br label %101

101:                                              ; preds = %79, %97, %71
  %102 = phi i32 [ %98, %97 ], [ %75, %79 ], [ %75, %71 ]
  %103 = phi i32 [ %99, %97 ], [ %74, %79 ], [ %74, %71 ]
  %104 = phi i32 [ %100, %97 ], [ %73, %79 ], [ %73, %71 ]
  %105 = call ptr @readdir(ptr noundef nonnull %56) #22
  %106 = icmp eq ptr %105, null
  br i1 %106, label %107, label %71, !llvm.loop !309

107:                                              ; preds = %101, %66
  %108 = phi i32 [ -1, %66 ], [ %102, %101 ]
  %109 = phi i32 [ 300000, %66 ], [ %103, %101 ]
  %110 = phi i32 [ 0, %66 ], [ %104, %101 ]
  %111 = call i32 @closedir(ptr noundef nonnull %56)
  %112 = icmp eq i32 %109, 300000
  br i1 %112, label %219, label %113

113:                                              ; preds = %107
  %114 = getelementptr inbounds %struct.PointCache, ptr %10, i64 0, i32 5
  store i32 %109, ptr %114, align 4, !tbaa !192
  %115 = getelementptr inbounds %struct.PointCache, ptr %10, i64 0, i32 6
  store i32 %108, ptr %115, align 8, !tbaa !193
  %116 = getelementptr inbounds %struct.PointCache, ptr %10, i64 0, i32 11
  store i32 0, ptr %116, align 4, !tbaa !236
  %117 = getelementptr inbounds %struct.PTCacheID, ptr %0, i64 0, i32 5
  %118 = load i32, ptr %117, align 8, !tbaa !45
  %119 = icmp eq i32 %118, 3
  br i1 %119, label %214, label %120

120:                                              ; preds = %113
  %121 = icmp eq i32 %110, 0
  br i1 %121, label %169, label %122

122:                                              ; preds = %120
  call void @llvm.lifetime.start.p0(i64 2048, ptr nonnull %3) #22
  %123 = load i8, ptr getelementptr inbounds (%struct.Global, ptr @G, i64 0, i32 3), align 8, !tbaa !217
  %124 = icmp eq i8 %123, 0
  br i1 %124, label %125, label %131

125:                                              ; preds = %122
  %126 = load ptr, ptr %9, align 8, !tbaa !50
  %127 = getelementptr inbounds %struct.PointCache, ptr %126, i64 0, i32 2
  %128 = load i32, ptr %127, align 8, !tbaa !191
  %129 = and i32 %128, 512
  %130 = icmp eq i32 %129, 0
  br i1 %130, label %142, label %131

131:                                              ; preds = %125, %122
  call fastcc void @ptcache_filename(ptr noundef %0, ptr noundef nonnull %3, i32 noundef 0, i16 noundef signext 1, i16 noundef signext 1)
  %132 = call i32 @BLI_exists(ptr noundef nonnull %3) #22
  %133 = icmp eq i32 %132, 0
  br i1 %133, label %142, label %134

134:                                              ; preds = %131
  %135 = call ptr @BLI_fopen(ptr noundef nonnull %3, ptr noundef nonnull @.str.57) #22
  %136 = icmp eq ptr %135, null
  br i1 %136, label %142, label %137

137:                                              ; preds = %134
  %138 = load ptr, ptr @MEM_mallocN, align 8, !tbaa !34
  %139 = call ptr %138(i64 noundef 192, ptr noundef nonnull @.str.60) #22
  store ptr %135, ptr %139, align 8, !tbaa !71
  %140 = getelementptr inbounds %struct.PTCacheFile, ptr %139, i64 0, i32 2
  store i32 0, ptr %140, align 4, !tbaa !218
  %141 = getelementptr inbounds %struct.PTCacheFile, ptr %139, i64 0, i32 1
  store i32 0, ptr %141, align 8, !tbaa !219
  br label %142

142:                                              ; preds = %125, %131, %134, %137
  %143 = phi ptr [ %139, %137 ], [ null, %125 ], [ null, %131 ], [ null, %134 ]
  call void @llvm.lifetime.end.p0(i64 2048, ptr nonnull %3) #22
  %144 = icmp eq ptr %143, null
  br i1 %144, label %214, label %145

145:                                              ; preds = %142
  %146 = call fastcc i32 @ptcache_file_header_begin_read(ptr noundef nonnull %143), !range !206
  %147 = icmp eq i32 %146, 0
  br i1 %147, label %165, label %148

148:                                              ; preds = %145
  %149 = getelementptr inbounds %struct.PTCacheFile, ptr %143, i64 0, i32 4
  %150 = load i32, ptr %149, align 4, !tbaa !221
  %151 = load i32, ptr %117, align 8, !tbaa !45
  %152 = icmp eq i32 %150, %151
  br i1 %152, label %153, label %164

153:                                              ; preds = %148
  %154 = getelementptr inbounds %struct.PTCacheID, ptr %0, i64 0, i32 24
  %155 = load ptr, ptr %154, align 8, !tbaa !60
  %156 = call i32 %155(ptr noundef nonnull %143) #22
  %157 = icmp eq i32 %156, 0
  br i1 %157, label %164, label %158

158:                                              ; preds = %153
  %159 = getelementptr inbounds %struct.PTCacheFile, ptr %143, i64 0, i32 3
  %160 = load i32, ptr %159, align 8, !tbaa !222
  store i32 %160, ptr %116, align 4, !tbaa !236
  %161 = getelementptr inbounds %struct.PointCache, ptr %10, i64 0, i32 2
  %162 = load i32, ptr %161, align 8, !tbaa !191
  %163 = or i32 %162, 1024
  store i32 %163, ptr %161, align 8, !tbaa !191
  br label %165

164:                                              ; preds = %153, %148
  store i32 0, ptr %116, align 4, !tbaa !236
  br label %165

165:                                              ; preds = %145, %164, %158
  %166 = load ptr, ptr %143, align 8, !tbaa !71
  %167 = call i32 @fclose(ptr noundef %166)
  %168 = load ptr, ptr @MEM_freeN, align 8, !tbaa !34
  call void %168(ptr noundef nonnull %143) #22
  br label %214

169:                                              ; preds = %120
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %8) #22
  %170 = icmp ult i32 %118, 3
  br i1 %170, label %171, label %175

171:                                              ; preds = %169
  %172 = zext nneg i32 %118 to i64
  %173 = getelementptr inbounds [3 x i64], ptr @switch.table.BKE_ptcache_load_external, i64 0, i64 %172
  %174 = load i64, ptr %173, align 8
  br label %175

175:                                              ; preds = %169, %171
  %176 = phi i64 [ %174, %171 ], [ 0, %169 ]
  call void @llvm.lifetime.start.p0(i64 2048, ptr nonnull %2) #22
  %177 = load i8, ptr getelementptr inbounds (%struct.Global, ptr @G, i64 0, i32 3), align 8, !tbaa !217
  %178 = icmp eq i8 %177, 0
  br i1 %178, label %179, label %185

179:                                              ; preds = %175
  %180 = load ptr, ptr %9, align 8, !tbaa !50
  %181 = getelementptr inbounds %struct.PointCache, ptr %180, i64 0, i32 2
  %182 = load i32, ptr %181, align 8, !tbaa !191
  %183 = and i32 %182, 512
  %184 = icmp eq i32 %183, 0
  br i1 %184, label %196, label %185

185:                                              ; preds = %179, %175
  call fastcc void @ptcache_filename(ptr noundef %0, ptr noundef nonnull %2, i32 noundef %109, i16 noundef signext 1, i16 noundef signext 1)
  %186 = call i32 @BLI_exists(ptr noundef nonnull %2) #22
  %187 = icmp eq i32 %186, 0
  br i1 %187, label %196, label %188

188:                                              ; preds = %185
  %189 = call ptr @BLI_fopen(ptr noundef nonnull %2, ptr noundef nonnull @.str.57) #22
  %190 = icmp eq ptr %189, null
  br i1 %190, label %196, label %191

191:                                              ; preds = %188
  %192 = load ptr, ptr @MEM_mallocN, align 8, !tbaa !34
  %193 = call ptr %192(i64 noundef 192, ptr noundef nonnull @.str.60) #22
  store ptr %189, ptr %193, align 8, !tbaa !71
  %194 = getelementptr inbounds %struct.PTCacheFile, ptr %193, i64 0, i32 2
  store i32 0, ptr %194, align 4, !tbaa !218
  %195 = getelementptr inbounds %struct.PTCacheFile, ptr %193, i64 0, i32 1
  store i32 %109, ptr %195, align 8, !tbaa !219
  br label %196

196:                                              ; preds = %179, %185, %188, %191
  %197 = phi ptr [ %193, %191 ], [ null, %179 ], [ null, %185 ], [ null, %188 ]
  call void @llvm.lifetime.end.p0(i64 2048, ptr nonnull %2) #22
  %198 = icmp eq ptr %197, null
  br i1 %198, label %213, label %199

199:                                              ; preds = %196
  %200 = load ptr, ptr %197, align 8, !tbaa !71
  %201 = call i64 @fread(ptr noundef nonnull %8, i64 noundef %176, i64 noundef 1, ptr noundef %200)
  %202 = icmp eq i64 %201, 1
  br i1 %202, label %203, label %209

203:                                              ; preds = %199, %203
  %204 = load i32, ptr %116, align 4, !tbaa !236
  %205 = add nsw i32 %204, 1
  store i32 %205, ptr %116, align 4, !tbaa !236
  %206 = load ptr, ptr %197, align 8, !tbaa !71
  %207 = call i64 @fread(ptr noundef nonnull %8, i64 noundef %176, i64 noundef 1, ptr noundef %206)
  %208 = icmp eq i64 %207, 1
  br i1 %208, label %203, label %209, !llvm.loop !310

209:                                              ; preds = %203, %199
  %210 = load ptr, ptr %197, align 8, !tbaa !71
  %211 = call i32 @fclose(ptr noundef %210)
  %212 = load ptr, ptr @MEM_freeN, align 8, !tbaa !34
  call void %212(ptr noundef nonnull %197) #22
  br label %213

213:                                              ; preds = %209, %196
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %8) #22
  br label %214

214:                                              ; preds = %213, %165, %142, %113
  %215 = getelementptr inbounds %struct.PointCache, ptr %10, i64 0, i32 2
  %216 = load i32, ptr %215, align 8, !tbaa !191
  %217 = and i32 %216, -328
  %218 = or disjoint i32 %217, 69
  store i32 %218, ptr %215, align 8, !tbaa !191
  br label %219

219:                                              ; preds = %214, %107
  %220 = getelementptr inbounds %struct.PointCache, ptr %10, i64 0, i32 19
  %221 = load ptr, ptr %220, align 8, !tbaa !194
  %222 = icmp eq ptr %221, null
  br i1 %222, label %225, label %223

223:                                              ; preds = %219
  %224 = load ptr, ptr @MEM_freeN, align 8, !tbaa !34
  call void %224(ptr noundef nonnull %221) #22
  store ptr null, ptr %220, align 8, !tbaa !194
  br label %225

225:                                              ; preds = %223, %219
  call void @BKE_ptcache_update_info(ptr noundef %0)
  br label %226

226:                                              ; preds = %54, %1, %225
  call void @llvm.lifetime.end.p0(i64 1024, ptr nonnull %6) #22
  call void @llvm.lifetime.end.p0(i64 2048, ptr nonnull %5) #22
  call void @llvm.lifetime.end.p0(i64 1024, ptr nonnull %4) #22
  ret void
}

; Function Attrs: nofree nounwind uwtable
define internal fastcc noundef i32 @ptcache_file_header_begin_read(ptr nocapture noundef %0) unnamed_addr #8 {
  %2 = alloca i32, align 4
  %3 = alloca [8 x i8], align 1
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %2) #22
  store i32 0, ptr %2, align 4, !tbaa !112
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #22
  %4 = getelementptr inbounds %struct.PTCacheFile, ptr %0, i64 0, i32 5
  store i32 0, ptr %4, align 8, !tbaa !223
  %5 = load ptr, ptr %0, align 8, !tbaa !71
  %6 = call i64 @fread(ptr noundef nonnull %3, i64 noundef 1, i64 noundef 8, ptr noundef %5)
  %7 = icmp eq i64 %6, 8
  br i1 %7, label %8, label %15

8:                                                ; preds = %1
  %9 = call i32 @bcmp(ptr noundef nonnull dereferenceable(8) %3, ptr noundef nonnull dereferenceable(8) @.str.38, i64 8)
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %11, label %15

11:                                               ; preds = %8
  %12 = load ptr, ptr %0, align 8, !tbaa !71
  %13 = call i64 @fread(ptr noundef nonnull %2, i64 noundef 4, i64 noundef 1, ptr noundef %12)
  %14 = icmp ne i64 %13, 0
  br label %15

15:                                               ; preds = %11, %1, %8
  %16 = phi i1 [ false, %8 ], [ %14, %11 ], [ false, %1 ]
  %17 = load i32, ptr %2, align 4, !tbaa !112
  %18 = and i32 %17, 65535
  %19 = getelementptr inbounds %struct.PTCacheFile, ptr %0, i64 0, i32 4
  store i32 %18, ptr %19, align 4, !tbaa !221
  %20 = and i32 %17, -65536
  %21 = getelementptr inbounds %struct.PTCacheFile, ptr %0, i64 0, i32 6
  store i32 %20, ptr %21, align 4, !tbaa !231
  br i1 %16, label %25, label %22

22:                                               ; preds = %15
  %23 = load ptr, ptr %0, align 8, !tbaa !71
  %24 = tail call i32 @fseek(ptr noundef %23, i64 noundef 0, i32 noundef 0)
  br label %25

25:                                               ; preds = %22, %15
  %26 = zext i1 %16 to i32
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #22
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2) #22
  ret i32 %26
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define dso_local void @BKE_ptcache_validate(ptr noundef %0, i32 noundef %1) local_unnamed_addr #16 {
  %3 = icmp eq ptr %0, null
  br i1 %3, label %9, label %4

4:                                                ; preds = %2
  %5 = getelementptr inbounds %struct.PointCache, ptr %0, i64 0, i32 2
  %6 = load i32, ptr %5, align 8, !tbaa !191
  %7 = or i32 %6, 4
  store i32 %7, ptr %5, align 8, !tbaa !191
  %8 = getelementptr inbounds %struct.PointCache, ptr %0, i64 0, i32 4
  store i32 %1, ptr %8, align 8, !tbaa !205
  br label %9

9:                                                ; preds = %4, %2
  ret void
}

declare void @psys_interpolate_particle(i16 noundef signext, ptr noundef, float noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nofree nounwind
declare noundef i64 @fwrite(ptr nocapture noundef, i64 noundef, i64 noundef, ptr nocapture noundef) local_unnamed_addr #12

; Function Attrs: nofree nounwind
declare noundef i64 @fread(ptr nocapture noundef, i64 noundef, i64 noundef, ptr nocapture noundef) local_unnamed_addr #12

declare void @unit_qt(ptr noundef) local_unnamed_addr #2

declare void @interp_qt_qtqt(ptr noundef, ptr noundef, ptr noundef, float noundef) local_unnamed_addr #2

declare void @modifier_setError(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal fastcc void @ptcache_file_compressed_read(ptr nocapture noundef readonly %0, ptr nocapture noundef %1, i32 noundef %2) unnamed_addr #0 {
  %4 = alloca i8, align 1
  %5 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %4) #22
  store i8 0, ptr %4, align 1, !tbaa !137
  %6 = load ptr, ptr @MEM_callocN, align 8, !tbaa !34
  %7 = tail call ptr %6(i64 noundef 16, ptr noundef nonnull @.str.27) #22
  %8 = load ptr, ptr %0, align 8, !tbaa !71
  %9 = call i64 @fread(ptr noundef nonnull %4, i64 noundef 1, i64 noundef 1, ptr noundef %8)
  %10 = load i8, ptr %4, align 1, !tbaa !137
  %11 = icmp eq i8 %10, 0
  br i1 %11, label %25, label %12

12:                                               ; preds = %3
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #22
  %13 = load ptr, ptr %0, align 8, !tbaa !71
  %14 = call i64 @fread(ptr noundef nonnull %5, i64 noundef 4, i64 noundef 1, ptr noundef %13)
  %15 = load i32, ptr %5, align 4, !tbaa !112
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %24, label %17

17:                                               ; preds = %12
  %18 = zext i32 %15 to i64
  %19 = load ptr, ptr @MEM_callocN, align 8, !tbaa !34
  %20 = tail call ptr %19(i64 noundef %18, ptr noundef nonnull @.str.29) #22
  %21 = load ptr, ptr %0, align 8, !tbaa !71
  %22 = tail call i64 @fread(ptr noundef %20, i64 noundef 1, i64 noundef %18, ptr noundef %21)
  %23 = load ptr, ptr @MEM_freeN, align 8, !tbaa !34
  tail call void %23(ptr noundef %20) #22
  br label %24

24:                                               ; preds = %12, %17
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #22
  br label %29

25:                                               ; preds = %3
  %26 = zext i32 %2 to i64
  %27 = load ptr, ptr %0, align 8, !tbaa !71
  %28 = tail call i64 @fread(ptr noundef %1, i64 noundef 1, i64 noundef %26, ptr noundef %27)
  br label %29

29:                                               ; preds = %25, %24
  %30 = load ptr, ptr @MEM_freeN, align 8, !tbaa !34
  tail call void %30(ptr noundef %7) #22
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %4) #22
  ret void
}

declare void @copy_qt_qt(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: readwrite)
declare ptr @strcpy(ptr noalias noundef returned writeonly, ptr noalias nocapture noundef readonly) local_unnamed_addr #17

declare zeroext i8 @BLI_path_is_rel(ptr noundef) local_unnamed_addr #2

declare zeroext i8 @BLI_path_abs(ptr noundef, ptr noundef) local_unnamed_addr #2

declare i32 @BLI_add_slash(ptr noundef) local_unnamed_addr #2

declare void @BLI_split_file_part(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #2

declare ptr @BLI_temp_dir_session() local_unnamed_addr #2

declare i32 @BKE_object_insert_ptcache(ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree nounwind willreturn
declare i64 @strtol(ptr noundef readonly, ptr nocapture noundef, i32 noundef) local_unnamed_addr #18

declare double @PIL_check_seconds_timer() local_unnamed_addr #2

; Function Attrs: nofree nounwind
declare noundef i32 @sprintf(ptr noalias nocapture noundef writeonly, ptr nocapture noundef readonly, ...) local_unnamed_addr #12

declare ptr @BLI_fopen(ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @BLI_make_existing_file(ptr noundef) local_unnamed_addr #2

; Function Attrs: nofree nounwind
declare noundef i32 @fseek(ptr nocapture noundef, i64 noundef, i32 noundef) local_unnamed_addr #12

; Function Attrs: nofree nounwind
declare noundef i32 @fclose(ptr nocapture noundef) local_unnamed_addr #12

; Function Attrs: nofree nounwind willreturn memory(argmem: read)
declare i32 @bcmp(ptr nocapture, ptr nocapture, i64) local_unnamed_addr #19

; Function Attrs: nofree nounwind
declare noundef i32 @puts(ptr nocapture noundef readonly) local_unnamed_addr #20

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.floor.f32(float) #21

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #21

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #21

; Function Attrs: nofree nounwind
declare noundef i32 @fputc(i32 noundef, ptr nocapture noundef) local_unnamed_addr #20

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #5 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nofree nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { nofree norecurse nosync nounwind memory(read, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #12 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #15 = { mustprogress nofree nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #16 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #17 = { mustprogress nofree nounwind willreturn memory(argmem: readwrite) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #18 = { mustprogress nofree nounwind willreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #19 = { nofree nounwind willreturn memory(argmem: read) }
attributes #20 = { nofree nounwind }
attributes #21 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #22 = { nounwind }
attributes #23 = { nounwind willreturn memory(read) }

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
!38 = !{!39, !40, i64 52}
!39 = !{!"ParticleKey", !36, i64 0, !36, i64 12, !36, i64 24, !36, i64 40, !40, i64 52}
!40 = !{!"float", !36, i64 0}
!41 = !{!42, !35, i64 24}
!42 = !{!"PTCacheID", !35, i64 0, !35, i64 8, !35, i64 16, !35, i64 24, !35, i64 32, !43, i64 40, !43, i64 44, !43, i64 48, !43, i64 52, !43, i64 56, !43, i64 60, !43, i64 64, !35, i64 72, !35, i64 80, !35, i64 88, !35, i64 96, !35, i64 104, !35, i64 112, !35, i64 120, !35, i64 128, !35, i64 136, !35, i64 144, !35, i64 152, !35, i64 160, !35, i64 168, !35, i64 176, !35, i64 184, !35, i64 192}
!43 = !{!"int", !36, i64 0}
!44 = !{!42, !35, i64 32}
!45 = !{!42, !43, i64 40}
!46 = !{!47, !35, i64 352}
!47 = !{!"SoftBody", !43, i64 0, !43, i64 4, !35, i64 8, !35, i64 16, !36, i64 24, !36, i64 25, !48, i64 26, !40, i64 28, !36, i64 32, !40, i64 96, !40, i64 100, !40, i64 104, !40, i64 108, !40, i64 112, !40, i64 116, !40, i64 120, !40, i64 124, !40, i64 128, !48, i64 132, !36, i64 134, !48, i64 198, !40, i64 200, !40, i64 204, !36, i64 208, !43, i64 272, !43, i64 276, !43, i64 280, !48, i64 284, !48, i64 286, !35, i64 288, !43, i64 296, !43, i64 300, !40, i64 304, !40, i64 308, !40, i64 312, !40, i64 316, !48, i64 320, !48, i64 322, !48, i64 324, !48, i64 326, !48, i64 328, !48, i64 330, !48, i64 332, !48, i64 334, !35, i64 336, !40, i64 344, !40, i64 348, !35, i64 352, !49, i64 360, !35, i64 376, !36, i64 384, !36, i64 396, !36, i64 432, !43, i64 468}
!48 = !{!"short", !36, i64 0}
!49 = !{!"ListBase", !35, i64 0, !35, i64 8}
!50 = !{!42, !35, i64 176}
!51 = !{!42, !35, i64 184}
!52 = !{!42, !35, i64 192}
!53 = !{!42, !35, i64 152}
!54 = !{!42, !35, i64 136}
!55 = !{!42, !35, i64 144}
!56 = !{!42, !35, i64 72}
!57 = !{!42, !35, i64 80}
!58 = !{!42, !35, i64 88}
!59 = !{!42, !35, i64 160}
!60 = !{!42, !35, i64 168}
!61 = !{!42, !43, i64 60}
!62 = !{!42, !43, i64 64}
!63 = !{!64, !43, i64 56}
!64 = !{!"PointCache", !35, i64 0, !35, i64 8, !43, i64 16, !43, i64 20, !43, i64 24, !43, i64 28, !43, i64 32, !43, i64 36, !43, i64 40, !43, i64 44, !43, i64 48, !43, i64 52, !43, i64 56, !48, i64 60, !48, i64 62, !36, i64 64, !36, i64 128, !36, i64 192, !36, i64 256, !35, i64 1280, !49, i64 1288, !35, i64 1304, !35, i64 1312}
!65 = !{!42, !43, i64 44}
!66 = !{!42, !43, i64 52}
!67 = !{!42, !43, i64 56}
!68 = !{!47, !43, i64 0}
!69 = !{!47, !35, i64 8}
!70 = !{!40, !40, i64 0}
!71 = !{!72, !35, i64 0}
!72 = !{!"PTCacheFile", !35, i64 0, !43, i64 8, !43, i64 12, !43, i64 16, !43, i64 20, !43, i64 24, !43, i64 28, !73, i64 32, !36, i64 128}
!73 = !{!"PTCacheData", !43, i64 0, !36, i64 4, !36, i64 16, !36, i64 28, !36, i64 44, !40, i64 56, !36, i64 60, !74, i64 72}
!74 = !{!"BoidData", !40, i64 0, !36, i64 4, !48, i64 16, !48, i64 18}
!75 = !{!76, !35, i64 576}
!76 = !{!"ParticleSystem", !35, i64 0, !35, i64 8, !35, i64 16, !35, i64 24, !35, i64 32, !35, i64 40, !35, i64 48, !35, i64 56, !35, i64 64, !49, i64 72, !49, i64 88, !35, i64 104, !35, i64 112, !35, i64 120, !35, i64 128, !35, i64 136, !35, i64 144, !49, i64 152, !36, i64 168, !36, i64 232, !40, i64 296, !40, i64 300, !40, i64 304, !43, i64 308, !43, i64 312, !43, i64 316, !43, i64 320, !43, i64 324, !43, i64 328, !43, i64 332, !43, i64 336, !48, i64 340, !48, i64 342, !48, i64 344, !48, i64 346, !36, i64 348, !36, i64 540, !48, i64 564, !48, i64 566, !35, i64 568, !35, i64 576, !49, i64 584, !35, i64 600, !35, i64 608, !43, i64 616, !43, i64 620, !35, i64 624, !35, i64 632, !35, i64 640, !40, i64 648, !40, i64 652}
!77 = !{!76, !35, i64 16}
!78 = !{!79, !48, i64 160}
!79 = !{!"ParticleSettings", !80, i64 0, !35, i64 120, !35, i64 128, !35, i64 136, !35, i64 144, !43, i64 152, !43, i64 156, !48, i64 160, !48, i64 162, !48, i64 164, !48, i64 166, !48, i64 168, !48, i64 170, !48, i64 172, !48, i64 174, !43, i64 176, !43, i64 180, !48, i64 184, !48, i64 186, !48, i64 188, !48, i64 190, !48, i64 192, !48, i64 194, !48, i64 196, !48, i64 198, !48, i64 200, !48, i64 202, !48, i64 204, !48, i64 206, !48, i64 208, !48, i64 210, !48, i64 212, !48, i64 214, !48, i64 216, !48, i64 218, !48, i64 220, !48, i64 222, !48, i64 224, !48, i64 226, !48, i64 228, !48, i64 230, !40, i64 232, !40, i64 236, !36, i64 240, !36, i64 248, !40, i64 256, !40, i64 260, !40, i64 264, !48, i64 268, !48, i64 270, !40, i64 272, !40, i64 276, !40, i64 280, !40, i64 284, !40, i64 288, !40, i64 292, !40, i64 296, !40, i64 300, !40, i64 304, !40, i64 308, !40, i64 312, !40, i64 316, !36, i64 320, !43, i64 324, !43, i64 328, !43, i64 332, !43, i64 336, !48, i64 340, !36, i64 342, !40, i64 348, !40, i64 352, !40, i64 356, !40, i64 360, !40, i64 364, !40, i64 368, !40, i64 372, !36, i64 376, !40, i64 388, !40, i64 392, !40, i64 396, !40, i64 400, !40, i64 404, !40, i64 408, !40, i64 412, !36, i64 416, !40, i64 428, !40, i64 432, !40, i64 436, !40, i64 440, !43, i64 444, !43, i64 448, !40, i64 452, !40, i64 456, !40, i64 460, !40, i64 464, !40, i64 468, !40, i64 472, !40, i64 476, !40, i64 480, !40, i64 484, !40, i64 488, !40, i64 492, !40, i64 496, !40, i64 500, !40, i64 504, !40, i64 508, !40, i64 512, !40, i64 516, !40, i64 520, !40, i64 524, !40, i64 528, !40, i64 532, !40, i64 536, !40, i64 540, !40, i64 544, !40, i64 548, !36, i64 552, !40, i64 560, !40, i64 564, !43, i64 568, !43, i64 572, !36, i64 576, !35, i64 720, !49, i64 728, !35, i64 744, !35, i64 752, !35, i64 760, !35, i64 768, !35, i64 776, !35, i64 784, !48, i64 792, !36, i64 794}
!80 = !{!"ID", !35, i64 0, !35, i64 8, !35, i64 16, !35, i64 24, !36, i64 32, !48, i64 98, !43, i64 100, !43, i64 104, !43, i64 108, !35, i64 112}
!81 = !{!42, !43, i64 48}
!82 = !{!79, !48, i64 168}
!83 = !{!79, !35, i64 136}
!84 = !{!85, !43, i64 52}
!85 = !{!"SPHFluidSettings", !40, i64 0, !40, i64 4, !40, i64 8, !40, i64 12, !40, i64 16, !40, i64 20, !40, i64 24, !40, i64 28, !40, i64 32, !40, i64 36, !40, i64 40, !40, i64 44, !40, i64 48, !43, i64 52, !43, i64 56, !48, i64 60, !36, i64 62}
!86 = !{!42, !35, i64 112}
!87 = !{!42, !35, i64 120}
!88 = !{!79, !43, i64 152}
!89 = !{!79, !48, i64 170}
!90 = !{!79, !48, i64 172}
!91 = !{!79, !40, i64 388}
!92 = !{!76, !43, i64 320}
!93 = !{!64, !43, i64 20}
!94 = !{!76, !35, i64 24}
!95 = !{!96, !40, i64 140}
!96 = !{!"ParticleData", !39, i64 0, !39, i64 56, !35, i64 112, !35, i64 120, !35, i64 128, !43, i64 136, !40, i64 140, !40, i64 144, !40, i64 148, !43, i64 152, !43, i64 156, !36, i64 160, !40, i64 176, !40, i64 180, !40, i64 184, !43, i64 188, !43, i64 192, !48, i64 196, !48, i64 198}
!97 = !{!96, !40, i64 148}
!98 = distinct !{!98, !99, !100}
!99 = !{!"llvm.loop.mustprogress"}
!100 = !{!"llvm.loop.unroll.disable"}
!101 = !{!96, !35, i64 128}
!102 = !{!96, !40, i64 144}
!103 = !{!96, !40, i64 52}
!104 = !{!96, !40, i64 108}
!105 = !{!79, !40, i64 300}
!106 = !{!76, !43, i64 616}
!107 = !{!76, !35, i64 608}
!108 = !{!109, !43, i64 16}
!109 = !{!"PTCacheExtra", !35, i64 0, !35, i64 8, !43, i64 16, !43, i64 20, !35, i64 24}
!110 = !{!109, !43, i64 20}
!111 = !{!109, !35, i64 24}
!112 = !{!43, !43, i64 0}
!113 = !{!76, !43, i64 620}
!114 = distinct !{!114, !99, !100}
!115 = !{!116, !35, i64 144}
!116 = !{!"ClothModifierData", !117, i64 0, !35, i64 112, !35, i64 120, !35, i64 128, !35, i64 136, !35, i64 144, !49, i64 152}
!117 = !{!"ModifierData", !35, i64 0, !35, i64 8, !43, i64 16, !43, i64 20, !43, i64 24, !43, i64 28, !36, i64 32, !35, i64 96, !35, i64 104}
!118 = !{!116, !35, i64 120}
!119 = !{!120, !43, i64 16}
!120 = !{!"Cloth", !35, i64 0, !35, i64 8, !43, i64 16, !43, i64 20, !43, i64 24, !36, i64 28, !36, i64 29, !48, i64 30, !35, i64 32, !35, i64 40, !35, i64 48, !35, i64 56, !35, i64 64, !35, i64 72, !43, i64 80, !43, i64 84}
!121 = !{!120, !35, i64 0}
!122 = !{!123, !35, i64 112}
!123 = !{!"SmokeModifierData", !117, i64 0, !35, i64 112, !35, i64 120, !35, i64 128, !40, i64 136, !43, i64 140}
!124 = !{!42, !35, i64 104}
!125 = !{!42, !35, i64 96}
!126 = !{!127, !35, i64 8}
!127 = !{!"SmokeDomainSettings", !35, i64 0, !35, i64 8, !35, i64 16, !35, i64 24, !35, i64 32, !35, i64 40, !35, i64 48, !35, i64 56, !35, i64 64, !35, i64 72, !35, i64 80, !35, i64 88, !36, i64 96, !36, i64 108, !36, i64 120, !36, i64 132, !36, i64 144, !36, i64 156, !36, i64 168, !36, i64 180, !36, i64 192, !36, i64 204, !36, i64 268, !36, i64 332, !36, i64 344, !36, i64 356, !36, i64 368, !43, i64 380, !40, i64 384, !40, i64 388, !43, i64 392, !43, i64 396, !40, i64 400, !40, i64 404, !40, i64 408, !43, i64 412, !43, i64 416, !43, i64 420, !43, i64 424, !48, i64 428, !48, i64 430, !43, i64 432, !40, i64 436, !36, i64 440, !40, i64 452, !43, i64 456, !43, i64 460, !36, i64 464, !36, i64 480, !35, i64 512, !43, i64 520, !40, i64 524, !40, i64 528, !43, i64 532, !36, i64 536, !43, i64 548, !40, i64 552, !40, i64 556, !40, i64 560, !40, i64 564, !40, i64 568, !36, i64 572}
!128 = !{!127, !35, i64 48}
!129 = !{!130, !35, i64 48}
!130 = !{!"DynamicPaintSurface", !35, i64 0, !35, i64 8, !35, i64 16, !35, i64 24, !35, i64 32, !35, i64 40, !35, i64 48, !49, i64 56, !43, i64 72, !36, i64 76, !48, i64 140, !48, i64 142, !48, i64 144, !48, i64 146, !48, i64 148, !48, i64 150, !48, i64 152, !48, i64 154, !43, i64 156, !43, i64 160, !43, i64 164, !43, i64 168, !43, i64 172, !43, i64 176, !43, i64 180, !36, i64 184, !35, i64 200, !36, i64 208, !43, i64 272, !43, i64 276, !40, i64 280, !40, i64 284, !40, i64 288, !40, i64 292, !40, i64 296, !40, i64 300, !40, i64 304, !40, i64 308, !40, i64 312, !40, i64 316, !40, i64 320, !40, i64 324, !40, i64 328, !40, i64 332, !40, i64 336, !43, i64 340, !36, i64 344, !36, i64 408, !36, i64 1432, !36, i64 1496}
!131 = !{!130, !35, i64 24}
!132 = !{!133, !43, i64 32}
!133 = !{!"PaintSurfaceData", !35, i64 0, !35, i64 8, !35, i64 16, !35, i64 24, !43, i64 32}
!134 = !{!130, !48, i64 140}
!135 = !{!130, !48, i64 142}
!136 = !{!133, !35, i64 8}
!137 = !{!36, !36, i64 0}
!138 = !{!139, !35, i64 40}
!139 = !{!"RigidBodyWorld", !35, i64 0, !35, i64 8, !35, i64 16, !35, i64 24, !43, i64 32, !40, i64 36, !35, i64 40, !49, i64 48, !43, i64 64, !48, i64 68, !48, i64 70, !43, i64 72, !40, i64 76, !35, i64 80}
!140 = !{!139, !43, i64 64}
!141 = !{!139, !35, i64 16}
!142 = !{!143, !35, i64 1368}
!143 = !{!"Object", !80, i64 0, !35, i64 120, !35, i64 128, !48, i64 136, !48, i64 138, !43, i64 140, !43, i64 144, !43, i64 148, !36, i64 152, !35, i64 216, !35, i64 224, !35, i64 232, !35, i64 240, !35, i64 248, !35, i64 256, !35, i64 264, !35, i64 272, !35, i64 280, !35, i64 288, !35, i64 296, !35, i64 304, !144, i64 312, !35, i64 360, !49, i64 368, !49, i64 384, !49, i64 400, !49, i64 416, !43, i64 432, !43, i64 436, !35, i64 440, !35, i64 448, !43, i64 456, !43, i64 460, !36, i64 464, !36, i64 476, !36, i64 488, !36, i64 500, !36, i64 512, !36, i64 524, !36, i64 536, !36, i64 548, !36, i64 560, !36, i64 576, !36, i64 592, !36, i64 604, !40, i64 616, !40, i64 620, !36, i64 624, !36, i64 688, !36, i64 752, !36, i64 816, !36, i64 880, !43, i64 944, !48, i64 948, !48, i64 950, !48, i64 952, !48, i64 954, !48, i64 956, !48, i64 958, !48, i64 960, !48, i64 962, !48, i64 964, !36, i64 966, !36, i64 967, !43, i64 968, !43, i64 972, !43, i64 976, !43, i64 980, !43, i64 984, !40, i64 988, !40, i64 992, !40, i64 996, !40, i64 1000, !40, i64 1004, !40, i64 1008, !40, i64 1012, !40, i64 1016, !40, i64 1020, !40, i64 1024, !40, i64 1028, !40, i64 1032, !48, i64 1036, !48, i64 1038, !48, i64 1040, !36, i64 1042, !36, i64 1043, !48, i64 1044, !36, i64 1046, !36, i64 1047, !40, i64 1048, !40, i64 1052, !49, i64 1056, !49, i64 1072, !49, i64 1088, !49, i64 1104, !40, i64 1120, !48, i64 1124, !48, i64 1126, !36, i64 1128, !43, i64 1144, !43, i64 1148, !35, i64 1152, !36, i64 1160, !36, i64 1161, !48, i64 1162, !36, i64 1164, !49, i64 1176, !49, i64 1192, !49, i64 1208, !49, i64 1224, !35, i64 1240, !35, i64 1248, !35, i64 1256, !36, i64 1264, !36, i64 1265, !48, i64 1266, !40, i64 1268, !35, i64 1272, !35, i64 1280, !35, i64 1288, !35, i64 1296, !145, i64 1304, !145, i64 1312, !43, i64 1320, !43, i64 1324, !49, i64 1328, !49, i64 1344, !35, i64 1360, !35, i64 1368, !35, i64 1376, !36, i64 1384, !35, i64 1392, !49, i64 1400, !35, i64 1416}
!144 = !{!"bAnimVizSettings", !43, i64 0, !43, i64 4, !43, i64 8, !43, i64 12, !48, i64 16, !48, i64 18, !48, i64 20, !48, i64 22, !48, i64 24, !48, i64 26, !48, i64 28, !48, i64 30, !43, i64 32, !43, i64 36, !43, i64 40, !43, i64 44}
!145 = !{!"long", !36, i64 0}
!146 = !{!147, !48, i64 16}
!147 = !{!"RigidBodyOb", !35, i64 0, !35, i64 8, !48, i64 16, !48, i64 18, !43, i64 20, !43, i64 24, !48, i64 28, !48, i64 30, !40, i64 32, !40, i64 36, !40, i64 40, !40, i64 44, !40, i64 48, !40, i64 52, !40, i64 56, !40, i64 60, !36, i64 64, !36, i64 80, !40, i64 92}
!148 = !{!143, !35, i64 1248}
!149 = distinct !{!149, !99, !100}
!150 = !{!117, !43, i64 16}
!151 = !{!123, !43, i64 140}
!152 = !{!153, !35, i64 112}
!153 = !{!"DynamicPaintModifierData", !117, i64 0, !35, i64 112, !35, i64 120, !43, i64 128, !43, i64 132}
!154 = distinct !{!154, !99, !100}
!155 = distinct !{!155, !99, !100}
!156 = !{!157, !35, i64 4952}
!157 = !{!"Scene", !80, i64 0, !35, i64 120, !35, i64 128, !35, i64 136, !35, i64 144, !49, i64 152, !35, i64 168, !35, i64 176, !36, i64 184, !36, i64 196, !36, i64 208, !36, i64 220, !43, i64 232, !43, i64 236, !43, i64 240, !48, i64 244, !36, i64 246, !36, i64 247, !35, i64 248, !35, i64 256, !35, i64 264, !35, i64 272, !158, i64 280, !167, i64 4264, !49, i64 4296, !49, i64 4312, !35, i64 4328, !35, i64 4336, !35, i64 4344, !35, i64 4352, !35, i64 4360, !35, i64 4368, !48, i64 4376, !48, i64 4378, !43, i64 4380, !49, i64 4384, !168, i64 4400, !169, i64 4416, !172, i64 4600, !35, i64 4608, !173, i64 4616, !35, i64 4640, !145, i64 4648, !145, i64 4656, !160, i64 4664, !161, i64 4824, !174, i64 4888, !35, i64 4952}
!158 = !{!"RenderData", !159, i64 0, !35, i64 248, !35, i64 256, !162, i64 264, !163, i64 328, !43, i64 400, !43, i64 404, !43, i64 408, !40, i64 412, !43, i64 416, !43, i64 420, !43, i64 424, !43, i64 428, !48, i64 432, !48, i64 434, !40, i64 436, !40, i64 440, !40, i64 444, !40, i64 448, !40, i64 452, !48, i64 456, !48, i64 458, !48, i64 460, !48, i64 462, !48, i64 464, !48, i64 466, !43, i64 468, !48, i64 472, !48, i64 474, !48, i64 476, !48, i64 478, !48, i64 480, !48, i64 482, !43, i64 484, !43, i64 488, !48, i64 492, !48, i64 494, !43, i64 496, !43, i64 500, !48, i64 504, !48, i64 506, !48, i64 508, !48, i64 510, !48, i64 512, !36, i64 514, !36, i64 515, !43, i64 516, !43, i64 520, !43, i64 524, !48, i64 528, !48, i64 530, !48, i64 532, !48, i64 534, !48, i64 536, !48, i64 538, !48, i64 540, !48, i64 542, !164, i64 544, !164, i64 560, !165, i64 576, !49, i64 592, !48, i64 608, !48, i64 610, !40, i64 612, !40, i64 616, !40, i64 620, !40, i64 624, !43, i64 628, !40, i64 632, !40, i64 636, !40, i64 640, !40, i64 644, !48, i64 648, !48, i64 650, !48, i64 652, !48, i64 654, !48, i64 656, !48, i64 658, !40, i64 660, !40, i64 664, !48, i64 668, !48, i64 670, !40, i64 672, !40, i64 676, !36, i64 680, !43, i64 1704, !48, i64 1708, !48, i64 1710, !36, i64 1712, !36, i64 2480, !36, i64 2496, !36, i64 2512, !36, i64 2513, !36, i64 2514, !36, i64 2515, !43, i64 2520, !48, i64 2524, !48, i64 2526, !40, i64 2528, !40, i64 2532, !48, i64 2536, !48, i64 2538, !40, i64 2540, !48, i64 2544, !48, i64 2546, !43, i64 2548, !48, i64 2552, !48, i64 2554, !48, i64 2556, !48, i64 2558, !40, i64 2560, !40, i64 2564, !35, i64 2568, !43, i64 2576, !40, i64 2580, !36, i64 2584, !166, i64 2616, !43, i64 3976, !43, i64 3980}
!159 = !{!"ImageFormatData", !36, i64 0, !36, i64 1, !36, i64 2, !36, i64 3, !36, i64 4, !36, i64 5, !36, i64 6, !36, i64 7, !48, i64 8, !48, i64 10, !40, i64 12, !36, i64 16, !36, i64 17, !36, i64 18, !160, i64 24, !161, i64 184}
!160 = !{!"ColorManagedViewSettings", !43, i64 0, !43, i64 4, !36, i64 8, !36, i64 72, !40, i64 136, !40, i64 140, !35, i64 144, !35, i64 152}
!161 = !{!"ColorManagedDisplaySettings", !36, i64 0}
!162 = !{!"QuicktimeCodecSettings", !43, i64 0, !43, i64 4, !43, i64 8, !43, i64 12, !43, i64 16, !43, i64 20, !43, i64 24, !43, i64 28, !43, i64 32, !43, i64 36, !43, i64 40, !43, i64 44, !48, i64 48, !48, i64 50, !43, i64 52, !43, i64 56, !43, i64 60}
!163 = !{!"FFMpegCodecData", !43, i64 0, !43, i64 4, !43, i64 8, !43, i64 12, !43, i64 16, !43, i64 20, !43, i64 24, !43, i64 28, !40, i64 32, !43, i64 36, !43, i64 40, !43, i64 44, !43, i64 48, !43, i64 52, !43, i64 56, !43, i64 60, !35, i64 64}
!164 = !{!"rctf", !40, i64 0, !40, i64 4, !40, i64 8, !40, i64 12}
!165 = !{!"rcti", !43, i64 0, !43, i64 4, !43, i64 8, !43, i64 12}
!166 = !{!"BakeData", !159, i64 0, !36, i64 248, !48, i64 1272, !48, i64 1274, !48, i64 1276, !48, i64 1278, !40, i64 1280, !40, i64 1284, !36, i64 1288, !36, i64 1291, !36, i64 1292, !36, i64 1293, !36, i64 1296}
!167 = !{!"AudioData", !43, i64 0, !40, i64 4, !40, i64 8, !40, i64 12, !43, i64 16, !48, i64 20, !48, i64 22, !40, i64 24, !40, i64 28}
!168 = !{!"GameFraming", !36, i64 0, !36, i64 12, !36, i64 13, !36, i64 14, !36, i64 15}
!169 = !{!"GameData", !168, i64 0, !48, i64 16, !48, i64 18, !48, i64 20, !48, i64 22, !48, i64 24, !48, i64 26, !48, i64 28, !48, i64 30, !48, i64 32, !36, i64 34, !170, i64 40, !48, i64 64, !48, i64 66, !40, i64 68, !171, i64 72, !40, i64 128, !40, i64 132, !43, i64 136, !48, i64 140, !48, i64 142, !48, i64 144, !48, i64 146, !48, i64 148, !48, i64 150, !48, i64 152, !48, i64 154, !48, i64 156, !48, i64 158, !48, i64 160, !48, i64 162, !40, i64 164, !40, i64 168, !40, i64 172, !40, i64 176, !40, i64 180}
!170 = !{!"GameDome", !48, i64 0, !48, i64 2, !48, i64 4, !48, i64 6, !40, i64 8, !40, i64 12, !35, i64 16}
!171 = !{!"RecastData", !40, i64 0, !40, i64 4, !40, i64 8, !40, i64 12, !40, i64 16, !40, i64 20, !40, i64 24, !40, i64 28, !40, i64 32, !40, i64 36, !43, i64 40, !40, i64 44, !40, i64 48, !48, i64 52, !48, i64 54}
!172 = !{!"UnitSettings", !40, i64 0, !36, i64 4, !36, i64 5, !48, i64 6}
!173 = !{!"PhysicsSettings", !36, i64 0, !43, i64 12, !43, i64 16, !43, i64 20}
!174 = !{!"ColorManagedColorspaceSettings", !36, i64 0}
!175 = !{!143, !48, i64 952}
!176 = !{!177, !35, i64 0}
!177 = !{!"Global", !35, i64 0, !36, i64 8, !36, i64 1032, !36, i64 2056, !36, i64 2057, !36, i64 2058, !49, i64 2064, !36, i64 2080, !36, i64 2081, !36, i64 2082, !48, i64 2084, !48, i64 2086, !48, i64 2088, !36, i64 2090, !48, i64 2092, !43, i64 2096, !43, i64 2100, !36, i64 2104, !43, i64 2108, !43, i64 2112, !36, i64 2116}
!178 = !{!179, !35, i64 1888}
!179 = !{!"Main", !35, i64 0, !35, i64 8, !36, i64 16, !48, i64 1040, !48, i64 1042, !48, i64 1044, !48, i64 1046, !145, i64 1048, !36, i64 1056, !48, i64 1072, !35, i64 1080, !49, i64 1088, !49, i64 1104, !49, i64 1120, !49, i64 1136, !49, i64 1152, !49, i64 1168, !49, i64 1184, !49, i64 1200, !49, i64 1216, !49, i64 1232, !49, i64 1248, !49, i64 1264, !49, i64 1280, !49, i64 1296, !49, i64 1312, !49, i64 1328, !49, i64 1344, !49, i64 1360, !49, i64 1376, !49, i64 1392, !49, i64 1408, !49, i64 1424, !49, i64 1440, !49, i64 1456, !49, i64 1472, !49, i64 1488, !49, i64 1504, !49, i64 1520, !49, i64 1536, !49, i64 1552, !49, i64 1568, !49, i64 1584, !49, i64 1600, !49, i64 1616, !36, i64 1632, !35, i64 1888, !35, i64 1896}
!180 = !{!181, !35, i64 16}
!181 = !{!"DupliObject", !35, i64 0, !35, i64 8, !35, i64 16, !36, i64 24, !36, i64 88, !36, i64 100, !48, i64 108, !36, i64 110, !36, i64 111, !36, i64 112, !35, i64 144}
!182 = !{!49, !35, i64 0}
!183 = distinct !{!183, !99, !100}
!184 = !{!185, !43, i64 20}
!185 = !{!"PTCacheMem", !35, i64 0, !35, i64 8, !43, i64 16, !43, i64 20, !43, i64 24, !43, i64 28, !36, i64 32, !36, i64 96, !49, i64 160}
!186 = distinct !{!186, !99, !100}
!187 = !{!185, !43, i64 24}
!188 = distinct !{!188, !99, !100}
!189 = distinct !{!189, !99, !100}
!190 = distinct !{!190, !99, !100}
!191 = !{!64, !43, i64 16}
!192 = !{!64, !43, i64 28}
!193 = !{!64, !43, i64 32}
!194 = !{!64, !35, i64 1280}
!195 = !{!185, !43, i64 16}
!196 = distinct !{!196, !99, !100}
!197 = distinct !{!197, !99, !100}
!198 = distinct !{!198, !99, !100}
!199 = !{!64, !35, i64 1288}
!200 = !{!64, !35, i64 1296}
!201 = !{!185, !35, i64 0}
!202 = distinct !{!202, !99, !100}
!203 = !{!185, !35, i64 8}
!204 = distinct !{!204, !99, !100}
!205 = !{!64, !43, i64 24}
!206 = !{i32 0, i32 2}
!207 = distinct !{!207, !99, !100}
!208 = distinct !{!208, !99, !100}
!209 = !{!42, !35, i64 128}
!210 = !{!185, !35, i64 160}
!211 = distinct !{!211, !99, !100}
!212 = !{!109, !35, i64 0}
!213 = distinct !{!213, !99, !100}
!214 = !{!64, !43, i64 40}
!215 = distinct !{!215, !99, !100}
!216 = distinct !{!216, !99, !100}
!217 = !{!177, !36, i64 2056}
!218 = !{!72, !43, i64 12}
!219 = !{!72, !43, i64 8}
!220 = !{!177, !43, i64 2100}
!221 = !{!72, !43, i64 20}
!222 = !{!72, !43, i64 16}
!223 = !{!72, !43, i64 24}
!224 = distinct !{!224, !99, !100}
!225 = distinct !{!225, !99, !100}
!226 = distinct !{!226, !99, !100}
!227 = distinct !{!227, !99, !100}
!228 = distinct !{!228, !99, !100}
!229 = distinct !{!229, !99, !100}
!230 = distinct !{!230, !99, !100}
!231 = !{!72, !43, i64 28}
!232 = distinct !{!232, !99, !100}
!233 = distinct !{!233, !99, !100}
!234 = distinct !{!234, !99, !100}
!235 = distinct !{!235, !99, !100}
!236 = !{!64, !43, i64 52}
!237 = distinct !{!237, !99, !100}
!238 = distinct !{!238, !99, !100}
!239 = distinct !{!239, !99, !100}
!240 = distinct !{!240, !99, !100}
!241 = !{!143, !35, i64 24}
!242 = !{!157, !43, i64 680}
!243 = distinct !{!243, !99, !100}
!244 = distinct !{!244, !99, !100}
!245 = !{!76, !48, i64 340}
!246 = !{!76, !35, i64 104}
!247 = distinct !{!247, !99, !100}
!248 = distinct !{!248, !99, !100}
!249 = distinct !{!249, !99, !100}
!250 = !{!143, !35, i64 1376}
!251 = !{!147, !43, i64 20}
!252 = !{!143, !48, i64 136}
!253 = !{!143, !35, i64 288}
!254 = distinct !{!254, !99, !100}
!255 = distinct !{!255, !99, !100}
!256 = !{!64, !35, i64 1304}
!257 = !{!64, !35, i64 1312}
!258 = distinct !{!258, !99, !100}
!259 = distinct !{!259, !99, !100}
!260 = distinct !{!260, !99, !100}
!261 = !{!64, !35, i64 0}
!262 = distinct !{!262, !99, !100}
!263 = !{!264, !43, i64 16}
!264 = !{!"PTCacheBaker", !35, i64 0, !35, i64 8, !43, i64 16, !43, i64 20, !43, i64 24, !43, i64 28, !35, i64 32, !35, i64 40, !35, i64 48, !35, i64 56, !35, i64 64, !35, i64 72}
!265 = !{!264, !43, i64 20}
!266 = !{!264, !43, i64 24}
!267 = !{!264, !35, i64 0}
!268 = !{!264, !35, i64 8}
!269 = !{!157, !43, i64 4632}
!270 = !{!264, !43, i64 28}
!271 = !{!264, !35, i64 32}
!272 = !{!157, !40, i64 716}
!273 = !{!274, !43, i64 8}
!274 = !{!"", !43, i64 0, !43, i64 4, !43, i64 8, !43, i64 12, !35, i64 16, !35, i64 24, !35, i64 32}
!275 = !{!274, !43, i64 12}
!276 = !{!274, !35, i64 16}
!277 = !{!274, !35, i64 32}
!278 = !{!274, !35, i64 24}
!279 = !{!177, !36, i64 2080}
!280 = distinct !{!280, !99, !100}
!281 = !{!282, !35, i64 32}
!282 = !{!"Base", !35, i64 0, !35, i64 8, !43, i64 16, !43, i64 20, !43, i64 24, !48, i64 28, !48, i64 30, !35, i64 32}
!283 = distinct !{!283, !99, !100}
!284 = distinct !{!284, !99, !100}
!285 = !{!274, !43, i64 0}
!286 = !{!274, !43, i64 4}
!287 = !{!177, !36, i64 2081}
!288 = !{!264, !35, i64 56}
!289 = !{!264, !35, i64 72}
!290 = !{!264, !35, i64 64}
!291 = distinct !{!291, !99, !100}
!292 = distinct !{!292, !99, !100}
!293 = distinct !{!293, !99, !100}
!294 = !{!157, !43, i64 232}
!295 = distinct !{!295, !99, !100}
!296 = distinct !{!296, !99, !100}
!297 = distinct !{!297, !99, !100}
!298 = distinct !{!298, !99, !100}
!299 = distinct !{!299, !99, !100}
!300 = distinct !{!300, !99, !100}
!301 = distinct !{!301, !99, !100}
!302 = distinct !{!302, !99, !100}
!303 = !{!64, !48, i64 60}
!304 = distinct !{!304, !99, !100}
!305 = distinct !{!305, !99, !100}
!306 = distinct !{!306, !99, !100}
!307 = distinct !{!307, !99, !100}
!308 = distinct !{!308, !99, !100}
!309 = distinct !{!309, !99, !100}
!310 = distinct !{!310, !99, !100}
