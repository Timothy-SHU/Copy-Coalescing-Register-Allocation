; ModuleID = 'blender/source/blender/blenkernel/intern/dynamicpaint.c'
source_filename = "blender/source/blender/blenkernel/intern/dynamicpaint.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.Global = type { ptr, [1024 x i8], [1024 x i8], i8, i8, i8, %struct.ListBase, i8, i8, i8, i16, i16, i16, i8, i16, i32, i32, i8, i32, i32, [200 x i8] }
%struct.ListBase = type { ptr, ptr }
%struct.DynamicPaintSurface = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.ListBase, i32, [64 x i8], i16, i16, i16, i16, i16, i16, i16, i16, i32, i32, i32, i32, i32, i32, i32, [4 x float], ptr, [64 x i8], i32, i32, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, i32, [64 x i8], [1024 x i8], [64 x i8], [64 x i8] }
%struct.DynamicPaintCanvasSettings = type { ptr, ptr, %struct.ListBase, i16, i16, i32, [64 x i8] }
%struct.Object = type { %struct.ID, ptr, ptr, i16, i16, i32, i32, i32, [64 x i8], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.bAnimVizSettings, ptr, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, i32, i32, ptr, ptr, i32, i32, [3 x float], [3 x float], [3 x float], [3 x float], [3 x float], [3 x float], [3 x float], [3 x float], [4 x float], [4 x float], [3 x float], [3 x float], float, float, [4 x [4 x float]], [4 x [4 x float]], [4 x [4 x float]], [4 x [4 x float]], [4 x [4 x float]], i32, i16, i16, i16, i16, i16, i16, i16, i16, i16, i8, i8, i32, i32, i32, i32, i32, float, float, float, float, float, float, float, float, float, float, float, float, i16, i16, i16, i8, i8, i16, i8, i8, float, float, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, float, i16, i16, [4 x float], i32, i32, ptr, i8, i8, i16, [3 x float], %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, ptr, ptr, ptr, i8, i8, i16, float, ptr, ptr, ptr, ptr, i64, i64, i32, i32, %struct.ListBase, %struct.ListBase, ptr, ptr, ptr, [2 x float], ptr, %struct.ListBase, ptr }
%struct.ID = type { ptr, ptr, ptr, ptr, [66 x i8], i16, i32, i32, i32, ptr }
%struct.bAnimVizSettings = type { i32, i32, i32, i32, i16, i16, i16, i16, i16, i16, i16, i16, i32, i32, i32, i32 }
%struct.Mesh = type { %struct.ID, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.CustomData, %struct.CustomData, %struct.CustomData, %struct.CustomData, %struct.CustomData, i32, i32, i32, i32, i32, i32, i32, [3 x float], [3 x float], [3 x float], i32, i16, i16, float, i32, i8, i8, i8, i8, i8, i8, i16, ptr }
%struct.CustomData = type { ptr, [41 x i32], i32, i32, i32, ptr, ptr }
%struct.DynamicPaintModifierData = type { %struct.ModifierData, ptr, ptr, i32, i32 }
%struct.ModifierData = type { ptr, ptr, i32, i32, i32, i32, [64 x i8], ptr, ptr }
%struct.DynamicPaintBrushSettings = type { ptr, ptr, ptr, ptr, i32, i32, float, float, float, float, float, float, float, float, ptr, ptr, i16, i16, i16, i16, float, float, float, float }
%struct.DerivedMesh = type { %struct.CustomData, %struct.CustomData, %struct.CustomData, %struct.CustomData, %struct.CustomData, i32, i32, i32, i32, i32, i32, i32, ptr, ptr, i32, float, i32, i32, ptr, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.ImgSeqFormatData = type { ptr, ptr }
%struct.PaintSurfaceData = type { ptr, ptr, ptr, ptr, i32 }
%struct.PaintAdjData = type { ptr, ptr, ptr, ptr, i32 }
%struct.PaintBakeData = type { ptr, ptr, ptr, ptr, %struct.Bounds3D, ptr, double, ptr, ptr, ptr, ptr, ptr, [4 x [4 x float]], i32 }
%struct.Bounds3D = type { i32, [3 x float], [3 x float] }
%struct.VolumeGrid = type { [3 x i32], %struct.Bounds3D, ptr, ptr, ptr, ptr }
%struct.PointCache = type { ptr, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i16, i16, [64 x i8], [64 x i8], [64 x i8], [1024 x i8], ptr, %struct.ListBase, ptr, ptr }
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
%struct.ColorBand = type { i16, i16, i8, i8, i8, [1 x i8], [32 x %struct.CBData] }
%struct.CBData = type { float, float, float, float, float, i32 }
%struct.TexResult = type { float, float, float, float, float, i32, ptr }
%struct.PaintPoint = type { [3 x float], float, float, i16, [3 x float], float }
%struct.MFace = type { i32, i32, i32, i32, i16, i8, i8 }
%struct.MTFace = type { [4 x [2 x float]], ptr, i8, i8, i16, i16, i16 }
%struct.PaintUVPoint = type { i32, i32, i32, i32, i32, i32, i16 }
%struct.Vec3f = type { [3 x float] }
%struct.MCol = type { i8, i8, i8, i8 }
%struct.MLoop = type { i32, i32 }
%struct.MEdge = type { i32, i32, i8, i8, i16 }
%struct.MPoly = type { i32, i32, i16, i8, i8 }
%struct.PTCacheID = type { ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.Material = type { %struct.ID, ptr, i16, i16, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, %struct.VolumeSettings, %struct.GameSettings, float, float, float, float, float, float, float, i16, i16, i16, i8, i8, float, float, i16, i16, float, float, float, float, i16, i16, i32, i32, i32, i32, i16, i16, i16, i16, float, float, float, float, float, float, float, float, float, float, [64 x i8], float, float, float, i32, i8, i8, i8, i8, i16, i16, i16, i8, i8, i16, i16, float, float, [4 x float], float, float, i16, i16, ptr, ptr, i8, i8, i8, i8, i16, i16, float, float, [18 x ptr], ptr, ptr, ptr, ptr, float, float, float, float, float, i16, i16, [3 x float], [3 x float], float, float, float, float, float, float, float, i16, i16, i32, i16, i16, [4 x float], i16, i16, i16, i16, i16, [3 x i16], ptr, %struct.ListBase }
%struct.VolumeSettings = type { float, float, float, float, [3 x float], [3 x float], [3 x float], float, float, float, i16, i16, i16, i16, float, float, float, float }
%struct.GameSettings = type { i32, i32, i32, i32 }
%struct.MLoopCol = type { i8, i8, i8, i8 }
%struct.MDeformVert = type { ptr, i32, i32 }
%struct.MDeformWeight = type { i32, float }
%struct.MVert = type { [3 x float], [3 x i16], i8, i8 }
%struct.PaintWavePoint = type { float, float, float, i16 }
%struct.Bounds2D = type { [2 x float], [2 x float] }
%struct.Main = type { ptr, ptr, [1024 x i8], i16, i16, i16, i16, i64, [16 x i8], i16, ptr, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, [256 x i8], ptr, ptr }
%struct.ImBuf = type { ptr, ptr, i32, i32, i8, i32, i32, i32, ptr, ptr, [2 x double], i32, i32, i32, i32, ptr, ptr, ptr, float, [20 x ptr], i32, i32, i32, i32, ptr, ptr, i32, [1024 x i8], [1024 x i8], ptr, i32, ptr, i32, i32, ptr, ptr, ptr, ptr, i32, %struct.rcti, %struct.DDSData }
%struct.DDSData = type { i32, i32, ptr, i32 }
%struct.Group = type { %struct.ID, %struct.ListBase, i32, [3 x float] }
%struct.Base = type { ptr, ptr, i32, i32, i32, i16, i16, ptr }
%struct.GroupObject = type { ptr, ptr, ptr, ptr, i16, [6 x i8] }
%struct.PaintBakeNormal = type { [3 x float], float }
%struct.EffectedPoint = type { ptr, ptr, ptr, ptr, float, float, float, float, i32, i32, ptr }
%struct.BVHTreeFromMesh = type { ptr, ptr, ptr, ptr, ptr, ptr, i8, i8, i8, float, ptr, i8 }
%struct.BVHTreeRayHit = type { i32, [3 x float], [3 x float], float, i32 }
%struct.BVHTreeNearest = type { i32, [3 x float], [3 x float], float, i32 }
%struct.KDTreeNearest = type { i32, float, [3 x float] }
%struct.ParticleSystem = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.ListBase, %struct.ListBase, ptr, ptr, ptr, ptr, ptr, ptr, %struct.ListBase, [64 x i8], [4 x [4 x float]], float, float, float, i32, i32, i32, i32, i32, i32, i32, i32, i16, i16, i16, i16, [3 x [64 x i8]], [12 x i16], i16, i16, ptr, ptr, %struct.ListBase, ptr, ptr, i32, i32, ptr, ptr, ptr, float, float }
%struct.ParticleSettings = type { %struct.ID, ptr, ptr, ptr, ptr, i32, i32, i16, i16, i16, i16, i16, i16, i16, i16, i32, i32, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, float, float, [2 x float], [2 x float], float, float, float, i16, i16, float, float, float, float, float, float, float, float, float, float, float, float, [1 x float], i32, i32, i32, i32, i16, [3 x i16], float, float, float, float, float, float, float, [3 x float], float, float, float, float, float, float, float, [3 x float], float, float, float, float, i32, i32, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, [2 x float], float, float, i32, i32, [18 x ptr], ptr, %struct.ListBase, ptr, ptr, ptr, ptr, ptr, ptr, i16, [3 x i16] }
%struct.ParticleData = type { %struct.ParticleKey, %struct.ParticleKey, ptr, ptr, ptr, i32, float, float, float, i32, i32, [4 x float], float, float, float, i32, i32, i16, i16 }
%struct.ParticleKey = type { [3 x float], [3 x float], [4 x float], [3 x float], float }
%struct.BakeAdjPoint = type { [3 x float], float }
%struct.EffectorWeights = type { ptr, [14 x float], float, i16, [3 x i16], i32 }
%struct.bConstraintTypeInfo = type { i16, i16, [32 x i8], [32 x i8], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.bConstraintTarget = type { ptr, ptr, ptr, [64 x i8], [4 x [4 x float]], i16, i16, i16, i16 }
%struct.Curve = type { %struct.ID, ptr, ptr, %struct.ListBase, ptr, ptr, ptr, ptr, ptr, ptr, ptr, [3 x float], [3 x float], [3 x float], i16, i16, i16, i16, float, float, i32, i16, i16, i32, float, float, float, i16, i16, i16, i16, i32, i32, [4 x i8], i16, i8, i8, float, float, float, float, float, float, float, float, float, float, i32, i32, i32, i32, i32, ptr, ptr, [64 x i8], ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, %struct.CharInfo, float, float, float, i8, i8, [2 x i8] }
%struct.CharInfo = type { i16, i16, i8, i8, i16 }
%struct.bArmature = type { %struct.ID, ptr, %struct.ListBase, %struct.ListBase, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i16, i16, i32, i32, i32, i16, i16, i16, i16, i32, i32, i32, i32, i32, i32 }

@.str.1 = private unnamed_addr constant [9 x i8] c"paintmap\00", align 1
@.str.2 = private unnamed_addr constant [7 x i8] c"wetmap\00", align 1
@.str.3 = private unnamed_addr constant [9 x i8] c"displace\00", align 1
@.str.4 = private unnamed_addr constant [7 x i8] c"weight\00", align 1
@.str.5 = private unnamed_addr constant [5 x i8] c"wave\00", align 1
@MEM_freeN = external local_unnamed_addr global ptr, align 8
@MEM_callocN = external local_unnamed_addr global ptr, align 8
@.str.6 = private unnamed_addr constant [20 x i8] c"DynamicPaintSurface\00", align 1
@.str.7 = private unnamed_addr constant [19 x i8] c"cache_dynamicpaint\00", align 1
@.str.8 = private unnamed_addr constant [8 x i8] c"Surface\00", align 1
@.str.9 = private unnamed_addr constant [20 x i8] c"DynamicPaint Canvas\00", align 1
@.str.10 = private unnamed_addr constant [19 x i8] c"DynamicPaint Paint\00", align 1
@MEM_dupallocN = external local_unnamed_addr global ptr, align 8
@.str.11 = private unnamed_addr constant [17 x i8] c"PaintSurfaceData\00", align 1
@__const.dynamicPaint_createUVSurface.jitter5sample = private unnamed_addr constant [10 x float] [float 0.000000e+00, float 0.000000e+00, float 0xBFC99999A0000000, float 0xBFD99999A0000000, float 0x3FC99999A0000000, float 0x3FD99999A0000000, float 0x3FD99999A0000000, float 0xBFC99999A0000000, float 0xBFD99999A0000000, float 0x3FD3333340000000], align 16
@.str.12 = private unnamed_addr constant [24 x i8] c"Canvas mesh not updated\00", align 1
@.str.13 = private unnamed_addr constant [41 x i8] c"Cannot bake non-'image sequence' formats\00", align 1
@.str.14 = private unnamed_addr constant [21 x i8] c"No UV data on canvas\00", align 1
@.str.15 = private unnamed_addr constant [19 x i8] c"Invalid resolution\00", align 1
@.str.16 = private unnamed_addr constant [66 x i8] c"DynamicPaint: Preparing UV surface of %ix%i pixels and %i faces.\0A\00", align 1
@.str.17 = private unnamed_addr constant [23 x i8] c"Not enough free memory\00", align 1
@.str.18 = private unnamed_addr constant [18 x i8] c"Temp PaintUVPoint\00", align 1
@.str.19 = private unnamed_addr constant [22 x i8] c"Temp UV Final Indexes\00", align 1
@MEM_mallocN = external local_unnamed_addr global ptr, align 8
@.str.20 = private unnamed_addr constant [14 x i8] c"Temp bWeights\00", align 1
@.str.21 = private unnamed_addr constant [15 x i8] c"MPCanvasFaceBB\00", align 1
@.str.22 = private unnamed_addr constant [17 x i8] c"ImgSeqFormatData\00", align 1
@.str.23 = private unnamed_addr constant [13 x i8] c"PaintUVPoint\00", align 1
@.str.24 = private unnamed_addr constant [35 x i8] c"Image save failed: invalid surface\00", align 1
@G = external local_unnamed_addr global %struct.Global, align 8
@.str.25 = private unnamed_addr constant [42 x i8] c"Image save failed: not enough free memory\00", align 1
@.str.26 = private unnamed_addr constant [25 x i8] c"DynamicPaintSurface Data\00", align 1
@.str.27 = private unnamed_addr constant [30 x i8] c"DynamicPaintSurface DepthData\00", align 1
@.str.28 = private unnamed_addr constant [31 x i8] c"DynamicPaintSurface WeightData\00", align 1
@.str.29 = private unnamed_addr constant [29 x i8] c"DynamicPaintSurface WaveData\00", align 1
@.str.30 = private unnamed_addr constant [17 x i8] c"Surface Adj Data\00", align 1
@.str.31 = private unnamed_addr constant [18 x i8] c"Surface Adj Index\00", align 1
@.str.32 = private unnamed_addr constant [19 x i8] c"Surface Adj Counts\00", align 1
@.str.33 = private unnamed_addr constant [14 x i8] c"Temp Adj Data\00", align 1
@.str.34 = private unnamed_addr constant [20 x i8] c"Surface Adj Targets\00", align 1
@.str.35 = private unnamed_addr constant [18 x i8] c"Surface Adj Flags\00", align 1
@.str.36 = private unnamed_addr constant [17 x i8] c"Temp paint color\00", align 1
@neighX = internal unnamed_addr constant [8 x i32] [i32 1, i32 1, i32 0, i32 -1, i32 -1, i32 -1, i32 0, i32 1], align 16
@neighY = internal unnamed_addr constant [8 x i32] [i32 0, i32 1, i32 1, i32 1, i32 0, i32 -1, i32 -1, i32 -1], align 16
@.str.37 = private unnamed_addr constant [39 x i8] c"Dynamic Paint transformed canvas verts\00", align 1
@.str.38 = private unnamed_addr constant [24 x i8] c"Dynamic Paint bake data\00", align 1
@.str.39 = private unnamed_addr constant [24 x i8] c"Dynamic Paint step data\00", align 1
@.str.40 = private unnamed_addr constant [26 x i8] c"Dynamic Paint bData s_pos\00", align 1
@.str.41 = private unnamed_addr constant [26 x i8] c"Dynamic Paint bData s_num\00", align 1
@.str.42 = private unnamed_addr constant [27 x i8] c"Dynamic Paint point coords\00", align 1
@.str.43 = private unnamed_addr constant [31 x i8] c"Dynamic Paint bData prev_verts\00", align 1
@.str.44 = private unnamed_addr constant [23 x i8] c"Dynamic Paint velocity\00", align 1
@.str.45 = private unnamed_addr constant [28 x i8] c"Dynamic Paint prev velocity\00", align 1
@.str.46 = private unnamed_addr constant [12 x i8] c"Grid Bounds\00", align 1
@.str.47 = private unnamed_addr constant [13 x i8] c"Surface Grid\00", align 1
@.str.48 = private unnamed_addr constant [20 x i8] c"Surface Grid Bounds\00", align 1
@.str.49 = private unnamed_addr constant [22 x i8] c"Surface Grid Position\00", align 1
@.str.50 = private unnamed_addr constant [20 x i8] c"Surface Grid Points\00", align 1
@.str.51 = private unnamed_addr constant [25 x i8] c"Temp Surface Grid Points\00", align 1
@.str.52 = private unnamed_addr constant [24 x i8] c"Surface Grid Target Ids\00", align 1
@.str.53 = private unnamed_addr constant [29 x i8] c"Temp Surface Grid Target Ids\00", align 1
@MEM_reallocN_id = external local_unnamed_addr global ptr, align 8
@__func__.surfaceGenerateGrid = private unnamed_addr constant [20 x i8] c"surfaceGenerateGrid\00", align 1
@.str.54 = private unnamed_addr constant [16 x i8] c"PaintEffectBake\00", align 1
@.str.55 = private unnamed_addr constant [29 x i8] c"Dynamic Paint brush velocity\00", align 1
@.str.56 = private unnamed_addr constant [21 x i8] c"PaintSurfaceDataCopy\00", align 1
@.str.57 = private unnamed_addr constant [15 x i8] c"BrushMaterials\00", align 1
@gaussianFactors = internal unnamed_addr constant [5 x float] [float 0x3FEFE62FE0000000, float 0x3FE3139EA0000000, float 0x3FE3139EA0000000, float 0x3FE3139EA0000000, float 0x3FE0C5C360000000], align 16
@.str.59 = private unnamed_addr constant [41 x i8] c"Temp previous points for wave simulation\00", align 1
@.str.60 = private unnamed_addr constant [18 x i8] c"PaintEffectForces\00", align 1
@str = private unnamed_addr constant [36 x i8] c"Warning: Invalid particle(s) found!\00", align 1

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local zeroext i8 @dynamicPaint_surfaceHasColorPreview(ptr nocapture noundef readonly %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.DynamicPaintSurface, ptr %0, i64 0, i32 10
  %3 = load i16, ptr %2, align 4, !tbaa !34
  switch i16 %3, label %11 [
    i16 2, label %12
    i16 1, label %4
  ]

4:                                                ; preds = %1
  %5 = getelementptr inbounds %struct.DynamicPaintSurface, ptr %0, i64 0, i32 11
  %6 = load i16, ptr %5, align 2, !tbaa !43
  %7 = add i16 %6, -1
  %8 = and i16 %7, -3
  %9 = icmp ne i16 %8, 0
  %10 = zext i1 %9 to i8
  br label %12

11:                                               ; preds = %1
  br label %12

12:                                               ; preds = %4, %1, %11
  %13 = phi i8 [ 1, %11 ], [ 0, %1 ], [ %10, %4 ]
  ret i8 %13
}

; Function Attrs: nofree norecurse nosync nounwind memory(read, inaccessiblemem: none) uwtable
define dso_local ptr @get_activeSurface(ptr nocapture noundef readonly %0) local_unnamed_addr #1 {
  %2 = getelementptr inbounds %struct.DynamicPaintCanvasSettings, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !44
  %4 = icmp eq ptr %3, null
  br i1 %4, label %17, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.DynamicPaintCanvasSettings, ptr %0, i64 0, i32 3
  %7 = load i16, ptr %6, align 8, !tbaa !45
  %8 = sext i16 %7 to i32
  br label %13

9:                                                ; preds = %13
  %10 = add nuw nsw i32 %15, 1
  %11 = load ptr, ptr %14, align 8, !tbaa !44
  %12 = icmp eq ptr %11, null
  br i1 %12, label %17, label %13, !llvm.loop !47

13:                                               ; preds = %5, %9
  %14 = phi ptr [ %3, %5 ], [ %11, %9 ]
  %15 = phi i32 [ 0, %5 ], [ %10, %9 ]
  %16 = icmp eq i32 %15, %8
  br i1 %16, label %17, label %9

17:                                               ; preds = %13, %9, %1
  %18 = phi ptr [ null, %1 ], [ %14, %13 ], [ null, %9 ]
  ret ptr %18
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @dynamicPaint_resetPreview(ptr nocapture noundef readonly %0) local_unnamed_addr #3 {
  %2 = getelementptr inbounds %struct.DynamicPaintCanvasSettings, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !44
  %4 = icmp eq ptr %3, null
  br i1 %4, label %35, label %5

5:                                                ; preds = %1, %31
  %6 = phi ptr [ %33, %31 ], [ %3, %1 ]
  %7 = phi i8 [ %32, %31 ], [ 0, %1 ]
  %8 = icmp eq i8 %7, 0
  br i1 %8, label %9, label %27

9:                                                ; preds = %5
  %10 = getelementptr inbounds %struct.DynamicPaintSurface, ptr %6, i64 0, i32 10
  %11 = load i16, ptr %10, align 4, !tbaa !34
  switch i16 %11, label %19 [
    i16 2, label %20
    i16 1, label %12
  ]

12:                                               ; preds = %9
  %13 = getelementptr inbounds %struct.DynamicPaintSurface, ptr %6, i64 0, i32 11
  %14 = load i16, ptr %13, align 2, !tbaa !43
  %15 = add i16 %14, -1
  %16 = and i16 %15, -3
  %17 = icmp ne i16 %16, 0
  %18 = zext i1 %17 to i8
  br label %20

19:                                               ; preds = %9
  br label %20

20:                                               ; preds = %9, %12, %19
  %21 = phi i8 [ 1, %19 ], [ 0, %9 ], [ %18, %12 ]
  %22 = icmp eq i8 %21, 0
  br i1 %22, label %27, label %23

23:                                               ; preds = %20
  %24 = getelementptr inbounds %struct.DynamicPaintSurface, ptr %6, i64 0, i32 18
  %25 = load i32, ptr %24, align 4, !tbaa !50
  %26 = or i32 %25, 64
  store i32 %26, ptr %24, align 4, !tbaa !50
  br label %31

27:                                               ; preds = %20, %5
  %28 = getelementptr inbounds %struct.DynamicPaintSurface, ptr %6, i64 0, i32 18
  %29 = load i32, ptr %28, align 4, !tbaa !50
  %30 = and i32 %29, -65
  store i32 %30, ptr %28, align 4, !tbaa !50
  br label %31

31:                                               ; preds = %23, %27
  %32 = phi i8 [ %7, %27 ], [ 1, %23 ]
  %33 = load ptr, ptr %6, align 8, !tbaa !44
  %34 = icmp eq ptr %33, null
  br i1 %34, label %35, label %5, !llvm.loop !51

35:                                               ; preds = %31, %1
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local zeroext i8 @dynamicPaint_outputLayerExists(ptr noundef %0, ptr noundef %1, i32 noundef %2) local_unnamed_addr #4 {
  switch i32 %2, label %26 [
    i32 0, label %4
    i32 1, label %6
  ]

4:                                                ; preds = %3
  %5 = getelementptr inbounds %struct.DynamicPaintSurface, ptr %0, i64 0, i32 48
  br label %8

6:                                                ; preds = %3
  %7 = getelementptr inbounds %struct.DynamicPaintSurface, ptr %0, i64 0, i32 49
  br label %8

8:                                                ; preds = %6, %4
  %9 = phi ptr [ %5, %4 ], [ %7, %6 ]
  %10 = getelementptr inbounds %struct.DynamicPaintSurface, ptr %0, i64 0, i32 10
  %11 = load i16, ptr %10, align 4, !tbaa !34
  %12 = icmp eq i16 %11, 1
  br i1 %12, label %13, label %26

13:                                               ; preds = %8
  %14 = getelementptr inbounds %struct.DynamicPaintSurface, ptr %0, i64 0, i32 11
  %15 = load i16, ptr %14, align 2, !tbaa !43
  switch i16 %15, label %26 [
    i16 0, label %16
    i16 2, label %22
  ]

16:                                               ; preds = %13
  %17 = getelementptr inbounds %struct.Object, ptr %1, i64 0, i32 19
  %18 = load ptr, ptr %17, align 8, !tbaa !52
  %19 = getelementptr inbounds %struct.Mesh, ptr %18, i64 0, i32 23
  %20 = tail call i32 @CustomData_get_named_layer_index(ptr noundef nonnull %19, i32 noundef 6, ptr noundef nonnull %9) #18
  %21 = icmp ne i32 %20, -1
  br label %26

22:                                               ; preds = %13
  %23 = getelementptr inbounds %struct.DynamicPaintSurface, ptr %0, i64 0, i32 48
  %24 = tail call i32 @defgroup_name_index(ptr noundef %1, ptr noundef nonnull %23) #18
  %25 = icmp ne i32 %24, -1
  br label %26

26:                                               ; preds = %8, %13, %3, %22, %16
  %27 = phi i1 [ %21, %16 ], [ %25, %22 ], [ false, %3 ], [ false, %13 ], [ false, %8 ]
  %28 = zext i1 %27 to i8
  ret i8 %28
}

declare i32 @CustomData_get_named_layer_index(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #5

declare i32 @defgroup_name_index(ptr noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: nounwind uwtable
define dso_local void @dynamicPaintSurface_setUniqueName(ptr noundef %0, ptr noundef %1) local_unnamed_addr #4 {
  %3 = alloca [64 x i8], align 16
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %3) #18
  %4 = call ptr @BLI_strncpy(ptr noundef nonnull %3, ptr noundef %1, i64 noundef 64) #18
  %5 = getelementptr inbounds %struct.DynamicPaintSurface, ptr %0, i64 0, i32 9
  %6 = call zeroext i8 @BLI_uniquename_cb(ptr noundef nonnull @surface_duplicateNameExists, ptr noundef %0, ptr noundef nonnull %3, i8 noundef zeroext 46, ptr noundef nonnull %5, i32 noundef 64) #18
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %3) #18
  ret void
}

declare ptr @BLI_strncpy(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #5

declare zeroext i8 @BLI_uniquename_cb(ptr noundef, ptr noundef, ptr noundef, i8 noundef zeroext, ptr noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: nofree nounwind memory(read, inaccessiblemem: none) uwtable
define internal noundef zeroext i8 @surface_duplicateNameExists(ptr noundef readonly %0, ptr nocapture noundef readonly %1) #6 {
  %3 = getelementptr inbounds %struct.DynamicPaintSurface, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !57
  %5 = getelementptr inbounds %struct.DynamicPaintCanvasSettings, ptr %4, i64 0, i32 2
  %6 = load ptr, ptr %5, align 8, !tbaa !44
  %7 = icmp eq ptr %6, null
  br i1 %7, label %18, label %8

8:                                                ; preds = %2, %15
  %9 = phi ptr [ %16, %15 ], [ %6, %2 ]
  %10 = icmp eq ptr %9, %0
  br i1 %10, label %15, label %11

11:                                               ; preds = %8
  %12 = getelementptr inbounds %struct.DynamicPaintSurface, ptr %9, i64 0, i32 9
  %13 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %1, ptr noundef nonnull dereferenceable(1) %12) #19
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %18, label %15

15:                                               ; preds = %8, %11
  %16 = load ptr, ptr %9, align 8, !tbaa !44
  %17 = icmp eq ptr %16, null
  br i1 %17, label %18, label %8, !llvm.loop !58

18:                                               ; preds = %11, %15, %2
  %19 = phi i8 [ 0, %2 ], [ 1, %11 ], [ 0, %15 ]
  ret i8 %19
}

; Function Attrs: nounwind uwtable
define dso_local void @dynamicPaintSurface_updateType(ptr noundef %0) local_unnamed_addr #4 {
  %2 = alloca [64 x i8], align 16
  %3 = alloca [64 x i8], align 16
  %4 = getelementptr inbounds %struct.DynamicPaintSurface, ptr %0, i64 0, i32 10
  %5 = load i16, ptr %4, align 4, !tbaa !34
  %6 = icmp eq i16 %5, 2
  %7 = getelementptr inbounds %struct.DynamicPaintSurface, ptr %0, i64 0, i32 48
  %8 = getelementptr inbounds %struct.DynamicPaintSurface, ptr %0, i64 0, i32 49
  %9 = getelementptr inbounds %struct.DynamicPaintSurface, ptr %0, i64 0, i32 18
  %10 = getelementptr inbounds %struct.DynamicPaintSurface, ptr %0, i64 0, i32 31
  br i1 %6, label %11, label %14

11:                                               ; preds = %1
  store i8 0, ptr %7, align 8, !tbaa !59
  store i8 0, ptr %8, align 8, !tbaa !59
  %12 = load i32, ptr %9, align 4, !tbaa !50
  %13 = or i32 %12, 2
  br label %18

14:                                               ; preds = %1
  store i32 6254692, ptr %7, align 1
  %15 = tail call ptr @BLI_strncpy(ptr noundef nonnull %8, ptr noundef nonnull %7, i64 noundef 64) #18
  %16 = load i32, ptr %9, align 4, !tbaa !50
  %17 = and i32 %16, -3
  br label %18

18:                                               ; preds = %14, %11
  %19 = phi i32 [ %17, %14 ], [ %13, %11 ]
  %20 = phi float [ 0.000000e+00, %14 ], [ 1.000000e+00, %11 ]
  store i32 %19, ptr %9, align 4, !tbaa !50
  store float %20, ptr %10, align 4, !tbaa !60
  %21 = getelementptr inbounds %struct.DynamicPaintSurface, ptr %0, i64 0, i32 11
  %22 = load i16, ptr %21, align 2, !tbaa !43
  switch i16 %22, label %44 [
    i16 0, label %23
    i16 1, label %32
    i16 2, label %36
    i16 3, label %40
  ]

23:                                               ; preds = %18
  %24 = getelementptr inbounds %struct.DynamicPaintSurface, ptr %0, i64 0, i32 48
  %25 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %24)
  %26 = getelementptr inbounds i8, ptr %24, i64 %25
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(9) %26, ptr noundef nonnull align 1 dereferenceable(9) @.str.1, i64 9, i1 false)
  %27 = getelementptr inbounds %struct.DynamicPaintSurface, ptr %0, i64 0, i32 49
  %28 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %27)
  %29 = getelementptr inbounds i8, ptr %27, i64 %28
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(7) %29, ptr noundef nonnull align 1 dereferenceable(7) @.str.2, i64 7, i1 false)
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %3) #18
  %30 = call ptr @BLI_strncpy(ptr noundef nonnull %3, ptr noundef nonnull %27, i64 noundef 64) #18
  %31 = call zeroext i8 @BLI_uniquename_cb(ptr noundef nonnull @surface_duplicateOutputExists, ptr noundef %0, ptr noundef nonnull %3, i8 noundef zeroext 46, ptr noundef nonnull %27, i32 noundef 64) #18
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %3) #18
  br label %44

32:                                               ; preds = %18
  %33 = getelementptr inbounds %struct.DynamicPaintSurface, ptr %0, i64 0, i32 48
  %34 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %33)
  %35 = getelementptr inbounds i8, ptr %33, i64 %34
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(9) %35, ptr noundef nonnull align 1 dereferenceable(9) @.str.3, i64 9, i1 false)
  br label %44

36:                                               ; preds = %18
  %37 = getelementptr inbounds %struct.DynamicPaintSurface, ptr %0, i64 0, i32 48
  %38 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %37)
  %39 = getelementptr inbounds i8, ptr %37, i64 %38
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(7) %39, ptr noundef nonnull align 1 dereferenceable(7) @.str.4, i64 7, i1 false)
  br label %44

40:                                               ; preds = %18
  %41 = getelementptr inbounds %struct.DynamicPaintSurface, ptr %0, i64 0, i32 48
  %42 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %41)
  %43 = getelementptr inbounds i8, ptr %41, i64 %42
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(5) %43, ptr noundef nonnull align 1 dereferenceable(5) @.str.5, i64 5, i1 false)
  br label %44

44:                                               ; preds = %18, %32, %40, %36, %23
  %45 = getelementptr inbounds %struct.DynamicPaintSurface, ptr %0, i64 0, i32 48
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %2) #18
  %46 = call ptr @BLI_strncpy(ptr noundef nonnull %2, ptr noundef nonnull %45, i64 noundef 64) #18
  %47 = call zeroext i8 @BLI_uniquename_cb(ptr noundef nonnull @surface_duplicateOutputExists, ptr noundef %0, ptr noundef nonnull %2, i8 noundef zeroext 46, ptr noundef nonnull %45, i32 noundef 64) #18
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %2) #18
  %48 = load i16, ptr %4, align 4, !tbaa !34
  switch i16 %48, label %54 [
    i16 2, label %70
    i16 1, label %49
  ]

49:                                               ; preds = %44
  %50 = load i16, ptr %21, align 2, !tbaa !43
  %51 = add i16 %50, -1
  %52 = and i16 %51, -3
  %53 = icmp eq i16 %52, 0
  br i1 %53, label %70, label %54

54:                                               ; preds = %44, %49
  %55 = getelementptr inbounds %struct.DynamicPaintSurface, ptr %0, i64 0, i32 2
  %56 = load ptr, ptr %55, align 8, !tbaa !57
  %57 = getelementptr inbounds %struct.DynamicPaintCanvasSettings, ptr %56, i64 0, i32 2
  %58 = load ptr, ptr %57, align 8, !tbaa !44
  %59 = icmp eq ptr %58, null
  br i1 %59, label %106, label %60

60:                                               ; preds = %54, %60
  %61 = phi ptr [ %68, %60 ], [ %58, %54 ]
  %62 = icmp eq ptr %61, %0
  %63 = getelementptr inbounds %struct.DynamicPaintSurface, ptr %61, i64 0, i32 18
  %64 = load i32, ptr %63, align 4, !tbaa !50
  %65 = and i32 %64, -65
  %66 = select i1 %62, i32 64, i32 0
  %67 = or disjoint i32 %65, %66
  store i32 %67, ptr %63, align 4, !tbaa !50
  %68 = load ptr, ptr %61, align 8, !tbaa !44
  %69 = icmp eq ptr %68, null
  br i1 %69, label %106, label %60, !llvm.loop !61

70:                                               ; preds = %44, %49
  %71 = getelementptr inbounds %struct.DynamicPaintSurface, ptr %0, i64 0, i32 2
  %72 = load ptr, ptr %71, align 8, !tbaa !57
  %73 = getelementptr inbounds %struct.DynamicPaintCanvasSettings, ptr %72, i64 0, i32 2
  %74 = load ptr, ptr %73, align 8, !tbaa !44
  %75 = icmp eq ptr %74, null
  br i1 %75, label %106, label %76

76:                                               ; preds = %70, %102
  %77 = phi ptr [ %104, %102 ], [ %74, %70 ]
  %78 = phi i8 [ %103, %102 ], [ 0, %70 ]
  %79 = icmp eq i8 %78, 0
  br i1 %79, label %80, label %98

80:                                               ; preds = %76
  %81 = getelementptr inbounds %struct.DynamicPaintSurface, ptr %77, i64 0, i32 10
  %82 = load i16, ptr %81, align 4, !tbaa !34
  switch i16 %82, label %90 [
    i16 2, label %91
    i16 1, label %83
  ]

83:                                               ; preds = %80
  %84 = getelementptr inbounds %struct.DynamicPaintSurface, ptr %77, i64 0, i32 11
  %85 = load i16, ptr %84, align 2, !tbaa !43
  %86 = add i16 %85, -1
  %87 = and i16 %86, -3
  %88 = icmp ne i16 %87, 0
  %89 = zext i1 %88 to i8
  br label %91

90:                                               ; preds = %80
  br label %91

91:                                               ; preds = %90, %83, %80
  %92 = phi i8 [ 1, %90 ], [ 0, %80 ], [ %89, %83 ]
  %93 = icmp eq i8 %92, 0
  br i1 %93, label %98, label %94

94:                                               ; preds = %91
  %95 = getelementptr inbounds %struct.DynamicPaintSurface, ptr %77, i64 0, i32 18
  %96 = load i32, ptr %95, align 4, !tbaa !50
  %97 = or i32 %96, 64
  store i32 %97, ptr %95, align 4, !tbaa !50
  br label %102

98:                                               ; preds = %91, %76
  %99 = getelementptr inbounds %struct.DynamicPaintSurface, ptr %77, i64 0, i32 18
  %100 = load i32, ptr %99, align 4, !tbaa !50
  %101 = and i32 %100, -65
  store i32 %101, ptr %99, align 4, !tbaa !50
  br label %102

102:                                              ; preds = %98, %94
  %103 = phi i8 [ %78, %98 ], [ 1, %94 ]
  %104 = load ptr, ptr %77, align 8, !tbaa !44
  %105 = icmp eq ptr %104, null
  br i1 %105, label %106, label %76, !llvm.loop !51

106:                                              ; preds = %102, %60, %54, %70
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @dynamicPaint_freeBrush(ptr nocapture noundef %0) local_unnamed_addr #4 {
  %2 = getelementptr inbounds %struct.DynamicPaintModifierData, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !62
  %4 = icmp eq ptr %3, null
  br i1 %4, label %32, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.DynamicPaintBrushSettings, ptr %3, i64 0, i32 1
  %7 = load ptr, ptr %6, align 8, !tbaa !65
  %8 = icmp eq ptr %7, null
  br i1 %8, label %12, label %9

9:                                                ; preds = %5
  %10 = getelementptr inbounds %struct.DerivedMesh, ptr %7, i64 0, i32 95
  %11 = load ptr, ptr %10, align 8, !tbaa !67
  tail call void %11(ptr noundef nonnull %7) #18
  br label %12

12:                                               ; preds = %9, %5
  %13 = load ptr, ptr %2, align 8, !tbaa !62
  %14 = getelementptr inbounds %struct.DynamicPaintBrushSettings, ptr %13, i64 0, i32 1
  store ptr null, ptr %14, align 8, !tbaa !65
  %15 = getelementptr inbounds %struct.DynamicPaintBrushSettings, ptr %13, i64 0, i32 14
  %16 = load ptr, ptr %15, align 8, !tbaa !70
  %17 = icmp eq ptr %16, null
  br i1 %17, label %20, label %18

18:                                               ; preds = %12
  %19 = load ptr, ptr @MEM_freeN, align 8, !tbaa !44
  tail call void %19(ptr noundef nonnull %16) #18
  br label %20

20:                                               ; preds = %18, %12
  %21 = load ptr, ptr %2, align 8, !tbaa !62
  %22 = getelementptr inbounds %struct.DynamicPaintBrushSettings, ptr %21, i64 0, i32 14
  store ptr null, ptr %22, align 8, !tbaa !70
  %23 = getelementptr inbounds %struct.DynamicPaintBrushSettings, ptr %21, i64 0, i32 15
  %24 = load ptr, ptr %23, align 8, !tbaa !71
  %25 = icmp eq ptr %24, null
  br i1 %25, label %28, label %26

26:                                               ; preds = %20
  %27 = load ptr, ptr @MEM_freeN, align 8, !tbaa !44
  tail call void %27(ptr noundef nonnull %24) #18
  br label %28

28:                                               ; preds = %26, %20
  %29 = load ptr, ptr %2, align 8, !tbaa !62
  %30 = getelementptr inbounds %struct.DynamicPaintBrushSettings, ptr %29, i64 0, i32 15
  store ptr null, ptr %30, align 8, !tbaa !71
  %31 = load ptr, ptr @MEM_freeN, align 8, !tbaa !44
  tail call void %31(ptr noundef %29) #18
  store ptr null, ptr %2, align 8, !tbaa !62
  br label %32

32:                                               ; preds = %28, %1
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @dynamicPaint_freeSurfaceData(ptr nocapture noundef %0) local_unnamed_addr #4 {
  %2 = getelementptr inbounds %struct.DynamicPaintSurface, ptr %0, i64 0, i32 3
  %3 = load ptr, ptr %2, align 8, !tbaa !72
  %4 = icmp eq ptr %3, null
  br i1 %4, label %68, label %5

5:                                                ; preds = %1
  %6 = load ptr, ptr %3, align 8, !tbaa !73
  %7 = icmp eq ptr %6, null
  br i1 %7, label %26, label %8

8:                                                ; preds = %5
  %9 = getelementptr inbounds %struct.DynamicPaintSurface, ptr %0, i64 0, i32 10
  %10 = load i16, ptr %9, align 4, !tbaa !34
  %11 = icmp eq i16 %10, 2
  br i1 %11, label %12, label %23

12:                                               ; preds = %8
  %13 = load ptr, ptr %6, align 8, !tbaa !75
  %14 = icmp eq ptr %13, null
  br i1 %14, label %17, label %15

15:                                               ; preds = %12
  %16 = load ptr, ptr @MEM_freeN, align 8, !tbaa !44
  tail call void %16(ptr noundef nonnull %13) #18
  br label %17

17:                                               ; preds = %15, %12
  %18 = getelementptr inbounds %struct.ImgSeqFormatData, ptr %6, i64 0, i32 1
  %19 = load ptr, ptr %18, align 8, !tbaa !77
  %20 = icmp eq ptr %19, null
  br i1 %20, label %23, label %21

21:                                               ; preds = %17
  %22 = load ptr, ptr @MEM_freeN, align 8, !tbaa !44
  tail call void %22(ptr noundef nonnull %19) #18
  br label %23

23:                                               ; preds = %17, %21, %8
  %24 = load ptr, ptr @MEM_freeN, align 8, !tbaa !44
  %25 = load ptr, ptr %3, align 8, !tbaa !73
  tail call void %24(ptr noundef %25) #18
  br label %26

26:                                               ; preds = %23, %5
  %27 = getelementptr inbounds %struct.PaintSurfaceData, ptr %3, i64 0, i32 1
  %28 = load ptr, ptr %27, align 8, !tbaa !78
  %29 = icmp eq ptr %28, null
  br i1 %29, label %32, label %30

30:                                               ; preds = %26
  %31 = load ptr, ptr @MEM_freeN, align 8, !tbaa !44
  tail call void %31(ptr noundef nonnull %28) #18
  br label %32

32:                                               ; preds = %30, %26
  %33 = getelementptr inbounds %struct.PaintSurfaceData, ptr %3, i64 0, i32 2
  %34 = load ptr, ptr %33, align 8, !tbaa !79
  %35 = icmp eq ptr %34, null
  br i1 %35, label %65, label %36

36:                                               ; preds = %32
  %37 = getelementptr inbounds %struct.PaintAdjData, ptr %34, i64 0, i32 1
  %38 = load ptr, ptr %37, align 8, !tbaa !80
  %39 = icmp eq ptr %38, null
  br i1 %39, label %42, label %40

40:                                               ; preds = %36
  %41 = load ptr, ptr @MEM_freeN, align 8, !tbaa !44
  tail call void %41(ptr noundef nonnull %38) #18
  br label %42

42:                                               ; preds = %40, %36
  %43 = load ptr, ptr %33, align 8, !tbaa !79
  %44 = getelementptr inbounds %struct.PaintAdjData, ptr %43, i64 0, i32 2
  %45 = load ptr, ptr %44, align 8, !tbaa !82
  %46 = icmp eq ptr %45, null
  br i1 %46, label %49, label %47

47:                                               ; preds = %42
  %48 = load ptr, ptr @MEM_freeN, align 8, !tbaa !44
  tail call void %48(ptr noundef nonnull %45) #18
  br label %49

49:                                               ; preds = %47, %42
  %50 = load ptr, ptr %33, align 8, !tbaa !79
  %51 = load ptr, ptr %50, align 8, !tbaa !83
  %52 = icmp eq ptr %51, null
  br i1 %52, label %55, label %53

53:                                               ; preds = %49
  %54 = load ptr, ptr @MEM_freeN, align 8, !tbaa !44
  tail call void %54(ptr noundef nonnull %51) #18
  br label %55

55:                                               ; preds = %53, %49
  %56 = load ptr, ptr %33, align 8, !tbaa !79
  %57 = getelementptr inbounds %struct.PaintAdjData, ptr %56, i64 0, i32 3
  %58 = load ptr, ptr %57, align 8, !tbaa !84
  %59 = icmp eq ptr %58, null
  br i1 %59, label %62, label %60

60:                                               ; preds = %55
  %61 = load ptr, ptr @MEM_freeN, align 8, !tbaa !44
  tail call void %61(ptr noundef nonnull %58) #18
  br label %62

62:                                               ; preds = %60, %55
  %63 = load ptr, ptr @MEM_freeN, align 8, !tbaa !44
  %64 = load ptr, ptr %33, align 8, !tbaa !79
  tail call void %63(ptr noundef %64) #18
  store ptr null, ptr %33, align 8, !tbaa !79
  br label %65

65:                                               ; preds = %32, %62
  tail call fastcc void @free_bakeData(ptr noundef nonnull %3)
  %66 = load ptr, ptr @MEM_freeN, align 8, !tbaa !44
  %67 = load ptr, ptr %2, align 8, !tbaa !72
  tail call void %66(ptr noundef %67) #18
  store ptr null, ptr %2, align 8, !tbaa !72
  br label %68

68:                                               ; preds = %1, %65
  ret void
}

; Function Attrs: nounwind uwtable
define internal fastcc void @free_bakeData(ptr nocapture noundef %0) unnamed_addr #4 {
  %2 = getelementptr inbounds %struct.PaintSurfaceData, ptr %0, i64 0, i32 3
  %3 = load ptr, ptr %2, align 8, !tbaa !85
  %4 = icmp eq ptr %3, null
  br i1 %4, label %89, label %5

5:                                                ; preds = %1
  %6 = load ptr, ptr %3, align 8, !tbaa !86
  %7 = icmp eq ptr %6, null
  br i1 %7, label %10, label %8

8:                                                ; preds = %5
  %9 = load ptr, ptr @MEM_freeN, align 8, !tbaa !44
  tail call void %9(ptr noundef nonnull %6) #18
  br label %10

10:                                               ; preds = %8, %5
  %11 = getelementptr inbounds %struct.PaintBakeData, ptr %3, i64 0, i32 1
  %12 = load ptr, ptr %11, align 8, !tbaa !90
  %13 = icmp eq ptr %12, null
  br i1 %13, label %16, label %14

14:                                               ; preds = %10
  %15 = load ptr, ptr @MEM_freeN, align 8, !tbaa !44
  tail call void %15(ptr noundef nonnull %12) #18
  br label %16

16:                                               ; preds = %14, %10
  %17 = getelementptr inbounds %struct.PaintBakeData, ptr %3, i64 0, i32 2
  %18 = load ptr, ptr %17, align 8, !tbaa !91
  %19 = icmp eq ptr %18, null
  br i1 %19, label %22, label %20

20:                                               ; preds = %16
  %21 = load ptr, ptr @MEM_freeN, align 8, !tbaa !44
  tail call void %21(ptr noundef nonnull %18) #18
  br label %22

22:                                               ; preds = %20, %16
  %23 = getelementptr inbounds %struct.PaintBakeData, ptr %3, i64 0, i32 3
  %24 = load ptr, ptr %23, align 8, !tbaa !92
  %25 = icmp eq ptr %24, null
  br i1 %25, label %28, label %26

26:                                               ; preds = %22
  %27 = load ptr, ptr @MEM_freeN, align 8, !tbaa !44
  tail call void %27(ptr noundef nonnull %24) #18
  br label %28

28:                                               ; preds = %26, %22
  %29 = getelementptr inbounds %struct.PaintBakeData, ptr %3, i64 0, i32 5
  %30 = load ptr, ptr %29, align 8, !tbaa !93
  %31 = icmp eq ptr %30, null
  br i1 %31, label %34, label %32

32:                                               ; preds = %28
  %33 = load ptr, ptr @MEM_freeN, align 8, !tbaa !44
  tail call void %33(ptr noundef nonnull %30) #18
  br label %34

34:                                               ; preds = %32, %28
  %35 = getelementptr inbounds %struct.PaintBakeData, ptr %3, i64 0, i32 7
  %36 = load ptr, ptr %35, align 8, !tbaa !94
  %37 = icmp eq ptr %36, null
  br i1 %37, label %68, label %38

38:                                               ; preds = %34
  %39 = load ptr, ptr %2, align 8, !tbaa !85
  %40 = getelementptr inbounds %struct.PaintBakeData, ptr %39, i64 0, i32 7
  %41 = load ptr, ptr %40, align 8, !tbaa !94
  %42 = getelementptr inbounds %struct.VolumeGrid, ptr %41, i64 0, i32 2
  %43 = load ptr, ptr %42, align 8, !tbaa !95
  %44 = icmp eq ptr %43, null
  br i1 %44, label %47, label %45

45:                                               ; preds = %38
  %46 = load ptr, ptr @MEM_freeN, align 8, !tbaa !44
  tail call void %46(ptr noundef nonnull %43) #18
  br label %47

47:                                               ; preds = %45, %38
  %48 = getelementptr inbounds %struct.VolumeGrid, ptr %41, i64 0, i32 3
  %49 = load ptr, ptr %48, align 8, !tbaa !97
  %50 = icmp eq ptr %49, null
  br i1 %50, label %53, label %51

51:                                               ; preds = %47
  %52 = load ptr, ptr @MEM_freeN, align 8, !tbaa !44
  tail call void %52(ptr noundef nonnull %49) #18
  br label %53

53:                                               ; preds = %51, %47
  %54 = getelementptr inbounds %struct.VolumeGrid, ptr %41, i64 0, i32 4
  %55 = load ptr, ptr %54, align 8, !tbaa !98
  %56 = icmp eq ptr %55, null
  br i1 %56, label %59, label %57

57:                                               ; preds = %53
  %58 = load ptr, ptr @MEM_freeN, align 8, !tbaa !44
  tail call void %58(ptr noundef nonnull %55) #18
  br label %59

59:                                               ; preds = %57, %53
  %60 = getelementptr inbounds %struct.VolumeGrid, ptr %41, i64 0, i32 5
  %61 = load ptr, ptr %60, align 8, !tbaa !99
  %62 = icmp eq ptr %61, null
  br i1 %62, label %65, label %63

63:                                               ; preds = %59
  %64 = load ptr, ptr @MEM_freeN, align 8, !tbaa !44
  tail call void %64(ptr noundef nonnull %61) #18
  br label %65

65:                                               ; preds = %59, %63
  %66 = load ptr, ptr @MEM_freeN, align 8, !tbaa !44
  %67 = load ptr, ptr %40, align 8, !tbaa !94
  tail call void %66(ptr noundef %67) #18
  store ptr null, ptr %40, align 8, !tbaa !94
  br label %68

68:                                               ; preds = %65, %34
  %69 = getelementptr inbounds %struct.PaintBakeData, ptr %3, i64 0, i32 11
  %70 = load ptr, ptr %69, align 8, !tbaa !100
  %71 = icmp eq ptr %70, null
  br i1 %71, label %74, label %72

72:                                               ; preds = %68
  %73 = load ptr, ptr @MEM_freeN, align 8, !tbaa !44
  tail call void %73(ptr noundef nonnull %70) #18
  br label %74

74:                                               ; preds = %72, %68
  %75 = getelementptr inbounds %struct.PaintBakeData, ptr %3, i64 0, i32 8
  %76 = load ptr, ptr %75, align 8, !tbaa !101
  %77 = icmp eq ptr %76, null
  br i1 %77, label %80, label %78

78:                                               ; preds = %74
  %79 = load ptr, ptr @MEM_freeN, align 8, !tbaa !44
  tail call void %79(ptr noundef nonnull %76) #18
  br label %80

80:                                               ; preds = %78, %74
  %81 = getelementptr inbounds %struct.PaintBakeData, ptr %3, i64 0, i32 9
  %82 = load ptr, ptr %81, align 8, !tbaa !102
  %83 = icmp eq ptr %82, null
  br i1 %83, label %86, label %84

84:                                               ; preds = %80
  %85 = load ptr, ptr @MEM_freeN, align 8, !tbaa !44
  tail call void %85(ptr noundef nonnull %82) #18
  br label %86

86:                                               ; preds = %84, %80
  %87 = load ptr, ptr @MEM_freeN, align 8, !tbaa !44
  %88 = load ptr, ptr %2, align 8, !tbaa !85
  tail call void %87(ptr noundef %88) #18
  store ptr null, ptr %2, align 8, !tbaa !85
  br label %89

89:                                               ; preds = %86, %1
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @dynamicPaint_freeSurface(ptr noundef %0) local_unnamed_addr #4 {
  %2 = getelementptr inbounds %struct.DynamicPaintSurface, ptr %0, i64 0, i32 7
  tail call void @BKE_ptcache_free_list(ptr noundef nonnull %2) #18
  %3 = getelementptr inbounds %struct.DynamicPaintSurface, ptr %0, i64 0, i32 6
  store ptr null, ptr %3, align 8, !tbaa !103
  %4 = getelementptr inbounds %struct.DynamicPaintSurface, ptr %0, i64 0, i32 5
  %5 = load ptr, ptr %4, align 8, !tbaa !104
  %6 = icmp eq ptr %5, null
  br i1 %6, label %9, label %7

7:                                                ; preds = %1
  %8 = load ptr, ptr @MEM_freeN, align 8, !tbaa !44
  tail call void %8(ptr noundef nonnull %5) #18
  br label %9

9:                                                ; preds = %7, %1
  store ptr null, ptr %4, align 8, !tbaa !104
  %10 = getelementptr inbounds %struct.DynamicPaintSurface, ptr %0, i64 0, i32 2
  %11 = load ptr, ptr %10, align 8, !tbaa !57
  %12 = getelementptr inbounds %struct.DynamicPaintCanvasSettings, ptr %11, i64 0, i32 2
  tail call void @BLI_remlink(ptr noundef nonnull %12, ptr noundef %0) #18
  tail call void @dynamicPaint_freeSurfaceData(ptr noundef %0)
  %13 = load ptr, ptr @MEM_freeN, align 8, !tbaa !44
  tail call void %13(ptr noundef %0) #18
  ret void
}

declare void @BKE_ptcache_free_list(ptr noundef) local_unnamed_addr #5

declare void @BLI_remlink(ptr noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: nounwind uwtable
define dso_local void @dynamicPaint_freeCanvas(ptr nocapture noundef %0) local_unnamed_addr #4 {
  %2 = getelementptr inbounds %struct.DynamicPaintModifierData, ptr %0, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !105
  %4 = icmp eq ptr %3, null
  br i1 %4, label %37, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.DynamicPaintCanvasSettings, ptr %3, i64 0, i32 2
  %7 = load ptr, ptr %6, align 8, !tbaa !106
  %8 = icmp eq ptr %7, null
  br i1 %8, label %25, label %9

9:                                                ; preds = %5, %19
  %10 = phi ptr [ %11, %19 ], [ %7, %5 ]
  %11 = load ptr, ptr %10, align 8, !tbaa !107
  %12 = getelementptr inbounds %struct.DynamicPaintSurface, ptr %10, i64 0, i32 7
  tail call void @BKE_ptcache_free_list(ptr noundef nonnull %12) #18
  %13 = getelementptr inbounds %struct.DynamicPaintSurface, ptr %10, i64 0, i32 6
  store ptr null, ptr %13, align 8, !tbaa !103
  %14 = getelementptr inbounds %struct.DynamicPaintSurface, ptr %10, i64 0, i32 5
  %15 = load ptr, ptr %14, align 8, !tbaa !104
  %16 = icmp eq ptr %15, null
  br i1 %16, label %19, label %17

17:                                               ; preds = %9
  %18 = load ptr, ptr @MEM_freeN, align 8, !tbaa !44
  tail call void %18(ptr noundef nonnull %15) #18
  br label %19

19:                                               ; preds = %9, %17
  store ptr null, ptr %14, align 8, !tbaa !104
  %20 = getelementptr inbounds %struct.DynamicPaintSurface, ptr %10, i64 0, i32 2
  %21 = load ptr, ptr %20, align 8, !tbaa !57
  %22 = getelementptr inbounds %struct.DynamicPaintCanvasSettings, ptr %21, i64 0, i32 2
  tail call void @BLI_remlink(ptr noundef nonnull %22, ptr noundef nonnull %10) #18
  tail call void @dynamicPaint_freeSurfaceData(ptr noundef nonnull %10)
  %23 = load ptr, ptr @MEM_freeN, align 8, !tbaa !44
  tail call void %23(ptr noundef nonnull %10) #18
  %24 = icmp eq ptr %11, null
  br i1 %24, label %25, label %9, !llvm.loop !108

25:                                               ; preds = %19, %5
  %26 = load ptr, ptr %2, align 8, !tbaa !105
  %27 = getelementptr inbounds %struct.DynamicPaintCanvasSettings, ptr %26, i64 0, i32 1
  %28 = load ptr, ptr %27, align 8, !tbaa !109
  %29 = icmp eq ptr %28, null
  br i1 %29, label %33, label %30

30:                                               ; preds = %25
  %31 = getelementptr inbounds %struct.DerivedMesh, ptr %28, i64 0, i32 95
  %32 = load ptr, ptr %31, align 8, !tbaa !67
  tail call void %32(ptr noundef nonnull %28) #18
  br label %33

33:                                               ; preds = %30, %25
  %34 = load ptr, ptr %2, align 8, !tbaa !105
  %35 = getelementptr inbounds %struct.DynamicPaintCanvasSettings, ptr %34, i64 0, i32 1
  store ptr null, ptr %35, align 8, !tbaa !109
  %36 = load ptr, ptr @MEM_freeN, align 8, !tbaa !44
  tail call void %36(ptr noundef %34) #18
  store ptr null, ptr %2, align 8, !tbaa !105
  br label %37

37:                                               ; preds = %33, %1
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @dynamicPaint_Modifier_free(ptr noundef %0) local_unnamed_addr #4 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %34, label %3

3:                                                ; preds = %1
  tail call void @dynamicPaint_freeCanvas(ptr noundef nonnull %0)
  %4 = getelementptr inbounds %struct.DynamicPaintModifierData, ptr %0, i64 0, i32 2
  %5 = load ptr, ptr %4, align 8, !tbaa !62
  %6 = icmp eq ptr %5, null
  br i1 %6, label %34, label %7

7:                                                ; preds = %3
  %8 = getelementptr inbounds %struct.DynamicPaintBrushSettings, ptr %5, i64 0, i32 1
  %9 = load ptr, ptr %8, align 8, !tbaa !65
  %10 = icmp eq ptr %9, null
  br i1 %10, label %14, label %11

11:                                               ; preds = %7
  %12 = getelementptr inbounds %struct.DerivedMesh, ptr %9, i64 0, i32 95
  %13 = load ptr, ptr %12, align 8, !tbaa !67
  tail call void %13(ptr noundef nonnull %9) #18
  br label %14

14:                                               ; preds = %11, %7
  %15 = load ptr, ptr %4, align 8, !tbaa !62
  %16 = getelementptr inbounds %struct.DynamicPaintBrushSettings, ptr %15, i64 0, i32 1
  store ptr null, ptr %16, align 8, !tbaa !65
  %17 = getelementptr inbounds %struct.DynamicPaintBrushSettings, ptr %15, i64 0, i32 14
  %18 = load ptr, ptr %17, align 8, !tbaa !70
  %19 = icmp eq ptr %18, null
  br i1 %19, label %22, label %20

20:                                               ; preds = %14
  %21 = load ptr, ptr @MEM_freeN, align 8, !tbaa !44
  tail call void %21(ptr noundef nonnull %18) #18
  br label %22

22:                                               ; preds = %20, %14
  %23 = load ptr, ptr %4, align 8, !tbaa !62
  %24 = getelementptr inbounds %struct.DynamicPaintBrushSettings, ptr %23, i64 0, i32 14
  store ptr null, ptr %24, align 8, !tbaa !70
  %25 = getelementptr inbounds %struct.DynamicPaintBrushSettings, ptr %23, i64 0, i32 15
  %26 = load ptr, ptr %25, align 8, !tbaa !71
  %27 = icmp eq ptr %26, null
  br i1 %27, label %30, label %28

28:                                               ; preds = %22
  %29 = load ptr, ptr @MEM_freeN, align 8, !tbaa !44
  tail call void %29(ptr noundef nonnull %26) #18
  br label %30

30:                                               ; preds = %28, %22
  %31 = load ptr, ptr %4, align 8, !tbaa !62
  %32 = getelementptr inbounds %struct.DynamicPaintBrushSettings, ptr %31, i64 0, i32 15
  store ptr null, ptr %32, align 8, !tbaa !71
  %33 = load ptr, ptr @MEM_freeN, align 8, !tbaa !44
  tail call void %33(ptr noundef %31) #18
  store ptr null, ptr %4, align 8, !tbaa !62
  br label %34

34:                                               ; preds = %30, %3, %1
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local ptr @dynamicPaint_createNewSurface(ptr noundef %0, ptr noundef readonly %1) local_unnamed_addr #4 {
  %3 = alloca [64 x i8], align 16
  %4 = load ptr, ptr @MEM_callocN, align 8, !tbaa !44
  %5 = tail call ptr %4(i64 noundef 1560, ptr noundef nonnull @.str.6) #18
  %6 = icmp eq ptr %5, null
  br i1 %6, label %63, label %7

7:                                                ; preds = %2
  %8 = getelementptr inbounds %struct.DynamicPaintSurface, ptr %5, i64 0, i32 2
  store ptr %0, ptr %8, align 8, !tbaa !57
  %9 = getelementptr inbounds %struct.DynamicPaintSurface, ptr %5, i64 0, i32 10
  store i16 1, ptr %9, align 4, !tbaa !34
  %10 = getelementptr inbounds %struct.DynamicPaintSurface, ptr %5, i64 0, i32 11
  store i16 0, ptr %10, align 2, !tbaa !43
  %11 = getelementptr inbounds %struct.DynamicPaintSurface, ptr %5, i64 0, i32 7
  %12 = tail call ptr @BKE_ptcache_add(ptr noundef nonnull %11) #18
  %13 = getelementptr inbounds %struct.DynamicPaintSurface, ptr %5, i64 0, i32 6
  store ptr %12, ptr %13, align 8, !tbaa !103
  %14 = getelementptr inbounds %struct.PointCache, ptr %12, i64 0, i32 2
  %15 = load i32, ptr %14, align 8, !tbaa !110
  %16 = or i32 %15, 64
  store i32 %16, ptr %14, align 8, !tbaa !110
  %17 = getelementptr inbounds %struct.PointCache, ptr %12, i64 0, i32 3
  store i32 1, ptr %17, align 4, !tbaa !112
  %18 = getelementptr inbounds %struct.DynamicPaintSurface, ptr %5, i64 0, i32 18
  store i32 1659, ptr %18, align 4, !tbaa !50
  %19 = getelementptr inbounds %struct.DynamicPaintSurface, ptr %5, i64 0, i32 19
  store i32 0, ptr %19, align 8, !tbaa !113
  %20 = getelementptr inbounds %struct.DynamicPaintSurface, ptr %5, i64 0, i32 14
  store i16 1, ptr %20, align 4, !tbaa !114
  %21 = getelementptr inbounds %struct.DynamicPaintSurface, ptr %5, i64 0, i32 29
  store i32 250, ptr %21, align 4, !tbaa !115
  %22 = getelementptr inbounds %struct.DynamicPaintSurface, ptr %5, i64 0, i32 28
  store i32 500, ptr %22, align 8, !tbaa !116
  %23 = getelementptr inbounds %struct.DynamicPaintSurface, ptr %5, i64 0, i32 30
  store float 1.000000e+00, ptr %23, align 8, !tbaa !117
  %24 = getelementptr inbounds %struct.DynamicPaintSurface, ptr %5, i64 0, i32 31
  store float 0.000000e+00, ptr %24, align 4, !tbaa !60
  %25 = getelementptr inbounds %struct.DynamicPaintSurface, ptr %5, i64 0, i32 32
  store float 1.000000e+00, ptr %25, align 8, !tbaa !118
  %26 = getelementptr inbounds %struct.DynamicPaintSurface, ptr %5, i64 0, i32 12
  store i16 0, ptr %26, align 8, !tbaa !119
  %27 = getelementptr inbounds %struct.DynamicPaintSurface, ptr %5, i64 0, i32 13
  store i16 0, ptr %27, align 2, !tbaa !120
  %28 = getelementptr inbounds %struct.DynamicPaintSurface, ptr %5, i64 0, i32 38
  store float 1.000000e+00, ptr %28, align 8, !tbaa !121
  %29 = getelementptr inbounds %struct.DynamicPaintSurface, ptr %5, i64 0, i32 39
  store float 1.000000e+00, ptr %29, align 4, !tbaa !122
  %30 = getelementptr inbounds %struct.DynamicPaintSurface, ptr %5, i64 0, i32 25
  store float 1.000000e+00, ptr %30, align 8, !tbaa !123
  %31 = getelementptr inbounds %struct.DynamicPaintSurface, ptr %5, i64 0, i32 25, i64 1
  store float 1.000000e+00, ptr %31, align 4, !tbaa !123
  %32 = getelementptr inbounds %struct.DynamicPaintSurface, ptr %5, i64 0, i32 25, i64 2
  store float 1.000000e+00, ptr %32, align 8, !tbaa !123
  %33 = getelementptr inbounds %struct.DynamicPaintSurface, ptr %5, i64 0, i32 25, i64 3
  store float 1.000000e+00, ptr %33, align 4, !tbaa !123
  %34 = getelementptr inbounds %struct.DynamicPaintSurface, ptr %5, i64 0, i32 20
  store i32 256, ptr %34, align 4, !tbaa !124
  %35 = getelementptr inbounds %struct.DynamicPaintSurface, ptr %5, i64 0, i32 21
  store i32 0, ptr %35, align 8, !tbaa !125
  %36 = icmp eq ptr %1, null
  br i1 %36, label %43, label %37

37:                                               ; preds = %7
  %38 = getelementptr inbounds %struct.Scene, ptr %1, i64 0, i32 22, i32 6
  %39 = load i32, ptr %38, align 4, !tbaa !126
  %40 = getelementptr inbounds %struct.DynamicPaintSurface, ptr %5, i64 0, i32 22
  store i32 %39, ptr %40, align 4, !tbaa !145
  %41 = getelementptr inbounds %struct.Scene, ptr %1, i64 0, i32 22, i32 7
  %42 = load i32, ptr %41, align 8, !tbaa !146
  br label %45

43:                                               ; preds = %7
  %44 = getelementptr inbounds %struct.DynamicPaintSurface, ptr %5, i64 0, i32 22
  store i32 1, ptr %44, align 4, !tbaa !145
  br label %45

45:                                               ; preds = %43, %37
  %46 = phi i32 [ 250, %43 ], [ %42, %37 ]
  %47 = getelementptr inbounds %struct.DynamicPaintSurface, ptr %5, i64 0, i32 23
  store i32 %46, ptr %47, align 8, !tbaa !147
  %48 = getelementptr inbounds %struct.DynamicPaintSurface, ptr %5, i64 0, i32 33
  store float 1.000000e+00, ptr %48, align 4, !tbaa !148
  %49 = getelementptr inbounds %struct.DynamicPaintSurface, ptr %5, i64 0, i32 34
  store float 1.000000e+00, ptr %49, align 8, !tbaa !149
  %50 = getelementptr inbounds %struct.DynamicPaintSurface, ptr %5, i64 0, i32 35
  store float 1.000000e+00, ptr %50, align 4, !tbaa !150
  %51 = getelementptr inbounds %struct.DynamicPaintSurface, ptr %5, i64 0, i32 40
  store float 0x3FA47AE140000000, ptr %51, align 8, !tbaa !151
  %52 = getelementptr inbounds %struct.DynamicPaintSurface, ptr %5, i64 0, i32 41
  store float 1.000000e+00, ptr %52, align 4, !tbaa !152
  %53 = getelementptr inbounds %struct.DynamicPaintSurface, ptr %5, i64 0, i32 42
  store float 1.000000e+00, ptr %53, align 8, !tbaa !153
  %54 = getelementptr inbounds %struct.DynamicPaintSurface, ptr %5, i64 0, i32 43
  store float 0x3FC99999A0000000, ptr %54, align 4, !tbaa !154
  %55 = getelementptr inbounds %struct.DynamicPaintSurface, ptr %5, i64 0, i32 44
  store float 1.000000e+00, ptr %55, align 8, !tbaa !155
  %56 = getelementptr inbounds %struct.DynamicPaintSurface, ptr %5, i64 0, i32 47
  tail call void @modifier_path_init(ptr noundef nonnull %56, i32 noundef 1024, ptr noundef nonnull @.str.7) #18
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %3) #18
  %57 = call ptr @BLI_strncpy(ptr noundef nonnull %3, ptr noundef nonnull @.str.8, i64 noundef 64) #18
  %58 = getelementptr inbounds %struct.DynamicPaintSurface, ptr %5, i64 0, i32 9
  %59 = call zeroext i8 @BLI_uniquename_cb(ptr noundef nonnull @surface_duplicateNameExists, ptr noundef %5, ptr noundef nonnull %3, i8 noundef zeroext 46, ptr noundef nonnull %58, i32 noundef 64) #18
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %3) #18
  %60 = call ptr @BKE_add_effector_weights(ptr noundef null) #18
  %61 = getelementptr inbounds %struct.DynamicPaintSurface, ptr %5, i64 0, i32 5
  store ptr %60, ptr %61, align 8, !tbaa !104
  call void @dynamicPaintSurface_updateType(ptr noundef %5)
  %62 = getelementptr inbounds %struct.DynamicPaintCanvasSettings, ptr %0, i64 0, i32 2
  call void @BLI_addtail(ptr noundef nonnull %62, ptr noundef %5) #18
  br label %63

63:                                               ; preds = %2, %45
  %64 = phi ptr [ %5, %45 ], [ null, %2 ]
  ret ptr %64
}

declare ptr @BKE_ptcache_add(ptr noundef) local_unnamed_addr #5

declare void @modifier_path_init(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #5

declare ptr @BKE_add_effector_weights(ptr noundef) local_unnamed_addr #5

declare void @BLI_addtail(ptr noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: nounwind uwtable
define dso_local noundef zeroext i8 @dynamicPaint_createType(ptr noundef %0, i32 noundef %1, ptr noundef %2) local_unnamed_addr #4 {
  %4 = icmp eq ptr %0, null
  br i1 %4, label %103, label %5

5:                                                ; preds = %3
  switch i32 %1, label %102 [
    i32 1, label %6
    i32 2, label %19
  ]

6:                                                ; preds = %5
  %7 = getelementptr inbounds %struct.DynamicPaintModifierData, ptr %0, i64 0, i32 1
  %8 = load ptr, ptr %7, align 8, !tbaa !105
  %9 = icmp eq ptr %8, null
  br i1 %9, label %11, label %10

10:                                               ; preds = %6
  tail call void @dynamicPaint_freeCanvas(ptr noundef nonnull %0)
  br label %11

11:                                               ; preds = %10, %6
  %12 = load ptr, ptr @MEM_callocN, align 8, !tbaa !44
  %13 = tail call ptr %12(i64 noundef 104, ptr noundef nonnull @.str.9) #18
  store ptr %13, ptr %7, align 8, !tbaa !105
  %14 = icmp eq ptr %13, null
  br i1 %14, label %103, label %15

15:                                               ; preds = %11
  store ptr %0, ptr %13, align 8, !tbaa !156
  %16 = getelementptr inbounds %struct.DynamicPaintCanvasSettings, ptr %13, i64 0, i32 1
  store ptr null, ptr %16, align 8, !tbaa !109
  %17 = tail call ptr @dynamicPaint_createNewSurface(ptr noundef nonnull %13, ptr noundef %2)
  %18 = icmp eq ptr %17, null
  br i1 %18, label %103, label %102

19:                                               ; preds = %5
  %20 = getelementptr inbounds %struct.DynamicPaintModifierData, ptr %0, i64 0, i32 2
  %21 = load ptr, ptr %20, align 8, !tbaa !62
  %22 = icmp eq ptr %21, null
  br i1 %22, label %50, label %23

23:                                               ; preds = %19
  %24 = getelementptr inbounds %struct.DynamicPaintBrushSettings, ptr %21, i64 0, i32 1
  %25 = load ptr, ptr %24, align 8, !tbaa !65
  %26 = icmp eq ptr %25, null
  br i1 %26, label %30, label %27

27:                                               ; preds = %23
  %28 = getelementptr inbounds %struct.DerivedMesh, ptr %25, i64 0, i32 95
  %29 = load ptr, ptr %28, align 8, !tbaa !67
  tail call void %29(ptr noundef nonnull %25) #18
  br label %30

30:                                               ; preds = %27, %23
  %31 = load ptr, ptr %20, align 8, !tbaa !62
  %32 = getelementptr inbounds %struct.DynamicPaintBrushSettings, ptr %31, i64 0, i32 1
  store ptr null, ptr %32, align 8, !tbaa !65
  %33 = getelementptr inbounds %struct.DynamicPaintBrushSettings, ptr %31, i64 0, i32 14
  %34 = load ptr, ptr %33, align 8, !tbaa !70
  %35 = icmp eq ptr %34, null
  br i1 %35, label %38, label %36

36:                                               ; preds = %30
  %37 = load ptr, ptr @MEM_freeN, align 8, !tbaa !44
  tail call void %37(ptr noundef nonnull %34) #18
  br label %38

38:                                               ; preds = %36, %30
  %39 = load ptr, ptr %20, align 8, !tbaa !62
  %40 = getelementptr inbounds %struct.DynamicPaintBrushSettings, ptr %39, i64 0, i32 14
  store ptr null, ptr %40, align 8, !tbaa !70
  %41 = getelementptr inbounds %struct.DynamicPaintBrushSettings, ptr %39, i64 0, i32 15
  %42 = load ptr, ptr %41, align 8, !tbaa !71
  %43 = icmp eq ptr %42, null
  br i1 %43, label %46, label %44

44:                                               ; preds = %38
  %45 = load ptr, ptr @MEM_freeN, align 8, !tbaa !44
  tail call void %45(ptr noundef nonnull %42) #18
  br label %46

46:                                               ; preds = %44, %38
  %47 = load ptr, ptr %20, align 8, !tbaa !62
  %48 = getelementptr inbounds %struct.DynamicPaintBrushSettings, ptr %47, i64 0, i32 15
  store ptr null, ptr %48, align 8, !tbaa !71
  %49 = load ptr, ptr @MEM_freeN, align 8, !tbaa !44
  tail call void %49(ptr noundef %47) #18
  store ptr null, ptr %20, align 8, !tbaa !62
  br label %50

50:                                               ; preds = %46, %19
  %51 = load ptr, ptr @MEM_callocN, align 8, !tbaa !44
  %52 = tail call ptr %51(i64 noundef 112, ptr noundef nonnull @.str.10) #18
  store ptr %52, ptr %20, align 8, !tbaa !62
  %53 = icmp eq ptr %52, null
  br i1 %53, label %103, label %54

54:                                               ; preds = %50
  store ptr %0, ptr %52, align 8, !tbaa !157
  %55 = getelementptr inbounds %struct.DynamicPaintBrushSettings, ptr %52, i64 0, i32 2
  store ptr null, ptr %55, align 8, !tbaa !158
  %56 = getelementptr inbounds %struct.DynamicPaintBrushSettings, ptr %52, i64 0, i32 4
  store i32 20, ptr %56, align 8, !tbaa !159
  %57 = getelementptr inbounds %struct.DynamicPaintBrushSettings, ptr %52, i64 0, i32 5
  store i32 0, ptr %57, align 4, !tbaa !160
  %58 = getelementptr inbounds %struct.DynamicPaintBrushSettings, ptr %52, i64 0, i32 3
  store ptr null, ptr %58, align 8, !tbaa !161
  %59 = getelementptr inbounds %struct.DynamicPaintBrushSettings, ptr %52, i64 0, i32 6
  store float 0x3FC3333340000000, ptr %59, align 8, !tbaa !162
  %60 = getelementptr inbounds %struct.DynamicPaintBrushSettings, ptr %52, i64 0, i32 7
  store float 0x3FD99999A0000000, ptr %60, align 4, !tbaa !163
  %61 = getelementptr inbounds %struct.DynamicPaintBrushSettings, ptr %52, i64 0, i32 8
  store float 0x3FE99999A0000000, ptr %61, align 8, !tbaa !164
  %62 = getelementptr inbounds %struct.DynamicPaintBrushSettings, ptr %52, i64 0, i32 9
  store float 1.000000e+00, ptr %62, align 4, !tbaa !165
  %63 = getelementptr inbounds %struct.DynamicPaintBrushSettings, ptr %52, i64 0, i32 10
  store float 1.000000e+00, ptr %63, align 8, !tbaa !166
  %64 = getelementptr inbounds %struct.DynamicPaintBrushSettings, ptr %52, i64 0, i32 13
  store float 1.000000e+00, ptr %64, align 4, !tbaa !167
  %65 = getelementptr inbounds %struct.DynamicPaintBrushSettings, ptr %52, i64 0, i32 16
  store i16 1, ptr %65, align 8, !tbaa !168
  %66 = getelementptr inbounds %struct.DynamicPaintBrushSettings, ptr %52, i64 0, i32 11
  store float 0x3FC99999A0000000, ptr %66, align 4, !tbaa !169
  %67 = getelementptr inbounds %struct.DynamicPaintBrushSettings, ptr %52, i64 0, i32 12
  store float 0x3FA99999A0000000, ptr %67, align 8, !tbaa !170
  %68 = getelementptr inbounds %struct.DynamicPaintBrushSettings, ptr %52, i64 0, i32 17
  store i16 3, ptr %68, align 2, !tbaa !171
  %69 = getelementptr inbounds %struct.DynamicPaintBrushSettings, ptr %52, i64 0, i32 20
  store float 1.000000e+00, ptr %69, align 8, !tbaa !172
  %70 = getelementptr inbounds %struct.DynamicPaintBrushSettings, ptr %52, i64 0, i32 21
  store float 0.000000e+00, ptr %70, align 4, !tbaa !173
  %71 = getelementptr inbounds %struct.DynamicPaintBrushSettings, ptr %52, i64 0, i32 23
  store float 0x3FD3333340000000, ptr %71, align 4, !tbaa !174
  %72 = getelementptr inbounds %struct.DynamicPaintBrushSettings, ptr %52, i64 0, i32 22
  store float 1.000000e+00, ptr %72, align 8, !tbaa !175
  %73 = getelementptr inbounds %struct.DynamicPaintBrushSettings, ptr %52, i64 0, i32 1
  store ptr null, ptr %73, align 8, !tbaa !65
  %74 = tail call ptr @add_colorband(i8 noundef zeroext 0) #18
  %75 = getelementptr inbounds %struct.DynamicPaintBrushSettings, ptr %52, i64 0, i32 14
  store ptr %74, ptr %75, align 8, !tbaa !70
  %76 = icmp eq ptr %74, null
  br i1 %76, label %103, label %77

77:                                               ; preds = %54
  %78 = getelementptr inbounds %struct.ColorBand, ptr %74, i64 0, i32 6
  %79 = getelementptr inbounds %struct.ColorBand, ptr %74, i64 0, i32 6, i64 0, i32 3
  store float 1.000000e+00, ptr %79, align 4, !tbaa !176
  %80 = getelementptr inbounds %struct.ColorBand, ptr %74, i64 0, i32 6, i64 0, i32 2
  store float 1.000000e+00, ptr %80, align 4, !tbaa !178
  %81 = getelementptr inbounds %struct.ColorBand, ptr %74, i64 0, i32 6, i64 0, i32 1
  store float 1.000000e+00, ptr %81, align 4, !tbaa !179
  store float 1.000000e+00, ptr %78, align 4, !tbaa !180
  %82 = getelementptr inbounds %struct.ColorBand, ptr %74, i64 0, i32 6, i64 0, i32 4
  store float 0.000000e+00, ptr %82, align 4, !tbaa !181
  %83 = getelementptr inbounds %struct.ColorBand, ptr %74, i64 0, i32 6, i64 1
  %84 = getelementptr inbounds %struct.ColorBand, ptr %74, i64 0, i32 6, i64 1, i32 4
  store float 1.000000e+00, ptr %84, align 4, !tbaa !181
  %85 = getelementptr inbounds %struct.ColorBand, ptr %74, i64 0, i32 6, i64 1, i32 2
  store float 1.000000e+00, ptr %85, align 4, !tbaa !178
  %86 = getelementptr inbounds %struct.ColorBand, ptr %74, i64 0, i32 6, i64 1, i32 1
  store float 1.000000e+00, ptr %86, align 4, !tbaa !179
  store float 1.000000e+00, ptr %83, align 4, !tbaa !180
  %87 = getelementptr inbounds %struct.ColorBand, ptr %74, i64 0, i32 6, i64 1, i32 3
  store float 0.000000e+00, ptr %87, align 4, !tbaa !176
  %88 = load ptr, ptr %20, align 8, !tbaa !62
  %89 = getelementptr inbounds %struct.DynamicPaintBrushSettings, ptr %88, i64 0, i32 14
  %90 = load ptr, ptr %89, align 8, !tbaa !70
  store i16 2, ptr %90, align 4, !tbaa !182
  %91 = tail call ptr @add_colorband(i8 noundef zeroext 0) #18
  %92 = getelementptr inbounds %struct.DynamicPaintBrushSettings, ptr %52, i64 0, i32 15
  store ptr %91, ptr %92, align 8, !tbaa !71
  %93 = icmp eq ptr %91, null
  br i1 %93, label %103, label %94

94:                                               ; preds = %77
  %95 = getelementptr inbounds %struct.ColorBand, ptr %91, i64 0, i32 6
  %96 = getelementptr inbounds %struct.ColorBand, ptr %91, i64 0, i32 6, i64 1
  %97 = getelementptr inbounds %struct.ColorBand, ptr %91, i64 0, i32 6, i64 1, i32 4
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(20) %95, i8 0, i64 20, i1 false)
  store float 1.000000e+00, ptr %97, align 4, !tbaa !181
  %98 = getelementptr inbounds %struct.ColorBand, ptr %91, i64 0, i32 6, i64 1, i32 3
  store float 1.000000e+00, ptr %98, align 4, !tbaa !176
  %99 = getelementptr inbounds %struct.ColorBand, ptr %91, i64 0, i32 6, i64 1, i32 2
  store float 1.000000e+00, ptr %99, align 4, !tbaa !178
  %100 = getelementptr inbounds %struct.ColorBand, ptr %91, i64 0, i32 6, i64 1, i32 1
  store float 1.000000e+00, ptr %100, align 4, !tbaa !179
  store float 1.000000e+00, ptr %96, align 4, !tbaa !180
  %101 = load ptr, ptr %75, align 8, !tbaa !70
  store i16 2, ptr %101, align 4, !tbaa !182
  br label %102

102:                                              ; preds = %94, %5, %15
  br label %103

103:                                              ; preds = %50, %77, %54, %11, %3, %15, %102
  %104 = phi i8 [ 0, %15 ], [ 1, %102 ], [ 0, %3 ], [ 0, %11 ], [ 0, %54 ], [ 0, %77 ], [ 0, %50 ]
  ret i8 %104
}

declare ptr @add_colorband(i8 noundef zeroext) local_unnamed_addr #5

; Function Attrs: nounwind uwtable
define dso_local void @dynamicPaint_Modifier_copy(ptr nocapture noundef readonly %0, ptr noundef %1) local_unnamed_addr #4 {
  %3 = getelementptr inbounds %struct.DynamicPaintModifierData, ptr %0, i64 0, i32 3
  %4 = load i32, ptr %3, align 8, !tbaa !184
  %5 = getelementptr inbounds %struct.DynamicPaintModifierData, ptr %1, i64 0, i32 3
  store i32 %4, ptr %5, align 8, !tbaa !184
  %6 = getelementptr inbounds %struct.DynamicPaintModifierData, ptr %0, i64 0, i32 1
  %7 = load ptr, ptr %6, align 8, !tbaa !105
  %8 = icmp eq ptr %7, null
  %9 = icmp eq ptr %1, null
  %10 = or i1 %9, %8
  br i1 %10, label %23, label %11

11:                                               ; preds = %2
  %12 = getelementptr inbounds %struct.DynamicPaintModifierData, ptr %1, i64 0, i32 1
  %13 = load ptr, ptr %12, align 8, !tbaa !105
  %14 = icmp eq ptr %13, null
  br i1 %14, label %16, label %15

15:                                               ; preds = %11
  tail call void @dynamicPaint_freeCanvas(ptr noundef nonnull %1)
  br label %16

16:                                               ; preds = %15, %11
  %17 = load ptr, ptr @MEM_callocN, align 8, !tbaa !44
  %18 = tail call ptr %17(i64 noundef 104, ptr noundef nonnull @.str.9) #18
  store ptr %18, ptr %12, align 8, !tbaa !105
  %19 = icmp eq ptr %18, null
  br i1 %19, label %23, label %20

20:                                               ; preds = %16
  store ptr %1, ptr %18, align 8, !tbaa !156
  %21 = getelementptr inbounds %struct.DynamicPaintCanvasSettings, ptr %18, i64 0, i32 1
  store ptr null, ptr %21, align 8, !tbaa !109
  %22 = tail call ptr @dynamicPaint_createNewSurface(ptr noundef nonnull %18, ptr noundef null)
  br label %23

23:                                               ; preds = %20, %16, %2
  %24 = getelementptr inbounds %struct.DynamicPaintModifierData, ptr %0, i64 0, i32 2
  %25 = load ptr, ptr %24, align 8, !tbaa !62
  %26 = icmp eq ptr %25, null
  br i1 %26, label %29, label %27

27:                                               ; preds = %23
  %28 = tail call zeroext i8 @dynamicPaint_createType(ptr noundef %1, i32 noundef 2, ptr noundef null), !range !185
  br label %29

29:                                               ; preds = %27, %23
  %30 = getelementptr inbounds %struct.DynamicPaintModifierData, ptr %1, i64 0, i32 1
  %31 = load ptr, ptr %30, align 8, !tbaa !105
  %32 = icmp eq ptr %31, null
  br i1 %32, label %229, label %33

33:                                               ; preds = %29
  store ptr %1, ptr %31, align 8, !tbaa !156
  %34 = getelementptr inbounds %struct.DynamicPaintCanvasSettings, ptr %31, i64 0, i32 2
  %35 = load ptr, ptr %34, align 8, !tbaa !106
  %36 = icmp eq ptr %35, null
  br i1 %36, label %50, label %37

37:                                               ; preds = %33
  %38 = getelementptr inbounds %struct.DynamicPaintSurface, ptr %35, i64 0, i32 7
  tail call void @BKE_ptcache_free_list(ptr noundef nonnull %38) #18
  %39 = getelementptr inbounds %struct.DynamicPaintSurface, ptr %35, i64 0, i32 6
  store ptr null, ptr %39, align 8, !tbaa !103
  %40 = getelementptr inbounds %struct.DynamicPaintSurface, ptr %35, i64 0, i32 5
  %41 = load ptr, ptr %40, align 8, !tbaa !104
  %42 = icmp eq ptr %41, null
  br i1 %42, label %45, label %43

43:                                               ; preds = %37
  %44 = load ptr, ptr @MEM_freeN, align 8, !tbaa !44
  tail call void %44(ptr noundef nonnull %41) #18
  br label %45

45:                                               ; preds = %37, %43
  store ptr null, ptr %40, align 8, !tbaa !104
  %46 = getelementptr inbounds %struct.DynamicPaintSurface, ptr %35, i64 0, i32 2
  %47 = load ptr, ptr %46, align 8, !tbaa !57
  %48 = getelementptr inbounds %struct.DynamicPaintCanvasSettings, ptr %47, i64 0, i32 2
  tail call void @BLI_remlink(ptr noundef nonnull %48, ptr noundef nonnull %35) #18
  tail call void @dynamicPaint_freeSurfaceData(ptr noundef nonnull %35)
  %49 = load ptr, ptr @MEM_freeN, align 8, !tbaa !44
  tail call void %49(ptr noundef nonnull %35) #18
  br label %50

50:                                               ; preds = %45, %33
  %51 = load ptr, ptr %6, align 8, !tbaa !105
  %52 = getelementptr inbounds %struct.DynamicPaintCanvasSettings, ptr %51, i64 0, i32 2
  %53 = load ptr, ptr %52, align 8, !tbaa !44
  %54 = icmp eq ptr %53, null
  br i1 %54, label %194, label %55

55:                                               ; preds = %50, %55
  %56 = phi ptr [ %192, %55 ], [ %53, %50 ]
  %57 = load ptr, ptr %30, align 8, !tbaa !105
  %58 = tail call ptr @dynamicPaint_createNewSurface(ptr noundef %57, ptr noundef null)
  %59 = getelementptr inbounds %struct.DynamicPaintSurface, ptr %56, i64 0, i32 4
  %60 = load ptr, ptr %59, align 8, !tbaa !186
  %61 = getelementptr inbounds %struct.DynamicPaintSurface, ptr %58, i64 0, i32 4
  store ptr %60, ptr %61, align 8, !tbaa !186
  %62 = load ptr, ptr @MEM_freeN, align 8, !tbaa !44
  %63 = getelementptr inbounds %struct.DynamicPaintSurface, ptr %58, i64 0, i32 5
  %64 = load ptr, ptr %63, align 8, !tbaa !104
  tail call void %62(ptr noundef %64) #18
  %65 = load ptr, ptr @MEM_dupallocN, align 8, !tbaa !44
  %66 = getelementptr inbounds %struct.DynamicPaintSurface, ptr %56, i64 0, i32 5
  %67 = load ptr, ptr %66, align 8, !tbaa !104
  %68 = tail call ptr %65(ptr noundef %67) #18
  store ptr %68, ptr %63, align 8, !tbaa !104
  %69 = getelementptr inbounds %struct.DynamicPaintSurface, ptr %58, i64 0, i32 9
  %70 = getelementptr inbounds %struct.DynamicPaintSurface, ptr %56, i64 0, i32 9
  %71 = tail call ptr @BLI_strncpy(ptr noundef nonnull %69, ptr noundef nonnull %70, i64 noundef 64) #18
  %72 = getelementptr inbounds %struct.DynamicPaintSurface, ptr %56, i64 0, i32 10
  %73 = load i16, ptr %72, align 4, !tbaa !34
  %74 = getelementptr inbounds %struct.DynamicPaintSurface, ptr %58, i64 0, i32 10
  store i16 %73, ptr %74, align 4, !tbaa !34
  %75 = getelementptr inbounds %struct.DynamicPaintSurface, ptr %56, i64 0, i32 11
  %76 = load i16, ptr %75, align 2, !tbaa !43
  %77 = getelementptr inbounds %struct.DynamicPaintSurface, ptr %58, i64 0, i32 11
  store i16 %76, ptr %77, align 2, !tbaa !43
  %78 = getelementptr inbounds %struct.DynamicPaintSurface, ptr %56, i64 0, i32 12
  %79 = load i16, ptr %78, align 8, !tbaa !119
  %80 = getelementptr inbounds %struct.DynamicPaintSurface, ptr %58, i64 0, i32 12
  store i16 %79, ptr %80, align 8, !tbaa !119
  %81 = getelementptr inbounds %struct.DynamicPaintSurface, ptr %56, i64 0, i32 13
  %82 = load i16, ptr %81, align 2, !tbaa !120
  %83 = getelementptr inbounds %struct.DynamicPaintSurface, ptr %58, i64 0, i32 13
  store i16 %82, ptr %83, align 2, !tbaa !120
  %84 = getelementptr inbounds %struct.DynamicPaintSurface, ptr %56, i64 0, i32 14
  %85 = load i16, ptr %84, align 4, !tbaa !114
  %86 = getelementptr inbounds %struct.DynamicPaintSurface, ptr %58, i64 0, i32 14
  store i16 %85, ptr %86, align 4, !tbaa !114
  %87 = getelementptr inbounds %struct.DynamicPaintSurface, ptr %56, i64 0, i32 15
  %88 = load i16, ptr %87, align 2, !tbaa !187
  %89 = getelementptr inbounds %struct.DynamicPaintSurface, ptr %58, i64 0, i32 15
  store i16 %88, ptr %89, align 2, !tbaa !187
  %90 = getelementptr inbounds %struct.DynamicPaintSurface, ptr %56, i64 0, i32 16
  %91 = load i16, ptr %90, align 8, !tbaa !188
  %92 = getelementptr inbounds %struct.DynamicPaintSurface, ptr %58, i64 0, i32 16
  store i16 %91, ptr %92, align 8, !tbaa !188
  %93 = getelementptr inbounds %struct.DynamicPaintSurface, ptr %56, i64 0, i32 18
  %94 = load i32, ptr %93, align 4, !tbaa !50
  %95 = getelementptr inbounds %struct.DynamicPaintSurface, ptr %58, i64 0, i32 18
  store i32 %94, ptr %95, align 4, !tbaa !50
  %96 = getelementptr inbounds %struct.DynamicPaintSurface, ptr %56, i64 0, i32 19
  %97 = load i32, ptr %96, align 8, !tbaa !113
  %98 = getelementptr inbounds %struct.DynamicPaintSurface, ptr %58, i64 0, i32 19
  store i32 %97, ptr %98, align 8, !tbaa !113
  %99 = getelementptr inbounds %struct.DynamicPaintSurface, ptr %56, i64 0, i32 20
  %100 = load i32, ptr %99, align 4, !tbaa !124
  %101 = getelementptr inbounds %struct.DynamicPaintSurface, ptr %58, i64 0, i32 20
  store i32 %100, ptr %101, align 4, !tbaa !124
  %102 = getelementptr inbounds %struct.DynamicPaintSurface, ptr %56, i64 0, i32 21
  %103 = load i32, ptr %102, align 8, !tbaa !125
  %104 = getelementptr inbounds %struct.DynamicPaintSurface, ptr %58, i64 0, i32 21
  store i32 %103, ptr %104, align 8, !tbaa !125
  %105 = getelementptr inbounds %struct.DynamicPaintSurface, ptr %56, i64 0, i32 22
  %106 = load i32, ptr %105, align 4, !tbaa !145
  %107 = getelementptr inbounds %struct.DynamicPaintSurface, ptr %58, i64 0, i32 22
  store i32 %106, ptr %107, align 4, !tbaa !145
  %108 = getelementptr inbounds %struct.DynamicPaintSurface, ptr %56, i64 0, i32 23
  %109 = load i32, ptr %108, align 8, !tbaa !147
  %110 = getelementptr inbounds %struct.DynamicPaintSurface, ptr %58, i64 0, i32 23
  store i32 %109, ptr %110, align 8, !tbaa !147
  %111 = getelementptr inbounds %struct.DynamicPaintSurface, ptr %58, i64 0, i32 25
  %112 = getelementptr inbounds %struct.DynamicPaintSurface, ptr %56, i64 0, i32 25
  %113 = load float, ptr %112, align 4, !tbaa !123
  store float %113, ptr %111, align 4, !tbaa !123
  %114 = getelementptr inbounds %struct.DynamicPaintSurface, ptr %56, i64 0, i32 25, i64 1
  %115 = load float, ptr %114, align 4, !tbaa !123
  %116 = getelementptr inbounds %struct.DynamicPaintSurface, ptr %58, i64 0, i32 25, i64 1
  store float %115, ptr %116, align 4, !tbaa !123
  %117 = getelementptr inbounds %struct.DynamicPaintSurface, ptr %56, i64 0, i32 25, i64 2
  %118 = load float, ptr %117, align 4, !tbaa !123
  %119 = getelementptr inbounds %struct.DynamicPaintSurface, ptr %58, i64 0, i32 25, i64 2
  store float %118, ptr %119, align 4, !tbaa !123
  %120 = getelementptr inbounds %struct.DynamicPaintSurface, ptr %56, i64 0, i32 25, i64 3
  %121 = load float, ptr %120, align 4, !tbaa !123
  %122 = getelementptr inbounds %struct.DynamicPaintSurface, ptr %58, i64 0, i32 25, i64 3
  store float %121, ptr %122, align 4, !tbaa !123
  %123 = getelementptr inbounds %struct.DynamicPaintSurface, ptr %56, i64 0, i32 26
  %124 = load ptr, ptr %123, align 8, !tbaa !189
  %125 = getelementptr inbounds %struct.DynamicPaintSurface, ptr %58, i64 0, i32 26
  store ptr %124, ptr %125, align 8, !tbaa !189
  %126 = getelementptr inbounds %struct.DynamicPaintSurface, ptr %58, i64 0, i32 27
  %127 = getelementptr inbounds %struct.DynamicPaintSurface, ptr %56, i64 0, i32 27
  %128 = tail call ptr @BLI_strncpy(ptr noundef nonnull %126, ptr noundef nonnull %127, i64 noundef 64) #18
  %129 = getelementptr inbounds %struct.DynamicPaintSurface, ptr %56, i64 0, i32 28
  %130 = load i32, ptr %129, align 8, !tbaa !116
  %131 = getelementptr inbounds %struct.DynamicPaintSurface, ptr %58, i64 0, i32 28
  store i32 %130, ptr %131, align 8, !tbaa !116
  %132 = getelementptr inbounds %struct.DynamicPaintSurface, ptr %56, i64 0, i32 29
  %133 = load i32, ptr %132, align 4, !tbaa !115
  %134 = getelementptr inbounds %struct.DynamicPaintSurface, ptr %58, i64 0, i32 29
  store i32 %133, ptr %134, align 4, !tbaa !115
  %135 = getelementptr inbounds %struct.DynamicPaintSurface, ptr %56, i64 0, i32 30
  %136 = load float, ptr %135, align 8, !tbaa !117
  %137 = getelementptr inbounds %struct.DynamicPaintSurface, ptr %58, i64 0, i32 30
  store float %136, ptr %137, align 8, !tbaa !117
  %138 = getelementptr inbounds %struct.DynamicPaintSurface, ptr %56, i64 0, i32 31
  %139 = load float, ptr %138, align 4, !tbaa !60
  %140 = getelementptr inbounds %struct.DynamicPaintSurface, ptr %58, i64 0, i32 31
  store float %139, ptr %140, align 4, !tbaa !60
  %141 = getelementptr inbounds %struct.DynamicPaintSurface, ptr %56, i64 0, i32 32
  %142 = load float, ptr %141, align 8, !tbaa !118
  %143 = getelementptr inbounds %struct.DynamicPaintSurface, ptr %58, i64 0, i32 32
  store float %142, ptr %143, align 8, !tbaa !118
  %144 = getelementptr inbounds %struct.DynamicPaintSurface, ptr %56, i64 0, i32 33
  %145 = load float, ptr %144, align 4, !tbaa !148
  %146 = getelementptr inbounds %struct.DynamicPaintSurface, ptr %58, i64 0, i32 33
  store float %145, ptr %146, align 4, !tbaa !148
  %147 = getelementptr inbounds %struct.DynamicPaintSurface, ptr %56, i64 0, i32 34
  %148 = load float, ptr %147, align 8, !tbaa !149
  %149 = getelementptr inbounds %struct.DynamicPaintSurface, ptr %58, i64 0, i32 34
  store float %148, ptr %149, align 8, !tbaa !149
  %150 = getelementptr inbounds %struct.DynamicPaintSurface, ptr %56, i64 0, i32 35
  %151 = load float, ptr %150, align 4, !tbaa !150
  %152 = getelementptr inbounds %struct.DynamicPaintSurface, ptr %58, i64 0, i32 35
  store float %151, ptr %152, align 4, !tbaa !150
  %153 = getelementptr inbounds %struct.DynamicPaintSurface, ptr %56, i64 0, i32 36
  %154 = load float, ptr %153, align 8, !tbaa !190
  %155 = getelementptr inbounds %struct.DynamicPaintSurface, ptr %58, i64 0, i32 36
  store float %154, ptr %155, align 8, !tbaa !190
  %156 = getelementptr inbounds %struct.DynamicPaintSurface, ptr %56, i64 0, i32 37
  %157 = load float, ptr %156, align 4, !tbaa !191
  %158 = getelementptr inbounds %struct.DynamicPaintSurface, ptr %58, i64 0, i32 37
  store float %157, ptr %158, align 4, !tbaa !191
  %159 = getelementptr inbounds %struct.DynamicPaintSurface, ptr %56, i64 0, i32 38
  %160 = load float, ptr %159, align 8, !tbaa !121
  %161 = getelementptr inbounds %struct.DynamicPaintSurface, ptr %58, i64 0, i32 38
  store float %160, ptr %161, align 8, !tbaa !121
  %162 = getelementptr inbounds %struct.DynamicPaintSurface, ptr %56, i64 0, i32 39
  %163 = load float, ptr %162, align 4, !tbaa !122
  %164 = getelementptr inbounds %struct.DynamicPaintSurface, ptr %58, i64 0, i32 39
  store float %163, ptr %164, align 4, !tbaa !122
  %165 = getelementptr inbounds %struct.DynamicPaintSurface, ptr %56, i64 0, i32 40
  %166 = load float, ptr %165, align 8, !tbaa !151
  %167 = getelementptr inbounds %struct.DynamicPaintSurface, ptr %58, i64 0, i32 40
  store float %166, ptr %167, align 8, !tbaa !151
  %168 = getelementptr inbounds %struct.DynamicPaintSurface, ptr %56, i64 0, i32 41
  %169 = load float, ptr %168, align 4, !tbaa !152
  %170 = getelementptr inbounds %struct.DynamicPaintSurface, ptr %58, i64 0, i32 41
  store float %169, ptr %170, align 4, !tbaa !152
  %171 = getelementptr inbounds %struct.DynamicPaintSurface, ptr %56, i64 0, i32 42
  %172 = load float, ptr %171, align 8, !tbaa !153
  %173 = getelementptr inbounds %struct.DynamicPaintSurface, ptr %58, i64 0, i32 42
  store float %172, ptr %173, align 8, !tbaa !153
  %174 = getelementptr inbounds %struct.DynamicPaintSurface, ptr %56, i64 0, i32 43
  %175 = load float, ptr %174, align 4, !tbaa !154
  %176 = getelementptr inbounds %struct.DynamicPaintSurface, ptr %58, i64 0, i32 43
  store float %175, ptr %176, align 4, !tbaa !154
  %177 = getelementptr inbounds %struct.DynamicPaintSurface, ptr %56, i64 0, i32 44
  %178 = load float, ptr %177, align 8, !tbaa !155
  %179 = getelementptr inbounds %struct.DynamicPaintSurface, ptr %58, i64 0, i32 44
  store float %178, ptr %179, align 8, !tbaa !155
  %180 = getelementptr inbounds %struct.DynamicPaintSurface, ptr %58, i64 0, i32 46
  %181 = getelementptr inbounds %struct.DynamicPaintSurface, ptr %56, i64 0, i32 46
  %182 = tail call ptr @BLI_strncpy(ptr noundef nonnull %180, ptr noundef nonnull %181, i64 noundef 64) #18
  %183 = getelementptr inbounds %struct.DynamicPaintSurface, ptr %58, i64 0, i32 47
  %184 = getelementptr inbounds %struct.DynamicPaintSurface, ptr %56, i64 0, i32 47
  %185 = tail call ptr @BLI_strncpy(ptr noundef nonnull %183, ptr noundef nonnull %184, i64 noundef 1024) #18
  %186 = getelementptr inbounds %struct.DynamicPaintSurface, ptr %58, i64 0, i32 48
  %187 = getelementptr inbounds %struct.DynamicPaintSurface, ptr %56, i64 0, i32 48
  %188 = tail call ptr @BLI_strncpy(ptr noundef nonnull %186, ptr noundef nonnull %187, i64 noundef 64) #18
  %189 = getelementptr inbounds %struct.DynamicPaintSurface, ptr %58, i64 0, i32 49
  %190 = getelementptr inbounds %struct.DynamicPaintSurface, ptr %56, i64 0, i32 49
  %191 = tail call ptr @BLI_strncpy(ptr noundef nonnull %189, ptr noundef nonnull %190, i64 noundef 64) #18
  %192 = load ptr, ptr %56, align 8, !tbaa !44
  %193 = icmp eq ptr %192, null
  br i1 %193, label %194, label %55, !llvm.loop !192

194:                                              ; preds = %55, %50
  %195 = load ptr, ptr %30, align 8, !tbaa !105
  %196 = getelementptr inbounds %struct.DynamicPaintCanvasSettings, ptr %195, i64 0, i32 2
  %197 = load ptr, ptr %196, align 8, !tbaa !44
  %198 = icmp eq ptr %197, null
  br i1 %198, label %306, label %199

199:                                              ; preds = %194, %225
  %200 = phi ptr [ %227, %225 ], [ %197, %194 ]
  %201 = phi i8 [ %226, %225 ], [ 0, %194 ]
  %202 = icmp eq i8 %201, 0
  br i1 %202, label %203, label %221

203:                                              ; preds = %199
  %204 = getelementptr inbounds %struct.DynamicPaintSurface, ptr %200, i64 0, i32 10
  %205 = load i16, ptr %204, align 4, !tbaa !34
  switch i16 %205, label %213 [
    i16 2, label %214
    i16 1, label %206
  ]

206:                                              ; preds = %203
  %207 = getelementptr inbounds %struct.DynamicPaintSurface, ptr %200, i64 0, i32 11
  %208 = load i16, ptr %207, align 2, !tbaa !43
  %209 = add i16 %208, -1
  %210 = and i16 %209, -3
  %211 = icmp ne i16 %210, 0
  %212 = zext i1 %211 to i8
  br label %214

213:                                              ; preds = %203
  br label %214

214:                                              ; preds = %213, %206, %203
  %215 = phi i8 [ 1, %213 ], [ 0, %203 ], [ %212, %206 ]
  %216 = icmp eq i8 %215, 0
  br i1 %216, label %221, label %217

217:                                              ; preds = %214
  %218 = getelementptr inbounds %struct.DynamicPaintSurface, ptr %200, i64 0, i32 18
  %219 = load i32, ptr %218, align 4, !tbaa !50
  %220 = or i32 %219, 64
  store i32 %220, ptr %218, align 4, !tbaa !50
  br label %225

221:                                              ; preds = %214, %199
  %222 = getelementptr inbounds %struct.DynamicPaintSurface, ptr %200, i64 0, i32 18
  %223 = load i32, ptr %222, align 4, !tbaa !50
  %224 = and i32 %223, -65
  store i32 %224, ptr %222, align 4, !tbaa !50
  br label %225

225:                                              ; preds = %221, %217
  %226 = phi i8 [ %201, %221 ], [ 1, %217 ]
  %227 = load ptr, ptr %200, align 8, !tbaa !44
  %228 = icmp eq ptr %227, null
  br i1 %228, label %306, label %199, !llvm.loop !51

229:                                              ; preds = %29
  %230 = getelementptr inbounds %struct.DynamicPaintModifierData, ptr %1, i64 0, i32 2
  %231 = load ptr, ptr %230, align 8, !tbaa !62
  %232 = icmp eq ptr %231, null
  br i1 %232, label %306, label %233

233:                                              ; preds = %229
  %234 = load ptr, ptr %24, align 8, !tbaa !62
  store ptr %1, ptr %231, align 8, !tbaa !157
  %235 = getelementptr inbounds %struct.DynamicPaintBrushSettings, ptr %234, i64 0, i32 4
  %236 = load i32, ptr %235, align 8, !tbaa !159
  %237 = getelementptr inbounds %struct.DynamicPaintBrushSettings, ptr %231, i64 0, i32 4
  store i32 %236, ptr %237, align 8, !tbaa !159
  %238 = getelementptr inbounds %struct.DynamicPaintBrushSettings, ptr %234, i64 0, i32 5
  %239 = load i32, ptr %238, align 4, !tbaa !160
  %240 = getelementptr inbounds %struct.DynamicPaintBrushSettings, ptr %231, i64 0, i32 5
  store i32 %239, ptr %240, align 4, !tbaa !160
  %241 = getelementptr inbounds %struct.DynamicPaintBrushSettings, ptr %234, i64 0, i32 3
  %242 = load ptr, ptr %241, align 8, !tbaa !161
  %243 = getelementptr inbounds %struct.DynamicPaintBrushSettings, ptr %231, i64 0, i32 3
  store ptr %242, ptr %243, align 8, !tbaa !161
  %244 = getelementptr inbounds %struct.DynamicPaintBrushSettings, ptr %234, i64 0, i32 6
  %245 = load float, ptr %244, align 8, !tbaa !162
  %246 = getelementptr inbounds %struct.DynamicPaintBrushSettings, ptr %231, i64 0, i32 6
  store float %245, ptr %246, align 8, !tbaa !162
  %247 = getelementptr inbounds %struct.DynamicPaintBrushSettings, ptr %234, i64 0, i32 7
  %248 = load float, ptr %247, align 4, !tbaa !163
  %249 = getelementptr inbounds %struct.DynamicPaintBrushSettings, ptr %231, i64 0, i32 7
  store float %248, ptr %249, align 4, !tbaa !163
  %250 = getelementptr inbounds %struct.DynamicPaintBrushSettings, ptr %234, i64 0, i32 8
  %251 = load float, ptr %250, align 8, !tbaa !164
  %252 = getelementptr inbounds %struct.DynamicPaintBrushSettings, ptr %231, i64 0, i32 8
  store float %251, ptr %252, align 8, !tbaa !164
  %253 = getelementptr inbounds %struct.DynamicPaintBrushSettings, ptr %234, i64 0, i32 9
  %254 = load float, ptr %253, align 4, !tbaa !165
  %255 = getelementptr inbounds %struct.DynamicPaintBrushSettings, ptr %231, i64 0, i32 9
  store float %254, ptr %255, align 4, !tbaa !165
  %256 = getelementptr inbounds %struct.DynamicPaintBrushSettings, ptr %234, i64 0, i32 10
  %257 = load float, ptr %256, align 8, !tbaa !166
  %258 = getelementptr inbounds %struct.DynamicPaintBrushSettings, ptr %231, i64 0, i32 10
  store float %257, ptr %258, align 8, !tbaa !166
  %259 = getelementptr inbounds %struct.DynamicPaintBrushSettings, ptr %234, i64 0, i32 11
  %260 = load float, ptr %259, align 4, !tbaa !169
  %261 = getelementptr inbounds %struct.DynamicPaintBrushSettings, ptr %231, i64 0, i32 11
  store float %260, ptr %261, align 4, !tbaa !169
  %262 = getelementptr inbounds %struct.DynamicPaintBrushSettings, ptr %234, i64 0, i32 12
  %263 = load float, ptr %262, align 8, !tbaa !170
  %264 = getelementptr inbounds %struct.DynamicPaintBrushSettings, ptr %231, i64 0, i32 12
  store float %263, ptr %264, align 8, !tbaa !170
  %265 = getelementptr inbounds %struct.DynamicPaintBrushSettings, ptr %234, i64 0, i32 13
  %266 = load float, ptr %265, align 4, !tbaa !167
  %267 = getelementptr inbounds %struct.DynamicPaintBrushSettings, ptr %231, i64 0, i32 13
  store float %266, ptr %267, align 4, !tbaa !167
  %268 = getelementptr inbounds %struct.DynamicPaintBrushSettings, ptr %234, i64 0, i32 2
  %269 = load ptr, ptr %268, align 8, !tbaa !158
  %270 = getelementptr inbounds %struct.DynamicPaintBrushSettings, ptr %231, i64 0, i32 2
  store ptr %269, ptr %270, align 8, !tbaa !158
  %271 = getelementptr inbounds %struct.DynamicPaintBrushSettings, ptr %234, i64 0, i32 14
  %272 = load ptr, ptr %271, align 8, !tbaa !70
  %273 = icmp eq ptr %272, null
  br i1 %273, label %277, label %274

274:                                              ; preds = %233
  %275 = getelementptr inbounds %struct.DynamicPaintBrushSettings, ptr %231, i64 0, i32 14
  %276 = load ptr, ptr %275, align 8, !tbaa !70
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(776) %276, ptr noundef nonnull align 4 dereferenceable(776) %272, i64 776, i1 false)
  br label %277

277:                                              ; preds = %274, %233
  %278 = getelementptr inbounds %struct.DynamicPaintBrushSettings, ptr %234, i64 0, i32 15
  %279 = load ptr, ptr %278, align 8, !tbaa !71
  %280 = icmp eq ptr %279, null
  br i1 %280, label %284, label %281

281:                                              ; preds = %277
  %282 = getelementptr inbounds %struct.DynamicPaintBrushSettings, ptr %231, i64 0, i32 15
  %283 = load ptr, ptr %282, align 8, !tbaa !71
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(776) %283, ptr noundef nonnull align 4 dereferenceable(776) %279, i64 776, i1 false)
  br label %284

284:                                              ; preds = %281, %277
  %285 = getelementptr inbounds %struct.DynamicPaintBrushSettings, ptr %234, i64 0, i32 16
  %286 = load i16, ptr %285, align 8, !tbaa !168
  %287 = getelementptr inbounds %struct.DynamicPaintBrushSettings, ptr %231, i64 0, i32 16
  store i16 %286, ptr %287, align 8, !tbaa !168
  %288 = getelementptr inbounds %struct.DynamicPaintBrushSettings, ptr %234, i64 0, i32 17
  %289 = load i16, ptr %288, align 2, !tbaa !171
  %290 = getelementptr inbounds %struct.DynamicPaintBrushSettings, ptr %231, i64 0, i32 17
  store i16 %289, ptr %290, align 2, !tbaa !171
  %291 = getelementptr inbounds %struct.DynamicPaintBrushSettings, ptr %234, i64 0, i32 18
  %292 = load i16, ptr %291, align 4, !tbaa !193
  %293 = getelementptr inbounds %struct.DynamicPaintBrushSettings, ptr %231, i64 0, i32 18
  store i16 %292, ptr %293, align 4, !tbaa !193
  %294 = getelementptr inbounds %struct.DynamicPaintBrushSettings, ptr %234, i64 0, i32 20
  %295 = load float, ptr %294, align 8, !tbaa !172
  %296 = getelementptr inbounds %struct.DynamicPaintBrushSettings, ptr %231, i64 0, i32 20
  store float %295, ptr %296, align 8, !tbaa !172
  %297 = getelementptr inbounds %struct.DynamicPaintBrushSettings, ptr %234, i64 0, i32 21
  %298 = load float, ptr %297, align 4, !tbaa !173
  %299 = getelementptr inbounds %struct.DynamicPaintBrushSettings, ptr %231, i64 0, i32 21
  store float %298, ptr %299, align 4, !tbaa !173
  %300 = getelementptr inbounds %struct.DynamicPaintBrushSettings, ptr %234, i64 0, i32 22
  %301 = load float, ptr %300, align 8, !tbaa !175
  %302 = getelementptr inbounds %struct.DynamicPaintBrushSettings, ptr %231, i64 0, i32 22
  store float %301, ptr %302, align 8, !tbaa !175
  %303 = getelementptr inbounds %struct.DynamicPaintBrushSettings, ptr %234, i64 0, i32 23
  %304 = load float, ptr %303, align 4, !tbaa !174
  %305 = getelementptr inbounds %struct.DynamicPaintBrushSettings, ptr %231, i64 0, i32 23
  store float %304, ptr %305, align 4, !tbaa !174
  br label %306

306:                                              ; preds = %225, %194, %229, %284
  ret void
}

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #7

; Function Attrs: nounwind uwtable
define dso_local void @dynamicPaint_clearSurface(ptr noundef %0, ptr noundef %1) local_unnamed_addr #4 {
  %3 = getelementptr inbounds %struct.DynamicPaintSurface, ptr %1, i64 0, i32 3
  %4 = load ptr, ptr %3, align 8, !tbaa !72
  %5 = icmp eq ptr %4, null
  br i1 %5, label %30, label %6

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.PaintSurfaceData, ptr %4, i64 0, i32 1
  %8 = load ptr, ptr %7, align 8, !tbaa !78
  %9 = icmp eq ptr %8, null
  br i1 %9, label %30, label %10

10:                                               ; preds = %6
  %11 = getelementptr inbounds %struct.DynamicPaintSurface, ptr %1, i64 0, i32 11
  %12 = load i16, ptr %11, align 2, !tbaa !43
  %13 = icmp eq i16 %12, 3
  %14 = select i1 %13, i32 16, i32 4
  %15 = icmp eq i16 %12, 0
  %16 = select i1 %15, i32 40, i32 %14
  %17 = getelementptr inbounds %struct.PaintSurfaceData, ptr %4, i64 0, i32 4
  %18 = load i32, ptr %17, align 8, !tbaa !194
  %19 = mul i32 %16, %18
  %20 = zext i32 %19 to i64
  tail call void @llvm.memset.p0.i64(ptr nonnull align 1 %8, i8 0, i64 %20, i1 false)
  %21 = load i16, ptr %11, align 2, !tbaa !43
  %22 = icmp eq i16 %21, 0
  br i1 %22, label %23, label %24

23:                                               ; preds = %10
  tail call fastcc void @dynamicPaint_setInitialColor(ptr noundef %0, ptr noundef %1)
  br label %24

24:                                               ; preds = %23, %10
  %25 = getelementptr inbounds %struct.PaintSurfaceData, ptr %4, i64 0, i32 3
  %26 = load ptr, ptr %25, align 8, !tbaa !85
  %27 = icmp eq ptr %26, null
  br i1 %27, label %30, label %28

28:                                               ; preds = %24
  %29 = getelementptr inbounds %struct.PaintBakeData, ptr %26, i64 0, i32 13
  store i32 1, ptr %29, align 8, !tbaa !195
  br label %30

30:                                               ; preds = %24, %28, %6, %2
  ret void
}

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #8

; Function Attrs: nounwind uwtable
define internal fastcc void @dynamicPaint_setInitialColor(ptr noundef %0, ptr noundef %1) unnamed_addr #4 {
  %3 = alloca [64 x i8], align 16
  %4 = alloca [3 x float], align 4
  %5 = alloca %struct.TexResult, align 8
  %6 = alloca [9 x float], align 16
  %7 = alloca [3 x float], align 4
  %8 = alloca %struct.TexResult, align 8
  %9 = alloca [3 x [4 x float]], align 16
  %10 = alloca [4 x float], align 16
  %11 = getelementptr inbounds %struct.DynamicPaintSurface, ptr %1, i64 0, i32 3
  %12 = load ptr, ptr %11, align 8, !tbaa !72
  %13 = getelementptr inbounds %struct.PaintSurfaceData, ptr %12, i64 0, i32 1
  %14 = load ptr, ptr %13, align 8, !tbaa !78
  %15 = getelementptr inbounds %struct.DynamicPaintSurface, ptr %1, i64 0, i32 2
  %16 = load ptr, ptr %15, align 8, !tbaa !57
  %17 = getelementptr inbounds %struct.DynamicPaintCanvasSettings, ptr %16, i64 0, i32 1
  %18 = load ptr, ptr %17, align 8, !tbaa !109
  %19 = tail call zeroext i8 @BKE_scene_check_color_management_enabled(ptr noundef %0) #18
  %20 = getelementptr inbounds %struct.DynamicPaintSurface, ptr %1, i64 0, i32 11
  %21 = load i16, ptr %20, align 2, !tbaa !43
  %22 = icmp eq i16 %21, 0
  br i1 %22, label %23, label %303

23:                                               ; preds = %2
  %24 = getelementptr inbounds %struct.DynamicPaintSurface, ptr %1, i64 0, i32 16
  %25 = load i16, ptr %24, align 8, !tbaa !188
  switch i16 %25, label %303 [
    i16 3, label %179
    i16 1, label %26
    i16 2, label %48
  ]

26:                                               ; preds = %23
  %27 = getelementptr inbounds %struct.PaintSurfaceData, ptr %12, i64 0, i32 4
  %28 = load i32, ptr %27, align 8, !tbaa !194
  %29 = icmp sgt i32 %28, 0
  br i1 %29, label %30, label %303

30:                                               ; preds = %26
  %31 = getelementptr inbounds %struct.DynamicPaintSurface, ptr %1, i64 0, i32 25
  %32 = getelementptr inbounds %struct.DynamicPaintSurface, ptr %1, i64 0, i32 25, i64 1
  %33 = getelementptr inbounds %struct.DynamicPaintSurface, ptr %1, i64 0, i32 25, i64 2
  %34 = getelementptr inbounds %struct.DynamicPaintSurface, ptr %1, i64 0, i32 25, i64 3
  %35 = zext nneg i32 %28 to i64
  br label %36

36:                                               ; preds = %30, %36
  %37 = phi i64 [ 0, %30 ], [ %46, %36 ]
  %38 = getelementptr inbounds %struct.PaintPoint, ptr %14, i64 %37, i32 4
  %39 = load float, ptr %31, align 4, !tbaa !123
  store float %39, ptr %38, align 4, !tbaa !123
  %40 = load float, ptr %32, align 4, !tbaa !123
  %41 = getelementptr inbounds float, ptr %38, i64 1
  store float %40, ptr %41, align 4, !tbaa !123
  %42 = load float, ptr %33, align 4, !tbaa !123
  %43 = getelementptr inbounds float, ptr %38, i64 2
  store float %42, ptr %43, align 4, !tbaa !123
  %44 = load float, ptr %34, align 4, !tbaa !123
  %45 = getelementptr inbounds %struct.PaintPoint, ptr %14, i64 %37, i32 5
  store float %44, ptr %45, align 4, !tbaa !196
  %46 = add nuw nsw i64 %37, 1
  %47 = icmp eq i64 %46, %35
  br i1 %47, label %303, label %36, !llvm.loop !198

48:                                               ; preds = %23
  %49 = getelementptr inbounds %struct.DynamicPaintSurface, ptr %1, i64 0, i32 26
  %50 = load ptr, ptr %49, align 8, !tbaa !189
  %51 = getelementptr inbounds %struct.DerivedMesh, ptr %18, i64 0, i32 33
  %52 = load ptr, ptr %51, align 8, !tbaa !199
  %53 = tail call ptr %52(ptr noundef %18) #18
  %54 = getelementptr inbounds %struct.DerivedMesh, ptr %18, i64 0, i32 25
  %55 = load ptr, ptr %54, align 8, !tbaa !200
  %56 = tail call i32 %55(ptr noundef %18) #18
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %3) #18
  %57 = icmp eq ptr %50, null
  br i1 %57, label %302, label %58

58:                                               ; preds = %48
  %59 = getelementptr inbounds %struct.DerivedMesh, ptr %18, i64 0, i32 2
  %60 = getelementptr inbounds %struct.DynamicPaintSurface, ptr %1, i64 0, i32 27
  call void @CustomData_validate_layer_name(ptr noundef nonnull %59, i32 noundef 5, ptr noundef nonnull %60, ptr noundef nonnull %3) #18
  %61 = call ptr @CustomData_get_layer_named(ptr noundef nonnull %59, i32 noundef 5, ptr noundef nonnull %3) #18
  %62 = icmp eq ptr %61, null
  br i1 %62, label %302, label %63

63:                                               ; preds = %58
  %64 = getelementptr inbounds %struct.DynamicPaintSurface, ptr %1, i64 0, i32 10
  %65 = load i16, ptr %64, align 4, !tbaa !34
  switch i16 %65, label %178 [
    i16 1, label %66
    i16 2, label %114
  ]

66:                                               ; preds = %63
  %67 = call ptr @BKE_image_pool_new() #18
  %68 = icmp sgt i32 %56, 0
  br i1 %68, label %69, label %113

69:                                               ; preds = %66
  %70 = getelementptr inbounds [3 x float], ptr %4, i64 0, i64 1
  %71 = getelementptr inbounds %struct.TexResult, ptr %5, i64 0, i32 1
  %72 = getelementptr inbounds %struct.TexResult, ptr %5, i64 0, i32 2
  %73 = getelementptr inbounds %struct.TexResult, ptr %5, i64 0, i32 3
  %74 = zext nneg i32 %56 to i64
  br label %75

75:                                               ; preds = %69, %110
  %76 = phi i64 [ 0, %69 ], [ %111, %110 ]
  %77 = getelementptr inbounds %struct.MFace, ptr %53, i64 %76
  %78 = getelementptr inbounds %struct.MFace, ptr %53, i64 %76, i32 3
  %79 = load i32, ptr %78, align 4, !tbaa !201
  %80 = icmp eq i32 %79, 0
  %81 = select i1 %80, i64 3, i64 4
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %4) #18
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %4, i8 0, i64 12, i1 false)
  %82 = getelementptr inbounds %struct.MTFace, ptr %61, i64 %76
  br label %83

83:                                               ; preds = %75, %107
  %84 = phi i64 [ 0, %75 ], [ %108, %107 ]
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %5) #18
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %5, i8 0, i64 32, i1 false)
  %85 = getelementptr inbounds i32, ptr %77, i64 %84
  %86 = getelementptr inbounds [4 x [2 x float]], ptr %82, i64 0, i64 %84
  %87 = load float, ptr %86, align 8, !tbaa !123
  %88 = call float @llvm.fmuladd.f32(float %87, float 2.000000e+00, float -1.000000e+00)
  store float %88, ptr %4, align 4, !tbaa !123
  %89 = getelementptr inbounds [4 x [2 x float]], ptr %82, i64 0, i64 %84, i64 1
  %90 = load float, ptr %89, align 4, !tbaa !123
  %91 = call float @llvm.fmuladd.f32(float %90, float 2.000000e+00, float -1.000000e+00)
  store float %91, ptr %70, align 4, !tbaa !123
  %92 = call i32 @multitex_ext_safe(ptr noundef nonnull %50, ptr noundef nonnull %4, ptr noundef nonnull %5, ptr noundef %67, i8 noundef zeroext %19) #18
  %93 = load float, ptr %5, align 8, !tbaa !203
  %94 = load i32, ptr %85, align 4, !tbaa !205
  %95 = zext i32 %94 to i64
  %96 = getelementptr inbounds %struct.PaintPoint, ptr %14, i64 %95, i32 5
  %97 = load float, ptr %96, align 4, !tbaa !196
  %98 = fcmp ogt float %93, %97
  br i1 %98, label %99, label %107

99:                                               ; preds = %83
  %100 = getelementptr inbounds %struct.PaintPoint, ptr %14, i64 %95, i32 4
  %101 = load float, ptr %71, align 4, !tbaa !123
  store float %101, ptr %100, align 4, !tbaa !123
  %102 = load float, ptr %72, align 8, !tbaa !123
  %103 = getelementptr inbounds float, ptr %100, i64 1
  store float %102, ptr %103, align 4, !tbaa !123
  %104 = load float, ptr %73, align 4, !tbaa !123
  %105 = getelementptr inbounds float, ptr %100, i64 2
  store float %104, ptr %105, align 4, !tbaa !123
  %106 = load float, ptr %5, align 8, !tbaa !203
  store float %106, ptr %96, align 4, !tbaa !196
  br label %107

107:                                              ; preds = %99, %83
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %5) #18
  %108 = add nuw nsw i64 %84, 1
  %109 = icmp eq i64 %108, %81
  br i1 %109, label %110, label %83, !llvm.loop !206

110:                                              ; preds = %107
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %4) #18
  %111 = add nuw nsw i64 %76, 1
  %112 = icmp eq i64 %111, %74
  br i1 %112, label %113, label %75, !llvm.loop !207

113:                                              ; preds = %110, %66
  call void @BKE_image_pool_free(ptr noundef %67) #18
  br label %178

114:                                              ; preds = %63
  %115 = load ptr, ptr %12, align 8, !tbaa !73
  %116 = getelementptr inbounds %struct.PaintSurfaceData, ptr %12, i64 0, i32 4
  %117 = load i32, ptr %116, align 8, !tbaa !194
  %118 = icmp sgt i32 %117, 0
  br i1 %118, label %119, label %178

119:                                              ; preds = %114
  %120 = getelementptr inbounds %struct.DynamicPaintSurface, ptr %1, i64 0, i32 18
  %121 = load i32, ptr %120, align 4, !tbaa !50
  %122 = and i32 %121, 2
  %123 = icmp eq i32 %122, 0
  %124 = select i1 %123, i64 1, i64 5
  %125 = getelementptr inbounds [9 x float], ptr %6, i64 0, i64 3
  %126 = getelementptr inbounds [9 x float], ptr %6, i64 0, i64 6
  %127 = getelementptr inbounds %struct.ImgSeqFormatData, ptr %115, i64 0, i32 1
  %128 = getelementptr inbounds [3 x float], ptr %7, i64 0, i64 1
  %129 = getelementptr inbounds %struct.TexResult, ptr %8, i64 0, i32 1
  %130 = getelementptr inbounds %struct.TexResult, ptr %8, i64 0, i32 2
  %131 = getelementptr inbounds %struct.TexResult, ptr %8, i64 0, i32 3
  br label %132

132:                                              ; preds = %119, %157
  %133 = phi i64 [ 0, %119 ], [ %174, %157 ]
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %6) #18
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(36) %6, i8 0, i64 36, i1 false)
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %7) #18
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %7, i8 0, i64 12, i1 false)
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %8) #18
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %8, i8 0, i64 32, i1 false)
  %134 = load ptr, ptr %115, align 8, !tbaa !75
  %135 = getelementptr inbounds %struct.PaintUVPoint, ptr %134, i64 %133
  %136 = getelementptr inbounds %struct.PaintUVPoint, ptr %134, i64 %133, i32 6
  %137 = load i16, ptr %136, align 4, !tbaa !208
  %138 = icmp ne i16 %137, 0
  %139 = load i32, ptr %135, align 4, !tbaa !210
  %140 = zext i32 %139 to i64
  %141 = getelementptr inbounds %struct.MTFace, ptr %61, i64 %140
  br label %142

142:                                              ; preds = %132, %142
  %143 = phi i64 [ 0, %132 ], [ %146, %142 ]
  %144 = icmp ne i64 %143, 0
  %145 = and i1 %144, %138
  %146 = add nuw nsw i64 %143, 1
  %147 = select i1 %145, i64 %146, i64 %143
  %148 = mul nuw nsw i64 %143, 3
  %149 = getelementptr inbounds [9 x float], ptr %6, i64 0, i64 %148
  %150 = and i64 %147, 4294967295
  %151 = getelementptr inbounds [4 x [2 x float]], ptr %141, i64 0, i64 %150
  %152 = load float, ptr %151, align 4, !tbaa !123
  store float %152, ptr %149, align 4, !tbaa !123
  %153 = getelementptr inbounds float, ptr %151, i64 1
  %154 = load float, ptr %153, align 4, !tbaa !123
  %155 = getelementptr inbounds float, ptr %149, i64 1
  store float %154, ptr %155, align 4, !tbaa !123
  %156 = icmp eq i64 %146, 3
  br i1 %156, label %157, label %142, !llvm.loop !211

157:                                              ; preds = %142
  %158 = load ptr, ptr %127, align 8, !tbaa !77
  %159 = mul nuw nsw i64 %133, %124
  %160 = getelementptr inbounds %struct.Vec3f, ptr %158, i64 %159
  call void @interp_v3_v3v3v3(ptr noundef nonnull %7, ptr noundef nonnull %6, ptr noundef nonnull %125, ptr noundef nonnull %126, ptr noundef %160) #18
  %161 = load float, ptr %7, align 4, !tbaa !123
  %162 = call float @llvm.fmuladd.f32(float %161, float 2.000000e+00, float -1.000000e+00)
  store float %162, ptr %7, align 4, !tbaa !123
  %163 = load float, ptr %128, align 4, !tbaa !123
  %164 = call float @llvm.fmuladd.f32(float %163, float 2.000000e+00, float -1.000000e+00)
  store float %164, ptr %128, align 4, !tbaa !123
  %165 = call i32 @multitex_ext_safe(ptr noundef nonnull %50, ptr noundef nonnull %7, ptr noundef nonnull %8, ptr noundef null, i8 noundef zeroext %19) #18
  %166 = getelementptr inbounds %struct.PaintPoint, ptr %14, i64 %133, i32 4
  %167 = load float, ptr %129, align 4, !tbaa !123
  store float %167, ptr %166, align 4, !tbaa !123
  %168 = load float, ptr %130, align 8, !tbaa !123
  %169 = getelementptr inbounds float, ptr %166, i64 1
  store float %168, ptr %169, align 4, !tbaa !123
  %170 = load float, ptr %131, align 4, !tbaa !123
  %171 = getelementptr inbounds float, ptr %166, i64 2
  store float %170, ptr %171, align 4, !tbaa !123
  %172 = load float, ptr %8, align 8, !tbaa !203
  %173 = getelementptr inbounds %struct.PaintPoint, ptr %14, i64 %133, i32 5
  store float %172, ptr %173, align 4, !tbaa !196
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %8) #18
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %7) #18
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %6) #18
  %174 = add nuw nsw i64 %133, 1
  %175 = load i32, ptr %116, align 8, !tbaa !194
  %176 = sext i32 %175 to i64
  %177 = icmp slt i64 %174, %176
  br i1 %177, label %132, label %178, !llvm.loop !212

178:                                              ; preds = %157, %114, %113, %63
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %3) #18
  br label %303

179:                                              ; preds = %23
  %180 = getelementptr inbounds %struct.DynamicPaintSurface, ptr %1, i64 0, i32 10
  %181 = load i16, ptr %180, align 4, !tbaa !34
  switch i16 %181, label %303 [
    i16 1, label %182
    i16 2, label %224
  ]

182:                                              ; preds = %179
  %183 = getelementptr inbounds %struct.DerivedMesh, ptr %18, i64 0, i32 34
  %184 = load ptr, ptr %183, align 8, !tbaa !213
  %185 = tail call ptr %184(ptr noundef %18) #18
  %186 = getelementptr inbounds %struct.DerivedMesh, ptr %18, i64 0, i32 26
  %187 = load ptr, ptr %186, align 8, !tbaa !214
  %188 = tail call i32 %187(ptr noundef %18) #18
  %189 = getelementptr inbounds %struct.DerivedMesh, ptr %18, i64 0, i32 3
  %190 = getelementptr inbounds %struct.DynamicPaintSurface, ptr %1, i64 0, i32 27
  %191 = tail call ptr @CustomData_get_layer_named(ptr noundef nonnull %189, i32 noundef 17, ptr noundef nonnull %190) #18
  %192 = icmp ne ptr %191, null
  %193 = icmp sgt i32 %188, 0
  %194 = select i1 %192, i1 %193, i1 false
  br i1 %194, label %195, label %303

195:                                              ; preds = %182
  %196 = zext i32 %188 to i64
  br label %197

197:                                              ; preds = %195, %197
  %198 = phi i64 [ 0, %195 ], [ %222, %197 ]
  %199 = getelementptr inbounds %struct.MCol, ptr %191, i64 %198
  %200 = getelementptr inbounds %struct.MCol, ptr %191, i64 %198, i32 3
  %201 = load i8, ptr %200, align 1, !tbaa !215
  %202 = uitofp i8 %201 to float
  %203 = fmul float %202, 0x3F70101020000000
  %204 = getelementptr inbounds %struct.MLoop, ptr %185, i64 %198
  %205 = load i32, ptr %204, align 4, !tbaa !217
  %206 = zext i32 %205 to i64
  %207 = getelementptr inbounds %struct.PaintPoint, ptr %14, i64 %206, i32 4
  store float %203, ptr %207, align 4, !tbaa !123
  %208 = getelementptr inbounds %struct.MCol, ptr %191, i64 %198, i32 2
  %209 = load i8, ptr %208, align 1, !tbaa !219
  %210 = uitofp i8 %209 to float
  %211 = fmul float %210, 0x3F70101020000000
  %212 = getelementptr inbounds %struct.PaintPoint, ptr %14, i64 %206, i32 4, i64 1
  store float %211, ptr %212, align 4, !tbaa !123
  %213 = getelementptr inbounds %struct.MCol, ptr %191, i64 %198, i32 1
  %214 = load i8, ptr %213, align 1, !tbaa !220
  %215 = uitofp i8 %214 to float
  %216 = fmul float %215, 0x3F70101020000000
  %217 = getelementptr inbounds %struct.PaintPoint, ptr %14, i64 %206, i32 4, i64 2
  store float %216, ptr %217, align 4, !tbaa !123
  %218 = load i8, ptr %199, align 1, !tbaa !221
  %219 = uitofp i8 %218 to float
  %220 = fmul float %219, 0x3F70101020000000
  %221 = getelementptr inbounds %struct.PaintPoint, ptr %14, i64 %206, i32 5
  store float %220, ptr %221, align 4, !tbaa !196
  %222 = add nuw nsw i64 %198, 1
  %223 = icmp eq i64 %222, %196
  br i1 %223, label %303, label %197, !llvm.loop !222

224:                                              ; preds = %179
  %225 = load ptr, ptr %12, align 8, !tbaa !73
  %226 = getelementptr inbounds %struct.DynamicPaintSurface, ptr %1, i64 0, i32 18
  %227 = load i32, ptr %226, align 4, !tbaa !50
  %228 = and i32 %227, 2
  %229 = icmp eq i32 %228, 0
  %230 = select i1 %229, i64 1, i64 5
  %231 = getelementptr inbounds %struct.DerivedMesh, ptr %18, i64 0, i32 2
  %232 = getelementptr inbounds %struct.DynamicPaintSurface, ptr %1, i64 0, i32 27
  %233 = tail call ptr @CustomData_get_layer_named(ptr noundef nonnull %231, i32 noundef 6, ptr noundef nonnull %232) #18
  %234 = icmp eq ptr %233, null
  br i1 %234, label %303, label %235

235:                                              ; preds = %224
  %236 = getelementptr inbounds %struct.PaintSurfaceData, ptr %12, i64 0, i32 4
  %237 = load i32, ptr %236, align 8, !tbaa !194
  %238 = icmp sgt i32 %237, 0
  br i1 %238, label %239, label %303

239:                                              ; preds = %235
  %240 = getelementptr inbounds [3 x [4 x float]], ptr %9, i64 0, i64 1
  %241 = getelementptr inbounds [3 x [4 x float]], ptr %9, i64 0, i64 2
  %242 = getelementptr inbounds %struct.ImgSeqFormatData, ptr %225, i64 0, i32 1
  %243 = getelementptr inbounds float, ptr %10, i64 1
  %244 = getelementptr inbounds float, ptr %10, i64 2
  %245 = getelementptr inbounds [4 x float], ptr %10, i64 0, i64 3
  br label %246

246:                                              ; preds = %239, %286
  %247 = phi i64 [ 0, %239 ], [ %298, %286 ]
  %248 = load ptr, ptr %225, align 8, !tbaa !75
  %249 = getelementptr inbounds %struct.PaintUVPoint, ptr %248, i64 %247
  %250 = load i32, ptr %249, align 4, !tbaa !210
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %9) #18
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(48) %9, i8 0, i64 48, i1 false)
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %10) #18
  %251 = load ptr, ptr %225, align 8, !tbaa !75
  %252 = getelementptr inbounds %struct.PaintUVPoint, ptr %251, i64 %247, i32 6
  %253 = load i16, ptr %252, align 4, !tbaa !208
  %254 = icmp ne i16 %253, 0
  %255 = shl nsw i32 %250, 2
  br label %256

256:                                              ; preds = %246, %256
  %257 = phi i64 [ 0, %246 ], [ %260, %256 ]
  %258 = icmp ne i64 %257, 0
  %259 = and i1 %258, %254
  %260 = add nuw nsw i64 %257, 1
  %261 = select i1 %259, i64 %260, i64 %257
  %262 = trunc i64 %261 to i32
  %263 = add nsw i32 %255, %262
  %264 = sext i32 %263 to i64
  %265 = getelementptr inbounds %struct.MCol, ptr %233, i64 %264
  %266 = getelementptr inbounds %struct.MCol, ptr %233, i64 %264, i32 3
  %267 = load i8, ptr %266, align 1, !tbaa !215
  %268 = uitofp i8 %267 to float
  %269 = fmul float %268, 0x3F70101020000000
  %270 = getelementptr inbounds [3 x [4 x float]], ptr %9, i64 0, i64 %257
  store float %269, ptr %270, align 16, !tbaa !123
  %271 = getelementptr inbounds %struct.MCol, ptr %233, i64 %264, i32 2
  %272 = load i8, ptr %271, align 1, !tbaa !219
  %273 = uitofp i8 %272 to float
  %274 = fmul float %273, 0x3F70101020000000
  %275 = getelementptr inbounds [3 x [4 x float]], ptr %9, i64 0, i64 %257, i64 1
  store float %274, ptr %275, align 4, !tbaa !123
  %276 = getelementptr inbounds %struct.MCol, ptr %233, i64 %264, i32 1
  %277 = load i8, ptr %276, align 1, !tbaa !220
  %278 = uitofp i8 %277 to float
  %279 = fmul float %278, 0x3F70101020000000
  %280 = getelementptr inbounds [3 x [4 x float]], ptr %9, i64 0, i64 %257, i64 2
  store float %279, ptr %280, align 8, !tbaa !123
  %281 = load i8, ptr %265, align 1, !tbaa !221
  %282 = uitofp i8 %281 to float
  %283 = fmul float %282, 0x3F70101020000000
  %284 = getelementptr inbounds [3 x [4 x float]], ptr %9, i64 0, i64 %257, i64 3
  store float %283, ptr %284, align 4, !tbaa !123
  %285 = icmp eq i64 %260, 3
  br i1 %285, label %286, label %256, !llvm.loop !223

286:                                              ; preds = %256
  %287 = load ptr, ptr %242, align 8, !tbaa !77
  %288 = mul nuw nsw i64 %247, %230
  %289 = getelementptr inbounds %struct.Vec3f, ptr %287, i64 %288
  call void @interp_v4_v4v4v4(ptr noundef nonnull %10, ptr noundef nonnull %9, ptr noundef nonnull %240, ptr noundef nonnull %241, ptr noundef %289) #18
  %290 = getelementptr inbounds %struct.PaintPoint, ptr %14, i64 %247, i32 4
  %291 = load float, ptr %10, align 16, !tbaa !123
  store float %291, ptr %290, align 4, !tbaa !123
  %292 = load float, ptr %243, align 4, !tbaa !123
  %293 = getelementptr inbounds float, ptr %290, i64 1
  store float %292, ptr %293, align 4, !tbaa !123
  %294 = load float, ptr %244, align 8, !tbaa !123
  %295 = getelementptr inbounds float, ptr %290, i64 2
  store float %294, ptr %295, align 4, !tbaa !123
  %296 = load float, ptr %245, align 4, !tbaa !123
  %297 = getelementptr inbounds %struct.PaintPoint, ptr %14, i64 %247, i32 5
  store float %296, ptr %297, align 4, !tbaa !196
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %10) #18
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %9) #18
  %298 = add nuw nsw i64 %247, 1
  %299 = load i32, ptr %236, align 8, !tbaa !194
  %300 = sext i32 %299 to i64
  %301 = icmp slt i64 %298, %300
  br i1 %301, label %246, label %303, !llvm.loop !224

302:                                              ; preds = %58, %48
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %3) #18
  br label %303

303:                                              ; preds = %36, %286, %197, %26, %235, %224, %182, %178, %23, %179, %302, %2
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local noundef zeroext i8 @dynamicPaint_resetSurface(ptr noundef %0, ptr noundef %1) local_unnamed_addr #4 {
  %3 = getelementptr inbounds %struct.DynamicPaintSurface, ptr %1, i64 0, i32 10
  %4 = load i16, ptr %3, align 4, !tbaa !34
  %5 = icmp eq i16 %4, 1
  br i1 %5, label %6, label %16

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.DynamicPaintSurface, ptr %1, i64 0, i32 2
  %8 = load ptr, ptr %7, align 8, !tbaa !57
  %9 = getelementptr inbounds %struct.DynamicPaintCanvasSettings, ptr %8, i64 0, i32 1
  %10 = load ptr, ptr %9, align 8, !tbaa !109
  %11 = icmp eq ptr %10, null
  br i1 %11, label %16, label %12

12:                                               ; preds = %6
  %13 = getelementptr inbounds %struct.DerivedMesh, ptr %10, i64 0, i32 23
  %14 = load ptr, ptr %13, align 8, !tbaa !225
  %15 = tail call i32 %14(ptr noundef nonnull %10) #18
  br label %16

16:                                               ; preds = %2, %6, %12
  %17 = phi i32 [ %15, %12 ], [ 0, %6 ], [ 0, %2 ]
  %18 = getelementptr inbounds %struct.DynamicPaintSurface, ptr %1, i64 0, i32 3
  %19 = load ptr, ptr %18, align 8, !tbaa !72
  %20 = icmp eq ptr %19, null
  br i1 %20, label %22, label %21

21:                                               ; preds = %16
  tail call void @dynamicPaint_freeSurfaceData(ptr noundef %1)
  br label %22

22:                                               ; preds = %21, %16
  %23 = load i16, ptr %3, align 4, !tbaa !34
  %24 = icmp eq i16 %23, 2
  br i1 %24, label %37, label %25

25:                                               ; preds = %22
  %26 = icmp slt i32 %17, 1
  br i1 %26, label %37, label %27

27:                                               ; preds = %25
  %28 = load ptr, ptr @MEM_callocN, align 8, !tbaa !44
  %29 = tail call ptr %28(i64 noundef 40, ptr noundef nonnull @.str.11) #18
  store ptr %29, ptr %18, align 8, !tbaa !72
  %30 = icmp eq ptr %29, null
  br i1 %30, label %37, label %31

31:                                               ; preds = %27
  %32 = getelementptr inbounds %struct.PaintSurfaceData, ptr %29, i64 0, i32 4
  store i32 %17, ptr %32, align 8, !tbaa !194
  tail call fastcc void @dynamicPaint_allocateSurfaceType(ptr noundef %1)
  tail call fastcc void @dynamicPaint_initAdjacencyData(ptr noundef %1, i32 noundef 0)
  %33 = getelementptr inbounds %struct.DynamicPaintSurface, ptr %1, i64 0, i32 11
  %34 = load i16, ptr %33, align 2, !tbaa !43
  %35 = icmp eq i16 %34, 0
  br i1 %35, label %36, label %37

36:                                               ; preds = %31
  tail call fastcc void @dynamicPaint_setInitialColor(ptr noundef %0, ptr noundef %1)
  br label %37

37:                                               ; preds = %31, %36, %27, %25, %22
  %38 = phi i8 [ 1, %22 ], [ 0, %25 ], [ 0, %27 ], [ 1, %36 ], [ 1, %31 ]
  ret i8 %38
}

; Function Attrs: nounwind uwtable
define internal fastcc void @dynamicPaint_allocateSurfaceType(ptr nocapture noundef readonly %0) unnamed_addr #4 {
  %2 = getelementptr inbounds %struct.DynamicPaintSurface, ptr %0, i64 0, i32 3
  %3 = load ptr, ptr %2, align 8, !tbaa !72
  %4 = getelementptr inbounds %struct.DynamicPaintSurface, ptr %0, i64 0, i32 11
  %5 = load i16, ptr %4, align 2, !tbaa !43
  switch i16 %5, label %37 [
    i16 0, label %6
    i16 1, label %13
    i16 2, label %20
    i16 3, label %27
  ]

6:                                                ; preds = %1
  %7 = load ptr, ptr @MEM_callocN, align 8, !tbaa !44
  %8 = getelementptr inbounds %struct.PaintSurfaceData, ptr %3, i64 0, i32 4
  %9 = load i32, ptr %8, align 8, !tbaa !194
  %10 = sext i32 %9 to i64
  %11 = mul nsw i64 %10, 40
  %12 = tail call ptr %7(i64 noundef %11, ptr noundef nonnull @.str.26) #18
  br label %34

13:                                               ; preds = %1
  %14 = load ptr, ptr @MEM_callocN, align 8, !tbaa !44
  %15 = getelementptr inbounds %struct.PaintSurfaceData, ptr %3, i64 0, i32 4
  %16 = load i32, ptr %15, align 8, !tbaa !194
  %17 = sext i32 %16 to i64
  %18 = shl nsw i64 %17, 2
  %19 = tail call ptr %14(i64 noundef %18, ptr noundef nonnull @.str.27) #18
  br label %34

20:                                               ; preds = %1
  %21 = load ptr, ptr @MEM_callocN, align 8, !tbaa !44
  %22 = getelementptr inbounds %struct.PaintSurfaceData, ptr %3, i64 0, i32 4
  %23 = load i32, ptr %22, align 8, !tbaa !194
  %24 = sext i32 %23 to i64
  %25 = shl nsw i64 %24, 2
  %26 = tail call ptr %21(i64 noundef %25, ptr noundef nonnull @.str.28) #18
  br label %34

27:                                               ; preds = %1
  %28 = load ptr, ptr @MEM_callocN, align 8, !tbaa !44
  %29 = getelementptr inbounds %struct.PaintSurfaceData, ptr %3, i64 0, i32 4
  %30 = load i32, ptr %29, align 8, !tbaa !194
  %31 = sext i32 %30 to i64
  %32 = shl nsw i64 %31, 4
  %33 = tail call ptr %28(i64 noundef %32, ptr noundef nonnull @.str.29) #18
  br label %34

34:                                               ; preds = %6, %13, %20, %27
  %35 = phi ptr [ %33, %27 ], [ %26, %20 ], [ %19, %13 ], [ %12, %6 ]
  %36 = getelementptr inbounds %struct.PaintSurfaceData, ptr %3, i64 0, i32 1
  store ptr %35, ptr %36, align 8, !tbaa !78
  br label %37

37:                                               ; preds = %34, %1
  %38 = getelementptr inbounds %struct.PaintSurfaceData, ptr %3, i64 0, i32 1
  %39 = load ptr, ptr %38, align 8, !tbaa !78
  %40 = icmp eq ptr %39, null
  br i1 %40, label %41, label %46

41:                                               ; preds = %37
  %42 = getelementptr inbounds %struct.DynamicPaintSurface, ptr %0, i64 0, i32 2
  %43 = load ptr, ptr %42, align 8, !tbaa !57
  %44 = getelementptr inbounds %struct.DynamicPaintCanvasSettings, ptr %43, i64 0, i32 6
  %45 = tail call ptr @BLI_strncpy(ptr noundef nonnull %44, ptr noundef nonnull @.str.17, i64 noundef 64) #18
  br label %46

46:                                               ; preds = %41, %37
  ret void
}

; Function Attrs: nounwind uwtable
define internal fastcc void @dynamicPaint_initAdjacencyData(ptr nocapture noundef readonly %0, i32 noundef %1) unnamed_addr #4 {
  %3 = getelementptr inbounds %struct.DynamicPaintSurface, ptr %0, i64 0, i32 3
  %4 = load ptr, ptr %3, align 8, !tbaa !72
  %5 = getelementptr inbounds %struct.DynamicPaintSurface, ptr %0, i64 0, i32 2
  %6 = load ptr, ptr %5, align 8, !tbaa !57
  %7 = getelementptr inbounds %struct.DynamicPaintCanvasSettings, ptr %6, i64 0, i32 1
  %8 = load ptr, ptr %7, align 8, !tbaa !109
  %9 = getelementptr inbounds %struct.DynamicPaintSurface, ptr %0, i64 0, i32 11
  %10 = load i16, ptr %9, align 2, !tbaa !43
  switch i16 %10, label %17 [
    i16 0, label %11
    i16 3, label %27
  ]

11:                                               ; preds = %2
  %12 = getelementptr inbounds %struct.DynamicPaintSurface, ptr %0, i64 0, i32 19
  %13 = load i32, ptr %12, align 8, !tbaa !113
  %14 = icmp ne i32 %13, 0
  %15 = icmp eq i16 %10, 3
  %16 = or i1 %15, %14
  br i1 %16, label %27, label %17

17:                                               ; preds = %11, %2
  %18 = getelementptr inbounds %struct.DynamicPaintSurface, ptr %0, i64 0, i32 10
  %19 = load i16, ptr %18, align 4, !tbaa !34
  %20 = icmp eq i16 %19, 1
  br i1 %20, label %21, label %26

21:                                               ; preds = %17
  %22 = getelementptr inbounds %struct.DynamicPaintSurface, ptr %0, i64 0, i32 18
  %23 = load i32, ptr %22, align 4, !tbaa !50
  %24 = and i32 %23, 2
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %26, label %27

26:                                               ; preds = %21, %17
  br label %27

27:                                               ; preds = %2, %11, %21, %26
  %28 = phi i32 [ 0, %26 ], [ 1, %21 ], [ 1, %11 ], [ 1, %2 ]
  %29 = or i32 %28, %1
  %30 = icmp eq i32 %29, 0
  br i1 %30, label %284, label %31

31:                                               ; preds = %27
  %32 = getelementptr inbounds %struct.DynamicPaintSurface, ptr %0, i64 0, i32 10
  %33 = load i16, ptr %32, align 4, !tbaa !34
  switch i16 %33, label %43 [
    i16 1, label %34
    i16 2, label %39
  ]

34:                                               ; preds = %31
  %35 = getelementptr inbounds %struct.DerivedMesh, ptr %8, i64 0, i32 24
  %36 = load ptr, ptr %35, align 8, !tbaa !226
  %37 = tail call i32 %36(ptr noundef %8) #18
  %38 = shl nsw i32 %37, 1
  br label %43

39:                                               ; preds = %31
  %40 = getelementptr inbounds %struct.PaintSurfaceData, ptr %4, i64 0, i32 4
  %41 = load i32, ptr %40, align 8, !tbaa !194
  %42 = shl nsw i32 %41, 3
  br label %43

43:                                               ; preds = %31, %39, %34
  %44 = phi i32 [ %38, %34 ], [ %42, %39 ], [ 0, %31 ]
  %45 = icmp eq i32 %44, 0
  br i1 %45, label %284, label %46

46:                                               ; preds = %43
  %47 = load ptr, ptr @MEM_callocN, align 8, !tbaa !44
  %48 = tail call ptr %47(i64 noundef 40, ptr noundef nonnull @.str.30) #18
  %49 = getelementptr inbounds %struct.PaintSurfaceData, ptr %4, i64 0, i32 2
  store ptr %48, ptr %49, align 8, !tbaa !79
  %50 = icmp eq ptr %48, null
  br i1 %50, label %284, label %51

51:                                               ; preds = %46
  %52 = load ptr, ptr @MEM_callocN, align 8, !tbaa !44
  %53 = getelementptr inbounds %struct.PaintSurfaceData, ptr %4, i64 0, i32 4
  %54 = load i32, ptr %53, align 8, !tbaa !194
  %55 = sext i32 %54 to i64
  %56 = shl nsw i64 %55, 2
  %57 = tail call ptr %52(i64 noundef %56, ptr noundef nonnull @.str.31) #18
  %58 = getelementptr inbounds %struct.PaintAdjData, ptr %48, i64 0, i32 1
  store ptr %57, ptr %58, align 8, !tbaa !80
  %59 = load ptr, ptr @MEM_callocN, align 8, !tbaa !44
  %60 = load i32, ptr %53, align 8, !tbaa !194
  %61 = sext i32 %60 to i64
  %62 = shl nsw i64 %61, 2
  %63 = tail call ptr %59(i64 noundef %62, ptr noundef nonnull @.str.32) #18
  %64 = getelementptr inbounds %struct.PaintAdjData, ptr %48, i64 0, i32 2
  store ptr %63, ptr %64, align 8, !tbaa !82
  %65 = load ptr, ptr @MEM_callocN, align 8, !tbaa !44
  %66 = load i32, ptr %53, align 8, !tbaa !194
  %67 = sext i32 %66 to i64
  %68 = shl nsw i64 %67, 2
  %69 = tail call ptr %65(i64 noundef %68, ptr noundef nonnull @.str.33) #18
  %70 = load ptr, ptr @MEM_callocN, align 8, !tbaa !44
  %71 = sext i32 %44 to i64
  %72 = shl nsw i64 %71, 2
  %73 = tail call ptr %70(i64 noundef %72, ptr noundef nonnull @.str.34) #18
  store ptr %73, ptr %48, align 8, !tbaa !83
  %74 = load ptr, ptr @MEM_callocN, align 8, !tbaa !44
  %75 = load i32, ptr %53, align 8, !tbaa !194
  %76 = sext i32 %75 to i64
  %77 = shl nsw i64 %76, 2
  %78 = tail call ptr %74(i64 noundef %77, ptr noundef nonnull @.str.35) #18
  %79 = getelementptr inbounds %struct.PaintAdjData, ptr %48, i64 0, i32 3
  store ptr %78, ptr %79, align 8, !tbaa !84
  %80 = getelementptr inbounds %struct.PaintAdjData, ptr %48, i64 0, i32 4
  store i32 %44, ptr %80, align 8, !tbaa !227
  %81 = load ptr, ptr %58, align 8, !tbaa !80
  %82 = icmp eq ptr %81, null
  br i1 %82, label %91, label %83

83:                                               ; preds = %51
  %84 = load ptr, ptr %64, align 8, !tbaa !82
  %85 = icmp eq ptr %84, null
  br i1 %85, label %91, label %86

86:                                               ; preds = %83
  %87 = load ptr, ptr %48, align 8, !tbaa !83
  %88 = icmp ne ptr %87, null
  %89 = icmp ne ptr %69, null
  %90 = select i1 %88, i1 %89, i1 false
  br i1 %90, label %131, label %91

91:                                               ; preds = %86, %83, %51
  %92 = load ptr, ptr %49, align 8, !tbaa !79
  %93 = icmp eq ptr %92, null
  br i1 %93, label %123, label %94

94:                                               ; preds = %91
  %95 = getelementptr inbounds %struct.PaintAdjData, ptr %92, i64 0, i32 1
  %96 = load ptr, ptr %95, align 8, !tbaa !80
  %97 = icmp eq ptr %96, null
  br i1 %97, label %100, label %98

98:                                               ; preds = %94
  %99 = load ptr, ptr @MEM_freeN, align 8, !tbaa !44
  tail call void %99(ptr noundef nonnull %96) #18
  br label %100

100:                                              ; preds = %98, %94
  %101 = load ptr, ptr %49, align 8, !tbaa !79
  %102 = getelementptr inbounds %struct.PaintAdjData, ptr %101, i64 0, i32 2
  %103 = load ptr, ptr %102, align 8, !tbaa !82
  %104 = icmp eq ptr %103, null
  br i1 %104, label %107, label %105

105:                                              ; preds = %100
  %106 = load ptr, ptr @MEM_freeN, align 8, !tbaa !44
  tail call void %106(ptr noundef nonnull %103) #18
  br label %107

107:                                              ; preds = %105, %100
  %108 = load ptr, ptr %49, align 8, !tbaa !79
  %109 = load ptr, ptr %108, align 8, !tbaa !83
  %110 = icmp eq ptr %109, null
  br i1 %110, label %113, label %111

111:                                              ; preds = %107
  %112 = load ptr, ptr @MEM_freeN, align 8, !tbaa !44
  tail call void %112(ptr noundef nonnull %109) #18
  br label %113

113:                                              ; preds = %111, %107
  %114 = load ptr, ptr %49, align 8, !tbaa !79
  %115 = getelementptr inbounds %struct.PaintAdjData, ptr %114, i64 0, i32 3
  %116 = load ptr, ptr %115, align 8, !tbaa !84
  %117 = icmp eq ptr %116, null
  br i1 %117, label %120, label %118

118:                                              ; preds = %113
  %119 = load ptr, ptr @MEM_freeN, align 8, !tbaa !44
  tail call void %119(ptr noundef nonnull %116) #18
  br label %120

120:                                              ; preds = %118, %113
  %121 = load ptr, ptr @MEM_freeN, align 8, !tbaa !44
  %122 = load ptr, ptr %49, align 8, !tbaa !79
  tail call void %121(ptr noundef %122) #18
  store ptr null, ptr %49, align 8, !tbaa !79
  br label %123

123:                                              ; preds = %91, %120
  %124 = icmp eq ptr %69, null
  br i1 %124, label %127, label %125

125:                                              ; preds = %123
  %126 = load ptr, ptr @MEM_freeN, align 8, !tbaa !44
  tail call void %126(ptr noundef nonnull %69) #18
  br label %127

127:                                              ; preds = %125, %123
  %128 = load ptr, ptr %5, align 8, !tbaa !57
  %129 = getelementptr inbounds %struct.DynamicPaintCanvasSettings, ptr %128, i64 0, i32 6
  %130 = tail call ptr @BLI_strncpy(ptr noundef nonnull %129, ptr noundef nonnull @.str.17, i64 noundef 64) #18
  br label %284

131:                                              ; preds = %86
  %132 = load i16, ptr %32, align 4, !tbaa !34
  %133 = icmp eq i16 %132, 1
  br i1 %133, label %134, label %282

134:                                              ; preds = %131
  %135 = getelementptr inbounds %struct.DerivedMesh, ptr %8, i64 0, i32 24
  %136 = load ptr, ptr %135, align 8, !tbaa !226
  %137 = tail call i32 %136(ptr noundef %8) #18
  %138 = getelementptr inbounds %struct.DerivedMesh, ptr %8, i64 0, i32 27
  %139 = load ptr, ptr %138, align 8, !tbaa !228
  %140 = tail call i32 %139(ptr noundef %8) #18
  %141 = getelementptr inbounds %struct.DerivedMesh, ptr %8, i64 0, i32 32
  %142 = load ptr, ptr %141, align 8, !tbaa !229
  %143 = tail call ptr %142(ptr noundef %8) #18
  %144 = getelementptr inbounds %struct.DerivedMesh, ptr %8, i64 0, i32 35
  %145 = load ptr, ptr %144, align 8, !tbaa !230
  %146 = tail call ptr %145(ptr noundef %8) #18
  %147 = getelementptr inbounds %struct.DerivedMesh, ptr %8, i64 0, i32 34
  %148 = load ptr, ptr %147, align 8, !tbaa !213
  %149 = tail call ptr %148(ptr noundef %8) #18
  %150 = icmp sgt i32 %137, 0
  br i1 %150, label %151, label %154

151:                                              ; preds = %134
  %152 = load ptr, ptr %64, align 8, !tbaa !82
  %153 = zext nneg i32 %137 to i64
  br label %158

154:                                              ; preds = %158, %134
  %155 = icmp sgt i32 %140, 0
  br i1 %155, label %156, label %191

156:                                              ; preds = %154
  %157 = zext nneg i32 %140 to i64
  br label %184

158:                                              ; preds = %151, %158
  %159 = phi i64 [ 0, %151 ], [ %182, %158 ]
  %160 = getelementptr inbounds %struct.MEdge, ptr %143, i64 %159
  %161 = load i32, ptr %160, align 4, !tbaa !231
  %162 = zext i32 %161 to i64
  %163 = getelementptr inbounds i32, ptr %152, i64 %162
  %164 = load i32, ptr %163, align 4, !tbaa !205
  %165 = add nsw i32 %164, 1
  store i32 %165, ptr %163, align 4, !tbaa !205
  %166 = getelementptr inbounds %struct.MEdge, ptr %143, i64 %159, i32 1
  %167 = load i32, ptr %166, align 4, !tbaa !233
  %168 = zext i32 %167 to i64
  %169 = getelementptr inbounds i32, ptr %152, i64 %168
  %170 = load i32, ptr %169, align 4, !tbaa !205
  %171 = add nsw i32 %170, 1
  store i32 %171, ptr %169, align 4, !tbaa !205
  %172 = load i32, ptr %160, align 4, !tbaa !231
  %173 = zext i32 %172 to i64
  %174 = getelementptr inbounds i32, ptr %69, i64 %173
  %175 = load i32, ptr %174, align 4, !tbaa !205
  %176 = add nsw i32 %175, 1
  store i32 %176, ptr %174, align 4, !tbaa !205
  %177 = load i32, ptr %166, align 4, !tbaa !233
  %178 = zext i32 %177 to i64
  %179 = getelementptr inbounds i32, ptr %69, i64 %178
  %180 = load i32, ptr %179, align 4, !tbaa !205
  %181 = add nsw i32 %180, 1
  store i32 %181, ptr %179, align 4, !tbaa !205
  %182 = add nuw nsw i64 %159, 1
  %183 = icmp eq i64 %182, %153
  br i1 %183, label %154, label %158, !llvm.loop !234

184:                                              ; preds = %156, %208
  %185 = phi i64 [ 0, %156 ], [ %209, %208 ]
  %186 = getelementptr inbounds %struct.MPoly, ptr %146, i64 %185, i32 1
  %187 = load i32, ptr %186, align 4, !tbaa !235
  %188 = icmp sgt i32 %187, 0
  br i1 %188, label %189, label %208

189:                                              ; preds = %184
  %190 = getelementptr inbounds %struct.MPoly, ptr %146, i64 %185
  br label %194

191:                                              ; preds = %208, %154
  %192 = load i32, ptr %53, align 8, !tbaa !194
  %193 = icmp sgt i32 %192, 0
  br i1 %193, label %217, label %211

194:                                              ; preds = %189, %194
  %195 = phi i32 [ 0, %189 ], [ %205, %194 ]
  %196 = load i32, ptr %190, align 4, !tbaa !237
  %197 = add nsw i32 %196, %195
  %198 = sext i32 %197 to i64
  %199 = getelementptr inbounds %struct.MLoop, ptr %149, i64 %198
  %200 = load i32, ptr %199, align 4, !tbaa !217
  %201 = zext i32 %200 to i64
  %202 = getelementptr inbounds i32, ptr %69, i64 %201
  %203 = load i32, ptr %202, align 4, !tbaa !205
  %204 = add nsw i32 %203, 1
  store i32 %204, ptr %202, align 4, !tbaa !205
  %205 = add nuw nsw i32 %195, 1
  %206 = load i32, ptr %186, align 4, !tbaa !235
  %207 = icmp slt i32 %205, %206
  br i1 %207, label %194, label %208, !llvm.loop !238

208:                                              ; preds = %194, %184
  %209 = add nuw nsw i64 %185, 1
  %210 = icmp eq i64 %209, %157
  br i1 %210, label %191, label %184, !llvm.loop !239

211:                                              ; preds = %230, %191
  %212 = load i32, ptr %53, align 8, !tbaa !194
  %213 = icmp sgt i32 %212, 0
  br i1 %213, label %214, label %235

214:                                              ; preds = %211
  %215 = load ptr, ptr %58, align 8, !tbaa !80
  %216 = load ptr, ptr %64, align 8, !tbaa !82
  br label %241

217:                                              ; preds = %191, %230
  %218 = phi i64 [ %231, %230 ], [ 0, %191 ]
  %219 = getelementptr inbounds i32, ptr %69, i64 %218
  %220 = load i32, ptr %219, align 4, !tbaa !205
  %221 = and i32 %220, 1
  %222 = icmp ne i32 %221, 0
  %223 = icmp slt i32 %220, 4
  %224 = or i1 %223, %222
  br i1 %224, label %225, label %230

225:                                              ; preds = %217
  %226 = load ptr, ptr %79, align 8, !tbaa !84
  %227 = getelementptr inbounds i32, ptr %226, i64 %218
  %228 = load i32, ptr %227, align 4, !tbaa !205
  %229 = or i32 %228, 1
  store i32 %229, ptr %227, align 4, !tbaa !205
  br label %230

230:                                              ; preds = %217, %225
  store i32 0, ptr %219, align 4, !tbaa !205
  %231 = add nuw nsw i64 %218, 1
  %232 = load i32, ptr %53, align 8, !tbaa !194
  %233 = sext i32 %232 to i64
  %234 = icmp slt i64 %231, %233
  br i1 %234, label %217, label %211, !llvm.loop !240

235:                                              ; preds = %241, %211
  %236 = icmp sgt i32 %137, 0
  br i1 %236, label %237, label %282

237:                                              ; preds = %235
  %238 = load ptr, ptr %58, align 8, !tbaa !80
  %239 = load ptr, ptr %48, align 8, !tbaa !83
  %240 = zext nneg i32 %137 to i64
  br label %252

241:                                              ; preds = %214, %241
  %242 = phi i64 [ 0, %214 ], [ %248, %241 ]
  %243 = phi i32 [ 0, %214 ], [ %247, %241 ]
  %244 = getelementptr inbounds i32, ptr %215, i64 %242
  store i32 %243, ptr %244, align 4, !tbaa !205
  %245 = getelementptr inbounds i32, ptr %216, i64 %242
  %246 = load i32, ptr %245, align 4, !tbaa !205
  %247 = add nsw i32 %246, %243
  %248 = add nuw nsw i64 %242, 1
  %249 = load i32, ptr %53, align 8, !tbaa !194
  %250 = sext i32 %249 to i64
  %251 = icmp slt i64 %248, %250
  br i1 %251, label %241, label %235, !llvm.loop !241

252:                                              ; preds = %237, %252
  %253 = phi i64 [ 0, %237 ], [ %280, %252 ]
  %254 = getelementptr inbounds %struct.MEdge, ptr %143, i64 %253
  %255 = load i32, ptr %254, align 4, !tbaa !231
  %256 = sext i32 %255 to i64
  %257 = getelementptr inbounds i32, ptr %238, i64 %256
  %258 = load i32, ptr %257, align 4, !tbaa !205
  %259 = getelementptr inbounds i32, ptr %69, i64 %256
  %260 = load i32, ptr %259, align 4, !tbaa !205
  %261 = add nsw i32 %260, %258
  %262 = getelementptr inbounds %struct.MEdge, ptr %143, i64 %253, i32 1
  %263 = load i32, ptr %262, align 4, !tbaa !233
  %264 = sext i32 %261 to i64
  %265 = getelementptr inbounds i32, ptr %239, i64 %264
  store i32 %263, ptr %265, align 4, !tbaa !205
  %266 = load i32, ptr %259, align 4, !tbaa !205
  %267 = add nsw i32 %266, 1
  store i32 %267, ptr %259, align 4, !tbaa !205
  %268 = load i32, ptr %262, align 4, !tbaa !233
  %269 = sext i32 %268 to i64
  %270 = getelementptr inbounds i32, ptr %238, i64 %269
  %271 = load i32, ptr %270, align 4, !tbaa !205
  %272 = getelementptr inbounds i32, ptr %69, i64 %269
  %273 = load i32, ptr %272, align 4, !tbaa !205
  %274 = add nsw i32 %273, %271
  %275 = load i32, ptr %254, align 4, !tbaa !231
  %276 = sext i32 %274 to i64
  %277 = getelementptr inbounds i32, ptr %239, i64 %276
  store i32 %275, ptr %277, align 4, !tbaa !205
  %278 = load i32, ptr %272, align 4, !tbaa !205
  %279 = add nsw i32 %278, 1
  store i32 %279, ptr %272, align 4, !tbaa !205
  %280 = add nuw nsw i64 %253, 1
  %281 = icmp eq i64 %280, %240
  br i1 %281, label %282, label %252, !llvm.loop !242

282:                                              ; preds = %252, %235, %131
  %283 = load ptr, ptr @MEM_freeN, align 8, !tbaa !44
  tail call void %283(ptr noundef nonnull %69) #18
  br label %284

284:                                              ; preds = %46, %43, %27, %282, %127
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local void @dynamicPaint_cacheUpdateFrames(ptr nocapture noundef readonly %0) local_unnamed_addr #9 {
  %2 = getelementptr inbounds %struct.DynamicPaintSurface, ptr %0, i64 0, i32 6
  %3 = load ptr, ptr %2, align 8, !tbaa !103
  %4 = icmp eq ptr %3, null
  br i1 %4, label %12, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.DynamicPaintSurface, ptr %0, i64 0, i32 22
  %7 = load i32, ptr %6, align 4, !tbaa !145
  %8 = getelementptr inbounds %struct.PointCache, ptr %3, i64 0, i32 5
  store i32 %7, ptr %8, align 4, !tbaa !243
  %9 = getelementptr inbounds %struct.DynamicPaintSurface, ptr %0, i64 0, i32 23
  %10 = load i32, ptr %9, align 8, !tbaa !147
  %11 = getelementptr inbounds %struct.PointCache, ptr %3, i64 0, i32 6
  store i32 %10, ptr %11, align 8, !tbaa !244
  br label %12

12:                                               ; preds = %5, %1
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local ptr @dynamicPaint_Modifier_do(ptr nocapture noundef readonly %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) local_unnamed_addr #4 {
  %5 = alloca [3 x float], align 4
  %6 = alloca %struct.PTCacheID, align 8
  tail call void @DM_ensure_tessface(ptr noundef %3) #18
  %7 = getelementptr inbounds %struct.DynamicPaintModifierData, ptr %0, i64 0, i32 1
  %8 = load ptr, ptr %7, align 8, !tbaa !105
  %9 = icmp eq ptr %8, null
  br i1 %9, label %174, label %10

10:                                               ; preds = %4
  %11 = getelementptr inbounds %struct.DynamicPaintCanvasSettings, ptr %8, i64 0, i32 2
  %12 = load ptr, ptr %11, align 8, !tbaa !106
  %13 = getelementptr inbounds %struct.DynamicPaintCanvasSettings, ptr %8, i64 0, i32 1
  %14 = load ptr, ptr %13, align 8, !tbaa !109
  %15 = icmp eq ptr %14, null
  br i1 %15, label %19, label %16

16:                                               ; preds = %10
  %17 = getelementptr inbounds %struct.DerivedMesh, ptr %14, i64 0, i32 95
  %18 = load ptr, ptr %17, align 8, !tbaa !67
  tail call void %18(ptr noundef nonnull %14) #18
  br label %19

19:                                               ; preds = %16, %10
  %20 = tail call ptr @CDDM_copy(ptr noundef %3) #18
  store ptr %20, ptr %13, align 8, !tbaa !109
  %21 = getelementptr inbounds %struct.DynamicPaintCanvasSettings, ptr %8, i64 0, i32 4
  %22 = load i16, ptr %21, align 2, !tbaa !245
  %23 = and i16 %22, 2
  %24 = icmp ne i16 %23, 0
  %25 = icmp eq ptr %12, null
  %26 = select i1 %24, i1 true, i1 %25
  br i1 %26, label %174, label %27

27:                                               ; preds = %19
  %28 = getelementptr inbounds %struct.Scene, ptr %1, i64 0, i32 22, i32 5
  %29 = getelementptr inbounds %struct.PTCacheID, ptr %6, i64 0, i32 25
  br label %30

30:                                               ; preds = %27, %171
  %31 = phi ptr [ %12, %27 ], [ %172, %171 ]
  %32 = load i32, ptr %28, align 8, !tbaa !246
  %33 = getelementptr inbounds %struct.DynamicPaintSurface, ptr %31, i64 0, i32 3
  %34 = load ptr, ptr %33, align 8, !tbaa !72
  %35 = icmp eq ptr %34, null
  br i1 %35, label %51, label %36

36:                                               ; preds = %30
  %37 = getelementptr inbounds %struct.DynamicPaintSurface, ptr %31, i64 0, i32 18
  %38 = load i32, ptr %37, align 4, !tbaa !50
  %39 = and i32 %38, 1
  %40 = icmp eq i32 %39, 0
  br i1 %40, label %50, label %41

41:                                               ; preds = %36
  %42 = getelementptr inbounds %struct.DynamicPaintSurface, ptr %31, i64 0, i32 6
  %43 = load ptr, ptr %42, align 8, !tbaa !103
  %44 = icmp eq ptr %43, null
  br i1 %44, label %51, label %45

45:                                               ; preds = %41
  %46 = getelementptr inbounds %struct.PointCache, ptr %43, i64 0, i32 2
  %47 = load i32, ptr %46, align 8, !tbaa !110
  %48 = and i32 %47, 1
  %49 = icmp eq i32 %48, 0
  br i1 %49, label %51, label %50

50:                                               ; preds = %45, %36
  call fastcc void @free_bakeData(ptr noundef nonnull %34)
  br label %51

51:                                               ; preds = %50, %45, %41, %30
  %52 = getelementptr inbounds %struct.DynamicPaintSurface, ptr %31, i64 0, i32 10
  %53 = load i16, ptr %52, align 4, !tbaa !34
  %54 = icmp eq i16 %53, 2
  br i1 %54, label %171, label %55

55:                                               ; preds = %51
  %56 = getelementptr inbounds %struct.DynamicPaintSurface, ptr %31, i64 0, i32 18
  %57 = load i32, ptr %56, align 4, !tbaa !50
  %58 = and i32 %57, 1
  %59 = icmp eq i32 %58, 0
  br i1 %59, label %171, label %60

60:                                               ; preds = %55
  %61 = load ptr, ptr %33, align 8, !tbaa !72
  %62 = icmp eq ptr %61, null
  br i1 %62, label %81, label %63

63:                                               ; preds = %60
  %64 = icmp eq i16 %53, 1
  br i1 %64, label %65, label %75

65:                                               ; preds = %63
  %66 = getelementptr inbounds %struct.DynamicPaintSurface, ptr %31, i64 0, i32 2
  %67 = load ptr, ptr %66, align 8, !tbaa !57
  %68 = getelementptr inbounds %struct.DynamicPaintCanvasSettings, ptr %67, i64 0, i32 1
  %69 = load ptr, ptr %68, align 8, !tbaa !109
  %70 = icmp eq ptr %69, null
  br i1 %70, label %75, label %71

71:                                               ; preds = %65
  %72 = getelementptr inbounds %struct.DerivedMesh, ptr %69, i64 0, i32 23
  %73 = load ptr, ptr %72, align 8, !tbaa !225
  %74 = call i32 %73(ptr noundef nonnull %69) #18
  br label %75

75:                                               ; preds = %71, %65, %63
  %76 = phi i32 [ %74, %71 ], [ 0, %65 ], [ 0, %63 ]
  %77 = load ptr, ptr %33, align 8, !tbaa !72
  %78 = getelementptr inbounds %struct.PaintSurfaceData, ptr %77, i64 0, i32 4
  %79 = load i32, ptr %78, align 8, !tbaa !194
  %80 = icmp eq i32 %76, %79
  br i1 %80, label %83, label %81

81:                                               ; preds = %75, %60
  %82 = call zeroext i8 @dynamicPaint_resetSurface(ptr noundef %1, ptr noundef nonnull %31), !range !185
  br label %83

83:                                               ; preds = %81, %75
  %84 = phi i8 [ %82, %81 ], [ 1, %75 ]
  %85 = icmp eq i8 %84, 0
  br i1 %85, label %171, label %86

86:                                               ; preds = %83
  %87 = getelementptr inbounds %struct.DynamicPaintSurface, ptr %31, i64 0, i32 22
  %88 = load i32, ptr %87, align 4, !tbaa !145
  %89 = icmp slt i32 %32, %88
  br i1 %89, label %94, label %90

90:                                               ; preds = %86
  %91 = getelementptr inbounds %struct.DynamicPaintSurface, ptr %31, i64 0, i32 23
  %92 = load i32, ptr %91, align 8, !tbaa !147
  %93 = call i32 @llvm.smin.i32(i32 %32, i32 %92)
  br label %94

94:                                               ; preds = %90, %86
  %95 = phi i32 [ %88, %86 ], [ %93, %90 ]
  br i1 %62, label %103, label %96

96:                                               ; preds = %94
  %97 = getelementptr inbounds %struct.DynamicPaintSurface, ptr %31, i64 0, i32 8
  %98 = load i32, ptr %97, align 8, !tbaa !247
  %99 = icmp eq i32 %95, %98
  br i1 %99, label %100, label %103

100:                                              ; preds = %96
  %101 = load i32, ptr %28, align 8, !tbaa !246
  %102 = icmp eq i32 %101, %88
  br i1 %102, label %103, label %171

103:                                              ; preds = %100, %96, %94
  %104 = getelementptr inbounds %struct.DynamicPaintSurface, ptr %31, i64 0, i32 6
  %105 = load ptr, ptr %104, align 8, !tbaa !103
  call void @llvm.lifetime.start.p0(i64 200, ptr nonnull %6) #18
  %106 = getelementptr inbounds %struct.DynamicPaintSurface, ptr %31, i64 0, i32 8
  store i32 %95, ptr %106, align 8, !tbaa !247
  call void @BKE_ptcache_id_from_dynamicpaint(ptr noundef nonnull %6, ptr noundef %2, ptr noundef nonnull %31) #18
  %107 = load i32, ptr %87, align 4, !tbaa !145
  %108 = load ptr, ptr %29, align 8, !tbaa !248
  %109 = getelementptr inbounds %struct.PointCache, ptr %108, i64 0, i32 5
  store i32 %107, ptr %109, align 4, !tbaa !243
  %110 = getelementptr inbounds %struct.DynamicPaintSurface, ptr %31, i64 0, i32 23
  %111 = load i32, ptr %110, align 8, !tbaa !147
  %112 = getelementptr inbounds %struct.PointCache, ptr %108, i64 0, i32 6
  store i32 %111, ptr %112, align 8, !tbaa !244
  %113 = load i32, ptr %28, align 8, !tbaa !246
  %114 = sitofp i32 %113 to float
  call void @BKE_ptcache_id_time(ptr noundef nonnull %6, ptr noundef %1, float noundef %114, ptr noundef null, ptr noundef null, ptr noundef null) #18
  %115 = load i32, ptr %28, align 8, !tbaa !246
  %116 = load i32, ptr %87, align 4, !tbaa !145
  %117 = icmp eq i32 %115, %116
  br i1 %117, label %118, label %128

118:                                              ; preds = %103
  %119 = getelementptr inbounds %struct.PointCache, ptr %105, i64 0, i32 2
  %120 = load i32, ptr %119, align 8, !tbaa !110
  %121 = and i32 %120, 1
  %122 = icmp eq i32 %121, 0
  br i1 %122, label %123, label %128

123:                                              ; preds = %118
  %124 = or i32 %120, 258
  store i32 %124, ptr %119, align 8, !tbaa !110
  %125 = call i32 @BKE_ptcache_id_reset(ptr noundef %1, ptr noundef nonnull %6, i32 noundef 2) #18
  %126 = load i32, ptr %119, align 8, !tbaa !110
  %127 = and i32 %126, -259
  store i32 %127, ptr %119, align 8, !tbaa !110
  br label %128

128:                                              ; preds = %123, %118, %103
  %129 = load i32, ptr %28, align 8, !tbaa !246
  %130 = sitofp i32 %129 to float
  %131 = call i32 @BKE_ptcache_read(ptr noundef nonnull %6, float noundef %130) #18
  %132 = icmp eq i32 %131, 0
  %133 = load i32, ptr %28, align 8, !tbaa !246
  br i1 %132, label %135, label %134

134:                                              ; preds = %128
  call void @BKE_ptcache_validate(ptr noundef %105, i32 noundef %133) #18
  br label %170

135:                                              ; preds = %128
  %136 = icmp eq i32 %133, %95
  br i1 %136, label %137, label %170

137:                                              ; preds = %135
  %138 = getelementptr inbounds %struct.PointCache, ptr %105, i64 0, i32 2
  %139 = load i32, ptr %138, align 8, !tbaa !110
  %140 = and i32 %139, 1
  %141 = icmp eq i32 %140, 0
  br i1 %141, label %142, label %170

142:                                              ; preds = %137
  %143 = load i16, ptr %21, align 2, !tbaa !245
  %144 = or i16 %143, 2
  store i16 %144, ptr %21, align 2, !tbaa !245
  %145 = call i32 @dynamicPaint_calculateFrame(ptr noundef nonnull %31, ptr noundef %1, ptr noundef %2, i32 noundef %95)
  %146 = load i16, ptr %21, align 2, !tbaa !245
  %147 = and i16 %146, -3
  store i16 %147, ptr %21, align 2, !tbaa !245
  %148 = getelementptr inbounds %struct.DynamicPaintSurface, ptr %31, i64 0, i32 11
  %149 = load i16, ptr %148, align 2, !tbaa !43
  %150 = icmp eq i16 %149, 1
  br i1 %150, label %151, label %166

151:                                              ; preds = %142
  %152 = load i32, ptr %56, align 4, !tbaa !50
  %153 = and i32 %152, 256
  %154 = icmp eq i32 %153, 0
  br i1 %154, label %166, label %155

155:                                              ; preds = %151
  %156 = load ptr, ptr %31, align 8, !tbaa !107
  %157 = icmp eq ptr %156, null
  br i1 %157, label %166, label %158

158:                                              ; preds = %155
  %159 = load ptr, ptr %13, align 8, !tbaa !109
  %160 = icmp eq ptr %159, null
  br i1 %160, label %164, label %161

161:                                              ; preds = %158
  %162 = getelementptr inbounds %struct.DerivedMesh, ptr %159, i64 0, i32 95
  %163 = load ptr, ptr %162, align 8, !tbaa !67
  call void %163(ptr noundef nonnull %159) #18
  br label %164

164:                                              ; preds = %161, %158
  %165 = call ptr @CDDM_copy(ptr noundef %3) #18
  store ptr %165, ptr %13, align 8, !tbaa !109
  br label %166

166:                                              ; preds = %164, %155, %151, %142
  %167 = load i32, ptr %106, align 8, !tbaa !247
  call void @BKE_ptcache_validate(ptr noundef %105, i32 noundef %167) #18
  %168 = load i32, ptr %106, align 8, !tbaa !247
  %169 = call i32 @BKE_ptcache_write(ptr noundef nonnull %6, i32 noundef %168) #18
  br label %170

170:                                              ; preds = %166, %137, %135, %134
  call void @llvm.lifetime.end.p0(i64 200, ptr nonnull %6) #18
  br label %171

171:                                              ; preds = %170, %100, %83, %55, %51
  %172 = load ptr, ptr %31, align 8, !tbaa !107
  %173 = icmp eq ptr %172, null
  br i1 %173, label %174, label %30, !llvm.loop !250

174:                                              ; preds = %171, %4, %19
  %175 = call ptr @CDDM_copy(ptr noundef %3) #18
  %176 = load ptr, ptr %7, align 8, !tbaa !105
  %177 = icmp eq ptr %176, null
  br i1 %177, label %563, label %178

178:                                              ; preds = %174
  %179 = getelementptr inbounds %struct.DynamicPaintCanvasSettings, ptr %176, i64 0, i32 4
  %180 = load i16, ptr %179, align 2, !tbaa !245
  %181 = and i16 %180, 2
  %182 = icmp eq i16 %181, 0
  br i1 %182, label %183, label %563

183:                                              ; preds = %178
  %184 = getelementptr inbounds %struct.DynamicPaintCanvasSettings, ptr %176, i64 0, i32 2
  %185 = load ptr, ptr %184, align 8, !tbaa !44
  %186 = icmp eq ptr %185, null
  br i1 %186, label %563, label %187

187:                                              ; preds = %183
  %188 = getelementptr inbounds %struct.DerivedMesh, ptr %175, i64 0, i32 31
  %189 = getelementptr inbounds %struct.DerivedMesh, ptr %175, i64 0, i32 50
  %190 = getelementptr inbounds %struct.DerivedMesh, ptr %175, i64 0, i32 8
  %191 = getelementptr inbounds %struct.DerivedMesh, ptr %175, i64 0, i32 9
  %192 = getelementptr inbounds %struct.DerivedMesh, ptr %175, i64 0, i32 3
  %193 = getelementptr inbounds [3 x float], ptr %5, i64 0, i64 1
  %194 = getelementptr inbounds [3 x float], ptr %5, i64 0, i64 2
  %195 = getelementptr inbounds [3 x float], ptr %5, i64 0, i64 1
  %196 = getelementptr inbounds [3 x float], ptr %5, i64 0, i64 2
  %197 = getelementptr inbounds %struct.DerivedMesh, ptr %175, i64 0, i32 3
  %198 = getelementptr inbounds %struct.Object, ptr %2, i64 0, i32 19
  %199 = getelementptr inbounds %struct.Object, ptr %2, i64 0, i32 19
  %200 = getelementptr inbounds %struct.DerivedMesh, ptr %175, i64 0, i32 16
  br label %201

201:                                              ; preds = %187, %553
  %202 = phi ptr [ %185, %187 ], [ %555, %553 ]
  %203 = phi i8 [ 0, %187 ], [ %554, %553 ]
  %204 = getelementptr inbounds %struct.DynamicPaintSurface, ptr %202, i64 0, i32 3
  %205 = load ptr, ptr %204, align 8, !tbaa !72
  %206 = getelementptr inbounds %struct.DynamicPaintSurface, ptr %202, i64 0, i32 10
  %207 = load i16, ptr %206, align 4, !tbaa !34
  %208 = icmp ne i16 %207, 2
  %209 = icmp ne ptr %205, null
  %210 = select i1 %208, i1 %209, i1 false
  br i1 %210, label %211, label %553

211:                                              ; preds = %201
  %212 = getelementptr inbounds %struct.DynamicPaintSurface, ptr %202, i64 0, i32 18
  %213 = load i32, ptr %212, align 4, !tbaa !50
  %214 = and i32 %213, 1
  %215 = icmp ne i32 %214, 0
  %216 = icmp eq i16 %207, 1
  %217 = and i1 %216, %215
  br i1 %217, label %218, label %553

218:                                              ; preds = %211
  %219 = getelementptr inbounds %struct.DynamicPaintSurface, ptr %202, i64 0, i32 11
  %220 = load i16, ptr %219, align 2, !tbaa !43
  switch i16 %220, label %548 [
    i16 0, label %221
    i16 2, label %459
    i16 3, label %511
  ]

221:                                              ; preds = %218
  %222 = getelementptr inbounds %struct.PaintSurfaceData, ptr %205, i64 0, i32 1
  %223 = load ptr, ptr %222, align 8, !tbaa !78
  %224 = call ptr @CDDM_get_loops(ptr noundef %175) #18
  %225 = load i32, ptr %190, align 4, !tbaa !251
  %226 = load ptr, ptr @MEM_callocN, align 8, !tbaa !44
  %227 = getelementptr inbounds %struct.PaintSurfaceData, ptr %205, i64 0, i32 4
  %228 = load i32, ptr %227, align 8, !tbaa !194
  %229 = sext i32 %228 to i64
  %230 = shl nsw i64 %229, 4
  %231 = call ptr %226(i64 noundef %230, ptr noundef nonnull @.str.36) #18
  %232 = load i32, ptr %227, align 8, !tbaa !194
  %233 = icmp sgt i32 %232, 0
  br i1 %233, label %234, label %275

234:                                              ; preds = %221
  %235 = zext nneg i32 %232 to i64
  br label %236

236:                                              ; preds = %234, %271
  %237 = phi i64 [ 0, %234 ], [ %273, %271 ]
  %238 = getelementptr inbounds %struct.PaintPoint, ptr %223, i64 %237
  %239 = getelementptr inbounds %struct.PaintPoint, ptr %223, i64 %237, i32 4
  %240 = getelementptr inbounds %struct.PaintPoint, ptr %223, i64 %237, i32 5
  %241 = load float, ptr %240, align 4, !tbaa !196
  %242 = getelementptr inbounds %struct.PaintPoint, ptr %223, i64 %237, i32 1
  %243 = load float, ptr %242, align 4, !tbaa !252
  %244 = shl i64 %237, 2
  %245 = and i64 %244, 4294967292
  %246 = getelementptr inbounds float, ptr %231, i64 %245
  %247 = fsub float 1.000000e+00, %243
  %248 = call float @llvm.fmuladd.f32(float %241, float %247, float %243)
  %249 = fcmp une float %248, 0.000000e+00
  br i1 %249, label %250, label %263

250:                                              ; preds = %236, %250
  %251 = phi i64 [ %261, %250 ], [ 0, %236 ]
  %252 = getelementptr inbounds float, ptr %239, i64 %251
  %253 = load float, ptr %252, align 4, !tbaa !123
  %254 = fmul float %241, %253
  %255 = getelementptr inbounds float, ptr %238, i64 %251
  %256 = load float, ptr %255, align 4, !tbaa !123
  %257 = fmul float %243, %256
  %258 = call float @llvm.fmuladd.f32(float %254, float %247, float %257)
  %259 = fdiv float %258, %248
  %260 = getelementptr inbounds float, ptr %246, i64 %251
  store float %259, ptr %260, align 4, !tbaa !123
  %261 = add nuw nsw i64 %251, 1
  %262 = icmp eq i64 %261, 3
  br i1 %262, label %271, label %250, !llvm.loop !253

263:                                              ; preds = %236
  %264 = load float, ptr %239, align 4, !tbaa !123
  store float %264, ptr %246, align 4, !tbaa !123
  %265 = getelementptr inbounds float, ptr %239, i64 1
  %266 = load float, ptr %265, align 4, !tbaa !123
  %267 = getelementptr inbounds float, ptr %246, i64 1
  store float %266, ptr %267, align 4, !tbaa !123
  %268 = getelementptr inbounds float, ptr %239, i64 2
  %269 = load float, ptr %268, align 4, !tbaa !123
  %270 = getelementptr inbounds float, ptr %246, i64 2
  store float %269, ptr %270, align 4, !tbaa !123
  br label %271

271:                                              ; preds = %250, %263
  %272 = getelementptr inbounds float, ptr %246, i64 3
  store float %248, ptr %272, align 4, !tbaa !123
  %273 = add nuw nsw i64 %237, 1
  %274 = icmp eq i64 %273, %235
  br i1 %274, label %275, label %236, !llvm.loop !254

275:                                              ; preds = %271, %221
  %276 = load i32, ptr %212, align 4, !tbaa !50
  %277 = and i32 %276, 64
  %278 = icmp eq i32 %277, 0
  br i1 %278, label %357, label %279

279:                                              ; preds = %275
  %280 = call ptr @CDDM_get_polys(ptr noundef %175) #18
  %281 = load i32, ptr %191, align 8, !tbaa !255
  %282 = call ptr @CustomData_get_layer(ptr noundef nonnull %192, i32 noundef 32) #18
  %283 = icmp eq ptr %282, null
  br i1 %283, label %284, label %286

284:                                              ; preds = %279
  %285 = call ptr @CustomData_add_layer(ptr noundef nonnull %192, i32 noundef 32, i32 noundef 1, ptr noundef null, i32 noundef %225) #18
  br label %286

286:                                              ; preds = %284, %279
  %287 = phi ptr [ %282, %279 ], [ %285, %284 ]
  %288 = icmp ne ptr %287, null
  %289 = icmp sgt i32 %281, 0
  %290 = select i1 %288, i1 %289, i1 false
  br i1 %290, label %291, label %357

291:                                              ; preds = %286
  %292 = getelementptr inbounds %struct.DynamicPaintSurface, ptr %202, i64 0, i32 15
  %293 = zext i32 %281 to i64
  br label %294

294:                                              ; preds = %291, %354
  %295 = phi i64 [ 0, %291 ], [ %355, %354 ]
  %296 = getelementptr inbounds %struct.MPoly, ptr %280, i64 %295
  %297 = getelementptr inbounds %struct.MPoly, ptr %280, i64 %295, i32 2
  %298 = load i16, ptr %297, align 4, !tbaa !256
  %299 = add i16 %298, 1
  %300 = call ptr @give_current_material(ptr noundef %2, i16 noundef signext %299) #18
  %301 = getelementptr inbounds %struct.MPoly, ptr %280, i64 %295, i32 1
  %302 = load i32, ptr %301, align 4, !tbaa !235
  %303 = icmp sgt i32 %302, 0
  br i1 %303, label %304, label %354

304:                                              ; preds = %294
  %305 = icmp eq ptr %300, null
  %306 = getelementptr inbounds %struct.Material, ptr %300, i64 0, i32 4
  %307 = getelementptr inbounds %struct.Material, ptr %300, i64 0, i32 5
  %308 = getelementptr inbounds %struct.Material, ptr %300, i64 0, i32 6
  br label %309

309:                                              ; preds = %304, %350
  %310 = phi i32 [ 0, %304 ], [ %351, %350 ]
  %311 = load i32, ptr %296, align 4, !tbaa !237
  %312 = add nsw i32 %311, %310
  %313 = sext i32 %312 to i64
  %314 = getelementptr inbounds %struct.MLoop, ptr %224, i64 %313
  %315 = load i32, ptr %314, align 4, !tbaa !217
  %316 = load i16, ptr %292, align 2, !tbaa !187
  %317 = icmp eq i16 %316, 0
  br i1 %317, label %318, label %334

318:                                              ; preds = %309
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %5) #18
  %319 = shl nsw i32 %315, 2
  %320 = getelementptr inbounds %struct.MLoopCol, ptr %287, i64 %313
  %321 = getelementptr inbounds %struct.MLoopCol, ptr %287, i64 %313, i32 3
  store i8 -1, ptr %321, align 1, !tbaa !257
  br i1 %305, label %326, label %322

322:                                              ; preds = %318
  %323 = load float, ptr %306, align 4, !tbaa !259
  store float %323, ptr %5, align 4, !tbaa !123
  %324 = load float, ptr %307, align 8, !tbaa !263
  store float %324, ptr %193, align 4, !tbaa !123
  %325 = load float, ptr %308, align 4, !tbaa !264
  store float %325, ptr %194, align 4, !tbaa !123
  br label %327

326:                                              ; preds = %318
  store float 0x3FE4CCCCC0000000, ptr %5, align 4, !tbaa !123
  store float 0x3FE4CCCCC0000000, ptr %195, align 4, !tbaa !123
  store float 0x3FE4CCCCC0000000, ptr %196, align 4, !tbaa !123
  br label %327

327:                                              ; preds = %326, %322
  %328 = sext i32 %319 to i64
  %329 = getelementptr inbounds float, ptr %231, i64 %328
  %330 = or disjoint i32 %319, 3
  %331 = sext i32 %330 to i64
  %332 = getelementptr inbounds float, ptr %231, i64 %331
  %333 = load float, ptr %332, align 4, !tbaa !123
  call void @interp_v3_v3v3(ptr noundef nonnull %5, ptr noundef nonnull %5, ptr noundef %329, float noundef %333) #18
  call void @rgb_float_to_uchar(ptr noundef nonnull %320, ptr noundef nonnull %5) #18
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %5) #18
  br label %350

334:                                              ; preds = %309
  %335 = sext i32 %315 to i64
  %336 = getelementptr inbounds %struct.PaintPoint, ptr %223, i64 %335, i32 2
  %337 = load float, ptr %336, align 4, !tbaa !265
  %338 = fcmp ugt float %337, 0.000000e+00
  br i1 %338, label %339, label %343

339:                                              ; preds = %334
  %340 = fcmp ogt float %337, 0x3FEFEFEFE0000000
  br i1 %340, label %343, label %341

341:                                              ; preds = %339
  %342 = call float @llvm.fmuladd.f32(float %337, float 2.550000e+02, float 5.000000e-01)
  br label %343

343:                                              ; preds = %341, %339, %334
  %344 = phi float [ 0.000000e+00, %334 ], [ %342, %341 ], [ 2.550000e+02, %339 ]
  %345 = fptoui float %344 to i8
  %346 = getelementptr inbounds %struct.MLoopCol, ptr %287, i64 %313
  %347 = getelementptr inbounds %struct.MLoopCol, ptr %287, i64 %313, i32 2
  store i8 %345, ptr %347, align 1, !tbaa !266
  %348 = getelementptr inbounds %struct.MLoopCol, ptr %287, i64 %313, i32 1
  store i8 %345, ptr %348, align 1, !tbaa !267
  store i8 %345, ptr %346, align 1, !tbaa !268
  %349 = getelementptr inbounds %struct.MLoopCol, ptr %287, i64 %313, i32 3
  store i8 -1, ptr %349, align 1, !tbaa !257
  br label %350

350:                                              ; preds = %343, %327
  %351 = add nuw nsw i32 %310, 1
  %352 = load i32, ptr %301, align 4, !tbaa !235
  %353 = icmp slt i32 %351, %352
  br i1 %353, label %309, label %354, !llvm.loop !269

354:                                              ; preds = %350, %294
  %355 = add nuw nsw i64 %295, 1
  %356 = icmp eq i64 %355, %293
  br i1 %356, label %357, label %294, !llvm.loop !270

357:                                              ; preds = %354, %286, %275
  %358 = getelementptr inbounds %struct.DynamicPaintSurface, ptr %202, i64 0, i32 48
  %359 = call ptr @CustomData_get_layer_named(ptr noundef nonnull %197, i32 noundef 17, ptr noundef nonnull %358) #18
  %360 = icmp eq ptr %359, null
  br i1 %360, label %361, label %377

361:                                              ; preds = %357
  %362 = load i16, ptr %206, align 4, !tbaa !34
  %363 = icmp eq i16 %362, 1
  br i1 %363, label %364, label %377

364:                                              ; preds = %361
  %365 = load i16, ptr %219, align 2, !tbaa !43
  switch i16 %365, label %377 [
    i16 0, label %366
    i16 2, label %370
  ]

366:                                              ; preds = %364
  %367 = load ptr, ptr %198, align 8, !tbaa !52
  %368 = getelementptr inbounds %struct.Mesh, ptr %367, i64 0, i32 23
  %369 = call i32 @CustomData_get_named_layer_index(ptr noundef nonnull %368, i32 noundef 6, ptr noundef nonnull %358) #18
  br label %372

370:                                              ; preds = %364
  %371 = call i32 @defgroup_name_index(ptr noundef %2, ptr noundef nonnull %358) #18
  br label %372

372:                                              ; preds = %366, %370
  %373 = phi i32 [ %369, %366 ], [ %371, %370 ]
  %374 = icmp eq i32 %373, -1
  br i1 %374, label %377, label %375

375:                                              ; preds = %372
  %376 = call ptr @CustomData_add_layer_named(ptr noundef nonnull %197, i32 noundef 17, i32 noundef 1, ptr noundef null, i32 noundef %225, ptr noundef nonnull %358) #18
  br label %377

377:                                              ; preds = %364, %361, %375, %372, %357
  %378 = phi ptr [ %359, %357 ], [ %376, %375 ], [ null, %372 ], [ null, %361 ], [ null, %364 ]
  %379 = icmp ne ptr %378, null
  %380 = icmp sgt i32 %225, 0
  %381 = select i1 %379, i1 %380, i1 false
  br i1 %381, label %382, label %407

382:                                              ; preds = %377
  %383 = zext i32 %225 to i64
  br label %384

384:                                              ; preds = %382, %401
  %385 = phi i64 [ 0, %382 ], [ %405, %401 ]
  %386 = getelementptr inbounds %struct.MLoop, ptr %224, i64 %385
  %387 = load i32, ptr %386, align 4, !tbaa !217
  %388 = shl i32 %387, 2
  %389 = getelementptr inbounds %struct.MLoopCol, ptr %378, i64 %385
  %390 = sext i32 %388 to i64
  %391 = getelementptr inbounds float, ptr %231, i64 %390
  call void @rgb_float_to_uchar(ptr noundef nonnull %389, ptr noundef %391) #18
  %392 = or disjoint i32 %388, 3
  %393 = sext i32 %392 to i64
  %394 = getelementptr inbounds float, ptr %231, i64 %393
  %395 = load float, ptr %394, align 4, !tbaa !123
  %396 = fcmp ugt float %395, 0.000000e+00
  br i1 %396, label %397, label %401

397:                                              ; preds = %384
  %398 = fcmp ogt float %395, 0x3FEFEFEFE0000000
  br i1 %398, label %401, label %399

399:                                              ; preds = %397
  %400 = call float @llvm.fmuladd.f32(float %395, float 2.550000e+02, float 5.000000e-01)
  br label %401

401:                                              ; preds = %399, %397, %384
  %402 = phi float [ 0.000000e+00, %384 ], [ %400, %399 ], [ 2.550000e+02, %397 ]
  %403 = fptoui float %402 to i8
  %404 = getelementptr inbounds %struct.MLoopCol, ptr %378, i64 %385, i32 3
  store i8 %403, ptr %404, align 1, !tbaa !257
  %405 = add nuw nsw i64 %385, 1
  %406 = icmp eq i64 %405, %383
  br i1 %406, label %407, label %384, !llvm.loop !271

407:                                              ; preds = %401, %377
  %408 = load ptr, ptr @MEM_freeN, align 8, !tbaa !44
  call void %408(ptr noundef %231) #18
  %409 = getelementptr inbounds %struct.DynamicPaintSurface, ptr %202, i64 0, i32 49
  %410 = call ptr @CustomData_get_layer_named(ptr noundef nonnull %197, i32 noundef 17, ptr noundef nonnull %409) #18
  %411 = icmp eq ptr %410, null
  br i1 %411, label %412, label %428

412:                                              ; preds = %407
  %413 = load i16, ptr %206, align 4, !tbaa !34
  %414 = icmp eq i16 %413, 1
  br i1 %414, label %415, label %428

415:                                              ; preds = %412
  %416 = load i16, ptr %219, align 2, !tbaa !43
  switch i16 %416, label %428 [
    i16 0, label %417
    i16 2, label %421
  ]

417:                                              ; preds = %415
  %418 = load ptr, ptr %199, align 8, !tbaa !52
  %419 = getelementptr inbounds %struct.Mesh, ptr %418, i64 0, i32 23
  %420 = call i32 @CustomData_get_named_layer_index(ptr noundef nonnull %419, i32 noundef 6, ptr noundef nonnull %409) #18
  br label %423

421:                                              ; preds = %415
  %422 = call i32 @defgroup_name_index(ptr noundef %2, ptr noundef nonnull %358) #18
  br label %423

423:                                              ; preds = %417, %421
  %424 = phi i32 [ %420, %417 ], [ %422, %421 ]
  %425 = icmp eq i32 %424, -1
  br i1 %425, label %428, label %426

426:                                              ; preds = %423
  %427 = call ptr @CustomData_add_layer_named(ptr noundef nonnull %197, i32 noundef 17, i32 noundef 1, ptr noundef null, i32 noundef %225, ptr noundef nonnull %409) #18
  br label %428

428:                                              ; preds = %415, %412, %426, %423, %407
  %429 = phi ptr [ %410, %407 ], [ %427, %426 ], [ null, %423 ], [ null, %412 ], [ null, %415 ]
  %430 = icmp ne ptr %429, null
  %431 = icmp sgt i32 %225, 0
  %432 = select i1 %430, i1 %431, i1 false
  br i1 %432, label %433, label %456

433:                                              ; preds = %428
  %434 = zext i32 %225 to i64
  br label %435

435:                                              ; preds = %433, %447
  %436 = phi i64 [ 0, %433 ], [ %454, %447 ]
  %437 = getelementptr inbounds %struct.MLoop, ptr %224, i64 %436
  %438 = load i32, ptr %437, align 4, !tbaa !217
  %439 = sext i32 %438 to i64
  %440 = getelementptr inbounds %struct.PaintPoint, ptr %223, i64 %439, i32 2
  %441 = load float, ptr %440, align 4, !tbaa !265
  %442 = fcmp ugt float %441, 0.000000e+00
  br i1 %442, label %443, label %447

443:                                              ; preds = %435
  %444 = fcmp ogt float %441, 0x3FEFEFEFE0000000
  br i1 %444, label %447, label %445

445:                                              ; preds = %443
  %446 = call float @llvm.fmuladd.f32(float %441, float 2.550000e+02, float 5.000000e-01)
  br label %447

447:                                              ; preds = %445, %443, %435
  %448 = phi float [ 0.000000e+00, %435 ], [ %446, %445 ], [ 2.550000e+02, %443 ]
  %449 = fptoui float %448 to i8
  %450 = getelementptr inbounds %struct.MLoopCol, ptr %429, i64 %436
  %451 = getelementptr inbounds %struct.MLoopCol, ptr %429, i64 %436, i32 2
  store i8 %449, ptr %451, align 1, !tbaa !266
  %452 = getelementptr inbounds %struct.MLoopCol, ptr %429, i64 %436, i32 1
  store i8 %449, ptr %452, align 1, !tbaa !267
  store i8 %449, ptr %450, align 1, !tbaa !268
  %453 = getelementptr inbounds %struct.MLoopCol, ptr %429, i64 %436, i32 3
  store i8 -1, ptr %453, align 1, !tbaa !257
  %454 = add nuw nsw i64 %436, 1
  %455 = icmp eq i64 %454, %434
  br i1 %455, label %456, label %435, !llvm.loop !272

456:                                              ; preds = %447, %428
  %457 = load i32, ptr %200, align 8, !tbaa !273
  %458 = or i32 %457, 1
  store i32 %458, ptr %200, align 8, !tbaa !273
  br label %548

459:                                              ; preds = %218
  %460 = getelementptr inbounds %struct.DynamicPaintSurface, ptr %202, i64 0, i32 48
  %461 = call i32 @defgroup_name_index(ptr noundef %2, ptr noundef nonnull %460) #18
  %462 = load ptr, ptr %189, align 8, !tbaa !274
  %463 = call ptr %462(ptr noundef %175, i32 noundef 2) #18
  %464 = getelementptr inbounds %struct.PaintSurfaceData, ptr %205, i64 0, i32 1
  %465 = load ptr, ptr %464, align 8, !tbaa !78
  %466 = load i32, ptr %212, align 4, !tbaa !50
  %467 = and i32 %466, 64
  %468 = icmp eq i32 %467, 0
  br i1 %468, label %470, label %469

469:                                              ; preds = %459
  call void @DM_update_weight_mcol(ptr noundef %2, ptr noundef %175, i32 noundef 0, ptr noundef %465, i32 noundef 0, ptr noundef null) #18
  br label %470

470:                                              ; preds = %469, %459
  %471 = icmp eq i32 %461, -1
  %472 = icmp ne ptr %463, null
  %473 = select i1 %471, i1 true, i1 %472
  br i1 %473, label %481, label %474

474:                                              ; preds = %470
  %475 = load i8, ptr %460, align 8, !tbaa !59
  %476 = icmp eq i8 %475, 0
  br i1 %476, label %481, label %477

477:                                              ; preds = %474
  %478 = getelementptr inbounds %struct.PaintSurfaceData, ptr %205, i64 0, i32 4
  %479 = load i32, ptr %478, align 8, !tbaa !194
  %480 = call ptr @CustomData_add_layer_named(ptr noundef %175, i32 noundef 2, i32 noundef 1, ptr noundef null, i32 noundef %479, ptr noundef nonnull %460) #18
  br label %481

481:                                              ; preds = %477, %474, %470
  %482 = phi ptr [ %463, %470 ], [ %480, %477 ], [ null, %474 ]
  %483 = icmp ne i32 %461, -1
  %484 = icmp ne ptr %482, null
  %485 = select i1 %483, i1 %484, i1 false
  br i1 %485, label %486, label %548

486:                                              ; preds = %481
  %487 = getelementptr inbounds %struct.PaintSurfaceData, ptr %205, i64 0, i32 4
  %488 = load i32, ptr %487, align 8, !tbaa !194
  %489 = icmp sgt i32 %488, 0
  br i1 %489, label %490, label %548

490:                                              ; preds = %486, %506
  %491 = phi i64 [ %507, %506 ], [ 0, %486 ]
  %492 = getelementptr inbounds %struct.MDeformVert, ptr %482, i64 %491
  %493 = call ptr @defvert_find_index(ptr noundef nonnull %492, i32 noundef %461) #18
  %494 = icmp eq ptr %493, null
  br i1 %494, label %495, label %501

495:                                              ; preds = %490
  %496 = getelementptr inbounds float, ptr %465, i64 %491
  %497 = load float, ptr %496, align 4, !tbaa !123
  %498 = fcmp une float %497, 0.000000e+00
  br i1 %498, label %499, label %506

499:                                              ; preds = %495
  %500 = call ptr @defvert_verify_index(ptr noundef nonnull %492, i32 noundef %461) #18
  br label %501

501:                                              ; preds = %499, %490
  %502 = phi ptr [ %500, %499 ], [ %493, %490 ]
  %503 = getelementptr inbounds float, ptr %465, i64 %491
  %504 = load float, ptr %503, align 4, !tbaa !123
  %505 = getelementptr inbounds %struct.MDeformWeight, ptr %502, i64 0, i32 1
  store float %504, ptr %505, align 4, !tbaa !275
  br label %506

506:                                              ; preds = %501, %495
  %507 = add nuw nsw i64 %491, 1
  %508 = load i32, ptr %487, align 8, !tbaa !194
  %509 = sext i32 %508 to i64
  %510 = icmp slt i64 %507, %509
  br i1 %510, label %490, label %548, !llvm.loop !277

511:                                              ; preds = %218
  %512 = load ptr, ptr %188, align 8, !tbaa !278
  %513 = call ptr %512(ptr noundef %175) #18
  %514 = getelementptr inbounds %struct.PaintSurfaceData, ptr %205, i64 0, i32 1
  %515 = load ptr, ptr %514, align 8, !tbaa !78
  %516 = getelementptr inbounds %struct.PaintSurfaceData, ptr %205, i64 0, i32 4
  %517 = load i32, ptr %516, align 8, !tbaa !194
  %518 = icmp sgt i32 %517, 0
  br i1 %518, label %519, label %548

519:                                              ; preds = %511
  %520 = zext nneg i32 %517 to i64
  br label %521

521:                                              ; preds = %519, %521
  %522 = phi i64 [ 0, %519 ], [ %546, %521 ]
  %523 = getelementptr inbounds %struct.MVert, ptr %513, i64 %522
  %524 = getelementptr inbounds %struct.MVert, ptr %513, i64 %522, i32 1
  %525 = load i16, ptr %524, align 2, !tbaa !279
  %526 = sitofp i16 %525 to float
  %527 = fmul float %526, 0x3F00002000000000
  %528 = getelementptr inbounds i16, ptr %524, i64 1
  %529 = load i16, ptr %528, align 2, !tbaa !279
  %530 = sitofp i16 %529 to float
  %531 = fmul float %530, 0x3F00002000000000
  %532 = getelementptr inbounds i16, ptr %524, i64 2
  %533 = load i16, ptr %532, align 2, !tbaa !279
  %534 = sitofp i16 %533 to float
  %535 = fmul float %534, 0x3F00002000000000
  %536 = getelementptr inbounds %struct.PaintWavePoint, ptr %515, i64 %522
  %537 = load float, ptr %536, align 4, !tbaa !280
  %538 = load float, ptr %523, align 4, !tbaa !123
  %539 = call float @llvm.fmuladd.f32(float %527, float %537, float %538)
  store float %539, ptr %523, align 4, !tbaa !123
  %540 = getelementptr inbounds float, ptr %523, i64 1
  %541 = load float, ptr %540, align 4, !tbaa !123
  %542 = call float @llvm.fmuladd.f32(float %531, float %537, float %541)
  store float %542, ptr %540, align 4, !tbaa !123
  %543 = getelementptr inbounds float, ptr %523, i64 2
  %544 = load float, ptr %543, align 4, !tbaa !123
  %545 = call float @llvm.fmuladd.f32(float %535, float %537, float %544)
  store float %545, ptr %543, align 4, !tbaa !123
  %546 = add nuw nsw i64 %522, 1
  %547 = icmp eq i64 %546, %520
  br i1 %547, label %548, label %521, !llvm.loop !282

548:                                              ; preds = %521, %506, %511, %486, %481, %456, %218
  %549 = phi i8 [ %203, %456 ], [ %203, %481 ], [ %203, %218 ], [ %203, %486 ], [ 1, %511 ], [ %203, %506 ], [ 1, %521 ]
  %550 = load i16, ptr %219, align 2, !tbaa !43
  %551 = icmp eq i16 %550, 1
  br i1 %551, label %552, label %553

552:                                              ; preds = %548
  call fastcc void @dynamicPaint_applySurfaceDisplace(ptr noundef nonnull %202, ptr noundef %175)
  br label %553

553:                                              ; preds = %552, %548, %211, %201
  %554 = phi i8 [ %203, %211 ], [ 1, %552 ], [ %549, %548 ], [ %203, %201 ]
  %555 = load ptr, ptr %202, align 8, !tbaa !44
  %556 = icmp eq ptr %555, null
  br i1 %556, label %557, label %201, !llvm.loop !283

557:                                              ; preds = %553
  %558 = icmp eq i8 %554, 0
  br i1 %558, label %563, label %559

559:                                              ; preds = %557
  %560 = getelementptr inbounds %struct.DerivedMesh, ptr %175, i64 0, i32 16
  %561 = load i32, ptr %560, align 8, !tbaa !273
  %562 = or i32 %561, 4
  store i32 %562, ptr %560, align 8, !tbaa !273
  br label %563

563:                                              ; preds = %183, %559, %557, %178, %174
  %564 = getelementptr inbounds %struct.DynamicPaintModifierData, ptr %0, i64 0, i32 2
  %565 = load ptr, ptr %564, align 8, !tbaa !62
  %566 = icmp eq ptr %565, null
  br i1 %566, label %578, label %567

567:                                              ; preds = %563
  %568 = getelementptr inbounds %struct.DynamicPaintBrushSettings, ptr %565, i64 0, i32 1
  %569 = load ptr, ptr %568, align 8, !tbaa !65
  %570 = icmp eq ptr %569, null
  br i1 %570, label %574, label %571

571:                                              ; preds = %567
  %572 = getelementptr inbounds %struct.DerivedMesh, ptr %569, i64 0, i32 95
  %573 = load ptr, ptr %572, align 8, !tbaa !67
  call void %573(ptr noundef nonnull %569) #18
  br label %574

574:                                              ; preds = %571, %567
  %575 = call ptr @CDDM_copy(ptr noundef %175) #18
  %576 = load ptr, ptr %564, align 8, !tbaa !62
  %577 = getelementptr inbounds %struct.DynamicPaintBrushSettings, ptr %576, i64 0, i32 1
  store ptr %575, ptr %577, align 8, !tbaa !65
  br label %578

578:                                              ; preds = %563, %574
  ret ptr %175
}

declare void @DM_ensure_tessface(ptr noundef) local_unnamed_addr #5

; Function Attrs: nounwind uwtable
define dso_local noundef i32 @dynamicPaint_createUVSurface(ptr noundef %0, ptr noundef %1) local_unnamed_addr #4 {
  %3 = alloca [2 x float], align 4
  %4 = alloca [2 x float], align 4
  %5 = alloca [64 x i8], align 16
  %6 = alloca [5 x [2 x float]], align 16
  %7 = alloca [2 x float], align 4
  %8 = alloca [2 x float], align 4
  %9 = alloca [2 x float], align 4
  %10 = alloca [2 x float], align 4
  %11 = alloca [2 x float], align 4
  %12 = alloca [2 x float], align 4
  %13 = alloca [2 x float], align 4
  %14 = alloca [2 x float], align 4
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %5) #18
  %15 = getelementptr inbounds %struct.DynamicPaintSurface, ptr %1, i64 0, i32 2
  %16 = load ptr, ptr %15, align 8, !tbaa !57
  %17 = getelementptr inbounds %struct.DynamicPaintCanvasSettings, ptr %16, i64 0, i32 1
  %18 = load ptr, ptr %17, align 8, !tbaa !109
  %19 = icmp eq ptr %18, null
  br i1 %19, label %20, label %23

20:                                               ; preds = %2
  %21 = getelementptr inbounds %struct.DynamicPaintCanvasSettings, ptr %16, i64 0, i32 6
  %22 = tail call ptr @BLI_strncpy(ptr noundef nonnull %21, ptr noundef nonnull @.str.12, i64 noundef 64) #18
  br label %1034

23:                                               ; preds = %2
  %24 = getelementptr inbounds %struct.DynamicPaintSurface, ptr %1, i64 0, i32 10
  %25 = load i16, ptr %24, align 4, !tbaa !34
  %26 = icmp eq i16 %25, 2
  br i1 %26, label %30, label %27

27:                                               ; preds = %23
  %28 = getelementptr inbounds %struct.DynamicPaintCanvasSettings, ptr %16, i64 0, i32 6
  %29 = tail call ptr @BLI_strncpy(ptr noundef nonnull %28, ptr noundef nonnull @.str.13, i64 noundef 64) #18
  br label %1034

30:                                               ; preds = %23
  %31 = getelementptr inbounds %struct.DerivedMesh, ptr %18, i64 0, i32 25
  %32 = load ptr, ptr %31, align 8, !tbaa !200
  %33 = tail call i32 %32(ptr noundef nonnull %18) #18
  %34 = getelementptr inbounds %struct.DerivedMesh, ptr %18, i64 0, i32 33
  %35 = load ptr, ptr %34, align 8, !tbaa !199
  %36 = tail call ptr %35(ptr noundef nonnull %18) #18
  %37 = getelementptr inbounds %struct.DerivedMesh, ptr %18, i64 0, i32 2
  %38 = getelementptr inbounds %struct.DynamicPaintSurface, ptr %1, i64 0, i32 46
  call void @CustomData_validate_layer_name(ptr noundef nonnull %37, i32 noundef 5, ptr noundef nonnull %38, ptr noundef nonnull %5) #18
  %39 = call ptr @CustomData_get_layer_named(ptr noundef nonnull %37, i32 noundef 5, ptr noundef nonnull %5) #18
  %40 = icmp eq ptr %39, null
  br i1 %40, label %41, label %44

41:                                               ; preds = %30
  %42 = getelementptr inbounds %struct.DynamicPaintCanvasSettings, ptr %16, i64 0, i32 6
  %43 = call ptr @BLI_strncpy(ptr noundef nonnull %42, ptr noundef nonnull @.str.14, i64 noundef 64) #18
  br label %1034

44:                                               ; preds = %30
  %45 = getelementptr inbounds %struct.DynamicPaintSurface, ptr %1, i64 0, i32 20
  %46 = load i32, ptr %45, align 4, !tbaa !124
  %47 = add i32 %46, -8193
  %48 = icmp ult i32 %47, -8177
  br i1 %48, label %49, label %52

49:                                               ; preds = %44
  %50 = getelementptr inbounds %struct.DynamicPaintCanvasSettings, ptr %16, i64 0, i32 6
  %51 = call ptr @BLI_strncpy(ptr noundef nonnull %50, ptr noundef nonnull @.str.15, i64 noundef 64) #18
  br label %1034

52:                                               ; preds = %44
  %53 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.16, i32 noundef %46, i32 noundef %46, i32 noundef %33)
  %54 = getelementptr inbounds %struct.DynamicPaintSurface, ptr %1, i64 0, i32 3
  %55 = load ptr, ptr %54, align 8, !tbaa !72
  %56 = icmp eq ptr %55, null
  br i1 %56, label %58, label %57

57:                                               ; preds = %52
  call void @dynamicPaint_freeSurfaceData(ptr noundef %1)
  br label %58

58:                                               ; preds = %57, %52
  %59 = load ptr, ptr @MEM_callocN, align 8, !tbaa !44
  %60 = call ptr %59(i64 noundef 40, ptr noundef nonnull @.str.11) #18
  store ptr %60, ptr %54, align 8, !tbaa !72
  %61 = icmp eq ptr %60, null
  br i1 %61, label %62, label %65

62:                                               ; preds = %58
  %63 = getelementptr inbounds %struct.DynamicPaintCanvasSettings, ptr %16, i64 0, i32 6
  %64 = call ptr @BLI_strncpy(ptr noundef nonnull %63, ptr noundef nonnull @.str.17, i64 noundef 64) #18
  br label %1034

65:                                               ; preds = %58
  %66 = getelementptr inbounds %struct.DynamicPaintSurface, ptr %1, i64 0, i32 18
  %67 = load i32, ptr %66, align 4, !tbaa !50
  %68 = and i32 %67, 2
  %69 = icmp eq i32 %68, 0
  %70 = select i1 %69, i32 1, i32 5
  %71 = load ptr, ptr @MEM_callocN, align 8, !tbaa !44
  %72 = mul nuw nsw i32 %46, %46
  %73 = zext nneg i32 %72 to i64
  %74 = mul nuw nsw i64 %73, 28
  %75 = call ptr %71(i64 noundef %74, ptr noundef nonnull @.str.18) #18
  %76 = icmp eq ptr %75, null
  %77 = load ptr, ptr @MEM_callocN, align 8, !tbaa !44
  %78 = shl nuw nsw i64 %73, 2
  %79 = call ptr %77(i64 noundef %78, ptr noundef nonnull @.str.19) #18
  %80 = icmp eq ptr %79, null
  %81 = load ptr, ptr @MEM_mallocN, align 8, !tbaa !44
  %82 = mul nuw nsw i32 %70, %72
  %83 = zext nneg i32 %82 to i64
  %84 = mul nuw nsw i64 %83, 12
  %85 = call ptr %81(i64 noundef %84, ptr noundef nonnull @.str.20) #18
  %86 = icmp eq ptr %85, null
  %87 = select i1 %86, i1 true, i1 %80
  %88 = select i1 %87, i1 true, i1 %76
  br i1 %88, label %95, label %89

89:                                               ; preds = %65
  %90 = load ptr, ptr @MEM_mallocN, align 8, !tbaa !44
  %91 = sext i32 %33 to i64
  %92 = shl nsw i64 %91, 4
  %93 = call ptr %90(i64 noundef %92, ptr noundef nonnull @.str.21) #18
  %94 = icmp ne ptr %93, null
  br label %95

95:                                               ; preds = %89, %65
  %96 = phi ptr [ null, %65 ], [ %93, %89 ]
  %97 = phi i1 [ false, %65 ], [ %94, %89 ]
  br i1 %97, label %98, label %1010

98:                                               ; preds = %95
  %99 = icmp sgt i32 %33, 0
  br i1 %99, label %100, label %156

100:                                              ; preds = %98
  %101 = zext nneg i32 %33 to i64
  br label %102

102:                                              ; preds = %100, %153
  %103 = phi i64 [ 0, %100 ], [ %154, %153 ]
  %104 = getelementptr inbounds %struct.MFace, ptr %36, i64 %103, i32 3
  %105 = load i32, ptr %104, align 4, !tbaa !201
  %106 = icmp eq i32 %105, 0
  %107 = select i1 %106, i64 3, i64 4
  %108 = getelementptr inbounds %struct.Bounds2D, ptr %96, i64 %103
  %109 = getelementptr inbounds %struct.MTFace, ptr %39, i64 %103
  %110 = load float, ptr %109, align 4, !tbaa !123
  store float %110, ptr %108, align 4, !tbaa !123
  %111 = getelementptr inbounds float, ptr %109, i64 1
  %112 = load float, ptr %111, align 4, !tbaa !123
  %113 = getelementptr inbounds float, ptr %108, i64 1
  store float %112, ptr %113, align 4, !tbaa !123
  %114 = getelementptr inbounds %struct.Bounds2D, ptr %96, i64 %103, i32 1
  %115 = load float, ptr %109, align 4, !tbaa !123
  store float %115, ptr %114, align 4, !tbaa !123
  %116 = load float, ptr %111, align 4, !tbaa !123
  %117 = getelementptr inbounds float, ptr %114, i64 1
  store float %116, ptr %117, align 4, !tbaa !123
  %118 = getelementptr inbounds %struct.Bounds2D, ptr %96, i64 %103, i32 1, i64 1
  %119 = load float, ptr %108, align 4, !tbaa !123
  %120 = load float, ptr %113, align 4, !tbaa !123
  %121 = load float, ptr %114, align 4, !tbaa !123
  %122 = load float, ptr %118, align 4, !tbaa !123
  br label %123

123:                                              ; preds = %102, %149
  %124 = phi i64 [ 1, %102 ], [ %151, %149 ]
  %125 = phi float [ %119, %102 ], [ %134, %149 ]
  %126 = phi float [ %120, %102 ], [ %140, %149 ]
  %127 = phi float [ %121, %102 ], [ %145, %149 ]
  %128 = phi float [ %122, %102 ], [ %150, %149 ]
  %129 = getelementptr inbounds [4 x [2 x float]], ptr %109, i64 0, i64 %124
  %130 = load float, ptr %129, align 8, !tbaa !123
  %131 = fcmp olt float %130, %125
  br i1 %131, label %132, label %133

132:                                              ; preds = %123
  store float %130, ptr %108, align 4, !tbaa !123
  br label %133

133:                                              ; preds = %132, %123
  %134 = phi float [ %130, %132 ], [ %125, %123 ]
  %135 = getelementptr inbounds [4 x [2 x float]], ptr %109, i64 0, i64 %124, i64 1
  %136 = load float, ptr %135, align 4, !tbaa !123
  %137 = fcmp olt float %136, %126
  br i1 %137, label %138, label %139

138:                                              ; preds = %133
  store float %136, ptr %113, align 4, !tbaa !123
  br label %139

139:                                              ; preds = %138, %133
  %140 = phi float [ %136, %138 ], [ %126, %133 ]
  %141 = load float, ptr %129, align 8, !tbaa !123
  %142 = fcmp ogt float %141, %127
  br i1 %142, label %143, label %144

143:                                              ; preds = %139
  store float %141, ptr %114, align 4, !tbaa !123
  br label %144

144:                                              ; preds = %143, %139
  %145 = phi float [ %141, %143 ], [ %127, %139 ]
  %146 = load float, ptr %135, align 4, !tbaa !123
  %147 = fcmp ogt float %146, %128
  br i1 %147, label %148, label %149

148:                                              ; preds = %144
  store float %146, ptr %118, align 4, !tbaa !123
  br label %149

149:                                              ; preds = %144, %148
  %150 = phi float [ %128, %144 ], [ %146, %148 ]
  %151 = add nuw nsw i64 %124, 1
  %152 = icmp eq i64 %151, %107
  br i1 %152, label %153, label %123, !llvm.loop !284

153:                                              ; preds = %149
  %154 = add nuw nsw i64 %103, 1
  %155 = icmp eq i64 %154, %101
  br i1 %155, label %156, label %102, !llvm.loop !285

156:                                              ; preds = %153, %98
  br i1 %97, label %157, label %1010

157:                                              ; preds = %156
  %158 = icmp sgt i32 %46, 0
  br i1 %158, label %159, label %194

159:                                              ; preds = %157
  %160 = sitofp i32 %46 to float
  %161 = getelementptr inbounds [2 x float], ptr %6, i64 0, i64 1
  %162 = getelementptr inbounds [5 x [2 x float]], ptr %6, i64 0, i64 1
  %163 = getelementptr inbounds [5 x [2 x float]], ptr %6, i64 0, i64 1, i64 1
  %164 = getelementptr inbounds [5 x [2 x float]], ptr %6, i64 0, i64 2
  %165 = getelementptr inbounds [5 x [2 x float]], ptr %6, i64 0, i64 2, i64 1
  %166 = getelementptr inbounds [5 x [2 x float]], ptr %6, i64 0, i64 3
  %167 = getelementptr inbounds [5 x [2 x float]], ptr %6, i64 0, i64 3, i64 1
  %168 = getelementptr inbounds [5 x [2 x float]], ptr %6, i64 0, i64 4
  %169 = getelementptr inbounds [5 x [2 x float]], ptr %6, i64 0, i64 4, i64 1
  %170 = icmp sgt i32 %33, 0
  %171 = getelementptr inbounds float, ptr %7, i64 1
  %172 = getelementptr inbounds float, ptr %8, i64 1
  %173 = getelementptr inbounds float, ptr %9, i64 1
  %174 = getelementptr inbounds float, ptr %7, i64 1
  %175 = getelementptr inbounds float, ptr %8, i64 1
  %176 = getelementptr inbounds float, ptr %9, i64 1
  %177 = getelementptr inbounds [2 x float], ptr %10, i64 0, i64 1
  %178 = zext nneg i32 %46 to i64
  %179 = zext nneg i32 %46 to i64
  %180 = zext nneg i32 %33 to i64
  %181 = zext nneg i32 %70 to i64
  br label %182

182:                                              ; preds = %159, %416
  %183 = phi i64 [ 0, %159 ], [ %417, %416 ]
  %184 = trunc i64 %183 to i32
  %185 = sitofp i32 %184 to float
  %186 = fadd float %185, 5.000000e-01
  %187 = fdiv float %186, %160
  %188 = fdiv float %185, %160
  %189 = fadd float %185, 1.000000e+00
  %190 = fdiv float %189, %160
  %191 = trunc i64 %183 to i32
  %192 = mul i32 %46, %191
  %193 = zext i32 %192 to i64
  br label %212

194:                                              ; preds = %416, %157
  %195 = icmp sgt i32 %46, 0
  br i1 %195, label %196, label %432

196:                                              ; preds = %194
  %197 = add nsw i32 %46, -1
  %198 = sitofp i32 %46 to float
  %199 = getelementptr inbounds float, ptr %11, i64 1
  %200 = getelementptr inbounds float, ptr %12, i64 1
  %201 = getelementptr inbounds float, ptr %13, i64 1
  %202 = getelementptr inbounds float, ptr %11, i64 1
  %203 = getelementptr inbounds float, ptr %12, i64 1
  %204 = getelementptr inbounds float, ptr %13, i64 1
  %205 = getelementptr inbounds [2 x float], ptr %14, i64 0, i64 1
  %206 = zext nneg i32 %46 to i64
  %207 = sext i32 %197 to i64
  %208 = sext i32 %197 to i64
  %209 = zext nneg i32 %46 to i64
  %210 = zext nneg i32 %46 to i64
  %211 = zext nneg i32 %70 to i64
  br label %419

212:                                              ; preds = %182, %413
  %213 = phi i64 [ 0, %182 ], [ %414, %413 ]
  %214 = add nuw nsw i64 %213, %193
  %215 = getelementptr inbounds %struct.PaintUVPoint, ptr %75, i64 %214
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %6) #18
  store i32 -1, ptr %215, align 4, !tbaa !210
  %216 = getelementptr inbounds %struct.PaintUVPoint, ptr %75, i64 %214, i32 5
  store i32 -1, ptr %216, align 4, !tbaa !286
  %217 = getelementptr inbounds %struct.PaintUVPoint, ptr %75, i64 %214, i32 1
  %218 = trunc i64 %214 to i32
  store i32 %218, ptr %217, align 4, !tbaa !287
  %219 = trunc i64 %213 to i32
  %220 = sitofp i32 %219 to float
  %221 = fadd float %220, 5.000000e-01
  %222 = fdiv float %221, %160
  store float %222, ptr %6, align 16, !tbaa !123
  store float %187, ptr %161, align 4, !tbaa !123
  %223 = fdiv float %220, %160
  store float %223, ptr %162, align 8, !tbaa !123
  store float %188, ptr %163, align 4, !tbaa !123
  %224 = fadd float %220, 1.000000e+00
  %225 = fdiv float %224, %160
  store float %225, ptr %164, align 16, !tbaa !123
  store float %188, ptr %165, align 4, !tbaa !123
  store float %223, ptr %166, align 8, !tbaa !123
  store float %190, ptr %167, align 4, !tbaa !123
  store float %225, ptr %168, align 16, !tbaa !123
  store float %190, ptr %169, align 4, !tbaa !123
  %226 = trunc i64 %214 to i32
  %227 = mul nsw i32 %70, %226
  %228 = getelementptr inbounds %struct.PaintUVPoint, ptr %75, i64 %214, i32 6
  %229 = getelementptr inbounds %struct.PaintUVPoint, ptr %75, i64 %214, i32 2
  %230 = getelementptr inbounds %struct.PaintUVPoint, ptr %75, i64 %214, i32 3
  %231 = getelementptr inbounds %struct.PaintUVPoint, ptr %75, i64 %214, i32 4
  %232 = zext i32 %227 to i64
  %233 = getelementptr %struct.Vec3f, ptr %85, i64 %232
  br label %234

234:                                              ; preds = %212, %408
  %235 = phi i32 [ 0, %212 ], [ %411, %408 ]
  %236 = phi i16 [ 0, %212 ], [ %409, %408 ]
  br i1 %170, label %237, label %408

237:                                              ; preds = %234
  %238 = sext i32 %235 to i64
  %239 = getelementptr inbounds [5 x [2 x float]], ptr %6, i64 0, i64 %238
  %240 = load float, ptr %239, align 8, !tbaa !123
  %241 = getelementptr inbounds [5 x [2 x float]], ptr %6, i64 0, i64 %238, i64 1
  %242 = getelementptr inbounds float, ptr %239, i64 1
  br label %243

243:                                              ; preds = %237, %404
  %244 = phi i64 [ 0, %237 ], [ %406, %404 ]
  %245 = phi i16 [ %236, %237 ], [ %405, %404 ]
  %246 = getelementptr inbounds %struct.Bounds2D, ptr %96, i64 %244
  %247 = load float, ptr %246, align 4, !tbaa !123
  %248 = fcmp ogt float %247, %240
  br i1 %248, label %404, label %249

249:                                              ; preds = %243
  %250 = getelementptr inbounds [2 x float], ptr %246, i64 0, i64 1
  %251 = load float, ptr %250, align 4, !tbaa !123
  %252 = load float, ptr %241, align 4, !tbaa !123
  %253 = fcmp ogt float %251, %252
  br i1 %253, label %404, label %254

254:                                              ; preds = %249
  %255 = getelementptr inbounds %struct.Bounds2D, ptr %96, i64 %244, i32 1
  %256 = load float, ptr %255, align 4, !tbaa !123
  %257 = fcmp olt float %256, %240
  br i1 %257, label %404, label %258

258:                                              ; preds = %254
  %259 = getelementptr inbounds %struct.Bounds2D, ptr %96, i64 %244, i32 1, i64 1
  %260 = load float, ptr %259, align 4, !tbaa !123
  %261 = fcmp olt float %260, %252
  br i1 %261, label %404, label %262

262:                                              ; preds = %258
  %263 = getelementptr inbounds %struct.MTFace, ptr %39, i64 %244
  %264 = getelementptr inbounds [4 x [2 x float]], ptr %263, i64 0, i64 2
  %265 = load float, ptr %264, align 4, !tbaa !123
  %266 = load float, ptr %263, align 4, !tbaa !123
  %267 = fsub float %265, %266
  %268 = getelementptr inbounds [4 x [2 x float]], ptr %263, i64 0, i64 2, i64 1
  %269 = load float, ptr %268, align 4, !tbaa !123
  %270 = getelementptr inbounds float, ptr %263, i64 1
  %271 = load float, ptr %270, align 4, !tbaa !123
  %272 = fsub float %269, %271
  %273 = getelementptr inbounds [4 x [2 x float]], ptr %263, i64 0, i64 1
  %274 = load float, ptr %273, align 4, !tbaa !123
  %275 = fsub float %274, %266
  %276 = getelementptr inbounds [4 x [2 x float]], ptr %263, i64 0, i64 1, i64 1
  %277 = load float, ptr %276, align 4, !tbaa !123
  %278 = fsub float %277, %271
  %279 = fsub float %240, %266
  %280 = load float, ptr %242, align 4, !tbaa !123
  %281 = fsub float %280, %271
  %282 = fmul float %272, %272
  %283 = call float @llvm.fmuladd.f32(float %267, float %267, float %282)
  %284 = fmul float %272, %278
  %285 = call float @llvm.fmuladd.f32(float %267, float %275, float %284)
  %286 = fmul float %272, %281
  %287 = call float @llvm.fmuladd.f32(float %267, float %279, float %286)
  %288 = fmul float %278, %278
  %289 = call float @llvm.fmuladd.f32(float %275, float %275, float %288)
  %290 = fmul float %278, %281
  %291 = call float @llvm.fmuladd.f32(float %275, float %279, float %290)
  %292 = fneg float %285
  %293 = fmul float %285, %292
  %294 = call float @llvm.fmuladd.f32(float %283, float %289, float %293)
  %295 = fcmp une float %294, 0.000000e+00
  %296 = fdiv float 1.000000e+00, %294
  %297 = select i1 %295, float %296, float 1.000000e+00
  %298 = fmul float %291, %292
  %299 = call float @llvm.fmuladd.f32(float %289, float %287, float %298)
  %300 = fmul float %299, %297
  %301 = fmul float %287, %292
  %302 = call float @llvm.fmuladd.f32(float %283, float %291, float %301)
  %303 = fmul float %302, %297
  %304 = fcmp ogt float %300, 0.000000e+00
  %305 = fcmp ogt float %303, 0.000000e+00
  %306 = select i1 %304, i1 %305, i1 false
  %307 = fadd float %300, %303
  %308 = fcmp olt float %307, 1.000000e+00
  %309 = select i1 %306, i1 %308, i1 false
  %310 = select i1 %309, i16 1, i16 %245
  %311 = icmp eq i16 %310, 0
  br i1 %311, label %312, label %348

312:                                              ; preds = %262
  %313 = getelementptr inbounds %struct.MFace, ptr %36, i64 %244, i32 3
  %314 = load i32, ptr %313, align 4, !tbaa !201
  %315 = icmp eq i32 %314, 0
  br i1 %315, label %348, label %316

316:                                              ; preds = %312
  %317 = getelementptr inbounds [4 x [2 x float]], ptr %263, i64 0, i64 3
  %318 = load float, ptr %317, align 4, !tbaa !123
  %319 = fsub float %318, %266
  %320 = getelementptr inbounds [4 x [2 x float]], ptr %263, i64 0, i64 3, i64 1
  %321 = load float, ptr %320, align 4, !tbaa !123
  %322 = fsub float %321, %271
  %323 = fmul float %272, %322
  %324 = call float @llvm.fmuladd.f32(float %267, float %319, float %323)
  %325 = fmul float %322, %322
  %326 = call float @llvm.fmuladd.f32(float %319, float %319, float %325)
  %327 = fmul float %281, %322
  %328 = call float @llvm.fmuladd.f32(float %319, float %279, float %327)
  %329 = fneg float %324
  %330 = fmul float %324, %329
  %331 = call float @llvm.fmuladd.f32(float %283, float %326, float %330)
  %332 = fcmp une float %331, 0.000000e+00
  %333 = fdiv float 1.000000e+00, %331
  %334 = select i1 %332, float %333, float 1.000000e+00
  %335 = fmul float %328, %329
  %336 = call float @llvm.fmuladd.f32(float %326, float %287, float %335)
  %337 = fmul float %336, %334
  %338 = fmul float %287, %329
  %339 = call float @llvm.fmuladd.f32(float %283, float %328, float %338)
  %340 = fmul float %339, %334
  %341 = fcmp ogt float %337, 0.000000e+00
  %342 = fcmp ogt float %340, 0.000000e+00
  %343 = select i1 %341, i1 %342, i1 false
  %344 = fadd float %337, %340
  %345 = fcmp olt float %344, 1.000000e+00
  %346 = select i1 %343, i1 %345, i1 false
  %347 = select i1 %346, i16 2, i16 0
  br label %348

348:                                              ; preds = %316, %312, %262
  %349 = phi i16 [ %310, %262 ], [ 0, %312 ], [ %347, %316 ]
  %350 = icmp eq i16 %349, 0
  br i1 %350, label %404, label %351

351:                                              ; preds = %348
  %352 = trunc i64 %244 to i32
  %353 = getelementptr inbounds [4 x [2 x float]], ptr %263, i64 0, i64 2
  %354 = getelementptr inbounds [4 x [2 x float]], ptr %263, i64 0, i64 2, i64 1
  %355 = getelementptr inbounds float, ptr %263, i64 1
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %7) #18
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %8) #18
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %9) #18
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %10) #18
  %356 = icmp eq i16 %349, 1
  br i1 %356, label %357, label %365

357:                                              ; preds = %351
  %358 = getelementptr inbounds [4 x [2 x float]], ptr %263, i64 0, i64 1, i64 1
  %359 = getelementptr inbounds [4 x [2 x float]], ptr %263, i64 0, i64 1
  %360 = load float, ptr %263, align 4, !tbaa !123
  store float %360, ptr %7, align 4, !tbaa !123
  %361 = load float, ptr %355, align 4, !tbaa !123
  store float %361, ptr %174, align 4, !tbaa !123
  %362 = load float, ptr %359, align 4, !tbaa !123
  store float %362, ptr %8, align 4, !tbaa !123
  %363 = load float, ptr %358, align 4, !tbaa !123
  store float %363, ptr %175, align 4, !tbaa !123
  %364 = load float, ptr %353, align 4, !tbaa !123
  store float %364, ptr %9, align 4, !tbaa !123
  br label %373

365:                                              ; preds = %351
  %366 = load float, ptr %263, align 4, !tbaa !123
  store float %366, ptr %7, align 4, !tbaa !123
  %367 = load float, ptr %355, align 4, !tbaa !123
  store float %367, ptr %171, align 4, !tbaa !123
  %368 = load float, ptr %353, align 4, !tbaa !123
  store float %368, ptr %8, align 4, !tbaa !123
  %369 = load float, ptr %354, align 4, !tbaa !123
  store float %369, ptr %172, align 4, !tbaa !123
  %370 = getelementptr inbounds [4 x [2 x float]], ptr %263, i64 0, i64 3
  %371 = load float, ptr %370, align 4, !tbaa !123
  store float %371, ptr %9, align 4, !tbaa !123
  %372 = getelementptr inbounds [4 x [2 x float]], ptr %263, i64 0, i64 3, i64 1
  br label %373

373:                                              ; preds = %365, %357
  %374 = phi ptr [ %372, %365 ], [ %354, %357 ]
  %375 = phi ptr [ %173, %365 ], [ %176, %357 ]
  %376 = load float, ptr %374, align 4, !tbaa !123
  store float %376, ptr %375, align 4, !tbaa !123
  br label %377

377:                                              ; preds = %373, %377
  %378 = phi i64 [ 0, %373 ], [ %390, %377 ]
  %379 = shl nuw nsw i64 %378, 1
  %380 = getelementptr inbounds [10 x float], ptr @__const.dynamicPaint_createUVSurface.jitter5sample, i64 0, i64 %379
  %381 = load float, ptr %380, align 8, !tbaa !123
  %382 = fdiv float %381, %160
  %383 = fadd float %222, %382
  store float %383, ptr %10, align 4, !tbaa !123
  %384 = or disjoint i64 %379, 1
  %385 = getelementptr inbounds [10 x float], ptr @__const.dynamicPaint_createUVSurface.jitter5sample, i64 0, i64 %384
  %386 = load float, ptr %385, align 4, !tbaa !123
  %387 = fdiv float %386, %160
  %388 = fadd float %187, %387
  store float %388, ptr %177, align 4, !tbaa !123
  %389 = getelementptr %struct.Vec3f, ptr %233, i64 %378
  call void @barycentric_weights_v2(ptr noundef nonnull %7, ptr noundef nonnull %8, ptr noundef nonnull %9, ptr noundef nonnull %10, ptr noundef %389) #18
  %390 = add nuw nsw i64 %378, 1
  %391 = icmp eq i64 %390, %181
  br i1 %391, label %392, label %377, !llvm.loop !288

392:                                              ; preds = %377
  store i32 %352, ptr %215, align 4, !tbaa !210
  %393 = icmp eq i16 %349, 2
  %394 = zext i1 %393 to i16
  store i16 %394, ptr %228, align 4, !tbaa !208
  %395 = getelementptr inbounds %struct.MFace, ptr %36, i64 %244
  %396 = load i32, ptr %395, align 4, !tbaa !289
  store i32 %396, ptr %229, align 4, !tbaa !290
  %397 = getelementptr inbounds %struct.MFace, ptr %36, i64 %244, i32 2
  %398 = getelementptr inbounds %struct.MFace, ptr %36, i64 %244, i32 1
  %399 = select i1 %393, ptr %397, ptr %398
  %400 = load i32, ptr %399, align 4, !tbaa !205
  store i32 %400, ptr %230, align 4, !tbaa !291
  %401 = getelementptr inbounds %struct.MFace, ptr %36, i64 %244, i32 3
  %402 = select i1 %393, ptr %401, ptr %397
  %403 = load i32, ptr %402, align 4, !tbaa !205
  store i32 %403, ptr %231, align 4, !tbaa !292
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %10) #18
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %9) #18
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %8) #18
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %7) #18
  br label %408

404:                                              ; preds = %348, %258, %254, %249, %243
  %405 = phi i16 [ %245, %243 ], [ %245, %249 ], [ %245, %254 ], [ %245, %258 ], [ %349, %348 ]
  %406 = add nuw nsw i64 %244, 1
  %407 = icmp eq i64 %406, %180
  br i1 %407, label %408, label %243, !llvm.loop !293

408:                                              ; preds = %404, %234, %392
  %409 = phi i16 [ %349, %392 ], [ %236, %234 ], [ %405, %404 ]
  %410 = phi i32 [ 5, %392 ], [ %235, %234 ], [ %235, %404 ]
  %411 = add nsw i32 %410, 1
  %412 = icmp slt i32 %410, 4
  br i1 %412, label %234, label %413, !llvm.loop !294

413:                                              ; preds = %408
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %6) #18
  %414 = add nuw nsw i64 %213, 1
  %415 = icmp eq i64 %414, %179
  br i1 %415, label %416, label %212, !llvm.loop !295

416:                                              ; preds = %413
  %417 = add nuw nsw i64 %183, 1
  %418 = icmp eq i64 %417, %178
  br i1 %418, label %194, label %182, !llvm.loop !296

419:                                              ; preds = %196, %547
  %420 = phi i64 [ 0, %196 ], [ %548, %547 ]
  %421 = icmp ne i64 %420, 0
  %422 = icmp slt i64 %420, %208
  %423 = trunc i64 %420 to i32
  %424 = sitofp i32 %423 to float
  %425 = fadd float %424, 5.000000e-01
  %426 = fdiv float %425, %198
  %427 = sext i1 %421 to i64
  %428 = trunc i64 %420 to i32
  %429 = mul i32 %46, %428
  %430 = zext i32 %429 to i64
  %431 = select i1 %422, i64 2, i64 1
  br label %437

432:                                              ; preds = %547, %194
  %433 = icmp sgt i32 %46, 0
  br i1 %433, label %434, label %556

434:                                              ; preds = %432
  %435 = zext nneg i32 %46 to i64
  %436 = zext nneg i32 %46 to i64
  br label %550

437:                                              ; preds = %419, %544
  %438 = phi i64 [ 0, %419 ], [ %545, %544 ]
  %439 = add nuw nsw i64 %438, %430
  %440 = getelementptr inbounds %struct.PaintUVPoint, ptr %75, i64 %439
  %441 = load i32, ptr %440, align 4, !tbaa !210
  %442 = icmp eq i32 %441, -1
  br i1 %442, label %443, label %544

443:                                              ; preds = %437
  %444 = icmp slt i64 %438, %207
  %445 = zext i1 %444 to i32
  %446 = trunc i64 %438 to i32
  %447 = sitofp i32 %446 to float
  %448 = fadd float %447, 5.000000e-01
  %449 = fdiv float %448, %198
  %450 = icmp ne i64 %438, 0
  %451 = sext i1 %450 to i32
  %452 = trunc i64 %439 to i32
  %453 = mul nsw i32 %70, %452
  %454 = getelementptr inbounds %struct.PaintUVPoint, ptr %75, i64 %439, i32 5
  %455 = getelementptr inbounds %struct.PaintUVPoint, ptr %75, i64 %439, i32 6
  %456 = getelementptr inbounds %struct.PaintUVPoint, ptr %75, i64 %439, i32 2
  %457 = getelementptr inbounds %struct.PaintUVPoint, ptr %75, i64 %439, i32 3
  %458 = getelementptr inbounds %struct.PaintUVPoint, ptr %75, i64 %439, i32 4
  %459 = select i1 %444, i32 2, i32 1
  %460 = zext i32 %453 to i64
  %461 = trunc i64 %438 to i32
  %462 = getelementptr %struct.Vec3f, ptr %85, i64 %460
  br label %463

463:                                              ; preds = %443, %540
  %464 = phi i32 [ %451, %443 ], [ %542, %540 ]
  %465 = add nsw i32 %464, %461
  %466 = sext i32 %465 to i64
  br label %467

467:                                              ; preds = %463, %537
  %468 = phi i64 [ %427, %463 ], [ %538, %537 ]
  %469 = trunc i64 %468 to i32
  %470 = or i32 %464, %469
  %471 = icmp eq i32 %470, 0
  br i1 %471, label %537, label %472

472:                                              ; preds = %467
  %473 = add nsw i64 %468, %420
  %474 = mul nsw i64 %473, %206
  %475 = add nsw i64 %474, %466
  %476 = getelementptr inbounds %struct.PaintUVPoint, ptr %75, i64 %475
  %477 = load i32, ptr %476, align 4, !tbaa !210
  %478 = icmp eq i32 %477, -1
  br i1 %478, label %537, label %479

479:                                              ; preds = %472
  %480 = trunc i64 %475 to i32
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %11) #18
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %12) #18
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %13) #18
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %14) #18
  %481 = load i32, ptr %476, align 4, !tbaa !210
  %482 = getelementptr inbounds %struct.PaintUVPoint, ptr %75, i64 %475, i32 6
  %483 = load i16, ptr %482, align 4, !tbaa !208
  %484 = icmp eq i16 %483, 0
  %485 = sext i32 %481 to i64
  %486 = getelementptr inbounds %struct.MTFace, ptr %39, i64 %485
  %487 = load float, ptr %486, align 4, !tbaa !123
  store float %487, ptr %11, align 4, !tbaa !123
  %488 = getelementptr inbounds float, ptr %486, i64 1
  %489 = load float, ptr %488, align 4, !tbaa !123
  br i1 %484, label %490, label %496

490:                                              ; preds = %479
  store float %489, ptr %202, align 4, !tbaa !123
  %491 = getelementptr inbounds [4 x [2 x float]], ptr %486, i64 0, i64 1
  %492 = load float, ptr %491, align 4, !tbaa !123
  store float %492, ptr %12, align 4, !tbaa !123
  %493 = getelementptr inbounds [4 x [2 x float]], ptr %486, i64 0, i64 1, i64 1
  %494 = load float, ptr %493, align 4, !tbaa !123
  store float %494, ptr %203, align 4, !tbaa !123
  %495 = getelementptr inbounds [4 x [2 x float]], ptr %486, i64 0, i64 2
  br label %502

496:                                              ; preds = %479
  store float %489, ptr %199, align 4, !tbaa !123
  %497 = getelementptr inbounds [4 x [2 x float]], ptr %486, i64 0, i64 2
  %498 = load float, ptr %497, align 4, !tbaa !123
  store float %498, ptr %12, align 4, !tbaa !123
  %499 = getelementptr inbounds [4 x [2 x float]], ptr %486, i64 0, i64 2, i64 1
  %500 = load float, ptr %499, align 4, !tbaa !123
  store float %500, ptr %200, align 4, !tbaa !123
  %501 = getelementptr inbounds [4 x [2 x float]], ptr %486, i64 0, i64 3
  br label %502

502:                                              ; preds = %496, %490
  %503 = phi ptr [ %501, %496 ], [ %495, %490 ]
  %504 = phi i64 [ 3, %496 ], [ 2, %490 ]
  %505 = phi ptr [ %201, %496 ], [ %204, %490 ]
  %506 = load float, ptr %503, align 4, !tbaa !123
  store float %506, ptr %13, align 4, !tbaa !123
  %507 = getelementptr inbounds [4 x [2 x float]], ptr %486, i64 0, i64 %504, i64 1
  %508 = load float, ptr %507, align 4, !tbaa !123
  store float %508, ptr %505, align 4, !tbaa !123
  br label %509

509:                                              ; preds = %502, %509
  %510 = phi i64 [ 0, %502 ], [ %522, %509 ]
  %511 = shl nuw nsw i64 %510, 1
  %512 = getelementptr inbounds [10 x float], ptr @__const.dynamicPaint_createUVSurface.jitter5sample, i64 0, i64 %511
  %513 = load float, ptr %512, align 8, !tbaa !123
  %514 = fdiv float %513, %198
  %515 = fadd float %449, %514
  store float %515, ptr %14, align 4, !tbaa !123
  %516 = or disjoint i64 %511, 1
  %517 = getelementptr inbounds [10 x float], ptr @__const.dynamicPaint_createUVSurface.jitter5sample, i64 0, i64 %516
  %518 = load float, ptr %517, align 4, !tbaa !123
  %519 = fdiv float %518, %198
  %520 = fadd float %426, %519
  store float %520, ptr %205, align 4, !tbaa !123
  %521 = getelementptr %struct.Vec3f, ptr %462, i64 %510
  call void @barycentric_weights_v2(ptr noundef nonnull %11, ptr noundef nonnull %12, ptr noundef nonnull %13, ptr noundef nonnull %14, ptr noundef %521) #18
  %522 = add nuw nsw i64 %510, 1
  %523 = icmp eq i64 %522, %211
  br i1 %523, label %524, label %509, !llvm.loop !297

524:                                              ; preds = %509
  store i32 %480, ptr %454, align 4, !tbaa !286
  %525 = load i16, ptr %482, align 4, !tbaa !208
  store i16 %525, ptr %455, align 4, !tbaa !208
  %526 = sext i32 %481 to i64
  %527 = getelementptr inbounds %struct.MFace, ptr %36, i64 %526
  %528 = load i32, ptr %527, align 4, !tbaa !289
  store i32 %528, ptr %456, align 4, !tbaa !290
  %529 = icmp eq i16 %525, 0
  %530 = getelementptr inbounds %struct.MFace, ptr %36, i64 %526, i32 2
  %531 = getelementptr inbounds %struct.MFace, ptr %36, i64 %526, i32 1
  %532 = select i1 %529, ptr %531, ptr %530
  %533 = load i32, ptr %532, align 4, !tbaa !205
  store i32 %533, ptr %457, align 4, !tbaa !291
  %534 = getelementptr inbounds %struct.MFace, ptr %36, i64 %526, i32 3
  %535 = select i1 %529, ptr %530, ptr %534
  %536 = load i32, ptr %535, align 4, !tbaa !205
  store i32 %536, ptr %458, align 4, !tbaa !292
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %14) #18
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %13) #18
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %12) #18
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %11) #18
  br label %540

537:                                              ; preds = %467, %472
  %538 = add nsw i64 %468, 1
  %539 = icmp eq i64 %538, %431
  br i1 %539, label %540, label %467, !llvm.loop !298

540:                                              ; preds = %537, %524
  %541 = phi i32 [ %459, %524 ], [ %464, %537 ]
  %542 = add nsw i32 %541, 1
  %543 = icmp slt i32 %541, %445
  br i1 %543, label %463, label %544, !llvm.loop !299

544:                                              ; preds = %540, %437
  %545 = add nuw nsw i64 %438, 1
  %546 = icmp eq i64 %545, %210
  br i1 %546, label %547, label %437, !llvm.loop !300

547:                                              ; preds = %544
  %548 = add nuw nsw i64 %420, 1
  %549 = icmp eq i64 %548, %209
  br i1 %549, label %432, label %419, !llvm.loop !301

550:                                              ; preds = %434, %584
  %551 = phi i64 [ 0, %434 ], [ %585, %584 ]
  %552 = phi i32 [ 0, %434 ], [ %581, %584 ]
  %553 = trunc i64 %551 to i32
  %554 = mul i32 %46, %553
  %555 = zext i32 %554 to i64
  br label %562

556:                                              ; preds = %584, %432
  %557 = phi i32 [ 0, %432 ], [ %581, %584 ]
  %558 = icmp eq i32 %46, 0
  br i1 %558, label %600, label %559

559:                                              ; preds = %556
  %560 = call i32 @llvm.umax.i32(i32 %72, i32 1)
  %561 = zext nneg i32 %560 to i64
  br label %587

562:                                              ; preds = %550, %577
  %563 = phi i64 [ 0, %550 ], [ %582, %577 ]
  %564 = phi i32 [ %552, %550 ], [ %581, %577 ]
  %565 = add nuw nsw i64 %563, %555
  %566 = getelementptr inbounds %struct.PaintUVPoint, ptr %75, i64 %565
  %567 = load i32, ptr %566, align 4, !tbaa !210
  %568 = icmp eq i32 %567, -1
  br i1 %568, label %569, label %577

569:                                              ; preds = %562
  %570 = getelementptr inbounds %struct.PaintUVPoint, ptr %75, i64 %565, i32 5
  %571 = load i32, ptr %570, align 4, !tbaa !286
  %572 = icmp eq i32 %571, -1
  br i1 %572, label %577, label %573

573:                                              ; preds = %569
  %574 = zext i32 %571 to i64
  %575 = getelementptr inbounds %struct.PaintUVPoint, ptr %75, i64 %574
  %576 = load i32, ptr %575, align 4, !tbaa !210
  store i32 %576, ptr %566, align 4, !tbaa !210
  br label %577

577:                                              ; preds = %573, %569, %562
  %578 = load i32, ptr %566, align 4, !tbaa !210
  %579 = icmp ne i32 %578, -1
  %580 = zext i1 %579 to i32
  %581 = add nsw i32 %564, %580
  %582 = add nuw nsw i64 %563, 1
  %583 = icmp eq i64 %582, %436
  br i1 %583, label %584, label %562, !llvm.loop !302

584:                                              ; preds = %577
  %585 = add nuw nsw i64 %551, 1
  %586 = icmp eq i64 %585, %435
  br i1 %586, label %556, label %550, !llvm.loop !303

587:                                              ; preds = %559, %596
  %588 = phi i64 [ 0, %559 ], [ %598, %596 ]
  %589 = phi i32 [ 0, %559 ], [ %597, %596 ]
  %590 = getelementptr inbounds %struct.PaintUVPoint, ptr %75, i64 %588
  %591 = load i32, ptr %590, align 4, !tbaa !210
  %592 = icmp eq i32 %591, -1
  br i1 %592, label %596, label %593

593:                                              ; preds = %587
  %594 = getelementptr inbounds i32, ptr %79, i64 %588
  store i32 %589, ptr %594, align 4, !tbaa !205
  %595 = add nsw i32 %589, 1
  br label %596

596:                                              ; preds = %587, %593
  %597 = phi i32 [ %595, %593 ], [ %589, %587 ]
  %598 = add nuw nsw i64 %588, 1
  %599 = icmp eq i64 %598, %561
  br i1 %599, label %600, label %587, !llvm.loop !304

600:                                              ; preds = %596, %556
  %601 = getelementptr inbounds %struct.PaintSurfaceData, ptr %60, i64 0, i32 4
  store i32 %72, ptr %601, align 8, !tbaa !194
  call fastcc void @dynamicPaint_initAdjacencyData(ptr noundef %1, i32 noundef 1)
  %602 = getelementptr inbounds %struct.PaintSurfaceData, ptr %60, i64 0, i32 2
  %603 = load ptr, ptr %602, align 8, !tbaa !79
  %604 = icmp ne ptr %603, null
  %605 = icmp sgt i32 %46, 0
  %606 = and i1 %604, %605
  br i1 %606, label %607, label %942

607:                                              ; preds = %600
  %608 = getelementptr inbounds %struct.PaintAdjData, ptr %603, i64 0, i32 1
  %609 = getelementptr inbounds %struct.PaintAdjData, ptr %603, i64 0, i32 2
  %610 = sitofp i32 %46 to float
  %611 = getelementptr inbounds [2 x float], ptr %3, i64 0, i64 1
  %612 = getelementptr inbounds %struct.PaintAdjData, ptr %603, i64 0, i32 3
  %613 = zext nneg i32 %46 to i64
  %614 = zext nneg i32 %46 to i64
  br label %615

615:                                              ; preds = %607, %939
  %616 = phi i64 [ 0, %607 ], [ %940, %939 ]
  %617 = phi i32 [ 0, %607 ], [ %936, %939 ]
  %618 = trunc i64 %616 to i32
  %619 = mul i32 %46, %618
  %620 = zext i32 %619 to i64
  %621 = trunc i64 %616 to i32
  br label %622

622:                                              ; preds = %615, %935
  %623 = phi i64 [ 0, %615 ], [ %937, %935 ]
  %624 = phi i32 [ %617, %615 ], [ %936, %935 ]
  %625 = add nuw nsw i64 %623, %620
  %626 = getelementptr inbounds %struct.PaintUVPoint, ptr %75, i64 %625
  %627 = load i32, ptr %626, align 4, !tbaa !210
  %628 = icmp eq i32 %627, -1
  br i1 %628, label %935, label %629

629:                                              ; preds = %622
  %630 = load ptr, ptr %608, align 8, !tbaa !80
  %631 = getelementptr inbounds i32, ptr %79, i64 %625
  %632 = load i32, ptr %631, align 4, !tbaa !205
  %633 = sext i32 %632 to i64
  %634 = getelementptr inbounds i32, ptr %630, i64 %633
  store i32 %624, ptr %634, align 4, !tbaa !205
  %635 = load ptr, ptr %609, align 8, !tbaa !82
  %636 = load i32, ptr %631, align 4, !tbaa !205
  %637 = sext i32 %636 to i64
  %638 = getelementptr inbounds i32, ptr %635, i64 %637
  store i32 0, ptr %638, align 4, !tbaa !205
  %639 = getelementptr inbounds %struct.PaintUVPoint, ptr %75, i64 %625, i32 6
  %640 = getelementptr inbounds %struct.PaintUVPoint, ptr %75, i64 %625, i32 2
  %641 = getelementptr inbounds %struct.PaintUVPoint, ptr %75, i64 %625, i32 3
  %642 = getelementptr inbounds %struct.PaintUVPoint, ptr %75, i64 %625, i32 4
  %643 = getelementptr inbounds %struct.PaintUVPoint, ptr %75, i64 %625, i32 4
  %644 = getelementptr inbounds %struct.PaintUVPoint, ptr %75, i64 %625, i32 5
  %645 = trunc i64 %623 to i32
  br label %646

646:                                              ; preds = %629, %931
  %647 = phi i64 [ 0, %629 ], [ %933, %931 ]
  %648 = phi i32 [ %624, %629 ], [ %932, %931 ]
  %649 = getelementptr inbounds [8 x i32], ptr @neighX, i64 0, i64 %647
  %650 = load i32, ptr %649, align 4, !tbaa !205
  %651 = add nsw i32 %650, %645
  %652 = getelementptr inbounds [8 x i32], ptr @neighY, i64 0, i64 %647
  %653 = load i32, ptr %652, align 4, !tbaa !205
  %654 = add nsw i32 %653, %621
  %655 = icmp ult i32 %651, %46
  %656 = icmp ult i32 %654, %46
  %657 = select i1 %655, i1 %656, i1 false
  br i1 %657, label %658, label %904

658:                                              ; preds = %646
  %659 = mul nuw nsw i32 %654, %46
  %660 = add nuw nsw i32 %659, %651
  %661 = zext nneg i32 %660 to i64
  %662 = getelementptr inbounds %struct.PaintUVPoint, ptr %75, i64 %661
  %663 = load i32, ptr %662, align 4, !tbaa !210
  %664 = load i32, ptr %626, align 4, !tbaa !210
  %665 = icmp eq i32 %663, %664
  br i1 %665, label %666, label %670

666:                                              ; preds = %658
  %667 = getelementptr inbounds %struct.PaintUVPoint, ptr %75, i64 %661, i32 5
  %668 = load i32, ptr %667, align 4, !tbaa !286
  %669 = icmp eq i32 %668, -1
  br i1 %669, label %904, label %670

670:                                              ; preds = %666, %658
  %671 = icmp eq i32 %663, -1
  br i1 %671, label %676, label %672

672:                                              ; preds = %670
  %673 = getelementptr inbounds %struct.PaintUVPoint, ptr %75, i64 %661, i32 5
  %674 = load i32, ptr %673, align 4, !tbaa !286
  %675 = icmp eq i32 %674, -1
  br i1 %675, label %904, label %676

676:                                              ; preds = %672, %670
  %677 = load ptr, ptr %31, align 8, !tbaa !200
  %678 = call i32 %677(ptr noundef nonnull %18) #18
  %679 = load ptr, ptr %34, align 8, !tbaa !199
  %680 = call ptr %679(ptr noundef nonnull %18) #18
  %681 = call ptr @CustomData_get_layer_named(ptr noundef nonnull %37, i32 noundef 5, ptr noundef nonnull %5) #18
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #18
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #18
  %682 = sitofp i32 %651 to float
  %683 = fadd float %682, 5.000000e-01
  %684 = fdiv float %683, %610
  store float %684, ptr %3, align 4, !tbaa !123
  %685 = sitofp i32 %654 to float
  %686 = fadd float %685, 5.000000e-01
  %687 = fdiv float %686, %610
  store float %687, ptr %611, align 4, !tbaa !123
  %688 = load i16, ptr %639, align 4, !tbaa !208
  %689 = icmp eq i16 %688, 0
  %690 = select i1 %689, i32 2, i32 3
  %691 = select i1 %689, i32 1, i32 2
  %692 = load i32, ptr %640, align 4, !tbaa !290
  %693 = load i32, ptr %641, align 4, !tbaa !291
  %694 = load i32, ptr %626, align 4, !tbaa !210
  %695 = zext i32 %694 to i64
  %696 = getelementptr inbounds %struct.MTFace, ptr %681, i64 %695
  %697 = zext nneg i32 %691 to i64
  %698 = getelementptr inbounds [4 x [2 x float]], ptr %696, i64 0, i64 %697
  %699 = call float @dist_squared_to_line_segment_v2(ptr noundef nonnull %3, ptr noundef %696, ptr noundef nonnull %698) #18
  %700 = load i32, ptr %626, align 4, !tbaa !210
  %701 = zext i32 %700 to i64
  %702 = getelementptr inbounds %struct.MTFace, ptr %681, i64 %701
  %703 = getelementptr inbounds [4 x [2 x float]], ptr %702, i64 0, i64 %697
  %704 = zext nneg i32 %690 to i64
  %705 = getelementptr inbounds [4 x [2 x float]], ptr %702, i64 0, i64 %704
  %706 = call float @dist_squared_to_line_segment_v2(ptr noundef nonnull %3, ptr noundef nonnull %703, ptr noundef nonnull %705) #18
  %707 = fcmp olt float %706, %699
  br i1 %707, label %708, label %711

708:                                              ; preds = %676
  %709 = load i32, ptr %641, align 4, !tbaa !291
  %710 = load i32, ptr %642, align 4, !tbaa !292
  br label %711

711:                                              ; preds = %708, %676
  %712 = phi i32 [ %691, %708 ], [ 0, %676 ]
  %713 = phi i32 [ %690, %708 ], [ %691, %676 ]
  %714 = phi i32 [ %709, %708 ], [ %692, %676 ]
  %715 = phi i32 [ %710, %708 ], [ %693, %676 ]
  %716 = phi float [ %706, %708 ], [ %699, %676 ]
  %717 = load i32, ptr %626, align 4, !tbaa !210
  %718 = zext i32 %717 to i64
  %719 = getelementptr inbounds %struct.MTFace, ptr %681, i64 %718
  %720 = getelementptr inbounds [4 x [2 x float]], ptr %719, i64 0, i64 %704
  %721 = call float @dist_squared_to_line_segment_v2(ptr noundef nonnull %3, ptr noundef nonnull %720, ptr noundef %719) #18
  %722 = fcmp olt float %721, %716
  br i1 %722, label %723, label %726

723:                                              ; preds = %711
  %724 = load i32, ptr %643, align 4, !tbaa !292
  %725 = load i32, ptr %640, align 4, !tbaa !290
  br label %726

726:                                              ; preds = %723, %711
  %727 = phi i32 [ %690, %723 ], [ %712, %711 ]
  %728 = phi i32 [ 0, %723 ], [ %713, %711 ]
  %729 = phi i32 [ %724, %723 ], [ %714, %711 ]
  %730 = phi i32 [ %725, %723 ], [ %715, %711 ]
  %731 = icmp sgt i32 %678, 0
  br i1 %731, label %732, label %802

732:                                              ; preds = %726
  %733 = zext nneg i32 %678 to i64
  br label %734

734:                                              ; preds = %732, %794
  %735 = phi i64 [ 0, %732 ], [ %799, %794 ]
  %736 = phi i32 [ undef, %732 ], [ %797, %794 ]
  %737 = phi i32 [ undef, %732 ], [ %796, %794 ]
  %738 = phi i32 [ -1, %732 ], [ %795, %794 ]
  %739 = getelementptr inbounds %struct.MFace, ptr %680, i64 %735
  %740 = getelementptr inbounds %struct.MFace, ptr %680, i64 %735, i32 3
  %741 = load i32, ptr %740, align 4, !tbaa !201
  %742 = icmp eq i32 %741, 0
  %743 = select i1 %742, i32 -1, i32 %741
  %744 = load i32, ptr %739, align 4, !tbaa !289
  %745 = icmp eq i32 %729, %744
  br i1 %745, label %756, label %746

746:                                              ; preds = %734
  %747 = getelementptr inbounds %struct.MFace, ptr %680, i64 %735, i32 1
  %748 = load i32, ptr %747, align 4, !tbaa !305
  %749 = icmp eq i32 %729, %748
  br i1 %749, label %756, label %750

750:                                              ; preds = %746
  %751 = getelementptr inbounds %struct.MFace, ptr %680, i64 %735, i32 2
  %752 = load i32, ptr %751, align 4, !tbaa !306
  %753 = icmp eq i32 %729, %752
  %754 = icmp eq i32 %729, %743
  %755 = select i1 %753, i1 true, i1 %754
  br i1 %755, label %756, label %794

756:                                              ; preds = %750, %746, %734
  %757 = icmp eq i32 %730, %744
  br i1 %757, label %768, label %758

758:                                              ; preds = %756
  %759 = getelementptr inbounds %struct.MFace, ptr %680, i64 %735, i32 1
  %760 = load i32, ptr %759, align 4, !tbaa !305
  %761 = icmp eq i32 %730, %760
  br i1 %761, label %768, label %762

762:                                              ; preds = %758
  %763 = getelementptr inbounds %struct.MFace, ptr %680, i64 %735, i32 2
  %764 = load i32, ptr %763, align 4, !tbaa !306
  %765 = icmp eq i32 %730, %764
  %766 = icmp eq i32 %730, %743
  %767 = select i1 %765, i1 true, i1 %766
  br i1 %767, label %768, label %794

768:                                              ; preds = %762, %758, %756
  %769 = load i32, ptr %626, align 4, !tbaa !210
  %770 = zext i32 %769 to i64
  %771 = icmp eq i64 %735, %770
  br i1 %771, label %794, label %772

772:                                              ; preds = %768
  br i1 %745, label %782, label %773

773:                                              ; preds = %772
  %774 = getelementptr inbounds %struct.MFace, ptr %680, i64 %735, i32 1
  %775 = load i32, ptr %774, align 4, !tbaa !305
  %776 = icmp eq i32 %729, %775
  br i1 %776, label %782, label %777

777:                                              ; preds = %773
  %778 = getelementptr inbounds %struct.MFace, ptr %680, i64 %735, i32 2
  %779 = load i32, ptr %778, align 4, !tbaa !306
  %780 = icmp eq i32 %729, %779
  %781 = select i1 %780, i32 2, i32 3
  br label %782

782:                                              ; preds = %777, %773, %772
  %783 = phi i32 [ 0, %772 ], [ 1, %773 ], [ %781, %777 ]
  %784 = trunc i64 %735 to i32
  br i1 %757, label %794, label %785

785:                                              ; preds = %782
  %786 = getelementptr inbounds %struct.MFace, ptr %680, i64 %735, i32 1
  %787 = load i32, ptr %786, align 4, !tbaa !305
  %788 = icmp eq i32 %730, %787
  br i1 %788, label %794, label %789

789:                                              ; preds = %785
  %790 = getelementptr inbounds %struct.MFace, ptr %680, i64 %735, i32 2
  %791 = load i32, ptr %790, align 4, !tbaa !306
  %792 = icmp eq i32 %730, %791
  %793 = select i1 %792, i32 2, i32 3
  br label %794

794:                                              ; preds = %789, %785, %782, %768, %762, %750
  %795 = phi i32 [ %738, %768 ], [ %784, %789 ], [ %784, %785 ], [ %784, %782 ], [ %738, %762 ], [ %738, %750 ]
  %796 = phi i32 [ %737, %768 ], [ %783, %789 ], [ %783, %785 ], [ %783, %782 ], [ %737, %762 ], [ %737, %750 ]
  %797 = phi i32 [ %736, %768 ], [ %793, %789 ], [ 1, %785 ], [ 0, %782 ], [ %736, %762 ], [ %736, %750 ]
  %798 = phi i1 [ true, %768 ], [ false, %789 ], [ false, %785 ], [ false, %782 ], [ true, %762 ], [ true, %750 ]
  %799 = add nuw nsw i64 %735, 1
  %800 = icmp ult i64 %799, %733
  %801 = select i1 %798, i1 %800, i1 false
  br i1 %801, label %734, label %802, !llvm.loop !307

802:                                              ; preds = %794, %726
  %803 = phi i32 [ -1, %726 ], [ %795, %794 ]
  %804 = phi i32 [ undef, %726 ], [ %796, %794 ]
  %805 = phi i32 [ undef, %726 ], [ %797, %794 ]
  %806 = icmp eq i32 %803, -1
  br i1 %806, label %902, label %807

807:                                              ; preds = %802
  %808 = load i32, ptr %626, align 4, !tbaa !210
  %809 = zext i32 %808 to i64
  %810 = getelementptr inbounds %struct.MTFace, ptr %681, i64 %809
  %811 = zext nneg i32 %727 to i64
  %812 = getelementptr inbounds [4 x [2 x float]], ptr %810, i64 0, i64 %811
  %813 = zext nneg i32 %728 to i64
  %814 = getelementptr inbounds [4 x [2 x float]], ptr %810, i64 0, i64 %813
  %815 = sext i32 %803 to i64
  %816 = getelementptr inbounds %struct.MTFace, ptr %681, i64 %815
  %817 = sext i32 %804 to i64
  %818 = getelementptr inbounds [4 x [2 x float]], ptr %816, i64 0, i64 %817
  %819 = sext i32 %805 to i64
  %820 = getelementptr inbounds [4 x [2 x float]], ptr %816, i64 0, i64 %819
  %821 = load float, ptr %812, align 4, !tbaa !123
  %822 = load float, ptr %818, align 4, !tbaa !123
  %823 = fcmp oeq float %821, %822
  br i1 %823, label %824, label %840

824:                                              ; preds = %807
  %825 = getelementptr inbounds float, ptr %812, i64 1
  %826 = load float, ptr %825, align 4, !tbaa !123
  %827 = getelementptr inbounds float, ptr %818, i64 1
  %828 = load float, ptr %827, align 4, !tbaa !123
  %829 = fcmp oeq float %826, %828
  br i1 %829, label %830, label %840

830:                                              ; preds = %824
  %831 = load float, ptr %814, align 4, !tbaa !123
  %832 = load float, ptr %820, align 4, !tbaa !123
  %833 = fcmp oeq float %831, %832
  br i1 %833, label %834, label %840

834:                                              ; preds = %830
  %835 = getelementptr inbounds float, ptr %814, i64 1
  %836 = load float, ptr %835, align 4, !tbaa !123
  %837 = getelementptr inbounds float, ptr %820, i64 1
  %838 = load float, ptr %837, align 4, !tbaa !123
  %839 = fcmp oeq float %836, %838
  br i1 %839, label %902, label %840

840:                                              ; preds = %834, %830, %824, %807
  %841 = load float, ptr %814, align 4, !tbaa !123
  %842 = fcmp oeq float %841, %822
  br i1 %842, label %843, label %858

843:                                              ; preds = %840
  %844 = getelementptr inbounds float, ptr %814, i64 1
  %845 = load float, ptr %844, align 4, !tbaa !123
  %846 = getelementptr inbounds float, ptr %818, i64 1
  %847 = load float, ptr %846, align 4, !tbaa !123
  %848 = fcmp oeq float %845, %847
  br i1 %848, label %849, label %858

849:                                              ; preds = %843
  %850 = load float, ptr %820, align 4, !tbaa !123
  %851 = fcmp oeq float %821, %850
  br i1 %851, label %852, label %858

852:                                              ; preds = %849
  %853 = getelementptr inbounds float, ptr %812, i64 1
  %854 = load float, ptr %853, align 4, !tbaa !123
  %855 = getelementptr inbounds float, ptr %820, i64 1
  %856 = load float, ptr %855, align 4, !tbaa !123
  %857 = fcmp oeq float %854, %856
  br i1 %857, label %902, label %858

858:                                              ; preds = %852, %849, %843, %840
  %859 = call float @closest_to_line_v2(ptr noundef nonnull %4, ptr noundef nonnull %3, ptr noundef nonnull %812, ptr noundef nonnull %814) #18
  %860 = fcmp olt float %859, 0.000000e+00
  %861 = select i1 %860, float 0.000000e+00, float %859
  %862 = fcmp ogt float %861, 1.000000e+00
  %863 = select i1 %862, float 1.000000e+00, float %861
  %864 = load float, ptr %820, align 4, !tbaa !123
  %865 = load float, ptr %818, align 4, !tbaa !123
  %866 = fsub float %864, %865
  %867 = getelementptr inbounds float, ptr %820, i64 1
  %868 = load float, ptr %867, align 4, !tbaa !123
  %869 = getelementptr inbounds float, ptr %818, i64 1
  %870 = load float, ptr %869, align 4, !tbaa !123
  %871 = fsub float %868, %870
  %872 = fmul float %866, %863
  %873 = fmul float %863, %871
  store float %865, ptr %3, align 4, !tbaa !123
  %874 = load float, ptr %869, align 4, !tbaa !123
  store float %874, ptr %611, align 4, !tbaa !123
  %875 = fadd float %865, %872
  store float %875, ptr %3, align 4, !tbaa !123
  %876 = fadd float %874, %873
  store float %876, ptr %611, align 4, !tbaa !123
  %877 = call float @llvm.fmuladd.f32(float %875, float %610, float -5.000000e-01)
  store float %877, ptr %3, align 4, !tbaa !123
  %878 = call float @llvm.fmuladd.f32(float %876, float %610, float -5.000000e-01)
  store float %878, ptr %611, align 4, !tbaa !123
  %879 = call float @llvm.floor.f32(float %877)
  %880 = fptosi float %879 to i32
  %881 = call float @llvm.floor.f32(float %878)
  %882 = fptosi float %881 to i32
  %883 = icmp ugt i32 %46, %880
  %884 = icmp ugt i32 %46, %882
  %885 = select i1 %883, i1 %884, i1 false
  br i1 %885, label %886, label %902

886:                                              ; preds = %858
  %887 = mul nuw nsw i32 %46, %882
  %888 = add nuw nsw i32 %887, %880
  %889 = zext i32 %888 to i64
  %890 = icmp eq i64 %625, %889
  br i1 %890, label %902, label %891

891:                                              ; preds = %886
  %892 = zext nneg i32 %888 to i64
  %893 = getelementptr inbounds %struct.PaintUVPoint, ptr %75, i64 %892
  %894 = load i32, ptr %893, align 4, !tbaa !210
  %895 = icmp eq i32 %894, %803
  br i1 %895, label %896, label %902

896:                                              ; preds = %891
  %897 = getelementptr inbounds %struct.PaintUVPoint, ptr %75, i64 %892, i32 5
  %898 = load i32, ptr %897, align 4, !tbaa !286
  %899 = icmp eq i32 %898, -1
  br i1 %899, label %902, label %900

900:                                              ; preds = %896
  %901 = load i32, ptr %644, align 4, !tbaa !286
  br label %902

902:                                              ; preds = %834, %852, %900, %896, %891, %886, %858, %802
  %903 = phi i32 [ -2, %802 ], [ -3, %858 ], [ -1, %886 ], [ -1, %891 ], [ %901, %900 ], [ %888, %896 ], [ %660, %852 ], [ %660, %834 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #18
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #18
  br label %904

904:                                              ; preds = %646, %666, %672, %902
  %905 = phi i32 [ %903, %902 ], [ -3, %646 ], [ %660, %666 ], [ %660, %672 ]
  %906 = icmp sgt i32 %905, -1
  br i1 %906, label %907, label %921

907:                                              ; preds = %904
  %908 = zext nneg i32 %905 to i64
  %909 = getelementptr inbounds i32, ptr %79, i64 %908
  %910 = load i32, ptr %909, align 4, !tbaa !205
  %911 = load ptr, ptr %603, align 8, !tbaa !83
  %912 = zext i32 %648 to i64
  %913 = getelementptr inbounds i32, ptr %911, i64 %912
  store i32 %910, ptr %913, align 4, !tbaa !205
  %914 = load ptr, ptr %609, align 8, !tbaa !82
  %915 = load i32, ptr %631, align 4, !tbaa !205
  %916 = sext i32 %915 to i64
  %917 = getelementptr inbounds i32, ptr %914, i64 %916
  %918 = load i32, ptr %917, align 4, !tbaa !205
  %919 = add nsw i32 %918, 1
  store i32 %919, ptr %917, align 4, !tbaa !205
  %920 = add i32 %648, 1
  br label %931

921:                                              ; preds = %904
  %922 = add nsw i32 %905, 3
  %923 = icmp ult i32 %922, 2
  br i1 %923, label %924, label %931

924:                                              ; preds = %921
  %925 = load ptr, ptr %612, align 8, !tbaa !84
  %926 = load i32, ptr %631, align 4, !tbaa !205
  %927 = sext i32 %926 to i64
  %928 = getelementptr inbounds i32, ptr %925, i64 %927
  %929 = load i32, ptr %928, align 4, !tbaa !205
  %930 = or i32 %929, 1
  store i32 %930, ptr %928, align 4, !tbaa !205
  br label %931

931:                                              ; preds = %924, %921, %907
  %932 = phi i32 [ %920, %907 ], [ %648, %924 ], [ %648, %921 ]
  %933 = add nuw nsw i64 %647, 1
  %934 = icmp eq i64 %933, 8
  br i1 %934, label %935, label %646, !llvm.loop !308

935:                                              ; preds = %931, %622
  %936 = phi i32 [ %624, %622 ], [ %932, %931 ]
  %937 = add nuw nsw i64 %623, 1
  %938 = icmp eq i64 %937, %614
  br i1 %938, label %939, label %622, !llvm.loop !309

939:                                              ; preds = %935
  %940 = add nuw nsw i64 %616, 1
  %941 = icmp eq i64 %940, %613
  br i1 %941, label %942, label %615, !llvm.loop !310

942:                                              ; preds = %939, %600
  %943 = load ptr, ptr @MEM_callocN, align 8, !tbaa !44
  %944 = call ptr %943(i64 noundef 16, ptr noundef nonnull @.str.22) #18
  %945 = icmp eq ptr %944, null
  br i1 %945, label %963, label %946

946:                                              ; preds = %942
  %947 = load ptr, ptr @MEM_callocN, align 8, !tbaa !44
  %948 = sext i32 %557 to i64
  %949 = mul nsw i64 %948, 28
  %950 = call ptr %947(i64 noundef %949, ptr noundef nonnull @.str.23) #18
  store ptr %950, ptr %944, align 8, !tbaa !75
  %951 = load ptr, ptr @MEM_callocN, align 8, !tbaa !44
  %952 = mul nsw i32 %557, %70
  %953 = sext i32 %952 to i64
  %954 = mul nsw i64 %953, 12
  %955 = call ptr %951(i64 noundef %954, ptr noundef nonnull @.str.23) #18
  %956 = getelementptr inbounds %struct.ImgSeqFormatData, ptr %944, i64 0, i32 1
  store ptr %955, ptr %956, align 8, !tbaa !77
  %957 = load ptr, ptr %944, align 8, !tbaa !75
  %958 = icmp ne ptr %957, null
  %959 = icmp ne ptr %955, null
  %960 = select i1 %958, i1 %959, i1 false
  %961 = xor i1 %960, true
  %962 = zext i1 %961 to i32
  br label %963

963:                                              ; preds = %946, %942
  %964 = phi i1 [ false, %942 ], [ %960, %946 ]
  %965 = phi i32 [ 1, %942 ], [ %962, %946 ]
  store i32 %557, ptr %601, align 8, !tbaa !194
  br i1 %964, label %980, label %966

966:                                              ; preds = %963
  br i1 %945, label %1010, label %967

967:                                              ; preds = %966
  %968 = load ptr, ptr %944, align 8, !tbaa !75
  %969 = icmp eq ptr %968, null
  br i1 %969, label %972, label %970

970:                                              ; preds = %967
  %971 = load ptr, ptr @MEM_freeN, align 8, !tbaa !44
  call void %971(ptr noundef nonnull %968) #18
  br label %972

972:                                              ; preds = %970, %967
  %973 = getelementptr inbounds %struct.ImgSeqFormatData, ptr %944, i64 0, i32 1
  %974 = load ptr, ptr %973, align 8, !tbaa !77
  %975 = icmp eq ptr %974, null
  br i1 %975, label %978, label %976

976:                                              ; preds = %972
  %977 = load ptr, ptr @MEM_freeN, align 8, !tbaa !44
  call void %977(ptr noundef nonnull %974) #18
  br label %978

978:                                              ; preds = %976, %972
  %979 = load ptr, ptr @MEM_freeN, align 8, !tbaa !44
  call void %979(ptr noundef nonnull %944) #18
  br label %1010

980:                                              ; preds = %963
  store i32 %557, ptr %601, align 8, !tbaa !194
  store ptr %944, ptr %60, align 8, !tbaa !73
  %981 = icmp eq i32 %46, 0
  br i1 %981, label %1010, label %982

982:                                              ; preds = %980
  %983 = getelementptr inbounds %struct.ImgSeqFormatData, ptr %944, i64 0, i32 1
  %984 = mul nuw nsw i32 %70, 12
  %985 = zext nneg i32 %984 to i64
  %986 = zext nneg i32 %70 to i64
  %987 = call i32 @llvm.umax.i32(i32 %72, i32 1)
  %988 = zext nneg i32 %987 to i64
  br label %989

989:                                              ; preds = %982, %1006
  %990 = phi i64 [ 0, %982 ], [ %1008, %1006 ]
  %991 = phi i32 [ 0, %982 ], [ %1007, %1006 ]
  %992 = getelementptr inbounds %struct.PaintUVPoint, ptr %75, i64 %990
  %993 = load i32, ptr %992, align 4, !tbaa !210
  %994 = icmp eq i32 %993, -1
  br i1 %994, label %1006, label %995

995:                                              ; preds = %989
  %996 = load ptr, ptr %944, align 8, !tbaa !75
  %997 = sext i32 %991 to i64
  %998 = getelementptr inbounds %struct.PaintUVPoint, ptr %996, i64 %997
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(28) %998, ptr noundef nonnull align 4 dereferenceable(28) %992, i64 28, i1 false)
  %999 = load ptr, ptr %983, align 8, !tbaa !77
  %1000 = mul nsw i32 %991, %70
  %1001 = sext i32 %1000 to i64
  %1002 = getelementptr inbounds %struct.Vec3f, ptr %999, i64 %1001
  %1003 = mul nuw nsw i64 %990, %986
  %1004 = getelementptr inbounds %struct.Vec3f, ptr %85, i64 %1003
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(1) %1002, ptr noundef nonnull align 4 dereferenceable(1) %1004, i64 %985, i1 false)
  %1005 = add nsw i32 %991, 1
  br label %1006

1006:                                             ; preds = %989, %995
  %1007 = phi i32 [ %1005, %995 ], [ %991, %989 ]
  %1008 = add nuw nsw i64 %990, 1
  %1009 = icmp eq i64 %1008, %988
  br i1 %1009, label %1010, label %989, !llvm.loop !311

1010:                                             ; preds = %1006, %980, %95, %978, %966, %156
  %1011 = phi i32 [ 1, %156 ], [ %965, %966 ], [ %965, %978 ], [ 1, %95 ], [ %965, %980 ], [ %965, %1006 ]
  %1012 = icmp eq i32 %1011, 1
  br i1 %1012, label %1013, label %1016

1013:                                             ; preds = %1010
  %1014 = getelementptr inbounds %struct.DynamicPaintCanvasSettings, ptr %16, i64 0, i32 6
  %1015 = call ptr @BLI_strncpy(ptr noundef nonnull %1014, ptr noundef nonnull @.str.17, i64 noundef 64) #18
  br label %1016

1016:                                             ; preds = %1013, %1010
  %1017 = icmp eq ptr %96, null
  br i1 %1017, label %1020, label %1018

1018:                                             ; preds = %1016
  %1019 = load ptr, ptr @MEM_freeN, align 8, !tbaa !44
  call void %1019(ptr noundef nonnull %96) #18
  br label %1020

1020:                                             ; preds = %1018, %1016
  br i1 %76, label %1023, label %1021

1021:                                             ; preds = %1020
  %1022 = load ptr, ptr @MEM_freeN, align 8, !tbaa !44
  call void %1022(ptr noundef %75) #18
  br label %1023

1023:                                             ; preds = %1021, %1020
  br i1 %86, label %1026, label %1024

1024:                                             ; preds = %1023
  %1025 = load ptr, ptr @MEM_freeN, align 8, !tbaa !44
  call void %1025(ptr noundef nonnull %85) #18
  br label %1026

1026:                                             ; preds = %1024, %1023
  br i1 %80, label %1029, label %1027

1027:                                             ; preds = %1026
  %1028 = load ptr, ptr @MEM_freeN, align 8, !tbaa !44
  call void %1028(ptr noundef nonnull %79) #18
  br label %1029

1029:                                             ; preds = %1027, %1026
  %1030 = icmp eq i32 %1011, 0
  br i1 %1030, label %1031, label %1032

1031:                                             ; preds = %1029
  call fastcc void @dynamicPaint_allocateSurfaceType(ptr noundef %1)
  call fastcc void @dynamicPaint_setInitialColor(ptr noundef %0, ptr noundef %1)
  br label %1032

1032:                                             ; preds = %1031, %1029
  %1033 = zext i1 %1030 to i32
  br label %1034

1034:                                             ; preds = %1032, %62, %49, %41, %27, %20
  %1035 = phi i32 [ 0, %27 ], [ 0, %49 ], [ %1033, %1032 ], [ 0, %62 ], [ 0, %41 ], [ 0, %20 ]
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %5) #18
  ret i32 %1035
}

declare void @CustomData_validate_layer_name(ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #5

declare ptr @CustomData_get_layer_named(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: nofree nounwind
declare noundef i32 @printf(ptr nocapture noundef readonly, ...) local_unnamed_addr #10

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fmuladd.f32(float, float, float) #11

declare void @barycentric_weights_v2(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: nounwind uwtable
define dso_local void @dynamicPaint_outputSurfaceImage(ptr nocapture noundef readonly %0, ptr noundef %1, i16 noundef signext %2) local_unnamed_addr #4 {
  %4 = alloca [1024 x i8], align 16
  %5 = getelementptr inbounds %struct.DynamicPaintSurface, ptr %0, i64 0, i32 3
  %6 = load ptr, ptr %5, align 8, !tbaa !72
  %7 = load ptr, ptr %6, align 8, !tbaa !73
  call void @llvm.lifetime.start.p0(i64 1024, ptr nonnull %4) #18
  %8 = getelementptr inbounds %struct.PaintSurfaceData, ptr %6, i64 0, i32 1
  %9 = load ptr, ptr %8, align 8, !tbaa !78
  %10 = icmp eq ptr %9, null
  br i1 %10, label %11, label %16

11:                                               ; preds = %3
  %12 = getelementptr inbounds %struct.DynamicPaintSurface, ptr %0, i64 0, i32 2
  %13 = load ptr, ptr %12, align 8, !tbaa !57
  %14 = getelementptr inbounds %struct.DynamicPaintCanvasSettings, ptr %13, i64 0, i32 6
  %15 = tail call ptr @BLI_strncpy(ptr noundef nonnull %14, ptr noundef nonnull @.str.24, i64 noundef 64) #18
  br label %198

16:                                               ; preds = %3
  %17 = call ptr @BLI_strncpy(ptr noundef nonnull %4, ptr noundef %1, i64 noundef 1024) #18
  %18 = call i32 @BKE_add_image_extension_from_type(ptr noundef nonnull %4, i8 noundef zeroext 17) #18
  %19 = load ptr, ptr @G, align 8, !tbaa !312
  %20 = getelementptr inbounds %struct.Main, ptr %19, i64 0, i32 2
  %21 = call zeroext i8 @BLI_path_abs(ptr noundef nonnull %4, ptr noundef nonnull %20) #18
  call void @BLI_make_existing_file(ptr noundef nonnull %4) #18
  %22 = getelementptr inbounds %struct.DynamicPaintSurface, ptr %0, i64 0, i32 20
  %23 = load i32, ptr %22, align 4, !tbaa !124
  %24 = call ptr @IMB_allocImBuf(i32 noundef %23, i32 noundef %23, i8 noundef zeroext 32, i32 noundef 32) #18
  %25 = icmp eq ptr %24, null
  br i1 %25, label %43, label %26

26:                                               ; preds = %16
  %27 = getelementptr inbounds %struct.PaintSurfaceData, ptr %6, i64 0, i32 4
  %28 = load i32, ptr %27, align 8, !tbaa !194
  %29 = icmp sgt i32 %28, 0
  br i1 %29, label %30, label %195

30:                                               ; preds = %26
  %31 = load ptr, ptr %7, align 8, !tbaa !75
  %32 = getelementptr inbounds %struct.DynamicPaintSurface, ptr %0, i64 0, i32 11
  %33 = getelementptr inbounds %struct.DynamicPaintSurface, ptr %0, i64 0, i32 31
  %34 = getelementptr inbounds %struct.ImBuf, ptr %24, i64 0, i32 9
  %35 = getelementptr inbounds %struct.DynamicPaintSurface, ptr %0, i64 0, i32 31
  %36 = getelementptr inbounds %struct.DynamicPaintSurface, ptr %0, i64 0, i32 12
  %37 = getelementptr inbounds %struct.ImBuf, ptr %24, i64 0, i32 9
  %38 = getelementptr inbounds %struct.ImBuf, ptr %24, i64 0, i32 9
  %39 = getelementptr inbounds %struct.DynamicPaintSurface, ptr %0, i64 0, i32 18
  %40 = getelementptr inbounds %struct.DynamicPaintSurface, ptr %0, i64 0, i32 11
  %41 = getelementptr inbounds %struct.ImBuf, ptr %24, i64 0, i32 9
  %42 = zext nneg i32 %28 to i64
  br label %48

43:                                               ; preds = %16
  %44 = getelementptr inbounds %struct.DynamicPaintSurface, ptr %0, i64 0, i32 2
  %45 = load ptr, ptr %44, align 8, !tbaa !57
  %46 = getelementptr inbounds %struct.DynamicPaintCanvasSettings, ptr %45, i64 0, i32 6
  %47 = call ptr @BLI_strncpy(ptr noundef nonnull %46, ptr noundef nonnull @.str.25, i64 noundef 64) #18
  br label %198

48:                                               ; preds = %30, %192
  %49 = phi i64 [ 0, %30 ], [ %193, %192 ]
  %50 = getelementptr inbounds %struct.PaintUVPoint, ptr %31, i64 %49, i32 1
  %51 = load i32, ptr %50, align 4, !tbaa !287
  %52 = shl i32 %51, 2
  switch i16 %2, label %192 [
    i16 1, label %53
    i16 0, label %74
  ]

53:                                               ; preds = %48
  %54 = load i16, ptr %40, align 2, !tbaa !43
  %55 = icmp eq i16 %54, 0
  br i1 %55, label %56, label %192

56:                                               ; preds = %53
  %57 = load ptr, ptr %8, align 8, !tbaa !78
  %58 = getelementptr inbounds %struct.PaintPoint, ptr %57, i64 %49, i32 2
  %59 = load float, ptr %58, align 4, !tbaa !265
  %60 = fcmp ogt float %59, 1.000000e+00
  %61 = select i1 %60, float 1.000000e+00, float %59
  %62 = load ptr, ptr %41, align 8, !tbaa !314
  %63 = sext i32 %52 to i64
  %64 = getelementptr inbounds float, ptr %62, i64 %63
  store float %61, ptr %64, align 4, !tbaa !123
  %65 = or disjoint i32 %52, 1
  %66 = sext i32 %65 to i64
  %67 = getelementptr inbounds float, ptr %62, i64 %66
  store float %61, ptr %67, align 4, !tbaa !123
  %68 = or disjoint i32 %52, 2
  %69 = sext i32 %68 to i64
  %70 = getelementptr inbounds float, ptr %62, i64 %69
  store float %61, ptr %70, align 4, !tbaa !123
  %71 = or disjoint i32 %52, 3
  %72 = sext i32 %71 to i64
  %73 = getelementptr inbounds float, ptr %62, i64 %72
  store float 1.000000e+00, ptr %73, align 4, !tbaa !123
  br label %192

74:                                               ; preds = %48
  %75 = load i16, ptr %32, align 2, !tbaa !43
  switch i16 %75, label %192 [
    i16 0, label %76
    i16 1, label %133
    i16 3, label %164
  ]

76:                                               ; preds = %74
  %77 = load ptr, ptr %8, align 8, !tbaa !78
  %78 = getelementptr inbounds %struct.PaintPoint, ptr %77, i64 %49
  %79 = getelementptr inbounds %struct.PaintPoint, ptr %77, i64 %49, i32 4
  %80 = getelementptr inbounds %struct.PaintPoint, ptr %77, i64 %49, i32 5
  %81 = load float, ptr %80, align 4, !tbaa !196
  %82 = getelementptr inbounds %struct.PaintPoint, ptr %77, i64 %49, i32 1
  %83 = load float, ptr %82, align 4, !tbaa !252
  %84 = load ptr, ptr %38, align 8, !tbaa !314
  %85 = sext i32 %52 to i64
  %86 = getelementptr inbounds float, ptr %84, i64 %85
  %87 = fsub float 1.000000e+00, %83
  %88 = call float @llvm.fmuladd.f32(float %81, float %87, float %83)
  %89 = fcmp une float %88, 0.000000e+00
  br i1 %89, label %90, label %103

90:                                               ; preds = %76, %90
  %91 = phi i64 [ %101, %90 ], [ 0, %76 ]
  %92 = getelementptr inbounds float, ptr %79, i64 %91
  %93 = load float, ptr %92, align 4, !tbaa !123
  %94 = fmul float %81, %93
  %95 = getelementptr inbounds float, ptr %78, i64 %91
  %96 = load float, ptr %95, align 4, !tbaa !123
  %97 = fmul float %83, %96
  %98 = call float @llvm.fmuladd.f32(float %94, float %87, float %97)
  %99 = fdiv float %98, %88
  %100 = getelementptr inbounds float, ptr %86, i64 %91
  store float %99, ptr %100, align 4, !tbaa !123
  %101 = add nuw nsw i64 %91, 1
  %102 = icmp eq i64 %101, 3
  br i1 %102, label %111, label %90, !llvm.loop !253

103:                                              ; preds = %76
  %104 = load float, ptr %79, align 4, !tbaa !123
  store float %104, ptr %86, align 4, !tbaa !123
  %105 = getelementptr inbounds float, ptr %79, i64 1
  %106 = load float, ptr %105, align 4, !tbaa !123
  %107 = getelementptr inbounds float, ptr %86, i64 1
  store float %106, ptr %107, align 4, !tbaa !123
  %108 = getelementptr inbounds float, ptr %79, i64 2
  %109 = load float, ptr %108, align 4, !tbaa !123
  %110 = getelementptr inbounds float, ptr %86, i64 2
  store float %109, ptr %110, align 4, !tbaa !123
  br label %111

111:                                              ; preds = %90, %103
  %112 = getelementptr inbounds float, ptr %86, i64 3
  store float %88, ptr %112, align 4, !tbaa !123
  %113 = load i32, ptr %39, align 4, !tbaa !50
  %114 = and i32 %113, 8
  %115 = icmp eq i32 %114, 0
  br i1 %115, label %192, label %116

116:                                              ; preds = %111
  %117 = or disjoint i32 %52, 3
  %118 = sext i32 %117 to i64
  %119 = getelementptr inbounds float, ptr %84, i64 %118
  %120 = load float, ptr %119, align 4, !tbaa !123
  %121 = load float, ptr %86, align 4, !tbaa !123
  %122 = fmul float %120, %121
  store float %122, ptr %86, align 4, !tbaa !123
  %123 = or disjoint i32 %52, 1
  %124 = sext i32 %123 to i64
  %125 = getelementptr inbounds float, ptr %84, i64 %124
  %126 = load float, ptr %125, align 4, !tbaa !123
  %127 = fmul float %120, %126
  store float %127, ptr %125, align 4, !tbaa !123
  %128 = or disjoint i32 %52, 2
  %129 = sext i32 %128 to i64
  %130 = getelementptr inbounds float, ptr %84, i64 %129
  %131 = load float, ptr %130, align 4, !tbaa !123
  %132 = fmul float %120, %131
  store float %132, ptr %130, align 4, !tbaa !123
  br label %192

133:                                              ; preds = %74
  %134 = load ptr, ptr %8, align 8, !tbaa !78
  %135 = getelementptr inbounds float, ptr %134, i64 %49
  %136 = load float, ptr %135, align 4, !tbaa !123
  %137 = load float, ptr %35, align 4, !tbaa !60
  %138 = fcmp une float %137, 0.000000e+00
  %139 = select i1 %138, float %137, float 1.000000e+00
  %140 = fdiv float %136, %139
  %141 = load i16, ptr %36, align 8, !tbaa !119
  %142 = icmp eq i16 %141, 0
  %143 = fmul float %140, 5.000000e-01
  %144 = fsub float 5.000000e-01, %143
  %145 = select i1 %142, float %144, float %140
  %146 = fcmp olt float %145, 0.000000e+00
  br i1 %146, label %150, label %147

147:                                              ; preds = %133
  %148 = fcmp ogt float %145, 1.000000e+00
  br i1 %148, label %149, label %150

149:                                              ; preds = %147
  br label %150

150:                                              ; preds = %133, %147, %149
  %151 = phi float [ 1.000000e+00, %149 ], [ %145, %147 ], [ 0.000000e+00, %133 ]
  %152 = load ptr, ptr %37, align 8, !tbaa !314
  %153 = sext i32 %52 to i64
  %154 = getelementptr inbounds float, ptr %152, i64 %153
  store float %151, ptr %154, align 4, !tbaa !123
  %155 = or disjoint i32 %52, 1
  %156 = sext i32 %155 to i64
  %157 = getelementptr inbounds float, ptr %152, i64 %156
  store float %151, ptr %157, align 4, !tbaa !123
  %158 = or disjoint i32 %52, 2
  %159 = sext i32 %158 to i64
  %160 = getelementptr inbounds float, ptr %152, i64 %159
  store float %151, ptr %160, align 4, !tbaa !123
  %161 = or disjoint i32 %52, 3
  %162 = sext i32 %161 to i64
  %163 = getelementptr inbounds float, ptr %152, i64 %162
  store float 1.000000e+00, ptr %163, align 4, !tbaa !123
  br label %192

164:                                              ; preds = %74
  %165 = load ptr, ptr %8, align 8, !tbaa !78
  %166 = getelementptr inbounds %struct.PaintWavePoint, ptr %165, i64 %49
  %167 = load float, ptr %166, align 4, !tbaa !280
  %168 = load float, ptr %33, align 4, !tbaa !60
  %169 = fcmp une float %168, 0.000000e+00
  %170 = select i1 %169, float %168, float 1.000000e+00
  %171 = fdiv float %167, %170
  %172 = fmul float %171, 5.000000e-01
  %173 = fadd float %172, 5.000000e-01
  %174 = fcmp olt float %173, 0.000000e+00
  br i1 %174, label %178, label %175

175:                                              ; preds = %164
  %176 = fcmp ogt float %173, 1.000000e+00
  br i1 %176, label %177, label %178

177:                                              ; preds = %175
  br label %178

178:                                              ; preds = %164, %175, %177
  %179 = phi float [ 1.000000e+00, %177 ], [ %173, %175 ], [ 0.000000e+00, %164 ]
  %180 = load ptr, ptr %34, align 8, !tbaa !314
  %181 = sext i32 %52 to i64
  %182 = getelementptr inbounds float, ptr %180, i64 %181
  store float %179, ptr %182, align 4, !tbaa !123
  %183 = or disjoint i32 %52, 1
  %184 = sext i32 %183 to i64
  %185 = getelementptr inbounds float, ptr %180, i64 %184
  store float %179, ptr %185, align 4, !tbaa !123
  %186 = or disjoint i32 %52, 2
  %187 = sext i32 %186 to i64
  %188 = getelementptr inbounds float, ptr %180, i64 %187
  store float %179, ptr %188, align 4, !tbaa !123
  %189 = or disjoint i32 %52, 3
  %190 = sext i32 %189 to i64
  %191 = getelementptr inbounds float, ptr %180, i64 %190
  store float 1.000000e+00, ptr %191, align 4, !tbaa !123
  br label %192

192:                                              ; preds = %74, %111, %116, %48, %150, %178, %53, %56
  %193 = add nuw nsw i64 %49, 1
  %194 = icmp eq i64 %193, %42
  br i1 %194, label %195, label %48, !llvm.loop !317

195:                                              ; preds = %192, %26
  %196 = getelementptr inbounds %struct.ImBuf, ptr %24, i64 0, i32 26
  store i32 1073741919, ptr %196, align 8, !tbaa !318
  %197 = call signext i16 @IMB_saveiff(ptr noundef nonnull %24, ptr noundef nonnull %4, i32 noundef 32) #18
  call void @IMB_freeImBuf(ptr noundef nonnull %24) #18
  br label %198

198:                                              ; preds = %195, %43, %11
  call void @llvm.lifetime.end.p0(i64 1024, ptr nonnull %4) #18
  ret void
}

declare i32 @BKE_add_image_extension_from_type(ptr noundef, i8 noundef zeroext) local_unnamed_addr #5

declare zeroext i8 @BLI_path_abs(ptr noundef, ptr noundef) local_unnamed_addr #5

declare void @BLI_make_existing_file(ptr noundef) local_unnamed_addr #5

declare ptr @IMB_allocImBuf(i32 noundef, i32 noundef, i8 noundef zeroext, i32 noundef) local_unnamed_addr #5

declare signext i16 @IMB_saveiff(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #5

declare void @IMB_freeImBuf(ptr noundef) local_unnamed_addr #5

; Function Attrs: nounwind uwtable
define dso_local noundef i32 @dynamicPaint_calculateFrame(ptr nocapture noundef readonly %0, ptr noundef %1, ptr noundef %2, i32 noundef %3) local_unnamed_addr #4 {
  %5 = alloca [3 x float], align 4
  %6 = alloca [3 x float], align 4
  %7 = alloca [3 x i32], align 4
  %8 = alloca [3 x float], align 4
  %9 = alloca [3 x float], align 4
  %10 = alloca [3 x float], align 4
  %11 = alloca [3 x float], align 4
  %12 = alloca [3 x float], align 4
  %13 = alloca [3 x float], align 4
  %14 = alloca [3 x float], align 4
  %15 = getelementptr inbounds %struct.DynamicPaintSurface, ptr %0, i64 0, i32 18
  %16 = load i32, ptr %15, align 4, !tbaa !50
  %17 = and i32 %16, 256
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %24, label %19

19:                                               ; preds = %4
  %20 = getelementptr inbounds %struct.DynamicPaintSurface, ptr %0, i64 0, i32 2
  %21 = load ptr, ptr %20, align 8, !tbaa !57
  %22 = getelementptr inbounds %struct.DynamicPaintCanvasSettings, ptr %21, i64 0, i32 1
  %23 = load ptr, ptr %22, align 8, !tbaa !109
  tail call fastcc void @dynamicPaint_applySurfaceDisplace(ptr noundef %0, ptr noundef %23)
  br label %24

24:                                               ; preds = %19, %4
  %25 = getelementptr inbounds %struct.DynamicPaintSurface, ptr %0, i64 0, i32 3
  %26 = load ptr, ptr %25, align 8, !tbaa !72
  %27 = getelementptr inbounds %struct.PaintSurfaceData, ptr %26, i64 0, i32 2
  %28 = load ptr, ptr %27, align 8, !tbaa !79
  %29 = getelementptr inbounds %struct.PaintSurfaceData, ptr %26, i64 0, i32 3
  %30 = load ptr, ptr %29, align 8, !tbaa !85
  %31 = getelementptr inbounds %struct.DynamicPaintSurface, ptr %0, i64 0, i32 2
  %32 = load ptr, ptr %31, align 8, !tbaa !57
  %33 = getelementptr inbounds %struct.DynamicPaintCanvasSettings, ptr %32, i64 0, i32 1
  %34 = load ptr, ptr %33, align 8, !tbaa !109
  %35 = getelementptr inbounds %struct.DynamicPaintSurface, ptr %0, i64 0, i32 19
  %36 = load i32, ptr %35, align 8, !tbaa !113
  %37 = and i32 %36, 2
  %38 = icmp eq i32 %37, 0
  br i1 %38, label %39, label %114

39:                                               ; preds = %24
  %40 = getelementptr inbounds %struct.DynamicPaintSurface, ptr %0, i64 0, i32 4
  %41 = load ptr, ptr %40, align 8, !tbaa !186
  %42 = icmp eq ptr %41, null
  br i1 %42, label %46, label %43

43:                                               ; preds = %39
  %44 = getelementptr inbounds %struct.Group, ptr %41, i64 0, i32 1
  %45 = load ptr, ptr %44, align 8, !tbaa !319
  br label %49

46:                                               ; preds = %39
  %47 = getelementptr inbounds %struct.Scene, ptr %1, i64 0, i32 5
  %48 = load ptr, ptr %47, align 8, !tbaa !321
  br label %49

49:                                               ; preds = %46, %43
  %50 = phi ptr [ %45, %43 ], [ null, %46 ]
  %51 = phi ptr [ null, %43 ], [ %48, %46 ]
  %52 = icmp ne ptr %51, null
  %53 = icmp ne ptr %50, null
  %54 = select i1 %52, i1 true, i1 %53
  br i1 %54, label %55, label %111

55:                                               ; preds = %49, %106
  %56 = phi ptr [ %87, %106 ], [ %51, %49 ]
  %57 = phi ptr [ %86, %106 ], [ %50, %49 ]
  %58 = phi i32 [ %107, %106 ], [ 0, %49 ]
  %59 = load ptr, ptr %40, align 8, !tbaa !186
  %60 = icmp eq ptr %59, null
  br label %61

61:                                               ; preds = %55, %74
  %62 = phi ptr [ %56, %55 ], [ %76, %74 ]
  %63 = phi ptr [ %57, %55 ], [ %75, %74 ]
  %64 = getelementptr inbounds %struct.Base, ptr %62, i64 0, i32 7
  %65 = getelementptr inbounds %struct.GroupObject, ptr %63, i64 0, i32 2
  %66 = select i1 %60, ptr %64, ptr %65
  %67 = load ptr, ptr %66, align 8, !tbaa !44
  %68 = icmp eq ptr %67, null
  br i1 %68, label %69, label %80

69:                                               ; preds = %61
  br i1 %60, label %72, label %70

70:                                               ; preds = %69
  %71 = load ptr, ptr %63, align 8, !tbaa !322
  br label %74

72:                                               ; preds = %69
  %73 = load ptr, ptr %62, align 8, !tbaa !324
  br label %74

74:                                               ; preds = %72, %70
  %75 = phi ptr [ %71, %70 ], [ %63, %72 ]
  %76 = phi ptr [ %62, %70 ], [ %73, %72 ]
  %77 = icmp ne ptr %76, null
  %78 = icmp ne ptr %75, null
  %79 = select i1 %77, i1 true, i1 %78
  br i1 %79, label %61, label %111, !llvm.loop !326

80:                                               ; preds = %61
  br i1 %60, label %83, label %81

81:                                               ; preds = %80
  %82 = load ptr, ptr %63, align 8, !tbaa !322
  br label %85

83:                                               ; preds = %80
  %84 = load ptr, ptr %62, align 8, !tbaa !324
  br label %85

85:                                               ; preds = %83, %81
  %86 = phi ptr [ %82, %81 ], [ %63, %83 ]
  %87 = phi ptr [ %62, %81 ], [ %84, %83 ]
  %88 = tail call ptr @modifiers_findByType(ptr noundef nonnull %67, i32 noundef 40) #18
  %89 = icmp eq ptr %88, null
  br i1 %89, label %106, label %90

90:                                               ; preds = %85
  %91 = getelementptr inbounds %struct.ModifierData, ptr %88, i64 0, i32 3
  %92 = load i32, ptr %91, align 4, !tbaa !327
  %93 = and i32 %92, 3
  %94 = icmp eq i32 %93, 0
  br i1 %94, label %106, label %95

95:                                               ; preds = %90
  %96 = getelementptr inbounds %struct.DynamicPaintModifierData, ptr %88, i64 0, i32 2
  %97 = load ptr, ptr %96, align 8, !tbaa !62
  %98 = icmp eq ptr %97, null
  br i1 %98, label %106, label %99

99:                                               ; preds = %95
  %100 = getelementptr inbounds %struct.DynamicPaintBrushSettings, ptr %97, i64 0, i32 4
  %101 = load i32, ptr %100, align 8, !tbaa !159
  %102 = and i32 %101, 3840
  %103 = icmp ne i32 %102, 0
  %104 = zext i1 %103 to i32
  %105 = or i32 %58, %104
  br label %106

106:                                              ; preds = %99, %95, %90, %85
  %107 = phi i32 [ %58, %90 ], [ %58, %85 ], [ %105, %99 ], [ %58, %95 ]
  %108 = icmp ne ptr %87, null
  %109 = icmp ne ptr %86, null
  %110 = select i1 %108, i1 true, i1 %109
  br i1 %110, label %55, label %111, !llvm.loop !326

111:                                              ; preds = %106, %74, %49
  %112 = phi i32 [ 0, %49 ], [ %58, %74 ], [ %107, %106 ]
  %113 = and i32 %112, 1
  br label %114

114:                                              ; preds = %111, %24
  %115 = phi i32 [ 1, %24 ], [ %113, %111 ]
  %116 = load i32, ptr %35, align 8, !tbaa !113
  %117 = lshr i32 %116, 1
  %118 = and i32 %117, 1
  %119 = getelementptr inbounds %struct.DerivedMesh, ptr %34, i64 0, i32 23
  %120 = load ptr, ptr %119, align 8, !tbaa !225
  %121 = tail call i32 %120(ptr noundef %34) #18
  %122 = getelementptr inbounds %struct.DerivedMesh, ptr %34, i64 0, i32 31
  %123 = load ptr, ptr %122, align 8, !tbaa !278
  %124 = tail call ptr %123(ptr noundef %34) #18
  %125 = icmp eq ptr %30, null
  br i1 %125, label %215, label %126

126:                                              ; preds = %114
  %127 = load ptr, ptr %25, align 8, !tbaa !72
  %128 = getelementptr inbounds %struct.PaintSurfaceData, ptr %127, i64 0, i32 3
  %129 = load ptr, ptr %128, align 8, !tbaa !85
  %130 = load ptr, ptr %31, align 8, !tbaa !57
  %131 = getelementptr inbounds %struct.DynamicPaintCanvasSettings, ptr %130, i64 0, i32 1
  %132 = load ptr, ptr %131, align 8, !tbaa !109
  %133 = getelementptr inbounds %struct.DerivedMesh, ptr %132, i64 0, i32 31
  %134 = load ptr, ptr %133, align 8, !tbaa !278
  %135 = tail call ptr %134(ptr noundef %132) #18
  %136 = getelementptr inbounds %struct.DerivedMesh, ptr %132, i64 0, i32 23
  %137 = load ptr, ptr %136, align 8, !tbaa !225
  %138 = tail call i32 %137(ptr noundef %132) #18
  %139 = getelementptr inbounds %struct.PaintBakeData, ptr %129, i64 0, i32 11
  %140 = load ptr, ptr %139, align 8, !tbaa !100
  %141 = icmp eq ptr %140, null
  br i1 %141, label %180, label %142

142:                                              ; preds = %126, %158
  %143 = phi i64 [ %159, %158 ], [ 0, %126 ]
  br label %151

144:                                              ; preds = %158
  %145 = icmp sgt i32 %138, 0
  br i1 %145, label %146, label %180

146:                                              ; preds = %144
  %147 = zext nneg i32 %138 to i64
  br label %161

148:                                              ; preds = %151
  %149 = add nuw nsw i64 %152, 1
  %150 = icmp eq i64 %149, 4
  br i1 %150, label %158, label %151, !llvm.loop !328

151:                                              ; preds = %142, %148
  %152 = phi i64 [ 0, %142 ], [ %149, %148 ]
  %153 = getelementptr inbounds %struct.PaintBakeData, ptr %129, i64 0, i32 12, i64 %143, i64 %152
  %154 = load float, ptr %153, align 4, !tbaa !123
  %155 = getelementptr inbounds %struct.Object, ptr %2, i64 0, i32 47, i64 %143, i64 %152
  %156 = load float, ptr %155, align 4, !tbaa !123
  %157 = fcmp une float %154, %156
  br i1 %157, label %180, label %148

158:                                              ; preds = %148
  %159 = add nuw nsw i64 %143, 1
  %160 = icmp eq i64 %159, 4
  br i1 %160, label %144, label %142, !llvm.loop !329

161:                                              ; preds = %146, %176
  %162 = phi i64 [ 0, %146 ], [ %178, %176 ]
  %163 = phi i32 [ 0, %146 ], [ %177, %176 ]
  %164 = getelementptr inbounds %struct.MVert, ptr %140, i64 %162
  %165 = getelementptr inbounds %struct.MVert, ptr %135, i64 %162
  br label %169

166:                                              ; preds = %169
  %167 = add nuw nsw i64 %170, 1
  %168 = icmp eq i64 %167, 3
  br i1 %168, label %176, label %169, !llvm.loop !330

169:                                              ; preds = %161, %166
  %170 = phi i64 [ 0, %161 ], [ %167, %166 ]
  %171 = getelementptr inbounds [3 x float], ptr %164, i64 0, i64 %170
  %172 = load float, ptr %171, align 4, !tbaa !123
  %173 = getelementptr inbounds [3 x float], ptr %165, i64 0, i64 %170
  %174 = load float, ptr %173, align 4, !tbaa !123
  %175 = fcmp une float %172, %174
  br i1 %175, label %176, label %166

176:                                              ; preds = %169, %166
  %177 = phi i32 [ %163, %166 ], [ 1, %169 ]
  %178 = add nuw nsw i64 %162, 1
  %179 = icmp eq i64 %178, %147
  br i1 %179, label %180, label %161, !llvm.loop !331

180:                                              ; preds = %151, %176, %144, %126
  %181 = phi i32 [ 1, %126 ], [ 0, %144 ], [ %177, %176 ], [ 1, %151 ]
  %182 = icmp eq i32 %118, 0
  br i1 %182, label %196, label %183

183:                                              ; preds = %180
  %184 = getelementptr inbounds %struct.PaintBakeData, ptr %30, i64 0, i32 9
  %185 = load ptr, ptr %184, align 8, !tbaa !102
  %186 = icmp eq ptr %185, null
  br i1 %186, label %196, label %187

187:                                              ; preds = %183
  %188 = getelementptr inbounds %struct.PaintBakeData, ptr %30, i64 0, i32 8
  %189 = load ptr, ptr %188, align 8, !tbaa !101
  %190 = icmp eq ptr %189, null
  br i1 %190, label %196, label %191

191:                                              ; preds = %187
  %192 = getelementptr inbounds %struct.PaintSurfaceData, ptr %26, i64 0, i32 4
  %193 = load i32, ptr %192, align 8, !tbaa !194
  %194 = sext i32 %193 to i64
  %195 = mul nsw i64 %194, 12
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %185, ptr nonnull align 4 %189, i64 %195, i1 false)
  br label %196

196:                                              ; preds = %191, %187, %183, %180
  %197 = icmp eq i32 %115, 0
  br i1 %197, label %213, label %198

198:                                              ; preds = %196
  %199 = getelementptr inbounds %struct.PaintBakeData, ptr %30, i64 0, i32 8
  %200 = load ptr, ptr %199, align 8, !tbaa !101
  %201 = icmp eq ptr %200, null
  br i1 %201, label %213, label %202

202:                                              ; preds = %198
  %203 = getelementptr inbounds %struct.PaintBakeData, ptr %30, i64 0, i32 13
  %204 = load i32, ptr %203, align 8, !tbaa !195
  %205 = icmp eq i32 %204, 0
  %206 = icmp ne i32 %181, 0
  %207 = select i1 %205, i1 %206, i1 false
  br i1 %207, label %213, label %208

208:                                              ; preds = %202
  %209 = getelementptr inbounds %struct.PaintSurfaceData, ptr %26, i64 0, i32 4
  %210 = load i32, ptr %209, align 8, !tbaa !194
  %211 = sext i32 %210 to i64
  %212 = mul nsw i64 %211, 12
  tail call void @llvm.memset.p0.i64(ptr nonnull align 4 %200, i8 0, i64 %212, i1 false)
  br label %213

213:                                              ; preds = %208, %202, %198, %196
  %214 = icmp eq i32 %181, 0
  br i1 %214, label %1414, label %215

215:                                              ; preds = %213, %114
  %216 = load ptr, ptr @MEM_mallocN, align 8, !tbaa !44
  %217 = sext i32 %121 to i64
  %218 = mul nsw i64 %217, 12
  %219 = tail call ptr %216(i64 noundef %218, ptr noundef nonnull @.str.37) #18
  %220 = icmp eq ptr %219, null
  br i1 %220, label %1414, label %221

221:                                              ; preds = %215
  br i1 %125, label %222, label %324

222:                                              ; preds = %221
  %223 = load ptr, ptr @MEM_callocN, align 8, !tbaa !44
  %224 = tail call ptr %223(i64 noundef 192, ptr noundef nonnull @.str.38) #18
  store ptr %224, ptr %29, align 8, !tbaa !85
  %225 = icmp eq ptr %224, null
  br i1 %225, label %226, label %228

226:                                              ; preds = %222
  %227 = load ptr, ptr @MEM_freeN, align 8, !tbaa !44
  tail call void %227(ptr noundef nonnull %219) #18
  br label %1414

228:                                              ; preds = %222
  %229 = load ptr, ptr @MEM_mallocN, align 8, !tbaa !44
  %230 = getelementptr inbounds %struct.PaintSurfaceData, ptr %26, i64 0, i32 4
  %231 = load i32, ptr %230, align 8, !tbaa !194
  %232 = sext i32 %231 to i64
  %233 = shl nsw i64 %232, 4
  %234 = tail call ptr %229(i64 noundef %233, ptr noundef nonnull @.str.39) #18
  store ptr %234, ptr %224, align 8, !tbaa !86
  %235 = load ptr, ptr @MEM_mallocN, align 8, !tbaa !44
  %236 = load i32, ptr %230, align 8, !tbaa !194
  %237 = sext i32 %236 to i64
  %238 = shl nsw i64 %237, 2
  %239 = tail call ptr %235(i64 noundef %238, ptr noundef nonnull @.str.40) #18
  %240 = getelementptr inbounds %struct.PaintBakeData, ptr %224, i64 0, i32 1
  store ptr %239, ptr %240, align 8, !tbaa !90
  %241 = load ptr, ptr @MEM_mallocN, align 8, !tbaa !44
  %242 = load i32, ptr %230, align 8, !tbaa !194
  %243 = sext i32 %242 to i64
  %244 = shl nsw i64 %243, 2
  %245 = tail call ptr %241(i64 noundef %244, ptr noundef nonnull @.str.41) #18
  %246 = getelementptr inbounds %struct.PaintBakeData, ptr %224, i64 0, i32 2
  store ptr %245, ptr %246, align 8, !tbaa !91
  %247 = load ptr, ptr @MEM_mallocN, align 8, !tbaa !44
  %248 = getelementptr inbounds %struct.DynamicPaintSurface, ptr %0, i64 0, i32 10
  %249 = load i16, ptr %248, align 4, !tbaa !34
  switch i16 %249, label %276 [
    i16 2, label %250
    i16 1, label %261
  ]

250:                                              ; preds = %228
  %251 = load i32, ptr %15, align 4, !tbaa !50
  %252 = and i32 %251, 2
  %253 = icmp eq i32 %252, 0
  br i1 %253, label %259, label %254

254:                                              ; preds = %250
  %255 = load ptr, ptr %25, align 8, !tbaa !72
  %256 = getelementptr inbounds %struct.PaintSurfaceData, ptr %255, i64 0, i32 4
  %257 = load i32, ptr %256, align 8, !tbaa !194
  %258 = mul nsw i32 %257, 5
  br label %280

259:                                              ; preds = %250
  %260 = icmp eq i16 %249, 1
  br i1 %260, label %261, label %276

261:                                              ; preds = %228, %259
  %262 = load i32, ptr %15, align 4, !tbaa !50
  %263 = and i32 %262, 2
  %264 = icmp eq i32 %263, 0
  br i1 %264, label %276, label %265

265:                                              ; preds = %261
  %266 = load ptr, ptr %25, align 8, !tbaa !72
  %267 = getelementptr inbounds %struct.PaintSurfaceData, ptr %266, i64 0, i32 2
  %268 = load ptr, ptr %267, align 8, !tbaa !79
  %269 = icmp eq ptr %268, null
  br i1 %269, label %276, label %270

270:                                              ; preds = %265
  %271 = getelementptr inbounds %struct.PaintSurfaceData, ptr %266, i64 0, i32 4
  %272 = load i32, ptr %271, align 8, !tbaa !194
  %273 = getelementptr inbounds %struct.PaintAdjData, ptr %268, i64 0, i32 4
  %274 = load i32, ptr %273, align 8, !tbaa !227
  %275 = add nsw i32 %274, %272
  br label %280

276:                                              ; preds = %228, %265, %261, %259
  %277 = load ptr, ptr %25, align 8, !tbaa !72
  %278 = getelementptr inbounds %struct.PaintSurfaceData, ptr %277, i64 0, i32 4
  %279 = load i32, ptr %278, align 8, !tbaa !194
  br label %280

280:                                              ; preds = %276, %270, %254
  %281 = phi i32 [ %258, %254 ], [ %275, %270 ], [ %279, %276 ]
  %282 = sext i32 %281 to i64
  %283 = mul nsw i64 %282, 12
  %284 = tail call ptr %247(i64 noundef %283, ptr noundef nonnull @.str.42) #18
  %285 = getelementptr inbounds %struct.PaintBakeData, ptr %224, i64 0, i32 3
  store ptr %284, ptr %285, align 8, !tbaa !92
  %286 = load ptr, ptr @MEM_mallocN, align 8, !tbaa !44
  %287 = mul nsw i64 %217, 20
  %288 = tail call ptr %286(i64 noundef %287, ptr noundef nonnull @.str.43) #18
  %289 = getelementptr inbounds %struct.PaintBakeData, ptr %224, i64 0, i32 11
  store ptr %288, ptr %289, align 8, !tbaa !100
  %290 = load ptr, ptr %224, align 8, !tbaa !86
  %291 = icmp eq ptr %290, null
  br i1 %291, label %304, label %292

292:                                              ; preds = %280
  %293 = load ptr, ptr %240, align 8, !tbaa !90
  %294 = icmp eq ptr %293, null
  br i1 %294, label %301, label %295

295:                                              ; preds = %292
  %296 = load ptr, ptr %246, align 8, !tbaa !91
  %297 = icmp eq ptr %296, null
  br i1 %297, label %301, label %298

298:                                              ; preds = %295
  %299 = load ptr, ptr %285, align 8, !tbaa !92
  %300 = icmp eq ptr %299, null
  br i1 %300, label %301, label %324

301:                                              ; preds = %298, %295, %292
  br i1 %291, label %304, label %302

302:                                              ; preds = %301
  %303 = load ptr, ptr @MEM_freeN, align 8, !tbaa !44
  tail call void %303(ptr noundef nonnull %290) #18
  br label %304

304:                                              ; preds = %280, %302, %301
  %305 = load ptr, ptr %240, align 8, !tbaa !90
  %306 = icmp eq ptr %305, null
  br i1 %306, label %309, label %307

307:                                              ; preds = %304
  %308 = load ptr, ptr @MEM_freeN, align 8, !tbaa !44
  tail call void %308(ptr noundef nonnull %305) #18
  br label %309

309:                                              ; preds = %307, %304
  %310 = load ptr, ptr %246, align 8, !tbaa !91
  %311 = icmp eq ptr %310, null
  br i1 %311, label %314, label %312

312:                                              ; preds = %309
  %313 = load ptr, ptr @MEM_freeN, align 8, !tbaa !44
  tail call void %313(ptr noundef nonnull %310) #18
  br label %314

314:                                              ; preds = %312, %309
  %315 = load ptr, ptr %285, align 8, !tbaa !92
  %316 = icmp eq ptr %315, null
  br i1 %316, label %319, label %317

317:                                              ; preds = %314
  %318 = load ptr, ptr @MEM_freeN, align 8, !tbaa !44
  tail call void %318(ptr noundef nonnull %315) #18
  br label %319

319:                                              ; preds = %317, %314
  %320 = load ptr, ptr @MEM_freeN, align 8, !tbaa !44
  tail call void %320(ptr noundef nonnull %219) #18
  %321 = load ptr, ptr %31, align 8, !tbaa !57
  %322 = getelementptr inbounds %struct.DynamicPaintCanvasSettings, ptr %321, i64 0, i32 6
  %323 = tail call ptr @BLI_strncpy(ptr noundef nonnull %322, ptr noundef nonnull @.str.17, i64 noundef 64) #18
  br label %1414

324:                                              ; preds = %298, %221
  %325 = phi ptr [ %30, %221 ], [ %224, %298 ]
  %326 = icmp eq i32 %115, 0
  br i1 %326, label %338, label %327

327:                                              ; preds = %324
  %328 = getelementptr inbounds %struct.PaintBakeData, ptr %325, i64 0, i32 8
  %329 = load ptr, ptr %328, align 8, !tbaa !101
  %330 = icmp eq ptr %329, null
  br i1 %330, label %331, label %338

331:                                              ; preds = %327
  %332 = load ptr, ptr @MEM_callocN, align 8, !tbaa !44
  %333 = getelementptr inbounds %struct.PaintSurfaceData, ptr %26, i64 0, i32 4
  %334 = load i32, ptr %333, align 8, !tbaa !194
  %335 = sext i32 %334 to i64
  %336 = mul nsw i64 %335, 12
  %337 = tail call ptr %332(i64 noundef %336, ptr noundef nonnull @.str.44) #18
  store ptr %337, ptr %328, align 8, !tbaa !101
  br label %338

338:                                              ; preds = %331, %327, %324
  %339 = icmp eq i32 %118, 0
  br i1 %339, label %360, label %340

340:                                              ; preds = %338
  %341 = getelementptr inbounds %struct.PaintBakeData, ptr %325, i64 0, i32 9
  %342 = load ptr, ptr %341, align 8, !tbaa !102
  %343 = icmp eq ptr %342, null
  br i1 %343, label %344, label %360

344:                                              ; preds = %340
  %345 = load ptr, ptr @MEM_mallocN, align 8, !tbaa !44
  %346 = getelementptr inbounds %struct.PaintSurfaceData, ptr %26, i64 0, i32 4
  %347 = load i32, ptr %346, align 8, !tbaa !194
  %348 = sext i32 %347 to i64
  %349 = mul nsw i64 %348, 12
  %350 = tail call ptr %345(i64 noundef %349, ptr noundef nonnull @.str.45) #18
  store ptr %350, ptr %341, align 8, !tbaa !102
  %351 = icmp eq ptr %350, null
  br i1 %351, label %360, label %352

352:                                              ; preds = %344
  %353 = getelementptr inbounds %struct.PaintBakeData, ptr %325, i64 0, i32 8
  %354 = load ptr, ptr %353, align 8, !tbaa !101
  %355 = icmp eq ptr %354, null
  br i1 %355, label %360, label %356

356:                                              ; preds = %352
  %357 = load i32, ptr %346, align 8, !tbaa !194
  %358 = sext i32 %357 to i64
  %359 = mul nsw i64 %358, 12
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %350, ptr nonnull align 4 %354, i64 %359, i1 false)
  br label %360

360:                                              ; preds = %356, %352, %344, %340, %338
  %361 = getelementptr inbounds %struct.PaintBakeData, ptr %325, i64 0, i32 4
  store i32 0, ptr %361, align 8, !tbaa !332
  %362 = icmp sgt i32 %121, 0
  br i1 %362, label %363, label %372

363:                                              ; preds = %360
  %364 = getelementptr inbounds %struct.Object, ptr %2, i64 0, i32 47
  %365 = getelementptr inbounds %struct.PaintBakeData, ptr %325, i64 0, i32 4, i32 1
  %366 = getelementptr inbounds %struct.PaintBakeData, ptr %325, i64 0, i32 4, i32 1, i64 1
  %367 = getelementptr inbounds %struct.PaintBakeData, ptr %325, i64 0, i32 4, i32 1, i64 2
  %368 = getelementptr inbounds %struct.PaintBakeData, ptr %325, i64 0, i32 4, i32 2
  %369 = getelementptr inbounds %struct.PaintBakeData, ptr %325, i64 0, i32 4, i32 2, i64 1
  %370 = getelementptr inbounds %struct.PaintBakeData, ptr %325, i64 0, i32 4, i32 2, i64 2
  %371 = zext nneg i32 %121 to i64
  br label %422

372:                                              ; preds = %459, %360
  %373 = getelementptr inbounds %struct.PaintSurfaceData, ptr %26, i64 0, i32 4
  %374 = load i32, ptr %373, align 8, !tbaa !194
  %375 = icmp sgt i32 %374, 0
  br i1 %375, label %376, label %884

376:                                              ; preds = %372
  %377 = or i1 %125, %326
  %378 = getelementptr inbounds %struct.PaintBakeData, ptr %325, i64 0, i32 3
  %379 = getelementptr inbounds %struct.PaintBakeData, ptr %325, i64 0, i32 1
  %380 = getelementptr inbounds %struct.DynamicPaintSurface, ptr %0, i64 0, i32 10
  %381 = icmp ne ptr %28, null
  %382 = getelementptr inbounds %struct.PaintBakeData, ptr %325, i64 0, i32 2
  %383 = getelementptr inbounds %struct.PaintBakeData, ptr %325, i64 0, i32 1
  %384 = getelementptr inbounds %struct.PaintAdjData, ptr %28, i64 0, i32 2
  %385 = getelementptr inbounds %struct.PaintBakeData, ptr %325, i64 0, i32 2
  %386 = getelementptr inbounds %struct.PaintAdjData, ptr %28, i64 0, i32 1
  %387 = getelementptr inbounds %struct.PaintBakeData, ptr %325, i64 0, i32 1
  %388 = getelementptr inbounds %struct.PaintBakeData, ptr %325, i64 0, i32 2
  %389 = getelementptr inbounds %struct.PaintBakeData, ptr %325, i64 0, i32 3
  %390 = getelementptr inbounds %struct.PaintBakeData, ptr %325, i64 0, i32 1
  %391 = getelementptr inbounds %struct.PaintAdjData, ptr %28, i64 0, i32 1
  %392 = getelementptr inbounds %struct.Object, ptr %2, i64 0, i32 47
  %393 = getelementptr inbounds %struct.PaintBakeData, ptr %325, i64 0, i32 2
  %394 = getelementptr inbounds %struct.PaintBakeData, ptr %325, i64 0, i32 1
  %395 = getelementptr inbounds %struct.PaintBakeData, ptr %325, i64 0, i32 3
  %396 = getelementptr inbounds float, ptr %8, i64 1
  %397 = getelementptr inbounds float, ptr %8, i64 2
  %398 = getelementptr inbounds float, ptr %9, i64 1
  %399 = getelementptr inbounds float, ptr %9, i64 2
  %400 = getelementptr inbounds float, ptr %10, i64 1
  %401 = getelementptr inbounds float, ptr %10, i64 2
  %402 = getelementptr inbounds %struct.Object, ptr %2, i64 0, i32 47
  %403 = getelementptr inbounds %struct.DynamicPaintSurface, ptr %0, i64 0, i32 11
  %404 = getelementptr inbounds float, ptr %12, i64 1
  %405 = getelementptr inbounds float, ptr %12, i64 2
  %406 = getelementptr inbounds float, ptr %13, i64 1
  %407 = getelementptr inbounds float, ptr %13, i64 2
  %408 = getelementptr inbounds float, ptr %14, i64 1
  %409 = getelementptr inbounds float, ptr %14, i64 2
  %410 = getelementptr inbounds %struct.PaintBakeData, ptr %325, i64 0, i32 2
  %411 = getelementptr inbounds float, ptr %11, i64 1
  %412 = getelementptr inbounds float, ptr %11, i64 2
  %413 = getelementptr inbounds %struct.Object, ptr %2, i64 0, i32 36
  %414 = getelementptr inbounds %struct.Object, ptr %2, i64 0, i32 36, i64 1
  %415 = getelementptr inbounds float, ptr %11, i64 1
  %416 = getelementptr inbounds %struct.Object, ptr %2, i64 0, i32 36, i64 2
  %417 = getelementptr inbounds float, ptr %11, i64 2
  %418 = getelementptr inbounds %struct.PaintBakeData, ptr %325, i64 0, i32 13
  %419 = getelementptr inbounds %struct.PaintBakeData, ptr %325, i64 0, i32 8
  %420 = getelementptr inbounds %struct.PaintBakeData, ptr %325, i64 0, i32 3
  %421 = getelementptr inbounds %struct.PaintBakeData, ptr %325, i64 0, i32 1
  br label %462

422:                                              ; preds = %363, %459
  %423 = phi i64 [ 0, %363 ], [ %460, %459 ]
  %424 = getelementptr inbounds %struct.Vec3f, ptr %219, i64 %423
  %425 = getelementptr inbounds %struct.MVert, ptr %124, i64 %423
  %426 = load float, ptr %425, align 4, !tbaa !123
  store float %426, ptr %424, align 4, !tbaa !123
  %427 = getelementptr inbounds float, ptr %425, i64 1
  %428 = load float, ptr %427, align 4, !tbaa !123
  %429 = getelementptr inbounds float, ptr %424, i64 1
  store float %428, ptr %429, align 4, !tbaa !123
  %430 = getelementptr inbounds float, ptr %425, i64 2
  %431 = load float, ptr %430, align 4, !tbaa !123
  %432 = getelementptr inbounds float, ptr %424, i64 2
  store float %431, ptr %432, align 4, !tbaa !123
  tail call void @mul_m4_v3(ptr noundef nonnull %364, ptr noundef nonnull %424) #18
  %433 = load i32, ptr %361, align 4, !tbaa !333
  %434 = icmp eq i32 %433, 0
  br i1 %434, label %435, label %442

435:                                              ; preds = %422
  %436 = load float, ptr %424, align 4, !tbaa !123
  store float %436, ptr %365, align 4, !tbaa !123
  %437 = load float, ptr %429, align 4, !tbaa !123
  store float %437, ptr %366, align 4, !tbaa !123
  %438 = load float, ptr %432, align 4, !tbaa !123
  store float %438, ptr %367, align 4, !tbaa !123
  %439 = load float, ptr %424, align 4, !tbaa !123
  store float %439, ptr %368, align 4, !tbaa !123
  %440 = load float, ptr %429, align 4, !tbaa !123
  store float %440, ptr %369, align 4, !tbaa !123
  %441 = load float, ptr %432, align 4, !tbaa !123
  store float %441, ptr %370, align 4, !tbaa !123
  store i32 1, ptr %361, align 4, !tbaa !333
  br label %459

442:                                              ; preds = %422, %456
  %443 = phi i64 [ %457, %456 ], [ 2, %422 ]
  %444 = getelementptr inbounds float, ptr %424, i64 %443
  %445 = load float, ptr %444, align 4, !tbaa !123
  %446 = getelementptr inbounds %struct.PaintBakeData, ptr %325, i64 0, i32 4, i32 1, i64 %443
  %447 = load float, ptr %446, align 4, !tbaa !123
  %448 = fcmp olt float %445, %447
  br i1 %448, label %449, label %450

449:                                              ; preds = %442
  store float %445, ptr %446, align 4, !tbaa !123
  br label %450

450:                                              ; preds = %449, %442
  %451 = load float, ptr %444, align 4, !tbaa !123
  %452 = getelementptr inbounds %struct.PaintBakeData, ptr %325, i64 0, i32 4, i32 2, i64 %443
  %453 = load float, ptr %452, align 4, !tbaa !123
  %454 = fcmp ogt float %451, %453
  br i1 %454, label %455, label %456

455:                                              ; preds = %450
  store float %451, ptr %452, align 4, !tbaa !123
  br label %456

456:                                              ; preds = %455, %450
  %457 = add nsw i64 %443, -1
  %458 = icmp eq i64 %443, 0
  br i1 %458, label %459, label %442, !llvm.loop !334

459:                                              ; preds = %456, %435
  %460 = add nuw nsw i64 %423, 1
  %461 = icmp eq i64 %460, %371
  br i1 %461, label %372, label %422, !llvm.loop !335

462:                                              ; preds = %376, %879
  %463 = phi i64 [ 0, %376 ], [ %880, %879 ]
  br i1 %377, label %476, label %464

464:                                              ; preds = %462
  %465 = load ptr, ptr %378, align 8, !tbaa !92
  %466 = load ptr, ptr %379, align 8, !tbaa !90
  %467 = getelementptr inbounds i32, ptr %466, i64 %463
  %468 = load i32, ptr %467, align 4, !tbaa !205
  %469 = sext i32 %468 to i64
  %470 = getelementptr inbounds %struct.Vec3f, ptr %465, i64 %469
  %471 = load float, ptr %470, align 4, !tbaa !123
  %472 = getelementptr inbounds float, ptr %470, i64 1
  %473 = load float, ptr %472, align 4, !tbaa !123
  %474 = getelementptr inbounds float, ptr %470, i64 2
  %475 = load float, ptr %474, align 4, !tbaa !123
  br label %476

476:                                              ; preds = %464, %462
  %477 = phi float [ 0.000000e+00, %462 ], [ %471, %464 ]
  %478 = phi float [ 0.000000e+00, %462 ], [ %473, %464 ]
  %479 = phi float [ 0.000000e+00, %462 ], [ %475, %464 ]
  %480 = load i16, ptr %380, align 4, !tbaa !34
  switch i16 %480, label %749 [
    i16 2, label %481
    i16 1, label %623
  ]

481:                                              ; preds = %476
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %8) #18
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %9) #18
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %10) #18
  %482 = load ptr, ptr %26, align 8, !tbaa !73
  %483 = load ptr, ptr %482, align 8, !tbaa !75
  %484 = load i32, ptr %15, align 4, !tbaa !50
  %485 = and i32 %484, 2
  %486 = icmp eq i32 %485, 0
  %487 = select i1 %486, i32 1, i32 5
  %488 = load ptr, ptr %393, align 8, !tbaa !91
  %489 = getelementptr inbounds i32, ptr %488, i64 %463
  store i32 %487, ptr %489, align 4, !tbaa !205
  %490 = trunc i64 %463 to i32
  %491 = mul nsw i32 %487, %490
  %492 = load ptr, ptr %394, align 8, !tbaa !90
  %493 = getelementptr inbounds i32, ptr %492, i64 %463
  store i32 %491, ptr %493, align 4, !tbaa !205
  %494 = load ptr, ptr %393, align 8, !tbaa !91
  %495 = getelementptr inbounds i32, ptr %494, i64 %463
  %496 = load i32, ptr %495, align 4, !tbaa !205
  %497 = icmp sgt i32 %496, 0
  br i1 %497, label %498, label %533

498:                                              ; preds = %481
  %499 = getelementptr inbounds %struct.PaintUVPoint, ptr %483, i64 %463, i32 2
  %500 = getelementptr inbounds %struct.PaintUVPoint, ptr %483, i64 %463, i32 3
  %501 = getelementptr inbounds %struct.PaintUVPoint, ptr %483, i64 %463, i32 4
  %502 = getelementptr inbounds %struct.ImgSeqFormatData, ptr %482, i64 0, i32 1
  %503 = trunc i64 %463 to i32
  br label %504

504:                                              ; preds = %498, %504
  %505 = phi i32 [ %496, %498 ], [ %531, %504 ]
  %506 = phi i32 [ 0, %498 ], [ %528, %504 ]
  %507 = load ptr, ptr %395, align 8, !tbaa !92
  %508 = load ptr, ptr %394, align 8, !tbaa !90
  %509 = getelementptr inbounds i32, ptr %508, i64 %463
  %510 = load i32, ptr %509, align 4, !tbaa !205
  %511 = add nsw i32 %510, %506
  %512 = sext i32 %511 to i64
  %513 = getelementptr inbounds %struct.Vec3f, ptr %507, i64 %512
  %514 = load i32, ptr %499, align 4, !tbaa !290
  %515 = zext i32 %514 to i64
  %516 = getelementptr inbounds %struct.Vec3f, ptr %219, i64 %515
  %517 = load i32, ptr %500, align 4, !tbaa !291
  %518 = zext i32 %517 to i64
  %519 = getelementptr inbounds %struct.Vec3f, ptr %219, i64 %518
  %520 = load i32, ptr %501, align 4, !tbaa !292
  %521 = zext i32 %520 to i64
  %522 = getelementptr inbounds %struct.Vec3f, ptr %219, i64 %521
  %523 = load ptr, ptr %502, align 8, !tbaa !77
  %524 = mul nsw i32 %505, %503
  %525 = add nsw i32 %524, %506
  %526 = sext i32 %525 to i64
  %527 = getelementptr inbounds %struct.Vec3f, ptr %523, i64 %526
  call void @interp_v3_v3v3v3(ptr noundef %513, ptr noundef nonnull %516, ptr noundef nonnull %519, ptr noundef nonnull %522, ptr noundef %527) #18
  %528 = add nuw nsw i32 %506, 1
  %529 = load ptr, ptr %393, align 8, !tbaa !91
  %530 = getelementptr inbounds i32, ptr %529, i64 %463
  %531 = load i32, ptr %530, align 4, !tbaa !205
  %532 = icmp slt i32 %528, %531
  br i1 %532, label %504, label %533, !llvm.loop !336

533:                                              ; preds = %504, %481
  %534 = phi i32 [ %496, %481 ], [ %531, %504 ]
  %535 = getelementptr inbounds %struct.PaintUVPoint, ptr %483, i64 %463, i32 2
  %536 = load i32, ptr %535, align 4, !tbaa !290
  %537 = zext i32 %536 to i64
  %538 = getelementptr inbounds %struct.MVert, ptr %124, i64 %537, i32 1
  %539 = load i16, ptr %538, align 2, !tbaa !279
  %540 = sitofp i16 %539 to float
  %541 = fmul float %540, 0x3F00002000000000
  store float %541, ptr %8, align 4, !tbaa !123
  %542 = getelementptr inbounds i16, ptr %538, i64 1
  %543 = load i16, ptr %542, align 2, !tbaa !279
  %544 = sitofp i16 %543 to float
  %545 = fmul float %544, 0x3F00002000000000
  store float %545, ptr %396, align 4, !tbaa !123
  %546 = getelementptr inbounds i16, ptr %538, i64 2
  %547 = load i16, ptr %546, align 2, !tbaa !279
  %548 = sitofp i16 %547 to float
  %549 = fmul float %548, 0x3F00002000000000
  store float %549, ptr %397, align 4, !tbaa !123
  %550 = getelementptr inbounds %struct.PaintUVPoint, ptr %483, i64 %463, i32 3
  %551 = load i32, ptr %550, align 4, !tbaa !291
  %552 = zext i32 %551 to i64
  %553 = getelementptr inbounds %struct.MVert, ptr %124, i64 %552, i32 1
  %554 = load i16, ptr %553, align 2, !tbaa !279
  %555 = sitofp i16 %554 to float
  %556 = fmul float %555, 0x3F00002000000000
  store float %556, ptr %9, align 4, !tbaa !123
  %557 = getelementptr inbounds i16, ptr %553, i64 1
  %558 = load i16, ptr %557, align 2, !tbaa !279
  %559 = sitofp i16 %558 to float
  %560 = fmul float %559, 0x3F00002000000000
  store float %560, ptr %398, align 4, !tbaa !123
  %561 = getelementptr inbounds i16, ptr %553, i64 2
  %562 = load i16, ptr %561, align 2, !tbaa !279
  %563 = sitofp i16 %562 to float
  %564 = fmul float %563, 0x3F00002000000000
  store float %564, ptr %399, align 4, !tbaa !123
  %565 = getelementptr inbounds %struct.PaintUVPoint, ptr %483, i64 %463, i32 4
  %566 = load i32, ptr %565, align 4, !tbaa !292
  %567 = zext i32 %566 to i64
  %568 = getelementptr inbounds %struct.MVert, ptr %124, i64 %567, i32 1
  %569 = load i16, ptr %568, align 2, !tbaa !279
  %570 = sitofp i16 %569 to float
  %571 = fmul float %570, 0x3F00002000000000
  store float %571, ptr %10, align 4, !tbaa !123
  %572 = getelementptr inbounds i16, ptr %568, i64 1
  %573 = load i16, ptr %572, align 2, !tbaa !279
  %574 = sitofp i16 %573 to float
  %575 = fmul float %574, 0x3F00002000000000
  store float %575, ptr %400, align 4, !tbaa !123
  %576 = getelementptr inbounds i16, ptr %568, i64 2
  %577 = load i16, ptr %576, align 2, !tbaa !279
  %578 = sitofp i16 %577 to float
  %579 = fmul float %578, 0x3F00002000000000
  store float %579, ptr %401, align 4, !tbaa !123
  %580 = load ptr, ptr %325, align 8, !tbaa !86
  %581 = getelementptr inbounds %struct.PaintBakeNormal, ptr %580, i64 %463
  %582 = getelementptr inbounds %struct.ImgSeqFormatData, ptr %482, i64 0, i32 1
  %583 = load ptr, ptr %582, align 8, !tbaa !77
  %584 = trunc i64 %463 to i32
  %585 = mul nsw i32 %534, %584
  %586 = sext i32 %585 to i64
  %587 = getelementptr inbounds %struct.Vec3f, ptr %583, i64 %586
  call void @interp_v3_v3v3v3(ptr noundef %581, ptr noundef nonnull %8, ptr noundef nonnull %9, ptr noundef nonnull %10, ptr noundef %587) #18
  %588 = load ptr, ptr %325, align 8, !tbaa !86
  %589 = getelementptr inbounds %struct.PaintBakeNormal, ptr %588, i64 %463
  call void @mul_mat3_m4_v3(ptr noundef nonnull %402, ptr noundef %589) #18
  %590 = load ptr, ptr %325, align 8, !tbaa !86
  %591 = getelementptr inbounds %struct.PaintBakeNormal, ptr %590, i64 %463
  %592 = load float, ptr %591, align 4, !tbaa !123
  %593 = getelementptr inbounds float, ptr %591, i64 1
  %594 = load float, ptr %593, align 4, !tbaa !123
  %595 = fmul float %594, %594
  %596 = call float @llvm.fmuladd.f32(float %592, float %592, float %595)
  %597 = getelementptr inbounds float, ptr %591, i64 2
  %598 = load float, ptr %597, align 4, !tbaa !123
  %599 = call float @llvm.fmuladd.f32(float %598, float %598, float %596)
  %600 = fcmp ogt float %599, 0x38AA95A5C0000000
  br i1 %600, label %601, label %610

601:                                              ; preds = %533
  %602 = call float @sqrtf(float noundef %599) #18
  %603 = fdiv float 1.000000e+00, %602
  %604 = load float, ptr %591, align 4, !tbaa !123
  %605 = fmul float %604, %603
  store float %605, ptr %591, align 4, !tbaa !123
  %606 = load float, ptr %593, align 4, !tbaa !123
  %607 = fmul float %603, %606
  store float %607, ptr %593, align 4, !tbaa !123
  %608 = load float, ptr %597, align 4, !tbaa !123
  %609 = fmul float %603, %608
  br label %611

610:                                              ; preds = %533
  store float 0.000000e+00, ptr %591, align 4, !tbaa !123
  store float 0.000000e+00, ptr %593, align 4, !tbaa !123
  br label %611

611:                                              ; preds = %610, %601
  %612 = phi float [ 0.000000e+00, %610 ], [ %609, %601 ]
  store float %612, ptr %597, align 4, !tbaa !123
  %613 = load ptr, ptr %325, align 8, !tbaa !86
  %614 = getelementptr inbounds %struct.PaintBakeNormal, ptr %613, i64 %463
  %615 = load float, ptr %614, align 4, !tbaa !123
  %616 = fneg float %615
  store float %616, ptr %614, align 4, !tbaa !123
  %617 = getelementptr inbounds float, ptr %614, i64 1
  %618 = load float, ptr %617, align 4, !tbaa !123
  %619 = fneg float %618
  store float %619, ptr %617, align 4, !tbaa !123
  %620 = getelementptr inbounds float, ptr %614, i64 2
  %621 = load float, ptr %620, align 4, !tbaa !123
  %622 = fneg float %621
  store float %622, ptr %620, align 4, !tbaa !123
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %10) #18
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %9) #18
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %8) #18
  br label %749

623:                                              ; preds = %476
  %624 = load i32, ptr %15, align 4, !tbaa !50
  %625 = and i32 %624, 2
  %626 = icmp ne i32 %625, 0
  %627 = select i1 %626, i1 %381, i1 false
  br i1 %627, label %628, label %642

628:                                              ; preds = %623
  %629 = load ptr, ptr %384, align 8, !tbaa !82
  %630 = getelementptr inbounds i32, ptr %629, i64 %463
  %631 = load i32, ptr %630, align 4, !tbaa !205
  %632 = add nsw i32 %631, 1
  %633 = load ptr, ptr %385, align 8, !tbaa !91
  %634 = getelementptr inbounds i32, ptr %633, i64 %463
  store i32 %632, ptr %634, align 4, !tbaa !205
  %635 = load ptr, ptr %386, align 8, !tbaa !80
  %636 = getelementptr inbounds i32, ptr %635, i64 %463
  %637 = load i32, ptr %636, align 4, !tbaa !205
  %638 = trunc i64 %463 to i32
  %639 = add nsw i32 %637, %638
  %640 = load ptr, ptr %387, align 8, !tbaa !90
  %641 = getelementptr inbounds i32, ptr %640, i64 %463
  store i32 %639, ptr %641, align 4, !tbaa !205
  br label %648

642:                                              ; preds = %623
  %643 = load ptr, ptr %382, align 8, !tbaa !91
  %644 = getelementptr inbounds i32, ptr %643, i64 %463
  store i32 1, ptr %644, align 4, !tbaa !205
  %645 = load ptr, ptr %383, align 8, !tbaa !90
  %646 = getelementptr inbounds i32, ptr %645, i64 %463
  %647 = trunc i64 %463 to i32
  store i32 %647, ptr %646, align 4, !tbaa !205
  br label %648

648:                                              ; preds = %642, %628
  %649 = load ptr, ptr %388, align 8, !tbaa !91
  %650 = getelementptr inbounds i32, ptr %649, i64 %463
  %651 = load i32, ptr %650, align 4, !tbaa !205
  %652 = icmp sgt i32 %651, 0
  br i1 %652, label %653, label %699

653:                                              ; preds = %648
  %654 = load ptr, ptr %389, align 8, !tbaa !92
  %655 = load ptr, ptr %390, align 8, !tbaa !90
  %656 = getelementptr inbounds i32, ptr %655, i64 %463
  %657 = load i32, ptr %656, align 4, !tbaa !205
  %658 = getelementptr inbounds %struct.Vec3f, ptr %219, i64 %463
  %659 = getelementptr inbounds float, ptr %658, i64 1
  %660 = getelementptr inbounds float, ptr %658, i64 2
  %661 = sext i32 %657 to i64
  %662 = zext nneg i32 %651 to i64
  %663 = getelementptr %struct.Vec3f, ptr %654, i64 %661
  br label %664

664:                                              ; preds = %653, %696
  %665 = phi i64 [ 0, %653 ], [ %697, %696 ]
  %666 = getelementptr %struct.Vec3f, ptr %663, i64 %665
  %667 = load float, ptr %658, align 4, !tbaa !123
  store float %667, ptr %666, align 4, !tbaa !123
  %668 = load float, ptr %659, align 4, !tbaa !123
  %669 = getelementptr inbounds float, ptr %666, i64 1
  store float %668, ptr %669, align 4, !tbaa !123
  %670 = load float, ptr %660, align 4, !tbaa !123
  %671 = getelementptr inbounds float, ptr %666, i64 2
  store float %670, ptr %671, align 4, !tbaa !123
  %672 = icmp eq i64 %665, 0
  br i1 %672, label %696, label %673

673:                                              ; preds = %664
  %674 = load ptr, ptr %391, align 8, !tbaa !80
  %675 = getelementptr inbounds i32, ptr %674, i64 %463
  %676 = load i32, ptr %675, align 4, !tbaa !205
  %677 = sext i32 %676 to i64
  %678 = fmul float %667, 0x3FE5555560000000
  store float %678, ptr %666, align 4, !tbaa !123
  %679 = fmul float %668, 0x3FE5555560000000
  store float %679, ptr %669, align 4, !tbaa !123
  %680 = fmul float %670, 0x3FE5555560000000
  store float %680, ptr %671, align 4, !tbaa !123
  %681 = load ptr, ptr %28, align 8, !tbaa !83
  %682 = getelementptr i32, ptr %681, i64 %665
  %683 = getelementptr i32, ptr %682, i64 -1
  %684 = getelementptr i32, ptr %683, i64 %677
  %685 = load i32, ptr %684, align 4, !tbaa !205
  %686 = sext i32 %685 to i64
  %687 = getelementptr inbounds %struct.Vec3f, ptr %219, i64 %686
  %688 = load float, ptr %687, align 4, !tbaa !123
  %689 = call float @llvm.fmuladd.f32(float %688, float 0x3FD5555560000000, float %678)
  store float %689, ptr %666, align 4, !tbaa !123
  %690 = getelementptr inbounds float, ptr %687, i64 1
  %691 = load float, ptr %690, align 4, !tbaa !123
  %692 = call float @llvm.fmuladd.f32(float %691, float 0x3FD5555560000000, float %679)
  store float %692, ptr %669, align 4, !tbaa !123
  %693 = getelementptr inbounds float, ptr %687, i64 2
  %694 = load float, ptr %693, align 4, !tbaa !123
  %695 = call float @llvm.fmuladd.f32(float %694, float 0x3FD5555560000000, float %680)
  store float %695, ptr %671, align 4, !tbaa !123
  br label %696

696:                                              ; preds = %673, %664
  %697 = add nuw nsw i64 %665, 1
  %698 = icmp eq i64 %697, %662
  br i1 %698, label %699, label %664, !llvm.loop !337

699:                                              ; preds = %696, %648
  %700 = load ptr, ptr %325, align 8, !tbaa !86
  %701 = getelementptr inbounds %struct.PaintBakeNormal, ptr %700, i64 %463
  %702 = getelementptr inbounds %struct.MVert, ptr %124, i64 %463, i32 1
  %703 = load i16, ptr %702, align 2, !tbaa !279
  %704 = sitofp i16 %703 to float
  %705 = fmul float %704, 0x3F00002000000000
  store float %705, ptr %701, align 4, !tbaa !123
  %706 = getelementptr inbounds i16, ptr %702, i64 1
  %707 = load i16, ptr %706, align 2, !tbaa !279
  %708 = sitofp i16 %707 to float
  %709 = fmul float %708, 0x3F00002000000000
  %710 = getelementptr inbounds float, ptr %701, i64 1
  store float %709, ptr %710, align 4, !tbaa !123
  %711 = getelementptr inbounds i16, ptr %702, i64 2
  %712 = load i16, ptr %711, align 2, !tbaa !279
  %713 = sitofp i16 %712 to float
  %714 = fmul float %713, 0x3F00002000000000
  %715 = getelementptr inbounds float, ptr %701, i64 2
  store float %714, ptr %715, align 4, !tbaa !123
  call void @mul_mat3_m4_v3(ptr noundef nonnull %392, ptr noundef nonnull %701) #18
  %716 = load ptr, ptr %325, align 8, !tbaa !86
  %717 = getelementptr inbounds %struct.PaintBakeNormal, ptr %716, i64 %463
  %718 = load float, ptr %717, align 4, !tbaa !123
  %719 = getelementptr inbounds float, ptr %717, i64 1
  %720 = load float, ptr %719, align 4, !tbaa !123
  %721 = fmul float %720, %720
  %722 = call float @llvm.fmuladd.f32(float %718, float %718, float %721)
  %723 = getelementptr inbounds float, ptr %717, i64 2
  %724 = load float, ptr %723, align 4, !tbaa !123
  %725 = call float @llvm.fmuladd.f32(float %724, float %724, float %722)
  %726 = fcmp ogt float %725, 0x38AA95A5C0000000
  br i1 %726, label %727, label %736

727:                                              ; preds = %699
  %728 = call float @sqrtf(float noundef %725) #18
  %729 = fdiv float 1.000000e+00, %728
  %730 = load float, ptr %717, align 4, !tbaa !123
  %731 = fmul float %730, %729
  store float %731, ptr %717, align 4, !tbaa !123
  %732 = load float, ptr %719, align 4, !tbaa !123
  %733 = fmul float %729, %732
  store float %733, ptr %719, align 4, !tbaa !123
  %734 = load float, ptr %723, align 4, !tbaa !123
  %735 = fmul float %729, %734
  br label %737

736:                                              ; preds = %699
  store float 0.000000e+00, ptr %717, align 4, !tbaa !123
  store float 0.000000e+00, ptr %719, align 4, !tbaa !123
  br label %737

737:                                              ; preds = %736, %727
  %738 = phi float [ 0.000000e+00, %736 ], [ %735, %727 ]
  store float %738, ptr %723, align 4, !tbaa !123
  %739 = load ptr, ptr %325, align 8, !tbaa !86
  %740 = getelementptr inbounds %struct.PaintBakeNormal, ptr %739, i64 %463
  %741 = load float, ptr %740, align 4, !tbaa !123
  %742 = fneg float %741
  store float %742, ptr %740, align 4, !tbaa !123
  %743 = getelementptr inbounds float, ptr %740, i64 1
  %744 = load float, ptr %743, align 4, !tbaa !123
  %745 = fneg float %744
  store float %745, ptr %743, align 4, !tbaa !123
  %746 = getelementptr inbounds float, ptr %740, i64 2
  %747 = load float, ptr %746, align 4, !tbaa !123
  %748 = fneg float %747
  store float %748, ptr %746, align 4, !tbaa !123
  br label %749

749:                                              ; preds = %737, %611, %476
  %750 = load i16, ptr %403, align 2, !tbaa !43
  switch i16 %750, label %856 [
    i16 1, label %751
    i16 3, label %751
  ]

751:                                              ; preds = %749, %749
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %11) #18
  %752 = load i16, ptr %380, align 4, !tbaa !34
  %753 = icmp eq i16 %752, 1
  br i1 %753, label %754, label %783

754:                                              ; preds = %751
  %755 = getelementptr inbounds %struct.MVert, ptr %124, i64 %463, i32 1
  %756 = load i16, ptr %755, align 2, !tbaa !279
  %757 = sitofp i16 %756 to float
  %758 = fmul float %757, 0x3F00002000000000
  store float %758, ptr %11, align 4, !tbaa !123
  %759 = getelementptr inbounds i16, ptr %755, i64 1
  %760 = load i16, ptr %759, align 2, !tbaa !279
  %761 = sitofp i16 %760 to float
  %762 = fmul float %761, 0x3F00002000000000
  store float %762, ptr %411, align 4, !tbaa !123
  %763 = getelementptr inbounds i16, ptr %755, i64 2
  %764 = load i16, ptr %763, align 2, !tbaa !279
  %765 = sitofp i16 %764 to float
  %766 = fmul float %765, 0x3F00002000000000
  store float %766, ptr %412, align 4, !tbaa !123
  %767 = fmul float %762, %762
  %768 = call float @llvm.fmuladd.f32(float %758, float %758, float %767)
  %769 = call float @llvm.fmuladd.f32(float %766, float %766, float %768)
  %770 = fcmp ogt float %769, 0x38AA95A5C0000000
  br i1 %770, label %771, label %780

771:                                              ; preds = %754
  %772 = call float @sqrtf(float noundef %769) #18
  %773 = fdiv float 1.000000e+00, %772
  %774 = load float, ptr %11, align 4, !tbaa !123
  %775 = fmul float %774, %773
  store float %775, ptr %11, align 4, !tbaa !123
  %776 = load float, ptr %411, align 4, !tbaa !123
  %777 = fmul float %773, %776
  store float %777, ptr %411, align 4, !tbaa !123
  %778 = load float, ptr %412, align 4, !tbaa !123
  %779 = fmul float %773, %778
  br label %781

780:                                              ; preds = %754
  store float 0.000000e+00, ptr %11, align 4, !tbaa !123
  store float 0.000000e+00, ptr %411, align 4, !tbaa !123
  br label %781

781:                                              ; preds = %780, %771
  %782 = phi float [ 0.000000e+00, %780 ], [ %779, %771 ]
  store float %782, ptr %412, align 4, !tbaa !123
  br label %840

783:                                              ; preds = %751
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %12) #18
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %13) #18
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %14) #18
  %784 = load ptr, ptr %26, align 8, !tbaa !73
  %785 = load ptr, ptr %784, align 8, !tbaa !75
  %786 = getelementptr inbounds %struct.PaintUVPoint, ptr %785, i64 %463, i32 2
  %787 = load i32, ptr %786, align 4, !tbaa !290
  %788 = zext i32 %787 to i64
  %789 = getelementptr inbounds %struct.MVert, ptr %124, i64 %788, i32 1
  %790 = load i16, ptr %789, align 2, !tbaa !279
  %791 = sitofp i16 %790 to float
  %792 = fmul float %791, 0x3F00002000000000
  store float %792, ptr %12, align 4, !tbaa !123
  %793 = getelementptr inbounds i16, ptr %789, i64 1
  %794 = load i16, ptr %793, align 2, !tbaa !279
  %795 = sitofp i16 %794 to float
  %796 = fmul float %795, 0x3F00002000000000
  store float %796, ptr %404, align 4, !tbaa !123
  %797 = getelementptr inbounds i16, ptr %789, i64 2
  %798 = load i16, ptr %797, align 2, !tbaa !279
  %799 = sitofp i16 %798 to float
  %800 = fmul float %799, 0x3F00002000000000
  store float %800, ptr %405, align 4, !tbaa !123
  %801 = getelementptr inbounds %struct.PaintUVPoint, ptr %785, i64 %463, i32 3
  %802 = load i32, ptr %801, align 4, !tbaa !291
  %803 = zext i32 %802 to i64
  %804 = getelementptr inbounds %struct.MVert, ptr %124, i64 %803, i32 1
  %805 = load i16, ptr %804, align 2, !tbaa !279
  %806 = sitofp i16 %805 to float
  %807 = fmul float %806, 0x3F00002000000000
  store float %807, ptr %13, align 4, !tbaa !123
  %808 = getelementptr inbounds i16, ptr %804, i64 1
  %809 = load i16, ptr %808, align 2, !tbaa !279
  %810 = sitofp i16 %809 to float
  %811 = fmul float %810, 0x3F00002000000000
  store float %811, ptr %406, align 4, !tbaa !123
  %812 = getelementptr inbounds i16, ptr %804, i64 2
  %813 = load i16, ptr %812, align 2, !tbaa !279
  %814 = sitofp i16 %813 to float
  %815 = fmul float %814, 0x3F00002000000000
  store float %815, ptr %407, align 4, !tbaa !123
  %816 = getelementptr inbounds %struct.PaintUVPoint, ptr %785, i64 %463, i32 4
  %817 = load i32, ptr %816, align 4, !tbaa !292
  %818 = zext i32 %817 to i64
  %819 = getelementptr inbounds %struct.MVert, ptr %124, i64 %818, i32 1
  %820 = load i16, ptr %819, align 2, !tbaa !279
  %821 = sitofp i16 %820 to float
  %822 = fmul float %821, 0x3F00002000000000
  store float %822, ptr %14, align 4, !tbaa !123
  %823 = getelementptr inbounds i16, ptr %819, i64 1
  %824 = load i16, ptr %823, align 2, !tbaa !279
  %825 = sitofp i16 %824 to float
  %826 = fmul float %825, 0x3F00002000000000
  store float %826, ptr %408, align 4, !tbaa !123
  %827 = getelementptr inbounds i16, ptr %819, i64 2
  %828 = load i16, ptr %827, align 2, !tbaa !279
  %829 = sitofp i16 %828 to float
  %830 = fmul float %829, 0x3F00002000000000
  store float %830, ptr %409, align 4, !tbaa !123
  %831 = getelementptr inbounds %struct.ImgSeqFormatData, ptr %784, i64 0, i32 1
  %832 = load ptr, ptr %831, align 8, !tbaa !77
  %833 = load ptr, ptr %410, align 8, !tbaa !91
  %834 = getelementptr inbounds i32, ptr %833, i64 %463
  %835 = load i32, ptr %834, align 4, !tbaa !205
  %836 = trunc i64 %463 to i32
  %837 = mul nsw i32 %835, %836
  %838 = sext i32 %837 to i64
  %839 = getelementptr inbounds %struct.Vec3f, ptr %832, i64 %838
  call void @interp_v3_v3v3v3(ptr noundef nonnull %11, ptr noundef nonnull %12, ptr noundef nonnull %13, ptr noundef nonnull %14, ptr noundef %839) #18
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %14) #18
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %13) #18
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %12) #18
  br label %840

840:                                              ; preds = %783, %781
  %841 = load float, ptr %413, align 4, !tbaa !123
  %842 = load float, ptr %11, align 4, !tbaa !123
  %843 = fmul float %841, %842
  store float %843, ptr %11, align 4, !tbaa !123
  %844 = load float, ptr %414, align 4, !tbaa !123
  %845 = load float, ptr %415, align 4, !tbaa !123
  %846 = fmul float %844, %845
  store float %846, ptr %415, align 4, !tbaa !123
  %847 = load float, ptr %416, align 4, !tbaa !123
  %848 = load float, ptr %417, align 4, !tbaa !123
  %849 = fmul float %847, %848
  store float %849, ptr %417, align 4, !tbaa !123
  %850 = fmul float %846, %846
  %851 = call float @llvm.fmuladd.f32(float %843, float %843, float %850)
  %852 = call float @llvm.fmuladd.f32(float %849, float %849, float %851)
  %853 = call float @sqrtf(float noundef %852) #18
  %854 = load ptr, ptr %325, align 8, !tbaa !86
  %855 = getelementptr inbounds %struct.PaintBakeNormal, ptr %854, i64 %463, i32 1
  store float %853, ptr %855, align 4, !tbaa !338
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %11) #18
  br label %856

856:                                              ; preds = %840, %749
  br i1 %377, label %879, label %857

857:                                              ; preds = %856
  %858 = load i32, ptr %418, align 8, !tbaa !195
  %859 = icmp eq i32 %858, 0
  br i1 %859, label %860, label %879

860:                                              ; preds = %857
  %861 = load ptr, ptr %419, align 8, !tbaa !101
  %862 = getelementptr inbounds %struct.Vec3f, ptr %861, i64 %463
  %863 = load ptr, ptr %420, align 8, !tbaa !92
  %864 = load ptr, ptr %421, align 8, !tbaa !90
  %865 = getelementptr inbounds i32, ptr %864, i64 %463
  %866 = load i32, ptr %865, align 4, !tbaa !205
  %867 = sext i32 %866 to i64
  %868 = getelementptr inbounds %struct.Vec3f, ptr %863, i64 %867
  %869 = load float, ptr %868, align 4, !tbaa !123
  %870 = fsub float %869, %477
  store float %870, ptr %862, align 4, !tbaa !123
  %871 = getelementptr inbounds float, ptr %868, i64 1
  %872 = load float, ptr %871, align 4, !tbaa !123
  %873 = fsub float %872, %478
  %874 = getelementptr inbounds float, ptr %862, i64 1
  store float %873, ptr %874, align 4, !tbaa !123
  %875 = getelementptr inbounds float, ptr %868, i64 2
  %876 = load float, ptr %875, align 4, !tbaa !123
  %877 = fsub float %876, %479
  %878 = getelementptr inbounds float, ptr %862, i64 2
  store float %877, ptr %878, align 4, !tbaa !123
  br label %879

879:                                              ; preds = %860, %857, %856
  %880 = add nuw nsw i64 %463, 1
  %881 = load i32, ptr %373, align 8, !tbaa !194
  %882 = sext i32 %881 to i64
  %883 = icmp slt i64 %880, %882
  br i1 %883, label %462, label %884, !llvm.loop !340

884:                                              ; preds = %879, %372
  %885 = load ptr, ptr @MEM_freeN, align 8, !tbaa !44
  call void %885(ptr noundef nonnull %219) #18
  %886 = load ptr, ptr %25, align 8, !tbaa !72
  %887 = getelementptr inbounds %struct.PaintSurfaceData, ptr %886, i64 0, i32 3
  %888 = load ptr, ptr %887, align 8, !tbaa !85
  %889 = getelementptr inbounds %struct.PaintBakeData, ptr %888, i64 0, i32 7
  %890 = load ptr, ptr %889, align 8, !tbaa !94
  %891 = icmp eq ptr %890, null
  br i1 %891, label %919, label %892

892:                                              ; preds = %884
  %893 = getelementptr inbounds %struct.VolumeGrid, ptr %890, i64 0, i32 2
  %894 = load ptr, ptr %893, align 8, !tbaa !95
  %895 = icmp eq ptr %894, null
  br i1 %895, label %898, label %896

896:                                              ; preds = %892
  %897 = load ptr, ptr @MEM_freeN, align 8, !tbaa !44
  call void %897(ptr noundef nonnull %894) #18
  br label %898

898:                                              ; preds = %896, %892
  %899 = getelementptr inbounds %struct.VolumeGrid, ptr %890, i64 0, i32 3
  %900 = load ptr, ptr %899, align 8, !tbaa !97
  %901 = icmp eq ptr %900, null
  br i1 %901, label %904, label %902

902:                                              ; preds = %898
  %903 = load ptr, ptr @MEM_freeN, align 8, !tbaa !44
  call void %903(ptr noundef nonnull %900) #18
  br label %904

904:                                              ; preds = %902, %898
  %905 = getelementptr inbounds %struct.VolumeGrid, ptr %890, i64 0, i32 4
  %906 = load ptr, ptr %905, align 8, !tbaa !98
  %907 = icmp eq ptr %906, null
  br i1 %907, label %910, label %908

908:                                              ; preds = %904
  %909 = load ptr, ptr @MEM_freeN, align 8, !tbaa !44
  call void %909(ptr noundef nonnull %906) #18
  br label %910

910:                                              ; preds = %908, %904
  %911 = getelementptr inbounds %struct.VolumeGrid, ptr %890, i64 0, i32 5
  %912 = load ptr, ptr %911, align 8, !tbaa !99
  %913 = icmp eq ptr %912, null
  br i1 %913, label %916, label %914

914:                                              ; preds = %910
  %915 = load ptr, ptr @MEM_freeN, align 8, !tbaa !44
  call void %915(ptr noundef nonnull %912) #18
  br label %916

916:                                              ; preds = %910, %914
  %917 = load ptr, ptr @MEM_freeN, align 8, !tbaa !44
  %918 = load ptr, ptr %889, align 8, !tbaa !94
  call void %917(ptr noundef %918) #18
  store ptr null, ptr %889, align 8, !tbaa !94
  br label %919

919:                                              ; preds = %916, %884
  %920 = load ptr, ptr @MEM_callocN, align 8, !tbaa !44
  %921 = call ptr %920(i64 noundef 28, ptr noundef nonnull @.str.46) #18
  %922 = load ptr, ptr @MEM_callocN, align 8, !tbaa !44
  %923 = call ptr %922(i64 noundef 72, ptr noundef nonnull @.str.47) #18
  store ptr %923, ptr %889, align 8, !tbaa !94
  %924 = icmp ne ptr %923, null
  %925 = icmp ne ptr %921, null
  %926 = select i1 %924, i1 %925, i1 false
  br i1 %926, label %927, label %1404

927:                                              ; preds = %919
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %5) #18
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %6) #18
  %928 = getelementptr inbounds %struct.PaintSurfaceData, ptr %886, i64 0, i32 4
  %929 = load i32, ptr %928, align 8, !tbaa !194
  %930 = icmp sgt i32 %929, 0
  br i1 %930, label %931, label %982

931:                                              ; preds = %927
  %932 = getelementptr inbounds %struct.PaintBakeData, ptr %888, i64 0, i32 3
  %933 = load ptr, ptr %932, align 8, !tbaa !92
  %934 = getelementptr inbounds %struct.PaintBakeData, ptr %888, i64 0, i32 1
  %935 = load ptr, ptr %934, align 8, !tbaa !90
  %936 = getelementptr inbounds %struct.Bounds3D, ptr %921, i64 0, i32 1
  %937 = getelementptr inbounds %struct.Bounds3D, ptr %921, i64 0, i32 1, i64 1
  %938 = getelementptr inbounds %struct.Bounds3D, ptr %921, i64 0, i32 1, i64 2
  %939 = getelementptr inbounds %struct.Bounds3D, ptr %921, i64 0, i32 2
  %940 = getelementptr inbounds %struct.Bounds3D, ptr %921, i64 0, i32 2, i64 1
  %941 = getelementptr inbounds %struct.Bounds3D, ptr %921, i64 0, i32 2, i64 2
  %942 = load i32, ptr %921, align 4, !tbaa !333
  %943 = zext nneg i32 %929 to i64
  br label %944

944:                                              ; preds = %931, %978
  %945 = phi i64 [ 0, %931 ], [ %980, %978 ]
  %946 = phi i32 [ %942, %931 ], [ %979, %978 ]
  %947 = getelementptr inbounds i32, ptr %935, i64 %945
  %948 = load i32, ptr %947, align 4, !tbaa !205
  %949 = sext i32 %948 to i64
  %950 = getelementptr inbounds %struct.Vec3f, ptr %933, i64 %949
  %951 = icmp eq i32 %946, 0
  br i1 %951, label %952, label %961

952:                                              ; preds = %944
  %953 = load float, ptr %950, align 4, !tbaa !123
  store float %953, ptr %936, align 4, !tbaa !123
  %954 = getelementptr inbounds float, ptr %950, i64 1
  %955 = load float, ptr %954, align 4, !tbaa !123
  store float %955, ptr %937, align 4, !tbaa !123
  %956 = getelementptr inbounds float, ptr %950, i64 2
  %957 = load float, ptr %956, align 4, !tbaa !123
  store float %957, ptr %938, align 4, !tbaa !123
  %958 = load float, ptr %950, align 4, !tbaa !123
  store float %958, ptr %939, align 4, !tbaa !123
  %959 = load float, ptr %954, align 4, !tbaa !123
  store float %959, ptr %940, align 4, !tbaa !123
  %960 = load float, ptr %956, align 4, !tbaa !123
  store float %960, ptr %941, align 4, !tbaa !123
  store i32 1, ptr %921, align 4, !tbaa !333
  br label %978

961:                                              ; preds = %944, %975
  %962 = phi i64 [ %976, %975 ], [ 2, %944 ]
  %963 = getelementptr inbounds float, ptr %950, i64 %962
  %964 = load float, ptr %963, align 4, !tbaa !123
  %965 = getelementptr inbounds %struct.Bounds3D, ptr %921, i64 0, i32 1, i64 %962
  %966 = load float, ptr %965, align 4, !tbaa !123
  %967 = fcmp olt float %964, %966
  br i1 %967, label %968, label %969

968:                                              ; preds = %961
  store float %964, ptr %965, align 4, !tbaa !123
  br label %969

969:                                              ; preds = %968, %961
  %970 = load float, ptr %963, align 4, !tbaa !123
  %971 = getelementptr inbounds %struct.Bounds3D, ptr %921, i64 0, i32 2, i64 %962
  %972 = load float, ptr %971, align 4, !tbaa !123
  %973 = fcmp ogt float %970, %972
  br i1 %973, label %974, label %975

974:                                              ; preds = %969
  store float %970, ptr %971, align 4, !tbaa !123
  br label %975

975:                                              ; preds = %974, %969
  %976 = add nsw i64 %962, -1
  %977 = icmp eq i64 %962, 0
  br i1 %977, label %978, label %961, !llvm.loop !334

978:                                              ; preds = %975, %952
  %979 = phi i32 [ 1, %952 ], [ %946, %975 ]
  %980 = add nuw nsw i64 %945, 1
  %981 = icmp eq i64 %980, %943
  br i1 %981, label %982, label %944, !llvm.loop !341

982:                                              ; preds = %978, %927
  %983 = getelementptr inbounds %struct.PaintSurfaceData, ptr %886, i64 0, i32 4
  %984 = getelementptr inbounds %struct.VolumeGrid, ptr %923, i64 0, i32 1
  %985 = getelementptr inbounds %struct.Bounds3D, ptr %921, i64 0, i32 1
  %986 = load i32, ptr %984, align 4, !tbaa !333
  %987 = icmp eq i32 %986, 0
  br i1 %987, label %988, label %1003

988:                                              ; preds = %982
  %989 = getelementptr inbounds %struct.VolumeGrid, ptr %923, i64 0, i32 1, i32 1
  %990 = load float, ptr %985, align 4, !tbaa !123
  store float %990, ptr %989, align 4, !tbaa !123
  %991 = getelementptr inbounds %struct.Bounds3D, ptr %921, i64 0, i32 1, i64 1
  %992 = load float, ptr %991, align 4, !tbaa !123
  %993 = getelementptr inbounds %struct.VolumeGrid, ptr %923, i64 0, i32 1, i32 1, i64 1
  store float %992, ptr %993, align 4, !tbaa !123
  %994 = getelementptr inbounds %struct.Bounds3D, ptr %921, i64 0, i32 1, i64 2
  %995 = load float, ptr %994, align 4, !tbaa !123
  %996 = getelementptr inbounds %struct.VolumeGrid, ptr %923, i64 0, i32 1, i32 1, i64 2
  store float %995, ptr %996, align 4, !tbaa !123
  %997 = getelementptr inbounds %struct.VolumeGrid, ptr %923, i64 0, i32 1, i32 2
  %998 = load float, ptr %985, align 4, !tbaa !123
  store float %998, ptr %997, align 4, !tbaa !123
  %999 = load float, ptr %991, align 4, !tbaa !123
  %1000 = getelementptr inbounds %struct.VolumeGrid, ptr %923, i64 0, i32 1, i32 2, i64 1
  store float %999, ptr %1000, align 4, !tbaa !123
  %1001 = load float, ptr %994, align 4, !tbaa !123
  %1002 = getelementptr inbounds %struct.VolumeGrid, ptr %923, i64 0, i32 1, i32 2, i64 2
  store float %1001, ptr %1002, align 4, !tbaa !123
  store i32 1, ptr %984, align 4, !tbaa !333
  br label %1020

1003:                                             ; preds = %982, %1017
  %1004 = phi i64 [ %1018, %1017 ], [ 2, %982 ]
  %1005 = getelementptr inbounds float, ptr %985, i64 %1004
  %1006 = load float, ptr %1005, align 4, !tbaa !123
  %1007 = getelementptr inbounds %struct.VolumeGrid, ptr %923, i64 0, i32 1, i32 1, i64 %1004
  %1008 = load float, ptr %1007, align 4, !tbaa !123
  %1009 = fcmp olt float %1006, %1008
  br i1 %1009, label %1010, label %1011

1010:                                             ; preds = %1003
  store float %1006, ptr %1007, align 4, !tbaa !123
  br label %1011

1011:                                             ; preds = %1010, %1003
  %1012 = load float, ptr %1005, align 4, !tbaa !123
  %1013 = getelementptr inbounds %struct.VolumeGrid, ptr %923, i64 0, i32 1, i32 2, i64 %1004
  %1014 = load float, ptr %1013, align 4, !tbaa !123
  %1015 = fcmp ogt float %1012, %1014
  br i1 %1015, label %1016, label %1017

1016:                                             ; preds = %1011
  store float %1012, ptr %1013, align 4, !tbaa !123
  br label %1017

1017:                                             ; preds = %1016, %1011
  %1018 = add nsw i64 %1004, -1
  %1019 = icmp eq i64 %1004, 0
  br i1 %1019, label %1020, label %1003, !llvm.loop !334

1020:                                             ; preds = %1017, %988
  %1021 = getelementptr inbounds %struct.Bounds3D, ptr %921, i64 0, i32 2
  %1022 = load i32, ptr %984, align 4, !tbaa !333
  %1023 = icmp eq i32 %1022, 0
  br i1 %1023, label %1024, label %1039

1024:                                             ; preds = %1020
  %1025 = getelementptr inbounds %struct.VolumeGrid, ptr %923, i64 0, i32 1, i32 1
  %1026 = load float, ptr %1021, align 4, !tbaa !123
  store float %1026, ptr %1025, align 4, !tbaa !123
  %1027 = getelementptr inbounds %struct.Bounds3D, ptr %921, i64 0, i32 2, i64 1
  %1028 = load float, ptr %1027, align 4, !tbaa !123
  %1029 = getelementptr inbounds %struct.VolumeGrid, ptr %923, i64 0, i32 1, i32 1, i64 1
  store float %1028, ptr %1029, align 4, !tbaa !123
  %1030 = getelementptr inbounds %struct.Bounds3D, ptr %921, i64 0, i32 2, i64 2
  %1031 = load float, ptr %1030, align 4, !tbaa !123
  %1032 = getelementptr inbounds %struct.VolumeGrid, ptr %923, i64 0, i32 1, i32 1, i64 2
  store float %1031, ptr %1032, align 4, !tbaa !123
  %1033 = getelementptr inbounds %struct.VolumeGrid, ptr %923, i64 0, i32 1, i32 2
  %1034 = load float, ptr %1021, align 4, !tbaa !123
  store float %1034, ptr %1033, align 4, !tbaa !123
  %1035 = load float, ptr %1027, align 4, !tbaa !123
  %1036 = getelementptr inbounds %struct.VolumeGrid, ptr %923, i64 0, i32 1, i32 2, i64 1
  store float %1035, ptr %1036, align 4, !tbaa !123
  %1037 = load float, ptr %1030, align 4, !tbaa !123
  %1038 = getelementptr inbounds %struct.VolumeGrid, ptr %923, i64 0, i32 1, i32 2, i64 2
  store float %1037, ptr %1038, align 4, !tbaa !123
  store i32 1, ptr %984, align 4, !tbaa !333
  br label %1056

1039:                                             ; preds = %1020, %1053
  %1040 = phi i64 [ %1054, %1053 ], [ 2, %1020 ]
  %1041 = getelementptr inbounds float, ptr %1021, i64 %1040
  %1042 = load float, ptr %1041, align 4, !tbaa !123
  %1043 = getelementptr inbounds %struct.VolumeGrid, ptr %923, i64 0, i32 1, i32 1, i64 %1040
  %1044 = load float, ptr %1043, align 4, !tbaa !123
  %1045 = fcmp olt float %1042, %1044
  br i1 %1045, label %1046, label %1047

1046:                                             ; preds = %1039
  store float %1042, ptr %1043, align 4, !tbaa !123
  br label %1047

1047:                                             ; preds = %1046, %1039
  %1048 = load float, ptr %1041, align 4, !tbaa !123
  %1049 = getelementptr inbounds %struct.VolumeGrid, ptr %923, i64 0, i32 1, i32 2, i64 %1040
  %1050 = load float, ptr %1049, align 4, !tbaa !123
  %1051 = fcmp ogt float %1048, %1050
  br i1 %1051, label %1052, label %1053

1052:                                             ; preds = %1047
  store float %1048, ptr %1049, align 4, !tbaa !123
  br label %1053

1053:                                             ; preds = %1052, %1047
  %1054 = add nsw i64 %1040, -1
  %1055 = icmp eq i64 %1040, 0
  br i1 %1055, label %1056, label %1039, !llvm.loop !334

1056:                                             ; preds = %1053, %1024
  %1057 = getelementptr inbounds %struct.VolumeGrid, ptr %923, i64 0, i32 1, i32 2
  %1058 = getelementptr inbounds %struct.VolumeGrid, ptr %923, i64 0, i32 1, i32 1
  %1059 = load float, ptr %1057, align 4, !tbaa !123
  %1060 = load float, ptr %1058, align 4, !tbaa !123
  %1061 = fsub float %1059, %1060
  store float %1061, ptr %5, align 4, !tbaa !123
  %1062 = getelementptr inbounds %struct.VolumeGrid, ptr %923, i64 0, i32 1, i32 2, i64 1
  %1063 = load float, ptr %1062, align 4, !tbaa !123
  %1064 = getelementptr inbounds %struct.VolumeGrid, ptr %923, i64 0, i32 1, i32 1, i64 1
  %1065 = load float, ptr %1064, align 4, !tbaa !123
  %1066 = fsub float %1063, %1065
  %1067 = getelementptr inbounds float, ptr %5, i64 1
  store float %1066, ptr %1067, align 4, !tbaa !123
  %1068 = getelementptr inbounds %struct.VolumeGrid, ptr %923, i64 0, i32 1, i32 2, i64 2
  %1069 = load float, ptr %1068, align 4, !tbaa !123
  %1070 = getelementptr inbounds %struct.VolumeGrid, ptr %923, i64 0, i32 1, i32 1, i64 2
  %1071 = load float, ptr %1070, align 4, !tbaa !123
  %1072 = fsub float %1069, %1071
  %1073 = getelementptr inbounds float, ptr %5, i64 2
  store float %1072, ptr %1073, align 4, !tbaa !123
  store float %1061, ptr %6, align 4, !tbaa !123
  %1074 = getelementptr inbounds float, ptr %6, i64 1
  store float %1066, ptr %1074, align 4, !tbaa !123
  %1075 = getelementptr inbounds float, ptr %6, i64 2
  store float %1072, ptr %1075, align 4, !tbaa !123
  %1076 = fcmp ogt float %1061, %1066
  %1077 = select i1 %1076, float %1061, float %1066
  %1078 = fcmp ogt float %1077, %1072
  %1079 = select i1 %1078, float %1077, float %1072
  %1080 = fdiv float %1079, 1.000000e+03
  br label %1081

1081:                                             ; preds = %1056, %1089
  %1082 = phi i64 [ 0, %1056 ], [ %1091, %1089 ]
  %1083 = phi i32 [ 3, %1056 ], [ %1090, %1089 ]
  %1084 = getelementptr inbounds [3 x float], ptr %6, i64 0, i64 %1082
  %1085 = load float, ptr %1084, align 4, !tbaa !123
  %1086 = fcmp olt float %1085, %1080
  br i1 %1086, label %1087, label %1089

1087:                                             ; preds = %1081
  store float 1.000000e+00, ptr %1084, align 4, !tbaa !123
  %1088 = add nsw i32 %1083, -1
  br label %1089

1089:                                             ; preds = %1087, %1081
  %1090 = phi i32 [ %1088, %1087 ], [ %1083, %1081 ]
  %1091 = add nuw nsw i64 %1082, 1
  %1092 = icmp eq i64 %1091, 3
  br i1 %1092, label %1093, label %1081, !llvm.loop !342

1093:                                             ; preds = %1089
  %1094 = icmp eq i32 %1090, 0
  br i1 %1094, label %1104, label %1095

1095:                                             ; preds = %1093
  %1096 = load float, ptr %6, align 4, !tbaa !123
  %1097 = load float, ptr %1074, align 4, !tbaa !123
  %1098 = load float, ptr %1075, align 4, !tbaa !123
  %1099 = fcmp ogt float %1096, %1097
  %1100 = select i1 %1099, float %1096, float %1097
  %1101 = fcmp ogt float %1100, %1098
  %1102 = select i1 %1101, float %1100, float %1098
  %1103 = fcmp olt float %1102, 0x3F1A36E2E0000000
  br i1 %1103, label %1104, label %1108

1104:                                             ; preds = %1095, %1093
  %1105 = load ptr, ptr @MEM_freeN, align 8, !tbaa !44
  call void %1105(ptr noundef nonnull %921) #18
  %1106 = load ptr, ptr @MEM_freeN, align 8, !tbaa !44
  %1107 = load ptr, ptr %889, align 8, !tbaa !94
  call void %1106(ptr noundef %1107) #18
  store ptr null, ptr %889, align 8, !tbaa !94
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %6) #18
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %5) #18
  br label %1407

1108:                                             ; preds = %1095
  %1109 = fmul float %1096, %1097
  %1110 = fmul float %1109, %1098
  %1111 = fpext float %1110 to double
  %1112 = sitofp i32 %929 to double
  %1113 = fdiv double %1112, 1.000000e+04
  %1114 = fdiv double %1111, %1113
  %1115 = sitofp i32 %1090 to double
  %1116 = fdiv double 1.000000e+00, %1115
  %1117 = call double @pow(double noundef %1114, double noundef %1116) #18
  %1118 = fptrunc double %1117 to float
  br label %1119

1119:                                             ; preds = %1108, %1136
  %1120 = phi i64 [ 0, %1108 ], [ %1137, %1136 ]
  %1121 = getelementptr inbounds [3 x float], ptr %6, i64 0, i64 %1120
  %1122 = load float, ptr %1121, align 4, !tbaa !123
  %1123 = fdiv float %1122, %1118
  %1124 = call float @llvm.floor.f32(float %1123)
  %1125 = fptosi float %1124 to i32
  %1126 = getelementptr inbounds [3 x i32], ptr %923, i64 0, i64 %1120
  store i32 %1125, ptr %1126, align 4, !tbaa !205
  %1127 = getelementptr inbounds [3 x float], ptr %5, i64 0, i64 %1120
  %1128 = load float, ptr %1127, align 4, !tbaa !123
  %1129 = fcmp oge float %1128, %1080
  %1130 = select i1 %1129, i32 3, i32 1
  %1131 = icmp sgt i32 %1130, %1125
  br i1 %1131, label %1134, label %1132

1132:                                             ; preds = %1119
  %1133 = icmp sgt i32 %1125, 100
  br i1 %1133, label %1134, label %1136

1134:                                             ; preds = %1132, %1119
  %1135 = phi i32 [ %1130, %1119 ], [ 100, %1132 ]
  store i32 %1135, ptr %1126, align 4, !tbaa !205
  br label %1136

1136:                                             ; preds = %1134, %1132
  %1137 = add nuw nsw i64 %1120, 1
  %1138 = icmp eq i64 %1137, 3
  br i1 %1138, label %1139, label %1119, !llvm.loop !343

1139:                                             ; preds = %1136
  %1140 = load i32, ptr %923, align 8, !tbaa !205
  %1141 = getelementptr inbounds [3 x i32], ptr %923, i64 0, i64 1
  %1142 = load i32, ptr %1141, align 4, !tbaa !205
  %1143 = mul nsw i32 %1142, %1140
  %1144 = getelementptr inbounds [3 x i32], ptr %923, i64 0, i64 2
  %1145 = load i32, ptr %1144, align 8, !tbaa !205
  %1146 = mul nsw i32 %1143, %1145
  %1147 = load ptr, ptr @MEM_callocN, align 8, !tbaa !44
  %1148 = sext i32 %1146 to i64
  %1149 = mul nsw i64 %1148, 28
  %1150 = call ptr %1147(i64 noundef %1149, ptr noundef nonnull @.str.48) #18
  %1151 = getelementptr inbounds %struct.VolumeGrid, ptr %923, i64 0, i32 2
  store ptr %1150, ptr %1151, align 8, !tbaa !95
  %1152 = load ptr, ptr @MEM_callocN, align 8, !tbaa !44
  %1153 = shl nsw i64 %1148, 2
  %1154 = call ptr %1152(i64 noundef %1153, ptr noundef nonnull @.str.49) #18
  %1155 = getelementptr inbounds %struct.VolumeGrid, ptr %923, i64 0, i32 3
  store ptr %1154, ptr %1155, align 8, !tbaa !97
  %1156 = load ptr, ptr @MEM_callocN, align 8, !tbaa !44
  %1157 = call ptr %1156(i64 noundef %1153, ptr noundef nonnull @.str.50) #18
  %1158 = getelementptr inbounds %struct.VolumeGrid, ptr %923, i64 0, i32 4
  store ptr %1157, ptr %1158, align 8, !tbaa !98
  %1159 = load ptr, ptr @MEM_callocN, align 8, !tbaa !44
  %1160 = call ptr %1159(i64 noundef %1153, ptr noundef nonnull @.str.51) #18
  %1161 = load ptr, ptr @MEM_callocN, align 8, !tbaa !44
  %1162 = load i32, ptr %983, align 8, !tbaa !194
  %1163 = sext i32 %1162 to i64
  %1164 = shl nsw i64 %1163, 2
  %1165 = call ptr %1161(i64 noundef %1164, ptr noundef nonnull @.str.52) #18
  %1166 = getelementptr inbounds %struct.VolumeGrid, ptr %923, i64 0, i32 5
  store ptr %1165, ptr %1166, align 8, !tbaa !99
  %1167 = load ptr, ptr @MEM_callocN, align 8, !tbaa !44
  %1168 = load i32, ptr %983, align 8, !tbaa !194
  %1169 = sext i32 %1168 to i64
  %1170 = shl nsw i64 %1169, 2
  %1171 = call ptr %1167(i64 noundef %1170, ptr noundef nonnull @.str.53) #18
  %1172 = load ptr, ptr %1151, align 8, !tbaa !95
  %1173 = icmp eq ptr %1172, null
  br i1 %1173, label %1187, label %1174

1174:                                             ; preds = %1139
  %1175 = load ptr, ptr %1155, align 8, !tbaa !97
  %1176 = icmp eq ptr %1175, null
  br i1 %1176, label %1187, label %1177

1177:                                             ; preds = %1174
  %1178 = load ptr, ptr %1158, align 8, !tbaa !98
  %1179 = icmp eq ptr %1178, null
  br i1 %1179, label %1187, label %1180

1180:                                             ; preds = %1177
  %1181 = load ptr, ptr %1166, align 8, !tbaa !99
  %1182 = icmp ne ptr %1181, null
  %1183 = icmp ne ptr %1160, null
  %1184 = select i1 %1182, i1 %1183, i1 false
  %1185 = icmp ne ptr %1171, null
  %1186 = select i1 %1184, i1 %1185, i1 false
  br i1 %1186, label %1188, label %1187

1187:                                             ; preds = %1180, %1177, %1174, %1139
  br label %1188

1188:                                             ; preds = %1187, %1180
  %1189 = phi i1 [ true, %1180 ], [ false, %1187 ]
  br i1 %1189, label %1190, label %1356

1190:                                             ; preds = %1188
  %1191 = load i32, ptr %983, align 8, !tbaa !194
  %1192 = icmp sgt i32 %1191, 0
  br i1 %1192, label %1193, label %1201

1193:                                             ; preds = %1190
  %1194 = getelementptr inbounds %struct.PaintBakeData, ptr %888, i64 0, i32 3
  %1195 = load ptr, ptr %1194, align 8, !tbaa !92
  %1196 = getelementptr inbounds %struct.PaintBakeData, ptr %888, i64 0, i32 1
  %1197 = load ptr, ptr %1196, align 8, !tbaa !90
  %1198 = getelementptr inbounds [3 x i32], ptr %7, i64 0, i64 1
  %1199 = getelementptr inbounds [3 x i32], ptr %7, i64 0, i64 2
  %1200 = load ptr, ptr %1158, align 8, !tbaa !98
  br label %1209

1201:                                             ; preds = %1242, %1190
  %1202 = icmp sgt i32 %1146, 1
  br i1 %1202, label %1203, label %1261

1203:                                             ; preds = %1201
  %1204 = load ptr, ptr %1155, align 8, !tbaa !97
  %1205 = load ptr, ptr %1158, align 8, !tbaa !98
  %1206 = zext nneg i32 %1146 to i64
  %1207 = load i32, ptr %1204, align 4
  %1208 = getelementptr i32, ptr %1205, i64 -1
  br label %1267

1209:                                             ; preds = %1193, %1242
  %1210 = phi i64 [ 0, %1193 ], [ %1257, %1242 ]
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %7) #18
  %1211 = getelementptr inbounds i32, ptr %1197, i64 %1210
  %1212 = load i32, ptr %1211, align 4, !tbaa !205
  %1213 = sext i32 %1212 to i64
  %1214 = getelementptr inbounds %struct.Vec3f, ptr %1195, i64 %1213
  br label %1215

1215:                                             ; preds = %1209, %1239
  %1216 = phi i64 [ 0, %1209 ], [ %1240, %1239 ]
  %1217 = getelementptr inbounds [3 x float], ptr %1214, i64 0, i64 %1216
  %1218 = load float, ptr %1217, align 4, !tbaa !123
  %1219 = getelementptr inbounds %struct.VolumeGrid, ptr %923, i64 0, i32 1, i32 1, i64 %1216
  %1220 = load float, ptr %1219, align 4, !tbaa !123
  %1221 = fsub float %1218, %1220
  %1222 = getelementptr inbounds [3 x float], ptr %5, i64 0, i64 %1216
  %1223 = load float, ptr %1222, align 4, !tbaa !123
  %1224 = fdiv float %1221, %1223
  %1225 = getelementptr inbounds [3 x i32], ptr %923, i64 0, i64 %1216
  %1226 = load i32, ptr %1225, align 4, !tbaa !205
  %1227 = sitofp i32 %1226 to float
  %1228 = fmul float %1224, %1227
  %1229 = call float @llvm.floor.f32(float %1228)
  %1230 = fptosi float %1229 to i32
  %1231 = getelementptr inbounds [3 x i32], ptr %7, i64 0, i64 %1216
  store i32 %1230, ptr %1231, align 4, !tbaa !205
  %1232 = icmp slt i32 %1230, 0
  br i1 %1232, label %1237, label %1233

1233:                                             ; preds = %1215
  %1234 = icmp sgt i32 %1226, %1230
  br i1 %1234, label %1239, label %1235

1235:                                             ; preds = %1233
  %1236 = add nsw i32 %1226, -1
  br label %1237

1237:                                             ; preds = %1215, %1235
  %1238 = phi i32 [ %1236, %1235 ], [ 0, %1215 ]
  store i32 %1238, ptr %1231, align 4, !tbaa !205
  br label %1239

1239:                                             ; preds = %1237, %1233
  %1240 = add nuw nsw i64 %1216, 1
  %1241 = icmp eq i64 %1240, 3
  br i1 %1241, label %1242, label %1215, !llvm.loop !344

1242:                                             ; preds = %1239
  %1243 = load i32, ptr %7, align 4, !tbaa !205
  %1244 = load i32, ptr %1198, align 4, !tbaa !205
  %1245 = load i32, ptr %923, align 8, !tbaa !205
  %1246 = load i32, ptr %1199, align 4, !tbaa !205
  %1247 = load i32, ptr %1141, align 4, !tbaa !205
  %1248 = mul i32 %1247, %1246
  %1249 = add i32 %1248, %1244
  %1250 = mul i32 %1249, %1245
  %1251 = add i32 %1250, %1243
  %1252 = getelementptr inbounds i32, ptr %1171, i64 %1210
  store i32 %1251, ptr %1252, align 4, !tbaa !205
  %1253 = sext i32 %1251 to i64
  %1254 = getelementptr inbounds i32, ptr %1200, i64 %1253
  %1255 = load i32, ptr %1254, align 4, !tbaa !205
  %1256 = add nsw i32 %1255, 1
  store i32 %1256, ptr %1254, align 4, !tbaa !205
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %7) #18
  %1257 = add nuw nsw i64 %1210, 1
  %1258 = load i32, ptr %983, align 8, !tbaa !194
  %1259 = sext i32 %1258 to i64
  %1260 = icmp slt i64 %1257, %1259
  br i1 %1260, label %1209, label %1201, !llvm.loop !345

1261:                                             ; preds = %1267, %1201
  %1262 = load i32, ptr %983, align 8, !tbaa !194
  %1263 = icmp sgt i32 %1262, 0
  br i1 %1263, label %1264, label %1276

1264:                                             ; preds = %1261
  %1265 = load ptr, ptr %1155, align 8, !tbaa !97
  %1266 = load ptr, ptr %1166, align 8, !tbaa !99
  br label %1279

1267:                                             ; preds = %1203, %1267
  %1268 = phi i32 [ %1207, %1203 ], [ %1272, %1267 ]
  %1269 = phi i64 [ 1, %1203 ], [ %1274, %1267 ]
  %1270 = getelementptr i32, ptr %1208, i64 %1269
  %1271 = load i32, ptr %1270, align 4, !tbaa !205
  %1272 = add nsw i32 %1271, %1268
  %1273 = getelementptr inbounds i32, ptr %1204, i64 %1269
  store i32 %1272, ptr %1273, align 4, !tbaa !205
  %1274 = add nuw nsw i64 %1269, 1
  %1275 = icmp eq i64 %1274, %1206
  br i1 %1275, label %1261, label %1267, !llvm.loop !346

1276:                                             ; preds = %1279, %1261
  %1277 = load i32, ptr %923, align 8, !tbaa !205
  %1278 = icmp sgt i32 %1277, 0
  br i1 %1278, label %1301, label %1356

1279:                                             ; preds = %1264, %1279
  %1280 = phi i64 [ 0, %1264 ], [ %1297, %1279 ]
  %1281 = getelementptr inbounds i32, ptr %1171, i64 %1280
  %1282 = load i32, ptr %1281, align 4, !tbaa !205
  %1283 = sext i32 %1282 to i64
  %1284 = getelementptr inbounds i32, ptr %1265, i64 %1283
  %1285 = load i32, ptr %1284, align 4, !tbaa !205
  %1286 = getelementptr inbounds i32, ptr %1160, i64 %1283
  %1287 = load i32, ptr %1286, align 4, !tbaa !205
  %1288 = add nsw i32 %1287, %1285
  %1289 = sext i32 %1288 to i64
  %1290 = getelementptr inbounds i32, ptr %1266, i64 %1289
  %1291 = trunc i64 %1280 to i32
  store i32 %1291, ptr %1290, align 4, !tbaa !205
  %1292 = load i32, ptr %1281, align 4, !tbaa !205
  %1293 = sext i32 %1292 to i64
  %1294 = getelementptr inbounds i32, ptr %1160, i64 %1293
  %1295 = load i32, ptr %1294, align 4, !tbaa !205
  %1296 = add nsw i32 %1295, 1
  store i32 %1296, ptr %1294, align 4, !tbaa !205
  %1297 = add nuw nsw i64 %1280, 1
  %1298 = load i32, ptr %983, align 8, !tbaa !194
  %1299 = sext i32 %1298 to i64
  %1300 = icmp slt i64 %1297, %1299
  br i1 %1300, label %1279, label %1276, !llvm.loop !347

1301:                                             ; preds = %1276, %1352
  %1302 = phi i32 [ %1353, %1352 ], [ 0, %1276 ]
  %1303 = load i32, ptr %1141, align 4, !tbaa !205
  %1304 = icmp sgt i32 %1303, 0
  br i1 %1304, label %1305, label %1352

1305:                                             ; preds = %1301, %1348
  %1306 = phi i32 [ %1349, %1348 ], [ 0, %1301 ]
  %1307 = load i32, ptr %1144, align 8, !tbaa !205
  %1308 = icmp sgt i32 %1307, 0
  br i1 %1308, label %1309, label %1348

1309:                                             ; preds = %1305, %1342
  %1310 = phi i32 [ %1345, %1342 ], [ 0, %1305 ]
  %1311 = load i32, ptr %923, align 8, !tbaa !205
  %1312 = load i32, ptr %1141, align 4, !tbaa !205
  %1313 = mul i32 %1312, %1310
  %1314 = add i32 %1313, %1306
  %1315 = mul i32 %1314, %1311
  %1316 = add i32 %1315, %1302
  %1317 = sext i32 %1316 to i64
  br label %1318

1318:                                             ; preds = %1309, %1318
  %1319 = phi i64 [ 0, %1309 ], [ %1340, %1318 ]
  %1320 = icmp eq i64 %1319, 0
  %1321 = icmp eq i64 %1319, 1
  %1322 = select i1 %1321, i32 %1306, i32 %1310
  %1323 = select i1 %1320, i32 %1302, i32 %1322
  %1324 = getelementptr inbounds %struct.VolumeGrid, ptr %923, i64 0, i32 1, i32 1, i64 %1319
  %1325 = load float, ptr %1324, align 4, !tbaa !123
  %1326 = getelementptr inbounds [3 x float], ptr %5, i64 0, i64 %1319
  %1327 = load float, ptr %1326, align 4, !tbaa !123
  %1328 = getelementptr inbounds [3 x i32], ptr %923, i64 0, i64 %1319
  %1329 = load i32, ptr %1328, align 4, !tbaa !205
  %1330 = sitofp i32 %1329 to float
  %1331 = fdiv float %1327, %1330
  %1332 = sitofp i32 %1323 to float
  %1333 = call float @llvm.fmuladd.f32(float %1331, float %1332, float %1325)
  %1334 = getelementptr inbounds %struct.Bounds3D, ptr %1172, i64 %1317, i32 1, i64 %1319
  store float %1333, ptr %1334, align 4, !tbaa !123
  %1335 = load float, ptr %1324, align 4, !tbaa !123
  %1336 = add nuw nsw i32 %1323, 1
  %1337 = sitofp i32 %1336 to float
  %1338 = call float @llvm.fmuladd.f32(float %1331, float %1337, float %1335)
  %1339 = getelementptr inbounds %struct.Bounds3D, ptr %1172, i64 %1317, i32 2, i64 %1319
  store float %1338, ptr %1339, align 4, !tbaa !123
  %1340 = add nuw nsw i64 %1319, 1
  %1341 = icmp eq i64 %1340, 3
  br i1 %1341, label %1342, label %1318, !llvm.loop !348

1342:                                             ; preds = %1318
  %1343 = sext i32 %1316 to i64
  %1344 = getelementptr inbounds %struct.Bounds3D, ptr %1172, i64 %1343
  store i32 1, ptr %1344, align 4, !tbaa !333
  %1345 = add nuw nsw i32 %1310, 1
  %1346 = load i32, ptr %1144, align 8, !tbaa !205
  %1347 = icmp slt i32 %1345, %1346
  br i1 %1347, label %1309, label %1348, !llvm.loop !349

1348:                                             ; preds = %1342, %1305
  %1349 = add nuw nsw i32 %1306, 1
  %1350 = load i32, ptr %1141, align 4, !tbaa !205
  %1351 = icmp slt i32 %1349, %1350
  br i1 %1351, label %1305, label %1352, !llvm.loop !350

1352:                                             ; preds = %1348, %1301
  %1353 = add nuw nsw i32 %1302, 1
  %1354 = load i32, ptr %923, align 8, !tbaa !205
  %1355 = icmp slt i32 %1353, %1354
  br i1 %1355, label %1301, label %1356, !llvm.loop !351

1356:                                             ; preds = %1352, %1276, %1188
  %1357 = icmp eq ptr %1160, null
  br i1 %1357, label %1360, label %1358

1358:                                             ; preds = %1356
  %1359 = load ptr, ptr @MEM_freeN, align 8, !tbaa !44
  call void %1359(ptr noundef nonnull %1160) #18
  br label %1360

1360:                                             ; preds = %1358, %1356
  %1361 = icmp eq ptr %1171, null
  br i1 %1361, label %1364, label %1362

1362:                                             ; preds = %1360
  %1363 = load ptr, ptr @MEM_freeN, align 8, !tbaa !44
  call void %1363(ptr noundef nonnull %1171) #18
  br label %1364

1364:                                             ; preds = %1362, %1360
  %1365 = load ptr, ptr @MEM_reallocN_id, align 8, !tbaa !44
  %1366 = load ptr, ptr %1158, align 8, !tbaa !98
  %1367 = call ptr %1365(ptr noundef %1366, i64 noundef %1153, ptr noundef nonnull @__func__.surfaceGenerateGrid) #18
  store ptr %1367, ptr %1158, align 8, !tbaa !98
  %1368 = icmp ne ptr %1367, null
  %1369 = select i1 %1189, i1 %1368, i1 false
  br i1 %1369, label %1403, label %1370

1370:                                             ; preds = %1364
  %1371 = load ptr, ptr %31, align 8, !tbaa !57
  %1372 = getelementptr inbounds %struct.DynamicPaintCanvasSettings, ptr %1371, i64 0, i32 6
  %1373 = call ptr @BLI_strncpy(ptr noundef nonnull %1372, ptr noundef nonnull @.str.17, i64 noundef 64) #18
  %1374 = load ptr, ptr %887, align 8, !tbaa !85
  %1375 = getelementptr inbounds %struct.PaintBakeData, ptr %1374, i64 0, i32 7
  %1376 = load ptr, ptr %1375, align 8, !tbaa !94
  %1377 = getelementptr inbounds %struct.VolumeGrid, ptr %1376, i64 0, i32 2
  %1378 = load ptr, ptr %1377, align 8, !tbaa !95
  %1379 = icmp eq ptr %1378, null
  br i1 %1379, label %1382, label %1380

1380:                                             ; preds = %1370
  %1381 = load ptr, ptr @MEM_freeN, align 8, !tbaa !44
  call void %1381(ptr noundef nonnull %1378) #18
  br label %1382

1382:                                             ; preds = %1380, %1370
  %1383 = getelementptr inbounds %struct.VolumeGrid, ptr %1376, i64 0, i32 3
  %1384 = load ptr, ptr %1383, align 8, !tbaa !97
  %1385 = icmp eq ptr %1384, null
  br i1 %1385, label %1388, label %1386

1386:                                             ; preds = %1382
  %1387 = load ptr, ptr @MEM_freeN, align 8, !tbaa !44
  call void %1387(ptr noundef nonnull %1384) #18
  br label %1388

1388:                                             ; preds = %1386, %1382
  %1389 = getelementptr inbounds %struct.VolumeGrid, ptr %1376, i64 0, i32 4
  %1390 = load ptr, ptr %1389, align 8, !tbaa !98
  %1391 = icmp eq ptr %1390, null
  br i1 %1391, label %1394, label %1392

1392:                                             ; preds = %1388
  %1393 = load ptr, ptr @MEM_freeN, align 8, !tbaa !44
  call void %1393(ptr noundef nonnull %1390) #18
  br label %1394

1394:                                             ; preds = %1392, %1388
  %1395 = getelementptr inbounds %struct.VolumeGrid, ptr %1376, i64 0, i32 5
  %1396 = load ptr, ptr %1395, align 8, !tbaa !99
  %1397 = icmp eq ptr %1396, null
  br i1 %1397, label %1400, label %1398

1398:                                             ; preds = %1394
  %1399 = load ptr, ptr @MEM_freeN, align 8, !tbaa !44
  call void %1399(ptr noundef nonnull %1396) #18
  br label %1400

1400:                                             ; preds = %1394, %1398
  %1401 = load ptr, ptr @MEM_freeN, align 8, !tbaa !44
  %1402 = load ptr, ptr %1375, align 8, !tbaa !94
  call void %1401(ptr noundef %1402) #18
  store ptr null, ptr %1375, align 8, !tbaa !94
  br label %1403

1403:                                             ; preds = %1400, %1364
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %6) #18
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %5) #18
  br label %1404

1404:                                             ; preds = %1403, %919
  br i1 %925, label %1405, label %1407

1405:                                             ; preds = %1404
  %1406 = load ptr, ptr @MEM_freeN, align 8, !tbaa !44
  call void %1406(ptr noundef nonnull %921) #18
  br label %1407

1407:                                             ; preds = %1405, %1404, %1104
  call fastcc void @dynamicPaint_prepareAdjacencyData(ptr noundef %0, i32 noundef 0)
  %1408 = getelementptr inbounds %struct.PaintBakeData, ptr %325, i64 0, i32 12
  %1409 = getelementptr inbounds %struct.Object, ptr %2, i64 0, i32 47
  call void @copy_m4_m4(ptr noundef nonnull %1408, ptr noundef nonnull %1409) #18
  %1410 = getelementptr inbounds %struct.PaintBakeData, ptr %325, i64 0, i32 11
  %1411 = load ptr, ptr %1410, align 8, !tbaa !100
  %1412 = mul nsw i64 %217, 20
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %1411, ptr align 4 %124, i64 %1412, i1 false)
  %1413 = getelementptr inbounds %struct.PaintBakeData, ptr %325, i64 0, i32 13
  store i32 0, ptr %1413, align 8, !tbaa !195
  br label %1414

1414:                                             ; preds = %213, %215, %226, %319, %1407
  %1415 = getelementptr inbounds %struct.DynamicPaintSurface, ptr %0, i64 0, i32 21
  %1416 = load i32, ptr %1415, align 8, !tbaa !125
  %1417 = icmp eq i32 %1416, 0
  br i1 %1417, label %1441, label %1418

1418:                                             ; preds = %1414
  %1419 = getelementptr inbounds %struct.DynamicPaintSurface, ptr %0, i64 0, i32 22
  %1420 = load i32, ptr %1419, align 4, !tbaa !145
  %1421 = icmp eq i32 %1420, %3
  br i1 %1421, label %1441, label %1422

1422:                                             ; preds = %1418
  %1423 = add nsw i32 %1416, 1
  %1424 = sitofp i32 %1423 to float
  %1425 = fdiv float 1.000000e+00, %1424
  %1426 = load i32, ptr %1415, align 8, !tbaa !125
  %1427 = icmp slt i32 %1426, 1
  br i1 %1427, label %1441, label %1432

1428:                                             ; preds = %1432
  %1429 = add nuw nsw i32 %1434, 1
  %1430 = load i32, ptr %1415, align 8, !tbaa !125
  %1431 = icmp slt i32 %1434, %1430
  br i1 %1431, label %1432, label %1441, !llvm.loop !352

1432:                                             ; preds = %1422, %1428
  %1433 = phi i32 [ %1430, %1428 ], [ %1426, %1422 ]
  %1434 = phi i32 [ %1429, %1428 ], [ 1, %1422 ]
  %1435 = sitofp i32 %1434 to float
  %1436 = add nsw i32 %1433, 1
  %1437 = sitofp i32 %1436 to float
  %1438 = fdiv float %1435, %1437
  %1439 = call fastcc i32 @dynamicPaint_doStep(ptr noundef %1, ptr noundef %2, ptr noundef %0, float noundef %1425, float noundef %1438)
  %1440 = icmp eq i32 %1439, 0
  br i1 %1440, label %1444, label %1428

1441:                                             ; preds = %1428, %1422, %1418, %1414
  %1442 = phi float [ 1.000000e+00, %1418 ], [ 1.000000e+00, %1414 ], [ %1425, %1422 ], [ %1425, %1428 ]
  %1443 = call fastcc i32 @dynamicPaint_doStep(ptr noundef %1, ptr noundef %2, ptr noundef %0, float noundef %1442, float noundef 0.000000e+00)
  br label %1444

1444:                                             ; preds = %1432, %1441
  %1445 = phi i32 [ %1443, %1441 ], [ 0, %1432 ]
  ret i32 %1445
}

; Function Attrs: nounwind uwtable
define internal fastcc void @dynamicPaint_applySurfaceDisplace(ptr nocapture noundef readonly %0, ptr noundef %1) unnamed_addr #4 {
  %3 = getelementptr inbounds %struct.DynamicPaintSurface, ptr %0, i64 0, i32 3
  %4 = load ptr, ptr %3, align 8, !tbaa !72
  %5 = icmp eq ptr %4, null
  br i1 %5, label %73, label %6

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.DynamicPaintSurface, ptr %0, i64 0, i32 10
  %8 = load i16, ptr %7, align 4, !tbaa !34
  %9 = icmp eq i16 %8, 1
  br i1 %9, label %10, label %73

10:                                               ; preds = %6
  %11 = getelementptr inbounds %struct.DynamicPaintSurface, ptr %0, i64 0, i32 11
  %12 = load i16, ptr %11, align 2, !tbaa !43
  %13 = icmp eq i16 %12, 1
  br i1 %13, label %14, label %73

14:                                               ; preds = %10
  %15 = getelementptr inbounds %struct.DerivedMesh, ptr %1, i64 0, i32 31
  %16 = load ptr, ptr %15, align 8, !tbaa !278
  %17 = tail call ptr %16(ptr noundef %1) #18
  %18 = getelementptr inbounds %struct.PaintSurfaceData, ptr %4, i64 0, i32 1
  %19 = load ptr, ptr %18, align 8, !tbaa !78
  %20 = getelementptr inbounds %struct.PaintSurfaceData, ptr %4, i64 0, i32 4
  %21 = load i32, ptr %20, align 8, !tbaa !194
  %22 = icmp sgt i32 %21, 0
  br i1 %22, label %23, label %73

23:                                               ; preds = %14
  %24 = getelementptr inbounds %struct.DynamicPaintSurface, ptr %0, i64 0, i32 32
  br label %25

25:                                               ; preds = %23, %54
  %26 = phi i64 [ 0, %23 ], [ %69, %54 ]
  %27 = getelementptr inbounds float, ptr %19, i64 %26
  %28 = load float, ptr %27, align 4, !tbaa !123
  %29 = load float, ptr %24, align 8, !tbaa !118
  %30 = fmul float %28, %29
  %31 = getelementptr inbounds %struct.MVert, ptr %17, i64 %26
  %32 = getelementptr inbounds %struct.MVert, ptr %17, i64 %26, i32 1
  %33 = load i16, ptr %32, align 2, !tbaa !279
  %34 = sitofp i16 %33 to float
  %35 = fmul float %34, 0x3F00002000000000
  %36 = getelementptr inbounds i16, ptr %32, i64 1
  %37 = load i16, ptr %36, align 2, !tbaa !279
  %38 = sitofp i16 %37 to float
  %39 = fmul float %38, 0x3F00002000000000
  %40 = getelementptr inbounds i16, ptr %32, i64 2
  %41 = load i16, ptr %40, align 2, !tbaa !279
  %42 = sitofp i16 %41 to float
  %43 = fmul float %42, 0x3F00002000000000
  %44 = fmul float %39, %39
  %45 = tail call float @llvm.fmuladd.f32(float %35, float %35, float %44)
  %46 = tail call float @llvm.fmuladd.f32(float %43, float %43, float %45)
  %47 = fcmp ogt float %46, 0x38AA95A5C0000000
  br i1 %47, label %48, label %54

48:                                               ; preds = %25
  %49 = tail call float @sqrtf(float noundef %46) #18
  %50 = fdiv float 1.000000e+00, %49
  %51 = fmul float %35, %50
  %52 = fmul float %39, %50
  %53 = fmul float %43, %50
  br label %54

54:                                               ; preds = %25, %48
  %55 = phi float [ %52, %48 ], [ 0.000000e+00, %25 ]
  %56 = phi float [ %51, %48 ], [ 0.000000e+00, %25 ]
  %57 = phi float [ %53, %48 ], [ 0.000000e+00, %25 ]
  %58 = load float, ptr %31, align 4, !tbaa !123
  %59 = fneg float %56
  %60 = tail call float @llvm.fmuladd.f32(float %59, float %30, float %58)
  store float %60, ptr %31, align 4, !tbaa !123
  %61 = getelementptr inbounds [3 x float], ptr %31, i64 0, i64 1
  %62 = load float, ptr %61, align 4, !tbaa !123
  %63 = fneg float %55
  %64 = tail call float @llvm.fmuladd.f32(float %63, float %30, float %62)
  store float %64, ptr %61, align 4, !tbaa !123
  %65 = getelementptr inbounds [3 x float], ptr %31, i64 0, i64 2
  %66 = load float, ptr %65, align 4, !tbaa !123
  %67 = fneg float %57
  %68 = tail call float @llvm.fmuladd.f32(float %67, float %30, float %66)
  store float %68, ptr %65, align 4, !tbaa !123
  %69 = add nuw nsw i64 %26, 1
  %70 = load i32, ptr %20, align 8, !tbaa !194
  %71 = sext i32 %70 to i64
  %72 = icmp slt i64 %69, %71
  br i1 %72, label %25, label %73, !llvm.loop !353

73:                                               ; preds = %54, %14, %10, %2, %6
  ret void
}

; Function Attrs: nounwind uwtable
define internal fastcc noundef i32 @dynamicPaint_doStep(ptr noundef %0, ptr noundef %1, ptr nocapture noundef readonly %2, float noundef %3, float noundef %4) unnamed_addr #4 {
  %6 = alloca [2 x i32], align 4
  %7 = alloca [2 x float], align 4
  %8 = alloca [3 x float], align 4
  %9 = alloca ptr, align 8
  %10 = alloca [3 x float], align 4
  %11 = alloca %struct.EffectedPoint, align 8
  %12 = alloca [2 x i32], align 4
  %13 = alloca [2 x float], align 4
  %14 = alloca [4 x [4 x float]], align 16
  %15 = alloca [3 x float], align 4
  %16 = alloca [3 x float], align 4
  %17 = alloca %struct.BVHTreeFromMesh, align 8
  %18 = alloca %struct.Bounds3D, align 4
  %19 = alloca [3 x float], align 4
  %20 = alloca [3 x float], align 4
  %21 = alloca [3 x float], align 4
  %22 = alloca [3 x float], align 4
  %23 = alloca %struct.BVHTreeRayHit, align 4
  %24 = alloca %struct.BVHTreeNearest, align 4
  %25 = alloca [4 x float], align 16
  %26 = alloca [3 x float], align 4
  %27 = alloca [3 x float], align 4
  %28 = alloca [4 x float], align 16
  %29 = alloca [3 x float], align 4
  %30 = alloca [3 x float], align 4
  %31 = alloca float, align 4
  %32 = alloca [4 x [4 x float]], align 16
  %33 = alloca [3 x float], align 4
  %34 = alloca [3 x float], align 4
  %35 = alloca [4 x float], align 16
  %36 = alloca [3 x float], align 4
  %37 = alloca float, align 4
  %38 = alloca [3 x float], align 4
  %39 = alloca %struct.Bounds3D, align 4
  %40 = alloca %struct.KDTreeNearest, align 4
  %41 = alloca ptr, align 8
  %42 = alloca [4 x float], align 16
  %43 = alloca [4 x float], align 16
  %44 = alloca [4 x float], align 16
  %45 = getelementptr inbounds %struct.DynamicPaintSurface, ptr %2, i64 0, i32 3
  %46 = load ptr, ptr %45, align 8, !tbaa !72
  %47 = getelementptr inbounds %struct.PaintSurfaceData, ptr %46, i64 0, i32 3
  %48 = load ptr, ptr %47, align 8, !tbaa !85
  %49 = getelementptr inbounds %struct.DynamicPaintSurface, ptr %2, i64 0, i32 2
  %50 = load ptr, ptr %49, align 8, !tbaa !57
  %51 = getelementptr inbounds %struct.PaintSurfaceData, ptr %46, i64 0, i32 4
  %52 = load i32, ptr %51, align 8, !tbaa !194
  %53 = icmp slt i32 %52, 1
  br i1 %53, label %3390, label %54

54:                                               ; preds = %5
  %55 = load i32, ptr %51, align 8, !tbaa !194
  %56 = icmp sgt i32 %55, 0
  br i1 %56, label %57, label %291

57:                                               ; preds = %54
  %58 = getelementptr inbounds %struct.DynamicPaintSurface, ptr %2, i64 0, i32 11
  %59 = getelementptr inbounds %struct.DynamicPaintSurface, ptr %2, i64 0, i32 18
  %60 = getelementptr inbounds %struct.PaintSurfaceData, ptr %46, i64 0, i32 1
  %61 = getelementptr inbounds %struct.DynamicPaintSurface, ptr %2, i64 0, i32 29
  %62 = getelementptr inbounds %struct.PaintSurfaceData, ptr %46, i64 0, i32 1
  %63 = getelementptr inbounds %struct.DynamicPaintSurface, ptr %2, i64 0, i32 18
  %64 = getelementptr inbounds %struct.DynamicPaintSurface, ptr %2, i64 0, i32 28
  %65 = getelementptr inbounds %struct.DynamicPaintSurface, ptr %2, i64 0, i32 30
  %66 = getelementptr inbounds float, ptr %43, i64 1
  %67 = getelementptr inbounds float, ptr %43, i64 2
  %68 = getelementptr inbounds float, ptr %43, i64 3
  %69 = getelementptr inbounds float, ptr %44, i64 1
  %70 = getelementptr inbounds float, ptr %44, i64 2
  %71 = getelementptr inbounds float, ptr %44, i64 3
  %72 = getelementptr inbounds float, ptr %44, i64 1
  %73 = getelementptr inbounds float, ptr %44, i64 2
  %74 = getelementptr inbounds %struct.DynamicPaintSurface, ptr %2, i64 0, i32 29
  br label %75

75:                                               ; preds = %57, %286
  %76 = phi i64 [ 0, %57 ], [ %287, %286 ]
  %77 = load i16, ptr %58, align 2, !tbaa !43
  %78 = icmp eq i16 %77, 0
  br i1 %78, label %79, label %258

79:                                               ; preds = %75
  %80 = load ptr, ptr %62, align 8, !tbaa !78
  %81 = getelementptr inbounds %struct.PaintPoint, ptr %80, i64 %76
  %82 = load i32, ptr %63, align 4, !tbaa !50
  %83 = and i32 %82, 512
  %84 = icmp eq i32 %83, 0
  br i1 %84, label %215, label %85

85:                                               ; preds = %79
  %86 = getelementptr inbounds %struct.PaintPoint, ptr %80, i64 %76, i32 2
  %87 = load float, ptr %86, align 4, !tbaa !123
  %88 = fcmp ult float %87, 0x3F50624DE0000000
  br i1 %88, label %177, label %89

89:                                               ; preds = %85
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %43) #18
  %90 = load i32, ptr %64, align 8, !tbaa !116
  %91 = sitofp i32 %90 to float
  %92 = and i32 %82, 32
  %93 = icmp eq i32 %92, 0
  br i1 %93, label %100, label %94

94:                                               ; preds = %89
  %95 = fmul float %91, 0x3FF3333340000000
  %96 = fdiv float %95, %3
  %97 = fdiv float 1.000000e+00, %96
  %98 = tail call float @powf(float noundef 0x3F50624DE0000000, float noundef %97) #18
  %99 = fmul float %87, %98
  br label %103

100:                                              ; preds = %89
  %101 = fdiv float -1.000000e+00, %91
  %102 = tail call float @llvm.fmuladd.f32(float %101, float %3, float %87)
  br label %103

103:                                              ; preds = %100, %94
  %104 = phi float [ %99, %94 ], [ %102, %100 ]
  %105 = fcmp olt float %104, 0.000000e+00
  %106 = select i1 %105, float 0.000000e+00, float %104
  store float %106, ptr %86, align 4, !tbaa !123
  %107 = load float, ptr %65, align 8, !tbaa !117
  %108 = fcmp olt float %106, %107
  br i1 %108, label %109, label %175

109:                                              ; preds = %103
  %110 = fdiv float %106, %87
  %111 = getelementptr inbounds %struct.PaintPoint, ptr %80, i64 %76, i32 5
  %112 = load float, ptr %111, align 4, !tbaa !196
  %113 = fcmp olt float %112, 0.000000e+00
  br i1 %113, label %116, label %114

114:                                              ; preds = %109
  %115 = fcmp ogt float %112, 1.000000e+00
  br i1 %115, label %116, label %118

116:                                              ; preds = %114, %109
  %117 = phi float [ 0.000000e+00, %109 ], [ 1.000000e+00, %114 ]
  store float %117, ptr %111, align 4, !tbaa !196
  br label %118

118:                                              ; preds = %116, %114
  %119 = getelementptr inbounds %struct.PaintPoint, ptr %80, i64 %76, i32 1
  %120 = load float, ptr %119, align 4, !tbaa !252
  %121 = fcmp olt float %120, 0.000000e+00
  br i1 %121, label %124, label %122

122:                                              ; preds = %118
  %123 = fcmp ogt float %120, 1.000000e+00
  br i1 %123, label %124, label %126

124:                                              ; preds = %122, %118
  %125 = phi float [ 0.000000e+00, %118 ], [ 1.000000e+00, %122 ]
  store float %125, ptr %119, align 4, !tbaa !252
  br label %126

126:                                              ; preds = %124, %122
  %127 = getelementptr inbounds %struct.PaintPoint, ptr %80, i64 %76, i32 4
  %128 = load float, ptr %111, align 4, !tbaa !196
  %129 = load float, ptr %119, align 4, !tbaa !252
  %130 = fsub float 1.000000e+00, %129
  %131 = tail call float @llvm.fmuladd.f32(float %128, float %130, float %129)
  %132 = fcmp une float %131, 0.000000e+00
  br i1 %132, label %133, label %146

133:                                              ; preds = %126, %133
  %134 = phi i64 [ %144, %133 ], [ 0, %126 ]
  %135 = getelementptr inbounds float, ptr %127, i64 %134
  %136 = load float, ptr %135, align 4, !tbaa !123
  %137 = fmul float %128, %136
  %138 = getelementptr inbounds float, ptr %81, i64 %134
  %139 = load float, ptr %138, align 4, !tbaa !123
  %140 = fmul float %129, %139
  %141 = tail call float @llvm.fmuladd.f32(float %137, float %130, float %140)
  %142 = fdiv float %141, %131
  %143 = getelementptr inbounds float, ptr %43, i64 %134
  store float %142, ptr %143, align 4, !tbaa !123
  %144 = add nuw nsw i64 %134, 1
  %145 = icmp eq i64 %144, 3
  br i1 %145, label %152, label %133, !llvm.loop !253

146:                                              ; preds = %126
  %147 = load float, ptr %127, align 4, !tbaa !123
  store float %147, ptr %43, align 16, !tbaa !123
  %148 = getelementptr inbounds float, ptr %127, i64 1
  %149 = load float, ptr %148, align 4, !tbaa !123
  store float %149, ptr %66, align 4, !tbaa !123
  %150 = getelementptr inbounds float, ptr %127, i64 2
  %151 = load float, ptr %150, align 4, !tbaa !123
  store float %151, ptr %67, align 8, !tbaa !123
  br label %152

152:                                              ; preds = %133, %146
  store float %131, ptr %68, align 4, !tbaa !123
  %153 = fmul float %110, %129
  store float %153, ptr %119, align 4, !tbaa !252
  %154 = fsub float %131, %153
  %155 = fsub float 1.000000e+00, %153
  %156 = fdiv float %154, %155
  store float %156, ptr %111, align 4, !tbaa !196
  %157 = fcmp une float %156, 0.000000e+00
  br i1 %157, label %158, label %175

158:                                              ; preds = %152, %158
  %159 = phi i64 [ %173, %158 ], [ 0, %152 ]
  %160 = getelementptr inbounds [4 x float], ptr %43, i64 0, i64 %159
  %161 = load float, ptr %160, align 4, !tbaa !123
  %162 = getelementptr inbounds [3 x float], ptr %81, i64 0, i64 %159
  %163 = load float, ptr %162, align 4, !tbaa !123
  %164 = load float, ptr %119, align 4, !tbaa !252
  %165 = fneg float %163
  %166 = fmul float %164, %165
  %167 = tail call float @llvm.fmuladd.f32(float %161, float %131, float %166)
  %168 = load float, ptr %111, align 4, !tbaa !196
  %169 = fsub float 1.000000e+00, %164
  %170 = fmul float %168, %169
  %171 = fdiv float %167, %170
  %172 = getelementptr inbounds %struct.PaintPoint, ptr %80, i64 %76, i32 4, i64 %159
  store float %171, ptr %172, align 4, !tbaa !123
  %173 = add nuw nsw i64 %159, 1
  %174 = icmp eq i64 %173, 3
  br i1 %174, label %175, label %158, !llvm.loop !354

175:                                              ; preds = %158, %152, %103
  %176 = getelementptr inbounds %struct.PaintPoint, ptr %80, i64 %76, i32 3
  store i16 1, ptr %176, align 4, !tbaa !355
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %43) #18
  br label %215

177:                                              ; preds = %85
  %178 = getelementptr inbounds %struct.PaintPoint, ptr %80, i64 %76, i32 3
  %179 = load i16, ptr %178, align 4, !tbaa !355
  %180 = icmp sgt i16 %179, 0
  br i1 %180, label %181, label %215

181:                                              ; preds = %177
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %44) #18
  %182 = getelementptr inbounds %struct.PaintPoint, ptr %80, i64 %76, i32 4
  %183 = getelementptr inbounds %struct.PaintPoint, ptr %80, i64 %76, i32 5
  %184 = load float, ptr %183, align 4, !tbaa !196
  %185 = getelementptr inbounds %struct.PaintPoint, ptr %80, i64 %76, i32 1
  %186 = load float, ptr %185, align 4, !tbaa !252
  %187 = fsub float 1.000000e+00, %186
  %188 = tail call float @llvm.fmuladd.f32(float %184, float %187, float %186)
  %189 = fcmp une float %188, 0.000000e+00
  br i1 %189, label %190, label %203

190:                                              ; preds = %181, %190
  %191 = phi i64 [ %201, %190 ], [ 0, %181 ]
  %192 = getelementptr inbounds float, ptr %182, i64 %191
  %193 = load float, ptr %192, align 4, !tbaa !123
  %194 = fmul float %184, %193
  %195 = getelementptr inbounds float, ptr %81, i64 %191
  %196 = load float, ptr %195, align 4, !tbaa !123
  %197 = fmul float %186, %196
  %198 = tail call float @llvm.fmuladd.f32(float %194, float %187, float %197)
  %199 = fdiv float %198, %188
  %200 = getelementptr inbounds float, ptr %44, i64 %191
  store float %199, ptr %200, align 4, !tbaa !123
  %201 = add nuw nsw i64 %191, 1
  %202 = icmp eq i64 %201, 3
  br i1 %202, label %209, label %190, !llvm.loop !253

203:                                              ; preds = %181
  %204 = load float, ptr %182, align 4, !tbaa !123
  store float %204, ptr %44, align 16, !tbaa !123
  %205 = getelementptr inbounds float, ptr %182, i64 1
  %206 = load float, ptr %205, align 4, !tbaa !123
  store float %206, ptr %69, align 4, !tbaa !123
  %207 = getelementptr inbounds float, ptr %182, i64 2
  %208 = load float, ptr %207, align 4, !tbaa !123
  store float %208, ptr %70, align 8, !tbaa !123
  br label %209

209:                                              ; preds = %190, %203
  store float %188, ptr %71, align 4, !tbaa !123
  %210 = load float, ptr %44, align 16, !tbaa !123
  store float %210, ptr %182, align 4, !tbaa !123
  %211 = load float, ptr %72, align 4, !tbaa !123
  %212 = getelementptr inbounds float, ptr %182, i64 1
  store float %211, ptr %212, align 4, !tbaa !123
  %213 = load float, ptr %73, align 8, !tbaa !123
  %214 = getelementptr inbounds float, ptr %182, i64 2
  store float %213, ptr %214, align 4, !tbaa !123
  store float %188, ptr %183, align 4, !tbaa !196
  store float 0.000000e+00, ptr %86, align 4, !tbaa !265
  store float 0.000000e+00, ptr %185, align 4, !tbaa !252
  store i16 0, ptr %178, align 4, !tbaa !355
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %44) #18
  br label %215

215:                                              ; preds = %209, %177, %175, %79
  %216 = load i32, ptr %63, align 4, !tbaa !50
  %217 = and i32 %216, 4
  %218 = icmp eq i32 %217, 0
  br i1 %218, label %286, label %219

219:                                              ; preds = %215
  %220 = getelementptr inbounds %struct.PaintPoint, ptr %80, i64 %76, i32 5
  %221 = load i32, ptr %74, align 4, !tbaa !115
  %222 = sitofp i32 %221 to float
  %223 = and i32 %216, 16
  %224 = icmp eq i32 %223, 0
  %225 = load float, ptr %220, align 4, !tbaa !123
  br i1 %224, label %232, label %226

226:                                              ; preds = %219
  %227 = fmul float %222, 0x3FF3333340000000
  %228 = fdiv float %227, %3
  %229 = fdiv float 1.000000e+00, %228
  %230 = tail call float @powf(float noundef 0x3F50624DE0000000, float noundef %229) #18
  %231 = fmul float %225, %230
  br label %235

232:                                              ; preds = %219
  %233 = fdiv float -1.000000e+00, %222
  %234 = tail call float @llvm.fmuladd.f32(float %233, float %3, float %225)
  br label %235

235:                                              ; preds = %232, %226
  %236 = phi float [ %231, %226 ], [ %234, %232 ]
  %237 = fcmp olt float %236, 0.000000e+00
  %238 = select i1 %237, float 0.000000e+00, float %236
  store float %238, ptr %220, align 4, !tbaa !123
  %239 = getelementptr inbounds %struct.PaintPoint, ptr %80, i64 %76, i32 1
  %240 = load i32, ptr %74, align 4, !tbaa !115
  %241 = sitofp i32 %240 to float
  %242 = load i32, ptr %63, align 4, !tbaa !50
  %243 = and i32 %242, 16
  %244 = icmp eq i32 %243, 0
  %245 = load float, ptr %239, align 4, !tbaa !123
  br i1 %244, label %252, label %246

246:                                              ; preds = %235
  %247 = fmul float %241, 0x3FF3333340000000
  %248 = fdiv float %247, %3
  %249 = fdiv float 1.000000e+00, %248
  %250 = tail call float @powf(float noundef 0x3F50624DE0000000, float noundef %249) #18
  %251 = fmul float %245, %250
  br label %255

252:                                              ; preds = %235
  %253 = fdiv float -1.000000e+00, %241
  %254 = tail call float @llvm.fmuladd.f32(float %253, float %3, float %245)
  br label %255

255:                                              ; preds = %252, %246
  %256 = phi float [ %251, %246 ], [ %254, %252 ]
  store float %256, ptr %239, align 4, !tbaa !123
  %257 = fcmp olt float %256, 0.000000e+00
  br i1 %257, label %284, label %286

258:                                              ; preds = %75
  %259 = load i32, ptr %59, align 4, !tbaa !50
  %260 = and i32 %259, 4
  %261 = icmp ne i32 %260, 0
  %262 = icmp ult i16 %77, 3
  %263 = and i1 %262, %261
  br i1 %263, label %264, label %286

264:                                              ; preds = %258
  %265 = load ptr, ptr %60, align 8, !tbaa !78
  %266 = getelementptr inbounds float, ptr %265, i64 %76
  %267 = load i32, ptr %61, align 4, !tbaa !115
  %268 = sitofp i32 %267 to float
  %269 = and i32 %259, 16
  %270 = icmp eq i32 %269, 0
  %271 = load float, ptr %266, align 4, !tbaa !123
  br i1 %270, label %278, label %272

272:                                              ; preds = %264
  %273 = fmul float %268, 0x3FF3333340000000
  %274 = fdiv float %273, %3
  %275 = fdiv float 1.000000e+00, %274
  %276 = tail call float @powf(float noundef 0x3F50624DE0000000, float noundef %275) #18
  %277 = fmul float %271, %276
  br label %281

278:                                              ; preds = %264
  %279 = fdiv float -1.000000e+00, %268
  %280 = tail call float @llvm.fmuladd.f32(float %279, float %3, float %271)
  br label %281

281:                                              ; preds = %278, %272
  %282 = phi float [ %277, %272 ], [ %280, %278 ]
  store float %282, ptr %266, align 4, !tbaa !123
  %283 = fcmp olt float %282, 0.000000e+00
  br i1 %283, label %284, label %286

284:                                              ; preds = %281, %255
  %285 = phi ptr [ %239, %255 ], [ %266, %281 ]
  store float 0.000000e+00, ptr %285, align 4, !tbaa !123
  br label %286

286:                                              ; preds = %284, %281, %258, %255, %215
  %287 = add nuw nsw i64 %76, 1
  %288 = load i32, ptr %51, align 8, !tbaa !194
  %289 = sext i32 %288 to i64
  %290 = icmp slt i64 %287, %289
  br i1 %290, label %75, label %291, !llvm.loop !356

291:                                              ; preds = %286, %54
  %292 = getelementptr inbounds %struct.Scene, ptr %0, i64 0, i32 22, i32 5
  %293 = load i32, ptr %292, align 8, !tbaa !246
  %294 = getelementptr inbounds %struct.Scene, ptr %0, i64 0, i32 22, i32 8
  %295 = load float, ptr %294, align 4, !tbaa !357
  %296 = getelementptr inbounds %struct.DynamicPaintSurface, ptr %2, i64 0, i32 4
  %297 = load ptr, ptr %296, align 8, !tbaa !186
  %298 = icmp eq ptr %297, null
  br i1 %298, label %302, label %299

299:                                              ; preds = %291
  %300 = getelementptr inbounds %struct.Group, ptr %297, i64 0, i32 1
  %301 = load ptr, ptr %300, align 8, !tbaa !319
  br label %305

302:                                              ; preds = %291
  %303 = getelementptr inbounds %struct.Scene, ptr %0, i64 0, i32 5
  %304 = load ptr, ptr %303, align 8, !tbaa !321
  br label %305

305:                                              ; preds = %302, %299
  %306 = phi ptr [ %301, %299 ], [ null, %302 ]
  %307 = phi ptr [ null, %299 ], [ %304, %302 ]
  %308 = icmp ne ptr %307, null
  %309 = icmp ne ptr %306, null
  %310 = select i1 %308, i1 true, i1 %309
  br i1 %310, label %311, label %2369

311:                                              ; preds = %305
  %312 = getelementptr inbounds %struct.DynamicPaintSurface, ptr %2, i64 0, i32 11
  %313 = getelementptr inbounds %struct.PaintBakeData, ptr %48, i64 0, i32 10
  %314 = getelementptr inbounds %struct.PaintSurfaceData, ptr %46, i64 0, i32 2
  %315 = getelementptr inbounds %struct.PaintBakeData, ptr %48, i64 0, i32 5
  %316 = fcmp une float %4, 0.000000e+00
  %317 = getelementptr inbounds %struct.DynamicPaintSurface, ptr %2, i64 0, i32 39
  %318 = getelementptr inbounds float, ptr %33, i64 1
  %319 = getelementptr inbounds float, ptr %34, i64 1
  %320 = getelementptr inbounds float, ptr %33, i64 2
  %321 = getelementptr inbounds float, ptr %34, i64 2
  %322 = fdiv float 1.000000e+00, %3
  %323 = getelementptr inbounds float, ptr %38, i64 1
  %324 = getelementptr inbounds float, ptr %38, i64 2
  %325 = getelementptr inbounds [4 x float], ptr %35, i64 0, i64 3
  %326 = getelementptr inbounds [3 x float], ptr %36, i64 0, i64 1
  %327 = getelementptr inbounds [3 x float], ptr %36, i64 0, i64 2
  %328 = getelementptr inbounds [4 x float], ptr %35, i64 0, i64 1
  %329 = getelementptr inbounds [3 x float], ptr %36, i64 0, i64 1
  %330 = getelementptr inbounds [4 x float], ptr %35, i64 0, i64 2
  %331 = getelementptr inbounds [3 x float], ptr %36, i64 0, i64 2
  %332 = getelementptr inbounds %struct.DynamicPaintSurface, ptr %2, i64 0, i32 39
  %333 = getelementptr inbounds %struct.Bounds3D, ptr %39, i64 0, i32 1
  %334 = getelementptr inbounds %struct.Bounds3D, ptr %39, i64 0, i32 1, i64 1
  %335 = getelementptr inbounds %struct.Bounds3D, ptr %39, i64 0, i32 1, i64 2
  %336 = getelementptr inbounds %struct.Bounds3D, ptr %39, i64 0, i32 2
  %337 = getelementptr inbounds %struct.Bounds3D, ptr %39, i64 0, i32 2, i64 1
  %338 = getelementptr inbounds %struct.Bounds3D, ptr %39, i64 0, i32 2, i64 2
  %339 = getelementptr inbounds %struct.KDTreeNearest, ptr %40, i64 0, i32 1
  %340 = getelementptr inbounds float, ptr %42, i64 1
  %341 = getelementptr inbounds float, ptr %42, i64 2
  %342 = getelementptr inbounds float, ptr %15, i64 1
  %343 = getelementptr inbounds float, ptr %15, i64 2
  %344 = getelementptr inbounds float, ptr %16, i64 1
  %345 = getelementptr inbounds float, ptr %16, i64 2
  %346 = fdiv float 1.000000e+00, %3
  %347 = getelementptr inbounds %struct.DynamicPaintSurface, ptr %2, i64 0, i32 39
  %348 = getelementptr inbounds %struct.Bounds3D, ptr %18, i64 0, i32 1
  %349 = getelementptr inbounds %struct.Bounds3D, ptr %18, i64 0, i32 1, i64 1
  %350 = getelementptr inbounds %struct.Bounds3D, ptr %18, i64 0, i32 1, i64 2
  %351 = getelementptr inbounds %struct.Bounds3D, ptr %18, i64 0, i32 2
  %352 = getelementptr inbounds %struct.Bounds3D, ptr %18, i64 0, i32 2, i64 1
  %353 = getelementptr inbounds %struct.Bounds3D, ptr %18, i64 0, i32 2, i64 2
  %354 = getelementptr inbounds float, ptr %19, i64 1
  %355 = getelementptr inbounds float, ptr %19, i64 2
  %356 = getelementptr inbounds %struct.DynamicPaintSurface, ptr %2, i64 0, i32 10
  %357 = getelementptr inbounds %struct.DynamicPaintSurface, ptr %2, i64 0, i32 10
  %358 = getelementptr inbounds float, ptr %21, i64 1
  %359 = getelementptr inbounds float, ptr %21, i64 2
  %360 = getelementptr inbounds float, ptr %22, i64 1
  %361 = getelementptr inbounds float, ptr %22, i64 2
  %362 = getelementptr inbounds %struct.BVHTreeRayHit, ptr %23, i64 0, i32 3
  %363 = getelementptr inbounds %struct.BVHTreeNearest, ptr %24, i64 0, i32 3
  %364 = getelementptr inbounds %struct.BVHTreeRayHit, ptr %23, i64 0, i32 2
  %365 = getelementptr inbounds %struct.BVHTreeRayHit, ptr %23, i64 0, i32 2, i64 1
  %366 = getelementptr inbounds %struct.BVHTreeRayHit, ptr %23, i64 0, i32 2, i64 2
  %367 = getelementptr inbounds float, ptr %26, i64 1
  %368 = getelementptr inbounds float, ptr %26, i64 2
  %369 = getelementptr inbounds float, ptr %27, i64 1
  %370 = getelementptr inbounds float, ptr %27, i64 2
  %371 = getelementptr inbounds float, ptr %27, i64 1
  %372 = getelementptr inbounds float, ptr %27, i64 2
  %373 = getelementptr inbounds [3 x float], ptr %27, i64 0, i64 2
  %374 = getelementptr inbounds float, ptr %27, i64 1
  %375 = getelementptr inbounds float, ptr %27, i64 2
  %376 = getelementptr inbounds %struct.BVHTreeRayHit, ptr %23, i64 0, i32 2
  %377 = getelementptr inbounds %struct.BVHTreeNearest, ptr %24, i64 0, i32 1
  %378 = getelementptr inbounds %struct.BVHTreeNearest, ptr %24, i64 0, i32 1, i64 1
  %379 = getelementptr inbounds %struct.BVHTreeNearest, ptr %24, i64 0, i32 1, i64 2
  %380 = getelementptr inbounds %struct.BVHTreeNearest, ptr %24, i64 0, i32 2
  %381 = getelementptr inbounds float, ptr %26, i64 1
  %382 = getelementptr inbounds float, ptr %26, i64 2
  %383 = getelementptr inbounds [4 x float], ptr %25, i64 0, i64 3
  %384 = getelementptr inbounds float, ptr %29, i64 1
  %385 = getelementptr inbounds float, ptr %29, i64 2
  %386 = getelementptr inbounds float, ptr %29, i64 1
  %387 = getelementptr inbounds float, ptr %29, i64 2
  %388 = getelementptr inbounds [3 x float], ptr %30, i64 0, i64 1
  %389 = getelementptr inbounds [3 x float], ptr %30, i64 0, i64 2
  %390 = getelementptr inbounds [4 x float], ptr %25, i64 0, i64 1
  %391 = getelementptr inbounds [4 x float], ptr %25, i64 0, i64 2
  %392 = getelementptr inbounds [3 x float], ptr %20, i64 0, i64 1
  %393 = getelementptr inbounds [3 x float], ptr %20, i64 0, i64 2
  %394 = getelementptr inbounds [3 x float], ptr %20, i64 0, i64 1
  %395 = getelementptr inbounds [3 x float], ptr %20, i64 0, i64 2
  %396 = getelementptr inbounds %struct.PaintBakeData, ptr %48, i64 0, i32 10
  %397 = fpext float %3 to double
  br label %398

398:                                              ; preds = %311, %2365
  %399 = phi ptr [ %307, %311 ], [ %429, %2365 ]
  %400 = phi ptr [ %306, %311 ], [ %428, %2365 ]
  %401 = load ptr, ptr %296, align 8, !tbaa !186
  %402 = icmp eq ptr %401, null
  br label %403

403:                                              ; preds = %398, %416
  %404 = phi ptr [ %399, %398 ], [ %418, %416 ]
  %405 = phi ptr [ %400, %398 ], [ %417, %416 ]
  %406 = getelementptr inbounds %struct.Base, ptr %404, i64 0, i32 7
  %407 = getelementptr inbounds %struct.GroupObject, ptr %405, i64 0, i32 2
  %408 = select i1 %402, ptr %406, ptr %407
  %409 = load ptr, ptr %408, align 8, !tbaa !44
  %410 = icmp eq ptr %409, null
  br i1 %410, label %411, label %422

411:                                              ; preds = %403
  br i1 %402, label %414, label %412

412:                                              ; preds = %411
  %413 = load ptr, ptr %405, align 8, !tbaa !322
  br label %416

414:                                              ; preds = %411
  %415 = load ptr, ptr %404, align 8, !tbaa !324
  br label %416

416:                                              ; preds = %414, %412
  %417 = phi ptr [ %413, %412 ], [ %405, %414 ]
  %418 = phi ptr [ %404, %412 ], [ %415, %414 ]
  %419 = icmp ne ptr %418, null
  %420 = icmp ne ptr %417, null
  %421 = select i1 %419, i1 true, i1 %420
  br i1 %421, label %403, label %2369, !llvm.loop !358

422:                                              ; preds = %403
  br i1 %402, label %425, label %423

423:                                              ; preds = %422
  %424 = load ptr, ptr %405, align 8, !tbaa !322
  br label %427

425:                                              ; preds = %422
  %426 = load ptr, ptr %404, align 8, !tbaa !324
  br label %427

427:                                              ; preds = %425, %423
  %428 = phi ptr [ %424, %423 ], [ %405, %425 ]
  %429 = phi ptr [ %404, %423 ], [ %426, %425 ]
  %430 = call ptr @modifiers_findByType(ptr noundef nonnull %409, i32 noundef 40) #18
  %431 = icmp eq ptr %430, null
  br i1 %431, label %2365, label %432

432:                                              ; preds = %427
  %433 = getelementptr inbounds %struct.ModifierData, ptr %430, i64 0, i32 3
  %434 = load i32, ptr %433, align 4, !tbaa !327
  %435 = and i32 %434, 3
  %436 = icmp eq i32 %435, 0
  br i1 %436, label %2365, label %437

437:                                              ; preds = %432
  %438 = getelementptr inbounds %struct.DynamicPaintModifierData, ptr %430, i64 0, i32 2
  %439 = load ptr, ptr %438, align 8, !tbaa !62
  %440 = icmp eq ptr %439, null
  br i1 %440, label %2365, label %441

441:                                              ; preds = %437
  %442 = load i16, ptr %312, align 2, !tbaa !43
  %443 = icmp eq i16 %442, 0
  br i1 %443, label %444, label %462

444:                                              ; preds = %441
  %445 = getelementptr inbounds %struct.DynamicPaintBrushSettings, ptr %439, i64 0, i32 4
  %446 = load i32, ptr %445, align 8, !tbaa !159
  %447 = and i32 %446, 256
  %448 = icmp eq i32 %447, 0
  br i1 %448, label %462, label %449

449:                                              ; preds = %444
  %450 = load ptr, ptr @MEM_callocN, align 8, !tbaa !44
  %451 = load i32, ptr %51, align 8, !tbaa !194
  %452 = sext i32 %451 to i64
  %453 = shl nsw i64 %452, 4
  %454 = call ptr %450(i64 noundef %453, ptr noundef nonnull @.str.55) #18
  store ptr %454, ptr %313, align 8, !tbaa !359
  %455 = load ptr, ptr %314, align 8, !tbaa !79
  %456 = icmp eq ptr %455, null
  br i1 %456, label %457, label %458

457:                                              ; preds = %449
  call fastcc void @dynamicPaint_initAdjacencyData(ptr noundef %2, i32 noundef 1)
  br label %458

458:                                              ; preds = %457, %449
  %459 = load ptr, ptr %315, align 8, !tbaa !93
  %460 = icmp eq ptr %459, null
  br i1 %460, label %461, label %462

461:                                              ; preds = %458
  call fastcc void @dynamicPaint_prepareAdjacencyData(ptr noundef %2, i32 noundef 1)
  br label %462

462:                                              ; preds = %458, %461, %444, %441
  br i1 %316, label %463, label %468

463:                                              ; preds = %462
  %464 = load i32, ptr %292, align 8, !tbaa !246
  %465 = add nsw i32 %464, -1
  store i32 %465, ptr %292, align 8, !tbaa !246
  store float %4, ptr %294, align 4, !tbaa !357
  %466 = call float @BKE_scene_frame_get(ptr noundef %0) #18
  %467 = call fastcc i32 @subframe_updateObject(ptr noundef %0, ptr noundef nonnull %409, i32 noundef 2, i32 noundef 5, float noundef %466), !range !360
  br label %468

468:                                              ; preds = %463, %462
  %469 = getelementptr inbounds %struct.DynamicPaintBrushSettings, ptr %439, i64 0, i32 4
  %470 = load i32, ptr %469, align 8, !tbaa !159
  %471 = and i32 %470, 2
  %472 = icmp eq i32 %471, 0
  br i1 %472, label %477, label %473

473:                                              ; preds = %468
  %474 = call zeroext i8 @BKE_scene_use_new_shading_nodes(ptr noundef %0) #18
  %475 = icmp eq i8 %474, 0
  %476 = zext i1 %475 to i32
  br label %477

477:                                              ; preds = %468, %473
  %478 = phi i32 [ 0, %468 ], [ %476, %473 ]
  %479 = icmp eq i32 %478, 0
  br i1 %479, label %519, label %480

480:                                              ; preds = %477
  %481 = getelementptr inbounds %struct.DynamicPaintBrushSettings, ptr %439, i64 0, i32 3
  %482 = load ptr, ptr %481, align 8, !tbaa !161
  %483 = getelementptr inbounds %struct.Object, ptr %409, i64 0, i32 50
  %484 = getelementptr inbounds %struct.Object, ptr %409, i64 0, i32 47
  %485 = call zeroext i8 @invert_m4_m4(ptr noundef nonnull %483, ptr noundef nonnull %484) #18
  %486 = getelementptr inbounds %struct.Object, ptr %409, i64 0, i32 51
  call void @copy_m4_m4(ptr noundef nonnull %486, ptr noundef nonnull %483) #18
  %487 = icmp eq ptr %482, null
  br i1 %487, label %488, label %517

488:                                              ; preds = %480
  %489 = getelementptr inbounds %struct.Object, ptr %409, i64 0, i32 29
  %490 = load ptr, ptr %489, align 8, !tbaa !361
  %491 = icmp eq ptr %490, null
  br i1 %491, label %517, label %492

492:                                              ; preds = %488
  %493 = getelementptr inbounds %struct.Object, ptr %409, i64 0, i32 31
  %494 = load i32, ptr %493, align 8, !tbaa !362
  %495 = icmp eq i32 %494, 0
  br i1 %495, label %517, label %496

496:                                              ; preds = %492
  %497 = call ptr @give_totcolp(ptr noundef nonnull %409) #18
  %498 = load i16, ptr %497, align 2, !tbaa !279
  %499 = sext i16 %498 to i32
  %500 = icmp eq i16 %498, 0
  br i1 %500, label %519, label %501

501:                                              ; preds = %496
  %502 = load ptr, ptr @MEM_callocN, align 8, !tbaa !44
  %503 = sext i16 %498 to i64
  %504 = shl nsw i64 %503, 3
  %505 = call ptr %502(i64 noundef %504, ptr noundef nonnull @.str.57) #18
  %506 = icmp sgt i16 %498, 0
  br i1 %506, label %507, label %519

507:                                              ; preds = %501
  %508 = zext nneg i32 %499 to i64
  br label %509

509:                                              ; preds = %507, %509
  %510 = phi i64 [ 0, %507 ], [ %511, %509 ]
  %511 = add nuw nsw i64 %510, 1
  %512 = trunc i64 %511 to i16
  %513 = call ptr @give_current_material(ptr noundef nonnull %409, i16 noundef signext %512) #18
  %514 = call ptr @RE_init_sample_material(ptr noundef %513, ptr noundef %0) #18
  %515 = getelementptr inbounds ptr, ptr %505, i64 %510
  store ptr %514, ptr %515, align 8, !tbaa !44
  %516 = icmp eq i64 %511, %508
  br i1 %516, label %519, label %509, !llvm.loop !363

517:                                              ; preds = %492, %488, %480
  %518 = call ptr @RE_init_sample_material(ptr noundef %482, ptr noundef %0) #18
  br label %519

519:                                              ; preds = %509, %501, %496, %517, %477
  %520 = phi ptr [ null, %477 ], [ null, %517 ], [ null, %496 ], [ %505, %501 ], [ %505, %509 ]
  %521 = phi i32 [ 0, %477 ], [ 0, %517 ], [ %499, %496 ], [ %499, %501 ], [ %499, %509 ]
  %522 = phi ptr [ null, %477 ], [ %518, %517 ], [ null, %496 ], [ null, %501 ], [ null, %509 ]
  %523 = getelementptr inbounds %struct.DynamicPaintBrushSettings, ptr %439, i64 0, i32 5
  %524 = load i32, ptr %523, align 4, !tbaa !160
  switch i32 %524, label %1252 [
    i32 3, label %525
    i32 4, label %993
  ]

525:                                              ; preds = %519
  %526 = getelementptr inbounds %struct.DynamicPaintBrushSettings, ptr %439, i64 0, i32 2
  %527 = load ptr, ptr %526, align 8, !tbaa !158
  %528 = icmp eq ptr %527, null
  br i1 %528, label %2145, label %529

529:                                              ; preds = %525
  %530 = getelementptr inbounds %struct.ParticleSystem, ptr %527, i64 0, i32 2
  %531 = load ptr, ptr %530, align 8, !tbaa !364
  %532 = icmp eq ptr %531, null
  br i1 %532, label %2145, label %533

533:                                              ; preds = %529
  %534 = getelementptr inbounds %struct.ParticleSettings, ptr %531, i64 0, i32 7
  %535 = load i16, ptr %534, align 8, !tbaa !366
  switch i16 %535, label %2145 [
    i16 0, label %536
    i16 3, label %536
  ]

536:                                              ; preds = %533, %533
  %537 = call i32 @psys_check_enabled(ptr noundef nonnull %409, ptr noundef nonnull %527) #18
  %538 = icmp eq i32 %537, 0
  br i1 %538, label %2145, label %539

539:                                              ; preds = %536
  %540 = load ptr, ptr %526, align 8, !tbaa !158
  %541 = getelementptr inbounds %struct.ParticleSystem, ptr %540, i64 0, i32 2
  %542 = load ptr, ptr %541, align 8, !tbaa !364
  %543 = getelementptr inbounds %struct.ParticleSettings, ptr %542, i64 0, i32 1
  %544 = load ptr, ptr %543, align 8, !tbaa !368
  %545 = call float @BKE_scene_frame_get(ptr noundef %0) #18
  call void @BKE_animsys_evaluate_animdata(ptr noundef %0, ptr noundef %542, ptr noundef %544, float noundef %545, i16 noundef signext 2) #18
  %546 = load ptr, ptr %526, align 8, !tbaa !158
  %547 = getelementptr inbounds %struct.ParticleSystem, ptr %546, i64 0, i32 2
  %548 = load ptr, ptr %547, align 8, !tbaa !364
  %549 = load ptr, ptr %45, align 8, !tbaa !72
  %550 = getelementptr inbounds %struct.PaintSurfaceData, ptr %549, i64 0, i32 3
  %551 = load ptr, ptr %550, align 8, !tbaa !85
  %552 = getelementptr inbounds %struct.PaintBakeData, ptr %551, i64 0, i32 7
  %553 = load ptr, ptr %552, align 8, !tbaa !94
  %554 = load float, ptr %332, align 4, !tbaa !122
  %555 = load i32, ptr %469, align 8, !tbaa !159
  %556 = and i32 %555, 1
  %557 = icmp eq i32 %556, 0
  %558 = getelementptr inbounds %struct.ParticleSettings, ptr %548, i64 0, i32 82
  %559 = getelementptr inbounds %struct.DynamicPaintBrushSettings, ptr %439, i64 0, i32 11
  %560 = select i1 %557, ptr %559, ptr %558
  %561 = load float, ptr %560, align 4, !tbaa !123
  %562 = fmul float %554, %561
  %563 = getelementptr inbounds %struct.DynamicPaintBrushSettings, ptr %439, i64 0, i32 12
  %564 = load float, ptr %563, align 8, !tbaa !170
  %565 = fmul float %554, %564
  %566 = fadd float %562, %565
  %567 = getelementptr inbounds %struct.ParticleSettings, ptr %548, i64 0, i32 57
  %568 = load float, ptr %567, align 4, !tbaa !369
  %569 = fmul float %568, 0x3FA47AE140000000
  call void @llvm.lifetime.start.p0(i64 28, ptr nonnull %39) #18
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(28) %39, i8 0, i64 28, i1 false)
  %570 = getelementptr inbounds %struct.ParticleSystem, ptr %546, i64 0, i32 26
  %571 = load i32, ptr %570, align 8, !tbaa !370
  %572 = icmp slt i32 %571, 1
  br i1 %572, label %992, label %573

573:                                              ; preds = %539
  %574 = call ptr @BLI_kdtree_new(i32 noundef %571) #18
  %575 = getelementptr inbounds %struct.ParticleSystem, ptr %546, i64 0, i32 3
  %576 = load i32, ptr %39, align 4, !tbaa !333
  %577 = load i32, ptr %570, align 8, !tbaa !370
  %578 = icmp sgt i32 %577, 0
  br i1 %578, label %579, label %672

579:                                              ; preds = %573
  %580 = load ptr, ptr %575, align 8, !tbaa !371
  %581 = getelementptr inbounds %struct.ParticleSettings, ptr %548, i64 0, i32 5
  %582 = getelementptr inbounds %struct.ParticleSettings, ptr %548, i64 0, i32 5
  %583 = getelementptr inbounds %struct.VolumeGrid, ptr %553, i64 0, i32 1
  br label %584

584:                                              ; preds = %579, %664
  %585 = phi ptr [ %580, %579 ], [ %669, %664 ]
  %586 = phi i32 [ 0, %579 ], [ %667, %664 ]
  %587 = phi i32 [ 0, %579 ], [ %666, %664 ]
  %588 = phi i32 [ 0, %579 ], [ %668, %664 ]
  %589 = phi i32 [ %576, %579 ], [ %665, %664 ]
  %590 = getelementptr inbounds %struct.ParticleData, ptr %585, i64 0, i32 18
  %591 = load i16, ptr %590, align 2, !tbaa !372
  switch i16 %591, label %602 [
    i16 2, label %592
    i16 1, label %598
  ]

592:                                              ; preds = %584
  %593 = load i32, ptr %581, align 8, !tbaa !375
  %594 = and i32 %593, 32
  %595 = icmp eq i32 %594, 0
  br i1 %595, label %664, label %596

596:                                              ; preds = %592
  %597 = icmp eq i16 %591, 1
  br i1 %597, label %598, label %602

598:                                              ; preds = %584, %596
  %599 = load i32, ptr %582, align 8, !tbaa !375
  %600 = and i32 %599, 64
  %601 = icmp eq i32 %600, 0
  br i1 %601, label %664, label %602

602:                                              ; preds = %584, %598, %596
  %603 = getelementptr inbounds %struct.ParticleData, ptr %585, i64 0, i32 17
  %604 = load i16, ptr %603, align 4, !tbaa !376
  %605 = and i16 %604, 1
  %606 = icmp eq i16 %605, 0
  br i1 %606, label %607, label %664

607:                                              ; preds = %602
  %608 = load float, ptr %585, align 8, !tbaa !123
  %609 = fcmp uno float %608, 0.000000e+00
  br i1 %609, label %618, label %610

610:                                              ; preds = %607
  %611 = getelementptr inbounds [3 x float], ptr %585, i64 0, i64 1
  %612 = load float, ptr %611, align 4, !tbaa !123
  %613 = fcmp uno float %612, 0.000000e+00
  br i1 %613, label %618, label %614

614:                                              ; preds = %610
  %615 = getelementptr inbounds [3 x float], ptr %585, i64 0, i64 2
  %616 = load float, ptr %615, align 8, !tbaa !123
  %617 = fcmp uno float %616, 0.000000e+00
  br i1 %617, label %618, label %620

618:                                              ; preds = %614, %610, %607
  %619 = add nsw i32 %587, 1
  br label %664

620:                                              ; preds = %614
  %621 = load i32, ptr %583, align 4, !tbaa !333
  %622 = icmp eq i32 %621, 0
  br i1 %622, label %664, label %626

623:                                              ; preds = %634
  %624 = add nsw i64 %627, -1
  %625 = icmp eq i64 %627, 0
  br i1 %625, label %639, label %626, !llvm.loop !377

626:                                              ; preds = %620, %623
  %627 = phi i64 [ %624, %623 ], [ 2, %620 ]
  %628 = getelementptr inbounds %struct.VolumeGrid, ptr %553, i64 0, i32 1, i32 1, i64 %627
  %629 = load float, ptr %628, align 4, !tbaa !123
  %630 = getelementptr inbounds float, ptr %585, i64 %627
  %631 = load float, ptr %630, align 4, !tbaa !123
  %632 = fadd float %566, %631
  %633 = fcmp ugt float %629, %632
  br i1 %633, label %664, label %634

634:                                              ; preds = %626
  %635 = getelementptr inbounds %struct.VolumeGrid, ptr %553, i64 0, i32 1, i32 2, i64 %627
  %636 = load float, ptr %635, align 4, !tbaa !123
  %637 = fsub float %631, %566
  %638 = fcmp ult float %636, %637
  br i1 %638, label %664, label %623

639:                                              ; preds = %623
  call void @BLI_kdtree_insert(ptr noundef %574, i32 noundef %588, ptr noundef nonnull %585) #18
  %640 = icmp eq i32 %589, 0
  br i1 %640, label %641, label %645

641:                                              ; preds = %639
  %642 = load float, ptr %585, align 4, !tbaa !123
  store float %642, ptr %333, align 4, !tbaa !123
  %643 = load float, ptr %611, align 4, !tbaa !123
  store float %643, ptr %334, align 4, !tbaa !123
  %644 = load float, ptr %615, align 4, !tbaa !123
  store float %644, ptr %335, align 4, !tbaa !123
  store float %642, ptr %336, align 4, !tbaa !123
  store float %643, ptr %337, align 4, !tbaa !123
  store float %644, ptr %338, align 4, !tbaa !123
  br label %661

645:                                              ; preds = %639, %658
  %646 = phi i64 [ %659, %658 ], [ 2, %639 ]
  %647 = getelementptr inbounds float, ptr %585, i64 %646
  %648 = load float, ptr %647, align 4, !tbaa !123
  %649 = getelementptr inbounds %struct.Bounds3D, ptr %39, i64 0, i32 1, i64 %646
  %650 = load float, ptr %649, align 4, !tbaa !123
  %651 = fcmp olt float %648, %650
  br i1 %651, label %652, label %653

652:                                              ; preds = %645
  store float %648, ptr %649, align 4, !tbaa !123
  br label %653

653:                                              ; preds = %652, %645
  %654 = getelementptr inbounds %struct.Bounds3D, ptr %39, i64 0, i32 2, i64 %646
  %655 = load float, ptr %654, align 4, !tbaa !123
  %656 = fcmp ogt float %648, %655
  br i1 %656, label %657, label %658

657:                                              ; preds = %653
  store float %648, ptr %654, align 4, !tbaa !123
  br label %658

658:                                              ; preds = %657, %653
  %659 = add nsw i64 %646, -1
  %660 = icmp eq i64 %646, 0
  br i1 %660, label %661, label %645, !llvm.loop !334

661:                                              ; preds = %658, %641
  %662 = phi i32 [ 1, %641 ], [ %589, %658 ]
  %663 = add nsw i32 %586, 1
  br label %664

664:                                              ; preds = %634, %626, %620, %661, %618, %602, %598, %592
  %665 = phi i32 [ %589, %592 ], [ %589, %598 ], [ %589, %602 ], [ %589, %618 ], [ %662, %661 ], [ %589, %620 ], [ %589, %626 ], [ %589, %634 ]
  %666 = phi i32 [ %587, %592 ], [ %587, %598 ], [ %587, %602 ], [ %619, %618 ], [ %587, %661 ], [ %587, %620 ], [ %587, %626 ], [ %587, %634 ]
  %667 = phi i32 [ %586, %592 ], [ %586, %598 ], [ %586, %602 ], [ %586, %618 ], [ %663, %661 ], [ %586, %620 ], [ %586, %626 ], [ %586, %634 ]
  %668 = add nuw nsw i32 %588, 1
  %669 = getelementptr inbounds %struct.ParticleData, ptr %585, i64 1
  %670 = load i32, ptr %570, align 8, !tbaa !370
  %671 = icmp slt i32 %668, %670
  br i1 %671, label %584, label %672, !llvm.loop !378

672:                                              ; preds = %664, %573
  %673 = phi i32 [ %576, %573 ], [ %665, %664 ]
  %674 = phi i32 [ 0, %573 ], [ %666, %664 ]
  %675 = phi i32 [ 0, %573 ], [ %667, %664 ]
  store i32 %673, ptr %39, align 4, !tbaa !333
  %676 = icmp eq i32 %674, 0
  br i1 %676, label %679, label %677

677:                                              ; preds = %672
  %678 = call i32 @puts(ptr nonnull dereferenceable(1) @str)
  br label %679

679:                                              ; preds = %677, %672
  %680 = icmp slt i32 %675, 1
  br i1 %680, label %991, label %681

681:                                              ; preds = %679
  call void @BLI_begin_threaded_malloc() #18
  %682 = getelementptr inbounds %struct.VolumeGrid, ptr %553, i64 0, i32 1
  %683 = load i32, ptr %682, align 4, !tbaa !333
  %684 = icmp eq i32 %683, 0
  %685 = load i32, ptr %39, align 4
  %686 = icmp eq i32 %685, 0
  %687 = select i1 %684, i1 true, i1 %686
  br i1 %687, label %990, label %691

688:                                              ; preds = %699
  %689 = add nsw i64 %692, -1
  %690 = icmp eq i64 %692, 0
  br i1 %690, label %706, label %691, !llvm.loop !379

691:                                              ; preds = %681, %688
  %692 = phi i64 [ %689, %688 ], [ 2, %681 ]
  %693 = getelementptr inbounds %struct.VolumeGrid, ptr %553, i64 0, i32 1, i32 1, i64 %692
  %694 = load float, ptr %693, align 4, !tbaa !123
  %695 = getelementptr inbounds %struct.Bounds3D, ptr %39, i64 0, i32 2, i64 %692
  %696 = load float, ptr %695, align 4, !tbaa !123
  %697 = fadd float %566, %696
  %698 = fcmp ugt float %694, %697
  br i1 %698, label %990, label %699

699:                                              ; preds = %691
  %700 = getelementptr inbounds %struct.VolumeGrid, ptr %553, i64 0, i32 1, i32 2, i64 %692
  %701 = load float, ptr %700, align 4, !tbaa !123
  %702 = getelementptr inbounds %struct.Bounds3D, ptr %39, i64 0, i32 1, i64 %692
  %703 = load float, ptr %702, align 4, !tbaa !123
  %704 = fsub float %703, %566
  %705 = fcmp ult float %701, %704
  br i1 %705, label %990, label %688

706:                                              ; preds = %688
  %707 = load i32, ptr %553, align 8, !tbaa !205
  %708 = getelementptr inbounds [3 x i32], ptr %553, i64 0, i64 1
  %709 = load i32, ptr %708, align 4, !tbaa !205
  %710 = mul i32 %709, %707
  %711 = getelementptr inbounds [3 x i32], ptr %553, i64 0, i64 2
  %712 = load i32, ptr %711, align 8, !tbaa !205
  %713 = mul i32 %710, %712
  call void @BLI_kdtree_balance(ptr noundef %574) #18
  %714 = icmp sgt i32 %713, 0
  br i1 %714, label %715, label %990

715:                                              ; preds = %706
  %716 = getelementptr inbounds %struct.VolumeGrid, ptr %553, i64 0, i32 4
  %717 = getelementptr inbounds %struct.VolumeGrid, ptr %553, i64 0, i32 2
  %718 = getelementptr inbounds %struct.VolumeGrid, ptr %553, i64 0, i32 5
  %719 = getelementptr inbounds %struct.VolumeGrid, ptr %553, i64 0, i32 3
  %720 = getelementptr inbounds %struct.PaintBakeData, ptr %551, i64 0, i32 3
  %721 = getelementptr inbounds %struct.PaintBakeData, ptr %551, i64 0, i32 1
  %722 = fcmp une float %565, 0.000000e+00
  %723 = select i1 %722, float %565, float 1.000000e+00
  %724 = fcmp une float %565, 0.000000e+00
  %725 = select i1 %724, float %565, float 1.000000e+00
  %726 = getelementptr inbounds %struct.PaintBakeData, ptr %551, i64 0, i32 8
  %727 = getelementptr inbounds %struct.PaintBakeData, ptr %551, i64 0, i32 10
  %728 = getelementptr inbounds %struct.DynamicPaintBrushSettings, ptr %439, i64 0, i32 6
  %729 = getelementptr inbounds %struct.DynamicPaintBrushSettings, ptr %439, i64 0, i32 7
  %730 = getelementptr inbounds %struct.DynamicPaintBrushSettings, ptr %439, i64 0, i32 8
  %731 = zext nneg i32 %713 to i64
  br label %732

732:                                              ; preds = %715, %987
  %733 = phi i64 [ 0, %715 ], [ %988, %987 ]
  %734 = load ptr, ptr %716, align 8, !tbaa !98
  %735 = getelementptr inbounds i32, ptr %734, i64 %733
  %736 = load i32, ptr %735, align 4, !tbaa !205
  %737 = icmp eq i32 %736, 0
  br i1 %737, label %987, label %738

738:                                              ; preds = %732
  %739 = load ptr, ptr %717, align 8, !tbaa !95
  %740 = getelementptr inbounds %struct.Bounds3D, ptr %739, i64 %733
  %741 = load i32, ptr %740, align 4, !tbaa !333
  %742 = icmp eq i32 %741, 0
  %743 = select i1 %742, i1 true, i1 %686
  br i1 %743, label %987, label %752

744:                                              ; preds = %760
  %745 = add nsw i64 %753, -1
  %746 = icmp eq i64 %753, 0
  br i1 %746, label %747, label %752, !llvm.loop !379

747:                                              ; preds = %744
  %748 = load ptr, ptr %716, align 8, !tbaa !98
  %749 = getelementptr inbounds i32, ptr %748, i64 %733
  %750 = load i32, ptr %749, align 4, !tbaa !205
  %751 = icmp sgt i32 %750, 0
  br i1 %751, label %767, label %987

752:                                              ; preds = %738, %744
  %753 = phi i64 [ %745, %744 ], [ 2, %738 ]
  %754 = getelementptr inbounds %struct.Bounds3D, ptr %739, i64 %733, i32 1, i64 %753
  %755 = load float, ptr %754, align 4, !tbaa !123
  %756 = getelementptr inbounds %struct.Bounds3D, ptr %39, i64 0, i32 2, i64 %753
  %757 = load float, ptr %756, align 4, !tbaa !123
  %758 = fadd float %566, %757
  %759 = fcmp ugt float %755, %758
  br i1 %759, label %987, label %760

760:                                              ; preds = %752
  %761 = getelementptr inbounds %struct.Bounds3D, ptr %739, i64 %733, i32 2, i64 %753
  %762 = load float, ptr %761, align 4, !tbaa !123
  %763 = getelementptr inbounds %struct.Bounds3D, ptr %39, i64 0, i32 1, i64 %753
  %764 = load float, ptr %763, align 4, !tbaa !123
  %765 = fsub float %764, %566
  %766 = fcmp ult float %762, %765
  br i1 %766, label %987, label %744

767:                                              ; preds = %747, %981
  %768 = phi i32 [ %982, %981 ], [ 0, %747 ]
  %769 = load ptr, ptr %718, align 8, !tbaa !99
  %770 = load ptr, ptr %719, align 8, !tbaa !97
  %771 = getelementptr inbounds i32, ptr %770, i64 %733
  %772 = load i32, ptr %771, align 4, !tbaa !205
  %773 = add nsw i32 %772, %768
  %774 = sext i32 %773 to i64
  %775 = getelementptr inbounds i32, ptr %769, i64 %774
  %776 = load i32, ptr %775, align 4, !tbaa !205
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %40) #18
  %777 = load ptr, ptr %720, align 8, !tbaa !92
  %778 = load ptr, ptr %721, align 8, !tbaa !90
  %779 = sext i32 %776 to i64
  %780 = getelementptr inbounds i32, ptr %778, i64 %779
  %781 = load i32, ptr %780, align 4, !tbaa !205
  %782 = sext i32 %781 to i64
  %783 = getelementptr inbounds %struct.Vec3f, ptr %777, i64 %782
  %784 = call i32 @BLI_kdtree_find_nearest(ptr noundef %574, ptr noundef %783, ptr noundef nonnull %40) #18
  %785 = load float, ptr %339, align 4, !tbaa !380
  %786 = fcmp ule float %785, %566
  br i1 %786, label %787, label %809

787:                                              ; preds = %767
  %788 = load i32, ptr %469, align 8, !tbaa !159
  %789 = and i32 %788, 1
  %790 = icmp eq i32 %789, 0
  br i1 %790, label %797, label %791

791:                                              ; preds = %787
  %792 = load ptr, ptr %575, align 8, !tbaa !371
  %793 = load i32, ptr %40, align 4, !tbaa !382
  %794 = sext i32 %793 to i64
  %795 = getelementptr inbounds %struct.ParticleData, ptr %792, i64 %794, i32 13
  %796 = load float, ptr %795, align 4, !tbaa !383
  br label %797

797:                                              ; preds = %791, %787
  %798 = phi float [ %796, %791 ], [ %562, %787 ]
  %799 = fadd float %565, %798
  %800 = fcmp olt float %785, %799
  br i1 %800, label %801, label %809

801:                                              ; preds = %797
  %802 = fsub float %785, %798
  %803 = fcmp olt float %802, 0.000000e+00
  %804 = select i1 %803, float 0.000000e+00, float %802
  %805 = fdiv float %804, %723
  %806 = fsub float 1.000000e+00, %805
  %807 = fsub float %799, %785
  %808 = load i32, ptr %40, align 4, !tbaa !382
  br label %809

809:                                              ; preds = %801, %797, %767
  %810 = phi float [ 0.000000e+00, %767 ], [ %807, %801 ], [ 0.000000e+00, %797 ]
  %811 = phi float [ 0.000000e+00, %767 ], [ %799, %801 ], [ %799, %797 ]
  %812 = phi float [ 0.000000e+00, %767 ], [ %806, %801 ], [ 0.000000e+00, %797 ]
  %813 = phi i32 [ -1, %767 ], [ %808, %801 ], [ -1, %797 ]
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %40) #18
  br i1 %786, label %814, label %981

814:                                              ; preds = %809
  %815 = load i32, ptr %469, align 8, !tbaa !159
  %816 = and i32 %815, 1
  %817 = icmp ne i32 %816, 0
  %818 = fcmp olt float %812, 1.000000e+00
  %819 = select i1 %817, i1 %818, i1 false
  br i1 %819, label %820, label %894

820:                                              ; preds = %814
  %821 = load ptr, ptr %547, align 8, !tbaa !364
  %822 = getelementptr inbounds %struct.ParticleSettings, ptr %821, i64 0, i32 83
  %823 = load float, ptr %822, align 4, !tbaa !384
  %824 = fcmp ogt float %823, 0.000000e+00
  br i1 %824, label %825, label %894

825:                                              ; preds = %820
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %41) #18
  %826 = fsub float 1.000000e+00, %812
  %827 = fmul float %565, %826
  %828 = fneg float %812
  %829 = call float @llvm.fmuladd.f32(float %828, float %565, float %565)
  %830 = fadd float %562, %829
  %831 = load ptr, ptr %720, align 8, !tbaa !92
  %832 = load ptr, ptr %721, align 8, !tbaa !90
  %833 = getelementptr inbounds i32, ptr %832, i64 %779
  %834 = load i32, ptr %833, align 4, !tbaa !205
  %835 = sext i32 %834 to i64
  %836 = getelementptr inbounds %struct.Vec3f, ptr %831, i64 %835
  %837 = call i32 @BLI_kdtree_range_search__normal(ptr noundef %574, ptr noundef %836, ptr noundef null, ptr noundef nonnull %41, float noundef %830) #18
  %838 = icmp sgt i32 %837, 0
  br i1 %838, label %839, label %873

839:                                              ; preds = %825
  %840 = load ptr, ptr %575, align 8, !tbaa !371
  %841 = load ptr, ptr %41, align 8, !tbaa !44
  %842 = zext nneg i32 %837 to i64
  br label %843

843:                                              ; preds = %865, %839
  %844 = phi i64 [ %870, %865 ], [ 0, %839 ]
  %845 = phi float [ %868, %865 ], [ %830, %839 ]
  %846 = phi float [ %867, %865 ], [ %827, %839 ]
  %847 = phi i32 [ %866, %865 ], [ %813, %839 ]
  %848 = getelementptr inbounds %struct.KDTreeNearest, ptr %841, i64 %844
  %849 = load i32, ptr %848, align 4, !tbaa !382
  %850 = sext i32 %849 to i64
  %851 = getelementptr inbounds %struct.KDTreeNearest, ptr %841, i64 %844, i32 1
  %852 = load float, ptr %851, align 4, !tbaa !380
  %853 = getelementptr inbounds %struct.ParticleData, ptr %840, i64 %850, i32 13
  %854 = load float, ptr %853, align 4, !tbaa !383
  %855 = fadd float %565, %854
  %856 = fcmp ogt float %852, %855
  br i1 %856, label %865, label %857

857:                                              ; preds = %843
  %858 = fsub float %852, %854
  %859 = fcmp olt float %846, %858
  br i1 %859, label %865, label %860

860:                                              ; preds = %857
  %861 = fcmp olt float %858, 0.000000e+00
  br i1 %861, label %862, label %864

862:                                              ; preds = %860
  %863 = load i16, ptr %312, align 2, !tbaa !43
  switch i16 %863, label %865 [
    i16 1, label %864
    i16 3, label %864
  ]

864:                                              ; preds = %862, %862, %860
  br label %865

865:                                              ; preds = %864, %862, %857, %843
  %866 = phi i32 [ %849, %864 ], [ %847, %843 ], [ %847, %857 ], [ %849, %862 ]
  %867 = phi float [ %858, %864 ], [ %846, %843 ], [ %846, %857 ], [ %858, %862 ]
  %868 = phi float [ %852, %864 ], [ %845, %843 ], [ %845, %857 ], [ %852, %862 ]
  %869 = phi i1 [ true, %864 ], [ true, %843 ], [ true, %857 ], [ false, %862 ]
  %870 = add nuw nsw i64 %844, 1
  %871 = icmp ult i64 %870, %842
  %872 = select i1 %869, i1 %871, i1 false
  br i1 %872, label %843, label %873, !llvm.loop !385

873:                                              ; preds = %865, %825
  %874 = phi i32 [ %813, %825 ], [ %866, %865 ]
  %875 = phi float [ %827, %825 ], [ %867, %865 ]
  %876 = phi float [ %830, %825 ], [ %868, %865 ]
  %877 = load ptr, ptr %41, align 8, !tbaa !44
  %878 = icmp eq ptr %877, null
  br i1 %878, label %881, label %879

879:                                              ; preds = %873
  %880 = load ptr, ptr @MEM_freeN, align 8, !tbaa !44
  call void %880(ptr noundef nonnull %877) #18
  br label %881

881:                                              ; preds = %879, %873
  %882 = fadd float %565, %811
  %883 = fsub float %882, %876
  %884 = fcmp ogt float %883, %810
  %885 = fsub float %811, %876
  %886 = select i1 %884, float %885, float %810
  %887 = select i1 %884, float %882, float %811
  %888 = fcmp olt float %875, 0.000000e+00
  %889 = select i1 %888, float 0.000000e+00, float %875
  %890 = fdiv float %889, %725
  %891 = fsub float 1.000000e+00, %890
  %892 = fcmp ogt float %891, %812
  %893 = select i1 %892, float %891, float %812
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %41) #18
  br label %894

894:                                              ; preds = %881, %820, %814
  %895 = phi float [ %886, %881 ], [ %810, %820 ], [ %810, %814 ]
  %896 = phi float [ %887, %881 ], [ %811, %820 ], [ %811, %814 ]
  %897 = phi float [ %893, %881 ], [ %812, %820 ], [ %812, %814 ]
  %898 = phi i32 [ %874, %881 ], [ %813, %820 ], [ %813, %814 ]
  %899 = fcmp ogt float %897, 0x3F50624DE0000000
  br i1 %899, label %900, label %981

900:                                              ; preds = %894
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %42) #18
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %42, i8 0, i64 16, i1 false)
  %901 = load i32, ptr %469, align 8, !tbaa !159
  %902 = and i32 %901, 3840
  %903 = icmp ne i32 %902, 0
  %904 = icmp ne i32 %898, -1
  %905 = select i1 %903, i1 %904, i1 false
  br i1 %905, label %906, label %960

906:                                              ; preds = %900
  %907 = load ptr, ptr %575, align 8, !tbaa !371
  %908 = sext i32 %898 to i64
  %909 = getelementptr inbounds %struct.ParticleData, ptr %907, i64 %908, i32 0, i32 1
  %910 = load float, ptr %909, align 4, !tbaa !123
  %911 = fmul float %569, %910
  %912 = getelementptr inbounds float, ptr %909, i64 1
  %913 = load float, ptr %912, align 4, !tbaa !123
  %914 = fmul float %569, %913
  %915 = getelementptr inbounds float, ptr %909, i64 2
  %916 = load float, ptr %915, align 4, !tbaa !123
  %917 = fmul float %569, %916
  %918 = load ptr, ptr %726, align 8, !tbaa !101
  %919 = icmp eq ptr %918, null
  br i1 %919, label %930, label %920

920:                                              ; preds = %906
  %921 = getelementptr inbounds %struct.Vec3f, ptr %918, i64 %779
  %922 = load float, ptr %921, align 4, !tbaa !123
  %923 = fsub float %911, %922
  %924 = getelementptr inbounds float, ptr %921, i64 1
  %925 = load float, ptr %924, align 4, !tbaa !123
  %926 = fsub float %914, %925
  %927 = getelementptr inbounds float, ptr %921, i64 2
  %928 = load float, ptr %927, align 4, !tbaa !123
  %929 = fsub float %917, %928
  br label %930

930:                                              ; preds = %920, %906
  %931 = phi float [ %917, %906 ], [ %929, %920 ]
  %932 = phi float [ %914, %906 ], [ %926, %920 ]
  %933 = phi float [ %911, %906 ], [ %923, %920 ]
  %934 = fmul float %932, %932
  %935 = call float @llvm.fmuladd.f32(float %933, float %933, float %934)
  %936 = call float @llvm.fmuladd.f32(float %931, float %931, float %935)
  %937 = call float @sqrtf(float noundef %936) #18
  %938 = load i16, ptr %312, align 2, !tbaa !43
  %939 = icmp eq i16 %938, 0
  br i1 %939, label %940, label %960

940:                                              ; preds = %930
  %941 = load i32, ptr %469, align 8, !tbaa !159
  %942 = and i32 %941, 256
  %943 = icmp eq i32 %942, 0
  br i1 %943, label %960, label %944

944:                                              ; preds = %940
  %945 = load ptr, ptr %727, align 8, !tbaa !359
  %946 = icmp eq ptr %945, null
  br i1 %946, label %960, label %947

947:                                              ; preds = %944
  %948 = shl nsw i32 %776, 2
  %949 = sext i32 %948 to i64
  %950 = getelementptr inbounds float, ptr %945, i64 %949
  store float %933, ptr %950, align 4, !tbaa !123
  %951 = getelementptr inbounds float, ptr %950, i64 1
  store float %932, ptr %951, align 4, !tbaa !123
  %952 = getelementptr inbounds float, ptr %950, i64 2
  store float %931, ptr %952, align 4, !tbaa !123
  %953 = fdiv float 1.000000e+00, %937
  %954 = fmul float %933, %953
  store float %954, ptr %950, align 4, !tbaa !123
  %955 = fmul float %932, %953
  store float %955, ptr %951, align 4, !tbaa !123
  %956 = fmul float %931, %953
  store float %956, ptr %952, align 4, !tbaa !123
  %957 = or disjoint i32 %948, 3
  %958 = sext i32 %957 to i64
  %959 = getelementptr inbounds float, ptr %945, i64 %958
  store float %937, ptr %959, align 4, !tbaa !123
  br label %960

960:                                              ; preds = %947, %944, %940, %930, %900
  %961 = phi float [ 0.000000e+00, %900 ], [ %937, %947 ], [ %937, %944 ], [ %937, %940 ], [ %937, %930 ]
  %962 = load i16, ptr %312, align 2, !tbaa !43
  switch i16 %962, label %979 [
    i16 0, label %963
    i16 1, label %967
    i16 3, label %967
  ]

963:                                              ; preds = %960
  %964 = load float, ptr %728, align 4, !tbaa !123
  store float %964, ptr %42, align 16, !tbaa !123
  %965 = load float, ptr %729, align 4, !tbaa !123
  store float %965, ptr %340, align 4, !tbaa !123
  %966 = load float, ptr %730, align 4, !tbaa !123
  store float %966, ptr %341, align 8, !tbaa !123
  br label %979

967:                                              ; preds = %960, %960
  %968 = fdiv float %895, %896
  %969 = call float @sqrtf(float noundef %968) #18
  %970 = fsub float 1.000000e+00, %969
  %971 = fmul float %896, %970
  %972 = fsub float %896, %971
  %973 = load ptr, ptr %551, align 8, !tbaa !86
  %974 = getelementptr inbounds %struct.PaintBakeNormal, ptr %973, i64 %779, i32 1
  %975 = load float, ptr %974, align 4, !tbaa !338
  %976 = fdiv float %972, %975
  %977 = fcmp olt float %976, 0.000000e+00
  br i1 %977, label %978, label %979

978:                                              ; preds = %967
  br label %979

979:                                              ; preds = %978, %967, %963, %960
  %980 = phi float [ 0.000000e+00, %963 ], [ 0.000000e+00, %978 ], [ %976, %967 ], [ 0.000000e+00, %960 ]
  call fastcc void @dynamicPaint_updatePointData(ptr noundef %2, i32 noundef %776, ptr noundef %439, ptr noundef nonnull %42, float noundef %897, float noundef %980, float noundef %961, float noundef %3)
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %42) #18
  br label %981

981:                                              ; preds = %979, %894, %809
  %982 = add nuw nsw i32 %768, 1
  %983 = load ptr, ptr %716, align 8, !tbaa !98
  %984 = getelementptr inbounds i32, ptr %983, i64 %733
  %985 = load i32, ptr %984, align 4, !tbaa !205
  %986 = icmp slt i32 %982, %985
  br i1 %986, label %767, label %987, !llvm.loop !386

987:                                              ; preds = %760, %752, %981, %747, %738, %732
  %988 = add nuw nsw i64 %733, 1
  %989 = icmp eq i64 %988, %731
  br i1 %989, label %990, label %732, !llvm.loop !387

990:                                              ; preds = %699, %691, %987, %706, %681
  call void @BLI_end_threaded_malloc() #18
  br label %991

991:                                              ; preds = %679, %990
  call void @BLI_kdtree_free(ptr noundef %574) #18
  br label %992

992:                                              ; preds = %991, %539
  call void @llvm.lifetime.end.p0(i64 28, ptr nonnull %39) #18
  br label %2145

993:                                              ; preds = %519
  %994 = icmp eq ptr %409, %1
  br i1 %994, label %1252, label %995

995:                                              ; preds = %993
  %996 = getelementptr inbounds %struct.Object, ptr %409, i64 0, i32 33
  %997 = getelementptr inbounds %struct.DynamicPaintBrushSettings, ptr %439, i64 0, i32 13
  %998 = load float, ptr %997, align 4, !tbaa !167
  %999 = load float, ptr %317, align 4, !tbaa !122
  %1000 = fmul float %998, %999
  %1001 = load ptr, ptr %45, align 8, !tbaa !72
  %1002 = getelementptr inbounds %struct.PaintSurfaceData, ptr %1001, i64 0, i32 3
  %1003 = load ptr, ptr %1002, align 8, !tbaa !85
  %1004 = load i32, ptr %469, align 8, !tbaa !159
  %1005 = and i32 %1004, 3840
  %1006 = icmp eq i32 %1005, 0
  br i1 %1006, label %1033, label %1007

1007:                                             ; preds = %995
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %32) #18
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %33) #18
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %33, i8 0, i64 12, i1 false)
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %34) #18
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %34, i8 0, i64 12, i1 false)
  %1008 = load float, ptr %294, align 4, !tbaa !357
  %1009 = load i32, ptr %292, align 8, !tbaa !246
  %1010 = fsub float %1008, %3
  %1011 = fcmp olt float %1010, 0.000000e+00
  %1012 = fadd float %1010, 1.000000e+00
  %1013 = select i1 %1011, float %1012, float %1010
  %1014 = sext i1 %1011 to i32
  %1015 = add nsw i32 %1009, %1014
  store i32 %1015, ptr %292, align 8, !tbaa !246
  store float %1013, ptr %294, align 4, !tbaa !357
  %1016 = call float @BKE_scene_frame_get(ptr noundef %0) #18
  %1017 = call fastcc i32 @subframe_updateObject(ptr noundef %0, ptr noundef nonnull %409, i32 noundef 0, i32 noundef 5, float noundef %1016), !range !360
  %1018 = getelementptr inbounds %struct.Object, ptr %409, i64 0, i32 47
  call void @copy_m4_m4(ptr noundef nonnull %32, ptr noundef nonnull %1018) #18
  store i32 %1009, ptr %292, align 8, !tbaa !246
  store float %1008, ptr %294, align 4, !tbaa !357
  %1019 = call float @BKE_scene_frame_get(ptr noundef %0) #18
  %1020 = call fastcc i32 @subframe_updateObject(ptr noundef %0, ptr noundef nonnull %409, i32 noundef 0, i32 noundef 5, float noundef %1019), !range !360
  call void @mul_m4_v3(ptr noundef nonnull %32, ptr noundef nonnull %34) #18
  call void @mul_m4_v3(ptr noundef nonnull %1018, ptr noundef nonnull %33) #18
  %1021 = load float, ptr %33, align 4, !tbaa !123
  %1022 = load float, ptr %34, align 4, !tbaa !123
  %1023 = fsub float %1021, %1022
  %1024 = load float, ptr %318, align 4, !tbaa !123
  %1025 = load float, ptr %319, align 4, !tbaa !123
  %1026 = fsub float %1024, %1025
  %1027 = load float, ptr %320, align 4, !tbaa !123
  %1028 = load float, ptr %321, align 4, !tbaa !123
  %1029 = fsub float %1027, %1028
  %1030 = fmul float %322, %1023
  %1031 = fmul float %322, %1026
  %1032 = fmul float %322, %1029
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %34) #18
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %33) #18
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %32) #18
  br label %1033

1033:                                             ; preds = %1007, %995
  %1034 = phi float [ undef, %995 ], [ %1032, %1007 ]
  %1035 = phi float [ undef, %995 ], [ %1031, %1007 ]
  %1036 = phi float [ undef, %995 ], [ %1030, %1007 ]
  %1037 = getelementptr inbounds %struct.PaintSurfaceData, ptr %1001, i64 0, i32 4
  %1038 = load i32, ptr %1037, align 8, !tbaa !194
  %1039 = icmp sgt i32 %1038, 0
  br i1 %1039, label %1040, label %2145

1040:                                             ; preds = %1033
  %1041 = getelementptr inbounds %struct.PaintBakeData, ptr %1003, i64 0, i32 3
  %1042 = getelementptr inbounds %struct.PaintBakeData, ptr %1003, i64 0, i32 1
  %1043 = getelementptr inbounds %struct.Object, ptr %409, i64 0, i32 33, i64 1
  %1044 = getelementptr inbounds %struct.Object, ptr %409, i64 0, i32 33, i64 2
  %1045 = getelementptr inbounds %struct.DynamicPaintBrushSettings, ptr %439, i64 0, i32 16
  %1046 = getelementptr inbounds %struct.DynamicPaintBrushSettings, ptr %439, i64 0, i32 1
  %1047 = getelementptr inbounds %struct.Object, ptr %409, i64 0, i32 47
  %1048 = icmp eq ptr %522, null
  %1049 = icmp eq ptr %520, null
  %1050 = getelementptr inbounds %struct.DynamicPaintBrushSettings, ptr %439, i64 0, i32 14
  %1051 = getelementptr inbounds %struct.PaintBakeData, ptr %1003, i64 0, i32 8
  %1052 = getelementptr inbounds %struct.PaintBakeData, ptr %1003, i64 0, i32 10
  %1053 = getelementptr inbounds %struct.DynamicPaintBrushSettings, ptr %439, i64 0, i32 6
  %1054 = getelementptr inbounds %struct.DynamicPaintBrushSettings, ptr %439, i64 0, i32 7
  %1055 = getelementptr inbounds %struct.DynamicPaintBrushSettings, ptr %439, i64 0, i32 8
  br label %1056

1056:                                             ; preds = %1040, %1247
  %1057 = phi i64 [ 0, %1040 ], [ %1248, %1247 ]
  %1058 = load ptr, ptr %1041, align 8, !tbaa !92
  %1059 = load ptr, ptr %1042, align 8, !tbaa !90
  %1060 = getelementptr inbounds i32, ptr %1059, i64 %1057
  %1061 = load i32, ptr %1060, align 4, !tbaa !205
  %1062 = sext i32 %1061 to i64
  %1063 = getelementptr inbounds %struct.Vec3f, ptr %1058, i64 %1062
  %1064 = load float, ptr %1063, align 4, !tbaa !123
  %1065 = load float, ptr %996, align 4, !tbaa !123
  %1066 = fsub float %1064, %1065
  %1067 = getelementptr inbounds float, ptr %1063, i64 1
  %1068 = load float, ptr %1067, align 4, !tbaa !123
  %1069 = load float, ptr %1043, align 4, !tbaa !123
  %1070 = fsub float %1068, %1069
  %1071 = getelementptr inbounds float, ptr %1063, i64 2
  %1072 = load float, ptr %1071, align 4, !tbaa !123
  %1073 = load float, ptr %1044, align 4, !tbaa !123
  %1074 = fsub float %1072, %1073
  %1075 = fmul float %1070, %1070
  %1076 = call float @llvm.fmuladd.f32(float %1066, float %1066, float %1075)
  %1077 = call float @llvm.fmuladd.f32(float %1074, float %1074, float %1076)
  %1078 = call float @sqrtf(float noundef %1077) #18
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %35) #18
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %35, i8 0, i64 16, i1 false)
  %1079 = fcmp ogt float %1078, %1000
  br i1 %1079, label %1247, label %1080

1080:                                             ; preds = %1056
  %1081 = load i16, ptr %1045, align 8, !tbaa !168
  %1082 = add i16 %1081, -1
  %1083 = icmp ult i16 %1082, 2
  br i1 %1083, label %1084, label %1091

1084:                                             ; preds = %1080
  %1085 = fdiv float %1078, %1000
  %1086 = fsub float 1.000000e+00, %1085
  %1087 = fcmp olt float %1086, 0.000000e+00
  br i1 %1087, label %1091, label %1088

1088:                                             ; preds = %1084
  %1089 = fcmp ogt float %1086, 1.000000e+00
  br i1 %1089, label %1090, label %1091

1090:                                             ; preds = %1088
  br label %1091

1091:                                             ; preds = %1090, %1088, %1084, %1080
  %1092 = phi float [ 1.000000e+00, %1090 ], [ %1086, %1088 ], [ 0.000000e+00, %1084 ], [ 1.000000e+00, %1080 ]
  %1093 = fcmp ult float %1092, 0x3F50624DE0000000
  br i1 %1093, label %1247, label %1094

1094:                                             ; preds = %1091
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %36) #18
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %36, i8 0, i64 12, i1 false)
  %1095 = load i32, ptr %469, align 8, !tbaa !159
  %1096 = and i32 %1095, 2
  %1097 = icmp eq i32 %1096, 0
  br i1 %1097, label %1102, label %1098

1098:                                             ; preds = %1094
  %1099 = call zeroext i8 @BKE_scene_use_new_shading_nodes(ptr noundef %0) #18
  %1100 = icmp eq i8 %1099, 0
  %1101 = zext i1 %1100 to i32
  br label %1102

1102:                                             ; preds = %1098, %1094
  %1103 = phi i32 [ 0, %1094 ], [ %1101, %1098 ]
  %1104 = icmp eq i32 %1103, 0
  br i1 %1104, label %1143, label %1105

1105:                                             ; preds = %1102
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %37) #18
  store float 1.000000e+00, ptr %37, align 4, !tbaa !123
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %38) #18
  %1106 = load ptr, ptr %1046, align 8, !tbaa !65
  %1107 = getelementptr inbounds %struct.DerivedMesh, ptr %1106, i64 0, i32 31
  %1108 = load ptr, ptr %1107, align 8, !tbaa !278
  %1109 = call ptr %1108(ptr noundef %1106) #18
  %1110 = load float, ptr %1109, align 4, !tbaa !123
  store float %1110, ptr %38, align 4, !tbaa !123
  %1111 = getelementptr inbounds float, ptr %1109, i64 1
  %1112 = load float, ptr %1111, align 4, !tbaa !123
  store float %1112, ptr %323, align 4, !tbaa !123
  %1113 = getelementptr inbounds float, ptr %1109, i64 2
  %1114 = load float, ptr %1113, align 4, !tbaa !123
  store float %1114, ptr %324, align 4, !tbaa !123
  call void @mul_m4_v3(ptr noundef nonnull %1047, ptr noundef nonnull %38) #18
  %1115 = load ptr, ptr %1041, align 8, !tbaa !92
  %1116 = load ptr, ptr %1042, align 8, !tbaa !90
  %1117 = getelementptr inbounds i32, ptr %1116, i64 %1057
  %1118 = load i32, ptr %1117, align 4, !tbaa !205
  %1119 = sext i32 %1118 to i64
  %1120 = getelementptr inbounds %struct.Vec3f, ptr %1115, i64 %1119
  %1121 = load ptr, ptr %1046, align 8, !tbaa !65
  %1122 = getelementptr inbounds %struct.DerivedMesh, ptr %1121, i64 0, i32 33
  %1123 = load ptr, ptr %1122, align 8, !tbaa !199
  %1124 = call ptr %1123(ptr noundef %1121) #18
  br i1 %1048, label %1125, label %1140

1125:                                             ; preds = %1105
  br i1 %1049, label %1142, label %1126

1126:                                             ; preds = %1125
  %1127 = getelementptr inbounds %struct.MFace, ptr %1124, i64 0, i32 4
  %1128 = load i16, ptr %1127, align 4, !tbaa !388
  %1129 = call ptr @give_totcolp(ptr noundef nonnull %409) #18
  %1130 = load i16, ptr %1129, align 2, !tbaa !279
  %1131 = icmp slt i16 %1128, %1130
  br i1 %1131, label %1132, label %1137

1132:                                             ; preds = %1126
  %1133 = sext i16 %1128 to i64
  %1134 = getelementptr inbounds ptr, ptr %520, i64 %1133
  %1135 = load ptr, ptr %1134, align 8, !tbaa !44
  %1136 = icmp ne ptr %1135, null
  br label %1137

1137:                                             ; preds = %1132, %1126
  %1138 = phi ptr [ null, %1126 ], [ %1135, %1132 ]
  %1139 = phi i1 [ false, %1126 ], [ %1136, %1132 ]
  br i1 %1139, label %1140, label %1142

1140:                                             ; preds = %1137, %1105
  %1141 = phi ptr [ %1138, %1137 ], [ %522, %1105 ]
  call void @RE_sample_material_color(ptr noundef %1141, ptr noundef nonnull %36, ptr noundef nonnull %37, ptr noundef %1120, ptr noundef nonnull %38, i32 noundef 0, i16 noundef signext 0, ptr noundef %1121, ptr noundef nonnull %409) #18
  br label %1142

1142:                                             ; preds = %1125, %1137, %1140
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %38) #18
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %37) #18
  br label %1143

1143:                                             ; preds = %1142, %1102
  %1144 = load i16, ptr %1045, align 8, !tbaa !168
  %1145 = icmp eq i16 %1144, 2
  br i1 %1145, label %1146, label %1153

1146:                                             ; preds = %1143
  %1147 = load ptr, ptr %1050, align 8, !tbaa !70
  %1148 = fsub float 1.000000e+00, %1092
  %1149 = call zeroext i8 @do_colorband(ptr noundef %1147, float noundef %1148, ptr noundef nonnull %35) #18
  %1150 = icmp eq i8 %1149, 0
  br i1 %1150, label %1153, label %1151

1151:                                             ; preds = %1146
  %1152 = load float, ptr %325, align 4, !tbaa !123
  br label %1153

1153:                                             ; preds = %1151, %1146, %1143
  %1154 = phi float [ %1152, %1151 ], [ %1092, %1146 ], [ %1092, %1143 ]
  %1155 = load i32, ptr %469, align 8, !tbaa !159
  %1156 = and i32 %1155, 3840
  %1157 = icmp eq i32 %1156, 0
  br i1 %1157, label %1202, label %1158

1158:                                             ; preds = %1153
  %1159 = load ptr, ptr %1051, align 8, !tbaa !101
  %1160 = icmp eq ptr %1159, null
  br i1 %1160, label %1171, label %1161

1161:                                             ; preds = %1158
  %1162 = getelementptr inbounds %struct.Vec3f, ptr %1159, i64 %1057
  %1163 = load float, ptr %1162, align 4, !tbaa !123
  %1164 = fsub float %1036, %1163
  %1165 = getelementptr inbounds float, ptr %1162, i64 1
  %1166 = load float, ptr %1165, align 4, !tbaa !123
  %1167 = fsub float %1035, %1166
  %1168 = getelementptr inbounds float, ptr %1162, i64 2
  %1169 = load float, ptr %1168, align 4, !tbaa !123
  %1170 = fsub float %1034, %1169
  br label %1171

1171:                                             ; preds = %1161, %1158
  %1172 = phi float [ %1170, %1161 ], [ %1034, %1158 ]
  %1173 = phi float [ %1167, %1161 ], [ %1035, %1158 ]
  %1174 = phi float [ %1164, %1161 ], [ %1036, %1158 ]
  %1175 = fmul float %1173, %1173
  %1176 = call float @llvm.fmuladd.f32(float %1174, float %1174, float %1175)
  %1177 = call float @llvm.fmuladd.f32(float %1172, float %1172, float %1176)
  %1178 = call float @sqrtf(float noundef %1177) #18
  %1179 = load i16, ptr %312, align 2, !tbaa !43
  %1180 = icmp eq i16 %1179, 0
  br i1 %1180, label %1181, label %1202

1181:                                             ; preds = %1171
  %1182 = load i32, ptr %469, align 8, !tbaa !159
  %1183 = and i32 %1182, 256
  %1184 = icmp eq i32 %1183, 0
  br i1 %1184, label %1202, label %1185

1185:                                             ; preds = %1181
  %1186 = load ptr, ptr %1052, align 8, !tbaa !359
  %1187 = icmp eq ptr %1186, null
  br i1 %1187, label %1202, label %1188

1188:                                             ; preds = %1185
  %1189 = trunc i64 %1057 to i32
  %1190 = shl nsw i32 %1189, 2
  %1191 = zext nneg i32 %1190 to i64
  %1192 = getelementptr inbounds float, ptr %1186, i64 %1191
  store float %1174, ptr %1192, align 4, !tbaa !123
  %1193 = getelementptr inbounds float, ptr %1192, i64 1
  store float %1173, ptr %1193, align 4, !tbaa !123
  %1194 = getelementptr inbounds float, ptr %1192, i64 2
  store float %1172, ptr %1194, align 4, !tbaa !123
  %1195 = fdiv float 1.000000e+00, %1178
  %1196 = fmul float %1174, %1195
  store float %1196, ptr %1192, align 4, !tbaa !123
  %1197 = fmul float %1173, %1195
  store float %1197, ptr %1193, align 4, !tbaa !123
  %1198 = fmul float %1172, %1195
  store float %1198, ptr %1194, align 4, !tbaa !123
  %1199 = or disjoint i32 %1190, 3
  %1200 = zext nneg i32 %1199 to i64
  %1201 = getelementptr inbounds float, ptr %1186, i64 %1200
  store float %1178, ptr %1201, align 4, !tbaa !123
  br label %1202

1202:                                             ; preds = %1188, %1185, %1181, %1171, %1153
  %1203 = phi float [ 0.000000e+00, %1153 ], [ %1178, %1188 ], [ %1178, %1185 ], [ %1178, %1181 ], [ %1178, %1171 ]
  %1204 = load i16, ptr %312, align 2, !tbaa !43
  switch i16 %1204, label %1244 [
    i16 0, label %1205
    i16 1, label %1231
    i16 3, label %1231
  ]

1205:                                             ; preds = %1202
  %1206 = load i16, ptr %1045, align 8, !tbaa !168
  %1207 = icmp eq i16 %1206, 2
  br i1 %1207, label %1208, label %1216

1208:                                             ; preds = %1205
  %1209 = load i32, ptr %469, align 8, !tbaa !159
  %1210 = and i32 %1209, 16
  %1211 = icmp eq i32 %1210, 0
  br i1 %1211, label %1212, label %1216

1212:                                             ; preds = %1208
  %1213 = load float, ptr %35, align 16, !tbaa !123
  store float %1213, ptr %36, align 4, !tbaa !123
  %1214 = load float, ptr %328, align 4, !tbaa !123
  store float %1214, ptr %329, align 4, !tbaa !123
  %1215 = load float, ptr %330, align 8, !tbaa !123
  store float %1215, ptr %331, align 4, !tbaa !123
  br label %1244

1216:                                             ; preds = %1208, %1205
  %1217 = load i32, ptr %469, align 8, !tbaa !159
  %1218 = and i32 %1217, 2
  %1219 = icmp eq i32 %1218, 0
  br i1 %1219, label %1224, label %1220

1220:                                             ; preds = %1216
  %1221 = call zeroext i8 @BKE_scene_use_new_shading_nodes(ptr noundef %0) #18
  %1222 = icmp eq i8 %1221, 0
  %1223 = zext i1 %1222 to i32
  br label %1224

1224:                                             ; preds = %1220, %1216
  %1225 = phi i32 [ 0, %1216 ], [ %1223, %1220 ]
  %1226 = icmp eq i32 %1225, 0
  br i1 %1226, label %1227, label %1244

1227:                                             ; preds = %1224
  %1228 = load float, ptr %1053, align 8, !tbaa !162
  store float %1228, ptr %36, align 4, !tbaa !123
  %1229 = load float, ptr %1054, align 4, !tbaa !163
  store float %1229, ptr %326, align 4, !tbaa !123
  %1230 = load float, ptr %1055, align 8, !tbaa !164
  store float %1230, ptr %327, align 4, !tbaa !123
  br label %1244

1231:                                             ; preds = %1202, %1202
  %1232 = fsub float %1000, %1078
  %1233 = fdiv float %1232, %1000
  %1234 = call float @sqrtf(float noundef %1233) #18
  %1235 = fsub float 1.000000e+00, %1234
  %1236 = fmul float %1000, %1235
  %1237 = fsub float %1000, %1236
  %1238 = load ptr, ptr %1003, align 8, !tbaa !86
  %1239 = getelementptr inbounds %struct.PaintBakeNormal, ptr %1238, i64 %1057, i32 1
  %1240 = load float, ptr %1239, align 4, !tbaa !338
  %1241 = fdiv float %1237, %1240
  %1242 = fcmp olt float %1241, 0.000000e+00
  %1243 = select i1 %1242, float 0.000000e+00, float %1241
  br label %1244

1244:                                             ; preds = %1231, %1227, %1224, %1212, %1202
  %1245 = phi float [ 0.000000e+00, %1224 ], [ 0.000000e+00, %1227 ], [ 0.000000e+00, %1212 ], [ %1243, %1231 ], [ 0.000000e+00, %1202 ]
  %1246 = trunc i64 %1057 to i32
  call fastcc void @dynamicPaint_updatePointData(ptr noundef %2, i32 noundef %1246, ptr noundef %439, ptr noundef nonnull %36, float noundef %1154, float noundef %1245, float noundef %1203, float noundef %3)
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %36) #18
  br label %1247

1247:                                             ; preds = %1244, %1091, %1056
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %35) #18
  %1248 = add nuw nsw i64 %1057, 1
  %1249 = load i32, ptr %1037, align 8, !tbaa !194
  %1250 = sext i32 %1249 to i64
  %1251 = icmp slt i64 %1248, %1250
  br i1 %1251, label %1056, label %2145, !llvm.loop !389

1252:                                             ; preds = %519, %993
  %1253 = icmp eq ptr %409, %1
  br i1 %1253, label %2145, label %1254

1254:                                             ; preds = %1252
  %1255 = load ptr, ptr %45, align 8, !tbaa !72
  %1256 = getelementptr inbounds %struct.PaintSurfaceData, ptr %1255, i64 0, i32 3
  %1257 = load ptr, ptr %1256, align 8, !tbaa !85
  %1258 = load i32, ptr %469, align 8, !tbaa !159
  %1259 = and i32 %1258, 3840
  %1260 = icmp eq i32 %1259, 0
  br i1 %1260, label %1336, label %1261

1261:                                             ; preds = %1254
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %14) #18
  %1262 = load float, ptr %294, align 4, !tbaa !357
  %1263 = load i32, ptr %292, align 8, !tbaa !246
  %1264 = fsub float %1262, %3
  %1265 = fcmp olt float %1264, 0.000000e+00
  %1266 = fadd float %1264, 1.000000e+00
  %1267 = select i1 %1265, float %1266, float %1264
  %1268 = sext i1 %1265 to i32
  %1269 = add nsw i32 %1263, %1268
  store i32 %1269, ptr %292, align 8, !tbaa !246
  store float %1267, ptr %294, align 4, !tbaa !357
  %1270 = call float @BKE_scene_frame_get(ptr noundef %0) #18
  %1271 = call fastcc i32 @subframe_updateObject(ptr noundef %0, ptr noundef nonnull %409, i32 noundef 2, i32 noundef 5, float noundef %1270), !range !360
  %1272 = getelementptr inbounds %struct.DynamicPaintBrushSettings, ptr %439, i64 0, i32 1
  %1273 = load ptr, ptr %1272, align 8, !tbaa !65
  %1274 = call ptr @CDDM_copy(ptr noundef %1273) #18
  %1275 = getelementptr inbounds %struct.DerivedMesh, ptr %1274, i64 0, i32 23
  %1276 = load ptr, ptr %1275, align 8, !tbaa !225
  %1277 = call i32 %1276(ptr noundef %1274) #18
  %1278 = getelementptr inbounds %struct.DerivedMesh, ptr %1274, i64 0, i32 31
  %1279 = load ptr, ptr %1278, align 8, !tbaa !278
  %1280 = call ptr %1279(ptr noundef %1274) #18
  %1281 = getelementptr inbounds %struct.Object, ptr %409, i64 0, i32 47
  call void @copy_m4_m4(ptr noundef nonnull %14, ptr noundef nonnull %1281) #18
  store i32 %1263, ptr %292, align 8, !tbaa !246
  store float %1262, ptr %294, align 4, !tbaa !357
  %1282 = call float @BKE_scene_frame_get(ptr noundef %0) #18
  %1283 = call fastcc i32 @subframe_updateObject(ptr noundef %0, ptr noundef nonnull %409, i32 noundef 2, i32 noundef 5, float noundef %1282), !range !360
  %1284 = load ptr, ptr %1272, align 8, !tbaa !65
  %1285 = getelementptr inbounds %struct.DerivedMesh, ptr %1284, i64 0, i32 23
  %1286 = load ptr, ptr %1285, align 8, !tbaa !225
  %1287 = call i32 %1286(ptr noundef %1284) #18
  %1288 = load ptr, ptr %1278, align 8, !tbaa !278
  %1289 = call ptr %1288(ptr noundef %1284) #18
  %1290 = load ptr, ptr @MEM_mallocN, align 8, !tbaa !44
  %1291 = sext i32 %1287 to i64
  %1292 = mul nsw i64 %1291, 12
  %1293 = call ptr %1290(i64 noundef %1292, ptr noundef nonnull @.str.55) #18
  %1294 = icmp eq ptr %1293, null
  br i1 %1294, label %1335, label %1295

1295:                                             ; preds = %1261
  %1296 = icmp eq i32 %1277, %1287
  %1297 = select i1 %1296, ptr %1280, ptr %1289
  %1298 = icmp sgt i32 %1287, 0
  br i1 %1298, label %1299, label %1332

1299:                                             ; preds = %1295
  %1300 = zext nneg i32 %1287 to i64
  br label %1301

1301:                                             ; preds = %1299, %1301
  %1302 = phi i64 [ 0, %1299 ], [ %1330, %1301 ]
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %15) #18
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %16) #18
  %1303 = getelementptr inbounds %struct.MVert, ptr %1297, i64 %1302
  %1304 = load float, ptr %1303, align 4, !tbaa !123
  store float %1304, ptr %15, align 4, !tbaa !123
  %1305 = getelementptr inbounds float, ptr %1303, i64 1
  %1306 = load float, ptr %1305, align 4, !tbaa !123
  store float %1306, ptr %342, align 4, !tbaa !123
  %1307 = getelementptr inbounds float, ptr %1303, i64 2
  %1308 = load float, ptr %1307, align 4, !tbaa !123
  store float %1308, ptr %343, align 4, !tbaa !123
  call void @mul_m4_v3(ptr noundef nonnull %14, ptr noundef nonnull %15) #18
  %1309 = getelementptr inbounds %struct.MVert, ptr %1289, i64 %1302
  %1310 = load float, ptr %1309, align 4, !tbaa !123
  store float %1310, ptr %16, align 4, !tbaa !123
  %1311 = getelementptr inbounds float, ptr %1309, i64 1
  %1312 = load float, ptr %1311, align 4, !tbaa !123
  store float %1312, ptr %344, align 4, !tbaa !123
  %1313 = getelementptr inbounds float, ptr %1309, i64 2
  %1314 = load float, ptr %1313, align 4, !tbaa !123
  store float %1314, ptr %345, align 4, !tbaa !123
  call void @mul_m4_v3(ptr noundef nonnull %1281, ptr noundef nonnull %16) #18
  %1315 = getelementptr inbounds %struct.Vec3f, ptr %1293, i64 %1302
  %1316 = load float, ptr %16, align 4, !tbaa !123
  %1317 = load float, ptr %15, align 4, !tbaa !123
  %1318 = fsub float %1316, %1317
  store float %1318, ptr %1315, align 4, !tbaa !123
  %1319 = load float, ptr %344, align 4, !tbaa !123
  %1320 = load float, ptr %342, align 4, !tbaa !123
  %1321 = fsub float %1319, %1320
  %1322 = getelementptr inbounds float, ptr %1315, i64 1
  store float %1321, ptr %1322, align 4, !tbaa !123
  %1323 = load float, ptr %345, align 4, !tbaa !123
  %1324 = load float, ptr %343, align 4, !tbaa !123
  %1325 = fsub float %1323, %1324
  %1326 = getelementptr inbounds float, ptr %1315, i64 2
  store float %1325, ptr %1326, align 4, !tbaa !123
  %1327 = fmul float %346, %1318
  store float %1327, ptr %1315, align 4, !tbaa !123
  %1328 = fmul float %346, %1321
  store float %1328, ptr %1322, align 4, !tbaa !123
  %1329 = fmul float %346, %1325
  store float %1329, ptr %1326, align 4, !tbaa !123
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %16) #18
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %15) #18
  %1330 = add nuw nsw i64 %1302, 1
  %1331 = icmp eq i64 %1330, %1300
  br i1 %1331, label %1332, label %1301, !llvm.loop !390

1332:                                             ; preds = %1301, %1295
  %1333 = getelementptr inbounds %struct.DerivedMesh, ptr %1274, i64 0, i32 95
  %1334 = load ptr, ptr %1333, align 8, !tbaa !67
  call void %1334(ptr noundef %1274) #18
  br label %1335

1335:                                             ; preds = %1332, %1261
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %14) #18
  br label %1336

1336:                                             ; preds = %1335, %1254
  %1337 = phi ptr [ null, %1254 ], [ %1293, %1335 ]
  %1338 = getelementptr inbounds %struct.DynamicPaintBrushSettings, ptr %439, i64 0, i32 1
  %1339 = load ptr, ptr %1338, align 8, !tbaa !65
  %1340 = icmp eq ptr %1339, null
  br i1 %1340, label %2145, label %1341

1341:                                             ; preds = %1336
  call void @llvm.lifetime.start.p0(i64 72, ptr nonnull %17) #18
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %17, i8 0, i64 72, i1 false)
  %1342 = getelementptr inbounds %struct.DynamicPaintBrushSettings, ptr %439, i64 0, i32 13
  %1343 = load float, ptr %1342, align 4, !tbaa !167
  %1344 = load float, ptr %347, align 4, !tbaa !122
  %1345 = fmul float %1343, %1344
  call void @llvm.lifetime.start.p0(i64 28, ptr nonnull %18) #18
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(28) %18, i8 0, i64 28, i1 false)
  %1346 = getelementptr inbounds %struct.PaintBakeData, ptr %1257, i64 0, i32 7
  %1347 = load ptr, ptr %1346, align 8, !tbaa !94
  %1348 = load ptr, ptr %1338, align 8, !tbaa !65
  %1349 = call ptr @CDDM_copy(ptr noundef %1348) #18
  %1350 = getelementptr inbounds %struct.DerivedMesh, ptr %1349, i64 0, i32 31
  %1351 = load ptr, ptr %1350, align 8, !tbaa !278
  %1352 = call ptr %1351(ptr noundef %1349) #18
  %1353 = getelementptr inbounds %struct.DerivedMesh, ptr %1349, i64 0, i32 33
  %1354 = load ptr, ptr %1353, align 8, !tbaa !199
  %1355 = call ptr %1354(ptr noundef %1349) #18
  %1356 = getelementptr inbounds %struct.DerivedMesh, ptr %1349, i64 0, i32 23
  %1357 = load ptr, ptr %1356, align 8, !tbaa !225
  %1358 = call i32 %1357(ptr noundef %1349) #18
  %1359 = load i32, ptr %18, align 4, !tbaa !333
  %1360 = icmp sgt i32 %1358, 0
  br i1 %1360, label %1361, label %1445

1361:                                             ; preds = %1341
  %1362 = getelementptr inbounds %struct.Object, ptr %409, i64 0, i32 47
  %1363 = zext nneg i32 %1358 to i64
  br label %1364

1364:                                             ; preds = %1361, %1439
  %1365 = phi i64 [ 0, %1361 ], [ %1443, %1439 ]
  %1366 = phi float [ 0.000000e+00, %1361 ], [ %1442, %1439 ]
  %1367 = phi float [ 0.000000e+00, %1361 ], [ %1441, %1439 ]
  %1368 = phi float [ 0.000000e+00, %1361 ], [ %1440, %1439 ]
  %1369 = phi i32 [ %1359, %1361 ], [ %1395, %1439 ]
  %1370 = getelementptr inbounds %struct.MVert, ptr %1352, i64 %1365
  call void @mul_m4_v3(ptr noundef nonnull %1362, ptr noundef %1370) #18
  %1371 = icmp eq i32 %1369, 0
  br i1 %1371, label %1372, label %1378

1372:                                             ; preds = %1364
  %1373 = load float, ptr %1370, align 4, !tbaa !123
  store float %1373, ptr %348, align 4, !tbaa !123
  %1374 = getelementptr inbounds float, ptr %1370, i64 1
  %1375 = load float, ptr %1374, align 4, !tbaa !123
  store float %1375, ptr %349, align 4, !tbaa !123
  %1376 = getelementptr inbounds float, ptr %1370, i64 2
  %1377 = load float, ptr %1376, align 4, !tbaa !123
  store float %1377, ptr %350, align 4, !tbaa !123
  store float %1373, ptr %351, align 4, !tbaa !123
  store float %1375, ptr %352, align 4, !tbaa !123
  store float %1377, ptr %353, align 4, !tbaa !123
  br label %1394

1378:                                             ; preds = %1364, %1391
  %1379 = phi i64 [ %1392, %1391 ], [ 2, %1364 ]
  %1380 = getelementptr inbounds float, ptr %1370, i64 %1379
  %1381 = load float, ptr %1380, align 4, !tbaa !123
  %1382 = getelementptr inbounds %struct.Bounds3D, ptr %18, i64 0, i32 1, i64 %1379
  %1383 = load float, ptr %1382, align 4, !tbaa !123
  %1384 = fcmp olt float %1381, %1383
  br i1 %1384, label %1385, label %1386

1385:                                             ; preds = %1378
  store float %1381, ptr %1382, align 4, !tbaa !123
  br label %1386

1386:                                             ; preds = %1385, %1378
  %1387 = getelementptr inbounds %struct.Bounds3D, ptr %18, i64 0, i32 2, i64 %1379
  %1388 = load float, ptr %1387, align 4, !tbaa !123
  %1389 = fcmp ogt float %1381, %1388
  br i1 %1389, label %1390, label %1391

1390:                                             ; preds = %1386
  store float %1381, ptr %1387, align 4, !tbaa !123
  br label %1391

1391:                                             ; preds = %1390, %1386
  %1392 = add nsw i64 %1379, -1
  %1393 = icmp eq i64 %1379, 0
  br i1 %1393, label %1394, label %1378, !llvm.loop !334

1394:                                             ; preds = %1391, %1372
  %1395 = phi i32 [ 1, %1372 ], [ %1369, %1391 ]
  %1396 = load i32, ptr %469, align 8, !tbaa !159
  %1397 = and i32 %1396, 32
  %1398 = icmp eq i32 %1397, 0
  br i1 %1398, label %1439, label %1399

1399:                                             ; preds = %1394
  %1400 = load i32, ptr %523, align 4, !tbaa !160
  %1401 = icmp eq i32 %1400, 0
  br i1 %1401, label %1439, label %1402

1402:                                             ; preds = %1399
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %19) #18
  %1403 = getelementptr inbounds %struct.MVert, ptr %1352, i64 %1365, i32 1
  %1404 = load i16, ptr %1403, align 2, !tbaa !279
  %1405 = sitofp i16 %1404 to float
  %1406 = fmul float %1405, 0x3F00002000000000
  store float %1406, ptr %19, align 4, !tbaa !123
  %1407 = getelementptr inbounds i16, ptr %1403, i64 1
  %1408 = load i16, ptr %1407, align 2, !tbaa !279
  %1409 = sitofp i16 %1408 to float
  %1410 = fmul float %1409, 0x3F00002000000000
  store float %1410, ptr %354, align 4, !tbaa !123
  %1411 = getelementptr inbounds i16, ptr %1403, i64 2
  %1412 = load i16, ptr %1411, align 2, !tbaa !279
  %1413 = sitofp i16 %1412 to float
  %1414 = fmul float %1413, 0x3F00002000000000
  store float %1414, ptr %355, align 4, !tbaa !123
  call void @mul_mat3_m4_v3(ptr noundef nonnull %1362, ptr noundef nonnull %19) #18
  %1415 = load float, ptr %19, align 4, !tbaa !123
  %1416 = load float, ptr %354, align 4, !tbaa !123
  %1417 = fmul float %1416, %1416
  %1418 = call float @llvm.fmuladd.f32(float %1415, float %1415, float %1417)
  %1419 = load float, ptr %355, align 4, !tbaa !123
  %1420 = call float @llvm.fmuladd.f32(float %1419, float %1419, float %1418)
  %1421 = fcmp ogt float %1420, 0x38AA95A5C0000000
  br i1 %1421, label %1422, label %1431

1422:                                             ; preds = %1402
  %1423 = call float @sqrtf(float noundef %1420) #18
  %1424 = fdiv float 1.000000e+00, %1423
  %1425 = load float, ptr %19, align 4, !tbaa !123
  %1426 = fmul float %1425, %1424
  store float %1426, ptr %19, align 4, !tbaa !123
  %1427 = load float, ptr %354, align 4, !tbaa !123
  %1428 = fmul float %1424, %1427
  store float %1428, ptr %354, align 4, !tbaa !123
  %1429 = load float, ptr %355, align 4, !tbaa !123
  %1430 = fmul float %1424, %1429
  br label %1432

1431:                                             ; preds = %1402
  store float 0.000000e+00, ptr %19, align 4, !tbaa !123
  store float 0.000000e+00, ptr %354, align 4, !tbaa !123
  br label %1432

1432:                                             ; preds = %1431, %1422
  %1433 = phi float [ 0.000000e+00, %1431 ], [ %1430, %1422 ]
  store float %1433, ptr %355, align 4, !tbaa !123
  %1434 = load float, ptr %19, align 4, !tbaa !123
  %1435 = fadd float %1368, %1434
  %1436 = load float, ptr %354, align 4, !tbaa !123
  %1437 = fadd float %1367, %1436
  %1438 = fadd float %1366, %1433
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %19) #18
  br label %1439

1439:                                             ; preds = %1432, %1399, %1394
  %1440 = phi float [ %1368, %1394 ], [ %1368, %1399 ], [ %1435, %1432 ]
  %1441 = phi float [ %1367, %1394 ], [ %1367, %1399 ], [ %1437, %1432 ]
  %1442 = phi float [ %1366, %1394 ], [ %1366, %1399 ], [ %1438, %1432 ]
  %1443 = add nuw nsw i64 %1365, 1
  %1444 = icmp eq i64 %1443, %1363
  br i1 %1444, label %1445, label %1364, !llvm.loop !391

1445:                                             ; preds = %1439, %1341
  %1446 = phi i32 [ %1359, %1341 ], [ %1395, %1439 ]
  %1447 = phi float [ 0.000000e+00, %1341 ], [ %1440, %1439 ]
  %1448 = phi float [ 0.000000e+00, %1341 ], [ %1441, %1439 ]
  %1449 = phi float [ 0.000000e+00, %1341 ], [ %1442, %1439 ]
  store i32 %1446, ptr %18, align 4, !tbaa !333
  %1450 = load i32, ptr %469, align 8, !tbaa !159
  %1451 = and i32 %1450, 32
  %1452 = icmp eq i32 %1451, 0
  br i1 %1452, label %1483, label %1453

1453:                                             ; preds = %1445
  %1454 = load i32, ptr %523, align 4, !tbaa !160
  %1455 = icmp eq i32 %1454, 0
  br i1 %1455, label %1483, label %1456

1456:                                             ; preds = %1453
  %1457 = sitofp i32 %1358 to float
  %1458 = fdiv float 1.000000e+00, %1457
  %1459 = fmul float %1458, %1447
  %1460 = fmul float %1458, %1448
  %1461 = fmul float %1458, %1449
  %1462 = fcmp olt float %1459, %1460
  %1463 = select i1 %1462, float %1459, float %1460
  %1464 = fcmp olt float %1463, %1461
  br i1 %1464, label %1465, label %1470

1465:                                             ; preds = %1456
  br i1 %1462, label %1466, label %1468

1466:                                             ; preds = %1465
  %1467 = fcmp une float %1459, 0.000000e+00
  br i1 %1467, label %1472, label %1483

1468:                                             ; preds = %1465
  %1469 = fcmp une float %1460, 0.000000e+00
  br i1 %1469, label %1472, label %1483

1470:                                             ; preds = %1456
  %1471 = fcmp une float %1461, 0.000000e+00
  br i1 %1471, label %1472, label %1483

1472:                                             ; preds = %1470, %1468, %1466
  %1473 = fmul float %1460, %1460
  %1474 = call float @llvm.fmuladd.f32(float %1459, float %1459, float %1473)
  %1475 = call float @llvm.fmuladd.f32(float %1461, float %1461, float %1474)
  %1476 = fcmp ogt float %1475, 0x38AA95A5C0000000
  br i1 %1476, label %1477, label %1483

1477:                                             ; preds = %1472
  %1478 = call float @sqrtf(float noundef %1475) #18
  %1479 = fdiv float 1.000000e+00, %1478
  %1480 = fmul float %1459, %1479
  %1481 = fmul float %1460, %1479
  %1482 = fmul float %1461, %1479
  br label %1483

1483:                                             ; preds = %1477, %1472, %1470, %1468, %1466, %1453, %1445
  %1484 = phi float [ %1447, %1445 ], [ %1447, %1453 ], [ %1459, %1470 ], [ %1459, %1468 ], [ %1459, %1466 ], [ %1480, %1477 ], [ 0.000000e+00, %1472 ]
  %1485 = phi float [ %1448, %1445 ], [ %1448, %1453 ], [ %1460, %1470 ], [ %1460, %1468 ], [ %1460, %1466 ], [ %1481, %1477 ], [ 0.000000e+00, %1472 ]
  %1486 = phi float [ %1449, %1445 ], [ %1449, %1453 ], [ 1.000000e+00, %1470 ], [ 1.000000e+00, %1468 ], [ 1.000000e+00, %1466 ], [ %1482, %1477 ], [ 0.000000e+00, %1472 ]
  %1487 = icmp eq ptr %1347, null
  br i1 %1487, label %2139, label %1488

1488:                                             ; preds = %1483
  %1489 = getelementptr inbounds %struct.VolumeGrid, ptr %1347, i64 0, i32 1
  %1490 = load i32, ptr %523, align 4, !tbaa !160
  switch i32 %1490, label %1537 [
    i32 0, label %1491
    i32 1, label %1513
    i32 2, label %1513
  ]

1491:                                             ; preds = %1488
  %1492 = load i32, ptr %1489, align 4, !tbaa !333
  %1493 = icmp eq i32 %1492, 0
  %1494 = load i32, ptr %18, align 4
  %1495 = icmp eq i32 %1494, 0
  %1496 = select i1 %1493, i1 true, i1 %1495
  br i1 %1496, label %2139, label %1500

1497:                                             ; preds = %1507
  %1498 = add nsw i64 %1501, -1
  %1499 = icmp eq i64 %1501, 0
  br i1 %1499, label %1537, label %1500, !llvm.loop !392

1500:                                             ; preds = %1491, %1497
  %1501 = phi i64 [ %1498, %1497 ], [ 2, %1491 ]
  %1502 = getelementptr inbounds %struct.VolumeGrid, ptr %1347, i64 0, i32 1, i32 1, i64 %1501
  %1503 = load float, ptr %1502, align 4, !tbaa !123
  %1504 = getelementptr inbounds %struct.Bounds3D, ptr %18, i64 0, i32 2, i64 %1501
  %1505 = load float, ptr %1504, align 4, !tbaa !123
  %1506 = fcmp ugt float %1503, %1505
  br i1 %1506, label %2139, label %1507

1507:                                             ; preds = %1500
  %1508 = getelementptr inbounds %struct.VolumeGrid, ptr %1347, i64 0, i32 1, i32 2, i64 %1501
  %1509 = load float, ptr %1508, align 4, !tbaa !123
  %1510 = getelementptr inbounds %struct.Bounds3D, ptr %18, i64 0, i32 1, i64 %1501
  %1511 = load float, ptr %1510, align 4, !tbaa !123
  %1512 = fcmp ult float %1509, %1511
  br i1 %1512, label %2139, label %1497

1513:                                             ; preds = %1488, %1488
  %1514 = load i32, ptr %1489, align 4, !tbaa !333
  %1515 = icmp eq i32 %1514, 0
  %1516 = load i32, ptr %18, align 4
  %1517 = icmp eq i32 %1516, 0
  %1518 = select i1 %1515, i1 true, i1 %1517
  br i1 %1518, label %2139, label %1522

1519:                                             ; preds = %1530
  %1520 = add nsw i64 %1523, -1
  %1521 = icmp eq i64 %1523, 0
  br i1 %1521, label %1537, label %1522, !llvm.loop !379

1522:                                             ; preds = %1513, %1519
  %1523 = phi i64 [ %1520, %1519 ], [ 2, %1513 ]
  %1524 = getelementptr inbounds %struct.VolumeGrid, ptr %1347, i64 0, i32 1, i32 1, i64 %1523
  %1525 = load float, ptr %1524, align 4, !tbaa !123
  %1526 = getelementptr inbounds %struct.Bounds3D, ptr %18, i64 0, i32 2, i64 %1523
  %1527 = load float, ptr %1526, align 4, !tbaa !123
  %1528 = fadd float %1345, %1527
  %1529 = fcmp ugt float %1525, %1528
  br i1 %1529, label %2139, label %1530

1530:                                             ; preds = %1522
  %1531 = getelementptr inbounds %struct.VolumeGrid, ptr %1347, i64 0, i32 1, i32 2, i64 %1523
  %1532 = load float, ptr %1531, align 4, !tbaa !123
  %1533 = getelementptr inbounds %struct.Bounds3D, ptr %18, i64 0, i32 1, i64 %1523
  %1534 = load float, ptr %1533, align 4, !tbaa !123
  %1535 = fsub float %1534, %1345
  %1536 = fcmp ult float %1532, %1535
  br i1 %1536, label %2139, label %1519

1537:                                             ; preds = %1519, %1497, %1488
  %1538 = call ptr @bvhtree_from_mesh_faces(ptr noundef nonnull %17, ptr noundef %1349, float noundef 0.000000e+00, i32 noundef 4, i32 noundef 8) #18
  %1539 = icmp eq ptr %1538, null
  br i1 %1539, label %2139, label %1540

1540:                                             ; preds = %1537
  %1541 = load i32, ptr %1347, align 8, !tbaa !205
  %1542 = getelementptr inbounds [3 x i32], ptr %1347, i64 0, i64 1
  %1543 = load i32, ptr %1542, align 4, !tbaa !205
  %1544 = mul nsw i32 %1543, %1541
  %1545 = getelementptr inbounds [3 x i32], ptr %1347, i64 0, i64 2
  %1546 = load i32, ptr %1545, align 8, !tbaa !205
  %1547 = mul nsw i32 %1544, %1546
  %1548 = icmp sgt i32 %1547, 0
  br i1 %1548, label %1549, label %2139

1549:                                             ; preds = %1540
  %1550 = getelementptr inbounds %struct.VolumeGrid, ptr %1347, i64 0, i32 4
  %1551 = getelementptr inbounds %struct.VolumeGrid, ptr %1347, i64 0, i32 2
  %1552 = getelementptr inbounds %struct.VolumeGrid, ptr %1347, i64 0, i32 5
  %1553 = getelementptr inbounds %struct.VolumeGrid, ptr %1347, i64 0, i32 3
  %1554 = getelementptr inbounds %struct.PaintBakeData, ptr %1257, i64 0, i32 2
  %1555 = getelementptr inbounds %struct.PaintBakeData, ptr %1257, i64 0, i32 3
  %1556 = getelementptr inbounds %struct.PaintBakeData, ptr %1257, i64 0, i32 1
  %1557 = fmul float %1345, %1345
  %1558 = getelementptr inbounds %struct.DynamicPaintBrushSettings, ptr %439, i64 0, i32 18
  %1559 = getelementptr inbounds %struct.DynamicPaintBrushSettings, ptr %439, i64 0, i32 16
  %1560 = getelementptr inbounds %struct.DynamicPaintBrushSettings, ptr %439, i64 0, i32 14
  %1561 = icmp ne ptr %1337, null
  %1562 = getelementptr inbounds %struct.PaintBakeData, ptr %1257, i64 0, i32 8
  %1563 = getelementptr inbounds %struct.PaintBakeData, ptr %1257, i64 0, i32 10
  %1564 = getelementptr inbounds %struct.DynamicPaintBrushSettings, ptr %439, i64 0, i32 6
  %1565 = getelementptr inbounds %struct.DynamicPaintBrushSettings, ptr %439, i64 0, i32 7
  %1566 = getelementptr inbounds %struct.DynamicPaintBrushSettings, ptr %439, i64 0, i32 8
  %1567 = icmp eq ptr %522, null
  %1568 = icmp eq ptr %520, null
  %1569 = getelementptr inbounds %struct.DynamicPaintBrushSettings, ptr %439, i64 0, i32 16
  %1570 = zext nneg i32 %1547 to i64
  br label %1571

1571:                                             ; preds = %1549, %2134
  %1572 = phi i64 [ 0, %1549 ], [ %2137, %2134 ]
  %1573 = phi i32 [ undef, %1549 ], [ %2136, %2134 ]
  %1574 = phi i16 [ undef, %1549 ], [ %2135, %2134 ]
  %1575 = load ptr, ptr %1550, align 8, !tbaa !98
  %1576 = getelementptr inbounds i32, ptr %1575, i64 %1572
  %1577 = load i32, ptr %1576, align 4, !tbaa !205
  %1578 = icmp eq i32 %1577, 0
  br i1 %1578, label %2134, label %1579

1579:                                             ; preds = %1571
  %1580 = load ptr, ptr %1551, align 8, !tbaa !95
  %1581 = getelementptr inbounds %struct.Bounds3D, ptr %1580, i64 %1572
  %1582 = load i32, ptr %523, align 4, !tbaa !160
  switch i32 %1582, label %1629 [
    i32 0, label %1583
    i32 1, label %1605
    i32 2, label %1605
  ]

1583:                                             ; preds = %1579
  %1584 = load i32, ptr %1581, align 4, !tbaa !333
  %1585 = icmp eq i32 %1584, 0
  %1586 = load i32, ptr %18, align 4
  %1587 = icmp eq i32 %1586, 0
  %1588 = select i1 %1585, i1 true, i1 %1587
  br i1 %1588, label %2134, label %1592

1589:                                             ; preds = %1599
  %1590 = add nsw i64 %1593, -1
  %1591 = icmp eq i64 %1593, 0
  br i1 %1591, label %1629, label %1592, !llvm.loop !392

1592:                                             ; preds = %1583, %1589
  %1593 = phi i64 [ %1590, %1589 ], [ 2, %1583 ]
  %1594 = getelementptr inbounds %struct.Bounds3D, ptr %1580, i64 %1572, i32 1, i64 %1593
  %1595 = load float, ptr %1594, align 4, !tbaa !123
  %1596 = getelementptr inbounds %struct.Bounds3D, ptr %18, i64 0, i32 2, i64 %1593
  %1597 = load float, ptr %1596, align 4, !tbaa !123
  %1598 = fcmp ugt float %1595, %1597
  br i1 %1598, label %2134, label %1599

1599:                                             ; preds = %1592
  %1600 = getelementptr inbounds %struct.Bounds3D, ptr %1580, i64 %1572, i32 2, i64 %1593
  %1601 = load float, ptr %1600, align 4, !tbaa !123
  %1602 = getelementptr inbounds %struct.Bounds3D, ptr %18, i64 0, i32 1, i64 %1593
  %1603 = load float, ptr %1602, align 4, !tbaa !123
  %1604 = fcmp ult float %1601, %1603
  br i1 %1604, label %2134, label %1589

1605:                                             ; preds = %1579, %1579
  %1606 = load i32, ptr %1581, align 4, !tbaa !333
  %1607 = icmp eq i32 %1606, 0
  %1608 = load i32, ptr %18, align 4
  %1609 = icmp eq i32 %1608, 0
  %1610 = select i1 %1607, i1 true, i1 %1609
  br i1 %1610, label %2134, label %1614

1611:                                             ; preds = %1622
  %1612 = add nsw i64 %1615, -1
  %1613 = icmp eq i64 %1615, 0
  br i1 %1613, label %1629, label %1614, !llvm.loop !379

1614:                                             ; preds = %1605, %1611
  %1615 = phi i64 [ %1612, %1611 ], [ 2, %1605 ]
  %1616 = getelementptr inbounds %struct.Bounds3D, ptr %1580, i64 %1572, i32 1, i64 %1615
  %1617 = load float, ptr %1616, align 4, !tbaa !123
  %1618 = getelementptr inbounds %struct.Bounds3D, ptr %18, i64 0, i32 2, i64 %1615
  %1619 = load float, ptr %1618, align 4, !tbaa !123
  %1620 = fadd float %1345, %1619
  %1621 = fcmp ugt float %1617, %1620
  br i1 %1621, label %2134, label %1622

1622:                                             ; preds = %1614
  %1623 = getelementptr inbounds %struct.Bounds3D, ptr %1580, i64 %1572, i32 2, i64 %1615
  %1624 = load float, ptr %1623, align 4, !tbaa !123
  %1625 = getelementptr inbounds %struct.Bounds3D, ptr %18, i64 0, i32 1, i64 %1615
  %1626 = load float, ptr %1625, align 4, !tbaa !123
  %1627 = fsub float %1626, %1345
  %1628 = fcmp ult float %1624, %1627
  br i1 %1628, label %2134, label %1611

1629:                                             ; preds = %1611, %1589, %1579
  %1630 = load ptr, ptr %1550, align 8, !tbaa !98
  %1631 = getelementptr inbounds i32, ptr %1630, i64 %1572
  %1632 = load i32, ptr %1631, align 4, !tbaa !205
  %1633 = icmp sgt i32 %1632, 0
  br i1 %1633, label %1634, label %2134

1634:                                             ; preds = %1629, %2128
  %1635 = phi i32 [ %2099, %2128 ], [ %1573, %1629 ]
  %1636 = phi i16 [ %2098, %2128 ], [ %1574, %1629 ]
  %1637 = phi i32 [ %2129, %2128 ], [ 0, %1629 ]
  %1638 = load ptr, ptr %1552, align 8, !tbaa !99
  %1639 = load ptr, ptr %1553, align 8, !tbaa !97
  %1640 = getelementptr inbounds i32, ptr %1639, i64 %1572
  %1641 = load i32, ptr %1640, align 4, !tbaa !205
  %1642 = add nsw i32 %1641, %1637
  %1643 = sext i32 %1642 to i64
  %1644 = getelementptr inbounds i32, ptr %1638, i64 %1643
  %1645 = load i32, ptr %1644, align 4, !tbaa !205
  %1646 = load ptr, ptr %1554, align 8, !tbaa !91
  %1647 = sext i32 %1645 to i64
  %1648 = getelementptr inbounds i32, ptr %1646, i64 %1647
  %1649 = load i32, ptr %1648, align 4, !tbaa !205
  %1650 = sitofp i32 %1649 to float
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %20) #18
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %20, i8 0, i64 12, i1 false)
  %1651 = icmp sgt i32 %1649, 1
  br i1 %1651, label %1652, label %1656

1652:                                             ; preds = %1634
  %1653 = load i16, ptr %356, align 4, !tbaa !34
  %1654 = icmp eq i16 %1653, 2
  br i1 %1654, label %1655, label %1656

1655:                                             ; preds = %1652
  br label %1656

1656:                                             ; preds = %1655, %1652, %1634
  %1657 = phi float [ 0x400A79B3E0000000, %1655 ], [ %1650, %1652 ], [ 1.000000e+00, %1634 ]
  %1658 = phi float [ 0x400A79B3E0000000, %1655 ], [ %1650, %1652 ], [ %1650, %1634 ]
  %1659 = icmp sgt i32 %1649, 0
  br i1 %1659, label %1660, label %2093

1660:                                             ; preds = %1656
  %1661 = shl nsw i32 %1645, 2
  %1662 = sext i32 %1661 to i64
  %1663 = or disjoint i32 %1661, 3
  %1664 = sext i32 %1663 to i64
  %1665 = zext nneg i32 %1649 to i64
  br label %1666

1666:                                             ; preds = %1660, %2085
  %1667 = phi i64 [ 0, %1660 ], [ %2091, %2085 ]
  %1668 = phi i32 [ %1635, %1660 ], [ %2090, %2085 ]
  %1669 = phi i16 [ %1636, %1660 ], [ %2089, %2085 ]
  %1670 = phi i32 [ 0, %1660 ], [ %2088, %2085 ]
  %1671 = phi float [ 0.000000e+00, %1660 ], [ %2087, %2085 ]
  %1672 = phi float [ 0.000000e+00, %1660 ], [ %1776, %2085 ]
  %1673 = phi float [ 0.000000e+00, %1660 ], [ %2086, %2085 ]
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %21) #18
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %22) #18
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %23) #18
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %24) #18
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %25) #18
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %25, i8 0, i64 16, i1 false)
  %1674 = load i32, ptr %469, align 8, !tbaa !159
  %1675 = and i32 %1674, 64
  %1676 = icmp eq i32 %1675, 0
  br i1 %1676, label %1680, label %1677

1677:                                             ; preds = %1666
  %1678 = load i32, ptr %523, align 4, !tbaa !160
  %1679 = icmp eq i32 %1678, 2
  br label %1680

1680:                                             ; preds = %1677, %1666
  %1681 = phi i1 [ false, %1666 ], [ %1679, %1677 ]
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %26) #18
  br i1 %1651, label %1682, label %1688

1682:                                             ; preds = %1680
  %1683 = load i16, ptr %357, align 4, !tbaa !34
  %1684 = icmp eq i16 %1683, 2
  br i1 %1684, label %1685, label %1688

1685:                                             ; preds = %1682
  %1686 = getelementptr inbounds [5 x float], ptr @gaussianFactors, i64 0, i64 %1667
  %1687 = load float, ptr %1686, align 4, !tbaa !123
  br label %1688

1688:                                             ; preds = %1685, %1682, %1680
  %1689 = phi float [ %1687, %1685 ], [ 1.000000e+00, %1682 ], [ 1.000000e+00, %1680 ]
  %1690 = load ptr, ptr %1555, align 8, !tbaa !92
  %1691 = load ptr, ptr %1556, align 8, !tbaa !90
  %1692 = getelementptr inbounds i32, ptr %1691, i64 %1647
  %1693 = load i32, ptr %1692, align 4, !tbaa !205
  %1694 = trunc i64 %1667 to i32
  %1695 = add nsw i32 %1693, %1694
  %1696 = sext i32 %1695 to i64
  %1697 = getelementptr inbounds %struct.Vec3f, ptr %1690, i64 %1696
  %1698 = load float, ptr %1697, align 4, !tbaa !123
  store float %1698, ptr %21, align 4, !tbaa !123
  %1699 = getelementptr inbounds float, ptr %1697, i64 1
  %1700 = load float, ptr %1699, align 4, !tbaa !123
  store float %1700, ptr %358, align 4, !tbaa !123
  %1701 = getelementptr inbounds float, ptr %1697, i64 2
  %1702 = load float, ptr %1701, align 4, !tbaa !123
  store float %1702, ptr %359, align 4, !tbaa !123
  %1703 = load ptr, ptr %1257, align 8, !tbaa !86
  %1704 = getelementptr inbounds %struct.PaintBakeNormal, ptr %1703, i64 %1647
  %1705 = load float, ptr %1704, align 4, !tbaa !123
  store float %1705, ptr %22, align 4, !tbaa !123
  %1706 = getelementptr inbounds float, ptr %1704, i64 1
  %1707 = load float, ptr %1706, align 4, !tbaa !123
  store float %1707, ptr %360, align 4, !tbaa !123
  %1708 = getelementptr inbounds float, ptr %1704, i64 2
  %1709 = load float, ptr %1708, align 4, !tbaa !123
  store float %1709, ptr %361, align 4, !tbaa !123
  %1710 = fadd float %1698, 0x3F50624DE0000000
  store float %1710, ptr %21, align 4, !tbaa !123
  %1711 = fadd float %1700, 0x3F50624DE0000000
  store float %1711, ptr %358, align 4, !tbaa !123
  %1712 = fadd float %1702, 0x3F50624DE0000000
  store float %1712, ptr %359, align 4, !tbaa !123
  store i32 -1, ptr %23, align 4, !tbaa !393
  store float 9.999000e+03, ptr %362, align 4, !tbaa !395
  store i32 -1, ptr %24, align 4, !tbaa !396
  store float %1557, ptr %363, align 4, !tbaa !398
  %1713 = load i32, ptr %523, align 4, !tbaa !160
  switch i32 %1713, label %1775 [
    i32 0, label %1714
    i32 2, label %1714
  ]

1714:                                             ; preds = %1688, %1688
  %1715 = load ptr, ptr %17, align 8, !tbaa !399
  %1716 = call i32 @BLI_bvhtree_ray_cast(ptr noundef %1715, ptr noundef nonnull %21, ptr noundef nonnull %22, float noundef 0.000000e+00, ptr noundef nonnull %23, ptr noundef nonnull @mesh_faces_spherecast_dp, ptr noundef nonnull %17) #18
  %1717 = icmp eq i32 %1716, -1
  br i1 %1717, label %1775, label %1718

1718:                                             ; preds = %1714
  %1719 = load i32, ptr %23, align 4, !tbaa !393
  %1720 = sext i32 %1719 to i64
  %1721 = getelementptr inbounds %struct.MFace, ptr %1355, i64 %1720
  %1722 = load i32, ptr %1721, align 4, !tbaa !289
  %1723 = getelementptr inbounds %struct.MFace, ptr %1355, i64 %1720, i32 1
  %1724 = load i32, ptr %1723, align 4, !tbaa !305
  %1725 = getelementptr inbounds %struct.MFace, ptr %1355, i64 %1720, i32 2
  %1726 = load i32, ptr %1725, align 4, !tbaa !306
  %1727 = load float, ptr %364, align 4, !tbaa !123
  %1728 = fcmp oeq float %1727, 1.000000e+00
  br i1 %1728, label %1729, label %1732

1729:                                             ; preds = %1718
  %1730 = getelementptr inbounds %struct.MFace, ptr %1355, i64 %1720, i32 3
  %1731 = load i32, ptr %1730, align 4, !tbaa !201
  br label %1732

1732:                                             ; preds = %1729, %1718
  %1733 = phi i32 [ %1726, %1729 ], [ %1724, %1718 ]
  %1734 = phi i32 [ %1731, %1729 ], [ %1726, %1718 ]
  %1735 = sext i32 %1722 to i64
  %1736 = getelementptr inbounds %struct.MVert, ptr %1352, i64 %1735
  %1737 = sext i32 %1733 to i64
  %1738 = getelementptr inbounds %struct.MVert, ptr %1352, i64 %1737
  %1739 = sext i32 %1734 to i64
  %1740 = getelementptr inbounds %struct.MVert, ptr %1352, i64 %1739
  %1741 = call float @normal_tri_v3(ptr noundef nonnull %364, ptr noundef %1736, ptr noundef %1738, ptr noundef %1740) #18
  %1742 = load float, ptr %22, align 4, !tbaa !123
  %1743 = load float, ptr %364, align 4, !tbaa !123
  %1744 = load float, ptr %360, align 4, !tbaa !123
  %1745 = load float, ptr %365, align 4, !tbaa !123
  %1746 = fmul float %1744, %1745
  %1747 = call float @llvm.fmuladd.f32(float %1742, float %1743, float %1746)
  %1748 = load float, ptr %361, align 4, !tbaa !123
  %1749 = load float, ptr %366, align 4, !tbaa !123
  %1750 = call float @llvm.fmuladd.f32(float %1748, float %1749, float %1747)
  %1751 = fcmp ult float %1750, 0.000000e+00
  br i1 %1751, label %1775, label %1752

1752:                                             ; preds = %1732
  %1753 = load float, ptr %362, align 4, !tbaa !395
  %1754 = load i32, ptr %23, align 4, !tbaa !393
  %1755 = fneg float %1742
  store float %1755, ptr %22, align 4, !tbaa !123
  %1756 = fneg float %1744
  store float %1756, ptr %360, align 4, !tbaa !123
  %1757 = fneg float %1748
  store float %1757, ptr %361, align 4, !tbaa !123
  store i32 -1, ptr %23, align 4, !tbaa !393
  store float 9.999000e+03, ptr %362, align 4, !tbaa !395
  %1758 = load ptr, ptr %17, align 8, !tbaa !399
  %1759 = call i32 @BLI_bvhtree_ray_cast(ptr noundef %1758, ptr noundef nonnull %21, ptr noundef nonnull %22, float noundef 0.000000e+00, ptr noundef nonnull %23, ptr noundef nonnull @mesh_faces_spherecast_dp, ptr noundef nonnull %17) #18
  %1760 = load i32, ptr %23, align 4, !tbaa !393
  %1761 = icmp eq i32 %1760, -1
  br i1 %1761, label %1775, label %1762

1762:                                             ; preds = %1752
  %1763 = load float, ptr %362, align 4, !tbaa !395
  %1764 = load float, ptr %21, align 4, !tbaa !123
  %1765 = load float, ptr %22, align 4, !tbaa !123
  %1766 = call float @llvm.fmuladd.f32(float %1765, float %1763, float %1764)
  store float %1766, ptr %26, align 4, !tbaa !123
  %1767 = load float, ptr %358, align 4, !tbaa !123
  %1768 = load float, ptr %360, align 4, !tbaa !123
  %1769 = call float @llvm.fmuladd.f32(float %1768, float %1763, float %1767)
  store float %1769, ptr %367, align 4, !tbaa !123
  %1770 = load float, ptr %359, align 4, !tbaa !123
  %1771 = load float, ptr %361, align 4, !tbaa !123
  %1772 = call float @llvm.fmuladd.f32(float %1771, float %1763, float %1770)
  store float %1772, ptr %368, align 4, !tbaa !123
  %1773 = call float @llvm.fmuladd.f32(float %1753, float %1689, float %1672)
  %1774 = zext i1 %1728 to i16
  br label %1775

1775:                                             ; preds = %1762, %1752, %1732, %1714, %1688
  %1776 = phi float [ %1672, %1714 ], [ %1672, %1688 ], [ %1672, %1732 ], [ %1773, %1762 ], [ %1672, %1752 ]
  %1777 = phi i1 [ true, %1714 ], [ true, %1688 ], [ true, %1732 ], [ false, %1762 ], [ true, %1752 ]
  %1778 = phi i16 [ 0, %1714 ], [ 0, %1688 ], [ 0, %1732 ], [ 1, %1762 ], [ 0, %1752 ]
  %1779 = phi float [ 0.000000e+00, %1714 ], [ 0.000000e+00, %1688 ], [ 0.000000e+00, %1732 ], [ 1.000000e+00, %1762 ], [ 0.000000e+00, %1752 ]
  %1780 = phi i32 [ -1, %1714 ], [ -1, %1688 ], [ -1, %1732 ], [ %1754, %1762 ], [ -1, %1752 ]
  %1781 = phi i16 [ 0, %1714 ], [ 0, %1688 ], [ 0, %1732 ], [ %1774, %1762 ], [ 0, %1752 ]
  %1782 = load i32, ptr %523, align 4, !tbaa !160
  %1783 = add i32 %1782, -1
  %1784 = icmp ult i32 %1783, 2
  br i1 %1784, label %1785, label %1880

1785:                                             ; preds = %1775
  br i1 %1777, label %1790, label %1786

1786:                                             ; preds = %1785
  %1787 = load i32, ptr %469, align 8, !tbaa !159
  %1788 = and i32 %1787, 64
  %1789 = icmp eq i32 %1788, 0
  br i1 %1789, label %1880, label %1790

1790:                                             ; preds = %1786, %1785
  %1791 = and i1 %1681, %1777
  br i1 %1791, label %1873, label %1792

1792:                                             ; preds = %1790
  %1793 = load i32, ptr %469, align 8, !tbaa !159
  %1794 = and i32 %1793, 32
  %1795 = icmp eq i32 %1794, 0
  br i1 %1795, label %1796, label %1810

1796:                                             ; preds = %1792
  %1797 = load ptr, ptr %17, align 8, !tbaa !399
  %1798 = call i32 @BLI_bvhtree_find_nearest(ptr noundef %1797, ptr noundef nonnull %21, ptr noundef nonnull %24, ptr noundef nonnull @mesh_faces_nearest_point_dp, ptr noundef nonnull %17) #18
  %1799 = icmp eq i32 %1798, -1
  br i1 %1799, label %1851, label %1800

1800:                                             ; preds = %1796
  %1801 = load float, ptr %363, align 4, !tbaa !398
  %1802 = call float @sqrtf(float noundef %1801) #18
  %1803 = load float, ptr %377, align 4, !tbaa !123
  %1804 = load float, ptr %378, align 4, !tbaa !123
  %1805 = load float, ptr %379, align 4, !tbaa !123
  %1806 = load float, ptr %380, align 4, !tbaa !123
  %1807 = fcmp oeq float %1806, 1.000000e+00
  %1808 = zext i1 %1807 to i16
  %1809 = load i32, ptr %24, align 4, !tbaa !396
  br label %1851

1810:                                             ; preds = %1792
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %27) #18
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %27, i8 0, i64 12, i1 false)
  %1811 = load i16, ptr %1558, align 4, !tbaa !193
  switch i16 %1811, label %1824 [
    i16 0, label %1812
    i16 1, label %1823
  ]

1812:                                             ; preds = %1810
  %1813 = load ptr, ptr %1257, align 8, !tbaa !86
  %1814 = getelementptr inbounds %struct.PaintBakeNormal, ptr %1813, i64 %1647
  %1815 = load float, ptr %1814, align 4, !tbaa !123
  store float %1815, ptr %27, align 4, !tbaa !123
  %1816 = getelementptr inbounds float, ptr %1814, i64 1
  %1817 = load float, ptr %1816, align 4, !tbaa !123
  store float %1817, ptr %371, align 4, !tbaa !123
  %1818 = getelementptr inbounds float, ptr %1814, i64 2
  %1819 = load float, ptr %1818, align 4, !tbaa !123
  store float %1819, ptr %372, align 4, !tbaa !123
  %1820 = fneg float %1815
  store float %1820, ptr %27, align 4, !tbaa !123
  %1821 = fneg float %1817
  store float %1821, ptr %371, align 4, !tbaa !123
  %1822 = fneg float %1819
  store float %1822, ptr %372, align 4, !tbaa !123
  br label %1825

1823:                                             ; preds = %1810
  store float %1484, ptr %27, align 4, !tbaa !123
  store float %1485, ptr %369, align 4, !tbaa !123
  store float %1486, ptr %370, align 4, !tbaa !123
  br label %1825

1824:                                             ; preds = %1810
  store float 1.000000e+00, ptr %373, align 4, !tbaa !123
  br label %1825

1825:                                             ; preds = %1824, %1823, %1812
  store i32 -1, ptr %23, align 4, !tbaa !393
  store float %1345, ptr %362, align 4, !tbaa !395
  %1826 = load ptr, ptr %17, align 8, !tbaa !399
  %1827 = call i32 @BLI_bvhtree_ray_cast(ptr noundef %1826, ptr noundef nonnull %21, ptr noundef nonnull %27, float noundef 0.000000e+00, ptr noundef nonnull %23, ptr noundef nonnull @mesh_faces_spherecast_dp, ptr noundef nonnull %17) #18
  %1828 = icmp eq i32 %1827, -1
  br i1 %1828, label %1844, label %1829

1829:                                             ; preds = %1825
  %1830 = load float, ptr %362, align 4, !tbaa !395
  %1831 = load float, ptr %21, align 4, !tbaa !123
  %1832 = load float, ptr %27, align 4, !tbaa !123
  %1833 = call float @llvm.fmuladd.f32(float %1832, float %1830, float %1831)
  %1834 = load float, ptr %358, align 4, !tbaa !123
  %1835 = load float, ptr %374, align 4, !tbaa !123
  %1836 = call float @llvm.fmuladd.f32(float %1835, float %1830, float %1834)
  %1837 = load float, ptr %359, align 4, !tbaa !123
  %1838 = load float, ptr %375, align 4, !tbaa !123
  %1839 = call float @llvm.fmuladd.f32(float %1838, float %1830, float %1837)
  %1840 = load float, ptr %376, align 4, !tbaa !123
  %1841 = fcmp oeq float %1840, 1.000000e+00
  %1842 = zext i1 %1841 to i16
  %1843 = load i32, ptr %23, align 4, !tbaa !393
  br label %1844

1844:                                             ; preds = %1829, %1825
  %1845 = phi float [ 0.000000e+00, %1825 ], [ %1833, %1829 ]
  %1846 = phi float [ 0.000000e+00, %1825 ], [ %1836, %1829 ]
  %1847 = phi float [ 0.000000e+00, %1825 ], [ %1839, %1829 ]
  %1848 = phi float [ -1.000000e+00, %1825 ], [ %1830, %1829 ]
  %1849 = phi i16 [ %1669, %1825 ], [ %1842, %1829 ]
  %1850 = phi i32 [ %1668, %1825 ], [ %1843, %1829 ]
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %27) #18
  br label %1851

1851:                                             ; preds = %1844, %1800, %1796
  %1852 = phi float [ 0.000000e+00, %1796 ], [ %1803, %1800 ], [ %1845, %1844 ]
  %1853 = phi float [ 0.000000e+00, %1796 ], [ %1804, %1800 ], [ %1846, %1844 ]
  %1854 = phi float [ 0.000000e+00, %1796 ], [ %1805, %1800 ], [ %1847, %1844 ]
  %1855 = phi float [ -1.000000e+00, %1796 ], [ %1802, %1800 ], [ %1848, %1844 ]
  %1856 = phi i16 [ %1669, %1796 ], [ %1808, %1800 ], [ %1849, %1844 ]
  %1857 = phi i32 [ %1668, %1796 ], [ %1809, %1800 ], [ %1850, %1844 ]
  %1858 = fcmp ult float %1855, 0.000000e+00
  %1859 = fcmp ugt float %1855, %1345
  %1860 = select i1 %1858, i1 true, i1 %1859
  br i1 %1860, label %1873, label %1861

1861:                                             ; preds = %1851
  %1862 = fdiv float %1855, %1345
  %1863 = fcmp olt float %1862, 0.000000e+00
  br i1 %1863, label %1867, label %1864

1864:                                             ; preds = %1861
  %1865 = fcmp ogt float %1862, 1.000000e+00
  br i1 %1865, label %1866, label %1867

1866:                                             ; preds = %1864
  br label %1867

1867:                                             ; preds = %1866, %1864, %1861
  %1868 = phi float [ 1.000000e+00, %1866 ], [ %1862, %1864 ], [ 0.000000e+00, %1861 ]
  %1869 = fsub float 1.000000e+00, %1868
  %1870 = select i1 %1681, float %1868, float %1869
  %1871 = icmp eq i32 %1780, -1
  br i1 %1871, label %1872, label %1873

1872:                                             ; preds = %1867
  store float %1852, ptr %26, align 4, !tbaa !123
  store float %1853, ptr %381, align 4, !tbaa !123
  store float %1854, ptr %382, align 4, !tbaa !123
  br label %1873

1873:                                             ; preds = %1872, %1867, %1851, %1790
  %1874 = phi i16 [ 0, %1790 ], [ %1778, %1851 ], [ 2, %1872 ], [ 2, %1867 ]
  %1875 = phi float [ 0.000000e+00, %1790 ], [ 0.000000e+00, %1851 ], [ %1870, %1872 ], [ %1870, %1867 ]
  %1876 = phi i32 [ %1780, %1790 ], [ %1780, %1851 ], [ %1857, %1872 ], [ %1780, %1867 ]
  %1877 = phi i16 [ %1781, %1790 ], [ %1781, %1851 ], [ %1856, %1872 ], [ %1781, %1867 ]
  %1878 = phi i16 [ %1669, %1790 ], [ %1856, %1851 ], [ %1856, %1872 ], [ %1856, %1867 ]
  %1879 = phi i32 [ %1668, %1790 ], [ %1857, %1851 ], [ %1857, %1872 ], [ %1857, %1867 ]
  br i1 %1791, label %2085, label %1880

1880:                                             ; preds = %1873, %1786, %1775
  %1881 = phi i16 [ %1874, %1873 ], [ 1, %1786 ], [ %1778, %1775 ]
  %1882 = phi float [ %1875, %1873 ], [ 0.000000e+00, %1786 ], [ 0.000000e+00, %1775 ]
  %1883 = phi i32 [ %1876, %1873 ], [ %1780, %1786 ], [ %1780, %1775 ]
  %1884 = phi i16 [ %1877, %1873 ], [ %1781, %1786 ], [ %1781, %1775 ]
  %1885 = phi i16 [ %1878, %1873 ], [ %1669, %1786 ], [ %1669, %1775 ]
  %1886 = phi i32 [ %1879, %1873 ], [ %1668, %1786 ], [ %1668, %1775 ]
  %1887 = icmp eq i16 %1881, 0
  br i1 %1887, label %2085, label %1888

1888:                                             ; preds = %1880
  %1889 = load i32, ptr %523, align 4, !tbaa !160
  %1890 = icmp eq i32 %1889, 2
  br i1 %1890, label %1891, label %1899

1891:                                             ; preds = %1888
  %1892 = load i32, ptr %469, align 8, !tbaa !159
  %1893 = and i32 %1892, 128
  %1894 = icmp eq i32 %1893, 0
  br i1 %1894, label %1899, label %1895

1895:                                             ; preds = %1891
  %1896 = fsub float 1.000000e+00, %1779
  br i1 %1681, label %1897, label %1899

1897:                                             ; preds = %1895
  %1898 = fsub float 1.000000e+00, %1882
  br label %1899

1899:                                             ; preds = %1897, %1895, %1891, %1888
  %1900 = phi float [ %1896, %1897 ], [ %1896, %1895 ], [ %1779, %1891 ], [ %1779, %1888 ]
  %1901 = phi float [ %1898, %1897 ], [ %1882, %1895 ], [ %1882, %1891 ], [ %1882, %1888 ]
  %1902 = icmp eq i16 %1881, 1
  br i1 %1902, label %1924, label %1903

1903:                                             ; preds = %1899
  %1904 = load i16, ptr %1559, align 8, !tbaa !168
  %1905 = icmp eq i16 %1904, 2
  br i1 %1905, label %1906, label %1913

1906:                                             ; preds = %1903
  %1907 = load ptr, ptr %1560, align 8, !tbaa !70
  %1908 = fsub float 1.000000e+00, %1901
  %1909 = call zeroext i8 @do_colorband(ptr noundef %1907, float noundef %1908, ptr noundef nonnull %25) #18
  %1910 = icmp eq i8 %1909, 0
  br i1 %1910, label %1913, label %1911

1911:                                             ; preds = %1906
  %1912 = load float, ptr %383, align 4, !tbaa !123
  br label %1924

1913:                                             ; preds = %1906, %1903
  %1914 = load i16, ptr %1559, align 8, !tbaa !168
  %1915 = icmp eq i16 %1914, 0
  br i1 %1915, label %1916, label %1924

1916:                                             ; preds = %1913
  br i1 %1681, label %1917, label %1921

1917:                                             ; preds = %1916
  %1918 = load i32, ptr %469, align 8, !tbaa !159
  %1919 = and i32 %1918, 128
  %1920 = icmp ne i32 %1919, 0
  br label %1921

1921:                                             ; preds = %1917, %1916
  %1922 = phi i1 [ true, %1916 ], [ %1920, %1917 ]
  %1923 = select i1 %1922, float 1.000000e+00, float 0.000000e+00
  br label %1924

1924:                                             ; preds = %1921, %1913, %1911, %1899
  %1925 = phi float [ %1900, %1899 ], [ %1912, %1911 ], [ %1923, %1921 ], [ %1901, %1913 ]
  %1926 = fmul float %1689, %1925
  %1927 = load i32, ptr %469, align 8, !tbaa !159
  %1928 = and i32 %1927, 3840
  %1929 = icmp ne i32 %1928, 0
  %1930 = icmp eq i64 %1667, 0
  %1931 = and i1 %1930, %1929
  %1932 = and i1 %1561, %1931
  br i1 %1932, label %1933, label %2006

1933:                                             ; preds = %1924
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %28) #18
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %29) #18
  %1934 = icmp eq i16 %1884, 0
  %1935 = sext i32 %1883 to i64
  br i1 %1934, label %1936, label %1940

1936:                                             ; preds = %1933
  %1937 = getelementptr inbounds %struct.MFace, ptr %1355, i64 %1935
  %1938 = getelementptr inbounds %struct.MFace, ptr %1355, i64 %1935, i32 1
  %1939 = getelementptr inbounds %struct.MFace, ptr %1355, i64 %1935, i32 2
  br label %1944

1940:                                             ; preds = %1933
  %1941 = getelementptr inbounds %struct.MFace, ptr %1355, i64 %1935, i32 1
  %1942 = getelementptr inbounds %struct.MFace, ptr %1355, i64 %1935, i32 2
  %1943 = getelementptr inbounds %struct.MFace, ptr %1355, i64 %1935, i32 3
  br label %1944

1944:                                             ; preds = %1940, %1936
  %1945 = phi ptr [ %1941, %1940 ], [ %1937, %1936 ]
  %1946 = phi ptr [ %1942, %1940 ], [ %1938, %1936 ]
  %1947 = phi ptr [ %1943, %1940 ], [ %1939, %1936 ]
  %1948 = load i32, ptr %1947, align 4, !tbaa !205
  %1949 = load i32, ptr %1946, align 4, !tbaa !205
  %1950 = load i32, ptr %1945, align 4, !tbaa !205
  %1951 = sext i32 %1950 to i64
  %1952 = getelementptr inbounds %struct.MVert, ptr %1352, i64 %1951
  %1953 = sext i32 %1949 to i64
  %1954 = getelementptr inbounds %struct.MVert, ptr %1352, i64 %1953
  %1955 = sext i32 %1948 to i64
  %1956 = getelementptr inbounds %struct.MVert, ptr %1352, i64 %1955
  call void @interp_weights_face_v3(ptr noundef nonnull %28, ptr noundef %1952, ptr noundef %1954, ptr noundef %1956, ptr noundef null, ptr noundef nonnull %26) #18
  %1957 = getelementptr inbounds %struct.Vec3f, ptr %1337, i64 %1951
  %1958 = getelementptr inbounds %struct.Vec3f, ptr %1337, i64 %1953
  %1959 = getelementptr inbounds %struct.Vec3f, ptr %1337, i64 %1955
  call void @interp_v3_v3v3v3(ptr noundef nonnull %29, ptr noundef nonnull %1957, ptr noundef nonnull %1958, ptr noundef nonnull %1959, ptr noundef nonnull %28) #18
  %1960 = load ptr, ptr %1562, align 8, !tbaa !101
  %1961 = icmp eq ptr %1960, null
  br i1 %1961, label %1975, label %1962

1962:                                             ; preds = %1944
  %1963 = getelementptr inbounds %struct.Vec3f, ptr %1960, i64 %1647
  %1964 = load float, ptr %29, align 4, !tbaa !123
  %1965 = load float, ptr %1963, align 4, !tbaa !123
  %1966 = fsub float %1964, %1965
  %1967 = load float, ptr %384, align 4, !tbaa !123
  %1968 = getelementptr inbounds float, ptr %1963, i64 1
  %1969 = load float, ptr %1968, align 4, !tbaa !123
  %1970 = fsub float %1967, %1969
  %1971 = load float, ptr %385, align 4, !tbaa !123
  %1972 = getelementptr inbounds float, ptr %1963, i64 2
  %1973 = load float, ptr %1972, align 4, !tbaa !123
  %1974 = fsub float %1971, %1973
  br label %1979

1975:                                             ; preds = %1944
  %1976 = load float, ptr %29, align 4, !tbaa !123
  %1977 = load float, ptr %386, align 4, !tbaa !123
  %1978 = load float, ptr %387, align 4, !tbaa !123
  br label %1979

1979:                                             ; preds = %1975, %1962
  %1980 = phi float [ %1978, %1975 ], [ %1974, %1962 ]
  %1981 = phi float [ %1977, %1975 ], [ %1970, %1962 ]
  %1982 = phi float [ %1976, %1975 ], [ %1966, %1962 ]
  %1983 = fmul float %1981, %1981
  %1984 = call float @llvm.fmuladd.f32(float %1982, float %1982, float %1983)
  %1985 = call float @llvm.fmuladd.f32(float %1980, float %1980, float %1984)
  %1986 = call float @sqrtf(float noundef %1985) #18
  %1987 = load i16, ptr %312, align 2, !tbaa !43
  %1988 = icmp eq i16 %1987, 0
  br i1 %1988, label %1989, label %2005

1989:                                             ; preds = %1979
  %1990 = load i32, ptr %469, align 8, !tbaa !159
  %1991 = and i32 %1990, 256
  %1992 = icmp eq i32 %1991, 0
  br i1 %1992, label %2005, label %1993

1993:                                             ; preds = %1989
  %1994 = load ptr, ptr %1563, align 8, !tbaa !359
  %1995 = icmp eq ptr %1994, null
  br i1 %1995, label %2005, label %1996

1996:                                             ; preds = %1993
  %1997 = getelementptr inbounds float, ptr %1994, i64 %1662
  store float %1982, ptr %1997, align 4, !tbaa !123
  %1998 = getelementptr inbounds float, ptr %1997, i64 1
  store float %1981, ptr %1998, align 4, !tbaa !123
  %1999 = getelementptr inbounds float, ptr %1997, i64 2
  store float %1980, ptr %1999, align 4, !tbaa !123
  %2000 = fdiv float 1.000000e+00, %1986
  %2001 = fmul float %1982, %2000
  store float %2001, ptr %1997, align 4, !tbaa !123
  %2002 = fmul float %1981, %2000
  store float %2002, ptr %1998, align 4, !tbaa !123
  %2003 = fmul float %1980, %2000
  store float %2003, ptr %1999, align 4, !tbaa !123
  %2004 = getelementptr inbounds float, ptr %1994, i64 %1664
  store float %1986, ptr %2004, align 4, !tbaa !123
  br label %2005

2005:                                             ; preds = %1996, %1993, %1989, %1979
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %29) #18
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %28) #18
  br label %2006

2006:                                             ; preds = %2005, %1924
  %2007 = phi float [ %1986, %2005 ], [ %1671, %1924 ]
  %2008 = load i16, ptr %312, align 2, !tbaa !43
  %2009 = icmp eq i16 %2008, 0
  br i1 %2009, label %2010, label %2081

2010:                                             ; preds = %2006
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %30) #18
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %31) #18
  store float 1.000000e+00, ptr %31, align 4, !tbaa !123
  %2011 = load float, ptr %1564, align 8, !tbaa !162
  store float %2011, ptr %30, align 4, !tbaa !123
  %2012 = load float, ptr %1565, align 4, !tbaa !163
  store float %2012, ptr %388, align 4, !tbaa !123
  %2013 = load float, ptr %1566, align 8, !tbaa !164
  store float %2013, ptr %389, align 4, !tbaa !123
  %2014 = load i32, ptr %469, align 8, !tbaa !159
  %2015 = and i32 %2014, 2
  %2016 = icmp eq i32 %2015, 0
  br i1 %2016, label %2021, label %2017

2017:                                             ; preds = %2010
  %2018 = call zeroext i8 @BKE_scene_use_new_shading_nodes(ptr noundef %0) #18
  %2019 = icmp eq i8 %2018, 0
  %2020 = zext i1 %2019 to i32
  br label %2021

2021:                                             ; preds = %2017, %2010
  %2022 = phi i32 [ 0, %2010 ], [ %2020, %2017 ]
  %2023 = icmp eq i32 %2022, 0
  br i1 %2023, label %2055, label %2024

2024:                                             ; preds = %2021
  %2025 = load ptr, ptr %1555, align 8, !tbaa !92
  %2026 = load ptr, ptr %1556, align 8, !tbaa !90
  %2027 = getelementptr inbounds i32, ptr %2026, i64 %1647
  %2028 = load i32, ptr %2027, align 4, !tbaa !205
  %2029 = trunc i64 %1667 to i32
  %2030 = add nsw i32 %2028, %2029
  %2031 = sext i32 %2030 to i64
  %2032 = getelementptr inbounds %struct.Vec3f, ptr %2025, i64 %2031
  %2033 = load ptr, ptr %1338, align 8, !tbaa !65
  %2034 = getelementptr inbounds %struct.DerivedMesh, ptr %2033, i64 0, i32 33
  %2035 = load ptr, ptr %2034, align 8, !tbaa !199
  %2036 = call ptr %2035(ptr noundef %2033) #18
  br i1 %1567, label %2037, label %2053

2037:                                             ; preds = %2024
  br i1 %1568, label %2055, label %2038

2038:                                             ; preds = %2037
  %2039 = sext i32 %1883 to i64
  %2040 = getelementptr inbounds %struct.MFace, ptr %2036, i64 %2039, i32 4
  %2041 = load i16, ptr %2040, align 4, !tbaa !388
  %2042 = call ptr @give_totcolp(ptr noundef nonnull %409) #18
  %2043 = load i16, ptr %2042, align 2, !tbaa !279
  %2044 = icmp slt i16 %2041, %2043
  br i1 %2044, label %2045, label %2050

2045:                                             ; preds = %2038
  %2046 = sext i16 %2041 to i64
  %2047 = getelementptr inbounds ptr, ptr %520, i64 %2046
  %2048 = load ptr, ptr %2047, align 8, !tbaa !44
  %2049 = icmp ne ptr %2048, null
  br label %2050

2050:                                             ; preds = %2045, %2038
  %2051 = phi ptr [ null, %2038 ], [ %2048, %2045 ]
  %2052 = phi i1 [ false, %2038 ], [ %2049, %2045 ]
  br i1 %2052, label %2053, label %2055

2053:                                             ; preds = %2050, %2024
  %2054 = phi ptr [ %2051, %2050 ], [ %522, %2024 ]
  call void @RE_sample_material_color(ptr noundef %2054, ptr noundef nonnull %30, ptr noundef nonnull %31, ptr noundef %2032, ptr noundef nonnull %26, i32 noundef %1883, i16 noundef signext %1884, ptr noundef %2033, ptr noundef nonnull %409) #18
  br label %2055

2055:                                             ; preds = %2053, %2050, %2037, %2021
  %2056 = icmp eq i16 %1881, 2
  br i1 %2056, label %2057, label %2068

2057:                                             ; preds = %2055
  %2058 = load i16, ptr %1569, align 8, !tbaa !168
  %2059 = icmp eq i16 %2058, 2
  br i1 %2059, label %2060, label %2068

2060:                                             ; preds = %2057
  %2061 = load i32, ptr %469, align 8, !tbaa !159
  %2062 = and i32 %2061, 16
  %2063 = icmp eq i32 %2062, 0
  br i1 %2063, label %2064, label %2068

2064:                                             ; preds = %2060
  %2065 = load float, ptr %25, align 16, !tbaa !123
  store float %2065, ptr %30, align 4, !tbaa !123
  %2066 = load float, ptr %390, align 4, !tbaa !123
  store float %2066, ptr %388, align 4, !tbaa !123
  %2067 = load float, ptr %391, align 8, !tbaa !123
  store float %2067, ptr %389, align 4, !tbaa !123
  br label %2068

2068:                                             ; preds = %2064, %2060, %2057, %2055
  %2069 = load float, ptr %30, align 4, !tbaa !123
  %2070 = load float, ptr %20, align 4, !tbaa !123
  %2071 = fadd float %2069, %2070
  store float %2071, ptr %20, align 4, !tbaa !123
  %2072 = load float, ptr %388, align 4, !tbaa !123
  %2073 = load float, ptr %392, align 4, !tbaa !123
  %2074 = fadd float %2072, %2073
  store float %2074, ptr %392, align 4, !tbaa !123
  %2075 = load float, ptr %389, align 4, !tbaa !123
  %2076 = load float, ptr %393, align 4, !tbaa !123
  %2077 = fadd float %2075, %2076
  store float %2077, ptr %393, align 4, !tbaa !123
  %2078 = load float, ptr %31, align 4, !tbaa !123
  %2079 = fmul float %1926, %2078
  %2080 = add nsw i32 %1670, 1
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %31) #18
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %30) #18
  br label %2081

2081:                                             ; preds = %2068, %2006
  %2082 = phi i32 [ %2080, %2068 ], [ %1670, %2006 ]
  %2083 = phi float [ %2079, %2068 ], [ %1926, %2006 ]
  %2084 = fadd float %1673, %2083
  br label %2085

2085:                                             ; preds = %2081, %1880, %1873
  %2086 = phi float [ %1673, %1873 ], [ %1673, %1880 ], [ %2084, %2081 ]
  %2087 = phi float [ %1671, %1873 ], [ %1671, %1880 ], [ %2007, %2081 ]
  %2088 = phi i32 [ %1670, %1873 ], [ %1670, %1880 ], [ %2082, %2081 ]
  %2089 = phi i16 [ %1878, %1873 ], [ %1885, %1880 ], [ %1885, %2081 ]
  %2090 = phi i32 [ %1879, %1873 ], [ %1886, %1880 ], [ %1886, %2081 ]
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %26) #18
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %25) #18
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %24) #18
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %23) #18
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %22) #18
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %21) #18
  %2091 = add nuw nsw i64 %1667, 1
  %2092 = icmp eq i64 %2091, %1665
  br i1 %2092, label %2093, label %1666, !llvm.loop !401

2093:                                             ; preds = %2085, %1656
  %2094 = phi float [ 0.000000e+00, %1656 ], [ %2086, %2085 ]
  %2095 = phi float [ 0.000000e+00, %1656 ], [ %1776, %2085 ]
  %2096 = phi float [ 0.000000e+00, %1656 ], [ %2087, %2085 ]
  %2097 = phi i32 [ 0, %1656 ], [ %2088, %2085 ]
  %2098 = phi i16 [ %1636, %1656 ], [ %2089, %2085 ]
  %2099 = phi i32 [ %1635, %1656 ], [ %2090, %2085 ]
  %2100 = fcmp ogt float %2094, 0.000000e+00
  %2101 = fcmp ogt float %2095, 0.000000e+00
  %2102 = select i1 %2100, i1 true, i1 %2101
  br i1 %2102, label %2103, label %2128

2103:                                             ; preds = %2093
  %2104 = fdiv float %2094, %1657
  %2105 = fcmp olt float %2104, 0.000000e+00
  br i1 %2105, label %2109, label %2106

2106:                                             ; preds = %2103
  %2107 = fcmp ogt float %2104, 1.000000e+00
  br i1 %2107, label %2108, label %2109

2108:                                             ; preds = %2106
  br label %2109

2109:                                             ; preds = %2108, %2106, %2103
  %2110 = phi float [ 1.000000e+00, %2108 ], [ %2104, %2106 ], [ 0.000000e+00, %2103 ]
  %2111 = load i16, ptr %312, align 2, !tbaa !43
  switch i16 %2111, label %2126 [
    i16 0, label %2112
    i16 1, label %2120
    i16 3, label %2120
  ]

2112:                                             ; preds = %2109
  %2113 = sitofp i32 %2097 to float
  %2114 = load float, ptr %20, align 4, !tbaa !123
  %2115 = fdiv float %2114, %2113
  store float %2115, ptr %20, align 4, !tbaa !123
  %2116 = load float, ptr %394, align 4, !tbaa !123
  %2117 = fdiv float %2116, %2113
  store float %2117, ptr %394, align 4, !tbaa !123
  %2118 = load float, ptr %395, align 4, !tbaa !123
  %2119 = fdiv float %2118, %2113
  store float %2119, ptr %395, align 4, !tbaa !123
  br label %2126

2120:                                             ; preds = %2109, %2109
  %2121 = load ptr, ptr %1257, align 8, !tbaa !86
  %2122 = getelementptr inbounds %struct.PaintBakeNormal, ptr %2121, i64 %1647, i32 1
  %2123 = load float, ptr %2122, align 4, !tbaa !338
  %2124 = fmul float %1658, %2123
  %2125 = fdiv float %2095, %2124
  br label %2126

2126:                                             ; preds = %2120, %2112, %2109
  %2127 = phi float [ %2095, %2112 ], [ %2125, %2120 ], [ %2095, %2109 ]
  call fastcc void @dynamicPaint_updatePointData(ptr noundef %2, i32 noundef %1645, ptr noundef %439, ptr noundef nonnull %20, float noundef %2110, float noundef %2127, float noundef %2096, float noundef %3)
  br label %2128

2128:                                             ; preds = %2126, %2093
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %20) #18
  %2129 = add nuw nsw i32 %1637, 1
  %2130 = load ptr, ptr %1550, align 8, !tbaa !98
  %2131 = getelementptr inbounds i32, ptr %2130, i64 %1572
  %2132 = load i32, ptr %2131, align 4, !tbaa !205
  %2133 = icmp slt i32 %2129, %2132
  br i1 %2133, label %1634, label %2134, !llvm.loop !402

2134:                                             ; preds = %1622, %1614, %1599, %1592, %2128, %1629, %1605, %1583, %1571
  %2135 = phi i16 [ %1574, %1571 ], [ %1574, %1583 ], [ %1574, %1605 ], [ %1574, %1629 ], [ %2098, %2128 ], [ %1574, %1592 ], [ %1574, %1599 ], [ %1574, %1614 ], [ %1574, %1622 ]
  %2136 = phi i32 [ %1573, %1571 ], [ %1573, %1583 ], [ %1573, %1605 ], [ %1573, %1629 ], [ %2099, %2128 ], [ %1573, %1592 ], [ %1573, %1599 ], [ %1573, %1614 ], [ %1573, %1622 ]
  %2137 = add nuw nsw i64 %1572, 1
  %2138 = icmp eq i64 %2137, %1570
  br i1 %2138, label %2139, label %1571, !llvm.loop !403

2139:                                             ; preds = %1530, %1522, %1507, %1500, %2134, %1540, %1513, %1491, %1537, %1483
  call void @free_bvhtree_from_mesh(ptr noundef nonnull %17) #18
  %2140 = getelementptr inbounds %struct.DerivedMesh, ptr %1349, i64 0, i32 95
  %2141 = load ptr, ptr %2140, align 8, !tbaa !67
  call void %2141(ptr noundef %1349) #18
  call void @llvm.lifetime.end.p0(i64 28, ptr nonnull %18) #18
  call void @llvm.lifetime.end.p0(i64 72, ptr nonnull %17) #18
  %2142 = icmp eq ptr %1337, null
  br i1 %2142, label %2145, label %2143

2143:                                             ; preds = %2139
  %2144 = load ptr, ptr @MEM_freeN, align 8, !tbaa !44
  call void %2144(ptr noundef nonnull %1337) #18
  br label %2145

2145:                                             ; preds = %1247, %1033, %2143, %2139, %1336, %533, %1252, %525, %529, %536, %992
  %2146 = load i32, ptr %469, align 8, !tbaa !159
  %2147 = and i32 %2146, 2
  %2148 = icmp eq i32 %2147, 0
  br i1 %2148, label %2153, label %2149

2149:                                             ; preds = %2145
  %2150 = call zeroext i8 @BKE_scene_use_new_shading_nodes(ptr noundef %0) #18
  %2151 = icmp eq i8 %2150, 0
  %2152 = zext i1 %2151 to i32
  br label %2153

2153:                                             ; preds = %2145, %2149
  %2154 = phi i32 [ 0, %2145 ], [ %2152, %2149 ]
  %2155 = icmp eq i32 %2154, 0
  br i1 %2155, label %2173, label %2156

2156:                                             ; preds = %2153
  %2157 = icmp eq ptr %520, null
  br i1 %2157, label %2170, label %2158

2158:                                             ; preds = %2156
  %2159 = icmp sgt i32 %521, 0
  br i1 %2159, label %2160, label %2168

2160:                                             ; preds = %2158
  %2161 = zext nneg i32 %521 to i64
  br label %2162

2162:                                             ; preds = %2160, %2162
  %2163 = phi i64 [ 0, %2160 ], [ %2166, %2162 ]
  %2164 = getelementptr inbounds ptr, ptr %520, i64 %2163
  %2165 = load ptr, ptr %2164, align 8, !tbaa !44
  call void @RE_free_sample_material(ptr noundef %2165) #18
  %2166 = add nuw nsw i64 %2163, 1
  %2167 = icmp eq i64 %2166, %2161
  br i1 %2167, label %2168, label %2162, !llvm.loop !404

2168:                                             ; preds = %2162, %2158
  %2169 = load ptr, ptr @MEM_freeN, align 8, !tbaa !44
  call void %2169(ptr noundef nonnull %520) #18
  br label %2173

2170:                                             ; preds = %2156
  %2171 = icmp eq ptr %522, null
  br i1 %2171, label %2173, label %2172

2172:                                             ; preds = %2170
  call void @RE_free_sample_material(ptr noundef nonnull %522) #18
  br label %2173

2173:                                             ; preds = %2172, %2170, %2168, %2153
  br i1 %316, label %2174, label %2177

2174:                                             ; preds = %2173
  store i32 %293, ptr %292, align 8, !tbaa !246
  store float %295, ptr %294, align 4, !tbaa !357
  %2175 = call float @BKE_scene_frame_get(ptr noundef %0) #18
  %2176 = call fastcc i32 @subframe_updateObject(ptr noundef %0, ptr noundef nonnull %409, i32 noundef 2, i32 noundef 5, float noundef %2175), !range !360
  br label %2177

2177:                                             ; preds = %2174, %2173
  %2178 = load ptr, ptr %396, align 8, !tbaa !359
  %2179 = icmp eq ptr %2178, null
  br i1 %2179, label %2365, label %2180

2180:                                             ; preds = %2177
  %2181 = load i16, ptr %312, align 2, !tbaa !43
  %2182 = icmp eq i16 %2181, 0
  br i1 %2182, label %2183, label %2362

2183:                                             ; preds = %2180
  %2184 = load i32, ptr %469, align 8, !tbaa !159
  %2185 = and i32 %2184, 256
  %2186 = icmp eq i32 %2185, 0
  br i1 %2186, label %2362, label %2187

2187:                                             ; preds = %2183
  %2188 = load ptr, ptr %45, align 8, !tbaa !72
  %2189 = getelementptr inbounds %struct.PaintSurfaceData, ptr %2188, i64 0, i32 3
  %2190 = load ptr, ptr %2189, align 8, !tbaa !85
  %2191 = getelementptr inbounds %struct.PaintBakeData, ptr %2190, i64 0, i32 5
  %2192 = load ptr, ptr %2191, align 8, !tbaa !93
  %2193 = getelementptr inbounds %struct.PaintSurfaceData, ptr %2188, i64 0, i32 2
  %2194 = load ptr, ptr %2193, align 8, !tbaa !79
  %2195 = icmp eq ptr %2194, null
  br i1 %2195, label %2362, label %2196

2196:                                             ; preds = %2187
  %2197 = getelementptr inbounds %struct.PaintSurfaceData, ptr %2188, i64 0, i32 4
  %2198 = load i32, ptr %2197, align 8, !tbaa !194
  %2199 = icmp sgt i32 %2198, 0
  br i1 %2199, label %2200, label %2215

2200:                                             ; preds = %2196
  %2201 = getelementptr inbounds %struct.PaintBakeData, ptr %2190, i64 0, i32 10
  %2202 = load ptr, ptr %2201, align 8, !tbaa !359
  %2203 = zext nneg i32 %2198 to i64
  br label %2204

2204:                                             ; preds = %2200, %2204
  %2205 = phi i64 [ 0, %2200 ], [ %2213, %2204 ]
  %2206 = phi float [ 0.000000e+00, %2200 ], [ %2212, %2204 ]
  %2207 = shl nsw i64 %2205, 2
  %2208 = or disjoint i64 %2207, 3
  %2209 = getelementptr inbounds float, ptr %2202, i64 %2208
  %2210 = load float, ptr %2209, align 4, !tbaa !123
  %2211 = fcmp ogt float %2210, %2206
  %2212 = select i1 %2211, float %2210, float %2206
  %2213 = add nuw nsw i64 %2205, 1
  %2214 = icmp eq i64 %2213, %2203
  br i1 %2214, label %2215, label %2204, !llvm.loop !405

2215:                                             ; preds = %2204, %2196
  %2216 = phi float [ 0.000000e+00, %2196 ], [ %2212, %2204 ]
  %2217 = getelementptr inbounds %struct.PaintSurfaceData, ptr %2188, i64 0, i32 4
  %2218 = fpext float %2216 to double
  %2219 = getelementptr inbounds %struct.PaintBakeData, ptr %2190, i64 0, i32 6
  %2220 = load double, ptr %2219, align 8, !tbaa !406
  %2221 = fdiv double %2218, %2220
  %2222 = fmul double %2221, %397
  %2223 = call double @llvm.ceil.f64(double %2222)
  %2224 = fptosi double %2223 to i32
  %2225 = call i32 @llvm.smin.i32(i32 %2224, i32 12)
  %2226 = call i32 @llvm.smax.i32(i32 %2225, i32 0)
  %2227 = getelementptr inbounds %struct.DynamicPaintBrushSettings, ptr %439, i64 0, i32 23
  %2228 = load float, ptr %2227, align 4, !tbaa !174
  %2229 = sitofp i32 %2226 to float
  %2230 = fdiv float %2228, %2229
  %2231 = fmul float %2230, %3
  %2232 = icmp sgt i32 %2224, 0
  br i1 %2232, label %2233, label %2362

2233:                                             ; preds = %2215
  %2234 = getelementptr inbounds %struct.PaintSurfaceData, ptr %2188, i64 0, i32 1
  %2235 = getelementptr inbounds %struct.PaintBakeData, ptr %2190, i64 0, i32 10
  br label %2236

2236:                                             ; preds = %2233, %2359
  %2237 = phi i32 [ 0, %2233 ], [ %2360, %2359 ]
  %2238 = load i32, ptr %2217, align 8, !tbaa !194
  %2239 = icmp sgt i32 %2238, 0
  br i1 %2239, label %2240, label %2359

2240:                                             ; preds = %2236, %2354
  %2241 = phi i64 [ %2355, %2354 ], [ 0, %2236 ]
  %2242 = load ptr, ptr %2234, align 8, !tbaa !78
  %2243 = getelementptr inbounds %struct.PaintPoint, ptr %2242, i64 %2241
  %2244 = load ptr, ptr %2235, align 8, !tbaa !359
  %2245 = shl nsw i64 %2241, 2
  %2246 = or disjoint i64 %2245, 3
  %2247 = getelementptr inbounds float, ptr %2244, i64 %2246
  %2248 = load float, ptr %2247, align 4, !tbaa !123
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %12) #18
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %13) #18
  %2249 = fcmp une float %2248, 0.000000e+00
  br i1 %2249, label %2250, label %2354

2250:                                             ; preds = %2240
  %2251 = getelementptr inbounds float, ptr %2244, i64 %2245
  %2252 = trunc i64 %2241 to i32
  call fastcc void @surface_determineForceTargetPoints(ptr noundef %2188, i32 noundef %2252, ptr noundef %2251, ptr noundef nonnull %13, ptr noundef nonnull %12)
  %2253 = fmul float %2231, %2248
  %2254 = getelementptr inbounds %struct.PaintPoint, ptr %2242, i64 %2241, i32 4
  %2255 = getelementptr inbounds %struct.PaintPoint, ptr %2242, i64 %2241, i32 5
  %2256 = getelementptr inbounds float, ptr %2254, i64 1
  %2257 = getelementptr inbounds float, ptr %2254, i64 2
  %2258 = getelementptr inbounds %struct.PaintPoint, ptr %2242, i64 %2241, i32 1
  %2259 = getelementptr inbounds float, ptr %2243, i64 1
  %2260 = getelementptr inbounds float, ptr %2243, i64 2
  %2261 = getelementptr inbounds %struct.PaintPoint, ptr %2242, i64 %2241, i32 2
  br label %2262

2262:                                             ; preds = %2250, %2351
  %2263 = phi i64 [ 0, %2250 ], [ %2352, %2351 ]
  %2264 = getelementptr inbounds [2 x i32], ptr %12, i64 0, i64 %2263
  %2265 = load i32, ptr %2264, align 4, !tbaa !205
  %2266 = icmp eq i32 %2265, -1
  br i1 %2266, label %2351, label %2267

2267:                                             ; preds = %2262
  %2268 = getelementptr inbounds [2 x float], ptr %13, i64 0, i64 %2263
  %2269 = load float, ptr %2268, align 4, !tbaa !123
  %2270 = fcmp ogt float %2269, 0.000000e+00
  br i1 %2270, label %2271, label %2351

2271:                                             ; preds = %2267
  %2272 = load ptr, ptr %2234, align 8, !tbaa !78
  %2273 = load ptr, ptr %2193, align 8, !tbaa !79
  %2274 = load ptr, ptr %2273, align 8, !tbaa !83
  %2275 = sext i32 %2265 to i64
  %2276 = getelementptr inbounds i32, ptr %2274, i64 %2275
  %2277 = load i32, ptr %2276, align 4, !tbaa !205
  %2278 = sext i32 %2277 to i64
  %2279 = getelementptr inbounds %struct.PaintPoint, ptr %2272, i64 %2278
  %2280 = getelementptr inbounds %struct.BakeAdjPoint, ptr %2192, i64 %2275, i32 1
  %2281 = load float, ptr %2280, align 4, !tbaa !407
  %2282 = fdiv float %2253, %2281
  %2283 = fmul float %2269, %2282
  %2284 = load float, ptr %2227, align 4, !tbaa !174
  %2285 = fcmp ogt float %2283, %2284
  %2286 = select i1 %2285, float %2284, float %2283
  %2287 = getelementptr inbounds %struct.PaintPoint, ptr %2272, i64 %2278, i32 4
  %2288 = getelementptr inbounds %struct.PaintPoint, ptr %2272, i64 %2278, i32 5
  %2289 = load float, ptr %2288, align 4, !tbaa !196
  %2290 = load float, ptr %2255, align 4, !tbaa !196
  %2291 = fcmp une float %2290, 0.000000e+00
  br i1 %2291, label %2292, label %2313

2292:                                             ; preds = %2271
  %2293 = fcmp une float %2289, 0.000000e+00
  br i1 %2293, label %2300, label %2294

2294:                                             ; preds = %2292
  %2295 = load float, ptr %2254, align 4, !tbaa !123
  store float %2295, ptr %2287, align 4, !tbaa !123
  %2296 = load float, ptr %2256, align 4, !tbaa !123
  %2297 = getelementptr inbounds float, ptr %2287, i64 1
  store float %2296, ptr %2297, align 4, !tbaa !123
  %2298 = load float, ptr %2257, align 4, !tbaa !123
  %2299 = getelementptr inbounds float, ptr %2287, i64 2
  store float %2298, ptr %2299, align 4, !tbaa !123
  br label %2313

2300:                                             ; preds = %2292
  %2301 = fadd float %2289, %2290
  %2302 = fdiv float %2290, %2301
  %2303 = fcmp ugt float %2286, 5.000000e-01
  br i1 %2303, label %2307, label %2304

2304:                                             ; preds = %2300
  %2305 = fmul float %2286, 2.000000e+00
  %2306 = fmul float %2302, %2305
  br label %2311

2307:                                             ; preds = %2300
  %2308 = call float @llvm.fmuladd.f32(float %2286, float 2.000000e+00, float -1.000000e+00)
  %2309 = fsub float 1.000000e+00, %2308
  %2310 = call float @llvm.fmuladd.f32(float %2302, float %2309, float %2308)
  br label %2311

2311:                                             ; preds = %2307, %2304
  %2312 = phi float [ %2306, %2304 ], [ %2310, %2307 ]
  call void @interp_v3_v3v3(ptr noundef nonnull %2287, ptr noundef nonnull %2287, ptr noundef nonnull %2254, float noundef %2312) #18
  br label %2313

2313:                                             ; preds = %2271, %2294, %2311
  %2314 = load float, ptr %2288, align 4, !tbaa !196
  %2315 = fsub float 1.000000e+00, %2286
  %2316 = load float, ptr %2255, align 4, !tbaa !196
  %2317 = fmul float %2286, %2316
  %2318 = call float @llvm.fmuladd.f32(float %2314, float %2315, float %2317)
  store float %2318, ptr %2288, align 4, !tbaa !196
  %2319 = getelementptr inbounds %struct.PaintPoint, ptr %2272, i64 %2278, i32 1
  %2320 = load float, ptr %2319, align 4, !tbaa !252
  %2321 = load float, ptr %2258, align 4, !tbaa !252
  %2322 = fcmp une float %2321, 0.000000e+00
  br i1 %2322, label %2323, label %2344

2323:                                             ; preds = %2313
  %2324 = fcmp une float %2320, 0.000000e+00
  br i1 %2324, label %2331, label %2325

2325:                                             ; preds = %2323
  %2326 = load float, ptr %2243, align 4, !tbaa !123
  store float %2326, ptr %2279, align 4, !tbaa !123
  %2327 = load float, ptr %2259, align 4, !tbaa !123
  %2328 = getelementptr inbounds float, ptr %2279, i64 1
  store float %2327, ptr %2328, align 4, !tbaa !123
  %2329 = load float, ptr %2260, align 4, !tbaa !123
  %2330 = getelementptr inbounds float, ptr %2279, i64 2
  store float %2329, ptr %2330, align 4, !tbaa !123
  br label %2344

2331:                                             ; preds = %2323
  %2332 = fadd float %2320, %2321
  %2333 = fdiv float %2321, %2332
  %2334 = fcmp ugt float %2286, 5.000000e-01
  br i1 %2334, label %2338, label %2335

2335:                                             ; preds = %2331
  %2336 = fmul float %2286, 2.000000e+00
  %2337 = fmul float %2336, %2333
  br label %2342

2338:                                             ; preds = %2331
  %2339 = call float @llvm.fmuladd.f32(float %2286, float 2.000000e+00, float -1.000000e+00)
  %2340 = fsub float 1.000000e+00, %2339
  %2341 = call float @llvm.fmuladd.f32(float %2333, float %2340, float %2339)
  br label %2342

2342:                                             ; preds = %2338, %2335
  %2343 = phi float [ %2337, %2335 ], [ %2341, %2338 ]
  call void @interp_v3_v3v3(ptr noundef %2279, ptr noundef %2279, ptr noundef %2243, float noundef %2343) #18
  br label %2344

2344:                                             ; preds = %2313, %2325, %2342
  %2345 = load float, ptr %2319, align 4, !tbaa !252
  %2346 = load float, ptr %2258, align 4, !tbaa !252
  %2347 = fmul float %2286, %2346
  %2348 = call float @llvm.fmuladd.f32(float %2345, float %2315, float %2347)
  store float %2348, ptr %2319, align 4, !tbaa !252
  %2349 = load float, ptr %2261, align 4, !tbaa !265
  %2350 = fmul float %2315, %2349
  store float %2350, ptr %2261, align 4, !tbaa !265
  br label %2351

2351:                                             ; preds = %2344, %2267, %2262
  %2352 = add nuw nsw i64 %2263, 1
  %2353 = icmp eq i64 %2263, 0
  br i1 %2353, label %2262, label %2354, !llvm.loop !409

2354:                                             ; preds = %2351, %2240
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %13) #18
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %12) #18
  %2355 = add nuw nsw i64 %2241, 1
  %2356 = load i32, ptr %2217, align 8, !tbaa !194
  %2357 = sext i32 %2356 to i64
  %2358 = icmp slt i64 %2355, %2357
  br i1 %2358, label %2240, label %2359, !llvm.loop !410

2359:                                             ; preds = %2354, %2236
  %2360 = add nuw nsw i32 %2237, 1
  %2361 = icmp eq i32 %2360, %2225
  br i1 %2361, label %2362, label %2236, !llvm.loop !411

2362:                                             ; preds = %2359, %2215, %2187, %2183, %2180
  %2363 = load ptr, ptr @MEM_freeN, align 8, !tbaa !44
  %2364 = load ptr, ptr %396, align 8, !tbaa !359
  call void %2363(ptr noundef %2364) #18
  store ptr null, ptr %396, align 8, !tbaa !359
  br label %2365

2365:                                             ; preds = %2177, %2362, %437, %432, %427
  %2366 = icmp ne ptr %429, null
  %2367 = icmp ne ptr %428, null
  %2368 = select i1 %2366, i1 true, i1 %2367
  br i1 %2368, label %398, label %2369, !llvm.loop !358

2369:                                             ; preds = %2365, %416, %305
  %2370 = getelementptr inbounds %struct.PaintSurfaceData, ptr %46, i64 0, i32 2
  %2371 = load ptr, ptr %2370, align 8, !tbaa !79
  %2372 = icmp eq ptr %2371, null
  br i1 %2372, label %3389, label %2373

2373:                                             ; preds = %2369
  %2374 = getelementptr inbounds %struct.PaintBakeData, ptr %48, i64 0, i32 5
  %2375 = load ptr, ptr %2374, align 8, !tbaa !93
  %2376 = icmp eq ptr %2375, null
  br i1 %2376, label %3389, label %2377

2377:                                             ; preds = %2373
  %2378 = getelementptr inbounds %struct.DynamicPaintSurface, ptr %2, i64 0, i32 11
  %2379 = load i16, ptr %2378, align 2, !tbaa !43
  %2380 = icmp eq i16 %2379, 3
  br i1 %2380, label %2381, label %2682

2381:                                             ; preds = %2377
  %2382 = load ptr, ptr %45, align 8, !tbaa !72
  %2383 = getelementptr inbounds %struct.PaintSurfaceData, ptr %2382, i64 0, i32 3
  %2384 = load ptr, ptr %2383, align 8, !tbaa !85
  %2385 = getelementptr inbounds %struct.PaintBakeData, ptr %2384, i64 0, i32 5
  %2386 = load ptr, ptr %2385, align 8, !tbaa !93
  %2387 = getelementptr inbounds %struct.DynamicPaintSurface, ptr %2, i64 0, i32 41
  %2388 = load float, ptr %2387, align 4, !tbaa !152
  %2389 = getelementptr inbounds %struct.DynamicPaintSurface, ptr %2, i64 0, i32 44
  %2390 = load float, ptr %2389, align 8, !tbaa !155
  %2391 = fcmp ult float %2390, 0x3F847AE140000000
  %2392 = fdiv float 5.000000e-01, %2390
  %2393 = select i1 %2391, float 0.000000e+00, float %2392
  %2394 = getelementptr inbounds %struct.PaintBakeData, ptr %2384, i64 0, i32 4, i32 2
  %2395 = load float, ptr %2394, align 4, !tbaa !123
  %2396 = getelementptr inbounds %struct.PaintBakeData, ptr %2384, i64 0, i32 4, i32 1
  %2397 = load float, ptr %2396, align 4, !tbaa !123
  %2398 = fsub float %2395, %2397
  %2399 = getelementptr inbounds %struct.PaintBakeData, ptr %2384, i64 0, i32 4, i32 2, i64 1
  %2400 = load float, ptr %2399, align 4, !tbaa !123
  %2401 = getelementptr inbounds %struct.PaintBakeData, ptr %2384, i64 0, i32 4, i32 1, i64 1
  %2402 = load float, ptr %2401, align 4, !tbaa !123
  %2403 = fsub float %2400, %2402
  %2404 = getelementptr inbounds %struct.PaintBakeData, ptr %2384, i64 0, i32 4, i32 2, i64 2
  %2405 = load float, ptr %2404, align 4, !tbaa !123
  %2406 = getelementptr inbounds %struct.PaintBakeData, ptr %2384, i64 0, i32 4, i32 1, i64 2
  %2407 = load float, ptr %2406, align 4, !tbaa !123
  %2408 = fsub float %2405, %2407
  %2409 = fcmp ogt float %2398, %2403
  %2410 = select i1 %2409, float %2398, float %2403
  %2411 = fcmp ogt float %2410, %2408
  %2412 = select i1 %2411, float %2410, float %2408
  %2413 = fdiv float 5.000000e+00, %2412
  %2414 = load ptr, ptr @MEM_mallocN, align 8, !tbaa !44
  %2415 = getelementptr inbounds %struct.PaintSurfaceData, ptr %2382, i64 0, i32 4
  %2416 = load i32, ptr %2415, align 8, !tbaa !194
  %2417 = sext i32 %2416 to i64
  %2418 = shl nsw i64 %2417, 4
  %2419 = call ptr %2414(i64 noundef %2418, ptr noundef nonnull @.str.59) #18
  %2420 = icmp eq ptr %2419, null
  br i1 %2420, label %2682, label %2421

2421:                                             ; preds = %2381
  %2422 = load i32, ptr %2415, align 8, !tbaa !194
  %2423 = icmp sgt i32 %2422, 0
  br i1 %2423, label %2424, label %2457

2424:                                             ; preds = %2421
  %2425 = getelementptr inbounds %struct.PaintSurfaceData, ptr %2382, i64 0, i32 2
  %2426 = load ptr, ptr %2425, align 8, !tbaa !79
  %2427 = getelementptr inbounds %struct.PaintAdjData, ptr %2426, i64 0, i32 2
  %2428 = load ptr, ptr %2427, align 8, !tbaa !82
  %2429 = getelementptr inbounds %struct.PaintAdjData, ptr %2426, i64 0, i32 1
  %2430 = zext nneg i32 %2422 to i64
  br label %2431

2431:                                             ; preds = %2424, %2453
  %2432 = phi i64 [ 0, %2424 ], [ %2455, %2453 ]
  %2433 = phi double [ 0.000000e+00, %2424 ], [ %2454, %2453 ]
  %2434 = getelementptr inbounds i32, ptr %2428, i64 %2432
  %2435 = load i32, ptr %2434, align 4, !tbaa !205
  %2436 = icmp sgt i32 %2435, 0
  br i1 %2436, label %2437, label %2453

2437:                                             ; preds = %2431
  %2438 = load ptr, ptr %2429, align 8, !tbaa !80
  %2439 = getelementptr inbounds i32, ptr %2438, i64 %2432
  %2440 = load i32, ptr %2439, align 4, !tbaa !205
  %2441 = sext i32 %2440 to i64
  %2442 = zext nneg i32 %2435 to i64
  br label %2443

2443:                                             ; preds = %2437, %2443
  %2444 = phi i64 [ 0, %2437 ], [ %2451, %2443 ]
  %2445 = phi double [ %2433, %2437 ], [ %2450, %2443 ]
  %2446 = add nsw i64 %2444, %2441
  %2447 = getelementptr inbounds %struct.BakeAdjPoint, ptr %2386, i64 %2446, i32 1
  %2448 = load float, ptr %2447, align 4, !tbaa !407
  %2449 = fpext float %2448 to double
  %2450 = fadd double %2445, %2449
  %2451 = add nuw nsw i64 %2444, 1
  %2452 = icmp eq i64 %2451, %2442
  br i1 %2452, label %2453, label %2443, !llvm.loop !412

2453:                                             ; preds = %2443, %2431
  %2454 = phi double [ %2433, %2431 ], [ %2450, %2443 ]
  %2455 = add nuw nsw i64 %2432, 1
  %2456 = icmp eq i64 %2455, %2430
  br i1 %2456, label %2457, label %2431, !llvm.loop !413

2457:                                             ; preds = %2453, %2421
  %2458 = phi double [ 0.000000e+00, %2421 ], [ %2454, %2453 ]
  %2459 = getelementptr inbounds %struct.PaintSurfaceData, ptr %2382, i64 0, i32 2
  %2460 = load ptr, ptr %2459, align 8, !tbaa !79
  %2461 = getelementptr inbounds %struct.PaintAdjData, ptr %2460, i64 0, i32 4
  %2462 = load i32, ptr %2461, align 8, !tbaa !227
  %2463 = sitofp i32 %2462 to float
  %2464 = fdiv float %2413, %2463
  %2465 = fpext float %2464 to double
  %2466 = fmul double %2458, %2465
  %2467 = fmul float %3, 0x3FA5555560000000
  %2468 = getelementptr inbounds %struct.DynamicPaintSurface, ptr %2, i64 0, i32 42
  %2469 = load float, ptr %2468, align 8, !tbaa !153
  %2470 = fmul float %2467, %2469
  %2471 = fpext float %2470 to double
  %2472 = fpext float %2388 to double
  %2473 = fdiv double %2466, %2472
  %2474 = fdiv double %2473, 3.000000e+00
  %2475 = fdiv double %2471, %2474
  %2476 = call double @llvm.ceil.f64(double %2475)
  %2477 = fptosi double %2476 to i32
  %2478 = call i32 @llvm.smin.i32(i32 %2477, i32 20)
  %2479 = call i32 @llvm.smax.i32(i32 %2478, i32 1)
  %2480 = sitofp i32 %2479 to float
  %2481 = fdiv float %3, %2480
  %2482 = fmul float %2481, 0x3FA5555560000000
  %2483 = fmul float %2469, %2482
  %2484 = fmul float %2388, %2483
  %2485 = fmul float %2484, 1.500000e+00
  %2486 = getelementptr inbounds %struct.DynamicPaintSurface, ptr %2, i64 0, i32 40
  %2487 = load float, ptr %2486, align 8, !tbaa !151
  %2488 = fsub float 1.000000e+00, %2487
  %2489 = fpext float %2488 to double
  %2490 = fmul float %2469, %2481
  %2491 = fpext float %2490 to double
  %2492 = call double @pow(double noundef %2489, double noundef %2491) #18
  %2493 = fptrunc double %2492 to float
  %2494 = getelementptr inbounds %struct.PaintSurfaceData, ptr %2382, i64 0, i32 1
  %2495 = getelementptr inbounds %struct.DynamicPaintSurface, ptr %2, i64 0, i32 18
  %2496 = getelementptr inbounds %struct.DynamicPaintSurface, ptr %2, i64 0, i32 43
  %2497 = fcmp une float %2393, 0.000000e+00
  %2498 = call i32 @llvm.smax.i32(i32 %2478, i32 1)
  br label %2506

2499:                                             ; preds = %2667
  %2500 = load i32, ptr %2415, align 8, !tbaa !194
  %2501 = icmp sgt i32 %2500, 0
  br i1 %2501, label %2502, label %2680

2502:                                             ; preds = %2499
  %2503 = getelementptr inbounds %struct.PaintSurfaceData, ptr %2382, i64 0, i32 1
  %2504 = load ptr, ptr %2503, align 8, !tbaa !78
  %2505 = zext nneg i32 %2500 to i64
  br label %2670

2506:                                             ; preds = %2457, %2667
  %2507 = phi i32 [ 0, %2457 ], [ %2668, %2667 ]
  %2508 = load ptr, ptr %2494, align 8, !tbaa !78
  %2509 = load i32, ptr %2415, align 8, !tbaa !194
  %2510 = sext i32 %2509 to i64
  %2511 = shl nsw i64 %2510, 4
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %2419, ptr align 1 %2508, i64 %2511, i1 false)
  %2512 = load i32, ptr %2415, align 8, !tbaa !194
  %2513 = icmp sgt i32 %2512, 0
  br i1 %2513, label %2514, label %2667

2514:                                             ; preds = %2506
  %2515 = load ptr, ptr %2494, align 8, !tbaa !78
  %2516 = load ptr, ptr %2459, align 8, !tbaa !79
  %2517 = getelementptr inbounds %struct.PaintAdjData, ptr %2516, i64 0, i32 2
  %2518 = load ptr, ptr %2517, align 8, !tbaa !82
  %2519 = getelementptr inbounds %struct.PaintAdjData, ptr %2516, i64 0, i32 1
  %2520 = getelementptr inbounds %struct.PaintAdjData, ptr %2516, i64 0, i32 3
  %2521 = getelementptr inbounds %struct.PaintAdjData, ptr %2516, i64 0, i32 3
  %2522 = zext nneg i32 %2512 to i64
  br label %2523

2523:                                             ; preds = %2514, %2664
  %2524 = phi i64 [ 0, %2514 ], [ %2665, %2664 ]
  %2525 = getelementptr inbounds %struct.PaintWavePoint, ptr %2515, i64 %2524
  %2526 = getelementptr inbounds i32, ptr %2518, i64 %2524
  %2527 = load i32, ptr %2526, align 4, !tbaa !205
  %2528 = getelementptr inbounds %struct.PaintWavePoint, ptr %2515, i64 %2524, i32 3
  %2529 = load i16, ptr %2528, align 4, !tbaa !414
  %2530 = icmp sgt i16 %2529, 0
  br i1 %2530, label %2664, label %2531

2531:                                             ; preds = %2523
  %2532 = icmp sgt i32 %2527, 0
  br i1 %2532, label %2533, label %2594

2533:                                             ; preds = %2531
  %2534 = load ptr, ptr %2519, align 8, !tbaa !80
  %2535 = getelementptr inbounds i32, ptr %2534, i64 %2524
  %2536 = load i32, ptr %2535, align 4, !tbaa !205
  %2537 = load ptr, ptr %2516, align 8, !tbaa !83
  %2538 = sext i32 %2536 to i64
  %2539 = zext nneg i32 %2527 to i64
  br label %2540

2540:                                             ; preds = %2533, %2585
  %2541 = phi i64 [ 0, %2533 ], [ %2592, %2585 ]
  %2542 = phi i32 [ 0, %2533 ], [ %2591, %2585 ]
  %2543 = phi i32 [ 0, %2533 ], [ %2590, %2585 ]
  %2544 = phi float [ 0.000000e+00, %2533 ], [ %2589, %2585 ]
  %2545 = phi float [ 0.000000e+00, %2533 ], [ %2588, %2585 ]
  %2546 = phi float [ 0.000000e+00, %2533 ], [ %2587, %2585 ]
  %2547 = phi float [ 0.000000e+00, %2533 ], [ %2586, %2585 ]
  %2548 = add nsw i64 %2541, %2538
  %2549 = getelementptr inbounds %struct.BakeAdjPoint, ptr %2386, i64 %2548, i32 1
  %2550 = load float, ptr %2549, align 4, !tbaa !407
  %2551 = fmul float %2413, %2550
  %2552 = getelementptr inbounds i32, ptr %2537, i64 %2548
  %2553 = load i32, ptr %2552, align 4, !tbaa !205
  %2554 = sext i32 %2553 to i64
  %2555 = getelementptr inbounds %struct.PaintWavePoint, ptr %2419, i64 %2554
  %2556 = fcmp une float %2551, 0.000000e+00
  br i1 %2556, label %2557, label %2585

2557:                                             ; preds = %2540
  %2558 = getelementptr inbounds %struct.PaintWavePoint, ptr %2419, i64 %2554, i32 3
  %2559 = load i16, ptr %2558, align 4, !tbaa !414
  %2560 = icmp sgt i16 %2559, 0
  br i1 %2560, label %2585, label %2561

2561:                                             ; preds = %2557
  %2562 = fcmp olt float %2551, %2485
  %2563 = select i1 %2562, float %2485, float %2551
  %2564 = fadd float %2546, %2563
  %2565 = add nsw i32 %2543, 1
  %2566 = load ptr, ptr %2520, align 8, !tbaa !84
  %2567 = getelementptr inbounds i32, ptr %2566, i64 %2554
  %2568 = load i32, ptr %2567, align 4, !tbaa !205
  %2569 = and i32 %2568, 1
  %2570 = icmp eq i32 %2569, 0
  br i1 %2570, label %2571, label %2575

2571:                                             ; preds = %2561
  %2572 = load float, ptr %2555, align 4, !tbaa !280
  %2573 = fadd float %2544, %2572
  %2574 = add nsw i32 %2542, 1
  br label %2575

2575:                                             ; preds = %2571, %2561
  %2576 = phi float [ %2544, %2561 ], [ %2573, %2571 ]
  %2577 = phi i32 [ %2542, %2561 ], [ %2574, %2571 ]
  %2578 = load float, ptr %2555, align 4, !tbaa !280
  %2579 = load float, ptr %2525, align 4, !tbaa !280
  %2580 = fsub float %2578, %2579
  %2581 = fmul float %2563, %2563
  %2582 = fdiv float %2580, %2581
  %2583 = fadd float %2547, %2582
  %2584 = fadd float %2545, %2578
  br label %2585

2585:                                             ; preds = %2575, %2557, %2540
  %2586 = phi float [ %2583, %2575 ], [ %2547, %2557 ], [ %2547, %2540 ]
  %2587 = phi float [ %2564, %2575 ], [ %2546, %2557 ], [ %2546, %2540 ]
  %2588 = phi float [ %2584, %2575 ], [ %2545, %2557 ], [ %2545, %2540 ]
  %2589 = phi float [ %2576, %2575 ], [ %2544, %2557 ], [ %2544, %2540 ]
  %2590 = phi i32 [ %2565, %2575 ], [ %2543, %2557 ], [ %2543, %2540 ]
  %2591 = phi i32 [ %2577, %2575 ], [ %2542, %2557 ], [ %2542, %2540 ]
  %2592 = add nuw nsw i64 %2541, 1
  %2593 = icmp eq i64 %2592, %2539
  br i1 %2593, label %2594, label %2540, !llvm.loop !415

2594:                                             ; preds = %2585, %2531
  %2595 = phi float [ 0.000000e+00, %2531 ], [ %2586, %2585 ]
  %2596 = phi float [ 0.000000e+00, %2531 ], [ %2587, %2585 ]
  %2597 = phi float [ 0.000000e+00, %2531 ], [ %2588, %2585 ]
  %2598 = phi float [ 0.000000e+00, %2531 ], [ %2589, %2585 ]
  %2599 = phi i32 [ 0, %2531 ], [ %2590, %2585 ]
  %2600 = phi i32 [ 0, %2531 ], [ %2591, %2585 ]
  %2601 = icmp eq i32 %2599, 0
  %2602 = sitofp i32 %2599 to float
  %2603 = fdiv float %2596, %2602
  %2604 = select i1 %2601, float 0.000000e+00, float %2603
  %2605 = load i32, ptr %2495, align 4, !tbaa !50
  %2606 = and i32 %2605, 128
  %2607 = icmp eq i32 %2606, 0
  br i1 %2607, label %2624, label %2608

2608:                                             ; preds = %2594
  %2609 = load ptr, ptr %2521, align 8, !tbaa !84
  %2610 = getelementptr inbounds i32, ptr %2609, i64 %2524
  %2611 = load i32, ptr %2610, align 4, !tbaa !205
  %2612 = and i32 %2611, 1
  %2613 = icmp eq i32 %2612, 0
  br i1 %2613, label %2624, label %2614

2614:                                             ; preds = %2608
  %2615 = icmp eq i32 %2600, 0
  %2616 = sitofp i32 %2600 to float
  %2617 = fdiv float %2598, %2616
  %2618 = select i1 %2615, float 0.000000e+00, float %2617
  %2619 = load float, ptr %2525, align 4, !tbaa !280
  %2620 = fmul float %2604, %2619
  %2621 = call float @llvm.fmuladd.f32(float %2484, float %2618, float %2620)
  %2622 = call float @llvm.fmuladd.f32(float %2483, float %2388, float %2604)
  %2623 = fdiv float %2621, %2622
  br label %2662

2624:                                             ; preds = %2608, %2594
  %2625 = fcmp une float %2604, 0.000000e+00
  br i1 %2625, label %2626, label %2635

2626:                                             ; preds = %2624
  %2627 = load float, ptr %2525, align 4, !tbaa !280
  %2628 = fsub float 0.000000e+00, %2627
  %2629 = load float, ptr %2496, align 4, !tbaa !154
  %2630 = fmul float %2628, %2629
  %2631 = fmul float %2604, %2604
  %2632 = fdiv float %2630, %2631
  %2633 = fmul float %2632, 5.000000e-01
  %2634 = fadd float %2595, %2633
  br label %2635

2635:                                             ; preds = %2626, %2624
  %2636 = phi float [ %2634, %2626 ], [ %2595, %2624 ]
  %2637 = fmul float %2483, %2636
  %2638 = fmul float %2388, %2637
  %2639 = getelementptr inbounds %struct.PaintWavePoint, ptr %2515, i64 %2524, i32 1
  %2640 = load float, ptr %2639, align 4, !tbaa !416
  %2641 = call float @llvm.fmuladd.f32(float %2638, float %2388, float %2640)
  %2642 = fmul float %2641, %2493
  store float %2642, ptr %2639, align 4, !tbaa !416
  %2643 = load float, ptr %2525, align 4, !tbaa !280
  %2644 = call float @llvm.fmuladd.f32(float %2642, float %2483, float %2643)
  store float %2644, ptr %2525, align 4, !tbaa !280
  %2645 = and i1 %2497, %2625
  br i1 %2645, label %2646, label %2664

2646:                                             ; preds = %2635
  %2647 = fmul float %2393, %2604
  %2648 = fdiv float %2597, %2602
  %2649 = fsub float %2648, %2644
  %2650 = select i1 %2601, float 0.000000e+00, float %2649
  %2651 = fcmp ogt float %2650, %2647
  br i1 %2651, label %2652, label %2655

2652:                                             ; preds = %2646
  %2653 = fsub float %2650, %2647
  %2654 = fadd float %2644, %2653
  store float %2654, ptr %2525, align 4, !tbaa !280
  br label %2655

2655:                                             ; preds = %2652, %2646
  %2656 = fneg float %2647
  %2657 = fcmp olt float %2650, %2656
  br i1 %2657, label %2658, label %2664

2658:                                             ; preds = %2655
  %2659 = fadd float %2647, %2650
  %2660 = load float, ptr %2525, align 4, !tbaa !280
  %2661 = fadd float %2659, %2660
  br label %2662

2662:                                             ; preds = %2614, %2658
  %2663 = phi float [ %2661, %2658 ], [ %2623, %2614 ]
  store float %2663, ptr %2525, align 4, !tbaa !280
  br label %2664

2664:                                             ; preds = %2662, %2655, %2635, %2523
  %2665 = add nuw nsw i64 %2524, 1
  %2666 = icmp eq i64 %2665, %2522
  br i1 %2666, label %2667, label %2523, !llvm.loop !417

2667:                                             ; preds = %2664, %2506
  %2668 = add nuw nsw i32 %2507, 1
  %2669 = icmp eq i32 %2668, %2498
  br i1 %2669, label %2499, label %2506, !llvm.loop !418

2670:                                             ; preds = %2502, %2677
  %2671 = phi i64 [ 0, %2502 ], [ %2678, %2677 ]
  %2672 = getelementptr inbounds %struct.PaintWavePoint, ptr %2504, i64 %2671, i32 3
  %2673 = load i16, ptr %2672, align 4, !tbaa !414
  %2674 = icmp eq i16 %2673, 0
  br i1 %2674, label %2675, label %2677

2675:                                             ; preds = %2670
  %2676 = getelementptr inbounds %struct.PaintWavePoint, ptr %2504, i64 %2671, i32 2
  store float 0.000000e+00, ptr %2676, align 4, !tbaa !419
  br label %2677

2677:                                             ; preds = %2675, %2670
  store i16 0, ptr %2672, align 4, !tbaa !414
  %2678 = add nuw nsw i64 %2671, 1
  %2679 = icmp eq i64 %2678, %2505
  br i1 %2679, label %2680, label %2670, !llvm.loop !420

2680:                                             ; preds = %2677, %2499
  %2681 = load ptr, ptr @MEM_freeN, align 8, !tbaa !44
  call void %2681(ptr noundef nonnull %2419) #18
  br label %2682

2682:                                             ; preds = %2680, %2381, %2377
  %2683 = getelementptr inbounds %struct.DynamicPaintSurface, ptr %2, i64 0, i32 19
  %2684 = load i32, ptr %2683, align 8, !tbaa !113
  %2685 = icmp eq i32 %2684, 0
  br i1 %2685, label %3389, label %2686

2686:                                             ; preds = %2682
  %2687 = load i16, ptr %2378, align 2, !tbaa !43
  %2688 = icmp eq i16 %2687, 0
  br i1 %2688, label %2689, label %3389

2689:                                             ; preds = %2686
  %2690 = load ptr, ptr @MEM_mallocN, align 8, !tbaa !44
  %2691 = load i32, ptr %51, align 8, !tbaa !194
  %2692 = sext i32 %2691 to i64
  %2693 = mul nsw i64 %2692, 40
  %2694 = call ptr %2690(i64 noundef %2693, ptr noundef nonnull @.str.56) #18
  %2695 = icmp eq ptr %2694, null
  br i1 %2695, label %2696, label %2699

2696:                                             ; preds = %2689
  %2697 = getelementptr inbounds %struct.DynamicPaintCanvasSettings, ptr %50, i64 0, i32 6
  %2698 = call ptr @BLI_strncpy(ptr noundef nonnull %2697, ptr noundef nonnull @.str.17, i64 noundef 64) #18
  br label %3388

2699:                                             ; preds = %2689
  %2700 = load ptr, ptr %45, align 8, !tbaa !72
  %2701 = getelementptr inbounds %struct.PaintSurfaceData, ptr %2700, i64 0, i32 3
  %2702 = load ptr, ptr %2701, align 8, !tbaa !85
  %2703 = getelementptr inbounds %struct.PaintBakeData, ptr %2702, i64 0, i32 3
  %2704 = load ptr, ptr %2703, align 8, !tbaa !92
  %2705 = load i32, ptr %2683, align 8, !tbaa !113
  %2706 = and i32 %2705, 2
  %2707 = icmp eq i32 %2706, 0
  br i1 %2707, label %2882, label %2708

2708:                                             ; preds = %2699
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %8) #18
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %8, i8 0, i64 12, i1 false)
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %9) #18
  %2709 = getelementptr inbounds %struct.DynamicPaintSurface, ptr %2, i64 0, i32 5
  %2710 = load ptr, ptr %2709, align 8, !tbaa !104
  %2711 = call ptr @pdInitEffectors(ptr noundef %0, ptr noundef %1, ptr noundef null, ptr noundef %2710, i8 noundef zeroext 1) #18
  store ptr %2711, ptr %9, align 8, !tbaa !44
  %2712 = load ptr, ptr @MEM_mallocN, align 8, !tbaa !44
  %2713 = getelementptr inbounds %struct.PaintSurfaceData, ptr %2700, i64 0, i32 4
  %2714 = load i32, ptr %2713, align 8, !tbaa !194
  %2715 = shl nsw i32 %2714, 2
  %2716 = sext i32 %2715 to i64
  %2717 = shl nsw i64 %2716, 2
  %2718 = call ptr %2712(i64 noundef %2717, ptr noundef nonnull @.str.60) #18
  %2719 = icmp eq ptr %2718, null
  br i1 %2719, label %2880, label %2720

2720:                                             ; preds = %2708
  %2721 = load i32, ptr %2713, align 8, !tbaa !194
  %2722 = icmp sgt i32 %2721, 0
  br i1 %2722, label %2723, label %2742

2723:                                             ; preds = %2720
  %2724 = getelementptr inbounds %struct.PaintBakeData, ptr %2702, i64 0, i32 1
  %2725 = getelementptr inbounds %struct.EffectedPoint, ptr %11, i64 0, i32 5
  %2726 = getelementptr inbounds %struct.Scene, ptr %0, i64 0, i32 40, i32 1
  %2727 = getelementptr inbounds %struct.Scene, ptr %0, i64 0, i32 40
  %2728 = getelementptr inbounds %struct.Scene, ptr %0, i64 0, i32 40, i32 0, i64 1
  %2729 = getelementptr inbounds float, ptr %10, i64 1
  %2730 = getelementptr inbounds %struct.Scene, ptr %0, i64 0, i32 40, i32 0, i64 2
  %2731 = getelementptr inbounds float, ptr %10, i64 2
  %2732 = getelementptr inbounds %struct.PaintBakeData, ptr %2702, i64 0, i32 8
  %2733 = getelementptr inbounds %struct.DynamicPaintSurface, ptr %2, i64 0, i32 36
  %2734 = getelementptr inbounds float, ptr %10, i64 1
  %2735 = getelementptr inbounds float, ptr %10, i64 2
  %2736 = getelementptr inbounds %struct.PaintBakeData, ptr %2702, i64 0, i32 9
  %2737 = getelementptr inbounds %struct.DynamicPaintSurface, ptr %2, i64 0, i32 37
  %2738 = getelementptr inbounds float, ptr %10, i64 1
  %2739 = getelementptr inbounds float, ptr %10, i64 2
  %2740 = getelementptr inbounds float, ptr %10, i64 1
  %2741 = getelementptr inbounds float, ptr %10, i64 2
  br label %2747

2742:                                             ; preds = %2852, %2720
  %2743 = phi i32 [ %2721, %2720 ], [ %2861, %2852 ]
  %2744 = icmp sgt i32 %2743, 0
  br i1 %2744, label %2745, label %2875

2745:                                             ; preds = %2742
  %2746 = zext nneg i32 %2743 to i64
  br label %2864

2747:                                             ; preds = %2723, %2852
  %2748 = phi i64 [ 0, %2723 ], [ %2860, %2852 ]
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %10) #18
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %10, i8 0, i64 12, i1 false)
  %2749 = load ptr, ptr %9, align 8, !tbaa !44
  %2750 = icmp eq ptr %2749, null
  br i1 %2750, label %2760, label %2751

2751:                                             ; preds = %2747
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %11) #18
  %2752 = load ptr, ptr %2724, align 8, !tbaa !90
  %2753 = getelementptr inbounds i32, ptr %2752, i64 %2748
  %2754 = load i32, ptr %2753, align 4, !tbaa !205
  %2755 = sext i32 %2754 to i64
  %2756 = getelementptr inbounds %struct.Vec3f, ptr %2704, i64 %2755
  %2757 = trunc i64 %2748 to i32
  call void @pd_point_from_loc(ptr noundef %0, ptr noundef %2756, ptr noundef nonnull %8, i32 noundef %2757, ptr noundef nonnull %11) #18
  store float 1.000000e+00, ptr %2725, align 4, !tbaa !421
  %2758 = load ptr, ptr %9, align 8, !tbaa !44
  %2759 = load ptr, ptr %2709, align 8, !tbaa !104
  call void @pdDoEffectors(ptr noundef %2758, ptr noundef null, ptr noundef %2759, ptr noundef nonnull %11, ptr noundef nonnull %10, ptr noundef null) #18
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %11) #18
  br label %2760

2760:                                             ; preds = %2751, %2747
  %2761 = load i32, ptr %2726, align 4, !tbaa !423
  %2762 = and i32 %2761, 1
  %2763 = icmp eq i32 %2762, 0
  br i1 %2763, label %2781, label %2764

2764:                                             ; preds = %2760
  %2765 = load ptr, ptr %2709, align 8, !tbaa !104
  %2766 = getelementptr inbounds %struct.EffectorWeights, ptr %2765, i64 0, i32 2
  %2767 = load float, ptr %2766, align 8, !tbaa !424
  %2768 = getelementptr inbounds %struct.EffectorWeights, ptr %2765, i64 0, i32 1
  %2769 = load float, ptr %2768, align 8, !tbaa !123
  %2770 = fmul float %2767, %2769
  %2771 = fdiv float %2770, 1.000000e+01
  %2772 = load float, ptr %2727, align 4, !tbaa !123
  %2773 = load float, ptr %10, align 4, !tbaa !123
  %2774 = call float @llvm.fmuladd.f32(float %2772, float %2771, float %2773)
  store float %2774, ptr %10, align 4, !tbaa !123
  %2775 = load float, ptr %2728, align 4, !tbaa !123
  %2776 = load float, ptr %2729, align 4, !tbaa !123
  %2777 = call float @llvm.fmuladd.f32(float %2775, float %2771, float %2776)
  store float %2777, ptr %2729, align 4, !tbaa !123
  %2778 = load float, ptr %2730, align 4, !tbaa !123
  %2779 = load float, ptr %2731, align 4, !tbaa !123
  %2780 = call float @llvm.fmuladd.f32(float %2778, float %2771, float %2779)
  store float %2780, ptr %2731, align 4, !tbaa !123
  br label %2781

2781:                                             ; preds = %2764, %2760
  %2782 = load ptr, ptr %2732, align 8, !tbaa !101
  %2783 = icmp eq ptr %2782, null
  br i1 %2783, label %2830, label %2784

2784:                                             ; preds = %2781
  %2785 = load float, ptr %2733, align 8, !tbaa !190
  %2786 = fcmp une float %2785, 0.000000e+00
  br i1 %2786, label %2787, label %2801

2787:                                             ; preds = %2784
  %2788 = getelementptr inbounds %struct.Vec3f, ptr %2782, i64 %2748
  %2789 = fneg float %2785
  %2790 = load float, ptr %2788, align 4, !tbaa !123
  %2791 = load float, ptr %10, align 4, !tbaa !123
  %2792 = call float @llvm.fmuladd.f32(float %2790, float %2789, float %2791)
  store float %2792, ptr %10, align 4, !tbaa !123
  %2793 = getelementptr inbounds float, ptr %2788, i64 1
  %2794 = load float, ptr %2793, align 4, !tbaa !123
  %2795 = load float, ptr %2734, align 4, !tbaa !123
  %2796 = call float @llvm.fmuladd.f32(float %2794, float %2789, float %2795)
  store float %2796, ptr %2734, align 4, !tbaa !123
  %2797 = getelementptr inbounds float, ptr %2788, i64 2
  %2798 = load float, ptr %2797, align 4, !tbaa !123
  %2799 = load float, ptr %2735, align 4, !tbaa !123
  %2800 = call float @llvm.fmuladd.f32(float %2798, float %2789, float %2799)
  store float %2800, ptr %2735, align 4, !tbaa !123
  br label %2801

2801:                                             ; preds = %2787, %2784
  %2802 = load ptr, ptr %2736, align 8, !tbaa !102
  %2803 = icmp eq ptr %2802, null
  br i1 %2803, label %2830, label %2804

2804:                                             ; preds = %2801
  %2805 = load float, ptr %2737, align 4, !tbaa !191
  %2806 = fcmp une float %2805, 0.000000e+00
  br i1 %2806, label %2807, label %2830

2807:                                             ; preds = %2804
  %2808 = getelementptr inbounds %struct.Vec3f, ptr %2782, i64 %2748
  %2809 = load float, ptr %2808, align 4, !tbaa !123
  %2810 = getelementptr inbounds float, ptr %2808, i64 1
  %2811 = load float, ptr %2810, align 4, !tbaa !123
  %2812 = getelementptr inbounds float, ptr %2808, i64 2
  %2813 = load float, ptr %2812, align 4, !tbaa !123
  %2814 = getelementptr inbounds %struct.Vec3f, ptr %2802, i64 %2748
  %2815 = load float, ptr %2814, align 4, !tbaa !123
  %2816 = fsub float %2809, %2815
  %2817 = getelementptr inbounds float, ptr %2814, i64 1
  %2818 = load float, ptr %2817, align 4, !tbaa !123
  %2819 = fsub float %2811, %2818
  %2820 = getelementptr inbounds float, ptr %2814, i64 2
  %2821 = load float, ptr %2820, align 4, !tbaa !123
  %2822 = fsub float %2813, %2821
  %2823 = fneg float %2805
  %2824 = load float, ptr %10, align 4, !tbaa !123
  %2825 = call float @llvm.fmuladd.f32(float %2816, float %2823, float %2824)
  store float %2825, ptr %10, align 4, !tbaa !123
  %2826 = load float, ptr %2738, align 4, !tbaa !123
  %2827 = call float @llvm.fmuladd.f32(float %2819, float %2823, float %2826)
  store float %2827, ptr %2738, align 4, !tbaa !123
  %2828 = load float, ptr %2739, align 4, !tbaa !123
  %2829 = call float @llvm.fmuladd.f32(float %2822, float %2823, float %2828)
  store float %2829, ptr %2739, align 4, !tbaa !123
  br label %2830

2830:                                             ; preds = %2807, %2804, %2801, %2781
  %2831 = load float, ptr %10, align 4, !tbaa !123
  %2832 = load float, ptr %2740, align 4, !tbaa !123
  %2833 = fmul float %2832, %2832
  %2834 = call float @llvm.fmuladd.f32(float %2831, float %2831, float %2833)
  %2835 = load float, ptr %2741, align 4, !tbaa !123
  %2836 = call float @llvm.fmuladd.f32(float %2835, float %2835, float %2834)
  %2837 = call float @sqrtf(float noundef %2836) #18
  %2838 = trunc i64 %2748 to i32
  %2839 = shl nsw i32 %2838, 2
  %2840 = or disjoint i32 %2839, 3
  %2841 = zext nneg i32 %2840 to i64
  %2842 = getelementptr inbounds float, ptr %2718, i64 %2841
  store float %2837, ptr %2842, align 4, !tbaa !123
  %2843 = fcmp une float %2837, 0.000000e+00
  br i1 %2843, label %2844, label %2852

2844:                                             ; preds = %2830
  %2845 = fdiv float 1.000000e+00, %2837
  %2846 = load float, ptr %10, align 4, !tbaa !123
  %2847 = fmul float %2845, %2846
  store float %2847, ptr %10, align 4, !tbaa !123
  %2848 = load float, ptr %2740, align 4, !tbaa !123
  %2849 = fmul float %2845, %2848
  store float %2849, ptr %2740, align 4, !tbaa !123
  %2850 = load float, ptr %2741, align 4, !tbaa !123
  %2851 = fmul float %2845, %2850
  store float %2851, ptr %2741, align 4, !tbaa !123
  br label %2852

2852:                                             ; preds = %2844, %2830
  %2853 = zext nneg i32 %2839 to i64
  %2854 = getelementptr inbounds float, ptr %2718, i64 %2853
  %2855 = load float, ptr %10, align 4, !tbaa !123
  store float %2855, ptr %2854, align 4, !tbaa !123
  %2856 = load float, ptr %2740, align 4, !tbaa !123
  %2857 = getelementptr inbounds float, ptr %2854, i64 1
  store float %2856, ptr %2857, align 4, !tbaa !123
  %2858 = load float, ptr %2741, align 4, !tbaa !123
  %2859 = getelementptr inbounds float, ptr %2854, i64 2
  store float %2858, ptr %2859, align 4, !tbaa !123
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %10) #18
  %2860 = add nuw nsw i64 %2748, 1
  %2861 = load i32, ptr %2713, align 8, !tbaa !194
  %2862 = sext i32 %2861 to i64
  %2863 = icmp slt i64 %2860, %2862
  br i1 %2863, label %2747, label %2742, !llvm.loop !426

2864:                                             ; preds = %2745, %2864
  %2865 = phi i64 [ 0, %2745 ], [ %2873, %2864 ]
  %2866 = phi double [ 0.000000e+00, %2745 ], [ %2872, %2864 ]
  %2867 = shl nsw i64 %2865, 2
  %2868 = or disjoint i64 %2867, 3
  %2869 = getelementptr inbounds float, ptr %2718, i64 %2868
  %2870 = load float, ptr %2869, align 4, !tbaa !123
  %2871 = fpext float %2870 to double
  %2872 = fadd double %2866, %2871
  %2873 = add nuw nsw i64 %2865, 1
  %2874 = icmp eq i64 %2873, %2746
  br i1 %2874, label %2875, label %2864, !llvm.loop !427

2875:                                             ; preds = %2864, %2742
  %2876 = phi double [ 0.000000e+00, %2742 ], [ %2872, %2864 ]
  %2877 = sitofp i32 %2743 to double
  %2878 = fdiv double %2876, %2877
  %2879 = fptrunc double %2878 to float
  br label %2880

2880:                                             ; preds = %2875, %2708
  %2881 = phi float [ %2879, %2875 ], [ 0.000000e+00, %2708 ]
  call void @pdEndEffectors(ptr noundef nonnull %9) #18
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %9) #18
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %8) #18
  br label %2882

2882:                                             ; preds = %2880, %2699
  %2883 = phi ptr [ null, %2699 ], [ %2718, %2880 ]
  %2884 = phi float [ 0.000000e+00, %2699 ], [ %2881, %2880 ]
  %2885 = load i32, ptr %2683, align 8, !tbaa !113
  %2886 = and i32 %2885, 1
  %2887 = icmp eq i32 %2886, 0
  br i1 %2887, label %2891, label %2888

2888:                                             ; preds = %2882
  %2889 = getelementptr inbounds %struct.DynamicPaintSurface, ptr %2, i64 0, i32 33
  %2890 = load float, ptr %2889, align 4, !tbaa !148
  br label %2891

2891:                                             ; preds = %2888, %2882
  %2892 = phi float [ %2890, %2888 ], [ 0.000000e+00, %2882 ]
  %2893 = and i32 %2885, 4
  %2894 = icmp eq i32 %2893, 0
  br i1 %2894, label %2898, label %2895

2895:                                             ; preds = %2891
  %2896 = getelementptr inbounds %struct.DynamicPaintSurface, ptr %2, i64 0, i32 35
  %2897 = load float, ptr %2896, align 4, !tbaa !150
  br label %2898

2898:                                             ; preds = %2891, %2895
  %2899 = phi float [ %2897, %2895 ], [ 0.000000e+00, %2891 ]
  %2900 = fcmp ogt float %2892, %2899
  %2901 = select i1 %2900, float %2892, float %2899
  %2902 = fcmp ogt float %2901, %2884
  %2903 = select i1 %2902, float %2901, float %2884
  %2904 = getelementptr inbounds %struct.PaintBakeData, ptr %2702, i64 0, i32 6
  %2905 = load double, ptr %2904, align 8, !tbaa !406
  %2906 = fmul double %2905, 5.000000e+00
  %2907 = load ptr, ptr %2701, align 8, !tbaa !85
  %2908 = getelementptr inbounds %struct.PaintBakeData, ptr %2907, i64 0, i32 4, i32 2
  %2909 = load float, ptr %2908, align 4, !tbaa !123
  %2910 = getelementptr inbounds %struct.PaintBakeData, ptr %2907, i64 0, i32 4, i32 1
  %2911 = load float, ptr %2910, align 4, !tbaa !123
  %2912 = fsub float %2909, %2911
  %2913 = getelementptr inbounds %struct.PaintBakeData, ptr %2907, i64 0, i32 4, i32 2, i64 1
  %2914 = load float, ptr %2913, align 4, !tbaa !123
  %2915 = getelementptr inbounds %struct.PaintBakeData, ptr %2907, i64 0, i32 4, i32 1, i64 1
  %2916 = load float, ptr %2915, align 4, !tbaa !123
  %2917 = fsub float %2914, %2916
  %2918 = getelementptr inbounds %struct.PaintBakeData, ptr %2907, i64 0, i32 4, i32 2, i64 2
  %2919 = load float, ptr %2918, align 4, !tbaa !123
  %2920 = getelementptr inbounds %struct.PaintBakeData, ptr %2907, i64 0, i32 4, i32 1, i64 2
  %2921 = load float, ptr %2920, align 4, !tbaa !123
  %2922 = fsub float %2919, %2921
  %2923 = fcmp ogt float %2912, %2917
  %2924 = select i1 %2923, float %2912, float %2917
  %2925 = fcmp ogt float %2924, %2922
  %2926 = select i1 %2925, float %2924, float %2922
  %2927 = fpext float %2926 to double
  %2928 = fdiv double %2906, %2927
  %2929 = fptrunc double %2928 to float
  %2930 = fmul float %2903, 0x3FB3333340000000
  %2931 = fdiv float %2930, %2929
  %2932 = fmul float %2931, %3
  %2933 = call float @llvm.ceil.f32(float %2932)
  %2934 = fptosi float %2933 to i32
  %2935 = call i32 @llvm.smin.i32(i32 %2934, i32 20)
  %2936 = call i32 @llvm.smax.i32(i32 %2935, i32 1)
  %2937 = sitofp i32 %2936 to float
  %2938 = fdiv float %3, %2937
  %2939 = getelementptr inbounds %struct.DynamicPaintSurface, ptr %2, i64 0, i32 33
  %2940 = getelementptr inbounds %struct.DynamicPaintSurface, ptr %2, i64 0, i32 34
  %2941 = getelementptr inbounds %struct.DynamicPaintSurface, ptr %2, i64 0, i32 35
  %2942 = icmp ne ptr %2883, null
  %2943 = call i32 @llvm.smax.i32(i32 %2935, i32 1)
  br label %2944

2944:                                             ; preds = %2898, %3380
  %2945 = phi i32 [ 0, %2898 ], [ %3381, %3380 ]
  %2946 = load ptr, ptr %45, align 8, !tbaa !72
  %2947 = getelementptr inbounds %struct.PaintSurfaceData, ptr %2946, i64 0, i32 3
  %2948 = load ptr, ptr %2947, align 8, !tbaa !85
  %2949 = getelementptr inbounds %struct.PaintBakeData, ptr %2948, i64 0, i32 5
  %2950 = load ptr, ptr %2949, align 8, !tbaa !93
  %2951 = getelementptr inbounds %struct.PaintBakeData, ptr %2948, i64 0, i32 4, i32 2
  %2952 = load float, ptr %2951, align 4, !tbaa !123
  %2953 = getelementptr inbounds %struct.PaintBakeData, ptr %2948, i64 0, i32 4, i32 1
  %2954 = load float, ptr %2953, align 4, !tbaa !123
  %2955 = fsub float %2952, %2954
  %2956 = getelementptr inbounds %struct.PaintBakeData, ptr %2948, i64 0, i32 4, i32 2, i64 1
  %2957 = load float, ptr %2956, align 4, !tbaa !123
  %2958 = getelementptr inbounds %struct.PaintBakeData, ptr %2948, i64 0, i32 4, i32 1, i64 1
  %2959 = load float, ptr %2958, align 4, !tbaa !123
  %2960 = fsub float %2957, %2959
  %2961 = getelementptr inbounds %struct.PaintBakeData, ptr %2948, i64 0, i32 4, i32 2, i64 2
  %2962 = load float, ptr %2961, align 4, !tbaa !123
  %2963 = getelementptr inbounds %struct.PaintBakeData, ptr %2948, i64 0, i32 4, i32 1, i64 2
  %2964 = load float, ptr %2963, align 4, !tbaa !123
  %2965 = fsub float %2962, %2964
  %2966 = fcmp ogt float %2955, %2960
  %2967 = select i1 %2966, float %2955, float %2960
  %2968 = fcmp ogt float %2967, %2965
  %2969 = select i1 %2968, float %2967, float %2965
  %2970 = fdiv float %2969, 5.000000e+00
  %2971 = getelementptr inbounds %struct.PaintSurfaceData, ptr %2946, i64 0, i32 2
  %2972 = load ptr, ptr %2971, align 8, !tbaa !79
  %2973 = icmp eq ptr %2972, null
  br i1 %2973, label %3380, label %2974

2974:                                             ; preds = %2944
  %2975 = load i32, ptr %2683, align 8, !tbaa !113
  %2976 = and i32 %2975, 1
  %2977 = icmp eq i32 %2976, 0
  br i1 %2977, label %3128, label %2978

2978:                                             ; preds = %2974
  %2979 = fmul float %2970, 0x3FA99999A0000000
  %2980 = load float, ptr %2939, align 4, !tbaa !148
  %2981 = fmul float %2979, %2980
  %2982 = fmul float %2938, %2981
  %2983 = getelementptr inbounds %struct.PaintSurfaceData, ptr %2946, i64 0, i32 1
  %2984 = load ptr, ptr %2983, align 8, !tbaa !78
  %2985 = getelementptr inbounds %struct.PaintSurfaceData, ptr %2946, i64 0, i32 4
  %2986 = load i32, ptr %2985, align 8, !tbaa !194
  %2987 = sext i32 %2986 to i64
  %2988 = mul nsw i64 %2987, 40
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %2694, ptr align 1 %2984, i64 %2988, i1 false)
  %2989 = load i32, ptr %2985, align 8, !tbaa !194
  %2990 = icmp sgt i32 %2989, 0
  br i1 %2990, label %2991, label %3128

2991:                                             ; preds = %2978, %3123
  %2992 = phi i64 [ %3124, %3123 ], [ 0, %2978 ]
  %2993 = load ptr, ptr %2971, align 8, !tbaa !79
  %2994 = getelementptr inbounds %struct.PaintAdjData, ptr %2993, i64 0, i32 2
  %2995 = load ptr, ptr %2994, align 8, !tbaa !82
  %2996 = getelementptr inbounds i32, ptr %2995, i64 %2992
  %2997 = load i32, ptr %2996, align 4, !tbaa !205
  %2998 = load ptr, ptr %2983, align 8, !tbaa !78
  %2999 = getelementptr inbounds %struct.PaintPoint, ptr %2998, i64 %2992
  %3000 = icmp sgt i32 %2997, 0
  br i1 %3000, label %3001, label %3123

3001:                                             ; preds = %2991
  %3002 = getelementptr inbounds %struct.PaintPoint, ptr %2998, i64 %2992, i32 2
  %3003 = getelementptr inbounds %struct.PaintPoint, ptr %2998, i64 %2992, i32 1
  %3004 = getelementptr inbounds float, ptr %2999, i64 1
  %3005 = getelementptr inbounds float, ptr %2999, i64 2
  %3006 = sitofp i32 %2997 to float
  %3007 = fdiv float 1.000000e+00, %3006
  %3008 = getelementptr inbounds %struct.PaintPoint, ptr %2998, i64 %2992, i32 1
  %3009 = getelementptr inbounds float, ptr %2999, i64 1
  %3010 = getelementptr inbounds float, ptr %2999, i64 2
  br label %3011

3011:                                             ; preds = %3001, %3120
  %3012 = phi i32 [ 0, %3001 ], [ %3121, %3120 ]
  %3013 = load ptr, ptr %2971, align 8, !tbaa !79
  %3014 = getelementptr inbounds %struct.PaintAdjData, ptr %3013, i64 0, i32 1
  %3015 = load ptr, ptr %3014, align 8, !tbaa !80
  %3016 = getelementptr inbounds i32, ptr %3015, i64 %2992
  %3017 = load i32, ptr %3016, align 4, !tbaa !205
  %3018 = add nsw i32 %3017, %3012
  %3019 = load ptr, ptr %3013, align 8, !tbaa !83
  %3020 = sext i32 %3018 to i64
  %3021 = getelementptr inbounds i32, ptr %3019, i64 %3020
  %3022 = load i32, ptr %3021, align 4, !tbaa !205
  %3023 = sext i32 %3022 to i64
  %3024 = getelementptr inbounds %struct.PaintPoint, ptr %2694, i64 %3023
  %3025 = getelementptr inbounds %struct.BakeAdjPoint, ptr %2950, i64 %3020, i32 1
  %3026 = load float, ptr %3025, align 4, !tbaa !407
  %3027 = fcmp olt float %3026, %2982
  %3028 = fdiv float %2982, %3026
  %3029 = select i1 %3027, float 1.000000e+00, float %3028
  %3030 = getelementptr inbounds %struct.PaintPoint, ptr %2694, i64 %3023, i32 2
  %3031 = load float, ptr %3030, align 4, !tbaa !265
  %3032 = load float, ptr %3002, align 4, !tbaa !265
  %3033 = fcmp olt float %3031, %3032
  %3034 = select i1 %3033, float %3031, float %3032
  %3035 = fcmp olt float %3034, 1.000000e+00
  %3036 = select i1 %3035, float %3034, float 1.000000e+00
  %3037 = fmul float %3036, 2.500000e-01
  %3038 = load float, ptr %2940, align 8, !tbaa !149
  %3039 = fmul float %3038, %3037
  %3040 = fcmp une float %3039, 0.000000e+00
  br i1 %3040, label %3041, label %3067

3041:                                             ; preds = %3011
  %3042 = load float, ptr %3003, align 4, !tbaa !252
  %3043 = getelementptr inbounds %struct.PaintPoint, ptr %2694, i64 %3023, i32 1
  %3044 = load float, ptr %3043, align 4, !tbaa !252
  %3045 = fcmp une float %3044, 0.000000e+00
  br i1 %3045, label %3046, label %3067

3046:                                             ; preds = %3041
  %3047 = fcmp une float %3042, 0.000000e+00
  br i1 %3047, label %3054, label %3048

3048:                                             ; preds = %3046
  %3049 = load float, ptr %3024, align 4, !tbaa !123
  store float %3049, ptr %2999, align 4, !tbaa !123
  %3050 = getelementptr inbounds float, ptr %3024, i64 1
  %3051 = load float, ptr %3050, align 4, !tbaa !123
  store float %3051, ptr %3004, align 4, !tbaa !123
  %3052 = getelementptr inbounds float, ptr %3024, i64 2
  %3053 = load float, ptr %3052, align 4, !tbaa !123
  store float %3053, ptr %3005, align 4, !tbaa !123
  br label %3067

3054:                                             ; preds = %3046
  %3055 = fadd float %3042, %3044
  %3056 = fdiv float %3044, %3055
  %3057 = fcmp ugt float %3039, 5.000000e-01
  br i1 %3057, label %3061, label %3058

3058:                                             ; preds = %3054
  %3059 = fmul float %3039, 2.000000e+00
  %3060 = fmul float %3059, %3056
  br label %3065

3061:                                             ; preds = %3054
  %3062 = call float @llvm.fmuladd.f32(float %3039, float 2.000000e+00, float -1.000000e+00)
  %3063 = fsub float 1.000000e+00, %3062
  %3064 = call float @llvm.fmuladd.f32(float %3056, float %3063, float %3062)
  br label %3065

3065:                                             ; preds = %3061, %3058
  %3066 = phi float [ %3060, %3058 ], [ %3064, %3061 ]
  call void @interp_v3_v3v3(ptr noundef %2999, ptr noundef %2999, ptr noundef nonnull %3024, float noundef %3066) #18
  br label %3067

3067:                                             ; preds = %3041, %3065, %3048, %3011
  %3068 = load float, ptr %3030, align 4, !tbaa !265
  %3069 = load float, ptr %3002, align 4, !tbaa !265
  %3070 = fcmp olt float %3068, %3069
  %3071 = fcmp olt float %3068, 0x3F50624DE0000000
  %3072 = or i1 %3071, %3070
  br i1 %3072, label %3120, label %3073

3073:                                             ; preds = %3067
  %3074 = fcmp olt float %3068, 1.000000e+00
  %3075 = select i1 %3074, float %3068, float 1.000000e+00
  %3076 = fmul float %3007, %3075
  %3077 = fmul float %3029, %3076
  %3078 = fcmp olt float %3077, 0.000000e+00
  br i1 %3078, label %3082, label %3079

3079:                                             ; preds = %3073
  %3080 = fcmp ogt float %3077, 1.000000e+00
  br i1 %3080, label %3081, label %3082

3081:                                             ; preds = %3079
  br label %3082

3082:                                             ; preds = %3081, %3079, %3073
  %3083 = phi float [ 1.000000e+00, %3081 ], [ %3077, %3079 ], [ 0.000000e+00, %3073 ]
  %3084 = fsub float 1.000000e+00, %3083
  %3085 = fmul float %3068, %3083
  %3086 = call float @llvm.fmuladd.f32(float %3084, float %3069, float %3085)
  store float %3086, ptr %3002, align 4, !tbaa !265
  %3087 = load float, ptr %3008, align 4, !tbaa !252
  %3088 = getelementptr inbounds %struct.PaintPoint, ptr %2694, i64 %3023, i32 1
  %3089 = load float, ptr %3088, align 4, !tbaa !252
  %3090 = fcmp une float %3089, 0.000000e+00
  br i1 %3090, label %3091, label %3104

3091:                                             ; preds = %3082
  %3092 = fcmp une float %3087, 0.000000e+00
  br i1 %3092, label %3100, label %3093

3093:                                             ; preds = %3091
  %3094 = load float, ptr %3024, align 4, !tbaa !123
  store float %3094, ptr %2999, align 4, !tbaa !123
  %3095 = getelementptr inbounds float, ptr %3024, i64 1
  %3096 = load float, ptr %3095, align 4, !tbaa !123
  store float %3096, ptr %3009, align 4, !tbaa !123
  %3097 = getelementptr inbounds float, ptr %3024, i64 2
  %3098 = load float, ptr %3097, align 4, !tbaa !123
  store float %3098, ptr %3010, align 4, !tbaa !123
  %3099 = fmul float %3083, %3089
  br label %3118

3100:                                             ; preds = %3091
  %3101 = fadd float %3087, %3089
  %3102 = fdiv float %3089, %3101
  %3103 = fcmp ugt float %3083, 5.000000e-01
  br i1 %3103, label %3109, label %3106

3104:                                             ; preds = %3082
  %3105 = fmul float %3084, %3087
  br label %3118

3106:                                             ; preds = %3100
  %3107 = fmul float %3083, 2.000000e+00
  %3108 = fmul float %3107, %3102
  br label %3113

3109:                                             ; preds = %3100
  %3110 = call float @llvm.fmuladd.f32(float %3083, float 2.000000e+00, float -1.000000e+00)
  %3111 = fsub float 1.000000e+00, %3110
  %3112 = call float @llvm.fmuladd.f32(float %3102, float %3111, float %3110)
  br label %3113

3113:                                             ; preds = %3109, %3106
  %3114 = phi float [ %3108, %3106 ], [ %3112, %3109 ]
  call void @interp_v3_v3v3(ptr noundef %2999, ptr noundef %2999, ptr noundef nonnull %3024, float noundef %3114) #18
  %3115 = fsub float 1.000000e+00, %3114
  %3116 = fmul float %3089, %3114
  %3117 = call float @llvm.fmuladd.f32(float %3115, float %3087, float %3116)
  br label %3118

3118:                                             ; preds = %3093, %3104, %3113
  %3119 = phi float [ %3117, %3113 ], [ %3099, %3093 ], [ %3105, %3104 ]
  store float %3119, ptr %3008, align 4, !tbaa !252
  br label %3120

3120:                                             ; preds = %3118, %3067
  %3121 = add nuw nsw i32 %3012, 1
  %3122 = icmp eq i32 %3121, %2997
  br i1 %3122, label %3123, label %3011, !llvm.loop !428

3123:                                             ; preds = %3120, %2991
  %3124 = add nuw nsw i64 %2992, 1
  %3125 = load i32, ptr %2985, align 8, !tbaa !194
  %3126 = sext i32 %3125 to i64
  %3127 = icmp slt i64 %3124, %3126
  br i1 %3127, label %2991, label %3128, !llvm.loop !429

3128:                                             ; preds = %3123, %2978, %2974
  %3129 = load i32, ptr %2683, align 8, !tbaa !113
  %3130 = and i32 %3129, 4
  %3131 = icmp eq i32 %3130, 0
  br i1 %3131, label %3236, label %3132

3132:                                             ; preds = %3128
  %3133 = fmul float %2970, 0x3FA99999A0000000
  %3134 = load float, ptr %2941, align 4, !tbaa !150
  %3135 = fmul float %3133, %3134
  %3136 = fmul float %2938, %3135
  %3137 = getelementptr inbounds %struct.PaintSurfaceData, ptr %2946, i64 0, i32 1
  %3138 = load ptr, ptr %3137, align 8, !tbaa !78
  %3139 = getelementptr inbounds %struct.PaintSurfaceData, ptr %2946, i64 0, i32 4
  %3140 = load i32, ptr %3139, align 8, !tbaa !194
  %3141 = sext i32 %3140 to i64
  %3142 = mul nsw i64 %3141, 40
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %2694, ptr align 1 %3138, i64 %3142, i1 false)
  %3143 = load i32, ptr %3139, align 8, !tbaa !194
  %3144 = icmp sgt i32 %3143, 0
  br i1 %3144, label %3145, label %3236

3145:                                             ; preds = %3132
  %3146 = load ptr, ptr %2971, align 8, !tbaa !79
  %3147 = getelementptr inbounds %struct.PaintAdjData, ptr %3146, i64 0, i32 2
  %3148 = load ptr, ptr %3147, align 8, !tbaa !82
  %3149 = load ptr, ptr %3137, align 8, !tbaa !78
  %3150 = getelementptr inbounds %struct.PaintAdjData, ptr %3146, i64 0, i32 1
  %3151 = zext nneg i32 %3143 to i64
  br label %3152

3152:                                             ; preds = %3145, %3233
  %3153 = phi i64 [ 0, %3145 ], [ %3234, %3233 ]
  %3154 = getelementptr inbounds i32, ptr %3148, i64 %3153
  %3155 = load i32, ptr %3154, align 4, !tbaa !205
  %3156 = icmp sgt i32 %3155, 0
  br i1 %3156, label %3157, label %3233

3157:                                             ; preds = %3152
  %3158 = load ptr, ptr %3150, align 8, !tbaa !80
  %3159 = getelementptr inbounds i32, ptr %3158, i64 %3153
  %3160 = load i32, ptr %3159, align 4, !tbaa !205
  %3161 = load ptr, ptr %3146, align 8, !tbaa !83
  %3162 = getelementptr inbounds %struct.PaintPoint, ptr %3149, i64 %3153, i32 5
  %3163 = getelementptr inbounds %struct.PaintPoint, ptr %3149, i64 %3153, i32 1
  %3164 = getelementptr inbounds %struct.PaintPoint, ptr %3149, i64 %3153, i32 2
  %3165 = sitofp i32 %3155 to float
  %3166 = getelementptr inbounds %struct.PaintPoint, ptr %3149, i64 %3153, i32 1
  %3167 = getelementptr inbounds %struct.PaintPoint, ptr %3149, i64 %3153, i32 2
  %3168 = load float, ptr %3162, align 4, !tbaa !196
  %3169 = sext i32 %3160 to i64
  %3170 = zext nneg i32 %3155 to i64
  br label %3171

3171:                                             ; preds = %3157, %3229
  %3172 = phi i64 [ 0, %3157 ], [ %3231, %3229 ]
  %3173 = phi float [ %3168, %3157 ], [ %3230, %3229 ]
  %3174 = add nsw i64 %3172, %3169
  %3175 = getelementptr inbounds %struct.BakeAdjPoint, ptr %2950, i64 %3174, i32 1
  %3176 = load float, ptr %3175, align 4, !tbaa !407
  %3177 = fcmp olt float %3176, %3136
  %3178 = fdiv float %3136, %3176
  %3179 = select i1 %3177, float 1.000000e+00, float %3178
  %3180 = getelementptr inbounds i32, ptr %3161, i64 %3174
  %3181 = load i32, ptr %3180, align 4, !tbaa !205
  %3182 = sext i32 %3181 to i64
  %3183 = getelementptr inbounds %struct.PaintPoint, ptr %2694, i64 %3182, i32 1
  %3184 = fcmp ugt float %3173, 0.000000e+00
  br i1 %3184, label %3191, label %3185

3185:                                             ; preds = %3171
  %3186 = load float, ptr %3163, align 4, !tbaa !252
  %3187 = fcmp ugt float %3186, 0.000000e+00
  br i1 %3187, label %3191, label %3188

3188:                                             ; preds = %3185
  %3189 = load float, ptr %3164, align 4, !tbaa !265
  %3190 = fcmp ugt float %3189, 0.000000e+00
  br i1 %3190, label %3191, label %3229

3191:                                             ; preds = %3188, %3185, %3171
  %3192 = getelementptr inbounds %struct.PaintPoint, ptr %2694, i64 %3182, i32 5
  %3193 = load float, ptr %3192, align 4, !tbaa !196
  %3194 = fsub float 1.000000e+00, %3193
  %3195 = fdiv float %3194, %3165
  %3196 = fsub float %3173, %3193
  %3197 = fmul float %3196, %3195
  %3198 = fmul float %3179, %3197
  %3199 = fcmp olt float %3198, 0.000000e+00
  %3200 = select i1 %3199, float 0.000000e+00, float %3198
  %3201 = load float, ptr %3183, align 4, !tbaa !252
  %3202 = fsub float 1.000000e+00, %3201
  %3203 = fmul float %3202, 1.250000e-01
  %3204 = load float, ptr %3166, align 4, !tbaa !252
  %3205 = fsub float %3204, %3201
  %3206 = fmul float %3203, %3205
  %3207 = fmul float %3179, %3206
  %3208 = fcmp olt float %3207, 0.000000e+00
  %3209 = select i1 %3208, float 0.000000e+00, float %3207
  %3210 = getelementptr inbounds %struct.PaintPoint, ptr %2694, i64 %3182, i32 2
  %3211 = load float, ptr %3210, align 4, !tbaa !265
  %3212 = fsub float 1.000000e+00, %3211
  %3213 = fmul float %3212, 1.250000e-01
  %3214 = load float, ptr %3167, align 4, !tbaa !265
  %3215 = fsub float %3214, %3211
  %3216 = fmul float %3213, %3215
  %3217 = fmul float %3179, %3216
  %3218 = fcmp olt float %3217, 0.000000e+00
  %3219 = select i1 %3218, float 0.000000e+00, float %3217
  %3220 = fsub float %3173, %3200
  %3221 = fcmp olt float %3220, 0.000000e+00
  %3222 = select i1 %3221, float 0.000000e+00, float %3220
  store float %3222, ptr %3162, align 4, !tbaa !196
  %3223 = fsub float %3204, %3209
  %3224 = fcmp olt float %3223, 0.000000e+00
  %3225 = select i1 %3224, float 0.000000e+00, float %3223
  store float %3225, ptr %3166, align 4, !tbaa !252
  %3226 = fsub float %3214, %3219
  %3227 = fcmp olt float %3226, 0.000000e+00
  %3228 = select i1 %3227, float 0.000000e+00, float %3226
  store float %3228, ptr %3167, align 4, !tbaa !265
  br label %3229

3229:                                             ; preds = %3191, %3188
  %3230 = phi float [ %3222, %3191 ], [ %3173, %3188 ]
  %3231 = add nuw nsw i64 %3172, 1
  %3232 = icmp eq i64 %3231, %3170
  br i1 %3232, label %3233, label %3171, !llvm.loop !430

3233:                                             ; preds = %3229, %3152
  %3234 = add nuw nsw i64 %3153, 1
  %3235 = icmp eq i64 %3234, %3151
  br i1 %3235, label %3236, label %3152, !llvm.loop !431

3236:                                             ; preds = %3233, %3132, %3128
  %3237 = load i32, ptr %2683, align 8, !tbaa !113
  %3238 = and i32 %3237, 2
  %3239 = icmp ne i32 %3238, 0
  %3240 = and i1 %2942, %3239
  br i1 %3240, label %3241, label %3380

3241:                                             ; preds = %3236
  %3242 = fmul float %2970, 0x3FA99999A0000000
  %3243 = fmul float %2938, %3242
  %3244 = fmul float %3243, 5.000000e-01
  %3245 = getelementptr inbounds %struct.PaintSurfaceData, ptr %2946, i64 0, i32 1
  %3246 = load ptr, ptr %3245, align 8, !tbaa !78
  %3247 = getelementptr inbounds %struct.PaintSurfaceData, ptr %2946, i64 0, i32 4
  %3248 = load i32, ptr %3247, align 8, !tbaa !194
  %3249 = sext i32 %3248 to i64
  %3250 = mul nsw i64 %3249, 40
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %2694, ptr align 1 %3246, i64 %3250, i1 false)
  %3251 = load i32, ptr %3247, align 8, !tbaa !194
  %3252 = icmp sgt i32 %3251, 0
  br i1 %3252, label %3253, label %3380

3253:                                             ; preds = %3241, %3375
  %3254 = phi i64 [ %3376, %3375 ], [ 0, %3241 ]
  %3255 = load ptr, ptr %3245, align 8, !tbaa !78
  %3256 = getelementptr inbounds %struct.PaintPoint, ptr %2694, i64 %3254
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %6) #18
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %7) #18
  %3257 = getelementptr inbounds %struct.PaintPoint, ptr %2694, i64 %3254, i32 2
  %3258 = load float, ptr %3257, align 4, !tbaa !265
  %3259 = fadd float %3258, 0xBF999999A0000000
  %3260 = fcmp ugt float %3259, 0.000000e+00
  br i1 %3260, label %3261, label %3375

3261:                                             ; preds = %3253
  %3262 = fcmp olt float %3259, 0.000000e+00
  br i1 %3262, label %3266, label %3263

3263:                                             ; preds = %3261
  %3264 = fcmp ogt float %3259, 1.000000e+00
  br i1 %3264, label %3265, label %3266

3265:                                             ; preds = %3263
  br label %3266

3266:                                             ; preds = %3265, %3263, %3261
  %3267 = phi float [ 1.000000e+00, %3265 ], [ %3259, %3263 ], [ 0.000000e+00, %3261 ]
  %3268 = trunc i64 %3254 to i32
  %3269 = shl nsw i32 %3268, 2
  %3270 = zext nneg i32 %3269 to i64
  %3271 = getelementptr inbounds float, ptr %2883, i64 %3270
  %3272 = trunc i64 %3254 to i32
  call fastcc void @surface_determineForceTargetPoints(ptr noundef %2946, i32 noundef %3272, ptr noundef nonnull %3271, ptr noundef nonnull %7, ptr noundef nonnull %6)
  %3273 = or disjoint i32 %3269, 3
  %3274 = zext nneg i32 %3273 to i64
  %3275 = getelementptr inbounds float, ptr %2883, i64 %3274
  %3276 = getelementptr inbounds %struct.PaintPoint, ptr %2694, i64 %3254, i32 1
  %3277 = getelementptr inbounds float, ptr %3256, i64 1
  %3278 = getelementptr inbounds float, ptr %3256, i64 2
  %3279 = getelementptr inbounds %struct.PaintPoint, ptr %3255, i64 %3254, i32 2
  br label %3280

3280:                                             ; preds = %3266, %3372
  %3281 = phi i64 [ 0, %3266 ], [ %3373, %3372 ]
  %3282 = getelementptr inbounds [2 x i32], ptr %6, i64 0, i64 %3281
  %3283 = load i32, ptr %3282, align 4, !tbaa !205
  %3284 = icmp eq i32 %3283, -1
  br i1 %3284, label %3372, label %3285

3285:                                             ; preds = %3280
  %3286 = getelementptr inbounds [2 x float], ptr %7, i64 0, i64 %3281
  %3287 = load float, ptr %3286, align 4, !tbaa !123
  %3288 = fcmp ogt float %3287, 0.000000e+00
  br i1 %3288, label %3289, label %3372

3289:                                             ; preds = %3285
  %3290 = sext i32 %3283 to i64
  %3291 = load ptr, ptr %3245, align 8, !tbaa !78
  %3292 = load ptr, ptr %2971, align 8, !tbaa !79
  %3293 = load ptr, ptr %3292, align 8, !tbaa !83
  %3294 = getelementptr inbounds i32, ptr %3293, i64 %3290
  %3295 = load i32, ptr %3294, align 4, !tbaa !205
  %3296 = sext i32 %3295 to i64
  %3297 = getelementptr inbounds %struct.PaintPoint, ptr %3291, i64 %3296
  %3298 = getelementptr inbounds %struct.PaintPoint, ptr %3291, i64 %3296, i32 2
  %3299 = load float, ptr %3298, align 4, !tbaa !265
  %3300 = fcmp ugt float %3287, 0.000000e+00
  br i1 %3300, label %3301, label %3372

3301:                                             ; preds = %3289
  %3302 = load float, ptr %3275, align 4, !tbaa !123
  %3303 = fmul float %3244, %3302
  %3304 = getelementptr inbounds %struct.BakeAdjPoint, ptr %2950, i64 %3290, i32 1
  %3305 = load float, ptr %3304, align 4, !tbaa !407
  %3306 = fdiv float %3303, %3305
  %3307 = fcmp olt float %3306, 1.000000e+00
  %3308 = select i1 %3307, float %3306, float 1.000000e+00
  %3309 = fmul float %3287, %3308
  %3310 = fmul float %3267, %3309
  %3311 = fcmp ogt float %3310, 5.000000e-01
  %3312 = select i1 %3311, float 5.000000e-01, float %3310
  %3313 = fadd float %3299, %3312
  store float %3313, ptr %3298, align 4, !tbaa !265
  %3314 = fcmp olt float %3313, 0.000000e+00
  br i1 %3314, label %3317, label %3315

3315:                                             ; preds = %3301
  %3316 = fcmp ogt float %3313, 5.000000e+00
  br i1 %3316, label %3317, label %3319

3317:                                             ; preds = %3315, %3301
  %3318 = phi float [ 0.000000e+00, %3301 ], [ 5.000000e+00, %3315 ]
  store float %3318, ptr %3298, align 4, !tbaa !265
  br label %3319

3319:                                             ; preds = %3317, %3315
  %3320 = load float, ptr %3257, align 4, !tbaa !265
  %3321 = fdiv float %3312, %3320
  %3322 = fcmp olt float %3321, 0.000000e+00
  br i1 %3322, label %3326, label %3323

3323:                                             ; preds = %3319
  %3324 = fcmp ogt float %3321, 1.000000e+00
  br i1 %3324, label %3325, label %3326

3325:                                             ; preds = %3323
  br label %3326

3326:                                             ; preds = %3325, %3323, %3319
  %3327 = phi float [ 1.000000e+00, %3325 ], [ %3321, %3323 ], [ 0.000000e+00, %3319 ]
  %3328 = getelementptr inbounds %struct.PaintPoint, ptr %3291, i64 %3296, i32 1
  %3329 = load float, ptr %3328, align 4, !tbaa !252
  %3330 = load float, ptr %3276, align 4, !tbaa !252
  %3331 = fcmp une float %3330, 0.000000e+00
  br i1 %3331, label %3332, label %3353

3332:                                             ; preds = %3326
  %3333 = fcmp une float %3329, 0.000000e+00
  br i1 %3333, label %3340, label %3334

3334:                                             ; preds = %3332
  %3335 = load float, ptr %3256, align 4, !tbaa !123
  store float %3335, ptr %3297, align 4, !tbaa !123
  %3336 = load float, ptr %3277, align 4, !tbaa !123
  %3337 = getelementptr inbounds float, ptr %3297, i64 1
  store float %3336, ptr %3337, align 4, !tbaa !123
  %3338 = load float, ptr %3278, align 4, !tbaa !123
  %3339 = getelementptr inbounds float, ptr %3297, i64 2
  store float %3338, ptr %3339, align 4, !tbaa !123
  br label %3353

3340:                                             ; preds = %3332
  %3341 = fadd float %3329, %3330
  %3342 = fdiv float %3330, %3341
  %3343 = fcmp ugt float %3327, 5.000000e-01
  br i1 %3343, label %3347, label %3344

3344:                                             ; preds = %3340
  %3345 = fmul float %3327, 2.000000e+00
  %3346 = fmul float %3345, %3342
  br label %3351

3347:                                             ; preds = %3340
  %3348 = call float @llvm.fmuladd.f32(float %3327, float 2.000000e+00, float -1.000000e+00)
  %3349 = fsub float 1.000000e+00, %3348
  %3350 = call float @llvm.fmuladd.f32(float %3342, float %3349, float %3348)
  br label %3351

3351:                                             ; preds = %3347, %3344
  %3352 = phi float [ %3346, %3344 ], [ %3350, %3347 ]
  call void @interp_v3_v3v3(ptr noundef %3297, ptr noundef %3297, ptr noundef nonnull %3256, float noundef %3352) #18
  br label %3353

3353:                                             ; preds = %3326, %3334, %3351
  %3354 = load float, ptr %3276, align 4, !tbaa !252
  %3355 = load float, ptr %3328, align 4, !tbaa !252
  %3356 = fcmp ogt float %3354, %3355
  br i1 %3356, label %3357, label %3362

3357:                                             ; preds = %3353
  %3358 = call float @llvm.fmuladd.f32(float %3327, float %3354, float %3355)
  store float %3358, ptr %3328, align 4, !tbaa !252
  %3359 = load float, ptr %3276, align 4, !tbaa !252
  %3360 = fcmp ogt float %3358, %3359
  br i1 %3360, label %3361, label %3362

3361:                                             ; preds = %3357
  store float %3359, ptr %3328, align 4, !tbaa !252
  br label %3362

3362:                                             ; preds = %3361, %3357, %3353
  %3363 = load float, ptr %3298, align 4, !tbaa !265
  %3364 = fsub float %3363, %3299
  %3365 = load float, ptr %3279, align 4, !tbaa !265
  %3366 = fsub float %3365, %3364
  store float %3366, ptr %3279, align 4, !tbaa !265
  %3367 = fcmp olt float %3366, 0.000000e+00
  br i1 %3367, label %3370, label %3368

3368:                                             ; preds = %3362
  %3369 = fcmp ogt float %3366, 5.000000e+00
  br i1 %3369, label %3370, label %3372

3370:                                             ; preds = %3368, %3362
  %3371 = phi float [ 0.000000e+00, %3362 ], [ 5.000000e+00, %3368 ]
  store float %3371, ptr %3279, align 4, !tbaa !265
  br label %3372

3372:                                             ; preds = %3370, %3368, %3289, %3285, %3280
  %3373 = add nuw nsw i64 %3281, 1
  %3374 = icmp eq i64 %3281, 0
  br i1 %3374, label %3280, label %3375, !llvm.loop !432

3375:                                             ; preds = %3372, %3253
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %7) #18
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %6) #18
  %3376 = add nuw nsw i64 %3254, 1
  %3377 = load i32, ptr %3247, align 8, !tbaa !194
  %3378 = sext i32 %3377 to i64
  %3379 = icmp slt i64 %3376, %3378
  br i1 %3379, label %3253, label %3380, !llvm.loop !433

3380:                                             ; preds = %3375, %3241, %2944, %3236
  %3381 = add nuw nsw i32 %2945, 1
  %3382 = icmp eq i32 %3381, %2943
  br i1 %3382, label %3383, label %2944, !llvm.loop !434

3383:                                             ; preds = %3380
  %3384 = load ptr, ptr @MEM_freeN, align 8, !tbaa !44
  call void %3384(ptr noundef nonnull %2694) #18
  %3385 = icmp eq ptr %2883, null
  br i1 %3385, label %3388, label %3386

3386:                                             ; preds = %3383
  %3387 = load ptr, ptr @MEM_freeN, align 8, !tbaa !44
  call void %3387(ptr noundef nonnull %2883) #18
  br label %3388

3388:                                             ; preds = %3383, %3386, %2696
  br i1 %2695, label %3390, label %3389

3389:                                             ; preds = %2682, %2686, %3388, %2373, %2369
  br label %3390

3390:                                             ; preds = %5, %3388, %3389
  %3391 = phi i32 [ 1, %3389 ], [ 0, %3388 ], [ 0, %5 ]
  ret i32 %3391
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read)
declare i32 @strcmp(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #12

; Function Attrs: nofree nounwind memory(read, inaccessiblemem: none) uwtable
define internal noundef zeroext i8 @surface_duplicateOutputExists(ptr noundef readonly %0, ptr nocapture noundef readonly %1) #6 {
  %3 = getelementptr inbounds %struct.DynamicPaintSurface, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !57
  %5 = getelementptr inbounds %struct.DynamicPaintCanvasSettings, ptr %4, i64 0, i32 2
  %6 = load ptr, ptr %5, align 8, !tbaa !44
  %7 = icmp eq ptr %6, null
  br i1 %7, label %41, label %8

8:                                                ; preds = %2
  %9 = getelementptr inbounds %struct.DynamicPaintSurface, ptr %0, i64 0, i32 11
  %10 = getelementptr inbounds %struct.DynamicPaintSurface, ptr %0, i64 0, i32 10
  br label %11

11:                                               ; preds = %8, %38
  %12 = phi ptr [ %6, %8 ], [ %39, %38 ]
  %13 = icmp eq ptr %12, %0
  br i1 %13, label %38, label %14

14:                                               ; preds = %11
  %15 = getelementptr inbounds %struct.DynamicPaintSurface, ptr %12, i64 0, i32 11
  %16 = load i16, ptr %15, align 2, !tbaa !43
  %17 = load i16, ptr %9, align 2, !tbaa !43
  %18 = icmp eq i16 %16, %17
  br i1 %18, label %19, label %38

19:                                               ; preds = %14
  %20 = getelementptr inbounds %struct.DynamicPaintSurface, ptr %12, i64 0, i32 10
  %21 = load i16, ptr %20, align 4, !tbaa !34
  %22 = load i16, ptr %10, align 4, !tbaa !34
  %23 = icmp eq i16 %21, %22
  br i1 %23, label %24, label %38

24:                                               ; preds = %19
  %25 = getelementptr inbounds %struct.DynamicPaintSurface, ptr %12, i64 0, i32 48
  %26 = load i8, ptr %25, align 8, !tbaa !59
  %27 = icmp eq i8 %26, 0
  br i1 %27, label %31, label %28

28:                                               ; preds = %24
  %29 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %1, ptr noundef nonnull dereferenceable(1) %25) #19
  %30 = icmp eq i32 %29, 0
  br i1 %30, label %41, label %31

31:                                               ; preds = %28, %24
  %32 = getelementptr inbounds %struct.DynamicPaintSurface, ptr %12, i64 0, i32 49
  %33 = load i8, ptr %32, align 8, !tbaa !59
  %34 = icmp eq i8 %33, 0
  br i1 %34, label %38, label %35

35:                                               ; preds = %31
  %36 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %1, ptr noundef nonnull dereferenceable(1) %32) #19
  %37 = icmp eq i32 %36, 0
  br i1 %37, label %41, label %38

38:                                               ; preds = %11, %14, %19, %35, %31
  %39 = load ptr, ptr %12, align 8, !tbaa !44
  %40 = icmp eq ptr %39, null
  br i1 %40, label %41, label %11, !llvm.loop !435

41:                                               ; preds = %28, %35, %38, %2
  %42 = phi i8 [ 0, %2 ], [ 1, %28 ], [ 1, %35 ], [ 0, %38 ]
  ret i8 %42
}

declare zeroext i8 @BKE_scene_check_color_management_enabled(ptr noundef) local_unnamed_addr #5

declare ptr @BKE_image_pool_new() local_unnamed_addr #5

declare i32 @multitex_ext_safe(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i8 noundef zeroext) local_unnamed_addr #5

declare void @BKE_image_pool_free(ptr noundef) local_unnamed_addr #5

declare void @interp_v3_v3v3v3(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #5

declare void @interp_v4_v4v4v4(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #5

declare void @BKE_ptcache_id_from_dynamicpaint(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #5

declare void @BKE_ptcache_id_time(ptr noundef, ptr noundef, float noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #5

declare i32 @BKE_ptcache_id_reset(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #5

declare i32 @BKE_ptcache_read(ptr noundef, float noundef) local_unnamed_addr #5

declare void @BKE_ptcache_validate(ptr noundef, i32 noundef) local_unnamed_addr #5

declare i32 @BKE_ptcache_write(ptr noundef, i32 noundef) local_unnamed_addr #5

declare ptr @CDDM_copy(ptr noundef) local_unnamed_addr #5

declare ptr @CDDM_get_loops(ptr noundef) local_unnamed_addr #5

declare ptr @CDDM_get_polys(ptr noundef) local_unnamed_addr #5

declare ptr @CustomData_get_layer(ptr noundef, i32 noundef) local_unnamed_addr #5

declare ptr @CustomData_add_layer(ptr noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #5

declare ptr @give_current_material(ptr noundef, i16 noundef signext) local_unnamed_addr #5

declare void @interp_v3_v3v3(ptr noundef, ptr noundef, ptr noundef, float noundef) local_unnamed_addr #5

declare void @rgb_float_to_uchar(ptr noundef, ptr noundef) local_unnamed_addr #5

declare ptr @CustomData_add_layer_named(ptr noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #5

declare void @DM_update_weight_mcol(ptr noundef, ptr noundef, i32 noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #5

declare ptr @defvert_find_index(ptr noundef, i32 noundef) local_unnamed_addr #5

declare ptr @defvert_verify_index(ptr noundef, i32 noundef) local_unnamed_addr #5

declare float @dist_squared_to_line_segment_v2(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #5

declare float @closest_to_line_v2(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: mustprogress nofree nounwind willreturn memory(write)
declare float @sqrtf(float noundef) local_unnamed_addr #13

declare void @mul_m4_v3(ptr noundef, ptr noundef) local_unnamed_addr #5

declare void @mul_mat3_m4_v3(ptr noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: nounwind uwtable
define internal fastcc void @dynamicPaint_prepareAdjacencyData(ptr nocapture noundef readonly %0, i32 noundef %1) unnamed_addr #4 {
  %3 = getelementptr inbounds %struct.DynamicPaintSurface, ptr %0, i64 0, i32 3
  %4 = load ptr, ptr %3, align 8, !tbaa !72
  %5 = getelementptr inbounds %struct.PaintSurfaceData, ptr %4, i64 0, i32 3
  %6 = load ptr, ptr %5, align 8, !tbaa !85
  %7 = getelementptr inbounds %struct.PaintSurfaceData, ptr %4, i64 0, i32 2
  %8 = load ptr, ptr %7, align 8, !tbaa !79
  %9 = getelementptr inbounds %struct.PaintBakeData, ptr %6, i64 0, i32 3
  %10 = load ptr, ptr %9, align 8, !tbaa !92
  %11 = getelementptr inbounds %struct.DynamicPaintSurface, ptr %0, i64 0, i32 11
  %12 = load i16, ptr %11, align 2, !tbaa !43
  %13 = icmp eq i16 %12, 0
  br i1 %13, label %14, label %18

14:                                               ; preds = %2
  %15 = getelementptr inbounds %struct.DynamicPaintSurface, ptr %0, i64 0, i32 19
  %16 = load i32, ptr %15, align 8, !tbaa !113
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %18, label %21

18:                                               ; preds = %14, %2
  %19 = icmp eq i16 %12, 3
  %20 = zext i1 %19 to i32
  br label %21

21:                                               ; preds = %14, %18
  %22 = phi i32 [ 1, %14 ], [ %20, %18 ]
  %23 = or i32 %22, %1
  %24 = icmp eq i32 %23, 0
  %25 = icmp eq ptr %8, null
  %26 = select i1 %24, i1 true, i1 %25
  br i1 %26, label %155, label %27

27:                                               ; preds = %21
  %28 = getelementptr inbounds %struct.PaintBakeData, ptr %6, i64 0, i32 5
  %29 = load ptr, ptr %28, align 8, !tbaa !93
  %30 = icmp eq ptr %29, null
  br i1 %30, label %33, label %31

31:                                               ; preds = %27
  %32 = load ptr, ptr @MEM_freeN, align 8, !tbaa !44
  tail call void %32(ptr noundef nonnull %29) #18
  br label %33

33:                                               ; preds = %31, %27
  %34 = load ptr, ptr @MEM_mallocN, align 8, !tbaa !44
  %35 = load ptr, ptr %7, align 8, !tbaa !79
  %36 = getelementptr inbounds %struct.PaintAdjData, ptr %35, i64 0, i32 4
  %37 = load i32, ptr %36, align 8, !tbaa !227
  %38 = sext i32 %37 to i64
  %39 = shl nsw i64 %38, 4
  %40 = tail call ptr %34(i64 noundef %39, ptr noundef nonnull @.str.54) #18
  store ptr %40, ptr %28, align 8, !tbaa !93
  %41 = icmp eq ptr %40, null
  br i1 %41, label %155, label %42

42:                                               ; preds = %33
  %43 = getelementptr inbounds %struct.PaintSurfaceData, ptr %4, i64 0, i32 4
  %44 = load i32, ptr %43, align 8, !tbaa !194
  %45 = icmp sgt i32 %44, 0
  br i1 %45, label %46, label %114

46:                                               ; preds = %42
  %47 = getelementptr inbounds %struct.PaintAdjData, ptr %8, i64 0, i32 2
  %48 = getelementptr inbounds %struct.PaintAdjData, ptr %8, i64 0, i32 1
  %49 = getelementptr inbounds %struct.PaintBakeData, ptr %6, i64 0, i32 1
  br label %50

50:                                               ; preds = %46, %109
  %51 = phi i64 [ 0, %46 ], [ %110, %109 ]
  %52 = load ptr, ptr %47, align 8, !tbaa !82
  %53 = getelementptr inbounds i32, ptr %52, i64 %51
  %54 = load i32, ptr %53, align 4, !tbaa !205
  %55 = icmp sgt i32 %54, 0
  br i1 %55, label %56, label %109

56:                                               ; preds = %50, %106
  %57 = phi i32 [ %107, %106 ], [ 0, %50 ]
  %58 = load ptr, ptr %48, align 8, !tbaa !80
  %59 = getelementptr inbounds i32, ptr %58, i64 %51
  %60 = load i32, ptr %59, align 4, !tbaa !205
  %61 = add nsw i32 %60, %57
  %62 = load ptr, ptr %8, align 8, !tbaa !83
  %63 = sext i32 %61 to i64
  %64 = getelementptr inbounds i32, ptr %62, i64 %63
  %65 = load i32, ptr %64, align 4, !tbaa !205
  %66 = getelementptr inbounds %struct.BakeAdjPoint, ptr %40, i64 %63
  %67 = load ptr, ptr %49, align 8, !tbaa !90
  %68 = sext i32 %65 to i64
  %69 = getelementptr inbounds i32, ptr %67, i64 %68
  %70 = load i32, ptr %69, align 4, !tbaa !205
  %71 = sext i32 %70 to i64
  %72 = getelementptr inbounds %struct.Vec3f, ptr %10, i64 %71
  %73 = getelementptr inbounds i32, ptr %67, i64 %51
  %74 = load i32, ptr %73, align 4, !tbaa !205
  %75 = sext i32 %74 to i64
  %76 = getelementptr inbounds %struct.Vec3f, ptr %10, i64 %75
  %77 = load float, ptr %72, align 4, !tbaa !123
  %78 = load float, ptr %76, align 4, !tbaa !123
  %79 = fsub float %77, %78
  store float %79, ptr %66, align 4, !tbaa !123
  %80 = getelementptr inbounds float, ptr %72, i64 1
  %81 = load float, ptr %80, align 4, !tbaa !123
  %82 = getelementptr inbounds float, ptr %76, i64 1
  %83 = load float, ptr %82, align 4, !tbaa !123
  %84 = fsub float %81, %83
  %85 = getelementptr inbounds float, ptr %66, i64 1
  store float %84, ptr %85, align 4, !tbaa !123
  %86 = getelementptr inbounds float, ptr %72, i64 2
  %87 = load float, ptr %86, align 4, !tbaa !123
  %88 = getelementptr inbounds float, ptr %76, i64 2
  %89 = load float, ptr %88, align 4, !tbaa !123
  %90 = fsub float %87, %89
  %91 = getelementptr inbounds float, ptr %66, i64 2
  store float %90, ptr %91, align 4, !tbaa !123
  %92 = fmul float %84, %84
  %93 = tail call float @llvm.fmuladd.f32(float %79, float %79, float %92)
  %94 = tail call float @llvm.fmuladd.f32(float %90, float %90, float %93)
  %95 = tail call float @sqrtf(float noundef %94) #18
  %96 = getelementptr inbounds %struct.BakeAdjPoint, ptr %40, i64 %63, i32 1
  store float %95, ptr %96, align 4, !tbaa !407
  %97 = fcmp une float %95, 0.000000e+00
  br i1 %97, label %98, label %106

98:                                               ; preds = %56
  %99 = fdiv float 1.000000e+00, %95
  %100 = load float, ptr %66, align 4, !tbaa !123
  %101 = fmul float %99, %100
  store float %101, ptr %66, align 4, !tbaa !123
  %102 = load float, ptr %85, align 4, !tbaa !123
  %103 = fmul float %99, %102
  store float %103, ptr %85, align 4, !tbaa !123
  %104 = load float, ptr %91, align 4, !tbaa !123
  %105 = fmul float %99, %104
  store float %105, ptr %91, align 4, !tbaa !123
  br label %106

106:                                              ; preds = %98, %56
  %107 = add nuw nsw i32 %57, 1
  %108 = icmp eq i32 %107, %54
  br i1 %108, label %109, label %56, !llvm.loop !436

109:                                              ; preds = %106, %50
  %110 = add nuw nsw i64 %51, 1
  %111 = load i32, ptr %43, align 8, !tbaa !194
  %112 = sext i32 %111 to i64
  %113 = icmp slt i64 %110, %112
  br i1 %113, label %50, label %114, !llvm.loop !437

114:                                              ; preds = %109, %42
  %115 = phi i32 [ %44, %42 ], [ %111, %109 ]
  %116 = getelementptr inbounds %struct.PaintBakeData, ptr %6, i64 0, i32 6
  store double 0.000000e+00, ptr %116, align 8, !tbaa !406
  %117 = icmp sgt i32 %115, 0
  br i1 %117, label %118, label %149

118:                                              ; preds = %114
  %119 = getelementptr inbounds %struct.PaintAdjData, ptr %8, i64 0, i32 2
  %120 = load ptr, ptr %119, align 8, !tbaa !82
  %121 = getelementptr inbounds %struct.PaintAdjData, ptr %8, i64 0, i32 1
  %122 = zext nneg i32 %115 to i64
  br label %123

123:                                              ; preds = %118, %146
  %124 = phi i64 [ 0, %118 ], [ %147, %146 ]
  %125 = getelementptr inbounds i32, ptr %120, i64 %124
  %126 = load i32, ptr %125, align 4, !tbaa !205
  %127 = icmp sgt i32 %126, 0
  br i1 %127, label %128, label %146

128:                                              ; preds = %123
  %129 = load ptr, ptr %121, align 8, !tbaa !80
  %130 = getelementptr inbounds i32, ptr %129, i64 %124
  %131 = load i32, ptr %130, align 4, !tbaa !205
  %132 = load double, ptr %116, align 8, !tbaa !406
  %133 = sext i32 %131 to i64
  %134 = zext nneg i32 %126 to i64
  br label %135

135:                                              ; preds = %128, %135
  %136 = phi i64 [ 0, %128 ], [ %143, %135 ]
  %137 = phi double [ %132, %128 ], [ %142, %135 ]
  %138 = add nsw i64 %136, %133
  %139 = getelementptr inbounds %struct.BakeAdjPoint, ptr %40, i64 %138, i32 1
  %140 = load float, ptr %139, align 4, !tbaa !407
  %141 = fpext float %140 to double
  %142 = fadd double %137, %141
  %143 = add nuw nsw i64 %136, 1
  %144 = icmp eq i64 %143, %134
  br i1 %144, label %145, label %135, !llvm.loop !438

145:                                              ; preds = %135
  store double %142, ptr %116, align 8, !tbaa !406
  br label %146

146:                                              ; preds = %145, %123
  %147 = add nuw nsw i64 %124, 1
  %148 = icmp eq i64 %147, %122
  br i1 %148, label %149, label %123, !llvm.loop !439

149:                                              ; preds = %146, %114
  %150 = getelementptr inbounds %struct.PaintAdjData, ptr %8, i64 0, i32 4
  %151 = load i32, ptr %150, align 8, !tbaa !227
  %152 = sitofp i32 %151 to double
  %153 = load double, ptr %116, align 8, !tbaa !406
  %154 = fdiv double %153, %152
  store double %154, ptr %116, align 8, !tbaa !406
  br label %155

155:                                              ; preds = %33, %21, %149
  ret void
}

declare void @copy_m4_m4(ptr noundef, ptr noundef) local_unnamed_addr #5

declare ptr @modifiers_findByType(ptr noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: mustprogress nofree nounwind willreturn memory(write)
declare double @pow(double noundef, double noundef) local_unnamed_addr #13

; Function Attrs: nounwind uwtable
define internal fastcc noundef i32 @subframe_updateObject(ptr noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef %3, float noundef %4) unnamed_addr #4 {
  %6 = alloca %struct.ListBase, align 8
  %7 = alloca %struct.ListBase, align 8
  %8 = alloca %struct.ListBase, align 8
  %9 = tail call ptr @modifiers_findByType(ptr noundef %1, i32 noundef 40) #18
  %10 = icmp eq ptr %9, null
  br i1 %10, label %15, label %11

11:                                               ; preds = %5
  %12 = getelementptr inbounds %struct.DynamicPaintModifierData, ptr %9, i64 0, i32 1
  %13 = load ptr, ptr %12, align 8, !tbaa !105
  %14 = icmp eq ptr %13, null
  br i1 %14, label %15, label %134

15:                                               ; preds = %11, %5
  %16 = icmp eq i32 %3, 0
  br i1 %16, label %74, label %17

17:                                               ; preds = %15
  %18 = add nsw i32 %3, -1
  %19 = getelementptr inbounds %struct.Object, ptr %1, i64 0, i32 9
  %20 = load ptr, ptr %19, align 8, !tbaa !440
  %21 = icmp eq ptr %20, null
  br i1 %21, label %24, label %22

22:                                               ; preds = %17
  %23 = tail call fastcc i32 @subframe_updateObject(ptr noundef %0, ptr noundef nonnull %20, i32 noundef 0, i32 noundef %18, float noundef %4), !range !360
  br label %24

24:                                               ; preds = %22, %17
  %25 = phi i32 [ %23, %22 ], [ 0, %17 ]
  %26 = getelementptr inbounds %struct.Object, ptr %1, i64 0, i32 10
  %27 = load ptr, ptr %26, align 8, !tbaa !441
  %28 = icmp eq ptr %27, null
  br i1 %28, label %32, label %29

29:                                               ; preds = %24
  %30 = tail call fastcc i32 @subframe_updateObject(ptr noundef %0, ptr noundef nonnull %27, i32 noundef 0, i32 noundef %18, float noundef %4), !range !360
  %31 = add nuw nsw i32 %30, %25
  br label %32

32:                                               ; preds = %29, %24
  %33 = phi i32 [ %31, %29 ], [ %25, %24 ]
  %34 = icmp eq i32 %33, 0
  br i1 %34, label %40, label %35

35:                                               ; preds = %32
  %36 = getelementptr inbounds %struct.Object, ptr %1, i64 0, i32 4
  %37 = load i16, ptr %36, align 2, !tbaa !442
  %38 = add i16 %37, -5
  %39 = icmp ult i16 %38, 2
  br i1 %39, label %134, label %40

40:                                               ; preds = %35, %32
  %41 = getelementptr inbounds %struct.Object, ptr %1, i64 0, i32 106
  %42 = load ptr, ptr %41, align 8, !tbaa !44
  %43 = icmp eq ptr %42, null
  br i1 %43, label %74, label %44

44:                                               ; preds = %40, %71
  %45 = phi ptr [ %72, %71 ], [ %42, %40 ]
  %46 = call ptr @BKE_constraint_typeinfo_get(ptr noundef nonnull %45) #18
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %8) #18
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %8, i8 0, i64 16, i1 false)
  %47 = icmp eq ptr %46, null
  br i1 %47, label %71, label %48

48:                                               ; preds = %44
  %49 = getelementptr inbounds %struct.bConstraintTypeInfo, ptr %46, i64 0, i32 8
  %50 = load ptr, ptr %49, align 8, !tbaa !443
  %51 = icmp eq ptr %50, null
  br i1 %51, label %71, label %52

52:                                               ; preds = %48
  %53 = call i32 %50(ptr noundef nonnull %45, ptr noundef nonnull %8) #18
  %54 = load ptr, ptr %8, align 8, !tbaa !44
  %55 = icmp eq ptr %54, null
  br i1 %55, label %66, label %56

56:                                               ; preds = %52, %63
  %57 = phi ptr [ %64, %63 ], [ %54, %52 ]
  %58 = getelementptr inbounds %struct.bConstraintTarget, ptr %57, i64 0, i32 2
  %59 = load ptr, ptr %58, align 8, !tbaa !445
  %60 = icmp eq ptr %59, null
  br i1 %60, label %63, label %61

61:                                               ; preds = %56
  %62 = call fastcc i32 @subframe_updateObject(ptr noundef %0, ptr noundef nonnull %59, i32 noundef 0, i32 noundef %18, float noundef %4), !range !360
  br label %63

63:                                               ; preds = %56, %61
  %64 = load ptr, ptr %57, align 8, !tbaa !44
  %65 = icmp eq ptr %64, null
  br i1 %65, label %66, label %56, !llvm.loop !447

66:                                               ; preds = %63, %52
  %67 = getelementptr inbounds %struct.bConstraintTypeInfo, ptr %46, i64 0, i32 9
  %68 = load ptr, ptr %67, align 8, !tbaa !448
  %69 = icmp eq ptr %68, null
  br i1 %69, label %71, label %70

70:                                               ; preds = %66
  call void %68(ptr noundef nonnull %45, ptr noundef nonnull %8, i8 noundef zeroext 0) #18
  br label %71

71:                                               ; preds = %66, %70, %48, %44
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %8) #18
  %72 = load ptr, ptr %45, align 8, !tbaa !44
  %73 = icmp eq ptr %72, null
  br i1 %73, label %74, label %44, !llvm.loop !449

74:                                               ; preds = %71, %40, %15
  %75 = getelementptr inbounds %struct.Object, ptr %1, i64 0, i32 103
  %76 = load i8, ptr %75, align 1, !tbaa !450
  %77 = or i8 %76, 7
  store i8 %77, ptr %75, align 1, !tbaa !450
  %78 = getelementptr inbounds %struct.Object, ptr %1, i64 0, i32 1
  %79 = load ptr, ptr %78, align 8, !tbaa !451
  call void @BKE_animsys_evaluate_animdata(ptr noundef %0, ptr noundef %1, ptr noundef %79, float noundef %4, i16 noundef signext 2) #18
  %80 = and i32 %2, 2
  %81 = icmp eq i32 %80, 0
  br i1 %81, label %116, label %82

82:                                               ; preds = %74
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %7) #18
  call void @BKE_ptcache_ids_from_object(ptr noundef nonnull %7, ptr noundef %1, ptr noundef null, i32 noundef 0) #18
  %83 = load ptr, ptr %7, align 8, !tbaa !44
  %84 = icmp eq ptr %83, null
  br i1 %84, label %97, label %85

85:                                               ; preds = %82, %94
  %86 = phi ptr [ %95, %94 ], [ %83, %82 ]
  %87 = getelementptr inbounds %struct.PTCacheID, ptr %86, i64 0, i32 25
  %88 = load ptr, ptr %87, align 8, !tbaa !248
  %89 = icmp eq ptr %88, null
  br i1 %89, label %94, label %90

90:                                               ; preds = %85
  %91 = getelementptr inbounds %struct.PointCache, ptr %88, i64 0, i32 2
  %92 = load i32, ptr %91, align 8, !tbaa !110
  %93 = or i32 %92, 8192
  store i32 %93, ptr %91, align 8, !tbaa !110
  br label %94

94:                                               ; preds = %90, %85
  %95 = load ptr, ptr %86, align 8, !tbaa !44
  %96 = icmp eq ptr %95, null
  br i1 %96, label %97, label %85, !llvm.loop !452

97:                                               ; preds = %94, %82
  call void @BLI_freelistN(ptr noundef nonnull %7) #18
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %7) #18
  %98 = load ptr, ptr @G, align 8, !tbaa !312
  %99 = getelementptr inbounds %struct.Main, ptr %98, i64 0, i32 46
  %100 = load ptr, ptr %99, align 8, !tbaa !453
  call void @BKE_object_handle_update(ptr noundef %100, ptr noundef %0, ptr noundef %1) #18
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %6) #18
  call void @BKE_ptcache_ids_from_object(ptr noundef nonnull %6, ptr noundef %1, ptr noundef null, i32 noundef 0) #18
  %101 = load ptr, ptr %6, align 8, !tbaa !44
  %102 = icmp eq ptr %101, null
  br i1 %102, label %115, label %103

103:                                              ; preds = %97, %112
  %104 = phi ptr [ %113, %112 ], [ %101, %97 ]
  %105 = getelementptr inbounds %struct.PTCacheID, ptr %104, i64 0, i32 25
  %106 = load ptr, ptr %105, align 8, !tbaa !248
  %107 = icmp eq ptr %106, null
  br i1 %107, label %112, label %108

108:                                              ; preds = %103
  %109 = getelementptr inbounds %struct.PointCache, ptr %106, i64 0, i32 2
  %110 = load i32, ptr %109, align 8, !tbaa !110
  %111 = and i32 %110, -8193
  store i32 %111, ptr %109, align 8, !tbaa !110
  br label %112

112:                                              ; preds = %108, %103
  %113 = load ptr, ptr %104, align 8, !tbaa !44
  %114 = icmp eq ptr %113, null
  br i1 %114, label %115, label %103, !llvm.loop !452

115:                                              ; preds = %112, %97
  call void @BLI_freelistN(ptr noundef nonnull %6) #18
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %6) #18
  br label %117

116:                                              ; preds = %74
  call void @BKE_object_where_is_calc_time(ptr noundef %0, ptr noundef %1, float noundef %4) #18
  br label %117

117:                                              ; preds = %116, %115
  %118 = getelementptr inbounds %struct.Object, ptr %1, i64 0, i32 3
  %119 = load i16, ptr %118, align 8, !tbaa !455
  %120 = icmp eq i16 %119, 2
  br i1 %120, label %121, label %126

121:                                              ; preds = %117
  %122 = getelementptr inbounds %struct.Object, ptr %1, i64 0, i32 19
  %123 = load ptr, ptr %122, align 8, !tbaa !52
  %124 = getelementptr inbounds %struct.Curve, ptr %123, i64 0, i32 1
  %125 = load ptr, ptr %124, align 8, !tbaa !456
  call void @BKE_animsys_evaluate_animdata(ptr noundef %0, ptr noundef %123, ptr noundef %125, float noundef %4, i16 noundef signext 2) #18
  br label %126

126:                                              ; preds = %121, %117
  %127 = load i16, ptr %118, align 8, !tbaa !455
  %128 = icmp eq i16 %127, 25
  br i1 %128, label %129, label %134

129:                                              ; preds = %126
  %130 = getelementptr inbounds %struct.Object, ptr %1, i64 0, i32 19
  %131 = load ptr, ptr %130, align 8, !tbaa !52
  %132 = getelementptr inbounds %struct.bArmature, ptr %131, i64 0, i32 1
  %133 = load ptr, ptr %132, align 8, !tbaa !459
  call void @BKE_animsys_evaluate_animdata(ptr noundef %0, ptr noundef %131, ptr noundef %133, float noundef %4, i16 noundef signext 2) #18
  call void @BKE_pose_where_is(ptr noundef %0, ptr noundef %1) #18
  br label %134

134:                                              ; preds = %35, %126, %129, %11
  %135 = phi i32 [ 1, %11 ], [ 0, %129 ], [ 0, %126 ], [ 0, %35 ]
  ret i32 %135
}

declare float @BKE_scene_frame_get(ptr noundef) local_unnamed_addr #5

declare i32 @psys_check_enabled(ptr noundef, ptr noundef) local_unnamed_addr #5

declare void @BKE_animsys_evaluate_animdata(ptr noundef, ptr noundef, ptr noundef, float noundef, i16 noundef signext) local_unnamed_addr #5

; Function Attrs: mustprogress nofree nounwind willreturn memory(write)
declare float @powf(float noundef, float noundef) local_unnamed_addr #13

declare ptr @BKE_constraint_typeinfo_get(ptr noundef) local_unnamed_addr #5

declare void @BKE_object_handle_update(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #5

declare void @BKE_object_where_is_calc_time(ptr noundef, ptr noundef, float noundef) local_unnamed_addr #5

declare void @BKE_pose_where_is(ptr noundef, ptr noundef) local_unnamed_addr #5

declare void @BKE_ptcache_ids_from_object(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #5

declare void @BLI_freelistN(ptr noundef) local_unnamed_addr #5

declare zeroext i8 @BKE_scene_use_new_shading_nodes(ptr noundef) local_unnamed_addr #5

declare zeroext i8 @invert_m4_m4(ptr noundef, ptr noundef) local_unnamed_addr #5

declare ptr @give_totcolp(ptr noundef) local_unnamed_addr #5

declare ptr @RE_init_sample_material(ptr noundef, ptr noundef) local_unnamed_addr #5

declare ptr @BLI_kdtree_new(i32 noundef) local_unnamed_addr #5

declare void @BLI_kdtree_insert(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #5

declare void @BLI_kdtree_free(ptr noundef) local_unnamed_addr #5

declare void @BLI_begin_threaded_malloc() local_unnamed_addr #5

declare void @BLI_kdtree_balance(ptr noundef) local_unnamed_addr #5

declare i32 @BLI_kdtree_find_nearest(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #5

declare i32 @BLI_kdtree_range_search__normal(ptr noundef, ptr noundef, ptr noundef, ptr noundef, float noundef) local_unnamed_addr #5

; Function Attrs: nounwind uwtable
define internal fastcc void @dynamicPaint_updatePointData(ptr nocapture noundef readonly %0, i32 noundef %1, ptr nocapture noundef readonly %2, ptr nocapture noundef %3, float noundef %4, float noundef %5, float noundef %6, float noundef %7) unnamed_addr #4 {
  %9 = alloca [4 x float], align 16
  %10 = alloca [4 x float], align 16
  %11 = getelementptr inbounds %struct.DynamicPaintSurface, ptr %0, i64 0, i32 3
  %12 = load ptr, ptr %11, align 8, !tbaa !72
  %13 = getelementptr inbounds %struct.DynamicPaintSurface, ptr %0, i64 0, i32 38
  %14 = load float, ptr %13, align 8, !tbaa !121
  %15 = fmul float %14, %4
  %16 = fmul float %14, %5
  %17 = getelementptr inbounds %struct.DynamicPaintBrushSettings, ptr %2, i64 0, i32 9
  %18 = load float, ptr %17, align 4, !tbaa !165
  %19 = fmul float %15, %18
  %20 = fcmp olt float %19, 0.000000e+00
  br i1 %20, label %24, label %21

21:                                               ; preds = %8
  %22 = fcmp ogt float %19, 1.000000e+00
  br i1 %22, label %23, label %24

23:                                               ; preds = %21
  br label %24

24:                                               ; preds = %8, %21, %23
  %25 = phi float [ 1.000000e+00, %23 ], [ %19, %21 ], [ 0.000000e+00, %8 ]
  %26 = getelementptr inbounds %struct.DynamicPaintBrushSettings, ptr %2, i64 0, i32 4
  %27 = load i32, ptr %26, align 8, !tbaa !159
  %28 = and i32 %27, 3584
  %29 = icmp eq i32 %28, 0
  br i1 %29, label %70, label %30

30:                                               ; preds = %24
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %10) #18
  %31 = getelementptr inbounds %struct.DynamicPaintBrushSettings, ptr %2, i64 0, i32 22
  %32 = load float, ptr %31, align 8, !tbaa !175
  %33 = fdiv float %6, %32
  %34 = fcmp olt float %33, 0.000000e+00
  br i1 %34, label %38, label %35

35:                                               ; preds = %30
  %36 = fcmp ogt float %33, 1.000000e+00
  br i1 %36, label %37, label %38

37:                                               ; preds = %35
  br label %38

38:                                               ; preds = %30, %35, %37
  %39 = phi float [ 1.000000e+00, %37 ], [ %33, %35 ], [ 0.000000e+00, %30 ]
  %40 = getelementptr inbounds %struct.DynamicPaintBrushSettings, ptr %2, i64 0, i32 15
  %41 = load ptr, ptr %40, align 8, !tbaa !71
  %42 = call zeroext i8 @do_colorband(ptr noundef %41, float noundef %39, ptr noundef nonnull %10) #18
  %43 = icmp eq i8 %42, 0
  br i1 %43, label %67, label %44

44:                                               ; preds = %38
  %45 = load i32, ptr %26, align 8, !tbaa !159
  %46 = and i32 %45, 1024
  %47 = icmp eq i32 %46, 0
  br i1 %47, label %56, label %48

48:                                               ; preds = %44
  %49 = load float, ptr %10, align 16, !tbaa !123
  store float %49, ptr %3, align 4, !tbaa !123
  %50 = getelementptr inbounds [4 x float], ptr %10, i64 0, i64 1
  %51 = load float, ptr %50, align 4, !tbaa !123
  %52 = getelementptr inbounds float, ptr %3, i64 1
  store float %51, ptr %52, align 4, !tbaa !123
  %53 = getelementptr inbounds [4 x float], ptr %10, i64 0, i64 2
  %54 = load float, ptr %53, align 8, !tbaa !123
  %55 = getelementptr inbounds float, ptr %3, i64 2
  store float %54, ptr %55, align 4, !tbaa !123
  br label %56

56:                                               ; preds = %48, %44
  %57 = and i32 %45, 512
  %58 = icmp eq i32 %57, 0
  %59 = getelementptr inbounds [4 x float], ptr %10, i64 0, i64 3
  %60 = load float, ptr %59, align 4
  %61 = select i1 %58, float 1.000000e+00, float %60
  %62 = fmul float %25, %61
  %63 = and i32 %45, 2048
  %64 = icmp eq i32 %63, 0
  br i1 %64, label %67, label %65

65:                                               ; preds = %56
  %66 = fmul float %16, %60
  br label %67

67:                                               ; preds = %56, %65, %38
  %68 = phi float [ %62, %65 ], [ %62, %56 ], [ %25, %38 ]
  %69 = phi float [ %66, %65 ], [ %16, %56 ], [ %16, %38 ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %10) #18
  br label %70

70:                                               ; preds = %67, %24
  %71 = phi float [ %68, %67 ], [ %25, %24 ]
  %72 = phi float [ %69, %67 ], [ %16, %24 ]
  %73 = getelementptr inbounds %struct.DynamicPaintSurface, ptr %0, i64 0, i32 11
  %74 = load i16, ptr %73, align 2, !tbaa !43
  switch i16 %74, label %296 [
    i16 0, label %75
    i16 1, label %186
    i16 2, label %228
    i16 3, label %248
  ]

75:                                               ; preds = %70
  %76 = getelementptr inbounds %struct.DynamicPaintBrushSettings, ptr %2, i64 0, i32 10
  %77 = load float, ptr %76, align 8, !tbaa !166
  %78 = fmul float %71, %77
  %79 = load i32, ptr %26, align 8, !tbaa !159
  %80 = load ptr, ptr %11, align 8, !tbaa !72
  %81 = getelementptr inbounds %struct.PaintSurfaceData, ptr %80, i64 0, i32 1
  %82 = load ptr, ptr %81, align 8, !tbaa !78
  %83 = sext i32 %1 to i64
  %84 = getelementptr inbounds %struct.PaintPoint, ptr %82, i64 %83
  %85 = and i32 %79, 8
  %86 = icmp eq i32 %85, 0
  %87 = and i32 %79, 4
  %88 = icmp eq i32 %87, 0
  br i1 %86, label %89, label %153

89:                                               ; preds = %75
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %9) #18
  %90 = select i1 %88, float %7, float 1.000000e+00
  %91 = fmul float %71, %90
  %92 = getelementptr inbounds %struct.PaintPoint, ptr %82, i64 %83, i32 1
  %93 = load float, ptr %92, align 4, !tbaa !252
  %94 = fsub float 1.000000e+00, %91
  %95 = call float @llvm.fmuladd.f32(float %93, float %94, float %91)
  %96 = fcmp une float %95, 0.000000e+00
  br i1 %96, label %97, label %110

97:                                               ; preds = %89, %97
  %98 = phi i64 [ %108, %97 ], [ 0, %89 ]
  %99 = getelementptr inbounds float, ptr %84, i64 %98
  %100 = load float, ptr %99, align 4, !tbaa !123
  %101 = fmul float %93, %100
  %102 = getelementptr inbounds float, ptr %3, i64 %98
  %103 = load float, ptr %102, align 4, !tbaa !123
  %104 = fmul float %91, %103
  %105 = call float @llvm.fmuladd.f32(float %101, float %94, float %104)
  %106 = fdiv float %105, %95
  %107 = getelementptr inbounds float, ptr %9, i64 %98
  store float %106, ptr %107, align 4, !tbaa !123
  %108 = add nuw nsw i64 %98, 1
  %109 = icmp eq i64 %108, 3
  br i1 %109, label %118, label %97, !llvm.loop !253

110:                                              ; preds = %89
  %111 = load float, ptr %84, align 4, !tbaa !123
  store float %111, ptr %9, align 16, !tbaa !123
  %112 = getelementptr inbounds float, ptr %84, i64 1
  %113 = load float, ptr %112, align 4, !tbaa !123
  %114 = getelementptr inbounds float, ptr %9, i64 1
  store float %113, ptr %114, align 4, !tbaa !123
  %115 = getelementptr inbounds float, ptr %84, i64 2
  %116 = load float, ptr %115, align 4, !tbaa !123
  %117 = getelementptr inbounds float, ptr %9, i64 2
  store float %116, ptr %117, align 8, !tbaa !123
  br label %118

118:                                              ; preds = %97, %110
  %119 = getelementptr inbounds float, ptr %9, i64 3
  store float %95, ptr %119, align 4, !tbaa !123
  %120 = load float, ptr %9, align 16, !tbaa !123
  store float %120, ptr %84, align 4, !tbaa !123
  %121 = getelementptr inbounds float, ptr %9, i64 1
  %122 = load float, ptr %121, align 4, !tbaa !123
  %123 = getelementptr inbounds float, ptr %84, i64 1
  store float %122, ptr %123, align 4, !tbaa !123
  %124 = getelementptr inbounds float, ptr %9, i64 2
  %125 = load float, ptr %124, align 8, !tbaa !123
  %126 = getelementptr inbounds float, ptr %84, i64 2
  store float %125, ptr %126, align 4, !tbaa !123
  br i1 %88, label %135, label %127

127:                                              ; preds = %118
  %128 = fcmp olt float %93, %71
  br i1 %128, label %129, label %130

129:                                              ; preds = %127
  store float %71, ptr %92, align 4, !tbaa !252
  br label %130

130:                                              ; preds = %129, %127
  %131 = getelementptr inbounds %struct.PaintPoint, ptr %82, i64 %83, i32 2
  %132 = load float, ptr %131, align 4, !tbaa !265
  %133 = fcmp olt float %132, %78
  br i1 %133, label %134, label %146

134:                                              ; preds = %130
  store float %78, ptr %131, align 4, !tbaa !265
  br label %146

135:                                              ; preds = %118
  %136 = fcmp olt float %78, 0.000000e+00
  br i1 %136, label %140, label %137

137:                                              ; preds = %135
  %138 = fcmp ogt float %78, 1.000000e+00
  br i1 %138, label %139, label %140

139:                                              ; preds = %137
  br label %140

140:                                              ; preds = %139, %137, %135
  %141 = phi float [ 1.000000e+00, %139 ], [ %78, %137 ], [ 0.000000e+00, %135 ]
  store float %95, ptr %92, align 4, !tbaa !252
  %142 = getelementptr inbounds %struct.PaintPoint, ptr %82, i64 %83, i32 2
  %143 = load float, ptr %142, align 4, !tbaa !265
  %144 = fsub float 1.000000e+00, %141
  %145 = call float @llvm.fmuladd.f32(float %143, float %144, float %141)
  store float %145, ptr %142, align 4, !tbaa !265
  br label %146

146:                                              ; preds = %140, %134, %130
  %147 = getelementptr inbounds %struct.PaintPoint, ptr %82, i64 %83, i32 2
  %148 = load float, ptr %147, align 4, !tbaa !265
  %149 = fcmp olt float %148, 0x3F50624DE0000000
  br i1 %149, label %150, label %151

150:                                              ; preds = %146
  store float 0x3F50624DE0000000, ptr %147, align 4, !tbaa !265
  br label %151

151:                                              ; preds = %150, %146
  %152 = getelementptr inbounds %struct.PaintPoint, ptr %82, i64 %83, i32 3
  store i16 2, ptr %152, align 4, !tbaa !355
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %9) #18
  br label %296

153:                                              ; preds = %75
  %154 = fsub float 1.000000e+00, %71
  %155 = getelementptr inbounds %struct.PaintPoint, ptr %82, i64 %83, i32 1
  %156 = load float, ptr %155, align 4, !tbaa !252
  br i1 %88, label %167, label %157

157:                                              ; preds = %153
  %158 = getelementptr inbounds %struct.PaintPoint, ptr %82, i64 %83, i32 5
  %159 = load float, ptr %158, align 4, !tbaa !196
  %160 = fcmp ogt float %156, %159
  %161 = select i1 %160, float %156, float %159
  %162 = fcmp ogt float %161, %154
  br i1 %162, label %163, label %177

163:                                              ; preds = %157
  %164 = fdiv float %154, %161
  %165 = fmul float %156, %164
  store float %165, ptr %155, align 4, !tbaa !252
  %166 = fmul float %159, %164
  store float %166, ptr %158, align 4, !tbaa !196
  br label %177

167:                                              ; preds = %153
  %168 = fneg float %71
  %169 = call float @llvm.fmuladd.f32(float %168, float %7, float %156)
  %170 = fcmp olt float %169, 0.000000e+00
  %171 = select i1 %170, float 0.000000e+00, float %169
  store float %171, ptr %155, align 4, !tbaa !252
  %172 = getelementptr inbounds %struct.PaintPoint, ptr %82, i64 %83, i32 5
  %173 = load float, ptr %172, align 4, !tbaa !196
  %174 = call float @llvm.fmuladd.f32(float %168, float %7, float %173)
  store float %174, ptr %172, align 4, !tbaa !196
  %175 = fcmp olt float %174, 0.000000e+00
  br i1 %175, label %176, label %177

176:                                              ; preds = %167
  store float 0.000000e+00, ptr %172, align 4, !tbaa !196
  br label %177

177:                                              ; preds = %176, %167, %163, %157
  %178 = fsub float 1.000000e+00, %78
  %179 = getelementptr inbounds %struct.PaintPoint, ptr %82, i64 %83, i32 1
  %180 = load float, ptr %179, align 4, !tbaa !252
  %181 = fmul float %178, %180
  %182 = getelementptr inbounds %struct.PaintPoint, ptr %82, i64 %83, i32 2
  %183 = load float, ptr %182, align 4, !tbaa !265
  %184 = fcmp ogt float %183, %181
  br i1 %184, label %185, label %296

185:                                              ; preds = %177
  store float %181, ptr %182, align 4, !tbaa !265
  br label %296

186:                                              ; preds = %70
  %187 = getelementptr inbounds %struct.PaintSurfaceData, ptr %12, i64 0, i32 1
  %188 = load ptr, ptr %187, align 8, !tbaa !78
  %189 = getelementptr inbounds %struct.DynamicPaintSurface, ptr %0, i64 0, i32 18
  %190 = load i32, ptr %189, align 4, !tbaa !50
  %191 = and i32 %190, 256
  %192 = icmp eq i32 %191, 0
  br i1 %192, label %198, label %193

193:                                              ; preds = %186
  %194 = zext i32 %1 to i64
  %195 = getelementptr inbounds float, ptr %188, i64 %194
  %196 = load float, ptr %195, align 4, !tbaa !123
  %197 = fadd float %72, %196
  br label %198

198:                                              ; preds = %193, %186
  %199 = phi float [ %197, %193 ], [ %72, %186 ]
  %200 = getelementptr inbounds %struct.DynamicPaintSurface, ptr %0, i64 0, i32 31
  %201 = load float, ptr %200, align 4, !tbaa !60
  %202 = fcmp une float %201, 0.000000e+00
  br i1 %202, label %203, label %209

203:                                              ; preds = %198
  %204 = fsub float 0.000000e+00, %201
  %205 = fcmp olt float %199, %204
  br i1 %205, label %209, label %206

206:                                              ; preds = %203
  %207 = fcmp ogt float %199, %201
  br i1 %207, label %208, label %209

208:                                              ; preds = %206
  br label %209

209:                                              ; preds = %203, %208, %206, %198
  %210 = phi float [ %201, %208 ], [ %199, %206 ], [ %199, %198 ], [ %204, %203 ]
  %211 = load i32, ptr %26, align 8, !tbaa !159
  %212 = and i32 %211, 8
  %213 = icmp eq i32 %212, 0
  br i1 %213, label %222, label %214

214:                                              ; preds = %209
  %215 = fsub float 1.000000e+00, %71
  %216 = zext i32 %1 to i64
  %217 = getelementptr inbounds float, ptr %188, i64 %216
  %218 = load float, ptr %217, align 4, !tbaa !123
  %219 = fmul float %215, %218
  store float %219, ptr %217, align 4, !tbaa !123
  %220 = fcmp olt float %219, 0.000000e+00
  br i1 %220, label %221, label %296

221:                                              ; preds = %214
  store float 0.000000e+00, ptr %217, align 4, !tbaa !123
  br label %296

222:                                              ; preds = %209
  %223 = zext i32 %1 to i64
  %224 = getelementptr inbounds float, ptr %188, i64 %223
  %225 = load float, ptr %224, align 4, !tbaa !123
  %226 = fcmp olt float %225, %210
  br i1 %226, label %227, label %296

227:                                              ; preds = %222
  store float %210, ptr %224, align 4, !tbaa !123
  br label %296

228:                                              ; preds = %70
  %229 = getelementptr inbounds %struct.PaintSurfaceData, ptr %12, i64 0, i32 1
  %230 = load ptr, ptr %229, align 8, !tbaa !78
  %231 = load i32, ptr %26, align 8, !tbaa !159
  %232 = and i32 %231, 8
  %233 = icmp eq i32 %232, 0
  br i1 %233, label %242, label %234

234:                                              ; preds = %228
  %235 = fsub float 1.000000e+00, %71
  %236 = zext i32 %1 to i64
  %237 = getelementptr inbounds float, ptr %230, i64 %236
  %238 = load float, ptr %237, align 4, !tbaa !123
  %239 = fmul float %235, %238
  store float %239, ptr %237, align 4, !tbaa !123
  %240 = fcmp olt float %239, 0.000000e+00
  br i1 %240, label %241, label %296

241:                                              ; preds = %234
  store float 0.000000e+00, ptr %237, align 4, !tbaa !123
  br label %296

242:                                              ; preds = %228
  %243 = zext i32 %1 to i64
  %244 = getelementptr inbounds float, ptr %230, i64 %243
  %245 = load float, ptr %244, align 4, !tbaa !123
  %246 = fcmp olt float %245, %71
  br i1 %246, label %247, label %296

247:                                              ; preds = %242
  store float %71, ptr %244, align 4, !tbaa !123
  br label %296

248:                                              ; preds = %70
  %249 = getelementptr inbounds %struct.DynamicPaintBrushSettings, ptr %2, i64 0, i32 21
  %250 = load float, ptr %249, align 4, !tbaa !173
  %251 = fcmp une float %250, 0.000000e+00
  br i1 %251, label %252, label %258

252:                                              ; preds = %248
  %253 = fsub float 0.000000e+00, %250
  %254 = fcmp olt float %72, %253
  br i1 %254, label %258, label %255

255:                                              ; preds = %252
  %256 = fcmp ogt float %72, %250
  br i1 %256, label %257, label %258

257:                                              ; preds = %255
  br label %258

258:                                              ; preds = %252, %257, %255, %248
  %259 = phi float [ %250, %257 ], [ %72, %255 ], [ %72, %248 ], [ %253, %252 ]
  %260 = getelementptr inbounds %struct.PaintSurfaceData, ptr %12, i64 0, i32 1
  %261 = load ptr, ptr %260, align 8, !tbaa !78
  %262 = zext i32 %1 to i64
  %263 = getelementptr inbounds %struct.PaintWavePoint, ptr %261, i64 %262
  %264 = fsub float 0.000000e+00, %259
  %265 = getelementptr inbounds %struct.PaintWavePoint, ptr %261, i64 %262, i32 2
  %266 = load float, ptr %265, align 4, !tbaa !419
  %267 = fsub float %264, %266
  store float %264, ptr %265, align 4, !tbaa !419
  %268 = getelementptr inbounds %struct.PaintWavePoint, ptr %261, i64 %262, i32 3
  store i16 -1, ptr %268, align 4, !tbaa !414
  %269 = getelementptr inbounds %struct.DynamicPaintBrushSettings, ptr %2, i64 0, i32 20
  %270 = load float, ptr %269, align 8, !tbaa !172
  %271 = fmul float %264, %270
  %272 = fcmp ogt float %270, 0.000000e+00
  br i1 %272, label %273, label %276

273:                                              ; preds = %258
  %274 = load float, ptr %263, align 4, !tbaa !280
  %275 = fcmp ogt float %274, %271
  br i1 %275, label %281, label %276

276:                                              ; preds = %273, %258
  %277 = fcmp olt float %270, 0.000000e+00
  br i1 %277, label %278, label %296

278:                                              ; preds = %276
  %279 = load float, ptr %263, align 4, !tbaa !280
  %280 = fcmp olt float %279, %271
  br i1 %280, label %281, label %296

281:                                              ; preds = %278, %273
  %282 = getelementptr inbounds %struct.DynamicPaintBrushSettings, ptr %2, i64 0, i32 17
  %283 = load i16, ptr %282, align 2, !tbaa !171
  switch i16 %283, label %289 [
    i16 0, label %284
    i16 1, label %286
    i16 2, label %288
  ]

284:                                              ; preds = %281
  store float %271, ptr %263, align 4, !tbaa !280
  store i16 1, ptr %268, align 4, !tbaa !414
  %285 = getelementptr inbounds %struct.PaintWavePoint, ptr %261, i64 %262, i32 1
  store float 0.000000e+00, ptr %285, align 4, !tbaa !416
  br label %296

286:                                              ; preds = %281
  %287 = getelementptr inbounds %struct.PaintWavePoint, ptr %261, i64 %262, i32 1
  store float %271, ptr %287, align 4, !tbaa !416
  br label %296

288:                                              ; preds = %281
  store i16 2, ptr %268, align 4, !tbaa !414
  br label %296

289:                                              ; preds = %281
  %290 = icmp eq i16 %283, 3
  %291 = fcmp olt float %267, 0.000000e+00
  %292 = select i1 %290, i1 %291, i1 false
  br i1 %292, label %293, label %296

293:                                              ; preds = %289
  %294 = load float, ptr %263, align 4, !tbaa !280
  %295 = call float @llvm.fmuladd.f32(float %267, float %270, float %294)
  store float %295, ptr %263, align 4, !tbaa !280
  br label %296

296:                                              ; preds = %293, %289, %288, %286, %284, %278, %276, %185, %177, %151, %70, %241, %234, %247, %242, %221, %214, %227, %222
  %297 = getelementptr inbounds %struct.PaintSurfaceData, ptr %12, i64 0, i32 3
  %298 = load ptr, ptr %297, align 8, !tbaa !85
  %299 = getelementptr inbounds %struct.PaintBakeData, ptr %298, i64 0, i32 10
  %300 = load ptr, ptr %299, align 8, !tbaa !359
  %301 = icmp eq ptr %300, null
  br i1 %301, label %309, label %302

302:                                              ; preds = %296
  %303 = shl i32 %1, 2
  %304 = or disjoint i32 %303, 3
  %305 = zext i32 %304 to i64
  %306 = getelementptr inbounds float, ptr %300, i64 %305
  %307 = load float, ptr %306, align 4, !tbaa !123
  %308 = fmul float %15, %307
  store float %308, ptr %306, align 4, !tbaa !123
  br label %309

309:                                              ; preds = %302, %296
  ret void
}

declare void @BLI_end_threaded_malloc() local_unnamed_addr #5

declare zeroext i8 @do_colorband(ptr noundef, float noundef, ptr noundef) local_unnamed_addr #5

declare void @RE_sample_material_color(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef, i16 noundef signext, ptr noundef, ptr noundef) local_unnamed_addr #5

declare ptr @bvhtree_from_mesh_faces(ptr noundef, ptr noundef, float noundef, i32 noundef, i32 noundef) local_unnamed_addr #5

declare i32 @BLI_bvhtree_ray_cast(ptr noundef, ptr noundef, ptr noundef, float noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: nounwind uwtable
define internal void @mesh_faces_spherecast_dp(ptr nocapture noundef readonly %0, i32 noundef %1, ptr noundef %2, ptr nocapture noundef %3) #4 {
  %5 = getelementptr inbounds %struct.BVHTreeFromMesh, ptr %0, i64 0, i32 3
  %6 = load ptr, ptr %5, align 8, !tbaa !461
  %7 = getelementptr inbounds %struct.BVHTreeFromMesh, ptr %0, i64 0, i32 5
  %8 = load ptr, ptr %7, align 8, !tbaa !462
  %9 = sext i32 %1 to i64
  %10 = getelementptr inbounds %struct.MFace, ptr %8, i64 %9
  %11 = load i32, ptr %10, align 4, !tbaa !289
  %12 = zext i32 %11 to i64
  %13 = getelementptr inbounds %struct.MVert, ptr %6, i64 %12
  %14 = getelementptr inbounds %struct.MFace, ptr %8, i64 %9, i32 1
  %15 = load i32, ptr %14, align 4, !tbaa !305
  %16 = zext i32 %15 to i64
  %17 = getelementptr inbounds %struct.MVert, ptr %6, i64 %16
  %18 = getelementptr inbounds %struct.MFace, ptr %8, i64 %9, i32 2
  %19 = load i32, ptr %18, align 4, !tbaa !306
  %20 = zext i32 %19 to i64
  %21 = getelementptr inbounds %struct.MVert, ptr %6, i64 %20
  %22 = getelementptr inbounds %struct.MFace, ptr %8, i64 %9, i32 3
  %23 = load i32, ptr %22, align 4, !tbaa !201
  %24 = icmp eq i32 %23, 0
  %25 = zext i32 %23 to i64
  %26 = getelementptr inbounds %struct.MVert, ptr %6, i64 %25
  %27 = select i1 %24, ptr null, ptr %26
  %28 = getelementptr inbounds %struct.BVHTreeRayHit, ptr %3, i64 0, i32 3
  %29 = getelementptr inbounds %struct.BVHTreeRayHit, ptr %3, i64 0, i32 2
  br label %30

30:                                               ; preds = %42, %4
  %31 = phi ptr [ %17, %4 ], [ %32, %42 ]
  %32 = phi ptr [ %21, %4 ], [ %33, %42 ]
  %33 = phi ptr [ %27, %4 ], [ null, %42 ]
  %34 = phi float [ 0.000000e+00, %4 ], [ 1.000000e+00, %42 ]
  %35 = load float, ptr %28, align 4, !tbaa !395
  %36 = tail call float @bvhtree_ray_tri_intersection(ptr noundef %2, float noundef %35, ptr noundef %13, ptr noundef %31, ptr noundef %32) #18
  %37 = fcmp ult float %36, 0.000000e+00
  br i1 %37, label %42, label %38

38:                                               ; preds = %30
  %39 = load float, ptr %28, align 4, !tbaa !395
  %40 = fcmp olt float %36, %39
  br i1 %40, label %41, label %42

41:                                               ; preds = %38
  store i32 %1, ptr %3, align 4, !tbaa !393
  store float %36, ptr %28, align 4, !tbaa !395
  store float %34, ptr %29, align 4, !tbaa !123
  br label %42

42:                                               ; preds = %41, %38, %30
  %43 = icmp eq ptr %33, null
  br i1 %43, label %44, label %30, !llvm.loop !463

44:                                               ; preds = %42
  ret void
}

declare float @normal_tri_v3(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #5

declare i32 @BLI_bvhtree_find_nearest(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: nounwind uwtable
define internal void @mesh_faces_nearest_point_dp(ptr nocapture noundef readonly %0, i32 noundef %1, ptr noundef %2, ptr nocapture noundef %3) #4 {
  %5 = alloca [3 x float], align 4
  %6 = getelementptr inbounds %struct.BVHTreeFromMesh, ptr %0, i64 0, i32 3
  %7 = load ptr, ptr %6, align 8, !tbaa !461
  %8 = getelementptr inbounds %struct.BVHTreeFromMesh, ptr %0, i64 0, i32 5
  %9 = load ptr, ptr %8, align 8, !tbaa !462
  %10 = sext i32 %1 to i64
  %11 = getelementptr inbounds %struct.MFace, ptr %9, i64 %10
  %12 = load i32, ptr %11, align 4, !tbaa !289
  %13 = zext i32 %12 to i64
  %14 = getelementptr inbounds %struct.MVert, ptr %7, i64 %13
  %15 = getelementptr inbounds %struct.MFace, ptr %9, i64 %10, i32 1
  %16 = load i32, ptr %15, align 4, !tbaa !305
  %17 = zext i32 %16 to i64
  %18 = getelementptr inbounds %struct.MVert, ptr %7, i64 %17
  %19 = getelementptr inbounds %struct.MFace, ptr %9, i64 %10, i32 2
  %20 = load i32, ptr %19, align 4, !tbaa !306
  %21 = zext i32 %20 to i64
  %22 = getelementptr inbounds %struct.MVert, ptr %7, i64 %21
  %23 = getelementptr inbounds %struct.MFace, ptr %9, i64 %10, i32 3
  %24 = load i32, ptr %23, align 4, !tbaa !201
  %25 = icmp eq i32 %24, 0
  %26 = zext i32 %24 to i64
  %27 = getelementptr inbounds %struct.MVert, ptr %7, i64 %26
  %28 = select i1 %25, ptr null, ptr %27
  %29 = getelementptr inbounds float, ptr %5, i64 1
  %30 = getelementptr inbounds float, ptr %2, i64 1
  %31 = getelementptr inbounds float, ptr %5, i64 2
  %32 = getelementptr inbounds float, ptr %2, i64 2
  %33 = getelementptr inbounds %struct.BVHTreeNearest, ptr %3, i64 0, i32 3
  %34 = getelementptr inbounds %struct.BVHTreeNearest, ptr %3, i64 0, i32 1
  %35 = getelementptr inbounds %struct.BVHTreeNearest, ptr %3, i64 0, i32 1, i64 1
  %36 = getelementptr inbounds %struct.BVHTreeNearest, ptr %3, i64 0, i32 1, i64 2
  %37 = getelementptr inbounds %struct.BVHTreeNearest, ptr %3, i64 0, i32 2
  br label %38

38:                                               ; preds = %58, %4
  %39 = phi ptr [ %18, %4 ], [ %40, %58 ]
  %40 = phi ptr [ %22, %4 ], [ %41, %58 ]
  %41 = phi ptr [ %28, %4 ], [ null, %58 ]
  %42 = phi float [ 0.000000e+00, %4 ], [ 1.000000e+00, %58 ]
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %5) #18
  call void @closest_on_tri_to_point_v3(ptr noundef nonnull %5, ptr noundef %2, ptr noundef %14, ptr noundef %39, ptr noundef %40) #18
  %43 = load float, ptr %5, align 4, !tbaa !123
  %44 = load float, ptr %2, align 4, !tbaa !123
  %45 = fsub float %43, %44
  %46 = load float, ptr %29, align 4, !tbaa !123
  %47 = load float, ptr %30, align 4, !tbaa !123
  %48 = fsub float %46, %47
  %49 = load float, ptr %31, align 4, !tbaa !123
  %50 = load float, ptr %32, align 4, !tbaa !123
  %51 = fsub float %49, %50
  %52 = fmul float %48, %48
  %53 = call float @llvm.fmuladd.f32(float %45, float %45, float %52)
  %54 = call float @llvm.fmuladd.f32(float %51, float %51, float %53)
  %55 = load float, ptr %33, align 4, !tbaa !398
  %56 = fcmp olt float %54, %55
  br i1 %56, label %57, label %58

57:                                               ; preds = %38
  store i32 %1, ptr %3, align 4, !tbaa !396
  store float %54, ptr %33, align 4, !tbaa !398
  store float %43, ptr %34, align 4, !tbaa !123
  store float %46, ptr %35, align 4, !tbaa !123
  store float %49, ptr %36, align 4, !tbaa !123
  store float %42, ptr %37, align 4, !tbaa !123
  br label %58

58:                                               ; preds = %57, %38
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %5) #18
  %59 = icmp eq ptr %41, null
  br i1 %59, label %60, label %38, !llvm.loop !464

60:                                               ; preds = %58
  ret void
}

declare void @interp_weights_face_v3(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #5

declare void @free_bvhtree_from_mesh(ptr noundef) local_unnamed_addr #5

declare float @bvhtree_ray_tri_intersection(ptr noundef, float noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #5

declare void @closest_on_tri_to_point_v3(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #5

declare void @RE_free_sample_material(ptr noundef) local_unnamed_addr #5

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.ceil.f64(double) #11

; Function Attrs: nofree nounwind memory(readwrite, inaccessiblemem: write) uwtable
define internal fastcc void @surface_determineForceTargetPoints(ptr nocapture noundef readonly %0, i32 noundef %1, ptr nocapture noundef readonly %2, ptr nocapture noundef %3, ptr nocapture noundef %4) unnamed_addr #14 {
  %6 = getelementptr inbounds %struct.PaintSurfaceData, ptr %0, i64 0, i32 3
  %7 = load ptr, ptr %6, align 8, !tbaa !85
  %8 = getelementptr inbounds %struct.PaintBakeData, ptr %7, i64 0, i32 5
  %9 = load ptr, ptr %8, align 8, !tbaa !93
  %10 = getelementptr inbounds %struct.PaintSurfaceData, ptr %0, i64 0, i32 2
  %11 = load ptr, ptr %10, align 8, !tbaa !79
  %12 = getelementptr inbounds %struct.PaintAdjData, ptr %11, i64 0, i32 2
  %13 = load ptr, ptr %12, align 8, !tbaa !82
  %14 = sext i32 %1 to i64
  %15 = getelementptr inbounds i32, ptr %13, i64 %14
  %16 = load i32, ptr %15, align 4, !tbaa !205
  %17 = getelementptr inbounds i32, ptr %4, i64 1
  store i32 -1, ptr %17, align 4, !tbaa !205
  store i32 -1, ptr %4, align 4, !tbaa !205
  %18 = getelementptr inbounds float, ptr %3, i64 1
  store float -1.000000e+00, ptr %18, align 4, !tbaa !123
  store float -1.000000e+00, ptr %3, align 4, !tbaa !123
  %19 = icmp sgt i32 %16, 0
  br i1 %19, label %20, label %51

20:                                               ; preds = %5
  %21 = getelementptr inbounds %struct.PaintAdjData, ptr %11, i64 0, i32 1
  %22 = load ptr, ptr %21, align 8, !tbaa !80
  %23 = getelementptr inbounds i32, ptr %22, i64 %14
  %24 = getelementptr inbounds float, ptr %2, i64 1
  %25 = getelementptr inbounds float, ptr %2, i64 2
  br label %26

26:                                               ; preds = %20, %48
  %27 = phi i32 [ 0, %20 ], [ %49, %48 ]
  %28 = load i32, ptr %23, align 4, !tbaa !205
  %29 = add nsw i32 %28, %27
  %30 = sext i32 %29 to i64
  %31 = getelementptr inbounds %struct.BakeAdjPoint, ptr %9, i64 %30
  %32 = load float, ptr %31, align 4, !tbaa !123
  %33 = load float, ptr %2, align 4, !tbaa !123
  %34 = getelementptr inbounds float, ptr %31, i64 1
  %35 = load float, ptr %34, align 4, !tbaa !123
  %36 = load float, ptr %24, align 4, !tbaa !123
  %37 = fmul float %35, %36
  %38 = tail call float @llvm.fmuladd.f32(float %32, float %33, float %37)
  %39 = getelementptr inbounds float, ptr %31, i64 2
  %40 = load float, ptr %39, align 4, !tbaa !123
  %41 = load float, ptr %25, align 4, !tbaa !123
  %42 = tail call float @llvm.fmuladd.f32(float %40, float %41, float %38)
  %43 = load float, ptr %3, align 4, !tbaa !123
  %44 = fcmp ogt float %42, %43
  %45 = fcmp ogt float %42, 0.000000e+00
  %46 = and i1 %44, %45
  br i1 %46, label %47, label %48

47:                                               ; preds = %26
  store float %42, ptr %3, align 4, !tbaa !123
  store i32 %29, ptr %4, align 4, !tbaa !205
  br label %48

48:                                               ; preds = %47, %26
  %49 = add nuw nsw i32 %27, 1
  %50 = icmp eq i32 %49, %16
  br i1 %50, label %51, label %26, !llvm.loop !465

51:                                               ; preds = %48, %5
  %52 = load float, ptr %3, align 4, !tbaa !123
  %53 = fcmp olt float %52, 0.000000e+00
  br i1 %53, label %223, label %54

54:                                               ; preds = %51
  %55 = icmp sgt i32 %16, 0
  br i1 %55, label %56, label %102

56:                                               ; preds = %54
  %57 = getelementptr inbounds %struct.PaintAdjData, ptr %11, i64 0, i32 1
  %58 = load ptr, ptr %57, align 8, !tbaa !80
  %59 = getelementptr inbounds i32, ptr %58, i64 %14
  %60 = getelementptr inbounds float, ptr %2, i64 1
  %61 = getelementptr inbounds float, ptr %2, i64 2
  %62 = load i32, ptr %4, align 4, !tbaa !205
  %63 = sext i32 %62 to i64
  %64 = getelementptr inbounds %struct.BakeAdjPoint, ptr %9, i64 %63
  %65 = getelementptr inbounds float, ptr %64, i64 1
  %66 = getelementptr inbounds float, ptr %64, i64 2
  br label %67

67:                                               ; preds = %56, %99
  %68 = phi i32 [ 0, %56 ], [ %100, %99 ]
  %69 = load i32, ptr %59, align 4, !tbaa !205
  %70 = add nsw i32 %69, %68
  %71 = sext i32 %70 to i64
  %72 = getelementptr inbounds %struct.BakeAdjPoint, ptr %9, i64 %71
  %73 = load float, ptr %72, align 4, !tbaa !123
  %74 = load float, ptr %2, align 4, !tbaa !123
  %75 = getelementptr inbounds float, ptr %72, i64 1
  %76 = load float, ptr %75, align 4, !tbaa !123
  %77 = load float, ptr %60, align 4, !tbaa !123
  %78 = fmul float %76, %77
  %79 = tail call float @llvm.fmuladd.f32(float %73, float %74, float %78)
  %80 = getelementptr inbounds float, ptr %72, i64 2
  %81 = load float, ptr %80, align 4, !tbaa !123
  %82 = load float, ptr %61, align 4, !tbaa !123
  %83 = tail call float @llvm.fmuladd.f32(float %81, float %82, float %79)
  %84 = load float, ptr %64, align 4, !tbaa !123
  %85 = load float, ptr %65, align 4, !tbaa !123
  %86 = fmul float %76, %85
  %87 = tail call float @llvm.fmuladd.f32(float %73, float %84, float %86)
  %88 = load float, ptr %66, align 4, !tbaa !123
  %89 = tail call float @llvm.fmuladd.f32(float %81, float %88, float %87)
  %90 = icmp eq i32 %70, %62
  br i1 %90, label %99, label %91

91:                                               ; preds = %67
  %92 = load float, ptr %18, align 4, !tbaa !123
  %93 = fcmp ogt float %83, %92
  br i1 %93, label %94, label %99

94:                                               ; preds = %91
  %95 = fcmp olt float %89, %52
  %96 = fcmp ogt float %83, 0.000000e+00
  %97 = select i1 %95, i1 %96, i1 false
  br i1 %97, label %98, label %99

98:                                               ; preds = %94
  store float %83, ptr %18, align 4, !tbaa !123
  store i32 %70, ptr %17, align 4, !tbaa !205
  br label %99

99:                                               ; preds = %91, %94, %98, %67
  %100 = add nuw nsw i32 %68, 1
  %101 = icmp eq i32 %100, %16
  br i1 %101, label %102, label %67, !llvm.loop !466

102:                                              ; preds = %99, %54
  %103 = load i32, ptr %17, align 4, !tbaa !205
  %104 = icmp eq i32 %103, -1
  br i1 %104, label %219, label %105

105:                                              ; preds = %102
  %106 = load i32, ptr %4, align 4, !tbaa !205
  %107 = sext i32 %106 to i64
  %108 = getelementptr inbounds %struct.BakeAdjPoint, ptr %9, i64 %107
  %109 = sext i32 %103 to i64
  %110 = getelementptr inbounds %struct.BakeAdjPoint, ptr %9, i64 %109
  %111 = load float, ptr %108, align 4, !tbaa !123
  %112 = load float, ptr %110, align 4, !tbaa !123
  %113 = getelementptr inbounds float, ptr %108, i64 1
  %114 = load float, ptr %113, align 4, !tbaa !123
  %115 = getelementptr inbounds float, ptr %110, i64 1
  %116 = load float, ptr %115, align 4, !tbaa !123
  %117 = fmul float %114, %116
  %118 = tail call float @llvm.fmuladd.f32(float %111, float %112, float %117)
  %119 = getelementptr inbounds float, ptr %108, i64 2
  %120 = load float, ptr %119, align 4, !tbaa !123
  %121 = getelementptr inbounds float, ptr %110, i64 2
  %122 = load float, ptr %121, align 4, !tbaa !123
  %123 = tail call float @llvm.fmuladd.f32(float %120, float %122, float %118)
  %124 = tail call float @acosf(float noundef %123) #18
  %125 = load i32, ptr %4, align 4, !tbaa !205
  %126 = sext i32 %125 to i64
  %127 = getelementptr inbounds %struct.BakeAdjPoint, ptr %9, i64 %126
  %128 = load i32, ptr %17, align 4, !tbaa !205
  %129 = sext i32 %128 to i64
  %130 = getelementptr inbounds %struct.BakeAdjPoint, ptr %9, i64 %129
  %131 = getelementptr inbounds float, ptr %127, i64 1
  %132 = load float, ptr %131, align 4, !tbaa !123
  %133 = getelementptr inbounds float, ptr %130, i64 2
  %134 = load float, ptr %133, align 4, !tbaa !123
  %135 = getelementptr inbounds float, ptr %127, i64 2
  %136 = load float, ptr %135, align 4, !tbaa !123
  %137 = getelementptr inbounds float, ptr %130, i64 1
  %138 = load float, ptr %137, align 4, !tbaa !123
  %139 = fneg float %136
  %140 = fmul float %138, %139
  %141 = tail call float @llvm.fmuladd.f32(float %132, float %134, float %140)
  %142 = load float, ptr %130, align 4, !tbaa !123
  %143 = load float, ptr %127, align 4, !tbaa !123
  %144 = fneg float %143
  %145 = fmul float %134, %144
  %146 = tail call float @llvm.fmuladd.f32(float %136, float %142, float %145)
  %147 = fneg float %132
  %148 = fmul float %142, %147
  %149 = tail call float @llvm.fmuladd.f32(float %143, float %138, float %148)
  %150 = fmul float %146, %146
  %151 = tail call float @llvm.fmuladd.f32(float %141, float %141, float %150)
  %152 = tail call float @llvm.fmuladd.f32(float %149, float %149, float %151)
  %153 = fcmp ogt float %152, 0x38AA95A5C0000000
  br i1 %153, label %154, label %160

154:                                              ; preds = %105
  %155 = tail call float @sqrtf(float noundef %152) #18
  %156 = fdiv float 1.000000e+00, %155
  %157 = fmul float %141, %156
  %158 = fmul float %146, %156
  %159 = fmul float %149, %156
  br label %160

160:                                              ; preds = %105, %154
  %161 = phi float [ %158, %154 ], [ 0.000000e+00, %105 ]
  %162 = phi float [ %157, %154 ], [ 0.000000e+00, %105 ]
  %163 = phi float [ %159, %154 ], [ 0.000000e+00, %105 ]
  %164 = load float, ptr %2, align 4, !tbaa !123
  %165 = getelementptr inbounds float, ptr %2, i64 1
  %166 = load float, ptr %165, align 4, !tbaa !123
  %167 = fmul float %161, %166
  %168 = tail call float @llvm.fmuladd.f32(float %164, float %162, float %167)
  %169 = getelementptr inbounds float, ptr %2, i64 2
  %170 = load float, ptr %169, align 4, !tbaa !123
  %171 = tail call float @llvm.fmuladd.f32(float %170, float %163, float %168)
  %172 = fneg float %171
  %173 = tail call float @llvm.fmuladd.f32(float %162, float %172, float %164)
  %174 = tail call float @llvm.fmuladd.f32(float %161, float %172, float %166)
  %175 = tail call float @llvm.fmuladd.f32(float %163, float %172, float %170)
  %176 = fmul float %174, %174
  %177 = tail call float @llvm.fmuladd.f32(float %173, float %173, float %176)
  %178 = tail call float @llvm.fmuladd.f32(float %175, float %175, float %177)
  %179 = fcmp ogt float %178, 0x38AA95A5C0000000
  br i1 %179, label %180, label %186

180:                                              ; preds = %160
  %181 = tail call float @sqrtf(float noundef %178) #18
  %182 = fdiv float 1.000000e+00, %181
  %183 = fmul float %173, %182
  %184 = fmul float %174, %182
  %185 = fmul float %175, %182
  br label %186

186:                                              ; preds = %160, %180
  %187 = phi float [ %184, %180 ], [ 0.000000e+00, %160 ]
  %188 = phi float [ %183, %180 ], [ 0.000000e+00, %160 ]
  %189 = phi float [ %185, %180 ], [ 0.000000e+00, %160 ]
  %190 = load i32, ptr %4, align 4, !tbaa !205
  %191 = sext i32 %190 to i64
  %192 = getelementptr inbounds %struct.BakeAdjPoint, ptr %9, i64 %191
  %193 = load float, ptr %192, align 4, !tbaa !123
  %194 = getelementptr inbounds float, ptr %192, i64 1
  %195 = load float, ptr %194, align 4, !tbaa !123
  %196 = fmul float %187, %195
  %197 = tail call float @llvm.fmuladd.f32(float %193, float %188, float %196)
  %198 = getelementptr inbounds float, ptr %192, i64 2
  %199 = load float, ptr %198, align 4, !tbaa !123
  %200 = tail call float @llvm.fmuladd.f32(float %199, float %189, float %197)
  %201 = fcmp olt float %200, -1.000000e+00
  br i1 %201, label %205, label %202

202:                                              ; preds = %186
  %203 = fcmp ogt float %200, 1.000000e+00
  br i1 %203, label %204, label %205

204:                                              ; preds = %202
  br label %205

205:                                              ; preds = %186, %202, %204
  %206 = phi float [ 1.000000e+00, %204 ], [ %200, %202 ], [ -1.000000e+00, %186 ]
  %207 = tail call float @acosf(float noundef %206) #18
  %208 = fdiv float %207, %124
  store float %208, ptr %18, align 4, !tbaa !123
  %209 = fsub float 1.000000e+00, %208
  store float %209, ptr %3, align 4, !tbaa !123
  %210 = tail call float @llvm.fabs.f32(float %171)
  %211 = fcmp ogt float %210, 1.000000e+00
  %212 = select i1 %211, float 1.000000e+00, float %210
  %213 = tail call float @acosf(float noundef %212) #18
  %214 = fdiv float %213, 0x3FF921FB60000000
  %215 = load float, ptr %3, align 4, !tbaa !123
  %216 = fmul float %215, %214
  store float %216, ptr %3, align 4, !tbaa !123
  %217 = load float, ptr %18, align 4, !tbaa !123
  %218 = fmul float %214, %217
  store float %218, ptr %18, align 4, !tbaa !123
  br label %223

219:                                              ; preds = %102
  %220 = tail call float @acosf(float noundef %52) #18
  %221 = fdiv float %220, 0x3FF921FB60000000
  %222 = fsub float 1.000000e+00, %221
  store float %222, ptr %3, align 4, !tbaa !123
  br label %223

223:                                              ; preds = %205, %219, %51
  ret void
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(write)
declare float @acosf(float noundef) local_unnamed_addr #13

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fabs.f32(float) #11

declare ptr @pdInitEffectors(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i8 noundef zeroext) local_unnamed_addr #5

declare void @pd_point_from_loc(ptr noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #5

declare void @pdDoEffectors(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #5

declare void @pdEndEffectors(ptr noundef) local_unnamed_addr #5

; Function Attrs: nofree nounwind willreturn memory(argmem: read)
declare i64 @strlen(ptr nocapture) local_unnamed_addr #15

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.floor.f32(float) #16

; Function Attrs: nofree nounwind
declare noundef i32 @puts(ptr nocapture noundef readonly) local_unnamed_addr #17

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #16

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.ceil.f32(float) #16

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #16

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umax.i32(i32, i32) #16

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nofree norecurse nosync nounwind memory(read, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nofree nounwind memory(read, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #8 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #9 = { mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #12 = { mustprogress nofree nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { mustprogress nofree nounwind willreturn memory(write) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { nofree nounwind memory(readwrite, inaccessiblemem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #15 = { nofree nounwind willreturn memory(argmem: read) }
attributes #16 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #17 = { nofree nounwind }
attributes #18 = { nounwind }
attributes #19 = { nounwind willreturn memory(read) }

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
!34 = !{!35, !41, i64 140}
!35 = !{!"DynamicPaintSurface", !36, i64 0, !36, i64 8, !36, i64 16, !36, i64 24, !36, i64 32, !36, i64 40, !36, i64 48, !39, i64 56, !40, i64 72, !37, i64 76, !41, i64 140, !41, i64 142, !41, i64 144, !41, i64 146, !41, i64 148, !41, i64 150, !41, i64 152, !41, i64 154, !40, i64 156, !40, i64 160, !40, i64 164, !40, i64 168, !40, i64 172, !40, i64 176, !40, i64 180, !37, i64 184, !36, i64 200, !37, i64 208, !40, i64 272, !40, i64 276, !42, i64 280, !42, i64 284, !42, i64 288, !42, i64 292, !42, i64 296, !42, i64 300, !42, i64 304, !42, i64 308, !42, i64 312, !42, i64 316, !42, i64 320, !42, i64 324, !42, i64 328, !42, i64 332, !42, i64 336, !40, i64 340, !37, i64 344, !37, i64 408, !37, i64 1432, !37, i64 1496}
!36 = !{!"any pointer", !37, i64 0}
!37 = !{!"omnipotent char", !38, i64 0}
!38 = !{!"Simple C/C++ TBAA"}
!39 = !{!"ListBase", !36, i64 0, !36, i64 8}
!40 = !{!"int", !37, i64 0}
!41 = !{!"short", !37, i64 0}
!42 = !{!"float", !37, i64 0}
!43 = !{!35, !41, i64 142}
!44 = !{!36, !36, i64 0}
!45 = !{!46, !41, i64 32}
!46 = !{!"DynamicPaintCanvasSettings", !36, i64 0, !36, i64 8, !39, i64 16, !41, i64 32, !41, i64 34, !40, i64 36, !37, i64 40}
!47 = distinct !{!47, !48, !49}
!48 = !{!"llvm.loop.mustprogress"}
!49 = !{!"llvm.loop.unroll.disable"}
!50 = !{!35, !40, i64 156}
!51 = distinct !{!51, !48, !49}
!52 = !{!53, !36, i64 296}
!53 = !{!"Object", !54, i64 0, !36, i64 120, !36, i64 128, !41, i64 136, !41, i64 138, !40, i64 140, !40, i64 144, !40, i64 148, !37, i64 152, !36, i64 216, !36, i64 224, !36, i64 232, !36, i64 240, !36, i64 248, !36, i64 256, !36, i64 264, !36, i64 272, !36, i64 280, !36, i64 288, !36, i64 296, !36, i64 304, !55, i64 312, !36, i64 360, !39, i64 368, !39, i64 384, !39, i64 400, !39, i64 416, !40, i64 432, !40, i64 436, !36, i64 440, !36, i64 448, !40, i64 456, !40, i64 460, !37, i64 464, !37, i64 476, !37, i64 488, !37, i64 500, !37, i64 512, !37, i64 524, !37, i64 536, !37, i64 548, !37, i64 560, !37, i64 576, !37, i64 592, !37, i64 604, !42, i64 616, !42, i64 620, !37, i64 624, !37, i64 688, !37, i64 752, !37, i64 816, !37, i64 880, !40, i64 944, !41, i64 948, !41, i64 950, !41, i64 952, !41, i64 954, !41, i64 956, !41, i64 958, !41, i64 960, !41, i64 962, !41, i64 964, !37, i64 966, !37, i64 967, !40, i64 968, !40, i64 972, !40, i64 976, !40, i64 980, !40, i64 984, !42, i64 988, !42, i64 992, !42, i64 996, !42, i64 1000, !42, i64 1004, !42, i64 1008, !42, i64 1012, !42, i64 1016, !42, i64 1020, !42, i64 1024, !42, i64 1028, !42, i64 1032, !41, i64 1036, !41, i64 1038, !41, i64 1040, !37, i64 1042, !37, i64 1043, !41, i64 1044, !37, i64 1046, !37, i64 1047, !42, i64 1048, !42, i64 1052, !39, i64 1056, !39, i64 1072, !39, i64 1088, !39, i64 1104, !42, i64 1120, !41, i64 1124, !41, i64 1126, !37, i64 1128, !40, i64 1144, !40, i64 1148, !36, i64 1152, !37, i64 1160, !37, i64 1161, !41, i64 1162, !37, i64 1164, !39, i64 1176, !39, i64 1192, !39, i64 1208, !39, i64 1224, !36, i64 1240, !36, i64 1248, !36, i64 1256, !37, i64 1264, !37, i64 1265, !41, i64 1266, !42, i64 1268, !36, i64 1272, !36, i64 1280, !36, i64 1288, !36, i64 1296, !56, i64 1304, !56, i64 1312, !40, i64 1320, !40, i64 1324, !39, i64 1328, !39, i64 1344, !36, i64 1360, !36, i64 1368, !36, i64 1376, !37, i64 1384, !36, i64 1392, !39, i64 1400, !36, i64 1416}
!54 = !{!"ID", !36, i64 0, !36, i64 8, !36, i64 16, !36, i64 24, !37, i64 32, !41, i64 98, !40, i64 100, !40, i64 104, !40, i64 108, !36, i64 112}
!55 = !{!"bAnimVizSettings", !40, i64 0, !40, i64 4, !40, i64 8, !40, i64 12, !41, i64 16, !41, i64 18, !41, i64 20, !41, i64 22, !41, i64 24, !41, i64 26, !41, i64 28, !41, i64 30, !40, i64 32, !40, i64 36, !40, i64 40, !40, i64 44}
!56 = !{!"long", !37, i64 0}
!57 = !{!35, !36, i64 16}
!58 = distinct !{!58, !48, !49}
!59 = !{!37, !37, i64 0}
!60 = !{!35, !42, i64 284}
!61 = distinct !{!61, !48, !49}
!62 = !{!63, !36, i64 120}
!63 = !{!"DynamicPaintModifierData", !64, i64 0, !36, i64 112, !36, i64 120, !40, i64 128, !40, i64 132}
!64 = !{!"ModifierData", !36, i64 0, !36, i64 8, !40, i64 16, !40, i64 20, !40, i64 24, !40, i64 28, !37, i64 32, !36, i64 96, !36, i64 104}
!65 = !{!66, !36, i64 8}
!66 = !{!"DynamicPaintBrushSettings", !36, i64 0, !36, i64 8, !36, i64 16, !36, i64 24, !40, i64 32, !40, i64 36, !42, i64 40, !42, i64 44, !42, i64 48, !42, i64 52, !42, i64 56, !42, i64 60, !42, i64 64, !42, i64 68, !36, i64 72, !36, i64 80, !41, i64 88, !41, i64 90, !41, i64 92, !41, i64 94, !42, i64 96, !42, i64 100, !42, i64 104, !42, i64 108}
!67 = !{!68, !36, i64 1680}
!68 = !{!"DerivedMesh", !69, i64 0, !69, i64 200, !69, i64 400, !69, i64 600, !69, i64 800, !40, i64 1000, !40, i64 1004, !40, i64 1008, !40, i64 1012, !40, i64 1016, !40, i64 1020, !40, i64 1024, !36, i64 1032, !36, i64 1040, !40, i64 1048, !42, i64 1052, !40, i64 1056, !40, i64 1060, !36, i64 1064, !37, i64 1072, !36, i64 1080, !36, i64 1088, !36, i64 1096, !36, i64 1104, !36, i64 1112, !36, i64 1120, !36, i64 1128, !36, i64 1136, !36, i64 1144, !36, i64 1152, !36, i64 1160, !36, i64 1168, !36, i64 1176, !36, i64 1184, !36, i64 1192, !36, i64 1200, !36, i64 1208, !36, i64 1216, !36, i64 1224, !36, i64 1232, !36, i64 1240, !36, i64 1248, !36, i64 1256, !36, i64 1264, !36, i64 1272, !36, i64 1280, !36, i64 1288, !36, i64 1296, !36, i64 1304, !36, i64 1312, !36, i64 1320, !36, i64 1328, !36, i64 1336, !36, i64 1344, !36, i64 1352, !36, i64 1360, !36, i64 1368, !36, i64 1376, !36, i64 1384, !36, i64 1392, !36, i64 1400, !36, i64 1408, !36, i64 1416, !36, i64 1424, !36, i64 1432, !36, i64 1440, !36, i64 1448, !36, i64 1456, !36, i64 1464, !36, i64 1472, !36, i64 1480, !36, i64 1488, !36, i64 1496, !36, i64 1504, !36, i64 1512, !36, i64 1520, !36, i64 1528, !36, i64 1536, !36, i64 1544, !36, i64 1552, !36, i64 1560, !36, i64 1568, !36, i64 1576, !36, i64 1584, !36, i64 1592, !36, i64 1600, !36, i64 1608, !36, i64 1616, !36, i64 1624, !36, i64 1632, !36, i64 1640, !36, i64 1648, !36, i64 1656, !36, i64 1664, !36, i64 1672, !36, i64 1680}
!69 = !{!"CustomData", !36, i64 0, !37, i64 8, !40, i64 172, !40, i64 176, !40, i64 180, !36, i64 184, !36, i64 192}
!70 = !{!66, !36, i64 72}
!71 = !{!66, !36, i64 80}
!72 = !{!35, !36, i64 24}
!73 = !{!74, !36, i64 0}
!74 = !{!"PaintSurfaceData", !36, i64 0, !36, i64 8, !36, i64 16, !36, i64 24, !40, i64 32}
!75 = !{!76, !36, i64 0}
!76 = !{!"ImgSeqFormatData", !36, i64 0, !36, i64 8}
!77 = !{!76, !36, i64 8}
!78 = !{!74, !36, i64 8}
!79 = !{!74, !36, i64 16}
!80 = !{!81, !36, i64 8}
!81 = !{!"PaintAdjData", !36, i64 0, !36, i64 8, !36, i64 16, !36, i64 24, !40, i64 32}
!82 = !{!81, !36, i64 16}
!83 = !{!81, !36, i64 0}
!84 = !{!81, !36, i64 24}
!85 = !{!74, !36, i64 24}
!86 = !{!87, !36, i64 0}
!87 = !{!"PaintBakeData", !36, i64 0, !36, i64 8, !36, i64 16, !36, i64 24, !88, i64 32, !36, i64 64, !89, i64 72, !36, i64 80, !36, i64 88, !36, i64 96, !36, i64 104, !36, i64 112, !37, i64 120, !40, i64 184}
!88 = !{!"Bounds3D", !40, i64 0, !37, i64 4, !37, i64 16}
!89 = !{!"double", !37, i64 0}
!90 = !{!87, !36, i64 8}
!91 = !{!87, !36, i64 16}
!92 = !{!87, !36, i64 24}
!93 = !{!87, !36, i64 64}
!94 = !{!87, !36, i64 80}
!95 = !{!96, !36, i64 40}
!96 = !{!"VolumeGrid", !37, i64 0, !88, i64 12, !36, i64 40, !36, i64 48, !36, i64 56, !36, i64 64}
!97 = !{!96, !36, i64 48}
!98 = !{!96, !36, i64 56}
!99 = !{!96, !36, i64 64}
!100 = !{!87, !36, i64 112}
!101 = !{!87, !36, i64 88}
!102 = !{!87, !36, i64 96}
!103 = !{!35, !36, i64 48}
!104 = !{!35, !36, i64 40}
!105 = !{!63, !36, i64 112}
!106 = !{!46, !36, i64 16}
!107 = !{!35, !36, i64 0}
!108 = distinct !{!108, !48, !49}
!109 = !{!46, !36, i64 8}
!110 = !{!111, !40, i64 16}
!111 = !{!"PointCache", !36, i64 0, !36, i64 8, !40, i64 16, !40, i64 20, !40, i64 24, !40, i64 28, !40, i64 32, !40, i64 36, !40, i64 40, !40, i64 44, !40, i64 48, !40, i64 52, !40, i64 56, !41, i64 60, !41, i64 62, !37, i64 64, !37, i64 128, !37, i64 192, !37, i64 256, !36, i64 1280, !39, i64 1288, !36, i64 1304, !36, i64 1312}
!112 = !{!111, !40, i64 20}
!113 = !{!35, !40, i64 160}
!114 = !{!35, !41, i64 148}
!115 = !{!35, !40, i64 276}
!116 = !{!35, !40, i64 272}
!117 = !{!35, !42, i64 280}
!118 = !{!35, !42, i64 288}
!119 = !{!35, !41, i64 144}
!120 = !{!35, !41, i64 146}
!121 = !{!35, !42, i64 312}
!122 = !{!35, !42, i64 316}
!123 = !{!42, !42, i64 0}
!124 = !{!35, !40, i64 164}
!125 = !{!35, !40, i64 168}
!126 = !{!127, !40, i64 684}
!127 = !{!"Scene", !54, i64 0, !36, i64 120, !36, i64 128, !36, i64 136, !36, i64 144, !39, i64 152, !36, i64 168, !36, i64 176, !37, i64 184, !37, i64 196, !37, i64 208, !37, i64 220, !40, i64 232, !40, i64 236, !40, i64 240, !41, i64 244, !37, i64 246, !37, i64 247, !36, i64 248, !36, i64 256, !36, i64 264, !36, i64 272, !128, i64 280, !137, i64 4264, !39, i64 4296, !39, i64 4312, !36, i64 4328, !36, i64 4336, !36, i64 4344, !36, i64 4352, !36, i64 4360, !36, i64 4368, !41, i64 4376, !41, i64 4378, !40, i64 4380, !39, i64 4384, !138, i64 4400, !139, i64 4416, !142, i64 4600, !36, i64 4608, !143, i64 4616, !36, i64 4640, !56, i64 4648, !56, i64 4656, !130, i64 4664, !131, i64 4824, !144, i64 4888, !36, i64 4952}
!128 = !{!"RenderData", !129, i64 0, !36, i64 248, !36, i64 256, !132, i64 264, !133, i64 328, !40, i64 400, !40, i64 404, !40, i64 408, !42, i64 412, !40, i64 416, !40, i64 420, !40, i64 424, !40, i64 428, !41, i64 432, !41, i64 434, !42, i64 436, !42, i64 440, !42, i64 444, !42, i64 448, !42, i64 452, !41, i64 456, !41, i64 458, !41, i64 460, !41, i64 462, !41, i64 464, !41, i64 466, !40, i64 468, !41, i64 472, !41, i64 474, !41, i64 476, !41, i64 478, !41, i64 480, !41, i64 482, !40, i64 484, !40, i64 488, !41, i64 492, !41, i64 494, !40, i64 496, !40, i64 500, !41, i64 504, !41, i64 506, !41, i64 508, !41, i64 510, !41, i64 512, !37, i64 514, !37, i64 515, !40, i64 516, !40, i64 520, !40, i64 524, !41, i64 528, !41, i64 530, !41, i64 532, !41, i64 534, !41, i64 536, !41, i64 538, !41, i64 540, !41, i64 542, !134, i64 544, !134, i64 560, !135, i64 576, !39, i64 592, !41, i64 608, !41, i64 610, !42, i64 612, !42, i64 616, !42, i64 620, !42, i64 624, !40, i64 628, !42, i64 632, !42, i64 636, !42, i64 640, !42, i64 644, !41, i64 648, !41, i64 650, !41, i64 652, !41, i64 654, !41, i64 656, !41, i64 658, !42, i64 660, !42, i64 664, !41, i64 668, !41, i64 670, !42, i64 672, !42, i64 676, !37, i64 680, !40, i64 1704, !41, i64 1708, !41, i64 1710, !37, i64 1712, !37, i64 2480, !37, i64 2496, !37, i64 2512, !37, i64 2513, !37, i64 2514, !37, i64 2515, !40, i64 2520, !41, i64 2524, !41, i64 2526, !42, i64 2528, !42, i64 2532, !41, i64 2536, !41, i64 2538, !42, i64 2540, !41, i64 2544, !41, i64 2546, !40, i64 2548, !41, i64 2552, !41, i64 2554, !41, i64 2556, !41, i64 2558, !42, i64 2560, !42, i64 2564, !36, i64 2568, !40, i64 2576, !42, i64 2580, !37, i64 2584, !136, i64 2616, !40, i64 3976, !40, i64 3980}
!129 = !{!"ImageFormatData", !37, i64 0, !37, i64 1, !37, i64 2, !37, i64 3, !37, i64 4, !37, i64 5, !37, i64 6, !37, i64 7, !41, i64 8, !41, i64 10, !42, i64 12, !37, i64 16, !37, i64 17, !37, i64 18, !130, i64 24, !131, i64 184}
!130 = !{!"ColorManagedViewSettings", !40, i64 0, !40, i64 4, !37, i64 8, !37, i64 72, !42, i64 136, !42, i64 140, !36, i64 144, !36, i64 152}
!131 = !{!"ColorManagedDisplaySettings", !37, i64 0}
!132 = !{!"QuicktimeCodecSettings", !40, i64 0, !40, i64 4, !40, i64 8, !40, i64 12, !40, i64 16, !40, i64 20, !40, i64 24, !40, i64 28, !40, i64 32, !40, i64 36, !40, i64 40, !40, i64 44, !41, i64 48, !41, i64 50, !40, i64 52, !40, i64 56, !40, i64 60}
!133 = !{!"FFMpegCodecData", !40, i64 0, !40, i64 4, !40, i64 8, !40, i64 12, !40, i64 16, !40, i64 20, !40, i64 24, !40, i64 28, !42, i64 32, !40, i64 36, !40, i64 40, !40, i64 44, !40, i64 48, !40, i64 52, !40, i64 56, !40, i64 60, !36, i64 64}
!134 = !{!"rctf", !42, i64 0, !42, i64 4, !42, i64 8, !42, i64 12}
!135 = !{!"rcti", !40, i64 0, !40, i64 4, !40, i64 8, !40, i64 12}
!136 = !{!"BakeData", !129, i64 0, !37, i64 248, !41, i64 1272, !41, i64 1274, !41, i64 1276, !41, i64 1278, !42, i64 1280, !42, i64 1284, !37, i64 1288, !37, i64 1291, !37, i64 1292, !37, i64 1293, !37, i64 1296}
!137 = !{!"AudioData", !40, i64 0, !42, i64 4, !42, i64 8, !42, i64 12, !40, i64 16, !41, i64 20, !41, i64 22, !42, i64 24, !42, i64 28}
!138 = !{!"GameFraming", !37, i64 0, !37, i64 12, !37, i64 13, !37, i64 14, !37, i64 15}
!139 = !{!"GameData", !138, i64 0, !41, i64 16, !41, i64 18, !41, i64 20, !41, i64 22, !41, i64 24, !41, i64 26, !41, i64 28, !41, i64 30, !41, i64 32, !37, i64 34, !140, i64 40, !41, i64 64, !41, i64 66, !42, i64 68, !141, i64 72, !42, i64 128, !42, i64 132, !40, i64 136, !41, i64 140, !41, i64 142, !41, i64 144, !41, i64 146, !41, i64 148, !41, i64 150, !41, i64 152, !41, i64 154, !41, i64 156, !41, i64 158, !41, i64 160, !41, i64 162, !42, i64 164, !42, i64 168, !42, i64 172, !42, i64 176, !42, i64 180}
!140 = !{!"GameDome", !41, i64 0, !41, i64 2, !41, i64 4, !41, i64 6, !42, i64 8, !42, i64 12, !36, i64 16}
!141 = !{!"RecastData", !42, i64 0, !42, i64 4, !42, i64 8, !42, i64 12, !42, i64 16, !42, i64 20, !42, i64 24, !42, i64 28, !42, i64 32, !42, i64 36, !40, i64 40, !42, i64 44, !42, i64 48, !41, i64 52, !41, i64 54}
!142 = !{!"UnitSettings", !42, i64 0, !37, i64 4, !37, i64 5, !41, i64 6}
!143 = !{!"PhysicsSettings", !37, i64 0, !40, i64 12, !40, i64 16, !40, i64 20}
!144 = !{!"ColorManagedColorspaceSettings", !37, i64 0}
!145 = !{!35, !40, i64 172}
!146 = !{!127, !40, i64 688}
!147 = !{!35, !40, i64 176}
!148 = !{!35, !42, i64 292}
!149 = !{!35, !42, i64 296}
!150 = !{!35, !42, i64 300}
!151 = !{!35, !42, i64 320}
!152 = !{!35, !42, i64 324}
!153 = !{!35, !42, i64 328}
!154 = !{!35, !42, i64 332}
!155 = !{!35, !42, i64 336}
!156 = !{!46, !36, i64 0}
!157 = !{!66, !36, i64 0}
!158 = !{!66, !36, i64 16}
!159 = !{!66, !40, i64 32}
!160 = !{!66, !40, i64 36}
!161 = !{!66, !36, i64 24}
!162 = !{!66, !42, i64 40}
!163 = !{!66, !42, i64 44}
!164 = !{!66, !42, i64 48}
!165 = !{!66, !42, i64 52}
!166 = !{!66, !42, i64 56}
!167 = !{!66, !42, i64 68}
!168 = !{!66, !41, i64 88}
!169 = !{!66, !42, i64 60}
!170 = !{!66, !42, i64 64}
!171 = !{!66, !41, i64 90}
!172 = !{!66, !42, i64 96}
!173 = !{!66, !42, i64 100}
!174 = !{!66, !42, i64 108}
!175 = !{!66, !42, i64 104}
!176 = !{!177, !42, i64 12}
!177 = !{!"CBData", !42, i64 0, !42, i64 4, !42, i64 8, !42, i64 12, !42, i64 16, !40, i64 20}
!178 = !{!177, !42, i64 8}
!179 = !{!177, !42, i64 4}
!180 = !{!177, !42, i64 0}
!181 = !{!177, !42, i64 16}
!182 = !{!183, !41, i64 0}
!183 = !{!"ColorBand", !41, i64 0, !41, i64 2, !37, i64 4, !37, i64 5, !37, i64 6, !37, i64 7, !37, i64 8}
!184 = !{!63, !40, i64 128}
!185 = !{i8 0, i8 2}
!186 = !{!35, !36, i64 32}
!187 = !{!35, !41, i64 150}
!188 = !{!35, !41, i64 152}
!189 = !{!35, !36, i64 200}
!190 = !{!35, !42, i64 304}
!191 = !{!35, !42, i64 308}
!192 = distinct !{!192, !48, !49}
!193 = !{!66, !41, i64 92}
!194 = !{!74, !40, i64 32}
!195 = !{!87, !40, i64 184}
!196 = !{!197, !42, i64 36}
!197 = !{!"PaintPoint", !37, i64 0, !42, i64 12, !42, i64 16, !41, i64 20, !37, i64 24, !42, i64 36}
!198 = distinct !{!198, !48, !49}
!199 = !{!68, !36, i64 1184}
!200 = !{!68, !36, i64 1120}
!201 = !{!202, !40, i64 12}
!202 = !{!"MFace", !40, i64 0, !40, i64 4, !40, i64 8, !40, i64 12, !41, i64 16, !37, i64 18, !37, i64 19}
!203 = !{!204, !42, i64 0}
!204 = !{!"TexResult", !42, i64 0, !42, i64 4, !42, i64 8, !42, i64 12, !42, i64 16, !40, i64 20, !36, i64 24}
!205 = !{!40, !40, i64 0}
!206 = distinct !{!206, !48, !49}
!207 = distinct !{!207, !48, !49}
!208 = !{!209, !41, i64 24}
!209 = !{!"PaintUVPoint", !40, i64 0, !40, i64 4, !40, i64 8, !40, i64 12, !40, i64 16, !40, i64 20, !41, i64 24}
!210 = !{!209, !40, i64 0}
!211 = distinct !{!211, !48, !49}
!212 = distinct !{!212, !48, !49}
!213 = !{!68, !36, i64 1192}
!214 = !{!68, !36, i64 1128}
!215 = !{!216, !37, i64 3}
!216 = !{!"MCol", !37, i64 0, !37, i64 1, !37, i64 2, !37, i64 3}
!217 = !{!218, !40, i64 0}
!218 = !{!"MLoop", !40, i64 0, !40, i64 4}
!219 = !{!216, !37, i64 2}
!220 = !{!216, !37, i64 1}
!221 = !{!216, !37, i64 0}
!222 = distinct !{!222, !48, !49}
!223 = distinct !{!223, !48, !49}
!224 = distinct !{!224, !48, !49}
!225 = !{!68, !36, i64 1104}
!226 = !{!68, !36, i64 1112}
!227 = !{!81, !40, i64 32}
!228 = !{!68, !36, i64 1136}
!229 = !{!68, !36, i64 1176}
!230 = !{!68, !36, i64 1200}
!231 = !{!232, !40, i64 0}
!232 = !{!"MEdge", !40, i64 0, !40, i64 4, !37, i64 8, !37, i64 9, !41, i64 10}
!233 = !{!232, !40, i64 4}
!234 = distinct !{!234, !48, !49}
!235 = !{!236, !40, i64 4}
!236 = !{!"MPoly", !40, i64 0, !40, i64 4, !41, i64 8, !37, i64 10, !37, i64 11}
!237 = !{!236, !40, i64 0}
!238 = distinct !{!238, !48, !49}
!239 = distinct !{!239, !48, !49}
!240 = distinct !{!240, !48, !49}
!241 = distinct !{!241, !48, !49}
!242 = distinct !{!242, !48, !49}
!243 = !{!111, !40, i64 28}
!244 = !{!111, !40, i64 32}
!245 = !{!46, !41, i64 34}
!246 = !{!127, !40, i64 680}
!247 = !{!35, !40, i64 72}
!248 = !{!249, !36, i64 176}
!249 = !{!"PTCacheID", !36, i64 0, !36, i64 8, !36, i64 16, !36, i64 24, !36, i64 32, !40, i64 40, !40, i64 44, !40, i64 48, !40, i64 52, !40, i64 56, !40, i64 60, !40, i64 64, !36, i64 72, !36, i64 80, !36, i64 88, !36, i64 96, !36, i64 104, !36, i64 112, !36, i64 120, !36, i64 128, !36, i64 136, !36, i64 144, !36, i64 152, !36, i64 160, !36, i64 168, !36, i64 176, !36, i64 184, !36, i64 192}
!250 = distinct !{!250, !48, !49}
!251 = !{!68, !40, i64 1012}
!252 = !{!197, !42, i64 12}
!253 = distinct !{!253, !48, !49}
!254 = distinct !{!254, !48, !49}
!255 = !{!68, !40, i64 1016}
!256 = !{!236, !41, i64 8}
!257 = !{!258, !37, i64 3}
!258 = !{!"MLoopCol", !37, i64 0, !37, i64 1, !37, i64 2, !37, i64 3}
!259 = !{!260, !42, i64 132}
!260 = !{!"Material", !54, i64 0, !36, i64 120, !41, i64 128, !41, i64 130, !42, i64 132, !42, i64 136, !42, i64 140, !42, i64 144, !42, i64 148, !42, i64 152, !42, i64 156, !42, i64 160, !42, i64 164, !42, i64 168, !42, i64 172, !42, i64 176, !42, i64 180, !42, i64 184, !42, i64 188, !42, i64 192, !42, i64 196, !42, i64 200, !42, i64 204, !42, i64 208, !42, i64 212, !42, i64 216, !42, i64 220, !261, i64 224, !262, i64 312, !42, i64 328, !42, i64 332, !42, i64 336, !42, i64 340, !42, i64 344, !42, i64 348, !42, i64 352, !41, i64 356, !41, i64 358, !41, i64 360, !37, i64 362, !37, i64 363, !42, i64 364, !42, i64 368, !41, i64 372, !41, i64 374, !42, i64 376, !42, i64 380, !42, i64 384, !42, i64 388, !41, i64 392, !41, i64 394, !40, i64 396, !40, i64 400, !40, i64 404, !40, i64 408, !41, i64 412, !41, i64 414, !41, i64 416, !41, i64 418, !42, i64 420, !42, i64 424, !42, i64 428, !42, i64 432, !42, i64 436, !42, i64 440, !42, i64 444, !42, i64 448, !42, i64 452, !42, i64 456, !37, i64 460, !42, i64 524, !42, i64 528, !42, i64 532, !40, i64 536, !37, i64 540, !37, i64 541, !37, i64 542, !37, i64 543, !41, i64 544, !41, i64 546, !41, i64 548, !37, i64 550, !37, i64 551, !41, i64 552, !41, i64 554, !42, i64 556, !42, i64 560, !37, i64 564, !42, i64 580, !42, i64 584, !41, i64 588, !41, i64 590, !36, i64 592, !36, i64 600, !37, i64 608, !37, i64 609, !37, i64 610, !37, i64 611, !41, i64 612, !41, i64 614, !42, i64 616, !42, i64 620, !37, i64 624, !36, i64 768, !36, i64 776, !36, i64 784, !36, i64 792, !42, i64 800, !42, i64 804, !42, i64 808, !42, i64 812, !42, i64 816, !41, i64 820, !41, i64 822, !37, i64 824, !37, i64 836, !42, i64 848, !42, i64 852, !42, i64 856, !42, i64 860, !42, i64 864, !42, i64 868, !42, i64 872, !41, i64 876, !41, i64 878, !40, i64 880, !41, i64 884, !41, i64 886, !37, i64 888, !41, i64 904, !41, i64 906, !41, i64 908, !41, i64 910, !41, i64 912, !37, i64 914, !36, i64 920, !39, i64 928}
!261 = !{!"VolumeSettings", !42, i64 0, !42, i64 4, !42, i64 8, !42, i64 12, !37, i64 16, !37, i64 28, !37, i64 40, !42, i64 52, !42, i64 56, !42, i64 60, !41, i64 64, !41, i64 66, !41, i64 68, !41, i64 70, !42, i64 72, !42, i64 76, !42, i64 80, !42, i64 84}
!262 = !{!"GameSettings", !40, i64 0, !40, i64 4, !40, i64 8, !40, i64 12}
!263 = !{!260, !42, i64 136}
!264 = !{!260, !42, i64 140}
!265 = !{!197, !42, i64 16}
!266 = !{!258, !37, i64 2}
!267 = !{!258, !37, i64 1}
!268 = !{!258, !37, i64 0}
!269 = distinct !{!269, !48, !49}
!270 = distinct !{!270, !48, !49}
!271 = distinct !{!271, !48, !49}
!272 = distinct !{!272, !48, !49}
!273 = !{!68, !40, i64 1056}
!274 = !{!68, !36, i64 1320}
!275 = !{!276, !42, i64 4}
!276 = !{!"MDeformWeight", !40, i64 0, !42, i64 4}
!277 = distinct !{!277, !48, !49}
!278 = !{!68, !36, i64 1168}
!279 = !{!41, !41, i64 0}
!280 = !{!281, !42, i64 0}
!281 = !{!"PaintWavePoint", !42, i64 0, !42, i64 4, !42, i64 8, !41, i64 12}
!282 = distinct !{!282, !48, !49}
!283 = distinct !{!283, !48, !49}
!284 = distinct !{!284, !48, !49}
!285 = distinct !{!285, !48, !49}
!286 = !{!209, !40, i64 20}
!287 = !{!209, !40, i64 4}
!288 = distinct !{!288, !48, !49}
!289 = !{!202, !40, i64 0}
!290 = !{!209, !40, i64 8}
!291 = !{!209, !40, i64 12}
!292 = !{!209, !40, i64 16}
!293 = distinct !{!293, !48, !49}
!294 = distinct !{!294, !48, !49}
!295 = distinct !{!295, !48, !49}
!296 = distinct !{!296, !48, !49}
!297 = distinct !{!297, !48, !49}
!298 = distinct !{!298, !48, !49}
!299 = distinct !{!299, !48, !49}
!300 = distinct !{!300, !48, !49}
!301 = distinct !{!301, !48, !49}
!302 = distinct !{!302, !48, !49}
!303 = distinct !{!303, !48, !49}
!304 = distinct !{!304, !48, !49}
!305 = !{!202, !40, i64 4}
!306 = !{!202, !40, i64 8}
!307 = distinct !{!307, !48, !49}
!308 = distinct !{!308, !48, !49}
!309 = distinct !{!309, !48, !49}
!310 = distinct !{!310, !48, !49}
!311 = distinct !{!311, !48, !49}
!312 = !{!313, !36, i64 0}
!313 = !{!"Global", !36, i64 0, !37, i64 8, !37, i64 1032, !37, i64 2056, !37, i64 2057, !37, i64 2058, !39, i64 2064, !37, i64 2080, !37, i64 2081, !37, i64 2082, !41, i64 2084, !41, i64 2086, !41, i64 2088, !37, i64 2090, !41, i64 2092, !40, i64 2096, !40, i64 2100, !37, i64 2104, !40, i64 2108, !40, i64 2112, !37, i64 2116}
!314 = !{!315, !36, i64 48}
!315 = !{!"ImBuf", !36, i64 0, !36, i64 8, !40, i64 16, !40, i64 20, !37, i64 24, !40, i64 28, !40, i64 32, !40, i64 36, !36, i64 40, !36, i64 48, !37, i64 56, !40, i64 72, !40, i64 76, !40, i64 80, !40, i64 84, !36, i64 88, !36, i64 96, !36, i64 104, !42, i64 112, !37, i64 120, !40, i64 280, !40, i64 284, !40, i64 288, !40, i64 292, !36, i64 296, !36, i64 304, !40, i64 312, !37, i64 316, !37, i64 1340, !36, i64 2368, !40, i64 2376, !36, i64 2384, !40, i64 2392, !40, i64 2396, !36, i64 2400, !36, i64 2408, !36, i64 2416, !36, i64 2424, !40, i64 2432, !135, i64 2436, !316, i64 2456}
!316 = !{!"DDSData", !40, i64 0, !40, i64 4, !36, i64 8, !40, i64 16}
!317 = distinct !{!317, !48, !49}
!318 = !{!315, !40, i64 312}
!319 = !{!320, !36, i64 120}
!320 = !{!"Group", !54, i64 0, !39, i64 120, !40, i64 136, !37, i64 140}
!321 = !{!127, !36, i64 152}
!322 = !{!323, !36, i64 0}
!323 = !{!"GroupObject", !36, i64 0, !36, i64 8, !36, i64 16, !36, i64 24, !41, i64 32, !37, i64 34}
!324 = !{!325, !36, i64 0}
!325 = !{!"Base", !36, i64 0, !36, i64 8, !40, i64 16, !40, i64 20, !40, i64 24, !41, i64 28, !41, i64 30, !36, i64 32}
!326 = distinct !{!326, !48, !49}
!327 = !{!64, !40, i64 20}
!328 = distinct !{!328, !48, !49}
!329 = distinct !{!329, !48, !49}
!330 = distinct !{!330, !48, !49}
!331 = distinct !{!331, !48, !49}
!332 = !{!87, !40, i64 32}
!333 = !{!88, !40, i64 0}
!334 = distinct !{!334, !48, !49}
!335 = distinct !{!335, !48, !49}
!336 = distinct !{!336, !48, !49}
!337 = distinct !{!337, !48, !49}
!338 = !{!339, !42, i64 12}
!339 = !{!"PaintBakeNormal", !37, i64 0, !42, i64 12}
!340 = distinct !{!340, !48, !49}
!341 = distinct !{!341, !48, !49}
!342 = distinct !{!342, !48, !49}
!343 = distinct !{!343, !48, !49}
!344 = distinct !{!344, !48, !49}
!345 = distinct !{!345, !48, !49}
!346 = distinct !{!346, !48, !49}
!347 = distinct !{!347, !48, !49}
!348 = distinct !{!348, !48, !49}
!349 = distinct !{!349, !48, !49}
!350 = distinct !{!350, !48, !49}
!351 = distinct !{!351, !48, !49}
!352 = distinct !{!352, !48, !49}
!353 = distinct !{!353, !48, !49}
!354 = distinct !{!354, !48, !49}
!355 = !{!197, !41, i64 20}
!356 = distinct !{!356, !48, !49}
!357 = !{!127, !42, i64 692}
!358 = distinct !{!358, !48, !49}
!359 = !{!87, !36, i64 104}
!360 = !{i32 0, i32 2}
!361 = !{!53, !36, i64 440}
!362 = !{!53, !40, i64 456}
!363 = distinct !{!363, !48, !49}
!364 = !{!365, !36, i64 16}
!365 = !{!"ParticleSystem", !36, i64 0, !36, i64 8, !36, i64 16, !36, i64 24, !36, i64 32, !36, i64 40, !36, i64 48, !36, i64 56, !36, i64 64, !39, i64 72, !39, i64 88, !36, i64 104, !36, i64 112, !36, i64 120, !36, i64 128, !36, i64 136, !36, i64 144, !39, i64 152, !37, i64 168, !37, i64 232, !42, i64 296, !42, i64 300, !42, i64 304, !40, i64 308, !40, i64 312, !40, i64 316, !40, i64 320, !40, i64 324, !40, i64 328, !40, i64 332, !40, i64 336, !41, i64 340, !41, i64 342, !41, i64 344, !41, i64 346, !37, i64 348, !37, i64 540, !41, i64 564, !41, i64 566, !36, i64 568, !36, i64 576, !39, i64 584, !36, i64 600, !36, i64 608, !40, i64 616, !40, i64 620, !36, i64 624, !36, i64 632, !36, i64 640, !42, i64 648, !42, i64 652}
!366 = !{!367, !41, i64 160}
!367 = !{!"ParticleSettings", !54, i64 0, !36, i64 120, !36, i64 128, !36, i64 136, !36, i64 144, !40, i64 152, !40, i64 156, !41, i64 160, !41, i64 162, !41, i64 164, !41, i64 166, !41, i64 168, !41, i64 170, !41, i64 172, !41, i64 174, !40, i64 176, !40, i64 180, !41, i64 184, !41, i64 186, !41, i64 188, !41, i64 190, !41, i64 192, !41, i64 194, !41, i64 196, !41, i64 198, !41, i64 200, !41, i64 202, !41, i64 204, !41, i64 206, !41, i64 208, !41, i64 210, !41, i64 212, !41, i64 214, !41, i64 216, !41, i64 218, !41, i64 220, !41, i64 222, !41, i64 224, !41, i64 226, !41, i64 228, !41, i64 230, !42, i64 232, !42, i64 236, !37, i64 240, !37, i64 248, !42, i64 256, !42, i64 260, !42, i64 264, !41, i64 268, !41, i64 270, !42, i64 272, !42, i64 276, !42, i64 280, !42, i64 284, !42, i64 288, !42, i64 292, !42, i64 296, !42, i64 300, !42, i64 304, !42, i64 308, !42, i64 312, !42, i64 316, !37, i64 320, !40, i64 324, !40, i64 328, !40, i64 332, !40, i64 336, !41, i64 340, !37, i64 342, !42, i64 348, !42, i64 352, !42, i64 356, !42, i64 360, !42, i64 364, !42, i64 368, !42, i64 372, !37, i64 376, !42, i64 388, !42, i64 392, !42, i64 396, !42, i64 400, !42, i64 404, !42, i64 408, !42, i64 412, !37, i64 416, !42, i64 428, !42, i64 432, !42, i64 436, !42, i64 440, !40, i64 444, !40, i64 448, !42, i64 452, !42, i64 456, !42, i64 460, !42, i64 464, !42, i64 468, !42, i64 472, !42, i64 476, !42, i64 480, !42, i64 484, !42, i64 488, !42, i64 492, !42, i64 496, !42, i64 500, !42, i64 504, !42, i64 508, !42, i64 512, !42, i64 516, !42, i64 520, !42, i64 524, !42, i64 528, !42, i64 532, !42, i64 536, !42, i64 540, !42, i64 544, !42, i64 548, !37, i64 552, !42, i64 560, !42, i64 564, !40, i64 568, !40, i64 572, !37, i64 576, !36, i64 720, !39, i64 728, !36, i64 744, !36, i64 752, !36, i64 760, !36, i64 768, !36, i64 776, !36, i64 784, !41, i64 792, !37, i64 794}
!368 = !{!367, !36, i64 120}
!369 = !{!367, !42, i64 300}
!370 = !{!365, !40, i64 320}
!371 = !{!365, !36, i64 24}
!372 = !{!373, !41, i64 198}
!373 = !{!"ParticleData", !374, i64 0, !374, i64 56, !36, i64 112, !36, i64 120, !36, i64 128, !40, i64 136, !42, i64 140, !42, i64 144, !42, i64 148, !40, i64 152, !40, i64 156, !37, i64 160, !42, i64 176, !42, i64 180, !42, i64 184, !40, i64 188, !40, i64 192, !41, i64 196, !41, i64 198}
!374 = !{!"ParticleKey", !37, i64 0, !37, i64 12, !37, i64 24, !37, i64 40, !42, i64 52}
!375 = !{!367, !40, i64 152}
!376 = !{!373, !41, i64 196}
!377 = distinct !{!377, !48, !49}
!378 = distinct !{!378, !48, !49}
!379 = distinct !{!379, !48, !49}
!380 = !{!381, !42, i64 4}
!381 = !{!"KDTreeNearest", !40, i64 0, !42, i64 4, !37, i64 8}
!382 = !{!381, !40, i64 0}
!383 = !{!373, !42, i64 180}
!384 = !{!367, !42, i64 412}
!385 = distinct !{!385, !48, !49}
!386 = distinct !{!386, !48, !49}
!387 = distinct !{!387, !48, !49}
!388 = !{!202, !41, i64 16}
!389 = distinct !{!389, !48, !49}
!390 = distinct !{!390, !48, !49}
!391 = distinct !{!391, !48, !49}
!392 = distinct !{!392, !48, !49}
!393 = !{!394, !40, i64 0}
!394 = !{!"BVHTreeRayHit", !40, i64 0, !37, i64 4, !37, i64 16, !42, i64 28, !40, i64 32}
!395 = !{!394, !42, i64 28}
!396 = !{!397, !40, i64 0}
!397 = !{!"BVHTreeNearest", !40, i64 0, !37, i64 4, !37, i64 16, !42, i64 28, !40, i64 32}
!398 = !{!397, !42, i64 28}
!399 = !{!400, !36, i64 0}
!400 = !{!"BVHTreeFromMesh", !36, i64 0, !36, i64 8, !36, i64 16, !36, i64 24, !36, i64 32, !36, i64 40, !37, i64 48, !37, i64 49, !37, i64 50, !42, i64 52, !36, i64 56, !37, i64 64}
!401 = distinct !{!401, !48, !49}
!402 = distinct !{!402, !48, !49}
!403 = distinct !{!403, !48, !49}
!404 = distinct !{!404, !48, !49}
!405 = distinct !{!405, !48, !49}
!406 = !{!87, !89, i64 72}
!407 = !{!408, !42, i64 12}
!408 = !{!"BakeAdjPoint", !37, i64 0, !42, i64 12}
!409 = distinct !{!409, !48, !49}
!410 = distinct !{!410, !48, !49}
!411 = distinct !{!411, !48, !49}
!412 = distinct !{!412, !48, !49}
!413 = distinct !{!413, !48, !49}
!414 = !{!281, !41, i64 12}
!415 = distinct !{!415, !48, !49}
!416 = !{!281, !42, i64 4}
!417 = distinct !{!417, !48, !49}
!418 = distinct !{!418, !48, !49}
!419 = !{!281, !42, i64 8}
!420 = distinct !{!420, !48, !49}
!421 = !{!422, !42, i64 36}
!422 = !{!"EffectedPoint", !36, i64 0, !36, i64 8, !36, i64 16, !36, i64 24, !42, i64 32, !42, i64 36, !42, i64 40, !42, i64 44, !40, i64 48, !40, i64 52, !36, i64 56}
!423 = !{!127, !40, i64 4628}
!424 = !{!425, !42, i64 64}
!425 = !{!"EffectorWeights", !36, i64 0, !37, i64 8, !42, i64 64, !41, i64 68, !37, i64 70, !40, i64 76}
!426 = distinct !{!426, !48, !49}
!427 = distinct !{!427, !48, !49}
!428 = distinct !{!428, !48, !49}
!429 = distinct !{!429, !48, !49}
!430 = distinct !{!430, !48, !49}
!431 = distinct !{!431, !48, !49}
!432 = distinct !{!432, !48, !49}
!433 = distinct !{!433, !48, !49}
!434 = distinct !{!434, !48, !49}
!435 = distinct !{!435, !48, !49}
!436 = distinct !{!436, !48, !49}
!437 = distinct !{!437, !48, !49}
!438 = distinct !{!438, !48, !49}
!439 = distinct !{!439, !48, !49}
!440 = !{!53, !36, i64 216}
!441 = !{!53, !36, i64 224}
!442 = !{!53, !41, i64 138}
!443 = !{!444, !36, i64 104}
!444 = !{!"bConstraintTypeInfo", !41, i64 0, !41, i64 2, !37, i64 4, !37, i64 36, !36, i64 72, !36, i64 80, !36, i64 88, !36, i64 96, !36, i64 104, !36, i64 112, !36, i64 120, !36, i64 128}
!445 = !{!446, !36, i64 16}
!446 = !{!"bConstraintTarget", !36, i64 0, !36, i64 8, !36, i64 16, !37, i64 24, !37, i64 88, !41, i64 152, !41, i64 154, !41, i64 156, !41, i64 158}
!447 = distinct !{!447, !48, !49}
!448 = !{!444, !36, i64 112}
!449 = distinct !{!449, !48, !49}
!450 = !{!53, !37, i64 1161}
!451 = !{!53, !36, i64 120}
!452 = distinct !{!452, !48, !49}
!453 = !{!454, !36, i64 1888}
!454 = !{!"Main", !36, i64 0, !36, i64 8, !37, i64 16, !41, i64 1040, !41, i64 1042, !41, i64 1044, !41, i64 1046, !56, i64 1048, !37, i64 1056, !41, i64 1072, !36, i64 1080, !39, i64 1088, !39, i64 1104, !39, i64 1120, !39, i64 1136, !39, i64 1152, !39, i64 1168, !39, i64 1184, !39, i64 1200, !39, i64 1216, !39, i64 1232, !39, i64 1248, !39, i64 1264, !39, i64 1280, !39, i64 1296, !39, i64 1312, !39, i64 1328, !39, i64 1344, !39, i64 1360, !39, i64 1376, !39, i64 1392, !39, i64 1408, !39, i64 1424, !39, i64 1440, !39, i64 1456, !39, i64 1472, !39, i64 1488, !39, i64 1504, !39, i64 1520, !39, i64 1536, !39, i64 1552, !39, i64 1568, !39, i64 1584, !39, i64 1600, !39, i64 1616, !37, i64 1632, !36, i64 1888, !36, i64 1896}
!455 = !{!53, !41, i64 136}
!456 = !{!457, !36, i64 120}
!457 = !{!"Curve", !54, i64 0, !36, i64 120, !36, i64 128, !39, i64 136, !36, i64 152, !36, i64 160, !36, i64 168, !36, i64 176, !36, i64 184, !36, i64 192, !36, i64 200, !37, i64 208, !37, i64 220, !37, i64 232, !41, i64 244, !41, i64 246, !41, i64 248, !41, i64 250, !42, i64 252, !42, i64 256, !40, i64 260, !41, i64 264, !41, i64 266, !40, i64 268, !42, i64 272, !42, i64 276, !42, i64 280, !41, i64 284, !41, i64 286, !41, i64 288, !41, i64 290, !40, i64 292, !40, i64 296, !37, i64 300, !41, i64 304, !37, i64 306, !37, i64 307, !42, i64 308, !42, i64 312, !42, i64 316, !42, i64 320, !42, i64 324, !42, i64 328, !42, i64 332, !42, i64 336, !42, i64 340, !42, i64 344, !40, i64 348, !40, i64 352, !40, i64 356, !40, i64 360, !40, i64 364, !36, i64 368, !36, i64 376, !37, i64 384, !36, i64 448, !36, i64 456, !36, i64 464, !36, i64 472, !36, i64 480, !40, i64 488, !40, i64 492, !36, i64 496, !458, i64 504, !42, i64 512, !42, i64 516, !42, i64 520, !37, i64 524, !37, i64 525, !37, i64 526}
!458 = !{!"CharInfo", !41, i64 0, !41, i64 2, !37, i64 4, !37, i64 5, !41, i64 6}
!459 = !{!460, !36, i64 120}
!460 = !{!"bArmature", !54, i64 0, !36, i64 120, !39, i64 128, !39, i64 144, !36, i64 160, !36, i64 168, !36, i64 176, !36, i64 184, !40, i64 192, !40, i64 196, !40, i64 200, !40, i64 204, !41, i64 208, !41, i64 210, !40, i64 212, !40, i64 216, !40, i64 220, !41, i64 224, !41, i64 226, !41, i64 228, !41, i64 230, !40, i64 232, !40, i64 236, !40, i64 240, !40, i64 244, !40, i64 248, !40, i64 252}
!461 = !{!400, !36, i64 24}
!462 = !{!400, !36, i64 40}
!463 = distinct !{!463, !48, !49}
!464 = distinct !{!464, !48, !49}
!465 = distinct !{!465, !48, !49}
!466 = distinct !{!466, !48, !49}
