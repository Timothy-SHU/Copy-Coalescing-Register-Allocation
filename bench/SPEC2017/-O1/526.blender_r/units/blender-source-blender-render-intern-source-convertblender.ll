; ModuleID = 'blender/source/blender/render/intern/source/convertblender.c'
source_filename = "blender/source/blender/render/intern/source/convertblender.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.Global = type { ptr, [1024 x i8], [1024 x i8], i8, i8, i8, %struct.ListBase, i8, i8, i8, i16, i16, i16, i8, i16, i32, i32, i8, i32, i32, [200 x i8] }
%struct.ListBase = type { ptr, ptr }
%struct.Material = type { %struct.ID, ptr, i16, i16, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, %struct.VolumeSettings, %struct.GameSettings, float, float, float, float, float, float, float, i16, i16, i16, i8, i8, float, float, i16, i16, float, float, float, float, i16, i16, i32, i32, i32, i32, i16, i16, i16, i16, float, float, float, float, float, float, float, float, float, float, [64 x i8], float, float, float, i32, i8, i8, i8, i8, i16, i16, i16, i8, i8, i16, i16, float, float, [4 x float], float, float, i16, i16, ptr, ptr, i8, i8, i8, i8, i16, i16, float, float, [18 x ptr], ptr, ptr, ptr, ptr, float, float, float, float, float, i16, i16, [3 x float], [3 x float], float, float, float, float, float, float, float, i16, i16, i32, i16, i16, [4 x float], i16, i16, i16, i16, i16, [3 x i16], ptr, %struct.ListBase }
%struct.ID = type { ptr, ptr, ptr, ptr, [66 x i8], i16, i32, i32, i32, ptr }
%struct.VolumeSettings = type { float, float, float, float, [3 x float], [3 x float], [3 x float], float, float, float, i16, i16, i16, i16, float, float, float, float }
%struct.GameSettings = type { i32, i32, i32, i32 }
%struct.LampRen = type { ptr, ptr, float, float, float, [3 x float], i16, i32, float, float, float, float, float, float, float, float, float, i32, float, float, [3 x float], float, float, float, float, float, float, i16, float, float, ptr, i16, i16, float, i16, i16, i16, i16, i16, float, float, float, float, i16, i16, i16, i16, i16, i16, i16, [1 x i16], [1 x i16], float, float, float, float, ptr, ptr, ptr, [3 x [3 x float]], float, [3 x float], float, [4 x [4 x float]], [3 x [3 x float]], [8 x [3 x float]], float, ptr, [1 x ptr], [18 x ptr], i32, i32 }
%struct.Render = type { ptr, ptr, [74 x i8], i32, i16, i16, i16, i16, i8, ptr, ptr, %struct.ListBase, i32, i32, i32, %struct.rcti, %struct.rctf, float, float, float, i32, i32, i32, i32, float, float, float, float, float, float, [3 x float], [3 x [3 x float]], [4 x [4 x float]], [4 x [4 x float]], [4 x [4 x float]], [4 x [4 x float]], float, float, ptr, [32 x [2 x float]], [32 x [2 x float]], ptr, [1 x i32], ptr, ptr, %struct.RenderData, %struct.World, ptr, i32, i32, %struct.ListBase, ptr, ptr, ptr, ptr, float, ptr, %struct.ListBase, float, float, i32, i32, i32, i32, i32, ptr, %struct.ListBase, %struct.ListBase, %struct.ListBase, ptr, %struct.ListBase, i32, ptr, ptr, ptr, ptr, ptr, %struct.ListBase, ptr, %struct.ListBase, %struct.ListBase, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.RenderStats, ptr, ptr, ptr }
%struct.rcti = type { i32, i32, i32, i32 }
%struct.rctf = type { float, float, float, float }
%struct.RenderData = type { %struct.ImageFormatData, ptr, ptr, %struct.QuicktimeCodecSettings, %struct.FFMpegCodecData, i32, i32, i32, float, i32, i32, i32, i32, i16, i16, float, float, float, float, float, i16, i16, i16, i16, i16, i16, i32, i16, i16, i16, i16, i16, i16, i32, i32, i16, i16, i32, i32, i16, i16, i16, i16, i16, i8, i8, i32, i32, i32, i16, i16, i16, i16, i16, i16, i16, i16, %struct.rctf, %struct.rctf, %struct.rcti, %struct.ListBase, i16, i16, float, float, float, float, i32, float, float, float, float, i16, i16, i16, i16, i16, i16, float, float, i16, i16, float, float, [1024 x i8], i32, i16, i16, [768 x i8], [4 x float], [4 x float], i8, i8, i8, [5 x i8], i32, i16, i16, float, float, i16, i16, float, i16, i16, i32, i16, i16, i16, i16, float, float, ptr, i32, float, [32 x i8], %struct.BakeData, i32, i32 }
%struct.ImageFormatData = type { i8, i8, i8, i8, i8, i8, i8, i8, i16, i16, float, i8, i8, [6 x i8], %struct.ColorManagedViewSettings, %struct.ColorManagedDisplaySettings }
%struct.ColorManagedViewSettings = type { i32, i32, [64 x i8], [64 x i8], float, float, ptr, ptr }
%struct.ColorManagedDisplaySettings = type { [64 x i8] }
%struct.QuicktimeCodecSettings = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i16, i16, i32, i32, i32 }
%struct.FFMpegCodecData = type { i32, i32, i32, i32, i32, i32, i32, i32, float, i32, i32, i32, i32, i32, i32, i32, ptr }
%struct.BakeData = type { %struct.ImageFormatData, [1024 x i8], i16, i16, i16, i16, float, float, [3 x i8], i8, i8, [3 x i8], [64 x i8] }
%struct.World = type { %struct.ID, ptr, i16, i16, i16, i16, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, i16, i16, i16, i16, i16, i16, i16, i16, float, float, float, float, float, float, float, float, float, float, float, float, i16, i16, i16, i16, float, float, float, float, i16, i16, i16, i16, float, float, float, float, float, float, float, i16, i16, i16, i16, i16, i16, ptr, ptr, ptr, [18 x ptr], i16, i16, [2 x i16], ptr, ptr }
%struct.RenderStats = type { i32, i32, i32, i32, i32, i32, i32, i16, i16, i16, i16, i16, i16, i8, double, double, ptr, ptr, [64 x i8], float, float }
%struct.Scene = type { %struct.ID, ptr, ptr, ptr, ptr, %struct.ListBase, ptr, ptr, [3 x float], [3 x float], [3 x float], [3 x float], i32, i32, i32, i16, i8, [1 x i8], ptr, ptr, ptr, ptr, %struct.RenderData, %struct.AudioData, %struct.ListBase, %struct.ListBase, ptr, ptr, ptr, ptr, ptr, ptr, i16, i16, i32, %struct.ListBase, %struct.GameFraming, %struct.GameData, %struct.UnitSettings, ptr, %struct.PhysicsSettings, ptr, i64, i64, %struct.ColorManagedViewSettings, %struct.ColorManagedDisplaySettings, %struct.ColorManagedColorspaceSettings, ptr }
%struct.AudioData = type { i32, float, float, float, i32, i16, i16, float, float }
%struct.GameFraming = type { [3 x float], i8, i8, i8, i8 }
%struct.GameData = type { %struct.GameFraming, i16, i16, i16, i16, i16, i16, i16, i16, i16, [3 x i16], %struct.GameDome, i16, i16, float, %struct.RecastData, float, float, i32, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, float, float, float, float, float }
%struct.GameDome = type { i16, i16, i16, i16, float, float, ptr }
%struct.RecastData = type { float, float, float, float, float, float, float, float, float, float, i32, float, float, i16, i16 }
%struct.UnitSettings = type { float, i8, i8, i16 }
%struct.PhysicsSettings = type { [3 x float], i32, i32, i32 }
%struct.ColorManagedColorspaceSettings = type { [64 x i8] }
%struct.MTex = type { i16, i16, i16, i16, ptr, ptr, [64 x i8], i8, i8, i8, i8, [3 x float], [3 x float], float, i16, i16, i16, i16, i16, i16, i8, [7 x i8], float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float }
%struct.Object = type { %struct.ID, ptr, ptr, i16, i16, i32, i32, i32, [64 x i8], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.bAnimVizSettings, ptr, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, i32, i32, ptr, ptr, i32, i32, [3 x float], [3 x float], [3 x float], [3 x float], [3 x float], [3 x float], [3 x float], [3 x float], [4 x float], [4 x float], [3 x float], [3 x float], float, float, [4 x [4 x float]], [4 x [4 x float]], [4 x [4 x float]], [4 x [4 x float]], [4 x [4 x float]], i32, i16, i16, i16, i16, i16, i16, i16, i16, i16, i8, i8, i32, i32, i32, i32, i32, float, float, float, float, float, float, float, float, float, float, float, float, i16, i16, i16, i8, i8, i16, i8, i8, float, float, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, float, i16, i16, [4 x float], i32, i32, ptr, i8, i8, i16, [3 x float], %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, ptr, ptr, ptr, i8, i8, i16, float, ptr, ptr, ptr, ptr, i64, i64, i32, i32, %struct.ListBase, %struct.ListBase, ptr, ptr, ptr, [2 x float], ptr, %struct.ListBase, ptr }
%struct.bAnimVizSettings = type { i32, i32, i32, i32, i16, i16, i16, i16, i16, i16, i16, i16, i32, i32, i32, i32 }
%struct.Main = type { ptr, ptr, [1024 x i8], i16, i16, i16, i16, i64, [16 x i8], i16, ptr, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, [256 x i8], ptr, ptr }
%struct.SceneRenderLayer = type { ptr, ptr, [64 x i8], ptr, ptr, i32, i32, i32, i32, i32, i32, i32, float, %struct.FreestyleConfig }
%struct.FreestyleConfig = type { %struct.ListBase, i32, i32, i32, float, float, float, %struct.ListBase }
%struct.Base = type { ptr, ptr, i32, i32, i32, i16, i16, ptr }
%struct.DupliApplyData = type { i32, ptr }
%struct.DupliExtraData = type { [4 x [4 x float]], i32 }
%struct.DupliObject = type { ptr, ptr, ptr, [4 x [4 x float]], [3 x float], [2 x float], i16, i8, i8, [8 x i32], ptr }
%struct.ParticleSystem = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.ListBase, %struct.ListBase, ptr, ptr, ptr, ptr, ptr, ptr, %struct.ListBase, [64 x i8], [4 x [4 x float]], float, float, float, i32, i32, i32, i32, i32, i32, i32, i32, i16, i16, i16, i16, [3 x [64 x i8]], [12 x i16], i16, i16, ptr, ptr, %struct.ListBase, ptr, ptr, i32, i32, ptr, ptr, ptr, float, float }
%struct.ParticleSettings = type { %struct.ID, ptr, ptr, ptr, ptr, i32, i32, i16, i16, i16, i16, i16, i16, i16, i16, i32, i32, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, float, float, [2 x float], [2 x float], float, float, float, i16, i16, float, float, float, float, float, float, float, float, float, float, float, float, [1 x float], i32, i32, i32, i32, i16, [3 x i16], float, float, float, float, float, float, float, [3 x float], float, float, float, float, float, float, float, [3 x float], float, float, float, float, i32, i32, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, [2 x float], float, float, i32, i32, [18 x ptr], ptr, %struct.ListBase, ptr, ptr, ptr, ptr, ptr, ptr, i16, [3 x i16] }
%struct.ObjectRen = type { ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, [2 x [3 x float]], i32, i32, i32, i32, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, [4 x [4 x float]], ptr, ptr, ptr, ptr }
%struct.ObjectInstanceRen = type { ptr, ptr, ptr, ptr, ptr, i32, i32, i32, [4 x [4 x float]], [4 x [4 x float]], [3 x [3 x float]], i16, [3 x float], [2 x float], ptr, ptr, ptr, i32, ptr, i32 }
%struct.HaloRen = type { i16, i16, float, float, float, float, float, float, float, [3 x float], [3 x float], float, float, float, float, i32, i32, i32, i8, i8, i8, i8, i8, i8, i8, i16, float, i32, i32, ptr, ptr }
%struct.VolumeOb = type { ptr, ptr, ptr, ptr }
%struct.MatInside = type { ptr, ptr, ptr, ptr }
%struct.FluidsimModifierData = type { %struct.ModifierData, ptr, ptr }
%struct.ModifierData = type { ptr, ptr, i32, i32, i32, i32, [64 x i8], ptr, ptr }
%struct.FluidsimSettings = type { ptr, i32, i32, i16, i16, i16, i16, float, i16, i16, float, i16, i16, [3 x float], float, float, i32, i32, i32, i32, float, i32, float, float, float, ptr, ptr, [1024 x i8], [3 x float], [3 x float], ptr, i16, i8, i8, float, i32, float, float, i32, i32, float, float, float, ptr, i32, float, float, float, float, float, float, float, i32, float }
%struct.FluidVertexVelocity = type { [3 x float] }
%struct.VertTableNode = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.VertRen = type { [3 x float], [3 x float], ptr, i32, float, i32 }
%struct.StrandBuffer = type { ptr, ptr, ptr, ptr, i32, i32, ptr, ptr, ptr, i32, i32, i32, i32, float, float, float, float, [4 x [4 x float]], i32, i32 }
%struct.StrandSurface = type { ptr, ptr, %struct.ObjectRen, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32 }
%struct.StrandTableNode = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32 }
%struct.StrandRen = type { ptr, ptr, i32, i32, i32, i32, [3 x float] }
%struct.DerivedMesh = type { %struct.CustomData, %struct.CustomData, %struct.CustomData, %struct.CustomData, %struct.CustomData, i32, i32, i32, i32, i32, i32, i32, ptr, ptr, i32, float, i32, i32, ptr, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.CustomData = type { ptr, [41 x i32], i32, i32, i32, ptr, ptr }
%struct.ParticleSystemModifierData = type { %struct.ModifierData, ptr, ptr, i32, i32, i32, i16, i16 }
%struct.Group = type { %struct.ID, %struct.ListBase, i32, [3 x float] }
%struct.GroupObject = type { ptr, ptr, ptr, ptr, i16, [6 x i8] }
%struct.Lamp = type { %struct.ID, ptr, i16, i16, i32, i16, i16, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, ptr, i16, i16, float, float, float, float, float, float, float, i16, i16, i16, i16, i8, i8, i16, i16, i16, i16, i16, float, float, float, float, i16, i16, i16, i16, i16, i16, float, float, float, float, float, float, float, float, float, float, float, float, float, i16, [2 x i8], ptr, [18 x ptr], i16, i16, [4 x i8], ptr, ptr }
%struct.Tex = type { %struct.ID, ptr, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, float, float, float, float, i32, i32, i16, i16, i16, i16, i32, i32, i32, i32, float, float, float, %struct.ImageUser, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8, [7 x i8] }
%struct.ImageUser = type { ptr, i32, i32, i32, i32, i8, i8, i8, i8, i16, i16, i16, i16, i32 }
%struct.ShadBuf = type { i16, i16, i16, [4 x [4 x float]], [4 x [4 x float]], [4 x [4 x float]], ptr, ptr, float, float, float, float, float, [3 x i32], i32, i32, %struct.ListBase, [1 x ptr] }
%struct.LampShadowSubSample = type { i32, [4 x float] }
%struct.LampShadowSample = type { [16 x %struct.LampShadowSubSample] }
%struct.ParticleKey = type { [3 x float], [3 x float], [4 x float], [3 x float], float }
%struct.ParticleBillboardData = type { ptr, [3 x float], [3 x float], [2 x float], [2 x float], float, float, float, [3 x i32], i32, i32, i32, i32, i16, i16, i16, i16 }
%struct.ParticleSimulationData = type { ptr, ptr, ptr, ptr, ptr, float }
%struct.ParticleStrandData = type { ptr, ptr, ptr, ptr, float, float, float, float, i32, i32, i32, i32, i32, i32 }
%struct.StrandBound = type { i32, i32, [2 x [3 x float]] }
%struct.ParticleData = type { %struct.ParticleKey, %struct.ParticleKey, ptr, ptr, ptr, i32, float, float, float, i32, i32, [4 x float], float, float, float, i32, i32, i16, i16 }
%struct.ParticleCacheKey = type { [3 x float], [3 x float], [4 x float], [3 x float], float, i32 }
%struct.ChildParticle = type { i32, i32, [4 x i32], [4 x float], [4 x float], float, float }
%struct.MCol = type { i8, i8, i8, i8 }
%struct.StrandVert = type { [3 x float], float }
%struct.Curve = type { %struct.ID, ptr, ptr, %struct.ListBase, ptr, ptr, ptr, ptr, ptr, ptr, ptr, [3 x float], [3 x float], [3 x float], i16, i16, i16, i16, float, float, i32, i16, i16, i32, float, float, float, i16, i16, i16, i16, i32, i32, [4 x i8], i16, i8, i8, float, float, float, float, float, float, float, float, float, float, i32, i32, i32, i32, i32, ptr, ptr, [64 x i8], ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, %struct.CharInfo, float, float, float, i8, i8, [2 x i8] }
%struct.CharInfo = type { i16, i16, i8, i8, i16 }
%struct.DispList = type { ptr, ptr, i16, i16, i32, i32, i16, i16, ptr, ptr, ptr, i32, i32, ptr }
%struct.VlakRen = type { ptr, ptr, ptr, ptr, [3 x float], ptr, i8, i8, i8, i32 }
%struct.Mesh = type { %struct.ID, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.CustomData, %struct.CustomData, %struct.CustomData, %struct.CustomData, %struct.CustomData, i32, i32, i32, i32, i32, i32, i32, [3 x float], [3 x float], [3 x float], i32, i16, i16, float, i32, i8, i8, i8, i8, i8, i8, i16, ptr }
%struct.MVert = type { [3 x float], [3 x i16], i8, i8 }
%struct.MFace = type { i32, i32, i32, i32, i16, i8, i8 }
%struct.CustomDataLayer = type { i32, i32, i32, i32, i32, i32, i32, i32, [64 x i8], ptr }
%struct.MTFace = type { [4 x [2 x float]], ptr, i8, i8, i16, i16, i16 }
%struct.edgesort = type { i32, i32, i32, i32, i32 }
%struct.MEdge = type { i32, i32, i8, i8, i16 }
%struct.ASvert = type { i32, %struct.ListBase }
%struct.SRenderMeshToTangent = type { ptr }
%struct.SMikkTSpaceContext = type { ptr, ptr }
%struct.SMikkTSpaceInterface = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.ShadeInput = type { ptr, ptr, ptr, ptr, ptr, i32, [3 x float], i16, ptr, ptr, ptr, i16, i16, i16, i16, i16, [3 x float], [3 x float], [3 x float], [3 x float], [3 x float], i32, i32, float, float, float, float, float, float, [3 x float], [3 x float], [3 x float], float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, i32, [3 x float], [3 x float], [3 x float], [3 x float], [3 x float], [4 x float], [4 x float], [3 x float], float, [3 x float], [3 x float], [4 x float], float, [4 x float], [3 x float], [3 x float], [8 x %struct.ShadeInputUV], [8 x %struct.ShadeInputCol], i32, i32, i32, i32, [3 x float], [3 x float], [3 x float], [3 x float], [3 x float], [3 x float], [3 x float], [3 x float], [3 x float], [3 x float], [3 x float], [3 x float], float, float, [3 x float], [3 x float], [3 x float], [3 x float], [3 x float], [3 x float], float, float, [3 x float], [3 x float], [3 x float], i32, i32, i32, [3 x float], i32, i32, i32, [3 x float], float, i8, i8, i16, i16, i16, i32, i32, i32, i32, ptr, ptr }
%struct.ShadeInputUV = type { [3 x float], [3 x float], [3 x float], ptr }
%struct.ShadeInputCol = type { [4 x float], ptr }
%struct.ASface = type { ptr, ptr, [4 x ptr], [4 x ptr] }
%struct.bNodeTree = type { %struct.ID, ptr, ptr, [64 x i8], ptr, ptr, [2 x float], %struct.ListBase, %struct.ListBase, i32, i32, i32, i32, i32, i16, i16, i32, i32, i16, i16, i32, %struct.rctf, %struct.ListBase, %struct.ListBase, ptr, %struct.bNodeInstanceKey, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.bNodeInstanceKey = type { i32 }
%struct.bNode = type { ptr, ptr, ptr, ptr, ptr, [64 x i8], [64 x i8], i32, i16, i16, i16, i16, i16, i16, i16, i16, [3 x float], %struct.ListBase, %struct.ListBase, ptr, ptr, ptr, ptr, %struct.ListBase, float, float, float, float, float, float, float, i32, [64 x i8], i16, i16, float, float, i16, i16, ptr, %struct.rctf, %struct.rctf, %struct.rctf, i16, i16, i32, ptr }

@G = external local_unnamed_addr global %struct.Global, align 8
@MEM_printmemlist_stats = external local_unnamed_addr global ptr, align 8
@MEM_freeN = external local_unnamed_addr global ptr, align 8
@.str = private unnamed_addr constant [21 x i8] c"Preparing Scene data\00", align 1
@.str.1 = private unnamed_addr constant [16 x i8] c"render db arena\00", align 1
@slurph_opt = external local_unnamed_addr global i32, align 4
@.str.2 = private unnamed_addr constant [23 x i8] c"Creating Shadowbuffers\00", align 1
@.str.3 = private unnamed_addr constant [35 x i8] c"Calculating previous frame vectors\00", align 1
@.str.4 = private unnamed_addr constant [31 x i8] c"Calculating next frame vectors\00", align 1
@.str.5 = private unnamed_addr constant [32 x i8] c"speed table: missing object %s\0A\00", align 1
@.str.6 = private unnamed_addr constant [79 x i8] c"Warning: object %s has different amount of vertices or strands on other frame\0A\00", align 1
@.str.7 = private unnamed_addr constant [14 x i8] c"bake db arena\00", align 1
@set_dupli_tex_mat.lastob = internal unnamed_addr global ptr null, align 8
@set_dupli_tex_mat.needtexmat = internal unnamed_addr global i1 false, align 4
@init_render_object.lasttime = internal unnamed_addr global double 0.000000e+00, align 8
@MEM_callocN = external local_unnamed_addr global ptr, align 8
@.str.8 = private unnamed_addr constant [12 x i8] c"groupobject\00", align 1
@.str.9 = private unnamed_addr constant [8 x i8] c"lampren\00", align 1
@.str.10 = private unnamed_addr constant [10 x i8] c"sunskyren\00", align 1
@MEM_mallocN = external local_unnamed_addr global ptr, align 8
@.str.11 = private unnamed_addr constant [19 x i8] c"lamp shadow sample\00", align 1
@.str.12 = private unnamed_addr constant [12 x i8] c"initshadbuf\00", align 1
@CD_MASK_BAREMESH = external local_unnamed_addr constant i64, align 8
@.str.13 = private unnamed_addr constant [13 x i8] c"particle_uvs\00", align 1
@.str.14 = private unnamed_addr constant [15 x i8] c"particle_mcols\00", align 1
@.str.15 = private unnamed_addr constant [15 x i8] c"particle orcos\00", align 1
@.str.16 = private unnamed_addr constant [12 x i8] c"StrandBound\00", align 1
@.str.17 = private unnamed_addr constant [14 x i8] c"particle orco\00", align 1
@.str.18 = private unnamed_addr constant [19 x i8] c"set_object_orco gh\00", align 1
@PSYS_FRAND_SEED_OFFSET = external local_unnamed_addr global [1024 x i32], align 16
@PSYS_FRAND_SEED_MULTIPLIER = external local_unnamed_addr global [1024 x i32], align 16
@PSYS_FRAND_BASE = external local_unnamed_addr global [1024 x float], align 16
@static_particle_wire.v1 = internal unnamed_addr global ptr null, align 8
@static_particle_strand.v1 = internal unnamed_addr global ptr null, align 8
@static_particle_strand.v2 = internal unnamed_addr global ptr null, align 8
@static_particle_strand.anor.0 = internal unnamed_addr global float 0.000000e+00, align 4
@static_particle_strand.anor.1 = internal unnamed_addr global float 0.000000e+00, align 4
@static_particle_strand.anor.2 = internal unnamed_addr global float 0.000000e+00, align 4
@static_particle_strand.avec.0 = internal unnamed_addr global float 0.000000e+00, align 4
@static_particle_strand.avec.1 = internal unnamed_addr global float 0.000000e+00, align 4
@static_particle_strand.avec.2 = internal unnamed_addr global float 0.000000e+00, align 4
@static_particle_strand.second = internal unnamed_addr global i1 false, align 4
@.str.19 = private unnamed_addr constant [23 x i8] c"init_render_surf matar\00", align 1
@MEM_dupallocN = external local_unnamed_addr global ptr, align 8
@__func__.init_render_mesh = private unnamed_addr constant [17 x i8] c"init_render_mesh\00", align 1
@.str.20 = private unnamed_addr constant [9 x i8] c"edgesort\00", align 1
@.str.21 = private unnamed_addr constant [22 x i8] c"temp accum for stress\00", align 1
@__const.displace.scale = private unnamed_addr constant [3 x float] [float 1.000000e+00, float 1.000000e+00, float 1.000000e+00], align 4
@.str.22 = private unnamed_addr constant [17 x i8] c"all smooth verts\00", align 1
@.str.23 = private unnamed_addr constant [7 x i8] c"asface\00", align 1
@defmaterial = external global %struct.Material, align 8
@.str.24 = private unnamed_addr constant [14 x i8] c"volume object\00", align 1
@.str.25 = private unnamed_addr constant [10 x i8] c"sorthalos\00", align 1
@.str.26 = private unnamed_addr constant [23 x i8] c"camera inside material\00", align 1
@speedvector_project.pixelphix = internal unnamed_addr global float 0.000000e+00, align 4
@speedvector_project.pixelphiy = internal unnamed_addr global float 0.000000e+00, align 4
@speedvector_project.zmulx = internal unnamed_addr global float 0.000000e+00, align 4
@speedvector_project.zmuly = internal unnamed_addr global float 0.000000e+00, align 4
@speedvector_project.pano = internal unnamed_addr global i32 0, align 4
@.str.27 = private unnamed_addr constant [23 x i8] c"vector render db arena\00", align 1
@.str.28 = private unnamed_addr constant [17 x i8] c"ObInstanceVector\00", align 1
@.str.29 = private unnamed_addr constant [13 x i8] c"vector array\00", align 1
@.str.30 = private unnamed_addr constant [14 x i8] c"StrandSurfWin\00", align 1
@switch.table.RE_Database_Baking = private unnamed_addr constant [12 x i32] [i32 1, i32 1, i32 1, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 1, i32 1], align 4

; Function Attrs: mustprogress nofree nounwind willreturn memory(write, argmem: readwrite) uwtable
define dso_local void @area_lamp_vectors(ptr nocapture noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.LampRen, ptr %0, i64 0, i32 52
  %3 = load float, ptr %2, align 8, !tbaa !34
  %4 = fmul float %3, 5.000000e-01
  %5 = getelementptr inbounds %struct.LampRen, ptr %0, i64 0, i32 53
  %6 = load float, ptr %5, align 4, !tbaa !42
  %7 = fmul float %6, 5.000000e-01
  %8 = getelementptr inbounds %struct.LampRen, ptr %0, i64 0, i32 49
  %9 = load i16, ptr %8, align 8, !tbaa !43
  %10 = sitofp i16 %9 to float
  %11 = tail call float @sqrtf(float noundef %10) #16
  %12 = fdiv float 1.000000e+00, %11
  %13 = fmul float %4, %12
  %14 = fmul float %7, %12
  %15 = getelementptr inbounds %struct.LampRen, ptr %0, i64 0, i32 5
  %16 = load float, ptr %15, align 4, !tbaa !44
  %17 = getelementptr inbounds %struct.LampRen, ptr %0, i64 0, i32 64
  %18 = load float, ptr %17, align 8, !tbaa !44
  %19 = fneg float %13
  %20 = tail call float @llvm.fmuladd.f32(float %19, float %18, float %16)
  %21 = getelementptr inbounds %struct.LampRen, ptr %0, i64 0, i32 64, i64 1
  %22 = load float, ptr %21, align 4, !tbaa !44
  %23 = fneg float %14
  %24 = tail call float @llvm.fmuladd.f32(float %23, float %22, float %20)
  %25 = getelementptr inbounds %struct.LampRen, ptr %0, i64 0, i32 65
  store float %24, ptr %25, align 4, !tbaa !44
  %26 = getelementptr inbounds %struct.LampRen, ptr %0, i64 0, i32 5, i64 1
  %27 = load float, ptr %26, align 4, !tbaa !44
  %28 = getelementptr inbounds %struct.LampRen, ptr %0, i64 0, i32 64, i64 0, i64 1
  %29 = load float, ptr %28, align 4, !tbaa !44
  %30 = tail call float @llvm.fmuladd.f32(float %19, float %29, float %27)
  %31 = getelementptr inbounds %struct.LampRen, ptr %0, i64 0, i32 64, i64 1, i64 1
  %32 = load float, ptr %31, align 4, !tbaa !44
  %33 = tail call float @llvm.fmuladd.f32(float %23, float %32, float %30)
  %34 = getelementptr inbounds %struct.LampRen, ptr %0, i64 0, i32 65, i64 0, i64 1
  store float %33, ptr %34, align 4, !tbaa !44
  %35 = getelementptr inbounds %struct.LampRen, ptr %0, i64 0, i32 5, i64 2
  %36 = load float, ptr %35, align 4, !tbaa !44
  %37 = getelementptr inbounds %struct.LampRen, ptr %0, i64 0, i32 64, i64 0, i64 2
  %38 = load float, ptr %37, align 8, !tbaa !44
  %39 = tail call float @llvm.fmuladd.f32(float %19, float %38, float %36)
  %40 = getelementptr inbounds %struct.LampRen, ptr %0, i64 0, i32 64, i64 1, i64 2
  %41 = load float, ptr %40, align 4, !tbaa !44
  %42 = tail call float @llvm.fmuladd.f32(float %23, float %41, float %39)
  %43 = getelementptr inbounds %struct.LampRen, ptr %0, i64 0, i32 65, i64 0, i64 2
  store float %42, ptr %43, align 4, !tbaa !44
  %44 = tail call float @llvm.fmuladd.f32(float %14, float %22, float %20)
  %45 = getelementptr inbounds %struct.LampRen, ptr %0, i64 0, i32 65, i64 1
  store float %44, ptr %45, align 4, !tbaa !44
  %46 = tail call float @llvm.fmuladd.f32(float %14, float %32, float %30)
  %47 = getelementptr inbounds %struct.LampRen, ptr %0, i64 0, i32 65, i64 1, i64 1
  store float %46, ptr %47, align 4, !tbaa !44
  %48 = tail call float @llvm.fmuladd.f32(float %14, float %41, float %39)
  %49 = getelementptr inbounds %struct.LampRen, ptr %0, i64 0, i32 65, i64 1, i64 2
  store float %48, ptr %49, align 4, !tbaa !44
  %50 = tail call float @llvm.fmuladd.f32(float %13, float %18, float %16)
  %51 = tail call float @llvm.fmuladd.f32(float %14, float %22, float %50)
  %52 = getelementptr inbounds %struct.LampRen, ptr %0, i64 0, i32 65, i64 2
  store float %51, ptr %52, align 4, !tbaa !44
  %53 = tail call float @llvm.fmuladd.f32(float %13, float %29, float %27)
  %54 = tail call float @llvm.fmuladd.f32(float %14, float %32, float %53)
  %55 = getelementptr inbounds %struct.LampRen, ptr %0, i64 0, i32 65, i64 2, i64 1
  store float %54, ptr %55, align 4, !tbaa !44
  %56 = tail call float @llvm.fmuladd.f32(float %13, float %38, float %36)
  %57 = tail call float @llvm.fmuladd.f32(float %14, float %41, float %56)
  %58 = getelementptr inbounds %struct.LampRen, ptr %0, i64 0, i32 65, i64 2, i64 2
  store float %57, ptr %58, align 4, !tbaa !44
  %59 = tail call float @llvm.fmuladd.f32(float %23, float %22, float %50)
  %60 = getelementptr inbounds %struct.LampRen, ptr %0, i64 0, i32 65, i64 3
  store float %59, ptr %60, align 4, !tbaa !44
  %61 = tail call float @llvm.fmuladd.f32(float %23, float %32, float %53)
  %62 = getelementptr inbounds %struct.LampRen, ptr %0, i64 0, i32 65, i64 3, i64 1
  store float %61, ptr %62, align 4, !tbaa !44
  %63 = tail call float @llvm.fmuladd.f32(float %23, float %41, float %56)
  %64 = getelementptr inbounds %struct.LampRen, ptr %0, i64 0, i32 65, i64 3, i64 2
  store float %63, ptr %64, align 4, !tbaa !44
  %65 = getelementptr inbounds %struct.LampRen, ptr %0, i64 0, i32 4
  %66 = load float, ptr %65, align 8, !tbaa !45
  %67 = fmul float %66, %66
  %68 = fmul float %13, 4.000000e+00
  %69 = fmul float %14, %68
  %70 = fdiv float %67, %69
  %71 = getelementptr inbounds %struct.LampRen, ptr %0, i64 0, i32 66
  store float %70, ptr %71, align 4, !tbaa !46
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: mustprogress nofree nounwind willreturn memory(write)
declare float @sqrtf(float noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fmuladd.f32(float, float, float) #3

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind uwtable
define dso_local void @init_render_world(ptr noundef %0) local_unnamed_addr #4 {
  %2 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 46
  %3 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 46, i32 68
  %4 = load ptr, ptr %3, align 8, !tbaa !47
  %5 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 46, i32 67
  %6 = load ptr, ptr %5, align 8, !tbaa !63
  %7 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 44
  %8 = load ptr, ptr %7, align 8, !tbaa !64
  %9 = icmp eq ptr %8, null
  br i1 %9, label %89, label %10

10:                                               ; preds = %1
  %11 = getelementptr inbounds %struct.Scene, ptr %8, i64 0, i32 3
  %12 = load ptr, ptr %11, align 8, !tbaa !65
  %13 = icmp eq ptr %12, null
  br i1 %13, label %89, label %14

14:                                               ; preds = %10
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(528) %2, ptr noundef nonnull align 8 dereferenceable(528) %12, i64 528, i1 false), !tbaa.struct !76
  %15 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 30
  %16 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 32, i64 2
  %17 = load float, ptr %16, align 4, !tbaa !44
  store float %17, ptr %15, align 4, !tbaa !44
  %18 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 32, i64 2, i64 1
  %19 = load float, ptr %18, align 4, !tbaa !44
  %20 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 30, i64 1
  store float %19, ptr %20, align 4, !tbaa !44
  %21 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 32, i64 2, i64 2
  %22 = load float, ptr %21, align 4, !tbaa !44
  %23 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 30, i64 2
  store float %22, ptr %23, align 4, !tbaa !44
  %24 = fmul float %19, %19
  %25 = tail call float @llvm.fmuladd.f32(float %17, float %17, float %24)
  %26 = tail call float @llvm.fmuladd.f32(float %22, float %22, float %25)
  %27 = fcmp ogt float %26, 0x38AA95A5C0000000
  br i1 %27, label %28, label %37

28:                                               ; preds = %14
  %29 = tail call float @sqrtf(float noundef %26) #16
  %30 = fdiv float 1.000000e+00, %29
  %31 = load float, ptr %15, align 4, !tbaa !44
  %32 = fmul float %31, %30
  store float %32, ptr %15, align 4, !tbaa !44
  %33 = load float, ptr %20, align 4, !tbaa !44
  %34 = fmul float %30, %33
  store float %34, ptr %20, align 4, !tbaa !44
  %35 = load float, ptr %23, align 4, !tbaa !44
  %36 = fmul float %30, %35
  br label %38

37:                                               ; preds = %14
  store float 0.000000e+00, ptr %15, align 4, !tbaa !44
  store float 0.000000e+00, ptr %20, align 4, !tbaa !44
  br label %38

38:                                               ; preds = %28, %37
  %39 = phi float [ 0.000000e+00, %37 ], [ %36, %28 ]
  store float %39, ptr %23, align 4, !tbaa !44
  %40 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 31
  %41 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 33
  tail call void @copy_m3_m4(ptr noundef nonnull %40, ptr noundef nonnull %41) #16
  %42 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 46, i32 22
  br label %43

43:                                               ; preds = %38, %55
  %44 = phi i64 [ 0, %38 ], [ %56, %55 ]
  %45 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 46, i32 70, i64 %44
  %46 = load ptr, ptr %45, align 8, !tbaa !77
  %47 = icmp eq ptr %46, null
  br i1 %47, label %55, label %48

48:                                               ; preds = %43
  %49 = getelementptr inbounds %struct.MTex, ptr %46, i64 0, i32 5
  %50 = load ptr, ptr %49, align 8, !tbaa !81
  %51 = icmp eq ptr %50, null
  br i1 %51, label %55, label %52

52:                                               ; preds = %48
  %53 = load i16, ptr %42, align 8, !tbaa !83
  %54 = or i16 %53, 8
  store i16 %54, ptr %42, align 8, !tbaa !83
  br label %55

55:                                               ; preds = %43, %48, %52
  %56 = add nuw nsw i64 %44, 1
  %57 = icmp eq i64 %56, 18
  br i1 %57, label %58, label %43, !llvm.loop !84

58:                                               ; preds = %55
  %59 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 5
  %60 = load i16, ptr %59, align 2, !tbaa !87
  %61 = icmp eq i16 %60, 0
  br i1 %61, label %76, label %62

62:                                               ; preds = %58
  %63 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 46, i32 51
  %64 = sext i16 %60 to i32
  %65 = load i16, ptr %63, align 2, !tbaa !88
  %66 = sext i16 %65 to i32
  %67 = mul nsw i32 %66, %66
  %68 = icmp slt i32 %67, %64
  br i1 %68, label %69, label %76

69:                                               ; preds = %62, %69
  %70 = phi i16 [ %71, %69 ], [ %65, %62 ]
  %71 = add i16 %70, 1
  %72 = sext i16 %71 to i32
  %73 = mul nsw i32 %72, %72
  %74 = icmp slt i32 %73, %64
  br i1 %74, label %69, label %75, !llvm.loop !89

75:                                               ; preds = %69
  store i16 %71, ptr %63, align 2, !tbaa !88
  br label %76

76:                                               ; preds = %62, %75, %58
  %77 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 45, i32 47
  %78 = load i32, ptr %77, align 8, !tbaa !90
  %79 = and i32 %78, 65536
  %80 = icmp eq i32 %79, 0
  br i1 %80, label %81, label %99

81:                                               ; preds = %76
  %82 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 46, i32 64
  %83 = load i16, ptr %82, align 2, !tbaa !91
  %84 = icmp eq i16 %83, 0
  br i1 %84, label %85, label %99

85:                                               ; preds = %81
  %86 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 46, i32 23
  %87 = load i16, ptr %86, align 2, !tbaa !92
  %88 = and i16 %87, -209
  store i16 %88, ptr %86, align 2, !tbaa !92
  br label %99

89:                                               ; preds = %10, %1
  %90 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 46, i32 17
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(528) %2, i8 0, i64 528, i1 false)
  store float 1.000000e+00, ptr %90, align 4, !tbaa !93
  %91 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 36
  %92 = load float, ptr %91, align 8, !tbaa !94
  %93 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 46, i32 31
  store float %92, ptr %93, align 4, !tbaa !95
  %94 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 37
  %95 = load float, ptr %94, align 4, !tbaa !96
  %96 = fsub float %95, %92
  %97 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 46, i32 32
  store float %96, ptr %97, align 8, !tbaa !97
  %98 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 46, i32 30
  store float 1.000000e+00, ptr %98, align 8, !tbaa !98
  br label %99

99:                                               ; preds = %76, %81, %85, %89
  %100 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 46, i32 16
  %101 = load float, ptr %100, align 8, !tbaa !99
  %102 = tail call float @llvm.fmuladd.f32(float %101, float 2.000000e+00, float 5.000000e-01)
  %103 = tail call float @powf(float noundef %102, float noundef -1.000000e+01) #16
  %104 = fadd float %103, 1.000000e+00
  %105 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 46, i32 18
  store float %104, ptr %105, align 8, !tbaa !100
  %106 = fadd float %104, -1.000000e+00
  %107 = fdiv float %106, %104
  %108 = tail call float @logf(float noundef %107) #16
  %109 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 46, i32 17
  %110 = load float, ptr %109, align 4, !tbaa !93
  %111 = fdiv float %108, %110
  %112 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 46, i32 19
  store float %111, ptr %112, align 4, !tbaa !101
  store ptr %4, ptr %3, align 8, !tbaa !47
  store ptr %6, ptr %5, align 8, !tbaa !63
  ret void
}

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #5

declare void @copy_m3_m4(ptr noundef, ptr noundef) local_unnamed_addr #6

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #7

; Function Attrs: mustprogress nofree nounwind willreturn memory(write)
declare float @powf(float noundef, float noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree nounwind willreturn memory(write)
declare float @logf(float noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local void @RE_Database_Free(ptr noundef %0) local_unnamed_addr #4 {
  %2 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 98, i32 11
  %3 = load i16, ptr %2, align 4, !tbaa !102
  %4 = icmp eq i16 %3, 0
  br i1 %4, label %123, label %5

5:                                                ; preds = %1
  %6 = load i32, ptr getelementptr inbounds (%struct.Global, ptr @G, i64 0, i32 16), align 4, !tbaa !103
  %7 = and i32 %6, 1
  %8 = icmp ne i32 %7, 0
  %9 = load i8, ptr getelementptr inbounds (%struct.Global, ptr @G, i64 0, i32 13), align 2
  %10 = icmp ne i8 %9, 0
  %11 = select i1 %8, i1 %10, i1 false
  br i1 %11, label %12, label %19

12:                                               ; preds = %5
  %13 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 45, i32 46
  %14 = load i32, ptr %13, align 4, !tbaa !105
  %15 = and i32 %14, 524296
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %17, label %19

17:                                               ; preds = %12
  tail call void @BKE_image_print_memlist() #16
  %18 = load ptr, ptr @MEM_printmemlist_stats, align 8, !tbaa !77
  tail call void %18() #16
  br label %19

19:                                               ; preds = %12, %17, %5
  %20 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 67
  %21 = load ptr, ptr %20, align 8, !tbaa !77
  %22 = icmp eq ptr %21, null
  br i1 %22, label %47, label %23

23:                                               ; preds = %19, %42
  %24 = phi ptr [ %45, %42 ], [ %21, %19 ]
  tail call void @freeshadowbuf(ptr noundef nonnull %24) #16
  %25 = getelementptr inbounds %struct.LampRen, ptr %24, i64 0, i32 58
  %26 = load ptr, ptr %25, align 8, !tbaa !106
  %27 = icmp eq ptr %26, null
  br i1 %27, label %30, label %28

28:                                               ; preds = %23
  %29 = load ptr, ptr @MEM_freeN, align 8, !tbaa !77
  tail call void %29(ptr noundef nonnull %26) #16
  br label %30

30:                                               ; preds = %28, %23
  %31 = getelementptr inbounds %struct.LampRen, ptr %24, i64 0, i32 67
  %32 = load ptr, ptr %31, align 8, !tbaa !107
  %33 = icmp eq ptr %32, null
  br i1 %33, label %36, label %34

34:                                               ; preds = %30
  %35 = load ptr, ptr @MEM_freeN, align 8, !tbaa !77
  tail call void %35(ptr noundef nonnull %32) #16
  br label %36

36:                                               ; preds = %34, %30
  %37 = getelementptr inbounds %struct.LampRen, ptr %24, i64 0, i32 56
  %38 = load ptr, ptr %37, align 8, !tbaa !108
  %39 = icmp eq ptr %38, null
  br i1 %39, label %42, label %40

40:                                               ; preds = %36
  %41 = load ptr, ptr @MEM_freeN, align 8, !tbaa !77
  tail call void %41(ptr noundef nonnull %38) #16
  br label %42

42:                                               ; preds = %40, %36
  %43 = getelementptr inbounds %struct.LampRen, ptr %24, i64 0, i32 30
  %44 = load ptr, ptr %43, align 8, !tbaa !109
  tail call void @curvemapping_free(ptr noundef %44) #16
  %45 = load ptr, ptr %24, align 8, !tbaa !77
  %46 = icmp eq ptr %45, null
  br i1 %46, label %47, label %23, !llvm.loop !110

47:                                               ; preds = %42, %19
  tail call void @free_volume_precache(ptr noundef %0) #16
  tail call void @BLI_freelistN(ptr noundef nonnull %20) #16
  %48 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 66
  tail call void @BLI_freelistN(ptr noundef nonnull %48) #16
  tail call void @free_renderdata_tables(ptr noundef %0) #16
  %49 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 73
  %50 = load ptr, ptr %49, align 8, !tbaa !111
  %51 = icmp eq ptr %50, null
  br i1 %51, label %54, label %52

52:                                               ; preds = %47
  %53 = load ptr, ptr @MEM_freeN, align 8, !tbaa !77
  tail call void @BLI_ghash_free(ptr noundef nonnull %50, ptr noundef null, ptr noundef %53) #16
  store ptr null, ptr %49, align 8, !tbaa !111
  br label %54

54:                                               ; preds = %47, %52
  %55 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 43
  %56 = load ptr, ptr %55, align 8, !tbaa !112
  %57 = icmp eq ptr %56, null
  br i1 %57, label %59, label %58

58:                                               ; preds = %54
  tail call void @end_render_materials(ptr noundef nonnull %56) #16
  tail call void @end_render_textures(ptr noundef %0) #16
  tail call void @free_pointdensities(ptr noundef %0) #16
  br label %59

59:                                               ; preds = %58, %54
  %60 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 79
  tail call void @BLI_freelistN(ptr noundef nonnull %60) #16
  %61 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 46, i32 67
  %62 = load ptr, ptr %61, align 8, !tbaa !63
  %63 = icmp eq ptr %62, null
  br i1 %63, label %75, label %64

64:                                               ; preds = %59
  %65 = load ptr, ptr @MEM_freeN, align 8, !tbaa !77
  tail call void %65(ptr noundef nonnull %62) #16
  store ptr null, ptr %61, align 8, !tbaa !63
  %66 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 44
  %67 = load ptr, ptr %66, align 8, !tbaa !64
  %68 = icmp eq ptr %67, null
  br i1 %68, label %75, label %69

69:                                               ; preds = %64
  %70 = getelementptr inbounds %struct.Scene, ptr %67, i64 0, i32 3
  %71 = load ptr, ptr %70, align 8, !tbaa !65
  %72 = icmp eq ptr %71, null
  br i1 %72, label %75, label %73

73:                                               ; preds = %69
  %74 = getelementptr inbounds %struct.World, ptr %71, i64 0, i32 67
  store ptr null, ptr %74, align 8, !tbaa !113
  br label %75

75:                                               ; preds = %64, %69, %73, %59
  %76 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 46, i32 68
  %77 = load ptr, ptr %76, align 8, !tbaa !47
  %78 = icmp eq ptr %77, null
  br i1 %78, label %90, label %79

79:                                               ; preds = %75
  %80 = load ptr, ptr @MEM_freeN, align 8, !tbaa !77
  tail call void %80(ptr noundef nonnull %77) #16
  store ptr null, ptr %76, align 8, !tbaa !47
  %81 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 44
  %82 = load ptr, ptr %81, align 8, !tbaa !64
  %83 = icmp eq ptr %82, null
  br i1 %83, label %90, label %84

84:                                               ; preds = %79
  %85 = getelementptr inbounds %struct.Scene, ptr %82, i64 0, i32 3
  %86 = load ptr, ptr %85, align 8, !tbaa !65
  %87 = icmp eq ptr %86, null
  br i1 %87, label %90, label %88

88:                                               ; preds = %84
  %89 = getelementptr inbounds %struct.World, ptr %86, i64 0, i32 68
  store ptr null, ptr %89, align 8, !tbaa !114
  br label %90

90:                                               ; preds = %79, %84, %88, %75
  %91 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 45, i32 47
  %92 = load i32, ptr %91, align 8, !tbaa !90
  %93 = and i32 %92, 65536
  %94 = icmp eq i32 %93, 0
  br i1 %94, label %96, label %95

95:                                               ; preds = %90
  tail call void @free_render_qmcsampler(ptr noundef %0) #16
  br label %96

96:                                               ; preds = %95, %90
  %97 = load i32, ptr %91, align 8, !tbaa !90
  %98 = and i32 %97, 65536
  %99 = icmp eq i32 %98, 0
  br i1 %99, label %101, label %100

100:                                              ; preds = %96
  tail call void @freeraytree(ptr noundef %0) #16
  br label %101

101:                                              ; preds = %100, %96
  tail call void @free_sss(ptr noundef %0) #16
  tail call void @free_occ(ptr noundef %0) #16
  tail call void @free_strand_surface(ptr noundef %0) #16
  %102 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 60
  store i16 0, ptr %2, align 4, !tbaa !102
  %103 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 72
  store ptr null, ptr %103, align 8, !tbaa !115
  %104 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 44
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(20) %102, i8 0, i64 20, i1 false)
  %105 = load ptr, ptr %104, align 8, !tbaa !64
  %106 = icmp eq ptr %105, null
  br i1 %106, label %118, label %107

107:                                              ; preds = %101
  %108 = getelementptr inbounds %struct.Scene, ptr %105, i64 0, i32 22, i32 46
  %109 = load i32, ptr %108, align 4, !tbaa !116
  %110 = and i32 %109, 256
  %111 = icmp eq i32 %110, 0
  br i1 %111, label %118, label %112

112:                                              ; preds = %107
  %113 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 45, i32 46
  %114 = load i32, ptr %113, align 4, !tbaa !105
  %115 = and i32 %114, 524296
  %116 = icmp eq i32 %115, 0
  br i1 %116, label %117, label %118

117:                                              ; preds = %112
  tail call void @BKE_image_free_all_textures() #16
  br label %118

118:                                              ; preds = %107, %117, %112, %101
  %119 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 81
  %120 = load ptr, ptr %119, align 8, !tbaa !117
  %121 = icmp eq ptr %120, null
  br i1 %121, label %123, label %122

122:                                              ; preds = %118
  tail call void @BLI_memarena_free(ptr noundef nonnull %120) #16
  store ptr null, ptr %119, align 8, !tbaa !117
  br label %123

123:                                              ; preds = %118, %122, %1
  ret void
}

declare void @BKE_image_print_memlist() local_unnamed_addr #6

declare void @freeshadowbuf(ptr noundef) local_unnamed_addr #6

declare void @curvemapping_free(ptr noundef) local_unnamed_addr #6

declare void @free_volume_precache(ptr noundef) local_unnamed_addr #6

declare void @BLI_freelistN(ptr noundef) local_unnamed_addr #6

declare void @free_renderdata_tables(ptr noundef) local_unnamed_addr #6

declare void @end_render_materials(ptr noundef) local_unnamed_addr #6

declare void @end_render_textures(ptr noundef) local_unnamed_addr #6

declare void @free_pointdensities(ptr noundef) local_unnamed_addr #6

declare void @free_render_qmcsampler(ptr noundef) local_unnamed_addr #6

declare void @freeraytree(ptr noundef) local_unnamed_addr #6

declare void @free_sss(ptr noundef) local_unnamed_addr #6

declare void @free_occ(ptr noundef) local_unnamed_addr #6

declare void @free_strand_surface(ptr noundef) local_unnamed_addr #6

declare void @BKE_image_free_all_textures() local_unnamed_addr #6

declare void @BLI_memarena_free(ptr noundef) local_unnamed_addr #6

; Function Attrs: nounwind uwtable
define dso_local void @RE_Database_FromScene(ptr noundef %0, ptr noundef %1, ptr noundef %2, i32 noundef %3, i32 noundef %4) local_unnamed_addr #4 {
  %6 = alloca [4 x [4 x float]], align 16
  %7 = alloca [3 x float], align 4
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %6) #16
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %7) #16
  %8 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 43
  store ptr %1, ptr %8, align 8, !tbaa !112
  %9 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 44
  store ptr %2, ptr %9, align 8, !tbaa !64
  %10 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 48
  store i32 %3, ptr %10, align 8, !tbaa !118
  %11 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 45, i32 46
  %12 = load i32, ptr %11, align 4, !tbaa !105
  %13 = and i32 %12, 524288
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %18, label %15

15:                                               ; preds = %5
  %16 = tail call zeroext i8 @BKE_scene_check_color_management_enabled(ptr noundef %2) #16
  %17 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 8
  store i8 %16, ptr %17, align 8, !tbaa !119
  br label %18

18:                                               ; preds = %15, %5
  %19 = tail call ptr @RE_GetCamera(ptr noundef %0) #16
  %20 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 98
  %21 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 98, i32 16
  store ptr @.str, ptr %21, align 8, !tbaa !120
  %22 = getelementptr inbounds %struct.Scene, ptr %2, i64 0, i32 22, i32 5
  %23 = load i32, ptr %22, align 8, !tbaa !121
  store i32 %23, ptr %20, align 8, !tbaa !122
  %24 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 98, i32 18
  %25 = getelementptr inbounds %struct.ID, ptr %2, i64 0, i32 4, i64 2
  %26 = tail call ptr @BLI_strncpy(ptr noundef nonnull %24, ptr noundef nonnull %25, i64 noundef 64) #16
  %27 = tail call ptr @BLI_memarena_new(i64 noundef 16376, ptr noundef nonnull @.str.1) #16
  %28 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 81
  store ptr %27, ptr %28, align 8, !tbaa !117
  %29 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 62
  %30 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 64
  %31 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 63
  %32 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 61
  %33 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 60
  %34 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 66
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(20) %33, i8 0, i64 20, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %34, i8 0, i64 32, i1 false)
  store i32 0, ptr @slurph_opt, align 4, !tbaa !80
  %35 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 98, i32 10
  store i16 0, ptr %35, align 2, !tbaa !123
  %36 = load i32, ptr %10, align 8, !tbaa !118
  %37 = icmp ult i32 %36, 16777216
  %38 = and i32 %3, -16777216
  %39 = select i1 %37, i32 %3, i32 %38
  %40 = load i32, ptr %11, align 4, !tbaa !105
  %41 = and i32 %40, 540680
  %42 = icmp eq i32 %41, 0
  br i1 %42, label %43, label %50

43:                                               ; preds = %18
  %44 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 101
  %45 = load ptr, ptr %44, align 8, !tbaa !124
  %46 = load ptr, ptr %8, align 8, !tbaa !112
  %47 = load ptr, ptr %9, align 8, !tbaa !64
  tail call void @BKE_scene_update_for_newframe(ptr noundef %45, ptr noundef %46, ptr noundef %47, i32 noundef %39) #16
  %48 = load ptr, ptr %9, align 8, !tbaa !64
  %49 = getelementptr inbounds %struct.Scene, ptr %48, i64 0, i32 22
  tail call void @render_update_anim_renderdata(ptr noundef %0, ptr noundef nonnull %49) #16
  br label %50

50:                                               ; preds = %43, %18
  %51 = icmp ne i32 %4, 0
  %52 = icmp ne ptr %19, null
  %53 = select i1 %51, i1 %52, i1 false
  br i1 %53, label %54, label %58

54:                                               ; preds = %50
  tail call void @RE_SetCamera(ptr noundef %0, ptr noundef nonnull %19) #16
  %55 = getelementptr inbounds %struct.Object, ptr %19, i64 0, i32 47
  call void @normalize_m4_m4(ptr noundef nonnull %6, ptr noundef nonnull %55) #16
  %56 = call zeroext i8 @invert_m4(ptr noundef nonnull %6) #16
  call void @RE_SetView(ptr noundef %0, ptr noundef nonnull %6) #16
  %57 = load ptr, ptr %8, align 8, !tbaa !112
  call void @DAG_id_tag_update_ex(ptr noundef %57, ptr noundef nonnull %19, i16 noundef signext 1) #16
  br label %58

58:                                               ; preds = %54, %50
  %59 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 34
  %60 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 32
  call void @copy_m4_m4(ptr noundef nonnull %59, ptr noundef nonnull %60) #16
  call void @init_render_world(ptr noundef %0)
  %61 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 45, i32 47
  %62 = load i32, ptr %61, align 8, !tbaa !90
  %63 = and i32 %62, 65536
  %64 = icmp eq i32 %63, 0
  br i1 %64, label %76, label %65

65:                                               ; preds = %58
  call void @init_render_qmcsampler(ptr noundef %0) #16
  %66 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 46
  %67 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 46, i32 23
  %68 = load i16, ptr %67, align 2, !tbaa !92
  %69 = and i16 %68, 208
  %70 = icmp eq i16 %69, 0
  br i1 %70, label %76, label %71

71:                                               ; preds = %65
  %72 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 46, i32 63
  %73 = load i16, ptr %72, align 8, !tbaa !125
  %74 = icmp eq i16 %73, 0
  br i1 %74, label %75, label %76

75:                                               ; preds = %71
  call void @init_ao_sphere(ptr noundef nonnull %66) #16
  br label %76

76:                                               ; preds = %65, %75, %71, %58
  call void @init_render_textures(ptr noundef %0) #16
  %77 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 46, i32 12
  %78 = load float, ptr %77, align 4, !tbaa !44
  store float %78, ptr %7, align 4, !tbaa !44
  %79 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 46, i32 13
  %80 = load float, ptr %79, align 4, !tbaa !44
  %81 = getelementptr inbounds float, ptr %7, i64 1
  store float %80, ptr %81, align 4, !tbaa !44
  %82 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 46, i32 14
  %83 = load float, ptr %82, align 4, !tbaa !44
  %84 = getelementptr inbounds float, ptr %7, i64 2
  store float %83, ptr %84, align 4, !tbaa !44
  %85 = load ptr, ptr %8, align 8, !tbaa !112
  %86 = load i32, ptr %61, align 8, !tbaa !90
  call void @init_render_materials(ptr noundef %85, i32 noundef %86, ptr noundef nonnull %7) #16
  call void @set_node_shader_lamp_loop(ptr noundef nonnull @shade_material_loop) #16
  call fastcc void @database_init_objects(ptr noundef %0, i32 noundef %39, i32 noundef 0, i32 noundef 0, ptr noundef null, i32 noundef 0)
  %87 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 96
  %88 = load ptr, ptr %87, align 8, !tbaa !126
  %89 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 97
  %90 = load ptr, ptr %89, align 8, !tbaa !127
  %91 = call i32 %88(ptr noundef %90) #16
  %92 = icmp eq i32 %91, 0
  br i1 %92, label %93, label %168

93:                                               ; preds = %76
  %94 = load ptr, ptr %9, align 8, !tbaa !64
  %95 = getelementptr inbounds %struct.Scene, ptr %94, i64 0, i32 22, i32 46
  %96 = load i32, ptr %95, align 4, !tbaa !116
  %97 = and i32 %96, 524296
  %98 = icmp eq i32 %97, 0
  br i1 %98, label %99, label %132

99:                                               ; preds = %93
  %100 = load ptr, ptr %8, align 8, !tbaa !112
  %101 = getelementptr inbounds %struct.Main, ptr %100, i64 0, i32 32
  %102 = load ptr, ptr %101, align 8, !tbaa !77
  %103 = icmp eq ptr %102, null
  br i1 %103, label %111, label %104

104:                                              ; preds = %99, %104
  %105 = phi ptr [ %109, %104 ], [ %102, %99 ]
  %106 = getelementptr inbounds %struct.ID, ptr %105, i64 0, i32 5
  %107 = load i16, ptr %106, align 2, !tbaa !128
  %108 = or i16 %107, 1024
  store i16 %108, ptr %106, align 2, !tbaa !128
  %109 = load ptr, ptr %105, align 8, !tbaa !77
  %110 = icmp eq ptr %109, null
  br i1 %110, label %111, label %104, !llvm.loop !130

111:                                              ; preds = %104, %99
  %112 = getelementptr inbounds %struct.Main, ptr %100, i64 0, i32 17
  %113 = load ptr, ptr %112, align 8, !tbaa !77
  %114 = icmp eq ptr %113, null
  br i1 %114, label %132, label %115

115:                                              ; preds = %111, %129
  %116 = phi ptr [ %130, %129 ], [ %113, %111 ]
  %117 = getelementptr inbounds %struct.Material, ptr %116, i64 0, i32 105
  %118 = load ptr, ptr %117, align 8, !tbaa !131
  %119 = icmp eq ptr %118, null
  br i1 %119, label %129, label %120

120:                                              ; preds = %115
  %121 = getelementptr inbounds %struct.ID, ptr %118, i64 0, i32 5
  %122 = load i16, ptr %121, align 2, !tbaa !128
  %123 = and i16 %122, 1024
  %124 = icmp eq i16 %123, 0
  br i1 %124, label %129, label %125

125:                                              ; preds = %120
  %126 = getelementptr inbounds %struct.Material, ptr %116, i64 0, i32 51
  %127 = load i32, ptr %126, align 4, !tbaa !135
  %128 = and i32 %127, 268435456
  call fastcc void @add_lightgroup(ptr noundef %0, ptr noundef nonnull %118, i32 noundef %128)
  br label %129

129:                                              ; preds = %125, %120, %115
  %130 = load ptr, ptr %116, align 8, !tbaa !77
  %131 = icmp eq ptr %130, null
  br i1 %131, label %132, label %115, !llvm.loop !136

132:                                              ; preds = %129, %93, %111
  %133 = load ptr, ptr %9, align 8, !tbaa !77
  %134 = icmp eq ptr %133, null
  br i1 %134, label %153, label %135

135:                                              ; preds = %132, %149
  %136 = phi ptr [ %151, %149 ], [ %133, %132 ]
  %137 = getelementptr inbounds %struct.Scene, ptr %136, i64 0, i32 22, i32 60
  %138 = load ptr, ptr %137, align 8, !tbaa !77
  %139 = icmp eq ptr %138, null
  br i1 %139, label %149, label %140

140:                                              ; preds = %135, %146
  %141 = phi ptr [ %147, %146 ], [ %138, %135 ]
  %142 = getelementptr inbounds %struct.SceneRenderLayer, ptr %141, i64 0, i32 4
  %143 = load ptr, ptr %142, align 8, !tbaa !137
  %144 = icmp eq ptr %143, null
  br i1 %144, label %146, label %145

145:                                              ; preds = %140
  call fastcc void @add_lightgroup(ptr noundef %0, ptr noundef nonnull %143, i32 noundef 0)
  br label %146

146:                                              ; preds = %145, %140
  %147 = load ptr, ptr %141, align 8, !tbaa !77
  %148 = icmp eq ptr %147, null
  br i1 %148, label %149, label %140, !llvm.loop !140

149:                                              ; preds = %146, %135
  %150 = getelementptr inbounds %struct.Scene, ptr %136, i64 0, i32 4
  %151 = load ptr, ptr %150, align 8, !tbaa !77
  %152 = icmp eq ptr %151, null
  br i1 %152, label %153, label %135, !llvm.loop !141

153:                                              ; preds = %149, %132
  %154 = load i32, ptr %32, align 4, !tbaa !142
  %155 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 98, i32 2
  store i32 %154, ptr %155, align 8, !tbaa !143
  %156 = load i32, ptr %33, align 8, !tbaa !144
  %157 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 98, i32 1
  store i32 %156, ptr %157, align 4, !tbaa !145
  %158 = load i32, ptr %31, align 4, !tbaa !146
  %159 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 98, i32 3
  store i32 %158, ptr %159, align 4, !tbaa !147
  %160 = load i32, ptr %29, align 8, !tbaa !148
  %161 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 98, i32 4
  store i32 %160, ptr %161, align 8, !tbaa !149
  %162 = load i32, ptr %30, align 8, !tbaa !150
  %163 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 98, i32 5
  store i32 %162, ptr %163, align 4, !tbaa !151
  %164 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 90
  %165 = load ptr, ptr %164, align 8, !tbaa !152
  %166 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 91
  %167 = load ptr, ptr %166, align 8, !tbaa !153
  call void %165(ptr noundef %167, ptr noundef nonnull %20) #16
  br label %168

168:                                              ; preds = %153, %76
  store i32 1, ptr @slurph_opt, align 4, !tbaa !80
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %7) #16
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %6) #16
  ret void
}

declare zeroext i8 @BKE_scene_check_color_management_enabled(ptr noundef) local_unnamed_addr #6

declare ptr @RE_GetCamera(ptr noundef) local_unnamed_addr #6

declare ptr @BLI_strncpy(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #6

declare ptr @BLI_memarena_new(i64 noundef, ptr noundef) local_unnamed_addr #6

declare void @BKE_scene_update_for_newframe(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #6

declare void @render_update_anim_renderdata(ptr noundef, ptr noundef) local_unnamed_addr #6

declare void @RE_SetCamera(ptr noundef, ptr noundef) local_unnamed_addr #6

declare void @normalize_m4_m4(ptr noundef, ptr noundef) local_unnamed_addr #6

declare zeroext i8 @invert_m4(ptr noundef) local_unnamed_addr #6

declare void @RE_SetView(ptr noundef, ptr noundef) local_unnamed_addr #6

declare void @DAG_id_tag_update_ex(ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #6

declare void @copy_m4_m4(ptr noundef, ptr noundef) local_unnamed_addr #6

declare void @init_render_qmcsampler(ptr noundef) local_unnamed_addr #6

declare void @init_ao_sphere(ptr noundef) local_unnamed_addr #6

declare void @init_render_textures(ptr noundef) local_unnamed_addr #6

declare void @init_render_materials(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #6

declare void @set_node_shader_lamp_loop(ptr noundef) local_unnamed_addr #6

declare void @shade_material_loop(ptr noundef, ptr noundef) #6

; Function Attrs: nounwind uwtable
define internal fastcc void @database_init_objects(ptr noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, ptr noundef %4, i32 noundef %5) unnamed_addr #4 {
  %7 = alloca ptr, align 8
  %8 = alloca [4 x [4 x float]], align 16
  %9 = alloca [4 x [4 x float]], align 16
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %7) #16
  store ptr null, ptr @set_dupli_tex_mat.lastob, align 8, !tbaa !77
  store i1 false, ptr @set_dupli_tex_mat.needtexmat, align 4
  %10 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 43
  %11 = load ptr, ptr %10, align 8, !tbaa !112
  %12 = getelementptr inbounds %struct.Main, ptr %11, i64 0, i32 13
  %13 = load ptr, ptr %12, align 8, !tbaa !77
  %14 = icmp eq ptr %13, null
  br i1 %14, label %31, label %15

15:                                               ; preds = %6
  %16 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 32
  br label %17

17:                                               ; preds = %15, %17
  %18 = phi ptr [ %13, %15 ], [ %29, %17 ]
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %8) #16
  %19 = getelementptr inbounds %struct.Object, ptr %18, i64 0, i32 47
  call void @mul_m4_m4m4(ptr noundef nonnull %8, ptr noundef nonnull %16, ptr noundef nonnull %19) #16
  %20 = getelementptr inbounds %struct.Object, ptr %18, i64 0, i32 51
  %21 = call zeroext i8 @invert_m4_m4(ptr noundef nonnull %20, ptr noundef nonnull %8) #16
  %22 = getelementptr inbounds %struct.Object, ptr %18, i64 0, i32 50
  call void @copy_m4_m4(ptr noundef nonnull %22, ptr noundef nonnull %20) #16
  %23 = getelementptr inbounds %struct.Object, ptr %18, i64 0, i32 53
  %24 = load i16, ptr %23, align 4, !tbaa !154
  %25 = and i16 %24, -1025
  store i16 %25, ptr %23, align 4, !tbaa !154
  %26 = getelementptr inbounds %struct.Object, ptr %18, i64 0, i32 55
  %27 = load i16, ptr %26, align 8, !tbaa !157
  %28 = and i16 %27, -4097
  store i16 %28, ptr %26, align 8, !tbaa !157
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %8) #16
  %29 = load ptr, ptr %18, align 8, !tbaa !77
  %30 = icmp eq ptr %29, null
  br i1 %30, label %31, label %17, !llvm.loop !158

31:                                               ; preds = %17, %6
  %32 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 44
  %33 = load ptr, ptr %32, align 8, !tbaa !64
  store ptr %33, ptr %7, align 8, !tbaa !77
  %34 = call ptr @_setlooper_base_step(ptr noundef nonnull %7, ptr noundef null) #16
  %35 = icmp eq ptr %34, null
  br i1 %35, label %586, label %36

36:                                               ; preds = %31
  %37 = icmp eq i32 %5, 0
  %38 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 45, i32 46
  %39 = icmp eq i32 %2, 0
  %40 = icmp eq i32 %3, 0
  %41 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 48
  %42 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 101
  %43 = icmp eq i32 %2, 0
  %44 = icmp eq i32 %3, 0
  %45 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 68
  %46 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 32
  %47 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 68
  %48 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 32
  %49 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 96
  %50 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 97
  %51 = icmp eq i32 %2, 0
  %52 = icmp eq i32 %3, 0
  %53 = icmp eq i32 %2, 0
  %54 = icmp eq i32 %3, 0
  %55 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 96
  %56 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 97
  br label %57

57:                                               ; preds = %36, %583
  %58 = phi ptr [ %34, %36 ], [ %584, %583 ]
  %59 = getelementptr inbounds %struct.Base, ptr %58, i64 0, i32 7
  %60 = load ptr, ptr %59, align 8, !tbaa !159
  %61 = load ptr, ptr %32, align 8, !tbaa !64
  %62 = getelementptr inbounds %struct.Scene, ptr %61, i64 0, i32 22, i32 60
  %63 = load ptr, ptr %62, align 8, !tbaa !77
  %64 = icmp eq ptr %63, null
  br i1 %64, label %80, label %65

65:                                               ; preds = %57, %76
  %66 = phi ptr [ %78, %76 ], [ %63, %57 ]
  %67 = phi i32 [ %77, %76 ], [ 0, %57 ]
  %68 = getelementptr inbounds %struct.SceneRenderLayer, ptr %66, i64 0, i32 9
  %69 = load i32, ptr %68, align 8, !tbaa !161
  %70 = and i32 %69, 512
  %71 = icmp eq i32 %70, 0
  br i1 %71, label %76, label %72

72:                                               ; preds = %65
  %73 = getelementptr inbounds %struct.SceneRenderLayer, ptr %66, i64 0, i32 5
  %74 = load i32, ptr %73, align 8, !tbaa !162
  %75 = or i32 %74, %67
  br label %76

76:                                               ; preds = %72, %65
  %77 = phi i32 [ %75, %72 ], [ %67, %65 ]
  %78 = load ptr, ptr %66, align 8, !tbaa !77
  %79 = icmp eq ptr %78, null
  br i1 %79, label %80, label %65, !llvm.loop !163

80:                                               ; preds = %76, %57
  %81 = phi i32 [ 0, %57 ], [ %77, %76 ]
  %82 = select i1 %37, i32 -1, i32 %81
  %83 = and i32 %82, %1
  %84 = load i32, ptr %38, align 4, !tbaa !105
  %85 = and i32 %84, 524288
  %86 = icmp eq i32 %85, 0
  %87 = getelementptr inbounds %struct.Object, ptr %60, i64 0, i32 102
  %88 = load i8, ptr %87, align 8, !tbaa !164
  %89 = lshr i8 %88, 2
  %90 = select i1 %86, i8 %89, i8 %88
  %91 = and i8 %90, 1
  %92 = icmp eq i8 %91, 0
  br i1 %92, label %93, label %583

93:                                               ; preds = %80
  %94 = getelementptr inbounds %struct.Object, ptr %60, i64 0, i32 53
  %95 = load i16, ptr %94, align 4, !tbaa !154
  %96 = and i16 %95, 1024
  %97 = icmp eq i16 %96, 0
  br i1 %97, label %151, label %98

98:                                               ; preds = %93
  %99 = getelementptr inbounds %struct.Object, ptr %60, i64 0, i32 55
  %100 = load i16, ptr %99, align 8, !tbaa !157
  %101 = and i16 %100, 4096
  %102 = icmp eq i16 %101, 0
  br i1 %102, label %578, label %103

103:                                              ; preds = %98
  %104 = getelementptr inbounds %struct.Object, ptr %60, i64 0, i32 102
  %105 = load i8, ptr %104, align 8, !tbaa !164
  %106 = lshr i8 %105, 2
  %107 = select i1 %86, i8 %106, i8 %105
  %108 = and i8 %107, 1
  %109 = icmp ne i8 %108, 0
  %110 = or i1 %86, %109
  %111 = xor i1 %109, true
  br i1 %110, label %117, label %112

112:                                              ; preds = %103
  %113 = getelementptr inbounds %struct.Object, ptr %60, i64 0, i32 87
  %114 = load i8, ptr %113, align 2, !tbaa !165
  %115 = add i8 %114, -3
  %116 = icmp ult i8 %115, -2
  br label %117

117:                                              ; preds = %112, %103
  %118 = phi i1 [ %116, %112 ], [ %111, %103 ]
  br i1 %118, label %119, label %578

119:                                              ; preds = %117
  %120 = getelementptr inbounds %struct.Object, ptr %60, i64 0, i32 109
  %121 = load ptr, ptr %120, align 8, !tbaa !166
  %122 = icmp eq ptr %121, null
  br i1 %122, label %123, label %130

123:                                              ; preds = %119
  %124 = zext i16 %100 to i32
  %125 = and i32 %124, 2840
  %126 = icmp ne i32 %125, 0
  %127 = and i32 %124, 8
  %128 = icmp eq i32 %127, 0
  %129 = and i1 %126, %128
  br i1 %129, label %578, label %130

130:                                              ; preds = %123, %119
  %131 = getelementptr inbounds %struct.Object, ptr %60, i64 0, i32 3
  %132 = load i16, ptr %131, align 8, !tbaa !167
  %133 = icmp eq i16 %132, 5
  br i1 %133, label %134, label %137

134:                                              ; preds = %130
  %135 = call ptr @BKE_mball_basis_find(ptr noundef %61, ptr noundef %60) #16
  %136 = icmp eq ptr %135, %60
  br i1 %136, label %137, label %578

137:                                              ; preds = %134, %130
  br i1 %39, label %141, label %138

138:                                              ; preds = %137
  %139 = load i16, ptr %131, align 8, !tbaa !167
  %140 = icmp eq i16 %139, 10
  br i1 %140, label %578, label %141

141:                                              ; preds = %138, %137
  %142 = icmp eq ptr %60, %4
  %143 = or i1 %40, %142
  br i1 %143, label %148, label %144

144:                                              ; preds = %141
  %145 = load i16, ptr %94, align 4, !tbaa !154
  %146 = and i16 %145, 1
  %147 = icmp eq i16 %146, 0
  br i1 %147, label %578, label %148

148:                                              ; preds = %144, %141
  call fastcc void @init_render_object(ptr noundef %0, ptr noundef %60, ptr noundef null, ptr noundef null, ptr noundef null, i32 noundef %5)
  %149 = load i16, ptr %99, align 8, !tbaa !157
  %150 = and i16 %149, -4097
  store i16 %150, ptr %99, align 8, !tbaa !157
  br label %578

151:                                              ; preds = %93
  %152 = getelementptr inbounds %struct.Base, ptr %58, i64 0, i32 2
  %153 = load i32, ptr %152, align 8, !tbaa !168
  %154 = and i32 %83, %153
  %155 = icmp eq i32 %154, 0
  br i1 %155, label %156, label %164

156:                                              ; preds = %151
  %157 = getelementptr inbounds %struct.Object, ptr %60, i64 0, i32 3
  %158 = load i16, ptr %157, align 8, !tbaa !167
  %159 = icmp eq i16 %158, 10
  br i1 %159, label %160, label %578

160:                                              ; preds = %156
  %161 = load i32, ptr %41, align 8, !tbaa !118
  %162 = and i32 %161, %153
  %163 = icmp eq i32 %162, 0
  br i1 %163, label %578, label %164

164:                                              ; preds = %160, %151
  %165 = getelementptr inbounds %struct.Object, ptr %60, i64 0, i32 55
  %166 = load i16, ptr %165, align 8, !tbaa !157
  %167 = and i16 %166, 2840
  %168 = icmp eq i16 %167, 0
  br i1 %168, label %532, label %169

169:                                              ; preds = %164
  %170 = getelementptr inbounds %struct.Object, ptr %60, i64 0, i32 3
  %171 = load i16, ptr %170, align 8, !tbaa !167
  %172 = icmp eq i16 %171, 5
  br i1 %172, label %532, label %173

173:                                              ; preds = %169
  call fastcc void @dupli_render_particle_set(ptr noundef %0, ptr noundef %60, i32 noundef %5, i32 noundef 0, i32 noundef 1)
  %174 = load ptr, ptr %42, align 8, !tbaa !124
  %175 = load ptr, ptr %32, align 8, !tbaa !64
  %176 = call ptr @object_duplilist(ptr noundef %174, ptr noundef %175, ptr noundef %60) #16
  %177 = call ptr @duplilist_apply(ptr noundef %60, ptr noundef %176) #16
  call fastcc void @dupli_render_particle_set(ptr noundef %0, ptr noundef %60, i32 noundef %5, i32 noundef 0, i32 noundef 0)
  %178 = load ptr, ptr %176, align 8, !tbaa !77
  %179 = icmp eq ptr %178, null
  br i1 %179, label %479, label %180

180:                                              ; preds = %173
  %181 = getelementptr inbounds %struct.DupliApplyData, ptr %177, i64 0, i32 1
  %182 = getelementptr inbounds %struct.Object, ptr %60, i64 0, i32 52
  br label %187

183:                                              ; preds = %476
  %184 = add nuw i64 %188, 1
  %185 = load ptr, ptr %189, align 8, !tbaa !77
  %186 = icmp eq ptr %185, null
  br i1 %186, label %479, label %187, !llvm.loop !169

187:                                              ; preds = %180, %183
  %188 = phi i64 [ 0, %180 ], [ %184, %183 ]
  %189 = phi ptr [ %178, %180 ], [ %185, %183 ]
  %190 = load ptr, ptr %181, align 8, !tbaa !170
  %191 = getelementptr inbounds %struct.DupliExtraData, ptr %190, i64 %188
  %192 = getelementptr inbounds %struct.DupliObject, ptr %189, i64 0, i32 2
  %193 = load ptr, ptr %192, align 8, !tbaa !172
  %194 = getelementptr inbounds %struct.Object, ptr %193, i64 0, i32 47
  %195 = getelementptr inbounds %struct.DupliObject, ptr %189, i64 0, i32 3
  call void @copy_m4_m4(ptr noundef nonnull %194, ptr noundef nonnull %195) #16
  %196 = getelementptr inbounds %struct.Object, ptr %193, i64 0, i32 55
  %197 = load i16, ptr %196, align 8, !tbaa !157
  %198 = and i16 %197, 4096
  %199 = icmp eq i16 %198, 0
  br i1 %199, label %200, label %204

200:                                              ; preds = %187
  %201 = getelementptr inbounds %struct.DupliObject, ptr %189, i64 0, i32 7
  %202 = load i8, ptr %201, align 2, !tbaa !174
  %203 = icmp eq i8 %202, 0
  br i1 %203, label %204, label %476

204:                                              ; preds = %200, %187
  %205 = load i32, ptr %38, align 4, !tbaa !105
  %206 = and i32 %205, 524288
  %207 = icmp eq i32 %206, 0
  %208 = getelementptr inbounds %struct.Object, ptr %193, i64 0, i32 102
  %209 = load i8, ptr %208, align 8, !tbaa !164
  %210 = lshr i8 %209, 2
  %211 = select i1 %207, i8 %210, i8 %209
  %212 = and i8 %211, 1
  %213 = icmp ne i8 %212, 0
  %214 = or i1 %207, %213
  br i1 %214, label %221, label %215

215:                                              ; preds = %204
  %216 = getelementptr inbounds %struct.Object, ptr %193, i64 0, i32 87
  %217 = load i8, ptr %216, align 2, !tbaa !165
  %218 = add i8 %217, -1
  %219 = icmp ult i8 %218, 2
  %220 = zext i1 %219 to i8
  br label %221

221:                                              ; preds = %204, %215
  %222 = phi i8 [ %220, %215 ], [ %212, %204 ]
  %223 = icmp eq i8 %222, 0
  br i1 %223, label %224, label %476

224:                                              ; preds = %221
  %225 = getelementptr inbounds %struct.Object, ptr %193, i64 0, i32 3
  %226 = load i16, ptr %225, align 8, !tbaa !167
  %227 = icmp eq i16 %226, 5
  br i1 %227, label %476, label %228

228:                                              ; preds = %224
  %229 = getelementptr inbounds %struct.Object, ptr %193, i64 0, i32 102
  %230 = load i8, ptr %229, align 8, !tbaa !164
  %231 = lshr i8 %230, 2
  %232 = select i1 %207, i8 %231, i8 %230
  %233 = and i8 %232, 1
  %234 = icmp ne i8 %233, 0
  %235 = or i1 %207, %234
  %236 = xor i1 %234, true
  br i1 %235, label %242, label %237

237:                                              ; preds = %228
  %238 = getelementptr inbounds %struct.Object, ptr %193, i64 0, i32 87
  %239 = load i8, ptr %238, align 2, !tbaa !165
  %240 = add i8 %239, -3
  %241 = icmp ult i8 %240, -2
  br label %242

242:                                              ; preds = %237, %228
  %243 = phi i1 [ %241, %237 ], [ %236, %228 ]
  br i1 %243, label %244, label %476

244:                                              ; preds = %242
  %245 = getelementptr inbounds %struct.Object, ptr %193, i64 0, i32 109
  %246 = load ptr, ptr %245, align 8, !tbaa !166
  %247 = icmp eq ptr %246, null
  br i1 %247, label %248, label %255

248:                                              ; preds = %244
  %249 = zext i16 %197 to i32
  %250 = and i32 %249, 2840
  %251 = icmp ne i32 %250, 0
  %252 = and i32 %249, 8
  %253 = icmp eq i32 %252, 0
  %254 = and i1 %251, %253
  br i1 %254, label %476, label %255

255:                                              ; preds = %244, %248
  br i1 %43, label %259, label %256

256:                                              ; preds = %255
  %257 = load i16, ptr %225, align 8, !tbaa !167
  %258 = icmp eq i16 %257, 10
  br i1 %258, label %476, label %259

259:                                              ; preds = %256, %255
  %260 = icmp eq ptr %193, %4
  %261 = or i1 %44, %260
  br i1 %261, label %267, label %262

262:                                              ; preds = %259
  %263 = getelementptr inbounds %struct.Object, ptr %193, i64 0, i32 53
  %264 = load i16, ptr %263, align 4, !tbaa !154
  %265 = and i16 %264, 1
  %266 = icmp eq i16 %265, 0
  br i1 %266, label %476, label %267

267:                                              ; preds = %262, %259
  %268 = call ptr @give_totcolp(ptr noundef %193) #16
  %269 = icmp eq ptr %268, null
  br i1 %269, label %285, label %270

270:                                              ; preds = %267
  %271 = load i16, ptr %268, align 2, !tbaa !79
  %272 = icmp sgt i16 %271, 0
  br i1 %272, label %273, label %285

273:                                              ; preds = %270, %282
  %274 = phi i16 [ %275, %282 ], [ 0, %270 ]
  %275 = add nuw nsw i16 %274, 1
  %276 = call ptr @give_current_material(ptr noundef %193, i16 noundef signext %275) #16
  %277 = icmp eq ptr %276, null
  br i1 %277, label %282, label %278

278:                                              ; preds = %273
  %279 = getelementptr inbounds %struct.Material, ptr %276, i64 0, i32 2
  %280 = load i16, ptr %279, align 8, !tbaa !175
  %281 = icmp eq i16 %280, 1
  br i1 %281, label %311, label %282

282:                                              ; preds = %278, %273
  %283 = load i16, ptr %268, align 2, !tbaa !79
  %284 = icmp slt i16 %275, %283
  br i1 %284, label %273, label %285, !llvm.loop !176

285:                                              ; preds = %282, %270, %267
  %286 = getelementptr inbounds %struct.Object, ptr %193, i64 0, i32 109
  br label %287

287:                                              ; preds = %291, %285
  %288 = phi ptr [ %286, %285 ], [ %289, %291 ]
  %289 = load ptr, ptr %288, align 8, !tbaa !77
  %290 = icmp eq ptr %289, null
  br i1 %290, label %298, label %291

291:                                              ; preds = %287
  %292 = getelementptr inbounds %struct.ParticleSystem, ptr %289, i64 0, i32 2
  %293 = load ptr, ptr %292, align 8, !tbaa !177
  %294 = getelementptr inbounds %struct.ParticleSettings, ptr %293, i64 0, i32 21
  %295 = load i16, ptr %294, align 8, !tbaa !179
  %296 = add i16 %295, -5
  %297 = icmp ult i16 %296, 5
  br i1 %297, label %287, label %311, !llvm.loop !181

298:                                              ; preds = %287
  %299 = load i16, ptr %225, align 8, !tbaa !167
  %300 = add i16 %299, -6
  %301 = icmp ult i16 %300, -5
  br i1 %301, label %311, label %302

302:                                              ; preds = %298
  %303 = getelementptr inbounds %struct.DupliObject, ptr %189, i64 0, i32 6
  %304 = load i16, ptr %303, align 4, !tbaa !182
  %305 = icmp eq i16 %304, 256
  br i1 %305, label %306, label %311

306:                                              ; preds = %302
  %307 = getelementptr inbounds %struct.DupliObject, ptr %189, i64 0, i32 8
  %308 = load i8, ptr %307, align 1, !tbaa !183
  %309 = icmp eq i8 %308, 0
  %310 = zext i1 %309 to i32
  br label %311

311:                                              ; preds = %278, %291, %298, %302, %306
  %312 = phi i32 [ 0, %298 ], [ 1, %302 ], [ %310, %306 ], [ 0, %291 ], [ 0, %278 ]
  %313 = icmp eq i32 %312, 0
  br i1 %313, label %469, label %314

314:                                              ; preds = %311
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %9) #16
  %315 = getelementptr inbounds %struct.DupliObject, ptr %189, i64 0, i32 6
  %316 = load i16, ptr %315, align 4, !tbaa !182
  %317 = icmp eq i16 %316, 256
  br i1 %317, label %318, label %345

318:                                              ; preds = %314
  %319 = load i16, ptr %196, align 8, !tbaa !157
  %320 = and i16 %319, 4096
  %321 = icmp eq i16 %320, 0
  br i1 %321, label %322, label %342

322:                                              ; preds = %318
  %323 = load ptr, ptr %45, align 8, !tbaa !77
  %324 = icmp eq ptr %323, null
  br i1 %324, label %342, label %325

325:                                              ; preds = %322, %339
  %326 = phi ptr [ %340, %339 ], [ %323, %322 ]
  %327 = getelementptr inbounds %struct.ObjectRen, ptr %326, i64 0, i32 2
  %328 = load ptr, ptr %327, align 8, !tbaa !184
  %329 = icmp eq ptr %328, %193
  br i1 %329, label %330, label %339

330:                                              ; preds = %325
  %331 = getelementptr inbounds %struct.ObjectRen, ptr %326, i64 0, i32 6
  %332 = load i32, ptr %331, align 4, !tbaa !186
  %333 = icmp eq i32 %332, 0
  br i1 %333, label %334, label %339

334:                                              ; preds = %330
  %335 = getelementptr inbounds %struct.ObjectRen, ptr %326, i64 0, i32 7
  %336 = load i32, ptr %335, align 8, !tbaa !187
  %337 = and i32 %336, 1
  %338 = icmp eq i32 %337, 0
  br i1 %338, label %339, label %342

339:                                              ; preds = %334, %330, %325
  %340 = load ptr, ptr %326, align 8, !tbaa !77
  %341 = icmp eq ptr %340, null
  br i1 %341, label %342, label %325, !llvm.loop !188

342:                                              ; preds = %334, %339, %322, %318
  %343 = phi ptr [ null, %318 ], [ null, %322 ], [ null, %339 ], [ %326, %334 ]
  %344 = icmp eq ptr %343, null
  br i1 %344, label %374, label %345

345:                                              ; preds = %342, %314
  %346 = phi ptr [ null, %314 ], [ %343, %342 ]
  call void @mul_m4_m4m4(ptr noundef nonnull %9, ptr noundef nonnull %46, ptr noundef nonnull %195) #16
  %347 = getelementptr inbounds %struct.DupliObject, ptr %189, i64 0, i32 9
  %348 = load i32, ptr %347, align 8, !tbaa !80
  %349 = load i32, ptr %182, align 8, !tbaa !189
  %350 = call ptr @RE_addRenderInstance(ptr noundef %0, ptr noundef null, ptr noundef %193, ptr noundef %60, i32 noundef %348, i32 noundef 0, ptr noundef nonnull %9, i32 noundef %349) #16
  call fastcc void @set_dupli_tex_mat(ptr noundef %0, ptr noundef %350, ptr noundef nonnull %189, ptr noundef %191)
  %351 = load i16, ptr %315, align 4, !tbaa !182
  %352 = icmp eq i16 %351, 256
  br i1 %352, label %369, label %353

353:                                              ; preds = %345
  %354 = getelementptr inbounds %struct.ObjectInstanceRen, ptr %350, i64 0, i32 12
  %355 = getelementptr inbounds %struct.DupliObject, ptr %189, i64 0, i32 4
  %356 = load float, ptr %355, align 4, !tbaa !44
  store float %356, ptr %354, align 4, !tbaa !44
  %357 = getelementptr inbounds %struct.DupliObject, ptr %189, i64 0, i32 4, i64 1
  %358 = load float, ptr %357, align 4, !tbaa !44
  %359 = getelementptr inbounds %struct.ObjectInstanceRen, ptr %350, i64 0, i32 12, i64 1
  store float %358, ptr %359, align 4, !tbaa !44
  %360 = getelementptr inbounds %struct.DupliObject, ptr %189, i64 0, i32 4, i64 2
  %361 = load float, ptr %360, align 4, !tbaa !44
  %362 = getelementptr inbounds %struct.ObjectInstanceRen, ptr %350, i64 0, i32 12, i64 2
  store float %361, ptr %362, align 4, !tbaa !44
  %363 = getelementptr inbounds %struct.DupliObject, ptr %189, i64 0, i32 5
  %364 = load float, ptr %363, align 4, !tbaa !44
  %365 = getelementptr inbounds %struct.ObjectInstanceRen, ptr %350, i64 0, i32 13
  store float %364, ptr %365, align 8, !tbaa !44
  %366 = getelementptr inbounds %struct.DupliObject, ptr %189, i64 0, i32 5, i64 1
  %367 = load float, ptr %366, align 4, !tbaa !44
  %368 = getelementptr inbounds %struct.ObjectInstanceRen, ptr %350, i64 0, i32 13, i64 1
  store float %367, ptr %368, align 4, !tbaa !44
  br label %374

369:                                              ; preds = %345
  call fastcc void @assign_dupligroup_dupli(ptr noundef %0, ptr noundef %350, ptr noundef %346, ptr noundef nonnull %189)
  %370 = load i16, ptr %196, align 8, !tbaa !157
  %371 = and i16 %370, 4096
  %372 = icmp eq i16 %371, 0
  br i1 %372, label %374, label %373

373:                                              ; preds = %369
  call fastcc void @find_dupli_instances(ptr noundef %0, ptr noundef %346, ptr noundef nonnull %189)
  br label %374

374:                                              ; preds = %353, %373, %369, %342
  %375 = phi ptr [ %350, %353 ], [ %350, %373 ], [ %350, %369 ], [ null, %342 ]
  %376 = phi ptr [ %346, %353 ], [ %346, %373 ], [ %346, %369 ], [ null, %342 ]
  %377 = getelementptr inbounds %struct.Object, ptr %193, i64 0, i32 109
  %378 = load ptr, ptr %377, align 8, !tbaa !77
  %379 = icmp eq ptr %378, null
  br i1 %379, label %455, label %380

380:                                              ; preds = %374
  %381 = getelementptr inbounds %struct.DupliObject, ptr %189, i64 0, i32 9
  %382 = getelementptr inbounds %struct.Object, ptr %193, i64 0, i32 52
  %383 = getelementptr inbounds %struct.DupliObject, ptr %189, i64 0, i32 4
  %384 = getelementptr inbounds %struct.DupliObject, ptr %189, i64 0, i32 4, i64 1
  %385 = getelementptr inbounds %struct.DupliObject, ptr %189, i64 0, i32 4, i64 2
  %386 = getelementptr inbounds %struct.DupliObject, ptr %189, i64 0, i32 5
  %387 = getelementptr inbounds %struct.DupliObject, ptr %189, i64 0, i32 5, i64 1
  br label %388

388:                                              ; preds = %380, %449
  %389 = phi ptr [ %378, %380 ], [ %453, %449 ]
  %390 = phi i32 [ 1, %380 ], [ %452, %449 ]
  %391 = phi ptr [ %376, %380 ], [ %451, %449 ]
  %392 = phi ptr [ %375, %380 ], [ %450, %449 ]
  %393 = load i16, ptr %315, align 4, !tbaa !182
  %394 = icmp eq i16 %393, 256
  br i1 %394, label %395, label %422

395:                                              ; preds = %388
  %396 = load i16, ptr %196, align 8, !tbaa !157
  %397 = and i16 %396, 4096
  %398 = icmp eq i16 %397, 0
  br i1 %398, label %399, label %419

399:                                              ; preds = %395
  %400 = load ptr, ptr %47, align 8, !tbaa !77
  %401 = icmp eq ptr %400, null
  br i1 %401, label %419, label %402

402:                                              ; preds = %399, %416
  %403 = phi ptr [ %417, %416 ], [ %400, %399 ]
  %404 = getelementptr inbounds %struct.ObjectRen, ptr %403, i64 0, i32 2
  %405 = load ptr, ptr %404, align 8, !tbaa !184
  %406 = icmp eq ptr %405, %193
  br i1 %406, label %407, label %416

407:                                              ; preds = %402
  %408 = getelementptr inbounds %struct.ObjectRen, ptr %403, i64 0, i32 6
  %409 = load i32, ptr %408, align 4, !tbaa !186
  %410 = icmp eq i32 %409, %390
  br i1 %410, label %411, label %416

411:                                              ; preds = %407
  %412 = getelementptr inbounds %struct.ObjectRen, ptr %403, i64 0, i32 7
  %413 = load i32, ptr %412, align 8, !tbaa !187
  %414 = and i32 %413, 1
  %415 = icmp eq i32 %414, 0
  br i1 %415, label %416, label %419

416:                                              ; preds = %411, %407, %402
  %417 = load ptr, ptr %403, align 8, !tbaa !77
  %418 = icmp eq ptr %417, null
  br i1 %418, label %419, label %402, !llvm.loop !188

419:                                              ; preds = %411, %416, %399, %395
  %420 = phi ptr [ null, %395 ], [ null, %399 ], [ null, %416 ], [ %403, %411 ]
  %421 = icmp eq ptr %420, null
  br i1 %421, label %449, label %422

422:                                              ; preds = %419, %388
  %423 = phi ptr [ %391, %388 ], [ %420, %419 ]
  %424 = icmp eq ptr %392, null
  br i1 %424, label %425, label %426

425:                                              ; preds = %422
  call void @mul_m4_m4m4(ptr noundef nonnull %9, ptr noundef nonnull %48, ptr noundef nonnull %195) #16
  br label %426

426:                                              ; preds = %425, %422
  %427 = load i32, ptr %381, align 8, !tbaa !80
  %428 = add nsw i32 %390, 1
  %429 = load i32, ptr %382, align 8, !tbaa !189
  %430 = call ptr @RE_addRenderInstance(ptr noundef %0, ptr noundef null, ptr noundef %193, ptr noundef %60, i32 noundef %427, i32 noundef %390, ptr noundef nonnull %9, i32 noundef %429) #16
  call fastcc void @set_dupli_tex_mat(ptr noundef %0, ptr noundef %430, ptr noundef nonnull %189, ptr noundef %191)
  %431 = load i16, ptr %315, align 4, !tbaa !182
  %432 = icmp eq i16 %431, 256
  br i1 %432, label %444, label %433

433:                                              ; preds = %426
  %434 = getelementptr inbounds %struct.ObjectInstanceRen, ptr %430, i64 0, i32 12
  %435 = load float, ptr %383, align 4, !tbaa !44
  store float %435, ptr %434, align 4, !tbaa !44
  %436 = load float, ptr %384, align 4, !tbaa !44
  %437 = getelementptr inbounds %struct.ObjectInstanceRen, ptr %430, i64 0, i32 12, i64 1
  store float %436, ptr %437, align 4, !tbaa !44
  %438 = load float, ptr %385, align 4, !tbaa !44
  %439 = getelementptr inbounds %struct.ObjectInstanceRen, ptr %430, i64 0, i32 12, i64 2
  store float %438, ptr %439, align 4, !tbaa !44
  %440 = load float, ptr %386, align 4, !tbaa !44
  %441 = getelementptr inbounds %struct.ObjectInstanceRen, ptr %430, i64 0, i32 13
  store float %440, ptr %441, align 8, !tbaa !44
  %442 = load float, ptr %387, align 4, !tbaa !44
  %443 = getelementptr inbounds %struct.ObjectInstanceRen, ptr %430, i64 0, i32 13, i64 1
  store float %442, ptr %443, align 4, !tbaa !44
  br label %449

444:                                              ; preds = %426
  call fastcc void @assign_dupligroup_dupli(ptr noundef %0, ptr noundef %430, ptr noundef %423, ptr noundef nonnull %189)
  %445 = load i16, ptr %196, align 8, !tbaa !157
  %446 = and i16 %445, 4096
  %447 = icmp eq i16 %446, 0
  br i1 %447, label %449, label %448

448:                                              ; preds = %444
  call fastcc void @find_dupli_instances(ptr noundef %0, ptr noundef %423, ptr noundef nonnull %189)
  br label %449

449:                                              ; preds = %419, %444, %448, %433
  %450 = phi ptr [ %430, %433 ], [ %430, %448 ], [ %430, %444 ], [ %392, %419 ]
  %451 = phi ptr [ %423, %433 ], [ %423, %448 ], [ %423, %444 ], [ null, %419 ]
  %452 = phi i32 [ %428, %433 ], [ %428, %448 ], [ %428, %444 ], [ %390, %419 ]
  %453 = load ptr, ptr %389, align 8, !tbaa !77
  %454 = icmp eq ptr %453, null
  br i1 %454, label %455, label %388, !llvm.loop !190

455:                                              ; preds = %449, %374
  %456 = phi ptr [ %375, %374 ], [ %450, %449 ]
  %457 = icmp eq ptr %456, null
  br i1 %457, label %458, label %459

458:                                              ; preds = %455
  call fastcc void @init_render_object(ptr noundef %0, ptr noundef %193, ptr noundef %60, ptr noundef nonnull %189, ptr noundef %191, i32 noundef %5)
  br label %459

459:                                              ; preds = %458, %455
  %460 = load i16, ptr %315, align 4, !tbaa !182
  %461 = icmp eq i16 %460, 256
  br i1 %461, label %468, label %462

462:                                              ; preds = %459
  %463 = getelementptr inbounds %struct.Object, ptr %193, i64 0, i32 53
  %464 = load i16, ptr %463, align 4, !tbaa !154
  %465 = or i16 %464, 1024
  store i16 %465, ptr %463, align 4, !tbaa !154
  %466 = load i16, ptr %196, align 8, !tbaa !157
  %467 = or i16 %466, 4096
  store i16 %467, ptr %196, align 8, !tbaa !157
  br label %468

468:                                              ; preds = %462, %459
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %9) #16
  br label %470

469:                                              ; preds = %311
  call fastcc void @init_render_object(ptr noundef %0, ptr noundef %193, ptr noundef %60, ptr noundef nonnull %189, ptr noundef %191, i32 noundef %5)
  br label %470

470:                                              ; preds = %469, %468
  %471 = load ptr, ptr %49, align 8, !tbaa !126
  %472 = load ptr, ptr %50, align 8, !tbaa !127
  %473 = call i32 %471(ptr noundef %472) #16
  %474 = icmp eq i32 %473, 0
  %475 = select i1 %474, i32 0, i32 8
  br label %476

476:                                              ; preds = %262, %256, %248, %242, %470, %224, %221, %200
  %477 = phi i32 [ 10, %200 ], [ 10, %221 ], [ 10, %224 ], [ %475, %470 ], [ 10, %242 ], [ 10, %248 ], [ 10, %256 ], [ 10, %262 ]
  %478 = icmp eq i32 %477, 8
  br i1 %478, label %479, label %183

479:                                              ; preds = %183, %476, %173
  %480 = icmp eq ptr %177, null
  br i1 %480, label %482, label %481

481:                                              ; preds = %479
  call void @duplilist_restore(ptr noundef nonnull %176, ptr noundef nonnull %177) #16
  call void @duplilist_free_apply_data(ptr noundef nonnull %177) #16
  br label %482

482:                                              ; preds = %481, %479
  call void @free_object_duplilist(ptr noundef nonnull %176) #16
  %483 = load i32, ptr %38, align 4, !tbaa !105
  %484 = and i32 %483, 524288
  %485 = icmp eq i32 %484, 0
  %486 = getelementptr inbounds %struct.Object, ptr %60, i64 0, i32 102
  %487 = load i8, ptr %486, align 8, !tbaa !164
  %488 = lshr i8 %487, 2
  %489 = select i1 %485, i8 %488, i8 %487
  %490 = and i8 %489, 1
  %491 = icmp ne i8 %490, 0
  %492 = or i1 %485, %491
  %493 = xor i1 %491, true
  br i1 %492, label %499, label %494

494:                                              ; preds = %482
  %495 = getelementptr inbounds %struct.Object, ptr %60, i64 0, i32 87
  %496 = load i8, ptr %495, align 2, !tbaa !165
  %497 = add i8 %496, -3
  %498 = icmp ult i8 %497, -2
  br label %499

499:                                              ; preds = %494, %482
  %500 = phi i1 [ %498, %494 ], [ %493, %482 ]
  br i1 %500, label %501, label %578

501:                                              ; preds = %499
  %502 = getelementptr inbounds %struct.Object, ptr %60, i64 0, i32 109
  %503 = load ptr, ptr %502, align 8, !tbaa !166
  %504 = icmp eq ptr %503, null
  br i1 %504, label %505, label %513

505:                                              ; preds = %501
  %506 = load i16, ptr %165, align 8, !tbaa !157
  %507 = zext i16 %506 to i32
  %508 = and i32 %507, 2840
  %509 = icmp ne i32 %508, 0
  %510 = and i32 %507, 8
  %511 = icmp eq i32 %510, 0
  %512 = and i1 %509, %511
  br i1 %512, label %578, label %513

513:                                              ; preds = %505, %501
  %514 = load i16, ptr %170, align 8, !tbaa !167
  %515 = icmp eq i16 %514, 5
  br i1 %515, label %516, label %520

516:                                              ; preds = %513
  %517 = load ptr, ptr %32, align 8, !tbaa !64
  %518 = call ptr @BKE_mball_basis_find(ptr noundef %517, ptr noundef %60) #16
  %519 = icmp eq ptr %518, %60
  br i1 %519, label %520, label %578

520:                                              ; preds = %516, %513
  br i1 %51, label %524, label %521

521:                                              ; preds = %520
  %522 = load i16, ptr %170, align 8, !tbaa !167
  %523 = icmp eq i16 %522, 10
  br i1 %523, label %578, label %524

524:                                              ; preds = %521, %520
  %525 = icmp eq ptr %60, %4
  %526 = or i1 %52, %525
  br i1 %526, label %531, label %527

527:                                              ; preds = %524
  %528 = load i16, ptr %94, align 4, !tbaa !154
  %529 = and i16 %528, 1
  %530 = icmp eq i16 %529, 0
  br i1 %530, label %578, label %531

531:                                              ; preds = %527, %524
  call fastcc void @init_render_object(ptr noundef %0, ptr noundef %60, ptr noundef null, ptr noundef null, ptr noundef null, i32 noundef %5)
  br label %578

532:                                              ; preds = %169, %164
  %533 = getelementptr inbounds %struct.Object, ptr %60, i64 0, i32 102
  %534 = load i8, ptr %533, align 8, !tbaa !164
  %535 = lshr i8 %534, 2
  %536 = select i1 %86, i8 %535, i8 %534
  %537 = and i8 %536, 1
  %538 = icmp ne i8 %537, 0
  %539 = or i1 %86, %538
  %540 = xor i1 %538, true
  br i1 %539, label %546, label %541

541:                                              ; preds = %532
  %542 = getelementptr inbounds %struct.Object, ptr %60, i64 0, i32 87
  %543 = load i8, ptr %542, align 2, !tbaa !165
  %544 = add i8 %543, -3
  %545 = icmp ult i8 %544, -2
  br label %546

546:                                              ; preds = %541, %532
  %547 = phi i1 [ %545, %541 ], [ %540, %532 ]
  br i1 %547, label %548, label %578

548:                                              ; preds = %546
  %549 = getelementptr inbounds %struct.Object, ptr %60, i64 0, i32 109
  %550 = load ptr, ptr %549, align 8, !tbaa !166
  %551 = icmp eq ptr %550, null
  br i1 %551, label %552, label %559

552:                                              ; preds = %548
  %553 = zext i16 %166 to i32
  %554 = and i32 %553, 2840
  %555 = icmp ne i32 %554, 0
  %556 = and i32 %553, 8
  %557 = icmp eq i32 %556, 0
  %558 = and i1 %555, %557
  br i1 %558, label %578, label %559

559:                                              ; preds = %552, %548
  %560 = getelementptr inbounds %struct.Object, ptr %60, i64 0, i32 3
  %561 = load i16, ptr %560, align 8, !tbaa !167
  %562 = icmp eq i16 %561, 5
  br i1 %562, label %563, label %566

563:                                              ; preds = %559
  %564 = call ptr @BKE_mball_basis_find(ptr noundef %61, ptr noundef %60) #16
  %565 = icmp eq ptr %564, %60
  br i1 %565, label %566, label %578

566:                                              ; preds = %563, %559
  br i1 %53, label %570, label %567

567:                                              ; preds = %566
  %568 = load i16, ptr %560, align 8, !tbaa !167
  %569 = icmp eq i16 %568, 10
  br i1 %569, label %578, label %570

570:                                              ; preds = %567, %566
  %571 = icmp eq ptr %60, %4
  %572 = or i1 %54, %571
  br i1 %572, label %577, label %573

573:                                              ; preds = %570
  %574 = load i16, ptr %94, align 4, !tbaa !154
  %575 = and i16 %574, 1
  %576 = icmp eq i16 %575, 0
  br i1 %576, label %578, label %577

577:                                              ; preds = %573, %570
  call fastcc void @init_render_object(ptr noundef %0, ptr noundef %60, ptr noundef null, ptr noundef null, ptr noundef null, i32 noundef %5)
  br label %578

578:                                              ; preds = %573, %567, %563, %552, %546, %527, %521, %516, %505, %499, %144, %138, %134, %123, %117, %531, %156, %160, %577, %98, %148
  %579 = load ptr, ptr %55, align 8, !tbaa !126
  %580 = load ptr, ptr %56, align 8, !tbaa !127
  %581 = call i32 %579(ptr noundef %580) #16
  %582 = icmp eq i32 %581, 0
  br i1 %582, label %583, label %586

583:                                              ; preds = %578, %80
  %584 = call ptr @_setlooper_base_step(ptr noundef nonnull %7, ptr noundef nonnull %58) #16
  %585 = icmp eq ptr %584, null
  br i1 %585, label %586, label %57, !llvm.loop !191

586:                                              ; preds = %583, %578, %31
  %587 = load ptr, ptr %10, align 8, !tbaa !112
  %588 = getelementptr inbounds %struct.Main, ptr %587, i64 0, i32 32
  %589 = load ptr, ptr %588, align 8, !tbaa !77
  %590 = icmp eq ptr %589, null
  br i1 %590, label %595, label %591

591:                                              ; preds = %586, %591
  %592 = phi ptr [ %593, %591 ], [ %589, %586 ]
  call fastcc void @add_group_render_dupli_obs(ptr noundef %0, ptr noundef nonnull %592, i32 noundef %2, i32 noundef %3, ptr noundef %4, i32 noundef %5, i32 noundef 0)
  %593 = load ptr, ptr %592, align 8, !tbaa !77
  %594 = icmp eq ptr %593, null
  br i1 %594, label %595, label %591, !llvm.loop !192

595:                                              ; preds = %591, %586
  %596 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 96
  %597 = load ptr, ptr %596, align 8, !tbaa !126
  %598 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 97
  %599 = load ptr, ptr %598, align 8, !tbaa !127
  %600 = call i32 %597(ptr noundef %599) #16
  %601 = icmp eq i32 %600, 0
  br i1 %601, label %602, label %603

602:                                              ; preds = %595
  call void @RE_makeRenderInstances(ptr noundef %0) #16
  br label %603

603:                                              ; preds = %602, %595
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %7) #16
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @RE_Database_Preprocess(ptr noundef %0) local_unnamed_addr #4 {
  %2 = alloca [3 x float], align 4
  %3 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 96
  %4 = load ptr, ptr %3, align 8, !tbaa !126
  %5 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 97
  %6 = load ptr, ptr %5, align 8, !tbaa !127
  %7 = tail call i32 %4(ptr noundef %6) #16
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %9, label %184

9:                                                ; preds = %1
  %10 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 62
  %11 = load i32, ptr %10, align 8, !tbaa !148
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %57, label %13

13:                                               ; preds = %9
  %14 = load ptr, ptr @MEM_callocN, align 8, !tbaa !77
  %15 = sext i32 %11 to i64
  %16 = shl nsw i64 %15, 3
  %17 = tail call ptr %14(i64 noundef %16, ptr noundef nonnull @.str.25) #16
  %18 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 65
  store ptr %17, ptr %18, align 8, !tbaa !193
  %19 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 68
  %20 = load ptr, ptr %19, align 8, !tbaa !77
  %21 = icmp eq ptr %20, null
  br i1 %21, label %55, label %27

22:                                               ; preds = %50, %27
  %23 = phi ptr [ %30, %27 ], [ %51, %50 ]
  %24 = phi ptr [ %29, %27 ], [ %52, %50 ]
  %25 = load ptr, ptr %28, align 8, !tbaa !77
  %26 = icmp eq ptr %25, null
  br i1 %26, label %55, label %27, !llvm.loop !194

27:                                               ; preds = %13, %22
  %28 = phi ptr [ %25, %22 ], [ %20, %13 ]
  %29 = phi ptr [ %24, %22 ], [ %17, %13 ]
  %30 = phi ptr [ %23, %22 ], [ null, %13 ]
  %31 = getelementptr inbounds %struct.ObjectRen, ptr %28, i64 0, i32 13
  %32 = load i32, ptr %31, align 4, !tbaa !195
  %33 = icmp sgt i32 %32, 0
  br i1 %33, label %34, label %22

34:                                               ; preds = %27
  %35 = getelementptr inbounds %struct.ObjectRen, ptr %28, i64 0, i32 21
  br label %36

36:                                               ; preds = %34, %50
  %37 = phi i32 [ 0, %34 ], [ %53, %50 ]
  %38 = phi ptr [ %29, %34 ], [ %52, %50 ]
  %39 = phi ptr [ %30, %34 ], [ %51, %50 ]
  %40 = and i32 %37, 255
  %41 = icmp eq i32 %40, 0
  br i1 %41, label %42, label %48

42:                                               ; preds = %36
  %43 = load ptr, ptr %35, align 8, !tbaa !196
  %44 = lshr exact i32 %37, 8
  %45 = zext nneg i32 %44 to i64
  %46 = getelementptr inbounds ptr, ptr %43, i64 %45
  %47 = load ptr, ptr %46, align 8, !tbaa !77
  br label %50

48:                                               ; preds = %36
  %49 = getelementptr inbounds %struct.HaloRen, ptr %39, i64 1
  br label %50

50:                                               ; preds = %48, %42
  %51 = phi ptr [ %47, %42 ], [ %49, %48 ]
  %52 = getelementptr inbounds ptr, ptr %38, i64 1
  store ptr %51, ptr %38, align 8, !tbaa !77
  %53 = add nuw nsw i32 %37, 1
  %54 = icmp eq i32 %53, %32
  br i1 %54, label %22, label %36, !llvm.loop !197

55:                                               ; preds = %22, %13
  %56 = load ptr, ptr %18, align 8, !tbaa !193
  tail call void @qsort(ptr noundef %56, i64 noundef %15, i64 noundef 8, ptr noundef nonnull @verghalo) #16
  br label %57

57:                                               ; preds = %9, %55
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %2) #16
  store float 0.000000e+00, ptr %2, align 4, !tbaa !44
  %58 = getelementptr inbounds float, ptr %2, i64 1
  store float 0.000000e+00, ptr %58, align 4, !tbaa !44
  %59 = getelementptr inbounds float, ptr %2, i64 2
  %60 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 36
  %61 = load float, ptr %60, align 8, !tbaa !94
  %62 = fneg float %61
  store float %62, ptr %59, align 4, !tbaa !44
  %63 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 80
  %64 = load ptr, ptr %63, align 8, !tbaa !77
  %65 = icmp eq ptr %64, null
  br i1 %65, label %97, label %66

66:                                               ; preds = %57
  %67 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 70
  %68 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 79
  br label %72

69:                                               ; preds = %94, %72
  %70 = load ptr, ptr %73, align 8, !tbaa !77
  %71 = icmp eq ptr %70, null
  br i1 %71, label %97, label %72, !llvm.loop !198

72:                                               ; preds = %69, %66
  %73 = phi ptr [ %64, %66 ], [ %70, %69 ]
  %74 = load ptr, ptr %67, align 8, !tbaa !77
  %75 = icmp eq ptr %74, null
  br i1 %75, label %69, label %76

76:                                               ; preds = %72
  %77 = getelementptr inbounds %struct.VolumeOb, ptr %73, i64 0, i32 3
  %78 = getelementptr inbounds %struct.VolumeOb, ptr %73, i64 0, i32 2
  br label %79

79:                                               ; preds = %94, %76
  %80 = phi ptr [ %74, %76 ], [ %95, %94 ]
  %81 = getelementptr inbounds %struct.ObjectInstanceRen, ptr %80, i64 0, i32 2
  %82 = load ptr, ptr %81, align 8, !tbaa !199
  %83 = load ptr, ptr %77, align 8, !tbaa !201
  %84 = icmp eq ptr %82, %83
  br i1 %84, label %85, label %94

85:                                               ; preds = %79
  %86 = call i32 @point_inside_volume_objectinstance(ptr noundef %0, ptr noundef nonnull %80, ptr noundef nonnull %2) #16
  %87 = icmp eq i32 %86, 0
  br i1 %87, label %94, label %88

88:                                               ; preds = %85
  %89 = load ptr, ptr @MEM_mallocN, align 8, !tbaa !77
  %90 = call ptr %89(i64 noundef 32, ptr noundef nonnull @.str.26) #16
  %91 = load ptr, ptr %78, align 8, !tbaa !203
  %92 = getelementptr inbounds %struct.MatInside, ptr %90, i64 0, i32 2
  store ptr %91, ptr %92, align 8, !tbaa !204
  %93 = getelementptr inbounds %struct.MatInside, ptr %90, i64 0, i32 3
  store ptr %80, ptr %93, align 8, !tbaa !206
  call void @BLI_addtail(ptr noundef nonnull %68, ptr noundef %90) #16
  br label %94

94:                                               ; preds = %88, %85, %79
  %95 = load ptr, ptr %80, align 8, !tbaa !77
  %96 = icmp eq ptr %95, null
  br i1 %96, label %69, label %79, !llvm.loop !207

97:                                               ; preds = %69, %57
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %2) #16
  %98 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 98
  %99 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 98, i32 16
  store ptr @.str.2, ptr %99, align 8, !tbaa !120
  %100 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 90
  %101 = load ptr, ptr %100, align 8, !tbaa !152
  %102 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 91
  %103 = load ptr, ptr %102, align 8, !tbaa !153
  call void %101(ptr noundef %103, ptr noundef nonnull %98) #16
  call void @threaded_makeshadowbufs(ptr noundef %0) #16
  %104 = load ptr, ptr %3, align 8, !tbaa !126
  %105 = load ptr, ptr %5, align 8, !tbaa !127
  %106 = call i32 %104(ptr noundef %105) #16
  %107 = icmp eq i32 %106, 0
  br i1 %107, label %108, label %114

108:                                              ; preds = %97
  %109 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 45, i32 47
  %110 = load i32, ptr %109, align 8, !tbaa !90
  %111 = and i32 %110, 65536
  %112 = icmp eq i32 %111, 0
  br i1 %112, label %114, label %113

113:                                              ; preds = %108
  call void @makeraytree(ptr noundef %0) #16
  br label %114

114:                                              ; preds = %108, %113, %97
  %115 = load ptr, ptr %3, align 8, !tbaa !126
  %116 = load ptr, ptr %5, align 8, !tbaa !127
  %117 = call i32 %115(ptr noundef %116) #16
  %118 = icmp eq i32 %117, 0
  br i1 %118, label %119, label %120

119:                                              ; preds = %114
  call void @make_envmaps(ptr noundef %0) #16
  br label %120

120:                                              ; preds = %119, %114
  %121 = load ptr, ptr %3, align 8, !tbaa !126
  %122 = load ptr, ptr %5, align 8, !tbaa !127
  %123 = call i32 %121(ptr noundef %122) #16
  %124 = icmp eq i32 %123, 0
  br i1 %124, label %125, label %126

125:                                              ; preds = %120
  call void @make_pointdensities(ptr noundef %0) #16
  br label %126

126:                                              ; preds = %125, %120
  %127 = load ptr, ptr %3, align 8, !tbaa !126
  %128 = load ptr, ptr %5, align 8, !tbaa !127
  %129 = call i32 %127(ptr noundef %128) #16
  %130 = icmp eq i32 %129, 0
  br i1 %130, label %131, label %132

131:                                              ; preds = %126
  call void @make_voxeldata(ptr noundef %0) #16
  br label %132

132:                                              ; preds = %131, %126
  %133 = load ptr, ptr %3, align 8, !tbaa !126
  %134 = load ptr, ptr %5, align 8, !tbaa !127
  %135 = call i32 %133(ptr noundef %134) #16
  %136 = icmp eq i32 %135, 0
  br i1 %136, label %137, label %143

137:                                              ; preds = %132
  %138 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 45, i32 47
  %139 = load i32, ptr %138, align 8, !tbaa !90
  %140 = lshr i32 %139, 10
  %141 = trunc i32 %140 to i8
  %142 = and i8 %141, 1
  call void @project_renderdata(ptr noundef %0, ptr noundef nonnull @projectverto, i8 noundef zeroext %142, float noundef 0.000000e+00, i8 noundef zeroext 1) #16
  br label %143

143:                                              ; preds = %137, %132
  %144 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 46, i32 23
  %145 = load i16, ptr %144, align 2, !tbaa !92
  %146 = and i16 %145, 208
  %147 = icmp eq i16 %146, 0
  br i1 %147, label %163, label %148

148:                                              ; preds = %143
  %149 = load ptr, ptr %3, align 8, !tbaa !126
  %150 = load ptr, ptr %5, align 8, !tbaa !127
  %151 = call i32 %149(ptr noundef %150) #16
  %152 = icmp eq i32 %151, 0
  br i1 %152, label %153, label %163

153:                                              ; preds = %148
  %154 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 46, i32 64
  %155 = load i16, ptr %154, align 2, !tbaa !91
  %156 = icmp eq i16 %155, 1
  br i1 %156, label %157, label %163

157:                                              ; preds = %153
  %158 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 45, i32 47
  %159 = load i32, ptr %158, align 8, !tbaa !90
  %160 = and i32 %159, 2
  %161 = icmp eq i32 %160, 0
  br i1 %161, label %163, label %162

162:                                              ; preds = %157
  call void @make_occ_tree(ptr noundef %0) #16
  br label %163

163:                                              ; preds = %153, %162, %157, %148, %143
  %164 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 45, i32 47
  %165 = load i32, ptr %164, align 8, !tbaa !90
  %166 = and i32 %165, 2097152
  %167 = icmp eq i32 %166, 0
  br i1 %167, label %174, label %168

168:                                              ; preds = %163
  %169 = load ptr, ptr %3, align 8, !tbaa !126
  %170 = load ptr, ptr %5, align 8, !tbaa !127
  %171 = call i32 %169(ptr noundef %170) #16
  %172 = icmp eq i32 %171, 0
  br i1 %172, label %173, label %174

173:                                              ; preds = %168
  call void @make_sss_tree(ptr noundef %0) #16
  br label %174

174:                                              ; preds = %173, %168, %163
  %175 = load ptr, ptr %3, align 8, !tbaa !126
  %176 = load ptr, ptr %5, align 8, !tbaa !127
  %177 = call i32 %175(ptr noundef %176) #16
  %178 = icmp eq i32 %177, 0
  br i1 %178, label %179, label %184

179:                                              ; preds = %174
  %180 = load i32, ptr %164, align 8, !tbaa !90
  %181 = and i32 %180, 65536
  %182 = icmp eq i32 %181, 0
  br i1 %182, label %184, label %183

183:                                              ; preds = %179
  call void @volume_precache(ptr noundef %0) #16
  br label %184

184:                                              ; preds = %174, %183, %179, %1
  %185 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 98, i32 11
  store i16 1, ptr %185, align 4, !tbaa !102
  %186 = load ptr, ptr %3, align 8, !tbaa !126
  %187 = load ptr, ptr %5, align 8, !tbaa !127
  %188 = call i32 %186(ptr noundef %187) #16
  %189 = icmp eq i32 %188, 0
  br i1 %189, label %191, label %190

190:                                              ; preds = %184
  call void @RE_Database_Free(ptr noundef %0)
  br label %191

191:                                              ; preds = %190, %184
  %192 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 98
  %193 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 98, i32 16
  store ptr null, ptr %193, align 8, !tbaa !120
  %194 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 90
  %195 = load ptr, ptr %194, align 8, !tbaa !152
  %196 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 91
  %197 = load ptr, ptr %196, align 8, !tbaa !153
  call void %195(ptr noundef %197, ptr noundef nonnull %192) #16
  ret void
}

declare void @threaded_makeshadowbufs(ptr noundef) local_unnamed_addr #6

declare void @makeraytree(ptr noundef) local_unnamed_addr #6

declare void @make_envmaps(ptr noundef) local_unnamed_addr #6

declare void @make_pointdensities(ptr noundef) local_unnamed_addr #6

declare void @make_voxeldata(ptr noundef) local_unnamed_addr #6

declare void @project_renderdata(ptr noundef, ptr noundef, i8 noundef zeroext, float noundef, i8 noundef zeroext) local_unnamed_addr #6

declare void @projectverto(ptr noundef, ptr noundef, ptr noundef) #6

declare void @make_occ_tree(ptr noundef) local_unnamed_addr #6

declare void @make_sss_tree(ptr noundef) local_unnamed_addr #6

declare void @volume_precache(ptr noundef) local_unnamed_addr #6

; Function Attrs: nounwind uwtable
define dso_local void @RE_DataBase_ApplyWindow(ptr noundef %0) local_unnamed_addr #4 {
  tail call void @project_renderdata(ptr noundef %0, ptr noundef nonnull @projectverto, i8 noundef zeroext 0, float noundef 0.000000e+00, i8 noundef zeroext 0) #16
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @RE_DataBase_IncrementalView(ptr noundef %0, ptr noundef %1, i32 noundef %2) local_unnamed_addr #4 {
  %4 = alloca [3 x float], align 4
  %5 = alloca [4 x [4 x float]], align 16
  %6 = alloca [4 x [4 x float]], align 16
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %5) #16
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %6) #16
  %7 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 34
  %8 = call zeroext i8 @invert_m4_m4(ptr noundef nonnull %5, ptr noundef nonnull %7) #16
  call void @mul_m4_m4m4(ptr noundef nonnull %6, ptr noundef %1, ptr noundef nonnull %5) #16
  %9 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 32
  call void @copy_m4_m4(ptr noundef nonnull %9, ptr noundef %1) #16
  %10 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 33
  %11 = call zeroext i8 @invert_m4_m4(ptr noundef nonnull %10, ptr noundef nonnull %9) #16
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %4) #16
  store float 0.000000e+00, ptr %4, align 4, !tbaa !44
  %12 = getelementptr inbounds float, ptr %4, i64 1
  store float 0.000000e+00, ptr %12, align 4, !tbaa !44
  %13 = getelementptr inbounds float, ptr %4, i64 2
  %14 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 36
  %15 = load float, ptr %14, align 8, !tbaa !94
  %16 = fneg float %15
  store float %16, ptr %13, align 4, !tbaa !44
  %17 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 80
  %18 = load ptr, ptr %17, align 8, !tbaa !77
  %19 = icmp eq ptr %18, null
  br i1 %19, label %51, label %20

20:                                               ; preds = %3
  %21 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 70
  %22 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 79
  br label %26

23:                                               ; preds = %48, %26
  %24 = load ptr, ptr %27, align 8, !tbaa !77
  %25 = icmp eq ptr %24, null
  br i1 %25, label %51, label %26, !llvm.loop !198

26:                                               ; preds = %23, %20
  %27 = phi ptr [ %18, %20 ], [ %24, %23 ]
  %28 = load ptr, ptr %21, align 8, !tbaa !77
  %29 = icmp eq ptr %28, null
  br i1 %29, label %23, label %30

30:                                               ; preds = %26
  %31 = getelementptr inbounds %struct.VolumeOb, ptr %27, i64 0, i32 3
  %32 = getelementptr inbounds %struct.VolumeOb, ptr %27, i64 0, i32 2
  br label %33

33:                                               ; preds = %48, %30
  %34 = phi ptr [ %28, %30 ], [ %49, %48 ]
  %35 = getelementptr inbounds %struct.ObjectInstanceRen, ptr %34, i64 0, i32 2
  %36 = load ptr, ptr %35, align 8, !tbaa !199
  %37 = load ptr, ptr %31, align 8, !tbaa !201
  %38 = icmp eq ptr %36, %37
  br i1 %38, label %39, label %48

39:                                               ; preds = %33
  %40 = call i32 @point_inside_volume_objectinstance(ptr noundef %0, ptr noundef nonnull %34, ptr noundef nonnull %4) #16
  %41 = icmp eq i32 %40, 0
  br i1 %41, label %48, label %42

42:                                               ; preds = %39
  %43 = load ptr, ptr @MEM_mallocN, align 8, !tbaa !77
  %44 = call ptr %43(i64 noundef 32, ptr noundef nonnull @.str.26) #16
  %45 = load ptr, ptr %32, align 8, !tbaa !203
  %46 = getelementptr inbounds %struct.MatInside, ptr %44, i64 0, i32 2
  store ptr %45, ptr %46, align 8, !tbaa !204
  %47 = getelementptr inbounds %struct.MatInside, ptr %44, i64 0, i32 3
  store ptr %34, ptr %47, align 8, !tbaa !206
  call void @BLI_addtail(ptr noundef nonnull %22, ptr noundef %44) #16
  br label %48

48:                                               ; preds = %42, %39, %33
  %49 = load ptr, ptr %34, align 8, !tbaa !77
  %50 = icmp eq ptr %49, null
  br i1 %50, label %23, label %33, !llvm.loop !207

51:                                               ; preds = %23, %3
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %4) #16
  %52 = icmp eq i32 %2, 0
  %53 = zext i1 %52 to i32
  call void @env_rotate_scene(ptr noundef %0, ptr noundef nonnull %6, i32 noundef %53) #16
  %54 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 45, i32 47
  %55 = load i32, ptr %54, align 8, !tbaa !90
  %56 = and i32 %55, 2097152
  %57 = icmp eq i32 %56, 0
  br i1 %57, label %66, label %58

58:                                               ; preds = %51
  %59 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 96
  %60 = load ptr, ptr %59, align 8, !tbaa !126
  %61 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 97
  %62 = load ptr, ptr %61, align 8, !tbaa !127
  %63 = call i32 %60(ptr noundef %62) #16
  %64 = icmp eq i32 %63, 0
  br i1 %64, label %65, label %66

65:                                               ; preds = %58
  call void @make_sss_tree(ptr noundef %0) #16
  br label %66

66:                                               ; preds = %65, %58, %51
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %6) #16
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %5) #16
  ret void
}

declare zeroext i8 @invert_m4_m4(ptr noundef, ptr noundef) local_unnamed_addr #6

declare void @mul_m4_m4m4(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #6

declare void @env_rotate_scene(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: nounwind uwtable
define dso_local void @RE_DataBase_GetView(ptr noundef %0, ptr noundef %1) local_unnamed_addr #4 {
  %3 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 32
  tail call void @copy_m4_m4(ptr noundef %1, ptr noundef nonnull %3) #16
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @RE_Database_FromScene_Vectors(ptr noundef %0, ptr noundef %1, ptr noundef %2, i32 noundef %3) local_unnamed_addr #4 {
  %5 = alloca [2 x float], align 4
  %6 = alloca [2 x float], align 4
  %7 = alloca [2 x float], align 4
  %8 = alloca [4 x float], align 16
  %9 = alloca [4 x float], align 16
  %10 = alloca [4 x float], align 16
  %11 = alloca [4 x [4 x float]], align 16
  %12 = alloca [2 x float], align 4
  %13 = alloca [4 x float], align 16
  %14 = alloca [4 x [4 x float]], align 16
  %15 = alloca [4 x float], align 16
  %16 = alloca [4 x float], align 16
  %17 = alloca [4 x float], align 16
  %18 = alloca [4 x float], align 16
  %19 = alloca [4 x float], align 16
  %20 = alloca [4 x [4 x float]], align 16
  %21 = alloca [4 x [4 x float]], align 16
  %22 = alloca [4 x [4 x float]], align 16
  %23 = alloca %struct.ListBase, align 8
  %24 = alloca %struct.ListBase, align 8
  %25 = alloca %struct.ListBase, align 8
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %23) #16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %23, i8 0, i64 16, i1 false)
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %24) #16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %24, i8 0, i64 16, i1 false)
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %25)
  %26 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 98, i32 16
  store ptr @.str.3, ptr %26, align 8, !tbaa !120
  %27 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 45, i32 47
  %28 = load i32, ptr %27, align 8, !tbaa !90
  %29 = or i32 %28, 1048576
  store i32 %29, ptr %27, align 8, !tbaa !90
  tail call fastcc void @speedvector_project(ptr noundef %0, ptr noundef null, ptr noundef null, ptr noundef null)
  tail call fastcc void @database_fromscene_vectors(ptr noundef %0, ptr noundef %2, i32 noundef %3, i32 noundef -1)
  call fastcc void @copy_dbase_object_vectors(ptr noundef %0, ptr noundef nonnull %23)
  %30 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 57
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %25, ptr noundef nonnull align 8 dereferenceable(16) %30, i64 16, i1 false), !tbaa.struct !208
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %30, i8 0, i64 16, i1 false)
  %31 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 98, i32 11
  store i16 1, ptr %31, align 4, !tbaa !102
  call void @RE_Database_Free(ptr noundef %0)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %30, ptr noundef nonnull align 8 dereferenceable(16) %25, i64 16, i1 false), !tbaa.struct !208
  %32 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 96
  %33 = load ptr, ptr %32, align 8, !tbaa !126
  %34 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 97
  %35 = load ptr, ptr %34, align 8, !tbaa !127
  %36 = call i32 %33(ptr noundef %35) #16
  %37 = icmp eq i32 %36, 0
  br i1 %37, label %38, label %39

38:                                               ; preds = %4
  store ptr @.str.4, ptr %26, align 8, !tbaa !120
  call fastcc void @database_fromscene_vectors(ptr noundef %0, ptr noundef %2, i32 noundef %3, i32 noundef 1)
  br label %39

39:                                               ; preds = %38, %4
  call fastcc void @copy_dbase_object_vectors(ptr noundef %0, ptr noundef nonnull %24)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %25, ptr noundef nonnull align 8 dereferenceable(16) %30, i64 16, i1 false), !tbaa.struct !208
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %30, i8 0, i64 16, i1 false)
  store i16 1, ptr %31, align 4, !tbaa !102
  call void @RE_Database_Free(ptr noundef %0)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %30, ptr noundef nonnull align 8 dereferenceable(16) %25, i64 16, i1 false), !tbaa.struct !208
  %40 = load ptr, ptr %32, align 8, !tbaa !126
  %41 = load ptr, ptr %34, align 8, !tbaa !127
  %42 = call i32 %40(ptr noundef %41) #16
  %43 = icmp eq i32 %42, 0
  br i1 %43, label %44, label %45

44:                                               ; preds = %39
  call void @RE_Database_FromScene(ptr noundef %0, ptr noundef %1, ptr noundef %2, i32 noundef %3, i32 noundef 1)
  call void @RE_Database_Preprocess(ptr noundef %0)
  br label %45

45:                                               ; preds = %44, %39
  %46 = load ptr, ptr %32, align 8, !tbaa !126
  %47 = load ptr, ptr %34, align 8, !tbaa !127
  %48 = call i32 %46(ptr noundef %47) #16
  %49 = icmp eq i32 %48, 0
  br i1 %49, label %50, label %721

50:                                               ; preds = %45
  %51 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 44
  %52 = load ptr, ptr %51, align 8, !tbaa !64
  %53 = getelementptr inbounds %struct.Scene, ptr %52, i64 0, i32 22, i32 60
  %54 = load ptr, ptr %53, align 8, !tbaa !77
  %55 = icmp eq ptr %54, null
  br i1 %55, label %56, label %91

56:                                               ; preds = %102, %50
  %57 = phi i32 [ 0, %50 ], [ %103, %102 ]
  %58 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 70
  %59 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 13
  %60 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 14
  %61 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 32
  %62 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 35
  %63 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 35
  %64 = getelementptr inbounds [4 x float], ptr %16, i64 0, i64 1
  %65 = getelementptr inbounds [4 x float], ptr %16, i64 0, i64 2
  %66 = getelementptr inbounds float, ptr %22, i64 1
  %67 = getelementptr inbounds float, ptr %22, i64 2
  %68 = getelementptr inbounds [4 x [4 x float]], ptr %22, i64 0, i64 1
  %69 = getelementptr inbounds [4 x [4 x float]], ptr %22, i64 0, i64 1, i64 1
  %70 = getelementptr inbounds [4 x [4 x float]], ptr %22, i64 0, i64 1, i64 2
  %71 = getelementptr inbounds [4 x float], ptr %19, i64 0, i64 1
  %72 = getelementptr inbounds [4 x [4 x float]], ptr %22, i64 0, i64 2
  %73 = getelementptr inbounds [4 x [4 x float]], ptr %22, i64 0, i64 2, i64 1
  %74 = getelementptr inbounds [4 x [4 x float]], ptr %22, i64 0, i64 2, i64 2
  %75 = getelementptr inbounds [4 x float], ptr %19, i64 0, i64 2
  %76 = getelementptr inbounds [4 x float], ptr %18, i64 0, i64 3
  %77 = getelementptr inbounds [4 x float], ptr %17, i64 0, i64 1
  %78 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 13
  %79 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 14
  %80 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 35
  %81 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 35
  %82 = getelementptr inbounds [2 x float], ptr %7, i64 0, i64 1
  %83 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 35
  %84 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 35
  %85 = getelementptr inbounds float, ptr %12, i64 1
  %86 = getelementptr inbounds [2 x float], ptr %6, i64 0, i64 1
  %87 = getelementptr inbounds [2 x float], ptr %5, i64 0, i64 1
  %88 = getelementptr inbounds [4 x float], ptr %15, i64 0, i64 1
  %89 = getelementptr inbounds [4 x float], ptr %15, i64 0, i64 2
  %90 = getelementptr inbounds [4 x float], ptr %15, i64 0, i64 3
  br label %106

91:                                               ; preds = %50, %102
  %92 = phi ptr [ %104, %102 ], [ %54, %50 ]
  %93 = phi i32 [ %103, %102 ], [ 0, %50 ]
  %94 = getelementptr inbounds %struct.SceneRenderLayer, ptr %92, i64 0, i32 9
  %95 = load i32, ptr %94, align 8, !tbaa !161
  %96 = and i32 %95, 512
  %97 = icmp eq i32 %96, 0
  br i1 %97, label %102, label %98

98:                                               ; preds = %91
  %99 = getelementptr inbounds %struct.SceneRenderLayer, ptr %92, i64 0, i32 5
  %100 = load i32, ptr %99, align 8, !tbaa !162
  %101 = or i32 %100, %93
  br label %102

102:                                              ; preds = %98, %91
  %103 = phi i32 [ %101, %98 ], [ %93, %91 ]
  %104 = load ptr, ptr %92, align 8, !tbaa !77
  %105 = icmp eq ptr %104, null
  br i1 %105, label %56, label %91, !llvm.loop !163

106:                                              ; preds = %56, %718
  %107 = phi i32 [ 0, %56 ], [ %719, %718 ]
  %108 = icmp ne i32 %107, 0
  %109 = select i1 %108, ptr %24, ptr %23
  %110 = load ptr, ptr %109, align 8, !tbaa !209
  %111 = load ptr, ptr %58, align 8, !tbaa !77
  %112 = icmp ne ptr %111, null
  %113 = icmp ne ptr %110, null
  %114 = select i1 %112, i1 %113, i1 false
  br i1 %114, label %115, label %718

115:                                              ; preds = %106
  %116 = icmp eq i32 %107, 0
  br label %117

117:                                              ; preds = %115, %712
  %118 = phi ptr [ %111, %115 ], [ %714, %712 ]
  %119 = phi ptr [ %110, %115 ], [ %713, %712 ]
  %120 = getelementptr inbounds %struct.ObjectInstanceRen, ptr %118, i64 0, i32 7
  %121 = load i32, ptr %120, align 8, !tbaa !210
  %122 = and i32 %121, %57
  %123 = icmp eq i32 %122, 0
  br i1 %123, label %712, label %124

124:                                              ; preds = %117
  %125 = getelementptr inbounds %struct.ObjectInstanceRen, ptr %118, i64 0, i32 2
  %126 = load ptr, ptr %125, align 8, !tbaa !199
  %127 = getelementptr inbounds %struct.ObjectRen, ptr %126, i64 0, i32 10
  %128 = load i32, ptr %127, align 8, !tbaa !211
  %129 = getelementptr inbounds %struct.ObjectInstanceRen, ptr %118, i64 0, i32 17
  store i32 %128, ptr %129, align 8, !tbaa !212
  %130 = getelementptr inbounds %struct.ObjectInstanceRen, ptr %119, i64 0, i32 3
  %131 = load ptr, ptr %130, align 8, !tbaa !213
  %132 = getelementptr inbounds %struct.ObjectInstanceRen, ptr %118, i64 0, i32 3
  %133 = load ptr, ptr %132, align 8, !tbaa !213
  %134 = icmp eq ptr %131, %133
  br i1 %134, label %135, label %153

135:                                              ; preds = %124
  %136 = getelementptr inbounds %struct.ObjectInstanceRen, ptr %119, i64 0, i32 4
  %137 = load ptr, ptr %136, align 8, !tbaa !214
  %138 = getelementptr inbounds %struct.ObjectInstanceRen, ptr %118, i64 0, i32 4
  %139 = load ptr, ptr %138, align 8, !tbaa !214
  %140 = icmp eq ptr %137, %139
  br i1 %140, label %141, label %153

141:                                              ; preds = %135
  %142 = getelementptr inbounds %struct.ObjectInstanceRen, ptr %119, i64 0, i32 5
  %143 = load i32, ptr %142, align 8, !tbaa !215
  %144 = getelementptr inbounds %struct.ObjectInstanceRen, ptr %118, i64 0, i32 5
  %145 = load i32, ptr %144, align 8, !tbaa !215
  %146 = icmp eq i32 %143, %145
  br i1 %146, label %147, label %153

147:                                              ; preds = %141
  %148 = getelementptr inbounds %struct.ObjectInstanceRen, ptr %119, i64 0, i32 6
  %149 = load i32, ptr %148, align 4, !tbaa !216
  %150 = getelementptr inbounds %struct.ObjectInstanceRen, ptr %118, i64 0, i32 6
  %151 = load i32, ptr %150, align 4, !tbaa !216
  %152 = icmp eq i32 %149, %151
  br i1 %152, label %185, label %153

153:                                              ; preds = %147, %141, %135, %124
  %154 = load ptr, ptr %109, align 8, !tbaa !77
  %155 = icmp eq ptr %154, null
  br i1 %155, label %183, label %156

156:                                              ; preds = %153
  %157 = getelementptr inbounds %struct.ObjectInstanceRen, ptr %118, i64 0, i32 4
  %158 = getelementptr inbounds %struct.ObjectInstanceRen, ptr %118, i64 0, i32 5
  %159 = getelementptr inbounds %struct.ObjectInstanceRen, ptr %118, i64 0, i32 6
  br label %160

160:                                              ; preds = %156, %180
  %161 = phi ptr [ %154, %156 ], [ %181, %180 ]
  %162 = getelementptr inbounds %struct.ObjectInstanceRen, ptr %161, i64 0, i32 3
  %163 = load ptr, ptr %162, align 8, !tbaa !213
  %164 = icmp eq ptr %163, %133
  br i1 %164, label %165, label %180

165:                                              ; preds = %160
  %166 = getelementptr inbounds %struct.ObjectInstanceRen, ptr %161, i64 0, i32 4
  %167 = load ptr, ptr %166, align 8, !tbaa !214
  %168 = load ptr, ptr %157, align 8, !tbaa !214
  %169 = icmp eq ptr %167, %168
  br i1 %169, label %170, label %180

170:                                              ; preds = %165
  %171 = getelementptr inbounds %struct.ObjectInstanceRen, ptr %161, i64 0, i32 5
  %172 = load i32, ptr %171, align 8, !tbaa !215
  %173 = load i32, ptr %158, align 8, !tbaa !215
  %174 = icmp eq i32 %172, %173
  br i1 %174, label %175, label %180

175:                                              ; preds = %170
  %176 = getelementptr inbounds %struct.ObjectInstanceRen, ptr %161, i64 0, i32 6
  %177 = load i32, ptr %176, align 4, !tbaa !216
  %178 = load i32, ptr %159, align 4, !tbaa !216
  %179 = icmp eq i32 %177, %178
  br i1 %179, label %185, label %180

180:                                              ; preds = %160, %165, %170, %175
  %181 = load ptr, ptr %161, align 8, !tbaa !77
  %182 = icmp eq ptr %181, null
  br i1 %182, label %183, label %160, !llvm.loop !217

183:                                              ; preds = %180, %153
  %184 = load ptr, ptr %109, align 8, !tbaa !209
  br label %185

185:                                              ; preds = %175, %183, %147
  %186 = phi ptr [ %184, %183 ], [ %119, %147 ], [ %161, %175 ]
  %187 = phi i1 [ true, %183 ], [ false, %147 ], [ false, %175 ]
  br i1 %187, label %188, label %191

188:                                              ; preds = %185
  %189 = getelementptr inbounds %struct.ID, ptr %133, i64 0, i32 4, i64 2
  %190 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.5, ptr noundef nonnull %189)
  br label %712

191:                                              ; preds = %185
  %192 = call ptr @modifiers_findByType(ptr noundef %133, i32 noundef 26) #16
  %193 = icmp eq ptr %192, null
  br i1 %193, label %356, label %194

194:                                              ; preds = %191
  %195 = getelementptr inbounds %struct.FluidsimModifierData, ptr %192, i64 0, i32 1
  %196 = load ptr, ptr %195, align 8, !tbaa !218
  %197 = icmp eq ptr %196, null
  br i1 %197, label %356, label %198

198:                                              ; preds = %194
  %199 = getelementptr inbounds %struct.FluidsimSettings, ptr %196, i64 0, i32 3
  %200 = load i16, ptr %199, align 8, !tbaa !221
  %201 = and i16 %200, 2
  %202 = icmp eq i16 %201, 0
  br i1 %202, label %356, label %203

203:                                              ; preds = %198
  %204 = load ptr, ptr %125, align 8, !tbaa !199
  %205 = getelementptr inbounds %struct.ObjectRen, ptr %204, i64 0, i32 2
  %206 = load ptr, ptr %205, align 8, !tbaa !184
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %16) #16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %16, i8 0, i64 16, i1 false)
  %207 = load i32, ptr %59, align 4, !tbaa !223
  %208 = sdiv i32 %207, 2
  %209 = sitofp i32 %208 to float
  %210 = load i32, ptr %60, align 8, !tbaa !224
  %211 = sdiv i32 %210, 2
  %212 = sitofp i32 %211 to float
  %213 = sitofp i32 %207 to float
  %214 = sitofp i32 %210 to float
  %215 = fmul float %213, %214
  %216 = call float @sqrtf(float noundef %215) #16
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %17) #16
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %18) #16
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %19) #16
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %20) #16
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %21) #16
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %22) #16
  %217 = call ptr @modifiers_findByType(ptr noundef %206, i32 noundef 26) #16
  %218 = icmp eq ptr %217, null
  %219 = select i1 %108, i1 true, i1 %218
  br i1 %219, label %355, label %220

220:                                              ; preds = %203
  %221 = getelementptr inbounds %struct.FluidsimModifierData, ptr %217, i64 0, i32 1
  %222 = load ptr, ptr %221, align 8, !tbaa !218
  call void @copy_m4_m4(ptr noundef nonnull %20, ptr noundef nonnull %61) #16
  %223 = call zeroext i8 @invert_m4_m4(ptr noundef nonnull %22, ptr noundef nonnull %20) #16
  %224 = getelementptr inbounds %struct.FluidsimSettings, ptr %222, i64 0, i32 43
  %225 = load ptr, ptr %224, align 8, !tbaa !225
  %226 = icmp eq ptr %225, null
  br i1 %226, label %355, label %227

227:                                              ; preds = %220
  %228 = getelementptr inbounds %struct.ObjectRen, ptr %204, i64 0, i32 10
  %229 = load i32, ptr %228, align 8, !tbaa !211
  %230 = getelementptr inbounds %struct.FluidsimSettings, ptr %222, i64 0, i32 44
  %231 = load i32, ptr %230, align 8, !tbaa !226
  %232 = icmp eq i32 %229, %231
  br i1 %232, label %233, label %355

233:                                              ; preds = %227
  %234 = getelementptr inbounds %struct.ObjectInstanceRen, ptr %118, i64 0, i32 11
  %235 = load i16, ptr %234, align 8, !tbaa !227
  %236 = and i16 %235, 3
  %237 = icmp eq i16 %236, 0
  br i1 %237, label %240, label %238

238:                                              ; preds = %233
  %239 = getelementptr inbounds %struct.ObjectInstanceRen, ptr %118, i64 0, i32 8
  call void @mul_m4_m4m4(ptr noundef nonnull %21, ptr noundef nonnull %62, ptr noundef nonnull %239) #16
  br label %241

240:                                              ; preds = %233
  call void @copy_m4_m4(ptr noundef nonnull %21, ptr noundef nonnull %63) #16
  br label %241

241:                                              ; preds = %240, %238
  %242 = load i32, ptr %228, align 8, !tbaa !211
  %243 = icmp sgt i32 %242, 0
  br i1 %243, label %244, label %246

244:                                              ; preds = %241
  %245 = zext nneg i32 %242 to i64
  br label %248

246:                                              ; preds = %260, %241
  %247 = sitofp i32 %242 to float
  br label %268

248:                                              ; preds = %244, %260
  %249 = phi i64 [ 0, %244 ], [ %261, %260 ]
  %250 = getelementptr inbounds %struct.FluidVertexVelocity, ptr %225, i64 %249
  br label %251

251:                                              ; preds = %248, %251
  %252 = phi i64 [ 0, %248 ], [ %258, %251 ]
  %253 = getelementptr inbounds [3 x float], ptr %250, i64 0, i64 %252
  %254 = load float, ptr %253, align 4, !tbaa !44
  %255 = getelementptr inbounds [4 x float], ptr %16, i64 0, i64 %252
  %256 = load float, ptr %255, align 4, !tbaa !44
  %257 = fadd float %254, %256
  store float %257, ptr %255, align 4, !tbaa !44
  %258 = add nuw nsw i64 %252, 1
  %259 = icmp eq i64 %258, 3
  br i1 %259, label %260, label %251, !llvm.loop !228

260:                                              ; preds = %251
  %261 = add nuw nsw i64 %249, 1
  %262 = icmp eq i64 %261, %245
  br i1 %262, label %246, label %248, !llvm.loop !229

263:                                              ; preds = %268
  %264 = load i32, ptr %228, align 8, !tbaa !211
  %265 = icmp sgt i32 %264, 0
  br i1 %265, label %266, label %355

266:                                              ; preds = %263
  %267 = getelementptr inbounds %struct.ObjectRen, ptr %204, i64 0, i32 18
  br label %275

268:                                              ; preds = %246, %268
  %269 = phi i64 [ 0, %246 ], [ %273, %268 ]
  %270 = getelementptr inbounds [4 x float], ptr %16, i64 0, i64 %269
  %271 = load float, ptr %270, align 4, !tbaa !44
  %272 = fdiv float %271, %247
  store float %272, ptr %270, align 4, !tbaa !44
  %273 = add nuw nsw i64 %269, 1
  %274 = icmp eq i64 %273, 3
  br i1 %274, label %263, label %268, !llvm.loop !230

275:                                              ; preds = %266, %344
  %276 = phi i64 [ 0, %266 ], [ %351, %344 ]
  %277 = phi ptr [ null, %266 ], [ %291, %344 ]
  %278 = mul nuw nsw i64 %276, 12
  %279 = getelementptr i8, ptr %225, i64 %278
  %280 = and i64 %276, 255
  %281 = icmp eq i64 %280, 0
  br i1 %281, label %282, label %288

282:                                              ; preds = %275
  %283 = load ptr, ptr %267, align 8, !tbaa !231
  %284 = lshr exact i64 %276, 8
  %285 = and i64 %284, 16777215
  %286 = getelementptr inbounds %struct.VertTableNode, ptr %283, i64 %285
  %287 = load ptr, ptr %286, align 8, !tbaa !232
  br label %290

288:                                              ; preds = %275
  %289 = getelementptr inbounds %struct.VertRen, ptr %277, i64 1
  br label %290

290:                                              ; preds = %282, %288
  %291 = phi ptr [ %287, %282 ], [ %289, %288 ]
  %292 = getelementptr inbounds i8, ptr %279, i64 8
  %293 = load float, ptr %292, align 4, !tbaa !44
  %294 = getelementptr inbounds i8, ptr %279, i64 4
  %295 = load float, ptr %294, align 4, !tbaa !44
  %296 = load float, ptr %279, align 4, !tbaa !44
  %297 = fcmp oeq float %296, 0.000000e+00
  %298 = fcmp oeq float %295, 0.000000e+00
  %299 = select i1 %297, i1 %298, i1 false
  %300 = fcmp oeq float %293, 0.000000e+00
  %301 = select i1 %299, i1 %300, i1 false
  %302 = load float, ptr %16, align 16
  %303 = load float, ptr %64, align 4
  %304 = load float, ptr %65, align 8
  %305 = select i1 %301, float %304, float %293
  %306 = select i1 %301, float %303, float %295
  %307 = select i1 %301, float %302, float %296
  %308 = load float, ptr %22, align 16, !tbaa !44
  %309 = load float, ptr %66, align 4, !tbaa !44
  %310 = fmul float %309, %306
  %311 = call float @llvm.fmuladd.f32(float %308, float %307, float %310)
  %312 = load float, ptr %67, align 8, !tbaa !44
  %313 = call float @llvm.fmuladd.f32(float %312, float %305, float %311)
  store float %313, ptr %19, align 16, !tbaa !44
  %314 = load float, ptr %68, align 16, !tbaa !44
  %315 = load float, ptr %69, align 4, !tbaa !44
  %316 = fmul float %306, %315
  %317 = call float @llvm.fmuladd.f32(float %314, float %307, float %316)
  %318 = load float, ptr %70, align 8, !tbaa !44
  %319 = call float @llvm.fmuladd.f32(float %318, float %305, float %317)
  store float %319, ptr %71, align 4, !tbaa !44
  %320 = load float, ptr %72, align 16, !tbaa !44
  %321 = load float, ptr %73, align 4, !tbaa !44
  %322 = fmul float %306, %321
  %323 = call float @llvm.fmuladd.f32(float %320, float %307, float %322)
  %324 = load float, ptr %74, align 8, !tbaa !44
  %325 = call float @llvm.fmuladd.f32(float %324, float %305, float %323)
  store float %325, ptr %75, align 8, !tbaa !44
  call void @projectvert(ptr noundef nonnull %19, ptr noundef nonnull %21, ptr noundef nonnull %17) #16
  call void @projectvert(ptr noundef %291, ptr noundef nonnull %21, ptr noundef nonnull %18) #16
  %326 = load float, ptr %76, align 4, !tbaa !44
  %327 = fcmp olt float %326, 0x3FB99999A0000000
  %328 = fdiv float 1.000000e+00, %326
  %329 = select i1 %327, float 1.000000e+01, float %328
  %330 = load float, ptr %17, align 16, !tbaa !44
  %331 = fmul float %330, %209
  %332 = fmul float %331, %329
  %333 = load float, ptr %77, align 4, !tbaa !44
  %334 = fmul float %333, %212
  %335 = fmul float %329, %334
  %336 = fmul float %335, %335
  %337 = call float @llvm.fmuladd.f32(float %332, float %332, float %336)
  %338 = fcmp ogt float %337, %215
  br i1 %338, label %339, label %344

339:                                              ; preds = %290
  %340 = call float @sqrtf(float noundef %337) #16
  %341 = fdiv float %216, %340
  %342 = fmul float %332, %341
  %343 = fmul float %335, %341
  br label %344

344:                                              ; preds = %339, %290
  %345 = phi float [ %342, %339 ], [ %332, %290 ]
  %346 = phi float [ %343, %339 ], [ %335, %290 ]
  %347 = call ptr @RE_vertren_get_winspeed(ptr noundef nonnull %118, ptr noundef %291, i32 noundef 1) #16
  %348 = getelementptr inbounds float, ptr %347, i64 2
  store float %345, ptr %348, align 4, !tbaa !44
  store float %345, ptr %347, align 4, !tbaa !44
  %349 = getelementptr inbounds float, ptr %347, i64 3
  store float %346, ptr %349, align 4, !tbaa !44
  %350 = getelementptr inbounds float, ptr %347, i64 1
  store float %346, ptr %350, align 4, !tbaa !44
  %351 = add nuw nsw i64 %276, 1
  %352 = trunc i64 %351 to i32
  %353 = load i32, ptr %228, align 8, !tbaa !211
  %354 = icmp sgt i32 %353, %352
  br i1 %354, label %275, label %355, !llvm.loop !234

355:                                              ; preds = %344, %263, %203, %220, %227
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %22) #16
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %21) #16
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %20) #16
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %19) #16
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %18) #16
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %17) #16
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %16) #16
  br label %710

356:                                              ; preds = %198, %194, %191
  %357 = load i32, ptr %129, align 8, !tbaa !212
  %358 = getelementptr inbounds %struct.ObjectInstanceRen, ptr %186, i64 0, i32 17
  %359 = load i32, ptr %358, align 8, !tbaa !212
  %360 = icmp eq i32 %357, %359
  br i1 %360, label %361, label %706

361:                                              ; preds = %356
  %362 = getelementptr inbounds %struct.ObjectInstanceRen, ptr %186, i64 0, i32 16
  %363 = load ptr, ptr %362, align 8, !tbaa !235
  %364 = load ptr, ptr %125, align 8, !tbaa !199
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %13) #16
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %14) #16
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %15) #16
  %365 = load i32, ptr %78, align 4, !tbaa !223
  %366 = sitofp i32 %365 to float
  %367 = load i32, ptr %79, align 8, !tbaa !224
  %368 = sitofp i32 %367 to float
  %369 = fmul float %366, %368
  %370 = call float @sqrtf(float noundef %369) #16
  %371 = getelementptr inbounds %struct.ObjectInstanceRen, ptr %118, i64 0, i32 11
  %372 = load i16, ptr %371, align 8, !tbaa !227
  %373 = and i16 %372, 3
  %374 = icmp eq i16 %373, 0
  br i1 %374, label %377, label %375

375:                                              ; preds = %361
  %376 = getelementptr inbounds %struct.ObjectInstanceRen, ptr %118, i64 0, i32 8
  call void @mul_m4_m4m4(ptr noundef nonnull %14, ptr noundef nonnull %80, ptr noundef nonnull %376) #16
  br label %378

377:                                              ; preds = %361
  call void @copy_m4_m4(ptr noundef nonnull %14, ptr noundef nonnull %81) #16
  br label %378

378:                                              ; preds = %377, %375
  %379 = getelementptr inbounds %struct.ObjectRen, ptr %364, i64 0, i32 18
  %380 = load ptr, ptr %379, align 8, !tbaa !231
  %381 = icmp eq ptr %380, null
  br i1 %381, label %446, label %382

382:                                              ; preds = %378
  %383 = getelementptr inbounds %struct.ObjectRen, ptr %364, i64 0, i32 10
  %384 = load i32, ptr %383, align 8, !tbaa !211
  %385 = icmp sgt i32 %384, 0
  br i1 %385, label %386, label %446

386:                                              ; preds = %382, %438
  %387 = phi ptr [ %443, %438 ], [ %363, %382 ]
  %388 = phi ptr [ %401, %438 ], [ null, %382 ]
  %389 = phi i32 [ %442, %438 ], [ 0, %382 ]
  %390 = and i32 %389, 255
  %391 = icmp eq i32 %390, 0
  br i1 %391, label %392, label %398

392:                                              ; preds = %386
  %393 = load ptr, ptr %379, align 8, !tbaa !231
  %394 = lshr exact i32 %389, 8
  %395 = zext nneg i32 %394 to i64
  %396 = getelementptr inbounds %struct.VertTableNode, ptr %393, i64 %395
  %397 = load ptr, ptr %396, align 8, !tbaa !232
  br label %400

398:                                              ; preds = %386
  %399 = getelementptr inbounds %struct.VertRen, ptr %388, i64 1
  br label %400

400:                                              ; preds = %398, %392
  %401 = phi ptr [ %397, %392 ], [ %399, %398 ]
  %402 = call ptr @RE_vertren_get_winspeed(ptr noundef nonnull %118, ptr noundef %401, i32 noundef 1) #16
  call void @projectvert(ptr noundef %401, ptr noundef nonnull %14, ptr noundef nonnull %13) #16
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %7) #16
  call fastcc void @speedvector_project(ptr noundef null, ptr noundef nonnull %7, ptr noundef %401, ptr noundef nonnull %13)
  %403 = load float, ptr %387, align 4, !tbaa !44
  %404 = load float, ptr %7, align 4, !tbaa !44
  %405 = fsub float %403, %404
  store float %405, ptr %7, align 4, !tbaa !44
  %406 = getelementptr inbounds float, ptr %387, i64 1
  %407 = load float, ptr %406, align 4, !tbaa !44
  %408 = load float, ptr %82, align 4, !tbaa !44
  %409 = fsub float %407, %408
  store float %409, ptr %82, align 4, !tbaa !44
  %410 = fcmp olt float %405, 0x3FB99999A0000000
  %411 = fcmp ogt float %405, 0xBFB99999A0000000
  %412 = and i1 %410, %411
  %413 = fcmp olt float %409, 0x3FB99999A0000000
  %414 = select i1 %412, i1 %413, i1 false
  %415 = fcmp ogt float %409, 0xBFB99999A0000000
  %416 = select i1 %414, i1 %415, i1 false
  br i1 %416, label %417, label %418

417:                                              ; preds = %400
  store float 0.000000e+00, ptr %7, align 4, !tbaa !44
  store float 0.000000e+00, ptr %82, align 4, !tbaa !44
  br label %418

418:                                              ; preds = %417, %400
  %419 = load float, ptr %7, align 4, !tbaa !44
  %420 = load float, ptr %82, align 4, !tbaa !44
  %421 = fmul float %420, %420
  %422 = call float @llvm.fmuladd.f32(float %419, float %419, float %421)
  %423 = fcmp ogt float %422, %369
  br i1 %423, label %424, label %429

424:                                              ; preds = %418
  %425 = call float @sqrtf(float noundef %422) #16
  %426 = fdiv float %370, %425
  %427 = fmul float %419, %426
  store float %427, ptr %7, align 4, !tbaa !44
  %428 = fmul float %420, %426
  store float %428, ptr %82, align 4, !tbaa !44
  br label %429

429:                                              ; preds = %424, %418
  %430 = load float, ptr %7, align 4, !tbaa !44
  br i1 %116, label %436, label %431

431:                                              ; preds = %429
  %432 = fneg float %430
  %433 = getelementptr inbounds float, ptr %402, i64 2
  store float %432, ptr %433, align 4, !tbaa !44
  %434 = load float, ptr %82, align 4, !tbaa !44
  %435 = fneg float %434
  br label %438

436:                                              ; preds = %429
  store float %430, ptr %402, align 4, !tbaa !44
  %437 = load float, ptr %82, align 4, !tbaa !44
  br label %438

438:                                              ; preds = %431, %436
  %439 = phi i64 [ 3, %431 ], [ 1, %436 ]
  %440 = phi float [ %435, %431 ], [ %437, %436 ]
  %441 = getelementptr inbounds float, ptr %402, i64 %439
  store float %440, ptr %441, align 4, !tbaa !44
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %7) #16
  %442 = add nuw nsw i32 %389, 1
  %443 = getelementptr inbounds float, ptr %387, i64 2
  %444 = load i32, ptr %383, align 8, !tbaa !211
  %445 = icmp slt i32 %442, %444
  br i1 %445, label %386, label %446, !llvm.loop !236

446:                                              ; preds = %438, %382, %378
  %447 = getelementptr inbounds %struct.ObjectRen, ptr %364, i64 0, i32 20
  %448 = load ptr, ptr %447, align 8, !tbaa !237
  %449 = icmp eq ptr %448, null
  br i1 %449, label %705, label %450

450:                                              ; preds = %446
  %451 = getelementptr inbounds %struct.ObjectRen, ptr %364, i64 0, i32 22
  %452 = load ptr, ptr %451, align 8, !tbaa !238
  %453 = icmp eq ptr %452, null
  br i1 %453, label %457, label %454

454:                                              ; preds = %450
  %455 = getelementptr inbounds %struct.StrandBuffer, ptr %452, i64 0, i32 8
  %456 = load ptr, ptr %455, align 8, !tbaa !239
  br label %457

457:                                              ; preds = %454, %450
  %458 = phi ptr [ %456, %454 ], [ null, %450 ]
  %459 = icmp eq ptr %458, null
  br i1 %459, label %577, label %460

460:                                              ; preds = %457
  %461 = getelementptr inbounds %struct.StrandSurface, ptr %458, i64 0, i32 4
  %462 = load ptr, ptr %461, align 8, !tbaa !241
  %463 = icmp eq ptr %462, null
  br i1 %463, label %577, label %464

464:                                              ; preds = %460
  %465 = getelementptr inbounds %struct.StrandSurface, ptr %458, i64 0, i32 8
  %466 = load ptr, ptr %465, align 8, !tbaa !243
  %467 = icmp eq ptr %466, null
  br i1 %467, label %577, label %468

468:                                              ; preds = %464
  %469 = getelementptr inbounds %struct.StrandSurface, ptr %458, i64 0, i32 9
  %470 = load ptr, ptr %469, align 8, !tbaa !244
  %471 = icmp eq ptr %470, null
  br i1 %471, label %577, label %472

472:                                              ; preds = %468
  %473 = load i32, ptr %78, align 4, !tbaa !223
  %474 = sitofp i32 %473 to float
  %475 = load i32, ptr %79, align 8, !tbaa !224
  %476 = sitofp i32 %475 to float
  %477 = fmul float %474, %476
  %478 = call float @sqrtf(float noundef %477) #16
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %8) #16
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %9) #16
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %10) #16
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %11) #16
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %12) #16
  %479 = load i16, ptr %371, align 8, !tbaa !227
  %480 = and i16 %479, 3
  %481 = icmp eq i16 %480, 0
  br i1 %481, label %484, label %482

482:                                              ; preds = %472
  %483 = getelementptr inbounds %struct.ObjectInstanceRen, ptr %118, i64 0, i32 8
  call void @mul_m4_m4m4(ptr noundef nonnull %11, ptr noundef nonnull %83, ptr noundef nonnull %483) #16
  br label %485

484:                                              ; preds = %472
  call void @copy_m4_m4(ptr noundef nonnull %11, ptr noundef nonnull %84) #16
  br label %485

485:                                              ; preds = %484, %482
  %486 = load ptr, ptr @MEM_callocN, align 8, !tbaa !77
  %487 = getelementptr inbounds %struct.StrandSurface, ptr %458, i64 0, i32 10
  %488 = load i32, ptr %487, align 8, !tbaa !245
  %489 = sext i32 %488 to i64
  %490 = shl nsw i64 %489, 4
  %491 = call ptr %486(i64 noundef %490, ptr noundef nonnull @.str.30) #16
  %492 = load i32, ptr %487, align 8, !tbaa !245
  %493 = icmp sgt i32 %492, 0
  br i1 %493, label %494, label %576

494:                                              ; preds = %485, %565
  %495 = phi i64 [ %572, %565 ], [ 0, %485 ]
  %496 = load ptr, ptr %461, align 8, !tbaa !241
  %497 = getelementptr inbounds [3 x float], ptr %496, i64 %495
  call void @projectvert(ptr noundef %497, ptr noundef nonnull %11, ptr noundef nonnull %8) #16
  %498 = load ptr, ptr %465, align 8, !tbaa !243
  %499 = getelementptr inbounds [3 x float], ptr %498, i64 %495
  call void @projectvert(ptr noundef %499, ptr noundef nonnull %11, ptr noundef nonnull %9) #16
  %500 = load ptr, ptr %465, align 8, !tbaa !243
  %501 = getelementptr inbounds [3 x float], ptr %500, i64 %495
  call fastcc void @speedvector_project(ptr noundef null, ptr noundef nonnull %12, ptr noundef %501, ptr noundef nonnull %9)
  %502 = load ptr, ptr %461, align 8, !tbaa !241
  %503 = getelementptr inbounds [3 x float], ptr %502, i64 %495
  %504 = getelementptr inbounds [4 x float], ptr %491, i64 %495
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %6) #16
  call fastcc void @speedvector_project(ptr noundef null, ptr noundef nonnull %6, ptr noundef %503, ptr noundef nonnull %8)
  %505 = load float, ptr %12, align 4, !tbaa !44
  %506 = load float, ptr %6, align 4, !tbaa !44
  %507 = fsub float %505, %506
  store float %507, ptr %6, align 4, !tbaa !44
  %508 = load float, ptr %85, align 4, !tbaa !44
  %509 = load float, ptr %86, align 4, !tbaa !44
  %510 = fsub float %508, %509
  store float %510, ptr %86, align 4, !tbaa !44
  %511 = fcmp olt float %507, 0x3FB99999A0000000
  %512 = fcmp ogt float %507, 0xBFB99999A0000000
  %513 = and i1 %511, %512
  %514 = fcmp olt float %510, 0x3FB99999A0000000
  %515 = select i1 %513, i1 %514, i1 false
  %516 = fcmp ogt float %510, 0xBFB99999A0000000
  %517 = select i1 %515, i1 %516, i1 false
  br i1 %517, label %518, label %519

518:                                              ; preds = %494
  store float 0.000000e+00, ptr %6, align 4, !tbaa !44
  store float 0.000000e+00, ptr %86, align 4, !tbaa !44
  br label %519

519:                                              ; preds = %518, %494
  %520 = load float, ptr %6, align 4, !tbaa !44
  %521 = load float, ptr %86, align 4, !tbaa !44
  %522 = fmul float %521, %521
  %523 = call float @llvm.fmuladd.f32(float %520, float %520, float %522)
  %524 = fcmp ogt float %523, %477
  br i1 %524, label %525, label %530

525:                                              ; preds = %519
  %526 = call float @sqrtf(float noundef %523) #16
  %527 = fdiv float %478, %526
  %528 = fmul float %520, %527
  store float %528, ptr %6, align 4, !tbaa !44
  %529 = fmul float %521, %527
  store float %529, ptr %86, align 4, !tbaa !44
  br label %530

530:                                              ; preds = %519, %525
  %531 = load float, ptr %6, align 4, !tbaa !44
  store float %531, ptr %504, align 4, !tbaa !44
  %532 = load float, ptr %86, align 4, !tbaa !44
  %533 = getelementptr inbounds float, ptr %504, i64 1
  store float %532, ptr %533, align 4, !tbaa !44
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %6) #16
  %534 = load ptr, ptr %469, align 8, !tbaa !244
  %535 = getelementptr inbounds [3 x float], ptr %534, i64 %495
  call void @projectvert(ptr noundef %535, ptr noundef nonnull %11, ptr noundef nonnull %10) #16
  %536 = load ptr, ptr %469, align 8, !tbaa !244
  %537 = getelementptr inbounds [3 x float], ptr %536, i64 %495
  call fastcc void @speedvector_project(ptr noundef null, ptr noundef nonnull %12, ptr noundef %537, ptr noundef nonnull %10)
  %538 = load ptr, ptr %461, align 8, !tbaa !241
  %539 = getelementptr inbounds [3 x float], ptr %538, i64 %495
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #16
  call fastcc void @speedvector_project(ptr noundef null, ptr noundef nonnull %5, ptr noundef %539, ptr noundef nonnull %8)
  %540 = load float, ptr %12, align 4, !tbaa !44
  %541 = load float, ptr %5, align 4, !tbaa !44
  %542 = fsub float %540, %541
  store float %542, ptr %5, align 4, !tbaa !44
  %543 = load float, ptr %85, align 4, !tbaa !44
  %544 = load float, ptr %87, align 4, !tbaa !44
  %545 = fsub float %543, %544
  store float %545, ptr %87, align 4, !tbaa !44
  %546 = fcmp olt float %542, 0x3FB99999A0000000
  %547 = fcmp ogt float %542, 0xBFB99999A0000000
  %548 = and i1 %546, %547
  %549 = fcmp olt float %545, 0x3FB99999A0000000
  %550 = select i1 %548, i1 %549, i1 false
  %551 = fcmp ogt float %545, 0xBFB99999A0000000
  %552 = select i1 %550, i1 %551, i1 false
  br i1 %552, label %553, label %554

553:                                              ; preds = %530
  store float 0.000000e+00, ptr %5, align 4, !tbaa !44
  store float 0.000000e+00, ptr %87, align 4, !tbaa !44
  br label %554

554:                                              ; preds = %553, %530
  %555 = load float, ptr %5, align 4, !tbaa !44
  %556 = load float, ptr %87, align 4, !tbaa !44
  %557 = fmul float %556, %556
  %558 = call float @llvm.fmuladd.f32(float %555, float %555, float %557)
  %559 = fcmp ogt float %558, %477
  br i1 %559, label %560, label %565

560:                                              ; preds = %554
  %561 = call float @sqrtf(float noundef %558) #16
  %562 = fdiv float %478, %561
  %563 = fmul float %555, %562
  store float %563, ptr %5, align 4, !tbaa !44
  %564 = fmul float %556, %562
  store float %564, ptr %87, align 4, !tbaa !44
  br label %565

565:                                              ; preds = %554, %560
  %566 = load float, ptr %5, align 4, !tbaa !44
  %567 = fneg float %566
  %568 = getelementptr inbounds float, ptr %504, i64 2
  store float %567, ptr %568, align 4, !tbaa !44
  %569 = load float, ptr %87, align 4, !tbaa !44
  %570 = fneg float %569
  %571 = getelementptr inbounds float, ptr %504, i64 3
  store float %570, ptr %571, align 4, !tbaa !44
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #16
  %572 = add nuw nsw i64 %495, 1
  %573 = load i32, ptr %487, align 8, !tbaa !245
  %574 = sext i32 %573 to i64
  %575 = icmp slt i64 %572, %574
  br i1 %575, label %494, label %576, !llvm.loop !246

576:                                              ; preds = %565, %485
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %12) #16
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %11) #16
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %10) #16
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %9) #16
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %8) #16
  br label %577

577:                                              ; preds = %576, %468, %464, %460, %457
  %578 = phi ptr [ null, %457 ], [ %491, %576 ], [ null, %468 ], [ null, %464 ], [ null, %460 ]
  %579 = icmp eq ptr %578, null
  br i1 %579, label %705, label %580

580:                                              ; preds = %577
  %581 = getelementptr inbounds %struct.ObjectRen, ptr %364, i64 0, i32 12
  %582 = load i32, ptr %581, align 8, !tbaa !247
  %583 = icmp sgt i32 %582, 0
  br i1 %583, label %584, label %703

584:                                              ; preds = %580
  %585 = getelementptr inbounds %struct.StrandSurface, ptr %458, i64 0, i32 11
  %586 = getelementptr inbounds %struct.StrandSurface, ptr %458, i64 0, i32 3
  %587 = getelementptr inbounds %struct.StrandSurface, ptr %458, i64 0, i32 4
  br label %588

588:                                              ; preds = %584, %699
  %589 = phi i32 [ 0, %584 ], [ %700, %699 ]
  %590 = phi ptr [ null, %584 ], [ %602, %699 ]
  %591 = and i32 %589, 255
  %592 = icmp eq i32 %591, 0
  br i1 %592, label %593, label %599

593:                                              ; preds = %588
  %594 = load ptr, ptr %447, align 8, !tbaa !237
  %595 = lshr exact i32 %589, 8
  %596 = zext nneg i32 %595 to i64
  %597 = getelementptr inbounds %struct.StrandTableNode, ptr %594, i64 %596
  %598 = load ptr, ptr %597, align 8, !tbaa !248
  br label %601

599:                                              ; preds = %588
  %600 = getelementptr inbounds %struct.StrandRen, ptr %590, i64 1
  br label %601

601:                                              ; preds = %599, %593
  %602 = phi ptr [ %598, %593 ], [ %600, %599 ]
  %603 = call ptr @RE_strandren_get_face(ptr noundef %364, ptr noundef %602, i32 noundef 0) #16
  %604 = icmp eq ptr %603, null
  br i1 %604, label %699, label %605

605:                                              ; preds = %601
  %606 = load i32, ptr %603, align 4, !tbaa !80
  %607 = load i32, ptr %585, align 4, !tbaa !250
  %608 = icmp slt i32 %606, %607
  br i1 %608, label %609, label %699

609:                                              ; preds = %605
  %610 = call ptr @RE_strandren_get_winspeed(ptr noundef nonnull %118, ptr noundef %602, i32 noundef 1) #16
  %611 = load ptr, ptr %586, align 8, !tbaa !251
  %612 = load i32, ptr %603, align 4, !tbaa !80
  %613 = sext i32 %612 to i64
  %614 = getelementptr inbounds [4 x i32], ptr %611, i64 %613
  %615 = load ptr, ptr %587, align 8, !tbaa !241
  %616 = load i32, ptr %614, align 4, !tbaa !80
  %617 = sext i32 %616 to i64
  %618 = getelementptr inbounds [3 x float], ptr %615, i64 %617
  %619 = getelementptr inbounds i32, ptr %614, i64 1
  %620 = load i32, ptr %619, align 4, !tbaa !80
  %621 = sext i32 %620 to i64
  %622 = getelementptr inbounds [3 x float], ptr %615, i64 %621
  %623 = getelementptr inbounds i32, ptr %614, i64 2
  %624 = load i32, ptr %623, align 4, !tbaa !80
  %625 = sext i32 %624 to i64
  %626 = getelementptr inbounds [3 x float], ptr %615, i64 %625
  %627 = getelementptr inbounds i32, ptr %614, i64 3
  %628 = load i32, ptr %627, align 4, !tbaa !80
  %629 = icmp eq i32 %628, 0
  %630 = sext i32 %628 to i64
  %631 = getelementptr inbounds [3 x float], ptr %615, i64 %630
  %632 = select i1 %629, ptr null, ptr %631
  %633 = load ptr, ptr %602, align 8, !tbaa !252
  call void @interp_weights_face_v3(ptr noundef nonnull %15, ptr noundef %618, ptr noundef %622, ptr noundef %626, ptr noundef %632, ptr noundef %633) #16
  %634 = getelementptr inbounds float, ptr %610, i64 1
  %635 = getelementptr inbounds float, ptr %610, i64 2
  %636 = getelementptr inbounds float, ptr %610, i64 3
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %610, i8 0, i64 16, i1 false)
  %637 = load i32, ptr %614, align 4, !tbaa !80
  %638 = sext i32 %637 to i64
  %639 = getelementptr inbounds [4 x float], ptr %578, i64 %638
  %640 = load float, ptr %15, align 16, !tbaa !44
  %641 = load float, ptr %639, align 4, !tbaa !44
  %642 = call float @llvm.fmuladd.f32(float %641, float %640, float 0.000000e+00)
  store float %642, ptr %610, align 4, !tbaa !44
  %643 = getelementptr inbounds float, ptr %639, i64 1
  %644 = load float, ptr %643, align 4, !tbaa !44
  %645 = call float @llvm.fmuladd.f32(float %644, float %640, float 0.000000e+00)
  store float %645, ptr %634, align 4, !tbaa !44
  %646 = getelementptr inbounds float, ptr %639, i64 2
  %647 = load float, ptr %646, align 4, !tbaa !44
  %648 = call float @llvm.fmuladd.f32(float %647, float %640, float 0.000000e+00)
  store float %648, ptr %635, align 4, !tbaa !44
  %649 = getelementptr inbounds float, ptr %639, i64 3
  %650 = load float, ptr %649, align 4, !tbaa !44
  %651 = call float @llvm.fmuladd.f32(float %650, float %640, float 0.000000e+00)
  store float %651, ptr %636, align 4, !tbaa !44
  %652 = load i32, ptr %619, align 4, !tbaa !80
  %653 = sext i32 %652 to i64
  %654 = getelementptr inbounds [4 x float], ptr %578, i64 %653
  %655 = load float, ptr %88, align 4, !tbaa !44
  %656 = load float, ptr %654, align 4, !tbaa !44
  %657 = call float @llvm.fmuladd.f32(float %656, float %655, float %642)
  store float %657, ptr %610, align 4, !tbaa !44
  %658 = getelementptr inbounds float, ptr %654, i64 1
  %659 = load float, ptr %658, align 4, !tbaa !44
  %660 = call float @llvm.fmuladd.f32(float %659, float %655, float %645)
  store float %660, ptr %634, align 4, !tbaa !44
  %661 = getelementptr inbounds float, ptr %654, i64 2
  %662 = load float, ptr %661, align 4, !tbaa !44
  %663 = call float @llvm.fmuladd.f32(float %662, float %655, float %648)
  store float %663, ptr %635, align 4, !tbaa !44
  %664 = getelementptr inbounds float, ptr %654, i64 3
  %665 = load float, ptr %664, align 4, !tbaa !44
  %666 = call float @llvm.fmuladd.f32(float %665, float %655, float %651)
  store float %666, ptr %636, align 4, !tbaa !44
  %667 = load i32, ptr %623, align 4, !tbaa !80
  %668 = sext i32 %667 to i64
  %669 = getelementptr inbounds [4 x float], ptr %578, i64 %668
  %670 = load float, ptr %89, align 8, !tbaa !44
  %671 = load float, ptr %669, align 4, !tbaa !44
  %672 = call float @llvm.fmuladd.f32(float %671, float %670, float %657)
  store float %672, ptr %610, align 4, !tbaa !44
  %673 = getelementptr inbounds float, ptr %669, i64 1
  %674 = load float, ptr %673, align 4, !tbaa !44
  %675 = call float @llvm.fmuladd.f32(float %674, float %670, float %660)
  store float %675, ptr %634, align 4, !tbaa !44
  %676 = getelementptr inbounds float, ptr %669, i64 2
  %677 = load float, ptr %676, align 4, !tbaa !44
  %678 = call float @llvm.fmuladd.f32(float %677, float %670, float %663)
  store float %678, ptr %635, align 4, !tbaa !44
  %679 = getelementptr inbounds float, ptr %669, i64 3
  %680 = load float, ptr %679, align 4, !tbaa !44
  %681 = call float @llvm.fmuladd.f32(float %680, float %670, float %666)
  store float %681, ptr %636, align 4, !tbaa !44
  %682 = load i32, ptr %627, align 4, !tbaa !80
  %683 = icmp eq i32 %682, 0
  br i1 %683, label %699, label %684

684:                                              ; preds = %609
  %685 = sext i32 %682 to i64
  %686 = getelementptr inbounds [4 x float], ptr %578, i64 %685
  %687 = load float, ptr %90, align 4, !tbaa !44
  %688 = load float, ptr %686, align 4, !tbaa !44
  %689 = call float @llvm.fmuladd.f32(float %688, float %687, float %672)
  store float %689, ptr %610, align 4, !tbaa !44
  %690 = getelementptr inbounds float, ptr %686, i64 1
  %691 = load float, ptr %690, align 4, !tbaa !44
  %692 = call float @llvm.fmuladd.f32(float %691, float %687, float %675)
  store float %692, ptr %634, align 4, !tbaa !44
  %693 = getelementptr inbounds float, ptr %686, i64 2
  %694 = load float, ptr %693, align 4, !tbaa !44
  %695 = call float @llvm.fmuladd.f32(float %694, float %687, float %678)
  store float %695, ptr %635, align 4, !tbaa !44
  %696 = getelementptr inbounds float, ptr %686, i64 3
  %697 = load float, ptr %696, align 4, !tbaa !44
  %698 = call float @llvm.fmuladd.f32(float %697, float %687, float %681)
  store float %698, ptr %636, align 4, !tbaa !44
  br label %699

699:                                              ; preds = %684, %609, %605, %601
  %700 = add nuw nsw i32 %589, 1
  %701 = load i32, ptr %581, align 8, !tbaa !247
  %702 = icmp slt i32 %700, %701
  br i1 %702, label %588, label %703, !llvm.loop !254

703:                                              ; preds = %699, %580
  %704 = load ptr, ptr @MEM_freeN, align 8, !tbaa !77
  call void %704(ptr noundef nonnull %578) #16
  br label %705

705:                                              ; preds = %446, %577, %703
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %15) #16
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %14) #16
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %13) #16
  br label %710

706:                                              ; preds = %356
  %707 = load ptr, ptr %132, align 8, !tbaa !213
  %708 = getelementptr inbounds %struct.ID, ptr %707, i64 0, i32 4, i64 2
  %709 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.6, ptr noundef nonnull %708)
  br label %710

710:                                              ; preds = %705, %706, %355
  %711 = load ptr, ptr %186, align 8, !tbaa !255
  br label %712

712:                                              ; preds = %117, %710, %188
  %713 = phi ptr [ %186, %188 ], [ %711, %710 ], [ %119, %117 ]
  %714 = load ptr, ptr %118, align 8, !tbaa !77
  %715 = icmp ne ptr %714, null
  %716 = icmp ne ptr %713, null
  %717 = select i1 %715, i1 %716, i1 false
  br i1 %717, label %117, label %718, !llvm.loop !256

718:                                              ; preds = %712, %106
  %719 = add nuw nsw i32 %107, 1
  %720 = icmp eq i32 %107, 0
  br i1 %720, label %106, label %721, !llvm.loop !257

721:                                              ; preds = %718, %45
  %722 = load ptr, ptr %23, align 8, !tbaa !77
  %723 = icmp eq ptr %722, null
  br i1 %723, label %734, label %724

724:                                              ; preds = %721, %731
  %725 = phi ptr [ %732, %731 ], [ %722, %721 ]
  %726 = getelementptr inbounds %struct.ObjectInstanceRen, ptr %725, i64 0, i32 16
  %727 = load ptr, ptr %726, align 8, !tbaa !235
  %728 = icmp eq ptr %727, null
  br i1 %728, label %731, label %729

729:                                              ; preds = %724
  %730 = load ptr, ptr @MEM_freeN, align 8, !tbaa !77
  call void %730(ptr noundef nonnull %727) #16
  br label %731

731:                                              ; preds = %729, %724
  %732 = load ptr, ptr %725, align 8, !tbaa !77
  %733 = icmp eq ptr %732, null
  br i1 %733, label %734, label %724, !llvm.loop !258

734:                                              ; preds = %731, %721
  call void @BLI_freelistN(ptr noundef nonnull %23) #16
  %735 = load ptr, ptr %24, align 8, !tbaa !77
  %736 = icmp eq ptr %735, null
  br i1 %736, label %747, label %737

737:                                              ; preds = %734, %744
  %738 = phi ptr [ %745, %744 ], [ %735, %734 ]
  %739 = getelementptr inbounds %struct.ObjectInstanceRen, ptr %738, i64 0, i32 16
  %740 = load ptr, ptr %739, align 8, !tbaa !235
  %741 = icmp eq ptr %740, null
  br i1 %741, label %744, label %742

742:                                              ; preds = %737
  %743 = load ptr, ptr @MEM_freeN, align 8, !tbaa !77
  call void %743(ptr noundef nonnull %740) #16
  br label %744

744:                                              ; preds = %742, %737
  %745 = load ptr, ptr %738, align 8, !tbaa !77
  %746 = icmp eq ptr %745, null
  br i1 %746, label %747, label %737, !llvm.loop !258

747:                                              ; preds = %744, %734
  call void @BLI_freelistN(ptr noundef nonnull %24) #16
  %748 = load ptr, ptr %30, align 8, !tbaa !77
  %749 = icmp eq ptr %748, null
  br i1 %749, label %766, label %750

750:                                              ; preds = %747, %763
  %751 = phi ptr [ %764, %763 ], [ %748, %747 ]
  %752 = getelementptr inbounds %struct.StrandSurface, ptr %751, i64 0, i32 8
  %753 = load ptr, ptr %752, align 8, !tbaa !243
  %754 = icmp eq ptr %753, null
  br i1 %754, label %757, label %755

755:                                              ; preds = %750
  %756 = load ptr, ptr @MEM_freeN, align 8, !tbaa !77
  call void %756(ptr noundef nonnull %753) #16
  store ptr null, ptr %752, align 8, !tbaa !243
  br label %757

757:                                              ; preds = %755, %750
  %758 = getelementptr inbounds %struct.StrandSurface, ptr %751, i64 0, i32 9
  %759 = load ptr, ptr %758, align 8, !tbaa !244
  %760 = icmp eq ptr %759, null
  br i1 %760, label %763, label %761

761:                                              ; preds = %757
  %762 = load ptr, ptr @MEM_freeN, align 8, !tbaa !77
  call void %762(ptr noundef nonnull %759) #16
  store ptr null, ptr %758, align 8, !tbaa !244
  br label %763

763:                                              ; preds = %757, %761
  %764 = load ptr, ptr %751, align 8, !tbaa !77
  %765 = icmp eq ptr %764, null
  br i1 %765, label %766, label %750, !llvm.loop !259

766:                                              ; preds = %763, %747
  %767 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 98
  store ptr null, ptr %26, align 8, !tbaa !120
  %768 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 90
  %769 = load ptr, ptr %768, align 8, !tbaa !152
  %770 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 91
  %771 = load ptr, ptr %770, align 8, !tbaa !153
  call void %769(ptr noundef %771, ptr noundef nonnull %767) #16
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %25)
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %24) #16
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %23) #16
  ret void
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(readwrite, inaccessiblemem: write) uwtable
define internal fastcc void @speedvector_project(ptr noundef readonly %0, ptr nocapture noundef writeonly %1, ptr nocapture noundef readonly %2, ptr nocapture noundef readonly %3) unnamed_addr #8 {
  %5 = icmp eq ptr %0, null
  br i1 %5, label %50, label %6

6:                                                ; preds = %4
  %7 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 45, i32 47
  %8 = load i32, ptr %7, align 8, !tbaa !90
  %9 = and i32 %8, 1024
  store i32 %9, ptr @speedvector_project.pano, align 4, !tbaa !80
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %41, label %11

11:                                               ; preds = %6
  %12 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 16
  %13 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 16, i32 1
  %14 = load float, ptr %13, align 4, !tbaa !260
  %15 = load float, ptr %12, align 4, !tbaa !261
  %16 = fsub float %14, %15
  %17 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 13
  %18 = load i32, ptr %17, align 4, !tbaa !223
  %19 = sitofp i32 %18 to float
  %20 = fdiv float %16, %19
  %21 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 36
  %22 = load float, ptr %21, align 8, !tbaa !94
  %23 = fdiv float %20, %22
  %24 = fpext float %23 to double
  %25 = tail call double @atan(double noundef %24) #16
  %26 = fptrunc double %25 to float
  store float %26, ptr @speedvector_project.pixelphix, align 4, !tbaa !44
  %27 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 16, i32 3
  %28 = load float, ptr %27, align 4, !tbaa !262
  %29 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 16, i32 2
  %30 = load float, ptr %29, align 4, !tbaa !263
  %31 = fsub float %28, %30
  %32 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 14
  %33 = load i32, ptr %32, align 8, !tbaa !224
  %34 = sitofp i32 %33 to float
  %35 = fdiv float %31, %34
  %36 = load float, ptr %21, align 8, !tbaa !94
  %37 = fdiv float %35, %36
  %38 = fpext float %37 to double
  %39 = tail call double @atan(double noundef %38) #16
  %40 = fptrunc double %39 to float
  store float %40, ptr @speedvector_project.pixelphiy, align 4, !tbaa !44
  br label %41

41:                                               ; preds = %11, %6
  %42 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 13
  %43 = load i32, ptr %42, align 4, !tbaa !223
  %44 = sdiv i32 %43, 2
  %45 = sitofp i32 %44 to float
  store float %45, ptr @speedvector_project.zmulx, align 4, !tbaa !44
  %46 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 14
  %47 = load i32, ptr %46, align 8, !tbaa !224
  %48 = sdiv i32 %47, 2
  %49 = sitofp i32 %48 to float
  store float %49, ptr @speedvector_project.zmuly, align 4, !tbaa !44
  br label %112

50:                                               ; preds = %4
  %51 = load i32, ptr @speedvector_project.pano, align 4, !tbaa !80
  %52 = icmp eq i32 %51, 0
  br i1 %52, label %96, label %53

53:                                               ; preds = %50
  %54 = load float, ptr %2, align 4, !tbaa !44
  %55 = getelementptr inbounds float, ptr %2, i64 1
  %56 = load float, ptr %55, align 4, !tbaa !44
  %57 = getelementptr inbounds float, ptr %2, i64 2
  %58 = load float, ptr %57, align 4, !tbaa !44
  %59 = fneg float %58
  %60 = fmul float %58, %58
  %61 = tail call float @llvm.fmuladd.f32(float %54, float %54, float %60)
  %62 = tail call float @sqrtf(float noundef %61) #16
  %63 = fdiv float %59, %62
  %64 = fcmp ugt float %63, -1.000000e+00
  br i1 %64, label %65, label %69

65:                                               ; preds = %53
  %66 = fcmp ult float %63, 1.000000e+00
  br i1 %66, label %67, label %69

67:                                               ; preds = %65
  %68 = tail call float @acosf(float noundef %63) #16
  br label %69

69:                                               ; preds = %53, %65, %67
  %70 = phi float [ %68, %67 ], [ 0x400921FB60000000, %53 ], [ 0.000000e+00, %65 ]
  %71 = fcmp olt float %54, 0.000000e+00
  %72 = fneg float %70
  %73 = select i1 %71, float %72, float %70
  %74 = load float, ptr @speedvector_project.pixelphix, align 4, !tbaa !44
  %75 = fdiv float %73, %74
  %76 = load float, ptr @speedvector_project.zmulx, align 4, !tbaa !44
  %77 = fadd float %75, %76
  store float %77, ptr %1, align 4, !tbaa !44
  %78 = fmul float %56, %56
  %79 = tail call float @llvm.fmuladd.f32(float %54, float %54, float %78)
  %80 = tail call float @llvm.fmuladd.f32(float %58, float %58, float %79)
  %81 = tail call float @sqrtf(float noundef %80) #16
  %82 = fdiv float %56, %81
  %83 = fcmp ugt float %82, -1.000000e+00
  br i1 %83, label %84, label %88

84:                                               ; preds = %69
  %85 = fcmp ult float %82, 1.000000e+00
  br i1 %85, label %86, label %88

86:                                               ; preds = %84
  %87 = tail call float @acosf(float noundef %82) #16
  br label %88

88:                                               ; preds = %69, %84, %86
  %89 = phi float [ %87, %86 ], [ 0x400921FB60000000, %69 ], [ 0.000000e+00, %84 ]
  %90 = fsub float 0x3FF921FB60000000, %89
  %91 = load float, ptr @speedvector_project.pixelphiy, align 4, !tbaa !44
  %92 = fdiv float %90, %91
  %93 = load float, ptr @speedvector_project.zmuly, align 4, !tbaa !44
  %94 = fadd float %92, %93
  %95 = getelementptr inbounds float, ptr %1, i64 1
  store float %94, ptr %95, align 4, !tbaa !44
  br label %112

96:                                               ; preds = %50
  %97 = getelementptr inbounds float, ptr %3, i64 3
  %98 = load float, ptr %97, align 4, !tbaa !44
  %99 = fcmp olt float %98, 0x3FB99999A0000000
  %100 = fdiv float 1.000000e+00, %98
  %101 = select i1 %99, float 1.000000e+01, float %100
  %102 = load float, ptr @speedvector_project.zmulx, align 4, !tbaa !44
  %103 = load float, ptr %3, align 4, !tbaa !44
  %104 = tail call float @llvm.fmuladd.f32(float %103, float %101, float 1.000000e+00)
  %105 = fmul float %102, %104
  store float %105, ptr %1, align 4, !tbaa !44
  %106 = load float, ptr @speedvector_project.zmuly, align 4, !tbaa !44
  %107 = getelementptr inbounds float, ptr %3, i64 1
  %108 = load float, ptr %107, align 4, !tbaa !44
  %109 = tail call float @llvm.fmuladd.f32(float %108, float %101, float 1.000000e+00)
  %110 = fmul float %106, %109
  %111 = getelementptr inbounds float, ptr %1, i64 1
  store float %110, ptr %111, align 4, !tbaa !44
  br label %112

112:                                              ; preds = %88, %96, %41
  ret void
}

; Function Attrs: nounwind uwtable
define internal fastcc void @database_fromscene_vectors(ptr noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef %3) unnamed_addr #4 {
  %5 = alloca [4 x [4 x float]], align 16
  %6 = tail call ptr @RE_GetCamera(ptr noundef %0) #16
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %5) #16
  %7 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 44
  store ptr %1, ptr %7, align 8, !tbaa !64
  %8 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 48
  store i32 %2, ptr %8, align 8, !tbaa !118
  %9 = tail call ptr @BLI_memarena_new(i64 noundef 16376, ptr noundef nonnull @.str.27) #16
  %10 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 81
  store ptr %9, ptr %10, align 8, !tbaa !117
  %11 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 60
  %12 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 98, i32 1
  %13 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 66
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(20) %11, i8 0, i64 20, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %13, i8 0, i64 16, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(20) %12, i8 0, i64 20, i1 false)
  store i32 0, ptr @slurph_opt, align 4, !tbaa !80
  %14 = load i32, ptr %8, align 8, !tbaa !118
  %15 = icmp ult i32 %14, 16777216
  %16 = and i32 %2, -16777216
  %17 = select i1 %15, i32 %2, i32 %16
  %18 = getelementptr inbounds %struct.Scene, ptr %1, i64 0, i32 22, i32 5
  %19 = load i32, ptr %18, align 8, !tbaa !121
  %20 = add nsw i32 %19, %3
  store i32 %20, ptr %18, align 8, !tbaa !121
  %21 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 101
  %22 = load ptr, ptr %21, align 8, !tbaa !124
  %23 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 43
  %24 = load ptr, ptr %23, align 8, !tbaa !112
  %25 = load ptr, ptr %7, align 8, !tbaa !64
  tail call void @BKE_scene_update_for_newframe(ptr noundef %22, ptr noundef %24, ptr noundef %25, i32 noundef %17) #16
  %26 = icmp eq ptr %6, null
  br i1 %26, label %30, label %27

27:                                               ; preds = %4
  %28 = getelementptr inbounds %struct.Object, ptr %6, i64 0, i32 47
  call void @normalize_m4_m4(ptr noundef nonnull %5, ptr noundef nonnull %28) #16
  %29 = call zeroext i8 @invert_m4(ptr noundef nonnull %5) #16
  call void @RE_SetView(ptr noundef %0, ptr noundef nonnull %5) #16
  br label %30

30:                                               ; preds = %27, %4
  call fastcc void @database_init_objects(ptr noundef %0, i32 noundef %17, i32 noundef 0, i32 noundef 0, ptr noundef null, i32 noundef %3)
  %31 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 96
  %32 = load ptr, ptr %31, align 8, !tbaa !126
  %33 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 97
  %34 = load ptr, ptr %33, align 8, !tbaa !127
  %35 = call i32 %32(ptr noundef %34) #16
  %36 = icmp eq i32 %35, 0
  br i1 %36, label %37, label %43

37:                                               ; preds = %30
  %38 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 45, i32 47
  %39 = load i32, ptr %38, align 8, !tbaa !90
  %40 = lshr i32 %39, 10
  %41 = trunc i32 %40 to i8
  %42 = and i8 %41, 1
  call void @project_renderdata(ptr noundef %0, ptr noundef nonnull @projectverto, i8 noundef zeroext %42, float noundef 0.000000e+00, i8 noundef zeroext 1) #16
  br label %43

43:                                               ; preds = %37, %30
  %44 = load i32, ptr %18, align 8, !tbaa !121
  %45 = sub nsw i32 %44, %3
  store i32 %45, ptr %18, align 8, !tbaa !121
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %5) #16
  ret void
}

; Function Attrs: nounwind uwtable
define internal fastcc void @copy_dbase_object_vectors(ptr noundef %0, ptr noundef %1) unnamed_addr #4 {
  %3 = alloca [4 x float], align 16
  %4 = alloca [4 x [4 x float]], align 16
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %3) #16
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %4) #16
  %5 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 70
  %6 = load ptr, ptr %5, align 8, !tbaa !77
  %7 = icmp eq ptr %6, null
  br i1 %7, label %64, label %8

8:                                                ; preds = %2
  %9 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 35
  %10 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 35
  br label %11

11:                                               ; preds = %8, %60
  %12 = phi ptr [ %6, %8 ], [ %62, %60 ]
  %13 = phi ptr [ null, %8 ], [ %61, %60 ]
  %14 = getelementptr inbounds %struct.ObjectInstanceRen, ptr %12, i64 0, i32 2
  %15 = load ptr, ptr %14, align 8, !tbaa !199
  %16 = load ptr, ptr @MEM_mallocN, align 8, !tbaa !77
  %17 = call ptr %16(i64 noundef 288, ptr noundef nonnull @.str.28) #16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(288) %17, ptr noundef nonnull align 8 dereferenceable(288) %12, i64 288, i1 false)
  call void @BLI_addtail(ptr noundef %1, ptr noundef %17) #16
  %18 = getelementptr inbounds %struct.ObjectRen, ptr %15, i64 0, i32 10
  %19 = load i32, ptr %18, align 8, !tbaa !211
  %20 = getelementptr inbounds %struct.ObjectInstanceRen, ptr %17, i64 0, i32 17
  store i32 %19, ptr %20, align 8, !tbaa !212
  %21 = icmp sgt i32 %19, 0
  br i1 %21, label %22, label %60

22:                                               ; preds = %11
  %23 = load ptr, ptr @MEM_mallocN, align 8, !tbaa !77
  %24 = zext nneg i32 %19 to i64
  %25 = shl nuw nsw i64 %24, 3
  %26 = call ptr %23(i64 noundef %25, ptr noundef nonnull @.str.29) #16
  %27 = getelementptr inbounds %struct.ObjectInstanceRen, ptr %17, i64 0, i32 16
  store ptr %26, ptr %27, align 8, !tbaa !235
  %28 = getelementptr inbounds %struct.ObjectInstanceRen, ptr %12, i64 0, i32 11
  %29 = load i16, ptr %28, align 8, !tbaa !227
  %30 = and i16 %29, 3
  %31 = icmp eq i16 %30, 0
  br i1 %31, label %34, label %32

32:                                               ; preds = %22
  %33 = getelementptr inbounds %struct.ObjectInstanceRen, ptr %12, i64 0, i32 8
  call void @mul_m4_m4m4(ptr noundef nonnull %4, ptr noundef nonnull %9, ptr noundef nonnull %33) #16
  br label %35

34:                                               ; preds = %22
  call void @copy_m4_m4(ptr noundef nonnull %4, ptr noundef nonnull %10) #16
  br label %35

35:                                               ; preds = %34, %32
  %36 = load i32, ptr %18, align 8, !tbaa !211
  %37 = icmp sgt i32 %36, 0
  br i1 %37, label %38, label %60

38:                                               ; preds = %35
  %39 = getelementptr inbounds %struct.ObjectRen, ptr %15, i64 0, i32 18
  br label %40

40:                                               ; preds = %38, %54
  %41 = phi i32 [ 0, %38 ], [ %56, %54 ]
  %42 = phi ptr [ %26, %38 ], [ %57, %54 ]
  %43 = phi ptr [ %13, %38 ], [ %55, %54 ]
  %44 = and i32 %41, 255
  %45 = icmp eq i32 %44, 0
  br i1 %45, label %46, label %52

46:                                               ; preds = %40
  %47 = load ptr, ptr %39, align 8, !tbaa !231
  %48 = lshr exact i32 %41, 8
  %49 = zext nneg i32 %48 to i64
  %50 = getelementptr inbounds %struct.VertTableNode, ptr %47, i64 %49
  %51 = load ptr, ptr %50, align 8, !tbaa !232
  br label %54

52:                                               ; preds = %40
  %53 = getelementptr inbounds %struct.VertRen, ptr %43, i64 1
  br label %54

54:                                               ; preds = %52, %46
  %55 = phi ptr [ %51, %46 ], [ %53, %52 ]
  call void @projectvert(ptr noundef %55, ptr noundef nonnull %4, ptr noundef nonnull %3) #16
  call fastcc void @speedvector_project(ptr noundef null, ptr noundef %42, ptr noundef %55, ptr noundef nonnull %3)
  %56 = add nuw nsw i32 %41, 1
  %57 = getelementptr inbounds float, ptr %42, i64 2
  %58 = load i32, ptr %18, align 8, !tbaa !211
  %59 = icmp slt i32 %56, %58
  br i1 %59, label %40, label %60, !llvm.loop !264

60:                                               ; preds = %54, %35, %11
  %61 = phi ptr [ %13, %11 ], [ %13, %35 ], [ %55, %54 ]
  %62 = load ptr, ptr %12, align 8, !tbaa !77
  %63 = icmp eq ptr %62, null
  br i1 %63, label %64, label %11, !llvm.loop !265

64:                                               ; preds = %60, %2
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %4) #16
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %3) #16
  ret void
}

; Function Attrs: nofree nounwind
declare noundef i32 @printf(ptr nocapture noundef readonly, ...) local_unnamed_addr #9

declare ptr @modifiers_findByType(ptr noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: nounwind uwtable
define dso_local void @RE_Database_Baking(ptr noundef %0, ptr noundef %1, ptr noundef %2, i32 noundef %3, i32 noundef %4, ptr noundef %5) local_unnamed_addr #4 {
  %7 = alloca [4 x [4 x float]], align 16
  %8 = alloca [3 x float], align 4
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %7) #16
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %8) #16
  %9 = icmp eq i32 %4, 6
  switch i32 %4, label %10 [
    i32 6, label %11
    i32 2, label %11
    i32 1, label %11
    i32 0, label %11
    i32 14, label %11
  ]

10:                                               ; preds = %6
  br label %11

11:                                               ; preds = %6, %6, %6, %6, %6, %10
  %12 = phi i32 [ 0, %6 ], [ 1, %10 ], [ 0, %6 ], [ 0, %6 ], [ 0, %6 ], [ 0, %6 ]
  %13 = add i32 %4, -3
  %14 = icmp ult i32 %13, 12
  br i1 %14, label %15, label %19

15:                                               ; preds = %11
  %16 = zext nneg i32 %13 to i64
  %17 = getelementptr inbounds [12 x i32], ptr @switch.table.RE_Database_Baking, i64 0, i64 %16
  %18 = load i32, ptr %17, align 4
  br label %19

19:                                               ; preds = %11, %15
  %20 = phi i32 [ %18, %15 ], [ 0, %11 ]
  %21 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 43
  store ptr %1, ptr %21, align 8, !tbaa !112
  %22 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 44
  store ptr %2, ptr %22, align 8, !tbaa !64
  %23 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 48
  store i32 %3, ptr %23, align 8, !tbaa !118
  %24 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 45
  %25 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 45, i32 60
  tail call void @BLI_freelistN(ptr noundef nonnull %25) #16
  %26 = getelementptr inbounds %struct.Scene, ptr %2, i64 0, i32 22
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(3984) %24, ptr noundef nonnull align 8 dereferenceable(3984) %26, i64 3984, i1 false), !tbaa.struct !266
  %27 = getelementptr inbounds %struct.Scene, ptr %2, i64 0, i32 22, i32 60
  tail call void @BLI_duplicatelist(ptr noundef nonnull %25, ptr noundef nonnull %27) #16
  tail call void @RE_init_threadcount(ptr noundef %0) #16
  %28 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 4
  %29 = load i16, ptr %28, align 8, !tbaa !267
  %30 = or i16 %29, 64
  store i16 %30, ptr %28, align 8, !tbaa !267
  %31 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 78
  store ptr %5, ptr %31, align 8, !tbaa !268
  %32 = icmp eq ptr %5, null
  br i1 %32, label %35, label %33

33:                                               ; preds = %19
  %34 = or i16 %29, 96
  store i16 %34, ptr %28, align 8, !tbaa !267
  br label %35

35:                                               ; preds = %33, %19
  switch i32 %4, label %48 [
    i32 3, label %36
    i32 14, label %45
  ]

36:                                               ; preds = %35
  %37 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 45, i32 76
  %38 = load i16, ptr %37, align 8, !tbaa !269
  %39 = icmp eq i16 %38, 3
  br i1 %39, label %40, label %43

40:                                               ; preds = %36
  %41 = load i16, ptr %28, align 8, !tbaa !267
  %42 = or i16 %41, 16
  store i16 %42, ptr %28, align 8, !tbaa !267
  br label %43

43:                                               ; preds = %40, %36
  %44 = icmp eq i32 %4, 14
  br i1 %44, label %45, label %48

45:                                               ; preds = %35, %43
  %46 = load i16, ptr %28, align 8, !tbaa !267
  %47 = or i16 %46, 256
  store i16 %47, ptr %28, align 8, !tbaa !267
  br label %48

48:                                               ; preds = %35, %45, %43
  br i1 %32, label %49, label %54

49:                                               ; preds = %48
  switch i32 %4, label %54 [
    i32 14, label %50
    i32 13, label %50
    i32 5, label %50
    i32 4, label %50
    i32 3, label %50
    i32 0, label %50
  ]

50:                                               ; preds = %49, %49, %49, %49, %49, %49
  %51 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 45, i32 47
  %52 = load i32, ptr %51, align 8, !tbaa !90
  %53 = and i32 %52, -65539
  store i32 %53, ptr %51, align 8, !tbaa !90
  br label %54

54:                                               ; preds = %49, %50, %48
  %55 = and i1 %9, %32
  br i1 %55, label %56, label %60

56:                                               ; preds = %54
  %57 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 45, i32 47
  %58 = load i32, ptr %57, align 8, !tbaa !90
  %59 = or i32 %58, 2
  store i32 %59, ptr %57, align 8, !tbaa !90
  br label %60

60:                                               ; preds = %56, %54
  %61 = tail call ptr @BLI_memarena_new(i64 noundef 16376, ptr noundef nonnull @.str.7) #16
  %62 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 81
  store ptr %61, ptr %62, align 8, !tbaa !117
  %63 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 60
  %64 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 66
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(20) %63, i8 0, i64 20, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %64, i8 0, i64 32, i1 false)
  %65 = load i32, ptr %23, align 8, !tbaa !118
  %66 = icmp ult i32 %65, 16777216
  %67 = and i32 %3, -16777216
  %68 = select i1 %66, i32 %3, i32 %67
  %69 = tail call ptr @RE_GetCamera(ptr noundef %0) #16
  %70 = icmp eq ptr %69, null
  br i1 %70, label %74, label %71

71:                                               ; preds = %60
  %72 = getelementptr inbounds %struct.Object, ptr %69, i64 0, i32 47
  call void @normalize_m4_m4(ptr noundef nonnull %7, ptr noundef nonnull %72) #16
  %73 = call zeroext i8 @invert_m4(ptr noundef nonnull %7) #16
  br label %75

74:                                               ; preds = %60
  call void @unit_m4(ptr noundef nonnull %7) #16
  br label %75

75:                                               ; preds = %74, %71
  call void @RE_SetView(ptr noundef %0, ptr noundef nonnull %7) #16
  %76 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 31
  %77 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 33
  call void @copy_m3_m4(ptr noundef nonnull %76, ptr noundef nonnull %77) #16
  %78 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 35
  call void @unit_m4(ptr noundef nonnull %78) #16
  %79 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 14
  store i32 256, ptr %79, align 8, !tbaa !224
  %80 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 13
  store i32 256, ptr %80, align 4, !tbaa !223
  call void @init_render_world(ptr noundef %0)
  %81 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 45, i32 47
  %82 = load i32, ptr %81, align 8, !tbaa !90
  %83 = and i32 %82, 65536
  %84 = icmp eq i32 %83, 0
  br i1 %84, label %96, label %85

85:                                               ; preds = %75
  call void @init_render_qmcsampler(ptr noundef %0) #16
  %86 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 46
  %87 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 46, i32 23
  %88 = load i16, ptr %87, align 2, !tbaa !92
  %89 = and i16 %88, 208
  %90 = icmp eq i16 %89, 0
  br i1 %90, label %96, label %91

91:                                               ; preds = %85
  %92 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 46, i32 63
  %93 = load i16, ptr %92, align 8, !tbaa !125
  %94 = icmp eq i16 %93, 0
  br i1 %94, label %95, label %96

95:                                               ; preds = %91
  call void @init_ao_sphere(ptr noundef nonnull %86) #16
  br label %96

96:                                               ; preds = %85, %95, %91, %75
  call void @init_render_textures(ptr noundef %0) #16
  %97 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 46, i32 12
  %98 = load float, ptr %97, align 4, !tbaa !44
  store float %98, ptr %8, align 4, !tbaa !44
  %99 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 46, i32 13
  %100 = load float, ptr %99, align 4, !tbaa !44
  %101 = getelementptr inbounds float, ptr %8, i64 1
  store float %100, ptr %101, align 4, !tbaa !44
  %102 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 46, i32 14
  %103 = load float, ptr %102, align 4, !tbaa !44
  %104 = getelementptr inbounds float, ptr %8, i64 2
  store float %103, ptr %104, align 4, !tbaa !44
  %105 = load ptr, ptr %21, align 8, !tbaa !112
  %106 = load i32, ptr %81, align 8, !tbaa !90
  call void @init_render_materials(ptr noundef %105, i32 noundef %106, ptr noundef nonnull %8) #16
  call void @set_node_shader_lamp_loop(ptr noundef nonnull @shade_material_loop) #16
  call fastcc void @database_init_objects(ptr noundef %0, i32 noundef %68, i32 noundef %20, i32 noundef %12, ptr noundef %5, i32 noundef 0)
  %107 = load ptr, ptr %22, align 8, !tbaa !64
  %108 = getelementptr inbounds %struct.Scene, ptr %107, i64 0, i32 22, i32 46
  %109 = load i32, ptr %108, align 4, !tbaa !116
  %110 = and i32 %109, 524296
  %111 = icmp eq i32 %110, 0
  br i1 %111, label %112, label %145

112:                                              ; preds = %96
  %113 = load ptr, ptr %21, align 8, !tbaa !112
  %114 = getelementptr inbounds %struct.Main, ptr %113, i64 0, i32 32
  %115 = load ptr, ptr %114, align 8, !tbaa !77
  %116 = icmp eq ptr %115, null
  br i1 %116, label %124, label %117

117:                                              ; preds = %112, %117
  %118 = phi ptr [ %122, %117 ], [ %115, %112 ]
  %119 = getelementptr inbounds %struct.ID, ptr %118, i64 0, i32 5
  %120 = load i16, ptr %119, align 2, !tbaa !128
  %121 = or i16 %120, 1024
  store i16 %121, ptr %119, align 2, !tbaa !128
  %122 = load ptr, ptr %118, align 8, !tbaa !77
  %123 = icmp eq ptr %122, null
  br i1 %123, label %124, label %117, !llvm.loop !130

124:                                              ; preds = %117, %112
  %125 = getelementptr inbounds %struct.Main, ptr %113, i64 0, i32 17
  %126 = load ptr, ptr %125, align 8, !tbaa !77
  %127 = icmp eq ptr %126, null
  br i1 %127, label %145, label %128

128:                                              ; preds = %124, %142
  %129 = phi ptr [ %143, %142 ], [ %126, %124 ]
  %130 = getelementptr inbounds %struct.Material, ptr %129, i64 0, i32 105
  %131 = load ptr, ptr %130, align 8, !tbaa !131
  %132 = icmp eq ptr %131, null
  br i1 %132, label %142, label %133

133:                                              ; preds = %128
  %134 = getelementptr inbounds %struct.ID, ptr %131, i64 0, i32 5
  %135 = load i16, ptr %134, align 2, !tbaa !128
  %136 = and i16 %135, 1024
  %137 = icmp eq i16 %136, 0
  br i1 %137, label %142, label %138

138:                                              ; preds = %133
  %139 = getelementptr inbounds %struct.Material, ptr %129, i64 0, i32 51
  %140 = load i32, ptr %139, align 4, !tbaa !135
  %141 = and i32 %140, 268435456
  call fastcc void @add_lightgroup(ptr noundef %0, ptr noundef nonnull %131, i32 noundef %141)
  br label %142

142:                                              ; preds = %138, %133, %128
  %143 = load ptr, ptr %129, align 8, !tbaa !77
  %144 = icmp eq ptr %143, null
  br i1 %144, label %145, label %128, !llvm.loop !136

145:                                              ; preds = %142, %96, %124
  %146 = icmp eq i32 %4, 0
  br i1 %146, label %152, label %147

147:                                              ; preds = %145
  %148 = load i32, ptr %81, align 8, !tbaa !90
  %149 = and i32 %148, 2
  %150 = icmp eq i32 %149, 0
  br i1 %150, label %152, label %151

151:                                              ; preds = %147
  call void @threaded_makeshadowbufs(ptr noundef %0) #16
  br label %152

152:                                              ; preds = %147, %151, %145
  %153 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 96
  %154 = load ptr, ptr %153, align 8, !tbaa !126
  %155 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 97
  %156 = load ptr, ptr %155, align 8, !tbaa !127
  %157 = call i32 %154(ptr noundef %156) #16
  %158 = icmp eq i32 %157, 0
  br i1 %158, label %159, label %164

159:                                              ; preds = %152
  %160 = load i32, ptr %81, align 8, !tbaa !90
  %161 = and i32 %160, 65536
  %162 = icmp eq i32 %161, 0
  br i1 %162, label %164, label %163

163:                                              ; preds = %159
  call void @makeraytree(ptr noundef %0) #16
  br label %164

164:                                              ; preds = %159, %163, %152
  %165 = load ptr, ptr %153, align 8, !tbaa !126
  %166 = load ptr, ptr %155, align 8, !tbaa !127
  %167 = call i32 %165(ptr noundef %166) #16
  %168 = icmp eq i32 %167, 0
  br i1 %168, label %169, label %170

169:                                              ; preds = %164
  call void @make_pointdensities(ptr noundef %0) #16
  br label %170

170:                                              ; preds = %169, %164
  %171 = load ptr, ptr %153, align 8, !tbaa !126
  %172 = load ptr, ptr %155, align 8, !tbaa !127
  %173 = call i32 %171(ptr noundef %172) #16
  %174 = icmp eq i32 %173, 0
  br i1 %174, label %175, label %176

175:                                              ; preds = %170
  call void @make_voxeldata(ptr noundef %0) #16
  br label %176

176:                                              ; preds = %175, %170
  %177 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 46, i32 23
  %178 = load i16, ptr %177, align 2, !tbaa !92
  %179 = and i16 %178, 208
  %180 = icmp eq i16 %179, 0
  br i1 %180, label %195, label %181

181:                                              ; preds = %176
  %182 = load ptr, ptr %153, align 8, !tbaa !126
  %183 = load ptr, ptr %155, align 8, !tbaa !127
  %184 = call i32 %182(ptr noundef %183) #16
  %185 = icmp eq i32 %184, 0
  br i1 %185, label %186, label %195

186:                                              ; preds = %181
  %187 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 46, i32 64
  %188 = load i16, ptr %187, align 2, !tbaa !91
  %189 = icmp eq i16 %188, 1
  br i1 %189, label %190, label %195

190:                                              ; preds = %186
  %191 = load i32, ptr %81, align 8, !tbaa !90
  %192 = and i32 %191, 2
  %193 = icmp eq i32 %192, 0
  br i1 %193, label %195, label %194

194:                                              ; preds = %190
  call void @make_occ_tree(ptr noundef %0) #16
  br label %195

195:                                              ; preds = %186, %194, %190, %181, %176
  %196 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 98, i32 11
  store i16 1, ptr %196, align 4, !tbaa !102
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %8) #16
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %7) #16
  ret void
}

declare void @BLI_duplicatelist(ptr noundef, ptr noundef) local_unnamed_addr #6

declare void @RE_init_threadcount(ptr noundef) local_unnamed_addr #6

declare void @unit_m4(ptr noundef) local_unnamed_addr #6

declare void @BLI_ghash_free(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #6

; Function Attrs: nounwind uwtable
define internal fastcc void @set_dupli_tex_mat(ptr noundef %0, ptr nocapture noundef %1, ptr noundef %2, ptr noundef %3) unnamed_addr #4 {
  %5 = alloca [4 x [4 x float]], align 16
  %6 = icmp eq ptr %0, null
  br i1 %6, label %7, label %8

7:                                                ; preds = %4
  store ptr null, ptr @set_dupli_tex_mat.lastob, align 8, !tbaa !77
  store i1 false, ptr @set_dupli_tex_mat.needtexmat, align 4
  br label %68

8:                                                ; preds = %4
  %9 = load ptr, ptr @set_dupli_tex_mat.lastob, align 8, !tbaa !77
  %10 = getelementptr inbounds %struct.DupliObject, ptr %2, i64 0, i32 2
  %11 = load ptr, ptr %10, align 8, !tbaa !172
  %12 = icmp eq ptr %9, %11
  br i1 %12, label %40, label %13

13:                                               ; preds = %8
  store ptr %11, ptr @set_dupli_tex_mat.lastob, align 8, !tbaa !77
  store i1 false, ptr @set_dupli_tex_mat.needtexmat, align 4
  %14 = tail call ptr @give_totcolp(ptr noundef %11) #16
  %15 = load ptr, ptr %10, align 8, !tbaa !172
  %16 = tail call ptr @give_matarar(ptr noundef %15) #16
  %17 = icmp ne ptr %14, null
  %18 = icmp ne ptr %16, null
  %19 = select i1 %17, i1 %18, i1 false
  br i1 %19, label %20, label %40

20:                                               ; preds = %13
  %21 = load i16, ptr %14, align 2, !tbaa !79
  %22 = icmp sgt i16 %21, 0
  br i1 %22, label %23, label %40

23:                                               ; preds = %20
  %24 = load ptr, ptr %16, align 8, !tbaa !77
  %25 = zext nneg i16 %21 to i64
  br label %26

26:                                               ; preds = %23, %37
  %27 = phi i64 [ 0, %23 ], [ %38, %37 ]
  %28 = getelementptr inbounds ptr, ptr %24, i64 %27
  %29 = load ptr, ptr %28, align 8, !tbaa !77
  %30 = icmp eq ptr %29, null
  br i1 %30, label %37, label %31

31:                                               ; preds = %26
  %32 = getelementptr inbounds %struct.Material, ptr %29, i64 0, i32 90
  %33 = load i16, ptr %32, align 4, !tbaa !270
  %34 = and i16 %33, 32
  %35 = icmp eq i16 %34, 0
  br i1 %35, label %37, label %36

36:                                               ; preds = %31
  store i1 true, ptr @set_dupli_tex_mat.needtexmat, align 4
  br label %37

37:                                               ; preds = %26, %31, %36
  %38 = add nuw nsw i64 %27, 1
  %39 = icmp eq i64 %38, %25
  br i1 %39, label %40, label %26, !llvm.loop !271

40:                                               ; preds = %37, %20, %13, %8
  %41 = load i1, ptr @set_dupli_tex_mat.needtexmat, align 4
  br i1 %41, label %42, label %52

42:                                               ; preds = %40
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %5) #16
  %43 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 81
  %44 = load ptr, ptr %43, align 8, !tbaa !117
  %45 = tail call ptr @BLI_memarena_alloc(ptr noundef %44, i64 noundef 64) #16
  %46 = getelementptr inbounds %struct.ObjectInstanceRen, ptr %1, i64 0, i32 14
  store ptr %45, ptr %46, align 8, !tbaa !272
  %47 = getelementptr inbounds %struct.DupliObject, ptr %2, i64 0, i32 3
  %48 = call zeroext i8 @invert_m4_m4(ptr noundef nonnull %5, ptr noundef nonnull %47) #16
  %49 = load ptr, ptr %46, align 8, !tbaa !272
  %50 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 32
  %51 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 33
  call void @_va_mul_m4_series_5(ptr noundef %49, ptr noundef nonnull %50, ptr noundef %3, ptr noundef nonnull %5, ptr noundef nonnull %51) #16
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %5) #16
  br label %52

52:                                               ; preds = %42, %40
  %53 = getelementptr inbounds %struct.ObjectInstanceRen, ptr %1, i64 0, i32 12
  %54 = getelementptr inbounds %struct.DupliObject, ptr %2, i64 0, i32 4
  %55 = load float, ptr %54, align 4, !tbaa !44
  store float %55, ptr %53, align 4, !tbaa !44
  %56 = getelementptr inbounds %struct.DupliObject, ptr %2, i64 0, i32 4, i64 1
  %57 = load float, ptr %56, align 4, !tbaa !44
  %58 = getelementptr inbounds %struct.ObjectInstanceRen, ptr %1, i64 0, i32 12, i64 1
  store float %57, ptr %58, align 4, !tbaa !44
  %59 = getelementptr inbounds %struct.DupliObject, ptr %2, i64 0, i32 4, i64 2
  %60 = load float, ptr %59, align 4, !tbaa !44
  %61 = getelementptr inbounds %struct.ObjectInstanceRen, ptr %1, i64 0, i32 12, i64 2
  store float %60, ptr %61, align 4, !tbaa !44
  %62 = getelementptr inbounds %struct.ObjectInstanceRen, ptr %1, i64 0, i32 13
  %63 = getelementptr inbounds %struct.DupliObject, ptr %2, i64 0, i32 5
  %64 = load float, ptr %63, align 4, !tbaa !44
  store float %64, ptr %62, align 4, !tbaa !44
  %65 = getelementptr inbounds %struct.DupliObject, ptr %2, i64 0, i32 5, i64 1
  %66 = load float, ptr %65, align 4, !tbaa !44
  %67 = getelementptr inbounds %struct.ObjectInstanceRen, ptr %1, i64 0, i32 13, i64 1
  store float %66, ptr %67, align 4, !tbaa !44
  br label %68

68:                                               ; preds = %52, %7
  ret void
}

declare ptr @_setlooper_base_step(ptr noundef, ptr noundef) local_unnamed_addr #6

; Function Attrs: nounwind uwtable
define internal fastcc void @init_render_object(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4, i32 noundef %5) unnamed_addr #4 {
  %7 = alloca [4 x [4 x float]], align 16
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %7) #16
  %8 = getelementptr inbounds %struct.Object, ptr %1, i64 0, i32 3
  %9 = load i16, ptr %8, align 8, !tbaa !167
  %10 = icmp eq i16 %9, 10
  br i1 %10, label %11, label %13

11:                                               ; preds = %6
  %12 = tail call fastcc ptr @add_render_lamp(ptr noundef %0, ptr noundef %1)
  br label %164

13:                                               ; preds = %6
  %14 = add i16 %9, -6
  %15 = icmp ult i16 %14, -5
  br i1 %15, label %159, label %16

16:                                               ; preds = %13
  %17 = icmp eq ptr %3, null
  br i1 %17, label %21, label %18

18:                                               ; preds = %16
  %19 = getelementptr inbounds %struct.DupliObject, ptr %3, i64 0, i32 9
  %20 = load i32, ptr %19, align 8, !tbaa !80
  br label %21

21:                                               ; preds = %18, %16
  %22 = phi i32 [ %20, %18 ], [ 0, %16 ]
  %23 = getelementptr inbounds %struct.Object, ptr %1, i64 0, i32 109
  %24 = load ptr, ptr %23, align 8, !tbaa !166
  %25 = icmp eq ptr %24, null
  br i1 %25, label %52, label %26

26:                                               ; preds = %21
  %27 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 45, i32 46
  %28 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 32
  %29 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 35
  %30 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 13
  %31 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 14
  br label %32

32:                                               ; preds = %26, %47
  %33 = phi i32 [ 0, %26 ], [ %40, %47 ]
  %34 = phi ptr [ %24, %26 ], [ %48, %47 ]
  %35 = getelementptr inbounds %struct.ParticleSystem, ptr %34, i64 0, i32 2
  %36 = load ptr, ptr %35, align 8, !tbaa !177
  %37 = getelementptr inbounds %struct.ParticleSettings, ptr %36, i64 0, i32 15
  %38 = load i32, ptr %37, align 8, !tbaa !273
  %39 = and i32 %38, 8
  %40 = add nuw nsw i32 %39, %33
  %41 = load i32, ptr %27, align 4, !tbaa !105
  %42 = and i32 %41, 524288
  %43 = icmp eq i32 %42, 0
  br i1 %43, label %44, label %47

44:                                               ; preds = %32
  %45 = load i32, ptr %30, align 4, !tbaa !223
  %46 = load i32, ptr %31, align 8, !tbaa !224
  tail call void @psys_render_set(ptr noundef %1, ptr noundef nonnull %34, ptr noundef nonnull %28, ptr noundef nonnull %29, i32 noundef %45, i32 noundef %46, i32 noundef %5) #16
  br label %47

47:                                               ; preds = %44, %32
  %48 = load ptr, ptr %34, align 8, !tbaa !274
  %49 = icmp eq ptr %48, null
  br i1 %49, label %50, label %32, !llvm.loop !275

50:                                               ; preds = %47
  %51 = icmp eq i32 %40, 0
  br i1 %51, label %103, label %52

52:                                               ; preds = %50, %21
  %53 = getelementptr inbounds %struct.Object, ptr %1, i64 0, i32 52
  %54 = load i32, ptr %53, align 8, !tbaa !189
  %55 = tail call ptr @RE_addRenderObject(ptr noundef %0, ptr noundef %1, ptr noundef %2, i32 noundef %22, i32 noundef 0, i32 noundef %54) #16
  br i1 %17, label %60, label %56

56:                                               ; preds = %52
  %57 = getelementptr inbounds %struct.DupliObject, ptr %3, i64 0, i32 8
  %58 = load i8, ptr %57, align 1, !tbaa !183
  %59 = icmp eq i8 %58, 0
  br i1 %59, label %65, label %60

60:                                               ; preds = %56, %52
  %61 = getelementptr inbounds %struct.Object, ptr %1, i64 0, i32 55
  %62 = load i16, ptr %61, align 8, !tbaa !157
  %63 = and i16 %62, 4096
  %64 = icmp eq i16 %63, 0
  br i1 %64, label %71, label %65

65:                                               ; preds = %60, %56
  %66 = getelementptr inbounds %struct.ObjectRen, ptr %55, i64 0, i32 7
  %67 = load i32, ptr %66, align 8, !tbaa !187
  %68 = or i32 %67, 1
  store i32 %68, ptr %66, align 8, !tbaa !187
  %69 = getelementptr inbounds %struct.ObjectRen, ptr %55, i64 0, i32 28
  %70 = getelementptr inbounds %struct.Object, ptr %1, i64 0, i32 47
  tail call void @copy_m4_m4(ptr noundef nonnull %69, ptr noundef nonnull %70) #16
  br label %71

71:                                               ; preds = %65, %60
  tail call fastcc void @init_render_object_data(ptr noundef %0, ptr noundef %55, i32 noundef %5)
  %72 = getelementptr inbounds %struct.Object, ptr %1, i64 0, i32 55
  %73 = load i16, ptr %72, align 8, !tbaa !157
  %74 = and i16 %73, 4096
  %75 = icmp eq i16 %74, 0
  br i1 %75, label %76, label %80

76:                                               ; preds = %71
  %77 = load i32, ptr %53, align 8, !tbaa !189
  %78 = tail call ptr @RE_addRenderInstance(ptr noundef %0, ptr noundef %55, ptr noundef %1, ptr noundef %2, i32 noundef %22, i32 noundef 0, ptr noundef null, i32 noundef %77) #16
  br i1 %17, label %81, label %79

79:                                               ; preds = %76
  tail call fastcc void @set_dupli_tex_mat(ptr noundef %0, ptr noundef %78, ptr noundef nonnull %3, ptr noundef %4)
  br label %81

80:                                               ; preds = %71
  tail call fastcc void @find_dupli_instances(ptr noundef %0, ptr noundef %55, ptr noundef %3)
  br label %81

81:                                               ; preds = %80, %79, %76
  %82 = getelementptr inbounds %struct.Object, ptr %1, i64 0, i32 31
  %83 = load i32, ptr %82, align 8, !tbaa !276
  %84 = icmp slt i32 %83, 1
  br i1 %84, label %103, label %85

85:                                               ; preds = %81
  %86 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 80
  br label %87

87:                                               ; preds = %85, %99
  %88 = phi i32 [ 1, %85 ], [ %100, %99 ]
  %89 = trunc i32 %88 to i16
  %90 = tail call fastcc ptr @give_render_material(ptr noundef %0, ptr noundef %1, i16 noundef signext %89)
  %91 = getelementptr inbounds %struct.Material, ptr %90, i64 0, i32 2
  %92 = load i16, ptr %91, align 8, !tbaa !175
  %93 = icmp eq i16 %92, 2
  br i1 %93, label %94, label %99

94:                                               ; preds = %87
  %95 = load ptr, ptr @MEM_mallocN, align 8, !tbaa !77
  %96 = tail call ptr %95(i64 noundef 32, ptr noundef nonnull @.str.24) #16
  %97 = getelementptr inbounds %struct.VolumeOb, ptr %96, i64 0, i32 2
  store ptr %90, ptr %97, align 8, !tbaa !203
  %98 = getelementptr inbounds %struct.VolumeOb, ptr %96, i64 0, i32 3
  store ptr %55, ptr %98, align 8, !tbaa !201
  tail call void @BLI_addtail(ptr noundef nonnull %86, ptr noundef %96) #16
  br label %99

99:                                               ; preds = %94, %87
  %100 = add nuw nsw i32 %88, 1
  %101 = load i32, ptr %82, align 8, !tbaa !276
  %102 = icmp slt i32 %88, %101
  br i1 %102, label %87, label %103, !llvm.loop !277

103:                                              ; preds = %99, %81, %50
  %104 = load ptr, ptr %23, align 8, !tbaa !166
  %105 = icmp eq ptr %104, null
  br i1 %105, label %164, label %106

106:                                              ; preds = %103
  %107 = getelementptr inbounds %struct.Object, ptr %1, i64 0, i32 52
  %108 = getelementptr inbounds %struct.DupliObject, ptr %3, i64 0, i32 8
  %109 = getelementptr inbounds %struct.Object, ptr %1, i64 0, i32 55
  %110 = getelementptr inbounds %struct.Object, ptr %1, i64 0, i32 47
  %111 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 45, i32 46
  %112 = getelementptr inbounds %struct.Object, ptr %1, i64 0, i32 55
  br label %113

113:                                              ; preds = %106, %155
  %114 = phi i32 [ 1, %106 ], [ %157, %155 ]
  %115 = phi ptr [ %104, %106 ], [ %156, %155 ]
  %116 = tail call i32 @psys_check_enabled(ptr noundef %1, ptr noundef nonnull %115) #16
  %117 = icmp eq i32 %116, 0
  br i1 %117, label %155, label %118

118:                                              ; preds = %113
  %119 = load i32, ptr %107, align 8, !tbaa !189
  %120 = tail call ptr @RE_addRenderObject(ptr noundef %0, ptr noundef %1, ptr noundef %2, i32 noundef %22, i32 noundef %114, i32 noundef %119) #16
  br i1 %17, label %124, label %121

121:                                              ; preds = %118
  %122 = load i8, ptr %108, align 1, !tbaa !183
  %123 = icmp eq i8 %122, 0
  br i1 %123, label %128, label %124

124:                                              ; preds = %121, %118
  %125 = load i16, ptr %109, align 8, !tbaa !157
  %126 = and i16 %125, 4096
  %127 = icmp eq i16 %126, 0
  br i1 %127, label %133, label %128

128:                                              ; preds = %124, %121
  %129 = getelementptr inbounds %struct.ObjectRen, ptr %120, i64 0, i32 7
  %130 = load i32, ptr %129, align 8, !tbaa !187
  %131 = or i32 %130, 1
  store i32 %131, ptr %129, align 8, !tbaa !187
  %132 = getelementptr inbounds %struct.ObjectRen, ptr %120, i64 0, i32 28
  tail call void @copy_m4_m4(ptr noundef nonnull %132, ptr noundef nonnull %110) #16
  br label %133

133:                                              ; preds = %128, %124
  br i1 %17, label %138, label %134

134:                                              ; preds = %133
  %135 = getelementptr inbounds %struct.ParticleSystem, ptr %115, i64 0, i32 25
  %136 = load i32, ptr %135, align 4, !tbaa !278
  %137 = or i32 %136, 128
  store i32 %137, ptr %135, align 4, !tbaa !278
  br label %138

138:                                              ; preds = %134, %133
  tail call fastcc void @init_render_object_data(ptr noundef %0, ptr noundef %120, i32 noundef %5)
  %139 = load i32, ptr %111, align 4, !tbaa !105
  %140 = and i32 %139, 524288
  %141 = icmp eq i32 %140, 0
  br i1 %141, label %142, label %143

142:                                              ; preds = %138
  tail call void @psys_render_restore(ptr noundef %1, ptr noundef nonnull %115) #16
  br label %143

143:                                              ; preds = %142, %138
  %144 = getelementptr inbounds %struct.ParticleSystem, ptr %115, i64 0, i32 25
  %145 = load i32, ptr %144, align 4, !tbaa !278
  %146 = and i32 %145, -129
  store i32 %146, ptr %144, align 4, !tbaa !278
  %147 = load i16, ptr %112, align 8, !tbaa !157
  %148 = and i16 %147, 4096
  %149 = icmp eq i16 %148, 0
  br i1 %149, label %150, label %154

150:                                              ; preds = %143
  %151 = load i32, ptr %107, align 8, !tbaa !189
  %152 = tail call ptr @RE_addRenderInstance(ptr noundef %0, ptr noundef %120, ptr noundef %1, ptr noundef %2, i32 noundef %22, i32 noundef %114, ptr noundef null, i32 noundef %151) #16
  br i1 %17, label %155, label %153

153:                                              ; preds = %150
  tail call fastcc void @set_dupli_tex_mat(ptr noundef %0, ptr noundef %152, ptr noundef nonnull %3, ptr noundef %4)
  br label %155

154:                                              ; preds = %143
  tail call fastcc void @find_dupli_instances(ptr noundef %0, ptr noundef %120, ptr noundef %3)
  br label %155

155:                                              ; preds = %154, %153, %150, %113
  %156 = load ptr, ptr %115, align 8, !tbaa !274
  %157 = add nuw nsw i32 %114, 1
  %158 = icmp eq ptr %156, null
  br i1 %158, label %164, label %113, !llvm.loop !279

159:                                              ; preds = %13
  %160 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 32
  %161 = getelementptr inbounds %struct.Object, ptr %1, i64 0, i32 47
  call void @mul_m4_m4m4(ptr noundef nonnull %7, ptr noundef nonnull %160, ptr noundef nonnull %161) #16
  %162 = getelementptr inbounds %struct.Object, ptr %1, i64 0, i32 50
  %163 = call zeroext i8 @invert_m4_m4(ptr noundef nonnull %162, ptr noundef nonnull %7) #16
  br label %164

164:                                              ; preds = %155, %103, %159, %11
  %165 = call double @PIL_check_seconds_timer() #16
  %166 = load double, ptr @init_render_object.lasttime, align 8, !tbaa !280
  %167 = fsub double %165, %166
  %168 = fcmp ogt double %167, 1.000000e+00
  br i1 %168, label %169, label %190

169:                                              ; preds = %164
  store double %165, ptr @init_render_object.lasttime, align 8, !tbaa !280
  %170 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 61
  %171 = load i32, ptr %170, align 4, !tbaa !142
  %172 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 98
  %173 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 98, i32 2
  store i32 %171, ptr %173, align 8, !tbaa !143
  %174 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 60
  %175 = load i32, ptr %174, align 8, !tbaa !144
  %176 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 98, i32 1
  store i32 %175, ptr %176, align 4, !tbaa !145
  %177 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 63
  %178 = load i32, ptr %177, align 4, !tbaa !146
  %179 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 98, i32 3
  store i32 %178, ptr %179, align 4, !tbaa !147
  %180 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 62
  %181 = load i32, ptr %180, align 8, !tbaa !148
  %182 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 98, i32 4
  store i32 %181, ptr %182, align 8, !tbaa !149
  %183 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 64
  %184 = load i32, ptr %183, align 8, !tbaa !150
  %185 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 98, i32 5
  store i32 %184, ptr %185, align 4, !tbaa !151
  %186 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 90
  %187 = load ptr, ptr %186, align 8, !tbaa !152
  %188 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 91
  %189 = load ptr, ptr %188, align 8, !tbaa !153
  call void %187(ptr noundef %189, ptr noundef nonnull %172) #16
  br label %190

190:                                              ; preds = %169, %164
  %191 = getelementptr inbounds %struct.Object, ptr %1, i64 0, i32 53
  %192 = load i16, ptr %191, align 4, !tbaa !154
  %193 = or i16 %192, 1024
  store i16 %193, ptr %191, align 4, !tbaa !154
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %7) #16
  ret void
}

; Function Attrs: nounwind uwtable
define internal fastcc void @dupli_render_particle_set(ptr noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4) unnamed_addr #4 {
  %6 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 45, i32 46
  %7 = load i32, ptr %6, align 4, !tbaa !105
  %8 = and i32 %7, 524288
  %9 = icmp ne i32 %8, 0
  %10 = icmp sgt i32 %3, 7
  %11 = or i1 %10, %9
  br i1 %11, label %79, label %12

12:                                               ; preds = %5
  %13 = getelementptr inbounds %struct.Object, ptr %1, i64 0, i32 55
  %14 = load i16, ptr %13, align 8, !tbaa !157
  %15 = and i16 %14, 2048
  %16 = icmp eq i16 %15, 0
  br i1 %16, label %63, label %17

17:                                               ; preds = %12
  %18 = getelementptr inbounds %struct.Object, ptr %1, i64 0, i32 109
  %19 = load ptr, ptr %18, align 8, !tbaa !77
  %20 = icmp eq ptr %19, null
  br i1 %20, label %43, label %21

21:                                               ; preds = %17
  %22 = icmp eq i32 %4, 0
  %23 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 32
  %24 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 35
  %25 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 13
  %26 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 14
  br label %27

27:                                               ; preds = %21, %40
  %28 = phi ptr [ %19, %21 ], [ %41, %40 ]
  %29 = getelementptr inbounds %struct.ParticleSystem, ptr %28, i64 0, i32 2
  %30 = load ptr, ptr %29, align 8, !tbaa !177
  %31 = getelementptr inbounds %struct.ParticleSettings, ptr %30, i64 0, i32 21
  %32 = load i16, ptr %31, align 8, !tbaa !179
  %33 = add i16 %32, -7
  %34 = icmp ult i16 %33, 2
  br i1 %34, label %35, label %40

35:                                               ; preds = %27
  br i1 %22, label %39, label %36

36:                                               ; preds = %35
  %37 = load i32, ptr %25, align 4, !tbaa !223
  %38 = load i32, ptr %26, align 8, !tbaa !224
  tail call void @psys_render_set(ptr noundef %1, ptr noundef nonnull %28, ptr noundef nonnull %23, ptr noundef nonnull %24, i32 noundef %37, i32 noundef %38, i32 noundef %2) #16
  br label %40

39:                                               ; preds = %35
  tail call void @psys_render_restore(ptr noundef %1, ptr noundef nonnull %28) #16
  br label %40

40:                                               ; preds = %27, %39, %36
  %41 = load ptr, ptr %28, align 8, !tbaa !77
  %42 = icmp eq ptr %41, null
  br i1 %42, label %43, label %27, !llvm.loop !281

43:                                               ; preds = %40, %17
  %44 = icmp eq i32 %4, 0
  br i1 %44, label %63, label %45

45:                                               ; preds = %43
  %46 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 44
  %47 = load ptr, ptr %46, align 8, !tbaa !64
  %48 = load i64, ptr @CD_MASK_BAREMESH, align 8, !tbaa !282
  %49 = or i64 %48, 96
  %50 = tail call ptr @mesh_create_derived_render(ptr noundef %47, ptr noundef %1, i64 noundef %49) #16
  %51 = getelementptr inbounds %struct.DerivedMesh, ptr %50, i64 0, i32 95
  %52 = load ptr, ptr %51, align 8, !tbaa !283
  tail call void %52(ptr noundef %50) #16
  %53 = load ptr, ptr %18, align 8, !tbaa !77
  %54 = icmp eq ptr %53, null
  br i1 %54, label %63, label %55

55:                                               ; preds = %45, %55
  %56 = phi ptr [ %61, %55 ], [ %53, %45 ]
  %57 = tail call ptr @psys_get_modifier(ptr noundef %1, ptr noundef nonnull %56) #16
  %58 = getelementptr inbounds %struct.ParticleSystemModifierData, ptr %57, i64 0, i32 6
  %59 = load i16, ptr %58, align 4, !tbaa !286
  %60 = and i16 %59, -3
  store i16 %60, ptr %58, align 4, !tbaa !286
  %61 = load ptr, ptr %56, align 8, !tbaa !77
  %62 = icmp eq ptr %61, null
  br i1 %62, label %63, label %55, !llvm.loop !288

63:                                               ; preds = %55, %45, %43, %12
  %64 = getelementptr inbounds %struct.Object, ptr %1, i64 0, i32 112
  %65 = load ptr, ptr %64, align 8, !tbaa !289
  %66 = icmp eq ptr %65, null
  br i1 %66, label %79, label %67

67:                                               ; preds = %63
  %68 = getelementptr inbounds %struct.Group, ptr %65, i64 0, i32 1
  %69 = load ptr, ptr %68, align 8, !tbaa !77
  %70 = icmp eq ptr %69, null
  br i1 %70, label %79, label %71

71:                                               ; preds = %67
  %72 = add nuw nsw i32 %3, 1
  br label %73

73:                                               ; preds = %71, %73
  %74 = phi ptr [ %69, %71 ], [ %77, %73 ]
  %75 = getelementptr inbounds %struct.GroupObject, ptr %74, i64 0, i32 2
  %76 = load ptr, ptr %75, align 8, !tbaa !290
  tail call fastcc void @dupli_render_particle_set(ptr noundef %0, ptr noundef %76, i32 noundef %2, i32 noundef %72, i32 noundef %4)
  %77 = load ptr, ptr %74, align 8, !tbaa !77
  %78 = icmp eq ptr %77, null
  br i1 %78, label %79, label %73, !llvm.loop !292

79:                                               ; preds = %73, %67, %63, %5
  ret void
}

declare ptr @object_duplilist(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #6

declare ptr @duplilist_apply(ptr noundef, ptr noundef) local_unnamed_addr #6

declare ptr @RE_addRenderInstance(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: nounwind uwtable
define internal fastcc void @assign_dupligroup_dupli(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr nocapture noundef readonly %3) unnamed_addr #4 {
  %5 = alloca [4 x [4 x float]], align 16
  %6 = alloca [4 x [4 x float]], align 16
  %7 = alloca [4 x [4 x float]], align 16
  %8 = alloca [3 x [3 x float]], align 16
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %5) #16
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %6) #16
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %7) #16
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %8) #16
  %9 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 32
  %10 = getelementptr inbounds %struct.ObjectRen, ptr %2, i64 0, i32 28
  call void @mul_m4_m4m4(ptr noundef nonnull %6, ptr noundef nonnull %9, ptr noundef nonnull %10) #16
  %11 = call zeroext i8 @invert_m4_m4(ptr noundef nonnull %5, ptr noundef nonnull %6) #16
  %12 = getelementptr inbounds %struct.ObjectInstanceRen, ptr %1, i64 0, i32 2
  store ptr %2, ptr %12, align 8, !tbaa !199
  %13 = getelementptr inbounds %struct.ObjectInstanceRen, ptr %1, i64 0, i32 8
  call void @copy_m4_m4(ptr noundef nonnull %7, ptr noundef nonnull %13) #16
  call void @mul_m4_m4m4(ptr noundef nonnull %13, ptr noundef nonnull %7, ptr noundef nonnull %5) #16
  call void @copy_m3_m4(ptr noundef nonnull %8, ptr noundef nonnull %13) #16
  %14 = getelementptr inbounds %struct.ObjectInstanceRen, ptr %1, i64 0, i32 10
  %15 = call zeroext i8 @invert_m3_m3(ptr noundef nonnull %14, ptr noundef nonnull %8) #16
  call void @transpose_m3(ptr noundef nonnull %14) #16
  %16 = getelementptr inbounds %struct.ObjectInstanceRen, ptr %1, i64 0, i32 12
  %17 = getelementptr inbounds %struct.DupliObject, ptr %3, i64 0, i32 4
  %18 = load float, ptr %17, align 4, !tbaa !44
  store float %18, ptr %16, align 4, !tbaa !44
  %19 = getelementptr inbounds %struct.DupliObject, ptr %3, i64 0, i32 4, i64 1
  %20 = load float, ptr %19, align 4, !tbaa !44
  %21 = getelementptr inbounds %struct.ObjectInstanceRen, ptr %1, i64 0, i32 12, i64 1
  store float %20, ptr %21, align 4, !tbaa !44
  %22 = getelementptr inbounds %struct.DupliObject, ptr %3, i64 0, i32 4, i64 2
  %23 = load float, ptr %22, align 4, !tbaa !44
  %24 = getelementptr inbounds %struct.ObjectInstanceRen, ptr %1, i64 0, i32 12, i64 2
  store float %23, ptr %24, align 4, !tbaa !44
  %25 = getelementptr inbounds %struct.DupliObject, ptr %3, i64 0, i32 5
  %26 = load float, ptr %25, align 4, !tbaa !44
  %27 = getelementptr inbounds %struct.ObjectInstanceRen, ptr %1, i64 0, i32 13
  store float %26, ptr %27, align 8, !tbaa !44
  %28 = getelementptr inbounds %struct.DupliObject, ptr %3, i64 0, i32 5, i64 1
  %29 = load float, ptr %28, align 4, !tbaa !44
  %30 = getelementptr inbounds %struct.ObjectInstanceRen, ptr %1, i64 0, i32 13, i64 1
  store float %29, ptr %30, align 4, !tbaa !44
  %31 = getelementptr inbounds %struct.ObjectRen, ptr %2, i64 0, i32 10
  %32 = load i32, ptr %31, align 8, !tbaa !211
  %33 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 61
  %34 = load i32, ptr %33, align 4, !tbaa !142
  %35 = add nsw i32 %34, %32
  store i32 %35, ptr %33, align 4, !tbaa !142
  %36 = getelementptr inbounds %struct.ObjectRen, ptr %2, i64 0, i32 11
  %37 = load i32, ptr %36, align 4, !tbaa !293
  %38 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 60
  %39 = load i32, ptr %38, align 8, !tbaa !144
  %40 = add nsw i32 %39, %37
  store i32 %40, ptr %38, align 8, !tbaa !144
  %41 = getelementptr inbounds %struct.ObjectRen, ptr %2, i64 0, i32 13
  %42 = load i32, ptr %41, align 4, !tbaa !195
  %43 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 62
  %44 = load i32, ptr %43, align 8, !tbaa !148
  %45 = add nsw i32 %44, %42
  store i32 %45, ptr %43, align 8, !tbaa !148
  %46 = getelementptr inbounds %struct.ObjectRen, ptr %2, i64 0, i32 12
  %47 = load i32, ptr %46, align 8, !tbaa !247
  %48 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 63
  %49 = load i32, ptr %48, align 4, !tbaa !146
  %50 = add nsw i32 %49, %47
  store i32 %50, ptr %48, align 4, !tbaa !146
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %8) #16
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %7) #16
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %6) #16
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %5) #16
  ret void
}

; Function Attrs: nounwind uwtable
define internal fastcc void @find_dupli_instances(ptr noundef %0, ptr noundef %1, ptr noundef readonly %2) unnamed_addr #4 {
  %4 = alloca [4 x [4 x float]], align 16
  %5 = alloca [4 x [4 x float]], align 16
  %6 = alloca [4 x [4 x float]], align 16
  %7 = alloca [3 x [3 x float]], align 16
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %4) #16
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %5) #16
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %6) #16
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %7) #16
  %8 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 32
  %9 = getelementptr inbounds %struct.ObjectRen, ptr %1, i64 0, i32 28
  call void @mul_m4_m4m4(ptr noundef nonnull %5, ptr noundef nonnull %8, ptr noundef nonnull %9) #16
  %10 = call zeroext i8 @invert_m4_m4(ptr noundef nonnull %4, ptr noundef nonnull %5) #16
  %11 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 70, i32 1
  %12 = load ptr, ptr %11, align 8, !tbaa !77
  %13 = icmp eq ptr %12, null
  br i1 %13, label %82, label %14

14:                                               ; preds = %3
  %15 = getelementptr inbounds %struct.ObjectRen, ptr %1, i64 0, i32 2
  %16 = getelementptr inbounds %struct.ObjectRen, ptr %1, i64 0, i32 6
  %17 = icmp eq ptr %2, null
  %18 = getelementptr inbounds %struct.DupliObject, ptr %2, i64 0, i32 4
  %19 = getelementptr inbounds %struct.DupliObject, ptr %2, i64 0, i32 4, i64 1
  %20 = getelementptr inbounds %struct.DupliObject, ptr %2, i64 0, i32 4, i64 2
  %21 = getelementptr inbounds %struct.DupliObject, ptr %2, i64 0, i32 5
  %22 = getelementptr inbounds %struct.DupliObject, ptr %2, i64 0, i32 5, i64 1
  %23 = getelementptr inbounds %struct.ObjectRen, ptr %1, i64 0, i32 10
  %24 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 61
  %25 = getelementptr inbounds %struct.ObjectRen, ptr %1, i64 0, i32 11
  %26 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 60
  %27 = getelementptr inbounds %struct.ObjectRen, ptr %1, i64 0, i32 13
  %28 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 62
  %29 = getelementptr inbounds %struct.ObjectRen, ptr %1, i64 0, i32 12
  %30 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 63
  br label %31

31:                                               ; preds = %14, %77
  %32 = phi ptr [ %12, %14 ], [ %80, %77 ]
  %33 = phi i32 [ 1, %14 ], [ %78, %77 ]
  %34 = getelementptr inbounds %struct.ObjectInstanceRen, ptr %32, i64 0, i32 2
  %35 = load ptr, ptr %34, align 8, !tbaa !199
  %36 = icmp eq ptr %35, null
  br i1 %36, label %37, label %77

37:                                               ; preds = %31
  %38 = getelementptr inbounds %struct.ObjectInstanceRen, ptr %32, i64 0, i32 3
  %39 = load ptr, ptr %38, align 8, !tbaa !213
  %40 = load ptr, ptr %15, align 8, !tbaa !184
  %41 = icmp eq ptr %39, %40
  br i1 %41, label %42, label %77

42:                                               ; preds = %37
  %43 = getelementptr inbounds %struct.ObjectInstanceRen, ptr %32, i64 0, i32 6
  %44 = load i32, ptr %43, align 4, !tbaa !216
  %45 = load i32, ptr %16, align 4, !tbaa !186
  %46 = icmp eq i32 %44, %45
  br i1 %46, label %47, label %77

47:                                               ; preds = %42
  store ptr %1, ptr %34, align 8, !tbaa !199
  %48 = getelementptr inbounds %struct.ObjectInstanceRen, ptr %32, i64 0, i32 8
  call void @copy_m4_m4(ptr noundef nonnull %6, ptr noundef nonnull %48) #16
  call void @mul_m4_m4m4(ptr noundef nonnull %48, ptr noundef nonnull %6, ptr noundef nonnull %4) #16
  call void @copy_m3_m4(ptr noundef nonnull %7, ptr noundef nonnull %48) #16
  %49 = getelementptr inbounds %struct.ObjectInstanceRen, ptr %32, i64 0, i32 10
  %50 = call zeroext i8 @invert_m3_m3(ptr noundef nonnull %49, ptr noundef nonnull %7) #16
  call void @transpose_m3(ptr noundef nonnull %49) #16
  br i1 %17, label %62, label %51

51:                                               ; preds = %47
  %52 = getelementptr inbounds %struct.ObjectInstanceRen, ptr %32, i64 0, i32 12
  %53 = load float, ptr %18, align 4, !tbaa !44
  store float %53, ptr %52, align 4, !tbaa !44
  %54 = load float, ptr %19, align 4, !tbaa !44
  %55 = getelementptr inbounds %struct.ObjectInstanceRen, ptr %32, i64 0, i32 12, i64 1
  store float %54, ptr %55, align 4, !tbaa !44
  %56 = load float, ptr %20, align 4, !tbaa !44
  %57 = getelementptr inbounds %struct.ObjectInstanceRen, ptr %32, i64 0, i32 12, i64 2
  store float %56, ptr %57, align 4, !tbaa !44
  %58 = load float, ptr %21, align 4, !tbaa !44
  %59 = getelementptr inbounds %struct.ObjectInstanceRen, ptr %32, i64 0, i32 13
  store float %58, ptr %59, align 8, !tbaa !44
  %60 = load float, ptr %22, align 4, !tbaa !44
  %61 = getelementptr inbounds %struct.ObjectInstanceRen, ptr %32, i64 0, i32 13, i64 1
  store float %60, ptr %61, align 4, !tbaa !44
  br label %62

62:                                               ; preds = %51, %47
  %63 = icmp eq i32 %33, 0
  br i1 %63, label %64, label %77

64:                                               ; preds = %62
  %65 = load i32, ptr %23, align 8, !tbaa !211
  %66 = load i32, ptr %24, align 4, !tbaa !142
  %67 = add nsw i32 %66, %65
  store i32 %67, ptr %24, align 4, !tbaa !142
  %68 = load i32, ptr %25, align 4, !tbaa !293
  %69 = load i32, ptr %26, align 8, !tbaa !144
  %70 = add nsw i32 %69, %68
  store i32 %70, ptr %26, align 8, !tbaa !144
  %71 = load i32, ptr %27, align 4, !tbaa !195
  %72 = load i32, ptr %28, align 8, !tbaa !148
  %73 = add nsw i32 %72, %71
  store i32 %73, ptr %28, align 8, !tbaa !148
  %74 = load i32, ptr %29, align 8, !tbaa !247
  %75 = load i32, ptr %30, align 4, !tbaa !146
  %76 = add nsw i32 %75, %74
  store i32 %76, ptr %30, align 4, !tbaa !146
  br label %77

77:                                               ; preds = %62, %31, %37, %42, %64
  %78 = phi i32 [ %33, %31 ], [ 0, %64 ], [ %33, %42 ], [ %33, %37 ], [ 0, %62 ]
  %79 = getelementptr inbounds %struct.ObjectInstanceRen, ptr %32, i64 0, i32 1
  %80 = load ptr, ptr %79, align 8, !tbaa !77
  %81 = icmp eq ptr %80, null
  br i1 %81, label %82, label %31, !llvm.loop !294

82:                                               ; preds = %77, %3
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %7) #16
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %6) #16
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %5) #16
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %4) #16
  ret void
}

declare void @duplilist_restore(ptr noundef, ptr noundef) local_unnamed_addr #6

declare void @duplilist_free_apply_data(ptr noundef) local_unnamed_addr #6

declare void @free_object_duplilist(ptr noundef) local_unnamed_addr #6

; Function Attrs: nounwind uwtable
define internal fastcc void @add_group_render_dupli_obs(ptr noundef %0, ptr nocapture noundef readonly %1, i32 noundef %2, i32 noundef %3, ptr noundef %4, i32 noundef %5, i32 noundef %6) unnamed_addr #4 {
  %8 = icmp sgt i32 %6, 8
  br i1 %8, label %91, label %9

9:                                                ; preds = %7
  %10 = getelementptr inbounds %struct.Group, ptr %1, i64 0, i32 1
  %11 = load ptr, ptr %10, align 8, !tbaa !77
  %12 = icmp eq ptr %11, null
  br i1 %12, label %91, label %13

13:                                               ; preds = %9
  %14 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 45, i32 46
  %15 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 44
  %16 = icmp eq i32 %2, 0
  %17 = icmp eq i32 %3, 0
  %18 = add nuw nsw i32 %6, 1
  br label %19

19:                                               ; preds = %13, %88
  %20 = phi ptr [ %11, %13 ], [ %89, %88 ]
  %21 = getelementptr inbounds %struct.GroupObject, ptr %20, i64 0, i32 2
  %22 = load ptr, ptr %21, align 8, !tbaa !290
  %23 = getelementptr inbounds %struct.Object, ptr %22, i64 0, i32 53
  %24 = load i16, ptr %23, align 4, !tbaa !154
  %25 = and i16 %24, 1024
  %26 = icmp eq i16 %25, 0
  br i1 %26, label %88, label %27

27:                                               ; preds = %19
  %28 = getelementptr inbounds %struct.Object, ptr %22, i64 0, i32 55
  %29 = load i16, ptr %28, align 8, !tbaa !157
  %30 = and i16 %29, 4096
  %31 = icmp eq i16 %30, 0
  br i1 %31, label %88, label %32

32:                                               ; preds = %27
  %33 = load i32, ptr %14, align 4, !tbaa !105
  %34 = and i32 %33, 524288
  %35 = icmp eq i32 %34, 0
  %36 = getelementptr inbounds %struct.Object, ptr %22, i64 0, i32 102
  %37 = load i8, ptr %36, align 8, !tbaa !164
  %38 = lshr i8 %37, 2
  %39 = select i1 %35, i8 %38, i8 %37
  %40 = and i8 %39, 1
  %41 = icmp ne i8 %40, 0
  %42 = or i1 %35, %41
  %43 = xor i1 %41, true
  br i1 %42, label %49, label %44

44:                                               ; preds = %32
  %45 = getelementptr inbounds %struct.Object, ptr %22, i64 0, i32 87
  %46 = load i8, ptr %45, align 2, !tbaa !165
  %47 = add i8 %46, -3
  %48 = icmp ult i8 %47, -2
  br label %49

49:                                               ; preds = %44, %32
  %50 = phi i1 [ %48, %44 ], [ %43, %32 ]
  br i1 %50, label %51, label %88

51:                                               ; preds = %49
  %52 = getelementptr inbounds %struct.Object, ptr %22, i64 0, i32 109
  %53 = load ptr, ptr %52, align 8, !tbaa !166
  %54 = icmp eq ptr %53, null
  br i1 %54, label %55, label %62

55:                                               ; preds = %51
  %56 = zext i16 %29 to i32
  %57 = and i32 %56, 2840
  %58 = icmp ne i32 %57, 0
  %59 = and i32 %56, 8
  %60 = icmp eq i32 %59, 0
  %61 = and i1 %58, %60
  br i1 %61, label %88, label %62

62:                                               ; preds = %55, %51
  %63 = getelementptr inbounds %struct.Object, ptr %22, i64 0, i32 3
  %64 = load i16, ptr %63, align 8, !tbaa !167
  %65 = icmp eq i16 %64, 5
  br i1 %65, label %66, label %70

66:                                               ; preds = %62
  %67 = load ptr, ptr %15, align 8, !tbaa !64
  %68 = tail call ptr @BKE_mball_basis_find(ptr noundef %67, ptr noundef %22) #16
  %69 = icmp eq ptr %68, %22
  br i1 %69, label %70, label %88

70:                                               ; preds = %66, %62
  br i1 %16, label %74, label %71

71:                                               ; preds = %70
  %72 = load i16, ptr %63, align 8, !tbaa !167
  %73 = icmp eq i16 %72, 10
  br i1 %73, label %88, label %74

74:                                               ; preds = %71, %70
  %75 = icmp eq ptr %22, %4
  %76 = or i1 %17, %75
  br i1 %76, label %81, label %77

77:                                               ; preds = %74
  %78 = load i16, ptr %23, align 4, !tbaa !154
  %79 = and i16 %78, 1
  %80 = icmp eq i16 %79, 0
  br i1 %80, label %88, label %81

81:                                               ; preds = %77, %74
  tail call fastcc void @init_render_object(ptr noundef %0, ptr noundef %22, ptr noundef null, ptr noundef null, ptr noundef null, i32 noundef %5)
  %82 = load i16, ptr %28, align 8, !tbaa !157
  %83 = and i16 %82, -4097
  store i16 %83, ptr %28, align 8, !tbaa !157
  %84 = getelementptr inbounds %struct.Object, ptr %22, i64 0, i32 112
  %85 = load ptr, ptr %84, align 8, !tbaa !289
  %86 = icmp eq ptr %85, null
  br i1 %86, label %88, label %87

87:                                               ; preds = %81
  tail call fastcc void @add_group_render_dupli_obs(ptr noundef %0, ptr noundef nonnull %85, i32 noundef %2, i32 noundef %3, ptr noundef %4, i32 noundef %5, i32 noundef %18)
  br label %88

88:                                               ; preds = %77, %71, %66, %55, %49, %19, %87, %81, %27
  %89 = load ptr, ptr %20, align 8, !tbaa !77
  %90 = icmp eq ptr %89, null
  br i1 %90, label %91, label %19, !llvm.loop !295

91:                                               ; preds = %88, %9, %7
  ret void
}

declare void @RE_makeRenderInstances(ptr noundef) local_unnamed_addr #6

declare ptr @give_totcolp(ptr noundef) local_unnamed_addr #6

declare ptr @give_matarar(ptr noundef) local_unnamed_addr #6

declare ptr @BLI_memarena_alloc(ptr noundef, i64 noundef) local_unnamed_addr #6

declare void @_va_mul_m4_series_5(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #6

declare ptr @BKE_mball_basis_find(ptr noundef, ptr noundef) local_unnamed_addr #6

; Function Attrs: nounwind uwtable
define internal fastcc noundef ptr @add_render_lamp(ptr noundef %0, ptr noundef %1) unnamed_addr #4 {
  %3 = alloca [4 x [4 x float]], align 16
  %4 = alloca [4 x [4 x float]], align 16
  %5 = alloca [3 x float], align 4
  %6 = getelementptr inbounds %struct.Object, ptr %1, i64 0, i32 19
  %7 = load ptr, ptr %6, align 8, !tbaa !296
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %4) #16
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %5) #16
  %8 = icmp eq ptr %7, null
  br i1 %8, label %700, label %9

9:                                                ; preds = %2
  %10 = getelementptr inbounds %struct.Lamp, ptr %7, i64 0, i32 4
  %11 = load i32, ptr %10, align 4, !tbaa !297
  %12 = and i32 %11, 32
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %19, label %14

14:                                               ; preds = %9
  %15 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 45, i32 47
  %16 = load i32, ptr %15, align 8, !tbaa !90
  %17 = and i32 %16, 2
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %700, label %19

19:                                               ; preds = %14, %9
  %20 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 64
  %21 = load i32, ptr %20, align 8, !tbaa !150
  %22 = add nsw i32 %21, 1
  store i32 %22, ptr %20, align 8, !tbaa !150
  %23 = load ptr, ptr @MEM_callocN, align 8, !tbaa !77
  %24 = tail call ptr %23(i64 noundef 40, ptr noundef nonnull @.str.8) #16
  %25 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 66
  tail call void @BLI_addtail(ptr noundef nonnull %25, ptr noundef %24) #16
  %26 = getelementptr inbounds %struct.GroupObject, ptr %24, i64 0, i32 2
  store ptr %1, ptr %26, align 8, !tbaa !290
  %27 = load ptr, ptr @MEM_callocN, align 8, !tbaa !77
  %28 = tail call ptr %27(i64 noundef 672, ptr noundef nonnull @.str.9) #16
  %29 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 67
  tail call void @BLI_addtail(ptr noundef nonnull %29, ptr noundef %28) #16
  %30 = getelementptr inbounds %struct.GroupObject, ptr %24, i64 0, i32 3
  store ptr %28, ptr %30, align 8, !tbaa !299
  %31 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 32
  %32 = getelementptr inbounds %struct.Object, ptr %1, i64 0, i32 47
  call void @mul_m4_m4m4(ptr noundef nonnull %4, ptr noundef nonnull %31, ptr noundef nonnull %32) #16
  %33 = getelementptr inbounds %struct.Object, ptr %1, i64 0, i32 50
  %34 = call zeroext i8 @invert_m4_m4(ptr noundef nonnull %33, ptr noundef nonnull %4) #16
  %35 = getelementptr inbounds %struct.LampRen, ptr %28, i64 0, i32 63
  call void @copy_m4_m4(ptr noundef nonnull %35, ptr noundef nonnull %32) #16
  %36 = getelementptr inbounds %struct.LampRen, ptr %28, i64 0, i32 64
  call void @copy_m3_m4(ptr noundef nonnull %36, ptr noundef nonnull %4) #16
  %37 = getelementptr inbounds %struct.LampRen, ptr %28, i64 0, i32 59
  call void @copy_m3_m4(ptr noundef nonnull %37, ptr noundef nonnull %33) #16
  %38 = getelementptr inbounds %struct.Lamp, ptr %7, i64 0, i32 32
  %39 = load i16, ptr %38, align 8, !tbaa !300
  %40 = getelementptr inbounds %struct.LampRen, ptr %28, i64 0, i32 31
  store i16 %39, ptr %40, align 8, !tbaa !301
  %41 = getelementptr inbounds %struct.Lamp, ptr %7, i64 0, i32 33
  %42 = load i16, ptr %41, align 2, !tbaa !302
  %43 = getelementptr inbounds %struct.LampRen, ptr %28, i64 0, i32 32
  store i16 %42, ptr %43, align 2, !tbaa !303
  %44 = getelementptr inbounds %struct.Lamp, ptr %7, i64 0, i32 34
  %45 = load i16, ptr %44, align 4, !tbaa !304
  %46 = getelementptr inbounds %struct.LampRen, ptr %28, i64 0, i32 34
  %47 = call i16 @llvm.umax.i16(i16 %45, i16 1)
  store i16 %47, ptr %46, align 8, !tbaa !305
  %48 = getelementptr inbounds %struct.Lamp, ptr %7, i64 0, i32 37
  %49 = load i8, ptr %48, align 1, !tbaa !306
  %50 = zext i8 %49 to i16
  %51 = getelementptr inbounds %struct.LampRen, ptr %28, i64 0, i32 36
  store i16 %50, ptr %51, align 4, !tbaa !307
  %52 = getelementptr inbounds %struct.Lamp, ptr %7, i64 0, i32 35
  %53 = load i16, ptr %52, align 2, !tbaa !308
  %54 = getelementptr inbounds %struct.LampRen, ptr %28, i64 0, i32 35
  store i16 %53, ptr %54, align 2, !tbaa !309
  %55 = getelementptr inbounds %struct.Lamp, ptr %7, i64 0, i32 28
  %56 = load float, ptr %55, align 8, !tbaa !310
  %57 = getelementptr inbounds %struct.LampRen, ptr %28, i64 0, i32 33
  store float %56, ptr %57, align 4, !tbaa !311
  %58 = getelementptr inbounds %struct.Lamp, ptr %7, i64 0, i32 50
  %59 = load i16, ptr %58, align 2, !tbaa !312
  %60 = getelementptr inbounds %struct.LampRen, ptr %28, i64 0, i32 38
  store i16 %59, ptr %60, align 8, !tbaa !313
  %61 = getelementptr inbounds %struct.Lamp, ptr %7, i64 0, i32 25
  %62 = load float, ptr %61, align 4, !tbaa !314
  %63 = getelementptr inbounds %struct.LampRen, ptr %28, i64 0, i32 39
  store float %62, ptr %63, align 4, !tbaa !315
  %64 = getelementptr inbounds %struct.Lamp, ptr %7, i64 0, i32 26
  %65 = load float, ptr %64, align 8, !tbaa !316
  %66 = getelementptr inbounds %struct.LampRen, ptr %28, i64 0, i32 40
  store float %65, ptr %66, align 8, !tbaa !317
  %67 = getelementptr inbounds %struct.Lamp, ptr %7, i64 0, i32 27
  %68 = load float, ptr %67, align 4, !tbaa !318
  %69 = getelementptr inbounds %struct.LampRen, ptr %28, i64 0, i32 41
  store float %68, ptr %69, align 4, !tbaa !319
  %70 = getelementptr inbounds %struct.Lamp, ptr %7, i64 0, i32 29
  %71 = load float, ptr %70, align 4, !tbaa !320
  %72 = getelementptr inbounds %struct.LampRen, ptr %28, i64 0, i32 42
  store float %71, ptr %72, align 8, !tbaa !321
  %73 = getelementptr inbounds %struct.Lamp, ptr %7, i64 0, i32 2
  %74 = load i16, ptr %73, align 8, !tbaa !322
  %75 = getelementptr inbounds %struct.LampRen, ptr %28, i64 0, i32 6
  store i16 %74, ptr %75, align 8, !tbaa !323
  %76 = load i32, ptr %10, align 4, !tbaa !297
  %77 = getelementptr inbounds %struct.LampRen, ptr %28, i64 0, i32 7
  store i32 %76, ptr %77, align 4, !tbaa !324
  %78 = getelementptr inbounds %struct.Lamp, ptr %7, i64 0, i32 15
  %79 = load float, ptr %78, align 4, !tbaa !325
  %80 = getelementptr inbounds %struct.LampRen, ptr %28, i64 0, i32 15
  %81 = and i32 %76, 16
  %82 = icmp eq i32 %81, 0
  %83 = fneg float %79
  %84 = select i1 %82, float %79, float %83
  store float %84, ptr %80, align 4, !tbaa !326
  %85 = getelementptr inbounds [4 x [4 x float]], ptr %4, i64 0, i64 2
  %86 = load float, ptr %85, align 16, !tbaa !44
  %87 = fneg float %86
  %88 = getelementptr inbounds %struct.LampRen, ptr %28, i64 0, i32 20
  store float %87, ptr %88, align 8, !tbaa !44
  %89 = getelementptr inbounds [4 x [4 x float]], ptr %4, i64 0, i64 2, i64 1
  %90 = load float, ptr %89, align 4, !tbaa !44
  %91 = fneg float %90
  %92 = getelementptr inbounds %struct.LampRen, ptr %28, i64 0, i32 20, i64 1
  store float %91, ptr %92, align 4, !tbaa !44
  %93 = getelementptr inbounds [4 x [4 x float]], ptr %4, i64 0, i64 2, i64 2
  %94 = load float, ptr %93, align 8, !tbaa !44
  %95 = fneg float %94
  %96 = getelementptr inbounds %struct.LampRen, ptr %28, i64 0, i32 20, i64 2
  store float %95, ptr %96, align 8, !tbaa !44
  %97 = fmul float %90, %90
  %98 = call float @llvm.fmuladd.f32(float %86, float %86, float %97)
  %99 = call float @llvm.fmuladd.f32(float %94, float %94, float %98)
  %100 = fcmp ogt float %99, 0x38AA95A5C0000000
  br i1 %100, label %101, label %110

101:                                              ; preds = %19
  %102 = call float @sqrtf(float noundef %99) #16
  %103 = fdiv float 1.000000e+00, %102
  %104 = load float, ptr %88, align 4, !tbaa !44
  %105 = fmul float %104, %103
  store float %105, ptr %88, align 4, !tbaa !44
  %106 = load float, ptr %92, align 4, !tbaa !44
  %107 = fmul float %103, %106
  store float %107, ptr %92, align 4, !tbaa !44
  %108 = load float, ptr %96, align 4, !tbaa !44
  %109 = fmul float %103, %108
  br label %111

110:                                              ; preds = %19
  store float 0.000000e+00, ptr %88, align 4, !tbaa !44
  store float 0.000000e+00, ptr %92, align 4, !tbaa !44
  br label %111

111:                                              ; preds = %101, %110
  %112 = phi float [ 0.000000e+00, %110 ], [ %109, %101 ]
  store float %112, ptr %96, align 4, !tbaa !44
  %113 = getelementptr inbounds [4 x [4 x float]], ptr %4, i64 0, i64 3
  %114 = load float, ptr %113, align 16, !tbaa !44
  %115 = getelementptr inbounds %struct.LampRen, ptr %28, i64 0, i32 5
  store float %114, ptr %115, align 4, !tbaa !44
  %116 = getelementptr inbounds [4 x [4 x float]], ptr %4, i64 0, i64 3, i64 1
  %117 = load float, ptr %116, align 4, !tbaa !44
  %118 = getelementptr inbounds %struct.LampRen, ptr %28, i64 0, i32 5, i64 1
  store float %117, ptr %118, align 4, !tbaa !44
  %119 = getelementptr inbounds [4 x [4 x float]], ptr %4, i64 0, i64 3, i64 2
  %120 = load float, ptr %119, align 8, !tbaa !44
  %121 = getelementptr inbounds %struct.LampRen, ptr %28, i64 0, i32 5, i64 2
  store float %120, ptr %121, align 4, !tbaa !44
  %122 = getelementptr inbounds %struct.Lamp, ptr %7, i64 0, i32 16
  %123 = load float, ptr %122, align 8, !tbaa !327
  %124 = getelementptr inbounds %struct.LampRen, ptr %28, i64 0, i32 4
  store float %123, ptr %124, align 8, !tbaa !45
  %125 = getelementptr inbounds %struct.Lamp, ptr %7, i64 0, i32 19
  %126 = load float, ptr %125, align 4, !tbaa !328
  %127 = getelementptr inbounds %struct.LampRen, ptr %28, i64 0, i32 16
  store float %126, ptr %127, align 8, !tbaa !329
  %128 = fmul float %123, %123
  %129 = getelementptr inbounds %struct.LampRen, ptr %28, i64 0, i32 23
  store float %128, ptr %129, align 4, !tbaa !330
  %130 = load float, ptr %80, align 4, !tbaa !326
  %131 = getelementptr inbounds %struct.Lamp, ptr %7, i64 0, i32 7
  %132 = load float, ptr %131, align 4, !tbaa !331
  %133 = fmul float %130, %132
  %134 = getelementptr inbounds %struct.LampRen, ptr %28, i64 0, i32 8
  store float %133, ptr %134, align 8, !tbaa !332
  %135 = getelementptr inbounds %struct.Lamp, ptr %7, i64 0, i32 8
  %136 = load float, ptr %135, align 8, !tbaa !333
  %137 = fmul float %130, %136
  %138 = getelementptr inbounds %struct.LampRen, ptr %28, i64 0, i32 9
  store float %137, ptr %138, align 4, !tbaa !334
  %139 = getelementptr inbounds %struct.Lamp, ptr %7, i64 0, i32 9
  %140 = load float, ptr %139, align 4, !tbaa !335
  %141 = fmul float %130, %140
  %142 = getelementptr inbounds %struct.LampRen, ptr %28, i64 0, i32 10
  store float %141, ptr %142, align 8, !tbaa !336
  %143 = getelementptr inbounds %struct.Lamp, ptr %7, i64 0, i32 11
  %144 = load float, ptr %143, align 4, !tbaa !337
  %145 = getelementptr inbounds %struct.LampRen, ptr %28, i64 0, i32 12
  store float %144, ptr %145, align 8, !tbaa !338
  %146 = getelementptr inbounds %struct.Lamp, ptr %7, i64 0, i32 12
  %147 = load float, ptr %146, align 8, !tbaa !339
  %148 = getelementptr inbounds %struct.LampRen, ptr %28, i64 0, i32 13
  store float %147, ptr %148, align 4, !tbaa !340
  %149 = getelementptr inbounds %struct.Lamp, ptr %7, i64 0, i32 13
  %150 = load float, ptr %149, align 4, !tbaa !341
  %151 = getelementptr inbounds %struct.LampRen, ptr %28, i64 0, i32 14
  store float %150, ptr %151, align 8, !tbaa !342
  %152 = getelementptr inbounds %struct.Lamp, ptr %7, i64 0, i32 10
  %153 = load float, ptr %152, align 8, !tbaa !343
  %154 = getelementptr inbounds %struct.LampRen, ptr %28, i64 0, i32 11
  store float %153, ptr %154, align 4, !tbaa !344
  %155 = getelementptr inbounds %struct.Lamp, ptr %7, i64 0, i32 38
  %156 = load i16, ptr %155, align 2, !tbaa !345
  %157 = getelementptr inbounds %struct.LampRen, ptr %28, i64 0, i32 43
  store i16 %156, ptr %157, align 4, !tbaa !346
  %158 = getelementptr inbounds %struct.Lamp, ptr %7, i64 0, i32 39
  %159 = load i16, ptr %158, align 4, !tbaa !347
  %160 = getelementptr inbounds %struct.LampRen, ptr %28, i64 0, i32 44
  store i16 %159, ptr %160, align 2, !tbaa !348
  %161 = getelementptr inbounds %struct.Lamp, ptr %7, i64 0, i32 40
  %162 = load i16, ptr %161, align 2, !tbaa !349
  %163 = getelementptr inbounds %struct.LampRen, ptr %28, i64 0, i32 45
  store i16 %162, ptr %163, align 8, !tbaa !350
  %164 = getelementptr inbounds %struct.Lamp, ptr %7, i64 0, i32 43
  %165 = load float, ptr %164, align 4, !tbaa !351
  %166 = getelementptr inbounds %struct.LampRen, ptr %28, i64 0, i32 52
  store float %165, ptr %166, align 8, !tbaa !34
  %167 = getelementptr inbounds %struct.Lamp, ptr %7, i64 0, i32 44
  %168 = load float, ptr %167, align 8, !tbaa !352
  %169 = getelementptr inbounds %struct.LampRen, ptr %28, i64 0, i32 53
  store float %168, ptr %169, align 4, !tbaa !42
  %170 = getelementptr inbounds %struct.Lamp, ptr %7, i64 0, i32 45
  %171 = load float, ptr %170, align 4, !tbaa !353
  %172 = getelementptr inbounds %struct.LampRen, ptr %28, i64 0, i32 54
  store float %171, ptr %172, align 8, !tbaa !354
  %173 = getelementptr inbounds %struct.Lamp, ptr %7, i64 0, i32 42
  %174 = load i16, ptr %173, align 2, !tbaa !355
  %175 = getelementptr inbounds %struct.LampRen, ptr %28, i64 0, i32 48
  store i16 %174, ptr %175, align 2, !tbaa !356
  %176 = load i16, ptr %73, align 8, !tbaa !322
  switch i16 %176, label %188 [
    i16 4, label %177
    i16 2, label %177
    i16 1, label %177
    i16 0, label %177
  ]

177:                                              ; preds = %111, %111, %111, %111
  %178 = load i32, ptr %10, align 4, !tbaa !297
  %179 = and i32 %178, 8192
  %180 = icmp ne i32 %179, 0
  %181 = icmp ult i16 %176, 3
  %182 = and i1 %181, %180
  br i1 %182, label %183, label %188

183:                                              ; preds = %177
  %184 = getelementptr inbounds %struct.Lamp, ptr %7, i64 0, i32 47
  %185 = load i16, ptr %184, align 4, !tbaa !357
  %186 = icmp eq i16 %185, 0
  br i1 %186, label %187, label %188

187:                                              ; preds = %183
  store i16 1, ptr %184, align 4, !tbaa !357
  br label %188

188:                                              ; preds = %111, %187, %183, %177
  %189 = getelementptr inbounds %struct.Lamp, ptr %7, i64 0, i32 47
  %190 = load i16, ptr %189, align 4, !tbaa !357
  %191 = getelementptr inbounds %struct.LampRen, ptr %28, i64 0, i32 46
  store i16 %190, ptr %191, align 2, !tbaa !358
  %192 = getelementptr inbounds %struct.Lamp, ptr %7, i64 0, i32 41
  %193 = load i16, ptr %192, align 8, !tbaa !359
  %194 = getelementptr inbounds %struct.LampRen, ptr %28, i64 0, i32 47
  store i16 %193, ptr %194, align 4, !tbaa !360
  %195 = getelementptr inbounds %struct.Lamp, ptr %7, i64 0, i32 46
  %196 = load float, ptr %195, align 8, !tbaa !361
  %197 = getelementptr inbounds %struct.LampRen, ptr %28, i64 0, i32 55
  store float %196, ptr %197, align 4, !tbaa !362
  %198 = getelementptr inbounds %struct.LampRen, ptr %28, i64 0, i32 56
  store ptr null, ptr %198, align 8, !tbaa !108
  %199 = load i16, ptr %75, align 8, !tbaa !323
  switch i16 %199, label %347 [
    i16 2, label %200
    i16 0, label %200
    i16 4, label %203
    i16 1, label %281
  ]

200:                                              ; preds = %188, %188
  %201 = mul i16 %156, %156
  %202 = getelementptr inbounds %struct.LampRen, ptr %28, i64 0, i32 49
  store i16 %201, ptr %202, align 8, !tbaa !43
  store i16 0, ptr %175, align 2, !tbaa !356
  store float %165, ptr %169, align 4, !tbaa !42
  br label %349

203:                                              ; preds = %188
  switch i16 %174, label %218 [
    i16 0, label %204
    i16 1, label %207
    i16 2, label %210
    i16 3, label %214
  ]

204:                                              ; preds = %203
  %205 = mul i16 %156, %156
  %206 = getelementptr inbounds %struct.LampRen, ptr %28, i64 0, i32 49
  store i16 %205, ptr %206, align 8, !tbaa !43
  store i16 %156, ptr %160, align 2, !tbaa !348
  store float %165, ptr %169, align 4, !tbaa !42
  br label %218

207:                                              ; preds = %203
  %208 = mul i16 %159, %156
  %209 = getelementptr inbounds %struct.LampRen, ptr %28, i64 0, i32 49
  store i16 %208, ptr %209, align 8, !tbaa !43
  br label %218

210:                                              ; preds = %203
  %211 = mul i16 %156, %156
  %212 = mul i16 %211, %156
  %213 = getelementptr inbounds %struct.LampRen, ptr %28, i64 0, i32 49
  store i16 %212, ptr %213, align 8, !tbaa !43
  store i16 %156, ptr %160, align 2, !tbaa !348
  store i16 %156, ptr %163, align 8, !tbaa !350
  store float %165, ptr %169, align 4, !tbaa !42
  store float %165, ptr %172, align 8, !tbaa !354
  br label %218

214:                                              ; preds = %203
  %215 = mul i16 %159, %156
  %216 = mul i16 %215, %162
  %217 = getelementptr inbounds %struct.LampRen, ptr %28, i64 0, i32 49
  store i16 %216, ptr %217, align 8, !tbaa !43
  br label %218

218:                                              ; preds = %203, %214, %210, %207, %204
  %219 = fmul float %165, 5.000000e-01
  %220 = load float, ptr %169, align 4, !tbaa !42
  %221 = fmul float %220, 5.000000e-01
  %222 = getelementptr inbounds %struct.LampRen, ptr %28, i64 0, i32 49
  %223 = load i16, ptr %222, align 8, !tbaa !43
  %224 = sitofp i16 %223 to float
  %225 = call float @sqrtf(float noundef %224) #16
  %226 = fdiv float 1.000000e+00, %225
  %227 = fmul float %219, %226
  %228 = fmul float %221, %226
  %229 = load float, ptr %115, align 4, !tbaa !44
  %230 = load float, ptr %36, align 8, !tbaa !44
  %231 = fneg float %227
  %232 = call float @llvm.fmuladd.f32(float %231, float %230, float %229)
  %233 = getelementptr inbounds %struct.LampRen, ptr %28, i64 0, i32 64, i64 1
  %234 = load float, ptr %233, align 4, !tbaa !44
  %235 = fneg float %228
  %236 = call float @llvm.fmuladd.f32(float %235, float %234, float %232)
  %237 = getelementptr inbounds %struct.LampRen, ptr %28, i64 0, i32 65
  store float %236, ptr %237, align 4, !tbaa !44
  %238 = load float, ptr %118, align 4, !tbaa !44
  %239 = getelementptr inbounds %struct.LampRen, ptr %28, i64 0, i32 64, i64 0, i64 1
  %240 = load float, ptr %239, align 4, !tbaa !44
  %241 = call float @llvm.fmuladd.f32(float %231, float %240, float %238)
  %242 = getelementptr inbounds %struct.LampRen, ptr %28, i64 0, i32 64, i64 1, i64 1
  %243 = load float, ptr %242, align 4, !tbaa !44
  %244 = call float @llvm.fmuladd.f32(float %235, float %243, float %241)
  %245 = getelementptr inbounds %struct.LampRen, ptr %28, i64 0, i32 65, i64 0, i64 1
  store float %244, ptr %245, align 4, !tbaa !44
  %246 = load float, ptr %121, align 4, !tbaa !44
  %247 = getelementptr inbounds %struct.LampRen, ptr %28, i64 0, i32 64, i64 0, i64 2
  %248 = load float, ptr %247, align 8, !tbaa !44
  %249 = call float @llvm.fmuladd.f32(float %231, float %248, float %246)
  %250 = getelementptr inbounds %struct.LampRen, ptr %28, i64 0, i32 64, i64 1, i64 2
  %251 = load float, ptr %250, align 4, !tbaa !44
  %252 = call float @llvm.fmuladd.f32(float %235, float %251, float %249)
  %253 = getelementptr inbounds %struct.LampRen, ptr %28, i64 0, i32 65, i64 0, i64 2
  store float %252, ptr %253, align 4, !tbaa !44
  %254 = call float @llvm.fmuladd.f32(float %228, float %234, float %232)
  %255 = getelementptr inbounds %struct.LampRen, ptr %28, i64 0, i32 65, i64 1
  store float %254, ptr %255, align 4, !tbaa !44
  %256 = call float @llvm.fmuladd.f32(float %228, float %243, float %241)
  %257 = getelementptr inbounds %struct.LampRen, ptr %28, i64 0, i32 65, i64 1, i64 1
  store float %256, ptr %257, align 4, !tbaa !44
  %258 = call float @llvm.fmuladd.f32(float %228, float %251, float %249)
  %259 = getelementptr inbounds %struct.LampRen, ptr %28, i64 0, i32 65, i64 1, i64 2
  store float %258, ptr %259, align 4, !tbaa !44
  %260 = call float @llvm.fmuladd.f32(float %227, float %230, float %229)
  %261 = call float @llvm.fmuladd.f32(float %228, float %234, float %260)
  %262 = getelementptr inbounds %struct.LampRen, ptr %28, i64 0, i32 65, i64 2
  store float %261, ptr %262, align 4, !tbaa !44
  %263 = call float @llvm.fmuladd.f32(float %227, float %240, float %238)
  %264 = call float @llvm.fmuladd.f32(float %228, float %243, float %263)
  %265 = getelementptr inbounds %struct.LampRen, ptr %28, i64 0, i32 65, i64 2, i64 1
  store float %264, ptr %265, align 4, !tbaa !44
  %266 = call float @llvm.fmuladd.f32(float %227, float %248, float %246)
  %267 = call float @llvm.fmuladd.f32(float %228, float %251, float %266)
  %268 = getelementptr inbounds %struct.LampRen, ptr %28, i64 0, i32 65, i64 2, i64 2
  store float %267, ptr %268, align 4, !tbaa !44
  %269 = call float @llvm.fmuladd.f32(float %235, float %234, float %260)
  %270 = getelementptr inbounds %struct.LampRen, ptr %28, i64 0, i32 65, i64 3
  store float %269, ptr %270, align 4, !tbaa !44
  %271 = call float @llvm.fmuladd.f32(float %235, float %243, float %263)
  %272 = getelementptr inbounds %struct.LampRen, ptr %28, i64 0, i32 65, i64 3, i64 1
  store float %271, ptr %272, align 4, !tbaa !44
  %273 = call float @llvm.fmuladd.f32(float %235, float %251, float %266)
  %274 = getelementptr inbounds %struct.LampRen, ptr %28, i64 0, i32 65, i64 3, i64 2
  store float %273, ptr %274, align 4, !tbaa !44
  %275 = load float, ptr %124, align 8, !tbaa !45
  %276 = fmul float %275, %275
  %277 = fmul float %227, 4.000000e+00
  %278 = fmul float %228, %277
  %279 = fdiv float %276, %278
  %280 = getelementptr inbounds %struct.LampRen, ptr %28, i64 0, i32 66
  store float %279, ptr %280, align 4, !tbaa !46
  call void @init_jitter_plane(ptr noundef %28) #16
  br label %349

281:                                              ; preds = %188
  %282 = mul i16 %156, %156
  %283 = getelementptr inbounds %struct.LampRen, ptr %28, i64 0, i32 49
  store i16 %282, ptr %283, align 8, !tbaa !43
  store i16 0, ptr %175, align 2, !tbaa !356
  store float %165, ptr %169, align 4, !tbaa !42
  %284 = getelementptr inbounds %struct.Lamp, ptr %7, i64 0, i32 51
  %285 = load i16, ptr %284, align 4, !tbaa !363
  %286 = and i16 %285, 3
  %287 = icmp eq i16 %286, 0
  br i1 %287, label %349, label %288

288:                                              ; preds = %281
  %289 = load ptr, ptr @MEM_callocN, align 8, !tbaa !77
  %290 = call ptr %289(i64 noundef 224, ptr noundef nonnull @.str.10) #16
  store ptr %290, ptr %198, align 8, !tbaa !108
  %291 = load i16, ptr %284, align 4, !tbaa !363
  store i16 %291, ptr %290, align 4, !tbaa !364
  %292 = getelementptr inbounds %struct.Object, ptr %1, i64 0, i32 47, i64 2
  %293 = load float, ptr %292, align 4, !tbaa !44
  store float %293, ptr %5, align 4, !tbaa !44
  %294 = getelementptr inbounds %struct.Object, ptr %1, i64 0, i32 47, i64 2, i64 1
  %295 = load float, ptr %294, align 4, !tbaa !44
  %296 = getelementptr inbounds float, ptr %5, i64 1
  store float %295, ptr %296, align 4, !tbaa !44
  %297 = getelementptr inbounds %struct.Object, ptr %1, i64 0, i32 47, i64 2, i64 2
  %298 = load float, ptr %297, align 4, !tbaa !44
  %299 = getelementptr inbounds float, ptr %5, i64 2
  store float %298, ptr %299, align 4, !tbaa !44
  %300 = fmul float %295, %295
  %301 = call float @llvm.fmuladd.f32(float %293, float %293, float %300)
  %302 = call float @llvm.fmuladd.f32(float %298, float %298, float %301)
  %303 = fcmp ogt float %302, 0x38AA95A5C0000000
  br i1 %303, label %304, label %313

304:                                              ; preds = %288
  %305 = call float @sqrtf(float noundef %302) #16
  %306 = fdiv float 1.000000e+00, %305
  %307 = load float, ptr %5, align 4, !tbaa !44
  %308 = fmul float %307, %306
  store float %308, ptr %5, align 4, !tbaa !44
  %309 = load float, ptr %296, align 4, !tbaa !44
  %310 = fmul float %306, %309
  store float %310, ptr %296, align 4, !tbaa !44
  %311 = load float, ptr %299, align 4, !tbaa !44
  %312 = fmul float %306, %311
  br label %314

313:                                              ; preds = %288
  store float 0.000000e+00, ptr %5, align 4, !tbaa !44
  store float 0.000000e+00, ptr %296, align 4, !tbaa !44
  br label %314

314:                                              ; preds = %304, %313
  %315 = phi float [ 0.000000e+00, %313 ], [ %312, %304 ]
  store float %315, ptr %299, align 4, !tbaa !44
  %316 = load ptr, ptr %198, align 8, !tbaa !108
  %317 = getelementptr inbounds %struct.Lamp, ptr %7, i64 0, i32 59
  %318 = load float, ptr %317, align 8, !tbaa !366
  %319 = getelementptr inbounds %struct.Lamp, ptr %7, i64 0, i32 53
  %320 = load float, ptr %319, align 8, !tbaa !367
  %321 = getelementptr inbounds %struct.Lamp, ptr %7, i64 0, i32 54
  %322 = load float, ptr %321, align 4, !tbaa !368
  %323 = getelementptr inbounds %struct.Lamp, ptr %7, i64 0, i32 55
  %324 = load float, ptr %323, align 8, !tbaa !369
  %325 = getelementptr inbounds %struct.Lamp, ptr %7, i64 0, i32 56
  %326 = load float, ptr %325, align 4, !tbaa !370
  %327 = getelementptr inbounds %struct.Lamp, ptr %7, i64 0, i32 57
  %328 = load float, ptr %327, align 8, !tbaa !371
  %329 = getelementptr inbounds %struct.Lamp, ptr %7, i64 0, i32 63
  %330 = load float, ptr %329, align 8, !tbaa !372
  %331 = getelementptr inbounds %struct.Lamp, ptr %7, i64 0, i32 52
  %332 = load i16, ptr %331, align 2, !tbaa !373
  %333 = getelementptr inbounds %struct.Lamp, ptr %7, i64 0, i32 64
  %334 = load float, ptr %333, align 4, !tbaa !374
  %335 = getelementptr inbounds %struct.Lamp, ptr %7, i64 0, i32 66
  %336 = load i16, ptr %335, align 4, !tbaa !375
  %337 = sitofp i16 %336 to float
  call void @InitSunSky(ptr noundef %316, float noundef %318, ptr noundef nonnull %5, float noundef %320, float noundef %322, float noundef %324, float noundef %326, float noundef %328, float noundef %330, i16 noundef signext %332, float noundef %334, float noundef %337) #16
  %338 = load ptr, ptr %198, align 8, !tbaa !108
  %339 = getelementptr inbounds %struct.Lamp, ptr %7, i64 0, i32 58
  %340 = load float, ptr %339, align 4, !tbaa !376
  %341 = getelementptr inbounds %struct.Lamp, ptr %7, i64 0, i32 60
  %342 = load float, ptr %341, align 4, !tbaa !377
  %343 = getelementptr inbounds %struct.Lamp, ptr %7, i64 0, i32 61
  %344 = load float, ptr %343, align 8, !tbaa !378
  %345 = getelementptr inbounds %struct.Lamp, ptr %7, i64 0, i32 62
  %346 = load float, ptr %345, align 4, !tbaa !379
  call void @InitAtmosphere(ptr noundef %338, float noundef %340, float noundef 1.000000e+00, float noundef 1.000000e+00, float noundef %342, float noundef %344, float noundef %346) #16
  br label %349

347:                                              ; preds = %188
  %348 = getelementptr inbounds %struct.LampRen, ptr %28, i64 0, i32 49
  store i16 0, ptr %348, align 8, !tbaa !43
  br label %349

349:                                              ; preds = %281, %218, %314, %347, %200
  %350 = getelementptr inbounds %struct.Lamp, ptr %7, i64 0, i32 17
  %351 = load float, ptr %350, align 4, !tbaa !380
  %352 = getelementptr inbounds %struct.LampRen, ptr %28, i64 0, i32 18
  store float %351, ptr %352, align 8, !tbaa !381
  %353 = load i32, ptr %77, align 4, !tbaa !324
  %354 = and i32 %353, 2
  %355 = icmp ne i32 %354, 0
  %356 = fcmp ogt float %351, 0x4007BC89C0000000
  %357 = select i1 %355, i1 %356, i1 false
  %358 = fmul float %351, 5.000000e-01
  %359 = select i1 %357, float 0x3FF7BC89C0000000, float %358
  %360 = call float @cosf(float noundef %359) #16
  store float %360, ptr %352, align 8, !tbaa !381
  %361 = fsub float 1.000000e+00, %360
  %362 = getelementptr inbounds %struct.Lamp, ptr %7, i64 0, i32 18
  %363 = load float, ptr %362, align 8, !tbaa !382
  %364 = fmul float %361, %363
  %365 = getelementptr inbounds %struct.LampRen, ptr %28, i64 0, i32 19
  store float %364, ptr %365, align 4, !tbaa !383
  %366 = getelementptr inbounds %struct.LampRen, ptr %28, i64 0, i32 69
  %367 = getelementptr inbounds %struct.Lamp, ptr %7, i64 0, i32 69
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(144) %366, ptr noundef nonnull align 8 dereferenceable(144) %367, i64 144, i1 false)
  %368 = getelementptr inbounds %struct.Object, ptr %1, i64 0, i32 52
  %369 = load i32, ptr %368, align 8, !tbaa !189
  %370 = and i32 %369, 16777215
  %371 = getelementptr inbounds %struct.LampRen, ptr %28, i64 0, i32 17
  store i32 %370, ptr %371, align 4, !tbaa !384
  %372 = getelementptr inbounds %struct.Lamp, ptr %7, i64 0, i32 23
  %373 = load i16, ptr %372, align 8, !tbaa !385
  %374 = getelementptr inbounds %struct.LampRen, ptr %28, i64 0, i32 27
  store i16 %373, ptr %374, align 4, !tbaa !386
  %375 = getelementptr inbounds %struct.Lamp, ptr %7, i64 0, i32 20
  %376 = load float, ptr %375, align 8, !tbaa !387
  %377 = getelementptr inbounds %struct.LampRen, ptr %28, i64 0, i32 28
  store float %376, ptr %377, align 8, !tbaa !388
  %378 = getelementptr inbounds %struct.Lamp, ptr %7, i64 0, i32 21
  %379 = load float, ptr %378, align 4, !tbaa !389
  %380 = getelementptr inbounds %struct.LampRen, ptr %28, i64 0, i32 29
  store float %379, ptr %380, align 4, !tbaa !390
  %381 = getelementptr inbounds %struct.Lamp, ptr %7, i64 0, i32 22
  %382 = load ptr, ptr %381, align 8, !tbaa !391
  %383 = call ptr @curvemapping_copy(ptr noundef %382) #16
  %384 = getelementptr inbounds %struct.LampRen, ptr %28, i64 0, i32 30
  store ptr %383, ptr %384, align 8, !tbaa !109
  %385 = icmp eq ptr %383, null
  br i1 %385, label %387, label %386

386:                                              ; preds = %349
  call void @curvemapping_initialize(ptr noundef nonnull %383) #16
  br label %387

387:                                              ; preds = %386, %349
  %388 = load i16, ptr %75, align 8, !tbaa !323
  %389 = icmp eq i16 %388, 2
  br i1 %389, label %390, label %474

390:                                              ; preds = %387
  %391 = load float, ptr %37, align 4, !tbaa !44
  %392 = getelementptr inbounds %struct.LampRen, ptr %28, i64 0, i32 59, i64 0, i64 1
  %393 = load float, ptr %392, align 4, !tbaa !44
  %394 = fmul float %393, %393
  %395 = call float @llvm.fmuladd.f32(float %391, float %391, float %394)
  %396 = getelementptr inbounds %struct.LampRen, ptr %28, i64 0, i32 59, i64 0, i64 2
  %397 = load float, ptr %396, align 4, !tbaa !44
  %398 = call float @llvm.fmuladd.f32(float %397, float %397, float %395)
  %399 = fcmp ogt float %398, 0x38AA95A5C0000000
  br i1 %399, label %400, label %409

400:                                              ; preds = %390
  %401 = call float @sqrtf(float noundef %398) #16
  %402 = fdiv float 1.000000e+00, %401
  %403 = load float, ptr %37, align 4, !tbaa !44
  %404 = fmul float %403, %402
  store float %404, ptr %37, align 4, !tbaa !44
  %405 = load float, ptr %392, align 4, !tbaa !44
  %406 = fmul float %402, %405
  store float %406, ptr %392, align 4, !tbaa !44
  %407 = load float, ptr %396, align 4, !tbaa !44
  %408 = fmul float %402, %407
  br label %410

409:                                              ; preds = %390
  store float 0.000000e+00, ptr %37, align 4, !tbaa !44
  store float 0.000000e+00, ptr %392, align 4, !tbaa !44
  br label %410

410:                                              ; preds = %400, %409
  %411 = phi float [ 0.000000e+00, %409 ], [ %408, %400 ]
  store float %411, ptr %396, align 4, !tbaa !44
  %412 = getelementptr inbounds %struct.LampRen, ptr %28, i64 0, i32 59, i64 1
  %413 = load float, ptr %412, align 4, !tbaa !44
  %414 = getelementptr inbounds %struct.LampRen, ptr %28, i64 0, i32 59, i64 1, i64 1
  %415 = load float, ptr %414, align 4, !tbaa !44
  %416 = fmul float %415, %415
  %417 = call float @llvm.fmuladd.f32(float %413, float %413, float %416)
  %418 = getelementptr inbounds %struct.LampRen, ptr %28, i64 0, i32 59, i64 1, i64 2
  %419 = load float, ptr %418, align 4, !tbaa !44
  %420 = call float @llvm.fmuladd.f32(float %419, float %419, float %417)
  %421 = fcmp ogt float %420, 0x38AA95A5C0000000
  br i1 %421, label %422, label %431

422:                                              ; preds = %410
  %423 = call float @sqrtf(float noundef %420) #16
  %424 = fdiv float 1.000000e+00, %423
  %425 = load float, ptr %412, align 4, !tbaa !44
  %426 = fmul float %425, %424
  store float %426, ptr %412, align 4, !tbaa !44
  %427 = load float, ptr %414, align 4, !tbaa !44
  %428 = fmul float %424, %427
  store float %428, ptr %414, align 4, !tbaa !44
  %429 = load float, ptr %418, align 4, !tbaa !44
  %430 = fmul float %424, %429
  br label %432

431:                                              ; preds = %410
  store float 0.000000e+00, ptr %412, align 4, !tbaa !44
  store float 0.000000e+00, ptr %414, align 4, !tbaa !44
  br label %432

432:                                              ; preds = %422, %431
  %433 = phi float [ 0.000000e+00, %431 ], [ %430, %422 ]
  store float %433, ptr %418, align 4, !tbaa !44
  %434 = getelementptr inbounds %struct.LampRen, ptr %28, i64 0, i32 59, i64 2
  %435 = load float, ptr %434, align 4, !tbaa !44
  %436 = getelementptr inbounds %struct.LampRen, ptr %28, i64 0, i32 59, i64 2, i64 1
  %437 = load float, ptr %436, align 4, !tbaa !44
  %438 = fmul float %437, %437
  %439 = call float @llvm.fmuladd.f32(float %435, float %435, float %438)
  %440 = getelementptr inbounds %struct.LampRen, ptr %28, i64 0, i32 59, i64 2, i64 2
  %441 = load float, ptr %440, align 4, !tbaa !44
  %442 = call float @llvm.fmuladd.f32(float %441, float %441, float %439)
  %443 = fcmp ogt float %442, 0x38AA95A5C0000000
  br i1 %443, label %444, label %453

444:                                              ; preds = %432
  %445 = call float @sqrtf(float noundef %442) #16
  %446 = fdiv float 1.000000e+00, %445
  %447 = load float, ptr %434, align 4, !tbaa !44
  %448 = fmul float %447, %446
  store float %448, ptr %434, align 4, !tbaa !44
  %449 = load float, ptr %436, align 4, !tbaa !44
  %450 = fmul float %446, %449
  store float %450, ptr %436, align 4, !tbaa !44
  %451 = load float, ptr %440, align 4, !tbaa !44
  %452 = fmul float %446, %451
  br label %454

453:                                              ; preds = %432
  store float 0.000000e+00, ptr %434, align 4, !tbaa !44
  store float 0.000000e+00, ptr %436, align 4, !tbaa !44
  br label %454

454:                                              ; preds = %444, %453
  %455 = phi float [ 0.000000e+00, %453 ], [ %452, %444 ]
  store float %455, ptr %440, align 4, !tbaa !44
  %456 = load float, ptr %352, align 8, !tbaa !381
  %457 = fcmp ugt float %456, -1.000000e+00
  br i1 %457, label %458, label %462

458:                                              ; preds = %454
  %459 = fcmp ult float %456, 1.000000e+00
  br i1 %459, label %460, label %462

460:                                              ; preds = %458
  %461 = call float @acosf(float noundef %456) #16
  br label %462

462:                                              ; preds = %454, %458, %460
  %463 = phi float [ %461, %460 ], [ 0x400921FB60000000, %454 ], [ 0.000000e+00, %458 ]
  %464 = call float @sinf(float noundef %463) #16
  %465 = call float @cosf(float noundef %463) #16
  %466 = fdiv float %464, %465
  %467 = fdiv float 1.000000e+00, %466
  %468 = getelementptr inbounds %struct.LampRen, ptr %28, i64 0, i32 60
  store float %467, ptr %468, align 4, !tbaa !392
  %469 = load i32, ptr %77, align 4, !tbaa !324
  %470 = and i32 %469, 8225
  %471 = icmp eq i32 %470, 32
  br i1 %471, label %472, label %474

472:                                              ; preds = %462
  %473 = add nsw i32 %469, -32
  store i32 %473, ptr %77, align 4, !tbaa !324
  br label %474

474:                                              ; preds = %462, %472, %387
  %475 = load i16, ptr %73, align 8, !tbaa !322
  switch i16 %475, label %521 [
    i16 2, label %476
    i16 3, label %518
  ]

476:                                              ; preds = %474
  %477 = load i32, ptr %10, align 4, !tbaa !297
  %478 = and i32 %477, 2
  %479 = icmp eq i32 %478, 0
  br i1 %479, label %516, label %480

480:                                              ; preds = %476
  %481 = load i8, ptr %48, align 1, !tbaa !306
  %482 = icmp eq i8 %481, 3
  br i1 %482, label %516, label %483

483:                                              ; preds = %480
  %484 = load float, ptr %125, align 4, !tbaa !328
  %485 = fcmp ogt float %484, 0.000000e+00
  br i1 %485, label %486, label %521

486:                                              ; preds = %483
  %487 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 4
  %488 = load i16, ptr %487, align 8, !tbaa !267
  %489 = or i16 %488, 8
  store i16 %489, ptr %487, align 8, !tbaa !267
  %490 = load float, ptr %115, align 4, !tbaa !44
  %491 = fneg float %490
  %492 = getelementptr inbounds %struct.LampRen, ptr %28, i64 0, i32 61
  store float %491, ptr %492, align 8, !tbaa !44
  %493 = load float, ptr %118, align 4, !tbaa !44
  %494 = fneg float %493
  %495 = getelementptr inbounds %struct.LampRen, ptr %28, i64 0, i32 61, i64 1
  store float %494, ptr %495, align 4, !tbaa !44
  %496 = load float, ptr %121, align 4, !tbaa !44
  %497 = fneg float %496
  %498 = getelementptr inbounds %struct.LampRen, ptr %28, i64 0, i32 61, i64 2
  store float %497, ptr %498, align 8, !tbaa !44
  call void @mul_m3_v3(ptr noundef nonnull %37, ptr noundef nonnull %492) #16
  %499 = load float, ptr %352, align 8, !tbaa !381
  %500 = fcmp ugt float %499, -1.000000e+00
  br i1 %500, label %501, label %505

501:                                              ; preds = %486
  %502 = fcmp ult float %499, 1.000000e+00
  br i1 %502, label %503, label %505

503:                                              ; preds = %501
  %504 = call float @acosf(float noundef %499) #16
  br label %505

505:                                              ; preds = %486, %501, %503
  %506 = phi float [ %504, %503 ], [ 0x400921FB60000000, %486 ], [ 0.000000e+00, %501 ]
  %507 = load float, ptr %352, align 8, !tbaa !381
  %508 = call float @sinf(float noundef %506) #16
  %509 = fdiv float %508, %507
  %510 = getelementptr inbounds %struct.LampRen, ptr %28, i64 0, i32 62
  store float %509, ptr %510, align 4, !tbaa !393
  %511 = load float, ptr %498, align 8, !tbaa !44
  %512 = fmul float %509, %511
  store float %512, ptr %498, align 8, !tbaa !44
  %513 = load i16, ptr %51, align 4, !tbaa !307
  %514 = icmp eq i16 %513, 2
  br i1 %514, label %515, label %521

515:                                              ; preds = %505
  store i16 0, ptr %51, align 4, !tbaa !307
  br label %521

516:                                              ; preds = %480, %476
  %517 = icmp eq i16 %475, 3
  br i1 %517, label %518, label %521

518:                                              ; preds = %474, %516
  %519 = load i32, ptr %77, align 4, !tbaa !324
  %520 = and i32 %519, -8194
  store i32 %520, ptr %77, align 4, !tbaa !324
  br label %521

521:                                              ; preds = %474, %516, %518, %483, %515, %505
  %522 = load i8, ptr getelementptr inbounds (%struct.Global, ptr @G, i64 0, i32 13), align 2
  %523 = icmp eq i8 %522, 0
  %524 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 5
  br label %525

525:                                              ; preds = %521, %559
  %526 = phi i64 [ 0, %521 ], [ %560, %559 ]
  %527 = getelementptr inbounds %struct.Lamp, ptr %7, i64 0, i32 69, i64 %526
  %528 = load ptr, ptr %527, align 8, !tbaa !77
  %529 = icmp eq ptr %528, null
  br i1 %529, label %559, label %530

530:                                              ; preds = %525
  %531 = getelementptr inbounds %struct.MTex, ptr %528, i64 0, i32 5
  %532 = load ptr, ptr %531, align 8, !tbaa !81
  %533 = icmp eq ptr %532, null
  br i1 %533, label %559, label %534

534:                                              ; preds = %530
  %535 = getelementptr inbounds %struct.MTex, ptr %528, i64 0, i32 1
  %536 = load i16, ptr %535, align 2, !tbaa !394
  %537 = and i16 %536, 1
  %538 = icmp eq i16 %537, 0
  br i1 %538, label %542, label %539

539:                                              ; preds = %534
  %540 = load i32, ptr %77, align 4, !tbaa !324
  %541 = or i32 %540, 256
  store i32 %541, ptr %77, align 4, !tbaa !324
  br label %542

542:                                              ; preds = %539, %534
  %543 = and i16 %536, 2
  %544 = icmp eq i16 %543, 0
  br i1 %544, label %548, label %545

545:                                              ; preds = %542
  %546 = load i32, ptr %77, align 4, !tbaa !324
  %547 = or i32 %546, 65536
  store i32 %547, ptr %77, align 4, !tbaa !324
  br label %548

548:                                              ; preds = %545, %542
  br i1 %523, label %559, label %549

549:                                              ; preds = %548
  %550 = load i16, ptr %524, align 2, !tbaa !87
  %551 = icmp eq i16 %550, 0
  br i1 %551, label %559, label %552

552:                                              ; preds = %549
  %553 = getelementptr inbounds %struct.Tex, ptr %532, i64 0, i32 32
  %554 = load i16, ptr %553, align 8, !tbaa !395
  %555 = icmp eq i16 %554, 8
  br i1 %555, label %556, label %559

556:                                              ; preds = %552
  %557 = load i32, ptr %77, align 4, !tbaa !324
  %558 = or i32 %557, 512
  store i32 %558, ptr %77, align 4, !tbaa !324
  br label %559

559:                                              ; preds = %525, %530, %549, %556, %552, %548
  %560 = add nuw nsw i64 %526, 1
  %561 = icmp eq i64 %560, 18
  br i1 %561, label %562, label %525, !llvm.loop !398

562:                                              ; preds = %559
  %563 = load i32, ptr %77, align 4, !tbaa !324
  %564 = and i32 %563, 8192
  %565 = icmp eq i32 %564, 0
  br i1 %565, label %573, label %566

566:                                              ; preds = %562
  %567 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 45, i32 47
  %568 = load i32, ptr %567, align 8, !tbaa !90
  %569 = and i32 %568, 65536
  %570 = icmp eq i32 %569, 0
  br i1 %570, label %571, label %573

571:                                              ; preds = %566
  %572 = and i32 %563, -8193
  store i32 %572, ptr %77, align 4, !tbaa !324
  br label %573

573:                                              ; preds = %566, %571, %562
  %574 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 45, i32 47
  %575 = load i32, ptr %574, align 8, !tbaa !90
  %576 = and i32 %575, 2
  %577 = icmp eq i32 %576, 0
  br i1 %577, label %700, label %578

578:                                              ; preds = %573
  %579 = load i16, ptr %73, align 8, !tbaa !322
  switch i16 %579, label %658 [
    i16 4, label %580
    i16 2, label %590
  ]

580:                                              ; preds = %578
  %581 = load i32, ptr %77, align 4, !tbaa !324
  %582 = and i32 %581, 8192
  %583 = icmp eq i32 %582, 0
  br i1 %583, label %588, label %584

584:                                              ; preds = %580
  %585 = load i16, ptr %191, align 2, !tbaa !358
  %586 = icmp eq i16 %585, 0
  br i1 %586, label %587, label %588

587:                                              ; preds = %584
  call void @init_jitter_plane(ptr noundef %28) #16
  br label %658

588:                                              ; preds = %584, %580
  %589 = icmp eq i16 %579, 2
  br i1 %589, label %590, label %658

590:                                              ; preds = %578, %588
  %591 = load i32, ptr %77, align 4, !tbaa !324
  %592 = and i32 %591, 1
  %593 = icmp eq i32 %592, 0
  br i1 %593, label %658, label %594

594:                                              ; preds = %590
  %595 = getelementptr inbounds %struct.Lamp, ptr %7, i64 0, i32 36
  %596 = load i8, ptr %595, align 8, !tbaa !399
  %597 = zext i8 %596 to i16
  %598 = getelementptr inbounds %struct.LampRen, ptr %28, i64 0, i32 37
  store i16 %597, ptr %598, align 2, !tbaa !400
  call void @copy_m4_m4(ptr noundef nonnull %4, ptr noundef nonnull %32) #16
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %3) #16
  %599 = load ptr, ptr @MEM_callocN, align 8, !tbaa !77
  %600 = call ptr %599(i64 noundef 280, ptr noundef nonnull @.str.12) #16
  %601 = getelementptr inbounds %struct.LampRen, ptr %28, i64 0, i32 57
  store ptr %600, ptr %601, align 8, !tbaa !401
  %602 = icmp eq ptr %600, null
  br i1 %602, label %657, label %603

603:                                              ; preds = %594
  %604 = load float, ptr %115, align 4, !tbaa !44
  %605 = fptosi float %604 to i32
  %606 = getelementptr inbounds %struct.ShadBuf, ptr %600, i64 0, i32 13
  store i32 %605, ptr %606, align 4, !tbaa !80
  %607 = load float, ptr %118, align 4, !tbaa !44
  %608 = fptosi float %607 to i32
  %609 = getelementptr inbounds %struct.ShadBuf, ptr %600, i64 0, i32 13, i64 1
  store i32 %608, ptr %609, align 4, !tbaa !80
  %610 = load float, ptr %121, align 4, !tbaa !44
  %611 = fptosi float %610 to i32
  %612 = getelementptr inbounds %struct.ShadBuf, ptr %600, i64 0, i32 13, i64 2
  store i32 %611, ptr %612, align 4, !tbaa !80
  %613 = load i16, ptr %40, align 8, !tbaa !301
  %614 = sext i16 %613 to i32
  %615 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 45, i32 30
  %616 = load i16, ptr %615, align 2, !tbaa !402
  %617 = sext i16 %616 to i32
  %618 = mul nsw i32 %617, %614
  %619 = sdiv i32 %618, 100
  %620 = getelementptr inbounds %struct.ShadBuf, ptr %600, i64 0, i32 14
  store i32 %619, ptr %620, align 8, !tbaa !403
  %621 = icmp slt i32 %618, 51200
  br i1 %621, label %624, label %622

622:                                              ; preds = %603
  %623 = icmp sgt i32 %619, %614
  br i1 %623, label %624, label %626

624:                                              ; preds = %622, %603
  %625 = phi i32 [ 512, %603 ], [ %614, %622 ]
  store i32 %625, ptr %620, align 8, !tbaa !403
  br label %626

626:                                              ; preds = %624, %622
  %627 = load i32, ptr %620, align 8, !tbaa !403
  %628 = and i32 %627, -16
  store i32 %628, ptr %620, align 8, !tbaa !403
  %629 = load i16, ptr %43, align 2, !tbaa !303
  store i16 %629, ptr %600, align 8, !tbaa !405
  %630 = load float, ptr %57, align 4, !tbaa !311
  %631 = getelementptr inbounds %struct.ShadBuf, ptr %600, i64 0, i32 11
  store float %630, ptr %631, align 4, !tbaa !406
  %632 = load i16, ptr %60, align 8, !tbaa !313
  %633 = getelementptr inbounds %struct.ShadBuf, ptr %600, i64 0, i32 1
  store i16 %632, ptr %633, align 2, !tbaa !407
  call void @normalize_m4(ptr noundef nonnull %4) #16
  %634 = getelementptr inbounds %struct.ShadBuf, ptr %600, i64 0, i32 5
  %635 = call zeroext i8 @invert_m4_m4(ptr noundef nonnull %634, ptr noundef nonnull %4) #16
  %636 = call zeroext i8 @invert_m4_m4(ptr noundef nonnull %3, ptr noundef nonnull %31) #16
  %637 = getelementptr inbounds %struct.ShadBuf, ptr %600, i64 0, i32 4
  call void @mul_m4_m4m4(ptr noundef nonnull %637, ptr noundef nonnull %634, ptr noundef nonnull %3) #16
  %638 = load float, ptr %63, align 4, !tbaa !315
  %639 = getelementptr inbounds %struct.ShadBuf, ptr %600, i64 0, i32 8
  store float %638, ptr %639, align 8, !tbaa !408
  %640 = load float, ptr %66, align 8, !tbaa !317
  %641 = getelementptr inbounds %struct.ShadBuf, ptr %600, i64 0, i32 9
  store float %640, ptr %641, align 4, !tbaa !409
  %642 = load float, ptr %69, align 4, !tbaa !319
  %643 = fmul float %642, 0x3F947AE140000000
  %644 = fmul float %643, 0x41E0000000000000
  %645 = fptosi float %644 to i32
  %646 = getelementptr inbounds %struct.ShadBuf, ptr %600, i64 0, i32 15
  store i32 %645, ptr %646, align 4, !tbaa !410
  %647 = load i16, ptr %51, align 4, !tbaa !307
  %648 = and i16 %647, -2
  %649 = icmp eq i16 %648, 2
  br i1 %649, label %650, label %654

650:                                              ; preds = %626
  %651 = sitofp i32 %645 to float
  %652 = fmul float %651, 0x3FB99999A0000000
  %653 = fptosi float %652 to i32
  store i32 %653, ptr %646, align 4, !tbaa !410
  br label %654

654:                                              ; preds = %650, %626
  %655 = load float, ptr %72, align 8, !tbaa !321
  %656 = getelementptr inbounds %struct.ShadBuf, ptr %600, i64 0, i32 12
  store float %655, ptr %656, align 8, !tbaa !411
  br label %657

657:                                              ; preds = %594, %654
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %3) #16
  br label %658

658:                                              ; preds = %578, %588, %590, %657, %587
  %659 = getelementptr inbounds %struct.LampRen, ptr %28, i64 0, i32 57
  %660 = load ptr, ptr %659, align 8, !tbaa !401
  %661 = icmp eq ptr %660, null
  br i1 %661, label %662, label %666

662:                                              ; preds = %658
  %663 = load i32, ptr %77, align 4, !tbaa !324
  %664 = and i32 %663, 8192
  %665 = icmp eq i32 %664, 0
  br i1 %665, label %700, label %666

666:                                              ; preds = %662, %658
  %667 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 42
  store i32 0, ptr %667, align 8
  %668 = load ptr, ptr @MEM_mallocN, align 8, !tbaa !77
  %669 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 45, i32 14
  %670 = load i16, ptr %669, align 2, !tbaa !412
  %671 = sext i16 %670 to i64
  %672 = mul nsw i64 %671, 320
  %673 = call ptr %668(i64 noundef %672, ptr noundef nonnull @.str.11) #16
  %674 = getelementptr inbounds %struct.LampRen, ptr %28, i64 0, i32 67
  store ptr %673, ptr %674, align 8, !tbaa !107
  %675 = load i16, ptr %669, align 2, !tbaa !412
  %676 = sext i16 %675 to i32
  %677 = icmp sgt i16 %675, 0
  br i1 %677, label %678, label %700

678:                                              ; preds = %666
  %679 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 45, i32 54
  %680 = load i16, ptr %679, align 2, !tbaa !413
  %681 = sext i16 %680 to i32
  %682 = icmp sgt i16 %680, 0
  br label %683

683:                                              ; preds = %678, %696
  %684 = phi i32 [ 0, %678 ], [ %697, %696 ]
  %685 = phi ptr [ %673, %678 ], [ %698, %696 ]
  br i1 %682, label %686, label %696

686:                                              ; preds = %683, %686
  %687 = phi i32 [ %693, %686 ], [ 0, %683 ]
  %688 = phi ptr [ %694, %686 ], [ %685, %683 ]
  store i32 -1, ptr %688, align 4, !tbaa !414
  %689 = getelementptr inbounds %struct.LampShadowSubSample, ptr %688, i64 0, i32 1
  store float 1.000000e+00, ptr %689, align 4, !tbaa !44
  %690 = getelementptr inbounds %struct.LampShadowSubSample, ptr %688, i64 0, i32 1, i64 1
  store float 1.000000e+00, ptr %690, align 4, !tbaa !44
  %691 = getelementptr inbounds %struct.LampShadowSubSample, ptr %688, i64 0, i32 1, i64 2
  store float 1.000000e+00, ptr %691, align 4, !tbaa !44
  %692 = getelementptr inbounds %struct.LampShadowSubSample, ptr %688, i64 0, i32 1, i64 3
  store float 1.000000e+00, ptr %692, align 4, !tbaa !44
  %693 = add nuw nsw i32 %687, 1
  %694 = getelementptr inbounds %struct.LampShadowSubSample, ptr %688, i64 1
  %695 = icmp eq i32 %693, %681
  br i1 %695, label %696, label %686, !llvm.loop !416

696:                                              ; preds = %686, %683
  %697 = add nuw nsw i32 %684, 1
  %698 = getelementptr inbounds %struct.LampShadowSample, ptr %685, i64 1
  %699 = icmp eq i32 %697, %676
  br i1 %699, label %700, label %683, !llvm.loop !417

700:                                              ; preds = %696, %666, %573, %662, %14, %2
  %701 = phi ptr [ null, %2 ], [ null, %14 ], [ %24, %662 ], [ %24, %573 ], [ %24, %666 ], [ %24, %696 ]
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %5) #16
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %4) #16
  ret ptr %701
}

declare double @PIL_check_seconds_timer() local_unnamed_addr #6

declare void @BLI_addtail(ptr noundef, ptr noundef) local_unnamed_addr #6

declare void @init_jitter_plane(ptr noundef) local_unnamed_addr #6

declare void @InitSunSky(ptr noundef, float noundef, ptr noundef, float noundef, float noundef, float noundef, float noundef, float noundef, float noundef, i16 noundef signext, float noundef, float noundef) local_unnamed_addr #6

declare void @InitAtmosphere(ptr noundef, float noundef, float noundef, float noundef, float noundef, float noundef, float noundef) local_unnamed_addr #6

; Function Attrs: mustprogress nofree nounwind willreturn memory(write)
declare float @cosf(float noundef) local_unnamed_addr #2

declare ptr @curvemapping_copy(ptr noundef) local_unnamed_addr #6

declare void @curvemapping_initialize(ptr noundef) local_unnamed_addr #6

; Function Attrs: mustprogress nofree nounwind willreturn memory(write)
declare float @sinf(float noundef) local_unnamed_addr #2

declare void @mul_m3_v3(ptr noundef, ptr noundef) local_unnamed_addr #6

; Function Attrs: mustprogress nofree nounwind willreturn memory(write)
declare float @acosf(float noundef) local_unnamed_addr #2

declare void @normalize_m4(ptr noundef) local_unnamed_addr #6

declare void @psys_render_set(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #6

declare ptr @RE_addRenderObject(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: nounwind uwtable
define internal fastcc void @init_render_object_data(ptr noundef %0, ptr noundef %1, i32 noundef %2) unnamed_addr #4 {
  %4 = alloca [3 x float], align 4
  %5 = alloca [3 x float], align 4
  %6 = alloca [3 x float], align 4
  %7 = alloca [3 x float], align 4
  %8 = alloca [3 x float], align 4
  %9 = alloca [4 x [4 x float]], align 16
  %10 = alloca [3 x [3 x float]], align 16
  %11 = alloca %struct.ListBase, align 8
  %12 = alloca [3 x float], align 4
  %13 = alloca [3 x float], align 4
  %14 = alloca ptr, align 8
  %15 = alloca [3 x float], align 4
  %16 = alloca [4 x [4 x float]], align 16
  %17 = alloca [3 x [3 x float]], align 16
  %18 = alloca [3 x [3 x float]], align 16
  %19 = alloca [4 x [4 x float]], align 16
  %20 = alloca [4 x i32], align 16
  %21 = alloca ptr, align 8
  %22 = alloca %struct.ListBase, align 8
  %23 = alloca [4 x [4 x float]], align 16
  %24 = alloca ptr, align 8
  %25 = alloca ptr, align 8
  %26 = alloca %struct.ListBase, align 8
  %27 = alloca [3 x float], align 4
  %28 = alloca [4 x [4 x float]], align 16
  %29 = alloca [4 x [4 x float]], align 16
  %30 = alloca i32, align 4
  %31 = alloca [3 x float], align 4
  %32 = alloca i32, align 4
  %33 = alloca i32, align 4
  %34 = alloca i32, align 4
  %35 = alloca i32, align 4
  %36 = alloca %struct.ParticleKey, align 4
  %37 = alloca %struct.ParticleBillboardData, align 8
  %38 = alloca %struct.ParticleSimulationData, align 8
  %39 = alloca %struct.ParticleStrandData, align 8
  %40 = alloca [3 x float], align 4
  %41 = alloca [3 x float], align 4
  %42 = alloca [3 x float], align 4
  %43 = alloca [4 x [4 x float]], align 16
  %44 = alloca [3 x [3 x float]], align 16
  %45 = alloca [3 x float], align 4
  %46 = alloca [3 x float], align 4
  %47 = alloca [4 x [4 x float]], align 16
  %48 = alloca float, align 4
  %49 = alloca float, align 4
  %50 = alloca float, align 4
  %51 = alloca [2 x float], align 4
  %52 = alloca [3 x float], align 4
  %53 = getelementptr inbounds %struct.ObjectRen, ptr %1, i64 0, i32 2
  %54 = load ptr, ptr %53, align 8, !tbaa !184
  %55 = getelementptr inbounds %struct.ObjectRen, ptr %1, i64 0, i32 6
  %56 = load i32, ptr %55, align 4, !tbaa !186
  %57 = icmp eq i32 %56, 0
  br i1 %57, label %1326, label %58

58:                                               ; preds = %3
  %59 = getelementptr inbounds %struct.ObjectRen, ptr %1, i64 0, i32 1
  %60 = load ptr, ptr %59, align 8, !tbaa !418
  %61 = icmp eq ptr %60, null
  br i1 %61, label %71, label %62

62:                                               ; preds = %58
  %63 = getelementptr inbounds %struct.ObjectRen, ptr %60, i64 0, i32 2
  %64 = load ptr, ptr %63, align 8, !tbaa !184
  %65 = icmp eq ptr %64, %54
  br i1 %65, label %66, label %71

66:                                               ; preds = %62
  %67 = getelementptr inbounds %struct.ObjectRen, ptr %60, i64 0, i32 7
  %68 = load i32, ptr %67, align 8, !tbaa !187
  %69 = and i32 %68, 1
  %70 = icmp eq i32 %69, 0
  br i1 %70, label %71, label %92

71:                                               ; preds = %66, %62, %58
  %72 = getelementptr inbounds %struct.Object, ptr %54, i64 0, i32 3
  %73 = load i16, ptr %72, align 8, !tbaa !167
  %74 = icmp eq i16 %73, 1
  br i1 %74, label %75, label %92

75:                                               ; preds = %71
  %76 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 45, i32 46
  %77 = load i32, ptr %76, align 4, !tbaa !105
  %78 = and i32 %77, 524288
  %79 = icmp eq i32 %78, 0
  %80 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 44
  %81 = load ptr, ptr %80, align 8, !tbaa !64
  %82 = load i64, ptr @CD_MASK_BAREMESH, align 8, !tbaa !282
  %83 = or i64 %82, 96
  br i1 %79, label %86, label %84

84:                                               ; preds = %75
  %85 = tail call ptr @mesh_create_derived_view(ptr noundef %81, ptr noundef %54, i64 noundef %83) #16
  br label %88

86:                                               ; preds = %75
  %87 = tail call ptr @mesh_create_derived_render(ptr noundef %81, ptr noundef %54, i64 noundef %83) #16
  br label %88

88:                                               ; preds = %86, %84
  %89 = phi ptr [ %85, %84 ], [ %87, %86 ]
  %90 = getelementptr inbounds %struct.DerivedMesh, ptr %89, i64 0, i32 95
  %91 = load ptr, ptr %90, align 8, !tbaa !283
  tail call void %91(ptr noundef %89) #16
  br label %92

92:                                               ; preds = %88, %71, %66
  %93 = getelementptr inbounds %struct.Object, ptr %54, i64 0, i32 109
  %94 = load i32, ptr %55, align 4, !tbaa !186
  %95 = tail call i32 @llvm.smax.i32(i32 %94, i32 1)
  br label %96

96:                                               ; preds = %96, %92
  %97 = phi ptr [ %93, %92 ], [ %99, %96 ]
  %98 = phi i32 [ 0, %92 ], [ %100, %96 ]
  %99 = load ptr, ptr %97, align 8, !tbaa !77
  %100 = add nuw nsw i32 %98, 1
  %101 = icmp eq i32 %100, %95
  br i1 %101, label %102, label %96, !llvm.loop !419

102:                                              ; preds = %96
  %103 = load ptr, ptr %53, align 8, !tbaa !184
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %36) #16
  call void @llvm.lifetime.start.p0(i64 96, ptr nonnull %37) #16
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %38) #16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %38, i8 0, i64 48, i1 false)
  call void @llvm.lifetime.start.p0(i64 72, ptr nonnull %39) #16
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %40) #16
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %41) #16
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %42) #16
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %43) #16
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %44) #16
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %45) #16
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %46) #16
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %47) #16
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %48) #16
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %49) #16
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %50) #16
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %51) #16
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %52) #16
  %104 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 44
  %105 = load ptr, ptr %104, align 8, !tbaa !64
  %106 = tail call float @BKE_scene_frame_get(ptr noundef %105) #16
  %107 = icmp eq ptr %99, null
  br i1 %107, label %1325, label %108

108:                                              ; preds = %102
  %109 = getelementptr inbounds %struct.ParticleSystem, ptr %99, i64 0, i32 2
  %110 = load ptr, ptr %109, align 8, !tbaa !177
  %111 = getelementptr inbounds %struct.ParticleSystem, ptr %99, i64 0, i32 3
  %112 = load ptr, ptr %111, align 8, !tbaa !420
  %113 = icmp eq ptr %110, null
  %114 = icmp eq ptr %112, null
  %115 = select i1 %113, i1 true, i1 %114
  br i1 %115, label %1325, label %116

116:                                              ; preds = %108
  %117 = tail call i32 @psys_check_enabled(ptr noundef %103, ptr noundef %99) #16
  %118 = icmp eq i32 %117, 0
  br i1 %118, label %1325, label %119

119:                                              ; preds = %116
  %120 = getelementptr inbounds %struct.ParticleSettings, ptr %110, i64 0, i32 21
  %121 = load i16, ptr %120, align 8, !tbaa !179
  switch i16 %121, label %122 [
    i16 7, label %1325
    i16 8, label %1325
    i16 0, label %1325
  ]

122:                                              ; preds = %119
  %123 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 45, i32 46
  %124 = load i32, ptr %123, align 4, !tbaa !105
  %125 = and i32 %124, 524288
  %126 = icmp eq i32 %125, 0
  br i1 %126, label %132, label %127

127:                                              ; preds = %122
  %128 = getelementptr inbounds %struct.Object, ptr %103, i64 0, i32 27
  %129 = load i32, ptr %128, align 8, !tbaa !421
  %130 = and i32 %129, 32
  %131 = icmp eq i32 %130, 0
  br i1 %131, label %132, label %1325

132:                                              ; preds = %127, %122
  %133 = tail call ptr @psys_get_modifier(ptr noundef %103, ptr noundef %99) #16
  %134 = getelementptr inbounds %struct.ModifierData, ptr %133, i64 0, i32 3
  %135 = load i32, ptr %134, align 4, !tbaa !422
  %136 = and i32 %135, 2
  %137 = icmp eq i32 %136, 0
  br i1 %137, label %1325, label %138

138:                                              ; preds = %132
  %139 = load ptr, ptr %104, align 8, !tbaa !64
  store ptr %139, ptr %38, align 8, !tbaa !423
  %140 = getelementptr inbounds %struct.ParticleSimulationData, ptr %38, i64 0, i32 1
  store ptr %103, ptr %140, align 8, !tbaa !425
  %141 = getelementptr inbounds %struct.ParticleSimulationData, ptr %38, i64 0, i32 2
  store ptr %99, ptr %141, align 8, !tbaa !426
  %142 = getelementptr inbounds %struct.ParticleSimulationData, ptr %38, i64 0, i32 3
  store ptr %133, ptr %142, align 8, !tbaa !427
  %143 = getelementptr inbounds %struct.ParticleSettings, ptr %110, i64 0, i32 11
  %144 = load i16, ptr %143, align 8, !tbaa !428
  %145 = icmp eq i16 %144, 2
  br i1 %145, label %146, label %147

146:                                              ; preds = %138
  call void @psys_count_keyed_targets(ptr noundef nonnull %38) #16
  br label %147

147:                                              ; preds = %146, %138
  %148 = getelementptr inbounds %struct.ParticleSystem, ptr %99, i64 0, i32 28
  %149 = load i32, ptr %148, align 8, !tbaa !429
  %150 = getelementptr inbounds %struct.ParticleSettings, ptr %110, i64 0, i32 7
  %151 = load i16, ptr %150, align 8, !tbaa !430
  %152 = icmp eq i16 %151, 2
  br i1 %152, label %153, label %158

153:                                              ; preds = %147
  %154 = getelementptr inbounds %struct.ParticleSystem, ptr %99, i64 0, i32 8
  %155 = load ptr, ptr %154, align 8, !tbaa !431
  %156 = icmp eq ptr %155, null
  %157 = select i1 %156, i32 0, i32 %149
  br label %158

158:                                              ; preds = %153, %147
  %159 = phi i32 [ %149, %147 ], [ %157, %153 ]
  %160 = load i32, ptr %123, align 4, !tbaa !105
  %161 = and i32 %160, 524288
  %162 = icmp eq i32 %161, 0
  br i1 %162, label %172, label %163

163:                                              ; preds = %158
  %164 = sitofp i32 %159 to float
  %165 = getelementptr inbounds %struct.ParticleSettings, ptr %110, i64 0, i32 30
  %166 = load i16, ptr %165, align 2, !tbaa !432
  %167 = sitofp i16 %166 to float
  %168 = fmul float %164, %167
  %169 = fdiv float %168, 1.000000e+02
  %170 = fptosi float %169 to i32
  %171 = getelementptr inbounds %struct.ParticleSettings, ptr %110, i64 0, i32 24
  br label %174

172:                                              ; preds = %158
  %173 = getelementptr inbounds %struct.ParticleSettings, ptr %110, i64 0, i32 25
  br label %174

174:                                              ; preds = %172, %163
  %175 = phi i32 [ %170, %163 ], [ %159, %172 ]
  %176 = phi ptr [ %171, %163 ], [ %173, %172 ]
  %177 = load i16, ptr %176, align 2, !tbaa !79
  %178 = getelementptr inbounds %struct.ParticleSystem, ptr %99, i64 0, i32 25
  %179 = load i32, ptr %178, align 4, !tbaa !278
  %180 = or i32 %179, 64
  store i32 %180, ptr %178, align 4, !tbaa !278
  %181 = getelementptr inbounds %struct.ParticleSystem, ptr %99, i64 0, i32 23
  %182 = load i32, ptr %181, align 4, !tbaa !433
  %183 = call ptr @BLI_rng_new(i32 noundef %182) #16
  %184 = getelementptr inbounds %struct.ParticleSystem, ptr %99, i64 0, i32 26
  %185 = load i32, ptr %184, align 8, !tbaa !434
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %39, i8 0, i64 72, i1 false)
  %186 = getelementptr inbounds %struct.ParticleStrandData, ptr %39, i64 0, i32 13
  store i32 -1, ptr %186, align 4, !tbaa !435
  %187 = getelementptr inbounds %struct.ParticleSettings, ptr %110, i64 0, i32 31
  %188 = load i16, ptr %187, align 4, !tbaa !437
  %189 = call fastcc ptr @give_render_material(ptr noundef %0, ptr noundef %103, i16 noundef signext %188)
  %190 = getelementptr inbounds %struct.Material, ptr %189, i64 0, i32 59
  %191 = load float, ptr %190, align 4, !tbaa !438
  %192 = getelementptr inbounds %struct.Material, ptr %189, i64 0, i32 39
  %193 = load i8, ptr %192, align 2, !tbaa !439
  %194 = zext i8 %193 to i32
  %195 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 4
  %196 = load i16, ptr %195, align 8, !tbaa !267
  %197 = or i16 %196, 2
  store i16 %197, ptr %195, align 8, !tbaa !267
  %198 = getelementptr inbounds %struct.ParticleSystemModifierData, ptr %133, i64 0, i32 2
  %199 = load ptr, ptr %198, align 8, !tbaa !440
  %200 = getelementptr inbounds %struct.DerivedMesh, ptr %199, i64 0, i32 2
  call void @RE_set_customdata_names(ptr noundef %1, ptr noundef nonnull %200) #16
  %201 = load ptr, ptr %198, align 8, !tbaa !440
  %202 = getelementptr inbounds %struct.DerivedMesh, ptr %201, i64 0, i32 2
  %203 = call i32 @CustomData_number_of_layers(ptr noundef nonnull %202, i32 noundef 5) #16
  %204 = getelementptr inbounds %struct.ParticleStrandData, ptr %39, i64 0, i32 8
  store i32 %203, ptr %204, align 8, !tbaa !441
  %205 = load ptr, ptr %198, align 8, !tbaa !440
  %206 = getelementptr inbounds %struct.DerivedMesh, ptr %205, i64 0, i32 2
  %207 = call i32 @CustomData_number_of_layers(ptr noundef nonnull %206, i32 noundef 6) #16
  %208 = getelementptr inbounds %struct.ParticleStrandData, ptr %39, i64 0, i32 9
  store i32 %207, ptr %208, align 4, !tbaa !442
  %209 = getelementptr inbounds %struct.Material, ptr %189, i64 0, i32 90
  %210 = load i16, ptr %209, align 4, !tbaa !270
  %211 = and i16 %210, 16
  %212 = icmp ne i16 %211, 0
  %213 = icmp ne i32 %203, 0
  %214 = select i1 %212, i1 %213, i1 false
  br i1 %214, label %215, label %233

215:                                              ; preds = %174
  %216 = load ptr, ptr @MEM_callocN, align 8, !tbaa !77
  %217 = shl nsw i32 %203, 1
  %218 = sext i32 %217 to i64
  %219 = shl nsw i64 %218, 2
  %220 = call ptr %216(i64 noundef %219, ptr noundef nonnull @.str.13) #16
  %221 = getelementptr inbounds %struct.ParticleStrandData, ptr %39, i64 0, i32 2
  store ptr %220, ptr %221, align 8, !tbaa !443
  %222 = getelementptr inbounds %struct.Material, ptr %189, i64 0, i32 69
  %223 = load i8, ptr %222, align 4, !tbaa !78
  %224 = icmp eq i8 %223, 0
  br i1 %224, label %235, label %225

225:                                              ; preds = %215
  %226 = load ptr, ptr %198, align 8, !tbaa !440
  %227 = getelementptr inbounds %struct.DerivedMesh, ptr %226, i64 0, i32 2
  %228 = call i32 @CustomData_get_named_layer_index(ptr noundef nonnull %227, i32 noundef 5, ptr noundef nonnull %222) #16
  store i32 %228, ptr %186, align 4, !tbaa !435
  %229 = load ptr, ptr %198, align 8, !tbaa !440
  %230 = getelementptr inbounds %struct.DerivedMesh, ptr %229, i64 0, i32 2
  %231 = call i32 @CustomData_get_layer_index(ptr noundef nonnull %230, i32 noundef 5) #16
  %232 = sub nsw i32 %228, %231
  store i32 %232, ptr %186, align 4, !tbaa !435
  br label %235

233:                                              ; preds = %174
  %234 = getelementptr inbounds %struct.ParticleStrandData, ptr %39, i64 0, i32 2
  store ptr null, ptr %234, align 8, !tbaa !443
  br label %235

235:                                              ; preds = %233, %225, %215
  %236 = icmp eq i32 %207, 0
  br i1 %236, label %242, label %237

237:                                              ; preds = %235
  %238 = load ptr, ptr @MEM_callocN, align 8, !tbaa !77
  %239 = sext i32 %207 to i64
  %240 = shl nsw i64 %239, 2
  %241 = call ptr %238(i64 noundef %240, ptr noundef nonnull @.str.14) #16
  store ptr %241, ptr %39, align 8, !tbaa !444
  br label %242

242:                                              ; preds = %237, %235
  %243 = load i16, ptr %120, align 8, !tbaa !179
  %244 = icmp eq i16 %243, 9
  br i1 %244, label %245, label %303

245:                                              ; preds = %242
  %246 = load ptr, ptr %198, align 8, !tbaa !440
  %247 = getelementptr inbounds %struct.DerivedMesh, ptr %246, i64 0, i32 2
  %248 = call i32 @CustomData_get_layer_index(ptr noundef nonnull %247, i32 noundef 5) #16
  %249 = load ptr, ptr %198, align 8, !tbaa !440
  %250 = getelementptr inbounds %struct.DerivedMesh, ptr %249, i64 0, i32 2
  %251 = getelementptr inbounds %struct.ParticleSystem, ptr %99, i64 0, i32 35
  %252 = call i32 @CustomData_get_named_layer_index(ptr noundef nonnull %250, i32 noundef 5, ptr noundef nonnull %251) #16
  %253 = getelementptr inbounds %struct.ParticleBillboardData, ptr %37, i64 0, i32 8
  store i32 %252, ptr %253, align 4, !tbaa !80
  %254 = icmp slt i32 %252, 0
  br i1 %254, label %255, label %259

255:                                              ; preds = %245
  %256 = load ptr, ptr %198, align 8, !tbaa !440
  %257 = getelementptr inbounds %struct.DerivedMesh, ptr %256, i64 0, i32 2
  %258 = call i32 @CustomData_get_active_layer_index(ptr noundef nonnull %257, i32 noundef 5) #16
  store i32 %258, ptr %253, align 4, !tbaa !80
  br label %259

259:                                              ; preds = %255, %245
  %260 = load ptr, ptr %198, align 8, !tbaa !440
  %261 = getelementptr inbounds %struct.DerivedMesh, ptr %260, i64 0, i32 2
  %262 = getelementptr inbounds %struct.ParticleSystem, ptr %99, i64 0, i32 35, i64 1
  %263 = call i32 @CustomData_get_named_layer_index(ptr noundef nonnull %261, i32 noundef 5, ptr noundef nonnull %262) #16
  %264 = getelementptr inbounds %struct.ParticleBillboardData, ptr %37, i64 0, i32 8, i64 1
  store i32 %263, ptr %264, align 8, !tbaa !80
  %265 = load ptr, ptr %198, align 8, !tbaa !440
  %266 = getelementptr inbounds %struct.DerivedMesh, ptr %265, i64 0, i32 2
  %267 = getelementptr inbounds %struct.ParticleSystem, ptr %99, i64 0, i32 35, i64 2
  %268 = call i32 @CustomData_get_named_layer_index(ptr noundef nonnull %266, i32 noundef 5, ptr noundef nonnull %267) #16
  %269 = getelementptr inbounds %struct.ParticleBillboardData, ptr %37, i64 0, i32 8, i64 2
  store i32 %268, ptr %269, align 4, !tbaa !80
  %270 = icmp sgt i32 %248, -1
  br i1 %270, label %271, label %277

271:                                              ; preds = %259
  %272 = load i32, ptr %253, align 4, !tbaa !80
  %273 = sub nsw i32 %272, %248
  store i32 %273, ptr %253, align 4, !tbaa !80
  %274 = load i32, ptr %264, align 8, !tbaa !80
  %275 = sub nsw i32 %274, %248
  store i32 %275, ptr %264, align 8, !tbaa !80
  %276 = sub nsw i32 %268, %248
  store i32 %276, ptr %269, align 4, !tbaa !80
  br label %277

277:                                              ; preds = %271, %259
  %278 = getelementptr inbounds %struct.ParticleSettings, ptr %110, i64 0, i32 37
  %279 = load i16, ptr %278, align 8, !tbaa !445
  %280 = getelementptr inbounds %struct.ParticleBillboardData, ptr %37, i64 0, i32 13
  store i16 %279, ptr %280, align 8, !tbaa !446
  %281 = getelementptr inbounds %struct.ParticleSettings, ptr %110, i64 0, i32 39
  %282 = load i16, ptr %281, align 4, !tbaa !448
  %283 = getelementptr inbounds %struct.ParticleBillboardData, ptr %37, i64 0, i32 15
  store i16 %282, ptr %283, align 4, !tbaa !449
  %284 = getelementptr inbounds %struct.ParticleSettings, ptr %110, i64 0, i32 15
  %285 = load i32, ptr %284, align 8, !tbaa !273
  %286 = and i32 %285, 128
  %287 = getelementptr inbounds %struct.ParticleBillboardData, ptr %37, i64 0, i32 9
  store i32 %286, ptr %287, align 8, !tbaa !450
  %288 = getelementptr inbounds %struct.ParticleSettings, ptr %110, i64 0, i32 126
  %289 = load ptr, ptr %288, align 8, !tbaa !451
  %290 = icmp eq ptr %289, null
  br i1 %290, label %291, label %293

291:                                              ; preds = %277
  %292 = call ptr @RE_GetCamera(ptr noundef %0) #16
  br label %293

293:                                              ; preds = %291, %277
  %294 = phi ptr [ %292, %291 ], [ %289, %277 ]
  store ptr %294, ptr %37, align 8, !tbaa !452
  %295 = getelementptr inbounds %struct.ParticleSettings, ptr %110, i64 0, i32 40
  %296 = load i16, ptr %295, align 2, !tbaa !453
  %297 = getelementptr inbounds %struct.ParticleBillboardData, ptr %37, i64 0, i32 16
  store i16 %296, ptr %297, align 2, !tbaa !454
  %298 = add nsw i32 %185, %175
  %299 = getelementptr inbounds %struct.ParticleBillboardData, ptr %37, i64 0, i32 11
  store i32 %298, ptr %299, align 8, !tbaa !455
  %300 = getelementptr inbounds %struct.ParticleSettings, ptr %110, i64 0, i32 38
  %301 = load i16, ptr %300, align 2, !tbaa !456
  %302 = getelementptr inbounds %struct.ParticleBillboardData, ptr %37, i64 0, i32 14
  store i16 %301, ptr %302, align 2, !tbaa !457
  br label %303

303:                                              ; preds = %293, %242
  %304 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 32
  %305 = getelementptr inbounds %struct.Object, ptr %103, i64 0, i32 47
  call void @mul_m4_m4m4(ptr noundef nonnull %43, ptr noundef nonnull %304, ptr noundef nonnull %305) #16
  %306 = getelementptr inbounds %struct.Object, ptr %103, i64 0, i32 50
  %307 = call zeroext i8 @invert_m4_m4(ptr noundef nonnull %306, ptr noundef nonnull %43) #16
  call void @copy_m3_m4(ptr noundef nonnull %44, ptr noundef nonnull %306) #16
  call void @transpose_m3(ptr noundef nonnull %44) #16
  %308 = load i32, ptr %178, align 4, !tbaa !278
  %309 = and i32 %308, 128
  %310 = icmp eq i32 %309, 0
  br i1 %310, label %313, label %311

311:                                              ; preds = %303
  %312 = getelementptr inbounds %struct.ParticleSystem, ptr %99, i64 0, i32 19
  call void @mul_m4_m4m4(ptr noundef nonnull %47, ptr noundef nonnull %305, ptr noundef nonnull %312) #16
  br label %313

313:                                              ; preds = %311, %303
  %314 = load i16, ptr %120, align 8, !tbaa !179
  %315 = icmp eq i16 %314, 6
  br i1 %315, label %316, label %502

316:                                              ; preds = %313
  %317 = getelementptr inbounds %struct.ParticleSystem, ptr %99, i64 0, i32 7
  %318 = load ptr, ptr %317, align 8, !tbaa !458
  %319 = icmp eq ptr %318, null
  br i1 %319, label %502, label %320

320:                                              ; preds = %316
  %321 = sext i16 %177 to i32
  %322 = call double @ldexp(double 1.000000e+00, i32 %321) #16
  %323 = fptosi double %322 to i32
  %324 = icmp eq i32 %323, 0
  br i1 %324, label %350, label %325

325:                                              ; preds = %320
  %326 = getelementptr inbounds %struct.Material, ptr %189, i64 0, i32 2
  %327 = load i16, ptr %326, align 8, !tbaa !175
  switch i16 %327, label %328 [
    i16 1, label %350
    i16 3, label %350
  ]

328:                                              ; preds = %325
  %329 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 73
  %330 = load ptr, ptr %329, align 8, !tbaa !111
  %331 = icmp eq ptr %330, null
  br i1 %331, label %334, label %332

332:                                              ; preds = %328
  %333 = call ptr @BLI_ghash_lookup(ptr noundef nonnull %330, ptr noundef %99) #16
  br label %334

334:                                              ; preds = %332, %328
  %335 = phi ptr [ %333, %332 ], [ null, %328 ]
  %336 = getelementptr inbounds %struct.ParticleStrandData, ptr %39, i64 0, i32 1
  store ptr %335, ptr %336, align 8, !tbaa !459
  %337 = icmp eq ptr %335, null
  br i1 %337, label %338, label %350

338:                                              ; preds = %334
  %339 = load ptr, ptr @MEM_mallocN, align 8, !tbaa !77
  %340 = add nsw i32 %185, %175
  %341 = sext i32 %340 to i64
  %342 = mul nsw i64 %341, 12
  %343 = call ptr %339(i64 noundef %342, ptr noundef nonnull @.str.15) #16
  store ptr %343, ptr %336, align 8, !tbaa !459
  %344 = load ptr, ptr %329, align 8, !tbaa !111
  %345 = icmp eq ptr %344, null
  br i1 %345, label %346, label %348

346:                                              ; preds = %338
  %347 = call ptr @BLI_ghash_ptr_new(ptr noundef nonnull @.str.18) #16
  store ptr %347, ptr %329, align 8, !tbaa !111
  br label %348

348:                                              ; preds = %346, %338
  %349 = load ptr, ptr %329, align 8, !tbaa !111
  call void @BLI_ghash_insert(ptr noundef %349, ptr noundef %99, ptr noundef %343) #16
  br label %350

350:                                              ; preds = %348, %334, %325, %325, %320
  %351 = getelementptr inbounds %struct.ParticleSettings, ptr %110, i64 0, i32 15
  %352 = load i32, ptr %351, align 8, !tbaa !273
  %353 = and i32 %352, 2048
  %354 = icmp eq i32 %353, 0
  br i1 %354, label %367, label %355

355:                                              ; preds = %350
  %356 = getelementptr inbounds %struct.ParticleStrandData, ptr %39, i64 0, i32 12
  store i32 1, ptr %356, align 8, !tbaa !460
  %357 = getelementptr inbounds %struct.ParticleSettings, ptr %110, i64 0, i32 29
  %358 = load i16, ptr %357, align 8, !tbaa !461
  %359 = sitofp i16 %358 to float
  %360 = getelementptr inbounds %struct.ParticleStrandData, ptr %39, i64 0, i32 6
  store float %359, ptr %360, align 8, !tbaa !462
  %361 = getelementptr inbounds %struct.ParticleSettings, ptr %110, i64 0, i32 28
  %362 = load i16, ptr %361, align 2, !tbaa !463
  %363 = sitofp i16 %362 to float
  %364 = fmul float %363, 0x3F91DF46A0000000
  %365 = call float @cosf(float noundef %364) #16
  %366 = getelementptr inbounds %struct.ParticleStrandData, ptr %39, i64 0, i32 5
  store float %365, ptr %366, align 4, !tbaa !464
  br label %367

367:                                              ; preds = %355, %350
  %368 = load i32, ptr %351, align 8, !tbaa !273
  %369 = and i32 %368, 32768
  %370 = icmp eq i32 %369, 0
  br i1 %370, label %502, label %371

371:                                              ; preds = %367
  %372 = add nsw i32 %185, %175
  %373 = add nsw i32 %323, 1
  %374 = mul nsw i32 %373, %372
  %375 = call ptr @RE_addStrandBuffer(ptr noundef %1, i32 noundef %374) #16
  %376 = getelementptr inbounds %struct.StrandBuffer, ptr %375, i64 0, i32 7
  store ptr %189, ptr %376, align 8, !tbaa !465
  %377 = getelementptr inbounds %struct.Object, ptr %103, i64 0, i32 52
  %378 = load i32, ptr %377, align 8, !tbaa !189
  %379 = getelementptr inbounds %struct.StrandBuffer, ptr %375, i64 0, i32 9
  store i32 %378, ptr %379, align 8, !tbaa !466
  %380 = getelementptr inbounds %struct.StrandBuffer, ptr %375, i64 0, i32 17
  %381 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 35
  call void @copy_m4_m4(ptr noundef nonnull %380, ptr noundef nonnull %381) #16
  %382 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 13
  %383 = load i32, ptr %382, align 4, !tbaa !223
  %384 = getelementptr inbounds %struct.StrandBuffer, ptr %375, i64 0, i32 18
  store i32 %383, ptr %384, align 8, !tbaa !467
  %385 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 14
  %386 = load i32, ptr %385, align 8, !tbaa !224
  %387 = getelementptr inbounds %struct.StrandBuffer, ptr %375, i64 0, i32 19
  store i32 %386, ptr %387, align 4, !tbaa !468
  %388 = getelementptr inbounds %struct.StrandBuffer, ptr %375, i64 0, i32 12
  store i32 2, ptr %388, align 4, !tbaa !469
  %389 = getelementptr inbounds %struct.ParticleSettings, ptr %110, i64 0, i32 28
  %390 = load i16, ptr %389, align 2, !tbaa !463
  %391 = sitofp i16 %390 to float
  %392 = fmul float %391, 0x3F91DF46A0000000
  %393 = call float @cosf(float noundef %392) #16
  %394 = getelementptr inbounds %struct.StrandBuffer, ptr %375, i64 0, i32 13
  store float %393, ptr %394, align 8, !tbaa !470
  %395 = load i32, ptr %186, align 4, !tbaa !435
  %396 = getelementptr inbounds %struct.StrandBuffer, ptr %375, i64 0, i32 10
  store i32 %395, ptr %396, align 4, !tbaa !471
  %397 = getelementptr inbounds %struct.Material, ptr %189, i64 0, i32 67
  %398 = load float, ptr %397, align 4, !tbaa !472
  %399 = getelementptr inbounds %struct.StrandBuffer, ptr %375, i64 0, i32 14
  store float %398, ptr %399, align 4, !tbaa !473
  %400 = getelementptr inbounds %struct.Material, ptr %189, i64 0, i32 68
  %401 = load float, ptr %400, align 8, !tbaa !474
  %402 = fcmp oeq float %401, 0.000000e+00
  br i1 %402, label %411, label %403

403:                                              ; preds = %371
  %404 = fcmp ult float %401, 1.000000e+00
  br i1 %404, label %407, label %405

405:                                              ; preds = %403
  %406 = fsub float 2.000000e+00, %401
  br label %411

407:                                              ; preds = %403
  %408 = fcmp ogt float %401, 0x3EE4F8B580000000
  %409 = select i1 %408, float %401, float 0x3EE4F8B580000000
  %410 = fdiv float 1.000000e+00, %409
  br label %411

411:                                              ; preds = %371, %407, %405
  %412 = phi float [ %410, %407 ], [ %406, %405 ], [ -1.000000e+00, %371 ]
  %413 = getelementptr inbounds %struct.StrandBuffer, ptr %375, i64 0, i32 15
  store float %412, ptr %413, align 8, !tbaa !475
  %414 = getelementptr inbounds %struct.ParticleSettings, ptr %110, i64 0, i32 5
  %415 = load i32, ptr %414, align 8, !tbaa !476
  %416 = and i32 %415, 1024
  %417 = icmp eq i32 %416, 0
  br i1 %417, label %422, label %418

418:                                              ; preds = %411
  %419 = getelementptr inbounds %struct.StrandBuffer, ptr %375, i64 0, i32 11
  %420 = load i32, ptr %419, align 8, !tbaa !477
  %421 = or i32 %420, 1
  store i32 %421, ptr %419, align 8, !tbaa !477
  br label %422

422:                                              ; preds = %418, %411
  %423 = getelementptr inbounds %struct.Material, ptr %189, i64 0, i32 51
  %424 = load i32, ptr %423, align 4, !tbaa !135
  %425 = and i32 %424, 1073741824
  %426 = icmp eq i32 %425, 0
  br i1 %426, label %431, label %427

427:                                              ; preds = %422
  %428 = getelementptr inbounds %struct.StrandBuffer, ptr %375, i64 0, i32 11
  %429 = load i32, ptr %428, align 8, !tbaa !477
  %430 = or i32 %429, 2
  store i32 %430, ptr %428, align 8, !tbaa !477
  br label %431

431:                                              ; preds = %427, %422
  %432 = getelementptr inbounds %struct.StrandBuffer, ptr %375, i64 0, i32 2
  %433 = load ptr, ptr %432, align 8, !tbaa !478
  %434 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 45, i32 47
  %435 = load i32, ptr %434, align 8, !tbaa !90
  %436 = and i32 %435, 1048576
  %437 = icmp eq i32 %436, 0
  br i1 %437, label %438, label %452

438:                                              ; preds = %431
  %439 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 46, i32 23
  %440 = load i16, ptr %439, align 2, !tbaa !92
  %441 = and i16 %440, 208
  %442 = icmp eq i16 %441, 0
  br i1 %442, label %452, label %443

443:                                              ; preds = %438
  %444 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 46, i32 64
  %445 = load i16, ptr %444, align 2, !tbaa !91
  %446 = icmp eq i16 %445, 1
  br i1 %446, label %447, label %452

447:                                              ; preds = %443
  %448 = getelementptr inbounds %struct.Material, ptr %189, i64 0, i32 16
  %449 = load float, ptr %448, align 4, !tbaa !479
  %450 = fcmp une float %449, 0.000000e+00
  br i1 %450, label %451, label %452

451:                                              ; preds = %447
  br label %452

452:                                              ; preds = %451, %447, %443, %438, %431
  %453 = phi i8 [ 1, %451 ], [ 0, %447 ], [ 0, %443 ], [ 0, %438 ], [ 1, %431 ]
  %454 = load ptr, ptr %198, align 8, !tbaa !440
  %455 = getelementptr inbounds %struct.DerivedMesh, ptr %454, i64 0, i32 25
  %456 = load ptr, ptr %455, align 8, !tbaa !480
  %457 = call i32 %456(ptr noundef %454) #16
  %458 = load ptr, ptr %198, align 8, !tbaa !440
  %459 = getelementptr inbounds %struct.DerivedMesh, ptr %458, i64 0, i32 52
  %460 = load ptr, ptr %459, align 8, !tbaa !481
  %461 = call ptr %460(ptr noundef %458, i32 noundef 7) #16
  %462 = load ptr, ptr %198, align 8, !tbaa !440
  %463 = getelementptr inbounds %struct.DerivedMesh, ptr %462, i64 0, i32 54
  %464 = load ptr, ptr %463, align 8, !tbaa !482
  %465 = call ptr %464(ptr noundef %462, i32 noundef 7) #16
  %466 = icmp eq ptr %461, null
  %467 = select i1 %466, ptr null, ptr %465
  %468 = icmp sgt i32 %457, 0
  br i1 %468, label %469, label %492

469:                                              ; preds = %452
  %470 = getelementptr inbounds %struct.StrandBuffer, ptr %375, i64 0, i32 5
  %471 = icmp eq ptr %467, null
  %472 = load i32, ptr %470, align 4, !tbaa !483
  %473 = zext nneg i32 %457 to i64
  br label %474

474:                                              ; preds = %469, %487
  %475 = phi i64 [ 0, %469 ], [ %490, %487 ]
  %476 = phi i32 [ %472, %469 ], [ %489, %487 ]
  %477 = trunc i64 %475 to i32
  br i1 %466, label %487, label %478

478:                                              ; preds = %474
  %479 = getelementptr inbounds i32, ptr %461, i64 %475
  %480 = load i32, ptr %479, align 4, !tbaa !80
  %481 = icmp eq i32 %480, -1
  %482 = select i1 %481, i1 true, i1 %471
  br i1 %482, label %487, label %483

483:                                              ; preds = %478
  %484 = sext i32 %480 to i64
  %485 = getelementptr inbounds i32, ptr %467, i64 %484
  %486 = load i32, ptr %485, align 4, !tbaa !80
  br label %487

487:                                              ; preds = %478, %483, %474
  %488 = phi i32 [ %477, %474 ], [ %486, %483 ], [ %480, %478 ]
  %489 = call i32 @llvm.smax.i32(i32 %488, i32 %476)
  store i32 %489, ptr %470, align 4, !tbaa !483
  %490 = add nuw nsw i64 %475, 1
  %491 = icmp eq i64 %490, %473
  br i1 %491, label %492, label %474, !llvm.loop !484

492:                                              ; preds = %487, %452
  %493 = getelementptr inbounds %struct.StrandBuffer, ptr %375, i64 0, i32 5
  %494 = load i32, ptr %493, align 4, !tbaa !483
  %495 = add nsw i32 %494, 1
  store i32 %495, ptr %493, align 4, !tbaa !483
  %496 = load ptr, ptr @MEM_callocN, align 8, !tbaa !77
  %497 = sext i32 %495 to i64
  %498 = shl nsw i64 %497, 5
  %499 = call ptr %496(i64 noundef %498, ptr noundef nonnull @.str.16) #16
  %500 = getelementptr inbounds %struct.StrandBuffer, ptr %375, i64 0, i32 3
  store ptr %499, ptr %500, align 8, !tbaa !485
  %501 = getelementptr inbounds %struct.StrandBound, ptr %499, i64 0, i32 1
  store i32 0, ptr %501, align 4, !tbaa !486
  store i32 0, ptr %499, align 4, !tbaa !488
  br label %502

502:                                              ; preds = %492, %367, %316, %313
  %503 = phi i32 [ %323, %492 ], [ %323, %367 ], [ 0, %316 ], [ 0, %313 ]
  %504 = phi i8 [ %453, %492 ], [ 0, %367 ], [ 0, %316 ], [ 0, %313 ]
  %505 = phi ptr [ %461, %492 ], [ null, %367 ], [ null, %316 ], [ null, %313 ]
  %506 = phi ptr [ %467, %492 ], [ null, %367 ], [ null, %316 ], [ null, %313 ]
  %507 = phi ptr [ %499, %492 ], [ null, %367 ], [ null, %316 ], [ null, %313 ]
  %508 = phi ptr [ %433, %492 ], [ null, %367 ], [ null, %316 ], [ null, %313 ]
  %509 = phi ptr [ %375, %492 ], [ null, %367 ], [ null, %316 ], [ null, %313 ]
  %510 = getelementptr inbounds %struct.ParticleStrandData, ptr %39, i64 0, i32 1
  %511 = load ptr, ptr %510, align 8, !tbaa !459
  %512 = icmp eq ptr %511, null
  br i1 %512, label %513, label %516

513:                                              ; preds = %502
  %514 = load ptr, ptr @MEM_mallocN, align 8, !tbaa !77
  %515 = call ptr %514(i64 noundef 12, ptr noundef nonnull @.str.17) #16
  store ptr %515, ptr %510, align 8, !tbaa !459
  br label %516

516:                                              ; preds = %513, %502
  %517 = icmp eq i32 %503, 0
  br i1 %517, label %518, label %521

518:                                              ; preds = %516
  %519 = call ptr @psys_create_lattice_deform_data(ptr noundef nonnull %38) #16
  %520 = getelementptr inbounds %struct.ParticleSystem, ptr %99, i64 0, i32 15
  store ptr %519, ptr %520, align 8, !tbaa !489
  br label %521

521:                                              ; preds = %518, %516
  %522 = add nsw i32 %185, %175
  %523 = icmp sgt i32 %522, 0
  br i1 %523, label %524, label %1290

524:                                              ; preds = %521
  %525 = getelementptr inbounds %struct.ParticleSystem, ptr %99, i64 0, i32 4
  %526 = sext i32 %185 to i64
  %527 = sub nsw i64 0, %526
  %528 = getelementptr inbounds %struct.ParticleSystem, ptr %99, i64 0, i32 8
  %529 = getelementptr inbounds %struct.ParticleSettings, ptr %110, i64 0, i32 19
  %530 = getelementptr inbounds %struct.ParticleSettings, ptr %110, i64 0, i32 8
  %531 = getelementptr inbounds %struct.ParticleSettings, ptr %110, i64 0, i32 8
  %532 = icmp eq ptr %509, null
  %533 = icmp eq ptr %505, null
  %534 = icmp eq ptr %506, null
  %535 = getelementptr inbounds %struct.StrandBuffer, ptr %509, i64 0, i32 3
  %536 = getelementptr inbounds %struct.StrandBuffer, ptr %509, i64 0, i32 5
  %537 = getelementptr inbounds %struct.ObjectRen, ptr %1, i64 0, i32 12
  %538 = getelementptr inbounds %struct.ParticleSettings, ptr %110, i64 0, i32 8
  %539 = getelementptr inbounds %struct.ParticleSystem, ptr %99, i64 0, i32 7
  %540 = icmp eq i32 %175, 0
  %541 = getelementptr inbounds %struct.ParticleSettings, ptr %110, i64 0, i32 15
  %542 = getelementptr inbounds [3 x float], ptr %52, i64 0, i64 1
  %543 = getelementptr inbounds [3 x float], ptr %52, i64 0, i64 2
  %544 = getelementptr inbounds %struct.Material, ptr %189, i64 0, i32 52
  %545 = getelementptr inbounds %struct.ParticleStrandData, ptr %39, i64 0, i32 3
  %546 = getelementptr inbounds %struct.ParticleStrandData, ptr %39, i64 0, i32 3
  %547 = icmp eq ptr %509, null
  %548 = getelementptr inbounds %struct.ObjectRen, ptr %1, i64 0, i32 12
  %549 = getelementptr inbounds [2 x float], ptr %51, i64 0, i64 1
  %550 = getelementptr inbounds %struct.ParticleStrandData, ptr %39, i64 0, i32 3
  %551 = icmp ne i8 %504, 0
  %552 = getelementptr inbounds %struct.ParticleStrandData, ptr %39, i64 0, i32 2
  %553 = icmp slt i32 %503, 1
  %554 = icmp slt i32 %503, 0
  %555 = getelementptr inbounds float, ptr %36, i64 1
  %556 = getelementptr inbounds float, ptr %36, i64 2
  %557 = getelementptr inbounds %struct.ParticleKey, ptr %36, i64 0, i32 1
  %558 = getelementptr inbounds %struct.ParticleKey, ptr %36, i64 0, i32 1, i64 1
  %559 = getelementptr inbounds %struct.ParticleKey, ptr %36, i64 0, i32 1, i64 2
  %560 = getelementptr inbounds float, ptr %40, i64 1
  %561 = getelementptr inbounds float, ptr %40, i64 2
  %562 = getelementptr inbounds %struct.ParticleStrandData, ptr %39, i64 0, i32 7
  %563 = getelementptr inbounds %struct.ParticleStrandData, ptr %39, i64 0, i32 10
  %564 = getelementptr inbounds %struct.ParticleStrandData, ptr %39, i64 0, i32 4
  %565 = getelementptr inbounds float, ptr %41, i64 1
  %566 = getelementptr inbounds float, ptr %42, i64 1
  %567 = getelementptr inbounds float, ptr %41, i64 2
  %568 = getelementptr inbounds float, ptr %42, i64 2
  %569 = getelementptr inbounds %struct.ParticleStrandData, ptr %39, i64 0, i32 10
  %570 = getelementptr inbounds %struct.ParticleStrandData, ptr %39, i64 0, i32 4
  %571 = getelementptr inbounds float, ptr %41, i64 1
  %572 = getelementptr inbounds float, ptr %41, i64 2
  %573 = getelementptr inbounds %struct.ParticleSettings, ptr %110, i64 0, i32 119
  %574 = getelementptr inbounds %struct.ParticleKey, ptr %36, i64 0, i32 4
  %575 = getelementptr inbounds %struct.ParticleSystem, ptr %99, i64 0, i32 16
  %576 = getelementptr inbounds %struct.ParticleBillboardData, ptr %37, i64 0, i32 6
  %577 = getelementptr inbounds %struct.ParticleSettings, ptr %110, i64 0, i32 43
  %578 = getelementptr inbounds %struct.ParticleBillboardData, ptr %37, i64 0, i32 3
  %579 = getelementptr inbounds %struct.ParticleSettings, ptr %110, i64 0, i32 43, i64 1
  %580 = getelementptr inbounds %struct.ParticleBillboardData, ptr %37, i64 0, i32 3, i64 1
  %581 = getelementptr inbounds %struct.ParticleSettings, ptr %110, i64 0, i32 44
  %582 = getelementptr inbounds %struct.ParticleBillboardData, ptr %37, i64 0, i32 4
  %583 = getelementptr inbounds %struct.ParticleSettings, ptr %110, i64 0, i32 37
  %584 = getelementptr inbounds %struct.ParticleSettings, ptr %110, i64 0, i32 44, i64 1
  %585 = getelementptr inbounds %struct.ParticleBillboardData, ptr %37, i64 0, i32 4, i64 1
  %586 = getelementptr inbounds %struct.ParticleKey, ptr %36, i64 0, i32 1
  %587 = getelementptr inbounds %struct.ParticleKey, ptr %36, i64 0, i32 1, i64 1
  %588 = getelementptr inbounds %struct.ParticleKey, ptr %36, i64 0, i32 1, i64 2
  %589 = getelementptr inbounds %struct.ParticleSettings, ptr %110, i64 0, i32 45
  %590 = getelementptr inbounds %struct.ParticleSettings, ptr %110, i64 0, i32 46
  %591 = getelementptr inbounds %struct.ParticleSettings, ptr %110, i64 0, i32 44, i64 1
  %592 = getelementptr inbounds %struct.ParticleBillboardData, ptr %37, i64 0, i32 4, i64 1
  %593 = getelementptr inbounds %struct.ParticleSettings, ptr %110, i64 0, i32 41
  %594 = getelementptr inbounds %struct.ParticleSettings, ptr %110, i64 0, i32 42
  %595 = getelementptr inbounds %struct.ParticleBillboardData, ptr %37, i64 0, i32 5
  %596 = getelementptr inbounds %struct.ParticleBillboardData, ptr %37, i64 0, i32 7
  %597 = getelementptr inbounds %struct.ParticleBillboardData, ptr %37, i64 0, i32 10
  %598 = getelementptr inbounds %struct.ParticleBillboardData, ptr %37, i64 0, i32 12
  %599 = getelementptr inbounds %struct.ParticleSettings, ptr %110, i64 0, i32 118
  %600 = getelementptr inbounds %struct.ParticleSettings, ptr %110, i64 0, i32 88
  %601 = getelementptr inbounds %struct.ParticleSettings, ptr %110, i64 0, i32 15
  %602 = getelementptr inbounds %struct.ParticleKey, ptr %36, i64 0, i32 4
  %603 = getelementptr inbounds %struct.ParticleSystem, ptr %99, i64 0, i32 16
  %604 = getelementptr inbounds %struct.ParticleBillboardData, ptr %37, i64 0, i32 6
  %605 = getelementptr inbounds %struct.ParticleSettings, ptr %110, i64 0, i32 43
  %606 = getelementptr inbounds %struct.ParticleBillboardData, ptr %37, i64 0, i32 3
  %607 = getelementptr inbounds %struct.ParticleSettings, ptr %110, i64 0, i32 43, i64 1
  %608 = getelementptr inbounds %struct.ParticleBillboardData, ptr %37, i64 0, i32 3, i64 1
  %609 = getelementptr inbounds %struct.ParticleSettings, ptr %110, i64 0, i32 44
  %610 = getelementptr inbounds %struct.ParticleBillboardData, ptr %37, i64 0, i32 4
  %611 = getelementptr inbounds %struct.ParticleSettings, ptr %110, i64 0, i32 37
  %612 = getelementptr inbounds %struct.ParticleSettings, ptr %110, i64 0, i32 44, i64 1
  %613 = getelementptr inbounds %struct.ParticleBillboardData, ptr %37, i64 0, i32 4, i64 1
  %614 = getelementptr inbounds %struct.ParticleKey, ptr %36, i64 0, i32 1
  %615 = getelementptr inbounds %struct.ParticleKey, ptr %36, i64 0, i32 1, i64 1
  %616 = getelementptr inbounds %struct.ParticleKey, ptr %36, i64 0, i32 1, i64 2
  %617 = getelementptr inbounds %struct.ParticleSettings, ptr %110, i64 0, i32 45
  %618 = getelementptr inbounds %struct.ParticleSettings, ptr %110, i64 0, i32 46
  %619 = getelementptr inbounds %struct.ParticleSettings, ptr %110, i64 0, i32 44, i64 1
  %620 = getelementptr inbounds %struct.ParticleBillboardData, ptr %37, i64 0, i32 4, i64 1
  %621 = getelementptr inbounds %struct.ParticleSettings, ptr %110, i64 0, i32 41
  %622 = getelementptr inbounds %struct.ParticleSettings, ptr %110, i64 0, i32 42
  %623 = getelementptr inbounds %struct.ParticleBillboardData, ptr %37, i64 0, i32 5
  %624 = getelementptr inbounds %struct.ParticleBillboardData, ptr %37, i64 0, i32 7
  %625 = getelementptr inbounds %struct.ParticleBillboardData, ptr %37, i64 0, i32 10
  %626 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 96
  %627 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 97
  %628 = add i32 %503, 1
  %629 = sext i32 %185 to i64
  %630 = sext i32 %185 to i64
  %631 = zext nneg i32 %522 to i64
  %632 = zext i32 %628 to i64
  %633 = zext i32 %628 to i64
  br label %634

634:                                              ; preds = %524, %1272
  %635 = phi i64 [ 0, %524 ], [ %1286, %1272 ]
  %636 = phi ptr [ %112, %524 ], [ %1287, %1272 ]
  %637 = phi ptr [ null, %524 ], [ %1285, %1272 ]
  %638 = phi ptr [ %508, %524 ], [ %1284, %1272 ]
  %639 = phi ptr [ %507, %524 ], [ %1283, %1272 ]
  %640 = phi ptr [ null, %524 ], [ %1282, %1272 ]
  %641 = phi float [ 0.000000e+00, %524 ], [ %1281, %1272 ]
  %642 = phi float [ 0.000000e+00, %524 ], [ %1280, %1272 ]
  %643 = phi float [ %191, %524 ], [ %1279, %1272 ]
  %644 = phi float [ undef, %524 ], [ %1278, %1272 ]
  %645 = phi float [ undef, %524 ], [ %1277, %1272 ]
  %646 = phi float [ undef, %524 ], [ %1276, %1272 ]
  %647 = phi i32 [ 0, %524 ], [ %1275, %1272 ]
  %648 = phi i8 [ 0, %524 ], [ %1274, %1272 ]
  %649 = phi i32 [ undef, %524 ], [ %1273, %1272 ]
  %650 = phi i32 [ %194, %524 ], [ %1288, %1272 ]
  %651 = call float @BLI_rng_get_float(ptr noundef %183) #16
  %652 = icmp slt i64 %635, %630
  br i1 %652, label %653, label %732

653:                                              ; preds = %634
  %654 = getelementptr inbounds %struct.ParticleData, ptr %636, i64 0, i32 17
  %655 = load i16, ptr %654, align 4, !tbaa !490
  %656 = and i16 %655, 1
  %657 = icmp eq i16 %656, 0
  br i1 %657, label %658, label %1272

658:                                              ; preds = %653
  %659 = getelementptr inbounds %struct.ParticleData, ptr %636, i64 0, i32 6
  %660 = load float, ptr %659, align 4, !tbaa !493
  %661 = fsub float %106, %660
  %662 = getelementptr inbounds %struct.ParticleData, ptr %636, i64 0, i32 7
  %663 = load float, ptr %662, align 8, !tbaa !494
  %664 = fdiv float %661, %663
  store float %664, ptr %48, align 4, !tbaa !44
  store float %660, ptr %49, align 4, !tbaa !44
  %665 = getelementptr inbounds %struct.ParticleData, ptr %636, i64 0, i32 8
  %666 = load float, ptr %665, align 4, !tbaa !495
  store float %666, ptr %50, align 4, !tbaa !44
  %667 = load float, ptr %190, align 4, !tbaa !438
  %668 = load i16, ptr %538, align 2, !tbaa !496
  %669 = sext i16 %668 to i32
  %670 = getelementptr inbounds %struct.ParticleData, ptr %636, i64 0, i32 9
  %671 = load i32, ptr %670, align 8, !tbaa !497
  %672 = getelementptr inbounds %struct.ParticleData, ptr %636, i64 0, i32 10
  %673 = load i32, ptr %672, align 4, !tbaa !498
  %674 = getelementptr inbounds %struct.ParticleData, ptr %636, i64 0, i32 11
  %675 = getelementptr inbounds %struct.ParticleData, ptr %636, i64 0, i32 12
  %676 = load float, ptr %675, align 8, !tbaa !499
  %677 = load ptr, ptr %510, align 8, !tbaa !459
  call void @psys_particle_on_emitter(ptr noundef %133, i32 noundef %669, i32 noundef %671, i32 noundef %673, ptr noundef nonnull %674, float noundef %676, ptr noundef nonnull %45, ptr noundef nonnull %46, ptr noundef null, ptr noundef null, ptr noundef %677, ptr noundef null) #16
  %678 = load i32, ptr %672, align 4, !tbaa !498
  %679 = icmp eq i32 %678, -1
  br i1 %679, label %680, label %689

680:                                              ; preds = %658
  %681 = load i32, ptr %670, align 8, !tbaa !497
  %682 = load ptr, ptr %198, align 8, !tbaa !440
  %683 = getelementptr inbounds %struct.DerivedMesh, ptr %682, i64 0, i32 25
  %684 = load ptr, ptr %683, align 8, !tbaa !480
  %685 = call i32 %684(ptr noundef %682) #16
  %686 = icmp slt i32 %681, %685
  br i1 %686, label %687, label %689

687:                                              ; preds = %680
  %688 = load i32, ptr %670, align 8, !tbaa !497
  br label %689

689:                                              ; preds = %687, %680, %658
  %690 = phi i32 [ %688, %687 ], [ -1, %680 ], [ %678, %658 ]
  %691 = load i16, ptr %538, align 2, !tbaa !496
  %692 = load ptr, ptr %198, align 8, !tbaa !440
  call fastcc void @get_particle_uvco_mcol(i16 noundef signext %691, ptr noundef %692, ptr noundef nonnull %674, i32 noundef %690, ptr noundef nonnull %39)
  %693 = getelementptr inbounds %struct.ParticleData, ptr %636, i64 0, i32 13
  %694 = load float, ptr %693, align 4, !tbaa !500
  %695 = load i32, ptr %181, align 4, !tbaa !433
  %696 = srem i32 %695, 1024
  %697 = sext i32 %696 to i64
  %698 = getelementptr inbounds [1024 x i32], ptr @PSYS_FRAND_SEED_OFFSET, i64 0, i64 %697
  %699 = load i32, ptr %698, align 4, !tbaa !80
  %700 = getelementptr inbounds [1024 x i32], ptr @PSYS_FRAND_SEED_MULTIPLIER, i64 0, i64 %697
  %701 = load i32, ptr %700, align 4, !tbaa !80
  %702 = trunc i64 %635 to i32
  %703 = mul i32 %701, %702
  %704 = add i32 %703, %699
  %705 = and i32 %704, 1023
  %706 = zext nneg i32 %705 to i64
  %707 = getelementptr inbounds [1024 x float], ptr @PSYS_FRAND_BASE, i64 0, i64 %706
  %708 = load float, ptr %707, align 4, !tbaa !44
  %709 = fadd float %708, -5.000000e-01
  %710 = fmul float %709, 2.000000e+00
  %711 = trunc i64 %635 to i32
  %712 = add i32 %711, 1
  %713 = mul i32 %701, %712
  %714 = add i32 %713, %699
  %715 = and i32 %714, 1023
  %716 = zext nneg i32 %715 to i64
  %717 = getelementptr inbounds [1024 x float], ptr @PSYS_FRAND_BASE, i64 0, i64 %716
  %718 = load float, ptr %717, align 4, !tbaa !44
  br i1 %517, label %725, label %719

719:                                              ; preds = %689
  %720 = load ptr, ptr %539, align 8, !tbaa !458
  %721 = getelementptr inbounds ptr, ptr %720, i64 %635
  %722 = load ptr, ptr %721, align 8, !tbaa !77
  %723 = getelementptr inbounds %struct.ParticleCacheKey, ptr %722, i64 0, i32 5
  %724 = load i32, ptr %723, align 4, !tbaa !501
  br label %725

725:                                              ; preds = %719, %689
  %726 = phi i32 [ %724, %719 ], [ %647, %689 ]
  %727 = phi ptr [ %722, %719 ], [ %637, %689 ]
  br i1 %540, label %866, label %728

728:                                              ; preds = %725
  %729 = load i32, ptr %541, align 8, !tbaa !273
  %730 = and i32 %729, 256
  %731 = icmp eq i32 %730, 0
  br i1 %731, label %1272, label %866

732:                                              ; preds = %634
  %733 = load ptr, ptr %525, align 8, !tbaa !503
  %734 = getelementptr inbounds %struct.ChildParticle, ptr %733, i64 %635
  %735 = getelementptr inbounds %struct.ChildParticle, ptr %734, i64 %527
  br i1 %517, label %744, label %736

736:                                              ; preds = %732
  %737 = load ptr, ptr %528, align 8, !tbaa !431
  %738 = sub nsw i64 %635, %629
  %739 = getelementptr inbounds ptr, ptr %737, i64 %738
  %740 = load ptr, ptr %739, align 8, !tbaa !77
  %741 = getelementptr inbounds %struct.ParticleCacheKey, ptr %740, i64 0, i32 5
  %742 = load i32, ptr %741, align 4, !tbaa !501
  %743 = icmp slt i32 %742, 0
  br i1 %743, label %856, label %744

744:                                              ; preds = %736, %732
  %745 = phi i32 [ %647, %732 ], [ %742, %736 ]
  %746 = phi ptr [ %637, %732 ], [ %740, %736 ]
  %747 = call float @psys_get_child_time(ptr noundef %99, ptr noundef %735, float noundef %106, ptr noundef nonnull %49, ptr noundef nonnull %50) #16
  store float %747, ptr %48, align 4, !tbaa !44
  %748 = call float @psys_get_child_size(ptr noundef %99, ptr noundef %735, float noundef %106, ptr noundef nonnull %48) #16
  %749 = load i32, ptr %181, align 4, !tbaa !433
  %750 = srem i32 %749, 1024
  %751 = sext i32 %750 to i64
  %752 = getelementptr inbounds [1024 x i32], ptr @PSYS_FRAND_SEED_OFFSET, i64 0, i64 %751
  %753 = load i32, ptr %752, align 4, !tbaa !80
  %754 = getelementptr inbounds [1024 x i32], ptr @PSYS_FRAND_SEED_MULTIPLIER, i64 0, i64 %751
  %755 = load i32, ptr %754, align 4, !tbaa !80
  %756 = trunc i64 %635 to i32
  %757 = add i32 %756, 21
  %758 = mul i32 %755, %757
  %759 = add i32 %758, %753
  %760 = and i32 %759, 1023
  %761 = zext nneg i32 %760 to i64
  %762 = getelementptr inbounds [1024 x float], ptr @PSYS_FRAND_BASE, i64 0, i64 %761
  %763 = load float, ptr %762, align 4, !tbaa !44
  %764 = fadd float %763, -5.000000e-01
  %765 = fmul float %764, 2.000000e+00
  %766 = trunc i64 %635 to i32
  %767 = add i32 %766, 22
  %768 = mul i32 %755, %767
  %769 = add i32 %768, %753
  %770 = and i32 %769, 1023
  %771 = zext nneg i32 %770 to i64
  %772 = getelementptr inbounds [1024 x float], ptr @PSYS_FRAND_BASE, i64 0, i64 %771
  %773 = load float, ptr %772, align 4, !tbaa !44
  %774 = load i32, ptr %735, align 4, !tbaa !504
  %775 = load i16, ptr %529, align 4, !tbaa !506
  %776 = icmp eq i16 %775, 2
  br i1 %776, label %777, label %782

777:                                              ; preds = %744
  %778 = getelementptr inbounds %struct.ChildParticle, ptr %734, i64 %527, i32 4
  %779 = getelementptr inbounds %struct.ChildParticle, ptr %734, i64 %527, i32 5
  %780 = load float, ptr %779, align 4, !tbaa !507
  %781 = load ptr, ptr %510, align 8, !tbaa !459
  call void @psys_particle_on_emitter(ptr noundef %133, i32 noundef 1, i32 noundef %774, i32 noundef -2, ptr noundef nonnull %778, float noundef %780, ptr noundef nonnull %45, ptr noundef nonnull %46, ptr noundef null, ptr noundef null, ptr noundef %781, ptr noundef null) #16
  br label %795

782:                                              ; preds = %744
  %783 = load ptr, ptr %111, align 8, !tbaa !420
  %784 = getelementptr inbounds %struct.ChildParticle, ptr %734, i64 %527, i32 1
  %785 = load i32, ptr %784, align 4, !tbaa !508
  %786 = sext i32 %785 to i64
  %787 = load i16, ptr %530, align 2, !tbaa !496
  %788 = sext i16 %787 to i32
  %789 = getelementptr inbounds %struct.ParticleData, ptr %783, i64 %786, i32 9
  %790 = load i32, ptr %789, align 8, !tbaa !497
  %791 = getelementptr inbounds %struct.ParticleData, ptr %783, i64 %786, i32 11
  %792 = getelementptr inbounds %struct.ParticleData, ptr %783, i64 %786, i32 12
  %793 = load float, ptr %792, align 8, !tbaa !499
  %794 = load ptr, ptr %510, align 8, !tbaa !459
  call void @psys_particle_on_emitter(ptr noundef %133, i32 noundef %788, i32 noundef %790, i32 noundef -2, ptr noundef nonnull %791, float noundef %793, ptr noundef nonnull %45, ptr noundef nonnull %46, ptr noundef null, ptr noundef null, ptr noundef %794, ptr noundef null) #16
  br label %795

795:                                              ; preds = %782, %777
  %796 = load i16, ptr %529, align 4, !tbaa !506
  %797 = icmp eq i16 %796, 2
  br i1 %797, label %798, label %802

798:                                              ; preds = %795
  %799 = load ptr, ptr %198, align 8, !tbaa !440
  %800 = getelementptr inbounds %struct.ChildParticle, ptr %734, i64 %527, i32 4
  %801 = load i32, ptr %735, align 4, !tbaa !504
  call fastcc void @get_particle_uvco_mcol(i16 noundef signext 1, ptr noundef %799, ptr noundef nonnull %800, i32 noundef %801, ptr noundef nonnull %39)
  br label %825

802:                                              ; preds = %795
  %803 = load ptr, ptr %111, align 8, !tbaa !420
  %804 = getelementptr inbounds %struct.ChildParticle, ptr %734, i64 %527, i32 1
  %805 = load i32, ptr %804, align 4, !tbaa !508
  %806 = sext i32 %805 to i64
  %807 = getelementptr inbounds %struct.ParticleData, ptr %803, i64 %806, i32 10
  %808 = load i32, ptr %807, align 4, !tbaa !498
  %809 = icmp eq i32 %808, -1
  br i1 %809, label %810, label %820

810:                                              ; preds = %802
  %811 = getelementptr inbounds %struct.ParticleData, ptr %803, i64 %806, i32 9
  %812 = load i32, ptr %811, align 8, !tbaa !497
  %813 = load ptr, ptr %198, align 8, !tbaa !440
  %814 = getelementptr inbounds %struct.DerivedMesh, ptr %813, i64 0, i32 25
  %815 = load ptr, ptr %814, align 8, !tbaa !480
  %816 = call i32 %815(ptr noundef %813) #16
  %817 = icmp slt i32 %812, %816
  br i1 %817, label %818, label %820

818:                                              ; preds = %810
  %819 = load i32, ptr %811, align 8, !tbaa !497
  br label %820

820:                                              ; preds = %818, %810, %802
  %821 = phi i32 [ %819, %818 ], [ -1, %810 ], [ %808, %802 ]
  %822 = load i16, ptr %531, align 2, !tbaa !496
  %823 = load ptr, ptr %198, align 8, !tbaa !440
  %824 = getelementptr inbounds %struct.ParticleData, ptr %803, i64 %806, i32 11
  call fastcc void @get_particle_uvco_mcol(i16 noundef signext %822, ptr noundef %823, ptr noundef nonnull %824, i32 noundef %821, ptr noundef nonnull %39)
  br label %825

825:                                              ; preds = %820, %798
  %826 = phi i32 [ %774, %798 ], [ %821, %820 ]
  %827 = call zeroext i8 @psys_render_simplify_params(ptr noundef %99, ptr noundef nonnull %735, ptr noundef nonnull %51) #16
  br i1 %532, label %856, label %828

828:                                              ; preds = %825
  %829 = load i32, ptr %735, align 4, !tbaa !504
  br i1 %533, label %840, label %830

830:                                              ; preds = %828
  %831 = sext i32 %829 to i64
  %832 = getelementptr inbounds i32, ptr %505, i64 %831
  %833 = load i32, ptr %832, align 4, !tbaa !80
  %834 = icmp eq i32 %833, -1
  %835 = select i1 %834, i1 true, i1 %534
  br i1 %835, label %840, label %836

836:                                              ; preds = %830
  %837 = sext i32 %833 to i64
  %838 = getelementptr inbounds i32, ptr %506, i64 %837
  %839 = load i32, ptr %838, align 4, !tbaa !80
  br label %840

840:                                              ; preds = %828, %830, %836
  %841 = phi i32 [ %839, %836 ], [ %833, %830 ], [ %829, %828 ]
  %842 = sext i32 %841 to i64
  %843 = load ptr, ptr %535, align 8, !tbaa !485
  %844 = ptrtoint ptr %639 to i64
  %845 = ptrtoint ptr %843 to i64
  %846 = sub i64 %844, %845
  %847 = ashr exact i64 %846, 5
  %848 = icmp slt i64 %847, %842
  br i1 %848, label %849, label %856

849:                                              ; preds = %840
  %850 = load i32, ptr %536, align 4, !tbaa !483
  %851 = icmp slt i32 %841, %850
  br i1 %851, label %852, label %856

852:                                              ; preds = %849
  %853 = getelementptr inbounds %struct.StrandBound, ptr %843, i64 %842
  %854 = load i32, ptr %537, align 8, !tbaa !247
  %855 = getelementptr inbounds %struct.StrandBound, ptr %843, i64 %842, i32 1
  store i32 %854, ptr %855, align 4, !tbaa !486
  store i32 %854, ptr %853, align 4, !tbaa !488
  br label %856

856:                                              ; preds = %852, %849, %840, %825, %736
  %857 = phi i32 [ %649, %736 ], [ %826, %840 ], [ %826, %849 ], [ %826, %852 ], [ %826, %825 ]
  %858 = phi i8 [ %648, %736 ], [ %827, %840 ], [ %827, %849 ], [ %827, %852 ], [ %827, %825 ]
  %859 = phi i1 [ false, %736 ], [ true, %840 ], [ true, %849 ], [ true, %852 ], [ true, %825 ]
  %860 = phi i32 [ %647, %736 ], [ %745, %840 ], [ %745, %849 ], [ %745, %852 ], [ %745, %825 ]
  %861 = phi float [ %646, %736 ], [ %773, %840 ], [ %773, %849 ], [ %773, %852 ], [ %773, %825 ]
  %862 = phi float [ %645, %736 ], [ %765, %840 ], [ %765, %849 ], [ %765, %852 ], [ %765, %825 ]
  %863 = phi float [ %644, %736 ], [ %748, %840 ], [ %748, %849 ], [ %748, %852 ], [ %748, %825 ]
  %864 = phi ptr [ %639, %736 ], [ %639, %840 ], [ %639, %849 ], [ %853, %852 ], [ %639, %825 ]
  %865 = phi ptr [ %740, %736 ], [ %746, %840 ], [ %746, %849 ], [ %746, %852 ], [ %746, %825 ]
  br i1 %859, label %866, label %1272

866:                                              ; preds = %856, %728, %725
  %867 = phi i32 [ %690, %728 ], [ %690, %725 ], [ %857, %856 ]
  %868 = phi i8 [ %648, %728 ], [ %648, %725 ], [ %858, %856 ]
  %869 = phi i32 [ %726, %728 ], [ %726, %725 ], [ %860, %856 ]
  %870 = phi float [ %718, %728 ], [ %718, %725 ], [ %861, %856 ]
  %871 = phi float [ %710, %728 ], [ %710, %725 ], [ %862, %856 ]
  %872 = phi float [ %694, %728 ], [ %694, %725 ], [ %863, %856 ]
  %873 = phi float [ %667, %728 ], [ %667, %725 ], [ %643, %856 ]
  %874 = phi ptr [ %639, %728 ], [ %639, %725 ], [ %864, %856 ]
  %875 = phi ptr [ %727, %728 ], [ %727, %725 ], [ %865, %856 ]
  %876 = load float, ptr %48, align 4, !tbaa !44
  store float %876, ptr %52, align 4, !tbaa !44
  store float 0.000000e+00, ptr %542, align 4, !tbaa !44
  store float 0.000000e+00, ptr %543, align 4, !tbaa !44
  %877 = load i32, ptr %544, align 8, !tbaa !509
  %878 = icmp sgt i32 %877, -1
  br i1 %878, label %880, label %879

879:                                              ; preds = %866
  call void @mul_m3_v3(ptr noundef nonnull %44, ptr noundef nonnull %46) #16
  store ptr %46, ptr %545, align 8, !tbaa !510
  br label %881

880:                                              ; preds = %866
  store ptr null, ptr %546, align 8, !tbaa !510
  br label %881

881:                                              ; preds = %880, %879
  br i1 %547, label %965, label %882

882:                                              ; preds = %881
  %883 = load i32, ptr %548, align 8, !tbaa !247
  %884 = add nsw i32 %883, 1
  store i32 %884, ptr %548, align 8, !tbaa !247
  %885 = call ptr @RE_findOrAddStrand(ptr noundef %1, i32 noundef %883) #16
  %886 = getelementptr inbounds %struct.StrandRen, ptr %885, i64 0, i32 1
  store ptr %509, ptr %886, align 8, !tbaa !511
  store ptr %638, ptr %885, align 8, !tbaa !252
  %887 = getelementptr inbounds %struct.StrandRen, ptr %885, i64 0, i32 6
  %888 = load ptr, ptr %510, align 8, !tbaa !459
  %889 = load float, ptr %888, align 4, !tbaa !44
  store float %889, ptr %887, align 4, !tbaa !44
  %890 = getelementptr inbounds float, ptr %888, i64 1
  %891 = load float, ptr %890, align 4, !tbaa !44
  %892 = getelementptr inbounds %struct.StrandRen, ptr %885, i64 0, i32 6, i64 1
  store float %891, ptr %892, align 4, !tbaa !44
  %893 = getelementptr inbounds float, ptr %888, i64 2
  %894 = load float, ptr %893, align 4, !tbaa !44
  %895 = getelementptr inbounds %struct.StrandRen, ptr %885, i64 0, i32 6, i64 2
  store float %894, ptr %895, align 4, !tbaa !44
  %896 = icmp eq i8 %868, 0
  br i1 %896, label %902, label %897

897:                                              ; preds = %882
  %898 = call ptr @RE_strandren_get_simplify(ptr noundef %1, ptr noundef nonnull %885, i32 noundef 1) #16
  %899 = load float, ptr %51, align 4, !tbaa !44
  store float %899, ptr %898, align 4, !tbaa !44
  %900 = load float, ptr %549, align 4, !tbaa !44
  %901 = getelementptr inbounds float, ptr %898, i64 1
  store float %900, ptr %901, align 4, !tbaa !44
  br label %902

902:                                              ; preds = %897, %882
  %903 = load ptr, ptr %550, align 8, !tbaa !510
  %904 = icmp eq ptr %903, null
  br i1 %904, label %914, label %905

905:                                              ; preds = %902
  %906 = call ptr @RE_strandren_get_surfnor(ptr noundef %1, ptr noundef nonnull %885, i32 noundef 1) #16
  %907 = load float, ptr %903, align 4, !tbaa !44
  store float %907, ptr %906, align 4, !tbaa !44
  %908 = getelementptr inbounds float, ptr %903, i64 1
  %909 = load float, ptr %908, align 4, !tbaa !44
  %910 = getelementptr inbounds float, ptr %906, i64 1
  store float %909, ptr %910, align 4, !tbaa !44
  %911 = getelementptr inbounds float, ptr %903, i64 2
  %912 = load float, ptr %911, align 4, !tbaa !44
  %913 = getelementptr inbounds float, ptr %906, i64 2
  store float %912, ptr %913, align 4, !tbaa !44
  br label %914

914:                                              ; preds = %905, %902
  %915 = icmp sgt i32 %867, -1
  %916 = select i1 %551, i1 %915, i1 false
  br i1 %916, label %917, label %919

917:                                              ; preds = %914
  %918 = call ptr @RE_strandren_get_face(ptr noundef %1, ptr noundef nonnull %885, i32 noundef 1) #16
  store i32 %867, ptr %918, align 4, !tbaa !80
  br label %919

919:                                              ; preds = %917, %914
  %920 = load ptr, ptr %552, align 8, !tbaa !443
  %921 = icmp eq ptr %920, null
  br i1 %921, label %945, label %922

922:                                              ; preds = %919
  %923 = load i32, ptr %204, align 8, !tbaa !441
  %924 = icmp sgt i32 %923, 0
  br i1 %924, label %925, label %945

925:                                              ; preds = %922
  %926 = load i32, ptr %186, align 4, !tbaa !435
  %927 = zext i32 %926 to i64
  %928 = zext nneg i32 %923 to i64
  br label %929

929:                                              ; preds = %925, %942
  %930 = phi i64 [ 0, %925 ], [ %943, %942 ]
  %931 = icmp eq i64 %930, %927
  br i1 %931, label %942, label %932

932:                                              ; preds = %929
  %933 = trunc i64 %930 to i32
  %934 = call ptr @RE_strandren_get_uv(ptr noundef %1, ptr noundef nonnull %885, i32 noundef %933, ptr noundef null, i32 noundef 1) #16
  %935 = shl nuw nsw i64 %930, 1
  %936 = getelementptr inbounds float, ptr %920, i64 %935
  %937 = load float, ptr %936, align 4, !tbaa !44
  store float %937, ptr %934, align 4, !tbaa !44
  %938 = or disjoint i64 %935, 1
  %939 = getelementptr inbounds float, ptr %920, i64 %938
  %940 = load float, ptr %939, align 4, !tbaa !44
  %941 = getelementptr inbounds float, ptr %934, i64 1
  store float %940, ptr %941, align 4, !tbaa !44
  br label %942

942:                                              ; preds = %932, %929
  %943 = add nuw nsw i64 %930, 1
  %944 = icmp eq i64 %943, %928
  br i1 %944, label %945, label %929, !llvm.loop !512

945:                                              ; preds = %942, %922, %919
  %946 = load ptr, ptr %39, align 8, !tbaa !444
  %947 = icmp eq ptr %946, null
  br i1 %947, label %961, label %948

948:                                              ; preds = %945
  %949 = load i32, ptr %208, align 4, !tbaa !442
  %950 = icmp sgt i32 %949, 0
  br i1 %950, label %951, label %961

951:                                              ; preds = %948
  %952 = zext nneg i32 %949 to i64
  br label %953

953:                                              ; preds = %951, %953
  %954 = phi i64 [ 0, %951 ], [ %959, %953 ]
  %955 = trunc i64 %954 to i32
  %956 = call ptr @RE_strandren_get_mcol(ptr noundef %1, ptr noundef nonnull %885, i32 noundef %955, ptr noundef null, i32 noundef 1) #16
  %957 = getelementptr inbounds %struct.MCol, ptr %946, i64 %954
  %958 = load i32, ptr %957, align 1
  store i32 %958, ptr %956, align 1
  %959 = add nuw nsw i64 %954, 1
  %960 = icmp eq i64 %959, %952
  br i1 %960, label %961, label %953, !llvm.loop !513

961:                                              ; preds = %953, %948, %945
  %962 = getelementptr inbounds %struct.StrandBound, ptr %874, i64 0, i32 1
  %963 = load i32, ptr %962, align 4, !tbaa !486
  %964 = add nsw i32 %963, 1
  store i32 %964, ptr %962, align 4, !tbaa !486
  br label %965

965:                                              ; preds = %961, %881
  %966 = phi ptr [ %885, %961 ], [ %640, %881 ]
  %967 = select i1 %517, float %642, float 0.000000e+00
  %968 = select i1 %517, float %641, float 0.000000e+00
  br i1 %553, label %1000, label %969

969:                                              ; preds = %965
  %970 = sext i32 %869 to i64
  br label %971

971:                                              ; preds = %969, %996
  %972 = phi i64 [ 1, %969 ], [ %998, %996 ]
  %973 = phi float [ 0.000000e+00, %969 ], [ %997, %996 ]
  %974 = icmp sgt i64 %972, %970
  br i1 %974, label %996, label %975

975:                                              ; preds = %971
  %976 = getelementptr inbounds %struct.ParticleCacheKey, ptr %875, i64 %972
  %977 = getelementptr inbounds %struct.ParticleCacheKey, ptr %976, i64 -1
  %978 = load float, ptr %976, align 4, !tbaa !44
  %979 = load float, ptr %977, align 4, !tbaa !44
  %980 = fsub float %978, %979
  %981 = getelementptr inbounds float, ptr %976, i64 1
  %982 = load float, ptr %981, align 4, !tbaa !44
  %983 = getelementptr %struct.ParticleCacheKey, ptr %976, i64 -1, i32 0, i64 1
  %984 = load float, ptr %983, align 4, !tbaa !44
  %985 = fsub float %982, %984
  %986 = getelementptr inbounds float, ptr %976, i64 2
  %987 = load float, ptr %986, align 4, !tbaa !44
  %988 = getelementptr %struct.ParticleCacheKey, ptr %976, i64 -1, i32 0, i64 2
  %989 = load float, ptr %988, align 4, !tbaa !44
  %990 = fsub float %987, %989
  %991 = fmul float %985, %985
  %992 = call float @llvm.fmuladd.f32(float %980, float %980, float %991)
  %993 = call float @llvm.fmuladd.f32(float %990, float %990, float %992)
  %994 = call float @sqrtf(float noundef %993) #16
  %995 = fadd float %973, %994
  br label %996

996:                                              ; preds = %975, %971
  %997 = phi float [ %995, %975 ], [ %973, %971 ]
  %998 = add nuw nsw i64 %972, 1
  %999 = icmp eq i64 %998, %632
  br i1 %999, label %1000, label %971, !llvm.loop !514

1000:                                             ; preds = %996, %965
  %1001 = phi float [ %967, %965 ], [ 0.000000e+00, %996 ]
  %1002 = phi float [ %968, %965 ], [ %997, %996 ]
  br i1 %517, label %1089, label %1003

1003:                                             ; preds = %1000
  br i1 %554, label %1261, label %1004

1004:                                             ; preds = %1003
  %1005 = getelementptr inbounds %struct.StrandRen, ptr %966, i64 0, i32 2
  %1006 = sext i32 %869 to i64
  br label %1007

1007:                                             ; preds = %1004, %1084
  %1008 = phi i64 [ 0, %1004 ], [ %1087, %1084 ]
  %1009 = phi ptr [ %638, %1004 ], [ %1086, %1084 ]
  %1010 = phi float [ %1001, %1004 ], [ %1085, %1084 ]
  %1011 = icmp sgt i64 %1008, %1006
  br i1 %1011, label %1084, label %1012

1012:                                             ; preds = %1007
  %1013 = getelementptr inbounds %struct.ParticleCacheKey, ptr %875, i64 %1008
  %1014 = load float, ptr %1013, align 4, !tbaa !44
  store float %1014, ptr %36, align 4, !tbaa !44
  %1015 = getelementptr inbounds float, ptr %1013, i64 1
  %1016 = load float, ptr %1015, align 4, !tbaa !44
  store float %1016, ptr %555, align 4, !tbaa !44
  %1017 = getelementptr inbounds float, ptr %1013, i64 2
  %1018 = load float, ptr %1017, align 4, !tbaa !44
  store float %1018, ptr %556, align 4, !tbaa !44
  %1019 = getelementptr inbounds %struct.ParticleCacheKey, ptr %875, i64 %1008, i32 1
  %1020 = load float, ptr %1019, align 4, !tbaa !44
  store float %1020, ptr %557, align 4, !tbaa !44
  %1021 = getelementptr inbounds float, ptr %1019, i64 1
  %1022 = load float, ptr %1021, align 4, !tbaa !44
  store float %1022, ptr %558, align 4, !tbaa !44
  %1023 = getelementptr inbounds float, ptr %1019, i64 2
  %1024 = load float, ptr %1023, align 4, !tbaa !44
  store float %1024, ptr %559, align 4, !tbaa !44
  %1025 = icmp eq i64 %1008, 0
  br i1 %1025, label %1044, label %1026

1026:                                             ; preds = %1012
  %1027 = getelementptr inbounds %struct.ParticleCacheKey, ptr %1013, i64 -1
  %1028 = load float, ptr %1013, align 4, !tbaa !44
  %1029 = load float, ptr %1027, align 4, !tbaa !44
  %1030 = fsub float %1028, %1029
  %1031 = load float, ptr %1015, align 4, !tbaa !44
  %1032 = getelementptr %struct.ParticleCacheKey, ptr %1013, i64 -1, i32 0, i64 1
  %1033 = load float, ptr %1032, align 4, !tbaa !44
  %1034 = fsub float %1031, %1033
  %1035 = load float, ptr %1017, align 4, !tbaa !44
  %1036 = getelementptr %struct.ParticleCacheKey, ptr %1013, i64 -1, i32 0, i64 2
  %1037 = load float, ptr %1036, align 4, !tbaa !44
  %1038 = fsub float %1035, %1037
  %1039 = fmul float %1034, %1034
  %1040 = call float @llvm.fmuladd.f32(float %1030, float %1030, float %1039)
  %1041 = call float @llvm.fmuladd.f32(float %1038, float %1038, float %1040)
  %1042 = call float @sqrtf(float noundef %1041) #16
  %1043 = fadd float %1010, %1042
  br label %1044

1044:                                             ; preds = %1026, %1012
  %1045 = phi float [ %1043, %1026 ], [ %1010, %1012 ]
  %1046 = fdiv float %1045, %1002
  %1047 = load float, ptr %36, align 4, !tbaa !44
  store float %1047, ptr %40, align 4, !tbaa !44
  %1048 = load float, ptr %555, align 4, !tbaa !44
  store float %1048, ptr %560, align 4, !tbaa !44
  %1049 = load float, ptr %556, align 4, !tbaa !44
  store float %1049, ptr %561, align 4, !tbaa !44
  call void @mul_m4_v3(ptr noundef nonnull %304, ptr noundef nonnull %40) #16
  br i1 %547, label %1061, label %1050

1050:                                             ; preds = %1044
  %1051 = load float, ptr %40, align 4, !tbaa !44
  store float %1051, ptr %1009, align 4, !tbaa !44
  %1052 = load float, ptr %560, align 4, !tbaa !44
  %1053 = getelementptr inbounds float, ptr %1009, i64 1
  store float %1052, ptr %1053, align 4, !tbaa !44
  %1054 = load float, ptr %561, align 4, !tbaa !44
  %1055 = getelementptr inbounds float, ptr %1009, i64 2
  store float %1054, ptr %1055, align 4, !tbaa !44
  %1056 = call float @llvm.fmuladd.f32(float %1046, float 2.000000e+00, float -1.000000e+00)
  %1057 = getelementptr inbounds %struct.StrandVert, ptr %1009, i64 0, i32 1
  store float %1056, ptr %1057, align 4, !tbaa !515
  %1058 = getelementptr inbounds %struct.StrandVert, ptr %1009, i64 1
  %1059 = load i32, ptr %1005, align 8, !tbaa !517
  %1060 = add nsw i32 %1059, 1
  store i32 %1060, ptr %1005, align 8, !tbaa !517
  br label %1084

1061:                                             ; preds = %1044
  store float %873, ptr %562, align 4, !tbaa !518
  %1062 = icmp eq i64 %1008, 1
  br i1 %1062, label %1063, label %1077

1063:                                             ; preds = %1061
  store i32 1, ptr %563, align 8, !tbaa !519
  store float 0.000000e+00, ptr %564, align 8, !tbaa !520
  %1064 = load float, ptr %41, align 4, !tbaa !44
  %1065 = load float, ptr %40, align 4, !tbaa !44
  %1066 = fsub float %1064, %1065
  store float %1066, ptr %42, align 4, !tbaa !44
  %1067 = load float, ptr %565, align 4, !tbaa !44
  %1068 = load float, ptr %560, align 4, !tbaa !44
  %1069 = fsub float %1067, %1068
  store float %1069, ptr %566, align 4, !tbaa !44
  %1070 = load float, ptr %567, align 4, !tbaa !44
  %1071 = load float, ptr %561, align 4, !tbaa !44
  %1072 = fsub float %1070, %1071
  store float %1072, ptr %568, align 4, !tbaa !44
  %1073 = fadd float %1064, %1066
  store float %1073, ptr %42, align 4, !tbaa !44
  %1074 = fadd float %1067, %1069
  store float %1074, ptr %566, align 4, !tbaa !44
  %1075 = fadd float %1070, %1072
  store float %1075, ptr %568, align 4, !tbaa !44
  %1076 = load ptr, ptr %198, align 8, !tbaa !440
  call fastcc void @particle_curve(ptr noundef %0, ptr noundef %1, ptr noundef %1076, ptr noundef nonnull %189, ptr noundef nonnull %39, ptr noundef nonnull %41, ptr noundef nonnull %42, i32 noundef %650, ptr noundef nonnull %52)
  br label %1077

1077:                                             ; preds = %1063, %1061
  store i32 0, ptr %569, align 8, !tbaa !519
  store float %1046, ptr %570, align 8, !tbaa !520
  br i1 %1025, label %1080, label %1078

1078:                                             ; preds = %1077
  %1079 = load ptr, ptr %198, align 8, !tbaa !440
  call fastcc void @particle_curve(ptr noundef %0, ptr noundef %1, ptr noundef %1079, ptr noundef nonnull %189, ptr noundef nonnull %39, ptr noundef nonnull %40, ptr noundef nonnull %41, i32 noundef %650, ptr noundef nonnull %52)
  br label %1080

1080:                                             ; preds = %1078, %1077
  %1081 = load float, ptr %40, align 4, !tbaa !44
  store float %1081, ptr %41, align 4, !tbaa !44
  %1082 = load float, ptr %560, align 4, !tbaa !44
  store float %1082, ptr %571, align 4, !tbaa !44
  %1083 = load float, ptr %561, align 4, !tbaa !44
  store float %1083, ptr %572, align 4, !tbaa !44
  br label %1084

1084:                                             ; preds = %1080, %1050, %1007
  %1085 = phi float [ %1010, %1007 ], [ %1045, %1080 ], [ %1045, %1050 ]
  %1086 = phi ptr [ %1009, %1007 ], [ %1009, %1080 ], [ %1058, %1050 ]
  %1087 = add nuw nsw i64 %1008, 1
  %1088 = icmp eq i64 %1087, %633
  br i1 %1088, label %1261, label %1007, !llvm.loop !521

1089:                                             ; preds = %1000
  %1090 = load i32, ptr %573, align 8, !tbaa !522
  %1091 = icmp sgt i32 %1090, 1
  br i1 %1091, label %1092, label %1201

1092:                                             ; preds = %1089
  %1093 = load float, ptr %599, align 4, !tbaa !523
  %1094 = load float, ptr %600, align 8, !tbaa !524
  %1095 = fneg float %1094
  %1096 = call float @llvm.fmuladd.f32(float %1095, float %870, float 1.000000e+00)
  %1097 = fmul float %1093, %1096
  %1098 = sitofp i32 %1090 to float
  %1099 = fmul float %1096, %1098
  %1100 = fptosi float %1099 to i32
  %1101 = load i32, ptr %601, align 8, !tbaa !273
  %1102 = load float, ptr %48, align 4
  %1103 = icmp eq i32 %1100, 0
  %1104 = sitofp i32 %1100 to float
  %1105 = select i1 %1103, float 1.000000e+00, float %1104
  %1106 = fdiv float %1097, %1105
  call void @psys_make_temp_pointcache(ptr noundef %103, ptr noundef %99) #16
  %1107 = icmp sgt i32 %1100, 0
  br i1 %1107, label %1108, label %1261

1108:                                             ; preds = %1092
  %1109 = and i32 %1101, 32
  %1110 = icmp eq i32 %1109, 0
  %1111 = select i1 %1110, float %1102, float %106
  %1112 = add nsw i32 %1100, -1
  %1113 = sitofp i32 %1112 to float
  %1114 = trunc i64 %635 to i32
  %1115 = trunc i64 %635 to i32
  br label %1116

1116:                                             ; preds = %1108, %1197
  %1117 = phi float [ %1111, %1108 ], [ %1199, %1197 ]
  %1118 = phi i32 [ 0, %1108 ], [ %1198, %1197 ]
  %1119 = load i32, ptr %601, align 8, !tbaa !273
  %1120 = and i32 %1119, 32
  %1121 = icmp eq i32 %1120, 0
  br i1 %1121, label %1128, label %1122

1122:                                             ; preds = %1116
  %1123 = load float, ptr %49, align 4, !tbaa !44
  %1124 = fcmp olt float %1117, %1123
  %1125 = load float, ptr %50, align 4
  %1126 = fcmp ogt float %1117, %1125
  %1127 = select i1 %1124, i1 true, i1 %1126
  br i1 %1127, label %1197, label %1132

1128:                                             ; preds = %1116
  %1129 = fcmp olt float %1117, 0.000000e+00
  %1130 = fcmp ogt float %1117, 1.000000e+00
  %1131 = or i1 %1129, %1130
  br i1 %1131, label %1197, label %1132

1132:                                             ; preds = %1128, %1122
  %1133 = fneg float %1117
  %1134 = select i1 %1121, float %1117, float %1133
  store float %1134, ptr %602, align 4, !tbaa !525
  call void @psys_get_particle_on_path(ptr noundef nonnull %38, i32 noundef %1114, ptr noundef nonnull %36, i8 noundef zeroext 1) #16
  %1135 = load ptr, ptr %603, align 8, !tbaa !526
  %1136 = icmp eq ptr %1135, null
  br i1 %1136, label %1139, label %1137

1137:                                             ; preds = %1132
  %1138 = getelementptr inbounds %struct.Object, ptr %1135, i64 0, i32 47
  call void @mul_m4_v3(ptr noundef nonnull %1138, ptr noundef nonnull %36) #16
  br label %1139

1139:                                             ; preds = %1137, %1132
  br i1 %310, label %1141, label %1140

1140:                                             ; preds = %1139
  call void @mul_m4_v4(ptr noundef nonnull %47, ptr noundef nonnull %36) #16
  br label %1141

1141:                                             ; preds = %1140, %1139
  %1142 = load i16, ptr %120, align 8, !tbaa !179
  %1143 = icmp eq i16 %1142, 9
  br i1 %1143, label %1144, label %1181

1144:                                             ; preds = %1141
  store float %651, ptr %604, align 4, !tbaa !527
  %1145 = load float, ptr %605, align 8, !tbaa !44
  store float %1145, ptr %606, align 8, !tbaa !44
  %1146 = load float, ptr %607, align 4, !tbaa !44
  store float %1146, ptr %608, align 4, !tbaa !44
  %1147 = load float, ptr %609, align 8, !tbaa !44
  %1148 = fmul float %872, %1147
  store float %1148, ptr %610, align 8, !tbaa !44
  %1149 = load i16, ptr %611, align 8, !tbaa !445
  %1150 = icmp eq i16 %1149, 4
  br i1 %1150, label %1151, label %1172

1151:                                             ; preds = %1144
  %1152 = load float, ptr %614, align 4, !tbaa !44
  %1153 = load float, ptr %615, align 4, !tbaa !44
  %1154 = fmul float %1153, %1153
  %1155 = call float @llvm.fmuladd.f32(float %1152, float %1152, float %1154)
  %1156 = load float, ptr %616, align 4, !tbaa !44
  %1157 = call float @llvm.fmuladd.f32(float %1156, float %1156, float %1155)
  %1158 = call float @sqrtf(float noundef %1157) #16
  %1159 = load float, ptr %617, align 8, !tbaa !528
  %1160 = fmul float %1158, %1159
  %1161 = load float, ptr %618, align 4, !tbaa !529
  %1162 = fmul float %1158, %1161
  %1163 = load float, ptr %619, align 4, !tbaa !44
  %1164 = call float @llvm.fmuladd.f32(float %1163, float %872, float %1160)
  %1165 = fadd float %1162, %1164
  store float %1165, ptr %620, align 4, !tbaa !44
  %1166 = fcmp ogt float %1165, 0.000000e+00
  br i1 %1166, label %1167, label %1175

1167:                                             ; preds = %1151
  %1168 = fsub float %1160, %1162
  %1169 = fdiv float %1168, %1165
  %1170 = load float, ptr %608, align 4, !tbaa !44
  %1171 = fadd float %1169, %1170
  store float %1171, ptr %608, align 4, !tbaa !44
  br label %1175

1172:                                             ; preds = %1144
  %1173 = load float, ptr %612, align 4, !tbaa !44
  %1174 = fmul float %872, %1173
  store float %1174, ptr %613, align 4, !tbaa !44
  br label %1175

1175:                                             ; preds = %1172, %1167, %1151
  %1176 = load float, ptr %621, align 8, !tbaa !530
  %1177 = load float, ptr %622, align 4, !tbaa !531
  %1178 = fneg float %1177
  %1179 = call float @llvm.fmuladd.f32(float %1178, float %871, float 1.000000e+00)
  %1180 = fmul float %1176, %1179
  store float %1180, ptr %623, align 8, !tbaa !532
  store float %1117, ptr %624, align 8, !tbaa !533
  store i32 %1115, ptr %625, align 4, !tbaa !534
  br label %1181

1181:                                             ; preds = %1175, %1141
  %1182 = load i32, ptr %601, align 8, !tbaa !273
  %1183 = and i32 %1182, 32
  %1184 = icmp eq i32 %1183, 0
  br i1 %1184, label %1191, label %1185

1185:                                             ; preds = %1181
  %1186 = load float, ptr %49, align 4, !tbaa !44
  %1187 = fsub float %1117, %1186
  %1188 = load float, ptr %50, align 4, !tbaa !44
  %1189 = fsub float %1188, %1186
  %1190 = fdiv float %1187, %1189
  br label %1191

1191:                                             ; preds = %1185, %1181
  %1192 = phi float [ %1190, %1185 ], [ %1117, %1181 ]
  store float %1192, ptr %52, align 4, !tbaa !44
  %1193 = sitofp i32 %1118 to float
  %1194 = fdiv float %1193, %1113
  store float %1194, ptr %542, align 4, !tbaa !44
  %1195 = load i16, ptr %120, align 8, !tbaa !179
  %1196 = load ptr, ptr %198, align 8, !tbaa !440
  call fastcc void @particle_normal_ren(i16 noundef signext %1195, ptr noundef %110, ptr noundef %0, ptr noundef %1, ptr noundef %1196, ptr noundef nonnull %189, ptr noundef nonnull %39, ptr noundef nonnull %37, ptr noundef nonnull %36, i32 noundef %650, float noundef %873, ptr noundef nonnull %52)
  br label %1197

1197:                                             ; preds = %1191, %1128, %1122
  %1198 = add nuw nsw i32 %1118, 1
  %1199 = fsub float %1117, %1106
  %1200 = icmp eq i32 %1198, %1100
  br i1 %1200, label %1261, label %1116, !llvm.loop !535

1201:                                             ; preds = %1089
  store float %106, ptr %574, align 4, !tbaa !525
  %1202 = trunc i64 %635 to i32
  %1203 = call i32 @psys_get_particle_state(ptr noundef nonnull %38, i32 noundef %1202, ptr noundef nonnull %36, i32 noundef 0) #16
  %1204 = icmp eq i32 %1203, 0
  br i1 %1204, label %1272, label %1205

1205:                                             ; preds = %1201
  %1206 = load ptr, ptr %575, align 8, !tbaa !526
  %1207 = icmp eq ptr %1206, null
  br i1 %1207, label %1210, label %1208

1208:                                             ; preds = %1205
  %1209 = getelementptr inbounds %struct.Object, ptr %1206, i64 0, i32 47
  call void @mul_m4_v3(ptr noundef nonnull %1209, ptr noundef nonnull %36) #16
  br label %1210

1210:                                             ; preds = %1208, %1205
  br i1 %310, label %1212, label %1211

1211:                                             ; preds = %1210
  call void @mul_m4_v3(ptr noundef nonnull %47, ptr noundef nonnull %36) #16
  br label %1212

1212:                                             ; preds = %1211, %1210
  %1213 = load i16, ptr %120, align 8, !tbaa !179
  %1214 = icmp eq i16 %1213, 9
  br i1 %1214, label %1215, label %1258

1215:                                             ; preds = %1212
  store float %651, ptr %576, align 4, !tbaa !527
  %1216 = load float, ptr %577, align 8, !tbaa !44
  store float %1216, ptr %578, align 8, !tbaa !44
  %1217 = load float, ptr %579, align 4, !tbaa !44
  store float %1217, ptr %580, align 4, !tbaa !44
  %1218 = load float, ptr %581, align 8, !tbaa !44
  %1219 = fmul float %872, %1218
  store float %1219, ptr %582, align 8, !tbaa !44
  %1220 = load i16, ptr %583, align 8, !tbaa !445
  %1221 = icmp eq i16 %1220, 4
  br i1 %1221, label %1222, label %1243

1222:                                             ; preds = %1215
  %1223 = load float, ptr %586, align 4, !tbaa !44
  %1224 = load float, ptr %587, align 4, !tbaa !44
  %1225 = fmul float %1224, %1224
  %1226 = call float @llvm.fmuladd.f32(float %1223, float %1223, float %1225)
  %1227 = load float, ptr %588, align 4, !tbaa !44
  %1228 = call float @llvm.fmuladd.f32(float %1227, float %1227, float %1226)
  %1229 = call float @sqrtf(float noundef %1228) #16
  %1230 = load float, ptr %589, align 8, !tbaa !528
  %1231 = fmul float %1229, %1230
  %1232 = load float, ptr %590, align 4, !tbaa !529
  %1233 = fmul float %1229, %1232
  %1234 = load float, ptr %591, align 4, !tbaa !44
  %1235 = call float @llvm.fmuladd.f32(float %1234, float %872, float %1231)
  %1236 = fadd float %1233, %1235
  store float %1236, ptr %592, align 4, !tbaa !44
  %1237 = fcmp ogt float %1236, 0.000000e+00
  br i1 %1237, label %1238, label %1246

1238:                                             ; preds = %1222
  %1239 = fsub float %1231, %1233
  %1240 = fdiv float %1239, %1236
  %1241 = load float, ptr %580, align 4, !tbaa !44
  %1242 = fadd float %1240, %1241
  store float %1242, ptr %580, align 4, !tbaa !44
  br label %1246

1243:                                             ; preds = %1215
  %1244 = load float, ptr %584, align 4, !tbaa !44
  %1245 = fmul float %872, %1244
  store float %1245, ptr %585, align 4, !tbaa !44
  br label %1246

1246:                                             ; preds = %1243, %1238, %1222
  %1247 = load float, ptr %593, align 8, !tbaa !530
  %1248 = load float, ptr %594, align 4, !tbaa !531
  %1249 = fneg float %1248
  %1250 = call float @llvm.fmuladd.f32(float %1249, float %871, float 1.000000e+00)
  %1251 = fmul float %1247, %1250
  store float %1251, ptr %595, align 8, !tbaa !532
  %1252 = load float, ptr %48, align 4, !tbaa !44
  store float %1252, ptr %596, align 8, !tbaa !533
  %1253 = trunc i64 %635 to i32
  store i32 %1253, ptr %597, align 4, !tbaa !534
  %1254 = load float, ptr %50, align 4, !tbaa !44
  %1255 = load float, ptr %49, align 4, !tbaa !44
  %1256 = fsub float %1254, %1255
  %1257 = fptosi float %1256 to i32
  store i32 %1257, ptr %598, align 4, !tbaa !536
  br label %1258

1258:                                             ; preds = %1246, %1212
  %1259 = load i16, ptr %120, align 8, !tbaa !179
  %1260 = load ptr, ptr %198, align 8, !tbaa !440
  call fastcc void @particle_normal_ren(i16 noundef signext %1259, ptr noundef %110, ptr noundef %0, ptr noundef %1, ptr noundef %1260, ptr noundef nonnull %189, ptr noundef nonnull %39, ptr noundef nonnull %37, ptr noundef nonnull %36, i32 noundef %650, float noundef %873, ptr noundef nonnull %52)
  br label %1261

1261:                                             ; preds = %1084, %1197, %1003, %1092, %1258
  %1262 = phi float [ %1001, %1258 ], [ %1001, %1092 ], [ %1001, %1003 ], [ %1001, %1197 ], [ %1085, %1084 ]
  %1263 = phi ptr [ %638, %1258 ], [ %638, %1092 ], [ %638, %1003 ], [ %638, %1197 ], [ %1086, %1084 ]
  br i1 %512, label %1267, label %1264

1264:                                             ; preds = %1261
  %1265 = load ptr, ptr %510, align 8, !tbaa !459
  %1266 = getelementptr inbounds float, ptr %1265, i64 3
  store ptr %1266, ptr %510, align 8, !tbaa !459
  br label %1267

1267:                                             ; preds = %1264, %1261
  %1268 = load ptr, ptr %626, align 8, !tbaa !126
  %1269 = load ptr, ptr %627, align 8, !tbaa !127
  %1270 = call i32 %1268(ptr noundef %1269) #16
  %1271 = icmp eq i32 %1270, 0
  br i1 %1271, label %1272, label %1290

1272:                                             ; preds = %1267, %1201, %856, %728, %653
  %1273 = phi i32 [ %649, %653 ], [ %690, %728 ], [ %867, %1267 ], [ %867, %1201 ], [ %857, %856 ]
  %1274 = phi i8 [ %648, %653 ], [ %648, %728 ], [ %868, %1267 ], [ %868, %1201 ], [ %858, %856 ]
  %1275 = phi i32 [ %647, %653 ], [ %726, %728 ], [ %869, %1267 ], [ %869, %1201 ], [ %860, %856 ]
  %1276 = phi float [ %646, %653 ], [ %718, %728 ], [ %870, %1267 ], [ %870, %1201 ], [ %861, %856 ]
  %1277 = phi float [ %645, %653 ], [ %710, %728 ], [ %871, %1267 ], [ %871, %1201 ], [ %862, %856 ]
  %1278 = phi float [ %644, %653 ], [ %694, %728 ], [ %872, %1267 ], [ %872, %1201 ], [ %863, %856 ]
  %1279 = phi float [ %643, %653 ], [ %667, %728 ], [ %873, %1267 ], [ %873, %1201 ], [ %643, %856 ]
  %1280 = phi float [ %642, %653 ], [ %642, %728 ], [ %1262, %1267 ], [ %1001, %1201 ], [ %642, %856 ]
  %1281 = phi float [ %641, %653 ], [ %641, %728 ], [ %1002, %1267 ], [ %1002, %1201 ], [ %641, %856 ]
  %1282 = phi ptr [ %640, %653 ], [ %640, %728 ], [ %966, %1267 ], [ %966, %1201 ], [ %640, %856 ]
  %1283 = phi ptr [ %639, %653 ], [ %639, %728 ], [ %874, %1267 ], [ %874, %1201 ], [ %864, %856 ]
  %1284 = phi ptr [ %638, %653 ], [ %638, %728 ], [ %1263, %1267 ], [ %638, %1201 ], [ %638, %856 ]
  %1285 = phi ptr [ %637, %653 ], [ %727, %728 ], [ %875, %1267 ], [ %875, %1201 ], [ %865, %856 ]
  %1286 = add nuw nsw i64 %635, 1
  %1287 = getelementptr inbounds %struct.ParticleData, ptr %636, i64 1
  %1288 = add nuw nsw i32 %650, 1
  %1289 = icmp eq i64 %1286, %631
  br i1 %1289, label %1290, label %634, !llvm.loop !537

1290:                                             ; preds = %1272, %1267, %521
  %1291 = icmp eq i8 %504, 0
  br i1 %1291, label %1296, label %1292

1292:                                             ; preds = %1290
  %1293 = load ptr, ptr %198, align 8, !tbaa !440
  %1294 = call ptr @cache_strand_surface(ptr noundef %0, ptr noundef %1, ptr noundef %1293, ptr noundef nonnull %43, i32 noundef %2) #16
  %1295 = getelementptr inbounds %struct.StrandBuffer, ptr %509, i64 0, i32 8
  store ptr %1294, ptr %1295, align 8, !tbaa !239
  br label %1296

1296:                                             ; preds = %1292, %1290
  br i1 %512, label %1297, label %1300

1297:                                             ; preds = %1296
  %1298 = load ptr, ptr @MEM_freeN, align 8, !tbaa !77
  %1299 = load ptr, ptr %510, align 8, !tbaa !459
  call void %1298(ptr noundef %1299) #16
  br label %1300

1300:                                             ; preds = %1297, %1296
  %1301 = getelementptr inbounds %struct.ParticleStrandData, ptr %39, i64 0, i32 2
  %1302 = load ptr, ptr %1301, align 8, !tbaa !443
  %1303 = icmp eq ptr %1302, null
  br i1 %1303, label %1306, label %1304

1304:                                             ; preds = %1300
  %1305 = load ptr, ptr @MEM_freeN, align 8, !tbaa !77
  call void %1305(ptr noundef nonnull %1302) #16
  br label %1306

1306:                                             ; preds = %1304, %1300
  %1307 = load ptr, ptr %39, align 8, !tbaa !444
  %1308 = icmp eq ptr %1307, null
  br i1 %1308, label %1311, label %1309

1309:                                             ; preds = %1306
  %1310 = load ptr, ptr @MEM_freeN, align 8, !tbaa !77
  call void %1310(ptr noundef nonnull %1307) #16
  br label %1311

1311:                                             ; preds = %1309, %1306
  call void @BLI_rng_free(ptr noundef %183) #16
  %1312 = load i32, ptr %178, align 4, !tbaa !278
  %1313 = and i32 %1312, -65
  store i32 %1313, ptr %178, align 4, !tbaa !278
  %1314 = getelementptr inbounds %struct.ParticleSystem, ptr %99, i64 0, i32 15
  %1315 = load ptr, ptr %1314, align 8, !tbaa !489
  %1316 = icmp eq ptr %1315, null
  br i1 %1316, label %1318, label %1317

1317:                                             ; preds = %1311
  call void @end_latt_deform(ptr noundef nonnull %1315) #16
  store ptr null, ptr %1314, align 8, !tbaa !489
  br label %1318

1318:                                             ; preds = %1317, %1311
  br i1 %517, label %1325, label %1319

1319:                                             ; preds = %1318
  %1320 = getelementptr inbounds %struct.Material, ptr %189, i64 0, i32 52
  %1321 = load i32, ptr %1320, align 8, !tbaa !509
  %1322 = and i32 %1321, 16777216
  %1323 = icmp eq i32 %1322, 0
  br i1 %1323, label %1324, label %1325

1324:                                             ; preds = %1319
  call fastcc void @calc_vertexnormals(ptr noundef %1, i8 noundef zeroext 1, i8 noundef zeroext 0, i8 noundef zeroext 0)
  br label %1325

1325:                                             ; preds = %102, %108, %116, %119, %119, %119, %127, %132, %1318, %1319, %1324
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %52) #16
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %51) #16
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %50) #16
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %49) #16
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %48) #16
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %47) #16
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %46) #16
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %45) #16
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %44) #16
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %43) #16
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %42) #16
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %41) #16
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %40) #16
  call void @llvm.lifetime.end.p0(i64 72, ptr nonnull %39) #16
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %38) #16
  call void @llvm.lifetime.end.p0(i64 96, ptr nonnull %37) #16
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %36) #16
  br label %4098

1326:                                             ; preds = %3
  %1327 = getelementptr inbounds %struct.Object, ptr %54, i64 0, i32 3
  %1328 = load i16, ptr %1327, align 8, !tbaa !167
  switch i16 %1328, label %4098 [
    i16 4, label %1329
    i16 2, label %1329
    i16 3, label %2001
    i16 1, label %2121
    i16 5, label %3897
  ]

1329:                                             ; preds = %1326, %1326
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %25) #16
  store ptr null, ptr %25, align 8, !tbaa !77
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %26) #16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %26, i8 0, i64 16, i1 false)
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %27) #16
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %28) #16
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %29) #16
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %30) #16
  %1330 = getelementptr inbounds %struct.Object, ptr %54, i64 0, i32 19
  %1331 = load ptr, ptr %1330, align 8, !tbaa !296
  switch i16 %1328, label %1342 [
    i16 4, label %1332
    i16 2, label %1338
  ]

1332:                                             ; preds = %1329
  %1333 = getelementptr inbounds %struct.Curve, ptr %1331, i64 0, i32 52
  %1334 = load ptr, ptr %1333, align 8, !tbaa !538
  %1335 = icmp eq ptr %1334, null
  br i1 %1335, label %2000, label %1336

1336:                                             ; preds = %1332
  %1337 = icmp eq i16 %1328, 2
  br i1 %1337, label %1338, label %1342

1338:                                             ; preds = %1329, %1336
  %1339 = getelementptr inbounds %struct.Curve, ptr %1331, i64 0, i32 3
  %1340 = load ptr, ptr %1339, align 8, !tbaa !541
  %1341 = icmp eq ptr %1340, null
  br i1 %1341, label %2000, label %1342

1342:                                             ; preds = %1329, %1338, %1336
  %1343 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 44
  %1344 = load ptr, ptr %1343, align 8, !tbaa !64
  call void @BKE_displist_make_curveTypes_forRender(ptr noundef %1344, ptr noundef %54, ptr noundef nonnull %26, ptr noundef nonnull %25, i8 noundef zeroext 0, i8 noundef zeroext 1) #16
  %1345 = load ptr, ptr %26, align 8, !tbaa !209
  %1346 = icmp eq ptr %1345, null
  br i1 %1346, label %2000, label %1347

1347:                                             ; preds = %1342
  %1348 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 32
  %1349 = getelementptr inbounds %struct.Object, ptr %54, i64 0, i32 47
  call void @mul_m4_m4m4(ptr noundef nonnull %28, ptr noundef nonnull %1348, ptr noundef nonnull %1349) #16
  %1350 = getelementptr inbounds %struct.Object, ptr %54, i64 0, i32 50
  %1351 = call zeroext i8 @invert_m4_m4(ptr noundef nonnull %1350, ptr noundef nonnull %28) #16
  %1352 = call zeroext i8 @is_negative_m4(ptr noundef nonnull %28) #16
  call void @copy_m4_m4(ptr noundef nonnull %29, ptr noundef nonnull %28) #16
  call void @transpose_m4(ptr noundef nonnull %29) #16
  %1353 = call zeroext i8 @invert_m4(ptr noundef nonnull %29) #16
  %1354 = getelementptr inbounds %struct.Object, ptr %54, i64 0, i32 31
  %1355 = load i32, ptr %1354, align 8, !tbaa !276
  %1356 = add nsw i32 %1355, 1
  %1357 = load ptr, ptr @MEM_callocN, align 8, !tbaa !77
  %1358 = sext i32 %1356 to i64
  %1359 = shl nsw i64 %1358, 3
  %1360 = call ptr %1357(i64 noundef %1359, ptr noundef nonnull @.str.19) #16
  %1361 = icmp slt i32 %1355, 0
  br i1 %1361, label %1378, label %1362

1362:                                             ; preds = %1347
  %1363 = add nuw i32 %1355, 1
  %1364 = zext i32 %1363 to i64
  br label %1365

1365:                                             ; preds = %1362, %1365
  %1366 = phi i64 [ 0, %1362 ], [ %1368, %1365 ]
  %1367 = phi i8 [ 0, %1362 ], [ %1376, %1365 ]
  %1368 = add nuw nsw i64 %1366, 1
  %1369 = trunc i64 %1368 to i16
  %1370 = call fastcc ptr @give_render_material(ptr noundef %0, ptr noundef %54, i16 noundef signext %1369)
  %1371 = getelementptr inbounds ptr, ptr %1360, i64 %1366
  store ptr %1370, ptr %1371, align 8, !tbaa !77
  %1372 = getelementptr inbounds %struct.Material, ptr %1370, i64 0, i32 90
  %1373 = load i16, ptr %1372, align 4, !tbaa !270
  %1374 = and i16 %1373, 1
  %1375 = icmp eq i16 %1374, 0
  %1376 = select i1 %1375, i8 %1367, i8 1
  %1377 = icmp eq i64 %1368, %1364
  br i1 %1377, label %1378, label %1365, !llvm.loop !542

1378:                                             ; preds = %1365, %1347
  %1379 = phi i8 [ 0, %1347 ], [ %1376, %1365 ]
  %1380 = load ptr, ptr %25, align 8, !tbaa !77
  %1381 = icmp eq ptr %1380, null
  %1382 = icmp eq i8 %1379, 0
  br i1 %1381, label %1411, label %1383

1383:                                             ; preds = %1378
  br i1 %1382, label %1405, label %1384

1384:                                             ; preds = %1383
  %1385 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 73
  %1386 = load ptr, ptr %1385, align 8, !tbaa !111
  %1387 = icmp eq ptr %1386, null
  br i1 %1387, label %1390, label %1388

1388:                                             ; preds = %1384
  %1389 = call ptr @BLI_ghash_lookup(ptr noundef nonnull %1386, ptr noundef %54) #16
  br label %1390

1390:                                             ; preds = %1388, %1384
  %1391 = phi ptr [ %1389, %1388 ], [ null, %1384 ]
  %1392 = icmp eq ptr %1391, null
  br i1 %1392, label %1393, label %1405

1393:                                             ; preds = %1390
  %1394 = load ptr, ptr %1343, align 8, !tbaa !64
  %1395 = load ptr, ptr %25, align 8, !tbaa !77
  %1396 = call ptr @BKE_displist_make_orco(ptr noundef %1394, ptr noundef %54, ptr noundef %1395, i8 noundef zeroext 1, i8 noundef zeroext 1) #16
  %1397 = icmp eq ptr %1396, null
  br i1 %1397, label %1405, label %1398

1398:                                             ; preds = %1393
  %1399 = load ptr, ptr %1385, align 8, !tbaa !111
  %1400 = icmp eq ptr %1399, null
  br i1 %1400, label %1401, label %1403

1401:                                             ; preds = %1398
  %1402 = call ptr @BLI_ghash_ptr_new(ptr noundef nonnull @.str.18) #16
  store ptr %1402, ptr %1385, align 8, !tbaa !111
  br label %1403

1403:                                             ; preds = %1401, %1398
  %1404 = load ptr, ptr %1385, align 8, !tbaa !111
  call void @BLI_ghash_insert(ptr noundef %1404, ptr noundef %54, ptr noundef nonnull %1396) #16
  br label %1405

1405:                                             ; preds = %1403, %1393, %1390, %1383
  %1406 = phi ptr [ %1391, %1390 ], [ %1396, %1403 ], [ null, %1393 ], [ null, %1383 ]
  %1407 = load ptr, ptr %25, align 8, !tbaa !77
  call fastcc void @init_render_dm(ptr noundef %1407, ptr noundef %0, ptr noundef %1, i32 noundef %2, ptr noundef %1406, ptr noundef nonnull %28)
  %1408 = load ptr, ptr %25, align 8, !tbaa !77
  %1409 = getelementptr inbounds %struct.DerivedMesh, ptr %1408, i64 0, i32 95
  %1410 = load ptr, ptr %1409, align 8, !tbaa !283
  call void %1410(ptr noundef %1408) #16
  br label %1998

1411:                                             ; preds = %1378
  br i1 %1382, label %1430, label %1412

1412:                                             ; preds = %1411
  %1413 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 73
  %1414 = load ptr, ptr %1413, align 8, !tbaa !111
  %1415 = icmp eq ptr %1414, null
  br i1 %1415, label %1418, label %1416

1416:                                             ; preds = %1412
  %1417 = call ptr @BLI_ghash_lookup(ptr noundef nonnull %1414, ptr noundef %54) #16
  br label %1418

1418:                                             ; preds = %1416, %1412
  %1419 = phi ptr [ %1417, %1416 ], [ null, %1412 ]
  %1420 = icmp eq ptr %1419, null
  br i1 %1420, label %1421, label %1430

1421:                                             ; preds = %1418
  %1422 = load ptr, ptr %1343, align 8, !tbaa !64
  %1423 = call ptr @BKE_curve_make_orco(ptr noundef %1422, ptr noundef %54, ptr noundef null) #16
  %1424 = load ptr, ptr %1413, align 8, !tbaa !111
  %1425 = icmp eq ptr %1424, null
  br i1 %1425, label %1426, label %1428

1426:                                             ; preds = %1421
  %1427 = call ptr @BLI_ghash_ptr_new(ptr noundef nonnull @.str.18) #16
  store ptr %1427, ptr %1413, align 8, !tbaa !111
  br label %1428

1428:                                             ; preds = %1426, %1421
  %1429 = load ptr, ptr %1413, align 8, !tbaa !111
  call void @BLI_ghash_insert(ptr noundef %1429, ptr noundef %54, ptr noundef %1423) #16
  br label %1430

1430:                                             ; preds = %1428, %1418, %1411
  %1431 = phi ptr [ %1419, %1418 ], [ %1423, %1428 ], [ null, %1411 ]
  %1432 = getelementptr inbounds %struct.ObjectRen, ptr %1, i64 0, i32 10
  %1433 = icmp eq i32 %2, 0
  %1434 = getelementptr inbounds %struct.ObjectRen, ptr %1, i64 0, i32 11
  %1435 = getelementptr inbounds %struct.ObjectRen, ptr %1, i64 0, i32 10
  %1436 = icmp eq i32 %2, 0
  %1437 = getelementptr inbounds %struct.ObjectRen, ptr %1, i64 0, i32 11
  %1438 = getelementptr inbounds float, ptr %27, i64 1
  %1439 = getelementptr inbounds float, ptr %27, i64 2
  %1440 = icmp eq i8 %1352, 0
  %1441 = getelementptr inbounds float, ptr %31, i64 1
  %1442 = getelementptr inbounds float, ptr %31, i64 2
  br label %1443

1443:                                             ; preds = %1430, %1994
  %1444 = phi ptr [ %1345, %1430 ], [ %1996, %1994 ]
  %1445 = phi ptr [ %1431, %1430 ], [ %1995, %1994 ]
  %1446 = getelementptr inbounds %struct.DispList, ptr %1444, i64 0, i32 6
  %1447 = load i16, ptr %1446, align 4, !tbaa !543
  %1448 = sext i16 %1447 to i32
  %1449 = load i32, ptr %1354, align 8, !tbaa !276
  %1450 = icmp slt i32 %1449, %1448
  br i1 %1450, label %1994, label %1451

1451:                                             ; preds = %1443
  %1452 = getelementptr inbounds %struct.DispList, ptr %1444, i64 0, i32 2
  %1453 = load i16, ptr %1452, align 8, !tbaa !545
  switch i16 %1453, label %1994 [
    i16 4, label %1454
    i16 2, label %1661
  ]

1454:                                             ; preds = %1451
  %1455 = load i32, ptr %1435, align 8, !tbaa !211
  %1456 = getelementptr inbounds %struct.DispList, ptr %1444, i64 0, i32 8
  %1457 = getelementptr inbounds %struct.DispList, ptr %1444, i64 0, i32 5
  %1458 = load i32, ptr %1457, align 8, !tbaa !546
  %1459 = icmp sgt i32 %1458, 0
  br i1 %1459, label %1460, label %1486

1460:                                             ; preds = %1454
  %1461 = load ptr, ptr %1456, align 8, !tbaa !547
  br label %1462

1462:                                             ; preds = %1460, %1480
  %1463 = phi ptr [ %1483, %1480 ], [ %1461, %1460 ]
  %1464 = phi ptr [ %1481, %1480 ], [ %1445, %1460 ]
  %1465 = phi i32 [ %1482, %1480 ], [ 0, %1460 ]
  %1466 = load i32, ptr %1435, align 8, !tbaa !211
  %1467 = add nsw i32 %1466, 1
  store i32 %1467, ptr %1435, align 8, !tbaa !211
  %1468 = call ptr @RE_findOrAddVert(ptr noundef %1, i32 noundef %1466) #16
  %1469 = load float, ptr %1463, align 4, !tbaa !44
  store float %1469, ptr %1468, align 4, !tbaa !44
  %1470 = getelementptr inbounds float, ptr %1463, i64 1
  %1471 = load float, ptr %1470, align 4, !tbaa !44
  %1472 = getelementptr inbounds float, ptr %1468, i64 1
  store float %1471, ptr %1472, align 4, !tbaa !44
  %1473 = getelementptr inbounds float, ptr %1463, i64 2
  %1474 = load float, ptr %1473, align 4, !tbaa !44
  %1475 = getelementptr inbounds float, ptr %1468, i64 2
  store float %1474, ptr %1475, align 4, !tbaa !44
  call void @mul_m4_v3(ptr noundef nonnull %28, ptr noundef nonnull %1468) #16
  %1476 = icmp eq ptr %1464, null
  br i1 %1476, label %1480, label %1477

1477:                                             ; preds = %1462
  %1478 = getelementptr inbounds %struct.VertRen, ptr %1468, i64 0, i32 2
  store ptr %1464, ptr %1478, align 8, !tbaa !548
  %1479 = getelementptr inbounds float, ptr %1464, i64 3
  br label %1480

1480:                                             ; preds = %1477, %1462
  %1481 = phi ptr [ %1479, %1477 ], [ null, %1462 ]
  %1482 = add nuw nsw i32 %1465, 1
  %1483 = getelementptr inbounds float, ptr %1463, i64 3
  %1484 = load i32, ptr %1457, align 8, !tbaa !546
  %1485 = icmp slt i32 %1482, %1484
  br i1 %1485, label %1462, label %1486, !llvm.loop !550

1486:                                             ; preds = %1480, %1454
  %1487 = phi ptr [ %1445, %1454 ], [ %1481, %1480 ]
  br i1 %1436, label %1488, label %1994

1488:                                             ; preds = %1486
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %31) #16
  %1489 = load i32, ptr %1437, align 4, !tbaa !293
  store float 0.000000e+00, ptr %27, align 4, !tbaa !44
  store float 0.000000e+00, ptr %1438, align 4, !tbaa !44
  store float 0.000000e+00, ptr %1439, align 4, !tbaa !44
  %1490 = getelementptr inbounds %struct.DispList, ptr %1444, i64 0, i32 4
  %1491 = load i32, ptr %1490, align 4, !tbaa !551
  %1492 = icmp sgt i32 %1491, 0
  br i1 %1492, label %1493, label %1555

1493:                                             ; preds = %1488
  %1494 = getelementptr inbounds %struct.DispList, ptr %1444, i64 0, i32 10
  %1495 = load ptr, ptr %1494, align 8, !tbaa !552
  br label %1496

1496:                                             ; preds = %1493, %1543
  %1497 = phi ptr [ %1552, %1543 ], [ %1495, %1493 ]
  %1498 = phi i32 [ %1551, %1543 ], [ 0, %1493 ]
  %1499 = load i32, ptr %1497, align 4, !tbaa !80
  %1500 = getelementptr inbounds i32, ptr %1497, i64 2
  %1501 = load i32, ptr %1500, align 4, !tbaa !80
  %1502 = getelementptr inbounds i32, ptr %1497, i64 1
  %1503 = load i32, ptr %1502, align 4, !tbaa !80
  %1504 = load ptr, ptr %1456, align 8, !tbaa !547
  %1505 = mul nsw i32 %1499, 3
  %1506 = sext i32 %1505 to i64
  %1507 = getelementptr inbounds float, ptr %1504, i64 %1506
  %1508 = mul nsw i32 %1501, 3
  %1509 = sext i32 %1508 to i64
  %1510 = getelementptr inbounds float, ptr %1504, i64 %1509
  %1511 = mul nsw i32 %1503, 3
  %1512 = sext i32 %1511 to i64
  %1513 = getelementptr inbounds float, ptr %1504, i64 %1512
  %1514 = load i32, ptr %1437, align 4, !tbaa !293
  %1515 = add nsw i32 %1514, 1
  store i32 %1515, ptr %1437, align 4, !tbaa !293
  %1516 = call ptr @RE_findOrAddVlak(ptr noundef %1, i32 noundef %1514) #16
  %1517 = add nsw i32 %1499, %1455
  %1518 = call ptr @RE_findOrAddVert(ptr noundef %1, i32 noundef %1517) #16
  store ptr %1518, ptr %1516, align 8, !tbaa !553
  %1519 = add nsw i32 %1501, %1455
  %1520 = call ptr @RE_findOrAddVert(ptr noundef %1, i32 noundef %1519) #16
  %1521 = getelementptr inbounds %struct.VlakRen, ptr %1516, i64 0, i32 1
  store ptr %1520, ptr %1521, align 8, !tbaa !555
  %1522 = add nsw i32 %1503, %1455
  %1523 = call ptr @RE_findOrAddVert(ptr noundef %1, i32 noundef %1522) #16
  %1524 = getelementptr inbounds %struct.VlakRen, ptr %1516, i64 0, i32 2
  store ptr %1523, ptr %1524, align 8, !tbaa !556
  %1525 = getelementptr inbounds %struct.VlakRen, ptr %1516, i64 0, i32 3
  store ptr null, ptr %1525, align 8, !tbaa !557
  %1526 = call float @area_tri_v3(ptr noundef %1513, ptr noundef %1510, ptr noundef %1507) #16
  %1527 = fcmp ogt float %1526, 0x3E80000000000000
  br i1 %1527, label %1528, label %1543

1528:                                             ; preds = %1496
  br i1 %1440, label %1531, label %1529

1529:                                             ; preds = %1528
  %1530 = call float @normal_tri_v3(ptr noundef nonnull %31, ptr noundef %1507, ptr noundef %1510, ptr noundef %1513) #16
  br label %1533

1531:                                             ; preds = %1528
  %1532 = call float @normal_tri_v3(ptr noundef nonnull %31, ptr noundef %1513, ptr noundef %1510, ptr noundef %1507) #16
  br label %1533

1533:                                             ; preds = %1531, %1529
  %1534 = load float, ptr %31, align 4, !tbaa !44
  %1535 = load float, ptr %27, align 4, !tbaa !44
  %1536 = fadd float %1534, %1535
  store float %1536, ptr %27, align 4, !tbaa !44
  %1537 = load float, ptr %1441, align 4, !tbaa !44
  %1538 = load float, ptr %1438, align 4, !tbaa !44
  %1539 = fadd float %1537, %1538
  store float %1539, ptr %1438, align 4, !tbaa !44
  %1540 = load float, ptr %1442, align 4, !tbaa !44
  %1541 = load float, ptr %1439, align 4, !tbaa !44
  %1542 = fadd float %1540, %1541
  store float %1542, ptr %1439, align 4, !tbaa !44
  br label %1543

1543:                                             ; preds = %1533, %1496
  %1544 = load i16, ptr %1446, align 4, !tbaa !543
  %1545 = sext i16 %1544 to i64
  %1546 = getelementptr inbounds ptr, ptr %1360, i64 %1545
  %1547 = load ptr, ptr %1546, align 8, !tbaa !77
  %1548 = getelementptr inbounds %struct.VlakRen, ptr %1516, i64 0, i32 5
  store ptr %1547, ptr %1548, align 8, !tbaa !558
  %1549 = getelementptr inbounds %struct.VlakRen, ptr %1516, i64 0, i32 7
  store i8 0, ptr %1549, align 1, !tbaa !559
  %1550 = getelementptr inbounds %struct.VlakRen, ptr %1516, i64 0, i32 8
  store i8 0, ptr %1550, align 2, !tbaa !560
  %1551 = add nuw nsw i32 %1498, 1
  %1552 = getelementptr inbounds i32, ptr %1497, i64 3
  %1553 = load i32, ptr %1490, align 4, !tbaa !551
  %1554 = icmp slt i32 %1551, %1553
  br i1 %1554, label %1496, label %1555, !llvm.loop !561

1555:                                             ; preds = %1543, %1488
  call void @mul_m4_v3(ptr noundef nonnull %29, ptr noundef nonnull %27) #16
  %1556 = load float, ptr %27, align 4, !tbaa !44
  %1557 = load float, ptr %1438, align 4, !tbaa !44
  %1558 = fmul float %1557, %1557
  %1559 = call float @llvm.fmuladd.f32(float %1556, float %1556, float %1558)
  %1560 = load float, ptr %1439, align 4, !tbaa !44
  %1561 = call float @llvm.fmuladd.f32(float %1560, float %1560, float %1559)
  %1562 = fcmp ogt float %1561, 0x38AA95A5C0000000
  br i1 %1562, label %1563, label %1572

1563:                                             ; preds = %1555
  %1564 = call float @sqrtf(float noundef %1561) #16
  %1565 = fdiv float 1.000000e+00, %1564
  %1566 = load float, ptr %27, align 4, !tbaa !44
  %1567 = fmul float %1566, %1565
  store float %1567, ptr %27, align 4, !tbaa !44
  %1568 = load float, ptr %1438, align 4, !tbaa !44
  %1569 = fmul float %1565, %1568
  store float %1569, ptr %1438, align 4, !tbaa !44
  %1570 = load float, ptr %1439, align 4, !tbaa !44
  %1571 = fmul float %1565, %1570
  br label %1573

1572:                                             ; preds = %1555
  store float 0.000000e+00, ptr %27, align 4, !tbaa !44
  store float 0.000000e+00, ptr %1438, align 4, !tbaa !44
  br label %1573

1573:                                             ; preds = %1572, %1563
  %1574 = phi float [ 0.000000e+00, %1572 ], [ %1571, %1563 ]
  store float %1574, ptr %1439, align 4, !tbaa !44
  %1575 = load i32, ptr %1437, align 4, !tbaa !293
  %1576 = icmp slt i32 %1489, %1575
  br i1 %1576, label %1580, label %1577

1577:                                             ; preds = %1580, %1573
  %1578 = load i32, ptr %1435, align 8, !tbaa !211
  %1579 = icmp slt i32 %1455, %1578
  br i1 %1579, label %1632, label %1660

1580:                                             ; preds = %1573, %1580
  %1581 = phi i32 [ %1629, %1580 ], [ %1489, %1573 ]
  %1582 = call ptr @RE_findOrAddVlak(ptr noundef %1, i32 noundef %1581) #16
  %1583 = getelementptr inbounds %struct.VlakRen, ptr %1582, i64 0, i32 4
  %1584 = load float, ptr %27, align 4, !tbaa !44
  store float %1584, ptr %1583, align 4, !tbaa !44
  %1585 = load float, ptr %1438, align 4, !tbaa !44
  %1586 = getelementptr inbounds %struct.VlakRen, ptr %1582, i64 0, i32 4, i64 1
  store float %1585, ptr %1586, align 4, !tbaa !44
  %1587 = load float, ptr %1439, align 4, !tbaa !44
  %1588 = getelementptr inbounds %struct.VlakRen, ptr %1582, i64 0, i32 4, i64 2
  store float %1587, ptr %1588, align 4, !tbaa !44
  %1589 = load ptr, ptr %1582, align 8, !tbaa !553
  %1590 = getelementptr inbounds %struct.VertRen, ptr %1589, i64 0, i32 1
  %1591 = load float, ptr %1590, align 4, !tbaa !44
  %1592 = fadd float %1584, %1591
  store float %1592, ptr %1590, align 4, !tbaa !44
  %1593 = load float, ptr %1586, align 4, !tbaa !44
  %1594 = getelementptr inbounds %struct.VertRen, ptr %1589, i64 0, i32 1, i64 1
  %1595 = load float, ptr %1594, align 4, !tbaa !44
  %1596 = fadd float %1593, %1595
  store float %1596, ptr %1594, align 4, !tbaa !44
  %1597 = load float, ptr %1588, align 4, !tbaa !44
  %1598 = getelementptr inbounds %struct.VertRen, ptr %1589, i64 0, i32 1, i64 2
  %1599 = load float, ptr %1598, align 4, !tbaa !44
  %1600 = fadd float %1597, %1599
  store float %1600, ptr %1598, align 4, !tbaa !44
  %1601 = getelementptr inbounds %struct.VlakRen, ptr %1582, i64 0, i32 2
  %1602 = load ptr, ptr %1601, align 8, !tbaa !556
  %1603 = getelementptr inbounds %struct.VertRen, ptr %1602, i64 0, i32 1
  %1604 = load float, ptr %1583, align 4, !tbaa !44
  %1605 = load float, ptr %1603, align 4, !tbaa !44
  %1606 = fadd float %1604, %1605
  store float %1606, ptr %1603, align 4, !tbaa !44
  %1607 = load float, ptr %1586, align 4, !tbaa !44
  %1608 = getelementptr inbounds %struct.VertRen, ptr %1602, i64 0, i32 1, i64 1
  %1609 = load float, ptr %1608, align 4, !tbaa !44
  %1610 = fadd float %1607, %1609
  store float %1610, ptr %1608, align 4, !tbaa !44
  %1611 = load float, ptr %1588, align 4, !tbaa !44
  %1612 = getelementptr inbounds %struct.VertRen, ptr %1602, i64 0, i32 1, i64 2
  %1613 = load float, ptr %1612, align 4, !tbaa !44
  %1614 = fadd float %1611, %1613
  store float %1614, ptr %1612, align 4, !tbaa !44
  %1615 = getelementptr inbounds %struct.VlakRen, ptr %1582, i64 0, i32 1
  %1616 = load ptr, ptr %1615, align 8, !tbaa !555
  %1617 = getelementptr inbounds %struct.VertRen, ptr %1616, i64 0, i32 1
  %1618 = load float, ptr %1583, align 4, !tbaa !44
  %1619 = load float, ptr %1617, align 4, !tbaa !44
  %1620 = fadd float %1618, %1619
  store float %1620, ptr %1617, align 4, !tbaa !44
  %1621 = load float, ptr %1586, align 4, !tbaa !44
  %1622 = getelementptr inbounds %struct.VertRen, ptr %1616, i64 0, i32 1, i64 1
  %1623 = load float, ptr %1622, align 4, !tbaa !44
  %1624 = fadd float %1621, %1623
  store float %1624, ptr %1622, align 4, !tbaa !44
  %1625 = load float, ptr %1588, align 4, !tbaa !44
  %1626 = getelementptr inbounds %struct.VertRen, ptr %1616, i64 0, i32 1, i64 2
  %1627 = load float, ptr %1626, align 4, !tbaa !44
  %1628 = fadd float %1625, %1627
  store float %1628, ptr %1626, align 4, !tbaa !44
  %1629 = add nsw i32 %1581, 1
  %1630 = load i32, ptr %1437, align 4, !tbaa !293
  %1631 = icmp slt i32 %1629, %1630
  br i1 %1631, label %1580, label %1577, !llvm.loop !562

1632:                                             ; preds = %1577, %1655
  %1633 = phi i32 [ %1657, %1655 ], [ %1455, %1577 ]
  %1634 = call ptr @RE_findOrAddVert(ptr noundef %1, i32 noundef %1633) #16
  %1635 = getelementptr inbounds %struct.VertRen, ptr %1634, i64 0, i32 1
  %1636 = load float, ptr %1635, align 4, !tbaa !44
  %1637 = getelementptr inbounds %struct.VertRen, ptr %1634, i64 0, i32 1, i64 1
  %1638 = load float, ptr %1637, align 4, !tbaa !44
  %1639 = fmul float %1638, %1638
  %1640 = call float @llvm.fmuladd.f32(float %1636, float %1636, float %1639)
  %1641 = getelementptr inbounds %struct.VertRen, ptr %1634, i64 0, i32 1, i64 2
  %1642 = load float, ptr %1641, align 4, !tbaa !44
  %1643 = call float @llvm.fmuladd.f32(float %1642, float %1642, float %1640)
  %1644 = fcmp ogt float %1643, 0x38AA95A5C0000000
  br i1 %1644, label %1645, label %1654

1645:                                             ; preds = %1632
  %1646 = call float @sqrtf(float noundef %1643) #16
  %1647 = fdiv float 1.000000e+00, %1646
  %1648 = load float, ptr %1635, align 4, !tbaa !44
  %1649 = fmul float %1648, %1647
  store float %1649, ptr %1635, align 4, !tbaa !44
  %1650 = load float, ptr %1637, align 4, !tbaa !44
  %1651 = fmul float %1647, %1650
  store float %1651, ptr %1637, align 4, !tbaa !44
  %1652 = load float, ptr %1641, align 4, !tbaa !44
  %1653 = fmul float %1647, %1652
  br label %1655

1654:                                             ; preds = %1632
  store float 0.000000e+00, ptr %1635, align 4, !tbaa !44
  store float 0.000000e+00, ptr %1637, align 4, !tbaa !44
  br label %1655

1655:                                             ; preds = %1654, %1645
  %1656 = phi float [ 0.000000e+00, %1654 ], [ %1653, %1645 ]
  store float %1656, ptr %1641, align 4, !tbaa !44
  %1657 = add nsw i32 %1633, 1
  %1658 = load i32, ptr %1435, align 8, !tbaa !211
  %1659 = icmp slt i32 %1657, %1658
  br i1 %1659, label %1632, label %1660, !llvm.loop !563

1660:                                             ; preds = %1655, %1577
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %31) #16
  br label %1994

1661:                                             ; preds = %1451
  %1662 = getelementptr inbounds %struct.DispList, ptr %1444, i64 0, i32 3
  %1663 = load i16, ptr %1662, align 2, !tbaa !564
  %1664 = and i16 %1663, 1
  %1665 = icmp eq i16 %1664, 0
  br i1 %1665, label %1671, label %1666

1666:                                             ; preds = %1661
  %1667 = call fastcc i32 @dl_surf_to_renderdata(ptr noundef %1, ptr noundef nonnull %1444, ptr noundef %1360, ptr noundef %1445, ptr noundef nonnull %28)
  %1668 = mul nsw i32 %1667, 3
  %1669 = sext i32 %1668 to i64
  %1670 = getelementptr inbounds float, ptr %1445, i64 %1669
  br label %1994

1671:                                             ; preds = %1661
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %32) #16
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %33) #16
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %34) #16
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %35) #16
  %1672 = getelementptr inbounds %struct.DispList, ptr %1444, i64 0, i32 8
  %1673 = load i32, ptr %1432, align 8, !tbaa !211
  %1674 = getelementptr inbounds %struct.DispList, ptr %1444, i64 0, i32 5
  %1675 = load i32, ptr %1674, align 8, !tbaa !546
  %1676 = getelementptr inbounds %struct.DispList, ptr %1444, i64 0, i32 4
  %1677 = load i32, ptr %1676, align 4, !tbaa !551
  %1678 = mul nsw i32 %1677, %1675
  %1679 = icmp eq i32 %1678, 0
  br i1 %1679, label %1705, label %1680

1680:                                             ; preds = %1671
  %1681 = load ptr, ptr %1672, align 8, !tbaa !547
  br label %1682

1682:                                             ; preds = %1680, %1702
  %1683 = phi i32 [ %1686, %1702 ], [ %1678, %1680 ]
  %1684 = phi ptr [ %1697, %1702 ], [ %1681, %1680 ]
  %1685 = phi ptr [ %1703, %1702 ], [ %1445, %1680 ]
  %1686 = add nsw i32 %1683, -1
  %1687 = load i32, ptr %1432, align 8, !tbaa !211
  %1688 = add nsw i32 %1687, 1
  store i32 %1688, ptr %1432, align 8, !tbaa !211
  %1689 = call ptr @RE_findOrAddVert(ptr noundef %1, i32 noundef %1687) #16
  %1690 = load float, ptr %1684, align 4, !tbaa !44
  store float %1690, ptr %1689, align 4, !tbaa !44
  %1691 = getelementptr inbounds float, ptr %1684, i64 1
  %1692 = load float, ptr %1691, align 4, !tbaa !44
  %1693 = getelementptr inbounds float, ptr %1689, i64 1
  store float %1692, ptr %1693, align 4, !tbaa !44
  %1694 = getelementptr inbounds float, ptr %1684, i64 2
  %1695 = load float, ptr %1694, align 4, !tbaa !44
  %1696 = getelementptr inbounds float, ptr %1689, i64 2
  store float %1695, ptr %1696, align 4, !tbaa !44
  call void @mul_m4_v3(ptr noundef nonnull %28, ptr noundef nonnull %1689) #16
  %1697 = getelementptr inbounds float, ptr %1684, i64 3
  %1698 = icmp eq ptr %1685, null
  br i1 %1698, label %1702, label %1699

1699:                                             ; preds = %1682
  %1700 = getelementptr inbounds %struct.VertRen, ptr %1689, i64 0, i32 2
  store ptr %1685, ptr %1700, align 8, !tbaa !548
  %1701 = getelementptr inbounds float, ptr %1685, i64 3
  br label %1702

1702:                                             ; preds = %1699, %1682
  %1703 = phi ptr [ %1701, %1699 ], [ null, %1682 ]
  %1704 = icmp eq i32 %1686, 0
  br i1 %1704, label %1705, label %1682, !llvm.loop !565

1705:                                             ; preds = %1702, %1671
  %1706 = phi ptr [ %1445, %1671 ], [ %1703, %1702 ]
  %1707 = load i16, ptr %1662, align 2, !tbaa !564
  %1708 = and i16 %1707, 2
  %1709 = icmp ne i16 %1708, 0
  %1710 = icmp ne ptr %1706, null
  %1711 = select i1 %1709, i1 %1710, i1 false
  br i1 %1711, label %1712, label %1736

1712:                                             ; preds = %1705
  %1713 = load i32, ptr %1674, align 8, !tbaa !546
  %1714 = icmp eq i32 %1713, 0
  br i1 %1714, label %1736, label %1715

1715:                                             ; preds = %1712
  %1716 = load ptr, ptr %1672, align 8, !tbaa !547
  br label %1717

1717:                                             ; preds = %1715, %1717
  %1718 = phi ptr [ %1733, %1717 ], [ %1716, %1715 ]
  %1719 = phi ptr [ %1734, %1717 ], [ %1706, %1715 ]
  %1720 = phi i32 [ %1721, %1717 ], [ %1713, %1715 ]
  %1721 = add nsw i32 %1720, -1
  %1722 = load i32, ptr %1432, align 8, !tbaa !211
  %1723 = add nsw i32 %1722, 1
  store i32 %1723, ptr %1432, align 8, !tbaa !211
  %1724 = call ptr @RE_findOrAddVert(ptr noundef %1, i32 noundef %1722) #16
  %1725 = load float, ptr %1718, align 4, !tbaa !44
  store float %1725, ptr %1724, align 4, !tbaa !44
  %1726 = getelementptr inbounds float, ptr %1718, i64 1
  %1727 = load float, ptr %1726, align 4, !tbaa !44
  %1728 = getelementptr inbounds float, ptr %1724, i64 1
  store float %1727, ptr %1728, align 4, !tbaa !44
  %1729 = getelementptr inbounds float, ptr %1718, i64 2
  %1730 = load float, ptr %1729, align 4, !tbaa !44
  %1731 = getelementptr inbounds float, ptr %1724, i64 2
  store float %1730, ptr %1731, align 4, !tbaa !44
  call void @mul_m4_v3(ptr noundef nonnull %28, ptr noundef nonnull %1724) #16
  %1732 = getelementptr inbounds %struct.VertRen, ptr %1724, i64 0, i32 2
  store ptr %1719, ptr %1732, align 8, !tbaa !548
  %1733 = getelementptr inbounds float, ptr %1718, i64 3
  %1734 = getelementptr inbounds float, ptr %1719, i64 3
  %1735 = icmp eq i32 %1721, 0
  br i1 %1735, label %1736, label %1717, !llvm.loop !566

1736:                                             ; preds = %1717, %1712, %1705
  %1737 = phi ptr [ %1706, %1705 ], [ %1706, %1712 ], [ %1734, %1717 ]
  %1738 = getelementptr inbounds %struct.DispList, ptr %1444, i64 0, i32 13
  %1739 = load ptr, ptr %1738, align 8, !tbaa !567
  %1740 = icmp ne ptr %1739, null
  %1741 = or i1 %1433, %1740
  br i1 %1741, label %1742, label %1993

1742:                                             ; preds = %1736
  %1743 = load i32, ptr %1434, align 4, !tbaa !293
  %1744 = load i32, ptr %1676, align 4, !tbaa !551
  %1745 = icmp sgt i32 %1744, 0
  br i1 %1745, label %1746, label %1822

1746:                                             ; preds = %1742
  %1747 = icmp ne ptr %1737, null
  %1748 = getelementptr inbounds %struct.DispList, ptr %1444, i64 0, i32 7
  br label %1749

1749:                                             ; preds = %1746, %1818
  %1750 = phi i32 [ 0, %1746 ], [ %1819, %1818 ]
  %1751 = call zeroext i8 @BKE_displist_surfindex_get(ptr noundef nonnull %1444, i32 noundef %1750, ptr noundef nonnull %30, ptr noundef nonnull %32, ptr noundef nonnull %33, ptr noundef nonnull %34, ptr noundef nonnull %35) #16
  %1752 = icmp eq i8 %1751, 0
  br i1 %1752, label %1822, label %1753

1753:                                             ; preds = %1749
  %1754 = load i32, ptr %32, align 4, !tbaa !80
  %1755 = add nsw i32 %1754, %1673
  store i32 %1755, ptr %32, align 4, !tbaa !80
  %1756 = load i32, ptr %33, align 4, !tbaa !80
  %1757 = add nsw i32 %1756, %1673
  store i32 %1757, ptr %33, align 4, !tbaa !80
  %1758 = load i32, ptr %34, align 4, !tbaa !80
  %1759 = add nsw i32 %1758, %1673
  store i32 %1759, ptr %34, align 4, !tbaa !80
  %1760 = load i32, ptr %35, align 4, !tbaa !80
  %1761 = add nsw i32 %1760, %1673
  store i32 %1761, ptr %35, align 4, !tbaa !80
  %1762 = load i16, ptr %1662, align 2, !tbaa !564
  %1763 = and i16 %1762, 2
  %1764 = icmp ne i16 %1763, 0
  %1765 = select i1 %1764, i1 %1747, i1 false
  br i1 %1765, label %1766, label %1774

1766:                                             ; preds = %1753
  %1767 = load i32, ptr %1676, align 4, !tbaa !551
  %1768 = add nsw i32 %1767, -1
  %1769 = icmp eq i32 %1750, %1768
  br i1 %1769, label %1770, label %1774

1770:                                             ; preds = %1766
  %1771 = load i32, ptr %1674, align 8, !tbaa !546
  %1772 = add nsw i32 %1771, %1755
  store i32 %1772, ptr %34, align 4, !tbaa !80
  %1773 = add nsw i32 %1771, %1757
  store i32 %1773, ptr %35, align 4, !tbaa !80
  br label %1774

1774:                                             ; preds = %1770, %1766, %1753
  %1775 = load i32, ptr %30, align 4, !tbaa !80
  %1776 = load i32, ptr %1674, align 8, !tbaa !546
  %1777 = icmp slt i32 %1775, %1776
  br i1 %1777, label %1778, label %1818

1778:                                             ; preds = %1774
  %1779 = icmp eq i32 %1750, 0
  %1780 = select i1 %1779, i8 7, i8 6
  br label %1781

1781:                                             ; preds = %1778, %1781
  %1782 = load i32, ptr %1434, align 4, !tbaa !293
  %1783 = add nsw i32 %1782, 1
  store i32 %1783, ptr %1434, align 4, !tbaa !293
  %1784 = call ptr @RE_findOrAddVlak(ptr noundef %1, i32 noundef %1782) #16
  %1785 = load i32, ptr %33, align 4, !tbaa !80
  %1786 = call ptr @RE_findOrAddVert(ptr noundef %1, i32 noundef %1785) #16
  store ptr %1786, ptr %1784, align 8, !tbaa !553
  %1787 = load i32, ptr %32, align 4, !tbaa !80
  %1788 = call ptr @RE_findOrAddVert(ptr noundef %1, i32 noundef %1787) #16
  %1789 = getelementptr inbounds %struct.VlakRen, ptr %1784, i64 0, i32 1
  store ptr %1788, ptr %1789, align 8, !tbaa !555
  %1790 = load i32, ptr %34, align 4, !tbaa !80
  %1791 = call ptr @RE_findOrAddVert(ptr noundef %1, i32 noundef %1790) #16
  %1792 = getelementptr inbounds %struct.VlakRen, ptr %1784, i64 0, i32 2
  store ptr %1791, ptr %1792, align 8, !tbaa !556
  %1793 = load i32, ptr %35, align 4, !tbaa !80
  %1794 = call ptr @RE_findOrAddVert(ptr noundef %1, i32 noundef %1793) #16
  %1795 = getelementptr inbounds %struct.VlakRen, ptr %1784, i64 0, i32 3
  store ptr %1794, ptr %1795, align 8, !tbaa !557
  %1796 = getelementptr inbounds %struct.VlakRen, ptr %1784, i64 0, i32 8
  store i8 %1780, ptr %1796, align 2, !tbaa !560
  %1797 = load i16, ptr %1748, align 2, !tbaa !568
  %1798 = trunc i16 %1797 to i8
  %1799 = getelementptr inbounds %struct.VlakRen, ptr %1784, i64 0, i32 7
  store i8 %1798, ptr %1799, align 1, !tbaa !559
  %1800 = getelementptr inbounds %struct.VlakRen, ptr %1784, i64 0, i32 4
  %1801 = load ptr, ptr %1792, align 8, !tbaa !556
  %1802 = load ptr, ptr %1789, align 8, !tbaa !555
  %1803 = load ptr, ptr %1784, align 8, !tbaa !553
  %1804 = call float @normal_quad_v3(ptr noundef nonnull %1800, ptr noundef %1794, ptr noundef %1801, ptr noundef %1802, ptr noundef %1803) #16
  %1805 = load i16, ptr %1446, align 4, !tbaa !543
  %1806 = sext i16 %1805 to i64
  %1807 = getelementptr inbounds ptr, ptr %1360, i64 %1806
  %1808 = load ptr, ptr %1807, align 8, !tbaa !77
  %1809 = getelementptr inbounds %struct.VlakRen, ptr %1784, i64 0, i32 5
  store ptr %1808, ptr %1809, align 8, !tbaa !558
  %1810 = load i32, ptr %34, align 4, !tbaa !80
  store i32 %1810, ptr %35, align 4, !tbaa !80
  %1811 = add nsw i32 %1810, 1
  store i32 %1811, ptr %34, align 4, !tbaa !80
  %1812 = load i32, ptr %32, align 4, !tbaa !80
  store i32 %1812, ptr %33, align 4, !tbaa !80
  %1813 = add nsw i32 %1812, 1
  store i32 %1813, ptr %32, align 4, !tbaa !80
  %1814 = load i32, ptr %30, align 4, !tbaa !80
  %1815 = add nsw i32 %1814, 1
  store i32 %1815, ptr %30, align 4, !tbaa !80
  %1816 = load i32, ptr %1674, align 8, !tbaa !546
  %1817 = icmp slt i32 %1815, %1816
  br i1 %1817, label %1781, label %1818, !llvm.loop !569

1818:                                             ; preds = %1781, %1774
  %1819 = add nuw nsw i32 %1750, 1
  %1820 = load i32, ptr %1676, align 4, !tbaa !551
  %1821 = icmp slt i32 %1819, %1820
  br i1 %1821, label %1749, label %1822, !llvm.loop !570

1822:                                             ; preds = %1818, %1749, %1742
  %1823 = load ptr, ptr %1738, align 8, !tbaa !567
  %1824 = icmp eq ptr %1823, null
  br i1 %1824, label %1895, label %1825

1825:                                             ; preds = %1822
  %1826 = load i32, ptr %1676, align 4, !tbaa !551
  %1827 = add nsw i32 %1826, -1
  %1828 = load i16, ptr %1662, align 2, !tbaa !564
  %1829 = zext i16 %1828 to i32
  %1830 = lshr i32 %1829, 1
  %1831 = and i32 %1830, 1
  %1832 = add nsw i32 %1827, %1831
  %1833 = icmp sgt i32 %1832, 0
  br i1 %1833, label %1834, label %1895

1834:                                             ; preds = %1825, %1885
  %1835 = phi i32 [ %1890, %1885 ], [ %1829, %1825 ]
  %1836 = phi i32 [ %1886, %1885 ], [ 0, %1825 ]
  %1837 = load ptr, ptr %1738, align 8, !tbaa !567
  %1838 = lshr i32 %1836, 5
  %1839 = zext nneg i32 %1838 to i64
  %1840 = getelementptr inbounds i32, ptr %1837, i64 %1839
  %1841 = load i32, ptr %1840, align 4, !tbaa !80
  %1842 = and i32 %1836, 31
  %1843 = shl nuw i32 1, %1842
  %1844 = and i32 %1841, %1843
  %1845 = icmp eq i32 %1844, 0
  br i1 %1845, label %1885, label %1846

1846:                                             ; preds = %1834
  %1847 = load i32, ptr %1674, align 8, !tbaa !546
  %1848 = and i32 %1835, 1
  %1849 = icmp eq i32 %1848, 0
  %1850 = add nsw i32 %1848, -1
  %1851 = add i32 %1850, %1847
  %1852 = icmp sgt i32 %1851, 0
  br i1 %1852, label %1853, label %1885

1853:                                             ; preds = %1846
  %1854 = mul nsw i32 %1851, %1836
  %1855 = add nsw i32 %1854, %1743
  %1856 = add nsw i32 %1851, -1
  %1857 = add nsw i32 %1851, -1
  br label %1858

1858:                                             ; preds = %1853, %1882
  %1859 = phi i32 [ 0, %1853 ], [ %1883, %1882 ]
  %1860 = add nsw i32 %1859, %1855
  %1861 = call ptr @RE_findOrAddVlak(ptr noundef %1, i32 noundef %1860) #16
  %1862 = getelementptr inbounds %struct.VlakRen, ptr %1861, i64 0, i32 1
  %1863 = load ptr, ptr %1862, align 8, !tbaa !555
  %1864 = call ptr @RE_vertren_copy(ptr noundef %1, ptr noundef %1863) #16
  store ptr %1864, ptr %1862, align 8, !tbaa !555
  br i1 %1849, label %1872, label %1865

1865:                                             ; preds = %1858
  %1866 = icmp eq i32 %1859, %1856
  br i1 %1866, label %1867, label %1869

1867:                                             ; preds = %1865
  %1868 = call ptr @RE_findOrAddVlak(ptr noundef %1, i32 noundef %1855) #16
  store ptr %1864, ptr %1868, align 8, !tbaa !553
  br label %1882

1869:                                             ; preds = %1865
  %1870 = add nsw i32 %1860, 1
  %1871 = call ptr @RE_findOrAddVlak(ptr noundef %1, i32 noundef %1870) #16
  store ptr %1864, ptr %1871, align 8, !tbaa !553
  br label %1882

1872:                                             ; preds = %1858
  %1873 = icmp slt i32 %1859, %1857
  br i1 %1873, label %1874, label %1877

1874:                                             ; preds = %1872
  %1875 = add nsw i32 %1860, 1
  %1876 = call ptr @RE_findOrAddVlak(ptr noundef %1, i32 noundef %1875) #16
  store ptr %1864, ptr %1876, align 8, !tbaa !553
  br label %1877

1877:                                             ; preds = %1874, %1872
  %1878 = icmp eq i32 %1859, 0
  br i1 %1878, label %1879, label %1882

1879:                                             ; preds = %1877
  %1880 = load ptr, ptr %1861, align 8, !tbaa !553
  %1881 = call ptr @RE_vertren_copy(ptr noundef %1, ptr noundef %1880) #16
  store ptr %1881, ptr %1861, align 8, !tbaa !553
  br label %1882

1882:                                             ; preds = %1879, %1877, %1869, %1867
  %1883 = add nuw nsw i32 %1859, 1
  %1884 = icmp eq i32 %1883, %1851
  br i1 %1884, label %1885, label %1858, !llvm.loop !571

1885:                                             ; preds = %1882, %1846, %1834
  %1886 = add nuw nsw i32 %1836, 1
  %1887 = load i32, ptr %1676, align 4, !tbaa !551
  %1888 = add nsw i32 %1887, -1
  %1889 = load i16, ptr %1662, align 2, !tbaa !564
  %1890 = zext i16 %1889 to i32
  %1891 = lshr i32 %1890, 1
  %1892 = and i32 %1891, 1
  %1893 = add nsw i32 %1888, %1892
  %1894 = icmp slt i32 %1886, %1893
  br i1 %1894, label %1834, label %1895, !llvm.loop !572

1895:                                             ; preds = %1885, %1825, %1822
  %1896 = load i32, ptr %1434, align 4, !tbaa !293
  %1897 = icmp slt i32 %1743, %1896
  br i1 %1897, label %1901, label %1898

1898:                                             ; preds = %1901, %1895
  %1899 = load i32, ptr %1432, align 8, !tbaa !211
  %1900 = icmp slt i32 %1673, %1899
  br i1 %1900, label %1965, label %1993

1901:                                             ; preds = %1895, %1901
  %1902 = phi i32 [ %1962, %1901 ], [ %1743, %1895 ]
  %1903 = call ptr @RE_findOrAddVlak(ptr noundef %1, i32 noundef %1902) #16
  %1904 = load ptr, ptr %1903, align 8, !tbaa !553
  %1905 = getelementptr inbounds %struct.VertRen, ptr %1904, i64 0, i32 1
  %1906 = getelementptr inbounds %struct.VlakRen, ptr %1903, i64 0, i32 4
  %1907 = load float, ptr %1906, align 4, !tbaa !44
  %1908 = load float, ptr %1905, align 4, !tbaa !44
  %1909 = fadd float %1907, %1908
  store float %1909, ptr %1905, align 4, !tbaa !44
  %1910 = getelementptr inbounds %struct.VlakRen, ptr %1903, i64 0, i32 4, i64 1
  %1911 = load float, ptr %1910, align 4, !tbaa !44
  %1912 = getelementptr inbounds %struct.VertRen, ptr %1904, i64 0, i32 1, i64 1
  %1913 = load float, ptr %1912, align 4, !tbaa !44
  %1914 = fadd float %1911, %1913
  store float %1914, ptr %1912, align 4, !tbaa !44
  %1915 = getelementptr inbounds %struct.VlakRen, ptr %1903, i64 0, i32 4, i64 2
  %1916 = load float, ptr %1915, align 4, !tbaa !44
  %1917 = getelementptr inbounds %struct.VertRen, ptr %1904, i64 0, i32 1, i64 2
  %1918 = load float, ptr %1917, align 4, !tbaa !44
  %1919 = fadd float %1916, %1918
  store float %1919, ptr %1917, align 4, !tbaa !44
  %1920 = getelementptr inbounds %struct.VlakRen, ptr %1903, i64 0, i32 2
  %1921 = load ptr, ptr %1920, align 8, !tbaa !556
  %1922 = getelementptr inbounds %struct.VertRen, ptr %1921, i64 0, i32 1
  %1923 = load float, ptr %1906, align 4, !tbaa !44
  %1924 = load float, ptr %1922, align 4, !tbaa !44
  %1925 = fadd float %1923, %1924
  store float %1925, ptr %1922, align 4, !tbaa !44
  %1926 = load float, ptr %1910, align 4, !tbaa !44
  %1927 = getelementptr inbounds %struct.VertRen, ptr %1921, i64 0, i32 1, i64 1
  %1928 = load float, ptr %1927, align 4, !tbaa !44
  %1929 = fadd float %1926, %1928
  store float %1929, ptr %1927, align 4, !tbaa !44
  %1930 = load float, ptr %1915, align 4, !tbaa !44
  %1931 = getelementptr inbounds %struct.VertRen, ptr %1921, i64 0, i32 1, i64 2
  %1932 = load float, ptr %1931, align 4, !tbaa !44
  %1933 = fadd float %1930, %1932
  store float %1933, ptr %1931, align 4, !tbaa !44
  %1934 = getelementptr inbounds %struct.VlakRen, ptr %1903, i64 0, i32 1
  %1935 = load ptr, ptr %1934, align 8, !tbaa !555
  %1936 = getelementptr inbounds %struct.VertRen, ptr %1935, i64 0, i32 1
  %1937 = load float, ptr %1906, align 4, !tbaa !44
  %1938 = load float, ptr %1936, align 4, !tbaa !44
  %1939 = fadd float %1937, %1938
  store float %1939, ptr %1936, align 4, !tbaa !44
  %1940 = load float, ptr %1910, align 4, !tbaa !44
  %1941 = getelementptr inbounds %struct.VertRen, ptr %1935, i64 0, i32 1, i64 1
  %1942 = load float, ptr %1941, align 4, !tbaa !44
  %1943 = fadd float %1940, %1942
  store float %1943, ptr %1941, align 4, !tbaa !44
  %1944 = load float, ptr %1915, align 4, !tbaa !44
  %1945 = getelementptr inbounds %struct.VertRen, ptr %1935, i64 0, i32 1, i64 2
  %1946 = load float, ptr %1945, align 4, !tbaa !44
  %1947 = fadd float %1944, %1946
  store float %1947, ptr %1945, align 4, !tbaa !44
  %1948 = getelementptr inbounds %struct.VlakRen, ptr %1903, i64 0, i32 3
  %1949 = load ptr, ptr %1948, align 8, !tbaa !557
  %1950 = getelementptr inbounds %struct.VertRen, ptr %1949, i64 0, i32 1
  %1951 = load float, ptr %1906, align 4, !tbaa !44
  %1952 = load float, ptr %1950, align 4, !tbaa !44
  %1953 = fadd float %1951, %1952
  store float %1953, ptr %1950, align 4, !tbaa !44
  %1954 = load float, ptr %1910, align 4, !tbaa !44
  %1955 = getelementptr inbounds %struct.VertRen, ptr %1949, i64 0, i32 1, i64 1
  %1956 = load float, ptr %1955, align 4, !tbaa !44
  %1957 = fadd float %1954, %1956
  store float %1957, ptr %1955, align 4, !tbaa !44
  %1958 = load float, ptr %1915, align 4, !tbaa !44
  %1959 = getelementptr inbounds %struct.VertRen, ptr %1949, i64 0, i32 1, i64 2
  %1960 = load float, ptr %1959, align 4, !tbaa !44
  %1961 = fadd float %1958, %1960
  store float %1961, ptr %1959, align 4, !tbaa !44
  %1962 = add nsw i32 %1902, 1
  %1963 = load i32, ptr %1434, align 4, !tbaa !293
  %1964 = icmp slt i32 %1962, %1963
  br i1 %1964, label %1901, label %1898, !llvm.loop !573

1965:                                             ; preds = %1898, %1988
  %1966 = phi i32 [ %1990, %1988 ], [ %1673, %1898 ]
  %1967 = call ptr @RE_findOrAddVert(ptr noundef %1, i32 noundef %1966) #16
  %1968 = getelementptr inbounds %struct.VertRen, ptr %1967, i64 0, i32 1
  %1969 = load float, ptr %1968, align 4, !tbaa !44
  %1970 = getelementptr inbounds %struct.VertRen, ptr %1967, i64 0, i32 1, i64 1
  %1971 = load float, ptr %1970, align 4, !tbaa !44
  %1972 = fmul float %1971, %1971
  %1973 = call float @llvm.fmuladd.f32(float %1969, float %1969, float %1972)
  %1974 = getelementptr inbounds %struct.VertRen, ptr %1967, i64 0, i32 1, i64 2
  %1975 = load float, ptr %1974, align 4, !tbaa !44
  %1976 = call float @llvm.fmuladd.f32(float %1975, float %1975, float %1973)
  %1977 = fcmp ogt float %1976, 0x38AA95A5C0000000
  br i1 %1977, label %1978, label %1987

1978:                                             ; preds = %1965
  %1979 = call float @sqrtf(float noundef %1976) #16
  %1980 = fdiv float 1.000000e+00, %1979
  %1981 = load float, ptr %1968, align 4, !tbaa !44
  %1982 = fmul float %1981, %1980
  store float %1982, ptr %1968, align 4, !tbaa !44
  %1983 = load float, ptr %1970, align 4, !tbaa !44
  %1984 = fmul float %1980, %1983
  store float %1984, ptr %1970, align 4, !tbaa !44
  %1985 = load float, ptr %1974, align 4, !tbaa !44
  %1986 = fmul float %1980, %1985
  br label %1988

1987:                                             ; preds = %1965
  store float 0.000000e+00, ptr %1968, align 4, !tbaa !44
  store float 0.000000e+00, ptr %1970, align 4, !tbaa !44
  br label %1988

1988:                                             ; preds = %1987, %1978
  %1989 = phi float [ 0.000000e+00, %1987 ], [ %1986, %1978 ]
  store float %1989, ptr %1974, align 4, !tbaa !44
  %1990 = add nsw i32 %1966, 1
  %1991 = load i32, ptr %1432, align 8, !tbaa !211
  %1992 = icmp slt i32 %1990, %1991
  br i1 %1992, label %1965, label %1993, !llvm.loop !574

1993:                                             ; preds = %1988, %1898, %1736
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %35) #16
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %34) #16
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %33) #16
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %32) #16
  br label %1994

1994:                                             ; preds = %1993, %1666, %1660, %1486, %1451, %1443
  %1995 = phi ptr [ %1445, %1443 ], [ %1670, %1666 ], [ %1737, %1993 ], [ %1487, %1660 ], [ %1487, %1486 ], [ %1445, %1451 ]
  %1996 = load ptr, ptr %1444, align 8, !tbaa !575
  %1997 = icmp eq ptr %1996, null
  br i1 %1997, label %1998, label %1443, !llvm.loop !576

1998:                                             ; preds = %1994, %1405
  call void @BKE_displist_free(ptr noundef nonnull %26) #16
  %1999 = load ptr, ptr @MEM_freeN, align 8, !tbaa !77
  call void %1999(ptr noundef %1360) #16
  br label %2000

2000:                                             ; preds = %1332, %1338, %1342, %1998
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %30) #16
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %29) #16
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %28) #16
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %27) #16
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %26) #16
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %25) #16
  br label %4098

2001:                                             ; preds = %1326
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %22) #16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %22, i8 0, i64 16, i1 false)
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %23) #16
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %24) #16
  store ptr null, ptr %24, align 8, !tbaa !77
  %2002 = getelementptr inbounds %struct.Object, ptr %54, i64 0, i32 19
  %2003 = load ptr, ptr %2002, align 8, !tbaa !296
  %2004 = getelementptr inbounds %struct.Curve, ptr %2003, i64 0, i32 3
  %2005 = load ptr, ptr %2004, align 8, !tbaa !541
  %2006 = icmp eq ptr %2005, null
  br i1 %2006, label %2120, label %2007

2007:                                             ; preds = %2001
  %2008 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 32
  %2009 = getelementptr inbounds %struct.Object, ptr %54, i64 0, i32 47
  call void @mul_m4_m4m4(ptr noundef nonnull %23, ptr noundef nonnull %2008, ptr noundef nonnull %2009) #16
  %2010 = getelementptr inbounds %struct.Object, ptr %54, i64 0, i32 50
  %2011 = call zeroext i8 @invert_m4_m4(ptr noundef nonnull %2010, ptr noundef nonnull %23) #16
  %2012 = getelementptr inbounds %struct.Object, ptr %54, i64 0, i32 31
  %2013 = load i32, ptr %2012, align 8, !tbaa !276
  %2014 = add nsw i32 %2013, 1
  %2015 = load ptr, ptr @MEM_callocN, align 8, !tbaa !77
  %2016 = sext i32 %2014 to i64
  %2017 = shl nsw i64 %2016, 3
  %2018 = call ptr %2015(i64 noundef %2017, ptr noundef nonnull @.str.19) #16
  %2019 = icmp slt i32 %2013, 0
  br i1 %2019, label %2036, label %2020

2020:                                             ; preds = %2007
  %2021 = add nuw i32 %2013, 1
  %2022 = zext i32 %2021 to i64
  br label %2023

2023:                                             ; preds = %2020, %2023
  %2024 = phi i64 [ 0, %2020 ], [ %2026, %2023 ]
  %2025 = phi i8 [ 0, %2020 ], [ %2034, %2023 ]
  %2026 = add nuw nsw i64 %2024, 1
  %2027 = trunc i64 %2026 to i16
  %2028 = call fastcc ptr @give_render_material(ptr noundef %0, ptr noundef %54, i16 noundef signext %2027)
  %2029 = getelementptr inbounds ptr, ptr %2018, i64 %2024
  store ptr %2028, ptr %2029, align 8, !tbaa !77
  %2030 = getelementptr inbounds %struct.Material, ptr %2028, i64 0, i32 90
  %2031 = load i16, ptr %2030, align 4, !tbaa !270
  %2032 = and i16 %2031, 1
  %2033 = icmp eq i16 %2032, 0
  %2034 = select i1 %2033, i8 %2025, i8 1
  %2035 = icmp eq i64 %2026, %2022
  br i1 %2035, label %2036, label %2023, !llvm.loop !577

2036:                                             ; preds = %2023, %2007
  %2037 = phi i8 [ 0, %2007 ], [ %2034, %2023 ]
  %2038 = getelementptr inbounds %struct.Object, ptr %54, i64 0, i32 9
  %2039 = load ptr, ptr %2038, align 8, !tbaa !578
  %2040 = icmp eq ptr %2039, null
  br i1 %2040, label %2046, label %2041

2041:                                             ; preds = %2036
  %2042 = getelementptr inbounds %struct.Object, ptr %2039, i64 0, i32 3
  %2043 = load i16, ptr %2042, align 8, !tbaa !167
  %2044 = icmp eq i16 %2043, 22
  %2045 = select i1 %2044, i8 1, i8 %2037
  br label %2046

2046:                                             ; preds = %2041, %2036
  %2047 = phi i8 [ %2037, %2036 ], [ %2045, %2041 ]
  %2048 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 44
  %2049 = load ptr, ptr %2048, align 8, !tbaa !64
  call void @BKE_displist_make_surf(ptr noundef %2049, ptr noundef %54, ptr noundef nonnull %22, ptr noundef nonnull %24, i8 noundef zeroext 1, i8 noundef zeroext 0, i8 noundef zeroext 1) #16
  %2050 = load ptr, ptr %24, align 8, !tbaa !77
  %2051 = icmp eq ptr %2050, null
  %2052 = icmp eq i8 %2047, 0
  br i1 %2051, label %2081, label %2053

2053:                                             ; preds = %2046
  br i1 %2052, label %2075, label %2054

2054:                                             ; preds = %2053
  %2055 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 73
  %2056 = load ptr, ptr %2055, align 8, !tbaa !111
  %2057 = icmp eq ptr %2056, null
  br i1 %2057, label %2060, label %2058

2058:                                             ; preds = %2054
  %2059 = call ptr @BLI_ghash_lookup(ptr noundef nonnull %2056, ptr noundef %54) #16
  br label %2060

2060:                                             ; preds = %2058, %2054
  %2061 = phi ptr [ %2059, %2058 ], [ null, %2054 ]
  %2062 = icmp eq ptr %2061, null
  br i1 %2062, label %2063, label %2075

2063:                                             ; preds = %2060
  %2064 = load ptr, ptr %2048, align 8, !tbaa !64
  %2065 = load ptr, ptr %24, align 8, !tbaa !77
  %2066 = call ptr @BKE_displist_make_orco(ptr noundef %2064, ptr noundef %54, ptr noundef %2065, i8 noundef zeroext 1, i8 noundef zeroext 1) #16
  %2067 = icmp eq ptr %2066, null
  br i1 %2067, label %2075, label %2068

2068:                                             ; preds = %2063
  %2069 = load ptr, ptr %2055, align 8, !tbaa !111
  %2070 = icmp eq ptr %2069, null
  br i1 %2070, label %2071, label %2073

2071:                                             ; preds = %2068
  %2072 = call ptr @BLI_ghash_ptr_new(ptr noundef nonnull @.str.18) #16
  store ptr %2072, ptr %2055, align 8, !tbaa !111
  br label %2073

2073:                                             ; preds = %2071, %2068
  %2074 = load ptr, ptr %2055, align 8, !tbaa !111
  call void @BLI_ghash_insert(ptr noundef %2074, ptr noundef %54, ptr noundef nonnull %2066) #16
  br label %2075

2075:                                             ; preds = %2073, %2063, %2060, %2053
  %2076 = phi ptr [ %2061, %2060 ], [ %2066, %2073 ], [ null, %2063 ], [ null, %2053 ]
  %2077 = load ptr, ptr %24, align 8, !tbaa !77
  call fastcc void @init_render_dm(ptr noundef %2077, ptr noundef %0, ptr noundef %1, i32 noundef %2, ptr noundef %2076, ptr noundef nonnull %23)
  %2078 = load ptr, ptr %24, align 8, !tbaa !77
  %2079 = getelementptr inbounds %struct.DerivedMesh, ptr %2078, i64 0, i32 95
  %2080 = load ptr, ptr %2079, align 8, !tbaa !283
  call void %2080(ptr noundef %2078) #16
  br label %2118

2081:                                             ; preds = %2046
  br i1 %2052, label %2099, label %2082

2082:                                             ; preds = %2081
  %2083 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 73
  %2084 = load ptr, ptr %2083, align 8, !tbaa !111
  %2085 = icmp eq ptr %2084, null
  br i1 %2085, label %2088, label %2086

2086:                                             ; preds = %2082
  %2087 = call ptr @BLI_ghash_lookup(ptr noundef nonnull %2084, ptr noundef %54) #16
  br label %2088

2088:                                             ; preds = %2086, %2082
  %2089 = phi ptr [ %2087, %2086 ], [ null, %2082 ]
  %2090 = icmp eq ptr %2089, null
  br i1 %2090, label %2091, label %2099

2091:                                             ; preds = %2088
  %2092 = call ptr @BKE_curve_surf_make_orco(ptr noundef %54) #16
  %2093 = load ptr, ptr %2083, align 8, !tbaa !111
  %2094 = icmp eq ptr %2093, null
  br i1 %2094, label %2095, label %2097

2095:                                             ; preds = %2091
  %2096 = call ptr @BLI_ghash_ptr_new(ptr noundef nonnull @.str.18) #16
  store ptr %2096, ptr %2083, align 8, !tbaa !111
  br label %2097

2097:                                             ; preds = %2095, %2091
  %2098 = load ptr, ptr %2083, align 8, !tbaa !111
  call void @BLI_ghash_insert(ptr noundef %2098, ptr noundef %54, ptr noundef %2092) #16
  br label %2099

2099:                                             ; preds = %2097, %2088, %2081
  %2100 = phi ptr [ %2089, %2088 ], [ %2092, %2097 ], [ null, %2081 ]
  %2101 = load ptr, ptr %22, align 8, !tbaa !77
  %2102 = icmp eq ptr %2101, null
  br i1 %2102, label %2118, label %2103

2103:                                             ; preds = %2099, %2114
  %2104 = phi ptr [ %2116, %2114 ], [ %2101, %2099 ]
  %2105 = phi ptr [ %2115, %2114 ], [ %2100, %2099 ]
  %2106 = getelementptr inbounds %struct.DispList, ptr %2104, i64 0, i32 2
  %2107 = load i16, ptr %2106, align 8, !tbaa !545
  %2108 = icmp eq i16 %2107, 2
  br i1 %2108, label %2109, label %2114

2109:                                             ; preds = %2103
  %2110 = call fastcc i32 @dl_surf_to_renderdata(ptr noundef %1, ptr noundef nonnull %2104, ptr noundef %2018, ptr noundef %2105, ptr noundef nonnull %23)
  %2111 = mul nsw i32 %2110, 3
  %2112 = sext i32 %2111 to i64
  %2113 = getelementptr inbounds float, ptr %2105, i64 %2112
  br label %2114

2114:                                             ; preds = %2109, %2103
  %2115 = phi ptr [ %2113, %2109 ], [ %2105, %2103 ]
  %2116 = load ptr, ptr %2104, align 8, !tbaa !77
  %2117 = icmp eq ptr %2116, null
  br i1 %2117, label %2118, label %2103, !llvm.loop !579

2118:                                             ; preds = %2114, %2099, %2075
  call void @BKE_displist_free(ptr noundef nonnull %22) #16
  %2119 = load ptr, ptr @MEM_freeN, align 8, !tbaa !77
  call void %2119(ptr noundef %2018) #16
  br label %2120

2120:                                             ; preds = %2001, %2118
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %24) #16
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %23) #16
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %22) #16
  br label %4098

2121:                                             ; preds = %1326
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %18) #16
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %19) #16
  %2122 = getelementptr inbounds %struct.Object, ptr %54, i64 0, i32 19
  %2123 = load ptr, ptr %2122, align 8, !tbaa !296
  %2124 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 32
  %2125 = getelementptr inbounds %struct.Object, ptr %54, i64 0, i32 47
  call void @mul_m4_m4m4(ptr noundef nonnull %19, ptr noundef nonnull %2124, ptr noundef nonnull %2125) #16
  %2126 = getelementptr inbounds %struct.Object, ptr %54, i64 0, i32 50
  %2127 = call zeroext i8 @invert_m4_m4(ptr noundef nonnull %2126, ptr noundef nonnull %19) #16
  call void @copy_m3_m4(ptr noundef nonnull %18, ptr noundef nonnull %2126) #16
  %2128 = call zeroext i8 @is_negative_m4(ptr noundef nonnull %19) #16
  %2129 = getelementptr inbounds %struct.Mesh, ptr %2123, i64 0, i32 26
  %2130 = load i32, ptr %2129, align 8, !tbaa !580
  %2131 = icmp eq i32 %2130, 0
  br i1 %2131, label %3896, label %2132

2132:                                             ; preds = %2121
  %2133 = getelementptr inbounds %struct.Object, ptr %54, i64 0, i32 31
  %2134 = load i32, ptr %2133, align 8, !tbaa !276
  %2135 = icmp slt i32 %2134, 1
  br i1 %2135, label %2180, label %2136

2136:                                             ; preds = %2132
  %2137 = getelementptr inbounds %struct.Mesh, ptr %2123, i64 0, i32 8
  %2138 = getelementptr inbounds %struct.Mesh, ptr %2123, i64 0, i32 8
  br label %2139

2139:                                             ; preds = %2136, %2173
  %2140 = phi i8 [ 0, %2136 ], [ %2176, %2173 ]
  %2141 = phi i8 [ 0, %2136 ], [ %2154, %2173 ]
  %2142 = phi i8 [ 0, %2136 ], [ %2175, %2173 ]
  %2143 = phi i8 [ 0, %2136 ], [ %2174, %2173 ]
  %2144 = phi i32 [ 1, %2136 ], [ %2177, %2173 ]
  %2145 = trunc i32 %2144 to i16
  %2146 = call fastcc ptr @give_render_material(ptr noundef %0, ptr noundef %54, i16 noundef signext %2145)
  %2147 = getelementptr inbounds %struct.Material, ptr %2146, i64 0, i32 90
  %2148 = load i16, ptr %2147, align 4, !tbaa !270
  %2149 = and i16 %2148, 16385
  %2150 = icmp eq i16 %2149, 0
  %2151 = select i1 %2150, i8 %2140, i8 1
  %2152 = and i16 %2148, 16384
  %2153 = icmp eq i16 %2152, 0
  %2154 = select i1 %2153, i8 %2141, i8 1
  %2155 = getelementptr inbounds %struct.Material, ptr %2146, i64 0, i32 52
  %2156 = load i32, ptr %2155, align 8, !tbaa !509
  %2157 = and i32 %2156, 67108864
  %2158 = icmp eq i32 %2157, 0
  br i1 %2158, label %2163, label %2159

2159:                                             ; preds = %2139
  %2160 = load ptr, ptr %2137, align 8, !tbaa !582
  %2161 = icmp eq ptr %2160, null
  %2162 = select i1 %2161, i8 1, i8 %2151
  br label %2163

2163:                                             ; preds = %2159, %2139
  %2164 = phi i8 [ %2143, %2139 ], [ 1, %2159 ]
  %2165 = phi i8 [ %2151, %2139 ], [ %2162, %2159 ]
  %2166 = and i32 %2156, 134217728
  %2167 = icmp eq i32 %2166, 0
  br i1 %2167, label %2173, label %2168

2168:                                             ; preds = %2163
  %2169 = load ptr, ptr %2138, align 8, !tbaa !582
  %2170 = icmp eq ptr %2169, null
  %2171 = select i1 %2170, i8 1, i8 %2164
  %2172 = select i1 %2170, i8 1, i8 %2165
  br label %2173

2173:                                             ; preds = %2168, %2163
  %2174 = phi i8 [ %2171, %2168 ], [ %2164, %2163 ]
  %2175 = phi i8 [ 1, %2168 ], [ %2142, %2163 ]
  %2176 = phi i8 [ %2172, %2168 ], [ %2165, %2163 ]
  %2177 = add nuw nsw i32 %2144, 1
  %2178 = load i32, ptr %2133, align 8, !tbaa !276
  %2179 = icmp slt i32 %2144, %2178
  br i1 %2179, label %2139, label %2180, !llvm.loop !583

2180:                                             ; preds = %2173, %2132
  %2181 = phi i8 [ 0, %2132 ], [ %2174, %2173 ]
  %2182 = phi i8 [ 0, %2132 ], [ %2175, %2173 ]
  %2183 = phi i8 [ 0, %2132 ], [ %2154, %2173 ]
  %2184 = phi i8 [ 0, %2132 ], [ %2176, %2173 ]
  %2185 = getelementptr inbounds %struct.Object, ptr %54, i64 0, i32 31
  %2186 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 4
  %2187 = load i16, ptr %2186, align 8, !tbaa !267
  %2188 = and i16 %2187, 16
  %2189 = icmp eq i16 %2188, 0
  br i1 %2189, label %2196, label %2190

2190:                                             ; preds = %2180
  %2191 = getelementptr inbounds %struct.Mesh, ptr %2123, i64 0, i32 8
  %2192 = load ptr, ptr %2191, align 8, !tbaa !582
  %2193 = icmp eq ptr %2192, null
  %2194 = select i1 %2193, i8 1, i8 %2181
  %2195 = select i1 %2193, i8 1, i8 %2184
  br label %2196

2196:                                             ; preds = %2190, %2180
  %2197 = phi i8 [ %2194, %2190 ], [ %2181, %2180 ]
  %2198 = phi i8 [ 1, %2190 ], [ %2182, %2180 ]
  %2199 = phi i8 [ %2195, %2190 ], [ %2184, %2180 ]
  %2200 = load i32, ptr %2185, align 8, !tbaa !276
  %2201 = icmp slt i32 %2200, 1
  br i1 %2201, label %2220, label %2202

2202:                                             ; preds = %2196
  %2203 = call fastcc ptr @give_render_material(ptr noundef %0, ptr noundef %54, i16 noundef signext 1)
  %2204 = getelementptr inbounds %struct.Material, ptr %2203, i64 0, i32 91
  %2205 = load i16, ptr %2204, align 2, !tbaa !584
  %2206 = and i16 %2205, 4096
  %2207 = icmp eq i16 %2206, 0
  br i1 %2207, label %2208, label %2220

2208:                                             ; preds = %2202, %2212
  %2209 = phi i32 [ %2213, %2212 ], [ 1, %2202 ]
  %2210 = load i32, ptr %2185, align 8, !tbaa !276
  %2211 = icmp sge i32 %2209, %2210
  br i1 %2211, label %2220, label %2212, !llvm.loop !585

2212:                                             ; preds = %2208
  %2213 = add nuw nsw i32 %2209, 1
  %2214 = trunc i32 %2213 to i16
  %2215 = call fastcc ptr @give_render_material(ptr noundef %0, ptr noundef %54, i16 noundef signext %2214)
  %2216 = getelementptr inbounds %struct.Material, ptr %2215, i64 0, i32 91
  %2217 = load i16, ptr %2216, align 2, !tbaa !584
  %2218 = and i16 %2217, 4096
  %2219 = icmp eq i16 %2218, 0
  br i1 %2219, label %2208, label %2220, !llvm.loop !585

2220:                                             ; preds = %2212, %2208, %2202, %2196
  %2221 = phi i1 [ %2201, %2196 ], [ %2201, %2202 ], [ %2211, %2208 ], [ %2211, %2212 ]
  %2222 = xor i1 %2221, true
  %2223 = getelementptr inbounds %struct.Mesh, ptr %2123, i64 0, i32 38
  %2224 = load i16, ptr %2223, align 2, !tbaa !586
  %2225 = and i16 %2224, 32
  %2226 = icmp ne i16 %2225, 0
  %2227 = and i1 %2221, %2226
  br i1 %2227, label %2237, label %2228

2228:                                             ; preds = %2220
  %2229 = load i16, ptr %2186, align 8, !tbaa !267
  %2230 = and i16 %2229, 64
  %2231 = icmp eq i16 %2230, 0
  br i1 %2231, label %2237, label %2232

2232:                                             ; preds = %2228
  %2233 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 45, i32 75
  %2234 = load i16, ptr %2233, align 2, !tbaa !587
  %2235 = and i16 %2234, 64
  %2236 = icmp ne i16 %2235, 0
  br label %2237

2237:                                             ; preds = %2232, %2228, %2220
  %2238 = phi i1 [ true, %2220 ], [ false, %2228 ], [ %2236, %2232 ]
  %2239 = load i64, ptr @CD_MASK_BAREMESH, align 8, !tbaa !282
  %2240 = icmp eq i32 %2, 0
  %2241 = or i1 %2240, %2222
  %2242 = or i1 %2241, %2226
  %2243 = icmp ne i8 %2199, 0
  %2244 = select i1 %2242, i1 %2243, i1 false
  %2245 = select i1 %2244, i64 16480, i64 96
  %2246 = or i64 %2239, %2245
  %2247 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 45, i32 46
  %2248 = load i32, ptr %2247, align 4, !tbaa !105
  %2249 = and i32 %2248, 524288
  %2250 = icmp eq i32 %2249, 0
  %2251 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 44
  %2252 = load ptr, ptr %2251, align 8, !tbaa !64
  br i1 %2250, label %2255, label %2253

2253:                                             ; preds = %2237
  %2254 = call ptr @mesh_create_derived_view(ptr noundef %2252, ptr noundef %54, i64 noundef %2246) #16
  br label %2257

2255:                                             ; preds = %2237
  %2256 = call ptr @mesh_create_derived_render(ptr noundef %2252, ptr noundef %54, i64 noundef %2246) #16
  br label %2257

2257:                                             ; preds = %2255, %2253
  %2258 = phi ptr [ %2254, %2253 ], [ %2256, %2255 ]
  %2259 = icmp eq ptr %2258, null
  br i1 %2259, label %3896, label %2260

2260:                                             ; preds = %2257
  %2261 = and i64 %2246, 16384
  %2262 = icmp eq i64 %2261, 0
  br i1 %2262, label %2286, label %2263

2263:                                             ; preds = %2260
  %2264 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 73
  %2265 = load ptr, ptr %2264, align 8, !tbaa !111
  %2266 = icmp eq ptr %2265, null
  br i1 %2266, label %2269, label %2267

2267:                                             ; preds = %2263
  %2268 = call ptr @BLI_ghash_lookup(ptr noundef nonnull %2265, ptr noundef %54) #16
  br label %2269

2269:                                             ; preds = %2267, %2263
  %2270 = phi ptr [ %2268, %2267 ], [ null, %2263 ]
  %2271 = icmp eq ptr %2270, null
  br i1 %2271, label %2272, label %2286

2272:                                             ; preds = %2269
  %2273 = getelementptr inbounds %struct.DerivedMesh, ptr %2258, i64 0, i32 50
  %2274 = load ptr, ptr %2273, align 8, !tbaa !588
  %2275 = call ptr %2274(ptr noundef %2258, i32 noundef 14) #16
  %2276 = icmp eq ptr %2275, null
  br i1 %2276, label %2286, label %2277

2277:                                             ; preds = %2272
  %2278 = load ptr, ptr @MEM_dupallocN, align 8, !tbaa !77
  %2279 = call ptr %2278(ptr noundef nonnull %2275) #16
  %2280 = load ptr, ptr %2264, align 8, !tbaa !111
  %2281 = icmp eq ptr %2280, null
  br i1 %2281, label %2282, label %2284

2282:                                             ; preds = %2277
  %2283 = call ptr @BLI_ghash_ptr_new(ptr noundef nonnull @.str.18) #16
  store ptr %2283, ptr %2264, align 8, !tbaa !111
  br label %2284

2284:                                             ; preds = %2282, %2277
  %2285 = load ptr, ptr %2264, align 8, !tbaa !111
  call void @BLI_ghash_insert(ptr noundef %2285, ptr noundef %54, ptr noundef %2279) #16
  br label %2286

2286:                                             ; preds = %2284, %2272, %2269, %2260
  %2287 = phi ptr [ %2270, %2269 ], [ %2279, %2284 ], [ null, %2272 ], [ null, %2260 ]
  %2288 = getelementptr inbounds %struct.DerivedMesh, ptr %2258, i64 0, i32 31
  %2289 = load ptr, ptr %2288, align 8, !tbaa !589
  %2290 = call ptr %2289(ptr noundef %2258) #16
  %2291 = getelementptr inbounds %struct.DerivedMesh, ptr %2258, i64 0, i32 23
  %2292 = load ptr, ptr %2291, align 8, !tbaa !590
  %2293 = call i32 %2292(ptr noundef %2258) #16
  br i1 %2227, label %2294, label %2304

2294:                                             ; preds = %2286
  %2295 = load i32, ptr %2129, align 8, !tbaa !580
  %2296 = icmp eq i32 %2295, %2293
  br i1 %2296, label %2297, label %2304

2297:                                             ; preds = %2294
  %2298 = getelementptr inbounds %struct.Mesh, ptr %2123, i64 0, i32 28
  %2299 = load i32, ptr %2298, align 8, !tbaa !591
  %2300 = getelementptr inbounds %struct.DerivedMesh, ptr %2258, i64 0, i32 25
  %2301 = load ptr, ptr %2300, align 8, !tbaa !480
  %2302 = call i32 %2301(ptr noundef %2258) #16
  %2303 = icmp ne i32 %2299, %2302
  br label %2304

2304:                                             ; preds = %2297, %2294, %2286
  %2305 = phi i1 [ true, %2294 ], [ true, %2286 ], [ %2303, %2297 ]
  %2306 = call fastcc ptr @give_render_material(ptr noundef %0, ptr noundef %54, i16 noundef signext 1)
  %2307 = getelementptr inbounds %struct.Material, ptr %2306, i64 0, i32 2
  %2308 = load i16, ptr %2307, align 8, !tbaa !175
  %2309 = icmp eq i16 %2308, 1
  br i1 %2309, label %2310, label %2433

2310:                                             ; preds = %2304
  %2311 = load ptr, ptr %53, align 8, !tbaa !184
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %15) #16
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %16) #16
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %17) #16
  %2312 = getelementptr inbounds %struct.Material, ptr %2306, i64 0, i32 39
  %2313 = load i8, ptr %2312, align 2, !tbaa !439
  %2314 = getelementptr inbounds %struct.Object, ptr %2311, i64 0, i32 47
  call void @mul_m4_m4m4(ptr noundef nonnull %16, ptr noundef nonnull %2124, ptr noundef nonnull %2314) #16
  %2315 = getelementptr inbounds %struct.Object, ptr %2311, i64 0, i32 50
  call void @copy_m3_m4(ptr noundef nonnull %17, ptr noundef nonnull %2315) #16
  %2316 = load i16, ptr %2186, align 8, !tbaa !267
  %2317 = or i16 %2316, 2
  store i16 %2317, ptr %2186, align 8, !tbaa !267
  %2318 = icmp sgt i32 %2293, 0
  br i1 %2318, label %2319, label %2432

2319:                                             ; preds = %2310
  %2320 = zext i8 %2313 to i32
  %2321 = getelementptr inbounds %struct.Material, ptr %2306, i64 0, i32 59
  %2322 = getelementptr inbounds float, ptr %15, i64 1
  %2323 = getelementptr inbounds float, ptr %15, i64 2
  %2324 = getelementptr inbounds %struct.Material, ptr %2306, i64 0, i32 51
  %2325 = getelementptr inbounds [3 x float], ptr %17, i64 0, i64 1
  %2326 = getelementptr inbounds [3 x float], ptr %17, i64 0, i64 2
  %2327 = getelementptr inbounds [3 x [3 x float]], ptr %17, i64 0, i64 1
  %2328 = getelementptr inbounds [3 x [3 x float]], ptr %17, i64 0, i64 1, i64 1
  %2329 = getelementptr inbounds [3 x [3 x float]], ptr %17, i64 0, i64 1, i64 2
  %2330 = getelementptr inbounds [3 x [3 x float]], ptr %17, i64 0, i64 2
  %2331 = getelementptr inbounds [3 x [3 x float]], ptr %17, i64 0, i64 2, i64 1
  %2332 = getelementptr inbounds [3 x [3 x float]], ptr %17, i64 0, i64 2, i64 2
  %2333 = getelementptr inbounds %struct.Object, ptr %2311, i64 0, i32 52
  br label %2334

2334:                                             ; preds = %2319, %2425
  %2335 = phi i32 [ %2320, %2319 ], [ %2428, %2425 ]
  %2336 = phi ptr [ %2290, %2319 ], [ %2430, %2425 ]
  %2337 = phi i32 [ 0, %2319 ], [ %2429, %2425 ]
  %2338 = phi ptr [ %2287, %2319 ], [ %2427, %2425 ]
  %2339 = load float, ptr %2321, align 4, !tbaa !438
  %2340 = load float, ptr %2336, align 4, !tbaa !44
  store float %2340, ptr %15, align 4, !tbaa !44
  %2341 = getelementptr inbounds float, ptr %2336, i64 1
  %2342 = load float, ptr %2341, align 4, !tbaa !44
  store float %2342, ptr %2322, align 4, !tbaa !44
  %2343 = getelementptr inbounds float, ptr %2336, i64 2
  %2344 = load float, ptr %2343, align 4, !tbaa !44
  store float %2344, ptr %2323, align 4, !tbaa !44
  call void @mul_m4_v3(ptr noundef nonnull %16, ptr noundef nonnull %15) #16
  %2345 = load i32, ptr %2324, align 4, !tbaa !135
  %2346 = and i32 %2345, 8192
  %2347 = icmp eq i32 %2346, 0
  br i1 %2347, label %2416, label %2348

2348:                                             ; preds = %2334
  %2349 = getelementptr inbounds %struct.MVert, ptr %2336, i64 0, i32 1
  %2350 = load i16, ptr %2349, align 4, !tbaa !79
  %2351 = sitofp i16 %2350 to float
  %2352 = getelementptr inbounds %struct.MVert, ptr %2336, i64 0, i32 1, i64 1
  %2353 = load i16, ptr %2352, align 2, !tbaa !79
  %2354 = sitofp i16 %2353 to float
  %2355 = getelementptr inbounds %struct.MVert, ptr %2336, i64 0, i32 1, i64 2
  %2356 = load i16, ptr %2355, align 4, !tbaa !79
  %2357 = sitofp i16 %2356 to float
  %2358 = load float, ptr %17, align 16, !tbaa !44
  %2359 = load float, ptr %2325, align 4, !tbaa !44
  %2360 = fmul float %2359, %2354
  %2361 = call float @llvm.fmuladd.f32(float %2358, float %2351, float %2360)
  %2362 = load float, ptr %2326, align 8, !tbaa !44
  %2363 = call float @llvm.fmuladd.f32(float %2362, float %2357, float %2361)
  %2364 = load float, ptr %2327, align 4, !tbaa !44
  %2365 = load float, ptr %2328, align 16, !tbaa !44
  %2366 = fmul float %2365, %2354
  %2367 = call float @llvm.fmuladd.f32(float %2364, float %2351, float %2366)
  %2368 = load float, ptr %2329, align 4, !tbaa !44
  %2369 = call float @llvm.fmuladd.f32(float %2368, float %2357, float %2367)
  %2370 = load float, ptr %2330, align 8, !tbaa !44
  %2371 = load float, ptr %2331, align 4, !tbaa !44
  %2372 = fmul float %2371, %2354
  %2373 = call float @llvm.fmuladd.f32(float %2370, float %2351, float %2372)
  %2374 = load float, ptr %2332, align 16, !tbaa !44
  %2375 = call float @llvm.fmuladd.f32(float %2374, float %2357, float %2373)
  %2376 = fmul float %2369, %2369
  %2377 = call float @llvm.fmuladd.f32(float %2363, float %2363, float %2376)
  %2378 = call float @llvm.fmuladd.f32(float %2375, float %2375, float %2377)
  %2379 = fcmp ogt float %2378, 0x38AA95A5C0000000
  br i1 %2379, label %2380, label %2386

2380:                                             ; preds = %2348
  %2381 = call float @sqrtf(float noundef %2378) #16
  %2382 = fdiv float 1.000000e+00, %2381
  %2383 = fmul float %2363, %2382
  %2384 = fmul float %2369, %2382
  %2385 = fmul float %2375, %2382
  br label %2386

2386:                                             ; preds = %2380, %2348
  %2387 = phi float [ %2384, %2380 ], [ 0.000000e+00, %2348 ]
  %2388 = phi float [ %2383, %2380 ], [ 0.000000e+00, %2348 ]
  %2389 = phi float [ %2385, %2380 ], [ 0.000000e+00, %2348 ]
  %2390 = load float, ptr %15, align 4, !tbaa !44
  %2391 = load float, ptr %2322, align 4, !tbaa !44
  %2392 = load float, ptr %2323, align 4, !tbaa !44
  %2393 = fmul float %2391, %2391
  %2394 = call float @llvm.fmuladd.f32(float %2390, float %2390, float %2393)
  %2395 = call float @llvm.fmuladd.f32(float %2392, float %2392, float %2394)
  %2396 = fcmp ogt float %2395, 0x38AA95A5C0000000
  br i1 %2396, label %2397, label %2403

2397:                                             ; preds = %2386
  %2398 = call float @sqrtf(float noundef %2395) #16
  %2399 = fdiv float 1.000000e+00, %2398
  %2400 = fmul float %2390, %2399
  %2401 = fmul float %2391, %2399
  %2402 = fmul float %2392, %2399
  br label %2403

2403:                                             ; preds = %2397, %2386
  %2404 = phi float [ %2401, %2397 ], [ 0.000000e+00, %2386 ]
  %2405 = phi float [ %2400, %2397 ], [ 0.000000e+00, %2386 ]
  %2406 = phi float [ %2402, %2397 ], [ 0.000000e+00, %2386 ]
  %2407 = fmul float %2387, %2404
  %2408 = call float @llvm.fmuladd.f32(float %2388, float %2405, float %2407)
  %2409 = call float @llvm.fmuladd.f32(float %2389, float %2406, float %2408)
  %2410 = fcmp ult float %2409, 0.000000e+00
  br i1 %2410, label %2411, label %2416

2411:                                             ; preds = %2403
  %2412 = fmul float %2409, %2409
  %2413 = fmul float %2409, %2412
  %2414 = fmul float %2409, %2413
  %2415 = fmul float %2339, %2414
  br label %2416

2416:                                             ; preds = %2411, %2403, %2334
  %2417 = phi float [ %2415, %2411 ], [ %2339, %2334 ], [ 0.000000e+00, %2403 ]
  %2418 = icmp eq ptr %2338, null
  %2419 = select i1 %2418, ptr %2336, ptr %2338
  %2420 = call ptr @RE_inithalo(ptr noundef %0, ptr noundef %1, ptr noundef nonnull %2306, ptr noundef nonnull %15, ptr noundef null, ptr noundef nonnull %2419, float noundef %2417, float noundef 0.000000e+00, i32 noundef %2335) #16
  %2421 = icmp eq ptr %2420, null
  br i1 %2421, label %2425, label %2422

2422:                                             ; preds = %2416
  %2423 = load i32, ptr %2333, align 8, !tbaa !189
  %2424 = getelementptr inbounds %struct.HaloRen, ptr %2420, i64 0, i32 28
  store i32 %2423, ptr %2424, align 8, !tbaa !592
  br label %2425

2425:                                             ; preds = %2422, %2416
  %2426 = getelementptr inbounds float, ptr %2338, i64 3
  %2427 = select i1 %2418, ptr null, ptr %2426
  %2428 = add nuw nsw i32 %2335, 1
  %2429 = add nuw nsw i32 %2337, 1
  %2430 = getelementptr inbounds %struct.MVert, ptr %2336, i64 1
  %2431 = icmp eq i32 %2429, %2293
  br i1 %2431, label %2432, label %2334, !llvm.loop !594

2432:                                             ; preds = %2425, %2310
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %17) #16
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %16) #16
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %15) #16
  br label %3262

2433:                                             ; preds = %2304
  br i1 %2238, label %2434, label %2438

2434:                                             ; preds = %2433
  %2435 = getelementptr inbounds %struct.DerivedMesh, ptr %2258, i64 0, i32 50
  %2436 = load ptr, ptr %2435, align 8, !tbaa !588
  %2437 = call ptr %2436(ptr noundef %2258, i32 noundef 7) #16
  br label %2438

2438:                                             ; preds = %2434, %2433
  %2439 = phi ptr [ %2437, %2434 ], [ null, %2433 ]
  %2440 = icmp sgt i32 %2293, 0
  br i1 %2440, label %2441, label %2518

2441:                                             ; preds = %2438
  %2442 = getelementptr inbounds %struct.ObjectRen, ptr %1, i64 0, i32 10
  %2443 = icmp eq ptr %2439, null
  %2444 = zext nneg i32 %2293 to i64
  br label %2445

2445:                                             ; preds = %2441, %2514
  %2446 = phi i64 [ 0, %2441 ], [ %2515, %2514 ]
  %2447 = phi ptr [ %2290, %2441 ], [ %2516, %2514 ]
  %2448 = phi ptr [ %2287, %2441 ], [ %2505, %2514 ]
  %2449 = load i32, ptr %2442, align 8, !tbaa !211
  %2450 = add nsw i32 %2449, 1
  store i32 %2450, ptr %2442, align 8, !tbaa !211
  %2451 = call ptr @RE_findOrAddVert(ptr noundef %1, i32 noundef %2449) #16
  %2452 = load float, ptr %2447, align 4, !tbaa !44
  store float %2452, ptr %2451, align 4, !tbaa !44
  %2453 = getelementptr inbounds float, ptr %2447, i64 1
  %2454 = load float, ptr %2453, align 4, !tbaa !44
  %2455 = getelementptr inbounds float, ptr %2451, i64 1
  store float %2454, ptr %2455, align 4, !tbaa !44
  %2456 = getelementptr inbounds float, ptr %2447, i64 2
  %2457 = load float, ptr %2456, align 4, !tbaa !44
  %2458 = getelementptr inbounds float, ptr %2451, i64 2
  store float %2457, ptr %2458, align 4, !tbaa !44
  br i1 %2227, label %2499, label %2459

2459:                                             ; preds = %2445
  %2460 = getelementptr inbounds %struct.VertRen, ptr %2451, i64 0, i32 1
  %2461 = getelementptr inbounds %struct.MVert, ptr %2447, i64 0, i32 1
  %2462 = load i16, ptr %2461, align 2, !tbaa !79
  %2463 = sitofp i16 %2462 to float
  %2464 = fmul float %2463, 0x3F00002000000000
  store float %2464, ptr %2460, align 4, !tbaa !44
  %2465 = getelementptr inbounds %struct.MVert, ptr %2447, i64 0, i32 1, i64 1
  %2466 = load i16, ptr %2465, align 2, !tbaa !79
  %2467 = sitofp i16 %2466 to float
  %2468 = fmul float %2467, 0x3F00002000000000
  %2469 = getelementptr inbounds %struct.VertRen, ptr %2451, i64 0, i32 1, i64 1
  store float %2468, ptr %2469, align 4, !tbaa !44
  %2470 = getelementptr inbounds %struct.MVert, ptr %2447, i64 0, i32 1, i64 2
  %2471 = load i16, ptr %2470, align 2, !tbaa !79
  %2472 = sitofp i16 %2471 to float
  %2473 = fmul float %2472, 0x3F00002000000000
  %2474 = getelementptr inbounds %struct.VertRen, ptr %2451, i64 0, i32 1, i64 2
  store float %2473, ptr %2474, align 4, !tbaa !44
  call void @mul_m4_v3(ptr noundef nonnull %19, ptr noundef nonnull %2451) #16
  call void @mul_transposed_m3_v3(ptr noundef nonnull %18, ptr noundef nonnull %2460) #16
  %2475 = load float, ptr %2460, align 4, !tbaa !44
  %2476 = load float, ptr %2469, align 4, !tbaa !44
  %2477 = fmul float %2476, %2476
  %2478 = call float @llvm.fmuladd.f32(float %2475, float %2475, float %2477)
  %2479 = load float, ptr %2474, align 4, !tbaa !44
  %2480 = call float @llvm.fmuladd.f32(float %2479, float %2479, float %2478)
  %2481 = fcmp ogt float %2480, 0x38AA95A5C0000000
  br i1 %2481, label %2482, label %2491

2482:                                             ; preds = %2459
  %2483 = call float @sqrtf(float noundef %2480) #16
  %2484 = fdiv float 1.000000e+00, %2483
  %2485 = load float, ptr %2460, align 4, !tbaa !44
  %2486 = fmul float %2485, %2484
  store float %2486, ptr %2460, align 4, !tbaa !44
  %2487 = load float, ptr %2469, align 4, !tbaa !44
  %2488 = fmul float %2484, %2487
  store float %2488, ptr %2469, align 4, !tbaa !44
  %2489 = load float, ptr %2474, align 4, !tbaa !44
  %2490 = fmul float %2484, %2489
  br label %2492

2491:                                             ; preds = %2459
  store float 0.000000e+00, ptr %2460, align 4, !tbaa !44
  store float 0.000000e+00, ptr %2469, align 4, !tbaa !44
  br label %2492

2492:                                             ; preds = %2491, %2482
  %2493 = phi float [ 0.000000e+00, %2491 ], [ %2490, %2482 ]
  store float %2493, ptr %2474, align 4, !tbaa !44
  %2494 = load float, ptr %2460, align 4, !tbaa !44
  %2495 = fneg float %2494
  store float %2495, ptr %2460, align 4, !tbaa !44
  %2496 = load float, ptr %2469, align 4, !tbaa !44
  %2497 = fneg float %2496
  store float %2497, ptr %2469, align 4, !tbaa !44
  %2498 = fneg float %2493
  store float %2498, ptr %2474, align 4, !tbaa !44
  br label %2499

2499:                                             ; preds = %2492, %2445
  %2500 = icmp eq ptr %2448, null
  br i1 %2500, label %2504, label %2501

2501:                                             ; preds = %2499
  %2502 = getelementptr inbounds %struct.VertRen, ptr %2451, i64 0, i32 2
  store ptr %2448, ptr %2502, align 8, !tbaa !548
  %2503 = getelementptr inbounds float, ptr %2448, i64 3
  br label %2504

2504:                                             ; preds = %2501, %2499
  %2505 = phi ptr [ %2503, %2501 ], [ null, %2499 ]
  br i1 %2238, label %2506, label %2514

2506:                                             ; preds = %2504
  %2507 = call ptr @RE_vertren_get_origindex(ptr noundef %1, ptr noundef nonnull %2451, i32 noundef 1) #16
  %2508 = trunc i64 %2446 to i32
  br i1 %2443, label %2512, label %2509

2509:                                             ; preds = %2506
  %2510 = getelementptr inbounds i32, ptr %2439, i64 %2446
  %2511 = load i32, ptr %2510, align 4, !tbaa !80
  br label %2512

2512:                                             ; preds = %2509, %2506
  %2513 = phi i32 [ %2511, %2509 ], [ %2508, %2506 ]
  store i32 %2513, ptr %2507, align 4, !tbaa !80
  br label %2514

2514:                                             ; preds = %2512, %2504
  %2515 = add nuw nsw i64 %2446, 1
  %2516 = getelementptr inbounds %struct.MVert, ptr %2447, i64 1
  %2517 = icmp eq i64 %2515, %2444
  br i1 %2517, label %2518, label %2445, !llvm.loop !595

2518:                                             ; preds = %2514, %2438
  br i1 %2242, label %2519, label %3262

2519:                                             ; preds = %2518
  %2520 = getelementptr inbounds %struct.DerivedMesh, ptr %2258, i64 0, i32 2
  call void @RE_set_customdata_names(ptr noundef %1, ptr noundef nonnull %2520) #16
  %2521 = icmp eq i8 %2198, 0
  br i1 %2521, label %2526, label %2522

2522:                                             ; preds = %2519
  %2523 = call i32 @CustomData_get_layer_index(ptr noundef nonnull %2520, i32 noundef 18) #16
  %2524 = icmp eq i32 %2523, -1
  br i1 %2524, label %2525, label %2526

2525:                                             ; preds = %2522
  call void @DM_add_tangent_layer(ptr noundef %2258) #16
  br label %2526

2526:                                             ; preds = %2525, %2522, %2519
  %2527 = getelementptr inbounds %struct.ObjectRen, ptr %1, i64 0, i32 10
  %2528 = load i32, ptr %2527, align 8, !tbaa !211
  %2529 = sub nsw i32 %2528, %2293
  %2530 = load i32, ptr %2185, align 8, !tbaa !276
  %2531 = icmp sgt i32 %2530, -1
  br i1 %2531, label %2532, label %2898

2532:                                             ; preds = %2526
  %2533 = getelementptr inbounds %struct.DerivedMesh, ptr %2258, i64 0, i32 24
  %2534 = getelementptr inbounds %struct.DerivedMesh, ptr %2258, i64 0, i32 25
  %2535 = getelementptr inbounds %struct.DerivedMesh, ptr %2258, i64 0, i32 33
  %2536 = getelementptr inbounds %struct.DerivedMesh, ptr %2258, i64 0, i32 52
  %2537 = icmp eq i8 %2128, 0
  %2538 = or i1 %2537, %2227
  %2539 = select i1 %2538, i32 0, i32 2
  %2540 = getelementptr inbounds i32, ptr %20, i64 1
  %2541 = getelementptr inbounds i32, ptr %20, i64 2
  %2542 = select i1 %2538, i32 2, i32 0
  %2543 = getelementptr inbounds i32, ptr %20, i64 3
  %2544 = getelementptr inbounds %struct.ObjectRen, ptr %1, i64 0, i32 11
  %2545 = getelementptr inbounds %struct.Mesh, ptr %2123, i64 0, i32 12
  %2546 = getelementptr inbounds %struct.Mesh, ptr %2123, i64 0, i32 15
  %2547 = getelementptr inbounds %struct.DerivedMesh, ptr %2258, i64 0, i32 2, i32 2
  br label %2548

2548:                                             ; preds = %2532, %2893
  %2549 = phi ptr [ null, %2532 ], [ %2895, %2893 ]
  %2550 = phi i32 [ 0, %2532 ], [ %2552, %2893 ]
  %2551 = phi ptr [ null, %2532 ], [ %2894, %2893 ]
  %2552 = add nuw nsw i32 %2550, 1
  %2553 = trunc i32 %2552 to i16
  %2554 = call fastcc ptr @give_render_material(ptr noundef %0, ptr noundef %54, i16 noundef signext %2553)
  %2555 = getelementptr inbounds %struct.Material, ptr %2554, i64 0, i32 21
  %2556 = load float, ptr %2555, align 8, !tbaa !596
  %2557 = fcmp oeq float %2556, 0.000000e+00
  br i1 %2557, label %2558, label %2591

2558:                                             ; preds = %2548
  %2559 = getelementptr inbounds %struct.Material, ptr %2554, i64 0, i32 19
  %2560 = load float, ptr %2559, align 8, !tbaa !597
  %2561 = fcmp oeq float %2560, 0.000000e+00
  br i1 %2561, label %2562, label %2591

2562:                                             ; preds = %2558
  %2563 = getelementptr inbounds %struct.Material, ptr %2554, i64 0, i32 33
  %2564 = load float, ptr %2563, align 8, !tbaa !598
  %2565 = fcmp oeq float %2564, 0.000000e+00
  br i1 %2565, label %2566, label %2591

2566:                                             ; preds = %2562
  %2567 = getelementptr inbounds %struct.Material, ptr %2554, i64 0, i32 51
  %2568 = load i32, ptr %2567, align 4, !tbaa !135
  %2569 = and i32 %2568, 458752
  %2570 = icmp eq i32 %2569, 65536
  br i1 %2570, label %2571, label %2591

2571:                                             ; preds = %2566, %2587
  %2572 = phi i64 [ %2589, %2587 ], [ 0, %2566 ]
  %2573 = phi i32 [ %2588, %2587 ], [ 0, %2566 ]
  %2574 = getelementptr inbounds %struct.Material, ptr %2554, i64 0, i32 102, i64 %2572
  %2575 = load ptr, ptr %2574, align 8, !tbaa !77
  %2576 = icmp eq ptr %2575, null
  br i1 %2576, label %2587, label %2577

2577:                                             ; preds = %2571
  %2578 = getelementptr inbounds %struct.MTex, ptr %2575, i64 0, i32 5
  %2579 = load ptr, ptr %2578, align 8, !tbaa !81
  %2580 = icmp eq ptr %2579, null
  br i1 %2580, label %2587, label %2581

2581:                                             ; preds = %2577
  %2582 = getelementptr inbounds %struct.MTex, ptr %2575, i64 0, i32 1
  %2583 = load i16, ptr %2582, align 2, !tbaa !394
  %2584 = and i16 %2583, 128
  %2585 = icmp eq i16 %2584, 0
  %2586 = select i1 %2585, i32 %2573, i32 1
  br label %2587

2587:                                             ; preds = %2581, %2577, %2571
  %2588 = phi i32 [ %2573, %2577 ], [ %2573, %2571 ], [ %2586, %2581 ]
  %2589 = add nuw nsw i64 %2572, 1
  %2590 = icmp eq i64 %2589, 18
  br i1 %2590, label %2591, label %2571, !llvm.loop !599

2591:                                             ; preds = %2587, %2566, %2562, %2558, %2548
  %2592 = phi i32 [ 1, %2566 ], [ 1, %2562 ], [ 1, %2558 ], [ 1, %2548 ], [ %2588, %2587 ]
  %2593 = getelementptr inbounds %struct.Material, ptr %2554, i64 0, i32 2
  %2594 = load i16, ptr %2593, align 8, !tbaa !175
  %2595 = icmp eq i16 %2594, 3
  br i1 %2595, label %2596, label %2601

2596:                                             ; preds = %2591
  %2597 = load ptr, ptr %2533, align 8, !tbaa !600
  %2598 = call i32 %2597(ptr noundef %2258) #16
  %2599 = icmp eq i32 %2598, 0
  %2600 = select i1 %2599, i32 %2592, i32 0
  br label %2601

2601:                                             ; preds = %2596, %2591
  %2602 = phi i32 [ %2592, %2591 ], [ %2600, %2596 ]
  %2603 = icmp eq i32 %2602, 0
  br i1 %2603, label %2893, label %2604

2604:                                             ; preds = %2601
  %2605 = load ptr, ptr %2534, align 8, !tbaa !480
  %2606 = call i32 %2605(ptr noundef %2258) #16
  %2607 = load ptr, ptr %2535, align 8, !tbaa !601
  %2608 = call ptr %2607(ptr noundef %2258) #16
  %2609 = icmp eq ptr %2549, null
  %2610 = and i1 %2227, %2609
  br i1 %2610, label %2611, label %2620

2611:                                             ; preds = %2604
  %2612 = load ptr, ptr %2536, align 8, !tbaa !481
  %2613 = call ptr %2612(ptr noundef %2258, i32 noundef 40) #16
  %2614 = icmp eq ptr %2613, null
  br i1 %2614, label %2620, label %2615

2615:                                             ; preds = %2611
  %2616 = load ptr, ptr @MEM_mallocN, align 8, !tbaa !77
  %2617 = sext i32 %2606 to i64
  %2618 = mul nsw i64 %2617, 24
  %2619 = call ptr %2616(i64 noundef %2618, ptr noundef nonnull @__func__.init_render_mesh) #16
  br label %2620

2620:                                             ; preds = %2615, %2611, %2604
  %2621 = phi ptr [ %2619, %2615 ], [ %2551, %2611 ], [ %2551, %2604 ]
  %2622 = phi ptr [ %2619, %2615 ], [ null, %2611 ], [ %2549, %2604 ]
  %2623 = icmp sgt i32 %2606, 0
  br i1 %2623, label %2624, label %2893

2624:                                             ; preds = %2620
  %2625 = icmp eq ptr %2622, null
  %2626 = zext nneg i32 %2606 to i64
  br label %2627

2627:                                             ; preds = %2624, %2888
  %2628 = phi i64 [ 0, %2624 ], [ %2890, %2888 ]
  %2629 = phi ptr [ %2608, %2624 ], [ %2891, %2888 ]
  %2630 = phi ptr [ %2621, %2624 ], [ %2889, %2888 ]
  %2631 = getelementptr inbounds %struct.MFace, ptr %2629, i64 0, i32 4
  %2632 = load i16, ptr %2631, align 4, !tbaa !602
  %2633 = sext i16 %2632 to i32
  %2634 = icmp eq i32 %2550, %2633
  br i1 %2634, label %2635, label %2888

2635:                                             ; preds = %2627
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %20) #16
  store i32 %2539, ptr %20, align 16, !tbaa !80
  store i32 1, ptr %2540, align 4, !tbaa !80
  store i32 %2542, ptr %2541, align 8, !tbaa !80
  store i32 3, ptr %2543, align 4, !tbaa !80
  %2636 = getelementptr inbounds %struct.MFace, ptr %2629, i64 0, i32 2
  %2637 = select i1 %2538, ptr %2629, ptr %2636
  %2638 = load i32, ptr %2637, align 4, !tbaa !80
  %2639 = getelementptr inbounds %struct.MFace, ptr %2629, i64 0, i32 1
  %2640 = load i32, ptr %2639, align 4, !tbaa !604
  %2641 = select i1 %2538, ptr %2636, ptr %2629
  %2642 = load i32, ptr %2641, align 4, !tbaa !80
  %2643 = getelementptr inbounds %struct.MFace, ptr %2629, i64 0, i32 3
  %2644 = load i32, ptr %2643, align 4, !tbaa !605
  %2645 = getelementptr inbounds %struct.MFace, ptr %2629, i64 0, i32 6
  %2646 = load i8, ptr %2645, align 1, !tbaa !606
  %2647 = and i8 %2646, 1
  %2648 = load i32, ptr %2544, align 4, !tbaa !293
  %2649 = add nsw i32 %2648, 1
  store i32 %2649, ptr %2544, align 4, !tbaa !293
  %2650 = call ptr @RE_findOrAddVlak(ptr noundef %1, i32 noundef %2648) #16
  %2651 = add nsw i32 %2638, %2529
  %2652 = call ptr @RE_findOrAddVert(ptr noundef %1, i32 noundef %2651) #16
  store ptr %2652, ptr %2650, align 8, !tbaa !553
  %2653 = add nsw i32 %2640, %2529
  %2654 = call ptr @RE_findOrAddVert(ptr noundef %1, i32 noundef %2653) #16
  %2655 = getelementptr inbounds %struct.VlakRen, ptr %2650, i64 0, i32 1
  store ptr %2654, ptr %2655, align 8, !tbaa !555
  %2656 = add nsw i32 %2642, %2529
  %2657 = call ptr @RE_findOrAddVert(ptr noundef %1, i32 noundef %2656) #16
  %2658 = getelementptr inbounds %struct.VlakRen, ptr %2650, i64 0, i32 2
  store ptr %2657, ptr %2658, align 8, !tbaa !556
  %2659 = icmp eq i32 %2644, 0
  br i1 %2659, label %2663, label %2660

2660:                                             ; preds = %2635
  %2661 = add nsw i32 %2644, %2529
  %2662 = call ptr @RE_findOrAddVert(ptr noundef %1, i32 noundef %2661) #16
  br label %2663

2663:                                             ; preds = %2635, %2660
  %2664 = phi ptr [ %2662, %2660 ], [ null, %2635 ]
  %2665 = getelementptr inbounds %struct.VlakRen, ptr %2650, i64 0, i32 3
  store ptr %2664, ptr %2665, align 8, !tbaa !557
  br i1 %2305, label %2704, label %2666

2666:                                             ; preds = %2663
  %2667 = load ptr, ptr %2545, align 8, !tbaa !607
  %2668 = getelementptr inbounds %struct.MFace, ptr %2667, i64 %2628
  %2669 = load ptr, ptr %2546, align 8, !tbaa !608
  %2670 = getelementptr inbounds %struct.VlakRen, ptr %2650, i64 0, i32 3
  %2671 = load ptr, ptr %2670, align 8, !tbaa !557
  %2672 = icmp eq ptr %2671, null
  %2673 = getelementptr inbounds %struct.VlakRen, ptr %2650, i64 0, i32 4
  br i1 %2672, label %2691, label %2674

2674:                                             ; preds = %2666
  %2675 = getelementptr inbounds %struct.MFace, ptr %2667, i64 %2628, i32 3
  %2676 = load i32, ptr %2675, align 4, !tbaa !605
  %2677 = zext i32 %2676 to i64
  %2678 = getelementptr inbounds %struct.MVert, ptr %2669, i64 %2677
  %2679 = getelementptr inbounds %struct.MFace, ptr %2667, i64 %2628, i32 2
  %2680 = load i32, ptr %2679, align 4, !tbaa !609
  %2681 = zext i32 %2680 to i64
  %2682 = getelementptr inbounds %struct.MVert, ptr %2669, i64 %2681
  %2683 = getelementptr inbounds %struct.MFace, ptr %2667, i64 %2628, i32 1
  %2684 = load i32, ptr %2683, align 4, !tbaa !604
  %2685 = zext i32 %2684 to i64
  %2686 = getelementptr inbounds %struct.MVert, ptr %2669, i64 %2685
  %2687 = load i32, ptr %2668, align 4, !tbaa !610
  %2688 = zext i32 %2687 to i64
  %2689 = getelementptr inbounds %struct.MVert, ptr %2669, i64 %2688
  %2690 = call float @normal_quad_v3(ptr noundef nonnull %2673, ptr noundef %2678, ptr noundef %2682, ptr noundef %2686, ptr noundef %2689) #16
  br label %2716

2691:                                             ; preds = %2666
  %2692 = getelementptr inbounds %struct.MFace, ptr %2667, i64 %2628, i32 2
  %2693 = load i32, ptr %2692, align 4, !tbaa !609
  %2694 = zext i32 %2693 to i64
  %2695 = getelementptr inbounds %struct.MVert, ptr %2669, i64 %2694
  %2696 = getelementptr inbounds %struct.MFace, ptr %2667, i64 %2628, i32 1
  %2697 = load i32, ptr %2696, align 4, !tbaa !604
  %2698 = zext i32 %2697 to i64
  %2699 = getelementptr inbounds %struct.MVert, ptr %2669, i64 %2698
  %2700 = load i32, ptr %2668, align 4, !tbaa !610
  %2701 = zext i32 %2700 to i64
  %2702 = getelementptr inbounds %struct.MVert, ptr %2669, i64 %2701
  %2703 = call float @normal_tri_v3(ptr noundef nonnull %2673, ptr noundef %2695, ptr noundef %2699, ptr noundef %2702) #16
  br label %2716

2704:                                             ; preds = %2663
  %2705 = getelementptr inbounds %struct.VlakRen, ptr %2650, i64 0, i32 3
  %2706 = load ptr, ptr %2705, align 8, !tbaa !557
  %2707 = icmp eq ptr %2706, null
  %2708 = getelementptr inbounds %struct.VlakRen, ptr %2650, i64 0, i32 4
  %2709 = load ptr, ptr %2658, align 8, !tbaa !556
  %2710 = load ptr, ptr %2655, align 8, !tbaa !555
  %2711 = load ptr, ptr %2650, align 8, !tbaa !553
  br i1 %2707, label %2714, label %2712

2712:                                             ; preds = %2704
  %2713 = call float @normal_quad_v3(ptr noundef nonnull %2708, ptr noundef nonnull %2706, ptr noundef %2709, ptr noundef %2710, ptr noundef %2711) #16
  br label %2716

2714:                                             ; preds = %2704
  %2715 = call float @normal_tri_v3(ptr noundef nonnull %2708, ptr noundef %2709, ptr noundef %2710, ptr noundef %2711) #16
  br label %2716

2716:                                             ; preds = %2714, %2712, %2691, %2674
  %2717 = phi float [ %2713, %2712 ], [ %2715, %2714 ], [ %2690, %2674 ], [ %2703, %2691 ]
  %2718 = getelementptr inbounds %struct.VlakRen, ptr %2650, i64 0, i32 5
  store ptr %2554, ptr %2718, align 8, !tbaa !558
  %2719 = getelementptr inbounds %struct.VlakRen, ptr %2650, i64 0, i32 7
  store i8 %2647, ptr %2719, align 1, !tbaa !559
  %2720 = getelementptr inbounds %struct.VlakRen, ptr %2650, i64 0, i32 8
  store i8 0, ptr %2720, align 2, !tbaa !560
  %2721 = fcmp oeq float %2717, 0.000000e+00
  br i1 %2721, label %2722, label %2725

2722:                                             ; preds = %2716
  %2723 = load i32, ptr %2544, align 4, !tbaa !293
  %2724 = add nsw i32 %2723, -1
  store i32 %2724, ptr %2544, align 4, !tbaa !293
  br label %2886

2725:                                             ; preds = %2716
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %21) #16
  %2726 = load i32, ptr %2547, align 4, !tbaa !611
  %2727 = icmp sgt i32 %2726, 0
  br i1 %2727, label %2728, label %2880

2728:                                             ; preds = %2725
  %2729 = select i1 %2659, i32 3, i32 4
  %2730 = shl i64 %2628, 4
  %2731 = and i64 %2730, 4294967280
  %2732 = trunc i64 %2628 to i32
  %2733 = shl nsw i32 %2732, 2
  %2734 = zext nneg i32 %2729 to i64
  %2735 = zext nneg i32 %2729 to i64
  %2736 = zext nneg i32 %2729 to i64
  br label %2737

2737:                                             ; preds = %2728, %2870
  %2738 = phi i64 [ 0, %2728 ], [ %2876, %2870 ]
  %2739 = phi i32 [ 0, %2728 ], [ %2875, %2870 ]
  %2740 = phi i32 [ 0, %2728 ], [ %2874, %2870 ]
  %2741 = phi i32 [ 0, %2728 ], [ %2873, %2870 ]
  %2742 = phi i32 [ 0, %2728 ], [ %2872, %2870 ]
  %2743 = phi ptr [ %2630, %2728 ], [ %2871, %2870 ]
  %2744 = load ptr, ptr %2520, align 8, !tbaa !612
  %2745 = getelementptr inbounds %struct.CustomDataLayer, ptr %2744, i64 %2738
  %2746 = getelementptr inbounds %struct.CustomDataLayer, ptr %2744, i64 %2738, i32 8
  store ptr %2746, ptr %21, align 8, !tbaa !77
  %2747 = load i32, ptr %2745, align 8, !tbaa !613
  %2748 = icmp eq i32 %2747, 5
  %2749 = icmp slt i32 %2742, 8
  %2750 = select i1 %2748, i1 %2749, i1 false
  br i1 %2750, label %2751, label %2771

2751:                                             ; preds = %2737
  %2752 = call ptr @RE_vlakren_get_tface(ptr noundef %1, ptr noundef nonnull %2650, i32 noundef %2742, ptr noundef nonnull %21, i32 noundef 1) #16
  %2753 = getelementptr inbounds %struct.CustomDataLayer, ptr %2744, i64 %2738, i32 9
  %2754 = load ptr, ptr %2753, align 8, !tbaa !615
  %2755 = getelementptr inbounds %struct.MTFace, ptr %2754, i64 %2628
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %2752, ptr noundef nonnull align 8 dereferenceable(48) %2755, i64 48, i1 false), !tbaa.struct !616
  br label %2756

2756:                                             ; preds = %2751, %2768
  %2757 = phi i64 [ 0, %2751 ], [ %2769, %2768 ]
  %2758 = getelementptr inbounds [4 x i32], ptr %20, i64 0, i64 %2757
  %2759 = load i32, ptr %2758, align 4, !tbaa !80
  %2760 = sext i32 %2759 to i64
  br label %2761

2761:                                             ; preds = %2756, %2761
  %2762 = phi i64 [ 0, %2756 ], [ %2766, %2761 ]
  %2763 = getelementptr inbounds [4 x [2 x float]], ptr %2755, i64 0, i64 %2760, i64 %2762
  %2764 = load float, ptr %2763, align 4, !tbaa !44
  %2765 = getelementptr inbounds [4 x [2 x float]], ptr %2752, i64 0, i64 %2757, i64 %2762
  store float %2764, ptr %2765, align 4, !tbaa !44
  %2766 = add nuw nsw i64 %2762, 1
  %2767 = icmp eq i64 %2762, 0
  br i1 %2767, label %2761, label %2768, !llvm.loop !617

2768:                                             ; preds = %2761
  %2769 = add nuw nsw i64 %2757, 1
  %2770 = icmp eq i64 %2769, %2736
  br i1 %2770, label %2866, label %2756, !llvm.loop !618

2771:                                             ; preds = %2737
  %2772 = icmp eq i32 %2747, 6
  %2773 = icmp slt i32 %2741, 8
  %2774 = select i1 %2772, i1 %2773, i1 false
  br i1 %2774, label %2775, label %2790

2775:                                             ; preds = %2771
  %2776 = call ptr @RE_vlakren_get_mcol(ptr noundef %1, ptr noundef nonnull %2650, i32 noundef %2741, ptr noundef nonnull %21, i32 noundef 1) #16
  %2777 = getelementptr inbounds %struct.CustomDataLayer, ptr %2744, i64 %2738, i32 9
  %2778 = load ptr, ptr %2777, align 8, !tbaa !615
  br label %2779

2779:                                             ; preds = %2775, %2779
  %2780 = phi i64 [ 0, %2775 ], [ %2788, %2779 ]
  %2781 = getelementptr inbounds %struct.MCol, ptr %2776, i64 %2780
  %2782 = getelementptr inbounds [4 x i32], ptr %20, i64 0, i64 %2780
  %2783 = load i32, ptr %2782, align 4, !tbaa !80
  %2784 = add nsw i32 %2783, %2733
  %2785 = sext i32 %2784 to i64
  %2786 = getelementptr inbounds %struct.MCol, ptr %2778, i64 %2785
  %2787 = load i32, ptr %2786, align 1
  store i32 %2787, ptr %2781, align 1
  %2788 = add nuw nsw i64 %2780, 1
  %2789 = icmp eq i64 %2788, %2735
  br i1 %2789, label %2868, label %2779, !llvm.loop !619

2790:                                             ; preds = %2771
  %2791 = icmp eq i32 %2747, 18
  %2792 = icmp slt i32 %2740, 1
  %2793 = select i1 %2791, i1 %2792, i1 false
  br i1 %2793, label %2794, label %2840

2794:                                             ; preds = %2790
  br i1 %2521, label %2870, label %2795

2795:                                             ; preds = %2794
  %2796 = getelementptr inbounds %struct.CustomDataLayer, ptr %2744, i64 %2738, i32 9
  %2797 = load ptr, ptr %2796, align 8, !tbaa !615
  %2798 = call ptr @RE_vlakren_get_nmap_tangent(ptr noundef %1, ptr noundef nonnull %2650, i32 noundef 1) #16
  %2799 = getelementptr inbounds float, ptr %2797, i64 %2731
  br label %2800

2800:                                             ; preds = %2795, %2836
  %2801 = phi i64 [ 0, %2795 ], [ %2838, %2836 ]
  %2802 = shl nsw i64 %2801, 2
  %2803 = getelementptr inbounds float, ptr %2798, i64 %2802
  %2804 = getelementptr inbounds [4 x i32], ptr %20, i64 0, i64 %2801
  %2805 = load i32, ptr %2804, align 4, !tbaa !80
  %2806 = shl nsw i32 %2805, 2
  %2807 = sext i32 %2806 to i64
  %2808 = getelementptr inbounds float, ptr %2799, i64 %2807
  %2809 = load float, ptr %2808, align 4, !tbaa !44
  store float %2809, ptr %2803, align 4, !tbaa !44
  %2810 = getelementptr inbounds float, ptr %2808, i64 1
  %2811 = load float, ptr %2810, align 4, !tbaa !44
  %2812 = getelementptr inbounds float, ptr %2803, i64 1
  store float %2811, ptr %2812, align 4, !tbaa !44
  %2813 = getelementptr inbounds float, ptr %2808, i64 2
  %2814 = load float, ptr %2813, align 4, !tbaa !44
  %2815 = getelementptr inbounds float, ptr %2803, i64 2
  store float %2814, ptr %2815, align 4, !tbaa !44
  %2816 = getelementptr inbounds float, ptr %2808, i64 3
  %2817 = load float, ptr %2816, align 4, !tbaa !44
  %2818 = getelementptr inbounds float, ptr %2803, i64 3
  store float %2817, ptr %2818, align 4, !tbaa !44
  call void @mul_mat3_m4_v3(ptr noundef nonnull %19, ptr noundef nonnull %2803) #16
  %2819 = load float, ptr %2803, align 4, !tbaa !44
  %2820 = load float, ptr %2812, align 4, !tbaa !44
  %2821 = fmul float %2820, %2820
  %2822 = call float @llvm.fmuladd.f32(float %2819, float %2819, float %2821)
  %2823 = load float, ptr %2815, align 4, !tbaa !44
  %2824 = call float @llvm.fmuladd.f32(float %2823, float %2823, float %2822)
  %2825 = fcmp ogt float %2824, 0x38AA95A5C0000000
  br i1 %2825, label %2826, label %2835

2826:                                             ; preds = %2800
  %2827 = call float @sqrtf(float noundef %2824) #16
  %2828 = fdiv float 1.000000e+00, %2827
  %2829 = load float, ptr %2803, align 4, !tbaa !44
  %2830 = fmul float %2829, %2828
  store float %2830, ptr %2803, align 4, !tbaa !44
  %2831 = load float, ptr %2812, align 4, !tbaa !44
  %2832 = fmul float %2828, %2831
  store float %2832, ptr %2812, align 4, !tbaa !44
  %2833 = load float, ptr %2815, align 4, !tbaa !44
  %2834 = fmul float %2828, %2833
  br label %2836

2835:                                             ; preds = %2800
  store float 0.000000e+00, ptr %2803, align 4, !tbaa !44
  store float 0.000000e+00, ptr %2812, align 4, !tbaa !44
  br label %2836

2836:                                             ; preds = %2835, %2826
  %2837 = phi float [ 0.000000e+00, %2835 ], [ %2834, %2826 ]
  store float %2837, ptr %2815, align 4, !tbaa !44
  %2838 = add nuw nsw i64 %2801, 1
  %2839 = icmp eq i64 %2838, %2734
  br i1 %2839, label %2870, label %2800, !llvm.loop !620

2840:                                             ; preds = %2790
  %2841 = icmp eq i32 %2747, 40
  %2842 = icmp slt i32 %2739, 1
  %2843 = select i1 %2841, i1 %2842, i1 false
  br i1 %2843, label %2844, label %2870

2844:                                             ; preds = %2840
  br i1 %2625, label %2870, label %2845

2845:                                             ; preds = %2844
  %2846 = getelementptr inbounds %struct.CustomDataLayer, ptr %2744, i64 %2738, i32 9
  %2847 = load ptr, ptr %2846, align 8, !tbaa !615
  br label %2848

2848:                                             ; preds = %2845, %2848
  %2849 = phi i64 [ 0, %2845 ], [ %2862, %2848 ]
  %2850 = getelementptr inbounds [4 x [3 x i16]], ptr %2743, i64 0, i64 %2849
  %2851 = getelementptr inbounds [4 x i32], ptr %20, i64 0, i64 %2849
  %2852 = load i32, ptr %2851, align 4, !tbaa !80
  %2853 = sext i32 %2852 to i64
  %2854 = getelementptr inbounds [4 x [3 x i16]], ptr %2847, i64 %2628, i64 %2853
  %2855 = load i16, ptr %2854, align 2, !tbaa !79
  store i16 %2855, ptr %2850, align 2, !tbaa !79
  %2856 = getelementptr inbounds i16, ptr %2854, i64 1
  %2857 = load i16, ptr %2856, align 2, !tbaa !79
  %2858 = getelementptr inbounds i16, ptr %2850, i64 1
  store i16 %2857, ptr %2858, align 2, !tbaa !79
  %2859 = getelementptr inbounds i16, ptr %2854, i64 2
  %2860 = load i16, ptr %2859, align 2, !tbaa !79
  %2861 = getelementptr inbounds i16, ptr %2850, i64 2
  store i16 %2860, ptr %2861, align 2, !tbaa !79
  %2862 = add nuw nsw i64 %2849, 1
  %2863 = icmp eq i64 %2862, 4
  br i1 %2863, label %2864, label %2848, !llvm.loop !621

2864:                                             ; preds = %2848
  %2865 = getelementptr inbounds [4 x [3 x i16]], ptr %2743, i64 1
  br label %2870

2866:                                             ; preds = %2768
  %2867 = add nsw i32 %2742, 1
  br label %2870

2868:                                             ; preds = %2779
  %2869 = add nsw i32 %2741, 1
  br label %2870

2870:                                             ; preds = %2836, %2868, %2866, %2864, %2844, %2840, %2794
  %2871 = phi ptr [ %2743, %2840 ], [ %2743, %2794 ], [ %2865, %2864 ], [ %2743, %2844 ], [ %2743, %2866 ], [ %2743, %2868 ], [ %2743, %2836 ]
  %2872 = phi i32 [ %2742, %2840 ], [ %2742, %2794 ], [ %2742, %2864 ], [ %2742, %2844 ], [ %2867, %2866 ], [ %2742, %2868 ], [ %2742, %2836 ]
  %2873 = phi i32 [ %2741, %2840 ], [ %2741, %2794 ], [ %2741, %2864 ], [ %2741, %2844 ], [ %2741, %2866 ], [ %2869, %2868 ], [ %2741, %2836 ]
  %2874 = phi i32 [ %2740, %2840 ], [ 1, %2794 ], [ %2740, %2864 ], [ %2740, %2844 ], [ %2740, %2866 ], [ %2740, %2868 ], [ 1, %2836 ]
  %2875 = phi i32 [ %2739, %2840 ], [ %2739, %2794 ], [ 1, %2864 ], [ 1, %2844 ], [ %2739, %2866 ], [ %2739, %2868 ], [ %2739, %2836 ]
  %2876 = add nuw nsw i64 %2738, 1
  %2877 = load i32, ptr %2547, align 4, !tbaa !611
  %2878 = sext i32 %2877 to i64
  %2879 = icmp slt i64 %2876, %2878
  br i1 %2879, label %2737, label %2880, !llvm.loop !622

2880:                                             ; preds = %2870, %2725
  %2881 = phi ptr [ %2630, %2725 ], [ %2871, %2870 ]
  br i1 %2238, label %2882, label %2885

2882:                                             ; preds = %2880
  %2883 = call ptr @RE_vlakren_get_origindex(ptr noundef %1, ptr noundef nonnull %2650, i32 noundef 1) #16
  %2884 = trunc i64 %2628 to i32
  store i32 %2884, ptr %2883, align 4, !tbaa !80
  br label %2885

2885:                                             ; preds = %2882, %2880
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %21) #16
  br label %2886

2886:                                             ; preds = %2885, %2722
  %2887 = phi ptr [ %2630, %2722 ], [ %2881, %2885 ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %20) #16
  br label %2888

2888:                                             ; preds = %2886, %2627
  %2889 = phi ptr [ %2887, %2886 ], [ %2630, %2627 ]
  %2890 = add nuw nsw i64 %2628, 1
  %2891 = getelementptr inbounds %struct.MFace, ptr %2629, i64 1
  %2892 = icmp eq i64 %2890, %2626
  br i1 %2892, label %2893, label %2627, !llvm.loop !623

2893:                                             ; preds = %2888, %2620, %2601
  %2894 = phi ptr [ %2551, %2601 ], [ %2621, %2620 ], [ %2889, %2888 ]
  %2895 = phi ptr [ %2549, %2601 ], [ %2622, %2620 ], [ %2622, %2888 ]
  %2896 = load i32, ptr %2185, align 8, !tbaa !276
  %2897 = icmp slt i32 %2552, %2896
  br i1 %2897, label %2548, label %2898, !llvm.loop !624

2898:                                             ; preds = %2893, %2526
  %2899 = phi ptr [ null, %2526 ], [ %2895, %2893 ]
  %2900 = getelementptr inbounds %struct.DerivedMesh, ptr %2258, i64 0, i32 24
  %2901 = load ptr, ptr %2900, align 8, !tbaa !600
  %2902 = call i32 %2901(ptr noundef %2258) #16
  %2903 = load ptr, ptr %2288, align 8, !tbaa !589
  %2904 = call ptr %2903(ptr noundef %2258) #16
  %2905 = call fastcc ptr @give_render_material(ptr noundef %0, ptr noundef %54, i16 noundef signext 1)
  %2906 = icmp eq i32 %2902, 0
  br i1 %2906, label %3262, label %2907

2907:                                             ; preds = %2898
  %2908 = getelementptr inbounds %struct.Material, ptr %2905, i64 0, i32 2
  %2909 = load i16, ptr %2908, align 8, !tbaa !175
  %2910 = icmp eq i16 %2909, 3
  br i1 %2910, label %2911, label %3262

2911:                                             ; preds = %2907
  %2912 = getelementptr inbounds %struct.DerivedMesh, ptr %2258, i64 0, i32 32
  %2913 = load ptr, ptr %2912, align 8, !tbaa !625
  %2914 = call ptr %2913(ptr noundef %2258) #16
  %2915 = getelementptr inbounds %struct.DerivedMesh, ptr %2258, i64 0, i32 33
  %2916 = load ptr, ptr %2915, align 8, !tbaa !601
  %2917 = call ptr %2916(ptr noundef %2258) #16
  %2918 = getelementptr inbounds %struct.DerivedMesh, ptr %2258, i64 0, i32 25
  %2919 = load ptr, ptr %2918, align 8, !tbaa !480
  %2920 = call i32 %2919(ptr noundef %2258) #16
  %2921 = getelementptr inbounds %struct.DerivedMesh, ptr %2258, i64 0, i32 52
  %2922 = load ptr, ptr %2921, align 8, !tbaa !481
  %2923 = call ptr %2922(ptr noundef %2258, i32 noundef 5) #16
  %2924 = load ptr, ptr %2921, align 8, !tbaa !481
  %2925 = call ptr %2924(ptr noundef %2258, i32 noundef 6) #16
  %2926 = icmp eq ptr %2925, null
  %2927 = icmp eq ptr %2923, null
  %2928 = select i1 %2926, i1 %2927, i1 false
  br i1 %2928, label %3031, label %2929

2929:                                             ; preds = %2911
  %2930 = icmp sgt i32 %2920, 0
  br i1 %2930, label %2931, label %2943

2931:                                             ; preds = %2929, %2931
  %2932 = phi i32 [ %2939, %2931 ], [ 0, %2929 ]
  %2933 = phi i32 [ %2940, %2931 ], [ %2920, %2929 ]
  %2934 = phi ptr [ %2941, %2931 ], [ %2917, %2929 ]
  %2935 = getelementptr inbounds %struct.MFace, ptr %2934, i64 0, i32 3
  %2936 = load i32, ptr %2935, align 4, !tbaa !605
  %2937 = icmp eq i32 %2936, 0
  %2938 = select i1 %2937, i32 3, i32 4
  %2939 = add nuw nsw i32 %2938, %2932
  %2940 = add nsw i32 %2933, -1
  %2941 = getelementptr inbounds %struct.MFace, ptr %2934, i64 1
  %2942 = icmp sgt i32 %2933, 1
  br i1 %2942, label %2931, label %2943, !llvm.loop !626

2943:                                             ; preds = %2931, %2929
  %2944 = phi i32 [ 0, %2929 ], [ %2939, %2931 ]
  %2945 = icmp eq i32 %2944, 0
  br i1 %2945, label %3031, label %2946

2946:                                             ; preds = %2943
  %2947 = load ptr, ptr @MEM_callocN, align 8, !tbaa !77
  %2948 = zext nneg i32 %2944 to i64
  %2949 = mul nuw nsw i64 %2948, 20
  %2950 = call ptr %2947(i64 noundef %2949, ptr noundef nonnull @.str.20) #16
  %2951 = icmp sgt i32 %2920, 0
  br i1 %2951, label %2952, label %3030

2952:                                             ; preds = %2946, %3017
  %2953 = phi i32 [ %3027, %3017 ], [ 0, %2946 ]
  %2954 = phi ptr [ %3028, %3017 ], [ %2917, %2946 ]
  %2955 = phi ptr [ %3022, %3017 ], [ %2950, %2946 ]
  %2956 = getelementptr inbounds %struct.edgesort, ptr %2955, i64 1
  %2957 = load i32, ptr %2954, align 4, !tbaa !610
  %2958 = getelementptr inbounds %struct.MFace, ptr %2954, i64 0, i32 1
  %2959 = load i32, ptr %2958, align 4, !tbaa !604
  %2960 = icmp ugt i32 %2957, %2959
  br i1 %2960, label %2961, label %2962

2961:                                             ; preds = %2952
  br label %2962

2962:                                             ; preds = %2961, %2952
  %2963 = phi i32 [ %2957, %2961 ], [ %2959, %2952 ]
  %2964 = phi i32 [ %2959, %2961 ], [ %2957, %2952 ]
  %2965 = phi i32 [ 0, %2961 ], [ 1, %2952 ]
  %2966 = phi i32 [ 1, %2961 ], [ 0, %2952 ]
  store i32 %2964, ptr %2955, align 4, !tbaa !627
  %2967 = getelementptr inbounds %struct.edgesort, ptr %2955, i64 0, i32 1
  store i32 %2963, ptr %2967, align 4, !tbaa !629
  %2968 = getelementptr inbounds %struct.edgesort, ptr %2955, i64 0, i32 3
  store i32 %2966, ptr %2968, align 4, !tbaa !630
  %2969 = getelementptr inbounds %struct.edgesort, ptr %2955, i64 0, i32 4
  store i32 %2965, ptr %2969, align 4, !tbaa !631
  %2970 = getelementptr inbounds %struct.edgesort, ptr %2955, i64 0, i32 2
  store i32 %2953, ptr %2970, align 4, !tbaa !632
  %2971 = getelementptr inbounds %struct.edgesort, ptr %2955, i64 2
  %2972 = getelementptr inbounds %struct.MFace, ptr %2954, i64 0, i32 2
  %2973 = load i32, ptr %2972, align 4, !tbaa !609
  %2974 = icmp ugt i32 %2959, %2973
  br i1 %2974, label %2975, label %2976

2975:                                             ; preds = %2962
  br label %2976

2976:                                             ; preds = %2975, %2962
  %2977 = phi i32 [ %2959, %2975 ], [ %2973, %2962 ]
  %2978 = phi i32 [ %2973, %2975 ], [ %2959, %2962 ]
  %2979 = phi i32 [ 1, %2975 ], [ 2, %2962 ]
  %2980 = phi i32 [ 2, %2975 ], [ 1, %2962 ]
  store i32 %2978, ptr %2956, align 4, !tbaa !627
  %2981 = getelementptr inbounds %struct.edgesort, ptr %2955, i64 1, i32 1
  store i32 %2977, ptr %2981, align 4, !tbaa !629
  %2982 = getelementptr inbounds %struct.edgesort, ptr %2955, i64 1, i32 3
  store i32 %2980, ptr %2982, align 4, !tbaa !630
  %2983 = getelementptr inbounds %struct.edgesort, ptr %2955, i64 1, i32 4
  store i32 %2979, ptr %2983, align 4, !tbaa !631
  %2984 = getelementptr inbounds %struct.edgesort, ptr %2955, i64 1, i32 2
  store i32 %2953, ptr %2984, align 4, !tbaa !632
  %2985 = getelementptr inbounds %struct.MFace, ptr %2954, i64 0, i32 3
  %2986 = load i32, ptr %2985, align 4, !tbaa !605
  %2987 = icmp eq i32 %2986, 0
  %2988 = getelementptr inbounds %struct.edgesort, ptr %2955, i64 3
  br i1 %2987, label %3009, label %2989

2989:                                             ; preds = %2976
  %2990 = icmp ugt i32 %2973, %2986
  br i1 %2990, label %2991, label %2992

2991:                                             ; preds = %2989
  br label %2992

2992:                                             ; preds = %2991, %2989
  %2993 = phi i32 [ %2973, %2991 ], [ %2986, %2989 ]
  %2994 = phi i32 [ %2986, %2991 ], [ %2973, %2989 ]
  %2995 = phi i32 [ 2, %2991 ], [ 3, %2989 ]
  %2996 = phi i32 [ 3, %2991 ], [ 2, %2989 ]
  store i32 %2994, ptr %2971, align 4, !tbaa !627
  %2997 = getelementptr inbounds %struct.edgesort, ptr %2955, i64 2, i32 1
  store i32 %2993, ptr %2997, align 4, !tbaa !629
  %2998 = getelementptr inbounds %struct.edgesort, ptr %2955, i64 2, i32 3
  store i32 %2996, ptr %2998, align 4, !tbaa !630
  %2999 = getelementptr inbounds %struct.edgesort, ptr %2955, i64 2, i32 4
  store i32 %2995, ptr %2999, align 4, !tbaa !631
  %3000 = getelementptr inbounds %struct.edgesort, ptr %2955, i64 2, i32 2
  store i32 %2953, ptr %3000, align 4, !tbaa !632
  %3001 = getelementptr inbounds %struct.edgesort, ptr %2955, i64 4
  %3002 = icmp ugt i32 %2986, %2957
  br i1 %3002, label %3003, label %3004

3003:                                             ; preds = %2992
  br label %3004

3004:                                             ; preds = %3003, %2992
  %3005 = phi i32 [ %2986, %3003 ], [ %2957, %2992 ]
  %3006 = phi i32 [ %2957, %3003 ], [ %2986, %2992 ]
  %3007 = phi i32 [ 3, %3003 ], [ 0, %2992 ]
  %3008 = phi i32 [ 0, %3003 ], [ 3, %2992 ]
  store i32 %3006, ptr %2988, align 4, !tbaa !627
  br label %3017

3009:                                             ; preds = %2976
  %3010 = icmp ugt i32 %2973, %2957
  br i1 %3010, label %3011, label %3012

3011:                                             ; preds = %3009
  br label %3012

3012:                                             ; preds = %3011, %3009
  %3013 = phi i32 [ %2973, %3011 ], [ %2957, %3009 ]
  %3014 = phi i32 [ %2957, %3011 ], [ %2973, %3009 ]
  %3015 = phi i32 [ 2, %3011 ], [ 3, %3009 ]
  %3016 = phi i32 [ 3, %3011 ], [ 2, %3009 ]
  store i32 %3014, ptr %2971, align 4, !tbaa !627
  br label %3017

3017:                                             ; preds = %3012, %3004
  %3018 = phi i64 [ 2, %3012 ], [ 3, %3004 ]
  %3019 = phi i32 [ %3013, %3012 ], [ %3005, %3004 ]
  %3020 = phi i32 [ %3016, %3012 ], [ %3008, %3004 ]
  %3021 = phi i32 [ %3015, %3012 ], [ %3007, %3004 ]
  %3022 = phi ptr [ %2988, %3012 ], [ %3001, %3004 ]
  %3023 = getelementptr inbounds %struct.edgesort, ptr %2955, i64 %3018, i32 1
  store i32 %3019, ptr %3023, align 4, !tbaa !629
  %3024 = getelementptr inbounds %struct.edgesort, ptr %2955, i64 %3018, i32 3
  store i32 %3020, ptr %3024, align 4, !tbaa !630
  %3025 = getelementptr inbounds %struct.edgesort, ptr %2955, i64 %3018, i32 4
  store i32 %3021, ptr %3025, align 4, !tbaa !631
  %3026 = getelementptr inbounds %struct.edgesort, ptr %2955, i64 %3018, i32 2
  store i32 %2953, ptr %3026, align 4, !tbaa !632
  %3027 = add nuw nsw i32 %2953, 1
  %3028 = getelementptr inbounds %struct.MFace, ptr %2954, i64 1
  %3029 = icmp eq i32 %3027, %2920
  br i1 %3029, label %3030, label %2952, !llvm.loop !633

3030:                                             ; preds = %3017, %2946
  call void @qsort(ptr noundef %2950, i64 noundef %2948, i64 noundef 20, ptr noundef nonnull @vergedgesort) #16
  br label %3031

3031:                                             ; preds = %3030, %2943, %2911
  %3032 = phi i32 [ 0, %2911 ], [ 0, %2943 ], [ %2944, %3030 ]
  %3033 = phi ptr [ null, %2911 ], [ null, %2943 ], [ %2950, %3030 ]
  %3034 = icmp sgt i32 %2902, 0
  br i1 %3034, label %3035, label %3258

3035:                                             ; preds = %3031
  %3036 = getelementptr inbounds %struct.ObjectRen, ptr %1, i64 0, i32 11
  %3037 = icmp eq ptr %3033, null
  %3038 = sext i32 %3032 to i64
  %3039 = icmp eq i32 %3032, 0
  %3040 = getelementptr inbounds %struct.DerivedMesh, ptr %2258, i64 0, i32 2, i32 2
  %3041 = getelementptr inbounds [3 x float], ptr %18, i64 0, i64 1
  %3042 = getelementptr inbounds [3 x float], ptr %18, i64 0, i64 2
  %3043 = getelementptr inbounds [3 x [3 x float]], ptr %18, i64 0, i64 1
  %3044 = getelementptr inbounds [3 x [3 x float]], ptr %18, i64 0, i64 1, i64 1
  %3045 = getelementptr inbounds [3 x [3 x float]], ptr %18, i64 0, i64 1, i64 2
  %3046 = getelementptr inbounds [3 x [3 x float]], ptr %18, i64 0, i64 2
  %3047 = getelementptr inbounds [3 x [3 x float]], ptr %18, i64 0, i64 2, i64 1
  %3048 = getelementptr inbounds [3 x [3 x float]], ptr %18, i64 0, i64 2, i64 2
  br label %3049

3049:                                             ; preds = %3035, %3254
  %3050 = phi ptr [ %2914, %3035 ], [ %3256, %3254 ]
  %3051 = phi i32 [ 0, %3035 ], [ %3255, %3254 ]
  %3052 = getelementptr inbounds %struct.MEdge, ptr %3050, i64 0, i32 4
  %3053 = load i16, ptr %3052, align 2, !tbaa !634
  %3054 = and i16 %3053, 32
  %3055 = icmp eq i16 %3054, 0
  br i1 %3055, label %3254, label %3056

3056:                                             ; preds = %3049
  %3057 = load i32, ptr %3050, align 4, !tbaa !636
  %3058 = zext i32 %3057 to i64
  %3059 = getelementptr inbounds %struct.MEdge, ptr %3050, i64 0, i32 1
  %3060 = load i32, ptr %3059, align 4, !tbaa !637
  %3061 = zext i32 %3060 to i64
  %3062 = load i32, ptr %3036, align 4, !tbaa !293
  %3063 = add nsw i32 %3062, 1
  store i32 %3063, ptr %3036, align 4, !tbaa !293
  %3064 = call ptr @RE_findOrAddVlak(ptr noundef %1, i32 noundef %3062) #16
  %3065 = load i32, ptr %3050, align 4, !tbaa !636
  %3066 = add i32 %3065, %2529
  %3067 = call ptr @RE_findOrAddVert(ptr noundef %1, i32 noundef %3066) #16
  store ptr %3067, ptr %3064, align 8, !tbaa !553
  %3068 = load i32, ptr %3059, align 4, !tbaa !637
  %3069 = add i32 %3068, %2529
  %3070 = call ptr @RE_findOrAddVert(ptr noundef %1, i32 noundef %3069) #16
  %3071 = getelementptr inbounds %struct.VlakRen, ptr %3064, i64 0, i32 1
  store ptr %3070, ptr %3071, align 8, !tbaa !555
  %3072 = getelementptr inbounds %struct.VlakRen, ptr %3064, i64 0, i32 2
  store ptr %3070, ptr %3072, align 8, !tbaa !556
  %3073 = getelementptr inbounds %struct.VlakRen, ptr %3064, i64 0, i32 3
  store ptr null, ptr %3073, align 8, !tbaa !557
  br i1 %3037, label %3186, label %3074

3074:                                             ; preds = %3056
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %14) #16
  %3075 = load i32, ptr %3050, align 4, !tbaa !636
  %3076 = load i32, ptr %3059, align 4, !tbaa !637
  %3077 = call i32 @llvm.umax.i32(i32 %3075, i32 %3076)
  %3078 = call i32 @llvm.umin.i32(i32 %3075, i32 %3076)
  br i1 %3039, label %3108, label %3079

3079:                                             ; preds = %3074, %3104
  %3080 = phi i64 [ %3106, %3104 ], [ 0, %3074 ]
  %3081 = phi i64 [ %3105, %3104 ], [ %3038, %3074 ]
  %3082 = add i64 %3080, %3081
  %3083 = lshr i64 %3082, 1
  %3084 = mul i64 %3083, 20
  %3085 = getelementptr inbounds i8, ptr %3033, i64 %3084
  %3086 = load i32, ptr %3085, align 4, !tbaa !627
  %3087 = icmp ugt i32 %3078, %3086
  br i1 %3087, label %3097, label %3088

3088:                                             ; preds = %3079
  %3089 = icmp ult i32 %3078, %3086
  br i1 %3089, label %3097, label %3090

3090:                                             ; preds = %3088
  %3091 = getelementptr inbounds %struct.edgesort, ptr %3085, i64 0, i32 1
  %3092 = load i32, ptr %3091, align 4, !tbaa !629
  %3093 = icmp ugt i32 %3077, %3092
  br i1 %3093, label %3097, label %3094

3094:                                             ; preds = %3090
  %3095 = icmp ult i32 %3077, %3092
  %3096 = sext i1 %3095 to i32
  br label %3097

3097:                                             ; preds = %3094, %3090, %3088, %3079
  %3098 = phi i32 [ 1, %3079 ], [ -1, %3088 ], [ 1, %3090 ], [ %3096, %3094 ]
  %3099 = icmp slt i32 %3098, 0
  br i1 %3099, label %3104, label %3100

3100:                                             ; preds = %3097
  %3101 = icmp eq i32 %3098, 0
  br i1 %3101, label %3108, label %3102

3102:                                             ; preds = %3100
  %3103 = add nuw i64 %3083, 1
  br label %3104

3104:                                             ; preds = %3102, %3097
  %3105 = phi i64 [ %3081, %3102 ], [ %3083, %3097 ]
  %3106 = phi i64 [ %3103, %3102 ], [ %3080, %3097 ]
  %3107 = icmp ult i64 %3106, %3105
  br i1 %3107, label %3079, label %3108, !llvm.loop !638

3108:                                             ; preds = %3104, %3100, %3074
  %3109 = phi ptr [ null, %3074 ], [ null, %3104 ], [ %3085, %3100 ]
  %3110 = icmp eq ptr %3109, null
  br i1 %3110, label %3185, label %3111

3111:                                             ; preds = %3108
  %3112 = load i32, ptr %3040, align 4, !tbaa !611
  %3113 = icmp sgt i32 %3112, 0
  br i1 %3113, label %3114, label %3185

3114:                                             ; preds = %3111
  %3115 = getelementptr inbounds %struct.edgesort, ptr %3109, i64 0, i32 2
  %3116 = getelementptr inbounds %struct.edgesort, ptr %3109, i64 0, i32 3
  %3117 = getelementptr inbounds %struct.edgesort, ptr %3109, i64 0, i32 4
  %3118 = getelementptr inbounds %struct.edgesort, ptr %3109, i64 0, i32 2
  %3119 = getelementptr inbounds %struct.edgesort, ptr %3109, i64 0, i32 3
  %3120 = getelementptr inbounds %struct.edgesort, ptr %3109, i64 0, i32 4
  br label %3121

3121:                                             ; preds = %3114, %3178
  %3122 = phi i64 [ 0, %3114 ], [ %3181, %3178 ]
  %3123 = phi i32 [ 0, %3114 ], [ %3180, %3178 ]
  %3124 = phi i32 [ 0, %3114 ], [ %3179, %3178 ]
  %3125 = load ptr, ptr %2520, align 8, !tbaa !612
  %3126 = getelementptr inbounds %struct.CustomDataLayer, ptr %3125, i64 %3122
  %3127 = getelementptr inbounds %struct.CustomDataLayer, ptr %3125, i64 %3122, i32 8
  store ptr %3127, ptr %14, align 8, !tbaa !77
  %3128 = load i32, ptr %3126, align 8, !tbaa !613
  %3129 = icmp eq i32 %3128, 5
  %3130 = icmp slt i32 %3124, 8
  %3131 = select i1 %3129, i1 %3130, i1 false
  br i1 %3131, label %3132, label %3154

3132:                                             ; preds = %3121
  %3133 = getelementptr inbounds %struct.CustomDataLayer, ptr %3125, i64 %3122, i32 9
  %3134 = load ptr, ptr %3133, align 8, !tbaa !615
  %3135 = load i32, ptr %3118, align 4, !tbaa !632
  %3136 = sext i32 %3135 to i64
  %3137 = getelementptr inbounds %struct.MTFace, ptr %3134, i64 %3136
  %3138 = add nsw i32 %3124, 1
  %3139 = call ptr @RE_vlakren_get_tface(ptr noundef %1, ptr noundef nonnull %3064, i32 noundef %3124, ptr noundef nonnull %14, i32 noundef 1) #16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %3139, ptr noundef nonnull align 8 dereferenceable(48) %3137, i64 48, i1 false), !tbaa.struct !616
  %3140 = load i32, ptr %3119, align 4, !tbaa !630
  %3141 = zext i32 %3140 to i64
  %3142 = getelementptr inbounds [4 x [2 x float]], ptr %3137, i64 0, i64 %3141
  %3143 = load i64, ptr %3142, align 8
  store i64 %3143, ptr %3139, align 8
  %3144 = getelementptr inbounds [4 x [2 x float]], ptr %3139, i64 0, i64 1
  %3145 = load i32, ptr %3120, align 4, !tbaa !631
  %3146 = zext i32 %3145 to i64
  %3147 = getelementptr inbounds [4 x [2 x float]], ptr %3137, i64 0, i64 %3146
  %3148 = load i64, ptr %3147, align 8
  store i64 %3148, ptr %3144, align 8
  %3149 = getelementptr inbounds [4 x [2 x float]], ptr %3139, i64 0, i64 2
  %3150 = getelementptr inbounds [4 x [2 x float]], ptr %3137, i64 0, i64 1
  %3151 = load i64, ptr %3150, align 8
  store i64 %3151, ptr %3149, align 8
  %3152 = getelementptr inbounds [4 x [2 x float]], ptr %3139, i64 0, i64 3
  %3153 = load i64, ptr %3150, align 8
  store i64 %3153, ptr %3152, align 8
  br label %3178

3154:                                             ; preds = %3121
  %3155 = icmp eq i32 %3128, 6
  %3156 = icmp slt i32 %3123, 8
  %3157 = select i1 %3155, i1 %3156, i1 false
  br i1 %3157, label %3158, label %3178

3158:                                             ; preds = %3154
  %3159 = getelementptr inbounds %struct.CustomDataLayer, ptr %3125, i64 %3122, i32 9
  %3160 = load ptr, ptr %3159, align 8, !tbaa !615
  %3161 = load i32, ptr %3115, align 4, !tbaa !632
  %3162 = shl nsw i32 %3161, 2
  %3163 = sext i32 %3162 to i64
  %3164 = getelementptr inbounds %struct.MCol, ptr %3160, i64 %3163
  %3165 = add nsw i32 %3123, 1
  %3166 = call ptr @RE_vlakren_get_mcol(ptr noundef %1, ptr noundef nonnull %3064, i32 noundef %3123, ptr noundef nonnull %14, i32 noundef 1) #16
  %3167 = load i32, ptr %3116, align 4, !tbaa !630
  %3168 = zext i32 %3167 to i64
  %3169 = getelementptr inbounds %struct.MCol, ptr %3164, i64 %3168
  %3170 = load i32, ptr %3169, align 1
  store i32 %3170, ptr %3166, align 1
  %3171 = getelementptr inbounds %struct.MCol, ptr %3166, i64 1
  %3172 = getelementptr inbounds %struct.MCol, ptr %3166, i64 2
  %3173 = getelementptr inbounds %struct.MCol, ptr %3166, i64 3
  %3174 = load i32, ptr %3117, align 4, !tbaa !631
  %3175 = zext i32 %3174 to i64
  %3176 = getelementptr inbounds %struct.MCol, ptr %3164, i64 %3175
  %3177 = load i32, ptr %3176, align 1
  store i32 %3177, ptr %3173, align 1
  store i32 %3177, ptr %3172, align 1
  store i32 %3177, ptr %3171, align 1
  br label %3178

3178:                                             ; preds = %3158, %3154, %3132
  %3179 = phi i32 [ %3138, %3132 ], [ %3124, %3158 ], [ %3124, %3154 ]
  %3180 = phi i32 [ %3123, %3132 ], [ %3165, %3158 ], [ %3123, %3154 ]
  %3181 = add nuw nsw i64 %3122, 1
  %3182 = load i32, ptr %3040, align 4, !tbaa !611
  %3183 = sext i32 %3182 to i64
  %3184 = icmp slt i64 %3181, %3183
  br i1 %3184, label %3121, label %3185, !llvm.loop !639

3185:                                             ; preds = %3178, %3111, %3108
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %14) #16
  br label %3186

3186:                                             ; preds = %3185, %3056
  %3187 = getelementptr inbounds %struct.MVert, ptr %2904, i64 %3058, i32 1
  %3188 = load i16, ptr %3187, align 4, !tbaa !79
  %3189 = sext i16 %3188 to i32
  %3190 = getelementptr inbounds %struct.MVert, ptr %2904, i64 %3061, i32 1
  %3191 = load i16, ptr %3190, align 4, !tbaa !79
  %3192 = sext i16 %3191 to i32
  %3193 = add nsw i32 %3189, %3192
  %3194 = sub nsw i32 0, %3193
  %3195 = sitofp i32 %3194 to float
  %3196 = getelementptr inbounds %struct.MVert, ptr %2904, i64 %3058, i32 1, i64 1
  %3197 = load i16, ptr %3196, align 2, !tbaa !79
  %3198 = sext i16 %3197 to i32
  %3199 = getelementptr inbounds %struct.MVert, ptr %2904, i64 %3061, i32 1, i64 1
  %3200 = load i16, ptr %3199, align 2, !tbaa !79
  %3201 = sext i16 %3200 to i32
  %3202 = add nsw i32 %3198, %3201
  %3203 = sub nsw i32 0, %3202
  %3204 = sitofp i32 %3203 to float
  %3205 = getelementptr inbounds %struct.MVert, ptr %2904, i64 %3058, i32 1, i64 2
  %3206 = load i16, ptr %3205, align 4, !tbaa !79
  %3207 = sext i16 %3206 to i32
  %3208 = getelementptr inbounds %struct.MVert, ptr %2904, i64 %3061, i32 1, i64 2
  %3209 = load i16, ptr %3208, align 4, !tbaa !79
  %3210 = sext i16 %3209 to i32
  %3211 = add nsw i32 %3207, %3210
  %3212 = sub nsw i32 0, %3211
  %3213 = sitofp i32 %3212 to float
  %3214 = load float, ptr %18, align 16, !tbaa !44
  %3215 = load float, ptr %3041, align 4, !tbaa !44
  %3216 = fmul float %3215, %3204
  %3217 = call float @llvm.fmuladd.f32(float %3214, float %3195, float %3216)
  %3218 = load float, ptr %3042, align 8, !tbaa !44
  %3219 = call float @llvm.fmuladd.f32(float %3218, float %3213, float %3217)
  %3220 = getelementptr inbounds %struct.VlakRen, ptr %3064, i64 0, i32 4
  store float %3219, ptr %3220, align 8, !tbaa !44
  %3221 = load float, ptr %3043, align 4, !tbaa !44
  %3222 = load float, ptr %3044, align 16, !tbaa !44
  %3223 = fmul float %3222, %3204
  %3224 = call float @llvm.fmuladd.f32(float %3221, float %3195, float %3223)
  %3225 = load float, ptr %3045, align 4, !tbaa !44
  %3226 = call float @llvm.fmuladd.f32(float %3225, float %3213, float %3224)
  %3227 = getelementptr inbounds %struct.VlakRen, ptr %3064, i64 0, i32 4, i64 1
  store float %3226, ptr %3227, align 4, !tbaa !44
  %3228 = load float, ptr %3046, align 8, !tbaa !44
  %3229 = load float, ptr %3047, align 4, !tbaa !44
  %3230 = fmul float %3229, %3204
  %3231 = call float @llvm.fmuladd.f32(float %3228, float %3195, float %3230)
  %3232 = load float, ptr %3048, align 16, !tbaa !44
  %3233 = call float @llvm.fmuladd.f32(float %3232, float %3213, float %3231)
  %3234 = getelementptr inbounds %struct.VlakRen, ptr %3064, i64 0, i32 4, i64 2
  store float %3233, ptr %3234, align 8, !tbaa !44
  %3235 = fmul float %3226, %3226
  %3236 = call float @llvm.fmuladd.f32(float %3219, float %3219, float %3235)
  %3237 = call float @llvm.fmuladd.f32(float %3233, float %3233, float %3236)
  %3238 = fcmp ogt float %3237, 0x38AA95A5C0000000
  br i1 %3238, label %3239, label %3248

3239:                                             ; preds = %3186
  %3240 = call float @sqrtf(float noundef %3237) #16
  %3241 = fdiv float 1.000000e+00, %3240
  %3242 = load float, ptr %3220, align 4, !tbaa !44
  %3243 = fmul float %3242, %3241
  store float %3243, ptr %3220, align 4, !tbaa !44
  %3244 = load float, ptr %3227, align 4, !tbaa !44
  %3245 = fmul float %3241, %3244
  store float %3245, ptr %3227, align 4, !tbaa !44
  %3246 = load float, ptr %3234, align 4, !tbaa !44
  %3247 = fmul float %3241, %3246
  br label %3249

3248:                                             ; preds = %3186
  store float 0.000000e+00, ptr %3220, align 4, !tbaa !44
  store float 0.000000e+00, ptr %3227, align 4, !tbaa !44
  br label %3249

3249:                                             ; preds = %3248, %3239
  %3250 = phi float [ 0.000000e+00, %3248 ], [ %3247, %3239 ]
  store float %3250, ptr %3234, align 4, !tbaa !44
  %3251 = getelementptr inbounds %struct.VlakRen, ptr %3064, i64 0, i32 5
  store ptr %2905, ptr %3251, align 8, !tbaa !558
  %3252 = getelementptr inbounds %struct.VlakRen, ptr %3064, i64 0, i32 7
  store i8 0, ptr %3252, align 1, !tbaa !559
  %3253 = getelementptr inbounds %struct.VlakRen, ptr %3064, i64 0, i32 8
  store i8 1, ptr %3253, align 2, !tbaa !560
  br label %3254

3254:                                             ; preds = %3249, %3049
  %3255 = add nuw nsw i32 %3051, 1
  %3256 = getelementptr inbounds %struct.MEdge, ptr %3050, i64 1
  %3257 = icmp eq i32 %3255, %2902
  br i1 %3257, label %3258, label %3049, !llvm.loop !640

3258:                                             ; preds = %3254, %3031
  %3259 = icmp eq ptr %3033, null
  br i1 %3259, label %3262, label %3260

3260:                                             ; preds = %3258
  %3261 = load ptr, ptr @MEM_freeN, align 8, !tbaa !77
  call void %3261(ptr noundef nonnull %3033) #16
  br label %3262

3262:                                             ; preds = %3260, %3258, %2907, %2898, %2518, %2432
  %3263 = phi i32 [ 0, %2432 ], [ 0, %2518 ], [ 0, %2907 ], [ 0, %2898 ], [ 1, %3260 ], [ 1, %3258 ]
  %3264 = phi ptr [ null, %2432 ], [ null, %2518 ], [ %2899, %2907 ], [ %2899, %2898 ], [ %2899, %3260 ], [ %2899, %3258 ]
  br i1 %2242, label %3265, label %3889

3265:                                             ; preds = %3262
  %3266 = icmp eq i8 %2183, 0
  br i1 %3266, label %3751, label %3267

3267:                                             ; preds = %3265
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %12) #16
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %13) #16
  %3268 = getelementptr inbounds %struct.ObjectRen, ptr %1, i64 0, i32 10
  %3269 = load i32, ptr %3268, align 8, !tbaa !211
  %3270 = icmp eq i32 %3269, 0
  br i1 %3270, label %3750, label %3271

3271:                                             ; preds = %3267
  call void @BKE_mesh_texspace_get(ptr noundef %2123, ptr noundef nonnull %12, ptr noundef null, ptr noundef nonnull %13) #16
  %3272 = load ptr, ptr @MEM_callocN, align 8, !tbaa !77
  %3273 = load i32, ptr %3268, align 8, !tbaa !211
  %3274 = sext i32 %3273 to i64
  %3275 = shl nsw i64 %3274, 3
  %3276 = call ptr %3272(i64 noundef %3275, ptr noundef nonnull @.str.21) #16
  %3277 = load i32, ptr %3268, align 8, !tbaa !211
  %3278 = icmp sgt i32 %3277, 0
  br i1 %3278, label %3279, label %3284

3279:                                             ; preds = %3271
  %3280 = getelementptr inbounds [3 x float], ptr %13, i64 0, i64 1
  %3281 = getelementptr inbounds [3 x float], ptr %12, i64 0, i64 1
  %3282 = getelementptr inbounds [3 x float], ptr %13, i64 0, i64 2
  %3283 = getelementptr inbounds [3 x float], ptr %12, i64 0, i64 2
  br label %3288

3284:                                             ; preds = %3309, %3271
  %3285 = getelementptr inbounds %struct.ObjectRen, ptr %1, i64 0, i32 11
  %3286 = load i32, ptr %3285, align 4, !tbaa !293
  %3287 = icmp sgt i32 %3286, 0
  br i1 %3287, label %3321, label %3313

3288:                                             ; preds = %3279, %3309
  %3289 = phi i32 [ 0, %3279 ], [ %3310, %3309 ]
  %3290 = call ptr @RE_findOrAddVert(ptr noundef %1, i32 noundef %3289) #16
  %3291 = getelementptr inbounds %struct.VertRen, ptr %3290, i64 0, i32 2
  %3292 = load ptr, ptr %3291, align 8, !tbaa !548
  %3293 = icmp eq ptr %3292, null
  br i1 %3293, label %3309, label %3294

3294:                                             ; preds = %3288
  %3295 = load float, ptr %3292, align 4, !tbaa !44
  %3296 = load float, ptr %13, align 4, !tbaa !44
  %3297 = load float, ptr %12, align 4, !tbaa !44
  %3298 = call float @llvm.fmuladd.f32(float %3295, float %3296, float %3297)
  store float %3298, ptr %3292, align 4, !tbaa !44
  %3299 = getelementptr inbounds float, ptr %3292, i64 1
  %3300 = load float, ptr %3299, align 4, !tbaa !44
  %3301 = load float, ptr %3280, align 4, !tbaa !44
  %3302 = load float, ptr %3281, align 4, !tbaa !44
  %3303 = call float @llvm.fmuladd.f32(float %3300, float %3301, float %3302)
  store float %3303, ptr %3299, align 4, !tbaa !44
  %3304 = getelementptr inbounds float, ptr %3292, i64 2
  %3305 = load float, ptr %3304, align 4, !tbaa !44
  %3306 = load float, ptr %3282, align 4, !tbaa !44
  %3307 = load float, ptr %3283, align 4, !tbaa !44
  %3308 = call float @llvm.fmuladd.f32(float %3305, float %3306, float %3307)
  store float %3308, ptr %3304, align 4, !tbaa !44
  br label %3309

3309:                                             ; preds = %3294, %3288
  %3310 = add nuw nsw i32 %3289, 1
  %3311 = load i32, ptr %3268, align 8, !tbaa !211
  %3312 = icmp slt i32 %3310, %3311
  br i1 %3312, label %3288, label %3284, !llvm.loop !641

3313:                                             ; preds = %3701, %3284
  %3314 = load i32, ptr %3268, align 8, !tbaa !211
  %3315 = icmp sgt i32 %3314, 0
  br i1 %3315, label %3316, label %3748

3316:                                             ; preds = %3313
  %3317 = getelementptr inbounds [3 x float], ptr %12, i64 0, i64 1
  %3318 = getelementptr inbounds [3 x float], ptr %13, i64 0, i64 1
  %3319 = getelementptr inbounds [3 x float], ptr %12, i64 0, i64 2
  %3320 = getelementptr inbounds [3 x float], ptr %13, i64 0, i64 2
  br label %3705

3321:                                             ; preds = %3284, %3701
  %3322 = phi i32 [ %3702, %3701 ], [ 0, %3284 ]
  %3323 = call ptr @RE_findOrAddVlak(ptr noundef %1, i32 noundef %3322) #16
  %3324 = load ptr, ptr %3323, align 8, !tbaa !553
  %3325 = getelementptr inbounds %struct.VertRen, ptr %3324, i64 0, i32 2
  %3326 = load ptr, ptr %3325, align 8, !tbaa !548
  %3327 = icmp eq ptr %3326, null
  br i1 %3327, label %3701, label %3328

3328:                                             ; preds = %3321
  %3329 = getelementptr inbounds %struct.VlakRen, ptr %3323, i64 0, i32 3
  %3330 = load ptr, ptr %3329, align 8, !tbaa !557
  %3331 = icmp eq ptr %3330, null
  br i1 %3331, label %3701, label %3332

3332:                                             ; preds = %3328
  %3333 = getelementptr inbounds %struct.VlakRen, ptr %3323, i64 0, i32 1
  %3334 = load ptr, ptr %3333, align 8, !tbaa !555
  %3335 = load float, ptr %3334, align 4, !tbaa !44
  %3336 = load float, ptr %3324, align 4, !tbaa !44
  %3337 = fsub float %3335, %3336
  %3338 = getelementptr inbounds float, ptr %3334, i64 1
  %3339 = load float, ptr %3338, align 4, !tbaa !44
  %3340 = getelementptr inbounds float, ptr %3324, i64 1
  %3341 = load float, ptr %3340, align 4, !tbaa !44
  %3342 = fsub float %3339, %3341
  %3343 = getelementptr inbounds float, ptr %3334, i64 2
  %3344 = load float, ptr %3343, align 4, !tbaa !44
  %3345 = getelementptr inbounds float, ptr %3324, i64 2
  %3346 = load float, ptr %3345, align 4, !tbaa !44
  %3347 = fsub float %3344, %3346
  %3348 = fmul float %3342, %3342
  %3349 = call float @llvm.fmuladd.f32(float %3337, float %3337, float %3348)
  %3350 = call float @llvm.fmuladd.f32(float %3347, float %3347, float %3349)
  %3351 = call float @sqrtf(float noundef %3350) #16
  %3352 = load ptr, ptr %3325, align 8, !tbaa !548
  %3353 = getelementptr inbounds %struct.VertRen, ptr %3334, i64 0, i32 2
  %3354 = load ptr, ptr %3353, align 8, !tbaa !548
  %3355 = load float, ptr %3354, align 4, !tbaa !44
  %3356 = load float, ptr %3352, align 4, !tbaa !44
  %3357 = fsub float %3355, %3356
  %3358 = getelementptr inbounds float, ptr %3354, i64 1
  %3359 = load float, ptr %3358, align 4, !tbaa !44
  %3360 = getelementptr inbounds float, ptr %3352, i64 1
  %3361 = load float, ptr %3360, align 4, !tbaa !44
  %3362 = fsub float %3359, %3361
  %3363 = getelementptr inbounds float, ptr %3354, i64 2
  %3364 = load float, ptr %3363, align 4, !tbaa !44
  %3365 = getelementptr inbounds float, ptr %3352, i64 2
  %3366 = load float, ptr %3365, align 4, !tbaa !44
  %3367 = fsub float %3364, %3366
  %3368 = fmul float %3362, %3362
  %3369 = call float @llvm.fmuladd.f32(float %3357, float %3357, float %3368)
  %3370 = call float @llvm.fmuladd.f32(float %3367, float %3367, float %3369)
  %3371 = call float @sqrtf(float noundef %3370) #16
  %3372 = fdiv float %3351, %3371
  %3373 = getelementptr inbounds %struct.VertRen, ptr %3324, i64 0, i32 5
  %3374 = load i32, ptr %3373, align 8, !tbaa !642
  %3375 = shl nsw i32 %3374, 1
  %3376 = sext i32 %3375 to i64
  %3377 = getelementptr inbounds float, ptr %3276, i64 %3376
  %3378 = load float, ptr %3377, align 4, !tbaa !44
  %3379 = fadd float %3372, %3378
  store float %3379, ptr %3377, align 4, !tbaa !44
  %3380 = getelementptr inbounds float, ptr %3377, i64 1
  %3381 = load float, ptr %3380, align 4, !tbaa !44
  %3382 = fadd float %3381, 1.000000e+00
  store float %3382, ptr %3380, align 4, !tbaa !44
  %3383 = getelementptr inbounds %struct.VertRen, ptr %3334, i64 0, i32 5
  %3384 = load i32, ptr %3383, align 8, !tbaa !642
  %3385 = shl nsw i32 %3384, 1
  %3386 = sext i32 %3385 to i64
  %3387 = getelementptr inbounds float, ptr %3276, i64 %3386
  %3388 = load float, ptr %3387, align 4, !tbaa !44
  %3389 = fadd float %3372, %3388
  store float %3389, ptr %3387, align 4, !tbaa !44
  %3390 = getelementptr inbounds float, ptr %3387, i64 1
  %3391 = load float, ptr %3390, align 4, !tbaa !44
  %3392 = fadd float %3391, 1.000000e+00
  store float %3392, ptr %3390, align 4, !tbaa !44
  %3393 = load ptr, ptr %3333, align 8, !tbaa !555
  %3394 = getelementptr inbounds %struct.VlakRen, ptr %3323, i64 0, i32 2
  %3395 = load ptr, ptr %3394, align 8, !tbaa !556
  %3396 = load float, ptr %3395, align 4, !tbaa !44
  %3397 = load float, ptr %3393, align 4, !tbaa !44
  %3398 = fsub float %3396, %3397
  %3399 = getelementptr inbounds float, ptr %3395, i64 1
  %3400 = load float, ptr %3399, align 4, !tbaa !44
  %3401 = getelementptr inbounds float, ptr %3393, i64 1
  %3402 = load float, ptr %3401, align 4, !tbaa !44
  %3403 = fsub float %3400, %3402
  %3404 = getelementptr inbounds float, ptr %3395, i64 2
  %3405 = load float, ptr %3404, align 4, !tbaa !44
  %3406 = getelementptr inbounds float, ptr %3393, i64 2
  %3407 = load float, ptr %3406, align 4, !tbaa !44
  %3408 = fsub float %3405, %3407
  %3409 = fmul float %3403, %3403
  %3410 = call float @llvm.fmuladd.f32(float %3398, float %3398, float %3409)
  %3411 = call float @llvm.fmuladd.f32(float %3408, float %3408, float %3410)
  %3412 = call float @sqrtf(float noundef %3411) #16
  %3413 = getelementptr inbounds %struct.VertRen, ptr %3393, i64 0, i32 2
  %3414 = load ptr, ptr %3413, align 8, !tbaa !548
  %3415 = getelementptr inbounds %struct.VertRen, ptr %3395, i64 0, i32 2
  %3416 = load ptr, ptr %3415, align 8, !tbaa !548
  %3417 = load float, ptr %3416, align 4, !tbaa !44
  %3418 = load float, ptr %3414, align 4, !tbaa !44
  %3419 = fsub float %3417, %3418
  %3420 = getelementptr inbounds float, ptr %3416, i64 1
  %3421 = load float, ptr %3420, align 4, !tbaa !44
  %3422 = getelementptr inbounds float, ptr %3414, i64 1
  %3423 = load float, ptr %3422, align 4, !tbaa !44
  %3424 = fsub float %3421, %3423
  %3425 = getelementptr inbounds float, ptr %3416, i64 2
  %3426 = load float, ptr %3425, align 4, !tbaa !44
  %3427 = getelementptr inbounds float, ptr %3414, i64 2
  %3428 = load float, ptr %3427, align 4, !tbaa !44
  %3429 = fsub float %3426, %3428
  %3430 = fmul float %3424, %3424
  %3431 = call float @llvm.fmuladd.f32(float %3419, float %3419, float %3430)
  %3432 = call float @llvm.fmuladd.f32(float %3429, float %3429, float %3431)
  %3433 = call float @sqrtf(float noundef %3432) #16
  %3434 = fdiv float %3412, %3433
  %3435 = getelementptr inbounds %struct.VertRen, ptr %3393, i64 0, i32 5
  %3436 = load i32, ptr %3435, align 8, !tbaa !642
  %3437 = shl nsw i32 %3436, 1
  %3438 = sext i32 %3437 to i64
  %3439 = getelementptr inbounds float, ptr %3276, i64 %3438
  %3440 = load float, ptr %3439, align 4, !tbaa !44
  %3441 = fadd float %3434, %3440
  store float %3441, ptr %3439, align 4, !tbaa !44
  %3442 = getelementptr inbounds float, ptr %3439, i64 1
  %3443 = load float, ptr %3442, align 4, !tbaa !44
  %3444 = fadd float %3443, 1.000000e+00
  store float %3444, ptr %3442, align 4, !tbaa !44
  %3445 = getelementptr inbounds %struct.VertRen, ptr %3395, i64 0, i32 5
  %3446 = load i32, ptr %3445, align 8, !tbaa !642
  %3447 = shl nsw i32 %3446, 1
  %3448 = sext i32 %3447 to i64
  %3449 = getelementptr inbounds float, ptr %3276, i64 %3448
  %3450 = load float, ptr %3449, align 4, !tbaa !44
  %3451 = fadd float %3434, %3450
  store float %3451, ptr %3449, align 4, !tbaa !44
  %3452 = getelementptr inbounds float, ptr %3449, i64 1
  %3453 = load float, ptr %3452, align 4, !tbaa !44
  %3454 = fadd float %3453, 1.000000e+00
  store float %3454, ptr %3452, align 4, !tbaa !44
  %3455 = load ptr, ptr %3394, align 8, !tbaa !556
  %3456 = load ptr, ptr %3323, align 8, !tbaa !553
  %3457 = load float, ptr %3456, align 4, !tbaa !44
  %3458 = load float, ptr %3455, align 4, !tbaa !44
  %3459 = fsub float %3457, %3458
  %3460 = getelementptr inbounds float, ptr %3456, i64 1
  %3461 = load float, ptr %3460, align 4, !tbaa !44
  %3462 = getelementptr inbounds float, ptr %3455, i64 1
  %3463 = load float, ptr %3462, align 4, !tbaa !44
  %3464 = fsub float %3461, %3463
  %3465 = getelementptr inbounds float, ptr %3456, i64 2
  %3466 = load float, ptr %3465, align 4, !tbaa !44
  %3467 = getelementptr inbounds float, ptr %3455, i64 2
  %3468 = load float, ptr %3467, align 4, !tbaa !44
  %3469 = fsub float %3466, %3468
  %3470 = fmul float %3464, %3464
  %3471 = call float @llvm.fmuladd.f32(float %3459, float %3459, float %3470)
  %3472 = call float @llvm.fmuladd.f32(float %3469, float %3469, float %3471)
  %3473 = call float @sqrtf(float noundef %3472) #16
  %3474 = getelementptr inbounds %struct.VertRen, ptr %3455, i64 0, i32 2
  %3475 = load ptr, ptr %3474, align 8, !tbaa !548
  %3476 = getelementptr inbounds %struct.VertRen, ptr %3456, i64 0, i32 2
  %3477 = load ptr, ptr %3476, align 8, !tbaa !548
  %3478 = load float, ptr %3477, align 4, !tbaa !44
  %3479 = load float, ptr %3475, align 4, !tbaa !44
  %3480 = fsub float %3478, %3479
  %3481 = getelementptr inbounds float, ptr %3477, i64 1
  %3482 = load float, ptr %3481, align 4, !tbaa !44
  %3483 = getelementptr inbounds float, ptr %3475, i64 1
  %3484 = load float, ptr %3483, align 4, !tbaa !44
  %3485 = fsub float %3482, %3484
  %3486 = getelementptr inbounds float, ptr %3477, i64 2
  %3487 = load float, ptr %3486, align 4, !tbaa !44
  %3488 = getelementptr inbounds float, ptr %3475, i64 2
  %3489 = load float, ptr %3488, align 4, !tbaa !44
  %3490 = fsub float %3487, %3489
  %3491 = fmul float %3485, %3485
  %3492 = call float @llvm.fmuladd.f32(float %3480, float %3480, float %3491)
  %3493 = call float @llvm.fmuladd.f32(float %3490, float %3490, float %3492)
  %3494 = call float @sqrtf(float noundef %3493) #16
  %3495 = fdiv float %3473, %3494
  %3496 = getelementptr inbounds %struct.VertRen, ptr %3455, i64 0, i32 5
  %3497 = load i32, ptr %3496, align 8, !tbaa !642
  %3498 = shl nsw i32 %3497, 1
  %3499 = sext i32 %3498 to i64
  %3500 = getelementptr inbounds float, ptr %3276, i64 %3499
  %3501 = load float, ptr %3500, align 4, !tbaa !44
  %3502 = fadd float %3495, %3501
  store float %3502, ptr %3500, align 4, !tbaa !44
  %3503 = getelementptr inbounds float, ptr %3500, i64 1
  %3504 = load float, ptr %3503, align 4, !tbaa !44
  %3505 = fadd float %3504, 1.000000e+00
  store float %3505, ptr %3503, align 4, !tbaa !44
  %3506 = getelementptr inbounds %struct.VertRen, ptr %3456, i64 0, i32 5
  %3507 = load i32, ptr %3506, align 8, !tbaa !642
  %3508 = shl nsw i32 %3507, 1
  %3509 = sext i32 %3508 to i64
  %3510 = getelementptr inbounds float, ptr %3276, i64 %3509
  %3511 = load float, ptr %3510, align 4, !tbaa !44
  %3512 = fadd float %3495, %3511
  store float %3512, ptr %3510, align 4, !tbaa !44
  %3513 = getelementptr inbounds float, ptr %3510, i64 1
  %3514 = load float, ptr %3513, align 4, !tbaa !44
  %3515 = fadd float %3514, 1.000000e+00
  store float %3515, ptr %3513, align 4, !tbaa !44
  %3516 = load ptr, ptr %3329, align 8, !tbaa !557
  %3517 = icmp eq ptr %3516, null
  br i1 %3517, label %3701, label %3518

3518:                                             ; preds = %3332
  %3519 = load ptr, ptr %3394, align 8, !tbaa !556
  %3520 = load float, ptr %3516, align 4, !tbaa !44
  %3521 = load float, ptr %3519, align 4, !tbaa !44
  %3522 = fsub float %3520, %3521
  %3523 = getelementptr inbounds float, ptr %3516, i64 1
  %3524 = load float, ptr %3523, align 4, !tbaa !44
  %3525 = getelementptr inbounds float, ptr %3519, i64 1
  %3526 = load float, ptr %3525, align 4, !tbaa !44
  %3527 = fsub float %3524, %3526
  %3528 = getelementptr inbounds float, ptr %3516, i64 2
  %3529 = load float, ptr %3528, align 4, !tbaa !44
  %3530 = getelementptr inbounds float, ptr %3519, i64 2
  %3531 = load float, ptr %3530, align 4, !tbaa !44
  %3532 = fsub float %3529, %3531
  %3533 = fmul float %3527, %3527
  %3534 = call float @llvm.fmuladd.f32(float %3522, float %3522, float %3533)
  %3535 = call float @llvm.fmuladd.f32(float %3532, float %3532, float %3534)
  %3536 = call float @sqrtf(float noundef %3535) #16
  %3537 = getelementptr inbounds %struct.VertRen, ptr %3519, i64 0, i32 2
  %3538 = load ptr, ptr %3537, align 8, !tbaa !548
  %3539 = getelementptr inbounds %struct.VertRen, ptr %3516, i64 0, i32 2
  %3540 = load ptr, ptr %3539, align 8, !tbaa !548
  %3541 = load float, ptr %3540, align 4, !tbaa !44
  %3542 = load float, ptr %3538, align 4, !tbaa !44
  %3543 = fsub float %3541, %3542
  %3544 = getelementptr inbounds float, ptr %3540, i64 1
  %3545 = load float, ptr %3544, align 4, !tbaa !44
  %3546 = getelementptr inbounds float, ptr %3538, i64 1
  %3547 = load float, ptr %3546, align 4, !tbaa !44
  %3548 = fsub float %3545, %3547
  %3549 = getelementptr inbounds float, ptr %3540, i64 2
  %3550 = load float, ptr %3549, align 4, !tbaa !44
  %3551 = getelementptr inbounds float, ptr %3538, i64 2
  %3552 = load float, ptr %3551, align 4, !tbaa !44
  %3553 = fsub float %3550, %3552
  %3554 = fmul float %3548, %3548
  %3555 = call float @llvm.fmuladd.f32(float %3543, float %3543, float %3554)
  %3556 = call float @llvm.fmuladd.f32(float %3553, float %3553, float %3555)
  %3557 = call float @sqrtf(float noundef %3556) #16
  %3558 = fdiv float %3536, %3557
  %3559 = getelementptr inbounds %struct.VertRen, ptr %3519, i64 0, i32 5
  %3560 = load i32, ptr %3559, align 8, !tbaa !642
  %3561 = shl nsw i32 %3560, 1
  %3562 = sext i32 %3561 to i64
  %3563 = getelementptr inbounds float, ptr %3276, i64 %3562
  %3564 = load float, ptr %3563, align 4, !tbaa !44
  %3565 = fadd float %3558, %3564
  store float %3565, ptr %3563, align 4, !tbaa !44
  %3566 = getelementptr inbounds float, ptr %3563, i64 1
  %3567 = load float, ptr %3566, align 4, !tbaa !44
  %3568 = fadd float %3567, 1.000000e+00
  store float %3568, ptr %3566, align 4, !tbaa !44
  %3569 = getelementptr inbounds %struct.VertRen, ptr %3516, i64 0, i32 5
  %3570 = load i32, ptr %3569, align 8, !tbaa !642
  %3571 = shl nsw i32 %3570, 1
  %3572 = sext i32 %3571 to i64
  %3573 = getelementptr inbounds float, ptr %3276, i64 %3572
  %3574 = load float, ptr %3573, align 4, !tbaa !44
  %3575 = fadd float %3558, %3574
  store float %3575, ptr %3573, align 4, !tbaa !44
  %3576 = getelementptr inbounds float, ptr %3573, i64 1
  %3577 = load float, ptr %3576, align 4, !tbaa !44
  %3578 = fadd float %3577, 1.000000e+00
  store float %3578, ptr %3576, align 4, !tbaa !44
  %3579 = load ptr, ptr %3329, align 8, !tbaa !557
  %3580 = load ptr, ptr %3323, align 8, !tbaa !553
  %3581 = load float, ptr %3580, align 4, !tbaa !44
  %3582 = load float, ptr %3579, align 4, !tbaa !44
  %3583 = fsub float %3581, %3582
  %3584 = getelementptr inbounds float, ptr %3580, i64 1
  %3585 = load float, ptr %3584, align 4, !tbaa !44
  %3586 = getelementptr inbounds float, ptr %3579, i64 1
  %3587 = load float, ptr %3586, align 4, !tbaa !44
  %3588 = fsub float %3585, %3587
  %3589 = getelementptr inbounds float, ptr %3580, i64 2
  %3590 = load float, ptr %3589, align 4, !tbaa !44
  %3591 = getelementptr inbounds float, ptr %3579, i64 2
  %3592 = load float, ptr %3591, align 4, !tbaa !44
  %3593 = fsub float %3590, %3592
  %3594 = fmul float %3588, %3588
  %3595 = call float @llvm.fmuladd.f32(float %3583, float %3583, float %3594)
  %3596 = call float @llvm.fmuladd.f32(float %3593, float %3593, float %3595)
  %3597 = call float @sqrtf(float noundef %3596) #16
  %3598 = getelementptr inbounds %struct.VertRen, ptr %3579, i64 0, i32 2
  %3599 = load ptr, ptr %3598, align 8, !tbaa !548
  %3600 = getelementptr inbounds %struct.VertRen, ptr %3580, i64 0, i32 2
  %3601 = load ptr, ptr %3600, align 8, !tbaa !548
  %3602 = load float, ptr %3601, align 4, !tbaa !44
  %3603 = load float, ptr %3599, align 4, !tbaa !44
  %3604 = fsub float %3602, %3603
  %3605 = getelementptr inbounds float, ptr %3601, i64 1
  %3606 = load float, ptr %3605, align 4, !tbaa !44
  %3607 = getelementptr inbounds float, ptr %3599, i64 1
  %3608 = load float, ptr %3607, align 4, !tbaa !44
  %3609 = fsub float %3606, %3608
  %3610 = getelementptr inbounds float, ptr %3601, i64 2
  %3611 = load float, ptr %3610, align 4, !tbaa !44
  %3612 = getelementptr inbounds float, ptr %3599, i64 2
  %3613 = load float, ptr %3612, align 4, !tbaa !44
  %3614 = fsub float %3611, %3613
  %3615 = fmul float %3609, %3609
  %3616 = call float @llvm.fmuladd.f32(float %3604, float %3604, float %3615)
  %3617 = call float @llvm.fmuladd.f32(float %3614, float %3614, float %3616)
  %3618 = call float @sqrtf(float noundef %3617) #16
  %3619 = fdiv float %3597, %3618
  %3620 = getelementptr inbounds %struct.VertRen, ptr %3579, i64 0, i32 5
  %3621 = load i32, ptr %3620, align 8, !tbaa !642
  %3622 = shl nsw i32 %3621, 1
  %3623 = sext i32 %3622 to i64
  %3624 = getelementptr inbounds float, ptr %3276, i64 %3623
  %3625 = load float, ptr %3624, align 4, !tbaa !44
  %3626 = fadd float %3619, %3625
  store float %3626, ptr %3624, align 4, !tbaa !44
  %3627 = getelementptr inbounds float, ptr %3624, i64 1
  %3628 = load float, ptr %3627, align 4, !tbaa !44
  %3629 = fadd float %3628, 1.000000e+00
  store float %3629, ptr %3627, align 4, !tbaa !44
  %3630 = getelementptr inbounds %struct.VertRen, ptr %3580, i64 0, i32 5
  %3631 = load i32, ptr %3630, align 8, !tbaa !642
  %3632 = shl nsw i32 %3631, 1
  %3633 = sext i32 %3632 to i64
  %3634 = getelementptr inbounds float, ptr %3276, i64 %3633
  %3635 = load float, ptr %3634, align 4, !tbaa !44
  %3636 = fadd float %3619, %3635
  store float %3636, ptr %3634, align 4, !tbaa !44
  %3637 = getelementptr inbounds float, ptr %3634, i64 1
  %3638 = load float, ptr %3637, align 4, !tbaa !44
  %3639 = fadd float %3638, 1.000000e+00
  store float %3639, ptr %3637, align 4, !tbaa !44
  %3640 = load ptr, ptr %3333, align 8, !tbaa !555
  %3641 = load ptr, ptr %3329, align 8, !tbaa !557
  %3642 = load float, ptr %3641, align 4, !tbaa !44
  %3643 = load float, ptr %3640, align 4, !tbaa !44
  %3644 = fsub float %3642, %3643
  %3645 = getelementptr inbounds float, ptr %3641, i64 1
  %3646 = load float, ptr %3645, align 4, !tbaa !44
  %3647 = getelementptr inbounds float, ptr %3640, i64 1
  %3648 = load float, ptr %3647, align 4, !tbaa !44
  %3649 = fsub float %3646, %3648
  %3650 = getelementptr inbounds float, ptr %3641, i64 2
  %3651 = load float, ptr %3650, align 4, !tbaa !44
  %3652 = getelementptr inbounds float, ptr %3640, i64 2
  %3653 = load float, ptr %3652, align 4, !tbaa !44
  %3654 = fsub float %3651, %3653
  %3655 = fmul float %3649, %3649
  %3656 = call float @llvm.fmuladd.f32(float %3644, float %3644, float %3655)
  %3657 = call float @llvm.fmuladd.f32(float %3654, float %3654, float %3656)
  %3658 = call float @sqrtf(float noundef %3657) #16
  %3659 = getelementptr inbounds %struct.VertRen, ptr %3640, i64 0, i32 2
  %3660 = load ptr, ptr %3659, align 8, !tbaa !548
  %3661 = getelementptr inbounds %struct.VertRen, ptr %3641, i64 0, i32 2
  %3662 = load ptr, ptr %3661, align 8, !tbaa !548
  %3663 = load float, ptr %3662, align 4, !tbaa !44
  %3664 = load float, ptr %3660, align 4, !tbaa !44
  %3665 = fsub float %3663, %3664
  %3666 = getelementptr inbounds float, ptr %3662, i64 1
  %3667 = load float, ptr %3666, align 4, !tbaa !44
  %3668 = getelementptr inbounds float, ptr %3660, i64 1
  %3669 = load float, ptr %3668, align 4, !tbaa !44
  %3670 = fsub float %3667, %3669
  %3671 = getelementptr inbounds float, ptr %3662, i64 2
  %3672 = load float, ptr %3671, align 4, !tbaa !44
  %3673 = getelementptr inbounds float, ptr %3660, i64 2
  %3674 = load float, ptr %3673, align 4, !tbaa !44
  %3675 = fsub float %3672, %3674
  %3676 = fmul float %3670, %3670
  %3677 = call float @llvm.fmuladd.f32(float %3665, float %3665, float %3676)
  %3678 = call float @llvm.fmuladd.f32(float %3675, float %3675, float %3677)
  %3679 = call float @sqrtf(float noundef %3678) #16
  %3680 = fdiv float %3658, %3679
  %3681 = getelementptr inbounds %struct.VertRen, ptr %3640, i64 0, i32 5
  %3682 = load i32, ptr %3681, align 8, !tbaa !642
  %3683 = shl nsw i32 %3682, 1
  %3684 = sext i32 %3683 to i64
  %3685 = getelementptr inbounds float, ptr %3276, i64 %3684
  %3686 = load float, ptr %3685, align 4, !tbaa !44
  %3687 = fadd float %3680, %3686
  store float %3687, ptr %3685, align 4, !tbaa !44
  %3688 = getelementptr inbounds float, ptr %3685, i64 1
  %3689 = load float, ptr %3688, align 4, !tbaa !44
  %3690 = fadd float %3689, 1.000000e+00
  store float %3690, ptr %3688, align 4, !tbaa !44
  %3691 = getelementptr inbounds %struct.VertRen, ptr %3641, i64 0, i32 5
  %3692 = load i32, ptr %3691, align 8, !tbaa !642
  %3693 = shl nsw i32 %3692, 1
  %3694 = sext i32 %3693 to i64
  %3695 = getelementptr inbounds float, ptr %3276, i64 %3694
  %3696 = load float, ptr %3695, align 4, !tbaa !44
  %3697 = fadd float %3680, %3696
  store float %3697, ptr %3695, align 4, !tbaa !44
  %3698 = getelementptr inbounds float, ptr %3695, i64 1
  %3699 = load float, ptr %3698, align 4, !tbaa !44
  %3700 = fadd float %3699, 1.000000e+00
  store float %3700, ptr %3698, align 4, !tbaa !44
  br label %3701

3701:                                             ; preds = %3518, %3332, %3328, %3321
  %3702 = add nuw nsw i32 %3322, 1
  %3703 = load i32, ptr %3285, align 4, !tbaa !293
  %3704 = icmp slt i32 %3702, %3703
  br i1 %3704, label %3321, label %3313, !llvm.loop !643

3705:                                             ; preds = %3316, %3744
  %3706 = phi i32 [ 0, %3316 ], [ %3745, %3744 ]
  %3707 = call ptr @RE_findOrAddVert(ptr noundef %1, i32 noundef %3706) #16
  %3708 = getelementptr inbounds %struct.VertRen, ptr %3707, i64 0, i32 2
  %3709 = load ptr, ptr %3708, align 8, !tbaa !548
  %3710 = icmp eq ptr %3709, null
  br i1 %3710, label %3744, label %3711

3711:                                             ; preds = %3705
  %3712 = getelementptr inbounds %struct.VertRen, ptr %3707, i64 0, i32 5
  %3713 = load i32, ptr %3712, align 8, !tbaa !642
  %3714 = shl nsw i32 %3713, 1
  %3715 = sext i32 %3714 to i64
  %3716 = getelementptr inbounds float, ptr %3276, i64 %3715
  %3717 = getelementptr inbounds float, ptr %3716, i64 1
  %3718 = load float, ptr %3717, align 4, !tbaa !44
  %3719 = fcmp une float %3718, 0.000000e+00
  br i1 %3719, label %3720, label %3723

3720:                                             ; preds = %3711
  %3721 = load float, ptr %3716, align 4, !tbaa !44
  %3722 = fdiv float %3721, %3718
  store float %3722, ptr %3716, align 4, !tbaa !44
  br label %3723

3723:                                             ; preds = %3720, %3711
  %3724 = call ptr @RE_vertren_get_stress(ptr noundef %1, ptr noundef %3707, i32 noundef 1) #16
  %3725 = load float, ptr %3716, align 4, !tbaa !44
  store float %3725, ptr %3724, align 4, !tbaa !44
  %3726 = load ptr, ptr %3708, align 8, !tbaa !548
  %3727 = load float, ptr %3726, align 4, !tbaa !44
  %3728 = load float, ptr %12, align 4, !tbaa !44
  %3729 = fsub float %3727, %3728
  %3730 = load float, ptr %13, align 4, !tbaa !44
  %3731 = fdiv float %3729, %3730
  store float %3731, ptr %3726, align 4, !tbaa !44
  %3732 = getelementptr inbounds float, ptr %3726, i64 1
  %3733 = load float, ptr %3732, align 4, !tbaa !44
  %3734 = load float, ptr %3317, align 4, !tbaa !44
  %3735 = fsub float %3733, %3734
  %3736 = load float, ptr %3318, align 4, !tbaa !44
  %3737 = fdiv float %3735, %3736
  store float %3737, ptr %3732, align 4, !tbaa !44
  %3738 = getelementptr inbounds float, ptr %3726, i64 2
  %3739 = load float, ptr %3738, align 4, !tbaa !44
  %3740 = load float, ptr %3319, align 4, !tbaa !44
  %3741 = fsub float %3739, %3740
  %3742 = load float, ptr %3320, align 4, !tbaa !44
  %3743 = fdiv float %3741, %3742
  store float %3743, ptr %3738, align 4, !tbaa !44
  br label %3744

3744:                                             ; preds = %3723, %3705
  %3745 = add nuw nsw i32 %3706, 1
  %3746 = load i32, ptr %3268, align 8, !tbaa !211
  %3747 = icmp slt i32 %3745, %3746
  br i1 %3747, label %3705, label %3748, !llvm.loop !644

3748:                                             ; preds = %3744, %3313
  %3749 = load ptr, ptr @MEM_freeN, align 8, !tbaa !77
  call void %3749(ptr noundef %3276) #16
  br label %3750

3750:                                             ; preds = %3748, %3267
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %13) #16
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %12) #16
  br label %3751

3751:                                             ; preds = %3750, %3265
  br i1 %2221, label %3753, label %3752

3752:                                             ; preds = %3751
  call fastcc void @calc_vertexnormals(ptr noundef %1, i8 noundef zeroext 1, i8 noundef zeroext 0, i8 noundef zeroext 0)
  call fastcc void @displace(ptr noundef %0, ptr noundef %1)
  br label %3882

3753:                                             ; preds = %3751
  br i1 %2227, label %3754, label %3882

3754:                                             ; preds = %3753
  %3755 = icmp eq ptr %3264, null
  %3756 = zext i1 %3755 to i32
  %3757 = getelementptr inbounds %struct.ObjectRen, ptr %1, i64 0, i32 10
  %3758 = load i32, ptr %3757, align 8, !tbaa !211
  %3759 = icmp eq i32 %3758, 0
  br i1 %3759, label %3882, label %3760

3760:                                             ; preds = %3754
  %3761 = load ptr, ptr @MEM_callocN, align 8, !tbaa !77
  %3762 = sext i32 %3758 to i64
  %3763 = mul nsw i64 %3762, 24
  %3764 = call ptr %3761(i64 noundef %3763, ptr noundef nonnull @.str.22) #16
  br i1 %3755, label %3810, label %3765

3765:                                             ; preds = %3760
  %3766 = getelementptr inbounds %struct.ObjectRen, ptr %1, i64 0, i32 11
  %3767 = load i32, ptr %3766, align 4, !tbaa !293
  %3768 = icmp sgt i32 %3767, 0
  br i1 %3768, label %3769, label %3810

3769:                                             ; preds = %3765, %3805
  %3770 = phi ptr [ %3807, %3805 ], [ %3264, %3765 ]
  %3771 = phi i32 [ %3806, %3805 ], [ 0, %3765 ]
  %3772 = call ptr @RE_findOrAddVlak(ptr noundef %1, i32 noundef %3771) #16
  %3773 = getelementptr inbounds %struct.VlakRen, ptr %3772, i64 0, i32 1
  %3774 = load ptr, ptr %3773, align 8, !tbaa !555
  %3775 = getelementptr inbounds %struct.VlakRen, ptr %3772, i64 0, i32 2
  %3776 = load ptr, ptr %3775, align 8, !tbaa !556
  %3777 = icmp eq ptr %3774, %3776
  br i1 %3777, label %3805, label %3778

3778:                                             ; preds = %3769
  %3779 = load ptr, ptr %3772, align 8, !tbaa !553
  %3780 = getelementptr inbounds %struct.VertRen, ptr %3779, i64 0, i32 5
  %3781 = load i32, ptr %3780, align 8, !tbaa !642
  %3782 = sext i32 %3781 to i64
  %3783 = getelementptr inbounds %struct.ASvert, ptr %3764, i64 %3782
  call fastcc void @as_addvert_lnor(ptr noundef %1, ptr noundef %3783, ptr noundef %3779, ptr noundef nonnull %3772, ptr noundef nonnull %3770)
  %3784 = load ptr, ptr %3773, align 8, !tbaa !555
  %3785 = getelementptr inbounds %struct.VertRen, ptr %3784, i64 0, i32 5
  %3786 = load i32, ptr %3785, align 8, !tbaa !642
  %3787 = sext i32 %3786 to i64
  %3788 = getelementptr inbounds %struct.ASvert, ptr %3764, i64 %3787
  %3789 = getelementptr inbounds [4 x [3 x i16]], ptr %3770, i64 0, i64 1
  call fastcc void @as_addvert_lnor(ptr noundef %1, ptr noundef %3788, ptr noundef %3784, ptr noundef nonnull %3772, ptr noundef nonnull %3789)
  %3790 = load ptr, ptr %3775, align 8, !tbaa !556
  %3791 = getelementptr inbounds %struct.VertRen, ptr %3790, i64 0, i32 5
  %3792 = load i32, ptr %3791, align 8, !tbaa !642
  %3793 = sext i32 %3792 to i64
  %3794 = getelementptr inbounds %struct.ASvert, ptr %3764, i64 %3793
  %3795 = getelementptr inbounds [4 x [3 x i16]], ptr %3770, i64 0, i64 2
  call fastcc void @as_addvert_lnor(ptr noundef %1, ptr noundef %3794, ptr noundef %3790, ptr noundef nonnull %3772, ptr noundef nonnull %3795)
  %3796 = getelementptr inbounds %struct.VlakRen, ptr %3772, i64 0, i32 3
  %3797 = load ptr, ptr %3796, align 8, !tbaa !557
  %3798 = icmp eq ptr %3797, null
  br i1 %3798, label %3805, label %3799

3799:                                             ; preds = %3778
  %3800 = getelementptr inbounds %struct.VertRen, ptr %3797, i64 0, i32 5
  %3801 = load i32, ptr %3800, align 8, !tbaa !642
  %3802 = sext i32 %3801 to i64
  %3803 = getelementptr inbounds %struct.ASvert, ptr %3764, i64 %3802
  %3804 = getelementptr inbounds [4 x [3 x i16]], ptr %3770, i64 0, i64 3
  call fastcc void @as_addvert_lnor(ptr noundef %1, ptr noundef %3803, ptr noundef nonnull %3797, ptr noundef nonnull %3772, ptr noundef nonnull %3804)
  br label %3805

3805:                                             ; preds = %3799, %3778, %3769
  %3806 = add nuw nsw i32 %3771, 1
  %3807 = getelementptr inbounds [4 x [3 x i16]], ptr %3770, i64 1
  %3808 = load i32, ptr %3766, align 4, !tbaa !293
  %3809 = icmp slt i32 %3806, %3808
  br i1 %3809, label %3769, label %3810, !llvm.loop !645

3810:                                             ; preds = %3805, %3765, %3760
  %3811 = icmp sgt i32 %3758, 0
  br i1 %3811, label %3812, label %3819

3812:                                             ; preds = %3810
  %3813 = zext nneg i32 %3758 to i64
  br label %3814

3814:                                             ; preds = %3812, %3814
  %3815 = phi i64 [ 0, %3812 ], [ %3817, %3814 ]
  %3816 = getelementptr inbounds %struct.ASvert, ptr %3764, i64 %3815, i32 1
  call void @BLI_freelistN(ptr noundef nonnull %3816) #16
  %3817 = add nuw nsw i64 %3815, 1
  %3818 = icmp eq i64 %3817, %3813
  br i1 %3818, label %3819, label %3814, !llvm.loop !646

3819:                                             ; preds = %3814, %3810
  %3820 = load ptr, ptr @MEM_freeN, align 8, !tbaa !77
  call void %3820(ptr noundef %3764) #16
  %3821 = load i32, ptr %3757, align 8, !tbaa !211
  %3822 = icmp sgt i32 %3821, 0
  br i1 %3822, label %3827, label %3823

3823:                                             ; preds = %3856, %3819
  %3824 = getelementptr inbounds %struct.ObjectRen, ptr %1, i64 0, i32 11
  %3825 = load i32, ptr %3824, align 4, !tbaa !293
  %3826 = icmp sgt i32 %3825, 0
  br i1 %3826, label %3860, label %3882

3827:                                             ; preds = %3819, %3856
  %3828 = phi i32 [ %3857, %3856 ], [ 0, %3819 ]
  %3829 = call ptr @RE_findOrAddVert(ptr noundef %1, i32 noundef %3828) #16
  call void @mul_m4_v3(ptr noundef nonnull %19, ptr noundef %3829) #16
  br i1 %3755, label %3856, label %3830

3830:                                             ; preds = %3827
  %3831 = getelementptr inbounds %struct.VertRen, ptr %3829, i64 0, i32 1
  call void @mul_mat3_m4_v3(ptr noundef nonnull %19, ptr noundef nonnull %3831) #16
  %3832 = load float, ptr %3831, align 4, !tbaa !44
  %3833 = fneg float %3832
  store float %3833, ptr %3831, align 4, !tbaa !44
  %3834 = getelementptr inbounds %struct.VertRen, ptr %3829, i64 0, i32 1, i64 1
  %3835 = load float, ptr %3834, align 4, !tbaa !44
  %3836 = fneg float %3835
  store float %3836, ptr %3834, align 4, !tbaa !44
  %3837 = getelementptr inbounds %struct.VertRen, ptr %3829, i64 0, i32 1, i64 2
  %3838 = load float, ptr %3837, align 4, !tbaa !44
  %3839 = fneg float %3838
  store float %3839, ptr %3837, align 4, !tbaa !44
  %3840 = fmul float %3835, %3835
  %3841 = call float @llvm.fmuladd.f32(float %3832, float %3832, float %3840)
  %3842 = call float @llvm.fmuladd.f32(float %3838, float %3838, float %3841)
  %3843 = fcmp ogt float %3842, 0x38AA95A5C0000000
  br i1 %3843, label %3844, label %3853

3844:                                             ; preds = %3830
  %3845 = call float @sqrtf(float noundef %3842) #16
  %3846 = fdiv float 1.000000e+00, %3845
  %3847 = load float, ptr %3831, align 4, !tbaa !44
  %3848 = fmul float %3847, %3846
  store float %3848, ptr %3831, align 4, !tbaa !44
  %3849 = load float, ptr %3834, align 4, !tbaa !44
  %3850 = fmul float %3846, %3849
  store float %3850, ptr %3834, align 4, !tbaa !44
  %3851 = load float, ptr %3837, align 4, !tbaa !44
  %3852 = fmul float %3846, %3851
  br label %3854

3853:                                             ; preds = %3830
  store float 0.000000e+00, ptr %3831, align 4, !tbaa !44
  store float 0.000000e+00, ptr %3834, align 4, !tbaa !44
  br label %3854

3854:                                             ; preds = %3853, %3844
  %3855 = phi float [ 0.000000e+00, %3853 ], [ %3852, %3844 ]
  store float %3855, ptr %3837, align 4, !tbaa !44
  br label %3856

3856:                                             ; preds = %3854, %3827
  %3857 = add nuw nsw i32 %3828, 1
  %3858 = load i32, ptr %3757, align 8, !tbaa !211
  %3859 = icmp slt i32 %3857, %3858
  br i1 %3859, label %3827, label %3823, !llvm.loop !647

3860:                                             ; preds = %3823, %3878
  %3861 = phi i32 [ %3879, %3878 ], [ 0, %3823 ]
  %3862 = call ptr @RE_findOrAddVlak(ptr noundef %1, i32 noundef %3861) #16
  %3863 = getelementptr inbounds %struct.VlakRen, ptr %3862, i64 0, i32 1
  %3864 = load ptr, ptr %3863, align 8, !tbaa !555
  %3865 = getelementptr inbounds %struct.VlakRen, ptr %3862, i64 0, i32 2
  %3866 = load ptr, ptr %3865, align 8, !tbaa !556
  %3867 = icmp eq ptr %3864, %3866
  br i1 %3867, label %3878, label %3868

3868:                                             ; preds = %3860
  %3869 = getelementptr inbounds %struct.VlakRen, ptr %3862, i64 0, i32 3
  %3870 = load ptr, ptr %3869, align 8, !tbaa !557
  %3871 = icmp eq ptr %3870, null
  %3872 = getelementptr inbounds %struct.VlakRen, ptr %3862, i64 0, i32 4
  %3873 = load ptr, ptr %3862, align 8, !tbaa !553
  br i1 %3871, label %3876, label %3874

3874:                                             ; preds = %3868
  %3875 = call float @normal_quad_v3(ptr noundef nonnull %3872, ptr noundef nonnull %3870, ptr noundef %3866, ptr noundef %3864, ptr noundef %3873) #16
  br label %3878

3876:                                             ; preds = %3868
  %3877 = call float @normal_tri_v3(ptr noundef nonnull %3872, ptr noundef %3866, ptr noundef %3864, ptr noundef %3873) #16
  br label %3878

3878:                                             ; preds = %3876, %3874, %3860
  %3879 = add nuw nsw i32 %3861, 1
  %3880 = load i32, ptr %3824, align 4, !tbaa !293
  %3881 = icmp slt i32 %3879, %3880
  br i1 %3881, label %3860, label %3882, !llvm.loop !648

3882:                                             ; preds = %3878, %3823, %3754, %3753, %3752
  %3883 = phi i32 [ 0, %3752 ], [ %3263, %3753 ], [ %3756, %3754 ], [ %3756, %3823 ], [ %3756, %3878 ]
  %3884 = icmp ne i32 %3883, 0
  %3885 = icmp ne i8 %2197, 0
  %3886 = select i1 %3884, i1 true, i1 %3885
  br i1 %3886, label %3887, label %3889

3887:                                             ; preds = %3882
  %3888 = trunc i32 %3883 to i8
  call fastcc void @calc_vertexnormals(ptr noundef %1, i8 noundef zeroext %3888, i8 noundef zeroext %2197, i8 noundef zeroext %2198)
  br label %3889

3889:                                             ; preds = %3887, %3882, %3262
  %3890 = icmp eq ptr %3264, null
  br i1 %3890, label %3893, label %3891

3891:                                             ; preds = %3889
  %3892 = load ptr, ptr @MEM_freeN, align 8, !tbaa !77
  call void %3892(ptr noundef nonnull %3264) #16
  br label %3893

3893:                                             ; preds = %3891, %3889
  %3894 = getelementptr inbounds %struct.DerivedMesh, ptr %2258, i64 0, i32 95
  %3895 = load ptr, ptr %3894, align 8, !tbaa !283
  call void %3895(ptr noundef %2258) #16
  br label %3896

3896:                                             ; preds = %2121, %2257, %3893
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %19) #16
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %18) #16
  br label %4098

3897:                                             ; preds = %1326
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %9) #16
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %10) #16
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %11) #16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %11, i8 0, i64 16, i1 false)
  %3898 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 44
  %3899 = load ptr, ptr %3898, align 8, !tbaa !64
  %3900 = tail call ptr @BKE_mball_basis_find(ptr noundef %3899, ptr noundef %54) #16
  %3901 = icmp eq ptr %54, %3900
  br i1 %3901, label %3902, label %4097

3902:                                             ; preds = %3897
  %3903 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 32
  %3904 = getelementptr inbounds %struct.Object, ptr %54, i64 0, i32 47
  call void @mul_m4_m4m4(ptr noundef nonnull %9, ptr noundef nonnull %3903, ptr noundef nonnull %3904) #16
  %3905 = getelementptr inbounds %struct.Object, ptr %54, i64 0, i32 50
  %3906 = call zeroext i8 @invert_m4_m4(ptr noundef nonnull %3905, ptr noundef nonnull %9) #16
  call void @copy_m3_m4(ptr noundef nonnull %10, ptr noundef nonnull %3905) #16
  %3907 = call zeroext i8 @is_negative_m4(ptr noundef nonnull %9) #16
  %3908 = call fastcc ptr @give_render_material(ptr noundef %0, ptr noundef %54, i16 noundef signext 1)
  %3909 = getelementptr inbounds %struct.Material, ptr %3908, i64 0, i32 90
  %3910 = load i16, ptr %3909, align 4, !tbaa !270
  %3911 = and i16 %3910, 1
  %3912 = icmp eq i16 %3911, 0
  %3913 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 101
  %3914 = load ptr, ptr %3913, align 8, !tbaa !124
  %3915 = load ptr, ptr %3898, align 8, !tbaa !64
  call void @BKE_displist_make_mball_forRender(ptr noundef %3914, ptr noundef %3915, ptr noundef %54, ptr noundef nonnull %11) #16
  %3916 = load ptr, ptr %11, align 8, !tbaa !209
  %3917 = icmp eq ptr %3916, null
  br i1 %3917, label %4097, label %3918

3918:                                             ; preds = %3902
  %3919 = getelementptr inbounds %struct.DispList, ptr %3916, i64 0, i32 8
  %3920 = load ptr, ptr %3919, align 8, !tbaa !547
  %3921 = getelementptr inbounds %struct.DispList, ptr %3916, i64 0, i32 9
  %3922 = load ptr, ptr %3921, align 8, !tbaa !649
  br i1 %3912, label %3940, label %3923

3923:                                             ; preds = %3918
  %3924 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 73
  %3925 = load ptr, ptr %3924, align 8, !tbaa !111
  %3926 = icmp eq ptr %3925, null
  br i1 %3926, label %3929, label %3927

3927:                                             ; preds = %3923
  %3928 = call ptr @BLI_ghash_lookup(ptr noundef nonnull %3925, ptr noundef %54) #16
  br label %3929

3929:                                             ; preds = %3927, %3923
  %3930 = phi ptr [ %3928, %3927 ], [ null, %3923 ]
  %3931 = icmp eq ptr %3930, null
  br i1 %3931, label %3932, label %3940

3932:                                             ; preds = %3929
  %3933 = call ptr @BKE_mball_make_orco(ptr noundef %54, ptr noundef nonnull %11) #16
  %3934 = load ptr, ptr %3924, align 8, !tbaa !111
  %3935 = icmp eq ptr %3934, null
  br i1 %3935, label %3936, label %3938

3936:                                             ; preds = %3932
  %3937 = call ptr @BLI_ghash_ptr_new(ptr noundef nonnull @.str.18) #16
  store ptr %3937, ptr %3924, align 8, !tbaa !111
  br label %3938

3938:                                             ; preds = %3936, %3932
  %3939 = load ptr, ptr %3924, align 8, !tbaa !111
  call void @BLI_ghash_insert(ptr noundef %3939, ptr noundef %54, ptr noundef %3933) #16
  br label %3940

3940:                                             ; preds = %3938, %3929, %3918
  %3941 = phi ptr [ %3930, %3929 ], [ %3933, %3938 ], [ null, %3918 ]
  %3942 = getelementptr inbounds %struct.DispList, ptr %3916, i64 0, i32 5
  %3943 = load i32, ptr %3942, align 8, !tbaa !546
  %3944 = icmp sgt i32 %3943, 0
  br i1 %3944, label %3945, label %4025

3945:                                             ; preds = %3940
  %3946 = getelementptr inbounds %struct.ObjectRen, ptr %1, i64 0, i32 10
  %3947 = getelementptr inbounds [3 x float], ptr %10, i64 0, i64 1
  %3948 = getelementptr inbounds [3 x float], ptr %10, i64 0, i64 2
  %3949 = getelementptr inbounds [3 x [3 x float]], ptr %10, i64 0, i64 1
  %3950 = getelementptr inbounds [3 x [3 x float]], ptr %10, i64 0, i64 1, i64 1
  %3951 = getelementptr inbounds [3 x [3 x float]], ptr %10, i64 0, i64 1, i64 2
  %3952 = getelementptr inbounds [3 x [3 x float]], ptr %10, i64 0, i64 2
  %3953 = getelementptr inbounds [3 x [3 x float]], ptr %10, i64 0, i64 2, i64 1
  %3954 = getelementptr inbounds [3 x [3 x float]], ptr %10, i64 0, i64 2, i64 2
  br label %3955

3955:                                             ; preds = %3945, %4018
  %3956 = phi ptr [ %3920, %3945 ], [ %4021, %4018 ]
  %3957 = phi ptr [ %3922, %3945 ], [ %4022, %4018 ]
  %3958 = phi i32 [ 0, %3945 ], [ %4020, %4018 ]
  %3959 = phi ptr [ %3941, %3945 ], [ %4019, %4018 ]
  %3960 = load i32, ptr %3946, align 8, !tbaa !211
  %3961 = add nsw i32 %3960, 1
  store i32 %3961, ptr %3946, align 8, !tbaa !211
  %3962 = call ptr @RE_findOrAddVert(ptr noundef %1, i32 noundef %3960) #16
  %3963 = load float, ptr %3956, align 4, !tbaa !44
  store float %3963, ptr %3962, align 4, !tbaa !44
  %3964 = getelementptr inbounds float, ptr %3956, i64 1
  %3965 = load float, ptr %3964, align 4, !tbaa !44
  %3966 = getelementptr inbounds float, ptr %3962, i64 1
  store float %3965, ptr %3966, align 4, !tbaa !44
  %3967 = getelementptr inbounds float, ptr %3956, i64 2
  %3968 = load float, ptr %3967, align 4, !tbaa !44
  %3969 = getelementptr inbounds float, ptr %3962, i64 2
  store float %3968, ptr %3969, align 4, !tbaa !44
  call void @mul_m4_v3(ptr noundef nonnull %9, ptr noundef nonnull %3962) #16
  %3970 = load float, ptr %3957, align 4, !tbaa !44
  %3971 = fneg float %3970
  %3972 = getelementptr inbounds float, ptr %3957, i64 1
  %3973 = load float, ptr %3972, align 4, !tbaa !44
  %3974 = fneg float %3973
  %3975 = getelementptr inbounds float, ptr %3957, i64 2
  %3976 = load float, ptr %3975, align 4, !tbaa !44
  %3977 = fneg float %3976
  %3978 = load float, ptr %10, align 16, !tbaa !44
  %3979 = load float, ptr %3947, align 4, !tbaa !44
  %3980 = fmul float %3979, %3974
  %3981 = call float @llvm.fmuladd.f32(float %3978, float %3971, float %3980)
  %3982 = load float, ptr %3948, align 8, !tbaa !44
  %3983 = call float @llvm.fmuladd.f32(float %3982, float %3977, float %3981)
  %3984 = getelementptr inbounds %struct.VertRen, ptr %3962, i64 0, i32 1
  store float %3983, ptr %3984, align 4, !tbaa !44
  %3985 = load float, ptr %3949, align 4, !tbaa !44
  %3986 = load float, ptr %3950, align 16, !tbaa !44
  %3987 = fmul float %3986, %3974
  %3988 = call float @llvm.fmuladd.f32(float %3985, float %3971, float %3987)
  %3989 = load float, ptr %3951, align 4, !tbaa !44
  %3990 = call float @llvm.fmuladd.f32(float %3989, float %3977, float %3988)
  %3991 = getelementptr inbounds %struct.VertRen, ptr %3962, i64 0, i32 1, i64 1
  store float %3990, ptr %3991, align 4, !tbaa !44
  %3992 = load float, ptr %3952, align 8, !tbaa !44
  %3993 = load float, ptr %3953, align 4, !tbaa !44
  %3994 = fmul float %3993, %3974
  %3995 = call float @llvm.fmuladd.f32(float %3992, float %3971, float %3994)
  %3996 = load float, ptr %3954, align 16, !tbaa !44
  %3997 = call float @llvm.fmuladd.f32(float %3996, float %3977, float %3995)
  %3998 = getelementptr inbounds %struct.VertRen, ptr %3962, i64 0, i32 1, i64 2
  store float %3997, ptr %3998, align 4, !tbaa !44
  %3999 = fmul float %3990, %3990
  %4000 = call float @llvm.fmuladd.f32(float %3983, float %3983, float %3999)
  %4001 = call float @llvm.fmuladd.f32(float %3997, float %3997, float %4000)
  %4002 = fcmp ogt float %4001, 0x38AA95A5C0000000
  br i1 %4002, label %4003, label %4012

4003:                                             ; preds = %3955
  %4004 = call float @sqrtf(float noundef %4001) #16
  %4005 = fdiv float 1.000000e+00, %4004
  %4006 = load float, ptr %3984, align 4, !tbaa !44
  %4007 = fmul float %4006, %4005
  store float %4007, ptr %3984, align 4, !tbaa !44
  %4008 = load float, ptr %3991, align 4, !tbaa !44
  %4009 = fmul float %4005, %4008
  store float %4009, ptr %3991, align 4, !tbaa !44
  %4010 = load float, ptr %3998, align 4, !tbaa !44
  %4011 = fmul float %4005, %4010
  br label %4013

4012:                                             ; preds = %3955
  store float 0.000000e+00, ptr %3984, align 4, !tbaa !44
  store float 0.000000e+00, ptr %3991, align 4, !tbaa !44
  br label %4013

4013:                                             ; preds = %4012, %4003
  %4014 = phi float [ 0.000000e+00, %4012 ], [ %4011, %4003 ]
  store float %4014, ptr %3998, align 4, !tbaa !44
  br i1 %3912, label %4018, label %4015

4015:                                             ; preds = %4013
  %4016 = getelementptr inbounds %struct.VertRen, ptr %3962, i64 0, i32 2
  store ptr %3959, ptr %4016, align 8, !tbaa !548
  %4017 = getelementptr inbounds float, ptr %3959, i64 3
  br label %4018

4018:                                             ; preds = %4015, %4013
  %4019 = phi ptr [ %4017, %4015 ], [ %3959, %4013 ]
  %4020 = add nuw nsw i32 %3958, 1
  %4021 = getelementptr inbounds float, ptr %3956, i64 3
  %4022 = getelementptr inbounds float, ptr %3957, i64 3
  %4023 = load i32, ptr %3942, align 8, !tbaa !546
  %4024 = icmp slt i32 %4020, %4023
  br i1 %4024, label %3955, label %4025, !llvm.loop !650

4025:                                             ; preds = %4018, %3940
  %4026 = getelementptr inbounds %struct.DispList, ptr %3916, i64 0, i32 4
  %4027 = load i32, ptr %4026, align 4, !tbaa !551
  %4028 = icmp sgt i32 %4027, 0
  br i1 %4028, label %4029, label %4096

4029:                                             ; preds = %4025
  %4030 = getelementptr inbounds %struct.DispList, ptr %3916, i64 0, i32 10
  %4031 = load ptr, ptr %4030, align 8, !tbaa !552
  %4032 = getelementptr inbounds %struct.ObjectRen, ptr %1, i64 0, i32 11
  %4033 = icmp eq i8 %3907, 0
  br label %4034

4034:                                             ; preds = %4029, %4091
  %4035 = phi ptr [ %4031, %4029 ], [ %4093, %4091 ]
  %4036 = phi i32 [ 0, %4029 ], [ %4092, %4091 ]
  %4037 = load i32, ptr %4032, align 4, !tbaa !293
  %4038 = add nsw i32 %4037, 1
  store i32 %4038, ptr %4032, align 4, !tbaa !293
  %4039 = call ptr @RE_findOrAddVlak(ptr noundef %1, i32 noundef %4037) #16
  %4040 = load i32, ptr %4035, align 4, !tbaa !80
  %4041 = call ptr @RE_findOrAddVert(ptr noundef %1, i32 noundef %4040) #16
  store ptr %4041, ptr %4039, align 8, !tbaa !553
  %4042 = getelementptr inbounds i32, ptr %4035, i64 1
  %4043 = load i32, ptr %4042, align 4, !tbaa !80
  %4044 = call ptr @RE_findOrAddVert(ptr noundef %1, i32 noundef %4043) #16
  %4045 = getelementptr inbounds %struct.VlakRen, ptr %4039, i64 0, i32 1
  store ptr %4044, ptr %4045, align 8, !tbaa !555
  %4046 = getelementptr inbounds i32, ptr %4035, i64 2
  %4047 = load i32, ptr %4046, align 4, !tbaa !80
  %4048 = call ptr @RE_findOrAddVert(ptr noundef %1, i32 noundef %4047) #16
  %4049 = getelementptr inbounds %struct.VlakRen, ptr %4039, i64 0, i32 2
  store ptr %4048, ptr %4049, align 8, !tbaa !556
  %4050 = getelementptr inbounds %struct.VlakRen, ptr %4039, i64 0, i32 3
  store ptr null, ptr %4050, align 8, !tbaa !557
  %4051 = getelementptr inbounds %struct.VlakRen, ptr %4039, i64 0, i32 4
  br i1 %4033, label %4054, label %4052

4052:                                             ; preds = %4034
  %4053 = load ptr, ptr %4039, align 8, !tbaa !553
  br label %4056

4054:                                             ; preds = %4034
  %4055 = load ptr, ptr %4039, align 8, !tbaa !553
  br label %4056

4056:                                             ; preds = %4054, %4052
  %4057 = phi ptr [ %4055, %4054 ], [ %4048, %4052 ]
  %4058 = phi ptr [ %4048, %4054 ], [ %4053, %4052 ]
  %4059 = load ptr, ptr %4045, align 8, !tbaa !555
  %4060 = call float @normal_tri_v3(ptr noundef nonnull %4051, ptr noundef %4058, ptr noundef %4059, ptr noundef %4057) #16
  %4061 = getelementptr inbounds %struct.VlakRen, ptr %4039, i64 0, i32 5
  store ptr %3908, ptr %4061, align 8, !tbaa !558
  %4062 = getelementptr inbounds %struct.VlakRen, ptr %4039, i64 0, i32 7
  store i8 1, ptr %4062, align 1, !tbaa !559
  %4063 = getelementptr inbounds %struct.VlakRen, ptr %4039, i64 0, i32 8
  store i8 0, ptr %4063, align 2, !tbaa !560
  %4064 = getelementptr inbounds i32, ptr %4035, i64 3
  %4065 = load i32, ptr %4064, align 4, !tbaa !80
  %4066 = icmp eq i32 %4065, 0
  br i1 %4066, label %4091, label %4067

4067:                                             ; preds = %4056
  %4068 = load i32, ptr %4046, align 4, !tbaa !80
  %4069 = icmp eq i32 %4065, %4068
  br i1 %4069, label %4091, label %4070

4070:                                             ; preds = %4067
  %4071 = load i32, ptr %4032, align 4, !tbaa !293
  %4072 = add nsw i32 %4071, 1
  store i32 %4072, ptr %4032, align 4, !tbaa !293
  %4073 = call ptr @RE_findOrAddVlak(ptr noundef %1, i32 noundef %4071) #16
  %4074 = getelementptr inbounds %struct.VlakRen, ptr %4073, i64 0, i32 9
  %4075 = load i32, ptr %4074, align 4, !tbaa !651
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %4073, ptr noundef nonnull align 8 dereferenceable(64) %4039, i64 64, i1 false), !tbaa.struct !652
  store i32 %4075, ptr %4074, align 4, !tbaa !651
  %4076 = getelementptr inbounds %struct.VlakRen, ptr %4073, i64 0, i32 2
  %4077 = load ptr, ptr %4076, align 8, !tbaa !556
  %4078 = getelementptr inbounds %struct.VlakRen, ptr %4073, i64 0, i32 1
  store ptr %4077, ptr %4078, align 8, !tbaa !555
  %4079 = load i32, ptr %4064, align 4, !tbaa !80
  %4080 = call ptr @RE_findOrAddVert(ptr noundef %1, i32 noundef %4079) #16
  store ptr %4080, ptr %4076, align 8, !tbaa !556
  %4081 = getelementptr inbounds %struct.VlakRen, ptr %4073, i64 0, i32 4
  br i1 %4033, label %4084, label %4082

4082:                                             ; preds = %4070
  %4083 = load ptr, ptr %4073, align 8, !tbaa !553
  br label %4086

4084:                                             ; preds = %4070
  %4085 = load ptr, ptr %4073, align 8, !tbaa !553
  br label %4086

4086:                                             ; preds = %4082, %4084
  %4087 = phi ptr [ %4085, %4084 ], [ %4080, %4082 ]
  %4088 = phi ptr [ %4080, %4084 ], [ %4083, %4082 ]
  %4089 = load ptr, ptr %4078, align 8, !tbaa !555
  %4090 = call float @normal_tri_v3(ptr noundef nonnull %4081, ptr noundef %4088, ptr noundef %4089, ptr noundef %4087) #16
  br label %4091

4091:                                             ; preds = %4086, %4067, %4056
  %4092 = add nuw nsw i32 %4036, 1
  %4093 = getelementptr inbounds i32, ptr %4035, i64 4
  %4094 = load i32, ptr %4026, align 4, !tbaa !551
  %4095 = icmp slt i32 %4092, %4094
  br i1 %4095, label %4034, label %4096, !llvm.loop !653

4096:                                             ; preds = %4091, %4025
  call void @BKE_displist_free(ptr noundef nonnull %11) #16
  br label %4097

4097:                                             ; preds = %3897, %3902, %4096
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %11) #16
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %10) #16
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %9) #16
  br label %4098

4098:                                             ; preds = %1326, %2000, %3896, %4097, %2120, %1325
  %4099 = load ptr, ptr %53, align 8, !tbaa !184
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %5) #16
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %6) #16
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %7) #16
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %8) #16
  %4100 = getelementptr inbounds %struct.ObjectRen, ptr %1, i64 0, i32 10
  %4101 = load i32, ptr %4100, align 8, !tbaa !211
  %4102 = icmp eq i32 %4101, 0
  br i1 %4102, label %4103, label %4115

4103:                                             ; preds = %4098
  %4104 = getelementptr inbounds %struct.ObjectRen, ptr %1, i64 0, i32 11
  %4105 = load i32, ptr %4104, align 4, !tbaa !293
  %4106 = icmp eq i32 %4105, 0
  br i1 %4106, label %4107, label %4115

4107:                                             ; preds = %4103
  %4108 = getelementptr inbounds %struct.ObjectRen, ptr %1, i64 0, i32 13
  %4109 = load i32, ptr %4108, align 4, !tbaa !195
  %4110 = icmp eq i32 %4109, 0
  br i1 %4110, label %4111, label %4115

4111:                                             ; preds = %4107
  %4112 = getelementptr inbounds %struct.ObjectRen, ptr %1, i64 0, i32 12
  %4113 = load i32, ptr %4112, align 8, !tbaa !247
  %4114 = icmp eq i32 %4113, 0
  br i1 %4114, label %4700, label %4115

4115:                                             ; preds = %4111, %4107, %4103, %4098
  %4116 = getelementptr inbounds %struct.Object, ptr %4099, i64 0, i32 3
  %4117 = load i16, ptr %4116, align 8, !tbaa !167
  %4118 = icmp eq i16 %4117, 1
  br i1 %4118, label %4136, label %4119

4119:                                             ; preds = %4115
  %4120 = getelementptr inbounds %struct.Object, ptr %4099, i64 0, i32 31
  %4121 = load i32, ptr %4120, align 8, !tbaa !276
  %4122 = icmp slt i32 %4121, 1
  br i1 %4122, label %4136, label %4127

4123:                                             ; preds = %4127
  %4124 = add nuw nsw i32 %4128, 1
  %4125 = load i32, ptr %4120, align 8, !tbaa !276
  %4126 = icmp slt i32 %4128, %4125
  br i1 %4126, label %4127, label %4136, !llvm.loop !585

4127:                                             ; preds = %4119, %4123
  %4128 = phi i32 [ %4124, %4123 ], [ 1, %4119 ]
  %4129 = trunc i32 %4128 to i16
  %4130 = call fastcc ptr @give_render_material(ptr noundef %0, ptr noundef %4099, i16 noundef signext %4129)
  %4131 = getelementptr inbounds %struct.Material, ptr %4130, i64 0, i32 91
  %4132 = load i16, ptr %4131, align 2, !tbaa !584
  %4133 = and i16 %4132, 4096
  %4134 = icmp eq i16 %4133, 0
  br i1 %4134, label %4123, label %4135

4135:                                             ; preds = %4127
  call fastcc void @displace(ptr noundef %0, ptr noundef %1)
  br label %4136

4136:                                             ; preds = %4123, %4119, %4135, %4115
  %4137 = icmp eq i32 %2, 0
  br i1 %4137, label %4138, label %4700

4138:                                             ; preds = %4136
  %4139 = getelementptr inbounds %struct.Object, ptr %4099, i64 0, i32 116
  store float 0.000000e+00, ptr %4139, align 4, !tbaa !654
  %4140 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 45, i32 47
  %4141 = load i32, ptr %4140, align 8, !tbaa !90
  %4142 = and i32 %4141, 65538
  %4143 = icmp eq i32 %4142, 65538
  br i1 %4143, label %4144, label %4264

4144:                                             ; preds = %4138
  %4145 = getelementptr inbounds %struct.ObjectRen, ptr %1, i64 0, i32 11
  %4146 = load i32, ptr %4145, align 4, !tbaa !293
  %4147 = icmp sgt i32 %4146, 0
  br i1 %4147, label %4148, label %4246

4148:                                             ; preds = %4144, %4240
  %4149 = phi i32 [ %4243, %4240 ], [ 0, %4144 ]
  %4150 = phi i32 [ %4242, %4240 ], [ 0, %4144 ]
  %4151 = phi float [ %4241, %4240 ], [ 0.000000e+00, %4144 ]
  %4152 = call ptr @RE_findOrAddVlak(ptr noundef %1, i32 noundef %4149) #16
  %4153 = getelementptr inbounds %struct.VlakRen, ptr %4152, i64 0, i32 7
  %4154 = load i8, ptr %4153, align 1, !tbaa !559
  %4155 = and i8 %4154, 5
  %4156 = icmp eq i8 %4155, 1
  br i1 %4156, label %4157, label %4240

4157:                                             ; preds = %4148
  %4158 = getelementptr inbounds %struct.VlakRen, ptr %4152, i64 0, i32 4
  %4159 = load ptr, ptr %4152, align 8, !tbaa !553
  %4160 = getelementptr inbounds %struct.VertRen, ptr %4159, i64 0, i32 1
  %4161 = load float, ptr %4158, align 4, !tbaa !44
  %4162 = load float, ptr %4160, align 4, !tbaa !44
  %4163 = getelementptr inbounds %struct.VlakRen, ptr %4152, i64 0, i32 4, i64 1
  %4164 = load float, ptr %4163, align 4, !tbaa !44
  %4165 = getelementptr inbounds %struct.VertRen, ptr %4159, i64 0, i32 1, i64 1
  %4166 = load float, ptr %4165, align 4, !tbaa !44
  %4167 = fmul float %4164, %4166
  %4168 = call float @llvm.fmuladd.f32(float %4161, float %4162, float %4167)
  %4169 = getelementptr inbounds %struct.VlakRen, ptr %4152, i64 0, i32 4, i64 2
  %4170 = load float, ptr %4169, align 4, !tbaa !44
  %4171 = getelementptr inbounds %struct.VertRen, ptr %4159, i64 0, i32 1, i64 2
  %4172 = load float, ptr %4171, align 4, !tbaa !44
  %4173 = call float @llvm.fmuladd.f32(float %4170, float %4172, float %4168)
  %4174 = fcmp olt float %4173, 0.000000e+00
  %4175 = fneg float %4173
  %4176 = select i1 %4174, float %4175, float %4173
  %4177 = fcmp ogt float %4176, 0x3FECCCCCC0000000
  %4178 = select i1 %4177, float %4176, float -0.000000e+00
  %4179 = fadd float %4151, %4178
  %4180 = zext i1 %4177 to i32
  %4181 = add nsw i32 %4150, %4180
  %4182 = getelementptr inbounds %struct.VlakRen, ptr %4152, i64 0, i32 1
  %4183 = load ptr, ptr %4182, align 8, !tbaa !555
  %4184 = getelementptr inbounds %struct.VertRen, ptr %4183, i64 0, i32 1
  %4185 = load float, ptr %4184, align 4, !tbaa !44
  %4186 = getelementptr inbounds %struct.VertRen, ptr %4183, i64 0, i32 1, i64 1
  %4187 = load float, ptr %4186, align 4, !tbaa !44
  %4188 = fmul float %4164, %4187
  %4189 = call float @llvm.fmuladd.f32(float %4161, float %4185, float %4188)
  %4190 = getelementptr inbounds %struct.VertRen, ptr %4183, i64 0, i32 1, i64 2
  %4191 = load float, ptr %4190, align 4, !tbaa !44
  %4192 = call float @llvm.fmuladd.f32(float %4170, float %4191, float %4189)
  %4193 = fcmp olt float %4192, 0.000000e+00
  %4194 = fneg float %4192
  %4195 = select i1 %4193, float %4194, float %4192
  %4196 = fcmp ogt float %4195, 0x3FECCCCCC0000000
  %4197 = select i1 %4196, float %4195, float -0.000000e+00
  %4198 = fadd float %4179, %4197
  %4199 = zext i1 %4196 to i32
  %4200 = add nsw i32 %4181, %4199
  %4201 = getelementptr inbounds %struct.VlakRen, ptr %4152, i64 0, i32 2
  %4202 = load ptr, ptr %4201, align 8, !tbaa !556
  %4203 = getelementptr inbounds %struct.VertRen, ptr %4202, i64 0, i32 1
  %4204 = load float, ptr %4203, align 4, !tbaa !44
  %4205 = getelementptr inbounds %struct.VertRen, ptr %4202, i64 0, i32 1, i64 1
  %4206 = load float, ptr %4205, align 4, !tbaa !44
  %4207 = fmul float %4164, %4206
  %4208 = call float @llvm.fmuladd.f32(float %4161, float %4204, float %4207)
  %4209 = getelementptr inbounds %struct.VertRen, ptr %4202, i64 0, i32 1, i64 2
  %4210 = load float, ptr %4209, align 4, !tbaa !44
  %4211 = call float @llvm.fmuladd.f32(float %4170, float %4210, float %4208)
  %4212 = fcmp olt float %4211, 0.000000e+00
  %4213 = fneg float %4211
  %4214 = select i1 %4212, float %4213, float %4211
  %4215 = fcmp ogt float %4214, 0x3FECCCCCC0000000
  %4216 = select i1 %4215, float %4214, float -0.000000e+00
  %4217 = fadd float %4198, %4216
  %4218 = zext i1 %4215 to i32
  %4219 = add nsw i32 %4200, %4218
  %4220 = getelementptr inbounds %struct.VlakRen, ptr %4152, i64 0, i32 3
  %4221 = load ptr, ptr %4220, align 8, !tbaa !557
  %4222 = icmp eq ptr %4221, null
  br i1 %4222, label %4240, label %4223

4223:                                             ; preds = %4157
  %4224 = getelementptr inbounds %struct.VertRen, ptr %4221, i64 0, i32 1
  %4225 = load float, ptr %4224, align 4, !tbaa !44
  %4226 = getelementptr inbounds %struct.VertRen, ptr %4221, i64 0, i32 1, i64 1
  %4227 = load float, ptr %4226, align 4, !tbaa !44
  %4228 = fmul float %4164, %4227
  %4229 = call float @llvm.fmuladd.f32(float %4161, float %4225, float %4228)
  %4230 = getelementptr inbounds %struct.VertRen, ptr %4221, i64 0, i32 1, i64 2
  %4231 = load float, ptr %4230, align 4, !tbaa !44
  %4232 = call float @llvm.fmuladd.f32(float %4170, float %4231, float %4229)
  %4233 = fcmp olt float %4232, 0.000000e+00
  %4234 = fneg float %4232
  %4235 = select i1 %4233, float %4234, float %4232
  %4236 = fcmp ogt float %4235, 0x3FECCCCCC0000000
  br i1 %4236, label %4237, label %4240

4237:                                             ; preds = %4223
  %4238 = fadd float %4217, %4235
  %4239 = add nsw i32 %4219, 1
  br label %4240

4240:                                             ; preds = %4237, %4223, %4157, %4148
  %4241 = phi float [ %4238, %4237 ], [ %4217, %4223 ], [ %4217, %4157 ], [ %4151, %4148 ]
  %4242 = phi i32 [ %4239, %4237 ], [ %4219, %4223 ], [ %4219, %4157 ], [ %4150, %4148 ]
  %4243 = add nuw nsw i32 %4149, 1
  %4244 = load i32, ptr %4145, align 4, !tbaa !293
  %4245 = icmp slt i32 %4243, %4244
  br i1 %4245, label %4148, label %4246, !llvm.loop !655

4246:                                             ; preds = %4240, %4144
  %4247 = phi float [ 0.000000e+00, %4144 ], [ %4241, %4240 ]
  %4248 = phi i32 [ 0, %4144 ], [ %4242, %4240 ]
  %4249 = icmp eq i32 %4248, 0
  br i1 %4249, label %4264, label %4250

4250:                                             ; preds = %4246
  %4251 = sitofp i32 %4248 to float
  %4252 = fdiv float %4247, %4251
  %4253 = fcmp ugt float %4252, -1.000000e+00
  br i1 %4253, label %4254, label %4258

4254:                                             ; preds = %4250
  %4255 = fcmp ult float %4252, 1.000000e+00
  br i1 %4255, label %4256, label %4258

4256:                                             ; preds = %4254
  %4257 = call float @acosf(float noundef %4252) #16
  br label %4258

4258:                                             ; preds = %4256, %4254, %4250
  %4259 = phi float [ %4257, %4256 ], [ 0x400921FB60000000, %4250 ], [ 0.000000e+00, %4254 ]
  %4260 = fsub float 0x3FF921FB60000000, %4259
  %4261 = call float @cosf(float noundef %4260) #16
  %4262 = load ptr, ptr %53, align 8, !tbaa !184
  %4263 = getelementptr inbounds %struct.Object, ptr %4262, i64 0, i32 116
  store float %4261, ptr %4263, align 4, !tbaa !654
  br label %4264

4264:                                             ; preds = %4258, %4246, %4138
  %4265 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 4
  %4266 = load i16, ptr %4265, align 8, !tbaa !267
  %4267 = and i16 %4266, 64
  %4268 = icmp eq i16 %4267, 0
  br i1 %4268, label %4275, label %4269

4269:                                             ; preds = %4264
  %4270 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 45, i32 77
  %4271 = load i16, ptr %4270, align 2, !tbaa !656
  %4272 = icmp eq i16 %4271, 0
  br i1 %4272, label %4275, label %4273

4273:                                             ; preds = %4269
  %4274 = sext i16 %4271 to i32
  call fastcc void @split_quads(ptr noundef %1, i32 noundef %4274)
  br label %4538

4275:                                             ; preds = %4269, %4264
  %4276 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 44
  %4277 = load ptr, ptr %4276, align 8, !tbaa !64
  %4278 = call zeroext i8 @BKE_object_is_animated(ptr noundef %4277, ptr noundef %4099) #16
  %4279 = icmp eq i8 %4278, 0
  br i1 %4279, label %4281, label %4280

4280:                                             ; preds = %4275
  call fastcc void @split_quads(ptr noundef %1, i32 noundef 1)
  br label %4538

4281:                                             ; preds = %4275
  %4282 = load i32, ptr %4140, align 8, !tbaa !90
  %4283 = and i32 %4282, 16777216
  %4284 = icmp eq i32 %4283, 0
  br i1 %4284, label %4290, label %4285

4285:                                             ; preds = %4281
  %4286 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 45, i32 95
  %4287 = load i32, ptr %4286, align 8, !tbaa !657
  %4288 = and i32 %4287, 1
  %4289 = icmp eq i32 %4288, 0
  br i1 %4289, label %4290, label %4538

4290:                                             ; preds = %4285, %4281
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %4) #16
  %4291 = getelementptr inbounds %struct.ObjectRen, ptr %1, i64 0, i32 11
  %4292 = load i32, ptr %4291, align 4, !tbaa !293
  %4293 = icmp sgt i32 %4292, 0
  br i1 %4293, label %4294, label %4537

4294:                                             ; preds = %4290
  %4295 = getelementptr inbounds float, ptr %4, i64 1
  %4296 = getelementptr inbounds float, ptr %4, i64 2
  br label %4297

4297:                                             ; preds = %4294, %4535
  %4298 = phi i32 [ %4292, %4294 ], [ %4299, %4535 ]
  %4299 = add nsw i32 %4298, -1
  %4300 = call ptr @RE_findOrAddVlak(ptr noundef %1, i32 noundef %4299) #16
  %4301 = getelementptr inbounds %struct.VlakRen, ptr %4300, i64 0, i32 3
  %4302 = load ptr, ptr %4301, align 8, !tbaa !557
  %4303 = icmp eq ptr %4302, null
  br i1 %4303, label %4535, label %4304

4304:                                             ; preds = %4297
  %4305 = getelementptr inbounds %struct.VlakRen, ptr %4300, i64 0, i32 7
  %4306 = load i8, ptr %4305, align 1, !tbaa !559
  %4307 = and i8 %4306, 4
  %4308 = icmp eq i8 %4307, 0
  br i1 %4308, label %4309, label %4535

4309:                                             ; preds = %4304
  %4310 = getelementptr inbounds %struct.VlakRen, ptr %4300, i64 0, i32 5
  %4311 = load ptr, ptr %4310, align 8, !tbaa !558
  %4312 = getelementptr inbounds %struct.Material, ptr %4311, i64 0, i32 2
  %4313 = load i16, ptr %4312, align 8, !tbaa !175
  %4314 = icmp eq i16 %4313, 3
  br i1 %4314, label %4535, label %4315

4315:                                             ; preds = %4309
  %4316 = load ptr, ptr %4300, align 8, !tbaa !553
  %4317 = getelementptr inbounds %struct.VlakRen, ptr %4300, i64 0, i32 1
  %4318 = load ptr, ptr %4317, align 8, !tbaa !555
  %4319 = getelementptr inbounds %struct.VlakRen, ptr %4300, i64 0, i32 2
  %4320 = load ptr, ptr %4319, align 8, !tbaa !556
  %4321 = load float, ptr %4316, align 4, !tbaa !44
  %4322 = load float, ptr %4318, align 4, !tbaa !44
  %4323 = fsub float %4321, %4322
  store float %4323, ptr %4, align 4, !tbaa !44
  %4324 = getelementptr inbounds float, ptr %4316, i64 1
  %4325 = load float, ptr %4324, align 4, !tbaa !44
  %4326 = getelementptr inbounds float, ptr %4318, i64 1
  %4327 = load float, ptr %4326, align 4, !tbaa !44
  %4328 = fsub float %4325, %4327
  store float %4328, ptr %4295, align 4, !tbaa !44
  %4329 = getelementptr inbounds float, ptr %4316, i64 2
  %4330 = load float, ptr %4329, align 4, !tbaa !44
  %4331 = getelementptr inbounds float, ptr %4318, i64 2
  %4332 = load float, ptr %4331, align 4, !tbaa !44
  %4333 = fsub float %4330, %4332
  store float %4333, ptr %4296, align 4, !tbaa !44
  %4334 = fcmp olt float %4323, 0.000000e+00
  %4335 = fneg float %4323
  %4336 = select i1 %4334, float %4335, float %4323
  %4337 = fcmp olt float %4336, 0x3EB4000000000000
  br i1 %4337, label %4338, label %4349

4338:                                             ; preds = %4315
  %4339 = fcmp olt float %4328, 0.000000e+00
  %4340 = fneg float %4328
  %4341 = select i1 %4339, float %4340, float %4328
  %4342 = fcmp olt float %4341, 0x3EB4000000000000
  br i1 %4342, label %4343, label %4349

4343:                                             ; preds = %4338
  %4344 = fcmp olt float %4333, 0.000000e+00
  %4345 = fneg float %4333
  %4346 = select i1 %4344, float %4345, float %4333
  %4347 = fcmp olt float %4346, 0x3EB4000000000000
  br i1 %4347, label %4348, label %4349

4348:                                             ; preds = %4343
  store ptr %4318, ptr %4300, align 8, !tbaa !553
  br label %4425

4349:                                             ; preds = %4343, %4338, %4315
  %4350 = load float, ptr %4318, align 4, !tbaa !44
  %4351 = load float, ptr %4320, align 4, !tbaa !44
  %4352 = fsub float %4350, %4351
  store float %4352, ptr %4, align 4, !tbaa !44
  %4353 = load float, ptr %4326, align 4, !tbaa !44
  %4354 = getelementptr inbounds float, ptr %4320, i64 1
  %4355 = load float, ptr %4354, align 4, !tbaa !44
  %4356 = fsub float %4353, %4355
  store float %4356, ptr %4295, align 4, !tbaa !44
  %4357 = load float, ptr %4331, align 4, !tbaa !44
  %4358 = getelementptr inbounds float, ptr %4320, i64 2
  %4359 = load float, ptr %4358, align 4, !tbaa !44
  %4360 = fsub float %4357, %4359
  store float %4360, ptr %4296, align 4, !tbaa !44
  %4361 = fcmp olt float %4352, 0.000000e+00
  %4362 = fneg float %4352
  %4363 = select i1 %4361, float %4362, float %4352
  %4364 = fcmp olt float %4363, 0x3EB4000000000000
  br i1 %4364, label %4365, label %4375

4365:                                             ; preds = %4349
  %4366 = fcmp olt float %4356, 0.000000e+00
  %4367 = fneg float %4356
  %4368 = select i1 %4366, float %4367, float %4356
  %4369 = fcmp olt float %4368, 0x3EB4000000000000
  br i1 %4369, label %4370, label %4375

4370:                                             ; preds = %4365
  %4371 = fcmp olt float %4360, 0.000000e+00
  %4372 = fneg float %4360
  %4373 = select i1 %4371, float %4372, float %4360
  %4374 = fcmp olt float %4373, 0x3EB4000000000000
  br i1 %4374, label %4425, label %4375

4375:                                             ; preds = %4370, %4365, %4349
  %4376 = load float, ptr %4320, align 4, !tbaa !44
  %4377 = load float, ptr %4302, align 4, !tbaa !44
  %4378 = fsub float %4376, %4377
  store float %4378, ptr %4, align 4, !tbaa !44
  %4379 = load float, ptr %4354, align 4, !tbaa !44
  %4380 = getelementptr inbounds float, ptr %4302, i64 1
  %4381 = load float, ptr %4380, align 4, !tbaa !44
  %4382 = fsub float %4379, %4381
  store float %4382, ptr %4295, align 4, !tbaa !44
  %4383 = load float, ptr %4358, align 4, !tbaa !44
  %4384 = getelementptr inbounds float, ptr %4302, i64 2
  %4385 = load float, ptr %4384, align 4, !tbaa !44
  %4386 = fsub float %4383, %4385
  store float %4386, ptr %4296, align 4, !tbaa !44
  %4387 = fcmp olt float %4378, 0.000000e+00
  %4388 = fneg float %4378
  %4389 = select i1 %4387, float %4388, float %4378
  %4390 = fcmp olt float %4389, 0x3EB4000000000000
  br i1 %4390, label %4391, label %4401

4391:                                             ; preds = %4375
  %4392 = fcmp olt float %4382, 0.000000e+00
  %4393 = fneg float %4382
  %4394 = select i1 %4392, float %4393, float %4382
  %4395 = fcmp olt float %4394, 0x3EB4000000000000
  br i1 %4395, label %4396, label %4401

4396:                                             ; preds = %4391
  %4397 = fcmp olt float %4386, 0.000000e+00
  %4398 = fneg float %4386
  %4399 = select i1 %4397, float %4398, float %4386
  %4400 = fcmp olt float %4399, 0x3EB4000000000000
  br i1 %4400, label %4426, label %4401

4401:                                             ; preds = %4396, %4391, %4375
  %4402 = load float, ptr %4302, align 4, !tbaa !44
  %4403 = load float, ptr %4316, align 4, !tbaa !44
  %4404 = fsub float %4402, %4403
  store float %4404, ptr %4, align 4, !tbaa !44
  %4405 = load float, ptr %4380, align 4, !tbaa !44
  %4406 = load float, ptr %4324, align 4, !tbaa !44
  %4407 = fsub float %4405, %4406
  store float %4407, ptr %4295, align 4, !tbaa !44
  %4408 = load float, ptr %4384, align 4, !tbaa !44
  %4409 = load float, ptr %4329, align 4, !tbaa !44
  %4410 = fsub float %4408, %4409
  store float %4410, ptr %4296, align 4, !tbaa !44
  %4411 = fcmp olt float %4404, 0.000000e+00
  %4412 = fneg float %4404
  %4413 = select i1 %4411, float %4412, float %4404
  %4414 = fcmp olt float %4413, 0x3EB4000000000000
  br i1 %4414, label %4415, label %4427

4415:                                             ; preds = %4401
  %4416 = fcmp olt float %4407, 0.000000e+00
  %4417 = fneg float %4407
  %4418 = select i1 %4416, float %4417, float %4407
  %4419 = fcmp olt float %4418, 0x3EB4000000000000
  br i1 %4419, label %4420, label %4427

4420:                                             ; preds = %4415
  %4421 = fcmp olt float %4410, 0.000000e+00
  %4422 = fneg float %4410
  %4423 = select i1 %4421, float %4422, float %4410
  %4424 = fcmp olt float %4423, 0x3EB4000000000000
  br i1 %4424, label %4426, label %4427

4425:                                             ; preds = %4370, %4348
  store ptr %4320, ptr %4317, align 8, !tbaa !555
  store ptr %4302, ptr %4319, align 8, !tbaa !556
  br label %4426

4426:                                             ; preds = %4425, %4420, %4396
  store ptr null, ptr %4301, align 8, !tbaa !557
  br label %4427

4427:                                             ; preds = %4426, %4420, %4415, %4401
  %4428 = load ptr, ptr %4301, align 8, !tbaa !557
  %4429 = icmp eq ptr %4428, null
  br i1 %4429, label %4535, label %4430

4430:                                             ; preds = %4427
  %4431 = load ptr, ptr %4319, align 8, !tbaa !556
  %4432 = load ptr, ptr %4300, align 8, !tbaa !553
  %4433 = call float @normal_tri_v3(ptr noundef nonnull %4, ptr noundef nonnull %4428, ptr noundef %4431, ptr noundef %4432) #16
  %4434 = fcmp oeq float %4433, 0.000000e+00
  br i1 %4434, label %4435, label %4440

4435:                                             ; preds = %4430
  %4436 = load ptr, ptr %4301, align 8, !tbaa !557
  %4437 = load ptr, ptr %4317, align 8, !tbaa !555
  %4438 = load ptr, ptr %4300, align 8, !tbaa !553
  %4439 = call float @normal_tri_v3(ptr noundef nonnull %4, ptr noundef %4436, ptr noundef %4437, ptr noundef %4438) #16
  br label %4440

4440:                                             ; preds = %4435, %4430
  %4441 = getelementptr inbounds %struct.VlakRen, ptr %4300, i64 0, i32 4
  %4442 = load float, ptr %4, align 4, !tbaa !44
  %4443 = load float, ptr %4441, align 4, !tbaa !44
  %4444 = load float, ptr %4295, align 4, !tbaa !44
  %4445 = getelementptr inbounds %struct.VlakRen, ptr %4300, i64 0, i32 4, i64 1
  %4446 = load float, ptr %4445, align 4, !tbaa !44
  %4447 = fmul float %4444, %4446
  %4448 = call float @llvm.fmuladd.f32(float %4442, float %4443, float %4447)
  %4449 = load float, ptr %4296, align 4, !tbaa !44
  %4450 = getelementptr inbounds %struct.VlakRen, ptr %4300, i64 0, i32 4, i64 2
  %4451 = load float, ptr %4450, align 4, !tbaa !44
  %4452 = call float @llvm.fmuladd.f32(float %4449, float %4451, float %4448)
  %4453 = fcmp olt float %4452, 0.000000e+00
  %4454 = fneg float %4452
  %4455 = select i1 %4453, float %4454, float %4452
  %4456 = fcmp olt float %4455, 0x3FEFFFF580000000
  br i1 %4456, label %4457, label %4532

4457:                                             ; preds = %4440
  %4458 = call ptr @RE_vlakren_copy(ptr noundef %1, ptr noundef nonnull %4300) #16
  %4459 = getelementptr inbounds %struct.VlakRen, ptr %4458, i64 0, i32 7
  %4460 = load i8, ptr %4459, align 1, !tbaa !559
  %4461 = or i8 %4460, 16
  store i8 %4461, ptr %4459, align 1, !tbaa !559
  %4462 = load ptr, ptr %4300, align 8, !tbaa !553
  %4463 = load ptr, ptr %4317, align 8, !tbaa !555
  %4464 = load ptr, ptr %4319, align 8, !tbaa !556
  %4465 = call float @normal_tri_v3(ptr noundef nonnull %4, ptr noundef %4462, ptr noundef %4463, ptr noundef %4464) #16
  %4466 = load ptr, ptr %4300, align 8, !tbaa !553
  %4467 = getelementptr inbounds %struct.VertRen, ptr %4466, i64 0, i32 1
  %4468 = load float, ptr %4, align 4, !tbaa !44
  %4469 = load float, ptr %4467, align 4, !tbaa !44
  %4470 = load float, ptr %4295, align 4, !tbaa !44
  %4471 = getelementptr inbounds %struct.VertRen, ptr %4466, i64 0, i32 1, i64 1
  %4472 = load float, ptr %4471, align 4, !tbaa !44
  %4473 = fmul float %4470, %4472
  %4474 = call float @llvm.fmuladd.f32(float %4468, float %4469, float %4473)
  %4475 = load float, ptr %4296, align 4, !tbaa !44
  %4476 = getelementptr inbounds %struct.VertRen, ptr %4466, i64 0, i32 1, i64 2
  %4477 = load float, ptr %4476, align 4, !tbaa !44
  %4478 = call float @llvm.fmuladd.f32(float %4475, float %4477, float %4474)
  %4479 = load ptr, ptr %4317, align 8, !tbaa !555
  %4480 = load ptr, ptr %4319, align 8, !tbaa !556
  %4481 = load ptr, ptr %4301, align 8, !tbaa !557
  %4482 = call float @normal_tri_v3(ptr noundef nonnull %4, ptr noundef %4479, ptr noundef %4480, ptr noundef %4481) #16
  %4483 = load ptr, ptr %4317, align 8, !tbaa !555
  %4484 = getelementptr inbounds %struct.VertRen, ptr %4483, i64 0, i32 1
  %4485 = load float, ptr %4, align 4, !tbaa !44
  %4486 = load float, ptr %4484, align 4, !tbaa !44
  %4487 = load float, ptr %4295, align 4, !tbaa !44
  %4488 = getelementptr inbounds %struct.VertRen, ptr %4483, i64 0, i32 1, i64 1
  %4489 = load float, ptr %4488, align 4, !tbaa !44
  %4490 = fmul float %4487, %4489
  %4491 = call float @llvm.fmuladd.f32(float %4485, float %4486, float %4490)
  %4492 = load float, ptr %4296, align 4, !tbaa !44
  %4493 = getelementptr inbounds %struct.VertRen, ptr %4483, i64 0, i32 1, i64 2
  %4494 = load float, ptr %4493, align 4, !tbaa !44
  %4495 = call float @llvm.fmuladd.f32(float %4492, float %4494, float %4491)
  %4496 = call float @llvm.fabs.f32(float %4478)
  %4497 = call float @llvm.fabs.f32(float %4495)
  %4498 = fcmp uge float %4496, %4497
  %4499 = load i8, ptr %4305, align 1, !tbaa !559
  %4500 = and i8 %4499, -33
  %4501 = select i1 %4498, i8 0, i8 32
  %4502 = or disjoint i8 %4500, %4501
  store i8 %4502, ptr %4305, align 1, !tbaa !559
  br i1 %4498, label %4510, label %4503

4503:                                             ; preds = %4457
  store ptr %4483, ptr %4458, align 8, !tbaa !553
  %4504 = load ptr, ptr %4319, align 8, !tbaa !556
  %4505 = getelementptr inbounds %struct.VlakRen, ptr %4458, i64 0, i32 1
  store ptr %4504, ptr %4505, align 8, !tbaa !555
  %4506 = load ptr, ptr %4301, align 8, !tbaa !557
  %4507 = getelementptr inbounds %struct.VlakRen, ptr %4458, i64 0, i32 2
  store ptr %4506, ptr %4507, align 8, !tbaa !556
  store ptr %4506, ptr %4319, align 8, !tbaa !556
  %4508 = load i8, ptr %4459, align 1, !tbaa !559
  %4509 = or i8 %4508, 32
  br label %4518

4510:                                             ; preds = %4457
  %4511 = load ptr, ptr %4300, align 8, !tbaa !553
  store ptr %4511, ptr %4458, align 8, !tbaa !553
  %4512 = load ptr, ptr %4319, align 8, !tbaa !556
  %4513 = getelementptr inbounds %struct.VlakRen, ptr %4458, i64 0, i32 1
  store ptr %4512, ptr %4513, align 8, !tbaa !555
  %4514 = load ptr, ptr %4301, align 8, !tbaa !557
  %4515 = getelementptr inbounds %struct.VlakRen, ptr %4458, i64 0, i32 2
  store ptr %4514, ptr %4515, align 8, !tbaa !556
  %4516 = load i8, ptr %4459, align 1, !tbaa !559
  %4517 = and i8 %4516, -33
  br label %4518

4518:                                             ; preds = %4510, %4503
  %4519 = phi i8 [ %4517, %4510 ], [ %4509, %4503 ]
  store i8 %4519, ptr %4459, align 1, !tbaa !559
  %4520 = getelementptr inbounds %struct.VlakRen, ptr %4458, i64 0, i32 3
  store ptr null, ptr %4520, align 8, !tbaa !557
  store ptr null, ptr %4301, align 8, !tbaa !557
  %4521 = load ptr, ptr %4319, align 8, !tbaa !556
  %4522 = load ptr, ptr %4317, align 8, !tbaa !555
  %4523 = load ptr, ptr %4300, align 8, !tbaa !553
  %4524 = call float @normal_tri_v3(ptr noundef nonnull %4441, ptr noundef %4521, ptr noundef %4522, ptr noundef %4523) #16
  %4525 = getelementptr inbounds %struct.VlakRen, ptr %4458, i64 0, i32 4
  %4526 = getelementptr inbounds %struct.VlakRen, ptr %4458, i64 0, i32 2
  %4527 = load ptr, ptr %4526, align 8, !tbaa !556
  %4528 = getelementptr inbounds %struct.VlakRen, ptr %4458, i64 0, i32 1
  %4529 = load ptr, ptr %4528, align 8, !tbaa !555
  %4530 = load ptr, ptr %4458, align 8, !tbaa !553
  %4531 = call float @normal_tri_v3(ptr noundef nonnull %4525, ptr noundef %4527, ptr noundef %4529, ptr noundef %4530) #16
  br label %4535

4532:                                             ; preds = %4440
  %4533 = load i8, ptr %4305, align 1, !tbaa !559
  %4534 = and i8 %4533, -33
  store i8 %4534, ptr %4305, align 1, !tbaa !559
  br label %4535

4535:                                             ; preds = %4532, %4518, %4427, %4309, %4304, %4297
  %4536 = icmp sgt i32 %4298, 1
  br i1 %4536, label %4297, label %4537, !llvm.loop !658

4537:                                             ; preds = %4535, %4290
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %4) #16
  br label %4538

4538:                                             ; preds = %4537, %4285, %4280, %4273
  %4539 = getelementptr inbounds %struct.ObjectRen, ptr %1, i64 0, i32 11
  %4540 = load i32, ptr %4539, align 4, !tbaa !293
  %4541 = icmp sgt i32 %4540, 0
  br i1 %4541, label %4542, label %4596

4542:                                             ; preds = %4538
  %4543 = load i32, ptr %4140, align 8, !tbaa !90
  %4544 = and i32 %4543, 65536
  %4545 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 5
  %4546 = load i16, ptr %4545, align 2, !tbaa !87
  %4547 = icmp eq i32 %4544, 0
  %4548 = icmp eq i16 %4546, 0
  br label %4549

4549:                                             ; preds = %4542, %4594
  %4550 = phi i32 [ %4540, %4542 ], [ %4551, %4594 ]
  %4551 = add nsw i32 %4550, -1
  %4552 = call ptr @RE_findOrAddVlak(ptr noundef %1, i32 noundef %4551) #16
  %4553 = getelementptr inbounds %struct.VlakRen, ptr %4552, i64 0, i32 5
  %4554 = load ptr, ptr %4553, align 8, !tbaa !558
  %4555 = getelementptr inbounds %struct.Material, ptr %4554, i64 0, i32 51
  %4556 = load i32, ptr %4555, align 4, !tbaa !135
  %4557 = and i32 %4556, 1
  %4558 = icmp eq i32 %4557, 0
  %4559 = select i1 %4547, i1 true, i1 %4558
  br i1 %4559, label %4564, label %4560

4560:                                             ; preds = %4549
  %4561 = getelementptr inbounds %struct.VlakRen, ptr %4552, i64 0, i32 7
  %4562 = load i8, ptr %4561, align 1, !tbaa !559
  %4563 = or i8 %4562, -128
  store i8 %4563, ptr %4561, align 1, !tbaa !559
  br label %4564

4564:                                             ; preds = %4560, %4549
  br i1 %4548, label %4594, label %4565

4565:                                             ; preds = %4564
  %4566 = and i32 %4556, 8388608
  %4567 = icmp eq i32 %4566, 0
  br i1 %4567, label %4568, label %4590

4568:                                             ; preds = %4565
  %4569 = and i32 %4556, 4
  %4570 = icmp ne i32 %4569, 0
  %4571 = select i1 %4547, i1 true, i1 %4570
  br i1 %4571, label %4594, label %4572

4572:                                             ; preds = %4568
  %4573 = getelementptr inbounds %struct.Material, ptr %4554, i64 0, i32 2
  %4574 = load i16, ptr %4573, align 8, !tbaa !175
  %4575 = icmp eq i16 %4574, 2
  br i1 %4575, label %4594, label %4576

4576:                                             ; preds = %4572
  %4577 = and i32 %4556, 262144
  %4578 = icmp ne i32 %4577, 0
  %4579 = and i32 %4556, 196608
  %4580 = icmp eq i32 %4579, 196608
  %4581 = or i1 %4578, %4580
  br i1 %4581, label %4582, label %4594

4582:                                             ; preds = %4576
  %4583 = getelementptr inbounds %struct.Material, ptr %4554, i64 0, i32 41
  %4584 = load float, ptr %4583, align 4, !tbaa !659
  %4585 = fcmp oeq float %4584, 1.000000e+00
  br i1 %4585, label %4586, label %4594

4586:                                             ; preds = %4582
  %4587 = getelementptr inbounds %struct.Material, ptr %4554, i64 0, i32 42
  %4588 = load float, ptr %4587, align 8, !tbaa !660
  %4589 = fcmp oeq float %4588, 1.000000e+00
  br i1 %4589, label %4590, label %4594

4590:                                             ; preds = %4586, %4565
  %4591 = getelementptr inbounds %struct.VlakRen, ptr %4552, i64 0, i32 7
  %4592 = load i8, ptr %4591, align 1, !tbaa !559
  %4593 = or i8 %4592, 8
  store i8 %4593, ptr %4591, align 1, !tbaa !559
  br label %4594

4594:                                             ; preds = %4590, %4586, %4582, %4576, %4572, %4568, %4564
  %4595 = icmp sgt i32 %4550, 1
  br i1 %4595, label %4549, label %4596, !llvm.loop !661

4596:                                             ; preds = %4594, %4538
  %4597 = getelementptr inbounds [3 x float], ptr %5, i64 0, i64 2
  store float 0x46293E5940000000, ptr %4597, align 4, !tbaa !44
  %4598 = getelementptr inbounds [3 x float], ptr %5, i64 0, i64 1
  store float 0x46293E5940000000, ptr %4598, align 4, !tbaa !44
  store float 0x46293E5940000000, ptr %5, align 4, !tbaa !44
  %4599 = getelementptr inbounds [3 x float], ptr %6, i64 0, i64 2
  store float 0xC6293E5940000000, ptr %4599, align 4, !tbaa !44
  %4600 = getelementptr inbounds [3 x float], ptr %6, i64 0, i64 1
  store float 0xC6293E5940000000, ptr %4600, align 4, !tbaa !44
  store float 0xC6293E5940000000, ptr %6, align 4, !tbaa !44
  %4601 = load i32, ptr %4100, align 8, !tbaa !211
  %4602 = icmp sgt i32 %4601, 0
  br i1 %4602, label %4603, label %4623

4603:                                             ; preds = %4596
  %4604 = getelementptr inbounds %struct.ObjectRen, ptr %1, i64 0, i32 18
  br label %4605

4605:                                             ; preds = %4603, %4618
  %4606 = phi ptr [ null, %4603 ], [ %4619, %4618 ]
  %4607 = phi i32 [ 0, %4603 ], [ %4620, %4618 ]
  %4608 = and i32 %4607, 255
  %4609 = icmp eq i32 %4608, 0
  br i1 %4609, label %4610, label %4616

4610:                                             ; preds = %4605
  %4611 = load ptr, ptr %4604, align 8, !tbaa !231
  %4612 = lshr exact i32 %4607, 8
  %4613 = zext nneg i32 %4612 to i64
  %4614 = getelementptr inbounds %struct.VertTableNode, ptr %4611, i64 %4613
  %4615 = load ptr, ptr %4614, align 8, !tbaa !232
  br label %4618

4616:                                             ; preds = %4605
  %4617 = getelementptr inbounds %struct.VertRen, ptr %4606, i64 1
  br label %4618

4618:                                             ; preds = %4616, %4610
  %4619 = phi ptr [ %4615, %4610 ], [ %4617, %4616 ]
  call void @minmax_v3v3_v3(ptr noundef nonnull %5, ptr noundef nonnull %6, ptr noundef %4619) #16
  %4620 = add nuw nsw i32 %4607, 1
  %4621 = load i32, ptr %4100, align 8, !tbaa !211
  %4622 = icmp slt i32 %4620, %4621
  br i1 %4622, label %4605, label %4623, !llvm.loop !662

4623:                                             ; preds = %4618, %4596
  %4624 = getelementptr inbounds %struct.ObjectRen, ptr %1, i64 0, i32 22
  %4625 = load ptr, ptr %4624, align 8, !tbaa !238
  %4626 = icmp eq ptr %4625, null
  br i1 %4626, label %4687, label %4627

4627:                                             ; preds = %4623
  %4628 = getelementptr inbounds %struct.StrandBuffer, ptr %4625, i64 0, i32 11
  %4629 = load i32, ptr %4628, align 8, !tbaa !477
  %4630 = and i32 %4629, 2
  %4631 = icmp eq i32 %4630, 0
  br i1 %4631, label %4641, label %4632

4632:                                             ; preds = %4627
  %4633 = getelementptr inbounds %struct.StrandBuffer, ptr %4625, i64 0, i32 7
  %4634 = load ptr, ptr %4633, align 8, !tbaa !465
  %4635 = getelementptr inbounds %struct.Material, ptr %4634, i64 0, i32 63
  %4636 = load float, ptr %4635, align 4, !tbaa !663
  %4637 = getelementptr inbounds %struct.Material, ptr %4634, i64 0, i32 64
  %4638 = load float, ptr %4637, align 8, !tbaa !664
  %4639 = fcmp ogt float %4636, %4638
  %4640 = select i1 %4639, float %4636, float %4638
  br label %4641

4641:                                             ; preds = %4627, %4632
  %4642 = phi float [ %4640, %4632 ], [ 0.000000e+00, %4627 ]
  %4643 = getelementptr inbounds %struct.StrandBuffer, ptr %4625, i64 0, i32 16
  store float %4642, ptr %4643, align 4, !tbaa !665
  %4644 = load ptr, ptr %4624, align 8, !tbaa !238
  %4645 = getelementptr inbounds %struct.StrandBuffer, ptr %4644, i64 0, i32 5
  %4646 = load i32, ptr %4645, align 4, !tbaa !483
  %4647 = icmp sgt i32 %4646, 0
  br i1 %4647, label %4648, label %4687

4648:                                             ; preds = %4641
  %4649 = getelementptr inbounds %struct.StrandBuffer, ptr %4625, i64 0, i32 3
  %4650 = load ptr, ptr %4649, align 8, !tbaa !485
  %4651 = getelementptr inbounds [3 x float], ptr %7, i64 0, i64 2
  %4652 = getelementptr inbounds [3 x float], ptr %7, i64 0, i64 1
  %4653 = getelementptr inbounds [3 x float], ptr %8, i64 0, i64 2
  %4654 = getelementptr inbounds [3 x float], ptr %8, i64 0, i64 1
  br label %4655

4655:                                             ; preds = %4648, %4668
  %4656 = phi i32 [ 0, %4648 ], [ %4681, %4668 ]
  %4657 = phi ptr [ %4650, %4648 ], [ %4682, %4668 ]
  store float 0x46293E5940000000, ptr %4651, align 4, !tbaa !44
  store float 0x46293E5940000000, ptr %4652, align 4, !tbaa !44
  store float 0x46293E5940000000, ptr %7, align 4, !tbaa !44
  store float 0xC6293E5940000000, ptr %4653, align 4, !tbaa !44
  store float 0xC6293E5940000000, ptr %4654, align 4, !tbaa !44
  store float 0xC6293E5940000000, ptr %8, align 4, !tbaa !44
  %4658 = load i32, ptr %4657, align 4, !tbaa !488
  %4659 = getelementptr inbounds %struct.StrandBound, ptr %4657, i64 0, i32 1
  %4660 = load i32, ptr %4659, align 4, !tbaa !486
  %4661 = icmp slt i32 %4658, %4660
  br i1 %4661, label %4662, label %4668

4662:                                             ; preds = %4655, %4662
  %4663 = phi i32 [ %4665, %4662 ], [ %4658, %4655 ]
  %4664 = call ptr @RE_findOrAddStrand(ptr noundef %1, i32 noundef %4663) #16
  call void @strand_minmax(ptr noundef %4664, ptr noundef nonnull %7, ptr noundef nonnull %8, float noundef %4642) #16
  %4665 = add nsw i32 %4663, 1
  %4666 = load i32, ptr %4659, align 4, !tbaa !486
  %4667 = icmp slt i32 %4665, %4666
  br i1 %4667, label %4662, label %4668, !llvm.loop !666

4668:                                             ; preds = %4662, %4655
  %4669 = getelementptr inbounds %struct.StrandBound, ptr %4657, i64 0, i32 2
  %4670 = load float, ptr %7, align 4, !tbaa !44
  store float %4670, ptr %4669, align 4, !tbaa !44
  %4671 = load float, ptr %4652, align 4, !tbaa !44
  %4672 = getelementptr inbounds %struct.StrandBound, ptr %4657, i64 0, i32 2, i64 0, i64 1
  store float %4671, ptr %4672, align 4, !tbaa !44
  %4673 = load float, ptr %4651, align 4, !tbaa !44
  %4674 = getelementptr inbounds %struct.StrandBound, ptr %4657, i64 0, i32 2, i64 0, i64 2
  store float %4673, ptr %4674, align 4, !tbaa !44
  %4675 = getelementptr inbounds %struct.StrandBound, ptr %4657, i64 0, i32 2, i64 1
  %4676 = load float, ptr %8, align 4, !tbaa !44
  store float %4676, ptr %4675, align 4, !tbaa !44
  %4677 = load float, ptr %4654, align 4, !tbaa !44
  %4678 = getelementptr inbounds %struct.StrandBound, ptr %4657, i64 0, i32 2, i64 1, i64 1
  store float %4677, ptr %4678, align 4, !tbaa !44
  %4679 = load float, ptr %4653, align 4, !tbaa !44
  %4680 = getelementptr inbounds %struct.StrandBound, ptr %4657, i64 0, i32 2, i64 1, i64 2
  store float %4679, ptr %4680, align 4, !tbaa !44
  call void @minmax_v3v3_v3(ptr noundef nonnull %5, ptr noundef nonnull %6, ptr noundef nonnull %7) #16
  call void @minmax_v3v3_v3(ptr noundef nonnull %5, ptr noundef nonnull %6, ptr noundef nonnull %8) #16
  %4681 = add nuw nsw i32 %4656, 1
  %4682 = getelementptr inbounds %struct.StrandBound, ptr %4657, i64 1
  %4683 = load ptr, ptr %4624, align 8, !tbaa !238
  %4684 = getelementptr inbounds %struct.StrandBuffer, ptr %4683, i64 0, i32 5
  %4685 = load i32, ptr %4684, align 4, !tbaa !483
  %4686 = icmp slt i32 %4681, %4685
  br i1 %4686, label %4655, label %4687, !llvm.loop !667

4687:                                             ; preds = %4668, %4641, %4623
  %4688 = getelementptr inbounds %struct.ObjectRen, ptr %1, i64 0, i32 9
  %4689 = load float, ptr %5, align 4, !tbaa !44
  store float %4689, ptr %4688, align 4, !tbaa !44
  %4690 = load float, ptr %4598, align 4, !tbaa !44
  %4691 = getelementptr inbounds %struct.ObjectRen, ptr %1, i64 0, i32 9, i64 0, i64 1
  store float %4690, ptr %4691, align 4, !tbaa !44
  %4692 = load float, ptr %4597, align 4, !tbaa !44
  %4693 = getelementptr inbounds %struct.ObjectRen, ptr %1, i64 0, i32 9, i64 0, i64 2
  store float %4692, ptr %4693, align 4, !tbaa !44
  %4694 = getelementptr inbounds %struct.ObjectRen, ptr %1, i64 0, i32 9, i64 1
  %4695 = load float, ptr %6, align 4, !tbaa !44
  store float %4695, ptr %4694, align 4, !tbaa !44
  %4696 = load float, ptr %4600, align 4, !tbaa !44
  %4697 = getelementptr inbounds %struct.ObjectRen, ptr %1, i64 0, i32 9, i64 1, i64 1
  store float %4696, ptr %4697, align 4, !tbaa !44
  %4698 = load float, ptr %4599, align 4, !tbaa !44
  %4699 = getelementptr inbounds %struct.ObjectRen, ptr %1, i64 0, i32 9, i64 1, i64 2
  store float %4698, ptr %4699, align 4, !tbaa !44
  br label %4700

4700:                                             ; preds = %4111, %4136, %4687
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %8) #16
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %7) #16
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %6) #16
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %5) #16
  %4701 = load i32, ptr %4100, align 8, !tbaa !211
  %4702 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 61
  %4703 = load i32, ptr %4702, align 4, !tbaa !142
  %4704 = add nsw i32 %4703, %4701
  store i32 %4704, ptr %4702, align 4, !tbaa !142
  %4705 = getelementptr inbounds %struct.ObjectRen, ptr %1, i64 0, i32 11
  %4706 = load i32, ptr %4705, align 4, !tbaa !293
  %4707 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 60
  %4708 = load i32, ptr %4707, align 8, !tbaa !144
  %4709 = add nsw i32 %4708, %4706
  store i32 %4709, ptr %4707, align 8, !tbaa !144
  %4710 = getelementptr inbounds %struct.ObjectRen, ptr %1, i64 0, i32 13
  %4711 = load i32, ptr %4710, align 4, !tbaa !195
  %4712 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 62
  %4713 = load i32, ptr %4712, align 8, !tbaa !148
  %4714 = add nsw i32 %4713, %4711
  store i32 %4714, ptr %4712, align 8, !tbaa !148
  %4715 = getelementptr inbounds %struct.ObjectRen, ptr %1, i64 0, i32 12
  %4716 = load i32, ptr %4715, align 8, !tbaa !247
  %4717 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 63
  %4718 = load i32, ptr %4717, align 4, !tbaa !146
  %4719 = add nsw i32 %4718, %4716
  store i32 %4719, ptr %4717, align 4, !tbaa !146
  ret void
}

; Function Attrs: nounwind uwtable
define internal fastcc nonnull ptr @give_render_material(ptr nocapture noundef %0, ptr noundef %1, i16 noundef signext %2) unnamed_addr #4 {
  %4 = tail call ptr @give_current_material(ptr noundef %1, i16 noundef signext %2) #16
  %5 = icmp eq ptr %4, null
  %6 = select i1 %5, ptr @defmaterial, ptr %4
  %7 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 45, i32 47
  %8 = load i32, ptr %7, align 8, !tbaa !90
  %9 = and i32 %8, 1048576
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %15, label %11

11:                                               ; preds = %3
  %12 = getelementptr inbounds %struct.Material, ptr %6, i64 0, i32 90
  %13 = load i16, ptr %12, align 4, !tbaa !270
  %14 = or i16 %13, 2048
  store i16 %14, ptr %12, align 4, !tbaa !270
  br label %15

15:                                               ; preds = %11, %3
  %16 = getelementptr inbounds %struct.Material, ptr %6, i64 0, i32 2
  %17 = load i16, ptr %16, align 8, !tbaa !175
  %18 = icmp eq i16 %17, 2
  br i1 %18, label %19, label %24

19:                                               ; preds = %15
  %20 = getelementptr inbounds %struct.Material, ptr %6, i64 0, i32 51
  %21 = load i32, ptr %20, align 4, !tbaa !135
  %22 = and i32 %21, -33619969
  %23 = or disjoint i32 %22, 65536
  store i32 %23, ptr %20, align 4, !tbaa !135
  br label %24

24:                                               ; preds = %19, %15
  %25 = getelementptr inbounds %struct.Material, ptr %6, i64 0, i32 51
  %26 = load i32, ptr %25, align 4, !tbaa !135
  %27 = and i32 %26, 65600
  %28 = icmp eq i32 %27, 65600
  br i1 %28, label %29, label %33

29:                                               ; preds = %24
  %30 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 4
  %31 = load i16, ptr %30, align 8, !tbaa !267
  %32 = or i16 %31, 1
  store i16 %32, ptr %30, align 8, !tbaa !267
  br label %33

33:                                               ; preds = %29, %24
  %34 = getelementptr inbounds %struct.Material, ptr %6, i64 0, i32 3
  %35 = load i16, ptr %34, align 2, !tbaa !668
  %36 = or i16 %35, 1
  store i16 %36, ptr %34, align 2, !tbaa !668
  %37 = getelementptr inbounds %struct.Material, ptr %6, i64 0, i32 103
  %38 = load ptr, ptr %37, align 8, !tbaa !669
  %39 = icmp eq ptr %38, null
  br i1 %39, label %45, label %40

40:                                               ; preds = %33
  %41 = getelementptr inbounds %struct.Material, ptr %6, i64 0, i32 77
  %42 = load i8, ptr %41, align 1, !tbaa !670
  %43 = icmp eq i8 %42, 0
  br i1 %43, label %45, label %44

44:                                               ; preds = %40
  tail call fastcc void @flag_render_node_material(ptr noundef %0, ptr noundef nonnull %38)
  br label %45

45:                                               ; preds = %44, %40, %33
  %46 = getelementptr inbounds %struct.Material, ptr %6, i64 0, i32 125
  store i32 0, ptr %46, align 8, !tbaa !671
  br label %47

47:                                               ; preds = %45, %100
  %48 = phi i64 [ 0, %45 ], [ %101, %100 ]
  %49 = getelementptr inbounds %struct.Material, ptr %6, i64 0, i32 102, i64 %48
  %50 = load ptr, ptr %49, align 8, !tbaa !77
  %51 = icmp eq ptr %50, null
  br i1 %51, label %100, label %52

52:                                               ; preds = %47
  %53 = getelementptr inbounds %struct.MTex, ptr %50, i64 0, i32 5
  %54 = load ptr, ptr %53, align 8, !tbaa !81
  %55 = icmp eq ptr %54, null
  br i1 %55, label %100, label %56

56:                                               ; preds = %52
  %57 = getelementptr inbounds %struct.MTex, ptr %50, i64 0, i32 1
  %58 = load i16, ptr %57, align 2, !tbaa !394
  %59 = and i16 %58, 128
  %60 = icmp eq i16 %59, 0
  br i1 %60, label %64, label %61

61:                                               ; preds = %56
  %62 = load i32, ptr %46, align 8, !tbaa !671
  %63 = or i32 %62, 128
  store i32 %63, ptr %46, align 8, !tbaa !671
  br label %64

64:                                               ; preds = %61, %56
  %65 = and i16 %58, 64
  %66 = icmp eq i16 %65, 0
  br i1 %66, label %70, label %67

67:                                               ; preds = %64
  %68 = load i32, ptr %46, align 8, !tbaa !671
  %69 = or i32 %68, 64
  store i32 %69, ptr %46, align 8, !tbaa !671
  br label %70

70:                                               ; preds = %67, %64
  %71 = and i16 %58, 1
  %72 = icmp eq i16 %71, 0
  br i1 %72, label %76, label %73

73:                                               ; preds = %70
  %74 = load i32, ptr %46, align 8, !tbaa !671
  %75 = or i32 %74, 1
  store i32 %75, ptr %46, align 8, !tbaa !671
  br label %76

76:                                               ; preds = %73, %70
  %77 = and i16 %58, 16
  %78 = icmp eq i16 %77, 0
  br i1 %78, label %82, label %79

79:                                               ; preds = %76
  %80 = load i32, ptr %46, align 8, !tbaa !671
  %81 = or i32 %80, 16
  store i32 %81, ptr %46, align 8, !tbaa !671
  br label %82

82:                                               ; preds = %79, %76
  %83 = and i16 %58, 8
  %84 = icmp eq i16 %83, 0
  br i1 %84, label %88, label %85

85:                                               ; preds = %82
  %86 = load i32, ptr %46, align 8, !tbaa !671
  %87 = or i32 %86, 8
  store i32 %87, ptr %46, align 8, !tbaa !671
  br label %88

88:                                               ; preds = %85, %82
  %89 = and i16 %58, 32
  %90 = icmp eq i16 %89, 0
  br i1 %90, label %94, label %91

91:                                               ; preds = %88
  %92 = load i32, ptr %46, align 8, !tbaa !671
  %93 = or i32 %92, 32
  store i32 %93, ptr %46, align 8, !tbaa !671
  br label %94

94:                                               ; preds = %91, %88
  %95 = and i16 %58, 4
  %96 = icmp eq i16 %95, 0
  br i1 %96, label %100, label %97

97:                                               ; preds = %94
  %98 = load i32, ptr %46, align 8, !tbaa !671
  %99 = or i32 %98, 4
  store i32 %99, ptr %46, align 8, !tbaa !671
  br label %100

100:                                              ; preds = %97, %94, %52, %47
  %101 = add nuw nsw i64 %48, 1
  %102 = icmp eq i64 %101, 18
  br i1 %102, label %103, label %47, !llvm.loop !672

103:                                              ; preds = %100
  ret ptr %6
}

declare i32 @psys_check_enabled(ptr noundef, ptr noundef) local_unnamed_addr #6

declare void @psys_render_restore(ptr noundef, ptr noundef) local_unnamed_addr #6

declare ptr @mesh_create_derived_view(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #6

declare ptr @mesh_create_derived_render(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #6

declare float @BKE_scene_frame_get(ptr noundef) local_unnamed_addr #6

declare ptr @psys_get_modifier(ptr noundef, ptr noundef) local_unnamed_addr #6

declare void @psys_count_keyed_targets(ptr noundef) local_unnamed_addr #6

declare ptr @BLI_rng_new(i32 noundef) local_unnamed_addr #6

declare void @RE_set_customdata_names(ptr noundef, ptr noundef) local_unnamed_addr #6

declare i32 @CustomData_number_of_layers(ptr noundef, i32 noundef) local_unnamed_addr #6

declare i32 @CustomData_get_named_layer_index(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #6

declare i32 @CustomData_get_layer_index(ptr noundef, i32 noundef) local_unnamed_addr #6

declare i32 @CustomData_get_active_layer_index(ptr noundef, i32 noundef) local_unnamed_addr #6

declare void @transpose_m3(ptr noundef) local_unnamed_addr #6

; Function Attrs: mustprogress nofree nounwind willreturn memory(write)
declare double @pow(double noundef, double noundef) local_unnamed_addr #2

declare ptr @RE_addStrandBuffer(ptr noundef, i32 noundef) local_unnamed_addr #6

declare ptr @psys_create_lattice_deform_data(ptr noundef) local_unnamed_addr #6

declare float @BLI_rng_get_float(ptr noundef) local_unnamed_addr #6

declare void @psys_particle_on_emitter(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, float noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #6

; Function Attrs: nounwind uwtable
define internal fastcc void @get_particle_uvco_mcol(i16 noundef signext %0, ptr noundef %1, ptr noundef %2, i32 noundef %3, ptr nocapture noundef readonly %4) unnamed_addr #4 {
  %6 = getelementptr inbounds %struct.ParticleStrandData, ptr %4, i64 0, i32 2
  %7 = load ptr, ptr %6, align 8, !tbaa !443
  %8 = icmp ne ptr %7, null
  %9 = add i16 %0, -1
  %10 = icmp ult i16 %9, 2
  %11 = and i1 %10, %8
  br i1 %11, label %12, label %45

12:                                               ; preds = %5
  %13 = getelementptr inbounds %struct.ParticleStrandData, ptr %4, i64 0, i32 8
  %14 = load i32, ptr %13, align 8, !tbaa !441
  %15 = icmp sgt i32 %14, 0
  br i1 %15, label %16, label %45

16:                                               ; preds = %12
  %17 = icmp eq i32 %3, -1
  %18 = getelementptr inbounds %struct.DerivedMesh, ptr %1, i64 0, i32 48
  %19 = getelementptr inbounds %struct.DerivedMesh, ptr %1, i64 0, i32 2
  %20 = sext i32 %3 to i64
  br label %21

21:                                               ; preds = %16, %40
  %22 = phi i64 [ 0, %16 ], [ %41, %40 ]
  br i1 %17, label %34, label %23

23:                                               ; preds = %21
  %24 = load ptr, ptr %18, align 8, !tbaa !673
  %25 = tail call ptr %24(ptr noundef %1, i32 noundef %3, i32 noundef 4) #16
  %26 = trunc i64 %22 to i32
  %27 = tail call ptr @CustomData_get_layer_n(ptr noundef nonnull %19, i32 noundef 5, i32 noundef %26) #16
  %28 = getelementptr inbounds %struct.MTFace, ptr %27, i64 %20
  %29 = getelementptr inbounds %struct.MFace, ptr %25, i64 0, i32 3
  %30 = load i32, ptr %29, align 4, !tbaa !605
  %31 = load ptr, ptr %6, align 8, !tbaa !443
  %32 = shl nuw nsw i64 %22, 1
  %33 = getelementptr inbounds float, ptr %31, i64 %32
  tail call void @psys_interpolate_uvs(ptr noundef %28, i32 noundef %30, ptr noundef %2, ptr noundef %33) #16
  br label %40

34:                                               ; preds = %21
  %35 = load ptr, ptr %6, align 8, !tbaa !443
  %36 = shl nuw nsw i64 %22, 1
  %37 = getelementptr inbounds float, ptr %35, i64 %36
  store float 0.000000e+00, ptr %37, align 4, !tbaa !44
  %38 = or disjoint i64 %36, 1
  %39 = getelementptr inbounds float, ptr %35, i64 %38
  store float 0.000000e+00, ptr %39, align 4, !tbaa !44
  br label %40

40:                                               ; preds = %23, %34
  %41 = add nuw nsw i64 %22, 1
  %42 = load i32, ptr %13, align 8, !tbaa !441
  %43 = sext i32 %42 to i64
  %44 = icmp slt i64 %41, %43
  br i1 %44, label %21, label %45, !llvm.loop !674

45:                                               ; preds = %40, %12, %5
  %46 = load ptr, ptr %4, align 8, !tbaa !444
  %47 = icmp ne ptr %46, null
  %48 = and i1 %10, %47
  br i1 %48, label %49, label %79

49:                                               ; preds = %45
  %50 = getelementptr inbounds %struct.ParticleStrandData, ptr %4, i64 0, i32 9
  %51 = load i32, ptr %50, align 4, !tbaa !442
  %52 = icmp sgt i32 %51, 0
  br i1 %52, label %53, label %79

53:                                               ; preds = %49
  %54 = icmp eq i32 %3, -1
  %55 = getelementptr inbounds %struct.DerivedMesh, ptr %1, i64 0, i32 48
  %56 = getelementptr inbounds %struct.DerivedMesh, ptr %1, i64 0, i32 2
  %57 = shl nsw i32 %3, 2
  %58 = sext i32 %57 to i64
  br label %59

59:                                               ; preds = %53, %74
  %60 = phi i64 [ 0, %53 ], [ %75, %74 ]
  br i1 %54, label %71, label %61

61:                                               ; preds = %59
  %62 = load ptr, ptr %55, align 8, !tbaa !673
  %63 = tail call ptr %62(ptr noundef %1, i32 noundef %3, i32 noundef 4) #16
  %64 = trunc i64 %60 to i32
  %65 = tail call ptr @CustomData_get_layer_n(ptr noundef nonnull %56, i32 noundef 6, i32 noundef %64) #16
  %66 = getelementptr inbounds %struct.MCol, ptr %65, i64 %58
  %67 = getelementptr inbounds %struct.MFace, ptr %63, i64 0, i32 3
  %68 = load i32, ptr %67, align 4, !tbaa !605
  %69 = load ptr, ptr %4, align 8, !tbaa !444
  %70 = getelementptr inbounds %struct.MCol, ptr %69, i64 %60
  tail call void @psys_interpolate_mcol(ptr noundef %66, i32 noundef %68, ptr noundef %2, ptr noundef %70) #16
  br label %74

71:                                               ; preds = %59
  %72 = load ptr, ptr %4, align 8, !tbaa !444
  %73 = getelementptr inbounds %struct.MCol, ptr %72, i64 %60
  store i32 0, ptr %73, align 1
  br label %74

74:                                               ; preds = %61, %71
  %75 = add nuw nsw i64 %60, 1
  %76 = load i32, ptr %50, align 4, !tbaa !442
  %77 = sext i32 %76 to i64
  %78 = icmp slt i64 %75, %77
  br i1 %78, label %59, label %79, !llvm.loop !675

79:                                               ; preds = %74, %49, %45
  ret void
}

declare float @psys_get_child_time(ptr noundef, ptr noundef, float noundef, ptr noundef, ptr noundef) local_unnamed_addr #6

declare float @psys_get_child_size(ptr noundef, ptr noundef, float noundef, ptr noundef) local_unnamed_addr #6

declare zeroext i8 @psys_render_simplify_params(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #6

declare ptr @RE_findOrAddStrand(ptr noundef, i32 noundef) local_unnamed_addr #6

declare ptr @RE_strandren_get_simplify(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #6

declare ptr @RE_strandren_get_surfnor(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #6

declare ptr @RE_strandren_get_face(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #6

declare ptr @RE_strandren_get_uv(ptr noundef, ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #6

declare ptr @RE_strandren_get_mcol(ptr noundef, ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #6

declare void @mul_m4_v3(ptr noundef, ptr noundef) local_unnamed_addr #6

; Function Attrs: nounwind uwtable
define internal fastcc void @particle_curve(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr nocapture noundef readonly %4, ptr noundef %5, ptr noundef %6, i32 noundef %7, ptr noundef %8) unnamed_addr #4 {
  %10 = alloca [3 x float], align 4
  %11 = alloca [3 x float], align 4
  %12 = getelementptr inbounds %struct.Material, ptr %3, i64 0, i32 2
  %13 = load i16, ptr %12, align 8, !tbaa !175
  switch i16 %13, label %182 [
    i16 3, label %14
    i16 1, label %167
  ]

14:                                               ; preds = %9
  %15 = getelementptr inbounds %struct.ParticleStrandData, ptr %4, i64 0, i32 11
  %16 = load i32, ptr %15, align 4, !tbaa !676
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %92, label %18

18:                                               ; preds = %14
  %19 = getelementptr inbounds %struct.ObjectRen, ptr %1, i64 0, i32 11
  %20 = load i32, ptr %19, align 4, !tbaa !293
  %21 = add nsw i32 %20, 1
  store i32 %21, ptr %19, align 4, !tbaa !293
  %22 = tail call ptr @RE_findOrAddVlak(ptr noundef %1, i32 noundef %20) #16
  %23 = getelementptr inbounds %struct.ObjectRen, ptr %1, i64 0, i32 10
  %24 = load i32, ptr %23, align 8, !tbaa !211
  %25 = add nsw i32 %24, 1
  store i32 %25, ptr %23, align 8, !tbaa !211
  %26 = tail call ptr @RE_findOrAddVert(ptr noundef %1, i32 noundef %24) #16
  store ptr %26, ptr %22, align 8, !tbaa !553
  %27 = load i32, ptr %23, align 8, !tbaa !211
  %28 = add nsw i32 %27, 1
  store i32 %28, ptr %23, align 8, !tbaa !211
  %29 = tail call ptr @RE_findOrAddVert(ptr noundef %1, i32 noundef %27) #16
  %30 = getelementptr inbounds %struct.VlakRen, ptr %22, i64 0, i32 1
  store ptr %29, ptr %30, align 8, !tbaa !555
  %31 = getelementptr inbounds %struct.VlakRen, ptr %22, i64 0, i32 2
  store ptr %29, ptr %31, align 8, !tbaa !556
  %32 = getelementptr inbounds %struct.VlakRen, ptr %22, i64 0, i32 3
  store ptr null, ptr %32, align 8, !tbaa !557
  %33 = load ptr, ptr %22, align 8, !tbaa !553
  %34 = load float, ptr %5, align 4, !tbaa !44
  store float %34, ptr %33, align 4, !tbaa !44
  %35 = getelementptr inbounds float, ptr %5, i64 1
  %36 = load float, ptr %35, align 4, !tbaa !44
  %37 = getelementptr inbounds float, ptr %33, i64 1
  store float %36, ptr %37, align 4, !tbaa !44
  %38 = getelementptr inbounds float, ptr %5, i64 2
  %39 = load float, ptr %38, align 4, !tbaa !44
  %40 = getelementptr inbounds float, ptr %33, i64 2
  store float %39, ptr %40, align 4, !tbaa !44
  %41 = load float, ptr %6, align 4, !tbaa !44
  store float %41, ptr %29, align 4, !tbaa !44
  %42 = getelementptr inbounds float, ptr %6, i64 1
  %43 = load float, ptr %42, align 4, !tbaa !44
  %44 = getelementptr inbounds float, ptr %29, i64 1
  store float %43, ptr %44, align 4, !tbaa !44
  %45 = getelementptr inbounds float, ptr %6, i64 2
  %46 = load float, ptr %45, align 4, !tbaa !44
  %47 = getelementptr inbounds float, ptr %29, i64 2
  store float %46, ptr %47, align 4, !tbaa !44
  %48 = getelementptr inbounds %struct.VlakRen, ptr %22, i64 0, i32 4
  %49 = load float, ptr %5, align 4, !tbaa !44
  %50 = load float, ptr %6, align 4, !tbaa !44
  %51 = fsub float %49, %50
  store float %51, ptr %48, align 4, !tbaa !44
  %52 = load float, ptr %35, align 4, !tbaa !44
  %53 = load float, ptr %42, align 4, !tbaa !44
  %54 = fsub float %52, %53
  %55 = getelementptr inbounds %struct.VlakRen, ptr %22, i64 0, i32 4, i64 1
  store float %54, ptr %55, align 4, !tbaa !44
  %56 = load float, ptr %38, align 4, !tbaa !44
  %57 = load float, ptr %45, align 4, !tbaa !44
  %58 = fsub float %56, %57
  %59 = getelementptr inbounds %struct.VlakRen, ptr %22, i64 0, i32 4, i64 2
  store float %58, ptr %59, align 4, !tbaa !44
  %60 = fmul float %54, %54
  %61 = tail call float @llvm.fmuladd.f32(float %51, float %51, float %60)
  %62 = tail call float @llvm.fmuladd.f32(float %58, float %58, float %61)
  %63 = fcmp ogt float %62, 0x38AA95A5C0000000
  br i1 %63, label %64, label %73

64:                                               ; preds = %18
  %65 = tail call float @sqrtf(float noundef %62) #16
  %66 = fdiv float 1.000000e+00, %65
  %67 = load float, ptr %48, align 4, !tbaa !44
  %68 = fmul float %67, %66
  store float %68, ptr %48, align 4, !tbaa !44
  %69 = load float, ptr %55, align 4, !tbaa !44
  %70 = fmul float %66, %69
  store float %70, ptr %55, align 4, !tbaa !44
  %71 = load float, ptr %59, align 4, !tbaa !44
  %72 = fmul float %66, %71
  br label %74

73:                                               ; preds = %18
  store float 0.000000e+00, ptr %48, align 4, !tbaa !44
  store float 0.000000e+00, ptr %55, align 4, !tbaa !44
  br label %74

74:                                               ; preds = %73, %64
  %75 = phi float [ 0.000000e+00, %73 ], [ %72, %64 ]
  store float %75, ptr %59, align 4, !tbaa !44
  %76 = load ptr, ptr %22, align 8, !tbaa !553
  %77 = getelementptr inbounds %struct.VertRen, ptr %76, i64 0, i32 1
  %78 = load float, ptr %48, align 4, !tbaa !44
  store float %78, ptr %77, align 4, !tbaa !44
  %79 = load float, ptr %55, align 4, !tbaa !44
  %80 = getelementptr inbounds %struct.VertRen, ptr %76, i64 0, i32 1, i64 1
  store float %79, ptr %80, align 4, !tbaa !44
  %81 = load float, ptr %59, align 4, !tbaa !44
  %82 = getelementptr inbounds %struct.VertRen, ptr %76, i64 0, i32 1, i64 2
  store float %81, ptr %82, align 4, !tbaa !44
  %83 = load ptr, ptr %30, align 8, !tbaa !555
  %84 = getelementptr inbounds %struct.VertRen, ptr %83, i64 0, i32 1
  %85 = load float, ptr %48, align 4, !tbaa !44
  store float %85, ptr %84, align 4, !tbaa !44
  %86 = load float, ptr %55, align 4, !tbaa !44
  %87 = getelementptr inbounds %struct.VertRen, ptr %83, i64 0, i32 1, i64 1
  store float %86, ptr %87, align 4, !tbaa !44
  %88 = load float, ptr %59, align 4, !tbaa !44
  %89 = getelementptr inbounds %struct.VertRen, ptr %83, i64 0, i32 1, i64 2
  store float %88, ptr %89, align 4, !tbaa !44
  %90 = getelementptr inbounds %struct.VlakRen, ptr %22, i64 0, i32 5
  store ptr %3, ptr %90, align 8, !tbaa !558
  %91 = getelementptr inbounds %struct.VlakRen, ptr %22, i64 0, i32 8
  store i8 1, ptr %91, align 2, !tbaa !560
  br label %788

92:                                               ; preds = %14
  %93 = getelementptr inbounds %struct.ParticleStrandData, ptr %4, i64 0, i32 10
  %94 = load i32, ptr %93, align 8, !tbaa !519
  %95 = icmp eq i32 %94, 0
  br i1 %95, label %108, label %96

96:                                               ; preds = %92
  %97 = getelementptr inbounds %struct.ObjectRen, ptr %1, i64 0, i32 10
  %98 = load i32, ptr %97, align 8, !tbaa !211
  %99 = add nsw i32 %98, 1
  store i32 %99, ptr %97, align 8, !tbaa !211
  %100 = tail call ptr @RE_findOrAddVert(ptr noundef %1, i32 noundef %98) #16
  store ptr %100, ptr @static_particle_wire.v1, align 8, !tbaa !77
  %101 = load float, ptr %5, align 4, !tbaa !44
  store float %101, ptr %100, align 4, !tbaa !44
  %102 = getelementptr inbounds float, ptr %5, i64 1
  %103 = load float, ptr %102, align 4, !tbaa !44
  %104 = getelementptr inbounds float, ptr %100, i64 1
  store float %103, ptr %104, align 4, !tbaa !44
  %105 = getelementptr inbounds float, ptr %5, i64 2
  %106 = load float, ptr %105, align 4, !tbaa !44
  %107 = getelementptr inbounds float, ptr %100, i64 2
  store float %106, ptr %107, align 4, !tbaa !44
  br label %788

108:                                              ; preds = %92
  %109 = getelementptr inbounds %struct.ObjectRen, ptr %1, i64 0, i32 11
  %110 = load i32, ptr %109, align 4, !tbaa !293
  %111 = add nsw i32 %110, 1
  store i32 %111, ptr %109, align 4, !tbaa !293
  %112 = tail call ptr @RE_findOrAddVlak(ptr noundef %1, i32 noundef %110) #16
  %113 = load ptr, ptr @static_particle_wire.v1, align 8, !tbaa !77
  store ptr %113, ptr %112, align 8, !tbaa !553
  %114 = getelementptr inbounds %struct.ObjectRen, ptr %1, i64 0, i32 10
  %115 = load i32, ptr %114, align 8, !tbaa !211
  %116 = add nsw i32 %115, 1
  store i32 %116, ptr %114, align 8, !tbaa !211
  %117 = tail call ptr @RE_findOrAddVert(ptr noundef %1, i32 noundef %115) #16
  %118 = getelementptr inbounds %struct.VlakRen, ptr %112, i64 0, i32 1
  store ptr %117, ptr %118, align 8, !tbaa !555
  %119 = getelementptr inbounds %struct.VlakRen, ptr %112, i64 0, i32 2
  store ptr %117, ptr %119, align 8, !tbaa !556
  %120 = getelementptr inbounds %struct.VlakRen, ptr %112, i64 0, i32 3
  store ptr null, ptr %120, align 8, !tbaa !557
  store ptr %117, ptr @static_particle_wire.v1, align 8, !tbaa !77
  %121 = load float, ptr %5, align 4, !tbaa !44
  store float %121, ptr %117, align 4, !tbaa !44
  %122 = getelementptr inbounds float, ptr %5, i64 1
  %123 = load float, ptr %122, align 4, !tbaa !44
  %124 = getelementptr inbounds float, ptr %117, i64 1
  store float %123, ptr %124, align 4, !tbaa !44
  %125 = getelementptr inbounds float, ptr %5, i64 2
  %126 = load float, ptr %125, align 4, !tbaa !44
  %127 = getelementptr inbounds float, ptr %117, i64 2
  store float %126, ptr %127, align 4, !tbaa !44
  %128 = getelementptr inbounds %struct.VlakRen, ptr %112, i64 0, i32 4
  %129 = load float, ptr %5, align 4, !tbaa !44
  %130 = load float, ptr %6, align 4, !tbaa !44
  %131 = fsub float %129, %130
  store float %131, ptr %128, align 4, !tbaa !44
  %132 = load float, ptr %122, align 4, !tbaa !44
  %133 = getelementptr inbounds float, ptr %6, i64 1
  %134 = load float, ptr %133, align 4, !tbaa !44
  %135 = fsub float %132, %134
  %136 = getelementptr inbounds %struct.VlakRen, ptr %112, i64 0, i32 4, i64 1
  store float %135, ptr %136, align 4, !tbaa !44
  %137 = load float, ptr %125, align 4, !tbaa !44
  %138 = getelementptr inbounds float, ptr %6, i64 2
  %139 = load float, ptr %138, align 4, !tbaa !44
  %140 = fsub float %137, %139
  %141 = getelementptr inbounds %struct.VlakRen, ptr %112, i64 0, i32 4, i64 2
  store float %140, ptr %141, align 4, !tbaa !44
  %142 = fmul float %135, %135
  %143 = tail call float @llvm.fmuladd.f32(float %131, float %131, float %142)
  %144 = tail call float @llvm.fmuladd.f32(float %140, float %140, float %143)
  %145 = fcmp ogt float %144, 0x38AA95A5C0000000
  br i1 %145, label %146, label %155

146:                                              ; preds = %108
  %147 = tail call float @sqrtf(float noundef %144) #16
  %148 = fdiv float 1.000000e+00, %147
  %149 = load float, ptr %128, align 4, !tbaa !44
  %150 = fmul float %149, %148
  store float %150, ptr %128, align 4, !tbaa !44
  %151 = load float, ptr %136, align 4, !tbaa !44
  %152 = fmul float %148, %151
  store float %152, ptr %136, align 4, !tbaa !44
  %153 = load float, ptr %141, align 4, !tbaa !44
  %154 = fmul float %148, %153
  br label %156

155:                                              ; preds = %108
  store float 0.000000e+00, ptr %128, align 4, !tbaa !44
  store float 0.000000e+00, ptr %136, align 4, !tbaa !44
  br label %156

156:                                              ; preds = %155, %146
  %157 = phi float [ 0.000000e+00, %155 ], [ %154, %146 ]
  store float %157, ptr %141, align 4, !tbaa !44
  %158 = load ptr, ptr @static_particle_wire.v1, align 8, !tbaa !77
  %159 = getelementptr inbounds %struct.VertRen, ptr %158, i64 0, i32 1
  %160 = load float, ptr %128, align 4, !tbaa !44
  store float %160, ptr %159, align 4, !tbaa !44
  %161 = load float, ptr %136, align 4, !tbaa !44
  %162 = getelementptr inbounds %struct.VertRen, ptr %158, i64 0, i32 1, i64 1
  store float %161, ptr %162, align 4, !tbaa !44
  %163 = load float, ptr %141, align 4, !tbaa !44
  %164 = getelementptr inbounds %struct.VertRen, ptr %158, i64 0, i32 1, i64 2
  store float %163, ptr %164, align 4, !tbaa !44
  %165 = getelementptr inbounds %struct.VlakRen, ptr %112, i64 0, i32 5
  store ptr %3, ptr %165, align 8, !tbaa !558
  %166 = getelementptr inbounds %struct.VlakRen, ptr %112, i64 0, i32 8
  store i8 1, ptr %166, align 2, !tbaa !560
  br label %788

167:                                              ; preds = %9
  %168 = getelementptr inbounds %struct.ParticleStrandData, ptr %4, i64 0, i32 1
  %169 = load ptr, ptr %168, align 8, !tbaa !459
  %170 = getelementptr inbounds %struct.ParticleStrandData, ptr %4, i64 0, i32 2
  %171 = load ptr, ptr %170, align 8, !tbaa !443
  %172 = getelementptr inbounds %struct.ParticleStrandData, ptr %4, i64 0, i32 7
  %173 = load float, ptr %172, align 4, !tbaa !518
  %174 = tail call ptr @RE_inithalo_particle(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %5, ptr noundef %6, ptr noundef %169, ptr noundef %171, float noundef %173, float noundef 1.000000e+00, i32 noundef %7, ptr noundef %8) #16
  %175 = icmp eq ptr %174, null
  br i1 %175, label %788, label %176

176:                                              ; preds = %167
  %177 = getelementptr inbounds %struct.ObjectRen, ptr %1, i64 0, i32 2
  %178 = load ptr, ptr %177, align 8, !tbaa !184
  %179 = getelementptr inbounds %struct.Object, ptr %178, i64 0, i32 52
  %180 = load i32, ptr %179, align 8, !tbaa !189
  %181 = getelementptr inbounds %struct.HaloRen, ptr %174, i64 0, i32 28
  store i32 %180, ptr %181, align 8, !tbaa !592
  br label %788

182:                                              ; preds = %9
  %183 = load float, ptr %5, align 4, !tbaa !44
  %184 = load float, ptr %6, align 4, !tbaa !44
  %185 = fsub float %183, %184
  %186 = getelementptr inbounds float, ptr %5, i64 1
  %187 = load float, ptr %186, align 4, !tbaa !44
  %188 = getelementptr inbounds float, ptr %6, i64 1
  %189 = load float, ptr %188, align 4, !tbaa !44
  %190 = fsub float %187, %189
  %191 = getelementptr inbounds float, ptr %5, i64 2
  %192 = load float, ptr %191, align 4, !tbaa !44
  %193 = getelementptr inbounds float, ptr %6, i64 2
  %194 = load float, ptr %193, align 4, !tbaa !44
  %195 = fsub float %192, %194
  %196 = fmul float %190, %190
  %197 = tail call float @llvm.fmuladd.f32(float %185, float %185, float %196)
  %198 = tail call float @llvm.fmuladd.f32(float %195, float %195, float %197)
  %199 = fcmp ogt float %198, 0x38AA95A5C0000000
  br i1 %199, label %200, label %206

200:                                              ; preds = %182
  %201 = tail call float @sqrtf(float noundef %198) #16
  %202 = fdiv float 1.000000e+00, %201
  %203 = fmul float %185, %202
  %204 = fmul float %190, %202
  %205 = fmul float %195, %202
  br label %206

206:                                              ; preds = %200, %182
  %207 = phi float [ %204, %200 ], [ 0.000000e+00, %182 ]
  %208 = phi float [ %203, %200 ], [ 0.000000e+00, %182 ]
  %209 = phi float [ %205, %200 ], [ 0.000000e+00, %182 ]
  %210 = load float, ptr %186, align 4, !tbaa !44
  %211 = load float, ptr %191, align 4, !tbaa !44
  %212 = fneg float %211
  %213 = fmul float %207, %212
  %214 = tail call float @llvm.fmuladd.f32(float %210, float %209, float %213)
  %215 = load float, ptr %5, align 4, !tbaa !44
  %216 = fneg float %215
  %217 = fmul float %209, %216
  %218 = tail call float @llvm.fmuladd.f32(float %211, float %208, float %217)
  %219 = fneg float %210
  %220 = fmul float %208, %219
  %221 = tail call float @llvm.fmuladd.f32(float %215, float %207, float %220)
  %222 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 35
  %223 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 35, i64 2, i64 3
  %224 = load float, ptr %223, align 4, !tbaa !44
  %225 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 35, i64 3, i64 3
  %226 = load float, ptr %225, align 4, !tbaa !44
  %227 = tail call float @llvm.fmuladd.f32(float %211, float %224, float %226)
  %228 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 13
  %229 = load i32, ptr %228, align 4, !tbaa !223
  %230 = sitofp i32 %229 to float
  %231 = fmul float %214, %230
  %232 = load float, ptr %222, align 8, !tbaa !44
  %233 = fmul float %232, %231
  %234 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 14
  %235 = load i32, ptr %234, align 8, !tbaa !224
  %236 = sitofp i32 %235 to float
  %237 = fmul float %218, %236
  %238 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 35, i64 1, i64 1
  %239 = load float, ptr %238, align 4, !tbaa !44
  %240 = fmul float %239, %237
  %241 = fmul float %240, %240
  %242 = tail call float @llvm.fmuladd.f32(float %233, float %233, float %241)
  %243 = tail call float @sqrtf(float noundef %242) #16
  %244 = fdiv float %243, %227
  %245 = fcmp une float %244, 0.000000e+00
  br i1 %245, label %246, label %308

246:                                              ; preds = %206
  %247 = getelementptr inbounds %struct.Material, ptr %3, i64 0, i32 65
  %248 = load float, ptr %247, align 4, !tbaa !677
  %249 = fcmp une float %248, 0.000000e+00
  br i1 %249, label %250, label %266

250:                                              ; preds = %246
  %251 = fcmp olt float %248, 0.000000e+00
  %252 = getelementptr inbounds %struct.ParticleStrandData, ptr %4, i64 0, i32 4
  %253 = load float, ptr %252, align 8, !tbaa !520
  %254 = fpext float %253 to double
  br i1 %251, label %255, label %260

255:                                              ; preds = %250
  %256 = fadd float %248, 1.000000e+00
  %257 = fpext float %256 to double
  %258 = tail call double @pow(double noundef %254, double noundef %257) #16
  %259 = fptrunc double %258 to float
  br label %269

260:                                              ; preds = %250
  %261 = fsub float 1.000000e+00, %248
  %262 = fdiv float 1.000000e+00, %261
  %263 = fpext float %262 to double
  %264 = tail call double @pow(double noundef %254, double noundef %263) #16
  %265 = fptrunc double %264 to float
  br label %269

266:                                              ; preds = %246
  %267 = getelementptr inbounds %struct.ParticleStrandData, ptr %4, i64 0, i32 4
  %268 = load float, ptr %267, align 8, !tbaa !520
  br label %269

269:                                              ; preds = %266, %260, %255
  %270 = phi float [ %259, %255 ], [ %265, %260 ], [ %268, %266 ]
  %271 = fsub float 1.000000e+00, %270
  %272 = getelementptr inbounds %struct.Material, ptr %3, i64 0, i32 63
  %273 = load float, ptr %272, align 4, !tbaa !663
  %274 = getelementptr inbounds %struct.Material, ptr %3, i64 0, i32 64
  %275 = load float, ptr %274, align 8, !tbaa !664
  %276 = fmul float %270, %275
  %277 = tail call float @llvm.fmuladd.f32(float %271, float %273, float %276)
  %278 = getelementptr inbounds %struct.Material, ptr %3, i64 0, i32 51
  %279 = load i32, ptr %278, align 4, !tbaa !135
  %280 = and i32 %279, 1073741824
  %281 = icmp eq i32 %280, 0
  br i1 %281, label %298, label %282

282:                                              ; preds = %269
  %283 = fmul float %218, %218
  %284 = tail call float @llvm.fmuladd.f32(float %214, float %214, float %283)
  %285 = tail call float @llvm.fmuladd.f32(float %221, float %221, float %284)
  %286 = tail call float @sqrtf(float noundef %285) #16
  %287 = fmul float %286, 2.000000e+00
  %288 = getelementptr inbounds %struct.Material, ptr %3, i64 0, i32 67
  %289 = load float, ptr %288, align 4, !tbaa !472
  %290 = fmul float %287, %289
  %291 = fdiv float %290, %244
  %292 = fcmp olt float %277, %291
  %293 = select i1 %292, float %291, float %277
  %294 = fdiv float 5.000000e-01, %286
  %295 = fmul float %214, %294
  %296 = fmul float %218, %294
  %297 = fmul float %221, %294
  br label %300

298:                                              ; preds = %269
  %299 = fdiv float %277, %244
  br label %300

300:                                              ; preds = %298, %282
  %301 = phi float [ %221, %298 ], [ %297, %282 ]
  %302 = phi float [ %218, %298 ], [ %296, %282 ]
  %303 = phi float [ %214, %298 ], [ %295, %282 ]
  %304 = phi float [ %299, %298 ], [ %293, %282 ]
  %305 = fmul float %303, %304
  %306 = fmul float %302, %304
  %307 = fmul float %301, %304
  br label %308

308:                                              ; preds = %300, %206
  %309 = phi float [ %307, %300 ], [ %221, %206 ]
  %310 = phi float [ %306, %300 ], [ %218, %206 ]
  %311 = phi float [ %305, %300 ], [ %214, %206 ]
  %312 = getelementptr inbounds %struct.Material, ptr %3, i64 0, i32 51
  %313 = load i32, ptr %312, align 4, !tbaa !135
  %314 = and i32 %313, 16777216
  %315 = icmp eq i32 %314, 0
  %316 = select i1 %315, i32 1, i32 65
  %317 = getelementptr inbounds %struct.Material, ptr %3, i64 0, i32 63
  %318 = load float, ptr %317, align 4, !tbaa !663
  %319 = fcmp oeq float %318, 1.000000e+00
  %320 = or disjoint i32 %316, 4
  %321 = select i1 %319, i32 %320, i32 %316
  %322 = getelementptr inbounds %struct.ParticleStrandData, ptr %4, i64 0, i32 11
  %323 = load i32, ptr %322, align 4, !tbaa !676
  %324 = icmp eq i32 %323, 0
  br i1 %324, label %490, label %325

325:                                              ; preds = %308
  %326 = getelementptr inbounds %struct.ObjectRen, ptr %1, i64 0, i32 11
  %327 = load i32, ptr %326, align 4, !tbaa !293
  %328 = add nsw i32 %327, 1
  store i32 %328, ptr %326, align 4, !tbaa !293
  %329 = tail call ptr @RE_findOrAddVlak(ptr noundef %1, i32 noundef %327) #16
  %330 = trunc i32 %321 to i8
  %331 = getelementptr inbounds %struct.VlakRen, ptr %329, i64 0, i32 7
  store i8 %330, ptr %331, align 1, !tbaa !559
  %332 = getelementptr inbounds %struct.ObjectRen, ptr %1, i64 0, i32 10
  %333 = load i32, ptr %332, align 8, !tbaa !211
  %334 = add nsw i32 %333, 1
  store i32 %334, ptr %332, align 8, !tbaa !211
  %335 = tail call ptr @RE_findOrAddVert(ptr noundef %1, i32 noundef %333) #16
  store ptr %335, ptr %329, align 8, !tbaa !553
  %336 = load i32, ptr %332, align 8, !tbaa !211
  %337 = add nsw i32 %336, 1
  store i32 %337, ptr %332, align 8, !tbaa !211
  %338 = tail call ptr @RE_findOrAddVert(ptr noundef %1, i32 noundef %336) #16
  %339 = getelementptr inbounds %struct.VlakRen, ptr %329, i64 0, i32 1
  store ptr %338, ptr %339, align 8, !tbaa !555
  %340 = load i32, ptr %332, align 8, !tbaa !211
  %341 = add nsw i32 %340, 1
  store i32 %341, ptr %332, align 8, !tbaa !211
  %342 = tail call ptr @RE_findOrAddVert(ptr noundef %1, i32 noundef %340) #16
  %343 = getelementptr inbounds %struct.VlakRen, ptr %329, i64 0, i32 2
  store ptr %342, ptr %343, align 8, !tbaa !556
  %344 = load i32, ptr %332, align 8, !tbaa !211
  %345 = add nsw i32 %344, 1
  store i32 %345, ptr %332, align 8, !tbaa !211
  %346 = tail call ptr @RE_findOrAddVert(ptr noundef %1, i32 noundef %344) #16
  %347 = getelementptr inbounds %struct.VlakRen, ptr %329, i64 0, i32 3
  store ptr %346, ptr %347, align 8, !tbaa !557
  %348 = load ptr, ptr %329, align 8, !tbaa !553
  %349 = load float, ptr %5, align 4, !tbaa !44
  store float %349, ptr %348, align 4, !tbaa !44
  %350 = load float, ptr %186, align 4, !tbaa !44
  %351 = getelementptr inbounds float, ptr %348, i64 1
  store float %350, ptr %351, align 4, !tbaa !44
  %352 = load float, ptr %191, align 4, !tbaa !44
  %353 = getelementptr inbounds float, ptr %348, i64 2
  store float %352, ptr %353, align 4, !tbaa !44
  %354 = fadd float %311, %349
  store float %354, ptr %348, align 4, !tbaa !44
  %355 = fadd float %310, %350
  store float %355, ptr %351, align 4, !tbaa !44
  %356 = fadd float %309, %352
  store float %356, ptr %353, align 4, !tbaa !44
  %357 = getelementptr inbounds %struct.VertRen, ptr %348, i64 0, i32 1
  store float %208, ptr %357, align 4, !tbaa !44
  %358 = getelementptr inbounds %struct.VertRen, ptr %348, i64 0, i32 1, i64 1
  store float %207, ptr %358, align 4, !tbaa !44
  %359 = getelementptr inbounds %struct.VertRen, ptr %348, i64 0, i32 1, i64 2
  store float %209, ptr %359, align 4, !tbaa !44
  %360 = getelementptr inbounds %struct.ParticleStrandData, ptr %4, i64 0, i32 1
  %361 = load ptr, ptr %360, align 8, !tbaa !459
  %362 = getelementptr inbounds %struct.VertRen, ptr %348, i64 0, i32 2
  store ptr %361, ptr %362, align 8, !tbaa !548
  %363 = getelementptr inbounds %struct.VertRen, ptr %348, i64 0, i32 4
  store float -1.000000e+00, ptr %363, align 4, !tbaa !678
  %364 = load ptr, ptr %339, align 8, !tbaa !555
  %365 = load float, ptr %5, align 4, !tbaa !44
  store float %365, ptr %364, align 4, !tbaa !44
  %366 = load float, ptr %186, align 4, !tbaa !44
  %367 = getelementptr inbounds float, ptr %364, i64 1
  store float %366, ptr %367, align 4, !tbaa !44
  %368 = load float, ptr %191, align 4, !tbaa !44
  %369 = getelementptr inbounds float, ptr %364, i64 2
  store float %368, ptr %369, align 4, !tbaa !44
  %370 = fsub float %365, %311
  store float %370, ptr %364, align 4, !tbaa !44
  %371 = fsub float %366, %310
  store float %371, ptr %367, align 4, !tbaa !44
  %372 = fsub float %368, %309
  store float %372, ptr %369, align 4, !tbaa !44
  %373 = getelementptr inbounds %struct.VertRen, ptr %364, i64 0, i32 1
  store float %208, ptr %373, align 4, !tbaa !44
  %374 = getelementptr inbounds %struct.VertRen, ptr %364, i64 0, i32 1, i64 1
  store float %207, ptr %374, align 4, !tbaa !44
  %375 = getelementptr inbounds %struct.VertRen, ptr %364, i64 0, i32 1, i64 2
  store float %209, ptr %375, align 4, !tbaa !44
  %376 = getelementptr inbounds %struct.VertRen, ptr %364, i64 0, i32 2
  store ptr %361, ptr %376, align 8, !tbaa !548
  %377 = load float, ptr %363, align 4, !tbaa !678
  %378 = getelementptr inbounds %struct.VertRen, ptr %364, i64 0, i32 4
  store float %377, ptr %378, align 4, !tbaa !678
  %379 = load float, ptr %6, align 4, !tbaa !44
  store float %379, ptr %346, align 4, !tbaa !44
  %380 = load float, ptr %188, align 4, !tbaa !44
  %381 = getelementptr inbounds float, ptr %346, i64 1
  store float %380, ptr %381, align 4, !tbaa !44
  %382 = load float, ptr %193, align 4, !tbaa !44
  %383 = getelementptr inbounds float, ptr %346, i64 2
  store float %382, ptr %383, align 4, !tbaa !44
  %384 = fadd float %311, %379
  store float %384, ptr %346, align 4, !tbaa !44
  %385 = fadd float %310, %380
  store float %385, ptr %381, align 4, !tbaa !44
  %386 = fadd float %309, %382
  store float %386, ptr %383, align 4, !tbaa !44
  %387 = getelementptr inbounds %struct.VertRen, ptr %346, i64 0, i32 1
  store float %208, ptr %387, align 4, !tbaa !44
  %388 = getelementptr inbounds %struct.VertRen, ptr %346, i64 0, i32 1, i64 1
  store float %207, ptr %388, align 4, !tbaa !44
  %389 = getelementptr inbounds %struct.VertRen, ptr %346, i64 0, i32 1, i64 2
  store float %209, ptr %389, align 4, !tbaa !44
  %390 = getelementptr inbounds %struct.VertRen, ptr %346, i64 0, i32 2
  store ptr %361, ptr %390, align 8, !tbaa !548
  %391 = getelementptr inbounds %struct.VertRen, ptr %346, i64 0, i32 4
  store float 1.000000e+00, ptr %391, align 4, !tbaa !678
  %392 = load ptr, ptr %343, align 8, !tbaa !556
  %393 = load float, ptr %6, align 4, !tbaa !44
  store float %393, ptr %392, align 4, !tbaa !44
  %394 = load float, ptr %188, align 4, !tbaa !44
  %395 = getelementptr inbounds float, ptr %392, i64 1
  store float %394, ptr %395, align 4, !tbaa !44
  %396 = load float, ptr %193, align 4, !tbaa !44
  %397 = getelementptr inbounds float, ptr %392, i64 2
  store float %396, ptr %397, align 4, !tbaa !44
  %398 = fsub float %393, %311
  store float %398, ptr %392, align 4, !tbaa !44
  %399 = fsub float %394, %310
  store float %399, ptr %395, align 4, !tbaa !44
  %400 = fsub float %396, %309
  store float %400, ptr %397, align 4, !tbaa !44
  %401 = getelementptr inbounds %struct.VertRen, ptr %392, i64 0, i32 1
  store float %208, ptr %401, align 4, !tbaa !44
  %402 = getelementptr inbounds %struct.VertRen, ptr %392, i64 0, i32 1, i64 1
  store float %207, ptr %402, align 4, !tbaa !44
  %403 = getelementptr inbounds %struct.VertRen, ptr %392, i64 0, i32 1, i64 2
  store float %209, ptr %403, align 4, !tbaa !44
  %404 = getelementptr inbounds %struct.VertRen, ptr %392, i64 0, i32 2
  store ptr %361, ptr %404, align 8, !tbaa !548
  %405 = load float, ptr %391, align 4, !tbaa !678
  %406 = getelementptr inbounds %struct.VertRen, ptr %392, i64 0, i32 4
  store float %405, ptr %406, align 4, !tbaa !678
  %407 = getelementptr inbounds %struct.VlakRen, ptr %329, i64 0, i32 4
  %408 = tail call float @normal_quad_v3(ptr noundef nonnull %407, ptr noundef nonnull %346, ptr noundef nonnull %392, ptr noundef nonnull %364, ptr noundef nonnull %348) #16
  %409 = getelementptr inbounds %struct.VlakRen, ptr %329, i64 0, i32 5
  store ptr %3, ptr %409, align 8, !tbaa !558
  %410 = getelementptr inbounds %struct.VlakRen, ptr %329, i64 0, i32 8
  store i8 2, ptr %410, align 2, !tbaa !560
  %411 = getelementptr inbounds %struct.ParticleStrandData, ptr %4, i64 0, i32 3
  %412 = load ptr, ptr %411, align 8, !tbaa !510
  %413 = icmp eq ptr %412, null
  br i1 %413, label %424, label %414

414:                                              ; preds = %325
  %415 = tail call ptr @RE_vlakren_get_surfnor(ptr noundef %1, ptr noundef nonnull %329, i32 noundef 1) #16
  %416 = load ptr, ptr %411, align 8, !tbaa !510
  %417 = load float, ptr %416, align 4, !tbaa !44
  store float %417, ptr %415, align 4, !tbaa !44
  %418 = getelementptr inbounds float, ptr %416, i64 1
  %419 = load float, ptr %418, align 4, !tbaa !44
  %420 = getelementptr inbounds float, ptr %415, i64 1
  store float %419, ptr %420, align 4, !tbaa !44
  %421 = getelementptr inbounds float, ptr %416, i64 2
  %422 = load float, ptr %421, align 4, !tbaa !44
  %423 = getelementptr inbounds float, ptr %415, i64 2
  store float %422, ptr %423, align 4, !tbaa !44
  br label %424

424:                                              ; preds = %414, %325
  %425 = getelementptr inbounds %struct.ParticleStrandData, ptr %4, i64 0, i32 2
  %426 = load ptr, ptr %425, align 8, !tbaa !443
  %427 = icmp eq ptr %426, null
  br i1 %427, label %466, label %428

428:                                              ; preds = %424
  %429 = getelementptr inbounds %struct.ParticleStrandData, ptr %4, i64 0, i32 8
  %430 = load i32, ptr %429, align 8, !tbaa !441
  %431 = icmp sgt i32 %430, 0
  br i1 %431, label %432, label %453

432:                                              ; preds = %428, %432
  %433 = phi i64 [ %449, %432 ], [ 0, %428 ]
  %434 = trunc i64 %433 to i32
  %435 = tail call ptr @RE_vlakren_get_tface(ptr noundef %1, ptr noundef nonnull %329, i32 noundef %434, ptr noundef null, i32 noundef 1) #16
  %436 = load ptr, ptr %425, align 8, !tbaa !443
  %437 = shl nuw nsw i64 %433, 1
  %438 = getelementptr inbounds float, ptr %436, i64 %437
  %439 = load float, ptr %438, align 4, !tbaa !44
  %440 = getelementptr inbounds [4 x [2 x float]], ptr %435, i64 0, i64 3
  store float %439, ptr %440, align 8, !tbaa !44
  %441 = getelementptr inbounds [4 x [2 x float]], ptr %435, i64 0, i64 2
  store float %439, ptr %441, align 8, !tbaa !44
  %442 = getelementptr inbounds [4 x [2 x float]], ptr %435, i64 0, i64 1
  store float %439, ptr %442, align 8, !tbaa !44
  store float %439, ptr %435, align 8, !tbaa !44
  %443 = getelementptr inbounds float, ptr %438, i64 1
  %444 = load float, ptr %443, align 4, !tbaa !44
  %445 = getelementptr inbounds [4 x [2 x float]], ptr %435, i64 0, i64 3, i64 1
  store float %444, ptr %445, align 4, !tbaa !44
  %446 = getelementptr inbounds [4 x [2 x float]], ptr %435, i64 0, i64 2, i64 1
  store float %444, ptr %446, align 4, !tbaa !44
  %447 = getelementptr inbounds [4 x [2 x float]], ptr %435, i64 0, i64 1, i64 1
  store float %444, ptr %447, align 4, !tbaa !44
  %448 = getelementptr inbounds [2 x float], ptr %435, i64 0, i64 1
  store float %444, ptr %448, align 4, !tbaa !44
  %449 = add nuw nsw i64 %433, 1
  %450 = load i32, ptr %429, align 8, !tbaa !441
  %451 = sext i32 %450 to i64
  %452 = icmp slt i64 %449, %451
  br i1 %452, label %432, label %453, !llvm.loop !679

453:                                              ; preds = %432, %428
  %454 = getelementptr inbounds %struct.ParticleStrandData, ptr %4, i64 0, i32 13
  %455 = load i32, ptr %454, align 4, !tbaa !435
  %456 = icmp sgt i32 %455, -1
  br i1 %456, label %457, label %466

457:                                              ; preds = %453
  %458 = tail call ptr @RE_vlakren_get_tface(ptr noundef %1, ptr noundef nonnull %329, i32 noundef %455, ptr noundef null, i32 noundef 0) #16
  %459 = getelementptr inbounds [4 x [2 x float]], ptr %458, i64 0, i64 3
  store float 0.000000e+00, ptr %459, align 8, !tbaa !44
  store float 0.000000e+00, ptr %458, align 8, !tbaa !44
  %460 = getelementptr inbounds [4 x [2 x float]], ptr %458, i64 0, i64 2
  store float 1.000000e+00, ptr %460, align 8, !tbaa !44
  %461 = getelementptr inbounds [4 x [2 x float]], ptr %458, i64 0, i64 1
  store float 1.000000e+00, ptr %461, align 8, !tbaa !44
  %462 = getelementptr inbounds [4 x [2 x float]], ptr %458, i64 0, i64 1, i64 1
  store float 0.000000e+00, ptr %462, align 4, !tbaa !44
  %463 = getelementptr inbounds [2 x float], ptr %458, i64 0, i64 1
  store float 0.000000e+00, ptr %463, align 4, !tbaa !44
  %464 = getelementptr inbounds [4 x [2 x float]], ptr %458, i64 0, i64 3, i64 1
  store float 1.000000e+00, ptr %464, align 4, !tbaa !44
  %465 = getelementptr inbounds [4 x [2 x float]], ptr %458, i64 0, i64 2, i64 1
  store float 1.000000e+00, ptr %465, align 4, !tbaa !44
  br label %466

466:                                              ; preds = %457, %453, %424
  %467 = load ptr, ptr %4, align 8, !tbaa !444
  %468 = icmp eq ptr %467, null
  br i1 %468, label %788, label %469

469:                                              ; preds = %466
  %470 = getelementptr inbounds %struct.ParticleStrandData, ptr %4, i64 0, i32 9
  %471 = load i32, ptr %470, align 4, !tbaa !442
  %472 = icmp sgt i32 %471, 0
  br i1 %472, label %473, label %788

473:                                              ; preds = %469, %473
  %474 = phi i64 [ %486, %473 ], [ 0, %469 ]
  %475 = trunc i64 %474 to i32
  %476 = tail call ptr @RE_vlakren_get_mcol(ptr noundef %1, ptr noundef nonnull %329, i32 noundef %475, ptr noundef null, i32 noundef 1) #16
  %477 = getelementptr inbounds %struct.MCol, ptr %476, i64 1
  %478 = getelementptr inbounds %struct.MCol, ptr %476, i64 2
  %479 = getelementptr inbounds %struct.MCol, ptr %476, i64 3
  %480 = load ptr, ptr %4, align 8, !tbaa !444
  %481 = getelementptr inbounds %struct.MCol, ptr %480, i64 %474
  %482 = load i32, ptr %481, align 1
  store i32 %482, ptr %479, align 1
  store i32 %482, ptr %478, align 1
  store i32 %482, ptr %477, align 1
  store i32 %482, ptr %476, align 1
  %483 = load ptr, ptr %4, align 8, !tbaa !444
  %484 = getelementptr inbounds %struct.MCol, ptr %483, i64 %474
  %485 = load i32, ptr %484, align 1
  store i32 %485, ptr %479, align 1
  store i32 %485, ptr %478, align 1
  store i32 %485, ptr %477, align 1
  store i32 %485, ptr %476, align 1
  %486 = add nuw nsw i64 %474, 1
  %487 = load i32, ptr %470, align 4, !tbaa !442
  %488 = sext i32 %487 to i64
  %489 = icmp slt i64 %486, %488
  br i1 %489, label %473, label %788, !llvm.loop !680

490:                                              ; preds = %308
  %491 = getelementptr inbounds %struct.ParticleStrandData, ptr %4, i64 0, i32 10
  %492 = load i32, ptr %491, align 8, !tbaa !519
  %493 = icmp eq i32 %492, 0
  %494 = getelementptr inbounds %struct.ParticleStrandData, ptr %4, i64 0, i32 12
  %495 = load i32, ptr %494, align 8, !tbaa !460
  %496 = icmp eq i32 %495, 0
  br i1 %493, label %540, label %497

497:                                              ; preds = %490
  br i1 %496, label %502, label %498

498:                                              ; preds = %497
  store float %208, ptr @static_particle_strand.anor.0, align 4, !tbaa !44
  store float %207, ptr @static_particle_strand.anor.1, align 4, !tbaa !44
  store float %209, ptr @static_particle_strand.anor.2, align 4, !tbaa !44
  %499 = load float, ptr %5, align 4, !tbaa !44
  store float %499, ptr @static_particle_strand.avec.0, align 4, !tbaa !44
  %500 = load float, ptr %186, align 4, !tbaa !44
  store float %500, ptr @static_particle_strand.avec.1, align 4, !tbaa !44
  %501 = load float, ptr %191, align 4, !tbaa !44
  store float %501, ptr @static_particle_strand.avec.2, align 4, !tbaa !44
  store i1 true, ptr @static_particle_strand.second, align 4
  br label %502

502:                                              ; preds = %498, %497
  %503 = getelementptr inbounds %struct.ObjectRen, ptr %1, i64 0, i32 10
  %504 = load i32, ptr %503, align 8, !tbaa !211
  %505 = add nsw i32 %504, 1
  store i32 %505, ptr %503, align 8, !tbaa !211
  %506 = tail call ptr @RE_findOrAddVert(ptr noundef %1, i32 noundef %504) #16
  store ptr %506, ptr @static_particle_strand.v1, align 8, !tbaa !77
  %507 = load i32, ptr %503, align 8, !tbaa !211
  %508 = add nsw i32 %507, 1
  store i32 %508, ptr %503, align 8, !tbaa !211
  %509 = tail call ptr @RE_findOrAddVert(ptr noundef %1, i32 noundef %507) #16
  store ptr %509, ptr @static_particle_strand.v2, align 8, !tbaa !77
  %510 = load ptr, ptr @static_particle_strand.v1, align 8, !tbaa !77
  %511 = load float, ptr %5, align 4, !tbaa !44
  store float %511, ptr %510, align 4, !tbaa !44
  %512 = load float, ptr %186, align 4, !tbaa !44
  %513 = getelementptr inbounds float, ptr %510, i64 1
  store float %512, ptr %513, align 4, !tbaa !44
  %514 = load float, ptr %191, align 4, !tbaa !44
  %515 = getelementptr inbounds float, ptr %510, i64 2
  store float %514, ptr %515, align 4, !tbaa !44
  %516 = fadd float %311, %511
  store float %516, ptr %510, align 4, !tbaa !44
  %517 = fadd float %310, %512
  store float %517, ptr %513, align 4, !tbaa !44
  %518 = fadd float %309, %514
  store float %518, ptr %515, align 4, !tbaa !44
  %519 = getelementptr inbounds %struct.VertRen, ptr %510, i64 0, i32 1
  store float %208, ptr %519, align 4, !tbaa !44
  %520 = getelementptr inbounds %struct.VertRen, ptr %510, i64 0, i32 1, i64 1
  store float %207, ptr %520, align 4, !tbaa !44
  %521 = getelementptr inbounds %struct.VertRen, ptr %510, i64 0, i32 1, i64 2
  store float %209, ptr %521, align 4, !tbaa !44
  %522 = getelementptr inbounds %struct.ParticleStrandData, ptr %4, i64 0, i32 1
  %523 = load ptr, ptr %522, align 8, !tbaa !459
  %524 = getelementptr inbounds %struct.VertRen, ptr %510, i64 0, i32 2
  store ptr %523, ptr %524, align 8, !tbaa !548
  %525 = getelementptr inbounds %struct.VertRen, ptr %510, i64 0, i32 4
  store float -1.000000e+00, ptr %525, align 4, !tbaa !678
  %526 = load float, ptr %5, align 4, !tbaa !44
  store float %526, ptr %509, align 4, !tbaa !44
  %527 = load float, ptr %186, align 4, !tbaa !44
  %528 = getelementptr inbounds float, ptr %509, i64 1
  store float %527, ptr %528, align 4, !tbaa !44
  %529 = load float, ptr %191, align 4, !tbaa !44
  %530 = getelementptr inbounds float, ptr %509, i64 2
  store float %529, ptr %530, align 4, !tbaa !44
  %531 = fsub float %526, %311
  store float %531, ptr %509, align 4, !tbaa !44
  %532 = fsub float %527, %310
  store float %532, ptr %528, align 4, !tbaa !44
  %533 = fsub float %529, %309
  store float %533, ptr %530, align 4, !tbaa !44
  %534 = getelementptr inbounds %struct.VertRen, ptr %509, i64 0, i32 1
  store float %208, ptr %534, align 4, !tbaa !44
  %535 = getelementptr inbounds %struct.VertRen, ptr %509, i64 0, i32 1, i64 1
  store float %207, ptr %535, align 4, !tbaa !44
  %536 = getelementptr inbounds %struct.VertRen, ptr %509, i64 0, i32 1, i64 2
  store float %209, ptr %536, align 4, !tbaa !44
  %537 = getelementptr inbounds %struct.VertRen, ptr %509, i64 0, i32 2
  store ptr %523, ptr %537, align 8, !tbaa !548
  %538 = load float, ptr %525, align 4, !tbaa !678
  %539 = getelementptr inbounds %struct.VertRen, ptr %509, i64 0, i32 4
  store float %538, ptr %539, align 4, !tbaa !678
  br label %788

540:                                              ; preds = %490
  %541 = load i1, ptr @static_particle_strand.second, align 4
  %542 = select i1 %496, i1 true, i1 %541
  br i1 %542, label %543, label %569

543:                                              ; preds = %540
  %544 = getelementptr inbounds %struct.ObjectRen, ptr %1, i64 0, i32 11
  %545 = load i32, ptr %544, align 4, !tbaa !293
  %546 = add nsw i32 %545, 1
  store i32 %546, ptr %544, align 4, !tbaa !293
  %547 = tail call ptr @RE_findOrAddVlak(ptr noundef %1, i32 noundef %545) #16
  %548 = trunc i32 %321 to i8
  %549 = getelementptr inbounds %struct.VlakRen, ptr %547, i64 0, i32 7
  store i8 %548, ptr %549, align 1, !tbaa !559
  %550 = load ptr, ptr @static_particle_strand.v1, align 8, !tbaa !77
  store ptr %550, ptr %547, align 8, !tbaa !553
  %551 = load ptr, ptr @static_particle_strand.v2, align 8, !tbaa !77
  %552 = getelementptr inbounds %struct.VlakRen, ptr %547, i64 0, i32 1
  store ptr %551, ptr %552, align 8, !tbaa !555
  %553 = getelementptr inbounds %struct.ObjectRen, ptr %1, i64 0, i32 10
  %554 = load i32, ptr %553, align 8, !tbaa !211
  %555 = add nsw i32 %554, 1
  store i32 %555, ptr %553, align 8, !tbaa !211
  %556 = tail call ptr @RE_findOrAddVert(ptr noundef %1, i32 noundef %554) #16
  %557 = getelementptr inbounds %struct.VlakRen, ptr %547, i64 0, i32 2
  store ptr %556, ptr %557, align 8, !tbaa !556
  %558 = load i32, ptr %553, align 8, !tbaa !211
  %559 = add nsw i32 %558, 1
  store i32 %559, ptr %553, align 8, !tbaa !211
  %560 = tail call ptr @RE_findOrAddVert(ptr noundef %1, i32 noundef %558) #16
  %561 = getelementptr inbounds %struct.VlakRen, ptr %547, i64 0, i32 3
  store ptr %560, ptr %561, align 8, !tbaa !557
  store ptr %560, ptr @static_particle_strand.v1, align 8, !tbaa !77
  %562 = load ptr, ptr %557, align 8, !tbaa !556
  store ptr %562, ptr @static_particle_strand.v2, align 8, !tbaa !77
  %563 = load i32, ptr %494, align 8, !tbaa !460
  %564 = icmp eq i32 %563, 0
  br i1 %564, label %654, label %565

565:                                              ; preds = %543
  store i1 false, ptr @static_particle_strand.second, align 4
  store float %208, ptr @static_particle_strand.anor.0, align 4, !tbaa !44
  store float %207, ptr @static_particle_strand.anor.1, align 4, !tbaa !44
  store float %209, ptr @static_particle_strand.anor.2, align 4, !tbaa !44
  %566 = load float, ptr %5, align 4, !tbaa !44
  store float %566, ptr @static_particle_strand.avec.0, align 4, !tbaa !44
  %567 = load float, ptr %186, align 4, !tbaa !44
  store float %567, ptr @static_particle_strand.avec.1, align 4, !tbaa !44
  %568 = load float, ptr %191, align 4, !tbaa !44
  store float %568, ptr @static_particle_strand.avec.2, align 4, !tbaa !44
  br label %654

569:                                              ; preds = %540
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %10) #16
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %11) #16
  %570 = load float, ptr @static_particle_strand.avec.0, align 4, !tbaa !44
  %571 = load float, ptr %5, align 4, !tbaa !44
  %572 = fsub float %570, %571
  store float %572, ptr %10, align 4, !tbaa !44
  %573 = load float, ptr @static_particle_strand.avec.1, align 4, !tbaa !44
  %574 = load float, ptr %186, align 4, !tbaa !44
  %575 = fsub float %573, %574
  %576 = getelementptr inbounds float, ptr %10, i64 1
  store float %575, ptr %576, align 4, !tbaa !44
  %577 = load float, ptr @static_particle_strand.avec.2, align 4, !tbaa !44
  %578 = load float, ptr %191, align 4, !tbaa !44
  %579 = fsub float %577, %578
  %580 = getelementptr inbounds float, ptr %10, i64 2
  store float %579, ptr %580, align 4, !tbaa !44
  call void @project_v3_v3v3(ptr noundef nonnull %11, ptr noundef nonnull %10, ptr noundef nonnull %5) #16
  %581 = load float, ptr %10, align 4, !tbaa !44
  %582 = load float, ptr %11, align 4, !tbaa !44
  %583 = fsub float %581, %582
  store float %583, ptr %10, align 4, !tbaa !44
  %584 = load float, ptr %576, align 4, !tbaa !44
  %585 = getelementptr inbounds float, ptr %11, i64 1
  %586 = load float, ptr %585, align 4, !tbaa !44
  %587 = fsub float %584, %586
  store float %587, ptr %576, align 4, !tbaa !44
  %588 = load float, ptr %580, align 4, !tbaa !44
  %589 = getelementptr inbounds float, ptr %11, i64 2
  %590 = load float, ptr %589, align 4, !tbaa !44
  %591 = fsub float %588, %590
  store float %591, ptr %580, align 4, !tbaa !44
  %592 = load float, ptr %191, align 4, !tbaa !44
  %593 = load float, ptr %223, align 4, !tbaa !44
  %594 = load float, ptr %225, align 4, !tbaa !44
  %595 = call float @llvm.fmuladd.f32(float %592, float %593, float %594)
  %596 = load i32, ptr %228, align 4, !tbaa !223
  %597 = sitofp i32 %596 to float
  %598 = fmul float %583, %597
  %599 = load float, ptr %222, align 8, !tbaa !44
  %600 = fmul float %599, %598
  %601 = fdiv float %600, %595
  %602 = load i32, ptr %234, align 8, !tbaa !224
  %603 = sitofp i32 %602 to float
  %604 = fmul float %587, %603
  %605 = load float, ptr %238, align 4, !tbaa !44
  %606 = fmul float %605, %604
  %607 = fdiv float %606, %595
  %608 = fmul float %607, %607
  %609 = call float @llvm.fmuladd.f32(float %601, float %601, float %608)
  %610 = call float @sqrtf(float noundef %609) #16
  %611 = load float, ptr @static_particle_strand.anor.0, align 4, !tbaa !44
  %612 = load float, ptr @static_particle_strand.anor.1, align 4, !tbaa !44
  %613 = fmul float %207, %612
  %614 = call float @llvm.fmuladd.f32(float %611, float %208, float %613)
  %615 = load float, ptr @static_particle_strand.anor.2, align 4, !tbaa !44
  %616 = call float @llvm.fmuladd.f32(float %615, float %209, float %614)
  %617 = getelementptr inbounds %struct.ParticleStrandData, ptr %4, i64 0, i32 5
  %618 = load float, ptr %617, align 4, !tbaa !464
  %619 = fcmp olt float %616, %618
  br i1 %619, label %620, label %647

620:                                              ; preds = %569
  %621 = getelementptr inbounds %struct.ParticleStrandData, ptr %4, i64 0, i32 6
  %622 = load float, ptr %621, align 8, !tbaa !462
  %623 = fcmp ogt float %610, %622
  br i1 %623, label %624, label %647

624:                                              ; preds = %620
  %625 = getelementptr inbounds %struct.ObjectRen, ptr %1, i64 0, i32 11
  %626 = load i32, ptr %625, align 4, !tbaa !293
  %627 = add nsw i32 %626, 1
  store i32 %627, ptr %625, align 4, !tbaa !293
  %628 = call ptr @RE_findOrAddVlak(ptr noundef %1, i32 noundef %626) #16
  %629 = trunc i32 %321 to i8
  %630 = getelementptr inbounds %struct.VlakRen, ptr %628, i64 0, i32 7
  store i8 %629, ptr %630, align 1, !tbaa !559
  %631 = load ptr, ptr @static_particle_strand.v1, align 8, !tbaa !77
  store ptr %631, ptr %628, align 8, !tbaa !553
  %632 = load ptr, ptr @static_particle_strand.v2, align 8, !tbaa !77
  %633 = getelementptr inbounds %struct.VlakRen, ptr %628, i64 0, i32 1
  store ptr %632, ptr %633, align 8, !tbaa !555
  %634 = getelementptr inbounds %struct.ObjectRen, ptr %1, i64 0, i32 10
  %635 = load i32, ptr %634, align 8, !tbaa !211
  %636 = add nsw i32 %635, 1
  store i32 %636, ptr %634, align 8, !tbaa !211
  %637 = call ptr @RE_findOrAddVert(ptr noundef %1, i32 noundef %635) #16
  %638 = getelementptr inbounds %struct.VlakRen, ptr %628, i64 0, i32 2
  store ptr %637, ptr %638, align 8, !tbaa !556
  %639 = load i32, ptr %634, align 8, !tbaa !211
  %640 = add nsw i32 %639, 1
  store i32 %640, ptr %634, align 8, !tbaa !211
  %641 = call ptr @RE_findOrAddVert(ptr noundef %1, i32 noundef %639) #16
  %642 = getelementptr inbounds %struct.VlakRen, ptr %628, i64 0, i32 3
  store ptr %641, ptr %642, align 8, !tbaa !557
  store ptr %641, ptr @static_particle_strand.v1, align 8, !tbaa !77
  %643 = load ptr, ptr %638, align 8, !tbaa !556
  store ptr %643, ptr @static_particle_strand.v2, align 8, !tbaa !77
  store float %208, ptr @static_particle_strand.anor.0, align 4, !tbaa !44
  store float %207, ptr @static_particle_strand.anor.1, align 4, !tbaa !44
  store float %209, ptr @static_particle_strand.anor.2, align 4, !tbaa !44
  %644 = load float, ptr %5, align 4, !tbaa !44
  store float %644, ptr @static_particle_strand.avec.0, align 4, !tbaa !44
  %645 = load float, ptr %186, align 4, !tbaa !44
  store float %645, ptr @static_particle_strand.avec.1, align 4, !tbaa !44
  %646 = load float, ptr %191, align 4, !tbaa !44
  store float %646, ptr @static_particle_strand.avec.2, align 4, !tbaa !44
  br label %652

647:                                              ; preds = %620, %569
  %648 = getelementptr inbounds %struct.ObjectRen, ptr %1, i64 0, i32 11
  %649 = load i32, ptr %648, align 4, !tbaa !293
  %650 = add nsw i32 %649, -1
  %651 = call ptr @RE_findOrAddVlak(ptr noundef %1, i32 noundef %650) #16
  br label %652

652:                                              ; preds = %647, %624
  %653 = phi ptr [ %628, %624 ], [ %651, %647 ]
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %11) #16
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %10) #16
  br label %654

654:                                              ; preds = %652, %565, %543
  %655 = phi ptr [ %547, %565 ], [ %547, %543 ], [ %653, %652 ]
  %656 = getelementptr inbounds %struct.VlakRen, ptr %655, i64 0, i32 3
  %657 = load ptr, ptr %656, align 8, !tbaa !557
  %658 = load float, ptr %5, align 4, !tbaa !44
  store float %658, ptr %657, align 4, !tbaa !44
  %659 = load float, ptr %186, align 4, !tbaa !44
  %660 = getelementptr inbounds float, ptr %657, i64 1
  store float %659, ptr %660, align 4, !tbaa !44
  %661 = load float, ptr %191, align 4, !tbaa !44
  %662 = getelementptr inbounds float, ptr %657, i64 2
  store float %661, ptr %662, align 4, !tbaa !44
  %663 = fadd float %311, %658
  store float %663, ptr %657, align 4, !tbaa !44
  %664 = fadd float %310, %659
  store float %664, ptr %660, align 4, !tbaa !44
  %665 = fadd float %309, %661
  store float %665, ptr %662, align 4, !tbaa !44
  %666 = getelementptr inbounds %struct.VertRen, ptr %657, i64 0, i32 1
  store float %208, ptr %666, align 4, !tbaa !44
  %667 = getelementptr inbounds %struct.VertRen, ptr %657, i64 0, i32 1, i64 1
  store float %207, ptr %667, align 4, !tbaa !44
  %668 = getelementptr inbounds %struct.VertRen, ptr %657, i64 0, i32 1, i64 2
  store float %209, ptr %668, align 4, !tbaa !44
  %669 = getelementptr inbounds %struct.ParticleStrandData, ptr %4, i64 0, i32 1
  %670 = load ptr, ptr %669, align 8, !tbaa !459
  %671 = getelementptr inbounds %struct.VertRen, ptr %657, i64 0, i32 2
  store ptr %670, ptr %671, align 8, !tbaa !548
  %672 = getelementptr inbounds %struct.ParticleStrandData, ptr %4, i64 0, i32 4
  %673 = load float, ptr %672, align 8, !tbaa !520
  %674 = call float @llvm.fmuladd.f32(float %673, float 2.000000e+00, float -1.000000e+00)
  %675 = getelementptr inbounds %struct.VertRen, ptr %657, i64 0, i32 4
  store float %674, ptr %675, align 4, !tbaa !678
  %676 = getelementptr inbounds %struct.VlakRen, ptr %655, i64 0, i32 2
  %677 = load ptr, ptr %676, align 8, !tbaa !556
  %678 = load float, ptr %5, align 4, !tbaa !44
  store float %678, ptr %677, align 4, !tbaa !44
  %679 = load float, ptr %186, align 4, !tbaa !44
  %680 = getelementptr inbounds float, ptr %677, i64 1
  store float %679, ptr %680, align 4, !tbaa !44
  %681 = load float, ptr %191, align 4, !tbaa !44
  %682 = getelementptr inbounds float, ptr %677, i64 2
  store float %681, ptr %682, align 4, !tbaa !44
  %683 = fsub float %678, %311
  store float %683, ptr %677, align 4, !tbaa !44
  %684 = fsub float %679, %310
  store float %684, ptr %680, align 4, !tbaa !44
  %685 = fsub float %681, %309
  store float %685, ptr %682, align 4, !tbaa !44
  %686 = getelementptr inbounds %struct.VertRen, ptr %677, i64 0, i32 1
  store float %208, ptr %686, align 4, !tbaa !44
  %687 = getelementptr inbounds %struct.VertRen, ptr %677, i64 0, i32 1, i64 1
  store float %207, ptr %687, align 4, !tbaa !44
  %688 = getelementptr inbounds %struct.VertRen, ptr %677, i64 0, i32 1, i64 2
  store float %209, ptr %688, align 4, !tbaa !44
  %689 = getelementptr inbounds %struct.VertRen, ptr %677, i64 0, i32 2
  store ptr %670, ptr %689, align 8, !tbaa !548
  %690 = load float, ptr %675, align 4, !tbaa !678
  %691 = getelementptr inbounds %struct.VertRen, ptr %677, i64 0, i32 4
  store float %690, ptr %691, align 4, !tbaa !678
  %692 = getelementptr inbounds %struct.VlakRen, ptr %655, i64 0, i32 4
  %693 = getelementptr inbounds %struct.VlakRen, ptr %655, i64 0, i32 1
  %694 = load ptr, ptr %693, align 8, !tbaa !555
  %695 = load ptr, ptr %655, align 8, !tbaa !553
  %696 = call float @normal_quad_v3(ptr noundef nonnull %692, ptr noundef nonnull %657, ptr noundef nonnull %677, ptr noundef %694, ptr noundef %695) #16
  %697 = getelementptr inbounds %struct.VlakRen, ptr %655, i64 0, i32 5
  store ptr %3, ptr %697, align 8, !tbaa !558
  %698 = getelementptr inbounds %struct.VlakRen, ptr %655, i64 0, i32 8
  store i8 2, ptr %698, align 2, !tbaa !560
  %699 = getelementptr inbounds %struct.ParticleStrandData, ptr %4, i64 0, i32 3
  %700 = load ptr, ptr %699, align 8, !tbaa !510
  %701 = icmp eq ptr %700, null
  br i1 %701, label %712, label %702

702:                                              ; preds = %654
  %703 = call ptr @RE_vlakren_get_surfnor(ptr noundef %1, ptr noundef nonnull %655, i32 noundef 1) #16
  %704 = load ptr, ptr %699, align 8, !tbaa !510
  %705 = load float, ptr %704, align 4, !tbaa !44
  store float %705, ptr %703, align 4, !tbaa !44
  %706 = getelementptr inbounds float, ptr %704, i64 1
  %707 = load float, ptr %706, align 4, !tbaa !44
  %708 = getelementptr inbounds float, ptr %703, i64 1
  store float %707, ptr %708, align 4, !tbaa !44
  %709 = getelementptr inbounds float, ptr %704, i64 2
  %710 = load float, ptr %709, align 4, !tbaa !44
  %711 = getelementptr inbounds float, ptr %703, i64 2
  store float %710, ptr %711, align 4, !tbaa !44
  br label %712

712:                                              ; preds = %702, %654
  %713 = getelementptr inbounds %struct.ParticleStrandData, ptr %4, i64 0, i32 2
  %714 = load ptr, ptr %713, align 8, !tbaa !443
  %715 = icmp eq ptr %714, null
  br i1 %715, label %764, label %716

716:                                              ; preds = %712
  %717 = getelementptr inbounds %struct.ParticleStrandData, ptr %4, i64 0, i32 8
  %718 = load i32, ptr %717, align 8, !tbaa !441
  %719 = icmp sgt i32 %718, 0
  br i1 %719, label %720, label %741

720:                                              ; preds = %716, %720
  %721 = phi i64 [ %737, %720 ], [ 0, %716 ]
  %722 = trunc i64 %721 to i32
  %723 = call ptr @RE_vlakren_get_tface(ptr noundef %1, ptr noundef nonnull %655, i32 noundef %722, ptr noundef null, i32 noundef 1) #16
  %724 = load ptr, ptr %713, align 8, !tbaa !443
  %725 = shl nuw nsw i64 %721, 1
  %726 = getelementptr inbounds float, ptr %724, i64 %725
  %727 = load float, ptr %726, align 4, !tbaa !44
  %728 = getelementptr inbounds [4 x [2 x float]], ptr %723, i64 0, i64 3
  store float %727, ptr %728, align 8, !tbaa !44
  %729 = getelementptr inbounds [4 x [2 x float]], ptr %723, i64 0, i64 2
  store float %727, ptr %729, align 8, !tbaa !44
  %730 = getelementptr inbounds [4 x [2 x float]], ptr %723, i64 0, i64 1
  store float %727, ptr %730, align 8, !tbaa !44
  store float %727, ptr %723, align 8, !tbaa !44
  %731 = getelementptr inbounds float, ptr %726, i64 1
  %732 = load float, ptr %731, align 4, !tbaa !44
  %733 = getelementptr inbounds [4 x [2 x float]], ptr %723, i64 0, i64 3, i64 1
  store float %732, ptr %733, align 4, !tbaa !44
  %734 = getelementptr inbounds [4 x [2 x float]], ptr %723, i64 0, i64 2, i64 1
  store float %732, ptr %734, align 4, !tbaa !44
  %735 = getelementptr inbounds [4 x [2 x float]], ptr %723, i64 0, i64 1, i64 1
  store float %732, ptr %735, align 4, !tbaa !44
  %736 = getelementptr inbounds [2 x float], ptr %723, i64 0, i64 1
  store float %732, ptr %736, align 4, !tbaa !44
  %737 = add nuw nsw i64 %721, 1
  %738 = load i32, ptr %717, align 8, !tbaa !441
  %739 = sext i32 %738 to i64
  %740 = icmp slt i64 %737, %739
  br i1 %740, label %720, label %741, !llvm.loop !681

741:                                              ; preds = %720, %716
  %742 = getelementptr inbounds %struct.ParticleStrandData, ptr %4, i64 0, i32 13
  %743 = load i32, ptr %742, align 4, !tbaa !435
  %744 = icmp sgt i32 %743, -1
  br i1 %744, label %745, label %764

745:                                              ; preds = %741
  %746 = call ptr @RE_vlakren_get_tface(ptr noundef %1, ptr noundef nonnull %655, i32 noundef %743, ptr noundef null, i32 noundef 0) #16
  %747 = getelementptr inbounds [4 x [2 x float]], ptr %746, i64 0, i64 3
  store float 0.000000e+00, ptr %747, align 8, !tbaa !44
  store float 0.000000e+00, ptr %746, align 8, !tbaa !44
  %748 = getelementptr inbounds [4 x [2 x float]], ptr %746, i64 0, i64 2
  store float 1.000000e+00, ptr %748, align 8, !tbaa !44
  %749 = getelementptr inbounds [4 x [2 x float]], ptr %746, i64 0, i64 1
  store float 1.000000e+00, ptr %749, align 8, !tbaa !44
  %750 = load ptr, ptr %655, align 8, !tbaa !553
  %751 = getelementptr inbounds %struct.VertRen, ptr %750, i64 0, i32 4
  %752 = load float, ptr %751, align 4, !tbaa !678
  %753 = fadd float %752, 1.000000e+00
  %754 = fmul float %753, 5.000000e-01
  %755 = getelementptr inbounds [4 x [2 x float]], ptr %746, i64 0, i64 1, i64 1
  store float %754, ptr %755, align 4, !tbaa !44
  %756 = getelementptr inbounds [2 x float], ptr %746, i64 0, i64 1
  store float %754, ptr %756, align 4, !tbaa !44
  %757 = load ptr, ptr %676, align 8, !tbaa !556
  %758 = getelementptr inbounds %struct.VertRen, ptr %757, i64 0, i32 4
  %759 = load float, ptr %758, align 4, !tbaa !678
  %760 = fadd float %759, 1.000000e+00
  %761 = fmul float %760, 5.000000e-01
  %762 = getelementptr inbounds [4 x [2 x float]], ptr %746, i64 0, i64 3, i64 1
  store float %761, ptr %762, align 4, !tbaa !44
  %763 = getelementptr inbounds [4 x [2 x float]], ptr %746, i64 0, i64 2, i64 1
  store float %761, ptr %763, align 4, !tbaa !44
  br label %764

764:                                              ; preds = %745, %741, %712
  %765 = load ptr, ptr %4, align 8, !tbaa !444
  %766 = icmp eq ptr %765, null
  br i1 %766, label %788, label %767

767:                                              ; preds = %764
  %768 = getelementptr inbounds %struct.ParticleStrandData, ptr %4, i64 0, i32 9
  %769 = load i32, ptr %768, align 4, !tbaa !442
  %770 = icmp sgt i32 %769, 0
  br i1 %770, label %771, label %788

771:                                              ; preds = %767, %771
  %772 = phi i64 [ %784, %771 ], [ 0, %767 ]
  %773 = trunc i64 %772 to i32
  %774 = call ptr @RE_vlakren_get_mcol(ptr noundef %1, ptr noundef nonnull %655, i32 noundef %773, ptr noundef null, i32 noundef 1) #16
  %775 = getelementptr inbounds %struct.MCol, ptr %774, i64 1
  %776 = getelementptr inbounds %struct.MCol, ptr %774, i64 2
  %777 = getelementptr inbounds %struct.MCol, ptr %774, i64 3
  %778 = load ptr, ptr %4, align 8, !tbaa !444
  %779 = getelementptr inbounds %struct.MCol, ptr %778, i64 %772
  %780 = load i32, ptr %779, align 1
  store i32 %780, ptr %777, align 1
  store i32 %780, ptr %776, align 1
  store i32 %780, ptr %775, align 1
  store i32 %780, ptr %774, align 1
  %781 = load ptr, ptr %4, align 8, !tbaa !444
  %782 = getelementptr inbounds %struct.MCol, ptr %781, i64 %772
  %783 = load i32, ptr %782, align 1
  store i32 %783, ptr %777, align 1
  store i32 %783, ptr %776, align 1
  store i32 %783, ptr %775, align 1
  store i32 %783, ptr %774, align 1
  %784 = add nuw nsw i64 %772, 1
  %785 = load i32, ptr %768, align 4, !tbaa !442
  %786 = sext i32 %785 to i64
  %787 = icmp slt i64 %784, %786
  br i1 %787, label %771, label %788, !llvm.loop !682

788:                                              ; preds = %473, %771, %469, %767, %764, %502, %466, %156, %96, %74, %176, %167
  ret void
}

declare void @psys_make_temp_pointcache(ptr noundef, ptr noundef) local_unnamed_addr #6

declare void @psys_get_particle_on_path(ptr noundef, i32 noundef, ptr noundef, i8 noundef zeroext) local_unnamed_addr #6

declare void @mul_m4_v4(ptr noundef, ptr noundef) local_unnamed_addr #6

; Function Attrs: nounwind uwtable
define internal fastcc void @particle_normal_ren(i16 noundef signext %0, ptr nocapture noundef readonly %1, ptr noundef %2, ptr noundef %3, ptr noundef %4, ptr noundef %5, ptr nocapture noundef %6, ptr noundef %7, ptr nocapture noundef readonly %8, i32 noundef %9, float noundef %10, ptr noundef %11) unnamed_addr #4 {
  %13 = alloca [3 x float], align 4
  %14 = alloca [3 x float], align 4
  %15 = alloca [3 x float], align 4
  %16 = alloca [3 x float], align 4
  %17 = alloca [3 x float], align 4
  %18 = alloca [3 x float], align 4
  %19 = alloca [3 x float], align 4
  %20 = alloca [3 x float], align 4
  %21 = alloca [3 x float], align 4
  %22 = alloca [3 x float], align 4
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %19) #16
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %20) #16
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %21) #16
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %22) #16
  %23 = load float, ptr %8, align 4, !tbaa !44
  store float %23, ptr %19, align 4, !tbaa !44
  %24 = getelementptr inbounds float, ptr %8, i64 1
  %25 = load float, ptr %24, align 4, !tbaa !44
  %26 = getelementptr inbounds float, ptr %19, i64 1
  store float %25, ptr %26, align 4, !tbaa !44
  %27 = getelementptr inbounds float, ptr %8, i64 2
  %28 = load float, ptr %27, align 4, !tbaa !44
  %29 = getelementptr inbounds float, ptr %19, i64 2
  store float %28, ptr %29, align 4, !tbaa !44
  %30 = icmp eq i16 %0, 9
  br i1 %30, label %105, label %31

31:                                               ; preds = %12
  %32 = getelementptr inbounds %struct.Render, ptr %2, i64 0, i32 32
  call void @mul_m4_v3(ptr noundef nonnull %32, ptr noundef nonnull %19) #16
  %33 = icmp eq i16 %0, 5
  br i1 %33, label %34, label %459

34:                                               ; preds = %31
  %35 = getelementptr inbounds %struct.ParticleStrandData, ptr %6, i64 0, i32 11
  store i32 1, ptr %35, align 4, !tbaa !676
  %36 = getelementptr inbounds %struct.ParticleStrandData, ptr %6, i64 0, i32 4
  store float 0.000000e+00, ptr %36, align 8, !tbaa !520
  %37 = getelementptr inbounds %struct.ParticleStrandData, ptr %6, i64 0, i32 7
  store float %10, ptr %37, align 4, !tbaa !518
  %38 = getelementptr inbounds %struct.ParticleKey, ptr %8, i64 0, i32 1
  %39 = load float, ptr %38, align 4, !tbaa !44
  store float %39, ptr %22, align 4, !tbaa !44
  %40 = getelementptr inbounds %struct.ParticleKey, ptr %8, i64 0, i32 1, i64 1
  %41 = load float, ptr %40, align 4, !tbaa !44
  %42 = getelementptr inbounds float, ptr %22, i64 1
  store float %41, ptr %42, align 4, !tbaa !44
  %43 = getelementptr inbounds %struct.ParticleKey, ptr %8, i64 0, i32 1, i64 2
  %44 = load float, ptr %43, align 4, !tbaa !44
  %45 = getelementptr inbounds float, ptr %22, i64 2
  store float %44, ptr %45, align 4, !tbaa !44
  call void @mul_mat3_m4_v3(ptr noundef nonnull %32, ptr noundef nonnull %22) #16
  %46 = load float, ptr %22, align 4, !tbaa !44
  %47 = load float, ptr %42, align 4, !tbaa !44
  %48 = fmul float %47, %47
  %49 = call float @llvm.fmuladd.f32(float %46, float %46, float %48)
  %50 = load float, ptr %45, align 4, !tbaa !44
  %51 = call float @llvm.fmuladd.f32(float %50, float %50, float %49)
  %52 = fcmp ogt float %51, 0x38AA95A5C0000000
  br i1 %52, label %53, label %62

53:                                               ; preds = %34
  %54 = call float @sqrtf(float noundef %51) #16
  %55 = fdiv float 1.000000e+00, %54
  %56 = load float, ptr %22, align 4, !tbaa !44
  %57 = fmul float %56, %55
  store float %57, ptr %22, align 4, !tbaa !44
  %58 = load float, ptr %42, align 4, !tbaa !44
  %59 = fmul float %55, %58
  store float %59, ptr %42, align 4, !tbaa !44
  %60 = load float, ptr %45, align 4, !tbaa !44
  %61 = fmul float %55, %60
  br label %63

62:                                               ; preds = %34
  store float 0.000000e+00, ptr %22, align 4, !tbaa !44
  store float 0.000000e+00, ptr %42, align 4, !tbaa !44
  br label %63

63:                                               ; preds = %53, %62
  %64 = phi float [ 0.000000e+00, %62 ], [ %61, %53 ]
  store float %64, ptr %45, align 4, !tbaa !44
  %65 = getelementptr inbounds %struct.ParticleSettings, ptr %1, i64 0, i32 15
  %66 = load i32, ptr %65, align 8, !tbaa !273
  %67 = and i32 %66, 4096
  %68 = icmp eq i32 %67, 0
  br i1 %68, label %83, label %69

69:                                               ; preds = %63
  %70 = load float, ptr %38, align 4, !tbaa !44
  %71 = load float, ptr %40, align 4, !tbaa !44
  %72 = fmul float %71, %71
  %73 = call float @llvm.fmuladd.f32(float %70, float %70, float %72)
  %74 = load float, ptr %43, align 4, !tbaa !44
  %75 = call float @llvm.fmuladd.f32(float %74, float %74, float %73)
  %76 = call float @sqrtf(float noundef %75) #16
  %77 = load float, ptr %22, align 4, !tbaa !44
  %78 = fmul float %76, %77
  store float %78, ptr %22, align 4, !tbaa !44
  %79 = load float, ptr %42, align 4, !tbaa !44
  %80 = fmul float %76, %79
  store float %80, ptr %42, align 4, !tbaa !44
  %81 = load float, ptr %45, align 4, !tbaa !44
  %82 = fmul float %76, %81
  store float %82, ptr %45, align 4, !tbaa !44
  br label %83

83:                                               ; preds = %69, %63
  %84 = getelementptr inbounds %struct.ParticleSettings, ptr %1, i64 0, i32 116
  %85 = load float, ptr %84, align 8, !tbaa !44
  %86 = fneg float %85
  %87 = load float, ptr %19, align 4, !tbaa !44
  %88 = load float, ptr %22, align 4, !tbaa !44
  %89 = call float @llvm.fmuladd.f32(float %88, float %86, float %87)
  store float %89, ptr %20, align 4, !tbaa !44
  %90 = load float, ptr %26, align 4, !tbaa !44
  %91 = load float, ptr %42, align 4, !tbaa !44
  %92 = call float @llvm.fmuladd.f32(float %91, float %86, float %90)
  %93 = getelementptr inbounds float, ptr %20, i64 1
  store float %92, ptr %93, align 4, !tbaa !44
  %94 = load float, ptr %29, align 4, !tbaa !44
  %95 = load float, ptr %45, align 4, !tbaa !44
  %96 = call float @llvm.fmuladd.f32(float %95, float %86, float %94)
  %97 = getelementptr inbounds float, ptr %20, i64 2
  store float %96, ptr %97, align 4, !tbaa !44
  %98 = getelementptr inbounds %struct.ParticleSettings, ptr %1, i64 0, i32 116, i64 1
  %99 = load float, ptr %98, align 4, !tbaa !44
  %100 = call float @llvm.fmuladd.f32(float %88, float %99, float %87)
  store float %100, ptr %21, align 4, !tbaa !44
  %101 = call float @llvm.fmuladd.f32(float %91, float %99, float %90)
  %102 = getelementptr inbounds float, ptr %21, i64 1
  store float %101, ptr %102, align 4, !tbaa !44
  %103 = call float @llvm.fmuladd.f32(float %95, float %99, float %94)
  %104 = getelementptr inbounds float, ptr %21, i64 2
  store float %103, ptr %104, align 4, !tbaa !44
  call fastcc void @particle_curve(ptr noundef %2, ptr noundef %3, ptr noundef %4, ptr noundef %5, ptr noundef %6, ptr noundef nonnull %20, ptr noundef nonnull %21, i32 noundef %9, ptr noundef %11)
  br label %472

105:                                              ; preds = %12
  %106 = getelementptr inbounds %struct.ParticleBillboardData, ptr %7, i64 0, i32 1
  store float %23, ptr %106, align 4, !tbaa !44
  %107 = getelementptr inbounds %struct.ParticleBillboardData, ptr %7, i64 0, i32 1, i64 1
  store float %25, ptr %107, align 4, !tbaa !44
  %108 = getelementptr inbounds %struct.ParticleBillboardData, ptr %7, i64 0, i32 1, i64 2
  store float %28, ptr %108, align 4, !tbaa !44
  %109 = getelementptr inbounds %struct.ParticleBillboardData, ptr %7, i64 0, i32 2
  %110 = getelementptr inbounds %struct.ParticleKey, ptr %8, i64 0, i32 1
  %111 = load float, ptr %110, align 4, !tbaa !44
  store float %111, ptr %109, align 4, !tbaa !44
  %112 = getelementptr inbounds %struct.ParticleKey, ptr %8, i64 0, i32 1, i64 1
  %113 = load float, ptr %112, align 4, !tbaa !44
  %114 = getelementptr inbounds %struct.ParticleBillboardData, ptr %7, i64 0, i32 2, i64 1
  store float %113, ptr %114, align 4, !tbaa !44
  %115 = getelementptr inbounds %struct.ParticleKey, ptr %8, i64 0, i32 1, i64 2
  %116 = load float, ptr %115, align 4, !tbaa !44
  %117 = getelementptr inbounds %struct.ParticleBillboardData, ptr %7, i64 0, i32 2, i64 2
  store float %116, ptr %117, align 4, !tbaa !44
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %13) #16
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %14) #16
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %15) #16
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %16) #16
  %118 = getelementptr inbounds %struct.ParticleBillboardData, ptr %7, i64 0, i32 14
  %119 = load i16, ptr %118, align 2, !tbaa !457
  %120 = sext i16 %119 to i32
  %121 = mul nsw i32 %120, %120
  %122 = getelementptr inbounds %struct.ObjectRen, ptr %3, i64 0, i32 11
  %123 = load i32, ptr %122, align 4, !tbaa !293
  %124 = add nsw i32 %123, 1
  store i32 %124, ptr %122, align 4, !tbaa !293
  %125 = tail call ptr @RE_findOrAddVlak(ptr noundef %3, i32 noundef %123) #16
  %126 = getelementptr inbounds %struct.ObjectRen, ptr %3, i64 0, i32 10
  %127 = load i32, ptr %126, align 8, !tbaa !211
  %128 = add nsw i32 %127, 1
  store i32 %128, ptr %126, align 8, !tbaa !211
  %129 = tail call ptr @RE_findOrAddVert(ptr noundef %3, i32 noundef %127) #16
  store ptr %129, ptr %125, align 8, !tbaa !553
  %130 = load i32, ptr %126, align 8, !tbaa !211
  %131 = add nsw i32 %130, 1
  store i32 %131, ptr %126, align 8, !tbaa !211
  %132 = tail call ptr @RE_findOrAddVert(ptr noundef %3, i32 noundef %130) #16
  %133 = getelementptr inbounds %struct.VlakRen, ptr %125, i64 0, i32 1
  store ptr %132, ptr %133, align 8, !tbaa !555
  %134 = load i32, ptr %126, align 8, !tbaa !211
  %135 = add nsw i32 %134, 1
  store i32 %135, ptr %126, align 8, !tbaa !211
  %136 = tail call ptr @RE_findOrAddVert(ptr noundef %3, i32 noundef %134) #16
  %137 = getelementptr inbounds %struct.VlakRen, ptr %125, i64 0, i32 2
  store ptr %136, ptr %137, align 8, !tbaa !556
  %138 = load i32, ptr %126, align 8, !tbaa !211
  %139 = add nsw i32 %138, 1
  store i32 %139, ptr %126, align 8, !tbaa !211
  %140 = tail call ptr @RE_findOrAddVert(ptr noundef %3, i32 noundef %138) #16
  %141 = getelementptr inbounds %struct.VlakRen, ptr %125, i64 0, i32 3
  store ptr %140, ptr %141, align 8, !tbaa !557
  call void @psys_make_billboard(ptr noundef %7, ptr noundef nonnull %13, ptr noundef nonnull %14, ptr noundef nonnull %15, ptr noundef nonnull %16) #16
  %142 = load ptr, ptr %125, align 8, !tbaa !553
  %143 = load float, ptr %16, align 4, !tbaa !44
  %144 = load float, ptr %13, align 4, !tbaa !44
  %145 = fadd float %143, %144
  store float %145, ptr %142, align 4, !tbaa !44
  %146 = getelementptr inbounds float, ptr %16, i64 1
  %147 = load float, ptr %146, align 4, !tbaa !44
  %148 = getelementptr inbounds float, ptr %13, i64 1
  %149 = load float, ptr %148, align 4, !tbaa !44
  %150 = fadd float %147, %149
  %151 = getelementptr inbounds float, ptr %142, i64 1
  store float %150, ptr %151, align 4, !tbaa !44
  %152 = getelementptr inbounds float, ptr %16, i64 2
  %153 = load float, ptr %152, align 4, !tbaa !44
  %154 = getelementptr inbounds float, ptr %13, i64 2
  %155 = load float, ptr %154, align 4, !tbaa !44
  %156 = fadd float %153, %155
  %157 = getelementptr inbounds float, ptr %142, i64 2
  store float %156, ptr %157, align 4, !tbaa !44
  %158 = load float, ptr %14, align 4, !tbaa !44
  %159 = fadd float %145, %158
  store float %159, ptr %142, align 4, !tbaa !44
  %160 = getelementptr inbounds float, ptr %14, i64 1
  %161 = load float, ptr %160, align 4, !tbaa !44
  %162 = fadd float %150, %161
  store float %162, ptr %151, align 4, !tbaa !44
  %163 = getelementptr inbounds float, ptr %14, i64 2
  %164 = load float, ptr %163, align 4, !tbaa !44
  %165 = fadd float %156, %164
  store float %165, ptr %157, align 4, !tbaa !44
  %166 = getelementptr inbounds %struct.Render, ptr %2, i64 0, i32 32
  call void @mul_m4_v3(ptr noundef nonnull %166, ptr noundef nonnull %142) #16
  %167 = load ptr, ptr %133, align 8, !tbaa !555
  %168 = load float, ptr %16, align 4, !tbaa !44
  %169 = load float, ptr %13, align 4, !tbaa !44
  %170 = fsub float %168, %169
  store float %170, ptr %167, align 4, !tbaa !44
  %171 = load float, ptr %146, align 4, !tbaa !44
  %172 = load float, ptr %148, align 4, !tbaa !44
  %173 = fsub float %171, %172
  %174 = getelementptr inbounds float, ptr %167, i64 1
  store float %173, ptr %174, align 4, !tbaa !44
  %175 = load float, ptr %152, align 4, !tbaa !44
  %176 = load float, ptr %154, align 4, !tbaa !44
  %177 = fsub float %175, %176
  %178 = getelementptr inbounds float, ptr %167, i64 2
  store float %177, ptr %178, align 4, !tbaa !44
  %179 = load float, ptr %14, align 4, !tbaa !44
  %180 = fadd float %170, %179
  store float %180, ptr %167, align 4, !tbaa !44
  %181 = load float, ptr %160, align 4, !tbaa !44
  %182 = fadd float %173, %181
  store float %182, ptr %174, align 4, !tbaa !44
  %183 = load float, ptr %163, align 4, !tbaa !44
  %184 = fadd float %177, %183
  store float %184, ptr %178, align 4, !tbaa !44
  call void @mul_m4_v3(ptr noundef nonnull %166, ptr noundef nonnull %167) #16
  %185 = load ptr, ptr %137, align 8, !tbaa !556
  %186 = load float, ptr %16, align 4, !tbaa !44
  %187 = load float, ptr %13, align 4, !tbaa !44
  %188 = fsub float %186, %187
  store float %188, ptr %185, align 4, !tbaa !44
  %189 = load float, ptr %146, align 4, !tbaa !44
  %190 = load float, ptr %148, align 4, !tbaa !44
  %191 = fsub float %189, %190
  %192 = getelementptr inbounds float, ptr %185, i64 1
  store float %191, ptr %192, align 4, !tbaa !44
  %193 = load float, ptr %152, align 4, !tbaa !44
  %194 = load float, ptr %154, align 4, !tbaa !44
  %195 = fsub float %193, %194
  %196 = getelementptr inbounds float, ptr %185, i64 2
  store float %195, ptr %196, align 4, !tbaa !44
  %197 = load float, ptr %14, align 4, !tbaa !44
  %198 = fsub float %188, %197
  store float %198, ptr %185, align 4, !tbaa !44
  %199 = load float, ptr %160, align 4, !tbaa !44
  %200 = fsub float %191, %199
  store float %200, ptr %192, align 4, !tbaa !44
  %201 = load float, ptr %163, align 4, !tbaa !44
  %202 = fsub float %195, %201
  store float %202, ptr %196, align 4, !tbaa !44
  call void @mul_m4_v3(ptr noundef nonnull %166, ptr noundef nonnull %185) #16
  %203 = load ptr, ptr %141, align 8, !tbaa !557
  %204 = load float, ptr %16, align 4, !tbaa !44
  %205 = load float, ptr %13, align 4, !tbaa !44
  %206 = fadd float %204, %205
  store float %206, ptr %203, align 4, !tbaa !44
  %207 = load float, ptr %146, align 4, !tbaa !44
  %208 = load float, ptr %148, align 4, !tbaa !44
  %209 = fadd float %207, %208
  %210 = getelementptr inbounds float, ptr %203, i64 1
  store float %209, ptr %210, align 4, !tbaa !44
  %211 = load float, ptr %152, align 4, !tbaa !44
  %212 = load float, ptr %154, align 4, !tbaa !44
  %213 = fadd float %211, %212
  %214 = getelementptr inbounds float, ptr %203, i64 2
  store float %213, ptr %214, align 4, !tbaa !44
  %215 = load float, ptr %14, align 4, !tbaa !44
  %216 = fsub float %206, %215
  store float %216, ptr %203, align 4, !tbaa !44
  %217 = load float, ptr %160, align 4, !tbaa !44
  %218 = fsub float %209, %217
  store float %218, ptr %210, align 4, !tbaa !44
  %219 = load float, ptr %163, align 4, !tbaa !44
  %220 = fsub float %213, %219
  store float %220, ptr %214, align 4, !tbaa !44
  call void @mul_m4_v3(ptr noundef nonnull %166, ptr noundef nonnull %203) #16
  %221 = getelementptr inbounds %struct.VlakRen, ptr %125, i64 0, i32 4
  %222 = load ptr, ptr %141, align 8, !tbaa !557
  %223 = load ptr, ptr %137, align 8, !tbaa !556
  %224 = load ptr, ptr %133, align 8, !tbaa !555
  %225 = load ptr, ptr %125, align 8, !tbaa !553
  %226 = call float @normal_quad_v3(ptr noundef nonnull %221, ptr noundef %222, ptr noundef %223, ptr noundef %224, ptr noundef %225) #16
  %227 = load ptr, ptr %125, align 8, !tbaa !553
  %228 = getelementptr inbounds %struct.VertRen, ptr %227, i64 0, i32 1
  %229 = load float, ptr %221, align 4, !tbaa !44
  store float %229, ptr %228, align 4, !tbaa !44
  %230 = getelementptr inbounds %struct.VlakRen, ptr %125, i64 0, i32 4, i64 1
  %231 = load float, ptr %230, align 4, !tbaa !44
  %232 = getelementptr inbounds %struct.VertRen, ptr %227, i64 0, i32 1, i64 1
  store float %231, ptr %232, align 4, !tbaa !44
  %233 = getelementptr inbounds %struct.VlakRen, ptr %125, i64 0, i32 4, i64 2
  %234 = load float, ptr %233, align 4, !tbaa !44
  %235 = getelementptr inbounds %struct.VertRen, ptr %227, i64 0, i32 1, i64 2
  store float %234, ptr %235, align 4, !tbaa !44
  %236 = load ptr, ptr %133, align 8, !tbaa !555
  %237 = getelementptr inbounds %struct.VertRen, ptr %236, i64 0, i32 1
  %238 = load float, ptr %221, align 4, !tbaa !44
  store float %238, ptr %237, align 4, !tbaa !44
  %239 = load float, ptr %230, align 4, !tbaa !44
  %240 = getelementptr inbounds %struct.VertRen, ptr %236, i64 0, i32 1, i64 1
  store float %239, ptr %240, align 4, !tbaa !44
  %241 = load float, ptr %233, align 4, !tbaa !44
  %242 = getelementptr inbounds %struct.VertRen, ptr %236, i64 0, i32 1, i64 2
  store float %241, ptr %242, align 4, !tbaa !44
  %243 = load ptr, ptr %137, align 8, !tbaa !556
  %244 = getelementptr inbounds %struct.VertRen, ptr %243, i64 0, i32 1
  %245 = load float, ptr %221, align 4, !tbaa !44
  store float %245, ptr %244, align 4, !tbaa !44
  %246 = load float, ptr %230, align 4, !tbaa !44
  %247 = getelementptr inbounds %struct.VertRen, ptr %243, i64 0, i32 1, i64 1
  store float %246, ptr %247, align 4, !tbaa !44
  %248 = load float, ptr %233, align 4, !tbaa !44
  %249 = getelementptr inbounds %struct.VertRen, ptr %243, i64 0, i32 1, i64 2
  store float %248, ptr %249, align 4, !tbaa !44
  %250 = load ptr, ptr %141, align 8, !tbaa !557
  %251 = getelementptr inbounds %struct.VertRen, ptr %250, i64 0, i32 1
  %252 = load float, ptr %221, align 4, !tbaa !44
  store float %252, ptr %251, align 4, !tbaa !44
  %253 = load float, ptr %230, align 4, !tbaa !44
  %254 = getelementptr inbounds %struct.VertRen, ptr %250, i64 0, i32 1, i64 1
  store float %253, ptr %254, align 4, !tbaa !44
  %255 = load float, ptr %233, align 4, !tbaa !44
  %256 = getelementptr inbounds %struct.VertRen, ptr %250, i64 0, i32 1, i64 2
  store float %255, ptr %256, align 4, !tbaa !44
  %257 = getelementptr inbounds %struct.VlakRen, ptr %125, i64 0, i32 5
  store ptr %5, ptr %257, align 8, !tbaa !558
  %258 = getelementptr inbounds %struct.VlakRen, ptr %125, i64 0, i32 8
  store i8 2, ptr %258, align 2, !tbaa !560
  %259 = load i16, ptr %118, align 2, !tbaa !457
  %260 = icmp sgt i16 %259, 1
  br i1 %260, label %261, label %402

261:                                              ; preds = %105
  %262 = sitofp i16 %259 to float
  %263 = fdiv float 1.000000e+00, %262
  %264 = getelementptr inbounds %struct.ParticleBillboardData, ptr %7, i64 0, i32 15
  %265 = load i16, ptr %264, align 4, !tbaa !449
  switch i16 %265, label %367 [
    i16 2, label %281
    i16 3, label %266
    i16 1, label %278
  ]

266:                                              ; preds = %261
  %267 = getelementptr inbounds %struct.ParticleBillboardData, ptr %7, i64 0, i32 7
  %268 = load float, ptr %267, align 8, !tbaa !533
  %269 = getelementptr inbounds %struct.ParticleBillboardData, ptr %7, i64 0, i32 12
  %270 = load i32, ptr %269, align 4, !tbaa !536
  %271 = sitofp i32 %270 to float
  %272 = fmul float %268, %271
  %273 = fptosi float %272 to i32
  %274 = srem i32 %273, %121
  %275 = sitofp i32 %274 to float
  %276 = sitofp i32 %121 to float
  %277 = fdiv float %275, %276
  br label %367

278:                                              ; preds = %261
  %279 = getelementptr inbounds %struct.ParticleBillboardData, ptr %7, i64 0, i32 7
  %280 = load float, ptr %279, align 8, !tbaa !533
  br label %367

281:                                              ; preds = %261
  %282 = getelementptr inbounds %struct.ParticleBillboardData, ptr %7, i64 0, i32 13
  %283 = load i16, ptr %282, align 8, !tbaa !446
  %284 = icmp eq i16 %283, 3
  br i1 %284, label %285, label %293

285:                                              ; preds = %281
  %286 = getelementptr inbounds %struct.ParticleBillboardData, ptr %7, i64 0, i32 5
  %287 = load float, ptr %286, align 8, !tbaa !532
  %288 = fadd float %287, 1.000000e+00
  %289 = fmul float %288, 5.000000e-01
  %290 = fpext float %289 to double
  %291 = call double @fmod(double noundef %290, double noundef 1.000000e+00) #16
  %292 = fptrunc double %291 to float
  br label %367

293:                                              ; preds = %281
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %17) #16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %17, i8 0, i64 12, i1 false)
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %18) #16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %18, i8 0, i64 12, i1 false)
  %294 = sext i16 %283 to i32
  %295 = add nsw i32 %294, 1
  %296 = srem i32 %295, 3
  %297 = sext i32 %296 to i64
  %298 = getelementptr inbounds [3 x float], ptr %17, i64 0, i64 %297
  store float 1.000000e+00, ptr %298, align 4, !tbaa !44
  %299 = add nsw i32 %294, 2
  %300 = srem i32 %299, 3
  %301 = sext i32 %300 to i64
  %302 = getelementptr inbounds [3 x float], ptr %18, i64 0, i64 %301
  store float 1.000000e+00, ptr %302, align 4, !tbaa !44
  %303 = getelementptr inbounds %struct.ParticleBillboardData, ptr %7, i64 0, i32 9
  %304 = load i32, ptr %303, align 8, !tbaa !450
  %305 = icmp eq i32 %304, 0
  br i1 %305, label %306, label %330

306:                                              ; preds = %293
  %307 = sext i16 %283 to i64
  %308 = getelementptr inbounds [3 x float], ptr %15, i64 0, i64 %307
  store float 0.000000e+00, ptr %308, align 4, !tbaa !44
  %309 = load float, ptr %15, align 4, !tbaa !44
  %310 = getelementptr inbounds float, ptr %15, i64 1
  %311 = load float, ptr %310, align 4, !tbaa !44
  %312 = fmul float %311, %311
  %313 = call float @llvm.fmuladd.f32(float %309, float %309, float %312)
  %314 = getelementptr inbounds float, ptr %15, i64 2
  %315 = load float, ptr %314, align 4, !tbaa !44
  %316 = call float @llvm.fmuladd.f32(float %315, float %315, float %313)
  %317 = fcmp ogt float %316, 0x38AA95A5C0000000
  br i1 %317, label %318, label %327

318:                                              ; preds = %306
  %319 = call float @sqrtf(float noundef %316) #16
  %320 = fdiv float 1.000000e+00, %319
  %321 = load float, ptr %15, align 4, !tbaa !44
  %322 = fmul float %321, %320
  store float %322, ptr %15, align 4, !tbaa !44
  %323 = load float, ptr %310, align 4, !tbaa !44
  %324 = fmul float %320, %323
  store float %324, ptr %310, align 4, !tbaa !44
  %325 = load float, ptr %314, align 4, !tbaa !44
  %326 = fmul float %320, %325
  br label %328

327:                                              ; preds = %306
  store float 0.000000e+00, ptr %15, align 4, !tbaa !44
  store float 0.000000e+00, ptr %310, align 4, !tbaa !44
  br label %328

328:                                              ; preds = %327, %318
  %329 = phi float [ 0.000000e+00, %327 ], [ %326, %318 ]
  store float %329, ptr %314, align 4, !tbaa !44
  br label %330

330:                                              ; preds = %328, %293
  %331 = load float, ptr %15, align 4, !tbaa !44
  %332 = load float, ptr %17, align 4, !tbaa !44
  %333 = getelementptr inbounds float, ptr %15, i64 1
  %334 = load float, ptr %333, align 4, !tbaa !44
  %335 = getelementptr inbounds float, ptr %17, i64 1
  %336 = load float, ptr %335, align 4, !tbaa !44
  %337 = fmul float %334, %336
  %338 = call float @llvm.fmuladd.f32(float %331, float %332, float %337)
  %339 = getelementptr inbounds float, ptr %15, i64 2
  %340 = load float, ptr %339, align 4, !tbaa !44
  %341 = getelementptr inbounds float, ptr %17, i64 2
  %342 = load float, ptr %341, align 4, !tbaa !44
  %343 = call float @llvm.fmuladd.f32(float %340, float %342, float %338)
  %344 = fcmp ugt float %343, -1.000000e+00
  br i1 %344, label %345, label %349

345:                                              ; preds = %330
  %346 = fcmp ult float %343, 1.000000e+00
  br i1 %346, label %347, label %349

347:                                              ; preds = %345
  %348 = call float @acosf(float noundef %343) #16
  br label %349

349:                                              ; preds = %347, %345, %330
  %350 = phi float [ %348, %347 ], [ 0x400921FB60000000, %330 ], [ 0.000000e+00, %345 ]
  %351 = fdiv float %350, 0x400921FB60000000
  %352 = load float, ptr %15, align 4, !tbaa !44
  %353 = load float, ptr %18, align 4, !tbaa !44
  %354 = load float, ptr %333, align 4, !tbaa !44
  %355 = getelementptr inbounds float, ptr %18, i64 1
  %356 = load float, ptr %355, align 4, !tbaa !44
  %357 = fmul float %354, %356
  %358 = call float @llvm.fmuladd.f32(float %352, float %353, float %357)
  %359 = load float, ptr %339, align 4, !tbaa !44
  %360 = getelementptr inbounds float, ptr %18, i64 2
  %361 = load float, ptr %360, align 4, !tbaa !44
  %362 = call float @llvm.fmuladd.f32(float %359, float %361, float %358)
  %363 = fcmp olt float %362, 0.000000e+00
  %364 = fmul float %351, 5.000000e-01
  %365 = fsub float 1.000000e+00, %364
  %366 = select i1 %363, float %365, float %364
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %18) #16
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %17) #16
  br label %367

367:                                              ; preds = %261, %349, %285, %278, %266
  %368 = phi float [ %277, %266 ], [ %280, %278 ], [ %292, %285 ], [ %366, %349 ], [ 0.000000e+00, %261 ]
  %369 = getelementptr inbounds %struct.ParticleBillboardData, ptr %7, i64 0, i32 16
  %370 = load i16, ptr %369, align 2, !tbaa !454
  switch i16 %370, label %386 [
    i16 1, label %371
    i16 2, label %377
  ]

371:                                              ; preds = %367
  %372 = getelementptr inbounds %struct.ParticleBillboardData, ptr %7, i64 0, i32 10
  %373 = load i32, ptr %372, align 4, !tbaa !534
  %374 = sitofp i32 %373 to float
  %375 = sitofp i32 %121 to float
  %376 = fdiv float %374, %375
  br label %380

377:                                              ; preds = %367
  %378 = getelementptr inbounds %struct.ParticleBillboardData, ptr %7, i64 0, i32 6
  %379 = load float, ptr %378, align 4, !tbaa !527
  br label %380

380:                                              ; preds = %371, %377
  %381 = phi float [ %379, %377 ], [ %376, %371 ]
  %382 = fadd float %368, %381
  %383 = fpext float %382 to double
  %384 = call double @fmod(double noundef %383, double noundef 1.000000e+00) #16
  %385 = fptrunc double %384 to float
  br label %386

386:                                              ; preds = %380, %367
  %387 = phi float [ %368, %367 ], [ %385, %380 ]
  %388 = fadd float %387, 0x3EB4000000000000
  %389 = sitofp i32 %121 to float
  %390 = fmul float %388, %389
  %391 = fptosi float %390 to i32
  %392 = load i16, ptr %118, align 2, !tbaa !457
  %393 = sext i16 %392 to i32
  %394 = srem i32 %391, %393
  %395 = sdiv i32 %391, %393
  %396 = xor i32 %395, -1
  %397 = add i32 %396, %393
  %398 = sitofp i32 %394 to float
  %399 = fmul float %263, %398
  %400 = sitofp i32 %397 to float
  %401 = fmul float %263, %400
  br label %402

402:                                              ; preds = %386, %105
  %403 = phi float [ %399, %386 ], [ 0.000000e+00, %105 ]
  %404 = phi float [ %401, %386 ], [ 0.000000e+00, %105 ]
  %405 = phi float [ %263, %386 ], [ 1.000000e+00, %105 ]
  %406 = getelementptr inbounds %struct.ParticleBillboardData, ptr %7, i64 0, i32 8
  %407 = load i32, ptr %406, align 4, !tbaa !80
  %408 = icmp sgt i32 %407, -1
  br i1 %408, label %409, label %418

409:                                              ; preds = %402
  %410 = call ptr @RE_vlakren_get_tface(ptr noundef %3, ptr noundef nonnull %125, i32 noundef %407, ptr noundef null, i32 noundef 1) #16
  store float 1.000000e+00, ptr %410, align 8, !tbaa !44
  %411 = getelementptr inbounds [2 x float], ptr %410, i64 0, i64 1
  store float 1.000000e+00, ptr %411, align 4, !tbaa !44
  %412 = getelementptr inbounds [4 x [2 x float]], ptr %410, i64 0, i64 1
  store float 0.000000e+00, ptr %412, align 8, !tbaa !44
  %413 = getelementptr inbounds [4 x [2 x float]], ptr %410, i64 0, i64 1, i64 1
  store float 1.000000e+00, ptr %413, align 4, !tbaa !44
  %414 = getelementptr inbounds [4 x [2 x float]], ptr %410, i64 0, i64 2
  store float 0.000000e+00, ptr %414, align 8, !tbaa !44
  %415 = getelementptr inbounds [4 x [2 x float]], ptr %410, i64 0, i64 2, i64 1
  store float 0.000000e+00, ptr %415, align 4, !tbaa !44
  %416 = getelementptr inbounds [4 x [2 x float]], ptr %410, i64 0, i64 3
  store float 1.000000e+00, ptr %416, align 8, !tbaa !44
  %417 = getelementptr inbounds [4 x [2 x float]], ptr %410, i64 0, i64 3, i64 1
  store float 0.000000e+00, ptr %417, align 4, !tbaa !44
  br label %418

418:                                              ; preds = %409, %402
  %419 = getelementptr inbounds %struct.ParticleBillboardData, ptr %7, i64 0, i32 8, i64 1
  %420 = load i32, ptr %419, align 4, !tbaa !80
  %421 = icmp sgt i32 %420, -1
  br i1 %421, label %422, label %440

422:                                              ; preds = %418
  %423 = call ptr @RE_vlakren_get_tface(ptr noundef %3, ptr noundef nonnull %125, i32 noundef %420, ptr noundef null, i32 noundef 1) #16
  %424 = getelementptr inbounds %struct.ParticleBillboardData, ptr %7, i64 0, i32 7
  %425 = load float, ptr %424, align 8, !tbaa !533
  %426 = getelementptr inbounds [4 x [2 x float]], ptr %423, i64 0, i64 3
  store float %425, ptr %426, align 8, !tbaa !44
  %427 = getelementptr inbounds [4 x [2 x float]], ptr %423, i64 0, i64 2
  store float %425, ptr %427, align 8, !tbaa !44
  %428 = getelementptr inbounds [4 x [2 x float]], ptr %423, i64 0, i64 1
  store float %425, ptr %428, align 8, !tbaa !44
  store float %425, ptr %423, align 8, !tbaa !44
  %429 = getelementptr inbounds %struct.ParticleBillboardData, ptr %7, i64 0, i32 10
  %430 = load i32, ptr %429, align 4, !tbaa !534
  %431 = sitofp i32 %430 to float
  %432 = getelementptr inbounds %struct.ParticleBillboardData, ptr %7, i64 0, i32 11
  %433 = load i32, ptr %432, align 8, !tbaa !455
  %434 = sitofp i32 %433 to float
  %435 = fdiv float %431, %434
  %436 = getelementptr inbounds [4 x [2 x float]], ptr %423, i64 0, i64 3, i64 1
  store float %435, ptr %436, align 4, !tbaa !44
  %437 = getelementptr inbounds [4 x [2 x float]], ptr %423, i64 0, i64 2, i64 1
  store float %435, ptr %437, align 4, !tbaa !44
  %438 = getelementptr inbounds [4 x [2 x float]], ptr %423, i64 0, i64 1, i64 1
  store float %435, ptr %438, align 4, !tbaa !44
  %439 = getelementptr inbounds [2 x float], ptr %423, i64 0, i64 1
  store float %435, ptr %439, align 4, !tbaa !44
  br label %440

440:                                              ; preds = %422, %418
  %441 = load i16, ptr %118, align 2, !tbaa !457
  %442 = icmp sgt i16 %441, 1
  br i1 %442, label %443, label %458

443:                                              ; preds = %440
  %444 = getelementptr inbounds %struct.ParticleBillboardData, ptr %7, i64 0, i32 8, i64 2
  %445 = load i32, ptr %444, align 4, !tbaa !80
  %446 = icmp sgt i32 %445, -1
  br i1 %446, label %447, label %458

447:                                              ; preds = %443
  %448 = call ptr @RE_vlakren_get_tface(ptr noundef %3, ptr noundef nonnull %125, i32 noundef %445, ptr noundef null, i32 noundef 1) #16
  %449 = fadd float %403, %405
  store float %449, ptr %448, align 8, !tbaa !44
  %450 = fadd float %404, %405
  %451 = getelementptr inbounds [2 x float], ptr %448, i64 0, i64 1
  store float %450, ptr %451, align 4, !tbaa !44
  %452 = getelementptr inbounds [4 x [2 x float]], ptr %448, i64 0, i64 1
  store float %403, ptr %452, align 8, !tbaa !44
  %453 = getelementptr inbounds [4 x [2 x float]], ptr %448, i64 0, i64 1, i64 1
  store float %450, ptr %453, align 4, !tbaa !44
  %454 = getelementptr inbounds [4 x [2 x float]], ptr %448, i64 0, i64 2
  store float %403, ptr %454, align 8, !tbaa !44
  %455 = getelementptr inbounds [4 x [2 x float]], ptr %448, i64 0, i64 2, i64 1
  store float %404, ptr %455, align 4, !tbaa !44
  %456 = getelementptr inbounds [4 x [2 x float]], ptr %448, i64 0, i64 3
  store float %449, ptr %456, align 8, !tbaa !44
  %457 = getelementptr inbounds [4 x [2 x float]], ptr %448, i64 0, i64 3, i64 1
  store float %404, ptr %457, align 4, !tbaa !44
  br label %458

458:                                              ; preds = %440, %443, %447
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %16) #16
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %15) #16
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %14) #16
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %13) #16
  br label %472

459:                                              ; preds = %31
  %460 = getelementptr inbounds %struct.ParticleStrandData, ptr %6, i64 0, i32 1
  %461 = load ptr, ptr %460, align 8, !tbaa !459
  %462 = getelementptr inbounds %struct.ParticleStrandData, ptr %6, i64 0, i32 2
  %463 = load ptr, ptr %462, align 8, !tbaa !443
  %464 = call ptr @RE_inithalo_particle(ptr noundef %2, ptr noundef %3, ptr noundef %4, ptr noundef %5, ptr noundef nonnull %19, ptr noundef null, ptr noundef %461, ptr noundef %463, float noundef %10, float noundef 0.000000e+00, i32 noundef %9, ptr noundef %11) #16
  %465 = icmp eq ptr %464, null
  br i1 %465, label %472, label %466

466:                                              ; preds = %459
  %467 = getelementptr inbounds %struct.ObjectRen, ptr %3, i64 0, i32 2
  %468 = load ptr, ptr %467, align 8, !tbaa !184
  %469 = getelementptr inbounds %struct.Object, ptr %468, i64 0, i32 52
  %470 = load i32, ptr %469, align 8, !tbaa !189
  %471 = getelementptr inbounds %struct.HaloRen, ptr %464, i64 0, i32 28
  store i32 %470, ptr %471, align 8, !tbaa !592
  br label %472

472:                                              ; preds = %459, %466, %458, %83
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %22) #16
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %21) #16
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %20) #16
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %19) #16
  ret void
}

declare i32 @psys_get_particle_state(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #6

declare ptr @cache_strand_surface(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #6

declare void @BLI_rng_free(ptr noundef) local_unnamed_addr #6

declare void @end_latt_deform(ptr noundef) local_unnamed_addr #6

; Function Attrs: nounwind uwtable
define internal fastcc void @calc_vertexnormals(ptr noundef %0, i8 noundef zeroext %1, i8 noundef zeroext %2, i8 noundef zeroext %3) unnamed_addr #4 {
  %5 = alloca [3 x float], align 4
  %6 = alloca [4 x [2 x float]], align 16
  %7 = alloca %struct.SRenderMeshToTangent, align 8
  %8 = alloca %struct.SMikkTSpaceContext, align 8
  %9 = alloca %struct.SMikkTSpaceInterface, align 8
  %10 = icmp eq i8 %1, 0
  br i1 %10, label %24, label %11

11:                                               ; preds = %4
  %12 = getelementptr inbounds %struct.ObjectRen, ptr %0, i64 0, i32 10
  %13 = load i32, ptr %12, align 8, !tbaa !211
  %14 = icmp sgt i32 %13, 0
  br i1 %14, label %15, label %24

15:                                               ; preds = %11, %15
  %16 = phi i32 [ %21, %15 ], [ 0, %11 ]
  %17 = tail call ptr @RE_findOrAddVert(ptr noundef %0, i32 noundef %16) #16
  %18 = getelementptr inbounds %struct.VertRen, ptr %17, i64 0, i32 1
  %19 = getelementptr inbounds %struct.VertRen, ptr %17, i64 0, i32 1, i64 2
  store float 0.000000e+00, ptr %19, align 4, !tbaa !44
  %20 = getelementptr inbounds %struct.VertRen, ptr %17, i64 0, i32 1, i64 1
  store float 0.000000e+00, ptr %20, align 4, !tbaa !44
  store float 0.000000e+00, ptr %18, align 4, !tbaa !44
  %21 = add nuw nsw i32 %16, 1
  %22 = load i32, ptr %12, align 8, !tbaa !211
  %23 = icmp slt i32 %21, %22
  br i1 %23, label %15, label %24, !llvm.loop !683

24:                                               ; preds = %15, %11, %4
  %25 = getelementptr inbounds %struct.ObjectRen, ptr %0, i64 0, i32 11
  %26 = load i32, ptr %25, align 4, !tbaa !293
  %27 = icmp sgt i32 %26, 0
  br i1 %27, label %28, label %40

28:                                               ; preds = %24
  %29 = icmp eq i8 %2, 0
  %30 = getelementptr inbounds %struct.ObjectRen, ptr %0, i64 0, i32 25
  %31 = getelementptr inbounds [4 x [2 x float]], ptr %6, i64 0, i64 1
  %32 = getelementptr inbounds [4 x [2 x float]], ptr %6, i64 0, i64 2
  %33 = getelementptr inbounds [4 x [2 x float]], ptr %6, i64 0, i64 3
  %34 = getelementptr inbounds [2 x float], ptr %6, i64 0, i64 1
  %35 = getelementptr inbounds [4 x [2 x float]], ptr %6, i64 0, i64 1, i64 1
  %36 = getelementptr inbounds [4 x [2 x float]], ptr %6, i64 0, i64 2, i64 1
  %37 = getelementptr inbounds [4 x [2 x float]], ptr %6, i64 0, i64 3, i64 1
  %38 = getelementptr inbounds float, ptr %5, i64 1
  %39 = getelementptr inbounds float, ptr %5, i64 2
  br label %44

40:                                               ; preds = %197, %24
  %41 = getelementptr inbounds %struct.ObjectRen, ptr %0, i64 0, i32 11
  %42 = load i32, ptr %41, align 4, !tbaa !293
  %43 = icmp sgt i32 %42, 0
  br i1 %43, label %207, label %201

44:                                               ; preds = %28, %197
  %45 = phi i32 [ 0, %28 ], [ %198, %197 ]
  %46 = call ptr @RE_findOrAddVlak(ptr noundef %0, i32 noundef %45) #16
  br i1 %10, label %67, label %47

47:                                               ; preds = %44
  %48 = getelementptr inbounds %struct.VlakRen, ptr %46, i64 0, i32 7
  %49 = load i8, ptr %48, align 1, !tbaa !559
  %50 = and i8 %49, 1
  %51 = icmp eq i8 %50, 0
  br i1 %51, label %67, label %52

52:                                               ; preds = %47
  %53 = getelementptr inbounds %struct.VlakRen, ptr %46, i64 0, i32 3
  %54 = load ptr, ptr %53, align 8, !tbaa !557
  %55 = icmp eq ptr %54, null
  %56 = getelementptr inbounds %struct.VertRen, ptr %54, i64 0, i32 1
  %57 = select i1 %55, ptr null, ptr %56
  %58 = load ptr, ptr %46, align 8, !tbaa !553
  %59 = getelementptr inbounds %struct.VertRen, ptr %58, i64 0, i32 1
  %60 = getelementptr inbounds %struct.VlakRen, ptr %46, i64 0, i32 1
  %61 = load ptr, ptr %60, align 8, !tbaa !555
  %62 = getelementptr inbounds %struct.VertRen, ptr %61, i64 0, i32 1
  %63 = getelementptr inbounds %struct.VlakRen, ptr %46, i64 0, i32 2
  %64 = load ptr, ptr %63, align 8, !tbaa !556
  %65 = getelementptr inbounds %struct.VertRen, ptr %64, i64 0, i32 1
  %66 = getelementptr inbounds %struct.VlakRen, ptr %46, i64 0, i32 4
  call void @accumulate_vertex_normals(ptr noundef nonnull %59, ptr noundef nonnull %62, ptr noundef nonnull %65, ptr noundef %57, ptr noundef nonnull %66, ptr noundef %58, ptr noundef %61, ptr noundef %64, ptr noundef %54) #16
  br label %67

67:                                               ; preds = %52, %47, %44
  br i1 %29, label %197, label %68

68:                                               ; preds = %67
  %69 = load i32, ptr %30, align 8, !tbaa !684
  %70 = call ptr @RE_vlakren_get_tface(ptr noundef %0, ptr noundef %46, i32 noundef %69, ptr noundef null, i32 noundef 0) #16
  %71 = load ptr, ptr %46, align 8, !tbaa !553
  %72 = getelementptr inbounds %struct.VlakRen, ptr %46, i64 0, i32 1
  %73 = load ptr, ptr %72, align 8, !tbaa !555
  %74 = getelementptr inbounds %struct.VlakRen, ptr %46, i64 0, i32 2
  %75 = load ptr, ptr %74, align 8, !tbaa !556
  %76 = getelementptr inbounds %struct.VlakRen, ptr %46, i64 0, i32 3
  %77 = load ptr, ptr %76, align 8, !tbaa !557
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %5) #16
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %6) #16
  %78 = icmp eq ptr %70, null
  br i1 %78, label %83, label %79

79:                                               ; preds = %68
  %80 = getelementptr inbounds [4 x [2 x float]], ptr %70, i64 0, i64 1
  %81 = getelementptr inbounds [4 x [2 x float]], ptr %70, i64 0, i64 2
  %82 = getelementptr inbounds [4 x [2 x float]], ptr %70, i64 0, i64 3
  br label %116

83:                                               ; preds = %68
  %84 = getelementptr inbounds %struct.VertRen, ptr %71, i64 0, i32 2
  %85 = load ptr, ptr %84, align 8, !tbaa !548
  %86 = icmp eq ptr %85, null
  br i1 %86, label %196, label %87

87:                                               ; preds = %83
  %88 = load float, ptr %85, align 4, !tbaa !44
  %89 = getelementptr inbounds float, ptr %85, i64 1
  %90 = load float, ptr %89, align 4, !tbaa !44
  %91 = getelementptr inbounds float, ptr %85, i64 2
  %92 = load float, ptr %91, align 4, !tbaa !44
  call void @map_to_sphere(ptr noundef nonnull %6, ptr noundef nonnull %34, float noundef %88, float noundef %90, float noundef %92) #16
  %93 = getelementptr inbounds %struct.VertRen, ptr %73, i64 0, i32 2
  %94 = load ptr, ptr %93, align 8, !tbaa !548
  %95 = load float, ptr %94, align 4, !tbaa !44
  %96 = getelementptr inbounds float, ptr %94, i64 1
  %97 = load float, ptr %96, align 4, !tbaa !44
  %98 = getelementptr inbounds float, ptr %94, i64 2
  %99 = load float, ptr %98, align 4, !tbaa !44
  call void @map_to_sphere(ptr noundef nonnull %31, ptr noundef nonnull %35, float noundef %95, float noundef %97, float noundef %99) #16
  %100 = getelementptr inbounds %struct.VertRen, ptr %75, i64 0, i32 2
  %101 = load ptr, ptr %100, align 8, !tbaa !548
  %102 = load float, ptr %101, align 4, !tbaa !44
  %103 = getelementptr inbounds float, ptr %101, i64 1
  %104 = load float, ptr %103, align 4, !tbaa !44
  %105 = getelementptr inbounds float, ptr %101, i64 2
  %106 = load float, ptr %105, align 4, !tbaa !44
  call void @map_to_sphere(ptr noundef nonnull %32, ptr noundef nonnull %36, float noundef %102, float noundef %104, float noundef %106) #16
  %107 = icmp eq ptr %77, null
  br i1 %107, label %116, label %108

108:                                              ; preds = %87
  %109 = getelementptr inbounds %struct.VertRen, ptr %77, i64 0, i32 2
  %110 = load ptr, ptr %109, align 8, !tbaa !548
  %111 = load float, ptr %110, align 4, !tbaa !44
  %112 = getelementptr inbounds float, ptr %110, i64 1
  %113 = load float, ptr %112, align 4, !tbaa !44
  %114 = getelementptr inbounds float, ptr %110, i64 2
  %115 = load float, ptr %114, align 4, !tbaa !44
  call void @map_to_sphere(ptr noundef nonnull %33, ptr noundef nonnull %37, float noundef %111, float noundef %113, float noundef %115) #16
  br label %116

116:                                              ; preds = %108, %87, %79
  %117 = phi ptr [ %70, %79 ], [ %6, %108 ], [ %6, %87 ]
  %118 = phi ptr [ %80, %79 ], [ %31, %108 ], [ %31, %87 ]
  %119 = phi ptr [ %81, %79 ], [ %32, %108 ], [ %32, %87 ]
  %120 = phi ptr [ %82, %79 ], [ %33, %108 ], [ %33, %87 ]
  %121 = getelementptr inbounds %struct.VlakRen, ptr %46, i64 0, i32 4
  call void @tangent_from_uv(ptr noundef nonnull %117, ptr noundef nonnull %118, ptr noundef nonnull %119, ptr noundef %71, ptr noundef %73, ptr noundef %75, ptr noundef nonnull %121, ptr noundef nonnull %5) #16
  %122 = call ptr @RE_vertren_get_tangent(ptr noundef %0, ptr noundef %71, i32 noundef 1) #16
  %123 = load float, ptr %5, align 4, !tbaa !44
  %124 = load float, ptr %122, align 4, !tbaa !44
  %125 = fadd float %123, %124
  store float %125, ptr %122, align 4, !tbaa !44
  %126 = load float, ptr %38, align 4, !tbaa !44
  %127 = getelementptr inbounds float, ptr %122, i64 1
  %128 = load float, ptr %127, align 4, !tbaa !44
  %129 = fadd float %126, %128
  store float %129, ptr %127, align 4, !tbaa !44
  %130 = load float, ptr %39, align 4, !tbaa !44
  %131 = getelementptr inbounds float, ptr %122, i64 2
  %132 = load float, ptr %131, align 4, !tbaa !44
  %133 = fadd float %130, %132
  store float %133, ptr %131, align 4, !tbaa !44
  %134 = call ptr @RE_vertren_get_tangent(ptr noundef %0, ptr noundef %73, i32 noundef 1) #16
  %135 = load float, ptr %5, align 4, !tbaa !44
  %136 = load float, ptr %134, align 4, !tbaa !44
  %137 = fadd float %135, %136
  store float %137, ptr %134, align 4, !tbaa !44
  %138 = load float, ptr %38, align 4, !tbaa !44
  %139 = getelementptr inbounds float, ptr %134, i64 1
  %140 = load float, ptr %139, align 4, !tbaa !44
  %141 = fadd float %138, %140
  store float %141, ptr %139, align 4, !tbaa !44
  %142 = load float, ptr %39, align 4, !tbaa !44
  %143 = getelementptr inbounds float, ptr %134, i64 2
  %144 = load float, ptr %143, align 4, !tbaa !44
  %145 = fadd float %142, %144
  store float %145, ptr %143, align 4, !tbaa !44
  %146 = call ptr @RE_vertren_get_tangent(ptr noundef %0, ptr noundef %75, i32 noundef 1) #16
  %147 = load float, ptr %5, align 4, !tbaa !44
  %148 = load float, ptr %146, align 4, !tbaa !44
  %149 = fadd float %147, %148
  store float %149, ptr %146, align 4, !tbaa !44
  %150 = load float, ptr %38, align 4, !tbaa !44
  %151 = getelementptr inbounds float, ptr %146, i64 1
  %152 = load float, ptr %151, align 4, !tbaa !44
  %153 = fadd float %150, %152
  store float %153, ptr %151, align 4, !tbaa !44
  %154 = load float, ptr %39, align 4, !tbaa !44
  %155 = getelementptr inbounds float, ptr %146, i64 2
  %156 = load float, ptr %155, align 4, !tbaa !44
  %157 = fadd float %154, %156
  store float %157, ptr %155, align 4, !tbaa !44
  %158 = icmp eq ptr %77, null
  br i1 %158, label %196, label %159

159:                                              ; preds = %116
  call void @tangent_from_uv(ptr noundef nonnull %117, ptr noundef nonnull %119, ptr noundef nonnull %120, ptr noundef %71, ptr noundef %75, ptr noundef nonnull %77, ptr noundef nonnull %121, ptr noundef nonnull %5) #16
  %160 = call ptr @RE_vertren_get_tangent(ptr noundef %0, ptr noundef %71, i32 noundef 1) #16
  %161 = load float, ptr %5, align 4, !tbaa !44
  %162 = load float, ptr %160, align 4, !tbaa !44
  %163 = fadd float %161, %162
  store float %163, ptr %160, align 4, !tbaa !44
  %164 = load float, ptr %38, align 4, !tbaa !44
  %165 = getelementptr inbounds float, ptr %160, i64 1
  %166 = load float, ptr %165, align 4, !tbaa !44
  %167 = fadd float %164, %166
  store float %167, ptr %165, align 4, !tbaa !44
  %168 = load float, ptr %39, align 4, !tbaa !44
  %169 = getelementptr inbounds float, ptr %160, i64 2
  %170 = load float, ptr %169, align 4, !tbaa !44
  %171 = fadd float %168, %170
  store float %171, ptr %169, align 4, !tbaa !44
  %172 = call ptr @RE_vertren_get_tangent(ptr noundef %0, ptr noundef %75, i32 noundef 1) #16
  %173 = load float, ptr %5, align 4, !tbaa !44
  %174 = load float, ptr %172, align 4, !tbaa !44
  %175 = fadd float %173, %174
  store float %175, ptr %172, align 4, !tbaa !44
  %176 = load float, ptr %38, align 4, !tbaa !44
  %177 = getelementptr inbounds float, ptr %172, i64 1
  %178 = load float, ptr %177, align 4, !tbaa !44
  %179 = fadd float %176, %178
  store float %179, ptr %177, align 4, !tbaa !44
  %180 = load float, ptr %39, align 4, !tbaa !44
  %181 = getelementptr inbounds float, ptr %172, i64 2
  %182 = load float, ptr %181, align 4, !tbaa !44
  %183 = fadd float %180, %182
  store float %183, ptr %181, align 4, !tbaa !44
  %184 = call ptr @RE_vertren_get_tangent(ptr noundef %0, ptr noundef nonnull %77, i32 noundef 1) #16
  %185 = load float, ptr %5, align 4, !tbaa !44
  %186 = load float, ptr %184, align 4, !tbaa !44
  %187 = fadd float %185, %186
  store float %187, ptr %184, align 4, !tbaa !44
  %188 = load float, ptr %38, align 4, !tbaa !44
  %189 = getelementptr inbounds float, ptr %184, i64 1
  %190 = load float, ptr %189, align 4, !tbaa !44
  %191 = fadd float %188, %190
  store float %191, ptr %189, align 4, !tbaa !44
  %192 = load float, ptr %39, align 4, !tbaa !44
  %193 = getelementptr inbounds float, ptr %184, i64 2
  %194 = load float, ptr %193, align 4, !tbaa !44
  %195 = fadd float %192, %194
  store float %195, ptr %193, align 4, !tbaa !44
  br label %196

196:                                              ; preds = %83, %116, %159
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %6) #16
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %5) #16
  br label %197

197:                                              ; preds = %196, %67
  %198 = add nuw nsw i32 %45, 1
  %199 = load i32, ptr %25, align 4, !tbaa !293
  %200 = icmp slt i32 %198, %199
  br i1 %200, label %44, label %40, !llvm.loop !685

201:                                              ; preds = %324, %40
  %202 = getelementptr inbounds %struct.ObjectRen, ptr %0, i64 0, i32 10
  %203 = load i32, ptr %202, align 8, !tbaa !211
  %204 = icmp sgt i32 %203, 0
  br i1 %204, label %205, label %396

205:                                              ; preds = %201
  %206 = icmp eq i8 %2, 0
  br label %328

207:                                              ; preds = %40, %324
  %208 = phi i32 [ %325, %324 ], [ 0, %40 ]
  %209 = call ptr @RE_findOrAddVlak(ptr noundef %0, i32 noundef %208) #16
  br i1 %10, label %324, label %210

210:                                              ; preds = %207
  %211 = getelementptr inbounds %struct.VlakRen, ptr %209, i64 0, i32 7
  %212 = load i8, ptr %211, align 1, !tbaa !559
  %213 = and i8 %212, 1
  %214 = icmp eq i8 %213, 0
  br i1 %214, label %215, label %324

215:                                              ; preds = %210
  %216 = load ptr, ptr %209, align 8, !tbaa !553
  %217 = getelementptr inbounds %struct.VertRen, ptr %216, i64 0, i32 1
  %218 = load float, ptr %217, align 4, !tbaa !44
  %219 = fcmp oeq float %218, 0.000000e+00
  br i1 %219, label %220, label %229

220:                                              ; preds = %215
  %221 = getelementptr inbounds %struct.VertRen, ptr %216, i64 0, i32 1, i64 1
  %222 = load float, ptr %221, align 4, !tbaa !44
  %223 = fcmp oeq float %222, 0.000000e+00
  br i1 %223, label %224, label %229

224:                                              ; preds = %220
  %225 = getelementptr inbounds %struct.VertRen, ptr %216, i64 0, i32 1, i64 2
  %226 = load float, ptr %225, align 4, !tbaa !44
  %227 = fcmp oeq float %226, 0.000000e+00
  %228 = zext i1 %227 to i8
  br label %229

229:                                              ; preds = %215, %220, %224
  %230 = phi i8 [ 0, %220 ], [ 0, %215 ], [ %228, %224 ]
  %231 = icmp eq i8 %230, 0
  br i1 %231, label %241, label %232

232:                                              ; preds = %229
  %233 = getelementptr inbounds %struct.VlakRen, ptr %209, i64 0, i32 4
  %234 = load float, ptr %233, align 4, !tbaa !44
  store float %234, ptr %217, align 4, !tbaa !44
  %235 = getelementptr inbounds %struct.VlakRen, ptr %209, i64 0, i32 4, i64 1
  %236 = load float, ptr %235, align 4, !tbaa !44
  %237 = getelementptr inbounds %struct.VertRen, ptr %216, i64 0, i32 1, i64 1
  store float %236, ptr %237, align 4, !tbaa !44
  %238 = getelementptr inbounds %struct.VlakRen, ptr %209, i64 0, i32 4, i64 2
  %239 = load float, ptr %238, align 4, !tbaa !44
  %240 = getelementptr inbounds %struct.VertRen, ptr %216, i64 0, i32 1, i64 2
  store float %239, ptr %240, align 4, !tbaa !44
  br label %241

241:                                              ; preds = %232, %229
  %242 = getelementptr inbounds %struct.VlakRen, ptr %209, i64 0, i32 1
  %243 = load ptr, ptr %242, align 8, !tbaa !555
  %244 = getelementptr inbounds %struct.VertRen, ptr %243, i64 0, i32 1
  %245 = load float, ptr %244, align 4, !tbaa !44
  %246 = fcmp oeq float %245, 0.000000e+00
  br i1 %246, label %247, label %256

247:                                              ; preds = %241
  %248 = getelementptr inbounds %struct.VertRen, ptr %243, i64 0, i32 1, i64 1
  %249 = load float, ptr %248, align 4, !tbaa !44
  %250 = fcmp oeq float %249, 0.000000e+00
  br i1 %250, label %251, label %256

251:                                              ; preds = %247
  %252 = getelementptr inbounds %struct.VertRen, ptr %243, i64 0, i32 1, i64 2
  %253 = load float, ptr %252, align 4, !tbaa !44
  %254 = fcmp oeq float %253, 0.000000e+00
  %255 = zext i1 %254 to i8
  br label %256

256:                                              ; preds = %241, %247, %251
  %257 = phi i8 [ 0, %247 ], [ 0, %241 ], [ %255, %251 ]
  %258 = icmp eq i8 %257, 0
  br i1 %258, label %268, label %259

259:                                              ; preds = %256
  %260 = getelementptr inbounds %struct.VlakRen, ptr %209, i64 0, i32 4
  %261 = load float, ptr %260, align 4, !tbaa !44
  store float %261, ptr %244, align 4, !tbaa !44
  %262 = getelementptr inbounds %struct.VlakRen, ptr %209, i64 0, i32 4, i64 1
  %263 = load float, ptr %262, align 4, !tbaa !44
  %264 = getelementptr inbounds %struct.VertRen, ptr %243, i64 0, i32 1, i64 1
  store float %263, ptr %264, align 4, !tbaa !44
  %265 = getelementptr inbounds %struct.VlakRen, ptr %209, i64 0, i32 4, i64 2
  %266 = load float, ptr %265, align 4, !tbaa !44
  %267 = getelementptr inbounds %struct.VertRen, ptr %243, i64 0, i32 1, i64 2
  store float %266, ptr %267, align 4, !tbaa !44
  br label %268

268:                                              ; preds = %259, %256
  %269 = getelementptr inbounds %struct.VlakRen, ptr %209, i64 0, i32 2
  %270 = load ptr, ptr %269, align 8, !tbaa !556
  %271 = getelementptr inbounds %struct.VertRen, ptr %270, i64 0, i32 1
  %272 = load float, ptr %271, align 4, !tbaa !44
  %273 = fcmp oeq float %272, 0.000000e+00
  br i1 %273, label %274, label %283

274:                                              ; preds = %268
  %275 = getelementptr inbounds %struct.VertRen, ptr %270, i64 0, i32 1, i64 1
  %276 = load float, ptr %275, align 4, !tbaa !44
  %277 = fcmp oeq float %276, 0.000000e+00
  br i1 %277, label %278, label %283

278:                                              ; preds = %274
  %279 = getelementptr inbounds %struct.VertRen, ptr %270, i64 0, i32 1, i64 2
  %280 = load float, ptr %279, align 4, !tbaa !44
  %281 = fcmp oeq float %280, 0.000000e+00
  %282 = zext i1 %281 to i8
  br label %283

283:                                              ; preds = %268, %274, %278
  %284 = phi i8 [ 0, %274 ], [ 0, %268 ], [ %282, %278 ]
  %285 = icmp eq i8 %284, 0
  br i1 %285, label %295, label %286

286:                                              ; preds = %283
  %287 = getelementptr inbounds %struct.VlakRen, ptr %209, i64 0, i32 4
  %288 = load float, ptr %287, align 4, !tbaa !44
  store float %288, ptr %271, align 4, !tbaa !44
  %289 = getelementptr inbounds %struct.VlakRen, ptr %209, i64 0, i32 4, i64 1
  %290 = load float, ptr %289, align 4, !tbaa !44
  %291 = getelementptr inbounds %struct.VertRen, ptr %270, i64 0, i32 1, i64 1
  store float %290, ptr %291, align 4, !tbaa !44
  %292 = getelementptr inbounds %struct.VlakRen, ptr %209, i64 0, i32 4, i64 2
  %293 = load float, ptr %292, align 4, !tbaa !44
  %294 = getelementptr inbounds %struct.VertRen, ptr %270, i64 0, i32 1, i64 2
  store float %293, ptr %294, align 4, !tbaa !44
  br label %295

295:                                              ; preds = %286, %283
  %296 = getelementptr inbounds %struct.VlakRen, ptr %209, i64 0, i32 3
  %297 = load ptr, ptr %296, align 8, !tbaa !557
  %298 = icmp eq ptr %297, null
  br i1 %298, label %324, label %299

299:                                              ; preds = %295
  %300 = getelementptr inbounds %struct.VertRen, ptr %297, i64 0, i32 1
  %301 = load float, ptr %300, align 4, !tbaa !44
  %302 = fcmp oeq float %301, 0.000000e+00
  br i1 %302, label %303, label %312

303:                                              ; preds = %299
  %304 = getelementptr inbounds %struct.VertRen, ptr %297, i64 0, i32 1, i64 1
  %305 = load float, ptr %304, align 4, !tbaa !44
  %306 = fcmp oeq float %305, 0.000000e+00
  br i1 %306, label %307, label %312

307:                                              ; preds = %303
  %308 = getelementptr inbounds %struct.VertRen, ptr %297, i64 0, i32 1, i64 2
  %309 = load float, ptr %308, align 4, !tbaa !44
  %310 = fcmp oeq float %309, 0.000000e+00
  %311 = zext i1 %310 to i8
  br label %312

312:                                              ; preds = %299, %303, %307
  %313 = phi i8 [ 0, %303 ], [ 0, %299 ], [ %311, %307 ]
  %314 = icmp eq i8 %313, 0
  br i1 %314, label %324, label %315

315:                                              ; preds = %312
  %316 = getelementptr inbounds %struct.VlakRen, ptr %209, i64 0, i32 4
  %317 = load float, ptr %316, align 4, !tbaa !44
  store float %317, ptr %300, align 4, !tbaa !44
  %318 = getelementptr inbounds %struct.VlakRen, ptr %209, i64 0, i32 4, i64 1
  %319 = load float, ptr %318, align 4, !tbaa !44
  %320 = getelementptr inbounds %struct.VertRen, ptr %297, i64 0, i32 1, i64 1
  store float %319, ptr %320, align 4, !tbaa !44
  %321 = getelementptr inbounds %struct.VlakRen, ptr %209, i64 0, i32 4, i64 2
  %322 = load float, ptr %321, align 4, !tbaa !44
  %323 = getelementptr inbounds %struct.VertRen, ptr %297, i64 0, i32 1, i64 2
  store float %322, ptr %323, align 4, !tbaa !44
  br label %324

324:                                              ; preds = %295, %312, %315, %210, %207
  %325 = add nuw nsw i32 %208, 1
  %326 = load i32, ptr %41, align 4, !tbaa !293
  %327 = icmp slt i32 %325, %326
  br i1 %327, label %207, label %201, !llvm.loop !686

328:                                              ; preds = %205, %392
  %329 = phi i32 [ 0, %205 ], [ %393, %392 ]
  %330 = call ptr @RE_findOrAddVert(ptr noundef %0, i32 noundef %329) #16
  %331 = getelementptr inbounds %struct.VertRen, ptr %330, i64 0, i32 1
  %332 = load float, ptr %331, align 4, !tbaa !44
  %333 = getelementptr inbounds %struct.VertRen, ptr %330, i64 0, i32 1, i64 1
  %334 = load float, ptr %333, align 4, !tbaa !44
  %335 = fmul float %334, %334
  %336 = call float @llvm.fmuladd.f32(float %332, float %332, float %335)
  %337 = getelementptr inbounds %struct.VertRen, ptr %330, i64 0, i32 1, i64 2
  %338 = load float, ptr %337, align 4, !tbaa !44
  %339 = call float @llvm.fmuladd.f32(float %338, float %338, float %336)
  %340 = fcmp ogt float %339, 0x38AA95A5C0000000
  br i1 %340, label %341, label %350

341:                                              ; preds = %328
  %342 = call float @sqrtf(float noundef %339) #16
  %343 = fdiv float 1.000000e+00, %342
  %344 = load float, ptr %331, align 4, !tbaa !44
  %345 = fmul float %344, %343
  store float %345, ptr %331, align 4, !tbaa !44
  %346 = load float, ptr %333, align 4, !tbaa !44
  %347 = fmul float %343, %346
  store float %347, ptr %333, align 4, !tbaa !44
  %348 = load float, ptr %337, align 4, !tbaa !44
  %349 = fmul float %343, %348
  br label %351

350:                                              ; preds = %328
  store float 0.000000e+00, ptr %331, align 4, !tbaa !44
  store float 0.000000e+00, ptr %333, align 4, !tbaa !44
  br label %351

351:                                              ; preds = %341, %350
  %352 = phi float [ 0.000000e+00, %350 ], [ %349, %341 ]
  store float %352, ptr %337, align 4, !tbaa !44
  br i1 %206, label %392, label %353

353:                                              ; preds = %351
  %354 = call ptr @RE_vertren_get_tangent(ptr noundef %0, ptr noundef %330, i32 noundef 0) #16
  %355 = icmp eq ptr %354, null
  br i1 %355, label %392, label %356

356:                                              ; preds = %353
  %357 = load float, ptr %354, align 4, !tbaa !44
  %358 = load float, ptr %331, align 4, !tbaa !44
  %359 = getelementptr inbounds float, ptr %354, i64 1
  %360 = load float, ptr %359, align 4, !tbaa !44
  %361 = load float, ptr %333, align 4, !tbaa !44
  %362 = fmul float %360, %361
  %363 = call float @llvm.fmuladd.f32(float %357, float %358, float %362)
  %364 = getelementptr inbounds float, ptr %354, i64 2
  %365 = load float, ptr %364, align 4, !tbaa !44
  %366 = load float, ptr %337, align 4, !tbaa !44
  %367 = call float @llvm.fmuladd.f32(float %365, float %366, float %363)
  %368 = fneg float %358
  %369 = call float @llvm.fmuladd.f32(float %368, float %367, float %357)
  store float %369, ptr %354, align 4, !tbaa !44
  %370 = load float, ptr %333, align 4, !tbaa !44
  %371 = fneg float %370
  %372 = call float @llvm.fmuladd.f32(float %371, float %367, float %360)
  store float %372, ptr %359, align 4, !tbaa !44
  %373 = load float, ptr %337, align 4, !tbaa !44
  %374 = fneg float %373
  %375 = call float @llvm.fmuladd.f32(float %374, float %367, float %365)
  store float %375, ptr %364, align 4, !tbaa !44
  %376 = fmul float %372, %372
  %377 = call float @llvm.fmuladd.f32(float %369, float %369, float %376)
  %378 = call float @llvm.fmuladd.f32(float %375, float %375, float %377)
  %379 = fcmp ogt float %378, 0x38AA95A5C0000000
  br i1 %379, label %380, label %389

380:                                              ; preds = %356
  %381 = call float @sqrtf(float noundef %378) #16
  %382 = fdiv float 1.000000e+00, %381
  %383 = load float, ptr %354, align 4, !tbaa !44
  %384 = fmul float %383, %382
  store float %384, ptr %354, align 4, !tbaa !44
  %385 = load float, ptr %359, align 4, !tbaa !44
  %386 = fmul float %382, %385
  store float %386, ptr %359, align 4, !tbaa !44
  %387 = load float, ptr %364, align 4, !tbaa !44
  %388 = fmul float %382, %387
  br label %390

389:                                              ; preds = %356
  store float 0.000000e+00, ptr %354, align 4, !tbaa !44
  store float 0.000000e+00, ptr %359, align 4, !tbaa !44
  br label %390

390:                                              ; preds = %380, %389
  %391 = phi float [ 0.000000e+00, %389 ], [ %388, %380 ]
  store float %391, ptr %364, align 4, !tbaa !44
  br label %392

392:                                              ; preds = %353, %390, %351
  %393 = add nuw nsw i32 %329, 1
  %394 = load i32, ptr %202, align 8, !tbaa !211
  %395 = icmp slt i32 %393, %394
  br i1 %395, label %328, label %396, !llvm.loop !687

396:                                              ; preds = %392, %201
  %397 = icmp eq i8 %3, 0
  br i1 %397, label %406, label %398

398:                                              ; preds = %396
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %7) #16
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %8) #16
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %9) #16
  store i64 0, ptr %7, align 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %8, i8 0, i64 16, i1 false)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %9, i8 0, i64 56, i1 false)
  store ptr %0, ptr %7, align 8, !tbaa !688
  %399 = getelementptr inbounds %struct.SMikkTSpaceContext, ptr %8, i64 0, i32 1
  store ptr %7, ptr %399, align 8, !tbaa !690
  store ptr %9, ptr %8, align 8, !tbaa !692
  store ptr @GetNumFaces, ptr %9, align 8, !tbaa !693
  %400 = getelementptr inbounds %struct.SMikkTSpaceInterface, ptr %9, i64 0, i32 1
  store ptr @GetNumVertsOfFace, ptr %400, align 8, !tbaa !695
  %401 = getelementptr inbounds %struct.SMikkTSpaceInterface, ptr %9, i64 0, i32 2
  store ptr @GetPosition, ptr %401, align 8, !tbaa !696
  %402 = getelementptr inbounds %struct.SMikkTSpaceInterface, ptr %9, i64 0, i32 4
  store ptr @GetTextureCoordinate, ptr %402, align 8, !tbaa !697
  %403 = getelementptr inbounds %struct.SMikkTSpaceInterface, ptr %9, i64 0, i32 3
  store ptr @GetNormal, ptr %403, align 8, !tbaa !698
  %404 = getelementptr inbounds %struct.SMikkTSpaceInterface, ptr %9, i64 0, i32 5
  store ptr @SetTSpace, ptr %404, align 8, !tbaa !699
  %405 = call i32 @genTangSpaceDefault(ptr noundef nonnull %8) #16
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %9) #16
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %8) #16
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %7) #16
  br label %406

406:                                              ; preds = %398, %396
  ret void
}

declare ptr @BLI_ghash_lookup(ptr noundef, ptr noundef) local_unnamed_addr #6

declare ptr @BLI_ghash_ptr_new(ptr noundef) local_unnamed_addr #6

declare void @BLI_ghash_insert(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #6

declare ptr @CustomData_get_layer_n(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #6

declare void @psys_interpolate_uvs(ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #6

declare void @psys_interpolate_mcol(ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #6

declare ptr @RE_inithalo_particle(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, float noundef, float noundef, i32 noundef, ptr noundef) local_unnamed_addr #6

declare ptr @RE_findOrAddVlak(ptr noundef, i32 noundef) local_unnamed_addr #6

declare ptr @RE_findOrAddVert(ptr noundef, i32 noundef) local_unnamed_addr #6

declare float @normal_quad_v3(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #6

declare ptr @RE_vlakren_get_surfnor(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #6

declare ptr @RE_vlakren_get_tface(ptr noundef, ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #6

declare ptr @RE_vlakren_get_mcol(ptr noundef, ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #6

declare void @project_v3_v3v3(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #6

declare void @mul_mat3_m4_v3(ptr noundef, ptr noundef) local_unnamed_addr #6

declare void @psys_make_billboard(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #6

; Function Attrs: mustprogress nofree nounwind willreturn memory(write)
declare double @fmod(double noundef, double noundef) local_unnamed_addr #2

declare void @accumulate_vertex_normals(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #6

declare ptr @RE_vertren_get_tangent(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable
define internal i32 @GetNumFaces(ptr nocapture noundef readonly %0) #10 {
  %2 = getelementptr inbounds %struct.SMikkTSpaceContext, ptr %0, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !690
  %4 = load ptr, ptr %3, align 8, !tbaa !688
  %5 = getelementptr inbounds %struct.ObjectRen, ptr %4, i64 0, i32 11
  %6 = load i32, ptr %5, align 4, !tbaa !293
  ret i32 %6
}

; Function Attrs: nounwind uwtable
define internal i32 @GetNumVertsOfFace(ptr nocapture noundef readonly %0, i32 noundef %1) #4 {
  %3 = getelementptr inbounds %struct.SMikkTSpaceContext, ptr %0, i64 0, i32 1
  %4 = load ptr, ptr %3, align 8, !tbaa !690
  %5 = load ptr, ptr %4, align 8, !tbaa !688
  %6 = tail call ptr @RE_findOrAddVlak(ptr noundef %5, i32 noundef %1) #16
  %7 = getelementptr inbounds %struct.VlakRen, ptr %6, i64 0, i32 3
  %8 = load ptr, ptr %7, align 8, !tbaa !557
  %9 = icmp eq ptr %8, null
  %10 = select i1 %9, i32 3, i32 4
  ret i32 %10
}

; Function Attrs: nounwind uwtable
define internal void @GetPosition(ptr nocapture noundef readonly %0, ptr nocapture noundef writeonly %1, i32 noundef %2, i32 noundef %3) #4 {
  %5 = getelementptr inbounds %struct.SMikkTSpaceContext, ptr %0, i64 0, i32 1
  %6 = load ptr, ptr %5, align 8, !tbaa !690
  %7 = load ptr, ptr %6, align 8, !tbaa !688
  %8 = tail call ptr @RE_findOrAddVlak(ptr noundef %7, i32 noundef %2) #16
  %9 = sext i32 %3 to i64
  %10 = getelementptr inbounds ptr, ptr %8, i64 %9
  %11 = load ptr, ptr %10, align 8, !tbaa !553
  %12 = load float, ptr %11, align 4, !tbaa !44
  store float %12, ptr %1, align 4, !tbaa !44
  %13 = getelementptr inbounds float, ptr %11, i64 1
  %14 = load float, ptr %13, align 4, !tbaa !44
  %15 = getelementptr inbounds float, ptr %1, i64 1
  store float %14, ptr %15, align 4, !tbaa !44
  %16 = getelementptr inbounds float, ptr %11, i64 2
  %17 = load float, ptr %16, align 4, !tbaa !44
  %18 = getelementptr inbounds float, ptr %1, i64 2
  store float %17, ptr %18, align 4, !tbaa !44
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @GetTextureCoordinate(ptr nocapture noundef readonly %0, ptr noundef %1, i32 noundef %2, i32 noundef %3) #4 {
  %5 = getelementptr inbounds %struct.SMikkTSpaceContext, ptr %0, i64 0, i32 1
  %6 = load ptr, ptr %5, align 8, !tbaa !690
  %7 = load ptr, ptr %6, align 8, !tbaa !688
  %8 = tail call ptr @RE_findOrAddVlak(ptr noundef %7, i32 noundef %2) #16
  %9 = load ptr, ptr %6, align 8, !tbaa !688
  %10 = getelementptr inbounds %struct.ObjectRen, ptr %9, i64 0, i32 25
  %11 = load i32, ptr %10, align 8, !tbaa !684
  %12 = tail call ptr @RE_vlakren_get_tface(ptr noundef %9, ptr noundef %8, i32 noundef %11, ptr noundef null, i32 noundef 0) #16
  %13 = icmp eq ptr %12, null
  %14 = sext i32 %3 to i64
  br i1 %13, label %21, label %15

15:                                               ; preds = %4
  %16 = getelementptr inbounds [4 x [2 x float]], ptr %12, i64 0, i64 %14
  %17 = load float, ptr %16, align 4, !tbaa !44
  store float %17, ptr %1, align 4, !tbaa !44
  %18 = getelementptr inbounds float, ptr %16, i64 1
  %19 = load float, ptr %18, align 4, !tbaa !44
  %20 = getelementptr inbounds float, ptr %1, i64 1
  store float %19, ptr %20, align 4, !tbaa !44
  br label %36

21:                                               ; preds = %4
  %22 = getelementptr inbounds ptr, ptr %8, i64 %14
  %23 = load ptr, ptr %22, align 8, !tbaa !553
  %24 = getelementptr inbounds %struct.VertRen, ptr %23, i64 0, i32 2
  %25 = load ptr, ptr %24, align 8, !tbaa !548
  %26 = icmp eq ptr %25, null
  br i1 %26, label %34, label %27

27:                                               ; preds = %21
  %28 = getelementptr inbounds float, ptr %1, i64 1
  %29 = load float, ptr %25, align 4, !tbaa !44
  %30 = getelementptr inbounds float, ptr %25, i64 1
  %31 = load float, ptr %30, align 4, !tbaa !44
  %32 = getelementptr inbounds float, ptr %25, i64 2
  %33 = load float, ptr %32, align 4, !tbaa !44
  tail call void @map_to_sphere(ptr noundef %1, ptr noundef nonnull %28, float noundef %29, float noundef %31, float noundef %33) #16
  br label %36

34:                                               ; preds = %21
  store float 0.000000e+00, ptr %1, align 4, !tbaa !44
  %35 = getelementptr inbounds float, ptr %1, i64 1
  store float 0.000000e+00, ptr %35, align 4, !tbaa !44
  br label %36

36:                                               ; preds = %27, %34, %15
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @GetNormal(ptr nocapture noundef readonly %0, ptr nocapture noundef writeonly %1, i32 noundef %2, i32 noundef %3) #4 {
  %5 = getelementptr inbounds %struct.SMikkTSpaceContext, ptr %0, i64 0, i32 1
  %6 = load ptr, ptr %5, align 8, !tbaa !690
  %7 = load ptr, ptr %6, align 8, !tbaa !688
  %8 = tail call ptr @RE_findOrAddVlak(ptr noundef %7, i32 noundef %2) #16
  %9 = getelementptr inbounds %struct.VlakRen, ptr %8, i64 0, i32 7
  %10 = load i8, ptr %9, align 1, !tbaa !559
  %11 = and i8 %10, 1
  %12 = icmp eq i8 %11, 0
  br i1 %12, label %24, label %13

13:                                               ; preds = %4
  %14 = sext i32 %3 to i64
  %15 = getelementptr inbounds ptr, ptr %8, i64 %14
  %16 = load ptr, ptr %15, align 8, !tbaa !553
  %17 = getelementptr inbounds %struct.VertRen, ptr %16, i64 0, i32 1
  %18 = load float, ptr %17, align 4, !tbaa !44
  store float %18, ptr %1, align 4, !tbaa !44
  %19 = getelementptr inbounds %struct.VertRen, ptr %16, i64 0, i32 1, i64 1
  %20 = load float, ptr %19, align 4, !tbaa !44
  %21 = getelementptr inbounds float, ptr %1, i64 1
  store float %20, ptr %21, align 4, !tbaa !44
  %22 = getelementptr inbounds %struct.VertRen, ptr %16, i64 0, i32 1, i64 2
  %23 = load float, ptr %22, align 4, !tbaa !44
  br label %35

24:                                               ; preds = %4
  %25 = getelementptr inbounds %struct.VlakRen, ptr %8, i64 0, i32 4
  %26 = load float, ptr %25, align 4, !tbaa !44
  %27 = fneg float %26
  store float %27, ptr %1, align 4, !tbaa !44
  %28 = getelementptr inbounds %struct.VlakRen, ptr %8, i64 0, i32 4, i64 1
  %29 = load float, ptr %28, align 4, !tbaa !44
  %30 = fneg float %29
  %31 = getelementptr inbounds float, ptr %1, i64 1
  store float %30, ptr %31, align 4, !tbaa !44
  %32 = getelementptr inbounds %struct.VlakRen, ptr %8, i64 0, i32 4, i64 2
  %33 = load float, ptr %32, align 4, !tbaa !44
  %34 = fneg float %33
  br label %35

35:                                               ; preds = %24, %13
  %36 = phi float [ %34, %24 ], [ %23, %13 ]
  %37 = getelementptr inbounds float, ptr %1, i64 2
  store float %36, ptr %37, align 4, !tbaa !44
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @SetTSpace(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, float noundef %2, i32 noundef %3, i32 noundef %4) #4 {
  %6 = getelementptr inbounds %struct.SMikkTSpaceContext, ptr %0, i64 0, i32 1
  %7 = load ptr, ptr %6, align 8, !tbaa !690
  %8 = load ptr, ptr %7, align 8, !tbaa !688
  %9 = tail call ptr @RE_findOrAddVlak(ptr noundef %8, i32 noundef %3) #16
  %10 = load ptr, ptr %7, align 8, !tbaa !688
  %11 = tail call ptr @RE_vlakren_get_nmap_tangent(ptr noundef %10, ptr noundef %9, i32 noundef 1) #16
  %12 = icmp eq ptr %11, null
  br i1 %12, label %27, label %13

13:                                               ; preds = %5
  %14 = shl nsw i32 %4, 2
  %15 = sext i32 %14 to i64
  %16 = getelementptr inbounds float, ptr %11, i64 %15
  %17 = load float, ptr %1, align 4, !tbaa !44
  store float %17, ptr %16, align 4, !tbaa !44
  %18 = getelementptr inbounds float, ptr %1, i64 1
  %19 = load float, ptr %18, align 4, !tbaa !44
  %20 = getelementptr inbounds float, ptr %16, i64 1
  store float %19, ptr %20, align 4, !tbaa !44
  %21 = getelementptr inbounds float, ptr %1, i64 2
  %22 = load float, ptr %21, align 4, !tbaa !44
  %23 = getelementptr inbounds float, ptr %16, i64 2
  store float %22, ptr %23, align 4, !tbaa !44
  %24 = or disjoint i32 %14, 3
  %25 = sext i32 %24 to i64
  %26 = getelementptr inbounds float, ptr %11, i64 %25
  store float %2, ptr %26, align 4, !tbaa !44
  br label %27

27:                                               ; preds = %13, %5
  ret void
}

declare i32 @genTangSpaceDefault(ptr noundef) local_unnamed_addr #6

declare void @map_to_sphere(ptr noundef, ptr noundef, float noundef, float noundef, float noundef) local_unnamed_addr #6

declare void @tangent_from_uv(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #6

declare ptr @RE_vlakren_get_nmap_tangent(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #6

declare void @BKE_displist_make_curveTypes_forRender(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #6

declare zeroext i8 @is_negative_m4(ptr noundef) local_unnamed_addr #6

declare void @transpose_m4(ptr noundef) local_unnamed_addr #6

declare ptr @BKE_displist_make_orco(ptr noundef, ptr noundef, ptr noundef, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #6

; Function Attrs: nounwind uwtable
define internal fastcc void @init_render_dm(ptr noundef %0, ptr nocapture noundef %1, ptr noundef %2, i32 noundef %3, ptr noundef %4, ptr noundef %5) unnamed_addr #4 {
  %7 = alloca ptr, align 8
  %8 = getelementptr inbounds %struct.ObjectRen, ptr %2, i64 0, i32 2
  %9 = load ptr, ptr %8, align 8, !tbaa !184
  %10 = getelementptr inbounds %struct.DerivedMesh, ptr %0, i64 0, i32 31
  %11 = load ptr, ptr %10, align 8, !tbaa !589
  %12 = tail call ptr %11(ptr noundef %0) #16
  %13 = getelementptr inbounds %struct.DerivedMesh, ptr %0, i64 0, i32 23
  %14 = load ptr, ptr %13, align 8, !tbaa !590
  %15 = tail call i32 %14(ptr noundef %0) #16
  %16 = icmp sgt i32 %15, 0
  br i1 %16, label %17, label %42

17:                                               ; preds = %6
  %18 = getelementptr inbounds %struct.ObjectRen, ptr %2, i64 0, i32 10
  br label %19

19:                                               ; preds = %17, %37
  %20 = phi ptr [ %4, %17 ], [ %38, %37 ]
  %21 = phi i32 [ 0, %17 ], [ %39, %37 ]
  %22 = phi ptr [ %12, %17 ], [ %40, %37 ]
  %23 = load i32, ptr %18, align 8, !tbaa !211
  %24 = add nsw i32 %23, 1
  store i32 %24, ptr %18, align 8, !tbaa !211
  %25 = tail call ptr @RE_findOrAddVert(ptr noundef %2, i32 noundef %23) #16
  %26 = load float, ptr %22, align 4, !tbaa !44
  store float %26, ptr %25, align 4, !tbaa !44
  %27 = getelementptr inbounds float, ptr %22, i64 1
  %28 = load float, ptr %27, align 4, !tbaa !44
  %29 = getelementptr inbounds float, ptr %25, i64 1
  store float %28, ptr %29, align 4, !tbaa !44
  %30 = getelementptr inbounds float, ptr %22, i64 2
  %31 = load float, ptr %30, align 4, !tbaa !44
  %32 = getelementptr inbounds float, ptr %25, i64 2
  store float %31, ptr %32, align 4, !tbaa !44
  tail call void @mul_m4_v3(ptr noundef %5, ptr noundef nonnull %25) #16
  %33 = icmp eq ptr %20, null
  br i1 %33, label %37, label %34

34:                                               ; preds = %19
  %35 = getelementptr inbounds %struct.VertRen, ptr %25, i64 0, i32 2
  store ptr %20, ptr %35, align 8, !tbaa !548
  %36 = getelementptr inbounds float, ptr %20, i64 3
  br label %37

37:                                               ; preds = %19, %34
  %38 = phi ptr [ %36, %34 ], [ null, %19 ]
  %39 = add nuw nsw i32 %21, 1
  %40 = getelementptr inbounds %struct.MVert, ptr %22, i64 1
  %41 = icmp eq i32 %39, %15
  br i1 %41, label %42, label %19, !llvm.loop !700

42:                                               ; preds = %37, %6
  %43 = icmp eq i32 %3, 0
  br i1 %43, label %44, label %173

44:                                               ; preds = %42
  %45 = getelementptr inbounds %struct.DerivedMesh, ptr %0, i64 0, i32 2
  tail call void @RE_set_customdata_names(ptr noundef %2, ptr noundef nonnull %45) #16
  %46 = getelementptr inbounds %struct.ObjectRen, ptr %2, i64 0, i32 10
  %47 = load i32, ptr %46, align 8, !tbaa !211
  %48 = sub nsw i32 %47, %15
  %49 = getelementptr inbounds %struct.Object, ptr %9, i64 0, i32 31
  %50 = getelementptr inbounds %struct.DerivedMesh, ptr %0, i64 0, i32 25
  %51 = getelementptr inbounds %struct.DerivedMesh, ptr %0, i64 0, i32 33
  %52 = getelementptr inbounds %struct.ObjectRen, ptr %2, i64 0, i32 11
  %53 = getelementptr inbounds %struct.DerivedMesh, ptr %0, i64 0, i32 2, i32 2
  br label %55

54:                                               ; preds = %168, %64
  br label %55, !llvm.loop !701

55:                                               ; preds = %54, %44
  %56 = phi i16 [ 0, %44 ], [ %65, %54 ]
  %57 = sext i16 %56 to i32
  %58 = load i32, ptr %49, align 8, !tbaa !276
  %59 = icmp sgt i32 %58, %57
  br i1 %59, label %64, label %60

60:                                               ; preds = %55
  %61 = icmp eq i16 %56, 0
  %62 = icmp eq i32 %58, 0
  %63 = and i1 %61, %62
  br i1 %63, label %64, label %172

64:                                               ; preds = %60, %55
  %65 = add i16 %56, 1
  %66 = call fastcc ptr @give_render_material(ptr noundef %1, ptr noundef %9, i16 noundef signext %65)
  %67 = load ptr, ptr %50, align 8, !tbaa !480
  %68 = call i32 %67(ptr noundef %0) #16
  %69 = load ptr, ptr %51, align 8, !tbaa !601
  %70 = call ptr %69(ptr noundef %0) #16
  %71 = icmp sgt i32 %68, 0
  br i1 %71, label %72, label %54

72:                                               ; preds = %64
  %73 = zext nneg i32 %68 to i64
  br label %74

74:                                               ; preds = %72, %168
  %75 = phi i64 [ 0, %72 ], [ %169, %168 ]
  %76 = phi ptr [ %70, %72 ], [ %170, %168 ]
  %77 = getelementptr inbounds %struct.MFace, ptr %76, i64 0, i32 4
  %78 = load i16, ptr %77, align 4, !tbaa !602
  %79 = icmp eq i16 %78, %56
  br i1 %79, label %80, label %168

80:                                               ; preds = %74
  %81 = load i32, ptr %76, align 4, !tbaa !610
  %82 = getelementptr inbounds %struct.MFace, ptr %76, i64 0, i32 1
  %83 = load i32, ptr %82, align 4, !tbaa !604
  %84 = getelementptr inbounds %struct.MFace, ptr %76, i64 0, i32 2
  %85 = load i32, ptr %84, align 4, !tbaa !609
  %86 = getelementptr inbounds %struct.MFace, ptr %76, i64 0, i32 3
  %87 = load i32, ptr %86, align 4, !tbaa !605
  %88 = getelementptr inbounds %struct.MFace, ptr %76, i64 0, i32 6
  %89 = load i8, ptr %88, align 1, !tbaa !606
  %90 = and i8 %89, 1
  %91 = load i32, ptr %52, align 4, !tbaa !293
  %92 = add nsw i32 %91, 1
  store i32 %92, ptr %52, align 4, !tbaa !293
  %93 = call ptr @RE_findOrAddVlak(ptr noundef %2, i32 noundef %91) #16
  %94 = add nsw i32 %81, %48
  %95 = call ptr @RE_findOrAddVert(ptr noundef %2, i32 noundef %94) #16
  store ptr %95, ptr %93, align 8, !tbaa !553
  %96 = add nsw i32 %83, %48
  %97 = call ptr @RE_findOrAddVert(ptr noundef %2, i32 noundef %96) #16
  %98 = getelementptr inbounds %struct.VlakRen, ptr %93, i64 0, i32 1
  store ptr %97, ptr %98, align 8, !tbaa !555
  %99 = add nsw i32 %85, %48
  %100 = call ptr @RE_findOrAddVert(ptr noundef %2, i32 noundef %99) #16
  %101 = getelementptr inbounds %struct.VlakRen, ptr %93, i64 0, i32 2
  store ptr %100, ptr %101, align 8, !tbaa !556
  %102 = icmp eq i32 %87, 0
  br i1 %102, label %106, label %103

103:                                              ; preds = %80
  %104 = add nsw i32 %87, %48
  %105 = call ptr @RE_findOrAddVert(ptr noundef %2, i32 noundef %104) #16
  br label %106

106:                                              ; preds = %80, %103
  %107 = phi ptr [ %105, %103 ], [ null, %80 ]
  %108 = getelementptr inbounds %struct.VlakRen, ptr %93, i64 0, i32 3
  store ptr %107, ptr %108, align 8, !tbaa !557
  %109 = icmp eq ptr %107, null
  %110 = getelementptr inbounds %struct.VlakRen, ptr %93, i64 0, i32 4
  %111 = load ptr, ptr %101, align 8, !tbaa !556
  %112 = load ptr, ptr %98, align 8, !tbaa !555
  %113 = load ptr, ptr %93, align 8, !tbaa !553
  br i1 %109, label %116, label %114

114:                                              ; preds = %106
  %115 = call float @normal_quad_v3(ptr noundef nonnull %110, ptr noundef nonnull %107, ptr noundef %111, ptr noundef %112, ptr noundef %113) #16
  br label %118

116:                                              ; preds = %106
  %117 = call float @normal_tri_v3(ptr noundef nonnull %110, ptr noundef %111, ptr noundef %112, ptr noundef %113) #16
  br label %118

118:                                              ; preds = %116, %114
  %119 = phi float [ %115, %114 ], [ %117, %116 ]
  %120 = getelementptr inbounds %struct.VlakRen, ptr %93, i64 0, i32 5
  store ptr %66, ptr %120, align 8, !tbaa !558
  %121 = getelementptr inbounds %struct.VlakRen, ptr %93, i64 0, i32 7
  store i8 %90, ptr %121, align 1, !tbaa !559
  %122 = getelementptr inbounds %struct.VlakRen, ptr %93, i64 0, i32 8
  store i8 0, ptr %122, align 2, !tbaa !560
  %123 = fcmp oeq float %119, 0.000000e+00
  br i1 %123, label %124, label %127

124:                                              ; preds = %118
  %125 = load i32, ptr %52, align 4, !tbaa !293
  %126 = add nsw i32 %125, -1
  store i32 %126, ptr %52, align 4, !tbaa !293
  br label %168

127:                                              ; preds = %118
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %7) #16
  %128 = load i32, ptr %53, align 4, !tbaa !611
  %129 = icmp sgt i32 %128, 0
  br i1 %129, label %130, label %167

130:                                              ; preds = %127
  %131 = shl i64 %75, 2
  %132 = and i64 %131, 4294967292
  br label %133

133:                                              ; preds = %130, %160
  %134 = phi i64 [ 0, %130 ], [ %163, %160 ]
  %135 = phi i32 [ 0, %130 ], [ %162, %160 ]
  %136 = phi i32 [ 0, %130 ], [ %161, %160 ]
  %137 = load ptr, ptr %45, align 8, !tbaa !612
  %138 = getelementptr inbounds %struct.CustomDataLayer, ptr %137, i64 %134
  %139 = getelementptr inbounds %struct.CustomDataLayer, ptr %137, i64 %134, i32 8
  store ptr %139, ptr %7, align 8, !tbaa !77
  %140 = load i32, ptr %138, align 8, !tbaa !613
  %141 = icmp eq i32 %140, 5
  %142 = icmp slt i32 %136, 8
  %143 = select i1 %141, i1 %142, i1 false
  br i1 %143, label %144, label %150

144:                                              ; preds = %133
  %145 = add nsw i32 %136, 1
  %146 = call ptr @RE_vlakren_get_tface(ptr noundef %2, ptr noundef nonnull %93, i32 noundef %136, ptr noundef nonnull %7, i32 noundef 1) #16
  %147 = getelementptr inbounds %struct.CustomDataLayer, ptr %137, i64 %134, i32 9
  %148 = load ptr, ptr %147, align 8, !tbaa !615
  %149 = getelementptr inbounds %struct.MTFace, ptr %148, i64 %75
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %146, ptr noundef nonnull align 8 dereferenceable(48) %149, i64 48, i1 false), !tbaa.struct !616
  br label %160

150:                                              ; preds = %133
  %151 = icmp eq i32 %140, 6
  %152 = icmp slt i32 %135, 8
  %153 = select i1 %151, i1 %152, i1 false
  br i1 %153, label %154, label %160

154:                                              ; preds = %150
  %155 = add nsw i32 %135, 1
  %156 = call ptr @RE_vlakren_get_mcol(ptr noundef %2, ptr noundef nonnull %93, i32 noundef %135, ptr noundef nonnull %7, i32 noundef 1) #16
  %157 = getelementptr inbounds %struct.CustomDataLayer, ptr %137, i64 %134, i32 9
  %158 = load ptr, ptr %157, align 8, !tbaa !615
  %159 = getelementptr inbounds %struct.MCol, ptr %158, i64 %132
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(16) %156, ptr noundef nonnull align 1 dereferenceable(16) %159, i64 16, i1 false)
  br label %160

160:                                              ; preds = %144, %154, %150
  %161 = phi i32 [ %145, %144 ], [ %136, %154 ], [ %136, %150 ]
  %162 = phi i32 [ %135, %144 ], [ %155, %154 ], [ %135, %150 ]
  %163 = add nuw nsw i64 %134, 1
  %164 = load i32, ptr %53, align 4, !tbaa !611
  %165 = sext i32 %164 to i64
  %166 = icmp slt i64 %163, %165
  br i1 %166, label %133, label %167, !llvm.loop !702

167:                                              ; preds = %160, %127
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %7) #16
  br label %168

168:                                              ; preds = %124, %167, %74
  %169 = add nuw nsw i64 %75, 1
  %170 = getelementptr inbounds %struct.MFace, ptr %76, i64 1
  %171 = icmp eq i64 %169, %73
  br i1 %171, label %54, label %74, !llvm.loop !703

172:                                              ; preds = %60
  call fastcc void @calc_vertexnormals(ptr noundef %2, i8 noundef zeroext 1, i8 noundef zeroext 0, i8 noundef zeroext 0)
  br label %173

173:                                              ; preds = %172, %42
  ret void
}

declare ptr @BKE_curve_make_orco(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #6

declare float @area_tri_v3(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #6

declare float @normal_tri_v3(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #6

; Function Attrs: nounwind uwtable
define internal fastcc i32 @dl_surf_to_renderdata(ptr noundef %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2, ptr noundef %3, ptr noundef %4) unnamed_addr #4 {
  %6 = alloca [3 x float], align 4
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %6) #16
  %7 = getelementptr inbounds %struct.ObjectRen, ptr %0, i64 0, i32 10
  %8 = load i32, ptr %7, align 8, !tbaa !211
  %9 = getelementptr inbounds %struct.DispList, ptr %1, i64 0, i32 4
  %10 = load i32, ptr %9, align 4, !tbaa !551
  %11 = getelementptr inbounds %struct.DispList, ptr %1, i64 0, i32 5
  %12 = load i32, ptr %11, align 8, !tbaa !546
  %13 = icmp sgt i32 %10, 0
  br i1 %13, label %14, label %96

14:                                               ; preds = %5
  %15 = getelementptr inbounds %struct.DispList, ptr %1, i64 0, i32 8
  %16 = load ptr, ptr %15, align 8, !tbaa !547
  %17 = icmp sgt i32 %12, 1
  %18 = getelementptr inbounds %struct.DispList, ptr %1, i64 0, i32 3
  br label %19

19:                                               ; preds = %14, %91
  %20 = phi ptr [ %3, %14 ], [ %93, %91 ]
  %21 = phi i32 [ 0, %14 ], [ %92, %91 ]
  %22 = phi i32 [ 0, %14 ], [ %94, %91 ]
  %23 = phi ptr [ %16, %14 ], [ %73, %91 ]
  %24 = load i32, ptr %7, align 8, !tbaa !211
  %25 = add nsw i32 %24, 1
  store i32 %25, ptr %7, align 8, !tbaa !211
  %26 = tail call ptr @RE_findOrAddVert(ptr noundef %0, i32 noundef %24) #16
  %27 = load float, ptr %23, align 4, !tbaa !44
  store float %27, ptr %26, align 4, !tbaa !44
  %28 = getelementptr inbounds float, ptr %23, i64 1
  %29 = load float, ptr %28, align 4, !tbaa !44
  %30 = getelementptr inbounds float, ptr %26, i64 1
  store float %29, ptr %30, align 4, !tbaa !44
  %31 = getelementptr inbounds float, ptr %23, i64 2
  %32 = load float, ptr %31, align 4, !tbaa !44
  %33 = getelementptr inbounds float, ptr %26, i64 2
  store float %32, ptr %33, align 4, !tbaa !44
  %34 = icmp eq ptr %20, null
  br i1 %34, label %39, label %35

35:                                               ; preds = %19
  %36 = getelementptr inbounds %struct.VertRen, ptr %26, i64 0, i32 2
  store ptr %20, ptr %36, align 8, !tbaa !548
  %37 = getelementptr inbounds float, ptr %20, i64 3
  %38 = add nsw i32 %21, 1
  br label %39

39:                                               ; preds = %35, %19
  %40 = phi i32 [ %38, %35 ], [ %21, %19 ]
  %41 = phi ptr [ %37, %35 ], [ null, %19 ]
  tail call void @mul_m4_v3(ptr noundef %4, ptr noundef nonnull %26) #16
  %42 = getelementptr inbounds float, ptr %23, i64 3
  br i1 %17, label %43, label %70

43:                                               ; preds = %39, %64
  %44 = phi ptr [ %68, %64 ], [ %42, %39 ]
  %45 = phi ptr [ %66, %64 ], [ %41, %39 ]
  %46 = phi i32 [ %65, %64 ], [ %40, %39 ]
  %47 = phi i32 [ %67, %64 ], [ 1, %39 ]
  %48 = phi ptr [ %44, %64 ], [ %23, %39 ]
  %49 = load i32, ptr %7, align 8, !tbaa !211
  %50 = add nsw i32 %49, 1
  store i32 %50, ptr %7, align 8, !tbaa !211
  %51 = tail call ptr @RE_findOrAddVert(ptr noundef %0, i32 noundef %49) #16
  %52 = load float, ptr %44, align 4, !tbaa !44
  store float %52, ptr %51, align 4, !tbaa !44
  %53 = getelementptr inbounds float, ptr %48, i64 4
  %54 = load float, ptr %53, align 4, !tbaa !44
  %55 = getelementptr inbounds float, ptr %51, i64 1
  store float %54, ptr %55, align 4, !tbaa !44
  %56 = getelementptr inbounds float, ptr %48, i64 5
  %57 = load float, ptr %56, align 4, !tbaa !44
  %58 = getelementptr inbounds float, ptr %51, i64 2
  store float %57, ptr %58, align 4, !tbaa !44
  %59 = icmp eq ptr %45, null
  br i1 %59, label %64, label %60

60:                                               ; preds = %43
  %61 = getelementptr inbounds %struct.VertRen, ptr %51, i64 0, i32 2
  store ptr %45, ptr %61, align 8, !tbaa !548
  %62 = getelementptr inbounds float, ptr %45, i64 3
  %63 = add nsw i32 %46, 1
  br label %64

64:                                               ; preds = %60, %43
  %65 = phi i32 [ %63, %60 ], [ %46, %43 ]
  %66 = phi ptr [ %62, %60 ], [ null, %43 ]
  tail call void @mul_m4_v3(ptr noundef %4, ptr noundef nonnull %51) #16
  %67 = add nuw nsw i32 %47, 1
  %68 = getelementptr inbounds float, ptr %44, i64 3
  %69 = icmp eq i32 %67, %12
  br i1 %69, label %70, label %43, !llvm.loop !704

70:                                               ; preds = %64, %39
  %71 = phi i32 [ %40, %39 ], [ %65, %64 ]
  %72 = phi ptr [ %41, %39 ], [ %66, %64 ]
  %73 = phi ptr [ %42, %39 ], [ %68, %64 ]
  %74 = load i16, ptr %18, align 2, !tbaa !564
  %75 = and i16 %74, 1
  %76 = icmp eq i16 %75, 0
  br i1 %76, label %91, label %77

77:                                               ; preds = %70
  %78 = load i32, ptr %7, align 8, !tbaa !211
  %79 = add nsw i32 %78, 1
  store i32 %79, ptr %7, align 8, !tbaa !211
  %80 = tail call ptr @RE_findOrAddVert(ptr noundef %0, i32 noundef %78) #16
  %81 = load float, ptr %26, align 4, !tbaa !44
  store float %81, ptr %80, align 4, !tbaa !44
  %82 = load float, ptr %30, align 4, !tbaa !44
  %83 = getelementptr inbounds float, ptr %80, i64 1
  store float %82, ptr %83, align 4, !tbaa !44
  %84 = load float, ptr %33, align 4, !tbaa !44
  %85 = getelementptr inbounds float, ptr %80, i64 2
  store float %84, ptr %85, align 4, !tbaa !44
  %86 = icmp eq ptr %72, null
  br i1 %86, label %91, label %87

87:                                               ; preds = %77
  %88 = getelementptr inbounds %struct.VertRen, ptr %80, i64 0, i32 2
  store ptr %72, ptr %88, align 8, !tbaa !548
  %89 = getelementptr inbounds float, ptr %72, i64 3
  %90 = add nsw i32 %71, 1
  br label %91

91:                                               ; preds = %70, %87, %77
  %92 = phi i32 [ %90, %87 ], [ %71, %77 ], [ %71, %70 ]
  %93 = phi ptr [ %89, %87 ], [ null, %77 ], [ %72, %70 ]
  %94 = add nuw nsw i32 %22, 1
  %95 = icmp eq i32 %94, %10
  br i1 %95, label %96, label %19, !llvm.loop !705

96:                                               ; preds = %91, %5
  %97 = phi i32 [ 0, %5 ], [ %92, %91 ]
  %98 = phi ptr [ %3, %5 ], [ %93, %91 ]
  %99 = getelementptr inbounds %struct.DispList, ptr %1, i64 0, i32 3
  %100 = load i16, ptr %99, align 2, !tbaa !564
  %101 = and i16 %100, 1
  %102 = zext nneg i16 %101 to i32
  %103 = add i32 %12, %102
  %104 = and i16 %100, 2
  %105 = icmp ne i16 %104, 0
  %106 = lshr exact i16 %104, 1
  %107 = zext nneg i16 %106 to i32
  %108 = add i32 %10, %107
  %109 = icmp sgt i32 %103, 0
  %110 = select i1 %105, i1 %109, i1 false
  br i1 %110, label %111, label %137

111:                                              ; preds = %96, %132
  %112 = phi ptr [ %134, %132 ], [ %98, %96 ]
  %113 = phi i32 [ %133, %132 ], [ %97, %96 ]
  %114 = phi i32 [ %135, %132 ], [ 0, %96 ]
  %115 = add nsw i32 %114, %8
  %116 = tail call ptr @RE_findOrAddVert(ptr noundef %0, i32 noundef %115) #16
  %117 = load i32, ptr %7, align 8, !tbaa !211
  %118 = add nsw i32 %117, 1
  store i32 %118, ptr %7, align 8, !tbaa !211
  %119 = tail call ptr @RE_findOrAddVert(ptr noundef %0, i32 noundef %117) #16
  %120 = load float, ptr %116, align 4, !tbaa !44
  store float %120, ptr %119, align 4, !tbaa !44
  %121 = getelementptr inbounds float, ptr %116, i64 1
  %122 = load float, ptr %121, align 4, !tbaa !44
  %123 = getelementptr inbounds float, ptr %119, i64 1
  store float %122, ptr %123, align 4, !tbaa !44
  %124 = getelementptr inbounds float, ptr %116, i64 2
  %125 = load float, ptr %124, align 4, !tbaa !44
  %126 = getelementptr inbounds float, ptr %119, i64 2
  store float %125, ptr %126, align 4, !tbaa !44
  %127 = icmp eq ptr %112, null
  br i1 %127, label %132, label %128

128:                                              ; preds = %111
  %129 = getelementptr inbounds %struct.VertRen, ptr %119, i64 0, i32 2
  store ptr %112, ptr %129, align 8, !tbaa !548
  %130 = getelementptr inbounds float, ptr %112, i64 3
  %131 = add nsw i32 %113, 1
  br label %132

132:                                              ; preds = %111, %128
  %133 = phi i32 [ %131, %128 ], [ %113, %111 ]
  %134 = phi ptr [ %130, %128 ], [ null, %111 ]
  %135 = add nuw nsw i32 %114, 1
  %136 = icmp eq i32 %135, %103
  br i1 %136, label %137, label %111, !llvm.loop !706

137:                                              ; preds = %132, %96
  %138 = phi i32 [ %97, %96 ], [ %133, %132 ]
  %139 = getelementptr inbounds %struct.ObjectRen, ptr %0, i64 0, i32 11
  %140 = load i32, ptr %139, align 4, !tbaa !293
  %141 = add i32 %108, -1
  %142 = icmp sgt i32 %108, 1
  br i1 %142, label %143, label %237

143:                                              ; preds = %137
  %144 = add i32 %103, -1
  %145 = icmp sgt i32 %103, 1
  %146 = getelementptr inbounds float, ptr %6, i64 1
  %147 = getelementptr inbounds float, ptr %6, i64 2
  %148 = getelementptr inbounds %struct.DispList, ptr %1, i64 0, i32 6
  %149 = getelementptr inbounds %struct.DispList, ptr %1, i64 0, i32 7
  %150 = tail call i32 @llvm.smax.i32(i32 %144, i32 1)
  %151 = tail call i32 @llvm.smax.i32(i32 %141, i32 1)
  br label %152

152:                                              ; preds = %143, %234
  %153 = phi i32 [ 0, %143 ], [ %235, %234 ]
  br i1 %145, label %154, label %234

154:                                              ; preds = %152
  %155 = mul nsw i32 %153, %103
  %156 = add nsw i32 %155, %8
  %157 = add i32 %156, %103
  %158 = add nsw i32 %156, 1
  %159 = add nsw i32 %158, %103
  br label %160

160:                                              ; preds = %154, %160
  %161 = phi i32 [ %231, %160 ], [ %157, %154 ]
  %162 = phi i32 [ %230, %160 ], [ %159, %154 ]
  %163 = phi i32 [ %229, %160 ], [ %158, %154 ]
  %164 = phi i32 [ %228, %160 ], [ %156, %154 ]
  %165 = phi i32 [ %232, %160 ], [ 0, %154 ]
  %166 = call ptr @RE_findOrAddVert(ptr noundef %0, i32 noundef %164) #16
  %167 = call ptr @RE_findOrAddVert(ptr noundef %0, i32 noundef %163) #16
  %168 = call ptr @RE_findOrAddVert(ptr noundef %0, i32 noundef %162) #16
  %169 = call ptr @RE_findOrAddVert(ptr noundef %0, i32 noundef %161) #16
  %170 = load i32, ptr %139, align 4, !tbaa !293
  %171 = add nsw i32 %170, 1
  store i32 %171, ptr %139, align 4, !tbaa !293
  %172 = call ptr @RE_findOrAddVlak(ptr noundef %0, i32 noundef %170) #16
  store ptr %166, ptr %172, align 8, !tbaa !553
  %173 = getelementptr inbounds %struct.VlakRen, ptr %172, i64 0, i32 1
  store ptr %167, ptr %173, align 8, !tbaa !555
  %174 = getelementptr inbounds %struct.VlakRen, ptr %172, i64 0, i32 2
  store ptr %168, ptr %174, align 8, !tbaa !556
  %175 = getelementptr inbounds %struct.VlakRen, ptr %172, i64 0, i32 3
  store ptr %169, ptr %175, align 8, !tbaa !557
  %176 = call float @normal_quad_v3(ptr noundef nonnull %6, ptr noundef %169, ptr noundef %168, ptr noundef %167, ptr noundef %166) #16
  %177 = getelementptr inbounds %struct.VlakRen, ptr %172, i64 0, i32 4
  %178 = load float, ptr %6, align 4, !tbaa !44
  store float %178, ptr %177, align 4, !tbaa !44
  %179 = load float, ptr %146, align 4, !tbaa !44
  %180 = getelementptr inbounds %struct.VlakRen, ptr %172, i64 0, i32 4, i64 1
  store float %179, ptr %180, align 4, !tbaa !44
  %181 = load float, ptr %147, align 4, !tbaa !44
  %182 = getelementptr inbounds %struct.VlakRen, ptr %172, i64 0, i32 4, i64 2
  store float %181, ptr %182, align 4, !tbaa !44
  %183 = load i16, ptr %148, align 4, !tbaa !543
  %184 = sext i16 %183 to i64
  %185 = getelementptr inbounds ptr, ptr %2, i64 %184
  %186 = load ptr, ptr %185, align 8, !tbaa !77
  %187 = getelementptr inbounds %struct.VlakRen, ptr %172, i64 0, i32 5
  store ptr %186, ptr %187, align 8, !tbaa !558
  %188 = getelementptr inbounds %struct.VlakRen, ptr %172, i64 0, i32 8
  store i8 3, ptr %188, align 2, !tbaa !560
  %189 = load i16, ptr %149, align 2, !tbaa !568
  %190 = trunc i16 %189 to i8
  %191 = getelementptr inbounds %struct.VlakRen, ptr %172, i64 0, i32 7
  store i8 %190, ptr %191, align 1, !tbaa !559
  %192 = getelementptr inbounds %struct.VertRen, ptr %166, i64 0, i32 1
  %193 = load float, ptr %192, align 4, !tbaa !44
  %194 = fadd float %178, %193
  store float %194, ptr %192, align 4, !tbaa !44
  %195 = getelementptr inbounds %struct.VertRen, ptr %166, i64 0, i32 1, i64 1
  %196 = load float, ptr %195, align 4, !tbaa !44
  %197 = fadd float %179, %196
  store float %197, ptr %195, align 4, !tbaa !44
  %198 = getelementptr inbounds %struct.VertRen, ptr %166, i64 0, i32 1, i64 2
  %199 = load float, ptr %198, align 4, !tbaa !44
  %200 = fadd float %181, %199
  store float %200, ptr %198, align 4, !tbaa !44
  %201 = getelementptr inbounds %struct.VertRen, ptr %167, i64 0, i32 1
  %202 = load float, ptr %201, align 4, !tbaa !44
  %203 = fadd float %178, %202
  store float %203, ptr %201, align 4, !tbaa !44
  %204 = getelementptr inbounds %struct.VertRen, ptr %167, i64 0, i32 1, i64 1
  %205 = load float, ptr %204, align 4, !tbaa !44
  %206 = fadd float %179, %205
  store float %206, ptr %204, align 4, !tbaa !44
  %207 = getelementptr inbounds %struct.VertRen, ptr %167, i64 0, i32 1, i64 2
  %208 = load float, ptr %207, align 4, !tbaa !44
  %209 = fadd float %181, %208
  store float %209, ptr %207, align 4, !tbaa !44
  %210 = getelementptr inbounds %struct.VertRen, ptr %168, i64 0, i32 1
  %211 = load float, ptr %210, align 4, !tbaa !44
  %212 = fadd float %178, %211
  store float %212, ptr %210, align 4, !tbaa !44
  %213 = getelementptr inbounds %struct.VertRen, ptr %168, i64 0, i32 1, i64 1
  %214 = load float, ptr %213, align 4, !tbaa !44
  %215 = fadd float %179, %214
  store float %215, ptr %213, align 4, !tbaa !44
  %216 = getelementptr inbounds %struct.VertRen, ptr %168, i64 0, i32 1, i64 2
  %217 = load float, ptr %216, align 4, !tbaa !44
  %218 = fadd float %181, %217
  store float %218, ptr %216, align 4, !tbaa !44
  %219 = getelementptr inbounds %struct.VertRen, ptr %169, i64 0, i32 1
  %220 = load float, ptr %219, align 4, !tbaa !44
  %221 = fadd float %178, %220
  store float %221, ptr %219, align 4, !tbaa !44
  %222 = getelementptr inbounds %struct.VertRen, ptr %169, i64 0, i32 1, i64 1
  %223 = load float, ptr %222, align 4, !tbaa !44
  %224 = fadd float %179, %223
  store float %224, ptr %222, align 4, !tbaa !44
  %225 = getelementptr inbounds %struct.VertRen, ptr %169, i64 0, i32 1, i64 2
  %226 = load float, ptr %225, align 4, !tbaa !44
  %227 = fadd float %181, %226
  store float %227, ptr %225, align 4, !tbaa !44
  %228 = add nsw i32 %164, 1
  %229 = add nsw i32 %163, 1
  %230 = add nsw i32 %162, 1
  %231 = add nsw i32 %161, 1
  %232 = add nuw nsw i32 %165, 1
  %233 = icmp eq i32 %232, %150
  br i1 %233, label %234, label %160, !llvm.loop !707

234:                                              ; preds = %160, %152
  %235 = add nuw nsw i32 %153, 1
  %236 = icmp eq i32 %235, %151
  br i1 %236, label %237, label %152, !llvm.loop !708

237:                                              ; preds = %234, %137
  %238 = add i32 %103, -1
  %239 = load i16, ptr %99, align 2, !tbaa !564
  %240 = and i16 %239, 2
  %241 = icmp ne i16 %240, 0
  %242 = icmp sgt i32 %103, 1
  %243 = select i1 %241, i1 %242, i1 false
  br i1 %243, label %244, label %318

244:                                              ; preds = %237
  %245 = add nsw i32 %108, -2
  %246 = mul nsw i32 %245, %238
  %247 = add nsw i32 %140, %246
  %248 = call i32 @llvm.smax.i32(i32 %238, i32 1)
  br label %249

249:                                              ; preds = %244, %249
  %250 = phi i32 [ 0, %244 ], [ %316, %249 ]
  %251 = add nsw i32 %247, %250
  %252 = call ptr @RE_findOrAddVlak(ptr noundef %0, i32 noundef %251) #16
  %253 = add nsw i32 %250, %140
  %254 = call ptr @RE_findOrAddVlak(ptr noundef %0, i32 noundef %253) #16
  %255 = load ptr, ptr %254, align 8, !tbaa !553
  %256 = getelementptr inbounds %struct.VertRen, ptr %255, i64 0, i32 1
  %257 = getelementptr inbounds %struct.VlakRen, ptr %252, i64 0, i32 4
  %258 = load float, ptr %257, align 4, !tbaa !44
  %259 = load float, ptr %256, align 4, !tbaa !44
  %260 = fadd float %258, %259
  store float %260, ptr %256, align 4, !tbaa !44
  %261 = getelementptr inbounds %struct.VlakRen, ptr %252, i64 0, i32 4, i64 1
  %262 = load float, ptr %261, align 4, !tbaa !44
  %263 = getelementptr inbounds %struct.VertRen, ptr %255, i64 0, i32 1, i64 1
  %264 = load float, ptr %263, align 4, !tbaa !44
  %265 = fadd float %262, %264
  store float %265, ptr %263, align 4, !tbaa !44
  %266 = getelementptr inbounds %struct.VlakRen, ptr %252, i64 0, i32 4, i64 2
  %267 = load float, ptr %266, align 4, !tbaa !44
  %268 = getelementptr inbounds %struct.VertRen, ptr %255, i64 0, i32 1, i64 2
  %269 = load float, ptr %268, align 4, !tbaa !44
  %270 = fadd float %267, %269
  store float %270, ptr %268, align 4, !tbaa !44
  %271 = getelementptr inbounds %struct.VlakRen, ptr %254, i64 0, i32 1
  %272 = load ptr, ptr %271, align 8, !tbaa !555
  %273 = getelementptr inbounds %struct.VertRen, ptr %272, i64 0, i32 1
  %274 = load float, ptr %257, align 4, !tbaa !44
  %275 = load float, ptr %273, align 4, !tbaa !44
  %276 = fadd float %274, %275
  store float %276, ptr %273, align 4, !tbaa !44
  %277 = load float, ptr %261, align 4, !tbaa !44
  %278 = getelementptr inbounds %struct.VertRen, ptr %272, i64 0, i32 1, i64 1
  %279 = load float, ptr %278, align 4, !tbaa !44
  %280 = fadd float %277, %279
  store float %280, ptr %278, align 4, !tbaa !44
  %281 = load float, ptr %266, align 4, !tbaa !44
  %282 = getelementptr inbounds %struct.VertRen, ptr %272, i64 0, i32 1, i64 2
  %283 = load float, ptr %282, align 4, !tbaa !44
  %284 = fadd float %281, %283
  store float %284, ptr %282, align 4, !tbaa !44
  %285 = getelementptr inbounds %struct.VlakRen, ptr %252, i64 0, i32 2
  %286 = load ptr, ptr %285, align 8, !tbaa !556
  %287 = getelementptr inbounds %struct.VertRen, ptr %286, i64 0, i32 1
  %288 = getelementptr inbounds %struct.VlakRen, ptr %254, i64 0, i32 4
  %289 = load float, ptr %288, align 4, !tbaa !44
  %290 = load float, ptr %287, align 4, !tbaa !44
  %291 = fadd float %289, %290
  store float %291, ptr %287, align 4, !tbaa !44
  %292 = getelementptr inbounds %struct.VlakRen, ptr %254, i64 0, i32 4, i64 1
  %293 = load float, ptr %292, align 4, !tbaa !44
  %294 = getelementptr inbounds %struct.VertRen, ptr %286, i64 0, i32 1, i64 1
  %295 = load float, ptr %294, align 4, !tbaa !44
  %296 = fadd float %293, %295
  store float %296, ptr %294, align 4, !tbaa !44
  %297 = getelementptr inbounds %struct.VlakRen, ptr %254, i64 0, i32 4, i64 2
  %298 = load float, ptr %297, align 4, !tbaa !44
  %299 = getelementptr inbounds %struct.VertRen, ptr %286, i64 0, i32 1, i64 2
  %300 = load float, ptr %299, align 4, !tbaa !44
  %301 = fadd float %298, %300
  store float %301, ptr %299, align 4, !tbaa !44
  %302 = getelementptr inbounds %struct.VlakRen, ptr %252, i64 0, i32 3
  %303 = load ptr, ptr %302, align 8, !tbaa !557
  %304 = getelementptr inbounds %struct.VertRen, ptr %303, i64 0, i32 1
  %305 = load float, ptr %288, align 4, !tbaa !44
  %306 = load float, ptr %304, align 4, !tbaa !44
  %307 = fadd float %305, %306
  store float %307, ptr %304, align 4, !tbaa !44
  %308 = load float, ptr %292, align 4, !tbaa !44
  %309 = getelementptr inbounds %struct.VertRen, ptr %303, i64 0, i32 1, i64 1
  %310 = load float, ptr %309, align 4, !tbaa !44
  %311 = fadd float %308, %310
  store float %311, ptr %309, align 4, !tbaa !44
  %312 = load float, ptr %297, align 4, !tbaa !44
  %313 = getelementptr inbounds %struct.VertRen, ptr %303, i64 0, i32 1, i64 2
  %314 = load float, ptr %313, align 4, !tbaa !44
  %315 = fadd float %312, %314
  store float %315, ptr %313, align 4, !tbaa !44
  %316 = add nuw nsw i32 %250, 1
  %317 = icmp eq i32 %316, %248
  br i1 %317, label %318, label %249, !llvm.loop !709

318:                                              ; preds = %249, %237
  %319 = load i16, ptr %99, align 2, !tbaa !564
  %320 = and i16 %319, 1
  %321 = icmp ne i16 %320, 0
  %322 = icmp sgt i32 %108, 1
  %323 = and i1 %321, %322
  br i1 %323, label %324, label %397

324:                                              ; preds = %318
  %325 = add nsw i32 %103, -2
  %326 = call i32 @llvm.smax.i32(i32 %141, i32 1)
  br label %327

327:                                              ; preds = %324, %327
  %328 = phi i32 [ 0, %324 ], [ %395, %327 ]
  %329 = mul nsw i32 %328, %238
  %330 = add nsw i32 %329, %140
  %331 = call ptr @RE_findOrAddVlak(ptr noundef %0, i32 noundef %330) #16
  %332 = add nsw i32 %325, %330
  %333 = call ptr @RE_findOrAddVlak(ptr noundef %0, i32 noundef %332) #16
  %334 = getelementptr inbounds %struct.VlakRen, ptr %333, i64 0, i32 1
  %335 = load ptr, ptr %334, align 8, !tbaa !555
  %336 = getelementptr inbounds %struct.VertRen, ptr %335, i64 0, i32 1
  %337 = getelementptr inbounds %struct.VlakRen, ptr %331, i64 0, i32 4
  %338 = load float, ptr %337, align 4, !tbaa !44
  %339 = load float, ptr %336, align 4, !tbaa !44
  %340 = fadd float %338, %339
  store float %340, ptr %336, align 4, !tbaa !44
  %341 = getelementptr inbounds %struct.VlakRen, ptr %331, i64 0, i32 4, i64 1
  %342 = load float, ptr %341, align 4, !tbaa !44
  %343 = getelementptr inbounds %struct.VertRen, ptr %335, i64 0, i32 1, i64 1
  %344 = load float, ptr %343, align 4, !tbaa !44
  %345 = fadd float %342, %344
  store float %345, ptr %343, align 4, !tbaa !44
  %346 = getelementptr inbounds %struct.VlakRen, ptr %331, i64 0, i32 4, i64 2
  %347 = load float, ptr %346, align 4, !tbaa !44
  %348 = getelementptr inbounds %struct.VertRen, ptr %335, i64 0, i32 1, i64 2
  %349 = load float, ptr %348, align 4, !tbaa !44
  %350 = fadd float %347, %349
  store float %350, ptr %348, align 4, !tbaa !44
  %351 = getelementptr inbounds %struct.VlakRen, ptr %333, i64 0, i32 2
  %352 = load ptr, ptr %351, align 8, !tbaa !556
  %353 = getelementptr inbounds %struct.VertRen, ptr %352, i64 0, i32 1
  %354 = load float, ptr %337, align 4, !tbaa !44
  %355 = load float, ptr %353, align 4, !tbaa !44
  %356 = fadd float %354, %355
  store float %356, ptr %353, align 4, !tbaa !44
  %357 = load float, ptr %341, align 4, !tbaa !44
  %358 = getelementptr inbounds %struct.VertRen, ptr %352, i64 0, i32 1, i64 1
  %359 = load float, ptr %358, align 4, !tbaa !44
  %360 = fadd float %357, %359
  store float %360, ptr %358, align 4, !tbaa !44
  %361 = load float, ptr %346, align 4, !tbaa !44
  %362 = getelementptr inbounds %struct.VertRen, ptr %352, i64 0, i32 1, i64 2
  %363 = load float, ptr %362, align 4, !tbaa !44
  %364 = fadd float %361, %363
  store float %364, ptr %362, align 4, !tbaa !44
  %365 = load ptr, ptr %331, align 8, !tbaa !553
  %366 = getelementptr inbounds %struct.VertRen, ptr %365, i64 0, i32 1
  %367 = getelementptr inbounds %struct.VlakRen, ptr %333, i64 0, i32 4
  %368 = load float, ptr %367, align 4, !tbaa !44
  %369 = load float, ptr %366, align 4, !tbaa !44
  %370 = fadd float %368, %369
  store float %370, ptr %366, align 4, !tbaa !44
  %371 = getelementptr inbounds %struct.VlakRen, ptr %333, i64 0, i32 4, i64 1
  %372 = load float, ptr %371, align 4, !tbaa !44
  %373 = getelementptr inbounds %struct.VertRen, ptr %365, i64 0, i32 1, i64 1
  %374 = load float, ptr %373, align 4, !tbaa !44
  %375 = fadd float %372, %374
  store float %375, ptr %373, align 4, !tbaa !44
  %376 = getelementptr inbounds %struct.VlakRen, ptr %333, i64 0, i32 4, i64 2
  %377 = load float, ptr %376, align 4, !tbaa !44
  %378 = getelementptr inbounds %struct.VertRen, ptr %365, i64 0, i32 1, i64 2
  %379 = load float, ptr %378, align 4, !tbaa !44
  %380 = fadd float %377, %379
  store float %380, ptr %378, align 4, !tbaa !44
  %381 = getelementptr inbounds %struct.VlakRen, ptr %331, i64 0, i32 3
  %382 = load ptr, ptr %381, align 8, !tbaa !557
  %383 = getelementptr inbounds %struct.VertRen, ptr %382, i64 0, i32 1
  %384 = load float, ptr %367, align 4, !tbaa !44
  %385 = load float, ptr %383, align 4, !tbaa !44
  %386 = fadd float %384, %385
  store float %386, ptr %383, align 4, !tbaa !44
  %387 = load float, ptr %371, align 4, !tbaa !44
  %388 = getelementptr inbounds %struct.VertRen, ptr %382, i64 0, i32 1, i64 1
  %389 = load float, ptr %388, align 4, !tbaa !44
  %390 = fadd float %387, %389
  store float %390, ptr %388, align 4, !tbaa !44
  %391 = load float, ptr %376, align 4, !tbaa !44
  %392 = getelementptr inbounds %struct.VertRen, ptr %382, i64 0, i32 1, i64 2
  %393 = load float, ptr %392, align 4, !tbaa !44
  %394 = fadd float %391, %393
  store float %394, ptr %392, align 4, !tbaa !44
  %395 = add nuw nsw i32 %328, 1
  %396 = icmp eq i32 %395, %326
  br i1 %396, label %397, label %327, !llvm.loop !710

397:                                              ; preds = %327, %318
  %398 = load i16, ptr %99, align 2, !tbaa !564
  %399 = and i16 %398, 3
  %400 = icmp eq i16 %399, 3
  br i1 %400, label %401, label %472

401:                                              ; preds = %397
  %402 = add nsw i32 %108, -2
  %403 = mul nsw i32 %402, %238
  %404 = add nsw i32 %140, %403
  %405 = add nsw i32 %103, -2
  %406 = add nsw i32 %404, %405
  %407 = call ptr @RE_findOrAddVlak(ptr noundef %0, i32 noundef %406) #16
  %408 = call ptr @RE_findOrAddVlak(ptr noundef %0, i32 noundef %140) #16
  %409 = getelementptr inbounds %struct.VlakRen, ptr %407, i64 0, i32 4
  %410 = getelementptr inbounds %struct.VlakRen, ptr %408, i64 0, i32 4
  %411 = load float, ptr %409, align 4, !tbaa !44
  %412 = load float, ptr %410, align 4, !tbaa !44
  %413 = fadd float %411, %412
  store float %413, ptr %6, align 4, !tbaa !44
  %414 = getelementptr inbounds %struct.VlakRen, ptr %407, i64 0, i32 4, i64 1
  %415 = load float, ptr %414, align 4, !tbaa !44
  %416 = getelementptr inbounds %struct.VlakRen, ptr %408, i64 0, i32 4, i64 1
  %417 = load float, ptr %416, align 4, !tbaa !44
  %418 = fadd float %415, %417
  %419 = getelementptr inbounds float, ptr %6, i64 1
  store float %418, ptr %419, align 4, !tbaa !44
  %420 = getelementptr inbounds %struct.VlakRen, ptr %407, i64 0, i32 4, i64 2
  %421 = load float, ptr %420, align 4, !tbaa !44
  %422 = getelementptr inbounds %struct.VlakRen, ptr %408, i64 0, i32 4, i64 2
  %423 = load float, ptr %422, align 4, !tbaa !44
  %424 = fadd float %421, %423
  %425 = getelementptr inbounds float, ptr %6, i64 2
  store float %424, ptr %425, align 4, !tbaa !44
  %426 = add nsw i32 %140, %405
  %427 = call ptr @RE_findOrAddVlak(ptr noundef %0, i32 noundef %426) #16
  %428 = getelementptr inbounds %struct.VlakRen, ptr %427, i64 0, i32 4
  %429 = load float, ptr %428, align 4, !tbaa !44
  %430 = load float, ptr %6, align 4, !tbaa !44
  %431 = fadd float %429, %430
  store float %431, ptr %6, align 4, !tbaa !44
  %432 = getelementptr inbounds %struct.VlakRen, ptr %427, i64 0, i32 4, i64 1
  %433 = load float, ptr %432, align 4, !tbaa !44
  %434 = load float, ptr %419, align 4, !tbaa !44
  %435 = fadd float %433, %434
  store float %435, ptr %419, align 4, !tbaa !44
  %436 = getelementptr inbounds %struct.VlakRen, ptr %427, i64 0, i32 4, i64 2
  %437 = load float, ptr %436, align 4, !tbaa !44
  %438 = load float, ptr %425, align 4, !tbaa !44
  %439 = fadd float %437, %438
  store float %439, ptr %425, align 4, !tbaa !44
  %440 = call ptr @RE_findOrAddVlak(ptr noundef %0, i32 noundef %404) #16
  %441 = getelementptr inbounds %struct.VlakRen, ptr %440, i64 0, i32 4
  %442 = load float, ptr %441, align 4, !tbaa !44
  %443 = load float, ptr %6, align 4, !tbaa !44
  %444 = fadd float %442, %443
  store float %444, ptr %6, align 4, !tbaa !44
  %445 = getelementptr inbounds %struct.VlakRen, ptr %440, i64 0, i32 4, i64 1
  %446 = load float, ptr %445, align 4, !tbaa !44
  %447 = load float, ptr %419, align 4, !tbaa !44
  %448 = fadd float %446, %447
  store float %448, ptr %419, align 4, !tbaa !44
  %449 = getelementptr inbounds %struct.VlakRen, ptr %440, i64 0, i32 4, i64 2
  %450 = load float, ptr %449, align 4, !tbaa !44
  %451 = load float, ptr %425, align 4, !tbaa !44
  %452 = fadd float %450, %451
  store float %452, ptr %425, align 4, !tbaa !44
  %453 = getelementptr inbounds %struct.VlakRen, ptr %407, i64 0, i32 2
  %454 = load ptr, ptr %453, align 8, !tbaa !556
  %455 = getelementptr inbounds %struct.VertRen, ptr %454, i64 0, i32 1
  store float %444, ptr %455, align 4, !tbaa !44
  %456 = getelementptr inbounds %struct.VertRen, ptr %454, i64 0, i32 1, i64 1
  store float %448, ptr %456, align 4, !tbaa !44
  %457 = getelementptr inbounds %struct.VertRen, ptr %454, i64 0, i32 1, i64 2
  store float %452, ptr %457, align 4, !tbaa !44
  %458 = load ptr, ptr %408, align 8, !tbaa !553
  %459 = getelementptr inbounds %struct.VertRen, ptr %458, i64 0, i32 1
  store float %444, ptr %459, align 4, !tbaa !44
  %460 = getelementptr inbounds %struct.VertRen, ptr %458, i64 0, i32 1, i64 1
  store float %448, ptr %460, align 4, !tbaa !44
  %461 = getelementptr inbounds %struct.VertRen, ptr %458, i64 0, i32 1, i64 2
  store float %452, ptr %461, align 4, !tbaa !44
  %462 = getelementptr inbounds %struct.VlakRen, ptr %427, i64 0, i32 1
  %463 = load ptr, ptr %462, align 8, !tbaa !555
  %464 = getelementptr inbounds %struct.VertRen, ptr %463, i64 0, i32 1
  store float %444, ptr %464, align 4, !tbaa !44
  %465 = getelementptr inbounds %struct.VertRen, ptr %463, i64 0, i32 1, i64 1
  store float %448, ptr %465, align 4, !tbaa !44
  %466 = getelementptr inbounds %struct.VertRen, ptr %463, i64 0, i32 1, i64 2
  store float %452, ptr %466, align 4, !tbaa !44
  %467 = getelementptr inbounds %struct.VlakRen, ptr %440, i64 0, i32 3
  %468 = load ptr, ptr %467, align 8, !tbaa !557
  %469 = getelementptr inbounds %struct.VertRen, ptr %468, i64 0, i32 1
  store float %444, ptr %469, align 4, !tbaa !44
  %470 = getelementptr inbounds %struct.VertRen, ptr %468, i64 0, i32 1, i64 1
  store float %448, ptr %470, align 4, !tbaa !44
  %471 = getelementptr inbounds %struct.VertRen, ptr %468, i64 0, i32 1, i64 2
  store float %452, ptr %471, align 4, !tbaa !44
  br label %472

472:                                              ; preds = %401, %397
  %473 = load i32, ptr %7, align 8, !tbaa !211
  %474 = icmp slt i32 %8, %473
  br i1 %474, label %475, label %503

475:                                              ; preds = %472, %498
  %476 = phi i32 [ %500, %498 ], [ %8, %472 ]
  %477 = call ptr @RE_findOrAddVert(ptr noundef %0, i32 noundef %476) #16
  %478 = getelementptr inbounds %struct.VertRen, ptr %477, i64 0, i32 1
  %479 = load float, ptr %478, align 4, !tbaa !44
  %480 = getelementptr inbounds %struct.VertRen, ptr %477, i64 0, i32 1, i64 1
  %481 = load float, ptr %480, align 4, !tbaa !44
  %482 = fmul float %481, %481
  %483 = call float @llvm.fmuladd.f32(float %479, float %479, float %482)
  %484 = getelementptr inbounds %struct.VertRen, ptr %477, i64 0, i32 1, i64 2
  %485 = load float, ptr %484, align 4, !tbaa !44
  %486 = call float @llvm.fmuladd.f32(float %485, float %485, float %483)
  %487 = fcmp ogt float %486, 0x38AA95A5C0000000
  br i1 %487, label %488, label %497

488:                                              ; preds = %475
  %489 = call float @sqrtf(float noundef %486) #16
  %490 = fdiv float 1.000000e+00, %489
  %491 = load float, ptr %478, align 4, !tbaa !44
  %492 = fmul float %491, %490
  store float %492, ptr %478, align 4, !tbaa !44
  %493 = load float, ptr %480, align 4, !tbaa !44
  %494 = fmul float %490, %493
  store float %494, ptr %480, align 4, !tbaa !44
  %495 = load float, ptr %484, align 4, !tbaa !44
  %496 = fmul float %490, %495
  br label %498

497:                                              ; preds = %475
  store float 0.000000e+00, ptr %478, align 4, !tbaa !44
  store float 0.000000e+00, ptr %480, align 4, !tbaa !44
  br label %498

498:                                              ; preds = %488, %497
  %499 = phi float [ 0.000000e+00, %497 ], [ %496, %488 ]
  store float %499, ptr %484, align 4, !tbaa !44
  %500 = add nsw i32 %476, 1
  %501 = load i32, ptr %7, align 8, !tbaa !211
  %502 = icmp slt i32 %500, %501
  br i1 %502, label %475, label %503, !llvm.loop !711

503:                                              ; preds = %498, %472
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %6) #16
  ret i32 %138
}

declare zeroext i8 @BKE_displist_surfindex_get(ptr noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #6

declare void @BKE_displist_free(ptr noundef) local_unnamed_addr #6

declare ptr @RE_vertren_copy(ptr noundef, ptr noundef) local_unnamed_addr #6

declare void @BKE_displist_make_surf(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #6

declare ptr @BKE_curve_surf_make_orco(ptr noundef) local_unnamed_addr #6

declare void @mul_transposed_m3_v3(ptr noundef, ptr noundef) local_unnamed_addr #6

declare ptr @RE_vertren_get_origindex(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #6

declare void @DM_add_tangent_layer(ptr noundef) local_unnamed_addr #6

declare ptr @RE_vlakren_get_origindex(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: nounwind uwtable
define internal fastcc void @displace(ptr noundef %0, ptr noundef %1) unnamed_addr #4 {
  %3 = alloca %struct.ShadeInput, align 8
  %4 = alloca [3 x float], align 4
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %4) #16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %4, ptr noundef nonnull align 4 dereferenceable(12) @__const.displace.scale, i64 12, i1 false)
  %5 = getelementptr inbounds %struct.ObjectRen, ptr %1, i64 0, i32 2
  %6 = load float, ptr %4, align 4, !tbaa !44
  %7 = load ptr, ptr %5, align 8, !tbaa !77
  %8 = icmp eq ptr %7, null
  br i1 %8, label %15, label %9

9:                                                ; preds = %2
  %10 = getelementptr inbounds [3 x float], ptr %4, i64 0, i64 1
  %11 = getelementptr inbounds [3 x float], ptr %4, i64 0, i64 2
  %12 = load float, ptr %10, align 4, !tbaa !44
  %13 = load float, ptr %11, align 4, !tbaa !44
  br label %20

14:                                               ; preds = %20
  store float %41, ptr %10, align 4, !tbaa !44
  store float %42, ptr %11, align 4, !tbaa !44
  br label %15

15:                                               ; preds = %14, %2
  %16 = phi float [ %40, %14 ], [ %6, %2 ]
  store float %16, ptr %4, align 4, !tbaa !44
  %17 = getelementptr inbounds %struct.ObjectRen, ptr %1, i64 0, i32 10
  %18 = load i32, ptr %17, align 8, !tbaa !211
  %19 = icmp sgt i32 %18, 0
  br i1 %19, label %54, label %46

20:                                               ; preds = %9, %20
  %21 = phi float [ %13, %9 ], [ %42, %20 ]
  %22 = phi float [ %12, %9 ], [ %41, %20 ]
  %23 = phi ptr [ %7, %9 ], [ %44, %20 ]
  %24 = phi float [ %6, %9 ], [ %40, %20 ]
  %25 = getelementptr inbounds %struct.Object, ptr %23, i64 0, i32 36
  %26 = getelementptr inbounds %struct.Object, ptr %23, i64 0, i32 38
  %27 = load float, ptr %25, align 4, !tbaa !44
  %28 = load float, ptr %26, align 4, !tbaa !44
  %29 = fmul float %27, %28
  %30 = getelementptr inbounds %struct.Object, ptr %23, i64 0, i32 36, i64 1
  %31 = load float, ptr %30, align 4, !tbaa !44
  %32 = getelementptr inbounds %struct.Object, ptr %23, i64 0, i32 38, i64 1
  %33 = load float, ptr %32, align 4, !tbaa !44
  %34 = fmul float %31, %33
  %35 = getelementptr inbounds %struct.Object, ptr %23, i64 0, i32 36, i64 2
  %36 = load float, ptr %35, align 4, !tbaa !44
  %37 = getelementptr inbounds %struct.Object, ptr %23, i64 0, i32 38, i64 2
  %38 = load float, ptr %37, align 4, !tbaa !44
  %39 = fmul float %36, %38
  %40 = fmul float %29, %24
  %41 = fmul float %34, %22
  %42 = fmul float %39, %21
  %43 = getelementptr inbounds %struct.Object, ptr %23, i64 0, i32 9
  %44 = load ptr, ptr %43, align 8, !tbaa !77
  %45 = icmp eq ptr %44, null
  br i1 %45, label %14, label %20, !llvm.loop !712

46:                                               ; preds = %54, %15
  %47 = getelementptr inbounds %struct.ObjectRen, ptr %1, i64 0, i32 11
  %48 = load i32, ptr %47, align 4, !tbaa !293
  %49 = icmp sgt i32 %48, 0
  br i1 %49, label %50, label %132

50:                                               ; preds = %46
  %51 = getelementptr inbounds %struct.ShadeInput, ptr %3, i64 0, i32 4
  %52 = getelementptr inbounds %struct.ShadeInput, ptr %3, i64 0, i32 1
  %53 = getelementptr inbounds %struct.ShadeInput, ptr %3, i64 0, i32 114
  br label %61

54:                                               ; preds = %15, %54
  %55 = phi i32 [ %58, %54 ], [ 0, %15 ]
  %56 = tail call ptr @RE_findOrAddVert(ptr noundef %1, i32 noundef %55) #16
  %57 = getelementptr inbounds %struct.VertRen, ptr %56, i64 0, i32 3
  store i32 0, ptr %57, align 8, !tbaa !713
  %58 = add nuw nsw i32 %55, 1
  %59 = load i32, ptr %17, align 8, !tbaa !211
  %60 = icmp slt i32 %58, %59
  br i1 %60, label %54, label %46, !llvm.loop !714

61:                                               ; preds = %50, %128
  %62 = phi i32 [ 0, %50 ], [ %129, %128 ]
  %63 = call ptr @RE_findOrAddVlak(ptr noundef %1, i32 noundef %62) #16
  call void @llvm.lifetime.start.p0(i64 1472, ptr nonnull %3) #16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(1472) %3, i8 0, i64 1472, i1 false)
  store ptr %1, ptr %51, align 8, !tbaa !715
  store ptr %63, ptr %52, align 8, !tbaa !717
  %64 = getelementptr inbounds %struct.VlakRen, ptr %63, i64 0, i32 5
  %65 = load ptr, ptr %64, align 8, !tbaa !558
  store ptr %65, ptr %3, align 8, !tbaa !718
  store i16 0, ptr %53, align 2, !tbaa !719
  %66 = load ptr, ptr %63, align 8, !tbaa !553
  %67 = getelementptr inbounds %struct.VertRen, ptr %66, i64 0, i32 3
  %68 = load i32, ptr %67, align 8, !tbaa !713
  %69 = icmp eq i32 %68, 0
  br i1 %69, label %70, label %71

70:                                               ; preds = %61
  call fastcc void @displace_render_vert(ptr noundef %0, ptr noundef %1, ptr noundef nonnull %3, ptr noundef %66, i32 noundef 0, ptr noundef nonnull %4)
  br label %71

71:                                               ; preds = %70, %61
  %72 = getelementptr inbounds %struct.VlakRen, ptr %63, i64 0, i32 1
  %73 = load ptr, ptr %72, align 8, !tbaa !555
  %74 = getelementptr inbounds %struct.VertRen, ptr %73, i64 0, i32 3
  %75 = load i32, ptr %74, align 8, !tbaa !713
  %76 = icmp eq i32 %75, 0
  br i1 %76, label %77, label %78

77:                                               ; preds = %71
  call fastcc void @displace_render_vert(ptr noundef %0, ptr noundef %1, ptr noundef nonnull %3, ptr noundef %73, i32 noundef 1, ptr noundef nonnull %4)
  br label %78

78:                                               ; preds = %77, %71
  %79 = getelementptr inbounds %struct.VlakRen, ptr %63, i64 0, i32 2
  %80 = load ptr, ptr %79, align 8, !tbaa !556
  %81 = getelementptr inbounds %struct.VertRen, ptr %80, i64 0, i32 3
  %82 = load i32, ptr %81, align 8, !tbaa !713
  %83 = icmp eq i32 %82, 0
  br i1 %83, label %84, label %85

84:                                               ; preds = %78
  call fastcc void @displace_render_vert(ptr noundef %0, ptr noundef %1, ptr noundef nonnull %3, ptr noundef %80, i32 noundef 2, ptr noundef nonnull %4)
  br label %85

85:                                               ; preds = %84, %78
  %86 = getelementptr inbounds %struct.VlakRen, ptr %63, i64 0, i32 3
  %87 = load ptr, ptr %86, align 8, !tbaa !557
  %88 = icmp eq ptr %87, null
  br i1 %88, label %117, label %89

89:                                               ; preds = %85
  %90 = getelementptr inbounds %struct.VertRen, ptr %87, i64 0, i32 3
  %91 = load i32, ptr %90, align 8, !tbaa !713
  %92 = icmp eq i32 %91, 0
  br i1 %92, label %93, label %94

93:                                               ; preds = %89
  call fastcc void @displace_render_vert(ptr noundef %0, ptr noundef %1, ptr noundef nonnull %3, ptr noundef nonnull %87, i32 noundef 3, ptr noundef nonnull %4)
  br label %94

94:                                               ; preds = %93, %89
  %95 = load ptr, ptr %63, align 8, !tbaa !553
  %96 = getelementptr inbounds %struct.VertRen, ptr %95, i64 0, i32 4
  %97 = load float, ptr %96, align 4, !tbaa !678
  %98 = load ptr, ptr %79, align 8, !tbaa !556
  %99 = getelementptr inbounds %struct.VertRen, ptr %98, i64 0, i32 4
  %100 = load float, ptr %99, align 4, !tbaa !678
  %101 = fsub float %97, %100
  %102 = call float @llvm.fabs.f32(float %101)
  %103 = load ptr, ptr %72, align 8, !tbaa !555
  %104 = getelementptr inbounds %struct.VertRen, ptr %103, i64 0, i32 4
  %105 = load float, ptr %104, align 4, !tbaa !678
  %106 = load ptr, ptr %86, align 8, !tbaa !557
  %107 = getelementptr inbounds %struct.VertRen, ptr %106, i64 0, i32 4
  %108 = load float, ptr %107, align 4, !tbaa !678
  %109 = fsub float %105, %108
  %110 = call float @llvm.fabs.f32(float %109)
  %111 = fcmp ogt float %102, %110
  %112 = getelementptr inbounds %struct.VlakRen, ptr %63, i64 0, i32 7
  %113 = load i8, ptr %112, align 1, !tbaa !559
  %114 = and i8 %113, -33
  %115 = select i1 %111, i8 32, i8 0
  %116 = or disjoint i8 %114, %115
  store i8 %116, ptr %112, align 1, !tbaa !559
  br label %117

117:                                              ; preds = %94, %85
  %118 = load ptr, ptr %86, align 8, !tbaa !557
  %119 = icmp eq ptr %118, null
  %120 = getelementptr inbounds %struct.VlakRen, ptr %63, i64 0, i32 4
  %121 = load ptr, ptr %79, align 8, !tbaa !556
  %122 = load ptr, ptr %72, align 8, !tbaa !555
  %123 = load ptr, ptr %63, align 8, !tbaa !553
  br i1 %119, label %126, label %124

124:                                              ; preds = %117
  %125 = call float @normal_quad_v3(ptr noundef nonnull %120, ptr noundef nonnull %118, ptr noundef %121, ptr noundef %122, ptr noundef %123) #16
  br label %128

126:                                              ; preds = %117
  %127 = call float @normal_tri_v3(ptr noundef nonnull %120, ptr noundef %121, ptr noundef %122, ptr noundef %123) #16
  br label %128

128:                                              ; preds = %124, %126
  call void @llvm.lifetime.end.p0(i64 1472, ptr nonnull %3) #16
  %129 = add nuw nsw i32 %62, 1
  %130 = load i32, ptr %47, align 4, !tbaa !293
  %131 = icmp slt i32 %129, %130
  br i1 %131, label %61, label %132, !llvm.loop !720

132:                                              ; preds = %128, %46
  call fastcc void @calc_vertexnormals(ptr noundef %1, i8 noundef zeroext 1, i8 noundef zeroext 0, i8 noundef zeroext 0)
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %4) #16
  ret void
}

declare ptr @RE_inithalo(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, float noundef, float noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: nofree
declare void @qsort(ptr noundef, i64 noundef, i64 noundef, ptr nocapture noundef) local_unnamed_addr #11

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define internal i32 @vergedgesort(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) #12 {
  %3 = load i32, ptr %0, align 4, !tbaa !627
  %4 = load i32, ptr %1, align 4, !tbaa !627
  %5 = icmp ugt i32 %3, %4
  br i1 %5, label %17, label %6

6:                                                ; preds = %2
  %7 = icmp ult i32 %3, %4
  br i1 %7, label %17, label %8

8:                                                ; preds = %6
  %9 = getelementptr inbounds %struct.edgesort, ptr %0, i64 0, i32 1
  %10 = load i32, ptr %9, align 4, !tbaa !629
  %11 = getelementptr inbounds %struct.edgesort, ptr %1, i64 0, i32 1
  %12 = load i32, ptr %11, align 4, !tbaa !629
  %13 = icmp ugt i32 %10, %12
  br i1 %13, label %17, label %14

14:                                               ; preds = %8
  %15 = icmp ult i32 %10, %12
  %16 = sext i1 %15 to i32
  br label %17

17:                                               ; preds = %14, %8, %6, %2
  %18 = phi i32 [ 1, %2 ], [ -1, %6 ], [ 1, %8 ], [ %16, %14 ]
  ret i32 %18
}

declare void @BKE_mesh_texspace_get(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #6

declare ptr @RE_vertren_get_stress(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: nounwind uwtable
define internal fastcc void @displace_render_vert(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, i32 noundef %4, ptr nocapture noundef readonly %5) unnamed_addr #4 {
  %7 = alloca ptr, align 8
  %8 = load ptr, ptr %2, align 8, !tbaa !718
  %9 = getelementptr inbounds %struct.Material, ptr %8, i64 0, i32 90
  %10 = load i16, ptr %9, align 4, !tbaa !270
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %7) #16
  %11 = getelementptr inbounds %struct.ShadeInput, ptr %2, i64 0, i32 29
  %12 = load float, ptr %3, align 4, !tbaa !44
  store float %12, ptr %11, align 4, !tbaa !44
  %13 = getelementptr inbounds float, ptr %3, i64 1
  %14 = load float, ptr %13, align 4, !tbaa !44
  %15 = getelementptr inbounds %struct.ShadeInput, ptr %2, i64 0, i32 29, i64 1
  store float %14, ptr %15, align 4, !tbaa !44
  %16 = getelementptr inbounds float, ptr %3, i64 2
  %17 = load float, ptr %16, align 4, !tbaa !44
  %18 = getelementptr inbounds %struct.ShadeInput, ptr %2, i64 0, i32 29, i64 2
  store float %17, ptr %18, align 4, !tbaa !44
  %19 = getelementptr inbounds %struct.ShadeInput, ptr %2, i64 0, i32 16
  %20 = getelementptr inbounds %struct.VertRen, ptr %3, i64 0, i32 1
  %21 = load float, ptr %20, align 4, !tbaa !44
  store float %21, ptr %19, align 4, !tbaa !44
  %22 = getelementptr inbounds %struct.VertRen, ptr %3, i64 0, i32 1, i64 1
  %23 = load float, ptr %22, align 4, !tbaa !44
  %24 = getelementptr inbounds %struct.ShadeInput, ptr %2, i64 0, i32 16, i64 1
  store float %23, ptr %24, align 4, !tbaa !44
  %25 = getelementptr inbounds %struct.VertRen, ptr %3, i64 0, i32 1, i64 2
  %26 = load float, ptr %25, align 4, !tbaa !44
  %27 = getelementptr inbounds %struct.ShadeInput, ptr %2, i64 0, i32 16, i64 2
  store float %26, ptr %27, align 4, !tbaa !44
  %28 = zext i16 %10 to i32
  %29 = and i32 %28, 16
  %30 = icmp eq i32 %29, 0
  br i1 %30, label %63, label %31

31:                                               ; preds = %6
  %32 = getelementptr inbounds %struct.ShadeInput, ptr %2, i64 0, i32 74
  store i32 0, ptr %32, align 8, !tbaa !721
  %33 = getelementptr inbounds %struct.ObjectRen, ptr %1, i64 0, i32 25
  %34 = load i32, ptr %33, align 8, !tbaa !684
  %35 = getelementptr inbounds %struct.ShadeInput, ptr %2, i64 0, i32 76
  store i32 %34, ptr %35, align 8, !tbaa !722
  %36 = getelementptr inbounds %struct.ShadeInput, ptr %2, i64 0, i32 1
  %37 = load ptr, ptr %36, align 8, !tbaa !717
  %38 = call ptr @RE_vlakren_get_tface(ptr noundef %1, ptr noundef %37, i32 noundef 0, ptr noundef nonnull %7, i32 noundef 0) #16
  %39 = icmp eq ptr %38, null
  br i1 %39, label %63, label %40

40:                                               ; preds = %31
  %41 = zext nneg i32 %4 to i64
  br label %42

42:                                               ; preds = %40, %42
  %43 = phi i64 [ 0, %40 ], [ %58, %42 ]
  %44 = phi ptr [ %38, %40 ], [ %61, %42 ]
  %45 = getelementptr inbounds [4 x [2 x float]], ptr %44, i64 0, i64 %41
  %46 = load float, ptr %45, align 8, !tbaa !44
  %47 = call float @llvm.fmuladd.f32(float %46, float 2.000000e+00, float -1.000000e+00)
  %48 = getelementptr inbounds %struct.ShadeInput, ptr %2, i64 0, i32 72, i64 %43, i32 2
  store float %47, ptr %48, align 8, !tbaa !44
  %49 = getelementptr inbounds [4 x [2 x float]], ptr %44, i64 0, i64 %41, i64 1
  %50 = load float, ptr %49, align 4, !tbaa !44
  %51 = call float @llvm.fmuladd.f32(float %50, float 2.000000e+00, float -1.000000e+00)
  %52 = getelementptr inbounds %struct.ShadeInput, ptr %2, i64 0, i32 72, i64 %43, i32 2, i64 1
  store float %51, ptr %52, align 4, !tbaa !44
  %53 = getelementptr inbounds %struct.ShadeInput, ptr %2, i64 0, i32 72, i64 %43, i32 2, i64 2
  store float 0.000000e+00, ptr %53, align 8, !tbaa !44
  %54 = load ptr, ptr %7, align 8, !tbaa !77
  %55 = getelementptr inbounds %struct.ShadeInput, ptr %2, i64 0, i32 72, i64 %43, i32 3
  store ptr %54, ptr %55, align 8, !tbaa !723
  %56 = load i32, ptr %32, align 8, !tbaa !721
  %57 = add nsw i32 %56, 1
  store i32 %57, ptr %32, align 8, !tbaa !721
  %58 = add nuw i64 %43, 1
  %59 = load ptr, ptr %36, align 8, !tbaa !717
  %60 = trunc i64 %58 to i32
  %61 = call ptr @RE_vlakren_get_tface(ptr noundef %1, ptr noundef %59, i32 noundef %60, ptr noundef nonnull %7, i32 noundef 0) #16
  %62 = icmp eq ptr %61, null
  br i1 %62, label %63, label %42, !llvm.loop !725

63:                                               ; preds = %42, %31, %6
  %64 = and i32 %28, 1
  %65 = icmp eq i32 %64, 0
  br i1 %65, label %79, label %66

66:                                               ; preds = %63
  %67 = getelementptr inbounds %struct.VertRen, ptr %3, i64 0, i32 2
  %68 = load ptr, ptr %67, align 8, !tbaa !548
  %69 = icmp eq ptr %68, null
  br i1 %69, label %79, label %70

70:                                               ; preds = %66
  %71 = getelementptr inbounds %struct.ShadeInput, ptr %2, i64 0, i32 56
  %72 = load float, ptr %68, align 4, !tbaa !44
  store float %72, ptr %71, align 4, !tbaa !44
  %73 = getelementptr inbounds float, ptr %68, i64 1
  %74 = load float, ptr %73, align 4, !tbaa !44
  %75 = getelementptr inbounds %struct.ShadeInput, ptr %2, i64 0, i32 56, i64 1
  store float %74, ptr %75, align 4, !tbaa !44
  %76 = getelementptr inbounds float, ptr %68, i64 2
  %77 = load float, ptr %76, align 4, !tbaa !44
  %78 = getelementptr inbounds %struct.ShadeInput, ptr %2, i64 0, i32 56, i64 2
  store float %77, ptr %78, align 4, !tbaa !44
  br label %79

79:                                               ; preds = %70, %66, %63
  %80 = and i32 %28, 8
  %81 = icmp eq i32 %80, 0
  br i1 %81, label %90, label %82

82:                                               ; preds = %79
  %83 = getelementptr inbounds %struct.ShadeInput, ptr %2, i64 0, i32 57
  %84 = load float, ptr %11, align 4, !tbaa !44
  store float %84, ptr %83, align 4, !tbaa !44
  %85 = load float, ptr %15, align 4, !tbaa !44
  %86 = getelementptr inbounds %struct.ShadeInput, ptr %2, i64 0, i32 57, i64 1
  store float %85, ptr %86, align 4, !tbaa !44
  %87 = load float, ptr %18, align 4, !tbaa !44
  %88 = getelementptr inbounds %struct.ShadeInput, ptr %2, i64 0, i32 57, i64 2
  store float %87, ptr %88, align 4, !tbaa !44
  %89 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 33
  call void @mul_m4_v3(ptr noundef nonnull %89, ptr noundef nonnull %83) #16
  br label %90

90:                                               ; preds = %82, %79
  %91 = and i32 %28, 4
  %92 = icmp eq i32 %91, 0
  br i1 %92, label %100, label %93

93:                                               ; preds = %90
  %94 = getelementptr inbounds %struct.ShadeInput, ptr %2, i64 0, i32 59
  %95 = load float, ptr %19, align 4, !tbaa !44
  store float %95, ptr %94, align 4, !tbaa !44
  %96 = load float, ptr %24, align 4, !tbaa !44
  %97 = getelementptr inbounds %struct.ShadeInput, ptr %2, i64 0, i32 59, i64 1
  store float %96, ptr %97, align 4, !tbaa !44
  %98 = load float, ptr %27, align 4, !tbaa !44
  %99 = getelementptr inbounds %struct.ShadeInput, ptr %2, i64 0, i32 59, i64 2
  store float %98, ptr %99, align 4, !tbaa !44
  br label %100

100:                                              ; preds = %93, %90
  %101 = and i32 %28, 16384
  %102 = icmp eq i32 %101, 0
  br i1 %102, label %116, label %103

103:                                              ; preds = %100
  %104 = call ptr @RE_vertren_get_stress(ptr noundef %1, ptr noundef nonnull %3, i32 noundef 0) #16
  %105 = icmp eq ptr %104, null
  br i1 %105, label %114, label %106

106:                                              ; preds = %103
  %107 = load float, ptr %104, align 4, !tbaa !44
  %108 = getelementptr inbounds %struct.ShadeInput, ptr %2, i64 0, i32 68
  store float %107, ptr %108, align 8, !tbaa !726
  %109 = fcmp olt float %107, 1.000000e+00
  %110 = fadd float %107, -1.000000e+00
  br i1 %109, label %111, label %112

111:                                              ; preds = %106
  store float %110, ptr %108, align 8, !tbaa !726
  br label %116

112:                                              ; preds = %106
  %113 = fdiv float %110, %107
  store float %113, ptr %108, align 8, !tbaa !726
  br label %116

114:                                              ; preds = %103
  %115 = getelementptr inbounds %struct.ShadeInput, ptr %2, i64 0, i32 68
  store float 0.000000e+00, ptr %115, align 8, !tbaa !726
  br label %116

116:                                              ; preds = %114, %112, %111, %100
  %117 = getelementptr inbounds %struct.ShadeInput, ptr %2, i64 0, i32 63
  %118 = getelementptr inbounds %struct.ShadeInput, ptr %2, i64 0, i32 63, i64 2
  store float 0.000000e+00, ptr %118, align 8, !tbaa !44
  %119 = getelementptr inbounds %struct.ShadeInput, ptr %2, i64 0, i32 63, i64 1
  store float 0.000000e+00, ptr %119, align 4, !tbaa !44
  store float 0.000000e+00, ptr %117, align 8, !tbaa !44
  call void @do_material_tex(ptr noundef nonnull %2, ptr noundef %0) #16
  %120 = load float, ptr %117, align 8, !tbaa !44
  %121 = load float, ptr %5, align 4, !tbaa !44
  %122 = fmul float %120, %121
  %123 = load float, ptr %119, align 4, !tbaa !44
  %124 = getelementptr inbounds float, ptr %5, i64 1
  %125 = load float, ptr %124, align 4, !tbaa !44
  %126 = fmul float %123, %125
  %127 = load float, ptr %118, align 8, !tbaa !44
  %128 = getelementptr inbounds float, ptr %5, i64 2
  %129 = load float, ptr %128, align 4, !tbaa !44
  %130 = fmul float %127, %129
  %131 = load float, ptr %3, align 8, !tbaa !44
  %132 = fadd float %122, %131
  store float %132, ptr %3, align 8, !tbaa !44
  %133 = load float, ptr %13, align 4, !tbaa !44
  %134 = fadd float %126, %133
  store float %134, ptr %13, align 4, !tbaa !44
  %135 = load float, ptr %16, align 8, !tbaa !44
  %136 = fadd float %130, %135
  store float %136, ptr %16, align 8, !tbaa !44
  %137 = getelementptr inbounds %struct.VertRen, ptr %3, i64 0, i32 3
  %138 = load i32, ptr %137, align 8, !tbaa !713
  %139 = or i32 %138, 1
  store i32 %139, ptr %137, align 8, !tbaa !713
  %140 = load float, ptr %117, align 8, !tbaa !44
  %141 = fmul float %140, %140
  %142 = load float, ptr %119, align 4, !tbaa !44
  %143 = call float @llvm.fmuladd.f32(float %142, float %142, float %141)
  %144 = load float, ptr %118, align 8, !tbaa !44
  %145 = call float @llvm.fmuladd.f32(float %144, float %144, float %143)
  %146 = getelementptr inbounds %struct.VertRen, ptr %3, i64 0, i32 4
  store float %145, ptr %146, align 4, !tbaa !678
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %7) #16
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fabs.f32(float) #3

declare void @do_material_tex(ptr noundef, ptr noundef) local_unnamed_addr #6

; Function Attrs: nounwind uwtable
define internal fastcc void @as_addvert_lnor(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr nocapture noundef readonly %4) unnamed_addr #4 {
  %6 = load i16, ptr %4, align 2, !tbaa !79
  %7 = sitofp i16 %6 to float
  %8 = fmul float %7, 0x3F00002000000000
  %9 = getelementptr inbounds i16, ptr %4, i64 1
  %10 = load i16, ptr %9, align 2, !tbaa !79
  %11 = sitofp i16 %10 to float
  %12 = fmul float %11, 0x3F00002000000000
  %13 = getelementptr inbounds i16, ptr %4, i64 2
  %14 = load i16, ptr %13, align 2, !tbaa !79
  %15 = sitofp i16 %14 to float
  %16 = fmul float %15, 0x3F00002000000000
  %17 = icmp eq ptr %2, null
  br i1 %17, label %46, label %18

18:                                               ; preds = %5
  %19 = getelementptr inbounds %struct.ASvert, ptr %1, i64 0, i32 1
  %20 = getelementptr inbounds %struct.ASvert, ptr %1, i64 0, i32 1, i32 1
  %21 = load ptr, ptr %20, align 8, !tbaa !727
  %22 = icmp eq ptr %21, null
  br i1 %22, label %33, label %23

23:                                               ; preds = %18, %28
  %24 = phi i64 [ %29, %28 ], [ 0, %18 ]
  %25 = getelementptr inbounds %struct.ASface, ptr %21, i64 0, i32 2, i64 %24
  %26 = load ptr, ptr %25, align 8, !tbaa !77
  %27 = icmp eq ptr %26, null
  br i1 %27, label %31, label %28

28:                                               ; preds = %23
  %29 = add nuw nsw i64 %24, 1
  %30 = icmp eq i64 %29, 4
  br i1 %30, label %33, label %23, !llvm.loop !729

31:                                               ; preds = %23
  %32 = trunc i64 %24 to i32
  br label %33

33:                                               ; preds = %31, %28, %18
  %34 = phi i32 [ 4, %18 ], [ %32, %31 ], [ 4, %28 ]
  %35 = icmp eq i32 %34, 4
  br i1 %35, label %36, label %39

36:                                               ; preds = %33
  %37 = load ptr, ptr @MEM_callocN, align 8, !tbaa !77
  %38 = tail call ptr %37(i64 noundef 80, ptr noundef nonnull @.str.23) #16
  tail call void @BLI_addtail(ptr noundef nonnull %19, ptr noundef %38) #16
  br label %39

39:                                               ; preds = %36, %33
  %40 = phi ptr [ %38, %36 ], [ %21, %33 ]
  %41 = phi i32 [ 0, %36 ], [ %34, %33 ]
  %42 = sext i32 %41 to i64
  %43 = getelementptr inbounds %struct.ASface, ptr %40, i64 0, i32 2, i64 %42
  store ptr %3, ptr %43, align 8, !tbaa !77
  %44 = load i32, ptr %1, align 8, !tbaa !730
  %45 = add nsw i32 %44, 1
  store i32 %45, ptr %1, align 8, !tbaa !730
  br label %46

46:                                               ; preds = %5, %39
  %47 = phi i32 [ %41, %39 ], [ -1, %5 ]
  %48 = icmp slt i32 %47, 0
  br i1 %48, label %140, label %49

49:                                               ; preds = %46
  %50 = getelementptr inbounds %struct.ASvert, ptr %1, i64 0, i32 1, i32 1
  %51 = load ptr, ptr %50, align 8, !tbaa !727
  %52 = load i32, ptr %1, align 8, !tbaa !730
  %53 = icmp eq i32 %52, 1
  %54 = getelementptr inbounds %struct.VertRen, ptr %2, i64 0, i32 1
  br i1 %53, label %55, label %58

55:                                               ; preds = %49
  store float %8, ptr %54, align 4, !tbaa !44
  %56 = getelementptr inbounds %struct.VertRen, ptr %2, i64 0, i32 1, i64 1
  store float %12, ptr %56, align 4, !tbaa !44
  %57 = getelementptr inbounds %struct.VertRen, ptr %2, i64 0, i32 1, i64 2
  store float %16, ptr %57, align 4, !tbaa !44
  br label %108

58:                                               ; preds = %49
  %59 = load float, ptr %54, align 4, !tbaa !44
  %60 = fcmp oeq float %8, %59
  br i1 %60, label %61, label %69

61:                                               ; preds = %58
  %62 = getelementptr inbounds %struct.VertRen, ptr %2, i64 0, i32 1, i64 1
  %63 = load float, ptr %62, align 4, !tbaa !44
  %64 = fcmp oeq float %12, %63
  br i1 %64, label %65, label %69

65:                                               ; preds = %61
  %66 = getelementptr inbounds %struct.VertRen, ptr %2, i64 0, i32 1, i64 2
  %67 = load float, ptr %66, align 4, !tbaa !44
  %68 = fcmp une float %16, %67
  br i1 %68, label %69, label %108

69:                                               ; preds = %61, %58, %65
  %70 = getelementptr inbounds %struct.ASvert, ptr %1, i64 0, i32 1
  %71 = load ptr, ptr %70, align 8, !tbaa !77
  %72 = icmp eq ptr %71, null
  br i1 %72, label %108, label %76

73:                                               ; preds = %105
  %74 = load ptr, ptr %77, align 8, !tbaa !77
  %75 = icmp eq ptr %74, null
  br i1 %75, label %108, label %76, !llvm.loop !731

76:                                               ; preds = %69, %73
  %77 = phi ptr [ %74, %73 ], [ %71, %69 ]
  br label %78

78:                                               ; preds = %76, %105
  %79 = phi i64 [ 0, %76 ], [ %106, %105 ]
  %80 = getelementptr inbounds %struct.ASface, ptr %77, i64 0, i32 2, i64 %79
  %81 = load ptr, ptr %80, align 8, !tbaa !77
  %82 = icmp eq ptr %81, null
  %83 = icmp eq ptr %81, %3
  %84 = or i1 %82, %83
  br i1 %84, label %105, label %85

85:                                               ; preds = %78
  %86 = getelementptr inbounds %struct.ASface, ptr %77, i64 0, i32 3, i64 %79
  %87 = load ptr, ptr %86, align 8, !tbaa !77
  %88 = icmp eq ptr %87, null
  br i1 %88, label %105, label %89

89:                                               ; preds = %85
  %90 = getelementptr inbounds %struct.VertRen, ptr %87, i64 0, i32 1
  %91 = load float, ptr %90, align 4, !tbaa !44
  %92 = fcmp oeq float %8, %91
  br i1 %92, label %93, label %102

93:                                               ; preds = %89
  %94 = getelementptr inbounds %struct.VertRen, ptr %87, i64 0, i32 1, i64 1
  %95 = load float, ptr %94, align 4, !tbaa !44
  %96 = fcmp oeq float %12, %95
  br i1 %96, label %97, label %102

97:                                               ; preds = %93
  %98 = getelementptr inbounds %struct.VertRen, ptr %87, i64 0, i32 1, i64 2
  %99 = load float, ptr %98, align 4, !tbaa !44
  %100 = fcmp oeq float %16, %99
  %101 = zext i1 %100 to i8
  br label %102

102:                                              ; preds = %97, %93, %89
  %103 = phi i8 [ 0, %93 ], [ 0, %89 ], [ %101, %97 ]
  %104 = icmp eq i8 %103, 0
  br i1 %104, label %105, label %108

105:                                              ; preds = %102, %85, %78
  %106 = add nuw nsw i64 %79, 1
  %107 = icmp eq i64 %106, 4
  br i1 %107, label %73, label %78, !llvm.loop !732

108:                                              ; preds = %73, %102, %69, %55, %65
  %109 = phi ptr [ %2, %55 ], [ %2, %65 ], [ null, %69 ], [ %87, %102 ], [ null, %73 ]
  %110 = icmp eq ptr %109, null
  br i1 %110, label %111, label %116

111:                                              ; preds = %108
  %112 = tail call ptr @RE_vertren_copy(ptr noundef %0, ptr noundef %2) #16
  %113 = getelementptr inbounds %struct.VertRen, ptr %112, i64 0, i32 1
  store float %8, ptr %113, align 4, !tbaa !44
  %114 = getelementptr inbounds %struct.VertRen, ptr %112, i64 0, i32 1, i64 1
  store float %12, ptr %114, align 4, !tbaa !44
  %115 = getelementptr inbounds %struct.VertRen, ptr %112, i64 0, i32 1, i64 2
  store float %16, ptr %115, align 4, !tbaa !44
  br label %116

116:                                              ; preds = %111, %108
  %117 = phi ptr [ %112, %111 ], [ %109, %108 ]
  %118 = icmp eq ptr %117, %2
  br i1 %118, label %140, label %119

119:                                              ; preds = %116
  %120 = zext nneg i32 %47 to i64
  %121 = getelementptr inbounds %struct.ASface, ptr %51, i64 0, i32 3, i64 %120
  store ptr %117, ptr %121, align 8, !tbaa !77
  %122 = load ptr, ptr %3, align 8, !tbaa !553
  %123 = icmp eq ptr %122, %2
  br i1 %123, label %124, label %125

124:                                              ; preds = %119
  store ptr %117, ptr %3, align 8, !tbaa !553
  br label %125

125:                                              ; preds = %124, %119
  %126 = getelementptr inbounds %struct.VlakRen, ptr %3, i64 0, i32 1
  %127 = load ptr, ptr %126, align 8, !tbaa !555
  %128 = icmp eq ptr %127, %2
  br i1 %128, label %129, label %130

129:                                              ; preds = %125
  store ptr %117, ptr %126, align 8, !tbaa !555
  br label %130

130:                                              ; preds = %129, %125
  %131 = getelementptr inbounds %struct.VlakRen, ptr %3, i64 0, i32 2
  %132 = load ptr, ptr %131, align 8, !tbaa !556
  %133 = icmp eq ptr %132, %2
  br i1 %133, label %134, label %135

134:                                              ; preds = %130
  store ptr %117, ptr %131, align 8, !tbaa !556
  br label %135

135:                                              ; preds = %134, %130
  %136 = getelementptr inbounds %struct.VlakRen, ptr %3, i64 0, i32 3
  %137 = load ptr, ptr %136, align 8, !tbaa !557
  %138 = icmp eq ptr %137, %2
  br i1 %138, label %139, label %140

139:                                              ; preds = %135
  store ptr %117, ptr %136, align 8, !tbaa !557
  br label %140

140:                                              ; preds = %116, %139, %135, %46
  ret void
}

declare void @BKE_displist_make_mball_forRender(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #6

declare ptr @BKE_mball_make_orco(ptr noundef, ptr noundef) local_unnamed_addr #6

; Function Attrs: nounwind uwtable
define internal fastcc void @split_quads(ptr noundef %0, i32 noundef %1) unnamed_addr #4 {
  %3 = getelementptr inbounds %struct.ObjectRen, ptr %0, i64 0, i32 11
  %4 = load i32, ptr %3, align 4, !tbaa !293
  %5 = icmp sgt i32 %4, 0
  br i1 %5, label %6, label %73

6:                                                ; preds = %2
  %7 = icmp eq i32 %1, 2
  %8 = select i1 %7, i8 32, i8 0
  br label %9

9:                                                ; preds = %6, %71
  %10 = phi i32 [ %4, %6 ], [ %11, %71 ]
  %11 = add nsw i32 %10, -1
  %12 = tail call ptr @RE_findOrAddVlak(ptr noundef %0, i32 noundef %11) #16
  %13 = getelementptr inbounds %struct.VlakRen, ptr %12, i64 0, i32 3
  %14 = load ptr, ptr %13, align 8, !tbaa !557
  %15 = icmp eq ptr %14, null
  br i1 %15, label %71, label %16

16:                                               ; preds = %9
  %17 = getelementptr inbounds %struct.VlakRen, ptr %12, i64 0, i32 7
  %18 = load i8, ptr %17, align 1, !tbaa !559
  %19 = and i8 %18, 4
  %20 = icmp eq i8 %19, 0
  br i1 %20, label %21, label %71

21:                                               ; preds = %16
  %22 = getelementptr inbounds %struct.VlakRen, ptr %12, i64 0, i32 5
  %23 = load ptr, ptr %22, align 8, !tbaa !558
  %24 = getelementptr inbounds %struct.Material, ptr %23, i64 0, i32 2
  %25 = load i16, ptr %24, align 8, !tbaa !175
  %26 = icmp eq i16 %25, 3
  br i1 %26, label %71, label %27

27:                                               ; preds = %21
  %28 = tail call ptr @RE_vlakren_copy(ptr noundef %0, ptr noundef %12) #16
  %29 = getelementptr inbounds %struct.VlakRen, ptr %28, i64 0, i32 7
  %30 = load i8, ptr %29, align 1, !tbaa !559
  %31 = or i8 %30, 16
  store i8 %31, ptr %29, align 1, !tbaa !559
  %32 = load i8, ptr %17, align 1, !tbaa !559
  %33 = and i8 %32, -33
  %34 = or disjoint i8 %33, %8
  store i8 %34, ptr %17, align 1, !tbaa !559
  br i1 %7, label %35, label %45

35:                                               ; preds = %27
  %36 = getelementptr inbounds %struct.VlakRen, ptr %12, i64 0, i32 1
  %37 = load ptr, ptr %36, align 8, !tbaa !555
  store ptr %37, ptr %28, align 8, !tbaa !553
  %38 = getelementptr inbounds %struct.VlakRen, ptr %12, i64 0, i32 2
  %39 = load ptr, ptr %38, align 8, !tbaa !556
  %40 = getelementptr inbounds %struct.VlakRen, ptr %28, i64 0, i32 1
  store ptr %39, ptr %40, align 8, !tbaa !555
  %41 = load ptr, ptr %13, align 8, !tbaa !557
  %42 = getelementptr inbounds %struct.VlakRen, ptr %28, i64 0, i32 2
  store ptr %41, ptr %42, align 8, !tbaa !556
  store ptr %41, ptr %38, align 8, !tbaa !556
  %43 = load i8, ptr %29, align 1, !tbaa !559
  %44 = or i8 %43, 32
  br label %54

45:                                               ; preds = %27
  %46 = load ptr, ptr %12, align 8, !tbaa !553
  store ptr %46, ptr %28, align 8, !tbaa !553
  %47 = getelementptr inbounds %struct.VlakRen, ptr %12, i64 0, i32 2
  %48 = load ptr, ptr %47, align 8, !tbaa !556
  %49 = getelementptr inbounds %struct.VlakRen, ptr %28, i64 0, i32 1
  store ptr %48, ptr %49, align 8, !tbaa !555
  %50 = load ptr, ptr %13, align 8, !tbaa !557
  %51 = getelementptr inbounds %struct.VlakRen, ptr %28, i64 0, i32 2
  store ptr %50, ptr %51, align 8, !tbaa !556
  %52 = load i8, ptr %29, align 1, !tbaa !559
  %53 = and i8 %52, -33
  br label %54

54:                                               ; preds = %45, %35
  %55 = phi i8 [ %53, %45 ], [ %44, %35 ]
  store i8 %55, ptr %29, align 1, !tbaa !559
  %56 = getelementptr inbounds %struct.VlakRen, ptr %28, i64 0, i32 3
  store ptr null, ptr %56, align 8, !tbaa !557
  store ptr null, ptr %13, align 8, !tbaa !557
  %57 = getelementptr inbounds %struct.VlakRen, ptr %12, i64 0, i32 4
  %58 = getelementptr inbounds %struct.VlakRen, ptr %12, i64 0, i32 2
  %59 = load ptr, ptr %58, align 8, !tbaa !556
  %60 = getelementptr inbounds %struct.VlakRen, ptr %12, i64 0, i32 1
  %61 = load ptr, ptr %60, align 8, !tbaa !555
  %62 = load ptr, ptr %12, align 8, !tbaa !553
  %63 = tail call float @normal_tri_v3(ptr noundef nonnull %57, ptr noundef %59, ptr noundef %61, ptr noundef %62) #16
  %64 = getelementptr inbounds %struct.VlakRen, ptr %28, i64 0, i32 4
  %65 = getelementptr inbounds %struct.VlakRen, ptr %28, i64 0, i32 2
  %66 = load ptr, ptr %65, align 8, !tbaa !556
  %67 = getelementptr inbounds %struct.VlakRen, ptr %28, i64 0, i32 1
  %68 = load ptr, ptr %67, align 8, !tbaa !555
  %69 = load ptr, ptr %28, align 8, !tbaa !553
  %70 = tail call float @normal_tri_v3(ptr noundef nonnull %64, ptr noundef %66, ptr noundef %68, ptr noundef %69) #16
  br label %71

71:                                               ; preds = %9, %16, %21, %54
  %72 = icmp sgt i32 %10, 1
  br i1 %72, label %9, label %73, !llvm.loop !733

73:                                               ; preds = %71, %2
  ret void
}

declare zeroext i8 @BKE_object_is_animated(ptr noundef, ptr noundef) local_unnamed_addr #6

declare void @minmax_v3v3_v3(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #6

declare void @strand_minmax(ptr noundef, ptr noundef, ptr noundef, float noundef) local_unnamed_addr #6

declare ptr @RE_vlakren_copy(ptr noundef, ptr noundef) local_unnamed_addr #6

declare ptr @give_current_material(ptr noundef, i16 noundef signext) local_unnamed_addr #6

; Function Attrs: nofree nosync nounwind memory(readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @flag_render_node_material(ptr nocapture noundef %0, ptr nocapture noundef readonly %1) unnamed_addr #13 {
  %3 = getelementptr inbounds %struct.bNodeTree, ptr %1, i64 0, i32 7
  %4 = load ptr, ptr %3, align 8, !tbaa !77
  %5 = icmp eq ptr %4, null
  br i1 %5, label %37, label %6

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 4
  br label %8

8:                                                ; preds = %6, %34
  %9 = phi ptr [ %4, %6 ], [ %35, %34 ]
  %10 = getelementptr inbounds %struct.bNode, ptr %9, i64 0, i32 20
  %11 = load ptr, ptr %10, align 8, !tbaa !734
  %12 = icmp eq ptr %11, null
  br i1 %12, label %34, label %13

13:                                               ; preds = %8
  %14 = getelementptr inbounds %struct.ID, ptr %11, i64 0, i32 4
  %15 = load i16, ptr %14, align 8, !tbaa !79
  %16 = icmp eq i16 %15, 16717
  br i1 %16, label %17, label %29

17:                                               ; preds = %13
  %18 = getelementptr inbounds %struct.Material, ptr %11, i64 0, i32 51
  %19 = load i32, ptr %18, align 4, !tbaa !135
  %20 = and i32 %19, 65600
  %21 = icmp eq i32 %20, 65600
  br i1 %21, label %22, label %25

22:                                               ; preds = %17
  %23 = load i16, ptr %7, align 8, !tbaa !267
  %24 = or i16 %23, 1
  store i16 %24, ptr %7, align 8, !tbaa !267
  br label %25

25:                                               ; preds = %22, %17
  %26 = getelementptr inbounds %struct.Material, ptr %11, i64 0, i32 3
  %27 = load i16, ptr %26, align 2, !tbaa !668
  %28 = or i16 %27, 1
  store i16 %28, ptr %26, align 2, !tbaa !668
  br label %34

29:                                               ; preds = %13
  %30 = getelementptr inbounds %struct.bNode, ptr %9, i64 0, i32 8
  %31 = load i16, ptr %30, align 4, !tbaa !736
  %32 = icmp eq i16 %31, 2
  br i1 %32, label %33, label %34

33:                                               ; preds = %29
  tail call fastcc void @flag_render_node_material(ptr noundef %0, ptr noundef nonnull %11)
  br label %34

34:                                               ; preds = %8, %29, %33, %25
  %35 = load ptr, ptr %9, align 8, !tbaa !77
  %36 = icmp eq ptr %35, null
  br i1 %36, label %37, label %8, !llvm.loop !737

37:                                               ; preds = %34, %2
  ret void
}

declare zeroext i8 @invert_m3_m3(ptr noundef, ptr noundef) local_unnamed_addr #6

; Function Attrs: nounwind uwtable
define internal fastcc void @add_lightgroup(ptr noundef %0, ptr nocapture noundef %1, i32 noundef %2) unnamed_addr #4 {
  %4 = getelementptr inbounds %struct.ID, ptr %1, i64 0, i32 5
  %5 = load i16, ptr %4, align 2, !tbaa !128
  %6 = and i16 %5, -1025
  store i16 %6, ptr %4, align 2, !tbaa !128
  %7 = getelementptr inbounds %struct.Group, ptr %1, i64 0, i32 1
  %8 = load ptr, ptr %7, align 8, !tbaa !77
  %9 = icmp eq ptr %8, null
  br i1 %9, label %76, label %10

10:                                               ; preds = %3
  %11 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 45, i32 46
  %12 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 48
  %13 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 66
  %14 = icmp ne i32 %2, 0
  br label %15

15:                                               ; preds = %10, %73
  %16 = phi ptr [ %8, %10 ], [ %74, %73 ]
  %17 = getelementptr inbounds %struct.GroupObject, ptr %16, i64 0, i32 3
  store ptr null, ptr %17, align 8, !tbaa !299
  %18 = getelementptr inbounds %struct.GroupObject, ptr %16, i64 0, i32 2
  %19 = load ptr, ptr %18, align 8, !tbaa !290
  %20 = load i32, ptr %11, align 4, !tbaa !105
  %21 = and i32 %20, 524288
  %22 = icmp eq i32 %21, 0
  %23 = getelementptr inbounds %struct.Object, ptr %19, i64 0, i32 102
  %24 = load i8, ptr %23, align 8, !tbaa !164
  %25 = lshr i8 %24, 2
  %26 = select i1 %22, i8 %25, i8 %24
  %27 = and i8 %26, 1
  %28 = icmp ne i8 %27, 0
  %29 = or i1 %22, %28
  br i1 %29, label %36, label %30

30:                                               ; preds = %15
  %31 = getelementptr inbounds %struct.Object, ptr %19, i64 0, i32 87
  %32 = load i8, ptr %31, align 2, !tbaa !165
  %33 = add i8 %32, -1
  %34 = icmp ult i8 %33, 2
  %35 = zext i1 %34 to i8
  br label %36

36:                                               ; preds = %15, %30
  %37 = phi i8 [ %35, %30 ], [ %27, %15 ]
  %38 = icmp eq i8 %37, 0
  br i1 %38, label %39, label %73

39:                                               ; preds = %36
  %40 = getelementptr inbounds %struct.Object, ptr %19, i64 0, i32 52
  %41 = load i32, ptr %40, align 8, !tbaa !189
  %42 = load i32, ptr %12, align 8, !tbaa !118
  %43 = and i32 %42, %41
  %44 = icmp eq i32 %43, 0
  %45 = icmp eq ptr %19, null
  %46 = or i1 %45, %44
  br i1 %46, label %73, label %47

47:                                               ; preds = %39
  %48 = getelementptr inbounds %struct.Object, ptr %19, i64 0, i32 3
  %49 = load i16, ptr %48, align 8, !tbaa !167
  %50 = icmp eq i16 %49, 10
  br i1 %50, label %51, label %73

51:                                               ; preds = %47, %55
  %52 = phi ptr [ %53, %55 ], [ %13, %47 ]
  %53 = load ptr, ptr %52, align 8, !tbaa !77
  %54 = icmp eq ptr %53, null
  br i1 %54, label %62, label %55

55:                                               ; preds = %51
  %56 = getelementptr inbounds %struct.GroupObject, ptr %53, i64 0, i32 2
  %57 = load ptr, ptr %56, align 8, !tbaa !290
  %58 = icmp eq ptr %57, %19
  br i1 %58, label %59, label %51, !llvm.loop !738

59:                                               ; preds = %55
  %60 = getelementptr inbounds %struct.GroupObject, ptr %53, i64 0, i32 3
  %61 = load ptr, ptr %60, align 8, !tbaa !299
  store ptr %61, ptr %17, align 8, !tbaa !299
  br label %62

62:                                               ; preds = %51, %59
  %63 = load ptr, ptr %17, align 8, !tbaa !299
  %64 = icmp eq ptr %63, null
  br i1 %64, label %65, label %67

65:                                               ; preds = %62
  %66 = tail call fastcc ptr @add_render_lamp(ptr noundef %0, ptr noundef %19)
  br label %67

67:                                               ; preds = %65, %62
  %68 = phi ptr [ %66, %65 ], [ %53, %62 ]
  %69 = icmp ne ptr %68, null
  %70 = and i1 %14, %69
  br i1 %70, label %71, label %73

71:                                               ; preds = %67
  tail call void @BLI_remlink(ptr noundef nonnull %13, ptr noundef nonnull %68) #16
  %72 = load ptr, ptr @MEM_freeN, align 8, !tbaa !77
  tail call void %72(ptr noundef nonnull %68) #16
  br label %73

73:                                               ; preds = %39, %67, %71, %47, %36
  %74 = load ptr, ptr %16, align 8, !tbaa !77
  %75 = icmp eq ptr %74, null
  br i1 %75, label %76, label %15, !llvm.loop !739

76:                                               ; preds = %73, %3
  ret void
}

declare void @BLI_remlink(ptr noundef, ptr noundef) local_unnamed_addr #6

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable
define internal i32 @verghalo(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) #10 {
  %3 = load ptr, ptr %0, align 8, !tbaa !77
  %4 = load ptr, ptr %1, align 8, !tbaa !77
  %5 = getelementptr inbounds %struct.HaloRen, ptr %3, i64 0, i32 15
  %6 = load i32, ptr %5, align 8, !tbaa !740
  %7 = getelementptr inbounds %struct.HaloRen, ptr %4, i64 0, i32 15
  %8 = load i32, ptr %7, align 8, !tbaa !740
  %9 = icmp slt i32 %6, %8
  %10 = icmp sgt i32 %6, %8
  %11 = sext i1 %10 to i32
  %12 = select i1 %9, i32 1, i32 %11
  ret i32 %12
}

declare i32 @point_inside_volume_objectinstance(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #6

; Function Attrs: mustprogress nofree nounwind willreturn memory(write)
declare double @atan(double noundef) local_unnamed_addr #2

declare void @projectvert(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #6

declare ptr @RE_vertren_get_winspeed(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #6

declare ptr @RE_strandren_get_winspeed(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #6

declare void @interp_weights_face_v3(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #6

; Function Attrs: nofree willreturn
declare double @ldexp(double, i32) local_unnamed_addr #14

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #15

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i16 @llvm.umax.i16(i16, i16) #15

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umax.i32(i32, i32) #15

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umin.i32(i32, i32) #15

attributes #0 = { mustprogress nofree nounwind willreturn memory(write, argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { mustprogress nofree nounwind willreturn memory(write) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #4 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #6 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #8 = { mustprogress nofree nounwind willreturn memory(readwrite, inaccessiblemem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { nofree "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { nofree nosync nounwind memory(readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { nofree willreturn }
attributes #15 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #16 = { nounwind }

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
!34 = !{!35, !39, i64 208}
!35 = !{!"LampRen", !36, i64 0, !36, i64 8, !39, i64 16, !39, i64 20, !39, i64 24, !37, i64 28, !40, i64 40, !41, i64 44, !39, i64 48, !39, i64 52, !39, i64 56, !39, i64 60, !39, i64 64, !39, i64 68, !39, i64 72, !39, i64 76, !39, i64 80, !41, i64 84, !39, i64 88, !39, i64 92, !37, i64 96, !39, i64 108, !39, i64 112, !39, i64 116, !39, i64 120, !39, i64 124, !39, i64 128, !40, i64 132, !39, i64 136, !39, i64 140, !36, i64 144, !40, i64 152, !40, i64 154, !39, i64 156, !40, i64 160, !40, i64 162, !40, i64 164, !40, i64 166, !40, i64 168, !39, i64 172, !39, i64 176, !39, i64 180, !39, i64 184, !40, i64 188, !40, i64 190, !40, i64 192, !40, i64 194, !40, i64 196, !40, i64 198, !40, i64 200, !37, i64 202, !37, i64 204, !39, i64 208, !39, i64 212, !39, i64 216, !39, i64 220, !36, i64 224, !36, i64 232, !36, i64 240, !37, i64 248, !39, i64 284, !37, i64 288, !39, i64 300, !37, i64 304, !37, i64 368, !37, i64 404, !39, i64 500, !36, i64 504, !37, i64 512, !37, i64 520, !41, i64 664, !41, i64 668}
!36 = !{!"any pointer", !37, i64 0}
!37 = !{!"omnipotent char", !38, i64 0}
!38 = !{!"Simple C/C++ TBAA"}
!39 = !{!"float", !37, i64 0}
!40 = !{!"short", !37, i64 0}
!41 = !{!"int", !37, i64 0}
!42 = !{!35, !39, i64 212}
!43 = !{!35, !40, i64 200}
!44 = !{!39, !39, i64 0}
!45 = !{!35, !39, i64 24}
!46 = !{!35, !39, i64 500}
!47 = !{!48, !36, i64 5432}
!48 = !{!"Render", !36, i64 0, !36, i64 8, !37, i64 16, !41, i64 92, !40, i64 96, !40, i64 98, !40, i64 100, !40, i64 102, !37, i64 104, !36, i64 112, !36, i64 120, !49, i64 128, !41, i64 144, !41, i64 148, !41, i64 152, !50, i64 156, !51, i64 172, !39, i64 188, !39, i64 192, !39, i64 196, !41, i64 200, !41, i64 204, !41, i64 208, !41, i64 212, !39, i64 216, !39, i64 220, !39, i64 224, !39, i64 228, !39, i64 232, !39, i64 236, !37, i64 240, !37, i64 252, !37, i64 288, !37, i64 352, !37, i64 416, !37, i64 480, !39, i64 544, !39, i64 548, !36, i64 552, !37, i64 560, !37, i64 816, !36, i64 1072, !37, i64 1080, !36, i64 1088, !36, i64 1096, !52, i64 1104, !59, i64 5088, !36, i64 5616, !41, i64 5624, !41, i64 5628, !49, i64 5632, !36, i64 5648, !36, i64 5656, !36, i64 5664, !36, i64 5672, !39, i64 5680, !36, i64 5688, !49, i64 5696, !39, i64 5712, !39, i64 5716, !41, i64 5720, !41, i64 5724, !41, i64 5728, !41, i64 5732, !41, i64 5736, !36, i64 5744, !49, i64 5752, !49, i64 5768, !49, i64 5784, !36, i64 5800, !49, i64 5808, !41, i64 5824, !36, i64 5832, !36, i64 5840, !36, i64 5848, !36, i64 5856, !36, i64 5864, !49, i64 5872, !36, i64 5888, !49, i64 5896, !49, i64 5912, !36, i64 5928, !36, i64 5936, !36, i64 5944, !36, i64 5952, !36, i64 5960, !36, i64 5968, !36, i64 5976, !36, i64 5984, !36, i64 5992, !36, i64 6000, !36, i64 6008, !36, i64 6016, !36, i64 6024, !36, i64 6032, !36, i64 6040, !36, i64 6048, !36, i64 6056, !61, i64 6064, !36, i64 6216, !36, i64 6224, !36, i64 6232}
!49 = !{!"ListBase", !36, i64 0, !36, i64 8}
!50 = !{!"rcti", !41, i64 0, !41, i64 4, !41, i64 8, !41, i64 12}
!51 = !{!"rctf", !39, i64 0, !39, i64 4, !39, i64 8, !39, i64 12}
!52 = !{!"RenderData", !53, i64 0, !36, i64 248, !36, i64 256, !56, i64 264, !57, i64 328, !41, i64 400, !41, i64 404, !41, i64 408, !39, i64 412, !41, i64 416, !41, i64 420, !41, i64 424, !41, i64 428, !40, i64 432, !40, i64 434, !39, i64 436, !39, i64 440, !39, i64 444, !39, i64 448, !39, i64 452, !40, i64 456, !40, i64 458, !40, i64 460, !40, i64 462, !40, i64 464, !40, i64 466, !41, i64 468, !40, i64 472, !40, i64 474, !40, i64 476, !40, i64 478, !40, i64 480, !40, i64 482, !41, i64 484, !41, i64 488, !40, i64 492, !40, i64 494, !41, i64 496, !41, i64 500, !40, i64 504, !40, i64 506, !40, i64 508, !40, i64 510, !40, i64 512, !37, i64 514, !37, i64 515, !41, i64 516, !41, i64 520, !41, i64 524, !40, i64 528, !40, i64 530, !40, i64 532, !40, i64 534, !40, i64 536, !40, i64 538, !40, i64 540, !40, i64 542, !51, i64 544, !51, i64 560, !50, i64 576, !49, i64 592, !40, i64 608, !40, i64 610, !39, i64 612, !39, i64 616, !39, i64 620, !39, i64 624, !41, i64 628, !39, i64 632, !39, i64 636, !39, i64 640, !39, i64 644, !40, i64 648, !40, i64 650, !40, i64 652, !40, i64 654, !40, i64 656, !40, i64 658, !39, i64 660, !39, i64 664, !40, i64 668, !40, i64 670, !39, i64 672, !39, i64 676, !37, i64 680, !41, i64 1704, !40, i64 1708, !40, i64 1710, !37, i64 1712, !37, i64 2480, !37, i64 2496, !37, i64 2512, !37, i64 2513, !37, i64 2514, !37, i64 2515, !41, i64 2520, !40, i64 2524, !40, i64 2526, !39, i64 2528, !39, i64 2532, !40, i64 2536, !40, i64 2538, !39, i64 2540, !40, i64 2544, !40, i64 2546, !41, i64 2548, !40, i64 2552, !40, i64 2554, !40, i64 2556, !40, i64 2558, !39, i64 2560, !39, i64 2564, !36, i64 2568, !41, i64 2576, !39, i64 2580, !37, i64 2584, !58, i64 2616, !41, i64 3976, !41, i64 3980}
!53 = !{!"ImageFormatData", !37, i64 0, !37, i64 1, !37, i64 2, !37, i64 3, !37, i64 4, !37, i64 5, !37, i64 6, !37, i64 7, !40, i64 8, !40, i64 10, !39, i64 12, !37, i64 16, !37, i64 17, !37, i64 18, !54, i64 24, !55, i64 184}
!54 = !{!"ColorManagedViewSettings", !41, i64 0, !41, i64 4, !37, i64 8, !37, i64 72, !39, i64 136, !39, i64 140, !36, i64 144, !36, i64 152}
!55 = !{!"ColorManagedDisplaySettings", !37, i64 0}
!56 = !{!"QuicktimeCodecSettings", !41, i64 0, !41, i64 4, !41, i64 8, !41, i64 12, !41, i64 16, !41, i64 20, !41, i64 24, !41, i64 28, !41, i64 32, !41, i64 36, !41, i64 40, !41, i64 44, !40, i64 48, !40, i64 50, !41, i64 52, !41, i64 56, !41, i64 60}
!57 = !{!"FFMpegCodecData", !41, i64 0, !41, i64 4, !41, i64 8, !41, i64 12, !41, i64 16, !41, i64 20, !41, i64 24, !41, i64 28, !39, i64 32, !41, i64 36, !41, i64 40, !41, i64 44, !41, i64 48, !41, i64 52, !41, i64 56, !41, i64 60, !36, i64 64}
!58 = !{!"BakeData", !53, i64 0, !37, i64 248, !40, i64 1272, !40, i64 1274, !40, i64 1276, !40, i64 1278, !39, i64 1280, !39, i64 1284, !37, i64 1288, !37, i64 1291, !37, i64 1292, !37, i64 1293, !37, i64 1296}
!59 = !{!"World", !60, i64 0, !36, i64 120, !40, i64 128, !40, i64 130, !40, i64 132, !40, i64 134, !39, i64 136, !39, i64 140, !39, i64 144, !39, i64 148, !39, i64 152, !39, i64 156, !39, i64 160, !39, i64 164, !39, i64 168, !39, i64 172, !39, i64 176, !39, i64 180, !39, i64 184, !39, i64 188, !39, i64 192, !39, i64 196, !40, i64 200, !40, i64 202, !40, i64 204, !40, i64 206, !40, i64 208, !40, i64 210, !40, i64 212, !40, i64 214, !39, i64 216, !39, i64 220, !39, i64 224, !39, i64 228, !39, i64 232, !39, i64 236, !39, i64 240, !39, i64 244, !39, i64 248, !39, i64 252, !39, i64 256, !39, i64 260, !40, i64 264, !40, i64 266, !40, i64 268, !40, i64 270, !39, i64 272, !39, i64 276, !39, i64 280, !39, i64 284, !40, i64 288, !40, i64 290, !40, i64 292, !40, i64 294, !39, i64 296, !39, i64 300, !39, i64 304, !39, i64 308, !39, i64 312, !39, i64 316, !39, i64 320, !40, i64 324, !40, i64 326, !40, i64 328, !40, i64 330, !40, i64 332, !40, i64 334, !36, i64 336, !36, i64 344, !36, i64 352, !37, i64 360, !40, i64 504, !40, i64 506, !37, i64 508, !36, i64 512, !36, i64 520}
!60 = !{!"ID", !36, i64 0, !36, i64 8, !36, i64 16, !36, i64 24, !37, i64 32, !40, i64 98, !41, i64 100, !41, i64 104, !41, i64 108, !36, i64 112}
!61 = !{!"RenderStats", !41, i64 0, !41, i64 4, !41, i64 8, !41, i64 12, !41, i64 16, !41, i64 20, !41, i64 24, !40, i64 28, !40, i64 30, !40, i64 32, !40, i64 34, !40, i64 36, !40, i64 38, !37, i64 40, !62, i64 48, !62, i64 56, !36, i64 64, !36, i64 72, !37, i64 80, !39, i64 144, !39, i64 148}
!62 = !{!"double", !37, i64 0}
!63 = !{!48, !36, i64 5424}
!64 = !{!48, !36, i64 1096}
!65 = !{!66, !36, i64 136}
!66 = !{!"Scene", !60, i64 0, !36, i64 120, !36, i64 128, !36, i64 136, !36, i64 144, !49, i64 152, !36, i64 168, !36, i64 176, !37, i64 184, !37, i64 196, !37, i64 208, !37, i64 220, !41, i64 232, !41, i64 236, !41, i64 240, !40, i64 244, !37, i64 246, !37, i64 247, !36, i64 248, !36, i64 256, !36, i64 264, !36, i64 272, !52, i64 280, !67, i64 4264, !49, i64 4296, !49, i64 4312, !36, i64 4328, !36, i64 4336, !36, i64 4344, !36, i64 4352, !36, i64 4360, !36, i64 4368, !40, i64 4376, !40, i64 4378, !41, i64 4380, !49, i64 4384, !68, i64 4400, !69, i64 4416, !72, i64 4600, !36, i64 4608, !73, i64 4616, !36, i64 4640, !74, i64 4648, !74, i64 4656, !54, i64 4664, !55, i64 4824, !75, i64 4888, !36, i64 4952}
!67 = !{!"AudioData", !41, i64 0, !39, i64 4, !39, i64 8, !39, i64 12, !41, i64 16, !40, i64 20, !40, i64 22, !39, i64 24, !39, i64 28}
!68 = !{!"GameFraming", !37, i64 0, !37, i64 12, !37, i64 13, !37, i64 14, !37, i64 15}
!69 = !{!"GameData", !68, i64 0, !40, i64 16, !40, i64 18, !40, i64 20, !40, i64 22, !40, i64 24, !40, i64 26, !40, i64 28, !40, i64 30, !40, i64 32, !37, i64 34, !70, i64 40, !40, i64 64, !40, i64 66, !39, i64 68, !71, i64 72, !39, i64 128, !39, i64 132, !41, i64 136, !40, i64 140, !40, i64 142, !40, i64 144, !40, i64 146, !40, i64 148, !40, i64 150, !40, i64 152, !40, i64 154, !40, i64 156, !40, i64 158, !40, i64 160, !40, i64 162, !39, i64 164, !39, i64 168, !39, i64 172, !39, i64 176, !39, i64 180}
!70 = !{!"GameDome", !40, i64 0, !40, i64 2, !40, i64 4, !40, i64 6, !39, i64 8, !39, i64 12, !36, i64 16}
!71 = !{!"RecastData", !39, i64 0, !39, i64 4, !39, i64 8, !39, i64 12, !39, i64 16, !39, i64 20, !39, i64 24, !39, i64 28, !39, i64 32, !39, i64 36, !41, i64 40, !39, i64 44, !39, i64 48, !40, i64 52, !40, i64 54}
!72 = !{!"UnitSettings", !39, i64 0, !37, i64 4, !37, i64 5, !40, i64 6}
!73 = !{!"PhysicsSettings", !37, i64 0, !41, i64 12, !41, i64 16, !41, i64 20}
!74 = !{!"long", !37, i64 0}
!75 = !{!"ColorManagedColorspaceSettings", !37, i64 0}
!76 = !{i64 0, i64 8, !77, i64 8, i64 8, !77, i64 16, i64 8, !77, i64 24, i64 8, !77, i64 32, i64 66, !78, i64 98, i64 2, !79, i64 100, i64 4, !80, i64 104, i64 4, !80, i64 108, i64 4, !80, i64 112, i64 8, !77, i64 120, i64 8, !77, i64 128, i64 2, !79, i64 130, i64 2, !79, i64 132, i64 2, !79, i64 134, i64 2, !79, i64 136, i64 4, !44, i64 140, i64 4, !44, i64 144, i64 4, !44, i64 148, i64 4, !44, i64 152, i64 4, !44, i64 156, i64 4, !44, i64 160, i64 4, !44, i64 164, i64 4, !44, i64 168, i64 4, !44, i64 172, i64 4, !44, i64 176, i64 4, !44, i64 180, i64 4, !44, i64 184, i64 4, !44, i64 188, i64 4, !44, i64 192, i64 4, !44, i64 196, i64 4, !44, i64 200, i64 2, !79, i64 202, i64 2, !79, i64 204, i64 2, !79, i64 206, i64 2, !79, i64 208, i64 2, !79, i64 210, i64 2, !79, i64 212, i64 2, !79, i64 214, i64 2, !79, i64 216, i64 4, !44, i64 220, i64 4, !44, i64 224, i64 4, !44, i64 228, i64 4, !44, i64 232, i64 4, !44, i64 236, i64 4, !44, i64 240, i64 4, !44, i64 244, i64 4, !44, i64 248, i64 4, !44, i64 252, i64 4, !44, i64 256, i64 4, !44, i64 260, i64 4, !44, i64 264, i64 2, !79, i64 266, i64 2, !79, i64 268, i64 2, !79, i64 270, i64 2, !79, i64 272, i64 4, !44, i64 276, i64 4, !44, i64 280, i64 4, !44, i64 284, i64 4, !44, i64 288, i64 2, !79, i64 290, i64 2, !79, i64 292, i64 2, !79, i64 294, i64 2, !79, i64 296, i64 4, !44, i64 300, i64 4, !44, i64 304, i64 4, !44, i64 308, i64 4, !44, i64 312, i64 4, !44, i64 316, i64 4, !44, i64 320, i64 4, !44, i64 324, i64 2, !79, i64 326, i64 2, !79, i64 328, i64 2, !79, i64 330, i64 2, !79, i64 332, i64 2, !79, i64 334, i64 2, !79, i64 336, i64 8, !77, i64 344, i64 8, !77, i64 352, i64 8, !77, i64 360, i64 144, !78, i64 504, i64 2, !79, i64 506, i64 2, !79, i64 508, i64 4, !78, i64 512, i64 8, !77, i64 520, i64 8, !77}
!77 = !{!36, !36, i64 0}
!78 = !{!37, !37, i64 0}
!79 = !{!40, !40, i64 0}
!80 = !{!41, !41, i64 0}
!81 = !{!82, !36, i64 16}
!82 = !{!"MTex", !40, i64 0, !40, i64 2, !40, i64 4, !40, i64 6, !36, i64 8, !36, i64 16, !37, i64 24, !37, i64 88, !37, i64 89, !37, i64 90, !37, i64 91, !37, i64 92, !37, i64 104, !39, i64 116, !40, i64 120, !40, i64 122, !40, i64 124, !40, i64 126, !40, i64 128, !40, i64 130, !37, i64 132, !37, i64 133, !39, i64 140, !39, i64 144, !39, i64 148, !39, i64 152, !39, i64 156, !39, i64 160, !39, i64 164, !39, i64 168, !39, i64 172, !39, i64 176, !39, i64 180, !39, i64 184, !39, i64 188, !39, i64 192, !39, i64 196, !39, i64 200, !39, i64 204, !39, i64 208, !39, i64 212, !39, i64 216, !39, i64 220, !39, i64 224, !39, i64 228, !39, i64 232, !39, i64 236, !39, i64 240, !39, i64 244, !39, i64 248, !39, i64 252, !39, i64 256, !39, i64 260, !39, i64 264, !39, i64 268, !39, i64 272, !39, i64 276, !39, i64 280, !39, i64 284, !39, i64 288, !39, i64 292, !39, i64 296, !39, i64 300, !39, i64 304, !39, i64 308}
!83 = !{!48, !40, i64 5288}
!84 = distinct !{!84, !85, !86}
!85 = !{!"llvm.loop.mustprogress"}
!86 = !{!"llvm.loop.unroll.disable"}
!87 = !{!48, !40, i64 98}
!88 = !{!48, !40, i64 5378}
!89 = distinct !{!89, !85, !86}
!90 = !{!48, !41, i64 1624}
!91 = !{!48, !40, i64 5418}
!92 = !{!48, !40, i64 5290}
!93 = !{!48, !39, i64 5268}
!94 = !{!48, !39, i64 544}
!95 = !{!48, !39, i64 5308}
!96 = !{!48, !39, i64 548}
!97 = !{!48, !39, i64 5312}
!98 = !{!48, !39, i64 5304}
!99 = !{!48, !39, i64 5264}
!100 = !{!48, !39, i64 5272}
!101 = !{!48, !39, i64 5276}
!102 = !{!48, !40, i64 6100}
!103 = !{!104, !41, i64 2100}
!104 = !{!"Global", !36, i64 0, !37, i64 8, !37, i64 1032, !37, i64 2056, !37, i64 2057, !37, i64 2058, !49, i64 2064, !37, i64 2080, !37, i64 2081, !37, i64 2082, !40, i64 2084, !40, i64 2086, !40, i64 2088, !37, i64 2090, !40, i64 2092, !41, i64 2096, !41, i64 2100, !37, i64 2104, !41, i64 2108, !41, i64 2112, !37, i64 2116}
!105 = !{!48, !41, i64 1620}
!106 = !{!35, !36, i64 240}
!107 = !{!35, !36, i64 504}
!108 = !{!35, !36, i64 224}
!109 = !{!35, !36, i64 144}
!110 = distinct !{!110, !85, !86}
!111 = !{!48, !36, i64 5840}
!112 = !{!48, !36, i64 1088}
!113 = !{!59, !36, i64 336}
!114 = !{!59, !36, i64 344}
!115 = !{!48, !36, i64 5832}
!116 = !{!66, !41, i64 796}
!117 = !{!48, !36, i64 5928}
!118 = !{!48, !41, i64 5624}
!119 = !{!48, !37, i64 104}
!120 = !{!48, !36, i64 6128}
!121 = !{!66, !41, i64 680}
!122 = !{!48, !41, i64 6064}
!123 = !{!48, !40, i64 6098}
!124 = !{!48, !36, i64 6232}
!125 = !{!48, !40, i64 5416}
!126 = !{!48, !36, i64 6048}
!127 = !{!48, !36, i64 6056}
!128 = !{!129, !40, i64 98}
!129 = !{!"Group", !60, i64 0, !49, i64 120, !41, i64 136, !37, i64 140}
!130 = distinct !{!130, !85, !86}
!131 = !{!132, !36, i64 784}
!132 = !{!"Material", !60, i64 0, !36, i64 120, !40, i64 128, !40, i64 130, !39, i64 132, !39, i64 136, !39, i64 140, !39, i64 144, !39, i64 148, !39, i64 152, !39, i64 156, !39, i64 160, !39, i64 164, !39, i64 168, !39, i64 172, !39, i64 176, !39, i64 180, !39, i64 184, !39, i64 188, !39, i64 192, !39, i64 196, !39, i64 200, !39, i64 204, !39, i64 208, !39, i64 212, !39, i64 216, !39, i64 220, !133, i64 224, !134, i64 312, !39, i64 328, !39, i64 332, !39, i64 336, !39, i64 340, !39, i64 344, !39, i64 348, !39, i64 352, !40, i64 356, !40, i64 358, !40, i64 360, !37, i64 362, !37, i64 363, !39, i64 364, !39, i64 368, !40, i64 372, !40, i64 374, !39, i64 376, !39, i64 380, !39, i64 384, !39, i64 388, !40, i64 392, !40, i64 394, !41, i64 396, !41, i64 400, !41, i64 404, !41, i64 408, !40, i64 412, !40, i64 414, !40, i64 416, !40, i64 418, !39, i64 420, !39, i64 424, !39, i64 428, !39, i64 432, !39, i64 436, !39, i64 440, !39, i64 444, !39, i64 448, !39, i64 452, !39, i64 456, !37, i64 460, !39, i64 524, !39, i64 528, !39, i64 532, !41, i64 536, !37, i64 540, !37, i64 541, !37, i64 542, !37, i64 543, !40, i64 544, !40, i64 546, !40, i64 548, !37, i64 550, !37, i64 551, !40, i64 552, !40, i64 554, !39, i64 556, !39, i64 560, !37, i64 564, !39, i64 580, !39, i64 584, !40, i64 588, !40, i64 590, !36, i64 592, !36, i64 600, !37, i64 608, !37, i64 609, !37, i64 610, !37, i64 611, !40, i64 612, !40, i64 614, !39, i64 616, !39, i64 620, !37, i64 624, !36, i64 768, !36, i64 776, !36, i64 784, !36, i64 792, !39, i64 800, !39, i64 804, !39, i64 808, !39, i64 812, !39, i64 816, !40, i64 820, !40, i64 822, !37, i64 824, !37, i64 836, !39, i64 848, !39, i64 852, !39, i64 856, !39, i64 860, !39, i64 864, !39, i64 868, !39, i64 872, !40, i64 876, !40, i64 878, !41, i64 880, !40, i64 884, !40, i64 886, !37, i64 888, !40, i64 904, !40, i64 906, !40, i64 908, !40, i64 910, !40, i64 912, !37, i64 914, !36, i64 920, !49, i64 928}
!133 = !{!"VolumeSettings", !39, i64 0, !39, i64 4, !39, i64 8, !39, i64 12, !37, i64 16, !37, i64 28, !37, i64 40, !39, i64 52, !39, i64 56, !39, i64 60, !40, i64 64, !40, i64 66, !40, i64 68, !40, i64 70, !39, i64 72, !39, i64 76, !39, i64 80, !39, i64 84}
!134 = !{!"GameSettings", !41, i64 0, !41, i64 4, !41, i64 8, !41, i64 12}
!135 = !{!132, !41, i64 396}
!136 = distinct !{!136, !85, !86}
!137 = !{!138, !36, i64 88}
!138 = !{!"SceneRenderLayer", !36, i64 0, !36, i64 8, !37, i64 16, !36, i64 80, !36, i64 88, !41, i64 96, !41, i64 100, !41, i64 104, !41, i64 108, !41, i64 112, !41, i64 116, !41, i64 120, !39, i64 124, !139, i64 128}
!139 = !{!"FreestyleConfig", !49, i64 0, !41, i64 16, !41, i64 20, !41, i64 24, !39, i64 28, !39, i64 32, !39, i64 36, !49, i64 40}
!140 = distinct !{!140, !85, !86}
!141 = distinct !{!141, !85, !86}
!142 = !{!48, !41, i64 5724}
!143 = !{!48, !41, i64 6072}
!144 = !{!48, !41, i64 5720}
!145 = !{!48, !41, i64 6068}
!146 = !{!48, !41, i64 5732}
!147 = !{!48, !41, i64 6076}
!148 = !{!48, !41, i64 5728}
!149 = !{!48, !41, i64 6080}
!150 = !{!48, !41, i64 5736}
!151 = !{!48, !41, i64 6084}
!152 = !{!48, !36, i64 6000}
!153 = !{!48, !36, i64 6008}
!154 = !{!155, !40, i64 948}
!155 = !{!"Object", !60, i64 0, !36, i64 120, !36, i64 128, !40, i64 136, !40, i64 138, !41, i64 140, !41, i64 144, !41, i64 148, !37, i64 152, !36, i64 216, !36, i64 224, !36, i64 232, !36, i64 240, !36, i64 248, !36, i64 256, !36, i64 264, !36, i64 272, !36, i64 280, !36, i64 288, !36, i64 296, !36, i64 304, !156, i64 312, !36, i64 360, !49, i64 368, !49, i64 384, !49, i64 400, !49, i64 416, !41, i64 432, !41, i64 436, !36, i64 440, !36, i64 448, !41, i64 456, !41, i64 460, !37, i64 464, !37, i64 476, !37, i64 488, !37, i64 500, !37, i64 512, !37, i64 524, !37, i64 536, !37, i64 548, !37, i64 560, !37, i64 576, !37, i64 592, !37, i64 604, !39, i64 616, !39, i64 620, !37, i64 624, !37, i64 688, !37, i64 752, !37, i64 816, !37, i64 880, !41, i64 944, !40, i64 948, !40, i64 950, !40, i64 952, !40, i64 954, !40, i64 956, !40, i64 958, !40, i64 960, !40, i64 962, !40, i64 964, !37, i64 966, !37, i64 967, !41, i64 968, !41, i64 972, !41, i64 976, !41, i64 980, !41, i64 984, !39, i64 988, !39, i64 992, !39, i64 996, !39, i64 1000, !39, i64 1004, !39, i64 1008, !39, i64 1012, !39, i64 1016, !39, i64 1020, !39, i64 1024, !39, i64 1028, !39, i64 1032, !40, i64 1036, !40, i64 1038, !40, i64 1040, !37, i64 1042, !37, i64 1043, !40, i64 1044, !37, i64 1046, !37, i64 1047, !39, i64 1048, !39, i64 1052, !49, i64 1056, !49, i64 1072, !49, i64 1088, !49, i64 1104, !39, i64 1120, !40, i64 1124, !40, i64 1126, !37, i64 1128, !41, i64 1144, !41, i64 1148, !36, i64 1152, !37, i64 1160, !37, i64 1161, !40, i64 1162, !37, i64 1164, !49, i64 1176, !49, i64 1192, !49, i64 1208, !49, i64 1224, !36, i64 1240, !36, i64 1248, !36, i64 1256, !37, i64 1264, !37, i64 1265, !40, i64 1266, !39, i64 1268, !36, i64 1272, !36, i64 1280, !36, i64 1288, !36, i64 1296, !74, i64 1304, !74, i64 1312, !41, i64 1320, !41, i64 1324, !49, i64 1328, !49, i64 1344, !36, i64 1360, !36, i64 1368, !36, i64 1376, !37, i64 1384, !36, i64 1392, !49, i64 1400, !36, i64 1416}
!156 = !{!"bAnimVizSettings", !41, i64 0, !41, i64 4, !41, i64 8, !41, i64 12, !40, i64 16, !40, i64 18, !40, i64 20, !40, i64 22, !40, i64 24, !40, i64 26, !40, i64 28, !40, i64 30, !41, i64 32, !41, i64 36, !41, i64 40, !41, i64 44}
!157 = !{!155, !40, i64 952}
!158 = distinct !{!158, !85, !86}
!159 = !{!160, !36, i64 32}
!160 = !{!"Base", !36, i64 0, !36, i64 8, !41, i64 16, !41, i64 20, !41, i64 24, !40, i64 28, !40, i64 30, !36, i64 32}
!161 = !{!138, !41, i64 112}
!162 = !{!138, !41, i64 96}
!163 = distinct !{!163, !85, !86}
!164 = !{!155, !37, i64 1160}
!165 = !{!155, !37, i64 1046}
!166 = !{!155, !36, i64 1224}
!167 = !{!155, !40, i64 136}
!168 = !{!160, !41, i64 16}
!169 = distinct !{!169, !85, !86}
!170 = !{!171, !36, i64 8}
!171 = !{!"DupliApplyData", !41, i64 0, !36, i64 8}
!172 = !{!173, !36, i64 16}
!173 = !{!"DupliObject", !36, i64 0, !36, i64 8, !36, i64 16, !37, i64 24, !37, i64 88, !37, i64 100, !40, i64 108, !37, i64 110, !37, i64 111, !37, i64 112, !36, i64 144}
!174 = !{!173, !37, i64 110}
!175 = !{!132, !40, i64 128}
!176 = distinct !{!176, !85, !86}
!177 = !{!178, !36, i64 16}
!178 = !{!"ParticleSystem", !36, i64 0, !36, i64 8, !36, i64 16, !36, i64 24, !36, i64 32, !36, i64 40, !36, i64 48, !36, i64 56, !36, i64 64, !49, i64 72, !49, i64 88, !36, i64 104, !36, i64 112, !36, i64 120, !36, i64 128, !36, i64 136, !36, i64 144, !49, i64 152, !37, i64 168, !37, i64 232, !39, i64 296, !39, i64 300, !39, i64 304, !41, i64 308, !41, i64 312, !41, i64 316, !41, i64 320, !41, i64 324, !41, i64 328, !41, i64 332, !41, i64 336, !40, i64 340, !40, i64 342, !40, i64 344, !40, i64 346, !37, i64 348, !37, i64 540, !40, i64 564, !40, i64 566, !36, i64 568, !36, i64 576, !49, i64 584, !36, i64 600, !36, i64 608, !41, i64 616, !41, i64 620, !36, i64 624, !36, i64 632, !36, i64 640, !39, i64 648, !39, i64 652}
!179 = !{!180, !40, i64 192}
!180 = !{!"ParticleSettings", !60, i64 0, !36, i64 120, !36, i64 128, !36, i64 136, !36, i64 144, !41, i64 152, !41, i64 156, !40, i64 160, !40, i64 162, !40, i64 164, !40, i64 166, !40, i64 168, !40, i64 170, !40, i64 172, !40, i64 174, !41, i64 176, !41, i64 180, !40, i64 184, !40, i64 186, !40, i64 188, !40, i64 190, !40, i64 192, !40, i64 194, !40, i64 196, !40, i64 198, !40, i64 200, !40, i64 202, !40, i64 204, !40, i64 206, !40, i64 208, !40, i64 210, !40, i64 212, !40, i64 214, !40, i64 216, !40, i64 218, !40, i64 220, !40, i64 222, !40, i64 224, !40, i64 226, !40, i64 228, !40, i64 230, !39, i64 232, !39, i64 236, !37, i64 240, !37, i64 248, !39, i64 256, !39, i64 260, !39, i64 264, !40, i64 268, !40, i64 270, !39, i64 272, !39, i64 276, !39, i64 280, !39, i64 284, !39, i64 288, !39, i64 292, !39, i64 296, !39, i64 300, !39, i64 304, !39, i64 308, !39, i64 312, !39, i64 316, !37, i64 320, !41, i64 324, !41, i64 328, !41, i64 332, !41, i64 336, !40, i64 340, !37, i64 342, !39, i64 348, !39, i64 352, !39, i64 356, !39, i64 360, !39, i64 364, !39, i64 368, !39, i64 372, !37, i64 376, !39, i64 388, !39, i64 392, !39, i64 396, !39, i64 400, !39, i64 404, !39, i64 408, !39, i64 412, !37, i64 416, !39, i64 428, !39, i64 432, !39, i64 436, !39, i64 440, !41, i64 444, !41, i64 448, !39, i64 452, !39, i64 456, !39, i64 460, !39, i64 464, !39, i64 468, !39, i64 472, !39, i64 476, !39, i64 480, !39, i64 484, !39, i64 488, !39, i64 492, !39, i64 496, !39, i64 500, !39, i64 504, !39, i64 508, !39, i64 512, !39, i64 516, !39, i64 520, !39, i64 524, !39, i64 528, !39, i64 532, !39, i64 536, !39, i64 540, !39, i64 544, !39, i64 548, !37, i64 552, !39, i64 560, !39, i64 564, !41, i64 568, !41, i64 572, !37, i64 576, !36, i64 720, !49, i64 728, !36, i64 744, !36, i64 752, !36, i64 760, !36, i64 768, !36, i64 776, !36, i64 784, !40, i64 792, !37, i64 794}
!181 = distinct !{!181, !85, !86}
!182 = !{!173, !40, i64 108}
!183 = !{!173, !37, i64 111}
!184 = !{!185, !36, i64 16}
!185 = !{!"ObjectRen", !36, i64 0, !36, i64 8, !36, i64 16, !36, i64 24, !36, i64 32, !41, i64 40, !41, i64 44, !41, i64 48, !41, i64 52, !37, i64 56, !41, i64 80, !41, i64 84, !41, i64 88, !41, i64 92, !41, i64 96, !41, i64 100, !41, i64 104, !41, i64 108, !36, i64 112, !36, i64 120, !36, i64 128, !36, i64 136, !36, i64 144, !36, i64 152, !36, i64 160, !41, i64 168, !41, i64 172, !41, i64 176, !37, i64 180, !36, i64 248, !36, i64 256, !36, i64 264, !36, i64 272}
!186 = !{!185, !41, i64 44}
!187 = !{!185, !41, i64 48}
!188 = distinct !{!188, !85, !86}
!189 = !{!155, !41, i64 944}
!190 = distinct !{!190, !85, !86}
!191 = distinct !{!191, !85, !86}
!192 = distinct !{!192, !85, !86}
!193 = !{!48, !36, i64 5744}
!194 = distinct !{!194, !85, !86}
!195 = !{!185, !41, i64 92}
!196 = !{!185, !36, i64 136}
!197 = distinct !{!197, !85, !86}
!198 = distinct !{!198, !85, !86}
!199 = !{!200, !36, i64 16}
!200 = !{!"ObjectInstanceRen", !36, i64 0, !36, i64 8, !36, i64 16, !36, i64 24, !36, i64 32, !41, i64 40, !41, i64 44, !41, i64 48, !37, i64 52, !37, i64 116, !37, i64 180, !40, i64 216, !37, i64 220, !37, i64 232, !36, i64 240, !36, i64 248, !36, i64 256, !41, i64 264, !36, i64 272, !41, i64 280}
!201 = !{!202, !36, i64 24}
!202 = !{!"VolumeOb", !36, i64 0, !36, i64 8, !36, i64 16, !36, i64 24}
!203 = !{!202, !36, i64 16}
!204 = !{!205, !36, i64 16}
!205 = !{!"MatInside", !36, i64 0, !36, i64 8, !36, i64 16, !36, i64 24}
!206 = !{!205, !36, i64 24}
!207 = distinct !{!207, !85, !86}
!208 = !{i64 0, i64 8, !77, i64 8, i64 8, !77}
!209 = !{!49, !36, i64 0}
!210 = !{!200, !41, i64 48}
!211 = !{!185, !41, i64 80}
!212 = !{!200, !41, i64 264}
!213 = !{!200, !36, i64 24}
!214 = !{!200, !36, i64 32}
!215 = !{!200, !41, i64 40}
!216 = !{!200, !41, i64 44}
!217 = distinct !{!217, !85, !86}
!218 = !{!219, !36, i64 112}
!219 = !{!"FluidsimModifierData", !220, i64 0, !36, i64 112, !36, i64 120}
!220 = !{!"ModifierData", !36, i64 0, !36, i64 8, !41, i64 16, !41, i64 20, !41, i64 24, !41, i64 28, !37, i64 32, !36, i64 96, !36, i64 104}
!221 = !{!222, !40, i64 16}
!222 = !{!"FluidsimSettings", !36, i64 0, !41, i64 8, !41, i64 12, !40, i64 16, !40, i64 18, !40, i64 20, !40, i64 22, !39, i64 24, !40, i64 28, !40, i64 30, !39, i64 32, !40, i64 36, !40, i64 38, !37, i64 40, !39, i64 52, !39, i64 56, !41, i64 60, !41, i64 64, !41, i64 68, !41, i64 72, !39, i64 76, !41, i64 80, !39, i64 84, !39, i64 88, !39, i64 92, !36, i64 96, !36, i64 104, !37, i64 112, !37, i64 1136, !37, i64 1148, !36, i64 1160, !40, i64 1168, !37, i64 1170, !37, i64 1171, !39, i64 1172, !41, i64 1176, !39, i64 1180, !39, i64 1184, !41, i64 1188, !41, i64 1192, !39, i64 1196, !39, i64 1200, !39, i64 1204, !36, i64 1208, !41, i64 1216, !39, i64 1220, !39, i64 1224, !39, i64 1228, !39, i64 1232, !39, i64 1236, !39, i64 1240, !39, i64 1244, !41, i64 1248, !39, i64 1252}
!223 = !{!48, !41, i64 148}
!224 = !{!48, !41, i64 152}
!225 = !{!222, !36, i64 1208}
!226 = !{!222, !41, i64 1216}
!227 = !{!200, !40, i64 216}
!228 = distinct !{!228, !85, !86}
!229 = distinct !{!229, !85, !86}
!230 = distinct !{!230, !85, !86}
!231 = !{!185, !36, i64 112}
!232 = !{!233, !36, i64 0}
!233 = !{!"VertTableNode", !36, i64 0, !36, i64 8, !36, i64 16, !36, i64 24, !36, i64 32, !36, i64 40, !36, i64 48}
!234 = distinct !{!234, !85, !86}
!235 = !{!200, !36, i64 256}
!236 = distinct !{!236, !85, !86}
!237 = !{!185, !36, i64 128}
!238 = !{!185, !36, i64 144}
!239 = !{!240, !36, i64 56}
!240 = !{!"StrandBuffer", !36, i64 0, !36, i64 8, !36, i64 16, !36, i64 24, !41, i64 32, !41, i64 36, !36, i64 40, !36, i64 48, !36, i64 56, !41, i64 64, !41, i64 68, !41, i64 72, !41, i64 76, !39, i64 80, !39, i64 84, !39, i64 88, !39, i64 92, !37, i64 96, !41, i64 160, !41, i64 164}
!241 = !{!242, !36, i64 304}
!242 = !{!"StrandSurface", !36, i64 0, !36, i64 8, !185, i64 16, !36, i64 296, !36, i64 304, !36, i64 312, !36, i64 320, !36, i64 328, !36, i64 336, !36, i64 344, !41, i64 352, !41, i64 356}
!243 = !{!242, !36, i64 336}
!244 = !{!242, !36, i64 344}
!245 = !{!242, !41, i64 352}
!246 = distinct !{!246, !85, !86}
!247 = !{!185, !41, i64 88}
!248 = !{!249, !36, i64 0}
!249 = !{!"StrandTableNode", !36, i64 0, !36, i64 8, !36, i64 16, !36, i64 24, !36, i64 32, !36, i64 40, !36, i64 48, !41, i64 56, !41, i64 60}
!250 = !{!242, !41, i64 356}
!251 = !{!242, !36, i64 296}
!252 = !{!253, !36, i64 0}
!253 = !{!"StrandRen", !36, i64 0, !36, i64 8, !41, i64 16, !41, i64 20, !41, i64 24, !41, i64 28, !37, i64 32}
!254 = distinct !{!254, !85, !86}
!255 = !{!200, !36, i64 0}
!256 = distinct !{!256, !85, !86}
!257 = distinct !{!257, !85, !86}
!258 = distinct !{!258, !85, !86}
!259 = distinct !{!259, !85, !86}
!260 = !{!51, !39, i64 4}
!261 = !{!51, !39, i64 0}
!262 = !{!51, !39, i64 12}
!263 = !{!51, !39, i64 8}
!264 = distinct !{!264, !85, !86}
!265 = distinct !{!265, !85, !86}
!266 = !{i64 0, i64 1, !78, i64 1, i64 1, !78, i64 2, i64 1, !78, i64 3, i64 1, !78, i64 4, i64 1, !78, i64 5, i64 1, !78, i64 6, i64 1, !78, i64 7, i64 1, !78, i64 8, i64 2, !79, i64 10, i64 2, !79, i64 12, i64 4, !44, i64 16, i64 1, !78, i64 17, i64 1, !78, i64 18, i64 6, !78, i64 24, i64 4, !80, i64 28, i64 4, !80, i64 32, i64 64, !78, i64 96, i64 64, !78, i64 160, i64 4, !44, i64 164, i64 4, !44, i64 168, i64 8, !77, i64 176, i64 8, !77, i64 184, i64 64, !78, i64 248, i64 8, !77, i64 256, i64 8, !77, i64 264, i64 4, !80, i64 268, i64 4, !80, i64 272, i64 4, !80, i64 276, i64 4, !80, i64 280, i64 4, !80, i64 284, i64 4, !80, i64 288, i64 4, !80, i64 292, i64 4, !80, i64 296, i64 4, !80, i64 300, i64 4, !80, i64 304, i64 4, !80, i64 308, i64 4, !80, i64 312, i64 2, !79, i64 314, i64 2, !79, i64 316, i64 4, !80, i64 320, i64 4, !80, i64 324, i64 4, !80, i64 328, i64 4, !80, i64 332, i64 4, !80, i64 336, i64 4, !80, i64 340, i64 4, !80, i64 344, i64 4, !80, i64 348, i64 4, !80, i64 352, i64 4, !80, i64 356, i64 4, !80, i64 360, i64 4, !44, i64 364, i64 4, !80, i64 368, i64 4, !80, i64 372, i64 4, !80, i64 376, i64 4, !80, i64 380, i64 4, !80, i64 384, i64 4, !80, i64 388, i64 4, !80, i64 392, i64 8, !77, i64 400, i64 4, !80, i64 404, i64 4, !80, i64 408, i64 4, !80, i64 412, i64 4, !44, i64 416, i64 4, !80, i64 420, i64 4, !80, i64 424, i64 4, !80, i64 428, i64 4, !80, i64 432, i64 2, !79, i64 434, i64 2, !79, i64 436, i64 4, !44, i64 440, i64 4, !44, i64 444, i64 4, !44, i64 448, i64 4, !44, i64 452, i64 4, !44, i64 456, i64 2, !79, i64 458, i64 2, !79, i64 460, i64 2, !79, i64 462, i64 2, !79, i64 464, i64 2, !79, i64 466, i64 2, !79, i64 468, i64 4, !80, i64 472, i64 2, !79, i64 474, i64 2, !79, i64 476, i64 2, !79, i64 478, i64 2, !79, i64 480, i64 2, !79, i64 482, i64 2, !79, i64 484, i64 4, !80, i64 488, i64 4, !80, i64 492, i64 2, !79, i64 494, i64 2, !79, i64 496, i64 4, !80, i64 500, i64 4, !80, i64 504, i64 2, !79, i64 506, i64 2, !79, i64 508, i64 2, !79, i64 510, i64 2, !79, i64 512, i64 2, !79, i64 514, i64 1, !78, i64 515, i64 1, !78, i64 516, i64 4, !80, i64 520, i64 4, !80, i64 524, i64 4, !80, i64 528, i64 2, !79, i64 530, i64 2, !79, i64 532, i64 2, !79, i64 534, i64 2, !79, i64 536, i64 2, !79, i64 538, i64 2, !79, i64 540, i64 2, !79, i64 542, i64 2, !79, i64 544, i64 4, !44, i64 548, i64 4, !44, i64 552, i64 4, !44, i64 556, i64 4, !44, i64 560, i64 4, !44, i64 564, i64 4, !44, i64 568, i64 4, !44, i64 572, i64 4, !44, i64 576, i64 4, !80, i64 580, i64 4, !80, i64 584, i64 4, !80, i64 588, i64 4, !80, i64 592, i64 8, !77, i64 600, i64 8, !77, i64 608, i64 2, !79, i64 610, i64 2, !79, i64 612, i64 4, !44, i64 616, i64 4, !44, i64 620, i64 4, !44, i64 624, i64 4, !44, i64 628, i64 4, !80, i64 632, i64 4, !44, i64 636, i64 4, !44, i64 640, i64 4, !44, i64 644, i64 4, !44, i64 648, i64 2, !79, i64 650, i64 2, !79, i64 652, i64 2, !79, i64 654, i64 2, !79, i64 656, i64 2, !79, i64 658, i64 2, !79, i64 660, i64 4, !44, i64 664, i64 4, !44, i64 668, i64 2, !79, i64 670, i64 2, !79, i64 672, i64 4, !44, i64 676, i64 4, !44, i64 680, i64 1024, !78, i64 1704, i64 4, !80, i64 1708, i64 2, !79, i64 1710, i64 2, !79, i64 1712, i64 768, !78, i64 2480, i64 16, !78, i64 2496, i64 16, !78, i64 2512, i64 1, !78, i64 2513, i64 1, !78, i64 2514, i64 1, !78, i64 2515, i64 5, !78, i64 2520, i64 4, !80, i64 2524, i64 2, !79, i64 2526, i64 2, !79, i64 2528, i64 4, !44, i64 2532, i64 4, !44, i64 2536, i64 2, !79, i64 2538, i64 2, !79, i64 2540, i64 4, !44, i64 2544, i64 2, !79, i64 2546, i64 2, !79, i64 2548, i64 4, !80, i64 2552, i64 2, !79, i64 2554, i64 2, !79, i64 2556, i64 2, !79, i64 2558, i64 2, !79, i64 2560, i64 4, !44, i64 2564, i64 4, !44, i64 2568, i64 8, !77, i64 2576, i64 4, !80, i64 2580, i64 4, !44, i64 2584, i64 32, !78, i64 2616, i64 1, !78, i64 2617, i64 1, !78, i64 2618, i64 1, !78, i64 2619, i64 1, !78, i64 2620, i64 1, !78, i64 2621, i64 1, !78, i64 2622, i64 1, !78, i64 2623, i64 1, !78, i64 2624, i64 2, !79, i64 2626, i64 2, !79, i64 2628, i64 4, !44, i64 2632, i64 1, !78, i64 2633, i64 1, !78, i64 2634, i64 6, !78, i64 2640, i64 4, !80, i64 2644, i64 4, !80, i64 2648, i64 64, !78, i64 2712, i64 64, !78, i64 2776, i64 4, !44, i64 2780, i64 4, !44, i64 2784, i64 8, !77, i64 2792, i64 8, !77, i64 2800, i64 64, !78, i64 2864, i64 1024, !78, i64 3888, i64 2, !79, i64 3890, i64 2, !79, i64 3892, i64 2, !79, i64 3894, i64 2, !79, i64 3896, i64 4, !44, i64 3900, i64 4, !44, i64 3904, i64 3, !78, i64 3907, i64 1, !78, i64 3908, i64 1, !78, i64 3909, i64 3, !78, i64 3912, i64 64, !78, i64 3976, i64 4, !80, i64 3980, i64 4, !80}
!267 = !{!48, !40, i64 96}
!268 = !{!48, !36, i64 5888}
!269 = !{!48, !40, i64 1760}
!270 = !{!132, !40, i64 588}
!271 = distinct !{!271, !85, !86}
!272 = !{!200, !36, i64 240}
!273 = !{!180, !41, i64 176}
!274 = !{!178, !36, i64 0}
!275 = distinct !{!275, !85, !86}
!276 = !{!155, !41, i64 456}
!277 = distinct !{!277, !85, !86}
!278 = !{!178, !41, i64 316}
!279 = distinct !{!279, !85, !86}
!280 = !{!62, !62, i64 0}
!281 = distinct !{!281, !85, !86}
!282 = !{!74, !74, i64 0}
!283 = !{!284, !36, i64 1680}
!284 = !{!"DerivedMesh", !285, i64 0, !285, i64 200, !285, i64 400, !285, i64 600, !285, i64 800, !41, i64 1000, !41, i64 1004, !41, i64 1008, !41, i64 1012, !41, i64 1016, !41, i64 1020, !41, i64 1024, !36, i64 1032, !36, i64 1040, !41, i64 1048, !39, i64 1052, !41, i64 1056, !41, i64 1060, !36, i64 1064, !37, i64 1072, !36, i64 1080, !36, i64 1088, !36, i64 1096, !36, i64 1104, !36, i64 1112, !36, i64 1120, !36, i64 1128, !36, i64 1136, !36, i64 1144, !36, i64 1152, !36, i64 1160, !36, i64 1168, !36, i64 1176, !36, i64 1184, !36, i64 1192, !36, i64 1200, !36, i64 1208, !36, i64 1216, !36, i64 1224, !36, i64 1232, !36, i64 1240, !36, i64 1248, !36, i64 1256, !36, i64 1264, !36, i64 1272, !36, i64 1280, !36, i64 1288, !36, i64 1296, !36, i64 1304, !36, i64 1312, !36, i64 1320, !36, i64 1328, !36, i64 1336, !36, i64 1344, !36, i64 1352, !36, i64 1360, !36, i64 1368, !36, i64 1376, !36, i64 1384, !36, i64 1392, !36, i64 1400, !36, i64 1408, !36, i64 1416, !36, i64 1424, !36, i64 1432, !36, i64 1440, !36, i64 1448, !36, i64 1456, !36, i64 1464, !36, i64 1472, !36, i64 1480, !36, i64 1488, !36, i64 1496, !36, i64 1504, !36, i64 1512, !36, i64 1520, !36, i64 1528, !36, i64 1536, !36, i64 1544, !36, i64 1552, !36, i64 1560, !36, i64 1568, !36, i64 1576, !36, i64 1584, !36, i64 1592, !36, i64 1600, !36, i64 1608, !36, i64 1616, !36, i64 1624, !36, i64 1632, !36, i64 1640, !36, i64 1648, !36, i64 1656, !36, i64 1664, !36, i64 1672, !36, i64 1680}
!285 = !{!"CustomData", !36, i64 0, !37, i64 8, !41, i64 172, !41, i64 176, !41, i64 180, !36, i64 184, !36, i64 192}
!286 = !{!287, !40, i64 140}
!287 = !{!"ParticleSystemModifierData", !220, i64 0, !36, i64 112, !36, i64 120, !41, i64 128, !41, i64 132, !41, i64 136, !40, i64 140, !40, i64 142}
!288 = distinct !{!288, !85, !86}
!289 = !{!155, !36, i64 1256}
!290 = !{!291, !36, i64 16}
!291 = !{!"GroupObject", !36, i64 0, !36, i64 8, !36, i64 16, !36, i64 24, !40, i64 32, !37, i64 34}
!292 = distinct !{!292, !85, !86}
!293 = !{!185, !41, i64 84}
!294 = distinct !{!294, !85, !86}
!295 = distinct !{!295, !85, !86}
!296 = !{!155, !36, i64 296}
!297 = !{!298, !41, i64 132}
!298 = !{!"Lamp", !60, i64 0, !36, i64 120, !40, i64 128, !40, i64 130, !41, i64 132, !40, i64 136, !40, i64 138, !39, i64 140, !39, i64 144, !39, i64 148, !39, i64 152, !39, i64 156, !39, i64 160, !39, i64 164, !39, i64 168, !39, i64 172, !39, i64 176, !39, i64 180, !39, i64 184, !39, i64 188, !39, i64 192, !39, i64 196, !36, i64 200, !40, i64 208, !40, i64 210, !39, i64 212, !39, i64 216, !39, i64 220, !39, i64 224, !39, i64 228, !39, i64 232, !39, i64 236, !40, i64 240, !40, i64 242, !40, i64 244, !40, i64 246, !37, i64 248, !37, i64 249, !40, i64 250, !40, i64 252, !40, i64 254, !40, i64 256, !40, i64 258, !39, i64 260, !39, i64 264, !39, i64 268, !39, i64 272, !40, i64 276, !40, i64 278, !40, i64 280, !40, i64 282, !40, i64 284, !40, i64 286, !39, i64 288, !39, i64 292, !39, i64 296, !39, i64 300, !39, i64 304, !39, i64 308, !39, i64 312, !39, i64 316, !39, i64 320, !39, i64 324, !39, i64 328, !39, i64 332, !39, i64 336, !40, i64 340, !37, i64 342, !36, i64 344, !37, i64 352, !40, i64 496, !40, i64 498, !37, i64 500, !36, i64 504, !36, i64 512}
!299 = !{!291, !36, i64 24}
!300 = !{!298, !40, i64 240}
!301 = !{!35, !40, i64 152}
!302 = !{!298, !40, i64 242}
!303 = !{!35, !40, i64 154}
!304 = !{!298, !40, i64 244}
!305 = !{!35, !40, i64 160}
!306 = !{!298, !37, i64 249}
!307 = !{!35, !40, i64 164}
!308 = !{!298, !40, i64 246}
!309 = !{!35, !40, i64 162}
!310 = !{!298, !39, i64 224}
!311 = !{!35, !39, i64 156}
!312 = !{!298, !40, i64 282}
!313 = !{!35, !40, i64 168}
!314 = !{!298, !39, i64 212}
!315 = !{!35, !39, i64 172}
!316 = !{!298, !39, i64 216}
!317 = !{!35, !39, i64 176}
!318 = !{!298, !39, i64 220}
!319 = !{!35, !39, i64 180}
!320 = !{!298, !39, i64 228}
!321 = !{!35, !39, i64 184}
!322 = !{!298, !40, i64 128}
!323 = !{!35, !40, i64 40}
!324 = !{!35, !41, i64 44}
!325 = !{!298, !39, i64 172}
!326 = !{!35, !39, i64 76}
!327 = !{!298, !39, i64 176}
!328 = !{!298, !39, i64 188}
!329 = !{!35, !39, i64 80}
!330 = !{!35, !39, i64 116}
!331 = !{!298, !39, i64 140}
!332 = !{!35, !39, i64 48}
!333 = !{!298, !39, i64 144}
!334 = !{!35, !39, i64 52}
!335 = !{!298, !39, i64 148}
!336 = !{!35, !39, i64 56}
!337 = !{!298, !39, i64 156}
!338 = !{!35, !39, i64 64}
!339 = !{!298, !39, i64 160}
!340 = !{!35, !39, i64 68}
!341 = !{!298, !39, i64 164}
!342 = !{!35, !39, i64 72}
!343 = !{!298, !39, i64 152}
!344 = !{!35, !39, i64 60}
!345 = !{!298, !40, i64 250}
!346 = !{!35, !40, i64 188}
!347 = !{!298, !40, i64 252}
!348 = !{!35, !40, i64 190}
!349 = !{!298, !40, i64 254}
!350 = !{!35, !40, i64 192}
!351 = !{!298, !39, i64 260}
!352 = !{!298, !39, i64 264}
!353 = !{!298, !39, i64 268}
!354 = !{!35, !39, i64 216}
!355 = !{!298, !40, i64 258}
!356 = !{!35, !40, i64 198}
!357 = !{!298, !40, i64 276}
!358 = !{!35, !40, i64 194}
!359 = !{!298, !40, i64 256}
!360 = !{!35, !40, i64 196}
!361 = !{!298, !39, i64 272}
!362 = !{!35, !39, i64 220}
!363 = !{!298, !40, i64 284}
!364 = !{!365, !40, i64 0}
!365 = !{!"SunSky", !40, i64 0, !40, i64 2, !40, i64 4, !39, i64 8, !39, i64 12, !39, i64 16, !37, i64 20, !39, i64 32, !39, i64 36, !39, i64 40, !39, i64 44, !37, i64 48, !37, i64 68, !37, i64 88, !39, i64 108, !39, i64 112, !39, i64 116, !39, i64 120, !39, i64 124, !39, i64 128, !39, i64 132, !39, i64 136, !39, i64 140, !39, i64 144, !39, i64 148, !39, i64 152, !39, i64 156, !39, i64 160, !37, i64 164, !37, i64 176, !37, i64 188, !37, i64 200, !37, i64 212}
!366 = !{!298, !39, i64 312}
!367 = !{!298, !39, i64 288}
!368 = !{!298, !39, i64 292}
!369 = !{!298, !39, i64 296}
!370 = !{!298, !39, i64 300}
!371 = !{!298, !39, i64 304}
!372 = !{!298, !39, i64 328}
!373 = !{!298, !40, i64 286}
!374 = !{!298, !39, i64 332}
!375 = !{!298, !40, i64 340}
!376 = !{!298, !39, i64 308}
!377 = !{!298, !39, i64 316}
!378 = !{!298, !39, i64 320}
!379 = !{!298, !39, i64 324}
!380 = !{!298, !39, i64 180}
!381 = !{!35, !39, i64 88}
!382 = !{!298, !39, i64 184}
!383 = !{!35, !39, i64 92}
!384 = !{!35, !41, i64 84}
!385 = !{!298, !40, i64 208}
!386 = !{!35, !40, i64 132}
!387 = !{!298, !39, i64 192}
!388 = !{!35, !39, i64 136}
!389 = !{!298, !39, i64 196}
!390 = !{!35, !39, i64 140}
!391 = !{!298, !36, i64 200}
!392 = !{!35, !39, i64 284}
!393 = !{!35, !39, i64 300}
!394 = !{!82, !40, i64 2}
!395 = !{!396, !40, i64 232}
!396 = !{!"Tex", !60, i64 0, !36, i64 120, !39, i64 128, !39, i64 132, !39, i64 136, !39, i64 140, !39, i64 144, !39, i64 148, !39, i64 152, !39, i64 156, !39, i64 160, !39, i64 164, !39, i64 168, !39, i64 172, !39, i64 176, !39, i64 180, !39, i64 184, !39, i64 188, !39, i64 192, !39, i64 196, !39, i64 200, !39, i64 204, !39, i64 208, !39, i64 212, !40, i64 216, !40, i64 218, !40, i64 220, !40, i64 222, !40, i64 224, !40, i64 226, !40, i64 228, !40, i64 230, !40, i64 232, !40, i64 234, !39, i64 236, !39, i64 240, !39, i64 244, !39, i64 248, !41, i64 252, !41, i64 256, !40, i64 260, !40, i64 262, !40, i64 264, !40, i64 266, !41, i64 268, !41, i64 272, !41, i64 276, !41, i64 280, !39, i64 284, !39, i64 288, !39, i64 292, !397, i64 296, !36, i64 336, !36, i64 344, !36, i64 352, !36, i64 360, !36, i64 368, !36, i64 376, !36, i64 384, !36, i64 392, !36, i64 400, !37, i64 408, !37, i64 409}
!397 = !{!"ImageUser", !36, i64 0, !41, i64 8, !41, i64 12, !41, i64 16, !41, i64 20, !37, i64 24, !37, i64 25, !37, i64 26, !37, i64 27, !40, i64 28, !40, i64 30, !40, i64 32, !40, i64 34, !41, i64 36}
!398 = distinct !{!398, !85, !86}
!399 = !{!298, !37, i64 248}
!400 = !{!35, !40, i64 166}
!401 = !{!35, !36, i64 232}
!402 = !{!48, !40, i64 1582}
!403 = !{!404, !41, i64 248}
!404 = !{!"ShadBuf", !40, i64 0, !40, i64 2, !40, i64 4, !37, i64 8, !37, i64 72, !37, i64 136, !36, i64 200, !36, i64 208, !39, i64 216, !39, i64 220, !39, i64 224, !39, i64 228, !39, i64 232, !37, i64 236, !41, i64 248, !41, i64 252, !49, i64 256, !37, i64 272}
!405 = !{!404, !40, i64 0}
!406 = !{!404, !39, i64 228}
!407 = !{!404, !40, i64 2}
!408 = !{!404, !39, i64 216}
!409 = !{!404, !39, i64 220}
!410 = !{!404, !41, i64 252}
!411 = !{!404, !39, i64 232}
!412 = !{!48, !40, i64 1538}
!413 = !{!48, !40, i64 1642}
!414 = !{!415, !41, i64 0}
!415 = !{!"LampShadowSubSample", !41, i64 0, !37, i64 4}
!416 = distinct !{!416, !85, !86}
!417 = distinct !{!417, !85, !86}
!418 = !{!185, !36, i64 8}
!419 = distinct !{!419, !85, !86}
!420 = !{!178, !36, i64 24}
!421 = !{!155, !41, i64 432}
!422 = !{!287, !41, i64 20}
!423 = !{!424, !36, i64 0}
!424 = !{!"ParticleSimulationData", !36, i64 0, !36, i64 8, !36, i64 16, !36, i64 24, !36, i64 32, !39, i64 40}
!425 = !{!424, !36, i64 8}
!426 = !{!424, !36, i64 16}
!427 = !{!424, !36, i64 24}
!428 = !{!180, !40, i64 168}
!429 = !{!178, !41, i64 328}
!430 = !{!180, !40, i64 160}
!431 = !{!178, !36, i64 64}
!432 = !{!180, !40, i64 210}
!433 = !{!178, !41, i64 308}
!434 = !{!178, !41, i64 320}
!435 = !{!436, !41, i64 68}
!436 = !{!"ParticleStrandData", !36, i64 0, !36, i64 8, !36, i64 16, !36, i64 24, !39, i64 32, !39, i64 36, !39, i64 40, !39, i64 44, !41, i64 48, !41, i64 52, !41, i64 56, !41, i64 60, !41, i64 64, !41, i64 68}
!437 = !{!180, !40, i64 212}
!438 = !{!132, !39, i64 420}
!439 = !{!132, !37, i64 362}
!440 = !{!287, !36, i64 120}
!441 = !{!436, !41, i64 48}
!442 = !{!436, !41, i64 52}
!443 = !{!436, !36, i64 16}
!444 = !{!436, !36, i64 0}
!445 = !{!180, !40, i64 224}
!446 = !{!447, !40, i64 88}
!447 = !{!"ParticleBillboardData", !36, i64 0, !37, i64 8, !37, i64 20, !37, i64 32, !37, i64 40, !39, i64 48, !39, i64 52, !39, i64 56, !37, i64 60, !41, i64 72, !41, i64 76, !41, i64 80, !41, i64 84, !40, i64 88, !40, i64 90, !40, i64 92, !40, i64 94}
!448 = !{!180, !40, i64 228}
!449 = !{!447, !40, i64 92}
!450 = !{!447, !41, i64 72}
!451 = !{!180, !36, i64 760}
!452 = !{!447, !36, i64 0}
!453 = !{!180, !40, i64 230}
!454 = !{!447, !40, i64 94}
!455 = !{!447, !41, i64 80}
!456 = !{!180, !40, i64 226}
!457 = !{!447, !40, i64 90}
!458 = !{!178, !36, i64 56}
!459 = !{!436, !36, i64 8}
!460 = !{!436, !41, i64 64}
!461 = !{!180, !40, i64 208}
!462 = !{!436, !39, i64 40}
!463 = !{!180, !40, i64 206}
!464 = !{!436, !39, i64 36}
!465 = !{!240, !36, i64 48}
!466 = !{!240, !41, i64 64}
!467 = !{!240, !41, i64 160}
!468 = !{!240, !41, i64 164}
!469 = !{!240, !41, i64 76}
!470 = !{!240, !39, i64 80}
!471 = !{!240, !41, i64 68}
!472 = !{!132, !39, i64 452}
!473 = !{!240, !39, i64 84}
!474 = !{!132, !39, i64 456}
!475 = !{!240, !39, i64 88}
!476 = !{!180, !41, i64 152}
!477 = !{!240, !41, i64 72}
!478 = !{!240, !36, i64 16}
!479 = !{!132, !39, i64 180}
!480 = !{!284, !36, i64 1120}
!481 = !{!284, !36, i64 1336}
!482 = !{!284, !36, i64 1352}
!483 = !{!240, !41, i64 36}
!484 = distinct !{!484, !85, !86}
!485 = !{!240, !36, i64 24}
!486 = !{!487, !41, i64 4}
!487 = !{!"StrandBound", !41, i64 0, !41, i64 4, !37, i64 8}
!488 = !{!487, !41, i64 0}
!489 = !{!178, !36, i64 136}
!490 = !{!491, !40, i64 196}
!491 = !{!"ParticleData", !492, i64 0, !492, i64 56, !36, i64 112, !36, i64 120, !36, i64 128, !41, i64 136, !39, i64 140, !39, i64 144, !39, i64 148, !41, i64 152, !41, i64 156, !37, i64 160, !39, i64 176, !39, i64 180, !39, i64 184, !41, i64 188, !41, i64 192, !40, i64 196, !40, i64 198}
!492 = !{!"ParticleKey", !37, i64 0, !37, i64 12, !37, i64 24, !37, i64 40, !39, i64 52}
!493 = !{!491, !39, i64 140}
!494 = !{!491, !39, i64 144}
!495 = !{!491, !39, i64 148}
!496 = !{!180, !40, i64 162}
!497 = !{!491, !41, i64 152}
!498 = !{!491, !41, i64 156}
!499 = !{!491, !39, i64 176}
!500 = !{!491, !39, i64 180}
!501 = !{!502, !41, i64 56}
!502 = !{!"ParticleCacheKey", !37, i64 0, !37, i64 12, !37, i64 24, !37, i64 40, !39, i64 52, !41, i64 56}
!503 = !{!178, !36, i64 32}
!504 = !{!505, !41, i64 0}
!505 = !{!"ChildParticle", !41, i64 0, !41, i64 4, !37, i64 8, !37, i64 24, !37, i64 40, !39, i64 56, !39, i64 60}
!506 = !{!180, !40, i64 188}
!507 = !{!505, !39, i64 56}
!508 = !{!505, !41, i64 4}
!509 = !{!132, !41, i64 400}
!510 = !{!436, !36, i64 24}
!511 = !{!253, !36, i64 8}
!512 = distinct !{!512, !85, !86}
!513 = distinct !{!513, !85, !86}
!514 = distinct !{!514, !85, !86}
!515 = !{!516, !39, i64 12}
!516 = !{!"StrandVert", !37, i64 0, !39, i64 12}
!517 = !{!253, !41, i64 16}
!518 = !{!436, !39, i64 44}
!519 = !{!436, !41, i64 56}
!520 = !{!436, !39, i64 32}
!521 = distinct !{!521, !85, !86}
!522 = !{!180, !41, i64 568}
!523 = !{!180, !39, i64 564}
!524 = !{!180, !39, i64 440}
!525 = !{!492, !39, i64 52}
!526 = !{!178, !36, i64 144}
!527 = !{!447, !39, i64 52}
!528 = !{!180, !39, i64 256}
!529 = !{!180, !39, i64 260}
!530 = !{!180, !39, i64 232}
!531 = !{!180, !39, i64 236}
!532 = !{!447, !39, i64 48}
!533 = !{!447, !39, i64 56}
!534 = !{!447, !41, i64 76}
!535 = distinct !{!535, !85, !86}
!536 = !{!447, !41, i64 84}
!537 = distinct !{!537, !85, !86}
!538 = !{!539, !36, i64 368}
!539 = !{!"Curve", !60, i64 0, !36, i64 120, !36, i64 128, !49, i64 136, !36, i64 152, !36, i64 160, !36, i64 168, !36, i64 176, !36, i64 184, !36, i64 192, !36, i64 200, !37, i64 208, !37, i64 220, !37, i64 232, !40, i64 244, !40, i64 246, !40, i64 248, !40, i64 250, !39, i64 252, !39, i64 256, !41, i64 260, !40, i64 264, !40, i64 266, !41, i64 268, !39, i64 272, !39, i64 276, !39, i64 280, !40, i64 284, !40, i64 286, !40, i64 288, !40, i64 290, !41, i64 292, !41, i64 296, !37, i64 300, !40, i64 304, !37, i64 306, !37, i64 307, !39, i64 308, !39, i64 312, !39, i64 316, !39, i64 320, !39, i64 324, !39, i64 328, !39, i64 332, !39, i64 336, !39, i64 340, !39, i64 344, !41, i64 348, !41, i64 352, !41, i64 356, !41, i64 360, !41, i64 364, !36, i64 368, !36, i64 376, !37, i64 384, !36, i64 448, !36, i64 456, !36, i64 464, !36, i64 472, !36, i64 480, !41, i64 488, !41, i64 492, !36, i64 496, !540, i64 504, !39, i64 512, !39, i64 516, !39, i64 520, !37, i64 524, !37, i64 525, !37, i64 526}
!540 = !{!"CharInfo", !40, i64 0, !40, i64 2, !37, i64 4, !37, i64 5, !40, i64 6}
!541 = !{!539, !36, i64 136}
!542 = distinct !{!542, !85, !86}
!543 = !{!544, !40, i64 28}
!544 = !{!"DispList", !36, i64 0, !36, i64 8, !40, i64 16, !40, i64 18, !41, i64 20, !41, i64 24, !40, i64 28, !40, i64 30, !36, i64 32, !36, i64 40, !36, i64 48, !41, i64 56, !41, i64 60, !36, i64 64}
!545 = !{!544, !40, i64 16}
!546 = !{!544, !41, i64 24}
!547 = !{!544, !36, i64 32}
!548 = !{!549, !36, i64 24}
!549 = !{!"VertRen", !37, i64 0, !37, i64 12, !36, i64 24, !41, i64 32, !39, i64 36, !41, i64 40}
!550 = distinct !{!550, !85, !86}
!551 = !{!544, !41, i64 20}
!552 = !{!544, !36, i64 48}
!553 = !{!554, !36, i64 0}
!554 = !{!"VlakRen", !36, i64 0, !36, i64 8, !36, i64 16, !36, i64 24, !37, i64 32, !36, i64 48, !37, i64 56, !37, i64 57, !37, i64 58, !41, i64 60}
!555 = !{!554, !36, i64 8}
!556 = !{!554, !36, i64 16}
!557 = !{!554, !36, i64 24}
!558 = !{!554, !36, i64 48}
!559 = !{!554, !37, i64 57}
!560 = !{!554, !37, i64 58}
!561 = distinct !{!561, !85, !86}
!562 = distinct !{!562, !85, !86}
!563 = distinct !{!563, !85, !86}
!564 = !{!544, !40, i64 18}
!565 = distinct !{!565, !85, !86}
!566 = distinct !{!566, !85, !86}
!567 = !{!544, !36, i64 64}
!568 = !{!544, !40, i64 30}
!569 = distinct !{!569, !85, !86}
!570 = distinct !{!570, !85, !86}
!571 = distinct !{!571, !85, !86}
!572 = distinct !{!572, !85, !86}
!573 = distinct !{!573, !85, !86}
!574 = distinct !{!574, !85, !86}
!575 = !{!544, !36, i64 0}
!576 = distinct !{!576, !85, !86}
!577 = distinct !{!577, !85, !86}
!578 = !{!155, !36, i64 216}
!579 = distinct !{!579, !85, !86}
!580 = !{!581, !41, i64 1280}
!581 = !{!"Mesh", !60, i64 0, !36, i64 120, !36, i64 128, !36, i64 136, !36, i64 144, !36, i64 152, !36, i64 160, !36, i64 168, !36, i64 176, !36, i64 184, !36, i64 192, !36, i64 200, !36, i64 208, !36, i64 216, !36, i64 224, !36, i64 232, !36, i64 240, !36, i64 248, !36, i64 256, !36, i64 264, !36, i64 272, !285, i64 280, !285, i64 480, !285, i64 680, !285, i64 880, !285, i64 1080, !41, i64 1280, !41, i64 1284, !41, i64 1288, !41, i64 1292, !41, i64 1296, !41, i64 1300, !41, i64 1304, !37, i64 1308, !37, i64 1320, !37, i64 1332, !41, i64 1344, !40, i64 1348, !40, i64 1350, !39, i64 1352, !41, i64 1356, !37, i64 1360, !37, i64 1361, !37, i64 1362, !37, i64 1363, !37, i64 1364, !37, i64 1365, !40, i64 1366, !36, i64 1368}
!582 = !{!581, !36, i64 176}
!583 = distinct !{!583, !85, !86}
!584 = !{!132, !40, i64 590}
!585 = distinct !{!585, !85, !86}
!586 = !{!581, !40, i64 1350}
!587 = !{!48, !40, i64 1758}
!588 = !{!284, !36, i64 1320}
!589 = !{!284, !36, i64 1168}
!590 = !{!284, !36, i64 1104}
!591 = !{!581, !41, i64 1288}
!592 = !{!593, !41, i64 104}
!593 = !{!"HaloRen", !40, i64 0, !40, i64 2, !39, i64 4, !39, i64 8, !39, i64 12, !39, i64 16, !39, i64 20, !39, i64 24, !39, i64 28, !37, i64 32, !37, i64 44, !39, i64 56, !39, i64 60, !39, i64 64, !39, i64 68, !41, i64 72, !41, i64 76, !41, i64 80, !37, i64 84, !37, i64 85, !37, i64 86, !37, i64 87, !37, i64 88, !37, i64 89, !37, i64 90, !40, i64 92, !39, i64 96, !41, i64 100, !41, i64 104, !36, i64 112, !36, i64 120}
!594 = distinct !{!594, !85, !86}
!595 = distinct !{!595, !85, !86}
!596 = !{!132, !39, i64 200}
!597 = !{!132, !39, i64 192}
!598 = !{!132, !39, i64 344}
!599 = distinct !{!599, !85, !86}
!600 = !{!284, !36, i64 1112}
!601 = !{!284, !36, i64 1184}
!602 = !{!603, !40, i64 16}
!603 = !{!"MFace", !41, i64 0, !41, i64 4, !41, i64 8, !41, i64 12, !40, i64 16, !37, i64 18, !37, i64 19}
!604 = !{!603, !41, i64 4}
!605 = !{!603, !41, i64 12}
!606 = !{!603, !37, i64 19}
!607 = !{!581, !36, i64 208}
!608 = !{!581, !36, i64 232}
!609 = !{!603, !41, i64 8}
!610 = !{!603, !41, i64 0}
!611 = !{!284, !41, i64 572}
!612 = !{!284, !36, i64 400}
!613 = !{!614, !41, i64 0}
!614 = !{!"CustomDataLayer", !41, i64 0, !41, i64 4, !41, i64 8, !41, i64 12, !41, i64 16, !41, i64 20, !41, i64 24, !41, i64 28, !37, i64 32, !36, i64 96}
!615 = !{!614, !36, i64 96}
!616 = !{i64 0, i64 32, !78, i64 32, i64 8, !77, i64 40, i64 1, !78, i64 41, i64 1, !78, i64 42, i64 2, !79, i64 44, i64 2, !79, i64 46, i64 2, !79}
!617 = distinct !{!617, !85, !86}
!618 = distinct !{!618, !85, !86}
!619 = distinct !{!619, !85, !86}
!620 = distinct !{!620, !85, !86}
!621 = distinct !{!621, !85, !86}
!622 = distinct !{!622, !85, !86}
!623 = distinct !{!623, !85, !86}
!624 = distinct !{!624, !85, !86}
!625 = !{!284, !36, i64 1176}
!626 = distinct !{!626, !85, !86}
!627 = !{!628, !41, i64 0}
!628 = !{!"edgesort", !41, i64 0, !41, i64 4, !41, i64 8, !41, i64 12, !41, i64 16}
!629 = !{!628, !41, i64 4}
!630 = !{!628, !41, i64 12}
!631 = !{!628, !41, i64 16}
!632 = !{!628, !41, i64 8}
!633 = distinct !{!633, !85, !86}
!634 = !{!635, !40, i64 10}
!635 = !{!"MEdge", !41, i64 0, !41, i64 4, !37, i64 8, !37, i64 9, !40, i64 10}
!636 = !{!635, !41, i64 0}
!637 = !{!635, !41, i64 4}
!638 = distinct !{!638, !85, !86}
!639 = distinct !{!639, !85, !86}
!640 = distinct !{!640, !85, !86}
!641 = distinct !{!641, !85, !86}
!642 = !{!549, !41, i64 40}
!643 = distinct !{!643, !85, !86}
!644 = distinct !{!644, !85, !86}
!645 = distinct !{!645, !85, !86}
!646 = distinct !{!646, !85, !86}
!647 = distinct !{!647, !85, !86}
!648 = distinct !{!648, !85, !86}
!649 = !{!544, !36, i64 40}
!650 = distinct !{!650, !85, !86}
!651 = !{!554, !41, i64 60}
!652 = !{i64 0, i64 8, !77, i64 8, i64 8, !77, i64 16, i64 8, !77, i64 24, i64 8, !77, i64 32, i64 12, !78, i64 48, i64 8, !77, i64 56, i64 1, !78, i64 57, i64 1, !78, i64 58, i64 1, !78, i64 60, i64 4, !80}
!653 = distinct !{!653, !85, !86}
!654 = !{!155, !39, i64 1268}
!655 = distinct !{!655, !85, !86}
!656 = !{!48, !40, i64 1762}
!657 = !{!48, !41, i64 3624}
!658 = distinct !{!658, !85, !86}
!659 = !{!132, !39, i64 364}
!660 = !{!132, !39, i64 368}
!661 = distinct !{!661, !85, !86}
!662 = distinct !{!662, !85, !86}
!663 = !{!132, !39, i64 436}
!664 = !{!132, !39, i64 440}
!665 = !{!240, !39, i64 92}
!666 = distinct !{!666, !85, !86}
!667 = distinct !{!667, !85, !86}
!668 = !{!132, !40, i64 130}
!669 = !{!132, !36, i64 768}
!670 = !{!132, !37, i64 543}
!671 = !{!132, !41, i64 880}
!672 = distinct !{!672, !85, !86}
!673 = !{!284, !36, i64 1304}
!674 = distinct !{!674, !85, !86}
!675 = distinct !{!675, !85, !86}
!676 = !{!436, !41, i64 60}
!677 = !{!132, !39, i64 444}
!678 = !{!549, !39, i64 36}
!679 = distinct !{!679, !85, !86}
!680 = distinct !{!680, !85, !86}
!681 = distinct !{!681, !85, !86}
!682 = distinct !{!682, !85, !86}
!683 = distinct !{!683, !85, !86}
!684 = !{!185, !41, i64 168}
!685 = distinct !{!685, !85, !86}
!686 = distinct !{!686, !85, !86}
!687 = distinct !{!687, !85, !86}
!688 = !{!689, !36, i64 0}
!689 = !{!"", !36, i64 0}
!690 = !{!691, !36, i64 8}
!691 = !{!"SMikkTSpaceContext", !36, i64 0, !36, i64 8}
!692 = !{!691, !36, i64 0}
!693 = !{!694, !36, i64 0}
!694 = !{!"", !36, i64 0, !36, i64 8, !36, i64 16, !36, i64 24, !36, i64 32, !36, i64 40, !36, i64 48}
!695 = !{!694, !36, i64 8}
!696 = !{!694, !36, i64 16}
!697 = !{!694, !36, i64 32}
!698 = !{!694, !36, i64 24}
!699 = !{!694, !36, i64 40}
!700 = distinct !{!700, !85, !86}
!701 = distinct !{!701, !85, !86}
!702 = distinct !{!702, !85, !86}
!703 = distinct !{!703, !85, !86}
!704 = distinct !{!704, !85, !86}
!705 = distinct !{!705, !85, !86}
!706 = distinct !{!706, !85, !86}
!707 = distinct !{!707, !85, !86}
!708 = distinct !{!708, !85, !86}
!709 = distinct !{!709, !85, !86}
!710 = distinct !{!710, !85, !86}
!711 = distinct !{!711, !85, !86}
!712 = distinct !{!712, !85, !86}
!713 = !{!549, !41, i64 32}
!714 = distinct !{!714, !85, !86}
!715 = !{!716, !36, i64 32}
!716 = !{!"ShadeInput", !36, i64 0, !36, i64 8, !36, i64 16, !36, i64 24, !36, i64 32, !41, i64 40, !37, i64 44, !40, i64 56, !36, i64 64, !36, i64 72, !36, i64 80, !40, i64 88, !40, i64 90, !40, i64 92, !40, i64 94, !40, i64 96, !37, i64 100, !37, i64 112, !37, i64 124, !37, i64 136, !37, i64 148, !41, i64 160, !41, i64 164, !39, i64 168, !39, i64 172, !39, i64 176, !39, i64 180, !39, i64 184, !39, i64 188, !37, i64 192, !37, i64 204, !37, i64 216, !39, i64 228, !39, i64 232, !39, i64 236, !39, i64 240, !39, i64 244, !39, i64 248, !39, i64 252, !39, i64 256, !39, i64 260, !39, i64 264, !39, i64 268, !39, i64 272, !39, i64 276, !39, i64 280, !39, i64 284, !39, i64 288, !39, i64 292, !39, i64 296, !39, i64 300, !39, i64 304, !39, i64 308, !39, i64 312, !39, i64 316, !41, i64 320, !37, i64 324, !37, i64 336, !37, i64 348, !37, i64 360, !37, i64 372, !37, i64 384, !37, i64 400, !37, i64 416, !39, i64 428, !37, i64 432, !37, i64 444, !37, i64 456, !39, i64 472, !37, i64 476, !37, i64 492, !37, i64 504, !37, i64 520, !37, i64 904, !41, i64 1096, !41, i64 1100, !41, i64 1104, !41, i64 1108, !37, i64 1112, !37, i64 1124, !37, i64 1136, !37, i64 1148, !37, i64 1160, !37, i64 1172, !37, i64 1184, !37, i64 1196, !37, i64 1208, !37, i64 1220, !37, i64 1232, !37, i64 1244, !39, i64 1256, !39, i64 1260, !37, i64 1264, !37, i64 1276, !37, i64 1288, !37, i64 1300, !37, i64 1312, !37, i64 1324, !39, i64 1336, !39, i64 1340, !37, i64 1344, !37, i64 1356, !37, i64 1368, !41, i64 1380, !41, i64 1384, !41, i64 1388, !37, i64 1392, !41, i64 1404, !41, i64 1408, !41, i64 1412, !37, i64 1416, !39, i64 1428, !37, i64 1432, !37, i64 1433, !40, i64 1434, !40, i64 1436, !40, i64 1438, !41, i64 1440, !41, i64 1444, !41, i64 1448, !41, i64 1452, !36, i64 1456, !36, i64 1464}
!717 = !{!716, !36, i64 8}
!718 = !{!716, !36, i64 0}
!719 = !{!716, !40, i64 1434}
!720 = distinct !{!720, !85, !86}
!721 = !{!716, !41, i64 1096}
!722 = !{!716, !41, i64 1104}
!723 = !{!724, !36, i64 40}
!724 = !{!"ShadeInputUV", !37, i64 0, !37, i64 12, !37, i64 24, !36, i64 40}
!725 = distinct !{!725, !85, !86}
!726 = !{!716, !39, i64 472}
!727 = !{!728, !36, i64 16}
!728 = !{!"ASvert", !41, i64 0, !49, i64 8}
!729 = distinct !{!729, !85, !86}
!730 = !{!728, !41, i64 0}
!731 = distinct !{!731, !85, !86}
!732 = distinct !{!732, !85, !86}
!733 = distinct !{!733, !85, !86}
!734 = !{!735, !36, i64 240}
!735 = !{!"bNode", !36, i64 0, !36, i64 8, !36, i64 16, !36, i64 24, !36, i64 32, !37, i64 40, !37, i64 104, !41, i64 168, !40, i64 172, !40, i64 174, !40, i64 176, !40, i64 178, !40, i64 180, !40, i64 182, !40, i64 184, !40, i64 186, !37, i64 188, !49, i64 200, !49, i64 216, !36, i64 232, !36, i64 240, !36, i64 248, !36, i64 256, !49, i64 264, !39, i64 280, !39, i64 284, !39, i64 288, !39, i64 292, !39, i64 296, !39, i64 300, !39, i64 304, !41, i64 308, !37, i64 312, !40, i64 376, !40, i64 378, !39, i64 380, !39, i64 384, !40, i64 388, !40, i64 390, !36, i64 392, !51, i64 400, !51, i64 416, !51, i64 432, !40, i64 448, !40, i64 450, !41, i64 452, !36, i64 456}
!736 = !{!735, !40, i64 172}
!737 = distinct !{!737, !85, !86}
!738 = distinct !{!738, !85, !86}
!739 = distinct !{!739, !85, !86}
!740 = !{!593, !41, i64 72}
