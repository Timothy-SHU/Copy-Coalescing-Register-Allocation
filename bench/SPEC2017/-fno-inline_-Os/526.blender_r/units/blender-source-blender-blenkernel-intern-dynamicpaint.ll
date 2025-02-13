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
%struct.PaintBakeNormal = type { [3 x float], float }
%struct.BrushMaterials = type { ptr, ptr, i32 }
%struct.Group = type { %struct.ID, %struct.ListBase, i32, [3 x float] }
%struct.Base = type { ptr, ptr, i32, i32, i32, i16, i16, ptr }
%struct.GroupObject = type { ptr, ptr, ptr, ptr, i16, [6 x i8] }
%struct.ParticleSystem = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.ListBase, %struct.ListBase, ptr, ptr, ptr, ptr, ptr, ptr, %struct.ListBase, [64 x i8], [4 x [4 x float]], float, float, float, i32, i32, i32, i32, i32, i32, i32, i32, i16, i16, i16, i16, [3 x [64 x i8]], [12 x i16], i16, i16, ptr, ptr, %struct.ListBase, ptr, ptr, i32, i32, ptr, ptr, ptr, float, float }
%struct.ParticleSettings = type { %struct.ID, ptr, ptr, ptr, ptr, i32, i32, i16, i16, i16, i16, i16, i16, i16, i16, i32, i32, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, float, float, [2 x float], [2 x float], float, float, float, i16, i16, float, float, float, float, float, float, float, float, float, float, float, float, [1 x float], i32, i32, i32, i32, i16, [3 x i16], float, float, float, float, float, float, float, [3 x float], float, float, float, float, float, float, float, [3 x float], float, float, float, float, i32, i32, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, [2 x float], float, float, i32, i32, [18 x ptr], ptr, %struct.ListBase, ptr, ptr, ptr, ptr, ptr, ptr, i16, [3 x i16] }
%struct.VolumeGrid = type { [3 x i32], %struct.Bounds3D, ptr, ptr, ptr, ptr }
%struct.BakeAdjPoint = type { [3 x float], float }
%struct.bConstraintTypeInfo = type { i16, i16, [32 x i8], [32 x i8], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.bConstraintTarget = type { ptr, ptr, ptr, [64 x i8], [4 x [4 x float]], i16, i16, i16, i16 }
%struct.Curve = type { %struct.ID, ptr, ptr, %struct.ListBase, ptr, ptr, ptr, ptr, ptr, ptr, ptr, [3 x float], [3 x float], [3 x float], i16, i16, i16, i16, float, float, i32, i16, i16, i32, float, float, float, i16, i16, i16, i16, i32, i32, [4 x i8], i16, i8, i8, float, float, float, float, float, float, float, float, float, float, i32, i32, i32, i32, i32, ptr, ptr, [64 x i8], ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, %struct.CharInfo, float, float, float, i8, i8, [2 x i8] }
%struct.CharInfo = type { i16, i16, i8, i8, i16 }
%struct.bArmature = type { %struct.ID, ptr, %struct.ListBase, %struct.ListBase, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i16, i16, i32, i32, i32, i16, i16, i16, i16, i32, i32, i32, i32, i32, i32 }
%struct.KDTreeNearest = type { i32, float, [3 x float] }
%struct.ParticleData = type { %struct.ParticleKey, %struct.ParticleKey, ptr, ptr, ptr, i32, float, float, float, i32, i32, [4 x float], float, float, float, i32, i32, i16, i16 }
%struct.ParticleKey = type { [3 x float], [3 x float], [4 x float], [3 x float], float }
%struct.BVHTreeFromMesh = type { ptr, ptr, ptr, ptr, ptr, ptr, i8, i8, i8, float, ptr, i8 }
%struct.BVHTreeRayHit = type { i32, [3 x float], [3 x float], float, i32 }
%struct.BVHTreeNearest = type { i32, [3 x float], [3 x float], float, i32 }
%struct.EffectedPoint = type { ptr, ptr, ptr, ptr, float, float, float, float, i32, i32, ptr }
%struct.EffectorWeights = type { ptr, [14 x float], float, i16, [3 x i16], i32 }

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

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
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

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(read, inaccessiblemem: none) uwtable
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
  %18 = phi ptr [ null, %1 ], [ null, %9 ], [ %14, %13 ]
  ret ptr %18
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @dynamicPaint_resetPreview(ptr nocapture noundef readonly %0) local_unnamed_addr #3 {
  %2 = getelementptr inbounds %struct.DynamicPaintCanvasSettings, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !44
  %4 = icmp eq ptr %3, null
  br i1 %4, label %24, label %5

5:                                                ; preds = %1, %20
  %6 = phi ptr [ %22, %20 ], [ %3, %1 ]
  %7 = phi i8 [ %21, %20 ], [ 0, %1 ]
  %8 = icmp eq i8 %7, 0
  br i1 %8, label %9, label %16

9:                                                ; preds = %5
  %10 = tail call zeroext i8 @dynamicPaint_surfaceHasColorPreview(ptr noundef nonnull %6) #25, !range !49
  %11 = icmp eq i8 %10, 0
  br i1 %11, label %16, label %12

12:                                               ; preds = %9
  %13 = getelementptr inbounds %struct.DynamicPaintSurface, ptr %6, i64 0, i32 18
  %14 = load i32, ptr %13, align 4, !tbaa !50
  %15 = or i32 %14, 64
  store i32 %15, ptr %13, align 4, !tbaa !50
  br label %20

16:                                               ; preds = %9, %5
  %17 = getelementptr inbounds %struct.DynamicPaintSurface, ptr %6, i64 0, i32 18
  %18 = load i32, ptr %17, align 4, !tbaa !50
  %19 = and i32 %18, -65
  store i32 %19, ptr %17, align 4, !tbaa !50
  br label %20

20:                                               ; preds = %12, %16
  %21 = phi i8 [ %7, %16 ], [ 1, %12 ]
  %22 = load ptr, ptr %6, align 8, !tbaa !44
  %23 = icmp eq ptr %22, null
  br i1 %23, label %24, label %5, !llvm.loop !51

24:                                               ; preds = %20, %1
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
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
  %20 = tail call i32 @CustomData_get_named_layer_index(ptr noundef nonnull %19, i32 noundef 6, ptr noundef nonnull %9) #26
  %21 = icmp ne i32 %20, -1
  br label %26

22:                                               ; preds = %13
  %23 = getelementptr inbounds %struct.DynamicPaintSurface, ptr %0, i64 0, i32 48
  %24 = tail call i32 @defgroup_name_index(ptr noundef %1, ptr noundef nonnull %23) #26
  %25 = icmp ne i32 %24, -1
  br label %26

26:                                               ; preds = %8, %13, %3, %22, %16
  %27 = phi i1 [ %21, %16 ], [ %25, %22 ], [ false, %3 ], [ false, %13 ], [ false, %8 ]
  %28 = zext i1 %27 to i8
  ret i8 %28
}

; Function Attrs: optsize
declare i32 @CustomData_get_named_layer_index(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: optsize
declare i32 @defgroup_name_index(ptr noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @dynamicPaintSurface_setUniqueName(ptr noundef %0, ptr noundef %1) local_unnamed_addr #4 {
  %3 = alloca [64 x i8], align 16
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %3) #27
  %4 = call ptr @BLI_strncpy(ptr noundef nonnull %3, ptr noundef %1, i64 noundef 64) #26
  %5 = getelementptr inbounds %struct.DynamicPaintSurface, ptr %0, i64 0, i32 9
  %6 = call zeroext i8 @BLI_uniquename_cb(ptr noundef nonnull @surface_duplicateNameExists, ptr noundef %0, ptr noundef nonnull %3, i8 noundef zeroext 46, ptr noundef nonnull %5, i32 noundef 64) #26
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %3) #27
  ret void
}

; Function Attrs: optsize
declare ptr @BLI_strncpy(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #5

; Function Attrs: optsize
declare zeroext i8 @BLI_uniquename_cb(ptr noundef, ptr noundef, ptr noundef, i8 noundef zeroext, ptr noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: nofree noinline nounwind optsize memory(read, inaccessiblemem: none) uwtable
define internal noundef zeroext i8 @surface_duplicateNameExists(ptr noundef readonly %0, ptr nocapture noundef readonly %1) #6 !PGOFuncName !57 {
  %3 = getelementptr inbounds %struct.DynamicPaintSurface, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !58
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
  %13 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %1, ptr noundef nonnull dereferenceable(1) %12) #28
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %18, label %15

15:                                               ; preds = %8, %11
  %16 = load ptr, ptr %9, align 8, !tbaa !44
  %17 = icmp eq ptr %16, null
  br i1 %17, label %18, label %8, !llvm.loop !59

18:                                               ; preds = %11, %15, %2
  %19 = phi i8 [ 0, %2 ], [ 0, %15 ], [ 1, %11 ]
  ret i8 %19
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @dynamicPaintSurface_updateType(ptr noundef %0) local_unnamed_addr #4 {
  %2 = getelementptr inbounds %struct.DynamicPaintSurface, ptr %0, i64 0, i32 10
  %3 = load i16, ptr %2, align 4, !tbaa !34
  %4 = icmp eq i16 %3, 2
  %5 = getelementptr inbounds %struct.DynamicPaintSurface, ptr %0, i64 0, i32 48
  %6 = getelementptr inbounds %struct.DynamicPaintSurface, ptr %0, i64 0, i32 49
  %7 = getelementptr inbounds %struct.DynamicPaintSurface, ptr %0, i64 0, i32 18
  br i1 %4, label %8, label %11

8:                                                ; preds = %1
  store i8 0, ptr %5, align 8, !tbaa !60
  store i8 0, ptr %6, align 8, !tbaa !60
  %9 = load i32, ptr %7, align 4, !tbaa !50
  %10 = or i32 %9, 2
  br label %15

11:                                               ; preds = %1
  store i32 6254692, ptr %5, align 1
  %12 = tail call ptr @BLI_strncpy(ptr noundef nonnull %6, ptr noundef nonnull %5, i64 noundef 64) #26
  %13 = load i32, ptr %7, align 4, !tbaa !50
  %14 = and i32 %13, -3
  br label %15

15:                                               ; preds = %11, %8
  %16 = phi i32 [ %14, %11 ], [ %10, %8 ]
  %17 = phi float [ 0.000000e+00, %11 ], [ 1.000000e+00, %8 ]
  store i32 %16, ptr %7, align 4, !tbaa !50
  %18 = getelementptr inbounds %struct.DynamicPaintSurface, ptr %0, i64 0, i32 31
  store float %17, ptr %18, align 4
  %19 = getelementptr inbounds %struct.DynamicPaintSurface, ptr %0, i64 0, i32 11
  %20 = load i16, ptr %19, align 2, !tbaa !43
  switch i16 %20, label %40 [
    i16 0, label %21
    i16 1, label %28
    i16 2, label %32
    i16 3, label %36
  ]

21:                                               ; preds = %15
  %22 = getelementptr inbounds %struct.DynamicPaintSurface, ptr %0, i64 0, i32 48
  %23 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %22)
  %24 = getelementptr inbounds i8, ptr %22, i64 %23
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(9) %24, ptr noundef nonnull align 1 dereferenceable(9) @.str.1, i64 9, i1 false)
  %25 = getelementptr inbounds %struct.DynamicPaintSurface, ptr %0, i64 0, i32 49
  %26 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %25)
  %27 = getelementptr inbounds i8, ptr %25, i64 %26
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(7) %27, ptr noundef nonnull align 1 dereferenceable(7) @.str.2, i64 7, i1 false)
  tail call fastcc void @surface_setUniqueOutputName(ptr noundef nonnull %0, ptr noundef nonnull %25, i32 noundef 1) #25
  br label %40

28:                                               ; preds = %15
  %29 = getelementptr inbounds %struct.DynamicPaintSurface, ptr %0, i64 0, i32 48
  %30 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %29)
  %31 = getelementptr inbounds i8, ptr %29, i64 %30
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(9) %31, ptr noundef nonnull align 1 dereferenceable(9) @.str.3, i64 9, i1 false)
  br label %40

32:                                               ; preds = %15
  %33 = getelementptr inbounds %struct.DynamicPaintSurface, ptr %0, i64 0, i32 48
  %34 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %33)
  %35 = getelementptr inbounds i8, ptr %33, i64 %34
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(7) %35, ptr noundef nonnull align 1 dereferenceable(7) @.str.4, i64 7, i1 false)
  br label %40

36:                                               ; preds = %15
  %37 = getelementptr inbounds %struct.DynamicPaintSurface, ptr %0, i64 0, i32 48
  %38 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %37)
  %39 = getelementptr inbounds i8, ptr %37, i64 %38
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(5) %39, ptr noundef nonnull align 1 dereferenceable(5) @.str.5, i64 5, i1 false)
  br label %40

40:                                               ; preds = %15, %28, %36, %32, %21
  %41 = getelementptr inbounds %struct.DynamicPaintSurface, ptr %0, i64 0, i32 48
  tail call fastcc void @surface_setUniqueOutputName(ptr noundef nonnull %0, ptr noundef nonnull %41, i32 noundef 0) #25
  %42 = tail call zeroext i8 @dynamicPaint_surfaceHasColorPreview(ptr noundef nonnull %0) #25, !range !49
  %43 = icmp eq i8 %42, 0
  br i1 %43, label %45, label %44

44:                                               ; preds = %40
  tail call fastcc void @dynamicPaint_setPreview(ptr noundef nonnull %0) #25
  br label %48

45:                                               ; preds = %40
  %46 = getelementptr inbounds %struct.DynamicPaintSurface, ptr %0, i64 0, i32 2
  %47 = load ptr, ptr %46, align 8, !tbaa !58
  tail call void @dynamicPaint_resetPreview(ptr noundef %47) #25
  br label %48

48:                                               ; preds = %45, %44
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @surface_setUniqueOutputName(ptr noundef %0, ptr noundef %1, i32 noundef %2) unnamed_addr #4 !PGOFuncName !61 {
  %4 = alloca [64 x i8], align 16
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %4) #27
  %5 = call ptr @BLI_strncpy(ptr noundef nonnull %4, ptr noundef %1, i64 noundef 64) #26
  %6 = icmp eq i32 %2, 0
  %7 = getelementptr inbounds %struct.DynamicPaintSurface, ptr %0, i64 0, i32 48
  %8 = getelementptr inbounds %struct.DynamicPaintSurface, ptr %0, i64 0, i32 49
  %9 = select i1 %6, ptr %7, ptr %8
  %10 = call zeroext i8 @BLI_uniquename_cb(ptr noundef nonnull @surface_duplicateOutputExists, ptr noundef %0, ptr noundef nonnull %4, i8 noundef zeroext 46, ptr noundef nonnull %9, i32 noundef 64) #26
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %4) #27
  ret void
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @dynamicPaint_setPreview(ptr noundef readonly %0) unnamed_addr #3 !PGOFuncName !62 {
  %2 = getelementptr inbounds %struct.DynamicPaintSurface, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !58
  %4 = getelementptr inbounds %struct.DynamicPaintCanvasSettings, ptr %3, i64 0, i32 2
  %5 = load ptr, ptr %4, align 8, !tbaa !44
  %6 = icmp eq ptr %5, null
  br i1 %6, label %22, label %7

7:                                                ; preds = %1
  %8 = getelementptr inbounds %struct.DynamicPaintSurface, ptr %0, i64 0, i32 18
  br label %9

9:                                                ; preds = %7, %19
  %10 = phi ptr [ %20, %19 ], [ %5, %7 ]
  %11 = icmp eq ptr %10, %0
  br i1 %11, label %12, label %15

12:                                               ; preds = %9
  %13 = load i32, ptr %8, align 4, !tbaa !50
  %14 = or i32 %13, 64
  store i32 %14, ptr %8, align 4, !tbaa !50
  br label %19

15:                                               ; preds = %9
  %16 = getelementptr inbounds %struct.DynamicPaintSurface, ptr %10, i64 0, i32 18
  %17 = load i32, ptr %16, align 4, !tbaa !50
  %18 = and i32 %17, -65
  store i32 %18, ptr %16, align 4, !tbaa !50
  br label %19

19:                                               ; preds = %12, %15
  %20 = load ptr, ptr %10, align 8, !tbaa !44
  %21 = icmp eq ptr %20, null
  br i1 %21, label %22, label %9, !llvm.loop !63

22:                                               ; preds = %19, %1
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @dynamicPaint_freeBrush(ptr nocapture noundef %0) local_unnamed_addr #4 {
  %2 = getelementptr inbounds %struct.DynamicPaintModifierData, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !64
  %4 = icmp eq ptr %3, null
  br i1 %4, label %35, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.DynamicPaintBrushSettings, ptr %3, i64 0, i32 1
  %7 = load ptr, ptr %6, align 8, !tbaa !67
  %8 = icmp eq ptr %7, null
  br i1 %8, label %13, label %9

9:                                                ; preds = %5
  %10 = getelementptr inbounds %struct.DerivedMesh, ptr %7, i64 0, i32 95
  %11 = load ptr, ptr %10, align 8, !tbaa !69
  tail call void %11(ptr noundef nonnull %7) #26
  %12 = load ptr, ptr %2, align 8, !tbaa !64
  br label %13

13:                                               ; preds = %9, %5
  %14 = phi ptr [ %12, %9 ], [ %3, %5 ]
  %15 = getelementptr inbounds %struct.DynamicPaintBrushSettings, ptr %14, i64 0, i32 1
  store ptr null, ptr %15, align 8, !tbaa !67
  %16 = getelementptr inbounds %struct.DynamicPaintBrushSettings, ptr %14, i64 0, i32 14
  %17 = load ptr, ptr %16, align 8, !tbaa !72
  %18 = icmp eq ptr %17, null
  br i1 %18, label %22, label %19

19:                                               ; preds = %13
  %20 = load ptr, ptr @MEM_freeN, align 8, !tbaa !44
  tail call void %20(ptr noundef nonnull %17) #26
  %21 = load ptr, ptr %2, align 8, !tbaa !64
  br label %22

22:                                               ; preds = %19, %13
  %23 = phi ptr [ %21, %19 ], [ %14, %13 ]
  %24 = getelementptr inbounds %struct.DynamicPaintBrushSettings, ptr %23, i64 0, i32 14
  store ptr null, ptr %24, align 8, !tbaa !72
  %25 = getelementptr inbounds %struct.DynamicPaintBrushSettings, ptr %23, i64 0, i32 15
  %26 = load ptr, ptr %25, align 8, !tbaa !73
  %27 = icmp eq ptr %26, null
  br i1 %27, label %31, label %28

28:                                               ; preds = %22
  %29 = load ptr, ptr @MEM_freeN, align 8, !tbaa !44
  tail call void %29(ptr noundef nonnull %26) #26
  %30 = load ptr, ptr %2, align 8, !tbaa !64
  br label %31

31:                                               ; preds = %28, %22
  %32 = phi ptr [ %30, %28 ], [ %23, %22 ]
  %33 = getelementptr inbounds %struct.DynamicPaintBrushSettings, ptr %32, i64 0, i32 15
  store ptr null, ptr %33, align 8, !tbaa !73
  %34 = load ptr, ptr @MEM_freeN, align 8, !tbaa !44
  tail call void %34(ptr noundef %32) #26
  store ptr null, ptr %2, align 8, !tbaa !64
  br label %35

35:                                               ; preds = %31, %1
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @dynamicPaint_freeSurfaceData(ptr nocapture noundef %0) local_unnamed_addr #4 {
  %2 = getelementptr inbounds %struct.DynamicPaintSurface, ptr %0, i64 0, i32 3
  %3 = load ptr, ptr %2, align 8, !tbaa !74
  %4 = icmp eq ptr %3, null
  br i1 %4, label %35, label %5

5:                                                ; preds = %1
  %6 = load ptr, ptr %3, align 8, !tbaa !75
  %7 = icmp eq ptr %6, null
  br i1 %7, label %26, label %8

8:                                                ; preds = %5
  %9 = getelementptr inbounds %struct.DynamicPaintSurface, ptr %0, i64 0, i32 10
  %10 = load i16, ptr %9, align 4, !tbaa !34
  %11 = icmp eq i16 %10, 2
  br i1 %11, label %12, label %23

12:                                               ; preds = %8
  %13 = load ptr, ptr %6, align 8, !tbaa !77
  %14 = icmp eq ptr %13, null
  br i1 %14, label %17, label %15

15:                                               ; preds = %12
  %16 = load ptr, ptr @MEM_freeN, align 8, !tbaa !44
  tail call void %16(ptr noundef nonnull %13) #26
  br label %17

17:                                               ; preds = %15, %12
  %18 = getelementptr inbounds %struct.ImgSeqFormatData, ptr %6, i64 0, i32 1
  %19 = load ptr, ptr %18, align 8, !tbaa !79
  %20 = icmp eq ptr %19, null
  br i1 %20, label %23, label %21

21:                                               ; preds = %17
  %22 = load ptr, ptr @MEM_freeN, align 8, !tbaa !44
  tail call void %22(ptr noundef nonnull %19) #26
  br label %23

23:                                               ; preds = %17, %21, %8
  %24 = load ptr, ptr @MEM_freeN, align 8, !tbaa !44
  %25 = load ptr, ptr %3, align 8, !tbaa !75
  tail call void %24(ptr noundef %25) #26
  br label %26

26:                                               ; preds = %23, %5
  %27 = getelementptr inbounds %struct.PaintSurfaceData, ptr %3, i64 0, i32 1
  %28 = load ptr, ptr %27, align 8, !tbaa !80
  %29 = icmp eq ptr %28, null
  br i1 %29, label %32, label %30

30:                                               ; preds = %26
  %31 = load ptr, ptr @MEM_freeN, align 8, !tbaa !44
  tail call void %31(ptr noundef nonnull %28) #26
  br label %32

32:                                               ; preds = %30, %26
  tail call fastcc void @dynamicPaint_freeAdjData(ptr noundef nonnull %3) #25
  tail call fastcc void @free_bakeData(ptr noundef nonnull %3) #25
  %33 = load ptr, ptr @MEM_freeN, align 8, !tbaa !44
  %34 = load ptr, ptr %2, align 8, !tbaa !74
  tail call void %33(ptr noundef %34) #26
  store ptr null, ptr %2, align 8, !tbaa !74
  br label %35

35:                                               ; preds = %1, %32
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @dynamicPaint_freeAdjData(ptr nocapture noundef %0) unnamed_addr #4 !PGOFuncName !81 {
  %2 = getelementptr inbounds %struct.PaintSurfaceData, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !82
  %4 = icmp eq ptr %3, null
  br i1 %4, label %38, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.PaintAdjData, ptr %3, i64 0, i32 1
  %7 = load ptr, ptr %6, align 8, !tbaa !83
  %8 = icmp eq ptr %7, null
  br i1 %8, label %12, label %9

9:                                                ; preds = %5
  %10 = load ptr, ptr @MEM_freeN, align 8, !tbaa !44
  tail call void %10(ptr noundef nonnull %7) #26
  %11 = load ptr, ptr %2, align 8, !tbaa !82
  br label %12

12:                                               ; preds = %9, %5
  %13 = phi ptr [ %11, %9 ], [ %3, %5 ]
  %14 = getelementptr inbounds %struct.PaintAdjData, ptr %13, i64 0, i32 2
  %15 = load ptr, ptr %14, align 8, !tbaa !85
  %16 = icmp eq ptr %15, null
  br i1 %16, label %20, label %17

17:                                               ; preds = %12
  %18 = load ptr, ptr @MEM_freeN, align 8, !tbaa !44
  tail call void %18(ptr noundef nonnull %15) #26
  %19 = load ptr, ptr %2, align 8, !tbaa !82
  br label %20

20:                                               ; preds = %17, %12
  %21 = phi ptr [ %19, %17 ], [ %13, %12 ]
  %22 = load ptr, ptr %21, align 8, !tbaa !86
  %23 = icmp eq ptr %22, null
  br i1 %23, label %27, label %24

24:                                               ; preds = %20
  %25 = load ptr, ptr @MEM_freeN, align 8, !tbaa !44
  tail call void %25(ptr noundef nonnull %22) #26
  %26 = load ptr, ptr %2, align 8, !tbaa !82
  br label %27

27:                                               ; preds = %24, %20
  %28 = phi ptr [ %26, %24 ], [ %21, %20 ]
  %29 = getelementptr inbounds %struct.PaintAdjData, ptr %28, i64 0, i32 3
  %30 = load ptr, ptr %29, align 8, !tbaa !87
  %31 = icmp eq ptr %30, null
  br i1 %31, label %35, label %32

32:                                               ; preds = %27
  %33 = load ptr, ptr @MEM_freeN, align 8, !tbaa !44
  tail call void %33(ptr noundef nonnull %30) #26
  %34 = load ptr, ptr %2, align 8, !tbaa !82
  br label %35

35:                                               ; preds = %32, %27
  %36 = phi ptr [ %34, %32 ], [ %28, %27 ]
  %37 = load ptr, ptr @MEM_freeN, align 8, !tbaa !44
  tail call void %37(ptr noundef %36) #26
  store ptr null, ptr %2, align 8, !tbaa !82
  br label %38

38:                                               ; preds = %35, %1
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @free_bakeData(ptr nocapture noundef %0) unnamed_addr #4 !PGOFuncName !88 {
  %2 = getelementptr inbounds %struct.PaintSurfaceData, ptr %0, i64 0, i32 3
  %3 = load ptr, ptr %2, align 8, !tbaa !89
  %4 = icmp eq ptr %3, null
  br i1 %4, label %60, label %5

5:                                                ; preds = %1
  %6 = load ptr, ptr %3, align 8, !tbaa !90
  %7 = icmp eq ptr %6, null
  br i1 %7, label %10, label %8

8:                                                ; preds = %5
  %9 = load ptr, ptr @MEM_freeN, align 8, !tbaa !44
  tail call void %9(ptr noundef nonnull %6) #26
  br label %10

10:                                               ; preds = %8, %5
  %11 = getelementptr inbounds %struct.PaintBakeData, ptr %3, i64 0, i32 1
  %12 = load ptr, ptr %11, align 8, !tbaa !94
  %13 = icmp eq ptr %12, null
  br i1 %13, label %16, label %14

14:                                               ; preds = %10
  %15 = load ptr, ptr @MEM_freeN, align 8, !tbaa !44
  tail call void %15(ptr noundef nonnull %12) #26
  br label %16

16:                                               ; preds = %14, %10
  %17 = getelementptr inbounds %struct.PaintBakeData, ptr %3, i64 0, i32 2
  %18 = load ptr, ptr %17, align 8, !tbaa !95
  %19 = icmp eq ptr %18, null
  br i1 %19, label %22, label %20

20:                                               ; preds = %16
  %21 = load ptr, ptr @MEM_freeN, align 8, !tbaa !44
  tail call void %21(ptr noundef nonnull %18) #26
  br label %22

22:                                               ; preds = %20, %16
  %23 = getelementptr inbounds %struct.PaintBakeData, ptr %3, i64 0, i32 3
  %24 = load ptr, ptr %23, align 8, !tbaa !96
  %25 = icmp eq ptr %24, null
  br i1 %25, label %28, label %26

26:                                               ; preds = %22
  %27 = load ptr, ptr @MEM_freeN, align 8, !tbaa !44
  tail call void %27(ptr noundef nonnull %24) #26
  br label %28

28:                                               ; preds = %26, %22
  %29 = getelementptr inbounds %struct.PaintBakeData, ptr %3, i64 0, i32 5
  %30 = load ptr, ptr %29, align 8, !tbaa !97
  %31 = icmp eq ptr %30, null
  br i1 %31, label %34, label %32

32:                                               ; preds = %28
  %33 = load ptr, ptr @MEM_freeN, align 8, !tbaa !44
  tail call void %33(ptr noundef nonnull %30) #26
  br label %34

34:                                               ; preds = %32, %28
  %35 = getelementptr inbounds %struct.PaintBakeData, ptr %3, i64 0, i32 7
  %36 = load ptr, ptr %35, align 8, !tbaa !98
  %37 = icmp eq ptr %36, null
  br i1 %37, label %39, label %38

38:                                               ; preds = %34
  tail call fastcc void @freeGrid(ptr noundef nonnull %0) #25
  br label %39

39:                                               ; preds = %38, %34
  %40 = getelementptr inbounds %struct.PaintBakeData, ptr %3, i64 0, i32 11
  %41 = load ptr, ptr %40, align 8, !tbaa !99
  %42 = icmp eq ptr %41, null
  br i1 %42, label %45, label %43

43:                                               ; preds = %39
  %44 = load ptr, ptr @MEM_freeN, align 8, !tbaa !44
  tail call void %44(ptr noundef nonnull %41) #26
  br label %45

45:                                               ; preds = %43, %39
  %46 = getelementptr inbounds %struct.PaintBakeData, ptr %3, i64 0, i32 8
  %47 = load ptr, ptr %46, align 8, !tbaa !100
  %48 = icmp eq ptr %47, null
  br i1 %48, label %51, label %49

49:                                               ; preds = %45
  %50 = load ptr, ptr @MEM_freeN, align 8, !tbaa !44
  tail call void %50(ptr noundef nonnull %47) #26
  br label %51

51:                                               ; preds = %49, %45
  %52 = getelementptr inbounds %struct.PaintBakeData, ptr %3, i64 0, i32 9
  %53 = load ptr, ptr %52, align 8, !tbaa !101
  %54 = icmp eq ptr %53, null
  br i1 %54, label %57, label %55

55:                                               ; preds = %51
  %56 = load ptr, ptr @MEM_freeN, align 8, !tbaa !44
  tail call void %56(ptr noundef nonnull %53) #26
  br label %57

57:                                               ; preds = %55, %51
  %58 = load ptr, ptr @MEM_freeN, align 8, !tbaa !44
  %59 = load ptr, ptr %2, align 8, !tbaa !89
  tail call void %58(ptr noundef %59) #26
  store ptr null, ptr %2, align 8, !tbaa !89
  br label %60

60:                                               ; preds = %57, %1
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @dynamicPaint_freeSurface(ptr noundef %0) local_unnamed_addr #4 {
  %2 = getelementptr inbounds %struct.DynamicPaintSurface, ptr %0, i64 0, i32 7
  tail call void @BKE_ptcache_free_list(ptr noundef nonnull %2) #26
  %3 = getelementptr inbounds %struct.DynamicPaintSurface, ptr %0, i64 0, i32 6
  store ptr null, ptr %3, align 8, !tbaa !102
  %4 = getelementptr inbounds %struct.DynamicPaintSurface, ptr %0, i64 0, i32 5
  %5 = load ptr, ptr %4, align 8, !tbaa !103
  %6 = icmp eq ptr %5, null
  br i1 %6, label %9, label %7

7:                                                ; preds = %1
  %8 = load ptr, ptr @MEM_freeN, align 8, !tbaa !44
  tail call void %8(ptr noundef nonnull %5) #26
  br label %9

9:                                                ; preds = %7, %1
  store ptr null, ptr %4, align 8, !tbaa !103
  %10 = getelementptr inbounds %struct.DynamicPaintSurface, ptr %0, i64 0, i32 2
  %11 = load ptr, ptr %10, align 8, !tbaa !58
  %12 = getelementptr inbounds %struct.DynamicPaintCanvasSettings, ptr %11, i64 0, i32 2
  tail call void @BLI_remlink(ptr noundef nonnull %12, ptr noundef nonnull %0) #26
  tail call void @dynamicPaint_freeSurfaceData(ptr noundef nonnull %0) #25
  %13 = load ptr, ptr @MEM_freeN, align 8, !tbaa !44
  tail call void %13(ptr noundef nonnull %0) #26
  ret void
}

; Function Attrs: optsize
declare void @BKE_ptcache_free_list(ptr noundef) local_unnamed_addr #5

; Function Attrs: optsize
declare void @BLI_remlink(ptr noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @dynamicPaint_freeCanvas(ptr nocapture noundef %0) local_unnamed_addr #4 {
  %2 = getelementptr inbounds %struct.DynamicPaintModifierData, ptr %0, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !104
  %4 = icmp eq ptr %3, null
  br i1 %4, label %28, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.DynamicPaintCanvasSettings, ptr %3, i64 0, i32 2
  %7 = load ptr, ptr %6, align 8, !tbaa !105
  %8 = icmp eq ptr %7, null
  br i1 %8, label %15, label %9

9:                                                ; preds = %5, %9
  %10 = phi ptr [ %11, %9 ], [ %7, %5 ]
  %11 = load ptr, ptr %10, align 8, !tbaa !106
  tail call void @dynamicPaint_freeSurface(ptr noundef nonnull %10) #25
  %12 = icmp eq ptr %11, null
  br i1 %12, label %13, label %9, !llvm.loop !107

13:                                               ; preds = %9
  %14 = load ptr, ptr %2, align 8, !tbaa !104
  br label %15

15:                                               ; preds = %13, %5
  %16 = phi ptr [ %14, %13 ], [ %3, %5 ]
  %17 = getelementptr inbounds %struct.DynamicPaintCanvasSettings, ptr %16, i64 0, i32 1
  %18 = load ptr, ptr %17, align 8, !tbaa !108
  %19 = icmp eq ptr %18, null
  br i1 %19, label %24, label %20

20:                                               ; preds = %15
  %21 = getelementptr inbounds %struct.DerivedMesh, ptr %18, i64 0, i32 95
  %22 = load ptr, ptr %21, align 8, !tbaa !69
  tail call void %22(ptr noundef nonnull %18) #26
  %23 = load ptr, ptr %2, align 8, !tbaa !104
  br label %24

24:                                               ; preds = %20, %15
  %25 = phi ptr [ %23, %20 ], [ %16, %15 ]
  %26 = getelementptr inbounds %struct.DynamicPaintCanvasSettings, ptr %25, i64 0, i32 1
  store ptr null, ptr %26, align 8, !tbaa !108
  %27 = load ptr, ptr @MEM_freeN, align 8, !tbaa !44
  tail call void %27(ptr noundef %25) #26
  store ptr null, ptr %2, align 8, !tbaa !104
  br label %28

28:                                               ; preds = %24, %1
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @dynamicPaint_Modifier_free(ptr noundef %0) local_unnamed_addr #4 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %4, label %3

3:                                                ; preds = %1
  tail call void @dynamicPaint_freeCanvas(ptr noundef nonnull %0) #25
  tail call void @dynamicPaint_freeBrush(ptr noundef nonnull %0) #25
  br label %4

4:                                                ; preds = %3, %1
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @dynamicPaint_createNewSurface(ptr noundef %0, ptr noundef readonly %1) local_unnamed_addr #4 {
  %3 = load ptr, ptr @MEM_callocN, align 8, !tbaa !44
  %4 = tail call ptr %3(i64 noundef 1560, ptr noundef nonnull @.str.6) #26
  %5 = icmp eq ptr %4, null
  br i1 %5, label %45, label %6

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.DynamicPaintSurface, ptr %4, i64 0, i32 2
  store ptr %0, ptr %7, align 8, !tbaa !58
  %8 = getelementptr inbounds %struct.DynamicPaintSurface, ptr %4, i64 0, i32 10
  store i16 1, ptr %8, align 4, !tbaa !34
  %9 = getelementptr inbounds %struct.DynamicPaintSurface, ptr %4, i64 0, i32 11
  store i16 0, ptr %9, align 2, !tbaa !43
  %10 = getelementptr inbounds %struct.DynamicPaintSurface, ptr %4, i64 0, i32 7
  %11 = tail call ptr @BKE_ptcache_add(ptr noundef nonnull %10) #26
  %12 = getelementptr inbounds %struct.DynamicPaintSurface, ptr %4, i64 0, i32 6
  store ptr %11, ptr %12, align 8, !tbaa !102
  %13 = getelementptr inbounds %struct.PointCache, ptr %11, i64 0, i32 2
  %14 = load i32, ptr %13, align 8, !tbaa !109
  %15 = or i32 %14, 64
  store i32 %15, ptr %13, align 8, !tbaa !109
  %16 = getelementptr inbounds %struct.PointCache, ptr %11, i64 0, i32 3
  store i32 1, ptr %16, align 4, !tbaa !111
  %17 = getelementptr inbounds %struct.DynamicPaintSurface, ptr %4, i64 0, i32 18
  store i32 1659, ptr %17, align 4, !tbaa !50
  %18 = getelementptr inbounds %struct.DynamicPaintSurface, ptr %4, i64 0, i32 19
  store i32 0, ptr %18, align 8, !tbaa !112
  %19 = getelementptr inbounds %struct.DynamicPaintSurface, ptr %4, i64 0, i32 14
  store i16 1, ptr %19, align 4, !tbaa !113
  %20 = getelementptr inbounds %struct.DynamicPaintSurface, ptr %4, i64 0, i32 29
  store i32 250, ptr %20, align 4, !tbaa !114
  %21 = getelementptr inbounds %struct.DynamicPaintSurface, ptr %4, i64 0, i32 28
  store i32 500, ptr %21, align 8, !tbaa !115
  %22 = getelementptr inbounds %struct.DynamicPaintSurface, ptr %4, i64 0, i32 30
  store <2 x float> <float 1.000000e+00, float 0.000000e+00>, ptr %22, align 8, !tbaa !116
  %23 = getelementptr inbounds %struct.DynamicPaintSurface, ptr %4, i64 0, i32 32
  store float 1.000000e+00, ptr %23, align 8, !tbaa !117
  %24 = getelementptr inbounds %struct.DynamicPaintSurface, ptr %4, i64 0, i32 12
  store i16 0, ptr %24, align 8, !tbaa !118
  %25 = getelementptr inbounds %struct.DynamicPaintSurface, ptr %4, i64 0, i32 13
  store i16 0, ptr %25, align 2, !tbaa !119
  %26 = getelementptr inbounds %struct.DynamicPaintSurface, ptr %4, i64 0, i32 38
  store <2 x float> <float 1.000000e+00, float 1.000000e+00>, ptr %26, align 8, !tbaa !116
  %27 = getelementptr inbounds %struct.DynamicPaintSurface, ptr %4, i64 0, i32 25
  store <4 x float> <float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float 1.000000e+00>, ptr %27, align 8, !tbaa !116
  %28 = getelementptr inbounds %struct.DynamicPaintSurface, ptr %4, i64 0, i32 20
  store i32 256, ptr %28, align 4, !tbaa !120
  %29 = getelementptr inbounds %struct.DynamicPaintSurface, ptr %4, i64 0, i32 21
  store i32 0, ptr %29, align 8, !tbaa !121
  %30 = icmp eq ptr %1, null
  br i1 %30, label %34, label %31

31:                                               ; preds = %6
  %32 = getelementptr inbounds %struct.Scene, ptr %1, i64 0, i32 22, i32 6
  %33 = load <2 x i32>, ptr %32, align 4, !tbaa !122
  br label %34

34:                                               ; preds = %6, %31
  %35 = phi <2 x i32> [ %33, %31 ], [ <i32 1, i32 250>, %6 ]
  %36 = getelementptr inbounds %struct.DynamicPaintSurface, ptr %4, i64 0, i32 22
  store <2 x i32> %35, ptr %36, align 4
  %37 = getelementptr inbounds %struct.DynamicPaintSurface, ptr %4, i64 0, i32 33
  store <2 x float> <float 1.000000e+00, float 1.000000e+00>, ptr %37, align 4, !tbaa !116
  %38 = getelementptr inbounds %struct.DynamicPaintSurface, ptr %4, i64 0, i32 35
  store float 1.000000e+00, ptr %38, align 4, !tbaa !123
  %39 = getelementptr inbounds %struct.DynamicPaintSurface, ptr %4, i64 0, i32 40
  store <4 x float> <float 0x3FA47AE140000000, float 1.000000e+00, float 1.000000e+00, float 0x3FC99999A0000000>, ptr %39, align 8, !tbaa !116
  %40 = getelementptr inbounds %struct.DynamicPaintSurface, ptr %4, i64 0, i32 44
  store float 1.000000e+00, ptr %40, align 8, !tbaa !124
  %41 = getelementptr inbounds %struct.DynamicPaintSurface, ptr %4, i64 0, i32 47
  tail call void @modifier_path_init(ptr noundef nonnull %41, i32 noundef 1024, ptr noundef nonnull @.str.7) #26
  tail call void @dynamicPaintSurface_setUniqueName(ptr noundef nonnull %4, ptr noundef nonnull @.str.8) #25
  %42 = tail call ptr @BKE_add_effector_weights(ptr noundef null) #26
  %43 = getelementptr inbounds %struct.DynamicPaintSurface, ptr %4, i64 0, i32 5
  store ptr %42, ptr %43, align 8, !tbaa !103
  tail call void @dynamicPaintSurface_updateType(ptr noundef nonnull %4) #25
  %44 = getelementptr inbounds %struct.DynamicPaintCanvasSettings, ptr %0, i64 0, i32 2
  tail call void @BLI_addtail(ptr noundef nonnull %44, ptr noundef nonnull %4) #26
  br label %45

45:                                               ; preds = %2, %34
  ret ptr %4
}

; Function Attrs: optsize
declare ptr @BKE_ptcache_add(ptr noundef) local_unnamed_addr #5

; Function Attrs: optsize
declare void @modifier_path_init(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: optsize
declare ptr @BKE_add_effector_weights(ptr noundef) local_unnamed_addr #5

; Function Attrs: optsize
declare void @BLI_addtail(ptr noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef zeroext i8 @dynamicPaint_createType(ptr noundef %0, i32 noundef %1, ptr noundef %2) local_unnamed_addr #4 {
  %4 = icmp eq ptr %0, null
  br i1 %4, label %59, label %5

5:                                                ; preds = %3
  switch i32 %1, label %58 [
    i32 1, label %6
    i32 2, label %19
  ]

6:                                                ; preds = %5
  %7 = getelementptr inbounds %struct.DynamicPaintModifierData, ptr %0, i64 0, i32 1
  %8 = load ptr, ptr %7, align 8, !tbaa !104
  %9 = icmp eq ptr %8, null
  br i1 %9, label %11, label %10

10:                                               ; preds = %6
  tail call void @dynamicPaint_freeCanvas(ptr noundef nonnull %0) #25
  br label %11

11:                                               ; preds = %10, %6
  %12 = load ptr, ptr @MEM_callocN, align 8, !tbaa !44
  %13 = tail call ptr %12(i64 noundef 104, ptr noundef nonnull @.str.9) #26
  store ptr %13, ptr %7, align 8, !tbaa !104
  %14 = icmp eq ptr %13, null
  br i1 %14, label %59, label %15

15:                                               ; preds = %11
  store ptr %0, ptr %13, align 8, !tbaa !125
  %16 = getelementptr inbounds %struct.DynamicPaintCanvasSettings, ptr %13, i64 0, i32 1
  store ptr null, ptr %16, align 8, !tbaa !108
  %17 = tail call ptr @dynamicPaint_createNewSurface(ptr noundef nonnull %13, ptr noundef %2) #25
  %18 = icmp eq ptr %17, null
  br i1 %18, label %59, label %58

19:                                               ; preds = %5
  %20 = getelementptr inbounds %struct.DynamicPaintModifierData, ptr %0, i64 0, i32 2
  %21 = load ptr, ptr %20, align 8, !tbaa !64
  %22 = icmp eq ptr %21, null
  br i1 %22, label %24, label %23

23:                                               ; preds = %19
  tail call void @dynamicPaint_freeBrush(ptr noundef nonnull %0) #25
  br label %24

24:                                               ; preds = %23, %19
  %25 = load ptr, ptr @MEM_callocN, align 8, !tbaa !44
  %26 = tail call ptr %25(i64 noundef 112, ptr noundef nonnull @.str.10) #26
  store ptr %26, ptr %20, align 8, !tbaa !64
  %27 = icmp eq ptr %26, null
  br i1 %27, label %59, label %28

28:                                               ; preds = %24
  store ptr %0, ptr %26, align 8, !tbaa !126
  %29 = getelementptr inbounds %struct.DynamicPaintBrushSettings, ptr %26, i64 0, i32 2
  store ptr null, ptr %29, align 8, !tbaa !127
  %30 = getelementptr inbounds %struct.DynamicPaintBrushSettings, ptr %26, i64 0, i32 4
  store i32 20, ptr %30, align 8, !tbaa !128
  %31 = getelementptr inbounds %struct.DynamicPaintBrushSettings, ptr %26, i64 0, i32 5
  store i32 0, ptr %31, align 4, !tbaa !129
  %32 = getelementptr inbounds %struct.DynamicPaintBrushSettings, ptr %26, i64 0, i32 3
  store ptr null, ptr %32, align 8, !tbaa !130
  %33 = getelementptr inbounds %struct.DynamicPaintBrushSettings, ptr %26, i64 0, i32 6
  store <4 x float> <float 0x3FC3333340000000, float 0x3FD99999A0000000, float 0x3FE99999A0000000, float 1.000000e+00>, ptr %33, align 8, !tbaa !116
  %34 = getelementptr inbounds %struct.DynamicPaintBrushSettings, ptr %26, i64 0, i32 10
  %35 = getelementptr inbounds %struct.DynamicPaintBrushSettings, ptr %26, i64 0, i32 16
  store i16 1, ptr %35, align 8, !tbaa !131
  store <4 x float> <float 1.000000e+00, float 0x3FC99999A0000000, float 0x3FA99999A0000000, float 1.000000e+00>, ptr %34, align 8, !tbaa !116
  %36 = getelementptr inbounds %struct.DynamicPaintBrushSettings, ptr %26, i64 0, i32 17
  store i16 3, ptr %36, align 2, !tbaa !132
  %37 = getelementptr inbounds %struct.DynamicPaintBrushSettings, ptr %26, i64 0, i32 20
  store <4 x float> <float 1.000000e+00, float 0.000000e+00, float 1.000000e+00, float 0x3FD3333340000000>, ptr %37, align 8, !tbaa !116
  %38 = getelementptr inbounds %struct.DynamicPaintBrushSettings, ptr %26, i64 0, i32 1
  store ptr null, ptr %38, align 8, !tbaa !67
  %39 = tail call ptr @add_colorband(i8 noundef zeroext 0) #26
  %40 = getelementptr inbounds %struct.DynamicPaintBrushSettings, ptr %26, i64 0, i32 14
  store ptr %39, ptr %40, align 8, !tbaa !72
  %41 = icmp eq ptr %39, null
  br i1 %41, label %59, label %42

42:                                               ; preds = %28
  %43 = getelementptr inbounds %struct.ColorBand, ptr %39, i64 0, i32 6
  store <4 x float> <float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float 1.000000e+00>, ptr %43, align 4, !tbaa !116
  %44 = getelementptr inbounds %struct.ColorBand, ptr %39, i64 0, i32 6, i64 0, i32 4
  store float 0.000000e+00, ptr %44, align 4, !tbaa !133
  %45 = getelementptr inbounds %struct.ColorBand, ptr %39, i64 0, i32 6, i64 1
  %46 = getelementptr inbounds %struct.ColorBand, ptr %39, i64 0, i32 6, i64 1, i32 4
  store float 1.000000e+00, ptr %46, align 4, !tbaa !133
  store <4 x float> <float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float 0.000000e+00>, ptr %45, align 4, !tbaa !116
  %47 = load ptr, ptr %20, align 8, !tbaa !64
  %48 = getelementptr inbounds %struct.DynamicPaintBrushSettings, ptr %47, i64 0, i32 14
  %49 = load ptr, ptr %48, align 8, !tbaa !72
  store i16 2, ptr %49, align 4, !tbaa !135
  %50 = tail call ptr @add_colorband(i8 noundef zeroext 0) #26
  %51 = getelementptr inbounds %struct.DynamicPaintBrushSettings, ptr %26, i64 0, i32 15
  store ptr %50, ptr %51, align 8, !tbaa !73
  %52 = icmp eq ptr %50, null
  br i1 %52, label %59, label %53

53:                                               ; preds = %42
  %54 = getelementptr inbounds %struct.ColorBand, ptr %50, i64 0, i32 6
  %55 = getelementptr inbounds %struct.ColorBand, ptr %50, i64 0, i32 6, i64 1
  %56 = getelementptr inbounds %struct.ColorBand, ptr %50, i64 0, i32 6, i64 1, i32 4
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(20) %54, i8 0, i64 20, i1 false)
  store float 1.000000e+00, ptr %56, align 4, !tbaa !133
  store <4 x float> <float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float 1.000000e+00>, ptr %55, align 4, !tbaa !116
  %57 = load ptr, ptr %40, align 8, !tbaa !72
  store i16 2, ptr %57, align 4, !tbaa !135
  br label %58

58:                                               ; preds = %53, %5, %15
  br label %59

59:                                               ; preds = %28, %42, %24, %11, %3, %15, %58
  %60 = phi i8 [ 0, %15 ], [ 1, %58 ], [ 0, %3 ], [ 0, %11 ], [ 0, %24 ], [ 0, %42 ], [ 0, %28 ]
  ret i8 %60
}

; Function Attrs: optsize
declare ptr @add_colorband(i8 noundef zeroext) local_unnamed_addr #5

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @dynamicPaint_Modifier_copy(ptr nocapture noundef readonly %0, ptr noundef %1) local_unnamed_addr #4 {
  %3 = getelementptr inbounds %struct.DynamicPaintModifierData, ptr %0, i64 0, i32 3
  %4 = load i32, ptr %3, align 8, !tbaa !137
  %5 = getelementptr inbounds %struct.DynamicPaintModifierData, ptr %1, i64 0, i32 3
  store i32 %4, ptr %5, align 8, !tbaa !137
  %6 = getelementptr inbounds %struct.DynamicPaintModifierData, ptr %0, i64 0, i32 1
  %7 = load ptr, ptr %6, align 8, !tbaa !104
  %8 = icmp eq ptr %7, null
  br i1 %8, label %11, label %9

9:                                                ; preds = %2
  %10 = tail call zeroext i8 @dynamicPaint_createType(ptr noundef nonnull %1, i32 noundef 1, ptr noundef null) #25, !range !49
  br label %11

11:                                               ; preds = %9, %2
  %12 = getelementptr inbounds %struct.DynamicPaintModifierData, ptr %0, i64 0, i32 2
  %13 = load ptr, ptr %12, align 8, !tbaa !64
  %14 = icmp eq ptr %13, null
  br i1 %14, label %17, label %15

15:                                               ; preds = %11
  %16 = tail call zeroext i8 @dynamicPaint_createType(ptr noundef nonnull %1, i32 noundef 2, ptr noundef null) #25, !range !49
  br label %17

17:                                               ; preds = %15, %11
  %18 = getelementptr inbounds %struct.DynamicPaintModifierData, ptr %1, i64 0, i32 1
  %19 = load ptr, ptr %18, align 8, !tbaa !104
  %20 = icmp eq ptr %19, null
  br i1 %20, label %105, label %21

21:                                               ; preds = %17
  store ptr %1, ptr %19, align 8, !tbaa !125
  %22 = getelementptr inbounds %struct.DynamicPaintCanvasSettings, ptr %19, i64 0, i32 2
  %23 = load ptr, ptr %22, align 8, !tbaa !105
  %24 = icmp eq ptr %23, null
  br i1 %24, label %26, label %25

25:                                               ; preds = %21
  tail call void @dynamicPaint_freeSurface(ptr noundef nonnull %23) #25
  br label %26

26:                                               ; preds = %25, %21
  %27 = load ptr, ptr %6, align 8, !tbaa !104
  %28 = getelementptr inbounds %struct.DynamicPaintCanvasSettings, ptr %27, i64 0, i32 2
  %29 = load ptr, ptr %28, align 8, !tbaa !44
  %30 = icmp eq ptr %29, null
  br i1 %30, label %103, label %31

31:                                               ; preds = %26, %31
  %32 = phi ptr [ %101, %31 ], [ %29, %26 ]
  %33 = load ptr, ptr %18, align 8, !tbaa !104
  %34 = tail call ptr @dynamicPaint_createNewSurface(ptr noundef %33, ptr noundef null) #25
  %35 = getelementptr inbounds %struct.DynamicPaintSurface, ptr %32, i64 0, i32 4
  %36 = load ptr, ptr %35, align 8, !tbaa !138
  %37 = getelementptr inbounds %struct.DynamicPaintSurface, ptr %34, i64 0, i32 4
  store ptr %36, ptr %37, align 8, !tbaa !138
  %38 = load ptr, ptr @MEM_freeN, align 8, !tbaa !44
  %39 = getelementptr inbounds %struct.DynamicPaintSurface, ptr %34, i64 0, i32 5
  %40 = load ptr, ptr %39, align 8, !tbaa !103
  tail call void %38(ptr noundef %40) #26
  %41 = load ptr, ptr @MEM_dupallocN, align 8, !tbaa !44
  %42 = getelementptr inbounds %struct.DynamicPaintSurface, ptr %32, i64 0, i32 5
  %43 = load ptr, ptr %42, align 8, !tbaa !103
  %44 = tail call ptr %41(ptr noundef %43) #26
  store ptr %44, ptr %39, align 8, !tbaa !103
  %45 = getelementptr inbounds %struct.DynamicPaintSurface, ptr %34, i64 0, i32 9
  %46 = getelementptr inbounds %struct.DynamicPaintSurface, ptr %32, i64 0, i32 9
  %47 = tail call ptr @BLI_strncpy(ptr noundef nonnull %45, ptr noundef nonnull %46, i64 noundef 64) #26
  %48 = getelementptr inbounds %struct.DynamicPaintSurface, ptr %32, i64 0, i32 10
  %49 = getelementptr inbounds %struct.DynamicPaintSurface, ptr %34, i64 0, i32 10
  %50 = load <4 x i16>, ptr %48, align 4, !tbaa !139
  store <4 x i16> %50, ptr %49, align 4, !tbaa !139
  %51 = getelementptr inbounds %struct.DynamicPaintSurface, ptr %32, i64 0, i32 14
  %52 = getelementptr inbounds %struct.DynamicPaintSurface, ptr %34, i64 0, i32 14
  %53 = load <2 x i16>, ptr %51, align 4, !tbaa !139
  store <2 x i16> %53, ptr %52, align 4, !tbaa !139
  %54 = getelementptr inbounds %struct.DynamicPaintSurface, ptr %32, i64 0, i32 16
  %55 = load i16, ptr %54, align 8, !tbaa !140
  %56 = getelementptr inbounds %struct.DynamicPaintSurface, ptr %34, i64 0, i32 16
  store i16 %55, ptr %56, align 8, !tbaa !140
  %57 = getelementptr inbounds %struct.DynamicPaintSurface, ptr %32, i64 0, i32 18
  %58 = getelementptr inbounds %struct.DynamicPaintSurface, ptr %34, i64 0, i32 18
  %59 = load <4 x i32>, ptr %57, align 4, !tbaa !122
  store <4 x i32> %59, ptr %58, align 4, !tbaa !122
  %60 = getelementptr inbounds %struct.DynamicPaintSurface, ptr %32, i64 0, i32 22
  %61 = getelementptr inbounds %struct.DynamicPaintSurface, ptr %34, i64 0, i32 22
  %62 = load <2 x i32>, ptr %60, align 4, !tbaa !122
  store <2 x i32> %62, ptr %61, align 4, !tbaa !122
  %63 = getelementptr inbounds %struct.DynamicPaintSurface, ptr %34, i64 0, i32 25
  %64 = getelementptr inbounds %struct.DynamicPaintSurface, ptr %32, i64 0, i32 25
  tail call fastcc void @copy_v4_v4(ptr noundef nonnull %63, ptr noundef nonnull %64) #25
  %65 = getelementptr inbounds %struct.DynamicPaintSurface, ptr %32, i64 0, i32 26
  %66 = load ptr, ptr %65, align 8, !tbaa !141
  %67 = getelementptr inbounds %struct.DynamicPaintSurface, ptr %34, i64 0, i32 26
  store ptr %66, ptr %67, align 8, !tbaa !141
  %68 = getelementptr inbounds %struct.DynamicPaintSurface, ptr %34, i64 0, i32 27
  %69 = getelementptr inbounds %struct.DynamicPaintSurface, ptr %32, i64 0, i32 27
  %70 = tail call ptr @BLI_strncpy(ptr noundef nonnull %68, ptr noundef nonnull %69, i64 noundef 64) #26
  %71 = getelementptr inbounds %struct.DynamicPaintSurface, ptr %32, i64 0, i32 28
  %72 = getelementptr inbounds %struct.DynamicPaintSurface, ptr %34, i64 0, i32 28
  %73 = load <2 x i32>, ptr %71, align 8, !tbaa !122
  store <2 x i32> %73, ptr %72, align 8, !tbaa !122
  %74 = getelementptr inbounds %struct.DynamicPaintSurface, ptr %32, i64 0, i32 30
  %75 = getelementptr inbounds %struct.DynamicPaintSurface, ptr %34, i64 0, i32 30
  %76 = load <4 x float>, ptr %74, align 8, !tbaa !116
  store <4 x float> %76, ptr %75, align 8, !tbaa !116
  %77 = getelementptr inbounds %struct.DynamicPaintSurface, ptr %32, i64 0, i32 34
  %78 = getelementptr inbounds %struct.DynamicPaintSurface, ptr %34, i64 0, i32 34
  %79 = load <4 x float>, ptr %77, align 8, !tbaa !116
  store <4 x float> %79, ptr %78, align 8, !tbaa !116
  %80 = getelementptr inbounds %struct.DynamicPaintSurface, ptr %32, i64 0, i32 38
  %81 = getelementptr inbounds %struct.DynamicPaintSurface, ptr %34, i64 0, i32 38
  %82 = load <4 x float>, ptr %80, align 8, !tbaa !116
  store <4 x float> %82, ptr %81, align 8, !tbaa !116
  %83 = getelementptr inbounds %struct.DynamicPaintSurface, ptr %32, i64 0, i32 42
  %84 = getelementptr inbounds %struct.DynamicPaintSurface, ptr %34, i64 0, i32 42
  %85 = load <2 x float>, ptr %83, align 8, !tbaa !116
  store <2 x float> %85, ptr %84, align 8, !tbaa !116
  %86 = getelementptr inbounds %struct.DynamicPaintSurface, ptr %32, i64 0, i32 44
  %87 = load float, ptr %86, align 8, !tbaa !124
  %88 = getelementptr inbounds %struct.DynamicPaintSurface, ptr %34, i64 0, i32 44
  store float %87, ptr %88, align 8, !tbaa !124
  %89 = getelementptr inbounds %struct.DynamicPaintSurface, ptr %34, i64 0, i32 46
  %90 = getelementptr inbounds %struct.DynamicPaintSurface, ptr %32, i64 0, i32 46
  %91 = tail call ptr @BLI_strncpy(ptr noundef nonnull %89, ptr noundef nonnull %90, i64 noundef 64) #26
  %92 = getelementptr inbounds %struct.DynamicPaintSurface, ptr %34, i64 0, i32 47
  %93 = getelementptr inbounds %struct.DynamicPaintSurface, ptr %32, i64 0, i32 47
  %94 = tail call ptr @BLI_strncpy(ptr noundef nonnull %92, ptr noundef nonnull %93, i64 noundef 1024) #26
  %95 = getelementptr inbounds %struct.DynamicPaintSurface, ptr %34, i64 0, i32 48
  %96 = getelementptr inbounds %struct.DynamicPaintSurface, ptr %32, i64 0, i32 48
  %97 = tail call ptr @BLI_strncpy(ptr noundef nonnull %95, ptr noundef nonnull %96, i64 noundef 64) #26
  %98 = getelementptr inbounds %struct.DynamicPaintSurface, ptr %34, i64 0, i32 49
  %99 = getelementptr inbounds %struct.DynamicPaintSurface, ptr %32, i64 0, i32 49
  %100 = tail call ptr @BLI_strncpy(ptr noundef nonnull %98, ptr noundef nonnull %99, i64 noundef 64) #26
  %101 = load ptr, ptr %32, align 8, !tbaa !44
  %102 = icmp eq ptr %101, null
  br i1 %102, label %103, label %31, !llvm.loop !142

103:                                              ; preds = %31, %26
  %104 = load ptr, ptr %18, align 8, !tbaa !104
  tail call void @dynamicPaint_resetPreview(ptr noundef %104) #25
  br label %146

105:                                              ; preds = %17
  %106 = getelementptr inbounds %struct.DynamicPaintModifierData, ptr %1, i64 0, i32 2
  %107 = load ptr, ptr %106, align 8, !tbaa !64
  %108 = icmp eq ptr %107, null
  br i1 %108, label %146, label %109

109:                                              ; preds = %105
  %110 = load ptr, ptr %12, align 8, !tbaa !64
  store ptr %1, ptr %107, align 8, !tbaa !126
  %111 = getelementptr inbounds %struct.DynamicPaintBrushSettings, ptr %110, i64 0, i32 4
  %112 = getelementptr inbounds %struct.DynamicPaintBrushSettings, ptr %107, i64 0, i32 4
  %113 = load <2 x i32>, ptr %111, align 8, !tbaa !122
  store <2 x i32> %113, ptr %112, align 8, !tbaa !122
  %114 = getelementptr inbounds %struct.DynamicPaintBrushSettings, ptr %110, i64 0, i32 6
  %115 = getelementptr inbounds %struct.DynamicPaintBrushSettings, ptr %107, i64 0, i32 6
  %116 = load <4 x float>, ptr %114, align 8, !tbaa !116
  store <4 x float> %116, ptr %115, align 8, !tbaa !116
  %117 = getelementptr inbounds %struct.DynamicPaintBrushSettings, ptr %110, i64 0, i32 10
  %118 = getelementptr inbounds %struct.DynamicPaintBrushSettings, ptr %107, i64 0, i32 10
  %119 = load <4 x float>, ptr %117, align 8, !tbaa !116
  store <4 x float> %119, ptr %118, align 8, !tbaa !116
  %120 = getelementptr inbounds %struct.DynamicPaintBrushSettings, ptr %110, i64 0, i32 2
  %121 = getelementptr inbounds %struct.DynamicPaintBrushSettings, ptr %107, i64 0, i32 2
  %122 = load <2 x ptr>, ptr %120, align 8, !tbaa !44
  store <2 x ptr> %122, ptr %121, align 8, !tbaa !44
  %123 = getelementptr inbounds %struct.DynamicPaintBrushSettings, ptr %110, i64 0, i32 14
  %124 = load ptr, ptr %123, align 8, !tbaa !72
  %125 = icmp eq ptr %124, null
  br i1 %125, label %129, label %126

126:                                              ; preds = %109
  %127 = getelementptr inbounds %struct.DynamicPaintBrushSettings, ptr %107, i64 0, i32 14
  %128 = load ptr, ptr %127, align 8, !tbaa !72
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(776) %128, ptr noundef nonnull align 4 dereferenceable(776) %124, i64 776, i1 false)
  br label %129

129:                                              ; preds = %126, %109
  %130 = getelementptr inbounds %struct.DynamicPaintBrushSettings, ptr %110, i64 0, i32 15
  %131 = load ptr, ptr %130, align 8, !tbaa !73
  %132 = icmp eq ptr %131, null
  br i1 %132, label %136, label %133

133:                                              ; preds = %129
  %134 = getelementptr inbounds %struct.DynamicPaintBrushSettings, ptr %107, i64 0, i32 15
  %135 = load ptr, ptr %134, align 8, !tbaa !73
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(776) %135, ptr noundef nonnull align 4 dereferenceable(776) %131, i64 776, i1 false)
  br label %136

136:                                              ; preds = %133, %129
  %137 = getelementptr inbounds %struct.DynamicPaintBrushSettings, ptr %110, i64 0, i32 16
  %138 = getelementptr inbounds %struct.DynamicPaintBrushSettings, ptr %107, i64 0, i32 16
  %139 = load <2 x i16>, ptr %137, align 8, !tbaa !139
  store <2 x i16> %139, ptr %138, align 8, !tbaa !139
  %140 = getelementptr inbounds %struct.DynamicPaintBrushSettings, ptr %110, i64 0, i32 18
  %141 = load i16, ptr %140, align 4, !tbaa !143
  %142 = getelementptr inbounds %struct.DynamicPaintBrushSettings, ptr %107, i64 0, i32 18
  store i16 %141, ptr %142, align 4, !tbaa !143
  %143 = getelementptr inbounds %struct.DynamicPaintBrushSettings, ptr %110, i64 0, i32 20
  %144 = getelementptr inbounds %struct.DynamicPaintBrushSettings, ptr %107, i64 0, i32 20
  %145 = load <4 x float>, ptr %143, align 8, !tbaa !116
  store <4 x float> %145, ptr %144, align 8, !tbaa !116
  br label %146

146:                                              ; preds = %105, %136, %103
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @copy_v4_v4(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1) unnamed_addr #7 !PGOFuncName !144 {
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
  %10 = getelementptr inbounds float, ptr %1, i64 3
  %11 = load float, ptr %10, align 4, !tbaa !116
  %12 = getelementptr inbounds float, ptr %0, i64 3
  store float %11, ptr %12, align 4, !tbaa !116
  ret void
}

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #8

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @dynamicPaint_clearSurface(ptr noundef %0, ptr noundef %1) local_unnamed_addr #4 {
  %3 = getelementptr inbounds %struct.DynamicPaintSurface, ptr %1, i64 0, i32 3
  %4 = load ptr, ptr %3, align 8, !tbaa !74
  %5 = icmp eq ptr %4, null
  br i1 %5, label %30, label %6

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.PaintSurfaceData, ptr %4, i64 0, i32 1
  %8 = load ptr, ptr %7, align 8, !tbaa !80
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
  %18 = load i32, ptr %17, align 8, !tbaa !145
  %19 = mul i32 %16, %18
  %20 = zext i32 %19 to i64
  tail call void @llvm.memset.p0.i64(ptr nonnull align 1 %8, i8 0, i64 %20, i1 false)
  %21 = load i16, ptr %11, align 2, !tbaa !43
  %22 = icmp eq i16 %21, 0
  br i1 %22, label %23, label %24

23:                                               ; preds = %10
  tail call fastcc void @dynamicPaint_setInitialColor(ptr noundef %0, ptr noundef nonnull %1) #25
  br label %24

24:                                               ; preds = %23, %10
  %25 = getelementptr inbounds %struct.PaintSurfaceData, ptr %4, i64 0, i32 3
  %26 = load ptr, ptr %25, align 8, !tbaa !89
  %27 = icmp eq ptr %26, null
  br i1 %27, label %30, label %28

28:                                               ; preds = %24
  %29 = getelementptr inbounds %struct.PaintBakeData, ptr %26, i64 0, i32 13
  store i32 1, ptr %29, align 8, !tbaa !146
  br label %30

30:                                               ; preds = %24, %28, %6, %2
  ret void
}

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #9

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @dynamicPaint_setInitialColor(ptr noundef %0, ptr noundef %1) unnamed_addr #4 !PGOFuncName !147 {
  %3 = alloca [64 x i8], align 16
  %4 = alloca [3 x float], align 4
  %5 = alloca %struct.TexResult, align 8
  %6 = alloca [9 x float], align 16
  %7 = alloca [3 x float], align 8
  %8 = alloca %struct.TexResult, align 8
  %9 = alloca [3 x [4 x float]], align 16
  %10 = alloca [4 x float], align 16
  %11 = getelementptr inbounds %struct.DynamicPaintSurface, ptr %1, i64 0, i32 3
  %12 = load ptr, ptr %11, align 8, !tbaa !74
  %13 = getelementptr inbounds %struct.PaintSurfaceData, ptr %12, i64 0, i32 1
  %14 = load ptr, ptr %13, align 8, !tbaa !80
  %15 = getelementptr inbounds %struct.DynamicPaintSurface, ptr %1, i64 0, i32 2
  %16 = load ptr, ptr %15, align 8, !tbaa !58
  %17 = getelementptr inbounds %struct.DynamicPaintCanvasSettings, ptr %16, i64 0, i32 1
  %18 = load ptr, ptr %17, align 8, !tbaa !108
  %19 = tail call zeroext i8 @BKE_scene_check_color_management_enabled(ptr noundef %0) #26
  %20 = getelementptr inbounds %struct.DynamicPaintSurface, ptr %1, i64 0, i32 11
  %21 = load i16, ptr %20, align 2, !tbaa !43
  %22 = icmp eq i16 %21, 0
  br i1 %22, label %23, label %243

23:                                               ; preds = %2
  %24 = getelementptr inbounds %struct.DynamicPaintSurface, ptr %1, i64 0, i32 16
  %25 = load i16, ptr %24, align 8, !tbaa !140
  switch i16 %25, label %243 [
    i16 3, label %155
    i16 1, label %26
    i16 2, label %42
  ]

26:                                               ; preds = %23
  %27 = getelementptr inbounds %struct.PaintSurfaceData, ptr %12, i64 0, i32 4
  %28 = load i32, ptr %27, align 8, !tbaa !145
  %29 = icmp sgt i32 %28, 0
  br i1 %29, label %30, label %243

30:                                               ; preds = %26
  %31 = getelementptr inbounds %struct.DynamicPaintSurface, ptr %1, i64 0, i32 25
  %32 = getelementptr inbounds %struct.DynamicPaintSurface, ptr %1, i64 0, i32 25, i64 3
  br label %33

33:                                               ; preds = %30, %33
  %34 = phi i64 [ 0, %30 ], [ %38, %33 ]
  %35 = getelementptr inbounds %struct.PaintPoint, ptr %14, i64 %34, i32 4
  tail call fastcc void @copy_v3_v3(ptr noundef nonnull %35, ptr noundef nonnull %31) #25
  %36 = load float, ptr %32, align 4, !tbaa !116
  %37 = getelementptr inbounds %struct.PaintPoint, ptr %14, i64 %34, i32 5
  store float %36, ptr %37, align 4, !tbaa !148
  %38 = add nuw nsw i64 %34, 1
  %39 = load i32, ptr %27, align 8, !tbaa !145
  %40 = sext i32 %39 to i64
  %41 = icmp slt i64 %38, %40
  br i1 %41, label %33, label %243, !llvm.loop !150

42:                                               ; preds = %23
  %43 = getelementptr inbounds %struct.DynamicPaintSurface, ptr %1, i64 0, i32 26
  %44 = load ptr, ptr %43, align 8, !tbaa !141
  %45 = getelementptr inbounds %struct.DerivedMesh, ptr %18, i64 0, i32 33
  %46 = load ptr, ptr %45, align 8, !tbaa !151
  %47 = tail call ptr %46(ptr noundef %18) #26
  %48 = getelementptr inbounds %struct.DerivedMesh, ptr %18, i64 0, i32 25
  %49 = load ptr, ptr %48, align 8, !tbaa !152
  %50 = tail call i32 %49(ptr noundef %18) #26
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %3) #27
  %51 = icmp eq ptr %44, null
  br i1 %51, label %242, label %52

52:                                               ; preds = %42
  %53 = getelementptr inbounds %struct.DerivedMesh, ptr %18, i64 0, i32 2
  %54 = getelementptr inbounds %struct.DynamicPaintSurface, ptr %1, i64 0, i32 27
  call void @CustomData_validate_layer_name(ptr noundef nonnull %53, i32 noundef 5, ptr noundef nonnull %54, ptr noundef nonnull %3) #26
  %55 = call ptr @CustomData_get_layer_named(ptr noundef nonnull %53, i32 noundef 5, ptr noundef nonnull %3) #26
  %56 = icmp eq ptr %55, null
  br i1 %56, label %242, label %57

57:                                               ; preds = %52
  %58 = getelementptr inbounds %struct.DynamicPaintSurface, ptr %1, i64 0, i32 10
  %59 = load i16, ptr %58, align 4, !tbaa !34
  switch i16 %59, label %154 [
    i16 1, label %60
    i16 2, label %104
  ]

60:                                               ; preds = %57
  %61 = call ptr @BKE_image_pool_new() #26
  %62 = icmp sgt i32 %50, 0
  br i1 %62, label %63, label %103

63:                                               ; preds = %60
  %64 = getelementptr inbounds [3 x float], ptr %4, i64 0, i64 1
  %65 = getelementptr inbounds %struct.TexResult, ptr %5, i64 0, i32 1
  %66 = zext nneg i32 %50 to i64
  %67 = getelementptr inbounds i8, ptr %4, i64 8
  br label %68

68:                                               ; preds = %63, %100
  %69 = phi i64 [ 0, %63 ], [ %101, %100 ]
  %70 = getelementptr inbounds %struct.MFace, ptr %47, i64 %69
  %71 = getelementptr inbounds %struct.MFace, ptr %47, i64 %69, i32 3
  %72 = load i32, ptr %71, align 4, !tbaa !153
  %73 = icmp eq i32 %72, 0
  %74 = select i1 %73, i64 3, i64 4
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %4) #27
  store i32 0, ptr %67, align 4
  %75 = getelementptr inbounds %struct.MTFace, ptr %55, i64 %69
  br label %76

76:                                               ; preds = %68, %97
  %77 = phi i64 [ 0, %68 ], [ %98, %97 ]
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %5) #27
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %5, i8 0, i64 32, i1 false)
  %78 = getelementptr inbounds i32, ptr %70, i64 %77
  %79 = getelementptr inbounds [4 x [2 x float]], ptr %75, i64 0, i64 %77
  %80 = load float, ptr %79, align 8, !tbaa !116
  %81 = call float @llvm.fmuladd.f32(float %80, float 2.000000e+00, float -1.000000e+00)
  store float %81, ptr %4, align 4, !tbaa !116
  %82 = getelementptr inbounds [4 x [2 x float]], ptr %75, i64 0, i64 %77, i64 1
  %83 = load float, ptr %82, align 4, !tbaa !116
  %84 = call float @llvm.fmuladd.f32(float %83, float 2.000000e+00, float -1.000000e+00)
  store float %84, ptr %64, align 4, !tbaa !116
  %85 = call i32 @multitex_ext_safe(ptr noundef nonnull %44, ptr noundef nonnull %4, ptr noundef nonnull %5, ptr noundef %61, i8 noundef zeroext %19) #26
  %86 = load float, ptr %5, align 8, !tbaa !155
  %87 = load i32, ptr %78, align 4, !tbaa !122
  %88 = zext i32 %87 to i64
  %89 = getelementptr inbounds %struct.PaintPoint, ptr %14, i64 %88, i32 5
  %90 = load float, ptr %89, align 4, !tbaa !148
  %91 = fcmp ogt float %86, %90
  br i1 %91, label %92, label %97

92:                                               ; preds = %76
  %93 = getelementptr inbounds %struct.PaintPoint, ptr %14, i64 %88, i32 4
  call fastcc void @copy_v3_v3(ptr noundef nonnull %93, ptr noundef nonnull %65) #25
  %94 = load i32, ptr %78, align 4, !tbaa !122
  %95 = zext i32 %94 to i64
  %96 = getelementptr inbounds %struct.PaintPoint, ptr %14, i64 %95, i32 5
  store float %86, ptr %96, align 4, !tbaa !148
  br label %97

97:                                               ; preds = %92, %76
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %5) #27
  %98 = add nuw nsw i64 %77, 1
  %99 = icmp eq i64 %98, %74
  br i1 %99, label %100, label %76, !llvm.loop !157

100:                                              ; preds = %97
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %4) #27
  %101 = add nuw nsw i64 %69, 1
  %102 = icmp eq i64 %101, %66
  br i1 %102, label %103, label %68, !llvm.loop !158

103:                                              ; preds = %100, %60
  call void @BKE_image_pool_free(ptr noundef %61) #26
  br label %154

104:                                              ; preds = %57
  %105 = load ptr, ptr %12, align 8, !tbaa !75
  %106 = getelementptr inbounds %struct.PaintSurfaceData, ptr %12, i64 0, i32 4
  %107 = load i32, ptr %106, align 8, !tbaa !145
  %108 = icmp sgt i32 %107, 0
  br i1 %108, label %109, label %154

109:                                              ; preds = %104
  %110 = getelementptr inbounds %struct.DynamicPaintSurface, ptr %1, i64 0, i32 18
  %111 = load i32, ptr %110, align 4, !tbaa !50
  %112 = and i32 %111, 2
  %113 = icmp eq i32 %112, 0
  %114 = select i1 %113, i64 1, i64 5
  %115 = getelementptr inbounds [9 x float], ptr %6, i64 0, i64 3
  %116 = getelementptr inbounds [9 x float], ptr %6, i64 0, i64 6
  %117 = getelementptr inbounds %struct.ImgSeqFormatData, ptr %105, i64 0, i32 1
  %118 = getelementptr inbounds %struct.TexResult, ptr %8, i64 0, i32 1
  br label %119

119:                                              ; preds = %109, %140
  %120 = phi i64 [ 0, %109 ], [ %150, %140 ]
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %6) #27
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(36) %6, i8 0, i64 36, i1 false)
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %7) #27
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(12) %7, i8 0, i64 12, i1 false)
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %8) #27
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %8, i8 0, i64 32, i1 false)
  %121 = load ptr, ptr %105, align 8, !tbaa !77
  %122 = getelementptr inbounds %struct.PaintUVPoint, ptr %121, i64 %120
  %123 = getelementptr inbounds %struct.PaintUVPoint, ptr %121, i64 %120, i32 6
  br label %124

124:                                              ; preds = %119, %124
  %125 = phi i64 [ 0, %119 ], [ %130, %124 ]
  %126 = load i16, ptr %123, align 4, !tbaa !159
  %127 = icmp ne i16 %126, 0
  %128 = icmp ne i64 %125, 0
  %129 = and i1 %128, %127
  %130 = add nuw nsw i64 %125, 1
  %131 = select i1 %129, i64 %130, i64 %125
  %132 = mul nuw nsw i64 %125, 3
  %133 = getelementptr inbounds [9 x float], ptr %6, i64 0, i64 %132
  %134 = load i32, ptr %122, align 4, !tbaa !161
  %135 = zext i32 %134 to i64
  %136 = getelementptr inbounds %struct.MTFace, ptr %55, i64 %135
  %137 = and i64 %131, 4294967295
  %138 = getelementptr inbounds [4 x [2 x float]], ptr %136, i64 0, i64 %137
  call fastcc void @copy_v2_v2(ptr noundef nonnull %133, ptr noundef nonnull %138) #25
  %139 = icmp eq i64 %130, 3
  br i1 %139, label %140, label %124, !llvm.loop !162

140:                                              ; preds = %124
  %141 = load ptr, ptr %117, align 8, !tbaa !79
  %142 = mul nuw nsw i64 %120, %114
  %143 = getelementptr inbounds %struct.Vec3f, ptr %141, i64 %142
  call void @interp_v3_v3v3v3(ptr noundef nonnull %7, ptr noundef nonnull %6, ptr noundef nonnull %115, ptr noundef nonnull %116, ptr noundef %143) #26
  %144 = load <2 x float>, ptr %7, align 8, !tbaa !116
  %145 = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %144, <2 x float> <float 2.000000e+00, float 2.000000e+00>, <2 x float> <float -1.000000e+00, float -1.000000e+00>)
  store <2 x float> %145, ptr %7, align 8, !tbaa !116
  %146 = call i32 @multitex_ext_safe(ptr noundef nonnull %44, ptr noundef nonnull %7, ptr noundef nonnull %8, ptr noundef null, i8 noundef zeroext %19) #26
  %147 = getelementptr inbounds %struct.PaintPoint, ptr %14, i64 %120, i32 4
  call fastcc void @copy_v3_v3(ptr noundef nonnull %147, ptr noundef nonnull %118) #25
  %148 = load float, ptr %8, align 8, !tbaa !155
  %149 = getelementptr inbounds %struct.PaintPoint, ptr %14, i64 %120, i32 5
  store float %148, ptr %149, align 4, !tbaa !148
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %8) #27
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %7) #27
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %6) #27
  %150 = add nuw nsw i64 %120, 1
  %151 = load i32, ptr %106, align 8, !tbaa !145
  %152 = sext i32 %151 to i64
  %153 = icmp slt i64 %150, %152
  br i1 %153, label %119, label %154, !llvm.loop !163

154:                                              ; preds = %140, %104, %103, %57
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %3) #27
  br label %243

155:                                              ; preds = %23
  %156 = getelementptr inbounds %struct.DynamicPaintSurface, ptr %1, i64 0, i32 10
  %157 = load i16, ptr %156, align 4, !tbaa !34
  switch i16 %157, label %243 [
    i16 1, label %158
    i16 2, label %186
  ]

158:                                              ; preds = %155
  %159 = getelementptr inbounds %struct.DerivedMesh, ptr %18, i64 0, i32 34
  %160 = load ptr, ptr %159, align 8, !tbaa !164
  %161 = tail call ptr %160(ptr noundef %18) #26
  %162 = getelementptr inbounds %struct.DerivedMesh, ptr %18, i64 0, i32 26
  %163 = load ptr, ptr %162, align 8, !tbaa !165
  %164 = tail call i32 %163(ptr noundef %18) #26
  %165 = getelementptr inbounds %struct.DerivedMesh, ptr %18, i64 0, i32 3
  %166 = getelementptr inbounds %struct.DynamicPaintSurface, ptr %1, i64 0, i32 27
  %167 = tail call ptr @CustomData_get_layer_named(ptr noundef nonnull %165, i32 noundef 17, ptr noundef nonnull %166) #26
  %168 = icmp ne ptr %167, null
  %169 = icmp sgt i32 %164, 0
  %170 = select i1 %168, i1 %169, i1 false
  br i1 %170, label %171, label %243

171:                                              ; preds = %158
  %172 = zext nneg i32 %164 to i64
  br label %173

173:                                              ; preds = %171, %173
  %174 = phi i64 [ 0, %171 ], [ %184, %173 ]
  %175 = getelementptr inbounds %struct.MCol, ptr %167, i64 %174
  %176 = getelementptr inbounds %struct.MLoop, ptr %161, i64 %174
  %177 = load i32, ptr %176, align 4, !tbaa !166
  %178 = zext i32 %177 to i64
  %179 = getelementptr inbounds %struct.PaintPoint, ptr %14, i64 %178, i32 4
  %180 = load <4 x i8>, ptr %175, align 1, !tbaa !60
  %181 = uitofp <4 x i8> %180 to <4 x float>
  %182 = fmul <4 x float> %181, <float 0x3F70101020000000, float 0x3F70101020000000, float 0x3F70101020000000, float 0x3F70101020000000>
  %183 = shufflevector <4 x float> %182, <4 x float> poison, <4 x i32> <i32 3, i32 2, i32 1, i32 0>
  store <4 x float> %183, ptr %179, align 4, !tbaa !116
  %184 = add nuw nsw i64 %174, 1
  %185 = icmp eq i64 %184, %172
  br i1 %185, label %243, label %173, !llvm.loop !168

186:                                              ; preds = %155
  %187 = load ptr, ptr %12, align 8, !tbaa !75
  %188 = getelementptr inbounds %struct.DynamicPaintSurface, ptr %1, i64 0, i32 18
  %189 = load i32, ptr %188, align 4, !tbaa !50
  %190 = and i32 %189, 2
  %191 = icmp eq i32 %190, 0
  %192 = select i1 %191, i64 1, i64 5
  %193 = getelementptr inbounds %struct.DerivedMesh, ptr %18, i64 0, i32 2
  %194 = getelementptr inbounds %struct.DynamicPaintSurface, ptr %1, i64 0, i32 27
  %195 = tail call ptr @CustomData_get_layer_named(ptr noundef nonnull %193, i32 noundef 6, ptr noundef nonnull %194) #26
  %196 = icmp eq ptr %195, null
  br i1 %196, label %243, label %197

197:                                              ; preds = %186
  %198 = getelementptr inbounds %struct.PaintSurfaceData, ptr %12, i64 0, i32 4
  %199 = load i32, ptr %198, align 8, !tbaa !145
  %200 = icmp sgt i32 %199, 0
  br i1 %200, label %201, label %243

201:                                              ; preds = %197
  %202 = getelementptr inbounds [3 x [4 x float]], ptr %9, i64 0, i64 1
  %203 = getelementptr inbounds [3 x [4 x float]], ptr %9, i64 0, i64 2
  %204 = getelementptr inbounds %struct.ImgSeqFormatData, ptr %187, i64 0, i32 1
  %205 = getelementptr inbounds [4 x float], ptr %10, i64 0, i64 3
  br label %206

206:                                              ; preds = %201, %231
  %207 = phi i64 [ 0, %201 ], [ %238, %231 ]
  %208 = load ptr, ptr %187, align 8, !tbaa !77
  %209 = getelementptr inbounds %struct.PaintUVPoint, ptr %208, i64 %207
  %210 = load i32, ptr %209, align 4, !tbaa !161
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %9) #27
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(48) %9, i8 0, i64 48, i1 false)
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %10) #27
  %211 = getelementptr inbounds %struct.PaintUVPoint, ptr %208, i64 %207, i32 6
  %212 = load i16, ptr %211, align 4, !tbaa !159
  %213 = icmp ne i16 %212, 0
  %214 = shl nsw i32 %210, 2
  br label %215

215:                                              ; preds = %206, %215
  %216 = phi i64 [ 0, %206 ], [ %219, %215 ]
  %217 = icmp ne i64 %216, 0
  %218 = and i1 %217, %213
  %219 = add nuw nsw i64 %216, 1
  %220 = select i1 %218, i64 %219, i64 %216
  %221 = trunc i64 %220 to i32
  %222 = add nuw nsw i32 %214, %221
  %223 = sext i32 %222 to i64
  %224 = getelementptr inbounds %struct.MCol, ptr %195, i64 %223
  %225 = getelementptr inbounds [3 x [4 x float]], ptr %9, i64 0, i64 %216
  %226 = load <4 x i8>, ptr %224, align 1, !tbaa !60
  %227 = uitofp <4 x i8> %226 to <4 x float>
  %228 = fmul <4 x float> %227, <float 0x3F70101020000000, float 0x3F70101020000000, float 0x3F70101020000000, float 0x3F70101020000000>
  %229 = shufflevector <4 x float> %228, <4 x float> poison, <4 x i32> <i32 3, i32 2, i32 1, i32 0>
  store <4 x float> %229, ptr %225, align 16, !tbaa !116
  %230 = icmp eq i64 %219, 3
  br i1 %230, label %231, label %215, !llvm.loop !169

231:                                              ; preds = %215
  %232 = load ptr, ptr %204, align 8, !tbaa !79
  %233 = mul nuw nsw i64 %207, %192
  %234 = getelementptr inbounds %struct.Vec3f, ptr %232, i64 %233
  call void @interp_v4_v4v4v4(ptr noundef nonnull %10, ptr noundef nonnull %9, ptr noundef nonnull %202, ptr noundef nonnull %203, ptr noundef %234) #26
  %235 = getelementptr inbounds %struct.PaintPoint, ptr %14, i64 %207, i32 4
  call fastcc void @copy_v3_v3(ptr noundef nonnull %235, ptr noundef nonnull %10) #25
  %236 = load float, ptr %205, align 4, !tbaa !116
  %237 = getelementptr inbounds %struct.PaintPoint, ptr %14, i64 %207, i32 5
  store float %236, ptr %237, align 4, !tbaa !148
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %10) #27
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %9) #27
  %238 = add nuw nsw i64 %207, 1
  %239 = load i32, ptr %198, align 8, !tbaa !145
  %240 = sext i32 %239 to i64
  %241 = icmp slt i64 %238, %240
  br i1 %241, label %206, label %243, !llvm.loop !170

242:                                              ; preds = %52, %42
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %3) #27
  br label %243

243:                                              ; preds = %33, %231, %173, %26, %197, %186, %158, %154, %23, %155, %242, %2
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef zeroext i8 @dynamicPaint_resetSurface(ptr noundef %0, ptr noundef %1) local_unnamed_addr #4 {
  %3 = tail call fastcc i32 @dynamicPaint_surfaceNumOfPoints(ptr noundef %1) #25
  %4 = getelementptr inbounds %struct.DynamicPaintSurface, ptr %1, i64 0, i32 3
  %5 = load ptr, ptr %4, align 8, !tbaa !74
  %6 = icmp eq ptr %5, null
  br i1 %6, label %8, label %7

7:                                                ; preds = %2
  tail call void @dynamicPaint_freeSurfaceData(ptr noundef nonnull %1) #25
  br label %8

8:                                                ; preds = %7, %2
  %9 = getelementptr inbounds %struct.DynamicPaintSurface, ptr %1, i64 0, i32 10
  %10 = load i16, ptr %9, align 4, !tbaa !34
  %11 = icmp eq i16 %10, 2
  br i1 %11, label %24, label %12

12:                                               ; preds = %8
  %13 = icmp slt i32 %3, 1
  br i1 %13, label %24, label %14

14:                                               ; preds = %12
  %15 = load ptr, ptr @MEM_callocN, align 8, !tbaa !44
  %16 = tail call ptr %15(i64 noundef 40, ptr noundef nonnull @.str.11) #26
  store ptr %16, ptr %4, align 8, !tbaa !74
  %17 = icmp eq ptr %16, null
  br i1 %17, label %24, label %18

18:                                               ; preds = %14
  %19 = getelementptr inbounds %struct.PaintSurfaceData, ptr %16, i64 0, i32 4
  store i32 %3, ptr %19, align 8, !tbaa !145
  tail call fastcc void @dynamicPaint_allocateSurfaceType(ptr noundef nonnull %1) #25
  tail call fastcc void @dynamicPaint_initAdjacencyData(ptr noundef nonnull %1, i32 noundef 0) #25
  %20 = getelementptr inbounds %struct.DynamicPaintSurface, ptr %1, i64 0, i32 11
  %21 = load i16, ptr %20, align 2, !tbaa !43
  %22 = icmp eq i16 %21, 0
  br i1 %22, label %23, label %24

23:                                               ; preds = %18
  tail call fastcc void @dynamicPaint_setInitialColor(ptr noundef %0, ptr noundef nonnull %1) #25
  br label %24

24:                                               ; preds = %18, %23, %14, %12, %8
  %25 = phi i8 [ 1, %8 ], [ 0, %12 ], [ 0, %14 ], [ 1, %23 ], [ 1, %18 ]
  ret i8 %25
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc i32 @dynamicPaint_surfaceNumOfPoints(ptr nocapture noundef readonly %0) unnamed_addr #4 !PGOFuncName !171 {
  %2 = getelementptr inbounds %struct.DynamicPaintSurface, ptr %0, i64 0, i32 10
  %3 = load i16, ptr %2, align 4, !tbaa !34
  %4 = icmp eq i16 %3, 1
  br i1 %4, label %5, label %15

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.DynamicPaintSurface, ptr %0, i64 0, i32 2
  %7 = load ptr, ptr %6, align 8, !tbaa !58
  %8 = getelementptr inbounds %struct.DynamicPaintCanvasSettings, ptr %7, i64 0, i32 1
  %9 = load ptr, ptr %8, align 8, !tbaa !108
  %10 = icmp eq ptr %9, null
  br i1 %10, label %15, label %11

11:                                               ; preds = %5
  %12 = getelementptr inbounds %struct.DerivedMesh, ptr %9, i64 0, i32 23
  %13 = load ptr, ptr %12, align 8, !tbaa !172
  %14 = tail call i32 %13(ptr noundef nonnull %9) #26
  br label %15

15:                                               ; preds = %1, %5, %11
  %16 = phi i32 [ %14, %11 ], [ 0, %5 ], [ 0, %1 ]
  ret i32 %16
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @dynamicPaint_allocateSurfaceType(ptr nocapture noundef readonly %0) unnamed_addr #4 !PGOFuncName !173 {
  %2 = getelementptr inbounds %struct.DynamicPaintSurface, ptr %0, i64 0, i32 3
  %3 = load ptr, ptr %2, align 8, !tbaa !74
  %4 = getelementptr inbounds %struct.DynamicPaintSurface, ptr %0, i64 0, i32 11
  %5 = load i16, ptr %4, align 2, !tbaa !43
  switch i16 %5, label %6 [
    i16 0, label %9
    i16 1, label %17
    i16 2, label %25
    i16 3, label %33
  ]

6:                                                ; preds = %1
  %7 = getelementptr inbounds %struct.PaintSurfaceData, ptr %3, i64 0, i32 1
  %8 = load ptr, ptr %7, align 8, !tbaa !80
  br label %41

9:                                                ; preds = %1
  %10 = load ptr, ptr @MEM_callocN, align 8, !tbaa !44
  %11 = getelementptr inbounds %struct.PaintSurfaceData, ptr %3, i64 0, i32 4
  %12 = load i32, ptr %11, align 8, !tbaa !145
  %13 = sext i32 %12 to i64
  %14 = mul nsw i64 %13, 40
  %15 = tail call ptr %10(i64 noundef %14, ptr noundef nonnull @.str.26) #26
  %16 = getelementptr inbounds %struct.PaintSurfaceData, ptr %3, i64 0, i32 1
  store ptr %15, ptr %16, align 8, !tbaa !80
  br label %41

17:                                               ; preds = %1
  %18 = load ptr, ptr @MEM_callocN, align 8, !tbaa !44
  %19 = getelementptr inbounds %struct.PaintSurfaceData, ptr %3, i64 0, i32 4
  %20 = load i32, ptr %19, align 8, !tbaa !145
  %21 = sext i32 %20 to i64
  %22 = shl nsw i64 %21, 2
  %23 = tail call ptr %18(i64 noundef %22, ptr noundef nonnull @.str.27) #26
  %24 = getelementptr inbounds %struct.PaintSurfaceData, ptr %3, i64 0, i32 1
  store ptr %23, ptr %24, align 8, !tbaa !80
  br label %41

25:                                               ; preds = %1
  %26 = load ptr, ptr @MEM_callocN, align 8, !tbaa !44
  %27 = getelementptr inbounds %struct.PaintSurfaceData, ptr %3, i64 0, i32 4
  %28 = load i32, ptr %27, align 8, !tbaa !145
  %29 = sext i32 %28 to i64
  %30 = shl nsw i64 %29, 2
  %31 = tail call ptr %26(i64 noundef %30, ptr noundef nonnull @.str.28) #26
  %32 = getelementptr inbounds %struct.PaintSurfaceData, ptr %3, i64 0, i32 1
  store ptr %31, ptr %32, align 8, !tbaa !80
  br label %41

33:                                               ; preds = %1
  %34 = load ptr, ptr @MEM_callocN, align 8, !tbaa !44
  %35 = getelementptr inbounds %struct.PaintSurfaceData, ptr %3, i64 0, i32 4
  %36 = load i32, ptr %35, align 8, !tbaa !145
  %37 = sext i32 %36 to i64
  %38 = shl nsw i64 %37, 4
  %39 = tail call ptr %34(i64 noundef %38, ptr noundef nonnull @.str.29) #26
  %40 = getelementptr inbounds %struct.PaintSurfaceData, ptr %3, i64 0, i32 1
  store ptr %39, ptr %40, align 8, !tbaa !80
  br label %41

41:                                               ; preds = %6, %33, %25, %17, %9
  %42 = phi ptr [ %8, %6 ], [ %39, %33 ], [ %31, %25 ], [ %23, %17 ], [ %15, %9 ]
  %43 = icmp eq ptr %42, null
  br i1 %43, label %44, label %47

44:                                               ; preds = %41
  %45 = getelementptr inbounds %struct.DynamicPaintSurface, ptr %0, i64 0, i32 2
  %46 = load ptr, ptr %45, align 8, !tbaa !58
  tail call fastcc void @setError(ptr noundef %46, ptr noundef nonnull @.str.17) #25
  br label %47

47:                                               ; preds = %44, %41
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @dynamicPaint_initAdjacencyData(ptr nocapture noundef readonly %0, i32 noundef %1) unnamed_addr #4 !PGOFuncName !174 {
  %3 = getelementptr inbounds %struct.DynamicPaintSurface, ptr %0, i64 0, i32 3
  %4 = load ptr, ptr %3, align 8, !tbaa !74
  %5 = getelementptr inbounds %struct.DynamicPaintSurface, ptr %0, i64 0, i32 2
  %6 = load ptr, ptr %5, align 8, !tbaa !58
  %7 = getelementptr inbounds %struct.DynamicPaintCanvasSettings, ptr %6, i64 0, i32 1
  %8 = load ptr, ptr %7, align 8, !tbaa !108
  %9 = tail call fastcc i32 @surface_usesAdjData(ptr noundef %0) #25, !range !175
  %10 = or i32 %9, %1
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %229, label %12

12:                                               ; preds = %2
  %13 = getelementptr inbounds %struct.DynamicPaintSurface, ptr %0, i64 0, i32 10
  %14 = load i16, ptr %13, align 4, !tbaa !34
  switch i16 %14, label %229 [
    i16 1, label %15
    i16 2, label %20
  ]

15:                                               ; preds = %12
  %16 = getelementptr inbounds %struct.DerivedMesh, ptr %8, i64 0, i32 24
  %17 = load ptr, ptr %16, align 8, !tbaa !176
  %18 = tail call i32 %17(ptr noundef %8) #26
  %19 = shl nsw i32 %18, 1
  br label %24

20:                                               ; preds = %12
  %21 = getelementptr inbounds %struct.PaintSurfaceData, ptr %4, i64 0, i32 4
  %22 = load i32, ptr %21, align 8, !tbaa !145
  %23 = shl nsw i32 %22, 3
  br label %24

24:                                               ; preds = %20, %15
  %25 = phi i32 [ %19, %15 ], [ %23, %20 ]
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %229, label %27

27:                                               ; preds = %24
  %28 = load ptr, ptr @MEM_callocN, align 8, !tbaa !44
  %29 = tail call ptr %28(i64 noundef 40, ptr noundef nonnull @.str.30) #26
  %30 = getelementptr inbounds %struct.PaintSurfaceData, ptr %4, i64 0, i32 2
  store ptr %29, ptr %30, align 8, !tbaa !82
  %31 = icmp eq ptr %29, null
  br i1 %31, label %229, label %32

32:                                               ; preds = %27
  %33 = load ptr, ptr @MEM_callocN, align 8, !tbaa !44
  %34 = getelementptr inbounds %struct.PaintSurfaceData, ptr %4, i64 0, i32 4
  %35 = load i32, ptr %34, align 8, !tbaa !145
  %36 = sext i32 %35 to i64
  %37 = shl nsw i64 %36, 2
  %38 = tail call ptr %33(i64 noundef %37, ptr noundef nonnull @.str.31) #26
  %39 = getelementptr inbounds %struct.PaintAdjData, ptr %29, i64 0, i32 1
  store ptr %38, ptr %39, align 8, !tbaa !83
  %40 = load ptr, ptr @MEM_callocN, align 8, !tbaa !44
  %41 = load i32, ptr %34, align 8, !tbaa !145
  %42 = sext i32 %41 to i64
  %43 = shl nsw i64 %42, 2
  %44 = tail call ptr %40(i64 noundef %43, ptr noundef nonnull @.str.32) #26
  %45 = getelementptr inbounds %struct.PaintAdjData, ptr %29, i64 0, i32 2
  store ptr %44, ptr %45, align 8, !tbaa !85
  %46 = load ptr, ptr @MEM_callocN, align 8, !tbaa !44
  %47 = load i32, ptr %34, align 8, !tbaa !145
  %48 = sext i32 %47 to i64
  %49 = shl nsw i64 %48, 2
  %50 = tail call ptr %46(i64 noundef %49, ptr noundef nonnull @.str.33) #26
  %51 = load ptr, ptr @MEM_callocN, align 8, !tbaa !44
  %52 = sext i32 %25 to i64
  %53 = shl nsw i64 %52, 2
  %54 = tail call ptr %51(i64 noundef %53, ptr noundef nonnull @.str.34) #26
  store ptr %54, ptr %29, align 8, !tbaa !86
  %55 = load ptr, ptr @MEM_callocN, align 8, !tbaa !44
  %56 = load i32, ptr %34, align 8, !tbaa !145
  %57 = sext i32 %56 to i64
  %58 = shl nsw i64 %57, 2
  %59 = tail call ptr %55(i64 noundef %58, ptr noundef nonnull @.str.35) #26
  %60 = getelementptr inbounds %struct.PaintAdjData, ptr %29, i64 0, i32 3
  store ptr %59, ptr %60, align 8, !tbaa !87
  %61 = getelementptr inbounds %struct.PaintAdjData, ptr %29, i64 0, i32 4
  store i32 %25, ptr %61, align 8, !tbaa !177
  %62 = load ptr, ptr %39, align 8, !tbaa !83
  %63 = icmp eq ptr %62, null
  br i1 %63, label %72, label %64

64:                                               ; preds = %32
  %65 = load ptr, ptr %45, align 8, !tbaa !85
  %66 = icmp eq ptr %65, null
  br i1 %66, label %72, label %67

67:                                               ; preds = %64
  %68 = load ptr, ptr %29, align 8, !tbaa !86
  %69 = icmp ne ptr %68, null
  %70 = icmp ne ptr %50, null
  %71 = select i1 %69, i1 %70, i1 false
  br i1 %71, label %78, label %72

72:                                               ; preds = %67, %64, %32
  tail call fastcc void @dynamicPaint_freeAdjData(ptr noundef nonnull %4) #25
  %73 = icmp eq ptr %50, null
  br i1 %73, label %76, label %74

74:                                               ; preds = %72
  %75 = load ptr, ptr @MEM_freeN, align 8, !tbaa !44
  tail call void %75(ptr noundef nonnull %50) #26
  br label %76

76:                                               ; preds = %74, %72
  %77 = load ptr, ptr %5, align 8, !tbaa !58
  tail call fastcc void @setError(ptr noundef %77, ptr noundef nonnull @.str.17) #25
  br label %229

78:                                               ; preds = %67
  %79 = load i16, ptr %13, align 4, !tbaa !34
  %80 = icmp eq i16 %79, 1
  br i1 %80, label %81, label %227

81:                                               ; preds = %78
  %82 = getelementptr inbounds %struct.DerivedMesh, ptr %8, i64 0, i32 24
  %83 = load ptr, ptr %82, align 8, !tbaa !176
  %84 = tail call i32 %83(ptr noundef %8) #26
  %85 = getelementptr inbounds %struct.DerivedMesh, ptr %8, i64 0, i32 27
  %86 = load ptr, ptr %85, align 8, !tbaa !178
  %87 = tail call i32 %86(ptr noundef %8) #26
  %88 = getelementptr inbounds %struct.DerivedMesh, ptr %8, i64 0, i32 32
  %89 = load ptr, ptr %88, align 8, !tbaa !179
  %90 = tail call ptr %89(ptr noundef %8) #26
  %91 = getelementptr inbounds %struct.DerivedMesh, ptr %8, i64 0, i32 35
  %92 = load ptr, ptr %91, align 8, !tbaa !180
  %93 = tail call ptr %92(ptr noundef %8) #26
  %94 = getelementptr inbounds %struct.DerivedMesh, ptr %8, i64 0, i32 34
  %95 = load ptr, ptr %94, align 8, !tbaa !164
  %96 = tail call ptr %95(ptr noundef %8) #26
  %97 = icmp sgt i32 %84, 0
  br i1 %97, label %98, label %101

98:                                               ; preds = %81
  %99 = load ptr, ptr %45, align 8, !tbaa !85
  %100 = zext nneg i32 %84 to i64
  br label %105

101:                                              ; preds = %105, %81
  %102 = icmp sgt i32 %87, 0
  br i1 %102, label %103, label %138

103:                                              ; preds = %101
  %104 = zext nneg i32 %87 to i64
  br label %131

105:                                              ; preds = %98, %105
  %106 = phi i64 [ 0, %98 ], [ %129, %105 ]
  %107 = getelementptr inbounds %struct.MEdge, ptr %90, i64 %106
  %108 = load i32, ptr %107, align 4, !tbaa !181
  %109 = zext i32 %108 to i64
  %110 = getelementptr inbounds i32, ptr %99, i64 %109
  %111 = load i32, ptr %110, align 4, !tbaa !122
  %112 = add nsw i32 %111, 1
  store i32 %112, ptr %110, align 4, !tbaa !122
  %113 = getelementptr inbounds %struct.MEdge, ptr %90, i64 %106, i32 1
  %114 = load i32, ptr %113, align 4, !tbaa !183
  %115 = zext i32 %114 to i64
  %116 = getelementptr inbounds i32, ptr %99, i64 %115
  %117 = load i32, ptr %116, align 4, !tbaa !122
  %118 = add nsw i32 %117, 1
  store i32 %118, ptr %116, align 4, !tbaa !122
  %119 = load i32, ptr %107, align 4, !tbaa !181
  %120 = zext i32 %119 to i64
  %121 = getelementptr inbounds i32, ptr %50, i64 %120
  %122 = load i32, ptr %121, align 4, !tbaa !122
  %123 = add nsw i32 %122, 1
  store i32 %123, ptr %121, align 4, !tbaa !122
  %124 = load i32, ptr %113, align 4, !tbaa !183
  %125 = zext i32 %124 to i64
  %126 = getelementptr inbounds i32, ptr %50, i64 %125
  %127 = load i32, ptr %126, align 4, !tbaa !122
  %128 = add nsw i32 %127, 1
  store i32 %128, ptr %126, align 4, !tbaa !122
  %129 = add nuw nsw i64 %106, 1
  %130 = icmp eq i64 %129, %100
  br i1 %130, label %101, label %105, !llvm.loop !184

131:                                              ; preds = %103, %155
  %132 = phi i64 [ 0, %103 ], [ %156, %155 ]
  %133 = getelementptr inbounds %struct.MPoly, ptr %93, i64 %132, i32 1
  %134 = load i32, ptr %133, align 4, !tbaa !185
  %135 = icmp sgt i32 %134, 0
  br i1 %135, label %136, label %155

136:                                              ; preds = %131
  %137 = getelementptr inbounds %struct.MPoly, ptr %93, i64 %132
  br label %141

138:                                              ; preds = %155, %101
  %139 = load i32, ptr %34, align 8, !tbaa !145
  %140 = icmp sgt i32 %139, 0
  br i1 %140, label %163, label %181

141:                                              ; preds = %136, %141
  %142 = phi i32 [ 0, %136 ], [ %152, %141 ]
  %143 = load i32, ptr %137, align 4, !tbaa !187
  %144 = add nsw i32 %143, %142
  %145 = sext i32 %144 to i64
  %146 = getelementptr inbounds %struct.MLoop, ptr %96, i64 %145
  %147 = load i32, ptr %146, align 4, !tbaa !166
  %148 = zext i32 %147 to i64
  %149 = getelementptr inbounds i32, ptr %50, i64 %148
  %150 = load i32, ptr %149, align 4, !tbaa !122
  %151 = add nsw i32 %150, 1
  store i32 %151, ptr %149, align 4, !tbaa !122
  %152 = add nuw nsw i32 %142, 1
  %153 = load i32, ptr %133, align 4, !tbaa !185
  %154 = icmp slt i32 %152, %153
  br i1 %154, label %141, label %155, !llvm.loop !188

155:                                              ; preds = %141, %131
  %156 = add nuw nsw i64 %132, 1
  %157 = icmp eq i64 %156, %104
  br i1 %157, label %138, label %131, !llvm.loop !189

158:                                              ; preds = %176
  %159 = icmp sgt i32 %178, 0
  br i1 %159, label %160, label %181

160:                                              ; preds = %158
  %161 = load ptr, ptr %39, align 8, !tbaa !83
  %162 = load ptr, ptr %45, align 8, !tbaa !85
  br label %186

163:                                              ; preds = %138, %176
  %164 = phi i64 [ %177, %176 ], [ 0, %138 ]
  %165 = getelementptr inbounds i32, ptr %50, i64 %164
  %166 = load i32, ptr %165, align 4, !tbaa !122
  %167 = and i32 %166, 1
  %168 = icmp ne i32 %167, 0
  %169 = icmp slt i32 %166, 4
  %170 = or i1 %169, %168
  br i1 %170, label %171, label %176

171:                                              ; preds = %163
  %172 = load ptr, ptr %60, align 8, !tbaa !87
  %173 = getelementptr inbounds i32, ptr %172, i64 %164
  %174 = load i32, ptr %173, align 4, !tbaa !122
  %175 = or i32 %174, 1
  store i32 %175, ptr %173, align 4, !tbaa !122
  br label %176

176:                                              ; preds = %163, %171
  store i32 0, ptr %165, align 4, !tbaa !122
  %177 = add nuw nsw i64 %164, 1
  %178 = load i32, ptr %34, align 8, !tbaa !145
  %179 = sext i32 %178 to i64
  %180 = icmp slt i64 %177, %179
  br i1 %180, label %163, label %158, !llvm.loop !190

181:                                              ; preds = %186, %138, %158
  br i1 %97, label %182, label %227

182:                                              ; preds = %181
  %183 = load ptr, ptr %39, align 8, !tbaa !83
  %184 = load ptr, ptr %29, align 8, !tbaa !86
  %185 = zext nneg i32 %84 to i64
  br label %197

186:                                              ; preds = %160, %186
  %187 = phi i64 [ 0, %160 ], [ %193, %186 ]
  %188 = phi i32 [ 0, %160 ], [ %192, %186 ]
  %189 = getelementptr inbounds i32, ptr %161, i64 %187
  store i32 %188, ptr %189, align 4, !tbaa !122
  %190 = getelementptr inbounds i32, ptr %162, i64 %187
  %191 = load i32, ptr %190, align 4, !tbaa !122
  %192 = add nsw i32 %191, %188
  %193 = add nuw nsw i64 %187, 1
  %194 = load i32, ptr %34, align 8, !tbaa !145
  %195 = sext i32 %194 to i64
  %196 = icmp slt i64 %193, %195
  br i1 %196, label %186, label %181, !llvm.loop !191

197:                                              ; preds = %182, %197
  %198 = phi i64 [ 0, %182 ], [ %225, %197 ]
  %199 = getelementptr inbounds %struct.MEdge, ptr %90, i64 %198
  %200 = load i32, ptr %199, align 4, !tbaa !181
  %201 = sext i32 %200 to i64
  %202 = getelementptr inbounds i32, ptr %183, i64 %201
  %203 = load i32, ptr %202, align 4, !tbaa !122
  %204 = getelementptr inbounds i32, ptr %50, i64 %201
  %205 = load i32, ptr %204, align 4, !tbaa !122
  %206 = add nsw i32 %205, %203
  %207 = getelementptr inbounds %struct.MEdge, ptr %90, i64 %198, i32 1
  %208 = load i32, ptr %207, align 4, !tbaa !183
  %209 = sext i32 %206 to i64
  %210 = getelementptr inbounds i32, ptr %184, i64 %209
  store i32 %208, ptr %210, align 4, !tbaa !122
  %211 = load i32, ptr %204, align 4, !tbaa !122
  %212 = add nsw i32 %211, 1
  store i32 %212, ptr %204, align 4, !tbaa !122
  %213 = load i32, ptr %207, align 4, !tbaa !183
  %214 = sext i32 %213 to i64
  %215 = getelementptr inbounds i32, ptr %183, i64 %214
  %216 = load i32, ptr %215, align 4, !tbaa !122
  %217 = getelementptr inbounds i32, ptr %50, i64 %214
  %218 = load i32, ptr %217, align 4, !tbaa !122
  %219 = add nsw i32 %218, %216
  %220 = load i32, ptr %199, align 4, !tbaa !181
  %221 = sext i32 %219 to i64
  %222 = getelementptr inbounds i32, ptr %184, i64 %221
  store i32 %220, ptr %222, align 4, !tbaa !122
  %223 = load i32, ptr %217, align 4, !tbaa !122
  %224 = add nsw i32 %223, 1
  store i32 %224, ptr %217, align 4, !tbaa !122
  %225 = add nuw nsw i64 %198, 1
  %226 = icmp eq i64 %225, %185
  br i1 %226, label %227, label %197, !llvm.loop !192

227:                                              ; preds = %197, %181, %78
  %228 = load ptr, ptr @MEM_freeN, align 8, !tbaa !44
  tail call void %228(ptr noundef nonnull %50) #26
  br label %229

229:                                              ; preds = %12, %27, %24, %2, %227, %76
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(write, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local void @dynamicPaint_cacheUpdateFrames(ptr nocapture noundef readonly %0) local_unnamed_addr #10 {
  %2 = getelementptr inbounds %struct.DynamicPaintSurface, ptr %0, i64 0, i32 6
  %3 = load ptr, ptr %2, align 8, !tbaa !102
  %4 = icmp eq ptr %3, null
  br i1 %4, label %9, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.DynamicPaintSurface, ptr %0, i64 0, i32 22
  %7 = getelementptr inbounds %struct.PointCache, ptr %3, i64 0, i32 5
  %8 = load <2 x i32>, ptr %6, align 4, !tbaa !122
  store <2 x i32> %8, ptr %7, align 4, !tbaa !122
  br label %9

9:                                                ; preds = %5, %1
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @dynamicPaint_Modifier_do(ptr nocapture noundef readonly %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) local_unnamed_addr #4 {
  tail call void @DM_ensure_tessface(ptr noundef %3) #26
  tail call fastcc void @dynamicPaint_frameUpdate(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) #25
  %5 = tail call fastcc ptr @dynamicPaint_Modifier_apply(ptr noundef %0, ptr noundef %2, ptr noundef %3) #25
  ret ptr %5
}

; Function Attrs: optsize
declare void @DM_ensure_tessface(ptr noundef) local_unnamed_addr #5

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @dynamicPaint_frameUpdate(ptr nocapture noundef readonly %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) unnamed_addr #4 !PGOFuncName !193 {
  %5 = alloca %struct.PTCacheID, align 8
  %6 = getelementptr inbounds %struct.DynamicPaintModifierData, ptr %0, i64 0, i32 1
  %7 = load ptr, ptr %6, align 8, !tbaa !104
  %8 = icmp eq ptr %7, null
  br i1 %8, label %117, label %9

9:                                                ; preds = %4
  %10 = getelementptr inbounds %struct.DynamicPaintCanvasSettings, ptr %7, i64 0, i32 2
  %11 = load ptr, ptr %10, align 8, !tbaa !105
  tail call fastcc void @canvas_copyDerivedMesh(ptr noundef nonnull %7, ptr noundef %3) #25
  %12 = getelementptr inbounds %struct.DynamicPaintCanvasSettings, ptr %7, i64 0, i32 4
  %13 = load i16, ptr %12, align 2, !tbaa !194
  %14 = and i16 %13, 2
  %15 = icmp ne i16 %14, 0
  %16 = icmp eq ptr %11, null
  %17 = select i1 %15, i1 true, i1 %16
  br i1 %17, label %117, label %18

18:                                               ; preds = %9
  %19 = getelementptr inbounds %struct.Scene, ptr %1, i64 0, i32 22, i32 5
  %20 = getelementptr inbounds %struct.PTCacheID, ptr %5, i64 0, i32 25
  br label %21

21:                                               ; preds = %18, %114
  %22 = phi ptr [ %11, %18 ], [ %115, %114 ]
  %23 = load i32, ptr %19, align 8, !tbaa !195
  call fastcc void @surface_freeUnusedData(ptr noundef nonnull %22) #25
  %24 = getelementptr inbounds %struct.DynamicPaintSurface, ptr %22, i64 0, i32 10
  %25 = load i16, ptr %24, align 4, !tbaa !34
  %26 = icmp eq i16 %25, 2
  br i1 %26, label %114, label %27

27:                                               ; preds = %21
  %28 = getelementptr inbounds %struct.DynamicPaintSurface, ptr %22, i64 0, i32 18
  %29 = load i32, ptr %28, align 4, !tbaa !50
  %30 = and i32 %29, 1
  %31 = icmp eq i32 %30, 0
  br i1 %31, label %114, label %32

32:                                               ; preds = %27
  %33 = getelementptr inbounds %struct.DynamicPaintSurface, ptr %22, i64 0, i32 3
  %34 = load ptr, ptr %33, align 8, !tbaa !74
  %35 = icmp eq ptr %34, null
  %36 = call fastcc zeroext i8 @dynamicPaint_checkSurfaceData(ptr noundef nonnull %1, ptr noundef nonnull %22) #25, !range !49
  %37 = icmp eq i8 %36, 0
  br i1 %37, label %114, label %38

38:                                               ; preds = %32
  %39 = getelementptr inbounds %struct.DynamicPaintSurface, ptr %22, i64 0, i32 22
  %40 = load i32, ptr %39, align 4, !tbaa !214
  %41 = icmp slt i32 %23, %40
  br i1 %41, label %46, label %42

42:                                               ; preds = %38
  %43 = getelementptr inbounds %struct.DynamicPaintSurface, ptr %22, i64 0, i32 23
  %44 = load i32, ptr %43, align 8, !tbaa !215
  %45 = call i32 @llvm.smin.i32(i32 %23, i32 %44)
  br label %46

46:                                               ; preds = %42, %38
  %47 = phi i32 [ %40, %38 ], [ %45, %42 ]
  br i1 %35, label %55, label %48

48:                                               ; preds = %46
  %49 = getelementptr inbounds %struct.DynamicPaintSurface, ptr %22, i64 0, i32 8
  %50 = load i32, ptr %49, align 8, !tbaa !216
  %51 = icmp eq i32 %47, %50
  br i1 %51, label %52, label %55

52:                                               ; preds = %48
  %53 = load i32, ptr %19, align 8, !tbaa !195
  %54 = icmp eq i32 %53, %40
  br i1 %54, label %55, label %114

55:                                               ; preds = %52, %48, %46
  %56 = getelementptr inbounds %struct.DynamicPaintSurface, ptr %22, i64 0, i32 6
  %57 = load ptr, ptr %56, align 8, !tbaa !102
  call void @llvm.lifetime.start.p0(i64 200, ptr nonnull %5) #27
  %58 = getelementptr inbounds %struct.DynamicPaintSurface, ptr %22, i64 0, i32 8
  store i32 %47, ptr %58, align 8, !tbaa !216
  call void @BKE_ptcache_id_from_dynamicpaint(ptr noundef nonnull %5, ptr noundef %2, ptr noundef nonnull %22) #26
  %59 = load ptr, ptr %20, align 8, !tbaa !217
  %60 = getelementptr inbounds %struct.PointCache, ptr %59, i64 0, i32 5
  %61 = load <2 x i32>, ptr %39, align 4, !tbaa !122
  store <2 x i32> %61, ptr %60, align 4, !tbaa !122
  %62 = load i32, ptr %19, align 8, !tbaa !195
  %63 = sitofp i32 %62 to float
  call void @BKE_ptcache_id_time(ptr noundef nonnull %5, ptr noundef nonnull %1, float noundef %63, ptr noundef null, ptr noundef null, ptr noundef null) #26
  %64 = load i32, ptr %19, align 8, !tbaa !195
  %65 = load i32, ptr %39, align 4, !tbaa !214
  %66 = icmp eq i32 %64, %65
  br i1 %66, label %67, label %78

67:                                               ; preds = %55
  %68 = getelementptr inbounds %struct.PointCache, ptr %57, i64 0, i32 2
  %69 = load i32, ptr %68, align 8, !tbaa !109
  %70 = and i32 %69, 1
  %71 = icmp eq i32 %70, 0
  br i1 %71, label %72, label %78

72:                                               ; preds = %67
  %73 = or i32 %69, 258
  store i32 %73, ptr %68, align 8, !tbaa !109
  %74 = call i32 @BKE_ptcache_id_reset(ptr noundef nonnull %1, ptr noundef nonnull %5, i32 noundef 2) #26
  %75 = load i32, ptr %68, align 8, !tbaa !109
  %76 = and i32 %75, -259
  store i32 %76, ptr %68, align 8, !tbaa !109
  %77 = load i32, ptr %19, align 8, !tbaa !195
  br label %78

78:                                               ; preds = %72, %67, %55
  %79 = phi i32 [ %77, %72 ], [ %64, %67 ], [ %64, %55 ]
  %80 = sitofp i32 %79 to float
  %81 = call i32 @BKE_ptcache_read(ptr noundef nonnull %5, float noundef %80) #26
  %82 = icmp eq i32 %81, 0
  %83 = load i32, ptr %19, align 8, !tbaa !195
  br i1 %82, label %85, label %84

84:                                               ; preds = %78
  call void @BKE_ptcache_validate(ptr noundef %57, i32 noundef %83) #26
  br label %113

85:                                               ; preds = %78
  %86 = icmp eq i32 %83, %47
  br i1 %86, label %87, label %113

87:                                               ; preds = %85
  %88 = getelementptr inbounds %struct.PointCache, ptr %57, i64 0, i32 2
  %89 = load i32, ptr %88, align 8, !tbaa !109
  %90 = and i32 %89, 1
  %91 = icmp eq i32 %90, 0
  br i1 %91, label %92, label %113

92:                                               ; preds = %87
  %93 = load i16, ptr %12, align 2, !tbaa !194
  %94 = or i16 %93, 2
  store i16 %94, ptr %12, align 2, !tbaa !194
  %95 = call i32 @dynamicPaint_calculateFrame(ptr noundef nonnull %22, ptr noundef nonnull %1, ptr noundef %2, i32 noundef %47) #25
  %96 = load i16, ptr %12, align 2, !tbaa !194
  %97 = and i16 %96, -3
  store i16 %97, ptr %12, align 2, !tbaa !194
  %98 = getelementptr inbounds %struct.DynamicPaintSurface, ptr %22, i64 0, i32 11
  %99 = load i16, ptr %98, align 2, !tbaa !43
  %100 = icmp eq i16 %99, 1
  br i1 %100, label %101, label %109

101:                                              ; preds = %92
  %102 = load i32, ptr %28, align 4, !tbaa !50
  %103 = and i32 %102, 256
  %104 = icmp eq i32 %103, 0
  br i1 %104, label %109, label %105

105:                                              ; preds = %101
  %106 = load ptr, ptr %22, align 8, !tbaa !106
  %107 = icmp eq ptr %106, null
  br i1 %107, label %109, label %108

108:                                              ; preds = %105
  call fastcc void @canvas_copyDerivedMesh(ptr noundef nonnull %7, ptr noundef %3) #25
  br label %109

109:                                              ; preds = %108, %105, %101, %92
  %110 = load i32, ptr %58, align 8, !tbaa !216
  call void @BKE_ptcache_validate(ptr noundef nonnull %57, i32 noundef %110) #26
  %111 = load i32, ptr %58, align 8, !tbaa !216
  %112 = call i32 @BKE_ptcache_write(ptr noundef nonnull %5, i32 noundef %111) #26
  br label %113

113:                                              ; preds = %85, %87, %109, %84
  call void @llvm.lifetime.end.p0(i64 200, ptr nonnull %5) #27
  br label %114

114:                                              ; preds = %52, %113, %32, %27, %21
  %115 = load ptr, ptr %22, align 8, !tbaa !106
  %116 = icmp eq ptr %115, null
  br i1 %116, label %117, label %21, !llvm.loop !219

117:                                              ; preds = %114, %9, %4
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @dynamicPaint_Modifier_apply(ptr nocapture noundef readonly %0, ptr noundef %1, ptr noundef %2) unnamed_addr #4 !PGOFuncName !220 {
  %4 = alloca [3 x float], align 8
  %5 = alloca [3 x float], align 4
  %6 = tail call ptr @CDDM_copy(ptr noundef %2) #26
  %7 = getelementptr inbounds %struct.DynamicPaintModifierData, ptr %0, i64 0, i32 1
  %8 = load ptr, ptr %7, align 8, !tbaa !104
  %9 = icmp eq ptr %8, null
  br i1 %9, label %330, label %10

10:                                               ; preds = %3
  %11 = getelementptr inbounds %struct.DynamicPaintCanvasSettings, ptr %8, i64 0, i32 4
  %12 = load i16, ptr %11, align 2, !tbaa !194
  %13 = and i16 %12, 2
  %14 = icmp eq i16 %13, 0
  br i1 %14, label %15, label %330

15:                                               ; preds = %10
  %16 = getelementptr inbounds %struct.DynamicPaintCanvasSettings, ptr %8, i64 0, i32 2
  %17 = load ptr, ptr %16, align 8, !tbaa !44
  %18 = icmp eq ptr %17, null
  br i1 %18, label %330, label %19

19:                                               ; preds = %15
  %20 = getelementptr inbounds %struct.DerivedMesh, ptr %6, i64 0, i32 31
  %21 = getelementptr inbounds %struct.DerivedMesh, ptr %6, i64 0, i32 50
  %22 = getelementptr inbounds %struct.DerivedMesh, ptr %6, i64 0, i32 8
  %23 = getelementptr inbounds %struct.DerivedMesh, ptr %6, i64 0, i32 9
  %24 = getelementptr inbounds %struct.DerivedMesh, ptr %6, i64 0, i32 3
  %25 = getelementptr inbounds [3 x float], ptr %4, i64 0, i64 2
  %26 = getelementptr inbounds %struct.DerivedMesh, ptr %6, i64 0, i32 16
  br label %27

27:                                               ; preds = %318, %19
  %28 = phi ptr [ %17, %19 ], [ %319, %318 ]
  %29 = phi i8 [ 0, %19 ], [ %320, %318 ]
  %30 = getelementptr inbounds %struct.DynamicPaintSurface, ptr %28, i64 0, i32 3
  %31 = load ptr, ptr %30, align 8, !tbaa !74
  %32 = getelementptr inbounds %struct.DynamicPaintSurface, ptr %28, i64 0, i32 10
  %33 = load i16, ptr %32, align 4, !tbaa !34
  %34 = icmp ne i16 %33, 2
  %35 = icmp ne ptr %31, null
  %36 = select i1 %34, i1 %35, i1 false
  br i1 %36, label %37, label %314

37:                                               ; preds = %27
  %38 = getelementptr inbounds %struct.DynamicPaintSurface, ptr %28, i64 0, i32 18
  %39 = load i32, ptr %38, align 4, !tbaa !50
  %40 = and i32 %39, 1
  %41 = icmp ne i32 %40, 0
  %42 = icmp eq i16 %33, 1
  %43 = and i1 %42, %41
  br i1 %43, label %44, label %314

44:                                               ; preds = %37
  %45 = getelementptr inbounds %struct.DynamicPaintSurface, ptr %28, i64 0, i32 11
  %46 = load i16, ptr %45, align 2, !tbaa !43
  switch i16 %46, label %310 [
    i16 0, label %47
    i16 2, label %237
    i16 3, label %289
  ]

47:                                               ; preds = %44
  %48 = getelementptr inbounds %struct.PaintSurfaceData, ptr %31, i64 0, i32 1
  %49 = load ptr, ptr %48, align 8, !tbaa !80
  %50 = call ptr @CDDM_get_loops(ptr noundef %6) #26
  %51 = load i32, ptr %22, align 4, !tbaa !221
  %52 = load ptr, ptr @MEM_callocN, align 8, !tbaa !44
  %53 = getelementptr inbounds %struct.PaintSurfaceData, ptr %31, i64 0, i32 4
  %54 = load i32, ptr %53, align 8, !tbaa !145
  %55 = sext i32 %54 to i64
  %56 = shl nsw i64 %55, 4
  %57 = call ptr %52(i64 noundef %56, ptr noundef nonnull @.str.36) #26
  %58 = load i32, ptr %53, align 8, !tbaa !145
  %59 = icmp sgt i32 %58, 0
  br i1 %59, label %60, label %74

60:                                               ; preds = %47, %60
  %61 = phi i64 [ %70, %60 ], [ 0, %47 ]
  %62 = getelementptr inbounds %struct.PaintPoint, ptr %49, i64 %61
  %63 = getelementptr inbounds %struct.PaintPoint, ptr %49, i64 %61, i32 4
  %64 = getelementptr inbounds %struct.PaintPoint, ptr %49, i64 %61, i32 5
  %65 = load float, ptr %64, align 4, !tbaa !148
  %66 = getelementptr inbounds %struct.PaintPoint, ptr %49, i64 %61, i32 1
  %67 = load float, ptr %66, align 4, !tbaa !222
  %68 = shl nsw i64 %61, 2
  %69 = getelementptr inbounds float, ptr %57, i64 %68
  call fastcc void @blendColors(ptr noundef nonnull %63, float noundef %65, ptr noundef %62, float noundef %67, ptr noundef %69) #25
  %70 = add nuw nsw i64 %61, 1
  %71 = load i32, ptr %53, align 8, !tbaa !145
  %72 = sext i32 %71 to i64
  %73 = icmp slt i64 %70, %72
  br i1 %73, label %60, label %74, !llvm.loop !223

74:                                               ; preds = %60, %47
  %75 = load i32, ptr %38, align 4, !tbaa !50
  %76 = and i32 %75, 64
  %77 = icmp eq i32 %76, 0
  br i1 %77, label %157, label %78

78:                                               ; preds = %74
  %79 = call ptr @CDDM_get_polys(ptr noundef %6) #26
  %80 = load i32, ptr %23, align 8, !tbaa !224
  %81 = call ptr @CustomData_get_layer(ptr noundef nonnull %24, i32 noundef 32) #26
  %82 = icmp eq ptr %81, null
  br i1 %82, label %83, label %85

83:                                               ; preds = %78
  %84 = call ptr @CustomData_add_layer(ptr noundef nonnull %24, i32 noundef 32, i32 noundef 1, ptr noundef null, i32 noundef %51) #26
  br label %85

85:                                               ; preds = %83, %78
  %86 = phi ptr [ %81, %78 ], [ %84, %83 ]
  %87 = icmp ne ptr %86, null
  %88 = icmp sgt i32 %80, 0
  %89 = select i1 %87, i1 %88, i1 false
  br i1 %89, label %90, label %157

90:                                               ; preds = %85
  %91 = getelementptr inbounds %struct.DynamicPaintSurface, ptr %28, i64 0, i32 15
  %92 = zext nneg i32 %80 to i64
  br label %93

93:                                               ; preds = %90, %154
  %94 = phi i64 [ 0, %90 ], [ %155, %154 ]
  %95 = getelementptr inbounds %struct.MPoly, ptr %79, i64 %94
  %96 = getelementptr inbounds %struct.MPoly, ptr %79, i64 %94, i32 2
  %97 = load i16, ptr %96, align 4, !tbaa !225
  %98 = add i16 %97, 1
  %99 = call ptr @give_current_material(ptr noundef %1, i16 noundef signext %98) #26
  %100 = getelementptr inbounds %struct.MPoly, ptr %79, i64 %94, i32 1
  %101 = load i32, ptr %100, align 4, !tbaa !185
  %102 = icmp sgt i32 %101, 0
  br i1 %102, label %103, label %154

103:                                              ; preds = %93
  %104 = icmp eq ptr %99, null
  %105 = getelementptr inbounds %struct.Material, ptr %99, i64 0, i32 4
  %106 = getelementptr inbounds %struct.Material, ptr %99, i64 0, i32 6
  br label %107

107:                                              ; preds = %103, %150
  %108 = phi i32 [ %101, %103 ], [ %151, %150 ]
  %109 = phi i32 [ 0, %103 ], [ %152, %150 ]
  %110 = load i32, ptr %95, align 4, !tbaa !187
  %111 = add nsw i32 %110, %109
  %112 = sext i32 %111 to i64
  %113 = getelementptr inbounds %struct.MLoop, ptr %50, i64 %112
  %114 = load i32, ptr %113, align 4, !tbaa !166
  %115 = load i16, ptr %91, align 2, !tbaa !226
  %116 = icmp eq i16 %115, 0
  br i1 %116, label %117, label %134

117:                                              ; preds = %107
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %4) #27
  %118 = shl nsw i32 %114, 2
  %119 = getelementptr inbounds %struct.MLoopCol, ptr %86, i64 %112
  %120 = getelementptr inbounds %struct.MLoopCol, ptr %86, i64 %112, i32 3
  store i8 -1, ptr %120, align 1, !tbaa !227
  br i1 %104, label %124, label %121

121:                                              ; preds = %117
  %122 = load <2 x float>, ptr %105, align 4, !tbaa !116
  store <2 x float> %122, ptr %4, align 8, !tbaa !116
  %123 = load float, ptr %106, align 4, !tbaa !229
  br label %125

124:                                              ; preds = %117
  store <2 x float> <float 0x3FE4CCCCC0000000, float 0x3FE4CCCCC0000000>, ptr %4, align 8, !tbaa !116
  br label %125

125:                                              ; preds = %124, %121
  %126 = phi float [ %123, %121 ], [ 0x3FE4CCCCC0000000, %124 ]
  store float %126, ptr %25, align 8, !tbaa !116
  %127 = sext i32 %118 to i64
  %128 = getelementptr inbounds float, ptr %57, i64 %127
  %129 = or disjoint i32 %118, 3
  %130 = sext i32 %129 to i64
  %131 = getelementptr inbounds float, ptr %57, i64 %130
  %132 = load float, ptr %131, align 4, !tbaa !116
  call void @interp_v3_v3v3(ptr noundef nonnull %4, ptr noundef nonnull %4, ptr noundef %128, float noundef %132) #26
  call void @rgb_float_to_uchar(ptr noundef nonnull %119, ptr noundef nonnull %4) #26
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %4) #27
  %133 = load i32, ptr %100, align 4, !tbaa !185
  br label %150

134:                                              ; preds = %107
  %135 = sext i32 %114 to i64
  %136 = getelementptr inbounds %struct.PaintPoint, ptr %49, i64 %135, i32 2
  %137 = load float, ptr %136, align 4, !tbaa !233
  %138 = fcmp ugt float %137, 0.000000e+00
  br i1 %138, label %139, label %143

139:                                              ; preds = %134
  %140 = fcmp ogt float %137, 0x3FEFEFEFE0000000
  br i1 %140, label %143, label %141

141:                                              ; preds = %139
  %142 = call float @llvm.fmuladd.f32(float %137, float 2.550000e+02, float 5.000000e-01)
  br label %143

143:                                              ; preds = %141, %139, %134
  %144 = phi float [ 0.000000e+00, %134 ], [ %142, %141 ], [ 2.550000e+02, %139 ]
  %145 = fptoui float %144 to i8
  %146 = getelementptr inbounds %struct.MLoopCol, ptr %86, i64 %112
  %147 = getelementptr inbounds %struct.MLoopCol, ptr %86, i64 %112, i32 2
  store i8 %145, ptr %147, align 1, !tbaa !234
  %148 = getelementptr inbounds %struct.MLoopCol, ptr %86, i64 %112, i32 1
  store i8 %145, ptr %148, align 1, !tbaa !235
  store i8 %145, ptr %146, align 1, !tbaa !236
  %149 = getelementptr inbounds %struct.MLoopCol, ptr %86, i64 %112, i32 3
  store i8 -1, ptr %149, align 1, !tbaa !227
  br label %150

150:                                              ; preds = %143, %125
  %151 = phi i32 [ %108, %143 ], [ %133, %125 ]
  %152 = add nuw nsw i32 %109, 1
  %153 = icmp slt i32 %152, %151
  br i1 %153, label %107, label %154, !llvm.loop !237

154:                                              ; preds = %150, %93
  %155 = add nuw nsw i64 %94, 1
  %156 = icmp eq i64 %155, %92
  br i1 %156, label %157, label %93, !llvm.loop !238

157:                                              ; preds = %154, %85, %74
  %158 = getelementptr inbounds %struct.DynamicPaintSurface, ptr %28, i64 0, i32 48
  %159 = call ptr @CustomData_get_layer_named(ptr noundef nonnull %24, i32 noundef 17, ptr noundef nonnull %158) #26
  %160 = icmp eq ptr %159, null
  br i1 %160, label %161, label %166

161:                                              ; preds = %157
  %162 = call zeroext i8 @dynamicPaint_outputLayerExists(ptr noundef nonnull %28, ptr noundef %1, i32 noundef 0) #25, !range !49
  %163 = icmp eq i8 %162, 0
  br i1 %163, label %196, label %164

164:                                              ; preds = %161
  %165 = call ptr @CustomData_add_layer_named(ptr noundef nonnull %24, i32 noundef 17, i32 noundef 1, ptr noundef null, i32 noundef %51, ptr noundef nonnull %158) #26
  br label %166

166:                                              ; preds = %164, %157
  %167 = phi ptr [ %159, %157 ], [ %165, %164 ]
  %168 = icmp ne ptr %167, null
  %169 = icmp sgt i32 %51, 0
  %170 = select i1 %168, i1 %169, i1 false
  br i1 %170, label %171, label %196

171:                                              ; preds = %166
  %172 = zext nneg i32 %51 to i64
  br label %173

173:                                              ; preds = %171, %190
  %174 = phi i64 [ 0, %171 ], [ %194, %190 ]
  %175 = getelementptr inbounds %struct.MLoop, ptr %50, i64 %174
  %176 = load i32, ptr %175, align 4, !tbaa !166
  %177 = shl i32 %176, 2
  %178 = getelementptr inbounds %struct.MLoopCol, ptr %167, i64 %174
  %179 = sext i32 %177 to i64
  %180 = getelementptr inbounds float, ptr %57, i64 %179
  call void @rgb_float_to_uchar(ptr noundef nonnull %178, ptr noundef %180) #26
  %181 = or disjoint i32 %177, 3
  %182 = sext i32 %181 to i64
  %183 = getelementptr inbounds float, ptr %57, i64 %182
  %184 = load float, ptr %183, align 4, !tbaa !116
  %185 = fcmp ugt float %184, 0.000000e+00
  br i1 %185, label %186, label %190

186:                                              ; preds = %173
  %187 = fcmp ogt float %184, 0x3FEFEFEFE0000000
  br i1 %187, label %190, label %188

188:                                              ; preds = %186
  %189 = call float @llvm.fmuladd.f32(float %184, float 2.550000e+02, float 5.000000e-01)
  br label %190

190:                                              ; preds = %188, %186, %173
  %191 = phi float [ 0.000000e+00, %173 ], [ %189, %188 ], [ 2.550000e+02, %186 ]
  %192 = fptoui float %191 to i8
  %193 = getelementptr inbounds %struct.MLoopCol, ptr %167, i64 %174, i32 3
  store i8 %192, ptr %193, align 1, !tbaa !227
  %194 = add nuw nsw i64 %174, 1
  %195 = icmp eq i64 %194, %172
  br i1 %195, label %196, label %173, !llvm.loop !239

196:                                              ; preds = %190, %161, %166
  %197 = load ptr, ptr @MEM_freeN, align 8, !tbaa !44
  call void %197(ptr noundef %57) #26
  %198 = getelementptr inbounds %struct.DynamicPaintSurface, ptr %28, i64 0, i32 49
  %199 = call ptr @CustomData_get_layer_named(ptr noundef nonnull %24, i32 noundef 17, ptr noundef nonnull %198) #26
  %200 = icmp eq ptr %199, null
  br i1 %200, label %201, label %206

201:                                              ; preds = %196
  %202 = call zeroext i8 @dynamicPaint_outputLayerExists(ptr noundef nonnull %28, ptr noundef %1, i32 noundef 1) #25, !range !49
  %203 = icmp eq i8 %202, 0
  br i1 %203, label %234, label %204

204:                                              ; preds = %201
  %205 = call ptr @CustomData_add_layer_named(ptr noundef nonnull %24, i32 noundef 17, i32 noundef 1, ptr noundef null, i32 noundef %51, ptr noundef nonnull %198) #26
  br label %206

206:                                              ; preds = %204, %196
  %207 = phi ptr [ %199, %196 ], [ %205, %204 ]
  %208 = icmp ne ptr %207, null
  %209 = icmp sgt i32 %51, 0
  %210 = select i1 %208, i1 %209, i1 false
  br i1 %210, label %211, label %234

211:                                              ; preds = %206
  %212 = zext nneg i32 %51 to i64
  br label %213

213:                                              ; preds = %211, %225
  %214 = phi i64 [ 0, %211 ], [ %232, %225 ]
  %215 = getelementptr inbounds %struct.MLoop, ptr %50, i64 %214
  %216 = load i32, ptr %215, align 4, !tbaa !166
  %217 = sext i32 %216 to i64
  %218 = getelementptr inbounds %struct.PaintPoint, ptr %49, i64 %217, i32 2
  %219 = load float, ptr %218, align 4, !tbaa !233
  %220 = fcmp ugt float %219, 0.000000e+00
  br i1 %220, label %221, label %225

221:                                              ; preds = %213
  %222 = fcmp ogt float %219, 0x3FEFEFEFE0000000
  br i1 %222, label %225, label %223

223:                                              ; preds = %221
  %224 = call float @llvm.fmuladd.f32(float %219, float 2.550000e+02, float 5.000000e-01)
  br label %225

225:                                              ; preds = %223, %221, %213
  %226 = phi float [ 0.000000e+00, %213 ], [ %224, %223 ], [ 2.550000e+02, %221 ]
  %227 = fptoui float %226 to i8
  %228 = getelementptr inbounds %struct.MLoopCol, ptr %207, i64 %214
  %229 = getelementptr inbounds %struct.MLoopCol, ptr %207, i64 %214, i32 2
  store i8 %227, ptr %229, align 1, !tbaa !234
  %230 = getelementptr inbounds %struct.MLoopCol, ptr %207, i64 %214, i32 1
  store i8 %227, ptr %230, align 1, !tbaa !235
  store i8 %227, ptr %228, align 1, !tbaa !236
  %231 = getelementptr inbounds %struct.MLoopCol, ptr %207, i64 %214, i32 3
  store i8 -1, ptr %231, align 1, !tbaa !227
  %232 = add nuw nsw i64 %214, 1
  %233 = icmp eq i64 %232, %212
  br i1 %233, label %234, label %213, !llvm.loop !240

234:                                              ; preds = %225, %201, %206
  %235 = load i32, ptr %26, align 8, !tbaa !241
  %236 = or i32 %235, 1
  store i32 %236, ptr %26, align 8, !tbaa !241
  br label %307

237:                                              ; preds = %44
  %238 = getelementptr inbounds %struct.DynamicPaintSurface, ptr %28, i64 0, i32 48
  %239 = call i32 @defgroup_name_index(ptr noundef %1, ptr noundef nonnull %238) #26
  %240 = load ptr, ptr %21, align 8, !tbaa !242
  %241 = call ptr %240(ptr noundef %6, i32 noundef 2) #26
  %242 = getelementptr inbounds %struct.PaintSurfaceData, ptr %31, i64 0, i32 1
  %243 = load ptr, ptr %242, align 8, !tbaa !80
  %244 = load i32, ptr %38, align 4, !tbaa !50
  %245 = and i32 %244, 64
  %246 = icmp eq i32 %245, 0
  br i1 %246, label %248, label %247

247:                                              ; preds = %237
  call void @DM_update_weight_mcol(ptr noundef %1, ptr noundef nonnull %6, i32 noundef 0, ptr noundef %243, i32 noundef 0, ptr noundef null) #26
  br label %248

248:                                              ; preds = %247, %237
  %249 = icmp eq i32 %239, -1
  %250 = icmp ne ptr %241, null
  %251 = select i1 %249, i1 true, i1 %250
  br i1 %251, label %259, label %252

252:                                              ; preds = %248
  %253 = load i8, ptr %238, align 8, !tbaa !60
  %254 = icmp eq i8 %253, 0
  br i1 %254, label %307, label %255

255:                                              ; preds = %252
  %256 = getelementptr inbounds %struct.PaintSurfaceData, ptr %31, i64 0, i32 4
  %257 = load i32, ptr %256, align 8, !tbaa !145
  %258 = call ptr @CustomData_add_layer_named(ptr noundef nonnull %6, i32 noundef 2, i32 noundef 1, ptr noundef null, i32 noundef %257, ptr noundef nonnull %238) #26
  br label %259

259:                                              ; preds = %255, %248
  %260 = phi ptr [ %241, %248 ], [ %258, %255 ]
  %261 = icmp ne i32 %239, -1
  %262 = icmp ne ptr %260, null
  %263 = select i1 %261, i1 %262, i1 false
  br i1 %263, label %264, label %307

264:                                              ; preds = %259
  %265 = getelementptr inbounds %struct.PaintSurfaceData, ptr %31, i64 0, i32 4
  %266 = load i32, ptr %265, align 8, !tbaa !145
  %267 = icmp sgt i32 %266, 0
  br i1 %267, label %268, label %307

268:                                              ; preds = %264, %284
  %269 = phi i64 [ %285, %284 ], [ 0, %264 ]
  %270 = getelementptr inbounds %struct.MDeformVert, ptr %260, i64 %269
  %271 = call ptr @defvert_find_index(ptr noundef nonnull %270, i32 noundef %239) #26
  %272 = icmp eq ptr %271, null
  br i1 %272, label %273, label %279

273:                                              ; preds = %268
  %274 = getelementptr inbounds float, ptr %243, i64 %269
  %275 = load float, ptr %274, align 4, !tbaa !116
  %276 = fcmp une float %275, 0.000000e+00
  br i1 %276, label %277, label %284

277:                                              ; preds = %273
  %278 = call ptr @defvert_verify_index(ptr noundef nonnull %270, i32 noundef %239) #26
  br label %279

279:                                              ; preds = %268, %277
  %280 = phi ptr [ %278, %277 ], [ %271, %268 ]
  %281 = getelementptr inbounds float, ptr %243, i64 %269
  %282 = load float, ptr %281, align 4, !tbaa !116
  %283 = getelementptr inbounds %struct.MDeformWeight, ptr %280, i64 0, i32 1
  store float %282, ptr %283, align 4, !tbaa !243
  br label %284

284:                                              ; preds = %279, %273
  %285 = add nuw nsw i64 %269, 1
  %286 = load i32, ptr %265, align 8, !tbaa !145
  %287 = sext i32 %286 to i64
  %288 = icmp slt i64 %285, %287
  br i1 %288, label %268, label %307, !llvm.loop !245

289:                                              ; preds = %44
  %290 = load ptr, ptr %20, align 8, !tbaa !246
  %291 = call ptr %290(ptr noundef %6) #26
  %292 = getelementptr inbounds %struct.PaintSurfaceData, ptr %31, i64 0, i32 1
  %293 = load ptr, ptr %292, align 8, !tbaa !80
  %294 = getelementptr inbounds %struct.PaintSurfaceData, ptr %31, i64 0, i32 4
  %295 = load i32, ptr %294, align 8, !tbaa !145
  %296 = icmp sgt i32 %295, 0
  br i1 %296, label %297, label %307

297:                                              ; preds = %289, %297
  %298 = phi i64 [ %303, %297 ], [ 0, %289 ]
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %5) #27
  %299 = getelementptr inbounds %struct.MVert, ptr %291, i64 %298
  %300 = getelementptr inbounds %struct.MVert, ptr %291, i64 %298, i32 1
  call fastcc void @normal_short_to_float_v3(ptr noundef nonnull %5, ptr noundef nonnull %300) #25
  %301 = getelementptr inbounds %struct.PaintWavePoint, ptr %293, i64 %298
  %302 = load float, ptr %301, align 4, !tbaa !247
  call fastcc void @madd_v3_v3fl(ptr noundef %299, ptr noundef nonnull %5, float noundef %302) #25
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %5) #27
  %303 = add nuw nsw i64 %298, 1
  %304 = load i32, ptr %294, align 8, !tbaa !145
  %305 = sext i32 %304 to i64
  %306 = icmp slt i64 %303, %305
  br i1 %306, label %297, label %307, !llvm.loop !249

307:                                              ; preds = %297, %284, %289, %264, %252, %234, %259
  %308 = phi i8 [ %29, %259 ], [ %29, %234 ], [ %29, %252 ], [ %29, %264 ], [ 1, %289 ], [ %29, %284 ], [ 1, %297 ]
  %309 = load i16, ptr %45, align 2, !tbaa !43
  br label %310

310:                                              ; preds = %307, %44
  %311 = phi i16 [ %309, %307 ], [ %46, %44 ]
  %312 = phi i8 [ %308, %307 ], [ %29, %44 ]
  %313 = icmp eq i16 %311, 1
  br i1 %313, label %321, label %314

314:                                              ; preds = %27, %310, %37
  %315 = phi i8 [ %29, %37 ], [ %312, %310 ], [ %29, %27 ]
  %316 = load ptr, ptr %28, align 8, !tbaa !44
  %317 = icmp eq ptr %316, null
  br i1 %317, label %324, label %318

318:                                              ; preds = %314, %321
  %319 = phi ptr [ %316, %314 ], [ %322, %321 ]
  %320 = phi i8 [ %315, %314 ], [ 1, %321 ]
  br label %27, !llvm.loop !250

321:                                              ; preds = %310
  call fastcc void @dynamicPaint_applySurfaceDisplace(ptr noundef nonnull %28, ptr noundef %6) #25
  %322 = load ptr, ptr %28, align 8, !tbaa !44
  %323 = icmp eq ptr %322, null
  br i1 %323, label %326, label %318

324:                                              ; preds = %314
  %325 = icmp eq i8 %315, 0
  br i1 %325, label %330, label %326

326:                                              ; preds = %321, %324
  %327 = getelementptr inbounds %struct.DerivedMesh, ptr %6, i64 0, i32 16
  %328 = load i32, ptr %327, align 8, !tbaa !241
  %329 = or i32 %328, 4
  store i32 %329, ptr %327, align 8, !tbaa !241
  br label %330

330:                                              ; preds = %15, %324, %326, %10, %3
  %331 = getelementptr inbounds %struct.DynamicPaintModifierData, ptr %0, i64 0, i32 2
  %332 = load ptr, ptr %331, align 8, !tbaa !64
  %333 = icmp eq ptr %332, null
  br i1 %333, label %345, label %334

334:                                              ; preds = %330
  %335 = getelementptr inbounds %struct.DynamicPaintBrushSettings, ptr %332, i64 0, i32 1
  %336 = load ptr, ptr %335, align 8, !tbaa !67
  %337 = icmp eq ptr %336, null
  br i1 %337, label %341, label %338

338:                                              ; preds = %334
  %339 = getelementptr inbounds %struct.DerivedMesh, ptr %336, i64 0, i32 95
  %340 = load ptr, ptr %339, align 8, !tbaa !69
  call void %340(ptr noundef nonnull %336) #26
  br label %341

341:                                              ; preds = %338, %334
  %342 = call ptr @CDDM_copy(ptr noundef %6) #26
  %343 = load ptr, ptr %331, align 8, !tbaa !64
  %344 = getelementptr inbounds %struct.DynamicPaintBrushSettings, ptr %343, i64 0, i32 1
  store ptr %342, ptr %344, align 8, !tbaa !67
  br label %345

345:                                              ; preds = %341, %330
  ret ptr %6
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef i32 @dynamicPaint_createUVSurface(ptr noundef %0, ptr noundef %1) local_unnamed_addr #4 {
  %3 = alloca [64 x i8], align 16
  %4 = alloca [2 x float], align 4
  %5 = alloca [2 x float], align 4
  %6 = alloca [2 x float], align 4
  %7 = alloca [5 x [2 x float]], align 16
  %8 = alloca [2 x float], align 4
  %9 = alloca [2 x float], align 4
  %10 = alloca [2 x float], align 4
  %11 = alloca [2 x float], align 8
  %12 = alloca [2 x float], align 4
  %13 = alloca [2 x float], align 4
  %14 = alloca [2 x float], align 4
  %15 = alloca [2 x float], align 8
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %3) #27
  %16 = getelementptr inbounds %struct.DynamicPaintSurface, ptr %1, i64 0, i32 2
  %17 = load ptr, ptr %16, align 8, !tbaa !58
  %18 = getelementptr inbounds %struct.DynamicPaintCanvasSettings, ptr %17, i64 0, i32 1
  %19 = load ptr, ptr %18, align 8, !tbaa !108
  %20 = icmp eq ptr %19, null
  br i1 %20, label %21, label %22

21:                                               ; preds = %2
  tail call fastcc void @setError(ptr noundef nonnull %17, ptr noundef nonnull @.str.12) #25
  br label %669

22:                                               ; preds = %2
  %23 = getelementptr inbounds %struct.DynamicPaintSurface, ptr %1, i64 0, i32 10
  %24 = load i16, ptr %23, align 4, !tbaa !34
  %25 = icmp eq i16 %24, 2
  br i1 %25, label %27, label %26

26:                                               ; preds = %22
  tail call fastcc void @setError(ptr noundef nonnull %17, ptr noundef nonnull @.str.13) #25
  br label %669

27:                                               ; preds = %22
  %28 = getelementptr inbounds %struct.DerivedMesh, ptr %19, i64 0, i32 25
  %29 = load ptr, ptr %28, align 8, !tbaa !152
  %30 = tail call i32 %29(ptr noundef nonnull %19) #26
  %31 = getelementptr inbounds %struct.DerivedMesh, ptr %19, i64 0, i32 33
  %32 = load ptr, ptr %31, align 8, !tbaa !151
  %33 = tail call ptr %32(ptr noundef nonnull %19) #26
  %34 = getelementptr inbounds %struct.DerivedMesh, ptr %19, i64 0, i32 2
  %35 = getelementptr inbounds %struct.DynamicPaintSurface, ptr %1, i64 0, i32 46
  call void @CustomData_validate_layer_name(ptr noundef nonnull %34, i32 noundef 5, ptr noundef nonnull %35, ptr noundef nonnull %3) #26
  %36 = call ptr @CustomData_get_layer_named(ptr noundef nonnull %34, i32 noundef 5, ptr noundef nonnull %3) #26
  %37 = icmp eq ptr %36, null
  br i1 %37, label %38, label %39

38:                                               ; preds = %27
  call fastcc void @setError(ptr noundef nonnull %17, ptr noundef nonnull @.str.14) #25
  br label %669

39:                                               ; preds = %27
  %40 = getelementptr inbounds %struct.DynamicPaintSurface, ptr %1, i64 0, i32 20
  %41 = load i32, ptr %40, align 4, !tbaa !120
  %42 = add i32 %41, -8193
  %43 = icmp ult i32 %42, -8177
  br i1 %43, label %44, label %45

44:                                               ; preds = %39
  call fastcc void @setError(ptr noundef nonnull %17, ptr noundef nonnull @.str.15) #25
  br label %669

45:                                               ; preds = %39
  %46 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.16, i32 noundef %41, i32 noundef %41, i32 noundef %30) #25
  %47 = getelementptr inbounds %struct.DynamicPaintSurface, ptr %1, i64 0, i32 3
  %48 = load ptr, ptr %47, align 8, !tbaa !74
  %49 = icmp eq ptr %48, null
  br i1 %49, label %51, label %50

50:                                               ; preds = %45
  call void @dynamicPaint_freeSurfaceData(ptr noundef nonnull %1) #25
  br label %51

51:                                               ; preds = %50, %45
  %52 = load ptr, ptr @MEM_callocN, align 8, !tbaa !44
  %53 = call ptr %52(i64 noundef 40, ptr noundef nonnull @.str.11) #26
  store ptr %53, ptr %47, align 8, !tbaa !74
  %54 = icmp eq ptr %53, null
  br i1 %54, label %55, label %56

55:                                               ; preds = %51
  call fastcc void @setError(ptr noundef nonnull %17, ptr noundef nonnull @.str.17) #25
  br label %669

56:                                               ; preds = %51
  %57 = getelementptr inbounds %struct.DynamicPaintSurface, ptr %1, i64 0, i32 18
  %58 = load i32, ptr %57, align 4, !tbaa !50
  %59 = and i32 %58, 2
  %60 = icmp eq i32 %59, 0
  %61 = select i1 %60, i32 1, i32 5
  %62 = load ptr, ptr @MEM_callocN, align 8, !tbaa !44
  %63 = mul nuw nsw i32 %41, %41
  %64 = zext nneg i32 %63 to i64
  %65 = mul nuw nsw i64 %64, 28
  %66 = call ptr %62(i64 noundef %65, ptr noundef nonnull @.str.18) #26
  %67 = icmp eq ptr %66, null
  %68 = load ptr, ptr @MEM_callocN, align 8, !tbaa !44
  %69 = shl nuw nsw i64 %64, 2
  %70 = call ptr %68(i64 noundef %69, ptr noundef nonnull @.str.19) #26
  %71 = icmp eq ptr %70, null
  %72 = load ptr, ptr @MEM_mallocN, align 8, !tbaa !44
  %73 = mul nuw nsw i32 %61, %63
  %74 = zext nneg i32 %73 to i64
  %75 = mul nuw nsw i64 %74, 12
  %76 = call ptr %72(i64 noundef %75, ptr noundef nonnull @.str.20) #26
  %77 = icmp eq ptr %76, null
  %78 = select i1 %77, i1 true, i1 %71
  %79 = select i1 %78, i1 true, i1 %67
  br i1 %79, label %649, label %80

80:                                               ; preds = %56
  %81 = load ptr, ptr @MEM_mallocN, align 8, !tbaa !44
  %82 = sext i32 %30 to i64
  %83 = shl nsw i64 %82, 4
  %84 = call ptr %81(i64 noundef %83, ptr noundef nonnull @.str.21) #26
  %85 = icmp eq ptr %84, null
  br i1 %85, label %649, label %86

86:                                               ; preds = %80
  %87 = icmp sgt i32 %30, 0
  br i1 %87, label %88, label %140

88:                                               ; preds = %86
  %89 = zext nneg i32 %30 to i64
  br label %90

90:                                               ; preds = %88, %135
  %91 = phi i64 [ 0, %88 ], [ %136, %135 ]
  %92 = getelementptr inbounds %struct.MFace, ptr %33, i64 %91, i32 3
  %93 = load i32, ptr %92, align 4, !tbaa !153
  %94 = icmp eq i32 %93, 0
  %95 = select i1 %94, i64 3, i64 4
  %96 = getelementptr inbounds %struct.Bounds2D, ptr %84, i64 %91
  %97 = getelementptr inbounds %struct.MTFace, ptr %36, i64 %91
  call fastcc void @copy_v2_v2(ptr noundef nonnull %96, ptr noundef nonnull %97) #25
  %98 = getelementptr inbounds %struct.Bounds2D, ptr %84, i64 %91, i32 1
  call fastcc void @copy_v2_v2(ptr noundef nonnull %98, ptr noundef nonnull %97) #25
  %99 = getelementptr inbounds [2 x float], ptr %96, i64 0, i64 1
  %100 = getelementptr inbounds %struct.Bounds2D, ptr %84, i64 %91, i32 1, i64 1
  %101 = load float, ptr %96, align 4, !tbaa !116
  %102 = load float, ptr %99, align 4, !tbaa !116
  %103 = load float, ptr %98, align 4, !tbaa !116
  %104 = load float, ptr %100, align 4, !tbaa !116
  br label %105

105:                                              ; preds = %90, %131
  %106 = phi i64 [ 1, %90 ], [ %133, %131 ]
  %107 = phi float [ %101, %90 ], [ %116, %131 ]
  %108 = phi float [ %102, %90 ], [ %122, %131 ]
  %109 = phi float [ %103, %90 ], [ %127, %131 ]
  %110 = phi float [ %104, %90 ], [ %132, %131 ]
  %111 = getelementptr inbounds [4 x [2 x float]], ptr %97, i64 0, i64 %106
  %112 = load float, ptr %111, align 8, !tbaa !116
  %113 = fcmp olt float %112, %107
  br i1 %113, label %114, label %115

114:                                              ; preds = %105
  store float %112, ptr %96, align 4, !tbaa !116
  br label %115

115:                                              ; preds = %114, %105
  %116 = phi float [ %112, %114 ], [ %107, %105 ]
  %117 = getelementptr inbounds [4 x [2 x float]], ptr %97, i64 0, i64 %106, i64 1
  %118 = load float, ptr %117, align 4, !tbaa !116
  %119 = fcmp olt float %118, %108
  br i1 %119, label %120, label %121

120:                                              ; preds = %115
  store float %118, ptr %99, align 4, !tbaa !116
  br label %121

121:                                              ; preds = %120, %115
  %122 = phi float [ %118, %120 ], [ %108, %115 ]
  %123 = load float, ptr %111, align 8, !tbaa !116
  %124 = fcmp ogt float %123, %109
  br i1 %124, label %125, label %126

125:                                              ; preds = %121
  store float %123, ptr %98, align 4, !tbaa !116
  br label %126

126:                                              ; preds = %125, %121
  %127 = phi float [ %123, %125 ], [ %109, %121 ]
  %128 = load float, ptr %117, align 4, !tbaa !116
  %129 = fcmp ogt float %128, %110
  br i1 %129, label %130, label %131

130:                                              ; preds = %126
  store float %128, ptr %100, align 4, !tbaa !116
  br label %131

131:                                              ; preds = %126, %130
  %132 = phi float [ %110, %126 ], [ %128, %130 ]
  %133 = add nuw nsw i64 %106, 1
  %134 = icmp eq i64 %133, %95
  br i1 %134, label %135, label %105, !llvm.loop !251

135:                                              ; preds = %131
  %136 = add nuw nsw i64 %91, 1
  %137 = icmp eq i64 %136, %89
  br i1 %137, label %138, label %90, !llvm.loop !252

138:                                              ; preds = %135
  %139 = icmp sgt i32 %41, 0
  br i1 %139, label %140, label %468

140:                                              ; preds = %86, %138
  %141 = sitofp i32 %41 to float
  %142 = getelementptr inbounds [2 x float], ptr %7, i64 0, i64 1
  %143 = getelementptr inbounds [5 x [2 x float]], ptr %7, i64 0, i64 1
  %144 = getelementptr inbounds [5 x [2 x float]], ptr %7, i64 0, i64 1, i64 1
  %145 = getelementptr inbounds [5 x [2 x float]], ptr %7, i64 0, i64 2
  %146 = getelementptr inbounds [5 x [2 x float]], ptr %7, i64 0, i64 2, i64 1
  %147 = getelementptr inbounds [5 x [2 x float]], ptr %7, i64 0, i64 3
  %148 = getelementptr inbounds [5 x [2 x float]], ptr %7, i64 0, i64 3, i64 1
  %149 = getelementptr inbounds [5 x [2 x float]], ptr %7, i64 0, i64 4
  %150 = getelementptr inbounds [5 x [2 x float]], ptr %7, i64 0, i64 4, i64 1
  %151 = getelementptr inbounds [2 x float], ptr %4, i64 0, i64 1
  %152 = getelementptr inbounds [2 x float], ptr %5, i64 0, i64 1
  %153 = getelementptr inbounds [2 x float], ptr %6, i64 0, i64 1
  %154 = zext nneg i32 %41 to i64
  %155 = zext nneg i32 %30 to i64
  %156 = zext nneg i32 %61 to i64
  %157 = insertelement <2 x float> poison, float %141, i64 0
  %158 = shufflevector <2 x float> %157, <2 x float> poison, <2 x i32> zeroinitializer
  br label %159

159:                                              ; preds = %356, %140
  %160 = phi i64 [ 0, %140 ], [ %357, %356 ]
  %161 = trunc i64 %160 to i32
  %162 = sitofp i32 %161 to float
  %163 = fadd float %162, 5.000000e-01
  %164 = fdiv float %163, %141
  %165 = fdiv float %162, %141
  %166 = fadd float %162, 1.000000e+00
  %167 = fdiv float %166, %141
  %168 = trunc i64 %160 to i32
  %169 = mul i32 %41, %168
  %170 = zext i32 %169 to i64
  br label %180

171:                                              ; preds = %356
  %172 = add nsw i32 %41, -1
  %173 = sitofp i32 %41 to float
  %174 = zext nneg i32 %41 to i64
  %175 = sext i32 %172 to i64
  %176 = zext nneg i32 %41 to i64
  %177 = zext nneg i32 %61 to i64
  %178 = insertelement <2 x float> poison, float %173, i64 0
  %179 = shufflevector <2 x float> %178, <2 x float> poison, <2 x i32> zeroinitializer
  br label %359

180:                                              ; preds = %159, %353
  %181 = phi i64 [ 0, %159 ], [ %354, %353 ]
  %182 = add nuw nsw i64 %181, %170
  %183 = getelementptr inbounds %struct.PaintUVPoint, ptr %66, i64 %182
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #27
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #27
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %6) #27
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %7) #27
  store i32 -1, ptr %183, align 4, !tbaa !161
  %184 = getelementptr inbounds %struct.PaintUVPoint, ptr %66, i64 %182, i32 5
  store i32 -1, ptr %184, align 4, !tbaa !253
  %185 = getelementptr inbounds %struct.PaintUVPoint, ptr %66, i64 %182, i32 1
  %186 = trunc i64 %182 to i32
  store i32 %186, ptr %185, align 4, !tbaa !254
  %187 = trunc i64 %181 to i32
  %188 = sitofp i32 %187 to float
  %189 = fadd float %188, 5.000000e-01
  %190 = fdiv float %189, %141
  store float %190, ptr %7, align 16, !tbaa !116
  store float %164, ptr %142, align 4, !tbaa !116
  %191 = fdiv float %188, %141
  store float %191, ptr %143, align 8, !tbaa !116
  store float %165, ptr %144, align 4, !tbaa !116
  %192 = fadd float %188, 1.000000e+00
  %193 = fdiv float %192, %141
  store float %193, ptr %145, align 16, !tbaa !116
  store float %165, ptr %146, align 4, !tbaa !116
  store float %191, ptr %147, align 8, !tbaa !116
  store float %167, ptr %148, align 4, !tbaa !116
  store float %193, ptr %149, align 16, !tbaa !116
  store float %167, ptr %150, align 4, !tbaa !116
  %194 = mul nsw i32 %61, %186
  %195 = getelementptr inbounds %struct.PaintUVPoint, ptr %66, i64 %182, i32 6
  %196 = getelementptr inbounds %struct.PaintUVPoint, ptr %66, i64 %182, i32 2
  %197 = getelementptr inbounds %struct.PaintUVPoint, ptr %66, i64 %182, i32 3
  %198 = getelementptr inbounds %struct.PaintUVPoint, ptr %66, i64 %182, i32 4
  %199 = zext i32 %194 to i64
  br label %200

200:                                              ; preds = %180, %350
  %201 = phi i32 [ 0, %180 ], [ %351, %350 ]
  br i1 %87, label %202, label %350

202:                                              ; preds = %200
  %203 = zext nneg i32 %201 to i64
  %204 = getelementptr inbounds [5 x [2 x float]], ptr %7, i64 0, i64 %203
  %205 = load float, ptr %204, align 8, !tbaa !116
  %206 = getelementptr inbounds [5 x [2 x float]], ptr %7, i64 0, i64 %203, i64 1
  br label %207

207:                                              ; preds = %202, %347
  %208 = phi i64 [ 0, %202 ], [ %348, %347 ]
  %209 = getelementptr inbounds %struct.Bounds2D, ptr %84, i64 %208
  %210 = load float, ptr %209, align 4, !tbaa !116
  %211 = fcmp ogt float %210, %205
  br i1 %211, label %347, label %212

212:                                              ; preds = %207
  %213 = getelementptr inbounds [2 x float], ptr %209, i64 0, i64 1
  %214 = load float, ptr %213, align 4, !tbaa !116
  %215 = load float, ptr %206, align 4, !tbaa !116
  %216 = fcmp ogt float %214, %215
  br i1 %216, label %347, label %217

217:                                              ; preds = %212
  %218 = getelementptr inbounds %struct.Bounds2D, ptr %84, i64 %208, i32 1
  %219 = load float, ptr %218, align 4, !tbaa !116
  %220 = fcmp olt float %219, %205
  br i1 %220, label %347, label %221

221:                                              ; preds = %217
  %222 = getelementptr inbounds %struct.Bounds2D, ptr %84, i64 %208, i32 1, i64 1
  %223 = load float, ptr %222, align 4, !tbaa !116
  %224 = fcmp olt float %223, %215
  br i1 %224, label %347, label %225

225:                                              ; preds = %221
  %226 = getelementptr inbounds %struct.MTFace, ptr %36, i64 %208
  %227 = getelementptr inbounds [4 x [2 x float]], ptr %226, i64 0, i64 2
  call fastcc void @sub_v2_v2v2(ptr noundef nonnull %4, ptr noundef nonnull %227, ptr noundef nonnull %226) #25
  %228 = getelementptr inbounds [4 x [2 x float]], ptr %226, i64 0, i64 1
  call fastcc void @sub_v2_v2v2(ptr noundef nonnull %5, ptr noundef nonnull %228, ptr noundef nonnull %226) #25
  call fastcc void @sub_v2_v2v2(ptr noundef nonnull %6, ptr noundef nonnull %204, ptr noundef nonnull %226) #25
  %229 = load float, ptr %4, align 4, !tbaa !116
  %230 = load float, ptr %151, align 4, !tbaa !116
  %231 = load float, ptr %5, align 4, !tbaa !116
  %232 = load float, ptr %152, align 4, !tbaa !116
  %233 = fmul float %230, %232
  %234 = call float @llvm.fmuladd.f32(float %229, float %231, float %233)
  %235 = load float, ptr %6, align 4, !tbaa !116
  %236 = load float, ptr %153, align 4, !tbaa !116
  %237 = fneg float %234
  %238 = fmul float %234, %237
  %239 = insertelement <2 x float> poison, float %232, i64 0
  %240 = insertelement <2 x float> %239, float %230, i64 1
  %241 = fmul <2 x float> %240, %240
  %242 = insertelement <2 x float> poison, float %231, i64 0
  %243 = insertelement <2 x float> %242, float %229, i64 1
  %244 = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %243, <2 x float> %243, <2 x float> %241)
  %245 = insertelement <2 x float> poison, float %230, i64 0
  %246 = insertelement <2 x float> %245, float %232, i64 1
  %247 = insertelement <2 x float> poison, float %236, i64 0
  %248 = shufflevector <2 x float> %247, <2 x float> poison, <2 x i32> zeroinitializer
  %249 = fmul <2 x float> %246, %248
  %250 = insertelement <2 x float> poison, float %229, i64 0
  %251 = insertelement <2 x float> %250, float %231, i64 1
  %252 = insertelement <2 x float> poison, float %235, i64 0
  %253 = shufflevector <2 x float> %252, <2 x float> poison, <2 x i32> zeroinitializer
  %254 = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %251, <2 x float> %253, <2 x float> %249)
  %255 = extractelement <2 x float> %244, i64 0
  %256 = extractelement <2 x float> %244, i64 1
  %257 = call float @llvm.fmuladd.f32(float %256, float %255, float %238)
  %258 = fcmp une float %257, 0.000000e+00
  %259 = fdiv float 1.000000e+00, %257
  %260 = select i1 %258, float %259, float 1.000000e+00
  %261 = shufflevector <2 x float> %254, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  %262 = insertelement <2 x float> poison, float %237, i64 0
  %263 = shufflevector <2 x float> %262, <2 x float> poison, <2 x i32> zeroinitializer
  %264 = fmul <2 x float> %261, %263
  %265 = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %244, <2 x float> %254, <2 x float> %264)
  %266 = insertelement <2 x float> poison, float %260, i64 0
  %267 = shufflevector <2 x float> %266, <2 x float> poison, <2 x i32> zeroinitializer
  %268 = fmul <2 x float> %265, %267
  %269 = extractelement <2 x float> %268, i64 0
  %270 = fcmp ogt float %269, 0.000000e+00
  %271 = extractelement <2 x float> %268, i64 1
  %272 = fcmp ogt float %271, 0.000000e+00
  %273 = select i1 %270, i1 %272, i1 false
  %274 = fadd float %269, %271
  %275 = fcmp olt float %274, 1.000000e+00
  %276 = select i1 %273, i1 %275, i1 false
  br i1 %276, label %318, label %277

277:                                              ; preds = %225
  %278 = getelementptr inbounds %struct.MFace, ptr %33, i64 %208, i32 3
  %279 = load i32, ptr %278, align 4, !tbaa !153
  %280 = icmp eq i32 %279, 0
  br i1 %280, label %347, label %281

281:                                              ; preds = %277
  %282 = getelementptr inbounds [4 x [2 x float]], ptr %226, i64 0, i64 3
  call fastcc void @sub_v2_v2v2(ptr noundef nonnull %5, ptr noundef nonnull %282, ptr noundef nonnull %226) #25
  %283 = load float, ptr %5, align 4, !tbaa !116
  %284 = load float, ptr %152, align 4, !tbaa !116
  %285 = fmul float %230, %284
  %286 = call float @llvm.fmuladd.f32(float %229, float %283, float %285)
  %287 = fmul float %284, %284
  %288 = call float @llvm.fmuladd.f32(float %283, float %283, float %287)
  %289 = fmul float %236, %284
  %290 = call float @llvm.fmuladd.f32(float %283, float %235, float %289)
  %291 = fneg float %286
  %292 = fmul float %286, %291
  %293 = call float @llvm.fmuladd.f32(float %256, float %288, float %292)
  %294 = fcmp une float %293, 0.000000e+00
  %295 = fdiv float 1.000000e+00, %293
  %296 = select i1 %294, float %295, float 1.000000e+00
  %297 = insertelement <2 x float> poison, float %290, i64 0
  %298 = shufflevector <2 x float> %297, <2 x float> %254, <2 x i32> <i32 0, i32 2>
  %299 = insertelement <2 x float> poison, float %291, i64 0
  %300 = shufflevector <2 x float> %299, <2 x float> poison, <2 x i32> zeroinitializer
  %301 = fmul <2 x float> %298, %300
  %302 = insertelement <2 x float> %244, float %288, i64 0
  %303 = shufflevector <2 x float> %298, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  %304 = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %302, <2 x float> %303, <2 x float> %301)
  %305 = insertelement <2 x float> poison, float %296, i64 0
  %306 = shufflevector <2 x float> %305, <2 x float> poison, <2 x i32> zeroinitializer
  %307 = fmul <2 x float> %304, %306
  %308 = extractelement <2 x float> %307, i64 0
  %309 = fcmp ogt float %308, 0.000000e+00
  %310 = extractelement <2 x float> %307, i64 1
  %311 = fcmp ogt float %310, 0.000000e+00
  %312 = select i1 %309, i1 %311, i1 false
  %313 = fadd float %308, %310
  %314 = fcmp olt float %313, 1.000000e+00
  %315 = select i1 %312, i1 %314, i1 false
  br i1 %315, label %316, label %347

316:                                              ; preds = %281
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %8) #27
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %9) #27
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %10) #27
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %11) #27
  call fastcc void @copy_v2_v2(ptr noundef nonnull %8, ptr noundef nonnull %226) #25
  call fastcc void @copy_v2_v2(ptr noundef nonnull %9, ptr noundef nonnull %227) #25
  %317 = getelementptr inbounds [4 x [2 x float]], ptr %226, i64 0, i64 3
  br label %319

318:                                              ; preds = %225
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %8) #27
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %9) #27
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %10) #27
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %11) #27
  call fastcc void @copy_v2_v2(ptr noundef nonnull %8, ptr noundef nonnull %226) #25
  call fastcc void @copy_v2_v2(ptr noundef nonnull %9, ptr noundef nonnull %228) #25
  br label %319

319:                                              ; preds = %316, %318
  %320 = phi ptr [ %317, %316 ], [ %227, %318 ]
  %321 = xor i1 %276, true
  %322 = trunc i64 %208 to i32
  call fastcc void @copy_v2_v2(ptr noundef nonnull %10, ptr noundef nonnull %320) #25
  %323 = getelementptr %struct.Vec3f, ptr %76, i64 %199
  %324 = insertelement <2 x float> poison, float %190, i64 0
  %325 = insertelement <2 x float> %324, float %164, i64 1
  br label %326

326:                                              ; preds = %319, %326
  %327 = phi i64 [ 0, %319 ], [ %334, %326 ]
  %328 = shl nuw nsw i64 %327, 1
  %329 = getelementptr inbounds [10 x float], ptr @__const.dynamicPaint_createUVSurface.jitter5sample, i64 0, i64 %328
  %330 = load <2 x float>, ptr %329, align 8, !tbaa !116
  %331 = fdiv <2 x float> %330, %158
  %332 = fadd <2 x float> %325, %331
  store <2 x float> %332, ptr %11, align 8, !tbaa !116
  %333 = getelementptr %struct.Vec3f, ptr %323, i64 %327
  call void @barycentric_weights_v2(ptr noundef nonnull %8, ptr noundef nonnull %9, ptr noundef nonnull %10, ptr noundef nonnull %11, ptr noundef %333) #26
  %334 = add nuw nsw i64 %327, 1
  %335 = icmp eq i64 %334, %156
  br i1 %335, label %336, label %326, !llvm.loop !255

336:                                              ; preds = %326
  store i32 %322, ptr %183, align 4, !tbaa !161
  %337 = zext i1 %321 to i16
  store i16 %337, ptr %195, align 4, !tbaa !159
  %338 = getelementptr inbounds %struct.MFace, ptr %33, i64 %208
  %339 = load i32, ptr %338, align 4, !tbaa !256
  store i32 %339, ptr %196, align 4, !tbaa !257
  %340 = getelementptr inbounds %struct.MFace, ptr %33, i64 %208, i32 2
  %341 = getelementptr inbounds %struct.MFace, ptr %33, i64 %208, i32 1
  %342 = select i1 %276, ptr %341, ptr %340
  %343 = load i32, ptr %342, align 4, !tbaa !122
  store i32 %343, ptr %197, align 4, !tbaa !258
  %344 = getelementptr inbounds %struct.MFace, ptr %33, i64 %208, i32 3
  %345 = select i1 %276, ptr %340, ptr %344
  %346 = load i32, ptr %345, align 4, !tbaa !122
  store i32 %346, ptr %198, align 4, !tbaa !259
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %11) #27
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %10) #27
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %9) #27
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %8) #27
  br label %353

347:                                              ; preds = %281, %277, %221, %217, %212, %207
  %348 = add nuw nsw i64 %208, 1
  %349 = icmp eq i64 %348, %155
  br i1 %349, label %350, label %207, !llvm.loop !260

350:                                              ; preds = %347, %200
  %351 = add nuw nsw i32 %201, 1
  %352 = icmp ult i32 %201, 4
  br i1 %352, label %200, label %353, !llvm.loop !261

353:                                              ; preds = %350, %336
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %7) #27
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %6) #27
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #27
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #27
  %354 = add nuw nsw i64 %181, 1
  %355 = icmp eq i64 %354, %154
  br i1 %355, label %356, label %180, !llvm.loop !262

356:                                              ; preds = %353
  %357 = add nuw nsw i64 %160, 1
  %358 = icmp eq i64 %357, %154
  br i1 %358, label %171, label %159, !llvm.loop !263

359:                                              ; preds = %459, %171
  %360 = phi i64 [ 0, %171 ], [ %460, %459 ]
  %361 = icmp ne i64 %360, 0
  %362 = icmp slt i64 %360, %175
  %363 = trunc i64 %360 to i32
  %364 = sitofp i32 %363 to float
  %365 = fadd float %364, 5.000000e-01
  %366 = fdiv float %365, %173
  %367 = sext i1 %361 to i64
  %368 = trunc i64 %360 to i32
  %369 = mul i32 %41, %368
  %370 = zext i32 %369 to i64
  %371 = select i1 %362, i64 2, i64 1
  br label %374

372:                                              ; preds = %459
  %373 = zext nneg i32 %41 to i64
  br label %462

374:                                              ; preds = %359, %456
  %375 = phi i64 [ 0, %359 ], [ %457, %456 ]
  %376 = add nuw nsw i64 %375, %370
  %377 = getelementptr inbounds %struct.PaintUVPoint, ptr %66, i64 %376
  %378 = load i32, ptr %377, align 4, !tbaa !161
  %379 = icmp eq i32 %378, -1
  br i1 %379, label %380, label %456

380:                                              ; preds = %374
  %381 = icmp slt i64 %375, %175
  %382 = zext i1 %381 to i32
  %383 = trunc i64 %375 to i32
  %384 = sitofp i32 %383 to float
  %385 = fadd float %384, 5.000000e-01
  %386 = fdiv float %385, %173
  %387 = icmp ne i64 %375, 0
  %388 = sext i1 %387 to i32
  %389 = trunc i64 %376 to i32
  %390 = mul nsw i32 %61, %389
  %391 = getelementptr inbounds %struct.PaintUVPoint, ptr %66, i64 %376, i32 5
  %392 = getelementptr inbounds %struct.PaintUVPoint, ptr %66, i64 %376, i32 6
  %393 = getelementptr inbounds %struct.PaintUVPoint, ptr %66, i64 %376, i32 2
  %394 = getelementptr inbounds %struct.PaintUVPoint, ptr %66, i64 %376, i32 3
  %395 = getelementptr inbounds %struct.PaintUVPoint, ptr %66, i64 %376, i32 4
  %396 = zext i32 %390 to i64
  br label %397

397:                                              ; preds = %453, %380
  %398 = phi i32 [ %388, %380 ], [ %454, %453 ]
  %399 = add nsw i32 %398, %383
  %400 = sext i32 %399 to i64
  br label %401

401:                                              ; preds = %397, %450
  %402 = phi i64 [ %367, %397 ], [ %451, %450 ]
  %403 = trunc i64 %402 to i32
  %404 = or i32 %398, %403
  %405 = icmp eq i32 %404, 0
  br i1 %405, label %450, label %406

406:                                              ; preds = %401
  %407 = add nsw i64 %402, %360
  %408 = mul nsw i64 %407, %174
  %409 = add nsw i64 %408, %400
  %410 = getelementptr inbounds %struct.PaintUVPoint, ptr %66, i64 %409
  %411 = load i32, ptr %410, align 4, !tbaa !161
  %412 = icmp eq i32 %411, -1
  br i1 %412, label %450, label %413

413:                                              ; preds = %406
  %414 = trunc i64 %409 to i32
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %12) #27
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %13) #27
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %14) #27
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %15) #27
  %415 = getelementptr inbounds %struct.PaintUVPoint, ptr %66, i64 %409, i32 6
  %416 = load i16, ptr %415, align 4, !tbaa !159
  %417 = icmp eq i16 %416, 0
  %418 = sext i32 %411 to i64
  %419 = getelementptr inbounds %struct.MTFace, ptr %36, i64 %418
  call fastcc void @copy_v2_v2(ptr noundef nonnull %12, ptr noundef nonnull %419) #25
  %420 = select i1 %417, i64 1, i64 2
  %421 = select i1 %417, i64 2, i64 3
  %422 = getelementptr inbounds [4 x [2 x float]], ptr %419, i64 0, i64 %420
  call fastcc void @copy_v2_v2(ptr noundef nonnull %13, ptr noundef nonnull %422) #25
  %423 = getelementptr inbounds [4 x [2 x float]], ptr %419, i64 0, i64 %421
  call fastcc void @copy_v2_v2(ptr noundef nonnull %14, ptr noundef nonnull %423) #25
  %424 = getelementptr %struct.Vec3f, ptr %76, i64 %396
  %425 = insertelement <2 x float> poison, float %386, i64 0
  %426 = insertelement <2 x float> %425, float %366, i64 1
  br label %427

427:                                              ; preds = %413, %427
  %428 = phi i64 [ 0, %413 ], [ %435, %427 ]
  %429 = shl nuw nsw i64 %428, 1
  %430 = getelementptr inbounds [10 x float], ptr @__const.dynamicPaint_createUVSurface.jitter5sample, i64 0, i64 %429
  %431 = load <2 x float>, ptr %430, align 8, !tbaa !116
  %432 = fdiv <2 x float> %431, %179
  %433 = fadd <2 x float> %426, %432
  store <2 x float> %433, ptr %15, align 8, !tbaa !116
  %434 = getelementptr %struct.Vec3f, ptr %424, i64 %428
  call void @barycentric_weights_v2(ptr noundef nonnull %12, ptr noundef nonnull %13, ptr noundef nonnull %14, ptr noundef nonnull %15, ptr noundef %434) #26
  %435 = add nuw nsw i64 %428, 1
  %436 = icmp eq i64 %435, %177
  br i1 %436, label %437, label %427, !llvm.loop !264

437:                                              ; preds = %427
  store i32 %414, ptr %391, align 4, !tbaa !253
  %438 = load i16, ptr %415, align 4, !tbaa !159
  store i16 %438, ptr %392, align 4, !tbaa !159
  %439 = sext i32 %411 to i64
  %440 = getelementptr inbounds %struct.MFace, ptr %33, i64 %439
  %441 = load i32, ptr %440, align 4, !tbaa !256
  store i32 %441, ptr %393, align 4, !tbaa !257
  %442 = icmp eq i16 %438, 0
  %443 = getelementptr inbounds %struct.MFace, ptr %33, i64 %439, i32 2
  %444 = getelementptr inbounds %struct.MFace, ptr %33, i64 %439, i32 1
  %445 = select i1 %442, ptr %444, ptr %443
  %446 = load i32, ptr %445, align 4, !tbaa !122
  store i32 %446, ptr %394, align 4, !tbaa !258
  %447 = getelementptr inbounds %struct.MFace, ptr %33, i64 %439, i32 3
  %448 = select i1 %442, ptr %443, ptr %447
  %449 = load i32, ptr %448, align 4, !tbaa !122
  store i32 %449, ptr %395, align 4, !tbaa !259
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %15) #27
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %14) #27
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %13) #27
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %12) #27
  br label %456

450:                                              ; preds = %401, %406
  %451 = add nsw i64 %402, 1
  %452 = icmp eq i64 %451, %371
  br i1 %452, label %453, label %401, !llvm.loop !265

453:                                              ; preds = %450
  %454 = add nsw i32 %398, 1
  %455 = icmp slt i32 %398, %382
  br i1 %455, label %397, label %456, !llvm.loop !266

456:                                              ; preds = %453, %437, %374
  %457 = add nuw nsw i64 %375, 1
  %458 = icmp eq i64 %457, %176
  br i1 %458, label %459, label %374, !llvm.loop !267

459:                                              ; preds = %456
  %460 = add nuw nsw i64 %360, 1
  %461 = icmp eq i64 %460, %176
  br i1 %461, label %372, label %359, !llvm.loop !268

462:                                              ; preds = %497, %372
  %463 = phi i64 [ 0, %372 ], [ %498, %497 ]
  %464 = phi i32 [ 0, %372 ], [ %494, %497 ]
  %465 = trunc i64 %463 to i32
  %466 = mul i32 %41, %465
  %467 = zext i32 %466 to i64
  br label %475

468:                                              ; preds = %497, %138
  %469 = phi i1 [ false, %138 ], [ true, %497 ]
  %470 = phi i32 [ 0, %138 ], [ %494, %497 ]
  %471 = icmp eq i32 %41, 0
  br i1 %471, label %513, label %472

472:                                              ; preds = %468
  %473 = call i32 @llvm.umax.i32(i32 %63, i32 1)
  %474 = zext nneg i32 %473 to i64
  br label %500

475:                                              ; preds = %462, %490
  %476 = phi i64 [ 0, %462 ], [ %495, %490 ]
  %477 = phi i32 [ %464, %462 ], [ %494, %490 ]
  %478 = add nuw nsw i64 %476, %467
  %479 = getelementptr inbounds %struct.PaintUVPoint, ptr %66, i64 %478
  %480 = load i32, ptr %479, align 4, !tbaa !161
  %481 = icmp eq i32 %480, -1
  br i1 %481, label %482, label %490

482:                                              ; preds = %475
  %483 = getelementptr inbounds %struct.PaintUVPoint, ptr %66, i64 %478, i32 5
  %484 = load i32, ptr %483, align 4, !tbaa !253
  %485 = icmp eq i32 %484, -1
  br i1 %485, label %490, label %486

486:                                              ; preds = %482
  %487 = zext i32 %484 to i64
  %488 = getelementptr inbounds %struct.PaintUVPoint, ptr %66, i64 %487
  %489 = load i32, ptr %488, align 4, !tbaa !161
  store i32 %489, ptr %479, align 4, !tbaa !161
  br label %490

490:                                              ; preds = %486, %482, %475
  %491 = phi i32 [ %489, %486 ], [ -1, %482 ], [ %480, %475 ]
  %492 = icmp ne i32 %491, -1
  %493 = zext i1 %492 to i32
  %494 = add nsw i32 %477, %493
  %495 = add nuw nsw i64 %476, 1
  %496 = icmp eq i64 %495, %373
  br i1 %496, label %497, label %475, !llvm.loop !269

497:                                              ; preds = %490
  %498 = add nuw nsw i64 %463, 1
  %499 = icmp eq i64 %498, %373
  br i1 %499, label %468, label %462, !llvm.loop !270

500:                                              ; preds = %472, %509
  %501 = phi i64 [ 0, %472 ], [ %511, %509 ]
  %502 = phi i32 [ 0, %472 ], [ %510, %509 ]
  %503 = getelementptr inbounds %struct.PaintUVPoint, ptr %66, i64 %501
  %504 = load i32, ptr %503, align 4, !tbaa !161
  %505 = icmp eq i32 %504, -1
  br i1 %505, label %509, label %506

506:                                              ; preds = %500
  %507 = getelementptr inbounds i32, ptr %70, i64 %501
  store i32 %502, ptr %507, align 4, !tbaa !122
  %508 = add nsw i32 %502, 1
  br label %509

509:                                              ; preds = %500, %506
  %510 = phi i32 [ %508, %506 ], [ %502, %500 ]
  %511 = add nuw nsw i64 %501, 1
  %512 = icmp eq i64 %511, %474
  br i1 %512, label %513, label %500, !llvm.loop !271

513:                                              ; preds = %509, %468
  %514 = getelementptr inbounds %struct.PaintSurfaceData, ptr %53, i64 0, i32 4
  store i32 %63, ptr %514, align 8, !tbaa !145
  call fastcc void @dynamicPaint_initAdjacencyData(ptr noundef %1, i32 noundef 1) #25
  %515 = getelementptr inbounds %struct.PaintSurfaceData, ptr %53, i64 0, i32 2
  %516 = load ptr, ptr %515, align 8, !tbaa !82
  %517 = icmp ne ptr %516, null
  %518 = and i1 %517, %469
  br i1 %518, label %519, label %589

519:                                              ; preds = %513
  %520 = getelementptr inbounds %struct.PaintAdjData, ptr %516, i64 0, i32 1
  %521 = getelementptr inbounds %struct.PaintAdjData, ptr %516, i64 0, i32 2
  %522 = getelementptr inbounds %struct.PaintAdjData, ptr %516, i64 0, i32 3
  %523 = zext nneg i32 %41 to i64
  br label %524

524:                                              ; preds = %586, %519
  %525 = phi i64 [ 0, %519 ], [ %587, %586 ]
  %526 = phi i32 [ 0, %519 ], [ %583, %586 ]
  %527 = trunc i64 %525 to i32
  %528 = mul i32 %41, %527
  %529 = zext i32 %528 to i64
  %530 = trunc i64 %525 to i32
  br label %531

531:                                              ; preds = %524, %582
  %532 = phi i64 [ 0, %524 ], [ %584, %582 ]
  %533 = phi i32 [ %526, %524 ], [ %583, %582 ]
  %534 = add nuw nsw i64 %532, %529
  %535 = getelementptr inbounds %struct.PaintUVPoint, ptr %66, i64 %534
  %536 = load i32, ptr %535, align 4, !tbaa !161
  %537 = icmp eq i32 %536, -1
  br i1 %537, label %582, label %538

538:                                              ; preds = %531
  %539 = load ptr, ptr %520, align 8, !tbaa !83
  %540 = getelementptr inbounds i32, ptr %70, i64 %534
  %541 = load i32, ptr %540, align 4, !tbaa !122
  %542 = sext i32 %541 to i64
  %543 = getelementptr inbounds i32, ptr %539, i64 %542
  store i32 %533, ptr %543, align 4, !tbaa !122
  %544 = load ptr, ptr %521, align 8, !tbaa !85
  %545 = load i32, ptr %540, align 4, !tbaa !122
  %546 = sext i32 %545 to i64
  %547 = getelementptr inbounds i32, ptr %544, i64 %546
  store i32 0, ptr %547, align 4, !tbaa !122
  %548 = trunc i64 %532 to i32
  br label %549

549:                                              ; preds = %538, %578
  %550 = phi i32 [ 0, %538 ], [ %580, %578 ]
  %551 = phi i32 [ %533, %538 ], [ %579, %578 ]
  %552 = call fastcc i32 @dynamicPaint_findNeighbourPixel(ptr noundef %66, ptr noundef nonnull %19, ptr noundef nonnull %3, i32 noundef %41, i32 noundef %41, i32 noundef %548, i32 noundef %530, i32 noundef %550) #25
  %553 = icmp sgt i32 %552, -1
  br i1 %553, label %554, label %568

554:                                              ; preds = %549
  %555 = zext nneg i32 %552 to i64
  %556 = getelementptr inbounds i32, ptr %70, i64 %555
  %557 = load i32, ptr %556, align 4, !tbaa !122
  %558 = load ptr, ptr %516, align 8, !tbaa !86
  %559 = zext i32 %551 to i64
  %560 = getelementptr inbounds i32, ptr %558, i64 %559
  store i32 %557, ptr %560, align 4, !tbaa !122
  %561 = load ptr, ptr %521, align 8, !tbaa !85
  %562 = load i32, ptr %540, align 4, !tbaa !122
  %563 = sext i32 %562 to i64
  %564 = getelementptr inbounds i32, ptr %561, i64 %563
  %565 = load i32, ptr %564, align 4, !tbaa !122
  %566 = add nsw i32 %565, 1
  store i32 %566, ptr %564, align 4, !tbaa !122
  %567 = add i32 %551, 1
  br label %578

568:                                              ; preds = %549
  %569 = add nsw i32 %552, 3
  %570 = icmp ult i32 %569, 2
  br i1 %570, label %571, label %578

571:                                              ; preds = %568
  %572 = load ptr, ptr %522, align 8, !tbaa !87
  %573 = load i32, ptr %540, align 4, !tbaa !122
  %574 = sext i32 %573 to i64
  %575 = getelementptr inbounds i32, ptr %572, i64 %574
  %576 = load i32, ptr %575, align 4, !tbaa !122
  %577 = or i32 %576, 1
  store i32 %577, ptr %575, align 4, !tbaa !122
  br label %578

578:                                              ; preds = %571, %568, %554
  %579 = phi i32 [ %567, %554 ], [ %551, %571 ], [ %551, %568 ]
  %580 = add nuw nsw i32 %550, 1
  %581 = icmp eq i32 %580, 8
  br i1 %581, label %582, label %549, !llvm.loop !272

582:                                              ; preds = %578, %531
  %583 = phi i32 [ %533, %531 ], [ %579, %578 ]
  %584 = add nuw nsw i64 %532, 1
  %585 = icmp eq i64 %584, %523
  br i1 %585, label %586, label %531, !llvm.loop !273

586:                                              ; preds = %582
  %587 = add nuw nsw i64 %525, 1
  %588 = icmp eq i64 %587, %523
  br i1 %588, label %589, label %524, !llvm.loop !274

589:                                              ; preds = %586, %513
  %590 = load ptr, ptr @MEM_callocN, align 8, !tbaa !44
  %591 = call ptr %590(i64 noundef 16, ptr noundef nonnull @.str.22) #26
  %592 = icmp eq ptr %591, null
  br i1 %592, label %593, label %594

593:                                              ; preds = %589
  store i32 %470, ptr %514, align 8, !tbaa !145
  br label %649

594:                                              ; preds = %589
  %595 = load ptr, ptr @MEM_callocN, align 8, !tbaa !44
  %596 = sext i32 %470 to i64
  %597 = mul nsw i64 %596, 28
  %598 = call ptr %595(i64 noundef %597, ptr noundef nonnull @.str.23) #26
  store ptr %598, ptr %591, align 8, !tbaa !77
  %599 = load ptr, ptr @MEM_callocN, align 8, !tbaa !44
  %600 = mul nsw i32 %470, %61
  %601 = sext i32 %600 to i64
  %602 = mul nsw i64 %601, 12
  %603 = call ptr %599(i64 noundef %602, ptr noundef nonnull @.str.23) #26
  %604 = getelementptr inbounds %struct.ImgSeqFormatData, ptr %591, i64 0, i32 1
  store ptr %603, ptr %604, align 8, !tbaa !79
  %605 = load ptr, ptr %591, align 8, !tbaa !77
  %606 = icmp eq ptr %605, null
  %607 = icmp eq ptr %603, null
  %608 = select i1 %606, i1 true, i1 %607
  store i32 %470, ptr %514, align 8, !tbaa !145
  br i1 %608, label %609, label %620

609:                                              ; preds = %594
  br i1 %606, label %613, label %610

610:                                              ; preds = %609
  %611 = load ptr, ptr @MEM_freeN, align 8, !tbaa !44
  call void %611(ptr noundef nonnull %605) #26
  %612 = load ptr, ptr %604, align 8, !tbaa !79
  br label %613

613:                                              ; preds = %610, %609
  %614 = phi ptr [ %612, %610 ], [ %603, %609 ]
  %615 = icmp eq ptr %614, null
  br i1 %615, label %618, label %616

616:                                              ; preds = %613
  %617 = load ptr, ptr @MEM_freeN, align 8, !tbaa !44
  call void %617(ptr noundef nonnull %614) #26
  br label %618

618:                                              ; preds = %613, %616
  %619 = load ptr, ptr @MEM_freeN, align 8, !tbaa !44
  call void %619(ptr noundef nonnull %591) #26
  br label %649

620:                                              ; preds = %594
  store ptr %591, ptr %53, align 8, !tbaa !75
  br i1 %471, label %651, label %621

621:                                              ; preds = %620
  %622 = mul nuw nsw i32 %61, 12
  %623 = zext nneg i32 %622 to i64
  %624 = zext nneg i32 %61 to i64
  %625 = call i32 @llvm.umax.i32(i32 %63, i32 1)
  %626 = zext nneg i32 %625 to i64
  br label %627

627:                                              ; preds = %621, %644
  %628 = phi i64 [ 0, %621 ], [ %646, %644 ]
  %629 = phi i32 [ 0, %621 ], [ %645, %644 ]
  %630 = getelementptr inbounds %struct.PaintUVPoint, ptr %66, i64 %628
  %631 = load i32, ptr %630, align 4, !tbaa !161
  %632 = icmp eq i32 %631, -1
  br i1 %632, label %644, label %633

633:                                              ; preds = %627
  %634 = load ptr, ptr %591, align 8, !tbaa !77
  %635 = sext i32 %629 to i64
  %636 = getelementptr inbounds %struct.PaintUVPoint, ptr %634, i64 %635
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(28) %636, ptr noundef nonnull align 4 dereferenceable(28) %630, i64 28, i1 false)
  %637 = load ptr, ptr %604, align 8, !tbaa !79
  %638 = mul nsw i32 %629, %61
  %639 = sext i32 %638 to i64
  %640 = getelementptr inbounds %struct.Vec3f, ptr %637, i64 %639
  %641 = mul nuw nsw i64 %628, %624
  %642 = getelementptr inbounds %struct.Vec3f, ptr %76, i64 %641
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(1) %640, ptr noundef nonnull align 4 dereferenceable(1) %642, i64 %623, i1 false)
  %643 = add nsw i32 %629, 1
  br label %644

644:                                              ; preds = %627, %633
  %645 = phi i32 [ %643, %633 ], [ %629, %627 ]
  %646 = add nuw nsw i64 %628, 1
  %647 = icmp eq i64 %646, %626
  br i1 %647, label %648, label %627, !llvm.loop !275

648:                                              ; preds = %644
  br i1 %608, label %649, label %651

649:                                              ; preds = %618, %56, %593, %80, %648
  %650 = phi ptr [ %84, %648 ], [ %84, %593 ], [ null, %80 ], [ null, %56 ], [ %84, %618 ]
  call fastcc void @setError(ptr noundef %17, ptr noundef nonnull @.str.17) #25
  br label %651

651:                                              ; preds = %620, %649, %648
  %652 = phi i1 [ false, %649 ], [ true, %648 ], [ true, %620 ]
  %653 = phi i32 [ 0, %649 ], [ 1, %648 ], [ 1, %620 ]
  %654 = phi ptr [ %650, %649 ], [ %84, %648 ], [ %84, %620 ]
  %655 = icmp eq ptr %654, null
  br i1 %655, label %658, label %656

656:                                              ; preds = %651
  %657 = load ptr, ptr @MEM_freeN, align 8, !tbaa !44
  call void %657(ptr noundef nonnull %654) #26
  br label %658

658:                                              ; preds = %656, %651
  br i1 %67, label %661, label %659

659:                                              ; preds = %658
  %660 = load ptr, ptr @MEM_freeN, align 8, !tbaa !44
  call void %660(ptr noundef nonnull %66) #26
  br label %661

661:                                              ; preds = %659, %658
  br i1 %77, label %664, label %662

662:                                              ; preds = %661
  %663 = load ptr, ptr @MEM_freeN, align 8, !tbaa !44
  call void %663(ptr noundef nonnull %76) #26
  br label %664

664:                                              ; preds = %662, %661
  br i1 %71, label %667, label %665

665:                                              ; preds = %664
  %666 = load ptr, ptr @MEM_freeN, align 8, !tbaa !44
  call void %666(ptr noundef nonnull %70) #26
  br label %667

667:                                              ; preds = %665, %664
  br i1 %652, label %668, label %669

668:                                              ; preds = %667
  call fastcc void @dynamicPaint_allocateSurfaceType(ptr noundef %1) #25
  call fastcc void @dynamicPaint_setInitialColor(ptr noundef %0, ptr noundef %1) #25
  br label %669

669:                                              ; preds = %667, %668, %55, %44, %38, %26, %21
  %670 = phi i32 [ 0, %26 ], [ 0, %44 ], [ 0, %55 ], [ 0, %38 ], [ 0, %21 ], [ %653, %668 ], [ %653, %667 ]
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %3) #27
  ret i32 %670
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @setError(ptr noundef %0, ptr noundef %1) unnamed_addr #4 !PGOFuncName !276 {
  %3 = getelementptr inbounds %struct.DynamicPaintCanvasSettings, ptr %0, i64 0, i32 6
  %4 = tail call ptr @BLI_strncpy(ptr noundef nonnull %3, ptr noundef %1, i64 noundef 64) #26
  ret void
}

; Function Attrs: optsize
declare void @CustomData_validate_layer_name(ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: optsize
declare ptr @CustomData_get_layer_named(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: nofree nounwind optsize
declare noundef i32 @printf(ptr nocapture noundef readonly, ...) local_unnamed_addr #11

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @copy_v2_v2(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1) unnamed_addr #7 !PGOFuncName !277 {
  %3 = load float, ptr %1, align 4, !tbaa !116
  store float %3, ptr %0, align 4, !tbaa !116
  %4 = getelementptr inbounds float, ptr %1, i64 1
  %5 = load float, ptr %4, align 4, !tbaa !116
  %6 = getelementptr inbounds float, ptr %0, i64 1
  store float %5, ptr %6, align 4, !tbaa !116
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @sub_v2_v2v2(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2) unnamed_addr #7 !PGOFuncName !278 {
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
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fmuladd.f32(float, float, float) #12

; Function Attrs: optsize
declare void @barycentric_weights_v2(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc i32 @dynamicPaint_findNeighbourPixel(ptr nocapture noundef readonly %0, ptr noundef %1, ptr noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %5, i32 noundef %6, i32 noundef %7) unnamed_addr #4 !PGOFuncName !279 {
  %9 = alloca [2 x float], align 8
  %10 = alloca [2 x float], align 4
  %11 = alloca [2 x float], align 4
  %12 = sext i32 %7 to i64
  %13 = getelementptr inbounds [8 x i32], ptr @neighX, i64 0, i64 %12
  %14 = load i32, ptr %13, align 4, !tbaa !122
  %15 = getelementptr inbounds [8 x i32], ptr @neighY, i64 0, i64 %12
  %16 = load i32, ptr %15, align 4, !tbaa !122
  %17 = insertelement <2 x i32> poison, i32 %14, i64 0
  %18 = insertelement <2 x i32> %17, i32 %16, i64 1
  %19 = insertelement <2 x i32> poison, i32 %5, i64 0
  %20 = insertelement <2 x i32> %19, i32 %6, i64 1
  %21 = add nsw <2 x i32> %18, %20
  %22 = extractelement <2 x i32> %21, i64 0
  %23 = icmp sgt i32 %22, -1
  %24 = icmp slt i32 %22, %3
  %25 = and i1 %23, %24
  br i1 %25, label %26, label %271

26:                                               ; preds = %8
  %27 = extractelement <2 x i32> %21, i64 1
  %28 = icmp sgt i32 %27, -1
  %29 = icmp slt i32 %27, %4
  %30 = and i1 %28, %29
  br i1 %30, label %31, label %271

31:                                               ; preds = %26
  %32 = mul nuw nsw i32 %27, %3
  %33 = add nuw nsw i32 %32, %22
  %34 = zext nneg i32 %33 to i64
  %35 = getelementptr inbounds %struct.PaintUVPoint, ptr %0, i64 %34
  %36 = mul nsw i32 %6, %3
  %37 = add nsw i32 %36, %5
  %38 = sext i32 %37 to i64
  %39 = getelementptr inbounds %struct.PaintUVPoint, ptr %0, i64 %38
  %40 = load i32, ptr %35, align 4, !tbaa !161
  %41 = load i32, ptr %39, align 4, !tbaa !161
  %42 = icmp eq i32 %40, %41
  br i1 %42, label %43, label %47

43:                                               ; preds = %31
  %44 = getelementptr inbounds %struct.PaintUVPoint, ptr %0, i64 %34, i32 5
  %45 = load i32, ptr %44, align 4, !tbaa !253
  %46 = icmp eq i32 %45, -1
  br i1 %46, label %271, label %47

47:                                               ; preds = %43, %31
  %48 = icmp eq i32 %40, -1
  br i1 %48, label %53, label %49

49:                                               ; preds = %47
  %50 = getelementptr inbounds %struct.PaintUVPoint, ptr %0, i64 %34, i32 5
  %51 = load i32, ptr %50, align 4, !tbaa !253
  %52 = icmp eq i32 %51, -1
  br i1 %52, label %271, label %53

53:                                               ; preds = %49, %47
  %54 = getelementptr inbounds %struct.DerivedMesh, ptr %1, i64 0, i32 25
  %55 = load ptr, ptr %54, align 8, !tbaa !152
  %56 = tail call i32 %55(ptr noundef %1) #26
  %57 = getelementptr inbounds %struct.DerivedMesh, ptr %1, i64 0, i32 33
  %58 = load ptr, ptr %57, align 8, !tbaa !151
  %59 = tail call ptr %58(ptr noundef %1) #26
  %60 = getelementptr inbounds %struct.DerivedMesh, ptr %1, i64 0, i32 2
  %61 = tail call ptr @CustomData_get_layer_named(ptr noundef nonnull %60, i32 noundef 5, ptr noundef %2) #26
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %9) #27
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %10) #27
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %11) #27
  %62 = sitofp <2 x i32> %21 to <2 x float>
  %63 = insertelement <2 x i32> poison, i32 %3, i64 0
  %64 = insertelement <2 x i32> %63, i32 %4, i64 1
  %65 = sitofp <2 x i32> %64 to <2 x float>
  %66 = getelementptr inbounds [2 x float], ptr %9, i64 0, i64 1
  %67 = fadd <2 x float> %62, <float 5.000000e-01, float 5.000000e-01>
  %68 = fdiv <2 x float> %67, %65
  store <2 x float> %68, ptr %9, align 8, !tbaa !116
  %69 = getelementptr inbounds %struct.PaintUVPoint, ptr %0, i64 %38, i32 6
  %70 = load i16, ptr %69, align 4, !tbaa !159
  %71 = icmp eq i16 %70, 0
  %72 = select i1 %71, i32 2, i32 3
  %73 = select i1 %71, i32 1, i32 2
  %74 = getelementptr inbounds %struct.PaintUVPoint, ptr %0, i64 %38, i32 2
  %75 = load i32, ptr %74, align 4, !tbaa !257
  %76 = getelementptr inbounds %struct.PaintUVPoint, ptr %0, i64 %38, i32 3
  %77 = load i32, ptr %76, align 4, !tbaa !258
  %78 = load i32, ptr %39, align 4, !tbaa !161
  %79 = zext i32 %78 to i64
  %80 = getelementptr inbounds %struct.MTFace, ptr %61, i64 %79
  %81 = zext nneg i32 %73 to i64
  %82 = getelementptr inbounds [4 x [2 x float]], ptr %80, i64 0, i64 %81
  %83 = call float @dist_squared_to_line_segment_v2(ptr noundef nonnull %9, ptr noundef %80, ptr noundef nonnull %82) #26
  %84 = load i32, ptr %39, align 4, !tbaa !161
  %85 = zext i32 %84 to i64
  %86 = getelementptr inbounds %struct.MTFace, ptr %61, i64 %85
  %87 = getelementptr inbounds [4 x [2 x float]], ptr %86, i64 0, i64 %81
  %88 = zext nneg i32 %72 to i64
  %89 = getelementptr inbounds [4 x [2 x float]], ptr %86, i64 0, i64 %88
  %90 = call float @dist_squared_to_line_segment_v2(ptr noundef nonnull %9, ptr noundef nonnull %87, ptr noundef nonnull %89) #26
  %91 = fcmp olt float %90, %83
  br i1 %91, label %92, label %96

92:                                               ; preds = %53
  %93 = load i32, ptr %76, align 4, !tbaa !258
  %94 = getelementptr inbounds %struct.PaintUVPoint, ptr %0, i64 %38, i32 4
  %95 = load i32, ptr %94, align 4, !tbaa !259
  br label %96

96:                                               ; preds = %92, %53
  %97 = phi i32 [ %73, %92 ], [ 0, %53 ]
  %98 = phi i32 [ %72, %92 ], [ %73, %53 ]
  %99 = phi i32 [ %93, %92 ], [ %75, %53 ]
  %100 = phi i32 [ %95, %92 ], [ %77, %53 ]
  %101 = phi float [ %90, %92 ], [ %83, %53 ]
  %102 = load i32, ptr %39, align 4, !tbaa !161
  %103 = zext i32 %102 to i64
  %104 = getelementptr inbounds %struct.MTFace, ptr %61, i64 %103
  %105 = getelementptr inbounds [4 x [2 x float]], ptr %104, i64 0, i64 %88
  %106 = call float @dist_squared_to_line_segment_v2(ptr noundef nonnull %9, ptr noundef nonnull %105, ptr noundef %104) #26
  %107 = fcmp olt float %106, %101
  br i1 %107, label %108, label %112

108:                                              ; preds = %96
  %109 = getelementptr inbounds %struct.PaintUVPoint, ptr %0, i64 %38, i32 4
  %110 = load i32, ptr %109, align 4, !tbaa !259
  %111 = load i32, ptr %74, align 4, !tbaa !257
  br label %112

112:                                              ; preds = %108, %96
  %113 = phi i32 [ %72, %108 ], [ %97, %96 ]
  %114 = phi i32 [ 0, %108 ], [ %98, %96 ]
  %115 = phi i32 [ %110, %108 ], [ %99, %96 ]
  %116 = phi i32 [ %111, %108 ], [ %100, %96 ]
  %117 = icmp sgt i32 %56, 0
  br i1 %117, label %118, label %269

118:                                              ; preds = %112
  %119 = zext nneg i32 %56 to i64
  br label %120

120:                                              ; preds = %118, %177
  %121 = phi i64 [ 0, %118 ], [ %178, %177 ]
  %122 = getelementptr inbounds %struct.MFace, ptr %59, i64 %121
  %123 = getelementptr inbounds %struct.MFace, ptr %59, i64 %121, i32 3
  %124 = load i32, ptr %123, align 4, !tbaa !153
  %125 = icmp eq i32 %124, 0
  %126 = select i1 %125, i32 -1, i32 %124
  %127 = load i32, ptr %122, align 4, !tbaa !256
  %128 = icmp eq i32 %115, %127
  br i1 %128, label %139, label %129

129:                                              ; preds = %120
  %130 = getelementptr inbounds %struct.MFace, ptr %59, i64 %121, i32 1
  %131 = load i32, ptr %130, align 4, !tbaa !280
  %132 = icmp eq i32 %115, %131
  br i1 %132, label %139, label %133

133:                                              ; preds = %129
  %134 = getelementptr inbounds %struct.MFace, ptr %59, i64 %121, i32 2
  %135 = load i32, ptr %134, align 4, !tbaa !281
  %136 = icmp eq i32 %115, %135
  %137 = icmp eq i32 %115, %126
  %138 = select i1 %136, i1 true, i1 %137
  br i1 %138, label %139, label %177

139:                                              ; preds = %133, %129, %120
  %140 = icmp eq i32 %116, %127
  br i1 %140, label %151, label %141

141:                                              ; preds = %139
  %142 = getelementptr inbounds %struct.MFace, ptr %59, i64 %121, i32 1
  %143 = load i32, ptr %142, align 4, !tbaa !280
  %144 = icmp eq i32 %116, %143
  br i1 %144, label %151, label %145

145:                                              ; preds = %141
  %146 = getelementptr inbounds %struct.MFace, ptr %59, i64 %121, i32 2
  %147 = load i32, ptr %146, align 4, !tbaa !281
  %148 = icmp eq i32 %116, %147
  %149 = icmp eq i32 %116, %126
  %150 = select i1 %148, i1 true, i1 %149
  br i1 %150, label %151, label %177

151:                                              ; preds = %145, %141, %139
  %152 = load i32, ptr %39, align 4, !tbaa !161
  %153 = zext i32 %152 to i64
  %154 = icmp eq i64 %121, %153
  br i1 %154, label %177, label %155

155:                                              ; preds = %151
  %156 = trunc i64 %121 to i32
  br i1 %128, label %166, label %157

157:                                              ; preds = %155
  %158 = getelementptr inbounds %struct.MFace, ptr %59, i64 %121, i32 1
  %159 = load i32, ptr %158, align 4, !tbaa !280
  %160 = icmp eq i32 %115, %159
  br i1 %160, label %166, label %161

161:                                              ; preds = %157
  %162 = getelementptr inbounds %struct.MFace, ptr %59, i64 %121, i32 2
  %163 = load i32, ptr %162, align 4, !tbaa !281
  %164 = icmp eq i32 %115, %163
  %165 = select i1 %164, i64 2, i64 3
  br label %166

166:                                              ; preds = %161, %157, %155
  %167 = phi i64 [ 0, %155 ], [ 1, %157 ], [ %165, %161 ]
  br i1 %140, label %180, label %168

168:                                              ; preds = %166
  %169 = getelementptr inbounds %struct.MFace, ptr %59, i64 %121, i32 1
  %170 = load i32, ptr %169, align 4, !tbaa !280
  %171 = icmp eq i32 %116, %170
  br i1 %171, label %180, label %172

172:                                              ; preds = %168
  %173 = getelementptr inbounds %struct.MFace, ptr %59, i64 %121, i32 2
  %174 = load i32, ptr %173, align 4, !tbaa !281
  %175 = icmp eq i32 %116, %174
  %176 = select i1 %175, i64 2, i64 3
  br label %180

177:                                              ; preds = %151, %145, %133
  %178 = add nuw nsw i64 %121, 1
  %179 = icmp eq i64 %178, %119
  br i1 %179, label %269, label %120, !llvm.loop !282

180:                                              ; preds = %172, %168, %166
  %181 = phi i64 [ %176, %172 ], [ 1, %168 ], [ 0, %166 ]
  %182 = getelementptr inbounds %struct.MTFace, ptr %61, i64 %153
  %183 = zext nneg i32 %113 to i64
  %184 = getelementptr inbounds [4 x [2 x float]], ptr %182, i64 0, i64 %183
  %185 = zext nneg i32 %114 to i64
  %186 = getelementptr inbounds [4 x [2 x float]], ptr %182, i64 0, i64 %185
  %187 = and i64 %121, 4294967295
  %188 = getelementptr inbounds %struct.MTFace, ptr %61, i64 %187
  %189 = getelementptr inbounds [4 x [2 x float]], ptr %188, i64 0, i64 %167
  %190 = getelementptr inbounds [4 x [2 x float]], ptr %188, i64 0, i64 %181
  %191 = load float, ptr %184, align 4, !tbaa !116
  %192 = load float, ptr %189, align 4, !tbaa !116
  %193 = fcmp oeq float %191, %192
  br i1 %193, label %196, label %194

194:                                              ; preds = %180
  %195 = load float, ptr %186, align 4, !tbaa !116
  br label %212

196:                                              ; preds = %180
  %197 = getelementptr inbounds float, ptr %184, i64 1
  %198 = load float, ptr %197, align 4, !tbaa !116
  %199 = getelementptr inbounds float, ptr %189, i64 1
  %200 = load float, ptr %199, align 4, !tbaa !116
  %201 = fcmp oeq float %198, %200
  %202 = load float, ptr %186, align 4, !tbaa !116
  br i1 %201, label %203, label %212

203:                                              ; preds = %196
  %204 = load float, ptr %190, align 4, !tbaa !116
  %205 = fcmp oeq float %202, %204
  br i1 %205, label %206, label %212

206:                                              ; preds = %203
  %207 = getelementptr inbounds float, ptr %186, i64 1
  %208 = load float, ptr %207, align 4, !tbaa !116
  %209 = getelementptr inbounds float, ptr %190, i64 1
  %210 = load float, ptr %209, align 4, !tbaa !116
  %211 = fcmp oeq float %208, %210
  br i1 %211, label %269, label %212

212:                                              ; preds = %194, %206, %203, %196
  %213 = phi float [ %195, %194 ], [ %202, %206 ], [ %202, %203 ], [ %202, %196 ]
  %214 = fcmp oeq float %213, %192
  br i1 %214, label %215, label %230

215:                                              ; preds = %212
  %216 = getelementptr inbounds float, ptr %186, i64 1
  %217 = load float, ptr %216, align 4, !tbaa !116
  %218 = getelementptr inbounds float, ptr %189, i64 1
  %219 = load float, ptr %218, align 4, !tbaa !116
  %220 = fcmp oeq float %217, %219
  br i1 %220, label %221, label %230

221:                                              ; preds = %215
  %222 = load float, ptr %190, align 4, !tbaa !116
  %223 = fcmp oeq float %191, %222
  br i1 %223, label %224, label %230

224:                                              ; preds = %221
  %225 = getelementptr inbounds float, ptr %184, i64 1
  %226 = load float, ptr %225, align 4, !tbaa !116
  %227 = getelementptr inbounds float, ptr %190, i64 1
  %228 = load float, ptr %227, align 4, !tbaa !116
  %229 = fcmp oeq float %226, %228
  br i1 %229, label %269, label %230

230:                                              ; preds = %224, %221, %215, %212
  %231 = call float @closest_to_line_v2(ptr noundef nonnull %10, ptr noundef nonnull %9, ptr noundef nonnull %184, ptr noundef nonnull %186) #26
  %232 = fcmp olt float %231, 0.000000e+00
  %233 = select i1 %232, float 0.000000e+00, float %231
  %234 = fcmp ogt float %233, 1.000000e+00
  %235 = select i1 %234, float 1.000000e+00, float %233
  call fastcc void @sub_v2_v2v2(ptr noundef nonnull %11, ptr noundef nonnull %190, ptr noundef nonnull %189) #25
  call fastcc void @mul_v2_fl(ptr noundef nonnull %11, float noundef %235) #25
  call fastcc void @copy_v2_v2(ptr noundef nonnull %9, ptr noundef nonnull %189) #25
  call fastcc void @add_v2_v2(ptr noundef nonnull %9, ptr noundef nonnull %11) #25
  %236 = load float, ptr %9, align 8, !tbaa !116
  %237 = extractelement <2 x float> %65, i64 0
  %238 = call float @llvm.fmuladd.f32(float %236, float %237, float -5.000000e-01)
  %239 = load float, ptr %66, align 4, !tbaa !116
  %240 = extractelement <2 x float> %65, i64 1
  %241 = call float @llvm.fmuladd.f32(float %239, float %240, float -5.000000e-01)
  %242 = call float @llvm.floor.f32(float %238)
  %243 = fptosi float %242 to i32
  %244 = call float @llvm.floor.f32(float %241)
  %245 = fptosi float %244 to i32
  %246 = icmp sgt i32 %243, -1
  %247 = icmp slt i32 %243, %3
  %248 = and i1 %246, %247
  br i1 %248, label %249, label %269

249:                                              ; preds = %230
  %250 = icmp sgt i32 %245, -1
  %251 = icmp slt i32 %245, %4
  %252 = and i1 %250, %251
  br i1 %252, label %253, label %269

253:                                              ; preds = %249
  %254 = mul nuw nsw i32 %245, %3
  %255 = add nuw nsw i32 %254, %243
  %256 = icmp eq i32 %255, %37
  br i1 %256, label %269, label %257

257:                                              ; preds = %253
  %258 = zext nneg i32 %255 to i64
  %259 = getelementptr inbounds %struct.PaintUVPoint, ptr %0, i64 %258
  %260 = load i32, ptr %259, align 4, !tbaa !161
  %261 = icmp eq i32 %260, %156
  br i1 %261, label %262, label %269

262:                                              ; preds = %257
  %263 = getelementptr inbounds %struct.PaintUVPoint, ptr %0, i64 %258, i32 5
  %264 = load i32, ptr %263, align 4, !tbaa !253
  %265 = icmp eq i32 %264, -1
  br i1 %265, label %269, label %266

266:                                              ; preds = %262
  %267 = getelementptr inbounds %struct.PaintUVPoint, ptr %0, i64 %38, i32 5
  %268 = load i32, ptr %267, align 4, !tbaa !253
  br label %269

269:                                              ; preds = %177, %112, %206, %224, %262, %266, %257, %253, %249, %230
  %270 = phi i32 [ -3, %230 ], [ -3, %249 ], [ -1, %253 ], [ -1, %257 ], [ %268, %266 ], [ %255, %262 ], [ %33, %224 ], [ %33, %206 ], [ -2, %112 ], [ -2, %177 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %11) #27
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %10) #27
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %9) #27
  br label %271

271:                                              ; preds = %49, %43, %26, %8, %269
  %272 = phi i32 [ %270, %269 ], [ -3, %8 ], [ -3, %26 ], [ %33, %43 ], [ %33, %49 ]
  ret i32 %272
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @dynamicPaint_outputSurfaceImage(ptr nocapture noundef readonly %0, ptr noundef %1, i16 noundef signext %2) local_unnamed_addr #4 {
  %4 = alloca [1024 x i8], align 16
  %5 = getelementptr inbounds %struct.DynamicPaintSurface, ptr %0, i64 0, i32 3
  %6 = load ptr, ptr %5, align 8, !tbaa !74
  %7 = load ptr, ptr %6, align 8, !tbaa !75
  call void @llvm.lifetime.start.p0(i64 1024, ptr nonnull %4) #27
  %8 = getelementptr inbounds %struct.PaintSurfaceData, ptr %6, i64 0, i32 1
  %9 = load ptr, ptr %8, align 8, !tbaa !80
  %10 = icmp eq ptr %9, null
  br i1 %10, label %11, label %14

11:                                               ; preds = %3
  %12 = getelementptr inbounds %struct.DynamicPaintSurface, ptr %0, i64 0, i32 2
  %13 = load ptr, ptr %12, align 8, !tbaa !58
  tail call fastcc void @setError(ptr noundef %13, ptr noundef nonnull @.str.24) #25
  br label %169

14:                                               ; preds = %3
  %15 = call ptr @BLI_strncpy(ptr noundef nonnull %4, ptr noundef %1, i64 noundef 1024) #26
  %16 = call i32 @BKE_add_image_extension_from_type(ptr noundef nonnull %4, i8 noundef zeroext 17) #26
  %17 = load ptr, ptr @G, align 8, !tbaa !283
  %18 = getelementptr inbounds %struct.Main, ptr %17, i64 0, i32 2
  %19 = call zeroext i8 @BLI_path_abs(ptr noundef nonnull %4, ptr noundef nonnull %18) #26
  call void @BLI_make_existing_file(ptr noundef nonnull %4) #26
  %20 = getelementptr inbounds %struct.DynamicPaintSurface, ptr %0, i64 0, i32 20
  %21 = load i32, ptr %20, align 4, !tbaa !120
  %22 = call ptr @IMB_allocImBuf(i32 noundef %21, i32 noundef %21, i8 noundef zeroext 32, i32 noundef 32) #26
  %23 = icmp eq ptr %22, null
  br i1 %23, label %34, label %24

24:                                               ; preds = %14
  %25 = getelementptr inbounds %struct.PaintSurfaceData, ptr %6, i64 0, i32 4
  %26 = load i32, ptr %25, align 8, !tbaa !145
  %27 = icmp sgt i32 %26, 0
  br i1 %27, label %28, label %166

28:                                               ; preds = %24
  %29 = getelementptr inbounds %struct.DynamicPaintSurface, ptr %0, i64 0, i32 11
  %30 = getelementptr inbounds %struct.DynamicPaintSurface, ptr %0, i64 0, i32 31
  %31 = getelementptr inbounds %struct.ImBuf, ptr %22, i64 0, i32 9
  %32 = getelementptr inbounds %struct.DynamicPaintSurface, ptr %0, i64 0, i32 12
  %33 = getelementptr inbounds %struct.DynamicPaintSurface, ptr %0, i64 0, i32 18
  br label %37

34:                                               ; preds = %14
  %35 = getelementptr inbounds %struct.DynamicPaintSurface, ptr %0, i64 0, i32 2
  %36 = load ptr, ptr %35, align 8, !tbaa !58
  call fastcc void @setError(ptr noundef %36, ptr noundef nonnull @.str.25) #25
  br label %169

37:                                               ; preds = %28, %161
  %38 = phi i64 [ 0, %28 ], [ %162, %161 ]
  %39 = load ptr, ptr %7, align 8, !tbaa !77
  %40 = getelementptr inbounds %struct.PaintUVPoint, ptr %39, i64 %38, i32 1
  %41 = load i32, ptr %40, align 4, !tbaa !254
  %42 = shl i32 %41, 2
  switch i16 %2, label %161 [
    i16 1, label %43
    i16 0, label %64
  ]

43:                                               ; preds = %37
  %44 = load i16, ptr %29, align 2, !tbaa !43
  %45 = icmp eq i16 %44, 0
  br i1 %45, label %46, label %161

46:                                               ; preds = %43
  %47 = load ptr, ptr %8, align 8, !tbaa !80
  %48 = getelementptr inbounds %struct.PaintPoint, ptr %47, i64 %38, i32 2
  %49 = load float, ptr %48, align 4, !tbaa !233
  %50 = fcmp ogt float %49, 1.000000e+00
  %51 = select i1 %50, float 1.000000e+00, float %49
  %52 = load ptr, ptr %31, align 8, !tbaa !285
  %53 = sext i32 %42 to i64
  %54 = getelementptr inbounds float, ptr %52, i64 %53
  store float %51, ptr %54, align 4, !tbaa !116
  %55 = or disjoint i32 %42, 1
  %56 = sext i32 %55 to i64
  %57 = getelementptr inbounds float, ptr %52, i64 %56
  store float %51, ptr %57, align 4, !tbaa !116
  %58 = or disjoint i32 %42, 2
  %59 = sext i32 %58 to i64
  %60 = getelementptr inbounds float, ptr %52, i64 %59
  store float %51, ptr %60, align 4, !tbaa !116
  %61 = or disjoint i32 %42, 3
  %62 = sext i32 %61 to i64
  %63 = getelementptr inbounds float, ptr %52, i64 %62
  store float 1.000000e+00, ptr %63, align 4, !tbaa !116
  br label %161

64:                                               ; preds = %37
  %65 = load i16, ptr %29, align 2, !tbaa !43
  switch i16 %65, label %161 [
    i16 0, label %66
    i16 1, label %102
    i16 3, label %133
  ]

66:                                               ; preds = %64
  %67 = load ptr, ptr %8, align 8, !tbaa !80
  %68 = getelementptr inbounds %struct.PaintPoint, ptr %67, i64 %38
  %69 = getelementptr inbounds %struct.PaintPoint, ptr %67, i64 %38, i32 4
  %70 = getelementptr inbounds %struct.PaintPoint, ptr %67, i64 %38, i32 5
  %71 = load float, ptr %70, align 4, !tbaa !148
  %72 = getelementptr inbounds %struct.PaintPoint, ptr %67, i64 %38, i32 1
  %73 = load float, ptr %72, align 4, !tbaa !222
  %74 = load ptr, ptr %31, align 8, !tbaa !285
  %75 = sext i32 %42 to i64
  %76 = getelementptr inbounds float, ptr %74, i64 %75
  call fastcc void @blendColors(ptr noundef nonnull %69, float noundef %71, ptr noundef %68, float noundef %73, ptr noundef %76) #25
  %77 = load i32, ptr %33, align 4, !tbaa !50
  %78 = and i32 %77, 8
  %79 = icmp eq i32 %78, 0
  br i1 %79, label %161, label %80

80:                                               ; preds = %66
  %81 = load ptr, ptr %31, align 8, !tbaa !285
  %82 = or disjoint i32 %42, 3
  %83 = sext i32 %82 to i64
  %84 = getelementptr inbounds float, ptr %81, i64 %83
  %85 = load float, ptr %84, align 4, !tbaa !116
  %86 = getelementptr inbounds float, ptr %81, i64 %75
  %87 = load float, ptr %86, align 4, !tbaa !116
  %88 = or disjoint i32 %42, 1
  %89 = sext i32 %88 to i64
  %90 = getelementptr inbounds float, ptr %81, i64 %89
  %91 = load float, ptr %90, align 4, !tbaa !116
  %92 = insertelement <2 x float> poison, float %87, i64 0
  %93 = insertelement <2 x float> %92, float %85, i64 1
  %94 = insertelement <2 x float> poison, float %85, i64 0
  %95 = insertelement <2 x float> %94, float %91, i64 1
  %96 = fmul <2 x float> %93, %95
  store <2 x float> %96, ptr %86, align 4, !tbaa !116
  %97 = or disjoint i32 %42, 2
  %98 = sext i32 %97 to i64
  %99 = getelementptr inbounds float, ptr %81, i64 %98
  %100 = load float, ptr %99, align 4, !tbaa !116
  %101 = fmul float %85, %100
  store float %101, ptr %99, align 4, !tbaa !116
  br label %161

102:                                              ; preds = %64
  %103 = load ptr, ptr %8, align 8, !tbaa !80
  %104 = getelementptr inbounds float, ptr %103, i64 %38
  %105 = load float, ptr %104, align 4, !tbaa !116
  %106 = load float, ptr %30, align 4, !tbaa !288
  %107 = fcmp une float %106, 0.000000e+00
  %108 = select i1 %107, float %106, float 1.000000e+00
  %109 = fdiv float %105, %108
  %110 = load i16, ptr %32, align 8, !tbaa !118
  %111 = icmp eq i16 %110, 0
  %112 = fmul float %109, 5.000000e-01
  %113 = fsub float 5.000000e-01, %112
  %114 = select i1 %111, float %113, float %109
  %115 = fcmp olt float %114, 0.000000e+00
  br i1 %115, label %119, label %116

116:                                              ; preds = %102
  %117 = fcmp ogt float %114, 1.000000e+00
  br i1 %117, label %118, label %119

118:                                              ; preds = %116
  br label %119

119:                                              ; preds = %102, %116, %118
  %120 = phi float [ 1.000000e+00, %118 ], [ %114, %116 ], [ 0.000000e+00, %102 ]
  %121 = load ptr, ptr %31, align 8, !tbaa !285
  %122 = sext i32 %42 to i64
  %123 = getelementptr inbounds float, ptr %121, i64 %122
  store float %120, ptr %123, align 4, !tbaa !116
  %124 = or disjoint i32 %42, 1
  %125 = sext i32 %124 to i64
  %126 = getelementptr inbounds float, ptr %121, i64 %125
  store float %120, ptr %126, align 4, !tbaa !116
  %127 = or disjoint i32 %42, 2
  %128 = sext i32 %127 to i64
  %129 = getelementptr inbounds float, ptr %121, i64 %128
  store float %120, ptr %129, align 4, !tbaa !116
  %130 = or disjoint i32 %42, 3
  %131 = sext i32 %130 to i64
  %132 = getelementptr inbounds float, ptr %121, i64 %131
  store float 1.000000e+00, ptr %132, align 4, !tbaa !116
  br label %161

133:                                              ; preds = %64
  %134 = load ptr, ptr %8, align 8, !tbaa !80
  %135 = getelementptr inbounds %struct.PaintWavePoint, ptr %134, i64 %38
  %136 = load float, ptr %135, align 4, !tbaa !247
  %137 = load float, ptr %30, align 4, !tbaa !288
  %138 = fcmp une float %137, 0.000000e+00
  %139 = select i1 %138, float %137, float 1.000000e+00
  %140 = fdiv float %136, %139
  %141 = fmul float %140, 5.000000e-01
  %142 = fadd float %141, 5.000000e-01
  %143 = fcmp olt float %142, 0.000000e+00
  br i1 %143, label %147, label %144

144:                                              ; preds = %133
  %145 = fcmp ogt float %142, 1.000000e+00
  br i1 %145, label %146, label %147

146:                                              ; preds = %144
  br label %147

147:                                              ; preds = %133, %144, %146
  %148 = phi float [ 1.000000e+00, %146 ], [ %142, %144 ], [ 0.000000e+00, %133 ]
  %149 = load ptr, ptr %31, align 8, !tbaa !285
  %150 = sext i32 %42 to i64
  %151 = getelementptr inbounds float, ptr %149, i64 %150
  store float %148, ptr %151, align 4, !tbaa !116
  %152 = or disjoint i32 %42, 1
  %153 = sext i32 %152 to i64
  %154 = getelementptr inbounds float, ptr %149, i64 %153
  store float %148, ptr %154, align 4, !tbaa !116
  %155 = or disjoint i32 %42, 2
  %156 = sext i32 %155 to i64
  %157 = getelementptr inbounds float, ptr %149, i64 %156
  store float %148, ptr %157, align 4, !tbaa !116
  %158 = or disjoint i32 %42, 3
  %159 = sext i32 %158 to i64
  %160 = getelementptr inbounds float, ptr %149, i64 %159
  store float 1.000000e+00, ptr %160, align 4, !tbaa !116
  br label %161

161:                                              ; preds = %64, %66, %80, %37, %119, %147, %43, %46
  %162 = add nuw nsw i64 %38, 1
  %163 = load i32, ptr %25, align 8, !tbaa !145
  %164 = sext i32 %163 to i64
  %165 = icmp slt i64 %162, %164
  br i1 %165, label %37, label %166, !llvm.loop !289

166:                                              ; preds = %161, %24
  %167 = getelementptr inbounds %struct.ImBuf, ptr %22, i64 0, i32 26
  store i32 1073741919, ptr %167, align 8, !tbaa !290
  %168 = call signext i16 @IMB_saveiff(ptr noundef nonnull %22, ptr noundef nonnull %4, i32 noundef 32) #26
  call void @IMB_freeImBuf(ptr noundef nonnull %22) #26
  br label %169

169:                                              ; preds = %166, %34, %11
  call void @llvm.lifetime.end.p0(i64 1024, ptr nonnull %4) #27
  ret void
}

; Function Attrs: optsize
declare i32 @BKE_add_image_extension_from_type(ptr noundef, i8 noundef zeroext) local_unnamed_addr #5

; Function Attrs: optsize
declare zeroext i8 @BLI_path_abs(ptr noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: optsize
declare void @BLI_make_existing_file(ptr noundef) local_unnamed_addr #5

; Function Attrs: optsize
declare ptr @IMB_allocImBuf(i32 noundef, i32 noundef, i8 noundef zeroext, i32 noundef) local_unnamed_addr #5

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(argmem: readwrite) uwtable
define internal fastcc void @blendColors(ptr nocapture noundef readonly %0, float noundef %1, ptr nocapture noundef readonly %2, float noundef %3, ptr nocapture noundef writeonly %4) unnamed_addr #13 !PGOFuncName !291 {
  %6 = fsub float 1.000000e+00, %3
  %7 = tail call float @llvm.fmuladd.f32(float %1, float %6, float %3)
  %8 = fcmp une float %7, 0.000000e+00
  br i1 %8, label %9, label %22

9:                                                ; preds = %5, %9
  %10 = phi i64 [ %20, %9 ], [ 0, %5 ]
  %11 = getelementptr inbounds float, ptr %0, i64 %10
  %12 = load float, ptr %11, align 4, !tbaa !116
  %13 = fmul float %12, %1
  %14 = getelementptr inbounds float, ptr %2, i64 %10
  %15 = load float, ptr %14, align 4, !tbaa !116
  %16 = fmul float %15, %3
  %17 = tail call float @llvm.fmuladd.f32(float %13, float %6, float %16)
  %18 = fdiv float %17, %7
  %19 = getelementptr inbounds float, ptr %4, i64 %10
  store float %18, ptr %19, align 4, !tbaa !116
  %20 = add nuw nsw i64 %10, 1
  %21 = icmp eq i64 %20, 3
  br i1 %21, label %23, label %9, !llvm.loop !292

22:                                               ; preds = %5
  tail call fastcc void @copy_v3_v3(ptr noundef %4, ptr noundef %0) #25
  br label %23

23:                                               ; preds = %9, %22
  %24 = getelementptr inbounds float, ptr %4, i64 3
  store float %7, ptr %24, align 4, !tbaa !116
  ret void
}

; Function Attrs: optsize
declare signext i16 @IMB_saveiff(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: optsize
declare void @IMB_freeImBuf(ptr noundef) local_unnamed_addr #5

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef i32 @dynamicPaint_calculateFrame(ptr nocapture noundef readonly %0, ptr noundef %1, ptr noundef %2, i32 noundef %3) local_unnamed_addr #4 {
  %5 = getelementptr inbounds %struct.DynamicPaintSurface, ptr %0, i64 0, i32 18
  %6 = load i32, ptr %5, align 4, !tbaa !50
  %7 = and i32 %6, 256
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %14, label %9

9:                                                ; preds = %4
  %10 = getelementptr inbounds %struct.DynamicPaintSurface, ptr %0, i64 0, i32 2
  %11 = load ptr, ptr %10, align 8, !tbaa !58
  %12 = getelementptr inbounds %struct.DynamicPaintCanvasSettings, ptr %11, i64 0, i32 1
  %13 = load ptr, ptr %12, align 8, !tbaa !108
  tail call fastcc void @dynamicPaint_applySurfaceDisplace(ptr noundef nonnull %0, ptr noundef %13) #25
  br label %14

14:                                               ; preds = %9, %4
  tail call fastcc void @dynamicPaint_generateBakeData(ptr noundef nonnull %0, ptr noundef %1, ptr noundef %2) #25
  %15 = getelementptr inbounds %struct.DynamicPaintSurface, ptr %0, i64 0, i32 21
  %16 = load i32, ptr %15, align 8, !tbaa !121
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %40, label %18

18:                                               ; preds = %14
  %19 = getelementptr inbounds %struct.DynamicPaintSurface, ptr %0, i64 0, i32 22
  %20 = load i32, ptr %19, align 4, !tbaa !214
  %21 = icmp eq i32 %20, %3
  br i1 %21, label %40, label %22

22:                                               ; preds = %18
  %23 = add nsw i32 %16, 1
  %24 = sitofp i32 %23 to float
  %25 = fdiv float 1.000000e+00, %24
  %26 = icmp slt i32 %16, 1
  br i1 %26, label %40, label %31

27:                                               ; preds = %31
  %28 = add nuw nsw i32 %33, 1
  %29 = load i32, ptr %15, align 8, !tbaa !121
  %30 = icmp slt i32 %33, %29
  br i1 %30, label %31, label %40, !llvm.loop !293

31:                                               ; preds = %22, %27
  %32 = phi i32 [ %29, %27 ], [ %16, %22 ]
  %33 = phi i32 [ %28, %27 ], [ 1, %22 ]
  %34 = sitofp i32 %33 to float
  %35 = add nsw i32 %32, 1
  %36 = sitofp i32 %35 to float
  %37 = fdiv float %34, %36
  %38 = tail call fastcc i32 @dynamicPaint_doStep(ptr noundef %1, ptr noundef %2, ptr noundef nonnull %0, float noundef %25, float noundef %37) #25
  %39 = icmp eq i32 %38, 0
  br i1 %39, label %43, label %27

40:                                               ; preds = %27, %22, %18, %14
  %41 = phi float [ 1.000000e+00, %18 ], [ 1.000000e+00, %14 ], [ %25, %22 ], [ %25, %27 ]
  %42 = tail call fastcc i32 @dynamicPaint_doStep(ptr noundef %1, ptr noundef %2, ptr noundef nonnull %0, float noundef %41, float noundef 0.000000e+00) #25
  br label %43

43:                                               ; preds = %31, %40
  %44 = phi i32 [ %42, %40 ], [ 0, %31 ]
  ret i32 %44
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @dynamicPaint_applySurfaceDisplace(ptr nocapture noundef readonly %0, ptr noundef %1) unnamed_addr #4 !PGOFuncName !294 {
  %3 = alloca [3 x float], align 8
  %4 = getelementptr inbounds %struct.DynamicPaintSurface, ptr %0, i64 0, i32 3
  %5 = load ptr, ptr %4, align 8, !tbaa !74
  %6 = icmp eq ptr %5, null
  br i1 %6, label %50, label %7

7:                                                ; preds = %2
  %8 = getelementptr inbounds %struct.DynamicPaintSurface, ptr %0, i64 0, i32 10
  %9 = load i16, ptr %8, align 4, !tbaa !34
  %10 = icmp eq i16 %9, 1
  br i1 %10, label %11, label %50

11:                                               ; preds = %7
  %12 = getelementptr inbounds %struct.DynamicPaintSurface, ptr %0, i64 0, i32 11
  %13 = load i16, ptr %12, align 2, !tbaa !43
  %14 = icmp eq i16 %13, 1
  br i1 %14, label %15, label %50

15:                                               ; preds = %11
  %16 = getelementptr inbounds %struct.DerivedMesh, ptr %1, i64 0, i32 31
  %17 = load ptr, ptr %16, align 8, !tbaa !246
  %18 = tail call ptr %17(ptr noundef %1) #26
  %19 = getelementptr inbounds %struct.PaintSurfaceData, ptr %5, i64 0, i32 1
  %20 = load ptr, ptr %19, align 8, !tbaa !80
  %21 = getelementptr inbounds %struct.PaintSurfaceData, ptr %5, i64 0, i32 4
  %22 = load i32, ptr %21, align 8, !tbaa !145
  %23 = icmp sgt i32 %22, 0
  br i1 %23, label %24, label %50

24:                                               ; preds = %15
  %25 = getelementptr inbounds %struct.DynamicPaintSurface, ptr %0, i64 0, i32 32
  %26 = getelementptr inbounds [3 x float], ptr %3, i64 0, i64 2
  br label %27

27:                                               ; preds = %24, %27
  %28 = phi i64 [ 0, %24 ], [ %46, %27 ]
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %3) #27
  %29 = getelementptr inbounds float, ptr %20, i64 %28
  %30 = load float, ptr %29, align 4, !tbaa !116
  %31 = load float, ptr %25, align 8, !tbaa !117
  %32 = fmul float %30, %31
  %33 = getelementptr inbounds %struct.MVert, ptr %18, i64 %28
  %34 = getelementptr inbounds %struct.MVert, ptr %18, i64 %28, i32 1
  call fastcc void @normal_short_to_float_v3(ptr noundef nonnull %3, ptr noundef nonnull %34) #25
  call fastcc void @normalize_v3(ptr noundef nonnull %3) #25
  %35 = load <2 x float>, ptr %3, align 8, !tbaa !116
  %36 = load <2 x float>, ptr %33, align 4, !tbaa !116
  %37 = fneg <2 x float> %35
  %38 = insertelement <2 x float> poison, float %32, i64 0
  %39 = shufflevector <2 x float> %38, <2 x float> poison, <2 x i32> zeroinitializer
  %40 = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %37, <2 x float> %39, <2 x float> %36)
  store <2 x float> %40, ptr %33, align 4, !tbaa !116
  %41 = load float, ptr %26, align 8, !tbaa !116
  %42 = getelementptr inbounds [3 x float], ptr %33, i64 0, i64 2
  %43 = load float, ptr %42, align 4, !tbaa !116
  %44 = fneg float %41
  %45 = tail call float @llvm.fmuladd.f32(float %44, float %32, float %43)
  store float %45, ptr %42, align 4, !tbaa !116
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %3) #27
  %46 = add nuw nsw i64 %28, 1
  %47 = load i32, ptr %21, align 8, !tbaa !145
  %48 = sext i32 %47 to i64
  %49 = icmp slt i64 %46, %48
  br i1 %49, label %27, label %50, !llvm.loop !295

50:                                               ; preds = %27, %15, %11, %2, %7
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @dynamicPaint_generateBakeData(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, ptr noundef %2) unnamed_addr #4 !PGOFuncName !296 {
  %4 = alloca [3 x float], align 4
  %5 = alloca [3 x float], align 4
  %6 = alloca [3 x float], align 4
  %7 = alloca [3 x float], align 4
  %8 = alloca [3 x float], align 4
  %9 = alloca [3 x float], align 4
  %10 = alloca [3 x float], align 4
  %11 = alloca [3 x float], align 4
  %12 = getelementptr inbounds %struct.DynamicPaintSurface, ptr %0, i64 0, i32 3
  %13 = load ptr, ptr %12, align 8, !tbaa !74
  %14 = getelementptr inbounds %struct.PaintSurfaceData, ptr %13, i64 0, i32 2
  %15 = load ptr, ptr %14, align 8, !tbaa !82
  %16 = getelementptr inbounds %struct.PaintSurfaceData, ptr %13, i64 0, i32 3
  %17 = load ptr, ptr %16, align 8, !tbaa !89
  %18 = getelementptr inbounds %struct.DynamicPaintSurface, ptr %0, i64 0, i32 2
  %19 = load ptr, ptr %18, align 8, !tbaa !58
  %20 = getelementptr inbounds %struct.DynamicPaintCanvasSettings, ptr %19, i64 0, i32 1
  %21 = load ptr, ptr %20, align 8, !tbaa !108
  %22 = tail call fastcc i32 @surface_needsVelocityData(ptr noundef %0, ptr noundef %1) #25, !range !175
  %23 = tail call fastcc i32 @surface_needsAccelerationData(ptr noundef %0) #25, !range !175
  %24 = getelementptr inbounds %struct.DerivedMesh, ptr %21, i64 0, i32 23
  %25 = load ptr, ptr %24, align 8, !tbaa !172
  %26 = tail call i32 %25(ptr noundef %21) #26
  %27 = getelementptr inbounds %struct.DerivedMesh, ptr %21, i64 0, i32 31
  %28 = load ptr, ptr %27, align 8, !tbaa !246
  %29 = tail call ptr %28(ptr noundef %21) #26
  %30 = icmp eq ptr %17, null
  br i1 %30, label %66, label %31

31:                                               ; preds = %3
  %32 = tail call fastcc i32 @dynamicPaint_surfaceHasMoved(ptr noundef nonnull %0, ptr noundef %2) #25
  %33 = icmp eq i32 %23, 0
  br i1 %33, label %47, label %34

34:                                               ; preds = %31
  %35 = getelementptr inbounds %struct.PaintBakeData, ptr %17, i64 0, i32 9
  %36 = load ptr, ptr %35, align 8, !tbaa !101
  %37 = icmp eq ptr %36, null
  br i1 %37, label %47, label %38

38:                                               ; preds = %34
  %39 = getelementptr inbounds %struct.PaintBakeData, ptr %17, i64 0, i32 8
  %40 = load ptr, ptr %39, align 8, !tbaa !100
  %41 = icmp eq ptr %40, null
  br i1 %41, label %47, label %42

42:                                               ; preds = %38
  %43 = getelementptr inbounds %struct.PaintSurfaceData, ptr %13, i64 0, i32 4
  %44 = load i32, ptr %43, align 8, !tbaa !145
  %45 = sext i32 %44 to i64
  %46 = mul nsw i64 %45, 12
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %36, ptr nonnull align 4 %40, i64 %46, i1 false)
  br label %47

47:                                               ; preds = %42, %38, %34, %31
  %48 = icmp eq i32 %22, 0
  br i1 %48, label %64, label %49

49:                                               ; preds = %47
  %50 = getelementptr inbounds %struct.PaintBakeData, ptr %17, i64 0, i32 8
  %51 = load ptr, ptr %50, align 8, !tbaa !100
  %52 = icmp eq ptr %51, null
  br i1 %52, label %64, label %53

53:                                               ; preds = %49
  %54 = getelementptr inbounds %struct.PaintBakeData, ptr %17, i64 0, i32 13
  %55 = load i32, ptr %54, align 8, !tbaa !146
  %56 = icmp eq i32 %55, 0
  %57 = icmp ne i32 %32, 0
  %58 = select i1 %56, i1 %57, i1 false
  br i1 %58, label %66, label %59

59:                                               ; preds = %53
  %60 = getelementptr inbounds %struct.PaintSurfaceData, ptr %13, i64 0, i32 4
  %61 = load i32, ptr %60, align 8, !tbaa !145
  %62 = sext i32 %61 to i64
  %63 = mul nsw i64 %62, 12
  tail call void @llvm.memset.p0.i64(ptr nonnull align 4 %51, i8 0, i64 %63, i1 false)
  br label %64

64:                                               ; preds = %59, %49, %47
  %65 = icmp eq i32 %32, 0
  br i1 %65, label %440, label %66

66:                                               ; preds = %53, %64, %3
  %67 = load ptr, ptr @MEM_mallocN, align 8, !tbaa !44
  %68 = sext i32 %26 to i64
  %69 = mul nsw i64 %68, 12
  %70 = tail call ptr %67(i64 noundef %69, ptr noundef nonnull @.str.37) #26
  %71 = icmp eq ptr %70, null
  br i1 %71, label %440, label %72

72:                                               ; preds = %66
  br i1 %30, label %73, label %139

73:                                               ; preds = %72
  %74 = load ptr, ptr @MEM_callocN, align 8, !tbaa !44
  %75 = tail call ptr %74(i64 noundef 192, ptr noundef nonnull @.str.38) #26
  store ptr %75, ptr %16, align 8, !tbaa !89
  %76 = icmp eq ptr %75, null
  br i1 %76, label %77, label %79

77:                                               ; preds = %73
  %78 = load ptr, ptr @MEM_freeN, align 8, !tbaa !44
  tail call void %78(ptr noundef nonnull %70) #26
  br label %440

79:                                               ; preds = %73
  %80 = load ptr, ptr @MEM_mallocN, align 8, !tbaa !44
  %81 = getelementptr inbounds %struct.PaintSurfaceData, ptr %13, i64 0, i32 4
  %82 = load i32, ptr %81, align 8, !tbaa !145
  %83 = sext i32 %82 to i64
  %84 = shl nsw i64 %83, 4
  %85 = tail call ptr %80(i64 noundef %84, ptr noundef nonnull @.str.39) #26
  store ptr %85, ptr %75, align 8, !tbaa !90
  %86 = load ptr, ptr @MEM_mallocN, align 8, !tbaa !44
  %87 = load i32, ptr %81, align 8, !tbaa !145
  %88 = sext i32 %87 to i64
  %89 = shl nsw i64 %88, 2
  %90 = tail call ptr %86(i64 noundef %89, ptr noundef nonnull @.str.40) #26
  %91 = getelementptr inbounds %struct.PaintBakeData, ptr %75, i64 0, i32 1
  store ptr %90, ptr %91, align 8, !tbaa !94
  %92 = load ptr, ptr @MEM_mallocN, align 8, !tbaa !44
  %93 = load i32, ptr %81, align 8, !tbaa !145
  %94 = sext i32 %93 to i64
  %95 = shl nsw i64 %94, 2
  %96 = tail call ptr %92(i64 noundef %95, ptr noundef nonnull @.str.41) #26
  %97 = getelementptr inbounds %struct.PaintBakeData, ptr %75, i64 0, i32 2
  store ptr %96, ptr %97, align 8, !tbaa !95
  %98 = load ptr, ptr @MEM_mallocN, align 8, !tbaa !44
  %99 = tail call fastcc i32 @surface_totalSamples(ptr noundef nonnull %0) #25
  %100 = sext i32 %99 to i64
  %101 = mul nsw i64 %100, 12
  %102 = tail call ptr %98(i64 noundef %101, ptr noundef nonnull @.str.42) #26
  %103 = getelementptr inbounds %struct.PaintBakeData, ptr %75, i64 0, i32 3
  store ptr %102, ptr %103, align 8, !tbaa !96
  %104 = load ptr, ptr @MEM_mallocN, align 8, !tbaa !44
  %105 = mul nsw i64 %68, 20
  %106 = tail call ptr %104(i64 noundef %105, ptr noundef nonnull @.str.43) #26
  %107 = getelementptr inbounds %struct.PaintBakeData, ptr %75, i64 0, i32 11
  store ptr %106, ptr %107, align 8, !tbaa !99
  %108 = load ptr, ptr %75, align 8, !tbaa !90
  %109 = icmp eq ptr %108, null
  br i1 %109, label %121, label %110

110:                                              ; preds = %79
  %111 = load ptr, ptr %91, align 8, !tbaa !94
  %112 = icmp eq ptr %111, null
  br i1 %112, label %119, label %113

113:                                              ; preds = %110
  %114 = load ptr, ptr %97, align 8, !tbaa !95
  %115 = icmp eq ptr %114, null
  br i1 %115, label %119, label %116

116:                                              ; preds = %113
  %117 = load ptr, ptr %103, align 8, !tbaa !96
  %118 = icmp eq ptr %117, null
  br i1 %118, label %119, label %139

119:                                              ; preds = %116, %113, %110
  %120 = load ptr, ptr @MEM_freeN, align 8, !tbaa !44
  tail call void %120(ptr noundef nonnull %108) #26
  br label %121

121:                                              ; preds = %79, %119
  %122 = load ptr, ptr %91, align 8, !tbaa !94
  %123 = icmp eq ptr %122, null
  br i1 %123, label %126, label %124

124:                                              ; preds = %121
  %125 = load ptr, ptr @MEM_freeN, align 8, !tbaa !44
  tail call void %125(ptr noundef nonnull %122) #26
  br label %126

126:                                              ; preds = %124, %121
  %127 = load ptr, ptr %97, align 8, !tbaa !95
  %128 = icmp eq ptr %127, null
  br i1 %128, label %131, label %129

129:                                              ; preds = %126
  %130 = load ptr, ptr @MEM_freeN, align 8, !tbaa !44
  tail call void %130(ptr noundef nonnull %127) #26
  br label %131

131:                                              ; preds = %129, %126
  %132 = load ptr, ptr %103, align 8, !tbaa !96
  %133 = icmp eq ptr %132, null
  br i1 %133, label %136, label %134

134:                                              ; preds = %131
  %135 = load ptr, ptr @MEM_freeN, align 8, !tbaa !44
  tail call void %135(ptr noundef nonnull %132) #26
  br label %136

136:                                              ; preds = %131, %134
  %137 = load ptr, ptr @MEM_freeN, align 8, !tbaa !44
  tail call void %137(ptr noundef nonnull %70) #26
  %138 = load ptr, ptr %18, align 8, !tbaa !58
  tail call fastcc void @setError(ptr noundef %138, ptr noundef nonnull @.str.17) #25
  br label %440

139:                                              ; preds = %116, %72
  %140 = phi ptr [ %17, %72 ], [ %75, %116 ]
  %141 = icmp eq i32 %22, 0
  br i1 %141, label %153, label %142

142:                                              ; preds = %139
  %143 = getelementptr inbounds %struct.PaintBakeData, ptr %140, i64 0, i32 8
  %144 = load ptr, ptr %143, align 8, !tbaa !100
  %145 = icmp eq ptr %144, null
  br i1 %145, label %146, label %153

146:                                              ; preds = %142
  %147 = load ptr, ptr @MEM_callocN, align 8, !tbaa !44
  %148 = getelementptr inbounds %struct.PaintSurfaceData, ptr %13, i64 0, i32 4
  %149 = load i32, ptr %148, align 8, !tbaa !145
  %150 = sext i32 %149 to i64
  %151 = mul nsw i64 %150, 12
  %152 = tail call ptr %147(i64 noundef %151, ptr noundef nonnull @.str.44) #26
  store ptr %152, ptr %143, align 8, !tbaa !100
  br label %153

153:                                              ; preds = %146, %142, %139
  %154 = icmp eq i32 %23, 0
  br i1 %154, label %175, label %155

155:                                              ; preds = %153
  %156 = getelementptr inbounds %struct.PaintBakeData, ptr %140, i64 0, i32 9
  %157 = load ptr, ptr %156, align 8, !tbaa !101
  %158 = icmp eq ptr %157, null
  br i1 %158, label %159, label %175

159:                                              ; preds = %155
  %160 = load ptr, ptr @MEM_mallocN, align 8, !tbaa !44
  %161 = getelementptr inbounds %struct.PaintSurfaceData, ptr %13, i64 0, i32 4
  %162 = load i32, ptr %161, align 8, !tbaa !145
  %163 = sext i32 %162 to i64
  %164 = mul nsw i64 %163, 12
  %165 = tail call ptr %160(i64 noundef %164, ptr noundef nonnull @.str.45) #26
  store ptr %165, ptr %156, align 8, !tbaa !101
  %166 = icmp eq ptr %165, null
  br i1 %166, label %175, label %167

167:                                              ; preds = %159
  %168 = getelementptr inbounds %struct.PaintBakeData, ptr %140, i64 0, i32 8
  %169 = load ptr, ptr %168, align 8, !tbaa !100
  %170 = icmp eq ptr %169, null
  br i1 %170, label %175, label %171

171:                                              ; preds = %167
  %172 = load i32, ptr %161, align 8, !tbaa !145
  %173 = sext i32 %172 to i64
  %174 = mul nsw i64 %173, 12
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %165, ptr nonnull align 4 %169, i64 %174, i1 false)
  br label %175

175:                                              ; preds = %159, %167, %171, %155, %153
  %176 = getelementptr inbounds %struct.PaintBakeData, ptr %140, i64 0, i32 4
  store i32 0, ptr %176, align 8, !tbaa !297
  %177 = icmp sgt i32 %26, 0
  br i1 %177, label %178, label %181

178:                                              ; preds = %175
  %179 = getelementptr inbounds %struct.Object, ptr %2, i64 0, i32 47
  %180 = zext nneg i32 %26 to i64
  br label %200

181:                                              ; preds = %200, %175
  %182 = getelementptr inbounds %struct.PaintSurfaceData, ptr %13, i64 0, i32 4
  %183 = load i32, ptr %182, align 8, !tbaa !145
  %184 = icmp sgt i32 %183, 0
  br i1 %184, label %185, label %432

185:                                              ; preds = %181
  %186 = or i1 %30, %141
  %187 = getelementptr inbounds %struct.PaintBakeData, ptr %140, i64 0, i32 3
  %188 = getelementptr inbounds %struct.PaintBakeData, ptr %140, i64 0, i32 1
  %189 = getelementptr inbounds %struct.DynamicPaintSurface, ptr %0, i64 0, i32 10
  %190 = getelementptr inbounds %struct.DynamicPaintSurface, ptr %0, i64 0, i32 18
  %191 = icmp ne ptr %15, null
  %192 = getelementptr inbounds %struct.PaintBakeData, ptr %140, i64 0, i32 2
  %193 = getelementptr inbounds %struct.PaintAdjData, ptr %15, i64 0, i32 2
  %194 = getelementptr inbounds %struct.PaintAdjData, ptr %15, i64 0, i32 1
  %195 = getelementptr inbounds %struct.Object, ptr %2, i64 0, i32 47
  %196 = getelementptr inbounds %struct.DynamicPaintSurface, ptr %0, i64 0, i32 11
  %197 = getelementptr inbounds %struct.Object, ptr %2, i64 0, i32 36
  %198 = getelementptr inbounds %struct.PaintBakeData, ptr %140, i64 0, i32 13
  %199 = getelementptr inbounds %struct.PaintBakeData, ptr %140, i64 0, i32 8
  br label %206

200:                                              ; preds = %178, %200
  %201 = phi i64 [ 0, %178 ], [ %204, %200 ]
  %202 = getelementptr inbounds %struct.Vec3f, ptr %70, i64 %201
  %203 = getelementptr inbounds %struct.MVert, ptr %29, i64 %201
  tail call fastcc void @copy_v3_v3(ptr noundef nonnull %202, ptr noundef %203) #25
  tail call void @mul_m4_v3(ptr noundef nonnull %179, ptr noundef nonnull %202) #26
  tail call fastcc void @boundInsert(ptr noundef nonnull %176, ptr noundef nonnull %202) #25
  %204 = add nuw nsw i64 %201, 1
  %205 = icmp eq i64 %204, %180
  br i1 %205, label %181, label %200, !llvm.loop !298

206:                                              ; preds = %185, %427
  %207 = phi i64 [ 0, %185 ], [ %428, %427 ]
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %4) #27
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %4, i8 0, i64 12, i1 false)
  br i1 %186, label %215, label %208

208:                                              ; preds = %206
  %209 = load ptr, ptr %187, align 8, !tbaa !96
  %210 = load ptr, ptr %188, align 8, !tbaa !94
  %211 = getelementptr inbounds i32, ptr %210, i64 %207
  %212 = load i32, ptr %211, align 4, !tbaa !122
  %213 = sext i32 %212 to i64
  %214 = getelementptr inbounds %struct.Vec3f, ptr %209, i64 %213
  call fastcc void @copy_v3_v3(ptr noundef nonnull %4, ptr noundef %214) #25
  br label %215

215:                                              ; preds = %208, %206
  %216 = load i16, ptr %189, align 4, !tbaa !34
  switch i16 %216, label %379 [
    i16 2, label %217
    i16 1, label %295
  ]

217:                                              ; preds = %215
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %5) #27
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %6) #27
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %7) #27
  %218 = load ptr, ptr %13, align 8, !tbaa !75
  %219 = load ptr, ptr %218, align 8, !tbaa !77
  %220 = load i32, ptr %190, align 4, !tbaa !50
  %221 = and i32 %220, 2
  %222 = icmp eq i32 %221, 0
  %223 = select i1 %222, i32 1, i32 5
  %224 = load ptr, ptr %192, align 8, !tbaa !95
  %225 = getelementptr inbounds i32, ptr %224, i64 %207
  store i32 %223, ptr %225, align 4, !tbaa !122
  %226 = trunc i64 %207 to i32
  %227 = mul nsw i32 %223, %226
  %228 = load ptr, ptr %188, align 8, !tbaa !94
  %229 = getelementptr inbounds i32, ptr %228, i64 %207
  store i32 %227, ptr %229, align 4, !tbaa !122
  %230 = load i32, ptr %225, align 4, !tbaa !122
  %231 = icmp sgt i32 %230, 0
  br i1 %231, label %232, label %266

232:                                              ; preds = %217
  %233 = getelementptr inbounds %struct.PaintUVPoint, ptr %219, i64 %207, i32 2
  %234 = getelementptr inbounds %struct.PaintUVPoint, ptr %219, i64 %207, i32 3
  %235 = getelementptr inbounds %struct.PaintUVPoint, ptr %219, i64 %207, i32 4
  %236 = getelementptr inbounds %struct.ImgSeqFormatData, ptr %218, i64 0, i32 1
  br label %237

237:                                              ; preds = %232, %237
  %238 = phi i32 [ %230, %232 ], [ %264, %237 ]
  %239 = phi i32 [ 0, %232 ], [ %261, %237 ]
  %240 = load ptr, ptr %187, align 8, !tbaa !96
  %241 = load ptr, ptr %188, align 8, !tbaa !94
  %242 = getelementptr inbounds i32, ptr %241, i64 %207
  %243 = load i32, ptr %242, align 4, !tbaa !122
  %244 = add nsw i32 %243, %239
  %245 = sext i32 %244 to i64
  %246 = getelementptr inbounds %struct.Vec3f, ptr %240, i64 %245
  %247 = load i32, ptr %233, align 4, !tbaa !257
  %248 = zext i32 %247 to i64
  %249 = getelementptr inbounds %struct.Vec3f, ptr %70, i64 %248
  %250 = load i32, ptr %234, align 4, !tbaa !258
  %251 = zext i32 %250 to i64
  %252 = getelementptr inbounds %struct.Vec3f, ptr %70, i64 %251
  %253 = load i32, ptr %235, align 4, !tbaa !259
  %254 = zext i32 %253 to i64
  %255 = getelementptr inbounds %struct.Vec3f, ptr %70, i64 %254
  %256 = load ptr, ptr %236, align 8, !tbaa !79
  %257 = mul nsw i32 %238, %226
  %258 = add nsw i32 %257, %239
  %259 = sext i32 %258 to i64
  %260 = getelementptr inbounds %struct.Vec3f, ptr %256, i64 %259
  call void @interp_v3_v3v3v3(ptr noundef %246, ptr noundef nonnull %249, ptr noundef nonnull %252, ptr noundef nonnull %255, ptr noundef %260) #26
  %261 = add nuw nsw i32 %239, 1
  %262 = load ptr, ptr %192, align 8, !tbaa !95
  %263 = getelementptr inbounds i32, ptr %262, i64 %207
  %264 = load i32, ptr %263, align 4, !tbaa !122
  %265 = icmp slt i32 %261, %264
  br i1 %265, label %237, label %266, !llvm.loop !299

266:                                              ; preds = %237, %217
  %267 = getelementptr inbounds %struct.PaintUVPoint, ptr %219, i64 %207, i32 2
  %268 = load i32, ptr %267, align 4, !tbaa !257
  %269 = zext i32 %268 to i64
  %270 = getelementptr inbounds %struct.MVert, ptr %29, i64 %269, i32 1
  call fastcc void @normal_short_to_float_v3(ptr noundef nonnull %5, ptr noundef nonnull %270) #25
  %271 = getelementptr inbounds %struct.PaintUVPoint, ptr %219, i64 %207, i32 3
  %272 = load i32, ptr %271, align 4, !tbaa !258
  %273 = zext i32 %272 to i64
  %274 = getelementptr inbounds %struct.MVert, ptr %29, i64 %273, i32 1
  call fastcc void @normal_short_to_float_v3(ptr noundef nonnull %6, ptr noundef nonnull %274) #25
  %275 = getelementptr inbounds %struct.PaintUVPoint, ptr %219, i64 %207, i32 4
  %276 = load i32, ptr %275, align 4, !tbaa !259
  %277 = zext i32 %276 to i64
  %278 = getelementptr inbounds %struct.MVert, ptr %29, i64 %277, i32 1
  call fastcc void @normal_short_to_float_v3(ptr noundef nonnull %7, ptr noundef nonnull %278) #25
  %279 = load ptr, ptr %140, align 8, !tbaa !90
  %280 = getelementptr inbounds %struct.PaintBakeNormal, ptr %279, i64 %207
  %281 = getelementptr inbounds %struct.ImgSeqFormatData, ptr %218, i64 0, i32 1
  %282 = load ptr, ptr %281, align 8, !tbaa !79
  %283 = load ptr, ptr %192, align 8, !tbaa !95
  %284 = getelementptr inbounds i32, ptr %283, i64 %207
  %285 = load i32, ptr %284, align 4, !tbaa !122
  %286 = mul nsw i32 %285, %226
  %287 = sext i32 %286 to i64
  %288 = getelementptr inbounds %struct.Vec3f, ptr %282, i64 %287
  call void @interp_v3_v3v3v3(ptr noundef %280, ptr noundef nonnull %5, ptr noundef nonnull %6, ptr noundef nonnull %7, ptr noundef %288) #26
  %289 = load ptr, ptr %140, align 8, !tbaa !90
  %290 = getelementptr inbounds %struct.PaintBakeNormal, ptr %289, i64 %207
  call void @mul_mat3_m4_v3(ptr noundef nonnull %195, ptr noundef %290) #26
  %291 = load ptr, ptr %140, align 8, !tbaa !90
  %292 = getelementptr inbounds %struct.PaintBakeNormal, ptr %291, i64 %207
  call fastcc void @normalize_v3(ptr noundef %292) #25
  %293 = load ptr, ptr %140, align 8, !tbaa !90
  %294 = getelementptr inbounds %struct.PaintBakeNormal, ptr %293, i64 %207
  call fastcc void @negate_v3(ptr noundef %294) #25
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %7) #27
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %6) #27
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %5) #27
  br label %379

295:                                              ; preds = %215
  %296 = load i32, ptr %190, align 4, !tbaa !50
  %297 = and i32 %296, 2
  %298 = icmp ne i32 %297, 0
  %299 = select i1 %298, i1 %191, i1 false
  br i1 %299, label %300, label %314

300:                                              ; preds = %295
  %301 = load ptr, ptr %193, align 8, !tbaa !85
  %302 = getelementptr inbounds i32, ptr %301, i64 %207
  %303 = load i32, ptr %302, align 4, !tbaa !122
  %304 = add nsw i32 %303, 1
  %305 = load ptr, ptr %192, align 8, !tbaa !95
  %306 = getelementptr inbounds i32, ptr %305, i64 %207
  store i32 %304, ptr %306, align 4, !tbaa !122
  %307 = load ptr, ptr %194, align 8, !tbaa !83
  %308 = getelementptr inbounds i32, ptr %307, i64 %207
  %309 = load i32, ptr %308, align 4, !tbaa !122
  %310 = trunc i64 %207 to i32
  %311 = add nsw i32 %309, %310
  %312 = load ptr, ptr %188, align 8, !tbaa !94
  %313 = getelementptr inbounds i32, ptr %312, i64 %207
  store i32 %311, ptr %313, align 4, !tbaa !122
  br label %320

314:                                              ; preds = %295
  %315 = load ptr, ptr %192, align 8, !tbaa !95
  %316 = getelementptr inbounds i32, ptr %315, i64 %207
  store i32 1, ptr %316, align 4, !tbaa !122
  %317 = load ptr, ptr %188, align 8, !tbaa !94
  %318 = getelementptr inbounds i32, ptr %317, i64 %207
  %319 = trunc i64 %207 to i32
  store i32 %319, ptr %318, align 4, !tbaa !122
  br label %320

320:                                              ; preds = %314, %300
  %321 = phi ptr [ %315, %314 ], [ %305, %300 ]
  %322 = getelementptr inbounds i32, ptr %321, i64 %207
  %323 = load i32, ptr %322, align 4, !tbaa !122
  %324 = icmp sgt i32 %323, 0
  br i1 %324, label %325, label %369

325:                                              ; preds = %320
  %326 = getelementptr inbounds %struct.Vec3f, ptr %70, i64 %207
  br label %327

327:                                              ; preds = %325, %363
  %328 = phi i32 [ 0, %325 ], [ %364, %363 ]
  %329 = load ptr, ptr %187, align 8, !tbaa !96
  %330 = load ptr, ptr %188, align 8, !tbaa !94
  %331 = getelementptr inbounds i32, ptr %330, i64 %207
  %332 = load i32, ptr %331, align 4, !tbaa !122
  %333 = add nsw i32 %332, %328
  %334 = sext i32 %333 to i64
  %335 = getelementptr inbounds %struct.Vec3f, ptr %329, i64 %334
  call fastcc void @copy_v3_v3(ptr noundef %335, ptr noundef nonnull %326) #25
  %336 = icmp eq i32 %328, 0
  br i1 %336, label %363, label %337

337:                                              ; preds = %327
  %338 = load ptr, ptr %194, align 8, !tbaa !83
  %339 = getelementptr inbounds i32, ptr %338, i64 %207
  %340 = load i32, ptr %339, align 4, !tbaa !122
  %341 = add nsw i32 %328, -1
  %342 = add nsw i32 %341, %340
  %343 = load ptr, ptr %187, align 8, !tbaa !96
  %344 = load ptr, ptr %188, align 8, !tbaa !94
  %345 = getelementptr inbounds i32, ptr %344, i64 %207
  %346 = load i32, ptr %345, align 4, !tbaa !122
  %347 = add nsw i32 %346, %328
  %348 = sext i32 %347 to i64
  %349 = getelementptr inbounds %struct.Vec3f, ptr %343, i64 %348
  call fastcc void @mul_v3_fl(ptr noundef %349, float noundef 0x3FE5555560000000) #25
  %350 = load ptr, ptr %187, align 8, !tbaa !96
  %351 = load ptr, ptr %188, align 8, !tbaa !94
  %352 = getelementptr inbounds i32, ptr %351, i64 %207
  %353 = load i32, ptr %352, align 4, !tbaa !122
  %354 = add nsw i32 %353, %328
  %355 = sext i32 %354 to i64
  %356 = getelementptr inbounds %struct.Vec3f, ptr %350, i64 %355
  %357 = load ptr, ptr %15, align 8, !tbaa !86
  %358 = sext i32 %342 to i64
  %359 = getelementptr inbounds i32, ptr %357, i64 %358
  %360 = load i32, ptr %359, align 4, !tbaa !122
  %361 = sext i32 %360 to i64
  %362 = getelementptr inbounds %struct.Vec3f, ptr %70, i64 %361
  call fastcc void @madd_v3_v3fl(ptr noundef %356, ptr noundef nonnull %362, float noundef 0x3FD5555560000000) #25
  br label %363

363:                                              ; preds = %327, %337
  %364 = add nuw nsw i32 %328, 1
  %365 = load ptr, ptr %192, align 8, !tbaa !95
  %366 = getelementptr inbounds i32, ptr %365, i64 %207
  %367 = load i32, ptr %366, align 4, !tbaa !122
  %368 = icmp slt i32 %364, %367
  br i1 %368, label %327, label %369, !llvm.loop !300

369:                                              ; preds = %363, %320
  %370 = load ptr, ptr %140, align 8, !tbaa !90
  %371 = getelementptr inbounds %struct.PaintBakeNormal, ptr %370, i64 %207
  %372 = getelementptr inbounds %struct.MVert, ptr %29, i64 %207, i32 1
  call fastcc void @normal_short_to_float_v3(ptr noundef %371, ptr noundef nonnull %372) #25
  %373 = load ptr, ptr %140, align 8, !tbaa !90
  %374 = getelementptr inbounds %struct.PaintBakeNormal, ptr %373, i64 %207
  call void @mul_mat3_m4_v3(ptr noundef nonnull %195, ptr noundef %374) #26
  %375 = load ptr, ptr %140, align 8, !tbaa !90
  %376 = getelementptr inbounds %struct.PaintBakeNormal, ptr %375, i64 %207
  call fastcc void @normalize_v3(ptr noundef %376) #25
  %377 = load ptr, ptr %140, align 8, !tbaa !90
  %378 = getelementptr inbounds %struct.PaintBakeNormal, ptr %377, i64 %207
  call fastcc void @negate_v3(ptr noundef %378) #25
  br label %379

379:                                              ; preds = %215, %369, %266
  %380 = load i16, ptr %196, align 2, !tbaa !43
  switch i16 %380, label %414 [
    i16 1, label %381
    i16 3, label %381
  ]

381:                                              ; preds = %379, %379
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %8) #27
  %382 = load i16, ptr %189, align 4, !tbaa !34
  %383 = icmp eq i16 %382, 1
  br i1 %383, label %384, label %386

384:                                              ; preds = %381
  %385 = getelementptr inbounds %struct.MVert, ptr %29, i64 %207, i32 1
  call fastcc void @normal_short_to_float_v3(ptr noundef nonnull %8, ptr noundef nonnull %385) #25
  call fastcc void @normalize_v3(ptr noundef nonnull %8) #25
  br label %410

386:                                              ; preds = %381
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %9) #27
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %10) #27
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %11) #27
  %387 = load ptr, ptr %13, align 8, !tbaa !75
  %388 = load ptr, ptr %387, align 8, !tbaa !77
  %389 = getelementptr inbounds %struct.PaintUVPoint, ptr %388, i64 %207, i32 2
  %390 = load i32, ptr %389, align 4, !tbaa !257
  %391 = zext i32 %390 to i64
  %392 = getelementptr inbounds %struct.MVert, ptr %29, i64 %391, i32 1
  call fastcc void @normal_short_to_float_v3(ptr noundef nonnull %9, ptr noundef nonnull %392) #25
  %393 = getelementptr inbounds %struct.PaintUVPoint, ptr %388, i64 %207, i32 3
  %394 = load i32, ptr %393, align 4, !tbaa !258
  %395 = zext i32 %394 to i64
  %396 = getelementptr inbounds %struct.MVert, ptr %29, i64 %395, i32 1
  call fastcc void @normal_short_to_float_v3(ptr noundef nonnull %10, ptr noundef nonnull %396) #25
  %397 = getelementptr inbounds %struct.PaintUVPoint, ptr %388, i64 %207, i32 4
  %398 = load i32, ptr %397, align 4, !tbaa !259
  %399 = zext i32 %398 to i64
  %400 = getelementptr inbounds %struct.MVert, ptr %29, i64 %399, i32 1
  call fastcc void @normal_short_to_float_v3(ptr noundef nonnull %11, ptr noundef nonnull %400) #25
  %401 = getelementptr inbounds %struct.ImgSeqFormatData, ptr %387, i64 0, i32 1
  %402 = load ptr, ptr %401, align 8, !tbaa !79
  %403 = load ptr, ptr %192, align 8, !tbaa !95
  %404 = getelementptr inbounds i32, ptr %403, i64 %207
  %405 = load i32, ptr %404, align 4, !tbaa !122
  %406 = trunc i64 %207 to i32
  %407 = mul nsw i32 %405, %406
  %408 = sext i32 %407 to i64
  %409 = getelementptr inbounds %struct.Vec3f, ptr %402, i64 %408
  call void @interp_v3_v3v3v3(ptr noundef nonnull %8, ptr noundef nonnull %9, ptr noundef nonnull %10, ptr noundef nonnull %11, ptr noundef %409) #26
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %11) #27
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %10) #27
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %9) #27
  br label %410

410:                                              ; preds = %386, %384
  call fastcc void @mul_v3_v3(ptr noundef nonnull %8, ptr noundef nonnull %197) #25
  %411 = call fastcc float @len_v3(ptr noundef nonnull %8) #25
  %412 = load ptr, ptr %140, align 8, !tbaa !90
  %413 = getelementptr inbounds %struct.PaintBakeNormal, ptr %412, i64 %207, i32 1
  store float %411, ptr %413, align 4, !tbaa !301
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %8) #27
  br label %414

414:                                              ; preds = %379, %410
  br i1 %186, label %427, label %415

415:                                              ; preds = %414
  %416 = load i32, ptr %198, align 8, !tbaa !146
  %417 = icmp eq i32 %416, 0
  br i1 %417, label %418, label %427

418:                                              ; preds = %415
  %419 = load ptr, ptr %199, align 8, !tbaa !100
  %420 = getelementptr inbounds %struct.Vec3f, ptr %419, i64 %207
  %421 = load ptr, ptr %187, align 8, !tbaa !96
  %422 = load ptr, ptr %188, align 8, !tbaa !94
  %423 = getelementptr inbounds i32, ptr %422, i64 %207
  %424 = load i32, ptr %423, align 4, !tbaa !122
  %425 = sext i32 %424 to i64
  %426 = getelementptr inbounds %struct.Vec3f, ptr %421, i64 %425
  call fastcc void @sub_v3_v3v3(ptr noundef %420, ptr noundef %426, ptr noundef nonnull %4) #25
  br label %427

427:                                              ; preds = %418, %415, %414
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %4) #27
  %428 = add nuw nsw i64 %207, 1
  %429 = load i32, ptr %182, align 8, !tbaa !145
  %430 = sext i32 %429 to i64
  %431 = icmp slt i64 %428, %430
  br i1 %431, label %206, label %432, !llvm.loop !303

432:                                              ; preds = %427, %181
  %433 = load ptr, ptr @MEM_freeN, align 8, !tbaa !44
  call void %433(ptr noundef nonnull %70) #26
  call fastcc void @surfaceGenerateGrid(ptr noundef %0) #25
  call fastcc void @dynamicPaint_prepareAdjacencyData(ptr noundef %0, i32 noundef 0) #25
  %434 = getelementptr inbounds %struct.PaintBakeData, ptr %140, i64 0, i32 12
  %435 = getelementptr inbounds %struct.Object, ptr %2, i64 0, i32 47
  call void @copy_m4_m4(ptr noundef nonnull %434, ptr noundef nonnull %435) #26
  %436 = getelementptr inbounds %struct.PaintBakeData, ptr %140, i64 0, i32 11
  %437 = load ptr, ptr %436, align 8, !tbaa !99
  %438 = mul nsw i64 %68, 20
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %437, ptr align 4 %29, i64 %438, i1 false)
  %439 = getelementptr inbounds %struct.PaintBakeData, ptr %140, i64 0, i32 13
  store i32 0, ptr %439, align 8, !tbaa !146
  br label %440

440:                                              ; preds = %66, %64, %432, %136, %77
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc noundef i32 @dynamicPaint_doStep(ptr noundef %0, ptr noundef %1, ptr nocapture noundef readonly %2, float noundef %3, float noundef %4) unnamed_addr #4 !PGOFuncName !304 {
  %6 = alloca %struct.BrushMaterials, align 8
  %7 = alloca ptr, align 8
  %8 = getelementptr inbounds %struct.DynamicPaintSurface, ptr %2, i64 0, i32 3
  %9 = load ptr, ptr %8, align 8, !tbaa !74
  %10 = getelementptr inbounds %struct.PaintSurfaceData, ptr %9, i64 0, i32 3
  %11 = load ptr, ptr %10, align 8, !tbaa !89
  %12 = getelementptr inbounds %struct.DynamicPaintSurface, ptr %2, i64 0, i32 2
  %13 = load ptr, ptr %12, align 8, !tbaa !58
  %14 = getelementptr inbounds %struct.PaintSurfaceData, ptr %9, i64 0, i32 4
  %15 = load i32, ptr %14, align 8, !tbaa !145
  %16 = icmp slt i32 %15, 1
  br i1 %16, label %209, label %17

17:                                               ; preds = %5
  tail call fastcc void @dynamicPaint_surfacePreStep(ptr noundef nonnull %2, float noundef %3) #25
  %18 = getelementptr inbounds %struct.Scene, ptr %0, i64 0, i32 22, i32 5
  %19 = load i32, ptr %18, align 8, !tbaa !195
  %20 = getelementptr inbounds %struct.Scene, ptr %0, i64 0, i32 22, i32 8
  %21 = load float, ptr %20, align 4, !tbaa !305
  %22 = getelementptr inbounds %struct.DynamicPaintSurface, ptr %2, i64 0, i32 4
  %23 = load ptr, ptr %22, align 8, !tbaa !138
  %24 = icmp eq ptr %23, null
  br i1 %24, label %28, label %25

25:                                               ; preds = %17
  %26 = getelementptr inbounds %struct.Group, ptr %23, i64 0, i32 1
  %27 = load ptr, ptr %26, align 8, !tbaa !306
  br label %31

28:                                               ; preds = %17
  %29 = getelementptr inbounds %struct.Scene, ptr %0, i64 0, i32 5
  %30 = load ptr, ptr %29, align 8, !tbaa !308
  br label %31

31:                                               ; preds = %28, %25
  %32 = phi ptr [ %27, %25 ], [ null, %28 ]
  %33 = phi ptr [ null, %25 ], [ %30, %28 ]
  %34 = icmp ne ptr %33, null
  %35 = icmp ne ptr %32, null
  %36 = select i1 %34, i1 true, i1 %35
  br i1 %36, label %37, label %167

37:                                               ; preds = %31
  %38 = getelementptr inbounds %struct.DynamicPaintSurface, ptr %2, i64 0, i32 11
  %39 = getelementptr inbounds %struct.PaintBakeData, ptr %11, i64 0, i32 10
  %40 = getelementptr inbounds %struct.PaintSurfaceData, ptr %9, i64 0, i32 2
  %41 = getelementptr inbounds %struct.PaintBakeData, ptr %11, i64 0, i32 5
  %42 = fcmp une float %4, 0.000000e+00
  br label %43

43:                                               ; preds = %37, %58
  %44 = phi ptr [ %33, %37 ], [ %60, %58 ]
  %45 = phi ptr [ %32, %37 ], [ %59, %58 ]
  %46 = load ptr, ptr %22, align 8, !tbaa !138
  %47 = icmp eq ptr %46, null
  br i1 %47, label %48, label %53

48:                                               ; preds = %43
  %49 = getelementptr inbounds %struct.Base, ptr %44, i64 0, i32 7
  %50 = load ptr, ptr %49, align 8, !tbaa !309
  %51 = icmp eq ptr %50, null
  %52 = load ptr, ptr %44, align 8, !tbaa !311
  br i1 %51, label %58, label %64

53:                                               ; preds = %43
  %54 = getelementptr inbounds %struct.GroupObject, ptr %45, i64 0, i32 2
  %55 = load ptr, ptr %54, align 8, !tbaa !312
  %56 = icmp eq ptr %55, null
  %57 = load ptr, ptr %45, align 8, !tbaa !314
  br i1 %56, label %58, label %64

58:                                               ; preds = %48, %53, %64, %70, %166, %75
  %59 = phi ptr [ %66, %75 ], [ %66, %166 ], [ %66, %70 ], [ %66, %64 ], [ %57, %53 ], [ %45, %48 ]
  %60 = phi ptr [ %67, %75 ], [ %67, %166 ], [ %67, %70 ], [ %67, %64 ], [ %44, %53 ], [ %52, %48 ]
  %61 = icmp ne ptr %60, null
  %62 = icmp ne ptr %59, null
  %63 = select i1 %61, i1 true, i1 %62
  br i1 %63, label %43, label %167, !llvm.loop !315

64:                                               ; preds = %48, %53
  %65 = phi ptr [ %55, %53 ], [ %50, %48 ]
  %66 = phi ptr [ %57, %53 ], [ %45, %48 ]
  %67 = phi ptr [ %44, %53 ], [ %52, %48 ]
  %68 = tail call ptr @modifiers_findByType(ptr noundef nonnull %65, i32 noundef 40) #26
  %69 = icmp eq ptr %68, null
  br i1 %69, label %58, label %70

70:                                               ; preds = %64
  %71 = getelementptr inbounds %struct.ModifierData, ptr %68, i64 0, i32 3
  %72 = load i32, ptr %71, align 4, !tbaa !316
  %73 = and i32 %72, 3
  %74 = icmp eq i32 %73, 0
  br i1 %74, label %58, label %75

75:                                               ; preds = %70
  %76 = getelementptr inbounds %struct.DynamicPaintModifierData, ptr %68, i64 0, i32 2
  %77 = load ptr, ptr %76, align 8, !tbaa !64
  %78 = icmp eq ptr %77, null
  br i1 %78, label %58, label %79

79:                                               ; preds = %75
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %6) #27
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %6, i8 0, i64 24, i1 false)
  %80 = load i16, ptr %38, align 2, !tbaa !43
  %81 = icmp eq i16 %80, 0
  br i1 %81, label %82, label %100

82:                                               ; preds = %79
  %83 = getelementptr inbounds %struct.DynamicPaintBrushSettings, ptr %77, i64 0, i32 4
  %84 = load i32, ptr %83, align 8, !tbaa !128
  %85 = and i32 %84, 256
  %86 = icmp eq i32 %85, 0
  br i1 %86, label %100, label %87

87:                                               ; preds = %82
  %88 = load ptr, ptr @MEM_callocN, align 8, !tbaa !44
  %89 = load i32, ptr %14, align 8, !tbaa !145
  %90 = sext i32 %89 to i64
  %91 = shl nsw i64 %90, 4
  %92 = tail call ptr %88(i64 noundef %91, ptr noundef nonnull @.str.55) #26
  store ptr %92, ptr %39, align 8, !tbaa !317
  %93 = load ptr, ptr %40, align 8, !tbaa !82
  %94 = icmp eq ptr %93, null
  br i1 %94, label %95, label %96

95:                                               ; preds = %87
  tail call fastcc void @dynamicPaint_initAdjacencyData(ptr noundef nonnull %2, i32 noundef 1) #25
  br label %96

96:                                               ; preds = %95, %87
  %97 = load ptr, ptr %41, align 8, !tbaa !97
  %98 = icmp eq ptr %97, null
  br i1 %98, label %99, label %100

99:                                               ; preds = %96
  tail call fastcc void @dynamicPaint_prepareAdjacencyData(ptr noundef nonnull %2, i32 noundef 1) #25
  br label %100

100:                                              ; preds = %96, %99, %82, %79
  br i1 %42, label %101, label %104

101:                                              ; preds = %100
  tail call fastcc void @scene_setSubframe(ptr noundef %0, float noundef %4) #25
  %102 = tail call float @BKE_scene_frame_get(ptr noundef %0) #26
  %103 = tail call fastcc i32 @subframe_updateObject(ptr noundef %0, ptr noundef nonnull %65, i32 noundef 2, i32 noundef 5, float noundef %102) #25, !range !175
  br label %104

104:                                              ; preds = %101, %100
  %105 = tail call fastcc i32 @brush_usesMaterial(ptr noundef nonnull %77, ptr noundef %0) #25, !range !175
  %106 = icmp eq i32 %105, 0
  br i1 %106, label %110, label %107

107:                                              ; preds = %104
  %108 = getelementptr inbounds %struct.DynamicPaintBrushSettings, ptr %77, i64 0, i32 3
  %109 = load ptr, ptr %108, align 8, !tbaa !130
  call fastcc void @dynamicPaint_updateBrushMaterials(ptr noundef nonnull %65, ptr noundef %109, ptr noundef %0, ptr noundef nonnull %6) #25
  br label %110

110:                                              ; preds = %107, %104
  %111 = getelementptr inbounds %struct.DynamicPaintBrushSettings, ptr %77, i64 0, i32 5
  %112 = load i32, ptr %111, align 4, !tbaa !129
  switch i32 %112, label %139 [
    i32 3, label %113
    i32 4, label %135
  ]

113:                                              ; preds = %110
  %114 = getelementptr inbounds %struct.DynamicPaintBrushSettings, ptr %77, i64 0, i32 2
  %115 = load ptr, ptr %114, align 8, !tbaa !127
  %116 = icmp eq ptr %115, null
  br i1 %116, label %142, label %117

117:                                              ; preds = %113
  %118 = getelementptr inbounds %struct.ParticleSystem, ptr %115, i64 0, i32 2
  %119 = load ptr, ptr %118, align 8, !tbaa !318
  %120 = icmp eq ptr %119, null
  br i1 %120, label %142, label %121

121:                                              ; preds = %117
  %122 = getelementptr inbounds %struct.ParticleSettings, ptr %119, i64 0, i32 7
  %123 = load i16, ptr %122, align 8, !tbaa !320
  switch i16 %123, label %142 [
    i16 0, label %124
    i16 3, label %124
  ]

124:                                              ; preds = %121, %121
  %125 = tail call i32 @psys_check_enabled(ptr noundef nonnull %65, ptr noundef nonnull %115) #26
  %126 = icmp eq i32 %125, 0
  br i1 %126, label %142, label %127

127:                                              ; preds = %124
  %128 = load ptr, ptr %114, align 8, !tbaa !127
  %129 = getelementptr inbounds %struct.ParticleSystem, ptr %128, i64 0, i32 2
  %130 = load ptr, ptr %129, align 8, !tbaa !318
  %131 = getelementptr inbounds %struct.ParticleSettings, ptr %130, i64 0, i32 1
  %132 = load ptr, ptr %131, align 8, !tbaa !322
  %133 = tail call float @BKE_scene_frame_get(ptr noundef %0) #26
  tail call void @BKE_animsys_evaluate_animdata(ptr noundef %0, ptr noundef %130, ptr noundef %132, float noundef %133, i16 noundef signext 2) #26
  %134 = load ptr, ptr %114, align 8, !tbaa !127
  tail call fastcc void @dynamicPaint_paintParticles(ptr noundef nonnull %2, ptr noundef %134, ptr noundef nonnull %77, float noundef %3) #25
  br label %142

135:                                              ; preds = %110
  %136 = icmp eq ptr %65, %1
  br i1 %136, label %139, label %137

137:                                              ; preds = %135
  %138 = getelementptr inbounds %struct.Object, ptr %65, i64 0, i32 33
  call fastcc void @dynamicPaint_paintSinglePoint(ptr noundef nonnull %2, ptr noundef nonnull %138, ptr noundef nonnull %77, ptr noundef nonnull %65, ptr noundef nonnull %6, ptr noundef %0, float noundef %3) #25
  br label %142

139:                                              ; preds = %110, %135
  %140 = icmp eq ptr %65, %1
  br i1 %140, label %142, label %141

141:                                              ; preds = %139
  call fastcc void @dynamicPaint_paintMesh(ptr noundef nonnull %2, ptr noundef nonnull %77, ptr noundef nonnull %65, ptr noundef nonnull %6, ptr noundef %0, float noundef %3) #25
  br label %142

142:                                              ; preds = %121, %137, %141, %139, %113, %117, %124, %127
  %143 = tail call fastcc i32 @brush_usesMaterial(ptr noundef nonnull %77, ptr noundef %0) #25, !range !175
  %144 = icmp eq i32 %143, 0
  br i1 %144, label %146, label %145

145:                                              ; preds = %142
  call fastcc void @dynamicPaint_freeBrushMaterials(ptr noundef nonnull %6) #25
  br label %146

146:                                              ; preds = %145, %142
  br i1 %42, label %147, label %150

147:                                              ; preds = %146
  store i32 %19, ptr %18, align 8, !tbaa !195
  store float %21, ptr %20, align 4, !tbaa !305
  %148 = tail call float @BKE_scene_frame_get(ptr noundef %0) #26
  %149 = tail call fastcc i32 @subframe_updateObject(ptr noundef %0, ptr noundef nonnull %65, i32 noundef 2, i32 noundef 5, float noundef %148) #25, !range !175
  br label %150

150:                                              ; preds = %147, %146
  %151 = load ptr, ptr %39, align 8, !tbaa !317
  %152 = icmp eq ptr %151, null
  br i1 %152, label %166, label %153

153:                                              ; preds = %150
  %154 = load i16, ptr %38, align 2, !tbaa !43
  %155 = icmp eq i16 %154, 0
  br i1 %155, label %156, label %163

156:                                              ; preds = %153
  %157 = getelementptr inbounds %struct.DynamicPaintBrushSettings, ptr %77, i64 0, i32 4
  %158 = load i32, ptr %157, align 8, !tbaa !128
  %159 = and i32 %158, 256
  %160 = icmp eq i32 %159, 0
  br i1 %160, label %163, label %161

161:                                              ; preds = %156
  tail call fastcc void @dynamicPaint_doSmudge(ptr noundef nonnull %2, ptr noundef nonnull %77, float noundef %3) #25
  %162 = load ptr, ptr %39, align 8, !tbaa !317
  br label %163

163:                                              ; preds = %161, %156, %153
  %164 = phi ptr [ %162, %161 ], [ %151, %156 ], [ %151, %153 ]
  %165 = load ptr, ptr @MEM_freeN, align 8, !tbaa !44
  tail call void %165(ptr noundef %164) #26
  store ptr null, ptr %39, align 8, !tbaa !317
  br label %166

166:                                              ; preds = %163, %150
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %6) #27
  br label %58

167:                                              ; preds = %58, %31
  %168 = getelementptr inbounds %struct.PaintSurfaceData, ptr %9, i64 0, i32 2
  %169 = load ptr, ptr %168, align 8, !tbaa !82
  %170 = icmp eq ptr %169, null
  br i1 %170, label %209, label %171

171:                                              ; preds = %167
  %172 = getelementptr inbounds %struct.PaintBakeData, ptr %11, i64 0, i32 5
  %173 = load ptr, ptr %172, align 8, !tbaa !97
  %174 = icmp eq ptr %173, null
  br i1 %174, label %209, label %175

175:                                              ; preds = %171
  %176 = getelementptr inbounds %struct.DynamicPaintSurface, ptr %2, i64 0, i32 11
  %177 = load i16, ptr %176, align 2, !tbaa !43
  %178 = icmp eq i16 %177, 3
  br i1 %178, label %179, label %180

179:                                              ; preds = %175
  tail call fastcc void @dynamicPaint_doWaveStep(ptr noundef nonnull %2, float noundef %3) #25
  br label %180

180:                                              ; preds = %179, %175
  %181 = getelementptr inbounds %struct.DynamicPaintSurface, ptr %2, i64 0, i32 19
  %182 = load i32, ptr %181, align 8, !tbaa !112
  %183 = icmp eq i32 %182, 0
  br i1 %183, label %209, label %184

184:                                              ; preds = %180
  %185 = load i16, ptr %176, align 2, !tbaa !43
  %186 = icmp eq i16 %185, 0
  br i1 %186, label %187, label %209

187:                                              ; preds = %184
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %7) #27
  store ptr null, ptr %7, align 8, !tbaa !44
  %188 = load ptr, ptr @MEM_mallocN, align 8, !tbaa !44
  %189 = load i32, ptr %14, align 8, !tbaa !145
  %190 = sext i32 %189 to i64
  %191 = mul nsw i64 %190, 40
  %192 = tail call ptr %188(i64 noundef %191, ptr noundef nonnull @.str.56) #26
  %193 = icmp eq ptr %192, null
  br i1 %193, label %194, label %195

194:                                              ; preds = %187
  tail call fastcc void @setError(ptr noundef %13, ptr noundef nonnull @.str.17) #25
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %7) #27
  br label %209

195:                                              ; preds = %187
  %196 = call fastcc i32 @dynamicPaint_prepareEffectStep(ptr noundef nonnull %2, ptr noundef %0, ptr noundef %1, ptr noundef nonnull %7, float noundef %3) #25, !range !323
  %197 = load ptr, ptr %7, align 8, !tbaa !44
  %198 = sitofp i32 %196 to float
  br label %199

199:                                              ; preds = %195, %199
  %200 = phi i32 [ 0, %195 ], [ %201, %199 ]
  tail call fastcc void @dynamicPaint_doEffectStep(ptr noundef %2, ptr noundef %197, ptr noundef nonnull %192, float noundef %3, float noundef %198) #25
  %201 = add nuw nsw i32 %200, 1
  %202 = icmp eq i32 %201, %196
  br i1 %202, label %203, label %199, !llvm.loop !324

203:                                              ; preds = %199
  %204 = load ptr, ptr @MEM_freeN, align 8, !tbaa !44
  tail call void %204(ptr noundef nonnull %192) #26
  %205 = icmp eq ptr %197, null
  br i1 %205, label %208, label %206

206:                                              ; preds = %203
  %207 = load ptr, ptr @MEM_freeN, align 8, !tbaa !44
  tail call void %207(ptr noundef nonnull %197) #26
  br label %208

208:                                              ; preds = %203, %206
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %7) #27
  br label %209

209:                                              ; preds = %167, %171, %184, %180, %208, %194, %5
  %210 = phi i32 [ 0, %5 ], [ 0, %194 ], [ 1, %208 ], [ 1, %180 ], [ 1, %184 ], [ 1, %171 ], [ 1, %167 ]
  ret i32 %210
}

; Function Attrs: mustprogress nofree nounwind optsize willreturn memory(argmem: read)
declare i32 @strcmp(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #14

; Function Attrs: nofree noinline nounwind optsize memory(read, inaccessiblemem: none) uwtable
define internal noundef zeroext i8 @surface_duplicateOutputExists(ptr noundef readonly %0, ptr nocapture noundef readonly %1) #6 !PGOFuncName !325 {
  %3 = getelementptr inbounds %struct.DynamicPaintSurface, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !58
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
  %26 = load i8, ptr %25, align 8, !tbaa !60
  %27 = icmp eq i8 %26, 0
  br i1 %27, label %31, label %28

28:                                               ; preds = %24
  %29 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %1, ptr noundef nonnull dereferenceable(1) %25) #28
  %30 = icmp eq i32 %29, 0
  br i1 %30, label %41, label %31

31:                                               ; preds = %28, %24
  %32 = getelementptr inbounds %struct.DynamicPaintSurface, ptr %12, i64 0, i32 49
  %33 = load i8, ptr %32, align 8, !tbaa !60
  %34 = icmp eq i8 %33, 0
  br i1 %34, label %38, label %35

35:                                               ; preds = %31
  %36 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %1, ptr noundef nonnull dereferenceable(1) %32) #28
  %37 = icmp eq i32 %36, 0
  br i1 %37, label %41, label %38

38:                                               ; preds = %11, %14, %19, %35, %31
  %39 = load ptr, ptr %12, align 8, !tbaa !44
  %40 = icmp eq ptr %39, null
  br i1 %40, label %41, label %11, !llvm.loop !326

41:                                               ; preds = %28, %35, %38, %2
  %42 = phi i8 [ 0, %2 ], [ 0, %38 ], [ 1, %35 ], [ 1, %28 ]
  ret i8 %42
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @freeGrid(ptr nocapture noundef readonly %0) unnamed_addr #4 !PGOFuncName !327 {
  %2 = getelementptr inbounds %struct.PaintSurfaceData, ptr %0, i64 0, i32 3
  %3 = load ptr, ptr %2, align 8, !tbaa !89
  %4 = getelementptr inbounds %struct.PaintBakeData, ptr %3, i64 0, i32 7
  %5 = load ptr, ptr %4, align 8, !tbaa !98
  %6 = getelementptr inbounds %struct.VolumeGrid, ptr %5, i64 0, i32 2
  %7 = load ptr, ptr %6, align 8, !tbaa !328
  %8 = icmp eq ptr %7, null
  br i1 %8, label %11, label %9

9:                                                ; preds = %1
  %10 = load ptr, ptr @MEM_freeN, align 8, !tbaa !44
  tail call void %10(ptr noundef nonnull %7) #26
  br label %11

11:                                               ; preds = %9, %1
  %12 = getelementptr inbounds %struct.VolumeGrid, ptr %5, i64 0, i32 3
  %13 = load ptr, ptr %12, align 8, !tbaa !330
  %14 = icmp eq ptr %13, null
  br i1 %14, label %17, label %15

15:                                               ; preds = %11
  %16 = load ptr, ptr @MEM_freeN, align 8, !tbaa !44
  tail call void %16(ptr noundef nonnull %13) #26
  br label %17

17:                                               ; preds = %15, %11
  %18 = getelementptr inbounds %struct.VolumeGrid, ptr %5, i64 0, i32 4
  %19 = load ptr, ptr %18, align 8, !tbaa !331
  %20 = icmp eq ptr %19, null
  br i1 %20, label %23, label %21

21:                                               ; preds = %17
  %22 = load ptr, ptr @MEM_freeN, align 8, !tbaa !44
  tail call void %22(ptr noundef nonnull %19) #26
  br label %23

23:                                               ; preds = %21, %17
  %24 = getelementptr inbounds %struct.VolumeGrid, ptr %5, i64 0, i32 5
  %25 = load ptr, ptr %24, align 8, !tbaa !332
  %26 = icmp eq ptr %25, null
  br i1 %26, label %29, label %27

27:                                               ; preds = %23
  %28 = load ptr, ptr @MEM_freeN, align 8, !tbaa !44
  tail call void %28(ptr noundef nonnull %25) #26
  br label %29

29:                                               ; preds = %27, %23
  %30 = load ptr, ptr @MEM_freeN, align 8, !tbaa !44
  %31 = load ptr, ptr %4, align 8, !tbaa !98
  tail call void %30(ptr noundef %31) #26
  store ptr null, ptr %4, align 8, !tbaa !98
  ret void
}

; Function Attrs: optsize
declare zeroext i8 @BKE_scene_check_color_management_enabled(ptr noundef) local_unnamed_addr #5

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @copy_v3_v3(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1) unnamed_addr #7 !PGOFuncName !333 {
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

; Function Attrs: optsize
declare ptr @BKE_image_pool_new() local_unnamed_addr #5

; Function Attrs: optsize
declare i32 @multitex_ext_safe(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i8 noundef zeroext) local_unnamed_addr #5

; Function Attrs: optsize
declare void @BKE_image_pool_free(ptr noundef) local_unnamed_addr #5

; Function Attrs: optsize
declare void @interp_v3_v3v3v3(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: optsize
declare void @interp_v4_v4v4v4(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc noundef i32 @surface_usesAdjData(ptr nocapture noundef readonly %0) unnamed_addr #0 !PGOFuncName !334 {
  %2 = tail call fastcc i32 @surface_usesAdjDistance(ptr noundef %0) #25, !range !175
  %3 = icmp eq i32 %2, 0
  br i1 %3, label %4, label %14

4:                                                ; preds = %1
  %5 = getelementptr inbounds %struct.DynamicPaintSurface, ptr %0, i64 0, i32 10
  %6 = load i16, ptr %5, align 4, !tbaa !34
  %7 = icmp eq i16 %6, 1
  br i1 %7, label %8, label %13

8:                                                ; preds = %4
  %9 = getelementptr inbounds %struct.DynamicPaintSurface, ptr %0, i64 0, i32 18
  %10 = load i32, ptr %9, align 4, !tbaa !50
  %11 = and i32 %10, 2
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %13, label %14

13:                                               ; preds = %8, %4
  br label %14

14:                                               ; preds = %8, %1, %13
  %15 = phi i32 [ 0, %13 ], [ 1, %1 ], [ 1, %8 ]
  ret i32 %15
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc i32 @surface_usesAdjDistance(ptr nocapture noundef readonly %0) unnamed_addr #0 !PGOFuncName !335 {
  %2 = getelementptr inbounds %struct.DynamicPaintSurface, ptr %0, i64 0, i32 11
  %3 = load i16, ptr %2, align 2, !tbaa !43
  %4 = icmp eq i16 %3, 0
  br i1 %4, label %5, label %9

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.DynamicPaintSurface, ptr %0, i64 0, i32 19
  %7 = load i32, ptr %6, align 8, !tbaa !112
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %9, label %12

9:                                                ; preds = %5, %1
  %10 = icmp eq i16 %3, 3
  %11 = zext i1 %10 to i32
  br label %12

12:                                               ; preds = %9, %5
  %13 = phi i32 [ 1, %5 ], [ %11, %9 ]
  ret i32 %13
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @canvas_copyDerivedMesh(ptr nocapture noundef %0, ptr noundef %1) unnamed_addr #4 !PGOFuncName !336 {
  %3 = getelementptr inbounds %struct.DynamicPaintCanvasSettings, ptr %0, i64 0, i32 1
  %4 = load ptr, ptr %3, align 8, !tbaa !108
  %5 = icmp eq ptr %4, null
  br i1 %5, label %9, label %6

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.DerivedMesh, ptr %4, i64 0, i32 95
  %8 = load ptr, ptr %7, align 8, !tbaa !69
  tail call void %8(ptr noundef nonnull %4) #26
  br label %9

9:                                                ; preds = %6, %2
  %10 = tail call ptr @CDDM_copy(ptr noundef %1) #26
  store ptr %10, ptr %3, align 8, !tbaa !108
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @surface_freeUnusedData(ptr nocapture noundef readonly %0) unnamed_addr #4 !PGOFuncName !337 {
  %2 = getelementptr inbounds %struct.DynamicPaintSurface, ptr %0, i64 0, i32 3
  %3 = load ptr, ptr %2, align 8, !tbaa !74
  %4 = icmp eq ptr %3, null
  br i1 %4, label %20, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.DynamicPaintSurface, ptr %0, i64 0, i32 18
  %7 = load i32, ptr %6, align 4, !tbaa !50
  %8 = and i32 %7, 1
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %19, label %10

10:                                               ; preds = %5
  %11 = getelementptr inbounds %struct.DynamicPaintSurface, ptr %0, i64 0, i32 6
  %12 = load ptr, ptr %11, align 8, !tbaa !102
  %13 = icmp eq ptr %12, null
  br i1 %13, label %20, label %14

14:                                               ; preds = %10
  %15 = getelementptr inbounds %struct.PointCache, ptr %12, i64 0, i32 2
  %16 = load i32, ptr %15, align 8, !tbaa !109
  %17 = and i32 %16, 1
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %20, label %19

19:                                               ; preds = %14, %5
  tail call fastcc void @free_bakeData(ptr noundef nonnull %3) #25
  br label %20

20:                                               ; preds = %1, %19, %14, %10
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc noundef zeroext i8 @dynamicPaint_checkSurfaceData(ptr noundef %0, ptr noundef %1) unnamed_addr #4 !PGOFuncName !338 {
  %3 = getelementptr inbounds %struct.DynamicPaintSurface, ptr %1, i64 0, i32 3
  %4 = load ptr, ptr %3, align 8, !tbaa !74
  %5 = icmp eq ptr %4, null
  br i1 %5, label %12, label %6

6:                                                ; preds = %2
  %7 = tail call fastcc i32 @dynamicPaint_surfaceNumOfPoints(ptr noundef nonnull %1) #25
  %8 = load ptr, ptr %3, align 8, !tbaa !74
  %9 = getelementptr inbounds %struct.PaintSurfaceData, ptr %8, i64 0, i32 4
  %10 = load i32, ptr %9, align 8, !tbaa !145
  %11 = icmp eq i32 %7, %10
  br i1 %11, label %14, label %12

12:                                               ; preds = %6, %2
  %13 = tail call zeroext i8 @dynamicPaint_resetSurface(ptr noundef %0, ptr noundef nonnull %1) #25, !range !49
  br label %14

14:                                               ; preds = %6, %12
  %15 = phi i8 [ %13, %12 ], [ 1, %6 ]
  ret i8 %15
}

; Function Attrs: optsize
declare void @BKE_ptcache_id_from_dynamicpaint(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: optsize
declare void @BKE_ptcache_id_time(ptr noundef, ptr noundef, float noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: optsize
declare i32 @BKE_ptcache_id_reset(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: optsize
declare i32 @BKE_ptcache_read(ptr noundef, float noundef) local_unnamed_addr #5

; Function Attrs: optsize
declare void @BKE_ptcache_validate(ptr noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: optsize
declare i32 @BKE_ptcache_write(ptr noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: optsize
declare ptr @CDDM_copy(ptr noundef) local_unnamed_addr #5

; Function Attrs: optsize
declare ptr @CDDM_get_loops(ptr noundef) local_unnamed_addr #5

; Function Attrs: optsize
declare ptr @CDDM_get_polys(ptr noundef) local_unnamed_addr #5

; Function Attrs: optsize
declare ptr @CustomData_get_layer(ptr noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: optsize
declare ptr @CustomData_add_layer(ptr noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: optsize
declare ptr @give_current_material(ptr noundef, i16 noundef signext) local_unnamed_addr #5

; Function Attrs: optsize
declare void @interp_v3_v3v3(ptr noundef, ptr noundef, ptr noundef, float noundef) local_unnamed_addr #5

; Function Attrs: optsize
declare void @rgb_float_to_uchar(ptr noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: optsize
declare ptr @CustomData_add_layer_named(ptr noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: optsize
declare void @DM_update_weight_mcol(ptr noundef, ptr noundef, i32 noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: optsize
declare ptr @defvert_find_index(ptr noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: optsize
declare ptr @defvert_verify_index(ptr noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @normal_short_to_float_v3(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1) unnamed_addr #7 !PGOFuncName !339 {
  %3 = load <2 x i16>, ptr %1, align 2, !tbaa !139
  %4 = sitofp <2 x i16> %3 to <2 x float>
  %5 = fmul <2 x float> %4, <float 0x3F00002000000000, float 0x3F00002000000000>
  store <2 x float> %5, ptr %0, align 4, !tbaa !116
  %6 = getelementptr inbounds i16, ptr %1, i64 2
  %7 = load i16, ptr %6, align 2, !tbaa !139
  %8 = sitofp i16 %7 to float
  %9 = fmul float %8, 0x3F00002000000000
  %10 = getelementptr inbounds float, ptr %0, i64 2
  store float %9, ptr %10, align 4, !tbaa !116
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @madd_v3_v3fl(ptr nocapture noundef %0, ptr nocapture noundef readonly %1, float noundef %2) unnamed_addr #7 !PGOFuncName !340 {
  %4 = load float, ptr %1, align 4, !tbaa !116
  %5 = load float, ptr %0, align 4, !tbaa !116
  %6 = tail call float @llvm.fmuladd.f32(float %4, float %2, float %5)
  store float %6, ptr %0, align 4, !tbaa !116
  %7 = getelementptr inbounds float, ptr %1, i64 1
  %8 = load float, ptr %7, align 4, !tbaa !116
  %9 = getelementptr inbounds float, ptr %0, i64 1
  %10 = load float, ptr %9, align 4, !tbaa !116
  %11 = tail call float @llvm.fmuladd.f32(float %8, float %2, float %10)
  store float %11, ptr %9, align 4, !tbaa !116
  %12 = getelementptr inbounds float, ptr %1, i64 2
  %13 = load float, ptr %12, align 4, !tbaa !116
  %14 = getelementptr inbounds float, ptr %0, i64 2
  %15 = load float, ptr %14, align 4, !tbaa !116
  %16 = tail call float @llvm.fmuladd.f32(float %13, float %2, float %15)
  store float %16, ptr %14, align 4, !tbaa !116
  ret void
}

; Function Attrs: optsize
declare float @dist_squared_to_line_segment_v2(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: optsize
declare float @closest_to_line_v2(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @mul_v2_fl(ptr nocapture noundef %0, float noundef %1) unnamed_addr #7 !PGOFuncName !341 {
  %3 = load <2 x float>, ptr %0, align 4, !tbaa !116
  %4 = insertelement <2 x float> poison, float %1, i64 0
  %5 = shufflevector <2 x float> %4, <2 x float> poison, <2 x i32> zeroinitializer
  %6 = fmul <2 x float> %3, %5
  store <2 x float> %6, ptr %0, align 4, !tbaa !116
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @add_v2_v2(ptr nocapture noundef %0, ptr nocapture noundef readonly %1) unnamed_addr #7 !PGOFuncName !342 {
  %3 = load float, ptr %1, align 4, !tbaa !116
  %4 = load float, ptr %0, align 4, !tbaa !116
  %5 = fadd float %3, %4
  store float %5, ptr %0, align 4, !tbaa !116
  %6 = getelementptr inbounds float, ptr %1, i64 1
  %7 = load float, ptr %6, align 4, !tbaa !116
  %8 = getelementptr inbounds float, ptr %0, i64 1
  %9 = load float, ptr %8, align 4, !tbaa !116
  %10 = fadd float %7, %9
  store float %10, ptr %8, align 4, !tbaa !116
  ret void
}

; Function Attrs: mustprogress nofree noinline nounwind optsize willreturn memory(write, argmem: readwrite) uwtable
define internal fastcc void @normalize_v3(ptr nocapture noundef %0) unnamed_addr #15 !PGOFuncName !343 {
  tail call fastcc void @normalize_v3_v3(ptr noundef %0, ptr noundef %0) #25
  ret void
}

; Function Attrs: mustprogress nofree noinline nounwind optsize willreturn memory(write, argmem: readwrite) uwtable
define internal fastcc void @normalize_v3_v3(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1) unnamed_addr #15 !PGOFuncName !344 {
  %3 = tail call fastcc float @dot_v3v3(ptr noundef %1, ptr noundef %1) #25
  %4 = fcmp ogt float %3, 0x38AA95A5C0000000
  br i1 %4, label %5, label %8

5:                                                ; preds = %2
  %6 = tail call float @sqrtf(float noundef %3) #26
  %7 = fdiv float 1.000000e+00, %6
  tail call fastcc void @mul_v3_v3fl(ptr noundef %0, ptr noundef %1, float noundef %7) #25
  br label %9

8:                                                ; preds = %2
  tail call fastcc void @zero_v3(ptr noundef %0) #25
  br label %9

9:                                                ; preds = %8, %5
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc float @dot_v3v3(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) unnamed_addr #0 !PGOFuncName !345 {
  %3 = load float, ptr %0, align 4, !tbaa !116
  %4 = load float, ptr %1, align 4, !tbaa !116
  %5 = getelementptr inbounds float, ptr %0, i64 1
  %6 = load float, ptr %5, align 4, !tbaa !116
  %7 = getelementptr inbounds float, ptr %1, i64 1
  %8 = load float, ptr %7, align 4, !tbaa !116
  %9 = fmul float %6, %8
  %10 = tail call float @llvm.fmuladd.f32(float %3, float %4, float %9)
  %11 = getelementptr inbounds float, ptr %0, i64 2
  %12 = load float, ptr %11, align 4, !tbaa !116
  %13 = getelementptr inbounds float, ptr %1, i64 2
  %14 = load float, ptr %13, align 4, !tbaa !116
  %15 = tail call float @llvm.fmuladd.f32(float %12, float %14, float %10)
  ret float %15
}

; Function Attrs: mustprogress nofree nounwind optsize willreturn memory(write)
declare float @sqrtf(float noundef) local_unnamed_addr #16

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @mul_v3_v3fl(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1, float noundef %2) unnamed_addr #7 !PGOFuncName !346 {
  %4 = load float, ptr %1, align 4, !tbaa !116
  %5 = fmul float %4, %2
  store float %5, ptr %0, align 4, !tbaa !116
  %6 = getelementptr inbounds float, ptr %1, i64 1
  %7 = load float, ptr %6, align 4, !tbaa !116
  %8 = fmul float %7, %2
  %9 = getelementptr inbounds float, ptr %0, i64 1
  store float %8, ptr %9, align 4, !tbaa !116
  %10 = getelementptr inbounds float, ptr %1, i64 2
  %11 = load float, ptr %10, align 4, !tbaa !116
  %12 = fmul float %11, %2
  %13 = getelementptr inbounds float, ptr %0, i64 2
  store float %12, ptr %13, align 4, !tbaa !116
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable
define internal fastcc void @zero_v3(ptr nocapture noundef writeonly %0) unnamed_addr #17 !PGOFuncName !347 {
  store <2 x float> zeroinitializer, ptr %0, align 4, !tbaa !116
  %2 = getelementptr inbounds float, ptr %0, i64 2
  store float 0.000000e+00, ptr %2, align 4, !tbaa !116
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc i32 @surface_needsVelocityData(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) unnamed_addr #4 !PGOFuncName !348 {
  %3 = getelementptr inbounds %struct.DynamicPaintSurface, ptr %0, i64 0, i32 19
  %4 = load i32, ptr %3, align 8, !tbaa !112
  %5 = and i32 %4, 2
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %7, label %10

7:                                                ; preds = %2
  %8 = tail call fastcc i32 @surface_getBrushFlags(ptr noundef nonnull %0, ptr noundef %1) #25
  %9 = and i32 %8, 1
  br label %10

10:                                               ; preds = %7, %2
  %11 = phi i32 [ 1, %2 ], [ %9, %7 ]
  ret i32 %11
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc i32 @surface_needsAccelerationData(ptr nocapture noundef readonly %0) unnamed_addr #0 !PGOFuncName !349 {
  %2 = getelementptr inbounds %struct.DynamicPaintSurface, ptr %0, i64 0, i32 19
  %3 = load i32, ptr %2, align 8, !tbaa !112
  %4 = lshr i32 %3, 1
  %5 = and i32 %4, 1
  ret i32 %5
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc i32 @dynamicPaint_surfaceHasMoved(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) unnamed_addr #4 !PGOFuncName !350 {
  %3 = getelementptr inbounds %struct.DynamicPaintSurface, ptr %0, i64 0, i32 3
  %4 = load ptr, ptr %3, align 8, !tbaa !74
  %5 = getelementptr inbounds %struct.PaintSurfaceData, ptr %4, i64 0, i32 3
  %6 = load ptr, ptr %5, align 8, !tbaa !89
  %7 = getelementptr inbounds %struct.DynamicPaintSurface, ptr %0, i64 0, i32 2
  %8 = load ptr, ptr %7, align 8, !tbaa !58
  %9 = getelementptr inbounds %struct.DynamicPaintCanvasSettings, ptr %8, i64 0, i32 1
  %10 = load ptr, ptr %9, align 8, !tbaa !108
  %11 = getelementptr inbounds %struct.DerivedMesh, ptr %10, i64 0, i32 31
  %12 = load ptr, ptr %11, align 8, !tbaa !246
  %13 = tail call ptr %12(ptr noundef %10) #26
  %14 = getelementptr inbounds %struct.DerivedMesh, ptr %10, i64 0, i32 23
  %15 = load ptr, ptr %14, align 8, !tbaa !172
  %16 = tail call i32 %15(ptr noundef %10) #26
  %17 = getelementptr inbounds %struct.PaintBakeData, ptr %6, i64 0, i32 11
  %18 = load ptr, ptr %17, align 8, !tbaa !99
  %19 = icmp eq ptr %18, null
  br i1 %19, label %58, label %20

20:                                               ; preds = %2, %36
  %21 = phi i64 [ %37, %36 ], [ 0, %2 ]
  br label %29

22:                                               ; preds = %36
  %23 = icmp sgt i32 %16, 0
  br i1 %23, label %24, label %58

24:                                               ; preds = %22
  %25 = zext nneg i32 %16 to i64
  br label %39

26:                                               ; preds = %29
  %27 = add nuw nsw i64 %30, 1
  %28 = icmp eq i64 %27, 4
  br i1 %28, label %36, label %29, !llvm.loop !351

29:                                               ; preds = %20, %26
  %30 = phi i64 [ 0, %20 ], [ %27, %26 ]
  %31 = getelementptr inbounds %struct.PaintBakeData, ptr %6, i64 0, i32 12, i64 %21, i64 %30
  %32 = load float, ptr %31, align 4, !tbaa !116
  %33 = getelementptr inbounds %struct.Object, ptr %1, i64 0, i32 47, i64 %21, i64 %30
  %34 = load float, ptr %33, align 4, !tbaa !116
  %35 = fcmp une float %32, %34
  br i1 %35, label %58, label %26

36:                                               ; preds = %26
  %37 = add nuw nsw i64 %21, 1
  %38 = icmp eq i64 %37, 4
  br i1 %38, label %22, label %20, !llvm.loop !352

39:                                               ; preds = %24, %54
  %40 = phi i64 [ 0, %24 ], [ %56, %54 ]
  %41 = phi i32 [ 0, %24 ], [ %55, %54 ]
  %42 = getelementptr inbounds %struct.MVert, ptr %18, i64 %40
  %43 = getelementptr inbounds %struct.MVert, ptr %13, i64 %40
  br label %47

44:                                               ; preds = %47
  %45 = add nuw nsw i64 %48, 1
  %46 = icmp eq i64 %45, 3
  br i1 %46, label %54, label %47, !llvm.loop !353

47:                                               ; preds = %39, %44
  %48 = phi i64 [ 0, %39 ], [ %45, %44 ]
  %49 = getelementptr inbounds [3 x float], ptr %42, i64 0, i64 %48
  %50 = load float, ptr %49, align 4, !tbaa !116
  %51 = getelementptr inbounds [3 x float], ptr %43, i64 0, i64 %48
  %52 = load float, ptr %51, align 4, !tbaa !116
  %53 = fcmp une float %50, %52
  br i1 %53, label %54, label %44

54:                                               ; preds = %47, %44
  %55 = phi i32 [ %41, %44 ], [ 1, %47 ]
  %56 = add nuw nsw i64 %40, 1
  %57 = icmp eq i64 %56, %25
  br i1 %57, label %58, label %39, !llvm.loop !354

58:                                               ; preds = %29, %54, %22, %2
  %59 = phi i32 [ 1, %2 ], [ 0, %22 ], [ %55, %54 ], [ 1, %29 ]
  ret i32 %59
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define internal fastcc i32 @surface_totalSamples(ptr nocapture noundef readonly %0) unnamed_addr #18 !PGOFuncName !355 {
  %2 = getelementptr inbounds %struct.DynamicPaintSurface, ptr %0, i64 0, i32 10
  %3 = load i16, ptr %2, align 4, !tbaa !34
  switch i16 %3, label %32 [
    i16 2, label %4
    i16 1, label %15
  ]

4:                                                ; preds = %1
  %5 = getelementptr inbounds %struct.DynamicPaintSurface, ptr %0, i64 0, i32 18
  %6 = load i32, ptr %5, align 4, !tbaa !50
  %7 = and i32 %6, 2
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %32, label %9

9:                                                ; preds = %4
  %10 = getelementptr inbounds %struct.DynamicPaintSurface, ptr %0, i64 0, i32 3
  %11 = load ptr, ptr %10, align 8, !tbaa !74
  %12 = getelementptr inbounds %struct.PaintSurfaceData, ptr %11, i64 0, i32 4
  %13 = load i32, ptr %12, align 8, !tbaa !145
  %14 = mul nsw i32 %13, 5
  br label %37

15:                                               ; preds = %1
  %16 = getelementptr inbounds %struct.DynamicPaintSurface, ptr %0, i64 0, i32 18
  %17 = load i32, ptr %16, align 4, !tbaa !50
  %18 = and i32 %17, 2
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %32, label %20

20:                                               ; preds = %15
  %21 = getelementptr inbounds %struct.DynamicPaintSurface, ptr %0, i64 0, i32 3
  %22 = load ptr, ptr %21, align 8, !tbaa !74
  %23 = getelementptr inbounds %struct.PaintSurfaceData, ptr %22, i64 0, i32 2
  %24 = load ptr, ptr %23, align 8, !tbaa !82
  %25 = icmp eq ptr %24, null
  br i1 %25, label %32, label %26

26:                                               ; preds = %20
  %27 = getelementptr inbounds %struct.PaintSurfaceData, ptr %22, i64 0, i32 4
  %28 = load i32, ptr %27, align 8, !tbaa !145
  %29 = getelementptr inbounds %struct.PaintAdjData, ptr %24, i64 0, i32 4
  %30 = load i32, ptr %29, align 8, !tbaa !177
  %31 = add nsw i32 %30, %28
  br label %37

32:                                               ; preds = %1, %4, %20, %15
  %33 = getelementptr inbounds %struct.DynamicPaintSurface, ptr %0, i64 0, i32 3
  %34 = load ptr, ptr %33, align 8, !tbaa !74
  %35 = getelementptr inbounds %struct.PaintSurfaceData, ptr %34, i64 0, i32 4
  %36 = load i32, ptr %35, align 8, !tbaa !145
  br label %37

37:                                               ; preds = %32, %26, %9
  %38 = phi i32 [ %14, %9 ], [ %31, %26 ], [ %36, %32 ]
  ret i32 %38
}

; Function Attrs: optsize
declare void @mul_m4_v3(ptr noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(argmem: readwrite) uwtable
define internal fastcc void @boundInsert(ptr nocapture noundef %0, ptr nocapture noundef readonly %1) unnamed_addr #13 !PGOFuncName !356 {
  %3 = load i32, ptr %0, align 4, !tbaa !357
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %5, label %8

5:                                                ; preds = %2
  %6 = getelementptr inbounds %struct.Bounds3D, ptr %0, i64 0, i32 1
  tail call fastcc void @copy_v3_v3(ptr noundef nonnull %6, ptr noundef %1) #25
  %7 = getelementptr inbounds %struct.Bounds3D, ptr %0, i64 0, i32 2
  tail call fastcc void @copy_v3_v3(ptr noundef nonnull %7, ptr noundef %1) #25
  store i32 1, ptr %0, align 4, !tbaa !357
  br label %26

8:                                                ; preds = %2, %23
  %9 = phi i64 [ %24, %23 ], [ 2, %2 ]
  %10 = getelementptr inbounds float, ptr %1, i64 %9
  %11 = load float, ptr %10, align 4, !tbaa !116
  %12 = getelementptr inbounds %struct.Bounds3D, ptr %0, i64 0, i32 1, i64 %9
  %13 = load float, ptr %12, align 4, !tbaa !116
  %14 = fcmp olt float %11, %13
  br i1 %14, label %15, label %17

15:                                               ; preds = %8
  store float %11, ptr %12, align 4, !tbaa !116
  %16 = load float, ptr %10, align 4, !tbaa !116
  br label %17

17:                                               ; preds = %15, %8
  %18 = phi float [ %16, %15 ], [ %11, %8 ]
  %19 = getelementptr inbounds %struct.Bounds3D, ptr %0, i64 0, i32 2, i64 %9
  %20 = load float, ptr %19, align 4, !tbaa !116
  %21 = fcmp ogt float %18, %20
  br i1 %21, label %22, label %23

22:                                               ; preds = %17
  store float %18, ptr %19, align 4, !tbaa !116
  br label %23

23:                                               ; preds = %17, %22
  %24 = add nsw i64 %9, -1
  %25 = icmp eq i64 %9, 0
  br i1 %25, label %26, label %8, !llvm.loop !358

26:                                               ; preds = %23, %5
  ret void
}

; Function Attrs: optsize
declare void @mul_mat3_m4_v3(ptr noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @negate_v3(ptr nocapture noundef %0) unnamed_addr #7 !PGOFuncName !359 {
  %2 = load <2 x float>, ptr %0, align 4, !tbaa !116
  %3 = fneg <2 x float> %2
  store <2 x float> %3, ptr %0, align 4, !tbaa !116
  %4 = getelementptr inbounds float, ptr %0, i64 2
  %5 = load float, ptr %4, align 4, !tbaa !116
  %6 = fneg float %5
  store float %6, ptr %4, align 4, !tbaa !116
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @mul_v3_fl(ptr nocapture noundef %0, float noundef %1) unnamed_addr #7 !PGOFuncName !360 {
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

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @mul_v3_v3(ptr nocapture noundef %0, ptr nocapture noundef readonly %1) unnamed_addr #7 !PGOFuncName !361 {
  %3 = load float, ptr %1, align 4, !tbaa !116
  %4 = load float, ptr %0, align 4, !tbaa !116
  %5 = fmul float %3, %4
  store float %5, ptr %0, align 4, !tbaa !116
  %6 = getelementptr inbounds float, ptr %1, i64 1
  %7 = load float, ptr %6, align 4, !tbaa !116
  %8 = getelementptr inbounds float, ptr %0, i64 1
  %9 = load float, ptr %8, align 4, !tbaa !116
  %10 = fmul float %7, %9
  store float %10, ptr %8, align 4, !tbaa !116
  %11 = getelementptr inbounds float, ptr %1, i64 2
  %12 = load float, ptr %11, align 4, !tbaa !116
  %13 = getelementptr inbounds float, ptr %0, i64 2
  %14 = load float, ptr %13, align 4, !tbaa !116
  %15 = fmul float %12, %14
  store float %15, ptr %13, align 4, !tbaa !116
  ret void
}

; Function Attrs: mustprogress nofree noinline nounwind optsize willreturn memory(write, argmem: readwrite) uwtable
define internal fastcc float @len_v3(ptr nocapture noundef readonly %0) unnamed_addr #15 !PGOFuncName !362 {
  %2 = tail call fastcc float @dot_v3v3(ptr noundef %0, ptr noundef %0) #25
  %3 = tail call float @sqrtf(float noundef %2) #26
  ret float %3
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @sub_v3_v3v3(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2) unnamed_addr #7 !PGOFuncName !363 {
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

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @surfaceGenerateGrid(ptr nocapture noundef readonly %0) unnamed_addr #4 !PGOFuncName !364 {
  %2 = alloca [3 x float], align 4
  %3 = alloca [3 x float], align 4
  %4 = alloca [3 x i32], align 4
  %5 = getelementptr inbounds %struct.DynamicPaintSurface, ptr %0, i64 0, i32 3
  %6 = load ptr, ptr %5, align 8, !tbaa !74
  %7 = getelementptr inbounds %struct.PaintSurfaceData, ptr %6, i64 0, i32 3
  %8 = load ptr, ptr %7, align 8, !tbaa !89
  %9 = getelementptr inbounds %struct.PaintBakeData, ptr %8, i64 0, i32 7
  %10 = load ptr, ptr %9, align 8, !tbaa !98
  %11 = icmp eq ptr %10, null
  br i1 %11, label %13, label %12

12:                                               ; preds = %1
  tail call fastcc void @freeGrid(ptr noundef nonnull %6) #25
  br label %13

13:                                               ; preds = %12, %1
  %14 = load ptr, ptr @MEM_callocN, align 8, !tbaa !44
  %15 = tail call ptr %14(i64 noundef 28, ptr noundef nonnull @.str.46) #26
  %16 = load ptr, ptr @MEM_callocN, align 8, !tbaa !44
  %17 = tail call ptr %16(i64 noundef 72, ptr noundef nonnull @.str.47) #26
  store ptr %17, ptr %9, align 8, !tbaa !98
  %18 = icmp ne ptr %17, null
  %19 = icmp ne ptr %15, null
  %20 = select i1 %18, i1 %19, i1 false
  br i1 %20, label %21, label %352

21:                                               ; preds = %13
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %2) #27
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %3) #27
  %22 = getelementptr inbounds %struct.PaintSurfaceData, ptr %6, i64 0, i32 4
  %23 = load i32, ptr %22, align 8, !tbaa !145
  %24 = icmp sgt i32 %23, 0
  br i1 %24, label %25, label %40

25:                                               ; preds = %21
  %26 = getelementptr inbounds %struct.PaintBakeData, ptr %8, i64 0, i32 3
  %27 = getelementptr inbounds %struct.PaintBakeData, ptr %8, i64 0, i32 1
  br label %28

28:                                               ; preds = %25, %28
  %29 = phi i64 [ 0, %25 ], [ %36, %28 ]
  %30 = load ptr, ptr %26, align 8, !tbaa !96
  %31 = load ptr, ptr %27, align 8, !tbaa !94
  %32 = getelementptr inbounds i32, ptr %31, i64 %29
  %33 = load i32, ptr %32, align 4, !tbaa !122
  %34 = sext i32 %33 to i64
  %35 = getelementptr inbounds %struct.Vec3f, ptr %30, i64 %34
  tail call fastcc void @boundInsert(ptr noundef nonnull %15, ptr noundef %35) #25
  %36 = add nuw nsw i64 %29, 1
  %37 = load i32, ptr %22, align 8, !tbaa !145
  %38 = sext i32 %37 to i64
  %39 = icmp slt i64 %36, %38
  br i1 %39, label %28, label %40, !llvm.loop !365

40:                                               ; preds = %28, %21
  %41 = getelementptr inbounds %struct.VolumeGrid, ptr %17, i64 0, i32 1
  %42 = getelementptr inbounds %struct.Bounds3D, ptr %15, i64 0, i32 1
  tail call fastcc void @boundInsert(ptr noundef nonnull %41, ptr noundef nonnull %42) #25
  %43 = getelementptr inbounds %struct.Bounds3D, ptr %15, i64 0, i32 2
  tail call fastcc void @boundInsert(ptr noundef nonnull %41, ptr noundef nonnull %43) #25
  %44 = getelementptr inbounds %struct.VolumeGrid, ptr %17, i64 0, i32 1, i32 2
  %45 = getelementptr inbounds %struct.VolumeGrid, ptr %17, i64 0, i32 1, i32 1
  call fastcc void @sub_v3_v3v3(ptr noundef nonnull %2, ptr noundef nonnull %44, ptr noundef nonnull %45) #25
  call fastcc void @copy_v3_v3(ptr noundef nonnull %3, ptr noundef nonnull %2) #25
  %46 = load float, ptr %3, align 4, !tbaa !116
  %47 = getelementptr inbounds [3 x float], ptr %3, i64 0, i64 1
  %48 = load float, ptr %47, align 4, !tbaa !116
  %49 = getelementptr inbounds [3 x float], ptr %3, i64 0, i64 2
  %50 = load float, ptr %49, align 4, !tbaa !116
  %51 = tail call fastcc float @max_fff(float noundef %46, float noundef %48, float noundef %50) #25
  %52 = fdiv float %51, 1.000000e+03
  br label %53

53:                                               ; preds = %40, %61
  %54 = phi i64 [ 0, %40 ], [ %63, %61 ]
  %55 = phi i32 [ 3, %40 ], [ %62, %61 ]
  %56 = getelementptr inbounds [3 x float], ptr %3, i64 0, i64 %54
  %57 = load float, ptr %56, align 4, !tbaa !116
  %58 = fcmp olt float %57, %52
  br i1 %58, label %59, label %61

59:                                               ; preds = %53
  store float 1.000000e+00, ptr %56, align 4, !tbaa !116
  %60 = add nsw i32 %55, -1
  br label %61

61:                                               ; preds = %53, %59
  %62 = phi i32 [ %60, %59 ], [ %55, %53 ]
  %63 = add nuw nsw i64 %54, 1
  %64 = icmp eq i64 %63, 3
  br i1 %64, label %65, label %53, !llvm.loop !366

65:                                               ; preds = %61
  %66 = icmp eq i32 %62, 0
  br i1 %66, label %73, label %67

67:                                               ; preds = %65
  %68 = load float, ptr %3, align 4, !tbaa !116
  %69 = load float, ptr %47, align 4, !tbaa !116
  %70 = load float, ptr %49, align 4, !tbaa !116
  %71 = tail call fastcc float @max_fff(float noundef %68, float noundef %69, float noundef %70) #25
  %72 = fcmp olt float %71, 0x3F1A36E2E0000000
  br i1 %72, label %73, label %77

73:                                               ; preds = %67, %65
  %74 = load ptr, ptr @MEM_freeN, align 8, !tbaa !44
  tail call void %74(ptr noundef nonnull %15) #26
  %75 = load ptr, ptr @MEM_freeN, align 8, !tbaa !44
  %76 = load ptr, ptr %9, align 8, !tbaa !98
  tail call void %75(ptr noundef %76) #26
  store ptr null, ptr %9, align 8, !tbaa !98
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %3) #27
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %2) #27
  br label %355

77:                                               ; preds = %67
  %78 = fmul float %68, %69
  %79 = fmul float %78, %70
  %80 = fpext float %79 to double
  %81 = load i32, ptr %22, align 8, !tbaa !145
  %82 = sitofp i32 %81 to double
  %83 = fdiv double %82, 1.000000e+04
  %84 = fdiv double %80, %83
  %85 = sitofp i32 %62 to double
  %86 = fdiv double 1.000000e+00, %85
  %87 = tail call double @pow(double noundef %84, double noundef %86) #26
  %88 = fptrunc double %87 to float
  br label %89

89:                                               ; preds = %77, %106
  %90 = phi i64 [ 0, %77 ], [ %107, %106 ]
  %91 = getelementptr inbounds [3 x float], ptr %3, i64 0, i64 %90
  %92 = load float, ptr %91, align 4, !tbaa !116
  %93 = fdiv float %92, %88
  %94 = tail call float @llvm.floor.f32(float %93)
  %95 = fptosi float %94 to i32
  %96 = getelementptr inbounds [3 x i32], ptr %17, i64 0, i64 %90
  store i32 %95, ptr %96, align 4, !tbaa !122
  %97 = getelementptr inbounds [3 x float], ptr %2, i64 0, i64 %90
  %98 = load float, ptr %97, align 4, !tbaa !116
  %99 = fcmp oge float %98, %52
  %100 = select i1 %99, i32 3, i32 1
  %101 = icmp sgt i32 %100, %95
  br i1 %101, label %104, label %102

102:                                              ; preds = %89
  %103 = icmp ugt i32 %95, 100
  br i1 %103, label %104, label %106

104:                                              ; preds = %102, %89
  %105 = phi i32 [ %100, %89 ], [ 100, %102 ]
  store i32 %105, ptr %96, align 4, !tbaa !122
  br label %106

106:                                              ; preds = %104, %102
  %107 = add nuw nsw i64 %90, 1
  %108 = icmp eq i64 %107, 3
  br i1 %108, label %109, label %89, !llvm.loop !367

109:                                              ; preds = %106
  %110 = load i32, ptr %17, align 8, !tbaa !122
  %111 = getelementptr inbounds [3 x i32], ptr %17, i64 0, i64 1
  %112 = load i32, ptr %111, align 4, !tbaa !122
  %113 = mul nsw i32 %112, %110
  %114 = getelementptr inbounds [3 x i32], ptr %17, i64 0, i64 2
  %115 = load i32, ptr %114, align 8, !tbaa !122
  %116 = mul nsw i32 %113, %115
  %117 = load ptr, ptr @MEM_callocN, align 8, !tbaa !44
  %118 = sext i32 %116 to i64
  %119 = mul nsw i64 %118, 28
  %120 = tail call ptr %117(i64 noundef %119, ptr noundef nonnull @.str.48) #26
  %121 = getelementptr inbounds %struct.VolumeGrid, ptr %17, i64 0, i32 2
  store ptr %120, ptr %121, align 8, !tbaa !328
  %122 = load ptr, ptr @MEM_callocN, align 8, !tbaa !44
  %123 = shl nsw i64 %118, 2
  %124 = tail call ptr %122(i64 noundef %123, ptr noundef nonnull @.str.49) #26
  %125 = getelementptr inbounds %struct.VolumeGrid, ptr %17, i64 0, i32 3
  store ptr %124, ptr %125, align 8, !tbaa !330
  %126 = load ptr, ptr @MEM_callocN, align 8, !tbaa !44
  %127 = tail call ptr %126(i64 noundef %123, ptr noundef nonnull @.str.50) #26
  %128 = getelementptr inbounds %struct.VolumeGrid, ptr %17, i64 0, i32 4
  store ptr %127, ptr %128, align 8, !tbaa !331
  %129 = load ptr, ptr @MEM_callocN, align 8, !tbaa !44
  %130 = tail call ptr %129(i64 noundef %123, ptr noundef nonnull @.str.51) #26
  %131 = load ptr, ptr @MEM_callocN, align 8, !tbaa !44
  %132 = load i32, ptr %22, align 8, !tbaa !145
  %133 = sext i32 %132 to i64
  %134 = shl nsw i64 %133, 2
  %135 = tail call ptr %131(i64 noundef %134, ptr noundef nonnull @.str.52) #26
  %136 = getelementptr inbounds %struct.VolumeGrid, ptr %17, i64 0, i32 5
  store ptr %135, ptr %136, align 8, !tbaa !332
  %137 = load ptr, ptr @MEM_callocN, align 8, !tbaa !44
  %138 = load i32, ptr %22, align 8, !tbaa !145
  %139 = sext i32 %138 to i64
  %140 = shl nsw i64 %139, 2
  %141 = tail call ptr %137(i64 noundef %140, ptr noundef nonnull @.str.53) #26
  %142 = load ptr, ptr %121, align 8, !tbaa !328
  %143 = icmp eq ptr %142, null
  br i1 %143, label %333, label %144

144:                                              ; preds = %109
  %145 = load ptr, ptr %125, align 8, !tbaa !330
  %146 = icmp eq ptr %145, null
  br i1 %146, label %333, label %147

147:                                              ; preds = %144
  %148 = load ptr, ptr %128, align 8, !tbaa !331
  %149 = icmp eq ptr %148, null
  br i1 %149, label %333, label %150

150:                                              ; preds = %147
  %151 = load ptr, ptr %136, align 8, !tbaa !332
  %152 = icmp ne ptr %151, null
  %153 = icmp ne ptr %130, null
  %154 = select i1 %152, i1 %153, i1 false
  %155 = icmp ne ptr %141, null
  %156 = select i1 %154, i1 %155, i1 false
  br i1 %156, label %157, label %333

157:                                              ; preds = %150
  %158 = load i32, ptr %22, align 8, !tbaa !145
  %159 = icmp sgt i32 %158, 0
  br i1 %159, label %160, label %167

160:                                              ; preds = %157
  %161 = getelementptr inbounds %struct.PaintBakeData, ptr %8, i64 0, i32 3
  %162 = load ptr, ptr %161, align 8, !tbaa !96
  %163 = getelementptr inbounds %struct.PaintBakeData, ptr %8, i64 0, i32 1
  %164 = load ptr, ptr %163, align 8, !tbaa !94
  %165 = getelementptr inbounds [3 x i32], ptr %4, i64 0, i64 1
  %166 = getelementptr inbounds [3 x i32], ptr %4, i64 0, i64 2
  br label %174

167:                                              ; preds = %207, %157
  %168 = phi i32 [ %158, %157 ], [ %223, %207 ]
  %169 = icmp sgt i32 %116, 1
  br i1 %169, label %170, label %228

170:                                              ; preds = %167
  %171 = zext nneg i32 %116 to i64
  %172 = load i32, ptr %145, align 4, !tbaa !122
  %173 = getelementptr i32, ptr %148, i64 -1
  br label %231

174:                                              ; preds = %160, %207
  %175 = phi i64 [ 0, %160 ], [ %222, %207 ]
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %4) #27
  %176 = getelementptr inbounds i32, ptr %164, i64 %175
  %177 = load i32, ptr %176, align 4, !tbaa !122
  %178 = sext i32 %177 to i64
  %179 = getelementptr inbounds %struct.Vec3f, ptr %162, i64 %178
  br label %180

180:                                              ; preds = %174, %204
  %181 = phi i64 [ 0, %174 ], [ %205, %204 ]
  %182 = getelementptr inbounds [3 x float], ptr %179, i64 0, i64 %181
  %183 = load float, ptr %182, align 4, !tbaa !116
  %184 = getelementptr inbounds %struct.VolumeGrid, ptr %17, i64 0, i32 1, i32 1, i64 %181
  %185 = load float, ptr %184, align 4, !tbaa !116
  %186 = fsub float %183, %185
  %187 = getelementptr inbounds [3 x float], ptr %2, i64 0, i64 %181
  %188 = load float, ptr %187, align 4, !tbaa !116
  %189 = fdiv float %186, %188
  %190 = getelementptr inbounds [3 x i32], ptr %17, i64 0, i64 %181
  %191 = load i32, ptr %190, align 4, !tbaa !122
  %192 = sitofp i32 %191 to float
  %193 = fmul float %189, %192
  %194 = tail call float @llvm.floor.f32(float %193)
  %195 = fptosi float %194 to i32
  %196 = getelementptr inbounds [3 x i32], ptr %4, i64 0, i64 %181
  store i32 %195, ptr %196, align 4, !tbaa !122
  %197 = icmp slt i32 %195, 0
  br i1 %197, label %202, label %198

198:                                              ; preds = %180
  %199 = icmp sgt i32 %191, %195
  br i1 %199, label %204, label %200

200:                                              ; preds = %198
  %201 = add nsw i32 %191, -1
  br label %202

202:                                              ; preds = %180, %200
  %203 = phi i32 [ %201, %200 ], [ 0, %180 ]
  store i32 %203, ptr %196, align 4, !tbaa !122
  br label %204

204:                                              ; preds = %202, %198
  %205 = add nuw nsw i64 %181, 1
  %206 = icmp eq i64 %205, 3
  br i1 %206, label %207, label %180, !llvm.loop !368

207:                                              ; preds = %204
  %208 = load i32, ptr %4, align 4, !tbaa !122
  %209 = load i32, ptr %165, align 4, !tbaa !122
  %210 = load i32, ptr %17, align 8, !tbaa !122
  %211 = load i32, ptr %166, align 4, !tbaa !122
  %212 = load i32, ptr %111, align 4, !tbaa !122
  %213 = mul i32 %212, %211
  %214 = add i32 %213, %209
  %215 = mul i32 %214, %210
  %216 = add i32 %215, %208
  %217 = getelementptr inbounds i32, ptr %141, i64 %175
  store i32 %216, ptr %217, align 4, !tbaa !122
  %218 = sext i32 %216 to i64
  %219 = getelementptr inbounds i32, ptr %148, i64 %218
  %220 = load i32, ptr %219, align 4, !tbaa !122
  %221 = add nsw i32 %220, 1
  store i32 %221, ptr %219, align 4, !tbaa !122
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %4) #27
  %222 = add nuw nsw i64 %175, 1
  %223 = load i32, ptr %22, align 8, !tbaa !145
  %224 = sext i32 %223 to i64
  %225 = icmp slt i64 %222, %224
  br i1 %225, label %174, label %167, !llvm.loop !369

226:                                              ; preds = %231
  %227 = load i32, ptr %22, align 8, !tbaa !145
  br label %228

228:                                              ; preds = %226, %167
  %229 = phi i32 [ %227, %226 ], [ %168, %167 ]
  %230 = icmp sgt i32 %229, 0
  br i1 %230, label %245, label %240

231:                                              ; preds = %170, %231
  %232 = phi i32 [ %172, %170 ], [ %236, %231 ]
  %233 = phi i64 [ 1, %170 ], [ %238, %231 ]
  %234 = getelementptr i32, ptr %173, i64 %233
  %235 = load i32, ptr %234, align 4, !tbaa !122
  %236 = add nsw i32 %235, %232
  %237 = getelementptr inbounds i32, ptr %145, i64 %233
  store i32 %236, ptr %237, align 4, !tbaa !122
  %238 = add nuw nsw i64 %233, 1
  %239 = icmp eq i64 %238, %171
  br i1 %239, label %226, label %231, !llvm.loop !370

240:                                              ; preds = %245, %228
  %241 = load i32, ptr %17, align 8, !tbaa !122
  %242 = icmp sgt i32 %241, 0
  br i1 %242, label %243, label %333

243:                                              ; preds = %240
  %244 = load i32, ptr %111, align 4, !tbaa !122
  br label %267

245:                                              ; preds = %228, %245
  %246 = phi i64 [ %263, %245 ], [ 0, %228 ]
  %247 = getelementptr inbounds i32, ptr %141, i64 %246
  %248 = load i32, ptr %247, align 4, !tbaa !122
  %249 = sext i32 %248 to i64
  %250 = getelementptr inbounds i32, ptr %145, i64 %249
  %251 = load i32, ptr %250, align 4, !tbaa !122
  %252 = getelementptr inbounds i32, ptr %130, i64 %249
  %253 = load i32, ptr %252, align 4, !tbaa !122
  %254 = add nsw i32 %253, %251
  %255 = sext i32 %254 to i64
  %256 = getelementptr inbounds i32, ptr %151, i64 %255
  %257 = trunc i64 %246 to i32
  store i32 %257, ptr %256, align 4, !tbaa !122
  %258 = load i32, ptr %247, align 4, !tbaa !122
  %259 = sext i32 %258 to i64
  %260 = getelementptr inbounds i32, ptr %130, i64 %259
  %261 = load i32, ptr %260, align 4, !tbaa !122
  %262 = add nsw i32 %261, 1
  store i32 %262, ptr %260, align 4, !tbaa !122
  %263 = add nuw nsw i64 %246, 1
  %264 = load i32, ptr %22, align 8, !tbaa !145
  %265 = sext i32 %264 to i64
  %266 = icmp slt i64 %263, %265
  br i1 %266, label %245, label %240, !llvm.loop !371

267:                                              ; preds = %243, %327
  %268 = phi i32 [ %328, %327 ], [ %241, %243 ]
  %269 = phi i32 [ %329, %327 ], [ %244, %243 ]
  %270 = phi i32 [ %330, %327 ], [ %244, %243 ]
  %271 = phi i32 [ %331, %327 ], [ 0, %243 ]
  %272 = icmp sgt i32 %270, 0
  br i1 %272, label %273, label %327

273:                                              ; preds = %267
  %274 = load i32, ptr %114, align 8, !tbaa !122
  br label %275

275:                                              ; preds = %273, %320
  %276 = phi i32 [ %321, %320 ], [ %269, %273 ]
  %277 = phi i32 [ %322, %320 ], [ %274, %273 ]
  %278 = phi i32 [ %323, %320 ], [ 0, %273 ]
  %279 = icmp sgt i32 %277, 0
  br i1 %279, label %280, label %320

280:                                              ; preds = %275, %313
  %281 = phi i32 [ %315, %313 ], [ 0, %275 ]
  %282 = load i32, ptr %17, align 8, !tbaa !122
  %283 = load i32, ptr %111, align 4, !tbaa !122
  %284 = mul i32 %283, %281
  %285 = add i32 %284, %278
  %286 = mul i32 %285, %282
  %287 = add i32 %286, %271
  %288 = sext i32 %287 to i64
  br label %289

289:                                              ; preds = %280, %289
  %290 = phi i64 [ 0, %280 ], [ %311, %289 ]
  %291 = icmp eq i64 %290, 0
  %292 = icmp eq i64 %290, 1
  %293 = select i1 %292, i32 %278, i32 %281
  %294 = select i1 %291, i32 %271, i32 %293
  %295 = getelementptr inbounds %struct.VolumeGrid, ptr %17, i64 0, i32 1, i32 1, i64 %290
  %296 = load float, ptr %295, align 4, !tbaa !116
  %297 = getelementptr inbounds [3 x float], ptr %2, i64 0, i64 %290
  %298 = load float, ptr %297, align 4, !tbaa !116
  %299 = getelementptr inbounds [3 x i32], ptr %17, i64 0, i64 %290
  %300 = load i32, ptr %299, align 4, !tbaa !122
  %301 = sitofp i32 %300 to float
  %302 = fdiv float %298, %301
  %303 = sitofp i32 %294 to float
  %304 = tail call float @llvm.fmuladd.f32(float %302, float %303, float %296)
  %305 = getelementptr inbounds %struct.Bounds3D, ptr %142, i64 %288, i32 1, i64 %290
  store float %304, ptr %305, align 4, !tbaa !116
  %306 = load float, ptr %295, align 4, !tbaa !116
  %307 = add nuw nsw i32 %294, 1
  %308 = sitofp i32 %307 to float
  %309 = tail call float @llvm.fmuladd.f32(float %302, float %308, float %306)
  %310 = getelementptr inbounds %struct.Bounds3D, ptr %142, i64 %288, i32 2, i64 %290
  store float %309, ptr %310, align 4, !tbaa !116
  %311 = add nuw nsw i64 %290, 1
  %312 = icmp eq i64 %311, 3
  br i1 %312, label %313, label %289, !llvm.loop !372

313:                                              ; preds = %289
  %314 = getelementptr inbounds %struct.Bounds3D, ptr %142, i64 %288
  store i32 1, ptr %314, align 4, !tbaa !357
  %315 = add nuw nsw i32 %281, 1
  %316 = load i32, ptr %114, align 8, !tbaa !122
  %317 = icmp slt i32 %315, %316
  br i1 %317, label %280, label %318, !llvm.loop !373

318:                                              ; preds = %313
  %319 = load i32, ptr %111, align 4, !tbaa !122
  br label %320

320:                                              ; preds = %318, %275
  %321 = phi i32 [ %319, %318 ], [ %276, %275 ]
  %322 = phi i32 [ %316, %318 ], [ %277, %275 ]
  %323 = add nuw nsw i32 %278, 1
  %324 = icmp slt i32 %323, %321
  br i1 %324, label %275, label %325, !llvm.loop !374

325:                                              ; preds = %320
  %326 = load i32, ptr %17, align 8, !tbaa !122
  br label %327

327:                                              ; preds = %325, %267
  %328 = phi i32 [ %326, %325 ], [ %268, %267 ]
  %329 = phi i32 [ %321, %325 ], [ %269, %267 ]
  %330 = phi i32 [ %321, %325 ], [ %270, %267 ]
  %331 = add nuw nsw i32 %271, 1
  %332 = icmp slt i32 %331, %328
  br i1 %332, label %267, label %333, !llvm.loop !375

333:                                              ; preds = %327, %240, %150, %147, %144, %109
  %334 = phi i1 [ true, %109 ], [ true, %144 ], [ true, %147 ], [ true, %150 ], [ false, %240 ], [ false, %327 ]
  %335 = icmp eq ptr %130, null
  br i1 %335, label %338, label %336

336:                                              ; preds = %333
  %337 = load ptr, ptr @MEM_freeN, align 8, !tbaa !44
  tail call void %337(ptr noundef nonnull %130) #26
  br label %338

338:                                              ; preds = %336, %333
  %339 = icmp eq ptr %141, null
  br i1 %339, label %342, label %340

340:                                              ; preds = %338
  %341 = load ptr, ptr @MEM_freeN, align 8, !tbaa !44
  tail call void %341(ptr noundef nonnull %141) #26
  br label %342

342:                                              ; preds = %340, %338
  %343 = load ptr, ptr @MEM_reallocN_id, align 8, !tbaa !44
  %344 = load ptr, ptr %128, align 8, !tbaa !331
  %345 = tail call ptr %343(ptr noundef %344, i64 noundef %123, ptr noundef nonnull @__func__.surfaceGenerateGrid) #26
  store ptr %345, ptr %128, align 8, !tbaa !331
  %346 = icmp eq ptr %345, null
  %347 = select i1 %334, i1 true, i1 %346
  br i1 %347, label %348, label %351

348:                                              ; preds = %342
  %349 = getelementptr inbounds %struct.DynamicPaintSurface, ptr %0, i64 0, i32 2
  %350 = load ptr, ptr %349, align 8, !tbaa !58
  tail call fastcc void @setError(ptr noundef %350, ptr noundef nonnull @.str.17) #25
  tail call fastcc void @freeGrid(ptr noundef %6) #25
  br label %351

351:                                              ; preds = %348, %342
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %3) #27
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %2) #27
  br label %352

352:                                              ; preds = %351, %13
  br i1 %19, label %353, label %355

353:                                              ; preds = %352
  %354 = load ptr, ptr @MEM_freeN, align 8, !tbaa !44
  tail call void %354(ptr noundef nonnull %15) #26
  br label %355

355:                                              ; preds = %352, %353, %73
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @dynamicPaint_prepareAdjacencyData(ptr nocapture noundef readonly %0, i32 noundef %1) unnamed_addr #4 !PGOFuncName !376 {
  %3 = getelementptr inbounds %struct.DynamicPaintSurface, ptr %0, i64 0, i32 3
  %4 = load ptr, ptr %3, align 8, !tbaa !74
  %5 = getelementptr inbounds %struct.PaintSurfaceData, ptr %4, i64 0, i32 3
  %6 = load ptr, ptr %5, align 8, !tbaa !89
  %7 = getelementptr inbounds %struct.PaintSurfaceData, ptr %4, i64 0, i32 2
  %8 = load ptr, ptr %7, align 8, !tbaa !82
  %9 = getelementptr inbounds %struct.PaintBakeData, ptr %6, i64 0, i32 3
  %10 = load ptr, ptr %9, align 8, !tbaa !96
  %11 = tail call fastcc i32 @surface_usesAdjDistance(ptr noundef %0) #25, !range !175
  %12 = or i32 %11, %1
  %13 = icmp eq i32 %12, 0
  %14 = icmp eq ptr %8, null
  %15 = select i1 %13, i1 true, i1 %14
  br i1 %15, label %123, label %16

16:                                               ; preds = %2
  %17 = getelementptr inbounds %struct.PaintBakeData, ptr %6, i64 0, i32 5
  %18 = load ptr, ptr %17, align 8, !tbaa !97
  %19 = icmp eq ptr %18, null
  br i1 %19, label %23, label %20

20:                                               ; preds = %16
  %21 = load ptr, ptr @MEM_freeN, align 8, !tbaa !44
  tail call void %21(ptr noundef nonnull %18) #26
  %22 = load ptr, ptr %7, align 8, !tbaa !82
  br label %23

23:                                               ; preds = %20, %16
  %24 = phi ptr [ %22, %20 ], [ %8, %16 ]
  %25 = load ptr, ptr @MEM_mallocN, align 8, !tbaa !44
  %26 = getelementptr inbounds %struct.PaintAdjData, ptr %24, i64 0, i32 4
  %27 = load i32, ptr %26, align 8, !tbaa !177
  %28 = sext i32 %27 to i64
  %29 = shl nsw i64 %28, 4
  %30 = tail call ptr %25(i64 noundef %29, ptr noundef nonnull @.str.54) #26
  store ptr %30, ptr %17, align 8, !tbaa !97
  %31 = icmp eq ptr %30, null
  br i1 %31, label %123, label %32

32:                                               ; preds = %23
  %33 = getelementptr inbounds %struct.PaintSurfaceData, ptr %4, i64 0, i32 4
  %34 = load i32, ptr %33, align 8, !tbaa !145
  %35 = icmp sgt i32 %34, 0
  br i1 %35, label %36, label %116

36:                                               ; preds = %32
  %37 = getelementptr inbounds %struct.PaintAdjData, ptr %8, i64 0, i32 2
  %38 = getelementptr inbounds %struct.PaintAdjData, ptr %8, i64 0, i32 1
  %39 = getelementptr inbounds %struct.PaintBakeData, ptr %6, i64 0, i32 1
  br label %40

40:                                               ; preds = %36, %78
  %41 = phi i32 [ %34, %36 ], [ %79, %78 ]
  %42 = phi i64 [ 0, %36 ], [ %80, %78 ]
  %43 = load ptr, ptr %37, align 8, !tbaa !85
  %44 = getelementptr inbounds i32, ptr %43, i64 %42
  %45 = load i32, ptr %44, align 4, !tbaa !122
  %46 = icmp sgt i32 %45, 0
  br i1 %46, label %47, label %78

47:                                               ; preds = %40, %73
  %48 = phi i32 [ %74, %73 ], [ 0, %40 ]
  %49 = load ptr, ptr %38, align 8, !tbaa !83
  %50 = getelementptr inbounds i32, ptr %49, i64 %42
  %51 = load i32, ptr %50, align 4, !tbaa !122
  %52 = add nsw i32 %51, %48
  %53 = load ptr, ptr %8, align 8, !tbaa !86
  %54 = sext i32 %52 to i64
  %55 = getelementptr inbounds i32, ptr %53, i64 %54
  %56 = load i32, ptr %55, align 4, !tbaa !122
  %57 = getelementptr inbounds %struct.BakeAdjPoint, ptr %30, i64 %54
  %58 = load ptr, ptr %39, align 8, !tbaa !94
  %59 = sext i32 %56 to i64
  %60 = getelementptr inbounds i32, ptr %58, i64 %59
  %61 = load i32, ptr %60, align 4, !tbaa !122
  %62 = sext i32 %61 to i64
  %63 = getelementptr inbounds %struct.Vec3f, ptr %10, i64 %62
  %64 = getelementptr inbounds i32, ptr %58, i64 %42
  %65 = load i32, ptr %64, align 4, !tbaa !122
  %66 = sext i32 %65 to i64
  %67 = getelementptr inbounds %struct.Vec3f, ptr %10, i64 %66
  tail call fastcc void @sub_v3_v3v3(ptr noundef nonnull %57, ptr noundef %63, ptr noundef %67) #25
  %68 = tail call fastcc float @len_v3(ptr noundef nonnull %57) #25
  %69 = getelementptr inbounds %struct.BakeAdjPoint, ptr %30, i64 %54, i32 1
  store float %68, ptr %69, align 4, !tbaa !377
  %70 = fcmp une float %68, 0.000000e+00
  br i1 %70, label %71, label %73

71:                                               ; preds = %47
  %72 = fdiv float 1.000000e+00, %68
  tail call fastcc void @mul_v3_fl(ptr noundef nonnull %57, float noundef %72) #25
  br label %73

73:                                               ; preds = %71, %47
  %74 = add nuw nsw i32 %48, 1
  %75 = icmp eq i32 %74, %45
  br i1 %75, label %76, label %47, !llvm.loop !379

76:                                               ; preds = %73
  %77 = load i32, ptr %33, align 8, !tbaa !145
  br label %78

78:                                               ; preds = %76, %40
  %79 = phi i32 [ %77, %76 ], [ %41, %40 ]
  %80 = add nuw nsw i64 %42, 1
  %81 = sext i32 %79 to i64
  %82 = icmp slt i64 %80, %81
  br i1 %82, label %40, label %83, !llvm.loop !380

83:                                               ; preds = %78
  %84 = icmp sgt i32 %79, 0
  br i1 %84, label %85, label %116

85:                                               ; preds = %83
  %86 = getelementptr inbounds %struct.PaintAdjData, ptr %8, i64 0, i32 2
  %87 = load ptr, ptr %86, align 8, !tbaa !85
  %88 = getelementptr inbounds %struct.PaintAdjData, ptr %8, i64 0, i32 1
  %89 = zext nneg i32 %79 to i64
  br label %90

90:                                               ; preds = %85, %112
  %91 = phi double [ 0.000000e+00, %85 ], [ %113, %112 ]
  %92 = phi i64 [ 0, %85 ], [ %114, %112 ]
  %93 = getelementptr inbounds i32, ptr %87, i64 %92
  %94 = load i32, ptr %93, align 4, !tbaa !122
  %95 = icmp sgt i32 %94, 0
  br i1 %95, label %96, label %112

96:                                               ; preds = %90
  %97 = load ptr, ptr %88, align 8, !tbaa !83
  %98 = getelementptr inbounds i32, ptr %97, i64 %92
  %99 = load i32, ptr %98, align 4, !tbaa !122
  %100 = sext i32 %99 to i64
  %101 = zext nneg i32 %94 to i64
  br label %102

102:                                              ; preds = %96, %102
  %103 = phi i64 [ 0, %96 ], [ %110, %102 ]
  %104 = phi double [ %91, %96 ], [ %109, %102 ]
  %105 = add nsw i64 %103, %100
  %106 = getelementptr inbounds %struct.BakeAdjPoint, ptr %30, i64 %105, i32 1
  %107 = load float, ptr %106, align 4, !tbaa !377
  %108 = fpext float %107 to double
  %109 = fadd double %104, %108
  %110 = add nuw nsw i64 %103, 1
  %111 = icmp eq i64 %110, %101
  br i1 %111, label %112, label %102, !llvm.loop !381

112:                                              ; preds = %102, %90
  %113 = phi double [ %91, %90 ], [ %109, %102 ]
  %114 = add nuw nsw i64 %92, 1
  %115 = icmp eq i64 %114, %89
  br i1 %115, label %116, label %90, !llvm.loop !382

116:                                              ; preds = %112, %32, %83
  %117 = phi double [ 0.000000e+00, %83 ], [ 0.000000e+00, %32 ], [ %113, %112 ]
  %118 = getelementptr inbounds %struct.PaintBakeData, ptr %6, i64 0, i32 6
  %119 = getelementptr inbounds %struct.PaintAdjData, ptr %8, i64 0, i32 4
  %120 = load i32, ptr %119, align 8, !tbaa !177
  %121 = sitofp i32 %120 to double
  %122 = fdiv double %117, %121
  store double %122, ptr %118, align 8, !tbaa !383
  br label %123

123:                                              ; preds = %23, %2, %116
  ret void
}

; Function Attrs: optsize
declare void @copy_m4_m4(ptr noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc i32 @surface_getBrushFlags(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) unnamed_addr #4 !PGOFuncName !384 {
  %3 = getelementptr inbounds %struct.DynamicPaintSurface, ptr %0, i64 0, i32 4
  %4 = load ptr, ptr %3, align 8, !tbaa !138
  %5 = icmp eq ptr %4, null
  br i1 %5, label %9, label %6

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.Group, ptr %4, i64 0, i32 1
  %8 = load ptr, ptr %7, align 8, !tbaa !306
  br label %12

9:                                                ; preds = %2
  %10 = getelementptr inbounds %struct.Scene, ptr %1, i64 0, i32 5
  %11 = load ptr, ptr %10, align 8, !tbaa !308
  br label %12

12:                                               ; preds = %9, %6
  %13 = phi ptr [ %8, %6 ], [ null, %9 ]
  %14 = phi ptr [ null, %6 ], [ %11, %9 ]
  %15 = icmp ne ptr %14, null
  %16 = icmp ne ptr %13, null
  %17 = select i1 %15, i1 true, i1 %16
  br i1 %17, label %18, label %70

18:                                               ; preds = %12, %65
  %19 = phi ptr [ %46, %65 ], [ %14, %12 ]
  %20 = phi ptr [ %45, %65 ], [ %13, %12 ]
  %21 = phi i32 [ %66, %65 ], [ 0, %12 ]
  %22 = load ptr, ptr %3, align 8, !tbaa !138
  %23 = icmp eq ptr %22, null
  br label %24

24:                                               ; preds = %18, %37
  %25 = phi ptr [ %19, %18 ], [ %39, %37 ]
  %26 = phi ptr [ %20, %18 ], [ %38, %37 ]
  br i1 %23, label %27, label %32

27:                                               ; preds = %24
  %28 = getelementptr inbounds %struct.Base, ptr %25, i64 0, i32 7
  %29 = load ptr, ptr %28, align 8, !tbaa !309
  %30 = icmp eq ptr %29, null
  %31 = load ptr, ptr %25, align 8, !tbaa !311
  br i1 %30, label %37, label %43

32:                                               ; preds = %24
  %33 = getelementptr inbounds %struct.GroupObject, ptr %26, i64 0, i32 2
  %34 = load ptr, ptr %33, align 8, !tbaa !312
  %35 = icmp eq ptr %34, null
  %36 = load ptr, ptr %26, align 8, !tbaa !314
  br i1 %35, label %37, label %43

37:                                               ; preds = %27, %32
  %38 = phi ptr [ %36, %32 ], [ %26, %27 ]
  %39 = phi ptr [ %25, %32 ], [ %31, %27 ]
  %40 = icmp ne ptr %39, null
  %41 = icmp ne ptr %38, null
  %42 = select i1 %40, i1 true, i1 %41
  br i1 %42, label %24, label %70, !llvm.loop !385

43:                                               ; preds = %27, %32
  %44 = phi ptr [ %34, %32 ], [ %29, %27 ]
  %45 = phi ptr [ %36, %32 ], [ %26, %27 ]
  %46 = phi ptr [ %25, %32 ], [ %31, %27 ]
  %47 = tail call ptr @modifiers_findByType(ptr noundef nonnull %44, i32 noundef 40) #26
  %48 = icmp eq ptr %47, null
  br i1 %48, label %65, label %49

49:                                               ; preds = %43
  %50 = getelementptr inbounds %struct.ModifierData, ptr %47, i64 0, i32 3
  %51 = load i32, ptr %50, align 4, !tbaa !316
  %52 = and i32 %51, 3
  %53 = icmp eq i32 %52, 0
  br i1 %53, label %65, label %54

54:                                               ; preds = %49
  %55 = getelementptr inbounds %struct.DynamicPaintModifierData, ptr %47, i64 0, i32 2
  %56 = load ptr, ptr %55, align 8, !tbaa !64
  %57 = icmp eq ptr %56, null
  br i1 %57, label %65, label %58

58:                                               ; preds = %54
  %59 = getelementptr inbounds %struct.DynamicPaintBrushSettings, ptr %56, i64 0, i32 4
  %60 = load i32, ptr %59, align 8, !tbaa !128
  %61 = and i32 %60, 3840
  %62 = icmp ne i32 %61, 0
  %63 = zext i1 %62 to i32
  %64 = or i32 %21, %63
  br label %65

65:                                               ; preds = %54, %58, %49, %43
  %66 = phi i32 [ %21, %49 ], [ %21, %43 ], [ %64, %58 ], [ %21, %54 ]
  %67 = icmp ne ptr %46, null
  %68 = icmp ne ptr %45, null
  %69 = select i1 %67, i1 true, i1 %68
  br i1 %69, label %18, label %70, !llvm.loop !385

70:                                               ; preds = %65, %37, %12
  %71 = phi i32 [ 0, %12 ], [ %21, %37 ], [ %66, %65 ]
  ret i32 %71
}

; Function Attrs: optsize
declare ptr @modifiers_findByType(ptr noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define internal fastcc noundef float @max_fff(float noundef %0, float noundef %1, float noundef %2) unnamed_addr #19 !PGOFuncName !386 {
  %4 = tail call fastcc float @max_ff(float noundef %0, float noundef %1) #25
  %5 = tail call fastcc float @max_ff(float noundef %4, float noundef %2) #25
  ret float %5
}

; Function Attrs: mustprogress nofree nounwind optsize willreturn memory(write)
declare double @pow(double noundef, double noundef) local_unnamed_addr #16

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define internal fastcc noundef float @max_ff(float noundef %0, float noundef %1) unnamed_addr #19 !PGOFuncName !387 {
  %3 = fcmp ogt float %0, %1
  %4 = select i1 %3, float %0, float %1
  ret float %4
}

; Function Attrs: nofree noinline nounwind optsize memory(readwrite, inaccessiblemem: write) uwtable
define internal fastcc void @dynamicPaint_surfacePreStep(ptr nocapture noundef readonly %0, float noundef %1) unnamed_addr #20 !PGOFuncName !388 {
  %3 = alloca [4 x float], align 16
  %4 = alloca [4 x float], align 16
  %5 = getelementptr inbounds %struct.DynamicPaintSurface, ptr %0, i64 0, i32 3
  %6 = load ptr, ptr %5, align 8, !tbaa !74
  %7 = getelementptr inbounds %struct.PaintSurfaceData, ptr %6, i64 0, i32 4
  %8 = load i32, ptr %7, align 8, !tbaa !145
  %9 = icmp sgt i32 %8, 0
  br i1 %9, label %10, label %140

10:                                               ; preds = %2
  %11 = getelementptr inbounds %struct.DynamicPaintSurface, ptr %0, i64 0, i32 11
  %12 = getelementptr inbounds %struct.DynamicPaintSurface, ptr %0, i64 0, i32 18
  %13 = getelementptr inbounds %struct.PaintSurfaceData, ptr %6, i64 0, i32 1
  %14 = getelementptr inbounds %struct.DynamicPaintSurface, ptr %0, i64 0, i32 29
  %15 = getelementptr inbounds %struct.DynamicPaintSurface, ptr %0, i64 0, i32 28
  %16 = getelementptr inbounds %struct.DynamicPaintSurface, ptr %0, i64 0, i32 30
  %17 = getelementptr inbounds [4 x float], ptr %3, i64 0, i64 3
  %18 = getelementptr inbounds [4 x float], ptr %4, i64 0, i64 3
  br label %19

19:                                               ; preds = %10, %135
  %20 = phi i64 [ 0, %10 ], [ %136, %135 ]
  %21 = load i16, ptr %11, align 2, !tbaa !43
  %22 = icmp eq i16 %21, 0
  br i1 %22, label %23, label %119

23:                                               ; preds = %19
  %24 = load ptr, ptr %13, align 8, !tbaa !80
  %25 = getelementptr inbounds %struct.PaintPoint, ptr %24, i64 %20
  %26 = load i32, ptr %12, align 4, !tbaa !50
  %27 = and i32 %26, 512
  %28 = icmp eq i32 %27, 0
  br i1 %28, label %99, label %29

29:                                               ; preds = %23
  %30 = getelementptr inbounds %struct.PaintPoint, ptr %24, i64 %20, i32 2
  %31 = load float, ptr %30, align 4, !tbaa !233
  %32 = fcmp ult float %31, 0x3F50624DE0000000
  br i1 %32, label %88, label %33

33:                                               ; preds = %29
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %3) #27
  %34 = load i32, ptr %15, align 8, !tbaa !115
  %35 = sitofp i32 %34 to float
  %36 = and i32 %26, 32
  tail call fastcc void @value_dissolve(ptr noundef nonnull %30, float noundef %35, float noundef %1, i32 noundef %36) #25
  %37 = load float, ptr %30, align 4, !tbaa !233
  %38 = fcmp olt float %37, 0.000000e+00
  br i1 %38, label %39, label %40

39:                                               ; preds = %33
  store float 0.000000e+00, ptr %30, align 4, !tbaa !233
  br label %40

40:                                               ; preds = %39, %33
  %41 = phi float [ 0.000000e+00, %39 ], [ %37, %33 ]
  %42 = load float, ptr %16, align 8, !tbaa !389
  %43 = fcmp olt float %41, %42
  br i1 %43, label %44, label %86

44:                                               ; preds = %40
  %45 = fdiv float %41, %31
  %46 = getelementptr inbounds %struct.PaintPoint, ptr %24, i64 %20, i32 5
  %47 = load float, ptr %46, align 4, !tbaa !148
  %48 = fcmp olt float %47, 0.000000e+00
  br i1 %48, label %51, label %49

49:                                               ; preds = %44
  %50 = fcmp ogt float %47, 1.000000e+00
  br i1 %50, label %51, label %53

51:                                               ; preds = %49, %44
  %52 = phi float [ 0.000000e+00, %44 ], [ 1.000000e+00, %49 ]
  store float %52, ptr %46, align 4, !tbaa !148
  br label %53

53:                                               ; preds = %51, %49
  %54 = phi float [ %47, %49 ], [ %52, %51 ]
  %55 = getelementptr inbounds %struct.PaintPoint, ptr %24, i64 %20, i32 1
  %56 = load float, ptr %55, align 4, !tbaa !222
  %57 = fcmp olt float %56, 0.000000e+00
  br i1 %57, label %60, label %58

58:                                               ; preds = %53
  %59 = fcmp ogt float %56, 1.000000e+00
  br i1 %59, label %60, label %62

60:                                               ; preds = %58, %53
  %61 = phi float [ 0.000000e+00, %53 ], [ 1.000000e+00, %58 ]
  store float %61, ptr %55, align 4, !tbaa !222
  br label %62

62:                                               ; preds = %60, %58
  %63 = phi float [ %56, %58 ], [ %61, %60 ]
  %64 = getelementptr inbounds %struct.PaintPoint, ptr %24, i64 %20, i32 4
  call fastcc void @blendColors(ptr noundef nonnull %64, float noundef %54, ptr noundef nonnull %25, float noundef %63, ptr noundef nonnull %3) #25
  %65 = fmul float %45, %63
  store float %65, ptr %55, align 4, !tbaa !222
  %66 = load float, ptr %17, align 4, !tbaa !116
  %67 = fsub float %66, %65
  %68 = fsub float 1.000000e+00, %65
  %69 = fdiv float %67, %68
  store float %69, ptr %46, align 4, !tbaa !148
  %70 = fcmp une float %69, 0.000000e+00
  br i1 %70, label %71, label %86

71:                                               ; preds = %62, %71
  %72 = phi i64 [ %84, %71 ], [ 0, %62 ]
  %73 = getelementptr inbounds [4 x float], ptr %3, i64 0, i64 %72
  %74 = load float, ptr %73, align 4, !tbaa !116
  %75 = getelementptr inbounds [3 x float], ptr %25, i64 0, i64 %72
  %76 = load float, ptr %75, align 4, !tbaa !116
  %77 = fneg float %76
  %78 = fmul float %65, %77
  %79 = tail call float @llvm.fmuladd.f32(float %74, float %66, float %78)
  %80 = load float, ptr %46, align 4, !tbaa !148
  %81 = fmul float %80, %68
  %82 = fdiv float %79, %81
  %83 = getelementptr inbounds %struct.PaintPoint, ptr %24, i64 %20, i32 4, i64 %72
  store float %82, ptr %83, align 4, !tbaa !116
  %84 = add nuw nsw i64 %72, 1
  %85 = icmp eq i64 %84, 3
  br i1 %85, label %86, label %71, !llvm.loop !390

86:                                               ; preds = %71, %62, %40
  %87 = getelementptr inbounds %struct.PaintPoint, ptr %24, i64 %20, i32 3
  store i16 1, ptr %87, align 4, !tbaa !391
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %3) #27
  br label %99

88:                                               ; preds = %29
  %89 = getelementptr inbounds %struct.PaintPoint, ptr %24, i64 %20, i32 3
  %90 = load i16, ptr %89, align 4, !tbaa !391
  %91 = icmp sgt i16 %90, 0
  br i1 %91, label %92, label %99

92:                                               ; preds = %88
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %4) #27
  %93 = getelementptr inbounds %struct.PaintPoint, ptr %24, i64 %20, i32 4
  %94 = getelementptr inbounds %struct.PaintPoint, ptr %24, i64 %20, i32 5
  %95 = load float, ptr %94, align 4, !tbaa !148
  %96 = getelementptr inbounds %struct.PaintPoint, ptr %24, i64 %20, i32 1
  %97 = load float, ptr %96, align 4, !tbaa !222
  call fastcc void @blendColors(ptr noundef nonnull %93, float noundef %95, ptr noundef nonnull %25, float noundef %97, ptr noundef nonnull %4) #25
  call fastcc void @copy_v3_v3(ptr noundef nonnull %93, ptr noundef nonnull %4) #25
  %98 = load float, ptr %18, align 4, !tbaa !116
  store float %98, ptr %94, align 4, !tbaa !148
  store <2 x float> zeroinitializer, ptr %96, align 4, !tbaa !116
  store i16 0, ptr %89, align 4, !tbaa !391
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %4) #27
  br label %99

99:                                               ; preds = %86, %92, %88, %23
  %100 = load i32, ptr %12, align 4, !tbaa !50
  %101 = and i32 %100, 4
  %102 = icmp eq i32 %101, 0
  br i1 %102, label %135, label %103

103:                                              ; preds = %99
  %104 = getelementptr inbounds %struct.PaintPoint, ptr %24, i64 %20, i32 5
  %105 = load i32, ptr %14, align 4, !tbaa !114
  %106 = sitofp i32 %105 to float
  %107 = and i32 %100, 16
  tail call fastcc void @value_dissolve(ptr noundef nonnull %104, float noundef %106, float noundef %1, i32 noundef %107) #25
  %108 = load float, ptr %104, align 4, !tbaa !148
  %109 = fcmp olt float %108, 0.000000e+00
  br i1 %109, label %110, label %111

110:                                              ; preds = %103
  store float 0.000000e+00, ptr %104, align 4, !tbaa !148
  br label %111

111:                                              ; preds = %110, %103
  %112 = getelementptr inbounds %struct.PaintPoint, ptr %24, i64 %20, i32 1
  %113 = load i32, ptr %14, align 4, !tbaa !114
  %114 = sitofp i32 %113 to float
  %115 = load i32, ptr %12, align 4, !tbaa !50
  %116 = and i32 %115, 16
  tail call fastcc void @value_dissolve(ptr noundef nonnull %112, float noundef %114, float noundef %1, i32 noundef %116) #25
  %117 = load float, ptr %112, align 4, !tbaa !222
  %118 = fcmp olt float %117, 0.000000e+00
  br i1 %118, label %133, label %135

119:                                              ; preds = %19
  %120 = load i32, ptr %12, align 4, !tbaa !50
  %121 = and i32 %120, 4
  %122 = icmp ne i32 %121, 0
  %123 = icmp ult i16 %21, 3
  %124 = and i1 %123, %122
  br i1 %124, label %125, label %135

125:                                              ; preds = %119
  %126 = load ptr, ptr %13, align 8, !tbaa !80
  %127 = getelementptr inbounds float, ptr %126, i64 %20
  %128 = load i32, ptr %14, align 4, !tbaa !114
  %129 = sitofp i32 %128 to float
  %130 = and i32 %120, 16
  tail call fastcc void @value_dissolve(ptr noundef %127, float noundef %129, float noundef %1, i32 noundef %130) #25
  %131 = load float, ptr %127, align 4, !tbaa !116
  %132 = fcmp olt float %131, 0.000000e+00
  br i1 %132, label %133, label %135

133:                                              ; preds = %125, %111
  %134 = phi ptr [ %112, %111 ], [ %127, %125 ]
  store float 0.000000e+00, ptr %134, align 4, !tbaa !116
  br label %135

135:                                              ; preds = %133, %125, %99, %111, %119
  %136 = add nuw nsw i64 %20, 1
  %137 = load i32, ptr %7, align 8, !tbaa !145
  %138 = sext i32 %137 to i64
  %139 = icmp slt i64 %136, %138
  br i1 %139, label %19, label %140, !llvm.loop !392

140:                                              ; preds = %135, %2
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @scene_setSubframe(ptr nocapture noundef %0, float noundef %1) unnamed_addr #7 !PGOFuncName !393 {
  %3 = getelementptr inbounds %struct.Scene, ptr %0, i64 0, i32 22, i32 5
  %4 = load i32, ptr %3, align 8, !tbaa !195
  %5 = add nsw i32 %4, -1
  store i32 %5, ptr %3, align 8, !tbaa !195
  %6 = getelementptr inbounds %struct.Scene, ptr %0, i64 0, i32 22, i32 8
  store float %1, ptr %6, align 4, !tbaa !305
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc noundef i32 @subframe_updateObject(ptr noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef %3, float noundef %4) unnamed_addr #4 !PGOFuncName !394 {
  %6 = alloca %struct.ListBase, align 8
  %7 = tail call ptr @modifiers_findByType(ptr noundef %1, i32 noundef 40) #26
  %8 = icmp eq ptr %7, null
  br i1 %8, label %13, label %9

9:                                                ; preds = %5
  %10 = getelementptr inbounds %struct.DynamicPaintModifierData, ptr %7, i64 0, i32 1
  %11 = load ptr, ptr %10, align 8, !tbaa !104
  %12 = icmp eq ptr %11, null
  br i1 %12, label %13, label %103

13:                                               ; preds = %9, %5
  %14 = icmp eq i32 %3, 0
  br i1 %14, label %72, label %15

15:                                               ; preds = %13
  %16 = add nsw i32 %3, -1
  %17 = getelementptr inbounds %struct.Object, ptr %1, i64 0, i32 9
  %18 = load ptr, ptr %17, align 8, !tbaa !395
  %19 = icmp eq ptr %18, null
  br i1 %19, label %22, label %20

20:                                               ; preds = %15
  %21 = tail call fastcc i32 @subframe_updateObject(ptr noundef %0, ptr noundef nonnull %18, i32 noundef 0, i32 noundef %16, float noundef %4) #25, !range !175
  br label %22

22:                                               ; preds = %20, %15
  %23 = phi i32 [ %21, %20 ], [ 0, %15 ]
  %24 = getelementptr inbounds %struct.Object, ptr %1, i64 0, i32 10
  %25 = load ptr, ptr %24, align 8, !tbaa !396
  %26 = icmp eq ptr %25, null
  br i1 %26, label %30, label %27

27:                                               ; preds = %22
  %28 = tail call fastcc i32 @subframe_updateObject(ptr noundef %0, ptr noundef nonnull %25, i32 noundef 0, i32 noundef %16, float noundef %4) #25, !range !175
  %29 = add nuw nsw i32 %28, %23
  br label %30

30:                                               ; preds = %27, %22
  %31 = phi i32 [ %29, %27 ], [ %23, %22 ]
  %32 = icmp eq i32 %31, 0
  br i1 %32, label %38, label %33

33:                                               ; preds = %30
  %34 = getelementptr inbounds %struct.Object, ptr %1, i64 0, i32 4
  %35 = load i16, ptr %34, align 2, !tbaa !397
  %36 = add i16 %35, -5
  %37 = icmp ult i16 %36, 2
  br i1 %37, label %103, label %38

38:                                               ; preds = %33, %30
  %39 = getelementptr inbounds %struct.Object, ptr %1, i64 0, i32 106
  %40 = load ptr, ptr %39, align 8, !tbaa !44
  %41 = icmp eq ptr %40, null
  br i1 %41, label %72, label %42

42:                                               ; preds = %38, %69
  %43 = phi ptr [ %70, %69 ], [ %40, %38 ]
  %44 = call ptr @BKE_constraint_typeinfo_get(ptr noundef nonnull %43) #26
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %6) #27
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %6, i8 0, i64 16, i1 false)
  %45 = icmp eq ptr %44, null
  br i1 %45, label %69, label %46

46:                                               ; preds = %42
  %47 = getelementptr inbounds %struct.bConstraintTypeInfo, ptr %44, i64 0, i32 8
  %48 = load ptr, ptr %47, align 8, !tbaa !398
  %49 = icmp eq ptr %48, null
  br i1 %49, label %69, label %50

50:                                               ; preds = %46
  %51 = call i32 %48(ptr noundef nonnull %43, ptr noundef nonnull %6) #26
  %52 = load ptr, ptr %6, align 8, !tbaa !44
  %53 = icmp eq ptr %52, null
  br i1 %53, label %64, label %54

54:                                               ; preds = %50, %61
  %55 = phi ptr [ %62, %61 ], [ %52, %50 ]
  %56 = getelementptr inbounds %struct.bConstraintTarget, ptr %55, i64 0, i32 2
  %57 = load ptr, ptr %56, align 8, !tbaa !400
  %58 = icmp eq ptr %57, null
  br i1 %58, label %61, label %59

59:                                               ; preds = %54
  %60 = call fastcc i32 @subframe_updateObject(ptr noundef %0, ptr noundef nonnull %57, i32 noundef 0, i32 noundef %16, float noundef %4) #25, !range !175
  br label %61

61:                                               ; preds = %54, %59
  %62 = load ptr, ptr %55, align 8, !tbaa !44
  %63 = icmp eq ptr %62, null
  br i1 %63, label %64, label %54, !llvm.loop !402

64:                                               ; preds = %61, %50
  %65 = getelementptr inbounds %struct.bConstraintTypeInfo, ptr %44, i64 0, i32 9
  %66 = load ptr, ptr %65, align 8, !tbaa !403
  %67 = icmp eq ptr %66, null
  br i1 %67, label %69, label %68

68:                                               ; preds = %64
  call void %66(ptr noundef nonnull %43, ptr noundef nonnull %6, i8 noundef zeroext 0) #26
  br label %69

69:                                               ; preds = %64, %68, %46, %42
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %6) #27
  %70 = load ptr, ptr %43, align 8, !tbaa !44
  %71 = icmp eq ptr %70, null
  br i1 %71, label %72, label %42, !llvm.loop !404

72:                                               ; preds = %69, %38, %13
  %73 = getelementptr inbounds %struct.Object, ptr %1, i64 0, i32 103
  %74 = load i8, ptr %73, align 1, !tbaa !405
  %75 = or i8 %74, 7
  store i8 %75, ptr %73, align 1, !tbaa !405
  %76 = getelementptr inbounds %struct.Object, ptr %1, i64 0, i32 1
  %77 = load ptr, ptr %76, align 8, !tbaa !406
  call void @BKE_animsys_evaluate_animdata(ptr noundef %0, ptr noundef %1, ptr noundef %77, float noundef %4, i16 noundef signext 2) #26
  %78 = and i32 %2, 2
  %79 = icmp eq i32 %78, 0
  br i1 %79, label %84, label %80

80:                                               ; preds = %72
  call fastcc void @object_cacheIgnoreClear(ptr noundef nonnull %1, i32 noundef 1) #25
  %81 = load ptr, ptr @G, align 8, !tbaa !283
  %82 = getelementptr inbounds %struct.Main, ptr %81, i64 0, i32 46
  %83 = load ptr, ptr %82, align 8, !tbaa !407
  call void @BKE_object_handle_update(ptr noundef %83, ptr noundef %0, ptr noundef nonnull %1) #26
  call fastcc void @object_cacheIgnoreClear(ptr noundef nonnull %1, i32 noundef 0) #25
  br label %85

84:                                               ; preds = %72
  call void @BKE_object_where_is_calc_time(ptr noundef %0, ptr noundef nonnull %1, float noundef %4) #26
  br label %85

85:                                               ; preds = %84, %80
  %86 = getelementptr inbounds %struct.Object, ptr %1, i64 0, i32 3
  %87 = load i16, ptr %86, align 8, !tbaa !409
  %88 = icmp eq i16 %87, 2
  br i1 %88, label %89, label %95

89:                                               ; preds = %85
  %90 = getelementptr inbounds %struct.Object, ptr %1, i64 0, i32 19
  %91 = load ptr, ptr %90, align 8, !tbaa !52
  %92 = getelementptr inbounds %struct.Curve, ptr %91, i64 0, i32 1
  %93 = load ptr, ptr %92, align 8, !tbaa !410
  call void @BKE_animsys_evaluate_animdata(ptr noundef %0, ptr noundef %91, ptr noundef %93, float noundef %4, i16 noundef signext 2) #26
  %94 = load i16, ptr %86, align 8, !tbaa !409
  br label %95

95:                                               ; preds = %89, %85
  %96 = phi i16 [ %94, %89 ], [ %87, %85 ]
  %97 = icmp eq i16 %96, 25
  br i1 %97, label %98, label %103

98:                                               ; preds = %95
  %99 = getelementptr inbounds %struct.Object, ptr %1, i64 0, i32 19
  %100 = load ptr, ptr %99, align 8, !tbaa !52
  %101 = getelementptr inbounds %struct.bArmature, ptr %100, i64 0, i32 1
  %102 = load ptr, ptr %101, align 8, !tbaa !413
  call void @BKE_animsys_evaluate_animdata(ptr noundef %0, ptr noundef %100, ptr noundef %102, float noundef %4, i16 noundef signext 2) #26
  call void @BKE_pose_where_is(ptr noundef %0, ptr noundef nonnull %1) #26
  br label %103

103:                                              ; preds = %33, %95, %98, %9
  %104 = phi i32 [ 1, %9 ], [ 0, %98 ], [ 0, %95 ], [ 0, %33 ]
  ret i32 %104
}

; Function Attrs: optsize
declare float @BKE_scene_frame_get(ptr noundef) local_unnamed_addr #5

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc i32 @brush_usesMaterial(ptr nocapture noundef readonly %0, ptr noundef %1) unnamed_addr #4 !PGOFuncName !415 {
  %3 = getelementptr inbounds %struct.DynamicPaintBrushSettings, ptr %0, i64 0, i32 4
  %4 = load i32, ptr %3, align 8, !tbaa !128
  %5 = and i32 %4, 2
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %11, label %7

7:                                                ; preds = %2
  %8 = tail call zeroext i8 @BKE_scene_use_new_shading_nodes(ptr noundef %1) #26
  %9 = icmp eq i8 %8, 0
  %10 = zext i1 %9 to i32
  br label %11

11:                                               ; preds = %7, %2
  %12 = phi i32 [ 0, %2 ], [ %10, %7 ]
  ret i32 %12
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @dynamicPaint_updateBrushMaterials(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr nocapture noundef %3) unnamed_addr #4 !PGOFuncName !416 {
  %5 = getelementptr inbounds %struct.Object, ptr %0, i64 0, i32 50
  %6 = getelementptr inbounds %struct.Object, ptr %0, i64 0, i32 47
  %7 = tail call zeroext i8 @invert_m4_m4(ptr noundef nonnull %5, ptr noundef nonnull %6) #26
  %8 = getelementptr inbounds %struct.Object, ptr %0, i64 0, i32 51
  tail call void @copy_m4_m4(ptr noundef nonnull %8, ptr noundef nonnull %5) #26
  %9 = icmp eq ptr %1, null
  br i1 %9, label %10, label %43

10:                                               ; preds = %4
  %11 = getelementptr inbounds %struct.Object, ptr %0, i64 0, i32 29
  %12 = load ptr, ptr %11, align 8, !tbaa !417
  %13 = icmp eq ptr %12, null
  br i1 %13, label %43, label %14

14:                                               ; preds = %10
  %15 = getelementptr inbounds %struct.Object, ptr %0, i64 0, i32 31
  %16 = load i32, ptr %15, align 8, !tbaa !418
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %43, label %18

18:                                               ; preds = %14
  %19 = tail call ptr @give_totcolp(ptr noundef nonnull %0) #26
  %20 = load i16, ptr %19, align 2, !tbaa !139
  %21 = sext i16 %20 to i32
  %22 = icmp eq i16 %20, 0
  br i1 %22, label %41, label %23

23:                                               ; preds = %18
  %24 = load ptr, ptr @MEM_callocN, align 8, !tbaa !44
  %25 = sext i16 %20 to i64
  %26 = shl nsw i64 %25, 3
  %27 = tail call ptr %24(i64 noundef %26, ptr noundef nonnull @.str.57) #26
  %28 = getelementptr inbounds %struct.BrushMaterials, ptr %3, i64 0, i32 1
  store ptr %27, ptr %28, align 8, !tbaa !419
  %29 = icmp sgt i16 %20, 0
  br i1 %29, label %30, label %41

30:                                               ; preds = %23
  %31 = zext nneg i32 %21 to i64
  br label %32

32:                                               ; preds = %30, %32
  %33 = phi i64 [ 0, %30 ], [ %34, %32 ]
  %34 = add nuw nsw i64 %33, 1
  %35 = trunc i64 %34 to i16
  %36 = tail call ptr @give_current_material(ptr noundef %0, i16 noundef signext %35) #26
  %37 = tail call ptr @RE_init_sample_material(ptr noundef %36, ptr noundef %2) #26
  %38 = load ptr, ptr %28, align 8, !tbaa !419
  %39 = getelementptr inbounds ptr, ptr %38, i64 %33
  store ptr %37, ptr %39, align 8, !tbaa !44
  %40 = icmp eq i64 %34, %31
  br i1 %40, label %41, label %32, !llvm.loop !421

41:                                               ; preds = %32, %23, %18
  %42 = getelementptr inbounds %struct.BrushMaterials, ptr %3, i64 0, i32 2
  store i32 %21, ptr %42, align 8, !tbaa !422
  br label %45

43:                                               ; preds = %14, %10, %4
  %44 = tail call ptr @RE_init_sample_material(ptr noundef %1, ptr noundef %2) #26
  store ptr %44, ptr %3, align 8, !tbaa !423
  br label %45

45:                                               ; preds = %43, %41
  ret void
}

; Function Attrs: optsize
declare i32 @psys_check_enabled(ptr noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: optsize
declare void @BKE_animsys_evaluate_animdata(ptr noundef, ptr noundef, ptr noundef, float noundef, i16 noundef signext) local_unnamed_addr #5

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @dynamicPaint_paintParticles(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2, float noundef %3) unnamed_addr #4 !PGOFuncName !424 {
  %5 = alloca %struct.Bounds3D, align 4
  %6 = alloca %struct.KDTreeNearest, align 4
  %7 = alloca ptr, align 8
  %8 = alloca [4 x float], align 16
  %9 = alloca [3 x float], align 4
  %10 = getelementptr inbounds %struct.ParticleSystem, ptr %1, i64 0, i32 2
  %11 = load ptr, ptr %10, align 8, !tbaa !318
  %12 = getelementptr inbounds %struct.DynamicPaintSurface, ptr %0, i64 0, i32 3
  %13 = load ptr, ptr %12, align 8, !tbaa !74
  %14 = getelementptr inbounds %struct.PaintSurfaceData, ptr %13, i64 0, i32 3
  %15 = load ptr, ptr %14, align 8, !tbaa !89
  %16 = getelementptr inbounds %struct.PaintBakeData, ptr %15, i64 0, i32 7
  %17 = load ptr, ptr %16, align 8, !tbaa !98
  %18 = getelementptr inbounds %struct.DynamicPaintSurface, ptr %0, i64 0, i32 39
  %19 = load float, ptr %18, align 4, !tbaa !425
  %20 = getelementptr inbounds %struct.DynamicPaintBrushSettings, ptr %2, i64 0, i32 4
  %21 = load i32, ptr %20, align 8, !tbaa !128
  %22 = and i32 %21, 1
  %23 = icmp eq i32 %22, 0
  %24 = getelementptr inbounds %struct.ParticleSettings, ptr %11, i64 0, i32 82
  %25 = getelementptr inbounds %struct.DynamicPaintBrushSettings, ptr %2, i64 0, i32 11
  %26 = select i1 %23, ptr %25, ptr %24
  %27 = load float, ptr %26, align 4, !tbaa !116
  %28 = fmul float %19, %27
  %29 = getelementptr inbounds %struct.DynamicPaintBrushSettings, ptr %2, i64 0, i32 12
  %30 = load float, ptr %29, align 8, !tbaa !426
  %31 = fmul float %19, %30
  %32 = fadd float %28, %31
  %33 = getelementptr inbounds %struct.ParticleSettings, ptr %11, i64 0, i32 57
  %34 = load float, ptr %33, align 4, !tbaa !427
  %35 = fmul float %34, 0x3FA47AE140000000
  call void @llvm.lifetime.start.p0(i64 28, ptr nonnull %5) #27
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(28) %5, i8 0, i64 28, i1 false)
  %36 = getelementptr inbounds %struct.ParticleSystem, ptr %1, i64 0, i32 26
  %37 = load i32, ptr %36, align 8, !tbaa !428
  %38 = icmp slt i32 %37, 1
  br i1 %38, label %344, label %39

39:                                               ; preds = %4
  %40 = tail call ptr @BLI_kdtree_new(i32 noundef %37) #26
  %41 = getelementptr inbounds %struct.ParticleSystem, ptr %1, i64 0, i32 3
  %42 = load i32, ptr %36, align 8, !tbaa !428
  %43 = icmp sgt i32 %42, 0
  br i1 %43, label %44, label %101

44:                                               ; preds = %39
  %45 = load ptr, ptr %41, align 8, !tbaa !429
  %46 = getelementptr inbounds %struct.ParticleSettings, ptr %11, i64 0, i32 5
  %47 = getelementptr inbounds %struct.VolumeGrid, ptr %17, i64 0, i32 1
  br label %48

48:                                               ; preds = %44, %88
  %49 = phi i32 [ %42, %44 ], [ %89, %88 ]
  %50 = phi ptr [ %45, %44 ], [ %93, %88 ]
  %51 = phi i32 [ 0, %44 ], [ %91, %88 ]
  %52 = phi i32 [ 0, %44 ], [ %90, %88 ]
  %53 = phi i32 [ 0, %44 ], [ %92, %88 ]
  %54 = getelementptr inbounds %struct.ParticleData, ptr %50, i64 0, i32 18
  %55 = load i16, ptr %54, align 2, !tbaa !430
  switch i16 %55, label %64 [
    i16 2, label %56
    i16 1, label %60
  ]

56:                                               ; preds = %48
  %57 = load i32, ptr %46, align 8, !tbaa !433
  %58 = and i32 %57, 32
  %59 = icmp eq i32 %58, 0
  br i1 %59, label %88, label %64

60:                                               ; preds = %48
  %61 = load i32, ptr %46, align 8, !tbaa !433
  %62 = and i32 %61, 64
  %63 = icmp eq i32 %62, 0
  br i1 %63, label %88, label %64

64:                                               ; preds = %48, %56, %60
  %65 = getelementptr inbounds %struct.ParticleData, ptr %50, i64 0, i32 17
  %66 = load i16, ptr %65, align 4, !tbaa !434
  %67 = and i16 %66, 1
  %68 = icmp eq i16 %67, 0
  br i1 %68, label %69, label %88

69:                                               ; preds = %64
  %70 = load float, ptr %50, align 8, !tbaa !116
  %71 = fcmp uno float %70, 0.000000e+00
  br i1 %71, label %80, label %72

72:                                               ; preds = %69
  %73 = getelementptr inbounds [3 x float], ptr %50, i64 0, i64 1
  %74 = load float, ptr %73, align 4, !tbaa !116
  %75 = fcmp uno float %74, 0.000000e+00
  br i1 %75, label %80, label %76

76:                                               ; preds = %72
  %77 = getelementptr inbounds [3 x float], ptr %50, i64 0, i64 2
  %78 = load float, ptr %77, align 8, !tbaa !116
  %79 = fcmp uno float %78, 0.000000e+00
  br i1 %79, label %80, label %82

80:                                               ; preds = %76, %72, %69
  %81 = add nsw i32 %52, 1
  br label %88

82:                                               ; preds = %76
  %83 = tail call fastcc i32 @boundIntersectPoint(ptr noundef nonnull %47, ptr noundef nonnull %50, float noundef %32) #25, !range !175
  %84 = icmp eq i32 %83, 0
  br i1 %84, label %88, label %85

85:                                               ; preds = %82
  tail call void @BLI_kdtree_insert(ptr noundef %40, i32 noundef %53, ptr noundef nonnull %50) #26
  call fastcc void @boundInsert(ptr noundef nonnull %5, ptr noundef nonnull %50) #25
  %86 = add nsw i32 %51, 1
  %87 = load i32, ptr %36, align 8, !tbaa !428
  br label %88

88:                                               ; preds = %82, %64, %60, %56, %85, %80
  %89 = phi i32 [ %49, %56 ], [ %49, %60 ], [ %49, %64 ], [ %49, %80 ], [ %87, %85 ], [ %49, %82 ]
  %90 = phi i32 [ %52, %56 ], [ %52, %60 ], [ %52, %64 ], [ %81, %80 ], [ %52, %85 ], [ %52, %82 ]
  %91 = phi i32 [ %51, %56 ], [ %51, %60 ], [ %51, %64 ], [ %51, %80 ], [ %86, %85 ], [ %51, %82 ]
  %92 = add nuw nsw i32 %53, 1
  %93 = getelementptr inbounds %struct.ParticleData, ptr %50, i64 1
  %94 = icmp slt i32 %92, %89
  br i1 %94, label %48, label %95, !llvm.loop !435

95:                                               ; preds = %88
  %96 = icmp eq i32 %90, 0
  %97 = icmp slt i32 %91, 1
  br i1 %96, label %100, label %98

98:                                               ; preds = %95
  %99 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str)
  br i1 %97, label %101, label %102

100:                                              ; preds = %95
  br i1 %97, label %101, label %102

101:                                              ; preds = %39, %98, %100
  tail call void @BLI_kdtree_free(ptr noundef %40) #26
  br label %344

102:                                              ; preds = %98, %100
  tail call void @BLI_begin_threaded_malloc() #26
  %103 = getelementptr inbounds %struct.VolumeGrid, ptr %17, i64 0, i32 1
  %104 = call fastcc i32 @boundsIntersectDist(ptr noundef nonnull %103, ptr noundef nonnull %5, float noundef %32) #25, !range !175
  %105 = icmp eq i32 %104, 0
  br i1 %105, label %343, label %106

106:                                              ; preds = %102
  %107 = load i32, ptr %17, align 8, !tbaa !122
  %108 = getelementptr inbounds [3 x i32], ptr %17, i64 0, i64 1
  %109 = load i32, ptr %108, align 4, !tbaa !122
  %110 = mul i32 %109, %107
  %111 = getelementptr inbounds [3 x i32], ptr %17, i64 0, i64 2
  %112 = load i32, ptr %111, align 8, !tbaa !122
  %113 = mul i32 %110, %112
  tail call void @BLI_kdtree_balance(ptr noundef %40) #26
  %114 = icmp sgt i32 %113, 0
  br i1 %114, label %115, label %343

115:                                              ; preds = %106
  %116 = getelementptr inbounds %struct.VolumeGrid, ptr %17, i64 0, i32 4
  %117 = getelementptr inbounds %struct.VolumeGrid, ptr %17, i64 0, i32 2
  %118 = getelementptr inbounds %struct.VolumeGrid, ptr %17, i64 0, i32 5
  %119 = getelementptr inbounds %struct.VolumeGrid, ptr %17, i64 0, i32 3
  %120 = getelementptr inbounds %struct.PaintBakeData, ptr %15, i64 0, i32 3
  %121 = getelementptr inbounds %struct.PaintBakeData, ptr %15, i64 0, i32 1
  %122 = getelementptr inbounds %struct.KDTreeNearest, ptr %6, i64 0, i32 1
  %123 = fcmp une float %31, 0.000000e+00
  %124 = select i1 %123, float %31, float 1.000000e+00
  %125 = getelementptr inbounds %struct.DynamicPaintSurface, ptr %0, i64 0, i32 11
  %126 = getelementptr inbounds %struct.PaintBakeData, ptr %15, i64 0, i32 8
  %127 = getelementptr inbounds %struct.PaintBakeData, ptr %15, i64 0, i32 10
  %128 = getelementptr inbounds %struct.DynamicPaintBrushSettings, ptr %2, i64 0, i32 6
  %129 = zext nneg i32 %113 to i64
  %130 = load ptr, ptr %116, align 8, !tbaa !331
  br label %131

131:                                              ; preds = %115, %338
  %132 = phi ptr [ %130, %115 ], [ %339, %338 ]
  %133 = phi ptr [ %130, %115 ], [ %340, %338 ]
  %134 = phi i64 [ 0, %115 ], [ %341, %338 ]
  %135 = getelementptr inbounds i32, ptr %133, i64 %134
  %136 = load i32, ptr %135, align 4, !tbaa !122
  %137 = icmp eq i32 %136, 0
  br i1 %137, label %338, label %138

138:                                              ; preds = %131
  %139 = load ptr, ptr %117, align 8, !tbaa !328
  %140 = getelementptr inbounds %struct.Bounds3D, ptr %139, i64 %134
  %141 = call fastcc i32 @boundsIntersectDist(ptr noundef %140, ptr noundef nonnull %5, float noundef %32) #25, !range !175
  %142 = icmp eq i32 %141, 0
  br i1 %142, label %338, label %143

143:                                              ; preds = %138
  %144 = getelementptr inbounds i32, ptr %132, i64 %134
  %145 = load i32, ptr %144, align 4, !tbaa !122
  %146 = icmp sgt i32 %145, 0
  br i1 %146, label %147, label %338

147:                                              ; preds = %143, %332
  %148 = phi i32 [ %333, %332 ], [ 0, %143 ]
  %149 = load ptr, ptr %118, align 8, !tbaa !332
  %150 = load ptr, ptr %119, align 8, !tbaa !330
  %151 = getelementptr inbounds i32, ptr %150, i64 %134
  %152 = load i32, ptr %151, align 4, !tbaa !122
  %153 = add nsw i32 %152, %148
  %154 = sext i32 %153 to i64
  %155 = getelementptr inbounds i32, ptr %149, i64 %154
  %156 = load i32, ptr %155, align 4, !tbaa !122
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %6) #27
  %157 = load ptr, ptr %120, align 8, !tbaa !96
  %158 = load ptr, ptr %121, align 8, !tbaa !94
  %159 = sext i32 %156 to i64
  %160 = getelementptr inbounds i32, ptr %158, i64 %159
  %161 = load i32, ptr %160, align 4, !tbaa !122
  %162 = sext i32 %161 to i64
  %163 = getelementptr inbounds %struct.Vec3f, ptr %157, i64 %162
  %164 = call i32 @BLI_kdtree_find_nearest(ptr noundef %40, ptr noundef %163, ptr noundef nonnull %6) #26
  %165 = load float, ptr %122, align 4, !tbaa !436
  %166 = fcmp ule float %165, %32
  br i1 %166, label %167, label %190

167:                                              ; preds = %147
  %168 = load i32, ptr %20, align 8, !tbaa !128
  %169 = and i32 %168, 1
  %170 = icmp eq i32 %169, 0
  br i1 %170, label %178, label %171

171:                                              ; preds = %167
  %172 = load ptr, ptr %41, align 8, !tbaa !429
  %173 = load i32, ptr %6, align 4, !tbaa !438
  %174 = sext i32 %173 to i64
  %175 = getelementptr inbounds %struct.ParticleData, ptr %172, i64 %174, i32 13
  %176 = load float, ptr %175, align 4, !tbaa !439
  %177 = fadd float %31, %176
  br label %178

178:                                              ; preds = %167, %171
  %179 = phi float [ %32, %167 ], [ %177, %171 ]
  %180 = phi float [ %28, %167 ], [ %176, %171 ]
  %181 = fcmp olt float %165, %179
  br i1 %181, label %182, label %191

182:                                              ; preds = %178
  %183 = fsub float %165, %180
  %184 = fcmp olt float %183, 0.000000e+00
  %185 = select i1 %184, float 0.000000e+00, float %183
  %186 = fdiv float %185, %124
  %187 = fsub float 1.000000e+00, %186
  %188 = fsub float %179, %165
  %189 = load i32, ptr %6, align 4, !tbaa !438
  br label %191

190:                                              ; preds = %147
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %6) #27
  br label %332

191:                                              ; preds = %178, %182
  %192 = phi float [ 0.000000e+00, %178 ], [ %188, %182 ]
  %193 = phi float [ 0.000000e+00, %178 ], [ %187, %182 ]
  %194 = phi i32 [ -1, %178 ], [ %189, %182 ]
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %6) #27
  %195 = icmp ne i32 %169, 0
  %196 = fcmp olt float %193, 1.000000e+00
  %197 = select i1 %195, i1 %196, i1 false
  br i1 %197, label %198, label %271

198:                                              ; preds = %191
  %199 = load ptr, ptr %10, align 8, !tbaa !318
  %200 = getelementptr inbounds %struct.ParticleSettings, ptr %199, i64 0, i32 83
  %201 = load float, ptr %200, align 4, !tbaa !440
  %202 = fcmp ogt float %201, 0.000000e+00
  br i1 %202, label %203, label %271

203:                                              ; preds = %198
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %7) #27
  %204 = fsub float 1.000000e+00, %193
  %205 = fmul float %31, %204
  %206 = fneg float %193
  %207 = call float @llvm.fmuladd.f32(float %206, float %31, float %31)
  %208 = fadd float %28, %207
  %209 = load ptr, ptr %120, align 8, !tbaa !96
  %210 = load ptr, ptr %121, align 8, !tbaa !94
  %211 = getelementptr inbounds i32, ptr %210, i64 %159
  %212 = load i32, ptr %211, align 4, !tbaa !122
  %213 = sext i32 %212 to i64
  %214 = getelementptr inbounds %struct.Vec3f, ptr %209, i64 %213
  %215 = call i32 @BLI_kdtree_range_search__normal(ptr noundef %40, ptr noundef %214, ptr noundef null, ptr noundef nonnull %7, float noundef %208) #26
  %216 = icmp sgt i32 %215, 0
  %217 = load ptr, ptr %7, align 8, !tbaa !44
  br i1 %216, label %218, label %248

218:                                              ; preds = %203
  %219 = load ptr, ptr %41, align 8, !tbaa !429
  %220 = zext nneg i32 %215 to i64
  br label %221

221:                                              ; preds = %218, %242
  %222 = phi i64 [ 0, %218 ], [ %246, %242 ]
  %223 = phi float [ %208, %218 ], [ %245, %242 ]
  %224 = phi float [ %205, %218 ], [ %244, %242 ]
  %225 = phi i32 [ %194, %218 ], [ %243, %242 ]
  %226 = getelementptr inbounds %struct.KDTreeNearest, ptr %217, i64 %222
  %227 = load i32, ptr %226, align 4, !tbaa !438
  %228 = sext i32 %227 to i64
  %229 = getelementptr inbounds %struct.KDTreeNearest, ptr %217, i64 %222, i32 1
  %230 = load float, ptr %229, align 4, !tbaa !436
  %231 = getelementptr inbounds %struct.ParticleData, ptr %219, i64 %228, i32 13
  %232 = load float, ptr %231, align 4, !tbaa !439
  %233 = fadd float %31, %232
  %234 = fcmp ogt float %230, %233
  br i1 %234, label %242, label %235

235:                                              ; preds = %221
  %236 = fsub float %230, %232
  %237 = fcmp olt float %224, %236
  br i1 %237, label %242, label %238

238:                                              ; preds = %235
  %239 = fcmp olt float %236, 0.000000e+00
  br i1 %239, label %240, label %242

240:                                              ; preds = %238
  %241 = load i16, ptr %125, align 2, !tbaa !43
  switch i16 %241, label %250 [
    i16 1, label %242
    i16 3, label %242
  ]

242:                                              ; preds = %238, %240, %240, %221, %235
  %243 = phi i32 [ %225, %235 ], [ %225, %221 ], [ %227, %240 ], [ %227, %240 ], [ %227, %238 ]
  %244 = phi float [ %224, %235 ], [ %224, %221 ], [ %236, %240 ], [ %236, %240 ], [ %236, %238 ]
  %245 = phi float [ %223, %235 ], [ %223, %221 ], [ %230, %240 ], [ %230, %240 ], [ %230, %238 ]
  %246 = add nuw nsw i64 %222, 1
  %247 = icmp eq i64 %246, %220
  br i1 %247, label %250, label %221, !llvm.loop !441

248:                                              ; preds = %203
  %249 = icmp eq ptr %217, null
  br i1 %249, label %255, label %250

250:                                              ; preds = %240, %242, %248
  %251 = phi float [ %208, %248 ], [ %245, %242 ], [ %230, %240 ]
  %252 = phi float [ %205, %248 ], [ %244, %242 ], [ %236, %240 ]
  %253 = phi i32 [ %194, %248 ], [ %243, %242 ], [ %227, %240 ]
  %254 = load ptr, ptr @MEM_freeN, align 8, !tbaa !44
  call void %254(ptr noundef nonnull %217) #26
  br label %255

255:                                              ; preds = %250, %248
  %256 = phi float [ %251, %250 ], [ %208, %248 ]
  %257 = phi float [ %252, %250 ], [ %205, %248 ]
  %258 = phi i32 [ %253, %250 ], [ %194, %248 ]
  %259 = fadd float %31, %179
  %260 = fsub float %259, %256
  %261 = fcmp ogt float %260, %192
  %262 = fsub float %179, %256
  %263 = select i1 %261, float %262, float %192
  %264 = select i1 %261, float %259, float %179
  %265 = fcmp olt float %257, 0.000000e+00
  %266 = select i1 %265, float 0.000000e+00, float %257
  %267 = fdiv float %266, %124
  %268 = fsub float 1.000000e+00, %267
  %269 = fcmp ogt float %268, %193
  %270 = select i1 %269, float %268, float %193
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %7) #27
  br label %271

271:                                              ; preds = %255, %198, %191
  %272 = phi float [ %263, %255 ], [ %192, %198 ], [ %192, %191 ]
  %273 = phi float [ %264, %255 ], [ %179, %198 ], [ %179, %191 ]
  %274 = phi float [ %270, %255 ], [ %193, %198 ], [ %193, %191 ]
  %275 = phi i32 [ %258, %255 ], [ %194, %198 ], [ %194, %191 ]
  %276 = fcmp ogt float %274, 0x3F50624DE0000000
  br i1 %276, label %277, label %332

277:                                              ; preds = %271
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %8) #27
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %8, i8 0, i64 16, i1 false)
  %278 = load i32, ptr %20, align 8, !tbaa !128
  %279 = and i32 %278, 3840
  %280 = icmp ne i32 %279, 0
  %281 = icmp ne i32 %275, -1
  %282 = select i1 %280, i1 %281, i1 false
  br i1 %282, label %283, label %314

283:                                              ; preds = %277
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %9) #27
  %284 = load ptr, ptr %41, align 8, !tbaa !429
  %285 = sext i32 %275 to i64
  %286 = getelementptr inbounds %struct.ParticleData, ptr %284, i64 %285, i32 0, i32 1
  call fastcc void @mul_v3_v3fl(ptr noundef nonnull %9, ptr noundef nonnull %286, float noundef %35) #25
  %287 = load ptr, ptr %126, align 8, !tbaa !100
  %288 = icmp eq ptr %287, null
  br i1 %288, label %291, label %289

289:                                              ; preds = %283
  %290 = getelementptr inbounds %struct.Vec3f, ptr %287, i64 %159
  call fastcc void @sub_v3_v3(ptr noundef nonnull %9, ptr noundef nonnull %290) #25
  br label %291

291:                                              ; preds = %289, %283
  %292 = call fastcc float @len_v3(ptr noundef nonnull %9) #25
  %293 = load i16, ptr %125, align 2, !tbaa !43
  %294 = icmp eq i16 %293, 0
  br i1 %294, label %295, label %313

295:                                              ; preds = %291
  %296 = load i32, ptr %20, align 8, !tbaa !128
  %297 = and i32 %296, 256
  %298 = icmp eq i32 %297, 0
  br i1 %298, label %313, label %299

299:                                              ; preds = %295
  %300 = load ptr, ptr %127, align 8, !tbaa !317
  %301 = icmp eq ptr %300, null
  br i1 %301, label %313, label %302

302:                                              ; preds = %299
  %303 = shl nsw i32 %156, 2
  %304 = sext i32 %303 to i64
  %305 = getelementptr inbounds float, ptr %300, i64 %304
  call fastcc void @copy_v3_v3(ptr noundef nonnull %305, ptr noundef nonnull %9) #25
  %306 = load ptr, ptr %127, align 8, !tbaa !317
  %307 = getelementptr inbounds float, ptr %306, i64 %304
  %308 = fdiv float 1.000000e+00, %292
  call fastcc void @mul_v3_fl(ptr noundef %307, float noundef %308) #25
  %309 = load ptr, ptr %127, align 8, !tbaa !317
  %310 = or disjoint i32 %303, 3
  %311 = sext i32 %310 to i64
  %312 = getelementptr inbounds float, ptr %309, i64 %311
  store float %292, ptr %312, align 4, !tbaa !116
  br label %313

313:                                              ; preds = %302, %299, %295, %291
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %9) #27
  br label %314

314:                                              ; preds = %313, %277
  %315 = phi float [ %292, %313 ], [ 0.000000e+00, %277 ]
  %316 = load i16, ptr %125, align 2, !tbaa !43
  switch i16 %316, label %330 [
    i16 0, label %317
    i16 1, label %318
    i16 3, label %318
  ]

317:                                              ; preds = %314
  call fastcc void @copy_v3_v3(ptr noundef nonnull %8, ptr noundef nonnull %128) #25
  br label %330

318:                                              ; preds = %314, %314
  %319 = fdiv float %272, %273
  %320 = call float @sqrtf(float noundef %319) #26
  %321 = fsub float 1.000000e+00, %320
  %322 = fmul float %273, %321
  %323 = fsub float %273, %322
  %324 = load ptr, ptr %15, align 8, !tbaa !90
  %325 = getelementptr inbounds %struct.PaintBakeNormal, ptr %324, i64 %159, i32 1
  %326 = load float, ptr %325, align 4, !tbaa !301
  %327 = fdiv float %323, %326
  %328 = fcmp olt float %327, 0.000000e+00
  br i1 %328, label %329, label %330

329:                                              ; preds = %318
  br label %330

330:                                              ; preds = %314, %329, %318, %317
  %331 = phi float [ 0.000000e+00, %317 ], [ 0.000000e+00, %329 ], [ %327, %318 ], [ 0.000000e+00, %314 ]
  call fastcc void @dynamicPaint_updatePointData(ptr noundef nonnull %0, i32 noundef %156, ptr noundef nonnull %2, ptr noundef nonnull %8, float noundef %274, float noundef %331, float noundef %315, float noundef %3) #25
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %8) #27
  br label %332

332:                                              ; preds = %190, %271, %330
  %333 = add nuw nsw i32 %148, 1
  %334 = load ptr, ptr %116, align 8, !tbaa !331
  %335 = getelementptr inbounds i32, ptr %334, i64 %134
  %336 = load i32, ptr %335, align 4, !tbaa !122
  %337 = icmp slt i32 %333, %336
  br i1 %337, label %147, label %338, !llvm.loop !442

338:                                              ; preds = %332, %143, %131, %138
  %339 = phi ptr [ %132, %143 ], [ %132, %131 ], [ %132, %138 ], [ %334, %332 ]
  %340 = phi ptr [ %132, %143 ], [ %133, %131 ], [ %133, %138 ], [ %334, %332 ]
  %341 = add nuw nsw i64 %134, 1
  %342 = icmp eq i64 %341, %129
  br i1 %342, label %343, label %131, !llvm.loop !443

343:                                              ; preds = %338, %106, %102
  call void @BLI_end_threaded_malloc() #26
  call void @BLI_kdtree_free(ptr noundef %40) #26
  br label %344

344:                                              ; preds = %4, %343, %101
  call void @llvm.lifetime.end.p0(i64 28, ptr nonnull %5) #27
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @dynamicPaint_paintSinglePoint(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2, ptr noundef %3, ptr nocapture noundef readonly %4, ptr noundef %5, float noundef %6) unnamed_addr #4 !PGOFuncName !444 {
  %8 = alloca %struct.Vec3f, align 4
  %9 = alloca [4 x float], align 16
  %10 = alloca [3 x float], align 8
  %11 = alloca float, align 4
  %12 = alloca [3 x float], align 4
  %13 = alloca [3 x float], align 4
  %14 = getelementptr inbounds %struct.DynamicPaintBrushSettings, ptr %2, i64 0, i32 13
  %15 = load float, ptr %14, align 4, !tbaa !445
  %16 = getelementptr inbounds %struct.DynamicPaintSurface, ptr %0, i64 0, i32 39
  %17 = load float, ptr %16, align 4, !tbaa !425
  %18 = fmul float %15, %17
  %19 = getelementptr inbounds %struct.DynamicPaintSurface, ptr %0, i64 0, i32 3
  %20 = load ptr, ptr %19, align 8, !tbaa !74
  %21 = getelementptr inbounds %struct.PaintSurfaceData, ptr %20, i64 0, i32 3
  %22 = load ptr, ptr %21, align 8, !tbaa !89
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %8) #27
  %23 = getelementptr inbounds %struct.DynamicPaintBrushSettings, ptr %2, i64 0, i32 4
  %24 = load i32, ptr %23, align 8, !tbaa !128
  %25 = and i32 %24, 3840
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %28, label %27

27:                                               ; preds = %7
  call fastcc void @dynamicPaint_brushObjectCalculateVelocity(ptr noundef %5, ptr noundef %3, ptr noundef nonnull %8, float noundef %6) #25
  br label %28

28:                                               ; preds = %27, %7
  %29 = getelementptr inbounds %struct.PaintSurfaceData, ptr %20, i64 0, i32 4
  %30 = load i32, ptr %29, align 8, !tbaa !145
  %31 = icmp sgt i32 %30, 0
  br i1 %31, label %32, label %170

32:                                               ; preds = %28
  %33 = getelementptr inbounds %struct.PaintBakeData, ptr %22, i64 0, i32 3
  %34 = getelementptr inbounds %struct.PaintBakeData, ptr %22, i64 0, i32 1
  %35 = getelementptr inbounds %struct.DynamicPaintBrushSettings, ptr %2, i64 0, i32 16
  %36 = getelementptr inbounds %struct.DynamicPaintBrushSettings, ptr %2, i64 0, i32 1
  %37 = getelementptr inbounds %struct.Object, ptr %3, i64 0, i32 47
  %38 = getelementptr inbounds %struct.DynamicPaintBrushSettings, ptr %2, i64 0, i32 14
  %39 = getelementptr inbounds [4 x float], ptr %9, i64 0, i64 3
  %40 = getelementptr inbounds %struct.PaintBakeData, ptr %22, i64 0, i32 8
  %41 = getelementptr inbounds %struct.DynamicPaintSurface, ptr %0, i64 0, i32 11
  %42 = getelementptr inbounds %struct.PaintBakeData, ptr %22, i64 0, i32 10
  %43 = getelementptr inbounds %struct.DynamicPaintBrushSettings, ptr %2, i64 0, i32 6
  %44 = getelementptr inbounds %struct.DynamicPaintBrushSettings, ptr %2, i64 0, i32 8
  %45 = getelementptr inbounds [3 x float], ptr %10, i64 0, i64 2
  %46 = getelementptr inbounds [4 x float], ptr %9, i64 0, i64 2
  br label %47

47:                                               ; preds = %32, %165
  %48 = phi i64 [ 0, %32 ], [ %166, %165 ]
  %49 = load ptr, ptr %33, align 8, !tbaa !96
  %50 = load ptr, ptr %34, align 8, !tbaa !94
  %51 = getelementptr inbounds i32, ptr %50, i64 %48
  %52 = load i32, ptr %51, align 4, !tbaa !122
  %53 = sext i32 %52 to i64
  %54 = getelementptr inbounds %struct.Vec3f, ptr %49, i64 %53
  %55 = call fastcc float @len_v3v3(ptr noundef %1, ptr noundef %54) #25
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %9) #27
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %9, i8 0, i64 16, i1 false)
  %56 = fcmp ogt float %55, %18
  br i1 %56, label %165, label %57

57:                                               ; preds = %47
  %58 = load i16, ptr %35, align 8, !tbaa !131
  %59 = add i16 %58, -1
  %60 = icmp ult i16 %59, 2
  br i1 %60, label %61, label %69

61:                                               ; preds = %57
  %62 = fdiv float %55, %18
  %63 = fsub float 1.000000e+00, %62
  %64 = fcmp olt float %63, 0.000000e+00
  br i1 %64, label %165, label %65

65:                                               ; preds = %61
  %66 = fcmp ogt float %63, 1.000000e+00
  br i1 %66, label %69, label %67

67:                                               ; preds = %65
  %68 = fcmp ult float %63, 0x3F50624DE0000000
  br i1 %68, label %165, label %69

69:                                               ; preds = %65, %57, %67
  %70 = phi float [ %63, %67 ], [ 1.000000e+00, %57 ], [ 1.000000e+00, %65 ]
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %10) #27
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(12) %10, i8 0, i64 12, i1 false)
  %71 = call fastcc i32 @brush_usesMaterial(ptr noundef nonnull %2, ptr noundef %5) #25, !range !175
  %72 = icmp eq i32 %71, 0
  br i1 %72, label %85, label %73

73:                                               ; preds = %69
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %11) #27
  store float 1.000000e+00, ptr %11, align 4, !tbaa !116
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %12) #27
  %74 = load ptr, ptr %36, align 8, !tbaa !67
  %75 = getelementptr inbounds %struct.DerivedMesh, ptr %74, i64 0, i32 31
  %76 = load ptr, ptr %75, align 8, !tbaa !246
  %77 = call ptr %76(ptr noundef %74) #26
  call fastcc void @copy_v3_v3(ptr noundef nonnull %12, ptr noundef %77) #25
  call void @mul_m4_v3(ptr noundef nonnull %37, ptr noundef nonnull %12) #26
  %78 = load ptr, ptr %33, align 8, !tbaa !96
  %79 = load ptr, ptr %34, align 8, !tbaa !94
  %80 = getelementptr inbounds i32, ptr %79, i64 %48
  %81 = load i32, ptr %80, align 4, !tbaa !122
  %82 = sext i32 %81 to i64
  %83 = getelementptr inbounds %struct.Vec3f, ptr %78, i64 %82
  %84 = load ptr, ptr %36, align 8, !tbaa !67
  call fastcc void @dynamicPaint_doMaterialTex(ptr noundef %4, ptr noundef nonnull %10, ptr noundef nonnull %11, ptr noundef %3, ptr noundef %83, ptr noundef nonnull %12, i32 noundef 0, i16 noundef signext 0, ptr noundef %84) #25
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %12) #27
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %11) #27
  br label %85

85:                                               ; preds = %73, %69
  %86 = load i16, ptr %35, align 8, !tbaa !131
  %87 = icmp eq i16 %86, 2
  br i1 %87, label %88, label %95

88:                                               ; preds = %85
  %89 = load ptr, ptr %38, align 8, !tbaa !72
  %90 = fsub float 1.000000e+00, %70
  %91 = call zeroext i8 @do_colorband(ptr noundef %89, float noundef %90, ptr noundef nonnull %9) #26
  %92 = icmp eq i8 %91, 0
  br i1 %92, label %95, label %93

93:                                               ; preds = %88
  %94 = load float, ptr %39, align 4, !tbaa !116
  br label %95

95:                                               ; preds = %93, %88, %85
  %96 = phi float [ %94, %93 ], [ %70, %88 ], [ %70, %85 ]
  %97 = load i32, ptr %23, align 8, !tbaa !128
  %98 = and i32 %97, 3840
  %99 = icmp eq i32 %98, 0
  br i1 %99, label %130, label %100

100:                                              ; preds = %95
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %13) #27
  %101 = load ptr, ptr %40, align 8, !tbaa !100
  %102 = icmp eq ptr %101, null
  br i1 %102, label %105, label %103

103:                                              ; preds = %100
  %104 = getelementptr inbounds %struct.Vec3f, ptr %101, i64 %48
  call fastcc void @sub_v3_v3v3(ptr noundef nonnull %13, ptr noundef nonnull %8, ptr noundef nonnull %104) #25
  br label %106

105:                                              ; preds = %100
  call fastcc void @copy_v3_v3(ptr noundef nonnull %13, ptr noundef nonnull %8) #25
  br label %106

106:                                              ; preds = %105, %103
  %107 = call fastcc float @len_v3(ptr noundef nonnull %13) #25
  %108 = load i16, ptr %41, align 2, !tbaa !43
  %109 = icmp eq i16 %108, 0
  br i1 %109, label %110, label %129

110:                                              ; preds = %106
  %111 = load i32, ptr %23, align 8, !tbaa !128
  %112 = and i32 %111, 256
  %113 = icmp eq i32 %112, 0
  br i1 %113, label %129, label %114

114:                                              ; preds = %110
  %115 = load ptr, ptr %42, align 8, !tbaa !317
  %116 = icmp eq ptr %115, null
  br i1 %116, label %129, label %117

117:                                              ; preds = %114
  %118 = trunc i64 %48 to i32
  %119 = shl nsw i32 %118, 2
  %120 = zext nneg i32 %119 to i64
  %121 = getelementptr inbounds float, ptr %115, i64 %120
  call fastcc void @copy_v3_v3(ptr noundef nonnull %121, ptr noundef nonnull %13) #25
  %122 = load ptr, ptr %42, align 8, !tbaa !317
  %123 = getelementptr inbounds float, ptr %122, i64 %120
  %124 = fdiv float 1.000000e+00, %107
  call fastcc void @mul_v3_fl(ptr noundef %123, float noundef %124) #25
  %125 = load ptr, ptr %42, align 8, !tbaa !317
  %126 = or disjoint i32 %119, 3
  %127 = zext nneg i32 %126 to i64
  %128 = getelementptr inbounds float, ptr %125, i64 %127
  store float %107, ptr %128, align 4, !tbaa !116
  br label %129

129:                                              ; preds = %117, %114, %110, %106
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %13) #27
  br label %130

130:                                              ; preds = %129, %95
  %131 = phi float [ %107, %129 ], [ 0.000000e+00, %95 ]
  %132 = load i16, ptr %41, align 2, !tbaa !43
  switch i16 %132, label %162 [
    i16 0, label %133
    i16 1, label %149
    i16 3, label %149
  ]

133:                                              ; preds = %130
  %134 = load i16, ptr %35, align 8, !tbaa !131
  %135 = icmp eq i16 %134, 2
  br i1 %135, label %136, label %143

136:                                              ; preds = %133
  %137 = load i32, ptr %23, align 8, !tbaa !128
  %138 = and i32 %137, 16
  %139 = icmp eq i32 %138, 0
  br i1 %139, label %140, label %143

140:                                              ; preds = %136
  %141 = load <2 x float>, ptr %9, align 16, !tbaa !116
  store <2 x float> %141, ptr %10, align 8, !tbaa !116
  %142 = load float, ptr %46, align 8, !tbaa !116
  store float %142, ptr %45, align 8, !tbaa !116
  br label %162

143:                                              ; preds = %136, %133
  %144 = call fastcc i32 @brush_usesMaterial(ptr noundef nonnull %2, ptr noundef %5) #25, !range !175
  %145 = icmp eq i32 %144, 0
  br i1 %145, label %146, label %162

146:                                              ; preds = %143
  %147 = load <2 x float>, ptr %43, align 8, !tbaa !116
  store <2 x float> %147, ptr %10, align 8, !tbaa !116
  %148 = load float, ptr %44, align 8, !tbaa !446
  store float %148, ptr %45, align 8, !tbaa !116
  br label %162

149:                                              ; preds = %130, %130
  %150 = fsub float %18, %55
  %151 = fdiv float %150, %18
  %152 = call float @sqrtf(float noundef %151) #26
  %153 = fsub float 1.000000e+00, %152
  %154 = fmul float %18, %153
  %155 = fsub float %18, %154
  %156 = load ptr, ptr %22, align 8, !tbaa !90
  %157 = getelementptr inbounds %struct.PaintBakeNormal, ptr %156, i64 %48, i32 1
  %158 = load float, ptr %157, align 4, !tbaa !301
  %159 = fdiv float %155, %158
  %160 = fcmp olt float %159, 0.000000e+00
  %161 = select i1 %160, float 0.000000e+00, float %159
  br label %162

162:                                              ; preds = %130, %149, %140, %146, %143
  %163 = phi float [ 0.000000e+00, %143 ], [ 0.000000e+00, %146 ], [ 0.000000e+00, %140 ], [ %161, %149 ], [ 0.000000e+00, %130 ]
  %164 = trunc i64 %48 to i32
  call fastcc void @dynamicPaint_updatePointData(ptr noundef nonnull %0, i32 noundef %164, ptr noundef nonnull %2, ptr noundef nonnull %10, float noundef %96, float noundef %163, float noundef %131, float noundef %6) #25
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %10) #27
  br label %165

165:                                              ; preds = %61, %67, %162, %47
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %9) #27
  %166 = add nuw nsw i64 %48, 1
  %167 = load i32, ptr %29, align 8, !tbaa !145
  %168 = sext i32 %167 to i64
  %169 = icmp slt i64 %166, %168
  br i1 %169, label %47, label %170, !llvm.loop !447

170:                                              ; preds = %165, %28
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %8) #27
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @dynamicPaint_paintMesh(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, ptr noundef %2, ptr nocapture noundef readonly %3, ptr noundef %4, float noundef %5) unnamed_addr #4 !PGOFuncName !448 {
  %7 = alloca ptr, align 8
  %8 = alloca %struct.BVHTreeFromMesh, align 8
  %9 = alloca [3 x float], align 4
  %10 = alloca %struct.Bounds3D, align 4
  %11 = alloca [3 x float], align 4
  %12 = alloca [3 x float], align 8
  %13 = alloca [3 x float], align 4
  %14 = alloca [3 x float], align 4
  %15 = alloca %struct.BVHTreeRayHit, align 4
  %16 = alloca %struct.BVHTreeNearest, align 4
  %17 = alloca [4 x float], align 16
  %18 = alloca [3 x float], align 4
  %19 = alloca [3 x float], align 4
  %20 = alloca [3 x float], align 4
  %21 = alloca [4 x float], align 16
  %22 = alloca [3 x float], align 4
  %23 = alloca [3 x float], align 4
  %24 = alloca [3 x float], align 8
  %25 = alloca float, align 4
  %26 = getelementptr inbounds %struct.DynamicPaintSurface, ptr %0, i64 0, i32 3
  %27 = load ptr, ptr %26, align 8, !tbaa !74
  %28 = getelementptr inbounds %struct.PaintSurfaceData, ptr %27, i64 0, i32 3
  %29 = load ptr, ptr %28, align 8, !tbaa !89
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %7) #27
  store ptr null, ptr %7, align 8, !tbaa !44
  %30 = getelementptr inbounds %struct.DynamicPaintBrushSettings, ptr %1, i64 0, i32 4
  %31 = load i32, ptr %30, align 8, !tbaa !128
  %32 = and i32 %31, 3840
  %33 = icmp eq i32 %32, 0
  br i1 %33, label %35, label %34

34:                                               ; preds = %6
  call fastcc void @dynamicPaint_brushMeshCalculateVelocity(ptr noundef %4, ptr noundef %2, ptr noundef nonnull %1, ptr noundef nonnull %7, float noundef %5) #25
  br label %35

35:                                               ; preds = %34, %6
  %36 = getelementptr inbounds %struct.DynamicPaintBrushSettings, ptr %1, i64 0, i32 1
  %37 = load ptr, ptr %36, align 8, !tbaa !67
  %38 = icmp eq ptr %37, null
  br i1 %38, label %597, label %39

39:                                               ; preds = %35
  call void @llvm.lifetime.start.p0(i64 72, ptr nonnull %8) #27
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %8, i8 0, i64 72, i1 false)
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %9) #27
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %9, i8 0, i64 12, i1 false)
  %40 = getelementptr inbounds %struct.DynamicPaintBrushSettings, ptr %1, i64 0, i32 13
  %41 = load float, ptr %40, align 4, !tbaa !445
  %42 = getelementptr inbounds %struct.DynamicPaintSurface, ptr %0, i64 0, i32 39
  %43 = load float, ptr %42, align 4, !tbaa !425
  %44 = fmul float %41, %43
  call void @llvm.lifetime.start.p0(i64 28, ptr nonnull %10) #27
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(28) %10, i8 0, i64 28, i1 false)
  %45 = getelementptr inbounds %struct.PaintBakeData, ptr %29, i64 0, i32 7
  %46 = load ptr, ptr %45, align 8, !tbaa !98
  %47 = tail call ptr @CDDM_copy(ptr noundef nonnull %37) #26
  %48 = getelementptr inbounds %struct.DerivedMesh, ptr %47, i64 0, i32 31
  %49 = load ptr, ptr %48, align 8, !tbaa !246
  %50 = tail call ptr %49(ptr noundef %47) #26
  %51 = getelementptr inbounds %struct.DerivedMesh, ptr %47, i64 0, i32 33
  %52 = load ptr, ptr %51, align 8, !tbaa !151
  %53 = tail call ptr %52(ptr noundef %47) #26
  %54 = getelementptr inbounds %struct.DerivedMesh, ptr %47, i64 0, i32 23
  %55 = load ptr, ptr %54, align 8, !tbaa !172
  %56 = tail call i32 %55(ptr noundef %47) #26
  %57 = icmp sgt i32 %56, 0
  br i1 %57, label %58, label %76

58:                                               ; preds = %39
  %59 = getelementptr inbounds %struct.Object, ptr %2, i64 0, i32 47
  %60 = getelementptr inbounds %struct.DynamicPaintBrushSettings, ptr %1, i64 0, i32 5
  %61 = zext nneg i32 %56 to i64
  br label %62

62:                                               ; preds = %58, %73
  %63 = phi i64 [ 0, %58 ], [ %74, %73 ]
  %64 = getelementptr inbounds %struct.MVert, ptr %50, i64 %63
  call void @mul_m4_v3(ptr noundef nonnull %59, ptr noundef %64) #26
  call fastcc void @boundInsert(ptr noundef nonnull %10, ptr noundef %64) #25
  %65 = load i32, ptr %30, align 8, !tbaa !128
  %66 = and i32 %65, 32
  %67 = icmp eq i32 %66, 0
  br i1 %67, label %73, label %68

68:                                               ; preds = %62
  %69 = load i32, ptr %60, align 4, !tbaa !129
  %70 = icmp eq i32 %69, 0
  br i1 %70, label %73, label %71

71:                                               ; preds = %68
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %11) #27
  %72 = getelementptr inbounds %struct.MVert, ptr %50, i64 %63, i32 1
  call fastcc void @normal_short_to_float_v3(ptr noundef nonnull %11, ptr noundef nonnull %72) #25
  call void @mul_mat3_m4_v3(ptr noundef nonnull %59, ptr noundef nonnull %11) #26
  call fastcc void @normalize_v3(ptr noundef nonnull %11) #25
  call fastcc void @add_v3_v3(ptr noundef nonnull %9, ptr noundef nonnull %11) #25
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %11) #27
  br label %73

73:                                               ; preds = %62, %68, %71
  %74 = add nuw nsw i64 %63, 1
  %75 = icmp eq i64 %74, %61
  br i1 %75, label %76, label %62, !llvm.loop !449

76:                                               ; preds = %73, %39
  %77 = load i32, ptr %30, align 8, !tbaa !128
  %78 = and i32 %77, 32
  %79 = icmp eq i32 %78, 0
  br i1 %79, label %104, label %80

80:                                               ; preds = %76
  %81 = getelementptr inbounds %struct.DynamicPaintBrushSettings, ptr %1, i64 0, i32 5
  %82 = load i32, ptr %81, align 4, !tbaa !129
  %83 = icmp eq i32 %82, 0
  br i1 %83, label %104, label %84

84:                                               ; preds = %80
  %85 = sitofp i32 %56 to float
  %86 = fdiv float 1.000000e+00, %85
  call fastcc void @mul_v3_fl(ptr noundef nonnull %9, float noundef %86) #25
  %87 = load float, ptr %9, align 4
  %88 = getelementptr inbounds [3 x float], ptr %9, i64 0, i64 1
  %89 = load float, ptr %88, align 4
  %90 = fcmp olt float %87, %89
  %91 = select i1 %90, float %87, float %89
  %92 = getelementptr inbounds [3 x float], ptr %9, i64 0, i64 2
  %93 = load float, ptr %92, align 4, !tbaa !116
  %94 = fcmp olt float %91, %93
  br i1 %94, label %95, label %100

95:                                               ; preds = %84
  br i1 %90, label %96, label %98

96:                                               ; preds = %95
  %97 = fcmp une float %87, 0.000000e+00
  br i1 %97, label %103, label %102

98:                                               ; preds = %95
  %99 = fcmp une float %89, 0.000000e+00
  br i1 %99, label %103, label %102

100:                                              ; preds = %84
  %101 = fcmp une float %93, 0.000000e+00
  br i1 %101, label %103, label %102

102:                                              ; preds = %100, %98, %96
  store float 1.000000e+00, ptr %92, align 4, !tbaa !116
  br label %104

103:                                              ; preds = %100, %98, %96
  call fastcc void @normalize_v3(ptr noundef nonnull %9) #25
  br label %104

104:                                              ; preds = %102, %103, %80, %76
  %105 = icmp eq ptr %46, null
  br i1 %105, label %590, label %106

106:                                              ; preds = %104
  %107 = getelementptr inbounds %struct.VolumeGrid, ptr %46, i64 0, i32 1
  %108 = call fastcc i32 @meshBrush_boundsIntersect(ptr noundef nonnull %107, ptr noundef nonnull %10, ptr noundef nonnull %1, float noundef %44) #25, !range !175
  %109 = icmp eq i32 %108, 0
  br i1 %109, label %590, label %110

110:                                              ; preds = %106
  %111 = call ptr @bvhtree_from_mesh_faces(ptr noundef nonnull %8, ptr noundef %47, float noundef 0.000000e+00, i32 noundef 4, i32 noundef 8) #26
  %112 = icmp eq ptr %111, null
  br i1 %112, label %590, label %113

113:                                              ; preds = %110
  %114 = load i32, ptr %46, align 8, !tbaa !122
  %115 = getelementptr inbounds [3 x i32], ptr %46, i64 0, i64 1
  %116 = load i32, ptr %115, align 4, !tbaa !122
  %117 = mul nsw i32 %116, %114
  %118 = getelementptr inbounds [3 x i32], ptr %46, i64 0, i64 2
  %119 = load i32, ptr %118, align 8, !tbaa !122
  %120 = mul nsw i32 %117, %119
  %121 = icmp sgt i32 %120, 0
  br i1 %121, label %122, label %590

122:                                              ; preds = %113
  %123 = getelementptr inbounds %struct.VolumeGrid, ptr %46, i64 0, i32 4
  %124 = getelementptr inbounds %struct.VolumeGrid, ptr %46, i64 0, i32 2
  %125 = getelementptr inbounds %struct.VolumeGrid, ptr %46, i64 0, i32 5
  %126 = getelementptr inbounds %struct.VolumeGrid, ptr %46, i64 0, i32 3
  %127 = getelementptr inbounds %struct.PaintBakeData, ptr %29, i64 0, i32 2
  %128 = getelementptr inbounds %struct.DynamicPaintSurface, ptr %0, i64 0, i32 10
  %129 = getelementptr inbounds %struct.DynamicPaintBrushSettings, ptr %1, i64 0, i32 5
  %130 = getelementptr inbounds %struct.PaintBakeData, ptr %29, i64 0, i32 3
  %131 = getelementptr inbounds %struct.PaintBakeData, ptr %29, i64 0, i32 1
  %132 = getelementptr inbounds %struct.BVHTreeRayHit, ptr %15, i64 0, i32 3
  %133 = fmul float %44, %44
  %134 = getelementptr inbounds %struct.BVHTreeNearest, ptr %16, i64 0, i32 3
  %135 = getelementptr inbounds %struct.BVHTreeRayHit, ptr %15, i64 0, i32 2
  %136 = getelementptr inbounds [3 x float], ptr %14, i64 0, i64 1
  %137 = getelementptr inbounds %struct.BVHTreeRayHit, ptr %15, i64 0, i32 2, i64 1
  %138 = getelementptr inbounds [3 x float], ptr %14, i64 0, i64 2
  %139 = getelementptr inbounds %struct.BVHTreeRayHit, ptr %15, i64 0, i32 2, i64 2
  %140 = getelementptr inbounds %struct.DynamicPaintBrushSettings, ptr %1, i64 0, i32 18
  %141 = getelementptr inbounds [3 x float], ptr %20, i64 0, i64 2
  %142 = getelementptr inbounds %struct.BVHTreeNearest, ptr %16, i64 0, i32 1
  %143 = getelementptr inbounds %struct.BVHTreeNearest, ptr %16, i64 0, i32 2
  %144 = getelementptr inbounds %struct.DynamicPaintBrushSettings, ptr %1, i64 0, i32 16
  %145 = getelementptr inbounds %struct.DynamicPaintBrushSettings, ptr %1, i64 0, i32 14
  %146 = getelementptr inbounds [4 x float], ptr %17, i64 0, i64 3
  %147 = getelementptr inbounds %struct.PaintBakeData, ptr %29, i64 0, i32 8
  %148 = getelementptr inbounds %struct.DynamicPaintSurface, ptr %0, i64 0, i32 11
  %149 = getelementptr inbounds %struct.PaintBakeData, ptr %29, i64 0, i32 10
  %150 = getelementptr inbounds %struct.DynamicPaintBrushSettings, ptr %1, i64 0, i32 6
  %151 = getelementptr inbounds %struct.DynamicPaintBrushSettings, ptr %1, i64 0, i32 8
  %152 = getelementptr inbounds [3 x float], ptr %24, i64 0, i64 2
  %153 = getelementptr inbounds [4 x float], ptr %17, i64 0, i64 2
  %154 = getelementptr inbounds [3 x float], ptr %12, i64 0, i64 1
  %155 = getelementptr inbounds [3 x float], ptr %12, i64 0, i64 2
  %156 = zext nneg i32 %120 to i64
  %157 = load ptr, ptr %123, align 8, !tbaa !331
  br label %158

158:                                              ; preds = %122, %583
  %159 = phi ptr [ %157, %122 ], [ %584, %583 ]
  %160 = phi ptr [ %157, %122 ], [ %585, %583 ]
  %161 = phi i64 [ 0, %122 ], [ %588, %583 ]
  %162 = phi i32 [ undef, %122 ], [ %587, %583 ]
  %163 = phi i16 [ undef, %122 ], [ %586, %583 ]
  %164 = getelementptr inbounds i32, ptr %160, i64 %161
  %165 = load i32, ptr %164, align 4, !tbaa !122
  %166 = icmp eq i32 %165, 0
  br i1 %166, label %583, label %167

167:                                              ; preds = %158
  %168 = load ptr, ptr %124, align 8, !tbaa !328
  %169 = getelementptr inbounds %struct.Bounds3D, ptr %168, i64 %161
  %170 = call fastcc i32 @meshBrush_boundsIntersect(ptr noundef %169, ptr noundef nonnull %10, ptr noundef %1, float noundef %44) #25, !range !175
  %171 = icmp eq i32 %170, 0
  br i1 %171, label %583, label %172

172:                                              ; preds = %167
  %173 = getelementptr inbounds i32, ptr %159, i64 %161
  %174 = load i32, ptr %173, align 4, !tbaa !122
  %175 = icmp sgt i32 %174, 0
  br i1 %175, label %176, label %583

176:                                              ; preds = %172, %577
  %177 = phi i32 [ %548, %577 ], [ %162, %172 ]
  %178 = phi i16 [ %547, %577 ], [ %163, %172 ]
  %179 = phi i32 [ %578, %577 ], [ 0, %172 ]
  %180 = load ptr, ptr %125, align 8, !tbaa !332
  %181 = load ptr, ptr %126, align 8, !tbaa !330
  %182 = getelementptr inbounds i32, ptr %181, i64 %161
  %183 = load i32, ptr %182, align 4, !tbaa !122
  %184 = add nsw i32 %183, %179
  %185 = sext i32 %184 to i64
  %186 = getelementptr inbounds i32, ptr %180, i64 %185
  %187 = load i32, ptr %186, align 4, !tbaa !122
  %188 = load ptr, ptr %127, align 8, !tbaa !95
  %189 = sext i32 %187 to i64
  %190 = getelementptr inbounds i32, ptr %188, i64 %189
  %191 = load i32, ptr %190, align 4, !tbaa !122
  %192 = sitofp i32 %191 to float
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %12) #27
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(12) %12, i8 0, i64 12, i1 false)
  %193 = icmp sgt i32 %191, 1
  br i1 %193, label %194, label %198

194:                                              ; preds = %176
  %195 = load i16, ptr %128, align 4, !tbaa !34
  %196 = icmp eq i16 %195, 2
  br i1 %196, label %197, label %200

197:                                              ; preds = %194
  br label %200

198:                                              ; preds = %176
  %199 = icmp eq i32 %191, 1
  br i1 %199, label %200, label %539

200:                                              ; preds = %194, %197, %198
  %201 = phi float [ %192, %198 ], [ %192, %194 ], [ 0x400A79B3E0000000, %197 ]
  %202 = phi float [ 1.000000e+00, %198 ], [ %192, %194 ], [ 0x400A79B3E0000000, %197 ]
  %203 = shl nsw i32 %187, 2
  %204 = sext i32 %203 to i64
  %205 = or disjoint i32 %203, 3
  %206 = sext i32 %205 to i64
  %207 = zext nneg i32 %191 to i64
  br label %208

208:                                              ; preds = %200, %526
  %209 = phi i64 [ 0, %200 ], [ %535, %526 ]
  %210 = phi float [ 0.000000e+00, %200 ], [ %527, %526 ]
  %211 = phi i32 [ %177, %200 ], [ %533, %526 ]
  %212 = phi i16 [ %178, %200 ], [ %532, %526 ]
  %213 = phi i32 [ 0, %200 ], [ %531, %526 ]
  %214 = phi float [ 0.000000e+00, %200 ], [ %530, %526 ]
  %215 = phi float [ 0.000000e+00, %200 ], [ %528, %526 ]
  %216 = phi float [ 0.000000e+00, %200 ], [ %529, %526 ]
  %217 = phi <2 x float> [ zeroinitializer, %200 ], [ %534, %526 ]
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %13) #27
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %14) #27
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %15) #27
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %16) #27
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %17) #27
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %17, i8 0, i64 16, i1 false)
  %218 = load i32, ptr %30, align 8, !tbaa !128
  %219 = and i32 %218, 64
  %220 = icmp eq i32 %219, 0
  br i1 %220, label %224, label %221

221:                                              ; preds = %208
  %222 = load i32, ptr %129, align 4, !tbaa !129
  %223 = icmp eq i32 %222, 2
  br label %224

224:                                              ; preds = %221, %208
  %225 = phi i1 [ false, %208 ], [ %223, %221 ]
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %18) #27
  br i1 %193, label %226, label %232

226:                                              ; preds = %224
  %227 = load i16, ptr %128, align 4, !tbaa !34
  %228 = icmp eq i16 %227, 2
  br i1 %228, label %229, label %232

229:                                              ; preds = %226
  %230 = getelementptr inbounds [5 x float], ptr @gaussianFactors, i64 0, i64 %209
  %231 = load float, ptr %230, align 4, !tbaa !116
  br label %232

232:                                              ; preds = %224, %226, %229
  %233 = phi float [ %231, %229 ], [ 1.000000e+00, %226 ], [ 1.000000e+00, %224 ]
  %234 = load ptr, ptr %130, align 8, !tbaa !96
  %235 = load ptr, ptr %131, align 8, !tbaa !94
  %236 = getelementptr inbounds i32, ptr %235, i64 %189
  %237 = load i32, ptr %236, align 4, !tbaa !122
  %238 = trunc i64 %209 to i32
  %239 = add nsw i32 %237, %238
  %240 = sext i32 %239 to i64
  %241 = getelementptr inbounds %struct.Vec3f, ptr %234, i64 %240
  call fastcc void @copy_v3_v3(ptr noundef nonnull %13, ptr noundef %241) #25
  %242 = load ptr, ptr %29, align 8, !tbaa !90
  %243 = getelementptr inbounds %struct.PaintBakeNormal, ptr %242, i64 %189
  call fastcc void @copy_v3_v3(ptr noundef nonnull %14, ptr noundef %243) #25
  call fastcc void @add_v3_fl(ptr noundef nonnull %13) #25
  store i32 -1, ptr %15, align 4, !tbaa !450
  store float 9.999000e+03, ptr %132, align 4, !tbaa !452
  store i32 -1, ptr %16, align 4, !tbaa !453
  store float %133, ptr %134, align 4, !tbaa !455
  %244 = load i32, ptr %129, align 4, !tbaa !129
  switch i32 %244, label %290 [
    i32 0, label %245
    i32 2, label %245
  ]

245:                                              ; preds = %232, %232
  %246 = load ptr, ptr %8, align 8, !tbaa !456
  %247 = call i32 @BLI_bvhtree_ray_cast(ptr noundef %246, ptr noundef nonnull %13, ptr noundef nonnull %14, float noundef 0.000000e+00, ptr noundef nonnull %15, ptr noundef nonnull @mesh_faces_spherecast_dp, ptr noundef nonnull %8) #26
  %248 = icmp eq i32 %247, -1
  br i1 %248, label %290, label %249

249:                                              ; preds = %245
  %250 = load i32, ptr %15, align 4, !tbaa !450
  %251 = sext i32 %250 to i64
  %252 = getelementptr inbounds %struct.MFace, ptr %53, i64 %251
  %253 = load i32, ptr %252, align 4, !tbaa !256
  %254 = getelementptr inbounds %struct.MFace, ptr %53, i64 %251, i32 1
  %255 = load i32, ptr %254, align 4, !tbaa !280
  %256 = getelementptr inbounds %struct.MFace, ptr %53, i64 %251, i32 2
  %257 = load i32, ptr %256, align 4, !tbaa !281
  %258 = load float, ptr %135, align 4, !tbaa !116
  %259 = fcmp oeq float %258, 1.000000e+00
  br i1 %259, label %260, label %263

260:                                              ; preds = %249
  %261 = getelementptr inbounds %struct.MFace, ptr %53, i64 %251, i32 3
  %262 = load i32, ptr %261, align 4, !tbaa !153
  br label %263

263:                                              ; preds = %260, %249
  %264 = phi i32 [ %257, %260 ], [ %255, %249 ]
  %265 = phi i32 [ %262, %260 ], [ %257, %249 ]
  %266 = sext i32 %253 to i64
  %267 = getelementptr inbounds %struct.MVert, ptr %50, i64 %266
  %268 = sext i32 %264 to i64
  %269 = getelementptr inbounds %struct.MVert, ptr %50, i64 %268
  %270 = sext i32 %265 to i64
  %271 = getelementptr inbounds %struct.MVert, ptr %50, i64 %270
  %272 = call float @normal_tri_v3(ptr noundef nonnull %135, ptr noundef %267, ptr noundef %269, ptr noundef %271) #26
  %273 = load float, ptr %14, align 4, !tbaa !116
  %274 = load float, ptr %135, align 4, !tbaa !116
  %275 = load float, ptr %136, align 4, !tbaa !116
  %276 = load float, ptr %137, align 4, !tbaa !116
  %277 = fmul float %275, %276
  %278 = call float @llvm.fmuladd.f32(float %273, float %274, float %277)
  %279 = load float, ptr %138, align 4, !tbaa !116
  %280 = load float, ptr %139, align 4, !tbaa !116
  %281 = call float @llvm.fmuladd.f32(float %279, float %280, float %278)
  %282 = fcmp ult float %281, 0.000000e+00
  br i1 %282, label %290, label %283

283:                                              ; preds = %263
  %284 = load float, ptr %132, align 4, !tbaa !452
  %285 = load i32, ptr %15, align 4, !tbaa !450
  call fastcc void @negate_v3(ptr noundef nonnull %14) #25
  store i32 -1, ptr %15, align 4, !tbaa !450
  store float 9.999000e+03, ptr %132, align 4, !tbaa !452
  %286 = load ptr, ptr %8, align 8, !tbaa !456
  %287 = call i32 @BLI_bvhtree_ray_cast(ptr noundef %286, ptr noundef nonnull %13, ptr noundef nonnull %14, float noundef 0.000000e+00, ptr noundef nonnull %15, ptr noundef nonnull @mesh_faces_spherecast_dp, ptr noundef nonnull %8) #26
  %288 = load i32, ptr %15, align 4, !tbaa !450
  %289 = icmp eq i32 %288, -1
  br i1 %289, label %290, label %294

290:                                              ; preds = %263, %283, %232, %245
  %291 = load i32, ptr %129, align 4, !tbaa !129
  %292 = add i32 %291, -1
  %293 = icmp ult i32 %292, 2
  br i1 %293, label %306, label %526

294:                                              ; preds = %283
  %295 = load float, ptr %132, align 4, !tbaa !452
  call fastcc void @madd_v3_v3v3fl(ptr noundef nonnull %18, ptr noundef nonnull %13, ptr noundef nonnull %14, float noundef %295) #25
  %296 = call float @llvm.fmuladd.f32(float %284, float %233, float %215)
  %297 = zext i1 %259 to i16
  %298 = load i32, ptr %129, align 4, !tbaa !129
  %299 = add i32 %298, -1
  %300 = icmp ult i32 %299, 2
  br i1 %300, label %301, label %376

301:                                              ; preds = %294
  %302 = load i32, ptr %30, align 8, !tbaa !128
  %303 = and i32 %302, 64
  %304 = icmp eq i32 %303, 0
  br i1 %304, label %376, label %305

305:                                              ; preds = %301
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %19) #27
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %19, i8 0, i64 12, i1 false)
  br label %309

306:                                              ; preds = %290
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %19) #27
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %19, i8 0, i64 12, i1 false)
  br i1 %225, label %369, label %307

307:                                              ; preds = %306
  %308 = load i32, ptr %30, align 8, !tbaa !128
  br label %309

309:                                              ; preds = %307, %305
  %310 = phi i32 [ %302, %305 ], [ %308, %307 ]
  %311 = phi i16 [ %297, %305 ], [ 0, %307 ]
  %312 = phi i32 [ %285, %305 ], [ -1, %307 ]
  %313 = phi float [ 1.000000e+00, %305 ], [ 0.000000e+00, %307 ]
  %314 = phi i1 [ false, %305 ], [ true, %307 ]
  %315 = phi float [ %296, %305 ], [ %215, %307 ]
  %316 = and i32 %310, 32
  %317 = icmp eq i32 %316, 0
  br i1 %317, label %318, label %329

318:                                              ; preds = %309
  %319 = load ptr, ptr %8, align 8, !tbaa !456
  %320 = call i32 @BLI_bvhtree_find_nearest(ptr noundef %319, ptr noundef nonnull %13, ptr noundef nonnull %16, ptr noundef nonnull @mesh_faces_nearest_point_dp, ptr noundef nonnull %8) #26
  %321 = icmp eq i32 %320, -1
  br i1 %321, label %373, label %322

322:                                              ; preds = %318
  %323 = load float, ptr %134, align 4, !tbaa !455
  %324 = call float @sqrtf(float noundef %323) #26
  call fastcc void @copy_v3_v3(ptr noundef nonnull %19, ptr noundef nonnull %142) #25
  %325 = load float, ptr %143, align 4, !tbaa !116
  %326 = fcmp oeq float %325, 1.000000e+00
  %327 = zext i1 %326 to i16
  %328 = load i32, ptr %16, align 4, !tbaa !453
  br label %350

329:                                              ; preds = %309
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %20) #27
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %20, i8 0, i64 12, i1 false)
  %330 = load i16, ptr %140, align 4, !tbaa !143
  switch i16 %330, label %335 [
    i16 0, label %331
    i16 1, label %334
  ]

331:                                              ; preds = %329
  %332 = load ptr, ptr %29, align 8, !tbaa !90
  %333 = getelementptr inbounds %struct.PaintBakeNormal, ptr %332, i64 %189
  call fastcc void @copy_v3_v3(ptr noundef nonnull %20, ptr noundef %333) #25
  call fastcc void @negate_v3(ptr noundef nonnull %20) #25
  br label %336

334:                                              ; preds = %329
  call fastcc void @copy_v3_v3(ptr noundef nonnull %20, ptr noundef nonnull %9) #25
  br label %336

335:                                              ; preds = %329
  store float 1.000000e+00, ptr %141, align 4, !tbaa !116
  br label %336

336:                                              ; preds = %334, %335, %331
  store i32 -1, ptr %15, align 4, !tbaa !450
  store float %44, ptr %132, align 4, !tbaa !452
  %337 = load ptr, ptr %8, align 8, !tbaa !456
  %338 = call i32 @BLI_bvhtree_ray_cast(ptr noundef %337, ptr noundef nonnull %13, ptr noundef nonnull %20, float noundef 0.000000e+00, ptr noundef nonnull %15, ptr noundef nonnull @mesh_faces_spherecast_dp, ptr noundef nonnull %8) #26
  %339 = icmp eq i32 %338, -1
  br i1 %339, label %346, label %340

340:                                              ; preds = %336
  %341 = load float, ptr %132, align 4, !tbaa !452
  call fastcc void @madd_v3_v3v3fl(ptr noundef nonnull %19, ptr noundef nonnull %13, ptr noundef nonnull %20, float noundef %341) #25
  %342 = load float, ptr %135, align 4, !tbaa !116
  %343 = fcmp oeq float %342, 1.000000e+00
  %344 = zext i1 %343 to i16
  %345 = load i32, ptr %15, align 4, !tbaa !450
  br label %346

346:                                              ; preds = %340, %336
  %347 = phi float [ %341, %340 ], [ -1.000000e+00, %336 ]
  %348 = phi i16 [ %344, %340 ], [ %212, %336 ]
  %349 = phi i32 [ %345, %340 ], [ %211, %336 ]
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %20) #27
  br label %350

350:                                              ; preds = %322, %346
  %351 = phi float [ %347, %346 ], [ %324, %322 ]
  %352 = phi i16 [ %348, %346 ], [ %327, %322 ]
  %353 = phi i32 [ %349, %346 ], [ %328, %322 ]
  %354 = fcmp ult float %351, 0.000000e+00
  %355 = fcmp ugt float %351, %44
  %356 = select i1 %354, i1 true, i1 %355
  br i1 %356, label %373, label %357

357:                                              ; preds = %350
  %358 = fdiv float %351, %44
  %359 = fcmp olt float %358, 0.000000e+00
  br i1 %359, label %363, label %360

360:                                              ; preds = %357
  %361 = fcmp ogt float %358, 1.000000e+00
  br i1 %361, label %362, label %363

362:                                              ; preds = %360
  br label %363

363:                                              ; preds = %357, %360, %362
  %364 = phi float [ 1.000000e+00, %362 ], [ %358, %360 ], [ 0.000000e+00, %357 ]
  %365 = fsub float 1.000000e+00, %364
  %366 = select i1 %225, float %364, float %365
  %367 = icmp eq i32 %312, -1
  br i1 %367, label %368, label %370

368:                                              ; preds = %363
  call fastcc void @copy_v3_v3(ptr noundef nonnull %18, ptr noundef nonnull %19) #25
  br label %370

369:                                              ; preds = %306
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %19) #27
  br label %526

370:                                              ; preds = %363, %368
  %371 = phi i32 [ %353, %368 ], [ %312, %363 ]
  %372 = phi i16 [ %352, %368 ], [ %311, %363 ]
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %19) #27
  br label %376

373:                                              ; preds = %318, %350
  %374 = phi i16 [ %352, %350 ], [ %212, %318 ]
  %375 = phi i32 [ %353, %350 ], [ %211, %318 ]
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %19) #27
  br i1 %314, label %526, label %376

376:                                              ; preds = %294, %301, %370, %373
  %377 = phi i32 [ %375, %373 ], [ %353, %370 ], [ %211, %301 ], [ %211, %294 ]
  %378 = phi i16 [ %374, %373 ], [ %352, %370 ], [ %212, %301 ], [ %212, %294 ]
  %379 = phi i16 [ %311, %373 ], [ %372, %370 ], [ %297, %301 ], [ %297, %294 ]
  %380 = phi i32 [ %312, %373 ], [ %371, %370 ], [ %285, %301 ], [ %285, %294 ]
  %381 = phi float [ 0.000000e+00, %373 ], [ %366, %370 ], [ 0.000000e+00, %301 ], [ 0.000000e+00, %294 ]
  %382 = phi i1 [ true, %373 ], [ false, %370 ], [ true, %301 ], [ true, %294 ]
  %383 = phi i1 [ false, %373 ], [ true, %370 ], [ false, %301 ], [ false, %294 ]
  %384 = phi float [ %315, %373 ], [ %315, %370 ], [ %296, %301 ], [ %296, %294 ]
  %385 = phi float [ %313, %373 ], [ %313, %370 ], [ 1.000000e+00, %301 ], [ 1.000000e+00, %294 ]
  %386 = load i32, ptr %129, align 4, !tbaa !129
  %387 = icmp eq i32 %386, 2
  br i1 %387, label %388, label %396

388:                                              ; preds = %376
  %389 = load i32, ptr %30, align 8, !tbaa !128
  %390 = and i32 %389, 128
  %391 = icmp eq i32 %390, 0
  br i1 %391, label %396, label %392

392:                                              ; preds = %388
  %393 = fsub float 1.000000e+00, %385
  br i1 %225, label %394, label %396

394:                                              ; preds = %392
  %395 = fsub float 1.000000e+00, %381
  br label %396

396:                                              ; preds = %392, %394, %388, %376
  %397 = phi float [ %393, %394 ], [ %393, %392 ], [ %385, %388 ], [ %385, %376 ]
  %398 = phi float [ %395, %394 ], [ %381, %392 ], [ %381, %388 ], [ %381, %376 ]
  br i1 %382, label %421, label %399

399:                                              ; preds = %396
  %400 = load i16, ptr %144, align 8, !tbaa !131
  %401 = icmp eq i16 %400, 2
  br i1 %401, label %402, label %411

402:                                              ; preds = %399
  %403 = load ptr, ptr %145, align 8, !tbaa !72
  %404 = fsub float 1.000000e+00, %398
  %405 = call zeroext i8 @do_colorband(ptr noundef %403, float noundef %404, ptr noundef nonnull %17) #26
  %406 = icmp eq i8 %405, 0
  br i1 %406, label %409, label %407

407:                                              ; preds = %402
  %408 = load float, ptr %146, align 4, !tbaa !116
  br label %421

409:                                              ; preds = %402
  %410 = load i16, ptr %144, align 8, !tbaa !131
  br label %411

411:                                              ; preds = %409, %399
  %412 = phi i16 [ %410, %409 ], [ %400, %399 ]
  %413 = icmp eq i16 %412, 0
  br i1 %413, label %414, label %421

414:                                              ; preds = %411
  br i1 %225, label %415, label %420

415:                                              ; preds = %414
  %416 = load i32, ptr %30, align 8, !tbaa !128
  %417 = freeze i32 %416
  %418 = and i32 %417, 128
  %419 = icmp eq i32 %418, 0
  br i1 %419, label %421, label %420

420:                                              ; preds = %414, %415
  br label %421

421:                                              ; preds = %420, %415, %407, %411, %396
  %422 = phi float [ %397, %396 ], [ %408, %407 ], [ %398, %411 ], [ 1.000000e+00, %420 ], [ 0.000000e+00, %415 ]
  %423 = fmul float %233, %422
  %424 = load i32, ptr %30, align 8, !tbaa !128
  %425 = and i32 %424, 3840
  %426 = icmp ne i32 %425, 0
  %427 = icmp eq i64 %209, 0
  %428 = and i1 %427, %426
  %429 = load ptr, ptr %7, align 8
  %430 = icmp ne ptr %429, null
  %431 = select i1 %428, i1 %430, i1 false
  br i1 %431, label %432, label %483

432:                                              ; preds = %421
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %21) #27
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %22) #27
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %23) #27
  %433 = icmp eq i16 %379, 0
  %434 = sext i32 %380 to i64
  br i1 %433, label %435, label %439

435:                                              ; preds = %432
  %436 = getelementptr inbounds %struct.MFace, ptr %53, i64 %434
  %437 = getelementptr inbounds %struct.MFace, ptr %53, i64 %434, i32 1
  %438 = getelementptr inbounds %struct.MFace, ptr %53, i64 %434, i32 2
  br label %443

439:                                              ; preds = %432
  %440 = getelementptr inbounds %struct.MFace, ptr %53, i64 %434, i32 1
  %441 = getelementptr inbounds %struct.MFace, ptr %53, i64 %434, i32 2
  %442 = getelementptr inbounds %struct.MFace, ptr %53, i64 %434, i32 3
  br label %443

443:                                              ; preds = %439, %435
  %444 = phi ptr [ %440, %439 ], [ %436, %435 ]
  %445 = phi ptr [ %441, %439 ], [ %437, %435 ]
  %446 = phi ptr [ %442, %439 ], [ %438, %435 ]
  %447 = load i32, ptr %446, align 4, !tbaa !122
  %448 = load i32, ptr %445, align 4, !tbaa !122
  %449 = load i32, ptr %444, align 4, !tbaa !122
  %450 = sext i32 %449 to i64
  %451 = getelementptr inbounds %struct.MVert, ptr %50, i64 %450
  %452 = sext i32 %448 to i64
  %453 = getelementptr inbounds %struct.MVert, ptr %50, i64 %452
  %454 = sext i32 %447 to i64
  %455 = getelementptr inbounds %struct.MVert, ptr %50, i64 %454
  call void @interp_weights_face_v3(ptr noundef nonnull %21, ptr noundef %451, ptr noundef %453, ptr noundef %455, ptr noundef null, ptr noundef nonnull %18) #26
  %456 = getelementptr inbounds %struct.Vec3f, ptr %429, i64 %450
  %457 = getelementptr inbounds %struct.Vec3f, ptr %429, i64 %452
  %458 = getelementptr inbounds %struct.Vec3f, ptr %429, i64 %454
  call void @interp_v3_v3v3v3(ptr noundef nonnull %22, ptr noundef nonnull %456, ptr noundef nonnull %457, ptr noundef nonnull %458, ptr noundef nonnull %21) #26
  %459 = load ptr, ptr %147, align 8, !tbaa !100
  %460 = icmp eq ptr %459, null
  br i1 %460, label %463, label %461

461:                                              ; preds = %443
  %462 = getelementptr inbounds %struct.Vec3f, ptr %459, i64 %189
  call fastcc void @sub_v3_v3v3(ptr noundef nonnull %23, ptr noundef nonnull %22, ptr noundef nonnull %462) #25
  br label %464

463:                                              ; preds = %443
  call fastcc void @copy_v3_v3(ptr noundef nonnull %23, ptr noundef nonnull %22) #25
  br label %464

464:                                              ; preds = %463, %461
  %465 = call fastcc float @len_v3(ptr noundef nonnull %23) #25
  %466 = load i16, ptr %148, align 2, !tbaa !43
  %467 = icmp eq i16 %466, 0
  br i1 %467, label %468, label %482

468:                                              ; preds = %464
  %469 = load i32, ptr %30, align 8, !tbaa !128
  %470 = and i32 %469, 256
  %471 = icmp eq i32 %470, 0
  br i1 %471, label %482, label %472

472:                                              ; preds = %468
  %473 = load ptr, ptr %149, align 8, !tbaa !317
  %474 = icmp eq ptr %473, null
  br i1 %474, label %482, label %475

475:                                              ; preds = %472
  %476 = getelementptr inbounds float, ptr %473, i64 %204
  call fastcc void @copy_v3_v3(ptr noundef nonnull %476, ptr noundef nonnull %23) #25
  %477 = load ptr, ptr %149, align 8, !tbaa !317
  %478 = getelementptr inbounds float, ptr %477, i64 %204
  %479 = fdiv float 1.000000e+00, %465
  call fastcc void @mul_v3_fl(ptr noundef %478, float noundef %479) #25
  %480 = load ptr, ptr %149, align 8, !tbaa !317
  %481 = getelementptr inbounds float, ptr %480, i64 %206
  store float %465, ptr %481, align 4, !tbaa !116
  br label %482

482:                                              ; preds = %475, %472, %468, %464
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %23) #27
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %22) #27
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %21) #27
  br label %483

483:                                              ; preds = %482, %421
  %484 = phi float [ %465, %482 ], [ %214, %421 ]
  %485 = load i16, ptr %148, align 2, !tbaa !43
  %486 = icmp eq i16 %485, 0
  br i1 %486, label %487, label %520

487:                                              ; preds = %483
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %24) #27
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %25) #27
  store float 1.000000e+00, ptr %25, align 4, !tbaa !116
  %488 = load <2 x float>, ptr %150, align 8, !tbaa !116
  store <2 x float> %488, ptr %24, align 8, !tbaa !116
  %489 = load float, ptr %151, align 8, !tbaa !446
  store float %489, ptr %152, align 8, !tbaa !116
  %490 = call fastcc i32 @brush_usesMaterial(ptr noundef nonnull %1, ptr noundef %4) #25, !range !175
  %491 = icmp eq i32 %490, 0
  br i1 %491, label %501, label %492

492:                                              ; preds = %487
  %493 = load ptr, ptr %130, align 8, !tbaa !96
  %494 = load ptr, ptr %131, align 8, !tbaa !94
  %495 = getelementptr inbounds i32, ptr %494, i64 %189
  %496 = load i32, ptr %495, align 4, !tbaa !122
  %497 = add nsw i32 %496, %238
  %498 = sext i32 %497 to i64
  %499 = getelementptr inbounds %struct.Vec3f, ptr %493, i64 %498
  %500 = load ptr, ptr %36, align 8, !tbaa !67
  call fastcc void @dynamicPaint_doMaterialTex(ptr noundef %3, ptr noundef nonnull %24, ptr noundef nonnull %25, ptr noundef %2, ptr noundef %499, ptr noundef nonnull %18, i32 noundef %380, i16 noundef signext %379, ptr noundef %500) #25
  br label %501

501:                                              ; preds = %492, %487
  br i1 %383, label %502, label %512

502:                                              ; preds = %501
  %503 = load i16, ptr %144, align 8, !tbaa !131
  %504 = icmp eq i16 %503, 2
  br i1 %504, label %505, label %512

505:                                              ; preds = %502
  %506 = load i32, ptr %30, align 8, !tbaa !128
  %507 = and i32 %506, 16
  %508 = icmp eq i32 %507, 0
  br i1 %508, label %509, label %512

509:                                              ; preds = %505
  %510 = load <2 x float>, ptr %17, align 16, !tbaa !116
  store <2 x float> %510, ptr %24, align 8, !tbaa !116
  %511 = load float, ptr %153, align 8, !tbaa !116
  store float %511, ptr %152, align 8, !tbaa !116
  br label %512

512:                                              ; preds = %505, %509, %502, %501
  %513 = load <2 x float>, ptr %24, align 8, !tbaa !116
  %514 = fadd <2 x float> %513, %217
  %515 = load float, ptr %152, align 8, !tbaa !116
  %516 = fadd float %515, %210
  %517 = load float, ptr %25, align 4, !tbaa !116
  %518 = fmul float %423, %517
  %519 = add nsw i32 %213, 1
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %25) #27
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %24) #27
  br label %520

520:                                              ; preds = %512, %483
  %521 = phi float [ %516, %512 ], [ %210, %483 ]
  %522 = phi i32 [ %519, %512 ], [ %213, %483 ]
  %523 = phi float [ %518, %512 ], [ %423, %483 ]
  %524 = phi <2 x float> [ %514, %512 ], [ %217, %483 ]
  %525 = fadd float %216, %523
  br label %526

526:                                              ; preds = %290, %369, %373, %520
  %527 = phi float [ %521, %520 ], [ %210, %369 ], [ %210, %373 ], [ %210, %290 ]
  %528 = phi float [ %384, %520 ], [ %215, %369 ], [ %315, %373 ], [ %215, %290 ]
  %529 = phi float [ %525, %520 ], [ %216, %369 ], [ %216, %373 ], [ %216, %290 ]
  %530 = phi float [ %484, %520 ], [ %214, %369 ], [ %214, %373 ], [ %214, %290 ]
  %531 = phi i32 [ %522, %520 ], [ %213, %369 ], [ %213, %373 ], [ %213, %290 ]
  %532 = phi i16 [ %378, %520 ], [ %212, %369 ], [ %374, %373 ], [ %212, %290 ]
  %533 = phi i32 [ %377, %520 ], [ %211, %369 ], [ %375, %373 ], [ %211, %290 ]
  %534 = phi <2 x float> [ %524, %520 ], [ %217, %369 ], [ %217, %373 ], [ %217, %290 ]
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %18) #27
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %17) #27
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %16) #27
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %15) #27
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %14) #27
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %13) #27
  %535 = add nuw nsw i64 %209, 1
  %536 = icmp eq i64 %535, %207
  br i1 %536, label %537, label %208, !llvm.loop !458

537:                                              ; preds = %526
  %538 = extractelement <2 x float> %534, i64 1
  store float %538, ptr %154, align 4, !tbaa !116
  store float %527, ptr %155, align 8, !tbaa !116
  br label %539

539:                                              ; preds = %537, %198
  %540 = phi float [ %201, %537 ], [ %192, %198 ]
  %541 = phi float [ %202, %537 ], [ 1.000000e+00, %198 ]
  %542 = phi float [ %527, %537 ], [ 0.000000e+00, %198 ]
  %543 = phi float [ %529, %537 ], [ 0.000000e+00, %198 ]
  %544 = phi float [ %528, %537 ], [ 0.000000e+00, %198 ]
  %545 = phi float [ %530, %537 ], [ 0.000000e+00, %198 ]
  %546 = phi i32 [ %531, %537 ], [ 0, %198 ]
  %547 = phi i16 [ %532, %537 ], [ %178, %198 ]
  %548 = phi i32 [ %533, %537 ], [ %177, %198 ]
  %549 = phi <2 x float> [ %534, %537 ], [ zeroinitializer, %198 ]
  %550 = extractelement <2 x float> %549, i64 0
  store float %550, ptr %12, align 8, !tbaa !116
  %551 = fcmp ogt float %543, 0.000000e+00
  %552 = fcmp ogt float %544, 0.000000e+00
  %553 = select i1 %551, i1 true, i1 %552
  br i1 %553, label %554, label %577

554:                                              ; preds = %539
  %555 = fdiv float %543, %541
  %556 = fcmp olt float %555, 0.000000e+00
  br i1 %556, label %560, label %557

557:                                              ; preds = %554
  %558 = fcmp ogt float %555, 1.000000e+00
  br i1 %558, label %559, label %560

559:                                              ; preds = %557
  br label %560

560:                                              ; preds = %554, %557, %559
  %561 = phi float [ 1.000000e+00, %559 ], [ %555, %557 ], [ 0.000000e+00, %554 ]
  %562 = load i16, ptr %148, align 2, !tbaa !43
  switch i16 %562, label %575 [
    i16 0, label %563
    i16 1, label %569
    i16 3, label %569
  ]

563:                                              ; preds = %560
  %564 = sitofp i32 %546 to float
  %565 = insertelement <2 x float> poison, float %564, i64 0
  %566 = shufflevector <2 x float> %565, <2 x float> poison, <2 x i32> zeroinitializer
  %567 = fdiv <2 x float> %549, %566
  store <2 x float> %567, ptr %12, align 8, !tbaa !116
  %568 = fdiv float %542, %564
  store float %568, ptr %155, align 8, !tbaa !116
  br label %575

569:                                              ; preds = %560, %560
  %570 = load ptr, ptr %29, align 8, !tbaa !90
  %571 = getelementptr inbounds %struct.PaintBakeNormal, ptr %570, i64 %189, i32 1
  %572 = load float, ptr %571, align 4, !tbaa !301
  %573 = fmul float %540, %572
  %574 = fdiv float %544, %573
  br label %575

575:                                              ; preds = %560, %569, %563
  %576 = phi float [ %544, %563 ], [ %574, %569 ], [ %544, %560 ]
  call fastcc void @dynamicPaint_updatePointData(ptr noundef nonnull %0, i32 noundef %187, ptr noundef %1, ptr noundef nonnull %12, float noundef %561, float noundef %576, float noundef %545, float noundef %5) #25
  br label %577

577:                                              ; preds = %539, %575
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %12) #27
  %578 = add nuw nsw i32 %179, 1
  %579 = load ptr, ptr %123, align 8, !tbaa !331
  %580 = getelementptr inbounds i32, ptr %579, i64 %161
  %581 = load i32, ptr %580, align 4, !tbaa !122
  %582 = icmp slt i32 %578, %581
  br i1 %582, label %176, label %583, !llvm.loop !459

583:                                              ; preds = %577, %172, %158, %167
  %584 = phi ptr [ %159, %167 ], [ %159, %158 ], [ %159, %172 ], [ %579, %577 ]
  %585 = phi ptr [ %160, %167 ], [ %160, %158 ], [ %159, %172 ], [ %579, %577 ]
  %586 = phi i16 [ %163, %167 ], [ %163, %158 ], [ %163, %172 ], [ %547, %577 ]
  %587 = phi i32 [ %162, %167 ], [ %162, %158 ], [ %162, %172 ], [ %548, %577 ]
  %588 = add nuw nsw i64 %161, 1
  %589 = icmp eq i64 %588, %156
  br i1 %589, label %590, label %158, !llvm.loop !460

590:                                              ; preds = %583, %113, %110, %106, %104
  call void @free_bvhtree_from_mesh(ptr noundef nonnull %8) #26
  %591 = getelementptr inbounds %struct.DerivedMesh, ptr %47, i64 0, i32 95
  %592 = load ptr, ptr %591, align 8, !tbaa !69
  call void %592(ptr noundef %47) #26
  call void @llvm.lifetime.end.p0(i64 28, ptr nonnull %10) #27
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %9) #27
  call void @llvm.lifetime.end.p0(i64 72, ptr nonnull %8) #27
  %593 = load ptr, ptr %7, align 8, !tbaa !44
  %594 = icmp eq ptr %593, null
  br i1 %594, label %597, label %595

595:                                              ; preds = %590
  %596 = load ptr, ptr @MEM_freeN, align 8, !tbaa !44
  call void %596(ptr noundef nonnull %593) #26
  br label %597

597:                                              ; preds = %590, %595, %35
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %7) #27
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @dynamicPaint_freeBrushMaterials(ptr nocapture noundef readonly %0) unnamed_addr #4 !PGOFuncName !461 {
  %2 = getelementptr inbounds %struct.BrushMaterials, ptr %0, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !419
  %4 = icmp eq ptr %3, null
  br i1 %4, label %23, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.BrushMaterials, ptr %0, i64 0, i32 2
  %7 = load i32, ptr %6, align 8, !tbaa !422
  %8 = icmp sgt i32 %7, 0
  br i1 %8, label %9, label %20

9:                                                ; preds = %5, %9
  %10 = phi i64 [ %14, %9 ], [ 0, %5 ]
  %11 = load ptr, ptr %2, align 8, !tbaa !419
  %12 = getelementptr inbounds ptr, ptr %11, i64 %10
  %13 = load ptr, ptr %12, align 8, !tbaa !44
  tail call void @RE_free_sample_material(ptr noundef %13) #26
  %14 = add nuw nsw i64 %10, 1
  %15 = load i32, ptr %6, align 8, !tbaa !422
  %16 = sext i32 %15 to i64
  %17 = icmp slt i64 %14, %16
  br i1 %17, label %9, label %18, !llvm.loop !462

18:                                               ; preds = %9
  %19 = load ptr, ptr %2, align 8, !tbaa !419
  br label %20

20:                                               ; preds = %18, %5
  %21 = phi ptr [ %19, %18 ], [ %3, %5 ]
  %22 = load ptr, ptr @MEM_freeN, align 8, !tbaa !44
  tail call void %22(ptr noundef %21) #26
  br label %27

23:                                               ; preds = %1
  %24 = load ptr, ptr %0, align 8, !tbaa !423
  %25 = icmp eq ptr %24, null
  br i1 %25, label %27, label %26

26:                                               ; preds = %23
  tail call void @RE_free_sample_material(ptr noundef nonnull %24) #26
  br label %27

27:                                               ; preds = %23, %26, %20
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @dynamicPaint_doSmudge(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, float noundef %2) unnamed_addr #4 !PGOFuncName !463 {
  %4 = alloca [2 x i32], align 4
  %5 = alloca [2 x float], align 4
  %6 = getelementptr inbounds %struct.DynamicPaintSurface, ptr %0, i64 0, i32 3
  %7 = load ptr, ptr %6, align 8, !tbaa !74
  %8 = getelementptr inbounds %struct.PaintSurfaceData, ptr %7, i64 0, i32 3
  %9 = load ptr, ptr %8, align 8, !tbaa !89
  %10 = getelementptr inbounds %struct.PaintBakeData, ptr %9, i64 0, i32 5
  %11 = load ptr, ptr %10, align 8, !tbaa !97
  %12 = getelementptr inbounds %struct.PaintSurfaceData, ptr %7, i64 0, i32 2
  %13 = load ptr, ptr %12, align 8, !tbaa !82
  %14 = icmp eq ptr %13, null
  br i1 %14, label %139, label %15

15:                                               ; preds = %3
  %16 = getelementptr inbounds %struct.PaintSurfaceData, ptr %7, i64 0, i32 4
  %17 = load i32, ptr %16, align 8, !tbaa !145
  %18 = icmp sgt i32 %17, 0
  br i1 %18, label %19, label %36

19:                                               ; preds = %15
  %20 = getelementptr inbounds %struct.PaintBakeData, ptr %9, i64 0, i32 10
  %21 = load ptr, ptr %20, align 8, !tbaa !317
  %22 = zext nneg i32 %17 to i64
  br label %23

23:                                               ; preds = %19, %23
  %24 = phi i64 [ 0, %19 ], [ %32, %23 ]
  %25 = phi float [ 0.000000e+00, %19 ], [ %31, %23 ]
  %26 = shl nsw i64 %24, 2
  %27 = or disjoint i64 %26, 3
  %28 = getelementptr inbounds float, ptr %21, i64 %27
  %29 = load float, ptr %28, align 4, !tbaa !116
  %30 = fcmp ogt float %29, %25
  %31 = select i1 %30, float %29, float %25
  %32 = add nuw nsw i64 %24, 1
  %33 = icmp eq i64 %32, %22
  br i1 %33, label %34, label %23, !llvm.loop !464

34:                                               ; preds = %23
  %35 = fpext float %31 to double
  br label %36

36:                                               ; preds = %34, %15
  %37 = phi double [ 0.000000e+00, %15 ], [ %35, %34 ]
  %38 = getelementptr inbounds %struct.PaintBakeData, ptr %9, i64 0, i32 6
  %39 = load double, ptr %38, align 8, !tbaa !383
  %40 = fdiv double %37, %39
  %41 = fpext float %2 to double
  %42 = fmul double %40, %41
  %43 = tail call double @llvm.ceil.f64(double %42)
  %44 = fptosi double %43 to i32
  %45 = tail call i32 @llvm.smin.i32(i32 %44, i32 12)
  %46 = tail call i32 @llvm.smax.i32(i32 %45, i32 0)
  %47 = getelementptr inbounds %struct.DynamicPaintBrushSettings, ptr %1, i64 0, i32 23
  %48 = load float, ptr %47, align 4, !tbaa !465
  %49 = sitofp i32 %46 to float
  %50 = fdiv float %48, %49
  %51 = fmul float %50, %2
  %52 = icmp sgt i32 %44, 0
  br i1 %52, label %53, label %139

53:                                               ; preds = %36
  %54 = getelementptr inbounds %struct.PaintSurfaceData, ptr %7, i64 0, i32 1
  %55 = getelementptr inbounds %struct.PaintBakeData, ptr %9, i64 0, i32 10
  br label %56

56:                                               ; preds = %53, %134
  %57 = phi i32 [ %17, %53 ], [ %135, %134 ]
  %58 = phi i32 [ %17, %53 ], [ %136, %134 ]
  %59 = phi i32 [ 0, %53 ], [ %137, %134 ]
  %60 = icmp sgt i32 %58, 0
  br i1 %60, label %61, label %134

61:                                               ; preds = %56, %129
  %62 = phi i32 [ %130, %129 ], [ %57, %56 ]
  %63 = phi i64 [ %131, %129 ], [ 0, %56 ]
  %64 = load ptr, ptr %54, align 8, !tbaa !80
  %65 = getelementptr inbounds %struct.PaintPoint, ptr %64, i64 %63
  %66 = load ptr, ptr %55, align 8, !tbaa !317
  %67 = shl nsw i64 %63, 2
  %68 = or disjoint i64 %67, 3
  %69 = getelementptr inbounds float, ptr %66, i64 %68
  %70 = load float, ptr %69, align 4, !tbaa !116
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #27
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #27
  %71 = fcmp une float %70, 0.000000e+00
  br i1 %71, label %72, label %129

72:                                               ; preds = %61
  %73 = getelementptr inbounds float, ptr %66, i64 %67
  %74 = trunc i64 %63 to i32
  call fastcc void @surface_determineForceTargetPoints(ptr noundef nonnull %7, i32 noundef %74, ptr noundef %73, ptr noundef nonnull %5, ptr noundef nonnull %4) #25
  %75 = fmul float %51, %70
  %76 = getelementptr inbounds %struct.PaintPoint, ptr %64, i64 %63, i32 4
  %77 = getelementptr inbounds %struct.PaintPoint, ptr %64, i64 %63, i32 5
  %78 = getelementptr inbounds %struct.PaintPoint, ptr %64, i64 %63, i32 1
  %79 = getelementptr inbounds %struct.PaintPoint, ptr %64, i64 %63, i32 2
  br label %80

80:                                               ; preds = %72, %126
  %81 = phi i1 [ true, %72 ], [ false, %126 ]
  %82 = phi i64 [ 0, %72 ], [ 1, %126 ]
  %83 = getelementptr inbounds [2 x i32], ptr %4, i64 0, i64 %82
  %84 = load i32, ptr %83, align 4, !tbaa !122
  %85 = icmp eq i32 %84, -1
  br i1 %85, label %126, label %86

86:                                               ; preds = %80
  %87 = getelementptr inbounds [2 x float], ptr %5, i64 0, i64 %82
  %88 = load float, ptr %87, align 4, !tbaa !116
  %89 = fcmp ogt float %88, 0.000000e+00
  br i1 %89, label %90, label %126

90:                                               ; preds = %86
  %91 = load ptr, ptr %54, align 8, !tbaa !80
  %92 = load ptr, ptr %12, align 8, !tbaa !82
  %93 = load ptr, ptr %92, align 8, !tbaa !86
  %94 = sext i32 %84 to i64
  %95 = getelementptr inbounds i32, ptr %93, i64 %94
  %96 = load i32, ptr %95, align 4, !tbaa !122
  %97 = sext i32 %96 to i64
  %98 = getelementptr inbounds %struct.PaintPoint, ptr %91, i64 %97
  %99 = getelementptr inbounds %struct.BakeAdjPoint, ptr %11, i64 %94, i32 1
  %100 = load float, ptr %99, align 4, !tbaa !377
  %101 = fdiv float %75, %100
  %102 = fmul float %88, %101
  %103 = load float, ptr %47, align 4, !tbaa !465
  %104 = fcmp ogt float %102, %103
  %105 = select i1 %104, float %103, float %102
  %106 = getelementptr inbounds %struct.PaintPoint, ptr %91, i64 %97, i32 4
  %107 = getelementptr inbounds %struct.PaintPoint, ptr %91, i64 %97, i32 5
  %108 = load float, ptr %107, align 4, !tbaa !148
  %109 = load float, ptr %77, align 4, !tbaa !148
  %110 = tail call fastcc float @mixColors(ptr noundef nonnull %106, float noundef %108, ptr noundef nonnull %76, float noundef %109, float noundef %105) #25
  %111 = load float, ptr %107, align 4, !tbaa !148
  %112 = fsub float 1.000000e+00, %105
  %113 = load float, ptr %77, align 4, !tbaa !148
  %114 = fmul float %105, %113
  %115 = tail call float @llvm.fmuladd.f32(float %111, float %112, float %114)
  store float %115, ptr %107, align 4, !tbaa !148
  %116 = getelementptr inbounds %struct.PaintPoint, ptr %91, i64 %97, i32 1
  %117 = load float, ptr %116, align 4, !tbaa !222
  %118 = load float, ptr %78, align 4, !tbaa !222
  %119 = tail call fastcc float @mixColors(ptr noundef %98, float noundef %117, ptr noundef %65, float noundef %118, float noundef %105) #25
  %120 = load float, ptr %116, align 4, !tbaa !222
  %121 = load float, ptr %78, align 4, !tbaa !222
  %122 = fmul float %105, %121
  %123 = tail call float @llvm.fmuladd.f32(float %120, float %112, float %122)
  store float %123, ptr %116, align 4, !tbaa !222
  %124 = load float, ptr %79, align 4, !tbaa !233
  %125 = fmul float %112, %124
  store float %125, ptr %79, align 4, !tbaa !233
  br label %126

126:                                              ; preds = %90, %80, %86
  br i1 %81, label %80, label %127, !llvm.loop !466

127:                                              ; preds = %126
  %128 = load i32, ptr %16, align 8, !tbaa !145
  br label %129

129:                                              ; preds = %127, %61
  %130 = phi i32 [ %128, %127 ], [ %62, %61 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #27
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #27
  %131 = add nuw nsw i64 %63, 1
  %132 = sext i32 %130 to i64
  %133 = icmp slt i64 %131, %132
  br i1 %133, label %61, label %134, !llvm.loop !467

134:                                              ; preds = %129, %56
  %135 = phi i32 [ %57, %56 ], [ %130, %129 ]
  %136 = phi i32 [ %58, %56 ], [ %130, %129 ]
  %137 = add nuw nsw i32 %59, 1
  %138 = icmp eq i32 %137, %45
  br i1 %138, label %139, label %56, !llvm.loop !468

139:                                              ; preds = %134, %36, %3
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @dynamicPaint_doWaveStep(ptr nocapture noundef readonly %0, float noundef %1) unnamed_addr #4 !PGOFuncName !469 {
  %3 = getelementptr inbounds %struct.DynamicPaintSurface, ptr %0, i64 0, i32 3
  %4 = load ptr, ptr %3, align 8, !tbaa !74
  %5 = getelementptr inbounds %struct.PaintSurfaceData, ptr %4, i64 0, i32 3
  %6 = load ptr, ptr %5, align 8, !tbaa !89
  %7 = getelementptr inbounds %struct.PaintBakeData, ptr %6, i64 0, i32 5
  %8 = load ptr, ptr %7, align 8, !tbaa !97
  %9 = getelementptr inbounds %struct.DynamicPaintSurface, ptr %0, i64 0, i32 41
  %10 = load float, ptr %9, align 4, !tbaa !470
  %11 = getelementptr inbounds %struct.DynamicPaintSurface, ptr %0, i64 0, i32 44
  %12 = load float, ptr %11, align 8, !tbaa !124
  %13 = fcmp ult float %12, 0x3F847AE140000000
  %14 = fdiv float 5.000000e-01, %12
  %15 = select i1 %13, float 0.000000e+00, float %14
  %16 = tail call fastcc float @getSurfaceDimension(ptr noundef %4) #25
  %17 = fdiv float 5.000000e+00, %16
  %18 = load ptr, ptr @MEM_mallocN, align 8, !tbaa !44
  %19 = getelementptr inbounds %struct.PaintSurfaceData, ptr %4, i64 0, i32 4
  %20 = load i32, ptr %19, align 8, !tbaa !145
  %21 = sext i32 %20 to i64
  %22 = shl nsw i64 %21, 4
  %23 = tail call ptr %18(i64 noundef %22, ptr noundef nonnull @.str.59) #26
  %24 = icmp eq ptr %23, null
  br i1 %24, label %283, label %25

25:                                               ; preds = %2
  %26 = load i32, ptr %19, align 8, !tbaa !145
  %27 = icmp sgt i32 %26, 0
  %28 = getelementptr inbounds %struct.PaintSurfaceData, ptr %4, i64 0, i32 2
  %29 = load ptr, ptr %28, align 8, !tbaa !82
  br i1 %27, label %30, label %61

30:                                               ; preds = %25
  %31 = getelementptr inbounds %struct.PaintAdjData, ptr %29, i64 0, i32 2
  %32 = load ptr, ptr %31, align 8, !tbaa !85
  %33 = getelementptr inbounds %struct.PaintAdjData, ptr %29, i64 0, i32 1
  %34 = zext nneg i32 %26 to i64
  br label %35

35:                                               ; preds = %30, %57
  %36 = phi i64 [ 0, %30 ], [ %59, %57 ]
  %37 = phi double [ 0.000000e+00, %30 ], [ %58, %57 ]
  %38 = getelementptr inbounds i32, ptr %32, i64 %36
  %39 = load i32, ptr %38, align 4, !tbaa !122
  %40 = icmp sgt i32 %39, 0
  br i1 %40, label %41, label %57

41:                                               ; preds = %35
  %42 = load ptr, ptr %33, align 8, !tbaa !83
  %43 = getelementptr inbounds i32, ptr %42, i64 %36
  %44 = load i32, ptr %43, align 4, !tbaa !122
  %45 = sext i32 %44 to i64
  %46 = zext nneg i32 %39 to i64
  br label %47

47:                                               ; preds = %41, %47
  %48 = phi i64 [ 0, %41 ], [ %55, %47 ]
  %49 = phi double [ %37, %41 ], [ %54, %47 ]
  %50 = add nsw i64 %48, %45
  %51 = getelementptr inbounds %struct.BakeAdjPoint, ptr %8, i64 %50, i32 1
  %52 = load float, ptr %51, align 4, !tbaa !377
  %53 = fpext float %52 to double
  %54 = fadd double %49, %53
  %55 = add nuw nsw i64 %48, 1
  %56 = icmp eq i64 %55, %46
  br i1 %56, label %57, label %47, !llvm.loop !471

57:                                               ; preds = %47, %35
  %58 = phi double [ %37, %35 ], [ %54, %47 ]
  %59 = add nuw nsw i64 %36, 1
  %60 = icmp eq i64 %59, %34
  br i1 %60, label %61, label %35, !llvm.loop !472

61:                                               ; preds = %57, %25
  %62 = phi double [ 0.000000e+00, %25 ], [ %58, %57 ]
  %63 = getelementptr inbounds %struct.PaintSurfaceData, ptr %4, i64 0, i32 2
  %64 = getelementptr inbounds %struct.PaintAdjData, ptr %29, i64 0, i32 4
  %65 = load i32, ptr %64, align 8, !tbaa !177
  %66 = sitofp i32 %65 to float
  %67 = fdiv float %17, %66
  %68 = fpext float %67 to double
  %69 = fmul double %62, %68
  %70 = fmul float %1, 0x3FA5555560000000
  %71 = getelementptr inbounds %struct.DynamicPaintSurface, ptr %0, i64 0, i32 42
  %72 = load float, ptr %71, align 8, !tbaa !473
  %73 = fmul float %70, %72
  %74 = fpext float %73 to double
  %75 = fpext float %10 to double
  %76 = fdiv double %69, %75
  %77 = fdiv double %76, 3.000000e+00
  %78 = fdiv double %74, %77
  %79 = tail call double @llvm.ceil.f64(double %78)
  %80 = fptosi double %79 to i32
  %81 = tail call i32 @llvm.smin.i32(i32 %80, i32 20)
  %82 = tail call i32 @llvm.smax.i32(i32 %81, i32 1)
  %83 = sitofp i32 %82 to float
  %84 = fdiv float %1, %83
  %85 = fmul float %84, 0x3FA5555560000000
  %86 = fmul float %72, %85
  %87 = fmul float %10, %86
  %88 = fmul float %87, 1.500000e+00
  %89 = getelementptr inbounds %struct.DynamicPaintSurface, ptr %0, i64 0, i32 40
  %90 = load float, ptr %89, align 8, !tbaa !474
  %91 = fsub float 1.000000e+00, %90
  %92 = fpext float %91 to double
  %93 = fmul float %72, %84
  %94 = fpext float %93 to double
  %95 = tail call double @pow(double noundef %92, double noundef %94) #26
  %96 = fptrunc double %95 to float
  %97 = getelementptr inbounds %struct.PaintSurfaceData, ptr %4, i64 0, i32 1
  %98 = getelementptr inbounds %struct.DynamicPaintSurface, ptr %0, i64 0, i32 18
  %99 = getelementptr inbounds %struct.DynamicPaintSurface, ptr %0, i64 0, i32 43
  %100 = fcmp une float %15, 0.000000e+00
  %101 = load i32, ptr %19, align 8, !tbaa !145
  br label %106

102:                                              ; preds = %263
  br i1 %113, label %103, label %281

103:                                              ; preds = %102
  %104 = load ptr, ptr %97, align 8, !tbaa !80
  %105 = zext nneg i32 %112 to i64
  br label %271

106:                                              ; preds = %266, %61
  %107 = phi i32 [ %101, %61 ], [ %112, %266 ]
  %108 = phi i32 [ 0, %61 ], [ %267, %266 ]
  %109 = load ptr, ptr %97, align 8, !tbaa !80
  %110 = sext i32 %107 to i64
  %111 = shl nsw i64 %110, 4
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %23, ptr align 1 %109, i64 %111, i1 false)
  %112 = load i32, ptr %19, align 8, !tbaa !145
  %113 = icmp sgt i32 %112, 0
  br i1 %113, label %114, label %268

114:                                              ; preds = %106
  %115 = load ptr, ptr %97, align 8, !tbaa !80
  %116 = load ptr, ptr %63, align 8, !tbaa !82
  %117 = getelementptr inbounds %struct.PaintAdjData, ptr %116, i64 0, i32 2
  %118 = load ptr, ptr %117, align 8, !tbaa !85
  %119 = getelementptr inbounds %struct.PaintAdjData, ptr %116, i64 0, i32 1
  %120 = getelementptr inbounds %struct.PaintAdjData, ptr %116, i64 0, i32 3
  %121 = zext nneg i32 %112 to i64
  br label %122

122:                                              ; preds = %114, %260
  %123 = phi i64 [ 0, %114 ], [ %261, %260 ]
  %124 = getelementptr inbounds %struct.PaintWavePoint, ptr %115, i64 %123
  %125 = getelementptr inbounds i32, ptr %118, i64 %123
  %126 = load i32, ptr %125, align 4, !tbaa !122
  %127 = getelementptr inbounds %struct.PaintWavePoint, ptr %115, i64 %123, i32 3
  %128 = load i16, ptr %127, align 4, !tbaa !475
  %129 = icmp sgt i16 %128, 0
  br i1 %129, label %260, label %130

130:                                              ; preds = %122
  %131 = icmp sgt i32 %126, 0
  br i1 %131, label %132, label %190

132:                                              ; preds = %130
  %133 = load ptr, ptr %119, align 8, !tbaa !83
  %134 = getelementptr inbounds i32, ptr %133, i64 %123
  %135 = load i32, ptr %134, align 4, !tbaa !122
  %136 = load ptr, ptr %116, align 8, !tbaa !86
  %137 = sext i32 %135 to i64
  %138 = zext nneg i32 %126 to i64
  br label %139

139:                                              ; preds = %132, %181
  %140 = phi i64 [ 0, %132 ], [ %188, %181 ]
  %141 = phi i32 [ 0, %132 ], [ %187, %181 ]
  %142 = phi i32 [ 0, %132 ], [ %186, %181 ]
  %143 = phi float [ 0.000000e+00, %132 ], [ %185, %181 ]
  %144 = phi float [ 0.000000e+00, %132 ], [ %184, %181 ]
  %145 = phi float [ 0.000000e+00, %132 ], [ %183, %181 ]
  %146 = phi float [ 0.000000e+00, %132 ], [ %182, %181 ]
  %147 = add nsw i64 %140, %137
  %148 = getelementptr inbounds %struct.BakeAdjPoint, ptr %8, i64 %147, i32 1
  %149 = load float, ptr %148, align 4, !tbaa !377
  %150 = fmul float %17, %149
  %151 = getelementptr inbounds i32, ptr %136, i64 %147
  %152 = load i32, ptr %151, align 4, !tbaa !122
  %153 = sext i32 %152 to i64
  %154 = getelementptr inbounds %struct.PaintWavePoint, ptr %23, i64 %153
  %155 = fcmp une float %150, 0.000000e+00
  br i1 %155, label %156, label %181

156:                                              ; preds = %139
  %157 = getelementptr inbounds %struct.PaintWavePoint, ptr %23, i64 %153, i32 3
  %158 = load i16, ptr %157, align 4, !tbaa !475
  %159 = icmp sgt i16 %158, 0
  br i1 %159, label %181, label %160

160:                                              ; preds = %156
  %161 = fcmp olt float %150, %88
  %162 = select i1 %161, float %88, float %150
  %163 = fadd float %145, %162
  %164 = add nsw i32 %142, 1
  %165 = load ptr, ptr %120, align 8, !tbaa !87
  %166 = getelementptr inbounds i32, ptr %165, i64 %153
  %167 = load i32, ptr %166, align 4, !tbaa !122
  %168 = and i32 %167, 1
  %169 = icmp eq i32 %168, 0
  %170 = load float, ptr %154, align 4, !tbaa !247
  %171 = select i1 %169, float %170, float -0.000000e+00
  %172 = fadd float %143, %171
  %173 = xor i32 %168, 1
  %174 = add i32 %141, %173
  %175 = load float, ptr %124, align 4, !tbaa !247
  %176 = fsub float %170, %175
  %177 = fmul float %162, %162
  %178 = fdiv float %176, %177
  %179 = fadd float %146, %178
  %180 = fadd float %144, %170
  br label %181

181:                                              ; preds = %139, %156, %160
  %182 = phi float [ %179, %160 ], [ %146, %156 ], [ %146, %139 ]
  %183 = phi float [ %163, %160 ], [ %145, %156 ], [ %145, %139 ]
  %184 = phi float [ %180, %160 ], [ %144, %156 ], [ %144, %139 ]
  %185 = phi float [ %172, %160 ], [ %143, %156 ], [ %143, %139 ]
  %186 = phi i32 [ %164, %160 ], [ %142, %156 ], [ %142, %139 ]
  %187 = phi i32 [ %174, %160 ], [ %141, %156 ], [ %141, %139 ]
  %188 = add nuw nsw i64 %140, 1
  %189 = icmp eq i64 %188, %138
  br i1 %189, label %190, label %139, !llvm.loop !476

190:                                              ; preds = %181, %130
  %191 = phi float [ 0.000000e+00, %130 ], [ %182, %181 ]
  %192 = phi float [ 0.000000e+00, %130 ], [ %183, %181 ]
  %193 = phi float [ 0.000000e+00, %130 ], [ %184, %181 ]
  %194 = phi float [ 0.000000e+00, %130 ], [ %185, %181 ]
  %195 = phi i32 [ 0, %130 ], [ %186, %181 ]
  %196 = phi i32 [ 0, %130 ], [ %187, %181 ]
  %197 = icmp eq i32 %195, 0
  %198 = sitofp i32 %195 to float
  %199 = fdiv float %192, %198
  %200 = select i1 %197, float 0.000000e+00, float %199
  %201 = load i32, ptr %98, align 4, !tbaa !50
  %202 = and i32 %201, 128
  %203 = icmp eq i32 %202, 0
  br i1 %203, label %204, label %206

204:                                              ; preds = %190
  %205 = load float, ptr %124, align 4, !tbaa !247
  br label %222

206:                                              ; preds = %190
  %207 = load ptr, ptr %120, align 8, !tbaa !87
  %208 = getelementptr inbounds i32, ptr %207, i64 %123
  %209 = load i32, ptr %208, align 4, !tbaa !122
  %210 = and i32 %209, 1
  %211 = icmp eq i32 %210, 0
  %212 = load float, ptr %124, align 4, !tbaa !247
  br i1 %211, label %222, label %213

213:                                              ; preds = %206
  %214 = icmp eq i32 %196, 0
  %215 = sitofp i32 %196 to float
  %216 = fdiv float %194, %215
  %217 = select i1 %214, float 0.000000e+00, float %216
  %218 = fmul float %200, %212
  %219 = tail call float @llvm.fmuladd.f32(float %87, float %217, float %218)
  %220 = tail call float @llvm.fmuladd.f32(float %86, float %10, float %200)
  %221 = fdiv float %219, %220
  br label %258

222:                                              ; preds = %204, %206
  %223 = phi float [ %205, %204 ], [ %212, %206 ]
  %224 = fcmp une float %200, 0.000000e+00
  br i1 %224, label %225, label %233

225:                                              ; preds = %222
  %226 = fsub float 0.000000e+00, %223
  %227 = load float, ptr %99, align 4, !tbaa !477
  %228 = fmul float %226, %227
  %229 = fmul float %200, %200
  %230 = fdiv float %228, %229
  %231 = fmul float %230, 5.000000e-01
  %232 = fadd float %191, %231
  br label %233

233:                                              ; preds = %225, %222
  %234 = phi float [ %232, %225 ], [ %191, %222 ]
  %235 = fmul float %86, %234
  %236 = fmul float %10, %235
  %237 = getelementptr inbounds %struct.PaintWavePoint, ptr %115, i64 %123, i32 1
  %238 = load float, ptr %237, align 4, !tbaa !478
  %239 = tail call float @llvm.fmuladd.f32(float %236, float %10, float %238)
  %240 = fmul float %239, %96
  store float %240, ptr %237, align 4, !tbaa !478
  %241 = tail call float @llvm.fmuladd.f32(float %240, float %86, float %223)
  store float %241, ptr %124, align 4, !tbaa !247
  %242 = and i1 %100, %224
  br i1 %242, label %243, label %260

243:                                              ; preds = %233
  %244 = fmul float %15, %200
  %245 = fdiv float %193, %198
  %246 = fsub float %245, %241
  %247 = select i1 %197, float 0.000000e+00, float %246
  %248 = fcmp ogt float %247, %244
  %249 = fsub float %247, %244
  %250 = select i1 %248, float %249, float -0.000000e+00
  %251 = fadd float %241, %250
  %252 = fneg float %244
  %253 = fcmp olt float %247, %252
  %254 = fadd float %244, %247
  %255 = select i1 %253, float %254, float -0.000000e+00
  %256 = fadd float %251, %255
  %257 = or i1 %248, %253
  br i1 %257, label %258, label %260

258:                                              ; preds = %243, %213
  %259 = phi float [ %221, %213 ], [ %256, %243 ]
  store float %259, ptr %124, align 4, !tbaa !247
  br label %260

260:                                              ; preds = %258, %243, %233, %122
  %261 = add nuw nsw i64 %123, 1
  %262 = icmp eq i64 %261, %121
  br i1 %262, label %263, label %122, !llvm.loop !479

263:                                              ; preds = %260
  %264 = add nuw nsw i32 %108, 1
  %265 = icmp eq i32 %264, %82
  br i1 %265, label %102, label %266

266:                                              ; preds = %263, %268
  %267 = phi i32 [ %264, %263 ], [ %269, %268 ]
  br label %106, !llvm.loop !480

268:                                              ; preds = %106
  %269 = add nuw nsw i32 %108, 1
  %270 = icmp eq i32 %269, %82
  br i1 %270, label %281, label %266

271:                                              ; preds = %103, %278
  %272 = phi i64 [ 0, %103 ], [ %279, %278 ]
  %273 = getelementptr inbounds %struct.PaintWavePoint, ptr %104, i64 %272, i32 3
  %274 = load i16, ptr %273, align 4, !tbaa !475
  %275 = icmp eq i16 %274, 0
  br i1 %275, label %276, label %278

276:                                              ; preds = %271
  %277 = getelementptr inbounds %struct.PaintWavePoint, ptr %104, i64 %272, i32 2
  store float 0.000000e+00, ptr %277, align 4, !tbaa !481
  br label %278

278:                                              ; preds = %276, %271
  store i16 0, ptr %273, align 4, !tbaa !475
  %279 = add nuw nsw i64 %272, 1
  %280 = icmp eq i64 %279, %105
  br i1 %280, label %281, label %271, !llvm.loop !482

281:                                              ; preds = %268, %278, %102
  %282 = load ptr, ptr @MEM_freeN, align 8, !tbaa !44
  tail call void %282(ptr noundef nonnull %23) #26
  br label %283

283:                                              ; preds = %2, %281
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc i32 @dynamicPaint_prepareEffectStep(ptr nocapture noundef readonly %0, ptr noundef %1, ptr noundef %2, ptr nocapture noundef %3, float noundef %4) unnamed_addr #4 !PGOFuncName !483 {
  %6 = alloca [3 x float], align 4
  %7 = alloca ptr, align 8
  %8 = alloca [3 x float], align 4
  %9 = alloca %struct.EffectedPoint, align 8
  %10 = alloca [3 x float], align 4
  %11 = getelementptr inbounds %struct.DynamicPaintSurface, ptr %0, i64 0, i32 3
  %12 = load ptr, ptr %11, align 8, !tbaa !74
  %13 = getelementptr inbounds %struct.PaintSurfaceData, ptr %12, i64 0, i32 3
  %14 = load ptr, ptr %13, align 8, !tbaa !89
  %15 = getelementptr inbounds %struct.PaintBakeData, ptr %14, i64 0, i32 3
  %16 = load ptr, ptr %15, align 8, !tbaa !96
  %17 = getelementptr inbounds %struct.DynamicPaintSurface, ptr %0, i64 0, i32 19
  %18 = load i32, ptr %17, align 8, !tbaa !112
  %19 = and i32 %18, 2
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %132, label %21

21:                                               ; preds = %5
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %6) #27
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %6, i8 0, i64 12, i1 false)
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %7) #27
  %22 = getelementptr inbounds %struct.DynamicPaintSurface, ptr %0, i64 0, i32 5
  %23 = load ptr, ptr %22, align 8, !tbaa !103
  %24 = tail call ptr @pdInitEffectors(ptr noundef %1, ptr noundef %2, ptr noundef null, ptr noundef %23, i8 noundef zeroext 1) #26
  store ptr %24, ptr %7, align 8, !tbaa !44
  %25 = load ptr, ptr @MEM_mallocN, align 8, !tbaa !44
  %26 = getelementptr inbounds %struct.PaintSurfaceData, ptr %12, i64 0, i32 4
  %27 = load i32, ptr %26, align 8, !tbaa !145
  %28 = shl nsw i32 %27, 2
  %29 = sext i32 %28 to i64
  %30 = shl nsw i64 %29, 2
  %31 = tail call ptr %25(i64 noundef %30, ptr noundef nonnull @.str.60) #26
  store ptr %31, ptr %3, align 8, !tbaa !44
  %32 = icmp eq ptr %31, null
  br i1 %32, label %129, label %33

33:                                               ; preds = %21
  %34 = load i32, ptr %26, align 8, !tbaa !145
  %35 = icmp sgt i32 %34, 0
  br i1 %35, label %36, label %123

36:                                               ; preds = %33
  %37 = getelementptr inbounds %struct.PaintBakeData, ptr %14, i64 0, i32 1
  %38 = getelementptr inbounds %struct.EffectedPoint, ptr %9, i64 0, i32 5
  %39 = getelementptr inbounds %struct.Scene, ptr %1, i64 0, i32 40, i32 1
  %40 = getelementptr inbounds %struct.Scene, ptr %1, i64 0, i32 40
  %41 = getelementptr inbounds %struct.PaintBakeData, ptr %14, i64 0, i32 8
  %42 = getelementptr inbounds %struct.DynamicPaintSurface, ptr %0, i64 0, i32 36
  %43 = getelementptr inbounds %struct.PaintBakeData, ptr %14, i64 0, i32 9
  %44 = getelementptr inbounds %struct.DynamicPaintSurface, ptr %0, i64 0, i32 37
  br label %50

45:                                               ; preds = %105
  %46 = icmp sgt i32 %109, 0
  br i1 %46, label %47, label %123

47:                                               ; preds = %45
  %48 = load ptr, ptr %3, align 8, !tbaa !44
  %49 = zext nneg i32 %109 to i64
  br label %112

50:                                               ; preds = %36, %105
  %51 = phi ptr [ %24, %36 ], [ %63, %105 ]
  %52 = phi i64 [ 0, %36 ], [ %108, %105 ]
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %8) #27
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %8, i8 0, i64 12, i1 false)
  %53 = icmp eq ptr %51, null
  br i1 %53, label %62, label %54

54:                                               ; preds = %50
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %9) #27
  %55 = load ptr, ptr %37, align 8, !tbaa !94
  %56 = getelementptr inbounds i32, ptr %55, i64 %52
  %57 = load i32, ptr %56, align 4, !tbaa !122
  %58 = sext i32 %57 to i64
  %59 = getelementptr inbounds %struct.Vec3f, ptr %16, i64 %58
  %60 = trunc i64 %52 to i32
  call void @pd_point_from_loc(ptr noundef %1, ptr noundef %59, ptr noundef nonnull %6, i32 noundef %60, ptr noundef nonnull %9) #26
  store float 1.000000e+00, ptr %38, align 4, !tbaa !484
  %61 = load ptr, ptr %22, align 8, !tbaa !103
  call void @pdDoEffectors(ptr noundef %24, ptr noundef null, ptr noundef %61, ptr noundef nonnull %9, ptr noundef nonnull %8, ptr noundef null) #26
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %9) #27
  br label %62

62:                                               ; preds = %54, %50
  %63 = phi ptr [ %24, %54 ], [ null, %50 ]
  %64 = load i32, ptr %39, align 4, !tbaa !486
  %65 = and i32 %64, 1
  %66 = icmp eq i32 %65, 0
  br i1 %66, label %75, label %67

67:                                               ; preds = %62
  %68 = load ptr, ptr %22, align 8, !tbaa !103
  %69 = getelementptr inbounds %struct.EffectorWeights, ptr %68, i64 0, i32 2
  %70 = load float, ptr %69, align 8, !tbaa !487
  %71 = getelementptr inbounds %struct.EffectorWeights, ptr %68, i64 0, i32 1
  %72 = load float, ptr %71, align 8, !tbaa !116
  %73 = fmul float %70, %72
  %74 = fdiv float %73, 1.000000e+01
  call fastcc void @madd_v3_v3fl(ptr noundef nonnull %8, ptr noundef nonnull %40, float noundef %74) #25
  br label %75

75:                                               ; preds = %67, %62
  %76 = load ptr, ptr %41, align 8, !tbaa !100
  %77 = icmp eq ptr %76, null
  br i1 %77, label %94, label %78

78:                                               ; preds = %75
  %79 = load float, ptr %42, align 8, !tbaa !489
  %80 = fcmp une float %79, 0.000000e+00
  br i1 %80, label %81, label %84

81:                                               ; preds = %78
  %82 = getelementptr inbounds %struct.Vec3f, ptr %76, i64 %52
  %83 = fneg float %79
  call fastcc void @madd_v3_v3fl(ptr noundef nonnull %8, ptr noundef nonnull %82, float noundef %83) #25
  br label %84

84:                                               ; preds = %81, %78
  %85 = load ptr, ptr %43, align 8, !tbaa !101
  %86 = icmp eq ptr %85, null
  br i1 %86, label %94, label %87

87:                                               ; preds = %84
  %88 = load float, ptr %44, align 4, !tbaa !490
  %89 = fcmp une float %88, 0.000000e+00
  br i1 %89, label %90, label %94

90:                                               ; preds = %87
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %10) #27
  %91 = getelementptr inbounds %struct.Vec3f, ptr %76, i64 %52
  call fastcc void @copy_v3_v3(ptr noundef nonnull %10, ptr noundef nonnull %91) #25
  %92 = getelementptr inbounds %struct.Vec3f, ptr %85, i64 %52
  call fastcc void @sub_v3_v3(ptr noundef nonnull %10, ptr noundef nonnull %92) #25
  %93 = fneg float %88
  call fastcc void @madd_v3_v3fl(ptr noundef nonnull %8, ptr noundef nonnull %10, float noundef %93) #25
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %10) #27
  br label %94

94:                                               ; preds = %84, %87, %90, %75
  %95 = call fastcc float @len_v3(ptr noundef nonnull %8) #25
  %96 = load ptr, ptr %3, align 8, !tbaa !44
  %97 = trunc i64 %52 to i32
  %98 = shl nsw i32 %97, 2
  %99 = or disjoint i32 %98, 3
  %100 = zext nneg i32 %99 to i64
  %101 = getelementptr inbounds float, ptr %96, i64 %100
  store float %95, ptr %101, align 4, !tbaa !116
  %102 = fcmp une float %95, 0.000000e+00
  br i1 %102, label %103, label %105

103:                                              ; preds = %94
  %104 = fdiv float 1.000000e+00, %95
  call fastcc void @mul_v3_fl(ptr noundef nonnull %8, float noundef %104) #25
  br label %105

105:                                              ; preds = %103, %94
  %106 = zext nneg i32 %98 to i64
  %107 = getelementptr inbounds float, ptr %96, i64 %106
  call fastcc void @copy_v3_v3(ptr noundef %107, ptr noundef nonnull %8) #25
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %8) #27
  %108 = add nuw nsw i64 %52, 1
  %109 = load i32, ptr %26, align 8, !tbaa !145
  %110 = sext i32 %109 to i64
  %111 = icmp slt i64 %108, %110
  br i1 %111, label %50, label %45, !llvm.loop !491

112:                                              ; preds = %47, %112
  %113 = phi i64 [ 0, %47 ], [ %121, %112 ]
  %114 = phi double [ 0.000000e+00, %47 ], [ %120, %112 ]
  %115 = shl nsw i64 %113, 2
  %116 = or disjoint i64 %115, 3
  %117 = getelementptr inbounds float, ptr %48, i64 %116
  %118 = load float, ptr %117, align 4, !tbaa !116
  %119 = fpext float %118 to double
  %120 = fadd double %114, %119
  %121 = add nuw nsw i64 %113, 1
  %122 = icmp eq i64 %121, %49
  br i1 %122, label %123, label %112, !llvm.loop !492

123:                                              ; preds = %112, %33, %45
  %124 = phi i32 [ %109, %45 ], [ %34, %33 ], [ %109, %112 ]
  %125 = phi double [ 0.000000e+00, %45 ], [ 0.000000e+00, %33 ], [ %120, %112 ]
  %126 = sitofp i32 %124 to double
  %127 = fdiv double %125, %126
  %128 = fptrunc double %127 to float
  br label %129

129:                                              ; preds = %123, %21
  %130 = phi float [ %128, %123 ], [ 0.000000e+00, %21 ]
  call void @pdEndEffectors(ptr noundef nonnull %7) #26
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %7) #27
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %6) #27
  %131 = load i32, ptr %17, align 8, !tbaa !112
  br label %132

132:                                              ; preds = %129, %5
  %133 = phi i32 [ %131, %129 ], [ %18, %5 ]
  %134 = phi float [ %130, %129 ], [ 0.000000e+00, %5 ]
  %135 = and i32 %133, 1
  %136 = icmp eq i32 %135, 0
  br i1 %136, label %140, label %137

137:                                              ; preds = %132
  %138 = getelementptr inbounds %struct.DynamicPaintSurface, ptr %0, i64 0, i32 33
  %139 = load float, ptr %138, align 4, !tbaa !493
  br label %140

140:                                              ; preds = %137, %132
  %141 = phi float [ %139, %137 ], [ 0.000000e+00, %132 ]
  %142 = and i32 %133, 4
  %143 = icmp eq i32 %142, 0
  br i1 %143, label %147, label %144

144:                                              ; preds = %140
  %145 = getelementptr inbounds %struct.DynamicPaintSurface, ptr %0, i64 0, i32 35
  %146 = load float, ptr %145, align 4, !tbaa !123
  br label %147

147:                                              ; preds = %144, %140
  %148 = phi float [ %146, %144 ], [ 0.000000e+00, %140 ]
  %149 = call fastcc float @max_fff(float noundef %141, float noundef %148, float noundef %134) #25
  %150 = getelementptr inbounds %struct.PaintBakeData, ptr %14, i64 0, i32 6
  %151 = load double, ptr %150, align 8, !tbaa !383
  %152 = fmul double %151, 5.000000e+00
  %153 = call fastcc float @getSurfaceDimension(ptr noundef %12) #25
  %154 = fpext float %153 to double
  %155 = fdiv double %152, %154
  %156 = fptrunc double %155 to float
  %157 = fmul float %149, 0x3FB3333340000000
  %158 = fdiv float %157, %156
  %159 = fmul float %158, %4
  %160 = call float @llvm.ceil.f32(float %159)
  %161 = fptosi float %160 to i32
  %162 = call i32 @llvm.smin.i32(i32 %161, i32 20)
  %163 = call i32 @llvm.smax.i32(i32 %162, i32 1)
  ret i32 %163
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @dynamicPaint_doEffectStep(ptr nocapture noundef readonly %0, ptr noundef readonly %1, ptr noundef %2, float noundef %3, float noundef %4) unnamed_addr #4 !PGOFuncName !494 {
  %6 = alloca [2 x i32], align 4
  %7 = alloca [2 x float], align 4
  %8 = getelementptr inbounds %struct.DynamicPaintSurface, ptr %0, i64 0, i32 3
  %9 = load ptr, ptr %8, align 8, !tbaa !74
  %10 = getelementptr inbounds %struct.PaintSurfaceData, ptr %9, i64 0, i32 3
  %11 = load ptr, ptr %10, align 8, !tbaa !89
  %12 = getelementptr inbounds %struct.PaintBakeData, ptr %11, i64 0, i32 5
  %13 = load ptr, ptr %12, align 8, !tbaa !97
  %14 = tail call fastcc float @getSurfaceDimension(ptr noundef %9) #25
  %15 = fdiv float %14, 5.000000e+00
  %16 = fdiv float %3, %4
  %17 = getelementptr inbounds %struct.PaintSurfaceData, ptr %9, i64 0, i32 2
  %18 = load ptr, ptr %17, align 8, !tbaa !82
  %19 = icmp eq ptr %18, null
  br i1 %19, label %353, label %20

20:                                               ; preds = %5
  %21 = getelementptr inbounds %struct.DynamicPaintSurface, ptr %0, i64 0, i32 19
  %22 = load i32, ptr %21, align 8, !tbaa !112
  %23 = and i32 %22, 1
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %128, label %25

25:                                               ; preds = %20
  %26 = fmul float %15, 0x3FA99999A0000000
  %27 = getelementptr inbounds %struct.DynamicPaintSurface, ptr %0, i64 0, i32 33
  %28 = load float, ptr %27, align 4, !tbaa !493
  %29 = fmul float %26, %28
  %30 = fmul float %16, %29
  %31 = getelementptr inbounds %struct.PaintSurfaceData, ptr %9, i64 0, i32 1
  %32 = load ptr, ptr %31, align 8, !tbaa !80
  %33 = getelementptr inbounds %struct.PaintSurfaceData, ptr %9, i64 0, i32 4
  %34 = load i32, ptr %33, align 8, !tbaa !145
  %35 = sext i32 %34 to i64
  %36 = mul nsw i64 %35, 40
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 4 %2, ptr align 1 %32, i64 %36, i1 false)
  %37 = load i32, ptr %33, align 8, !tbaa !145
  %38 = icmp sgt i32 %37, 0
  br i1 %38, label %39, label %128

39:                                               ; preds = %25
  %40 = getelementptr inbounds %struct.DynamicPaintSurface, ptr %0, i64 0, i32 34
  br label %41

41:                                               ; preds = %39, %123
  %42 = phi i32 [ %37, %39 ], [ %124, %123 ]
  %43 = phi i64 [ 0, %39 ], [ %125, %123 ]
  %44 = load ptr, ptr %17, align 8, !tbaa !82
  %45 = getelementptr inbounds %struct.PaintAdjData, ptr %44, i64 0, i32 2
  %46 = load ptr, ptr %45, align 8, !tbaa !85
  %47 = getelementptr inbounds i32, ptr %46, i64 %43
  %48 = load i32, ptr %47, align 4, !tbaa !122
  %49 = load ptr, ptr %31, align 8, !tbaa !80
  %50 = getelementptr inbounds %struct.PaintPoint, ptr %49, i64 %43
  %51 = icmp sgt i32 %48, 0
  br i1 %51, label %52, label %123

52:                                               ; preds = %41
  %53 = getelementptr inbounds %struct.PaintPoint, ptr %49, i64 %43, i32 2
  %54 = getelementptr inbounds %struct.PaintPoint, ptr %49, i64 %43, i32 1
  %55 = sitofp i32 %48 to float
  %56 = fdiv float 1.000000e+00, %55
  br label %57

57:                                               ; preds = %52, %118
  %58 = phi i32 [ 0, %52 ], [ %119, %118 ]
  %59 = load ptr, ptr %17, align 8, !tbaa !82
  %60 = getelementptr inbounds %struct.PaintAdjData, ptr %59, i64 0, i32 1
  %61 = load ptr, ptr %60, align 8, !tbaa !83
  %62 = getelementptr inbounds i32, ptr %61, i64 %43
  %63 = load i32, ptr %62, align 4, !tbaa !122
  %64 = add nsw i32 %63, %58
  %65 = load ptr, ptr %59, align 8, !tbaa !86
  %66 = sext i32 %64 to i64
  %67 = getelementptr inbounds i32, ptr %65, i64 %66
  %68 = load i32, ptr %67, align 4, !tbaa !122
  %69 = sext i32 %68 to i64
  %70 = getelementptr inbounds %struct.PaintPoint, ptr %2, i64 %69
  %71 = getelementptr inbounds %struct.BakeAdjPoint, ptr %13, i64 %66, i32 1
  %72 = load float, ptr %71, align 4, !tbaa !377
  %73 = fcmp olt float %72, %30
  %74 = fdiv float %30, %72
  %75 = select i1 %73, float 1.000000e+00, float %74
  %76 = getelementptr inbounds %struct.PaintPoint, ptr %2, i64 %69, i32 2
  %77 = load float, ptr %76, align 4, !tbaa !233
  %78 = load float, ptr %53, align 4, !tbaa !233
  %79 = fcmp olt float %77, %78
  %80 = select i1 %79, float %77, float %78
  %81 = fcmp olt float %80, 1.000000e+00
  %82 = select i1 %81, float %80, float 1.000000e+00
  %83 = fmul float %82, 2.500000e-01
  %84 = load float, ptr %40, align 8, !tbaa !495
  %85 = fmul float %84, %83
  %86 = fcmp une float %85, 0.000000e+00
  br i1 %86, label %87, label %94

87:                                               ; preds = %57
  %88 = load float, ptr %54, align 4, !tbaa !222
  %89 = getelementptr inbounds %struct.PaintPoint, ptr %2, i64 %69, i32 1
  %90 = load float, ptr %89, align 4, !tbaa !222
  %91 = tail call fastcc float @mixColors(ptr noundef nonnull %50, float noundef %88, ptr noundef nonnull %70, float noundef %90, float noundef %85) #25
  %92 = load float, ptr %76, align 4, !tbaa !233
  %93 = load float, ptr %53, align 4, !tbaa !233
  br label %94

94:                                               ; preds = %87, %57
  %95 = phi float [ %93, %87 ], [ %78, %57 ]
  %96 = phi float [ %92, %87 ], [ %77, %57 ]
  %97 = fcmp olt float %96, %95
  %98 = fcmp olt float %96, 0x3F50624DE0000000
  %99 = or i1 %98, %97
  br i1 %99, label %118, label %100

100:                                              ; preds = %94
  %101 = fcmp olt float %96, 1.000000e+00
  %102 = select i1 %101, float %96, float 1.000000e+00
  %103 = fmul float %56, %102
  %104 = fmul float %75, %103
  %105 = fcmp olt float %104, 0.000000e+00
  br i1 %105, label %109, label %106

106:                                              ; preds = %100
  %107 = fcmp ogt float %104, 1.000000e+00
  br i1 %107, label %108, label %109

108:                                              ; preds = %106
  br label %109

109:                                              ; preds = %100, %106, %108
  %110 = phi float [ 1.000000e+00, %108 ], [ %104, %106 ], [ 0.000000e+00, %100 ]
  %111 = fsub float 1.000000e+00, %110
  %112 = fmul float %96, %110
  %113 = tail call float @llvm.fmuladd.f32(float %111, float %95, float %112)
  store float %113, ptr %53, align 4, !tbaa !233
  %114 = load float, ptr %54, align 4, !tbaa !222
  %115 = getelementptr inbounds %struct.PaintPoint, ptr %2, i64 %69, i32 1
  %116 = load float, ptr %115, align 4, !tbaa !222
  %117 = tail call fastcc float @mixColors(ptr noundef nonnull %50, float noundef %114, ptr noundef nonnull %70, float noundef %116, float noundef %110) #25
  store float %117, ptr %54, align 4, !tbaa !222
  br label %118

118:                                              ; preds = %94, %109
  %119 = add nuw nsw i32 %58, 1
  %120 = icmp eq i32 %119, %48
  br i1 %120, label %121, label %57, !llvm.loop !496

121:                                              ; preds = %118
  %122 = load i32, ptr %33, align 8, !tbaa !145
  br label %123

123:                                              ; preds = %121, %41
  %124 = phi i32 [ %122, %121 ], [ %42, %41 ]
  %125 = add nuw nsw i64 %43, 1
  %126 = sext i32 %124 to i64
  %127 = icmp slt i64 %125, %126
  br i1 %127, label %41, label %128, !llvm.loop !497

128:                                              ; preds = %123, %25, %20
  %129 = load i32, ptr %21, align 8, !tbaa !112
  %130 = and i32 %129, 4
  %131 = icmp eq i32 %130, 0
  br i1 %131, label %231, label %132

132:                                              ; preds = %128
  %133 = fmul float %15, 0x3FA99999A0000000
  %134 = getelementptr inbounds %struct.DynamicPaintSurface, ptr %0, i64 0, i32 35
  %135 = load float, ptr %134, align 4, !tbaa !123
  %136 = fmul float %133, %135
  %137 = fmul float %16, %136
  %138 = getelementptr inbounds %struct.PaintSurfaceData, ptr %9, i64 0, i32 1
  %139 = load ptr, ptr %138, align 8, !tbaa !80
  %140 = getelementptr inbounds %struct.PaintSurfaceData, ptr %9, i64 0, i32 4
  %141 = load i32, ptr %140, align 8, !tbaa !145
  %142 = sext i32 %141 to i64
  %143 = mul nsw i64 %142, 40
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 4 %2, ptr align 1 %139, i64 %143, i1 false)
  %144 = load i32, ptr %140, align 8, !tbaa !145
  %145 = icmp sgt i32 %144, 0
  br i1 %145, label %146, label %231

146:                                              ; preds = %132
  %147 = load ptr, ptr %17, align 8, !tbaa !82
  %148 = getelementptr inbounds %struct.PaintAdjData, ptr %147, i64 0, i32 2
  %149 = load ptr, ptr %148, align 8, !tbaa !85
  %150 = load ptr, ptr %138, align 8, !tbaa !80
  %151 = getelementptr inbounds %struct.PaintAdjData, ptr %147, i64 0, i32 1
  %152 = zext nneg i32 %144 to i64
  br label %153

153:                                              ; preds = %146, %228
  %154 = phi i64 [ 0, %146 ], [ %229, %228 ]
  %155 = getelementptr inbounds i32, ptr %149, i64 %154
  %156 = load i32, ptr %155, align 4, !tbaa !122
  %157 = icmp sgt i32 %156, 0
  br i1 %157, label %158, label %228

158:                                              ; preds = %153
  %159 = load ptr, ptr %151, align 8, !tbaa !83
  %160 = getelementptr inbounds i32, ptr %159, i64 %154
  %161 = load i32, ptr %160, align 4, !tbaa !122
  %162 = load ptr, ptr %147, align 8, !tbaa !86
  %163 = getelementptr inbounds %struct.PaintPoint, ptr %150, i64 %154, i32 5
  %164 = getelementptr inbounds %struct.PaintPoint, ptr %150, i64 %154, i32 1
  %165 = getelementptr inbounds %struct.PaintPoint, ptr %150, i64 %154, i32 2
  %166 = sitofp i32 %156 to float
  %167 = load float, ptr %163, align 4, !tbaa !148
  %168 = sext i32 %161 to i64
  %169 = zext nneg i32 %156 to i64
  %170 = load float, ptr %164, align 4, !tbaa !222
  br label %171

171:                                              ; preds = %158, %223
  %172 = phi float [ %170, %158 ], [ %224, %223 ]
  %173 = phi i64 [ 0, %158 ], [ %226, %223 ]
  %174 = phi float [ %167, %158 ], [ %225, %223 ]
  %175 = add nsw i64 %173, %168
  %176 = getelementptr inbounds %struct.BakeAdjPoint, ptr %13, i64 %175, i32 1
  %177 = load float, ptr %176, align 4, !tbaa !377
  %178 = fcmp olt float %177, %137
  %179 = fdiv float %137, %177
  %180 = select i1 %178, float 1.000000e+00, float %179
  %181 = getelementptr inbounds i32, ptr %162, i64 %175
  %182 = load i32, ptr %181, align 4, !tbaa !122
  %183 = sext i32 %182 to i64
  %184 = getelementptr inbounds %struct.PaintPoint, ptr %2, i64 %183, i32 1
  %185 = fcmp ugt float %174, 0.000000e+00
  br i1 %185, label %186, label %188

186:                                              ; preds = %171
  %187 = load float, ptr %165, align 4, !tbaa !233
  br label %193

188:                                              ; preds = %171
  %189 = fcmp ugt float %172, 0.000000e+00
  %190 = load float, ptr %165, align 4, !tbaa !233
  %191 = fcmp ugt float %190, 0.000000e+00
  %192 = select i1 %189, i1 true, i1 %191
  br i1 %192, label %193, label %223

193:                                              ; preds = %186, %188
  %194 = phi float [ %187, %186 ], [ %190, %188 ]
  %195 = getelementptr inbounds %struct.PaintPoint, ptr %2, i64 %183, i32 5
  %196 = load float, ptr %195, align 4, !tbaa !148
  %197 = fsub float 1.000000e+00, %196
  %198 = fdiv float %197, %166
  %199 = fsub float %174, %196
  %200 = fmul float %199, %198
  %201 = fmul float %180, %200
  %202 = fcmp olt float %201, 0.000000e+00
  %203 = select i1 %202, float 0.000000e+00, float %201
  %204 = fsub float %174, %203
  %205 = fcmp olt float %204, 0.000000e+00
  %206 = select i1 %205, float 0.000000e+00, float %204
  store float %206, ptr %163, align 4, !tbaa !148
  %207 = load <2 x float>, ptr %184, align 4, !tbaa !116
  %208 = fsub <2 x float> <float 1.000000e+00, float 1.000000e+00>, %207
  %209 = fmul <2 x float> %208, <float 1.250000e-01, float 1.250000e-01>
  %210 = insertelement <2 x float> poison, float %172, i64 0
  %211 = insertelement <2 x float> %210, float %194, i64 1
  %212 = fsub <2 x float> %211, %207
  %213 = fmul <2 x float> %209, %212
  %214 = insertelement <2 x float> poison, float %180, i64 0
  %215 = shufflevector <2 x float> %214, <2 x float> poison, <2 x i32> zeroinitializer
  %216 = fmul <2 x float> %215, %213
  %217 = fcmp olt <2 x float> %216, zeroinitializer
  %218 = select <2 x i1> %217, <2 x float> zeroinitializer, <2 x float> %216
  %219 = fsub <2 x float> %211, %218
  %220 = fcmp olt <2 x float> %219, zeroinitializer
  %221 = select <2 x i1> %220, <2 x float> zeroinitializer, <2 x float> %219
  store <2 x float> %221, ptr %164, align 4, !tbaa !116
  %222 = extractelement <2 x float> %221, i64 0
  br label %223

223:                                              ; preds = %188, %193
  %224 = phi float [ %222, %193 ], [ %172, %188 ]
  %225 = phi float [ %206, %193 ], [ %174, %188 ]
  %226 = add nuw nsw i64 %173, 1
  %227 = icmp eq i64 %226, %169
  br i1 %227, label %228, label %171, !llvm.loop !498

228:                                              ; preds = %223, %153
  %229 = add nuw nsw i64 %154, 1
  %230 = icmp eq i64 %229, %152
  br i1 %230, label %231, label %153, !llvm.loop !499

231:                                              ; preds = %228, %132, %128
  %232 = load i32, ptr %21, align 8, !tbaa !112
  %233 = and i32 %232, 2
  %234 = icmp ne i32 %233, 0
  %235 = icmp ne ptr %1, null
  %236 = and i1 %235, %234
  br i1 %236, label %237, label %353

237:                                              ; preds = %231
  %238 = fmul float %15, 0x3FA99999A0000000
  %239 = fmul float %16, %238
  %240 = fmul float %239, 5.000000e-01
  %241 = getelementptr inbounds %struct.PaintSurfaceData, ptr %9, i64 0, i32 1
  %242 = load ptr, ptr %241, align 8, !tbaa !80
  %243 = getelementptr inbounds %struct.PaintSurfaceData, ptr %9, i64 0, i32 4
  %244 = load i32, ptr %243, align 8, !tbaa !145
  %245 = sext i32 %244 to i64
  %246 = mul nsw i64 %245, 40
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 4 %2, ptr align 1 %242, i64 %246, i1 false)
  %247 = load i32, ptr %243, align 8, !tbaa !145
  %248 = icmp sgt i32 %247, 0
  br i1 %248, label %249, label %353

249:                                              ; preds = %237, %348
  %250 = phi i32 [ %349, %348 ], [ %247, %237 ]
  %251 = phi i64 [ %350, %348 ], [ 0, %237 ]
  %252 = load ptr, ptr %241, align 8, !tbaa !80
  %253 = getelementptr inbounds %struct.PaintPoint, ptr %2, i64 %251
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %6) #27
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %7) #27
  %254 = getelementptr inbounds %struct.PaintPoint, ptr %2, i64 %251, i32 2
  %255 = load float, ptr %254, align 4, !tbaa !233
  %256 = fadd float %255, 0xBF999999A0000000
  %257 = fcmp ugt float %256, 0.000000e+00
  br i1 %257, label %258, label %348

258:                                              ; preds = %249
  %259 = fcmp olt float %256, 0.000000e+00
  br i1 %259, label %263, label %260

260:                                              ; preds = %258
  %261 = fcmp ogt float %256, 1.000000e+00
  br i1 %261, label %262, label %263

262:                                              ; preds = %260
  br label %263

263:                                              ; preds = %258, %260, %262
  %264 = phi float [ 1.000000e+00, %262 ], [ %256, %260 ], [ 0.000000e+00, %258 ]
  %265 = trunc i64 %251 to i32
  %266 = shl nsw i32 %265, 2
  %267 = zext nneg i32 %266 to i64
  %268 = getelementptr inbounds float, ptr %1, i64 %267
  call fastcc void @surface_determineForceTargetPoints(ptr noundef nonnull %9, i32 noundef %265, ptr noundef nonnull %268, ptr noundef nonnull %7, ptr noundef nonnull %6) #25
  %269 = or disjoint i32 %266, 3
  %270 = zext nneg i32 %269 to i64
  %271 = getelementptr inbounds float, ptr %1, i64 %270
  %272 = getelementptr inbounds %struct.PaintPoint, ptr %2, i64 %251, i32 1
  %273 = getelementptr inbounds %struct.PaintPoint, ptr %252, i64 %251, i32 2
  br label %274

274:                                              ; preds = %263, %345
  %275 = phi i1 [ true, %263 ], [ false, %345 ]
  %276 = phi i64 [ 0, %263 ], [ 1, %345 ]
  %277 = getelementptr inbounds [2 x i32], ptr %6, i64 0, i64 %276
  %278 = load i32, ptr %277, align 4, !tbaa !122
  %279 = icmp eq i32 %278, -1
  br i1 %279, label %345, label %280

280:                                              ; preds = %274
  %281 = getelementptr inbounds [2 x float], ptr %7, i64 0, i64 %276
  %282 = load float, ptr %281, align 4, !tbaa !116
  %283 = fcmp ogt float %282, 0.000000e+00
  br i1 %283, label %284, label %345

284:                                              ; preds = %280
  %285 = sext i32 %278 to i64
  %286 = load ptr, ptr %241, align 8, !tbaa !80
  %287 = load ptr, ptr %17, align 8, !tbaa !82
  %288 = load ptr, ptr %287, align 8, !tbaa !86
  %289 = getelementptr inbounds i32, ptr %288, i64 %285
  %290 = load i32, ptr %289, align 4, !tbaa !122
  %291 = sext i32 %290 to i64
  %292 = getelementptr inbounds %struct.PaintPoint, ptr %286, i64 %291
  %293 = getelementptr inbounds %struct.PaintPoint, ptr %286, i64 %291, i32 2
  %294 = load float, ptr %293, align 4, !tbaa !233
  %295 = fcmp ugt float %282, 0.000000e+00
  br i1 %295, label %296, label %345

296:                                              ; preds = %284
  %297 = load float, ptr %271, align 4, !tbaa !116
  %298 = fmul float %240, %297
  %299 = getelementptr inbounds %struct.BakeAdjPoint, ptr %13, i64 %285, i32 1
  %300 = load float, ptr %299, align 4, !tbaa !377
  %301 = fdiv float %298, %300
  %302 = fcmp olt float %301, 1.000000e+00
  %303 = select i1 %302, float %301, float 1.000000e+00
  %304 = fmul float %282, %303
  %305 = fmul float %264, %304
  %306 = fcmp ogt float %305, 5.000000e-01
  %307 = select i1 %306, float 5.000000e-01, float %305
  %308 = fadd float %294, %307
  store float %308, ptr %293, align 4, !tbaa !233
  %309 = fcmp olt float %308, 0.000000e+00
  br i1 %309, label %312, label %310

310:                                              ; preds = %296
  %311 = fcmp ogt float %308, 5.000000e+00
  br i1 %311, label %312, label %314

312:                                              ; preds = %310, %296
  %313 = phi float [ 0.000000e+00, %296 ], [ 5.000000e+00, %310 ]
  store float %313, ptr %293, align 4, !tbaa !233
  br label %314

314:                                              ; preds = %312, %310
  %315 = load float, ptr %254, align 4, !tbaa !233
  %316 = fdiv float %307, %315
  %317 = fcmp olt float %316, 0.000000e+00
  br i1 %317, label %321, label %318

318:                                              ; preds = %314
  %319 = fcmp ogt float %316, 1.000000e+00
  br i1 %319, label %320, label %321

320:                                              ; preds = %318
  br label %321

321:                                              ; preds = %314, %318, %320
  %322 = phi float [ 1.000000e+00, %320 ], [ %316, %318 ], [ 0.000000e+00, %314 ]
  %323 = getelementptr inbounds %struct.PaintPoint, ptr %286, i64 %291, i32 1
  %324 = load float, ptr %323, align 4, !tbaa !222
  %325 = load float, ptr %272, align 4, !tbaa !222
  %326 = tail call fastcc float @mixColors(ptr noundef nonnull %292, float noundef %324, ptr noundef nonnull %253, float noundef %325, float noundef %322) #25
  %327 = load float, ptr %272, align 4, !tbaa !222
  %328 = load float, ptr %323, align 4, !tbaa !222
  %329 = fcmp ogt float %327, %328
  br i1 %329, label %330, label %335

330:                                              ; preds = %321
  %331 = tail call float @llvm.fmuladd.f32(float %322, float %327, float %328)
  store float %331, ptr %323, align 4, !tbaa !222
  %332 = load float, ptr %272, align 4, !tbaa !222
  %333 = fcmp ogt float %331, %332
  br i1 %333, label %334, label %335

334:                                              ; preds = %330
  store float %332, ptr %323, align 4, !tbaa !222
  br label %335

335:                                              ; preds = %330, %334, %321
  %336 = load float, ptr %293, align 4, !tbaa !233
  %337 = fsub float %336, %294
  %338 = load float, ptr %273, align 4, !tbaa !233
  %339 = fsub float %338, %337
  store float %339, ptr %273, align 4, !tbaa !233
  %340 = fcmp olt float %339, 0.000000e+00
  br i1 %340, label %343, label %341

341:                                              ; preds = %335
  %342 = fcmp ogt float %339, 5.000000e+00
  br i1 %342, label %343, label %345

343:                                              ; preds = %341, %335
  %344 = phi float [ 0.000000e+00, %335 ], [ 5.000000e+00, %341 ]
  store float %344, ptr %273, align 4, !tbaa !233
  br label %345

345:                                              ; preds = %343, %341, %284, %274, %280
  br i1 %275, label %274, label %346, !llvm.loop !500

346:                                              ; preds = %345
  %347 = load i32, ptr %243, align 8, !tbaa !145
  br label %348

348:                                              ; preds = %346, %249
  %349 = phi i32 [ %347, %346 ], [ %250, %249 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %7) #27
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %6) #27
  %350 = add nuw nsw i64 %251, 1
  %351 = sext i32 %349 to i64
  %352 = icmp slt i64 %350, %351
  br i1 %352, label %249, label %353, !llvm.loop !501

353:                                              ; preds = %348, %237, %231, %5
  ret void
}

; Function Attrs: mustprogress nofree noinline nounwind optsize willreturn memory(write, argmem: readwrite) uwtable
define internal fastcc void @value_dissolve(ptr nocapture noundef %0, float noundef %1, float noundef %2, i32 noundef %3) unnamed_addr #15 !PGOFuncName !502 {
  %5 = icmp eq i32 %3, 0
  %6 = load float, ptr %0, align 4, !tbaa !116
  br i1 %5, label %13, label %7

7:                                                ; preds = %4
  %8 = fmul float %1, 0x3FF3333340000000
  %9 = fdiv float %8, %2
  %10 = fdiv float 1.000000e+00, %9
  %11 = tail call float @powf(float noundef 0x3F50624DE0000000, float noundef %10) #26
  %12 = fmul float %6, %11
  br label %16

13:                                               ; preds = %4
  %14 = fdiv float -1.000000e+00, %1
  %15 = tail call float @llvm.fmuladd.f32(float %14, float %2, float %6)
  br label %16

16:                                               ; preds = %13, %7
  %17 = phi float [ %12, %7 ], [ %15, %13 ]
  store float %17, ptr %0, align 4, !tbaa !116
  ret void
}

; Function Attrs: mustprogress nofree nounwind optsize willreturn memory(write)
declare float @powf(float noundef, float noundef) local_unnamed_addr #16

; Function Attrs: optsize
declare ptr @BKE_constraint_typeinfo_get(ptr noundef) local_unnamed_addr #5

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @object_cacheIgnoreClear(ptr noundef %0, i32 noundef %1) unnamed_addr #4 !PGOFuncName !503 {
  %3 = alloca %struct.ListBase, align 8
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %3) #27
  call void @BKE_ptcache_ids_from_object(ptr noundef nonnull %3, ptr noundef %0, ptr noundef null, i32 noundef 0) #26
  %4 = load ptr, ptr %3, align 8, !tbaa !44
  %5 = icmp eq ptr %4, null
  br i1 %5, label %22, label %6

6:                                                ; preds = %2
  %7 = icmp eq i32 %1, 0
  %8 = select i1 %7, i32 0, i32 8192
  br label %9

9:                                                ; preds = %6, %19
  %10 = phi ptr [ %4, %6 ], [ %20, %19 ]
  %11 = getelementptr inbounds %struct.PTCacheID, ptr %10, i64 0, i32 25
  %12 = load ptr, ptr %11, align 8, !tbaa !217
  %13 = icmp eq ptr %12, null
  br i1 %13, label %19, label %14

14:                                               ; preds = %9
  %15 = getelementptr inbounds %struct.PointCache, ptr %12, i64 0, i32 2
  %16 = load i32, ptr %15, align 8, !tbaa !109
  %17 = and i32 %16, -8193
  %18 = or disjoint i32 %17, %8
  store i32 %18, ptr %15, align 8, !tbaa !109
  br label %19

19:                                               ; preds = %14, %9
  %20 = load ptr, ptr %10, align 8, !tbaa !44
  %21 = icmp eq ptr %20, null
  br i1 %21, label %22, label %9, !llvm.loop !504

22:                                               ; preds = %19, %2
  call void @BLI_freelistN(ptr noundef nonnull %3) #26
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %3) #27
  ret void
}

; Function Attrs: optsize
declare void @BKE_object_handle_update(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: optsize
declare void @BKE_object_where_is_calc_time(ptr noundef, ptr noundef, float noundef) local_unnamed_addr #5

; Function Attrs: optsize
declare void @BKE_pose_where_is(ptr noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: optsize
declare void @BKE_ptcache_ids_from_object(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: optsize
declare void @BLI_freelistN(ptr noundef) local_unnamed_addr #5

; Function Attrs: optsize
declare zeroext i8 @BKE_scene_use_new_shading_nodes(ptr noundef) local_unnamed_addr #5

; Function Attrs: optsize
declare zeroext i8 @invert_m4_m4(ptr noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: optsize
declare ptr @give_totcolp(ptr noundef) local_unnamed_addr #5

; Function Attrs: optsize
declare ptr @RE_init_sample_material(ptr noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: optsize
declare ptr @BLI_kdtree_new(i32 noundef) local_unnamed_addr #5

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(argmem: read) uwtable
define internal fastcc noundef i32 @boundIntersectPoint(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, float noundef %2) unnamed_addr #21 !PGOFuncName !505 {
  %4 = load i32, ptr %0, align 4, !tbaa !357
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %22, label %9

6:                                                ; preds = %17
  %7 = add nsw i64 %10, -1
  %8 = icmp eq i64 %10, 0
  br i1 %8, label %22, label %9, !llvm.loop !506

9:                                                ; preds = %3, %6
  %10 = phi i64 [ %7, %6 ], [ 2, %3 ]
  %11 = getelementptr inbounds %struct.Bounds3D, ptr %0, i64 0, i32 1, i64 %10
  %12 = load float, ptr %11, align 4, !tbaa !116
  %13 = getelementptr inbounds float, ptr %1, i64 %10
  %14 = load float, ptr %13, align 4, !tbaa !116
  %15 = fadd float %14, %2
  %16 = fcmp ugt float %12, %15
  br i1 %16, label %22, label %17

17:                                               ; preds = %9
  %18 = getelementptr inbounds %struct.Bounds3D, ptr %0, i64 0, i32 2, i64 %10
  %19 = load float, ptr %18, align 4, !tbaa !116
  %20 = fsub float %14, %2
  %21 = fcmp ult float %19, %20
  br i1 %21, label %22, label %6

22:                                               ; preds = %6, %9, %17, %3
  %23 = phi i32 [ 0, %3 ], [ 1, %6 ], [ 0, %9 ], [ 0, %17 ]
  ret i32 %23
}

; Function Attrs: optsize
declare void @BLI_kdtree_insert(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: optsize
declare void @BLI_kdtree_free(ptr noundef) local_unnamed_addr #5

; Function Attrs: optsize
declare void @BLI_begin_threaded_malloc() local_unnamed_addr #5

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(argmem: read) uwtable
define internal fastcc noundef i32 @boundsIntersectDist(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, float noundef %2) unnamed_addr #21 !PGOFuncName !507 {
  %4 = load i32, ptr %0, align 4, !tbaa !357
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %27, label %6

6:                                                ; preds = %3
  %7 = load i32, ptr %1, align 4, !tbaa !357
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %27, label %12

9:                                                ; preds = %20
  %10 = add nsw i64 %13, -1
  %11 = icmp eq i64 %13, 0
  br i1 %11, label %27, label %12, !llvm.loop !508

12:                                               ; preds = %6, %9
  %13 = phi i64 [ %10, %9 ], [ 2, %6 ]
  %14 = getelementptr inbounds %struct.Bounds3D, ptr %0, i64 0, i32 1, i64 %13
  %15 = load float, ptr %14, align 4, !tbaa !116
  %16 = getelementptr inbounds %struct.Bounds3D, ptr %1, i64 0, i32 2, i64 %13
  %17 = load float, ptr %16, align 4, !tbaa !116
  %18 = fadd float %17, %2
  %19 = fcmp ugt float %15, %18
  br i1 %19, label %27, label %20

20:                                               ; preds = %12
  %21 = getelementptr inbounds %struct.Bounds3D, ptr %0, i64 0, i32 2, i64 %13
  %22 = load float, ptr %21, align 4, !tbaa !116
  %23 = getelementptr inbounds %struct.Bounds3D, ptr %1, i64 0, i32 1, i64 %13
  %24 = load float, ptr %23, align 4, !tbaa !116
  %25 = fsub float %24, %2
  %26 = fcmp ult float %22, %25
  br i1 %26, label %27, label %9

27:                                               ; preds = %9, %12, %20, %3, %6
  %28 = phi i32 [ 0, %6 ], [ 0, %3 ], [ 1, %9 ], [ 0, %12 ], [ 0, %20 ]
  ret i32 %28
}

; Function Attrs: optsize
declare void @BLI_kdtree_balance(ptr noundef) local_unnamed_addr #5

; Function Attrs: optsize
declare i32 @BLI_kdtree_find_nearest(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: optsize
declare i32 @BLI_kdtree_range_search__normal(ptr noundef, ptr noundef, ptr noundef, ptr noundef, float noundef) local_unnamed_addr #5

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @sub_v3_v3(ptr nocapture noundef %0, ptr nocapture noundef readonly %1) unnamed_addr #7 !PGOFuncName !509 {
  %3 = load float, ptr %1, align 4, !tbaa !116
  %4 = load float, ptr %0, align 4, !tbaa !116
  %5 = fsub float %4, %3
  store float %5, ptr %0, align 4, !tbaa !116
  %6 = getelementptr inbounds float, ptr %1, i64 1
  %7 = load float, ptr %6, align 4, !tbaa !116
  %8 = getelementptr inbounds float, ptr %0, i64 1
  %9 = load float, ptr %8, align 4, !tbaa !116
  %10 = fsub float %9, %7
  store float %10, ptr %8, align 4, !tbaa !116
  %11 = getelementptr inbounds float, ptr %1, i64 2
  %12 = load float, ptr %11, align 4, !tbaa !116
  %13 = getelementptr inbounds float, ptr %0, i64 2
  %14 = load float, ptr %13, align 4, !tbaa !116
  %15 = fsub float %14, %12
  store float %15, ptr %13, align 4, !tbaa !116
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @dynamicPaint_updatePointData(ptr nocapture noundef readonly %0, i32 noundef %1, ptr nocapture noundef readonly %2, ptr nocapture noundef %3, float noundef %4, float noundef %5, float noundef %6, float noundef %7) unnamed_addr #4 !PGOFuncName !510 {
  %9 = alloca float, align 4
  %10 = alloca [4 x float], align 16
  %11 = alloca float, align 4
  %12 = alloca float, align 4
  store float %7, ptr %9, align 4, !tbaa !116
  %13 = getelementptr inbounds %struct.DynamicPaintSurface, ptr %0, i64 0, i32 3
  %14 = load ptr, ptr %13, align 8, !tbaa !74
  %15 = getelementptr inbounds %struct.DynamicPaintSurface, ptr %0, i64 0, i32 38
  %16 = load float, ptr %15, align 8, !tbaa !511
  %17 = fmul float %16, %4
  %18 = fmul float %16, %5
  %19 = getelementptr inbounds %struct.DynamicPaintBrushSettings, ptr %2, i64 0, i32 9
  %20 = load float, ptr %19, align 4, !tbaa !512
  %21 = fmul float %17, %20
  %22 = fcmp olt float %21, 0.000000e+00
  br i1 %22, label %26, label %23

23:                                               ; preds = %8
  %24 = fcmp ogt float %21, 1.000000e+00
  br i1 %24, label %25, label %26

25:                                               ; preds = %23
  br label %26

26:                                               ; preds = %8, %23, %25
  %27 = phi float [ 1.000000e+00, %25 ], [ %21, %23 ], [ 0.000000e+00, %8 ]
  %28 = getelementptr inbounds %struct.DynamicPaintBrushSettings, ptr %2, i64 0, i32 4
  %29 = load i32, ptr %28, align 8, !tbaa !128
  %30 = and i32 %29, 3584
  %31 = icmp eq i32 %30, 0
  br i1 %31, label %69, label %32

32:                                               ; preds = %26
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %10) #27
  %33 = getelementptr inbounds %struct.DynamicPaintBrushSettings, ptr %2, i64 0, i32 22
  %34 = load float, ptr %33, align 8, !tbaa !513
  %35 = fdiv float %6, %34
  %36 = fcmp olt float %35, 0.000000e+00
  br i1 %36, label %40, label %37

37:                                               ; preds = %32
  %38 = fcmp ogt float %35, 1.000000e+00
  br i1 %38, label %39, label %40

39:                                               ; preds = %37
  br label %40

40:                                               ; preds = %32, %37, %39
  %41 = phi float [ 1.000000e+00, %39 ], [ %35, %37 ], [ 0.000000e+00, %32 ]
  %42 = getelementptr inbounds %struct.DynamicPaintBrushSettings, ptr %2, i64 0, i32 15
  %43 = load ptr, ptr %42, align 8, !tbaa !73
  %44 = call zeroext i8 @do_colorband(ptr noundef %43, float noundef %41, ptr noundef nonnull %10) #26
  %45 = icmp eq i8 %44, 0
  br i1 %45, label %66, label %46

46:                                               ; preds = %40
  %47 = load i32, ptr %28, align 8, !tbaa !128
  %48 = and i32 %47, 1024
  %49 = icmp eq i32 %48, 0
  br i1 %49, label %55, label %50

50:                                               ; preds = %46
  %51 = load <2 x float>, ptr %10, align 16, !tbaa !116
  store <2 x float> %51, ptr %3, align 4, !tbaa !116
  %52 = getelementptr inbounds [4 x float], ptr %10, i64 0, i64 2
  %53 = load float, ptr %52, align 8, !tbaa !116
  %54 = getelementptr inbounds float, ptr %3, i64 2
  store float %53, ptr %54, align 4, !tbaa !116
  br label %55

55:                                               ; preds = %50, %46
  %56 = and i32 %47, 512
  %57 = icmp eq i32 %56, 0
  %58 = getelementptr inbounds [4 x float], ptr %10, i64 0, i64 3
  %59 = load float, ptr %58, align 4
  %60 = select i1 %57, float 1.000000e+00, float %59
  %61 = fmul float %27, %60
  %62 = and i32 %47, 2048
  %63 = icmp eq i32 %62, 0
  br i1 %63, label %66, label %64

64:                                               ; preds = %55
  %65 = fmul float %18, %59
  br label %66

66:                                               ; preds = %55, %64, %40
  %67 = phi float [ %61, %64 ], [ %61, %55 ], [ %27, %40 ]
  %68 = phi float [ %65, %64 ], [ %18, %55 ], [ %18, %40 ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %10) #27
  br label %69

69:                                               ; preds = %66, %26
  %70 = phi float [ %67, %66 ], [ %27, %26 ]
  %71 = phi float [ %68, %66 ], [ %18, %26 ]
  %72 = getelementptr inbounds %struct.DynamicPaintSurface, ptr %0, i64 0, i32 11
  %73 = load i16, ptr %72, align 2, !tbaa !43
  switch i16 %73, label %158 [
    i16 0, label %74
    i16 1, label %79
    i16 2, label %121
    i16 3, label %141
  ]

74:                                               ; preds = %69
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %11) #27
  %75 = getelementptr inbounds %struct.DynamicPaintBrushSettings, ptr %2, i64 0, i32 10
  %76 = load float, ptr %75, align 8, !tbaa !514
  %77 = fmul float %70, %76
  store float %77, ptr %11, align 4, !tbaa !116
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %12) #27
  store float %70, ptr %12, align 4, !tbaa !116
  %78 = load i32, ptr %28, align 8, !tbaa !128
  call fastcc void @dynamicPaint_mixPaintColors(ptr noundef nonnull %0, i32 noundef %1, i32 noundef %78, ptr noundef %3, ptr noundef nonnull %12, ptr noundef nonnull %11, ptr noundef nonnull %9) #25
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %12) #27
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %11) #27
  br label %158

79:                                               ; preds = %69
  %80 = getelementptr inbounds %struct.PaintSurfaceData, ptr %14, i64 0, i32 1
  %81 = load ptr, ptr %80, align 8, !tbaa !80
  %82 = getelementptr inbounds %struct.DynamicPaintSurface, ptr %0, i64 0, i32 18
  %83 = load i32, ptr %82, align 4, !tbaa !50
  %84 = and i32 %83, 256
  %85 = icmp eq i32 %84, 0
  br i1 %85, label %91, label %86

86:                                               ; preds = %79
  %87 = zext i32 %1 to i64
  %88 = getelementptr inbounds float, ptr %81, i64 %87
  %89 = load float, ptr %88, align 4, !tbaa !116
  %90 = fadd float %71, %89
  br label %91

91:                                               ; preds = %86, %79
  %92 = phi float [ %90, %86 ], [ %71, %79 ]
  %93 = getelementptr inbounds %struct.DynamicPaintSurface, ptr %0, i64 0, i32 31
  %94 = load float, ptr %93, align 4, !tbaa !288
  %95 = fcmp une float %94, 0.000000e+00
  br i1 %95, label %96, label %102

96:                                               ; preds = %91
  %97 = fsub float 0.000000e+00, %94
  %98 = fcmp olt float %92, %97
  br i1 %98, label %102, label %99

99:                                               ; preds = %96
  %100 = fcmp ogt float %92, %94
  br i1 %100, label %101, label %102

101:                                              ; preds = %99
  br label %102

102:                                              ; preds = %96, %101, %99, %91
  %103 = phi float [ %94, %101 ], [ %92, %99 ], [ %92, %91 ], [ %97, %96 ]
  %104 = load i32, ptr %28, align 8, !tbaa !128
  %105 = and i32 %104, 8
  %106 = icmp eq i32 %105, 0
  br i1 %106, label %115, label %107

107:                                              ; preds = %102
  %108 = fsub float 1.000000e+00, %70
  %109 = zext i32 %1 to i64
  %110 = getelementptr inbounds float, ptr %81, i64 %109
  %111 = load float, ptr %110, align 4, !tbaa !116
  %112 = fmul float %108, %111
  store float %112, ptr %110, align 4, !tbaa !116
  %113 = fcmp olt float %112, 0.000000e+00
  br i1 %113, label %114, label %158

114:                                              ; preds = %107
  store float 0.000000e+00, ptr %110, align 4, !tbaa !116
  br label %158

115:                                              ; preds = %102
  %116 = zext i32 %1 to i64
  %117 = getelementptr inbounds float, ptr %81, i64 %116
  %118 = load float, ptr %117, align 4, !tbaa !116
  %119 = fcmp olt float %118, %103
  br i1 %119, label %120, label %158

120:                                              ; preds = %115
  store float %103, ptr %117, align 4, !tbaa !116
  br label %158

121:                                              ; preds = %69
  %122 = getelementptr inbounds %struct.PaintSurfaceData, ptr %14, i64 0, i32 1
  %123 = load ptr, ptr %122, align 8, !tbaa !80
  %124 = load i32, ptr %28, align 8, !tbaa !128
  %125 = and i32 %124, 8
  %126 = icmp eq i32 %125, 0
  br i1 %126, label %135, label %127

127:                                              ; preds = %121
  %128 = fsub float 1.000000e+00, %70
  %129 = zext i32 %1 to i64
  %130 = getelementptr inbounds float, ptr %123, i64 %129
  %131 = load float, ptr %130, align 4, !tbaa !116
  %132 = fmul float %128, %131
  store float %132, ptr %130, align 4, !tbaa !116
  %133 = fcmp olt float %132, 0.000000e+00
  br i1 %133, label %134, label %158

134:                                              ; preds = %127
  store float 0.000000e+00, ptr %130, align 4, !tbaa !116
  br label %158

135:                                              ; preds = %121
  %136 = zext i32 %1 to i64
  %137 = getelementptr inbounds float, ptr %123, i64 %136
  %138 = load float, ptr %137, align 4, !tbaa !116
  %139 = fcmp olt float %138, %70
  br i1 %139, label %140, label %158

140:                                              ; preds = %135
  store float %70, ptr %137, align 4, !tbaa !116
  br label %158

141:                                              ; preds = %69
  %142 = getelementptr inbounds %struct.DynamicPaintBrushSettings, ptr %2, i64 0, i32 21
  %143 = load float, ptr %142, align 4, !tbaa !515
  %144 = fcmp une float %143, 0.000000e+00
  br i1 %144, label %145, label %151

145:                                              ; preds = %141
  %146 = fsub float 0.000000e+00, %143
  %147 = fcmp olt float %71, %146
  br i1 %147, label %151, label %148

148:                                              ; preds = %145
  %149 = fcmp ogt float %71, %143
  br i1 %149, label %150, label %151

150:                                              ; preds = %148
  br label %151

151:                                              ; preds = %145, %150, %148, %141
  %152 = phi float [ %143, %150 ], [ %71, %148 ], [ %71, %141 ], [ %146, %145 ]
  %153 = getelementptr inbounds %struct.PaintSurfaceData, ptr %14, i64 0, i32 1
  %154 = load ptr, ptr %153, align 8, !tbaa !80
  %155 = zext i32 %1 to i64
  %156 = getelementptr inbounds %struct.PaintWavePoint, ptr %154, i64 %155
  %157 = fsub float 0.000000e+00, %152
  call fastcc void @dynamicPaint_mixWaveHeight(ptr noundef %156, ptr noundef nonnull %2, float noundef %157) #25
  br label %158

158:                                              ; preds = %69, %134, %127, %140, %135, %114, %107, %120, %115, %151, %74
  %159 = getelementptr inbounds %struct.PaintSurfaceData, ptr %14, i64 0, i32 3
  %160 = load ptr, ptr %159, align 8, !tbaa !89
  %161 = getelementptr inbounds %struct.PaintBakeData, ptr %160, i64 0, i32 10
  %162 = load ptr, ptr %161, align 8, !tbaa !317
  %163 = icmp eq ptr %162, null
  br i1 %163, label %171, label %164

164:                                              ; preds = %158
  %165 = shl i32 %1, 2
  %166 = or disjoint i32 %165, 3
  %167 = zext i32 %166 to i64
  %168 = getelementptr inbounds float, ptr %162, i64 %167
  %169 = load float, ptr %168, align 4, !tbaa !116
  %170 = fmul float %17, %169
  store float %170, ptr %168, align 4, !tbaa !116
  br label %171

171:                                              ; preds = %164, %158
  ret void
}

; Function Attrs: optsize
declare void @BLI_end_threaded_malloc() local_unnamed_addr #5

; Function Attrs: optsize
declare zeroext i8 @do_colorband(ptr noundef, float noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @dynamicPaint_mixPaintColors(ptr nocapture noundef readonly %0, i32 noundef %1, i32 noundef %2, ptr nocapture noundef readonly %3, ptr nocapture noundef readonly %4, ptr nocapture noundef readonly %5, ptr nocapture noundef readonly %6) unnamed_addr #3 !PGOFuncName !516 {
  %8 = alloca [4 x float], align 16
  %9 = getelementptr inbounds %struct.DynamicPaintSurface, ptr %0, i64 0, i32 3
  %10 = load ptr, ptr %9, align 8, !tbaa !74
  %11 = getelementptr inbounds %struct.PaintSurfaceData, ptr %10, i64 0, i32 1
  %12 = load ptr, ptr %11, align 8, !tbaa !80
  %13 = sext i32 %1 to i64
  %14 = getelementptr inbounds %struct.PaintPoint, ptr %12, i64 %13
  %15 = and i32 %2, 8
  %16 = icmp eq i32 %15, 0
  %17 = and i32 %2, 4
  %18 = icmp eq i32 %17, 0
  br i1 %16, label %19, label %60

19:                                               ; preds = %7
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %8) #27
  %20 = load float, ptr %4, align 4, !tbaa !116
  br i1 %18, label %21, label %23

21:                                               ; preds = %19
  %22 = load float, ptr %6, align 4, !tbaa !116
  br label %23

23:                                               ; preds = %19, %21
  %24 = phi float [ %22, %21 ], [ 1.000000e+00, %19 ]
  %25 = fmul float %20, %24
  %26 = getelementptr inbounds %struct.PaintPoint, ptr %12, i64 %13, i32 1
  %27 = load float, ptr %26, align 4, !tbaa !222
  call fastcc void @blendColors(ptr noundef %14, float noundef %27, ptr noundef %3, float noundef %25, ptr noundef nonnull %8) #25
  call fastcc void @copy_v3_v3(ptr noundef %14, ptr noundef nonnull %8) #25
  br i1 %18, label %39, label %28

28:                                               ; preds = %23
  %29 = load float, ptr %26, align 4, !tbaa !222
  %30 = load float, ptr %4, align 4, !tbaa !116
  %31 = fcmp olt float %29, %30
  br i1 %31, label %32, label %33

32:                                               ; preds = %28
  store float %30, ptr %26, align 4, !tbaa !222
  br label %33

33:                                               ; preds = %32, %28
  %34 = getelementptr inbounds %struct.PaintPoint, ptr %12, i64 %13, i32 2
  %35 = load float, ptr %34, align 4, !tbaa !233
  %36 = load float, ptr %5, align 4, !tbaa !116
  %37 = fcmp olt float %35, %36
  br i1 %37, label %38, label %53

38:                                               ; preds = %33
  store float %36, ptr %34, align 4, !tbaa !233
  br label %53

39:                                               ; preds = %23
  %40 = load float, ptr %5, align 4, !tbaa !116
  %41 = fcmp olt float %40, 0.000000e+00
  br i1 %41, label %45, label %42

42:                                               ; preds = %39
  %43 = fcmp ogt float %40, 1.000000e+00
  br i1 %43, label %44, label %45

44:                                               ; preds = %42
  br label %45

45:                                               ; preds = %39, %42, %44
  %46 = phi float [ 1.000000e+00, %44 ], [ %40, %42 ], [ 0.000000e+00, %39 ]
  %47 = getelementptr inbounds [4 x float], ptr %8, i64 0, i64 3
  %48 = load float, ptr %47, align 4, !tbaa !116
  store float %48, ptr %26, align 4, !tbaa !222
  %49 = getelementptr inbounds %struct.PaintPoint, ptr %12, i64 %13, i32 2
  %50 = load float, ptr %49, align 4, !tbaa !233
  %51 = fsub float 1.000000e+00, %46
  %52 = tail call float @llvm.fmuladd.f32(float %50, float %51, float %46)
  store float %52, ptr %49, align 4, !tbaa !233
  br label %53

53:                                               ; preds = %33, %38, %45
  %54 = phi float [ %35, %33 ], [ %36, %38 ], [ %52, %45 ]
  %55 = fcmp olt float %54, 0x3F50624DE0000000
  br i1 %55, label %56, label %58

56:                                               ; preds = %53
  %57 = getelementptr inbounds %struct.PaintPoint, ptr %12, i64 %13, i32 2
  store float 0x3F50624DE0000000, ptr %57, align 4, !tbaa !233
  br label %58

58:                                               ; preds = %56, %53
  %59 = getelementptr inbounds %struct.PaintPoint, ptr %12, i64 %13, i32 3
  store i16 2, ptr %59, align 4, !tbaa !391
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %8) #27
  br label %100

60:                                               ; preds = %7
  %61 = load float, ptr %4, align 4, !tbaa !116
  %62 = fsub float 1.000000e+00, %61
  br i1 %18, label %75, label %63

63:                                               ; preds = %60
  %64 = getelementptr inbounds %struct.PaintPoint, ptr %12, i64 %13, i32 1
  %65 = load float, ptr %64, align 4, !tbaa !222
  %66 = getelementptr inbounds %struct.PaintPoint, ptr %12, i64 %13, i32 5
  %67 = load float, ptr %66, align 4, !tbaa !148
  %68 = fcmp ogt float %65, %67
  %69 = select i1 %68, float %65, float %67
  %70 = fcmp ogt float %69, %62
  br i1 %70, label %71, label %91

71:                                               ; preds = %63
  %72 = fdiv float %62, %69
  %73 = fmul float %65, %72
  store float %73, ptr %64, align 4, !tbaa !222
  %74 = fmul float %67, %72
  store float %74, ptr %66, align 4, !tbaa !148
  br label %91

75:                                               ; preds = %60
  %76 = load float, ptr %6, align 4, !tbaa !116
  %77 = getelementptr inbounds %struct.PaintPoint, ptr %12, i64 %13, i32 1
  %78 = load float, ptr %77, align 4, !tbaa !222
  %79 = fneg float %61
  %80 = tail call float @llvm.fmuladd.f32(float %79, float %76, float %78)
  %81 = fcmp olt float %80, 0.000000e+00
  %82 = select i1 %81, float 0.000000e+00, float %80
  store float %82, ptr %77, align 4, !tbaa !222
  %83 = load float, ptr %4, align 4, !tbaa !116
  %84 = load float, ptr %6, align 4, !tbaa !116
  %85 = getelementptr inbounds %struct.PaintPoint, ptr %12, i64 %13, i32 5
  %86 = load float, ptr %85, align 4, !tbaa !148
  %87 = fneg float %83
  %88 = tail call float @llvm.fmuladd.f32(float %87, float %84, float %86)
  store float %88, ptr %85, align 4, !tbaa !148
  %89 = fcmp olt float %88, 0.000000e+00
  br i1 %89, label %90, label %91

90:                                               ; preds = %75
  store float 0.000000e+00, ptr %85, align 4, !tbaa !148
  br label %91

91:                                               ; preds = %75, %90, %63, %71
  %92 = phi float [ %82, %75 ], [ %82, %90 ], [ %65, %63 ], [ %73, %71 ]
  %93 = load float, ptr %5, align 4, !tbaa !116
  %94 = fsub float 1.000000e+00, %93
  %95 = fmul float %94, %92
  %96 = getelementptr inbounds %struct.PaintPoint, ptr %12, i64 %13, i32 2
  %97 = load float, ptr %96, align 4, !tbaa !233
  %98 = fcmp ogt float %97, %95
  br i1 %98, label %99, label %100

99:                                               ; preds = %91
  store float %95, ptr %96, align 4, !tbaa !233
  br label %100

100:                                              ; preds = %91, %99, %58
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @dynamicPaint_mixWaveHeight(ptr nocapture noundef %0, ptr nocapture noundef readonly %1, float noundef %2) unnamed_addr #7 !PGOFuncName !517 {
  %4 = getelementptr inbounds %struct.PaintWavePoint, ptr %0, i64 0, i32 2
  %5 = load float, ptr %4, align 4, !tbaa !481
  %6 = fsub float %2, %5
  store float %2, ptr %4, align 4, !tbaa !481
  %7 = getelementptr inbounds %struct.PaintWavePoint, ptr %0, i64 0, i32 3
  store i16 -1, ptr %7, align 4, !tbaa !475
  %8 = getelementptr inbounds %struct.DynamicPaintBrushSettings, ptr %1, i64 0, i32 20
  %9 = load float, ptr %8, align 8, !tbaa !518
  %10 = fmul float %9, %2
  %11 = fcmp ogt float %9, 0.000000e+00
  br i1 %11, label %12, label %15

12:                                               ; preds = %3
  %13 = load float, ptr %0, align 4, !tbaa !247
  %14 = fcmp ogt float %13, %10
  br i1 %14, label %20, label %15

15:                                               ; preds = %12, %3
  %16 = fcmp olt float %9, 0.000000e+00
  br i1 %16, label %17, label %35

17:                                               ; preds = %15
  %18 = load float, ptr %0, align 4, !tbaa !247
  %19 = fcmp olt float %18, %10
  br i1 %19, label %20, label %35

20:                                               ; preds = %17, %12
  %21 = phi float [ %18, %17 ], [ %13, %12 ]
  %22 = getelementptr inbounds %struct.DynamicPaintBrushSettings, ptr %1, i64 0, i32 17
  %23 = load i16, ptr %22, align 2, !tbaa !132
  switch i16 %23, label %29 [
    i16 0, label %24
    i16 1, label %26
    i16 2, label %28
  ]

24:                                               ; preds = %20
  store float %10, ptr %0, align 4, !tbaa !247
  store i16 1, ptr %7, align 4, !tbaa !475
  %25 = getelementptr inbounds %struct.PaintWavePoint, ptr %0, i64 0, i32 1
  store float 0.000000e+00, ptr %25, align 4, !tbaa !478
  br label %35

26:                                               ; preds = %20
  %27 = getelementptr inbounds %struct.PaintWavePoint, ptr %0, i64 0, i32 1
  store float %10, ptr %27, align 4, !tbaa !478
  br label %35

28:                                               ; preds = %20
  store i16 2, ptr %7, align 4, !tbaa !475
  br label %35

29:                                               ; preds = %20
  %30 = icmp eq i16 %23, 3
  %31 = fcmp olt float %6, 0.000000e+00
  %32 = select i1 %30, i1 %31, i1 false
  br i1 %32, label %33, label %35

33:                                               ; preds = %29
  %34 = tail call float @llvm.fmuladd.f32(float %6, float %9, float %21)
  store float %34, ptr %0, align 4, !tbaa !247
  br label %35

35:                                               ; preds = %17, %15, %24, %28, %33, %29, %26
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @dynamicPaint_brushObjectCalculateVelocity(ptr noundef %0, ptr noundef %1, ptr nocapture noundef %2, float noundef %3) unnamed_addr #4 !PGOFuncName !519 {
  %5 = alloca [4 x [4 x float]], align 16
  %6 = alloca [3 x float], align 4
  %7 = alloca [3 x float], align 4
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %5) #27
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %6) #27
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %6, i8 0, i64 12, i1 false)
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %7) #27
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %7, i8 0, i64 12, i1 false)
  %8 = getelementptr inbounds %struct.Scene, ptr %0, i64 0, i32 22, i32 8
  %9 = load float, ptr %8, align 4, !tbaa !305
  %10 = getelementptr inbounds %struct.Scene, ptr %0, i64 0, i32 22, i32 5
  %11 = load i32, ptr %10, align 8, !tbaa !195
  %12 = fsub float %9, %3
  %13 = fcmp olt float %12, 0.000000e+00
  %14 = fadd float %12, 1.000000e+00
  %15 = select i1 %13, float %14, float %12
  %16 = sext i1 %13 to i32
  %17 = add nsw i32 %11, %16
  store i32 %17, ptr %10, align 8, !tbaa !195
  store float %15, ptr %8, align 4, !tbaa !305
  %18 = tail call float @BKE_scene_frame_get(ptr noundef %0) #26
  %19 = tail call fastcc i32 @subframe_updateObject(ptr noundef %0, ptr noundef %1, i32 noundef 0, i32 noundef 5, float noundef %18) #25, !range !175
  %20 = getelementptr inbounds %struct.Object, ptr %1, i64 0, i32 47
  call void @copy_m4_m4(ptr noundef nonnull %5, ptr noundef nonnull %20) #26
  store i32 %11, ptr %10, align 8, !tbaa !195
  store float %9, ptr %8, align 4, !tbaa !305
  %21 = call float @BKE_scene_frame_get(ptr noundef %0) #26
  %22 = call fastcc i32 @subframe_updateObject(ptr noundef %0, ptr noundef %1, i32 noundef 0, i32 noundef 5, float noundef %21) #25, !range !175
  call void @mul_m4_v3(ptr noundef nonnull %5, ptr noundef nonnull %7) #26
  call void @mul_m4_v3(ptr noundef nonnull %20, ptr noundef nonnull %6) #26
  call fastcc void @sub_v3_v3v3(ptr noundef %2, ptr noundef nonnull %6, ptr noundef nonnull %7) #25
  %23 = fdiv float 1.000000e+00, %3
  call fastcc void @mul_v3_fl(ptr noundef %2, float noundef %23) #25
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %7) #27
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %6) #27
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %5) #27
  ret void
}

; Function Attrs: mustprogress nofree noinline nounwind optsize willreturn memory(write, argmem: readwrite) uwtable
define internal fastcc float @len_v3v3(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) unnamed_addr #15 !PGOFuncName !520 {
  %3 = alloca [3 x float], align 4
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %3) #27
  call fastcc void @sub_v3_v3v3(ptr noundef nonnull %3, ptr noundef %1, ptr noundef %0) #25
  %4 = call fastcc float @len_v3(ptr noundef nonnull %3) #25
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %3) #27
  ret float %4
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @dynamicPaint_doMaterialTex(ptr nocapture noundef readonly %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4, ptr noundef %5, i32 noundef %6, i16 noundef signext %7, ptr noundef %8) unnamed_addr #4 !PGOFuncName !521 {
  %10 = load ptr, ptr %0, align 8, !tbaa !423
  %11 = getelementptr inbounds %struct.DerivedMesh, ptr %8, i64 0, i32 33
  %12 = load ptr, ptr %11, align 8, !tbaa !151
  %13 = tail call ptr %12(ptr noundef %8) #26
  %14 = icmp eq ptr %10, null
  br i1 %14, label %15, label %32

15:                                               ; preds = %9
  %16 = getelementptr inbounds %struct.BrushMaterials, ptr %0, i64 0, i32 1
  %17 = load ptr, ptr %16, align 8, !tbaa !419
  %18 = icmp eq ptr %17, null
  br i1 %18, label %34, label %19

19:                                               ; preds = %15
  %20 = sext i32 %6 to i64
  %21 = getelementptr inbounds %struct.MFace, ptr %13, i64 %20, i32 4
  %22 = load i16, ptr %21, align 4, !tbaa !522
  %23 = tail call ptr @give_totcolp(ptr noundef %3) #26
  %24 = load i16, ptr %23, align 2, !tbaa !139
  %25 = icmp slt i16 %22, %24
  br i1 %25, label %26, label %34

26:                                               ; preds = %19
  %27 = load ptr, ptr %16, align 8, !tbaa !419
  %28 = sext i16 %22 to i64
  %29 = getelementptr inbounds ptr, ptr %27, i64 %28
  %30 = load ptr, ptr %29, align 8, !tbaa !44
  %31 = icmp eq ptr %30, null
  br i1 %31, label %34, label %32

32:                                               ; preds = %26, %9
  %33 = phi ptr [ %30, %26 ], [ %10, %9 ]
  tail call void @RE_sample_material_color(ptr noundef nonnull %33, ptr noundef %1, ptr noundef %2, ptr noundef %4, ptr noundef %5, i32 noundef %6, i16 noundef signext %7, ptr noundef nonnull %8, ptr noundef %3) #26
  br label %34

34:                                               ; preds = %19, %15, %26, %32
  ret void
}

; Function Attrs: optsize
declare void @RE_sample_material_color(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef, i16 noundef signext, ptr noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @dynamicPaint_brushMeshCalculateVelocity(ptr noundef %0, ptr noundef %1, ptr nocapture noundef readonly %2, ptr nocapture noundef %3, float noundef %4) unnamed_addr #4 !PGOFuncName !523 {
  %6 = alloca [4 x [4 x float]], align 16
  %7 = alloca [3 x float], align 4
  %8 = alloca [3 x float], align 4
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %6) #27
  %9 = getelementptr inbounds %struct.Scene, ptr %0, i64 0, i32 22, i32 8
  %10 = load float, ptr %9, align 4, !tbaa !305
  %11 = getelementptr inbounds %struct.Scene, ptr %0, i64 0, i32 22, i32 5
  %12 = load i32, ptr %11, align 8, !tbaa !195
  %13 = fsub float %10, %4
  %14 = fcmp olt float %13, 0.000000e+00
  %15 = fadd float %13, 1.000000e+00
  %16 = select i1 %14, float %15, float %13
  %17 = sext i1 %14 to i32
  %18 = add nsw i32 %12, %17
  store i32 %18, ptr %11, align 8, !tbaa !195
  store float %16, ptr %9, align 4, !tbaa !305
  %19 = tail call float @BKE_scene_frame_get(ptr noundef %0) #26
  %20 = tail call fastcc i32 @subframe_updateObject(ptr noundef %0, ptr noundef %1, i32 noundef 2, i32 noundef 5, float noundef %19) #25, !range !175
  %21 = getelementptr inbounds %struct.DynamicPaintBrushSettings, ptr %2, i64 0, i32 1
  %22 = load ptr, ptr %21, align 8, !tbaa !67
  %23 = tail call ptr @CDDM_copy(ptr noundef %22) #26
  %24 = getelementptr inbounds %struct.DerivedMesh, ptr %23, i64 0, i32 23
  %25 = load ptr, ptr %24, align 8, !tbaa !172
  %26 = tail call i32 %25(ptr noundef %23) #26
  %27 = getelementptr inbounds %struct.DerivedMesh, ptr %23, i64 0, i32 31
  %28 = load ptr, ptr %27, align 8, !tbaa !246
  %29 = tail call ptr %28(ptr noundef %23) #26
  %30 = getelementptr inbounds %struct.Object, ptr %1, i64 0, i32 47
  call void @copy_m4_m4(ptr noundef nonnull %6, ptr noundef nonnull %30) #26
  store i32 %12, ptr %11, align 8, !tbaa !195
  store float %10, ptr %9, align 4, !tbaa !305
  %31 = call float @BKE_scene_frame_get(ptr noundef %0) #26
  %32 = call fastcc i32 @subframe_updateObject(ptr noundef %0, ptr noundef %1, i32 noundef 2, i32 noundef 5, float noundef %31) #25, !range !175
  %33 = load ptr, ptr %21, align 8, !tbaa !67
  %34 = getelementptr inbounds %struct.DerivedMesh, ptr %33, i64 0, i32 23
  %35 = load ptr, ptr %34, align 8, !tbaa !172
  %36 = call i32 %35(ptr noundef %33) #26
  %37 = load ptr, ptr %27, align 8, !tbaa !246
  %38 = call ptr %37(ptr noundef %33) #26
  %39 = load ptr, ptr @MEM_mallocN, align 8, !tbaa !44
  %40 = sext i32 %36 to i64
  %41 = mul nsw i64 %40, 12
  %42 = call ptr %39(i64 noundef %41, ptr noundef nonnull @.str.55) #26
  store ptr %42, ptr %3, align 8, !tbaa !44
  %43 = icmp eq ptr %42, null
  br i1 %43, label %64, label %44

44:                                               ; preds = %5
  %45 = icmp eq i32 %26, %36
  %46 = select i1 %45, ptr %29, ptr %38
  %47 = icmp sgt i32 %36, 0
  br i1 %47, label %48, label %61

48:                                               ; preds = %44
  %49 = fdiv float 1.000000e+00, %4
  %50 = zext nneg i32 %36 to i64
  br label %51

51:                                               ; preds = %48, %51
  %52 = phi i64 [ 0, %48 ], [ %59, %51 ]
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %7) #27
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %8) #27
  %53 = getelementptr inbounds %struct.MVert, ptr %46, i64 %52
  call fastcc void @copy_v3_v3(ptr noundef nonnull %7, ptr noundef %53) #25
  call void @mul_m4_v3(ptr noundef nonnull %6, ptr noundef nonnull %7) #26
  %54 = getelementptr inbounds %struct.MVert, ptr %38, i64 %52
  call fastcc void @copy_v3_v3(ptr noundef nonnull %8, ptr noundef %54) #25
  call void @mul_m4_v3(ptr noundef nonnull %30, ptr noundef nonnull %8) #26
  %55 = load ptr, ptr %3, align 8, !tbaa !44
  %56 = getelementptr inbounds %struct.Vec3f, ptr %55, i64 %52
  call fastcc void @sub_v3_v3v3(ptr noundef %56, ptr noundef nonnull %8, ptr noundef nonnull %7) #25
  %57 = load ptr, ptr %3, align 8, !tbaa !44
  %58 = getelementptr inbounds %struct.Vec3f, ptr %57, i64 %52
  call fastcc void @mul_v3_fl(ptr noundef %58, float noundef %49) #25
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %8) #27
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %7) #27
  %59 = add nuw nsw i64 %52, 1
  %60 = icmp eq i64 %59, %50
  br i1 %60, label %61, label %51, !llvm.loop !524

61:                                               ; preds = %51, %44
  %62 = getelementptr inbounds %struct.DerivedMesh, ptr %23, i64 0, i32 95
  %63 = load ptr, ptr %62, align 8, !tbaa !69
  call void %63(ptr noundef %23) #26
  br label %64

64:                                               ; preds = %5, %61
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %6) #27
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @add_v3_v3(ptr nocapture noundef %0, ptr nocapture noundef readonly %1) unnamed_addr #7 !PGOFuncName !525 {
  %3 = load float, ptr %1, align 4, !tbaa !116
  %4 = load float, ptr %0, align 4, !tbaa !116
  %5 = fadd float %3, %4
  store float %5, ptr %0, align 4, !tbaa !116
  %6 = getelementptr inbounds float, ptr %1, i64 1
  %7 = load float, ptr %6, align 4, !tbaa !116
  %8 = getelementptr inbounds float, ptr %0, i64 1
  %9 = load float, ptr %8, align 4, !tbaa !116
  %10 = fadd float %7, %9
  store float %10, ptr %8, align 4, !tbaa !116
  %11 = getelementptr inbounds float, ptr %1, i64 2
  %12 = load float, ptr %11, align 4, !tbaa !116
  %13 = getelementptr inbounds float, ptr %0, i64 2
  %14 = load float, ptr %13, align 4, !tbaa !116
  %15 = fadd float %12, %14
  store float %15, ptr %13, align 4, !tbaa !116
  ret void
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(argmem: read) uwtable
define internal fastcc noundef i32 @meshBrush_boundsIntersect(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2, float noundef %3) unnamed_addr #21 !PGOFuncName !526 {
  %5 = getelementptr inbounds %struct.DynamicPaintBrushSettings, ptr %2, i64 0, i32 5
  %6 = load i32, ptr %5, align 4, !tbaa !129
  switch i32 %6, label %11 [
    i32 0, label %7
    i32 1, label %9
    i32 2, label %9
  ]

7:                                                ; preds = %4
  %8 = tail call fastcc i32 @boundsIntersect(ptr noundef %0, ptr noundef %1) #25, !range !175
  br label %11

9:                                                ; preds = %4, %4
  %10 = tail call fastcc i32 @boundsIntersectDist(ptr noundef %0, ptr noundef %1, float noundef %3) #25, !range !175
  br label %11

11:                                               ; preds = %4, %9, %7
  %12 = phi i32 [ %8, %7 ], [ %10, %9 ], [ 1, %4 ]
  ret i32 %12
}

; Function Attrs: optsize
declare ptr @bvhtree_from_mesh_faces(ptr noundef, ptr noundef, float noundef, i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @add_v3_fl(ptr nocapture noundef %0) unnamed_addr #7 !PGOFuncName !527 {
  %2 = load <2 x float>, ptr %0, align 4, !tbaa !116
  %3 = fadd <2 x float> %2, <float 0x3F50624DE0000000, float 0x3F50624DE0000000>
  store <2 x float> %3, ptr %0, align 4, !tbaa !116
  %4 = getelementptr inbounds float, ptr %0, i64 2
  %5 = load float, ptr %4, align 4, !tbaa !116
  %6 = fadd float %5, 0x3F50624DE0000000
  store float %6, ptr %4, align 4, !tbaa !116
  ret void
}

; Function Attrs: optsize
declare i32 @BLI_bvhtree_ray_cast(ptr noundef, ptr noundef, ptr noundef, float noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: noinline nounwind optsize uwtable
define internal void @mesh_faces_spherecast_dp(ptr nocapture noundef readonly %0, i32 noundef %1, ptr noundef %2, ptr nocapture noundef %3) #4 !PGOFuncName !528 {
  %5 = getelementptr inbounds %struct.BVHTreeFromMesh, ptr %0, i64 0, i32 3
  %6 = load ptr, ptr %5, align 8, !tbaa !529
  %7 = getelementptr inbounds %struct.BVHTreeFromMesh, ptr %0, i64 0, i32 5
  %8 = load ptr, ptr %7, align 8, !tbaa !530
  %9 = sext i32 %1 to i64
  %10 = getelementptr inbounds %struct.MFace, ptr %8, i64 %9
  %11 = load i32, ptr %10, align 4, !tbaa !256
  %12 = zext i32 %11 to i64
  %13 = getelementptr inbounds %struct.MVert, ptr %6, i64 %12
  %14 = getelementptr inbounds %struct.MFace, ptr %8, i64 %9, i32 1
  %15 = load i32, ptr %14, align 4, !tbaa !280
  %16 = zext i32 %15 to i64
  %17 = getelementptr inbounds %struct.MVert, ptr %6, i64 %16
  %18 = getelementptr inbounds %struct.MFace, ptr %8, i64 %9, i32 2
  %19 = load i32, ptr %18, align 4, !tbaa !281
  %20 = zext i32 %19 to i64
  %21 = getelementptr inbounds %struct.MVert, ptr %6, i64 %20
  %22 = getelementptr inbounds %struct.MFace, ptr %8, i64 %9, i32 3
  %23 = load i32, ptr %22, align 4, !tbaa !153
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
  %35 = load float, ptr %28, align 4, !tbaa !452
  %36 = tail call float @bvhtree_ray_tri_intersection(ptr noundef %2, float noundef %35, ptr noundef %13, ptr noundef %31, ptr noundef %32) #26
  %37 = fcmp ult float %36, 0.000000e+00
  br i1 %37, label %42, label %38

38:                                               ; preds = %30
  %39 = load float, ptr %28, align 4, !tbaa !452
  %40 = fcmp olt float %36, %39
  br i1 %40, label %41, label %42

41:                                               ; preds = %38
  store i32 %1, ptr %3, align 4, !tbaa !450
  store float %36, ptr %28, align 4, !tbaa !452
  store float %34, ptr %29, align 4, !tbaa !116
  br label %42

42:                                               ; preds = %41, %38, %30
  %43 = icmp eq ptr %33, null
  br i1 %43, label %44, label %30, !llvm.loop !531

44:                                               ; preds = %42
  ret void
}

; Function Attrs: optsize
declare float @normal_tri_v3(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @madd_v3_v3v3fl(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2, float noundef %3) unnamed_addr #7 !PGOFuncName !532 {
  %5 = load float, ptr %1, align 4, !tbaa !116
  %6 = load float, ptr %2, align 4, !tbaa !116
  %7 = tail call float @llvm.fmuladd.f32(float %6, float %3, float %5)
  store float %7, ptr %0, align 4, !tbaa !116
  %8 = getelementptr inbounds float, ptr %1, i64 1
  %9 = load float, ptr %8, align 4, !tbaa !116
  %10 = getelementptr inbounds float, ptr %2, i64 1
  %11 = load float, ptr %10, align 4, !tbaa !116
  %12 = tail call float @llvm.fmuladd.f32(float %11, float %3, float %9)
  %13 = getelementptr inbounds float, ptr %0, i64 1
  store float %12, ptr %13, align 4, !tbaa !116
  %14 = getelementptr inbounds float, ptr %1, i64 2
  %15 = load float, ptr %14, align 4, !tbaa !116
  %16 = getelementptr inbounds float, ptr %2, i64 2
  %17 = load float, ptr %16, align 4, !tbaa !116
  %18 = tail call float @llvm.fmuladd.f32(float %17, float %3, float %15)
  %19 = getelementptr inbounds float, ptr %0, i64 2
  store float %18, ptr %19, align 4, !tbaa !116
  ret void
}

; Function Attrs: optsize
declare i32 @BLI_bvhtree_find_nearest(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: noinline nounwind optsize uwtable
define internal void @mesh_faces_nearest_point_dp(ptr nocapture noundef readonly %0, i32 noundef %1, ptr noundef %2, ptr nocapture noundef %3) #4 !PGOFuncName !533 {
  %5 = alloca [3 x float], align 4
  %6 = getelementptr inbounds %struct.BVHTreeFromMesh, ptr %0, i64 0, i32 3
  %7 = load ptr, ptr %6, align 8, !tbaa !529
  %8 = getelementptr inbounds %struct.BVHTreeFromMesh, ptr %0, i64 0, i32 5
  %9 = load ptr, ptr %8, align 8, !tbaa !530
  %10 = sext i32 %1 to i64
  %11 = getelementptr inbounds %struct.MFace, ptr %9, i64 %10
  %12 = load i32, ptr %11, align 4, !tbaa !256
  %13 = zext i32 %12 to i64
  %14 = getelementptr inbounds %struct.MVert, ptr %7, i64 %13
  %15 = getelementptr inbounds %struct.MFace, ptr %9, i64 %10, i32 1
  %16 = load i32, ptr %15, align 4, !tbaa !280
  %17 = zext i32 %16 to i64
  %18 = getelementptr inbounds %struct.MVert, ptr %7, i64 %17
  %19 = getelementptr inbounds %struct.MFace, ptr %9, i64 %10, i32 2
  %20 = load i32, ptr %19, align 4, !tbaa !281
  %21 = zext i32 %20 to i64
  %22 = getelementptr inbounds %struct.MVert, ptr %7, i64 %21
  %23 = getelementptr inbounds %struct.MFace, ptr %9, i64 %10, i32 3
  %24 = load i32, ptr %23, align 4, !tbaa !153
  %25 = icmp eq i32 %24, 0
  %26 = zext i32 %24 to i64
  %27 = getelementptr inbounds %struct.MVert, ptr %7, i64 %26
  %28 = select i1 %25, ptr null, ptr %27
  %29 = getelementptr inbounds %struct.BVHTreeNearest, ptr %3, i64 0, i32 3
  %30 = getelementptr inbounds %struct.BVHTreeNearest, ptr %3, i64 0, i32 1
  %31 = getelementptr inbounds %struct.BVHTreeNearest, ptr %3, i64 0, i32 2
  br label %32

32:                                               ; preds = %41, %4
  %33 = phi ptr [ %18, %4 ], [ %34, %41 ]
  %34 = phi ptr [ %22, %4 ], [ %35, %41 ]
  %35 = phi ptr [ %28, %4 ], [ null, %41 ]
  %36 = phi float [ 0.000000e+00, %4 ], [ 1.000000e+00, %41 ]
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %5) #27
  call void @closest_on_tri_to_point_v3(ptr noundef nonnull %5, ptr noundef %2, ptr noundef %14, ptr noundef %33, ptr noundef %34) #26
  %37 = call fastcc float @len_squared_v3v3(ptr noundef %2, ptr noundef nonnull %5) #25
  %38 = load float, ptr %29, align 4, !tbaa !455
  %39 = fcmp olt float %37, %38
  br i1 %39, label %40, label %41

40:                                               ; preds = %32
  store i32 %1, ptr %3, align 4, !tbaa !453
  store float %37, ptr %29, align 4, !tbaa !455
  call fastcc void @copy_v3_v3(ptr noundef nonnull %30, ptr noundef nonnull %5) #25
  store float %36, ptr %31, align 4, !tbaa !116
  br label %41

41:                                               ; preds = %40, %32
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %5) #27
  %42 = icmp eq ptr %35, null
  br i1 %42, label %43, label %32, !llvm.loop !534

43:                                               ; preds = %41
  ret void
}

; Function Attrs: optsize
declare void @interp_weights_face_v3(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: optsize
declare void @free_bvhtree_from_mesh(ptr noundef) local_unnamed_addr #5

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(argmem: read) uwtable
define internal fastcc noundef i32 @boundsIntersect(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) unnamed_addr #21 !PGOFuncName !535 {
  %3 = load i32, ptr %0, align 4, !tbaa !357
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %24, label %5

5:                                                ; preds = %2
  %6 = load i32, ptr %1, align 4, !tbaa !357
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %24, label %11

8:                                                ; preds = %18
  %9 = add nsw i64 %12, -1
  %10 = icmp eq i64 %12, 0
  br i1 %10, label %24, label %11, !llvm.loop !536

11:                                               ; preds = %5, %8
  %12 = phi i64 [ %9, %8 ], [ 2, %5 ]
  %13 = getelementptr inbounds %struct.Bounds3D, ptr %0, i64 0, i32 1, i64 %12
  %14 = load float, ptr %13, align 4, !tbaa !116
  %15 = getelementptr inbounds %struct.Bounds3D, ptr %1, i64 0, i32 2, i64 %12
  %16 = load float, ptr %15, align 4, !tbaa !116
  %17 = fcmp ugt float %14, %16
  br i1 %17, label %24, label %18

18:                                               ; preds = %11
  %19 = getelementptr inbounds %struct.Bounds3D, ptr %0, i64 0, i32 2, i64 %12
  %20 = load float, ptr %19, align 4, !tbaa !116
  %21 = getelementptr inbounds %struct.Bounds3D, ptr %1, i64 0, i32 1, i64 %12
  %22 = load float, ptr %21, align 4, !tbaa !116
  %23 = fcmp ult float %20, %22
  br i1 %23, label %24, label %8

24:                                               ; preds = %8, %11, %18, %2, %5
  %25 = phi i32 [ 0, %5 ], [ 0, %2 ], [ 1, %8 ], [ 0, %11 ], [ 0, %18 ]
  ret i32 %25
}

; Function Attrs: optsize
declare float @bvhtree_ray_tri_intersection(ptr noundef, float noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: optsize
declare void @closest_on_tri_to_point_v3(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc float @len_squared_v3v3(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) unnamed_addr #7 !PGOFuncName !537 {
  %3 = alloca [3 x float], align 4
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %3) #27
  call fastcc void @sub_v3_v3v3(ptr noundef nonnull %3, ptr noundef %1, ptr noundef %0) #25
  %4 = call fastcc float @dot_v3v3(ptr noundef nonnull %3, ptr noundef nonnull %3) #25
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %3) #27
  ret float %4
}

; Function Attrs: optsize
declare void @RE_free_sample_material(ptr noundef) local_unnamed_addr #5

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.ceil.f64(double) #12

; Function Attrs: nofree noinline nounwind optsize memory(readwrite, inaccessiblemem: write) uwtable
define internal fastcc void @surface_determineForceTargetPoints(ptr nocapture noundef readonly %0, i32 noundef %1, ptr nocapture noundef readonly %2, ptr nocapture noundef %3, ptr nocapture noundef %4) unnamed_addr #20 !PGOFuncName !538 {
  %6 = alloca [3 x float], align 4
  %7 = alloca [3 x float], align 4
  %8 = getelementptr inbounds %struct.PaintSurfaceData, ptr %0, i64 0, i32 3
  %9 = load ptr, ptr %8, align 8, !tbaa !89
  %10 = getelementptr inbounds %struct.PaintBakeData, ptr %9, i64 0, i32 5
  %11 = load ptr, ptr %10, align 8, !tbaa !97
  %12 = getelementptr inbounds %struct.PaintSurfaceData, ptr %0, i64 0, i32 2
  %13 = load ptr, ptr %12, align 8, !tbaa !82
  %14 = getelementptr inbounds %struct.PaintAdjData, ptr %13, i64 0, i32 2
  %15 = load ptr, ptr %14, align 8, !tbaa !85
  %16 = sext i32 %1 to i64
  %17 = getelementptr inbounds i32, ptr %15, i64 %16
  %18 = load i32, ptr %17, align 4, !tbaa !122
  %19 = getelementptr inbounds i32, ptr %4, i64 1
  store i32 -1, ptr %19, align 4, !tbaa !122
  store i32 -1, ptr %4, align 4, !tbaa !122
  %20 = getelementptr inbounds float, ptr %3, i64 1
  store <2 x float> <float -1.000000e+00, float -1.000000e+00>, ptr %3, align 4, !tbaa !116
  %21 = icmp sgt i32 %18, 0
  br i1 %21, label %22, label %115

22:                                               ; preds = %5
  %23 = getelementptr inbounds %struct.PaintAdjData, ptr %13, i64 0, i32 1
  %24 = load ptr, ptr %23, align 8, !tbaa !83
  %25 = getelementptr inbounds i32, ptr %24, i64 %16
  br label %26

26:                                               ; preds = %22, %39
  %27 = phi i32 [ -1, %22 ], [ %40, %39 ]
  %28 = phi float [ -1.000000e+00, %22 ], [ %41, %39 ]
  %29 = phi i32 [ 0, %22 ], [ %42, %39 ]
  %30 = load i32, ptr %25, align 4, !tbaa !122
  %31 = add nsw i32 %30, %29
  %32 = sext i32 %31 to i64
  %33 = getelementptr inbounds %struct.BakeAdjPoint, ptr %11, i64 %32
  %34 = tail call fastcc float @dot_v3v3(ptr noundef %33, ptr noundef %2) #25
  %35 = fcmp ogt float %34, %28
  %36 = fcmp ogt float %34, 0.000000e+00
  %37 = and i1 %36, %35
  br i1 %37, label %38, label %39

38:                                               ; preds = %26
  store float %34, ptr %3, align 4, !tbaa !116
  store i32 %31, ptr %4, align 4, !tbaa !122
  br label %39

39:                                               ; preds = %38, %26
  %40 = phi i32 [ %31, %38 ], [ %27, %26 ]
  %41 = phi float [ %34, %38 ], [ %28, %26 ]
  %42 = add nuw nsw i32 %29, 1
  %43 = icmp eq i32 %42, %18
  br i1 %43, label %44, label %26, !llvm.loop !539

44:                                               ; preds = %39
  %45 = fcmp olt float %41, 0.000000e+00
  br i1 %45, label %115, label %46

46:                                               ; preds = %44
  br i1 %21, label %47, label %111

47:                                               ; preds = %46
  %48 = getelementptr inbounds %struct.PaintAdjData, ptr %13, i64 0, i32 1
  %49 = load ptr, ptr %48, align 8, !tbaa !83
  %50 = getelementptr inbounds i32, ptr %49, i64 %16
  %51 = sext i32 %40 to i64
  %52 = getelementptr inbounds %struct.BakeAdjPoint, ptr %11, i64 %51
  br label %53

53:                                               ; preds = %47, %71
  %54 = phi i32 [ -1, %47 ], [ %72, %71 ]
  %55 = phi float [ -1.000000e+00, %47 ], [ %73, %71 ]
  %56 = phi i32 [ 0, %47 ], [ %74, %71 ]
  %57 = load i32, ptr %50, align 4, !tbaa !122
  %58 = add nsw i32 %57, %56
  %59 = sext i32 %58 to i64
  %60 = getelementptr inbounds %struct.BakeAdjPoint, ptr %11, i64 %59
  %61 = tail call fastcc float @dot_v3v3(ptr noundef %60, ptr noundef %2) #25
  %62 = icmp ne i32 %58, %40
  %63 = fcmp ogt float %61, %55
  %64 = select i1 %62, i1 %63, i1 false
  br i1 %64, label %65, label %71

65:                                               ; preds = %53
  %66 = tail call fastcc float @dot_v3v3(ptr noundef %60, ptr noundef %52) #25
  %67 = fcmp olt float %66, %41
  %68 = fcmp ogt float %61, 0.000000e+00
  %69 = select i1 %67, i1 %68, i1 false
  br i1 %69, label %70, label %71

70:                                               ; preds = %65
  store float %61, ptr %20, align 4, !tbaa !116
  store i32 %58, ptr %19, align 4, !tbaa !122
  br label %71

71:                                               ; preds = %65, %70, %53
  %72 = phi i32 [ %54, %65 ], [ %58, %70 ], [ %54, %53 ]
  %73 = phi float [ %55, %65 ], [ %61, %70 ], [ %55, %53 ]
  %74 = add nuw nsw i32 %56, 1
  %75 = icmp eq i32 %74, %18
  br i1 %75, label %76, label %53, !llvm.loop !540

76:                                               ; preds = %71
  %77 = icmp eq i32 %72, -1
  br i1 %77, label %111, label %78

78:                                               ; preds = %76
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %6) #27
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %7) #27
  %79 = sext i32 %40 to i64
  %80 = getelementptr inbounds %struct.BakeAdjPoint, ptr %11, i64 %79
  %81 = sext i32 %72 to i64
  %82 = getelementptr inbounds %struct.BakeAdjPoint, ptr %11, i64 %81
  %83 = tail call fastcc float @dot_v3v3(ptr noundef %80, ptr noundef %82) #25
  %84 = tail call float @acosf(float noundef %83) #26
  %85 = load i32, ptr %4, align 4, !tbaa !122
  %86 = sext i32 %85 to i64
  %87 = getelementptr inbounds %struct.BakeAdjPoint, ptr %11, i64 %86
  %88 = load i32, ptr %19, align 4, !tbaa !122
  %89 = sext i32 %88 to i64
  %90 = getelementptr inbounds %struct.BakeAdjPoint, ptr %11, i64 %89
  call fastcc void @cross_v3_v3v3(ptr noundef nonnull %7, ptr noundef %87, ptr noundef %90) #25
  call fastcc void @normalize_v3(ptr noundef nonnull %7) #25
  %91 = call fastcc float @dot_v3v3(ptr noundef %2, ptr noundef nonnull %7) #25
  %92 = fneg float %91
  call fastcc void @madd_v3_v3v3fl(ptr noundef nonnull %6, ptr noundef %2, ptr noundef nonnull %7, float noundef %92) #25
  call fastcc void @normalize_v3(ptr noundef nonnull %6) #25
  %93 = load i32, ptr %4, align 4, !tbaa !122
  %94 = sext i32 %93 to i64
  %95 = getelementptr inbounds %struct.BakeAdjPoint, ptr %11, i64 %94
  %96 = call fastcc float @dot_v3v3(ptr noundef %95, ptr noundef nonnull %6) #25
  %97 = fcmp olt float %96, -1.000000e+00
  br i1 %97, label %101, label %98

98:                                               ; preds = %78
  %99 = fcmp ogt float %96, 1.000000e+00
  br i1 %99, label %100, label %101

100:                                              ; preds = %98
  br label %101

101:                                              ; preds = %78, %98, %100
  %102 = phi float [ 1.000000e+00, %100 ], [ %96, %98 ], [ -1.000000e+00, %78 ]
  %103 = tail call float @acosf(float noundef %102) #26
  %104 = fdiv float %103, %84
  store float %104, ptr %20, align 4, !tbaa !116
  %105 = fsub float 1.000000e+00, %104
  store float %105, ptr %3, align 4, !tbaa !116
  %106 = tail call float @llvm.fabs.f32(float %91)
  %107 = fcmp ogt float %106, 1.000000e+00
  %108 = select i1 %107, float 1.000000e+00, float %106
  %109 = tail call float @acosf(float noundef %108) #26
  %110 = fdiv float %109, 0x3FF921FB60000000
  tail call fastcc void @mul_v2_fl(ptr noundef nonnull %3, float noundef %110) #25
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %7) #27
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %6) #27
  br label %115

111:                                              ; preds = %46, %76
  %112 = tail call float @acosf(float noundef %41) #26
  %113 = fdiv float %112, 0x3FF921FB60000000
  %114 = fsub float 1.000000e+00, %113
  store float %114, ptr %3, align 4, !tbaa !116
  br label %115

115:                                              ; preds = %5, %101, %111, %44
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc noundef float @mixColors(ptr noundef %0, float noundef %1, ptr noundef %2, float noundef %3, float noundef %4) unnamed_addr #4 !PGOFuncName !541 {
  %6 = fcmp une float %3, 0.000000e+00
  br i1 %6, label %7, label %15

7:                                                ; preds = %5
  %8 = fcmp une float %1, 0.000000e+00
  br i1 %8, label %11, label %9

9:                                                ; preds = %7
  tail call fastcc void @copy_v3_v3(ptr noundef %0, ptr noundef %2) #25
  %10 = fmul float %3, %4
  br label %30

11:                                               ; preds = %7
  %12 = fadd float %1, %3
  %13 = fdiv float %3, %12
  %14 = fcmp ugt float %4, 5.000000e-01
  br i1 %14, label %21, label %18

15:                                               ; preds = %5
  %16 = fsub float 1.000000e+00, %4
  %17 = fmul float %16, %1
  br label %30

18:                                               ; preds = %11
  %19 = fmul float %4, 2.000000e+00
  %20 = fmul float %13, %19
  br label %25

21:                                               ; preds = %11
  %22 = tail call float @llvm.fmuladd.f32(float %4, float 2.000000e+00, float -1.000000e+00)
  %23 = fsub float 1.000000e+00, %22
  %24 = tail call float @llvm.fmuladd.f32(float %13, float %23, float %22)
  br label %25

25:                                               ; preds = %21, %18
  %26 = phi float [ %20, %18 ], [ %24, %21 ]
  tail call void @interp_v3_v3v3(ptr noundef %0, ptr noundef %0, ptr noundef %2, float noundef %26) #26
  %27 = fsub float 1.000000e+00, %26
  %28 = fmul float %26, %3
  %29 = tail call float @llvm.fmuladd.f32(float %27, float %1, float %28)
  br label %30

30:                                               ; preds = %25, %15, %9
  %31 = phi float [ %29, %25 ], [ %10, %9 ], [ %17, %15 ]
  ret float %31
}

; Function Attrs: mustprogress nofree nounwind optsize willreturn memory(write)
declare float @acosf(float noundef) local_unnamed_addr #16

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @cross_v3_v3v3(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2) unnamed_addr #7 !PGOFuncName !542 {
  %4 = getelementptr inbounds float, ptr %1, i64 1
  %5 = load float, ptr %4, align 4, !tbaa !116
  %6 = getelementptr inbounds float, ptr %2, i64 2
  %7 = load float, ptr %6, align 4, !tbaa !116
  %8 = getelementptr inbounds float, ptr %1, i64 2
  %9 = load float, ptr %8, align 4, !tbaa !116
  %10 = getelementptr inbounds float, ptr %2, i64 1
  %11 = load float, ptr %10, align 4, !tbaa !116
  %12 = fneg float %9
  %13 = fmul float %11, %12
  %14 = tail call float @llvm.fmuladd.f32(float %5, float %7, float %13)
  store float %14, ptr %0, align 4, !tbaa !116
  %15 = load float, ptr %8, align 4, !tbaa !116
  %16 = load float, ptr %2, align 4, !tbaa !116
  %17 = load float, ptr %1, align 4, !tbaa !116
  %18 = load float, ptr %6, align 4, !tbaa !116
  %19 = fneg float %17
  %20 = fmul float %18, %19
  %21 = tail call float @llvm.fmuladd.f32(float %15, float %16, float %20)
  %22 = getelementptr inbounds float, ptr %0, i64 1
  store float %21, ptr %22, align 4, !tbaa !116
  %23 = load float, ptr %1, align 4, !tbaa !116
  %24 = load float, ptr %10, align 4, !tbaa !116
  %25 = load float, ptr %4, align 4, !tbaa !116
  %26 = load float, ptr %2, align 4, !tbaa !116
  %27 = fneg float %25
  %28 = fmul float %26, %27
  %29 = tail call float @llvm.fmuladd.f32(float %23, float %24, float %28)
  %30 = getelementptr inbounds float, ptr %0, i64 2
  store float %29, ptr %30, align 4, !tbaa !116
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fabs.f32(float) #12

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define internal fastcc noundef float @getSurfaceDimension(ptr nocapture noundef readonly %0) unnamed_addr #18 !PGOFuncName !543 {
  %2 = getelementptr inbounds %struct.PaintSurfaceData, ptr %0, i64 0, i32 3
  %3 = load ptr, ptr %2, align 8, !tbaa !89
  %4 = getelementptr inbounds %struct.PaintBakeData, ptr %3, i64 0, i32 4, i32 2
  %5 = load float, ptr %4, align 4, !tbaa !116
  %6 = getelementptr inbounds %struct.PaintBakeData, ptr %3, i64 0, i32 4, i32 1
  %7 = load float, ptr %6, align 4, !tbaa !116
  %8 = fsub float %5, %7
  %9 = getelementptr inbounds %struct.PaintBakeData, ptr %3, i64 0, i32 4, i32 2, i64 1
  %10 = load float, ptr %9, align 4, !tbaa !116
  %11 = getelementptr inbounds %struct.PaintBakeData, ptr %3, i64 0, i32 4, i32 1, i64 1
  %12 = load float, ptr %11, align 4, !tbaa !116
  %13 = fsub float %10, %12
  %14 = getelementptr inbounds %struct.PaintBakeData, ptr %3, i64 0, i32 4, i32 2, i64 2
  %15 = load float, ptr %14, align 4, !tbaa !116
  %16 = getelementptr inbounds %struct.PaintBakeData, ptr %3, i64 0, i32 4, i32 1, i64 2
  %17 = load float, ptr %16, align 4, !tbaa !116
  %18 = fsub float %15, %17
  %19 = tail call fastcc float @max_fff(float noundef %8, float noundef %13, float noundef %18) #25
  ret float %19
}

; Function Attrs: optsize
declare ptr @pdInitEffectors(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i8 noundef zeroext) local_unnamed_addr #5

; Function Attrs: optsize
declare void @pd_point_from_loc(ptr noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: optsize
declare void @pdDoEffectors(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: optsize
declare void @pdEndEffectors(ptr noundef) local_unnamed_addr #5

; Function Attrs: nofree nounwind willreturn memory(argmem: read)
declare i64 @strlen(ptr nocapture) local_unnamed_addr #22

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.floor.f32(float) #23

; Function Attrs: nofree nounwind
declare noundef i32 @puts(ptr nocapture noundef readonly) local_unnamed_addr #24

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #23

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.ceil.f32(float) #23

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umax.i32(i32, i32) #23

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #23

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x float> @llvm.fmuladd.v2f32(<2 x float>, <2 x float>, <2 x float>) #23

attributes #0 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nofree noinline norecurse nosync nounwind optsize memory(read, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { nofree noinline norecurse nosync nounwind optsize memory(readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { noinline nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nofree noinline nounwind optsize memory(read, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #9 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #10 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(write, argmem: readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { nofree nounwind optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #13 = { nofree noinline norecurse nosync nounwind optsize memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { mustprogress nofree nounwind optsize willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #15 = { mustprogress nofree noinline nounwind optsize willreturn memory(write, argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #16 = { mustprogress nofree nounwind optsize willreturn memory(write) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #17 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #18 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #19 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #20 = { nofree noinline nounwind optsize memory(readwrite, inaccessiblemem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #21 = { nofree noinline norecurse nosync nounwind optsize memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #22 = { nofree nounwind willreturn memory(argmem: read) }
attributes #23 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #24 = { nofree nounwind }
attributes #25 = { optsize }
attributes #26 = { nounwind optsize }
attributes #27 = { nounwind }
attributes #28 = { nounwind optsize willreturn memory(read) }

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
!47 = distinct !{!47, !48}
!48 = !{!"llvm.loop.mustprogress"}
!49 = !{i8 0, i8 2}
!50 = !{!35, !40, i64 156}
!51 = distinct !{!51, !48}
!52 = !{!53, !36, i64 296}
!53 = !{!"Object", !54, i64 0, !36, i64 120, !36, i64 128, !41, i64 136, !41, i64 138, !40, i64 140, !40, i64 144, !40, i64 148, !37, i64 152, !36, i64 216, !36, i64 224, !36, i64 232, !36, i64 240, !36, i64 248, !36, i64 256, !36, i64 264, !36, i64 272, !36, i64 280, !36, i64 288, !36, i64 296, !36, i64 304, !55, i64 312, !36, i64 360, !39, i64 368, !39, i64 384, !39, i64 400, !39, i64 416, !40, i64 432, !40, i64 436, !36, i64 440, !36, i64 448, !40, i64 456, !40, i64 460, !37, i64 464, !37, i64 476, !37, i64 488, !37, i64 500, !37, i64 512, !37, i64 524, !37, i64 536, !37, i64 548, !37, i64 560, !37, i64 576, !37, i64 592, !37, i64 604, !42, i64 616, !42, i64 620, !37, i64 624, !37, i64 688, !37, i64 752, !37, i64 816, !37, i64 880, !40, i64 944, !41, i64 948, !41, i64 950, !41, i64 952, !41, i64 954, !41, i64 956, !41, i64 958, !41, i64 960, !41, i64 962, !41, i64 964, !37, i64 966, !37, i64 967, !40, i64 968, !40, i64 972, !40, i64 976, !40, i64 980, !40, i64 984, !42, i64 988, !42, i64 992, !42, i64 996, !42, i64 1000, !42, i64 1004, !42, i64 1008, !42, i64 1012, !42, i64 1016, !42, i64 1020, !42, i64 1024, !42, i64 1028, !42, i64 1032, !41, i64 1036, !41, i64 1038, !41, i64 1040, !37, i64 1042, !37, i64 1043, !41, i64 1044, !37, i64 1046, !37, i64 1047, !42, i64 1048, !42, i64 1052, !39, i64 1056, !39, i64 1072, !39, i64 1088, !39, i64 1104, !42, i64 1120, !41, i64 1124, !41, i64 1126, !37, i64 1128, !40, i64 1144, !40, i64 1148, !36, i64 1152, !37, i64 1160, !37, i64 1161, !41, i64 1162, !37, i64 1164, !39, i64 1176, !39, i64 1192, !39, i64 1208, !39, i64 1224, !36, i64 1240, !36, i64 1248, !36, i64 1256, !37, i64 1264, !37, i64 1265, !41, i64 1266, !42, i64 1268, !36, i64 1272, !36, i64 1280, !36, i64 1288, !36, i64 1296, !56, i64 1304, !56, i64 1312, !40, i64 1320, !40, i64 1324, !39, i64 1328, !39, i64 1344, !36, i64 1360, !36, i64 1368, !36, i64 1376, !37, i64 1384, !36, i64 1392, !39, i64 1400, !36, i64 1416}
!54 = !{!"ID", !36, i64 0, !36, i64 8, !36, i64 16, !36, i64 24, !37, i64 32, !41, i64 98, !40, i64 100, !40, i64 104, !40, i64 108, !36, i64 112}
!55 = !{!"bAnimVizSettings", !40, i64 0, !40, i64 4, !40, i64 8, !40, i64 12, !41, i64 16, !41, i64 18, !41, i64 20, !41, i64 22, !41, i64 24, !41, i64 26, !41, i64 28, !41, i64 30, !40, i64 32, !40, i64 36, !40, i64 40, !40, i64 44}
!56 = !{!"long", !37, i64 0}
!57 = !{!"dynamicpaint.c:surface_duplicateNameExists"}
!58 = !{!35, !36, i64 16}
!59 = distinct !{!59, !48}
!60 = !{!37, !37, i64 0}
!61 = !{!"dynamicpaint.c:surface_setUniqueOutputName"}
!62 = !{!"dynamicpaint.c:dynamicPaint_setPreview"}
!63 = distinct !{!63, !48}
!64 = !{!65, !36, i64 120}
!65 = !{!"DynamicPaintModifierData", !66, i64 0, !36, i64 112, !36, i64 120, !40, i64 128, !40, i64 132}
!66 = !{!"ModifierData", !36, i64 0, !36, i64 8, !40, i64 16, !40, i64 20, !40, i64 24, !40, i64 28, !37, i64 32, !36, i64 96, !36, i64 104}
!67 = !{!68, !36, i64 8}
!68 = !{!"DynamicPaintBrushSettings", !36, i64 0, !36, i64 8, !36, i64 16, !36, i64 24, !40, i64 32, !40, i64 36, !42, i64 40, !42, i64 44, !42, i64 48, !42, i64 52, !42, i64 56, !42, i64 60, !42, i64 64, !42, i64 68, !36, i64 72, !36, i64 80, !41, i64 88, !41, i64 90, !41, i64 92, !41, i64 94, !42, i64 96, !42, i64 100, !42, i64 104, !42, i64 108}
!69 = !{!70, !36, i64 1680}
!70 = !{!"DerivedMesh", !71, i64 0, !71, i64 200, !71, i64 400, !71, i64 600, !71, i64 800, !40, i64 1000, !40, i64 1004, !40, i64 1008, !40, i64 1012, !40, i64 1016, !40, i64 1020, !40, i64 1024, !36, i64 1032, !36, i64 1040, !40, i64 1048, !42, i64 1052, !40, i64 1056, !40, i64 1060, !36, i64 1064, !37, i64 1072, !36, i64 1080, !36, i64 1088, !36, i64 1096, !36, i64 1104, !36, i64 1112, !36, i64 1120, !36, i64 1128, !36, i64 1136, !36, i64 1144, !36, i64 1152, !36, i64 1160, !36, i64 1168, !36, i64 1176, !36, i64 1184, !36, i64 1192, !36, i64 1200, !36, i64 1208, !36, i64 1216, !36, i64 1224, !36, i64 1232, !36, i64 1240, !36, i64 1248, !36, i64 1256, !36, i64 1264, !36, i64 1272, !36, i64 1280, !36, i64 1288, !36, i64 1296, !36, i64 1304, !36, i64 1312, !36, i64 1320, !36, i64 1328, !36, i64 1336, !36, i64 1344, !36, i64 1352, !36, i64 1360, !36, i64 1368, !36, i64 1376, !36, i64 1384, !36, i64 1392, !36, i64 1400, !36, i64 1408, !36, i64 1416, !36, i64 1424, !36, i64 1432, !36, i64 1440, !36, i64 1448, !36, i64 1456, !36, i64 1464, !36, i64 1472, !36, i64 1480, !36, i64 1488, !36, i64 1496, !36, i64 1504, !36, i64 1512, !36, i64 1520, !36, i64 1528, !36, i64 1536, !36, i64 1544, !36, i64 1552, !36, i64 1560, !36, i64 1568, !36, i64 1576, !36, i64 1584, !36, i64 1592, !36, i64 1600, !36, i64 1608, !36, i64 1616, !36, i64 1624, !36, i64 1632, !36, i64 1640, !36, i64 1648, !36, i64 1656, !36, i64 1664, !36, i64 1672, !36, i64 1680}
!71 = !{!"CustomData", !36, i64 0, !37, i64 8, !40, i64 172, !40, i64 176, !40, i64 180, !36, i64 184, !36, i64 192}
!72 = !{!68, !36, i64 72}
!73 = !{!68, !36, i64 80}
!74 = !{!35, !36, i64 24}
!75 = !{!76, !36, i64 0}
!76 = !{!"PaintSurfaceData", !36, i64 0, !36, i64 8, !36, i64 16, !36, i64 24, !40, i64 32}
!77 = !{!78, !36, i64 0}
!78 = !{!"ImgSeqFormatData", !36, i64 0, !36, i64 8}
!79 = !{!78, !36, i64 8}
!80 = !{!76, !36, i64 8}
!81 = !{!"dynamicpaint.c:dynamicPaint_freeAdjData"}
!82 = !{!76, !36, i64 16}
!83 = !{!84, !36, i64 8}
!84 = !{!"PaintAdjData", !36, i64 0, !36, i64 8, !36, i64 16, !36, i64 24, !40, i64 32}
!85 = !{!84, !36, i64 16}
!86 = !{!84, !36, i64 0}
!87 = !{!84, !36, i64 24}
!88 = !{!"dynamicpaint.c:free_bakeData"}
!89 = !{!76, !36, i64 24}
!90 = !{!91, !36, i64 0}
!91 = !{!"PaintBakeData", !36, i64 0, !36, i64 8, !36, i64 16, !36, i64 24, !92, i64 32, !36, i64 64, !93, i64 72, !36, i64 80, !36, i64 88, !36, i64 96, !36, i64 104, !36, i64 112, !37, i64 120, !40, i64 184}
!92 = !{!"Bounds3D", !40, i64 0, !37, i64 4, !37, i64 16}
!93 = !{!"double", !37, i64 0}
!94 = !{!91, !36, i64 8}
!95 = !{!91, !36, i64 16}
!96 = !{!91, !36, i64 24}
!97 = !{!91, !36, i64 64}
!98 = !{!91, !36, i64 80}
!99 = !{!91, !36, i64 112}
!100 = !{!91, !36, i64 88}
!101 = !{!91, !36, i64 96}
!102 = !{!35, !36, i64 48}
!103 = !{!35, !36, i64 40}
!104 = !{!65, !36, i64 112}
!105 = !{!46, !36, i64 16}
!106 = !{!35, !36, i64 0}
!107 = distinct !{!107, !48}
!108 = !{!46, !36, i64 8}
!109 = !{!110, !40, i64 16}
!110 = !{!"PointCache", !36, i64 0, !36, i64 8, !40, i64 16, !40, i64 20, !40, i64 24, !40, i64 28, !40, i64 32, !40, i64 36, !40, i64 40, !40, i64 44, !40, i64 48, !40, i64 52, !40, i64 56, !41, i64 60, !41, i64 62, !37, i64 64, !37, i64 128, !37, i64 192, !37, i64 256, !36, i64 1280, !39, i64 1288, !36, i64 1304, !36, i64 1312}
!111 = !{!110, !40, i64 20}
!112 = !{!35, !40, i64 160}
!113 = !{!35, !41, i64 148}
!114 = !{!35, !40, i64 276}
!115 = !{!35, !40, i64 272}
!116 = !{!42, !42, i64 0}
!117 = !{!35, !42, i64 288}
!118 = !{!35, !41, i64 144}
!119 = !{!35, !41, i64 146}
!120 = !{!35, !40, i64 164}
!121 = !{!35, !40, i64 168}
!122 = !{!40, !40, i64 0}
!123 = !{!35, !42, i64 300}
!124 = !{!35, !42, i64 336}
!125 = !{!46, !36, i64 0}
!126 = !{!68, !36, i64 0}
!127 = !{!68, !36, i64 16}
!128 = !{!68, !40, i64 32}
!129 = !{!68, !40, i64 36}
!130 = !{!68, !36, i64 24}
!131 = !{!68, !41, i64 88}
!132 = !{!68, !41, i64 90}
!133 = !{!134, !42, i64 16}
!134 = !{!"CBData", !42, i64 0, !42, i64 4, !42, i64 8, !42, i64 12, !42, i64 16, !40, i64 20}
!135 = !{!136, !41, i64 0}
!136 = !{!"ColorBand", !41, i64 0, !41, i64 2, !37, i64 4, !37, i64 5, !37, i64 6, !37, i64 7, !37, i64 8}
!137 = !{!65, !40, i64 128}
!138 = !{!35, !36, i64 32}
!139 = !{!41, !41, i64 0}
!140 = !{!35, !41, i64 152}
!141 = !{!35, !36, i64 200}
!142 = distinct !{!142, !48}
!143 = !{!68, !41, i64 92}
!144 = !{!"dynamicpaint.c:copy_v4_v4"}
!145 = !{!76, !40, i64 32}
!146 = !{!91, !40, i64 184}
!147 = !{!"dynamicpaint.c:dynamicPaint_setInitialColor"}
!148 = !{!149, !42, i64 36}
!149 = !{!"PaintPoint", !37, i64 0, !42, i64 12, !42, i64 16, !41, i64 20, !37, i64 24, !42, i64 36}
!150 = distinct !{!150, !48}
!151 = !{!70, !36, i64 1184}
!152 = !{!70, !36, i64 1120}
!153 = !{!154, !40, i64 12}
!154 = !{!"MFace", !40, i64 0, !40, i64 4, !40, i64 8, !40, i64 12, !41, i64 16, !37, i64 18, !37, i64 19}
!155 = !{!156, !42, i64 0}
!156 = !{!"TexResult", !42, i64 0, !42, i64 4, !42, i64 8, !42, i64 12, !42, i64 16, !40, i64 20, !36, i64 24}
!157 = distinct !{!157, !48}
!158 = distinct !{!158, !48}
!159 = !{!160, !41, i64 24}
!160 = !{!"PaintUVPoint", !40, i64 0, !40, i64 4, !40, i64 8, !40, i64 12, !40, i64 16, !40, i64 20, !41, i64 24}
!161 = !{!160, !40, i64 0}
!162 = distinct !{!162, !48}
!163 = distinct !{!163, !48}
!164 = !{!70, !36, i64 1192}
!165 = !{!70, !36, i64 1128}
!166 = !{!167, !40, i64 0}
!167 = !{!"MLoop", !40, i64 0, !40, i64 4}
!168 = distinct !{!168, !48}
!169 = distinct !{!169, !48}
!170 = distinct !{!170, !48}
!171 = !{!"dynamicpaint.c:dynamicPaint_surfaceNumOfPoints"}
!172 = !{!70, !36, i64 1104}
!173 = !{!"dynamicpaint.c:dynamicPaint_allocateSurfaceType"}
!174 = !{!"dynamicpaint.c:dynamicPaint_initAdjacencyData"}
!175 = !{i32 0, i32 2}
!176 = !{!70, !36, i64 1112}
!177 = !{!84, !40, i64 32}
!178 = !{!70, !36, i64 1136}
!179 = !{!70, !36, i64 1176}
!180 = !{!70, !36, i64 1200}
!181 = !{!182, !40, i64 0}
!182 = !{!"MEdge", !40, i64 0, !40, i64 4, !37, i64 8, !37, i64 9, !41, i64 10}
!183 = !{!182, !40, i64 4}
!184 = distinct !{!184, !48}
!185 = !{!186, !40, i64 4}
!186 = !{!"MPoly", !40, i64 0, !40, i64 4, !41, i64 8, !37, i64 10, !37, i64 11}
!187 = !{!186, !40, i64 0}
!188 = distinct !{!188, !48}
!189 = distinct !{!189, !48}
!190 = distinct !{!190, !48}
!191 = distinct !{!191, !48}
!192 = distinct !{!192, !48}
!193 = !{!"dynamicpaint.c:dynamicPaint_frameUpdate"}
!194 = !{!46, !41, i64 34}
!195 = !{!196, !40, i64 680}
!196 = !{!"Scene", !54, i64 0, !36, i64 120, !36, i64 128, !36, i64 136, !36, i64 144, !39, i64 152, !36, i64 168, !36, i64 176, !37, i64 184, !37, i64 196, !37, i64 208, !37, i64 220, !40, i64 232, !40, i64 236, !40, i64 240, !41, i64 244, !37, i64 246, !37, i64 247, !36, i64 248, !36, i64 256, !36, i64 264, !36, i64 272, !197, i64 280, !206, i64 4264, !39, i64 4296, !39, i64 4312, !36, i64 4328, !36, i64 4336, !36, i64 4344, !36, i64 4352, !36, i64 4360, !36, i64 4368, !41, i64 4376, !41, i64 4378, !40, i64 4380, !39, i64 4384, !207, i64 4400, !208, i64 4416, !211, i64 4600, !36, i64 4608, !212, i64 4616, !36, i64 4640, !56, i64 4648, !56, i64 4656, !199, i64 4664, !200, i64 4824, !213, i64 4888, !36, i64 4952}
!197 = !{!"RenderData", !198, i64 0, !36, i64 248, !36, i64 256, !201, i64 264, !202, i64 328, !40, i64 400, !40, i64 404, !40, i64 408, !42, i64 412, !40, i64 416, !40, i64 420, !40, i64 424, !40, i64 428, !41, i64 432, !41, i64 434, !42, i64 436, !42, i64 440, !42, i64 444, !42, i64 448, !42, i64 452, !41, i64 456, !41, i64 458, !41, i64 460, !41, i64 462, !41, i64 464, !41, i64 466, !40, i64 468, !41, i64 472, !41, i64 474, !41, i64 476, !41, i64 478, !41, i64 480, !41, i64 482, !40, i64 484, !40, i64 488, !41, i64 492, !41, i64 494, !40, i64 496, !40, i64 500, !41, i64 504, !41, i64 506, !41, i64 508, !41, i64 510, !41, i64 512, !37, i64 514, !37, i64 515, !40, i64 516, !40, i64 520, !40, i64 524, !41, i64 528, !41, i64 530, !41, i64 532, !41, i64 534, !41, i64 536, !41, i64 538, !41, i64 540, !41, i64 542, !203, i64 544, !203, i64 560, !204, i64 576, !39, i64 592, !41, i64 608, !41, i64 610, !42, i64 612, !42, i64 616, !42, i64 620, !42, i64 624, !40, i64 628, !42, i64 632, !42, i64 636, !42, i64 640, !42, i64 644, !41, i64 648, !41, i64 650, !41, i64 652, !41, i64 654, !41, i64 656, !41, i64 658, !42, i64 660, !42, i64 664, !41, i64 668, !41, i64 670, !42, i64 672, !42, i64 676, !37, i64 680, !40, i64 1704, !41, i64 1708, !41, i64 1710, !37, i64 1712, !37, i64 2480, !37, i64 2496, !37, i64 2512, !37, i64 2513, !37, i64 2514, !37, i64 2515, !40, i64 2520, !41, i64 2524, !41, i64 2526, !42, i64 2528, !42, i64 2532, !41, i64 2536, !41, i64 2538, !42, i64 2540, !41, i64 2544, !41, i64 2546, !40, i64 2548, !41, i64 2552, !41, i64 2554, !41, i64 2556, !41, i64 2558, !42, i64 2560, !42, i64 2564, !36, i64 2568, !40, i64 2576, !42, i64 2580, !37, i64 2584, !205, i64 2616, !40, i64 3976, !40, i64 3980}
!198 = !{!"ImageFormatData", !37, i64 0, !37, i64 1, !37, i64 2, !37, i64 3, !37, i64 4, !37, i64 5, !37, i64 6, !37, i64 7, !41, i64 8, !41, i64 10, !42, i64 12, !37, i64 16, !37, i64 17, !37, i64 18, !199, i64 24, !200, i64 184}
!199 = !{!"ColorManagedViewSettings", !40, i64 0, !40, i64 4, !37, i64 8, !37, i64 72, !42, i64 136, !42, i64 140, !36, i64 144, !36, i64 152}
!200 = !{!"ColorManagedDisplaySettings", !37, i64 0}
!201 = !{!"QuicktimeCodecSettings", !40, i64 0, !40, i64 4, !40, i64 8, !40, i64 12, !40, i64 16, !40, i64 20, !40, i64 24, !40, i64 28, !40, i64 32, !40, i64 36, !40, i64 40, !40, i64 44, !41, i64 48, !41, i64 50, !40, i64 52, !40, i64 56, !40, i64 60}
!202 = !{!"FFMpegCodecData", !40, i64 0, !40, i64 4, !40, i64 8, !40, i64 12, !40, i64 16, !40, i64 20, !40, i64 24, !40, i64 28, !42, i64 32, !40, i64 36, !40, i64 40, !40, i64 44, !40, i64 48, !40, i64 52, !40, i64 56, !40, i64 60, !36, i64 64}
!203 = !{!"rctf", !42, i64 0, !42, i64 4, !42, i64 8, !42, i64 12}
!204 = !{!"rcti", !40, i64 0, !40, i64 4, !40, i64 8, !40, i64 12}
!205 = !{!"BakeData", !198, i64 0, !37, i64 248, !41, i64 1272, !41, i64 1274, !41, i64 1276, !41, i64 1278, !42, i64 1280, !42, i64 1284, !37, i64 1288, !37, i64 1291, !37, i64 1292, !37, i64 1293, !37, i64 1296}
!206 = !{!"AudioData", !40, i64 0, !42, i64 4, !42, i64 8, !42, i64 12, !40, i64 16, !41, i64 20, !41, i64 22, !42, i64 24, !42, i64 28}
!207 = !{!"GameFraming", !37, i64 0, !37, i64 12, !37, i64 13, !37, i64 14, !37, i64 15}
!208 = !{!"GameData", !207, i64 0, !41, i64 16, !41, i64 18, !41, i64 20, !41, i64 22, !41, i64 24, !41, i64 26, !41, i64 28, !41, i64 30, !41, i64 32, !37, i64 34, !209, i64 40, !41, i64 64, !41, i64 66, !42, i64 68, !210, i64 72, !42, i64 128, !42, i64 132, !40, i64 136, !41, i64 140, !41, i64 142, !41, i64 144, !41, i64 146, !41, i64 148, !41, i64 150, !41, i64 152, !41, i64 154, !41, i64 156, !41, i64 158, !41, i64 160, !41, i64 162, !42, i64 164, !42, i64 168, !42, i64 172, !42, i64 176, !42, i64 180}
!209 = !{!"GameDome", !41, i64 0, !41, i64 2, !41, i64 4, !41, i64 6, !42, i64 8, !42, i64 12, !36, i64 16}
!210 = !{!"RecastData", !42, i64 0, !42, i64 4, !42, i64 8, !42, i64 12, !42, i64 16, !42, i64 20, !42, i64 24, !42, i64 28, !42, i64 32, !42, i64 36, !40, i64 40, !42, i64 44, !42, i64 48, !41, i64 52, !41, i64 54}
!211 = !{!"UnitSettings", !42, i64 0, !37, i64 4, !37, i64 5, !41, i64 6}
!212 = !{!"PhysicsSettings", !37, i64 0, !40, i64 12, !40, i64 16, !40, i64 20}
!213 = !{!"ColorManagedColorspaceSettings", !37, i64 0}
!214 = !{!35, !40, i64 172}
!215 = !{!35, !40, i64 176}
!216 = !{!35, !40, i64 72}
!217 = !{!218, !36, i64 176}
!218 = !{!"PTCacheID", !36, i64 0, !36, i64 8, !36, i64 16, !36, i64 24, !36, i64 32, !40, i64 40, !40, i64 44, !40, i64 48, !40, i64 52, !40, i64 56, !40, i64 60, !40, i64 64, !36, i64 72, !36, i64 80, !36, i64 88, !36, i64 96, !36, i64 104, !36, i64 112, !36, i64 120, !36, i64 128, !36, i64 136, !36, i64 144, !36, i64 152, !36, i64 160, !36, i64 168, !36, i64 176, !36, i64 184, !36, i64 192}
!219 = distinct !{!219, !48}
!220 = !{!"dynamicpaint.c:dynamicPaint_Modifier_apply"}
!221 = !{!70, !40, i64 1012}
!222 = !{!149, !42, i64 12}
!223 = distinct !{!223, !48}
!224 = !{!70, !40, i64 1016}
!225 = !{!186, !41, i64 8}
!226 = !{!35, !41, i64 150}
!227 = !{!228, !37, i64 3}
!228 = !{!"MLoopCol", !37, i64 0, !37, i64 1, !37, i64 2, !37, i64 3}
!229 = !{!230, !42, i64 140}
!230 = !{!"Material", !54, i64 0, !36, i64 120, !41, i64 128, !41, i64 130, !42, i64 132, !42, i64 136, !42, i64 140, !42, i64 144, !42, i64 148, !42, i64 152, !42, i64 156, !42, i64 160, !42, i64 164, !42, i64 168, !42, i64 172, !42, i64 176, !42, i64 180, !42, i64 184, !42, i64 188, !42, i64 192, !42, i64 196, !42, i64 200, !42, i64 204, !42, i64 208, !42, i64 212, !42, i64 216, !42, i64 220, !231, i64 224, !232, i64 312, !42, i64 328, !42, i64 332, !42, i64 336, !42, i64 340, !42, i64 344, !42, i64 348, !42, i64 352, !41, i64 356, !41, i64 358, !41, i64 360, !37, i64 362, !37, i64 363, !42, i64 364, !42, i64 368, !41, i64 372, !41, i64 374, !42, i64 376, !42, i64 380, !42, i64 384, !42, i64 388, !41, i64 392, !41, i64 394, !40, i64 396, !40, i64 400, !40, i64 404, !40, i64 408, !41, i64 412, !41, i64 414, !41, i64 416, !41, i64 418, !42, i64 420, !42, i64 424, !42, i64 428, !42, i64 432, !42, i64 436, !42, i64 440, !42, i64 444, !42, i64 448, !42, i64 452, !42, i64 456, !37, i64 460, !42, i64 524, !42, i64 528, !42, i64 532, !40, i64 536, !37, i64 540, !37, i64 541, !37, i64 542, !37, i64 543, !41, i64 544, !41, i64 546, !41, i64 548, !37, i64 550, !37, i64 551, !41, i64 552, !41, i64 554, !42, i64 556, !42, i64 560, !37, i64 564, !42, i64 580, !42, i64 584, !41, i64 588, !41, i64 590, !36, i64 592, !36, i64 600, !37, i64 608, !37, i64 609, !37, i64 610, !37, i64 611, !41, i64 612, !41, i64 614, !42, i64 616, !42, i64 620, !37, i64 624, !36, i64 768, !36, i64 776, !36, i64 784, !36, i64 792, !42, i64 800, !42, i64 804, !42, i64 808, !42, i64 812, !42, i64 816, !41, i64 820, !41, i64 822, !37, i64 824, !37, i64 836, !42, i64 848, !42, i64 852, !42, i64 856, !42, i64 860, !42, i64 864, !42, i64 868, !42, i64 872, !41, i64 876, !41, i64 878, !40, i64 880, !41, i64 884, !41, i64 886, !37, i64 888, !41, i64 904, !41, i64 906, !41, i64 908, !41, i64 910, !41, i64 912, !37, i64 914, !36, i64 920, !39, i64 928}
!231 = !{!"VolumeSettings", !42, i64 0, !42, i64 4, !42, i64 8, !42, i64 12, !37, i64 16, !37, i64 28, !37, i64 40, !42, i64 52, !42, i64 56, !42, i64 60, !41, i64 64, !41, i64 66, !41, i64 68, !41, i64 70, !42, i64 72, !42, i64 76, !42, i64 80, !42, i64 84}
!232 = !{!"GameSettings", !40, i64 0, !40, i64 4, !40, i64 8, !40, i64 12}
!233 = !{!149, !42, i64 16}
!234 = !{!228, !37, i64 2}
!235 = !{!228, !37, i64 1}
!236 = !{!228, !37, i64 0}
!237 = distinct !{!237, !48}
!238 = distinct !{!238, !48}
!239 = distinct !{!239, !48}
!240 = distinct !{!240, !48}
!241 = !{!70, !40, i64 1056}
!242 = !{!70, !36, i64 1320}
!243 = !{!244, !42, i64 4}
!244 = !{!"MDeformWeight", !40, i64 0, !42, i64 4}
!245 = distinct !{!245, !48}
!246 = !{!70, !36, i64 1168}
!247 = !{!248, !42, i64 0}
!248 = !{!"PaintWavePoint", !42, i64 0, !42, i64 4, !42, i64 8, !41, i64 12}
!249 = distinct !{!249, !48}
!250 = distinct !{!250, !48}
!251 = distinct !{!251, !48}
!252 = distinct !{!252, !48}
!253 = !{!160, !40, i64 20}
!254 = !{!160, !40, i64 4}
!255 = distinct !{!255, !48}
!256 = !{!154, !40, i64 0}
!257 = !{!160, !40, i64 8}
!258 = !{!160, !40, i64 12}
!259 = !{!160, !40, i64 16}
!260 = distinct !{!260, !48}
!261 = distinct !{!261, !48}
!262 = distinct !{!262, !48}
!263 = distinct !{!263, !48}
!264 = distinct !{!264, !48}
!265 = distinct !{!265, !48}
!266 = distinct !{!266, !48}
!267 = distinct !{!267, !48}
!268 = distinct !{!268, !48}
!269 = distinct !{!269, !48}
!270 = distinct !{!270, !48}
!271 = distinct !{!271, !48}
!272 = distinct !{!272, !48}
!273 = distinct !{!273, !48}
!274 = distinct !{!274, !48}
!275 = distinct !{!275, !48}
!276 = !{!"dynamicpaint.c:setError"}
!277 = !{!"dynamicpaint.c:copy_v2_v2"}
!278 = !{!"dynamicpaint.c:sub_v2_v2v2"}
!279 = !{!"dynamicpaint.c:dynamicPaint_findNeighbourPixel"}
!280 = !{!154, !40, i64 4}
!281 = !{!154, !40, i64 8}
!282 = distinct !{!282, !48}
!283 = !{!284, !36, i64 0}
!284 = !{!"Global", !36, i64 0, !37, i64 8, !37, i64 1032, !37, i64 2056, !37, i64 2057, !37, i64 2058, !39, i64 2064, !37, i64 2080, !37, i64 2081, !37, i64 2082, !41, i64 2084, !41, i64 2086, !41, i64 2088, !37, i64 2090, !41, i64 2092, !40, i64 2096, !40, i64 2100, !37, i64 2104, !40, i64 2108, !40, i64 2112, !37, i64 2116}
!285 = !{!286, !36, i64 48}
!286 = !{!"ImBuf", !36, i64 0, !36, i64 8, !40, i64 16, !40, i64 20, !37, i64 24, !40, i64 28, !40, i64 32, !40, i64 36, !36, i64 40, !36, i64 48, !37, i64 56, !40, i64 72, !40, i64 76, !40, i64 80, !40, i64 84, !36, i64 88, !36, i64 96, !36, i64 104, !42, i64 112, !37, i64 120, !40, i64 280, !40, i64 284, !40, i64 288, !40, i64 292, !36, i64 296, !36, i64 304, !40, i64 312, !37, i64 316, !37, i64 1340, !36, i64 2368, !40, i64 2376, !36, i64 2384, !40, i64 2392, !40, i64 2396, !36, i64 2400, !36, i64 2408, !36, i64 2416, !36, i64 2424, !40, i64 2432, !204, i64 2436, !287, i64 2456}
!287 = !{!"DDSData", !40, i64 0, !40, i64 4, !36, i64 8, !40, i64 16}
!288 = !{!35, !42, i64 284}
!289 = distinct !{!289, !48}
!290 = !{!286, !40, i64 312}
!291 = !{!"dynamicpaint.c:blendColors"}
!292 = distinct !{!292, !48}
!293 = distinct !{!293, !48}
!294 = !{!"dynamicpaint.c:dynamicPaint_applySurfaceDisplace"}
!295 = distinct !{!295, !48}
!296 = !{!"dynamicpaint.c:dynamicPaint_generateBakeData"}
!297 = !{!91, !40, i64 32}
!298 = distinct !{!298, !48}
!299 = distinct !{!299, !48}
!300 = distinct !{!300, !48}
!301 = !{!302, !42, i64 12}
!302 = !{!"PaintBakeNormal", !37, i64 0, !42, i64 12}
!303 = distinct !{!303, !48}
!304 = !{!"dynamicpaint.c:dynamicPaint_doStep"}
!305 = !{!196, !42, i64 692}
!306 = !{!307, !36, i64 120}
!307 = !{!"Group", !54, i64 0, !39, i64 120, !40, i64 136, !37, i64 140}
!308 = !{!196, !36, i64 152}
!309 = !{!310, !36, i64 32}
!310 = !{!"Base", !36, i64 0, !36, i64 8, !40, i64 16, !40, i64 20, !40, i64 24, !41, i64 28, !41, i64 30, !36, i64 32}
!311 = !{!310, !36, i64 0}
!312 = !{!313, !36, i64 16}
!313 = !{!"GroupObject", !36, i64 0, !36, i64 8, !36, i64 16, !36, i64 24, !41, i64 32, !37, i64 34}
!314 = !{!313, !36, i64 0}
!315 = distinct !{!315, !48}
!316 = !{!66, !40, i64 20}
!317 = !{!91, !36, i64 104}
!318 = !{!319, !36, i64 16}
!319 = !{!"ParticleSystem", !36, i64 0, !36, i64 8, !36, i64 16, !36, i64 24, !36, i64 32, !36, i64 40, !36, i64 48, !36, i64 56, !36, i64 64, !39, i64 72, !39, i64 88, !36, i64 104, !36, i64 112, !36, i64 120, !36, i64 128, !36, i64 136, !36, i64 144, !39, i64 152, !37, i64 168, !37, i64 232, !42, i64 296, !42, i64 300, !42, i64 304, !40, i64 308, !40, i64 312, !40, i64 316, !40, i64 320, !40, i64 324, !40, i64 328, !40, i64 332, !40, i64 336, !41, i64 340, !41, i64 342, !41, i64 344, !41, i64 346, !37, i64 348, !37, i64 540, !41, i64 564, !41, i64 566, !36, i64 568, !36, i64 576, !39, i64 584, !36, i64 600, !36, i64 608, !40, i64 616, !40, i64 620, !36, i64 624, !36, i64 632, !36, i64 640, !42, i64 648, !42, i64 652}
!320 = !{!321, !41, i64 160}
!321 = !{!"ParticleSettings", !54, i64 0, !36, i64 120, !36, i64 128, !36, i64 136, !36, i64 144, !40, i64 152, !40, i64 156, !41, i64 160, !41, i64 162, !41, i64 164, !41, i64 166, !41, i64 168, !41, i64 170, !41, i64 172, !41, i64 174, !40, i64 176, !40, i64 180, !41, i64 184, !41, i64 186, !41, i64 188, !41, i64 190, !41, i64 192, !41, i64 194, !41, i64 196, !41, i64 198, !41, i64 200, !41, i64 202, !41, i64 204, !41, i64 206, !41, i64 208, !41, i64 210, !41, i64 212, !41, i64 214, !41, i64 216, !41, i64 218, !41, i64 220, !41, i64 222, !41, i64 224, !41, i64 226, !41, i64 228, !41, i64 230, !42, i64 232, !42, i64 236, !37, i64 240, !37, i64 248, !42, i64 256, !42, i64 260, !42, i64 264, !41, i64 268, !41, i64 270, !42, i64 272, !42, i64 276, !42, i64 280, !42, i64 284, !42, i64 288, !42, i64 292, !42, i64 296, !42, i64 300, !42, i64 304, !42, i64 308, !42, i64 312, !42, i64 316, !37, i64 320, !40, i64 324, !40, i64 328, !40, i64 332, !40, i64 336, !41, i64 340, !37, i64 342, !42, i64 348, !42, i64 352, !42, i64 356, !42, i64 360, !42, i64 364, !42, i64 368, !42, i64 372, !37, i64 376, !42, i64 388, !42, i64 392, !42, i64 396, !42, i64 400, !42, i64 404, !42, i64 408, !42, i64 412, !37, i64 416, !42, i64 428, !42, i64 432, !42, i64 436, !42, i64 440, !40, i64 444, !40, i64 448, !42, i64 452, !42, i64 456, !42, i64 460, !42, i64 464, !42, i64 468, !42, i64 472, !42, i64 476, !42, i64 480, !42, i64 484, !42, i64 488, !42, i64 492, !42, i64 496, !42, i64 500, !42, i64 504, !42, i64 508, !42, i64 512, !42, i64 516, !42, i64 520, !42, i64 524, !42, i64 528, !42, i64 532, !42, i64 536, !42, i64 540, !42, i64 544, !42, i64 548, !37, i64 552, !42, i64 560, !42, i64 564, !40, i64 568, !40, i64 572, !37, i64 576, !36, i64 720, !39, i64 728, !36, i64 744, !36, i64 752, !36, i64 760, !36, i64 768, !36, i64 776, !36, i64 784, !41, i64 792, !37, i64 794}
!322 = !{!321, !36, i64 120}
!323 = !{i32 1, i32 -2147483648}
!324 = distinct !{!324, !48}
!325 = !{!"dynamicpaint.c:surface_duplicateOutputExists"}
!326 = distinct !{!326, !48}
!327 = !{!"dynamicpaint.c:freeGrid"}
!328 = !{!329, !36, i64 40}
!329 = !{!"VolumeGrid", !37, i64 0, !92, i64 12, !36, i64 40, !36, i64 48, !36, i64 56, !36, i64 64}
!330 = !{!329, !36, i64 48}
!331 = !{!329, !36, i64 56}
!332 = !{!329, !36, i64 64}
!333 = !{!"dynamicpaint.c:copy_v3_v3"}
!334 = !{!"dynamicpaint.c:surface_usesAdjData"}
!335 = !{!"dynamicpaint.c:surface_usesAdjDistance"}
!336 = !{!"dynamicpaint.c:canvas_copyDerivedMesh"}
!337 = !{!"dynamicpaint.c:surface_freeUnusedData"}
!338 = !{!"dynamicpaint.c:dynamicPaint_checkSurfaceData"}
!339 = !{!"dynamicpaint.c:normal_short_to_float_v3"}
!340 = !{!"dynamicpaint.c:madd_v3_v3fl"}
!341 = !{!"dynamicpaint.c:mul_v2_fl"}
!342 = !{!"dynamicpaint.c:add_v2_v2"}
!343 = !{!"dynamicpaint.c:normalize_v3"}
!344 = !{!"dynamicpaint.c:normalize_v3_v3"}
!345 = !{!"dynamicpaint.c:dot_v3v3"}
!346 = !{!"dynamicpaint.c:mul_v3_v3fl"}
!347 = !{!"dynamicpaint.c:zero_v3"}
!348 = !{!"dynamicpaint.c:surface_needsVelocityData"}
!349 = !{!"dynamicpaint.c:surface_needsAccelerationData"}
!350 = !{!"dynamicpaint.c:dynamicPaint_surfaceHasMoved"}
!351 = distinct !{!351, !48}
!352 = distinct !{!352, !48}
!353 = distinct !{!353, !48}
!354 = distinct !{!354, !48}
!355 = !{!"dynamicpaint.c:surface_totalSamples"}
!356 = !{!"dynamicpaint.c:boundInsert"}
!357 = !{!92, !40, i64 0}
!358 = distinct !{!358, !48}
!359 = !{!"dynamicpaint.c:negate_v3"}
!360 = !{!"dynamicpaint.c:mul_v3_fl"}
!361 = !{!"dynamicpaint.c:mul_v3_v3"}
!362 = !{!"dynamicpaint.c:len_v3"}
!363 = !{!"dynamicpaint.c:sub_v3_v3v3"}
!364 = !{!"dynamicpaint.c:surfaceGenerateGrid"}
!365 = distinct !{!365, !48}
!366 = distinct !{!366, !48}
!367 = distinct !{!367, !48}
!368 = distinct !{!368, !48}
!369 = distinct !{!369, !48}
!370 = distinct !{!370, !48}
!371 = distinct !{!371, !48}
!372 = distinct !{!372, !48}
!373 = distinct !{!373, !48}
!374 = distinct !{!374, !48}
!375 = distinct !{!375, !48}
!376 = !{!"dynamicpaint.c:dynamicPaint_prepareAdjacencyData"}
!377 = !{!378, !42, i64 12}
!378 = !{!"BakeAdjPoint", !37, i64 0, !42, i64 12}
!379 = distinct !{!379, !48}
!380 = distinct !{!380, !48}
!381 = distinct !{!381, !48}
!382 = distinct !{!382, !48}
!383 = !{!91, !93, i64 72}
!384 = !{!"dynamicpaint.c:surface_getBrushFlags"}
!385 = distinct !{!385, !48}
!386 = !{!"dynamicpaint.c:max_fff"}
!387 = !{!"dynamicpaint.c:max_ff"}
!388 = !{!"dynamicpaint.c:dynamicPaint_surfacePreStep"}
!389 = !{!35, !42, i64 280}
!390 = distinct !{!390, !48}
!391 = !{!149, !41, i64 20}
!392 = distinct !{!392, !48}
!393 = !{!"dynamicpaint.c:scene_setSubframe"}
!394 = !{!"dynamicpaint.c:subframe_updateObject"}
!395 = !{!53, !36, i64 216}
!396 = !{!53, !36, i64 224}
!397 = !{!53, !41, i64 138}
!398 = !{!399, !36, i64 104}
!399 = !{!"bConstraintTypeInfo", !41, i64 0, !41, i64 2, !37, i64 4, !37, i64 36, !36, i64 72, !36, i64 80, !36, i64 88, !36, i64 96, !36, i64 104, !36, i64 112, !36, i64 120, !36, i64 128}
!400 = !{!401, !36, i64 16}
!401 = !{!"bConstraintTarget", !36, i64 0, !36, i64 8, !36, i64 16, !37, i64 24, !37, i64 88, !41, i64 152, !41, i64 154, !41, i64 156, !41, i64 158}
!402 = distinct !{!402, !48}
!403 = !{!399, !36, i64 112}
!404 = distinct !{!404, !48}
!405 = !{!53, !37, i64 1161}
!406 = !{!53, !36, i64 120}
!407 = !{!408, !36, i64 1888}
!408 = !{!"Main", !36, i64 0, !36, i64 8, !37, i64 16, !41, i64 1040, !41, i64 1042, !41, i64 1044, !41, i64 1046, !56, i64 1048, !37, i64 1056, !41, i64 1072, !36, i64 1080, !39, i64 1088, !39, i64 1104, !39, i64 1120, !39, i64 1136, !39, i64 1152, !39, i64 1168, !39, i64 1184, !39, i64 1200, !39, i64 1216, !39, i64 1232, !39, i64 1248, !39, i64 1264, !39, i64 1280, !39, i64 1296, !39, i64 1312, !39, i64 1328, !39, i64 1344, !39, i64 1360, !39, i64 1376, !39, i64 1392, !39, i64 1408, !39, i64 1424, !39, i64 1440, !39, i64 1456, !39, i64 1472, !39, i64 1488, !39, i64 1504, !39, i64 1520, !39, i64 1536, !39, i64 1552, !39, i64 1568, !39, i64 1584, !39, i64 1600, !39, i64 1616, !37, i64 1632, !36, i64 1888, !36, i64 1896}
!409 = !{!53, !41, i64 136}
!410 = !{!411, !36, i64 120}
!411 = !{!"Curve", !54, i64 0, !36, i64 120, !36, i64 128, !39, i64 136, !36, i64 152, !36, i64 160, !36, i64 168, !36, i64 176, !36, i64 184, !36, i64 192, !36, i64 200, !37, i64 208, !37, i64 220, !37, i64 232, !41, i64 244, !41, i64 246, !41, i64 248, !41, i64 250, !42, i64 252, !42, i64 256, !40, i64 260, !41, i64 264, !41, i64 266, !40, i64 268, !42, i64 272, !42, i64 276, !42, i64 280, !41, i64 284, !41, i64 286, !41, i64 288, !41, i64 290, !40, i64 292, !40, i64 296, !37, i64 300, !41, i64 304, !37, i64 306, !37, i64 307, !42, i64 308, !42, i64 312, !42, i64 316, !42, i64 320, !42, i64 324, !42, i64 328, !42, i64 332, !42, i64 336, !42, i64 340, !42, i64 344, !40, i64 348, !40, i64 352, !40, i64 356, !40, i64 360, !40, i64 364, !36, i64 368, !36, i64 376, !37, i64 384, !36, i64 448, !36, i64 456, !36, i64 464, !36, i64 472, !36, i64 480, !40, i64 488, !40, i64 492, !36, i64 496, !412, i64 504, !42, i64 512, !42, i64 516, !42, i64 520, !37, i64 524, !37, i64 525, !37, i64 526}
!412 = !{!"CharInfo", !41, i64 0, !41, i64 2, !37, i64 4, !37, i64 5, !41, i64 6}
!413 = !{!414, !36, i64 120}
!414 = !{!"bArmature", !54, i64 0, !36, i64 120, !39, i64 128, !39, i64 144, !36, i64 160, !36, i64 168, !36, i64 176, !36, i64 184, !40, i64 192, !40, i64 196, !40, i64 200, !40, i64 204, !41, i64 208, !41, i64 210, !40, i64 212, !40, i64 216, !40, i64 220, !41, i64 224, !41, i64 226, !41, i64 228, !41, i64 230, !40, i64 232, !40, i64 236, !40, i64 240, !40, i64 244, !40, i64 248, !40, i64 252}
!415 = !{!"dynamicpaint.c:brush_usesMaterial"}
!416 = !{!"dynamicpaint.c:dynamicPaint_updateBrushMaterials"}
!417 = !{!53, !36, i64 440}
!418 = !{!53, !40, i64 456}
!419 = !{!420, !36, i64 8}
!420 = !{!"BrushMaterials", !36, i64 0, !36, i64 8, !40, i64 16}
!421 = distinct !{!421, !48}
!422 = !{!420, !40, i64 16}
!423 = !{!420, !36, i64 0}
!424 = !{!"dynamicpaint.c:dynamicPaint_paintParticles"}
!425 = !{!35, !42, i64 316}
!426 = !{!68, !42, i64 64}
!427 = !{!321, !42, i64 300}
!428 = !{!319, !40, i64 320}
!429 = !{!319, !36, i64 24}
!430 = !{!431, !41, i64 198}
!431 = !{!"ParticleData", !432, i64 0, !432, i64 56, !36, i64 112, !36, i64 120, !36, i64 128, !40, i64 136, !42, i64 140, !42, i64 144, !42, i64 148, !40, i64 152, !40, i64 156, !37, i64 160, !42, i64 176, !42, i64 180, !42, i64 184, !40, i64 188, !40, i64 192, !41, i64 196, !41, i64 198}
!432 = !{!"ParticleKey", !37, i64 0, !37, i64 12, !37, i64 24, !37, i64 40, !42, i64 52}
!433 = !{!321, !40, i64 152}
!434 = !{!431, !41, i64 196}
!435 = distinct !{!435, !48}
!436 = !{!437, !42, i64 4}
!437 = !{!"KDTreeNearest", !40, i64 0, !42, i64 4, !37, i64 8}
!438 = !{!437, !40, i64 0}
!439 = !{!431, !42, i64 180}
!440 = !{!321, !42, i64 412}
!441 = distinct !{!441, !48}
!442 = distinct !{!442, !48}
!443 = distinct !{!443, !48}
!444 = !{!"dynamicpaint.c:dynamicPaint_paintSinglePoint"}
!445 = !{!68, !42, i64 68}
!446 = !{!68, !42, i64 48}
!447 = distinct !{!447, !48}
!448 = !{!"dynamicpaint.c:dynamicPaint_paintMesh"}
!449 = distinct !{!449, !48}
!450 = !{!451, !40, i64 0}
!451 = !{!"BVHTreeRayHit", !40, i64 0, !37, i64 4, !37, i64 16, !42, i64 28, !40, i64 32}
!452 = !{!451, !42, i64 28}
!453 = !{!454, !40, i64 0}
!454 = !{!"BVHTreeNearest", !40, i64 0, !37, i64 4, !37, i64 16, !42, i64 28, !40, i64 32}
!455 = !{!454, !42, i64 28}
!456 = !{!457, !36, i64 0}
!457 = !{!"BVHTreeFromMesh", !36, i64 0, !36, i64 8, !36, i64 16, !36, i64 24, !36, i64 32, !36, i64 40, !37, i64 48, !37, i64 49, !37, i64 50, !42, i64 52, !36, i64 56, !37, i64 64}
!458 = distinct !{!458, !48}
!459 = distinct !{!459, !48}
!460 = distinct !{!460, !48}
!461 = !{!"dynamicpaint.c:dynamicPaint_freeBrushMaterials"}
!462 = distinct !{!462, !48}
!463 = !{!"dynamicpaint.c:dynamicPaint_doSmudge"}
!464 = distinct !{!464, !48}
!465 = !{!68, !42, i64 108}
!466 = distinct !{!466, !48}
!467 = distinct !{!467, !48}
!468 = distinct !{!468, !48}
!469 = !{!"dynamicpaint.c:dynamicPaint_doWaveStep"}
!470 = !{!35, !42, i64 324}
!471 = distinct !{!471, !48}
!472 = distinct !{!472, !48}
!473 = !{!35, !42, i64 328}
!474 = !{!35, !42, i64 320}
!475 = !{!248, !41, i64 12}
!476 = distinct !{!476, !48}
!477 = !{!35, !42, i64 332}
!478 = !{!248, !42, i64 4}
!479 = distinct !{!479, !48}
!480 = distinct !{!480, !48}
!481 = !{!248, !42, i64 8}
!482 = distinct !{!482, !48}
!483 = !{!"dynamicpaint.c:dynamicPaint_prepareEffectStep"}
!484 = !{!485, !42, i64 36}
!485 = !{!"EffectedPoint", !36, i64 0, !36, i64 8, !36, i64 16, !36, i64 24, !42, i64 32, !42, i64 36, !42, i64 40, !42, i64 44, !40, i64 48, !40, i64 52, !36, i64 56}
!486 = !{!196, !40, i64 4628}
!487 = !{!488, !42, i64 64}
!488 = !{!"EffectorWeights", !36, i64 0, !37, i64 8, !42, i64 64, !41, i64 68, !37, i64 70, !40, i64 76}
!489 = !{!35, !42, i64 304}
!490 = !{!35, !42, i64 308}
!491 = distinct !{!491, !48}
!492 = distinct !{!492, !48}
!493 = !{!35, !42, i64 292}
!494 = !{!"dynamicpaint.c:dynamicPaint_doEffectStep"}
!495 = !{!35, !42, i64 296}
!496 = distinct !{!496, !48}
!497 = distinct !{!497, !48}
!498 = distinct !{!498, !48}
!499 = distinct !{!499, !48}
!500 = distinct !{!500, !48}
!501 = distinct !{!501, !48}
!502 = !{!"dynamicpaint.c:value_dissolve"}
!503 = !{!"dynamicpaint.c:object_cacheIgnoreClear"}
!504 = distinct !{!504, !48}
!505 = !{!"dynamicpaint.c:boundIntersectPoint"}
!506 = distinct !{!506, !48}
!507 = !{!"dynamicpaint.c:boundsIntersectDist"}
!508 = distinct !{!508, !48}
!509 = !{!"dynamicpaint.c:sub_v3_v3"}
!510 = !{!"dynamicpaint.c:dynamicPaint_updatePointData"}
!511 = !{!35, !42, i64 312}
!512 = !{!68, !42, i64 52}
!513 = !{!68, !42, i64 104}
!514 = !{!68, !42, i64 56}
!515 = !{!68, !42, i64 100}
!516 = !{!"dynamicpaint.c:dynamicPaint_mixPaintColors"}
!517 = !{!"dynamicpaint.c:dynamicPaint_mixWaveHeight"}
!518 = !{!68, !42, i64 96}
!519 = !{!"dynamicpaint.c:dynamicPaint_brushObjectCalculateVelocity"}
!520 = !{!"dynamicpaint.c:len_v3v3"}
!521 = !{!"dynamicpaint.c:dynamicPaint_doMaterialTex"}
!522 = !{!154, !41, i64 16}
!523 = !{!"dynamicpaint.c:dynamicPaint_brushMeshCalculateVelocity"}
!524 = distinct !{!524, !48}
!525 = !{!"dynamicpaint.c:add_v3_v3"}
!526 = !{!"dynamicpaint.c:meshBrush_boundsIntersect"}
!527 = !{!"dynamicpaint.c:add_v3_fl"}
!528 = !{!"dynamicpaint.c:mesh_faces_spherecast_dp"}
!529 = !{!457, !36, i64 24}
!530 = !{!457, !36, i64 40}
!531 = distinct !{!531, !48}
!532 = !{!"dynamicpaint.c:madd_v3_v3v3fl"}
!533 = !{!"dynamicpaint.c:mesh_faces_nearest_point_dp"}
!534 = distinct !{!534, !48}
!535 = !{!"dynamicpaint.c:boundsIntersect"}
!536 = distinct !{!536, !48}
!537 = !{!"dynamicpaint.c:len_squared_v3v3"}
!538 = !{!"dynamicpaint.c:surface_determineForceTargetPoints"}
!539 = distinct !{!539, !48}
!540 = distinct !{!540, !48}
!541 = !{!"dynamicpaint.c:mixColors"}
!542 = !{!"dynamicpaint.c:cross_v3_v3v3"}
!543 = !{!"dynamicpaint.c:getSurfaceDimension"}
