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
%struct.Base = type { ptr, ptr, i32, i32, i32, i16, i16, ptr }
%struct.DupliApplyData = type { i32, ptr }
%struct.DupliExtraData = type { [4 x [4 x float]], i32 }
%struct.DupliObject = type { ptr, ptr, ptr, [4 x [4 x float]], [3 x float], [2 x float], i16, i8, i8, [8 x i32], ptr }
%struct.ObjectInstanceRen = type { ptr, ptr, ptr, ptr, ptr, i32, i32, i32, [4 x [4 x float]], [4 x [4 x float]], [3 x [3 x float]], i16, [3 x float], [2 x float], ptr, ptr, ptr, i32, ptr, i32 }
%struct.SceneRenderLayer = type { ptr, ptr, [64 x i8], ptr, ptr, i32, i32, i32, i32, i32, i32, i32, float, %struct.FreestyleConfig }
%struct.FreestyleConfig = type { %struct.ListBase, i32, i32, i32, float, float, float, %struct.ListBase }
%struct.ObjectRen = type { ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, [2 x [3 x float]], i32, i32, i32, i32, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, [4 x [4 x float]], ptr, ptr, ptr, ptr }
%struct.HaloRen = type { i16, i16, float, float, float, float, float, float, float, [3 x float], [3 x float], float, float, float, float, i32, i32, i32, i8, i8, i8, i8, i8, i8, i8, i16, float, i32, i32, ptr, ptr }
%struct.VolumeOb = type { ptr, ptr, ptr, ptr }
%struct.MatInside = type { ptr, ptr, ptr, ptr }
%struct.FluidsimModifierData = type { %struct.ModifierData, ptr, ptr }
%struct.ModifierData = type { ptr, ptr, i32, i32, i32, i32, [64 x i8], ptr, ptr }
%struct.FluidsimSettings = type { ptr, i32, i32, i16, i16, i16, i16, float, i16, i16, float, i16, i16, [3 x float], float, float, i32, i32, i32, i32, float, i32, float, float, float, ptr, ptr, [1024 x i8], [3 x float], [3 x float], ptr, i16, i8, i8, float, i32, float, float, i32, i32, float, float, float, ptr, i32, float, float, float, float, float, float, float, i32, float }
%struct.StrandSurface = type { ptr, ptr, %struct.ObjectRen, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32 }
%struct.VertTableNode = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.VertRen = type { [3 x float], [3 x float], ptr, i32, float, i32 }
%struct.FluidVertexVelocity = type { [3 x float] }
%struct.StrandBuffer = type { ptr, ptr, ptr, ptr, i32, i32, ptr, ptr, ptr, i32, i32, i32, i32, float, float, float, float, [4 x [4 x float]], i32, i32 }
%struct.StrandTableNode = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32 }
%struct.StrandRen = type { ptr, ptr, i32, i32, i32, i32, [3 x float] }
%struct.ParticleSystem = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.ListBase, %struct.ListBase, ptr, ptr, ptr, ptr, ptr, ptr, %struct.ListBase, [64 x i8], [4 x [4 x float]], float, float, float, i32, i32, i32, i32, i32, i32, i32, i32, i16, i16, i16, i16, [3 x [64 x i8]], [12 x i16], i16, i16, ptr, ptr, %struct.ListBase, ptr, ptr, i32, i32, ptr, ptr, ptr, float, float }
%struct.ParticleSettings = type { %struct.ID, ptr, ptr, ptr, ptr, i32, i32, i16, i16, i16, i16, i16, i16, i16, i16, i32, i32, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, float, float, [2 x float], [2 x float], float, float, float, i16, i16, float, float, float, float, float, float, float, float, float, float, float, float, [1 x float], i32, i32, i32, i32, i16, [3 x i16], float, float, float, float, float, float, float, [3 x float], float, float, float, float, float, float, float, [3 x float], float, float, float, float, i32, i32, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, [2 x float], float, float, i32, i32, [18 x ptr], ptr, %struct.ListBase, ptr, ptr, ptr, ptr, ptr, ptr, i16, [3 x i16] }
%struct.DerivedMesh = type { %struct.CustomData, %struct.CustomData, %struct.CustomData, %struct.CustomData, %struct.CustomData, i32, i32, i32, i32, i32, i32, i32, ptr, ptr, i32, float, i32, i32, ptr, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.CustomData = type { ptr, [41 x i32], i32, i32, i32, ptr, ptr }
%struct.ParticleSystemModifierData = type { %struct.ModifierData, ptr, ptr, i32, i32, i32, i16, i16 }
%struct.Group = type { %struct.ID, %struct.ListBase, i32, [3 x float] }
%struct.GroupObject = type { ptr, ptr, ptr, ptr, i16, [6 x i8] }
%struct.Lamp = type { %struct.ID, ptr, i16, i16, i32, i16, i16, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, ptr, i16, i16, float, float, float, float, float, float, float, i16, i16, i16, i16, i8, i8, i16, i16, i16, i16, i16, float, float, float, float, i16, i16, i16, i16, i16, i16, float, float, float, float, float, float, float, float, float, float, float, float, float, i16, [2 x i8], ptr, [18 x ptr], i16, i16, [4 x i8], ptr, ptr }
%struct.Tex = type { %struct.ID, ptr, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, float, float, float, float, i32, i32, i16, i16, i16, i16, i32, i32, i32, i32, float, float, float, %struct.ImageUser, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8, [7 x i8] }
%struct.ImageUser = type { ptr, i32, i32, i32, i32, i8, i8, i8, i8, i16, i16, i16, i16, i32 }
%struct.LampShadowSubSample = type { i32, [4 x float] }
%struct.LampShadowSample = type { [16 x %struct.LampShadowSubSample] }
%struct.ShadBuf = type { i16, i16, i16, [4 x [4 x float]], [4 x [4 x float]], [4 x [4 x float]], ptr, ptr, float, float, float, float, float, [3 x i32], i32, i32, %struct.ListBase, [1 x ptr] }
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
%struct.MEdge = type { i32, i32, i8, i8, i16 }
%struct.SRenderMeshToTangent = type { ptr }
%struct.SMikkTSpaceContext = type { ptr, ptr }
%struct.SMikkTSpaceInterface = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.edgesort = type { i32, i32, i32, i32, i32 }
%struct.ASvert = type { i32, %struct.ListBase }
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
@static_particle_strand.anor = internal global [3 x float] zeroinitializer, align 4
@static_particle_strand.avec = internal global [3 x float] zeroinitializer, align 4
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

; Function Attrs: mustprogress nofree noinline nounwind optsize willreturn memory(write, argmem: readwrite) uwtable
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
  %11 = tail call float @sqrtf(float noundef %10) #22
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
  %24 = getelementptr inbounds %struct.LampRen, ptr %0, i64 0, i32 65
  %25 = getelementptr inbounds %struct.LampRen, ptr %0, i64 0, i32 5, i64 1
  %26 = getelementptr inbounds %struct.LampRen, ptr %0, i64 0, i32 64, i64 0, i64 1
  %27 = getelementptr inbounds %struct.LampRen, ptr %0, i64 0, i32 64, i64 1, i64 1
  %28 = load <2 x float>, ptr %25, align 4, !tbaa !44
  %29 = load <2 x float>, ptr %26, align 4, !tbaa !44
  %30 = load <2 x float>, ptr %27, align 4, !tbaa !44
  %31 = insertelement <4 x float> poison, float %23, i64 0
  %32 = insertelement <4 x float> %31, float %14, i64 1
  %33 = shufflevector <4 x float> %32, <4 x float> poison, <4 x i32> <i32 0, i32 0, i32 0, i32 1>
  %34 = insertelement <4 x float> poison, float %22, i64 0
  %35 = shufflevector <2 x float> %30, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %36 = shufflevector <4 x float> %34, <4 x float> %35, <4 x i32> <i32 0, i32 4, i32 5, i32 poison>
  %37 = shufflevector <4 x float> %36, <4 x float> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 0>
  %38 = insertelement <4 x float> poison, float %20, i64 0
  %39 = getelementptr inbounds %struct.LampRen, ptr %0, i64 0, i32 65, i64 1, i64 1
  %40 = insertelement <4 x float> poison, float %19, i64 0
  %41 = insertelement <4 x float> %40, float %13, i64 1
  %42 = shufflevector <4 x float> %41, <4 x float> poison, <4 x i32> <i32 0, i32 0, i32 1, i32 1>
  %43 = shufflevector <2 x float> %29, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %44 = insertelement <4 x float> %43, float %18, i64 2
  %45 = shufflevector <4 x float> %44, <4 x float> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 0>
  %46 = shufflevector <2 x float> %28, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %47 = insertelement <4 x float> %46, float %16, i64 2
  %48 = shufflevector <4 x float> %47, <4 x float> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 0>
  %49 = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %42, <4 x float> %45, <4 x float> %48)
  %50 = shufflevector <4 x float> %38, <4 x float> %49, <4 x i32> <i32 0, i32 4, i32 5, i32 poison>
  %51 = shufflevector <4 x float> %50, <4 x float> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 0>
  %52 = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %33, <4 x float> %37, <4 x float> %51)
  store <4 x float> %52, ptr %24, align 4, !tbaa !44
  %53 = insertelement <4 x float> poison, float %14, i64 0
  %54 = shufflevector <4 x float> %53, <4 x float> poison, <4 x i32> zeroinitializer
  %55 = insertelement <4 x float> %35, float %22, i64 2
  %56 = shufflevector <4 x float> %55, <4 x float> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 0>
  %57 = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %54, <4 x float> %56, <4 x float> %49)
  store <4 x float> %57, ptr %39, align 4, !tbaa !44
  %58 = extractelement <2 x float> %28, i64 1
  %59 = extractelement <2 x float> %29, i64 1
  %60 = tail call float @llvm.fmuladd.f32(float %13, float %59, float %58)
  %61 = getelementptr inbounds %struct.LampRen, ptr %0, i64 0, i32 65, i64 2, i64 2
  %62 = insertelement <4 x float> %53, float %23, i64 1
  %63 = shufflevector <4 x float> %62, <4 x float> poison, <4 x i32> <i32 0, i32 1, i32 1, i32 1>
  %64 = shufflevector <2 x float> %30, <2 x float> poison, <4 x i32> <i32 1, i32 poison, i32 0, i32 poison>
  %65 = insertelement <4 x float> %64, float %22, i64 1
  %66 = shufflevector <4 x float> %65, <4 x float> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 0>
  %67 = shufflevector <4 x float> %49, <4 x float> poison, <4 x i32> <i32 poison, i32 2, i32 3, i32 poison>
  %68 = insertelement <4 x float> %67, float %60, i64 0
  %69 = shufflevector <4 x float> %68, <4 x float> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 0>
  %70 = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %63, <4 x float> %66, <4 x float> %69)
  store <4 x float> %70, ptr %61, align 4, !tbaa !44
  %71 = getelementptr inbounds %struct.LampRen, ptr %0, i64 0, i32 4
  %72 = load float, ptr %71, align 8, !tbaa !45
  %73 = fmul float %72, %72
  %74 = fmul float %13, 4.000000e+00
  %75 = fmul float %14, %74
  %76 = fdiv float %73, %75
  %77 = getelementptr inbounds %struct.LampRen, ptr %0, i64 0, i32 66
  store float %76, ptr %77, align 4, !tbaa !46
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: mustprogress nofree nounwind optsize willreturn memory(write)
declare float @sqrtf(float noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fmuladd.f32(float, float, float) #3

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @init_render_world(ptr noundef %0) local_unnamed_addr #4 {
  %2 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 46
  %3 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 46, i32 67
  %4 = load <2 x ptr>, ptr %3, align 8, !tbaa !47
  %5 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 44
  %6 = load ptr, ptr %5, align 8, !tbaa !48
  %7 = icmp eq ptr %6, null
  br i1 %7, label %64, label %8

8:                                                ; preds = %1
  %9 = getelementptr inbounds %struct.Scene, ptr %6, i64 0, i32 3
  %10 = load ptr, ptr %9, align 8, !tbaa !64
  %11 = icmp eq ptr %10, null
  br i1 %11, label %64, label %12

12:                                               ; preds = %8
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(528) %2, ptr noundef nonnull align 8 dereferenceable(528) %10, i64 528, i1 false), !tbaa.struct !75
  %13 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 30
  %14 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 32, i64 2
  tail call fastcc void @copy_v3_v3(ptr noundef nonnull %13, ptr noundef nonnull %14) #23
  tail call fastcc void @normalize_v3(ptr noundef nonnull %13) #23
  %15 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 31
  %16 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 33
  tail call void @copy_m3_m4(ptr noundef nonnull %15, ptr noundef nonnull %16) #22
  %17 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 46, i32 22
  br label %18

18:                                               ; preds = %12, %30
  %19 = phi i64 [ 0, %12 ], [ %31, %30 ]
  %20 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 46, i32 70, i64 %19
  %21 = load ptr, ptr %20, align 8, !tbaa !47
  %22 = icmp eq ptr %21, null
  br i1 %22, label %30, label %23

23:                                               ; preds = %18
  %24 = getelementptr inbounds %struct.MTex, ptr %21, i64 0, i32 5
  %25 = load ptr, ptr %24, align 8, !tbaa !79
  %26 = icmp eq ptr %25, null
  br i1 %26, label %30, label %27

27:                                               ; preds = %23
  %28 = load i16, ptr %17, align 8, !tbaa !81
  %29 = or i16 %28, 8
  store i16 %29, ptr %17, align 8, !tbaa !81
  br label %30

30:                                               ; preds = %18, %23, %27
  %31 = add nuw nsw i64 %19, 1
  %32 = icmp eq i64 %31, 18
  br i1 %32, label %33, label %18, !llvm.loop !82

33:                                               ; preds = %30
  %34 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 5
  %35 = load i16, ptr %34, align 2, !tbaa !84
  %36 = icmp eq i16 %35, 0
  br i1 %36, label %51, label %37

37:                                               ; preds = %33
  %38 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 46, i32 51
  %39 = sext i16 %35 to i32
  %40 = load i16, ptr %38, align 2, !tbaa !85
  %41 = sext i16 %40 to i32
  %42 = mul nsw i32 %41, %41
  %43 = icmp slt i32 %42, %39
  br i1 %43, label %44, label %51

44:                                               ; preds = %37, %44
  %45 = phi i16 [ %46, %44 ], [ %40, %37 ]
  %46 = add i16 %45, 1
  %47 = sext i16 %46 to i32
  %48 = mul nsw i32 %47, %47
  %49 = icmp slt i32 %48, %39
  br i1 %49, label %44, label %50, !llvm.loop !86

50:                                               ; preds = %44
  store i16 %46, ptr %38, align 2, !tbaa !85
  br label %51

51:                                               ; preds = %37, %50, %33
  %52 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 45, i32 47
  %53 = load i32, ptr %52, align 8, !tbaa !87
  %54 = and i32 %53, 65536
  %55 = icmp eq i32 %54, 0
  br i1 %55, label %56, label %74

56:                                               ; preds = %51
  %57 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 46, i32 64
  %58 = load i16, ptr %57, align 2, !tbaa !88
  %59 = icmp eq i16 %58, 0
  br i1 %59, label %60, label %74

60:                                               ; preds = %56
  %61 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 46, i32 23
  %62 = load i16, ptr %61, align 2, !tbaa !89
  %63 = and i16 %62, -209
  store i16 %63, ptr %61, align 2, !tbaa !89
  br label %74

64:                                               ; preds = %8, %1
  %65 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 46, i32 17
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(528) %2, i8 0, i64 528, i1 false)
  store float 1.000000e+00, ptr %65, align 4, !tbaa !90
  %66 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 36
  %67 = load float, ptr %66, align 8, !tbaa !91
  %68 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 46, i32 31
  store float %67, ptr %68, align 4, !tbaa !92
  %69 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 37
  %70 = load float, ptr %69, align 4, !tbaa !93
  %71 = fsub float %70, %67
  %72 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 46, i32 32
  store float %71, ptr %72, align 8, !tbaa !94
  %73 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 46, i32 30
  store float 1.000000e+00, ptr %73, align 8, !tbaa !95
  br label %74

74:                                               ; preds = %51, %56, %60, %64
  %75 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 46, i32 16
  %76 = load float, ptr %75, align 8, !tbaa !96
  %77 = tail call float @llvm.fmuladd.f32(float %76, float 2.000000e+00, float 5.000000e-01)
  %78 = tail call float @powf(float noundef %77, float noundef -1.000000e+01) #22
  %79 = fadd float %78, 1.000000e+00
  %80 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 46, i32 18
  store float %79, ptr %80, align 8, !tbaa !97
  %81 = fadd float %79, -1.000000e+00
  %82 = fdiv float %81, %79
  %83 = tail call float @logf(float noundef %82) #22
  %84 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 46, i32 17
  %85 = load float, ptr %84, align 4, !tbaa !90
  %86 = fdiv float %83, %85
  %87 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 46, i32 19
  store float %86, ptr %87, align 4, !tbaa !98
  store <2 x ptr> %4, ptr %3, align 8, !tbaa !47
  ret void
}

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #5

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @copy_v3_v3(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1) unnamed_addr #6 !PGOFuncName !99 {
  %3 = load float, ptr %1, align 4, !tbaa !44
  store float %3, ptr %0, align 4, !tbaa !44
  %4 = getelementptr inbounds float, ptr %1, i64 1
  %5 = load float, ptr %4, align 4, !tbaa !44
  %6 = getelementptr inbounds float, ptr %0, i64 1
  store float %5, ptr %6, align 4, !tbaa !44
  %7 = getelementptr inbounds float, ptr %1, i64 2
  %8 = load float, ptr %7, align 4, !tbaa !44
  %9 = getelementptr inbounds float, ptr %0, i64 2
  store float %8, ptr %9, align 4, !tbaa !44
  ret void
}

; Function Attrs: mustprogress nofree noinline nounwind optsize willreturn memory(write, argmem: readwrite) uwtable
define internal fastcc void @normalize_v3(ptr nocapture noundef %0) unnamed_addr #0 !PGOFuncName !100 {
  tail call fastcc void @normalize_v3_v3(ptr noundef %0, ptr noundef %0) #23
  ret void
}

; Function Attrs: optsize
declare void @copy_m3_m4(ptr noundef, ptr noundef) local_unnamed_addr #7

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #8

; Function Attrs: mustprogress nofree nounwind optsize willreturn memory(write)
declare float @powf(float noundef, float noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree nounwind optsize willreturn memory(write)
declare float @logf(float noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @RE_Database_Free(ptr noundef %0) local_unnamed_addr #4 {
  %2 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 98, i32 11
  %3 = load i16, ptr %2, align 4, !tbaa !101
  %4 = icmp eq i16 %3, 0
  br i1 %4, label %115, label %5

5:                                                ; preds = %1
  %6 = load i32, ptr getelementptr inbounds (%struct.Global, ptr @G, i64 0, i32 16), align 4, !tbaa !102
  %7 = and i32 %6, 1
  %8 = icmp ne i32 %7, 0
  %9 = load i8, ptr getelementptr inbounds (%struct.Global, ptr @G, i64 0, i32 13), align 2
  %10 = icmp ne i8 %9, 0
  %11 = select i1 %8, i1 %10, i1 false
  br i1 %11, label %12, label %19

12:                                               ; preds = %5
  %13 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 45, i32 46
  %14 = load i32, ptr %13, align 4, !tbaa !104
  %15 = and i32 %14, 524296
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %17, label %19

17:                                               ; preds = %12
  tail call void @BKE_image_print_memlist() #22
  %18 = load ptr, ptr @MEM_printmemlist_stats, align 8, !tbaa !47
  tail call void %18() #22
  br label %19

19:                                               ; preds = %12, %17, %5
  %20 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 67
  %21 = load ptr, ptr %20, align 8, !tbaa !47
  %22 = icmp eq ptr %21, null
  br i1 %22, label %47, label %23

23:                                               ; preds = %19, %42
  %24 = phi ptr [ %45, %42 ], [ %21, %19 ]
  tail call void @freeshadowbuf(ptr noundef nonnull %24) #22
  %25 = getelementptr inbounds %struct.LampRen, ptr %24, i64 0, i32 58
  %26 = load ptr, ptr %25, align 8, !tbaa !105
  %27 = icmp eq ptr %26, null
  br i1 %27, label %30, label %28

28:                                               ; preds = %23
  %29 = load ptr, ptr @MEM_freeN, align 8, !tbaa !47
  tail call void %29(ptr noundef nonnull %26) #22
  br label %30

30:                                               ; preds = %28, %23
  %31 = getelementptr inbounds %struct.LampRen, ptr %24, i64 0, i32 67
  %32 = load ptr, ptr %31, align 8, !tbaa !106
  %33 = icmp eq ptr %32, null
  br i1 %33, label %36, label %34

34:                                               ; preds = %30
  %35 = load ptr, ptr @MEM_freeN, align 8, !tbaa !47
  tail call void %35(ptr noundef nonnull %32) #22
  br label %36

36:                                               ; preds = %34, %30
  %37 = getelementptr inbounds %struct.LampRen, ptr %24, i64 0, i32 56
  %38 = load ptr, ptr %37, align 8, !tbaa !107
  %39 = icmp eq ptr %38, null
  br i1 %39, label %42, label %40

40:                                               ; preds = %36
  %41 = load ptr, ptr @MEM_freeN, align 8, !tbaa !47
  tail call void %41(ptr noundef nonnull %38) #22
  br label %42

42:                                               ; preds = %40, %36
  %43 = getelementptr inbounds %struct.LampRen, ptr %24, i64 0, i32 30
  %44 = load ptr, ptr %43, align 8, !tbaa !108
  tail call void @curvemapping_free(ptr noundef %44) #22
  %45 = load ptr, ptr %24, align 8, !tbaa !47
  %46 = icmp eq ptr %45, null
  br i1 %46, label %47, label %23, !llvm.loop !109

47:                                               ; preds = %42, %19
  tail call void @free_volume_precache(ptr noundef %0) #22
  tail call void @BLI_freelistN(ptr noundef nonnull %20) #22
  %48 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 66
  tail call void @BLI_freelistN(ptr noundef nonnull %48) #22
  tail call void @free_renderdata_tables(ptr noundef %0) #22
  tail call fastcc void @free_mesh_orco_hash(ptr noundef %0) #23
  %49 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 43
  %50 = load ptr, ptr %49, align 8, !tbaa !110
  %51 = icmp eq ptr %50, null
  br i1 %51, label %53, label %52

52:                                               ; preds = %47
  tail call void @end_render_materials(ptr noundef nonnull %50) #22
  tail call void @end_render_textures(ptr noundef nonnull %0) #22
  tail call void @free_pointdensities(ptr noundef nonnull %0) #22
  br label %53

53:                                               ; preds = %52, %47
  tail call fastcc void @free_camera_inside_volumes(ptr noundef nonnull %0) #23
  %54 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 46, i32 67
  %55 = load ptr, ptr %54, align 8, !tbaa !111
  %56 = icmp eq ptr %55, null
  br i1 %56, label %68, label %57

57:                                               ; preds = %53
  %58 = load ptr, ptr @MEM_freeN, align 8, !tbaa !47
  tail call void %58(ptr noundef nonnull %55) #22
  store ptr null, ptr %54, align 8, !tbaa !111
  %59 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 44
  %60 = load ptr, ptr %59, align 8, !tbaa !48
  %61 = icmp eq ptr %60, null
  br i1 %61, label %68, label %62

62:                                               ; preds = %57
  %63 = getelementptr inbounds %struct.Scene, ptr %60, i64 0, i32 3
  %64 = load ptr, ptr %63, align 8, !tbaa !64
  %65 = icmp eq ptr %64, null
  br i1 %65, label %68, label %66

66:                                               ; preds = %62
  %67 = getelementptr inbounds %struct.World, ptr %64, i64 0, i32 67
  store ptr null, ptr %67, align 8, !tbaa !112
  br label %68

68:                                               ; preds = %57, %62, %66, %53
  %69 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 46, i32 68
  %70 = load ptr, ptr %69, align 8, !tbaa !113
  %71 = icmp eq ptr %70, null
  br i1 %71, label %83, label %72

72:                                               ; preds = %68
  %73 = load ptr, ptr @MEM_freeN, align 8, !tbaa !47
  tail call void %73(ptr noundef nonnull %70) #22
  store ptr null, ptr %69, align 8, !tbaa !113
  %74 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 44
  %75 = load ptr, ptr %74, align 8, !tbaa !48
  %76 = icmp eq ptr %75, null
  br i1 %76, label %83, label %77

77:                                               ; preds = %72
  %78 = getelementptr inbounds %struct.Scene, ptr %75, i64 0, i32 3
  %79 = load ptr, ptr %78, align 8, !tbaa !64
  %80 = icmp eq ptr %79, null
  br i1 %80, label %83, label %81

81:                                               ; preds = %77
  %82 = getelementptr inbounds %struct.World, ptr %79, i64 0, i32 68
  store ptr null, ptr %82, align 8, !tbaa !114
  br label %83

83:                                               ; preds = %72, %77, %81, %68
  %84 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 45, i32 47
  %85 = load i32, ptr %84, align 8, !tbaa !87
  %86 = and i32 %85, 65536
  %87 = icmp eq i32 %86, 0
  br i1 %87, label %93, label %88

88:                                               ; preds = %83
  tail call void @free_render_qmcsampler(ptr noundef nonnull %0) #22
  %89 = load i32, ptr %84, align 8, !tbaa !87
  %90 = and i32 %89, 65536
  %91 = icmp eq i32 %90, 0
  br i1 %91, label %93, label %92

92:                                               ; preds = %88
  tail call void @freeraytree(ptr noundef nonnull %0) #22
  br label %93

93:                                               ; preds = %83, %92, %88
  tail call void @free_sss(ptr noundef nonnull %0) #22
  tail call void @free_occ(ptr noundef nonnull %0) #22
  tail call void @free_strand_surface(ptr noundef nonnull %0) #22
  %94 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 60
  store i16 0, ptr %2, align 4, !tbaa !101
  %95 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 72
  store ptr null, ptr %95, align 8, !tbaa !115
  %96 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 44
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(20) %94, i8 0, i64 20, i1 false)
  %97 = load ptr, ptr %96, align 8, !tbaa !48
  %98 = icmp eq ptr %97, null
  br i1 %98, label %110, label %99

99:                                               ; preds = %93
  %100 = getelementptr inbounds %struct.Scene, ptr %97, i64 0, i32 22, i32 46
  %101 = load i32, ptr %100, align 4, !tbaa !116
  %102 = and i32 %101, 256
  %103 = icmp eq i32 %102, 0
  br i1 %103, label %110, label %104

104:                                              ; preds = %99
  %105 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 45, i32 46
  %106 = load i32, ptr %105, align 4, !tbaa !104
  %107 = and i32 %106, 524296
  %108 = icmp eq i32 %107, 0
  br i1 %108, label %109, label %110

109:                                              ; preds = %104
  tail call void @BKE_image_free_all_textures() #22
  br label %110

110:                                              ; preds = %99, %109, %104, %93
  %111 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 81
  %112 = load ptr, ptr %111, align 8, !tbaa !117
  %113 = icmp eq ptr %112, null
  br i1 %113, label %115, label %114

114:                                              ; preds = %110
  tail call void @BLI_memarena_free(ptr noundef nonnull %112) #22
  store ptr null, ptr %111, align 8, !tbaa !117
  br label %115

115:                                              ; preds = %110, %114, %1
  ret void
}

; Function Attrs: optsize
declare void @BKE_image_print_memlist() local_unnamed_addr #7

; Function Attrs: optsize
declare void @freeshadowbuf(ptr noundef) local_unnamed_addr #7

; Function Attrs: optsize
declare void @curvemapping_free(ptr noundef) local_unnamed_addr #7

; Function Attrs: optsize
declare void @free_volume_precache(ptr noundef) local_unnamed_addr #7

; Function Attrs: optsize
declare void @BLI_freelistN(ptr noundef) local_unnamed_addr #7

; Function Attrs: optsize
declare void @free_renderdata_tables(ptr noundef) local_unnamed_addr #7

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @free_mesh_orco_hash(ptr nocapture noundef %0) unnamed_addr #4 !PGOFuncName !118 {
  %2 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 73
  %3 = load ptr, ptr %2, align 8, !tbaa !119
  %4 = icmp eq ptr %3, null
  br i1 %4, label %7, label %5

5:                                                ; preds = %1
  %6 = load ptr, ptr @MEM_freeN, align 8, !tbaa !47
  tail call void @BLI_ghash_free(ptr noundef nonnull %3, ptr noundef null, ptr noundef %6) #22
  store ptr null, ptr %2, align 8, !tbaa !119
  br label %7

7:                                                ; preds = %5, %1
  ret void
}

; Function Attrs: optsize
declare void @end_render_materials(ptr noundef) local_unnamed_addr #7

; Function Attrs: optsize
declare void @end_render_textures(ptr noundef) local_unnamed_addr #7

; Function Attrs: optsize
declare void @free_pointdensities(ptr noundef) local_unnamed_addr #7

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @free_camera_inside_volumes(ptr noundef %0) unnamed_addr #4 !PGOFuncName !120 {
  %2 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 79
  tail call void @BLI_freelistN(ptr noundef nonnull %2) #22
  ret void
}

; Function Attrs: optsize
declare void @free_render_qmcsampler(ptr noundef) local_unnamed_addr #7

; Function Attrs: optsize
declare void @freeraytree(ptr noundef) local_unnamed_addr #7

; Function Attrs: optsize
declare void @free_sss(ptr noundef) local_unnamed_addr #7

; Function Attrs: optsize
declare void @free_occ(ptr noundef) local_unnamed_addr #7

; Function Attrs: optsize
declare void @free_strand_surface(ptr noundef) local_unnamed_addr #7

; Function Attrs: optsize
declare void @BKE_image_free_all_textures() local_unnamed_addr #7

; Function Attrs: optsize
declare void @BLI_memarena_free(ptr noundef) local_unnamed_addr #7

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @RE_Database_FromScene(ptr noundef %0, ptr noundef %1, ptr noundef %2, i32 noundef %3, i32 noundef %4) local_unnamed_addr #4 {
  %6 = alloca [4 x [4 x float]], align 16
  %7 = alloca [3 x float], align 4
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %6) #24
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %7) #24
  %8 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 43
  store ptr %1, ptr %8, align 8, !tbaa !110
  %9 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 44
  store ptr %2, ptr %9, align 8, !tbaa !48
  %10 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 48
  store i32 %3, ptr %10, align 8, !tbaa !121
  %11 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 45, i32 46
  %12 = load i32, ptr %11, align 4, !tbaa !104
  %13 = and i32 %12, 524288
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %18, label %15

15:                                               ; preds = %5
  %16 = tail call zeroext i8 @BKE_scene_check_color_management_enabled(ptr noundef %2) #22
  %17 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 8
  store i8 %16, ptr %17, align 8, !tbaa !122
  br label %18

18:                                               ; preds = %15, %5
  %19 = tail call ptr @RE_GetCamera(ptr noundef nonnull %0) #22
  %20 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 98
  %21 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 98, i32 16
  store ptr @.str, ptr %21, align 8, !tbaa !123
  %22 = getelementptr inbounds %struct.Scene, ptr %2, i64 0, i32 22, i32 5
  %23 = load i32, ptr %22, align 8, !tbaa !124
  store i32 %23, ptr %20, align 8, !tbaa !125
  %24 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 98, i32 18
  %25 = getelementptr inbounds %struct.ID, ptr %2, i64 0, i32 4, i64 2
  %26 = tail call ptr @BLI_strncpy(ptr noundef nonnull %24, ptr noundef nonnull %25, i64 noundef 64) #22
  %27 = tail call ptr @BLI_memarena_new(i64 noundef 16376, ptr noundef nonnull @.str.1) #22
  %28 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 81
  store ptr %27, ptr %28, align 8, !tbaa !117
  %29 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 64
  %30 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 60
  %31 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 66
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(20) %30, i8 0, i64 20, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %31, i8 0, i64 32, i1 false)
  store i32 0, ptr @slurph_opt, align 4, !tbaa !78
  %32 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 98, i32 10
  store i16 0, ptr %32, align 2, !tbaa !126
  %33 = load i32, ptr %10, align 8, !tbaa !121
  %34 = icmp ult i32 %33, 16777216
  %35 = and i32 %3, -16777216
  %36 = select i1 %34, i32 %3, i32 %35
  %37 = load i32, ptr %11, align 4, !tbaa !104
  %38 = and i32 %37, 540680
  %39 = icmp eq i32 %38, 0
  br i1 %39, label %40, label %47

40:                                               ; preds = %18
  %41 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 101
  %42 = load ptr, ptr %41, align 8, !tbaa !127
  %43 = load ptr, ptr %8, align 8, !tbaa !110
  %44 = load ptr, ptr %9, align 8, !tbaa !48
  tail call void @BKE_scene_update_for_newframe(ptr noundef %42, ptr noundef %43, ptr noundef %44, i32 noundef %36) #22
  %45 = load ptr, ptr %9, align 8, !tbaa !48
  %46 = getelementptr inbounds %struct.Scene, ptr %45, i64 0, i32 22
  tail call void @render_update_anim_renderdata(ptr noundef nonnull %0, ptr noundef nonnull %46) #22
  br label %47

47:                                               ; preds = %40, %18
  %48 = icmp ne i32 %4, 0
  %49 = icmp ne ptr %19, null
  %50 = select i1 %48, i1 %49, i1 false
  br i1 %50, label %51, label %55

51:                                               ; preds = %47
  tail call void @RE_SetCamera(ptr noundef nonnull %0, ptr noundef nonnull %19) #22
  %52 = getelementptr inbounds %struct.Object, ptr %19, i64 0, i32 47
  call void @normalize_m4_m4(ptr noundef nonnull %6, ptr noundef nonnull %52) #22
  %53 = call zeroext i8 @invert_m4(ptr noundef nonnull %6) #22
  call void @RE_SetView(ptr noundef nonnull %0, ptr noundef nonnull %6) #22
  %54 = load ptr, ptr %8, align 8, !tbaa !110
  call void @DAG_id_tag_update_ex(ptr noundef %54, ptr noundef nonnull %19, i16 noundef signext 1) #22
  br label %55

55:                                               ; preds = %51, %47
  %56 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 34
  %57 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 32
  call void @copy_m4_m4(ptr noundef nonnull %56, ptr noundef nonnull %57) #22
  call void @init_render_world(ptr noundef nonnull %0) #23
  %58 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 45, i32 47
  %59 = load i32, ptr %58, align 8, !tbaa !87
  %60 = and i32 %59, 65536
  %61 = icmp eq i32 %60, 0
  br i1 %61, label %73, label %62

62:                                               ; preds = %55
  call void @init_render_qmcsampler(ptr noundef nonnull %0) #22
  %63 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 46
  %64 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 46, i32 23
  %65 = load i16, ptr %64, align 2, !tbaa !89
  %66 = and i16 %65, 208
  %67 = icmp eq i16 %66, 0
  br i1 %67, label %73, label %68

68:                                               ; preds = %62
  %69 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 46, i32 63
  %70 = load i16, ptr %69, align 8, !tbaa !128
  %71 = icmp eq i16 %70, 0
  br i1 %71, label %72, label %73

72:                                               ; preds = %68
  call void @init_ao_sphere(ptr noundef nonnull %63) #22
  br label %73

73:                                               ; preds = %62, %72, %68, %55
  call void @init_render_textures(ptr noundef nonnull %0) #22
  %74 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 46, i32 12
  call fastcc void @copy_v3_v3(ptr noundef nonnull %7, ptr noundef nonnull %74) #23
  %75 = load ptr, ptr %8, align 8, !tbaa !110
  %76 = load i32, ptr %58, align 8, !tbaa !87
  call void @init_render_materials(ptr noundef %75, i32 noundef %76, ptr noundef nonnull %7) #22
  call void @set_node_shader_lamp_loop(ptr noundef nonnull @shade_material_loop) #22
  call fastcc void @database_init_objects(ptr noundef nonnull %0, i32 noundef %36, i32 noundef 0, i32 noundef 0, ptr noundef null, i32 noundef 0) #23
  %77 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 96
  %78 = load ptr, ptr %77, align 8, !tbaa !129
  %79 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 97
  %80 = load ptr, ptr %79, align 8, !tbaa !130
  %81 = call i32 %78(ptr noundef %80) #22
  %82 = icmp eq i32 %81, 0
  br i1 %82, label %83, label %101

83:                                               ; preds = %73
  call fastcc void @set_material_lightgroups(ptr noundef nonnull %0) #23
  %84 = load ptr, ptr %9, align 8, !tbaa !47
  %85 = icmp eq ptr %84, null
  br i1 %85, label %91, label %86

86:                                               ; preds = %83, %86
  %87 = phi ptr [ %89, %86 ], [ %84, %83 ]
  call fastcc void @set_renderlayer_lightgroups(ptr noundef %0, ptr noundef nonnull %87) #23
  %88 = getelementptr inbounds %struct.Scene, ptr %87, i64 0, i32 4
  %89 = load ptr, ptr %88, align 8, !tbaa !47
  %90 = icmp eq ptr %89, null
  br i1 %90, label %91, label %86, !llvm.loop !131

91:                                               ; preds = %86, %83
  %92 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 98, i32 1
  %93 = load <4 x i32>, ptr %30, align 8, !tbaa !78
  %94 = shufflevector <4 x i32> %93, <4 x i32> poison, <4 x i32> <i32 0, i32 1, i32 3, i32 2>
  store <4 x i32> %94, ptr %92, align 4, !tbaa !78
  %95 = load i32, ptr %29, align 8, !tbaa !132
  %96 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 98, i32 5
  store i32 %95, ptr %96, align 4, !tbaa !133
  %97 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 90
  %98 = load ptr, ptr %97, align 8, !tbaa !134
  %99 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 91
  %100 = load ptr, ptr %99, align 8, !tbaa !135
  call void %98(ptr noundef %100, ptr noundef nonnull %20) #22
  br label %101

101:                                              ; preds = %91, %73
  store i32 1, ptr @slurph_opt, align 4, !tbaa !78
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %7) #24
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %6) #24
  ret void
}

; Function Attrs: optsize
declare zeroext i8 @BKE_scene_check_color_management_enabled(ptr noundef) local_unnamed_addr #7

; Function Attrs: optsize
declare ptr @RE_GetCamera(ptr noundef) local_unnamed_addr #7

; Function Attrs: optsize
declare ptr @BLI_strncpy(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #7

; Function Attrs: optsize
declare ptr @BLI_memarena_new(i64 noundef, ptr noundef) local_unnamed_addr #7

; Function Attrs: optsize
declare void @BKE_scene_update_for_newframe(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: optsize
declare void @render_update_anim_renderdata(ptr noundef, ptr noundef) local_unnamed_addr #7

; Function Attrs: optsize
declare void @RE_SetCamera(ptr noundef, ptr noundef) local_unnamed_addr #7

; Function Attrs: optsize
declare void @normalize_m4_m4(ptr noundef, ptr noundef) local_unnamed_addr #7

; Function Attrs: optsize
declare zeroext i8 @invert_m4(ptr noundef) local_unnamed_addr #7

; Function Attrs: optsize
declare void @RE_SetView(ptr noundef, ptr noundef) local_unnamed_addr #7

; Function Attrs: optsize
declare void @DAG_id_tag_update_ex(ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #7

; Function Attrs: optsize
declare void @copy_m4_m4(ptr noundef, ptr noundef) local_unnamed_addr #7

; Function Attrs: optsize
declare void @init_render_qmcsampler(ptr noundef) local_unnamed_addr #7

; Function Attrs: optsize
declare void @init_ao_sphere(ptr noundef) local_unnamed_addr #7

; Function Attrs: optsize
declare void @init_render_textures(ptr noundef) local_unnamed_addr #7

; Function Attrs: optsize
declare void @init_render_materials(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #7

; Function Attrs: optsize
declare void @set_node_shader_lamp_loop(ptr noundef) local_unnamed_addr #7

; Function Attrs: optsize
declare void @shade_material_loop(ptr noundef, ptr noundef) #7

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @database_init_objects(ptr noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, ptr noundef %4, i32 noundef %5) unnamed_addr #4 !PGOFuncName !136 {
  %7 = alloca ptr, align 8
  %8 = alloca [4 x [4 x float]], align 16
  %9 = alloca [4 x [4 x float]], align 16
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %7) #24
  tail call fastcc void @set_dupli_tex_mat(ptr noundef null, ptr noundef null, ptr noundef null, ptr noundef null) #23
  %10 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 43
  %11 = load ptr, ptr %10, align 8, !tbaa !110
  %12 = getelementptr inbounds %struct.Main, ptr %11, i64 0, i32 13
  %13 = load ptr, ptr %12, align 8, !tbaa !47
  %14 = icmp eq ptr %13, null
  br i1 %14, label %31, label %15

15:                                               ; preds = %6
  %16 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 32
  br label %17

17:                                               ; preds = %15, %17
  %18 = phi ptr [ %13, %15 ], [ %29, %17 ]
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %8) #24
  %19 = getelementptr inbounds %struct.Object, ptr %18, i64 0, i32 47
  call void @mul_m4_m4m4(ptr noundef nonnull %8, ptr noundef nonnull %16, ptr noundef nonnull %19) #22
  %20 = getelementptr inbounds %struct.Object, ptr %18, i64 0, i32 51
  %21 = call zeroext i8 @invert_m4_m4(ptr noundef nonnull %20, ptr noundef nonnull %8) #22
  %22 = getelementptr inbounds %struct.Object, ptr %18, i64 0, i32 50
  call void @copy_m4_m4(ptr noundef nonnull %22, ptr noundef nonnull %20) #22
  %23 = getelementptr inbounds %struct.Object, ptr %18, i64 0, i32 53
  %24 = load i16, ptr %23, align 4, !tbaa !137
  %25 = and i16 %24, -1025
  store i16 %25, ptr %23, align 4, !tbaa !137
  %26 = getelementptr inbounds %struct.Object, ptr %18, i64 0, i32 55
  %27 = load i16, ptr %26, align 8, !tbaa !140
  %28 = and i16 %27, -4097
  store i16 %28, ptr %26, align 8, !tbaa !140
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %8) #24
  %29 = load ptr, ptr %18, align 8, !tbaa !47
  %30 = icmp eq ptr %29, null
  br i1 %30, label %31, label %17, !llvm.loop !141

31:                                               ; preds = %17, %6
  %32 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 44
  %33 = load ptr, ptr %32, align 8, !tbaa !48
  store ptr %33, ptr %7, align 8, !tbaa !47
  %34 = call ptr @_setlooper_base_step(ptr noundef nonnull %7, ptr noundef null) #22
  %35 = icmp eq ptr %34, null
  br i1 %35, label %253, label %36

36:                                               ; preds = %31
  %37 = icmp eq i32 %5, 0
  %38 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 48
  %39 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 101
  %40 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 32
  %41 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 96
  %42 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 97
  br label %43

43:                                               ; preds = %36, %250
  %44 = phi ptr [ %34, %36 ], [ %251, %250 ]
  %45 = getelementptr inbounds %struct.Base, ptr %44, i64 0, i32 7
  %46 = load ptr, ptr %45, align 8, !tbaa !142
  %47 = load ptr, ptr %32, align 8, !tbaa !48
  %48 = call fastcc i32 @get_vector_renderlayers(ptr noundef %47) #23
  %49 = select i1 %37, i32 -1, i32 %48
  %50 = and i32 %49, %1
  %51 = call fastcc zeroext i8 @is_object_restricted(ptr noundef nonnull %0, ptr noundef %46) #23, !range !144
  %52 = icmp eq i8 %51, 0
  br i1 %52, label %53, label %250

53:                                               ; preds = %43
  %54 = getelementptr inbounds %struct.Object, ptr %46, i64 0, i32 53
  %55 = load i16, ptr %54, align 4, !tbaa !137
  %56 = and i16 %55, 1024
  %57 = icmp eq i16 %56, 0
  br i1 %57, label %69, label %58

58:                                               ; preds = %53
  %59 = getelementptr inbounds %struct.Object, ptr %46, i64 0, i32 55
  %60 = load i16, ptr %59, align 8, !tbaa !140
  %61 = and i16 %60, 4096
  %62 = icmp eq i16 %61, 0
  br i1 %62, label %245, label %63

63:                                               ; preds = %58
  %64 = call fastcc i32 @allow_render_object(ptr noundef nonnull %0, ptr noundef nonnull %46, i32 noundef %2, i32 noundef %3, ptr noundef %4) #23, !range !145
  %65 = icmp eq i32 %64, 0
  br i1 %65, label %245, label %66

66:                                               ; preds = %63
  call fastcc void @init_render_object(ptr noundef nonnull %0, ptr noundef nonnull %46, ptr noundef null, ptr noundef null, ptr noundef null, i32 noundef %5) #23
  %67 = load i16, ptr %59, align 8, !tbaa !140
  %68 = and i16 %67, -4097
  store i16 %68, ptr %59, align 8, !tbaa !140
  br label %245

69:                                               ; preds = %53
  %70 = getelementptr inbounds %struct.Base, ptr %44, i64 0, i32 2
  %71 = load i32, ptr %70, align 8, !tbaa !146
  %72 = and i32 %50, %71
  %73 = icmp eq i32 %72, 0
  br i1 %73, label %74, label %82

74:                                               ; preds = %69
  %75 = getelementptr inbounds %struct.Object, ptr %46, i64 0, i32 3
  %76 = load i16, ptr %75, align 8, !tbaa !147
  %77 = icmp eq i16 %76, 10
  br i1 %77, label %78, label %245

78:                                               ; preds = %74
  %79 = load i32, ptr %38, align 8, !tbaa !121
  %80 = and i32 %79, %71
  %81 = icmp eq i32 %80, 0
  br i1 %81, label %245, label %82

82:                                               ; preds = %78, %69
  %83 = getelementptr inbounds %struct.Object, ptr %46, i64 0, i32 55
  %84 = load i16, ptr %83, align 8, !tbaa !140
  %85 = and i16 %84, 2840
  %86 = icmp eq i16 %85, 0
  br i1 %86, label %241, label %87

87:                                               ; preds = %82
  %88 = getelementptr inbounds %struct.Object, ptr %46, i64 0, i32 3
  %89 = load i16, ptr %88, align 8, !tbaa !147
  %90 = icmp eq i16 %89, 5
  br i1 %90, label %241, label %91

91:                                               ; preds = %87
  call fastcc void @dupli_render_particle_set(ptr noundef nonnull %0, ptr noundef nonnull %46, i32 noundef %5, i32 noundef 0, i32 noundef 1) #23
  %92 = load ptr, ptr %39, align 8, !tbaa !127
  %93 = load ptr, ptr %32, align 8, !tbaa !48
  %94 = call ptr @object_duplilist(ptr noundef %92, ptr noundef %93, ptr noundef nonnull %46) #22
  %95 = call ptr @duplilist_apply(ptr noundef nonnull %46, ptr noundef %94) #22
  call fastcc void @dupli_render_particle_set(ptr noundef nonnull %0, ptr noundef nonnull %46, i32 noundef %5, i32 noundef 0, i32 noundef 0) #23
  %96 = load ptr, ptr %94, align 8, !tbaa !47
  %97 = icmp eq ptr %96, null
  br i1 %97, label %234, label %98

98:                                               ; preds = %91
  %99 = getelementptr inbounds %struct.DupliApplyData, ptr %95, i64 0, i32 1
  %100 = getelementptr inbounds %struct.Object, ptr %46, i64 0, i32 52
  br label %101

101:                                              ; preds = %98, %230
  %102 = phi i64 [ 0, %98 ], [ %231, %230 ]
  %103 = phi ptr [ %96, %98 ], [ %232, %230 ]
  %104 = load ptr, ptr %99, align 8, !tbaa !148
  %105 = getelementptr inbounds %struct.DupliExtraData, ptr %104, i64 %102
  %106 = getelementptr inbounds %struct.DupliObject, ptr %103, i64 0, i32 2
  %107 = load ptr, ptr %106, align 8, !tbaa !150
  %108 = getelementptr inbounds %struct.Object, ptr %107, i64 0, i32 47
  %109 = getelementptr inbounds %struct.DupliObject, ptr %103, i64 0, i32 3
  call void @copy_m4_m4(ptr noundef nonnull %108, ptr noundef nonnull %109) #22
  %110 = getelementptr inbounds %struct.Object, ptr %107, i64 0, i32 55
  %111 = load i16, ptr %110, align 8, !tbaa !140
  %112 = and i16 %111, 4096
  %113 = icmp eq i16 %112, 0
  br i1 %113, label %114, label %118

114:                                              ; preds = %101
  %115 = getelementptr inbounds %struct.DupliObject, ptr %103, i64 0, i32 7
  %116 = load i8, ptr %115, align 2, !tbaa !152
  %117 = icmp eq i8 %116, 0
  br i1 %117, label %118, label %230

118:                                              ; preds = %114, %101
  %119 = call fastcc zeroext i8 @is_object_hidden(ptr noundef %0, ptr noundef nonnull %107) #23, !range !144
  %120 = icmp eq i8 %119, 0
  br i1 %120, label %121, label %230

121:                                              ; preds = %118
  %122 = getelementptr inbounds %struct.Object, ptr %107, i64 0, i32 3
  %123 = load i16, ptr %122, align 8, !tbaa !147
  %124 = icmp eq i16 %123, 5
  br i1 %124, label %230, label %125

125:                                              ; preds = %121
  %126 = call fastcc i32 @allow_render_object(ptr noundef %0, ptr noundef nonnull %107, i32 noundef %2, i32 noundef %3, ptr noundef %4) #23, !range !145
  %127 = icmp eq i32 %126, 0
  br i1 %127, label %230, label %128

128:                                              ; preds = %125
  %129 = call fastcc i32 @allow_render_dupli_instance(ptr noundef nonnull %103, ptr noundef nonnull %107) #23
  %130 = icmp eq i32 %129, 0
  br i1 %130, label %224, label %131

131:                                              ; preds = %128
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %9) #24
  %132 = getelementptr inbounds %struct.DupliObject, ptr %103, i64 0, i32 6
  %133 = load i16, ptr %132, align 4, !tbaa !153
  %134 = icmp eq i16 %133, 256
  br i1 %134, label %135, label %138

135:                                              ; preds = %131
  %136 = call fastcc ptr @find_dupligroup_dupli(ptr noundef %0, ptr noundef nonnull %107, i32 noundef 0) #23
  %137 = icmp eq ptr %136, null
  br i1 %137, label %160, label %138

138:                                              ; preds = %135, %131
  %139 = phi ptr [ null, %131 ], [ %136, %135 ]
  call void @mul_m4_m4m4(ptr noundef nonnull %9, ptr noundef nonnull %40, ptr noundef nonnull %109) #22
  %140 = getelementptr inbounds %struct.DupliObject, ptr %103, i64 0, i32 9
  %141 = load i32, ptr %140, align 8, !tbaa !78
  %142 = load i32, ptr %100, align 8, !tbaa !154
  %143 = call ptr @RE_addRenderInstance(ptr noundef %0, ptr noundef null, ptr noundef nonnull %107, ptr noundef %46, i32 noundef %141, i32 noundef 0, ptr noundef nonnull %9, i32 noundef %142) #22
  call fastcc void @set_dupli_tex_mat(ptr noundef %0, ptr noundef %143, ptr noundef nonnull %103, ptr noundef %105) #23
  %144 = load i16, ptr %132, align 4, !tbaa !153
  %145 = icmp eq i16 %144, 256
  br i1 %145, label %155, label %146

146:                                              ; preds = %138
  %147 = getelementptr inbounds %struct.ObjectInstanceRen, ptr %143, i64 0, i32 12
  %148 = getelementptr inbounds %struct.DupliObject, ptr %103, i64 0, i32 4
  call fastcc void @copy_v3_v3(ptr noundef nonnull %147, ptr noundef nonnull %148) #23
  %149 = getelementptr inbounds %struct.DupliObject, ptr %103, i64 0, i32 5
  %150 = load float, ptr %149, align 4, !tbaa !44
  %151 = getelementptr inbounds %struct.ObjectInstanceRen, ptr %143, i64 0, i32 13
  store float %150, ptr %151, align 8, !tbaa !44
  %152 = getelementptr inbounds %struct.DupliObject, ptr %103, i64 0, i32 5, i64 1
  %153 = load float, ptr %152, align 4, !tbaa !44
  %154 = getelementptr inbounds %struct.ObjectInstanceRen, ptr %143, i64 0, i32 13, i64 1
  store float %153, ptr %154, align 4, !tbaa !44
  br label %160

155:                                              ; preds = %138
  call fastcc void @assign_dupligroup_dupli(ptr noundef %0, ptr noundef %143, ptr noundef %139, ptr noundef nonnull %103) #23
  %156 = load i16, ptr %110, align 8, !tbaa !140
  %157 = and i16 %156, 4096
  %158 = icmp eq i16 %157, 0
  br i1 %158, label %160, label %159

159:                                              ; preds = %155
  call fastcc void @find_dupli_instances(ptr noundef %0, ptr noundef %139, ptr noundef nonnull %103) #23
  br label %160

160:                                              ; preds = %146, %159, %155, %135
  %161 = phi ptr [ %143, %146 ], [ %143, %159 ], [ %143, %155 ], [ null, %135 ]
  %162 = phi ptr [ %139, %146 ], [ %139, %159 ], [ %139, %155 ], [ null, %135 ]
  %163 = getelementptr inbounds %struct.Object, ptr %107, i64 0, i32 109
  %164 = load ptr, ptr %163, align 8, !tbaa !47
  %165 = icmp eq ptr %164, null
  br i1 %165, label %210, label %166

166:                                              ; preds = %160
  %167 = getelementptr inbounds %struct.DupliObject, ptr %103, i64 0, i32 9
  %168 = getelementptr inbounds %struct.Object, ptr %107, i64 0, i32 52
  %169 = getelementptr inbounds %struct.DupliObject, ptr %103, i64 0, i32 4
  %170 = getelementptr inbounds %struct.DupliObject, ptr %103, i64 0, i32 5
  %171 = getelementptr inbounds %struct.DupliObject, ptr %103, i64 0, i32 5, i64 1
  br label %172

172:                                              ; preds = %166, %204
  %173 = phi ptr [ %164, %166 ], [ %208, %204 ]
  %174 = phi i32 [ 1, %166 ], [ %207, %204 ]
  %175 = phi ptr [ %162, %166 ], [ %206, %204 ]
  %176 = phi ptr [ %161, %166 ], [ %205, %204 ]
  %177 = load i16, ptr %132, align 4, !tbaa !153
  %178 = icmp eq i16 %177, 256
  br i1 %178, label %179, label %182

179:                                              ; preds = %172
  %180 = call fastcc ptr @find_dupligroup_dupli(ptr noundef %0, ptr noundef %107, i32 noundef %174) #23
  %181 = icmp eq ptr %180, null
  br i1 %181, label %204, label %182

182:                                              ; preds = %179, %172
  %183 = phi ptr [ %175, %172 ], [ %180, %179 ]
  %184 = icmp eq ptr %176, null
  br i1 %184, label %185, label %186

185:                                              ; preds = %182
  call void @mul_m4_m4m4(ptr noundef nonnull %9, ptr noundef nonnull %40, ptr noundef nonnull %109) #22
  br label %186

186:                                              ; preds = %185, %182
  %187 = load i32, ptr %167, align 8, !tbaa !78
  %188 = add nsw i32 %174, 1
  %189 = load i32, ptr %168, align 8, !tbaa !154
  %190 = call ptr @RE_addRenderInstance(ptr noundef %0, ptr noundef null, ptr noundef %107, ptr noundef %46, i32 noundef %187, i32 noundef %174, ptr noundef nonnull %9, i32 noundef %189) #22
  call fastcc void @set_dupli_tex_mat(ptr noundef %0, ptr noundef %190, ptr noundef nonnull %103, ptr noundef %105) #23
  %191 = load i16, ptr %132, align 4, !tbaa !153
  %192 = icmp eq i16 %191, 256
  br i1 %192, label %199, label %193

193:                                              ; preds = %186
  %194 = getelementptr inbounds %struct.ObjectInstanceRen, ptr %190, i64 0, i32 12
  call fastcc void @copy_v3_v3(ptr noundef nonnull %194, ptr noundef nonnull %169) #23
  %195 = load float, ptr %170, align 4, !tbaa !44
  %196 = getelementptr inbounds %struct.ObjectInstanceRen, ptr %190, i64 0, i32 13
  store float %195, ptr %196, align 8, !tbaa !44
  %197 = load float, ptr %171, align 4, !tbaa !44
  %198 = getelementptr inbounds %struct.ObjectInstanceRen, ptr %190, i64 0, i32 13, i64 1
  store float %197, ptr %198, align 4, !tbaa !44
  br label %204

199:                                              ; preds = %186
  call fastcc void @assign_dupligroup_dupli(ptr noundef %0, ptr noundef %190, ptr noundef %183, ptr noundef nonnull %103) #23
  %200 = load i16, ptr %110, align 8, !tbaa !140
  %201 = and i16 %200, 4096
  %202 = icmp eq i16 %201, 0
  br i1 %202, label %204, label %203

203:                                              ; preds = %199
  call fastcc void @find_dupli_instances(ptr noundef %0, ptr noundef %183, ptr noundef nonnull %103) #23
  br label %204

204:                                              ; preds = %179, %199, %203, %193
  %205 = phi ptr [ %190, %193 ], [ %190, %203 ], [ %190, %199 ], [ %176, %179 ]
  %206 = phi ptr [ %183, %193 ], [ %183, %203 ], [ %183, %199 ], [ null, %179 ]
  %207 = phi i32 [ %188, %193 ], [ %188, %203 ], [ %188, %199 ], [ %174, %179 ]
  %208 = load ptr, ptr %173, align 8, !tbaa !47
  %209 = icmp eq ptr %208, null
  br i1 %209, label %210, label %172, !llvm.loop !155

210:                                              ; preds = %204, %160
  %211 = phi ptr [ %161, %160 ], [ %205, %204 ]
  %212 = icmp eq ptr %211, null
  br i1 %212, label %213, label %214

213:                                              ; preds = %210
  call fastcc void @init_render_object(ptr noundef %0, ptr noundef %107, ptr noundef %46, ptr noundef nonnull %103, ptr noundef %105, i32 noundef %5) #23
  br label %214

214:                                              ; preds = %213, %210
  %215 = load i16, ptr %132, align 4, !tbaa !153
  %216 = icmp eq i16 %215, 256
  br i1 %216, label %223, label %217

217:                                              ; preds = %214
  %218 = getelementptr inbounds %struct.Object, ptr %107, i64 0, i32 53
  %219 = load i16, ptr %218, align 4, !tbaa !137
  %220 = or i16 %219, 1024
  store i16 %220, ptr %218, align 4, !tbaa !137
  %221 = load i16, ptr %110, align 8, !tbaa !140
  %222 = or i16 %221, 4096
  store i16 %222, ptr %110, align 8, !tbaa !140
  br label %223

223:                                              ; preds = %217, %214
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %9) #24
  br label %225

224:                                              ; preds = %128
  call fastcc void @init_render_object(ptr noundef %0, ptr noundef nonnull %107, ptr noundef %46, ptr noundef nonnull %103, ptr noundef %105, i32 noundef %5) #23
  br label %225

225:                                              ; preds = %223, %224
  %226 = load ptr, ptr %41, align 8, !tbaa !129
  %227 = load ptr, ptr %42, align 8, !tbaa !130
  %228 = call i32 %226(ptr noundef %227) #22
  %229 = icmp eq i32 %228, 0
  br i1 %229, label %230, label %234

230:                                              ; preds = %125, %121, %118, %114, %225
  %231 = add nuw i64 %102, 1
  %232 = load ptr, ptr %103, align 8, !tbaa !47
  %233 = icmp eq ptr %232, null
  br i1 %233, label %234, label %101, !llvm.loop !156

234:                                              ; preds = %230, %225, %91
  %235 = icmp eq ptr %95, null
  br i1 %235, label %237, label %236

236:                                              ; preds = %234
  call void @duplilist_restore(ptr noundef nonnull %94, ptr noundef nonnull %95) #22
  call void @duplilist_free_apply_data(ptr noundef nonnull %95) #22
  br label %237

237:                                              ; preds = %236, %234
  call void @free_object_duplilist(ptr noundef nonnull %94) #22
  %238 = call fastcc i32 @allow_render_object(ptr noundef %0, ptr noundef %46, i32 noundef %2, i32 noundef %3, ptr noundef %4) #23, !range !145
  %239 = icmp eq i32 %238, 0
  br i1 %239, label %245, label %240

240:                                              ; preds = %237
  call fastcc void @init_render_object(ptr noundef %0, ptr noundef %46, ptr noundef null, ptr noundef null, ptr noundef null, i32 noundef %5) #23
  br label %245

241:                                              ; preds = %87, %82
  %242 = call fastcc i32 @allow_render_object(ptr noundef nonnull %0, ptr noundef nonnull %46, i32 noundef %2, i32 noundef %3, ptr noundef %4) #23, !range !145
  %243 = icmp eq i32 %242, 0
  br i1 %243, label %245, label %244

244:                                              ; preds = %241
  call fastcc void @init_render_object(ptr noundef nonnull %0, ptr noundef nonnull %46, ptr noundef null, ptr noundef null, ptr noundef null, i32 noundef %5) #23
  br label %245

245:                                              ; preds = %237, %240, %74, %78, %241, %244, %58, %66, %63
  %246 = load ptr, ptr %41, align 8, !tbaa !129
  %247 = load ptr, ptr %42, align 8, !tbaa !130
  %248 = call i32 %246(ptr noundef %247) #22
  %249 = icmp eq i32 %248, 0
  br i1 %249, label %250, label %253

250:                                              ; preds = %245, %43
  %251 = call ptr @_setlooper_base_step(ptr noundef nonnull %7, ptr noundef nonnull %44) #22
  %252 = icmp eq ptr %251, null
  br i1 %252, label %253, label %43, !llvm.loop !157

253:                                              ; preds = %250, %245, %31
  %254 = load ptr, ptr %10, align 8, !tbaa !110
  %255 = getelementptr inbounds %struct.Main, ptr %254, i64 0, i32 32
  %256 = load ptr, ptr %255, align 8, !tbaa !47
  %257 = icmp eq ptr %256, null
  br i1 %257, label %262, label %258

258:                                              ; preds = %253, %258
  %259 = phi ptr [ %260, %258 ], [ %256, %253 ]
  call fastcc void @add_group_render_dupli_obs(ptr noundef %0, ptr noundef nonnull %259, i32 noundef %2, i32 noundef %3, ptr noundef %4, i32 noundef %5, i32 noundef 0) #23
  %260 = load ptr, ptr %259, align 8, !tbaa !47
  %261 = icmp eq ptr %260, null
  br i1 %261, label %262, label %258, !llvm.loop !158

262:                                              ; preds = %258, %253
  %263 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 96
  %264 = load ptr, ptr %263, align 8, !tbaa !129
  %265 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 97
  %266 = load ptr, ptr %265, align 8, !tbaa !130
  %267 = call i32 %264(ptr noundef %266) #22
  %268 = icmp eq i32 %267, 0
  br i1 %268, label %269, label %270

269:                                              ; preds = %262
  call void @RE_makeRenderInstances(ptr noundef nonnull %0) #22
  br label %270

270:                                              ; preds = %269, %262
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %7) #24
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @set_material_lightgroups(ptr noundef %0) unnamed_addr #4 !PGOFuncName !159 {
  %2 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 44
  %3 = load ptr, ptr %2, align 8, !tbaa !48
  %4 = getelementptr inbounds %struct.Scene, ptr %3, i64 0, i32 22, i32 46
  %5 = load i32, ptr %4, align 4, !tbaa !116
  %6 = and i32 %5, 524296
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %8, label %42

8:                                                ; preds = %1
  %9 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 43
  %10 = load ptr, ptr %9, align 8, !tbaa !110
  %11 = getelementptr inbounds %struct.Main, ptr %10, i64 0, i32 32
  %12 = load ptr, ptr %11, align 8, !tbaa !47
  %13 = icmp eq ptr %12, null
  br i1 %13, label %21, label %14

14:                                               ; preds = %8, %14
  %15 = phi ptr [ %19, %14 ], [ %12, %8 ]
  %16 = getelementptr inbounds %struct.ID, ptr %15, i64 0, i32 5
  %17 = load i16, ptr %16, align 2, !tbaa !160
  %18 = or i16 %17, 1024
  store i16 %18, ptr %16, align 2, !tbaa !160
  %19 = load ptr, ptr %15, align 8, !tbaa !47
  %20 = icmp eq ptr %19, null
  br i1 %20, label %21, label %14, !llvm.loop !162

21:                                               ; preds = %14, %8
  %22 = getelementptr inbounds %struct.Main, ptr %10, i64 0, i32 17
  %23 = load ptr, ptr %22, align 8, !tbaa !47
  %24 = icmp eq ptr %23, null
  br i1 %24, label %42, label %25

25:                                               ; preds = %21, %39
  %26 = phi ptr [ %40, %39 ], [ %23, %21 ]
  %27 = getelementptr inbounds %struct.Material, ptr %26, i64 0, i32 105
  %28 = load ptr, ptr %27, align 8, !tbaa !163
  %29 = icmp eq ptr %28, null
  br i1 %29, label %39, label %30

30:                                               ; preds = %25
  %31 = getelementptr inbounds %struct.ID, ptr %28, i64 0, i32 5
  %32 = load i16, ptr %31, align 2, !tbaa !160
  %33 = and i16 %32, 1024
  %34 = icmp eq i16 %33, 0
  br i1 %34, label %39, label %35

35:                                               ; preds = %30
  %36 = getelementptr inbounds %struct.Material, ptr %26, i64 0, i32 51
  %37 = load i32, ptr %36, align 4, !tbaa !167
  %38 = and i32 %37, 268435456
  tail call fastcc void @add_lightgroup(ptr noundef %0, ptr noundef nonnull %28, i32 noundef %38) #23
  br label %39

39:                                               ; preds = %25, %30, %35
  %40 = load ptr, ptr %26, align 8, !tbaa !47
  %41 = icmp eq ptr %40, null
  br i1 %41, label %42, label %25, !llvm.loop !168

42:                                               ; preds = %39, %21, %1
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @set_renderlayer_lightgroups(ptr noundef %0, ptr nocapture noundef readonly %1) unnamed_addr #4 !PGOFuncName !169 {
  %3 = getelementptr inbounds %struct.Scene, ptr %1, i64 0, i32 22, i32 60
  %4 = load ptr, ptr %3, align 8, !tbaa !47
  %5 = icmp eq ptr %4, null
  br i1 %5, label %15, label %6

6:                                                ; preds = %2, %12
  %7 = phi ptr [ %13, %12 ], [ %4, %2 ]
  %8 = getelementptr inbounds %struct.SceneRenderLayer, ptr %7, i64 0, i32 4
  %9 = load ptr, ptr %8, align 8, !tbaa !170
  %10 = icmp eq ptr %9, null
  br i1 %10, label %12, label %11

11:                                               ; preds = %6
  tail call fastcc void @add_lightgroup(ptr noundef %0, ptr noundef nonnull %9, i32 noundef 0) #23
  br label %12

12:                                               ; preds = %6, %11
  %13 = load ptr, ptr %7, align 8, !tbaa !47
  %14 = icmp eq ptr %13, null
  br i1 %14, label %15, label %6, !llvm.loop !173

15:                                               ; preds = %12, %2
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @RE_Database_Preprocess(ptr noundef %0) local_unnamed_addr #4 {
  %2 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 96
  %3 = load ptr, ptr %2, align 8, !tbaa !129
  %4 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 97
  %5 = load ptr, ptr %4, align 8, !tbaa !130
  %6 = tail call i32 %3(ptr noundef %5) #22
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %8, label %97

8:                                                ; preds = %1
  %9 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 62
  %10 = load i32, ptr %9, align 8, !tbaa !174
  tail call fastcc void @sort_halos(ptr noundef nonnull %0, i32 noundef %10) #23
  tail call fastcc void @init_camera_inside_volumes(ptr noundef nonnull %0) #23
  %11 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 98
  %12 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 98, i32 16
  store ptr @.str.2, ptr %12, align 8, !tbaa !123
  %13 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 90
  %14 = load ptr, ptr %13, align 8, !tbaa !134
  %15 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 91
  %16 = load ptr, ptr %15, align 8, !tbaa !135
  tail call void %14(ptr noundef %16, ptr noundef nonnull %11) #22
  tail call void @threaded_makeshadowbufs(ptr noundef nonnull %0) #22
  %17 = load ptr, ptr %2, align 8, !tbaa !129
  %18 = load ptr, ptr %4, align 8, !tbaa !130
  %19 = tail call i32 %17(ptr noundef %18) #22
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %21, label %27

21:                                               ; preds = %8
  %22 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 45, i32 47
  %23 = load i32, ptr %22, align 8, !tbaa !87
  %24 = and i32 %23, 65536
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %27, label %26

26:                                               ; preds = %21
  tail call void @makeraytree(ptr noundef nonnull %0) #22
  br label %27

27:                                               ; preds = %21, %26, %8
  %28 = load ptr, ptr %2, align 8, !tbaa !129
  %29 = load ptr, ptr %4, align 8, !tbaa !130
  %30 = tail call i32 %28(ptr noundef %29) #22
  %31 = icmp eq i32 %30, 0
  br i1 %31, label %32, label %33

32:                                               ; preds = %27
  tail call void @make_envmaps(ptr noundef nonnull %0) #22
  br label %33

33:                                               ; preds = %32, %27
  %34 = load ptr, ptr %2, align 8, !tbaa !129
  %35 = load ptr, ptr %4, align 8, !tbaa !130
  %36 = tail call i32 %34(ptr noundef %35) #22
  %37 = icmp eq i32 %36, 0
  br i1 %37, label %38, label %39

38:                                               ; preds = %33
  tail call void @make_pointdensities(ptr noundef nonnull %0) #22
  br label %39

39:                                               ; preds = %38, %33
  %40 = load ptr, ptr %2, align 8, !tbaa !129
  %41 = load ptr, ptr %4, align 8, !tbaa !130
  %42 = tail call i32 %40(ptr noundef %41) #22
  %43 = icmp eq i32 %42, 0
  br i1 %43, label %44, label %45

44:                                               ; preds = %39
  tail call void @make_voxeldata(ptr noundef nonnull %0) #22
  br label %45

45:                                               ; preds = %44, %39
  %46 = load ptr, ptr %2, align 8, !tbaa !129
  %47 = load ptr, ptr %4, align 8, !tbaa !130
  %48 = tail call i32 %46(ptr noundef %47) #22
  %49 = icmp eq i32 %48, 0
  br i1 %49, label %50, label %56

50:                                               ; preds = %45
  %51 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 45, i32 47
  %52 = load i32, ptr %51, align 8, !tbaa !87
  %53 = lshr i32 %52, 10
  %54 = trunc i32 %53 to i8
  %55 = and i8 %54, 1
  tail call void @project_renderdata(ptr noundef nonnull %0, ptr noundef nonnull @projectverto, i8 noundef zeroext %55, float noundef 0.000000e+00, i8 noundef zeroext 1) #22
  br label %56

56:                                               ; preds = %50, %45
  %57 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 46, i32 23
  %58 = load i16, ptr %57, align 2, !tbaa !89
  %59 = and i16 %58, 208
  %60 = icmp eq i16 %59, 0
  br i1 %60, label %76, label %61

61:                                               ; preds = %56
  %62 = load ptr, ptr %2, align 8, !tbaa !129
  %63 = load ptr, ptr %4, align 8, !tbaa !130
  %64 = tail call i32 %62(ptr noundef %63) #22
  %65 = icmp eq i32 %64, 0
  br i1 %65, label %66, label %76

66:                                               ; preds = %61
  %67 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 46, i32 64
  %68 = load i16, ptr %67, align 2, !tbaa !88
  %69 = icmp eq i16 %68, 1
  br i1 %69, label %70, label %76

70:                                               ; preds = %66
  %71 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 45, i32 47
  %72 = load i32, ptr %71, align 8, !tbaa !87
  %73 = and i32 %72, 2
  %74 = icmp eq i32 %73, 0
  br i1 %74, label %76, label %75

75:                                               ; preds = %70
  tail call void @make_occ_tree(ptr noundef nonnull %0) #22
  br label %76

76:                                               ; preds = %66, %75, %70, %61, %56
  %77 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 45, i32 47
  %78 = load i32, ptr %77, align 8, !tbaa !87
  %79 = and i32 %78, 2097152
  %80 = icmp eq i32 %79, 0
  br i1 %80, label %87, label %81

81:                                               ; preds = %76
  %82 = load ptr, ptr %2, align 8, !tbaa !129
  %83 = load ptr, ptr %4, align 8, !tbaa !130
  %84 = tail call i32 %82(ptr noundef %83) #22
  %85 = icmp eq i32 %84, 0
  br i1 %85, label %86, label %87

86:                                               ; preds = %81
  tail call void @make_sss_tree(ptr noundef nonnull %0) #22
  br label %87

87:                                               ; preds = %86, %81, %76
  %88 = load ptr, ptr %2, align 8, !tbaa !129
  %89 = load ptr, ptr %4, align 8, !tbaa !130
  %90 = tail call i32 %88(ptr noundef %89) #22
  %91 = icmp eq i32 %90, 0
  br i1 %91, label %92, label %97

92:                                               ; preds = %87
  %93 = load i32, ptr %77, align 8, !tbaa !87
  %94 = and i32 %93, 65536
  %95 = icmp eq i32 %94, 0
  br i1 %95, label %97, label %96

96:                                               ; preds = %92
  tail call void @volume_precache(ptr noundef nonnull %0) #22
  br label %97

97:                                               ; preds = %87, %96, %92, %1
  %98 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 98, i32 11
  store i16 1, ptr %98, align 4, !tbaa !101
  %99 = load ptr, ptr %2, align 8, !tbaa !129
  %100 = load ptr, ptr %4, align 8, !tbaa !130
  %101 = tail call i32 %99(ptr noundef %100) #22
  %102 = icmp eq i32 %101, 0
  br i1 %102, label %104, label %103

103:                                              ; preds = %97
  tail call void @RE_Database_Free(ptr noundef nonnull %0) #23
  br label %104

104:                                              ; preds = %103, %97
  %105 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 98
  %106 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 98, i32 16
  store ptr null, ptr %106, align 8, !tbaa !123
  %107 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 90
  %108 = load ptr, ptr %107, align 8, !tbaa !134
  %109 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 91
  %110 = load ptr, ptr %109, align 8, !tbaa !135
  tail call void %108(ptr noundef %110, ptr noundef nonnull %105) #22
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @sort_halos(ptr nocapture noundef %0, i32 noundef %1) unnamed_addr #4 !PGOFuncName !175 {
  %3 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 62
  %4 = load i32, ptr %3, align 8, !tbaa !174
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %53, label %6

6:                                                ; preds = %2
  %7 = load ptr, ptr @MEM_callocN, align 8, !tbaa !47
  %8 = sext i32 %4 to i64
  %9 = shl nsw i64 %8, 3
  %10 = tail call ptr %7(i64 noundef %9, ptr noundef nonnull @.str.25) #22
  %11 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 65
  store ptr %10, ptr %11, align 8, !tbaa !176
  %12 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 68
  %13 = load ptr, ptr %12, align 8, !tbaa !47
  %14 = icmp eq ptr %13, null
  br i1 %14, label %50, label %20

15:                                               ; preds = %43, %20
  %16 = phi ptr [ %23, %20 ], [ %44, %43 ]
  %17 = phi ptr [ %22, %20 ], [ %45, %43 ]
  %18 = load ptr, ptr %21, align 8, !tbaa !47
  %19 = icmp eq ptr %18, null
  br i1 %19, label %48, label %20, !llvm.loop !177

20:                                               ; preds = %6, %15
  %21 = phi ptr [ %18, %15 ], [ %13, %6 ]
  %22 = phi ptr [ %17, %15 ], [ %10, %6 ]
  %23 = phi ptr [ %16, %15 ], [ null, %6 ]
  %24 = getelementptr inbounds %struct.ObjectRen, ptr %21, i64 0, i32 13
  %25 = load i32, ptr %24, align 4, !tbaa !178
  %26 = icmp sgt i32 %25, 0
  br i1 %26, label %27, label %15

27:                                               ; preds = %20
  %28 = getelementptr inbounds %struct.ObjectRen, ptr %21, i64 0, i32 21
  br label %29

29:                                               ; preds = %27, %43
  %30 = phi i32 [ 0, %27 ], [ %46, %43 ]
  %31 = phi ptr [ %22, %27 ], [ %45, %43 ]
  %32 = phi ptr [ %23, %27 ], [ %44, %43 ]
  %33 = and i32 %30, 255
  %34 = icmp eq i32 %33, 0
  br i1 %34, label %35, label %41

35:                                               ; preds = %29
  %36 = load ptr, ptr %28, align 8, !tbaa !180
  %37 = lshr exact i32 %30, 8
  %38 = zext nneg i32 %37 to i64
  %39 = getelementptr inbounds ptr, ptr %36, i64 %38
  %40 = load ptr, ptr %39, align 8, !tbaa !47
  br label %43

41:                                               ; preds = %29
  %42 = getelementptr inbounds %struct.HaloRen, ptr %32, i64 1
  br label %43

43:                                               ; preds = %41, %35
  %44 = phi ptr [ %40, %35 ], [ %42, %41 ]
  %45 = getelementptr inbounds ptr, ptr %31, i64 1
  store ptr %44, ptr %31, align 8, !tbaa !47
  %46 = add nuw nsw i32 %30, 1
  %47 = icmp eq i32 %46, %25
  br i1 %47, label %15, label %29, !llvm.loop !181

48:                                               ; preds = %15
  %49 = load ptr, ptr %11, align 8, !tbaa !176
  br label %50

50:                                               ; preds = %48, %6
  %51 = phi ptr [ %49, %48 ], [ %10, %6 ]
  %52 = sext i32 %1 to i64
  tail call void @qsort(ptr noundef %51, i64 noundef %52, i64 noundef 8, ptr noundef nonnull @verghalo) #22
  br label %53

53:                                               ; preds = %2, %50
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @init_camera_inside_volumes(ptr noundef %0) unnamed_addr #4 !PGOFuncName !182 {
  %2 = alloca [3 x float], align 8
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %2) #24
  store <2 x float> zeroinitializer, ptr %2, align 8, !tbaa !44
  %3 = getelementptr inbounds float, ptr %2, i64 2
  %4 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 36
  %5 = load float, ptr %4, align 8, !tbaa !91
  %6 = fneg float %5
  store float %6, ptr %3, align 8, !tbaa !44
  %7 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 80
  %8 = load ptr, ptr %7, align 8, !tbaa !47
  %9 = icmp eq ptr %8, null
  br i1 %9, label %41, label %10

10:                                               ; preds = %1
  %11 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 70
  %12 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 79
  br label %16

13:                                               ; preds = %38, %16
  %14 = load ptr, ptr %17, align 8, !tbaa !47
  %15 = icmp eq ptr %14, null
  br i1 %15, label %41, label %16, !llvm.loop !183

16:                                               ; preds = %10, %13
  %17 = phi ptr [ %8, %10 ], [ %14, %13 ]
  %18 = load ptr, ptr %11, align 8, !tbaa !47
  %19 = icmp eq ptr %18, null
  br i1 %19, label %13, label %20

20:                                               ; preds = %16
  %21 = getelementptr inbounds %struct.VolumeOb, ptr %17, i64 0, i32 3
  %22 = getelementptr inbounds %struct.VolumeOb, ptr %17, i64 0, i32 2
  br label %23

23:                                               ; preds = %20, %38
  %24 = phi ptr [ %18, %20 ], [ %39, %38 ]
  %25 = getelementptr inbounds %struct.ObjectInstanceRen, ptr %24, i64 0, i32 2
  %26 = load ptr, ptr %25, align 8, !tbaa !184
  %27 = load ptr, ptr %21, align 8, !tbaa !186
  %28 = icmp eq ptr %26, %27
  br i1 %28, label %29, label %38

29:                                               ; preds = %23
  %30 = call i32 @point_inside_volume_objectinstance(ptr noundef %0, ptr noundef nonnull %24, ptr noundef nonnull %2) #22
  %31 = icmp eq i32 %30, 0
  br i1 %31, label %38, label %32

32:                                               ; preds = %29
  %33 = load ptr, ptr @MEM_mallocN, align 8, !tbaa !47
  %34 = call ptr %33(i64 noundef 32, ptr noundef nonnull @.str.26) #22
  %35 = load ptr, ptr %22, align 8, !tbaa !188
  %36 = getelementptr inbounds %struct.MatInside, ptr %34, i64 0, i32 2
  store ptr %35, ptr %36, align 8, !tbaa !189
  %37 = getelementptr inbounds %struct.MatInside, ptr %34, i64 0, i32 3
  store ptr %24, ptr %37, align 8, !tbaa !191
  call void @BLI_addtail(ptr noundef nonnull %12, ptr noundef %34) #22
  br label %38

38:                                               ; preds = %23, %32, %29
  %39 = load ptr, ptr %24, align 8, !tbaa !47
  %40 = icmp eq ptr %39, null
  br i1 %40, label %13, label %23, !llvm.loop !192

41:                                               ; preds = %13, %1
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %2) #24
  ret void
}

; Function Attrs: optsize
declare void @threaded_makeshadowbufs(ptr noundef) local_unnamed_addr #7

; Function Attrs: optsize
declare void @makeraytree(ptr noundef) local_unnamed_addr #7

; Function Attrs: optsize
declare void @make_envmaps(ptr noundef) local_unnamed_addr #7

; Function Attrs: optsize
declare void @make_pointdensities(ptr noundef) local_unnamed_addr #7

; Function Attrs: optsize
declare void @make_voxeldata(ptr noundef) local_unnamed_addr #7

; Function Attrs: optsize
declare void @project_renderdata(ptr noundef, ptr noundef, i8 noundef zeroext, float noundef, i8 noundef zeroext) local_unnamed_addr #7

; Function Attrs: optsize
declare void @projectverto(ptr noundef, ptr noundef, ptr noundef) #7

; Function Attrs: optsize
declare void @make_occ_tree(ptr noundef) local_unnamed_addr #7

; Function Attrs: optsize
declare void @make_sss_tree(ptr noundef) local_unnamed_addr #7

; Function Attrs: optsize
declare void @volume_precache(ptr noundef) local_unnamed_addr #7

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @RE_DataBase_ApplyWindow(ptr noundef %0) local_unnamed_addr #4 {
  tail call void @project_renderdata(ptr noundef %0, ptr noundef nonnull @projectverto, i8 noundef zeroext 0, float noundef 0.000000e+00, i8 noundef zeroext 0) #22
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @RE_DataBase_IncrementalView(ptr noundef %0, ptr noundef %1, i32 noundef %2) local_unnamed_addr #4 {
  %4 = alloca [4 x [4 x float]], align 16
  %5 = alloca [4 x [4 x float]], align 16
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %4) #24
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %5) #24
  %6 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 34
  %7 = call zeroext i8 @invert_m4_m4(ptr noundef nonnull %4, ptr noundef nonnull %6) #22
  call void @mul_m4_m4m4(ptr noundef nonnull %5, ptr noundef %1, ptr noundef nonnull %4) #22
  %8 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 32
  call void @copy_m4_m4(ptr noundef nonnull %8, ptr noundef %1) #22
  %9 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 33
  %10 = call zeroext i8 @invert_m4_m4(ptr noundef nonnull %9, ptr noundef nonnull %8) #22
  call fastcc void @init_camera_inside_volumes(ptr noundef %0) #23
  %11 = icmp eq i32 %2, 0
  %12 = zext i1 %11 to i32
  call void @env_rotate_scene(ptr noundef %0, ptr noundef nonnull %5, i32 noundef %12) #22
  %13 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 45, i32 47
  %14 = load i32, ptr %13, align 8, !tbaa !87
  %15 = and i32 %14, 2097152
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %25, label %17

17:                                               ; preds = %3
  %18 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 96
  %19 = load ptr, ptr %18, align 8, !tbaa !129
  %20 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 97
  %21 = load ptr, ptr %20, align 8, !tbaa !130
  %22 = call i32 %19(ptr noundef %21) #22
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %24, label %25

24:                                               ; preds = %17
  call void @make_sss_tree(ptr noundef nonnull %0) #22
  br label %25

25:                                               ; preds = %24, %17, %3
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %5) #24
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %4) #24
  ret void
}

; Function Attrs: optsize
declare zeroext i8 @invert_m4_m4(ptr noundef, ptr noundef) local_unnamed_addr #7

; Function Attrs: optsize
declare void @mul_m4_m4m4(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #7

; Function Attrs: optsize
declare void @env_rotate_scene(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @RE_DataBase_GetView(ptr noundef %0, ptr noundef %1) local_unnamed_addr #4 {
  %3 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 32
  tail call void @copy_m4_m4(ptr noundef %1, ptr noundef nonnull %3) #22
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @RE_Database_FromScene_Vectors(ptr noundef %0, ptr noundef %1, ptr noundef %2, i32 noundef %3) local_unnamed_addr #4 {
  %5 = alloca %struct.ListBase, align 8
  %6 = alloca %struct.ListBase, align 8
  %7 = alloca %struct.ListBase, align 8
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %5) #24
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %5, i8 0, i64 16, i1 false)
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %6) #24
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %6, i8 0, i64 16, i1 false)
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %7)
  %8 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 98, i32 16
  store ptr @.str.3, ptr %8, align 8, !tbaa !123
  %9 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 45, i32 47
  %10 = load i32, ptr %9, align 8, !tbaa !87
  %11 = or i32 %10, 1048576
  store i32 %11, ptr %9, align 8, !tbaa !87
  tail call fastcc void @speedvector_project(ptr noundef %0, ptr noundef null, ptr noundef null, ptr noundef null) #23
  tail call fastcc void @database_fromscene_vectors(ptr noundef %0, ptr noundef %2, i32 noundef %3, i32 noundef -1) #23
  call fastcc void @copy_dbase_object_vectors(ptr noundef %0, ptr noundef nonnull %5) #23
  %12 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 57
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %7, ptr noundef nonnull align 8 dereferenceable(16) %12, i64 16, i1 false), !tbaa.struct !193
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %12, i8 0, i64 16, i1 false)
  %13 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 98, i32 11
  store i16 1, ptr %13, align 4, !tbaa !101
  call void @RE_Database_Free(ptr noundef %0) #23
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %12, ptr noundef nonnull align 8 dereferenceable(16) %7, i64 16, i1 false), !tbaa.struct !193
  %14 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 96
  %15 = load ptr, ptr %14, align 8, !tbaa !129
  %16 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 97
  %17 = load ptr, ptr %16, align 8, !tbaa !130
  %18 = call i32 %15(ptr noundef %17) #22
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %20, label %21

20:                                               ; preds = %4
  store ptr @.str.4, ptr %8, align 8, !tbaa !123
  call fastcc void @database_fromscene_vectors(ptr noundef nonnull %0, ptr noundef %2, i32 noundef %3, i32 noundef 1) #23
  br label %21

21:                                               ; preds = %20, %4
  call fastcc void @copy_dbase_object_vectors(ptr noundef nonnull %0, ptr noundef nonnull %6) #23
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %7, ptr noundef nonnull align 8 dereferenceable(16) %12, i64 16, i1 false), !tbaa.struct !193
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %12, i8 0, i64 16, i1 false)
  store i16 1, ptr %13, align 4, !tbaa !101
  call void @RE_Database_Free(ptr noundef nonnull %0) #23
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %12, ptr noundef nonnull align 8 dereferenceable(16) %7, i64 16, i1 false), !tbaa.struct !193
  %22 = load ptr, ptr %14, align 8, !tbaa !129
  %23 = load ptr, ptr %16, align 8, !tbaa !130
  %24 = call i32 %22(ptr noundef %23) #22
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %26, label %27

26:                                               ; preds = %21
  call void @RE_Database_FromScene(ptr noundef nonnull %0, ptr noundef %1, ptr noundef %2, i32 noundef %3, i32 noundef 1) #23
  call void @RE_Database_Preprocess(ptr noundef nonnull %0) #23
  br label %27

27:                                               ; preds = %26, %21
  %28 = load ptr, ptr %14, align 8, !tbaa !129
  %29 = load ptr, ptr %16, align 8, !tbaa !130
  %30 = call i32 %28(ptr noundef %29) #22
  %31 = icmp eq i32 %30, 0
  br i1 %31, label %32, label %150

32:                                               ; preds = %27
  %33 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 44
  %34 = load ptr, ptr %33, align 8, !tbaa !48
  %35 = call fastcc i32 @get_vector_renderlayers(ptr noundef %34) #23
  %36 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 70
  br label %37

37:                                               ; preds = %32, %149
  %38 = phi i1 [ true, %32 ], [ false, %149 ]
  %39 = phi i32 [ 0, %32 ], [ 1, %149 ]
  %40 = select i1 %38, ptr %5, ptr %6
  %41 = load ptr, ptr %40, align 8, !tbaa !194
  %42 = load ptr, ptr %36, align 8, !tbaa !47
  %43 = icmp ne ptr %42, null
  %44 = icmp ne ptr %41, null
  %45 = select i1 %43, i1 %44, i1 false
  br i1 %45, label %46, label %149

46:                                               ; preds = %37, %143
  %47 = phi ptr [ %145, %143 ], [ %42, %37 ]
  %48 = phi ptr [ %144, %143 ], [ %41, %37 ]
  %49 = getelementptr inbounds %struct.ObjectInstanceRen, ptr %47, i64 0, i32 7
  %50 = load i32, ptr %49, align 8, !tbaa !195
  %51 = and i32 %50, %35
  %52 = icmp eq i32 %51, 0
  br i1 %52, label %143, label %53

53:                                               ; preds = %46
  %54 = getelementptr inbounds %struct.ObjectInstanceRen, ptr %47, i64 0, i32 2
  %55 = load ptr, ptr %54, align 8, !tbaa !184
  %56 = getelementptr inbounds %struct.ObjectRen, ptr %55, i64 0, i32 10
  %57 = load i32, ptr %56, align 8, !tbaa !196
  %58 = getelementptr inbounds %struct.ObjectInstanceRen, ptr %47, i64 0, i32 17
  store i32 %57, ptr %58, align 8, !tbaa !197
  %59 = getelementptr inbounds %struct.ObjectInstanceRen, ptr %48, i64 0, i32 3
  %60 = load ptr, ptr %59, align 8, !tbaa !198
  %61 = getelementptr inbounds %struct.ObjectInstanceRen, ptr %47, i64 0, i32 3
  %62 = load ptr, ptr %61, align 8, !tbaa !198
  %63 = icmp eq ptr %60, %62
  br i1 %63, label %64, label %82

64:                                               ; preds = %53
  %65 = getelementptr inbounds %struct.ObjectInstanceRen, ptr %48, i64 0, i32 4
  %66 = load ptr, ptr %65, align 8, !tbaa !199
  %67 = getelementptr inbounds %struct.ObjectInstanceRen, ptr %47, i64 0, i32 4
  %68 = load ptr, ptr %67, align 8, !tbaa !199
  %69 = icmp eq ptr %66, %68
  br i1 %69, label %70, label %82

70:                                               ; preds = %64
  %71 = getelementptr inbounds %struct.ObjectInstanceRen, ptr %48, i64 0, i32 5
  %72 = load i32, ptr %71, align 8, !tbaa !200
  %73 = getelementptr inbounds %struct.ObjectInstanceRen, ptr %47, i64 0, i32 5
  %74 = load i32, ptr %73, align 8, !tbaa !200
  %75 = icmp eq i32 %72, %74
  br i1 %75, label %76, label %82

76:                                               ; preds = %70
  %77 = getelementptr inbounds %struct.ObjectInstanceRen, ptr %48, i64 0, i32 6
  %78 = load i32, ptr %77, align 4, !tbaa !201
  %79 = getelementptr inbounds %struct.ObjectInstanceRen, ptr %47, i64 0, i32 6
  %80 = load i32, ptr %79, align 4, !tbaa !201
  %81 = icmp eq i32 %78, %80
  br i1 %81, label %115, label %82

82:                                               ; preds = %76, %70, %64, %53
  %83 = load ptr, ptr %40, align 8, !tbaa !47
  %84 = icmp eq ptr %83, null
  br i1 %84, label %112, label %85

85:                                               ; preds = %82
  %86 = getelementptr inbounds %struct.ObjectInstanceRen, ptr %47, i64 0, i32 4
  %87 = getelementptr inbounds %struct.ObjectInstanceRen, ptr %47, i64 0, i32 5
  %88 = getelementptr inbounds %struct.ObjectInstanceRen, ptr %47, i64 0, i32 6
  br label %89

89:                                               ; preds = %85, %109
  %90 = phi ptr [ %83, %85 ], [ %110, %109 ]
  %91 = getelementptr inbounds %struct.ObjectInstanceRen, ptr %90, i64 0, i32 3
  %92 = load ptr, ptr %91, align 8, !tbaa !198
  %93 = icmp eq ptr %92, %62
  br i1 %93, label %94, label %109

94:                                               ; preds = %89
  %95 = getelementptr inbounds %struct.ObjectInstanceRen, ptr %90, i64 0, i32 4
  %96 = load ptr, ptr %95, align 8, !tbaa !199
  %97 = load ptr, ptr %86, align 8, !tbaa !199
  %98 = icmp eq ptr %96, %97
  br i1 %98, label %99, label %109

99:                                               ; preds = %94
  %100 = getelementptr inbounds %struct.ObjectInstanceRen, ptr %90, i64 0, i32 5
  %101 = load i32, ptr %100, align 8, !tbaa !200
  %102 = load i32, ptr %87, align 8, !tbaa !200
  %103 = icmp eq i32 %101, %102
  br i1 %103, label %104, label %109

104:                                              ; preds = %99
  %105 = getelementptr inbounds %struct.ObjectInstanceRen, ptr %90, i64 0, i32 6
  %106 = load i32, ptr %105, align 4, !tbaa !201
  %107 = load i32, ptr %88, align 4, !tbaa !201
  %108 = icmp eq i32 %106, %107
  br i1 %108, label %115, label %109

109:                                              ; preds = %89, %94, %99, %104
  %110 = load ptr, ptr %90, align 8, !tbaa !47
  %111 = icmp eq ptr %110, null
  br i1 %111, label %112, label %89, !llvm.loop !202

112:                                              ; preds = %109, %82
  %113 = getelementptr inbounds %struct.ID, ptr %62, i64 0, i32 4, i64 2
  %114 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.5, ptr noundef nonnull %113) #23
  br label %143

115:                                              ; preds = %104, %76
  %116 = phi ptr [ %48, %76 ], [ %90, %104 ]
  %117 = call ptr @modifiers_findByType(ptr noundef %62, i32 noundef 26) #22
  %118 = icmp eq ptr %117, null
  br i1 %118, label %129, label %119

119:                                              ; preds = %115
  %120 = getelementptr inbounds %struct.FluidsimModifierData, ptr %117, i64 0, i32 1
  %121 = load ptr, ptr %120, align 8, !tbaa !203
  %122 = icmp eq ptr %121, null
  br i1 %122, label %129, label %123

123:                                              ; preds = %119
  %124 = getelementptr inbounds %struct.FluidsimSettings, ptr %121, i64 0, i32 3
  %125 = load i16, ptr %124, align 8, !tbaa !206
  %126 = and i16 %125, 2
  %127 = icmp eq i16 %126, 0
  br i1 %127, label %129, label %128

128:                                              ; preds = %123
  call fastcc void @load_fluidsimspeedvectors(ptr noundef %0, ptr noundef nonnull %47, i32 noundef %39) #23
  br label %141

129:                                              ; preds = %123, %119, %115
  %130 = load i32, ptr %58, align 8, !tbaa !197
  %131 = getelementptr inbounds %struct.ObjectInstanceRen, ptr %116, i64 0, i32 17
  %132 = load i32, ptr %131, align 8, !tbaa !197
  %133 = icmp eq i32 %130, %132
  br i1 %133, label %134, label %137

134:                                              ; preds = %129
  %135 = getelementptr inbounds %struct.ObjectInstanceRen, ptr %116, i64 0, i32 16
  %136 = load ptr, ptr %135, align 8, !tbaa !208
  call fastcc void @calculate_speedvectors(ptr noundef %0, ptr noundef nonnull %47, ptr noundef %136, i32 noundef %39) #23
  br label %141

137:                                              ; preds = %129
  %138 = load ptr, ptr %61, align 8, !tbaa !198
  %139 = getelementptr inbounds %struct.ID, ptr %138, i64 0, i32 4, i64 2
  %140 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.6, ptr noundef nonnull %139) #23
  br label %141

141:                                              ; preds = %134, %137, %128
  %142 = load ptr, ptr %116, align 8, !tbaa !209
  br label %143

143:                                              ; preds = %46, %141, %112
  %144 = phi ptr [ %83, %112 ], [ %142, %141 ], [ %48, %46 ]
  %145 = load ptr, ptr %47, align 8, !tbaa !47
  %146 = icmp ne ptr %145, null
  %147 = icmp ne ptr %144, null
  %148 = select i1 %146, i1 %147, i1 false
  br i1 %148, label %46, label %149, !llvm.loop !210

149:                                              ; preds = %143, %37
  br i1 %38, label %37, label %150, !llvm.loop !211

150:                                              ; preds = %149, %27
  call fastcc void @free_dbase_object_vectors(ptr noundef nonnull %5) #23
  call fastcc void @free_dbase_object_vectors(ptr noundef nonnull %6) #23
  %151 = load ptr, ptr %12, align 8, !tbaa !47
  %152 = icmp eq ptr %151, null
  br i1 %152, label %169, label %153

153:                                              ; preds = %150, %166
  %154 = phi ptr [ %167, %166 ], [ %151, %150 ]
  %155 = getelementptr inbounds %struct.StrandSurface, ptr %154, i64 0, i32 8
  %156 = load ptr, ptr %155, align 8, !tbaa !212
  %157 = icmp eq ptr %156, null
  br i1 %157, label %160, label %158

158:                                              ; preds = %153
  %159 = load ptr, ptr @MEM_freeN, align 8, !tbaa !47
  call void %159(ptr noundef nonnull %156) #22
  store ptr null, ptr %155, align 8, !tbaa !212
  br label %160

160:                                              ; preds = %158, %153
  %161 = getelementptr inbounds %struct.StrandSurface, ptr %154, i64 0, i32 9
  %162 = load ptr, ptr %161, align 8, !tbaa !214
  %163 = icmp eq ptr %162, null
  br i1 %163, label %166, label %164

164:                                              ; preds = %160
  %165 = load ptr, ptr @MEM_freeN, align 8, !tbaa !47
  call void %165(ptr noundef nonnull %162) #22
  store ptr null, ptr %161, align 8, !tbaa !214
  br label %166

166:                                              ; preds = %160, %164
  %167 = load ptr, ptr %154, align 8, !tbaa !47
  %168 = icmp eq ptr %167, null
  br i1 %168, label %169, label %153, !llvm.loop !215

169:                                              ; preds = %166, %150
  %170 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 98
  store ptr null, ptr %8, align 8, !tbaa !123
  %171 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 90
  %172 = load ptr, ptr %171, align 8, !tbaa !134
  %173 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 91
  %174 = load ptr, ptr %173, align 8, !tbaa !135
  call void %172(ptr noundef %174, ptr noundef nonnull %170) #22
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %7)
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %6) #24
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %5) #24
  ret void
}

; Function Attrs: mustprogress nofree noinline nounwind optsize willreturn memory(readwrite, inaccessiblemem: write) uwtable
define internal fastcc void @speedvector_project(ptr noundef readonly %0, ptr nocapture noundef writeonly %1, ptr nocapture noundef readonly %2, ptr nocapture noundef readonly %3) unnamed_addr #9 !PGOFuncName !216 {
  %5 = alloca [3 x float], align 4
  %6 = icmp eq ptr %0, null
  br i1 %6, label %44, label %7

7:                                                ; preds = %4
  %8 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 45, i32 47
  %9 = load i32, ptr %8, align 8, !tbaa !87
  %10 = and i32 %9, 1024
  store i32 %10, ptr @speedvector_project.pano, align 4, !tbaa !78
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %35, label %12

12:                                               ; preds = %7
  %13 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 16
  %14 = tail call fastcc float @BLI_rctf_size_x(ptr noundef nonnull %13) #23
  %15 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 13
  %16 = load i32, ptr %15, align 4, !tbaa !217
  %17 = sitofp i32 %16 to float
  %18 = fdiv float %14, %17
  %19 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 36
  %20 = load float, ptr %19, align 8, !tbaa !91
  %21 = fdiv float %18, %20
  %22 = fpext float %21 to double
  %23 = tail call double @atan(double noundef %22) #22
  %24 = fptrunc double %23 to float
  store float %24, ptr @speedvector_project.pixelphix, align 4, !tbaa !44
  %25 = tail call fastcc float @BLI_rctf_size_y(ptr noundef nonnull %13) #23
  %26 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 14
  %27 = load i32, ptr %26, align 8, !tbaa !218
  %28 = sitofp i32 %27 to float
  %29 = fdiv float %25, %28
  %30 = load float, ptr %19, align 8, !tbaa !91
  %31 = fdiv float %29, %30
  %32 = fpext float %31 to double
  %33 = tail call double @atan(double noundef %32) #22
  %34 = fptrunc double %33 to float
  store float %34, ptr @speedvector_project.pixelphiy, align 4, !tbaa !44
  br label %35

35:                                               ; preds = %12, %7
  %36 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 13
  %37 = load i32, ptr %36, align 4, !tbaa !217
  %38 = sdiv i32 %37, 2
  %39 = sitofp i32 %38 to float
  store float %39, ptr @speedvector_project.zmulx, align 4, !tbaa !44
  %40 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 14
  %41 = load i32, ptr %40, align 8, !tbaa !218
  %42 = sdiv i32 %41, 2
  %43 = sitofp i32 %42 to float
  store float %43, ptr @speedvector_project.zmuly, align 4, !tbaa !44
  br label %91

44:                                               ; preds = %4
  %45 = load i32, ptr @speedvector_project.pano, align 4, !tbaa !78
  %46 = icmp eq i32 %45, 0
  br i1 %46, label %75, label %47

47:                                               ; preds = %44
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %5) #24
  call fastcc void @copy_v3_v3(ptr noundef nonnull %5, ptr noundef %2) #23
  %48 = getelementptr inbounds [3 x float], ptr %5, i64 0, i64 2
  %49 = load float, ptr %48, align 4, !tbaa !44
  %50 = fneg float %49
  %51 = load float, ptr %5, align 4, !tbaa !44
  %52 = fmul float %49, %49
  %53 = tail call float @llvm.fmuladd.f32(float %51, float %51, float %52)
  %54 = tail call float @llvm.sqrt.f32(float %53)
  %55 = fdiv float %50, %54
  %56 = tail call fastcc float @saacos(float noundef %55) #23
  %57 = fcmp olt float %51, 0.000000e+00
  %58 = fneg float %56
  %59 = select i1 %57, float %58, float %56
  %60 = load float, ptr @speedvector_project.pixelphix, align 4, !tbaa !44
  %61 = fdiv float %59, %60
  %62 = load float, ptr @speedvector_project.zmulx, align 4, !tbaa !44
  %63 = fadd float %61, %62
  store float %63, ptr %1, align 4, !tbaa !44
  %64 = getelementptr inbounds [3 x float], ptr %5, i64 0, i64 1
  %65 = load float, ptr %64, align 4, !tbaa !44
  %66 = call fastcc float @len_v3(ptr noundef nonnull %5) #23
  %67 = fdiv float %65, %66
  %68 = tail call fastcc float @saacos(float noundef %67) #23
  %69 = fsub float 0x3FF921FB60000000, %68
  %70 = load float, ptr @speedvector_project.pixelphiy, align 4, !tbaa !44
  %71 = fdiv float %69, %70
  %72 = load float, ptr @speedvector_project.zmuly, align 4, !tbaa !44
  %73 = fadd float %71, %72
  %74 = getelementptr inbounds float, ptr %1, i64 1
  store float %73, ptr %74, align 4, !tbaa !44
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %5) #24
  br label %91

75:                                               ; preds = %44
  %76 = getelementptr inbounds float, ptr %3, i64 3
  %77 = load float, ptr %76, align 4, !tbaa !44
  %78 = fcmp olt float %77, 0x3FB99999A0000000
  %79 = fdiv float 1.000000e+00, %77
  %80 = select i1 %78, float 1.000000e+01, float %79
  %81 = load float, ptr @speedvector_project.zmulx, align 4, !tbaa !44
  %82 = load float, ptr %3, align 4, !tbaa !44
  %83 = tail call float @llvm.fmuladd.f32(float %82, float %80, float 1.000000e+00)
  %84 = fmul float %81, %83
  store float %84, ptr %1, align 4, !tbaa !44
  %85 = load float, ptr @speedvector_project.zmuly, align 4, !tbaa !44
  %86 = getelementptr inbounds float, ptr %3, i64 1
  %87 = load float, ptr %86, align 4, !tbaa !44
  %88 = tail call float @llvm.fmuladd.f32(float %87, float %80, float 1.000000e+00)
  %89 = fmul float %85, %88
  %90 = getelementptr inbounds float, ptr %1, i64 1
  store float %89, ptr %90, align 4, !tbaa !44
  br label %91

91:                                               ; preds = %47, %75, %35
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @database_fromscene_vectors(ptr noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef %3) unnamed_addr #4 !PGOFuncName !219 {
  %5 = alloca [4 x [4 x float]], align 16
  %6 = tail call ptr @RE_GetCamera(ptr noundef %0) #22
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %5) #24
  %7 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 44
  store ptr %1, ptr %7, align 8, !tbaa !48
  %8 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 48
  store i32 %2, ptr %8, align 8, !tbaa !121
  %9 = tail call ptr @BLI_memarena_new(i64 noundef 16376, ptr noundef nonnull @.str.27) #22
  %10 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 81
  store ptr %9, ptr %10, align 8, !tbaa !117
  %11 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 60
  %12 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 98, i32 1
  %13 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 66
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(20) %11, i8 0, i64 20, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %13, i8 0, i64 16, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(20) %12, i8 0, i64 20, i1 false)
  store i32 0, ptr @slurph_opt, align 4, !tbaa !78
  %14 = load i32, ptr %8, align 8, !tbaa !121
  %15 = icmp ult i32 %14, 16777216
  %16 = and i32 %2, -16777216
  %17 = select i1 %15, i32 %2, i32 %16
  %18 = getelementptr inbounds %struct.Scene, ptr %1, i64 0, i32 22, i32 5
  %19 = load i32, ptr %18, align 8, !tbaa !124
  %20 = add nsw i32 %19, %3
  store i32 %20, ptr %18, align 8, !tbaa !124
  %21 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 101
  %22 = load ptr, ptr %21, align 8, !tbaa !127
  %23 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 43
  %24 = load ptr, ptr %23, align 8, !tbaa !110
  %25 = load ptr, ptr %7, align 8, !tbaa !48
  tail call void @BKE_scene_update_for_newframe(ptr noundef %22, ptr noundef %24, ptr noundef %25, i32 noundef %17) #22
  %26 = icmp eq ptr %6, null
  br i1 %26, label %30, label %27

27:                                               ; preds = %4
  %28 = getelementptr inbounds %struct.Object, ptr %6, i64 0, i32 47
  call void @normalize_m4_m4(ptr noundef nonnull %5, ptr noundef nonnull %28) #22
  %29 = call zeroext i8 @invert_m4(ptr noundef nonnull %5) #22
  call void @RE_SetView(ptr noundef nonnull %0, ptr noundef nonnull %5) #22
  br label %30

30:                                               ; preds = %27, %4
  call fastcc void @database_init_objects(ptr noundef nonnull %0, i32 noundef %17, i32 noundef 0, i32 noundef 0, ptr noundef null, i32 noundef %3) #23
  %31 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 96
  %32 = load ptr, ptr %31, align 8, !tbaa !129
  %33 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 97
  %34 = load ptr, ptr %33, align 8, !tbaa !130
  %35 = call i32 %32(ptr noundef %34) #22
  %36 = icmp eq i32 %35, 0
  br i1 %36, label %37, label %43

37:                                               ; preds = %30
  %38 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 45, i32 47
  %39 = load i32, ptr %38, align 8, !tbaa !87
  %40 = lshr i32 %39, 10
  %41 = trunc i32 %40 to i8
  %42 = and i8 %41, 1
  call void @project_renderdata(ptr noundef nonnull %0, ptr noundef nonnull @projectverto, i8 noundef zeroext %42, float noundef 0.000000e+00, i8 noundef zeroext 1) #22
  br label %43

43:                                               ; preds = %37, %30
  %44 = load i32, ptr %18, align 8, !tbaa !124
  %45 = sub nsw i32 %44, %3
  store i32 %45, ptr %18, align 8, !tbaa !124
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %5) #24
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @copy_dbase_object_vectors(ptr noundef %0, ptr noundef %1) unnamed_addr #4 !PGOFuncName !220 {
  %3 = alloca [4 x float], align 16
  %4 = alloca [4 x [4 x float]], align 16
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %3) #24
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %4) #24
  %5 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 70
  %6 = load ptr, ptr %5, align 8, !tbaa !47
  %7 = icmp eq ptr %6, null
  br i1 %7, label %63, label %8

8:                                                ; preds = %2
  %9 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 35
  br label %10

10:                                               ; preds = %8, %59
  %11 = phi ptr [ %6, %8 ], [ %61, %59 ]
  %12 = phi ptr [ null, %8 ], [ %60, %59 ]
  %13 = getelementptr inbounds %struct.ObjectInstanceRen, ptr %11, i64 0, i32 2
  %14 = load ptr, ptr %13, align 8, !tbaa !184
  %15 = load ptr, ptr @MEM_mallocN, align 8, !tbaa !47
  %16 = call ptr %15(i64 noundef 288, ptr noundef nonnull @.str.28) #22
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(288) %16, ptr noundef nonnull align 8 dereferenceable(288) %11, i64 288, i1 false)
  call void @BLI_addtail(ptr noundef %1, ptr noundef %16) #22
  %17 = getelementptr inbounds %struct.ObjectRen, ptr %14, i64 0, i32 10
  %18 = load i32, ptr %17, align 8, !tbaa !196
  %19 = getelementptr inbounds %struct.ObjectInstanceRen, ptr %16, i64 0, i32 17
  store i32 %18, ptr %19, align 8, !tbaa !197
  %20 = icmp sgt i32 %18, 0
  br i1 %20, label %21, label %59

21:                                               ; preds = %10
  %22 = load ptr, ptr @MEM_mallocN, align 8, !tbaa !47
  %23 = zext nneg i32 %18 to i64
  %24 = shl nuw nsw i64 %23, 3
  %25 = call ptr %22(i64 noundef %24, ptr noundef nonnull @.str.29) #22
  %26 = getelementptr inbounds %struct.ObjectInstanceRen, ptr %16, i64 0, i32 16
  store ptr %25, ptr %26, align 8, !tbaa !208
  %27 = getelementptr inbounds %struct.ObjectInstanceRen, ptr %11, i64 0, i32 11
  %28 = load i16, ptr %27, align 8, !tbaa !221
  %29 = and i16 %28, 3
  %30 = icmp eq i16 %29, 0
  br i1 %30, label %33, label %31

31:                                               ; preds = %21
  %32 = getelementptr inbounds %struct.ObjectInstanceRen, ptr %11, i64 0, i32 8
  call void @mul_m4_m4m4(ptr noundef nonnull %4, ptr noundef nonnull %9, ptr noundef nonnull %32) #22
  br label %34

33:                                               ; preds = %21
  call void @copy_m4_m4(ptr noundef nonnull %4, ptr noundef nonnull %9) #22
  br label %34

34:                                               ; preds = %33, %31
  %35 = load i32, ptr %17, align 8, !tbaa !196
  %36 = icmp sgt i32 %35, 0
  br i1 %36, label %37, label %59

37:                                               ; preds = %34
  %38 = getelementptr inbounds %struct.ObjectRen, ptr %14, i64 0, i32 18
  br label %39

39:                                               ; preds = %37, %53
  %40 = phi i32 [ 0, %37 ], [ %55, %53 ]
  %41 = phi ptr [ %25, %37 ], [ %56, %53 ]
  %42 = phi ptr [ %12, %37 ], [ %54, %53 ]
  %43 = and i32 %40, 255
  %44 = icmp eq i32 %43, 0
  br i1 %44, label %45, label %51

45:                                               ; preds = %39
  %46 = load ptr, ptr %38, align 8, !tbaa !222
  %47 = lshr exact i32 %40, 8
  %48 = zext nneg i32 %47 to i64
  %49 = getelementptr inbounds %struct.VertTableNode, ptr %46, i64 %48
  %50 = load ptr, ptr %49, align 8, !tbaa !223
  br label %53

51:                                               ; preds = %39
  %52 = getelementptr inbounds %struct.VertRen, ptr %42, i64 1
  br label %53

53:                                               ; preds = %51, %45
  %54 = phi ptr [ %50, %45 ], [ %52, %51 ]
  call void @projectvert(ptr noundef %54, ptr noundef nonnull %4, ptr noundef nonnull %3) #22
  call fastcc void @speedvector_project(ptr noundef null, ptr noundef %41, ptr noundef %54, ptr noundef nonnull %3) #23
  %55 = add nuw nsw i32 %40, 1
  %56 = getelementptr inbounds float, ptr %41, i64 2
  %57 = load i32, ptr %17, align 8, !tbaa !196
  %58 = icmp slt i32 %55, %57
  br i1 %58, label %39, label %59, !llvm.loop !225

59:                                               ; preds = %53, %34, %10
  %60 = phi ptr [ %12, %10 ], [ %12, %34 ], [ %54, %53 ]
  %61 = load ptr, ptr %11, align 8, !tbaa !47
  %62 = icmp eq ptr %61, null
  br i1 %62, label %63, label %10, !llvm.loop !226

63:                                               ; preds = %59, %2
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %4) #24
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %3) #24
  ret void
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(read, inaccessiblemem: none) uwtable
define internal fastcc i32 @get_vector_renderlayers(ptr nocapture noundef readonly %0) unnamed_addr #10 !PGOFuncName !227 {
  %2 = getelementptr inbounds %struct.Scene, ptr %0, i64 0, i32 22, i32 60
  %3 = load ptr, ptr %2, align 8, !tbaa !47
  %4 = icmp eq ptr %3, null
  br i1 %4, label %20, label %5

5:                                                ; preds = %1, %16
  %6 = phi ptr [ %18, %16 ], [ %3, %1 ]
  %7 = phi i32 [ %17, %16 ], [ 0, %1 ]
  %8 = getelementptr inbounds %struct.SceneRenderLayer, ptr %6, i64 0, i32 9
  %9 = load i32, ptr %8, align 8, !tbaa !228
  %10 = and i32 %9, 512
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %16, label %12

12:                                               ; preds = %5
  %13 = getelementptr inbounds %struct.SceneRenderLayer, ptr %6, i64 0, i32 5
  %14 = load i32, ptr %13, align 8, !tbaa !229
  %15 = or i32 %14, %7
  br label %16

16:                                               ; preds = %5, %12
  %17 = phi i32 [ %15, %12 ], [ %7, %5 ]
  %18 = load ptr, ptr %6, align 8, !tbaa !47
  %19 = icmp eq ptr %18, null
  br i1 %19, label %20, label %5, !llvm.loop !230

20:                                               ; preds = %16, %1
  %21 = phi i32 [ 0, %1 ], [ %17, %16 ]
  ret i32 %21
}

; Function Attrs: nofree nounwind optsize
declare noundef i32 @printf(ptr nocapture noundef readonly, ...) local_unnamed_addr #11

; Function Attrs: optsize
declare ptr @modifiers_findByType(ptr noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @load_fluidsimspeedvectors(ptr noundef %0, ptr noundef %1, i32 noundef %2) unnamed_addr #4 !PGOFuncName !231 {
  %4 = alloca [4 x float], align 16
  %5 = alloca [4 x float], align 16
  %6 = alloca [4 x float], align 16
  %7 = alloca [4 x float], align 16
  %8 = alloca [4 x float], align 16
  %9 = alloca [4 x [4 x float]], align 16
  %10 = alloca [4 x [4 x float]], align 16
  %11 = alloca [4 x [4 x float]], align 16
  %12 = getelementptr inbounds %struct.ObjectInstanceRen, ptr %1, i64 0, i32 2
  %13 = load ptr, ptr %12, align 8, !tbaa !184
  %14 = getelementptr inbounds %struct.ObjectRen, ptr %13, i64 0, i32 2
  %15 = load ptr, ptr %14, align 8, !tbaa !232
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %4) #24
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %4, i8 0, i64 16, i1 false)
  %16 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 13
  %17 = load <2 x i32>, ptr %16, align 4, !tbaa !78
  %18 = sdiv <2 x i32> %17, <i32 2, i32 2>
  %19 = sitofp <2 x i32> %18 to <2 x float>
  %20 = extractelement <2 x i32> %17, i64 0
  %21 = sitofp i32 %20 to float
  %22 = extractelement <2 x i32> %17, i64 1
  %23 = sitofp i32 %22 to float
  %24 = fmul float %21, %23
  %25 = tail call float @sqrtf(float noundef %24) #22
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %5) #24
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %6) #24
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %7) #24
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %8) #24
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %9) #24
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %10) #24
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %11) #24
  %26 = tail call ptr @modifiers_findByType(ptr noundef %15, i32 noundef 26) #22
  %27 = icmp ne i32 %2, 0
  %28 = icmp eq ptr %26, null
  %29 = select i1 %27, i1 true, i1 %28
  br i1 %29, label %154, label %30

30:                                               ; preds = %3
  %31 = getelementptr inbounds %struct.FluidsimModifierData, ptr %26, i64 0, i32 1
  %32 = load ptr, ptr %31, align 8, !tbaa !203
  %33 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 32
  call void @copy_m4_m4(ptr noundef nonnull %9, ptr noundef nonnull %33) #22
  %34 = call zeroext i8 @invert_m4_m4(ptr noundef nonnull %11, ptr noundef nonnull %9) #22
  %35 = getelementptr inbounds %struct.FluidsimSettings, ptr %32, i64 0, i32 43
  %36 = load ptr, ptr %35, align 8, !tbaa !233
  %37 = icmp eq ptr %36, null
  br i1 %37, label %154, label %38

38:                                               ; preds = %30
  %39 = getelementptr inbounds %struct.ObjectRen, ptr %13, i64 0, i32 10
  %40 = load i32, ptr %39, align 8, !tbaa !196
  %41 = getelementptr inbounds %struct.FluidsimSettings, ptr %32, i64 0, i32 44
  %42 = load i32, ptr %41, align 8, !tbaa !234
  %43 = icmp eq i32 %40, %42
  br i1 %43, label %44, label %154

44:                                               ; preds = %38
  %45 = getelementptr inbounds %struct.ObjectInstanceRen, ptr %1, i64 0, i32 11
  %46 = load i16, ptr %45, align 8, !tbaa !221
  %47 = and i16 %46, 3
  %48 = icmp eq i16 %47, 0
  %49 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 35
  br i1 %48, label %52, label %50

50:                                               ; preds = %44
  %51 = getelementptr inbounds %struct.ObjectInstanceRen, ptr %1, i64 0, i32 8
  call void @mul_m4_m4m4(ptr noundef nonnull %10, ptr noundef nonnull %49, ptr noundef nonnull %51) #22
  br label %53

52:                                               ; preds = %44
  call void @copy_m4_m4(ptr noundef nonnull %10, ptr noundef nonnull %49) #22
  br label %53

53:                                               ; preds = %52, %50
  %54 = load i32, ptr %39, align 8, !tbaa !196
  %55 = icmp sgt i32 %54, 0
  br i1 %55, label %56, label %61

56:                                               ; preds = %53
  %57 = zext nneg i32 %54 to i64
  br label %58

58:                                               ; preds = %56, %72
  %59 = phi i64 [ 0, %56 ], [ %73, %72 ]
  %60 = getelementptr inbounds %struct.FluidVertexVelocity, ptr %36, i64 %59
  br label %63

61:                                               ; preds = %72, %53
  %62 = sitofp i32 %54 to float
  br label %87

63:                                               ; preds = %58, %63
  %64 = phi i64 [ 0, %58 ], [ %70, %63 ]
  %65 = getelementptr inbounds [3 x float], ptr %60, i64 0, i64 %64
  %66 = load float, ptr %65, align 4, !tbaa !44
  %67 = getelementptr inbounds [4 x float], ptr %4, i64 0, i64 %64
  %68 = load float, ptr %67, align 4, !tbaa !44
  %69 = fadd float %66, %68
  store float %69, ptr %67, align 4, !tbaa !44
  %70 = add nuw nsw i64 %64, 1
  %71 = icmp eq i64 %70, 3
  br i1 %71, label %72, label %63, !llvm.loop !235

72:                                               ; preds = %63
  %73 = add nuw nsw i64 %59, 1
  %74 = icmp eq i64 %73, %57
  br i1 %74, label %61, label %58, !llvm.loop !236

75:                                               ; preds = %87
  br i1 %55, label %76, label %154

76:                                               ; preds = %75
  %77 = getelementptr inbounds %struct.ObjectRen, ptr %13, i64 0, i32 18
  %78 = getelementptr inbounds [4 x float], ptr %7, i64 0, i64 3
  %79 = getelementptr inbounds [4 x float], ptr %7, i64 0, i64 1
  %80 = getelementptr inbounds [4 x float], ptr %7, i64 0, i64 2
  %81 = getelementptr inbounds [4 x float], ptr %4, i64 0, i64 2
  %82 = getelementptr inbounds [4 x [4 x float]], ptr %11, i64 0, i64 1
  %83 = getelementptr inbounds [4 x float], ptr %8, i64 0, i64 1
  %84 = getelementptr inbounds [4 x [4 x float]], ptr %11, i64 0, i64 2
  %85 = getelementptr inbounds [4 x float], ptr %8, i64 0, i64 2
  %86 = getelementptr inbounds [4 x float], ptr %6, i64 0, i64 3
  br label %94

87:                                               ; preds = %61, %87
  %88 = phi i64 [ 0, %61 ], [ %92, %87 ]
  %89 = getelementptr inbounds [4 x float], ptr %4, i64 0, i64 %88
  %90 = load float, ptr %89, align 4, !tbaa !44
  %91 = fdiv float %90, %62
  store float %91, ptr %89, align 4, !tbaa !44
  %92 = add nuw nsw i64 %88, 1
  %93 = icmp eq i64 %92, 3
  br i1 %93, label %75, label %87, !llvm.loop !237

94:                                               ; preds = %76, %146
  %95 = phi i64 [ 0, %76 ], [ %150, %146 ]
  %96 = phi ptr [ null, %76 ], [ %110, %146 ]
  %97 = mul nuw nsw i64 %95, 12
  %98 = getelementptr i8, ptr %36, i64 %97
  %99 = and i64 %95, 255
  %100 = icmp eq i64 %99, 0
  br i1 %100, label %101, label %107

101:                                              ; preds = %94
  %102 = load ptr, ptr %77, align 8, !tbaa !222
  %103 = lshr exact i64 %95, 8
  %104 = and i64 %103, 16777215
  %105 = getelementptr inbounds %struct.VertTableNode, ptr %102, i64 %104
  %106 = load ptr, ptr %105, align 8, !tbaa !223
  br label %109

107:                                              ; preds = %94
  %108 = getelementptr inbounds %struct.VertRen, ptr %96, i64 1
  br label %109

109:                                              ; preds = %107, %101
  %110 = phi ptr [ %106, %101 ], [ %108, %107 ]
  store float 0.000000e+00, ptr %78, align 4, !tbaa !44
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(12) %7, ptr noundef nonnull align 4 dereferenceable(12) %98, i64 12, i1 false), !tbaa !44
  %111 = load float, ptr %7, align 16, !tbaa !44
  %112 = fcmp oeq float %111, 0.000000e+00
  %113 = load float, ptr %79, align 4
  %114 = fcmp oeq float %113, 0.000000e+00
  %115 = select i1 %112, i1 %114, i1 false
  %116 = load float, ptr %80, align 8
  %117 = fcmp oeq float %116, 0.000000e+00
  %118 = select i1 %115, i1 %117, i1 false
  br i1 %118, label %119, label %122

119:                                              ; preds = %109
  %120 = load <2 x float>, ptr %4, align 16, !tbaa !44
  store <2 x float> %120, ptr %7, align 16, !tbaa !44
  %121 = load float, ptr %81, align 8, !tbaa !44
  store float %121, ptr %80, align 8, !tbaa !44
  br label %122

122:                                              ; preds = %119, %109
  %123 = call fastcc float @dot_v3v3(ptr noundef nonnull %11, ptr noundef nonnull %7) #23
  store float %123, ptr %8, align 16, !tbaa !44
  %124 = call fastcc float @dot_v3v3(ptr noundef nonnull %82, ptr noundef nonnull %7) #23
  store float %124, ptr %83, align 4, !tbaa !44
  %125 = call fastcc float @dot_v3v3(ptr noundef nonnull %84, ptr noundef nonnull %7) #23
  store float %125, ptr %85, align 8, !tbaa !44
  call void @projectvert(ptr noundef nonnull %8, ptr noundef nonnull %10, ptr noundef nonnull %5) #22
  call void @projectvert(ptr noundef %110, ptr noundef nonnull %10, ptr noundef nonnull %6) #22
  %126 = load float, ptr %86, align 4, !tbaa !44
  %127 = fcmp olt float %126, 0x3FB99999A0000000
  %128 = fdiv float 1.000000e+00, %126
  %129 = select i1 %127, float 1.000000e+01, float %128
  %130 = load <2 x float>, ptr %5, align 16, !tbaa !44
  %131 = fmul <2 x float> %130, %19
  %132 = insertelement <2 x float> poison, float %129, i64 0
  %133 = shufflevector <2 x float> %132, <2 x float> poison, <2 x i32> zeroinitializer
  %134 = fmul <2 x float> %131, %133
  %135 = fmul <2 x float> %134, %134
  %136 = extractelement <2 x float> %135, i64 1
  %137 = extractelement <2 x float> %134, i64 0
  %138 = call float @llvm.fmuladd.f32(float %137, float %137, float %136)
  %139 = fcmp ogt float %138, %24
  br i1 %139, label %140, label %146

140:                                              ; preds = %122
  %141 = call float @llvm.sqrt.f32(float %138)
  %142 = fdiv float %25, %141
  %143 = insertelement <2 x float> poison, float %142, i64 0
  %144 = shufflevector <2 x float> %143, <2 x float> poison, <2 x i32> zeroinitializer
  %145 = fmul <2 x float> %134, %144
  br label %146

146:                                              ; preds = %140, %122
  %147 = phi <2 x float> [ %145, %140 ], [ %134, %122 ]
  %148 = shufflevector <2 x float> %147, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 1>
  %149 = call ptr @RE_vertren_get_winspeed(ptr noundef %1, ptr noundef %110, i32 noundef 1) #22
  store <4 x float> %148, ptr %149, align 4, !tbaa !44
  %150 = add nuw nsw i64 %95, 1
  %151 = trunc i64 %150 to i32
  %152 = load i32, ptr %39, align 8, !tbaa !196
  %153 = icmp sgt i32 %152, %151
  br i1 %153, label %94, label %154, !llvm.loop !238

154:                                              ; preds = %146, %75, %38, %30, %3
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %11) #24
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %10) #24
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %9) #24
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %8) #24
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %7) #24
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %6) #24
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %5) #24
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %4) #24
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @calculate_speedvectors(ptr noundef %0, ptr noundef %1, ptr nocapture noundef readonly %2, i32 noundef %3) unnamed_addr #4 !PGOFuncName !239 {
  %5 = alloca [4 x float], align 16
  %6 = alloca [4 x [4 x float]], align 16
  %7 = alloca [4 x float], align 16
  %8 = getelementptr inbounds %struct.ObjectInstanceRen, ptr %1, i64 0, i32 2
  %9 = load ptr, ptr %8, align 8, !tbaa !184
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %5) #24
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %6) #24
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %7) #24
  %10 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 13
  %11 = load i32, ptr %10, align 4, !tbaa !217
  %12 = sitofp i32 %11 to float
  %13 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 14
  %14 = load i32, ptr %13, align 8, !tbaa !218
  %15 = sitofp i32 %14 to float
  %16 = fmul float %12, %15
  %17 = tail call float @sqrtf(float noundef %16) #22
  %18 = getelementptr inbounds %struct.ObjectInstanceRen, ptr %1, i64 0, i32 11
  %19 = load i16, ptr %18, align 8, !tbaa !221
  %20 = and i16 %19, 3
  %21 = icmp eq i16 %20, 0
  %22 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 35
  br i1 %21, label %25, label %23

23:                                               ; preds = %4
  %24 = getelementptr inbounds %struct.ObjectInstanceRen, ptr %1, i64 0, i32 8
  call void @mul_m4_m4m4(ptr noundef nonnull %6, ptr noundef nonnull %22, ptr noundef nonnull %24) #22
  br label %26

25:                                               ; preds = %4
  call void @copy_m4_m4(ptr noundef nonnull %6, ptr noundef nonnull %22) #22
  br label %26

26:                                               ; preds = %25, %23
  %27 = getelementptr inbounds %struct.ObjectRen, ptr %9, i64 0, i32 18
  %28 = load ptr, ptr %27, align 8, !tbaa !222
  %29 = icmp eq ptr %28, null
  br i1 %29, label %55, label %30

30:                                               ; preds = %26
  %31 = getelementptr inbounds %struct.ObjectRen, ptr %9, i64 0, i32 10
  %32 = load i32, ptr %31, align 8, !tbaa !196
  %33 = icmp sgt i32 %32, 0
  br i1 %33, label %34, label %55

34:                                               ; preds = %30, %48
  %35 = phi ptr [ %52, %48 ], [ %2, %30 ]
  %36 = phi ptr [ %49, %48 ], [ null, %30 ]
  %37 = phi i32 [ %51, %48 ], [ 0, %30 ]
  %38 = and i32 %37, 255
  %39 = icmp eq i32 %38, 0
  br i1 %39, label %40, label %46

40:                                               ; preds = %34
  %41 = load ptr, ptr %27, align 8, !tbaa !222
  %42 = lshr exact i32 %37, 8
  %43 = zext nneg i32 %42 to i64
  %44 = getelementptr inbounds %struct.VertTableNode, ptr %41, i64 %43
  %45 = load ptr, ptr %44, align 8, !tbaa !223
  br label %48

46:                                               ; preds = %34
  %47 = getelementptr inbounds %struct.VertRen, ptr %36, i64 1
  br label %48

48:                                               ; preds = %46, %40
  %49 = phi ptr [ %45, %40 ], [ %47, %46 ]
  %50 = call ptr @RE_vertren_get_winspeed(ptr noundef %1, ptr noundef %49, i32 noundef 1) #22
  call void @projectvert(ptr noundef %49, ptr noundef nonnull %6, ptr noundef nonnull %5) #22
  call fastcc void @calculate_speedvector(ptr noundef %35, i32 noundef %3, float noundef %16, float noundef %17, ptr noundef %49, ptr noundef nonnull %5, ptr noundef %50) #23
  %51 = add nuw nsw i32 %37, 1
  %52 = getelementptr inbounds float, ptr %35, i64 2
  %53 = load i32, ptr %31, align 8, !tbaa !196
  %54 = icmp slt i32 %51, %53
  br i1 %54, label %34, label %55, !llvm.loop !240

55:                                               ; preds = %48, %30, %26
  %56 = getelementptr inbounds %struct.ObjectRen, ptr %9, i64 0, i32 20
  %57 = load ptr, ptr %56, align 8, !tbaa !241
  %58 = icmp eq ptr %57, null
  br i1 %58, label %151, label %59

59:                                               ; preds = %55
  %60 = getelementptr inbounds %struct.ObjectRen, ptr %9, i64 0, i32 22
  %61 = load ptr, ptr %60, align 8, !tbaa !242
  %62 = icmp eq ptr %61, null
  br i1 %62, label %151, label %63

63:                                               ; preds = %59
  %64 = getelementptr inbounds %struct.StrandBuffer, ptr %61, i64 0, i32 8
  %65 = load ptr, ptr %64, align 8, !tbaa !243
  %66 = icmp eq ptr %65, null
  br i1 %66, label %151, label %67

67:                                               ; preds = %63
  %68 = call fastcc ptr @calculate_strandsurface_speedvectors(ptr noundef %0, ptr noundef %1, ptr noundef nonnull %65) #23
  %69 = icmp eq ptr %68, null
  br i1 %69, label %151, label %70

70:                                               ; preds = %67
  %71 = getelementptr inbounds %struct.ObjectRen, ptr %9, i64 0, i32 12
  %72 = load i32, ptr %71, align 8, !tbaa !245
  %73 = icmp sgt i32 %72, 0
  br i1 %73, label %74, label %149

74:                                               ; preds = %70
  %75 = getelementptr inbounds %struct.StrandSurface, ptr %65, i64 0, i32 11
  %76 = getelementptr inbounds %struct.StrandSurface, ptr %65, i64 0, i32 3
  %77 = getelementptr inbounds %struct.StrandSurface, ptr %65, i64 0, i32 4
  %78 = getelementptr inbounds [4 x float], ptr %7, i64 0, i64 1
  %79 = getelementptr inbounds [4 x float], ptr %7, i64 0, i64 2
  %80 = getelementptr inbounds [4 x float], ptr %7, i64 0, i64 3
  br label %81

81:                                               ; preds = %74, %145
  %82 = phi i32 [ 0, %74 ], [ %146, %145 ]
  %83 = phi ptr [ null, %74 ], [ %95, %145 ]
  %84 = and i32 %82, 255
  %85 = icmp eq i32 %84, 0
  br i1 %85, label %86, label %92

86:                                               ; preds = %81
  %87 = load ptr, ptr %56, align 8, !tbaa !241
  %88 = lshr exact i32 %82, 8
  %89 = zext nneg i32 %88 to i64
  %90 = getelementptr inbounds %struct.StrandTableNode, ptr %87, i64 %89
  %91 = load ptr, ptr %90, align 8, !tbaa !246
  br label %94

92:                                               ; preds = %81
  %93 = getelementptr inbounds %struct.StrandRen, ptr %83, i64 1
  br label %94

94:                                               ; preds = %92, %86
  %95 = phi ptr [ %91, %86 ], [ %93, %92 ]
  %96 = call ptr @RE_strandren_get_face(ptr noundef nonnull %9, ptr noundef %95, i32 noundef 0) #22
  %97 = icmp eq ptr %96, null
  br i1 %97, label %145, label %98

98:                                               ; preds = %94
  %99 = load i32, ptr %96, align 4, !tbaa !78
  %100 = load i32, ptr %75, align 4, !tbaa !248
  %101 = icmp slt i32 %99, %100
  br i1 %101, label %102, label %145

102:                                              ; preds = %98
  %103 = call ptr @RE_strandren_get_winspeed(ptr noundef %1, ptr noundef %95, i32 noundef 1) #22
  %104 = load ptr, ptr %76, align 8, !tbaa !249
  %105 = load i32, ptr %96, align 4, !tbaa !78
  %106 = sext i32 %105 to i64
  %107 = getelementptr inbounds [4 x i32], ptr %104, i64 %106
  %108 = load ptr, ptr %77, align 8, !tbaa !250
  %109 = load i32, ptr %107, align 4, !tbaa !78
  %110 = sext i32 %109 to i64
  %111 = getelementptr inbounds [3 x float], ptr %108, i64 %110
  %112 = getelementptr inbounds i32, ptr %107, i64 1
  %113 = load i32, ptr %112, align 4, !tbaa !78
  %114 = sext i32 %113 to i64
  %115 = getelementptr inbounds [3 x float], ptr %108, i64 %114
  %116 = getelementptr inbounds i32, ptr %107, i64 2
  %117 = load i32, ptr %116, align 4, !tbaa !78
  %118 = sext i32 %117 to i64
  %119 = getelementptr inbounds [3 x float], ptr %108, i64 %118
  %120 = getelementptr inbounds i32, ptr %107, i64 3
  %121 = load i32, ptr %120, align 4, !tbaa !78
  %122 = icmp eq i32 %121, 0
  %123 = sext i32 %121 to i64
  %124 = getelementptr inbounds [3 x float], ptr %108, i64 %123
  %125 = select i1 %122, ptr null, ptr %124
  %126 = load ptr, ptr %95, align 8, !tbaa !251
  call void @interp_weights_face_v3(ptr noundef nonnull %7, ptr noundef %111, ptr noundef %115, ptr noundef %119, ptr noundef %125, ptr noundef %126) #22
  call fastcc void @zero_v4(ptr noundef %103) #23
  %127 = load i32, ptr %107, align 4, !tbaa !78
  %128 = sext i32 %127 to i64
  %129 = getelementptr inbounds [4 x float], ptr %68, i64 %128
  %130 = load float, ptr %7, align 16, !tbaa !44
  call fastcc void @madd_v4_v4fl(ptr noundef %103, ptr noundef nonnull %129, float noundef %130) #23
  %131 = load i32, ptr %112, align 4, !tbaa !78
  %132 = sext i32 %131 to i64
  %133 = getelementptr inbounds [4 x float], ptr %68, i64 %132
  %134 = load float, ptr %78, align 4, !tbaa !44
  call fastcc void @madd_v4_v4fl(ptr noundef %103, ptr noundef nonnull %133, float noundef %134) #23
  %135 = load i32, ptr %116, align 4, !tbaa !78
  %136 = sext i32 %135 to i64
  %137 = getelementptr inbounds [4 x float], ptr %68, i64 %136
  %138 = load float, ptr %79, align 8, !tbaa !44
  call fastcc void @madd_v4_v4fl(ptr noundef %103, ptr noundef nonnull %137, float noundef %138) #23
  %139 = load i32, ptr %120, align 4, !tbaa !78
  %140 = icmp eq i32 %139, 0
  br i1 %140, label %145, label %141

141:                                              ; preds = %102
  %142 = sext i32 %139 to i64
  %143 = getelementptr inbounds [4 x float], ptr %68, i64 %142
  %144 = load float, ptr %80, align 4, !tbaa !44
  call fastcc void @madd_v4_v4fl(ptr noundef %103, ptr noundef nonnull %143, float noundef %144) #23
  br label %145

145:                                              ; preds = %94, %98, %141, %102
  %146 = add nuw nsw i32 %82, 1
  %147 = load i32, ptr %71, align 8, !tbaa !245
  %148 = icmp slt i32 %146, %147
  br i1 %148, label %81, label %149, !llvm.loop !253

149:                                              ; preds = %145, %70
  %150 = load ptr, ptr @MEM_freeN, align 8, !tbaa !47
  call void %150(ptr noundef nonnull %68) #22
  br label %151

151:                                              ; preds = %59, %63, %67, %149, %55
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %7) #24
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %6) #24
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %5) #24
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @free_dbase_object_vectors(ptr noundef %0) unnamed_addr #4 !PGOFuncName !254 {
  %2 = load ptr, ptr %0, align 8, !tbaa !47
  %3 = icmp eq ptr %2, null
  br i1 %3, label %14, label %4

4:                                                ; preds = %1, %11
  %5 = phi ptr [ %12, %11 ], [ %2, %1 ]
  %6 = getelementptr inbounds %struct.ObjectInstanceRen, ptr %5, i64 0, i32 16
  %7 = load ptr, ptr %6, align 8, !tbaa !208
  %8 = icmp eq ptr %7, null
  br i1 %8, label %11, label %9

9:                                                ; preds = %4
  %10 = load ptr, ptr @MEM_freeN, align 8, !tbaa !47
  tail call void %10(ptr noundef nonnull %7) #22
  br label %11

11:                                               ; preds = %4, %9
  %12 = load ptr, ptr %5, align 8, !tbaa !47
  %13 = icmp eq ptr %12, null
  br i1 %13, label %14, label %4, !llvm.loop !255

14:                                               ; preds = %11, %1
  tail call void @BLI_freelistN(ptr noundef nonnull %0) #22
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @RE_Database_Baking(ptr noundef %0, ptr noundef %1, ptr noundef %2, i32 noundef %3, i32 noundef %4, ptr noundef %5) local_unnamed_addr #4 {
  %7 = alloca [4 x [4 x float]], align 16
  %8 = alloca [3 x float], align 4
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %7) #24
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %8) #24
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
  store ptr %1, ptr %21, align 8, !tbaa !110
  %22 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 44
  store ptr %2, ptr %22, align 8, !tbaa !48
  %23 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 48
  store i32 %3, ptr %23, align 8, !tbaa !121
  %24 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 45
  %25 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 45, i32 60
  tail call void @BLI_freelistN(ptr noundef nonnull %25) #22
  %26 = getelementptr inbounds %struct.Scene, ptr %2, i64 0, i32 22
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(3984) %24, ptr noundef nonnull align 8 dereferenceable(3984) %26, i64 3984, i1 false), !tbaa.struct !256
  %27 = getelementptr inbounds %struct.Scene, ptr %2, i64 0, i32 22, i32 60
  tail call void @BLI_duplicatelist(ptr noundef nonnull %25, ptr noundef nonnull %27) #22
  tail call void @RE_init_threadcount(ptr noundef %0) #22
  %28 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 4
  %29 = load i16, ptr %28, align 8, !tbaa !257
  %30 = or i16 %29, 64
  store i16 %30, ptr %28, align 8, !tbaa !257
  %31 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 78
  store ptr %5, ptr %31, align 8, !tbaa !258
  %32 = icmp eq ptr %5, null
  br i1 %32, label %35, label %33

33:                                               ; preds = %19
  %34 = or i16 %29, 96
  store i16 %34, ptr %28, align 8, !tbaa !257
  br label %35

35:                                               ; preds = %33, %19
  %36 = phi i16 [ %34, %33 ], [ %30, %19 ]
  switch i32 %4, label %44 [
    i32 3, label %37
    i32 14, label %41
  ]

37:                                               ; preds = %35
  %38 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 45, i32 76
  %39 = load i16, ptr %38, align 8, !tbaa !259
  %40 = icmp eq i16 %39, 3
  br i1 %40, label %41, label %44

41:                                               ; preds = %35, %37
  %42 = phi i16 [ 16, %37 ], [ 256, %35 ]
  %43 = or i16 %36, %42
  store i16 %43, ptr %28, align 8, !tbaa !257
  br label %44

44:                                               ; preds = %41, %37, %35
  br i1 %32, label %45, label %54

45:                                               ; preds = %44
  switch i32 %4, label %54 [
    i32 14, label %46
    i32 13, label %46
    i32 5, label %46
    i32 4, label %46
    i32 3, label %46
    i32 0, label %46
    i32 6, label %50
  ]

46:                                               ; preds = %45, %45, %45, %45, %45, %45
  %47 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 45, i32 47
  %48 = load i32, ptr %47, align 8, !tbaa !87
  %49 = and i32 %48, -65539
  store i32 %49, ptr %47, align 8, !tbaa !87
  br i1 %9, label %50, label %54

50:                                               ; preds = %45, %46
  %51 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 45, i32 47
  %52 = load i32, ptr %51, align 8, !tbaa !87
  %53 = or i32 %52, 2
  store i32 %53, ptr %51, align 8, !tbaa !87
  br label %54

54:                                               ; preds = %45, %44, %50, %46
  %55 = tail call ptr @BLI_memarena_new(i64 noundef 16376, ptr noundef nonnull @.str.7) #22
  %56 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 81
  store ptr %55, ptr %56, align 8, !tbaa !117
  %57 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 60
  %58 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 66
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(20) %57, i8 0, i64 20, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %58, i8 0, i64 32, i1 false)
  %59 = load i32, ptr %23, align 8, !tbaa !121
  %60 = icmp ult i32 %59, 16777216
  %61 = and i32 %3, -16777216
  %62 = select i1 %60, i32 %3, i32 %61
  %63 = tail call ptr @RE_GetCamera(ptr noundef nonnull %0) #22
  %64 = icmp eq ptr %63, null
  br i1 %64, label %68, label %65

65:                                               ; preds = %54
  %66 = getelementptr inbounds %struct.Object, ptr %63, i64 0, i32 47
  call void @normalize_m4_m4(ptr noundef nonnull %7, ptr noundef nonnull %66) #22
  %67 = call zeroext i8 @invert_m4(ptr noundef nonnull %7) #22
  br label %69

68:                                               ; preds = %54
  call void @unit_m4(ptr noundef nonnull %7) #22
  br label %69

69:                                               ; preds = %68, %65
  call void @RE_SetView(ptr noundef nonnull %0, ptr noundef nonnull %7) #22
  %70 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 31
  %71 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 33
  call void @copy_m3_m4(ptr noundef nonnull %70, ptr noundef nonnull %71) #22
  %72 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 35
  call void @unit_m4(ptr noundef nonnull %72) #22
  %73 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 14
  store i32 256, ptr %73, align 8, !tbaa !218
  %74 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 13
  store i32 256, ptr %74, align 4, !tbaa !217
  call void @init_render_world(ptr noundef nonnull %0) #23
  %75 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 45, i32 47
  %76 = load i32, ptr %75, align 8, !tbaa !87
  %77 = and i32 %76, 65536
  %78 = icmp eq i32 %77, 0
  br i1 %78, label %90, label %79

79:                                               ; preds = %69
  call void @init_render_qmcsampler(ptr noundef nonnull %0) #22
  %80 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 46
  %81 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 46, i32 23
  %82 = load i16, ptr %81, align 2, !tbaa !89
  %83 = and i16 %82, 208
  %84 = icmp eq i16 %83, 0
  br i1 %84, label %90, label %85

85:                                               ; preds = %79
  %86 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 46, i32 63
  %87 = load i16, ptr %86, align 8, !tbaa !128
  %88 = icmp eq i16 %87, 0
  br i1 %88, label %89, label %90

89:                                               ; preds = %85
  call void @init_ao_sphere(ptr noundef nonnull %80) #22
  br label %90

90:                                               ; preds = %79, %89, %85, %69
  call void @init_render_textures(ptr noundef nonnull %0) #22
  %91 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 46, i32 12
  call fastcc void @copy_v3_v3(ptr noundef nonnull %8, ptr noundef nonnull %91) #23
  %92 = load ptr, ptr %21, align 8, !tbaa !110
  %93 = load i32, ptr %75, align 8, !tbaa !87
  call void @init_render_materials(ptr noundef %92, i32 noundef %93, ptr noundef nonnull %8) #22
  call void @set_node_shader_lamp_loop(ptr noundef nonnull @shade_material_loop) #22
  call fastcc void @database_init_objects(ptr noundef nonnull %0, i32 noundef %62, i32 noundef %20, i32 noundef %12, ptr noundef %5, i32 noundef 0) #23
  call fastcc void @set_material_lightgroups(ptr noundef nonnull %0) #23
  %94 = icmp eq i32 %4, 0
  br i1 %94, label %100, label %95

95:                                               ; preds = %90
  %96 = load i32, ptr %75, align 8, !tbaa !87
  %97 = and i32 %96, 2
  %98 = icmp eq i32 %97, 0
  br i1 %98, label %100, label %99

99:                                               ; preds = %95
  call void @threaded_makeshadowbufs(ptr noundef nonnull %0) #22
  br label %100

100:                                              ; preds = %95, %99, %90
  %101 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 96
  %102 = load ptr, ptr %101, align 8, !tbaa !129
  %103 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 97
  %104 = load ptr, ptr %103, align 8, !tbaa !130
  %105 = call i32 %102(ptr noundef %104) #22
  %106 = icmp eq i32 %105, 0
  br i1 %106, label %107, label %112

107:                                              ; preds = %100
  %108 = load i32, ptr %75, align 8, !tbaa !87
  %109 = and i32 %108, 65536
  %110 = icmp eq i32 %109, 0
  br i1 %110, label %112, label %111

111:                                              ; preds = %107
  call void @makeraytree(ptr noundef nonnull %0) #22
  br label %112

112:                                              ; preds = %107, %111, %100
  %113 = load ptr, ptr %101, align 8, !tbaa !129
  %114 = load ptr, ptr %103, align 8, !tbaa !130
  %115 = call i32 %113(ptr noundef %114) #22
  %116 = icmp eq i32 %115, 0
  br i1 %116, label %117, label %118

117:                                              ; preds = %112
  call void @make_pointdensities(ptr noundef nonnull %0) #22
  br label %118

118:                                              ; preds = %117, %112
  %119 = load ptr, ptr %101, align 8, !tbaa !129
  %120 = load ptr, ptr %103, align 8, !tbaa !130
  %121 = call i32 %119(ptr noundef %120) #22
  %122 = icmp eq i32 %121, 0
  br i1 %122, label %123, label %124

123:                                              ; preds = %118
  call void @make_voxeldata(ptr noundef nonnull %0) #22
  br label %124

124:                                              ; preds = %123, %118
  %125 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 46, i32 23
  %126 = load i16, ptr %125, align 2, !tbaa !89
  %127 = and i16 %126, 208
  %128 = icmp eq i16 %127, 0
  br i1 %128, label %143, label %129

129:                                              ; preds = %124
  %130 = load ptr, ptr %101, align 8, !tbaa !129
  %131 = load ptr, ptr %103, align 8, !tbaa !130
  %132 = call i32 %130(ptr noundef %131) #22
  %133 = icmp eq i32 %132, 0
  br i1 %133, label %134, label %143

134:                                              ; preds = %129
  %135 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 46, i32 64
  %136 = load i16, ptr %135, align 2, !tbaa !88
  %137 = icmp eq i16 %136, 1
  br i1 %137, label %138, label %143

138:                                              ; preds = %134
  %139 = load i32, ptr %75, align 8, !tbaa !87
  %140 = and i32 %139, 2
  %141 = icmp eq i32 %140, 0
  br i1 %141, label %143, label %142

142:                                              ; preds = %138
  call void @make_occ_tree(ptr noundef nonnull %0) #22
  br label %143

143:                                              ; preds = %134, %142, %138, %129, %124
  %144 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 98, i32 11
  store i16 1, ptr %144, align 4, !tbaa !101
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %8) #24
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %7) #24
  ret void
}

; Function Attrs: optsize
declare void @BLI_duplicatelist(ptr noundef, ptr noundef) local_unnamed_addr #7

; Function Attrs: optsize
declare void @RE_init_threadcount(ptr noundef) local_unnamed_addr #7

; Function Attrs: optsize
declare void @unit_m4(ptr noundef) local_unnamed_addr #7

; Function Attrs: mustprogress nofree noinline nounwind optsize willreturn memory(write, argmem: readwrite) uwtable
define internal fastcc void @normalize_v3_v3(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1) unnamed_addr #0 !PGOFuncName !260 {
  %3 = tail call fastcc float @dot_v3v3(ptr noundef %1, ptr noundef %1) #23
  %4 = fcmp ogt float %3, 0x38AA95A5C0000000
  br i1 %4, label %5, label %8

5:                                                ; preds = %2
  %6 = tail call float @sqrtf(float noundef %3) #22
  %7 = fdiv float 1.000000e+00, %6
  tail call fastcc void @mul_v3_v3fl(ptr noundef %0, ptr noundef %1, float noundef %7) #23
  br label %9

8:                                                ; preds = %2
  tail call fastcc void @zero_v3(ptr noundef %0) #23
  br label %9

9:                                                ; preds = %8, %5
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc float @dot_v3v3(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) unnamed_addr #12 !PGOFuncName !261 {
  %3 = load float, ptr %0, align 4, !tbaa !44
  %4 = load float, ptr %1, align 4, !tbaa !44
  %5 = getelementptr inbounds float, ptr %0, i64 1
  %6 = load float, ptr %5, align 4, !tbaa !44
  %7 = getelementptr inbounds float, ptr %1, i64 1
  %8 = load float, ptr %7, align 4, !tbaa !44
  %9 = fmul float %6, %8
  %10 = tail call float @llvm.fmuladd.f32(float %3, float %4, float %9)
  %11 = getelementptr inbounds float, ptr %0, i64 2
  %12 = load float, ptr %11, align 4, !tbaa !44
  %13 = getelementptr inbounds float, ptr %1, i64 2
  %14 = load float, ptr %13, align 4, !tbaa !44
  %15 = tail call float @llvm.fmuladd.f32(float %12, float %14, float %10)
  ret float %15
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @mul_v3_v3fl(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1, float noundef %2) unnamed_addr #6 !PGOFuncName !262 {
  %4 = load float, ptr %1, align 4, !tbaa !44
  %5 = fmul float %4, %2
  store float %5, ptr %0, align 4, !tbaa !44
  %6 = getelementptr inbounds float, ptr %1, i64 1
  %7 = load float, ptr %6, align 4, !tbaa !44
  %8 = fmul float %7, %2
  %9 = getelementptr inbounds float, ptr %0, i64 1
  store float %8, ptr %9, align 4, !tbaa !44
  %10 = getelementptr inbounds float, ptr %1, i64 2
  %11 = load float, ptr %10, align 4, !tbaa !44
  %12 = fmul float %11, %2
  %13 = getelementptr inbounds float, ptr %0, i64 2
  store float %12, ptr %13, align 4, !tbaa !44
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable
define internal fastcc void @zero_v3(ptr nocapture noundef writeonly %0) unnamed_addr #13 !PGOFuncName !263 {
  store <2 x float> zeroinitializer, ptr %0, align 4, !tbaa !44
  %2 = getelementptr inbounds float, ptr %0, i64 2
  store float 0.000000e+00, ptr %2, align 4, !tbaa !44
  ret void
}

; Function Attrs: optsize
declare void @BLI_ghash_free(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #7

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @set_dupli_tex_mat(ptr noundef %0, ptr nocapture noundef %1, ptr noundef %2, ptr noundef %3) unnamed_addr #4 !PGOFuncName !264 {
  %5 = alloca [4 x [4 x float]], align 16
  %6 = icmp eq ptr %0, null
  br i1 %6, label %7, label %8

7:                                                ; preds = %4
  store ptr null, ptr @set_dupli_tex_mat.lastob, align 8, !tbaa !47
  store i1 false, ptr @set_dupli_tex_mat.needtexmat, align 4
  br label %57

8:                                                ; preds = %4
  %9 = load ptr, ptr @set_dupli_tex_mat.lastob, align 8, !tbaa !47
  %10 = getelementptr inbounds %struct.DupliObject, ptr %2, i64 0, i32 2
  %11 = load ptr, ptr %10, align 8, !tbaa !150
  %12 = icmp eq ptr %9, %11
  br i1 %12, label %40, label %13

13:                                               ; preds = %8
  store ptr %11, ptr @set_dupli_tex_mat.lastob, align 8, !tbaa !47
  store i1 false, ptr @set_dupli_tex_mat.needtexmat, align 4
  %14 = tail call ptr @give_totcolp(ptr noundef %11) #22
  %15 = load ptr, ptr %10, align 8, !tbaa !150
  %16 = tail call ptr @give_matarar(ptr noundef %15) #22
  %17 = icmp ne ptr %14, null
  %18 = icmp ne ptr %16, null
  %19 = select i1 %17, i1 %18, i1 false
  br i1 %19, label %20, label %40

20:                                               ; preds = %13
  %21 = load i16, ptr %14, align 2, !tbaa !77
  %22 = icmp sgt i16 %21, 0
  br i1 %22, label %23, label %40

23:                                               ; preds = %20
  %24 = load ptr, ptr %16, align 8, !tbaa !47
  %25 = zext nneg i16 %21 to i64
  br label %26

26:                                               ; preds = %23, %37
  %27 = phi i64 [ 0, %23 ], [ %38, %37 ]
  %28 = getelementptr inbounds ptr, ptr %24, i64 %27
  %29 = load ptr, ptr %28, align 8, !tbaa !47
  %30 = icmp eq ptr %29, null
  br i1 %30, label %37, label %31

31:                                               ; preds = %26
  %32 = getelementptr inbounds %struct.Material, ptr %29, i64 0, i32 90
  %33 = load i16, ptr %32, align 4, !tbaa !265
  %34 = and i16 %33, 32
  %35 = icmp eq i16 %34, 0
  br i1 %35, label %37, label %36

36:                                               ; preds = %31
  store i1 true, ptr @set_dupli_tex_mat.needtexmat, align 4
  br label %37

37:                                               ; preds = %26, %31, %36
  %38 = add nuw nsw i64 %27, 1
  %39 = icmp eq i64 %38, %25
  br i1 %39, label %40, label %26, !llvm.loop !266

40:                                               ; preds = %37, %20, %13, %8
  %41 = load i1, ptr @set_dupli_tex_mat.needtexmat, align 4
  br i1 %41, label %42, label %52

42:                                               ; preds = %40
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %5) #24
  %43 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 81
  %44 = load ptr, ptr %43, align 8, !tbaa !117
  %45 = tail call ptr @BLI_memarena_alloc(ptr noundef %44, i64 noundef 64) #22
  %46 = getelementptr inbounds %struct.ObjectInstanceRen, ptr %1, i64 0, i32 14
  store ptr %45, ptr %46, align 8, !tbaa !267
  %47 = getelementptr inbounds %struct.DupliObject, ptr %2, i64 0, i32 3
  %48 = call zeroext i8 @invert_m4_m4(ptr noundef nonnull %5, ptr noundef nonnull %47) #22
  %49 = load ptr, ptr %46, align 8, !tbaa !267
  %50 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 32
  %51 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 33
  call void @_va_mul_m4_series_5(ptr noundef %49, ptr noundef nonnull %50, ptr noundef %3, ptr noundef nonnull %5, ptr noundef nonnull %51) #22
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %5) #24
  br label %52

52:                                               ; preds = %42, %40
  %53 = getelementptr inbounds %struct.ObjectInstanceRen, ptr %1, i64 0, i32 12
  %54 = getelementptr inbounds %struct.DupliObject, ptr %2, i64 0, i32 4
  call fastcc void @copy_v3_v3(ptr noundef nonnull %53, ptr noundef nonnull %54) #23
  %55 = getelementptr inbounds %struct.ObjectInstanceRen, ptr %1, i64 0, i32 13
  %56 = getelementptr inbounds %struct.DupliObject, ptr %2, i64 0, i32 5
  call fastcc void @copy_v2_v2(ptr noundef nonnull %55, ptr noundef nonnull %56) #23
  br label %57

57:                                               ; preds = %52, %7
  ret void
}

; Function Attrs: optsize
declare ptr @_setlooper_base_step(ptr noundef, ptr noundef) local_unnamed_addr #7

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc zeroext i8 @is_object_restricted(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) unnamed_addr #12 !PGOFuncName !268 {
  %3 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 45, i32 46
  %4 = load i32, ptr %3, align 4, !tbaa !104
  %5 = and i32 %4, 524288
  %6 = icmp eq i32 %5, 0
  %7 = getelementptr inbounds %struct.Object, ptr %1, i64 0, i32 102
  %8 = load i8, ptr %7, align 8, !tbaa !269
  %9 = lshr i8 %8, 2
  %10 = select i1 %6, i8 %9, i8 %8
  %11 = and i8 %10, 1
  ret i8 %11
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc noundef i32 @allow_render_object(ptr nocapture noundef readonly %0, ptr noundef %1, i32 noundef %2, i32 noundef %3, ptr noundef readnone %4) unnamed_addr #4 !PGOFuncName !270 {
  %6 = tail call fastcc zeroext i8 @is_object_hidden(ptr noundef %0, ptr noundef %1) #23, !range !144
  %7 = icmp eq i8 %6, 0
  br i1 %7, label %8, label %45

8:                                                ; preds = %5
  %9 = getelementptr inbounds %struct.Object, ptr %1, i64 0, i32 109
  %10 = load ptr, ptr %9, align 8, !tbaa !271
  %11 = icmp eq ptr %10, null
  br i1 %11, label %12, label %21

12:                                               ; preds = %8
  %13 = getelementptr inbounds %struct.Object, ptr %1, i64 0, i32 55
  %14 = load i16, ptr %13, align 8, !tbaa !140
  %15 = zext i16 %14 to i32
  %16 = and i32 %15, 2840
  %17 = icmp ne i32 %16, 0
  %18 = and i32 %15, 8
  %19 = icmp eq i32 %18, 0
  %20 = and i1 %17, %19
  br i1 %20, label %45, label %21

21:                                               ; preds = %12, %8
  %22 = getelementptr inbounds %struct.Object, ptr %1, i64 0, i32 3
  %23 = load i16, ptr %22, align 8, !tbaa !147
  %24 = icmp eq i16 %23, 5
  br i1 %24, label %25, label %30

25:                                               ; preds = %21
  %26 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 44
  %27 = load ptr, ptr %26, align 8, !tbaa !48
  %28 = tail call ptr @BKE_mball_basis_find(ptr noundef %27, ptr noundef nonnull %1) #22
  %29 = icmp eq ptr %28, %1
  br i1 %29, label %30, label %45

30:                                               ; preds = %25, %21
  %31 = icmp eq i32 %2, 0
  br i1 %31, label %35, label %32

32:                                               ; preds = %30
  %33 = load i16, ptr %22, align 8, !tbaa !147
  %34 = icmp eq i16 %33, 10
  br i1 %34, label %45, label %35

35:                                               ; preds = %32, %30
  %36 = icmp eq i32 %3, 0
  %37 = icmp eq ptr %1, %4
  %38 = or i1 %36, %37
  br i1 %38, label %44, label %39

39:                                               ; preds = %35
  %40 = getelementptr inbounds %struct.Object, ptr %1, i64 0, i32 53
  %41 = load i16, ptr %40, align 4, !tbaa !137
  %42 = and i16 %41, 1
  %43 = icmp eq i16 %42, 0
  br i1 %43, label %45, label %44

44:                                               ; preds = %39, %35
  br label %45

45:                                               ; preds = %39, %32, %25, %12, %5, %44
  %46 = phi i32 [ 1, %44 ], [ 0, %5 ], [ 0, %12 ], [ 0, %25 ], [ 0, %32 ], [ 0, %39 ]
  ret i32 %46
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @init_render_object(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4, i32 noundef %5) unnamed_addr #4 !PGOFuncName !272 {
  %7 = alloca [4 x [4 x float]], align 16
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %7) #24
  %8 = getelementptr inbounds %struct.Object, ptr %1, i64 0, i32 3
  %9 = load i16, ptr %8, align 8, !tbaa !147
  %10 = icmp eq i16 %9, 10
  br i1 %10, label %11, label %13

11:                                               ; preds = %6
  %12 = tail call fastcc ptr @add_render_lamp(ptr noundef %0, ptr noundef nonnull %1) #23
  br label %22

13:                                               ; preds = %6
  %14 = tail call fastcc i32 @render_object_type(i16 noundef signext %9) #23, !range !145
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %17, label %16

16:                                               ; preds = %13
  tail call fastcc void @add_render_object(ptr noundef %0, ptr noundef nonnull %1, ptr noundef %2, ptr noundef %3, ptr noundef %4, i32 noundef %5) #23
  br label %22

17:                                               ; preds = %13
  %18 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 32
  %19 = getelementptr inbounds %struct.Object, ptr %1, i64 0, i32 47
  call void @mul_m4_m4m4(ptr noundef nonnull %7, ptr noundef nonnull %18, ptr noundef nonnull %19) #22
  %20 = getelementptr inbounds %struct.Object, ptr %1, i64 0, i32 50
  %21 = call zeroext i8 @invert_m4_m4(ptr noundef nonnull %20, ptr noundef nonnull %7) #22
  br label %22

22:                                               ; preds = %16, %17, %11
  %23 = call double @PIL_check_seconds_timer() #22
  %24 = load double, ptr @init_render_object.lasttime, align 8, !tbaa !273
  %25 = fsub double %23, %24
  %26 = fcmp ogt double %25, 1.000000e+00
  br i1 %26, label %27, label %40

27:                                               ; preds = %22
  store double %23, ptr @init_render_object.lasttime, align 8, !tbaa !273
  %28 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 98
  %29 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 60
  %30 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 98, i32 1
  %31 = load <4 x i32>, ptr %29, align 8, !tbaa !78
  %32 = shufflevector <4 x i32> %31, <4 x i32> poison, <4 x i32> <i32 0, i32 1, i32 3, i32 2>
  store <4 x i32> %32, ptr %30, align 4, !tbaa !78
  %33 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 64
  %34 = load i32, ptr %33, align 8, !tbaa !132
  %35 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 98, i32 5
  store i32 %34, ptr %35, align 4, !tbaa !133
  %36 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 90
  %37 = load ptr, ptr %36, align 8, !tbaa !134
  %38 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 91
  %39 = load ptr, ptr %38, align 8, !tbaa !135
  call void %37(ptr noundef %39, ptr noundef nonnull %28) #22
  br label %40

40:                                               ; preds = %27, %22
  %41 = getelementptr inbounds %struct.Object, ptr %1, i64 0, i32 53
  %42 = load i16, ptr %41, align 4, !tbaa !137
  %43 = or i16 %42, 1024
  store i16 %43, ptr %41, align 4, !tbaa !137
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %7) #24
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @dupli_render_particle_set(ptr noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4) unnamed_addr #4 !PGOFuncName !274 {
  %6 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 45, i32 46
  %7 = load i32, ptr %6, align 4, !tbaa !104
  %8 = and i32 %7, 524288
  %9 = icmp ne i32 %8, 0
  %10 = icmp sgt i32 %3, 7
  %11 = or i1 %10, %9
  br i1 %11, label %79, label %12

12:                                               ; preds = %5
  %13 = getelementptr inbounds %struct.Object, ptr %1, i64 0, i32 55
  %14 = load i16, ptr %13, align 8, !tbaa !140
  %15 = and i16 %14, 2048
  %16 = icmp eq i16 %15, 0
  br i1 %16, label %63, label %17

17:                                               ; preds = %12
  %18 = getelementptr inbounds %struct.Object, ptr %1, i64 0, i32 109
  %19 = load ptr, ptr %18, align 8, !tbaa !47
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
  %30 = load ptr, ptr %29, align 8, !tbaa !275
  %31 = getelementptr inbounds %struct.ParticleSettings, ptr %30, i64 0, i32 21
  %32 = load i16, ptr %31, align 8, !tbaa !277
  %33 = add i16 %32, -7
  %34 = icmp ult i16 %33, 2
  br i1 %34, label %35, label %40

35:                                               ; preds = %27
  br i1 %22, label %39, label %36

36:                                               ; preds = %35
  %37 = load i32, ptr %25, align 4, !tbaa !217
  %38 = load i32, ptr %26, align 8, !tbaa !218
  tail call void @psys_render_set(ptr noundef %1, ptr noundef nonnull %28, ptr noundef nonnull %23, ptr noundef nonnull %24, i32 noundef %37, i32 noundef %38, i32 noundef %2) #22
  br label %40

39:                                               ; preds = %35
  tail call void @psys_render_restore(ptr noundef %1, ptr noundef nonnull %28) #22
  br label %40

40:                                               ; preds = %27, %39, %36
  %41 = load ptr, ptr %28, align 8, !tbaa !47
  %42 = icmp eq ptr %41, null
  br i1 %42, label %43, label %27, !llvm.loop !279

43:                                               ; preds = %40, %17
  %44 = icmp eq i32 %4, 0
  br i1 %44, label %63, label %45

45:                                               ; preds = %43
  %46 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 44
  %47 = load ptr, ptr %46, align 8, !tbaa !48
  %48 = load i64, ptr @CD_MASK_BAREMESH, align 8, !tbaa !280
  %49 = or i64 %48, 96
  %50 = tail call ptr @mesh_create_derived_render(ptr noundef %47, ptr noundef %1, i64 noundef %49) #22
  %51 = getelementptr inbounds %struct.DerivedMesh, ptr %50, i64 0, i32 95
  %52 = load ptr, ptr %51, align 8, !tbaa !281
  tail call void %52(ptr noundef %50) #22
  %53 = load ptr, ptr %18, align 8, !tbaa !47
  %54 = icmp eq ptr %53, null
  br i1 %54, label %63, label %55

55:                                               ; preds = %45, %55
  %56 = phi ptr [ %61, %55 ], [ %53, %45 ]
  %57 = tail call ptr @psys_get_modifier(ptr noundef %1, ptr noundef nonnull %56) #22
  %58 = getelementptr inbounds %struct.ParticleSystemModifierData, ptr %57, i64 0, i32 6
  %59 = load i16, ptr %58, align 4, !tbaa !284
  %60 = and i16 %59, -3
  store i16 %60, ptr %58, align 4, !tbaa !284
  %61 = load ptr, ptr %56, align 8, !tbaa !47
  %62 = icmp eq ptr %61, null
  br i1 %62, label %63, label %55, !llvm.loop !286

63:                                               ; preds = %55, %45, %43, %12
  %64 = getelementptr inbounds %struct.Object, ptr %1, i64 0, i32 112
  %65 = load ptr, ptr %64, align 8, !tbaa !287
  %66 = icmp eq ptr %65, null
  br i1 %66, label %79, label %67

67:                                               ; preds = %63
  %68 = getelementptr inbounds %struct.Group, ptr %65, i64 0, i32 1
  %69 = load ptr, ptr %68, align 8, !tbaa !47
  %70 = icmp eq ptr %69, null
  br i1 %70, label %79, label %71

71:                                               ; preds = %67
  %72 = add nuw nsw i32 %3, 1
  br label %73

73:                                               ; preds = %71, %73
  %74 = phi ptr [ %69, %71 ], [ %77, %73 ]
  %75 = getelementptr inbounds %struct.GroupObject, ptr %74, i64 0, i32 2
  %76 = load ptr, ptr %75, align 8, !tbaa !288
  tail call fastcc void @dupli_render_particle_set(ptr noundef %0, ptr noundef %76, i32 noundef %2, i32 noundef %72, i32 noundef %4) #23
  %77 = load ptr, ptr %74, align 8, !tbaa !47
  %78 = icmp eq ptr %77, null
  br i1 %78, label %79, label %73, !llvm.loop !290

79:                                               ; preds = %73, %67, %63, %5
  ret void
}

; Function Attrs: optsize
declare ptr @object_duplilist(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #7

; Function Attrs: optsize
declare ptr @duplilist_apply(ptr noundef, ptr noundef) local_unnamed_addr #7

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc zeroext i8 @is_object_hidden(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) unnamed_addr #12 !PGOFuncName !291 {
  %3 = tail call fastcc zeroext i8 @is_object_restricted(ptr noundef %0, ptr noundef %1) #23, !range !144
  %4 = icmp eq i8 %3, 0
  br i1 %4, label %5, label %16

5:                                                ; preds = %2
  %6 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 45, i32 46
  %7 = load i32, ptr %6, align 4, !tbaa !104
  %8 = and i32 %7, 524288
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %16, label %10

10:                                               ; preds = %5
  %11 = getelementptr inbounds %struct.Object, ptr %1, i64 0, i32 87
  %12 = load i8, ptr %11, align 2, !tbaa !292
  %13 = add i8 %12, -1
  %14 = icmp ult i8 %13, 2
  %15 = zext i1 %14 to i8
  br label %16

16:                                               ; preds = %5, %2, %10
  %17 = phi i8 [ %15, %10 ], [ 1, %2 ], [ 0, %5 ]
  ret i8 %17
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc i32 @allow_render_dupli_instance(ptr nocapture noundef readonly %0, ptr noundef %1) unnamed_addr #4 !PGOFuncName !293 {
  %3 = tail call ptr @give_totcolp(ptr noundef %1) #22
  %4 = icmp eq ptr %3, null
  br i1 %4, label %20, label %5

5:                                                ; preds = %2
  %6 = load i16, ptr %3, align 2, !tbaa !77
  %7 = icmp sgt i16 %6, 0
  br i1 %7, label %8, label %20

8:                                                ; preds = %5, %17
  %9 = phi i16 [ %10, %17 ], [ 0, %5 ]
  %10 = add nuw nsw i16 %9, 1
  %11 = tail call ptr @give_current_material(ptr noundef %1, i16 noundef signext %10) #22
  %12 = icmp eq ptr %11, null
  br i1 %12, label %17, label %13

13:                                               ; preds = %8
  %14 = getelementptr inbounds %struct.Material, ptr %11, i64 0, i32 2
  %15 = load i16, ptr %14, align 8, !tbaa !294
  %16 = icmp eq i16 %15, 1
  br i1 %16, label %47, label %17

17:                                               ; preds = %8, %13
  %18 = load i16, ptr %3, align 2, !tbaa !77
  %19 = icmp slt i16 %10, %18
  br i1 %19, label %8, label %20, !llvm.loop !295

20:                                               ; preds = %17, %5, %2
  %21 = getelementptr inbounds %struct.Object, ptr %1, i64 0, i32 109
  br label %22

22:                                               ; preds = %26, %20
  %23 = phi ptr [ %21, %20 ], [ %24, %26 ]
  %24 = load ptr, ptr %23, align 8, !tbaa !47
  %25 = icmp eq ptr %24, null
  br i1 %25, label %33, label %26

26:                                               ; preds = %22
  %27 = getelementptr inbounds %struct.ParticleSystem, ptr %24, i64 0, i32 2
  %28 = load ptr, ptr %27, align 8, !tbaa !275
  %29 = getelementptr inbounds %struct.ParticleSettings, ptr %28, i64 0, i32 21
  %30 = load i16, ptr %29, align 8, !tbaa !277
  %31 = add i16 %30, -5
  %32 = icmp ult i16 %31, 5
  br i1 %32, label %22, label %47, !llvm.loop !296

33:                                               ; preds = %22
  %34 = getelementptr inbounds %struct.Object, ptr %1, i64 0, i32 3
  %35 = load i16, ptr %34, align 8, !tbaa !147
  %36 = tail call fastcc i32 @render_object_type(i16 noundef signext %35) #23, !range !145
  %37 = icmp eq i32 %36, 0
  br i1 %37, label %47, label %38

38:                                               ; preds = %33
  %39 = getelementptr inbounds %struct.DupliObject, ptr %0, i64 0, i32 6
  %40 = load i16, ptr %39, align 4, !tbaa !153
  %41 = icmp eq i16 %40, 256
  br i1 %41, label %42, label %47

42:                                               ; preds = %38
  %43 = getelementptr inbounds %struct.DupliObject, ptr %0, i64 0, i32 8
  %44 = load i8, ptr %43, align 1, !tbaa !297
  %45 = icmp eq i8 %44, 0
  %46 = zext i1 %45 to i32
  br label %47

47:                                               ; preds = %13, %26, %33, %42, %38
  %48 = phi i32 [ 0, %33 ], [ 1, %38 ], [ %46, %42 ], [ 0, %26 ], [ 0, %13 ]
  ret i32 %48
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(read, inaccessiblemem: none) uwtable
define internal fastcc ptr @find_dupligroup_dupli(ptr nocapture noundef readonly %0, ptr noundef readonly %1, i32 noundef %2) unnamed_addr #10 !PGOFuncName !298 {
  %4 = getelementptr inbounds %struct.Object, ptr %1, i64 0, i32 55
  %5 = load i16, ptr %4, align 8, !tbaa !140
  %6 = and i16 %5, 4096
  %7 = icmp eq i16 %6, 0
  br i1 %7, label %8, label %29

8:                                                ; preds = %3
  %9 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 68
  %10 = load ptr, ptr %9, align 8, !tbaa !47
  %11 = icmp eq ptr %10, null
  br i1 %11, label %29, label %12

12:                                               ; preds = %8, %26
  %13 = phi ptr [ %27, %26 ], [ %10, %8 ]
  %14 = getelementptr inbounds %struct.ObjectRen, ptr %13, i64 0, i32 2
  %15 = load ptr, ptr %14, align 8, !tbaa !232
  %16 = icmp eq ptr %15, %1
  br i1 %16, label %17, label %26

17:                                               ; preds = %12
  %18 = getelementptr inbounds %struct.ObjectRen, ptr %13, i64 0, i32 6
  %19 = load i32, ptr %18, align 4, !tbaa !299
  %20 = icmp eq i32 %19, %2
  br i1 %20, label %21, label %26

21:                                               ; preds = %17
  %22 = getelementptr inbounds %struct.ObjectRen, ptr %13, i64 0, i32 7
  %23 = load i32, ptr %22, align 8, !tbaa !300
  %24 = and i32 %23, 1
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %26, label %29

26:                                               ; preds = %12, %17, %21
  %27 = load ptr, ptr %13, align 8, !tbaa !47
  %28 = icmp eq ptr %27, null
  br i1 %28, label %29, label %12, !llvm.loop !301

29:                                               ; preds = %21, %26, %8, %3
  %30 = phi ptr [ null, %3 ], [ null, %8 ], [ %13, %21 ], [ null, %26 ]
  ret ptr %30
}

; Function Attrs: optsize
declare ptr @RE_addRenderInstance(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @assign_dupligroup_dupli(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr nocapture noundef readonly %3) unnamed_addr #4 !PGOFuncName !302 {
  %5 = alloca [4 x [4 x float]], align 16
  %6 = alloca [4 x [4 x float]], align 16
  %7 = alloca [4 x [4 x float]], align 16
  %8 = alloca [3 x [3 x float]], align 16
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %5) #24
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %6) #24
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %7) #24
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %8) #24
  %9 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 32
  %10 = getelementptr inbounds %struct.ObjectRen, ptr %2, i64 0, i32 28
  call void @mul_m4_m4m4(ptr noundef nonnull %6, ptr noundef nonnull %9, ptr noundef nonnull %10) #22
  %11 = call zeroext i8 @invert_m4_m4(ptr noundef nonnull %5, ptr noundef nonnull %6) #22
  %12 = getelementptr inbounds %struct.ObjectInstanceRen, ptr %1, i64 0, i32 2
  store ptr %2, ptr %12, align 8, !tbaa !184
  %13 = getelementptr inbounds %struct.ObjectInstanceRen, ptr %1, i64 0, i32 8
  call void @copy_m4_m4(ptr noundef nonnull %7, ptr noundef nonnull %13) #22
  call void @mul_m4_m4m4(ptr noundef nonnull %13, ptr noundef nonnull %7, ptr noundef nonnull %5) #22
  call void @copy_m3_m4(ptr noundef nonnull %8, ptr noundef nonnull %13) #22
  %14 = getelementptr inbounds %struct.ObjectInstanceRen, ptr %1, i64 0, i32 10
  %15 = call zeroext i8 @invert_m3_m3(ptr noundef nonnull %14, ptr noundef nonnull %8) #22
  call void @transpose_m3(ptr noundef nonnull %14) #22
  %16 = getelementptr inbounds %struct.ObjectInstanceRen, ptr %1, i64 0, i32 12
  %17 = getelementptr inbounds %struct.DupliObject, ptr %3, i64 0, i32 4
  call fastcc void @copy_v3_v3(ptr noundef nonnull %16, ptr noundef nonnull %17) #23
  %18 = getelementptr inbounds %struct.DupliObject, ptr %3, i64 0, i32 5
  %19 = load float, ptr %18, align 4, !tbaa !44
  %20 = getelementptr inbounds %struct.ObjectInstanceRen, ptr %1, i64 0, i32 13
  store float %19, ptr %20, align 8, !tbaa !44
  %21 = getelementptr inbounds %struct.DupliObject, ptr %3, i64 0, i32 5, i64 1
  %22 = load float, ptr %21, align 4, !tbaa !44
  %23 = getelementptr inbounds %struct.ObjectInstanceRen, ptr %1, i64 0, i32 13, i64 1
  store float %22, ptr %23, align 4, !tbaa !44
  %24 = getelementptr inbounds %struct.ObjectRen, ptr %2, i64 0, i32 10
  %25 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 60
  %26 = load <4 x i32>, ptr %24, align 8, !tbaa !78
  %27 = shufflevector <4 x i32> %26, <4 x i32> poison, <4 x i32> <i32 1, i32 0, i32 3, i32 2>
  %28 = load <4 x i32>, ptr %25, align 8, !tbaa !78
  %29 = add nsw <4 x i32> %28, %27
  store <4 x i32> %29, ptr %25, align 8, !tbaa !78
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %8) #24
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %7) #24
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %6) #24
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %5) #24
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @find_dupli_instances(ptr noundef %0, ptr noundef %1, ptr noundef readonly %2) unnamed_addr #4 !PGOFuncName !303 {
  %4 = alloca [4 x [4 x float]], align 16
  %5 = alloca [4 x [4 x float]], align 16
  %6 = alloca [4 x [4 x float]], align 16
  %7 = alloca [3 x [3 x float]], align 16
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %4) #24
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %5) #24
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %6) #24
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %7) #24
  %8 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 32
  %9 = getelementptr inbounds %struct.ObjectRen, ptr %1, i64 0, i32 28
  call void @mul_m4_m4m4(ptr noundef nonnull %5, ptr noundef nonnull %8, ptr noundef nonnull %9) #22
  %10 = call zeroext i8 @invert_m4_m4(ptr noundef nonnull %4, ptr noundef nonnull %5) #22
  %11 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 70, i32 1
  %12 = load ptr, ptr %11, align 8, !tbaa !47
  %13 = icmp eq ptr %12, null
  br i1 %13, label %61, label %14

14:                                               ; preds = %3
  %15 = getelementptr inbounds %struct.ObjectRen, ptr %1, i64 0, i32 2
  %16 = getelementptr inbounds %struct.ObjectRen, ptr %1, i64 0, i32 6
  %17 = icmp eq ptr %2, null
  %18 = getelementptr inbounds %struct.DupliObject, ptr %2, i64 0, i32 4
  %19 = getelementptr inbounds %struct.DupliObject, ptr %2, i64 0, i32 5
  %20 = getelementptr inbounds %struct.DupliObject, ptr %2, i64 0, i32 5, i64 1
  %21 = getelementptr inbounds %struct.ObjectRen, ptr %1, i64 0, i32 10
  %22 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 60
  br label %23

23:                                               ; preds = %14, %56
  %24 = phi ptr [ %12, %14 ], [ %59, %56 ]
  %25 = phi i32 [ 1, %14 ], [ %57, %56 ]
  %26 = getelementptr inbounds %struct.ObjectInstanceRen, ptr %24, i64 0, i32 2
  %27 = load ptr, ptr %26, align 8, !tbaa !184
  %28 = icmp eq ptr %27, null
  br i1 %28, label %29, label %56

29:                                               ; preds = %23
  %30 = getelementptr inbounds %struct.ObjectInstanceRen, ptr %24, i64 0, i32 3
  %31 = load ptr, ptr %30, align 8, !tbaa !198
  %32 = load ptr, ptr %15, align 8, !tbaa !232
  %33 = icmp eq ptr %31, %32
  br i1 %33, label %34, label %56

34:                                               ; preds = %29
  %35 = getelementptr inbounds %struct.ObjectInstanceRen, ptr %24, i64 0, i32 6
  %36 = load i32, ptr %35, align 4, !tbaa !201
  %37 = load i32, ptr %16, align 4, !tbaa !299
  %38 = icmp eq i32 %36, %37
  br i1 %38, label %39, label %56

39:                                               ; preds = %34
  store ptr %1, ptr %26, align 8, !tbaa !184
  %40 = getelementptr inbounds %struct.ObjectInstanceRen, ptr %24, i64 0, i32 8
  call void @copy_m4_m4(ptr noundef nonnull %6, ptr noundef nonnull %40) #22
  call void @mul_m4_m4m4(ptr noundef nonnull %40, ptr noundef nonnull %6, ptr noundef nonnull %4) #22
  call void @copy_m3_m4(ptr noundef nonnull %7, ptr noundef nonnull %40) #22
  %41 = getelementptr inbounds %struct.ObjectInstanceRen, ptr %24, i64 0, i32 10
  %42 = call zeroext i8 @invert_m3_m3(ptr noundef nonnull %41, ptr noundef nonnull %7) #22
  call void @transpose_m3(ptr noundef nonnull %41) #22
  br i1 %17, label %49, label %43

43:                                               ; preds = %39
  %44 = getelementptr inbounds %struct.ObjectInstanceRen, ptr %24, i64 0, i32 12
  call fastcc void @copy_v3_v3(ptr noundef nonnull %44, ptr noundef nonnull %18) #23
  %45 = load float, ptr %19, align 4, !tbaa !44
  %46 = getelementptr inbounds %struct.ObjectInstanceRen, ptr %24, i64 0, i32 13
  store float %45, ptr %46, align 8, !tbaa !44
  %47 = load float, ptr %20, align 4, !tbaa !44
  %48 = getelementptr inbounds %struct.ObjectInstanceRen, ptr %24, i64 0, i32 13, i64 1
  store float %47, ptr %48, align 4, !tbaa !44
  br label %49

49:                                               ; preds = %43, %39
  %50 = icmp eq i32 %25, 0
  br i1 %50, label %51, label %56

51:                                               ; preds = %49
  %52 = load <4 x i32>, ptr %21, align 8, !tbaa !78
  %53 = shufflevector <4 x i32> %52, <4 x i32> poison, <4 x i32> <i32 1, i32 0, i32 3, i32 2>
  %54 = load <4 x i32>, ptr %22, align 8, !tbaa !78
  %55 = add nsw <4 x i32> %54, %53
  store <4 x i32> %55, ptr %22, align 8, !tbaa !78
  br label %56

56:                                               ; preds = %49, %23, %29, %34, %51
  %57 = phi i32 [ %25, %23 ], [ 0, %51 ], [ %25, %34 ], [ %25, %29 ], [ 0, %49 ]
  %58 = getelementptr inbounds %struct.ObjectInstanceRen, ptr %24, i64 0, i32 1
  %59 = load ptr, ptr %58, align 8, !tbaa !47
  %60 = icmp eq ptr %59, null
  br i1 %60, label %61, label %23, !llvm.loop !304

61:                                               ; preds = %56, %3
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %7) #24
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %6) #24
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %5) #24
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %4) #24
  ret void
}

; Function Attrs: optsize
declare void @duplilist_restore(ptr noundef, ptr noundef) local_unnamed_addr #7

; Function Attrs: optsize
declare void @duplilist_free_apply_data(ptr noundef) local_unnamed_addr #7

; Function Attrs: optsize
declare void @free_object_duplilist(ptr noundef) local_unnamed_addr #7

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @add_group_render_dupli_obs(ptr noundef %0, ptr nocapture noundef readonly %1, i32 noundef %2, i32 noundef %3, ptr noundef %4, i32 noundef %5, i32 noundef %6) unnamed_addr #4 !PGOFuncName !305 {
  %8 = icmp sgt i32 %6, 8
  br i1 %8, label %41, label %9

9:                                                ; preds = %7
  %10 = getelementptr inbounds %struct.Group, ptr %1, i64 0, i32 1
  %11 = load ptr, ptr %10, align 8, !tbaa !47
  %12 = icmp eq ptr %11, null
  br i1 %12, label %41, label %13

13:                                               ; preds = %9
  %14 = add nuw nsw i32 %6, 1
  br label %15

15:                                               ; preds = %13, %38
  %16 = phi ptr [ %11, %13 ], [ %39, %38 ]
  %17 = getelementptr inbounds %struct.GroupObject, ptr %16, i64 0, i32 2
  %18 = load ptr, ptr %17, align 8, !tbaa !288
  %19 = getelementptr inbounds %struct.Object, ptr %18, i64 0, i32 53
  %20 = load i16, ptr %19, align 4, !tbaa !137
  %21 = and i16 %20, 1024
  %22 = icmp eq i16 %21, 0
  br i1 %22, label %38, label %23

23:                                               ; preds = %15
  %24 = getelementptr inbounds %struct.Object, ptr %18, i64 0, i32 55
  %25 = load i16, ptr %24, align 8, !tbaa !140
  %26 = and i16 %25, 4096
  %27 = icmp eq i16 %26, 0
  br i1 %27, label %38, label %28

28:                                               ; preds = %23
  %29 = tail call fastcc i32 @allow_render_object(ptr noundef %0, ptr noundef nonnull %18, i32 noundef %2, i32 noundef %3, ptr noundef %4) #23, !range !145
  %30 = icmp eq i32 %29, 0
  br i1 %30, label %38, label %31

31:                                               ; preds = %28
  tail call fastcc void @init_render_object(ptr noundef %0, ptr noundef nonnull %18, ptr noundef null, ptr noundef null, ptr noundef null, i32 noundef %5) #23
  %32 = load i16, ptr %24, align 8, !tbaa !140
  %33 = and i16 %32, -4097
  store i16 %33, ptr %24, align 8, !tbaa !140
  %34 = getelementptr inbounds %struct.Object, ptr %18, i64 0, i32 112
  %35 = load ptr, ptr %34, align 8, !tbaa !287
  %36 = icmp eq ptr %35, null
  br i1 %36, label %38, label %37

37:                                               ; preds = %31
  tail call fastcc void @add_group_render_dupli_obs(ptr noundef %0, ptr noundef nonnull %35, i32 noundef %2, i32 noundef %3, ptr noundef %4, i32 noundef %5, i32 noundef %14) #23
  br label %38

38:                                               ; preds = %15, %28, %37, %31, %23
  %39 = load ptr, ptr %16, align 8, !tbaa !47
  %40 = icmp eq ptr %39, null
  br i1 %40, label %41, label %15, !llvm.loop !306

41:                                               ; preds = %38, %9, %7
  ret void
}

; Function Attrs: optsize
declare void @RE_makeRenderInstances(ptr noundef) local_unnamed_addr #7

; Function Attrs: optsize
declare ptr @give_totcolp(ptr noundef) local_unnamed_addr #7

; Function Attrs: optsize
declare ptr @give_matarar(ptr noundef) local_unnamed_addr #7

; Function Attrs: optsize
declare ptr @BLI_memarena_alloc(ptr noundef, i64 noundef) local_unnamed_addr #7

; Function Attrs: optsize
declare void @_va_mul_m4_series_5(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #7

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @copy_v2_v2(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1) unnamed_addr #6 !PGOFuncName !307 {
  %3 = load float, ptr %1, align 4, !tbaa !44
  store float %3, ptr %0, align 4, !tbaa !44
  %4 = getelementptr inbounds float, ptr %1, i64 1
  %5 = load float, ptr %4, align 4, !tbaa !44
  %6 = getelementptr inbounds float, ptr %0, i64 1
  store float %5, ptr %6, align 4, !tbaa !44
  ret void
}

; Function Attrs: optsize
declare ptr @BKE_mball_basis_find(ptr noundef, ptr noundef) local_unnamed_addr #7

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc noundef ptr @add_render_lamp(ptr noundef %0, ptr noundef %1) unnamed_addr #4 !PGOFuncName !308 {
  %3 = alloca [4 x [4 x float]], align 16
  %4 = alloca [3 x float], align 4
  %5 = getelementptr inbounds %struct.Object, ptr %1, i64 0, i32 19
  %6 = load ptr, ptr %5, align 8, !tbaa !309
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %3) #24
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %4) #24
  %7 = icmp eq ptr %6, null
  br i1 %7, label %431, label %8

8:                                                ; preds = %2
  %9 = getelementptr inbounds %struct.Lamp, ptr %6, i64 0, i32 4
  %10 = load i32, ptr %9, align 4, !tbaa !310
  %11 = and i32 %10, 32
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %18, label %13

13:                                               ; preds = %8
  %14 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 45, i32 47
  %15 = load i32, ptr %14, align 8, !tbaa !87
  %16 = and i32 %15, 2
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %431, label %18

18:                                               ; preds = %13, %8
  %19 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 64
  %20 = load i32, ptr %19, align 8, !tbaa !132
  %21 = add nsw i32 %20, 1
  store i32 %21, ptr %19, align 8, !tbaa !132
  %22 = load ptr, ptr @MEM_callocN, align 8, !tbaa !47
  %23 = tail call ptr %22(i64 noundef 40, ptr noundef nonnull @.str.8) #22
  %24 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 66
  tail call void @BLI_addtail(ptr noundef nonnull %24, ptr noundef %23) #22
  %25 = getelementptr inbounds %struct.GroupObject, ptr %23, i64 0, i32 2
  store ptr %1, ptr %25, align 8, !tbaa !288
  %26 = load ptr, ptr @MEM_callocN, align 8, !tbaa !47
  %27 = tail call ptr %26(i64 noundef 672, ptr noundef nonnull @.str.9) #22
  %28 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 67
  tail call void @BLI_addtail(ptr noundef nonnull %28, ptr noundef %27) #22
  %29 = getelementptr inbounds %struct.GroupObject, ptr %23, i64 0, i32 3
  store ptr %27, ptr %29, align 8, !tbaa !312
  %30 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 32
  %31 = getelementptr inbounds %struct.Object, ptr %1, i64 0, i32 47
  call void @mul_m4_m4m4(ptr noundef nonnull %3, ptr noundef nonnull %30, ptr noundef nonnull %31) #22
  %32 = getelementptr inbounds %struct.Object, ptr %1, i64 0, i32 50
  %33 = call zeroext i8 @invert_m4_m4(ptr noundef nonnull %32, ptr noundef nonnull %3) #22
  %34 = getelementptr inbounds %struct.LampRen, ptr %27, i64 0, i32 63
  call void @copy_m4_m4(ptr noundef nonnull %34, ptr noundef nonnull %31) #22
  %35 = getelementptr inbounds %struct.LampRen, ptr %27, i64 0, i32 64
  call void @copy_m3_m4(ptr noundef nonnull %35, ptr noundef nonnull %3) #22
  %36 = getelementptr inbounds %struct.LampRen, ptr %27, i64 0, i32 59
  call void @copy_m3_m4(ptr noundef nonnull %36, ptr noundef nonnull %32) #22
  %37 = getelementptr inbounds %struct.Lamp, ptr %6, i64 0, i32 32
  %38 = getelementptr inbounds %struct.LampRen, ptr %27, i64 0, i32 31
  %39 = load <2 x i16>, ptr %37, align 8, !tbaa !77
  store <2 x i16> %39, ptr %38, align 8, !tbaa !77
  %40 = getelementptr inbounds %struct.Lamp, ptr %6, i64 0, i32 34
  %41 = load i16, ptr %40, align 4, !tbaa !313
  %42 = getelementptr inbounds %struct.LampRen, ptr %27, i64 0, i32 34
  %43 = call i16 @llvm.umax.i16(i16 %41, i16 1)
  store i16 %43, ptr %42, align 8, !tbaa !314
  %44 = getelementptr inbounds %struct.Lamp, ptr %6, i64 0, i32 37
  %45 = load i8, ptr %44, align 1, !tbaa !315
  %46 = zext i8 %45 to i16
  %47 = getelementptr inbounds %struct.LampRen, ptr %27, i64 0, i32 36
  store i16 %46, ptr %47, align 4, !tbaa !316
  %48 = getelementptr inbounds %struct.Lamp, ptr %6, i64 0, i32 35
  %49 = load i16, ptr %48, align 2, !tbaa !317
  %50 = getelementptr inbounds %struct.LampRen, ptr %27, i64 0, i32 35
  store i16 %49, ptr %50, align 2, !tbaa !318
  %51 = getelementptr inbounds %struct.Lamp, ptr %6, i64 0, i32 28
  %52 = load float, ptr %51, align 8, !tbaa !319
  %53 = getelementptr inbounds %struct.LampRen, ptr %27, i64 0, i32 33
  store float %52, ptr %53, align 4, !tbaa !320
  %54 = getelementptr inbounds %struct.Lamp, ptr %6, i64 0, i32 50
  %55 = load i16, ptr %54, align 2, !tbaa !321
  %56 = getelementptr inbounds %struct.LampRen, ptr %27, i64 0, i32 38
  store i16 %55, ptr %56, align 8, !tbaa !322
  %57 = getelementptr inbounds %struct.Lamp, ptr %6, i64 0, i32 25
  %58 = load float, ptr %57, align 4, !tbaa !323
  %59 = getelementptr inbounds %struct.LampRen, ptr %27, i64 0, i32 39
  %60 = getelementptr inbounds %struct.Lamp, ptr %6, i64 0, i32 26
  %61 = load <2 x float>, ptr %60, align 8, !tbaa !44
  %62 = getelementptr inbounds %struct.Lamp, ptr %6, i64 0, i32 29
  %63 = load float, ptr %62, align 4, !tbaa !324
  %64 = insertelement <4 x float> poison, float %58, i64 0
  %65 = shufflevector <2 x float> %61, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %66 = shufflevector <4 x float> %64, <4 x float> %65, <4 x i32> <i32 0, i32 4, i32 5, i32 poison>
  %67 = insertelement <4 x float> %66, float %63, i64 3
  store <4 x float> %67, ptr %59, align 4, !tbaa !44
  %68 = getelementptr inbounds %struct.Lamp, ptr %6, i64 0, i32 2
  %69 = load i16, ptr %68, align 8, !tbaa !325
  %70 = getelementptr inbounds %struct.LampRen, ptr %27, i64 0, i32 6
  store i16 %69, ptr %70, align 8, !tbaa !326
  %71 = load i32, ptr %9, align 4, !tbaa !310
  %72 = getelementptr inbounds %struct.LampRen, ptr %27, i64 0, i32 7
  store i32 %71, ptr %72, align 4, !tbaa !327
  %73 = getelementptr inbounds %struct.Lamp, ptr %6, i64 0, i32 15
  %74 = load float, ptr %73, align 4, !tbaa !328
  %75 = getelementptr inbounds %struct.LampRen, ptr %27, i64 0, i32 15
  %76 = and i32 %71, 16
  %77 = icmp eq i32 %76, 0
  %78 = fneg float %74
  %79 = select i1 %77, float %74, float %78
  store float %79, ptr %75, align 4, !tbaa !329
  %80 = getelementptr inbounds [4 x [4 x float]], ptr %3, i64 0, i64 2
  %81 = getelementptr inbounds %struct.LampRen, ptr %27, i64 0, i32 20
  %82 = load <2 x float>, ptr %80, align 16, !tbaa !44
  %83 = fneg <2 x float> %82
  store <2 x float> %83, ptr %81, align 8, !tbaa !44
  %84 = getelementptr inbounds [4 x [4 x float]], ptr %3, i64 0, i64 2, i64 2
  %85 = load float, ptr %84, align 8, !tbaa !44
  %86 = fneg float %85
  %87 = getelementptr inbounds %struct.LampRen, ptr %27, i64 0, i32 20, i64 2
  store float %86, ptr %87, align 8, !tbaa !44
  call fastcc void @normalize_v3(ptr noundef nonnull %81) #23
  %88 = getelementptr inbounds [4 x [4 x float]], ptr %3, i64 0, i64 3
  %89 = load float, ptr %88, align 16, !tbaa !44
  %90 = getelementptr inbounds %struct.LampRen, ptr %27, i64 0, i32 5
  store float %89, ptr %90, align 4, !tbaa !44
  %91 = getelementptr inbounds [4 x [4 x float]], ptr %3, i64 0, i64 3, i64 1
  %92 = load float, ptr %91, align 4, !tbaa !44
  %93 = getelementptr inbounds %struct.LampRen, ptr %27, i64 0, i32 5, i64 1
  store float %92, ptr %93, align 4, !tbaa !44
  %94 = getelementptr inbounds [4 x [4 x float]], ptr %3, i64 0, i64 3, i64 2
  %95 = load float, ptr %94, align 8, !tbaa !44
  %96 = getelementptr inbounds %struct.LampRen, ptr %27, i64 0, i32 5, i64 2
  store float %95, ptr %96, align 4, !tbaa !44
  %97 = getelementptr inbounds %struct.Lamp, ptr %6, i64 0, i32 16
  %98 = load float, ptr %97, align 8, !tbaa !330
  %99 = getelementptr inbounds %struct.LampRen, ptr %27, i64 0, i32 4
  store float %98, ptr %99, align 8, !tbaa !45
  %100 = getelementptr inbounds %struct.Lamp, ptr %6, i64 0, i32 19
  %101 = load float, ptr %100, align 4, !tbaa !331
  %102 = getelementptr inbounds %struct.LampRen, ptr %27, i64 0, i32 16
  store float %101, ptr %102, align 8, !tbaa !332
  %103 = fmul float %98, %98
  %104 = getelementptr inbounds %struct.LampRen, ptr %27, i64 0, i32 23
  store float %103, ptr %104, align 4, !tbaa !333
  %105 = load float, ptr %75, align 4, !tbaa !329
  %106 = getelementptr inbounds %struct.Lamp, ptr %6, i64 0, i32 7
  %107 = getelementptr inbounds %struct.LampRen, ptr %27, i64 0, i32 8
  %108 = load <2 x float>, ptr %106, align 4, !tbaa !44
  %109 = insertelement <2 x float> poison, float %105, i64 0
  %110 = shufflevector <2 x float> %109, <2 x float> poison, <2 x i32> zeroinitializer
  %111 = fmul <2 x float> %110, %108
  store <2 x float> %111, ptr %107, align 8, !tbaa !44
  %112 = getelementptr inbounds %struct.Lamp, ptr %6, i64 0, i32 9
  %113 = load float, ptr %112, align 4, !tbaa !334
  %114 = fmul float %105, %113
  %115 = getelementptr inbounds %struct.LampRen, ptr %27, i64 0, i32 10
  store float %114, ptr %115, align 8, !tbaa !335
  %116 = getelementptr inbounds %struct.Lamp, ptr %6, i64 0, i32 10
  %117 = getelementptr inbounds %struct.LampRen, ptr %27, i64 0, i32 11
  %118 = load <4 x float>, ptr %116, align 8, !tbaa !44
  store <4 x float> %118, ptr %117, align 4, !tbaa !44
  %119 = getelementptr inbounds %struct.Lamp, ptr %6, i64 0, i32 38
  %120 = load i16, ptr %119, align 2, !tbaa !336
  %121 = getelementptr inbounds %struct.LampRen, ptr %27, i64 0, i32 43
  store i16 %120, ptr %121, align 4, !tbaa !337
  %122 = getelementptr inbounds %struct.Lamp, ptr %6, i64 0, i32 39
  %123 = load i16, ptr %122, align 4, !tbaa !338
  %124 = getelementptr inbounds %struct.LampRen, ptr %27, i64 0, i32 44
  store i16 %123, ptr %124, align 2, !tbaa !339
  %125 = getelementptr inbounds %struct.Lamp, ptr %6, i64 0, i32 40
  %126 = load i16, ptr %125, align 2, !tbaa !340
  %127 = getelementptr inbounds %struct.LampRen, ptr %27, i64 0, i32 45
  store i16 %126, ptr %127, align 8, !tbaa !341
  %128 = getelementptr inbounds %struct.Lamp, ptr %6, i64 0, i32 43
  %129 = getelementptr inbounds %struct.LampRen, ptr %27, i64 0, i32 52
  %130 = getelementptr inbounds %struct.LampRen, ptr %27, i64 0, i32 53
  %131 = load <2 x float>, ptr %128, align 4, !tbaa !44
  store <2 x float> %131, ptr %129, align 8, !tbaa !44
  %132 = getelementptr inbounds %struct.Lamp, ptr %6, i64 0, i32 45
  %133 = load float, ptr %132, align 4, !tbaa !342
  %134 = getelementptr inbounds %struct.LampRen, ptr %27, i64 0, i32 54
  store float %133, ptr %134, align 8, !tbaa !343
  %135 = getelementptr inbounds %struct.Lamp, ptr %6, i64 0, i32 42
  %136 = load i16, ptr %135, align 2, !tbaa !344
  %137 = getelementptr inbounds %struct.LampRen, ptr %27, i64 0, i32 48
  store i16 %136, ptr %137, align 2, !tbaa !345
  %138 = load i16, ptr %68, align 8, !tbaa !325
  switch i16 %138, label %150 [
    i16 4, label %139
    i16 2, label %139
    i16 1, label %139
    i16 0, label %139
  ]

139:                                              ; preds = %18, %18, %18, %18
  %140 = load i32, ptr %9, align 4, !tbaa !310
  %141 = and i32 %140, 8192
  %142 = icmp ne i32 %141, 0
  %143 = icmp ult i16 %138, 3
  %144 = and i1 %143, %142
  br i1 %144, label %145, label %150

145:                                              ; preds = %139
  %146 = getelementptr inbounds %struct.Lamp, ptr %6, i64 0, i32 47
  %147 = load i16, ptr %146, align 4, !tbaa !346
  %148 = icmp eq i16 %147, 0
  br i1 %148, label %149, label %150

149:                                              ; preds = %145
  store i16 1, ptr %146, align 4, !tbaa !346
  br label %150

150:                                              ; preds = %18, %149, %145, %139
  %151 = getelementptr inbounds %struct.Lamp, ptr %6, i64 0, i32 47
  %152 = load i16, ptr %151, align 4, !tbaa !346
  %153 = getelementptr inbounds %struct.LampRen, ptr %27, i64 0, i32 46
  store i16 %152, ptr %153, align 2, !tbaa !347
  %154 = getelementptr inbounds %struct.Lamp, ptr %6, i64 0, i32 41
  %155 = load i16, ptr %154, align 8, !tbaa !348
  %156 = getelementptr inbounds %struct.LampRen, ptr %27, i64 0, i32 47
  store i16 %155, ptr %156, align 4, !tbaa !349
  %157 = getelementptr inbounds %struct.Lamp, ptr %6, i64 0, i32 46
  %158 = load float, ptr %157, align 8, !tbaa !350
  %159 = getelementptr inbounds %struct.LampRen, ptr %27, i64 0, i32 55
  store float %158, ptr %159, align 4, !tbaa !351
  %160 = getelementptr inbounds %struct.LampRen, ptr %27, i64 0, i32 56
  store ptr null, ptr %160, align 8, !tbaa !107
  %161 = load i16, ptr %70, align 8, !tbaa !326
  switch i16 %161, label %228 [
    i16 2, label %162
    i16 0, label %162
    i16 4, label %166
    i16 1, label %184
  ]

162:                                              ; preds = %150, %150
  %163 = mul i16 %120, %120
  %164 = getelementptr inbounds %struct.LampRen, ptr %27, i64 0, i32 49
  store i16 %163, ptr %164, align 8, !tbaa !43
  store i16 0, ptr %137, align 2, !tbaa !345
  %165 = extractelement <2 x float> %131, i64 0
  store float %165, ptr %130, align 4, !tbaa !42
  br label %230

166:                                              ; preds = %150
  switch i16 %136, label %183 [
    i16 0, label %167
    i16 1, label %171
    i16 2, label %174
    i16 3, label %179
  ]

167:                                              ; preds = %166
  %168 = mul i16 %120, %120
  %169 = getelementptr inbounds %struct.LampRen, ptr %27, i64 0, i32 49
  store i16 %168, ptr %169, align 8, !tbaa !43
  store i16 %120, ptr %124, align 2, !tbaa !339
  %170 = extractelement <2 x float> %131, i64 0
  store float %170, ptr %130, align 4, !tbaa !42
  br label %183

171:                                              ; preds = %166
  %172 = mul i16 %123, %120
  %173 = getelementptr inbounds %struct.LampRen, ptr %27, i64 0, i32 49
  store i16 %172, ptr %173, align 8, !tbaa !43
  br label %183

174:                                              ; preds = %166
  %175 = mul i16 %120, %120
  %176 = mul i16 %175, %120
  %177 = getelementptr inbounds %struct.LampRen, ptr %27, i64 0, i32 49
  store i16 %176, ptr %177, align 8, !tbaa !43
  store i16 %120, ptr %124, align 2, !tbaa !339
  store i16 %120, ptr %127, align 8, !tbaa !341
  %178 = extractelement <2 x float> %131, i64 0
  store float %178, ptr %130, align 4, !tbaa !42
  store float %178, ptr %134, align 8, !tbaa !343
  br label %183

179:                                              ; preds = %166
  %180 = mul i16 %123, %120
  %181 = mul i16 %180, %126
  %182 = getelementptr inbounds %struct.LampRen, ptr %27, i64 0, i32 49
  store i16 %181, ptr %182, align 8, !tbaa !43
  br label %183

183:                                              ; preds = %166, %179, %174, %171, %167
  call void @area_lamp_vectors(ptr noundef nonnull %27) #23
  call void @init_jitter_plane(ptr noundef nonnull %27) #22
  br label %230

184:                                              ; preds = %150
  %185 = mul i16 %120, %120
  %186 = getelementptr inbounds %struct.LampRen, ptr %27, i64 0, i32 49
  store i16 %185, ptr %186, align 8, !tbaa !43
  store i16 0, ptr %137, align 2, !tbaa !345
  %187 = extractelement <2 x float> %131, i64 0
  store float %187, ptr %130, align 4, !tbaa !42
  %188 = getelementptr inbounds %struct.Lamp, ptr %6, i64 0, i32 51
  %189 = load i16, ptr %188, align 4, !tbaa !352
  %190 = and i16 %189, 3
  %191 = icmp eq i16 %190, 0
  br i1 %191, label %230, label %192

192:                                              ; preds = %184
  %193 = load ptr, ptr @MEM_callocN, align 8, !tbaa !47
  %194 = call ptr %193(i64 noundef 224, ptr noundef nonnull @.str.10) #22
  store ptr %194, ptr %160, align 8, !tbaa !107
  %195 = load i16, ptr %188, align 4, !tbaa !352
  store i16 %195, ptr %194, align 4, !tbaa !353
  %196 = getelementptr inbounds %struct.Object, ptr %1, i64 0, i32 47, i64 2
  call fastcc void @copy_v3_v3(ptr noundef nonnull %4, ptr noundef nonnull %196) #23
  call fastcc void @normalize_v3(ptr noundef nonnull %4) #23
  %197 = load ptr, ptr %160, align 8, !tbaa !107
  %198 = getelementptr inbounds %struct.Lamp, ptr %6, i64 0, i32 59
  %199 = load float, ptr %198, align 8, !tbaa !355
  %200 = getelementptr inbounds %struct.Lamp, ptr %6, i64 0, i32 53
  %201 = load float, ptr %200, align 8, !tbaa !356
  %202 = getelementptr inbounds %struct.Lamp, ptr %6, i64 0, i32 54
  %203 = load float, ptr %202, align 4, !tbaa !357
  %204 = getelementptr inbounds %struct.Lamp, ptr %6, i64 0, i32 55
  %205 = load float, ptr %204, align 8, !tbaa !358
  %206 = getelementptr inbounds %struct.Lamp, ptr %6, i64 0, i32 56
  %207 = load float, ptr %206, align 4, !tbaa !359
  %208 = getelementptr inbounds %struct.Lamp, ptr %6, i64 0, i32 57
  %209 = load float, ptr %208, align 8, !tbaa !360
  %210 = getelementptr inbounds %struct.Lamp, ptr %6, i64 0, i32 63
  %211 = load float, ptr %210, align 8, !tbaa !361
  %212 = getelementptr inbounds %struct.Lamp, ptr %6, i64 0, i32 52
  %213 = load i16, ptr %212, align 2, !tbaa !362
  %214 = getelementptr inbounds %struct.Lamp, ptr %6, i64 0, i32 64
  %215 = load float, ptr %214, align 4, !tbaa !363
  %216 = getelementptr inbounds %struct.Lamp, ptr %6, i64 0, i32 66
  %217 = load i16, ptr %216, align 4, !tbaa !364
  %218 = sitofp i16 %217 to float
  call void @InitSunSky(ptr noundef %197, float noundef %199, ptr noundef nonnull %4, float noundef %201, float noundef %203, float noundef %205, float noundef %207, float noundef %209, float noundef %211, i16 noundef signext %213, float noundef %215, float noundef %218) #22
  %219 = load ptr, ptr %160, align 8, !tbaa !107
  %220 = getelementptr inbounds %struct.Lamp, ptr %6, i64 0, i32 58
  %221 = load float, ptr %220, align 4, !tbaa !365
  %222 = getelementptr inbounds %struct.Lamp, ptr %6, i64 0, i32 60
  %223 = load float, ptr %222, align 4, !tbaa !366
  %224 = getelementptr inbounds %struct.Lamp, ptr %6, i64 0, i32 61
  %225 = load float, ptr %224, align 8, !tbaa !367
  %226 = getelementptr inbounds %struct.Lamp, ptr %6, i64 0, i32 62
  %227 = load float, ptr %226, align 4, !tbaa !368
  call void @InitAtmosphere(ptr noundef %219, float noundef %221, float noundef 1.000000e+00, float noundef 1.000000e+00, float noundef %223, float noundef %225, float noundef %227) #22
  br label %230

228:                                              ; preds = %150
  %229 = getelementptr inbounds %struct.LampRen, ptr %27, i64 0, i32 49
  store i16 0, ptr %229, align 8, !tbaa !43
  br label %230

230:                                              ; preds = %184, %183, %192, %228, %162
  %231 = getelementptr inbounds %struct.Lamp, ptr %6, i64 0, i32 17
  %232 = load float, ptr %231, align 4, !tbaa !369
  %233 = getelementptr inbounds %struct.LampRen, ptr %27, i64 0, i32 18
  %234 = load i32, ptr %72, align 4, !tbaa !327
  %235 = and i32 %234, 2
  %236 = icmp ne i32 %235, 0
  %237 = fcmp ogt float %232, 0x4007BC89C0000000
  %238 = select i1 %236, i1 %237, i1 false
  %239 = fmul float %232, 5.000000e-01
  %240 = select i1 %238, float 0x3FF7BC89C0000000, float %239
  %241 = call float @cosf(float noundef %240) #22
  store float %241, ptr %233, align 8, !tbaa !370
  %242 = fsub float 1.000000e+00, %241
  %243 = getelementptr inbounds %struct.Lamp, ptr %6, i64 0, i32 18
  %244 = load float, ptr %243, align 8, !tbaa !371
  %245 = fmul float %242, %244
  %246 = getelementptr inbounds %struct.LampRen, ptr %27, i64 0, i32 19
  store float %245, ptr %246, align 4, !tbaa !372
  %247 = getelementptr inbounds %struct.LampRen, ptr %27, i64 0, i32 69
  %248 = getelementptr inbounds %struct.Lamp, ptr %6, i64 0, i32 69
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(144) %247, ptr noundef nonnull align 8 dereferenceable(144) %248, i64 144, i1 false)
  %249 = getelementptr inbounds %struct.Object, ptr %1, i64 0, i32 52
  %250 = load i32, ptr %249, align 8, !tbaa !154
  %251 = and i32 %250, 16777215
  %252 = getelementptr inbounds %struct.LampRen, ptr %27, i64 0, i32 17
  store i32 %251, ptr %252, align 4, !tbaa !373
  %253 = getelementptr inbounds %struct.Lamp, ptr %6, i64 0, i32 23
  %254 = load i16, ptr %253, align 8, !tbaa !374
  %255 = getelementptr inbounds %struct.LampRen, ptr %27, i64 0, i32 27
  store i16 %254, ptr %255, align 4, !tbaa !375
  %256 = getelementptr inbounds %struct.Lamp, ptr %6, i64 0, i32 20
  %257 = getelementptr inbounds %struct.LampRen, ptr %27, i64 0, i32 28
  %258 = load <2 x float>, ptr %256, align 8, !tbaa !44
  store <2 x float> %258, ptr %257, align 8, !tbaa !44
  %259 = getelementptr inbounds %struct.Lamp, ptr %6, i64 0, i32 22
  %260 = load ptr, ptr %259, align 8, !tbaa !376
  %261 = call ptr @curvemapping_copy(ptr noundef %260) #22
  %262 = getelementptr inbounds %struct.LampRen, ptr %27, i64 0, i32 30
  store ptr %261, ptr %262, align 8, !tbaa !108
  %263 = icmp eq ptr %261, null
  br i1 %263, label %265, label %264

264:                                              ; preds = %230
  call void @curvemapping_initialize(ptr noundef nonnull %261) #22
  br label %265

265:                                              ; preds = %264, %230
  %266 = load i16, ptr %70, align 8, !tbaa !326
  %267 = icmp eq i16 %266, 2
  br i1 %267, label %268, label %283

268:                                              ; preds = %265
  call fastcc void @normalize_v3(ptr noundef nonnull %36) #23
  %269 = getelementptr inbounds %struct.LampRen, ptr %27, i64 0, i32 59, i64 1
  call fastcc void @normalize_v3(ptr noundef nonnull %269) #23
  %270 = getelementptr inbounds %struct.LampRen, ptr %27, i64 0, i32 59, i64 2
  call fastcc void @normalize_v3(ptr noundef nonnull %270) #23
  %271 = load float, ptr %233, align 8, !tbaa !370
  %272 = call fastcc float @saacos(float noundef %271) #23
  %273 = call float @sinf(float noundef %272) #22
  %274 = call float @cosf(float noundef %272) #22
  %275 = fdiv float %273, %274
  %276 = fdiv float 1.000000e+00, %275
  %277 = getelementptr inbounds %struct.LampRen, ptr %27, i64 0, i32 60
  store float %276, ptr %277, align 4, !tbaa !377
  %278 = load i32, ptr %72, align 4, !tbaa !327
  %279 = and i32 %278, 8225
  %280 = icmp eq i32 %279, 32
  br i1 %280, label %281, label %283

281:                                              ; preds = %268
  %282 = add nsw i32 %278, -32
  store i32 %282, ptr %72, align 4, !tbaa !327
  br label %283

283:                                              ; preds = %268, %281, %265
  %284 = load i16, ptr %68, align 8, !tbaa !325
  switch i16 %284, label %319 [
    i16 2, label %285
    i16 3, label %316
  ]

285:                                              ; preds = %283
  %286 = load i32, ptr %9, align 4, !tbaa !310
  %287 = and i32 %286, 2
  %288 = icmp eq i32 %287, 0
  br i1 %288, label %319, label %289

289:                                              ; preds = %285
  %290 = load i8, ptr %44, align 1, !tbaa !315
  %291 = icmp eq i8 %290, 3
  br i1 %291, label %319, label %292

292:                                              ; preds = %289
  %293 = load float, ptr %100, align 4, !tbaa !331
  %294 = fcmp ogt float %293, 0.000000e+00
  br i1 %294, label %295, label %319

295:                                              ; preds = %292
  %296 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 4
  %297 = load i16, ptr %296, align 8, !tbaa !257
  %298 = or i16 %297, 8
  store i16 %298, ptr %296, align 8, !tbaa !257
  %299 = getelementptr inbounds %struct.LampRen, ptr %27, i64 0, i32 61
  %300 = load <2 x float>, ptr %90, align 4, !tbaa !44
  %301 = fneg <2 x float> %300
  store <2 x float> %301, ptr %299, align 8, !tbaa !44
  %302 = load float, ptr %96, align 4, !tbaa !44
  %303 = fneg float %302
  %304 = getelementptr inbounds %struct.LampRen, ptr %27, i64 0, i32 61, i64 2
  store float %303, ptr %304, align 8, !tbaa !44
  call void @mul_m3_v3(ptr noundef nonnull %36, ptr noundef nonnull %299) #22
  %305 = load float, ptr %233, align 8, !tbaa !370
  %306 = call fastcc float @saacos(float noundef %305) #23
  %307 = load float, ptr %233, align 8, !tbaa !370
  %308 = call float @sinf(float noundef %306) #22
  %309 = fdiv float %308, %307
  %310 = getelementptr inbounds %struct.LampRen, ptr %27, i64 0, i32 62
  store float %309, ptr %310, align 4, !tbaa !378
  %311 = load float, ptr %304, align 8, !tbaa !44
  %312 = fmul float %309, %311
  store float %312, ptr %304, align 8, !tbaa !44
  %313 = load i16, ptr %47, align 4, !tbaa !316
  %314 = icmp eq i16 %313, 2
  br i1 %314, label %315, label %319

315:                                              ; preds = %295
  store i16 0, ptr %47, align 4, !tbaa !316
  br label %319

316:                                              ; preds = %283
  %317 = load i32, ptr %72, align 4, !tbaa !327
  %318 = and i32 %317, -8194
  store i32 %318, ptr %72, align 4, !tbaa !327
  br label %319

319:                                              ; preds = %283, %285, %289, %316, %292, %315, %295
  %320 = load i8, ptr getelementptr inbounds (%struct.Global, ptr @G, i64 0, i32 13), align 2
  %321 = icmp eq i8 %320, 0
  %322 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 5
  br label %323

323:                                              ; preds = %319, %357
  %324 = phi i64 [ 0, %319 ], [ %358, %357 ]
  %325 = getelementptr inbounds %struct.Lamp, ptr %6, i64 0, i32 69, i64 %324
  %326 = load ptr, ptr %325, align 8, !tbaa !47
  %327 = icmp eq ptr %326, null
  br i1 %327, label %357, label %328

328:                                              ; preds = %323
  %329 = getelementptr inbounds %struct.MTex, ptr %326, i64 0, i32 5
  %330 = load ptr, ptr %329, align 8, !tbaa !79
  %331 = icmp eq ptr %330, null
  br i1 %331, label %357, label %332

332:                                              ; preds = %328
  %333 = getelementptr inbounds %struct.MTex, ptr %326, i64 0, i32 1
  %334 = load i16, ptr %333, align 2, !tbaa !379
  %335 = and i16 %334, 1
  %336 = icmp eq i16 %335, 0
  br i1 %336, label %340, label %337

337:                                              ; preds = %332
  %338 = load i32, ptr %72, align 4, !tbaa !327
  %339 = or i32 %338, 256
  store i32 %339, ptr %72, align 4, !tbaa !327
  br label %340

340:                                              ; preds = %337, %332
  %341 = and i16 %334, 2
  %342 = icmp eq i16 %341, 0
  br i1 %342, label %346, label %343

343:                                              ; preds = %340
  %344 = load i32, ptr %72, align 4, !tbaa !327
  %345 = or i32 %344, 65536
  store i32 %345, ptr %72, align 4, !tbaa !327
  br label %346

346:                                              ; preds = %343, %340
  br i1 %321, label %357, label %347

347:                                              ; preds = %346
  %348 = load i16, ptr %322, align 2, !tbaa !84
  %349 = icmp eq i16 %348, 0
  br i1 %349, label %357, label %350

350:                                              ; preds = %347
  %351 = getelementptr inbounds %struct.Tex, ptr %330, i64 0, i32 32
  %352 = load i16, ptr %351, align 8, !tbaa !380
  %353 = icmp eq i16 %352, 8
  br i1 %353, label %354, label %357

354:                                              ; preds = %350
  %355 = load i32, ptr %72, align 4, !tbaa !327
  %356 = or i32 %355, 512
  store i32 %356, ptr %72, align 4, !tbaa !327
  br label %357

357:                                              ; preds = %323, %328, %347, %354, %350, %346
  %358 = add nuw nsw i64 %324, 1
  %359 = icmp eq i64 %358, 18
  br i1 %359, label %360, label %323, !llvm.loop !383

360:                                              ; preds = %357
  %361 = load i32, ptr %72, align 4, !tbaa !327
  %362 = and i32 %361, 8192
  %363 = icmp ne i32 %362, 0
  %364 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 45, i32 47
  %365 = load i32, ptr %364, align 8, !tbaa !87
  %366 = and i32 %365, 65536
  %367 = icmp eq i32 %366, 0
  %368 = select i1 %363, i1 %367, i1 false
  br i1 %368, label %369, label %371

369:                                              ; preds = %360
  %370 = and i32 %361, -8193
  store i32 %370, ptr %72, align 4, !tbaa !327
  br label %371

371:                                              ; preds = %360, %369
  %372 = phi i32 [ %370, %369 ], [ %361, %360 ]
  %373 = and i32 %365, 2
  %374 = icmp eq i32 %373, 0
  br i1 %374, label %431, label %375

375:                                              ; preds = %371
  %376 = load i16, ptr %68, align 8, !tbaa !325
  switch i16 %376, label %392 [
    i16 4, label %377
    i16 2, label %384
  ]

377:                                              ; preds = %375
  %378 = and i32 %372, 8192
  %379 = icmp eq i32 %378, 0
  br i1 %379, label %392, label %380

380:                                              ; preds = %377
  %381 = load i16, ptr %153, align 2, !tbaa !347
  %382 = icmp eq i16 %381, 0
  br i1 %382, label %383, label %392

383:                                              ; preds = %380
  call void @init_jitter_plane(ptr noundef nonnull %27) #22
  br label %392

384:                                              ; preds = %375
  %385 = and i32 %372, 1
  %386 = icmp eq i32 %385, 0
  br i1 %386, label %392, label %387

387:                                              ; preds = %384
  %388 = getelementptr inbounds %struct.Lamp, ptr %6, i64 0, i32 36
  %389 = load i8, ptr %388, align 8, !tbaa !384
  %390 = zext i8 %389 to i16
  %391 = getelementptr inbounds %struct.LampRen, ptr %27, i64 0, i32 37
  store i16 %390, ptr %391, align 2, !tbaa !385
  call void @copy_m4_m4(ptr noundef nonnull %3, ptr noundef nonnull %31) #22
  call fastcc void @initshadowbuf(ptr noundef nonnull %0, ptr noundef nonnull %27, ptr noundef nonnull %3) #23
  br label %392

392:                                              ; preds = %375, %377, %380, %384, %387, %383
  %393 = getelementptr inbounds %struct.LampRen, ptr %27, i64 0, i32 57
  %394 = load ptr, ptr %393, align 8, !tbaa !386
  %395 = icmp eq ptr %394, null
  br i1 %395, label %396, label %400

396:                                              ; preds = %392
  %397 = load i32, ptr %72, align 4, !tbaa !327
  %398 = and i32 %397, 8192
  %399 = icmp eq i32 %398, 0
  br i1 %399, label %431, label %400

400:                                              ; preds = %396, %392
  %401 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 42
  store i32 0, ptr %401, align 8
  %402 = load ptr, ptr @MEM_mallocN, align 8, !tbaa !47
  %403 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 45, i32 14
  %404 = load i16, ptr %403, align 2, !tbaa !387
  %405 = sext i16 %404 to i64
  %406 = mul nsw i64 %405, 320
  %407 = call ptr %402(i64 noundef %406, ptr noundef nonnull @.str.11) #22
  %408 = getelementptr inbounds %struct.LampRen, ptr %27, i64 0, i32 67
  store ptr %407, ptr %408, align 8, !tbaa !106
  %409 = load i16, ptr %403, align 2, !tbaa !387
  %410 = sext i16 %409 to i32
  %411 = icmp sgt i16 %409, 0
  br i1 %411, label %412, label %431

412:                                              ; preds = %400
  %413 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 45, i32 54
  %414 = load i16, ptr %413, align 2, !tbaa !388
  %415 = sext i16 %414 to i32
  %416 = icmp sgt i16 %414, 0
  br label %417

417:                                              ; preds = %412, %427
  %418 = phi i32 [ 0, %412 ], [ %428, %427 ]
  %419 = phi ptr [ %407, %412 ], [ %429, %427 ]
  br i1 %416, label %420, label %427

420:                                              ; preds = %417, %420
  %421 = phi i32 [ %424, %420 ], [ 0, %417 ]
  %422 = phi ptr [ %425, %420 ], [ %419, %417 ]
  store i32 -1, ptr %422, align 4, !tbaa !389
  %423 = getelementptr inbounds %struct.LampShadowSubSample, ptr %422, i64 0, i32 1
  store <4 x float> <float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float 1.000000e+00>, ptr %423, align 4, !tbaa !44
  %424 = add nuw nsw i32 %421, 1
  %425 = getelementptr inbounds %struct.LampShadowSubSample, ptr %422, i64 1
  %426 = icmp eq i32 %424, %415
  br i1 %426, label %427, label %420, !llvm.loop !391

427:                                              ; preds = %420, %417
  %428 = add nuw nsw i32 %418, 1
  %429 = getelementptr inbounds %struct.LampShadowSample, ptr %419, i64 1
  %430 = icmp eq i32 %428, %410
  br i1 %430, label %431, label %417, !llvm.loop !392

431:                                              ; preds = %427, %400, %371, %396, %13, %2
  %432 = phi ptr [ null, %2 ], [ null, %13 ], [ %23, %396 ], [ %23, %371 ], [ %23, %400 ], [ %23, %427 ]
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %4) #24
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %3) #24
  ret ptr %432
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define internal fastcc noundef i32 @render_object_type(i16 noundef signext %0) unnamed_addr #14 !PGOFuncName !393 {
  %2 = add i16 %0, -1
  %3 = icmp ult i16 %2, 5
  %4 = zext i1 %3 to i32
  ret i32 %4
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @add_render_object(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4, i32 noundef %5) unnamed_addr #4 !PGOFuncName !394 {
  %7 = icmp eq ptr %3, null
  br i1 %7, label %11, label %8

8:                                                ; preds = %6
  %9 = getelementptr inbounds %struct.DupliObject, ptr %3, i64 0, i32 9
  %10 = load i32, ptr %9, align 8, !tbaa !78
  br label %11

11:                                               ; preds = %6, %8
  %12 = phi i32 [ %10, %8 ], [ 0, %6 ]
  %13 = getelementptr inbounds %struct.Object, ptr %1, i64 0, i32 109
  %14 = load ptr, ptr %13, align 8, !tbaa !271
  %15 = icmp eq ptr %14, null
  br i1 %15, label %42, label %16

16:                                               ; preds = %11
  %17 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 45, i32 46
  %18 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 32
  %19 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 35
  %20 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 13
  %21 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 14
  br label %22

22:                                               ; preds = %16, %37
  %23 = phi i32 [ 0, %16 ], [ %30, %37 ]
  %24 = phi ptr [ %14, %16 ], [ %38, %37 ]
  %25 = getelementptr inbounds %struct.ParticleSystem, ptr %24, i64 0, i32 2
  %26 = load ptr, ptr %25, align 8, !tbaa !275
  %27 = getelementptr inbounds %struct.ParticleSettings, ptr %26, i64 0, i32 15
  %28 = load i32, ptr %27, align 8, !tbaa !395
  %29 = and i32 %28, 8
  %30 = add nuw nsw i32 %29, %23
  %31 = load i32, ptr %17, align 4, !tbaa !104
  %32 = and i32 %31, 524288
  %33 = icmp eq i32 %32, 0
  br i1 %33, label %34, label %37

34:                                               ; preds = %22
  %35 = load i32, ptr %20, align 4, !tbaa !217
  %36 = load i32, ptr %21, align 8, !tbaa !218
  tail call void @psys_render_set(ptr noundef %1, ptr noundef nonnull %24, ptr noundef nonnull %18, ptr noundef nonnull %19, i32 noundef %35, i32 noundef %36, i32 noundef %5) #22
  br label %37

37:                                               ; preds = %22, %34
  %38 = load ptr, ptr %24, align 8, !tbaa !396
  %39 = icmp eq ptr %38, null
  br i1 %39, label %40, label %22, !llvm.loop !397

40:                                               ; preds = %37
  %41 = icmp eq i32 %30, 0
  br i1 %41, label %87, label %42

42:                                               ; preds = %11, %40
  %43 = getelementptr inbounds %struct.Object, ptr %1, i64 0, i32 52
  %44 = load i32, ptr %43, align 8, !tbaa !154
  %45 = tail call ptr @RE_addRenderObject(ptr noundef %0, ptr noundef %1, ptr noundef %2, i32 noundef %12, i32 noundef 0, i32 noundef %44) #22
  br i1 %7, label %50, label %46

46:                                               ; preds = %42
  %47 = getelementptr inbounds %struct.DupliObject, ptr %3, i64 0, i32 8
  %48 = load i8, ptr %47, align 1, !tbaa !297
  %49 = icmp eq i8 %48, 0
  br i1 %49, label %55, label %50

50:                                               ; preds = %46, %42
  %51 = getelementptr inbounds %struct.Object, ptr %1, i64 0, i32 55
  %52 = load i16, ptr %51, align 8, !tbaa !140
  %53 = and i16 %52, 4096
  %54 = icmp eq i16 %53, 0
  br i1 %54, label %61, label %55

55:                                               ; preds = %50, %46
  %56 = getelementptr inbounds %struct.ObjectRen, ptr %45, i64 0, i32 7
  %57 = load i32, ptr %56, align 8, !tbaa !300
  %58 = or i32 %57, 1
  store i32 %58, ptr %56, align 8, !tbaa !300
  %59 = getelementptr inbounds %struct.ObjectRen, ptr %45, i64 0, i32 28
  %60 = getelementptr inbounds %struct.Object, ptr %1, i64 0, i32 47
  tail call void @copy_m4_m4(ptr noundef nonnull %59, ptr noundef nonnull %60) #22
  br label %61

61:                                               ; preds = %55, %50
  tail call fastcc void @init_render_object_data(ptr noundef %0, ptr noundef %45, i32 noundef %5) #23
  %62 = getelementptr inbounds %struct.Object, ptr %1, i64 0, i32 55
  %63 = load i16, ptr %62, align 8, !tbaa !140
  %64 = and i16 %63, 4096
  %65 = icmp eq i16 %64, 0
  br i1 %65, label %66, label %70

66:                                               ; preds = %61
  %67 = load i32, ptr %43, align 8, !tbaa !154
  %68 = tail call ptr @RE_addRenderInstance(ptr noundef %0, ptr noundef %45, ptr noundef nonnull %1, ptr noundef %2, i32 noundef %12, i32 noundef 0, ptr noundef null, i32 noundef %67) #22
  br i1 %7, label %71, label %69

69:                                               ; preds = %66
  tail call fastcc void @set_dupli_tex_mat(ptr noundef %0, ptr noundef %68, ptr noundef nonnull %3, ptr noundef %4) #23
  br label %71

70:                                               ; preds = %61
  tail call fastcc void @find_dupli_instances(ptr noundef %0, ptr noundef %45, ptr noundef %3) #23
  br label %71

71:                                               ; preds = %66, %69, %70
  %72 = getelementptr inbounds %struct.Object, ptr %1, i64 0, i32 31
  %73 = load i32, ptr %72, align 8, !tbaa !398
  %74 = icmp slt i32 %73, 1
  br i1 %74, label %87, label %75

75:                                               ; preds = %71, %83
  %76 = phi i32 [ %84, %83 ], [ 1, %71 ]
  %77 = trunc i32 %76 to i16
  %78 = tail call fastcc ptr @give_render_material(ptr noundef %0, ptr noundef nonnull %1, i16 noundef signext %77) #23
  %79 = getelementptr inbounds %struct.Material, ptr %78, i64 0, i32 2
  %80 = load i16, ptr %79, align 8, !tbaa !294
  %81 = icmp eq i16 %80, 2
  br i1 %81, label %82, label %83

82:                                               ; preds = %75
  tail call fastcc void @add_volume(ptr noundef %0, ptr noundef %45, ptr noundef nonnull %78) #23
  br label %83

83:                                               ; preds = %82, %75
  %84 = add nuw nsw i32 %76, 1
  %85 = load i32, ptr %72, align 8, !tbaa !398
  %86 = icmp slt i32 %76, %85
  br i1 %86, label %75, label %87, !llvm.loop !399

87:                                               ; preds = %83, %71, %40
  %88 = load ptr, ptr %13, align 8, !tbaa !271
  %89 = icmp eq ptr %88, null
  br i1 %89, label %142, label %90

90:                                               ; preds = %87
  %91 = getelementptr inbounds %struct.Object, ptr %1, i64 0, i32 52
  %92 = getelementptr inbounds %struct.DupliObject, ptr %3, i64 0, i32 8
  %93 = getelementptr inbounds %struct.Object, ptr %1, i64 0, i32 55
  %94 = getelementptr inbounds %struct.Object, ptr %1, i64 0, i32 47
  %95 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 45, i32 46
  br label %96

96:                                               ; preds = %90, %138
  %97 = phi i32 [ 1, %90 ], [ %140, %138 ]
  %98 = phi ptr [ %88, %90 ], [ %139, %138 ]
  %99 = tail call i32 @psys_check_enabled(ptr noundef %1, ptr noundef nonnull %98) #22
  %100 = icmp eq i32 %99, 0
  br i1 %100, label %138, label %101

101:                                              ; preds = %96
  %102 = load i32, ptr %91, align 8, !tbaa !154
  %103 = tail call ptr @RE_addRenderObject(ptr noundef %0, ptr noundef %1, ptr noundef %2, i32 noundef %12, i32 noundef %97, i32 noundef %102) #22
  br i1 %7, label %107, label %104

104:                                              ; preds = %101
  %105 = load i8, ptr %92, align 1, !tbaa !297
  %106 = icmp eq i8 %105, 0
  br i1 %106, label %111, label %107

107:                                              ; preds = %104, %101
  %108 = load i16, ptr %93, align 8, !tbaa !140
  %109 = and i16 %108, 4096
  %110 = icmp eq i16 %109, 0
  br i1 %110, label %116, label %111

111:                                              ; preds = %107, %104
  %112 = getelementptr inbounds %struct.ObjectRen, ptr %103, i64 0, i32 7
  %113 = load i32, ptr %112, align 8, !tbaa !300
  %114 = or i32 %113, 1
  store i32 %114, ptr %112, align 8, !tbaa !300
  %115 = getelementptr inbounds %struct.ObjectRen, ptr %103, i64 0, i32 28
  tail call void @copy_m4_m4(ptr noundef nonnull %115, ptr noundef nonnull %94) #22
  br label %116

116:                                              ; preds = %111, %107
  br i1 %7, label %121, label %117

117:                                              ; preds = %116
  %118 = getelementptr inbounds %struct.ParticleSystem, ptr %98, i64 0, i32 25
  %119 = load i32, ptr %118, align 4, !tbaa !400
  %120 = or i32 %119, 128
  store i32 %120, ptr %118, align 4, !tbaa !400
  br label %121

121:                                              ; preds = %117, %116
  tail call fastcc void @init_render_object_data(ptr noundef %0, ptr noundef %103, i32 noundef %5) #23
  %122 = load i32, ptr %95, align 4, !tbaa !104
  %123 = and i32 %122, 524288
  %124 = icmp eq i32 %123, 0
  br i1 %124, label %125, label %126

125:                                              ; preds = %121
  tail call void @psys_render_restore(ptr noundef nonnull %1, ptr noundef nonnull %98) #22
  br label %126

126:                                              ; preds = %125, %121
  %127 = getelementptr inbounds %struct.ParticleSystem, ptr %98, i64 0, i32 25
  %128 = load i32, ptr %127, align 4, !tbaa !400
  %129 = and i32 %128, -129
  store i32 %129, ptr %127, align 4, !tbaa !400
  %130 = load i16, ptr %93, align 8, !tbaa !140
  %131 = and i16 %130, 4096
  %132 = icmp eq i16 %131, 0
  br i1 %132, label %133, label %137

133:                                              ; preds = %126
  %134 = load i32, ptr %91, align 8, !tbaa !154
  %135 = tail call ptr @RE_addRenderInstance(ptr noundef nonnull %0, ptr noundef %103, ptr noundef nonnull %1, ptr noundef %2, i32 noundef %12, i32 noundef %97, ptr noundef null, i32 noundef %134) #22
  br i1 %7, label %138, label %136

136:                                              ; preds = %133
  tail call fastcc void @set_dupli_tex_mat(ptr noundef nonnull %0, ptr noundef %135, ptr noundef nonnull %3, ptr noundef %4) #23
  br label %138

137:                                              ; preds = %126
  tail call fastcc void @find_dupli_instances(ptr noundef nonnull %0, ptr noundef %103, ptr noundef %3) #23
  br label %138

138:                                              ; preds = %137, %136, %133, %96
  %139 = load ptr, ptr %98, align 8, !tbaa !396
  %140 = add nuw nsw i32 %97, 1
  %141 = icmp eq ptr %139, null
  br i1 %141, label %142, label %96, !llvm.loop !401

142:                                              ; preds = %138, %87
  ret void
}

; Function Attrs: optsize
declare double @PIL_check_seconds_timer() local_unnamed_addr #7

; Function Attrs: optsize
declare void @BLI_addtail(ptr noundef, ptr noundef) local_unnamed_addr #7

; Function Attrs: optsize
declare void @init_jitter_plane(ptr noundef) local_unnamed_addr #7

; Function Attrs: optsize
declare void @InitSunSky(ptr noundef, float noundef, ptr noundef, float noundef, float noundef, float noundef, float noundef, float noundef, float noundef, i16 noundef signext, float noundef, float noundef) local_unnamed_addr #7

; Function Attrs: optsize
declare void @InitAtmosphere(ptr noundef, float noundef, float noundef, float noundef, float noundef, float noundef, float noundef) local_unnamed_addr #7

; Function Attrs: mustprogress nofree nounwind optsize willreturn memory(write)
declare float @cosf(float noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @curvemapping_copy(ptr noundef) local_unnamed_addr #7

; Function Attrs: optsize
declare void @curvemapping_initialize(ptr noundef) local_unnamed_addr #7

; Function Attrs: mustprogress nofree noinline nounwind optsize willreturn memory(write) uwtable
define internal fastcc float @saacos(float noundef %0) unnamed_addr #15 !PGOFuncName !402 {
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
declare float @sinf(float noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @mul_m3_v3(ptr noundef, ptr noundef) local_unnamed_addr #7

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @initshadowbuf(ptr noundef %0, ptr nocapture noundef %1, ptr noundef %2) unnamed_addr #4 !PGOFuncName !403 {
  %4 = alloca [4 x [4 x float]], align 16
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %4) #24
  %5 = load ptr, ptr @MEM_callocN, align 8, !tbaa !47
  %6 = tail call ptr %5(i64 noundef 280, ptr noundef nonnull @.str.12) #22
  %7 = getelementptr inbounds %struct.LampRen, ptr %1, i64 0, i32 57
  store ptr %6, ptr %7, align 8, !tbaa !386
  %8 = icmp eq ptr %6, null
  br i1 %8, label %65, label %9

9:                                                ; preds = %3
  %10 = getelementptr inbounds %struct.LampRen, ptr %1, i64 0, i32 5
  %11 = getelementptr inbounds %struct.ShadBuf, ptr %6, i64 0, i32 13
  %12 = load <2 x float>, ptr %10, align 4, !tbaa !44
  %13 = fptosi <2 x float> %12 to <2 x i32>
  store <2 x i32> %13, ptr %11, align 4, !tbaa !78
  %14 = getelementptr inbounds %struct.LampRen, ptr %1, i64 0, i32 5, i64 2
  %15 = load float, ptr %14, align 4, !tbaa !44
  %16 = fptosi float %15 to i32
  %17 = getelementptr inbounds %struct.ShadBuf, ptr %6, i64 0, i32 13, i64 2
  store i32 %16, ptr %17, align 4, !tbaa !78
  %18 = getelementptr inbounds %struct.LampRen, ptr %1, i64 0, i32 31
  %19 = load i16, ptr %18, align 8, !tbaa !404
  %20 = sext i16 %19 to i32
  %21 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 45, i32 30
  %22 = load i16, ptr %21, align 2, !tbaa !405
  %23 = sext i16 %22 to i32
  %24 = mul nsw i32 %23, %20
  %25 = sdiv i32 %24, 100
  %26 = getelementptr inbounds %struct.ShadBuf, ptr %6, i64 0, i32 14
  %27 = icmp slt i32 %24, 51200
  %28 = tail call i32 @llvm.smin.i32(i32 %25, i32 %20)
  %29 = and i32 %28, -16
  %30 = select i1 %27, i32 512, i32 %29
  store i32 %30, ptr %26, align 8, !tbaa !406
  %31 = getelementptr inbounds %struct.LampRen, ptr %1, i64 0, i32 32
  %32 = load i16, ptr %31, align 2, !tbaa !408
  store i16 %32, ptr %6, align 8, !tbaa !409
  %33 = getelementptr inbounds %struct.LampRen, ptr %1, i64 0, i32 33
  %34 = load float, ptr %33, align 4, !tbaa !320
  %35 = getelementptr inbounds %struct.ShadBuf, ptr %6, i64 0, i32 11
  store float %34, ptr %35, align 4, !tbaa !410
  %36 = getelementptr inbounds %struct.LampRen, ptr %1, i64 0, i32 38
  %37 = load i16, ptr %36, align 8, !tbaa !322
  %38 = getelementptr inbounds %struct.ShadBuf, ptr %6, i64 0, i32 1
  store i16 %37, ptr %38, align 2, !tbaa !411
  tail call void @normalize_m4(ptr noundef %2) #22
  %39 = getelementptr inbounds %struct.ShadBuf, ptr %6, i64 0, i32 5
  %40 = tail call zeroext i8 @invert_m4_m4(ptr noundef nonnull %39, ptr noundef %2) #22
  %41 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 32
  %42 = call zeroext i8 @invert_m4_m4(ptr noundef nonnull %4, ptr noundef nonnull %41) #22
  %43 = getelementptr inbounds %struct.ShadBuf, ptr %6, i64 0, i32 4
  call void @mul_m4_m4m4(ptr noundef nonnull %43, ptr noundef nonnull %39, ptr noundef nonnull %4) #22
  %44 = getelementptr inbounds %struct.LampRen, ptr %1, i64 0, i32 39
  %45 = getelementptr inbounds %struct.ShadBuf, ptr %6, i64 0, i32 8
  %46 = load <2 x float>, ptr %44, align 4, !tbaa !44
  store <2 x float> %46, ptr %45, align 8, !tbaa !44
  %47 = getelementptr inbounds %struct.LampRen, ptr %1, i64 0, i32 41
  %48 = load float, ptr %47, align 4, !tbaa !412
  %49 = fmul float %48, 0x3F947AE140000000
  %50 = fmul float %49, 0x41E0000000000000
  %51 = fptosi float %50 to i32
  %52 = getelementptr inbounds %struct.ShadBuf, ptr %6, i64 0, i32 15
  store i32 %51, ptr %52, align 4, !tbaa !413
  %53 = getelementptr inbounds %struct.LampRen, ptr %1, i64 0, i32 36
  %54 = load i16, ptr %53, align 4, !tbaa !316
  %55 = and i16 %54, -2
  %56 = icmp eq i16 %55, 2
  br i1 %56, label %57, label %61

57:                                               ; preds = %9
  %58 = sitofp i32 %51 to float
  %59 = fmul float %58, 0x3FB99999A0000000
  %60 = fptosi float %59 to i32
  store i32 %60, ptr %52, align 4, !tbaa !413
  br label %61

61:                                               ; preds = %9, %57
  %62 = getelementptr inbounds %struct.LampRen, ptr %1, i64 0, i32 42
  %63 = load float, ptr %62, align 8, !tbaa !414
  %64 = getelementptr inbounds %struct.ShadBuf, ptr %6, i64 0, i32 12
  store float %63, ptr %64, align 8, !tbaa !415
  br label %65

65:                                               ; preds = %3, %61
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %4) #24
  ret void
}

; Function Attrs: mustprogress nofree nounwind optsize willreturn memory(write)
declare float @acosf(float noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @normalize_m4(ptr noundef) local_unnamed_addr #7

; Function Attrs: optsize
declare void @psys_render_set(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: optsize
declare ptr @RE_addRenderObject(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @init_render_object_data(ptr noundef %0, ptr noundef %1, i32 noundef %2) unnamed_addr #4 !PGOFuncName !416 {
  %4 = getelementptr inbounds %struct.ObjectRen, ptr %1, i64 0, i32 2
  %5 = load ptr, ptr %4, align 8, !tbaa !232
  %6 = getelementptr inbounds %struct.ObjectRen, ptr %1, i64 0, i32 6
  %7 = load i32, ptr %6, align 4, !tbaa !299
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %55, label %9

9:                                                ; preds = %3
  %10 = getelementptr inbounds %struct.ObjectRen, ptr %1, i64 0, i32 1
  %11 = load ptr, ptr %10, align 8, !tbaa !417
  %12 = icmp eq ptr %11, null
  br i1 %12, label %22, label %13

13:                                               ; preds = %9
  %14 = getelementptr inbounds %struct.ObjectRen, ptr %11, i64 0, i32 2
  %15 = load ptr, ptr %14, align 8, !tbaa !232
  %16 = icmp eq ptr %15, %5
  br i1 %16, label %17, label %22

17:                                               ; preds = %13
  %18 = getelementptr inbounds %struct.ObjectRen, ptr %11, i64 0, i32 7
  %19 = load i32, ptr %18, align 8, !tbaa !300
  %20 = and i32 %19, 1
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %22, label %44

22:                                               ; preds = %17, %13, %9
  %23 = getelementptr inbounds %struct.Object, ptr %5, i64 0, i32 3
  %24 = load i16, ptr %23, align 8, !tbaa !147
  %25 = icmp eq i16 %24, 1
  br i1 %25, label %26, label %44

26:                                               ; preds = %22
  %27 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 45, i32 46
  %28 = load i32, ptr %27, align 4, !tbaa !104
  %29 = and i32 %28, 524288
  %30 = icmp eq i32 %29, 0
  %31 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 44
  %32 = load ptr, ptr %31, align 8, !tbaa !48
  %33 = load i64, ptr @CD_MASK_BAREMESH, align 8, !tbaa !280
  %34 = or i64 %33, 96
  br i1 %30, label %37, label %35

35:                                               ; preds = %26
  %36 = tail call ptr @mesh_create_derived_view(ptr noundef %32, ptr noundef nonnull %5, i64 noundef %34) #22
  br label %39

37:                                               ; preds = %26
  %38 = tail call ptr @mesh_create_derived_render(ptr noundef %32, ptr noundef nonnull %5, i64 noundef %34) #22
  br label %39

39:                                               ; preds = %37, %35
  %40 = phi ptr [ %36, %35 ], [ %38, %37 ]
  %41 = getelementptr inbounds %struct.DerivedMesh, ptr %40, i64 0, i32 95
  %42 = load ptr, ptr %41, align 8, !tbaa !281
  tail call void %42(ptr noundef %40) #22
  %43 = load i32, ptr %6, align 4, !tbaa !299
  br label %44

44:                                               ; preds = %39, %22, %17
  %45 = phi i32 [ %43, %39 ], [ %7, %22 ], [ %7, %17 ]
  %46 = getelementptr inbounds %struct.Object, ptr %5, i64 0, i32 109
  %47 = tail call i32 @llvm.smax.i32(i32 %45, i32 1)
  br label %48

48:                                               ; preds = %48, %44
  %49 = phi ptr [ %46, %44 ], [ %51, %48 ]
  %50 = phi i32 [ 0, %44 ], [ %52, %48 ]
  %51 = load ptr, ptr %49, align 8, !tbaa !47
  %52 = add nuw nsw i32 %50, 1
  %53 = icmp eq i32 %52, %47
  br i1 %53, label %54, label %48, !llvm.loop !418

54:                                               ; preds = %48
  tail call fastcc void @render_new_particle_system(ptr noundef %0, ptr noundef nonnull %1, ptr noundef %51, i32 noundef %2) #23
  br label %62

55:                                               ; preds = %3
  %56 = getelementptr inbounds %struct.Object, ptr %5, i64 0, i32 3
  %57 = load i16, ptr %56, align 8, !tbaa !147
  switch i16 %57, label %62 [
    i16 4, label %58
    i16 2, label %58
    i16 3, label %59
    i16 1, label %60
    i16 5, label %61
  ]

58:                                               ; preds = %55, %55
  tail call fastcc void @init_render_curve(ptr noundef %0, ptr noundef nonnull %1, i32 noundef %2) #23
  br label %62

59:                                               ; preds = %55
  tail call fastcc void @init_render_surf(ptr noundef %0, ptr noundef nonnull %1, i32 noundef %2) #23
  br label %62

60:                                               ; preds = %55
  tail call fastcc void @init_render_mesh(ptr noundef %0, ptr noundef nonnull %1, i32 noundef %2) #23
  br label %62

61:                                               ; preds = %55
  tail call fastcc void @init_render_mball(ptr noundef %0, ptr noundef nonnull %1) #23
  br label %62

62:                                               ; preds = %55, %58, %60, %61, %59, %54
  tail call fastcc void @finalize_render_object(ptr noundef %0, ptr noundef nonnull %1, i32 noundef %2) #23
  %63 = getelementptr inbounds %struct.ObjectRen, ptr %1, i64 0, i32 10
  %64 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 60
  %65 = load <4 x i32>, ptr %63, align 8, !tbaa !78
  %66 = shufflevector <4 x i32> %65, <4 x i32> poison, <4 x i32> <i32 1, i32 0, i32 3, i32 2>
  %67 = load <4 x i32>, ptr %64, align 8, !tbaa !78
  %68 = add nsw <4 x i32> %67, %66
  store <4 x i32> %68, ptr %64, align 8, !tbaa !78
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc nonnull ptr @give_render_material(ptr nocapture noundef %0, ptr noundef %1, i16 noundef signext %2) unnamed_addr #4 !PGOFuncName !419 {
  %4 = tail call ptr @give_current_material(ptr noundef %1, i16 noundef signext %2) #22
  %5 = icmp eq ptr %4, null
  %6 = select i1 %5, ptr @defmaterial, ptr %4
  %7 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 45, i32 47
  %8 = load i32, ptr %7, align 8, !tbaa !87
  %9 = and i32 %8, 1048576
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %15, label %11

11:                                               ; preds = %3
  %12 = getelementptr inbounds %struct.Material, ptr %6, i64 0, i32 90
  %13 = load i16, ptr %12, align 4, !tbaa !265
  %14 = or i16 %13, 2048
  store i16 %14, ptr %12, align 4, !tbaa !265
  br label %15

15:                                               ; preds = %11, %3
  %16 = getelementptr inbounds %struct.Material, ptr %6, i64 0, i32 2
  %17 = load i16, ptr %16, align 8, !tbaa !294
  %18 = icmp eq i16 %17, 2
  %19 = getelementptr inbounds %struct.Material, ptr %6, i64 0, i32 51
  %20 = load i32, ptr %19, align 4, !tbaa !167
  br i1 %18, label %21, label %24

21:                                               ; preds = %15
  %22 = and i32 %20, -33619969
  %23 = or disjoint i32 %22, 65536
  store i32 %23, ptr %19, align 4, !tbaa !167
  br label %24

24:                                               ; preds = %15, %21
  %25 = phi i32 [ %23, %21 ], [ %20, %15 ]
  %26 = and i32 %25, 65600
  %27 = icmp eq i32 %26, 65600
  br i1 %27, label %28, label %32

28:                                               ; preds = %24
  %29 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 4
  %30 = load i16, ptr %29, align 8, !tbaa !257
  %31 = or i16 %30, 1
  store i16 %31, ptr %29, align 8, !tbaa !257
  br label %32

32:                                               ; preds = %28, %24
  %33 = getelementptr inbounds %struct.Material, ptr %6, i64 0, i32 3
  %34 = load i16, ptr %33, align 2, !tbaa !420
  %35 = or i16 %34, 1
  store i16 %35, ptr %33, align 2, !tbaa !420
  %36 = getelementptr inbounds %struct.Material, ptr %6, i64 0, i32 103
  %37 = load ptr, ptr %36, align 8, !tbaa !421
  %38 = icmp eq ptr %37, null
  br i1 %38, label %44, label %39

39:                                               ; preds = %32
  %40 = getelementptr inbounds %struct.Material, ptr %6, i64 0, i32 77
  %41 = load i8, ptr %40, align 1, !tbaa !422
  %42 = icmp eq i8 %41, 0
  br i1 %42, label %44, label %43

43:                                               ; preds = %39
  tail call fastcc void @flag_render_node_material(ptr noundef nonnull %0, ptr noundef nonnull %37) #23
  br label %44

44:                                               ; preds = %43, %39, %32
  tail call fastcc void @check_material_mapto(ptr noundef nonnull %6) #23
  ret ptr %6
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @add_volume(ptr noundef %0, ptr noundef %1, ptr noundef %2) unnamed_addr #4 !PGOFuncName !423 {
  %4 = load ptr, ptr @MEM_mallocN, align 8, !tbaa !47
  %5 = tail call ptr %4(i64 noundef 32, ptr noundef nonnull @.str.24) #22
  %6 = getelementptr inbounds %struct.VolumeOb, ptr %5, i64 0, i32 2
  store ptr %2, ptr %6, align 8, !tbaa !188
  %7 = getelementptr inbounds %struct.VolumeOb, ptr %5, i64 0, i32 3
  store ptr %1, ptr %7, align 8, !tbaa !186
  %8 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 80
  tail call void @BLI_addtail(ptr noundef nonnull %8, ptr noundef %5) #22
  ret void
}

; Function Attrs: optsize
declare i32 @psys_check_enabled(ptr noundef, ptr noundef) local_unnamed_addr #7

; Function Attrs: optsize
declare void @psys_render_restore(ptr noundef, ptr noundef) local_unnamed_addr #7

; Function Attrs: optsize
declare ptr @mesh_create_derived_view(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #7

; Function Attrs: optsize
declare ptr @mesh_create_derived_render(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #7

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @render_new_particle_system(ptr noundef %0, ptr noundef %1, ptr noundef %2, i32 noundef %3) unnamed_addr #4 !PGOFuncName !424 {
  %5 = alloca %struct.ParticleKey, align 4
  %6 = alloca %struct.ParticleBillboardData, align 8
  %7 = alloca %struct.ParticleSimulationData, align 8
  %8 = alloca %struct.ParticleStrandData, align 8
  %9 = alloca [3 x float], align 4
  %10 = alloca [3 x float], align 4
  %11 = alloca [3 x float], align 4
  %12 = alloca [4 x [4 x float]], align 16
  %13 = alloca [3 x [3 x float]], align 16
  %14 = alloca [3 x float], align 4
  %15 = alloca [3 x float], align 4
  %16 = alloca [4 x [4 x float]], align 16
  %17 = alloca float, align 4
  %18 = alloca float, align 4
  %19 = alloca float, align 4
  %20 = alloca [2 x float], align 4
  %21 = alloca [3 x float], align 4
  %22 = getelementptr inbounds %struct.ObjectRen, ptr %1, i64 0, i32 2
  %23 = load ptr, ptr %22, align 8, !tbaa !232
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %5) #24
  call void @llvm.lifetime.start.p0(i64 96, ptr nonnull %6) #24
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %7) #24
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %7, i8 0, i64 48, i1 false)
  call void @llvm.lifetime.start.p0(i64 72, ptr nonnull %8) #24
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %9) #24
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %10) #24
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %11) #24
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %12) #24
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %13) #24
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %14) #24
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %15) #24
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %16) #24
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %17) #24
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %18) #24
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %19) #24
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %20) #24
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %21) #24
  %24 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 44
  %25 = load ptr, ptr %24, align 8, !tbaa !48
  %26 = tail call float @BKE_scene_frame_get(ptr noundef %25) #22
  %27 = icmp eq ptr %2, null
  br i1 %27, label %1019, label %28

28:                                               ; preds = %4
  %29 = getelementptr inbounds %struct.ParticleSystem, ptr %2, i64 0, i32 2
  %30 = load ptr, ptr %29, align 8, !tbaa !275
  %31 = getelementptr inbounds %struct.ParticleSystem, ptr %2, i64 0, i32 3
  %32 = load ptr, ptr %31, align 8, !tbaa !425
  %33 = icmp eq ptr %30, null
  %34 = icmp eq ptr %32, null
  %35 = select i1 %33, i1 true, i1 %34
  br i1 %35, label %1019, label %36

36:                                               ; preds = %28
  %37 = tail call i32 @psys_check_enabled(ptr noundef %23, ptr noundef nonnull %2) #22
  %38 = icmp eq i32 %37, 0
  br i1 %38, label %1019, label %39

39:                                               ; preds = %36
  %40 = getelementptr inbounds %struct.ParticleSettings, ptr %30, i64 0, i32 21
  %41 = load i16, ptr %40, align 8, !tbaa !277
  switch i16 %41, label %42 [
    i16 7, label %1019
    i16 8, label %1019
    i16 0, label %1019
  ]

42:                                               ; preds = %39
  %43 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 45, i32 46
  %44 = load i32, ptr %43, align 4, !tbaa !104
  %45 = and i32 %44, 524288
  %46 = icmp eq i32 %45, 0
  br i1 %46, label %52, label %47

47:                                               ; preds = %42
  %48 = getelementptr inbounds %struct.Object, ptr %23, i64 0, i32 27
  %49 = load i32, ptr %48, align 8, !tbaa !426
  %50 = and i32 %49, 32
  %51 = icmp eq i32 %50, 0
  br i1 %51, label %52, label %1019

52:                                               ; preds = %47, %42
  %53 = tail call ptr @psys_get_modifier(ptr noundef %23, ptr noundef nonnull %2) #22
  %54 = getelementptr inbounds %struct.ModifierData, ptr %53, i64 0, i32 3
  %55 = load i32, ptr %54, align 4, !tbaa !427
  %56 = and i32 %55, 2
  %57 = icmp eq i32 %56, 0
  br i1 %57, label %1019, label %58

58:                                               ; preds = %52
  %59 = load ptr, ptr %24, align 8, !tbaa !48
  store ptr %59, ptr %7, align 8, !tbaa !428
  %60 = getelementptr inbounds %struct.ParticleSimulationData, ptr %7, i64 0, i32 1
  store ptr %23, ptr %60, align 8, !tbaa !430
  %61 = getelementptr inbounds %struct.ParticleSimulationData, ptr %7, i64 0, i32 2
  store ptr %2, ptr %61, align 8, !tbaa !431
  %62 = getelementptr inbounds %struct.ParticleSimulationData, ptr %7, i64 0, i32 3
  store ptr %53, ptr %62, align 8, !tbaa !432
  %63 = getelementptr inbounds %struct.ParticleSettings, ptr %30, i64 0, i32 11
  %64 = load i16, ptr %63, align 8, !tbaa !433
  %65 = icmp eq i16 %64, 2
  br i1 %65, label %66, label %67

66:                                               ; preds = %58
  call void @psys_count_keyed_targets(ptr noundef nonnull %7) #22
  br label %67

67:                                               ; preds = %66, %58
  %68 = getelementptr inbounds %struct.ParticleSystem, ptr %2, i64 0, i32 28
  %69 = load i32, ptr %68, align 8, !tbaa !434
  %70 = getelementptr inbounds %struct.ParticleSettings, ptr %30, i64 0, i32 7
  %71 = load i16, ptr %70, align 8, !tbaa !435
  %72 = icmp eq i16 %71, 2
  br i1 %72, label %73, label %78

73:                                               ; preds = %67
  %74 = getelementptr inbounds %struct.ParticleSystem, ptr %2, i64 0, i32 8
  %75 = load ptr, ptr %74, align 8, !tbaa !436
  %76 = icmp eq ptr %75, null
  %77 = select i1 %76, i32 0, i32 %69
  br label %78

78:                                               ; preds = %73, %67
  %79 = phi i32 [ %69, %67 ], [ %77, %73 ]
  %80 = load i32, ptr %43, align 4, !tbaa !104
  %81 = and i32 %80, 524288
  %82 = icmp eq i32 %81, 0
  br i1 %82, label %92, label %83

83:                                               ; preds = %78
  %84 = sitofp i32 %79 to float
  %85 = getelementptr inbounds %struct.ParticleSettings, ptr %30, i64 0, i32 30
  %86 = load i16, ptr %85, align 2, !tbaa !437
  %87 = sitofp i16 %86 to float
  %88 = fmul float %84, %87
  %89 = fdiv float %88, 1.000000e+02
  %90 = fptosi float %89 to i32
  %91 = getelementptr inbounds %struct.ParticleSettings, ptr %30, i64 0, i32 24
  br label %94

92:                                               ; preds = %78
  %93 = getelementptr inbounds %struct.ParticleSettings, ptr %30, i64 0, i32 25
  br label %94

94:                                               ; preds = %92, %83
  %95 = phi i32 [ %90, %83 ], [ %79, %92 ]
  %96 = phi ptr [ %91, %83 ], [ %93, %92 ]
  %97 = load i16, ptr %96, align 2, !tbaa !77
  %98 = getelementptr inbounds %struct.ParticleSystem, ptr %2, i64 0, i32 25
  %99 = load i32, ptr %98, align 4, !tbaa !400
  %100 = or i32 %99, 64
  store i32 %100, ptr %98, align 4, !tbaa !400
  %101 = getelementptr inbounds %struct.ParticleSystem, ptr %2, i64 0, i32 23
  %102 = load i32, ptr %101, align 4, !tbaa !438
  %103 = call ptr @BLI_rng_new(i32 noundef %102) #22
  %104 = getelementptr inbounds %struct.ParticleSystem, ptr %2, i64 0, i32 26
  %105 = load i32, ptr %104, align 8, !tbaa !439
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %8, i8 0, i64 72, i1 false)
  %106 = getelementptr inbounds %struct.ParticleStrandData, ptr %8, i64 0, i32 13
  store i32 -1, ptr %106, align 4, !tbaa !440
  %107 = getelementptr inbounds %struct.ParticleSettings, ptr %30, i64 0, i32 31
  %108 = load i16, ptr %107, align 4, !tbaa !442
  %109 = call fastcc ptr @give_render_material(ptr noundef nonnull %0, ptr noundef %23, i16 noundef signext %108) #23
  %110 = getelementptr inbounds %struct.Material, ptr %109, i64 0, i32 59
  %111 = load float, ptr %110, align 4, !tbaa !443
  %112 = getelementptr inbounds %struct.Material, ptr %109, i64 0, i32 39
  %113 = load i8, ptr %112, align 2, !tbaa !444
  %114 = zext i8 %113 to i32
  %115 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 4
  %116 = load i16, ptr %115, align 8, !tbaa !257
  %117 = or i16 %116, 2
  store i16 %117, ptr %115, align 8, !tbaa !257
  %118 = getelementptr inbounds %struct.ParticleSystemModifierData, ptr %53, i64 0, i32 2
  %119 = load ptr, ptr %118, align 8, !tbaa !445
  %120 = getelementptr inbounds %struct.DerivedMesh, ptr %119, i64 0, i32 2
  call void @RE_set_customdata_names(ptr noundef nonnull %1, ptr noundef nonnull %120) #22
  %121 = load ptr, ptr %118, align 8, !tbaa !445
  %122 = getelementptr inbounds %struct.DerivedMesh, ptr %121, i64 0, i32 2
  %123 = call i32 @CustomData_number_of_layers(ptr noundef nonnull %122, i32 noundef 5) #22
  %124 = getelementptr inbounds %struct.ParticleStrandData, ptr %8, i64 0, i32 8
  store i32 %123, ptr %124, align 8, !tbaa !446
  %125 = load ptr, ptr %118, align 8, !tbaa !445
  %126 = getelementptr inbounds %struct.DerivedMesh, ptr %125, i64 0, i32 2
  %127 = call i32 @CustomData_number_of_layers(ptr noundef nonnull %126, i32 noundef 6) #22
  %128 = getelementptr inbounds %struct.ParticleStrandData, ptr %8, i64 0, i32 9
  store i32 %127, ptr %128, align 4, !tbaa !447
  %129 = getelementptr inbounds %struct.Material, ptr %109, i64 0, i32 90
  %130 = load i16, ptr %129, align 4, !tbaa !265
  %131 = and i16 %130, 16
  %132 = icmp ne i16 %131, 0
  %133 = icmp ne i32 %123, 0
  %134 = select i1 %132, i1 %133, i1 false
  br i1 %134, label %135, label %153

135:                                              ; preds = %94
  %136 = load ptr, ptr @MEM_callocN, align 8, !tbaa !47
  %137 = shl nsw i32 %123, 1
  %138 = sext i32 %137 to i64
  %139 = shl nsw i64 %138, 2
  %140 = call ptr %136(i64 noundef %139, ptr noundef nonnull @.str.13) #22
  %141 = getelementptr inbounds %struct.ParticleStrandData, ptr %8, i64 0, i32 2
  store ptr %140, ptr %141, align 8, !tbaa !448
  %142 = getelementptr inbounds %struct.Material, ptr %109, i64 0, i32 69
  %143 = load i8, ptr %142, align 4, !tbaa !76
  %144 = icmp eq i8 %143, 0
  br i1 %144, label %155, label %145

145:                                              ; preds = %135
  %146 = load ptr, ptr %118, align 8, !tbaa !445
  %147 = getelementptr inbounds %struct.DerivedMesh, ptr %146, i64 0, i32 2
  %148 = call i32 @CustomData_get_named_layer_index(ptr noundef nonnull %147, i32 noundef 5, ptr noundef nonnull %142) #22
  %149 = load ptr, ptr %118, align 8, !tbaa !445
  %150 = getelementptr inbounds %struct.DerivedMesh, ptr %149, i64 0, i32 2
  %151 = call i32 @CustomData_get_layer_index(ptr noundef nonnull %150, i32 noundef 5) #22
  %152 = sub nsw i32 %148, %151
  store i32 %152, ptr %106, align 4, !tbaa !440
  br label %155

153:                                              ; preds = %94
  %154 = getelementptr inbounds %struct.ParticleStrandData, ptr %8, i64 0, i32 2
  store ptr null, ptr %154, align 8, !tbaa !448
  br label %155

155:                                              ; preds = %135, %145, %153
  %156 = phi i32 [ -1, %135 ], [ %152, %145 ], [ -1, %153 ]
  %157 = icmp eq i32 %127, 0
  br i1 %157, label %163, label %158

158:                                              ; preds = %155
  %159 = load ptr, ptr @MEM_callocN, align 8, !tbaa !47
  %160 = sext i32 %127 to i64
  %161 = shl nsw i64 %160, 2
  %162 = call ptr %159(i64 noundef %161, ptr noundef nonnull @.str.14) #22
  store ptr %162, ptr %8, align 8, !tbaa !449
  br label %163

163:                                              ; preds = %158, %155
  %164 = load i16, ptr %40, align 8, !tbaa !277
  %165 = icmp eq i16 %164, 9
  br i1 %165, label %166, label %224

166:                                              ; preds = %163
  %167 = load ptr, ptr %118, align 8, !tbaa !445
  %168 = getelementptr inbounds %struct.DerivedMesh, ptr %167, i64 0, i32 2
  %169 = call i32 @CustomData_get_layer_index(ptr noundef nonnull %168, i32 noundef 5) #22
  %170 = load ptr, ptr %118, align 8, !tbaa !445
  %171 = getelementptr inbounds %struct.DerivedMesh, ptr %170, i64 0, i32 2
  %172 = getelementptr inbounds %struct.ParticleSystem, ptr %2, i64 0, i32 35
  %173 = call i32 @CustomData_get_named_layer_index(ptr noundef nonnull %171, i32 noundef 5, ptr noundef nonnull %172) #22
  %174 = getelementptr inbounds %struct.ParticleBillboardData, ptr %6, i64 0, i32 8
  store i32 %173, ptr %174, align 4, !tbaa !78
  %175 = icmp slt i32 %173, 0
  br i1 %175, label %176, label %180

176:                                              ; preds = %166
  %177 = load ptr, ptr %118, align 8, !tbaa !445
  %178 = getelementptr inbounds %struct.DerivedMesh, ptr %177, i64 0, i32 2
  %179 = call i32 @CustomData_get_active_layer_index(ptr noundef nonnull %178, i32 noundef 5) #22
  store i32 %179, ptr %174, align 4, !tbaa !78
  br label %180

180:                                              ; preds = %176, %166
  %181 = load ptr, ptr %118, align 8, !tbaa !445
  %182 = getelementptr inbounds %struct.DerivedMesh, ptr %181, i64 0, i32 2
  %183 = getelementptr inbounds %struct.ParticleSystem, ptr %2, i64 0, i32 35, i64 1
  %184 = call i32 @CustomData_get_named_layer_index(ptr noundef nonnull %182, i32 noundef 5, ptr noundef nonnull %183) #22
  %185 = getelementptr inbounds %struct.ParticleBillboardData, ptr %6, i64 0, i32 8, i64 1
  store i32 %184, ptr %185, align 8, !tbaa !78
  %186 = load ptr, ptr %118, align 8, !tbaa !445
  %187 = getelementptr inbounds %struct.DerivedMesh, ptr %186, i64 0, i32 2
  %188 = getelementptr inbounds %struct.ParticleSystem, ptr %2, i64 0, i32 35, i64 2
  %189 = call i32 @CustomData_get_named_layer_index(ptr noundef nonnull %187, i32 noundef 5, ptr noundef nonnull %188) #22
  %190 = getelementptr inbounds %struct.ParticleBillboardData, ptr %6, i64 0, i32 8, i64 2
  store i32 %189, ptr %190, align 4, !tbaa !78
  %191 = icmp sgt i32 %169, -1
  br i1 %191, label %192, label %198

192:                                              ; preds = %180
  %193 = load <2 x i32>, ptr %174, align 4, !tbaa !78
  %194 = insertelement <2 x i32> poison, i32 %169, i64 0
  %195 = shufflevector <2 x i32> %194, <2 x i32> poison, <2 x i32> zeroinitializer
  %196 = sub nsw <2 x i32> %193, %195
  store <2 x i32> %196, ptr %174, align 4, !tbaa !78
  %197 = sub nsw i32 %189, %169
  store i32 %197, ptr %190, align 4, !tbaa !78
  br label %198

198:                                              ; preds = %192, %180
  %199 = getelementptr inbounds %struct.ParticleSettings, ptr %30, i64 0, i32 37
  %200 = load i16, ptr %199, align 8, !tbaa !450
  %201 = getelementptr inbounds %struct.ParticleBillboardData, ptr %6, i64 0, i32 13
  store i16 %200, ptr %201, align 8, !tbaa !451
  %202 = getelementptr inbounds %struct.ParticleSettings, ptr %30, i64 0, i32 39
  %203 = load i16, ptr %202, align 4, !tbaa !453
  %204 = getelementptr inbounds %struct.ParticleBillboardData, ptr %6, i64 0, i32 15
  store i16 %203, ptr %204, align 4, !tbaa !454
  %205 = getelementptr inbounds %struct.ParticleSettings, ptr %30, i64 0, i32 15
  %206 = load i32, ptr %205, align 8, !tbaa !395
  %207 = and i32 %206, 128
  %208 = getelementptr inbounds %struct.ParticleBillboardData, ptr %6, i64 0, i32 9
  store i32 %207, ptr %208, align 8, !tbaa !455
  %209 = getelementptr inbounds %struct.ParticleSettings, ptr %30, i64 0, i32 126
  %210 = load ptr, ptr %209, align 8, !tbaa !456
  %211 = icmp eq ptr %210, null
  br i1 %211, label %212, label %214

212:                                              ; preds = %198
  %213 = call ptr @RE_GetCamera(ptr noundef nonnull %0) #22
  br label %214

214:                                              ; preds = %198, %212
  %215 = phi ptr [ %213, %212 ], [ %210, %198 ]
  store ptr %215, ptr %6, align 8, !tbaa !457
  %216 = getelementptr inbounds %struct.ParticleSettings, ptr %30, i64 0, i32 40
  %217 = load i16, ptr %216, align 2, !tbaa !458
  %218 = getelementptr inbounds %struct.ParticleBillboardData, ptr %6, i64 0, i32 16
  store i16 %217, ptr %218, align 2, !tbaa !459
  %219 = add nsw i32 %105, %95
  %220 = getelementptr inbounds %struct.ParticleBillboardData, ptr %6, i64 0, i32 11
  store i32 %219, ptr %220, align 8, !tbaa !460
  %221 = getelementptr inbounds %struct.ParticleSettings, ptr %30, i64 0, i32 38
  %222 = load i16, ptr %221, align 2, !tbaa !461
  %223 = getelementptr inbounds %struct.ParticleBillboardData, ptr %6, i64 0, i32 14
  store i16 %222, ptr %223, align 2, !tbaa !462
  br label %224

224:                                              ; preds = %214, %163
  %225 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 32
  %226 = getelementptr inbounds %struct.Object, ptr %23, i64 0, i32 47
  call void @mul_m4_m4m4(ptr noundef nonnull %12, ptr noundef nonnull %225, ptr noundef nonnull %226) #22
  %227 = getelementptr inbounds %struct.Object, ptr %23, i64 0, i32 50
  %228 = call zeroext i8 @invert_m4_m4(ptr noundef nonnull %227, ptr noundef nonnull %12) #22
  call void @copy_m3_m4(ptr noundef nonnull %13, ptr noundef nonnull %227) #22
  call void @transpose_m3(ptr noundef nonnull %13) #22
  %229 = load i32, ptr %98, align 4, !tbaa !400
  %230 = and i32 %229, 128
  %231 = icmp eq i32 %230, 0
  br i1 %231, label %234, label %232

232:                                              ; preds = %224
  %233 = getelementptr inbounds %struct.ParticleSystem, ptr %2, i64 0, i32 19
  call void @mul_m4_m4m4(ptr noundef nonnull %16, ptr noundef nonnull %226, ptr noundef nonnull %233) #22
  br label %234

234:                                              ; preds = %232, %224
  %235 = load i16, ptr %40, align 8, !tbaa !277
  %236 = icmp eq i16 %235, 6
  br i1 %236, label %237, label %398

237:                                              ; preds = %234
  %238 = getelementptr inbounds %struct.ParticleSystem, ptr %2, i64 0, i32 7
  %239 = load ptr, ptr %238, align 8, !tbaa !463
  %240 = icmp eq ptr %239, null
  br i1 %240, label %398, label %241

241:                                              ; preds = %237
  %242 = sext i16 %97 to i32
  %243 = call double @ldexp(double 1.000000e+00, i32 %242) #24
  %244 = fptosi double %243 to i32
  %245 = icmp eq i32 %244, 0
  br i1 %245, label %259, label %246

246:                                              ; preds = %241
  %247 = getelementptr inbounds %struct.Material, ptr %109, i64 0, i32 2
  %248 = load i16, ptr %247, align 8, !tbaa !294
  switch i16 %248, label %249 [
    i16 1, label %259
    i16 3, label %259
  ]

249:                                              ; preds = %246
  %250 = call fastcc ptr @get_object_orco(ptr noundef nonnull %0, ptr noundef nonnull %2) #23
  %251 = getelementptr inbounds %struct.ParticleStrandData, ptr %8, i64 0, i32 1
  store ptr %250, ptr %251, align 8, !tbaa !464
  %252 = icmp eq ptr %250, null
  br i1 %252, label %253, label %259

253:                                              ; preds = %249
  %254 = load ptr, ptr @MEM_mallocN, align 8, !tbaa !47
  %255 = add nsw i32 %105, %95
  %256 = sext i32 %255 to i64
  %257 = mul nsw i64 %256, 12
  %258 = call ptr %254(i64 noundef %257, ptr noundef nonnull @.str.15) #22
  store ptr %258, ptr %251, align 8, !tbaa !464
  call fastcc void @set_object_orco(ptr noundef nonnull %0, ptr noundef nonnull %2, ptr noundef %258) #23
  br label %259

259:                                              ; preds = %246, %246, %253, %249, %241
  %260 = phi ptr [ null, %246 ], [ null, %246 ], [ %258, %253 ], [ %250, %249 ], [ null, %241 ]
  %261 = getelementptr inbounds %struct.ParticleSettings, ptr %30, i64 0, i32 15
  %262 = load i32, ptr %261, align 8, !tbaa !395
  %263 = and i32 %262, 2048
  %264 = icmp eq i32 %263, 0
  br i1 %264, label %278, label %265

265:                                              ; preds = %259
  %266 = getelementptr inbounds %struct.ParticleStrandData, ptr %8, i64 0, i32 12
  store i32 1, ptr %266, align 8, !tbaa !465
  %267 = getelementptr inbounds %struct.ParticleSettings, ptr %30, i64 0, i32 29
  %268 = load i16, ptr %267, align 8, !tbaa !466
  %269 = sitofp i16 %268 to float
  %270 = getelementptr inbounds %struct.ParticleStrandData, ptr %8, i64 0, i32 6
  store float %269, ptr %270, align 8, !tbaa !467
  %271 = getelementptr inbounds %struct.ParticleSettings, ptr %30, i64 0, i32 28
  %272 = load i16, ptr %271, align 2, !tbaa !468
  %273 = sitofp i16 %272 to float
  %274 = fmul float %273, 0x3F91DF46A0000000
  %275 = call float @cosf(float noundef %274) #22
  %276 = getelementptr inbounds %struct.ParticleStrandData, ptr %8, i64 0, i32 5
  store float %275, ptr %276, align 4, !tbaa !469
  %277 = load i32, ptr %261, align 8, !tbaa !395
  br label %278

278:                                              ; preds = %265, %259
  %279 = phi i32 [ %277, %265 ], [ %262, %259 ]
  %280 = and i32 %279, 32768
  %281 = icmp eq i32 %280, 0
  br i1 %281, label %400, label %282

282:                                              ; preds = %278
  %283 = add nsw i32 %105, %95
  %284 = add nsw i32 %244, 1
  %285 = mul nsw i32 %284, %283
  %286 = call ptr @RE_addStrandBuffer(ptr noundef nonnull %1, i32 noundef %285) #22
  %287 = getelementptr inbounds %struct.StrandBuffer, ptr %286, i64 0, i32 7
  store ptr %109, ptr %287, align 8, !tbaa !470
  %288 = getelementptr inbounds %struct.Object, ptr %23, i64 0, i32 52
  %289 = load i32, ptr %288, align 8, !tbaa !154
  %290 = getelementptr inbounds %struct.StrandBuffer, ptr %286, i64 0, i32 9
  store i32 %289, ptr %290, align 8, !tbaa !471
  %291 = getelementptr inbounds %struct.StrandBuffer, ptr %286, i64 0, i32 17
  %292 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 35
  call void @copy_m4_m4(ptr noundef nonnull %291, ptr noundef nonnull %292) #22
  %293 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 13
  %294 = getelementptr inbounds %struct.StrandBuffer, ptr %286, i64 0, i32 18
  %295 = load <2 x i32>, ptr %293, align 4, !tbaa !78
  store <2 x i32> %295, ptr %294, align 8, !tbaa !78
  %296 = getelementptr inbounds %struct.StrandBuffer, ptr %286, i64 0, i32 12
  store i32 2, ptr %296, align 4, !tbaa !472
  %297 = getelementptr inbounds %struct.ParticleSettings, ptr %30, i64 0, i32 28
  %298 = load i16, ptr %297, align 2, !tbaa !468
  %299 = sitofp i16 %298 to float
  %300 = fmul float %299, 0x3F91DF46A0000000
  %301 = call float @cosf(float noundef %300) #22
  %302 = getelementptr inbounds %struct.StrandBuffer, ptr %286, i64 0, i32 13
  store float %301, ptr %302, align 8, !tbaa !473
  %303 = getelementptr inbounds %struct.StrandBuffer, ptr %286, i64 0, i32 10
  store i32 %156, ptr %303, align 4, !tbaa !474
  %304 = getelementptr inbounds %struct.Material, ptr %109, i64 0, i32 67
  %305 = load float, ptr %304, align 4, !tbaa !475
  %306 = getelementptr inbounds %struct.StrandBuffer, ptr %286, i64 0, i32 14
  store float %305, ptr %306, align 4, !tbaa !476
  %307 = getelementptr inbounds %struct.Material, ptr %109, i64 0, i32 68
  %308 = load float, ptr %307, align 8, !tbaa !477
  %309 = fcmp oeq float %308, 0.000000e+00
  br i1 %309, label %318, label %310

310:                                              ; preds = %282
  %311 = fcmp ult float %308, 1.000000e+00
  br i1 %311, label %314, label %312

312:                                              ; preds = %310
  %313 = fsub float 2.000000e+00, %308
  br label %318

314:                                              ; preds = %310
  %315 = fcmp ogt float %308, 0x3EE4F8B580000000
  %316 = select i1 %315, float %308, float 0x3EE4F8B580000000
  %317 = fdiv float 1.000000e+00, %316
  br label %318

318:                                              ; preds = %282, %312, %314
  %319 = phi float [ %313, %312 ], [ %317, %314 ], [ -1.000000e+00, %282 ]
  %320 = getelementptr inbounds %struct.StrandBuffer, ptr %286, i64 0, i32 15
  store float %319, ptr %320, align 8, !tbaa !478
  %321 = getelementptr inbounds %struct.ParticleSettings, ptr %30, i64 0, i32 5
  %322 = load i32, ptr %321, align 8, !tbaa !479
  %323 = and i32 %322, 1024
  %324 = icmp eq i32 %323, 0
  br i1 %324, label %329, label %325

325:                                              ; preds = %318
  %326 = getelementptr inbounds %struct.StrandBuffer, ptr %286, i64 0, i32 11
  %327 = load i32, ptr %326, align 8, !tbaa !480
  %328 = or i32 %327, 1
  store i32 %328, ptr %326, align 8, !tbaa !480
  br label %329

329:                                              ; preds = %325, %318
  %330 = getelementptr inbounds %struct.Material, ptr %109, i64 0, i32 51
  %331 = load i32, ptr %330, align 4, !tbaa !167
  %332 = and i32 %331, 1073741824
  %333 = icmp eq i32 %332, 0
  br i1 %333, label %338, label %334

334:                                              ; preds = %329
  %335 = getelementptr inbounds %struct.StrandBuffer, ptr %286, i64 0, i32 11
  %336 = load i32, ptr %335, align 8, !tbaa !480
  %337 = or i32 %336, 2
  store i32 %337, ptr %335, align 8, !tbaa !480
  br label %338

338:                                              ; preds = %334, %329
  %339 = getelementptr inbounds %struct.StrandBuffer, ptr %286, i64 0, i32 2
  %340 = load ptr, ptr %339, align 8, !tbaa !481
  %341 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 45, i32 47
  %342 = load i32, ptr %341, align 8, !tbaa !87
  %343 = and i32 %342, 1048576
  %344 = icmp eq i32 %343, 0
  br i1 %344, label %345, label %359

345:                                              ; preds = %338
  %346 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 46, i32 23
  %347 = load i16, ptr %346, align 2, !tbaa !89
  %348 = and i16 %347, 208
  %349 = icmp eq i16 %348, 0
  br i1 %349, label %359, label %350

350:                                              ; preds = %345
  %351 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 46, i32 64
  %352 = load i16, ptr %351, align 2, !tbaa !88
  %353 = icmp eq i16 %352, 1
  br i1 %353, label %354, label %359

354:                                              ; preds = %350
  %355 = getelementptr inbounds %struct.Material, ptr %109, i64 0, i32 16
  %356 = load float, ptr %355, align 4, !tbaa !482
  %357 = fcmp une float %356, 0.000000e+00
  br i1 %357, label %358, label %359

358:                                              ; preds = %354
  br label %359

359:                                              ; preds = %338, %345, %350, %358, %354
  %360 = phi i8 [ 1, %358 ], [ 0, %354 ], [ 0, %350 ], [ 0, %345 ], [ 1, %338 ]
  %361 = load ptr, ptr %118, align 8, !tbaa !445
  %362 = getelementptr inbounds %struct.DerivedMesh, ptr %361, i64 0, i32 25
  %363 = load ptr, ptr %362, align 8, !tbaa !483
  %364 = call i32 %363(ptr noundef %361) #22
  %365 = load ptr, ptr %118, align 8, !tbaa !445
  %366 = getelementptr inbounds %struct.DerivedMesh, ptr %365, i64 0, i32 52
  %367 = load ptr, ptr %366, align 8, !tbaa !484
  %368 = call ptr %367(ptr noundef %365, i32 noundef 7) #22
  %369 = load ptr, ptr %118, align 8, !tbaa !445
  %370 = getelementptr inbounds %struct.DerivedMesh, ptr %369, i64 0, i32 54
  %371 = load ptr, ptr %370, align 8, !tbaa !485
  %372 = call ptr %371(ptr noundef %369, i32 noundef 7) #22
  %373 = icmp eq ptr %368, null
  %374 = select i1 %373, ptr null, ptr %372
  %375 = icmp sgt i32 %364, 0
  %376 = getelementptr inbounds %struct.StrandBuffer, ptr %286, i64 0, i32 5
  %377 = load i32, ptr %376, align 4, !tbaa !486
  br i1 %375, label %378, label %388

378:                                              ; preds = %359, %383
  %379 = phi i32 [ %385, %383 ], [ %377, %359 ]
  %380 = phi i32 [ %386, %383 ], [ 0, %359 ]
  br i1 %373, label %383, label %381

381:                                              ; preds = %378
  %382 = call fastcc i32 @DM_origindex_mface_mpoly(ptr noundef nonnull %368, ptr noundef %372, i32 noundef %380) #23
  br label %383

383:                                              ; preds = %378, %381
  %384 = phi i32 [ %382, %381 ], [ %380, %378 ]
  %385 = call fastcc i32 @max_ii(i32 noundef %379, i32 noundef %384) #23
  store i32 %385, ptr %376, align 4, !tbaa !486
  %386 = add nuw nsw i32 %380, 1
  %387 = icmp eq i32 %386, %364
  br i1 %387, label %388, label %378, !llvm.loop !487

388:                                              ; preds = %383, %359
  %389 = phi i32 [ %377, %359 ], [ %385, %383 ]
  %390 = getelementptr inbounds %struct.StrandBuffer, ptr %286, i64 0, i32 5
  %391 = add nsw i32 %389, 1
  store i32 %391, ptr %390, align 4, !tbaa !486
  %392 = load ptr, ptr @MEM_callocN, align 8, !tbaa !47
  %393 = sext i32 %391 to i64
  %394 = shl nsw i64 %393, 5
  %395 = call ptr %392(i64 noundef %394, ptr noundef nonnull @.str.16) #22
  %396 = getelementptr inbounds %struct.StrandBuffer, ptr %286, i64 0, i32 3
  store ptr %395, ptr %396, align 8, !tbaa !488
  %397 = getelementptr inbounds %struct.StrandBound, ptr %395, i64 0, i32 1
  store i32 0, ptr %397, align 4, !tbaa !489
  store i32 0, ptr %395, align 4, !tbaa !491
  br label %400

398:                                              ; preds = %237, %234
  %399 = getelementptr inbounds %struct.ParticleStrandData, ptr %8, i64 0, i32 1
  br label %409

400:                                              ; preds = %278, %388
  %401 = phi i8 [ %360, %388 ], [ 0, %278 ]
  %402 = phi ptr [ %368, %388 ], [ null, %278 ]
  %403 = phi ptr [ %374, %388 ], [ null, %278 ]
  %404 = phi ptr [ %395, %388 ], [ null, %278 ]
  %405 = phi ptr [ %340, %388 ], [ null, %278 ]
  %406 = phi ptr [ %286, %388 ], [ null, %278 ]
  %407 = getelementptr inbounds %struct.ParticleStrandData, ptr %8, i64 0, i32 1
  %408 = icmp eq ptr %260, null
  br i1 %408, label %409, label %420

409:                                              ; preds = %398, %400
  %410 = phi ptr [ %399, %398 ], [ %407, %400 ]
  %411 = phi ptr [ null, %398 ], [ %406, %400 ]
  %412 = phi ptr [ null, %398 ], [ %405, %400 ]
  %413 = phi ptr [ null, %398 ], [ %404, %400 ]
  %414 = phi ptr [ null, %398 ], [ %403, %400 ]
  %415 = phi ptr [ null, %398 ], [ %402, %400 ]
  %416 = phi i8 [ 0, %398 ], [ %401, %400 ]
  %417 = phi i32 [ 0, %398 ], [ %244, %400 ]
  %418 = load ptr, ptr @MEM_mallocN, align 8, !tbaa !47
  %419 = call ptr %418(i64 noundef 12, ptr noundef nonnull @.str.17) #22
  store ptr %419, ptr %410, align 8, !tbaa !464
  br label %420

420:                                              ; preds = %409, %400
  %421 = phi i1 [ true, %409 ], [ false, %400 ]
  %422 = phi ptr [ %410, %409 ], [ %407, %400 ]
  %423 = phi ptr [ %411, %409 ], [ %406, %400 ]
  %424 = phi ptr [ %412, %409 ], [ %405, %400 ]
  %425 = phi ptr [ %413, %409 ], [ %404, %400 ]
  %426 = phi ptr [ %414, %409 ], [ %403, %400 ]
  %427 = phi ptr [ %415, %409 ], [ %402, %400 ]
  %428 = phi i8 [ %416, %409 ], [ %401, %400 ]
  %429 = phi i32 [ %417, %409 ], [ %244, %400 ]
  %430 = icmp eq i32 %429, 0
  br i1 %430, label %431, label %434

431:                                              ; preds = %420
  %432 = call ptr @psys_create_lattice_deform_data(ptr noundef nonnull %7) #22
  %433 = getelementptr inbounds %struct.ParticleSystem, ptr %2, i64 0, i32 15
  store ptr %432, ptr %433, align 8, !tbaa !492
  br label %434

434:                                              ; preds = %431, %420
  %435 = add nsw i32 %105, %95
  %436 = icmp sgt i32 %435, 0
  br i1 %436, label %437, label %984

437:                                              ; preds = %434
  %438 = getelementptr inbounds %struct.ParticleSystem, ptr %2, i64 0, i32 4
  %439 = sext i32 %105 to i64
  %440 = sub nsw i64 0, %439
  %441 = getelementptr inbounds %struct.ParticleSystem, ptr %2, i64 0, i32 8
  %442 = getelementptr inbounds %struct.ParticleSettings, ptr %30, i64 0, i32 19
  %443 = getelementptr inbounds %struct.ParticleSettings, ptr %30, i64 0, i32 8
  %444 = icmp eq ptr %423, null
  %445 = icmp eq ptr %427, null
  %446 = getelementptr inbounds %struct.StrandBuffer, ptr %423, i64 0, i32 3
  %447 = getelementptr inbounds %struct.StrandBuffer, ptr %423, i64 0, i32 5
  %448 = getelementptr inbounds %struct.ObjectRen, ptr %1, i64 0, i32 12
  %449 = getelementptr inbounds %struct.ParticleSystem, ptr %2, i64 0, i32 7
  %450 = icmp eq i32 %95, 0
  %451 = getelementptr inbounds %struct.ParticleSettings, ptr %30, i64 0, i32 15
  %452 = getelementptr inbounds [3 x float], ptr %21, i64 0, i64 1
  %453 = getelementptr inbounds %struct.Material, ptr %109, i64 0, i32 52
  %454 = getelementptr inbounds %struct.ParticleStrandData, ptr %8, i64 0, i32 3
  %455 = getelementptr inbounds [2 x float], ptr %20, i64 0, i64 1
  %456 = icmp ne i8 %428, 0
  %457 = getelementptr inbounds %struct.ParticleStrandData, ptr %8, i64 0, i32 2
  %458 = icmp slt i32 %429, 1
  %459 = icmp slt i32 %429, 0
  %460 = getelementptr inbounds %struct.ParticleKey, ptr %5, i64 0, i32 1
  %461 = getelementptr inbounds %struct.ParticleStrandData, ptr %8, i64 0, i32 7
  %462 = getelementptr inbounds %struct.ParticleStrandData, ptr %8, i64 0, i32 10
  %463 = getelementptr inbounds %struct.ParticleStrandData, ptr %8, i64 0, i32 4
  %464 = getelementptr inbounds %struct.ParticleSettings, ptr %30, i64 0, i32 119
  %465 = getelementptr inbounds %struct.ParticleKey, ptr %5, i64 0, i32 4
  %466 = getelementptr inbounds %struct.ParticleSystem, ptr %2, i64 0, i32 16
  %467 = getelementptr inbounds %struct.ParticleBillboardData, ptr %6, i64 0, i32 6
  %468 = getelementptr inbounds %struct.ParticleSettings, ptr %30, i64 0, i32 43
  %469 = getelementptr inbounds %struct.ParticleBillboardData, ptr %6, i64 0, i32 3
  %470 = getelementptr inbounds %struct.ParticleBillboardData, ptr %6, i64 0, i32 3, i64 1
  %471 = getelementptr inbounds %struct.ParticleSettings, ptr %30, i64 0, i32 44
  %472 = getelementptr inbounds %struct.ParticleBillboardData, ptr %6, i64 0, i32 4
  %473 = getelementptr inbounds %struct.ParticleSettings, ptr %30, i64 0, i32 37
  %474 = getelementptr inbounds %struct.ParticleSettings, ptr %30, i64 0, i32 44, i64 1
  %475 = getelementptr inbounds %struct.ParticleBillboardData, ptr %6, i64 0, i32 4, i64 1
  %476 = getelementptr inbounds %struct.ParticleSettings, ptr %30, i64 0, i32 45
  %477 = getelementptr inbounds %struct.ParticleSettings, ptr %30, i64 0, i32 46
  %478 = getelementptr inbounds %struct.ParticleSettings, ptr %30, i64 0, i32 41
  %479 = getelementptr inbounds %struct.ParticleSettings, ptr %30, i64 0, i32 42
  %480 = getelementptr inbounds %struct.ParticleBillboardData, ptr %6, i64 0, i32 5
  %481 = getelementptr inbounds %struct.ParticleBillboardData, ptr %6, i64 0, i32 7
  %482 = getelementptr inbounds %struct.ParticleBillboardData, ptr %6, i64 0, i32 10
  %483 = getelementptr inbounds %struct.ParticleBillboardData, ptr %6, i64 0, i32 12
  %484 = getelementptr inbounds %struct.ParticleSettings, ptr %30, i64 0, i32 118
  %485 = getelementptr inbounds %struct.ParticleSettings, ptr %30, i64 0, i32 88
  %486 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 96
  %487 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 97
  %488 = add i32 %429, 1
  %489 = zext nneg i32 %435 to i64
  %490 = zext i32 %488 to i64
  %491 = zext i32 %488 to i64
  br label %492

492:                                              ; preds = %437, %972
  %493 = phi i64 [ 0, %437 ], [ %980, %972 ]
  %494 = phi ptr [ %32, %437 ], [ %981, %972 ]
  %495 = phi ptr [ null, %437 ], [ %979, %972 ]
  %496 = phi ptr [ %424, %437 ], [ %978, %972 ]
  %497 = phi ptr [ %425, %437 ], [ %977, %972 ]
  %498 = phi ptr [ null, %437 ], [ %976, %972 ]
  %499 = phi float [ %111, %437 ], [ %975, %972 ]
  %500 = phi i32 [ 0, %437 ], [ %974, %972 ]
  %501 = phi i8 [ 0, %437 ], [ %973, %972 ]
  %502 = phi i32 [ %114, %437 ], [ %982, %972 ]
  %503 = call float @BLI_rng_get_float(ptr noundef %103) #22
  %504 = icmp slt i64 %493, %439
  br i1 %504, label %505, label %565

505:                                              ; preds = %492
  %506 = getelementptr inbounds %struct.ParticleData, ptr %494, i64 0, i32 17
  %507 = load i16, ptr %506, align 4, !tbaa !493
  %508 = and i16 %507, 1
  %509 = icmp eq i16 %508, 0
  br i1 %509, label %510, label %972

510:                                              ; preds = %505
  %511 = getelementptr inbounds %struct.ParticleData, ptr %494, i64 0, i32 6
  %512 = load float, ptr %511, align 4, !tbaa !496
  %513 = fsub float %26, %512
  %514 = getelementptr inbounds %struct.ParticleData, ptr %494, i64 0, i32 7
  %515 = load float, ptr %514, align 8, !tbaa !497
  %516 = fdiv float %513, %515
  store float %516, ptr %17, align 4, !tbaa !44
  store float %512, ptr %18, align 4, !tbaa !44
  %517 = getelementptr inbounds %struct.ParticleData, ptr %494, i64 0, i32 8
  %518 = load float, ptr %517, align 4, !tbaa !498
  store float %518, ptr %19, align 4, !tbaa !44
  %519 = load float, ptr %110, align 4, !tbaa !443
  %520 = load i16, ptr %443, align 2, !tbaa !499
  %521 = sext i16 %520 to i32
  %522 = getelementptr inbounds %struct.ParticleData, ptr %494, i64 0, i32 9
  %523 = load i32, ptr %522, align 8, !tbaa !500
  %524 = getelementptr inbounds %struct.ParticleData, ptr %494, i64 0, i32 10
  %525 = load i32, ptr %524, align 4, !tbaa !501
  %526 = getelementptr inbounds %struct.ParticleData, ptr %494, i64 0, i32 11
  %527 = getelementptr inbounds %struct.ParticleData, ptr %494, i64 0, i32 12
  %528 = load float, ptr %527, align 8, !tbaa !502
  %529 = load ptr, ptr %422, align 8, !tbaa !464
  call void @psys_particle_on_emitter(ptr noundef %53, i32 noundef %521, i32 noundef %523, i32 noundef %525, ptr noundef nonnull %526, float noundef %528, ptr noundef nonnull %14, ptr noundef nonnull %15, ptr noundef null, ptr noundef null, ptr noundef %529, ptr noundef null) #22
  %530 = load i32, ptr %524, align 4, !tbaa !501
  %531 = icmp eq i32 %530, -1
  br i1 %531, label %532, label %541

532:                                              ; preds = %510
  %533 = load i32, ptr %522, align 8, !tbaa !500
  %534 = load ptr, ptr %118, align 8, !tbaa !445
  %535 = getelementptr inbounds %struct.DerivedMesh, ptr %534, i64 0, i32 25
  %536 = load ptr, ptr %535, align 8, !tbaa !483
  %537 = call i32 %536(ptr noundef %534) #22
  %538 = icmp slt i32 %533, %537
  br i1 %538, label %539, label %541

539:                                              ; preds = %532
  %540 = load i32, ptr %522, align 8, !tbaa !500
  br label %541

541:                                              ; preds = %532, %539, %510
  %542 = phi i32 [ %540, %539 ], [ -1, %532 ], [ %530, %510 ]
  %543 = load i16, ptr %443, align 2, !tbaa !499
  %544 = load ptr, ptr %118, align 8, !tbaa !445
  call fastcc void @get_particle_uvco_mcol(i16 noundef signext %543, ptr noundef %544, ptr noundef nonnull %526, i32 noundef %542, ptr noundef nonnull %8) #23
  %545 = getelementptr inbounds %struct.ParticleData, ptr %494, i64 0, i32 13
  %546 = load float, ptr %545, align 4, !tbaa !503
  %547 = trunc i64 %493 to i32
  %548 = call fastcc float @psys_frand(ptr noundef nonnull %2, i32 noundef %547) #23
  %549 = trunc i64 %493 to i32
  %550 = add i32 %549, 1
  %551 = call fastcc float @psys_frand(ptr noundef nonnull %2, i32 noundef %550) #23
  br i1 %430, label %558, label %552

552:                                              ; preds = %541
  %553 = load ptr, ptr %449, align 8, !tbaa !463
  %554 = getelementptr inbounds ptr, ptr %553, i64 %493
  %555 = load ptr, ptr %554, align 8, !tbaa !47
  %556 = getelementptr inbounds %struct.ParticleCacheKey, ptr %555, i64 0, i32 5
  %557 = load i32, ptr %556, align 4, !tbaa !504
  br label %558

558:                                              ; preds = %552, %541
  %559 = phi i32 [ %557, %552 ], [ %500, %541 ]
  %560 = phi ptr [ %555, %552 ], [ %495, %541 ]
  br i1 %450, label %662, label %561

561:                                              ; preds = %558
  %562 = load i32, ptr %451, align 8, !tbaa !395
  %563 = and i32 %562, 256
  %564 = icmp eq i32 %563, 0
  br i1 %564, label %972, label %662

565:                                              ; preds = %492
  %566 = load ptr, ptr %438, align 8, !tbaa !506
  %567 = getelementptr inbounds %struct.ChildParticle, ptr %566, i64 %493
  %568 = getelementptr inbounds %struct.ChildParticle, ptr %567, i64 %440
  br i1 %430, label %577, label %569

569:                                              ; preds = %565
  %570 = load ptr, ptr %441, align 8, !tbaa !436
  %571 = sub nsw i64 %493, %439
  %572 = getelementptr inbounds ptr, ptr %570, i64 %571
  %573 = load ptr, ptr %572, align 8, !tbaa !47
  %574 = getelementptr inbounds %struct.ParticleCacheKey, ptr %573, i64 0, i32 5
  %575 = load i32, ptr %574, align 4, !tbaa !504
  %576 = icmp slt i32 %575, 0
  br i1 %576, label %972, label %577

577:                                              ; preds = %569, %565
  %578 = phi i32 [ %500, %565 ], [ %575, %569 ]
  %579 = phi ptr [ %495, %565 ], [ %573, %569 ]
  %580 = call float @psys_get_child_time(ptr noundef nonnull %2, ptr noundef %568, float noundef %26, ptr noundef nonnull %18, ptr noundef nonnull %19) #22
  store float %580, ptr %17, align 4, !tbaa !44
  %581 = call float @psys_get_child_size(ptr noundef nonnull %2, ptr noundef %568, float noundef %26, ptr noundef nonnull %17) #22
  %582 = trunc i64 %493 to i32
  %583 = add i32 %582, 21
  %584 = call fastcc float @psys_frand(ptr noundef nonnull %2, i32 noundef %583) #23
  %585 = trunc i64 %493 to i32
  %586 = add i32 %585, 22
  %587 = call fastcc float @psys_frand(ptr noundef nonnull %2, i32 noundef %586) #23
  %588 = load i32, ptr %568, align 4, !tbaa !507
  %589 = load i16, ptr %442, align 4, !tbaa !509
  %590 = icmp eq i16 %589, 2
  br i1 %590, label %591, label %596

591:                                              ; preds = %577
  %592 = getelementptr inbounds %struct.ChildParticle, ptr %567, i64 %440, i32 4
  %593 = getelementptr inbounds %struct.ChildParticle, ptr %567, i64 %440, i32 5
  %594 = load float, ptr %593, align 4, !tbaa !510
  %595 = load ptr, ptr %422, align 8, !tbaa !464
  call void @psys_particle_on_emitter(ptr noundef %53, i32 noundef 1, i32 noundef %588, i32 noundef -2, ptr noundef nonnull %592, float noundef %594, ptr noundef nonnull %14, ptr noundef nonnull %15, ptr noundef null, ptr noundef null, ptr noundef %595, ptr noundef null) #22
  br label %609

596:                                              ; preds = %577
  %597 = load ptr, ptr %31, align 8, !tbaa !425
  %598 = getelementptr inbounds %struct.ChildParticle, ptr %567, i64 %440, i32 1
  %599 = load i32, ptr %598, align 4, !tbaa !511
  %600 = sext i32 %599 to i64
  %601 = load i16, ptr %443, align 2, !tbaa !499
  %602 = sext i16 %601 to i32
  %603 = getelementptr inbounds %struct.ParticleData, ptr %597, i64 %600, i32 9
  %604 = load i32, ptr %603, align 8, !tbaa !500
  %605 = getelementptr inbounds %struct.ParticleData, ptr %597, i64 %600, i32 11
  %606 = getelementptr inbounds %struct.ParticleData, ptr %597, i64 %600, i32 12
  %607 = load float, ptr %606, align 8, !tbaa !502
  %608 = load ptr, ptr %422, align 8, !tbaa !464
  call void @psys_particle_on_emitter(ptr noundef %53, i32 noundef %602, i32 noundef %604, i32 noundef -2, ptr noundef nonnull %605, float noundef %607, ptr noundef nonnull %14, ptr noundef nonnull %15, ptr noundef null, ptr noundef null, ptr noundef %608, ptr noundef null) #22
  br label %609

609:                                              ; preds = %596, %591
  %610 = load i16, ptr %442, align 4, !tbaa !509
  %611 = icmp eq i16 %610, 2
  br i1 %611, label %612, label %616

612:                                              ; preds = %609
  %613 = load ptr, ptr %118, align 8, !tbaa !445
  %614 = getelementptr inbounds %struct.ChildParticle, ptr %567, i64 %440, i32 4
  %615 = load i32, ptr %568, align 4, !tbaa !507
  call fastcc void @get_particle_uvco_mcol(i16 noundef signext 1, ptr noundef %613, ptr noundef nonnull %614, i32 noundef %615, ptr noundef nonnull %8) #23
  br label %639

616:                                              ; preds = %609
  %617 = load ptr, ptr %31, align 8, !tbaa !425
  %618 = getelementptr inbounds %struct.ChildParticle, ptr %567, i64 %440, i32 1
  %619 = load i32, ptr %618, align 4, !tbaa !511
  %620 = sext i32 %619 to i64
  %621 = getelementptr inbounds %struct.ParticleData, ptr %617, i64 %620, i32 10
  %622 = load i32, ptr %621, align 4, !tbaa !501
  %623 = icmp eq i32 %622, -1
  br i1 %623, label %624, label %634

624:                                              ; preds = %616
  %625 = getelementptr inbounds %struct.ParticleData, ptr %617, i64 %620, i32 9
  %626 = load i32, ptr %625, align 8, !tbaa !500
  %627 = load ptr, ptr %118, align 8, !tbaa !445
  %628 = getelementptr inbounds %struct.DerivedMesh, ptr %627, i64 0, i32 25
  %629 = load ptr, ptr %628, align 8, !tbaa !483
  %630 = call i32 %629(ptr noundef %627) #22
  %631 = icmp slt i32 %626, %630
  br i1 %631, label %632, label %634

632:                                              ; preds = %624
  %633 = load i32, ptr %625, align 8, !tbaa !500
  br label %634

634:                                              ; preds = %624, %632, %616
  %635 = phi i32 [ %633, %632 ], [ -1, %624 ], [ %622, %616 ]
  %636 = load i16, ptr %443, align 2, !tbaa !499
  %637 = load ptr, ptr %118, align 8, !tbaa !445
  %638 = getelementptr inbounds %struct.ParticleData, ptr %617, i64 %620, i32 11
  call fastcc void @get_particle_uvco_mcol(i16 noundef signext %636, ptr noundef %637, ptr noundef nonnull %638, i32 noundef %635, ptr noundef nonnull %8) #23
  br label %639

639:                                              ; preds = %634, %612
  %640 = phi i32 [ %588, %612 ], [ %635, %634 ]
  %641 = call zeroext i8 @psys_render_simplify_params(ptr noundef nonnull %2, ptr noundef nonnull %568, ptr noundef nonnull %20) #22
  br i1 %444, label %662, label %642

642:                                              ; preds = %639
  %643 = load i32, ptr %568, align 4, !tbaa !507
  br i1 %445, label %646, label %644

644:                                              ; preds = %642
  %645 = call fastcc i32 @DM_origindex_mface_mpoly(ptr noundef nonnull %427, ptr noundef %426, i32 noundef %643) #23
  br label %646

646:                                              ; preds = %642, %644
  %647 = phi i32 [ %645, %644 ], [ %643, %642 ]
  %648 = sext i32 %647 to i64
  %649 = load ptr, ptr %446, align 8, !tbaa !488
  %650 = ptrtoint ptr %497 to i64
  %651 = ptrtoint ptr %649 to i64
  %652 = sub i64 %650, %651
  %653 = ashr exact i64 %652, 5
  %654 = icmp slt i64 %653, %648
  br i1 %654, label %655, label %662

655:                                              ; preds = %646
  %656 = load i32, ptr %447, align 4, !tbaa !486
  %657 = icmp slt i32 %647, %656
  br i1 %657, label %658, label %662

658:                                              ; preds = %655
  %659 = getelementptr inbounds %struct.StrandBound, ptr %649, i64 %648
  %660 = load i32, ptr %448, align 8, !tbaa !245
  %661 = getelementptr inbounds %struct.StrandBound, ptr %649, i64 %648, i32 1
  store i32 %660, ptr %661, align 4, !tbaa !489
  store i32 %660, ptr %659, align 4, !tbaa !491
  br label %662

662:                                              ; preds = %639, %658, %655, %646, %558, %561
  %663 = phi i32 [ %542, %561 ], [ %542, %558 ], [ %640, %646 ], [ %640, %655 ], [ %640, %658 ], [ %640, %639 ]
  %664 = phi i8 [ %501, %561 ], [ %501, %558 ], [ %641, %646 ], [ %641, %655 ], [ %641, %658 ], [ %641, %639 ]
  %665 = phi i32 [ %559, %561 ], [ %559, %558 ], [ %578, %646 ], [ %578, %655 ], [ %578, %658 ], [ %578, %639 ]
  %666 = phi float [ %551, %561 ], [ %551, %558 ], [ %587, %646 ], [ %587, %655 ], [ %587, %658 ], [ %587, %639 ]
  %667 = phi float [ %548, %561 ], [ %548, %558 ], [ %584, %646 ], [ %584, %655 ], [ %584, %658 ], [ %584, %639 ]
  %668 = phi float [ %546, %561 ], [ %546, %558 ], [ %581, %646 ], [ %581, %655 ], [ %581, %658 ], [ %581, %639 ]
  %669 = phi float [ %519, %561 ], [ %519, %558 ], [ %499, %646 ], [ %499, %655 ], [ %499, %658 ], [ %499, %639 ]
  %670 = phi ptr [ %497, %561 ], [ %497, %558 ], [ %497, %646 ], [ %497, %655 ], [ %659, %658 ], [ %497, %639 ]
  %671 = phi ptr [ %560, %561 ], [ %560, %558 ], [ %579, %646 ], [ %579, %655 ], [ %579, %658 ], [ %579, %639 ]
  %672 = fadd float %667, -5.000000e-01
  %673 = fmul float %672, 2.000000e+00
  %674 = load float, ptr %17, align 4, !tbaa !44
  store float %674, ptr %21, align 4, !tbaa !44
  store <2 x float> zeroinitializer, ptr %452, align 4, !tbaa !44
  %675 = load i32, ptr %453, align 8, !tbaa !512
  %676 = icmp sgt i32 %675, -1
  br i1 %676, label %678, label %677

677:                                              ; preds = %662
  call void @mul_m3_v3(ptr noundef nonnull %13, ptr noundef nonnull %15) #22
  br label %678

678:                                              ; preds = %662, %677
  %679 = phi ptr [ %15, %677 ], [ null, %662 ]
  store ptr %679, ptr %454, align 8, !tbaa !513
  br i1 %444, label %748, label %680

680:                                              ; preds = %678
  %681 = load i32, ptr %448, align 8, !tbaa !245
  %682 = add nsw i32 %681, 1
  store i32 %682, ptr %448, align 8, !tbaa !245
  %683 = call ptr @RE_findOrAddStrand(ptr noundef %1, i32 noundef %681) #22
  %684 = getelementptr inbounds %struct.StrandRen, ptr %683, i64 0, i32 1
  store ptr %423, ptr %684, align 8, !tbaa !514
  store ptr %496, ptr %683, align 8, !tbaa !251
  %685 = getelementptr inbounds %struct.StrandRen, ptr %683, i64 0, i32 6
  %686 = load ptr, ptr %422, align 8, !tbaa !464
  call fastcc void @copy_v3_v3(ptr noundef nonnull %685, ptr noundef %686) #23
  %687 = icmp eq i8 %664, 0
  br i1 %687, label %693, label %688

688:                                              ; preds = %680
  %689 = call ptr @RE_strandren_get_simplify(ptr noundef nonnull %1, ptr noundef nonnull %683, i32 noundef 1) #22
  %690 = load float, ptr %20, align 4, !tbaa !44
  store float %690, ptr %689, align 4, !tbaa !44
  %691 = load float, ptr %455, align 4, !tbaa !44
  %692 = getelementptr inbounds float, ptr %689, i64 1
  store float %691, ptr %692, align 4, !tbaa !44
  br label %693

693:                                              ; preds = %688, %680
  %694 = icmp eq ptr %679, null
  br i1 %694, label %697, label %695

695:                                              ; preds = %693
  %696 = call ptr @RE_strandren_get_surfnor(ptr noundef nonnull %1, ptr noundef nonnull %683, i32 noundef 1) #22
  call fastcc void @copy_v3_v3(ptr noundef %696, ptr noundef nonnull %679) #23
  br label %697

697:                                              ; preds = %695, %693
  %698 = icmp sgt i32 %663, -1
  %699 = select i1 %456, i1 %698, i1 false
  br i1 %699, label %700, label %702

700:                                              ; preds = %697
  %701 = call ptr @RE_strandren_get_face(ptr noundef nonnull %1, ptr noundef nonnull %683, i32 noundef 1) #22
  store i32 %663, ptr %701, align 4, !tbaa !78
  br label %702

702:                                              ; preds = %700, %697
  %703 = load ptr, ptr %457, align 8, !tbaa !448
  %704 = icmp eq ptr %703, null
  br i1 %704, label %728, label %705

705:                                              ; preds = %702
  %706 = load i32, ptr %124, align 8, !tbaa !446
  %707 = icmp sgt i32 %706, 0
  br i1 %707, label %708, label %728

708:                                              ; preds = %705
  %709 = load i32, ptr %106, align 4, !tbaa !440
  %710 = zext i32 %709 to i64
  %711 = zext nneg i32 %706 to i64
  br label %712

712:                                              ; preds = %708, %725
  %713 = phi i64 [ 0, %708 ], [ %726, %725 ]
  %714 = icmp eq i64 %713, %710
  br i1 %714, label %725, label %715

715:                                              ; preds = %712
  %716 = trunc i64 %713 to i32
  %717 = call ptr @RE_strandren_get_uv(ptr noundef %1, ptr noundef nonnull %683, i32 noundef %716, ptr noundef null, i32 noundef 1) #22
  %718 = shl nuw nsw i64 %713, 1
  %719 = getelementptr inbounds float, ptr %703, i64 %718
  %720 = load float, ptr %719, align 4, !tbaa !44
  store float %720, ptr %717, align 4, !tbaa !44
  %721 = or disjoint i64 %718, 1
  %722 = getelementptr inbounds float, ptr %703, i64 %721
  %723 = load float, ptr %722, align 4, !tbaa !44
  %724 = getelementptr inbounds float, ptr %717, i64 1
  store float %723, ptr %724, align 4, !tbaa !44
  br label %725

725:                                              ; preds = %712, %715
  %726 = add nuw nsw i64 %713, 1
  %727 = icmp eq i64 %726, %711
  br i1 %727, label %728, label %712, !llvm.loop !515

728:                                              ; preds = %725, %705, %702
  %729 = load ptr, ptr %8, align 8, !tbaa !449
  %730 = icmp eq ptr %729, null
  br i1 %730, label %744, label %731

731:                                              ; preds = %728
  %732 = load i32, ptr %128, align 4, !tbaa !447
  %733 = icmp sgt i32 %732, 0
  br i1 %733, label %734, label %744

734:                                              ; preds = %731
  %735 = zext nneg i32 %732 to i64
  br label %736

736:                                              ; preds = %734, %736
  %737 = phi i64 [ 0, %734 ], [ %742, %736 ]
  %738 = trunc i64 %737 to i32
  %739 = call ptr @RE_strandren_get_mcol(ptr noundef %1, ptr noundef nonnull %683, i32 noundef %738, ptr noundef null, i32 noundef 1) #22
  %740 = getelementptr inbounds %struct.MCol, ptr %729, i64 %737
  %741 = load i32, ptr %740, align 1
  store i32 %741, ptr %739, align 1
  %742 = add nuw nsw i64 %737, 1
  %743 = icmp eq i64 %742, %735
  br i1 %743, label %744, label %736, !llvm.loop !516

744:                                              ; preds = %736, %731, %728
  %745 = getelementptr inbounds %struct.StrandBound, ptr %670, i64 0, i32 1
  %746 = load i32, ptr %745, align 4, !tbaa !489
  %747 = add nsw i32 %746, 1
  store i32 %747, ptr %745, align 4, !tbaa !489
  br label %748

748:                                              ; preds = %744, %678
  %749 = phi ptr [ %683, %744 ], [ %498, %678 ]
  br i1 %430, label %805, label %750

750:                                              ; preds = %748
  br i1 %458, label %962, label %751

751:                                              ; preds = %750
  %752 = sext i32 %665 to i64
  br label %753

753:                                              ; preds = %751, %762
  %754 = phi i64 [ 1, %751 ], [ %764, %762 ]
  %755 = phi float [ 0.000000e+00, %751 ], [ %763, %762 ]
  %756 = icmp sgt i64 %754, %752
  br i1 %756, label %762, label %757

757:                                              ; preds = %753
  %758 = getelementptr inbounds %struct.ParticleCacheKey, ptr %671, i64 %754
  %759 = getelementptr inbounds %struct.ParticleCacheKey, ptr %758, i64 -1
  %760 = call fastcc float @len_v3v3(ptr noundef nonnull %759, ptr noundef nonnull %758) #23
  %761 = fadd float %755, %760
  br label %762

762:                                              ; preds = %753, %757
  %763 = phi float [ %761, %757 ], [ %755, %753 ]
  %764 = add nuw nsw i64 %754, 1
  %765 = icmp eq i64 %764, %490
  br i1 %765, label %766, label %753, !llvm.loop !517

766:                                              ; preds = %762
  br i1 %459, label %962, label %767

767:                                              ; preds = %766
  %768 = getelementptr inbounds %struct.StrandRen, ptr %749, i64 0, i32 2
  %769 = sext i32 %665 to i64
  br label %770

770:                                              ; preds = %767, %800
  %771 = phi i64 [ 0, %767 ], [ %803, %800 ]
  %772 = phi ptr [ %496, %767 ], [ %802, %800 ]
  %773 = phi float [ 0.000000e+00, %767 ], [ %801, %800 ]
  %774 = icmp sgt i64 %771, %769
  br i1 %774, label %800, label %775

775:                                              ; preds = %770
  %776 = getelementptr inbounds %struct.ParticleCacheKey, ptr %671, i64 %771
  call fastcc void @copy_v3_v3(ptr noundef nonnull %5, ptr noundef %776) #23
  %777 = getelementptr inbounds %struct.ParticleCacheKey, ptr %671, i64 %771, i32 1
  call fastcc void @copy_v3_v3(ptr noundef nonnull %460, ptr noundef nonnull %777) #23
  %778 = icmp eq i64 %771, 0
  br i1 %778, label %783, label %779

779:                                              ; preds = %775
  %780 = getelementptr inbounds %struct.ParticleCacheKey, ptr %776, i64 -1
  %781 = call fastcc float @len_v3v3(ptr noundef nonnull %780, ptr noundef nonnull %776) #23
  %782 = fadd float %773, %781
  br label %783

783:                                              ; preds = %779, %775
  %784 = phi float [ %782, %779 ], [ %773, %775 ]
  %785 = fdiv float %784, %763
  call fastcc void @copy_v3_v3(ptr noundef nonnull %9, ptr noundef nonnull %5) #23
  call void @mul_m4_v3(ptr noundef nonnull %225, ptr noundef nonnull %9) #22
  br i1 %444, label %792, label %786

786:                                              ; preds = %783
  call fastcc void @copy_v3_v3(ptr noundef %772, ptr noundef nonnull %9) #23
  %787 = call float @llvm.fmuladd.f32(float %785, float 2.000000e+00, float -1.000000e+00)
  %788 = getelementptr inbounds %struct.StrandVert, ptr %772, i64 0, i32 1
  store float %787, ptr %788, align 4, !tbaa !518
  %789 = getelementptr inbounds %struct.StrandVert, ptr %772, i64 1
  %790 = load i32, ptr %768, align 8, !tbaa !520
  %791 = add nsw i32 %790, 1
  store i32 %791, ptr %768, align 8, !tbaa !520
  br label %800

792:                                              ; preds = %783
  store float %669, ptr %461, align 4, !tbaa !521
  %793 = icmp eq i64 %771, 1
  br i1 %793, label %794, label %796

794:                                              ; preds = %792
  store i32 1, ptr %462, align 8, !tbaa !522
  store float 0.000000e+00, ptr %463, align 8, !tbaa !523
  call fastcc void @sub_v3_v3v3(ptr noundef nonnull %11, ptr noundef nonnull %10, ptr noundef nonnull %9) #23
  call fastcc void @add_v3_v3v3(ptr noundef nonnull %11, ptr noundef nonnull %10, ptr noundef nonnull %11) #23
  %795 = load ptr, ptr %118, align 8, !tbaa !445
  call fastcc void @particle_curve(ptr noundef %0, ptr noundef %1, ptr noundef %795, ptr noundef nonnull %109, ptr noundef nonnull %8, ptr noundef nonnull %10, ptr noundef nonnull %11, i32 noundef %502, ptr noundef nonnull %21) #23
  store i32 0, ptr %462, align 8, !tbaa !522
  store float %785, ptr %463, align 8, !tbaa !523
  br label %797

796:                                              ; preds = %792
  store i32 0, ptr %462, align 8, !tbaa !522
  store float %785, ptr %463, align 8, !tbaa !523
  br i1 %778, label %799, label %797

797:                                              ; preds = %794, %796
  %798 = load ptr, ptr %118, align 8, !tbaa !445
  call fastcc void @particle_curve(ptr noundef %0, ptr noundef %1, ptr noundef %798, ptr noundef nonnull %109, ptr noundef nonnull %8, ptr noundef nonnull %9, ptr noundef nonnull %10, i32 noundef %502, ptr noundef nonnull %21) #23
  br label %799

799:                                              ; preds = %797, %796
  call fastcc void @copy_v3_v3(ptr noundef nonnull %10, ptr noundef nonnull %9) #23
  br label %800

800:                                              ; preds = %786, %799, %770
  %801 = phi float [ %773, %770 ], [ %784, %799 ], [ %784, %786 ]
  %802 = phi ptr [ %772, %770 ], [ %772, %799 ], [ %789, %786 ]
  %803 = add nuw nsw i64 %771, 1
  %804 = icmp eq i64 %803, %491
  br i1 %804, label %962, label %770, !llvm.loop !524

805:                                              ; preds = %748
  %806 = load i32, ptr %464, align 8, !tbaa !525
  %807 = icmp sgt i32 %806, 1
  br i1 %807, label %808, label %909

808:                                              ; preds = %805
  %809 = load float, ptr %484, align 4, !tbaa !526
  %810 = load float, ptr %485, align 8, !tbaa !527
  %811 = fneg float %810
  %812 = call float @llvm.fmuladd.f32(float %811, float %666, float 1.000000e+00)
  %813 = fmul float %809, %812
  %814 = sitofp i32 %806 to float
  %815 = fmul float %812, %814
  %816 = fptosi float %815 to i32
  %817 = load i32, ptr %451, align 8, !tbaa !395
  %818 = load float, ptr %17, align 4
  %819 = icmp eq i32 %816, 0
  %820 = sitofp i32 %816 to float
  %821 = select i1 %819, float 1.000000e+00, float %820
  %822 = fdiv float %813, %821
  call void @psys_make_temp_pointcache(ptr noundef %23, ptr noundef nonnull %2) #22
  %823 = icmp sgt i32 %816, 0
  br i1 %823, label %824, label %962

824:                                              ; preds = %808
  %825 = and i32 %817, 32
  %826 = icmp eq i32 %825, 0
  %827 = select i1 %826, float %818, float %26
  %828 = add nsw i32 %816, -1
  %829 = sitofp i32 %828 to float
  %830 = trunc i64 %493 to i32
  br label %831

831:                                              ; preds = %824, %905
  %832 = phi float [ %827, %824 ], [ %907, %905 ]
  %833 = phi i32 [ 0, %824 ], [ %906, %905 ]
  %834 = load i32, ptr %451, align 8, !tbaa !395
  %835 = and i32 %834, 32
  %836 = icmp eq i32 %835, 0
  br i1 %836, label %843, label %837

837:                                              ; preds = %831
  %838 = load float, ptr %18, align 4, !tbaa !44
  %839 = fcmp olt float %832, %838
  %840 = load float, ptr %19, align 4
  %841 = fcmp ogt float %832, %840
  %842 = select i1 %839, i1 true, i1 %841
  br i1 %842, label %905, label %847

843:                                              ; preds = %831
  %844 = fcmp olt float %832, 0.000000e+00
  %845 = fcmp ogt float %832, 1.000000e+00
  %846 = or i1 %844, %845
  br i1 %846, label %905, label %847

847:                                              ; preds = %837, %843
  %848 = fneg float %832
  %849 = select i1 %836, float %832, float %848
  store float %849, ptr %465, align 4, !tbaa !528
  call void @psys_get_particle_on_path(ptr noundef nonnull %7, i32 noundef %830, ptr noundef nonnull %5, i8 noundef zeroext 1) #22
  %850 = load ptr, ptr %466, align 8, !tbaa !529
  %851 = icmp eq ptr %850, null
  br i1 %851, label %854, label %852

852:                                              ; preds = %847
  %853 = getelementptr inbounds %struct.Object, ptr %850, i64 0, i32 47
  call void @mul_m4_v3(ptr noundef nonnull %853, ptr noundef nonnull %5) #22
  br label %854

854:                                              ; preds = %852, %847
  br i1 %231, label %856, label %855

855:                                              ; preds = %854
  call void @mul_m4_v4(ptr noundef nonnull %16, ptr noundef nonnull %5) #22
  br label %856

856:                                              ; preds = %855, %854
  %857 = load i16, ptr %40, align 8, !tbaa !277
  %858 = icmp eq i16 %857, 9
  br i1 %858, label %859, label %889

859:                                              ; preds = %856
  store float %503, ptr %467, align 4, !tbaa !530
  %860 = load <2 x float>, ptr %468, align 8, !tbaa !44
  store <2 x float> %860, ptr %469, align 8, !tbaa !44
  %861 = load float, ptr %471, align 8, !tbaa !44
  %862 = fmul float %668, %861
  store float %862, ptr %472, align 8, !tbaa !44
  %863 = load i16, ptr %473, align 8, !tbaa !450
  %864 = icmp eq i16 %863, 4
  br i1 %864, label %865, label %880

865:                                              ; preds = %859
  %866 = call fastcc float @len_v3(ptr noundef nonnull %460) #23
  %867 = load float, ptr %476, align 8, !tbaa !531
  %868 = fmul float %866, %867
  %869 = load float, ptr %477, align 4, !tbaa !532
  %870 = fmul float %866, %869
  %871 = load float, ptr %474, align 4, !tbaa !44
  %872 = call float @llvm.fmuladd.f32(float %871, float %668, float %868)
  %873 = fadd float %870, %872
  store float %873, ptr %475, align 4, !tbaa !44
  %874 = fcmp ogt float %873, 0.000000e+00
  br i1 %874, label %875, label %883

875:                                              ; preds = %865
  %876 = fsub float %868, %870
  %877 = fdiv float %876, %873
  %878 = load float, ptr %470, align 4, !tbaa !44
  %879 = fadd float %877, %878
  store float %879, ptr %470, align 4, !tbaa !44
  br label %883

880:                                              ; preds = %859
  %881 = load float, ptr %474, align 4, !tbaa !44
  %882 = fmul float %668, %881
  store float %882, ptr %475, align 4, !tbaa !44
  br label %883

883:                                              ; preds = %865, %875, %880
  %884 = load float, ptr %478, align 8, !tbaa !533
  %885 = load float, ptr %479, align 4, !tbaa !534
  %886 = fneg float %885
  %887 = call float @llvm.fmuladd.f32(float %886, float %673, float 1.000000e+00)
  %888 = fmul float %884, %887
  store float %888, ptr %480, align 8, !tbaa !535
  store float %832, ptr %481, align 8, !tbaa !536
  store i32 %830, ptr %482, align 4, !tbaa !537
  br label %889

889:                                              ; preds = %883, %856
  %890 = load i32, ptr %451, align 8, !tbaa !395
  %891 = and i32 %890, 32
  %892 = icmp eq i32 %891, 0
  br i1 %892, label %899, label %893

893:                                              ; preds = %889
  %894 = load float, ptr %18, align 4, !tbaa !44
  %895 = fsub float %832, %894
  %896 = load float, ptr %19, align 4, !tbaa !44
  %897 = fsub float %896, %894
  %898 = fdiv float %895, %897
  br label %899

899:                                              ; preds = %889, %893
  %900 = phi float [ %898, %893 ], [ %832, %889 ]
  store float %900, ptr %21, align 4, !tbaa !44
  %901 = sitofp i32 %833 to float
  %902 = fdiv float %901, %829
  store float %902, ptr %452, align 4, !tbaa !44
  %903 = load i16, ptr %40, align 8, !tbaa !277
  %904 = load ptr, ptr %118, align 8, !tbaa !445
  call fastcc void @particle_normal_ren(i16 noundef signext %903, ptr noundef nonnull %30, ptr noundef %0, ptr noundef %1, ptr noundef %904, ptr noundef nonnull %109, ptr noundef nonnull %8, ptr noundef nonnull %6, ptr noundef nonnull %5, i32 noundef %502, float noundef %669, ptr noundef nonnull %21) #23
  br label %905

905:                                              ; preds = %843, %837, %899
  %906 = add nuw nsw i32 %833, 1
  %907 = fsub float %832, %822
  %908 = icmp eq i32 %906, %816
  br i1 %908, label %962, label %831, !llvm.loop !538

909:                                              ; preds = %805
  store float %26, ptr %465, align 4, !tbaa !528
  %910 = trunc i64 %493 to i32
  %911 = call i32 @psys_get_particle_state(ptr noundef nonnull %7, i32 noundef %910, ptr noundef nonnull %5, i32 noundef 0) #22
  %912 = icmp eq i32 %911, 0
  br i1 %912, label %972, label %913

913:                                              ; preds = %909
  %914 = load ptr, ptr %466, align 8, !tbaa !529
  %915 = icmp eq ptr %914, null
  br i1 %915, label %918, label %916

916:                                              ; preds = %913
  %917 = getelementptr inbounds %struct.Object, ptr %914, i64 0, i32 47
  call void @mul_m4_v3(ptr noundef nonnull %917, ptr noundef nonnull %5) #22
  br label %918

918:                                              ; preds = %916, %913
  br i1 %231, label %920, label %919

919:                                              ; preds = %918
  call void @mul_m4_v3(ptr noundef nonnull %16, ptr noundef nonnull %5) #22
  br label %920

920:                                              ; preds = %919, %918
  %921 = load i16, ptr %40, align 8, !tbaa !277
  %922 = icmp eq i16 %921, 9
  br i1 %922, label %923, label %959

923:                                              ; preds = %920
  store float %503, ptr %467, align 4, !tbaa !530
  %924 = load <2 x float>, ptr %468, align 8, !tbaa !44
  store <2 x float> %924, ptr %469, align 8, !tbaa !44
  %925 = load float, ptr %471, align 8, !tbaa !44
  %926 = fmul float %668, %925
  store float %926, ptr %472, align 8, !tbaa !44
  %927 = load i16, ptr %473, align 8, !tbaa !450
  %928 = icmp eq i16 %927, 4
  br i1 %928, label %929, label %944

929:                                              ; preds = %923
  %930 = call fastcc float @len_v3(ptr noundef nonnull %460) #23
  %931 = load float, ptr %476, align 8, !tbaa !531
  %932 = fmul float %930, %931
  %933 = load float, ptr %477, align 4, !tbaa !532
  %934 = fmul float %930, %933
  %935 = load float, ptr %474, align 4, !tbaa !44
  %936 = call float @llvm.fmuladd.f32(float %935, float %668, float %932)
  %937 = fadd float %934, %936
  store float %937, ptr %475, align 4, !tbaa !44
  %938 = fcmp ogt float %937, 0.000000e+00
  br i1 %938, label %939, label %947

939:                                              ; preds = %929
  %940 = fsub float %932, %934
  %941 = fdiv float %940, %937
  %942 = load float, ptr %470, align 4, !tbaa !44
  %943 = fadd float %941, %942
  store float %943, ptr %470, align 4, !tbaa !44
  br label %947

944:                                              ; preds = %923
  %945 = load float, ptr %474, align 4, !tbaa !44
  %946 = fmul float %668, %945
  store float %946, ptr %475, align 4, !tbaa !44
  br label %947

947:                                              ; preds = %929, %939, %944
  %948 = load float, ptr %478, align 8, !tbaa !533
  %949 = load float, ptr %479, align 4, !tbaa !534
  %950 = fneg float %949
  %951 = call float @llvm.fmuladd.f32(float %950, float %673, float 1.000000e+00)
  %952 = fmul float %948, %951
  store float %952, ptr %480, align 8, !tbaa !535
  %953 = load float, ptr %17, align 4, !tbaa !44
  store float %953, ptr %481, align 8, !tbaa !536
  store i32 %910, ptr %482, align 4, !tbaa !537
  %954 = load float, ptr %19, align 4, !tbaa !44
  %955 = load float, ptr %18, align 4, !tbaa !44
  %956 = fsub float %954, %955
  %957 = fptosi float %956 to i32
  store i32 %957, ptr %483, align 4, !tbaa !539
  %958 = load i16, ptr %40, align 8, !tbaa !277
  br label %959

959:                                              ; preds = %947, %920
  %960 = phi i16 [ %958, %947 ], [ %921, %920 ]
  %961 = load ptr, ptr %118, align 8, !tbaa !445
  call fastcc void @particle_normal_ren(i16 noundef signext %960, ptr noundef nonnull %30, ptr noundef %0, ptr noundef %1, ptr noundef %961, ptr noundef nonnull %109, ptr noundef nonnull %8, ptr noundef nonnull %6, ptr noundef nonnull %5, i32 noundef %502, float noundef %669, ptr noundef nonnull %21) #23
  br label %962

962:                                              ; preds = %800, %905, %750, %766, %808, %959
  %963 = phi ptr [ %496, %959 ], [ %496, %808 ], [ %496, %766 ], [ %496, %750 ], [ %496, %905 ], [ %802, %800 ]
  br i1 %421, label %967, label %964

964:                                              ; preds = %962
  %965 = load ptr, ptr %422, align 8, !tbaa !464
  %966 = getelementptr inbounds float, ptr %965, i64 3
  store ptr %966, ptr %422, align 8, !tbaa !464
  br label %967

967:                                              ; preds = %964, %962
  %968 = load ptr, ptr %486, align 8, !tbaa !129
  %969 = load ptr, ptr %487, align 8, !tbaa !130
  %970 = call i32 %968(ptr noundef %969) #22
  %971 = icmp eq i32 %970, 0
  br i1 %971, label %972, label %984

972:                                              ; preds = %569, %967, %909, %561, %505
  %973 = phi i8 [ %501, %505 ], [ %501, %561 ], [ %664, %967 ], [ %664, %909 ], [ %501, %569 ]
  %974 = phi i32 [ %500, %505 ], [ %559, %561 ], [ %665, %967 ], [ %665, %909 ], [ %500, %569 ]
  %975 = phi float [ %499, %505 ], [ %519, %561 ], [ %669, %967 ], [ %669, %909 ], [ %499, %569 ]
  %976 = phi ptr [ %498, %505 ], [ %498, %561 ], [ %749, %967 ], [ %749, %909 ], [ %498, %569 ]
  %977 = phi ptr [ %497, %505 ], [ %497, %561 ], [ %670, %967 ], [ %670, %909 ], [ %497, %569 ]
  %978 = phi ptr [ %496, %505 ], [ %496, %561 ], [ %963, %967 ], [ %496, %909 ], [ %496, %569 ]
  %979 = phi ptr [ %495, %505 ], [ %560, %561 ], [ %671, %967 ], [ %671, %909 ], [ %573, %569 ]
  %980 = add nuw nsw i64 %493, 1
  %981 = getelementptr inbounds %struct.ParticleData, ptr %494, i64 1
  %982 = add nuw nsw i32 %502, 1
  %983 = icmp eq i64 %980, %489
  br i1 %983, label %984, label %492, !llvm.loop !540

984:                                              ; preds = %972, %967, %434
  %985 = icmp eq i8 %428, 0
  br i1 %985, label %990, label %986

986:                                              ; preds = %984
  %987 = load ptr, ptr %118, align 8, !tbaa !445
  %988 = call ptr @cache_strand_surface(ptr noundef %0, ptr noundef %1, ptr noundef %987, ptr noundef nonnull %12, i32 noundef %3) #22
  %989 = getelementptr inbounds %struct.StrandBuffer, ptr %423, i64 0, i32 8
  store ptr %988, ptr %989, align 8, !tbaa !243
  br label %990

990:                                              ; preds = %986, %984
  br i1 %421, label %991, label %994

991:                                              ; preds = %990
  %992 = load ptr, ptr @MEM_freeN, align 8, !tbaa !47
  %993 = load ptr, ptr %422, align 8, !tbaa !464
  call void %992(ptr noundef %993) #22
  br label %994

994:                                              ; preds = %991, %990
  %995 = getelementptr inbounds %struct.ParticleStrandData, ptr %8, i64 0, i32 2
  %996 = load ptr, ptr %995, align 8, !tbaa !448
  %997 = icmp eq ptr %996, null
  br i1 %997, label %1000, label %998

998:                                              ; preds = %994
  %999 = load ptr, ptr @MEM_freeN, align 8, !tbaa !47
  call void %999(ptr noundef nonnull %996) #22
  br label %1000

1000:                                             ; preds = %998, %994
  %1001 = load ptr, ptr %8, align 8, !tbaa !449
  %1002 = icmp eq ptr %1001, null
  br i1 %1002, label %1005, label %1003

1003:                                             ; preds = %1000
  %1004 = load ptr, ptr @MEM_freeN, align 8, !tbaa !47
  call void %1004(ptr noundef nonnull %1001) #22
  br label %1005

1005:                                             ; preds = %1003, %1000
  call void @BLI_rng_free(ptr noundef %103) #22
  %1006 = load i32, ptr %98, align 4, !tbaa !400
  %1007 = and i32 %1006, -65
  store i32 %1007, ptr %98, align 4, !tbaa !400
  %1008 = getelementptr inbounds %struct.ParticleSystem, ptr %2, i64 0, i32 15
  %1009 = load ptr, ptr %1008, align 8, !tbaa !492
  %1010 = icmp eq ptr %1009, null
  br i1 %1010, label %1012, label %1011

1011:                                             ; preds = %1005
  call void @end_latt_deform(ptr noundef nonnull %1009) #22
  store ptr null, ptr %1008, align 8, !tbaa !492
  br label %1012

1012:                                             ; preds = %1011, %1005
  br i1 %430, label %1019, label %1013

1013:                                             ; preds = %1012
  %1014 = getelementptr inbounds %struct.Material, ptr %109, i64 0, i32 52
  %1015 = load i32, ptr %1014, align 8, !tbaa !512
  %1016 = and i32 %1015, 16777216
  %1017 = icmp eq i32 %1016, 0
  br i1 %1017, label %1018, label %1019

1018:                                             ; preds = %1013
  call fastcc void @calc_vertexnormals(ptr noundef %1, i8 noundef zeroext 1, i8 noundef zeroext 0, i8 noundef zeroext 0) #23
  br label %1019

1019:                                             ; preds = %1012, %1013, %1018, %52, %47, %39, %39, %39, %28, %36, %4
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %21) #24
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %20) #24
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %19) #24
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %18) #24
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %17) #24
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %16) #24
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %15) #24
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %14) #24
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %13) #24
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %12) #24
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %11) #24
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %10) #24
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %9) #24
  call void @llvm.lifetime.end.p0(i64 72, ptr nonnull %8) #24
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %7) #24
  call void @llvm.lifetime.end.p0(i64 96, ptr nonnull %6) #24
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %5) #24
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @init_render_curve(ptr noundef %0, ptr noundef %1, i32 noundef %2) unnamed_addr #4 !PGOFuncName !541 {
  %4 = alloca ptr, align 8
  %5 = alloca %struct.ListBase, align 8
  %6 = alloca [3 x float], align 4
  %7 = alloca [4 x [4 x float]], align 16
  %8 = alloca [4 x [4 x float]], align 16
  %9 = alloca i32, align 4
  %10 = alloca [3 x float], align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = getelementptr inbounds %struct.ObjectRen, ptr %1, i64 0, i32 2
  %16 = load ptr, ptr %15, align 8, !tbaa !232
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #24
  store ptr null, ptr %4, align 8, !tbaa !47
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %5) #24
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %5, i8 0, i64 16, i1 false)
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %6) #24
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %7) #24
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %8) #24
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %9) #24
  %17 = getelementptr inbounds %struct.Object, ptr %16, i64 0, i32 19
  %18 = load ptr, ptr %17, align 8, !tbaa !309
  %19 = getelementptr inbounds %struct.Object, ptr %16, i64 0, i32 3
  %20 = load i16, ptr %19, align 8, !tbaa !147
  switch i16 %20, label %29 [
    i16 4, label %21
    i16 2, label %25
  ]

21:                                               ; preds = %3
  %22 = getelementptr inbounds %struct.Curve, ptr %18, i64 0, i32 52
  %23 = load ptr, ptr %22, align 8, !tbaa !542
  %24 = icmp eq ptr %23, null
  br i1 %24, label %457, label %29

25:                                               ; preds = %3
  %26 = getelementptr inbounds %struct.Curve, ptr %18, i64 0, i32 3
  %27 = load ptr, ptr %26, align 8, !tbaa !545
  %28 = icmp eq ptr %27, null
  br i1 %28, label %457, label %29

29:                                               ; preds = %3, %21, %25
  %30 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 44
  %31 = load ptr, ptr %30, align 8, !tbaa !48
  call void @BKE_displist_make_curveTypes_forRender(ptr noundef %31, ptr noundef nonnull %16, ptr noundef nonnull %5, ptr noundef nonnull %4, i8 noundef zeroext 0, i8 noundef zeroext 1) #22
  %32 = load ptr, ptr %5, align 8, !tbaa !194
  %33 = icmp eq ptr %32, null
  br i1 %33, label %457, label %34

34:                                               ; preds = %29
  %35 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 32
  %36 = getelementptr inbounds %struct.Object, ptr %16, i64 0, i32 47
  call void @mul_m4_m4m4(ptr noundef nonnull %7, ptr noundef nonnull %35, ptr noundef nonnull %36) #22
  %37 = getelementptr inbounds %struct.Object, ptr %16, i64 0, i32 50
  %38 = call zeroext i8 @invert_m4_m4(ptr noundef nonnull %37, ptr noundef nonnull %7) #22
  %39 = call zeroext i8 @is_negative_m4(ptr noundef nonnull %7) #22
  call void @copy_m4_m4(ptr noundef nonnull %8, ptr noundef nonnull %7) #22
  call void @transpose_m4(ptr noundef nonnull %8) #22
  %40 = call zeroext i8 @invert_m4(ptr noundef nonnull %8) #22
  %41 = getelementptr inbounds %struct.Object, ptr %16, i64 0, i32 31
  %42 = load i32, ptr %41, align 8, !tbaa !398
  %43 = add i32 %42, 1
  %44 = load ptr, ptr @MEM_callocN, align 8, !tbaa !47
  %45 = sext i32 %43 to i64
  %46 = shl nsw i64 %45, 3
  %47 = call ptr %44(i64 noundef %46, ptr noundef nonnull @.str.19) #22
  %48 = icmp slt i32 %42, 0
  br i1 %48, label %68, label %49

49:                                               ; preds = %34
  %50 = zext i32 %43 to i64
  br label %51

51:                                               ; preds = %49, %51
  %52 = phi i64 [ 0, %49 ], [ %54, %51 ]
  %53 = phi i8 [ 0, %49 ], [ %62, %51 ]
  %54 = add nuw nsw i64 %52, 1
  %55 = trunc i64 %54 to i16
  %56 = call fastcc ptr @give_render_material(ptr noundef %0, ptr noundef %16, i16 noundef signext %55) #23
  %57 = getelementptr inbounds ptr, ptr %47, i64 %52
  store ptr %56, ptr %57, align 8, !tbaa !47
  %58 = getelementptr inbounds %struct.Material, ptr %56, i64 0, i32 90
  %59 = load i16, ptr %58, align 4, !tbaa !265
  %60 = and i16 %59, 1
  %61 = icmp eq i16 %60, 0
  %62 = select i1 %61, i8 %53, i8 1
  %63 = icmp eq i64 %54, %50
  br i1 %63, label %64, label %51, !llvm.loop !546

64:                                               ; preds = %51
  %65 = icmp eq i8 %62, 0
  %66 = load ptr, ptr %4, align 8, !tbaa !47
  %67 = icmp eq ptr %66, null
  br i1 %67, label %87, label %71

68:                                               ; preds = %34
  %69 = load ptr, ptr %4, align 8, !tbaa !47
  %70 = icmp eq ptr %69, null
  br i1 %70, label %94, label %81

71:                                               ; preds = %64
  br i1 %65, label %81, label %72

72:                                               ; preds = %71
  %73 = call fastcc ptr @get_object_orco(ptr noundef %0, ptr noundef %16) #23
  %74 = icmp eq ptr %73, null
  br i1 %74, label %75, label %81

75:                                               ; preds = %72
  %76 = load ptr, ptr %30, align 8, !tbaa !48
  %77 = load ptr, ptr %4, align 8, !tbaa !47
  %78 = call ptr @BKE_displist_make_orco(ptr noundef %76, ptr noundef %16, ptr noundef %77, i8 noundef zeroext 1, i8 noundef zeroext 1) #22
  %79 = icmp eq ptr %78, null
  br i1 %79, label %81, label %80

80:                                               ; preds = %75
  call fastcc void @set_object_orco(ptr noundef nonnull %0, ptr noundef %16, ptr noundef nonnull %78) #23
  br label %81

81:                                               ; preds = %68, %72, %80, %75, %71
  %82 = phi ptr [ %73, %72 ], [ %78, %80 ], [ null, %75 ], [ null, %71 ], [ null, %68 ]
  %83 = load ptr, ptr %4, align 8, !tbaa !47
  call fastcc void @init_render_dm(ptr noundef %83, ptr noundef %0, ptr noundef %1, i32 noundef %2, ptr noundef %82, ptr noundef nonnull %7) #23
  %84 = load ptr, ptr %4, align 8, !tbaa !47
  %85 = getelementptr inbounds %struct.DerivedMesh, ptr %84, i64 0, i32 95
  %86 = load ptr, ptr %85, align 8, !tbaa !281
  call void %86(ptr noundef %84) #22
  br label %455

87:                                               ; preds = %64
  br i1 %65, label %94, label %88

88:                                               ; preds = %87
  %89 = call fastcc ptr @get_object_orco(ptr noundef %0, ptr noundef %16) #23
  %90 = icmp eq ptr %89, null
  br i1 %90, label %91, label %94

91:                                               ; preds = %88
  %92 = load ptr, ptr %30, align 8, !tbaa !48
  %93 = call ptr @BKE_curve_make_orco(ptr noundef %92, ptr noundef %16, ptr noundef null) #22
  call fastcc void @set_object_orco(ptr noundef %0, ptr noundef %16, ptr noundef %93) #23
  br label %94

94:                                               ; preds = %68, %88, %91, %87
  %95 = phi ptr [ %89, %88 ], [ %93, %91 ], [ null, %87 ], [ null, %68 ]
  %96 = getelementptr inbounds %struct.ObjectRen, ptr %1, i64 0, i32 10
  %97 = icmp eq i32 %2, 0
  %98 = getelementptr inbounds %struct.ObjectRen, ptr %1, i64 0, i32 11
  %99 = icmp eq i8 %39, 0
  br label %100

100:                                              ; preds = %94, %451
  %101 = phi ptr [ %32, %94 ], [ %453, %451 ]
  %102 = phi ptr [ %95, %94 ], [ %452, %451 ]
  %103 = getelementptr inbounds %struct.DispList, ptr %101, i64 0, i32 6
  %104 = load i16, ptr %103, align 4, !tbaa !547
  %105 = sext i16 %104 to i32
  %106 = load i32, ptr %41, align 8, !tbaa !398
  %107 = icmp slt i32 %106, %105
  br i1 %107, label %451, label %108

108:                                              ; preds = %100
  %109 = getelementptr inbounds %struct.DispList, ptr %101, i64 0, i32 2
  %110 = load i16, ptr %109, align 8, !tbaa !549
  switch i16 %110, label %451 [
    i16 4, label %111
    i16 2, label %225
  ]

111:                                              ; preds = %108
  %112 = load i32, ptr %96, align 8, !tbaa !196
  %113 = getelementptr inbounds %struct.DispList, ptr %101, i64 0, i32 8
  %114 = getelementptr inbounds %struct.DispList, ptr %101, i64 0, i32 5
  %115 = load i32, ptr %114, align 8, !tbaa !550
  %116 = icmp sgt i32 %115, 0
  br i1 %116, label %117, label %136

117:                                              ; preds = %111
  %118 = load ptr, ptr %113, align 8, !tbaa !551
  br label %119

119:                                              ; preds = %117, %130
  %120 = phi ptr [ %133, %130 ], [ %118, %117 ]
  %121 = phi ptr [ %131, %130 ], [ %102, %117 ]
  %122 = phi i32 [ %132, %130 ], [ 0, %117 ]
  %123 = load i32, ptr %96, align 8, !tbaa !196
  %124 = add nsw i32 %123, 1
  store i32 %124, ptr %96, align 8, !tbaa !196
  %125 = call ptr @RE_findOrAddVert(ptr noundef nonnull %1, i32 noundef %123) #22
  call fastcc void @copy_v3_v3(ptr noundef %125, ptr noundef %120) #23
  call void @mul_m4_v3(ptr noundef nonnull %7, ptr noundef %125) #22
  %126 = icmp eq ptr %121, null
  br i1 %126, label %130, label %127

127:                                              ; preds = %119
  %128 = getelementptr inbounds %struct.VertRen, ptr %125, i64 0, i32 2
  store ptr %121, ptr %128, align 8, !tbaa !552
  %129 = getelementptr inbounds float, ptr %121, i64 3
  br label %130

130:                                              ; preds = %119, %127
  %131 = phi ptr [ %129, %127 ], [ null, %119 ]
  %132 = add nuw nsw i32 %122, 1
  %133 = getelementptr inbounds float, ptr %120, i64 3
  %134 = load i32, ptr %114, align 8, !tbaa !550
  %135 = icmp slt i32 %132, %134
  br i1 %135, label %119, label %136, !llvm.loop !554

136:                                              ; preds = %130, %111
  %137 = phi ptr [ %102, %111 ], [ %131, %130 ]
  br i1 %97, label %138, label %451

138:                                              ; preds = %136
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %10) #24
  %139 = load i32, ptr %98, align 4, !tbaa !555
  call fastcc void @zero_v3(ptr noundef nonnull %6) #23
  %140 = getelementptr inbounds %struct.DispList, ptr %101, i64 0, i32 4
  %141 = load i32, ptr %140, align 4, !tbaa !556
  %142 = icmp sgt i32 %141, 0
  br i1 %142, label %143, label %196

143:                                              ; preds = %138
  %144 = getelementptr inbounds %struct.DispList, ptr %101, i64 0, i32 10
  %145 = load ptr, ptr %144, align 8, !tbaa !557
  br label %146

146:                                              ; preds = %143, %184
  %147 = phi ptr [ %193, %184 ], [ %145, %143 ]
  %148 = phi i32 [ %192, %184 ], [ 0, %143 ]
  %149 = load i32, ptr %147, align 4, !tbaa !78
  %150 = getelementptr inbounds i32, ptr %147, i64 2
  %151 = load i32, ptr %150, align 4, !tbaa !78
  %152 = getelementptr inbounds i32, ptr %147, i64 1
  %153 = load i32, ptr %152, align 4, !tbaa !78
  %154 = load ptr, ptr %113, align 8, !tbaa !551
  %155 = mul nsw i32 %149, 3
  %156 = sext i32 %155 to i64
  %157 = getelementptr inbounds float, ptr %154, i64 %156
  %158 = mul nsw i32 %151, 3
  %159 = sext i32 %158 to i64
  %160 = getelementptr inbounds float, ptr %154, i64 %159
  %161 = mul nsw i32 %153, 3
  %162 = sext i32 %161 to i64
  %163 = getelementptr inbounds float, ptr %154, i64 %162
  %164 = load i32, ptr %98, align 4, !tbaa !555
  %165 = add nsw i32 %164, 1
  store i32 %165, ptr %98, align 4, !tbaa !555
  %166 = call ptr @RE_findOrAddVlak(ptr noundef nonnull %1, i32 noundef %164) #22
  %167 = add nsw i32 %149, %112
  %168 = call ptr @RE_findOrAddVert(ptr noundef nonnull %1, i32 noundef %167) #22
  store ptr %168, ptr %166, align 8, !tbaa !558
  %169 = add nsw i32 %151, %112
  %170 = call ptr @RE_findOrAddVert(ptr noundef nonnull %1, i32 noundef %169) #22
  %171 = getelementptr inbounds %struct.VlakRen, ptr %166, i64 0, i32 1
  store ptr %170, ptr %171, align 8, !tbaa !560
  %172 = add nsw i32 %153, %112
  %173 = call ptr @RE_findOrAddVert(ptr noundef nonnull %1, i32 noundef %172) #22
  %174 = getelementptr inbounds %struct.VlakRen, ptr %166, i64 0, i32 2
  store ptr %173, ptr %174, align 8, !tbaa !561
  %175 = getelementptr inbounds %struct.VlakRen, ptr %166, i64 0, i32 3
  store ptr null, ptr %175, align 8, !tbaa !562
  %176 = call float @area_tri_v3(ptr noundef %163, ptr noundef %160, ptr noundef %157) #22
  %177 = fcmp ogt float %176, 0x3E80000000000000
  br i1 %177, label %178, label %184

178:                                              ; preds = %146
  br i1 %99, label %181, label %179

179:                                              ; preds = %178
  %180 = call float @normal_tri_v3(ptr noundef nonnull %10, ptr noundef %157, ptr noundef %160, ptr noundef %163) #22
  br label %183

181:                                              ; preds = %178
  %182 = call float @normal_tri_v3(ptr noundef nonnull %10, ptr noundef %163, ptr noundef %160, ptr noundef %157) #22
  br label %183

183:                                              ; preds = %181, %179
  call fastcc void @add_v3_v3(ptr noundef nonnull %6, ptr noundef nonnull %10) #23
  br label %184

184:                                              ; preds = %183, %146
  %185 = load i16, ptr %103, align 4, !tbaa !547
  %186 = sext i16 %185 to i64
  %187 = getelementptr inbounds ptr, ptr %47, i64 %186
  %188 = load ptr, ptr %187, align 8, !tbaa !47
  %189 = getelementptr inbounds %struct.VlakRen, ptr %166, i64 0, i32 5
  store ptr %188, ptr %189, align 8, !tbaa !563
  %190 = getelementptr inbounds %struct.VlakRen, ptr %166, i64 0, i32 7
  store i8 0, ptr %190, align 1, !tbaa !564
  %191 = getelementptr inbounds %struct.VlakRen, ptr %166, i64 0, i32 8
  store i8 0, ptr %191, align 2, !tbaa !565
  %192 = add nuw nsw i32 %148, 1
  %193 = getelementptr inbounds i32, ptr %147, i64 3
  %194 = load i32, ptr %140, align 4, !tbaa !556
  %195 = icmp slt i32 %192, %194
  br i1 %195, label %146, label %196, !llvm.loop !566

196:                                              ; preds = %184, %138
  call void @mul_m4_v3(ptr noundef nonnull %8, ptr noundef nonnull %6) #22
  call fastcc void @normalize_v3(ptr noundef nonnull %6) #23
  %197 = load i32, ptr %98, align 4, !tbaa !555
  %198 = icmp slt i32 %139, %197
  br i1 %198, label %202, label %199

199:                                              ; preds = %202, %196
  %200 = load i32, ptr %96, align 8, !tbaa !196
  %201 = icmp slt i32 %112, %200
  br i1 %201, label %217, label %224

202:                                              ; preds = %196, %202
  %203 = phi i32 [ %214, %202 ], [ %139, %196 ]
  %204 = call ptr @RE_findOrAddVlak(ptr noundef nonnull %1, i32 noundef %203) #22
  %205 = getelementptr inbounds %struct.VlakRen, ptr %204, i64 0, i32 4
  call fastcc void @copy_v3_v3(ptr noundef nonnull %205, ptr noundef nonnull %6) #23
  %206 = load ptr, ptr %204, align 8, !tbaa !558
  %207 = getelementptr inbounds %struct.VertRen, ptr %206, i64 0, i32 1
  call fastcc void @add_v3_v3(ptr noundef nonnull %207, ptr noundef nonnull %205) #23
  %208 = getelementptr inbounds %struct.VlakRen, ptr %204, i64 0, i32 2
  %209 = load ptr, ptr %208, align 8, !tbaa !561
  %210 = getelementptr inbounds %struct.VertRen, ptr %209, i64 0, i32 1
  call fastcc void @add_v3_v3(ptr noundef nonnull %210, ptr noundef nonnull %205) #23
  %211 = getelementptr inbounds %struct.VlakRen, ptr %204, i64 0, i32 1
  %212 = load ptr, ptr %211, align 8, !tbaa !560
  %213 = getelementptr inbounds %struct.VertRen, ptr %212, i64 0, i32 1
  call fastcc void @add_v3_v3(ptr noundef nonnull %213, ptr noundef nonnull %205) #23
  %214 = add nsw i32 %203, 1
  %215 = load i32, ptr %98, align 4, !tbaa !555
  %216 = icmp slt i32 %214, %215
  br i1 %216, label %202, label %199, !llvm.loop !567

217:                                              ; preds = %199, %217
  %218 = phi i32 [ %221, %217 ], [ %112, %199 ]
  %219 = call ptr @RE_findOrAddVert(ptr noundef nonnull %1, i32 noundef %218) #22
  %220 = getelementptr inbounds %struct.VertRen, ptr %219, i64 0, i32 1
  call fastcc void @normalize_v3(ptr noundef nonnull %220) #23
  %221 = add nsw i32 %218, 1
  %222 = load i32, ptr %96, align 8, !tbaa !196
  %223 = icmp slt i32 %221, %222
  br i1 %223, label %217, label %224, !llvm.loop !568

224:                                              ; preds = %217, %199
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %10) #24
  br label %451

225:                                              ; preds = %108
  %226 = getelementptr inbounds %struct.DispList, ptr %101, i64 0, i32 3
  %227 = load i16, ptr %226, align 2, !tbaa !569
  %228 = and i16 %227, 1
  %229 = icmp eq i16 %228, 0
  br i1 %229, label %235, label %230

230:                                              ; preds = %225
  %231 = call fastcc i32 @dl_surf_to_renderdata(ptr noundef %1, ptr noundef nonnull %101, ptr noundef %47, ptr noundef %102, ptr noundef nonnull %7) #23
  %232 = mul nsw i32 %231, 3
  %233 = sext i32 %232 to i64
  %234 = getelementptr inbounds float, ptr %102, i64 %233
  br label %451

235:                                              ; preds = %225
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %11) #24
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %12) #24
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %13) #24
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %14) #24
  %236 = getelementptr inbounds %struct.DispList, ptr %101, i64 0, i32 8
  %237 = load i32, ptr %96, align 8, !tbaa !196
  %238 = getelementptr inbounds %struct.DispList, ptr %101, i64 0, i32 5
  %239 = load i32, ptr %238, align 8, !tbaa !550
  %240 = getelementptr inbounds %struct.DispList, ptr %101, i64 0, i32 4
  %241 = load i32, ptr %240, align 4, !tbaa !556
  %242 = mul nsw i32 %241, %239
  %243 = icmp eq i32 %242, 0
  br i1 %243, label %264, label %244

244:                                              ; preds = %235
  %245 = load ptr, ptr %236, align 8, !tbaa !551
  br label %246

246:                                              ; preds = %244, %259
  %247 = phi i32 [ %250, %259 ], [ %242, %244 ]
  %248 = phi ptr [ %254, %259 ], [ %245, %244 ]
  %249 = phi ptr [ %260, %259 ], [ %102, %244 ]
  %250 = add nsw i32 %247, -1
  %251 = load i32, ptr %96, align 8, !tbaa !196
  %252 = add nsw i32 %251, 1
  store i32 %252, ptr %96, align 8, !tbaa !196
  %253 = call ptr @RE_findOrAddVert(ptr noundef nonnull %1, i32 noundef %251) #22
  call fastcc void @copy_v3_v3(ptr noundef %253, ptr noundef %248) #23
  call void @mul_m4_v3(ptr noundef nonnull %7, ptr noundef %253) #22
  %254 = getelementptr inbounds float, ptr %248, i64 3
  %255 = icmp eq ptr %249, null
  br i1 %255, label %259, label %256

256:                                              ; preds = %246
  %257 = getelementptr inbounds %struct.VertRen, ptr %253, i64 0, i32 2
  store ptr %249, ptr %257, align 8, !tbaa !552
  %258 = getelementptr inbounds float, ptr %249, i64 3
  br label %259

259:                                              ; preds = %256, %246
  %260 = phi ptr [ %258, %256 ], [ null, %246 ]
  %261 = icmp eq i32 %250, 0
  br i1 %261, label %262, label %246, !llvm.loop !570

262:                                              ; preds = %259
  %263 = load i16, ptr %226, align 2, !tbaa !569
  br label %264

264:                                              ; preds = %262, %235
  %265 = phi i16 [ %227, %235 ], [ %263, %262 ]
  %266 = phi ptr [ %102, %235 ], [ %260, %262 ]
  %267 = and i16 %265, 2
  %268 = icmp ne i16 %267, 0
  %269 = icmp ne ptr %266, null
  %270 = select i1 %268, i1 %269, i1 false
  br i1 %270, label %271, label %288

271:                                              ; preds = %264
  %272 = load i32, ptr %238, align 8, !tbaa !550
  %273 = icmp eq i32 %272, 0
  br i1 %273, label %288, label %274

274:                                              ; preds = %271
  %275 = load ptr, ptr %236, align 8, !tbaa !551
  br label %276

276:                                              ; preds = %274, %276
  %277 = phi ptr [ %285, %276 ], [ %275, %274 ]
  %278 = phi ptr [ %286, %276 ], [ %266, %274 ]
  %279 = phi i32 [ %280, %276 ], [ %272, %274 ]
  %280 = add nsw i32 %279, -1
  %281 = load i32, ptr %96, align 8, !tbaa !196
  %282 = add nsw i32 %281, 1
  store i32 %282, ptr %96, align 8, !tbaa !196
  %283 = call ptr @RE_findOrAddVert(ptr noundef nonnull %1, i32 noundef %281) #22
  call fastcc void @copy_v3_v3(ptr noundef %283, ptr noundef %277) #23
  call void @mul_m4_v3(ptr noundef nonnull %7, ptr noundef %283) #22
  %284 = getelementptr inbounds %struct.VertRen, ptr %283, i64 0, i32 2
  store ptr %278, ptr %284, align 8, !tbaa !552
  %285 = getelementptr inbounds float, ptr %277, i64 3
  %286 = getelementptr inbounds float, ptr %278, i64 3
  %287 = icmp eq i32 %280, 0
  br i1 %287, label %288, label %276, !llvm.loop !571

288:                                              ; preds = %276, %271, %264
  %289 = phi ptr [ %266, %264 ], [ %266, %271 ], [ %286, %276 ]
  %290 = getelementptr inbounds %struct.DispList, ptr %101, i64 0, i32 13
  %291 = load ptr, ptr %290, align 8, !tbaa !572
  %292 = icmp ne ptr %291, null
  %293 = or i1 %97, %292
  br i1 %293, label %294, label %450

294:                                              ; preds = %288
  %295 = load i32, ptr %98, align 4, !tbaa !555
  %296 = load i32, ptr %240, align 4, !tbaa !556
  %297 = icmp sgt i32 %296, 0
  br i1 %297, label %298, label %378

298:                                              ; preds = %294
  %299 = icmp ne ptr %289, null
  %300 = getelementptr inbounds %struct.DispList, ptr %101, i64 0, i32 7
  br label %301

301:                                              ; preds = %298, %372
  %302 = phi i32 [ 0, %298 ], [ %373, %372 ]
  %303 = call zeroext i8 @BKE_displist_surfindex_get(ptr noundef nonnull %101, i32 noundef %302, ptr noundef nonnull %9, ptr noundef nonnull %11, ptr noundef nonnull %12, ptr noundef nonnull %13, ptr noundef nonnull %14) #22
  %304 = icmp eq i8 %303, 0
  br i1 %304, label %376, label %305

305:                                              ; preds = %301
  %306 = load i32, ptr %11, align 4, !tbaa !78
  %307 = add nsw i32 %306, %237
  store i32 %307, ptr %11, align 4, !tbaa !78
  %308 = load i32, ptr %12, align 4, !tbaa !78
  %309 = add nsw i32 %308, %237
  store i32 %309, ptr %12, align 4, !tbaa !78
  %310 = load i32, ptr %13, align 4, !tbaa !78
  %311 = add nsw i32 %310, %237
  store i32 %311, ptr %13, align 4, !tbaa !78
  %312 = load i32, ptr %14, align 4, !tbaa !78
  %313 = add nsw i32 %312, %237
  store i32 %313, ptr %14, align 4, !tbaa !78
  %314 = load i16, ptr %226, align 2, !tbaa !569
  %315 = and i16 %314, 2
  %316 = icmp ne i16 %315, 0
  %317 = select i1 %316, i1 %299, i1 false
  br i1 %317, label %320, label %318

318:                                              ; preds = %305
  %319 = load i32, ptr %238, align 8, !tbaa !550
  br label %328

320:                                              ; preds = %305
  %321 = load i32, ptr %240, align 4, !tbaa !556
  %322 = add nsw i32 %321, -1
  %323 = icmp eq i32 %302, %322
  %324 = load i32, ptr %238, align 8, !tbaa !550
  br i1 %323, label %325, label %328

325:                                              ; preds = %320
  %326 = add nsw i32 %324, %307
  store i32 %326, ptr %13, align 4, !tbaa !78
  %327 = add nsw i32 %324, %309
  store i32 %327, ptr %14, align 4, !tbaa !78
  br label %328

328:                                              ; preds = %318, %325, %320
  %329 = phi i32 [ %319, %318 ], [ %324, %325 ], [ %324, %320 ]
  %330 = load i32, ptr %9, align 4, !tbaa !78
  %331 = icmp slt i32 %330, %329
  br i1 %331, label %332, label %372

332:                                              ; preds = %328
  %333 = icmp eq i32 %302, 0
  %334 = select i1 %333, i8 7, i8 6
  br label %335

335:                                              ; preds = %332, %335
  %336 = load i32, ptr %98, align 4, !tbaa !555
  %337 = add nsw i32 %336, 1
  store i32 %337, ptr %98, align 4, !tbaa !555
  %338 = call ptr @RE_findOrAddVlak(ptr noundef %1, i32 noundef %336) #22
  %339 = load i32, ptr %12, align 4, !tbaa !78
  %340 = call ptr @RE_findOrAddVert(ptr noundef %1, i32 noundef %339) #22
  store ptr %340, ptr %338, align 8, !tbaa !558
  %341 = load i32, ptr %11, align 4, !tbaa !78
  %342 = call ptr @RE_findOrAddVert(ptr noundef %1, i32 noundef %341) #22
  %343 = getelementptr inbounds %struct.VlakRen, ptr %338, i64 0, i32 1
  store ptr %342, ptr %343, align 8, !tbaa !560
  %344 = load i32, ptr %13, align 4, !tbaa !78
  %345 = call ptr @RE_findOrAddVert(ptr noundef %1, i32 noundef %344) #22
  %346 = getelementptr inbounds %struct.VlakRen, ptr %338, i64 0, i32 2
  store ptr %345, ptr %346, align 8, !tbaa !561
  %347 = load i32, ptr %14, align 4, !tbaa !78
  %348 = call ptr @RE_findOrAddVert(ptr noundef %1, i32 noundef %347) #22
  %349 = getelementptr inbounds %struct.VlakRen, ptr %338, i64 0, i32 3
  store ptr %348, ptr %349, align 8, !tbaa !562
  %350 = getelementptr inbounds %struct.VlakRen, ptr %338, i64 0, i32 8
  store i8 %334, ptr %350, align 2, !tbaa !565
  %351 = load i16, ptr %300, align 2, !tbaa !573
  %352 = trunc i16 %351 to i8
  %353 = getelementptr inbounds %struct.VlakRen, ptr %338, i64 0, i32 7
  store i8 %352, ptr %353, align 1, !tbaa !564
  %354 = getelementptr inbounds %struct.VlakRen, ptr %338, i64 0, i32 4
  %355 = load ptr, ptr %346, align 8, !tbaa !561
  %356 = load ptr, ptr %343, align 8, !tbaa !560
  %357 = load ptr, ptr %338, align 8, !tbaa !558
  %358 = call float @normal_quad_v3(ptr noundef nonnull %354, ptr noundef %348, ptr noundef %355, ptr noundef %356, ptr noundef %357) #22
  %359 = load i16, ptr %103, align 4, !tbaa !547
  %360 = sext i16 %359 to i64
  %361 = getelementptr inbounds ptr, ptr %47, i64 %360
  %362 = load ptr, ptr %361, align 8, !tbaa !47
  %363 = getelementptr inbounds %struct.VlakRen, ptr %338, i64 0, i32 5
  store ptr %362, ptr %363, align 8, !tbaa !563
  %364 = load i32, ptr %13, align 4, !tbaa !78
  store i32 %364, ptr %14, align 4, !tbaa !78
  %365 = add nsw i32 %364, 1
  store i32 %365, ptr %13, align 4, !tbaa !78
  %366 = load i32, ptr %11, align 4, !tbaa !78
  store i32 %366, ptr %12, align 4, !tbaa !78
  %367 = add nsw i32 %366, 1
  store i32 %367, ptr %11, align 4, !tbaa !78
  %368 = load i32, ptr %9, align 4, !tbaa !78
  %369 = add nsw i32 %368, 1
  store i32 %369, ptr %9, align 4, !tbaa !78
  %370 = load i32, ptr %238, align 8, !tbaa !550
  %371 = icmp slt i32 %369, %370
  br i1 %371, label %335, label %372, !llvm.loop !574

372:                                              ; preds = %335, %328
  %373 = add nuw nsw i32 %302, 1
  %374 = load i32, ptr %240, align 4, !tbaa !556
  %375 = icmp slt i32 %373, %374
  br i1 %375, label %301, label %376, !llvm.loop !575

376:                                              ; preds = %301, %372
  %377 = load ptr, ptr %290, align 8, !tbaa !572
  br label %378

378:                                              ; preds = %376, %294
  %379 = phi ptr [ %377, %376 ], [ %291, %294 ]
  %380 = icmp eq ptr %379, null
  br i1 %380, label %419, label %381

381:                                              ; preds = %378
  %382 = load i32, ptr %240, align 4, !tbaa !556
  %383 = add nsw i32 %382, -1
  %384 = load i16, ptr %226, align 2, !tbaa !569
  %385 = zext i16 %384 to i32
  %386 = lshr i32 %385, 1
  %387 = and i32 %386, 1
  %388 = add nsw i32 %383, %387
  %389 = icmp sgt i32 %388, 0
  br i1 %389, label %390, label %419

390:                                              ; preds = %381, %409
  %391 = phi i16 [ %410, %409 ], [ %384, %381 ]
  %392 = phi i32 [ %411, %409 ], [ %382, %381 ]
  %393 = phi i32 [ %414, %409 ], [ %385, %381 ]
  %394 = phi i32 [ %412, %409 ], [ 0, %381 ]
  %395 = load ptr, ptr %290, align 8, !tbaa !572
  %396 = lshr i32 %394, 5
  %397 = zext nneg i32 %396 to i64
  %398 = getelementptr inbounds i32, ptr %395, i64 %397
  %399 = load i32, ptr %398, align 4, !tbaa !78
  %400 = and i32 %394, 31
  %401 = shl nuw i32 1, %400
  %402 = and i32 %399, %401
  %403 = icmp eq i32 %402, 0
  br i1 %403, label %409, label %404

404:                                              ; preds = %390
  %405 = load i32, ptr %238, align 8, !tbaa !550
  %406 = and i32 %393, 1
  call fastcc void @split_v_renderfaces(ptr noundef %1, i32 noundef %295, i32 noundef %405, i32 noundef %394, i32 noundef %406) #23
  %407 = load i32, ptr %240, align 4, !tbaa !556
  %408 = load i16, ptr %226, align 2, !tbaa !569
  br label %409

409:                                              ; preds = %390, %404
  %410 = phi i16 [ %391, %390 ], [ %408, %404 ]
  %411 = phi i32 [ %392, %390 ], [ %407, %404 ]
  %412 = add nuw nsw i32 %394, 1
  %413 = add nsw i32 %411, -1
  %414 = zext i16 %410 to i32
  %415 = lshr i32 %414, 1
  %416 = and i32 %415, 1
  %417 = add nsw i32 %413, %416
  %418 = icmp slt i32 %412, %417
  br i1 %418, label %390, label %419, !llvm.loop !576

419:                                              ; preds = %409, %381, %378
  %420 = load i32, ptr %98, align 4, !tbaa !555
  %421 = icmp slt i32 %295, %420
  br i1 %421, label %425, label %422

422:                                              ; preds = %425, %419
  %423 = load i32, ptr %96, align 8, !tbaa !196
  %424 = icmp slt i32 %237, %423
  br i1 %424, label %443, label %450

425:                                              ; preds = %419, %425
  %426 = phi i32 [ %440, %425 ], [ %295, %419 ]
  %427 = call ptr @RE_findOrAddVlak(ptr noundef nonnull %1, i32 noundef %426) #22
  %428 = load ptr, ptr %427, align 8, !tbaa !558
  %429 = getelementptr inbounds %struct.VertRen, ptr %428, i64 0, i32 1
  %430 = getelementptr inbounds %struct.VlakRen, ptr %427, i64 0, i32 4
  call fastcc void @add_v3_v3(ptr noundef nonnull %429, ptr noundef nonnull %430) #23
  %431 = getelementptr inbounds %struct.VlakRen, ptr %427, i64 0, i32 2
  %432 = load ptr, ptr %431, align 8, !tbaa !561
  %433 = getelementptr inbounds %struct.VertRen, ptr %432, i64 0, i32 1
  call fastcc void @add_v3_v3(ptr noundef nonnull %433, ptr noundef nonnull %430) #23
  %434 = getelementptr inbounds %struct.VlakRen, ptr %427, i64 0, i32 1
  %435 = load ptr, ptr %434, align 8, !tbaa !560
  %436 = getelementptr inbounds %struct.VertRen, ptr %435, i64 0, i32 1
  call fastcc void @add_v3_v3(ptr noundef nonnull %436, ptr noundef nonnull %430) #23
  %437 = getelementptr inbounds %struct.VlakRen, ptr %427, i64 0, i32 3
  %438 = load ptr, ptr %437, align 8, !tbaa !562
  %439 = getelementptr inbounds %struct.VertRen, ptr %438, i64 0, i32 1
  call fastcc void @add_v3_v3(ptr noundef nonnull %439, ptr noundef nonnull %430) #23
  %440 = add nsw i32 %426, 1
  %441 = load i32, ptr %98, align 4, !tbaa !555
  %442 = icmp slt i32 %440, %441
  br i1 %442, label %425, label %422, !llvm.loop !577

443:                                              ; preds = %422, %443
  %444 = phi i32 [ %447, %443 ], [ %237, %422 ]
  %445 = call ptr @RE_findOrAddVert(ptr noundef nonnull %1, i32 noundef %444) #22
  %446 = getelementptr inbounds %struct.VertRen, ptr %445, i64 0, i32 1
  call fastcc void @normalize_v3(ptr noundef nonnull %446) #23
  %447 = add nsw i32 %444, 1
  %448 = load i32, ptr %96, align 8, !tbaa !196
  %449 = icmp slt i32 %447, %448
  br i1 %449, label %443, label %450, !llvm.loop !578

450:                                              ; preds = %443, %422, %288
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %14) #24
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %13) #24
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %12) #24
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %11) #24
  br label %451

451:                                              ; preds = %108, %136, %224, %230, %450, %100
  %452 = phi ptr [ %102, %100 ], [ %234, %230 ], [ %289, %450 ], [ %137, %224 ], [ %137, %136 ], [ %102, %108 ]
  %453 = load ptr, ptr %101, align 8, !tbaa !579
  %454 = icmp eq ptr %453, null
  br i1 %454, label %455, label %100, !llvm.loop !580

455:                                              ; preds = %451, %81
  call void @BKE_displist_free(ptr noundef nonnull %5) #22
  %456 = load ptr, ptr @MEM_freeN, align 8, !tbaa !47
  call void %456(ptr noundef %47) #22
  br label %457

457:                                              ; preds = %29, %25, %21, %455
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %9) #24
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %8) #24
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %7) #24
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %6) #24
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %5) #24
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #24
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @init_render_surf(ptr noundef %0, ptr noundef %1, i32 noundef %2) unnamed_addr #4 !PGOFuncName !581 {
  %4 = alloca %struct.ListBase, align 8
  %5 = alloca [4 x [4 x float]], align 16
  %6 = alloca ptr, align 8
  %7 = getelementptr inbounds %struct.ObjectRen, ptr %1, i64 0, i32 2
  %8 = load ptr, ptr %7, align 8, !tbaa !232
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %4) #24
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %4, i8 0, i64 16, i1 false)
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %5) #24
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %6) #24
  store ptr null, ptr %6, align 8, !tbaa !47
  %9 = getelementptr inbounds %struct.Object, ptr %8, i64 0, i32 19
  %10 = load ptr, ptr %9, align 8, !tbaa !309
  %11 = getelementptr inbounds %struct.Curve, ptr %10, i64 0, i32 3
  %12 = load ptr, ptr %11, align 8, !tbaa !545
  %13 = icmp eq ptr %12, null
  br i1 %13, label %102, label %14

14:                                               ; preds = %3
  %15 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 32
  %16 = getelementptr inbounds %struct.Object, ptr %8, i64 0, i32 47
  call void @mul_m4_m4m4(ptr noundef nonnull %5, ptr noundef nonnull %15, ptr noundef nonnull %16) #22
  %17 = getelementptr inbounds %struct.Object, ptr %8, i64 0, i32 50
  %18 = call zeroext i8 @invert_m4_m4(ptr noundef nonnull %17, ptr noundef nonnull %5) #22
  %19 = getelementptr inbounds %struct.Object, ptr %8, i64 0, i32 31
  %20 = load i32, ptr %19, align 8, !tbaa !398
  %21 = add i32 %20, 1
  %22 = load ptr, ptr @MEM_callocN, align 8, !tbaa !47
  %23 = sext i32 %21 to i64
  %24 = shl nsw i64 %23, 3
  %25 = call ptr %22(i64 noundef %24, ptr noundef nonnull @.str.19) #22
  %26 = icmp slt i32 %20, 0
  br i1 %26, label %42, label %27

27:                                               ; preds = %14
  %28 = zext i32 %21 to i64
  br label %29

29:                                               ; preds = %27, %29
  %30 = phi i64 [ 0, %27 ], [ %32, %29 ]
  %31 = phi i8 [ 0, %27 ], [ %40, %29 ]
  %32 = add nuw nsw i64 %30, 1
  %33 = trunc i64 %32 to i16
  %34 = call fastcc ptr @give_render_material(ptr noundef %0, ptr noundef %8, i16 noundef signext %33) #23
  %35 = getelementptr inbounds ptr, ptr %25, i64 %30
  store ptr %34, ptr %35, align 8, !tbaa !47
  %36 = getelementptr inbounds %struct.Material, ptr %34, i64 0, i32 90
  %37 = load i16, ptr %36, align 4, !tbaa !265
  %38 = and i16 %37, 1
  %39 = icmp eq i16 %38, 0
  %40 = select i1 %39, i8 %31, i8 1
  %41 = icmp eq i64 %32, %28
  br i1 %41, label %42, label %29, !llvm.loop !582

42:                                               ; preds = %29, %14
  %43 = phi i8 [ 0, %14 ], [ %40, %29 ]
  %44 = getelementptr inbounds %struct.Object, ptr %8, i64 0, i32 9
  %45 = load ptr, ptr %44, align 8, !tbaa !583
  %46 = icmp eq ptr %45, null
  br i1 %46, label %52, label %47

47:                                               ; preds = %42
  %48 = getelementptr inbounds %struct.Object, ptr %45, i64 0, i32 3
  %49 = load i16, ptr %48, align 8, !tbaa !147
  %50 = icmp eq i16 %49, 22
  %51 = select i1 %50, i8 1, i8 %43
  br label %52

52:                                               ; preds = %47, %42
  %53 = phi i8 [ %43, %42 ], [ %51, %47 ]
  %54 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 44
  %55 = load ptr, ptr %54, align 8, !tbaa !48
  call void @BKE_displist_make_surf(ptr noundef %55, ptr noundef nonnull %8, ptr noundef nonnull %4, ptr noundef nonnull %6, i8 noundef zeroext 1, i8 noundef zeroext 0, i8 noundef zeroext 1) #22
  %56 = load ptr, ptr %6, align 8, !tbaa !47
  %57 = icmp eq ptr %56, null
  %58 = icmp eq i8 %53, 0
  br i1 %57, label %75, label %59

59:                                               ; preds = %52
  br i1 %58, label %69, label %60

60:                                               ; preds = %59
  %61 = call fastcc ptr @get_object_orco(ptr noundef nonnull %0, ptr noundef nonnull %8) #23
  %62 = icmp eq ptr %61, null
  br i1 %62, label %63, label %69

63:                                               ; preds = %60
  %64 = load ptr, ptr %54, align 8, !tbaa !48
  %65 = load ptr, ptr %6, align 8, !tbaa !47
  %66 = call ptr @BKE_displist_make_orco(ptr noundef %64, ptr noundef nonnull %8, ptr noundef %65, i8 noundef zeroext 1, i8 noundef zeroext 1) #22
  %67 = icmp eq ptr %66, null
  br i1 %67, label %69, label %68

68:                                               ; preds = %63
  call fastcc void @set_object_orco(ptr noundef nonnull %0, ptr noundef nonnull %8, ptr noundef nonnull %66) #23
  br label %69

69:                                               ; preds = %60, %68, %63, %59
  %70 = phi ptr [ %61, %60 ], [ %66, %68 ], [ null, %63 ], [ null, %59 ]
  %71 = load ptr, ptr %6, align 8, !tbaa !47
  call fastcc void @init_render_dm(ptr noundef %71, ptr noundef nonnull %0, ptr noundef %1, i32 noundef %2, ptr noundef %70, ptr noundef nonnull %5) #23
  %72 = load ptr, ptr %6, align 8, !tbaa !47
  %73 = getelementptr inbounds %struct.DerivedMesh, ptr %72, i64 0, i32 95
  %74 = load ptr, ptr %73, align 8, !tbaa !281
  call void %74(ptr noundef %72) #22
  br label %100

75:                                               ; preds = %52
  br i1 %58, label %81, label %76

76:                                               ; preds = %75
  %77 = call fastcc ptr @get_object_orco(ptr noundef nonnull %0, ptr noundef nonnull %8) #23
  %78 = icmp eq ptr %77, null
  br i1 %78, label %79, label %81

79:                                               ; preds = %76
  %80 = call ptr @BKE_curve_surf_make_orco(ptr noundef nonnull %8) #22
  call fastcc void @set_object_orco(ptr noundef nonnull %0, ptr noundef nonnull %8, ptr noundef %80) #23
  br label %81

81:                                               ; preds = %76, %79, %75
  %82 = phi ptr [ %77, %76 ], [ %80, %79 ], [ null, %75 ]
  %83 = load ptr, ptr %4, align 8, !tbaa !47
  %84 = icmp eq ptr %83, null
  br i1 %84, label %100, label %85

85:                                               ; preds = %81, %96
  %86 = phi ptr [ %98, %96 ], [ %83, %81 ]
  %87 = phi ptr [ %97, %96 ], [ %82, %81 ]
  %88 = getelementptr inbounds %struct.DispList, ptr %86, i64 0, i32 2
  %89 = load i16, ptr %88, align 8, !tbaa !549
  %90 = icmp eq i16 %89, 2
  br i1 %90, label %91, label %96

91:                                               ; preds = %85
  %92 = call fastcc i32 @dl_surf_to_renderdata(ptr noundef %1, ptr noundef nonnull %86, ptr noundef %25, ptr noundef %87, ptr noundef nonnull %5) #23
  %93 = mul nsw i32 %92, 3
  %94 = sext i32 %93 to i64
  %95 = getelementptr inbounds float, ptr %87, i64 %94
  br label %96

96:                                               ; preds = %85, %91
  %97 = phi ptr [ %95, %91 ], [ %87, %85 ]
  %98 = load ptr, ptr %86, align 8, !tbaa !47
  %99 = icmp eq ptr %98, null
  br i1 %99, label %100, label %85, !llvm.loop !584

100:                                              ; preds = %96, %81, %69
  call void @BKE_displist_free(ptr noundef nonnull %4) #22
  %101 = load ptr, ptr @MEM_freeN, align 8, !tbaa !47
  call void %101(ptr noundef %25) #22
  br label %102

102:                                              ; preds = %3, %100
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %6) #24
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %5) #24
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %4) #24
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @init_render_mesh(ptr noundef %0, ptr noundef %1, i32 noundef %2) unnamed_addr #4 !PGOFuncName !585 {
  %4 = alloca [3 x [3 x float]], align 16
  %5 = alloca [4 x [4 x float]], align 16
  %6 = alloca [4 x i32], align 16
  %7 = alloca ptr, align 8
  %8 = alloca i32, align 4
  %9 = getelementptr inbounds %struct.ObjectRen, ptr %1, i64 0, i32 2
  %10 = load ptr, ptr %9, align 8, !tbaa !232
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %4) #24
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %5) #24
  %11 = getelementptr inbounds %struct.Object, ptr %10, i64 0, i32 19
  %12 = load ptr, ptr %11, align 8, !tbaa !309
  %13 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 32
  %14 = getelementptr inbounds %struct.Object, ptr %10, i64 0, i32 47
  call void @mul_m4_m4m4(ptr noundef nonnull %5, ptr noundef nonnull %13, ptr noundef nonnull %14) #22
  %15 = getelementptr inbounds %struct.Object, ptr %10, i64 0, i32 50
  %16 = call zeroext i8 @invert_m4_m4(ptr noundef nonnull %15, ptr noundef nonnull %5) #22
  call void @copy_m3_m4(ptr noundef nonnull %4, ptr noundef nonnull %15) #22
  %17 = call zeroext i8 @is_negative_m4(ptr noundef nonnull %5) #22
  %18 = getelementptr inbounds %struct.Mesh, ptr %12, i64 0, i32 26
  %19 = load i32, ptr %18, align 8, !tbaa !586
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %709, label %21

21:                                               ; preds = %3
  %22 = getelementptr inbounds %struct.Object, ptr %10, i64 0, i32 31
  %23 = load i32, ptr %22, align 8, !tbaa !398
  %24 = icmp slt i32 %23, 1
  br i1 %24, label %68, label %25

25:                                               ; preds = %21
  %26 = getelementptr inbounds %struct.Mesh, ptr %12, i64 0, i32 8
  br label %27

27:                                               ; preds = %25, %61
  %28 = phi i8 [ 0, %25 ], [ %64, %61 ]
  %29 = phi i8 [ 0, %25 ], [ %42, %61 ]
  %30 = phi i8 [ 0, %25 ], [ %63, %61 ]
  %31 = phi i8 [ 0, %25 ], [ %62, %61 ]
  %32 = phi i32 [ 1, %25 ], [ %65, %61 ]
  %33 = trunc i32 %32 to i16
  %34 = call fastcc ptr @give_render_material(ptr noundef %0, ptr noundef nonnull %10, i16 noundef signext %33) #23
  %35 = getelementptr inbounds %struct.Material, ptr %34, i64 0, i32 90
  %36 = load i16, ptr %35, align 4, !tbaa !265
  %37 = and i16 %36, 16385
  %38 = icmp eq i16 %37, 0
  %39 = select i1 %38, i8 %28, i8 1
  %40 = and i16 %36, 16384
  %41 = icmp eq i16 %40, 0
  %42 = select i1 %41, i8 %29, i8 1
  %43 = getelementptr inbounds %struct.Material, ptr %34, i64 0, i32 52
  %44 = load i32, ptr %43, align 8, !tbaa !512
  %45 = and i32 %44, 67108864
  %46 = icmp eq i32 %45, 0
  br i1 %46, label %51, label %47

47:                                               ; preds = %27
  %48 = load ptr, ptr %26, align 8, !tbaa !588
  %49 = icmp eq ptr %48, null
  %50 = select i1 %49, i8 1, i8 %39
  br label %51

51:                                               ; preds = %47, %27
  %52 = phi i8 [ %31, %27 ], [ 1, %47 ]
  %53 = phi i8 [ %39, %27 ], [ %50, %47 ]
  %54 = and i32 %44, 134217728
  %55 = icmp eq i32 %54, 0
  br i1 %55, label %61, label %56

56:                                               ; preds = %51
  %57 = load ptr, ptr %26, align 8, !tbaa !588
  %58 = icmp eq ptr %57, null
  %59 = select i1 %58, i8 1, i8 %52
  %60 = select i1 %58, i8 1, i8 %53
  br label %61

61:                                               ; preds = %56, %51
  %62 = phi i8 [ %59, %56 ], [ %52, %51 ]
  %63 = phi i8 [ 1, %56 ], [ %30, %51 ]
  %64 = phi i8 [ %60, %56 ], [ %53, %51 ]
  %65 = add nuw nsw i32 %32, 1
  %66 = load i32, ptr %22, align 8, !tbaa !398
  %67 = icmp slt i32 %32, %66
  br i1 %67, label %27, label %68, !llvm.loop !589

68:                                               ; preds = %61, %21
  %69 = phi i8 [ 0, %21 ], [ %62, %61 ]
  %70 = phi i8 [ 0, %21 ], [ %63, %61 ]
  %71 = phi i8 [ 0, %21 ], [ %42, %61 ]
  %72 = phi i8 [ 0, %21 ], [ %64, %61 ]
  %73 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 4
  %74 = load i16, ptr %73, align 8, !tbaa !257
  %75 = and i16 %74, 16
  %76 = icmp eq i16 %75, 0
  br i1 %76, label %83, label %77

77:                                               ; preds = %68
  %78 = getelementptr inbounds %struct.Mesh, ptr %12, i64 0, i32 8
  %79 = load ptr, ptr %78, align 8, !tbaa !588
  %80 = icmp eq ptr %79, null
  %81 = select i1 %80, i8 1, i8 %69
  %82 = select i1 %80, i8 1, i8 %72
  br label %83

83:                                               ; preds = %77, %68
  %84 = phi i8 [ %81, %77 ], [ %69, %68 ]
  %85 = phi i8 [ 1, %77 ], [ %70, %68 ]
  %86 = phi i8 [ %82, %77 ], [ %72, %68 ]
  %87 = call fastcc signext i16 @test_for_displace(ptr noundef nonnull %0, ptr noundef nonnull %10) #23, !range !590
  %88 = getelementptr inbounds %struct.Mesh, ptr %12, i64 0, i32 38
  %89 = load i16, ptr %88, align 2, !tbaa !591
  %90 = and i16 %89, 32
  %91 = icmp ne i16 %90, 0
  %92 = icmp eq i16 %87, 0
  %93 = and i1 %92, %91
  %94 = or disjoint i16 %90, %87
  %95 = icmp ne i16 %94, 0
  br i1 %93, label %105, label %96

96:                                               ; preds = %83
  %97 = load i16, ptr %73, align 8, !tbaa !257
  %98 = and i16 %97, 64
  %99 = icmp eq i16 %98, 0
  br i1 %99, label %105, label %100

100:                                              ; preds = %96
  %101 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 45, i32 75
  %102 = load i16, ptr %101, align 2, !tbaa !592
  %103 = and i16 %102, 64
  %104 = icmp ne i16 %103, 0
  br label %105

105:                                              ; preds = %96, %100, %83
  %106 = phi i1 [ true, %83 ], [ false, %96 ], [ %104, %100 ]
  %107 = load i64, ptr @CD_MASK_BAREMESH, align 8, !tbaa !280
  %108 = icmp eq i32 %2, 0
  %109 = or i1 %108, %95
  %110 = icmp ne i8 %86, 0
  %111 = select i1 %109, i1 %110, i1 false
  %112 = select i1 %111, i64 16480, i64 96
  %113 = or i64 %107, %112
  %114 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 45, i32 46
  %115 = load i32, ptr %114, align 4, !tbaa !104
  %116 = and i32 %115, 524288
  %117 = icmp eq i32 %116, 0
  %118 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 44
  %119 = load ptr, ptr %118, align 8, !tbaa !48
  br i1 %117, label %122, label %120

120:                                              ; preds = %105
  %121 = call ptr @mesh_create_derived_view(ptr noundef %119, ptr noundef nonnull %10, i64 noundef %113) #22
  br label %124

122:                                              ; preds = %105
  %123 = call ptr @mesh_create_derived_render(ptr noundef %119, ptr noundef nonnull %10, i64 noundef %113) #22
  br label %124

124:                                              ; preds = %122, %120
  %125 = phi ptr [ %121, %120 ], [ %123, %122 ]
  %126 = icmp eq ptr %125, null
  br i1 %126, label %709, label %127

127:                                              ; preds = %124
  %128 = and i64 %113, 16384
  %129 = icmp eq i64 %128, 0
  br i1 %129, label %141, label %130

130:                                              ; preds = %127
  %131 = call fastcc ptr @get_object_orco(ptr noundef nonnull %0, ptr noundef nonnull %10) #23
  %132 = icmp eq ptr %131, null
  br i1 %132, label %133, label %141

133:                                              ; preds = %130
  %134 = getelementptr inbounds %struct.DerivedMesh, ptr %125, i64 0, i32 50
  %135 = load ptr, ptr %134, align 8, !tbaa !593
  %136 = call ptr %135(ptr noundef nonnull %125, i32 noundef 14) #22
  %137 = icmp eq ptr %136, null
  br i1 %137, label %141, label %138

138:                                              ; preds = %133
  %139 = load ptr, ptr @MEM_dupallocN, align 8, !tbaa !47
  %140 = call ptr %139(ptr noundef nonnull %136) #22
  call fastcc void @set_object_orco(ptr noundef nonnull %0, ptr noundef nonnull %10, ptr noundef %140) #23
  br label %141

141:                                              ; preds = %130, %138, %133, %127
  %142 = phi ptr [ %131, %130 ], [ %140, %138 ], [ null, %133 ], [ null, %127 ]
  %143 = getelementptr inbounds %struct.DerivedMesh, ptr %125, i64 0, i32 31
  %144 = load ptr, ptr %143, align 8, !tbaa !594
  %145 = call ptr %144(ptr noundef nonnull %125) #22
  %146 = getelementptr inbounds %struct.DerivedMesh, ptr %125, i64 0, i32 23
  %147 = load ptr, ptr %146, align 8, !tbaa !595
  %148 = call i32 %147(ptr noundef nonnull %125) #22
  br i1 %93, label %149, label %159

149:                                              ; preds = %141
  %150 = load i32, ptr %18, align 8, !tbaa !586
  %151 = icmp eq i32 %150, %148
  br i1 %151, label %152, label %159

152:                                              ; preds = %149
  %153 = getelementptr inbounds %struct.Mesh, ptr %12, i64 0, i32 28
  %154 = load i32, ptr %153, align 8, !tbaa !596
  %155 = getelementptr inbounds %struct.DerivedMesh, ptr %125, i64 0, i32 25
  %156 = load ptr, ptr %155, align 8, !tbaa !483
  %157 = call i32 %156(ptr noundef nonnull %125) #22
  %158 = icmp ne i32 %154, %157
  br label %159

159:                                              ; preds = %152, %149, %141
  %160 = phi i1 [ true, %149 ], [ true, %141 ], [ %158, %152 ]
  %161 = call fastcc ptr @give_render_material(ptr noundef nonnull %0, ptr noundef nonnull %10, i16 noundef signext 1) #23
  %162 = getelementptr inbounds %struct.Material, ptr %161, i64 0, i32 2
  %163 = load i16, ptr %162, align 8, !tbaa !294
  %164 = icmp eq i16 %163, 1
  br i1 %164, label %165, label %166

165:                                              ; preds = %159
  call fastcc void @make_render_halos(ptr noundef nonnull %0, ptr noundef %1, i32 noundef %148, ptr noundef %145, ptr noundef nonnull %161, ptr noundef %142) #23
  br label %683

166:                                              ; preds = %159
  br i1 %106, label %167, label %171

167:                                              ; preds = %166
  %168 = getelementptr inbounds %struct.DerivedMesh, ptr %125, i64 0, i32 50
  %169 = load ptr, ptr %168, align 8, !tbaa !593
  %170 = call ptr %169(ptr noundef nonnull %125, i32 noundef 7) #22
  br label %171

171:                                              ; preds = %167, %166
  %172 = phi ptr [ %170, %167 ], [ null, %166 ]
  %173 = icmp sgt i32 %148, 0
  br i1 %173, label %174, label %207

174:                                              ; preds = %171
  %175 = getelementptr inbounds %struct.ObjectRen, ptr %1, i64 0, i32 10
  %176 = icmp eq ptr %172, null
  %177 = zext nneg i32 %148 to i64
  br label %178

178:                                              ; preds = %174, %203
  %179 = phi i64 [ 0, %174 ], [ %204, %203 ]
  %180 = phi ptr [ %145, %174 ], [ %205, %203 ]
  %181 = phi ptr [ %142, %174 ], [ %194, %203 ]
  %182 = load i32, ptr %175, align 8, !tbaa !196
  %183 = add nsw i32 %182, 1
  store i32 %183, ptr %175, align 8, !tbaa !196
  %184 = call ptr @RE_findOrAddVert(ptr noundef %1, i32 noundef %182) #22
  call fastcc void @copy_v3_v3(ptr noundef %184, ptr noundef %180) #23
  br i1 %93, label %188, label %185

185:                                              ; preds = %178
  %186 = getelementptr inbounds %struct.VertRen, ptr %184, i64 0, i32 1
  %187 = getelementptr inbounds %struct.MVert, ptr %180, i64 0, i32 1
  call fastcc void @normal_short_to_float_v3(ptr noundef nonnull %186, ptr noundef nonnull %187) #23
  call void @mul_m4_v3(ptr noundef nonnull %5, ptr noundef %184) #22
  call void @mul_transposed_m3_v3(ptr noundef nonnull %4, ptr noundef nonnull %186) #22
  call fastcc void @normalize_v3(ptr noundef nonnull %186) #23
  call fastcc void @negate_v3(ptr noundef nonnull %186) #23
  br label %188

188:                                              ; preds = %185, %178
  %189 = icmp eq ptr %181, null
  br i1 %189, label %193, label %190

190:                                              ; preds = %188
  %191 = getelementptr inbounds %struct.VertRen, ptr %184, i64 0, i32 2
  store ptr %181, ptr %191, align 8, !tbaa !552
  %192 = getelementptr inbounds float, ptr %181, i64 3
  br label %193

193:                                              ; preds = %190, %188
  %194 = phi ptr [ %192, %190 ], [ null, %188 ]
  br i1 %106, label %195, label %203

195:                                              ; preds = %193
  %196 = call ptr @RE_vertren_get_origindex(ptr noundef nonnull %1, ptr noundef %184, i32 noundef 1) #22
  %197 = trunc i64 %179 to i32
  br i1 %176, label %201, label %198

198:                                              ; preds = %195
  %199 = getelementptr inbounds i32, ptr %172, i64 %179
  %200 = load i32, ptr %199, align 4, !tbaa !78
  br label %201

201:                                              ; preds = %195, %198
  %202 = phi i32 [ %200, %198 ], [ %197, %195 ]
  store i32 %202, ptr %196, align 4, !tbaa !78
  br label %203

203:                                              ; preds = %193, %201
  %204 = add nuw nsw i64 %179, 1
  %205 = getelementptr inbounds %struct.MVert, ptr %180, i64 1
  %206 = icmp eq i64 %204, %177
  br i1 %206, label %207, label %178, !llvm.loop !597

207:                                              ; preds = %203, %171
  br i1 %109, label %208, label %706

208:                                              ; preds = %207
  %209 = getelementptr inbounds %struct.DerivedMesh, ptr %125, i64 0, i32 2
  call void @RE_set_customdata_names(ptr noundef %1, ptr noundef nonnull %209) #22
  %210 = icmp eq i8 %85, 0
  br i1 %210, label %215, label %211

211:                                              ; preds = %208
  %212 = call i32 @CustomData_get_layer_index(ptr noundef nonnull %209, i32 noundef 18) #22
  %213 = icmp eq i32 %212, -1
  br i1 %213, label %214, label %215

214:                                              ; preds = %211
  call void @DM_add_tangent_layer(ptr noundef %125) #22
  br label %215

215:                                              ; preds = %214, %211, %208
  %216 = getelementptr inbounds %struct.ObjectRen, ptr %1, i64 0, i32 10
  %217 = load i32, ptr %216, align 8, !tbaa !196
  %218 = sub nsw i32 %217, %148
  %219 = load i32, ptr %22, align 8, !tbaa !398
  %220 = icmp sgt i32 %219, -1
  br i1 %220, label %221, label %557

221:                                              ; preds = %215
  %222 = getelementptr inbounds %struct.DerivedMesh, ptr %125, i64 0, i32 24
  %223 = getelementptr inbounds %struct.DerivedMesh, ptr %125, i64 0, i32 25
  %224 = getelementptr inbounds %struct.DerivedMesh, ptr %125, i64 0, i32 33
  %225 = getelementptr inbounds %struct.DerivedMesh, ptr %125, i64 0, i32 52
  %226 = icmp eq i8 %17, 0
  %227 = or i1 %226, %93
  %228 = select i1 %227, i32 0, i32 2
  %229 = getelementptr inbounds i32, ptr %6, i64 1
  %230 = getelementptr inbounds i32, ptr %6, i64 2
  %231 = select i1 %227, i32 2, i32 0
  %232 = getelementptr inbounds i32, ptr %6, i64 3
  %233 = getelementptr inbounds %struct.ObjectRen, ptr %1, i64 0, i32 11
  %234 = getelementptr inbounds %struct.Mesh, ptr %12, i64 0, i32 12
  %235 = getelementptr inbounds %struct.Mesh, ptr %12, i64 0, i32 15
  %236 = getelementptr inbounds %struct.DerivedMesh, ptr %125, i64 0, i32 2, i32 2
  br label %237

237:                                              ; preds = %221, %552
  %238 = phi ptr [ null, %221 ], [ %554, %552 ]
  %239 = phi i32 [ 0, %221 ], [ %241, %552 ]
  %240 = phi ptr [ null, %221 ], [ %553, %552 ]
  %241 = add nuw nsw i32 %239, 1
  %242 = trunc i32 %241 to i16
  %243 = call fastcc ptr @give_render_material(ptr noundef %0, ptr noundef nonnull %10, i16 noundef signext %242) #23
  %244 = getelementptr inbounds %struct.Material, ptr %243, i64 0, i32 21
  %245 = load float, ptr %244, align 8, !tbaa !598
  %246 = fcmp oeq float %245, 0.000000e+00
  br i1 %246, label %247, label %280

247:                                              ; preds = %237
  %248 = getelementptr inbounds %struct.Material, ptr %243, i64 0, i32 19
  %249 = load float, ptr %248, align 8, !tbaa !599
  %250 = fcmp oeq float %249, 0.000000e+00
  br i1 %250, label %251, label %280

251:                                              ; preds = %247
  %252 = getelementptr inbounds %struct.Material, ptr %243, i64 0, i32 33
  %253 = load float, ptr %252, align 8, !tbaa !600
  %254 = fcmp oeq float %253, 0.000000e+00
  br i1 %254, label %255, label %280

255:                                              ; preds = %251
  %256 = getelementptr inbounds %struct.Material, ptr %243, i64 0, i32 51
  %257 = load i32, ptr %256, align 4, !tbaa !167
  %258 = and i32 %257, 458752
  %259 = icmp eq i32 %258, 65536
  br i1 %259, label %260, label %280

260:                                              ; preds = %255, %276
  %261 = phi i64 [ %278, %276 ], [ 0, %255 ]
  %262 = phi i32 [ %277, %276 ], [ 0, %255 ]
  %263 = getelementptr inbounds %struct.Material, ptr %243, i64 0, i32 102, i64 %261
  %264 = load ptr, ptr %263, align 8, !tbaa !47
  %265 = icmp eq ptr %264, null
  br i1 %265, label %276, label %266

266:                                              ; preds = %260
  %267 = getelementptr inbounds %struct.MTex, ptr %264, i64 0, i32 5
  %268 = load ptr, ptr %267, align 8, !tbaa !79
  %269 = icmp eq ptr %268, null
  br i1 %269, label %276, label %270

270:                                              ; preds = %266
  %271 = getelementptr inbounds %struct.MTex, ptr %264, i64 0, i32 1
  %272 = load i16, ptr %271, align 2, !tbaa !379
  %273 = and i16 %272, 128
  %274 = icmp eq i16 %273, 0
  %275 = select i1 %274, i32 %262, i32 1
  br label %276

276:                                              ; preds = %270, %260, %266
  %277 = phi i32 [ %262, %266 ], [ %262, %260 ], [ %275, %270 ]
  %278 = add nuw nsw i64 %261, 1
  %279 = icmp eq i64 %278, 18
  br i1 %279, label %280, label %260, !llvm.loop !601

280:                                              ; preds = %276, %255, %251, %247, %237
  %281 = phi i32 [ 1, %255 ], [ 1, %251 ], [ 1, %247 ], [ 1, %237 ], [ %277, %276 ]
  %282 = getelementptr inbounds %struct.Material, ptr %243, i64 0, i32 2
  %283 = load i16, ptr %282, align 8, !tbaa !294
  %284 = icmp eq i16 %283, 3
  br i1 %284, label %285, label %291

285:                                              ; preds = %280
  %286 = load ptr, ptr %222, align 8, !tbaa !602
  %287 = call i32 %286(ptr noundef %125) #22
  %288 = icmp ne i32 %287, 0
  %289 = icmp eq i32 %281, 0
  %290 = select i1 %288, i1 true, i1 %289
  br i1 %290, label %552, label %293

291:                                              ; preds = %280
  %292 = icmp eq i32 %281, 0
  br i1 %292, label %552, label %293

293:                                              ; preds = %285, %291
  %294 = load ptr, ptr %223, align 8, !tbaa !483
  %295 = call i32 %294(ptr noundef %125) #22
  %296 = load ptr, ptr %224, align 8, !tbaa !603
  %297 = call ptr %296(ptr noundef %125) #22
  %298 = icmp eq ptr %238, null
  %299 = and i1 %93, %298
  br i1 %299, label %300, label %309

300:                                              ; preds = %293
  %301 = load ptr, ptr %225, align 8, !tbaa !484
  %302 = call ptr %301(ptr noundef nonnull %125, i32 noundef 40) #22
  %303 = icmp eq ptr %302, null
  br i1 %303, label %309, label %304

304:                                              ; preds = %300
  %305 = load ptr, ptr @MEM_mallocN, align 8, !tbaa !47
  %306 = sext i32 %295 to i64
  %307 = mul nsw i64 %306, 24
  %308 = call ptr %305(i64 noundef %307, ptr noundef nonnull @__func__.init_render_mesh) #22
  br label %309

309:                                              ; preds = %304, %300, %293
  %310 = phi ptr [ %308, %304 ], [ %240, %300 ], [ %240, %293 ]
  %311 = phi ptr [ %308, %304 ], [ null, %300 ], [ %238, %293 ]
  %312 = icmp sgt i32 %295, 0
  br i1 %312, label %313, label %552

313:                                              ; preds = %309
  %314 = icmp eq ptr %311, null
  %315 = zext nneg i32 %295 to i64
  br label %316

316:                                              ; preds = %313, %547
  %317 = phi i64 [ 0, %313 ], [ %549, %547 ]
  %318 = phi ptr [ %297, %313 ], [ %550, %547 ]
  %319 = phi ptr [ %310, %313 ], [ %548, %547 ]
  %320 = getelementptr inbounds %struct.MFace, ptr %318, i64 0, i32 4
  %321 = load i16, ptr %320, align 4, !tbaa !604
  %322 = sext i16 %321 to i32
  %323 = icmp eq i32 %239, %322
  br i1 %323, label %324, label %547

324:                                              ; preds = %316
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %6) #24
  store i32 %228, ptr %6, align 16, !tbaa !78
  store i32 1, ptr %229, align 4, !tbaa !78
  store i32 %231, ptr %230, align 8, !tbaa !78
  store i32 3, ptr %232, align 4, !tbaa !78
  %325 = getelementptr inbounds %struct.MFace, ptr %318, i64 0, i32 2
  %326 = select i1 %227, ptr %318, ptr %325
  %327 = load i32, ptr %326, align 4, !tbaa !78
  %328 = getelementptr inbounds %struct.MFace, ptr %318, i64 0, i32 1
  %329 = load i32, ptr %328, align 4, !tbaa !606
  %330 = select i1 %227, ptr %325, ptr %318
  %331 = load i32, ptr %330, align 4, !tbaa !78
  %332 = getelementptr inbounds %struct.MFace, ptr %318, i64 0, i32 3
  %333 = load i32, ptr %332, align 4, !tbaa !607
  %334 = getelementptr inbounds %struct.MFace, ptr %318, i64 0, i32 6
  %335 = load i8, ptr %334, align 1, !tbaa !608
  %336 = and i8 %335, 1
  %337 = load i32, ptr %233, align 4, !tbaa !555
  %338 = add nsw i32 %337, 1
  store i32 %338, ptr %233, align 4, !tbaa !555
  %339 = call ptr @RE_findOrAddVlak(ptr noundef %1, i32 noundef %337) #22
  %340 = add nsw i32 %327, %218
  %341 = call ptr @RE_findOrAddVert(ptr noundef %1, i32 noundef %340) #22
  store ptr %341, ptr %339, align 8, !tbaa !558
  %342 = add nsw i32 %329, %218
  %343 = call ptr @RE_findOrAddVert(ptr noundef %1, i32 noundef %342) #22
  %344 = getelementptr inbounds %struct.VlakRen, ptr %339, i64 0, i32 1
  store ptr %343, ptr %344, align 8, !tbaa !560
  %345 = add nsw i32 %331, %218
  %346 = call ptr @RE_findOrAddVert(ptr noundef %1, i32 noundef %345) #22
  %347 = getelementptr inbounds %struct.VlakRen, ptr %339, i64 0, i32 2
  store ptr %346, ptr %347, align 8, !tbaa !561
  %348 = icmp eq i32 %333, 0
  br i1 %348, label %353, label %349

349:                                              ; preds = %324
  %350 = add nsw i32 %333, %218
  %351 = call ptr @RE_findOrAddVert(ptr noundef nonnull %1, i32 noundef %350) #22
  %352 = getelementptr inbounds %struct.VlakRen, ptr %339, i64 0, i32 3
  store ptr %351, ptr %352, align 8
  br i1 %160, label %399, label %359

353:                                              ; preds = %324
  %354 = getelementptr inbounds %struct.VlakRen, ptr %339, i64 0, i32 3
  store ptr null, ptr %354, align 8
  br i1 %160, label %407, label %355

355:                                              ; preds = %353
  %356 = load ptr, ptr %234, align 8, !tbaa !609
  %357 = getelementptr inbounds %struct.MFace, ptr %356, i64 %317
  %358 = load ptr, ptr %235, align 8, !tbaa !610
  br label %382

359:                                              ; preds = %349
  %360 = load ptr, ptr %234, align 8, !tbaa !609
  %361 = getelementptr inbounds %struct.MFace, ptr %360, i64 %317
  %362 = load ptr, ptr %235, align 8, !tbaa !610
  %363 = icmp eq ptr %351, null
  br i1 %363, label %382, label %364

364:                                              ; preds = %359
  %365 = getelementptr inbounds %struct.VlakRen, ptr %339, i64 0, i32 4
  %366 = getelementptr inbounds %struct.MFace, ptr %360, i64 %317, i32 3
  %367 = load i32, ptr %366, align 4, !tbaa !607
  %368 = zext i32 %367 to i64
  %369 = getelementptr inbounds %struct.MVert, ptr %362, i64 %368
  %370 = getelementptr inbounds %struct.MFace, ptr %360, i64 %317, i32 2
  %371 = load i32, ptr %370, align 4, !tbaa !611
  %372 = zext i32 %371 to i64
  %373 = getelementptr inbounds %struct.MVert, ptr %362, i64 %372
  %374 = getelementptr inbounds %struct.MFace, ptr %360, i64 %317, i32 1
  %375 = load i32, ptr %374, align 4, !tbaa !606
  %376 = zext i32 %375 to i64
  %377 = getelementptr inbounds %struct.MVert, ptr %362, i64 %376
  %378 = load i32, ptr %361, align 4, !tbaa !612
  %379 = zext i32 %378 to i64
  %380 = getelementptr inbounds %struct.MVert, ptr %362, i64 %379
  %381 = call float @normal_quad_v3(ptr noundef nonnull %365, ptr noundef %369, ptr noundef %373, ptr noundef %377, ptr noundef %380) #22
  br label %413

382:                                              ; preds = %355, %359
  %383 = phi ptr [ %358, %355 ], [ %362, %359 ]
  %384 = phi ptr [ %357, %355 ], [ %361, %359 ]
  %385 = phi ptr [ %356, %355 ], [ %360, %359 ]
  %386 = getelementptr inbounds %struct.VlakRen, ptr %339, i64 0, i32 4
  %387 = getelementptr inbounds %struct.MFace, ptr %385, i64 %317, i32 2
  %388 = load i32, ptr %387, align 4, !tbaa !611
  %389 = zext i32 %388 to i64
  %390 = getelementptr inbounds %struct.MVert, ptr %383, i64 %389
  %391 = getelementptr inbounds %struct.MFace, ptr %385, i64 %317, i32 1
  %392 = load i32, ptr %391, align 4, !tbaa !606
  %393 = zext i32 %392 to i64
  %394 = getelementptr inbounds %struct.MVert, ptr %383, i64 %393
  %395 = load i32, ptr %384, align 4, !tbaa !612
  %396 = zext i32 %395 to i64
  %397 = getelementptr inbounds %struct.MVert, ptr %383, i64 %396
  %398 = call float @normal_tri_v3(ptr noundef nonnull %386, ptr noundef %390, ptr noundef %394, ptr noundef %397) #22
  br label %413

399:                                              ; preds = %349
  %400 = icmp eq ptr %351, null
  br i1 %400, label %407, label %401

401:                                              ; preds = %399
  %402 = getelementptr inbounds %struct.VlakRen, ptr %339, i64 0, i32 4
  %403 = load ptr, ptr %347, align 8, !tbaa !561
  %404 = load ptr, ptr %344, align 8, !tbaa !560
  %405 = load ptr, ptr %339, align 8, !tbaa !558
  %406 = call float @normal_quad_v3(ptr noundef nonnull %402, ptr noundef nonnull %351, ptr noundef %403, ptr noundef %404, ptr noundef %405) #22
  br label %413

407:                                              ; preds = %353, %399
  %408 = getelementptr inbounds %struct.VlakRen, ptr %339, i64 0, i32 4
  %409 = load ptr, ptr %347, align 8, !tbaa !561
  %410 = load ptr, ptr %344, align 8, !tbaa !560
  %411 = load ptr, ptr %339, align 8, !tbaa !558
  %412 = call float @normal_tri_v3(ptr noundef nonnull %408, ptr noundef %409, ptr noundef %410, ptr noundef %411) #22
  br label %413

413:                                              ; preds = %364, %382, %401, %407
  %414 = phi float [ %406, %401 ], [ %412, %407 ], [ %381, %364 ], [ %398, %382 ]
  %415 = getelementptr inbounds %struct.VlakRen, ptr %339, i64 0, i32 5
  store ptr %243, ptr %415, align 8, !tbaa !563
  %416 = getelementptr inbounds %struct.VlakRen, ptr %339, i64 0, i32 7
  store i8 %336, ptr %416, align 1, !tbaa !564
  %417 = getelementptr inbounds %struct.VlakRen, ptr %339, i64 0, i32 8
  store i8 0, ptr %417, align 2, !tbaa !565
  %418 = fcmp oeq float %414, 0.000000e+00
  br i1 %418, label %419, label %422

419:                                              ; preds = %413
  %420 = load i32, ptr %233, align 4, !tbaa !555
  %421 = add nsw i32 %420, -1
  store i32 %421, ptr %233, align 4, !tbaa !555
  br label %545

422:                                              ; preds = %413
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %7) #24
  %423 = load i32, ptr %236, align 4, !tbaa !613
  %424 = icmp sgt i32 %423, 0
  br i1 %424, label %425, label %539

425:                                              ; preds = %422
  %426 = select i1 %348, i32 3, i32 4
  %427 = trunc i64 %317 to i32
  %428 = shl i64 %317, 4
  %429 = and i64 %428, 4294967280
  %430 = shl nsw i32 %427, 2
  %431 = zext nneg i32 %426 to i64
  %432 = zext nneg i32 %426 to i64
  %433 = zext nneg i32 %426 to i64
  br label %434

434:                                              ; preds = %425, %529
  %435 = phi i64 [ 0, %425 ], [ %535, %529 ]
  %436 = phi i32 [ 0, %425 ], [ %534, %529 ]
  %437 = phi i32 [ 0, %425 ], [ %533, %529 ]
  %438 = phi i32 [ 0, %425 ], [ %532, %529 ]
  %439 = phi i32 [ 0, %425 ], [ %531, %529 ]
  %440 = phi ptr [ %319, %425 ], [ %530, %529 ]
  %441 = load ptr, ptr %209, align 8, !tbaa !614
  %442 = getelementptr inbounds %struct.CustomDataLayer, ptr %441, i64 %435
  %443 = getelementptr inbounds %struct.CustomDataLayer, ptr %441, i64 %435, i32 8
  store ptr %443, ptr %7, align 8, !tbaa !47
  %444 = load i32, ptr %442, align 8, !tbaa !615
  %445 = icmp eq i32 %444, 5
  %446 = icmp slt i32 %439, 8
  %447 = select i1 %445, i1 %446, i1 false
  br i1 %447, label %448, label %466

448:                                              ; preds = %434
  %449 = call ptr @RE_vlakren_get_tface(ptr noundef %1, ptr noundef nonnull %339, i32 noundef %439, ptr noundef nonnull %7, i32 noundef 1) #22
  %450 = getelementptr inbounds %struct.CustomDataLayer, ptr %441, i64 %435, i32 9
  %451 = load ptr, ptr %450, align 8, !tbaa !617
  %452 = getelementptr inbounds %struct.MTFace, ptr %451, i64 %317
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %449, ptr noundef nonnull align 8 dereferenceable(48) %452, i64 48, i1 false), !tbaa.struct !618
  br label %453

453:                                              ; preds = %448, %453
  %454 = phi i64 [ 0, %448 ], [ %464, %453 ]
  %455 = getelementptr inbounds [4 x i32], ptr %6, i64 0, i64 %454
  %456 = load i32, ptr %455, align 4, !tbaa !78
  %457 = sext i32 %456 to i64
  %458 = getelementptr inbounds [4 x [2 x float]], ptr %452, i64 0, i64 %457, i64 0
  %459 = load float, ptr %458, align 4, !tbaa !44
  %460 = getelementptr inbounds [4 x [2 x float]], ptr %449, i64 0, i64 %454, i64 0
  store float %459, ptr %460, align 4, !tbaa !44
  %461 = getelementptr inbounds [4 x [2 x float]], ptr %452, i64 0, i64 %457, i64 1
  %462 = load float, ptr %461, align 4, !tbaa !44
  %463 = getelementptr inbounds [4 x [2 x float]], ptr %449, i64 0, i64 %454, i64 1
  store float %462, ptr %463, align 4, !tbaa !44
  %464 = add nuw nsw i64 %454, 1
  %465 = icmp eq i64 %464, %433
  br i1 %465, label %525, label %453, !llvm.loop !619

466:                                              ; preds = %434
  %467 = icmp eq i32 %444, 6
  %468 = icmp slt i32 %438, 8
  %469 = select i1 %467, i1 %468, i1 false
  br i1 %469, label %470, label %485

470:                                              ; preds = %466
  %471 = call ptr @RE_vlakren_get_mcol(ptr noundef %1, ptr noundef nonnull %339, i32 noundef %438, ptr noundef nonnull %7, i32 noundef 1) #22
  %472 = getelementptr inbounds %struct.CustomDataLayer, ptr %441, i64 %435, i32 9
  %473 = load ptr, ptr %472, align 8, !tbaa !617
  br label %474

474:                                              ; preds = %470, %474
  %475 = phi i64 [ 0, %470 ], [ %483, %474 ]
  %476 = getelementptr inbounds %struct.MCol, ptr %471, i64 %475
  %477 = getelementptr inbounds [4 x i32], ptr %6, i64 0, i64 %475
  %478 = load i32, ptr %477, align 4, !tbaa !78
  %479 = add nsw i32 %478, %430
  %480 = sext i32 %479 to i64
  %481 = getelementptr inbounds %struct.MCol, ptr %473, i64 %480
  %482 = load i32, ptr %481, align 1
  store i32 %482, ptr %476, align 1
  %483 = add nuw nsw i64 %475, 1
  %484 = icmp eq i64 %483, %432
  br i1 %484, label %527, label %474, !llvm.loop !620

485:                                              ; preds = %466
  %486 = icmp eq i32 %444, 18
  %487 = icmp slt i32 %437, 1
  %488 = select i1 %486, i1 %487, i1 false
  br i1 %488, label %489, label %506

489:                                              ; preds = %485
  br i1 %210, label %529, label %490

490:                                              ; preds = %489
  %491 = getelementptr inbounds %struct.CustomDataLayer, ptr %441, i64 %435, i32 9
  %492 = load ptr, ptr %491, align 8, !tbaa !617
  %493 = call ptr @RE_vlakren_get_nmap_tangent(ptr noundef %1, ptr noundef nonnull %339, i32 noundef 1) #22
  %494 = getelementptr inbounds float, ptr %492, i64 %429
  br label %495

495:                                              ; preds = %490, %495
  %496 = phi i64 [ 0, %490 ], [ %504, %495 ]
  %497 = shl nsw i64 %496, 2
  %498 = getelementptr inbounds float, ptr %493, i64 %497
  %499 = getelementptr inbounds [4 x i32], ptr %6, i64 0, i64 %496
  %500 = load i32, ptr %499, align 4, !tbaa !78
  %501 = shl nsw i32 %500, 2
  %502 = sext i32 %501 to i64
  %503 = getelementptr inbounds float, ptr %494, i64 %502
  call fastcc void @copy_v4_v4(ptr noundef %498, ptr noundef %503) #23
  call void @mul_mat3_m4_v3(ptr noundef nonnull %5, ptr noundef %498) #22
  call fastcc void @normalize_v3(ptr noundef %498) #23
  %504 = add nuw nsw i64 %496, 1
  %505 = icmp eq i64 %504, %431
  br i1 %505, label %529, label %495, !llvm.loop !621

506:                                              ; preds = %485
  %507 = icmp eq i32 %444, 40
  %508 = icmp slt i32 %436, 1
  %509 = select i1 %507, i1 %508, i1 false
  br i1 %509, label %510, label %529

510:                                              ; preds = %506
  br i1 %314, label %529, label %511

511:                                              ; preds = %510
  %512 = getelementptr inbounds %struct.CustomDataLayer, ptr %441, i64 %435, i32 9
  %513 = load ptr, ptr %512, align 8, !tbaa !617
  br label %514

514:                                              ; preds = %511, %514
  %515 = phi i64 [ 0, %511 ], [ %521, %514 ]
  %516 = getelementptr inbounds [4 x [3 x i16]], ptr %440, i64 0, i64 %515
  %517 = getelementptr inbounds [4 x i32], ptr %6, i64 0, i64 %515
  %518 = load i32, ptr %517, align 4, !tbaa !78
  %519 = sext i32 %518 to i64
  %520 = getelementptr inbounds [4 x [3 x i16]], ptr %513, i64 %317, i64 %519
  call fastcc void @copy_v3_v3_short(ptr noundef %516, ptr noundef %520) #23
  %521 = add nuw nsw i64 %515, 1
  %522 = icmp eq i64 %521, 4
  br i1 %522, label %523, label %514, !llvm.loop !622

523:                                              ; preds = %514
  %524 = getelementptr inbounds [4 x [3 x i16]], ptr %440, i64 1
  br label %529

525:                                              ; preds = %453
  %526 = add nsw i32 %439, 1
  br label %529

527:                                              ; preds = %474
  %528 = add nsw i32 %438, 1
  br label %529

529:                                              ; preds = %495, %527, %525, %510, %523, %489, %506
  %530 = phi ptr [ %440, %506 ], [ %440, %489 ], [ %524, %523 ], [ %440, %510 ], [ %440, %525 ], [ %440, %527 ], [ %440, %495 ]
  %531 = phi i32 [ %439, %506 ], [ %439, %489 ], [ %439, %523 ], [ %439, %510 ], [ %526, %525 ], [ %439, %527 ], [ %439, %495 ]
  %532 = phi i32 [ %438, %506 ], [ %438, %489 ], [ %438, %523 ], [ %438, %510 ], [ %438, %525 ], [ %528, %527 ], [ %438, %495 ]
  %533 = phi i32 [ %437, %506 ], [ 1, %489 ], [ %437, %523 ], [ %437, %510 ], [ %437, %525 ], [ %437, %527 ], [ 1, %495 ]
  %534 = phi i32 [ %436, %506 ], [ %436, %489 ], [ 1, %523 ], [ 1, %510 ], [ %436, %525 ], [ %436, %527 ], [ %436, %495 ]
  %535 = add nuw nsw i64 %435, 1
  %536 = load i32, ptr %236, align 4, !tbaa !613
  %537 = sext i32 %536 to i64
  %538 = icmp slt i64 %535, %537
  br i1 %538, label %434, label %539, !llvm.loop !623

539:                                              ; preds = %529, %422
  %540 = phi ptr [ %319, %422 ], [ %530, %529 ]
  br i1 %106, label %541, label %544

541:                                              ; preds = %539
  %542 = call ptr @RE_vlakren_get_origindex(ptr noundef %1, ptr noundef nonnull %339, i32 noundef 1) #22
  %543 = trunc i64 %317 to i32
  store i32 %543, ptr %542, align 4, !tbaa !78
  br label %544

544:                                              ; preds = %541, %539
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %7) #24
  br label %545

545:                                              ; preds = %544, %419
  %546 = phi ptr [ %319, %419 ], [ %540, %544 ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %6) #24
  br label %547

547:                                              ; preds = %545, %316
  %548 = phi ptr [ %546, %545 ], [ %319, %316 ]
  %549 = add nuw nsw i64 %317, 1
  %550 = getelementptr inbounds %struct.MFace, ptr %318, i64 1
  %551 = icmp eq i64 %549, %315
  br i1 %551, label %552, label %316, !llvm.loop !624

552:                                              ; preds = %547, %309, %285, %291
  %553 = phi ptr [ %240, %291 ], [ %240, %285 ], [ %310, %309 ], [ %548, %547 ]
  %554 = phi ptr [ %238, %291 ], [ %238, %285 ], [ %311, %309 ], [ %311, %547 ]
  %555 = load i32, ptr %22, align 8, !tbaa !398
  %556 = icmp slt i32 %241, %555
  br i1 %556, label %237, label %557, !llvm.loop !625

557:                                              ; preds = %552, %215
  %558 = phi ptr [ null, %215 ], [ %554, %552 ]
  %559 = getelementptr inbounds %struct.DerivedMesh, ptr %125, i64 0, i32 24
  %560 = load ptr, ptr %559, align 8, !tbaa !602
  %561 = call i32 %560(ptr noundef %125) #22
  %562 = load ptr, ptr %143, align 8, !tbaa !594
  %563 = call ptr %562(ptr noundef %125) #22
  %564 = call fastcc ptr @give_render_material(ptr noundef %0, ptr noundef nonnull %10, i16 noundef signext 1) #23
  %565 = icmp eq i32 %561, 0
  br i1 %565, label %683, label %566

566:                                              ; preds = %557
  %567 = getelementptr inbounds %struct.Material, ptr %564, i64 0, i32 2
  %568 = load i16, ptr %567, align 8, !tbaa !294
  %569 = icmp eq i16 %568, 3
  br i1 %569, label %570, label %683

570:                                              ; preds = %566
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %8) #24
  store i32 0, ptr %8, align 4, !tbaa !78
  %571 = getelementptr inbounds %struct.DerivedMesh, ptr %125, i64 0, i32 32
  %572 = load ptr, ptr %571, align 8, !tbaa !626
  %573 = call ptr %572(ptr noundef nonnull %125) #22
  %574 = call fastcc ptr @make_mesh_edge_lookup(ptr noundef nonnull %125, ptr noundef nonnull %8) #23
  %575 = icmp sgt i32 %561, 0
  br i1 %575, label %576, label %678

576:                                              ; preds = %570
  %577 = getelementptr inbounds %struct.ObjectRen, ptr %1, i64 0, i32 11
  %578 = icmp eq ptr %574, null
  %579 = load i32, ptr %8, align 4
  %580 = getelementptr inbounds [3 x float], ptr %4, i64 0, i64 1
  %581 = getelementptr inbounds [3 x float], ptr %4, i64 0, i64 2
  %582 = getelementptr inbounds [3 x [3 x float]], ptr %4, i64 0, i64 1
  %583 = getelementptr inbounds [3 x [3 x float]], ptr %4, i64 0, i64 1, i64 1
  %584 = getelementptr inbounds [3 x [3 x float]], ptr %4, i64 0, i64 1, i64 2
  %585 = getelementptr inbounds [3 x [3 x float]], ptr %4, i64 0, i64 2
  %586 = getelementptr inbounds [3 x [3 x float]], ptr %4, i64 0, i64 2, i64 1
  %587 = getelementptr inbounds [3 x [3 x float]], ptr %4, i64 0, i64 2, i64 2
  br label %588

588:                                              ; preds = %576, %674
  %589 = phi ptr [ %573, %576 ], [ %676, %674 ]
  %590 = phi i32 [ 0, %576 ], [ %675, %674 ]
  %591 = getelementptr inbounds %struct.MEdge, ptr %589, i64 0, i32 4
  %592 = load i16, ptr %591, align 2, !tbaa !627
  %593 = and i16 %592, 32
  %594 = icmp eq i16 %593, 0
  br i1 %594, label %674, label %595

595:                                              ; preds = %588
  %596 = load i32, ptr %589, align 4, !tbaa !629
  %597 = zext i32 %596 to i64
  %598 = getelementptr inbounds %struct.MEdge, ptr %589, i64 0, i32 1
  %599 = load i32, ptr %598, align 4, !tbaa !630
  %600 = zext i32 %599 to i64
  %601 = load i32, ptr %577, align 4, !tbaa !555
  %602 = add nsw i32 %601, 1
  store i32 %602, ptr %577, align 4, !tbaa !555
  %603 = call ptr @RE_findOrAddVlak(ptr noundef %1, i32 noundef %601) #22
  %604 = load i32, ptr %589, align 4, !tbaa !629
  %605 = add i32 %604, %218
  %606 = call ptr @RE_findOrAddVert(ptr noundef %1, i32 noundef %605) #22
  store ptr %606, ptr %603, align 8, !tbaa !558
  %607 = load i32, ptr %598, align 4, !tbaa !630
  %608 = add i32 %607, %218
  %609 = call ptr @RE_findOrAddVert(ptr noundef %1, i32 noundef %608) #22
  %610 = getelementptr inbounds %struct.VlakRen, ptr %603, i64 0, i32 1
  store ptr %609, ptr %610, align 8, !tbaa !560
  %611 = getelementptr inbounds %struct.VlakRen, ptr %603, i64 0, i32 2
  store ptr %609, ptr %611, align 8, !tbaa !561
  %612 = getelementptr inbounds %struct.VlakRen, ptr %603, i64 0, i32 3
  store ptr null, ptr %612, align 8, !tbaa !562
  br i1 %578, label %614, label %613

613:                                              ; preds = %595
  call fastcc void @use_mesh_edge_lookup(ptr noundef nonnull %1, ptr noundef %125, ptr noundef nonnull %589, ptr noundef nonnull %603, ptr noundef nonnull %574, i32 noundef %579) #23
  br label %614

614:                                              ; preds = %613, %595
  %615 = getelementptr inbounds %struct.MVert, ptr %563, i64 %597, i32 1
  %616 = load i16, ptr %615, align 4, !tbaa !77
  %617 = sext i16 %616 to i32
  %618 = getelementptr inbounds %struct.MVert, ptr %563, i64 %600, i32 1
  %619 = load i16, ptr %618, align 4, !tbaa !77
  %620 = sext i16 %619 to i32
  %621 = add nsw i32 %617, %620
  %622 = sub nsw i32 0, %621
  %623 = sitofp i32 %622 to float
  %624 = getelementptr inbounds %struct.MVert, ptr %563, i64 %597, i32 1, i64 1
  %625 = load i16, ptr %624, align 2, !tbaa !77
  %626 = sext i16 %625 to i32
  %627 = getelementptr inbounds %struct.MVert, ptr %563, i64 %600, i32 1, i64 1
  %628 = load i16, ptr %627, align 2, !tbaa !77
  %629 = sext i16 %628 to i32
  %630 = add nsw i32 %626, %629
  %631 = sub nsw i32 0, %630
  %632 = sitofp i32 %631 to float
  %633 = getelementptr inbounds %struct.MVert, ptr %563, i64 %597, i32 1, i64 2
  %634 = load i16, ptr %633, align 4, !tbaa !77
  %635 = sext i16 %634 to i32
  %636 = getelementptr inbounds %struct.MVert, ptr %563, i64 %600, i32 1, i64 2
  %637 = load i16, ptr %636, align 4, !tbaa !77
  %638 = sext i16 %637 to i32
  %639 = add nsw i32 %635, %638
  %640 = sub nsw i32 0, %639
  %641 = sitofp i32 %640 to float
  %642 = load <4 x float>, ptr %4, align 16
  %643 = shufflevector <4 x float> %642, <4 x float> poison, <2 x i32> <i32 0, i32 poison>
  %644 = load <4 x float>, ptr %580, align 4
  %645 = shufflevector <4 x float> %644, <4 x float> poison, <2 x i32> <i32 0, i32 poison>
  %646 = load <4 x float>, ptr %581, align 8
  %647 = shufflevector <4 x float> %646, <4 x float> poison, <2 x i32> <i32 0, i32 poison>
  %648 = getelementptr inbounds %struct.VlakRen, ptr %603, i64 0, i32 4
  %649 = load float, ptr %582, align 4, !tbaa !44
  %650 = load float, ptr %583, align 16, !tbaa !44
  %651 = load float, ptr %584, align 4, !tbaa !44
  %652 = insertelement <2 x float> %645, float %650, i64 1
  %653 = insertelement <2 x float> poison, float %632, i64 0
  %654 = shufflevector <2 x float> %653, <2 x float> poison, <2 x i32> zeroinitializer
  %655 = fmul <2 x float> %652, %654
  %656 = insertelement <2 x float> %643, float %649, i64 1
  %657 = insertelement <2 x float> poison, float %623, i64 0
  %658 = shufflevector <2 x float> %657, <2 x float> poison, <2 x i32> zeroinitializer
  %659 = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %656, <2 x float> %658, <2 x float> %655)
  %660 = insertelement <2 x float> %647, float %651, i64 1
  %661 = insertelement <2 x float> poison, float %641, i64 0
  %662 = shufflevector <2 x float> %661, <2 x float> poison, <2 x i32> zeroinitializer
  %663 = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %660, <2 x float> %662, <2 x float> %659)
  store <2 x float> %663, ptr %648, align 8, !tbaa !44
  %664 = load float, ptr %585, align 8, !tbaa !44
  %665 = load float, ptr %586, align 4, !tbaa !44
  %666 = fmul float %665, %632
  %667 = call float @llvm.fmuladd.f32(float %664, float %623, float %666)
  %668 = load float, ptr %587, align 16, !tbaa !44
  %669 = call float @llvm.fmuladd.f32(float %668, float %641, float %667)
  %670 = getelementptr inbounds %struct.VlakRen, ptr %603, i64 0, i32 4, i64 2
  store float %669, ptr %670, align 8, !tbaa !44
  call fastcc void @normalize_v3(ptr noundef nonnull %648) #23
  %671 = getelementptr inbounds %struct.VlakRen, ptr %603, i64 0, i32 5
  store ptr %564, ptr %671, align 8, !tbaa !563
  %672 = getelementptr inbounds %struct.VlakRen, ptr %603, i64 0, i32 7
  store i8 0, ptr %672, align 1, !tbaa !564
  %673 = getelementptr inbounds %struct.VlakRen, ptr %603, i64 0, i32 8
  store i8 1, ptr %673, align 2, !tbaa !565
  br label %674

674:                                              ; preds = %588, %614
  %675 = add nuw nsw i32 %590, 1
  %676 = getelementptr inbounds %struct.MEdge, ptr %589, i64 1
  %677 = icmp eq i32 %675, %561
  br i1 %677, label %678, label %588, !llvm.loop !631

678:                                              ; preds = %674, %570
  %679 = icmp eq ptr %574, null
  br i1 %679, label %682, label %680

680:                                              ; preds = %678
  %681 = load ptr, ptr @MEM_freeN, align 8, !tbaa !47
  call void %681(ptr noundef nonnull %574) #22
  br label %682

682:                                              ; preds = %680, %678
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %8) #24
  br label %683

683:                                              ; preds = %682, %566, %557, %165
  %684 = phi i32 [ 0, %165 ], [ 1, %682 ], [ 0, %566 ], [ 0, %557 ]
  %685 = phi ptr [ null, %165 ], [ %558, %682 ], [ %558, %566 ], [ %558, %557 ]
  br i1 %109, label %686, label %702

686:                                              ; preds = %683
  %687 = icmp eq i8 %71, 0
  br i1 %687, label %689, label %688

688:                                              ; preds = %686
  call fastcc void @calc_edge_stress(ptr noundef %1, ptr noundef %12) #23
  br label %689

689:                                              ; preds = %688, %686
  br i1 %92, label %691, label %690

690:                                              ; preds = %689
  call fastcc void @calc_vertexnormals(ptr noundef %1, i8 noundef zeroext 1, i8 noundef zeroext 0, i8 noundef zeroext 0) #23
  call fastcc void @displace(ptr noundef %0, ptr noundef %1) #23
  br label %695

691:                                              ; preds = %689
  br i1 %93, label %692, label %695

692:                                              ; preds = %691
  %693 = icmp eq ptr %685, null
  %694 = zext i1 %693 to i32
  call fastcc void @autosmooth(ptr noundef %1, ptr noundef nonnull %5, ptr noundef %685) #23
  br label %695

695:                                              ; preds = %691, %692, %690
  %696 = phi i32 [ 0, %690 ], [ %694, %692 ], [ %684, %691 ]
  %697 = icmp ne i32 %696, 0
  %698 = icmp ne i8 %84, 0
  %699 = select i1 %697, i1 true, i1 %698
  br i1 %699, label %700, label %702

700:                                              ; preds = %695
  %701 = trunc i32 %696 to i8
  call fastcc void @calc_vertexnormals(ptr noundef %1, i8 noundef zeroext %701, i8 noundef zeroext %84, i8 noundef zeroext %85) #23
  br label %702

702:                                              ; preds = %700, %695, %683
  %703 = icmp eq ptr %685, null
  br i1 %703, label %706, label %704

704:                                              ; preds = %702
  %705 = load ptr, ptr @MEM_freeN, align 8, !tbaa !47
  call void %705(ptr noundef nonnull %685) #22
  br label %706

706:                                              ; preds = %207, %704, %702
  %707 = getelementptr inbounds %struct.DerivedMesh, ptr %125, i64 0, i32 95
  %708 = load ptr, ptr %707, align 8, !tbaa !281
  call void %708(ptr noundef %125) #22
  br label %709

709:                                              ; preds = %124, %3, %706
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %5) #24
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %4) #24
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @init_render_mball(ptr noundef %0, ptr noundef %1) unnamed_addr #4 !PGOFuncName !632 {
  %3 = alloca [4 x [4 x float]], align 16
  %4 = alloca [3 x [3 x float]], align 16
  %5 = alloca %struct.ListBase, align 8
  %6 = getelementptr inbounds %struct.ObjectRen, ptr %1, i64 0, i32 2
  %7 = load ptr, ptr %6, align 8, !tbaa !232
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %3) #24
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %4) #24
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %5) #24
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %5, i8 0, i64 16, i1 false)
  %8 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 44
  %9 = load ptr, ptr %8, align 8, !tbaa !48
  %10 = tail call ptr @BKE_mball_basis_find(ptr noundef %9, ptr noundef %7) #22
  %11 = icmp eq ptr %7, %10
  br i1 %11, label %12, label %164

12:                                               ; preds = %2
  %13 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 32
  %14 = getelementptr inbounds %struct.Object, ptr %7, i64 0, i32 47
  call void @mul_m4_m4m4(ptr noundef nonnull %3, ptr noundef nonnull %13, ptr noundef nonnull %14) #22
  %15 = getelementptr inbounds %struct.Object, ptr %7, i64 0, i32 50
  %16 = call zeroext i8 @invert_m4_m4(ptr noundef nonnull %15, ptr noundef nonnull %3) #22
  call void @copy_m3_m4(ptr noundef nonnull %4, ptr noundef nonnull %15) #22
  %17 = call zeroext i8 @is_negative_m4(ptr noundef nonnull %3) #22
  %18 = call fastcc ptr @give_render_material(ptr noundef nonnull %0, ptr noundef %7, i16 noundef signext 1) #23
  %19 = getelementptr inbounds %struct.Material, ptr %18, i64 0, i32 90
  %20 = load i16, ptr %19, align 4, !tbaa !265
  %21 = and i16 %20, 1
  %22 = icmp eq i16 %21, 0
  %23 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 101
  %24 = load ptr, ptr %23, align 8, !tbaa !127
  %25 = load ptr, ptr %8, align 8, !tbaa !48
  call void @BKE_displist_make_mball_forRender(ptr noundef %24, ptr noundef %25, ptr noundef %7, ptr noundef nonnull %5) #22
  %26 = load ptr, ptr %5, align 8, !tbaa !194
  %27 = icmp eq ptr %26, null
  br i1 %27, label %164, label %28

28:                                               ; preds = %12
  %29 = getelementptr inbounds %struct.DispList, ptr %26, i64 0, i32 8
  %30 = load ptr, ptr %29, align 8, !tbaa !551
  %31 = getelementptr inbounds %struct.DispList, ptr %26, i64 0, i32 9
  %32 = load ptr, ptr %31, align 8, !tbaa !633
  br i1 %22, label %38, label %33

33:                                               ; preds = %28
  %34 = call fastcc ptr @get_object_orco(ptr noundef nonnull %0, ptr noundef %7) #23
  %35 = icmp eq ptr %34, null
  br i1 %35, label %36, label %38

36:                                               ; preds = %33
  %37 = call ptr @BKE_mball_make_orco(ptr noundef %7, ptr noundef nonnull %5) #22
  call fastcc void @set_object_orco(ptr noundef nonnull %0, ptr noundef %7, ptr noundef %37) #23
  br label %38

38:                                               ; preds = %33, %36, %28
  %39 = phi ptr [ %34, %33 ], [ %37, %36 ], [ null, %28 ]
  %40 = getelementptr inbounds %struct.DispList, ptr %26, i64 0, i32 5
  %41 = load i32, ptr %40, align 8, !tbaa !550
  %42 = icmp sgt i32 %41, 0
  br i1 %42, label %43, label %100

43:                                               ; preds = %38
  %44 = getelementptr inbounds %struct.ObjectRen, ptr %1, i64 0, i32 10
  %45 = getelementptr inbounds [3 x float], ptr %4, i64 0, i64 1
  %46 = getelementptr inbounds [3 x float], ptr %4, i64 0, i64 2
  %47 = getelementptr inbounds [3 x [3 x float]], ptr %4, i64 0, i64 1
  %48 = getelementptr inbounds [3 x [3 x float]], ptr %4, i64 0, i64 1, i64 1
  %49 = getelementptr inbounds [3 x [3 x float]], ptr %4, i64 0, i64 1, i64 2
  %50 = getelementptr inbounds [3 x [3 x float]], ptr %4, i64 0, i64 2
  %51 = getelementptr inbounds [3 x [3 x float]], ptr %4, i64 0, i64 2, i64 1
  %52 = getelementptr inbounds [3 x [3 x float]], ptr %4, i64 0, i64 2, i64 2
  br label %53

53:                                               ; preds = %43, %93
  %54 = phi ptr [ %30, %43 ], [ %96, %93 ]
  %55 = phi ptr [ %32, %43 ], [ %97, %93 ]
  %56 = phi i32 [ 0, %43 ], [ %95, %93 ]
  %57 = phi ptr [ %39, %43 ], [ %94, %93 ]
  %58 = load i32, ptr %44, align 8, !tbaa !196
  %59 = add nsw i32 %58, 1
  store i32 %59, ptr %44, align 8, !tbaa !196
  %60 = call ptr @RE_findOrAddVert(ptr noundef nonnull %1, i32 noundef %58) #22
  call fastcc void @copy_v3_v3(ptr noundef %60, ptr noundef %54) #23
  call void @mul_m4_v3(ptr noundef nonnull %3, ptr noundef %60) #22
  %61 = load float, ptr %55, align 4, !tbaa !44
  %62 = fneg float %61
  %63 = getelementptr inbounds float, ptr %55, i64 1
  %64 = load float, ptr %63, align 4, !tbaa !44
  %65 = fneg float %64
  %66 = getelementptr inbounds float, ptr %55, i64 2
  %67 = load float, ptr %66, align 4, !tbaa !44
  %68 = fneg float %67
  %69 = load float, ptr %4, align 16, !tbaa !44
  %70 = load float, ptr %45, align 4, !tbaa !44
  %71 = fmul float %70, %65
  %72 = call float @llvm.fmuladd.f32(float %69, float %62, float %71)
  %73 = load float, ptr %46, align 8, !tbaa !44
  %74 = call float @llvm.fmuladd.f32(float %73, float %68, float %72)
  %75 = getelementptr inbounds %struct.VertRen, ptr %60, i64 0, i32 1
  store float %74, ptr %75, align 4, !tbaa !44
  %76 = load float, ptr %47, align 4, !tbaa !44
  %77 = load float, ptr %48, align 16, !tbaa !44
  %78 = fmul float %77, %65
  %79 = call float @llvm.fmuladd.f32(float %76, float %62, float %78)
  %80 = load float, ptr %49, align 4, !tbaa !44
  %81 = call float @llvm.fmuladd.f32(float %80, float %68, float %79)
  %82 = getelementptr inbounds %struct.VertRen, ptr %60, i64 0, i32 1, i64 1
  store float %81, ptr %82, align 4, !tbaa !44
  %83 = load float, ptr %50, align 8, !tbaa !44
  %84 = load float, ptr %51, align 4, !tbaa !44
  %85 = fmul float %84, %65
  %86 = call float @llvm.fmuladd.f32(float %83, float %62, float %85)
  %87 = load float, ptr %52, align 16, !tbaa !44
  %88 = call float @llvm.fmuladd.f32(float %87, float %68, float %86)
  %89 = getelementptr inbounds %struct.VertRen, ptr %60, i64 0, i32 1, i64 2
  store float %88, ptr %89, align 4, !tbaa !44
  call fastcc void @normalize_v3(ptr noundef nonnull %75) #23
  br i1 %22, label %93, label %90

90:                                               ; preds = %53
  %91 = getelementptr inbounds %struct.VertRen, ptr %60, i64 0, i32 2
  store ptr %57, ptr %91, align 8, !tbaa !552
  %92 = getelementptr inbounds float, ptr %57, i64 3
  br label %93

93:                                               ; preds = %53, %90
  %94 = phi ptr [ %92, %90 ], [ %57, %53 ]
  %95 = add nuw nsw i32 %56, 1
  %96 = getelementptr inbounds float, ptr %54, i64 3
  %97 = getelementptr inbounds float, ptr %55, i64 3
  %98 = load i32, ptr %40, align 8, !tbaa !550
  %99 = icmp slt i32 %95, %98
  br i1 %99, label %53, label %100, !llvm.loop !634

100:                                              ; preds = %93, %38
  %101 = getelementptr inbounds %struct.DispList, ptr %26, i64 0, i32 4
  %102 = load i32, ptr %101, align 4, !tbaa !556
  %103 = icmp sgt i32 %102, 0
  br i1 %103, label %104, label %163

104:                                              ; preds = %100
  %105 = getelementptr inbounds %struct.DispList, ptr %26, i64 0, i32 10
  %106 = load ptr, ptr %105, align 8, !tbaa !557
  %107 = getelementptr inbounds %struct.ObjectRen, ptr %1, i64 0, i32 11
  %108 = icmp eq i8 %17, 0
  br label %109

109:                                              ; preds = %104, %158
  %110 = phi ptr [ %106, %104 ], [ %160, %158 ]
  %111 = phi i32 [ 0, %104 ], [ %159, %158 ]
  %112 = load i32, ptr %107, align 4, !tbaa !555
  %113 = add nsw i32 %112, 1
  store i32 %113, ptr %107, align 4, !tbaa !555
  %114 = call ptr @RE_findOrAddVlak(ptr noundef nonnull %1, i32 noundef %112) #22
  %115 = load i32, ptr %110, align 4, !tbaa !78
  %116 = call ptr @RE_findOrAddVert(ptr noundef nonnull %1, i32 noundef %115) #22
  store ptr %116, ptr %114, align 8, !tbaa !558
  %117 = getelementptr inbounds i32, ptr %110, i64 1
  %118 = load i32, ptr %117, align 4, !tbaa !78
  %119 = call ptr @RE_findOrAddVert(ptr noundef nonnull %1, i32 noundef %118) #22
  %120 = getelementptr inbounds %struct.VlakRen, ptr %114, i64 0, i32 1
  store ptr %119, ptr %120, align 8, !tbaa !560
  %121 = getelementptr inbounds i32, ptr %110, i64 2
  %122 = load i32, ptr %121, align 4, !tbaa !78
  %123 = call ptr @RE_findOrAddVert(ptr noundef nonnull %1, i32 noundef %122) #22
  %124 = getelementptr inbounds %struct.VlakRen, ptr %114, i64 0, i32 2
  store ptr %123, ptr %124, align 8, !tbaa !561
  %125 = getelementptr inbounds %struct.VlakRen, ptr %114, i64 0, i32 3
  store ptr null, ptr %125, align 8, !tbaa !562
  %126 = getelementptr inbounds %struct.VlakRen, ptr %114, i64 0, i32 4
  %127 = load ptr, ptr %114, align 8, !tbaa !558
  %128 = select i1 %108, ptr %127, ptr %123
  %129 = select i1 %108, ptr %123, ptr %127
  %130 = load ptr, ptr %120, align 8, !tbaa !560
  %131 = call float @normal_tri_v3(ptr noundef nonnull %126, ptr noundef %129, ptr noundef %130, ptr noundef %128) #22
  %132 = getelementptr inbounds %struct.VlakRen, ptr %114, i64 0, i32 5
  store ptr %18, ptr %132, align 8, !tbaa !563
  %133 = getelementptr inbounds %struct.VlakRen, ptr %114, i64 0, i32 7
  store i8 1, ptr %133, align 1, !tbaa !564
  %134 = getelementptr inbounds %struct.VlakRen, ptr %114, i64 0, i32 8
  store i8 0, ptr %134, align 2, !tbaa !565
  %135 = getelementptr inbounds i32, ptr %110, i64 3
  %136 = load i32, ptr %135, align 4, !tbaa !78
  %137 = icmp eq i32 %136, 0
  br i1 %137, label %158, label %138

138:                                              ; preds = %109
  %139 = load i32, ptr %121, align 4, !tbaa !78
  %140 = icmp eq i32 %136, %139
  br i1 %140, label %158, label %141

141:                                              ; preds = %138
  %142 = load i32, ptr %107, align 4, !tbaa !555
  %143 = add nsw i32 %142, 1
  store i32 %143, ptr %107, align 4, !tbaa !555
  %144 = call ptr @RE_findOrAddVlak(ptr noundef nonnull %1, i32 noundef %142) #22
  %145 = getelementptr inbounds %struct.VlakRen, ptr %144, i64 0, i32 9
  %146 = load i32, ptr %145, align 4, !tbaa !635
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %144, ptr noundef nonnull align 8 dereferenceable(64) %114, i64 64, i1 false), !tbaa.struct !636
  store i32 %146, ptr %145, align 4, !tbaa !635
  %147 = getelementptr inbounds %struct.VlakRen, ptr %144, i64 0, i32 2
  %148 = load ptr, ptr %147, align 8, !tbaa !561
  %149 = getelementptr inbounds %struct.VlakRen, ptr %144, i64 0, i32 1
  store ptr %148, ptr %149, align 8, !tbaa !560
  %150 = load i32, ptr %135, align 4, !tbaa !78
  %151 = call ptr @RE_findOrAddVert(ptr noundef nonnull %1, i32 noundef %150) #22
  store ptr %151, ptr %147, align 8, !tbaa !561
  %152 = getelementptr inbounds %struct.VlakRen, ptr %144, i64 0, i32 4
  %153 = load ptr, ptr %144, align 8, !tbaa !558
  %154 = select i1 %108, ptr %153, ptr %151
  %155 = select i1 %108, ptr %151, ptr %153
  %156 = load ptr, ptr %149, align 8, !tbaa !560
  %157 = call float @normal_tri_v3(ptr noundef nonnull %152, ptr noundef %155, ptr noundef %156, ptr noundef %154) #22
  br label %158

158:                                              ; preds = %141, %109, %138
  %159 = add nuw nsw i32 %111, 1
  %160 = getelementptr inbounds i32, ptr %110, i64 4
  %161 = load i32, ptr %101, align 4, !tbaa !556
  %162 = icmp slt i32 %159, %161
  br i1 %162, label %109, label %163, !llvm.loop !637

163:                                              ; preds = %158, %100
  call void @BKE_displist_free(ptr noundef nonnull %5) #22
  br label %164

164:                                              ; preds = %12, %2, %163
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %5) #24
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %4) #24
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %3) #24
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @finalize_render_object(ptr noundef %0, ptr noundef %1, i32 noundef %2) unnamed_addr #4 !PGOFuncName !638 {
  %4 = alloca [3 x float], align 8
  %5 = alloca [3 x float], align 8
  %6 = alloca [3 x float], align 8
  %7 = alloca [3 x float], align 8
  %8 = getelementptr inbounds %struct.ObjectRen, ptr %1, i64 0, i32 2
  %9 = load ptr, ptr %8, align 8, !tbaa !232
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %4) #24
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %5) #24
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %6) #24
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %7) #24
  %10 = getelementptr inbounds %struct.ObjectRen, ptr %1, i64 0, i32 10
  %11 = load i32, ptr %10, align 8, !tbaa !196
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %13, label %25

13:                                               ; preds = %3
  %14 = getelementptr inbounds %struct.ObjectRen, ptr %1, i64 0, i32 11
  %15 = load i32, ptr %14, align 4, !tbaa !555
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %17, label %25

17:                                               ; preds = %13
  %18 = getelementptr inbounds %struct.ObjectRen, ptr %1, i64 0, i32 13
  %19 = load i32, ptr %18, align 4, !tbaa !178
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %21, label %25

21:                                               ; preds = %17
  %22 = getelementptr inbounds %struct.ObjectRen, ptr %1, i64 0, i32 12
  %23 = load i32, ptr %22, align 8, !tbaa !245
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %148, label %25

25:                                               ; preds = %21, %17, %13, %3
  %26 = getelementptr inbounds %struct.Object, ptr %9, i64 0, i32 3
  %27 = load i16, ptr %26, align 8, !tbaa !147
  %28 = icmp eq i16 %27, 1
  br i1 %28, label %33, label %29

29:                                               ; preds = %25
  %30 = tail call fastcc signext i16 @test_for_displace(ptr noundef %0, ptr noundef nonnull %9) #23, !range !590
  %31 = icmp eq i16 %30, 0
  br i1 %31, label %33, label %32

32:                                               ; preds = %29
  tail call fastcc void @displace(ptr noundef %0, ptr noundef nonnull %1) #23
  br label %33

33:                                               ; preds = %32, %29, %25
  %34 = icmp eq i32 %2, 0
  br i1 %34, label %35, label %148

35:                                               ; preds = %33
  %36 = getelementptr inbounds %struct.Object, ptr %9, i64 0, i32 116
  store float 0.000000e+00, ptr %36, align 4, !tbaa !639
  %37 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 45, i32 47
  %38 = load i32, ptr %37, align 8, !tbaa !87
  %39 = and i32 %38, 65538
  %40 = icmp eq i32 %39, 65538
  br i1 %40, label %41, label %42

41:                                               ; preds = %35
  tail call fastcc void @set_phong_threshold(ptr noundef nonnull %1) #23
  br label %42

42:                                               ; preds = %41, %35
  %43 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 4
  %44 = load i16, ptr %43, align 8, !tbaa !257
  %45 = and i16 %44, 64
  %46 = icmp eq i16 %45, 0
  br i1 %46, label %53, label %47

47:                                               ; preds = %42
  %48 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 45, i32 77
  %49 = load i16, ptr %48, align 2, !tbaa !640
  %50 = icmp eq i16 %49, 0
  br i1 %50, label %53, label %51

51:                                               ; preds = %47
  %52 = sext i16 %49 to i32
  tail call fastcc void @split_quads(ptr noundef nonnull %1, i32 noundef %52) #23
  br label %69

53:                                               ; preds = %47, %42
  %54 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 44
  %55 = load ptr, ptr %54, align 8, !tbaa !48
  %56 = tail call zeroext i8 @BKE_object_is_animated(ptr noundef %55, ptr noundef nonnull %9) #22
  %57 = icmp eq i8 %56, 0
  br i1 %57, label %59, label %58

58:                                               ; preds = %53
  tail call fastcc void @split_quads(ptr noundef nonnull %1, i32 noundef 1) #23
  br label %69

59:                                               ; preds = %53
  %60 = load i32, ptr %37, align 8, !tbaa !87
  %61 = and i32 %60, 16777216
  %62 = icmp eq i32 %61, 0
  br i1 %62, label %68, label %63

63:                                               ; preds = %59
  %64 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 45, i32 95
  %65 = load i32, ptr %64, align 8, !tbaa !641
  %66 = and i32 %65, 1
  %67 = icmp eq i32 %66, 0
  br i1 %67, label %68, label %69

68:                                               ; preds = %59, %63
  tail call fastcc void @check_non_flat_quads(ptr noundef nonnull %1) #23
  br label %69

69:                                               ; preds = %58, %68, %63, %51
  tail call fastcc void @set_fullsample_trace_flag(ptr noundef nonnull %0, ptr noundef nonnull %1) #23
  %70 = getelementptr inbounds [3 x float], ptr %4, i64 0, i64 2
  store float 0x46293E5940000000, ptr %70, align 8, !tbaa !44
  store <2 x float> <float 0x46293E5940000000, float 0x46293E5940000000>, ptr %4, align 8, !tbaa !44
  %71 = getelementptr inbounds [3 x float], ptr %5, i64 0, i64 2
  store float 0xC6293E5940000000, ptr %71, align 8, !tbaa !44
  store <2 x float> <float 0xC6293E5940000000, float 0xC6293E5940000000>, ptr %5, align 8, !tbaa !44
  %72 = load i32, ptr %10, align 8, !tbaa !196
  %73 = icmp sgt i32 %72, 0
  br i1 %73, label %74, label %94

74:                                               ; preds = %69
  %75 = getelementptr inbounds %struct.ObjectRen, ptr %1, i64 0, i32 18
  br label %76

76:                                               ; preds = %74, %89
  %77 = phi ptr [ null, %74 ], [ %90, %89 ]
  %78 = phi i32 [ 0, %74 ], [ %91, %89 ]
  %79 = and i32 %78, 255
  %80 = icmp eq i32 %79, 0
  br i1 %80, label %81, label %87

81:                                               ; preds = %76
  %82 = load ptr, ptr %75, align 8, !tbaa !222
  %83 = lshr exact i32 %78, 8
  %84 = zext nneg i32 %83 to i64
  %85 = getelementptr inbounds %struct.VertTableNode, ptr %82, i64 %84
  %86 = load ptr, ptr %85, align 8, !tbaa !223
  br label %89

87:                                               ; preds = %76
  %88 = getelementptr inbounds %struct.VertRen, ptr %77, i64 1
  br label %89

89:                                               ; preds = %87, %81
  %90 = phi ptr [ %86, %81 ], [ %88, %87 ]
  call void @minmax_v3v3_v3(ptr noundef nonnull %4, ptr noundef nonnull %5, ptr noundef %90) #22
  %91 = add nuw nsw i32 %78, 1
  %92 = load i32, ptr %10, align 8, !tbaa !196
  %93 = icmp slt i32 %91, %92
  br i1 %93, label %76, label %94, !llvm.loop !642

94:                                               ; preds = %89, %69
  %95 = getelementptr inbounds %struct.ObjectRen, ptr %1, i64 0, i32 22
  %96 = load ptr, ptr %95, align 8, !tbaa !242
  %97 = icmp eq ptr %96, null
  br i1 %97, label %145, label %98

98:                                               ; preds = %94
  %99 = getelementptr inbounds %struct.StrandBuffer, ptr %96, i64 0, i32 11
  %100 = load i32, ptr %99, align 8, !tbaa !480
  %101 = and i32 %100, 2
  %102 = icmp eq i32 %101, 0
  br i1 %102, label %111, label %103

103:                                              ; preds = %98
  %104 = getelementptr inbounds %struct.StrandBuffer, ptr %96, i64 0, i32 7
  %105 = load ptr, ptr %104, align 8, !tbaa !470
  %106 = getelementptr inbounds %struct.Material, ptr %105, i64 0, i32 63
  %107 = load float, ptr %106, align 4, !tbaa !643
  %108 = getelementptr inbounds %struct.Material, ptr %105, i64 0, i32 64
  %109 = load float, ptr %108, align 8, !tbaa !644
  %110 = call fastcc float @max_ff(float noundef %107, float noundef %109) #23
  br label %111

111:                                              ; preds = %98, %103
  %112 = phi float [ %110, %103 ], [ 0.000000e+00, %98 ]
  %113 = getelementptr inbounds %struct.StrandBuffer, ptr %96, i64 0, i32 16
  store float %112, ptr %113, align 4
  %114 = load ptr, ptr %95, align 8, !tbaa !242
  %115 = getelementptr inbounds %struct.StrandBuffer, ptr %114, i64 0, i32 5
  %116 = load i32, ptr %115, align 4, !tbaa !486
  %117 = icmp sgt i32 %116, 0
  br i1 %117, label %118, label %145

118:                                              ; preds = %111
  %119 = getelementptr inbounds %struct.StrandBuffer, ptr %96, i64 0, i32 3
  %120 = load ptr, ptr %119, align 8, !tbaa !488
  %121 = getelementptr inbounds [3 x float], ptr %6, i64 0, i64 2
  %122 = getelementptr inbounds [3 x float], ptr %7, i64 0, i64 2
  br label %123

123:                                              ; preds = %118, %136
  %124 = phi i32 [ 0, %118 ], [ %139, %136 ]
  %125 = phi ptr [ %120, %118 ], [ %140, %136 ]
  store float 0x46293E5940000000, ptr %121, align 8, !tbaa !44
  store <2 x float> <float 0x46293E5940000000, float 0x46293E5940000000>, ptr %6, align 8, !tbaa !44
  store float 0xC6293E5940000000, ptr %122, align 8, !tbaa !44
  store <2 x float> <float 0xC6293E5940000000, float 0xC6293E5940000000>, ptr %7, align 8, !tbaa !44
  %126 = load i32, ptr %125, align 4, !tbaa !491
  %127 = getelementptr inbounds %struct.StrandBound, ptr %125, i64 0, i32 1
  %128 = load i32, ptr %127, align 4, !tbaa !489
  %129 = icmp slt i32 %126, %128
  br i1 %129, label %130, label %136

130:                                              ; preds = %123, %130
  %131 = phi i32 [ %133, %130 ], [ %126, %123 ]
  %132 = call ptr @RE_findOrAddStrand(ptr noundef %1, i32 noundef %131) #22
  call void @strand_minmax(ptr noundef %132, ptr noundef nonnull %6, ptr noundef nonnull %7, float noundef %112) #22
  %133 = add nsw i32 %131, 1
  %134 = load i32, ptr %127, align 4, !tbaa !489
  %135 = icmp slt i32 %133, %134
  br i1 %135, label %130, label %136, !llvm.loop !645

136:                                              ; preds = %130, %123
  %137 = getelementptr inbounds %struct.StrandBound, ptr %125, i64 0, i32 2
  call fastcc void @copy_v3_v3(ptr noundef nonnull %137, ptr noundef nonnull %6) #23
  %138 = getelementptr inbounds %struct.StrandBound, ptr %125, i64 0, i32 2, i64 1
  call fastcc void @copy_v3_v3(ptr noundef nonnull %138, ptr noundef nonnull %7) #23
  call void @minmax_v3v3_v3(ptr noundef nonnull %4, ptr noundef nonnull %5, ptr noundef nonnull %6) #22
  call void @minmax_v3v3_v3(ptr noundef nonnull %4, ptr noundef nonnull %5, ptr noundef nonnull %7) #22
  %139 = add nuw nsw i32 %124, 1
  %140 = getelementptr inbounds %struct.StrandBound, ptr %125, i64 1
  %141 = load ptr, ptr %95, align 8, !tbaa !242
  %142 = getelementptr inbounds %struct.StrandBuffer, ptr %141, i64 0, i32 5
  %143 = load i32, ptr %142, align 4, !tbaa !486
  %144 = icmp slt i32 %139, %143
  br i1 %144, label %123, label %145, !llvm.loop !646

145:                                              ; preds = %136, %111, %94
  %146 = getelementptr inbounds %struct.ObjectRen, ptr %1, i64 0, i32 9
  call fastcc void @copy_v3_v3(ptr noundef nonnull %146, ptr noundef nonnull %4) #23
  %147 = getelementptr inbounds %struct.ObjectRen, ptr %1, i64 0, i32 9, i64 1
  call fastcc void @copy_v3_v3(ptr noundef nonnull %147, ptr noundef nonnull %5) #23
  br label %148

148:                                              ; preds = %33, %145, %21
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %7) #24
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %6) #24
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %5) #24
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %4) #24
  ret void
}

; Function Attrs: optsize
declare float @BKE_scene_frame_get(ptr noundef) local_unnamed_addr #7

; Function Attrs: optsize
declare ptr @psys_get_modifier(ptr noundef, ptr noundef) local_unnamed_addr #7

; Function Attrs: optsize
declare void @psys_count_keyed_targets(ptr noundef) local_unnamed_addr #7

; Function Attrs: optsize
declare ptr @BLI_rng_new(i32 noundef) local_unnamed_addr #7

; Function Attrs: optsize
declare void @RE_set_customdata_names(ptr noundef, ptr noundef) local_unnamed_addr #7

; Function Attrs: optsize
declare i32 @CustomData_number_of_layers(ptr noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: optsize
declare i32 @CustomData_get_named_layer_index(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #7

; Function Attrs: optsize
declare i32 @CustomData_get_layer_index(ptr noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: optsize
declare i32 @CustomData_get_active_layer_index(ptr noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: optsize
declare void @transpose_m3(ptr noundef) local_unnamed_addr #7

; Function Attrs: mustprogress nofree nounwind optsize willreturn memory(write)
declare double @pow(double noundef, double noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @get_object_orco(ptr nocapture noundef readonly %0, ptr noundef %1) unnamed_addr #4 !PGOFuncName !647 {
  %3 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 73
  %4 = load ptr, ptr %3, align 8, !tbaa !119
  %5 = icmp eq ptr %4, null
  br i1 %5, label %8, label %6

6:                                                ; preds = %2
  %7 = tail call ptr @BLI_ghash_lookup(ptr noundef nonnull %4, ptr noundef %1) #22
  br label %8

8:                                                ; preds = %2, %6
  %9 = phi ptr [ %7, %6 ], [ null, %2 ]
  ret ptr %9
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @set_object_orco(ptr nocapture noundef %0, ptr noundef %1, ptr noundef %2) unnamed_addr #4 !PGOFuncName !648 {
  %4 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 73
  %5 = load ptr, ptr %4, align 8, !tbaa !119
  %6 = icmp eq ptr %5, null
  br i1 %6, label %7, label %9

7:                                                ; preds = %3
  %8 = tail call ptr @BLI_ghash_ptr_new(ptr noundef nonnull @.str.18) #22
  store ptr %8, ptr %4, align 8, !tbaa !119
  br label %9

9:                                                ; preds = %7, %3
  %10 = phi ptr [ %8, %7 ], [ %5, %3 ]
  tail call void @BLI_ghash_insert(ptr noundef %10, ptr noundef %1, ptr noundef %2) #22
  ret void
}

; Function Attrs: optsize
declare ptr @RE_addStrandBuffer(ptr noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define internal fastcc noundef i32 @max_ii(i32 noundef %0, i32 noundef %1) unnamed_addr #14 !PGOFuncName !649 {
  %3 = tail call i32 @llvm.smax.i32(i32 %1, i32 %0)
  ret i32 %3
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc i32 @DM_origindex_mface_mpoly(ptr nocapture noundef readonly %0, ptr noundef readonly %1, i32 noundef %2) unnamed_addr #12 !PGOFuncName !650 {
  %4 = sext i32 %2 to i64
  %5 = getelementptr inbounds i32, ptr %0, i64 %4
  %6 = load i32, ptr %5, align 4, !tbaa !78
  %7 = icmp eq i32 %6, -1
  br i1 %7, label %14, label %8

8:                                                ; preds = %3
  %9 = icmp eq ptr %1, null
  br i1 %9, label %14, label %10

10:                                               ; preds = %8
  %11 = sext i32 %6 to i64
  %12 = getelementptr inbounds i32, ptr %1, i64 %11
  %13 = load i32, ptr %12, align 4, !tbaa !78
  br label %14

14:                                               ; preds = %8, %3, %10
  %15 = phi i32 [ %13, %10 ], [ -1, %3 ], [ %6, %8 ]
  ret i32 %15
}

; Function Attrs: optsize
declare ptr @psys_create_lattice_deform_data(ptr noundef) local_unnamed_addr #7

; Function Attrs: optsize
declare float @BLI_rng_get_float(ptr noundef) local_unnamed_addr #7

; Function Attrs: optsize
declare void @psys_particle_on_emitter(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, float noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #7

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @get_particle_uvco_mcol(i16 noundef signext %0, ptr noundef %1, ptr noundef %2, i32 noundef %3, ptr nocapture noundef readonly %4) unnamed_addr #4 !PGOFuncName !651 {
  %6 = getelementptr inbounds %struct.ParticleStrandData, ptr %4, i64 0, i32 2
  %7 = load ptr, ptr %6, align 8, !tbaa !448
  %8 = icmp ne ptr %7, null
  %9 = add i16 %0, -1
  %10 = icmp ult i16 %9, 2
  %11 = and i1 %10, %8
  br i1 %11, label %12, label %45

12:                                               ; preds = %5
  %13 = getelementptr inbounds %struct.ParticleStrandData, ptr %4, i64 0, i32 8
  %14 = load i32, ptr %13, align 8, !tbaa !446
  %15 = icmp sgt i32 %14, 0
  br i1 %15, label %16, label %45

16:                                               ; preds = %12
  %17 = icmp eq i32 %3, -1
  %18 = getelementptr inbounds %struct.DerivedMesh, ptr %1, i64 0, i32 48
  %19 = getelementptr inbounds %struct.DerivedMesh, ptr %1, i64 0, i32 2
  %20 = sext i32 %3 to i64
  br label %21

21:                                               ; preds = %16, %40
  %22 = phi i32 [ %14, %16 ], [ %41, %40 ]
  %23 = phi i64 [ 0, %16 ], [ %42, %40 ]
  br i1 %17, label %36, label %24

24:                                               ; preds = %21
  %25 = load ptr, ptr %18, align 8, !tbaa !652
  %26 = tail call ptr %25(ptr noundef %1, i32 noundef %3, i32 noundef 4) #22
  %27 = trunc i64 %23 to i32
  %28 = tail call ptr @CustomData_get_layer_n(ptr noundef nonnull %19, i32 noundef 5, i32 noundef %27) #22
  %29 = getelementptr inbounds %struct.MTFace, ptr %28, i64 %20
  %30 = getelementptr inbounds %struct.MFace, ptr %26, i64 0, i32 3
  %31 = load i32, ptr %30, align 4, !tbaa !607
  %32 = load ptr, ptr %6, align 8, !tbaa !448
  %33 = shl nuw nsw i64 %23, 1
  %34 = getelementptr inbounds float, ptr %32, i64 %33
  tail call void @psys_interpolate_uvs(ptr noundef %29, i32 noundef %31, ptr noundef %2, ptr noundef %34) #22
  %35 = load i32, ptr %13, align 8, !tbaa !446
  br label %40

36:                                               ; preds = %21
  %37 = load ptr, ptr %6, align 8, !tbaa !448
  %38 = shl nuw nsw i64 %23, 1
  %39 = getelementptr inbounds float, ptr %37, i64 %38
  store <2 x float> zeroinitializer, ptr %39, align 4, !tbaa !44
  br label %40

40:                                               ; preds = %24, %36
  %41 = phi i32 [ %35, %24 ], [ %22, %36 ]
  %42 = add nuw nsw i64 %23, 1
  %43 = sext i32 %41 to i64
  %44 = icmp slt i64 %42, %43
  br i1 %44, label %21, label %45, !llvm.loop !653

45:                                               ; preds = %40, %12, %5
  %46 = load ptr, ptr %4, align 8, !tbaa !449
  %47 = icmp ne ptr %46, null
  %48 = and i1 %10, %47
  br i1 %48, label %49, label %79

49:                                               ; preds = %45
  %50 = getelementptr inbounds %struct.ParticleStrandData, ptr %4, i64 0, i32 9
  %51 = load i32, ptr %50, align 4, !tbaa !447
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
  %62 = load ptr, ptr %55, align 8, !tbaa !652
  %63 = tail call ptr %62(ptr noundef %1, i32 noundef %3, i32 noundef 4) #22
  %64 = trunc i64 %60 to i32
  %65 = tail call ptr @CustomData_get_layer_n(ptr noundef nonnull %56, i32 noundef 6, i32 noundef %64) #22
  %66 = getelementptr inbounds %struct.MCol, ptr %65, i64 %58
  %67 = getelementptr inbounds %struct.MFace, ptr %63, i64 0, i32 3
  %68 = load i32, ptr %67, align 4, !tbaa !607
  %69 = load ptr, ptr %4, align 8, !tbaa !449
  %70 = getelementptr inbounds %struct.MCol, ptr %69, i64 %60
  tail call void @psys_interpolate_mcol(ptr noundef %66, i32 noundef %68, ptr noundef %2, ptr noundef %70) #22
  br label %74

71:                                               ; preds = %59
  %72 = load ptr, ptr %4, align 8, !tbaa !449
  %73 = getelementptr inbounds %struct.MCol, ptr %72, i64 %60
  store i32 0, ptr %73, align 1
  br label %74

74:                                               ; preds = %61, %71
  %75 = add nuw nsw i64 %60, 1
  %76 = load i32, ptr %50, align 4, !tbaa !447
  %77 = sext i32 %76 to i64
  %78 = icmp slt i64 %75, %77
  br i1 %78, label %59, label %79, !llvm.loop !654

79:                                               ; preds = %74, %49, %45
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define internal fastcc float @psys_frand(ptr nocapture noundef readonly %0, i32 noundef %1) unnamed_addr #16 !PGOFuncName !655 {
  %3 = getelementptr inbounds %struct.ParticleSystem, ptr %0, i64 0, i32 23
  %4 = load i32, ptr %3, align 4, !tbaa !438
  %5 = srem i32 %4, 1024
  %6 = sext i32 %5 to i64
  %7 = getelementptr inbounds [1024 x i32], ptr @PSYS_FRAND_SEED_OFFSET, i64 0, i64 %6
  %8 = load i32, ptr %7, align 4, !tbaa !78
  %9 = getelementptr inbounds [1024 x i32], ptr @PSYS_FRAND_SEED_MULTIPLIER, i64 0, i64 %6
  %10 = load i32, ptr %9, align 4, !tbaa !78
  %11 = mul i32 %10, %1
  %12 = add i32 %11, %8
  %13 = and i32 %12, 1023
  %14 = zext nneg i32 %13 to i64
  %15 = getelementptr inbounds [1024 x float], ptr @PSYS_FRAND_BASE, i64 0, i64 %14
  %16 = load float, ptr %15, align 4, !tbaa !44
  ret float %16
}

; Function Attrs: optsize
declare float @psys_get_child_time(ptr noundef, ptr noundef, float noundef, ptr noundef, ptr noundef) local_unnamed_addr #7

; Function Attrs: optsize
declare float @psys_get_child_size(ptr noundef, ptr noundef, float noundef, ptr noundef) local_unnamed_addr #7

; Function Attrs: optsize
declare zeroext i8 @psys_render_simplify_params(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #7

; Function Attrs: optsize
declare ptr @RE_findOrAddStrand(ptr noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: optsize
declare ptr @RE_strandren_get_simplify(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: optsize
declare ptr @RE_strandren_get_surfnor(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: optsize
declare ptr @RE_strandren_get_face(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: optsize
declare ptr @RE_strandren_get_uv(ptr noundef, ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: optsize
declare ptr @RE_strandren_get_mcol(ptr noundef, ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: mustprogress nofree noinline nounwind optsize willreturn memory(write, argmem: readwrite) uwtable
define internal fastcc float @len_v3v3(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) unnamed_addr #0 !PGOFuncName !656 {
  %3 = alloca [3 x float], align 4
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %3) #24
  call fastcc void @sub_v3_v3v3(ptr noundef nonnull %3, ptr noundef %1, ptr noundef %0) #23
  %4 = call fastcc float @len_v3(ptr noundef nonnull %3) #23
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %3) #24
  ret float %4
}

; Function Attrs: optsize
declare void @mul_m4_v3(ptr noundef, ptr noundef) local_unnamed_addr #7

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @sub_v3_v3v3(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2) unnamed_addr #6 !PGOFuncName !657 {
  %4 = load float, ptr %1, align 4, !tbaa !44
  %5 = load float, ptr %2, align 4, !tbaa !44
  %6 = fsub float %4, %5
  store float %6, ptr %0, align 4, !tbaa !44
  %7 = getelementptr inbounds float, ptr %1, i64 1
  %8 = load float, ptr %7, align 4, !tbaa !44
  %9 = getelementptr inbounds float, ptr %2, i64 1
  %10 = load float, ptr %9, align 4, !tbaa !44
  %11 = fsub float %8, %10
  %12 = getelementptr inbounds float, ptr %0, i64 1
  store float %11, ptr %12, align 4, !tbaa !44
  %13 = getelementptr inbounds float, ptr %1, i64 2
  %14 = load float, ptr %13, align 4, !tbaa !44
  %15 = getelementptr inbounds float, ptr %2, i64 2
  %16 = load float, ptr %15, align 4, !tbaa !44
  %17 = fsub float %14, %16
  %18 = getelementptr inbounds float, ptr %0, i64 2
  store float %17, ptr %18, align 4, !tbaa !44
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @add_v3_v3v3(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2) unnamed_addr #6 !PGOFuncName !658 {
  %4 = load float, ptr %1, align 4, !tbaa !44
  %5 = load float, ptr %2, align 4, !tbaa !44
  %6 = fadd float %4, %5
  store float %6, ptr %0, align 4, !tbaa !44
  %7 = getelementptr inbounds float, ptr %1, i64 1
  %8 = load float, ptr %7, align 4, !tbaa !44
  %9 = getelementptr inbounds float, ptr %2, i64 1
  %10 = load float, ptr %9, align 4, !tbaa !44
  %11 = fadd float %8, %10
  %12 = getelementptr inbounds float, ptr %0, i64 1
  store float %11, ptr %12, align 4, !tbaa !44
  %13 = getelementptr inbounds float, ptr %1, i64 2
  %14 = load float, ptr %13, align 4, !tbaa !44
  %15 = getelementptr inbounds float, ptr %2, i64 2
  %16 = load float, ptr %15, align 4, !tbaa !44
  %17 = fadd float %14, %16
  %18 = getelementptr inbounds float, ptr %0, i64 2
  store float %17, ptr %18, align 4, !tbaa !44
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @particle_curve(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr nocapture noundef readonly %4, ptr noundef %5, ptr noundef %6, i32 noundef %7, ptr noundef %8) unnamed_addr #4 !PGOFuncName !659 {
  %10 = getelementptr inbounds %struct.Material, ptr %3, i64 0, i32 2
  %11 = load i16, ptr %10, align 8, !tbaa !294
  switch i16 %11, label %32 [
    i16 3, label %12
    i16 1, label %17
  ]

12:                                               ; preds = %9
  %13 = getelementptr inbounds %struct.ParticleStrandData, ptr %4, i64 0, i32 10
  %14 = load i32, ptr %13, align 8, !tbaa !522
  %15 = getelementptr inbounds %struct.ParticleStrandData, ptr %4, i64 0, i32 11
  %16 = load i32, ptr %15, align 4, !tbaa !660
  tail call fastcc void @static_particle_wire(ptr noundef %1, ptr noundef nonnull %3, ptr noundef %5, ptr noundef %6, i32 noundef %14, i32 noundef %16) #23
  br label %33

17:                                               ; preds = %9
  %18 = getelementptr inbounds %struct.ParticleStrandData, ptr %4, i64 0, i32 1
  %19 = load ptr, ptr %18, align 8, !tbaa !464
  %20 = getelementptr inbounds %struct.ParticleStrandData, ptr %4, i64 0, i32 2
  %21 = load ptr, ptr %20, align 8, !tbaa !448
  %22 = getelementptr inbounds %struct.ParticleStrandData, ptr %4, i64 0, i32 7
  %23 = load float, ptr %22, align 4, !tbaa !521
  %24 = tail call ptr @RE_inithalo_particle(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef nonnull %3, ptr noundef %5, ptr noundef %6, ptr noundef %19, ptr noundef %21, float noundef %23, float noundef 1.000000e+00, i32 noundef %7, ptr noundef %8) #22
  %25 = icmp eq ptr %24, null
  br i1 %25, label %33, label %26

26:                                               ; preds = %17
  %27 = getelementptr inbounds %struct.ObjectRen, ptr %1, i64 0, i32 2
  %28 = load ptr, ptr %27, align 8, !tbaa !232
  %29 = getelementptr inbounds %struct.Object, ptr %28, i64 0, i32 52
  %30 = load i32, ptr %29, align 8, !tbaa !154
  %31 = getelementptr inbounds %struct.HaloRen, ptr %24, i64 0, i32 28
  store i32 %30, ptr %31, align 8, !tbaa !661
  br label %33

32:                                               ; preds = %9
  tail call fastcc void @static_particle_strand(ptr noundef %0, ptr noundef %1, ptr noundef nonnull %3, ptr noundef %4, ptr noundef %5, ptr noundef %6) #23
  br label %33

33:                                               ; preds = %32, %26, %17, %12
  ret void
}

; Function Attrs: optsize
declare void @psys_make_temp_pointcache(ptr noundef, ptr noundef) local_unnamed_addr #7

; Function Attrs: optsize
declare void @psys_get_particle_on_path(ptr noundef, i32 noundef, ptr noundef, i8 noundef zeroext) local_unnamed_addr #7

; Function Attrs: optsize
declare void @mul_m4_v4(ptr noundef, ptr noundef) local_unnamed_addr #7

; Function Attrs: mustprogress nofree noinline nounwind optsize willreturn memory(write, argmem: readwrite) uwtable
define internal fastcc float @len_v3(ptr nocapture noundef readonly %0) unnamed_addr #0 !PGOFuncName !663 {
  %2 = tail call fastcc float @dot_v3v3(ptr noundef %0, ptr noundef %0) #23
  %3 = tail call float @sqrtf(float noundef %2) #22
  ret float %3
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @particle_normal_ren(i16 noundef signext %0, ptr nocapture noundef readonly %1, ptr noundef %2, ptr noundef %3, ptr noundef %4, ptr noundef %5, ptr nocapture noundef %6, ptr noundef %7, ptr nocapture noundef readonly %8, i32 noundef %9, float noundef %10, ptr noundef %11) unnamed_addr #4 !PGOFuncName !664 {
  %13 = alloca [3 x float], align 4
  %14 = alloca [3 x float], align 4
  %15 = alloca [3 x float], align 4
  %16 = alloca [3 x float], align 4
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %13) #24
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %14) #24
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %15) #24
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %16) #24
  call fastcc void @copy_v3_v3(ptr noundef nonnull %13, ptr noundef %8) #23
  %17 = icmp eq i16 %0, 9
  br i1 %17, label %38, label %18

18:                                               ; preds = %12
  %19 = getelementptr inbounds %struct.Render, ptr %2, i64 0, i32 32
  call void @mul_m4_v3(ptr noundef nonnull %19, ptr noundef nonnull %13) #22
  %20 = icmp eq i16 %0, 5
  br i1 %20, label %21, label %42

21:                                               ; preds = %18
  %22 = getelementptr inbounds %struct.ParticleStrandData, ptr %6, i64 0, i32 11
  store i32 1, ptr %22, align 4, !tbaa !660
  %23 = getelementptr inbounds %struct.ParticleStrandData, ptr %6, i64 0, i32 4
  store float 0.000000e+00, ptr %23, align 8, !tbaa !523
  %24 = getelementptr inbounds %struct.ParticleStrandData, ptr %6, i64 0, i32 7
  store float %10, ptr %24, align 4, !tbaa !521
  %25 = getelementptr inbounds %struct.ParticleKey, ptr %8, i64 0, i32 1
  call fastcc void @copy_v3_v3(ptr noundef nonnull %16, ptr noundef nonnull %25) #23
  call void @mul_mat3_m4_v3(ptr noundef nonnull %19, ptr noundef nonnull %16) #22
  call fastcc void @normalize_v3(ptr noundef nonnull %16) #23
  %26 = getelementptr inbounds %struct.ParticleSettings, ptr %1, i64 0, i32 15
  %27 = load i32, ptr %26, align 8, !tbaa !395
  %28 = and i32 %27, 4096
  %29 = icmp eq i32 %28, 0
  br i1 %29, label %32, label %30

30:                                               ; preds = %21
  %31 = call fastcc float @len_v3(ptr noundef nonnull %25) #23
  call fastcc void @mul_v3_fl(ptr noundef nonnull %16, float noundef %31) #23
  br label %32

32:                                               ; preds = %30, %21
  %33 = getelementptr inbounds %struct.ParticleSettings, ptr %1, i64 0, i32 116
  %34 = load float, ptr %33, align 8, !tbaa !44
  %35 = fneg float %34
  call fastcc void @madd_v3_v3v3fl(ptr noundef nonnull %14, ptr noundef nonnull %13, ptr noundef nonnull %16, float noundef %35) #23
  %36 = getelementptr inbounds %struct.ParticleSettings, ptr %1, i64 0, i32 116, i64 1
  %37 = load float, ptr %36, align 4, !tbaa !44
  call fastcc void @madd_v3_v3v3fl(ptr noundef nonnull %15, ptr noundef nonnull %13, ptr noundef nonnull %16, float noundef %37) #23
  call fastcc void @particle_curve(ptr noundef %2, ptr noundef %3, ptr noundef %4, ptr noundef %5, ptr noundef nonnull %6, ptr noundef nonnull %14, ptr noundef nonnull %15, i32 noundef %9, ptr noundef %11) #23
  br label %55

38:                                               ; preds = %12
  %39 = getelementptr inbounds %struct.ParticleBillboardData, ptr %7, i64 0, i32 1
  call fastcc void @copy_v3_v3(ptr noundef nonnull %39, ptr noundef nonnull %13) #23
  %40 = getelementptr inbounds %struct.ParticleBillboardData, ptr %7, i64 0, i32 2
  %41 = getelementptr inbounds %struct.ParticleKey, ptr %8, i64 0, i32 1
  tail call fastcc void @copy_v3_v3(ptr noundef nonnull %40, ptr noundef nonnull %41) #23
  tail call fastcc void @particle_billboard(ptr noundef %2, ptr noundef %3, ptr noundef %5, ptr noundef %7) #23
  br label %55

42:                                               ; preds = %18
  %43 = getelementptr inbounds %struct.ParticleStrandData, ptr %6, i64 0, i32 1
  %44 = load ptr, ptr %43, align 8, !tbaa !464
  %45 = getelementptr inbounds %struct.ParticleStrandData, ptr %6, i64 0, i32 2
  %46 = load ptr, ptr %45, align 8, !tbaa !448
  %47 = call ptr @RE_inithalo_particle(ptr noundef %2, ptr noundef %3, ptr noundef %4, ptr noundef %5, ptr noundef nonnull %13, ptr noundef null, ptr noundef %44, ptr noundef %46, float noundef %10, float noundef 0.000000e+00, i32 noundef %9, ptr noundef %11) #22
  %48 = icmp eq ptr %47, null
  br i1 %48, label %55, label %49

49:                                               ; preds = %42
  %50 = getelementptr inbounds %struct.ObjectRen, ptr %3, i64 0, i32 2
  %51 = load ptr, ptr %50, align 8, !tbaa !232
  %52 = getelementptr inbounds %struct.Object, ptr %51, i64 0, i32 52
  %53 = load i32, ptr %52, align 8, !tbaa !154
  %54 = getelementptr inbounds %struct.HaloRen, ptr %47, i64 0, i32 28
  store i32 %53, ptr %54, align 8, !tbaa !661
  br label %55

55:                                               ; preds = %42, %49, %38, %32
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %16) #24
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %15) #24
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %14) #24
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %13) #24
  ret void
}

; Function Attrs: optsize
declare i32 @psys_get_particle_state(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: optsize
declare ptr @cache_strand_surface(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: optsize
declare void @BLI_rng_free(ptr noundef) local_unnamed_addr #7

; Function Attrs: optsize
declare void @end_latt_deform(ptr noundef) local_unnamed_addr #7

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @calc_vertexnormals(ptr noundef %0, i8 noundef zeroext %1, i8 noundef zeroext %2, i8 noundef zeroext %3) unnamed_addr #4 !PGOFuncName !665 {
  %5 = alloca %struct.SRenderMeshToTangent, align 8
  %6 = alloca %struct.SMikkTSpaceContext, align 8
  %7 = alloca %struct.SMikkTSpaceInterface, align 8
  %8 = icmp eq i8 %1, 0
  br i1 %8, label %21, label %9

9:                                                ; preds = %4
  %10 = getelementptr inbounds %struct.ObjectRen, ptr %0, i64 0, i32 10
  %11 = load i32, ptr %10, align 8, !tbaa !196
  %12 = icmp sgt i32 %11, 0
  br i1 %12, label %13, label %21

13:                                               ; preds = %9, %13
  %14 = phi i32 [ %18, %13 ], [ 0, %9 ]
  %15 = tail call ptr @RE_findOrAddVert(ptr noundef nonnull %0, i32 noundef %14) #22
  %16 = getelementptr inbounds %struct.VertRen, ptr %15, i64 0, i32 1
  %17 = getelementptr inbounds %struct.VertRen, ptr %15, i64 0, i32 1, i64 2
  store float 0.000000e+00, ptr %17, align 4, !tbaa !44
  store <2 x float> zeroinitializer, ptr %16, align 4, !tbaa !44
  %18 = add nuw nsw i32 %14, 1
  %19 = load i32, ptr %10, align 8, !tbaa !196
  %20 = icmp slt i32 %18, %19
  br i1 %20, label %13, label %21, !llvm.loop !666

21:                                               ; preds = %13, %9, %4
  %22 = getelementptr inbounds %struct.ObjectRen, ptr %0, i64 0, i32 11
  %23 = load i32, ptr %22, align 4, !tbaa !555
  %24 = icmp sgt i32 %23, 0
  br i1 %24, label %25, label %58

25:                                               ; preds = %21
  %26 = icmp eq i8 %2, 0
  br label %29

27:                                               ; preds = %54
  %28 = icmp sgt i32 %56, 0
  br i1 %28, label %64, label %58

29:                                               ; preds = %25, %54
  %30 = phi i32 [ 0, %25 ], [ %55, %54 ]
  %31 = tail call ptr @RE_findOrAddVlak(ptr noundef nonnull %0, i32 noundef %30) #22
  br i1 %8, label %52, label %32

32:                                               ; preds = %29
  %33 = getelementptr inbounds %struct.VlakRen, ptr %31, i64 0, i32 7
  %34 = load i8, ptr %33, align 1, !tbaa !564
  %35 = and i8 %34, 1
  %36 = icmp eq i8 %35, 0
  br i1 %36, label %52, label %37

37:                                               ; preds = %32
  %38 = getelementptr inbounds %struct.VlakRen, ptr %31, i64 0, i32 3
  %39 = load ptr, ptr %38, align 8, !tbaa !562
  %40 = icmp eq ptr %39, null
  %41 = getelementptr inbounds %struct.VertRen, ptr %39, i64 0, i32 1
  %42 = select i1 %40, ptr null, ptr %41
  %43 = load ptr, ptr %31, align 8, !tbaa !558
  %44 = getelementptr inbounds %struct.VertRen, ptr %43, i64 0, i32 1
  %45 = getelementptr inbounds %struct.VlakRen, ptr %31, i64 0, i32 1
  %46 = load ptr, ptr %45, align 8, !tbaa !560
  %47 = getelementptr inbounds %struct.VertRen, ptr %46, i64 0, i32 1
  %48 = getelementptr inbounds %struct.VlakRen, ptr %31, i64 0, i32 2
  %49 = load ptr, ptr %48, align 8, !tbaa !561
  %50 = getelementptr inbounds %struct.VertRen, ptr %49, i64 0, i32 1
  %51 = getelementptr inbounds %struct.VlakRen, ptr %31, i64 0, i32 4
  tail call void @accumulate_vertex_normals(ptr noundef nonnull %44, ptr noundef nonnull %47, ptr noundef nonnull %50, ptr noundef %42, ptr noundef nonnull %51, ptr noundef %43, ptr noundef %46, ptr noundef %49, ptr noundef %39) #22
  br label %52

52:                                               ; preds = %37, %32, %29
  br i1 %26, label %54, label %53

53:                                               ; preds = %52
  tail call fastcc void @calc_tangent_vector(ptr noundef %0, ptr noundef %31) #23
  br label %54

54:                                               ; preds = %53, %52
  %55 = add nuw nsw i32 %30, 1
  %56 = load i32, ptr %22, align 4, !tbaa !555
  %57 = icmp slt i32 %55, %56
  br i1 %57, label %29, label %27, !llvm.loop !667

58:                                               ; preds = %105, %21, %27
  %59 = getelementptr inbounds %struct.ObjectRen, ptr %0, i64 0, i32 10
  %60 = load i32, ptr %59, align 8, !tbaa !196
  %61 = icmp sgt i32 %60, 0
  br i1 %61, label %62, label %138

62:                                               ; preds = %58
  %63 = icmp eq i8 %2, 0
  br label %109

64:                                               ; preds = %27, %105
  %65 = phi i32 [ %106, %105 ], [ 0, %27 ]
  %66 = tail call ptr @RE_findOrAddVlak(ptr noundef nonnull %0, i32 noundef %65) #22
  br i1 %8, label %105, label %67

67:                                               ; preds = %64
  %68 = getelementptr inbounds %struct.VlakRen, ptr %66, i64 0, i32 7
  %69 = load i8, ptr %68, align 1, !tbaa !564
  %70 = and i8 %69, 1
  %71 = icmp eq i8 %70, 0
  br i1 %71, label %72, label %105

72:                                               ; preds = %67
  %73 = load ptr, ptr %66, align 8, !tbaa !558
  %74 = getelementptr inbounds %struct.VertRen, ptr %73, i64 0, i32 1
  %75 = tail call fastcc zeroext i8 @is_zero_v3(ptr noundef nonnull %74) #23, !range !144
  %76 = icmp eq i8 %75, 0
  br i1 %76, label %79, label %77

77:                                               ; preds = %72
  %78 = getelementptr inbounds %struct.VlakRen, ptr %66, i64 0, i32 4
  tail call fastcc void @copy_v3_v3(ptr noundef nonnull %74, ptr noundef nonnull %78) #23
  br label %79

79:                                               ; preds = %77, %72
  %80 = getelementptr inbounds %struct.VlakRen, ptr %66, i64 0, i32 1
  %81 = load ptr, ptr %80, align 8, !tbaa !560
  %82 = getelementptr inbounds %struct.VertRen, ptr %81, i64 0, i32 1
  %83 = tail call fastcc zeroext i8 @is_zero_v3(ptr noundef nonnull %82) #23, !range !144
  %84 = icmp eq i8 %83, 0
  br i1 %84, label %87, label %85

85:                                               ; preds = %79
  %86 = getelementptr inbounds %struct.VlakRen, ptr %66, i64 0, i32 4
  tail call fastcc void @copy_v3_v3(ptr noundef nonnull %82, ptr noundef nonnull %86) #23
  br label %87

87:                                               ; preds = %85, %79
  %88 = getelementptr inbounds %struct.VlakRen, ptr %66, i64 0, i32 2
  %89 = load ptr, ptr %88, align 8, !tbaa !561
  %90 = getelementptr inbounds %struct.VertRen, ptr %89, i64 0, i32 1
  %91 = tail call fastcc zeroext i8 @is_zero_v3(ptr noundef nonnull %90) #23, !range !144
  %92 = icmp eq i8 %91, 0
  br i1 %92, label %95, label %93

93:                                               ; preds = %87
  %94 = getelementptr inbounds %struct.VlakRen, ptr %66, i64 0, i32 4
  tail call fastcc void @copy_v3_v3(ptr noundef nonnull %90, ptr noundef nonnull %94) #23
  br label %95

95:                                               ; preds = %93, %87
  %96 = getelementptr inbounds %struct.VlakRen, ptr %66, i64 0, i32 3
  %97 = load ptr, ptr %96, align 8, !tbaa !562
  %98 = icmp eq ptr %97, null
  br i1 %98, label %105, label %99

99:                                               ; preds = %95
  %100 = getelementptr inbounds %struct.VertRen, ptr %97, i64 0, i32 1
  %101 = tail call fastcc zeroext i8 @is_zero_v3(ptr noundef nonnull %100) #23, !range !144
  %102 = icmp eq i8 %101, 0
  br i1 %102, label %105, label %103

103:                                              ; preds = %99
  %104 = getelementptr inbounds %struct.VlakRen, ptr %66, i64 0, i32 4
  tail call fastcc void @copy_v3_v3(ptr noundef nonnull %100, ptr noundef nonnull %104) #23
  br label %105

105:                                              ; preds = %95, %99, %103, %67, %64
  %106 = add nuw nsw i32 %65, 1
  %107 = load i32, ptr %22, align 4, !tbaa !555
  %108 = icmp slt i32 %106, %107
  br i1 %108, label %64, label %58, !llvm.loop !668

109:                                              ; preds = %62, %134
  %110 = phi i32 [ 0, %62 ], [ %135, %134 ]
  %111 = tail call ptr @RE_findOrAddVert(ptr noundef nonnull %0, i32 noundef %110) #22
  %112 = getelementptr inbounds %struct.VertRen, ptr %111, i64 0, i32 1
  tail call fastcc void @normalize_v3(ptr noundef nonnull %112) #23
  br i1 %63, label %134, label %113

113:                                              ; preds = %109
  %114 = tail call ptr @RE_vertren_get_tangent(ptr noundef nonnull %0, ptr noundef %111, i32 noundef 0) #22
  %115 = icmp eq ptr %114, null
  br i1 %115, label %134, label %116

116:                                              ; preds = %113
  %117 = tail call fastcc float @dot_v3v3(ptr noundef nonnull %114, ptr noundef nonnull %112) #23
  %118 = load float, ptr %112, align 4, !tbaa !44
  %119 = load float, ptr %114, align 4, !tbaa !44
  %120 = fneg float %118
  %121 = tail call float @llvm.fmuladd.f32(float %120, float %117, float %119)
  store float %121, ptr %114, align 4, !tbaa !44
  %122 = getelementptr inbounds %struct.VertRen, ptr %111, i64 0, i32 1, i64 1
  %123 = load float, ptr %122, align 4, !tbaa !44
  %124 = getelementptr inbounds float, ptr %114, i64 1
  %125 = load float, ptr %124, align 4, !tbaa !44
  %126 = fneg float %123
  %127 = tail call float @llvm.fmuladd.f32(float %126, float %117, float %125)
  store float %127, ptr %124, align 4, !tbaa !44
  %128 = getelementptr inbounds %struct.VertRen, ptr %111, i64 0, i32 1, i64 2
  %129 = load float, ptr %128, align 4, !tbaa !44
  %130 = getelementptr inbounds float, ptr %114, i64 2
  %131 = load float, ptr %130, align 4, !tbaa !44
  %132 = fneg float %129
  %133 = tail call float @llvm.fmuladd.f32(float %132, float %117, float %131)
  store float %133, ptr %130, align 4, !tbaa !44
  tail call fastcc void @normalize_v3(ptr noundef nonnull %114) #23
  br label %134

134:                                              ; preds = %113, %116, %109
  %135 = add nuw nsw i32 %110, 1
  %136 = load i32, ptr %59, align 8, !tbaa !196
  %137 = icmp slt i32 %135, %136
  br i1 %137, label %109, label %138, !llvm.loop !669

138:                                              ; preds = %134, %58
  %139 = icmp eq i8 %3, 0
  br i1 %139, label %149, label %140

140:                                              ; preds = %138
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #24
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %6) #24
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %7) #24
  %141 = getelementptr inbounds i8, ptr %7, i64 48
  store i64 0, ptr %141, align 8
  store ptr %0, ptr %5, align 8, !tbaa !670
  %142 = getelementptr inbounds %struct.SMikkTSpaceContext, ptr %6, i64 0, i32 1
  store ptr %5, ptr %142, align 8, !tbaa !672
  store ptr %7, ptr %6, align 8, !tbaa !674
  store ptr @GetNumFaces, ptr %7, align 8, !tbaa !675
  %143 = getelementptr inbounds %struct.SMikkTSpaceInterface, ptr %7, i64 0, i32 1
  store ptr @GetNumVertsOfFace, ptr %143, align 8, !tbaa !677
  %144 = getelementptr inbounds %struct.SMikkTSpaceInterface, ptr %7, i64 0, i32 2
  store ptr @GetPosition, ptr %144, align 8, !tbaa !678
  %145 = getelementptr inbounds %struct.SMikkTSpaceInterface, ptr %7, i64 0, i32 4
  store ptr @GetTextureCoordinate, ptr %145, align 8, !tbaa !679
  %146 = getelementptr inbounds %struct.SMikkTSpaceInterface, ptr %7, i64 0, i32 3
  store ptr @GetNormal, ptr %146, align 8, !tbaa !680
  %147 = getelementptr inbounds %struct.SMikkTSpaceInterface, ptr %7, i64 0, i32 5
  store ptr @SetTSpace, ptr %147, align 8, !tbaa !681
  %148 = call i32 @genTangSpaceDefault(ptr noundef nonnull %6) #22
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %7) #24
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %6) #24
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #24
  br label %149

149:                                              ; preds = %140, %138
  ret void
}

; Function Attrs: optsize
declare ptr @BLI_ghash_lookup(ptr noundef, ptr noundef) local_unnamed_addr #7

; Function Attrs: optsize
declare ptr @BLI_ghash_ptr_new(ptr noundef) local_unnamed_addr #7

; Function Attrs: optsize
declare void @BLI_ghash_insert(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #7

; Function Attrs: optsize
declare ptr @CustomData_get_layer_n(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: optsize
declare void @psys_interpolate_uvs(ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #7

; Function Attrs: optsize
declare void @psys_interpolate_mcol(ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #7

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @static_particle_wire(ptr noundef %0, ptr noundef %1, ptr nocapture noundef readonly %2, ptr nocapture noundef readonly %3, i32 noundef %4, i32 noundef %5) unnamed_addr #4 !PGOFuncName !682 {
  %7 = icmp eq i32 %5, 0
  br i1 %7, label %32, label %8

8:                                                ; preds = %6
  %9 = getelementptr inbounds %struct.ObjectRen, ptr %0, i64 0, i32 11
  %10 = load i32, ptr %9, align 4, !tbaa !555
  %11 = add nsw i32 %10, 1
  store i32 %11, ptr %9, align 4, !tbaa !555
  %12 = tail call ptr @RE_findOrAddVlak(ptr noundef %0, i32 noundef %10) #22
  %13 = getelementptr inbounds %struct.ObjectRen, ptr %0, i64 0, i32 10
  %14 = load i32, ptr %13, align 8, !tbaa !196
  %15 = add nsw i32 %14, 1
  store i32 %15, ptr %13, align 8, !tbaa !196
  %16 = tail call ptr @RE_findOrAddVert(ptr noundef %0, i32 noundef %14) #22
  store ptr %16, ptr %12, align 8, !tbaa !558
  %17 = load i32, ptr %13, align 8, !tbaa !196
  %18 = add nsw i32 %17, 1
  store i32 %18, ptr %13, align 8, !tbaa !196
  %19 = tail call ptr @RE_findOrAddVert(ptr noundef %0, i32 noundef %17) #22
  %20 = getelementptr inbounds %struct.VlakRen, ptr %12, i64 0, i32 1
  store ptr %19, ptr %20, align 8, !tbaa !560
  %21 = getelementptr inbounds %struct.VlakRen, ptr %12, i64 0, i32 2
  store ptr %19, ptr %21, align 8, !tbaa !561
  %22 = getelementptr inbounds %struct.VlakRen, ptr %12, i64 0, i32 3
  store ptr null, ptr %22, align 8, !tbaa !562
  %23 = load ptr, ptr %12, align 8, !tbaa !558
  tail call fastcc void @copy_v3_v3(ptr noundef %23, ptr noundef %2) #23
  %24 = load ptr, ptr %20, align 8, !tbaa !560
  tail call fastcc void @copy_v3_v3(ptr noundef %24, ptr noundef %3) #23
  %25 = getelementptr inbounds %struct.VlakRen, ptr %12, i64 0, i32 4
  tail call fastcc void @sub_v3_v3v3(ptr noundef nonnull %25, ptr noundef %2, ptr noundef %3) #23
  tail call fastcc void @normalize_v3(ptr noundef nonnull %25) #23
  %26 = load ptr, ptr %12, align 8, !tbaa !558
  %27 = getelementptr inbounds %struct.VertRen, ptr %26, i64 0, i32 1
  tail call fastcc void @copy_v3_v3(ptr noundef nonnull %27, ptr noundef nonnull %25) #23
  %28 = load ptr, ptr %20, align 8, !tbaa !560
  %29 = getelementptr inbounds %struct.VertRen, ptr %28, i64 0, i32 1
  tail call fastcc void @copy_v3_v3(ptr noundef nonnull %29, ptr noundef nonnull %25) #23
  %30 = getelementptr inbounds %struct.VlakRen, ptr %12, i64 0, i32 5
  store ptr %1, ptr %30, align 8, !tbaa !563
  %31 = getelementptr inbounds %struct.VlakRen, ptr %12, i64 0, i32 8
  store i8 1, ptr %31, align 2, !tbaa !565
  br label %57

32:                                               ; preds = %6
  %33 = icmp eq i32 %4, 0
  br i1 %33, label %39, label %34

34:                                               ; preds = %32
  %35 = getelementptr inbounds %struct.ObjectRen, ptr %0, i64 0, i32 10
  %36 = load i32, ptr %35, align 8, !tbaa !196
  %37 = add nsw i32 %36, 1
  store i32 %37, ptr %35, align 8, !tbaa !196
  %38 = tail call ptr @RE_findOrAddVert(ptr noundef %0, i32 noundef %36) #22
  store ptr %38, ptr @static_particle_wire.v1, align 8, !tbaa !47
  tail call fastcc void @copy_v3_v3(ptr noundef %38, ptr noundef %2) #23
  br label %57

39:                                               ; preds = %32
  %40 = getelementptr inbounds %struct.ObjectRen, ptr %0, i64 0, i32 11
  %41 = load i32, ptr %40, align 4, !tbaa !555
  %42 = add nsw i32 %41, 1
  store i32 %42, ptr %40, align 4, !tbaa !555
  %43 = tail call ptr @RE_findOrAddVlak(ptr noundef %0, i32 noundef %41) #22
  %44 = load ptr, ptr @static_particle_wire.v1, align 8, !tbaa !47
  store ptr %44, ptr %43, align 8, !tbaa !558
  %45 = getelementptr inbounds %struct.ObjectRen, ptr %0, i64 0, i32 10
  %46 = load i32, ptr %45, align 8, !tbaa !196
  %47 = add nsw i32 %46, 1
  store i32 %47, ptr %45, align 8, !tbaa !196
  %48 = tail call ptr @RE_findOrAddVert(ptr noundef %0, i32 noundef %46) #22
  %49 = getelementptr inbounds %struct.VlakRen, ptr %43, i64 0, i32 1
  store ptr %48, ptr %49, align 8, !tbaa !560
  %50 = getelementptr inbounds %struct.VlakRen, ptr %43, i64 0, i32 2
  store ptr %48, ptr %50, align 8, !tbaa !561
  %51 = getelementptr inbounds %struct.VlakRen, ptr %43, i64 0, i32 3
  store ptr null, ptr %51, align 8, !tbaa !562
  store ptr %48, ptr @static_particle_wire.v1, align 8, !tbaa !47
  tail call fastcc void @copy_v3_v3(ptr noundef %48, ptr noundef %2) #23
  %52 = getelementptr inbounds %struct.VlakRen, ptr %43, i64 0, i32 4
  tail call fastcc void @sub_v3_v3v3(ptr noundef nonnull %52, ptr noundef %2, ptr noundef %3) #23
  tail call fastcc void @normalize_v3(ptr noundef nonnull %52) #23
  %53 = load ptr, ptr @static_particle_wire.v1, align 8, !tbaa !47
  %54 = getelementptr inbounds %struct.VertRen, ptr %53, i64 0, i32 1
  tail call fastcc void @copy_v3_v3(ptr noundef nonnull %54, ptr noundef nonnull %52) #23
  %55 = getelementptr inbounds %struct.VlakRen, ptr %43, i64 0, i32 5
  store ptr %1, ptr %55, align 8, !tbaa !563
  %56 = getelementptr inbounds %struct.VlakRen, ptr %43, i64 0, i32 8
  store i8 1, ptr %56, align 2, !tbaa !565
  br label %57

57:                                               ; preds = %34, %39, %8
  ret void
}

; Function Attrs: optsize
declare ptr @RE_inithalo_particle(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, float noundef, float noundef, i32 noundef, ptr noundef) local_unnamed_addr #7

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @static_particle_strand(ptr nocapture noundef readonly %0, ptr noundef %1, ptr noundef %2, ptr nocapture noundef readonly %3, ptr noundef %4, ptr nocapture noundef readonly %5) unnamed_addr #4 !PGOFuncName !683 {
  %7 = alloca [3 x float], align 4
  %8 = alloca [3 x float], align 4
  %9 = alloca [3 x float], align 4
  %10 = alloca [3 x float], align 4
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %7) #24
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %8) #24
  call fastcc void @sub_v3_v3v3(ptr noundef nonnull %7, ptr noundef %4, ptr noundef %5) #23
  call fastcc void @normalize_v3(ptr noundef nonnull %7) #23
  call fastcc void @cross_v3_v3v3(ptr noundef nonnull %8, ptr noundef %4, ptr noundef nonnull %7) #23
  %11 = getelementptr inbounds float, ptr %4, i64 2
  %12 = load float, ptr %11, align 4, !tbaa !44
  %13 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 35
  %14 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 35, i64 2, i64 3
  %15 = load float, ptr %14, align 4, !tbaa !44
  %16 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 35, i64 3, i64 3
  %17 = load float, ptr %16, align 4, !tbaa !44
  %18 = tail call float @llvm.fmuladd.f32(float %12, float %15, float %17)
  %19 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 13
  %20 = load i32, ptr %19, align 4, !tbaa !217
  %21 = sitofp i32 %20 to float
  %22 = load float, ptr %8, align 4, !tbaa !44
  %23 = fmul float %22, %21
  %24 = load float, ptr %13, align 8, !tbaa !44
  %25 = fmul float %23, %24
  %26 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 14
  %27 = load i32, ptr %26, align 8, !tbaa !218
  %28 = sitofp i32 %27 to float
  %29 = getelementptr inbounds [3 x float], ptr %8, i64 0, i64 1
  %30 = load float, ptr %29, align 4, !tbaa !44
  %31 = fmul float %30, %28
  %32 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 35, i64 1, i64 1
  %33 = load float, ptr %32, align 4, !tbaa !44
  %34 = fmul float %31, %33
  %35 = fmul float %34, %34
  %36 = tail call float @llvm.fmuladd.f32(float %25, float %25, float %35)
  %37 = tail call float @llvm.sqrt.f32(float %36)
  %38 = fdiv float %37, %18
  %39 = fcmp une float %38, 0.000000e+00
  br i1 %39, label %40, label %90

40:                                               ; preds = %6
  %41 = getelementptr inbounds %struct.Material, ptr %2, i64 0, i32 65
  %42 = load float, ptr %41, align 4, !tbaa !684
  %43 = fcmp une float %42, 0.000000e+00
  br i1 %43, label %44, label %60

44:                                               ; preds = %40
  %45 = fcmp olt float %42, 0.000000e+00
  %46 = getelementptr inbounds %struct.ParticleStrandData, ptr %3, i64 0, i32 4
  %47 = load float, ptr %46, align 8, !tbaa !523
  %48 = fpext float %47 to double
  br i1 %45, label %49, label %54

49:                                               ; preds = %44
  %50 = fadd float %42, 1.000000e+00
  %51 = fpext float %50 to double
  %52 = tail call double @pow(double noundef %48, double noundef %51) #22
  %53 = fptrunc double %52 to float
  br label %63

54:                                               ; preds = %44
  %55 = fsub float 1.000000e+00, %42
  %56 = fdiv float 1.000000e+00, %55
  %57 = fpext float %56 to double
  %58 = tail call double @pow(double noundef %48, double noundef %57) #22
  %59 = fptrunc double %58 to float
  br label %63

60:                                               ; preds = %40
  %61 = getelementptr inbounds %struct.ParticleStrandData, ptr %3, i64 0, i32 4
  %62 = load float, ptr %61, align 8, !tbaa !523
  br label %63

63:                                               ; preds = %49, %54, %60
  %64 = phi float [ %53, %49 ], [ %59, %54 ], [ %62, %60 ]
  %65 = fsub float 1.000000e+00, %64
  %66 = getelementptr inbounds %struct.Material, ptr %2, i64 0, i32 63
  %67 = load float, ptr %66, align 4, !tbaa !643
  %68 = getelementptr inbounds %struct.Material, ptr %2, i64 0, i32 64
  %69 = load float, ptr %68, align 8, !tbaa !644
  %70 = fmul float %64, %69
  %71 = tail call float @llvm.fmuladd.f32(float %65, float %67, float %70)
  %72 = getelementptr inbounds %struct.Material, ptr %2, i64 0, i32 51
  %73 = load i32, ptr %72, align 4, !tbaa !167
  %74 = and i32 %73, 1073741824
  %75 = icmp eq i32 %74, 0
  br i1 %75, label %86, label %76

76:                                               ; preds = %63
  %77 = call fastcc float @len_v3(ptr noundef nonnull %8) #23
  %78 = fmul float %77, 2.000000e+00
  %79 = getelementptr inbounds %struct.Material, ptr %2, i64 0, i32 67
  %80 = load float, ptr %79, align 4, !tbaa !475
  %81 = fmul float %78, %80
  %82 = fdiv float %81, %38
  %83 = fcmp olt float %71, %82
  %84 = select i1 %83, float %82, float %71
  %85 = fdiv float 5.000000e-01, %77
  call fastcc void @mul_v3_fl(ptr noundef nonnull %8, float noundef %85) #23
  br label %88

86:                                               ; preds = %63
  %87 = fdiv float %71, %38
  br label %88

88:                                               ; preds = %86, %76
  %89 = phi float [ %84, %76 ], [ %87, %86 ]
  call fastcc void @mul_v3_fl(ptr noundef nonnull %8, float noundef %89) #23
  br label %90

90:                                               ; preds = %88, %6
  %91 = getelementptr inbounds %struct.Material, ptr %2, i64 0, i32 51
  %92 = load i32, ptr %91, align 4, !tbaa !167
  %93 = and i32 %92, 16777216
  %94 = icmp eq i32 %93, 0
  %95 = select i1 %94, i32 1, i32 65
  %96 = getelementptr inbounds %struct.Material, ptr %2, i64 0, i32 63
  %97 = load float, ptr %96, align 4, !tbaa !643
  %98 = fcmp oeq float %97, 1.000000e+00
  %99 = or disjoint i32 %95, 4
  %100 = select i1 %98, i32 %99, i32 %95
  %101 = getelementptr inbounds %struct.ParticleStrandData, ptr %3, i64 0, i32 11
  %102 = load i32, ptr %101, align 4, !tbaa !660
  %103 = icmp eq i32 %102, 0
  br i1 %103, label %239, label %104

104:                                              ; preds = %90
  %105 = getelementptr inbounds %struct.ObjectRen, ptr %1, i64 0, i32 11
  %106 = load i32, ptr %105, align 4, !tbaa !555
  %107 = add nsw i32 %106, 1
  store i32 %107, ptr %105, align 4, !tbaa !555
  %108 = tail call ptr @RE_findOrAddVlak(ptr noundef %1, i32 noundef %106) #22
  %109 = trunc i32 %100 to i8
  %110 = getelementptr inbounds %struct.VlakRen, ptr %108, i64 0, i32 7
  store i8 %109, ptr %110, align 1, !tbaa !564
  %111 = getelementptr inbounds %struct.ObjectRen, ptr %1, i64 0, i32 10
  %112 = load i32, ptr %111, align 8, !tbaa !196
  %113 = add nsw i32 %112, 1
  store i32 %113, ptr %111, align 8, !tbaa !196
  %114 = tail call ptr @RE_findOrAddVert(ptr noundef %1, i32 noundef %112) #22
  store ptr %114, ptr %108, align 8, !tbaa !558
  %115 = load i32, ptr %111, align 8, !tbaa !196
  %116 = add nsw i32 %115, 1
  store i32 %116, ptr %111, align 8, !tbaa !196
  %117 = tail call ptr @RE_findOrAddVert(ptr noundef %1, i32 noundef %115) #22
  %118 = getelementptr inbounds %struct.VlakRen, ptr %108, i64 0, i32 1
  store ptr %117, ptr %118, align 8, !tbaa !560
  %119 = load i32, ptr %111, align 8, !tbaa !196
  %120 = add nsw i32 %119, 1
  store i32 %120, ptr %111, align 8, !tbaa !196
  %121 = tail call ptr @RE_findOrAddVert(ptr noundef %1, i32 noundef %119) #22
  %122 = getelementptr inbounds %struct.VlakRen, ptr %108, i64 0, i32 2
  store ptr %121, ptr %122, align 8, !tbaa !561
  %123 = load i32, ptr %111, align 8, !tbaa !196
  %124 = add nsw i32 %123, 1
  store i32 %124, ptr %111, align 8, !tbaa !196
  %125 = tail call ptr @RE_findOrAddVert(ptr noundef %1, i32 noundef %123) #22
  %126 = getelementptr inbounds %struct.VlakRen, ptr %108, i64 0, i32 3
  store ptr %125, ptr %126, align 8, !tbaa !562
  %127 = load ptr, ptr %108, align 8, !tbaa !558
  tail call fastcc void @copy_v3_v3(ptr noundef %127, ptr noundef nonnull %4) #23
  %128 = load ptr, ptr %108, align 8, !tbaa !558
  call fastcc void @add_v3_v3(ptr noundef %128, ptr noundef nonnull %8) #23
  %129 = load ptr, ptr %108, align 8, !tbaa !558
  %130 = getelementptr inbounds %struct.VertRen, ptr %129, i64 0, i32 1
  call fastcc void @copy_v3_v3(ptr noundef nonnull %130, ptr noundef nonnull %7) #23
  %131 = getelementptr inbounds %struct.ParticleStrandData, ptr %3, i64 0, i32 1
  %132 = load ptr, ptr %131, align 8, !tbaa !464
  %133 = load ptr, ptr %108, align 8, !tbaa !558
  %134 = getelementptr inbounds %struct.VertRen, ptr %133, i64 0, i32 2
  store ptr %132, ptr %134, align 8, !tbaa !552
  %135 = getelementptr inbounds %struct.VertRen, ptr %133, i64 0, i32 4
  store float -1.000000e+00, ptr %135, align 4, !tbaa !685
  %136 = load ptr, ptr %118, align 8, !tbaa !560
  tail call fastcc void @copy_v3_v3(ptr noundef %136, ptr noundef nonnull %4) #23
  %137 = load ptr, ptr %118, align 8, !tbaa !560
  call fastcc void @sub_v3_v3v3(ptr noundef %137, ptr noundef %137, ptr noundef nonnull %8) #23
  %138 = load ptr, ptr %118, align 8, !tbaa !560
  %139 = getelementptr inbounds %struct.VertRen, ptr %138, i64 0, i32 1
  call fastcc void @copy_v3_v3(ptr noundef nonnull %139, ptr noundef nonnull %7) #23
  %140 = load ptr, ptr %131, align 8, !tbaa !464
  %141 = load ptr, ptr %118, align 8, !tbaa !560
  %142 = getelementptr inbounds %struct.VertRen, ptr %141, i64 0, i32 2
  store ptr %140, ptr %142, align 8, !tbaa !552
  %143 = load ptr, ptr %108, align 8, !tbaa !558
  %144 = getelementptr inbounds %struct.VertRen, ptr %143, i64 0, i32 4
  %145 = load float, ptr %144, align 4, !tbaa !685
  %146 = getelementptr inbounds %struct.VertRen, ptr %141, i64 0, i32 4
  store float %145, ptr %146, align 4, !tbaa !685
  %147 = load ptr, ptr %126, align 8, !tbaa !562
  tail call fastcc void @copy_v3_v3(ptr noundef %147, ptr noundef %5) #23
  %148 = load ptr, ptr %126, align 8, !tbaa !562
  call fastcc void @add_v3_v3(ptr noundef %148, ptr noundef nonnull %8) #23
  %149 = load ptr, ptr %126, align 8, !tbaa !562
  %150 = getelementptr inbounds %struct.VertRen, ptr %149, i64 0, i32 1
  call fastcc void @copy_v3_v3(ptr noundef nonnull %150, ptr noundef nonnull %7) #23
  %151 = load ptr, ptr %131, align 8, !tbaa !464
  %152 = load ptr, ptr %126, align 8, !tbaa !562
  %153 = getelementptr inbounds %struct.VertRen, ptr %152, i64 0, i32 2
  store ptr %151, ptr %153, align 8, !tbaa !552
  %154 = getelementptr inbounds %struct.VertRen, ptr %152, i64 0, i32 4
  store float 1.000000e+00, ptr %154, align 4, !tbaa !685
  %155 = load ptr, ptr %122, align 8, !tbaa !561
  tail call fastcc void @copy_v3_v3(ptr noundef %155, ptr noundef %5) #23
  %156 = load ptr, ptr %122, align 8, !tbaa !561
  call fastcc void @sub_v3_v3v3(ptr noundef %156, ptr noundef %156, ptr noundef nonnull %8) #23
  %157 = load ptr, ptr %122, align 8, !tbaa !561
  %158 = getelementptr inbounds %struct.VertRen, ptr %157, i64 0, i32 1
  call fastcc void @copy_v3_v3(ptr noundef nonnull %158, ptr noundef nonnull %7) #23
  %159 = load ptr, ptr %131, align 8, !tbaa !464
  %160 = load ptr, ptr %122, align 8, !tbaa !561
  %161 = getelementptr inbounds %struct.VertRen, ptr %160, i64 0, i32 2
  store ptr %159, ptr %161, align 8, !tbaa !552
  %162 = load ptr, ptr %126, align 8, !tbaa !562
  %163 = getelementptr inbounds %struct.VertRen, ptr %162, i64 0, i32 4
  %164 = load float, ptr %163, align 4, !tbaa !685
  %165 = getelementptr inbounds %struct.VertRen, ptr %160, i64 0, i32 4
  store float %164, ptr %165, align 4, !tbaa !685
  %166 = getelementptr inbounds %struct.VlakRen, ptr %108, i64 0, i32 4
  %167 = load ptr, ptr %118, align 8, !tbaa !560
  %168 = load ptr, ptr %108, align 8, !tbaa !558
  %169 = tail call float @normal_quad_v3(ptr noundef nonnull %166, ptr noundef %162, ptr noundef %160, ptr noundef %167, ptr noundef %168) #22
  %170 = getelementptr inbounds %struct.VlakRen, ptr %108, i64 0, i32 5
  store ptr %2, ptr %170, align 8, !tbaa !563
  %171 = getelementptr inbounds %struct.VlakRen, ptr %108, i64 0, i32 8
  store i8 2, ptr %171, align 2, !tbaa !565
  %172 = getelementptr inbounds %struct.ParticleStrandData, ptr %3, i64 0, i32 3
  %173 = load ptr, ptr %172, align 8, !tbaa !513
  %174 = icmp eq ptr %173, null
  br i1 %174, label %178, label %175

175:                                              ; preds = %104
  %176 = tail call ptr @RE_vlakren_get_surfnor(ptr noundef nonnull %1, ptr noundef nonnull %108, i32 noundef 1) #22
  %177 = load ptr, ptr %172, align 8, !tbaa !513
  tail call fastcc void @copy_v3_v3(ptr noundef %176, ptr noundef %177) #23
  br label %178

178:                                              ; preds = %175, %104
  %179 = getelementptr inbounds %struct.ParticleStrandData, ptr %3, i64 0, i32 2
  %180 = load ptr, ptr %179, align 8, !tbaa !448
  %181 = icmp eq ptr %180, null
  br i1 %181, label %214, label %182

182:                                              ; preds = %178
  %183 = getelementptr inbounds %struct.ParticleStrandData, ptr %3, i64 0, i32 8
  %184 = load i32, ptr %183, align 8, !tbaa !446
  %185 = icmp sgt i32 %184, 0
  br i1 %185, label %186, label %207

186:                                              ; preds = %182, %186
  %187 = phi i64 [ %203, %186 ], [ 0, %182 ]
  %188 = trunc i64 %187 to i32
  %189 = tail call ptr @RE_vlakren_get_tface(ptr noundef %1, ptr noundef nonnull %108, i32 noundef %188, ptr noundef null, i32 noundef 1) #22
  %190 = load ptr, ptr %179, align 8, !tbaa !448
  %191 = shl nuw nsw i64 %187, 1
  %192 = getelementptr inbounds float, ptr %190, i64 %191
  %193 = load float, ptr %192, align 4, !tbaa !44
  %194 = getelementptr inbounds [4 x [2 x float]], ptr %189, i64 0, i64 3
  store float %193, ptr %194, align 8, !tbaa !44
  %195 = getelementptr inbounds [4 x [2 x float]], ptr %189, i64 0, i64 2
  store float %193, ptr %195, align 8, !tbaa !44
  %196 = getelementptr inbounds [4 x [2 x float]], ptr %189, i64 0, i64 1
  store float %193, ptr %196, align 8, !tbaa !44
  store float %193, ptr %189, align 8, !tbaa !44
  %197 = getelementptr inbounds float, ptr %192, i64 1
  %198 = load float, ptr %197, align 4, !tbaa !44
  %199 = getelementptr inbounds [4 x [2 x float]], ptr %189, i64 0, i64 3, i64 1
  store float %198, ptr %199, align 4, !tbaa !44
  %200 = getelementptr inbounds [4 x [2 x float]], ptr %189, i64 0, i64 2, i64 1
  store float %198, ptr %200, align 4, !tbaa !44
  %201 = getelementptr inbounds [4 x [2 x float]], ptr %189, i64 0, i64 1, i64 1
  store float %198, ptr %201, align 4, !tbaa !44
  %202 = getelementptr inbounds [2 x float], ptr %189, i64 0, i64 1
  store float %198, ptr %202, align 4, !tbaa !44
  %203 = add nuw nsw i64 %187, 1
  %204 = load i32, ptr %183, align 8, !tbaa !446
  %205 = sext i32 %204 to i64
  %206 = icmp slt i64 %203, %205
  br i1 %206, label %186, label %207, !llvm.loop !686

207:                                              ; preds = %186, %182
  %208 = getelementptr inbounds %struct.ParticleStrandData, ptr %3, i64 0, i32 13
  %209 = load i32, ptr %208, align 4, !tbaa !440
  %210 = icmp sgt i32 %209, -1
  br i1 %210, label %211, label %214

211:                                              ; preds = %207
  %212 = tail call ptr @RE_vlakren_get_tface(ptr noundef %1, ptr noundef nonnull %108, i32 noundef %209, ptr noundef null, i32 noundef 0) #22
  %213 = getelementptr inbounds [4 x [2 x float]], ptr %212, i64 0, i64 2
  store <4 x float> <float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float 0.000000e+00>, ptr %212, align 8, !tbaa !44
  store <4 x float> <float 1.000000e+00, float 1.000000e+00, float 0.000000e+00, float 1.000000e+00>, ptr %213, align 8, !tbaa !44
  br label %214

214:                                              ; preds = %207, %211, %178
  %215 = load ptr, ptr %3, align 8, !tbaa !449
  %216 = icmp eq ptr %215, null
  br i1 %216, label %468, label %217

217:                                              ; preds = %214
  %218 = getelementptr inbounds %struct.ParticleStrandData, ptr %3, i64 0, i32 9
  %219 = load i32, ptr %218, align 4, !tbaa !447
  %220 = icmp sgt i32 %219, 0
  br i1 %220, label %221, label %468

221:                                              ; preds = %217, %221
  %222 = phi i64 [ %235, %221 ], [ 0, %217 ]
  %223 = trunc i64 %222 to i32
  %224 = tail call ptr @RE_vlakren_get_mcol(ptr noundef %1, ptr noundef nonnull %108, i32 noundef %223, ptr noundef null, i32 noundef 1) #22
  %225 = load ptr, ptr %3, align 8, !tbaa !449
  %226 = getelementptr inbounds %struct.MCol, ptr %225, i64 %222
  %227 = load i32, ptr %226, align 1
  %228 = insertelement <4 x i32> poison, i32 %227, i64 0
  %229 = shufflevector <4 x i32> %228, <4 x i32> poison, <4 x i32> zeroinitializer
  store <4 x i32> %229, ptr %224, align 1
  %230 = load ptr, ptr %3, align 8, !tbaa !449
  %231 = getelementptr inbounds %struct.MCol, ptr %230, i64 %222
  %232 = load i32, ptr %231, align 1
  %233 = insertelement <4 x i32> poison, i32 %232, i64 0
  %234 = shufflevector <4 x i32> %233, <4 x i32> poison, <4 x i32> zeroinitializer
  store <4 x i32> %234, ptr %224, align 1
  %235 = add nuw nsw i64 %222, 1
  %236 = load i32, ptr %218, align 4, !tbaa !447
  %237 = sext i32 %236 to i64
  %238 = icmp slt i64 %235, %237
  br i1 %238, label %221, label %468, !llvm.loop !687

239:                                              ; preds = %90
  %240 = getelementptr inbounds %struct.ParticleStrandData, ptr %3, i64 0, i32 10
  %241 = load i32, ptr %240, align 8, !tbaa !522
  %242 = icmp eq i32 %241, 0
  %243 = getelementptr inbounds %struct.ParticleStrandData, ptr %3, i64 0, i32 12
  %244 = load i32, ptr %243, align 8, !tbaa !465
  %245 = icmp eq i32 %244, 0
  br i1 %242, label %267, label %246

246:                                              ; preds = %239
  br i1 %245, label %248, label %247

247:                                              ; preds = %246
  call fastcc void @copy_v3_v3(ptr noundef nonnull @static_particle_strand.anor, ptr noundef nonnull %7) #23
  tail call fastcc void @copy_v3_v3(ptr noundef nonnull @static_particle_strand.avec, ptr noundef nonnull %4) #23
  store i1 true, ptr @static_particle_strand.second, align 4
  br label %248

248:                                              ; preds = %247, %246
  %249 = getelementptr inbounds %struct.ObjectRen, ptr %1, i64 0, i32 10
  %250 = load i32, ptr %249, align 8, !tbaa !196
  %251 = add nsw i32 %250, 1
  store i32 %251, ptr %249, align 8, !tbaa !196
  %252 = tail call ptr @RE_findOrAddVert(ptr noundef %1, i32 noundef %250) #22
  store ptr %252, ptr @static_particle_strand.v1, align 8, !tbaa !47
  %253 = load i32, ptr %249, align 8, !tbaa !196
  %254 = add nsw i32 %253, 1
  store i32 %254, ptr %249, align 8, !tbaa !196
  %255 = tail call ptr @RE_findOrAddVert(ptr noundef %1, i32 noundef %253) #22
  store ptr %255, ptr @static_particle_strand.v2, align 8, !tbaa !47
  %256 = load ptr, ptr @static_particle_strand.v1, align 8, !tbaa !47
  tail call fastcc void @copy_v3_v3(ptr noundef %256, ptr noundef nonnull %4) #23
  call fastcc void @add_v3_v3(ptr noundef %256, ptr noundef nonnull %8) #23
  %257 = getelementptr inbounds %struct.VertRen, ptr %256, i64 0, i32 1
  call fastcc void @copy_v3_v3(ptr noundef nonnull %257, ptr noundef nonnull %7) #23
  %258 = getelementptr inbounds %struct.ParticleStrandData, ptr %3, i64 0, i32 1
  %259 = load ptr, ptr %258, align 8, !tbaa !464
  %260 = getelementptr inbounds %struct.VertRen, ptr %256, i64 0, i32 2
  store ptr %259, ptr %260, align 8, !tbaa !552
  %261 = getelementptr inbounds %struct.VertRen, ptr %256, i64 0, i32 4
  store float -1.000000e+00, ptr %261, align 4, !tbaa !685
  tail call fastcc void @copy_v3_v3(ptr noundef %255, ptr noundef nonnull %4) #23
  call fastcc void @sub_v3_v3v3(ptr noundef %255, ptr noundef %255, ptr noundef nonnull %8) #23
  %262 = getelementptr inbounds %struct.VertRen, ptr %255, i64 0, i32 1
  call fastcc void @copy_v3_v3(ptr noundef nonnull %262, ptr noundef nonnull %7) #23
  %263 = load ptr, ptr %258, align 8, !tbaa !464
  %264 = getelementptr inbounds %struct.VertRen, ptr %255, i64 0, i32 2
  store ptr %263, ptr %264, align 8, !tbaa !552
  %265 = load float, ptr %261, align 4, !tbaa !685
  %266 = getelementptr inbounds %struct.VertRen, ptr %255, i64 0, i32 4
  store float %265, ptr %266, align 4, !tbaa !685
  br label %468

267:                                              ; preds = %239
  %268 = load i1, ptr @static_particle_strand.second, align 4
  %269 = select i1 %245, i1 true, i1 %268
  br i1 %269, label %270, label %293

270:                                              ; preds = %267
  %271 = getelementptr inbounds %struct.ObjectRen, ptr %1, i64 0, i32 11
  %272 = load i32, ptr %271, align 4, !tbaa !555
  %273 = add nsw i32 %272, 1
  store i32 %273, ptr %271, align 4, !tbaa !555
  %274 = tail call ptr @RE_findOrAddVlak(ptr noundef %1, i32 noundef %272) #22
  %275 = trunc i32 %100 to i8
  %276 = getelementptr inbounds %struct.VlakRen, ptr %274, i64 0, i32 7
  store i8 %275, ptr %276, align 1, !tbaa !564
  %277 = load ptr, ptr @static_particle_strand.v1, align 8, !tbaa !47
  store ptr %277, ptr %274, align 8, !tbaa !558
  %278 = load ptr, ptr @static_particle_strand.v2, align 8, !tbaa !47
  %279 = getelementptr inbounds %struct.VlakRen, ptr %274, i64 0, i32 1
  store ptr %278, ptr %279, align 8, !tbaa !560
  %280 = getelementptr inbounds %struct.ObjectRen, ptr %1, i64 0, i32 10
  %281 = load i32, ptr %280, align 8, !tbaa !196
  %282 = add nsw i32 %281, 1
  store i32 %282, ptr %280, align 8, !tbaa !196
  %283 = tail call ptr @RE_findOrAddVert(ptr noundef %1, i32 noundef %281) #22
  %284 = getelementptr inbounds %struct.VlakRen, ptr %274, i64 0, i32 2
  store ptr %283, ptr %284, align 8, !tbaa !561
  %285 = load i32, ptr %280, align 8, !tbaa !196
  %286 = add nsw i32 %285, 1
  store i32 %286, ptr %280, align 8, !tbaa !196
  %287 = tail call ptr @RE_findOrAddVert(ptr noundef %1, i32 noundef %285) #22
  %288 = getelementptr inbounds %struct.VlakRen, ptr %274, i64 0, i32 3
  store ptr %287, ptr %288, align 8, !tbaa !562
  store ptr %287, ptr @static_particle_strand.v1, align 8, !tbaa !47
  %289 = load ptr, ptr %284, align 8, !tbaa !561
  store ptr %289, ptr @static_particle_strand.v2, align 8, !tbaa !47
  %290 = load i32, ptr %243, align 8, !tbaa !465
  %291 = icmp eq i32 %290, 0
  br i1 %291, label %351, label %292

292:                                              ; preds = %270
  store i1 false, ptr @static_particle_strand.second, align 4
  call fastcc void @copy_v3_v3(ptr noundef nonnull @static_particle_strand.anor, ptr noundef nonnull %7) #23
  tail call fastcc void @copy_v3_v3(ptr noundef nonnull @static_particle_strand.avec, ptr noundef nonnull %4) #23
  br label %351

293:                                              ; preds = %267
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %9) #24
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %10) #24
  call fastcc void @sub_v3_v3v3(ptr noundef nonnull %9, ptr noundef nonnull @static_particle_strand.avec, ptr noundef nonnull %4) #23
  call void @project_v3_v3v3(ptr noundef nonnull %10, ptr noundef nonnull %9, ptr noundef nonnull %4) #22
  call fastcc void @sub_v3_v3v3(ptr noundef nonnull %9, ptr noundef nonnull %9, ptr noundef nonnull %10) #23
  %294 = call fastcc float @dot_v3v3(ptr noundef nonnull @static_particle_strand.anor, ptr noundef nonnull %7) #23
  %295 = getelementptr inbounds %struct.ParticleStrandData, ptr %3, i64 0, i32 5
  %296 = load float, ptr %295, align 4, !tbaa !469
  %297 = fcmp olt float %294, %296
  br i1 %297, label %298, label %344

298:                                              ; preds = %293
  %299 = load float, ptr %9, align 4, !tbaa !44
  %300 = load i32, ptr %19, align 4, !tbaa !217
  %301 = sitofp i32 %300 to float
  %302 = fmul float %299, %301
  %303 = load float, ptr %13, align 8, !tbaa !44
  %304 = fmul float %302, %303
  %305 = load float, ptr %11, align 4, !tbaa !44
  %306 = load float, ptr %14, align 4, !tbaa !44
  %307 = load float, ptr %16, align 4, !tbaa !44
  %308 = call float @llvm.fmuladd.f32(float %305, float %306, float %307)
  %309 = fdiv float %304, %308
  %310 = getelementptr inbounds [3 x float], ptr %9, i64 0, i64 1
  %311 = load float, ptr %310, align 4, !tbaa !44
  %312 = load i32, ptr %26, align 8, !tbaa !218
  %313 = sitofp i32 %312 to float
  %314 = fmul float %311, %313
  %315 = load float, ptr %32, align 4, !tbaa !44
  %316 = fmul float %314, %315
  %317 = fdiv float %316, %308
  %318 = fmul float %317, %317
  %319 = call float @llvm.fmuladd.f32(float %309, float %309, float %318)
  %320 = call float @llvm.sqrt.f32(float %319)
  %321 = getelementptr inbounds %struct.ParticleStrandData, ptr %3, i64 0, i32 6
  %322 = load float, ptr %321, align 8, !tbaa !467
  %323 = fcmp ogt float %320, %322
  br i1 %323, label %324, label %344

324:                                              ; preds = %298
  %325 = getelementptr inbounds %struct.ObjectRen, ptr %1, i64 0, i32 11
  %326 = load i32, ptr %325, align 4, !tbaa !555
  %327 = add nsw i32 %326, 1
  store i32 %327, ptr %325, align 4, !tbaa !555
  %328 = call ptr @RE_findOrAddVlak(ptr noundef %1, i32 noundef %326) #22
  %329 = trunc i32 %100 to i8
  %330 = getelementptr inbounds %struct.VlakRen, ptr %328, i64 0, i32 7
  store i8 %329, ptr %330, align 1, !tbaa !564
  %331 = load ptr, ptr @static_particle_strand.v1, align 8, !tbaa !47
  store ptr %331, ptr %328, align 8, !tbaa !558
  %332 = load ptr, ptr @static_particle_strand.v2, align 8, !tbaa !47
  %333 = getelementptr inbounds %struct.VlakRen, ptr %328, i64 0, i32 1
  store ptr %332, ptr %333, align 8, !tbaa !560
  %334 = getelementptr inbounds %struct.ObjectRen, ptr %1, i64 0, i32 10
  %335 = load i32, ptr %334, align 8, !tbaa !196
  %336 = add nsw i32 %335, 1
  store i32 %336, ptr %334, align 8, !tbaa !196
  %337 = call ptr @RE_findOrAddVert(ptr noundef %1, i32 noundef %335) #22
  %338 = getelementptr inbounds %struct.VlakRen, ptr %328, i64 0, i32 2
  store ptr %337, ptr %338, align 8, !tbaa !561
  %339 = load i32, ptr %334, align 8, !tbaa !196
  %340 = add nsw i32 %339, 1
  store i32 %340, ptr %334, align 8, !tbaa !196
  %341 = call ptr @RE_findOrAddVert(ptr noundef %1, i32 noundef %339) #22
  %342 = getelementptr inbounds %struct.VlakRen, ptr %328, i64 0, i32 3
  store ptr %341, ptr %342, align 8, !tbaa !562
  store ptr %341, ptr @static_particle_strand.v1, align 8, !tbaa !47
  %343 = load ptr, ptr %338, align 8, !tbaa !561
  store ptr %343, ptr @static_particle_strand.v2, align 8, !tbaa !47
  call fastcc void @copy_v3_v3(ptr noundef nonnull @static_particle_strand.anor, ptr noundef nonnull %7) #23
  call fastcc void @copy_v3_v3(ptr noundef nonnull @static_particle_strand.avec, ptr noundef nonnull %4) #23
  br label %349

344:                                              ; preds = %298, %293
  %345 = getelementptr inbounds %struct.ObjectRen, ptr %1, i64 0, i32 11
  %346 = load i32, ptr %345, align 4, !tbaa !555
  %347 = add nsw i32 %346, -1
  %348 = call ptr @RE_findOrAddVlak(ptr noundef %1, i32 noundef %347) #22
  br label %349

349:                                              ; preds = %344, %324
  %350 = phi ptr [ %328, %324 ], [ %348, %344 ]
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %10) #24
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %9) #24
  br label %351

351:                                              ; preds = %349, %270, %292
  %352 = phi ptr [ %274, %292 ], [ %274, %270 ], [ %350, %349 ]
  %353 = getelementptr inbounds %struct.VlakRen, ptr %352, i64 0, i32 3
  %354 = load ptr, ptr %353, align 8, !tbaa !562
  call fastcc void @copy_v3_v3(ptr noundef %354, ptr noundef nonnull %4) #23
  %355 = load ptr, ptr %353, align 8, !tbaa !562
  call fastcc void @add_v3_v3(ptr noundef %355, ptr noundef nonnull %8) #23
  %356 = load ptr, ptr %353, align 8, !tbaa !562
  %357 = getelementptr inbounds %struct.VertRen, ptr %356, i64 0, i32 1
  call fastcc void @copy_v3_v3(ptr noundef nonnull %357, ptr noundef nonnull %7) #23
  %358 = getelementptr inbounds %struct.ParticleStrandData, ptr %3, i64 0, i32 1
  %359 = load ptr, ptr %358, align 8, !tbaa !464
  %360 = load ptr, ptr %353, align 8, !tbaa !562
  %361 = getelementptr inbounds %struct.VertRen, ptr %360, i64 0, i32 2
  store ptr %359, ptr %361, align 8, !tbaa !552
  %362 = getelementptr inbounds %struct.ParticleStrandData, ptr %3, i64 0, i32 4
  %363 = load float, ptr %362, align 8, !tbaa !523
  %364 = call float @llvm.fmuladd.f32(float %363, float 2.000000e+00, float -1.000000e+00)
  %365 = getelementptr inbounds %struct.VertRen, ptr %360, i64 0, i32 4
  store float %364, ptr %365, align 4, !tbaa !685
  %366 = getelementptr inbounds %struct.VlakRen, ptr %352, i64 0, i32 2
  %367 = load ptr, ptr %366, align 8, !tbaa !561
  call fastcc void @copy_v3_v3(ptr noundef %367, ptr noundef nonnull %4) #23
  %368 = load ptr, ptr %366, align 8, !tbaa !561
  call fastcc void @sub_v3_v3v3(ptr noundef %368, ptr noundef %368, ptr noundef nonnull %8) #23
  %369 = load ptr, ptr %366, align 8, !tbaa !561
  %370 = getelementptr inbounds %struct.VertRen, ptr %369, i64 0, i32 1
  call fastcc void @copy_v3_v3(ptr noundef nonnull %370, ptr noundef nonnull %7) #23
  %371 = load ptr, ptr %358, align 8, !tbaa !464
  %372 = load ptr, ptr %366, align 8, !tbaa !561
  %373 = getelementptr inbounds %struct.VertRen, ptr %372, i64 0, i32 2
  store ptr %371, ptr %373, align 8, !tbaa !552
  %374 = load ptr, ptr %353, align 8, !tbaa !562
  %375 = getelementptr inbounds %struct.VertRen, ptr %374, i64 0, i32 4
  %376 = load float, ptr %375, align 4, !tbaa !685
  %377 = getelementptr inbounds %struct.VertRen, ptr %372, i64 0, i32 4
  store float %376, ptr %377, align 4, !tbaa !685
  %378 = getelementptr inbounds %struct.VlakRen, ptr %352, i64 0, i32 4
  %379 = getelementptr inbounds %struct.VlakRen, ptr %352, i64 0, i32 1
  %380 = load ptr, ptr %379, align 8, !tbaa !560
  %381 = load ptr, ptr %352, align 8, !tbaa !558
  %382 = call float @normal_quad_v3(ptr noundef nonnull %378, ptr noundef %374, ptr noundef %372, ptr noundef %380, ptr noundef %381) #22
  %383 = getelementptr inbounds %struct.VlakRen, ptr %352, i64 0, i32 5
  store ptr %2, ptr %383, align 8, !tbaa !563
  %384 = getelementptr inbounds %struct.VlakRen, ptr %352, i64 0, i32 8
  store i8 2, ptr %384, align 2, !tbaa !565
  %385 = getelementptr inbounds %struct.ParticleStrandData, ptr %3, i64 0, i32 3
  %386 = load ptr, ptr %385, align 8, !tbaa !513
  %387 = icmp eq ptr %386, null
  br i1 %387, label %391, label %388

388:                                              ; preds = %351
  %389 = call ptr @RE_vlakren_get_surfnor(ptr noundef nonnull %1, ptr noundef nonnull %352, i32 noundef 1) #22
  %390 = load ptr, ptr %385, align 8, !tbaa !513
  call fastcc void @copy_v3_v3(ptr noundef %389, ptr noundef %390) #23
  br label %391

391:                                              ; preds = %388, %351
  %392 = getelementptr inbounds %struct.ParticleStrandData, ptr %3, i64 0, i32 2
  %393 = load ptr, ptr %392, align 8, !tbaa !448
  %394 = icmp eq ptr %393, null
  br i1 %394, label %443, label %395

395:                                              ; preds = %391
  %396 = getelementptr inbounds %struct.ParticleStrandData, ptr %3, i64 0, i32 8
  %397 = load i32, ptr %396, align 8, !tbaa !446
  %398 = icmp sgt i32 %397, 0
  br i1 %398, label %399, label %420

399:                                              ; preds = %395, %399
  %400 = phi i64 [ %416, %399 ], [ 0, %395 ]
  %401 = trunc i64 %400 to i32
  %402 = call ptr @RE_vlakren_get_tface(ptr noundef %1, ptr noundef nonnull %352, i32 noundef %401, ptr noundef null, i32 noundef 1) #22
  %403 = load ptr, ptr %392, align 8, !tbaa !448
  %404 = shl nuw nsw i64 %400, 1
  %405 = getelementptr inbounds float, ptr %403, i64 %404
  %406 = load float, ptr %405, align 4, !tbaa !44
  %407 = getelementptr inbounds [4 x [2 x float]], ptr %402, i64 0, i64 3
  store float %406, ptr %407, align 8, !tbaa !44
  %408 = getelementptr inbounds [4 x [2 x float]], ptr %402, i64 0, i64 2
  store float %406, ptr %408, align 8, !tbaa !44
  %409 = getelementptr inbounds [4 x [2 x float]], ptr %402, i64 0, i64 1
  store float %406, ptr %409, align 8, !tbaa !44
  store float %406, ptr %402, align 8, !tbaa !44
  %410 = getelementptr inbounds float, ptr %405, i64 1
  %411 = load float, ptr %410, align 4, !tbaa !44
  %412 = getelementptr inbounds [4 x [2 x float]], ptr %402, i64 0, i64 3, i64 1
  store float %411, ptr %412, align 4, !tbaa !44
  %413 = getelementptr inbounds [4 x [2 x float]], ptr %402, i64 0, i64 2, i64 1
  store float %411, ptr %413, align 4, !tbaa !44
  %414 = getelementptr inbounds [4 x [2 x float]], ptr %402, i64 0, i64 1, i64 1
  store float %411, ptr %414, align 4, !tbaa !44
  %415 = getelementptr inbounds [2 x float], ptr %402, i64 0, i64 1
  store float %411, ptr %415, align 4, !tbaa !44
  %416 = add nuw nsw i64 %400, 1
  %417 = load i32, ptr %396, align 8, !tbaa !446
  %418 = sext i32 %417 to i64
  %419 = icmp slt i64 %416, %418
  br i1 %419, label %399, label %420, !llvm.loop !688

420:                                              ; preds = %399, %395
  %421 = getelementptr inbounds %struct.ParticleStrandData, ptr %3, i64 0, i32 13
  %422 = load i32, ptr %421, align 4, !tbaa !440
  %423 = icmp sgt i32 %422, -1
  br i1 %423, label %424, label %443

424:                                              ; preds = %420
  %425 = call ptr @RE_vlakren_get_tface(ptr noundef %1, ptr noundef nonnull %352, i32 noundef %422, ptr noundef null, i32 noundef 0) #22
  %426 = getelementptr inbounds [4 x [2 x float]], ptr %425, i64 0, i64 3
  store float 0.000000e+00, ptr %426, align 8, !tbaa !44
  store float 0.000000e+00, ptr %425, align 8, !tbaa !44
  %427 = getelementptr inbounds [4 x [2 x float]], ptr %425, i64 0, i64 2
  store float 1.000000e+00, ptr %427, align 8, !tbaa !44
  %428 = getelementptr inbounds [4 x [2 x float]], ptr %425, i64 0, i64 1
  store float 1.000000e+00, ptr %428, align 8, !tbaa !44
  %429 = load ptr, ptr %352, align 8, !tbaa !558
  %430 = getelementptr inbounds %struct.VertRen, ptr %429, i64 0, i32 4
  %431 = load float, ptr %430, align 4, !tbaa !685
  %432 = fadd float %431, 1.000000e+00
  %433 = fmul float %432, 5.000000e-01
  %434 = getelementptr inbounds [4 x [2 x float]], ptr %425, i64 0, i64 1, i64 1
  store float %433, ptr %434, align 4, !tbaa !44
  %435 = getelementptr inbounds [2 x float], ptr %425, i64 0, i64 1
  store float %433, ptr %435, align 4, !tbaa !44
  %436 = load ptr, ptr %366, align 8, !tbaa !561
  %437 = getelementptr inbounds %struct.VertRen, ptr %436, i64 0, i32 4
  %438 = load float, ptr %437, align 4, !tbaa !685
  %439 = fadd float %438, 1.000000e+00
  %440 = fmul float %439, 5.000000e-01
  %441 = getelementptr inbounds [4 x [2 x float]], ptr %425, i64 0, i64 3, i64 1
  store float %440, ptr %441, align 4, !tbaa !44
  %442 = getelementptr inbounds [4 x [2 x float]], ptr %425, i64 0, i64 2, i64 1
  store float %440, ptr %442, align 4, !tbaa !44
  br label %443

443:                                              ; preds = %420, %424, %391
  %444 = load ptr, ptr %3, align 8, !tbaa !449
  %445 = icmp eq ptr %444, null
  br i1 %445, label %468, label %446

446:                                              ; preds = %443
  %447 = getelementptr inbounds %struct.ParticleStrandData, ptr %3, i64 0, i32 9
  %448 = load i32, ptr %447, align 4, !tbaa !447
  %449 = icmp sgt i32 %448, 0
  br i1 %449, label %450, label %468

450:                                              ; preds = %446, %450
  %451 = phi i64 [ %464, %450 ], [ 0, %446 ]
  %452 = trunc i64 %451 to i32
  %453 = call ptr @RE_vlakren_get_mcol(ptr noundef %1, ptr noundef nonnull %352, i32 noundef %452, ptr noundef null, i32 noundef 1) #22
  %454 = load ptr, ptr %3, align 8, !tbaa !449
  %455 = getelementptr inbounds %struct.MCol, ptr %454, i64 %451
  %456 = load i32, ptr %455, align 1
  %457 = insertelement <4 x i32> poison, i32 %456, i64 0
  %458 = shufflevector <4 x i32> %457, <4 x i32> poison, <4 x i32> zeroinitializer
  store <4 x i32> %458, ptr %453, align 1
  %459 = load ptr, ptr %3, align 8, !tbaa !449
  %460 = getelementptr inbounds %struct.MCol, ptr %459, i64 %451
  %461 = load i32, ptr %460, align 1
  %462 = insertelement <4 x i32> poison, i32 %461, i64 0
  %463 = shufflevector <4 x i32> %462, <4 x i32> poison, <4 x i32> zeroinitializer
  store <4 x i32> %463, ptr %453, align 1
  %464 = add nuw nsw i64 %451, 1
  %465 = load i32, ptr %447, align 4, !tbaa !447
  %466 = sext i32 %465 to i64
  %467 = icmp slt i64 %464, %466
  br i1 %467, label %450, label %468, !llvm.loop !689

468:                                              ; preds = %221, %450, %217, %446, %248, %443, %214
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %8) #24
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %7) #24
  ret void
}

; Function Attrs: optsize
declare ptr @RE_findOrAddVlak(ptr noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: optsize
declare ptr @RE_findOrAddVert(ptr noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @cross_v3_v3v3(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2) unnamed_addr #6 !PGOFuncName !690 {
  %4 = getelementptr inbounds float, ptr %1, i64 1
  %5 = load float, ptr %4, align 4, !tbaa !44
  %6 = getelementptr inbounds float, ptr %2, i64 2
  %7 = load float, ptr %6, align 4, !tbaa !44
  %8 = getelementptr inbounds float, ptr %1, i64 2
  %9 = load float, ptr %8, align 4, !tbaa !44
  %10 = getelementptr inbounds float, ptr %2, i64 1
  %11 = load float, ptr %10, align 4, !tbaa !44
  %12 = fneg float %9
  %13 = fmul float %11, %12
  %14 = tail call float @llvm.fmuladd.f32(float %5, float %7, float %13)
  store float %14, ptr %0, align 4, !tbaa !44
  %15 = load float, ptr %8, align 4, !tbaa !44
  %16 = load float, ptr %2, align 4, !tbaa !44
  %17 = load float, ptr %1, align 4, !tbaa !44
  %18 = load float, ptr %6, align 4, !tbaa !44
  %19 = fneg float %17
  %20 = fmul float %18, %19
  %21 = tail call float @llvm.fmuladd.f32(float %15, float %16, float %20)
  %22 = getelementptr inbounds float, ptr %0, i64 1
  store float %21, ptr %22, align 4, !tbaa !44
  %23 = load float, ptr %1, align 4, !tbaa !44
  %24 = load float, ptr %10, align 4, !tbaa !44
  %25 = load float, ptr %4, align 4, !tbaa !44
  %26 = load float, ptr %2, align 4, !tbaa !44
  %27 = fneg float %25
  %28 = fmul float %26, %27
  %29 = tail call float @llvm.fmuladd.f32(float %23, float %24, float %28)
  %30 = getelementptr inbounds float, ptr %0, i64 2
  store float %29, ptr %30, align 4, !tbaa !44
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @mul_v3_fl(ptr nocapture noundef %0, float noundef %1) unnamed_addr #6 !PGOFuncName !691 {
  %3 = load <2 x float>, ptr %0, align 4, !tbaa !44
  %4 = insertelement <2 x float> poison, float %1, i64 0
  %5 = shufflevector <2 x float> %4, <2 x float> poison, <2 x i32> zeroinitializer
  %6 = fmul <2 x float> %3, %5
  store <2 x float> %6, ptr %0, align 4, !tbaa !44
  %7 = getelementptr inbounds float, ptr %0, i64 2
  %8 = load float, ptr %7, align 4, !tbaa !44
  %9 = fmul float %8, %1
  store float %9, ptr %7, align 4, !tbaa !44
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @add_v3_v3(ptr nocapture noundef %0, ptr nocapture noundef readonly %1) unnamed_addr #6 !PGOFuncName !692 {
  %3 = load float, ptr %1, align 4, !tbaa !44
  %4 = load float, ptr %0, align 4, !tbaa !44
  %5 = fadd float %3, %4
  store float %5, ptr %0, align 4, !tbaa !44
  %6 = getelementptr inbounds float, ptr %1, i64 1
  %7 = load float, ptr %6, align 4, !tbaa !44
  %8 = getelementptr inbounds float, ptr %0, i64 1
  %9 = load float, ptr %8, align 4, !tbaa !44
  %10 = fadd float %7, %9
  store float %10, ptr %8, align 4, !tbaa !44
  %11 = getelementptr inbounds float, ptr %1, i64 2
  %12 = load float, ptr %11, align 4, !tbaa !44
  %13 = getelementptr inbounds float, ptr %0, i64 2
  %14 = load float, ptr %13, align 4, !tbaa !44
  %15 = fadd float %12, %14
  store float %15, ptr %13, align 4, !tbaa !44
  ret void
}

; Function Attrs: optsize
declare float @normal_quad_v3(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #7

; Function Attrs: optsize
declare ptr @RE_vlakren_get_surfnor(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: optsize
declare ptr @RE_vlakren_get_tface(ptr noundef, ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: optsize
declare ptr @RE_vlakren_get_mcol(ptr noundef, ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: optsize
declare void @project_v3_v3v3(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #7

; Function Attrs: optsize
declare void @mul_mat3_m4_v3(ptr noundef, ptr noundef) local_unnamed_addr #7

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @madd_v3_v3v3fl(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2, float noundef %3) unnamed_addr #6 !PGOFuncName !693 {
  %5 = load float, ptr %1, align 4, !tbaa !44
  %6 = load float, ptr %2, align 4, !tbaa !44
  %7 = tail call float @llvm.fmuladd.f32(float %6, float %3, float %5)
  store float %7, ptr %0, align 4, !tbaa !44
  %8 = getelementptr inbounds float, ptr %1, i64 1
  %9 = load float, ptr %8, align 4, !tbaa !44
  %10 = getelementptr inbounds float, ptr %2, i64 1
  %11 = load float, ptr %10, align 4, !tbaa !44
  %12 = tail call float @llvm.fmuladd.f32(float %11, float %3, float %9)
  %13 = getelementptr inbounds float, ptr %0, i64 1
  store float %12, ptr %13, align 4, !tbaa !44
  %14 = getelementptr inbounds float, ptr %1, i64 2
  %15 = load float, ptr %14, align 4, !tbaa !44
  %16 = getelementptr inbounds float, ptr %2, i64 2
  %17 = load float, ptr %16, align 4, !tbaa !44
  %18 = tail call float @llvm.fmuladd.f32(float %17, float %3, float %15)
  %19 = getelementptr inbounds float, ptr %0, i64 2
  store float %18, ptr %19, align 4, !tbaa !44
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @particle_billboard(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) unnamed_addr #4 !PGOFuncName !694 {
  %5 = alloca [3 x float], align 4
  %6 = alloca [3 x float], align 4
  %7 = alloca [3 x float], align 4
  %8 = alloca [3 x float], align 4
  %9 = alloca [3 x float], align 4
  %10 = alloca [3 x float], align 4
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %5) #24
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %6) #24
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %7) #24
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %8) #24
  %11 = getelementptr inbounds %struct.ParticleBillboardData, ptr %3, i64 0, i32 14
  %12 = load i16, ptr %11, align 2, !tbaa !462
  %13 = sext i16 %12 to i32
  %14 = mul nsw i32 %13, %13
  %15 = getelementptr inbounds %struct.ObjectRen, ptr %1, i64 0, i32 11
  %16 = load i32, ptr %15, align 4, !tbaa !555
  %17 = add nsw i32 %16, 1
  store i32 %17, ptr %15, align 4, !tbaa !555
  %18 = tail call ptr @RE_findOrAddVlak(ptr noundef %1, i32 noundef %16) #22
  %19 = getelementptr inbounds %struct.ObjectRen, ptr %1, i64 0, i32 10
  %20 = load i32, ptr %19, align 8, !tbaa !196
  %21 = add nsw i32 %20, 1
  store i32 %21, ptr %19, align 8, !tbaa !196
  %22 = tail call ptr @RE_findOrAddVert(ptr noundef %1, i32 noundef %20) #22
  store ptr %22, ptr %18, align 8, !tbaa !558
  %23 = load i32, ptr %19, align 8, !tbaa !196
  %24 = add nsw i32 %23, 1
  store i32 %24, ptr %19, align 8, !tbaa !196
  %25 = tail call ptr @RE_findOrAddVert(ptr noundef %1, i32 noundef %23) #22
  %26 = getelementptr inbounds %struct.VlakRen, ptr %18, i64 0, i32 1
  store ptr %25, ptr %26, align 8, !tbaa !560
  %27 = load i32, ptr %19, align 8, !tbaa !196
  %28 = add nsw i32 %27, 1
  store i32 %28, ptr %19, align 8, !tbaa !196
  %29 = tail call ptr @RE_findOrAddVert(ptr noundef %1, i32 noundef %27) #22
  %30 = getelementptr inbounds %struct.VlakRen, ptr %18, i64 0, i32 2
  store ptr %29, ptr %30, align 8, !tbaa !561
  %31 = load i32, ptr %19, align 8, !tbaa !196
  %32 = add nsw i32 %31, 1
  store i32 %32, ptr %19, align 8, !tbaa !196
  %33 = tail call ptr @RE_findOrAddVert(ptr noundef %1, i32 noundef %31) #22
  %34 = getelementptr inbounds %struct.VlakRen, ptr %18, i64 0, i32 3
  store ptr %33, ptr %34, align 8, !tbaa !562
  call void @psys_make_billboard(ptr noundef %3, ptr noundef nonnull %5, ptr noundef nonnull %6, ptr noundef nonnull %7, ptr noundef nonnull %8) #22
  %35 = load ptr, ptr %18, align 8, !tbaa !558
  call fastcc void @add_v3_v3v3(ptr noundef %35, ptr noundef nonnull %8, ptr noundef nonnull %5) #23
  %36 = load ptr, ptr %18, align 8, !tbaa !558
  call fastcc void @add_v3_v3(ptr noundef %36, ptr noundef nonnull %6) #23
  %37 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 32
  %38 = load ptr, ptr %18, align 8, !tbaa !558
  call void @mul_m4_v3(ptr noundef nonnull %37, ptr noundef %38) #22
  %39 = load ptr, ptr %26, align 8, !tbaa !560
  call fastcc void @sub_v3_v3v3(ptr noundef %39, ptr noundef nonnull %8, ptr noundef nonnull %5) #23
  %40 = load ptr, ptr %26, align 8, !tbaa !560
  call fastcc void @add_v3_v3(ptr noundef %40, ptr noundef nonnull %6) #23
  %41 = load ptr, ptr %26, align 8, !tbaa !560
  call void @mul_m4_v3(ptr noundef nonnull %37, ptr noundef %41) #22
  %42 = load ptr, ptr %30, align 8, !tbaa !561
  call fastcc void @sub_v3_v3v3(ptr noundef %42, ptr noundef nonnull %8, ptr noundef nonnull %5) #23
  %43 = load ptr, ptr %30, align 8, !tbaa !561
  call fastcc void @sub_v3_v3v3(ptr noundef %43, ptr noundef %43, ptr noundef nonnull %6) #23
  %44 = load ptr, ptr %30, align 8, !tbaa !561
  call void @mul_m4_v3(ptr noundef nonnull %37, ptr noundef %44) #22
  %45 = load ptr, ptr %34, align 8, !tbaa !562
  call fastcc void @add_v3_v3v3(ptr noundef %45, ptr noundef nonnull %8, ptr noundef nonnull %5) #23
  %46 = load ptr, ptr %34, align 8, !tbaa !562
  call fastcc void @sub_v3_v3(ptr noundef %46, ptr noundef nonnull %6) #23
  %47 = load ptr, ptr %34, align 8, !tbaa !562
  call void @mul_m4_v3(ptr noundef nonnull %37, ptr noundef %47) #22
  %48 = getelementptr inbounds %struct.VlakRen, ptr %18, i64 0, i32 4
  %49 = load ptr, ptr %34, align 8, !tbaa !562
  %50 = load ptr, ptr %30, align 8, !tbaa !561
  %51 = load ptr, ptr %26, align 8, !tbaa !560
  %52 = load ptr, ptr %18, align 8, !tbaa !558
  %53 = call float @normal_quad_v3(ptr noundef nonnull %48, ptr noundef %49, ptr noundef %50, ptr noundef %51, ptr noundef %52) #22
  %54 = load ptr, ptr %18, align 8, !tbaa !558
  %55 = getelementptr inbounds %struct.VertRen, ptr %54, i64 0, i32 1
  call fastcc void @copy_v3_v3(ptr noundef nonnull %55, ptr noundef nonnull %48) #23
  %56 = load ptr, ptr %26, align 8, !tbaa !560
  %57 = getelementptr inbounds %struct.VertRen, ptr %56, i64 0, i32 1
  call fastcc void @copy_v3_v3(ptr noundef nonnull %57, ptr noundef nonnull %48) #23
  %58 = load ptr, ptr %30, align 8, !tbaa !561
  %59 = getelementptr inbounds %struct.VertRen, ptr %58, i64 0, i32 1
  call fastcc void @copy_v3_v3(ptr noundef nonnull %59, ptr noundef nonnull %48) #23
  %60 = load ptr, ptr %34, align 8, !tbaa !562
  %61 = getelementptr inbounds %struct.VertRen, ptr %60, i64 0, i32 1
  call fastcc void @copy_v3_v3(ptr noundef nonnull %61, ptr noundef nonnull %48) #23
  %62 = getelementptr inbounds %struct.VlakRen, ptr %18, i64 0, i32 5
  store ptr %2, ptr %62, align 8, !tbaa !563
  %63 = getelementptr inbounds %struct.VlakRen, ptr %18, i64 0, i32 8
  store i8 2, ptr %63, align 2, !tbaa !565
  %64 = load i16, ptr %11, align 2, !tbaa !462
  %65 = icmp sgt i16 %64, 1
  br i1 %65, label %66, label %160

66:                                               ; preds = %4
  %67 = sitofp i16 %64 to float
  %68 = fdiv float 1.000000e+00, %67
  %69 = getelementptr inbounds %struct.ParticleBillboardData, ptr %3, i64 0, i32 15
  %70 = load i16, ptr %69, align 4, !tbaa !454
  switch i16 %70, label %123 [
    i16 2, label %86
    i16 3, label %71
    i16 1, label %83
  ]

71:                                               ; preds = %66
  %72 = getelementptr inbounds %struct.ParticleBillboardData, ptr %3, i64 0, i32 7
  %73 = load float, ptr %72, align 8, !tbaa !536
  %74 = getelementptr inbounds %struct.ParticleBillboardData, ptr %3, i64 0, i32 12
  %75 = load i32, ptr %74, align 4, !tbaa !539
  %76 = sitofp i32 %75 to float
  %77 = fmul float %73, %76
  %78 = fptosi float %77 to i32
  %79 = srem i32 %78, %14
  %80 = sitofp i32 %79 to float
  %81 = sitofp i32 %14 to float
  %82 = fdiv float %80, %81
  br label %123

83:                                               ; preds = %66
  %84 = getelementptr inbounds %struct.ParticleBillboardData, ptr %3, i64 0, i32 7
  %85 = load float, ptr %84, align 8, !tbaa !536
  br label %123

86:                                               ; preds = %66
  %87 = getelementptr inbounds %struct.ParticleBillboardData, ptr %3, i64 0, i32 13
  %88 = load i16, ptr %87, align 8, !tbaa !451
  %89 = icmp eq i16 %88, 3
  br i1 %89, label %90, label %98

90:                                               ; preds = %86
  %91 = getelementptr inbounds %struct.ParticleBillboardData, ptr %3, i64 0, i32 5
  %92 = load float, ptr %91, align 8, !tbaa !535
  %93 = fadd float %92, 1.000000e+00
  %94 = fmul float %93, 5.000000e-01
  %95 = fpext float %94 to double
  %96 = call double @fmod(double noundef %95, double noundef 1.000000e+00) #22
  %97 = fptrunc double %96 to float
  br label %123

98:                                               ; preds = %86
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %9) #24
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %9, i8 0, i64 12, i1 false)
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %10) #24
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %10, i8 0, i64 12, i1 false)
  %99 = sext i16 %88 to i32
  %100 = add nsw i32 %99, 1
  %101 = srem i32 %100, 3
  %102 = sext i32 %101 to i64
  %103 = getelementptr inbounds [3 x float], ptr %9, i64 0, i64 %102
  store float 1.000000e+00, ptr %103, align 4, !tbaa !44
  %104 = add nsw i32 %99, 2
  %105 = srem i32 %104, 3
  %106 = sext i32 %105 to i64
  %107 = getelementptr inbounds [3 x float], ptr %10, i64 0, i64 %106
  store float 1.000000e+00, ptr %107, align 4, !tbaa !44
  %108 = getelementptr inbounds %struct.ParticleBillboardData, ptr %3, i64 0, i32 9
  %109 = load i32, ptr %108, align 8, !tbaa !455
  %110 = icmp eq i32 %109, 0
  br i1 %110, label %111, label %114

111:                                              ; preds = %98
  %112 = sext i16 %88 to i64
  %113 = getelementptr inbounds [3 x float], ptr %7, i64 0, i64 %112
  store float 0.000000e+00, ptr %113, align 4, !tbaa !44
  call fastcc void @normalize_v3(ptr noundef nonnull %7) #23
  br label %114

114:                                              ; preds = %111, %98
  %115 = call fastcc float @dot_v3v3(ptr noundef nonnull %7, ptr noundef nonnull %9) #23
  %116 = call fastcc float @saacos(float noundef %115) #23
  %117 = fdiv float %116, 0x400921FB60000000
  %118 = call fastcc float @dot_v3v3(ptr noundef nonnull %7, ptr noundef nonnull %10) #23
  %119 = fcmp olt float %118, 0.000000e+00
  %120 = fmul float %117, 5.000000e-01
  %121 = fsub float 1.000000e+00, %120
  %122 = select i1 %119, float %121, float %120
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %10) #24
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %9) #24
  br label %123

123:                                              ; preds = %66, %114, %90, %71, %83
  %124 = phi float [ %82, %71 ], [ %85, %83 ], [ %97, %90 ], [ %122, %114 ], [ 0.000000e+00, %66 ]
  %125 = getelementptr inbounds %struct.ParticleBillboardData, ptr %3, i64 0, i32 16
  %126 = load i16, ptr %125, align 2, !tbaa !459
  switch i16 %126, label %142 [
    i16 1, label %127
    i16 2, label %133
  ]

127:                                              ; preds = %123
  %128 = getelementptr inbounds %struct.ParticleBillboardData, ptr %3, i64 0, i32 10
  %129 = load i32, ptr %128, align 4, !tbaa !537
  %130 = sitofp i32 %129 to float
  %131 = sitofp i32 %14 to float
  %132 = fdiv float %130, %131
  br label %136

133:                                              ; preds = %123
  %134 = getelementptr inbounds %struct.ParticleBillboardData, ptr %3, i64 0, i32 6
  %135 = load float, ptr %134, align 4, !tbaa !530
  br label %136

136:                                              ; preds = %127, %133
  %137 = phi float [ %135, %133 ], [ %132, %127 ]
  %138 = fadd float %124, %137
  %139 = fpext float %138 to double
  %140 = call double @fmod(double noundef %139, double noundef 1.000000e+00) #22
  %141 = fptrunc double %140 to float
  br label %142

142:                                              ; preds = %136, %123
  %143 = phi float [ %124, %123 ], [ %141, %136 ]
  %144 = fadd float %143, 0x3EB4000000000000
  %145 = sitofp i32 %14 to float
  %146 = fmul float %144, %145
  %147 = fptosi float %146 to i32
  %148 = load i16, ptr %11, align 2, !tbaa !462
  %149 = sext i16 %148 to i32
  %150 = srem i32 %147, %149
  %151 = sdiv i32 %147, %149
  %152 = xor i32 %151, -1
  %153 = add i32 %152, %149
  %154 = insertelement <2 x i32> poison, i32 %150, i64 0
  %155 = insertelement <2 x i32> %154, i32 %153, i64 1
  %156 = sitofp <2 x i32> %155 to <2 x float>
  %157 = insertelement <2 x float> poison, float %68, i64 0
  %158 = shufflevector <2 x float> %157, <2 x float> poison, <2 x i32> zeroinitializer
  %159 = fmul <2 x float> %158, %156
  br label %160

160:                                              ; preds = %142, %4
  %161 = phi float [ %68, %142 ], [ 1.000000e+00, %4 ]
  %162 = phi <2 x float> [ %159, %142 ], [ zeroinitializer, %4 ]
  %163 = getelementptr inbounds %struct.ParticleBillboardData, ptr %3, i64 0, i32 8
  %164 = load i32, ptr %163, align 4, !tbaa !78
  %165 = icmp sgt i32 %164, -1
  br i1 %165, label %166, label %169

166:                                              ; preds = %160
  %167 = call ptr @RE_vlakren_get_tface(ptr noundef nonnull %1, ptr noundef nonnull %18, i32 noundef %164, ptr noundef null, i32 noundef 1) #22
  store <4 x float> <float 1.000000e+00, float 1.000000e+00, float 0.000000e+00, float 1.000000e+00>, ptr %167, align 8, !tbaa !44
  %168 = getelementptr inbounds [4 x [2 x float]], ptr %167, i64 0, i64 2
  store <4 x float> <float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float 0.000000e+00>, ptr %168, align 8, !tbaa !44
  br label %169

169:                                              ; preds = %166, %160
  %170 = getelementptr inbounds %struct.ParticleBillboardData, ptr %3, i64 0, i32 8, i64 1
  %171 = load i32, ptr %170, align 4, !tbaa !78
  %172 = icmp sgt i32 %171, -1
  br i1 %172, label %173, label %191

173:                                              ; preds = %169
  %174 = call ptr @RE_vlakren_get_tface(ptr noundef nonnull %1, ptr noundef nonnull %18, i32 noundef %171, ptr noundef null, i32 noundef 1) #22
  %175 = getelementptr inbounds %struct.ParticleBillboardData, ptr %3, i64 0, i32 7
  %176 = load float, ptr %175, align 8, !tbaa !536
  %177 = getelementptr inbounds [4 x [2 x float]], ptr %174, i64 0, i64 3
  store float %176, ptr %177, align 8, !tbaa !44
  %178 = getelementptr inbounds [4 x [2 x float]], ptr %174, i64 0, i64 2
  store float %176, ptr %178, align 8, !tbaa !44
  %179 = getelementptr inbounds [4 x [2 x float]], ptr %174, i64 0, i64 1
  store float %176, ptr %179, align 8, !tbaa !44
  store float %176, ptr %174, align 8, !tbaa !44
  %180 = getelementptr inbounds %struct.ParticleBillboardData, ptr %3, i64 0, i32 10
  %181 = load i32, ptr %180, align 4, !tbaa !537
  %182 = sitofp i32 %181 to float
  %183 = getelementptr inbounds %struct.ParticleBillboardData, ptr %3, i64 0, i32 11
  %184 = load i32, ptr %183, align 8, !tbaa !460
  %185 = sitofp i32 %184 to float
  %186 = fdiv float %182, %185
  %187 = getelementptr inbounds [4 x [2 x float]], ptr %174, i64 0, i64 3, i64 1
  store float %186, ptr %187, align 4, !tbaa !44
  %188 = getelementptr inbounds [4 x [2 x float]], ptr %174, i64 0, i64 2, i64 1
  store float %186, ptr %188, align 4, !tbaa !44
  %189 = getelementptr inbounds [4 x [2 x float]], ptr %174, i64 0, i64 1, i64 1
  store float %186, ptr %189, align 4, !tbaa !44
  %190 = getelementptr inbounds [2 x float], ptr %174, i64 0, i64 1
  store float %186, ptr %190, align 4, !tbaa !44
  br label %191

191:                                              ; preds = %173, %169
  %192 = load i16, ptr %11, align 2, !tbaa !462
  %193 = icmp sgt i16 %192, 1
  br i1 %193, label %194, label %212

194:                                              ; preds = %191
  %195 = getelementptr inbounds %struct.ParticleBillboardData, ptr %3, i64 0, i32 8, i64 2
  %196 = load i32, ptr %195, align 4, !tbaa !78
  %197 = icmp sgt i32 %196, -1
  br i1 %197, label %198, label %212

198:                                              ; preds = %194
  %199 = call ptr @RE_vlakren_get_tface(ptr noundef nonnull %1, ptr noundef nonnull %18, i32 noundef %196, ptr noundef null, i32 noundef 1) #22
  %200 = insertelement <2 x float> poison, float %161, i64 0
  %201 = shufflevector <2 x float> %200, <2 x float> poison, <2 x i32> zeroinitializer
  %202 = fadd <2 x float> %162, %201
  store <2 x float> %202, ptr %199, align 8, !tbaa !44
  %203 = getelementptr inbounds [4 x [2 x float]], ptr %199, i64 0, i64 1
  %204 = extractelement <2 x float> %162, i64 0
  store float %204, ptr %203, align 8, !tbaa !44
  %205 = getelementptr inbounds [4 x [2 x float]], ptr %199, i64 0, i64 1, i64 1
  %206 = extractelement <2 x float> %202, i64 1
  store float %206, ptr %205, align 4, !tbaa !44
  %207 = getelementptr inbounds [4 x [2 x float]], ptr %199, i64 0, i64 2
  store <2 x float> %162, ptr %207, align 8, !tbaa !44
  %208 = getelementptr inbounds [4 x [2 x float]], ptr %199, i64 0, i64 3
  %209 = extractelement <2 x float> %202, i64 0
  store float %209, ptr %208, align 8, !tbaa !44
  %210 = getelementptr inbounds [4 x [2 x float]], ptr %199, i64 0, i64 3, i64 1
  %211 = extractelement <2 x float> %162, i64 1
  store float %211, ptr %210, align 4, !tbaa !44
  br label %212

212:                                              ; preds = %198, %194, %191
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %8) #24
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %7) #24
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %6) #24
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %5) #24
  ret void
}

; Function Attrs: optsize
declare void @psys_make_billboard(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #7

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @sub_v3_v3(ptr nocapture noundef %0, ptr nocapture noundef readonly %1) unnamed_addr #6 !PGOFuncName !695 {
  %3 = load float, ptr %1, align 4, !tbaa !44
  %4 = load float, ptr %0, align 4, !tbaa !44
  %5 = fsub float %4, %3
  store float %5, ptr %0, align 4, !tbaa !44
  %6 = getelementptr inbounds float, ptr %1, i64 1
  %7 = load float, ptr %6, align 4, !tbaa !44
  %8 = getelementptr inbounds float, ptr %0, i64 1
  %9 = load float, ptr %8, align 4, !tbaa !44
  %10 = fsub float %9, %7
  store float %10, ptr %8, align 4, !tbaa !44
  %11 = getelementptr inbounds float, ptr %1, i64 2
  %12 = load float, ptr %11, align 4, !tbaa !44
  %13 = getelementptr inbounds float, ptr %0, i64 2
  %14 = load float, ptr %13, align 4, !tbaa !44
  %15 = fsub float %14, %12
  store float %15, ptr %13, align 4, !tbaa !44
  ret void
}

; Function Attrs: mustprogress nofree nounwind optsize willreturn memory(write)
declare double @fmod(double noundef, double noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @accumulate_vertex_normals(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #7

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @calc_tangent_vector(ptr noundef %0, ptr noundef %1) unnamed_addr #4 !PGOFuncName !696 {
  %3 = alloca [3 x float], align 4
  %4 = alloca [4 x [2 x float]], align 16
  %5 = getelementptr inbounds %struct.ObjectRen, ptr %0, i64 0, i32 25
  %6 = load i32, ptr %5, align 8, !tbaa !697
  %7 = tail call ptr @RE_vlakren_get_tface(ptr noundef %0, ptr noundef %1, i32 noundef %6, ptr noundef null, i32 noundef 0) #22
  %8 = load ptr, ptr %1, align 8, !tbaa !558
  %9 = getelementptr inbounds %struct.VlakRen, ptr %1, i64 0, i32 1
  %10 = load ptr, ptr %9, align 8, !tbaa !560
  %11 = getelementptr inbounds %struct.VlakRen, ptr %1, i64 0, i32 2
  %12 = load ptr, ptr %11, align 8, !tbaa !561
  %13 = getelementptr inbounds %struct.VlakRen, ptr %1, i64 0, i32 3
  %14 = load ptr, ptr %13, align 8, !tbaa !562
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %3) #24
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %4) #24
  %15 = icmp eq ptr %7, null
  br i1 %15, label %20, label %16

16:                                               ; preds = %2
  %17 = getelementptr inbounds [4 x [2 x float]], ptr %7, i64 0, i64 1
  %18 = getelementptr inbounds [4 x [2 x float]], ptr %7, i64 0, i64 2
  %19 = getelementptr inbounds [4 x [2 x float]], ptr %7, i64 0, i64 3
  br label %60

20:                                               ; preds = %2
  %21 = getelementptr inbounds %struct.VertRen, ptr %8, i64 0, i32 2
  %22 = load ptr, ptr %21, align 8, !tbaa !552
  %23 = icmp eq ptr %22, null
  br i1 %23, label %74, label %24

24:                                               ; preds = %20
  %25 = getelementptr inbounds [4 x [2 x float]], ptr %4, i64 0, i64 1
  %26 = getelementptr inbounds [4 x [2 x float]], ptr %4, i64 0, i64 2
  %27 = getelementptr inbounds [4 x [2 x float]], ptr %4, i64 0, i64 3
  %28 = getelementptr inbounds [2 x float], ptr %4, i64 0, i64 1
  %29 = load float, ptr %22, align 4, !tbaa !44
  %30 = getelementptr inbounds float, ptr %22, i64 1
  %31 = load float, ptr %30, align 4, !tbaa !44
  %32 = getelementptr inbounds float, ptr %22, i64 2
  %33 = load float, ptr %32, align 4, !tbaa !44
  call void @map_to_sphere(ptr noundef nonnull %4, ptr noundef nonnull %28, float noundef %29, float noundef %31, float noundef %33) #22
  %34 = getelementptr inbounds [4 x [2 x float]], ptr %4, i64 0, i64 1, i64 1
  %35 = getelementptr inbounds %struct.VertRen, ptr %10, i64 0, i32 2
  %36 = load ptr, ptr %35, align 8, !tbaa !552
  %37 = load float, ptr %36, align 4, !tbaa !44
  %38 = getelementptr inbounds float, ptr %36, i64 1
  %39 = load float, ptr %38, align 4, !tbaa !44
  %40 = getelementptr inbounds float, ptr %36, i64 2
  %41 = load float, ptr %40, align 4, !tbaa !44
  call void @map_to_sphere(ptr noundef nonnull %25, ptr noundef nonnull %34, float noundef %37, float noundef %39, float noundef %41) #22
  %42 = getelementptr inbounds [4 x [2 x float]], ptr %4, i64 0, i64 2, i64 1
  %43 = getelementptr inbounds %struct.VertRen, ptr %12, i64 0, i32 2
  %44 = load ptr, ptr %43, align 8, !tbaa !552
  %45 = load float, ptr %44, align 4, !tbaa !44
  %46 = getelementptr inbounds float, ptr %44, i64 1
  %47 = load float, ptr %46, align 4, !tbaa !44
  %48 = getelementptr inbounds float, ptr %44, i64 2
  %49 = load float, ptr %48, align 4, !tbaa !44
  call void @map_to_sphere(ptr noundef nonnull %26, ptr noundef nonnull %42, float noundef %45, float noundef %47, float noundef %49) #22
  %50 = icmp eq ptr %14, null
  br i1 %50, label %60, label %51

51:                                               ; preds = %24
  %52 = getelementptr inbounds [4 x [2 x float]], ptr %4, i64 0, i64 3, i64 1
  %53 = getelementptr inbounds %struct.VertRen, ptr %14, i64 0, i32 2
  %54 = load ptr, ptr %53, align 8, !tbaa !552
  %55 = load float, ptr %54, align 4, !tbaa !44
  %56 = getelementptr inbounds float, ptr %54, i64 1
  %57 = load float, ptr %56, align 4, !tbaa !44
  %58 = getelementptr inbounds float, ptr %54, i64 2
  %59 = load float, ptr %58, align 4, !tbaa !44
  call void @map_to_sphere(ptr noundef nonnull %27, ptr noundef nonnull %52, float noundef %55, float noundef %57, float noundef %59) #22
  br label %60

60:                                               ; preds = %51, %24, %16
  %61 = phi ptr [ %7, %16 ], [ %4, %51 ], [ %4, %24 ]
  %62 = phi ptr [ %17, %16 ], [ %25, %51 ], [ %25, %24 ]
  %63 = phi ptr [ %18, %16 ], [ %26, %51 ], [ %26, %24 ]
  %64 = phi ptr [ %19, %16 ], [ %27, %51 ], [ %27, %24 ]
  %65 = getelementptr inbounds %struct.VlakRen, ptr %1, i64 0, i32 4
  call void @tangent_from_uv(ptr noundef nonnull %61, ptr noundef nonnull %62, ptr noundef nonnull %63, ptr noundef %8, ptr noundef %10, ptr noundef %12, ptr noundef nonnull %65, ptr noundef nonnull %3) #22
  %66 = call ptr @RE_vertren_get_tangent(ptr noundef nonnull %0, ptr noundef %8, i32 noundef 1) #22
  call fastcc void @add_v3_v3(ptr noundef %66, ptr noundef nonnull %3) #23
  %67 = call ptr @RE_vertren_get_tangent(ptr noundef nonnull %0, ptr noundef %10, i32 noundef 1) #22
  call fastcc void @add_v3_v3(ptr noundef %67, ptr noundef nonnull %3) #23
  %68 = call ptr @RE_vertren_get_tangent(ptr noundef nonnull %0, ptr noundef %12, i32 noundef 1) #22
  call fastcc void @add_v3_v3(ptr noundef %68, ptr noundef nonnull %3) #23
  %69 = icmp eq ptr %14, null
  br i1 %69, label %74, label %70

70:                                               ; preds = %60
  call void @tangent_from_uv(ptr noundef nonnull %61, ptr noundef nonnull %63, ptr noundef nonnull %64, ptr noundef %8, ptr noundef %12, ptr noundef nonnull %14, ptr noundef nonnull %65, ptr noundef nonnull %3) #22
  %71 = call ptr @RE_vertren_get_tangent(ptr noundef nonnull %0, ptr noundef %8, i32 noundef 1) #22
  call fastcc void @add_v3_v3(ptr noundef %71, ptr noundef nonnull %3) #23
  %72 = call ptr @RE_vertren_get_tangent(ptr noundef nonnull %0, ptr noundef %12, i32 noundef 1) #22
  call fastcc void @add_v3_v3(ptr noundef %72, ptr noundef nonnull %3) #23
  %73 = call ptr @RE_vertren_get_tangent(ptr noundef nonnull %0, ptr noundef nonnull %14, i32 noundef 1) #22
  call fastcc void @add_v3_v3(ptr noundef %73, ptr noundef nonnull %3) #23
  br label %74

74:                                               ; preds = %60, %70, %20
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %4) #24
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %3) #24
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc zeroext i8 @is_zero_v3(ptr nocapture noundef readonly %0) unnamed_addr #12 !PGOFuncName !698 {
  %2 = load float, ptr %0, align 4, !tbaa !44
  %3 = fcmp oeq float %2, 0.000000e+00
  br i1 %3, label %4, label %13

4:                                                ; preds = %1
  %5 = getelementptr inbounds float, ptr %0, i64 1
  %6 = load float, ptr %5, align 4, !tbaa !44
  %7 = fcmp oeq float %6, 0.000000e+00
  br i1 %7, label %8, label %13

8:                                                ; preds = %4
  %9 = getelementptr inbounds float, ptr %0, i64 2
  %10 = load float, ptr %9, align 4, !tbaa !44
  %11 = fcmp oeq float %10, 0.000000e+00
  %12 = zext i1 %11 to i8
  br label %13

13:                                               ; preds = %8, %4, %1
  %14 = phi i8 [ 0, %4 ], [ 0, %1 ], [ %12, %8 ]
  ret i8 %14
}

; Function Attrs: optsize
declare ptr @RE_vertren_get_tangent(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define internal i32 @GetNumFaces(ptr nocapture noundef readonly %0) #16 !PGOFuncName !699 {
  %2 = getelementptr inbounds %struct.SMikkTSpaceContext, ptr %0, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !672
  %4 = load ptr, ptr %3, align 8, !tbaa !670
  %5 = getelementptr inbounds %struct.ObjectRen, ptr %4, i64 0, i32 11
  %6 = load i32, ptr %5, align 4, !tbaa !555
  ret i32 %6
}

; Function Attrs: noinline nounwind optsize uwtable
define internal i32 @GetNumVertsOfFace(ptr nocapture noundef readonly %0, i32 noundef %1) #4 !PGOFuncName !700 {
  %3 = getelementptr inbounds %struct.SMikkTSpaceContext, ptr %0, i64 0, i32 1
  %4 = load ptr, ptr %3, align 8, !tbaa !672
  %5 = load ptr, ptr %4, align 8, !tbaa !670
  %6 = tail call ptr @RE_findOrAddVlak(ptr noundef %5, i32 noundef %1) #22
  %7 = getelementptr inbounds %struct.VlakRen, ptr %6, i64 0, i32 3
  %8 = load ptr, ptr %7, align 8, !tbaa !562
  %9 = icmp eq ptr %8, null
  %10 = select i1 %9, i32 3, i32 4
  ret i32 %10
}

; Function Attrs: noinline nounwind optsize uwtable
define internal void @GetPosition(ptr nocapture noundef readonly %0, ptr nocapture noundef writeonly %1, i32 noundef %2, i32 noundef %3) #4 !PGOFuncName !701 {
  %5 = getelementptr inbounds %struct.SMikkTSpaceContext, ptr %0, i64 0, i32 1
  %6 = load ptr, ptr %5, align 8, !tbaa !672
  %7 = load ptr, ptr %6, align 8, !tbaa !670
  %8 = tail call ptr @RE_findOrAddVlak(ptr noundef %7, i32 noundef %2) #22
  %9 = sext i32 %3 to i64
  %10 = getelementptr inbounds ptr, ptr %8, i64 %9
  %11 = load ptr, ptr %10, align 8, !tbaa !558
  tail call fastcc void @copy_v3_v3(ptr noundef %1, ptr noundef %11) #23
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal void @GetTextureCoordinate(ptr nocapture noundef readonly %0, ptr noundef %1, i32 noundef %2, i32 noundef %3) #4 !PGOFuncName !702 {
  %5 = getelementptr inbounds %struct.SMikkTSpaceContext, ptr %0, i64 0, i32 1
  %6 = load ptr, ptr %5, align 8, !tbaa !672
  %7 = load ptr, ptr %6, align 8, !tbaa !670
  %8 = tail call ptr @RE_findOrAddVlak(ptr noundef %7, i32 noundef %2) #22
  %9 = load ptr, ptr %6, align 8, !tbaa !670
  %10 = getelementptr inbounds %struct.ObjectRen, ptr %9, i64 0, i32 25
  %11 = load i32, ptr %10, align 8, !tbaa !697
  %12 = tail call ptr @RE_vlakren_get_tface(ptr noundef %9, ptr noundef %8, i32 noundef %11, ptr noundef null, i32 noundef 0) #22
  %13 = icmp eq ptr %12, null
  %14 = sext i32 %3 to i64
  br i1 %13, label %17, label %15

15:                                               ; preds = %4
  %16 = getelementptr inbounds [4 x [2 x float]], ptr %12, i64 0, i64 %14
  tail call fastcc void @copy_v2_v2(ptr noundef %1, ptr noundef nonnull %16) #23
  br label %31

17:                                               ; preds = %4
  %18 = getelementptr inbounds ptr, ptr %8, i64 %14
  %19 = load ptr, ptr %18, align 8, !tbaa !558
  %20 = getelementptr inbounds %struct.VertRen, ptr %19, i64 0, i32 2
  %21 = load ptr, ptr %20, align 8, !tbaa !552
  %22 = icmp eq ptr %21, null
  br i1 %22, label %30, label %23

23:                                               ; preds = %17
  %24 = getelementptr inbounds float, ptr %1, i64 1
  %25 = load float, ptr %21, align 4, !tbaa !44
  %26 = getelementptr inbounds float, ptr %21, i64 1
  %27 = load float, ptr %26, align 4, !tbaa !44
  %28 = getelementptr inbounds float, ptr %21, i64 2
  %29 = load float, ptr %28, align 4, !tbaa !44
  tail call void @map_to_sphere(ptr noundef %1, ptr noundef nonnull %24, float noundef %25, float noundef %27, float noundef %29) #22
  br label %31

30:                                               ; preds = %17
  tail call fastcc void @zero_v2(ptr noundef %1) #23
  br label %31

31:                                               ; preds = %23, %30, %15
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal void @GetNormal(ptr nocapture noundef readonly %0, ptr nocapture noundef writeonly %1, i32 noundef %2, i32 noundef %3) #4 !PGOFuncName !703 {
  %5 = getelementptr inbounds %struct.SMikkTSpaceContext, ptr %0, i64 0, i32 1
  %6 = load ptr, ptr %5, align 8, !tbaa !672
  %7 = load ptr, ptr %6, align 8, !tbaa !670
  %8 = tail call ptr @RE_findOrAddVlak(ptr noundef %7, i32 noundef %2) #22
  %9 = getelementptr inbounds %struct.VlakRen, ptr %8, i64 0, i32 7
  %10 = load i8, ptr %9, align 1, !tbaa !564
  %11 = and i8 %10, 1
  %12 = icmp eq i8 %11, 0
  br i1 %12, label %18, label %13

13:                                               ; preds = %4
  %14 = sext i32 %3 to i64
  %15 = getelementptr inbounds ptr, ptr %8, i64 %14
  %16 = load ptr, ptr %15, align 8, !tbaa !558
  %17 = getelementptr inbounds %struct.VertRen, ptr %16, i64 0, i32 1
  tail call fastcc void @copy_v3_v3(ptr noundef %1, ptr noundef nonnull %17) #23
  br label %20

18:                                               ; preds = %4
  %19 = getelementptr inbounds %struct.VlakRen, ptr %8, i64 0, i32 4
  tail call fastcc void @negate_v3_v3(ptr noundef %1, ptr noundef nonnull %19) #23
  br label %20

20:                                               ; preds = %18, %13
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal void @SetTSpace(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, float noundef %2, i32 noundef %3, i32 noundef %4) #4 !PGOFuncName !704 {
  %6 = getelementptr inbounds %struct.SMikkTSpaceContext, ptr %0, i64 0, i32 1
  %7 = load ptr, ptr %6, align 8, !tbaa !672
  %8 = load ptr, ptr %7, align 8, !tbaa !670
  %9 = tail call ptr @RE_findOrAddVlak(ptr noundef %8, i32 noundef %3) #22
  %10 = load ptr, ptr %7, align 8, !tbaa !670
  %11 = tail call ptr @RE_vlakren_get_nmap_tangent(ptr noundef %10, ptr noundef %9, i32 noundef 1) #22
  %12 = icmp eq ptr %11, null
  br i1 %12, label %20, label %13

13:                                               ; preds = %5
  %14 = shl nsw i32 %4, 2
  %15 = sext i32 %14 to i64
  %16 = getelementptr inbounds float, ptr %11, i64 %15
  tail call fastcc void @copy_v3_v3(ptr noundef nonnull %16, ptr noundef %1) #23
  %17 = or disjoint i32 %14, 3
  %18 = sext i32 %17 to i64
  %19 = getelementptr inbounds float, ptr %11, i64 %18
  store float %2, ptr %19, align 4, !tbaa !44
  br label %20

20:                                               ; preds = %13, %5
  ret void
}

; Function Attrs: optsize
declare i32 @genTangSpaceDefault(ptr noundef) local_unnamed_addr #7

; Function Attrs: optsize
declare void @map_to_sphere(ptr noundef, ptr noundef, float noundef, float noundef, float noundef) local_unnamed_addr #7

; Function Attrs: optsize
declare void @tangent_from_uv(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #7

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable
define internal fastcc void @zero_v2(ptr nocapture noundef writeonly %0) unnamed_addr #13 !PGOFuncName !705 {
  store <2 x float> zeroinitializer, ptr %0, align 4, !tbaa !44
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @negate_v3_v3(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1) unnamed_addr #6 !PGOFuncName !706 {
  %3 = load float, ptr %1, align 4, !tbaa !44
  %4 = fneg float %3
  store float %4, ptr %0, align 4, !tbaa !44
  %5 = getelementptr inbounds float, ptr %1, i64 1
  %6 = load float, ptr %5, align 4, !tbaa !44
  %7 = fneg float %6
  %8 = getelementptr inbounds float, ptr %0, i64 1
  store float %7, ptr %8, align 4, !tbaa !44
  %9 = getelementptr inbounds float, ptr %1, i64 2
  %10 = load float, ptr %9, align 4, !tbaa !44
  %11 = fneg float %10
  %12 = getelementptr inbounds float, ptr %0, i64 2
  store float %11, ptr %12, align 4, !tbaa !44
  ret void
}

; Function Attrs: optsize
declare ptr @RE_vlakren_get_nmap_tangent(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: optsize
declare void @BKE_displist_make_curveTypes_forRender(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #7

; Function Attrs: optsize
declare zeroext i8 @is_negative_m4(ptr noundef) local_unnamed_addr #7

; Function Attrs: optsize
declare void @transpose_m4(ptr noundef) local_unnamed_addr #7

; Function Attrs: optsize
declare ptr @BKE_displist_make_orco(ptr noundef, ptr noundef, ptr noundef, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #7

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @init_render_dm(ptr noundef %0, ptr nocapture noundef %1, ptr noundef %2, i32 noundef %3, ptr noundef %4, ptr noundef %5) unnamed_addr #4 !PGOFuncName !707 {
  %7 = alloca ptr, align 8
  %8 = getelementptr inbounds %struct.ObjectRen, ptr %2, i64 0, i32 2
  %9 = load ptr, ptr %8, align 8, !tbaa !232
  %10 = getelementptr inbounds %struct.DerivedMesh, ptr %0, i64 0, i32 31
  %11 = load ptr, ptr %10, align 8, !tbaa !594
  %12 = tail call ptr %11(ptr noundef %0) #22
  %13 = getelementptr inbounds %struct.DerivedMesh, ptr %0, i64 0, i32 23
  %14 = load ptr, ptr %13, align 8, !tbaa !595
  %15 = tail call i32 %14(ptr noundef %0) #22
  %16 = icmp sgt i32 %15, 0
  br i1 %16, label %17, label %35

17:                                               ; preds = %6
  %18 = getelementptr inbounds %struct.ObjectRen, ptr %2, i64 0, i32 10
  br label %19

19:                                               ; preds = %17, %30
  %20 = phi ptr [ %4, %17 ], [ %31, %30 ]
  %21 = phi i32 [ 0, %17 ], [ %32, %30 ]
  %22 = phi ptr [ %12, %17 ], [ %33, %30 ]
  %23 = load i32, ptr %18, align 8, !tbaa !196
  %24 = add nsw i32 %23, 1
  store i32 %24, ptr %18, align 8, !tbaa !196
  %25 = tail call ptr @RE_findOrAddVert(ptr noundef nonnull %2, i32 noundef %23) #22
  tail call fastcc void @copy_v3_v3(ptr noundef %25, ptr noundef %22) #23
  tail call void @mul_m4_v3(ptr noundef %5, ptr noundef %25) #22
  %26 = icmp eq ptr %20, null
  br i1 %26, label %30, label %27

27:                                               ; preds = %19
  %28 = getelementptr inbounds %struct.VertRen, ptr %25, i64 0, i32 2
  store ptr %20, ptr %28, align 8, !tbaa !552
  %29 = getelementptr inbounds float, ptr %20, i64 3
  br label %30

30:                                               ; preds = %19, %27
  %31 = phi ptr [ %29, %27 ], [ null, %19 ]
  %32 = add nuw nsw i32 %21, 1
  %33 = getelementptr inbounds %struct.MVert, ptr %22, i64 1
  %34 = icmp eq i32 %32, %15
  br i1 %34, label %35, label %19, !llvm.loop !708

35:                                               ; preds = %30, %6
  %36 = icmp eq i32 %3, 0
  br i1 %36, label %37, label %170

37:                                               ; preds = %35
  %38 = getelementptr inbounds %struct.DerivedMesh, ptr %0, i64 0, i32 2
  tail call void @RE_set_customdata_names(ptr noundef nonnull %2, ptr noundef nonnull %38) #22
  %39 = getelementptr inbounds %struct.ObjectRen, ptr %2, i64 0, i32 10
  %40 = load i32, ptr %39, align 8, !tbaa !196
  %41 = sub nsw i32 %40, %15
  %42 = getelementptr inbounds %struct.Object, ptr %9, i64 0, i32 31
  %43 = getelementptr inbounds %struct.DerivedMesh, ptr %0, i64 0, i32 25
  %44 = getelementptr inbounds %struct.DerivedMesh, ptr %0, i64 0, i32 33
  %45 = getelementptr inbounds %struct.ObjectRen, ptr %2, i64 0, i32 11
  %46 = getelementptr inbounds %struct.DerivedMesh, ptr %0, i64 0, i32 2, i32 2
  br label %48

47:                                               ; preds = %165, %57
  br label %48, !llvm.loop !709

48:                                               ; preds = %47, %37
  %49 = phi i16 [ 0, %37 ], [ %58, %47 ]
  %50 = sext i16 %49 to i32
  %51 = load i32, ptr %42, align 8, !tbaa !398
  %52 = icmp sgt i32 %51, %50
  br i1 %52, label %57, label %53

53:                                               ; preds = %48
  %54 = icmp eq i16 %49, 0
  %55 = icmp eq i32 %51, 0
  %56 = and i1 %54, %55
  br i1 %56, label %57, label %169

57:                                               ; preds = %53, %48
  %58 = add i16 %49, 1
  %59 = call fastcc ptr @give_render_material(ptr noundef %1, ptr noundef nonnull %9, i16 noundef signext %58) #23
  %60 = load ptr, ptr %43, align 8, !tbaa !483
  %61 = call i32 %60(ptr noundef %0) #22
  %62 = load ptr, ptr %44, align 8, !tbaa !603
  %63 = call ptr %62(ptr noundef %0) #22
  %64 = icmp sgt i32 %61, 0
  br i1 %64, label %65, label %47

65:                                               ; preds = %57
  %66 = zext nneg i32 %61 to i64
  br label %67

67:                                               ; preds = %65, %165
  %68 = phi i64 [ 0, %65 ], [ %166, %165 ]
  %69 = phi ptr [ %63, %65 ], [ %167, %165 ]
  %70 = getelementptr inbounds %struct.MFace, ptr %69, i64 0, i32 4
  %71 = load i16, ptr %70, align 4, !tbaa !604
  %72 = icmp eq i16 %71, %49
  br i1 %72, label %73, label %165

73:                                               ; preds = %67
  %74 = load i32, ptr %69, align 4, !tbaa !612
  %75 = getelementptr inbounds %struct.MFace, ptr %69, i64 0, i32 1
  %76 = load i32, ptr %75, align 4, !tbaa !606
  %77 = getelementptr inbounds %struct.MFace, ptr %69, i64 0, i32 2
  %78 = load i32, ptr %77, align 4, !tbaa !611
  %79 = getelementptr inbounds %struct.MFace, ptr %69, i64 0, i32 3
  %80 = load i32, ptr %79, align 4, !tbaa !607
  %81 = getelementptr inbounds %struct.MFace, ptr %69, i64 0, i32 6
  %82 = load i8, ptr %81, align 1, !tbaa !608
  %83 = and i8 %82, 1
  %84 = load i32, ptr %45, align 4, !tbaa !555
  %85 = add nsw i32 %84, 1
  store i32 %85, ptr %45, align 4, !tbaa !555
  %86 = call ptr @RE_findOrAddVlak(ptr noundef %2, i32 noundef %84) #22
  %87 = add nsw i32 %74, %41
  %88 = call ptr @RE_findOrAddVert(ptr noundef %2, i32 noundef %87) #22
  store ptr %88, ptr %86, align 8, !tbaa !558
  %89 = add nsw i32 %76, %41
  %90 = call ptr @RE_findOrAddVert(ptr noundef %2, i32 noundef %89) #22
  %91 = getelementptr inbounds %struct.VlakRen, ptr %86, i64 0, i32 1
  store ptr %90, ptr %91, align 8, !tbaa !560
  %92 = add nsw i32 %78, %41
  %93 = call ptr @RE_findOrAddVert(ptr noundef %2, i32 noundef %92) #22
  %94 = getelementptr inbounds %struct.VlakRen, ptr %86, i64 0, i32 2
  store ptr %93, ptr %94, align 8, !tbaa !561
  %95 = icmp eq i32 %80, 0
  br i1 %95, label %96, label %98

96:                                               ; preds = %73
  %97 = getelementptr inbounds %struct.VlakRen, ptr %86, i64 0, i32 3
  store ptr null, ptr %97, align 8
  br label %109

98:                                               ; preds = %73
  %99 = add nsw i32 %80, %41
  %100 = call ptr @RE_findOrAddVert(ptr noundef nonnull %2, i32 noundef %99) #22
  %101 = getelementptr inbounds %struct.VlakRen, ptr %86, i64 0, i32 3
  store ptr %100, ptr %101, align 8
  %102 = icmp eq ptr %100, null
  br i1 %102, label %109, label %103

103:                                              ; preds = %98
  %104 = getelementptr inbounds %struct.VlakRen, ptr %86, i64 0, i32 4
  %105 = load ptr, ptr %94, align 8, !tbaa !561
  %106 = load ptr, ptr %91, align 8, !tbaa !560
  %107 = load ptr, ptr %86, align 8, !tbaa !558
  %108 = call float @normal_quad_v3(ptr noundef nonnull %104, ptr noundef nonnull %100, ptr noundef %105, ptr noundef %106, ptr noundef %107) #22
  br label %115

109:                                              ; preds = %96, %98
  %110 = getelementptr inbounds %struct.VlakRen, ptr %86, i64 0, i32 4
  %111 = load ptr, ptr %94, align 8, !tbaa !561
  %112 = load ptr, ptr %91, align 8, !tbaa !560
  %113 = load ptr, ptr %86, align 8, !tbaa !558
  %114 = call float @normal_tri_v3(ptr noundef nonnull %110, ptr noundef %111, ptr noundef %112, ptr noundef %113) #22
  br label %115

115:                                              ; preds = %109, %103
  %116 = phi float [ %108, %103 ], [ %114, %109 ]
  %117 = getelementptr inbounds %struct.VlakRen, ptr %86, i64 0, i32 5
  store ptr %59, ptr %117, align 8, !tbaa !563
  %118 = getelementptr inbounds %struct.VlakRen, ptr %86, i64 0, i32 7
  store i8 %83, ptr %118, align 1, !tbaa !564
  %119 = getelementptr inbounds %struct.VlakRen, ptr %86, i64 0, i32 8
  store i8 0, ptr %119, align 2, !tbaa !565
  %120 = fcmp oeq float %116, 0.000000e+00
  br i1 %120, label %121, label %124

121:                                              ; preds = %115
  %122 = load i32, ptr %45, align 4, !tbaa !555
  %123 = add nsw i32 %122, -1
  store i32 %123, ptr %45, align 4, !tbaa !555
  br label %165

124:                                              ; preds = %115
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %7) #24
  %125 = load i32, ptr %46, align 4, !tbaa !613
  %126 = icmp sgt i32 %125, 0
  br i1 %126, label %127, label %164

127:                                              ; preds = %124
  %128 = shl i64 %68, 2
  %129 = and i64 %128, 4294967292
  br label %130

130:                                              ; preds = %127, %157
  %131 = phi i64 [ 0, %127 ], [ %160, %157 ]
  %132 = phi i32 [ 0, %127 ], [ %159, %157 ]
  %133 = phi i32 [ 0, %127 ], [ %158, %157 ]
  %134 = load ptr, ptr %38, align 8, !tbaa !614
  %135 = getelementptr inbounds %struct.CustomDataLayer, ptr %134, i64 %131
  %136 = getelementptr inbounds %struct.CustomDataLayer, ptr %134, i64 %131, i32 8
  store ptr %136, ptr %7, align 8, !tbaa !47
  %137 = load i32, ptr %135, align 8, !tbaa !615
  %138 = icmp eq i32 %137, 5
  %139 = icmp slt i32 %133, 8
  %140 = select i1 %138, i1 %139, i1 false
  br i1 %140, label %141, label %147

141:                                              ; preds = %130
  %142 = add nsw i32 %133, 1
  %143 = call ptr @RE_vlakren_get_tface(ptr noundef %2, ptr noundef nonnull %86, i32 noundef %133, ptr noundef nonnull %7, i32 noundef 1) #22
  %144 = getelementptr inbounds %struct.CustomDataLayer, ptr %134, i64 %131, i32 9
  %145 = load ptr, ptr %144, align 8, !tbaa !617
  %146 = getelementptr inbounds %struct.MTFace, ptr %145, i64 %68
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %143, ptr noundef nonnull align 8 dereferenceable(48) %146, i64 48, i1 false), !tbaa.struct !618
  br label %157

147:                                              ; preds = %130
  %148 = icmp eq i32 %137, 6
  %149 = icmp slt i32 %132, 8
  %150 = select i1 %148, i1 %149, i1 false
  br i1 %150, label %151, label %157

151:                                              ; preds = %147
  %152 = add nsw i32 %132, 1
  %153 = call ptr @RE_vlakren_get_mcol(ptr noundef %2, ptr noundef nonnull %86, i32 noundef %132, ptr noundef nonnull %7, i32 noundef 1) #22
  %154 = getelementptr inbounds %struct.CustomDataLayer, ptr %134, i64 %131, i32 9
  %155 = load ptr, ptr %154, align 8, !tbaa !617
  %156 = getelementptr inbounds %struct.MCol, ptr %155, i64 %129
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(16) %153, ptr noundef nonnull align 1 dereferenceable(16) %156, i64 16, i1 false)
  br label %157

157:                                              ; preds = %141, %151, %147
  %158 = phi i32 [ %142, %141 ], [ %133, %151 ], [ %133, %147 ]
  %159 = phi i32 [ %132, %141 ], [ %152, %151 ], [ %132, %147 ]
  %160 = add nuw nsw i64 %131, 1
  %161 = load i32, ptr %46, align 4, !tbaa !613
  %162 = sext i32 %161 to i64
  %163 = icmp slt i64 %160, %162
  br i1 %163, label %130, label %164, !llvm.loop !710

164:                                              ; preds = %157, %124
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %7) #24
  br label %165

165:                                              ; preds = %121, %164, %67
  %166 = add nuw nsw i64 %68, 1
  %167 = getelementptr inbounds %struct.MFace, ptr %69, i64 1
  %168 = icmp eq i64 %166, %66
  br i1 %168, label %47, label %67, !llvm.loop !711

169:                                              ; preds = %53
  call fastcc void @calc_vertexnormals(ptr noundef %2, i8 noundef zeroext 1, i8 noundef zeroext 0, i8 noundef zeroext 0) #23
  br label %170

170:                                              ; preds = %169, %35
  ret void
}

; Function Attrs: optsize
declare ptr @BKE_curve_make_orco(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #7

; Function Attrs: optsize
declare float @area_tri_v3(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #7

; Function Attrs: optsize
declare float @normal_tri_v3(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #7

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc i32 @dl_surf_to_renderdata(ptr noundef %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2, ptr noundef %3, ptr noundef %4) unnamed_addr #4 !PGOFuncName !712 {
  %6 = alloca [3 x float], align 4
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %6) #24
  %7 = getelementptr inbounds %struct.ObjectRen, ptr %0, i64 0, i32 10
  %8 = load i32, ptr %7, align 8, !tbaa !196
  %9 = getelementptr inbounds %struct.DispList, ptr %1, i64 0, i32 4
  %10 = load i32, ptr %9, align 4, !tbaa !556
  %11 = getelementptr inbounds %struct.DispList, ptr %1, i64 0, i32 5
  %12 = load i32, ptr %11, align 8, !tbaa !550
  %13 = icmp sgt i32 %10, 0
  br i1 %13, label %14, label %76

14:                                               ; preds = %5
  %15 = getelementptr inbounds %struct.DispList, ptr %1, i64 0, i32 8
  %16 = load ptr, ptr %15, align 8, !tbaa !551
  %17 = icmp sgt i32 %12, 1
  %18 = getelementptr inbounds %struct.DispList, ptr %1, i64 0, i32 3
  br label %19

19:                                               ; preds = %14, %71
  %20 = phi ptr [ %3, %14 ], [ %73, %71 ]
  %21 = phi i32 [ 0, %14 ], [ %72, %71 ]
  %22 = phi i32 [ 0, %14 ], [ %74, %71 ]
  %23 = phi ptr [ %16, %14 ], [ %58, %71 ]
  %24 = load i32, ptr %7, align 8, !tbaa !196
  %25 = add nsw i32 %24, 1
  store i32 %25, ptr %7, align 8, !tbaa !196
  %26 = tail call ptr @RE_findOrAddVert(ptr noundef nonnull %0, i32 noundef %24) #22
  tail call fastcc void @copy_v3_v3(ptr noundef %26, ptr noundef %23) #23
  %27 = icmp eq ptr %20, null
  br i1 %27, label %32, label %28

28:                                               ; preds = %19
  %29 = getelementptr inbounds %struct.VertRen, ptr %26, i64 0, i32 2
  store ptr %20, ptr %29, align 8, !tbaa !552
  %30 = getelementptr inbounds float, ptr %20, i64 3
  %31 = add nsw i32 %21, 1
  br label %32

32:                                               ; preds = %28, %19
  %33 = phi i32 [ %31, %28 ], [ %21, %19 ]
  %34 = phi ptr [ %30, %28 ], [ null, %19 ]
  tail call void @mul_m4_v3(ptr noundef %4, ptr noundef %26) #22
  %35 = getelementptr inbounds float, ptr %23, i64 3
  br i1 %17, label %36, label %55

36:                                               ; preds = %32, %49
  %37 = phi ptr [ %53, %49 ], [ %35, %32 ]
  %38 = phi ptr [ %51, %49 ], [ %34, %32 ]
  %39 = phi i32 [ %50, %49 ], [ %33, %32 ]
  %40 = phi i32 [ %52, %49 ], [ 1, %32 ]
  %41 = load i32, ptr %7, align 8, !tbaa !196
  %42 = add nsw i32 %41, 1
  store i32 %42, ptr %7, align 8, !tbaa !196
  %43 = tail call ptr @RE_findOrAddVert(ptr noundef nonnull %0, i32 noundef %41) #22
  tail call fastcc void @copy_v3_v3(ptr noundef %43, ptr noundef nonnull %37) #23
  %44 = icmp eq ptr %38, null
  br i1 %44, label %49, label %45

45:                                               ; preds = %36
  %46 = getelementptr inbounds %struct.VertRen, ptr %43, i64 0, i32 2
  store ptr %38, ptr %46, align 8, !tbaa !552
  %47 = getelementptr inbounds float, ptr %38, i64 3
  %48 = add nsw i32 %39, 1
  br label %49

49:                                               ; preds = %45, %36
  %50 = phi i32 [ %48, %45 ], [ %39, %36 ]
  %51 = phi ptr [ %47, %45 ], [ null, %36 ]
  tail call void @mul_m4_v3(ptr noundef %4, ptr noundef %43) #22
  %52 = add nuw nsw i32 %40, 1
  %53 = getelementptr inbounds float, ptr %37, i64 3
  %54 = icmp eq i32 %52, %12
  br i1 %54, label %55, label %36, !llvm.loop !713

55:                                               ; preds = %49, %32
  %56 = phi i32 [ %33, %32 ], [ %50, %49 ]
  %57 = phi ptr [ %34, %32 ], [ %51, %49 ]
  %58 = phi ptr [ %35, %32 ], [ %53, %49 ]
  %59 = load i16, ptr %18, align 2, !tbaa !569
  %60 = and i16 %59, 1
  %61 = icmp eq i16 %60, 0
  br i1 %61, label %71, label %62

62:                                               ; preds = %55
  %63 = load i32, ptr %7, align 8, !tbaa !196
  %64 = add nsw i32 %63, 1
  store i32 %64, ptr %7, align 8, !tbaa !196
  %65 = tail call ptr @RE_findOrAddVert(ptr noundef nonnull %0, i32 noundef %63) #22
  tail call fastcc void @copy_v3_v3(ptr noundef %65, ptr noundef %26) #23
  %66 = icmp eq ptr %57, null
  br i1 %66, label %71, label %67

67:                                               ; preds = %62
  %68 = getelementptr inbounds %struct.VertRen, ptr %65, i64 0, i32 2
  store ptr %57, ptr %68, align 8, !tbaa !552
  %69 = getelementptr inbounds float, ptr %57, i64 3
  %70 = add nsw i32 %56, 1
  br label %71

71:                                               ; preds = %55, %67, %62
  %72 = phi i32 [ %70, %67 ], [ %56, %62 ], [ %56, %55 ]
  %73 = phi ptr [ %69, %67 ], [ null, %62 ], [ %57, %55 ]
  %74 = add nuw nsw i32 %22, 1
  %75 = icmp eq i32 %74, %10
  br i1 %75, label %76, label %19, !llvm.loop !714

76:                                               ; preds = %71, %5
  %77 = phi i32 [ 0, %5 ], [ %72, %71 ]
  %78 = phi ptr [ %3, %5 ], [ %73, %71 ]
  %79 = getelementptr inbounds %struct.DispList, ptr %1, i64 0, i32 3
  %80 = load i16, ptr %79, align 2, !tbaa !569
  %81 = and i16 %80, 1
  %82 = zext nneg i16 %81 to i32
  %83 = add i32 %12, %82
  %84 = and i16 %80, 2
  %85 = icmp ne i16 %84, 0
  %86 = lshr exact i16 %84, 1
  %87 = zext nneg i16 %86 to i32
  %88 = add i32 %10, %87
  %89 = icmp sgt i32 %83, 0
  %90 = select i1 %85, i1 %89, i1 false
  br i1 %90, label %91, label %110

91:                                               ; preds = %76, %105
  %92 = phi ptr [ %107, %105 ], [ %78, %76 ]
  %93 = phi i32 [ %106, %105 ], [ %77, %76 ]
  %94 = phi i32 [ %108, %105 ], [ 0, %76 ]
  %95 = add nsw i32 %94, %8
  %96 = tail call ptr @RE_findOrAddVert(ptr noundef nonnull %0, i32 noundef %95) #22
  %97 = load i32, ptr %7, align 8, !tbaa !196
  %98 = add nsw i32 %97, 1
  store i32 %98, ptr %7, align 8, !tbaa !196
  %99 = tail call ptr @RE_findOrAddVert(ptr noundef nonnull %0, i32 noundef %97) #22
  tail call fastcc void @copy_v3_v3(ptr noundef %99, ptr noundef %96) #23
  %100 = icmp eq ptr %92, null
  br i1 %100, label %105, label %101

101:                                              ; preds = %91
  %102 = getelementptr inbounds %struct.VertRen, ptr %99, i64 0, i32 2
  store ptr %92, ptr %102, align 8, !tbaa !552
  %103 = getelementptr inbounds float, ptr %92, i64 3
  %104 = add nsw i32 %93, 1
  br label %105

105:                                              ; preds = %91, %101
  %106 = phi i32 [ %104, %101 ], [ %93, %91 ]
  %107 = phi ptr [ %103, %101 ], [ null, %91 ]
  %108 = add nuw nsw i32 %94, 1
  %109 = icmp eq i32 %108, %83
  br i1 %109, label %110, label %91, !llvm.loop !715

110:                                              ; preds = %105, %76
  %111 = phi i32 [ %77, %76 ], [ %106, %105 ]
  %112 = getelementptr inbounds %struct.ObjectRen, ptr %0, i64 0, i32 11
  %113 = load i32, ptr %112, align 4, !tbaa !555
  %114 = add i32 %88, -1
  %115 = icmp sgt i32 %88, 1
  %116 = add i32 %83, -1
  br i1 %115, label %117, label %170

117:                                              ; preds = %110
  %118 = icmp sgt i32 %83, 1
  %119 = getelementptr inbounds %struct.DispList, ptr %1, i64 0, i32 6
  %120 = getelementptr inbounds %struct.DispList, ptr %1, i64 0, i32 7
  %121 = tail call i32 @llvm.smax.i32(i32 %116, i32 1)
  br label %122

122:                                              ; preds = %117, %167
  %123 = phi i32 [ 0, %117 ], [ %168, %167 ]
  br i1 %118, label %124, label %167

124:                                              ; preds = %122
  %125 = mul nsw i32 %123, %83
  %126 = add nsw i32 %125, %8
  %127 = add i32 %126, %83
  %128 = add nsw i32 %126, 1
  %129 = add nsw i32 %128, %83
  br label %130

130:                                              ; preds = %124, %130
  %131 = phi i32 [ %164, %130 ], [ %127, %124 ]
  %132 = phi i32 [ %163, %130 ], [ %129, %124 ]
  %133 = phi i32 [ %162, %130 ], [ %128, %124 ]
  %134 = phi i32 [ %161, %130 ], [ %126, %124 ]
  %135 = phi i32 [ %165, %130 ], [ 0, %124 ]
  %136 = call ptr @RE_findOrAddVert(ptr noundef %0, i32 noundef %134) #22
  %137 = call ptr @RE_findOrAddVert(ptr noundef %0, i32 noundef %133) #22
  %138 = call ptr @RE_findOrAddVert(ptr noundef %0, i32 noundef %132) #22
  %139 = call ptr @RE_findOrAddVert(ptr noundef %0, i32 noundef %131) #22
  %140 = load i32, ptr %112, align 4, !tbaa !555
  %141 = add nsw i32 %140, 1
  store i32 %141, ptr %112, align 4, !tbaa !555
  %142 = call ptr @RE_findOrAddVlak(ptr noundef %0, i32 noundef %140) #22
  store ptr %136, ptr %142, align 8, !tbaa !558
  %143 = getelementptr inbounds %struct.VlakRen, ptr %142, i64 0, i32 1
  store ptr %137, ptr %143, align 8, !tbaa !560
  %144 = getelementptr inbounds %struct.VlakRen, ptr %142, i64 0, i32 2
  store ptr %138, ptr %144, align 8, !tbaa !561
  %145 = getelementptr inbounds %struct.VlakRen, ptr %142, i64 0, i32 3
  store ptr %139, ptr %145, align 8, !tbaa !562
  %146 = call float @normal_quad_v3(ptr noundef nonnull %6, ptr noundef %139, ptr noundef %138, ptr noundef %137, ptr noundef %136) #22
  %147 = getelementptr inbounds %struct.VlakRen, ptr %142, i64 0, i32 4
  call fastcc void @copy_v3_v3(ptr noundef nonnull %147, ptr noundef nonnull %6) #23
  %148 = load i16, ptr %119, align 4, !tbaa !547
  %149 = sext i16 %148 to i64
  %150 = getelementptr inbounds ptr, ptr %2, i64 %149
  %151 = load ptr, ptr %150, align 8, !tbaa !47
  %152 = getelementptr inbounds %struct.VlakRen, ptr %142, i64 0, i32 5
  store ptr %151, ptr %152, align 8, !tbaa !563
  %153 = getelementptr inbounds %struct.VlakRen, ptr %142, i64 0, i32 8
  store i8 3, ptr %153, align 2, !tbaa !565
  %154 = load i16, ptr %120, align 2, !tbaa !573
  %155 = trunc i16 %154 to i8
  %156 = getelementptr inbounds %struct.VlakRen, ptr %142, i64 0, i32 7
  store i8 %155, ptr %156, align 1, !tbaa !564
  %157 = getelementptr inbounds %struct.VertRen, ptr %136, i64 0, i32 1
  call fastcc void @add_v3_v3(ptr noundef nonnull %157, ptr noundef nonnull %6) #23
  %158 = getelementptr inbounds %struct.VertRen, ptr %137, i64 0, i32 1
  call fastcc void @add_v3_v3(ptr noundef nonnull %158, ptr noundef nonnull %6) #23
  %159 = getelementptr inbounds %struct.VertRen, ptr %138, i64 0, i32 1
  call fastcc void @add_v3_v3(ptr noundef nonnull %159, ptr noundef nonnull %6) #23
  %160 = getelementptr inbounds %struct.VertRen, ptr %139, i64 0, i32 1
  call fastcc void @add_v3_v3(ptr noundef nonnull %160, ptr noundef nonnull %6) #23
  %161 = add nsw i32 %134, 1
  %162 = add nsw i32 %133, 1
  %163 = add nsw i32 %132, 1
  %164 = add nsw i32 %131, 1
  %165 = add nuw nsw i32 %135, 1
  %166 = icmp eq i32 %165, %121
  br i1 %166, label %167, label %130, !llvm.loop !716

167:                                              ; preds = %130, %122
  %168 = add nuw nsw i32 %123, 1
  %169 = icmp eq i32 %168, %114
  br i1 %169, label %170, label %122, !llvm.loop !717

170:                                              ; preds = %167, %110
  %171 = load i16, ptr %79, align 2, !tbaa !569
  %172 = and i16 %171, 2
  %173 = icmp ne i16 %172, 0
  %174 = icmp sgt i32 %83, 1
  %175 = select i1 %173, i1 %174, i1 false
  br i1 %175, label %176, label %204

176:                                              ; preds = %170
  %177 = add nsw i32 %88, -2
  %178 = mul nsw i32 %177, %116
  %179 = add nsw i32 %113, %178
  %180 = call i32 @llvm.smax.i32(i32 %116, i32 1)
  br label %181

181:                                              ; preds = %176, %181
  %182 = phi i32 [ 0, %176 ], [ %200, %181 ]
  %183 = add nsw i32 %179, %182
  %184 = call ptr @RE_findOrAddVlak(ptr noundef %0, i32 noundef %183) #22
  %185 = add nsw i32 %182, %113
  %186 = call ptr @RE_findOrAddVlak(ptr noundef %0, i32 noundef %185) #22
  %187 = load ptr, ptr %186, align 8, !tbaa !558
  %188 = getelementptr inbounds %struct.VertRen, ptr %187, i64 0, i32 1
  %189 = getelementptr inbounds %struct.VlakRen, ptr %184, i64 0, i32 4
  call fastcc void @add_v3_v3(ptr noundef nonnull %188, ptr noundef nonnull %189) #23
  %190 = getelementptr inbounds %struct.VlakRen, ptr %186, i64 0, i32 1
  %191 = load ptr, ptr %190, align 8, !tbaa !560
  %192 = getelementptr inbounds %struct.VertRen, ptr %191, i64 0, i32 1
  call fastcc void @add_v3_v3(ptr noundef nonnull %192, ptr noundef nonnull %189) #23
  %193 = getelementptr inbounds %struct.VlakRen, ptr %184, i64 0, i32 2
  %194 = load ptr, ptr %193, align 8, !tbaa !561
  %195 = getelementptr inbounds %struct.VertRen, ptr %194, i64 0, i32 1
  %196 = getelementptr inbounds %struct.VlakRen, ptr %186, i64 0, i32 4
  call fastcc void @add_v3_v3(ptr noundef nonnull %195, ptr noundef nonnull %196) #23
  %197 = getelementptr inbounds %struct.VlakRen, ptr %184, i64 0, i32 3
  %198 = load ptr, ptr %197, align 8, !tbaa !562
  %199 = getelementptr inbounds %struct.VertRen, ptr %198, i64 0, i32 1
  call fastcc void @add_v3_v3(ptr noundef nonnull %199, ptr noundef nonnull %196) #23
  %200 = add nuw nsw i32 %182, 1
  %201 = icmp eq i32 %200, %180
  br i1 %201, label %202, label %181, !llvm.loop !718

202:                                              ; preds = %181
  %203 = load i16, ptr %79, align 2, !tbaa !569
  br label %204

204:                                              ; preds = %202, %170
  %205 = phi i16 [ %203, %202 ], [ %171, %170 ]
  %206 = and i16 %205, 1
  %207 = icmp ne i16 %206, 0
  %208 = and i1 %207, %115
  br i1 %208, label %209, label %235

209:                                              ; preds = %204
  %210 = add nsw i32 %83, -2
  br label %211

211:                                              ; preds = %209, %211
  %212 = phi i32 [ 0, %209 ], [ %231, %211 ]
  %213 = mul nsw i32 %212, %116
  %214 = add nsw i32 %213, %113
  %215 = call ptr @RE_findOrAddVlak(ptr noundef %0, i32 noundef %214) #22
  %216 = add nsw i32 %210, %214
  %217 = call ptr @RE_findOrAddVlak(ptr noundef %0, i32 noundef %216) #22
  %218 = getelementptr inbounds %struct.VlakRen, ptr %217, i64 0, i32 1
  %219 = load ptr, ptr %218, align 8, !tbaa !560
  %220 = getelementptr inbounds %struct.VertRen, ptr %219, i64 0, i32 1
  %221 = getelementptr inbounds %struct.VlakRen, ptr %215, i64 0, i32 4
  call fastcc void @add_v3_v3(ptr noundef nonnull %220, ptr noundef nonnull %221) #23
  %222 = getelementptr inbounds %struct.VlakRen, ptr %217, i64 0, i32 2
  %223 = load ptr, ptr %222, align 8, !tbaa !561
  %224 = getelementptr inbounds %struct.VertRen, ptr %223, i64 0, i32 1
  call fastcc void @add_v3_v3(ptr noundef nonnull %224, ptr noundef nonnull %221) #23
  %225 = load ptr, ptr %215, align 8, !tbaa !558
  %226 = getelementptr inbounds %struct.VertRen, ptr %225, i64 0, i32 1
  %227 = getelementptr inbounds %struct.VlakRen, ptr %217, i64 0, i32 4
  call fastcc void @add_v3_v3(ptr noundef nonnull %226, ptr noundef nonnull %227) #23
  %228 = getelementptr inbounds %struct.VlakRen, ptr %215, i64 0, i32 3
  %229 = load ptr, ptr %228, align 8, !tbaa !562
  %230 = getelementptr inbounds %struct.VertRen, ptr %229, i64 0, i32 1
  call fastcc void @add_v3_v3(ptr noundef nonnull %230, ptr noundef nonnull %227) #23
  %231 = add nuw nsw i32 %212, 1
  %232 = icmp eq i32 %231, %114
  br i1 %232, label %233, label %211, !llvm.loop !719

233:                                              ; preds = %211
  %234 = load i16, ptr %79, align 2, !tbaa !569
  br label %235

235:                                              ; preds = %233, %204
  %236 = phi i16 [ %234, %233 ], [ %205, %204 ]
  %237 = and i16 %236, 3
  %238 = icmp eq i16 %237, 3
  br i1 %238, label %239, label %265

239:                                              ; preds = %235
  %240 = add nsw i32 %88, -2
  %241 = mul nsw i32 %240, %116
  %242 = add nsw i32 %113, %241
  %243 = add nsw i32 %83, -2
  %244 = add nsw i32 %242, %243
  %245 = call ptr @RE_findOrAddVlak(ptr noundef %0, i32 noundef %244) #22
  %246 = call ptr @RE_findOrAddVlak(ptr noundef %0, i32 noundef %113) #22
  %247 = getelementptr inbounds %struct.VlakRen, ptr %245, i64 0, i32 4
  %248 = getelementptr inbounds %struct.VlakRen, ptr %246, i64 0, i32 4
  call fastcc void @add_v3_v3v3(ptr noundef nonnull %6, ptr noundef nonnull %247, ptr noundef nonnull %248) #23
  %249 = add nsw i32 %113, %243
  %250 = call ptr @RE_findOrAddVlak(ptr noundef %0, i32 noundef %249) #22
  %251 = getelementptr inbounds %struct.VlakRen, ptr %250, i64 0, i32 4
  call fastcc void @add_v3_v3(ptr noundef nonnull %6, ptr noundef nonnull %251) #23
  %252 = call ptr @RE_findOrAddVlak(ptr noundef %0, i32 noundef %242) #22
  %253 = getelementptr inbounds %struct.VlakRen, ptr %252, i64 0, i32 4
  call fastcc void @add_v3_v3(ptr noundef nonnull %6, ptr noundef nonnull %253) #23
  %254 = getelementptr inbounds %struct.VlakRen, ptr %245, i64 0, i32 2
  %255 = load ptr, ptr %254, align 8, !tbaa !561
  %256 = getelementptr inbounds %struct.VertRen, ptr %255, i64 0, i32 1
  call fastcc void @copy_v3_v3(ptr noundef nonnull %256, ptr noundef nonnull %6) #23
  %257 = load ptr, ptr %246, align 8, !tbaa !558
  %258 = getelementptr inbounds %struct.VertRen, ptr %257, i64 0, i32 1
  call fastcc void @copy_v3_v3(ptr noundef nonnull %258, ptr noundef nonnull %6) #23
  %259 = getelementptr inbounds %struct.VlakRen, ptr %250, i64 0, i32 1
  %260 = load ptr, ptr %259, align 8, !tbaa !560
  %261 = getelementptr inbounds %struct.VertRen, ptr %260, i64 0, i32 1
  call fastcc void @copy_v3_v3(ptr noundef nonnull %261, ptr noundef nonnull %6) #23
  %262 = getelementptr inbounds %struct.VlakRen, ptr %252, i64 0, i32 3
  %263 = load ptr, ptr %262, align 8, !tbaa !562
  %264 = getelementptr inbounds %struct.VertRen, ptr %263, i64 0, i32 1
  call fastcc void @copy_v3_v3(ptr noundef nonnull %264, ptr noundef nonnull %6) #23
  br label %265

265:                                              ; preds = %239, %235
  %266 = load i32, ptr %7, align 8, !tbaa !196
  %267 = icmp slt i32 %8, %266
  br i1 %267, label %268, label %275

268:                                              ; preds = %265, %268
  %269 = phi i32 [ %272, %268 ], [ %8, %265 ]
  %270 = call ptr @RE_findOrAddVert(ptr noundef nonnull %0, i32 noundef %269) #22
  %271 = getelementptr inbounds %struct.VertRen, ptr %270, i64 0, i32 1
  call fastcc void @normalize_v3(ptr noundef nonnull %271) #23
  %272 = add nsw i32 %269, 1
  %273 = load i32, ptr %7, align 8, !tbaa !196
  %274 = icmp slt i32 %272, %273
  br i1 %274, label %268, label %275, !llvm.loop !720

275:                                              ; preds = %268, %265
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %6) #24
  ret i32 %111
}

; Function Attrs: optsize
declare zeroext i8 @BKE_displist_surfindex_get(ptr noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #7

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @split_v_renderfaces(ptr noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4) unnamed_addr #4 !PGOFuncName !721 {
  %6 = add nsw i32 %2, -1
  %7 = icmp ne i32 %4, 0
  %8 = zext i1 %7 to i32
  %9 = add nsw i32 %6, %8
  %10 = icmp sgt i32 %9, 0
  br i1 %10, label %11, label %42

11:                                               ; preds = %5
  %12 = mul nsw i32 %9, %3
  %13 = add nsw i32 %12, %1
  %14 = add nsw i32 %9, -1
  br label %15

15:                                               ; preds = %11, %39
  %16 = phi i32 [ 0, %11 ], [ %40, %39 ]
  %17 = add nsw i32 %16, %13
  %18 = tail call ptr @RE_findOrAddVlak(ptr noundef %0, i32 noundef %17) #22
  %19 = getelementptr inbounds %struct.VlakRen, ptr %18, i64 0, i32 1
  %20 = load ptr, ptr %19, align 8, !tbaa !560
  %21 = tail call ptr @RE_vertren_copy(ptr noundef %0, ptr noundef %20) #22
  store ptr %21, ptr %19, align 8, !tbaa !560
  br i1 %7, label %22, label %29

22:                                               ; preds = %15
  %23 = icmp eq i32 %16, %14
  br i1 %23, label %24, label %26

24:                                               ; preds = %22
  %25 = tail call ptr @RE_findOrAddVlak(ptr noundef %0, i32 noundef %13) #22
  store ptr %21, ptr %25, align 8, !tbaa !558
  br label %39

26:                                               ; preds = %22
  %27 = add nsw i32 %17, 1
  %28 = tail call ptr @RE_findOrAddVlak(ptr noundef %0, i32 noundef %27) #22
  store ptr %21, ptr %28, align 8, !tbaa !558
  br label %39

29:                                               ; preds = %15
  %30 = icmp slt i32 %16, %14
  br i1 %30, label %31, label %34

31:                                               ; preds = %29
  %32 = add nsw i32 %17, 1
  %33 = tail call ptr @RE_findOrAddVlak(ptr noundef %0, i32 noundef %32) #22
  store ptr %21, ptr %33, align 8, !tbaa !558
  br label %34

34:                                               ; preds = %31, %29
  %35 = icmp eq i32 %16, 0
  br i1 %35, label %36, label %39

36:                                               ; preds = %34
  %37 = load ptr, ptr %18, align 8, !tbaa !558
  %38 = tail call ptr @RE_vertren_copy(ptr noundef %0, ptr noundef %37) #22
  store ptr %38, ptr %18, align 8, !tbaa !558
  br label %39

39:                                               ; preds = %34, %36, %24, %26
  %40 = add nuw nsw i32 %16, 1
  %41 = icmp eq i32 %40, %9
  br i1 %41, label %42, label %15, !llvm.loop !722

42:                                               ; preds = %39, %5
  ret void
}

; Function Attrs: optsize
declare void @BKE_displist_free(ptr noundef) local_unnamed_addr #7

; Function Attrs: optsize
declare ptr @RE_vertren_copy(ptr noundef, ptr noundef) local_unnamed_addr #7

; Function Attrs: optsize
declare void @BKE_displist_make_surf(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #7

; Function Attrs: optsize
declare ptr @BKE_curve_surf_make_orco(ptr noundef) local_unnamed_addr #7

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc noundef signext i16 @test_for_displace(ptr nocapture noundef %0, ptr noundef %1) unnamed_addr #4 !PGOFuncName !723 {
  %3 = getelementptr inbounds %struct.Object, ptr %1, i64 0, i32 31
  %4 = load i32, ptr %3, align 8, !tbaa !398
  %5 = icmp slt i32 %4, 1
  br i1 %5, label %18, label %10

6:                                                ; preds = %10
  %7 = add nuw nsw i32 %11, 1
  %8 = load i32, ptr %3, align 8, !tbaa !398
  %9 = icmp slt i32 %11, %8
  br i1 %9, label %10, label %18, !llvm.loop !724

10:                                               ; preds = %2, %6
  %11 = phi i32 [ %7, %6 ], [ 1, %2 ]
  %12 = trunc i32 %11 to i16
  %13 = tail call fastcc ptr @give_render_material(ptr noundef %0, ptr noundef nonnull %1, i16 noundef signext %12) #23
  %14 = getelementptr inbounds %struct.Material, ptr %13, i64 0, i32 91
  %15 = load i16, ptr %14, align 2, !tbaa !725
  %16 = and i16 %15, 4096
  %17 = icmp eq i16 %16, 0
  br i1 %17, label %6, label %18

18:                                               ; preds = %10, %6, %2
  %19 = phi i16 [ 0, %2 ], [ 0, %6 ], [ 1, %10 ]
  ret i16 %19
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @make_render_halos(ptr noundef %0, ptr noundef %1, i32 noundef %2, ptr noundef %3, ptr noundef %4, ptr noundef %5) unnamed_addr #4 !PGOFuncName !726 {
  %7 = alloca [3 x float], align 8
  %8 = alloca [3 x float], align 4
  %9 = alloca [3 x float], align 4
  %10 = alloca [4 x [4 x float]], align 16
  %11 = alloca [3 x [3 x float]], align 16
  %12 = getelementptr inbounds %struct.ObjectRen, ptr %1, i64 0, i32 2
  %13 = load ptr, ptr %12, align 8, !tbaa !232
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %7) #24
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %8) #24
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %9) #24
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %10) #24
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %11) #24
  %14 = getelementptr inbounds %struct.Material, ptr %4, i64 0, i32 39
  %15 = load i8, ptr %14, align 2, !tbaa !444
  %16 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 32
  %17 = getelementptr inbounds %struct.Object, ptr %13, i64 0, i32 47
  call void @mul_m4_m4m4(ptr noundef nonnull %10, ptr noundef nonnull %16, ptr noundef nonnull %17) #22
  %18 = getelementptr inbounds %struct.Object, ptr %13, i64 0, i32 50
  call void @copy_m3_m4(ptr noundef nonnull %11, ptr noundef nonnull %18) #22
  %19 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 4
  %20 = load i16, ptr %19, align 8, !tbaa !257
  %21 = or i16 %20, 2
  store i16 %21, ptr %19, align 8, !tbaa !257
  %22 = icmp sgt i32 %2, 0
  br i1 %22, label %23, label %110

23:                                               ; preds = %6
  %24 = zext i8 %15 to i32
  %25 = getelementptr inbounds %struct.Material, ptr %4, i64 0, i32 59
  %26 = getelementptr inbounds %struct.Material, ptr %4, i64 0, i32 51
  %27 = getelementptr inbounds [3 x float], ptr %11, i64 0, i64 1
  %28 = getelementptr inbounds [3 x float], ptr %11, i64 0, i64 2
  %29 = getelementptr inbounds [3 x [3 x float]], ptr %11, i64 0, i64 1
  %30 = getelementptr inbounds [3 x [3 x float]], ptr %11, i64 0, i64 1, i64 1
  %31 = getelementptr inbounds [3 x [3 x float]], ptr %11, i64 0, i64 1, i64 2
  %32 = getelementptr inbounds [3 x [3 x float]], ptr %11, i64 0, i64 2
  %33 = getelementptr inbounds [3 x [3 x float]], ptr %11, i64 0, i64 2, i64 1
  %34 = getelementptr inbounds [3 x [3 x float]], ptr %11, i64 0, i64 2, i64 2
  %35 = getelementptr inbounds [3 x float], ptr %7, i64 0, i64 2
  %36 = getelementptr inbounds %struct.Object, ptr %13, i64 0, i32 52
  br label %37

37:                                               ; preds = %23, %103
  %38 = phi i32 [ %24, %23 ], [ %106, %103 ]
  %39 = phi ptr [ %3, %23 ], [ %108, %103 ]
  %40 = phi i32 [ 0, %23 ], [ %107, %103 ]
  %41 = phi ptr [ %5, %23 ], [ %105, %103 ]
  %42 = load float, ptr %25, align 4, !tbaa !443
  call fastcc void @copy_v3_v3(ptr noundef nonnull %9, ptr noundef %39) #23
  call void @mul_m4_v3(ptr noundef nonnull %10, ptr noundef nonnull %9) #22
  %43 = load i32, ptr %26, align 4, !tbaa !167
  %44 = and i32 %43, 8192
  %45 = icmp eq i32 %44, 0
  br i1 %45, label %90, label %46

46:                                               ; preds = %37
  %47 = getelementptr inbounds %struct.MVert, ptr %39, i64 0, i32 1
  %48 = load i16, ptr %47, align 4, !tbaa !77
  %49 = sitofp i16 %48 to float
  %50 = getelementptr inbounds %struct.MVert, ptr %39, i64 0, i32 1, i64 1
  %51 = load i16, ptr %50, align 2, !tbaa !77
  %52 = sitofp i16 %51 to float
  %53 = getelementptr inbounds %struct.MVert, ptr %39, i64 0, i32 1, i64 2
  %54 = load i16, ptr %53, align 4, !tbaa !77
  %55 = sitofp i16 %54 to float
  %56 = load <4 x float>, ptr %11, align 16
  %57 = shufflevector <4 x float> %56, <4 x float> poison, <2 x i32> <i32 0, i32 poison>
  %58 = load <4 x float>, ptr %27, align 4
  %59 = shufflevector <4 x float> %58, <4 x float> poison, <2 x i32> <i32 0, i32 poison>
  %60 = load <4 x float>, ptr %28, align 8
  %61 = shufflevector <4 x float> %60, <4 x float> poison, <2 x i32> <i32 0, i32 poison>
  %62 = load float, ptr %29, align 4, !tbaa !44
  %63 = load float, ptr %30, align 16, !tbaa !44
  %64 = load float, ptr %31, align 4, !tbaa !44
  %65 = insertelement <2 x float> %59, float %63, i64 1
  %66 = insertelement <2 x float> poison, float %52, i64 0
  %67 = shufflevector <2 x float> %66, <2 x float> poison, <2 x i32> zeroinitializer
  %68 = fmul <2 x float> %65, %67
  %69 = insertelement <2 x float> %57, float %62, i64 1
  %70 = insertelement <2 x float> poison, float %49, i64 0
  %71 = shufflevector <2 x float> %70, <2 x float> poison, <2 x i32> zeroinitializer
  %72 = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %69, <2 x float> %71, <2 x float> %68)
  %73 = insertelement <2 x float> %61, float %64, i64 1
  %74 = insertelement <2 x float> poison, float %55, i64 0
  %75 = shufflevector <2 x float> %74, <2 x float> poison, <2 x i32> zeroinitializer
  %76 = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %73, <2 x float> %75, <2 x float> %72)
  store <2 x float> %76, ptr %7, align 8, !tbaa !44
  %77 = load float, ptr %32, align 8, !tbaa !44
  %78 = load float, ptr %33, align 4, !tbaa !44
  %79 = fmul float %78, %52
  %80 = call float @llvm.fmuladd.f32(float %77, float %49, float %79)
  %81 = load float, ptr %34, align 16, !tbaa !44
  %82 = call float @llvm.fmuladd.f32(float %81, float %55, float %80)
  store float %82, ptr %35, align 8, !tbaa !44
  call fastcc void @normalize_v3(ptr noundef nonnull %7) #23
  call fastcc void @copy_v3_v3(ptr noundef nonnull %8, ptr noundef nonnull %9) #23
  call fastcc void @normalize_v3(ptr noundef nonnull %8) #23
  %83 = call fastcc float @dot_v3v3(ptr noundef nonnull %7, ptr noundef nonnull %8) #23
  %84 = fcmp ult float %83, 0.000000e+00
  br i1 %84, label %85, label %90

85:                                               ; preds = %46
  %86 = fmul float %83, %83
  %87 = fmul float %83, %86
  %88 = fmul float %83, %87
  %89 = fmul float %42, %88
  br label %90

90:                                               ; preds = %46, %85, %37
  %91 = phi float [ %89, %85 ], [ %42, %37 ], [ 0.000000e+00, %46 ]
  %92 = icmp eq ptr %41, null
  br i1 %92, label %95, label %93

93:                                               ; preds = %90
  %94 = call ptr @RE_inithalo(ptr noundef %0, ptr noundef %1, ptr noundef nonnull %4, ptr noundef nonnull %9, ptr noundef null, ptr noundef nonnull %41, float noundef %91, float noundef 0.000000e+00, i32 noundef %38) #22
  br label %97

95:                                               ; preds = %90
  %96 = call ptr @RE_inithalo(ptr noundef %0, ptr noundef %1, ptr noundef nonnull %4, ptr noundef nonnull %9, ptr noundef null, ptr noundef %39, float noundef %91, float noundef 0.000000e+00, i32 noundef %38) #22
  br label %97

97:                                               ; preds = %95, %93
  %98 = phi ptr [ %94, %93 ], [ %96, %95 ]
  %99 = icmp eq ptr %98, null
  br i1 %99, label %103, label %100

100:                                              ; preds = %97
  %101 = load i32, ptr %36, align 8, !tbaa !154
  %102 = getelementptr inbounds %struct.HaloRen, ptr %98, i64 0, i32 28
  store i32 %101, ptr %102, align 8, !tbaa !661
  br label %103

103:                                              ; preds = %97, %100
  %104 = getelementptr inbounds float, ptr %41, i64 3
  %105 = select i1 %92, ptr null, ptr %104
  %106 = add nuw nsw i32 %38, 1
  %107 = add nuw nsw i32 %40, 1
  %108 = getelementptr inbounds %struct.MVert, ptr %39, i64 1
  %109 = icmp eq i32 %107, %2
  br i1 %109, label %110, label %37, !llvm.loop !727

110:                                              ; preds = %103, %6
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %11) #24
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %10) #24
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %9) #24
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %8) #24
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %7) #24
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @normal_short_to_float_v3(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1) unnamed_addr #6 !PGOFuncName !728 {
  %3 = load <2 x i16>, ptr %1, align 2, !tbaa !77
  %4 = sitofp <2 x i16> %3 to <2 x float>
  %5 = fmul <2 x float> %4, <float 0x3F00002000000000, float 0x3F00002000000000>
  store <2 x float> %5, ptr %0, align 4, !tbaa !44
  %6 = getelementptr inbounds i16, ptr %1, i64 2
  %7 = load i16, ptr %6, align 2, !tbaa !77
  %8 = sitofp i16 %7 to float
  %9 = fmul float %8, 0x3F00002000000000
  %10 = getelementptr inbounds float, ptr %0, i64 2
  store float %9, ptr %10, align 4, !tbaa !44
  ret void
}

; Function Attrs: optsize
declare void @mul_transposed_m3_v3(ptr noundef, ptr noundef) local_unnamed_addr #7

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @negate_v3(ptr nocapture noundef %0) unnamed_addr #6 !PGOFuncName !729 {
  %2 = load <2 x float>, ptr %0, align 4, !tbaa !44
  %3 = fneg <2 x float> %2
  store <2 x float> %3, ptr %0, align 4, !tbaa !44
  %4 = getelementptr inbounds float, ptr %0, i64 2
  %5 = load float, ptr %4, align 4, !tbaa !44
  %6 = fneg float %5
  store float %6, ptr %4, align 4, !tbaa !44
  ret void
}

; Function Attrs: optsize
declare ptr @RE_vertren_get_origindex(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: optsize
declare void @DM_add_tangent_layer(ptr noundef) local_unnamed_addr #7

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @copy_v4_v4(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1) unnamed_addr #6 !PGOFuncName !730 {
  %3 = load float, ptr %1, align 4, !tbaa !44
  store float %3, ptr %0, align 4, !tbaa !44
  %4 = getelementptr inbounds float, ptr %1, i64 1
  %5 = load float, ptr %4, align 4, !tbaa !44
  %6 = getelementptr inbounds float, ptr %0, i64 1
  store float %5, ptr %6, align 4, !tbaa !44
  %7 = getelementptr inbounds float, ptr %1, i64 2
  %8 = load float, ptr %7, align 4, !tbaa !44
  %9 = getelementptr inbounds float, ptr %0, i64 2
  store float %8, ptr %9, align 4, !tbaa !44
  %10 = getelementptr inbounds float, ptr %1, i64 3
  %11 = load float, ptr %10, align 4, !tbaa !44
  %12 = getelementptr inbounds float, ptr %0, i64 3
  store float %11, ptr %12, align 4, !tbaa !44
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @copy_v3_v3_short(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1) unnamed_addr #6 !PGOFuncName !731 {
  %3 = load i16, ptr %1, align 2, !tbaa !77
  store i16 %3, ptr %0, align 2, !tbaa !77
  %4 = getelementptr inbounds i16, ptr %1, i64 1
  %5 = load i16, ptr %4, align 2, !tbaa !77
  %6 = getelementptr inbounds i16, ptr %0, i64 1
  store i16 %5, ptr %6, align 2, !tbaa !77
  %7 = getelementptr inbounds i16, ptr %1, i64 2
  %8 = load i16, ptr %7, align 2, !tbaa !77
  %9 = getelementptr inbounds i16, ptr %0, i64 2
  store i16 %8, ptr %9, align 2, !tbaa !77
  ret void
}

; Function Attrs: optsize
declare ptr @RE_vlakren_get_origindex(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @make_mesh_edge_lookup(ptr noundef %0, ptr nocapture noundef writeonly %1) unnamed_addr #4 !PGOFuncName !732 {
  %3 = getelementptr inbounds %struct.DerivedMesh, ptr %0, i64 0, i32 33
  %4 = load ptr, ptr %3, align 8, !tbaa !603
  %5 = tail call ptr %4(ptr noundef %0) #22
  %6 = getelementptr inbounds %struct.DerivedMesh, ptr %0, i64 0, i32 25
  %7 = load ptr, ptr %6, align 8, !tbaa !483
  %8 = tail call i32 %7(ptr noundef %0) #22
  %9 = getelementptr inbounds %struct.DerivedMesh, ptr %0, i64 0, i32 52
  %10 = load ptr, ptr %9, align 8, !tbaa !484
  %11 = tail call ptr %10(ptr noundef %0, i32 noundef 5) #22
  %12 = load ptr, ptr %9, align 8, !tbaa !484
  %13 = tail call ptr %12(ptr noundef %0, i32 noundef 6) #22
  %14 = icmp eq ptr %13, null
  %15 = icmp eq ptr %11, null
  %16 = select i1 %14, i1 %15, i1 false
  br i1 %16, label %65, label %17

17:                                               ; preds = %2
  %18 = icmp sgt i32 %8, 0
  br i1 %18, label %19, label %65

19:                                               ; preds = %17, %19
  %20 = phi i32 [ %27, %19 ], [ 0, %17 ]
  %21 = phi i32 [ %28, %19 ], [ %8, %17 ]
  %22 = phi ptr [ %29, %19 ], [ %5, %17 ]
  %23 = getelementptr inbounds %struct.MFace, ptr %22, i64 0, i32 3
  %24 = load i32, ptr %23, align 4, !tbaa !607
  %25 = icmp eq i32 %24, 0
  %26 = select i1 %25, i32 3, i32 4
  %27 = add nuw nsw i32 %26, %20
  %28 = add nsw i32 %21, -1
  %29 = getelementptr inbounds %struct.MFace, ptr %22, i64 1
  %30 = icmp ugt i32 %21, 1
  br i1 %30, label %19, label %31, !llvm.loop !733

31:                                               ; preds = %19
  %32 = load ptr, ptr @MEM_callocN, align 8, !tbaa !47
  %33 = zext nneg i32 %27 to i64
  %34 = mul nuw nsw i64 %33, 20
  %35 = tail call ptr %32(i64 noundef %34, ptr noundef nonnull @.str.20) #22
  br i1 %18, label %36, label %64

36:                                               ; preds = %31, %59
  %37 = phi i32 [ %61, %59 ], [ 0, %31 ]
  %38 = phi ptr [ %62, %59 ], [ %5, %31 ]
  %39 = phi ptr [ %60, %59 ], [ %35, %31 ]
  %40 = getelementptr inbounds %struct.edgesort, ptr %39, i64 1
  %41 = load i32, ptr %38, align 4, !tbaa !612
  %42 = getelementptr inbounds %struct.MFace, ptr %38, i64 0, i32 1
  %43 = load i32, ptr %42, align 4, !tbaa !606
  tail call fastcc void @to_edgesort(ptr noundef %39, i32 noundef 0, i32 noundef 1, i32 noundef %41, i32 noundef %43, i32 noundef %37) #23
  %44 = getelementptr inbounds %struct.edgesort, ptr %39, i64 2
  %45 = load i32, ptr %42, align 4, !tbaa !606
  %46 = getelementptr inbounds %struct.MFace, ptr %38, i64 0, i32 2
  %47 = load i32, ptr %46, align 4, !tbaa !611
  tail call fastcc void @to_edgesort(ptr noundef nonnull %40, i32 noundef 1, i32 noundef 2, i32 noundef %45, i32 noundef %47, i32 noundef %37) #23
  %48 = getelementptr inbounds %struct.MFace, ptr %38, i64 0, i32 3
  %49 = load i32, ptr %48, align 4, !tbaa !607
  %50 = icmp eq i32 %49, 0
  %51 = getelementptr inbounds %struct.edgesort, ptr %39, i64 3
  %52 = load i32, ptr %46, align 4, !tbaa !611
  br i1 %50, label %57, label %53

53:                                               ; preds = %36
  tail call fastcc void @to_edgesort(ptr noundef nonnull %44, i32 noundef 2, i32 noundef 3, i32 noundef %52, i32 noundef %49, i32 noundef %37) #23
  %54 = getelementptr inbounds %struct.edgesort, ptr %39, i64 4
  %55 = load i32, ptr %48, align 4, !tbaa !607
  %56 = load i32, ptr %38, align 4, !tbaa !612
  tail call fastcc void @to_edgesort(ptr noundef nonnull %51, i32 noundef 3, i32 noundef 0, i32 noundef %55, i32 noundef %56, i32 noundef %37) #23
  br label %59

57:                                               ; preds = %36
  %58 = load i32, ptr %38, align 4, !tbaa !612
  tail call fastcc void @to_edgesort(ptr noundef nonnull %44, i32 noundef 2, i32 noundef 3, i32 noundef %52, i32 noundef %58, i32 noundef %37) #23
  br label %59

59:                                               ; preds = %53, %57
  %60 = phi ptr [ %54, %53 ], [ %51, %57 ]
  %61 = add nuw nsw i32 %37, 1
  %62 = getelementptr inbounds %struct.MFace, ptr %38, i64 1
  %63 = icmp eq i32 %61, %8
  br i1 %63, label %64, label %36, !llvm.loop !734

64:                                               ; preds = %59, %31
  tail call void @qsort(ptr noundef %35, i64 noundef %33, i64 noundef 20, ptr noundef nonnull @vergedgesort) #22
  store i32 %27, ptr %1, align 4, !tbaa !78
  br label %65

65:                                               ; preds = %17, %2, %64
  %66 = phi ptr [ %35, %64 ], [ null, %2 ], [ null, %17 ]
  ret ptr %66
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @use_mesh_edge_lookup(ptr noundef %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2, ptr noundef %3, ptr noundef %4, i32 noundef %5) unnamed_addr #4 !PGOFuncName !735 {
  %7 = alloca %struct.edgesort, align 4
  %8 = alloca ptr, align 8
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %7) #24
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %8) #24
  %9 = load i32, ptr %2, align 4, !tbaa !629
  %10 = getelementptr inbounds %struct.MEdge, ptr %2, i64 0, i32 1
  %11 = load i32, ptr %10, align 4, !tbaa !630
  %12 = tail call i32 @llvm.umin.i32(i32 %9, i32 %11)
  %13 = tail call i32 @llvm.umax.i32(i32 %9, i32 %11)
  store i32 %12, ptr %7, align 4
  %14 = getelementptr inbounds %struct.edgesort, ptr %7, i64 0, i32 1
  store i32 %13, ptr %14, align 4
  %15 = sext i32 %5 to i64
  %16 = call ptr @bsearch(ptr noundef nonnull %7, ptr noundef %4, i64 noundef %15, i64 noundef 20, ptr noundef nonnull @vergedgesort) #22
  %17 = icmp eq ptr %16, null
  br i1 %17, label %90, label %18

18:                                               ; preds = %6
  %19 = getelementptr inbounds %struct.DerivedMesh, ptr %1, i64 0, i32 2, i32 2
  %20 = load i32, ptr %19, align 4, !tbaa !613
  %21 = icmp sgt i32 %20, 0
  br i1 %21, label %22, label %90

22:                                               ; preds = %18
  %23 = getelementptr inbounds %struct.DerivedMesh, ptr %1, i64 0, i32 2
  %24 = getelementptr inbounds %struct.edgesort, ptr %16, i64 0, i32 2
  %25 = getelementptr inbounds %struct.edgesort, ptr %16, i64 0, i32 3
  %26 = getelementptr inbounds %struct.edgesort, ptr %16, i64 0, i32 4
  br label %27

27:                                               ; preds = %22, %83
  %28 = phi i64 [ 0, %22 ], [ %86, %83 ]
  %29 = phi i32 [ 0, %22 ], [ %85, %83 ]
  %30 = phi i32 [ 0, %22 ], [ %84, %83 ]
  %31 = load ptr, ptr %23, align 8, !tbaa !614
  %32 = getelementptr inbounds %struct.CustomDataLayer, ptr %31, i64 %28
  %33 = getelementptr inbounds %struct.CustomDataLayer, ptr %31, i64 %28, i32 8
  store ptr %33, ptr %8, align 8, !tbaa !47
  %34 = load i32, ptr %32, align 8, !tbaa !615
  %35 = icmp eq i32 %34, 5
  %36 = icmp slt i32 %30, 8
  %37 = select i1 %35, i1 %36, i1 false
  br i1 %37, label %38, label %59

38:                                               ; preds = %27
  %39 = getelementptr inbounds %struct.CustomDataLayer, ptr %31, i64 %28, i32 9
  %40 = load ptr, ptr %39, align 8, !tbaa !617
  %41 = load i32, ptr %24, align 4, !tbaa !736
  %42 = sext i32 %41 to i64
  %43 = getelementptr inbounds %struct.MTFace, ptr %40, i64 %42
  %44 = add nsw i32 %30, 1
  %45 = call ptr @RE_vlakren_get_tface(ptr noundef %0, ptr noundef %3, i32 noundef %30, ptr noundef nonnull %8, i32 noundef 1) #22
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %45, ptr noundef nonnull align 8 dereferenceable(48) %43, i64 48, i1 false), !tbaa.struct !618
  %46 = load i32, ptr %25, align 4, !tbaa !738
  %47 = zext i32 %46 to i64
  %48 = getelementptr inbounds [4 x [2 x float]], ptr %43, i64 0, i64 %47
  %49 = load i64, ptr %48, align 8
  store i64 %49, ptr %45, align 8
  %50 = getelementptr inbounds [4 x [2 x float]], ptr %45, i64 0, i64 1
  %51 = load i32, ptr %26, align 4, !tbaa !739
  %52 = zext i32 %51 to i64
  %53 = getelementptr inbounds [4 x [2 x float]], ptr %43, i64 0, i64 %52
  %54 = load i64, ptr %53, align 8
  store i64 %54, ptr %50, align 8
  %55 = getelementptr inbounds [4 x [2 x float]], ptr %45, i64 0, i64 2
  %56 = getelementptr inbounds [4 x [2 x float]], ptr %43, i64 0, i64 1
  %57 = load i64, ptr %56, align 8
  store i64 %57, ptr %55, align 8
  %58 = getelementptr inbounds [4 x [2 x float]], ptr %45, i64 0, i64 3
  store i64 %57, ptr %58, align 8
  br label %83

59:                                               ; preds = %27
  %60 = icmp eq i32 %34, 6
  %61 = icmp slt i32 %29, 8
  %62 = select i1 %60, i1 %61, i1 false
  br i1 %62, label %63, label %83

63:                                               ; preds = %59
  %64 = getelementptr inbounds %struct.CustomDataLayer, ptr %31, i64 %28, i32 9
  %65 = load ptr, ptr %64, align 8, !tbaa !617
  %66 = load i32, ptr %24, align 4, !tbaa !736
  %67 = shl nsw i32 %66, 2
  %68 = sext i32 %67 to i64
  %69 = getelementptr inbounds %struct.MCol, ptr %65, i64 %68
  %70 = add nsw i32 %29, 1
  %71 = call ptr @RE_vlakren_get_mcol(ptr noundef %0, ptr noundef %3, i32 noundef %29, ptr noundef nonnull %8, i32 noundef 1) #22
  %72 = load i32, ptr %25, align 4, !tbaa !738
  %73 = zext i32 %72 to i64
  %74 = getelementptr inbounds %struct.MCol, ptr %69, i64 %73
  %75 = load i32, ptr %74, align 1
  store i32 %75, ptr %71, align 1
  %76 = getelementptr inbounds %struct.MCol, ptr %71, i64 1
  %77 = getelementptr inbounds %struct.MCol, ptr %71, i64 2
  %78 = getelementptr inbounds %struct.MCol, ptr %71, i64 3
  %79 = load i32, ptr %26, align 4, !tbaa !739
  %80 = zext i32 %79 to i64
  %81 = getelementptr inbounds %struct.MCol, ptr %69, i64 %80
  %82 = load i32, ptr %81, align 1
  store i32 %82, ptr %78, align 1
  store i32 %82, ptr %77, align 1
  store i32 %82, ptr %76, align 1
  br label %83

83:                                               ; preds = %38, %63, %59
  %84 = phi i32 [ %44, %38 ], [ %30, %63 ], [ %30, %59 ]
  %85 = phi i32 [ %29, %38 ], [ %70, %63 ], [ %29, %59 ]
  %86 = add nuw nsw i64 %28, 1
  %87 = load i32, ptr %19, align 4, !tbaa !613
  %88 = sext i32 %87 to i64
  %89 = icmp slt i64 %86, %88
  br i1 %89, label %27, label %90, !llvm.loop !740

90:                                               ; preds = %83, %18, %6
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %8) #24
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %7) #24
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @calc_edge_stress(ptr noundef %0, ptr noundef %1) unnamed_addr #4 !PGOFuncName !741 {
  %3 = alloca [3 x float], align 4
  %4 = alloca [3 x float], align 4
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %3) #24
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %4) #24
  %5 = getelementptr inbounds %struct.ObjectRen, ptr %0, i64 0, i32 10
  %6 = load i32, ptr %5, align 8, !tbaa !196
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %137, label %8

8:                                                ; preds = %2
  call void @BKE_mesh_texspace_get(ptr noundef %1, ptr noundef nonnull %3, ptr noundef null, ptr noundef nonnull %4) #22
  %9 = load ptr, ptr @MEM_callocN, align 8, !tbaa !47
  %10 = load i32, ptr %5, align 8, !tbaa !196
  %11 = sext i32 %10 to i64
  %12 = shl nsw i64 %11, 3
  %13 = call ptr %9(i64 noundef %12, ptr noundef nonnull @.str.21) #22
  %14 = load i32, ptr %5, align 8, !tbaa !196
  %15 = icmp sgt i32 %14, 0
  br i1 %15, label %16, label %21

16:                                               ; preds = %8
  %17 = getelementptr inbounds [3 x float], ptr %4, i64 0, i64 1
  %18 = getelementptr inbounds [3 x float], ptr %3, i64 0, i64 1
  %19 = getelementptr inbounds [3 x float], ptr %4, i64 0, i64 2
  %20 = getelementptr inbounds [3 x float], ptr %3, i64 0, i64 2
  br label %26

21:                                               ; preds = %47, %8
  %22 = phi i32 [ %14, %8 ], [ %49, %47 ]
  %23 = getelementptr inbounds %struct.ObjectRen, ptr %0, i64 0, i32 11
  %24 = load i32, ptr %23, align 4, !tbaa !555
  %25 = icmp sgt i32 %24, 0
  br i1 %25, label %61, label %53

26:                                               ; preds = %16, %47
  %27 = phi i32 [ 0, %16 ], [ %48, %47 ]
  %28 = call ptr @RE_findOrAddVert(ptr noundef nonnull %0, i32 noundef %27) #22
  %29 = getelementptr inbounds %struct.VertRen, ptr %28, i64 0, i32 2
  %30 = load ptr, ptr %29, align 8, !tbaa !552
  %31 = icmp eq ptr %30, null
  br i1 %31, label %47, label %32

32:                                               ; preds = %26
  %33 = load float, ptr %30, align 4, !tbaa !44
  %34 = load float, ptr %4, align 4, !tbaa !44
  %35 = load float, ptr %3, align 4, !tbaa !44
  %36 = call float @llvm.fmuladd.f32(float %33, float %34, float %35)
  store float %36, ptr %30, align 4, !tbaa !44
  %37 = getelementptr inbounds float, ptr %30, i64 1
  %38 = load float, ptr %37, align 4, !tbaa !44
  %39 = load float, ptr %17, align 4, !tbaa !44
  %40 = load float, ptr %18, align 4, !tbaa !44
  %41 = call float @llvm.fmuladd.f32(float %38, float %39, float %40)
  store float %41, ptr %37, align 4, !tbaa !44
  %42 = getelementptr inbounds float, ptr %30, i64 2
  %43 = load float, ptr %42, align 4, !tbaa !44
  %44 = load float, ptr %19, align 4, !tbaa !44
  %45 = load float, ptr %20, align 4, !tbaa !44
  %46 = call float @llvm.fmuladd.f32(float %43, float %44, float %45)
  store float %46, ptr %42, align 4, !tbaa !44
  br label %47

47:                                               ; preds = %32, %26
  %48 = add nuw nsw i32 %27, 1
  %49 = load i32, ptr %5, align 8, !tbaa !196
  %50 = icmp slt i32 %48, %49
  br i1 %50, label %26, label %21, !llvm.loop !742

51:                                               ; preds = %88
  %52 = load i32, ptr %5, align 8, !tbaa !196
  br label %53

53:                                               ; preds = %51, %21
  %54 = phi i32 [ %52, %51 ], [ %22, %21 ]
  %55 = icmp sgt i32 %54, 0
  br i1 %55, label %56, label %135

56:                                               ; preds = %53
  %57 = getelementptr inbounds [3 x float], ptr %3, i64 0, i64 1
  %58 = getelementptr inbounds [3 x float], ptr %4, i64 0, i64 1
  %59 = getelementptr inbounds [3 x float], ptr %3, i64 0, i64 2
  %60 = getelementptr inbounds [3 x float], ptr %4, i64 0, i64 2
  br label %92

61:                                               ; preds = %21, %88
  %62 = phi i32 [ %89, %88 ], [ 0, %21 ]
  %63 = call ptr @RE_findOrAddVlak(ptr noundef nonnull %0, i32 noundef %62) #22
  %64 = load ptr, ptr %63, align 8, !tbaa !558
  %65 = getelementptr inbounds %struct.VertRen, ptr %64, i64 0, i32 2
  %66 = load ptr, ptr %65, align 8, !tbaa !552
  %67 = icmp eq ptr %66, null
  br i1 %67, label %88, label %68

68:                                               ; preds = %61
  %69 = getelementptr inbounds %struct.VlakRen, ptr %63, i64 0, i32 3
  %70 = load ptr, ptr %69, align 8, !tbaa !562
  %71 = icmp eq ptr %70, null
  br i1 %71, label %88, label %72

72:                                               ; preds = %68
  %73 = getelementptr inbounds %struct.VlakRen, ptr %63, i64 0, i32 1
  %74 = load ptr, ptr %73, align 8, !tbaa !560
  call fastcc void @calc_edge_stress_add(ptr noundef %13, ptr noundef nonnull %64, ptr noundef %74) #23
  %75 = load ptr, ptr %73, align 8, !tbaa !560
  %76 = getelementptr inbounds %struct.VlakRen, ptr %63, i64 0, i32 2
  %77 = load ptr, ptr %76, align 8, !tbaa !561
  call fastcc void @calc_edge_stress_add(ptr noundef %13, ptr noundef %75, ptr noundef %77) #23
  %78 = load ptr, ptr %76, align 8, !tbaa !561
  %79 = load ptr, ptr %63, align 8, !tbaa !558
  call fastcc void @calc_edge_stress_add(ptr noundef %13, ptr noundef %78, ptr noundef %79) #23
  %80 = load ptr, ptr %69, align 8, !tbaa !562
  %81 = icmp eq ptr %80, null
  br i1 %81, label %88, label %82

82:                                               ; preds = %72
  %83 = load ptr, ptr %76, align 8, !tbaa !561
  call fastcc void @calc_edge_stress_add(ptr noundef %13, ptr noundef %83, ptr noundef nonnull %80) #23
  %84 = load ptr, ptr %69, align 8, !tbaa !562
  %85 = load ptr, ptr %63, align 8, !tbaa !558
  call fastcc void @calc_edge_stress_add(ptr noundef %13, ptr noundef %84, ptr noundef %85) #23
  %86 = load ptr, ptr %73, align 8, !tbaa !560
  %87 = load ptr, ptr %69, align 8, !tbaa !562
  call fastcc void @calc_edge_stress_add(ptr noundef %13, ptr noundef %86, ptr noundef %87) #23
  br label %88

88:                                               ; preds = %72, %82, %68, %61
  %89 = add nuw nsw i32 %62, 1
  %90 = load i32, ptr %23, align 4, !tbaa !555
  %91 = icmp slt i32 %89, %90
  br i1 %91, label %61, label %51, !llvm.loop !743

92:                                               ; preds = %56, %131
  %93 = phi i32 [ 0, %56 ], [ %132, %131 ]
  %94 = call ptr @RE_findOrAddVert(ptr noundef nonnull %0, i32 noundef %93) #22
  %95 = getelementptr inbounds %struct.VertRen, ptr %94, i64 0, i32 2
  %96 = load ptr, ptr %95, align 8, !tbaa !552
  %97 = icmp eq ptr %96, null
  br i1 %97, label %131, label %98

98:                                               ; preds = %92
  %99 = getelementptr inbounds %struct.VertRen, ptr %94, i64 0, i32 5
  %100 = load i32, ptr %99, align 8, !tbaa !744
  %101 = shl nsw i32 %100, 1
  %102 = sext i32 %101 to i64
  %103 = getelementptr inbounds float, ptr %13, i64 %102
  %104 = getelementptr inbounds float, ptr %103, i64 1
  %105 = load float, ptr %104, align 4, !tbaa !44
  %106 = fcmp une float %105, 0.000000e+00
  br i1 %106, label %107, label %110

107:                                              ; preds = %98
  %108 = load float, ptr %103, align 4, !tbaa !44
  %109 = fdiv float %108, %105
  store float %109, ptr %103, align 4, !tbaa !44
  br label %110

110:                                              ; preds = %107, %98
  %111 = call ptr @RE_vertren_get_stress(ptr noundef nonnull %0, ptr noundef nonnull %94, i32 noundef 1) #22
  %112 = load float, ptr %103, align 4, !tbaa !44
  store float %112, ptr %111, align 4, !tbaa !44
  %113 = load ptr, ptr %95, align 8, !tbaa !552
  %114 = load float, ptr %113, align 4, !tbaa !44
  %115 = load float, ptr %3, align 4, !tbaa !44
  %116 = fsub float %114, %115
  %117 = load float, ptr %4, align 4, !tbaa !44
  %118 = fdiv float %116, %117
  store float %118, ptr %113, align 4, !tbaa !44
  %119 = getelementptr inbounds float, ptr %113, i64 1
  %120 = load float, ptr %119, align 4, !tbaa !44
  %121 = load float, ptr %57, align 4, !tbaa !44
  %122 = fsub float %120, %121
  %123 = load float, ptr %58, align 4, !tbaa !44
  %124 = fdiv float %122, %123
  store float %124, ptr %119, align 4, !tbaa !44
  %125 = getelementptr inbounds float, ptr %113, i64 2
  %126 = load float, ptr %125, align 4, !tbaa !44
  %127 = load float, ptr %59, align 4, !tbaa !44
  %128 = fsub float %126, %127
  %129 = load float, ptr %60, align 4, !tbaa !44
  %130 = fdiv float %128, %129
  store float %130, ptr %125, align 4, !tbaa !44
  br label %131

131:                                              ; preds = %110, %92
  %132 = add nuw nsw i32 %93, 1
  %133 = load i32, ptr %5, align 8, !tbaa !196
  %134 = icmp slt i32 %132, %133
  br i1 %134, label %92, label %135, !llvm.loop !745

135:                                              ; preds = %131, %53
  %136 = load ptr, ptr @MEM_freeN, align 8, !tbaa !47
  call void %136(ptr noundef %13) #22
  br label %137

137:                                              ; preds = %2, %135
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %4) #24
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %3) #24
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @displace(ptr noundef %0, ptr noundef %1) unnamed_addr #4 !PGOFuncName !746 {
  %3 = alloca [3 x float], align 4
  %4 = alloca [3 x float], align 4
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %3) #24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %3, ptr noundef nonnull align 4 dereferenceable(12) @__const.displace.scale, i64 12, i1 false)
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %4) #24
  %5 = getelementptr inbounds %struct.ObjectRen, ptr %1, i64 0, i32 2
  %6 = load ptr, ptr %5, align 8, !tbaa !47
  %7 = icmp eq ptr %6, null
  br i1 %7, label %12, label %8

8:                                                ; preds = %2
  %9 = getelementptr inbounds [3 x float], ptr %4, i64 0, i64 1
  %10 = getelementptr inbounds [3 x float], ptr %3, i64 0, i64 1
  br label %17

11:                                               ; preds = %17
  store <2 x float> %26, ptr %10, align 4, !tbaa !44
  br label %12

12:                                               ; preds = %11, %2
  %13 = phi float [ %24, %11 ], [ 1.000000e+00, %2 ]
  store float %13, ptr %3, align 4, !tbaa !44
  %14 = getelementptr inbounds %struct.ObjectRen, ptr %1, i64 0, i32 10
  %15 = load i32, ptr %14, align 8, !tbaa !196
  %16 = icmp sgt i32 %15, 0
  br i1 %16, label %34, label %30

17:                                               ; preds = %8, %17
  %18 = phi ptr [ %6, %8 ], [ %28, %17 ]
  %19 = phi float [ 1.000000e+00, %8 ], [ %24, %17 ]
  %20 = phi <2 x float> [ <float 1.000000e+00, float 1.000000e+00>, %8 ], [ %26, %17 ]
  %21 = getelementptr inbounds %struct.Object, ptr %18, i64 0, i32 36
  %22 = getelementptr inbounds %struct.Object, ptr %18, i64 0, i32 38
  call fastcc void @mul_v3_v3v3(ptr noundef nonnull %4, ptr noundef nonnull %21, ptr noundef nonnull %22) #23
  %23 = load float, ptr %4, align 4, !tbaa !44
  %24 = fmul float %23, %19
  %25 = load <2 x float>, ptr %9, align 4, !tbaa !44
  %26 = fmul <2 x float> %25, %20
  %27 = getelementptr inbounds %struct.Object, ptr %18, i64 0, i32 9
  %28 = load ptr, ptr %27, align 8, !tbaa !47
  %29 = icmp eq ptr %28, null
  br i1 %29, label %11, label %17, !llvm.loop !747

30:                                               ; preds = %34, %12
  %31 = getelementptr inbounds %struct.ObjectRen, ptr %1, i64 0, i32 11
  %32 = load i32, ptr %31, align 4, !tbaa !555
  %33 = icmp sgt i32 %32, 0
  br i1 %33, label %41, label %47

34:                                               ; preds = %12, %34
  %35 = phi i32 [ %38, %34 ], [ 0, %12 ]
  %36 = tail call ptr @RE_findOrAddVert(ptr noundef nonnull %1, i32 noundef %35) #22
  %37 = getelementptr inbounds %struct.VertRen, ptr %36, i64 0, i32 3
  store i32 0, ptr %37, align 8, !tbaa !748
  %38 = add nuw nsw i32 %35, 1
  %39 = load i32, ptr %14, align 8, !tbaa !196
  %40 = icmp slt i32 %38, %39
  br i1 %40, label %34, label %30, !llvm.loop !749

41:                                               ; preds = %30, %41
  %42 = phi i32 [ %44, %41 ], [ 0, %30 ]
  %43 = tail call ptr @RE_findOrAddVlak(ptr noundef nonnull %1, i32 noundef %42) #22
  call fastcc void @displace_render_face(ptr noundef %0, ptr noundef nonnull %1, ptr noundef %43, ptr noundef nonnull %3) #23
  %44 = add nuw nsw i32 %42, 1
  %45 = load i32, ptr %31, align 4, !tbaa !555
  %46 = icmp slt i32 %44, %45
  br i1 %46, label %41, label %47, !llvm.loop !750

47:                                               ; preds = %41, %30
  tail call fastcc void @calc_vertexnormals(ptr noundef nonnull %1, i8 noundef zeroext 1, i8 noundef zeroext 0, i8 noundef zeroext 0) #23
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %4) #24
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %3) #24
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @autosmooth(ptr noundef %0, ptr noundef %1, ptr noundef readonly %2) unnamed_addr #4 !PGOFuncName !751 {
  %4 = getelementptr inbounds %struct.ObjectRen, ptr %0, i64 0, i32 10
  %5 = load i32, ptr %4, align 8, !tbaa !196
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %106, label %7

7:                                                ; preds = %3
  %8 = load ptr, ptr @MEM_callocN, align 8, !tbaa !47
  %9 = sext i32 %5 to i64
  %10 = mul nsw i64 %9, 24
  %11 = tail call ptr %8(i64 noundef %10, ptr noundef nonnull @.str.22) #22
  %12 = icmp eq ptr %2, null
  br i1 %12, label %58, label %13

13:                                               ; preds = %7
  %14 = getelementptr inbounds %struct.ObjectRen, ptr %0, i64 0, i32 11
  %15 = load i32, ptr %14, align 4, !tbaa !555
  %16 = icmp sgt i32 %15, 0
  br i1 %16, label %17, label %58

17:                                               ; preds = %13, %53
  %18 = phi ptr [ %55, %53 ], [ %2, %13 ]
  %19 = phi i32 [ %54, %53 ], [ 0, %13 ]
  %20 = tail call ptr @RE_findOrAddVlak(ptr noundef nonnull %0, i32 noundef %19) #22
  %21 = getelementptr inbounds %struct.VlakRen, ptr %20, i64 0, i32 1
  %22 = load ptr, ptr %21, align 8, !tbaa !560
  %23 = getelementptr inbounds %struct.VlakRen, ptr %20, i64 0, i32 2
  %24 = load ptr, ptr %23, align 8, !tbaa !561
  %25 = icmp eq ptr %22, %24
  br i1 %25, label %53, label %26

26:                                               ; preds = %17
  %27 = load ptr, ptr %20, align 8, !tbaa !558
  %28 = getelementptr inbounds %struct.VertRen, ptr %27, i64 0, i32 5
  %29 = load i32, ptr %28, align 8, !tbaa !744
  %30 = sext i32 %29 to i64
  %31 = getelementptr inbounds %struct.ASvert, ptr %11, i64 %30
  tail call fastcc void @as_addvert_lnor(ptr noundef nonnull %0, ptr noundef %31, ptr noundef %27, ptr noundef nonnull %20, ptr noundef nonnull %18) #23
  %32 = load ptr, ptr %21, align 8, !tbaa !560
  %33 = getelementptr inbounds %struct.VertRen, ptr %32, i64 0, i32 5
  %34 = load i32, ptr %33, align 8, !tbaa !744
  %35 = sext i32 %34 to i64
  %36 = getelementptr inbounds %struct.ASvert, ptr %11, i64 %35
  %37 = getelementptr inbounds [4 x [3 x i16]], ptr %18, i64 0, i64 1
  tail call fastcc void @as_addvert_lnor(ptr noundef nonnull %0, ptr noundef %36, ptr noundef %32, ptr noundef nonnull %20, ptr noundef nonnull %37) #23
  %38 = load ptr, ptr %23, align 8, !tbaa !561
  %39 = getelementptr inbounds %struct.VertRen, ptr %38, i64 0, i32 5
  %40 = load i32, ptr %39, align 8, !tbaa !744
  %41 = sext i32 %40 to i64
  %42 = getelementptr inbounds %struct.ASvert, ptr %11, i64 %41
  %43 = getelementptr inbounds [4 x [3 x i16]], ptr %18, i64 0, i64 2
  tail call fastcc void @as_addvert_lnor(ptr noundef nonnull %0, ptr noundef %42, ptr noundef %38, ptr noundef nonnull %20, ptr noundef nonnull %43) #23
  %44 = getelementptr inbounds %struct.VlakRen, ptr %20, i64 0, i32 3
  %45 = load ptr, ptr %44, align 8, !tbaa !562
  %46 = icmp eq ptr %45, null
  br i1 %46, label %53, label %47

47:                                               ; preds = %26
  %48 = getelementptr inbounds %struct.VertRen, ptr %45, i64 0, i32 5
  %49 = load i32, ptr %48, align 8, !tbaa !744
  %50 = sext i32 %49 to i64
  %51 = getelementptr inbounds %struct.ASvert, ptr %11, i64 %50
  %52 = getelementptr inbounds [4 x [3 x i16]], ptr %18, i64 0, i64 3
  tail call fastcc void @as_addvert_lnor(ptr noundef nonnull %0, ptr noundef %51, ptr noundef nonnull %45, ptr noundef nonnull %20, ptr noundef nonnull %52) #23
  br label %53

53:                                               ; preds = %17, %47, %26
  %54 = add nuw nsw i32 %19, 1
  %55 = getelementptr inbounds [4 x [3 x i16]], ptr %18, i64 1
  %56 = load i32, ptr %14, align 4, !tbaa !555
  %57 = icmp slt i32 %54, %56
  br i1 %57, label %17, label %58, !llvm.loop !752

58:                                               ; preds = %53, %13, %7
  %59 = icmp sgt i32 %5, 0
  br i1 %59, label %60, label %67

60:                                               ; preds = %58
  %61 = zext nneg i32 %5 to i64
  br label %62

62:                                               ; preds = %60, %62
  %63 = phi i64 [ 0, %60 ], [ %65, %62 ]
  %64 = getelementptr inbounds %struct.ASvert, ptr %11, i64 %63, i32 1
  tail call void @BLI_freelistN(ptr noundef nonnull %64) #22
  %65 = add nuw nsw i64 %63, 1
  %66 = icmp eq i64 %65, %61
  br i1 %66, label %67, label %62, !llvm.loop !753

67:                                               ; preds = %62, %58
  %68 = load ptr, ptr @MEM_freeN, align 8, !tbaa !47
  tail call void %68(ptr noundef %11) #22
  %69 = load i32, ptr %4, align 8, !tbaa !196
  %70 = icmp sgt i32 %69, 0
  br i1 %70, label %75, label %71

71:                                               ; preds = %80, %67
  %72 = getelementptr inbounds %struct.ObjectRen, ptr %0, i64 0, i32 11
  %73 = load i32, ptr %72, align 4, !tbaa !555
  %74 = icmp sgt i32 %73, 0
  br i1 %74, label %84, label %106

75:                                               ; preds = %67, %80
  %76 = phi i32 [ %81, %80 ], [ 0, %67 ]
  %77 = tail call ptr @RE_findOrAddVert(ptr noundef nonnull %0, i32 noundef %76) #22
  tail call void @mul_m4_v3(ptr noundef %1, ptr noundef %77) #22
  br i1 %12, label %80, label %78

78:                                               ; preds = %75
  %79 = getelementptr inbounds %struct.VertRen, ptr %77, i64 0, i32 1
  tail call void @mul_mat3_m4_v3(ptr noundef %1, ptr noundef nonnull %79) #22
  tail call fastcc void @negate_v3(ptr noundef nonnull %79) #23
  tail call fastcc void @normalize_v3(ptr noundef nonnull %79) #23
  br label %80

80:                                               ; preds = %75, %78
  %81 = add nuw nsw i32 %76, 1
  %82 = load i32, ptr %4, align 8, !tbaa !196
  %83 = icmp slt i32 %81, %82
  br i1 %83, label %75, label %71, !llvm.loop !754

84:                                               ; preds = %71, %102
  %85 = phi i32 [ %103, %102 ], [ 0, %71 ]
  %86 = tail call ptr @RE_findOrAddVlak(ptr noundef nonnull %0, i32 noundef %85) #22
  %87 = getelementptr inbounds %struct.VlakRen, ptr %86, i64 0, i32 1
  %88 = load ptr, ptr %87, align 8, !tbaa !560
  %89 = getelementptr inbounds %struct.VlakRen, ptr %86, i64 0, i32 2
  %90 = load ptr, ptr %89, align 8, !tbaa !561
  %91 = icmp eq ptr %88, %90
  br i1 %91, label %102, label %92

92:                                               ; preds = %84
  %93 = getelementptr inbounds %struct.VlakRen, ptr %86, i64 0, i32 3
  %94 = load ptr, ptr %93, align 8, !tbaa !562
  %95 = icmp eq ptr %94, null
  %96 = getelementptr inbounds %struct.VlakRen, ptr %86, i64 0, i32 4
  %97 = load ptr, ptr %86, align 8, !tbaa !558
  br i1 %95, label %100, label %98

98:                                               ; preds = %92
  %99 = tail call float @normal_quad_v3(ptr noundef nonnull %96, ptr noundef nonnull %94, ptr noundef %90, ptr noundef %88, ptr noundef %97) #22
  br label %102

100:                                              ; preds = %92
  %101 = tail call float @normal_tri_v3(ptr noundef nonnull %96, ptr noundef %90, ptr noundef %88, ptr noundef %97) #22
  br label %102

102:                                              ; preds = %84, %100, %98
  %103 = add nuw nsw i32 %85, 1
  %104 = load i32, ptr %72, align 4, !tbaa !555
  %105 = icmp slt i32 %103, %104
  br i1 %105, label %84, label %106, !llvm.loop !755

106:                                              ; preds = %102, %71, %3
  ret void
}

; Function Attrs: optsize
declare ptr @RE_inithalo(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, float noundef, float noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable
define internal fastcc void @to_edgesort(ptr nocapture noundef writeonly %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %5) unnamed_addr #13 !PGOFuncName !756 {
  %7 = icmp ugt i32 %3, %4
  br i1 %7, label %8, label %9

8:                                                ; preds = %6
  br label %9

9:                                                ; preds = %8, %6
  %10 = phi i32 [ %3, %8 ], [ %4, %6 ]
  %11 = phi i32 [ %4, %8 ], [ %3, %6 ]
  %12 = phi i32 [ %1, %8 ], [ %2, %6 ]
  %13 = phi i32 [ %2, %8 ], [ %1, %6 ]
  store i32 %11, ptr %0, align 4, !tbaa !757
  %14 = getelementptr inbounds %struct.edgesort, ptr %0, i64 0, i32 1
  store i32 %10, ptr %14, align 4, !tbaa !758
  %15 = getelementptr inbounds %struct.edgesort, ptr %0, i64 0, i32 3
  store i32 %13, ptr %15, align 4, !tbaa !738
  %16 = getelementptr inbounds %struct.edgesort, ptr %0, i64 0, i32 4
  store i32 %12, ptr %16, align 4, !tbaa !739
  %17 = getelementptr inbounds %struct.edgesort, ptr %0, i64 0, i32 2
  store i32 %5, ptr %17, align 4, !tbaa !736
  ret void
}

; Function Attrs: nofree optsize
declare void @qsort(ptr noundef, i64 noundef, i64 noundef, ptr nocapture noundef) local_unnamed_addr #17

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal i32 @vergedgesort(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) #12 !PGOFuncName !759 {
  %3 = load i32, ptr %0, align 4, !tbaa !757
  %4 = load i32, ptr %1, align 4, !tbaa !757
  %5 = icmp ugt i32 %3, %4
  br i1 %5, label %17, label %6

6:                                                ; preds = %2
  %7 = icmp ult i32 %3, %4
  br i1 %7, label %17, label %8

8:                                                ; preds = %6
  %9 = getelementptr inbounds %struct.edgesort, ptr %0, i64 0, i32 1
  %10 = load i32, ptr %9, align 4, !tbaa !758
  %11 = getelementptr inbounds %struct.edgesort, ptr %1, i64 0, i32 1
  %12 = load i32, ptr %11, align 4, !tbaa !758
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

; Function Attrs: optsize
declare ptr @bsearch(ptr noundef, ptr noundef, i64 noundef, i64 noundef, ptr noundef) local_unnamed_addr #7

; Function Attrs: optsize
declare void @BKE_mesh_texspace_get(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #7

; Function Attrs: mustprogress nofree noinline nounwind optsize willreturn memory(readwrite, inaccessiblemem: write) uwtable
define internal fastcc void @calc_edge_stress_add(ptr nocapture noundef %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2) unnamed_addr #9 !PGOFuncName !760 {
  %4 = tail call fastcc float @len_v3v3(ptr noundef %1, ptr noundef %2) #23
  %5 = getelementptr inbounds %struct.VertRen, ptr %1, i64 0, i32 2
  %6 = load ptr, ptr %5, align 8, !tbaa !552
  %7 = getelementptr inbounds %struct.VertRen, ptr %2, i64 0, i32 2
  %8 = load ptr, ptr %7, align 8, !tbaa !552
  %9 = tail call fastcc float @len_v3v3(ptr noundef %6, ptr noundef %8) #23
  %10 = fdiv float %4, %9
  %11 = getelementptr inbounds %struct.VertRen, ptr %1, i64 0, i32 5
  %12 = load i32, ptr %11, align 8, !tbaa !744
  %13 = shl nsw i32 %12, 1
  %14 = sext i32 %13 to i64
  %15 = getelementptr inbounds float, ptr %0, i64 %14
  %16 = load <2 x float>, ptr %15, align 4, !tbaa !44
  %17 = insertelement <2 x float> <float poison, float 1.000000e+00>, float %10, i64 0
  %18 = fadd <2 x float> %17, %16
  store <2 x float> %18, ptr %15, align 4, !tbaa !44
  %19 = getelementptr inbounds %struct.VertRen, ptr %2, i64 0, i32 5
  %20 = load i32, ptr %19, align 8, !tbaa !744
  %21 = shl nsw i32 %20, 1
  %22 = sext i32 %21 to i64
  %23 = getelementptr inbounds float, ptr %0, i64 %22
  %24 = load <2 x float>, ptr %23, align 4, !tbaa !44
  %25 = fadd <2 x float> %17, %24
  store <2 x float> %25, ptr %23, align 4, !tbaa !44
  ret void
}

; Function Attrs: optsize
declare ptr @RE_vertren_get_stress(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @mul_v3_v3v3(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2) unnamed_addr #6 !PGOFuncName !761 {
  %4 = load float, ptr %1, align 4, !tbaa !44
  %5 = load float, ptr %2, align 4, !tbaa !44
  %6 = fmul float %4, %5
  store float %6, ptr %0, align 4, !tbaa !44
  %7 = getelementptr inbounds float, ptr %1, i64 1
  %8 = load float, ptr %7, align 4, !tbaa !44
  %9 = getelementptr inbounds float, ptr %2, i64 1
  %10 = load float, ptr %9, align 4, !tbaa !44
  %11 = fmul float %8, %10
  %12 = getelementptr inbounds float, ptr %0, i64 1
  store float %11, ptr %12, align 4, !tbaa !44
  %13 = getelementptr inbounds float, ptr %1, i64 2
  %14 = load float, ptr %13, align 4, !tbaa !44
  %15 = getelementptr inbounds float, ptr %2, i64 2
  %16 = load float, ptr %15, align 4, !tbaa !44
  %17 = fmul float %14, %16
  %18 = getelementptr inbounds float, ptr %0, i64 2
  store float %17, ptr %18, align 4, !tbaa !44
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @displace_render_face(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr nocapture noundef readonly %3) unnamed_addr #4 !PGOFuncName !762 {
  %5 = alloca %struct.ShadeInput, align 8
  call void @llvm.lifetime.start.p0(i64 1472, ptr nonnull %5) #24
  %6 = getelementptr inbounds i8, ptr %5, i64 16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(1472) %6, i8 0, i64 1456, i1 false)
  %7 = getelementptr inbounds %struct.ShadeInput, ptr %5, i64 0, i32 4
  store ptr %1, ptr %7, align 8, !tbaa !763
  %8 = getelementptr inbounds %struct.ShadeInput, ptr %5, i64 0, i32 1
  store ptr %2, ptr %8, align 8, !tbaa !765
  %9 = getelementptr inbounds %struct.VlakRen, ptr %2, i64 0, i32 5
  %10 = load ptr, ptr %9, align 8, !tbaa !563
  store ptr %10, ptr %5, align 8, !tbaa !766
  %11 = load ptr, ptr %2, align 8, !tbaa !558
  %12 = getelementptr inbounds %struct.VertRen, ptr %11, i64 0, i32 3
  %13 = load i32, ptr %12, align 8, !tbaa !748
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %15, label %16

15:                                               ; preds = %4
  call fastcc void @displace_render_vert(ptr noundef %0, ptr noundef %1, ptr noundef nonnull %5, ptr noundef nonnull %11, i32 noundef 0, ptr noundef %3) #23
  br label %16

16:                                               ; preds = %15, %4
  %17 = getelementptr inbounds %struct.VlakRen, ptr %2, i64 0, i32 1
  %18 = load ptr, ptr %17, align 8, !tbaa !560
  %19 = getelementptr inbounds %struct.VertRen, ptr %18, i64 0, i32 3
  %20 = load i32, ptr %19, align 8, !tbaa !748
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %22, label %23

22:                                               ; preds = %16
  call fastcc void @displace_render_vert(ptr noundef %0, ptr noundef %1, ptr noundef nonnull %5, ptr noundef nonnull %18, i32 noundef 1, ptr noundef %3) #23
  br label %23

23:                                               ; preds = %22, %16
  %24 = getelementptr inbounds %struct.VlakRen, ptr %2, i64 0, i32 2
  %25 = load ptr, ptr %24, align 8, !tbaa !561
  %26 = getelementptr inbounds %struct.VertRen, ptr %25, i64 0, i32 3
  %27 = load i32, ptr %26, align 8, !tbaa !748
  %28 = icmp eq i32 %27, 0
  br i1 %28, label %29, label %30

29:                                               ; preds = %23
  call fastcc void @displace_render_vert(ptr noundef %0, ptr noundef %1, ptr noundef nonnull %5, ptr noundef nonnull %25, i32 noundef 2, ptr noundef %3) #23
  br label %30

30:                                               ; preds = %29, %23
  %31 = getelementptr inbounds %struct.VlakRen, ptr %2, i64 0, i32 3
  %32 = load ptr, ptr %31, align 8, !tbaa !562
  %33 = icmp eq ptr %32, null
  br i1 %33, label %69, label %34

34:                                               ; preds = %30
  %35 = getelementptr inbounds %struct.VertRen, ptr %32, i64 0, i32 3
  %36 = load i32, ptr %35, align 8, !tbaa !748
  %37 = icmp eq i32 %36, 0
  br i1 %37, label %38, label %40

38:                                               ; preds = %34
  call fastcc void @displace_render_vert(ptr noundef %0, ptr noundef %1, ptr noundef nonnull %5, ptr noundef nonnull %32, i32 noundef 3, ptr noundef %3) #23
  %39 = load ptr, ptr %31, align 8, !tbaa !562
  br label %40

40:                                               ; preds = %38, %34
  %41 = phi ptr [ %39, %38 ], [ %32, %34 ]
  %42 = load ptr, ptr %2, align 8, !tbaa !558
  %43 = getelementptr inbounds %struct.VertRen, ptr %42, i64 0, i32 4
  %44 = load float, ptr %43, align 4, !tbaa !685
  %45 = load ptr, ptr %24, align 8, !tbaa !561
  %46 = getelementptr inbounds %struct.VertRen, ptr %45, i64 0, i32 4
  %47 = load float, ptr %46, align 4, !tbaa !685
  %48 = load ptr, ptr %17, align 8, !tbaa !560
  %49 = getelementptr inbounds %struct.VertRen, ptr %48, i64 0, i32 4
  %50 = load float, ptr %49, align 4, !tbaa !685
  %51 = getelementptr inbounds %struct.VertRen, ptr %41, i64 0, i32 4
  %52 = load float, ptr %51, align 4, !tbaa !685
  %53 = insertelement <2 x float> poison, float %44, i64 0
  %54 = insertelement <2 x float> %53, float %50, i64 1
  %55 = insertelement <2 x float> poison, float %47, i64 0
  %56 = insertelement <2 x float> %55, float %52, i64 1
  %57 = fsub <2 x float> %54, %56
  %58 = call <2 x float> @llvm.fabs.v2f32(<2 x float> %57)
  %59 = extractelement <2 x float> %58, i64 0
  %60 = extractelement <2 x float> %58, i64 1
  %61 = fcmp ogt float %59, %60
  %62 = getelementptr inbounds %struct.VlakRen, ptr %2, i64 0, i32 7
  %63 = load i8, ptr %62, align 1, !tbaa !564
  %64 = and i8 %63, -33
  %65 = select i1 %61, i8 32, i8 0
  %66 = or disjoint i8 %64, %65
  store i8 %66, ptr %62, align 1, !tbaa !564
  %67 = getelementptr inbounds %struct.VlakRen, ptr %2, i64 0, i32 4
  %68 = call float @normal_quad_v3(ptr noundef nonnull %67, ptr noundef nonnull %41, ptr noundef nonnull %45, ptr noundef nonnull %48, ptr noundef nonnull %42) #22
  br label %75

69:                                               ; preds = %30
  %70 = load ptr, ptr %24, align 8, !tbaa !561
  %71 = load ptr, ptr %17, align 8, !tbaa !560
  %72 = load ptr, ptr %2, align 8, !tbaa !558
  %73 = getelementptr inbounds %struct.VlakRen, ptr %2, i64 0, i32 4
  %74 = call float @normal_tri_v3(ptr noundef nonnull %73, ptr noundef %70, ptr noundef %71, ptr noundef %72) #22
  br label %75

75:                                               ; preds = %69, %40
  call void @llvm.lifetime.end.p0(i64 1472, ptr nonnull %5) #24
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @displace_render_vert(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, i32 noundef %4, ptr nocapture noundef readonly %5) unnamed_addr #4 !PGOFuncName !767 {
  %7 = alloca ptr, align 8
  %8 = load ptr, ptr %2, align 8, !tbaa !766
  %9 = getelementptr inbounds %struct.Material, ptr %8, i64 0, i32 90
  %10 = load i16, ptr %9, align 4, !tbaa !265
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %7) #24
  %11 = getelementptr inbounds %struct.ShadeInput, ptr %2, i64 0, i32 29
  tail call fastcc void @copy_v3_v3(ptr noundef nonnull %11, ptr noundef %3) #23
  %12 = getelementptr inbounds %struct.ShadeInput, ptr %2, i64 0, i32 16
  %13 = getelementptr inbounds %struct.VertRen, ptr %3, i64 0, i32 1
  tail call fastcc void @copy_v3_v3(ptr noundef nonnull %12, ptr noundef nonnull %13) #23
  %14 = zext i16 %10 to i32
  %15 = and i32 %14, 16
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %49, label %17

17:                                               ; preds = %6
  %18 = getelementptr inbounds %struct.ShadeInput, ptr %2, i64 0, i32 74
  store i32 0, ptr %18, align 8, !tbaa !768
  %19 = getelementptr inbounds %struct.ObjectRen, ptr %1, i64 0, i32 25
  %20 = load i32, ptr %19, align 8, !tbaa !697
  %21 = getelementptr inbounds %struct.ShadeInput, ptr %2, i64 0, i32 76
  store i32 %20, ptr %21, align 8, !tbaa !769
  %22 = getelementptr inbounds %struct.ShadeInput, ptr %2, i64 0, i32 1
  %23 = load ptr, ptr %22, align 8, !tbaa !765
  %24 = call ptr @RE_vlakren_get_tface(ptr noundef %1, ptr noundef %23, i32 noundef 0, ptr noundef nonnull %7, i32 noundef 0) #22
  %25 = icmp eq ptr %24, null
  br i1 %25, label %49, label %26

26:                                               ; preds = %17
  %27 = zext nneg i32 %4 to i64
  br label %28

28:                                               ; preds = %26, %28
  %29 = phi i64 [ 0, %26 ], [ %44, %28 ]
  %30 = phi ptr [ %24, %26 ], [ %47, %28 ]
  %31 = getelementptr inbounds [4 x [2 x float]], ptr %30, i64 0, i64 %27
  %32 = load float, ptr %31, align 8, !tbaa !44
  %33 = call float @llvm.fmuladd.f32(float %32, float 2.000000e+00, float -1.000000e+00)
  %34 = getelementptr inbounds %struct.ShadeInput, ptr %2, i64 0, i32 72, i64 %29, i32 2
  store float %33, ptr %34, align 8, !tbaa !44
  %35 = getelementptr inbounds [4 x [2 x float]], ptr %30, i64 0, i64 %27, i64 1
  %36 = load float, ptr %35, align 4, !tbaa !44
  %37 = call float @llvm.fmuladd.f32(float %36, float 2.000000e+00, float -1.000000e+00)
  %38 = getelementptr inbounds %struct.ShadeInput, ptr %2, i64 0, i32 72, i64 %29, i32 2, i64 1
  store float %37, ptr %38, align 4, !tbaa !44
  %39 = getelementptr inbounds %struct.ShadeInput, ptr %2, i64 0, i32 72, i64 %29, i32 2, i64 2
  store float 0.000000e+00, ptr %39, align 8, !tbaa !44
  %40 = load ptr, ptr %7, align 8, !tbaa !47
  %41 = getelementptr inbounds %struct.ShadeInput, ptr %2, i64 0, i32 72, i64 %29, i32 3
  store ptr %40, ptr %41, align 8, !tbaa !770
  %42 = load i32, ptr %18, align 8, !tbaa !768
  %43 = add nsw i32 %42, 1
  store i32 %43, ptr %18, align 8, !tbaa !768
  %44 = add nuw i64 %29, 1
  %45 = load ptr, ptr %22, align 8, !tbaa !765
  %46 = trunc i64 %44 to i32
  %47 = call ptr @RE_vlakren_get_tface(ptr noundef %1, ptr noundef %45, i32 noundef %46, ptr noundef nonnull %7, i32 noundef 0) #22
  %48 = icmp eq ptr %47, null
  br i1 %48, label %49, label %28, !llvm.loop !772

49:                                               ; preds = %28, %17, %6
  %50 = and i32 %14, 1
  %51 = icmp eq i32 %50, 0
  br i1 %51, label %58, label %52

52:                                               ; preds = %49
  %53 = getelementptr inbounds %struct.VertRen, ptr %3, i64 0, i32 2
  %54 = load ptr, ptr %53, align 8, !tbaa !552
  %55 = icmp eq ptr %54, null
  br i1 %55, label %58, label %56

56:                                               ; preds = %52
  %57 = getelementptr inbounds %struct.ShadeInput, ptr %2, i64 0, i32 56
  call fastcc void @copy_v3_v3(ptr noundef nonnull %57, ptr noundef nonnull %54) #23
  br label %58

58:                                               ; preds = %56, %52, %49
  %59 = and i32 %14, 8
  %60 = icmp eq i32 %59, 0
  br i1 %60, label %64, label %61

61:                                               ; preds = %58
  %62 = getelementptr inbounds %struct.ShadeInput, ptr %2, i64 0, i32 57
  call fastcc void @copy_v3_v3(ptr noundef nonnull %62, ptr noundef nonnull %11) #23
  %63 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 33
  call void @mul_m4_v3(ptr noundef nonnull %63, ptr noundef nonnull %62) #22
  br label %64

64:                                               ; preds = %61, %58
  %65 = and i32 %14, 4
  %66 = icmp eq i32 %65, 0
  br i1 %66, label %69, label %67

67:                                               ; preds = %64
  %68 = getelementptr inbounds %struct.ShadeInput, ptr %2, i64 0, i32 59
  call fastcc void @copy_v3_v3(ptr noundef nonnull %68, ptr noundef nonnull %12) #23
  br label %69

69:                                               ; preds = %67, %64
  %70 = and i32 %14, 16384
  %71 = icmp eq i32 %70, 0
  br i1 %71, label %85, label %72

72:                                               ; preds = %69
  %73 = call ptr @RE_vertren_get_stress(ptr noundef %1, ptr noundef %3, i32 noundef 0) #22
  %74 = icmp eq ptr %73, null
  br i1 %74, label %83, label %75

75:                                               ; preds = %72
  %76 = load float, ptr %73, align 4, !tbaa !44
  %77 = getelementptr inbounds %struct.ShadeInput, ptr %2, i64 0, i32 68
  %78 = fcmp olt float %76, 1.000000e+00
  %79 = fadd float %76, -1.000000e+00
  br i1 %78, label %80, label %81

80:                                               ; preds = %75
  store float %79, ptr %77, align 8, !tbaa !773
  br label %85

81:                                               ; preds = %75
  %82 = fdiv float %79, %76
  store float %82, ptr %77, align 8, !tbaa !773
  br label %85

83:                                               ; preds = %72
  %84 = getelementptr inbounds %struct.ShadeInput, ptr %2, i64 0, i32 68
  store float 0.000000e+00, ptr %84, align 8, !tbaa !773
  br label %85

85:                                               ; preds = %83, %81, %80, %69
  %86 = getelementptr inbounds %struct.ShadeInput, ptr %2, i64 0, i32 63
  %87 = getelementptr inbounds %struct.ShadeInput, ptr %2, i64 0, i32 63, i64 2
  store float 0.000000e+00, ptr %87, align 8, !tbaa !44
  %88 = getelementptr inbounds %struct.ShadeInput, ptr %2, i64 0, i32 63, i64 1
  store <2 x float> zeroinitializer, ptr %86, align 8, !tbaa !44
  call void @do_material_tex(ptr noundef nonnull %2, ptr noundef %0) #22
  %89 = load float, ptr %87, align 8, !tbaa !44
  %90 = getelementptr inbounds float, ptr %5, i64 2
  %91 = load float, ptr %90, align 4, !tbaa !44
  %92 = fmul float %89, %91
  %93 = load <2 x float>, ptr %86, align 8, !tbaa !44
  %94 = load <2 x float>, ptr %5, align 4, !tbaa !44
  %95 = fmul <2 x float> %93, %94
  %96 = load <2 x float>, ptr %3, align 8, !tbaa !44
  %97 = fadd <2 x float> %95, %96
  store <2 x float> %97, ptr %3, align 8, !tbaa !44
  %98 = getelementptr inbounds [3 x float], ptr %3, i64 0, i64 2
  %99 = load float, ptr %98, align 8, !tbaa !44
  %100 = fadd float %92, %99
  store float %100, ptr %98, align 8, !tbaa !44
  %101 = getelementptr inbounds %struct.VertRen, ptr %3, i64 0, i32 3
  %102 = load i32, ptr %101, align 8, !tbaa !748
  %103 = or i32 %102, 1
  store i32 %103, ptr %101, align 8, !tbaa !748
  %104 = load float, ptr %86, align 8, !tbaa !44
  %105 = fmul float %104, %104
  %106 = load float, ptr %88, align 4, !tbaa !44
  %107 = call float @llvm.fmuladd.f32(float %106, float %106, float %105)
  %108 = load float, ptr %87, align 8, !tbaa !44
  %109 = call float @llvm.fmuladd.f32(float %108, float %108, float %107)
  %110 = getelementptr inbounds %struct.VertRen, ptr %3, i64 0, i32 4
  store float %109, ptr %110, align 4, !tbaa !685
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %7) #24
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fabs.f32(float) #3

; Function Attrs: optsize
declare void @do_material_tex(ptr noundef, ptr noundef) local_unnamed_addr #7

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @as_addvert_lnor(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr nocapture noundef readonly %4) unnamed_addr #4 !PGOFuncName !774 {
  %6 = alloca [3 x float], align 4
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %6) #24
  call fastcc void @normal_short_to_float_v3(ptr noundef nonnull %6, ptr noundef %4) #23
  %7 = tail call fastcc i32 @as_addvert(ptr noundef %1, ptr noundef %2, ptr noundef %3) #23, !range !775
  %8 = icmp slt i32 %7, 0
  br i1 %8, label %41, label %9

9:                                                ; preds = %5
  %10 = getelementptr inbounds %struct.ASvert, ptr %1, i64 0, i32 1, i32 1
  %11 = load ptr, ptr %10, align 8, !tbaa !776
  %12 = call fastcc ptr @as_findvertex_lnor(ptr noundef %3, ptr noundef %2, ptr noundef %1, ptr noundef nonnull %6) #23
  %13 = icmp eq ptr %12, null
  br i1 %13, label %14, label %17

14:                                               ; preds = %9
  %15 = tail call ptr @RE_vertren_copy(ptr noundef %0, ptr noundef %2) #22
  %16 = getelementptr inbounds %struct.VertRen, ptr %15, i64 0, i32 1
  call fastcc void @copy_v3_v3(ptr noundef nonnull %16, ptr noundef nonnull %6) #23
  br label %17

17:                                               ; preds = %14, %9
  %18 = phi ptr [ %15, %14 ], [ %12, %9 ]
  %19 = icmp eq ptr %18, %2
  br i1 %19, label %41, label %20

20:                                               ; preds = %17
  %21 = zext nneg i32 %7 to i64
  %22 = getelementptr inbounds %struct.ASface, ptr %11, i64 0, i32 3, i64 %21
  store ptr %18, ptr %22, align 8, !tbaa !47
  %23 = load ptr, ptr %3, align 8, !tbaa !558
  %24 = icmp eq ptr %23, %2
  br i1 %24, label %25, label %26

25:                                               ; preds = %20
  store ptr %18, ptr %3, align 8, !tbaa !558
  br label %26

26:                                               ; preds = %25, %20
  %27 = getelementptr inbounds %struct.VlakRen, ptr %3, i64 0, i32 1
  %28 = load ptr, ptr %27, align 8, !tbaa !560
  %29 = icmp eq ptr %28, %2
  br i1 %29, label %30, label %31

30:                                               ; preds = %26
  store ptr %18, ptr %27, align 8, !tbaa !560
  br label %31

31:                                               ; preds = %30, %26
  %32 = getelementptr inbounds %struct.VlakRen, ptr %3, i64 0, i32 2
  %33 = load ptr, ptr %32, align 8, !tbaa !561
  %34 = icmp eq ptr %33, %2
  br i1 %34, label %35, label %36

35:                                               ; preds = %31
  store ptr %18, ptr %32, align 8, !tbaa !561
  br label %36

36:                                               ; preds = %35, %31
  %37 = getelementptr inbounds %struct.VlakRen, ptr %3, i64 0, i32 3
  %38 = load ptr, ptr %37, align 8, !tbaa !562
  %39 = icmp eq ptr %38, %2
  br i1 %39, label %40, label %41

40:                                               ; preds = %36
  store ptr %18, ptr %37, align 8, !tbaa !562
  br label %41

41:                                               ; preds = %17, %40, %36, %5
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %6) #24
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc i32 @as_addvert(ptr noundef %0, ptr noundef readnone %1, ptr noundef %2) unnamed_addr #4 !PGOFuncName !778 {
  %4 = icmp eq ptr %1, null
  br i1 %4, label %30, label %5

5:                                                ; preds = %3
  %6 = getelementptr inbounds %struct.ASvert, ptr %0, i64 0, i32 1
  %7 = getelementptr inbounds %struct.ASvert, ptr %0, i64 0, i32 1, i32 1
  %8 = load ptr, ptr %7, align 8, !tbaa !776
  %9 = icmp eq ptr %8, null
  br i1 %9, label %18, label %10

10:                                               ; preds = %5, %15
  %11 = phi i64 [ %16, %15 ], [ 0, %5 ]
  %12 = getelementptr inbounds %struct.ASface, ptr %8, i64 0, i32 2, i64 %11
  %13 = load ptr, ptr %12, align 8, !tbaa !47
  %14 = icmp eq ptr %13, null
  br i1 %14, label %21, label %15

15:                                               ; preds = %10
  %16 = add nuw nsw i64 %11, 1
  %17 = icmp eq i64 %16, 4
  br i1 %17, label %18, label %10, !llvm.loop !779

18:                                               ; preds = %15, %5
  %19 = load ptr, ptr @MEM_callocN, align 8, !tbaa !47
  %20 = tail call ptr %19(i64 noundef 80, ptr noundef nonnull @.str.23) #22
  tail call void @BLI_addtail(ptr noundef nonnull %6, ptr noundef %20) #22
  br label %23

21:                                               ; preds = %10
  %22 = trunc i64 %11 to i32
  br label %23

23:                                               ; preds = %21, %18
  %24 = phi ptr [ %20, %18 ], [ %8, %21 ]
  %25 = phi i32 [ 0, %18 ], [ %22, %21 ]
  %26 = zext nneg i32 %25 to i64
  %27 = getelementptr inbounds %struct.ASface, ptr %24, i64 0, i32 2, i64 %26
  store ptr %2, ptr %27, align 8, !tbaa !47
  %28 = load i32, ptr %0, align 8, !tbaa !780
  %29 = add nsw i32 %28, 1
  store i32 %29, ptr %0, align 8, !tbaa !780
  br label %30

30:                                               ; preds = %3, %23
  %31 = phi i32 [ %25, %23 ], [ -1, %3 ]
  ret i32 %31
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define internal fastcc ptr @as_findvertex_lnor(ptr noundef readnone %0, ptr noundef %1, ptr nocapture noundef readonly %2, ptr nocapture noundef readonly %3) unnamed_addr #18 !PGOFuncName !781 {
  %5 = load i32, ptr %2, align 8, !tbaa !780
  %6 = icmp eq i32 %5, 1
  %7 = getelementptr inbounds %struct.VertRen, ptr %1, i64 0, i32 1
  br i1 %6, label %8, label %9

8:                                                ; preds = %4
  tail call fastcc void @copy_v3_v3(ptr noundef nonnull %7, ptr noundef %3) #23
  br label %39

9:                                                ; preds = %4
  %10 = tail call fastcc zeroext i8 @equals_v3v3(ptr noundef %3, ptr noundef nonnull %7) #23, !range !144
  %11 = icmp eq i8 %10, 0
  br i1 %11, label %12, label %39

12:                                               ; preds = %9
  %13 = getelementptr inbounds %struct.ASvert, ptr %2, i64 0, i32 1
  %14 = load ptr, ptr %13, align 8, !tbaa !47
  %15 = icmp eq ptr %14, null
  br i1 %15, label %39, label %19

16:                                               ; preds = %36
  %17 = load ptr, ptr %20, align 8, !tbaa !47
  %18 = icmp eq ptr %17, null
  br i1 %18, label %39, label %19, !llvm.loop !782

19:                                               ; preds = %12, %16
  %20 = phi ptr [ %17, %16 ], [ %14, %12 ]
  br label %21

21:                                               ; preds = %19, %36
  %22 = phi i64 [ 0, %19 ], [ %37, %36 ]
  %23 = getelementptr inbounds %struct.ASface, ptr %20, i64 0, i32 2, i64 %22
  %24 = load ptr, ptr %23, align 8, !tbaa !47
  %25 = icmp eq ptr %24, null
  %26 = icmp eq ptr %24, %0
  %27 = or i1 %25, %26
  br i1 %27, label %36, label %28

28:                                               ; preds = %21
  %29 = getelementptr inbounds %struct.ASface, ptr %20, i64 0, i32 3, i64 %22
  %30 = load ptr, ptr %29, align 8, !tbaa !47
  %31 = icmp eq ptr %30, null
  br i1 %31, label %36, label %32

32:                                               ; preds = %28
  %33 = getelementptr inbounds %struct.VertRen, ptr %30, i64 0, i32 1
  %34 = tail call fastcc zeroext i8 @equals_v3v3(ptr noundef %3, ptr noundef nonnull %33) #23, !range !144
  %35 = icmp eq i8 %34, 0
  br i1 %35, label %36, label %39

36:                                               ; preds = %21, %32, %28
  %37 = add nuw nsw i64 %22, 1
  %38 = icmp eq i64 %37, 4
  br i1 %38, label %16, label %21, !llvm.loop !783

39:                                               ; preds = %16, %32, %12, %9, %8
  %40 = phi ptr [ %1, %8 ], [ %1, %9 ], [ null, %12 ], [ %30, %32 ], [ null, %16 ]
  ret ptr %40
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc zeroext i8 @equals_v3v3(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) unnamed_addr #12 !PGOFuncName !784 {
  %3 = load float, ptr %0, align 4, !tbaa !44
  %4 = load float, ptr %1, align 4, !tbaa !44
  %5 = fcmp oeq float %3, %4
  br i1 %5, label %6, label %19

6:                                                ; preds = %2
  %7 = getelementptr inbounds float, ptr %0, i64 1
  %8 = load float, ptr %7, align 4, !tbaa !44
  %9 = getelementptr inbounds float, ptr %1, i64 1
  %10 = load float, ptr %9, align 4, !tbaa !44
  %11 = fcmp oeq float %8, %10
  br i1 %11, label %12, label %19

12:                                               ; preds = %6
  %13 = getelementptr inbounds float, ptr %0, i64 2
  %14 = load float, ptr %13, align 4, !tbaa !44
  %15 = getelementptr inbounds float, ptr %1, i64 2
  %16 = load float, ptr %15, align 4, !tbaa !44
  %17 = fcmp oeq float %14, %16
  %18 = zext i1 %17 to i8
  br label %19

19:                                               ; preds = %12, %6, %2
  %20 = phi i8 [ 0, %6 ], [ 0, %2 ], [ %18, %12 ]
  ret i8 %20
}

; Function Attrs: optsize
declare void @BKE_displist_make_mball_forRender(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #7

; Function Attrs: optsize
declare ptr @BKE_mball_make_orco(ptr noundef, ptr noundef) local_unnamed_addr #7

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @set_phong_threshold(ptr noundef %0) unnamed_addr #4 !PGOFuncName !785 {
  %2 = getelementptr inbounds %struct.ObjectRen, ptr %0, i64 0, i32 11
  %3 = load i32, ptr %2, align 4, !tbaa !555
  %4 = icmp sgt i32 %3, 0
  br i1 %4, label %5, label %81

5:                                                ; preds = %1, %64
  %6 = phi i32 [ %67, %64 ], [ 0, %1 ]
  %7 = phi i32 [ %66, %64 ], [ 0, %1 ]
  %8 = phi float [ %65, %64 ], [ 0.000000e+00, %1 ]
  %9 = tail call ptr @RE_findOrAddVlak(ptr noundef nonnull %0, i32 noundef %6) #22
  %10 = getelementptr inbounds %struct.VlakRen, ptr %9, i64 0, i32 7
  %11 = load i8, ptr %10, align 1, !tbaa !564
  %12 = and i8 %11, 5
  %13 = icmp eq i8 %12, 1
  br i1 %13, label %14, label %64

14:                                               ; preds = %5
  %15 = getelementptr inbounds %struct.VlakRen, ptr %9, i64 0, i32 4
  %16 = load ptr, ptr %9, align 8, !tbaa !558
  %17 = getelementptr inbounds %struct.VertRen, ptr %16, i64 0, i32 1
  %18 = tail call fastcc float @dot_v3v3(ptr noundef nonnull %15, ptr noundef nonnull %17) #23
  %19 = fcmp olt float %18, 0.000000e+00
  %20 = fneg float %18
  %21 = select i1 %19, float %20, float %18
  %22 = fcmp ogt float %21, 0x3FECCCCCC0000000
  %23 = select i1 %22, float %21, float -0.000000e+00
  %24 = fadd float %8, %23
  %25 = zext i1 %22 to i32
  %26 = add nsw i32 %7, %25
  %27 = getelementptr inbounds %struct.VlakRen, ptr %9, i64 0, i32 1
  %28 = load ptr, ptr %27, align 8, !tbaa !560
  %29 = getelementptr inbounds %struct.VertRen, ptr %28, i64 0, i32 1
  %30 = tail call fastcc float @dot_v3v3(ptr noundef nonnull %15, ptr noundef nonnull %29) #23
  %31 = fcmp olt float %30, 0.000000e+00
  %32 = fneg float %30
  %33 = select i1 %31, float %32, float %30
  %34 = fcmp ogt float %33, 0x3FECCCCCC0000000
  %35 = select i1 %34, float %33, float -0.000000e+00
  %36 = fadd float %24, %35
  %37 = zext i1 %34 to i32
  %38 = add nsw i32 %26, %37
  %39 = getelementptr inbounds %struct.VlakRen, ptr %9, i64 0, i32 2
  %40 = load ptr, ptr %39, align 8, !tbaa !561
  %41 = getelementptr inbounds %struct.VertRen, ptr %40, i64 0, i32 1
  %42 = tail call fastcc float @dot_v3v3(ptr noundef nonnull %15, ptr noundef nonnull %41) #23
  %43 = fcmp olt float %42, 0.000000e+00
  %44 = fneg float %42
  %45 = select i1 %43, float %44, float %42
  %46 = fcmp ogt float %45, 0x3FECCCCCC0000000
  %47 = select i1 %46, float %45, float -0.000000e+00
  %48 = fadd float %36, %47
  %49 = zext i1 %46 to i32
  %50 = add nsw i32 %38, %49
  %51 = getelementptr inbounds %struct.VlakRen, ptr %9, i64 0, i32 3
  %52 = load ptr, ptr %51, align 8, !tbaa !562
  %53 = icmp eq ptr %52, null
  br i1 %53, label %64, label %54

54:                                               ; preds = %14
  %55 = getelementptr inbounds %struct.VertRen, ptr %52, i64 0, i32 1
  %56 = tail call fastcc float @dot_v3v3(ptr noundef nonnull %15, ptr noundef nonnull %55) #23
  %57 = fcmp olt float %56, 0.000000e+00
  %58 = fneg float %56
  %59 = select i1 %57, float %58, float %56
  %60 = fcmp ogt float %59, 0x3FECCCCCC0000000
  br i1 %60, label %61, label %64

61:                                               ; preds = %54
  %62 = fadd float %48, %59
  %63 = add nsw i32 %50, 1
  br label %64

64:                                               ; preds = %5, %54, %61, %14
  %65 = phi float [ %62, %61 ], [ %48, %54 ], [ %48, %14 ], [ %8, %5 ]
  %66 = phi i32 [ %63, %61 ], [ %50, %54 ], [ %50, %14 ], [ %7, %5 ]
  %67 = add nuw nsw i32 %6, 1
  %68 = load i32, ptr %2, align 4, !tbaa !555
  %69 = icmp slt i32 %67, %68
  br i1 %69, label %5, label %70, !llvm.loop !786

70:                                               ; preds = %64
  %71 = icmp eq i32 %66, 0
  br i1 %71, label %81, label %72

72:                                               ; preds = %70
  %73 = sitofp i32 %66 to float
  %74 = fdiv float %65, %73
  %75 = tail call fastcc float @saacos(float noundef %74) #23
  %76 = fsub float 0x3FF921FB60000000, %75
  %77 = tail call float @cosf(float noundef %76) #22
  %78 = getelementptr inbounds %struct.ObjectRen, ptr %0, i64 0, i32 2
  %79 = load ptr, ptr %78, align 8, !tbaa !232
  %80 = getelementptr inbounds %struct.Object, ptr %79, i64 0, i32 116
  store float %77, ptr %80, align 4, !tbaa !639
  br label %81

81:                                               ; preds = %1, %72, %70
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @split_quads(ptr noundef %0, i32 noundef %1) unnamed_addr #4 !PGOFuncName !787 {
  %3 = getelementptr inbounds %struct.ObjectRen, ptr %0, i64 0, i32 11
  %4 = load i32, ptr %3, align 4, !tbaa !555
  %5 = icmp sgt i32 %4, 0
  br i1 %5, label %6, label %73

6:                                                ; preds = %2
  %7 = icmp eq i32 %1, 2
  %8 = select i1 %7, i8 32, i8 0
  br label %9

9:                                                ; preds = %6, %71
  %10 = phi i32 [ %4, %6 ], [ %11, %71 ]
  %11 = add nsw i32 %10, -1
  %12 = tail call ptr @RE_findOrAddVlak(ptr noundef %0, i32 noundef %11) #22
  %13 = getelementptr inbounds %struct.VlakRen, ptr %12, i64 0, i32 3
  %14 = load ptr, ptr %13, align 8, !tbaa !562
  %15 = icmp eq ptr %14, null
  br i1 %15, label %71, label %16

16:                                               ; preds = %9
  %17 = getelementptr inbounds %struct.VlakRen, ptr %12, i64 0, i32 7
  %18 = load i8, ptr %17, align 1, !tbaa !564
  %19 = and i8 %18, 4
  %20 = icmp eq i8 %19, 0
  br i1 %20, label %21, label %71

21:                                               ; preds = %16
  %22 = getelementptr inbounds %struct.VlakRen, ptr %12, i64 0, i32 5
  %23 = load ptr, ptr %22, align 8, !tbaa !563
  %24 = getelementptr inbounds %struct.Material, ptr %23, i64 0, i32 2
  %25 = load i16, ptr %24, align 8, !tbaa !294
  %26 = icmp eq i16 %25, 3
  br i1 %26, label %71, label %27

27:                                               ; preds = %21
  %28 = tail call ptr @RE_vlakren_copy(ptr noundef %0, ptr noundef nonnull %12) #22
  %29 = getelementptr inbounds %struct.VlakRen, ptr %28, i64 0, i32 7
  %30 = load i8, ptr %29, align 1, !tbaa !564
  %31 = or i8 %30, 16
  store i8 %31, ptr %29, align 1, !tbaa !564
  %32 = load i8, ptr %17, align 1, !tbaa !564
  %33 = and i8 %32, -33
  %34 = or disjoint i8 %33, %8
  store i8 %34, ptr %17, align 1, !tbaa !564
  br i1 %7, label %35, label %43

35:                                               ; preds = %27
  %36 = getelementptr inbounds %struct.VlakRen, ptr %12, i64 0, i32 1
  %37 = getelementptr inbounds %struct.VlakRen, ptr %12, i64 0, i32 2
  %38 = load <2 x ptr>, ptr %36, align 8, !tbaa !47
  %39 = load ptr, ptr %13, align 8, !tbaa !562
  %40 = getelementptr inbounds %struct.VlakRen, ptr %28, i64 0, i32 2
  store ptr %39, ptr %40, align 8, !tbaa !561
  store ptr %39, ptr %37, align 8, !tbaa !561
  %41 = load i8, ptr %29, align 1, !tbaa !564
  %42 = or i8 %41, 32
  br label %53

43:                                               ; preds = %27
  %44 = load ptr, ptr %12, align 8, !tbaa !558
  %45 = getelementptr inbounds %struct.VlakRen, ptr %12, i64 0, i32 2
  %46 = load ptr, ptr %45, align 8, !tbaa !561
  %47 = load ptr, ptr %13, align 8, !tbaa !562
  %48 = getelementptr inbounds %struct.VlakRen, ptr %28, i64 0, i32 2
  store ptr %47, ptr %48, align 8, !tbaa !561
  %49 = load i8, ptr %29, align 1, !tbaa !564
  %50 = and i8 %49, -33
  %51 = insertelement <2 x ptr> poison, ptr %44, i64 0
  %52 = insertelement <2 x ptr> %51, ptr %46, i64 1
  br label %53

53:                                               ; preds = %43, %35
  %54 = phi i8 [ %50, %43 ], [ %42, %35 ]
  %55 = phi <2 x ptr> [ %52, %43 ], [ %38, %35 ]
  %56 = getelementptr inbounds %struct.VlakRen, ptr %28, i64 0, i32 1
  store <2 x ptr> %55, ptr %28, align 8
  store i8 %54, ptr %29, align 1, !tbaa !564
  %57 = getelementptr inbounds %struct.VlakRen, ptr %28, i64 0, i32 3
  store ptr null, ptr %57, align 8, !tbaa !562
  store ptr null, ptr %13, align 8, !tbaa !562
  %58 = getelementptr inbounds %struct.VlakRen, ptr %12, i64 0, i32 4
  %59 = getelementptr inbounds %struct.VlakRen, ptr %12, i64 0, i32 2
  %60 = load ptr, ptr %59, align 8, !tbaa !561
  %61 = getelementptr inbounds %struct.VlakRen, ptr %12, i64 0, i32 1
  %62 = load ptr, ptr %61, align 8, !tbaa !560
  %63 = load ptr, ptr %12, align 8, !tbaa !558
  %64 = tail call float @normal_tri_v3(ptr noundef nonnull %58, ptr noundef %60, ptr noundef %62, ptr noundef %63) #22
  %65 = getelementptr inbounds %struct.VlakRen, ptr %28, i64 0, i32 4
  %66 = getelementptr inbounds %struct.VlakRen, ptr %28, i64 0, i32 2
  %67 = load ptr, ptr %66, align 8, !tbaa !561
  %68 = load ptr, ptr %56, align 8, !tbaa !560
  %69 = load ptr, ptr %28, align 8, !tbaa !558
  %70 = tail call float @normal_tri_v3(ptr noundef nonnull %65, ptr noundef %67, ptr noundef %68, ptr noundef %69) #22
  br label %71

71:                                               ; preds = %9, %16, %21, %53
  %72 = icmp ugt i32 %10, 1
  br i1 %72, label %9, label %73, !llvm.loop !788

73:                                               ; preds = %71, %2
  ret void
}

; Function Attrs: optsize
declare zeroext i8 @BKE_object_is_animated(ptr noundef, ptr noundef) local_unnamed_addr #7

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @check_non_flat_quads(ptr noundef %0) unnamed_addr #4 !PGOFuncName !789 {
  %2 = alloca [3 x float], align 4
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %2) #24
  %3 = getelementptr inbounds %struct.ObjectRen, ptr %0, i64 0, i32 11
  %4 = load i32, ptr %3, align 4, !tbaa !555
  %5 = icmp sgt i32 %4, 0
  br i1 %5, label %6, label %188

6:                                                ; preds = %1
  %7 = getelementptr inbounds [3 x float], ptr %2, i64 0, i64 1
  %8 = getelementptr inbounds [3 x float], ptr %2, i64 0, i64 2
  br label %9

9:                                                ; preds = %6, %186
  %10 = phi i32 [ %4, %6 ], [ %11, %186 ]
  %11 = add nsw i32 %10, -1
  %12 = call ptr @RE_findOrAddVlak(ptr noundef %0, i32 noundef %11) #22
  %13 = getelementptr inbounds %struct.VlakRen, ptr %12, i64 0, i32 3
  %14 = load ptr, ptr %13, align 8, !tbaa !562
  %15 = icmp eq ptr %14, null
  br i1 %15, label %186, label %16

16:                                               ; preds = %9
  %17 = getelementptr inbounds %struct.VlakRen, ptr %12, i64 0, i32 7
  %18 = load i8, ptr %17, align 1, !tbaa !564
  %19 = and i8 %18, 4
  %20 = icmp eq i8 %19, 0
  br i1 %20, label %21, label %186

21:                                               ; preds = %16
  %22 = getelementptr inbounds %struct.VlakRen, ptr %12, i64 0, i32 5
  %23 = load ptr, ptr %22, align 8, !tbaa !563
  %24 = getelementptr inbounds %struct.Material, ptr %23, i64 0, i32 2
  %25 = load i16, ptr %24, align 8, !tbaa !294
  %26 = icmp eq i16 %25, 3
  br i1 %26, label %186, label %27

27:                                               ; preds = %21
  %28 = load ptr, ptr %12, align 8, !tbaa !558
  %29 = getelementptr inbounds %struct.VlakRen, ptr %12, i64 0, i32 1
  %30 = load ptr, ptr %29, align 8, !tbaa !560
  %31 = getelementptr inbounds %struct.VlakRen, ptr %12, i64 0, i32 2
  %32 = load ptr, ptr %31, align 8, !tbaa !561
  call fastcc void @sub_v3_v3v3(ptr noundef nonnull %2, ptr noundef %28, ptr noundef %30) #23
  %33 = load float, ptr %2, align 4
  %34 = fcmp olt float %33, 0.000000e+00
  %35 = fneg float %33
  %36 = select i1 %34, float %35, float %33
  %37 = fcmp olt float %36, 0x3EB4000000000000
  br i1 %37, label %38, label %51

38:                                               ; preds = %27
  %39 = load float, ptr %7, align 4
  %40 = fcmp olt float %39, 0.000000e+00
  %41 = fneg float %39
  %42 = select i1 %40, float %41, float %39
  %43 = fcmp olt float %42, 0x3EB4000000000000
  br i1 %43, label %44, label %51

44:                                               ; preds = %38
  %45 = load float, ptr %8, align 4
  %46 = fcmp olt float %45, 0.000000e+00
  %47 = fneg float %45
  %48 = select i1 %46, float %47, float %45
  %49 = fcmp olt float %48, 0x3EB4000000000000
  br i1 %49, label %50, label %51

50:                                               ; preds = %44
  store ptr %30, ptr %12, align 8, !tbaa !558
  store ptr %32, ptr %29, align 8, !tbaa !560
  store ptr %14, ptr %31, align 8, !tbaa !561
  store ptr null, ptr %13, align 8, !tbaa !562
  br label %186

51:                                               ; preds = %44, %38, %27
  call fastcc void @sub_v3_v3v3(ptr noundef nonnull %2, ptr noundef %30, ptr noundef %32) #23
  %52 = load float, ptr %2, align 4
  %53 = fcmp olt float %52, 0.000000e+00
  %54 = fneg float %52
  %55 = select i1 %53, float %54, float %52
  %56 = fcmp olt float %55, 0x3EB4000000000000
  br i1 %56, label %57, label %70

57:                                               ; preds = %51
  %58 = load float, ptr %7, align 4
  %59 = fcmp olt float %58, 0.000000e+00
  %60 = fneg float %58
  %61 = select i1 %59, float %60, float %58
  %62 = fcmp olt float %61, 0x3EB4000000000000
  br i1 %62, label %63, label %70

63:                                               ; preds = %57
  %64 = load float, ptr %8, align 4
  %65 = fcmp olt float %64, 0.000000e+00
  %66 = fneg float %64
  %67 = select i1 %65, float %66, float %64
  %68 = fcmp olt float %67, 0x3EB4000000000000
  br i1 %68, label %69, label %70

69:                                               ; preds = %63
  store ptr %32, ptr %29, align 8, !tbaa !560
  store ptr %14, ptr %31, align 8, !tbaa !561
  store ptr null, ptr %13, align 8, !tbaa !562
  br label %186

70:                                               ; preds = %63, %57, %51
  call fastcc void @sub_v3_v3v3(ptr noundef nonnull %2, ptr noundef %32, ptr noundef nonnull %14) #23
  %71 = load float, ptr %2, align 4
  %72 = fcmp olt float %71, 0.000000e+00
  %73 = fneg float %71
  %74 = select i1 %72, float %73, float %71
  %75 = fcmp olt float %74, 0x3EB4000000000000
  br i1 %75, label %76, label %89

76:                                               ; preds = %70
  %77 = load float, ptr %7, align 4
  %78 = fcmp olt float %77, 0.000000e+00
  %79 = fneg float %77
  %80 = select i1 %78, float %79, float %77
  %81 = fcmp olt float %80, 0x3EB4000000000000
  br i1 %81, label %82, label %89

82:                                               ; preds = %76
  %83 = load float, ptr %8, align 4
  %84 = fcmp olt float %83, 0.000000e+00
  %85 = fneg float %83
  %86 = select i1 %84, float %85, float %83
  %87 = fcmp olt float %86, 0x3EB4000000000000
  br i1 %87, label %88, label %89

88:                                               ; preds = %82
  store ptr null, ptr %13, align 8, !tbaa !562
  br label %186

89:                                               ; preds = %82, %76, %70
  call fastcc void @sub_v3_v3v3(ptr noundef nonnull %2, ptr noundef nonnull %14, ptr noundef %28) #23
  %90 = load float, ptr %2, align 4
  %91 = fcmp olt float %90, 0.000000e+00
  %92 = fneg float %90
  %93 = select i1 %91, float %92, float %90
  %94 = fcmp olt float %93, 0x3EB4000000000000
  br i1 %94, label %95, label %108

95:                                               ; preds = %89
  %96 = load float, ptr %7, align 4
  %97 = fcmp olt float %96, 0.000000e+00
  %98 = fneg float %96
  %99 = select i1 %97, float %98, float %96
  %100 = fcmp olt float %99, 0x3EB4000000000000
  br i1 %100, label %101, label %108

101:                                              ; preds = %95
  %102 = load float, ptr %8, align 4
  %103 = fcmp olt float %102, 0.000000e+00
  %104 = fneg float %102
  %105 = select i1 %103, float %104, float %102
  %106 = fcmp olt float %105, 0x3EB4000000000000
  br i1 %106, label %107, label %108

107:                                              ; preds = %101
  store ptr null, ptr %13, align 8, !tbaa !562
  br label %186

108:                                              ; preds = %89, %95, %101
  %109 = load ptr, ptr %13, align 8, !tbaa !562
  %110 = icmp eq ptr %109, null
  br i1 %110, label %186, label %111

111:                                              ; preds = %108
  %112 = load ptr, ptr %31, align 8, !tbaa !561
  %113 = load ptr, ptr %12, align 8, !tbaa !558
  %114 = call float @normal_tri_v3(ptr noundef nonnull %2, ptr noundef nonnull %109, ptr noundef %112, ptr noundef %113) #22
  %115 = fcmp oeq float %114, 0.000000e+00
  br i1 %115, label %116, label %121

116:                                              ; preds = %111
  %117 = load ptr, ptr %13, align 8, !tbaa !562
  %118 = load ptr, ptr %29, align 8, !tbaa !560
  %119 = load ptr, ptr %12, align 8, !tbaa !558
  %120 = call float @normal_tri_v3(ptr noundef nonnull %2, ptr noundef %117, ptr noundef %118, ptr noundef %119) #22
  br label %121

121:                                              ; preds = %116, %111
  %122 = getelementptr inbounds %struct.VlakRen, ptr %12, i64 0, i32 4
  %123 = call fastcc float @dot_v3v3(ptr noundef nonnull %2, ptr noundef nonnull %122) #23
  %124 = fcmp olt float %123, 0.000000e+00
  %125 = fneg float %123
  %126 = select i1 %124, float %125, float %123
  %127 = fcmp olt float %126, 0x3FEFFFF580000000
  br i1 %127, label %128, label %183

128:                                              ; preds = %121
  %129 = call ptr @RE_vlakren_copy(ptr noundef %0, ptr noundef nonnull %12) #22
  %130 = getelementptr inbounds %struct.VlakRen, ptr %129, i64 0, i32 7
  %131 = load i8, ptr %130, align 1, !tbaa !564
  %132 = or i8 %131, 16
  store i8 %132, ptr %130, align 1, !tbaa !564
  %133 = load ptr, ptr %12, align 8, !tbaa !558
  %134 = load ptr, ptr %29, align 8, !tbaa !560
  %135 = load ptr, ptr %31, align 8, !tbaa !561
  %136 = call float @normal_tri_v3(ptr noundef nonnull %2, ptr noundef %133, ptr noundef %134, ptr noundef %135) #22
  %137 = load ptr, ptr %12, align 8, !tbaa !558
  %138 = getelementptr inbounds %struct.VertRen, ptr %137, i64 0, i32 1
  %139 = call fastcc float @dot_v3v3(ptr noundef nonnull %2, ptr noundef nonnull %138) #23
  %140 = load ptr, ptr %29, align 8, !tbaa !560
  %141 = load ptr, ptr %31, align 8, !tbaa !561
  %142 = load ptr, ptr %13, align 8, !tbaa !562
  %143 = call float @normal_tri_v3(ptr noundef nonnull %2, ptr noundef %140, ptr noundef %141, ptr noundef %142) #22
  %144 = load ptr, ptr %29, align 8, !tbaa !560
  %145 = getelementptr inbounds %struct.VertRen, ptr %144, i64 0, i32 1
  %146 = call fastcc float @dot_v3v3(ptr noundef nonnull %2, ptr noundef nonnull %145) #23
  %147 = call float @llvm.fabs.f32(float %139)
  %148 = call float @llvm.fabs.f32(float %146)
  %149 = fcmp uge float %147, %148
  %150 = load i8, ptr %17, align 1, !tbaa !564
  %151 = and i8 %150, -33
  %152 = select i1 %149, i8 0, i8 32
  %153 = or disjoint i8 %151, %152
  store i8 %153, ptr %17, align 1, !tbaa !564
  br i1 %149, label %160, label %154

154:                                              ; preds = %128
  %155 = load ptr, ptr %31, align 8, !tbaa !561
  %156 = load ptr, ptr %13, align 8, !tbaa !562
  %157 = getelementptr inbounds %struct.VlakRen, ptr %129, i64 0, i32 2
  store ptr %156, ptr %157, align 8, !tbaa !561
  store ptr %156, ptr %31, align 8, !tbaa !561
  %158 = load i8, ptr %130, align 1, !tbaa !564
  %159 = or i8 %158, 32
  br label %167

160:                                              ; preds = %128
  %161 = load ptr, ptr %12, align 8, !tbaa !558
  %162 = load ptr, ptr %31, align 8, !tbaa !561
  %163 = load ptr, ptr %13, align 8, !tbaa !562
  %164 = getelementptr inbounds %struct.VlakRen, ptr %129, i64 0, i32 2
  store ptr %163, ptr %164, align 8, !tbaa !561
  %165 = load i8, ptr %130, align 1, !tbaa !564
  %166 = and i8 %165, -33
  br label %167

167:                                              ; preds = %160, %154
  %168 = phi ptr [ %161, %160 ], [ %144, %154 ]
  %169 = phi ptr [ %162, %160 ], [ %155, %154 ]
  %170 = phi i8 [ %166, %160 ], [ %159, %154 ]
  store ptr %168, ptr %129, align 8
  %171 = getelementptr inbounds %struct.VlakRen, ptr %129, i64 0, i32 1
  store ptr %169, ptr %171, align 8
  store i8 %170, ptr %130, align 1, !tbaa !564
  %172 = getelementptr inbounds %struct.VlakRen, ptr %129, i64 0, i32 3
  store ptr null, ptr %172, align 8, !tbaa !562
  store ptr null, ptr %13, align 8, !tbaa !562
  %173 = load ptr, ptr %31, align 8, !tbaa !561
  %174 = load ptr, ptr %29, align 8, !tbaa !560
  %175 = load ptr, ptr %12, align 8, !tbaa !558
  %176 = call float @normal_tri_v3(ptr noundef nonnull %122, ptr noundef %173, ptr noundef %174, ptr noundef %175) #22
  %177 = getelementptr inbounds %struct.VlakRen, ptr %129, i64 0, i32 4
  %178 = getelementptr inbounds %struct.VlakRen, ptr %129, i64 0, i32 2
  %179 = load ptr, ptr %178, align 8, !tbaa !561
  %180 = load ptr, ptr %171, align 8, !tbaa !560
  %181 = load ptr, ptr %129, align 8, !tbaa !558
  %182 = call float @normal_tri_v3(ptr noundef nonnull %177, ptr noundef %179, ptr noundef %180, ptr noundef %181) #22
  br label %186

183:                                              ; preds = %121
  %184 = load i8, ptr %17, align 1, !tbaa !564
  %185 = and i8 %184, -33
  store i8 %185, ptr %17, align 1, !tbaa !564
  br label %186

186:                                              ; preds = %50, %88, %107, %69, %9, %16, %21, %167, %183, %108
  %187 = icmp ugt i32 %10, 1
  br i1 %187, label %9, label %188, !llvm.loop !790

188:                                              ; preds = %186, %1
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %2) #24
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @set_fullsample_trace_flag(ptr nocapture noundef readonly %0, ptr noundef %1) unnamed_addr #4 !PGOFuncName !791 {
  %3 = getelementptr inbounds %struct.ObjectRen, ptr %1, i64 0, i32 11
  %4 = load i32, ptr %3, align 4, !tbaa !555
  %5 = icmp sgt i32 %4, 0
  br i1 %5, label %6, label %61

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 45, i32 47
  %8 = load i32, ptr %7, align 8, !tbaa !87
  %9 = and i32 %8, 65536
  %10 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 5
  %11 = load i16, ptr %10, align 2, !tbaa !84
  %12 = icmp eq i32 %9, 0
  %13 = icmp eq i16 %11, 0
  br label %14

14:                                               ; preds = %6, %59
  %15 = phi i32 [ %4, %6 ], [ %16, %59 ]
  %16 = add nsw i32 %15, -1
  %17 = tail call ptr @RE_findOrAddVlak(ptr noundef %1, i32 noundef %16) #22
  %18 = getelementptr inbounds %struct.VlakRen, ptr %17, i64 0, i32 5
  %19 = load ptr, ptr %18, align 8, !tbaa !563
  %20 = getelementptr inbounds %struct.Material, ptr %19, i64 0, i32 51
  %21 = load i32, ptr %20, align 4, !tbaa !167
  %22 = and i32 %21, 1
  %23 = icmp eq i32 %22, 0
  %24 = select i1 %12, i1 true, i1 %23
  br i1 %24, label %29, label %25

25:                                               ; preds = %14
  %26 = getelementptr inbounds %struct.VlakRen, ptr %17, i64 0, i32 7
  %27 = load i8, ptr %26, align 1, !tbaa !564
  %28 = or i8 %27, -128
  store i8 %28, ptr %26, align 1, !tbaa !564
  br label %29

29:                                               ; preds = %25, %14
  br i1 %13, label %59, label %30

30:                                               ; preds = %29
  %31 = and i32 %21, 8388608
  %32 = icmp eq i32 %31, 0
  br i1 %32, label %33, label %55

33:                                               ; preds = %30
  %34 = and i32 %21, 4
  %35 = icmp ne i32 %34, 0
  %36 = select i1 %12, i1 true, i1 %35
  br i1 %36, label %59, label %37

37:                                               ; preds = %33
  %38 = getelementptr inbounds %struct.Material, ptr %19, i64 0, i32 2
  %39 = load i16, ptr %38, align 8, !tbaa !294
  %40 = icmp eq i16 %39, 2
  br i1 %40, label %59, label %41

41:                                               ; preds = %37
  %42 = and i32 %21, 262144
  %43 = icmp ne i32 %42, 0
  %44 = and i32 %21, 196608
  %45 = icmp eq i32 %44, 196608
  %46 = or i1 %43, %45
  br i1 %46, label %47, label %59

47:                                               ; preds = %41
  %48 = getelementptr inbounds %struct.Material, ptr %19, i64 0, i32 41
  %49 = load float, ptr %48, align 4, !tbaa !792
  %50 = fcmp oeq float %49, 1.000000e+00
  br i1 %50, label %51, label %59

51:                                               ; preds = %47
  %52 = getelementptr inbounds %struct.Material, ptr %19, i64 0, i32 42
  %53 = load float, ptr %52, align 8, !tbaa !793
  %54 = fcmp oeq float %53, 1.000000e+00
  br i1 %54, label %55, label %59

55:                                               ; preds = %51, %30
  %56 = getelementptr inbounds %struct.VlakRen, ptr %17, i64 0, i32 7
  %57 = load i8, ptr %56, align 1, !tbaa !564
  %58 = or i8 %57, 8
  store i8 %58, ptr %56, align 1, !tbaa !564
  br label %59

59:                                               ; preds = %55, %41, %29, %33, %37, %47, %51
  %60 = icmp ugt i32 %15, 1
  br i1 %60, label %14, label %61, !llvm.loop !794

61:                                               ; preds = %59, %2
  ret void
}

; Function Attrs: optsize
declare void @minmax_v3v3_v3(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #7

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define internal fastcc noundef float @max_ff(float noundef %0, float noundef %1) unnamed_addr #14 !PGOFuncName !795 {
  %3 = fcmp ogt float %0, %1
  %4 = select i1 %3, float %0, float %1
  ret float %4
}

; Function Attrs: optsize
declare void @strand_minmax(ptr noundef, ptr noundef, ptr noundef, float noundef) local_unnamed_addr #7

; Function Attrs: optsize
declare ptr @RE_vlakren_copy(ptr noundef, ptr noundef) local_unnamed_addr #7

; Function Attrs: optsize
declare ptr @give_current_material(ptr noundef, i16 noundef signext) local_unnamed_addr #7

; Function Attrs: nofree noinline nosync nounwind optsize memory(readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @flag_render_node_material(ptr nocapture noundef %0, ptr nocapture noundef readonly %1) unnamed_addr #19 !PGOFuncName !796 {
  %3 = getelementptr inbounds %struct.bNodeTree, ptr %1, i64 0, i32 7
  %4 = load ptr, ptr %3, align 8, !tbaa !47
  %5 = icmp eq ptr %4, null
  br i1 %5, label %37, label %6

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 4
  br label %8

8:                                                ; preds = %6, %34
  %9 = phi ptr [ %4, %6 ], [ %35, %34 ]
  %10 = getelementptr inbounds %struct.bNode, ptr %9, i64 0, i32 20
  %11 = load ptr, ptr %10, align 8, !tbaa !797
  %12 = icmp eq ptr %11, null
  br i1 %12, label %34, label %13

13:                                               ; preds = %8
  %14 = getelementptr inbounds %struct.ID, ptr %11, i64 0, i32 4
  %15 = load i16, ptr %14, align 8, !tbaa !77
  %16 = icmp eq i16 %15, 16717
  br i1 %16, label %17, label %29

17:                                               ; preds = %13
  %18 = getelementptr inbounds %struct.Material, ptr %11, i64 0, i32 51
  %19 = load i32, ptr %18, align 4, !tbaa !167
  %20 = and i32 %19, 65600
  %21 = icmp eq i32 %20, 65600
  br i1 %21, label %22, label %25

22:                                               ; preds = %17
  %23 = load i16, ptr %7, align 8, !tbaa !257
  %24 = or i16 %23, 1
  store i16 %24, ptr %7, align 8, !tbaa !257
  br label %25

25:                                               ; preds = %22, %17
  %26 = getelementptr inbounds %struct.Material, ptr %11, i64 0, i32 3
  %27 = load i16, ptr %26, align 2, !tbaa !420
  %28 = or i16 %27, 1
  store i16 %28, ptr %26, align 2, !tbaa !420
  br label %34

29:                                               ; preds = %13
  %30 = getelementptr inbounds %struct.bNode, ptr %9, i64 0, i32 8
  %31 = load i16, ptr %30, align 4, !tbaa !799
  %32 = icmp eq i16 %31, 2
  br i1 %32, label %33, label %34

33:                                               ; preds = %29
  tail call fastcc void @flag_render_node_material(ptr noundef %0, ptr noundef nonnull %11) #23
  br label %34

34:                                               ; preds = %8, %29, %33, %25
  %35 = load ptr, ptr %9, align 8, !tbaa !47
  %36 = icmp eq ptr %35, null
  br i1 %36, label %37, label %8, !llvm.loop !800

37:                                               ; preds = %34, %2
  ret void
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @check_material_mapto(ptr nocapture noundef %0) unnamed_addr #18 !PGOFuncName !801 {
  %2 = getelementptr inbounds %struct.Material, ptr %0, i64 0, i32 125
  store i32 0, ptr %2, align 8, !tbaa !802
  br label %3

3:                                                ; preds = %1, %22
  %4 = phi i32 [ 0, %1 ], [ %23, %22 ]
  %5 = phi i64 [ 0, %1 ], [ %24, %22 ]
  %6 = getelementptr inbounds %struct.Material, ptr %0, i64 0, i32 102, i64 %5
  %7 = load ptr, ptr %6, align 8, !tbaa !47
  %8 = icmp eq ptr %7, null
  br i1 %8, label %22, label %9

9:                                                ; preds = %3
  %10 = getelementptr inbounds %struct.MTex, ptr %7, i64 0, i32 5
  %11 = load ptr, ptr %10, align 8, !tbaa !79
  %12 = icmp eq ptr %11, null
  br i1 %12, label %22, label %13

13:                                               ; preds = %9
  %14 = getelementptr inbounds %struct.MTex, ptr %7, i64 0, i32 1
  %15 = load i16, ptr %14, align 2, !tbaa !379
  %16 = and i16 %15, 253
  %17 = zext nneg i16 %16 to i32
  %18 = or i32 %4, %17
  %19 = and i16 %15, 253
  %20 = icmp eq i16 %19, 0
  br i1 %20, label %22, label %21

21:                                               ; preds = %13
  store i32 %18, ptr %2, align 8, !tbaa !802
  br label %22

22:                                               ; preds = %21, %13, %3, %9
  %23 = phi i32 [ %4, %3 ], [ %4, %9 ], [ %18, %13 ], [ %18, %21 ]
  %24 = add nuw nsw i64 %5, 1
  %25 = icmp eq i64 %24, 18
  br i1 %25, label %26, label %3, !llvm.loop !803

26:                                               ; preds = %22
  ret void
}

; Function Attrs: optsize
declare zeroext i8 @invert_m3_m3(ptr noundef, ptr noundef) local_unnamed_addr #7

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @add_lightgroup(ptr noundef %0, ptr nocapture noundef %1, i32 noundef %2) unnamed_addr #4 !PGOFuncName !804 {
  %4 = getelementptr inbounds %struct.ID, ptr %1, i64 0, i32 5
  %5 = load i16, ptr %4, align 2, !tbaa !160
  %6 = and i16 %5, -1025
  store i16 %6, ptr %4, align 2, !tbaa !160
  %7 = getelementptr inbounds %struct.Group, ptr %1, i64 0, i32 1
  %8 = load ptr, ptr %7, align 8, !tbaa !47
  %9 = icmp eq ptr %8, null
  br i1 %9, label %56, label %10

10:                                               ; preds = %3
  %11 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 48
  %12 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 66
  %13 = icmp ne i32 %2, 0
  br label %14

14:                                               ; preds = %10, %53
  %15 = phi ptr [ %8, %10 ], [ %54, %53 ]
  %16 = getelementptr inbounds %struct.GroupObject, ptr %15, i64 0, i32 3
  store ptr null, ptr %16, align 8, !tbaa !312
  %17 = getelementptr inbounds %struct.GroupObject, ptr %15, i64 0, i32 2
  %18 = load ptr, ptr %17, align 8, !tbaa !288
  %19 = tail call fastcc zeroext i8 @is_object_hidden(ptr noundef %0, ptr noundef %18) #23, !range !144
  %20 = icmp eq i8 %19, 0
  br i1 %20, label %21, label %53

21:                                               ; preds = %14
  %22 = getelementptr inbounds %struct.Object, ptr %18, i64 0, i32 52
  %23 = load i32, ptr %22, align 8, !tbaa !154
  %24 = load i32, ptr %11, align 8, !tbaa !121
  %25 = and i32 %24, %23
  %26 = icmp eq i32 %25, 0
  %27 = icmp eq ptr %18, null
  %28 = or i1 %27, %26
  br i1 %28, label %53, label %29

29:                                               ; preds = %21
  %30 = getelementptr inbounds %struct.Object, ptr %18, i64 0, i32 3
  %31 = load i16, ptr %30, align 8, !tbaa !147
  %32 = icmp eq i16 %31, 10
  br i1 %32, label %33, label %53

33:                                               ; preds = %29, %37
  %34 = phi ptr [ %35, %37 ], [ %12, %29 ]
  %35 = load ptr, ptr %34, align 8, !tbaa !47
  %36 = icmp eq ptr %35, null
  br i1 %36, label %45, label %37

37:                                               ; preds = %33
  %38 = getelementptr inbounds %struct.GroupObject, ptr %35, i64 0, i32 2
  %39 = load ptr, ptr %38, align 8, !tbaa !288
  %40 = icmp eq ptr %39, %18
  br i1 %40, label %41, label %33, !llvm.loop !805

41:                                               ; preds = %37
  %42 = getelementptr inbounds %struct.GroupObject, ptr %35, i64 0, i32 3
  %43 = load ptr, ptr %42, align 8, !tbaa !312
  store ptr %43, ptr %16, align 8, !tbaa !312
  %44 = icmp eq ptr %43, null
  br i1 %44, label %45, label %47

45:                                               ; preds = %33, %41
  %46 = tail call fastcc ptr @add_render_lamp(ptr noundef %0, ptr noundef %18) #23
  br label %47

47:                                               ; preds = %45, %41
  %48 = phi ptr [ %46, %45 ], [ %35, %41 ]
  %49 = icmp ne ptr %48, null
  %50 = and i1 %13, %49
  br i1 %50, label %51, label %53

51:                                               ; preds = %47
  tail call void @BLI_remlink(ptr noundef nonnull %12, ptr noundef nonnull %48) #22
  %52 = load ptr, ptr @MEM_freeN, align 8, !tbaa !47
  tail call void %52(ptr noundef nonnull %48) #22
  br label %53

53:                                               ; preds = %21, %47, %51, %29, %14
  %54 = load ptr, ptr %15, align 8, !tbaa !47
  %55 = icmp eq ptr %54, null
  br i1 %55, label %56, label %14, !llvm.loop !806

56:                                               ; preds = %53, %3
  ret void
}

; Function Attrs: optsize
declare void @BLI_remlink(ptr noundef, ptr noundef) local_unnamed_addr #7

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define internal i32 @verghalo(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) #16 !PGOFuncName !807 {
  %3 = load ptr, ptr %0, align 8, !tbaa !47
  %4 = load ptr, ptr %1, align 8, !tbaa !47
  %5 = getelementptr inbounds %struct.HaloRen, ptr %3, i64 0, i32 15
  %6 = load i32, ptr %5, align 8, !tbaa !808
  %7 = getelementptr inbounds %struct.HaloRen, ptr %4, i64 0, i32 15
  %8 = load i32, ptr %7, align 8, !tbaa !808
  %9 = icmp slt i32 %6, %8
  %10 = icmp sgt i32 %6, %8
  %11 = sext i1 %10 to i32
  %12 = select i1 %9, i32 1, i32 %11
  ret i32 %12
}

; Function Attrs: optsize
declare i32 @point_inside_volume_objectinstance(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #7

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc float @BLI_rctf_size_x(ptr nocapture noundef readonly %0) unnamed_addr #12 !PGOFuncName !809 {
  %2 = getelementptr inbounds %struct.rctf, ptr %0, i64 0, i32 1
  %3 = load float, ptr %2, align 4, !tbaa !810
  %4 = load float, ptr %0, align 4, !tbaa !811
  %5 = fsub float %3, %4
  ret float %5
}

; Function Attrs: mustprogress nofree nounwind optsize willreturn memory(write)
declare double @atan(double noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc float @BLI_rctf_size_y(ptr nocapture noundef readonly %0) unnamed_addr #12 !PGOFuncName !812 {
  %2 = getelementptr inbounds %struct.rctf, ptr %0, i64 0, i32 3
  %3 = load float, ptr %2, align 4, !tbaa !813
  %4 = getelementptr inbounds %struct.rctf, ptr %0, i64 0, i32 2
  %5 = load float, ptr %4, align 4, !tbaa !814
  %6 = fsub float %3, %5
  ret float %6
}

; Function Attrs: optsize
declare void @projectvert(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #7

; Function Attrs: optsize
declare ptr @RE_vertren_get_winspeed(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: mustprogress nofree noinline nounwind optsize willreturn memory(readwrite, inaccessiblemem: write) uwtable
define internal fastcc void @calculate_speedvector(ptr nocapture noundef readonly %0, i32 noundef %1, float noundef %2, float noundef %3, ptr nocapture noundef readonly %4, ptr nocapture noundef readonly %5, ptr nocapture noundef writeonly %6) unnamed_addr #9 !PGOFuncName !815 {
  %8 = alloca [2 x float], align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %8) #24
  call fastcc void @speedvector_project(ptr noundef null, ptr noundef nonnull %8, ptr noundef %4, ptr noundef %5) #23
  %9 = load <2 x float>, ptr %0, align 4, !tbaa !44
  %10 = load <2 x float>, ptr %8, align 8, !tbaa !44
  %11 = fsub <2 x float> %9, %10
  %12 = extractelement <2 x float> %11, i64 0
  %13 = fcmp olt float %12, 0x3FB99999A0000000
  %14 = fcmp ogt float %12, 0xBFB99999A0000000
  %15 = and i1 %13, %14
  %16 = extractelement <2 x float> %11, i64 1
  %17 = fcmp olt float %16, 0x3FB99999A0000000
  %18 = select i1 %15, i1 %17, i1 false
  %19 = fcmp ogt float %16, 0xBFB99999A0000000
  %20 = select i1 %18, i1 %19, i1 false
  %21 = insertelement <2 x i1> poison, i1 %20, i64 0
  %22 = shufflevector <2 x i1> %21, <2 x i1> poison, <2 x i32> zeroinitializer
  %23 = select <2 x i1> %22, <2 x float> zeroinitializer, <2 x float> %11
  %24 = fmul <2 x float> %23, %23
  %25 = extractelement <2 x float> %24, i64 1
  %26 = extractelement <2 x float> %23, i64 0
  %27 = tail call float @llvm.fmuladd.f32(float %26, float %26, float %25)
  %28 = fcmp ogt float %27, %2
  br i1 %28, label %29, label %35

29:                                               ; preds = %7
  %30 = tail call float @llvm.sqrt.f32(float %27)
  %31 = fdiv float %3, %30
  %32 = insertelement <2 x float> poison, float %31, i64 0
  %33 = shufflevector <2 x float> %32, <2 x float> poison, <2 x i32> zeroinitializer
  %34 = fmul <2 x float> %23, %33
  br label %35

35:                                               ; preds = %29, %7
  %36 = phi <2 x float> [ %34, %29 ], [ %23, %7 ]
  %37 = icmp eq i32 %1, 0
  br i1 %37, label %44, label %38

38:                                               ; preds = %35
  %39 = extractelement <2 x float> %36, i64 0
  %40 = fneg float %39
  %41 = getelementptr inbounds float, ptr %6, i64 2
  store float %40, ptr %41, align 4, !tbaa !44
  %42 = extractelement <2 x float> %36, i64 1
  %43 = fneg float %42
  br label %47

44:                                               ; preds = %35
  %45 = extractelement <2 x float> %36, i64 0
  store float %45, ptr %6, align 4, !tbaa !44
  %46 = extractelement <2 x float> %36, i64 1
  br label %47

47:                                               ; preds = %44, %38
  %48 = phi i64 [ 1, %44 ], [ 3, %38 ]
  %49 = phi float [ %46, %44 ], [ %43, %38 ]
  %50 = getelementptr inbounds float, ptr %6, i64 %48
  store float %49, ptr %50, align 4, !tbaa !44
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %8) #24
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @calculate_strandsurface_speedvectors(ptr noundef %0, ptr noundef %1, ptr nocapture noundef readonly %2) unnamed_addr #4 !PGOFuncName !816 {
  %4 = alloca [4 x float], align 16
  %5 = alloca [4 x float], align 16
  %6 = alloca [4 x float], align 16
  %7 = alloca [4 x [4 x float]], align 16
  %8 = alloca [2 x float], align 4
  %9 = getelementptr inbounds %struct.StrandSurface, ptr %2, i64 0, i32 4
  %10 = load ptr, ptr %9, align 8, !tbaa !250
  %11 = icmp eq ptr %10, null
  br i1 %11, label %68, label %12

12:                                               ; preds = %3
  %13 = getelementptr inbounds %struct.StrandSurface, ptr %2, i64 0, i32 8
  %14 = load ptr, ptr %13, align 8, !tbaa !212
  %15 = icmp eq ptr %14, null
  br i1 %15, label %68, label %16

16:                                               ; preds = %12
  %17 = getelementptr inbounds %struct.StrandSurface, ptr %2, i64 0, i32 9
  %18 = load ptr, ptr %17, align 8, !tbaa !214
  %19 = icmp eq ptr %18, null
  br i1 %19, label %68, label %20

20:                                               ; preds = %16
  %21 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 13
  %22 = load i32, ptr %21, align 4, !tbaa !217
  %23 = sitofp i32 %22 to float
  %24 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 14
  %25 = load i32, ptr %24, align 8, !tbaa !218
  %26 = sitofp i32 %25 to float
  %27 = fmul float %23, %26
  %28 = tail call float @sqrtf(float noundef %27) #22
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %4) #24
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %5) #24
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %6) #24
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %7) #24
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %8) #24
  %29 = getelementptr inbounds %struct.ObjectInstanceRen, ptr %1, i64 0, i32 11
  %30 = load i16, ptr %29, align 8, !tbaa !221
  %31 = and i16 %30, 3
  %32 = icmp eq i16 %31, 0
  %33 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 35
  br i1 %32, label %36, label %34

34:                                               ; preds = %20
  %35 = getelementptr inbounds %struct.ObjectInstanceRen, ptr %1, i64 0, i32 8
  call void @mul_m4_m4m4(ptr noundef nonnull %7, ptr noundef nonnull %33, ptr noundef nonnull %35) #22
  br label %37

36:                                               ; preds = %20
  call void @copy_m4_m4(ptr noundef nonnull %7, ptr noundef nonnull %33) #22
  br label %37

37:                                               ; preds = %36, %34
  %38 = load ptr, ptr @MEM_callocN, align 8, !tbaa !47
  %39 = getelementptr inbounds %struct.StrandSurface, ptr %2, i64 0, i32 10
  %40 = load i32, ptr %39, align 8, !tbaa !817
  %41 = sext i32 %40 to i64
  %42 = shl nsw i64 %41, 4
  %43 = call ptr %38(i64 noundef %42, ptr noundef nonnull @.str.30) #22
  %44 = load i32, ptr %39, align 8, !tbaa !817
  %45 = icmp sgt i32 %44, 0
  br i1 %45, label %46, label %67

46:                                               ; preds = %37, %46
  %47 = phi i64 [ %63, %46 ], [ 0, %37 ]
  %48 = load ptr, ptr %9, align 8, !tbaa !250
  %49 = getelementptr inbounds [3 x float], ptr %48, i64 %47
  call void @projectvert(ptr noundef %49, ptr noundef nonnull %7, ptr noundef nonnull %4) #22
  %50 = load ptr, ptr %13, align 8, !tbaa !212
  %51 = getelementptr inbounds [3 x float], ptr %50, i64 %47
  call void @projectvert(ptr noundef %51, ptr noundef nonnull %7, ptr noundef nonnull %5) #22
  %52 = load ptr, ptr %13, align 8, !tbaa !212
  %53 = getelementptr inbounds [3 x float], ptr %52, i64 %47
  call fastcc void @speedvector_project(ptr noundef null, ptr noundef nonnull %8, ptr noundef %53, ptr noundef nonnull %5) #23
  %54 = load ptr, ptr %9, align 8, !tbaa !250
  %55 = getelementptr inbounds [3 x float], ptr %54, i64 %47
  %56 = getelementptr inbounds [4 x float], ptr %43, i64 %47
  call fastcc void @calculate_speedvector(ptr noundef nonnull %8, i32 noundef 0, float noundef %27, float noundef %28, ptr noundef %55, ptr noundef nonnull %4, ptr noundef %56) #23
  %57 = load ptr, ptr %17, align 8, !tbaa !214
  %58 = getelementptr inbounds [3 x float], ptr %57, i64 %47
  call void @projectvert(ptr noundef %58, ptr noundef nonnull %7, ptr noundef nonnull %6) #22
  %59 = load ptr, ptr %17, align 8, !tbaa !214
  %60 = getelementptr inbounds [3 x float], ptr %59, i64 %47
  call fastcc void @speedvector_project(ptr noundef null, ptr noundef nonnull %8, ptr noundef %60, ptr noundef nonnull %6) #23
  %61 = load ptr, ptr %9, align 8, !tbaa !250
  %62 = getelementptr inbounds [3 x float], ptr %61, i64 %47
  call fastcc void @calculate_speedvector(ptr noundef nonnull %8, i32 noundef 1, float noundef %27, float noundef %28, ptr noundef %62, ptr noundef nonnull %4, ptr noundef %56) #23
  %63 = add nuw nsw i64 %47, 1
  %64 = load i32, ptr %39, align 8, !tbaa !817
  %65 = sext i32 %64 to i64
  %66 = icmp slt i64 %63, %65
  br i1 %66, label %46, label %67, !llvm.loop !818

67:                                               ; preds = %46, %37
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %8) #24
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %7) #24
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %6) #24
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %5) #24
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %4) #24
  br label %68

68:                                               ; preds = %3, %12, %16, %67
  %69 = phi ptr [ %43, %67 ], [ null, %16 ], [ null, %12 ], [ null, %3 ]
  ret ptr %69
}

; Function Attrs: optsize
declare ptr @RE_strandren_get_winspeed(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: optsize
declare void @interp_weights_face_v3(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #7

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable
define internal fastcc void @zero_v4(ptr nocapture noundef writeonly %0) unnamed_addr #13 !PGOFuncName !819 {
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %0, i8 0, i64 16, i1 false)
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @madd_v4_v4fl(ptr nocapture noundef %0, ptr nocapture noundef readonly %1, float noundef %2) unnamed_addr #6 !PGOFuncName !820 {
  %4 = load float, ptr %1, align 4, !tbaa !44
  %5 = load float, ptr %0, align 4, !tbaa !44
  %6 = tail call float @llvm.fmuladd.f32(float %4, float %2, float %5)
  store float %6, ptr %0, align 4, !tbaa !44
  %7 = getelementptr inbounds float, ptr %1, i64 1
  %8 = load float, ptr %7, align 4, !tbaa !44
  %9 = getelementptr inbounds float, ptr %0, i64 1
  %10 = load float, ptr %9, align 4, !tbaa !44
  %11 = tail call float @llvm.fmuladd.f32(float %8, float %2, float %10)
  store float %11, ptr %9, align 4, !tbaa !44
  %12 = getelementptr inbounds float, ptr %1, i64 2
  %13 = load float, ptr %12, align 4, !tbaa !44
  %14 = getelementptr inbounds float, ptr %0, i64 2
  %15 = load float, ptr %14, align 4, !tbaa !44
  %16 = tail call float @llvm.fmuladd.f32(float %13, float %2, float %15)
  store float %16, ptr %14, align 4, !tbaa !44
  %17 = getelementptr inbounds float, ptr %1, i64 3
  %18 = load float, ptr %17, align 4, !tbaa !44
  %19 = getelementptr inbounds float, ptr %0, i64 3
  %20 = load float, ptr %19, align 4, !tbaa !44
  %21 = tail call float @llvm.fmuladd.f32(float %18, float %2, float %20)
  store float %21, ptr %19, align 4, !tbaa !44
  ret void
}

; Function Attrs: nofree willreturn
declare double @ldexp(double, i32) local_unnamed_addr #20

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #21

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #21

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i16 @llvm.umax.i16(i16, i16) #21

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.sqrt.f32(float) #21

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umin.i32(i32, i32) #21

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umax.i32(i32, i32) #21

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare <4 x float> @llvm.fmuladd.v4f32(<4 x float>, <4 x float>, <4 x float>) #21

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x float> @llvm.fmuladd.v2f32(<2 x float>, <2 x float>, <2 x float>) #21

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x float> @llvm.fabs.v2f32(<2 x float>) #21

attributes #0 = { mustprogress nofree noinline nounwind optsize willreturn memory(write, argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { mustprogress nofree nounwind optsize willreturn memory(write) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #4 = { noinline nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #6 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #9 = { mustprogress nofree noinline nounwind optsize willreturn memory(readwrite, inaccessiblemem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { nofree noinline norecurse nosync nounwind optsize memory(read, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { nofree nounwind optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #15 = { mustprogress nofree noinline nounwind optsize willreturn memory(write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #16 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #17 = { nofree optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #18 = { nofree noinline norecurse nosync nounwind optsize memory(read, argmem: readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #19 = { nofree noinline nosync nounwind optsize memory(readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #20 = { nofree willreturn }
attributes #21 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #22 = { nounwind optsize }
attributes #23 = { optsize }
attributes #24 = { nounwind }

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
!47 = !{!36, !36, i64 0}
!48 = !{!49, !36, i64 1096}
!49 = !{!"Render", !36, i64 0, !36, i64 8, !37, i64 16, !41, i64 92, !40, i64 96, !40, i64 98, !40, i64 100, !40, i64 102, !37, i64 104, !36, i64 112, !36, i64 120, !50, i64 128, !41, i64 144, !41, i64 148, !41, i64 152, !51, i64 156, !52, i64 172, !39, i64 188, !39, i64 192, !39, i64 196, !41, i64 200, !41, i64 204, !41, i64 208, !41, i64 212, !39, i64 216, !39, i64 220, !39, i64 224, !39, i64 228, !39, i64 232, !39, i64 236, !37, i64 240, !37, i64 252, !37, i64 288, !37, i64 352, !37, i64 416, !37, i64 480, !39, i64 544, !39, i64 548, !36, i64 552, !37, i64 560, !37, i64 816, !36, i64 1072, !37, i64 1080, !36, i64 1088, !36, i64 1096, !53, i64 1104, !60, i64 5088, !36, i64 5616, !41, i64 5624, !41, i64 5628, !50, i64 5632, !36, i64 5648, !36, i64 5656, !36, i64 5664, !36, i64 5672, !39, i64 5680, !36, i64 5688, !50, i64 5696, !39, i64 5712, !39, i64 5716, !41, i64 5720, !41, i64 5724, !41, i64 5728, !41, i64 5732, !41, i64 5736, !36, i64 5744, !50, i64 5752, !50, i64 5768, !50, i64 5784, !36, i64 5800, !50, i64 5808, !41, i64 5824, !36, i64 5832, !36, i64 5840, !36, i64 5848, !36, i64 5856, !36, i64 5864, !50, i64 5872, !36, i64 5888, !50, i64 5896, !50, i64 5912, !36, i64 5928, !36, i64 5936, !36, i64 5944, !36, i64 5952, !36, i64 5960, !36, i64 5968, !36, i64 5976, !36, i64 5984, !36, i64 5992, !36, i64 6000, !36, i64 6008, !36, i64 6016, !36, i64 6024, !36, i64 6032, !36, i64 6040, !36, i64 6048, !36, i64 6056, !62, i64 6064, !36, i64 6216, !36, i64 6224, !36, i64 6232}
!50 = !{!"ListBase", !36, i64 0, !36, i64 8}
!51 = !{!"rcti", !41, i64 0, !41, i64 4, !41, i64 8, !41, i64 12}
!52 = !{!"rctf", !39, i64 0, !39, i64 4, !39, i64 8, !39, i64 12}
!53 = !{!"RenderData", !54, i64 0, !36, i64 248, !36, i64 256, !57, i64 264, !58, i64 328, !41, i64 400, !41, i64 404, !41, i64 408, !39, i64 412, !41, i64 416, !41, i64 420, !41, i64 424, !41, i64 428, !40, i64 432, !40, i64 434, !39, i64 436, !39, i64 440, !39, i64 444, !39, i64 448, !39, i64 452, !40, i64 456, !40, i64 458, !40, i64 460, !40, i64 462, !40, i64 464, !40, i64 466, !41, i64 468, !40, i64 472, !40, i64 474, !40, i64 476, !40, i64 478, !40, i64 480, !40, i64 482, !41, i64 484, !41, i64 488, !40, i64 492, !40, i64 494, !41, i64 496, !41, i64 500, !40, i64 504, !40, i64 506, !40, i64 508, !40, i64 510, !40, i64 512, !37, i64 514, !37, i64 515, !41, i64 516, !41, i64 520, !41, i64 524, !40, i64 528, !40, i64 530, !40, i64 532, !40, i64 534, !40, i64 536, !40, i64 538, !40, i64 540, !40, i64 542, !52, i64 544, !52, i64 560, !51, i64 576, !50, i64 592, !40, i64 608, !40, i64 610, !39, i64 612, !39, i64 616, !39, i64 620, !39, i64 624, !41, i64 628, !39, i64 632, !39, i64 636, !39, i64 640, !39, i64 644, !40, i64 648, !40, i64 650, !40, i64 652, !40, i64 654, !40, i64 656, !40, i64 658, !39, i64 660, !39, i64 664, !40, i64 668, !40, i64 670, !39, i64 672, !39, i64 676, !37, i64 680, !41, i64 1704, !40, i64 1708, !40, i64 1710, !37, i64 1712, !37, i64 2480, !37, i64 2496, !37, i64 2512, !37, i64 2513, !37, i64 2514, !37, i64 2515, !41, i64 2520, !40, i64 2524, !40, i64 2526, !39, i64 2528, !39, i64 2532, !40, i64 2536, !40, i64 2538, !39, i64 2540, !40, i64 2544, !40, i64 2546, !41, i64 2548, !40, i64 2552, !40, i64 2554, !40, i64 2556, !40, i64 2558, !39, i64 2560, !39, i64 2564, !36, i64 2568, !41, i64 2576, !39, i64 2580, !37, i64 2584, !59, i64 2616, !41, i64 3976, !41, i64 3980}
!54 = !{!"ImageFormatData", !37, i64 0, !37, i64 1, !37, i64 2, !37, i64 3, !37, i64 4, !37, i64 5, !37, i64 6, !37, i64 7, !40, i64 8, !40, i64 10, !39, i64 12, !37, i64 16, !37, i64 17, !37, i64 18, !55, i64 24, !56, i64 184}
!55 = !{!"ColorManagedViewSettings", !41, i64 0, !41, i64 4, !37, i64 8, !37, i64 72, !39, i64 136, !39, i64 140, !36, i64 144, !36, i64 152}
!56 = !{!"ColorManagedDisplaySettings", !37, i64 0}
!57 = !{!"QuicktimeCodecSettings", !41, i64 0, !41, i64 4, !41, i64 8, !41, i64 12, !41, i64 16, !41, i64 20, !41, i64 24, !41, i64 28, !41, i64 32, !41, i64 36, !41, i64 40, !41, i64 44, !40, i64 48, !40, i64 50, !41, i64 52, !41, i64 56, !41, i64 60}
!58 = !{!"FFMpegCodecData", !41, i64 0, !41, i64 4, !41, i64 8, !41, i64 12, !41, i64 16, !41, i64 20, !41, i64 24, !41, i64 28, !39, i64 32, !41, i64 36, !41, i64 40, !41, i64 44, !41, i64 48, !41, i64 52, !41, i64 56, !41, i64 60, !36, i64 64}
!59 = !{!"BakeData", !54, i64 0, !37, i64 248, !40, i64 1272, !40, i64 1274, !40, i64 1276, !40, i64 1278, !39, i64 1280, !39, i64 1284, !37, i64 1288, !37, i64 1291, !37, i64 1292, !37, i64 1293, !37, i64 1296}
!60 = !{!"World", !61, i64 0, !36, i64 120, !40, i64 128, !40, i64 130, !40, i64 132, !40, i64 134, !39, i64 136, !39, i64 140, !39, i64 144, !39, i64 148, !39, i64 152, !39, i64 156, !39, i64 160, !39, i64 164, !39, i64 168, !39, i64 172, !39, i64 176, !39, i64 180, !39, i64 184, !39, i64 188, !39, i64 192, !39, i64 196, !40, i64 200, !40, i64 202, !40, i64 204, !40, i64 206, !40, i64 208, !40, i64 210, !40, i64 212, !40, i64 214, !39, i64 216, !39, i64 220, !39, i64 224, !39, i64 228, !39, i64 232, !39, i64 236, !39, i64 240, !39, i64 244, !39, i64 248, !39, i64 252, !39, i64 256, !39, i64 260, !40, i64 264, !40, i64 266, !40, i64 268, !40, i64 270, !39, i64 272, !39, i64 276, !39, i64 280, !39, i64 284, !40, i64 288, !40, i64 290, !40, i64 292, !40, i64 294, !39, i64 296, !39, i64 300, !39, i64 304, !39, i64 308, !39, i64 312, !39, i64 316, !39, i64 320, !40, i64 324, !40, i64 326, !40, i64 328, !40, i64 330, !40, i64 332, !40, i64 334, !36, i64 336, !36, i64 344, !36, i64 352, !37, i64 360, !40, i64 504, !40, i64 506, !37, i64 508, !36, i64 512, !36, i64 520}
!61 = !{!"ID", !36, i64 0, !36, i64 8, !36, i64 16, !36, i64 24, !37, i64 32, !40, i64 98, !41, i64 100, !41, i64 104, !41, i64 108, !36, i64 112}
!62 = !{!"RenderStats", !41, i64 0, !41, i64 4, !41, i64 8, !41, i64 12, !41, i64 16, !41, i64 20, !41, i64 24, !40, i64 28, !40, i64 30, !40, i64 32, !40, i64 34, !40, i64 36, !40, i64 38, !37, i64 40, !63, i64 48, !63, i64 56, !36, i64 64, !36, i64 72, !37, i64 80, !39, i64 144, !39, i64 148}
!63 = !{!"double", !37, i64 0}
!64 = !{!65, !36, i64 136}
!65 = !{!"Scene", !61, i64 0, !36, i64 120, !36, i64 128, !36, i64 136, !36, i64 144, !50, i64 152, !36, i64 168, !36, i64 176, !37, i64 184, !37, i64 196, !37, i64 208, !37, i64 220, !41, i64 232, !41, i64 236, !41, i64 240, !40, i64 244, !37, i64 246, !37, i64 247, !36, i64 248, !36, i64 256, !36, i64 264, !36, i64 272, !53, i64 280, !66, i64 4264, !50, i64 4296, !50, i64 4312, !36, i64 4328, !36, i64 4336, !36, i64 4344, !36, i64 4352, !36, i64 4360, !36, i64 4368, !40, i64 4376, !40, i64 4378, !41, i64 4380, !50, i64 4384, !67, i64 4400, !68, i64 4416, !71, i64 4600, !36, i64 4608, !72, i64 4616, !36, i64 4640, !73, i64 4648, !73, i64 4656, !55, i64 4664, !56, i64 4824, !74, i64 4888, !36, i64 4952}
!66 = !{!"AudioData", !41, i64 0, !39, i64 4, !39, i64 8, !39, i64 12, !41, i64 16, !40, i64 20, !40, i64 22, !39, i64 24, !39, i64 28}
!67 = !{!"GameFraming", !37, i64 0, !37, i64 12, !37, i64 13, !37, i64 14, !37, i64 15}
!68 = !{!"GameData", !67, i64 0, !40, i64 16, !40, i64 18, !40, i64 20, !40, i64 22, !40, i64 24, !40, i64 26, !40, i64 28, !40, i64 30, !40, i64 32, !37, i64 34, !69, i64 40, !40, i64 64, !40, i64 66, !39, i64 68, !70, i64 72, !39, i64 128, !39, i64 132, !41, i64 136, !40, i64 140, !40, i64 142, !40, i64 144, !40, i64 146, !40, i64 148, !40, i64 150, !40, i64 152, !40, i64 154, !40, i64 156, !40, i64 158, !40, i64 160, !40, i64 162, !39, i64 164, !39, i64 168, !39, i64 172, !39, i64 176, !39, i64 180}
!69 = !{!"GameDome", !40, i64 0, !40, i64 2, !40, i64 4, !40, i64 6, !39, i64 8, !39, i64 12, !36, i64 16}
!70 = !{!"RecastData", !39, i64 0, !39, i64 4, !39, i64 8, !39, i64 12, !39, i64 16, !39, i64 20, !39, i64 24, !39, i64 28, !39, i64 32, !39, i64 36, !41, i64 40, !39, i64 44, !39, i64 48, !40, i64 52, !40, i64 54}
!71 = !{!"UnitSettings", !39, i64 0, !37, i64 4, !37, i64 5, !40, i64 6}
!72 = !{!"PhysicsSettings", !37, i64 0, !41, i64 12, !41, i64 16, !41, i64 20}
!73 = !{!"long", !37, i64 0}
!74 = !{!"ColorManagedColorspaceSettings", !37, i64 0}
!75 = !{i64 0, i64 8, !47, i64 8, i64 8, !47, i64 16, i64 8, !47, i64 24, i64 8, !47, i64 32, i64 66, !76, i64 98, i64 2, !77, i64 100, i64 4, !78, i64 104, i64 4, !78, i64 108, i64 4, !78, i64 112, i64 8, !47, i64 120, i64 8, !47, i64 128, i64 2, !77, i64 130, i64 2, !77, i64 132, i64 2, !77, i64 134, i64 2, !77, i64 136, i64 4, !44, i64 140, i64 4, !44, i64 144, i64 4, !44, i64 148, i64 4, !44, i64 152, i64 4, !44, i64 156, i64 4, !44, i64 160, i64 4, !44, i64 164, i64 4, !44, i64 168, i64 4, !44, i64 172, i64 4, !44, i64 176, i64 4, !44, i64 180, i64 4, !44, i64 184, i64 4, !44, i64 188, i64 4, !44, i64 192, i64 4, !44, i64 196, i64 4, !44, i64 200, i64 2, !77, i64 202, i64 2, !77, i64 204, i64 2, !77, i64 206, i64 2, !77, i64 208, i64 2, !77, i64 210, i64 2, !77, i64 212, i64 2, !77, i64 214, i64 2, !77, i64 216, i64 4, !44, i64 220, i64 4, !44, i64 224, i64 4, !44, i64 228, i64 4, !44, i64 232, i64 4, !44, i64 236, i64 4, !44, i64 240, i64 4, !44, i64 244, i64 4, !44, i64 248, i64 4, !44, i64 252, i64 4, !44, i64 256, i64 4, !44, i64 260, i64 4, !44, i64 264, i64 2, !77, i64 266, i64 2, !77, i64 268, i64 2, !77, i64 270, i64 2, !77, i64 272, i64 4, !44, i64 276, i64 4, !44, i64 280, i64 4, !44, i64 284, i64 4, !44, i64 288, i64 2, !77, i64 290, i64 2, !77, i64 292, i64 2, !77, i64 294, i64 2, !77, i64 296, i64 4, !44, i64 300, i64 4, !44, i64 304, i64 4, !44, i64 308, i64 4, !44, i64 312, i64 4, !44, i64 316, i64 4, !44, i64 320, i64 4, !44, i64 324, i64 2, !77, i64 326, i64 2, !77, i64 328, i64 2, !77, i64 330, i64 2, !77, i64 332, i64 2, !77, i64 334, i64 2, !77, i64 336, i64 8, !47, i64 344, i64 8, !47, i64 352, i64 8, !47, i64 360, i64 144, !76, i64 504, i64 2, !77, i64 506, i64 2, !77, i64 508, i64 4, !76, i64 512, i64 8, !47, i64 520, i64 8, !47}
!76 = !{!37, !37, i64 0}
!77 = !{!40, !40, i64 0}
!78 = !{!41, !41, i64 0}
!79 = !{!80, !36, i64 16}
!80 = !{!"MTex", !40, i64 0, !40, i64 2, !40, i64 4, !40, i64 6, !36, i64 8, !36, i64 16, !37, i64 24, !37, i64 88, !37, i64 89, !37, i64 90, !37, i64 91, !37, i64 92, !37, i64 104, !39, i64 116, !40, i64 120, !40, i64 122, !40, i64 124, !40, i64 126, !40, i64 128, !40, i64 130, !37, i64 132, !37, i64 133, !39, i64 140, !39, i64 144, !39, i64 148, !39, i64 152, !39, i64 156, !39, i64 160, !39, i64 164, !39, i64 168, !39, i64 172, !39, i64 176, !39, i64 180, !39, i64 184, !39, i64 188, !39, i64 192, !39, i64 196, !39, i64 200, !39, i64 204, !39, i64 208, !39, i64 212, !39, i64 216, !39, i64 220, !39, i64 224, !39, i64 228, !39, i64 232, !39, i64 236, !39, i64 240, !39, i64 244, !39, i64 248, !39, i64 252, !39, i64 256, !39, i64 260, !39, i64 264, !39, i64 268, !39, i64 272, !39, i64 276, !39, i64 280, !39, i64 284, !39, i64 288, !39, i64 292, !39, i64 296, !39, i64 300, !39, i64 304, !39, i64 308}
!81 = !{!49, !40, i64 5288}
!82 = distinct !{!82, !83}
!83 = !{!"llvm.loop.mustprogress"}
!84 = !{!49, !40, i64 98}
!85 = !{!49, !40, i64 5378}
!86 = distinct !{!86, !83}
!87 = !{!49, !41, i64 1624}
!88 = !{!49, !40, i64 5418}
!89 = !{!49, !40, i64 5290}
!90 = !{!49, !39, i64 5268}
!91 = !{!49, !39, i64 544}
!92 = !{!49, !39, i64 5308}
!93 = !{!49, !39, i64 548}
!94 = !{!49, !39, i64 5312}
!95 = !{!49, !39, i64 5304}
!96 = !{!49, !39, i64 5264}
!97 = !{!49, !39, i64 5272}
!98 = !{!49, !39, i64 5276}
!99 = !{!"convertblender.c:copy_v3_v3"}
!100 = !{!"convertblender.c:normalize_v3"}
!101 = !{!49, !40, i64 6100}
!102 = !{!103, !41, i64 2100}
!103 = !{!"Global", !36, i64 0, !37, i64 8, !37, i64 1032, !37, i64 2056, !37, i64 2057, !37, i64 2058, !50, i64 2064, !37, i64 2080, !37, i64 2081, !37, i64 2082, !40, i64 2084, !40, i64 2086, !40, i64 2088, !37, i64 2090, !40, i64 2092, !41, i64 2096, !41, i64 2100, !37, i64 2104, !41, i64 2108, !41, i64 2112, !37, i64 2116}
!104 = !{!49, !41, i64 1620}
!105 = !{!35, !36, i64 240}
!106 = !{!35, !36, i64 504}
!107 = !{!35, !36, i64 224}
!108 = !{!35, !36, i64 144}
!109 = distinct !{!109, !83}
!110 = !{!49, !36, i64 1088}
!111 = !{!49, !36, i64 5424}
!112 = !{!60, !36, i64 336}
!113 = !{!49, !36, i64 5432}
!114 = !{!60, !36, i64 344}
!115 = !{!49, !36, i64 5832}
!116 = !{!65, !41, i64 796}
!117 = !{!49, !36, i64 5928}
!118 = !{!"convertblender.c:free_mesh_orco_hash"}
!119 = !{!49, !36, i64 5840}
!120 = !{!"convertblender.c:free_camera_inside_volumes"}
!121 = !{!49, !41, i64 5624}
!122 = !{!49, !37, i64 104}
!123 = !{!49, !36, i64 6128}
!124 = !{!65, !41, i64 680}
!125 = !{!49, !41, i64 6064}
!126 = !{!49, !40, i64 6098}
!127 = !{!49, !36, i64 6232}
!128 = !{!49, !40, i64 5416}
!129 = !{!49, !36, i64 6048}
!130 = !{!49, !36, i64 6056}
!131 = distinct !{!131, !83}
!132 = !{!49, !41, i64 5736}
!133 = !{!49, !41, i64 6084}
!134 = !{!49, !36, i64 6000}
!135 = !{!49, !36, i64 6008}
!136 = !{!"convertblender.c:database_init_objects"}
!137 = !{!138, !40, i64 948}
!138 = !{!"Object", !61, i64 0, !36, i64 120, !36, i64 128, !40, i64 136, !40, i64 138, !41, i64 140, !41, i64 144, !41, i64 148, !37, i64 152, !36, i64 216, !36, i64 224, !36, i64 232, !36, i64 240, !36, i64 248, !36, i64 256, !36, i64 264, !36, i64 272, !36, i64 280, !36, i64 288, !36, i64 296, !36, i64 304, !139, i64 312, !36, i64 360, !50, i64 368, !50, i64 384, !50, i64 400, !50, i64 416, !41, i64 432, !41, i64 436, !36, i64 440, !36, i64 448, !41, i64 456, !41, i64 460, !37, i64 464, !37, i64 476, !37, i64 488, !37, i64 500, !37, i64 512, !37, i64 524, !37, i64 536, !37, i64 548, !37, i64 560, !37, i64 576, !37, i64 592, !37, i64 604, !39, i64 616, !39, i64 620, !37, i64 624, !37, i64 688, !37, i64 752, !37, i64 816, !37, i64 880, !41, i64 944, !40, i64 948, !40, i64 950, !40, i64 952, !40, i64 954, !40, i64 956, !40, i64 958, !40, i64 960, !40, i64 962, !40, i64 964, !37, i64 966, !37, i64 967, !41, i64 968, !41, i64 972, !41, i64 976, !41, i64 980, !41, i64 984, !39, i64 988, !39, i64 992, !39, i64 996, !39, i64 1000, !39, i64 1004, !39, i64 1008, !39, i64 1012, !39, i64 1016, !39, i64 1020, !39, i64 1024, !39, i64 1028, !39, i64 1032, !40, i64 1036, !40, i64 1038, !40, i64 1040, !37, i64 1042, !37, i64 1043, !40, i64 1044, !37, i64 1046, !37, i64 1047, !39, i64 1048, !39, i64 1052, !50, i64 1056, !50, i64 1072, !50, i64 1088, !50, i64 1104, !39, i64 1120, !40, i64 1124, !40, i64 1126, !37, i64 1128, !41, i64 1144, !41, i64 1148, !36, i64 1152, !37, i64 1160, !37, i64 1161, !40, i64 1162, !37, i64 1164, !50, i64 1176, !50, i64 1192, !50, i64 1208, !50, i64 1224, !36, i64 1240, !36, i64 1248, !36, i64 1256, !37, i64 1264, !37, i64 1265, !40, i64 1266, !39, i64 1268, !36, i64 1272, !36, i64 1280, !36, i64 1288, !36, i64 1296, !73, i64 1304, !73, i64 1312, !41, i64 1320, !41, i64 1324, !50, i64 1328, !50, i64 1344, !36, i64 1360, !36, i64 1368, !36, i64 1376, !37, i64 1384, !36, i64 1392, !50, i64 1400, !36, i64 1416}
!139 = !{!"bAnimVizSettings", !41, i64 0, !41, i64 4, !41, i64 8, !41, i64 12, !40, i64 16, !40, i64 18, !40, i64 20, !40, i64 22, !40, i64 24, !40, i64 26, !40, i64 28, !40, i64 30, !41, i64 32, !41, i64 36, !41, i64 40, !41, i64 44}
!140 = !{!138, !40, i64 952}
!141 = distinct !{!141, !83}
!142 = !{!143, !36, i64 32}
!143 = !{!"Base", !36, i64 0, !36, i64 8, !41, i64 16, !41, i64 20, !41, i64 24, !40, i64 28, !40, i64 30, !36, i64 32}
!144 = !{i8 0, i8 2}
!145 = !{i32 0, i32 2}
!146 = !{!143, !41, i64 16}
!147 = !{!138, !40, i64 136}
!148 = !{!149, !36, i64 8}
!149 = !{!"DupliApplyData", !41, i64 0, !36, i64 8}
!150 = !{!151, !36, i64 16}
!151 = !{!"DupliObject", !36, i64 0, !36, i64 8, !36, i64 16, !37, i64 24, !37, i64 88, !37, i64 100, !40, i64 108, !37, i64 110, !37, i64 111, !37, i64 112, !36, i64 144}
!152 = !{!151, !37, i64 110}
!153 = !{!151, !40, i64 108}
!154 = !{!138, !41, i64 944}
!155 = distinct !{!155, !83}
!156 = distinct !{!156, !83}
!157 = distinct !{!157, !83}
!158 = distinct !{!158, !83}
!159 = !{!"convertblender.c:set_material_lightgroups"}
!160 = !{!161, !40, i64 98}
!161 = !{!"Group", !61, i64 0, !50, i64 120, !41, i64 136, !37, i64 140}
!162 = distinct !{!162, !83}
!163 = !{!164, !36, i64 784}
!164 = !{!"Material", !61, i64 0, !36, i64 120, !40, i64 128, !40, i64 130, !39, i64 132, !39, i64 136, !39, i64 140, !39, i64 144, !39, i64 148, !39, i64 152, !39, i64 156, !39, i64 160, !39, i64 164, !39, i64 168, !39, i64 172, !39, i64 176, !39, i64 180, !39, i64 184, !39, i64 188, !39, i64 192, !39, i64 196, !39, i64 200, !39, i64 204, !39, i64 208, !39, i64 212, !39, i64 216, !39, i64 220, !165, i64 224, !166, i64 312, !39, i64 328, !39, i64 332, !39, i64 336, !39, i64 340, !39, i64 344, !39, i64 348, !39, i64 352, !40, i64 356, !40, i64 358, !40, i64 360, !37, i64 362, !37, i64 363, !39, i64 364, !39, i64 368, !40, i64 372, !40, i64 374, !39, i64 376, !39, i64 380, !39, i64 384, !39, i64 388, !40, i64 392, !40, i64 394, !41, i64 396, !41, i64 400, !41, i64 404, !41, i64 408, !40, i64 412, !40, i64 414, !40, i64 416, !40, i64 418, !39, i64 420, !39, i64 424, !39, i64 428, !39, i64 432, !39, i64 436, !39, i64 440, !39, i64 444, !39, i64 448, !39, i64 452, !39, i64 456, !37, i64 460, !39, i64 524, !39, i64 528, !39, i64 532, !41, i64 536, !37, i64 540, !37, i64 541, !37, i64 542, !37, i64 543, !40, i64 544, !40, i64 546, !40, i64 548, !37, i64 550, !37, i64 551, !40, i64 552, !40, i64 554, !39, i64 556, !39, i64 560, !37, i64 564, !39, i64 580, !39, i64 584, !40, i64 588, !40, i64 590, !36, i64 592, !36, i64 600, !37, i64 608, !37, i64 609, !37, i64 610, !37, i64 611, !40, i64 612, !40, i64 614, !39, i64 616, !39, i64 620, !37, i64 624, !36, i64 768, !36, i64 776, !36, i64 784, !36, i64 792, !39, i64 800, !39, i64 804, !39, i64 808, !39, i64 812, !39, i64 816, !40, i64 820, !40, i64 822, !37, i64 824, !37, i64 836, !39, i64 848, !39, i64 852, !39, i64 856, !39, i64 860, !39, i64 864, !39, i64 868, !39, i64 872, !40, i64 876, !40, i64 878, !41, i64 880, !40, i64 884, !40, i64 886, !37, i64 888, !40, i64 904, !40, i64 906, !40, i64 908, !40, i64 910, !40, i64 912, !37, i64 914, !36, i64 920, !50, i64 928}
!165 = !{!"VolumeSettings", !39, i64 0, !39, i64 4, !39, i64 8, !39, i64 12, !37, i64 16, !37, i64 28, !37, i64 40, !39, i64 52, !39, i64 56, !39, i64 60, !40, i64 64, !40, i64 66, !40, i64 68, !40, i64 70, !39, i64 72, !39, i64 76, !39, i64 80, !39, i64 84}
!166 = !{!"GameSettings", !41, i64 0, !41, i64 4, !41, i64 8, !41, i64 12}
!167 = !{!164, !41, i64 396}
!168 = distinct !{!168, !83}
!169 = !{!"convertblender.c:set_renderlayer_lightgroups"}
!170 = !{!171, !36, i64 88}
!171 = !{!"SceneRenderLayer", !36, i64 0, !36, i64 8, !37, i64 16, !36, i64 80, !36, i64 88, !41, i64 96, !41, i64 100, !41, i64 104, !41, i64 108, !41, i64 112, !41, i64 116, !41, i64 120, !39, i64 124, !172, i64 128}
!172 = !{!"FreestyleConfig", !50, i64 0, !41, i64 16, !41, i64 20, !41, i64 24, !39, i64 28, !39, i64 32, !39, i64 36, !50, i64 40}
!173 = distinct !{!173, !83}
!174 = !{!49, !41, i64 5728}
!175 = !{!"convertblender.c:sort_halos"}
!176 = !{!49, !36, i64 5744}
!177 = distinct !{!177, !83}
!178 = !{!179, !41, i64 92}
!179 = !{!"ObjectRen", !36, i64 0, !36, i64 8, !36, i64 16, !36, i64 24, !36, i64 32, !41, i64 40, !41, i64 44, !41, i64 48, !41, i64 52, !37, i64 56, !41, i64 80, !41, i64 84, !41, i64 88, !41, i64 92, !41, i64 96, !41, i64 100, !41, i64 104, !41, i64 108, !36, i64 112, !36, i64 120, !36, i64 128, !36, i64 136, !36, i64 144, !36, i64 152, !36, i64 160, !41, i64 168, !41, i64 172, !41, i64 176, !37, i64 180, !36, i64 248, !36, i64 256, !36, i64 264, !36, i64 272}
!180 = !{!179, !36, i64 136}
!181 = distinct !{!181, !83}
!182 = !{!"convertblender.c:init_camera_inside_volumes"}
!183 = distinct !{!183, !83}
!184 = !{!185, !36, i64 16}
!185 = !{!"ObjectInstanceRen", !36, i64 0, !36, i64 8, !36, i64 16, !36, i64 24, !36, i64 32, !41, i64 40, !41, i64 44, !41, i64 48, !37, i64 52, !37, i64 116, !37, i64 180, !40, i64 216, !37, i64 220, !37, i64 232, !36, i64 240, !36, i64 248, !36, i64 256, !41, i64 264, !36, i64 272, !41, i64 280}
!186 = !{!187, !36, i64 24}
!187 = !{!"VolumeOb", !36, i64 0, !36, i64 8, !36, i64 16, !36, i64 24}
!188 = !{!187, !36, i64 16}
!189 = !{!190, !36, i64 16}
!190 = !{!"MatInside", !36, i64 0, !36, i64 8, !36, i64 16, !36, i64 24}
!191 = !{!190, !36, i64 24}
!192 = distinct !{!192, !83}
!193 = !{i64 0, i64 8, !47, i64 8, i64 8, !47}
!194 = !{!50, !36, i64 0}
!195 = !{!185, !41, i64 48}
!196 = !{!179, !41, i64 80}
!197 = !{!185, !41, i64 264}
!198 = !{!185, !36, i64 24}
!199 = !{!185, !36, i64 32}
!200 = !{!185, !41, i64 40}
!201 = !{!185, !41, i64 44}
!202 = distinct !{!202, !83}
!203 = !{!204, !36, i64 112}
!204 = !{!"FluidsimModifierData", !205, i64 0, !36, i64 112, !36, i64 120}
!205 = !{!"ModifierData", !36, i64 0, !36, i64 8, !41, i64 16, !41, i64 20, !41, i64 24, !41, i64 28, !37, i64 32, !36, i64 96, !36, i64 104}
!206 = !{!207, !40, i64 16}
!207 = !{!"FluidsimSettings", !36, i64 0, !41, i64 8, !41, i64 12, !40, i64 16, !40, i64 18, !40, i64 20, !40, i64 22, !39, i64 24, !40, i64 28, !40, i64 30, !39, i64 32, !40, i64 36, !40, i64 38, !37, i64 40, !39, i64 52, !39, i64 56, !41, i64 60, !41, i64 64, !41, i64 68, !41, i64 72, !39, i64 76, !41, i64 80, !39, i64 84, !39, i64 88, !39, i64 92, !36, i64 96, !36, i64 104, !37, i64 112, !37, i64 1136, !37, i64 1148, !36, i64 1160, !40, i64 1168, !37, i64 1170, !37, i64 1171, !39, i64 1172, !41, i64 1176, !39, i64 1180, !39, i64 1184, !41, i64 1188, !41, i64 1192, !39, i64 1196, !39, i64 1200, !39, i64 1204, !36, i64 1208, !41, i64 1216, !39, i64 1220, !39, i64 1224, !39, i64 1228, !39, i64 1232, !39, i64 1236, !39, i64 1240, !39, i64 1244, !41, i64 1248, !39, i64 1252}
!208 = !{!185, !36, i64 256}
!209 = !{!185, !36, i64 0}
!210 = distinct !{!210, !83}
!211 = distinct !{!211, !83}
!212 = !{!213, !36, i64 336}
!213 = !{!"StrandSurface", !36, i64 0, !36, i64 8, !179, i64 16, !36, i64 296, !36, i64 304, !36, i64 312, !36, i64 320, !36, i64 328, !36, i64 336, !36, i64 344, !41, i64 352, !41, i64 356}
!214 = !{!213, !36, i64 344}
!215 = distinct !{!215, !83}
!216 = !{!"convertblender.c:speedvector_project"}
!217 = !{!49, !41, i64 148}
!218 = !{!49, !41, i64 152}
!219 = !{!"convertblender.c:database_fromscene_vectors"}
!220 = !{!"convertblender.c:copy_dbase_object_vectors"}
!221 = !{!185, !40, i64 216}
!222 = !{!179, !36, i64 112}
!223 = !{!224, !36, i64 0}
!224 = !{!"VertTableNode", !36, i64 0, !36, i64 8, !36, i64 16, !36, i64 24, !36, i64 32, !36, i64 40, !36, i64 48}
!225 = distinct !{!225, !83}
!226 = distinct !{!226, !83}
!227 = !{!"convertblender.c:get_vector_renderlayers"}
!228 = !{!171, !41, i64 112}
!229 = !{!171, !41, i64 96}
!230 = distinct !{!230, !83}
!231 = !{!"convertblender.c:load_fluidsimspeedvectors"}
!232 = !{!179, !36, i64 16}
!233 = !{!207, !36, i64 1208}
!234 = !{!207, !41, i64 1216}
!235 = distinct !{!235, !83}
!236 = distinct !{!236, !83}
!237 = distinct !{!237, !83}
!238 = distinct !{!238, !83}
!239 = !{!"convertblender.c:calculate_speedvectors"}
!240 = distinct !{!240, !83}
!241 = !{!179, !36, i64 128}
!242 = !{!179, !36, i64 144}
!243 = !{!244, !36, i64 56}
!244 = !{!"StrandBuffer", !36, i64 0, !36, i64 8, !36, i64 16, !36, i64 24, !41, i64 32, !41, i64 36, !36, i64 40, !36, i64 48, !36, i64 56, !41, i64 64, !41, i64 68, !41, i64 72, !41, i64 76, !39, i64 80, !39, i64 84, !39, i64 88, !39, i64 92, !37, i64 96, !41, i64 160, !41, i64 164}
!245 = !{!179, !41, i64 88}
!246 = !{!247, !36, i64 0}
!247 = !{!"StrandTableNode", !36, i64 0, !36, i64 8, !36, i64 16, !36, i64 24, !36, i64 32, !36, i64 40, !36, i64 48, !41, i64 56, !41, i64 60}
!248 = !{!213, !41, i64 356}
!249 = !{!213, !36, i64 296}
!250 = !{!213, !36, i64 304}
!251 = !{!252, !36, i64 0}
!252 = !{!"StrandRen", !36, i64 0, !36, i64 8, !41, i64 16, !41, i64 20, !41, i64 24, !41, i64 28, !37, i64 32}
!253 = distinct !{!253, !83}
!254 = !{!"convertblender.c:free_dbase_object_vectors"}
!255 = distinct !{!255, !83}
!256 = !{i64 0, i64 1, !76, i64 1, i64 1, !76, i64 2, i64 1, !76, i64 3, i64 1, !76, i64 4, i64 1, !76, i64 5, i64 1, !76, i64 6, i64 1, !76, i64 7, i64 1, !76, i64 8, i64 2, !77, i64 10, i64 2, !77, i64 12, i64 4, !44, i64 16, i64 1, !76, i64 17, i64 1, !76, i64 18, i64 6, !76, i64 24, i64 4, !78, i64 28, i64 4, !78, i64 32, i64 64, !76, i64 96, i64 64, !76, i64 160, i64 4, !44, i64 164, i64 4, !44, i64 168, i64 8, !47, i64 176, i64 8, !47, i64 184, i64 64, !76, i64 248, i64 8, !47, i64 256, i64 8, !47, i64 264, i64 4, !78, i64 268, i64 4, !78, i64 272, i64 4, !78, i64 276, i64 4, !78, i64 280, i64 4, !78, i64 284, i64 4, !78, i64 288, i64 4, !78, i64 292, i64 4, !78, i64 296, i64 4, !78, i64 300, i64 4, !78, i64 304, i64 4, !78, i64 308, i64 4, !78, i64 312, i64 2, !77, i64 314, i64 2, !77, i64 316, i64 4, !78, i64 320, i64 4, !78, i64 324, i64 4, !78, i64 328, i64 4, !78, i64 332, i64 4, !78, i64 336, i64 4, !78, i64 340, i64 4, !78, i64 344, i64 4, !78, i64 348, i64 4, !78, i64 352, i64 4, !78, i64 356, i64 4, !78, i64 360, i64 4, !44, i64 364, i64 4, !78, i64 368, i64 4, !78, i64 372, i64 4, !78, i64 376, i64 4, !78, i64 380, i64 4, !78, i64 384, i64 4, !78, i64 388, i64 4, !78, i64 392, i64 8, !47, i64 400, i64 4, !78, i64 404, i64 4, !78, i64 408, i64 4, !78, i64 412, i64 4, !44, i64 416, i64 4, !78, i64 420, i64 4, !78, i64 424, i64 4, !78, i64 428, i64 4, !78, i64 432, i64 2, !77, i64 434, i64 2, !77, i64 436, i64 4, !44, i64 440, i64 4, !44, i64 444, i64 4, !44, i64 448, i64 4, !44, i64 452, i64 4, !44, i64 456, i64 2, !77, i64 458, i64 2, !77, i64 460, i64 2, !77, i64 462, i64 2, !77, i64 464, i64 2, !77, i64 466, i64 2, !77, i64 468, i64 4, !78, i64 472, i64 2, !77, i64 474, i64 2, !77, i64 476, i64 2, !77, i64 478, i64 2, !77, i64 480, i64 2, !77, i64 482, i64 2, !77, i64 484, i64 4, !78, i64 488, i64 4, !78, i64 492, i64 2, !77, i64 494, i64 2, !77, i64 496, i64 4, !78, i64 500, i64 4, !78, i64 504, i64 2, !77, i64 506, i64 2, !77, i64 508, i64 2, !77, i64 510, i64 2, !77, i64 512, i64 2, !77, i64 514, i64 1, !76, i64 515, i64 1, !76, i64 516, i64 4, !78, i64 520, i64 4, !78, i64 524, i64 4, !78, i64 528, i64 2, !77, i64 530, i64 2, !77, i64 532, i64 2, !77, i64 534, i64 2, !77, i64 536, i64 2, !77, i64 538, i64 2, !77, i64 540, i64 2, !77, i64 542, i64 2, !77, i64 544, i64 4, !44, i64 548, i64 4, !44, i64 552, i64 4, !44, i64 556, i64 4, !44, i64 560, i64 4, !44, i64 564, i64 4, !44, i64 568, i64 4, !44, i64 572, i64 4, !44, i64 576, i64 4, !78, i64 580, i64 4, !78, i64 584, i64 4, !78, i64 588, i64 4, !78, i64 592, i64 8, !47, i64 600, i64 8, !47, i64 608, i64 2, !77, i64 610, i64 2, !77, i64 612, i64 4, !44, i64 616, i64 4, !44, i64 620, i64 4, !44, i64 624, i64 4, !44, i64 628, i64 4, !78, i64 632, i64 4, !44, i64 636, i64 4, !44, i64 640, i64 4, !44, i64 644, i64 4, !44, i64 648, i64 2, !77, i64 650, i64 2, !77, i64 652, i64 2, !77, i64 654, i64 2, !77, i64 656, i64 2, !77, i64 658, i64 2, !77, i64 660, i64 4, !44, i64 664, i64 4, !44, i64 668, i64 2, !77, i64 670, i64 2, !77, i64 672, i64 4, !44, i64 676, i64 4, !44, i64 680, i64 1024, !76, i64 1704, i64 4, !78, i64 1708, i64 2, !77, i64 1710, i64 2, !77, i64 1712, i64 768, !76, i64 2480, i64 16, !76, i64 2496, i64 16, !76, i64 2512, i64 1, !76, i64 2513, i64 1, !76, i64 2514, i64 1, !76, i64 2515, i64 5, !76, i64 2520, i64 4, !78, i64 2524, i64 2, !77, i64 2526, i64 2, !77, i64 2528, i64 4, !44, i64 2532, i64 4, !44, i64 2536, i64 2, !77, i64 2538, i64 2, !77, i64 2540, i64 4, !44, i64 2544, i64 2, !77, i64 2546, i64 2, !77, i64 2548, i64 4, !78, i64 2552, i64 2, !77, i64 2554, i64 2, !77, i64 2556, i64 2, !77, i64 2558, i64 2, !77, i64 2560, i64 4, !44, i64 2564, i64 4, !44, i64 2568, i64 8, !47, i64 2576, i64 4, !78, i64 2580, i64 4, !44, i64 2584, i64 32, !76, i64 2616, i64 1, !76, i64 2617, i64 1, !76, i64 2618, i64 1, !76, i64 2619, i64 1, !76, i64 2620, i64 1, !76, i64 2621, i64 1, !76, i64 2622, i64 1, !76, i64 2623, i64 1, !76, i64 2624, i64 2, !77, i64 2626, i64 2, !77, i64 2628, i64 4, !44, i64 2632, i64 1, !76, i64 2633, i64 1, !76, i64 2634, i64 6, !76, i64 2640, i64 4, !78, i64 2644, i64 4, !78, i64 2648, i64 64, !76, i64 2712, i64 64, !76, i64 2776, i64 4, !44, i64 2780, i64 4, !44, i64 2784, i64 8, !47, i64 2792, i64 8, !47, i64 2800, i64 64, !76, i64 2864, i64 1024, !76, i64 3888, i64 2, !77, i64 3890, i64 2, !77, i64 3892, i64 2, !77, i64 3894, i64 2, !77, i64 3896, i64 4, !44, i64 3900, i64 4, !44, i64 3904, i64 3, !76, i64 3907, i64 1, !76, i64 3908, i64 1, !76, i64 3909, i64 3, !76, i64 3912, i64 64, !76, i64 3976, i64 4, !78, i64 3980, i64 4, !78}
!257 = !{!49, !40, i64 96}
!258 = !{!49, !36, i64 5888}
!259 = !{!49, !40, i64 1760}
!260 = !{!"convertblender.c:normalize_v3_v3"}
!261 = !{!"convertblender.c:dot_v3v3"}
!262 = !{!"convertblender.c:mul_v3_v3fl"}
!263 = !{!"convertblender.c:zero_v3"}
!264 = !{!"convertblender.c:set_dupli_tex_mat"}
!265 = !{!164, !40, i64 588}
!266 = distinct !{!266, !83}
!267 = !{!185, !36, i64 240}
!268 = !{!"convertblender.c:is_object_restricted"}
!269 = !{!138, !37, i64 1160}
!270 = !{!"convertblender.c:allow_render_object"}
!271 = !{!138, !36, i64 1224}
!272 = !{!"convertblender.c:init_render_object"}
!273 = !{!63, !63, i64 0}
!274 = !{!"convertblender.c:dupli_render_particle_set"}
!275 = !{!276, !36, i64 16}
!276 = !{!"ParticleSystem", !36, i64 0, !36, i64 8, !36, i64 16, !36, i64 24, !36, i64 32, !36, i64 40, !36, i64 48, !36, i64 56, !36, i64 64, !50, i64 72, !50, i64 88, !36, i64 104, !36, i64 112, !36, i64 120, !36, i64 128, !36, i64 136, !36, i64 144, !50, i64 152, !37, i64 168, !37, i64 232, !39, i64 296, !39, i64 300, !39, i64 304, !41, i64 308, !41, i64 312, !41, i64 316, !41, i64 320, !41, i64 324, !41, i64 328, !41, i64 332, !41, i64 336, !40, i64 340, !40, i64 342, !40, i64 344, !40, i64 346, !37, i64 348, !37, i64 540, !40, i64 564, !40, i64 566, !36, i64 568, !36, i64 576, !50, i64 584, !36, i64 600, !36, i64 608, !41, i64 616, !41, i64 620, !36, i64 624, !36, i64 632, !36, i64 640, !39, i64 648, !39, i64 652}
!277 = !{!278, !40, i64 192}
!278 = !{!"ParticleSettings", !61, i64 0, !36, i64 120, !36, i64 128, !36, i64 136, !36, i64 144, !41, i64 152, !41, i64 156, !40, i64 160, !40, i64 162, !40, i64 164, !40, i64 166, !40, i64 168, !40, i64 170, !40, i64 172, !40, i64 174, !41, i64 176, !41, i64 180, !40, i64 184, !40, i64 186, !40, i64 188, !40, i64 190, !40, i64 192, !40, i64 194, !40, i64 196, !40, i64 198, !40, i64 200, !40, i64 202, !40, i64 204, !40, i64 206, !40, i64 208, !40, i64 210, !40, i64 212, !40, i64 214, !40, i64 216, !40, i64 218, !40, i64 220, !40, i64 222, !40, i64 224, !40, i64 226, !40, i64 228, !40, i64 230, !39, i64 232, !39, i64 236, !37, i64 240, !37, i64 248, !39, i64 256, !39, i64 260, !39, i64 264, !40, i64 268, !40, i64 270, !39, i64 272, !39, i64 276, !39, i64 280, !39, i64 284, !39, i64 288, !39, i64 292, !39, i64 296, !39, i64 300, !39, i64 304, !39, i64 308, !39, i64 312, !39, i64 316, !37, i64 320, !41, i64 324, !41, i64 328, !41, i64 332, !41, i64 336, !40, i64 340, !37, i64 342, !39, i64 348, !39, i64 352, !39, i64 356, !39, i64 360, !39, i64 364, !39, i64 368, !39, i64 372, !37, i64 376, !39, i64 388, !39, i64 392, !39, i64 396, !39, i64 400, !39, i64 404, !39, i64 408, !39, i64 412, !37, i64 416, !39, i64 428, !39, i64 432, !39, i64 436, !39, i64 440, !41, i64 444, !41, i64 448, !39, i64 452, !39, i64 456, !39, i64 460, !39, i64 464, !39, i64 468, !39, i64 472, !39, i64 476, !39, i64 480, !39, i64 484, !39, i64 488, !39, i64 492, !39, i64 496, !39, i64 500, !39, i64 504, !39, i64 508, !39, i64 512, !39, i64 516, !39, i64 520, !39, i64 524, !39, i64 528, !39, i64 532, !39, i64 536, !39, i64 540, !39, i64 544, !39, i64 548, !37, i64 552, !39, i64 560, !39, i64 564, !41, i64 568, !41, i64 572, !37, i64 576, !36, i64 720, !50, i64 728, !36, i64 744, !36, i64 752, !36, i64 760, !36, i64 768, !36, i64 776, !36, i64 784, !40, i64 792, !37, i64 794}
!279 = distinct !{!279, !83}
!280 = !{!73, !73, i64 0}
!281 = !{!282, !36, i64 1680}
!282 = !{!"DerivedMesh", !283, i64 0, !283, i64 200, !283, i64 400, !283, i64 600, !283, i64 800, !41, i64 1000, !41, i64 1004, !41, i64 1008, !41, i64 1012, !41, i64 1016, !41, i64 1020, !41, i64 1024, !36, i64 1032, !36, i64 1040, !41, i64 1048, !39, i64 1052, !41, i64 1056, !41, i64 1060, !36, i64 1064, !37, i64 1072, !36, i64 1080, !36, i64 1088, !36, i64 1096, !36, i64 1104, !36, i64 1112, !36, i64 1120, !36, i64 1128, !36, i64 1136, !36, i64 1144, !36, i64 1152, !36, i64 1160, !36, i64 1168, !36, i64 1176, !36, i64 1184, !36, i64 1192, !36, i64 1200, !36, i64 1208, !36, i64 1216, !36, i64 1224, !36, i64 1232, !36, i64 1240, !36, i64 1248, !36, i64 1256, !36, i64 1264, !36, i64 1272, !36, i64 1280, !36, i64 1288, !36, i64 1296, !36, i64 1304, !36, i64 1312, !36, i64 1320, !36, i64 1328, !36, i64 1336, !36, i64 1344, !36, i64 1352, !36, i64 1360, !36, i64 1368, !36, i64 1376, !36, i64 1384, !36, i64 1392, !36, i64 1400, !36, i64 1408, !36, i64 1416, !36, i64 1424, !36, i64 1432, !36, i64 1440, !36, i64 1448, !36, i64 1456, !36, i64 1464, !36, i64 1472, !36, i64 1480, !36, i64 1488, !36, i64 1496, !36, i64 1504, !36, i64 1512, !36, i64 1520, !36, i64 1528, !36, i64 1536, !36, i64 1544, !36, i64 1552, !36, i64 1560, !36, i64 1568, !36, i64 1576, !36, i64 1584, !36, i64 1592, !36, i64 1600, !36, i64 1608, !36, i64 1616, !36, i64 1624, !36, i64 1632, !36, i64 1640, !36, i64 1648, !36, i64 1656, !36, i64 1664, !36, i64 1672, !36, i64 1680}
!283 = !{!"CustomData", !36, i64 0, !37, i64 8, !41, i64 172, !41, i64 176, !41, i64 180, !36, i64 184, !36, i64 192}
!284 = !{!285, !40, i64 140}
!285 = !{!"ParticleSystemModifierData", !205, i64 0, !36, i64 112, !36, i64 120, !41, i64 128, !41, i64 132, !41, i64 136, !40, i64 140, !40, i64 142}
!286 = distinct !{!286, !83}
!287 = !{!138, !36, i64 1256}
!288 = !{!289, !36, i64 16}
!289 = !{!"GroupObject", !36, i64 0, !36, i64 8, !36, i64 16, !36, i64 24, !40, i64 32, !37, i64 34}
!290 = distinct !{!290, !83}
!291 = !{!"convertblender.c:is_object_hidden"}
!292 = !{!138, !37, i64 1046}
!293 = !{!"convertblender.c:allow_render_dupli_instance"}
!294 = !{!164, !40, i64 128}
!295 = distinct !{!295, !83}
!296 = distinct !{!296, !83}
!297 = !{!151, !37, i64 111}
!298 = !{!"convertblender.c:find_dupligroup_dupli"}
!299 = !{!179, !41, i64 44}
!300 = !{!179, !41, i64 48}
!301 = distinct !{!301, !83}
!302 = !{!"convertblender.c:assign_dupligroup_dupli"}
!303 = !{!"convertblender.c:find_dupli_instances"}
!304 = distinct !{!304, !83}
!305 = !{!"convertblender.c:add_group_render_dupli_obs"}
!306 = distinct !{!306, !83}
!307 = !{!"convertblender.c:copy_v2_v2"}
!308 = !{!"convertblender.c:add_render_lamp"}
!309 = !{!138, !36, i64 296}
!310 = !{!311, !41, i64 132}
!311 = !{!"Lamp", !61, i64 0, !36, i64 120, !40, i64 128, !40, i64 130, !41, i64 132, !40, i64 136, !40, i64 138, !39, i64 140, !39, i64 144, !39, i64 148, !39, i64 152, !39, i64 156, !39, i64 160, !39, i64 164, !39, i64 168, !39, i64 172, !39, i64 176, !39, i64 180, !39, i64 184, !39, i64 188, !39, i64 192, !39, i64 196, !36, i64 200, !40, i64 208, !40, i64 210, !39, i64 212, !39, i64 216, !39, i64 220, !39, i64 224, !39, i64 228, !39, i64 232, !39, i64 236, !40, i64 240, !40, i64 242, !40, i64 244, !40, i64 246, !37, i64 248, !37, i64 249, !40, i64 250, !40, i64 252, !40, i64 254, !40, i64 256, !40, i64 258, !39, i64 260, !39, i64 264, !39, i64 268, !39, i64 272, !40, i64 276, !40, i64 278, !40, i64 280, !40, i64 282, !40, i64 284, !40, i64 286, !39, i64 288, !39, i64 292, !39, i64 296, !39, i64 300, !39, i64 304, !39, i64 308, !39, i64 312, !39, i64 316, !39, i64 320, !39, i64 324, !39, i64 328, !39, i64 332, !39, i64 336, !40, i64 340, !37, i64 342, !36, i64 344, !37, i64 352, !40, i64 496, !40, i64 498, !37, i64 500, !36, i64 504, !36, i64 512}
!312 = !{!289, !36, i64 24}
!313 = !{!311, !40, i64 244}
!314 = !{!35, !40, i64 160}
!315 = !{!311, !37, i64 249}
!316 = !{!35, !40, i64 164}
!317 = !{!311, !40, i64 246}
!318 = !{!35, !40, i64 162}
!319 = !{!311, !39, i64 224}
!320 = !{!35, !39, i64 156}
!321 = !{!311, !40, i64 282}
!322 = !{!35, !40, i64 168}
!323 = !{!311, !39, i64 212}
!324 = !{!311, !39, i64 228}
!325 = !{!311, !40, i64 128}
!326 = !{!35, !40, i64 40}
!327 = !{!35, !41, i64 44}
!328 = !{!311, !39, i64 172}
!329 = !{!35, !39, i64 76}
!330 = !{!311, !39, i64 176}
!331 = !{!311, !39, i64 188}
!332 = !{!35, !39, i64 80}
!333 = !{!35, !39, i64 116}
!334 = !{!311, !39, i64 148}
!335 = !{!35, !39, i64 56}
!336 = !{!311, !40, i64 250}
!337 = !{!35, !40, i64 188}
!338 = !{!311, !40, i64 252}
!339 = !{!35, !40, i64 190}
!340 = !{!311, !40, i64 254}
!341 = !{!35, !40, i64 192}
!342 = !{!311, !39, i64 268}
!343 = !{!35, !39, i64 216}
!344 = !{!311, !40, i64 258}
!345 = !{!35, !40, i64 198}
!346 = !{!311, !40, i64 276}
!347 = !{!35, !40, i64 194}
!348 = !{!311, !40, i64 256}
!349 = !{!35, !40, i64 196}
!350 = !{!311, !39, i64 272}
!351 = !{!35, !39, i64 220}
!352 = !{!311, !40, i64 284}
!353 = !{!354, !40, i64 0}
!354 = !{!"SunSky", !40, i64 0, !40, i64 2, !40, i64 4, !39, i64 8, !39, i64 12, !39, i64 16, !37, i64 20, !39, i64 32, !39, i64 36, !39, i64 40, !39, i64 44, !37, i64 48, !37, i64 68, !37, i64 88, !39, i64 108, !39, i64 112, !39, i64 116, !39, i64 120, !39, i64 124, !39, i64 128, !39, i64 132, !39, i64 136, !39, i64 140, !39, i64 144, !39, i64 148, !39, i64 152, !39, i64 156, !39, i64 160, !37, i64 164, !37, i64 176, !37, i64 188, !37, i64 200, !37, i64 212}
!355 = !{!311, !39, i64 312}
!356 = !{!311, !39, i64 288}
!357 = !{!311, !39, i64 292}
!358 = !{!311, !39, i64 296}
!359 = !{!311, !39, i64 300}
!360 = !{!311, !39, i64 304}
!361 = !{!311, !39, i64 328}
!362 = !{!311, !40, i64 286}
!363 = !{!311, !39, i64 332}
!364 = !{!311, !40, i64 340}
!365 = !{!311, !39, i64 308}
!366 = !{!311, !39, i64 316}
!367 = !{!311, !39, i64 320}
!368 = !{!311, !39, i64 324}
!369 = !{!311, !39, i64 180}
!370 = !{!35, !39, i64 88}
!371 = !{!311, !39, i64 184}
!372 = !{!35, !39, i64 92}
!373 = !{!35, !41, i64 84}
!374 = !{!311, !40, i64 208}
!375 = !{!35, !40, i64 132}
!376 = !{!311, !36, i64 200}
!377 = !{!35, !39, i64 284}
!378 = !{!35, !39, i64 300}
!379 = !{!80, !40, i64 2}
!380 = !{!381, !40, i64 232}
!381 = !{!"Tex", !61, i64 0, !36, i64 120, !39, i64 128, !39, i64 132, !39, i64 136, !39, i64 140, !39, i64 144, !39, i64 148, !39, i64 152, !39, i64 156, !39, i64 160, !39, i64 164, !39, i64 168, !39, i64 172, !39, i64 176, !39, i64 180, !39, i64 184, !39, i64 188, !39, i64 192, !39, i64 196, !39, i64 200, !39, i64 204, !39, i64 208, !39, i64 212, !40, i64 216, !40, i64 218, !40, i64 220, !40, i64 222, !40, i64 224, !40, i64 226, !40, i64 228, !40, i64 230, !40, i64 232, !40, i64 234, !39, i64 236, !39, i64 240, !39, i64 244, !39, i64 248, !41, i64 252, !41, i64 256, !40, i64 260, !40, i64 262, !40, i64 264, !40, i64 266, !41, i64 268, !41, i64 272, !41, i64 276, !41, i64 280, !39, i64 284, !39, i64 288, !39, i64 292, !382, i64 296, !36, i64 336, !36, i64 344, !36, i64 352, !36, i64 360, !36, i64 368, !36, i64 376, !36, i64 384, !36, i64 392, !36, i64 400, !37, i64 408, !37, i64 409}
!382 = !{!"ImageUser", !36, i64 0, !41, i64 8, !41, i64 12, !41, i64 16, !41, i64 20, !37, i64 24, !37, i64 25, !37, i64 26, !37, i64 27, !40, i64 28, !40, i64 30, !40, i64 32, !40, i64 34, !41, i64 36}
!383 = distinct !{!383, !83}
!384 = !{!311, !37, i64 248}
!385 = !{!35, !40, i64 166}
!386 = !{!35, !36, i64 232}
!387 = !{!49, !40, i64 1538}
!388 = !{!49, !40, i64 1642}
!389 = !{!390, !41, i64 0}
!390 = !{!"LampShadowSubSample", !41, i64 0, !37, i64 4}
!391 = distinct !{!391, !83}
!392 = distinct !{!392, !83}
!393 = !{!"convertblender.c:render_object_type"}
!394 = !{!"convertblender.c:add_render_object"}
!395 = !{!278, !41, i64 176}
!396 = !{!276, !36, i64 0}
!397 = distinct !{!397, !83}
!398 = !{!138, !41, i64 456}
!399 = distinct !{!399, !83}
!400 = !{!276, !41, i64 316}
!401 = distinct !{!401, !83}
!402 = !{!"convertblender.c:saacos"}
!403 = !{!"convertblender.c:initshadowbuf"}
!404 = !{!35, !40, i64 152}
!405 = !{!49, !40, i64 1582}
!406 = !{!407, !41, i64 248}
!407 = !{!"ShadBuf", !40, i64 0, !40, i64 2, !40, i64 4, !37, i64 8, !37, i64 72, !37, i64 136, !36, i64 200, !36, i64 208, !39, i64 216, !39, i64 220, !39, i64 224, !39, i64 228, !39, i64 232, !37, i64 236, !41, i64 248, !41, i64 252, !50, i64 256, !37, i64 272}
!408 = !{!35, !40, i64 154}
!409 = !{!407, !40, i64 0}
!410 = !{!407, !39, i64 228}
!411 = !{!407, !40, i64 2}
!412 = !{!35, !39, i64 180}
!413 = !{!407, !41, i64 252}
!414 = !{!35, !39, i64 184}
!415 = !{!407, !39, i64 232}
!416 = !{!"convertblender.c:init_render_object_data"}
!417 = !{!179, !36, i64 8}
!418 = distinct !{!418, !83}
!419 = !{!"convertblender.c:give_render_material"}
!420 = !{!164, !40, i64 130}
!421 = !{!164, !36, i64 768}
!422 = !{!164, !37, i64 543}
!423 = !{!"convertblender.c:add_volume"}
!424 = !{!"convertblender.c:render_new_particle_system"}
!425 = !{!276, !36, i64 24}
!426 = !{!138, !41, i64 432}
!427 = !{!285, !41, i64 20}
!428 = !{!429, !36, i64 0}
!429 = !{!"ParticleSimulationData", !36, i64 0, !36, i64 8, !36, i64 16, !36, i64 24, !36, i64 32, !39, i64 40}
!430 = !{!429, !36, i64 8}
!431 = !{!429, !36, i64 16}
!432 = !{!429, !36, i64 24}
!433 = !{!278, !40, i64 168}
!434 = !{!276, !41, i64 328}
!435 = !{!278, !40, i64 160}
!436 = !{!276, !36, i64 64}
!437 = !{!278, !40, i64 210}
!438 = !{!276, !41, i64 308}
!439 = !{!276, !41, i64 320}
!440 = !{!441, !41, i64 68}
!441 = !{!"ParticleStrandData", !36, i64 0, !36, i64 8, !36, i64 16, !36, i64 24, !39, i64 32, !39, i64 36, !39, i64 40, !39, i64 44, !41, i64 48, !41, i64 52, !41, i64 56, !41, i64 60, !41, i64 64, !41, i64 68}
!442 = !{!278, !40, i64 212}
!443 = !{!164, !39, i64 420}
!444 = !{!164, !37, i64 362}
!445 = !{!285, !36, i64 120}
!446 = !{!441, !41, i64 48}
!447 = !{!441, !41, i64 52}
!448 = !{!441, !36, i64 16}
!449 = !{!441, !36, i64 0}
!450 = !{!278, !40, i64 224}
!451 = !{!452, !40, i64 88}
!452 = !{!"ParticleBillboardData", !36, i64 0, !37, i64 8, !37, i64 20, !37, i64 32, !37, i64 40, !39, i64 48, !39, i64 52, !39, i64 56, !37, i64 60, !41, i64 72, !41, i64 76, !41, i64 80, !41, i64 84, !40, i64 88, !40, i64 90, !40, i64 92, !40, i64 94}
!453 = !{!278, !40, i64 228}
!454 = !{!452, !40, i64 92}
!455 = !{!452, !41, i64 72}
!456 = !{!278, !36, i64 760}
!457 = !{!452, !36, i64 0}
!458 = !{!278, !40, i64 230}
!459 = !{!452, !40, i64 94}
!460 = !{!452, !41, i64 80}
!461 = !{!278, !40, i64 226}
!462 = !{!452, !40, i64 90}
!463 = !{!276, !36, i64 56}
!464 = !{!441, !36, i64 8}
!465 = !{!441, !41, i64 64}
!466 = !{!278, !40, i64 208}
!467 = !{!441, !39, i64 40}
!468 = !{!278, !40, i64 206}
!469 = !{!441, !39, i64 36}
!470 = !{!244, !36, i64 48}
!471 = !{!244, !41, i64 64}
!472 = !{!244, !41, i64 76}
!473 = !{!244, !39, i64 80}
!474 = !{!244, !41, i64 68}
!475 = !{!164, !39, i64 452}
!476 = !{!244, !39, i64 84}
!477 = !{!164, !39, i64 456}
!478 = !{!244, !39, i64 88}
!479 = !{!278, !41, i64 152}
!480 = !{!244, !41, i64 72}
!481 = !{!244, !36, i64 16}
!482 = !{!164, !39, i64 180}
!483 = !{!282, !36, i64 1120}
!484 = !{!282, !36, i64 1336}
!485 = !{!282, !36, i64 1352}
!486 = !{!244, !41, i64 36}
!487 = distinct !{!487, !83}
!488 = !{!244, !36, i64 24}
!489 = !{!490, !41, i64 4}
!490 = !{!"StrandBound", !41, i64 0, !41, i64 4, !37, i64 8}
!491 = !{!490, !41, i64 0}
!492 = !{!276, !36, i64 136}
!493 = !{!494, !40, i64 196}
!494 = !{!"ParticleData", !495, i64 0, !495, i64 56, !36, i64 112, !36, i64 120, !36, i64 128, !41, i64 136, !39, i64 140, !39, i64 144, !39, i64 148, !41, i64 152, !41, i64 156, !37, i64 160, !39, i64 176, !39, i64 180, !39, i64 184, !41, i64 188, !41, i64 192, !40, i64 196, !40, i64 198}
!495 = !{!"ParticleKey", !37, i64 0, !37, i64 12, !37, i64 24, !37, i64 40, !39, i64 52}
!496 = !{!494, !39, i64 140}
!497 = !{!494, !39, i64 144}
!498 = !{!494, !39, i64 148}
!499 = !{!278, !40, i64 162}
!500 = !{!494, !41, i64 152}
!501 = !{!494, !41, i64 156}
!502 = !{!494, !39, i64 176}
!503 = !{!494, !39, i64 180}
!504 = !{!505, !41, i64 56}
!505 = !{!"ParticleCacheKey", !37, i64 0, !37, i64 12, !37, i64 24, !37, i64 40, !39, i64 52, !41, i64 56}
!506 = !{!276, !36, i64 32}
!507 = !{!508, !41, i64 0}
!508 = !{!"ChildParticle", !41, i64 0, !41, i64 4, !37, i64 8, !37, i64 24, !37, i64 40, !39, i64 56, !39, i64 60}
!509 = !{!278, !40, i64 188}
!510 = !{!508, !39, i64 56}
!511 = !{!508, !41, i64 4}
!512 = !{!164, !41, i64 400}
!513 = !{!441, !36, i64 24}
!514 = !{!252, !36, i64 8}
!515 = distinct !{!515, !83}
!516 = distinct !{!516, !83}
!517 = distinct !{!517, !83}
!518 = !{!519, !39, i64 12}
!519 = !{!"StrandVert", !37, i64 0, !39, i64 12}
!520 = !{!252, !41, i64 16}
!521 = !{!441, !39, i64 44}
!522 = !{!441, !41, i64 56}
!523 = !{!441, !39, i64 32}
!524 = distinct !{!524, !83}
!525 = !{!278, !41, i64 568}
!526 = !{!278, !39, i64 564}
!527 = !{!278, !39, i64 440}
!528 = !{!495, !39, i64 52}
!529 = !{!276, !36, i64 144}
!530 = !{!452, !39, i64 52}
!531 = !{!278, !39, i64 256}
!532 = !{!278, !39, i64 260}
!533 = !{!278, !39, i64 232}
!534 = !{!278, !39, i64 236}
!535 = !{!452, !39, i64 48}
!536 = !{!452, !39, i64 56}
!537 = !{!452, !41, i64 76}
!538 = distinct !{!538, !83}
!539 = !{!452, !41, i64 84}
!540 = distinct !{!540, !83}
!541 = !{!"convertblender.c:init_render_curve"}
!542 = !{!543, !36, i64 368}
!543 = !{!"Curve", !61, i64 0, !36, i64 120, !36, i64 128, !50, i64 136, !36, i64 152, !36, i64 160, !36, i64 168, !36, i64 176, !36, i64 184, !36, i64 192, !36, i64 200, !37, i64 208, !37, i64 220, !37, i64 232, !40, i64 244, !40, i64 246, !40, i64 248, !40, i64 250, !39, i64 252, !39, i64 256, !41, i64 260, !40, i64 264, !40, i64 266, !41, i64 268, !39, i64 272, !39, i64 276, !39, i64 280, !40, i64 284, !40, i64 286, !40, i64 288, !40, i64 290, !41, i64 292, !41, i64 296, !37, i64 300, !40, i64 304, !37, i64 306, !37, i64 307, !39, i64 308, !39, i64 312, !39, i64 316, !39, i64 320, !39, i64 324, !39, i64 328, !39, i64 332, !39, i64 336, !39, i64 340, !39, i64 344, !41, i64 348, !41, i64 352, !41, i64 356, !41, i64 360, !41, i64 364, !36, i64 368, !36, i64 376, !37, i64 384, !36, i64 448, !36, i64 456, !36, i64 464, !36, i64 472, !36, i64 480, !41, i64 488, !41, i64 492, !36, i64 496, !544, i64 504, !39, i64 512, !39, i64 516, !39, i64 520, !37, i64 524, !37, i64 525, !37, i64 526}
!544 = !{!"CharInfo", !40, i64 0, !40, i64 2, !37, i64 4, !37, i64 5, !40, i64 6}
!545 = !{!543, !36, i64 136}
!546 = distinct !{!546, !83}
!547 = !{!548, !40, i64 28}
!548 = !{!"DispList", !36, i64 0, !36, i64 8, !40, i64 16, !40, i64 18, !41, i64 20, !41, i64 24, !40, i64 28, !40, i64 30, !36, i64 32, !36, i64 40, !36, i64 48, !41, i64 56, !41, i64 60, !36, i64 64}
!549 = !{!548, !40, i64 16}
!550 = !{!548, !41, i64 24}
!551 = !{!548, !36, i64 32}
!552 = !{!553, !36, i64 24}
!553 = !{!"VertRen", !37, i64 0, !37, i64 12, !36, i64 24, !41, i64 32, !39, i64 36, !41, i64 40}
!554 = distinct !{!554, !83}
!555 = !{!179, !41, i64 84}
!556 = !{!548, !41, i64 20}
!557 = !{!548, !36, i64 48}
!558 = !{!559, !36, i64 0}
!559 = !{!"VlakRen", !36, i64 0, !36, i64 8, !36, i64 16, !36, i64 24, !37, i64 32, !36, i64 48, !37, i64 56, !37, i64 57, !37, i64 58, !41, i64 60}
!560 = !{!559, !36, i64 8}
!561 = !{!559, !36, i64 16}
!562 = !{!559, !36, i64 24}
!563 = !{!559, !36, i64 48}
!564 = !{!559, !37, i64 57}
!565 = !{!559, !37, i64 58}
!566 = distinct !{!566, !83}
!567 = distinct !{!567, !83}
!568 = distinct !{!568, !83}
!569 = !{!548, !40, i64 18}
!570 = distinct !{!570, !83}
!571 = distinct !{!571, !83}
!572 = !{!548, !36, i64 64}
!573 = !{!548, !40, i64 30}
!574 = distinct !{!574, !83}
!575 = distinct !{!575, !83}
!576 = distinct !{!576, !83}
!577 = distinct !{!577, !83}
!578 = distinct !{!578, !83}
!579 = !{!548, !36, i64 0}
!580 = distinct !{!580, !83}
!581 = !{!"convertblender.c:init_render_surf"}
!582 = distinct !{!582, !83}
!583 = !{!138, !36, i64 216}
!584 = distinct !{!584, !83}
!585 = !{!"convertblender.c:init_render_mesh"}
!586 = !{!587, !41, i64 1280}
!587 = !{!"Mesh", !61, i64 0, !36, i64 120, !36, i64 128, !36, i64 136, !36, i64 144, !36, i64 152, !36, i64 160, !36, i64 168, !36, i64 176, !36, i64 184, !36, i64 192, !36, i64 200, !36, i64 208, !36, i64 216, !36, i64 224, !36, i64 232, !36, i64 240, !36, i64 248, !36, i64 256, !36, i64 264, !36, i64 272, !283, i64 280, !283, i64 480, !283, i64 680, !283, i64 880, !283, i64 1080, !41, i64 1280, !41, i64 1284, !41, i64 1288, !41, i64 1292, !41, i64 1296, !41, i64 1300, !41, i64 1304, !37, i64 1308, !37, i64 1320, !37, i64 1332, !41, i64 1344, !40, i64 1348, !40, i64 1350, !39, i64 1352, !41, i64 1356, !37, i64 1360, !37, i64 1361, !37, i64 1362, !37, i64 1363, !37, i64 1364, !37, i64 1365, !40, i64 1366, !36, i64 1368}
!588 = !{!587, !36, i64 176}
!589 = distinct !{!589, !83}
!590 = !{i16 0, i16 2}
!591 = !{!587, !40, i64 1350}
!592 = !{!49, !40, i64 1758}
!593 = !{!282, !36, i64 1320}
!594 = !{!282, !36, i64 1168}
!595 = !{!282, !36, i64 1104}
!596 = !{!587, !41, i64 1288}
!597 = distinct !{!597, !83}
!598 = !{!164, !39, i64 200}
!599 = !{!164, !39, i64 192}
!600 = !{!164, !39, i64 344}
!601 = distinct !{!601, !83}
!602 = !{!282, !36, i64 1112}
!603 = !{!282, !36, i64 1184}
!604 = !{!605, !40, i64 16}
!605 = !{!"MFace", !41, i64 0, !41, i64 4, !41, i64 8, !41, i64 12, !40, i64 16, !37, i64 18, !37, i64 19}
!606 = !{!605, !41, i64 4}
!607 = !{!605, !41, i64 12}
!608 = !{!605, !37, i64 19}
!609 = !{!587, !36, i64 208}
!610 = !{!587, !36, i64 232}
!611 = !{!605, !41, i64 8}
!612 = !{!605, !41, i64 0}
!613 = !{!282, !41, i64 572}
!614 = !{!282, !36, i64 400}
!615 = !{!616, !41, i64 0}
!616 = !{!"CustomDataLayer", !41, i64 0, !41, i64 4, !41, i64 8, !41, i64 12, !41, i64 16, !41, i64 20, !41, i64 24, !41, i64 28, !37, i64 32, !36, i64 96}
!617 = !{!616, !36, i64 96}
!618 = !{i64 0, i64 32, !76, i64 32, i64 8, !47, i64 40, i64 1, !76, i64 41, i64 1, !76, i64 42, i64 2, !77, i64 44, i64 2, !77, i64 46, i64 2, !77}
!619 = distinct !{!619, !83}
!620 = distinct !{!620, !83}
!621 = distinct !{!621, !83}
!622 = distinct !{!622, !83}
!623 = distinct !{!623, !83}
!624 = distinct !{!624, !83}
!625 = distinct !{!625, !83}
!626 = !{!282, !36, i64 1176}
!627 = !{!628, !40, i64 10}
!628 = !{!"MEdge", !41, i64 0, !41, i64 4, !37, i64 8, !37, i64 9, !40, i64 10}
!629 = !{!628, !41, i64 0}
!630 = !{!628, !41, i64 4}
!631 = distinct !{!631, !83}
!632 = !{!"convertblender.c:init_render_mball"}
!633 = !{!548, !36, i64 40}
!634 = distinct !{!634, !83}
!635 = !{!559, !41, i64 60}
!636 = !{i64 0, i64 8, !47, i64 8, i64 8, !47, i64 16, i64 8, !47, i64 24, i64 8, !47, i64 32, i64 12, !76, i64 48, i64 8, !47, i64 56, i64 1, !76, i64 57, i64 1, !76, i64 58, i64 1, !76, i64 60, i64 4, !78}
!637 = distinct !{!637, !83}
!638 = !{!"convertblender.c:finalize_render_object"}
!639 = !{!138, !39, i64 1268}
!640 = !{!49, !40, i64 1762}
!641 = !{!49, !41, i64 3624}
!642 = distinct !{!642, !83}
!643 = !{!164, !39, i64 436}
!644 = !{!164, !39, i64 440}
!645 = distinct !{!645, !83}
!646 = distinct !{!646, !83}
!647 = !{!"convertblender.c:get_object_orco"}
!648 = !{!"convertblender.c:set_object_orco"}
!649 = !{!"convertblender.c:max_ii"}
!650 = !{!"convertblender.c:DM_origindex_mface_mpoly"}
!651 = !{!"convertblender.c:get_particle_uvco_mcol"}
!652 = !{!282, !36, i64 1304}
!653 = distinct !{!653, !83}
!654 = distinct !{!654, !83}
!655 = !{!"convertblender.c:psys_frand"}
!656 = !{!"convertblender.c:len_v3v3"}
!657 = !{!"convertblender.c:sub_v3_v3v3"}
!658 = !{!"convertblender.c:add_v3_v3v3"}
!659 = !{!"convertblender.c:particle_curve"}
!660 = !{!441, !41, i64 60}
!661 = !{!662, !41, i64 104}
!662 = !{!"HaloRen", !40, i64 0, !40, i64 2, !39, i64 4, !39, i64 8, !39, i64 12, !39, i64 16, !39, i64 20, !39, i64 24, !39, i64 28, !37, i64 32, !37, i64 44, !39, i64 56, !39, i64 60, !39, i64 64, !39, i64 68, !41, i64 72, !41, i64 76, !41, i64 80, !37, i64 84, !37, i64 85, !37, i64 86, !37, i64 87, !37, i64 88, !37, i64 89, !37, i64 90, !40, i64 92, !39, i64 96, !41, i64 100, !41, i64 104, !36, i64 112, !36, i64 120}
!663 = !{!"convertblender.c:len_v3"}
!664 = !{!"convertblender.c:particle_normal_ren"}
!665 = !{!"convertblender.c:calc_vertexnormals"}
!666 = distinct !{!666, !83}
!667 = distinct !{!667, !83}
!668 = distinct !{!668, !83}
!669 = distinct !{!669, !83}
!670 = !{!671, !36, i64 0}
!671 = !{!"", !36, i64 0}
!672 = !{!673, !36, i64 8}
!673 = !{!"SMikkTSpaceContext", !36, i64 0, !36, i64 8}
!674 = !{!673, !36, i64 0}
!675 = !{!676, !36, i64 0}
!676 = !{!"", !36, i64 0, !36, i64 8, !36, i64 16, !36, i64 24, !36, i64 32, !36, i64 40, !36, i64 48}
!677 = !{!676, !36, i64 8}
!678 = !{!676, !36, i64 16}
!679 = !{!676, !36, i64 32}
!680 = !{!676, !36, i64 24}
!681 = !{!676, !36, i64 40}
!682 = !{!"convertblender.c:static_particle_wire"}
!683 = !{!"convertblender.c:static_particle_strand"}
!684 = !{!164, !39, i64 444}
!685 = !{!553, !39, i64 36}
!686 = distinct !{!686, !83}
!687 = distinct !{!687, !83}
!688 = distinct !{!688, !83}
!689 = distinct !{!689, !83}
!690 = !{!"convertblender.c:cross_v3_v3v3"}
!691 = !{!"convertblender.c:mul_v3_fl"}
!692 = !{!"convertblender.c:add_v3_v3"}
!693 = !{!"convertblender.c:madd_v3_v3v3fl"}
!694 = !{!"convertblender.c:particle_billboard"}
!695 = !{!"convertblender.c:sub_v3_v3"}
!696 = !{!"convertblender.c:calc_tangent_vector"}
!697 = !{!179, !41, i64 168}
!698 = !{!"convertblender.c:is_zero_v3"}
!699 = !{!"convertblender.c:GetNumFaces"}
!700 = !{!"convertblender.c:GetNumVertsOfFace"}
!701 = !{!"convertblender.c:GetPosition"}
!702 = !{!"convertblender.c:GetTextureCoordinate"}
!703 = !{!"convertblender.c:GetNormal"}
!704 = !{!"convertblender.c:SetTSpace"}
!705 = !{!"convertblender.c:zero_v2"}
!706 = !{!"convertblender.c:negate_v3_v3"}
!707 = !{!"convertblender.c:init_render_dm"}
!708 = distinct !{!708, !83}
!709 = distinct !{!709, !83}
!710 = distinct !{!710, !83}
!711 = distinct !{!711, !83}
!712 = !{!"convertblender.c:dl_surf_to_renderdata"}
!713 = distinct !{!713, !83}
!714 = distinct !{!714, !83}
!715 = distinct !{!715, !83}
!716 = distinct !{!716, !83}
!717 = distinct !{!717, !83}
!718 = distinct !{!718, !83}
!719 = distinct !{!719, !83}
!720 = distinct !{!720, !83}
!721 = !{!"convertblender.c:split_v_renderfaces"}
!722 = distinct !{!722, !83}
!723 = !{!"convertblender.c:test_for_displace"}
!724 = distinct !{!724, !83}
!725 = !{!164, !40, i64 590}
!726 = !{!"convertblender.c:make_render_halos"}
!727 = distinct !{!727, !83}
!728 = !{!"convertblender.c:normal_short_to_float_v3"}
!729 = !{!"convertblender.c:negate_v3"}
!730 = !{!"convertblender.c:copy_v4_v4"}
!731 = !{!"convertblender.c:copy_v3_v3_short"}
!732 = !{!"convertblender.c:make_mesh_edge_lookup"}
!733 = distinct !{!733, !83}
!734 = distinct !{!734, !83}
!735 = !{!"convertblender.c:use_mesh_edge_lookup"}
!736 = !{!737, !41, i64 8}
!737 = !{!"edgesort", !41, i64 0, !41, i64 4, !41, i64 8, !41, i64 12, !41, i64 16}
!738 = !{!737, !41, i64 12}
!739 = !{!737, !41, i64 16}
!740 = distinct !{!740, !83}
!741 = !{!"convertblender.c:calc_edge_stress"}
!742 = distinct !{!742, !83}
!743 = distinct !{!743, !83}
!744 = !{!553, !41, i64 40}
!745 = distinct !{!745, !83}
!746 = !{!"convertblender.c:displace"}
!747 = distinct !{!747, !83}
!748 = !{!553, !41, i64 32}
!749 = distinct !{!749, !83}
!750 = distinct !{!750, !83}
!751 = !{!"convertblender.c:autosmooth"}
!752 = distinct !{!752, !83}
!753 = distinct !{!753, !83}
!754 = distinct !{!754, !83}
!755 = distinct !{!755, !83}
!756 = !{!"convertblender.c:to_edgesort"}
!757 = !{!737, !41, i64 0}
!758 = !{!737, !41, i64 4}
!759 = !{!"convertblender.c:vergedgesort"}
!760 = !{!"convertblender.c:calc_edge_stress_add"}
!761 = !{!"convertblender.c:mul_v3_v3v3"}
!762 = !{!"convertblender.c:displace_render_face"}
!763 = !{!764, !36, i64 32}
!764 = !{!"ShadeInput", !36, i64 0, !36, i64 8, !36, i64 16, !36, i64 24, !36, i64 32, !41, i64 40, !37, i64 44, !40, i64 56, !36, i64 64, !36, i64 72, !36, i64 80, !40, i64 88, !40, i64 90, !40, i64 92, !40, i64 94, !40, i64 96, !37, i64 100, !37, i64 112, !37, i64 124, !37, i64 136, !37, i64 148, !41, i64 160, !41, i64 164, !39, i64 168, !39, i64 172, !39, i64 176, !39, i64 180, !39, i64 184, !39, i64 188, !37, i64 192, !37, i64 204, !37, i64 216, !39, i64 228, !39, i64 232, !39, i64 236, !39, i64 240, !39, i64 244, !39, i64 248, !39, i64 252, !39, i64 256, !39, i64 260, !39, i64 264, !39, i64 268, !39, i64 272, !39, i64 276, !39, i64 280, !39, i64 284, !39, i64 288, !39, i64 292, !39, i64 296, !39, i64 300, !39, i64 304, !39, i64 308, !39, i64 312, !39, i64 316, !41, i64 320, !37, i64 324, !37, i64 336, !37, i64 348, !37, i64 360, !37, i64 372, !37, i64 384, !37, i64 400, !37, i64 416, !39, i64 428, !37, i64 432, !37, i64 444, !37, i64 456, !39, i64 472, !37, i64 476, !37, i64 492, !37, i64 504, !37, i64 520, !37, i64 904, !41, i64 1096, !41, i64 1100, !41, i64 1104, !41, i64 1108, !37, i64 1112, !37, i64 1124, !37, i64 1136, !37, i64 1148, !37, i64 1160, !37, i64 1172, !37, i64 1184, !37, i64 1196, !37, i64 1208, !37, i64 1220, !37, i64 1232, !37, i64 1244, !39, i64 1256, !39, i64 1260, !37, i64 1264, !37, i64 1276, !37, i64 1288, !37, i64 1300, !37, i64 1312, !37, i64 1324, !39, i64 1336, !39, i64 1340, !37, i64 1344, !37, i64 1356, !37, i64 1368, !41, i64 1380, !41, i64 1384, !41, i64 1388, !37, i64 1392, !41, i64 1404, !41, i64 1408, !41, i64 1412, !37, i64 1416, !39, i64 1428, !37, i64 1432, !37, i64 1433, !40, i64 1434, !40, i64 1436, !40, i64 1438, !41, i64 1440, !41, i64 1444, !41, i64 1448, !41, i64 1452, !36, i64 1456, !36, i64 1464}
!765 = !{!764, !36, i64 8}
!766 = !{!764, !36, i64 0}
!767 = !{!"convertblender.c:displace_render_vert"}
!768 = !{!764, !41, i64 1096}
!769 = !{!764, !41, i64 1104}
!770 = !{!771, !36, i64 40}
!771 = !{!"ShadeInputUV", !37, i64 0, !37, i64 12, !37, i64 24, !36, i64 40}
!772 = distinct !{!772, !83}
!773 = !{!764, !39, i64 472}
!774 = !{!"convertblender.c:as_addvert_lnor"}
!775 = !{i32 5, i32 4}
!776 = !{!777, !36, i64 16}
!777 = !{!"ASvert", !41, i64 0, !50, i64 8}
!778 = !{!"convertblender.c:as_addvert"}
!779 = distinct !{!779, !83}
!780 = !{!777, !41, i64 0}
!781 = !{!"convertblender.c:as_findvertex_lnor"}
!782 = distinct !{!782, !83}
!783 = distinct !{!783, !83}
!784 = !{!"convertblender.c:equals_v3v3"}
!785 = !{!"convertblender.c:set_phong_threshold"}
!786 = distinct !{!786, !83}
!787 = !{!"convertblender.c:split_quads"}
!788 = distinct !{!788, !83}
!789 = !{!"convertblender.c:check_non_flat_quads"}
!790 = distinct !{!790, !83}
!791 = !{!"convertblender.c:set_fullsample_trace_flag"}
!792 = !{!164, !39, i64 364}
!793 = !{!164, !39, i64 368}
!794 = distinct !{!794, !83}
!795 = !{!"convertblender.c:max_ff"}
!796 = !{!"convertblender.c:flag_render_node_material"}
!797 = !{!798, !36, i64 240}
!798 = !{!"bNode", !36, i64 0, !36, i64 8, !36, i64 16, !36, i64 24, !36, i64 32, !37, i64 40, !37, i64 104, !41, i64 168, !40, i64 172, !40, i64 174, !40, i64 176, !40, i64 178, !40, i64 180, !40, i64 182, !40, i64 184, !40, i64 186, !37, i64 188, !50, i64 200, !50, i64 216, !36, i64 232, !36, i64 240, !36, i64 248, !36, i64 256, !50, i64 264, !39, i64 280, !39, i64 284, !39, i64 288, !39, i64 292, !39, i64 296, !39, i64 300, !39, i64 304, !41, i64 308, !37, i64 312, !40, i64 376, !40, i64 378, !39, i64 380, !39, i64 384, !40, i64 388, !40, i64 390, !36, i64 392, !52, i64 400, !52, i64 416, !52, i64 432, !40, i64 448, !40, i64 450, !41, i64 452, !36, i64 456}
!799 = !{!798, !40, i64 172}
!800 = distinct !{!800, !83}
!801 = !{!"convertblender.c:check_material_mapto"}
!802 = !{!164, !41, i64 880}
!803 = distinct !{!803, !83}
!804 = !{!"convertblender.c:add_lightgroup"}
!805 = distinct !{!805, !83}
!806 = distinct !{!806, !83}
!807 = !{!"convertblender.c:verghalo"}
!808 = !{!662, !41, i64 72}
!809 = !{!"convertblender.c:BLI_rctf_size_x"}
!810 = !{!52, !39, i64 4}
!811 = !{!52, !39, i64 0}
!812 = !{!"convertblender.c:BLI_rctf_size_y"}
!813 = !{!52, !39, i64 12}
!814 = !{!52, !39, i64 8}
!815 = !{!"convertblender.c:calculate_speedvector"}
!816 = !{!"convertblender.c:calculate_strandsurface_speedvectors"}
!817 = !{!213, !41, i64 352}
!818 = distinct !{!818, !83}
!819 = !{!"convertblender.c:zero_v4"}
!820 = !{!"convertblender.c:madd_v4_v4fl"}
