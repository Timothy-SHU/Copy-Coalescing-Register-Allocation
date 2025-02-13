; ModuleID = 'blender/source/blender/blenloader/intern/versioning_legacy.c'
source_filename = "blender/source/blender/blenloader/intern/versioning_legacy.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.Object = type { %struct.ID, ptr, ptr, i16, i16, i32, i32, i32, [64 x i8], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.bAnimVizSettings, ptr, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, i32, i32, ptr, ptr, i32, i32, [3 x float], [3 x float], [3 x float], [3 x float], [3 x float], [3 x float], [3 x float], [3 x float], [4 x float], [4 x float], [3 x float], [3 x float], float, float, [4 x [4 x float]], [4 x [4 x float]], [4 x [4 x float]], [4 x [4 x float]], [4 x [4 x float]], i32, i16, i16, i16, i16, i16, i16, i16, i16, i16, i8, i8, i32, i32, i32, i32, i32, float, float, float, float, float, float, float, float, float, float, float, float, i16, i16, i16, i8, i8, i16, i8, i8, float, float, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, float, i16, i16, [4 x float], i32, i32, ptr, i8, i8, i16, [3 x float], %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, ptr, ptr, ptr, i8, i8, i16, float, ptr, ptr, ptr, ptr, i64, i64, i32, i32, %struct.ListBase, %struct.ListBase, ptr, ptr, ptr, [2 x float], ptr, %struct.ListBase, ptr }
%struct.ID = type { ptr, ptr, ptr, ptr, [66 x i8], i16, i32, i32, i32, ptr }
%struct.bAnimVizSettings = type { i32, i32, i32, i32, i16, i16, i16, i16, i16, i16, i16, i16, i32, i32, i32, i32 }
%struct.ListBase = type { ptr, ptr }
%struct.PartEff = type { ptr, ptr, i16, i16, i16, i16, i16, i16, float, float, float, i32, i32, i32, float, float, float, float, float, [3 x float], float, float, float, float, float, [3 x float], [4 x float], [4 x float], [4 x i16], [4 x i16], i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, [64 x i8], [64 x i8], [4 x [4 x float]], ptr, ptr }
%struct.bConstraint = type { ptr, ptr, ptr, i16, i16, i8, i8, [64 x i8], i16, float, float, ptr, float, float }
%struct.bTrackToConstraint = type { ptr, i32, i32, i32, i32, [64 x i8] }
%struct.SeqIterator = type { ptr, i32, i32, ptr, i32 }
%struct.Main = type { ptr, ptr, [1024 x i8], i16, i16, i16, i16, i64, [16 x i8], i16, ptr, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, [256 x i8], ptr, ptr }
%struct.Tex = type { %struct.ID, ptr, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, float, float, float, float, i32, i32, i16, i16, i16, i16, i32, i32, i32, i32, float, float, float, %struct.ImageUser, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8, [7 x i8] }
%struct.ImageUser = type { ptr, i32, i32, i32, i32, i8, i8, i8, i8, i16, i16, i16, i16, i32 }
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
%struct.Material = type { %struct.ID, ptr, i16, i16, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, %struct.VolumeSettings, %struct.GameSettings, float, float, float, float, float, float, float, i16, i16, i16, i8, i8, float, float, i16, i16, float, float, float, float, i16, i16, i32, i32, i32, i32, i16, i16, i16, i16, float, float, float, float, float, float, float, float, float, float, [64 x i8], float, float, float, i32, i8, i8, i8, i8, i16, i16, i16, i8, i8, i16, i16, float, float, [4 x float], float, float, i16, i16, ptr, ptr, i8, i8, i8, i8, i16, i16, float, float, [18 x ptr], ptr, ptr, ptr, ptr, float, float, float, float, float, i16, i16, [3 x float], [3 x float], float, float, float, float, float, float, float, i16, i16, i32, i16, i16, [4 x float], i16, i16, i16, i16, i16, [3 x i16], ptr, %struct.ListBase }
%struct.VolumeSettings = type { float, float, float, float, [3 x float], [3 x float], [3 x float], float, float, float, i16, i16, i16, i16, float, float, float, float }
%struct.GameSettings = type { i32, i32, i32, i32 }
%struct.Mesh = type { %struct.ID, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.CustomData, %struct.CustomData, %struct.CustomData, %struct.CustomData, %struct.CustomData, i32, i32, i32, i32, i32, i32, i32, [3 x float], [3 x float], [3 x float], i32, i16, i16, float, i32, i8, i8, i8, i8, i8, i8, i16, ptr }
%struct.CustomData = type { ptr, [41 x i32], i32, i32, i32, ptr, ptr }
%struct.bScreen = type { %struct.ID, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, ptr, ptr, i32, i32, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, ptr, ptr }
%struct.ScrArea = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.rcti, i8, i8, i16, i16, i16, i16, i16, i16, i8, i8, ptr, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase }
%struct.SpaceLink = type { ptr, ptr, %struct.ListBase, i32, float, [8 x i16] }
%struct.View3D = type { ptr, ptr, %struct.ListBase, i32, float, [8 x i16], [4 x float], float, float, i8, [3 x i8], i32, i32, i16, i16, ptr, ptr, %struct.rctf, %struct.ListBase, ptr, ptr, [64 x i8], i32, i32, i16, i16, i16, i16, i16, i16, float, float, float, float, [3 x float], [3 x float], i16, i16, i16, i8, i8, i8, i8, [2 x i8], %struct.ListBase, %struct.ListBase, %struct.ListBase, i8, i8, i8, [5 x i8], ptr, ptr, ptr }
%struct.TFace = type { ptr, [4 x [2 x float]], [4 x i32], i8, i8, i16, i16, i16 }
%struct.SpaceIpo = type { ptr, ptr, %struct.ListBase, i32, float, [8 x i16], %struct.View2D, ptr, %struct.ListBase, i16, i16, i32, float, i32 }
%struct.View2D = type { %struct.rctf, %struct.rctf, %struct.rcti, %struct.rcti, %struct.rcti, [2 x float], [2 x float], float, float, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, ptr, i32, i32, ptr, ptr }
%struct.SpaceText = type { ptr, ptr, %struct.ListBase, i32, float, [8 x i16], ptr, i32, i32, i16, i16, i16, i8, i8, i32, i32, i32, i16, i16, i16, i16, float, %struct.rcti, %struct.rcti, i32, i32, [256 x i8], [256 x i8], i16, i16, [4 x i8], ptr, [2 x float] }
%struct.bActuator = type { ptr, ptr, ptr, i16, i16, i16, i16, [64 x i8], ptr, ptr }
%struct.bIpoActuator = type { i16, i16, float, float, [64 x i8], [64 x i8], i16, i16, i16, i16 }
%struct.bEditObjectActuator = type { i32, i16, i16, ptr, ptr, [64 x i8], [3 x float], [3 x float], float, i16, i16, i16, i16, i32 }
%struct.bAddObjectActuator = type { i32, i32, ptr }
%struct.bObjectActuator = type { i16, i16, i16, i16, [3 x float], [3 x float], [3 x float], [3 x float], [3 x float], [3 x float], [3 x float], [3 x float], ptr }
%struct.bSound = type { %struct.ID, [1024 x i8], ptr, ptr, ptr, ptr, float, float, float, float, float, float, i32, i32, ptr, ptr, ptr }
%struct.bSensor = type { ptr, ptr, i16, i16, i16, i16, i16, i16, i16, i16, [64 x i8], ptr, ptr, ptr, i16, i16, i16, i16 }
%struct.bRadarSensor = type { [64 x i8], float, float, i16, i16 }
%struct.bCollisionSensor = type { [64 x i8], [64 x i8], i16, i16, i16, i16 }
%struct.bRaySensor = type { [64 x i8], float, [64 x i8], [64 x i8], i16, i16, i32 }
%struct.bProperty = type { ptr, ptr, [64 x i8], i16, i16, i32, ptr }
%struct.MCol = type { i8, i8, i8, i8 }
%struct.VFont = type { %struct.ID, [1024 x i8], ptr, ptr, ptr }
%struct.Image = type { %struct.ID, [1024 x i8], ptr, ptr, ptr, ptr, [8 x ptr], i16, i16, i16, i16, i16, i16, i32, i16, i16, i16, i16, i16, i16, i32, ptr, ptr, ptr, float, i32, i16, i16, i32, i32, i8, i8, i16, [4 x float], float, float, %struct.ColorManagedColorspaceSettings, i8, [7 x i8], [8 x %struct.RenderSlot] }
%struct.RenderSlot = type { [64 x i8] }
%struct.bKeyboardSensor = type { i16, i16, i16, i16, [64 x i8], [64 x i8] }
%struct.SpaceSeq = type { ptr, ptr, %struct.ListBase, i32, float, [8 x i16], %struct.View2D, float, float, i16, i16, i16, i16, i32, float, i32, i32, ptr, %struct.SequencerScopes }
%struct.SequencerScopes = type { ptr, ptr, ptr, ptr, ptr, ptr }
%struct.World = type { %struct.ID, ptr, i16, i16, i16, i16, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, i16, i16, i16, i16, i16, i16, i16, i16, float, float, float, float, float, float, float, float, float, float, float, float, i16, i16, i16, i16, float, float, float, float, i16, i16, i16, i16, float, float, float, float, float, float, float, i16, i16, i16, i16, i16, i16, ptr, ptr, ptr, [18 x ptr], i16, i16, [2 x i16], ptr, ptr }
%struct.bPoseChannel = type { ptr, ptr, ptr, %struct.ListBase, [64 x i8], i16, i16, i16, i16, i8, i8, [6 x i8], ptr, ptr, ptr, %struct.ListBase, %struct.ListBase, ptr, ptr, ptr, [3 x float], [3 x float], [3 x float], [4 x float], [3 x float], float, i16, i16, [4 x [4 x float]], [4 x [4 x float]], [4 x [4 x float]], [3 x float], [3 x float], [3 x float], [3 x float], [3 x float], float, float, float, ptr }
%struct.SpaceAction = type { ptr, ptr, %struct.ListBase, i32, float, [8 x i16], %struct.View2D, ptr, %struct.bDopeSheet, i8, i8, i16, float }
%struct.bDopeSheet = type { ptr, %struct.ListBase, ptr, [64 x i8], i32, i32, i32, i32 }
%struct.SpaceNla = type { ptr, ptr, %struct.ListBase, i32, float, [8 x i16], i16, i16, i32, ptr, %struct.View2D }
%struct.SpaceButs = type { ptr, ptr, %struct.ListBase, i32, float, [8 x i16], %struct.View2D, i16, i16, i16, i16, i16, i16, i16, i16, i8, [7 x i8], ptr, i32, i32, ptr, ptr }
%struct.Lamp = type { %struct.ID, ptr, i16, i16, i32, i16, i16, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, ptr, i16, i16, float, float, float, float, float, float, float, i16, i16, i16, i16, i8, i8, i16, i16, i16, i16, i16, float, float, float, float, i16, i16, i16, i16, i16, i16, float, float, float, float, float, float, float, float, float, float, float, float, float, i16, [2 x i8], ptr, [18 x ptr], i16, i16, [4 x i8], ptr, ptr }
%struct.Sequence = type { ptr, ptr, ptr, ptr, [64 x i8], i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, float, float, float, i16, i16, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, float, float, ptr, ptr, ptr, %struct.ListBase, ptr, ptr, float, float, float, float, ptr, i32, i32, i32, float, i32, i8, [3 x i8], %struct.ListBase }
%struct.Camera = type { %struct.ID, ptr, i8, i8, i16, float, float, float, float, float, float, float, float, float, float, float, ptr, ptr, i8, [7 x i8] }
%struct.SoftBody = type { i32, i32, ptr, ptr, i8, i8, i16, float, [64 x i8], float, float, float, float, float, float, float, float, float, i16, [64 x i8], i16, float, float, [64 x i8], i32, i32, i32, i16, i16, ptr, i32, i32, float, float, float, float, i16, i16, i16, i16, i16, i16, i16, i16, ptr, float, float, ptr, %struct.ListBase, ptr, [3 x float], [3 x [3 x float]], [3 x [3 x float]], i32 }
%struct.bArmature = type { %struct.ID, ptr, %struct.ListBase, %struct.ListBase, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i16, i16, i32, i32, i32, i16, i16, i16, i16, i32, i32, i32, i32, i32, i32 }
%struct.bPose = type { %struct.ListBase, ptr, i16, i16, i32, i32, float, [3 x float], [3 x float], %struct.ListBase, i32, i32, ptr, ptr, %struct.bAnimVizSettings, [64 x i8] }
%struct.SubsurfModifierData = type { %struct.ModifierData, i16, i16, i16, i16, ptr, ptr }
%struct.ModifierData = type { ptr, ptr, i32, i32, i32, i32, [64 x i8], ptr, ptr }
%struct.Curve = type { %struct.ID, ptr, ptr, %struct.ListBase, ptr, ptr, ptr, ptr, ptr, ptr, ptr, [3 x float], [3 x float], [3 x float], i16, i16, i16, i16, float, float, i32, i16, i16, i32, float, float, float, i16, i16, i16, i16, i32, i32, [4 x i8], i16, i8, i8, float, float, float, float, float, float, float, float, float, float, i32, i32, i32, i32, i32, ptr, ptr, [64 x i8], ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, %struct.CharInfo, float, float, float, i8, i8, [2 x i8] }
%struct.CharInfo = type { i16, i16, i8, i8, i16 }
%struct.ToolSettings = type { ptr, ptr, ptr, ptr, float, float, float, i16, i16, i8, i8, i8, i8, float, i16, i8, [5 x i8], %struct.ImagePaintSettings, %struct.ParticleEditSettings, float, float, i16, i16, i8, [1 x i8], i16, float, float, float, float, float, float, float, float, float, float, i16, i8, i8, [3 x i8], i8, ptr, i8, i8, i8, i8, i8, [8 x i8], [8 x i8], i8, i8, i8, i8, i8, i16, i16, i16, i16, i8, i8, i8, i8, i8, i8, i32, i32, i32, i32, i16, i16, i32, float, float, %struct.UnifiedPaintSettings, %struct.MeshStatVis }
%struct.ImagePaintSettings = type { %struct.Paint, i16, i16, i16, i16, [2 x i16], i32, ptr, ptr, ptr, ptr, [3 x float], float }
%struct.Paint = type { ptr, ptr, ptr, [4 x i8], i32, i32, i32 }
%struct.ParticleEditSettings = type { i16, i16, i16, i16, [7 x %struct.ParticleBrushData], ptr, float, float, i32, i32, i32, i32, ptr, ptr }
%struct.ParticleBrushData = type { i16, i16, i16, i16, i32, float }
%struct.UnifiedPaintSettings = type { i32, float, float, float, [3 x float], [3 x float], i32, [2 x float], float, i32, i32, i8, [7 x i8], float, [2 x float], i32, float, [2 x float], [2 x float], i32, ptr, float, i32 }
%struct.MeshStatVis = type { i8, [2 x i8], i8, float, float, float, float, i8, [3 x i8], float, float, float, float }
%struct.Lattice = type { %struct.ID, ptr, i16, i16, i16, i16, i16, i16, i16, i16, i8, i8, i8, i8, i32, float, float, float, float, float, float, ptr, ptr, ptr, ptr, [64 x i8], ptr }
%struct.ModifierTypeInfo = type { [32 x i8], [32 x i8], i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.bKinematicConstraint = type { ptr, i16, i16, i16, i16, [64 x i8], ptr, [64 x i8], float, float, float, [3 x float], i16, i16, float }
%struct.Key = type { %struct.ID, ptr, ptr, [32 x i8], i32, i32, %struct.ListBase, ptr, ptr, i16, i16, i16, i16, float, i32 }
%struct.KeyBlock = type { ptr, ptr, float, float, i16, i16, i16, i16, i32, i32, ptr, [64 x i8], [64 x i8], float, float }
%struct.ArmatureModifierData = type { %struct.ModifierData, i16, i16, i32, ptr, ptr, [64 x i8] }
%struct.SceneRenderLayer = type { ptr, ptr, [64 x i8], ptr, ptr, i32, i32, i32, i32, i32, i32, i32, float, %struct.FreestyleConfig }
%struct.FreestyleConfig = type { %struct.ListBase, i32, i32, i32, float, float, float, %struct.ListBase }
%struct.EnvMap = type { ptr, ptr, [6 x ptr], [4 x [4 x float]], [3 x [3 x float]], i16, i16, float, float, float, i32, i16, i16, i32, i32, i16, i16 }
%struct.MTex = type { i16, i16, i16, i16, ptr, ptr, [64 x i8], i8, i8, i8, i8, [3 x float], [3 x float], float, i16, i16, i16, i16, i16, i16, i8, [7 x i8], float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float }
%struct.Nurb = type { ptr, ptr, i16, i16, i16, i16, i32, i32, [2 x i16], i16, i16, i16, i16, i16, i16, ptr, ptr, ptr, ptr, i16, i16, i32 }
%struct.BezTriple = type { [3 x [3 x float]], float, float, float, i8, i8, i8, i8, i8, i8, i8, i8, float, float, float, [4 x i8] }
%struct.BPoint = type { [4 x float], float, float, i16, i16, float, float }
%struct.bMinMaxConstraint = type { ptr, i32, float, i32, i16, i16, i16, i16, [3 x float], [64 x i8] }
%struct.bRotateLikeConstraint = type { ptr, i32, i32, [64 x i8] }
%struct.CurveModifierData = type { %struct.ModifierData, ptr, [64 x i8], i16, [6 x i8] }
%struct.Group = type { %struct.ID, %struct.ListBase, i32, [3 x float] }
%struct.SpaceImage = type { ptr, ptr, %struct.ListBase, i32, i32, ptr, %struct.ImageUser, ptr, %struct.Scopes, %struct.Histogram, ptr, [2 x float], float, float, float, float, float, i8, i8, i16, i16, i16, i8, i8, i8, i8, %struct.MaskSpaceInfo }
%struct.Scopes = type { i32, i32, i32, float, i32, float, float, i32, float, i32, [3 x [2 x float]], %struct.Histogram, ptr, ptr, ptr, ptr, i32, i32 }
%struct.Histogram = type { i32, i32, [256 x float], [256 x float], [256 x float], [256 x float], [256 x float], float, float, i16, i16, i32, [2 x [2 x float]] }
%struct.MaskSpaceInfo = type { ptr, i8, i8, i8, [5 x i8] }
%struct.BGpic = type { ptr, ptr, ptr, %struct.ImageUser, ptr, %struct.MovieClipUser, float, float, float, float, i16, i16, i16, i16 }
%struct.MovieClipUser = type { i32, i16, i16 }
%struct.bDeformGroup = type { ptr, ptr, [64 x i8], i8, [7 x i8] }
%struct.MirrorModifierData = type { %struct.ModifierData, i16, i16, float, ptr }
%struct.bLocLimitConstraint = type { float, float, float, float, float, float, i16, i16 }
%struct.bActionConstraint = type { ptr, i16, i16, i32, i32, float, float, i32, ptr, [64 x i8] }
%struct.ParticleSystem = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.ListBase, %struct.ListBase, ptr, ptr, ptr, ptr, ptr, ptr, %struct.ListBase, [64 x i8], [4 x [4 x float]], float, float, float, i32, i32, i32, i32, i32, i32, i32, i32, i16, i16, i16, i16, [3 x [64 x i8]], [12 x i16], i16, i16, ptr, ptr, %struct.ListBase, ptr, ptr, i32, i32, ptr, ptr, ptr, float, float }
%struct.PointCache = type { ptr, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i16, i16, [64 x i8], [64 x i8], [64 x i8], [1024 x i8], ptr, %struct.ListBase, ptr, ptr }
%struct.ClothModifierData = type { %struct.ModifierData, ptr, ptr, ptr, ptr, ptr, %struct.ListBase }
%struct.Multires = type { %struct.ListBase, ptr, i8, i8, i8, i8, i8, i8, i8, i8, %struct.CustomData, %struct.CustomData, ptr, ptr }
%struct.MultiresLevel = type { ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, ptr }
%struct.ParticleSettings = type { %struct.ID, ptr, ptr, ptr, ptr, i32, i32, i16, i16, i16, i16, i16, i16, i16, i16, i32, i32, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, float, float, [2 x float], [2 x float], float, float, float, i16, i16, float, float, float, float, float, float, float, float, float, float, float, float, [1 x float], i32, i32, i32, i32, i16, [3 x i16], float, float, float, float, float, float, float, [3 x float], float, float, float, float, float, float, float, [3 x float], float, float, float, float, i32, i32, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, [2 x float], float, float, i32, i32, [18 x ptr], ptr, %struct.ListBase, ptr, ptr, ptr, ptr, ptr, ptr, i16, [3 x i16] }
%struct.bPythonConstraint = type { ptr, ptr, i32, i32, %struct.ListBase, ptr, [64 x i8] }
%struct.bConstraintTarget = type { ptr, ptr, ptr, [64 x i8], [4 x [4 x float]], i16, i16, i16, i16 }
%struct.bLocateLikeConstraint = type { ptr, i32, i32, [64 x i8] }
%struct.FileData = type { %struct.ListBase, i32, i32, i32, i32, ptr, ptr, ptr, i32, ptr, [1024 x i8], i8, i32, %struct.z_stream_s, ptr, ptr, ptr, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr, ptr }
%struct.z_stream_s = type { ptr, i32, i64, ptr, i32, i64, ptr, ptr, ptr, ptr, ptr, i32, i64, i64 }
%struct.ParticleSystemModifierData = type { %struct.ModifierData, ptr, ptr, i32, i32, i32, i16, i16 }
%struct.FluidsimModifierData = type { %struct.ModifierData, ptr, ptr }
%struct.FluidsimSettings = type { ptr, i32, i32, i16, i16, i16, i16, float, i16, i16, float, i16, i16, [3 x float], float, float, i32, i32, i32, i32, float, i32, float, float, float, ptr, ptr, [1024 x i8], [3 x float], [3 x float], ptr, i16, i8, i8, float, i32, float, float, i32, i32, float, float, float, ptr, i32, float, float, float, float, float, float, float, i32, float }
%struct.bActionStrip = type { ptr, ptr, i16, i16, i16, i16, ptr, ptr, ptr, float, float, float, float, float, float, float, float, float, float, [32 x i8], [32 x i8], %struct.ListBase }
%struct.PartDeflect = type { i32, i16, i16, i16, i16, i16, i16, i16, i16, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, ptr, ptr, float, i32, ptr }
%struct.bConstraintActuator = type { i16, i16, i16, i16, i16, i16, i32, [3 x float], [3 x float], [3 x float], [3 x float], [64 x i8] }
%struct.Strip = type { ptr, ptr, i32, i32, i32, i32, ptr, [768 x i8], ptr, ptr, ptr, ptr, %struct.ColorManagedColorspaceSettings }
%struct.StripProxy = type { [768 x i8], [256 x i8], ptr, i16, i16, i16, i16 }
%struct.MFace = type { i32, i32, i32, i32, i16, i8, i8 }
%struct.Bone = type { ptr, ptr, ptr, ptr, %struct.ListBase, [64 x i8], float, [3 x float], [3 x float], [3 x [3 x float]], i32, [3 x float], [3 x float], [4 x [4 x float]], float, float, float, float, float, float, float, float, float, float, [3 x float], i32, i16, [1 x i16] }
%struct.bNodeTree = type { %struct.ID, ptr, ptr, [64 x i8], ptr, ptr, [2 x float], %struct.ListBase, %struct.ListBase, i32, i32, i32, i32, i32, i16, i16, i32, i32, i16, i16, i32, %struct.rctf, %struct.ListBase, %struct.ListBase, ptr, %struct.bNodeInstanceKey, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.bNodeInstanceKey = type { i32 }
%struct.bNode = type { ptr, ptr, ptr, ptr, ptr, [64 x i8], [64 x i8], i32, i16, i16, i16, i16, i16, i16, i16, i16, [3 x float], %struct.ListBase, %struct.ListBase, ptr, ptr, ptr, ptr, %struct.ListBase, float, float, float, float, float, float, float, i32, [64 x i8], i16, i16, float, float, i16, i16, ptr, %struct.rctf, %struct.rctf, %struct.rctf, i16, i16, i32, ptr }
%struct.NodeBlurData = type { i16, i16, i16, i16, i16, i16, i16, i16, float, float, float, i16, i8, i8, i32, i32 }
%struct.NodeHueSat = type { float, float, float }
%struct.MTFace = type { [4 x [2 x float]], ptr, i8, i8, i16, i16, i16 }
%struct.CustomDataLayer = type { i32, i32, i32, i32, i32, i32, i32, i32, [64 x i8], ptr }
%struct.NodeImageAnim = type { i32, i32, i32, i8, i8, i16 }
%struct.Effect = type { ptr, ptr, i16, i16, i16, i16 }
%struct.IDProperty = type { ptr, ptr, i8, i8, i16, [64 x i8], i32, %struct.IDPropertyData, i32, i32 }
%struct.IDPropertyData = type { ptr, %struct.ListBase, i32, i32 }

@.str = private unnamed_addr constant [10 x i8] c"AutoTrack\00", align 1
@MEM_callocN = external local_unnamed_addr global ptr, align 8
@.str.1 = private unnamed_addr constant [12 x i8] c"edit ob act\00", align 1
@MEM_freeN = external local_unnamed_addr global ptr, align 8
@.str.2 = private unnamed_addr constant [7 x i8] c".Bfont\00", align 1
@.str.3 = private unnamed_addr constant [10 x i8] c"<builtin>\00", align 1
@.str.5 = private unnamed_addr constant [9 x i8] c"SOFTGOAL\00", align 1
@.str.6 = private unnamed_addr constant [21 x i8] c"Tool Settings Struct\00", align 1
@.str.7 = private unnamed_addr constant [6 x i8] c"Basis\00", align 1
@.str.8 = private unnamed_addr constant [7 x i8] c"Key %d\00", align 1
@.str.9 = private unnamed_addr constant [11 x i8] c"Compositor\00", align 1
@.str.10 = private unnamed_addr constant [12 x i8] c"Viewer Node\00", align 1
@.str.11 = private unnamed_addr constant [14 x i8] c"Render Result\00", align 1
@.str.13 = private unnamed_addr constant [12 x i8] c"PyConTarget\00", align 1
@.str.14 = private unnamed_addr constant [16 x i8] c"particle_system\00", align 1
@.str.15 = private unnamed_addr constant [17 x i8] c"ParticleSettings\00", align 1
@.str.16 = private unnamed_addr constant [18 x i8] c"ParticleSystem %i\00", align 1
@MEM_dupallocN = external local_unnamed_addr global ptr, align 8
@MEM_mallocN = external local_unnamed_addr global ptr, align 8
@.str.18 = private unnamed_addr constant [6 x i8] c"mcoln\00", align 1
@.str.19 = private unnamed_addr constant [16 x i8] c"node blur patch\00", align 1
@.str.20 = private unnamed_addr constant [13 x i8] c"NodeGeometry\00", align 1
@.str.21 = private unnamed_addr constant [6 x i8] c"UVMap\00", align 1
@.str.22 = private unnamed_addr constant [11 x i8] c"UVMap.%.3d\00", align 1
@.str.24 = private unnamed_addr constant [9 x i8] c"Col.%.3d\00", align 1
@.str.25 = private unnamed_addr constant [14 x i8] c"ima user node\00", align 1
@.str.26 = private unnamed_addr constant [16 x i8] c"node image user\00", align 1
@.str.27 = private unnamed_addr constant [14 x i8] c"NodeTwoFloats\00", align 1
@str = private unnamed_addr constant [45 x i8] c"Old particle system converted to new system.\00", align 1
@str.29 = private unnamed_addr constant [75 x i8] c"Old memory cache isn't supported for particles, so re-bake the simulation!\00", align 1
@str.30 = private unnamed_addr constant [64 x i8] c"NOTE: ortho render has changed, tweak new Camera 'scale' value.\00", align 1
@str.31 = private unnamed_addr constant [46 x i8] c"Found and fixed bad id property group length.\00", align 1
@switch.table.blo_do_versions_pre250 = private unnamed_addr constant [13 x i16] [i16 3, i16 3, i16 3, i16 1, i16 0, i16 0, i16 4, i16 6, i16 4, i16 3, i16 1, i16 0, i16 1], align 2

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(read, inaccessiblemem: none) uwtable
define dso_local ptr @blo_do_version_give_parteff_245(ptr nocapture noundef readonly %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.Object, ptr %0, i64 0, i32 24
  br label %3

3:                                                ; preds = %7, %1
  %4 = phi ptr [ %2, %1 ], [ %5, %7 ]
  %5 = load ptr, ptr %4, align 8, !tbaa !34
  %6 = icmp eq ptr %5, null
  br i1 %6, label %11, label %7

7:                                                ; preds = %3
  %8 = getelementptr inbounds %struct.PartEff, ptr %5, i64 0, i32 2
  %9 = load i16, ptr %8, align 8, !tbaa !38
  %10 = icmp eq i16 %9, 1
  br i1 %10, label %11, label %3, !llvm.loop !43

11:                                               ; preds = %3, %7
  ret ptr %5
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @blo_do_version_old_trackto_to_constraints(ptr noundef %0) local_unnamed_addr #2 {
  %2 = getelementptr inbounds %struct.Object, ptr %0, i64 0, i32 10
  %3 = load ptr, ptr %2, align 8, !tbaa !45
  %4 = icmp eq ptr %3, null
  br i1 %4, label %18, label %5

5:                                                ; preds = %1
  %6 = tail call ptr @BKE_constraint_add_for_object(ptr noundef nonnull %0, ptr noundef nonnull @.str, i16 noundef signext 2) #15
  %7 = getelementptr inbounds %struct.bConstraint, ptr %6, i64 0, i32 2
  %8 = load ptr, ptr %7, align 8, !tbaa !51
  %9 = load ptr, ptr %2, align 8, !tbaa !45
  store ptr %9, ptr %8, align 8, !tbaa !53
  %10 = getelementptr inbounds %struct.Object, ptr %0, i64 0, i32 57
  %11 = load i16, ptr %10, align 4, !tbaa !55
  %12 = sext i16 %11 to i32
  %13 = getelementptr inbounds %struct.bTrackToConstraint, ptr %8, i64 0, i32 1
  store i32 %12, ptr %13, align 8, !tbaa !56
  %14 = getelementptr inbounds %struct.Object, ptr %0, i64 0, i32 58
  %15 = load i16, ptr %14, align 2, !tbaa !57
  %16 = sext i16 %15 to i32
  %17 = getelementptr inbounds %struct.bTrackToConstraint, ptr %8, i64 0, i32 2
  store i32 %16, ptr %17, align 4, !tbaa !58
  br label %18

18:                                               ; preds = %5, %1
  store ptr null, ptr %2, align 8, !tbaa !45
  ret void
}

; Function Attrs: optsize
declare ptr @BKE_constraint_add_for_object(ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #3

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @blo_do_versions_pre250(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #2 {
  %4 = alloca %struct.SeqIterator, align 8
  %5 = alloca %struct.SeqIterator, align 8
  %6 = alloca %struct.SeqIterator, align 8
  %7 = getelementptr inbounds %struct.Main, ptr %2, i64 0, i32 3
  %8 = load i16, ptr %7, align 8, !tbaa !59
  %9 = icmp eq i16 %8, 100
  br i1 %9, label %10, label %37

10:                                               ; preds = %3
  %11 = getelementptr inbounds %struct.Main, ptr %2, i64 0, i32 18
  %12 = load ptr, ptr %11, align 8, !tbaa !34
  %13 = icmp eq ptr %12, null
  br i1 %13, label %39, label %14

14:                                               ; preds = %10, %34
  %15 = phi ptr [ %35, %34 ], [ %12, %10 ]
  %16 = getelementptr inbounds %struct.ID, ptr %15, i64 0, i32 5
  %17 = load i16, ptr %16, align 2, !tbaa !61
  %18 = and i16 %17, 32
  %19 = icmp eq i16 %18, 0
  br i1 %19, label %34, label %20

20:                                               ; preds = %14
  %21 = getelementptr inbounds %struct.Tex, ptr %15, i64 0, i32 42
  %22 = load i16, ptr %21, align 8, !tbaa !64
  %23 = icmp eq i16 %22, 0
  br i1 %23, label %24, label %34

24:                                               ; preds = %20
  %25 = getelementptr inbounds %struct.Tex, ptr %15, i64 0, i32 40
  %26 = load i16, ptr %25, align 4, !tbaa !65
  %27 = icmp eq i16 %26, 0
  br i1 %27, label %28, label %32

28:                                               ; preds = %24
  %29 = getelementptr inbounds %struct.Tex, ptr %15, i64 0, i32 41
  %30 = load i16, ptr %29, align 2, !tbaa !66
  %31 = icmp eq i16 %30, 0
  br i1 %31, label %33, label %32

32:                                               ; preds = %28, %24
  store i16 3, ptr %21, align 8, !tbaa !64
  br label %34

33:                                               ; preds = %28
  store i16 1, ptr %21, align 8, !tbaa !64
  store i16 1, ptr %29, align 2, !tbaa !66
  store i16 1, ptr %25, align 4, !tbaa !65
  br label %34

34:                                               ; preds = %20, %33, %32, %14
  %35 = load ptr, ptr %15, align 8, !tbaa !34
  %36 = icmp eq ptr %35, null
  br i1 %36, label %37, label %14, !llvm.loop !67

37:                                               ; preds = %34, %3
  %38 = icmp slt i16 %8, 102
  br i1 %38, label %39, label %50

39:                                               ; preds = %10, %37
  %40 = getelementptr inbounds %struct.Main, ptr %2, i64 0, i32 11
  %41 = load ptr, ptr %40, align 8, !tbaa !34
  %42 = icmp eq ptr %41, null
  br i1 %42, label %52, label %43

43:                                               ; preds = %39, %43
  %44 = phi ptr [ %48, %43 ], [ %41, %39 ]
  %45 = getelementptr inbounds %struct.Scene, ptr %44, i64 0, i32 22, i32 12
  store i32 100, ptr %45, align 4, !tbaa !68
  %46 = getelementptr inbounds %struct.Scene, ptr %44, i64 0, i32 22, i32 11
  store i32 100, ptr %46, align 8, !tbaa !87
  %47 = getelementptr inbounds %struct.Scene, ptr %44, i64 0, i32 22, i32 15
  store float 1.000000e+00, ptr %47, align 4, !tbaa !88
  %48 = load ptr, ptr %44, align 8, !tbaa !34
  %49 = icmp eq ptr %48, null
  br i1 %49, label %50, label %43, !llvm.loop !89

50:                                               ; preds = %43, %37
  %51 = icmp slt i16 %8, 103
  br i1 %51, label %52, label %61

52:                                               ; preds = %39, %50
  %53 = getelementptr inbounds %struct.Main, ptr %2, i64 0, i32 17
  %54 = load ptr, ptr %53, align 8, !tbaa !34
  %55 = icmp eq ptr %54, null
  br i1 %55, label %63, label %56

56:                                               ; preds = %52, %56
  %57 = phi ptr [ %59, %56 ], [ %54, %52 ]
  %58 = getelementptr inbounds %struct.Material, ptr %57, i64 0, i32 25
  store float 1.000000e+00, ptr %58, align 8, !tbaa !90
  %59 = load ptr, ptr %57, align 8, !tbaa !34
  %60 = icmp eq ptr %59, null
  br i1 %60, label %61, label %56, !llvm.loop !94

61:                                               ; preds = %56, %50
  %62 = icmp slt i16 %8, 104
  br i1 %62, label %63, label %95

63:                                               ; preds = %52, %61
  %64 = getelementptr inbounds %struct.Main, ptr %2, i64 0, i32 13
  %65 = load ptr, ptr %64, align 8, !tbaa !34
  %66 = icmp eq ptr %65, null
  br i1 %66, label %97, label %67

67:                                               ; preds = %63, %92
  %68 = phi ptr [ %93, %92 ], [ %65, %63 ]
  %69 = getelementptr inbounds %struct.Object, ptr %68, i64 0, i32 54
  store i16 0, ptr %69, align 2, !tbaa !95
  %70 = getelementptr inbounds %struct.Object, ptr %68, i64 0, i32 31
  %71 = load i32, ptr %70, align 8, !tbaa !96
  %72 = icmp sgt i32 %71, 0
  br i1 %72, label %73, label %92

73:                                               ; preds = %67
  %74 = getelementptr inbounds %struct.Object, ptr %68, i64 0, i32 29
  %75 = load ptr, ptr %74, align 8, !tbaa !97
  %76 = zext nneg i32 %71 to i64
  br label %77

77:                                               ; preds = %73, %88
  %78 = phi i16 [ 0, %73 ], [ %89, %88 ]
  %79 = phi i64 [ 0, %73 ], [ %90, %88 ]
  %80 = getelementptr inbounds ptr, ptr %75, i64 %79
  %81 = load ptr, ptr %80, align 8, !tbaa !34
  %82 = icmp eq ptr %81, null
  br i1 %82, label %88, label %83

83:                                               ; preds = %77
  %84 = trunc i64 %79 to i32
  %85 = shl nuw i32 1, %84
  %86 = trunc i32 %85 to i16
  %87 = or i16 %78, %86
  store i16 %87, ptr %69, align 2, !tbaa !95
  br label %88

88:                                               ; preds = %77, %83
  %89 = phi i16 [ %78, %77 ], [ %87, %83 ]
  %90 = add nuw nsw i64 %79, 1
  %91 = icmp eq i64 %90, %76
  br i1 %91, label %92, label %77, !llvm.loop !98

92:                                               ; preds = %88, %67
  %93 = load ptr, ptr %68, align 8, !tbaa !34
  %94 = icmp eq ptr %93, null
  br i1 %94, label %95, label %67, !llvm.loop !99

95:                                               ; preds = %92, %61
  %96 = icmp slt i16 %8, 105
  br i1 %96, label %97, label %112

97:                                               ; preds = %63, %95
  %98 = getelementptr inbounds %struct.Main, ptr %2, i64 0, i32 13
  %99 = load ptr, ptr %98, align 8, !tbaa !34
  %100 = icmp eq ptr %99, null
  br i1 %100, label %114, label %101

101:                                              ; preds = %97, %109
  %102 = phi ptr [ %110, %109 ], [ %99, %97 ]
  %103 = getelementptr inbounds %struct.Object, ptr %102, i64 0, i32 55
  %104 = load i16, ptr %103, align 8, !tbaa !100
  %105 = and i16 %104, 1
  %106 = icmp eq i16 %105, 0
  br i1 %106, label %109, label %107

107:                                              ; preds = %101
  %108 = add nsw i16 %104, -1
  store i16 %108, ptr %103, align 8, !tbaa !100
  br label %109

109:                                              ; preds = %107, %101
  %110 = load ptr, ptr %102, align 8, !tbaa !34
  %111 = icmp eq ptr %110, null
  br i1 %111, label %112, label %101, !llvm.loop !101

112:                                              ; preds = %109, %95
  %113 = icmp slt i16 %8, 106
  br i1 %113, label %114, label %123

114:                                              ; preds = %97, %112
  %115 = getelementptr inbounds %struct.Main, ptr %2, i64 0, i32 13
  %116 = load ptr, ptr %115, align 8, !tbaa !34
  %117 = icmp eq ptr %116, null
  br i1 %117, label %125, label %118

118:                                              ; preds = %114, %118
  %119 = phi ptr [ %121, %118 ], [ %116, %114 ]
  %120 = getelementptr inbounds %struct.Object, ptr %119, i64 0, i32 64
  store <4 x i32> <i32 1, i32 0, i32 1, i32 100>, ptr %120, align 8, !tbaa !102
  %121 = load ptr, ptr %119, align 8, !tbaa !34
  %122 = icmp eq ptr %121, null
  br i1 %122, label %123, label %118, !llvm.loop !103

123:                                              ; preds = %118, %112
  %124 = icmp slt i16 %8, 107
  br i1 %124, label %125, label %140

125:                                              ; preds = %114, %123
  %126 = getelementptr inbounds %struct.Main, ptr %2, i64 0, i32 14
  %127 = load ptr, ptr %126, align 8, !tbaa !34
  %128 = icmp eq ptr %127, null
  br i1 %128, label %143, label %129

129:                                              ; preds = %125, %135
  %130 = phi ptr [ %136, %135 ], [ %127, %125 ]
  %131 = getelementptr inbounds %struct.Mesh, ptr %130, i64 0, i32 18
  %132 = load ptr, ptr %131, align 8, !tbaa !104
  %133 = icmp eq ptr %132, null
  br i1 %133, label %135, label %134

134:                                              ; preds = %129
  tail call fastcc void @vcol_to_fcol(ptr noundef nonnull %130) #16
  br label %135

135:                                              ; preds = %134, %129
  %136 = load ptr, ptr %130, align 8, !tbaa !34
  %137 = icmp eq ptr %136, null
  br i1 %137, label %138, label %129, !llvm.loop !107

138:                                              ; preds = %135
  %139 = load i16, ptr %7, align 8, !tbaa !59
  br label %140

140:                                              ; preds = %138, %123
  %141 = phi i16 [ %139, %138 ], [ %8, %123 ]
  %142 = icmp slt i16 %141, 108
  br i1 %142, label %143, label %168

143:                                              ; preds = %125, %140
  %144 = phi i16 [ %141, %140 ], [ %8, %125 ]
  %145 = getelementptr inbounds %struct.Main, ptr %2, i64 0, i32 11
  %146 = load ptr, ptr %145, align 8, !tbaa !34
  %147 = icmp eq ptr %146, null
  br i1 %147, label %155, label %148

148:                                              ; preds = %143, %148
  %149 = phi ptr [ %153, %148 ], [ %146, %143 ]
  %150 = getelementptr inbounds %struct.Scene, ptr %149, i64 0, i32 22, i32 47
  %151 = load i32, ptr %150, align 8, !tbaa !108
  %152 = or i32 %151, 4
  store i32 %152, ptr %150, align 8, !tbaa !108
  %153 = load ptr, ptr %149, align 8, !tbaa !34
  %154 = icmp eq ptr %153, null
  br i1 %154, label %155, label %148, !llvm.loop !109

155:                                              ; preds = %148, %143
  %156 = getelementptr inbounds %struct.Main, ptr %2, i64 0, i32 13
  %157 = load ptr, ptr %156, align 8, !tbaa !34
  %158 = icmp eq ptr %157, null
  br i1 %158, label %168, label %159

159:                                              ; preds = %155, %165
  %160 = phi ptr [ %166, %165 ], [ %157, %155 ]
  %161 = getelementptr inbounds %struct.Object, ptr %160, i64 0, i32 87
  %162 = load i8, ptr %161, align 2, !tbaa !110
  %163 = icmp eq i8 %162, 0
  br i1 %163, label %164, label %165

164:                                              ; preds = %159
  store i8 3, ptr %161, align 2, !tbaa !110
  br label %165

165:                                              ; preds = %164, %159
  %166 = load ptr, ptr %160, align 8, !tbaa !34
  %167 = icmp eq ptr %166, null
  br i1 %167, label %168, label %159, !llvm.loop !111

168:                                              ; preds = %165, %155, %140
  %169 = phi i16 [ %144, %155 ], [ %141, %140 ], [ %144, %165 ]
  %170 = icmp slt i16 %169, 110
  br i1 %170, label %171, label %204

171:                                              ; preds = %168
  %172 = getelementptr inbounds %struct.Main, ptr %2, i64 0, i32 26
  %173 = load ptr, ptr %172, align 8, !tbaa !34
  %174 = icmp eq ptr %173, null
  br i1 %174, label %206, label %178

175:                                              ; preds = %183, %178
  %176 = load ptr, ptr %179, align 8, !tbaa !34
  %177 = icmp eq ptr %176, null
  br i1 %177, label %204, label %178, !llvm.loop !112

178:                                              ; preds = %171, %175
  %179 = phi ptr [ %176, %175 ], [ %173, %171 ]
  %180 = getelementptr inbounds %struct.bScreen, ptr %179, i64 0, i32 3
  %181 = load ptr, ptr %180, align 8, !tbaa !34
  %182 = icmp eq ptr %181, null
  br i1 %182, label %175, label %186

183:                                              ; preds = %201, %186
  %184 = load ptr, ptr %187, align 8, !tbaa !34
  %185 = icmp eq ptr %184, null
  br i1 %185, label %175, label %186, !llvm.loop !113

186:                                              ; preds = %178, %183
  %187 = phi ptr [ %184, %183 ], [ %181, %178 ]
  %188 = getelementptr inbounds %struct.ScrArea, ptr %187, i64 0, i32 19
  %189 = load ptr, ptr %188, align 8, !tbaa !34
  %190 = icmp eq ptr %189, null
  br i1 %190, label %183, label %191

191:                                              ; preds = %186, %201
  %192 = phi ptr [ %202, %201 ], [ %189, %186 ]
  %193 = getelementptr inbounds %struct.SpaceLink, ptr %192, i64 0, i32 3
  %194 = load i32, ptr %193, align 8, !tbaa !114
  %195 = icmp eq i32 %194, 1
  br i1 %195, label %196, label %201

196:                                              ; preds = %191
  %197 = getelementptr inbounds %struct.View3D, ptr %192, i64 0, i32 37
  %198 = load i16, ptr %197, align 2, !tbaa !116
  %199 = icmp eq i16 %198, 0
  br i1 %199, label %200, label %201

200:                                              ; preds = %196
  store i16 20, ptr %197, align 2, !tbaa !116
  br label %201

201:                                              ; preds = %196, %200, %191
  %202 = load ptr, ptr %192, align 8, !tbaa !34
  %203 = icmp eq ptr %202, null
  br i1 %203, label %183, label %191, !llvm.loop !118

204:                                              ; preds = %175, %168
  %205 = icmp slt i16 %169, 114
  br i1 %205, label %206, label %220

206:                                              ; preds = %171, %204
  %207 = getelementptr inbounds %struct.Main, ptr %2, i64 0, i32 17
  %208 = load ptr, ptr %207, align 8, !tbaa !34
  %209 = icmp eq ptr %208, null
  br i1 %209, label %222, label %210

210:                                              ; preds = %206, %216
  %211 = phi ptr [ %218, %216 ], [ %208, %206 ]
  %212 = getelementptr inbounds %struct.Material, ptr %211, i64 0, i32 60
  %213 = load float, ptr %212, align 8, !tbaa !119
  %214 = fcmp oeq float %213, 0.000000e+00
  br i1 %214, label %215, label %216

215:                                              ; preds = %210
  store float 1.000000e+00, ptr %212, align 8, !tbaa !119
  br label %216

216:                                              ; preds = %215, %210
  %217 = getelementptr inbounds %struct.Material, ptr %211, i64 0, i32 61
  store <2 x float> <float 1.000000e+00, float 1.000000e+00>, ptr %217, align 4, !tbaa !120
  %218 = load ptr, ptr %211, align 8, !tbaa !34
  %219 = icmp eq ptr %218, null
  br i1 %219, label %220, label %210, !llvm.loop !121

220:                                              ; preds = %216, %204
  %221 = icmp slt i16 %169, 135
  br i1 %221, label %222, label %243

222:                                              ; preds = %206, %220
  %223 = getelementptr inbounds %struct.Main, ptr %2, i64 0, i32 18
  %224 = load ptr, ptr %223, align 8, !tbaa !34
  %225 = icmp eq ptr %224, null
  br i1 %225, label %245, label %226

226:                                              ; preds = %222, %240
  %227 = phi ptr [ %241, %240 ], [ %224, %222 ]
  %228 = getelementptr inbounds %struct.Tex, ptr %227, i64 0, i32 7
  %229 = load float, ptr %228, align 4, !tbaa !122
  %230 = fcmp oeq float %229, 0.000000e+00
  br i1 %230, label %231, label %240

231:                                              ; preds = %226
  %232 = getelementptr inbounds %struct.Tex, ptr %227, i64 0, i32 8
  %233 = load float, ptr %232, align 8, !tbaa !123
  %234 = fcmp oeq float %233, 0.000000e+00
  br i1 %234, label %235, label %240

235:                                              ; preds = %231
  %236 = getelementptr inbounds %struct.Tex, ptr %227, i64 0, i32 9
  %237 = load float, ptr %236, align 4, !tbaa !124
  %238 = fcmp oeq float %237, 0.000000e+00
  br i1 %238, label %239, label %240

239:                                              ; preds = %235
  store <4 x float> <float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float 1.000000e+00>, ptr %228, align 4, !tbaa !120
  br label %240

240:                                              ; preds = %239, %235, %231, %226
  %241 = load ptr, ptr %227, align 8, !tbaa !34
  %242 = icmp eq ptr %241, null
  br i1 %242, label %243, label %226, !llvm.loop !125

243:                                              ; preds = %240, %220
  %244 = icmp slt i16 %169, 141
  br i1 %244, label %245, label %266

245:                                              ; preds = %222, %243
  %246 = getelementptr inbounds %struct.Main, ptr %2, i64 0, i32 18
  %247 = load ptr, ptr %246, align 8, !tbaa !34
  %248 = icmp eq ptr %247, null
  br i1 %248, label %268, label %249

249:                                              ; preds = %245, %263
  %250 = phi ptr [ %264, %263 ], [ %247, %245 ]
  %251 = getelementptr inbounds %struct.Tex, ptr %250, i64 0, i32 7
  %252 = load float, ptr %251, align 4, !tbaa !122
  %253 = fcmp oeq float %252, 0.000000e+00
  br i1 %253, label %254, label %263

254:                                              ; preds = %249
  %255 = getelementptr inbounds %struct.Tex, ptr %250, i64 0, i32 8
  %256 = load float, ptr %255, align 8, !tbaa !123
  %257 = fcmp oeq float %256, 0.000000e+00
  br i1 %257, label %258, label %263

258:                                              ; preds = %254
  %259 = getelementptr inbounds %struct.Tex, ptr %250, i64 0, i32 9
  %260 = load float, ptr %259, align 4, !tbaa !124
  %261 = fcmp oeq float %260, 0.000000e+00
  br i1 %261, label %262, label %263

262:                                              ; preds = %258
  store <4 x float> <float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float 1.000000e+00>, ptr %251, align 4, !tbaa !120
  br label %263

263:                                              ; preds = %262, %258, %254, %249
  %264 = load ptr, ptr %250, align 8, !tbaa !34
  %265 = icmp eq ptr %264, null
  br i1 %265, label %266, label %249, !llvm.loop !126

266:                                              ; preds = %263, %243
  %267 = icmp slt i16 %169, 154
  br i1 %267, label %268, label %281

268:                                              ; preds = %245, %266
  %269 = getelementptr inbounds %struct.Main, ptr %2, i64 0, i32 11
  %270 = load ptr, ptr %269, align 8, !tbaa !34
  %271 = icmp eq ptr %270, null
  br i1 %271, label %283, label %272

272:                                              ; preds = %268, %278
  %273 = phi ptr [ %279, %278 ], [ %270, %268 ]
  %274 = getelementptr inbounds %struct.Scene, ptr %273, i64 0, i32 22, i32 16
  %275 = load float, ptr %274, align 8, !tbaa !127
  %276 = fcmp oeq float %275, 0.000000e+00
  br i1 %276, label %277, label %278

277:                                              ; preds = %272
  store float 1.000000e+00, ptr %274, align 8, !tbaa !127
  br label %278

278:                                              ; preds = %277, %272
  %279 = load ptr, ptr %273, align 8, !tbaa !34
  %280 = icmp eq ptr %279, null
  br i1 %280, label %281, label %272, !llvm.loop !128

281:                                              ; preds = %278, %266
  %282 = icmp slt i16 %169, 164
  br i1 %282, label %283, label %296

283:                                              ; preds = %268, %281
  %284 = getelementptr inbounds %struct.Main, ptr %2, i64 0, i32 11
  %285 = load ptr, ptr %284, align 8, !tbaa !34
  %286 = icmp eq ptr %285, null
  br i1 %286, label %298, label %287

287:                                              ; preds = %283, %293
  %288 = phi ptr [ %294, %293 ], [ %285, %283 ]
  %289 = getelementptr inbounds %struct.Scene, ptr %288, i64 0, i32 22, i32 55
  %290 = load i16, ptr %289, align 4, !tbaa !129
  %291 = icmp eq i16 %290, 0
  br i1 %291, label %292, label %293

292:                                              ; preds = %287
  store i16 25, ptr %289, align 4, !tbaa !129
  br label %293

293:                                              ; preds = %292, %287
  %294 = load ptr, ptr %288, align 8, !tbaa !34
  %295 = icmp eq ptr %294, null
  br i1 %295, label %296, label %287, !llvm.loop !130

296:                                              ; preds = %293, %281
  %297 = icmp slt i16 %169, 165
  br i1 %297, label %298, label %307

298:                                              ; preds = %283, %296
  %299 = getelementptr inbounds %struct.Main, ptr %2, i64 0, i32 14
  %300 = load ptr, ptr %299, align 8, !tbaa !34
  %301 = icmp eq ptr %300, null
  br i1 %301, label %309, label %302

302:                                              ; preds = %298, %302
  %303 = phi ptr [ %305, %302 ], [ %300, %298 ]
  %304 = getelementptr inbounds %struct.Mesh, ptr %303, i64 0, i32 39
  store float 3.000000e+01, ptr %304, align 8, !tbaa !131
  %305 = load ptr, ptr %303, align 8, !tbaa !34
  %306 = icmp eq ptr %305, null
  br i1 %306, label %307, label %302, !llvm.loop !132

307:                                              ; preds = %302, %296
  %308 = icmp slt i16 %169, 166
  br i1 %308, label %309, label %393

309:                                              ; preds = %298, %307
  %310 = getelementptr inbounds %struct.Main, ptr %2, i64 0, i32 14
  %311 = load ptr, ptr %310, align 8, !tbaa !34
  %312 = icmp eq ptr %311, null
  br i1 %312, label %396, label %313

313:                                              ; preds = %309, %388
  %314 = phi ptr [ %389, %388 ], [ %311, %309 ]
  %315 = getelementptr inbounds %struct.Mesh, ptr %314, i64 0, i32 14
  %316 = load ptr, ptr %315, align 8, !tbaa !133
  %317 = icmp eq ptr %316, null
  br i1 %317, label %388, label %318

318:                                              ; preds = %313
  %319 = getelementptr inbounds %struct.Mesh, ptr %314, i64 0, i32 28
  %320 = load i32, ptr %319, align 8, !tbaa !134
  %321 = icmp eq i32 %320, 0
  br i1 %321, label %388, label %322

322:                                              ; preds = %318, %322
  %323 = phi ptr [ %386, %322 ], [ %316, %318 ]
  %324 = phi i32 [ %325, %322 ], [ %320, %318 ]
  %325 = add nsw i32 %324, -1
  %326 = getelementptr inbounds i8, ptr %323, i64 41
  %327 = load i8, ptr %326, align 1, !tbaa !135
  %328 = icmp ugt i8 %327, 126
  %329 = shl nuw i8 %327, 1
  %330 = select i1 %328, i8 -1, i8 %329
  store i8 %330, ptr %326, align 1, !tbaa !135
  %331 = getelementptr inbounds i8, ptr %323, i64 42
  %332 = load i8, ptr %331, align 1, !tbaa !135
  %333 = icmp ugt i8 %332, 126
  %334 = shl nuw i8 %332, 1
  %335 = select i1 %333, i8 -1, i8 %334
  store i8 %335, ptr %331, align 1, !tbaa !135
  %336 = getelementptr inbounds i8, ptr %323, i64 43
  %337 = load i8, ptr %336, align 1, !tbaa !135
  %338 = icmp ugt i8 %337, 126
  %339 = shl nuw i8 %337, 1
  %340 = select i1 %338, i8 -1, i8 %339
  store i8 %340, ptr %336, align 1, !tbaa !135
  %341 = getelementptr inbounds i8, ptr %323, i64 45
  %342 = load i8, ptr %341, align 1, !tbaa !135
  %343 = icmp ugt i8 %342, 126
  %344 = shl nuw i8 %342, 1
  %345 = select i1 %343, i8 -1, i8 %344
  store i8 %345, ptr %341, align 1, !tbaa !135
  %346 = getelementptr inbounds i8, ptr %323, i64 46
  %347 = load i8, ptr %346, align 1, !tbaa !135
  %348 = icmp ugt i8 %347, 126
  %349 = shl nuw i8 %347, 1
  %350 = select i1 %348, i8 -1, i8 %349
  store i8 %350, ptr %346, align 1, !tbaa !135
  %351 = getelementptr inbounds i8, ptr %323, i64 47
  %352 = load i8, ptr %351, align 1, !tbaa !135
  %353 = icmp ugt i8 %352, 126
  %354 = shl nuw i8 %352, 1
  %355 = select i1 %353, i8 -1, i8 %354
  store i8 %355, ptr %351, align 1, !tbaa !135
  %356 = getelementptr inbounds i8, ptr %323, i64 49
  %357 = load i8, ptr %356, align 1, !tbaa !135
  %358 = icmp ugt i8 %357, 126
  %359 = shl nuw i8 %357, 1
  %360 = select i1 %358, i8 -1, i8 %359
  store i8 %360, ptr %356, align 1, !tbaa !135
  %361 = getelementptr inbounds i8, ptr %323, i64 50
  %362 = load i8, ptr %361, align 1, !tbaa !135
  %363 = icmp ugt i8 %362, 126
  %364 = shl nuw i8 %362, 1
  %365 = select i1 %363, i8 -1, i8 %364
  store i8 %365, ptr %361, align 1, !tbaa !135
  %366 = getelementptr inbounds i8, ptr %323, i64 51
  %367 = load i8, ptr %366, align 1, !tbaa !135
  %368 = icmp ugt i8 %367, 126
  %369 = shl nuw i8 %367, 1
  %370 = select i1 %368, i8 -1, i8 %369
  store i8 %370, ptr %366, align 1, !tbaa !135
  %371 = getelementptr inbounds i8, ptr %323, i64 53
  %372 = load i8, ptr %371, align 1, !tbaa !135
  %373 = icmp ugt i8 %372, 126
  %374 = shl nuw i8 %372, 1
  %375 = select i1 %373, i8 -1, i8 %374
  store i8 %375, ptr %371, align 1, !tbaa !135
  %376 = getelementptr inbounds i8, ptr %323, i64 54
  %377 = load i8, ptr %376, align 1, !tbaa !135
  %378 = icmp ugt i8 %377, 126
  %379 = shl nuw i8 %377, 1
  %380 = select i1 %378, i8 -1, i8 %379
  store i8 %380, ptr %376, align 1, !tbaa !135
  %381 = getelementptr inbounds i8, ptr %323, i64 55
  %382 = load i8, ptr %381, align 1, !tbaa !135
  %383 = icmp ugt i8 %382, 126
  %384 = shl nuw i8 %382, 1
  %385 = select i1 %383, i8 -1, i8 %384
  store i8 %385, ptr %381, align 1, !tbaa !135
  %386 = getelementptr inbounds %struct.TFace, ptr %323, i64 1
  %387 = icmp eq i32 %325, 0
  br i1 %387, label %388, label %322, !llvm.loop !136

388:                                              ; preds = %322, %318, %313
  %389 = load ptr, ptr %314, align 8, !tbaa !34
  %390 = icmp eq ptr %389, null
  br i1 %390, label %391, label %313, !llvm.loop !137

391:                                              ; preds = %388
  %392 = load i16, ptr %7, align 8, !tbaa !59
  br label %393

393:                                              ; preds = %391, %307
  %394 = phi i16 [ %392, %391 ], [ %169, %307 ]
  %395 = icmp slt i16 %394, 170
  br i1 %395, label %396, label %440

396:                                              ; preds = %309, %393
  %397 = phi i16 [ %394, %393 ], [ %169, %309 ]
  %398 = getelementptr inbounds %struct.Main, ptr %2, i64 0, i32 14
  %399 = load ptr, ptr %398, align 8, !tbaa !34
  %400 = icmp eq ptr %399, null
  br i1 %400, label %410, label %401

401:                                              ; preds = %396, %407
  %402 = phi ptr [ %408, %407 ], [ %399, %396 ]
  %403 = getelementptr inbounds %struct.Mesh, ptr %402, i64 0, i32 43
  %404 = load i8, ptr %403, align 2, !tbaa !138
  %405 = icmp eq i8 %404, 0
  br i1 %405, label %406, label %407

406:                                              ; preds = %401
  store i8 1, ptr %403, align 2, !tbaa !138
  br label %407

407:                                              ; preds = %406, %401
  %408 = load ptr, ptr %402, align 8, !tbaa !34
  %409 = icmp eq ptr %408, null
  br i1 %409, label %410, label %401, !llvm.loop !139

410:                                              ; preds = %407, %396
  %411 = getelementptr inbounds %struct.Main, ptr %2, i64 0, i32 26
  %412 = load ptr, ptr %411, align 8, !tbaa !34
  %413 = icmp eq ptr %412, null
  br i1 %413, label %440, label %417

414:                                              ; preds = %422, %417
  %415 = load ptr, ptr %418, align 8, !tbaa !34
  %416 = icmp eq ptr %415, null
  br i1 %416, label %440, label %417, !llvm.loop !140

417:                                              ; preds = %410, %414
  %418 = phi ptr [ %415, %414 ], [ %412, %410 ]
  %419 = getelementptr inbounds %struct.bScreen, ptr %418, i64 0, i32 3
  %420 = load ptr, ptr %419, align 8, !tbaa !34
  %421 = icmp eq ptr %420, null
  br i1 %421, label %414, label %425

422:                                              ; preds = %437, %425
  %423 = load ptr, ptr %426, align 8, !tbaa !34
  %424 = icmp eq ptr %423, null
  br i1 %424, label %414, label %425, !llvm.loop !141

425:                                              ; preds = %417, %422
  %426 = phi ptr [ %423, %422 ], [ %420, %417 ]
  %427 = getelementptr inbounds %struct.ScrArea, ptr %426, i64 0, i32 19
  %428 = load ptr, ptr %427, align 8, !tbaa !34
  %429 = icmp eq ptr %428, null
  br i1 %429, label %422, label %430

430:                                              ; preds = %425, %437
  %431 = phi ptr [ %438, %437 ], [ %428, %425 ]
  %432 = getelementptr inbounds %struct.SpaceLink, ptr %431, i64 0, i32 3
  %433 = load i32, ptr %432, align 8, !tbaa !114
  %434 = icmp eq i32 %433, 2
  br i1 %434, label %435, label %437

435:                                              ; preds = %430
  %436 = getelementptr inbounds %struct.SpaceIpo, ptr %431, i64 0, i32 6, i32 6
  store float 1.500000e+04, ptr %436, align 8, !tbaa !120
  br label %437

437:                                              ; preds = %435, %430
  %438 = load ptr, ptr %431, align 8, !tbaa !34
  %439 = icmp eq ptr %438, null
  br i1 %439, label %422, label %430, !llvm.loop !142

440:                                              ; preds = %414, %410, %393
  %441 = phi i16 [ %397, %410 ], [ %394, %393 ], [ %397, %414 ]
  %442 = icmp slt i16 %441, 171
  br i1 %442, label %443, label %459

443:                                              ; preds = %440
  %444 = getelementptr inbounds %struct.Main, ptr %2, i64 0, i32 13
  %445 = load ptr, ptr %444, align 8, !tbaa !34
  %446 = icmp eq ptr %445, null
  br i1 %446, label %461, label %447

447:                                              ; preds = %443, %456
  %448 = phi ptr [ %457, %456 ], [ %445, %443 ]
  %449 = tail call ptr @blo_do_version_give_parteff_245(ptr noundef nonnull %448) #16
  %450 = icmp eq ptr %449, null
  br i1 %450, label %456, label %451

451:                                              ; preds = %447
  %452 = getelementptr inbounds %struct.PartEff, ptr %449, i64 0, i32 32
  %453 = load i16, ptr %452, align 8, !tbaa !143
  %454 = icmp eq i16 %453, 0
  br i1 %454, label %455, label %456

455:                                              ; preds = %451
  store i16 5, ptr %452, align 8, !tbaa !143
  br label %456

456:                                              ; preds = %451, %455, %447
  %457 = load ptr, ptr %448, align 8, !tbaa !34
  %458 = icmp eq ptr %457, null
  br i1 %458, label %459, label %447, !llvm.loop !144

459:                                              ; preds = %456, %440
  %460 = icmp slt i16 %441, 172
  br i1 %460, label %461, label %491

461:                                              ; preds = %443, %459
  %462 = getelementptr inbounds %struct.Main, ptr %2, i64 0, i32 26
  %463 = load ptr, ptr %462, align 8, !tbaa !34
  %464 = icmp eq ptr %463, null
  br i1 %464, label %493, label %468

465:                                              ; preds = %473, %468
  %466 = load ptr, ptr %469, align 8, !tbaa !34
  %467 = icmp eq ptr %466, null
  br i1 %467, label %491, label %468, !llvm.loop !145

468:                                              ; preds = %461, %465
  %469 = phi ptr [ %466, %465 ], [ %463, %461 ]
  %470 = getelementptr inbounds %struct.bScreen, ptr %469, i64 0, i32 3
  %471 = load ptr, ptr %470, align 8, !tbaa !34
  %472 = icmp eq ptr %471, null
  br i1 %472, label %465, label %476

473:                                              ; preds = %488, %476
  %474 = load ptr, ptr %477, align 8, !tbaa !34
  %475 = icmp eq ptr %474, null
  br i1 %475, label %465, label %476, !llvm.loop !146

476:                                              ; preds = %468, %473
  %477 = phi ptr [ %474, %473 ], [ %471, %468 ]
  %478 = getelementptr inbounds %struct.ScrArea, ptr %477, i64 0, i32 19
  %479 = load ptr, ptr %478, align 8, !tbaa !34
  %480 = icmp eq ptr %479, null
  br i1 %480, label %473, label %481

481:                                              ; preds = %476, %488
  %482 = phi ptr [ %489, %488 ], [ %479, %476 ]
  %483 = getelementptr inbounds %struct.SpaceLink, ptr %482, i64 0, i32 3
  %484 = load i32, ptr %483, align 8, !tbaa !114
  %485 = icmp eq i32 %484, 9
  br i1 %485, label %486, label %488

486:                                              ; preds = %481
  %487 = getelementptr inbounds %struct.SpaceText, ptr %482, i64 0, i32 11
  store i16 12, ptr %487, align 4, !tbaa !147
  br label %488

488:                                              ; preds = %486, %481
  %489 = load ptr, ptr %482, align 8, !tbaa !34
  %490 = icmp eq ptr %489, null
  br i1 %490, label %473, label %481, !llvm.loop !149

491:                                              ; preds = %465, %459
  %492 = icmp slt i16 %441, 174
  br i1 %492, label %493, label %523

493:                                              ; preds = %461, %491
  %494 = getelementptr inbounds %struct.Main, ptr %2, i64 0, i32 14
  %495 = load ptr, ptr %494, align 8, !tbaa !34
  %496 = icmp eq ptr %495, null
  br i1 %496, label %525, label %497

497:                                              ; preds = %493, %520
  %498 = phi ptr [ %521, %520 ], [ %495, %493 ]
  %499 = getelementptr inbounds %struct.Mesh, ptr %498, i64 0, i32 14
  %500 = load ptr, ptr %499, align 8, !tbaa !133
  %501 = icmp eq ptr %500, null
  br i1 %501, label %520, label %502

502:                                              ; preds = %497
  %503 = getelementptr inbounds %struct.Mesh, ptr %498, i64 0, i32 28
  %504 = load i32, ptr %503, align 8, !tbaa !134
  %505 = icmp sgt i32 %504, 0
  br i1 %505, label %506, label %520

506:                                              ; preds = %502, %506
  %507 = phi i32 [ %517, %506 ], [ 0, %502 ]
  %508 = phi ptr [ %518, %506 ], [ %500, %502 ]
  %509 = getelementptr inbounds %struct.TFace, ptr %508, i64 0, i32 1, i64 0
  %510 = load <8 x float>, ptr %509, align 4, !tbaa !120
  %511 = shufflevector <8 x float> %510, <8 x float> poison, <4 x i32> <i32 0, i32 2, i32 4, i32 6>
  %512 = shufflevector <8 x float> %510, <8 x float> poison, <4 x i32> <i32 1, i32 3, i32 5, i32 7>
  %513 = fdiv <4 x float> %511, <float 3.276700e+04, float 3.276700e+04, float 3.276700e+04, float 3.276700e+04>
  %514 = fdiv <4 x float> %512, <float 3.276700e+04, float 3.276700e+04, float 3.276700e+04, float 3.276700e+04>
  %515 = getelementptr inbounds %struct.TFace, ptr %508, i64 0, i32 1
  %516 = shufflevector <4 x float> %513, <4 x float> %514, <8 x i32> <i32 0, i32 4, i32 1, i32 5, i32 2, i32 6, i32 3, i32 7>
  store <8 x float> %516, ptr %515, align 4, !tbaa !120
  %517 = add nuw nsw i32 %507, 1
  %518 = getelementptr inbounds %struct.TFace, ptr %508, i64 1
  %519 = icmp eq i32 %517, %504
  br i1 %519, label %520, label %506, !llvm.loop !150

520:                                              ; preds = %506, %502, %497
  %521 = load ptr, ptr %498, align 8, !tbaa !34
  %522 = icmp eq ptr %521, null
  br i1 %522, label %523, label %497, !llvm.loop !151

523:                                              ; preds = %520, %491
  %524 = icmp slt i16 %441, 192
  br i1 %524, label %525, label %549

525:                                              ; preds = %493, %523
  %526 = getelementptr inbounds %struct.Main, ptr %2, i64 0, i32 13
  %527 = load ptr, ptr %526, align 8, !tbaa !152
  %528 = getelementptr inbounds %struct.Main, ptr %2, i64 0, i32 17
  %529 = load ptr, ptr %528, align 8, !tbaa !34
  %530 = icmp eq ptr %529, null
  br i1 %530, label %531, label %533

531:                                              ; preds = %541, %525
  %532 = icmp eq ptr %527, null
  br i1 %532, label %549, label %544

533:                                              ; preds = %525, %541
  %534 = phi ptr [ %542, %541 ], [ %529, %525 ]
  %535 = getelementptr inbounds %struct.Material, ptr %534, i64 0, i32 51
  %536 = load i32, ptr %535, align 4, !tbaa !153
  %537 = and i32 %536, 32
  %538 = icmp eq i32 %537, 0
  br i1 %538, label %539, label %541

539:                                              ; preds = %533
  %540 = getelementptr inbounds %struct.Material, ptr %534, i64 0, i32 25
  store float 0.000000e+00, ptr %540, align 8, !tbaa !90
  br label %541

541:                                              ; preds = %539, %533
  %542 = load ptr, ptr %534, align 8, !tbaa !34
  %543 = icmp eq ptr %542, null
  br i1 %543, label %531, label %533, !llvm.loop !154

544:                                              ; preds = %531, %544
  %545 = phi ptr [ %547, %544 ], [ %527, %531 ]
  %546 = getelementptr inbounds %struct.Object, ptr %545, i64 0, i32 69
  store <2 x float> <float 1.000000e+00, float 0x3FB99999A0000000>, ptr %546, align 4, !tbaa !120
  %547 = load ptr, ptr %545, align 8, !tbaa !155
  %548 = icmp eq ptr %547, null
  br i1 %548, label %549, label %544, !llvm.loop !156

549:                                              ; preds = %544, %531, %523
  %550 = icmp slt i16 %441, 194
  br i1 %550, label %551, label %561

551:                                              ; preds = %549
  %552 = getelementptr inbounds %struct.Main, ptr %2, i64 0, i32 13
  %553 = load ptr, ptr %552, align 8, !tbaa !34
  %554 = icmp eq ptr %553, null
  br i1 %554, label %563, label %555

555:                                              ; preds = %551, %555
  %556 = phi ptr [ %559, %555 ], [ %553, %551 ]
  %557 = getelementptr inbounds %struct.Object, ptr %556, i64 0, i32 71
  store float 1.000000e+00, ptr %557, align 4, !tbaa !157
  %558 = getelementptr inbounds %struct.Object, ptr %556, i64 0, i32 73
  store float 0x3FB99999A0000000, ptr %558, align 4, !tbaa !158
  %559 = load ptr, ptr %556, align 8, !tbaa !34
  %560 = icmp eq ptr %559, null
  br i1 %560, label %561, label %555, !llvm.loop !159

561:                                              ; preds = %555, %549
  %562 = icmp slt i16 %441, 197
  br i1 %562, label %563, label %589

563:                                              ; preds = %551, %561
  %564 = getelementptr inbounds %struct.Main, ptr %2, i64 0, i32 14
  %565 = load ptr, ptr %564, align 8, !tbaa !34
  %566 = icmp eq ptr %565, null
  br i1 %566, label %591, label %567

567:                                              ; preds = %563, %586
  %568 = phi ptr [ %587, %586 ], [ %565, %563 ]
  %569 = getelementptr inbounds %struct.Mesh, ptr %568, i64 0, i32 14
  %570 = load ptr, ptr %569, align 8, !tbaa !133
  %571 = icmp eq ptr %570, null
  br i1 %571, label %586, label %572

572:                                              ; preds = %567
  %573 = getelementptr inbounds %struct.Mesh, ptr %568, i64 0, i32 28
  %574 = load i32, ptr %573, align 8, !tbaa !134
  %575 = icmp sgt i32 %574, 0
  br i1 %575, label %576, label %586

576:                                              ; preds = %572, %576
  %577 = phi i32 [ %583, %576 ], [ 0, %572 ]
  %578 = phi ptr [ %584, %576 ], [ %570, %572 ]
  %579 = getelementptr inbounds %struct.TFace, ptr %578, i64 0, i32 5
  %580 = load i16, ptr %579, align 2, !tbaa !160
  %581 = and i16 %580, -1026
  %582 = or disjoint i16 %581, 1
  store i16 %582, ptr %579, align 2, !tbaa !160
  %583 = add nuw nsw i32 %577, 1
  %584 = getelementptr inbounds %struct.TFace, ptr %578, i64 1
  %585 = icmp eq i32 %583, %574
  br i1 %585, label %586, label %576, !llvm.loop !162

586:                                              ; preds = %576, %572, %567
  %587 = load ptr, ptr %568, align 8, !tbaa !34
  %588 = icmp eq ptr %587, null
  br i1 %588, label %589, label %567, !llvm.loop !163

589:                                              ; preds = %586, %561
  %590 = icmp slt i16 %441, 201
  br i1 %590, label %591, label %605

591:                                              ; preds = %563, %589
  %592 = getelementptr inbounds %struct.Main, ptr %2, i64 0, i32 13
  %593 = load ptr, ptr %592, align 8, !tbaa !34
  %594 = icmp eq ptr %593, null
  br i1 %594, label %607, label %595

595:                                              ; preds = %591, %595
  %596 = phi ptr [ %603, %595 ], [ %593, %591 ]
  %597 = getelementptr inbounds %struct.Object, ptr %596, i64 0, i32 99
  %598 = load i32, ptr %597, align 8, !tbaa !164
  %599 = trunc i32 %598 to i16
  %600 = and i16 %599, 4032
  %601 = getelementptr inbounds %struct.Object, ptr %596, i64 0, i32 61
  store i16 %600, ptr %601, align 4, !tbaa !165
  %602 = and i32 %598, -3969
  store i32 %602, ptr %597, align 8, !tbaa !164
  %603 = load ptr, ptr %596, align 8, !tbaa !34
  %604 = icmp eq ptr %603, null
  br i1 %604, label %605, label %595, !llvm.loop !166

605:                                              ; preds = %595, %589
  %606 = icmp slt i16 %441, 202
  br i1 %606, label %607, label %652

607:                                              ; preds = %591, %605
  %608 = getelementptr inbounds %struct.Main, ptr %2, i64 0, i32 13
  %609 = load ptr, ptr %608, align 8, !tbaa !34
  %610 = icmp eq ptr %609, null
  br i1 %610, label %652, label %614

611:                                              ; preds = %649, %614
  %612 = load ptr, ptr %615, align 8, !tbaa !34
  %613 = icmp eq ptr %612, null
  br i1 %613, label %652, label %614, !llvm.loop !167

614:                                              ; preds = %607, %611
  %615 = phi ptr [ %612, %611 ], [ %609, %607 ]
  %616 = getelementptr inbounds %struct.Object, ptr %615, i64 0, i32 94
  %617 = load ptr, ptr %616, align 8, !tbaa !34
  %618 = icmp eq ptr %617, null
  br i1 %618, label %611, label %619

619:                                              ; preds = %614, %649
  %620 = phi ptr [ %650, %649 ], [ %617, %614 ]
  %621 = getelementptr inbounds %struct.bActuator, ptr %620, i64 0, i32 3
  %622 = load i16, ptr %621, align 8, !tbaa !168
  switch i16 %622, label %649 [
    i16 1, label %623
    i16 7, label %631
    i16 8, label %643
  ]

623:                                              ; preds = %619
  %624 = getelementptr inbounds %struct.bActuator, ptr %620, i64 0, i32 8
  %625 = load ptr, ptr %624, align 8, !tbaa !170
  %626 = getelementptr inbounds %struct.bIpoActuator, ptr %625, i64 0, i32 4
  %627 = tail call ptr @BKE_bproperty_object_get(ptr noundef nonnull %615, ptr noundef nonnull %626) #15
  %628 = icmp eq ptr %627, null
  br i1 %628, label %649, label %629

629:                                              ; preds = %623
  %630 = getelementptr inbounds %struct.bIpoActuator, ptr %625, i64 0, i32 1
  store i16 6, ptr %630, align 2, !tbaa !171
  br label %649

631:                                              ; preds = %619
  %632 = getelementptr inbounds %struct.bActuator, ptr %620, i64 0, i32 8
  %633 = load ptr, ptr %632, align 8, !tbaa !170
  %634 = load ptr, ptr @MEM_callocN, align 8, !tbaa !34
  %635 = tail call ptr %634(i64 noundef 128, ptr noundef nonnull @.str.1) #15
  %636 = getelementptr inbounds %struct.bEditObjectActuator, ptr %635, i64 0, i32 1
  store i16 0, ptr %636, align 4, !tbaa !173
  %637 = getelementptr inbounds %struct.bAddObjectActuator, ptr %633, i64 0, i32 2
  %638 = load ptr, ptr %637, align 8, !tbaa !175
  %639 = getelementptr inbounds %struct.bEditObjectActuator, ptr %635, i64 0, i32 3
  store ptr %638, ptr %639, align 8, !tbaa !177
  %640 = load i32, ptr %633, align 8, !tbaa !178
  store i32 %640, ptr %635, align 8, !tbaa !179
  %641 = load ptr, ptr @MEM_freeN, align 8, !tbaa !34
  tail call void %641(ptr noundef nonnull %633) #15
  store ptr %635, ptr %632, align 8, !tbaa !170
  %642 = getelementptr inbounds %struct.bActuator, ptr %620, i64 0, i32 5
  store i16 10, ptr %642, align 4, !tbaa !180
  store i16 10, ptr %621, align 8, !tbaa !168
  br label %649

643:                                              ; preds = %619
  %644 = load ptr, ptr @MEM_callocN, align 8, !tbaa !34
  %645 = tail call ptr %644(i64 noundef 128, ptr noundef nonnull @.str.1) #15
  %646 = getelementptr inbounds %struct.bEditObjectActuator, ptr %645, i64 0, i32 1
  store i16 1, ptr %646, align 4, !tbaa !173
  %647 = getelementptr inbounds %struct.bActuator, ptr %620, i64 0, i32 8
  store ptr %645, ptr %647, align 8, !tbaa !170
  %648 = getelementptr inbounds %struct.bActuator, ptr %620, i64 0, i32 5
  store i16 10, ptr %648, align 4, !tbaa !180
  store i16 10, ptr %621, align 8, !tbaa !168
  br label %649

649:                                              ; preds = %619, %631, %643, %623, %629
  %650 = load ptr, ptr %620, align 8, !tbaa !34
  %651 = icmp eq ptr %650, null
  br i1 %651, label %611, label %619, !llvm.loop !181

652:                                              ; preds = %611, %607, %605
  %653 = load i16, ptr %7, align 8, !tbaa !59
  %654 = icmp slt i16 %653, 203
  br i1 %654, label %655, label %680

655:                                              ; preds = %652
  %656 = getelementptr inbounds %struct.Main, ptr %2, i64 0, i32 13
  %657 = load ptr, ptr %656, align 8, !tbaa !34
  %658 = icmp eq ptr %657, null
  br i1 %658, label %682, label %662

659:                                              ; preds = %677, %662
  %660 = load ptr, ptr %663, align 8, !tbaa !34
  %661 = icmp eq ptr %660, null
  br i1 %661, label %680, label %662, !llvm.loop !182

662:                                              ; preds = %655, %659
  %663 = phi ptr [ %660, %659 ], [ %657, %655 ]
  %664 = getelementptr inbounds %struct.Object, ptr %663, i64 0, i32 94
  %665 = load ptr, ptr %664, align 8, !tbaa !34
  %666 = icmp eq ptr %665, null
  br i1 %666, label %659, label %667

667:                                              ; preds = %662, %677
  %668 = phi ptr [ %678, %677 ], [ %665, %662 ]
  %669 = getelementptr inbounds %struct.bActuator, ptr %668, i64 0, i32 3
  %670 = load i16, ptr %669, align 8, !tbaa !168
  %671 = icmp eq i16 %670, 0
  br i1 %671, label %672, label %677

672:                                              ; preds = %667
  %673 = getelementptr inbounds %struct.bActuator, ptr %668, i64 0, i32 8
  %674 = load ptr, ptr %673, align 8, !tbaa !170
  %675 = load i16, ptr %674, align 8, !tbaa !183
  %676 = and i16 %675, -11
  store i16 %676, ptr %674, align 8, !tbaa !183
  br label %677

677:                                              ; preds = %672, %667
  %678 = load ptr, ptr %668, align 8, !tbaa !34
  %679 = icmp eq ptr %678, null
  br i1 %679, label %659, label %667, !llvm.loop !185

680:                                              ; preds = %659, %652
  %681 = icmp slt i16 %653, 205
  br i1 %681, label %682, label %724

682:                                              ; preds = %655, %680
  %683 = getelementptr inbounds %struct.Main, ptr %2, i64 0, i32 13
  %684 = load ptr, ptr %683, align 8, !tbaa !34
  %685 = icmp eq ptr %684, null
  br i1 %685, label %711, label %689

686:                                              ; preds = %708, %689
  %687 = load ptr, ptr %690, align 8, !tbaa !34
  %688 = icmp eq ptr %687, null
  br i1 %688, label %711, label %689, !llvm.loop !186

689:                                              ; preds = %682, %686
  %690 = phi ptr [ %687, %686 ], [ %684, %682 ]
  %691 = getelementptr inbounds %struct.Object, ptr %690, i64 0, i32 94
  %692 = load ptr, ptr %691, align 8, !tbaa !34
  %693 = icmp eq ptr %692, null
  br i1 %693, label %686, label %694

694:                                              ; preds = %689, %708
  %695 = phi ptr [ %709, %708 ], [ %692, %689 ]
  %696 = getelementptr inbounds %struct.bActuator, ptr %695, i64 0, i32 3
  %697 = load i16, ptr %696, align 8, !tbaa !168
  %698 = icmp eq i16 %697, 0
  br i1 %698, label %699, label %708

699:                                              ; preds = %694
  %700 = getelementptr inbounds %struct.bActuator, ptr %695, i64 0, i32 8
  %701 = load ptr, ptr %700, align 8, !tbaa !170
  %702 = getelementptr inbounds %struct.bObjectActuator, ptr %701, i64 0, i32 4
  %703 = load <4 x float>, ptr %702, align 8, !tbaa !120
  %704 = fmul <4 x float> %703, <float 2.500000e+01, float 2.500000e+01, float 2.500000e+01, float 1.000000e+01>
  store <4 x float> %704, ptr %702, align 8, !tbaa !120
  %705 = getelementptr inbounds %struct.bObjectActuator, ptr %701, i64 0, i32 5, i64 1
  %706 = load <2 x float>, ptr %705, align 4, !tbaa !120
  %707 = fmul <2 x float> %706, <float 1.000000e+01, float 1.000000e+01>
  store <2 x float> %707, ptr %705, align 4, !tbaa !120
  br label %708

708:                                              ; preds = %699, %694
  %709 = load ptr, ptr %695, align 8, !tbaa !34
  %710 = icmp eq ptr %709, null
  br i1 %710, label %686, label %694, !llvm.loop !187

711:                                              ; preds = %686, %682
  %712 = getelementptr inbounds %struct.Main, ptr %2, i64 0, i32 31
  %713 = load ptr, ptr %712, align 8, !tbaa !34
  %714 = icmp eq ptr %713, null
  br i1 %714, label %724, label %715

715:                                              ; preds = %711, %721
  %716 = phi ptr [ %722, %721 ], [ %713, %711 ]
  %717 = getelementptr inbounds %struct.bSound, ptr %716, i64 0, i32 6
  %718 = load float, ptr %717, align 8, !tbaa !188
  %719 = fcmp olt float %718, 0x3F847AE140000000
  br i1 %719, label %720, label %721

720:                                              ; preds = %715
  store float 1.000000e+00, ptr %717, align 8, !tbaa !188
  br label %721

721:                                              ; preds = %720, %715
  %722 = load ptr, ptr %716, align 8, !tbaa !34
  %723 = icmp eq ptr %722, null
  br i1 %723, label %724, label %715, !llvm.loop !190

724:                                              ; preds = %721, %711, %680
  %725 = icmp slt i16 %653, 206
  br i1 %725, label %726, label %790

726:                                              ; preds = %724
  %727 = getelementptr inbounds %struct.Main, ptr %2, i64 0, i32 13
  %728 = load ptr, ptr %727, align 8, !tbaa !34
  %729 = icmp eq ptr %728, null
  br i1 %729, label %792, label %733

730:                                              ; preds = %787, %757
  %731 = load ptr, ptr %734, align 8, !tbaa !34
  %732 = icmp eq ptr %731, null
  br i1 %732, label %790, label %733, !llvm.loop !191

733:                                              ; preds = %726, %730
  %734 = phi ptr [ %731, %730 ], [ %728, %726 ]
  %735 = getelementptr inbounds %struct.Object, ptr %734, i64 0, i32 99
  %736 = load i32, ptr %735, align 8, !tbaa !164
  %737 = and i32 %736, -257
  store i32 %737, ptr %735, align 8, !tbaa !164
  %738 = getelementptr inbounds %struct.Object, ptr %734, i64 0, i32 105
  store <2 x float> <float 1.000000e+00, float 1.000000e+00>, ptr %738, align 4, !tbaa !120
  %739 = getelementptr inbounds %struct.Object, ptr %734, i64 0, i32 105, i64 2
  store float 1.000000e+00, ptr %739, align 4, !tbaa !120
  %740 = getelementptr inbounds %struct.Object, ptr %734, i64 0, i32 94
  %741 = load ptr, ptr %740, align 8, !tbaa !34
  %742 = icmp eq ptr %741, null
  br i1 %742, label %757, label %743

743:                                              ; preds = %733, %754
  %744 = phi ptr [ %755, %754 ], [ %741, %733 ]
  %745 = getelementptr inbounds %struct.bActuator, ptr %744, i64 0, i32 3
  %746 = load i16, ptr %745, align 8, !tbaa !168
  %747 = icmp eq i16 %746, 10
  br i1 %747, label %748, label %754

748:                                              ; preds = %743
  %749 = getelementptr inbounds %struct.bActuator, ptr %744, i64 0, i32 8
  %750 = load ptr, ptr %749, align 8, !tbaa !170
  %751 = getelementptr inbounds %struct.bEditObjectActuator, ptr %750, i64 0, i32 6
  store <2 x float> zeroinitializer, ptr %751, align 8, !tbaa !120
  %752 = getelementptr inbounds %struct.bEditObjectActuator, ptr %750, i64 0, i32 6, i64 2
  store float 0.000000e+00, ptr %752, align 8, !tbaa !120
  %753 = getelementptr inbounds %struct.bEditObjectActuator, ptr %750, i64 0, i32 9
  store i16 0, ptr %753, align 4, !tbaa !192
  br label %754

754:                                              ; preds = %748, %743
  %755 = load ptr, ptr %744, align 8, !tbaa !34
  %756 = icmp eq ptr %755, null
  br i1 %756, label %757, label %743, !llvm.loop !193

757:                                              ; preds = %754, %733
  %758 = getelementptr inbounds %struct.Object, ptr %734, i64 0, i32 92
  %759 = load ptr, ptr %758, align 8, !tbaa !34
  %760 = icmp eq ptr %759, null
  br i1 %760, label %730, label %761

761:                                              ; preds = %757, %787
  %762 = phi ptr [ %788, %787 ], [ %759, %757 ]
  %763 = getelementptr inbounds %struct.bSensor, ptr %762, i64 0, i32 2
  %764 = load i16, ptr %763, align 8, !tbaa !194
  switch i16 %764, label %775 [
    i16 7, label %765
    i16 0, label %772
  ]

765:                                              ; preds = %761
  %766 = getelementptr inbounds %struct.bSensor, ptr %762, i64 0, i32 11
  %767 = load ptr, ptr %766, align 8, !tbaa !196
  %768 = getelementptr inbounds %struct.bRadarSensor, ptr %767, i64 0, i32 2
  store float 1.000000e+04, ptr %768, align 4, !tbaa !197
  %769 = getelementptr inbounds %struct.bSensor, ptr %762, i64 0, i32 5
  store i16 0, ptr %769, align 2, !tbaa !199
  %770 = getelementptr inbounds %struct.bSensor, ptr %762, i64 0, i32 6
  store i16 0, ptr %770, align 8, !tbaa !200
  %771 = getelementptr inbounds %struct.bSensor, ptr %762, i64 0, i32 14
  store i16 0, ptr %771, align 8, !tbaa !201
  br label %787

772:                                              ; preds = %761
  %773 = getelementptr inbounds %struct.bSensor, ptr %762, i64 0, i32 5
  store i16 1, ptr %773, align 2, !tbaa !199
  %774 = getelementptr inbounds %struct.bSensor, ptr %762, i64 0, i32 14
  store i16 0, ptr %774, align 8, !tbaa !201
  br label %787

775:                                              ; preds = %761
  %776 = getelementptr inbounds %struct.bSensor, ptr %762, i64 0, i32 5
  store i16 0, ptr %776, align 2, !tbaa !199
  %777 = getelementptr inbounds %struct.bSensor, ptr %762, i64 0, i32 6
  store i16 0, ptr %777, align 8, !tbaa !200
  %778 = getelementptr inbounds %struct.bSensor, ptr %762, i64 0, i32 14
  store i16 0, ptr %778, align 8, !tbaa !201
  switch i16 %764, label %787 [
    i16 6, label %779
    i16 9, label %783
  ]

779:                                              ; preds = %775
  %780 = getelementptr inbounds %struct.bSensor, ptr %762, i64 0, i32 11
  %781 = load ptr, ptr %780, align 8, !tbaa !196
  %782 = getelementptr inbounds %struct.bCollisionSensor, ptr %781, i64 0, i32 4
  store i16 0, ptr %782, align 2, !tbaa !202
  br label %787

783:                                              ; preds = %775
  %784 = getelementptr inbounds %struct.bSensor, ptr %762, i64 0, i32 11
  %785 = load ptr, ptr %784, align 8, !tbaa !196
  %786 = getelementptr inbounds %struct.bRaySensor, ptr %785, i64 0, i32 4
  store i16 0, ptr %786, align 4, !tbaa !204
  br label %787

787:                                              ; preds = %775, %779, %772, %765, %783
  %788 = load ptr, ptr %762, align 8, !tbaa !34
  %789 = icmp eq ptr %788, null
  br i1 %789, label %730, label %761, !llvm.loop !206

790:                                              ; preds = %730, %724
  %791 = icmp slt i16 %653, 212
  br i1 %791, label %792, label %862

792:                                              ; preds = %726, %790
  %793 = getelementptr inbounds %struct.Main, ptr %2, i64 0, i32 13
  %794 = load ptr, ptr %793, align 8, !tbaa !34
  %795 = icmp eq ptr %794, null
  br i1 %795, label %864, label %797

796:                                              ; preds = %797
  br i1 %795, label %862, label %805

797:                                              ; preds = %792, %797
  %798 = phi ptr [ %800, %797 ], [ %794, %792 ]
  %799 = getelementptr inbounds %struct.Object, ptr %798, i64 0, i32 98, i64 3
  store float 1.000000e+00, ptr %799, align 4, !tbaa !120
  %800 = load ptr, ptr %798, align 8, !tbaa !34
  %801 = icmp eq ptr %800, null
  br i1 %801, label %796, label %797, !llvm.loop !207

802:                                              ; preds = %859, %805
  %803 = load ptr, ptr %806, align 8, !tbaa !34
  %804 = icmp eq ptr %803, null
  br i1 %804, label %862, label %805, !llvm.loop !208

805:                                              ; preds = %796, %802
  %806 = phi ptr [ %803, %802 ], [ %794, %796 ]
  %807 = getelementptr inbounds %struct.Object, ptr %806, i64 0, i32 94
  %808 = load ptr, ptr %807, align 8, !tbaa !34
  %809 = icmp eq ptr %808, null
  br i1 %809, label %802, label %810

810:                                              ; preds = %805, %859
  %811 = phi ptr [ %860, %859 ], [ %808, %805 ]
  %812 = getelementptr inbounds %struct.bActuator, ptr %811, i64 0, i32 3
  %813 = load i16, ptr %812, align 8, !tbaa !168
  %814 = icmp eq i16 %813, 0
  br i1 %814, label %815, label %859

815:                                              ; preds = %810
  %816 = getelementptr inbounds %struct.bActuator, ptr %811, i64 0, i32 8
  %817 = load ptr, ptr %816, align 8, !tbaa !170
  %818 = getelementptr inbounds %struct.bObjectActuator, ptr %817, i64 0, i32 10
  %819 = load float, ptr %818, align 8, !tbaa !120
  %820 = tail call float @llvm.fabs.f32(float %819)
  %821 = fcmp ult float %820, 0x3F847AE140000000
  br i1 %821, label %824, label %822

822:                                              ; preds = %815
  %823 = fmul float %819, 5.000000e+01
  store float %823, ptr %818, align 8, !tbaa !120
  br label %824

824:                                              ; preds = %822, %815
  %825 = getelementptr inbounds %struct.bObjectActuator, ptr %817, i64 0, i32 10, i64 1
  %826 = load float, ptr %825, align 4, !tbaa !120
  %827 = tail call float @llvm.fabs.f32(float %826)
  %828 = fcmp ult float %827, 0x3F847AE140000000
  br i1 %828, label %831, label %829

829:                                              ; preds = %824
  %830 = fmul float %826, 5.000000e+01
  store float %830, ptr %825, align 4, !tbaa !120
  br label %831

831:                                              ; preds = %829, %824
  %832 = getelementptr inbounds %struct.bObjectActuator, ptr %817, i64 0, i32 10, i64 2
  %833 = load float, ptr %832, align 8, !tbaa !120
  %834 = tail call float @llvm.fabs.f32(float %833)
  %835 = fcmp ult float %834, 0x3F847AE140000000
  br i1 %835, label %838, label %836

836:                                              ; preds = %831
  %837 = fmul float %833, 5.000000e+01
  store float %837, ptr %832, align 8, !tbaa !120
  br label %838

838:                                              ; preds = %836, %831
  %839 = getelementptr inbounds %struct.bObjectActuator, ptr %817, i64 0, i32 11
  %840 = load float, ptr %839, align 4, !tbaa !120
  %841 = tail call float @llvm.fabs.f32(float %840)
  %842 = fcmp ult float %841, 0x3F847AE140000000
  br i1 %842, label %845, label %843

843:                                              ; preds = %838
  %844 = fmul float %840, 5.000000e+01
  store float %844, ptr %839, align 4, !tbaa !120
  br label %845

845:                                              ; preds = %843, %838
  %846 = getelementptr inbounds %struct.bObjectActuator, ptr %817, i64 0, i32 11, i64 1
  %847 = load float, ptr %846, align 4, !tbaa !120
  %848 = tail call float @llvm.fabs.f32(float %847)
  %849 = fcmp ult float %848, 0x3F847AE140000000
  br i1 %849, label %852, label %850

850:                                              ; preds = %845
  %851 = fmul float %847, 5.000000e+01
  store float %851, ptr %846, align 4, !tbaa !120
  br label %852

852:                                              ; preds = %850, %845
  %853 = getelementptr inbounds %struct.bObjectActuator, ptr %817, i64 0, i32 11, i64 2
  %854 = load float, ptr %853, align 4, !tbaa !120
  %855 = tail call float @llvm.fabs.f32(float %854)
  %856 = fcmp ult float %855, 0x3F847AE140000000
  br i1 %856, label %859, label %857

857:                                              ; preds = %852
  %858 = fmul float %854, 5.000000e+01
  store float %858, ptr %853, align 4, !tbaa !120
  br label %859

859:                                              ; preds = %852, %857, %810
  %860 = load ptr, ptr %811, align 8, !tbaa !34
  %861 = icmp eq ptr %860, null
  br i1 %861, label %802, label %810, !llvm.loop !209

862:                                              ; preds = %802, %796, %790
  %863 = icmp slt i16 %653, 213
  br i1 %863, label %864, label %930

864:                                              ; preds = %792, %862
  %865 = getelementptr inbounds %struct.Main, ptr %2, i64 0, i32 31
  %866 = load ptr, ptr %865, align 8, !tbaa !34
  %867 = icmp eq ptr %866, null
  br i1 %867, label %882, label %868

868:                                              ; preds = %864, %868
  %869 = phi ptr [ %880, %868 ], [ %866, %864 ]
  %870 = getelementptr inbounds %struct.bSound, ptr %869, i64 0, i32 9
  store <2 x float> <float 0.000000e+00, float 1.000000e+00>, ptr %870, align 4, !tbaa !120
  %871 = getelementptr inbounds %struct.bSound, ptr %869, i64 0, i32 11
  store float 1.000000e+00, ptr %871, align 4, !tbaa !210
  %872 = getelementptr inbounds %struct.bSound, ptr %869, i64 0, i32 7
  %873 = load float, ptr %872, align 4, !tbaa !211
  %874 = fcmp ogt float %873, 0.000000e+00
  %875 = getelementptr inbounds %struct.bSound, ptr %869, i64 0, i32 12
  %876 = load i32, ptr %875, align 8, !tbaa !212
  %877 = and i32 %876, -9
  %878 = select i1 %874, i32 8, i32 0
  %879 = or disjoint i32 %877, %878
  store i32 %879, ptr %875, align 8, !tbaa !212
  %880 = load ptr, ptr %869, align 8, !tbaa !34
  %881 = icmp eq ptr %880, null
  br i1 %881, label %882, label %868, !llvm.loop !213

882:                                              ; preds = %868, %864
  %883 = getelementptr inbounds %struct.Main, ptr %2, i64 0, i32 13
  %884 = load ptr, ptr %883, align 8, !tbaa !34
  %885 = icmp eq ptr %884, null
  br i1 %885, label %906, label %889

886:                                              ; preds = %903, %889
  %887 = load ptr, ptr %890, align 8, !tbaa !34
  %888 = icmp eq ptr %887, null
  br i1 %888, label %906, label %889, !llvm.loop !214

889:                                              ; preds = %882, %886
  %890 = phi ptr [ %887, %886 ], [ %884, %882 ]
  %891 = getelementptr inbounds %struct.Object, ptr %890, i64 0, i32 91
  %892 = load ptr, ptr %891, align 8, !tbaa !34
  %893 = icmp eq ptr %892, null
  br i1 %893, label %886, label %894

894:                                              ; preds = %889, %903
  %895 = phi ptr [ %904, %903 ], [ %892, %889 ]
  %896 = getelementptr inbounds %struct.bProperty, ptr %895, i64 0, i32 3
  %897 = load i16, ptr %896, align 8, !tbaa !215
  %898 = icmp eq i16 %897, 5
  br i1 %898, label %899, label %903

899:                                              ; preds = %894
  %900 = getelementptr inbounds %struct.bProperty, ptr %895, i64 0, i32 5
  %901 = load i32, ptr %900, align 4, !tbaa !217
  %902 = sitofp i32 %901 to float
  store float %902, ptr %900, align 4, !tbaa !120
  br label %903

903:                                              ; preds = %899, %894
  %904 = load ptr, ptr %895, align 8, !tbaa !34
  %905 = icmp eq ptr %904, null
  br i1 %905, label %886, label %894, !llvm.loop !218

906:                                              ; preds = %886, %882
  %907 = getelementptr inbounds %struct.Main, ptr %2, i64 0, i32 14
  %908 = load ptr, ptr %907, align 8, !tbaa !34
  %909 = icmp eq ptr %908, null
  br i1 %909, label %930, label %910

910:                                              ; preds = %906, %927
  %911 = phi ptr [ %928, %927 ], [ %908, %906 ]
  %912 = getelementptr inbounds %struct.Mesh, ptr %911, i64 0, i32 38
  %913 = load i16, ptr %912, align 2, !tbaa !219
  %914 = and i16 %913, 64
  %915 = icmp eq i16 %914, 0
  br i1 %915, label %920, label %916

916:                                              ; preds = %910
  %917 = and i16 %913, -193
  %918 = or disjoint i16 %917, 128
  store i16 %918, ptr %912, align 2, !tbaa !219
  %919 = getelementptr inbounds %struct.Mesh, ptr %911, i64 0, i32 43
  store i8 1, ptr %919, align 2, !tbaa !138
  br label %927

920:                                              ; preds = %910
  %921 = getelementptr inbounds %struct.Mesh, ptr %911, i64 0, i32 43
  %922 = load i8, ptr %921, align 2, !tbaa !138
  %923 = icmp ult i8 %922, 2
  br i1 %923, label %924, label %925

924:                                              ; preds = %920
  store i8 1, ptr %921, align 2, !tbaa !138
  br label %927

925:                                              ; preds = %920
  %926 = add i8 %922, -1
  store i8 %926, ptr %921, align 2, !tbaa !138
  br label %927

927:                                              ; preds = %916, %925, %924
  %928 = load ptr, ptr %911, align 8, !tbaa !34
  %929 = icmp eq ptr %928, null
  br i1 %929, label %930, label %910, !llvm.loop !220

930:                                              ; preds = %927, %906, %862
  %931 = icmp slt i16 %653, 221
  br i1 %931, label %932, label %1082

932:                                              ; preds = %930
  %933 = getelementptr inbounds %struct.Main, ptr %2, i64 0, i32 13
  %934 = load ptr, ptr %933, align 8, !tbaa !34
  %935 = icmp eq ptr %934, null
  br i1 %935, label %948, label %936

936:                                              ; preds = %932, %945
  %937 = phi ptr [ %946, %945 ], [ %934, %932 ]
  %938 = getelementptr inbounds %struct.Object, ptr %937, i64 0, i32 72
  store float 0x3FD99999A0000000, ptr %938, align 8, !tbaa !221
  %939 = getelementptr inbounds %struct.Object, ptr %937, i64 0, i32 71
  %940 = load float, ptr %939, align 4, !tbaa !157
  %941 = fcmp une float %940, 1.000000e+00
  br i1 %941, label %942, label %945

942:                                              ; preds = %936
  %943 = fmul float %940, %940
  %944 = fdiv float 0x3FD99999A0000000, %943
  store float %944, ptr %938, align 8, !tbaa !221
  br label %945

945:                                              ; preds = %942, %936
  %946 = load ptr, ptr %937, align 8, !tbaa !34
  %947 = icmp eq ptr %946, null
  br i1 %947, label %948, label %936, !llvm.loop !222

948:                                              ; preds = %945, %932
  %949 = getelementptr inbounds %struct.Main, ptr %2, i64 0, i32 14
  %950 = load ptr, ptr %949, align 8, !tbaa !34
  %951 = icmp eq ptr %950, null
  br i1 %951, label %1082, label %952

952:                                              ; preds = %948, %1077
  %953 = phi ptr [ %1078, %1077 ], [ %950, %948 ]
  %954 = getelementptr inbounds %struct.Mesh, ptr %953, i64 0, i32 18
  %955 = load ptr, ptr %954, align 8, !tbaa !104
  %956 = icmp eq ptr %955, null
  br i1 %956, label %1056, label %957

957:                                              ; preds = %952
  %958 = getelementptr inbounds %struct.Mesh, ptr %953, i64 0, i32 28
  %959 = load i32, ptr %958, align 8, !tbaa !134
  %960 = icmp sgt i32 %959, 0
  br i1 %960, label %961, label %1056

961:                                              ; preds = %957
  %962 = shl i32 %959, 2
  %963 = tail call i32 @llvm.smax.i32(i32 %962, i32 1)
  %964 = zext nneg i32 %963 to i64
  %965 = add nuw nsw i64 %964, 15
  %966 = and i64 %965, 4294967280
  %967 = add nsw i64 %964, -1
  %968 = insertelement <16 x i64> poison, i64 %967, i64 0
  %969 = shufflevector <16 x i64> %968, <16 x i64> poison, <16 x i32> zeroinitializer
  br label %970

970:                                              ; preds = %1052, %961
  %971 = phi i64 [ 0, %961 ], [ %1053, %1052 ]
  %972 = phi <16 x i64> [ <i64 0, i64 1, i64 2, i64 3, i64 4, i64 5, i64 6, i64 7, i64 8, i64 9, i64 10, i64 11, i64 12, i64 13, i64 14, i64 15>, %961 ], [ %1054, %1052 ]
  %973 = icmp ule <16 x i64> %972, %969
  %974 = extractelement <16 x i1> %973, i64 0
  br i1 %974, label %975, label %977

975:                                              ; preds = %970
  %976 = getelementptr inbounds %struct.MCol, ptr %955, i64 %971
  store i8 -1, ptr %976, align 1, !tbaa !223
  br label %977

977:                                              ; preds = %975, %970
  %978 = extractelement <16 x i1> %973, i64 1
  br i1 %978, label %979, label %982

979:                                              ; preds = %977
  %980 = or disjoint i64 %971, 1
  %981 = getelementptr inbounds %struct.MCol, ptr %955, i64 %980
  store i8 -1, ptr %981, align 1, !tbaa !223
  br label %982

982:                                              ; preds = %979, %977
  %983 = extractelement <16 x i1> %973, i64 2
  br i1 %983, label %984, label %987

984:                                              ; preds = %982
  %985 = or disjoint i64 %971, 2
  %986 = getelementptr inbounds %struct.MCol, ptr %955, i64 %985
  store i8 -1, ptr %986, align 1, !tbaa !223
  br label %987

987:                                              ; preds = %984, %982
  %988 = extractelement <16 x i1> %973, i64 3
  br i1 %988, label %989, label %992

989:                                              ; preds = %987
  %990 = or disjoint i64 %971, 3
  %991 = getelementptr inbounds %struct.MCol, ptr %955, i64 %990
  store i8 -1, ptr %991, align 1, !tbaa !223
  br label %992

992:                                              ; preds = %989, %987
  %993 = extractelement <16 x i1> %973, i64 4
  br i1 %993, label %994, label %997

994:                                              ; preds = %992
  %995 = or disjoint i64 %971, 4
  %996 = getelementptr inbounds %struct.MCol, ptr %955, i64 %995
  store i8 -1, ptr %996, align 1, !tbaa !223
  br label %997

997:                                              ; preds = %994, %992
  %998 = extractelement <16 x i1> %973, i64 5
  br i1 %998, label %999, label %1002

999:                                              ; preds = %997
  %1000 = or disjoint i64 %971, 5
  %1001 = getelementptr inbounds %struct.MCol, ptr %955, i64 %1000
  store i8 -1, ptr %1001, align 1, !tbaa !223
  br label %1002

1002:                                             ; preds = %999, %997
  %1003 = extractelement <16 x i1> %973, i64 6
  br i1 %1003, label %1004, label %1007

1004:                                             ; preds = %1002
  %1005 = or disjoint i64 %971, 6
  %1006 = getelementptr inbounds %struct.MCol, ptr %955, i64 %1005
  store i8 -1, ptr %1006, align 1, !tbaa !223
  br label %1007

1007:                                             ; preds = %1004, %1002
  %1008 = extractelement <16 x i1> %973, i64 7
  br i1 %1008, label %1009, label %1012

1009:                                             ; preds = %1007
  %1010 = or disjoint i64 %971, 7
  %1011 = getelementptr inbounds %struct.MCol, ptr %955, i64 %1010
  store i8 -1, ptr %1011, align 1, !tbaa !223
  br label %1012

1012:                                             ; preds = %1009, %1007
  %1013 = extractelement <16 x i1> %973, i64 8
  br i1 %1013, label %1014, label %1017

1014:                                             ; preds = %1012
  %1015 = or disjoint i64 %971, 8
  %1016 = getelementptr inbounds %struct.MCol, ptr %955, i64 %1015
  store i8 -1, ptr %1016, align 1, !tbaa !223
  br label %1017

1017:                                             ; preds = %1014, %1012
  %1018 = extractelement <16 x i1> %973, i64 9
  br i1 %1018, label %1019, label %1022

1019:                                             ; preds = %1017
  %1020 = or disjoint i64 %971, 9
  %1021 = getelementptr inbounds %struct.MCol, ptr %955, i64 %1020
  store i8 -1, ptr %1021, align 1, !tbaa !223
  br label %1022

1022:                                             ; preds = %1019, %1017
  %1023 = extractelement <16 x i1> %973, i64 10
  br i1 %1023, label %1024, label %1027

1024:                                             ; preds = %1022
  %1025 = or disjoint i64 %971, 10
  %1026 = getelementptr inbounds %struct.MCol, ptr %955, i64 %1025
  store i8 -1, ptr %1026, align 1, !tbaa !223
  br label %1027

1027:                                             ; preds = %1024, %1022
  %1028 = extractelement <16 x i1> %973, i64 11
  br i1 %1028, label %1029, label %1032

1029:                                             ; preds = %1027
  %1030 = or disjoint i64 %971, 11
  %1031 = getelementptr inbounds %struct.MCol, ptr %955, i64 %1030
  store i8 -1, ptr %1031, align 1, !tbaa !223
  br label %1032

1032:                                             ; preds = %1029, %1027
  %1033 = extractelement <16 x i1> %973, i64 12
  br i1 %1033, label %1034, label %1037

1034:                                             ; preds = %1032
  %1035 = or disjoint i64 %971, 12
  %1036 = getelementptr inbounds %struct.MCol, ptr %955, i64 %1035
  store i8 -1, ptr %1036, align 1, !tbaa !223
  br label %1037

1037:                                             ; preds = %1034, %1032
  %1038 = extractelement <16 x i1> %973, i64 13
  br i1 %1038, label %1039, label %1042

1039:                                             ; preds = %1037
  %1040 = or disjoint i64 %971, 13
  %1041 = getelementptr inbounds %struct.MCol, ptr %955, i64 %1040
  store i8 -1, ptr %1041, align 1, !tbaa !223
  br label %1042

1042:                                             ; preds = %1039, %1037
  %1043 = extractelement <16 x i1> %973, i64 14
  br i1 %1043, label %1044, label %1047

1044:                                             ; preds = %1042
  %1045 = or disjoint i64 %971, 14
  %1046 = getelementptr inbounds %struct.MCol, ptr %955, i64 %1045
  store i8 -1, ptr %1046, align 1, !tbaa !223
  br label %1047

1047:                                             ; preds = %1044, %1042
  %1048 = extractelement <16 x i1> %973, i64 15
  br i1 %1048, label %1049, label %1052

1049:                                             ; preds = %1047
  %1050 = or disjoint i64 %971, 15
  %1051 = getelementptr inbounds %struct.MCol, ptr %955, i64 %1050
  store i8 -1, ptr %1051, align 1, !tbaa !223
  br label %1052

1052:                                             ; preds = %1049, %1047
  %1053 = add i64 %971, 16
  %1054 = add <16 x i64> %972, <i64 16, i64 16, i64 16, i64 16, i64 16, i64 16, i64 16, i64 16, i64 16, i64 16, i64 16, i64 16, i64 16, i64 16, i64 16, i64 16>
  %1055 = icmp eq i64 %1053, %966
  br i1 %1055, label %1056, label %970, !llvm.loop !225

1056:                                             ; preds = %1052, %957, %952
  %1057 = getelementptr inbounds %struct.Mesh, ptr %953, i64 0, i32 14
  %1058 = load ptr, ptr %1057, align 8, !tbaa !133
  %1059 = icmp eq ptr %1058, null
  br i1 %1059, label %1077, label %1060

1060:                                             ; preds = %1056
  %1061 = getelementptr inbounds %struct.Mesh, ptr %953, i64 0, i32 28
  %1062 = load i32, ptr %1061, align 8, !tbaa !134
  %1063 = icmp sgt i32 %1062, 0
  br i1 %1063, label %1064, label %1077

1064:                                             ; preds = %1060, %1072
  %1065 = phi i64 [ %1073, %1072 ], [ 0, %1060 ]
  %1066 = load ptr, ptr %1057, align 8, !tbaa !133
  br label %1067

1067:                                             ; preds = %1064, %1067
  %1068 = phi i64 [ 0, %1064 ], [ %1070, %1067 ]
  %1069 = getelementptr inbounds %struct.TFace, ptr %1066, i64 %1065, i32 2, i64 %1068
  store i8 -1, ptr %1069, align 1, !tbaa !135
  %1070 = add nuw nsw i64 %1068, 1
  %1071 = icmp eq i64 %1070, 4
  br i1 %1071, label %1072, label %1067, !llvm.loop !228

1072:                                             ; preds = %1067
  %1073 = add nuw nsw i64 %1065, 1
  %1074 = load i32, ptr %1061, align 8, !tbaa !134
  %1075 = sext i32 %1074 to i64
  %1076 = icmp slt i64 %1073, %1075
  br i1 %1076, label %1064, label %1077, !llvm.loop !229

1077:                                             ; preds = %1072, %1060, %1056
  %1078 = load ptr, ptr %953, align 8, !tbaa !34
  %1079 = icmp eq ptr %1078, null
  br i1 %1079, label %1080, label %952, !llvm.loop !230

1080:                                             ; preds = %1077
  %1081 = load i16, ptr %7, align 8, !tbaa !59
  br label %1082

1082:                                             ; preds = %1080, %948, %930
  %1083 = phi i16 [ %1081, %1080 ], [ %653, %948 ], [ %653, %930 ]
  %1084 = icmp slt i16 %1083, 222
  br i1 %1084, label %1085, label %1096

1085:                                             ; preds = %1082
  %1086 = getelementptr inbounds %struct.Main, ptr %2, i64 0, i32 11
  %1087 = load ptr, ptr %1086, align 8, !tbaa !34
  %1088 = icmp eq ptr %1087, null
  br i1 %1088, label %1098, label %1089

1089:                                             ; preds = %1085, %1089
  %1090 = phi ptr [ %1094, %1089 ], [ %1087, %1085 ]
  %1091 = getelementptr inbounds %struct.Scene, ptr %1090, i64 0, i32 22, i32 21
  store i16 640, ptr %1091, align 2, !tbaa !231
  %1092 = getelementptr inbounds %struct.Scene, ptr %1090, i64 0, i32 22, i32 22
  store i16 480, ptr %1092, align 4, !tbaa !232
  %1093 = getelementptr inbounds %struct.Scene, ptr %1090, i64 0, i32 22, i32 23
  store i16 60, ptr %1093, align 2, !tbaa !233
  %1094 = load ptr, ptr %1090, align 8, !tbaa !34
  %1095 = icmp eq ptr %1094, null
  br i1 %1095, label %1096, label %1089, !llvm.loop !234

1096:                                             ; preds = %1089, %1082
  %1097 = icmp slt i16 %1083, 223
  br i1 %1097, label %1098, label %1107

1098:                                             ; preds = %1085, %1096
  %1099 = getelementptr inbounds %struct.Main, ptr %2, i64 0, i32 11
  %1100 = load ptr, ptr %1099, align 8, !tbaa !34
  %1101 = icmp eq ptr %1100, null
  br i1 %1101, label %1109, label %1102

1102:                                             ; preds = %1098, %1102
  %1103 = phi ptr [ %1105, %1102 ], [ %1100, %1098 ]
  %1104 = getelementptr inbounds %struct.Scene, ptr %1103, i64 0, i32 22, i32 24
  store i16 32, ptr %1104, align 8, !tbaa !235
  %1105 = load ptr, ptr %1103, align 8, !tbaa !34
  %1106 = icmp eq ptr %1105, null
  br i1 %1106, label %1107, label %1102, !llvm.loop !236

1107:                                             ; preds = %1102, %1096
  %1108 = icmp slt i16 %1083, 224
  br i1 %1108, label %1109, label %1171

1109:                                             ; preds = %1098, %1107
  %1110 = getelementptr inbounds %struct.Main, ptr %2, i64 0, i32 28
  %1111 = load ptr, ptr %1110, align 8, !tbaa !34
  %1112 = icmp eq ptr %1111, null
  br i1 %1112, label %1125, label %1113

1113:                                             ; preds = %1109, %1122
  %1114 = phi ptr [ %1123, %1122 ], [ %1111, %1109 ]
  %1115 = getelementptr inbounds %struct.VFont, ptr %1114, i64 0, i32 1
  %1116 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %1115) #17
  %1117 = getelementptr inbounds i8, ptr %1115, i64 %1116
  %1118 = getelementptr inbounds i8, ptr %1117, i64 -6
  %1119 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %1118, ptr noundef nonnull dereferenceable(7) @.str.2) #17
  %1120 = icmp eq i32 %1119, 0
  br i1 %1120, label %1121, label %1122

1121:                                             ; preds = %1113
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(10) %1115, ptr noundef nonnull align 1 dereferenceable(10) @.str.3, i64 10, i1 false) #15
  br label %1122

1122:                                             ; preds = %1113, %1121
  %1123 = load ptr, ptr %1114, align 8, !tbaa !34
  %1124 = icmp eq ptr %1123, null
  br i1 %1124, label %1125, label %1113, !llvm.loop !237

1125:                                             ; preds = %1122, %1109
  %1126 = getelementptr inbounds %struct.Main, ptr %2, i64 0, i32 19
  %1127 = load ptr, ptr %1126, align 8, !tbaa !34
  %1128 = icmp eq ptr %1127, null
  br i1 %1128, label %1134, label %1129

1129:                                             ; preds = %1125, %1129
  %1130 = phi ptr [ %1132, %1129 ], [ %1127, %1125 ]
  %1131 = getelementptr inbounds %struct.Image, ptr %1130, i64 0, i32 26
  store i16 25, ptr %1131, align 8, !tbaa !238
  %1132 = load ptr, ptr %1130, align 8, !tbaa !34
  %1133 = icmp eq ptr %1132, null
  br i1 %1133, label %1134, label %1129, !llvm.loop !240

1134:                                             ; preds = %1129, %1125
  %1135 = getelementptr inbounds %struct.Main, ptr %2, i64 0, i32 13
  %1136 = load ptr, ptr %1135, align 8, !tbaa !34
  %1137 = icmp eq ptr %1136, null
  br i1 %1137, label %1171, label %1141

1138:                                             ; preds = %1168, %1141
  %1139 = load ptr, ptr %1142, align 8, !tbaa !34
  %1140 = icmp eq ptr %1139, null
  br i1 %1140, label %1171, label %1141, !llvm.loop !241

1141:                                             ; preds = %1134, %1138
  %1142 = phi ptr [ %1139, %1138 ], [ %1136, %1134 ]
  %1143 = getelementptr inbounds %struct.Object, ptr %1142, i64 0, i32 92
  %1144 = load ptr, ptr %1143, align 8, !tbaa !34
  %1145 = icmp eq ptr %1144, null
  br i1 %1145, label %1138, label %1146

1146:                                             ; preds = %1141, %1168
  %1147 = phi ptr [ %1169, %1168 ], [ %1144, %1141 ]
  %1148 = getelementptr inbounds %struct.bSensor, ptr %1147, i64 0, i32 2
  %1149 = load i16, ptr %1148, align 8, !tbaa !194
  %1150 = icmp eq i16 %1149, 3
  br i1 %1150, label %1151, label %1168

1151:                                             ; preds = %1146
  %1152 = getelementptr inbounds %struct.bSensor, ptr %1147, i64 0, i32 11
  %1153 = load ptr, ptr %1152, align 8, !tbaa !196
  %1154 = load i16, ptr %1153, align 2, !tbaa !242
  %1155 = sext i16 %1154 to i32
  %1156 = tail call fastcc i32 @map_223_keybd_code_to_224_keybd_code(i32 noundef %1155) #16, !range !244
  %1157 = trunc i32 %1156 to i16
  store i16 %1157, ptr %1153, align 2, !tbaa !242
  %1158 = getelementptr inbounds %struct.bKeyboardSensor, ptr %1153, i64 0, i32 1
  %1159 = load i16, ptr %1158, align 2, !tbaa !245
  %1160 = sext i16 %1159 to i32
  %1161 = tail call fastcc i32 @map_223_keybd_code_to_224_keybd_code(i32 noundef %1160) #16, !range !244
  %1162 = trunc i32 %1161 to i16
  store i16 %1162, ptr %1158, align 2, !tbaa !245
  %1163 = getelementptr inbounds %struct.bKeyboardSensor, ptr %1153, i64 0, i32 3
  %1164 = load i16, ptr %1163, align 2, !tbaa !246
  %1165 = sext i16 %1164 to i32
  %1166 = tail call fastcc i32 @map_223_keybd_code_to_224_keybd_code(i32 noundef %1165) #16, !range !244
  %1167 = trunc i32 %1166 to i16
  store i16 %1167, ptr %1163, align 2, !tbaa !246
  br label %1168

1168:                                             ; preds = %1146, %1151
  %1169 = load ptr, ptr %1147, align 8, !tbaa !34
  %1170 = icmp eq ptr %1169, null
  br i1 %1170, label %1138, label %1146, !llvm.loop !247

1171:                                             ; preds = %1138, %1134, %1107
  %1172 = load i16, ptr %7, align 8, !tbaa !59
  %1173 = icmp slt i16 %1172, 225
  br i1 %1173, label %1174, label %1251

1174:                                             ; preds = %1171
  %1175 = getelementptr inbounds %struct.Main, ptr %2, i64 0, i32 31
  %1176 = load ptr, ptr %1175, align 8, !tbaa !34
  %1177 = icmp eq ptr %1176, null
  br i1 %1177, label %1192, label %1178

1178:                                             ; preds = %1174, %1189
  %1179 = phi ptr [ %1190, %1189 ], [ %1176, %1174 ]
  %1180 = getelementptr inbounds %struct.bSound, ptr %1179, i64 0, i32 2
  %1181 = load ptr, ptr %1180, align 8, !tbaa !248
  %1182 = icmp eq ptr %1181, null
  br i1 %1182, label %1189, label %1183

1183:                                             ; preds = %1178
  %1184 = getelementptr inbounds %struct.bSound, ptr %1179, i64 0, i32 4
  %1185 = load ptr, ptr %1184, align 8, !tbaa !249
  %1186 = icmp eq ptr %1185, null
  br i1 %1186, label %1187, label %1188

1187:                                             ; preds = %1183
  store ptr %1181, ptr %1184, align 8, !tbaa !249
  br label %1188

1188:                                             ; preds = %1187, %1183
  store ptr null, ptr %1180, align 8, !tbaa !248
  br label %1189

1189:                                             ; preds = %1178, %1188
  %1190 = load ptr, ptr %1179, align 8, !tbaa !34
  %1191 = icmp eq ptr %1190, null
  br i1 %1191, label %1192, label %1178, !llvm.loop !250

1192:                                             ; preds = %1189, %1174
  %1193 = getelementptr inbounds %struct.Main, ptr %2, i64 0, i32 14
  %1194 = load ptr, ptr %1193, align 8, !tbaa !34
  %1195 = icmp eq ptr %1194, null
  br i1 %1195, label %1212, label %1196

1196:                                             ; preds = %1192, %1209
  %1197 = phi ptr [ %1210, %1209 ], [ %1194, %1192 ]
  %1198 = getelementptr inbounds %struct.Mesh, ptr %1197, i64 0, i32 38
  %1199 = load i16, ptr %1198, align 2, !tbaa !219
  %1200 = and i16 %1199, 128
  %1201 = icmp eq i16 %1200, 0
  br i1 %1201, label %1209, label %1202

1202:                                             ; preds = %1196
  %1203 = getelementptr inbounds %struct.Mesh, ptr %1197, i64 0, i32 44
  %1204 = load i8, ptr %1203, align 1, !tbaa !251
  %1205 = icmp eq i8 %1204, 0
  br i1 %1205, label %1206, label %1209

1206:                                             ; preds = %1202
  %1207 = getelementptr inbounds %struct.Mesh, ptr %1197, i64 0, i32 43
  %1208 = load i8, ptr %1207, align 2, !tbaa !138
  store i8 %1208, ptr %1203, align 1, !tbaa !251
  br label %1209

1209:                                             ; preds = %1196, %1202, %1206
  %1210 = load ptr, ptr %1197, align 8, !tbaa !34
  %1211 = icmp eq ptr %1210, null
  br i1 %1211, label %1212, label %1196, !llvm.loop !252

1212:                                             ; preds = %1209, %1192
  %1213 = getelementptr inbounds %struct.Main, ptr %2, i64 0, i32 11
  %1214 = load ptr, ptr %1213, align 8, !tbaa !34
  %1215 = icmp eq ptr %1214, null
  br i1 %1215, label %1221, label %1216

1216:                                             ; preds = %1212, %1216
  %1217 = phi ptr [ %1219, %1216 ], [ %1214, %1212 ]
  %1218 = getelementptr inbounds %struct.Scene, ptr %1217, i64 0, i32 22, i32 27
  store i16 1, ptr %1218, align 8, !tbaa !253
  %1219 = load ptr, ptr %1217, align 8, !tbaa !34
  %1220 = icmp eq ptr %1219, null
  br i1 %1220, label %1221, label %1216, !llvm.loop !254

1221:                                             ; preds = %1216, %1212
  %1222 = getelementptr inbounds %struct.Main, ptr %2, i64 0, i32 26
  %1223 = load ptr, ptr %1222, align 8, !tbaa !34
  %1224 = icmp eq ptr %1223, null
  br i1 %1224, label %1251, label %1228

1225:                                             ; preds = %1233, %1228
  %1226 = load ptr, ptr %1229, align 8, !tbaa !34
  %1227 = icmp eq ptr %1226, null
  br i1 %1227, label %1251, label %1228, !llvm.loop !255

1228:                                             ; preds = %1221, %1225
  %1229 = phi ptr [ %1226, %1225 ], [ %1223, %1221 ]
  %1230 = getelementptr inbounds %struct.bScreen, ptr %1229, i64 0, i32 3
  %1231 = load ptr, ptr %1230, align 8, !tbaa !34
  %1232 = icmp eq ptr %1231, null
  br i1 %1232, label %1225, label %1236

1233:                                             ; preds = %1248, %1236
  %1234 = load ptr, ptr %1237, align 8, !tbaa !34
  %1235 = icmp eq ptr %1234, null
  br i1 %1235, label %1225, label %1236, !llvm.loop !256

1236:                                             ; preds = %1228, %1233
  %1237 = phi ptr [ %1234, %1233 ], [ %1231, %1228 ]
  %1238 = getelementptr inbounds %struct.ScrArea, ptr %1237, i64 0, i32 19
  %1239 = load ptr, ptr %1238, align 8, !tbaa !34
  %1240 = icmp eq ptr %1239, null
  br i1 %1240, label %1233, label %1241

1241:                                             ; preds = %1236, %1248
  %1242 = phi ptr [ %1249, %1248 ], [ %1239, %1236 ]
  %1243 = getelementptr inbounds %struct.SpaceLink, ptr %1242, i64 0, i32 3
  %1244 = load i32, ptr %1243, align 8, !tbaa !114
  %1245 = icmp eq i32 %1244, 2
  br i1 %1245, label %1246, label %1248

1246:                                             ; preds = %1241
  %1247 = getelementptr inbounds %struct.SpaceSeq, ptr %1242, i64 0, i32 6, i32 11
  store i16 0, ptr %1247, align 4, !tbaa !257
  br label %1248

1248:                                             ; preds = %1241, %1246
  %1249 = load ptr, ptr %1242, align 8, !tbaa !34
  %1250 = icmp eq ptr %1249, null
  br i1 %1250, label %1233, label %1241, !llvm.loop !261

1251:                                             ; preds = %1225, %1221, %1171
  %1252 = icmp slt i16 %1172, 226
  br i1 %1252, label %1253, label %1262

1253:                                             ; preds = %1251
  %1254 = getelementptr inbounds %struct.Main, ptr %2, i64 0, i32 25
  %1255 = load ptr, ptr %1254, align 8, !tbaa !34
  %1256 = icmp eq ptr %1255, null
  br i1 %1256, label %1264, label %1257

1257:                                             ; preds = %1253, %1257
  %1258 = phi ptr [ %1260, %1257 ], [ %1255, %1253 ]
  %1259 = getelementptr inbounds %struct.World, ptr %1258, i64 0, i32 25
  store i16 2, ptr %1259, align 2, !tbaa !262
  %1260 = load ptr, ptr %1258, align 8, !tbaa !34
  %1261 = icmp eq ptr %1260, null
  br i1 %1261, label %1262, label %1257, !llvm.loop !264

1262:                                             ; preds = %1257, %1251
  %1263 = icmp slt i16 %1172, 228
  br i1 %1263, label %1264, label %1393

1264:                                             ; preds = %1253, %1262
  %1265 = getelementptr inbounds %struct.Main, ptr %2, i64 0, i32 13
  %1266 = load ptr, ptr %1265, align 8, !tbaa !34
  %1267 = icmp eq ptr %1266, null
  br i1 %1267, label %1335, label %1268

1268:                                             ; preds = %1264, %1332
  %1269 = phi ptr [ %1333, %1332 ], [ %1266, %1264 ]
  %1270 = getelementptr inbounds %struct.Object, ptr %1269, i64 0, i32 106
  %1271 = load ptr, ptr %1270, align 8, !tbaa !34
  %1272 = icmp eq ptr %1271, null
  br i1 %1272, label %1293, label %1273

1273:                                             ; preds = %1268
  %1274 = getelementptr inbounds %struct.Object, ptr %1269, i64 0, i32 57
  %1275 = getelementptr inbounds %struct.Object, ptr %1269, i64 0, i32 58
  br label %1276

1276:                                             ; preds = %1273, %1290
  %1277 = phi ptr [ %1271, %1273 ], [ %1291, %1290 ]
  %1278 = getelementptr inbounds %struct.bConstraint, ptr %1277, i64 0, i32 3
  %1279 = load i16, ptr %1278, align 8, !tbaa !265
  %1280 = icmp eq i16 %1279, 2
  br i1 %1280, label %1281, label %1290

1281:                                             ; preds = %1276
  %1282 = getelementptr inbounds %struct.bConstraint, ptr %1277, i64 0, i32 2
  %1283 = load ptr, ptr %1282, align 8, !tbaa !51
  %1284 = load i16, ptr %1274, align 4, !tbaa !55
  %1285 = sext i16 %1284 to i32
  %1286 = getelementptr inbounds %struct.bTrackToConstraint, ptr %1283, i64 0, i32 1
  store i32 %1285, ptr %1286, align 8, !tbaa !56
  %1287 = load i16, ptr %1275, align 2, !tbaa !57
  %1288 = sext i16 %1287 to i32
  %1289 = getelementptr inbounds %struct.bTrackToConstraint, ptr %1283, i64 0, i32 2
  store i32 %1288, ptr %1289, align 4, !tbaa !58
  br label %1290

1290:                                             ; preds = %1276, %1281
  %1291 = load ptr, ptr %1277, align 8, !tbaa !34
  %1292 = icmp eq ptr %1291, null
  br i1 %1292, label %1293, label %1276, !llvm.loop !266

1293:                                             ; preds = %1290, %1268
  %1294 = getelementptr inbounds %struct.Object, ptr %1269, i64 0, i32 3
  %1295 = load i16, ptr %1294, align 8, !tbaa !267
  %1296 = icmp eq i16 %1295, 25
  br i1 %1296, label %1297, label %1332

1297:                                             ; preds = %1293
  %1298 = getelementptr inbounds %struct.Object, ptr %1269, i64 0, i32 18
  %1299 = load ptr, ptr %1298, align 8, !tbaa !268
  %1300 = icmp eq ptr %1299, null
  br i1 %1300, label %1332, label %1301

1301:                                             ; preds = %1297
  %1302 = load ptr, ptr %1299, align 8, !tbaa !34
  %1303 = icmp eq ptr %1302, null
  br i1 %1303, label %1332, label %1304

1304:                                             ; preds = %1301
  %1305 = getelementptr inbounds %struct.Object, ptr %1269, i64 0, i32 57
  %1306 = getelementptr inbounds %struct.Object, ptr %1269, i64 0, i32 58
  br label %1310

1307:                                             ; preds = %1329, %1310
  %1308 = load ptr, ptr %1311, align 8, !tbaa !34
  %1309 = icmp eq ptr %1308, null
  br i1 %1309, label %1332, label %1310, !llvm.loop !269

1310:                                             ; preds = %1304, %1307
  %1311 = phi ptr [ %1302, %1304 ], [ %1308, %1307 ]
  %1312 = getelementptr inbounds %struct.bPoseChannel, ptr %1311, i64 0, i32 3
  %1313 = load ptr, ptr %1312, align 8, !tbaa !34
  %1314 = icmp eq ptr %1313, null
  br i1 %1314, label %1307, label %1315

1315:                                             ; preds = %1310, %1329
  %1316 = phi ptr [ %1330, %1329 ], [ %1313, %1310 ]
  %1317 = getelementptr inbounds %struct.bConstraint, ptr %1316, i64 0, i32 3
  %1318 = load i16, ptr %1317, align 8, !tbaa !265
  %1319 = icmp eq i16 %1318, 2
  br i1 %1319, label %1320, label %1329

1320:                                             ; preds = %1315
  %1321 = getelementptr inbounds %struct.bConstraint, ptr %1316, i64 0, i32 2
  %1322 = load ptr, ptr %1321, align 8, !tbaa !51
  %1323 = load i16, ptr %1305, align 4, !tbaa !55
  %1324 = sext i16 %1323 to i32
  %1325 = getelementptr inbounds %struct.bTrackToConstraint, ptr %1322, i64 0, i32 1
  store i32 %1324, ptr %1325, align 8, !tbaa !56
  %1326 = load i16, ptr %1306, align 2, !tbaa !57
  %1327 = sext i16 %1326 to i32
  %1328 = getelementptr inbounds %struct.bTrackToConstraint, ptr %1322, i64 0, i32 2
  store i32 %1327, ptr %1328, align 4, !tbaa !58
  br label %1329

1329:                                             ; preds = %1315, %1320
  %1330 = load ptr, ptr %1316, align 8, !tbaa !34
  %1331 = icmp eq ptr %1330, null
  br i1 %1331, label %1307, label %1315, !llvm.loop !270

1332:                                             ; preds = %1307, %1301, %1297, %1293
  tail call void @blo_do_version_old_trackto_to_constraints(ptr noundef nonnull %1269) #16
  %1333 = load ptr, ptr %1269, align 8, !tbaa !34
  %1334 = icmp eq ptr %1333, null
  br i1 %1334, label %1335, label %1268, !llvm.loop !271

1335:                                             ; preds = %1332, %1264
  %1336 = getelementptr inbounds %struct.Main, ptr %2, i64 0, i32 11
  %1337 = load ptr, ptr %1336, align 8, !tbaa !34
  %1338 = icmp eq ptr %1337, null
  br i1 %1338, label %1350, label %1339

1339:                                             ; preds = %1335, %1339
  %1340 = phi ptr [ %1348, %1339 ], [ %1337, %1335 ]
  %1341 = getelementptr inbounds %struct.Scene, ptr %1340, i64 0, i32 23
  store i32 44100, ptr %1341, align 8, !tbaa !272
  %1342 = getelementptr inbounds %struct.Scene, ptr %1340, i64 0, i32 23, i32 5
  %1343 = load i16, ptr %1342, align 4, !tbaa !273
  %1344 = or i16 %1343, 4
  store i16 %1344, ptr %1342, align 4, !tbaa !273
  %1345 = getelementptr inbounds %struct.Scene, ptr %1340, i64 0, i32 22, i32 47
  %1346 = load i32, ptr %1345, align 8, !tbaa !108
  %1347 = or i32 %1346, 16
  store i32 %1347, ptr %1345, align 8, !tbaa !108
  %1348 = load ptr, ptr %1340, align 8, !tbaa !34
  %1349 = icmp eq ptr %1348, null
  br i1 %1349, label %1350, label %1339, !llvm.loop !274

1350:                                             ; preds = %1339, %1335
  %1351 = getelementptr inbounds %struct.Main, ptr %2, i64 0, i32 17
  %1352 = load ptr, ptr %1351, align 8, !tbaa !34
  %1353 = icmp eq ptr %1352, null
  br i1 %1353, label %1360, label %1354

1354:                                             ; preds = %1350, %1354
  %1355 = phi ptr [ %1358, %1354 ], [ %1352, %1350 ]
  %1356 = getelementptr inbounds %struct.Material, ptr %1355, i64 0, i32 85
  store <4 x float> <float 5.000000e-01, float 4.000000e+00, float 5.000000e-01, float 0x3FB99999A0000000>, ptr %1356, align 4, !tbaa !120
  %1357 = getelementptr inbounds %struct.Material, ptr %1355, i64 0, i32 87, i64 2
  store <2 x float> <float 0x3FB99999A0000000, float 0x3FA99999A0000000>, ptr %1357, align 4, !tbaa !120
  %1358 = load ptr, ptr %1355, align 8, !tbaa !34
  %1359 = icmp eq ptr %1358, null
  br i1 %1359, label %1360, label %1354, !llvm.loop !275

1360:                                             ; preds = %1354, %1350
  %1361 = getelementptr inbounds %struct.Main, ptr %2, i64 0, i32 26
  %1362 = load ptr, ptr %1361, align 8, !tbaa !34
  %1363 = icmp eq ptr %1362, null
  br i1 %1363, label %1393, label %1367

1364:                                             ; preds = %1372, %1367
  %1365 = load ptr, ptr %1368, align 8, !tbaa !34
  %1366 = icmp eq ptr %1365, null
  br i1 %1366, label %1393, label %1367, !llvm.loop !276

1367:                                             ; preds = %1360, %1364
  %1368 = phi ptr [ %1365, %1364 ], [ %1362, %1360 ]
  %1369 = getelementptr inbounds %struct.bScreen, ptr %1368, i64 0, i32 3
  %1370 = load ptr, ptr %1369, align 8, !tbaa !34
  %1371 = icmp eq ptr %1370, null
  br i1 %1371, label %1364, label %1375

1372:                                             ; preds = %1390, %1375
  %1373 = load ptr, ptr %1376, align 8, !tbaa !34
  %1374 = icmp eq ptr %1373, null
  br i1 %1374, label %1364, label %1375, !llvm.loop !277

1375:                                             ; preds = %1367, %1372
  %1376 = phi ptr [ %1373, %1372 ], [ %1370, %1367 ]
  %1377 = getelementptr inbounds %struct.ScrArea, ptr %1376, i64 0, i32 19
  %1378 = load ptr, ptr %1377, align 8, !tbaa !34
  %1379 = icmp eq ptr %1378, null
  br i1 %1379, label %1372, label %1380

1380:                                             ; preds = %1375, %1390
  %1381 = phi ptr [ %1391, %1390 ], [ %1378, %1375 ]
  %1382 = getelementptr inbounds %struct.SpaceLink, ptr %1381, i64 0, i32 3
  %1383 = load i32, ptr %1382, align 8, !tbaa !114
  switch i32 %1383, label %1390 [
    i32 12, label %1384
    i32 13, label %1386
  ]

1384:                                             ; preds = %1380
  %1385 = getelementptr inbounds %struct.SpaceAction, ptr %1381, i64 0, i32 6, i32 6
  br label %1388

1386:                                             ; preds = %1380
  %1387 = getelementptr inbounds %struct.SpaceNla, ptr %1381, i64 0, i32 10, i32 6
  br label %1388

1388:                                             ; preds = %1386, %1384
  %1389 = phi ptr [ %1385, %1384 ], [ %1387, %1386 ]
  store float 3.200000e+04, ptr %1389, align 8, !tbaa !120
  br label %1390

1390:                                             ; preds = %1388, %1380
  %1391 = load ptr, ptr %1381, align 8, !tbaa !34
  %1392 = icmp eq ptr %1391, null
  br i1 %1392, label %1372, label %1380, !llvm.loop !278

1393:                                             ; preds = %1364, %1360, %1262
  %1394 = load i16, ptr %7, align 8, !tbaa !59
  %1395 = icmp slt i16 %1394, 229
  br i1 %1395, label %1396, label %1519

1396:                                             ; preds = %1393
  %1397 = getelementptr inbounds %struct.Main, ptr %2, i64 0, i32 13
  %1398 = load ptr, ptr %1397, align 8, !tbaa !34
  %1399 = icmp eq ptr %1398, null
  br i1 %1399, label %1467, label %1400

1400:                                             ; preds = %1396, %1464
  %1401 = phi ptr [ %1465, %1464 ], [ %1398, %1396 ]
  %1402 = getelementptr inbounds %struct.Object, ptr %1401, i64 0, i32 106
  %1403 = load ptr, ptr %1402, align 8, !tbaa !34
  %1404 = icmp eq ptr %1403, null
  br i1 %1404, label %1425, label %1405

1405:                                             ; preds = %1400
  %1406 = getelementptr inbounds %struct.Object, ptr %1401, i64 0, i32 57
  %1407 = getelementptr inbounds %struct.Object, ptr %1401, i64 0, i32 58
  br label %1408

1408:                                             ; preds = %1405, %1422
  %1409 = phi ptr [ %1403, %1405 ], [ %1423, %1422 ]
  %1410 = getelementptr inbounds %struct.bConstraint, ptr %1409, i64 0, i32 3
  %1411 = load i16, ptr %1410, align 8, !tbaa !265
  %1412 = icmp eq i16 %1411, 2
  br i1 %1412, label %1413, label %1422

1413:                                             ; preds = %1408
  %1414 = getelementptr inbounds %struct.bConstraint, ptr %1409, i64 0, i32 2
  %1415 = load ptr, ptr %1414, align 8, !tbaa !51
  %1416 = load i16, ptr %1406, align 4, !tbaa !55
  %1417 = sext i16 %1416 to i32
  %1418 = getelementptr inbounds %struct.bTrackToConstraint, ptr %1415, i64 0, i32 1
  store i32 %1417, ptr %1418, align 8, !tbaa !56
  %1419 = load i16, ptr %1407, align 2, !tbaa !57
  %1420 = sext i16 %1419 to i32
  %1421 = getelementptr inbounds %struct.bTrackToConstraint, ptr %1415, i64 0, i32 2
  store i32 %1420, ptr %1421, align 4, !tbaa !58
  br label %1422

1422:                                             ; preds = %1408, %1413
  %1423 = load ptr, ptr %1409, align 8, !tbaa !34
  %1424 = icmp eq ptr %1423, null
  br i1 %1424, label %1425, label %1408, !llvm.loop !279

1425:                                             ; preds = %1422, %1400
  %1426 = getelementptr inbounds %struct.Object, ptr %1401, i64 0, i32 3
  %1427 = load i16, ptr %1426, align 8, !tbaa !267
  %1428 = icmp eq i16 %1427, 25
  br i1 %1428, label %1429, label %1464

1429:                                             ; preds = %1425
  %1430 = getelementptr inbounds %struct.Object, ptr %1401, i64 0, i32 18
  %1431 = load ptr, ptr %1430, align 8, !tbaa !268
  %1432 = icmp eq ptr %1431, null
  br i1 %1432, label %1464, label %1433

1433:                                             ; preds = %1429
  %1434 = load ptr, ptr %1431, align 8, !tbaa !34
  %1435 = icmp eq ptr %1434, null
  br i1 %1435, label %1464, label %1436

1436:                                             ; preds = %1433
  %1437 = getelementptr inbounds %struct.Object, ptr %1401, i64 0, i32 57
  %1438 = getelementptr inbounds %struct.Object, ptr %1401, i64 0, i32 58
  br label %1442

1439:                                             ; preds = %1461, %1442
  %1440 = load ptr, ptr %1443, align 8, !tbaa !34
  %1441 = icmp eq ptr %1440, null
  br i1 %1441, label %1464, label %1442, !llvm.loop !280

1442:                                             ; preds = %1436, %1439
  %1443 = phi ptr [ %1434, %1436 ], [ %1440, %1439 ]
  %1444 = getelementptr inbounds %struct.bPoseChannel, ptr %1443, i64 0, i32 3
  %1445 = load ptr, ptr %1444, align 8, !tbaa !34
  %1446 = icmp eq ptr %1445, null
  br i1 %1446, label %1439, label %1447

1447:                                             ; preds = %1442, %1461
  %1448 = phi ptr [ %1462, %1461 ], [ %1445, %1442 ]
  %1449 = getelementptr inbounds %struct.bConstraint, ptr %1448, i64 0, i32 3
  %1450 = load i16, ptr %1449, align 8, !tbaa !265
  %1451 = icmp eq i16 %1450, 2
  br i1 %1451, label %1452, label %1461

1452:                                             ; preds = %1447
  %1453 = getelementptr inbounds %struct.bConstraint, ptr %1448, i64 0, i32 2
  %1454 = load ptr, ptr %1453, align 8, !tbaa !51
  %1455 = load i16, ptr %1437, align 4, !tbaa !55
  %1456 = sext i16 %1455 to i32
  %1457 = getelementptr inbounds %struct.bTrackToConstraint, ptr %1454, i64 0, i32 1
  store i32 %1456, ptr %1457, align 8, !tbaa !56
  %1458 = load i16, ptr %1438, align 2, !tbaa !57
  %1459 = sext i16 %1458 to i32
  %1460 = getelementptr inbounds %struct.bTrackToConstraint, ptr %1454, i64 0, i32 2
  store i32 %1459, ptr %1460, align 4, !tbaa !58
  br label %1461

1461:                                             ; preds = %1447, %1452
  %1462 = load ptr, ptr %1448, align 8, !tbaa !34
  %1463 = icmp eq ptr %1462, null
  br i1 %1463, label %1439, label %1447, !llvm.loop !281

1464:                                             ; preds = %1439, %1433, %1429, %1425
  %1465 = load ptr, ptr %1401, align 8, !tbaa !34
  %1466 = icmp eq ptr %1465, null
  br i1 %1466, label %1467, label %1400, !llvm.loop !282

1467:                                             ; preds = %1464, %1396
  %1468 = getelementptr inbounds %struct.Main, ptr %2, i64 0, i32 11
  %1469 = load ptr, ptr %1468, align 8, !tbaa !34
  %1470 = icmp eq ptr %1469, null
  br i1 %1470, label %1478, label %1471

1471:                                             ; preds = %1467, %1471
  %1472 = phi ptr [ %1476, %1471 ], [ %1469, %1467 ]
  %1473 = getelementptr inbounds %struct.Scene, ptr %1472, i64 0, i32 22, i32 47
  %1474 = load i32, ptr %1473, align 8, !tbaa !108
  %1475 = or i32 %1474, 16
  store i32 %1475, ptr %1473, align 8, !tbaa !108
  %1476 = load ptr, ptr %1472, align 8, !tbaa !34
  %1477 = icmp eq ptr %1476, null
  br i1 %1477, label %1478, label %1471, !llvm.loop !283

1478:                                             ; preds = %1471, %1467
  %1479 = getelementptr inbounds %struct.Main, ptr %2, i64 0, i32 26
  %1480 = load ptr, ptr %1479, align 8, !tbaa !34
  %1481 = icmp eq ptr %1480, null
  br i1 %1481, label %1519, label %1485

1482:                                             ; preds = %1490, %1485
  %1483 = load ptr, ptr %1486, align 8, !tbaa !34
  %1484 = icmp eq ptr %1483, null
  br i1 %1484, label %1519, label %1485, !llvm.loop !284

1485:                                             ; preds = %1478, %1482
  %1486 = phi ptr [ %1483, %1482 ], [ %1480, %1478 ]
  %1487 = getelementptr inbounds %struct.bScreen, ptr %1486, i64 0, i32 3
  %1488 = load ptr, ptr %1487, align 8, !tbaa !34
  %1489 = icmp eq ptr %1488, null
  br i1 %1489, label %1482, label %1493

1490:                                             ; preds = %1516, %1493
  %1491 = load ptr, ptr %1494, align 8, !tbaa !34
  %1492 = icmp eq ptr %1491, null
  br i1 %1492, label %1482, label %1493, !llvm.loop !285

1493:                                             ; preds = %1485, %1490
  %1494 = phi ptr [ %1491, %1490 ], [ %1488, %1485 ]
  %1495 = getelementptr inbounds %struct.ScrArea, ptr %1494, i64 0, i32 19
  %1496 = load ptr, ptr %1495, align 8, !tbaa !34
  %1497 = icmp eq ptr %1496, null
  br i1 %1497, label %1490, label %1498

1498:                                             ; preds = %1493, %1516
  %1499 = phi ptr [ %1517, %1516 ], [ %1496, %1493 ]
  %1500 = getelementptr inbounds %struct.SpaceLink, ptr %1499, i64 0, i32 3
  %1501 = load i32, ptr %1500, align 8, !tbaa !114
  %1502 = icmp eq i32 %1501, 4
  br i1 %1502, label %1503, label %1516

1503:                                             ; preds = %1498
  %1504 = getelementptr inbounds %struct.SpaceButs, ptr %1499, i64 0, i32 6, i32 8
  store float 0x3FF3333340000000, ptr %1504, align 4, !tbaa !286
  %1505 = getelementptr inbounds %struct.SpaceButs, ptr %1499, i64 0, i32 11
  store i16 1, ptr %1505, align 8, !tbaa !288
  %1506 = getelementptr inbounds %struct.SpaceButs, ptr %1499, i64 0, i32 7
  %1507 = load i16, ptr %1506, align 8, !tbaa !289
  %1508 = add i16 %1507, -1
  %1509 = icmp ult i16 %1508, 13
  br i1 %1509, label %1510, label %1514

1510:                                             ; preds = %1503
  %1511 = zext nneg i16 %1508 to i64
  %1512 = getelementptr inbounds [13 x i16], ptr @switch.table.blo_do_versions_pre250, i64 0, i64 %1511
  %1513 = load i16, ptr %1512, align 2
  br label %1514

1514:                                             ; preds = %1503, %1510
  %1515 = phi i16 [ %1513, %1510 ], [ 0, %1503 ]
  store i16 %1515, ptr %1506, align 8, !tbaa !289
  br label %1516

1516:                                             ; preds = %1514, %1498
  %1517 = load ptr, ptr %1499, align 8, !tbaa !34
  %1518 = icmp eq ptr %1517, null
  br i1 %1518, label %1490, label %1498, !llvm.loop !290

1519:                                             ; preds = %1482, %1478, %1393
  %1520 = icmp slt i16 %1394, 231
  br i1 %1520, label %1521, label %1556

1521:                                             ; preds = %1519
  %1522 = getelementptr inbounds %struct.Main, ptr %2, i64 0, i32 26
  %1523 = load ptr, ptr %1522, align 8, !tbaa !34
  %1524 = icmp eq ptr %1523, null
  br i1 %1524, label %1558, label %1528

1525:                                             ; preds = %1533, %1528
  %1526 = load ptr, ptr %1529, align 8, !tbaa !34
  %1527 = icmp eq ptr %1526, null
  br i1 %1527, label %1556, label %1528, !llvm.loop !291

1528:                                             ; preds = %1521, %1525
  %1529 = phi ptr [ %1526, %1525 ], [ %1523, %1521 ]
  %1530 = getelementptr inbounds %struct.bScreen, ptr %1529, i64 0, i32 3
  %1531 = load ptr, ptr %1530, align 8, !tbaa !34
  %1532 = icmp eq ptr %1531, null
  br i1 %1532, label %1525, label %1536

1533:                                             ; preds = %1553, %1536
  %1534 = load ptr, ptr %1537, align 8, !tbaa !34
  %1535 = icmp eq ptr %1534, null
  br i1 %1535, label %1525, label %1536, !llvm.loop !292

1536:                                             ; preds = %1528, %1533
  %1537 = phi ptr [ %1534, %1533 ], [ %1531, %1528 ]
  %1538 = getelementptr inbounds %struct.ScrArea, ptr %1537, i64 0, i32 19
  %1539 = load ptr, ptr %1538, align 8, !tbaa !34
  %1540 = icmp eq ptr %1539, null
  br i1 %1540, label %1533, label %1541

1541:                                             ; preds = %1536, %1553
  %1542 = phi ptr [ %1554, %1553 ], [ %1539, %1536 ]
  %1543 = getelementptr inbounds %struct.SpaceLink, ptr %1542, i64 0, i32 4
  %1544 = load float, ptr %1543, align 4, !tbaa !293
  %1545 = fcmp oeq float %1544, 0.000000e+00
  br i1 %1545, label %1546, label %1547

1546:                                             ; preds = %1541
  store float 0x3FE6666660000000, ptr %1543, align 4, !tbaa !293
  br label %1547

1547:                                             ; preds = %1546, %1541
  %1548 = getelementptr inbounds %struct.SpaceLink, ptr %1542, i64 0, i32 3
  %1549 = load i32, ptr %1548, align 8, !tbaa !114
  %1550 = icmp eq i32 %1549, 12
  br i1 %1550, label %1551, label %1553

1551:                                             ; preds = %1547
  %1552 = getelementptr inbounds %struct.SpaceAction, ptr %1542, i64 0, i32 6, i32 8
  store float 5.000000e+01, ptr %1552, align 4, !tbaa !294
  br label %1553

1553:                                             ; preds = %1547, %1551
  %1554 = load ptr, ptr %1542, align 8, !tbaa !34
  %1555 = icmp eq ptr %1554, null
  br i1 %1555, label %1533, label %1541, !llvm.loop !297

1556:                                             ; preds = %1525, %1519
  %1557 = icmp slt i16 %1394, 232
  br i1 %1557, label %1558, label %1716

1558:                                             ; preds = %1521, %1556
  %1559 = getelementptr inbounds %struct.Main, ptr %2, i64 0, i32 26
  %1560 = load ptr, ptr %1559, align 8, !tbaa !34
  %1561 = icmp eq ptr %1560, null
  br i1 %1561, label %1591, label %1565

1562:                                             ; preds = %1570, %1565
  %1563 = load ptr, ptr %1566, align 8, !tbaa !34
  %1564 = icmp eq ptr %1563, null
  br i1 %1564, label %1591, label %1565, !llvm.loop !298

1565:                                             ; preds = %1558, %1562
  %1566 = phi ptr [ %1563, %1562 ], [ %1560, %1558 ]
  %1567 = getelementptr inbounds %struct.bScreen, ptr %1566, i64 0, i32 3
  %1568 = load ptr, ptr %1567, align 8, !tbaa !34
  %1569 = icmp eq ptr %1568, null
  br i1 %1569, label %1562, label %1573

1570:                                             ; preds = %1588, %1573
  %1571 = load ptr, ptr %1574, align 8, !tbaa !34
  %1572 = icmp eq ptr %1571, null
  br i1 %1572, label %1562, label %1573, !llvm.loop !299

1573:                                             ; preds = %1565, %1570
  %1574 = phi ptr [ %1571, %1570 ], [ %1568, %1565 ]
  %1575 = getelementptr inbounds %struct.ScrArea, ptr %1574, i64 0, i32 19
  %1576 = load ptr, ptr %1575, align 8, !tbaa !34
  %1577 = icmp eq ptr %1576, null
  br i1 %1577, label %1570, label %1578

1578:                                             ; preds = %1573, %1588
  %1579 = phi ptr [ %1589, %1588 ], [ %1576, %1573 ]
  %1580 = getelementptr inbounds %struct.SpaceLink, ptr %1579, i64 0, i32 3
  %1581 = load i32, ptr %1580, align 8, !tbaa !114
  %1582 = icmp eq i32 %1581, 1
  br i1 %1582, label %1583, label %1588

1583:                                             ; preds = %1578
  %1584 = getelementptr inbounds %struct.View3D, ptr %1579, i64 0, i32 39
  %1585 = load i8, ptr %1584, align 2, !tbaa !300
  %1586 = icmp eq i8 %1585, 0
  br i1 %1586, label %1587, label %1588

1587:                                             ; preds = %1583
  store i8 7, ptr %1584, align 2, !tbaa !300
  br label %1588

1588:                                             ; preds = %1583, %1587, %1578
  %1589 = load ptr, ptr %1579, align 8, !tbaa !34
  %1590 = icmp eq ptr %1589, null
  br i1 %1590, label %1570, label %1578, !llvm.loop !301

1591:                                             ; preds = %1562, %1558
  %1592 = getelementptr inbounds %struct.Main, ptr %2, i64 0, i32 17
  %1593 = load ptr, ptr %1592, align 8, !tbaa !34
  %1594 = icmp eq ptr %1593, null
  br i1 %1594, label %1614, label %1595

1595:                                             ; preds = %1591, %1606
  %1596 = phi ptr [ %1612, %1606 ], [ %1593, %1591 ]
  %1597 = getelementptr inbounds %struct.Material, ptr %1596, i64 0, i32 32
  %1598 = load float, ptr %1597, align 4, !tbaa !302
  %1599 = fcmp oeq float %1598, 0.000000e+00
  br i1 %1599, label %1600, label %1601

1600:                                             ; preds = %1595
  store float 1.250000e+00, ptr %1597, align 4, !tbaa !302
  br label %1601

1601:                                             ; preds = %1600, %1595
  %1602 = getelementptr inbounds %struct.Material, ptr %1596, i64 0, i32 30
  %1603 = load float, ptr %1602, align 4, !tbaa !303
  %1604 = fcmp oeq float %1603, 0.000000e+00
  br i1 %1604, label %1605, label %1606

1605:                                             ; preds = %1601
  store float 1.250000e+00, ptr %1602, align 4, !tbaa !303
  br label %1606

1606:                                             ; preds = %1605, %1601
  %1607 = getelementptr inbounds %struct.Material, ptr %1596, i64 0, i32 18
  store float 1.000000e+00, ptr %1607, align 4, !tbaa !304
  %1608 = getelementptr inbounds %struct.Material, ptr %1596, i64 0, i32 36
  store i16 2, ptr %1608, align 4, !tbaa !305
  %1609 = getelementptr inbounds %struct.Material, ptr %1596, i64 0, i32 37
  store i16 2, ptr %1609, align 2, !tbaa !306
  %1610 = getelementptr inbounds %struct.Material, ptr %1596, i64 0, i32 31
  store float 0.000000e+00, ptr %1610, align 8, !tbaa !307
  %1611 = getelementptr inbounds %struct.Material, ptr %1596, i64 0, i32 29
  store float 0.000000e+00, ptr %1611, align 8, !tbaa !308
  %1612 = load ptr, ptr %1596, align 8, !tbaa !34
  %1613 = icmp eq ptr %1612, null
  br i1 %1613, label %1614, label %1595, !llvm.loop !309

1614:                                             ; preds = %1606, %1591
  %1615 = getelementptr inbounds %struct.Main, ptr %2, i64 0, i32 11
  %1616 = load ptr, ptr %1615, align 8, !tbaa !34
  %1617 = icmp eq ptr %1616, null
  br i1 %1617, label %1627, label %1618

1618:                                             ; preds = %1614, %1624
  %1619 = phi ptr [ %1625, %1624 ], [ %1616, %1614 ]
  %1620 = getelementptr inbounds %struct.Scene, ptr %1619, i64 0, i32 22, i32 66
  %1621 = load float, ptr %1620, align 8, !tbaa !310
  %1622 = fcmp oeq float %1621, 0.000000e+00
  br i1 %1622, label %1623, label %1624

1623:                                             ; preds = %1618
  store float 1.000000e+00, ptr %1620, align 8, !tbaa !310
  br label %1624

1624:                                             ; preds = %1623, %1618
  %1625 = load ptr, ptr %1619, align 8, !tbaa !34
  %1626 = icmp eq ptr %1625, null
  br i1 %1626, label %1627, label %1618, !llvm.loop !311

1627:                                             ; preds = %1624, %1614
  %1628 = getelementptr inbounds %struct.Main, ptr %2, i64 0, i32 21
  %1629 = load ptr, ptr %1628, align 8, !tbaa !34
  %1630 = icmp eq ptr %1629, null
  br i1 %1630, label %1670, label %1631

1631:                                             ; preds = %1627, %1667
  %1632 = phi ptr [ %1668, %1667 ], [ %1629, %1627 ]
  %1633 = getelementptr inbounds %struct.Lamp, ptr %1632, i64 0, i32 10
  %1634 = load float, ptr %1633, align 8, !tbaa !312
  %1635 = fcmp oeq float %1634, 0.000000e+00
  br i1 %1635, label %1636, label %1637

1636:                                             ; preds = %1631
  store float 1.000000e+00, ptr %1633, align 8, !tbaa !312
  br label %1637

1637:                                             ; preds = %1636, %1631
  %1638 = getelementptr inbounds %struct.Lamp, ptr %1632, i64 0, i32 38
  %1639 = load i16, ptr %1638, align 2, !tbaa !314
  %1640 = icmp eq i16 %1639, 0
  br i1 %1640, label %1641, label %1642

1641:                                             ; preds = %1637
  store i16 1, ptr %1638, align 2, !tbaa !314
  br label %1642

1642:                                             ; preds = %1641, %1637
  %1643 = getelementptr inbounds %struct.Lamp, ptr %1632, i64 0, i32 39
  %1644 = load i16, ptr %1643, align 4, !tbaa !315
  %1645 = icmp eq i16 %1644, 0
  br i1 %1645, label %1646, label %1647

1646:                                             ; preds = %1642
  store i16 1, ptr %1643, align 4, !tbaa !315
  br label %1647

1647:                                             ; preds = %1646, %1642
  %1648 = getelementptr inbounds %struct.Lamp, ptr %1632, i64 0, i32 40
  %1649 = load i16, ptr %1648, align 2, !tbaa !316
  %1650 = icmp eq i16 %1649, 0
  br i1 %1650, label %1651, label %1652

1651:                                             ; preds = %1647
  store i16 1, ptr %1648, align 2, !tbaa !316
  br label %1652

1652:                                             ; preds = %1651, %1647
  %1653 = getelementptr inbounds %struct.Lamp, ptr %1632, i64 0, i32 43
  %1654 = load float, ptr %1653, align 4, !tbaa !317
  %1655 = fcmp oeq float %1654, 0.000000e+00
  br i1 %1655, label %1656, label %1657

1656:                                             ; preds = %1652
  store float 1.000000e+00, ptr %1653, align 4, !tbaa !317
  br label %1657

1657:                                             ; preds = %1656, %1652
  %1658 = getelementptr inbounds %struct.Lamp, ptr %1632, i64 0, i32 44
  %1659 = load float, ptr %1658, align 8, !tbaa !318
  %1660 = fcmp oeq float %1659, 0.000000e+00
  br i1 %1660, label %1661, label %1662

1661:                                             ; preds = %1657
  store float 1.000000e+00, ptr %1658, align 8, !tbaa !318
  br label %1662

1662:                                             ; preds = %1661, %1657
  %1663 = getelementptr inbounds %struct.Lamp, ptr %1632, i64 0, i32 45
  %1664 = load float, ptr %1663, align 4, !tbaa !319
  %1665 = fcmp oeq float %1664, 0.000000e+00
  br i1 %1665, label %1666, label %1667

1666:                                             ; preds = %1662
  store float 1.000000e+00, ptr %1663, align 4, !tbaa !319
  br label %1667

1667:                                             ; preds = %1666, %1662
  %1668 = load ptr, ptr %1632, align 8, !tbaa !34
  %1669 = icmp eq ptr %1668, null
  br i1 %1669, label %1670, label %1631, !llvm.loop !320

1670:                                             ; preds = %1667, %1627
  %1671 = getelementptr inbounds %struct.Main, ptr %2, i64 0, i32 25
  %1672 = load ptr, ptr %1671, align 8, !tbaa !34
  %1673 = icmp eq ptr %1672, null
  br i1 %1673, label %1674, label %1675

1674:                                             ; preds = %1684, %1670
  br i1 %1561, label %1716, label %1687

1675:                                             ; preds = %1670, %1684
  %1676 = phi ptr [ %1685, %1684 ], [ %1672, %1670 ]
  %1677 = getelementptr inbounds %struct.World, ptr %1676, i64 0, i32 17
  %1678 = load float, ptr %1677, align 4, !tbaa !321
  %1679 = fcmp oeq float %1678, 0.000000e+00
  br i1 %1679, label %1680, label %1684

1680:                                             ; preds = %1675
  %1681 = getelementptr inbounds %struct.World, ptr %1676, i64 0, i32 15
  %1682 = load float, ptr %1681, align 4, !tbaa !322
  %1683 = fdiv float 1.000000e+00, %1682
  store float %1683, ptr %1677, align 4, !tbaa !321
  br label %1684

1684:                                             ; preds = %1680, %1675
  %1685 = load ptr, ptr %1676, align 8, !tbaa !34
  %1686 = icmp eq ptr %1685, null
  br i1 %1686, label %1674, label %1675, !llvm.loop !323

1687:                                             ; preds = %1674, %1713
  %1688 = phi ptr [ %1714, %1713 ], [ %1560, %1674 ]
  %1689 = getelementptr inbounds %struct.bScreen, ptr %1688, i64 0, i32 3
  %1690 = load ptr, ptr %1689, align 8, !tbaa !34
  %1691 = icmp eq ptr %1690, null
  br i1 %1691, label %1713, label %1695

1692:                                             ; preds = %1710, %1695
  %1693 = load ptr, ptr %1696, align 8, !tbaa !34
  %1694 = icmp eq ptr %1693, null
  br i1 %1694, label %1713, label %1695, !llvm.loop !324

1695:                                             ; preds = %1687, %1692
  %1696 = phi ptr [ %1693, %1692 ], [ %1690, %1687 ]
  %1697 = getelementptr inbounds %struct.ScrArea, ptr %1696, i64 0, i32 19
  %1698 = load ptr, ptr %1697, align 8, !tbaa !34
  %1699 = icmp eq ptr %1698, null
  br i1 %1699, label %1692, label %1700

1700:                                             ; preds = %1695, %1710
  %1701 = phi ptr [ %1711, %1710 ], [ %1698, %1695 ]
  %1702 = getelementptr inbounds %struct.SpaceLink, ptr %1701, i64 0, i32 3
  %1703 = load i32, ptr %1702, align 8, !tbaa !114
  %1704 = icmp eq i32 %1703, 1
  br i1 %1704, label %1705, label %1710

1705:                                             ; preds = %1700
  %1706 = getelementptr inbounds %struct.View3D, ptr %1701, i64 0, i32 39
  %1707 = load i8, ptr %1706, align 2, !tbaa !300
  %1708 = icmp eq i8 %1707, 0
  br i1 %1708, label %1709, label %1710

1709:                                             ; preds = %1705
  store i8 7, ptr %1706, align 2, !tbaa !300
  br label %1710

1710:                                             ; preds = %1705, %1709, %1700
  %1711 = load ptr, ptr %1701, align 8, !tbaa !34
  %1712 = icmp eq ptr %1711, null
  br i1 %1712, label %1692, label %1700, !llvm.loop !325

1713:                                             ; preds = %1692, %1687
  %1714 = load ptr, ptr %1688, align 8, !tbaa !326
  %1715 = icmp eq ptr %1714, null
  br i1 %1715, label %1716, label %1687, !llvm.loop !328

1716:                                             ; preds = %1713, %1674, %1556
  %1717 = icmp slt i16 %1394, 233
  br i1 %1717, label %1718, label %1813

1718:                                             ; preds = %1716
  %1719 = getelementptr inbounds %struct.Main, ptr %2, i64 0, i32 18
  %1720 = getelementptr inbounds %struct.Main, ptr %2, i64 0, i32 25
  %1721 = load ptr, ptr %1720, align 8, !tbaa !329
  %1722 = load ptr, ptr %1719, align 8, !tbaa !34
  %1723 = icmp eq ptr %1722, null
  br i1 %1723, label %1724, label %1726

1724:                                             ; preds = %1742, %1718
  %1725 = icmp eq ptr %1721, null
  br i1 %1725, label %1765, label %1745

1726:                                             ; preds = %1718, %1742
  %1727 = phi ptr [ %1743, %1742 ], [ %1722, %1718 ]
  %1728 = getelementptr inbounds %struct.Tex, ptr %1727, i64 0, i32 31
  %1729 = load i16, ptr %1728, align 2, !tbaa !330
  %1730 = and i16 %1729, 24
  %1731 = icmp eq i16 %1730, 0
  br i1 %1731, label %1732, label %1734

1732:                                             ; preds = %1726
  %1733 = or disjoint i16 %1729, 8
  store i16 %1733, ptr %1728, align 2, !tbaa !330
  br label %1734

1734:                                             ; preds = %1732, %1726
  %1735 = getelementptr inbounds %struct.Tex, ptr %1727, i64 0, i32 18
  %1736 = load float, ptr %1735, align 8, !tbaa !331
  %1737 = fcmp oeq float %1736, 0.000000e+00
  br i1 %1737, label %1738, label %1742

1738:                                             ; preds = %1734
  %1739 = getelementptr inbounds %struct.Tex, ptr %1727, i64 0, i32 12
  store <4 x float> <float 1.000000e+00, float 2.000000e+00, float 2.000000e+00, float 1.000000e+00>, ptr %1739, align 8, !tbaa !120
  %1740 = getelementptr inbounds %struct.Tex, ptr %1727, i64 0, i32 16
  store <4 x float> <float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float 1.000000e+00>, ptr %1740, align 8, !tbaa !120
  %1741 = getelementptr inbounds %struct.Tex, ptr %1727, i64 0, i32 23
  store float 2.500000e+00, ptr %1741, align 4, !tbaa !332
  br label %1742

1742:                                             ; preds = %1738, %1734
  %1743 = load ptr, ptr %1727, align 8, !tbaa !34
  %1744 = icmp eq ptr %1743, null
  br i1 %1744, label %1724, label %1726, !llvm.loop !333

1745:                                             ; preds = %1724, %1762
  %1746 = phi ptr [ %1763, %1762 ], [ %1721, %1724 ]
  %1747 = getelementptr inbounds %struct.World, ptr %1746, i64 0, i32 46
  %1748 = load float, ptr %1747, align 8, !tbaa !334
  %1749 = fcmp oeq float %1748, 0.000000e+00
  br i1 %1749, label %1750, label %1752

1750:                                             ; preds = %1745
  store float 1.000000e+01, ptr %1747, align 8, !tbaa !334
  %1751 = getelementptr inbounds %struct.World, ptr %1746, i64 0, i32 49
  store float 0x3FA99999A0000000, ptr %1751, align 4, !tbaa !335
  br label %1752

1752:                                             ; preds = %1750, %1745
  %1753 = getelementptr inbounds %struct.World, ptr %1746, i64 0, i32 51
  %1754 = load i16, ptr %1753, align 2, !tbaa !336
  %1755 = icmp eq i16 %1754, 0
  br i1 %1755, label %1756, label %1757

1756:                                             ; preds = %1752
  store i16 5, ptr %1753, align 2, !tbaa !336
  br label %1757

1757:                                             ; preds = %1756, %1752
  %1758 = getelementptr inbounds %struct.World, ptr %1746, i64 0, i32 48
  %1759 = load float, ptr %1758, align 8, !tbaa !337
  %1760 = fcmp oeq float %1759, 0.000000e+00
  br i1 %1760, label %1761, label %1762

1761:                                             ; preds = %1757
  store float 1.000000e+00, ptr %1758, align 8, !tbaa !337
  br label %1762

1762:                                             ; preds = %1761, %1757
  %1763 = load ptr, ptr %1746, align 8, !tbaa !338
  %1764 = icmp eq ptr %1763, null
  br i1 %1764, label %1765, label %1745, !llvm.loop !339

1765:                                             ; preds = %1762, %1724
  %1766 = getelementptr inbounds %struct.Main, ptr %2, i64 0, i32 26
  %1767 = load ptr, ptr %1766, align 8, !tbaa !34
  %1768 = icmp eq ptr %1767, null
  br i1 %1768, label %1800, label %1772

1769:                                             ; preds = %1777, %1772
  %1770 = load ptr, ptr %1773, align 8, !tbaa !34
  %1771 = icmp eq ptr %1770, null
  br i1 %1771, label %1800, label %1772, !llvm.loop !340

1772:                                             ; preds = %1765, %1769
  %1773 = phi ptr [ %1770, %1769 ], [ %1767, %1765 ]
  %1774 = getelementptr inbounds %struct.bScreen, ptr %1773, i64 0, i32 3
  %1775 = load ptr, ptr %1774, align 8, !tbaa !34
  %1776 = icmp eq ptr %1775, null
  br i1 %1776, label %1769, label %1780

1777:                                             ; preds = %1797, %1780
  %1778 = load ptr, ptr %1781, align 8, !tbaa !34
  %1779 = icmp eq ptr %1778, null
  br i1 %1779, label %1769, label %1780, !llvm.loop !341

1780:                                             ; preds = %1772, %1777
  %1781 = phi ptr [ %1778, %1777 ], [ %1775, %1772 ]
  %1782 = getelementptr inbounds %struct.ScrArea, ptr %1781, i64 0, i32 19
  %1783 = load ptr, ptr %1782, align 8, !tbaa !34
  %1784 = icmp eq ptr %1783, null
  br i1 %1784, label %1777, label %1785

1785:                                             ; preds = %1780, %1797
  %1786 = phi ptr [ %1798, %1797 ], [ %1783, %1780 ]
  %1787 = getelementptr inbounds %struct.SpaceLink, ptr %1786, i64 0, i32 4
  %1788 = load float, ptr %1787, align 4, !tbaa !293
  %1789 = fcmp oeq float %1788, 0.000000e+00
  br i1 %1789, label %1790, label %1791

1790:                                             ; preds = %1785
  store float 0x3FE6666660000000, ptr %1787, align 4, !tbaa !293
  br label %1791

1791:                                             ; preds = %1790, %1785
  %1792 = getelementptr inbounds %struct.SpaceLink, ptr %1786, i64 0, i32 3
  %1793 = load i32, ptr %1792, align 8, !tbaa !114
  %1794 = icmp eq i32 %1793, 13
  br i1 %1794, label %1795, label %1797

1795:                                             ; preds = %1791
  %1796 = getelementptr inbounds %struct.SpaceNla, ptr %1786, i64 0, i32 10, i32 8
  store float 5.000000e+01, ptr %1796, align 4, !tbaa !342
  br label %1797

1797:                                             ; preds = %1791, %1795
  %1798 = load ptr, ptr %1786, align 8, !tbaa !34
  %1799 = icmp eq ptr %1798, null
  br i1 %1799, label %1777, label %1785, !llvm.loop !344

1800:                                             ; preds = %1769, %1765
  %1801 = getelementptr inbounds %struct.Main, ptr %2, i64 0, i32 11
  %1802 = load ptr, ptr %1801, align 8, !tbaa !34
  %1803 = icmp eq ptr %1802, null
  br i1 %1803, label %1813, label %1804

1804:                                             ; preds = %1800, %1810
  %1805 = phi ptr [ %1811, %1810 ], [ %1802, %1800 ]
  %1806 = getelementptr inbounds %struct.Scene, ptr %1805, i64 0, i32 22, i32 51
  %1807 = load i16, ptr %1806, align 4, !tbaa !345
  %1808 = icmp eq i16 %1807, 0
  br i1 %1808, label %1809, label %1810

1809:                                             ; preds = %1804
  store i16 64, ptr %1806, align 4, !tbaa !345
  br label %1810

1810:                                             ; preds = %1809, %1804
  %1811 = load ptr, ptr %1805, align 8, !tbaa !34
  %1812 = icmp eq ptr %1811, null
  br i1 %1812, label %1813, label %1804, !llvm.loop !346

1813:                                             ; preds = %1810, %1800, %1716
  %1814 = icmp slt i16 %1394, 234
  br i1 %1814, label %1815, label %1870

1815:                                             ; preds = %1813
  %1816 = getelementptr inbounds %struct.Main, ptr %2, i64 0, i32 17
  %1817 = load ptr, ptr %1816, align 8, !tbaa !34
  %1818 = icmp eq ptr %1817, null
  br i1 %1818, label %1838, label %1819

1819:                                             ; preds = %1815, %1835
  %1820 = phi ptr [ %1836, %1835 ], [ %1817, %1815 ]
  %1821 = getelementptr inbounds %struct.Material, ptr %1820, i64 0, i32 100
  %1822 = load float, ptr %1821, align 8, !tbaa !347
  %1823 = fcmp oeq float %1822, 0.000000e+00
  br i1 %1823, label %1824, label %1825

1824:                                             ; preds = %1819
  store float 1.000000e+00, ptr %1821, align 8, !tbaa !347
  br label %1825

1825:                                             ; preds = %1824, %1819
  %1826 = getelementptr inbounds %struct.Material, ptr %1820, i64 0, i32 101
  %1827 = load float, ptr %1826, align 4, !tbaa !348
  %1828 = fcmp oeq float %1827, 0.000000e+00
  br i1 %1828, label %1829, label %1830

1829:                                             ; preds = %1825
  store float 1.000000e+00, ptr %1826, align 4, !tbaa !348
  br label %1830

1830:                                             ; preds = %1829, %1825
  %1831 = getelementptr inbounds %struct.Material, ptr %1820, i64 0, i32 78
  %1832 = load i16, ptr %1831, align 8, !tbaa !349
  %1833 = icmp eq i16 %1832, 0
  br i1 %1833, label %1834, label %1835

1834:                                             ; preds = %1830
  store i16 3, ptr %1831, align 8, !tbaa !349
  br label %1835

1835:                                             ; preds = %1834, %1830
  %1836 = load ptr, ptr %1820, align 8, !tbaa !34
  %1837 = icmp eq ptr %1836, null
  br i1 %1837, label %1838, label %1819, !llvm.loop !350

1838:                                             ; preds = %1835, %1815
  %1839 = getelementptr inbounds %struct.Main, ptr %2, i64 0, i32 26
  %1840 = load ptr, ptr %1839, align 8, !tbaa !34
  %1841 = icmp eq ptr %1840, null
  br i1 %1841, label %1870, label %1845

1842:                                             ; preds = %1850, %1845
  %1843 = load ptr, ptr %1846, align 8, !tbaa !34
  %1844 = icmp eq ptr %1843, null
  br i1 %1844, label %1870, label %1845, !llvm.loop !351

1845:                                             ; preds = %1838, %1842
  %1846 = phi ptr [ %1843, %1842 ], [ %1840, %1838 ]
  %1847 = getelementptr inbounds %struct.bScreen, ptr %1846, i64 0, i32 3
  %1848 = load ptr, ptr %1847, align 8, !tbaa !34
  %1849 = icmp eq ptr %1848, null
  br i1 %1849, label %1842, label %1853

1850:                                             ; preds = %1867, %1853
  %1851 = load ptr, ptr %1854, align 8, !tbaa !34
  %1852 = icmp eq ptr %1851, null
  br i1 %1852, label %1842, label %1853, !llvm.loop !352

1853:                                             ; preds = %1845, %1850
  %1854 = phi ptr [ %1851, %1850 ], [ %1848, %1845 ]
  %1855 = getelementptr inbounds %struct.ScrArea, ptr %1854, i64 0, i32 19
  %1856 = load ptr, ptr %1855, align 8, !tbaa !34
  %1857 = icmp eq ptr %1856, null
  br i1 %1857, label %1850, label %1858

1858:                                             ; preds = %1853, %1867
  %1859 = phi ptr [ %1868, %1867 ], [ %1856, %1853 ]
  %1860 = getelementptr inbounds %struct.SpaceLink, ptr %1859, i64 0, i32 3
  %1861 = load i32, ptr %1860, align 8, !tbaa !114
  %1862 = icmp eq i32 %1861, 1
  br i1 %1862, label %1863, label %1867

1863:                                             ; preds = %1858
  %1864 = getelementptr inbounds %struct.View3D, ptr %1859, i64 0, i32 28
  %1865 = load i16, ptr %1864, align 8, !tbaa !353
  %1866 = or i16 %1865, 2048
  store i16 %1866, ptr %1864, align 8, !tbaa !353
  br label %1867

1867:                                             ; preds = %1858, %1863
  %1868 = load ptr, ptr %1859, align 8, !tbaa !34
  %1869 = icmp eq ptr %1868, null
  br i1 %1869, label %1850, label %1858, !llvm.loop !354

1870:                                             ; preds = %1842, %1838, %1813
  %1871 = icmp slt i16 %1394, 235
  br i1 %1871, label %1872, label %1921

1872:                                             ; preds = %1870
  %1873 = getelementptr inbounds %struct.Main, ptr %2, i64 0, i32 25
  %1874 = load ptr, ptr %1873, align 8, !tbaa !34
  %1875 = icmp eq ptr %1874, null
  br i1 %1875, label %1885, label %1876

1876:                                             ; preds = %1872, %1882
  %1877 = phi ptr [ %1883, %1882 ], [ %1874, %1872 ]
  %1878 = getelementptr inbounds %struct.World, ptr %1877, i64 0, i32 25
  %1879 = load i16, ptr %1878, align 2, !tbaa !262
  %1880 = icmp eq i16 %1879, 0
  br i1 %1880, label %1881, label %1882

1881:                                             ; preds = %1876
  store i16 2, ptr %1878, align 2, !tbaa !262
  br label %1882

1882:                                             ; preds = %1876, %1881
  %1883 = load ptr, ptr %1877, align 8, !tbaa !34
  %1884 = icmp eq ptr %1883, null
  br i1 %1884, label %1885, label %1876, !llvm.loop !355

1885:                                             ; preds = %1882, %1872
  %1886 = getelementptr inbounds %struct.Main, ptr %2, i64 0, i32 26
  %1887 = load ptr, ptr %1886, align 8, !tbaa !34
  %1888 = icmp eq ptr %1887, null
  br i1 %1888, label %1921, label %1892

1889:                                             ; preds = %1897, %1892
  %1890 = load ptr, ptr %1893, align 8, !tbaa !34
  %1891 = icmp eq ptr %1890, null
  br i1 %1891, label %1921, label %1892, !llvm.loop !356

1892:                                             ; preds = %1885, %1889
  %1893 = phi ptr [ %1890, %1889 ], [ %1887, %1885 ]
  %1894 = getelementptr inbounds %struct.bScreen, ptr %1893, i64 0, i32 3
  %1895 = load ptr, ptr %1894, align 8, !tbaa !34
  %1896 = icmp eq ptr %1895, null
  br i1 %1896, label %1889, label %1900

1897:                                             ; preds = %1918, %1900
  %1898 = load ptr, ptr %1901, align 8, !tbaa !34
  %1899 = icmp eq ptr %1898, null
  br i1 %1899, label %1889, label %1900, !llvm.loop !357

1900:                                             ; preds = %1892, %1897
  %1901 = phi ptr [ %1898, %1897 ], [ %1895, %1892 ]
  %1902 = getelementptr inbounds %struct.ScrArea, ptr %1901, i64 0, i32 19
  %1903 = load ptr, ptr %1902, align 8, !tbaa !34
  %1904 = icmp eq ptr %1903, null
  br i1 %1904, label %1897, label %1905

1905:                                             ; preds = %1900, %1918
  %1906 = phi ptr [ %1919, %1918 ], [ %1903, %1900 ]
  %1907 = getelementptr inbounds %struct.SpaceLink, ptr %1906, i64 0, i32 3
  %1908 = load i32, ptr %1907, align 8, !tbaa !114
  switch i32 %1908, label %1918 [
    i32 1, label %1909
    i32 9, label %1913
  ]

1909:                                             ; preds = %1905
  %1910 = getelementptr inbounds %struct.View3D, ptr %1906, i64 0, i32 28
  %1911 = load i16, ptr %1910, align 8, !tbaa !353
  %1912 = or i16 %1911, 4096
  store i16 %1912, ptr %1910, align 8, !tbaa !353
  br label %1918

1913:                                             ; preds = %1905
  %1914 = getelementptr inbounds %struct.SpaceText, ptr %1906, i64 0, i32 16
  %1915 = load i32, ptr %1914, align 8, !tbaa !358
  %1916 = icmp eq i32 %1915, 0
  br i1 %1916, label %1917, label %1918

1917:                                             ; preds = %1913
  store i32 2, ptr %1914, align 8, !tbaa !358
  br label %1918

1918:                                             ; preds = %1913, %1917, %1905, %1909
  %1919 = load ptr, ptr %1906, align 8, !tbaa !34
  %1920 = icmp eq ptr %1919, null
  br i1 %1920, label %1897, label %1905, !llvm.loop !359

1921:                                             ; preds = %1889, %1885, %1870
  %1922 = icmp slt i16 %1394, 236
  br i1 %1922, label %1923, label %1964

1923:                                             ; preds = %1921
  %1924 = getelementptr inbounds %struct.Main, ptr %2, i64 0, i32 18
  %1925 = getelementptr inbounds %struct.Main, ptr %2, i64 0, i32 11
  %1926 = load ptr, ptr %1925, align 8, !tbaa !360
  %1927 = load ptr, ptr %1924, align 8, !tbaa !34
  %1928 = icmp eq ptr %1927, null
  br i1 %1928, label %1929, label %1934

1929:                                             ; preds = %1940, %1923
  %1930 = icmp eq ptr %1926, null
  br i1 %1930, label %1964, label %1931

1931:                                             ; preds = %1929
  %1932 = getelementptr inbounds %struct.SeqIterator, ptr %4, i64 0, i32 4
  %1933 = getelementptr inbounds %struct.SeqIterator, ptr %4, i64 0, i32 3
  br label %1943

1934:                                             ; preds = %1923, %1940
  %1935 = phi ptr [ %1941, %1940 ], [ %1927, %1923 ]
  %1936 = getelementptr inbounds %struct.Tex, ptr %1935, i64 0, i32 49
  %1937 = load float, ptr %1936, align 8, !tbaa !361
  %1938 = fcmp oeq float %1937, 0.000000e+00
  br i1 %1938, label %1939, label %1940

1939:                                             ; preds = %1934
  store float 0x3F999999A0000000, ptr %1936, align 8, !tbaa !361
  br label %1940

1940:                                             ; preds = %1939, %1934
  %1941 = load ptr, ptr %1935, align 8, !tbaa !34
  %1942 = icmp eq ptr %1941, null
  br i1 %1942, label %1929, label %1934, !llvm.loop !362

1943:                                             ; preds = %1931, %1961
  %1944 = phi ptr [ %1926, %1931 ], [ %1962, %1961 ]
  %1945 = getelementptr inbounds %struct.Scene, ptr %1944, i64 0, i32 19
  %1946 = load ptr, ptr %1945, align 8, !tbaa !363
  %1947 = icmp eq ptr %1946, null
  br i1 %1947, label %1961, label %1948

1948:                                             ; preds = %1943
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %4) #18
  call void @BKE_sequence_iterator_begin(ptr noundef nonnull %1946, ptr noundef nonnull %4, i8 noundef zeroext 0) #15
  %1949 = load i32, ptr %1932, align 8, !tbaa !364
  %1950 = icmp eq i32 %1949, 0
  br i1 %1950, label %1960, label %1951

1951:                                             ; preds = %1948, %1957
  %1952 = load ptr, ptr %1933, align 8, !tbaa !366
  %1953 = getelementptr inbounds %struct.Sequence, ptr %1952, i64 0, i32 6
  %1954 = load i32, ptr %1953, align 4, !tbaa !367
  switch i32 %1954, label %1957 [
    i32 0, label %1955
    i32 3, label %1955
  ]

1955:                                             ; preds = %1951, %1951
  %1956 = getelementptr inbounds %struct.Sequence, ptr %1952, i64 0, i32 49
  store i8 0, ptr %1956, align 4, !tbaa !369
  br label %1957

1957:                                             ; preds = %1951, %1955
  call void @BKE_sequence_iterator_next(ptr noundef nonnull %4) #15
  %1958 = load i32, ptr %1932, align 8, !tbaa !364
  %1959 = icmp eq i32 %1958, 0
  br i1 %1959, label %1960, label %1951, !llvm.loop !370

1960:                                             ; preds = %1957, %1948
  call void @BKE_sequence_iterator_end(ptr noundef nonnull %4) #15
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %4) #18
  br label %1961

1961:                                             ; preds = %1960, %1943
  %1962 = load ptr, ptr %1944, align 8, !tbaa !371
  %1963 = icmp eq ptr %1962, null
  br i1 %1963, label %1964, label %1943, !llvm.loop !372

1964:                                             ; preds = %1961, %1929, %1921
  %1965 = load i16, ptr %7, align 8, !tbaa !59
  %1966 = icmp slt i16 %1965, 237
  br i1 %1966, label %1967, label %2080

1967:                                             ; preds = %1964
  %1968 = getelementptr inbounds %struct.Main, ptr %2, i64 0, i32 22
  %1969 = load ptr, ptr %1968, align 8, !tbaa !34
  %1970 = icmp eq ptr %1969, null
  br i1 %1970, label %1988, label %1971

1971:                                             ; preds = %1967, %1985
  %1972 = phi ptr [ %1986, %1985 ], [ %1969, %1967 ]
  %1973 = getelementptr inbounds %struct.Camera, ptr %1972, i64 0, i32 9
  %1974 = load float, ptr %1973, align 4, !tbaa !373
  %1975 = fcmp oeq float %1974, 0.000000e+00
  br i1 %1975, label %1976, label %1985

1976:                                             ; preds = %1971
  %1977 = getelementptr inbounds %struct.Camera, ptr %1972, i64 0, i32 8
  %1978 = load float, ptr %1977, align 8, !tbaa !375
  %1979 = fdiv float 2.560000e+02, %1978
  store float %1979, ptr %1973, align 4, !tbaa !373
  %1980 = getelementptr inbounds %struct.Camera, ptr %1972, i64 0, i32 2
  %1981 = load i8, ptr %1980, align 8, !tbaa !376
  %1982 = icmp eq i8 %1981, 1
  br i1 %1982, label %1983, label %1985

1983:                                             ; preds = %1976
  %1984 = call i32 @puts(ptr nonnull dereferenceable(1) @str.30)
  br label %1985

1985:                                             ; preds = %1976, %1983, %1971
  %1986 = load ptr, ptr %1972, align 8, !tbaa !34
  %1987 = icmp eq ptr %1986, null
  br i1 %1987, label %1988, label %1971, !llvm.loop !377

1988:                                             ; preds = %1985, %1967
  %1989 = getelementptr inbounds %struct.Main, ptr %2, i64 0, i32 26
  %1990 = load ptr, ptr %1989, align 8, !tbaa !34
  %1991 = icmp eq ptr %1990, null
  br i1 %1991, label %2021, label %1995

1992:                                             ; preds = %2000, %1995
  %1993 = load ptr, ptr %1996, align 8, !tbaa !34
  %1994 = icmp eq ptr %1993, null
  br i1 %1994, label %2021, label %1995, !llvm.loop !378

1995:                                             ; preds = %1988, %1992
  %1996 = phi ptr [ %1993, %1992 ], [ %1990, %1988 ]
  %1997 = getelementptr inbounds %struct.bScreen, ptr %1996, i64 0, i32 3
  %1998 = load ptr, ptr %1997, align 8, !tbaa !34
  %1999 = icmp eq ptr %1998, null
  br i1 %1999, label %1992, label %2003

2000:                                             ; preds = %2018, %2003
  %2001 = load ptr, ptr %2004, align 8, !tbaa !34
  %2002 = icmp eq ptr %2001, null
  br i1 %2002, label %1992, label %2003, !llvm.loop !379

2003:                                             ; preds = %1995, %2000
  %2004 = phi ptr [ %2001, %2000 ], [ %1998, %1995 ]
  %2005 = getelementptr inbounds %struct.ScrArea, ptr %2004, i64 0, i32 19
  %2006 = load ptr, ptr %2005, align 8, !tbaa !34
  %2007 = icmp eq ptr %2006, null
  br i1 %2007, label %2000, label %2008

2008:                                             ; preds = %2003, %2018
  %2009 = phi ptr [ %2019, %2018 ], [ %2006, %2003 ]
  %2010 = getelementptr inbounds %struct.SpaceLink, ptr %2009, i64 0, i32 3
  %2011 = load i32, ptr %2010, align 8, !tbaa !114
  %2012 = icmp eq i32 %2011, 1
  br i1 %2012, label %2013, label %2018

2013:                                             ; preds = %2008
  %2014 = getelementptr inbounds %struct.View3D, ptr %2009, i64 0, i32 40
  %2015 = load i8, ptr %2014, align 1, !tbaa !380
  %2016 = icmp eq i8 %2015, 0
  br i1 %2016, label %2017, label %2018

2017:                                             ; preds = %2013
  store i8 1, ptr %2014, align 1, !tbaa !380
  br label %2018

2018:                                             ; preds = %2013, %2017, %2008
  %2019 = load ptr, ptr %2009, align 8, !tbaa !34
  %2020 = icmp eq ptr %2019, null
  br i1 %2020, label %2000, label %2008, !llvm.loop !381

2021:                                             ; preds = %1992, %1988
  %2022 = getelementptr inbounds %struct.Main, ptr %2, i64 0, i32 17
  %2023 = load ptr, ptr %2022, align 8, !tbaa !34
  %2024 = icmp eq ptr %2023, null
  br i1 %2024, label %2035, label %2025

2025:                                             ; preds = %2021, %2032
  %2026 = phi ptr [ %2033, %2032 ], [ %2023, %2021 ]
  %2027 = getelementptr inbounds %struct.Material, ptr %2026, i64 0, i32 89
  %2028 = load float, ptr %2027, align 8, !tbaa !382
  %2029 = fcmp oeq float %2028, 0.000000e+00
  br i1 %2029, label %2030, label %2032

2030:                                             ; preds = %2025
  %2031 = getelementptr inbounds %struct.Material, ptr %2026, i64 0, i32 88
  store <2 x float> <float 0x3FB99999A0000000, float 1.000000e+00>, ptr %2031, align 4, !tbaa !120
  br label %2032

2032:                                             ; preds = %2025, %2030
  %2033 = load ptr, ptr %2026, align 8, !tbaa !34
  %2034 = icmp eq ptr %2033, null
  br i1 %2034, label %2035, label %2025, !llvm.loop !383

2035:                                             ; preds = %2032, %2021
  %2036 = getelementptr inbounds %struct.Main, ptr %2, i64 0, i32 13
  %2037 = load ptr, ptr %2036, align 8, !tbaa !34
  %2038 = icmp eq ptr %2037, null
  br i1 %2038, label %2078, label %2039

2039:                                             ; preds = %2035, %2075
  %2040 = phi ptr [ %2076, %2075 ], [ %2037, %2035 ]
  %2041 = getelementptr inbounds %struct.Object, ptr %2040, i64 0, i32 111
  %2042 = load ptr, ptr %2041, align 8, !tbaa !384
  %2043 = icmp eq ptr %2042, null
  br i1 %2043, label %2075, label %2044

2044:                                             ; preds = %2039
  %2045 = getelementptr inbounds %struct.SoftBody, ptr %2042, i64 0, i32 17
  %2046 = load float, ptr %2045, align 8, !tbaa !385
  %2047 = fcmp oeq float %2046, 0.000000e+00
  br i1 %2047, label %2048, label %2049

2048:                                             ; preds = %2044
  store float 0x3FE6666660000000, ptr %2045, align 8, !tbaa !385
  br label %2049

2049:                                             ; preds = %2048, %2044
  %2050 = getelementptr inbounds %struct.SoftBody, ptr %2042, i64 0, i32 12
  %2051 = load float, ptr %2050, align 4, !tbaa !387
  %2052 = fcmp oeq float %2051, 0.000000e+00
  br i1 %2052, label %2053, label %2054

2053:                                             ; preds = %2049
  store float 1.000000e+00, ptr %2050, align 4, !tbaa !387
  br label %2054

2054:                                             ; preds = %2053, %2049
  %2055 = getelementptr inbounds %struct.SoftBody, ptr %2042, i64 0, i32 26
  %2056 = load i32, ptr %2055, align 8, !tbaa !388
  %2057 = icmp eq i32 %2056, 0
  br i1 %2057, label %2058, label %2061

2058:                                             ; preds = %2054
  store i32 2, ptr %2055, align 8, !tbaa !388
  %2059 = getelementptr inbounds %struct.SoftBody, ptr %2042, i64 0, i32 24
  store i32 1, ptr %2059, align 8, !tbaa !389
  %2060 = getelementptr inbounds %struct.SoftBody, ptr %2042, i64 0, i32 25
  store i32 100, ptr %2060, align 4, !tbaa !390
  br label %2061

2061:                                             ; preds = %2054, %2058
  %2062 = getelementptr inbounds %struct.SoftBody, ptr %2042, i64 0, i32 18
  %2063 = load i16, ptr %2062, align 4, !tbaa !391
  %2064 = icmp eq i16 %2063, 0
  br i1 %2064, label %2065, label %2075

2065:                                             ; preds = %2061
  %2066 = call ptr @defgroup_find_name(ptr noundef nonnull %2040, ptr noundef nonnull @.str.5) #15
  %2067 = icmp eq ptr %2066, null
  br i1 %2067, label %2075, label %2068

2068:                                             ; preds = %2065
  %2069 = getelementptr inbounds %struct.Object, ptr %2040, i64 0, i32 25
  %2070 = call i32 @BLI_findindex(ptr noundef nonnull %2069, ptr noundef nonnull %2066) #15
  %2071 = trunc i32 %2070 to i16
  %2072 = add i16 %2071, 1
  %2073 = load ptr, ptr %2041, align 8, !tbaa !384
  %2074 = getelementptr inbounds %struct.SoftBody, ptr %2073, i64 0, i32 18
  store i16 %2072, ptr %2074, align 4, !tbaa !391
  br label %2075

2075:                                             ; preds = %2039, %2065, %2068, %2061
  %2076 = load ptr, ptr %2040, align 8, !tbaa !34
  %2077 = icmp eq ptr %2076, null
  br i1 %2077, label %2078, label %2039, !llvm.loop !392

2078:                                             ; preds = %2075, %2035
  %2079 = load i16, ptr %7, align 8, !tbaa !59
  br label %2080

2080:                                             ; preds = %2078, %1964
  %2081 = phi i16 [ %2079, %2078 ], [ %1965, %1964 ]
  %2082 = icmp slt i16 %2081, 238
  br i1 %2082, label %2083, label %2215

2083:                                             ; preds = %2080
  %2084 = getelementptr inbounds %struct.Main, ptr %2, i64 0, i32 33
  %2085 = load ptr, ptr %2084, align 8, !tbaa !34
  %2086 = icmp eq ptr %2085, null
  br i1 %2086, label %2099, label %2090

2087:                                             ; preds = %2095, %2090
  %2088 = load ptr, ptr %2091, align 8, !tbaa !34
  %2089 = icmp eq ptr %2088, null
  br i1 %2089, label %2099, label %2090, !llvm.loop !393

2090:                                             ; preds = %2083, %2087
  %2091 = phi ptr [ %2088, %2087 ], [ %2085, %2083 ]
  call void @BKE_armature_where_is(ptr noundef nonnull %2091) #15
  %2092 = getelementptr inbounds %struct.bArmature, ptr %2091, i64 0, i32 2
  %2093 = load ptr, ptr %2092, align 8, !tbaa !34
  %2094 = icmp eq ptr %2093, null
  br i1 %2094, label %2087, label %2095

2095:                                             ; preds = %2090, %2095
  %2096 = phi ptr [ %2097, %2095 ], [ %2093, %2090 ]
  call fastcc void @do_version_bone_head_tail_237(ptr noundef nonnull %2096) #16
  %2097 = load ptr, ptr %2096, align 8, !tbaa !34
  %2098 = icmp eq ptr %2097, null
  br i1 %2098, label %2087, label %2095, !llvm.loop !394

2099:                                             ; preds = %2087, %2083
  %2100 = getelementptr inbounds %struct.Main, ptr %2, i64 0, i32 13
  %2101 = load ptr, ptr %2100, align 8, !tbaa !34
  %2102 = icmp eq ptr %2101, null
  br i1 %2102, label %2215, label %2106

2103:                                             ; preds = %2212, %2184
  %2104 = load ptr, ptr %2107, align 8, !tbaa !34
  %2105 = icmp eq ptr %2104, null
  br i1 %2105, label %2215, label %2106, !llvm.loop !395

2106:                                             ; preds = %2099, %2103
  %2107 = phi ptr [ %2104, %2103 ], [ %2101, %2099 ]
  %2108 = getelementptr inbounds %struct.Object, ptr %2107, i64 0, i32 9
  %2109 = load ptr, ptr %2108, align 8, !tbaa !396
  %2110 = icmp eq ptr %2109, null
  br i1 %2110, label %2120, label %2111

2111:                                             ; preds = %2106
  %2112 = call ptr @blo_do_versions_newlibadr(ptr noundef %0, ptr noundef %1, ptr noundef nonnull %2109) #15
  %2113 = icmp eq ptr %2112, null
  br i1 %2113, label %2120, label %2114

2114:                                             ; preds = %2111
  %2115 = getelementptr inbounds %struct.Object, ptr %2112, i64 0, i32 3
  %2116 = load i16, ptr %2115, align 8, !tbaa !267
  %2117 = icmp eq i16 %2116, 22
  br i1 %2117, label %2118, label %2120

2118:                                             ; preds = %2114
  %2119 = getelementptr inbounds %struct.Object, ptr %2107, i64 0, i32 4
  store i16 4, ptr %2119, align 2, !tbaa !397
  br label %2120

2120:                                             ; preds = %2111, %2114, %2118, %2106
  %2121 = getelementptr inbounds %struct.Object, ptr %2107, i64 0, i32 3
  %2122 = load i16, ptr %2121, align 8, !tbaa !267
  switch i16 %2122, label %2184 [
    i16 25, label %2123
    i16 1, label %2146
  ]

2123:                                             ; preds = %2120
  %2124 = getelementptr inbounds %struct.Object, ptr %2107, i64 0, i32 18
  %2125 = load ptr, ptr %2124, align 8, !tbaa !268
  %2126 = icmp eq ptr %2125, null
  br i1 %2126, label %2131, label %2127

2127:                                             ; preds = %2123
  %2128 = getelementptr inbounds %struct.bPose, ptr %2125, i64 0, i32 2
  %2129 = load i16, ptr %2128, align 8, !tbaa !398
  %2130 = or i16 %2129, 1
  store i16 %2130, ptr %2128, align 8, !tbaa !398
  br label %2131

2131:                                             ; preds = %2127, %2123
  %2132 = getelementptr inbounds %struct.Object, ptr %2107, i64 0, i32 103
  %2133 = load i8, ptr %2132, align 1, !tbaa !400
  %2134 = or i8 %2133, 7
  store i8 %2134, ptr %2132, align 1, !tbaa !400
  %2135 = getelementptr inbounds %struct.Object, ptr %2107, i64 0, i32 19
  %2136 = load ptr, ptr %2135, align 8, !tbaa !401
  %2137 = call ptr @blo_do_versions_newlibadr(ptr noundef %0, ptr noundef %1, ptr noundef %2136) #15
  %2138 = getelementptr inbounds %struct.bArmature, ptr %2137, i64 0, i32 8
  %2139 = load i32, ptr %2138, align 8, !tbaa !402
  %2140 = and i32 %2139, 2
  %2141 = icmp eq i32 %2140, 0
  br i1 %2141, label %2184, label %2142

2142:                                             ; preds = %2131
  %2143 = getelementptr inbounds %struct.Object, ptr %2107, i64 0, i32 86
  %2144 = load i16, ptr %2143, align 4, !tbaa !404
  %2145 = or i16 %2144, 64
  store i16 %2145, ptr %2143, align 4, !tbaa !404
  br label %2184

2146:                                             ; preds = %2120
  %2147 = getelementptr inbounds %struct.Object, ptr %2107, i64 0, i32 19
  %2148 = load ptr, ptr %2147, align 8, !tbaa !401
  %2149 = call ptr @blo_do_versions_newlibadr(ptr noundef %0, ptr noundef %1, ptr noundef %2148) #15
  %2150 = getelementptr inbounds %struct.Mesh, ptr %2149, i64 0, i32 38
  %2151 = load i16, ptr %2150, align 2, !tbaa !219
  %2152 = and i16 %2151, 128
  %2153 = icmp eq i16 %2152, 0
  br i1 %2153, label %2184, label %2154

2154:                                             ; preds = %2146
  %2155 = call ptr @modifier_new(i32 noundef 1) #15
  %2156 = getelementptr inbounds %struct.Mesh, ptr %2149, i64 0, i32 43
  %2157 = getelementptr inbounds %struct.SubsurfModifierData, ptr %2155, i64 0, i32 2
  %2158 = getelementptr inbounds %struct.Mesh, ptr %2149, i64 0, i32 44
  %2159 = load <2 x i8>, ptr %2156, align 2, !tbaa !135
  %2160 = extractelement <2 x i8> %2159, i64 0
  %2161 = icmp ne i8 %2160, 0
  %2162 = call <2 x i8> @llvm.umax.v2i8(<2 x i8> %2159, <2 x i8> <i8 1, i8 1>)
  %2163 = zext <2 x i8> %2162 to <2 x i16>
  store <2 x i16> %2163, ptr %2157, align 2, !tbaa !405
  %2164 = getelementptr inbounds %struct.Mesh, ptr %2149, i64 0, i32 45
  %2165 = load i8, ptr %2164, align 4, !tbaa !406
  %2166 = zext i8 %2165 to i16
  %2167 = getelementptr inbounds %struct.SubsurfModifierData, ptr %2155, i64 0, i32 1
  store i16 %2166, ptr %2167, align 8, !tbaa !407
  %2168 = getelementptr inbounds %struct.ModifierData, ptr %2155, i64 0, i32 3
  %2169 = zext i1 %2161 to i32
  store i32 %2169, ptr %2168, align 4
  %2170 = load i8, ptr %2158, align 1, !tbaa !251
  %2171 = icmp eq i8 %2170, 0
  br i1 %2171, label %2174, label %2172

2172:                                             ; preds = %2154
  %2173 = or disjoint i32 %2169, 2
  store i32 %2173, ptr %2168, align 4, !tbaa !410
  br label %2174

2174:                                             ; preds = %2172, %2154
  %2175 = load i16, ptr %2150, align 2, !tbaa !219
  %2176 = and i16 %2175, 256
  %2177 = icmp eq i16 %2176, 0
  br i1 %2177, label %2182, label %2178

2178:                                             ; preds = %2174
  %2179 = getelementptr inbounds %struct.SubsurfModifierData, ptr %2155, i64 0, i32 4
  %2180 = load i16, ptr %2179, align 2, !tbaa !411
  %2181 = or i16 %2180, 4
  store i16 %2181, ptr %2179, align 2, !tbaa !411
  br label %2182

2182:                                             ; preds = %2178, %2174
  %2183 = getelementptr inbounds %struct.Object, ptr %2107, i64 0, i32 26
  call void @BLI_addtail(ptr noundef nonnull %2183, ptr noundef nonnull %2155) #15
  call void @modifier_unique_name(ptr noundef nonnull %2183, ptr noundef nonnull %2155) #15
  br label %2184

2184:                                             ; preds = %2146, %2182, %2120, %2131, %2142
  %2185 = getelementptr inbounds %struct.Object, ptr %2107, i64 0, i32 106
  %2186 = load ptr, ptr %2185, align 8, !tbaa !34
  %2187 = icmp eq ptr %2186, null
  br i1 %2187, label %2103, label %2188

2188:                                             ; preds = %2184, %2212
  %2189 = phi ptr [ %2213, %2212 ], [ %2186, %2184 ]
  %2190 = getelementptr inbounds %struct.bConstraint, ptr %2189, i64 0, i32 3
  %2191 = load i16, ptr %2190, align 8, !tbaa !265
  %2192 = icmp eq i16 %2191, 4
  br i1 %2192, label %2193, label %2212

2193:                                             ; preds = %2188
  %2194 = getelementptr inbounds %struct.bConstraint, ptr %2189, i64 0, i32 2
  %2195 = load ptr, ptr %2194, align 8, !tbaa !51
  %2196 = load ptr, ptr %2195, align 8, !tbaa !412
  %2197 = call ptr @blo_do_versions_newlibadr(ptr noundef %0, ptr noundef %1, ptr noundef %2196) #15
  %2198 = icmp eq ptr %2197, null
  br i1 %2198, label %2212, label %2199

2199:                                             ; preds = %2193
  %2200 = getelementptr inbounds %struct.Object, ptr %2197, i64 0, i32 3
  %2201 = load i16, ptr %2200, align 8, !tbaa !267
  %2202 = icmp eq i16 %2201, 2
  br i1 %2202, label %2203, label %2212

2203:                                             ; preds = %2199
  %2204 = getelementptr inbounds %struct.Object, ptr %2197, i64 0, i32 19
  %2205 = load ptr, ptr %2204, align 8, !tbaa !401
  %2206 = call ptr @blo_do_versions_newlibadr(ptr noundef %0, ptr noundef %1, ptr noundef %2205) #15
  %2207 = icmp eq ptr %2206, null
  br i1 %2207, label %2212, label %2208

2208:                                             ; preds = %2203
  %2209 = getelementptr inbounds %struct.Curve, ptr %2206, i64 0, i32 23
  %2210 = load i32, ptr %2209, align 4, !tbaa !414
  %2211 = or i32 %2210, 8
  store i32 %2211, ptr %2209, align 4, !tbaa !414
  br label %2212

2212:                                             ; preds = %2193, %2199, %2208, %2203, %2188
  %2213 = load ptr, ptr %2189, align 8, !tbaa !34
  %2214 = icmp eq ptr %2213, null
  br i1 %2214, label %2103, label %2188, !llvm.loop !417

2215:                                             ; preds = %2103, %2099, %2080
  %2216 = load i16, ptr %7, align 8, !tbaa !59
  %2217 = icmp slt i16 %2216, 239
  br i1 %2217, label %2218, label %2451

2218:                                             ; preds = %2215
  %2219 = getelementptr inbounds %struct.Main, ptr %2, i64 0, i32 11
  %2220 = load ptr, ptr %2219, align 8, !tbaa !34
  %2221 = icmp eq ptr %2220, null
  br i1 %2221, label %2234, label %2222

2222:                                             ; preds = %2218, %2231
  %2223 = phi ptr [ %2232, %2231 ], [ %2220, %2218 ]
  %2224 = getelementptr inbounds %struct.Scene, ptr %2223, i64 0, i32 20
  %2225 = load ptr, ptr %2224, align 8, !tbaa !418
  %2226 = icmp eq ptr %2225, null
  br i1 %2226, label %2227, label %2231

2227:                                             ; preds = %2222
  %2228 = load ptr, ptr @MEM_callocN, align 8, !tbaa !34
  %2229 = call ptr %2228(i64 noundef 648, ptr noundef nonnull @.str.6) #15
  store ptr %2229, ptr %2224, align 8, !tbaa !418
  %2230 = getelementptr inbounds %struct.ToolSettings, ptr %2229, i64 0, i32 5
  store float 0x3F50624DE0000000, ptr %2230, align 4, !tbaa !419
  br label %2231

2231:                                             ; preds = %2227, %2222
  %2232 = load ptr, ptr %2223, align 8, !tbaa !34
  %2233 = icmp eq ptr %2232, null
  br i1 %2233, label %2234, label %2222, !llvm.loop !426

2234:                                             ; preds = %2231, %2218
  %2235 = getelementptr inbounds %struct.Main, ptr %2, i64 0, i32 20
  %2236 = load ptr, ptr %2235, align 8, !tbaa !34
  %2237 = icmp eq ptr %2236, null
  br i1 %2237, label %2274, label %2238

2238:                                             ; preds = %2234, %2271
  %2239 = phi ptr [ %2272, %2271 ], [ %2236, %2234 ]
  %2240 = getelementptr inbounds %struct.Lattice, ptr %2239, i64 0, i32 15
  %2241 = load float, ptr %2240, align 8, !tbaa !427
  %2242 = fcmp oeq float %2241, 0.000000e+00
  br i1 %2242, label %2243, label %2271

2243:                                             ; preds = %2238
  %2244 = getelementptr inbounds %struct.Lattice, ptr %2239, i64 0, i32 16
  %2245 = load float, ptr %2244, align 4, !tbaa !429
  %2246 = fcmp oeq float %2245, 0.000000e+00
  br i1 %2246, label %2247, label %2271

2247:                                             ; preds = %2243
  %2248 = getelementptr inbounds %struct.Lattice, ptr %2239, i64 0, i32 17
  %2249 = load float, ptr %2248, align 8, !tbaa !430
  %2250 = fcmp oeq float %2249, 0.000000e+00
  br i1 %2250, label %2251, label %2271

2251:                                             ; preds = %2247
  %2252 = getelementptr inbounds %struct.Lattice, ptr %2239, i64 0, i32 5
  %2253 = load i16, ptr %2252, align 2, !tbaa !431
  %2254 = sext i16 %2253 to i32
  %2255 = getelementptr inbounds %struct.Lattice, ptr %2239, i64 0, i32 2
  %2256 = load i16, ptr %2255, align 8, !tbaa !432
  %2257 = sext i16 %2256 to i32
  %2258 = getelementptr inbounds %struct.Lattice, ptr %2239, i64 0, i32 18
  call void @calc_lat_fudu(i32 noundef %2254, i32 noundef %2257, ptr noundef nonnull %2240, ptr noundef nonnull %2258) #15
  %2259 = load i16, ptr %2252, align 2, !tbaa !431
  %2260 = sext i16 %2259 to i32
  %2261 = getelementptr inbounds %struct.Lattice, ptr %2239, i64 0, i32 3
  %2262 = load i16, ptr %2261, align 2, !tbaa !433
  %2263 = sext i16 %2262 to i32
  %2264 = getelementptr inbounds %struct.Lattice, ptr %2239, i64 0, i32 19
  call void @calc_lat_fudu(i32 noundef %2260, i32 noundef %2263, ptr noundef nonnull %2244, ptr noundef nonnull %2264) #15
  %2265 = load i16, ptr %2252, align 2, !tbaa !431
  %2266 = sext i16 %2265 to i32
  %2267 = getelementptr inbounds %struct.Lattice, ptr %2239, i64 0, i32 4
  %2268 = load i16, ptr %2267, align 4, !tbaa !434
  %2269 = sext i16 %2268 to i32
  %2270 = getelementptr inbounds %struct.Lattice, ptr %2239, i64 0, i32 20
  call void @calc_lat_fudu(i32 noundef %2266, i32 noundef %2269, ptr noundef nonnull %2248, ptr noundef nonnull %2270) #15
  br label %2271

2271:                                             ; preds = %2238, %2243, %2247, %2251
  %2272 = load ptr, ptr %2239, align 8, !tbaa !34
  %2273 = icmp eq ptr %2272, null
  br i1 %2273, label %2274, label %2238, !llvm.loop !435

2274:                                             ; preds = %2271, %2234
  %2275 = getelementptr inbounds %struct.Main, ptr %2, i64 0, i32 13
  %2276 = load ptr, ptr %2275, align 8, !tbaa !34
  %2277 = icmp eq ptr %2276, null
  br i1 %2277, label %2390, label %2278

2278:                                             ; preds = %2274, %2387
  %2279 = phi ptr [ %2388, %2387 ], [ %2276, %2274 ]
  %2280 = getelementptr inbounds %struct.Object, ptr %2279, i64 0, i32 26
  %2281 = load ptr, ptr %2280, align 8, !tbaa !34
  %2282 = icmp eq ptr %2281, null
  br i1 %2282, label %2295, label %2283

2283:                                             ; preds = %2278, %2292
  %2284 = phi ptr [ %2293, %2292 ], [ %2281, %2278 ]
  %2285 = getelementptr inbounds %struct.ModifierData, ptr %2284, i64 0, i32 2
  %2286 = load i32, ptr %2285, align 8, !tbaa !436
  %2287 = icmp eq i32 %2286, 1
  br i1 %2287, label %2288, label %2292

2288:                                             ; preds = %2283
  %2289 = getelementptr inbounds %struct.SubsurfModifierData, ptr %2284, i64 0, i32 4
  %2290 = load i16, ptr %2289, align 2, !tbaa !411
  %2291 = and i16 %2290, -4
  store i16 %2291, ptr %2289, align 2, !tbaa !411
  br label %2292

2292:                                             ; preds = %2283, %2288
  %2293 = load ptr, ptr %2284, align 8, !tbaa !34
  %2294 = icmp eq ptr %2293, null
  br i1 %2294, label %2295, label %2283, !llvm.loop !437

2295:                                             ; preds = %2292, %2278
  %2296 = getelementptr inbounds %struct.Object, ptr %2279, i64 0, i32 104
  %2297 = load i16, ptr %2296, align 2, !tbaa !438
  %2298 = and i16 %2297, 1
  %2299 = icmp eq i16 %2298, 0
  br i1 %2299, label %2325, label %2300

2300:                                             ; preds = %2295
  %2301 = call ptr @modifiers_findByType(ptr noundef nonnull %2279, i32 noundef 10) #15
  %2302 = icmp eq ptr %2301, null
  br i1 %2302, label %2303, label %2325

2303:                                             ; preds = %2300
  %2304 = load i16, ptr %2296, align 2, !tbaa !438
  %2305 = and i16 %2304, 16
  %2306 = icmp eq i16 %2305, 0
  br i1 %2306, label %2320, label %2307

2307:                                             ; preds = %2303, %2311
  %2308 = phi ptr [ %2309, %2311 ], [ %2280, %2303 ]
  %2309 = load ptr, ptr %2308, align 8, !tbaa !34
  %2310 = icmp eq ptr %2309, null
  br i1 %2310, label %2318, label %2311

2311:                                             ; preds = %2307
  %2312 = getelementptr inbounds %struct.ModifierData, ptr %2309, i64 0, i32 2
  %2313 = load i32, ptr %2312, align 8, !tbaa !436
  %2314 = call ptr @modifierType_getInfo(i32 noundef %2313) #15
  %2315 = getelementptr inbounds %struct.ModifierTypeInfo, ptr %2314, i64 0, i32 3
  %2316 = load i32, ptr %2315, align 4, !tbaa !439
  %2317 = icmp eq i32 %2316, 1
  br i1 %2317, label %2307, label %2318, !llvm.loop !441

2318:                                             ; preds = %2307, %2311
  %2319 = call ptr @modifier_new(i32 noundef 10) #15
  call void @BLI_insertlinkbefore(ptr noundef nonnull %2280, ptr noundef %2309, ptr noundef %2319) #15
  br label %2322

2320:                                             ; preds = %2303
  %2321 = call ptr @modifier_new(i32 noundef 10) #15
  call void @BLI_addhead(ptr noundef nonnull %2280, ptr noundef %2321) #15
  br label %2322

2322:                                             ; preds = %2320, %2318
  %2323 = load i16, ptr %2296, align 2, !tbaa !438
  %2324 = and i16 %2323, -2
  store i16 %2324, ptr %2296, align 2, !tbaa !438
  br label %2325

2325:                                             ; preds = %2322, %2300, %2295
  %2326 = getelementptr inbounds %struct.Object, ptr %2279, i64 0, i32 18
  %2327 = load ptr, ptr %2326, align 8, !tbaa !268
  %2328 = icmp eq ptr %2327, null
  br i1 %2328, label %2369, label %2329

2329:                                             ; preds = %2325
  %2330 = load ptr, ptr %2327, align 8, !tbaa !34
  %2331 = icmp eq ptr %2330, null
  br i1 %2331, label %2369, label %2332

2332:                                             ; preds = %2329
  %2333 = getelementptr inbounds %struct.bPose, ptr %2327, i64 0, i32 2
  br label %2334

2334:                                             ; preds = %2332, %2366
  %2335 = phi ptr [ %2330, %2332 ], [ %2367, %2366 ]
  %2336 = getelementptr inbounds %struct.bPoseChannel, ptr %2335, i64 0, i32 33
  %2337 = load float, ptr %2336, align 8, !tbaa !120
  %2338 = fcmp oeq float %2337, 0.000000e+00
  br i1 %2338, label %2339, label %2366

2339:                                             ; preds = %2334
  %2340 = getelementptr inbounds %struct.bPoseChannel, ptr %2335, i64 0, i32 34
  %2341 = load float, ptr %2340, align 4, !tbaa !120
  %2342 = fcmp oeq float %2341, 0.000000e+00
  br i1 %2342, label %2343, label %2366

2343:                                             ; preds = %2339
  %2344 = getelementptr inbounds %struct.bPoseChannel, ptr %2335, i64 0, i32 34, i64 1
  store <2 x float> <float 1.800000e+02, float 1.800000e+02>, ptr %2344, align 4, !tbaa !120
  store <4 x float> <float -1.800000e+02, float -1.800000e+02, float -1.800000e+02, float 1.800000e+02>, ptr %2336, align 8, !tbaa !120
  %2345 = getelementptr inbounds %struct.bPoseChannel, ptr %2335, i64 0, i32 3
  %2346 = load ptr, ptr %2345, align 8, !tbaa !34
  %2347 = icmp eq ptr %2346, null
  br i1 %2347, label %2366, label %2348

2348:                                             ; preds = %2343, %2363
  %2349 = phi ptr [ %2364, %2363 ], [ %2346, %2343 ]
  %2350 = getelementptr inbounds %struct.bConstraint, ptr %2349, i64 0, i32 3
  %2351 = load i16, ptr %2350, align 8, !tbaa !265
  %2352 = icmp eq i16 %2351, 3
  br i1 %2352, label %2353, label %2363

2353:                                             ; preds = %2348
  %2354 = getelementptr inbounds %struct.bConstraint, ptr %2349, i64 0, i32 2
  %2355 = load ptr, ptr %2354, align 8, !tbaa !51
  %2356 = getelementptr inbounds %struct.bKinematicConstraint, ptr %2355, i64 0, i32 9
  store <2 x float> <float 1.000000e+00, float 1.000000e+00>, ptr %2356, align 4, !tbaa !120
  %2357 = getelementptr inbounds %struct.bKinematicConstraint, ptr %2355, i64 0, i32 2
  %2358 = load i16, ptr %2357, align 2, !tbaa !442
  %2359 = and i16 %2358, -3
  store i16 %2359, ptr %2357, align 2, !tbaa !442
  %2360 = getelementptr inbounds %struct.bKinematicConstraint, ptr %2355, i64 0, i32 3
  store i16 -1, ptr %2360, align 4, !tbaa !444
  %2361 = load i16, ptr %2333, align 8, !tbaa !398
  %2362 = or i16 %2361, 1
  store i16 %2362, ptr %2333, align 8, !tbaa !398
  br label %2363

2363:                                             ; preds = %2348, %2353
  %2364 = load ptr, ptr %2349, align 8, !tbaa !34
  %2365 = icmp eq ptr %2364, null
  br i1 %2365, label %2366, label %2348, !llvm.loop !445

2366:                                             ; preds = %2363, %2343, %2334, %2339
  %2367 = load ptr, ptr %2335, align 8, !tbaa !34
  %2368 = icmp eq ptr %2367, null
  br i1 %2368, label %2369, label %2334, !llvm.loop !446

2369:                                             ; preds = %2366, %2329, %2325
  %2370 = call ptr @blo_do_version_give_parteff_245(ptr noundef nonnull %2279) #16
  %2371 = icmp eq ptr %2370, null
  br i1 %2371, label %2387, label %2372

2372:                                             ; preds = %2369
  %2373 = getelementptr inbounds %struct.PartEff, ptr %2370, i64 0, i32 38
  %2374 = load i16, ptr %2373, align 4, !tbaa !447
  %2375 = icmp eq i16 %2374, 0
  br i1 %2375, label %2376, label %2377

2376:                                             ; preds = %2372
  store i16 100, ptr %2373, align 4, !tbaa !447
  br label %2377

2377:                                             ; preds = %2376, %2372
  %2378 = getelementptr inbounds %struct.PartEff, ptr %2370, i64 0, i32 35
  %2379 = load i16, ptr %2378, align 2, !tbaa !448
  %2380 = icmp eq i16 %2379, 0
  br i1 %2380, label %2381, label %2382

2381:                                             ; preds = %2377
  store i16 8, ptr %2378, align 2, !tbaa !448
  br label %2382

2382:                                             ; preds = %2381, %2377
  %2383 = getelementptr inbounds %struct.PartEff, ptr %2370, i64 0, i32 33
  %2384 = load i16, ptr %2383, align 2, !tbaa !449
  %2385 = icmp eq i16 %2384, 0
  br i1 %2385, label %2386, label %2387

2386:                                             ; preds = %2382
  store i16 1, ptr %2383, align 2, !tbaa !449
  br label %2387

2387:                                             ; preds = %2382, %2386, %2369
  %2388 = load ptr, ptr %2279, align 8, !tbaa !34
  %2389 = icmp eq ptr %2388, null
  br i1 %2389, label %2390, label %2278, !llvm.loop !450

2390:                                             ; preds = %2387, %2274
  %2391 = getelementptr inbounds %struct.Main, ptr %2, i64 0, i32 33
  %2392 = load ptr, ptr %2391, align 8, !tbaa !34
  %2393 = icmp eq ptr %2392, null
  br i1 %2393, label %2402, label %2394

2394:                                             ; preds = %2390, %2394
  %2395 = phi ptr [ %2400, %2394 ], [ %2392, %2390 ]
  %2396 = getelementptr inbounds %struct.bArmature, ptr %2395, i64 0, i32 2
  call fastcc void @bone_version_238(ptr noundef nonnull %2396) #16
  %2397 = getelementptr inbounds %struct.bArmature, ptr %2395, i64 0, i32 12
  %2398 = load i16, ptr %2397, align 8, !tbaa !451
  %2399 = or i16 %2398, 1
  store i16 %2399, ptr %2397, align 8, !tbaa !451
  %2400 = load ptr, ptr %2395, align 8, !tbaa !34
  %2401 = icmp eq ptr %2400, null
  br i1 %2401, label %2402, label %2394, !llvm.loop !452

2402:                                             ; preds = %2394, %2390
  %2403 = getelementptr inbounds %struct.Main, ptr %2, i64 0, i32 14
  %2404 = load ptr, ptr %2403, align 8, !tbaa !34
  %2405 = icmp eq ptr %2404, null
  br i1 %2405, label %2416, label %2406

2406:                                             ; preds = %2402, %2413
  %2407 = phi ptr [ %2414, %2413 ], [ %2404, %2402 ]
  %2408 = getelementptr inbounds %struct.Mesh, ptr %2407, i64 0, i32 16
  %2409 = load ptr, ptr %2408, align 8, !tbaa !453
  %2410 = icmp eq ptr %2409, null
  br i1 %2410, label %2411, label %2412

2411:                                             ; preds = %2406
  call void @BKE_mesh_calc_edges_legacy(ptr noundef nonnull %2407, i8 noundef zeroext 1) #15
  br label %2413

2412:                                             ; preds = %2406
  call void @BKE_mesh_strip_loose_faces(ptr noundef nonnull %2407) #15
  br label %2413

2413:                                             ; preds = %2411, %2412
  %2414 = load ptr, ptr %2407, align 8, !tbaa !34
  %2415 = icmp eq ptr %2414, null
  br i1 %2415, label %2416, label %2406, !llvm.loop !454

2416:                                             ; preds = %2413, %2402
  %2417 = getelementptr inbounds %struct.Main, ptr %2, i64 0, i32 24
  %2418 = load ptr, ptr %2417, align 8, !tbaa !34
  %2419 = icmp eq ptr %2418, null
  br i1 %2419, label %2449, label %2423

2420:                                             ; preds = %2445, %2423
  %2421 = load ptr, ptr %2424, align 8, !tbaa !34
  %2422 = icmp eq ptr %2421, null
  br i1 %2422, label %2449, label %2423, !llvm.loop !455

2423:                                             ; preds = %2416, %2420
  %2424 = phi ptr [ %2421, %2420 ], [ %2418, %2416 ]
  %2425 = getelementptr inbounds %struct.Key, ptr %2424, i64 0, i32 6
  %2426 = load ptr, ptr %2425, align 8, !tbaa !34
  %2427 = icmp eq ptr %2426, null
  br i1 %2427, label %2420, label %2428

2428:                                             ; preds = %2423
  %2429 = getelementptr inbounds %struct.Key, ptr %2424, i64 0, i32 2
  br label %2430

2430:                                             ; preds = %2428, %2445
  %2431 = phi ptr [ %2426, %2428 ], [ %2447, %2445 ]
  %2432 = phi i32 [ 1, %2428 ], [ %2446, %2445 ]
  %2433 = load ptr, ptr %2429, align 8, !tbaa !456
  %2434 = icmp eq ptr %2431, %2433
  %2435 = getelementptr inbounds %struct.KeyBlock, ptr %2431, i64 0, i32 11
  %2436 = load i8, ptr %2435, align 8, !tbaa !135
  %2437 = icmp eq i8 %2436, 0
  br i1 %2434, label %2438, label %2440

2438:                                             ; preds = %2430
  br i1 %2437, label %2439, label %2445

2439:                                             ; preds = %2438
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(6) %2435, ptr noundef nonnull align 1 dereferenceable(6) @.str.7, i64 6, i1 false) #15
  br label %2445

2440:                                             ; preds = %2430
  br i1 %2437, label %2441, label %2443

2441:                                             ; preds = %2440
  %2442 = call i64 (ptr, i64, ptr, ...) @BLI_snprintf(ptr noundef nonnull %2435, i64 noundef 64, ptr noundef nonnull @.str.8, i32 noundef %2432) #15
  br label %2443

2443:                                             ; preds = %2441, %2440
  %2444 = add nsw i32 %2432, 1
  br label %2445

2445:                                             ; preds = %2443, %2439, %2438
  %2446 = phi i32 [ %2432, %2439 ], [ %2432, %2438 ], [ %2444, %2443 ]
  %2447 = load ptr, ptr %2431, align 8, !tbaa !34
  %2448 = icmp eq ptr %2447, null
  br i1 %2448, label %2420, label %2430, !llvm.loop !458

2449:                                             ; preds = %2420, %2416
  %2450 = load i16, ptr %7, align 8, !tbaa !59
  br label %2451

2451:                                             ; preds = %2449, %2215
  %2452 = phi i16 [ %2450, %2449 ], [ %2216, %2215 ]
  %2453 = icmp slt i16 %2452, 240
  br i1 %2453, label %2454, label %2587

2454:                                             ; preds = %2451
  %2455 = getelementptr inbounds %struct.Main, ptr %2, i64 0, i32 11
  %2456 = load ptr, ptr %2455, align 8, !tbaa !360
  %2457 = getelementptr inbounds %struct.Main, ptr %2, i64 0, i32 22
  %2458 = load ptr, ptr %2457, align 8, !tbaa !459
  %2459 = getelementptr inbounds %struct.Main, ptr %2, i64 0, i32 17
  %2460 = load ptr, ptr %2459, align 8, !tbaa !460
  %2461 = getelementptr inbounds %struct.Main, ptr %2, i64 0, i32 13
  %2462 = load ptr, ptr %2461, align 8, !tbaa !34
  %2463 = icmp eq ptr %2462, null
  br i1 %2463, label %2495, label %2467

2464:                                             ; preds = %2492, %2467
  %2465 = load ptr, ptr %2468, align 8, !tbaa !34
  %2466 = icmp eq ptr %2465, null
  br i1 %2466, label %2495, label %2467, !llvm.loop !461

2467:                                             ; preds = %2454, %2464
  %2468 = phi ptr [ %2465, %2464 ], [ %2462, %2454 ]
  %2469 = getelementptr inbounds %struct.Object, ptr %2468, i64 0, i32 26
  %2470 = load ptr, ptr %2469, align 8, !tbaa !34
  %2471 = icmp eq ptr %2470, null
  br i1 %2471, label %2464, label %2472

2472:                                             ; preds = %2467, %2492
  %2473 = phi ptr [ %2493, %2492 ], [ %2470, %2467 ]
  %2474 = getelementptr inbounds %struct.ModifierData, ptr %2473, i64 0, i32 2
  %2475 = load i32, ptr %2474, align 8, !tbaa !436
  %2476 = icmp eq i32 %2475, 8
  br i1 %2476, label %2477, label %2492

2477:                                             ; preds = %2472
  %2478 = getelementptr inbounds %struct.ArmatureModifierData, ptr %2473, i64 0, i32 4
  %2479 = load ptr, ptr %2478, align 8, !tbaa !462
  %2480 = icmp eq ptr %2479, null
  br i1 %2480, label %2492, label %2481

2481:                                             ; preds = %2477
  %2482 = getelementptr inbounds %struct.ArmatureModifierData, ptr %2473, i64 0, i32 1
  %2483 = load i16, ptr %2482, align 8, !tbaa !464
  %2484 = icmp eq i16 %2483, 0
  br i1 %2484, label %2485, label %2492

2485:                                             ; preds = %2481
  %2486 = call ptr @blo_do_versions_newlibadr(ptr noundef %0, ptr noundef %1, ptr noundef nonnull %2479) #15
  %2487 = getelementptr inbounds %struct.Object, ptr %2486, i64 0, i32 19
  %2488 = load ptr, ptr %2487, align 8, !tbaa !401
  %2489 = call ptr @blo_do_versions_newlibadr(ptr noundef %0, ptr noundef %1, ptr noundef %2488) #15
  %2490 = getelementptr inbounds %struct.bArmature, ptr %2489, i64 0, i32 12
  %2491 = load i16, ptr %2490, align 8, !tbaa !451
  store i16 %2491, ptr %2482, align 8, !tbaa !464
  br label %2492

2492:                                             ; preds = %2477, %2481, %2485, %2472
  %2493 = load ptr, ptr %2473, align 8, !tbaa !34
  %2494 = icmp eq ptr %2493, null
  br i1 %2494, label %2464, label %2472, !llvm.loop !465

2495:                                             ; preds = %2464, %2454
  %2496 = getelementptr inbounds %struct.Main, ptr %2, i64 0, i32 33
  %2497 = load ptr, ptr %2496, align 8, !tbaa !34
  %2498 = icmp eq ptr %2497, null
  br i1 %2498, label %2499, label %2501

2499:                                             ; preds = %2513, %2495
  %2500 = icmp eq ptr %2456, null
  br i1 %2500, label %2516, label %2521

2501:                                             ; preds = %2495, %2513
  %2502 = phi ptr [ %2514, %2513 ], [ %2497, %2495 ]
  %2503 = getelementptr inbounds %struct.bArmature, ptr %2502, i64 0, i32 18
  %2504 = load i16, ptr %2503, align 2, !tbaa !466
  %2505 = icmp eq i16 %2504, 0
  br i1 %2505, label %2506, label %2507

2506:                                             ; preds = %2501
  store i16 1, ptr %2503, align 2, !tbaa !466
  br label %2507

2507:                                             ; preds = %2506, %2501
  %2508 = getelementptr inbounds %struct.bArmature, ptr %2502, i64 0, i32 2
  call fastcc void @bone_version_239(ptr noundef nonnull %2508) #16
  %2509 = getelementptr inbounds %struct.bArmature, ptr %2502, i64 0, i32 15
  %2510 = load i32, ptr %2509, align 8, !tbaa !467
  %2511 = icmp eq i32 %2510, 0
  br i1 %2511, label %2512, label %2513

2512:                                             ; preds = %2507
  store i32 1, ptr %2509, align 8, !tbaa !467
  br label %2513

2513:                                             ; preds = %2507, %2512
  %2514 = load ptr, ptr %2502, align 8, !tbaa !34
  %2515 = icmp eq ptr %2514, null
  br i1 %2515, label %2499, label %2501, !llvm.loop !468

2516:                                             ; preds = %2539, %2499
  %2517 = phi i32 [ 0, %2499 ], [ %2531, %2539 ]
  %2518 = icmp eq ptr %2458, null
  br i1 %2518, label %2542, label %2519

2519:                                             ; preds = %2516
  %2520 = icmp eq i32 %2517, 0
  br label %2544

2521:                                             ; preds = %2499, %2539
  %2522 = phi i32 [ %2531, %2539 ], [ 0, %2499 ]
  %2523 = phi ptr [ %2540, %2539 ], [ %2456, %2499 ]
  %2524 = getelementptr inbounds %struct.Scene, ptr %2523, i64 0, i32 22, i32 46
  %2525 = load i32, ptr %2524, align 4, !tbaa !469
  %2526 = and i32 %2525, 4
  %2527 = icmp eq i32 %2526, 0
  br i1 %2527, label %2530, label %2528

2528:                                             ; preds = %2521
  %2529 = and i32 %2525, -5
  store i32 %2529, ptr %2524, align 4, !tbaa !469
  br label %2530

2530:                                             ; preds = %2528, %2521
  %2531 = phi i32 [ 1, %2528 ], [ %2522, %2521 ]
  %2532 = getelementptr inbounds %struct.Scene, ptr %2523, i64 0, i32 22, i32 47
  %2533 = load i32, ptr %2532, align 8, !tbaa !108
  %2534 = and i32 %2533, 131072
  %2535 = icmp eq i32 %2534, 0
  br i1 %2535, label %2539, label %2536

2536:                                             ; preds = %2530
  %2537 = getelementptr inbounds %struct.Scene, ptr %2523, i64 0, i32 22, i32 29
  store i16 5, ptr %2537, align 4, !tbaa !470
  %2538 = and i32 %2533, -131073
  store i32 %2538, ptr %2532, align 8, !tbaa !108
  br label %2539

2539:                                             ; preds = %2530, %2536
  %2540 = load ptr, ptr %2523, align 8, !tbaa !371
  %2541 = icmp eq ptr %2540, null
  br i1 %2541, label %2516, label %2521, !llvm.loop !471

2542:                                             ; preds = %2562, %2516
  %2543 = icmp eq ptr %2460, null
  br i1 %2543, label %2587, label %2565

2544:                                             ; preds = %2519, %2562
  %2545 = phi ptr [ %2458, %2519 ], [ %2563, %2562 ]
  %2546 = getelementptr inbounds %struct.Camera, ptr %2545, i64 0, i32 4
  %2547 = load i16, ptr %2546, align 2, !tbaa !472
  br i1 %2520, label %2550, label %2548

2548:                                             ; preds = %2544
  %2549 = or i16 %2547, 4
  store i16 %2549, ptr %2546, align 2, !tbaa !472
  br label %2550

2550:                                             ; preds = %2544, %2548
  %2551 = phi i16 [ %2549, %2548 ], [ %2547, %2544 ]
  %2552 = and i16 %2551, 8
  %2553 = icmp eq i16 %2552, 0
  br i1 %2553, label %2554, label %2557

2554:                                             ; preds = %2550
  %2555 = getelementptr inbounds %struct.Camera, ptr %2545, i64 0, i32 4
  %2556 = or disjoint i16 %2551, 8
  store i16 %2556, ptr %2555, align 2, !tbaa !472
  br label %2557

2557:                                             ; preds = %2554, %2550
  %2558 = getelementptr inbounds %struct.Camera, ptr %2545, i64 0, i32 5
  %2559 = load float, ptr %2558, align 4, !tbaa !473
  %2560 = fcmp une float %2559, 0.000000e+00
  br i1 %2560, label %2562, label %2561

2561:                                             ; preds = %2557
  store float 0x3FC99999A0000000, ptr %2558, align 4, !tbaa !473
  br label %2562

2562:                                             ; preds = %2557, %2561
  %2563 = load ptr, ptr %2545, align 8, !tbaa !474
  %2564 = icmp eq ptr %2563, null
  br i1 %2564, label %2542, label %2544, !llvm.loop !475

2565:                                             ; preds = %2542, %2584
  %2566 = phi ptr [ %2585, %2584 ], [ %2460, %2542 ]
  %2567 = getelementptr inbounds %struct.Material, ptr %2566, i64 0, i32 63
  %2568 = load float, ptr %2567, align 4, !tbaa !476
  %2569 = fcmp oeq float %2568, 0.000000e+00
  br i1 %2569, label %2573, label %2570

2570:                                             ; preds = %2565
  %2571 = getelementptr inbounds %struct.Material, ptr %2566, i64 0, i32 51
  %2572 = load i32, ptr %2571, align 4, !tbaa !153
  br label %2577

2573:                                             ; preds = %2565
  store <2 x float> <float 1.000000e+00, float 1.000000e+00>, ptr %2567, align 4, !tbaa !120
  %2574 = getelementptr inbounds %struct.Material, ptr %2566, i64 0, i32 51
  %2575 = load i32, ptr %2574, align 4, !tbaa !153
  %2576 = or i32 %2575, 16777216
  store i32 %2576, ptr %2574, align 4, !tbaa !153
  br label %2577

2577:                                             ; preds = %2570, %2573
  %2578 = phi i32 [ %2572, %2570 ], [ %2576, %2573 ]
  %2579 = and i32 %2578, 1
  %2580 = icmp eq i32 %2579, 0
  br i1 %2580, label %2584, label %2581

2581:                                             ; preds = %2577
  %2582 = getelementptr inbounds %struct.Material, ptr %2566, i64 0, i32 51
  %2583 = or i32 %2578, 33554432
  store i32 %2583, ptr %2582, align 4, !tbaa !153
  br label %2584

2584:                                             ; preds = %2577, %2581
  %2585 = load ptr, ptr %2566, align 8, !tbaa !477
  %2586 = icmp eq ptr %2585, null
  br i1 %2586, label %2587, label %2565, !llvm.loop !478

2587:                                             ; preds = %2584, %2542, %2451
  %2588 = load i16, ptr %7, align 8, !tbaa !59
  %2589 = icmp slt i16 %2588, 242
  br i1 %2589, label %2590, label %2828

2590:                                             ; preds = %2587
  %2591 = getelementptr inbounds %struct.Main, ptr %2, i64 0, i32 25
  %2592 = load ptr, ptr %2591, align 8, !tbaa !34
  %2593 = icmp eq ptr %2592, null
  br i1 %2593, label %2609, label %2594

2594:                                             ; preds = %2590
  %2595 = icmp sgt i16 %2588, 225
  br label %2596

2596:                                             ; preds = %2594, %2606
  %2597 = phi ptr [ %2592, %2594 ], [ %2607, %2606 ]
  br i1 %2595, label %2598, label %2600

2598:                                             ; preds = %2596
  %2599 = getelementptr inbounds %struct.World, ptr %2597, i64 0, i32 25
  store i16 5, ptr %2599, align 2, !tbaa !262
  br label %2600

2600:                                             ; preds = %2598, %2596
  %2601 = getelementptr inbounds %struct.World, ptr %2597, i64 0, i32 50
  %2602 = load i16, ptr %2601, align 8, !tbaa !479
  %2603 = icmp eq i16 %2602, 1
  br i1 %2603, label %2604, label %2606

2604:                                             ; preds = %2600
  %2605 = getelementptr inbounds %struct.World, ptr %2597, i64 0, i32 53
  store i16 0, ptr %2605, align 2, !tbaa !480
  br label %2606

2606:                                             ; preds = %2600, %2604
  %2607 = load ptr, ptr %2597, align 8, !tbaa !34
  %2608 = icmp eq ptr %2607, null
  br i1 %2608, label %2609, label %2596, !llvm.loop !481

2609:                                             ; preds = %2606, %2590
  %2610 = getelementptr inbounds %struct.Main, ptr %2, i64 0, i32 33
  %2611 = load ptr, ptr %2610, align 8, !tbaa !34
  %2612 = icmp eq ptr %2611, null
  br i1 %2612, label %2623, label %2613

2613:                                             ; preds = %2609, %2620
  %2614 = phi ptr [ %2621, %2620 ], [ %2611, %2609 ]
  %2615 = getelementptr inbounds %struct.bArmature, ptr %2614, i64 0, i32 2
  call fastcc void @bone_version_239(ptr noundef nonnull %2615) #16
  %2616 = getelementptr inbounds %struct.bArmature, ptr %2614, i64 0, i32 15
  %2617 = load i32, ptr %2616, align 8, !tbaa !467
  %2618 = icmp eq i32 %2617, 0
  br i1 %2618, label %2619, label %2620

2619:                                             ; preds = %2613
  store i32 1, ptr %2616, align 8, !tbaa !467
  br label %2620

2620:                                             ; preds = %2613, %2619
  %2621 = load ptr, ptr %2614, align 8, !tbaa !34
  %2622 = icmp eq ptr %2621, null
  br i1 %2622, label %2623, label %2613, !llvm.loop !482

2623:                                             ; preds = %2620, %2609
  %2624 = getelementptr inbounds %struct.Main, ptr %2, i64 0, i32 11
  %2625 = load ptr, ptr %2624, align 8, !tbaa !34
  %2626 = icmp eq ptr %2625, null
  br i1 %2626, label %2719, label %2627

2627:                                             ; preds = %2623, %2716
  %2628 = phi ptr [ %2717, %2716 ], [ %2625, %2623 ]
  %2629 = getelementptr inbounds %struct.Scene, ptr %2628, i64 0, i32 23
  %2630 = load i32, ptr %2629, align 8, !tbaa !272
  %2631 = icmp eq i32 %2630, 0
  br i1 %2631, label %2632, label %2633

2632:                                             ; preds = %2627
  store i32 44100, ptr %2629, align 8, !tbaa !272
  br label %2633

2633:                                             ; preds = %2632, %2627
  %2634 = getelementptr inbounds %struct.Scene, ptr %2628, i64 0, i32 22, i32 35
  %2635 = load i16, ptr %2634, align 4, !tbaa !483
  %2636 = icmp slt i16 %2635, 2
  br i1 %2636, label %2637, label %2638

2637:                                             ; preds = %2633
  store i16 4, ptr %2634, align 4, !tbaa !483
  br label %2638

2638:                                             ; preds = %2637, %2633
  %2639 = getelementptr inbounds %struct.Scene, ptr %2628, i64 0, i32 22, i32 36
  %2640 = load i16, ptr %2639, align 2, !tbaa !484
  %2641 = icmp slt i16 %2640, 2
  br i1 %2641, label %2642, label %2643

2642:                                             ; preds = %2638
  store i16 4, ptr %2639, align 2, !tbaa !484
  br label %2643

2643:                                             ; preds = %2642, %2638
  %2644 = getelementptr inbounds %struct.Scene, ptr %2628, i64 0, i32 22, i32 60
  %2645 = call fastcc zeroext i8 @BLI_listbase_is_empty(ptr noundef nonnull %2644) #16, !range !485
  %2646 = icmp eq i8 %2645, 0
  br i1 %2646, label %2647, label %2650

2647:                                             ; preds = %2643
  %2648 = load ptr, ptr %2644, align 8, !tbaa !34
  %2649 = icmp eq ptr %2648, null
  br i1 %2649, label %2666, label %2652

2650:                                             ; preds = %2643
  %2651 = call ptr @BKE_scene_add_render_layer(ptr noundef nonnull %2628, ptr noundef null) #15
  br label %2666

2652:                                             ; preds = %2647, %2660
  %2653 = phi ptr [ %2664, %2660 ], [ %2648, %2647 ]
  %2654 = getelementptr inbounds %struct.SceneRenderLayer, ptr %2653, i64 0, i32 8
  %2655 = load i32, ptr %2654, align 4, !tbaa !486
  %2656 = and i32 %2655, 1
  %2657 = icmp eq i32 %2656, 0
  br i1 %2657, label %2660, label %2658

2658:                                             ; preds = %2652
  %2659 = or i32 %2655, 16
  store i32 %2659, ptr %2654, align 4, !tbaa !486
  br label %2660

2660:                                             ; preds = %2658, %2652
  %2661 = getelementptr inbounds %struct.SceneRenderLayer, ptr %2653, i64 0, i32 9
  %2662 = load i32, ptr %2661, align 8, !tbaa !489
  %2663 = and i32 %2662, 771
  store i32 %2663, ptr %2661, align 8, !tbaa !489
  %2664 = load ptr, ptr %2653, align 8, !tbaa !34
  %2665 = icmp eq ptr %2664, null
  br i1 %2665, label %2666, label %2652, !llvm.loop !490

2666:                                             ; preds = %2660, %2647, %2650
  %2667 = getelementptr inbounds %struct.Scene, ptr %2628, i64 0, i32 18
  %2668 = load ptr, ptr %2667, align 8, !tbaa !491
  %2669 = icmp eq ptr %2668, null
  br i1 %2669, label %2671, label %2670

2670:                                             ; preds = %2666
  call fastcc void @ntree_version_241(ptr noundef nonnull %2668) #16
  br label %2671

2671:                                             ; preds = %2670, %2666
  %2672 = getelementptr inbounds %struct.Scene, ptr %2628, i64 0, i32 20
  %2673 = load ptr, ptr %2672, align 8, !tbaa !418
  %2674 = getelementptr inbounds %struct.ToolSettings, ptr %2673, i64 0, i32 9
  %2675 = load i8, ptr %2674, align 8, !tbaa !492
  %2676 = icmp eq i8 %2675, 0
  br i1 %2676, label %2677, label %2679

2677:                                             ; preds = %2671
  %2678 = getelementptr inbounds %struct.ToolSettings, ptr %2673, i64 0, i32 10
  store i8 1, ptr %2678, align 1, !tbaa !493
  store i8 1, ptr %2674, align 8, !tbaa !492
  br label %2679

2679:                                             ; preds = %2677, %2671
  %2680 = getelementptr inbounds %struct.Scene, ptr %2628, i64 0, i32 22, i32 47
  %2681 = load i32, ptr %2680, align 8, !tbaa !108
  %2682 = and i32 %2681, 1024
  %2683 = icmp eq i32 %2682, 0
  br i1 %2683, label %2716, label %2684

2684:                                             ; preds = %2679
  %2685 = getelementptr inbounds %struct.Scene, ptr %2628, i64 0, i32 22, i32 33
  %2686 = load i32, ptr %2685, align 4, !tbaa !494
  %2687 = getelementptr inbounds %struct.Scene, ptr %2628, i64 0, i32 22, i32 34
  %2688 = load i32, ptr %2687, align 8, !tbaa !495
  %2689 = icmp slt i32 %2686, %2688
  br i1 %2689, label %2690, label %2716

2690:                                             ; preds = %2684
  %2691 = getelementptr inbounds %struct.Scene, ptr %2628, i64 0, i32 2
  %2692 = load ptr, ptr %2691, align 8, !tbaa !496
  %2693 = call ptr @blo_do_versions_newlibadr(ptr noundef %0, ptr noundef %1, ptr noundef %2692) #15
  %2694 = icmp eq ptr %2693, null
  br i1 %2694, label %2716, label %2695

2695:                                             ; preds = %2690
  %2696 = getelementptr inbounds %struct.Object, ptr %2693, i64 0, i32 3
  %2697 = load i16, ptr %2696, align 8, !tbaa !267
  %2698 = icmp eq i16 %2697, 11
  br i1 %2698, label %2699, label %2716

2699:                                             ; preds = %2695
  %2700 = getelementptr inbounds %struct.Object, ptr %2693, i64 0, i32 19
  %2701 = load ptr, ptr %2700, align 8, !tbaa !401
  %2702 = call ptr @blo_do_versions_newlibadr(ptr noundef %0, ptr noundef %1, ptr noundef %2701) #15
  %2703 = getelementptr inbounds %struct.Camera, ptr %2702, i64 0, i32 8
  %2704 = load float, ptr %2703, align 8, !tbaa !375
  %2705 = fcmp ult float %2704, 1.000000e+01
  br i1 %2705, label %2716, label %2706

2706:                                             ; preds = %2699
  %2707 = load i16, ptr %2634, align 4, !tbaa !483
  %2708 = sext i16 %2707 to i32
  %2709 = load i32, ptr %2685, align 4, !tbaa !494
  %2710 = mul nsw i32 %2709, %2708
  store i32 %2710, ptr %2685, align 4, !tbaa !494
  %2711 = load i32, ptr %2687, align 8, !tbaa !495
  %2712 = sitofp i32 %2711 to float
  %2713 = sitofp i32 %2710 to float
  %2714 = fdiv float %2712, %2713
  %2715 = fmul float %2704, %2714
  store float %2715, ptr %2703, align 8, !tbaa !375
  br label %2716

2716:                                             ; preds = %2690, %2695, %2706, %2699, %2679, %2684
  %2717 = load ptr, ptr %2628, align 8, !tbaa !34
  %2718 = icmp eq ptr %2717, null
  br i1 %2718, label %2719, label %2627, !llvm.loop !497

2719:                                             ; preds = %2716, %2623
  %2720 = getelementptr inbounds %struct.Main, ptr %2, i64 0, i32 35
  %2721 = load ptr, ptr %2720, align 8, !tbaa !34
  %2722 = icmp eq ptr %2721, null
  br i1 %2722, label %2727, label %2723

2723:                                             ; preds = %2719, %2723
  %2724 = phi ptr [ %2725, %2723 ], [ %2721, %2719 ]
  call fastcc void @ntree_version_241(ptr noundef nonnull %2724) #16
  %2725 = load ptr, ptr %2724, align 8, !tbaa !34
  %2726 = icmp eq ptr %2725, null
  br i1 %2726, label %2727, label %2723, !llvm.loop !498

2727:                                             ; preds = %2723, %2719
  %2728 = getelementptr inbounds %struct.Main, ptr %2, i64 0, i32 21
  %2729 = load ptr, ptr %2728, align 8, !tbaa !34
  %2730 = icmp eq ptr %2729, null
  br i1 %2730, label %2740, label %2731

2731:                                             ; preds = %2727, %2737
  %2732 = phi ptr [ %2738, %2737 ], [ %2729, %2727 ]
  %2733 = getelementptr inbounds %struct.Lamp, ptr %2732, i64 0, i32 34
  %2734 = load i16, ptr %2733, align 4, !tbaa !499
  %2735 = icmp eq i16 %2734, 0
  br i1 %2735, label %2736, label %2737

2736:                                             ; preds = %2731
  store i16 1, ptr %2733, align 4, !tbaa !499
  br label %2737

2737:                                             ; preds = %2731, %2736
  %2738 = load ptr, ptr %2732, align 8, !tbaa !34
  %2739 = icmp eq ptr %2738, null
  br i1 %2739, label %2740, label %2731, !llvm.loop !500

2740:                                             ; preds = %2737, %2727
  %2741 = getelementptr inbounds %struct.Main, ptr %2, i64 0, i32 18
  %2742 = load ptr, ptr %2741, align 8, !tbaa !34
  %2743 = icmp eq ptr %2742, null
  br i1 %2743, label %2757, label %2744

2744:                                             ; preds = %2740, %2754
  %2745 = phi ptr [ %2755, %2754 ], [ %2742, %2740 ]
  %2746 = getelementptr inbounds %struct.Tex, ptr %2745, i64 0, i32 56
  %2747 = load ptr, ptr %2746, align 8, !tbaa !501
  %2748 = icmp eq ptr %2747, null
  br i1 %2748, label %2754, label %2749

2749:                                             ; preds = %2744
  %2750 = getelementptr inbounds %struct.EnvMap, ptr %2747, i64 0, i32 9
  %2751 = load float, ptr %2750, align 8, !tbaa !502
  %2752 = fcmp oeq float %2751, 0.000000e+00
  br i1 %2752, label %2753, label %2754

2753:                                             ; preds = %2749
  store float 1.000000e+00, ptr %2750, align 8, !tbaa !502
  br label %2754

2754:                                             ; preds = %2744, %2749, %2753
  %2755 = load ptr, ptr %2745, align 8, !tbaa !34
  %2756 = icmp eq ptr %2755, null
  br i1 %2756, label %2757, label %2744, !llvm.loop !504

2757:                                             ; preds = %2754, %2740
  %2758 = getelementptr inbounds %struct.Main, ptr %2, i64 0, i32 13
  %2759 = load ptr, ptr %2758, align 8, !tbaa !34
  %2760 = icmp eq ptr %2759, null
  br i1 %2760, label %2771, label %2761

2761:                                             ; preds = %2757, %2768
  %2762 = phi ptr [ %2769, %2768 ], [ %2759, %2757 ]
  %2763 = getelementptr inbounds %struct.Object, ptr %2762, i64 0, i32 89
  %2764 = load float, ptr %2763, align 8, !tbaa !505
  %2765 = fcmp oeq float %2764, 0.000000e+00
  br i1 %2765, label %2766, label %2768

2766:                                             ; preds = %2761
  %2767 = getelementptr inbounds %struct.Object, ptr %2762, i64 0, i32 88
  store i8 1, ptr %2767, align 1, !tbaa !506
  store float 1.000000e+00, ptr %2763, align 8, !tbaa !505
  br label %2768

2768:                                             ; preds = %2761, %2766
  %2769 = load ptr, ptr %2762, align 8, !tbaa !34
  %2770 = icmp eq ptr %2769, null
  br i1 %2770, label %2771, label %2761, !llvm.loop !507

2771:                                             ; preds = %2768, %2757
  %2772 = getelementptr inbounds %struct.Main, ptr %2, i64 0, i32 17
  %2773 = load ptr, ptr %2772, align 8, !tbaa !34
  %2774 = icmp eq ptr %2773, null
  br i1 %2774, label %2809, label %2775

2775:                                             ; preds = %2771, %2806
  %2776 = phi ptr [ %2807, %2806 ], [ %2773, %2771 ]
  br label %2777

2777:                                             ; preds = %2775, %2798
  %2778 = phi i64 [ 0, %2775 ], [ %2799, %2798 ]
  %2779 = getelementptr inbounds %struct.Material, ptr %2776, i64 0, i32 102, i64 %2778
  %2780 = load ptr, ptr %2779, align 8, !tbaa !34
  %2781 = icmp eq ptr %2780, null
  br i1 %2781, label %2798, label %2782

2782:                                             ; preds = %2777
  %2783 = getelementptr inbounds %struct.MTex, ptr %2780, i64 0, i32 5
  %2784 = load ptr, ptr %2783, align 8, !tbaa !508
  %2785 = icmp eq ptr %2784, null
  br i1 %2785, label %2798, label %2786

2786:                                             ; preds = %2782
  %2787 = call ptr @blo_do_versions_newlibadr(ptr noundef %0, ptr noundef %1, ptr noundef nonnull %2784) #15
  %2788 = icmp eq ptr %2787, null
  br i1 %2788, label %2798, label %2789

2789:                                             ; preds = %2786
  %2790 = getelementptr inbounds %struct.Tex, ptr %2787, i64 0, i32 32
  %2791 = load i16, ptr %2790, align 8, !tbaa !510
  %2792 = icmp eq i16 %2791, 6
  br i1 %2792, label %2793, label %2798

2793:                                             ; preds = %2789
  %2794 = load ptr, ptr %2779, align 8, !tbaa !34
  %2795 = getelementptr inbounds %struct.MTex, ptr %2794, i64 0, i32 1
  %2796 = load i16, ptr %2795, align 2, !tbaa !511
  %2797 = and i16 %2796, -50
  store i16 %2797, ptr %2795, align 2, !tbaa !511
  br label %2798

2798:                                             ; preds = %2777, %2782, %2793, %2789, %2786
  %2799 = add nuw nsw i64 %2778, 1
  %2800 = icmp eq i64 %2799, 18
  br i1 %2800, label %2801, label %2777, !llvm.loop !512

2801:                                             ; preds = %2798
  %2802 = getelementptr inbounds %struct.Material, ptr %2776, i64 0, i32 35
  %2803 = load float, ptr %2802, align 8, !tbaa !513
  %2804 = fcmp oeq float %2803, 0.000000e+00
  br i1 %2804, label %2805, label %2806

2805:                                             ; preds = %2801
  store float 1.000000e+00, ptr %2802, align 8, !tbaa !513
  br label %2806

2806:                                             ; preds = %2805, %2801
  %2807 = load ptr, ptr %2776, align 8, !tbaa !34
  %2808 = icmp eq ptr %2807, null
  br i1 %2808, label %2809, label %2775, !llvm.loop !514

2809:                                             ; preds = %2806, %2771
  %2810 = load i16, ptr %7, align 8, !tbaa !59
  %2811 = icmp eq i16 %2810, 241
  br i1 %2811, label %2812, label %2828

2812:                                             ; preds = %2809
  %2813 = getelementptr inbounds %struct.Main, ptr %2, i64 0, i32 19
  %2814 = load ptr, ptr %2813, align 8, !tbaa !34
  %2815 = icmp eq ptr %2814, null
  br i1 %2815, label %2831, label %2816

2816:                                             ; preds = %2812, %2823
  %2817 = phi ptr [ %2824, %2823 ], [ %2814, %2812 ]
  %2818 = getelementptr inbounds %struct.Image, ptr %2817, i64 0, i32 1
  %2819 = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %2818, ptr noundef nonnull dereferenceable(11) @.str.9) #17
  %2820 = icmp eq i32 %2819, 0
  br i1 %2820, label %2821, label %2823

2821:                                             ; preds = %2816
  %2822 = getelementptr inbounds %struct.ID, ptr %2817, i64 0, i32 4, i64 2
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(12) %2822, ptr noundef nonnull align 1 dereferenceable(12) @.str.10, i64 12, i1 false) #15
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(12) %2818, ptr noundef nonnull align 1 dereferenceable(12) @.str.10, i64 12, i1 false) #15
  br label %2823

2823:                                             ; preds = %2816, %2821
  %2824 = load ptr, ptr %2817, align 8, !tbaa !34
  %2825 = icmp eq ptr %2824, null
  br i1 %2825, label %2826, label %2816, !llvm.loop !515

2826:                                             ; preds = %2823
  %2827 = load i16, ptr %7, align 8, !tbaa !59
  br label %2828

2828:                                             ; preds = %2826, %2809, %2587
  %2829 = phi i16 [ %2810, %2809 ], [ %2588, %2587 ], [ %2827, %2826 ]
  %2830 = icmp slt i16 %2829, 243
  br i1 %2830, label %2831, label %3272

2831:                                             ; preds = %2812, %2828
  %2832 = getelementptr inbounds %struct.Main, ptr %2, i64 0, i32 26
  %2833 = load ptr, ptr %2832, align 8, !tbaa !34
  %2834 = icmp eq ptr %2833, null
  br i1 %2834, label %2864, label %2838

2835:                                             ; preds = %2843, %2838
  %2836 = load ptr, ptr %2839, align 8, !tbaa !34
  %2837 = icmp eq ptr %2836, null
  br i1 %2837, label %2864, label %2838, !llvm.loop !516

2838:                                             ; preds = %2831, %2835
  %2839 = phi ptr [ %2836, %2835 ], [ %2833, %2831 ]
  %2840 = getelementptr inbounds %struct.bScreen, ptr %2839, i64 0, i32 3
  %2841 = load ptr, ptr %2840, align 8, !tbaa !34
  %2842 = icmp eq ptr %2841, null
  br i1 %2842, label %2835, label %2846

2843:                                             ; preds = %2861, %2846
  %2844 = load ptr, ptr %2847, align 8, !tbaa !34
  %2845 = icmp eq ptr %2844, null
  br i1 %2845, label %2835, label %2846, !llvm.loop !517

2846:                                             ; preds = %2838, %2843
  %2847 = phi ptr [ %2844, %2843 ], [ %2841, %2838 ]
  %2848 = getelementptr inbounds %struct.ScrArea, ptr %2847, i64 0, i32 19
  %2849 = load ptr, ptr %2848, align 8, !tbaa !34
  %2850 = icmp eq ptr %2849, null
  br i1 %2850, label %2843, label %2851

2851:                                             ; preds = %2846, %2861
  %2852 = phi ptr [ %2862, %2861 ], [ %2849, %2846 ]
  %2853 = getelementptr inbounds %struct.SpaceLink, ptr %2852, i64 0, i32 3
  %2854 = load i32, ptr %2853, align 8, !tbaa !114
  %2855 = icmp eq i32 %2854, 1
  br i1 %2855, label %2856, label %2861

2856:                                             ; preds = %2851
  %2857 = getelementptr inbounds %struct.View3D, ptr %2852, i64 0, i32 38
  %2858 = load i16, ptr %2857, align 8, !tbaa !518
  %2859 = icmp eq i16 %2858, 0
  br i1 %2859, label %2860, label %2861

2860:                                             ; preds = %2856
  store i16 10, ptr %2857, align 8, !tbaa !518
  br label %2861

2861:                                             ; preds = %2856, %2860, %2851
  %2862 = load ptr, ptr %2852, align 8, !tbaa !34
  %2863 = icmp eq ptr %2862, null
  br i1 %2863, label %2843, label %2851, !llvm.loop !519

2864:                                             ; preds = %2835, %2831
  %2865 = getelementptr inbounds %struct.Main, ptr %2, i64 0, i32 11
  %2866 = load ptr, ptr %2865, align 8, !tbaa !34
  %2867 = icmp eq ptr %2866, null
  br i1 %2867, label %2894, label %2868

2868:                                             ; preds = %2864, %2891
  %2869 = phi ptr [ %2892, %2891 ], [ %2866, %2864 ]
  %2870 = getelementptr inbounds %struct.Scene, ptr %2869, i64 0, i32 20
  %2871 = load ptr, ptr %2870, align 8, !tbaa !418
  %2872 = getelementptr inbounds %struct.ToolSettings, ptr %2871, i64 0, i32 20
  %2873 = load float, ptr %2872, align 4, !tbaa !520
  %2874 = fcmp oeq float %2873, 0.000000e+00
  br i1 %2874, label %2875, label %2876

2875:                                             ; preds = %2868
  store float 0x3F847AE140000000, ptr %2872, align 4, !tbaa !520
  br label %2876

2876:                                             ; preds = %2875, %2868
  %2877 = getelementptr inbounds %struct.Scene, ptr %2869, i64 0, i32 22, i32 14
  %2878 = load i16, ptr %2877, align 2, !tbaa !521
  %2879 = icmp eq i16 %2878, 0
  br i1 %2879, label %2880, label %2886

2880:                                             ; preds = %2876
  %2881 = getelementptr inbounds %struct.Scene, ptr %2869, i64 0, i32 22, i32 47
  %2882 = load i32, ptr %2881, align 8, !tbaa !108
  %2883 = and i32 %2882, 524288
  %2884 = icmp eq i32 %2883, 0
  %2885 = select i1 %2884, i16 1, i16 2
  store i16 %2885, ptr %2877, align 2, !tbaa !521
  br label %2886

2886:                                             ; preds = %2880, %2876
  %2887 = getelementptr inbounds %struct.Scene, ptr %2869, i64 0, i32 18
  %2888 = load ptr, ptr %2887, align 8, !tbaa !491
  %2889 = icmp eq ptr %2888, null
  br i1 %2889, label %2891, label %2890

2890:                                             ; preds = %2886
  call fastcc void @ntree_version_242(ptr noundef nonnull %2888) #16
  br label %2891

2891:                                             ; preds = %2886, %2890
  %2892 = load ptr, ptr %2869, align 8, !tbaa !34
  %2893 = icmp eq ptr %2892, null
  br i1 %2893, label %2894, label %2868, !llvm.loop !522

2894:                                             ; preds = %2891, %2864
  %2895 = getelementptr inbounds %struct.Main, ptr %2, i64 0, i32 35
  %2896 = load ptr, ptr %2895, align 8, !tbaa !34
  %2897 = icmp eq ptr %2896, null
  br i1 %2897, label %2902, label %2898

2898:                                             ; preds = %2894, %2898
  %2899 = phi ptr [ %2900, %2898 ], [ %2896, %2894 ]
  call fastcc void @ntree_version_242(ptr noundef nonnull %2899) #16
  %2900 = load ptr, ptr %2899, align 8, !tbaa !34
  %2901 = icmp eq ptr %2900, null
  br i1 %2901, label %2902, label %2898, !llvm.loop !523

2902:                                             ; preds = %2898, %2894
  %2903 = getelementptr inbounds %struct.Main, ptr %2, i64 0, i32 15
  %2904 = load ptr, ptr %2903, align 8, !tbaa !34
  %2905 = icmp eq ptr %2904, null
  br i1 %2905, label %2959, label %2909

2906:                                             ; preds = %2956, %2909
  %2907 = load ptr, ptr %2910, align 8, !tbaa !34
  %2908 = icmp eq ptr %2907, null
  br i1 %2908, label %2959, label %2909, !llvm.loop !524

2909:                                             ; preds = %2902, %2906
  %2910 = phi ptr [ %2907, %2906 ], [ %2904, %2902 ]
  %2911 = getelementptr inbounds %struct.Curve, ptr %2910, i64 0, i32 3
  %2912 = load ptr, ptr %2911, align 8, !tbaa !34
  %2913 = icmp eq ptr %2912, null
  br i1 %2913, label %2906, label %2914

2914:                                             ; preds = %2909, %2956
  %2915 = phi ptr [ %2957, %2956 ], [ %2912, %2909 ]
  %2916 = getelementptr inbounds %struct.Nurb, ptr %2915, i64 0, i32 18
  %2917 = load ptr, ptr %2916, align 8, !tbaa !525
  %2918 = icmp eq ptr %2917, null
  br i1 %2918, label %2934, label %2919

2919:                                             ; preds = %2914
  %2920 = getelementptr inbounds %struct.Nurb, ptr %2915, i64 0, i32 6
  %2921 = load i32, ptr %2920, align 8, !tbaa !527
  %2922 = icmp sgt i32 %2921, 0
  br i1 %2922, label %2923, label %2956

2923:                                             ; preds = %2919, %2930
  %2924 = phi i32 [ %2931, %2930 ], [ 0, %2919 ]
  %2925 = phi ptr [ %2932, %2930 ], [ %2917, %2919 ]
  %2926 = getelementptr inbounds %struct.BezTriple, ptr %2925, i64 0, i32 3
  %2927 = load float, ptr %2926, align 4, !tbaa !528
  %2928 = fcmp une float %2927, 0.000000e+00
  br i1 %2928, label %2930, label %2929

2929:                                             ; preds = %2923
  store float 1.000000e+00, ptr %2926, align 4, !tbaa !528
  br label %2930

2930:                                             ; preds = %2923, %2929
  %2931 = add nuw nsw i32 %2924, 1
  %2932 = getelementptr inbounds %struct.BezTriple, ptr %2925, i64 1
  %2933 = icmp eq i32 %2931, %2921
  br i1 %2933, label %2956, label %2923, !llvm.loop !530

2934:                                             ; preds = %2914
  %2935 = getelementptr inbounds %struct.Nurb, ptr %2915, i64 0, i32 17
  %2936 = load ptr, ptr %2935, align 8, !tbaa !531
  %2937 = icmp eq ptr %2936, null
  br i1 %2937, label %2956, label %2938

2938:                                             ; preds = %2934
  %2939 = getelementptr inbounds %struct.Nurb, ptr %2915, i64 0, i32 6
  %2940 = load i32, ptr %2939, align 8, !tbaa !527
  %2941 = getelementptr inbounds %struct.Nurb, ptr %2915, i64 0, i32 7
  %2942 = load i32, ptr %2941, align 4, !tbaa !532
  %2943 = mul nsw i32 %2942, %2940
  %2944 = icmp sgt i32 %2943, 0
  br i1 %2944, label %2945, label %2956

2945:                                             ; preds = %2938, %2952
  %2946 = phi i32 [ %2953, %2952 ], [ 0, %2938 ]
  %2947 = phi ptr [ %2954, %2952 ], [ %2936, %2938 ]
  %2948 = getelementptr inbounds %struct.BPoint, ptr %2947, i64 0, i32 5
  %2949 = load float, ptr %2948, align 4, !tbaa !533
  %2950 = fcmp une float %2949, 0.000000e+00
  br i1 %2950, label %2952, label %2951

2951:                                             ; preds = %2945
  store float 1.000000e+00, ptr %2948, align 4, !tbaa !533
  br label %2952

2952:                                             ; preds = %2945, %2951
  %2953 = add nuw nsw i32 %2946, 1
  %2954 = getelementptr inbounds %struct.BPoint, ptr %2947, i64 1
  %2955 = icmp eq i32 %2953, %2943
  br i1 %2955, label %2956, label %2945, !llvm.loop !535

2956:                                             ; preds = %2930, %2952, %2919, %2938, %2934
  %2957 = load ptr, ptr %2915, align 8, !tbaa !34
  %2958 = icmp eq ptr %2957, null
  br i1 %2958, label %2906, label %2914, !llvm.loop !536

2959:                                             ; preds = %2906, %2902
  %2960 = getelementptr inbounds %struct.Main, ptr %2, i64 0, i32 13
  %2961 = load ptr, ptr %2960, align 8, !tbaa !34
  %2962 = icmp eq ptr %2961, null
  br i1 %2962, label %3072, label %2966

2963:                                             ; preds = %3069, %3051
  %2964 = load ptr, ptr %2967, align 8, !tbaa !34
  %2965 = icmp eq ptr %2964, null
  br i1 %2965, label %3072, label %2966, !llvm.loop !537

2966:                                             ; preds = %2959, %2963
  %2967 = phi ptr [ %2964, %2963 ], [ %2961, %2959 ]
  %2968 = getelementptr inbounds %struct.Object, ptr %2967, i64 0, i32 106
  %2969 = load ptr, ptr %2968, align 8, !tbaa !34
  %2970 = icmp eq ptr %2969, null
  br i1 %2970, label %2997, label %2971

2971:                                             ; preds = %2966, %2994
  %2972 = phi ptr [ %2995, %2994 ], [ %2969, %2966 ]
  %2973 = getelementptr inbounds %struct.bConstraint, ptr %2972, i64 0, i32 3
  %2974 = load i16, ptr %2973, align 8, !tbaa !265
  switch i16 %2974, label %2994 [
    i16 16, label %2975
    i16 8, label %2987
  ]

2975:                                             ; preds = %2971
  %2976 = getelementptr inbounds %struct.bConstraint, ptr %2972, i64 0, i32 2
  %2977 = load ptr, ptr %2976, align 8, !tbaa !51
  %2978 = getelementptr inbounds %struct.bMinMaxConstraint, ptr %2977, i64 0, i32 4
  %2979 = load i16, ptr %2978, align 4, !tbaa !538
  %2980 = icmp eq i16 %2979, 1
  %2981 = getelementptr inbounds %struct.bMinMaxConstraint, ptr %2977, i64 0, i32 3
  %2982 = load i32, ptr %2981, align 8, !tbaa !540
  br i1 %2980, label %2983, label %2985

2983:                                             ; preds = %2975
  %2984 = or i32 %2982, 1
  store i32 %2984, ptr %2981, align 8, !tbaa !540
  br label %2994

2985:                                             ; preds = %2975
  %2986 = and i32 %2982, -2
  store i32 %2986, ptr %2981, align 8, !tbaa !540
  br label %2994

2987:                                             ; preds = %2971
  %2988 = getelementptr inbounds %struct.bConstraint, ptr %2972, i64 0, i32 2
  %2989 = load ptr, ptr %2988, align 8, !tbaa !51
  %2990 = getelementptr inbounds %struct.bRotateLikeConstraint, ptr %2989, i64 0, i32 1
  %2991 = load i32, ptr %2990, align 8, !tbaa !541
  %2992 = icmp eq i32 %2991, 0
  br i1 %2992, label %2993, label %2994

2993:                                             ; preds = %2987
  store i32 7, ptr %2990, align 8, !tbaa !541
  br label %2994

2994:                                             ; preds = %2987, %2993, %2983, %2985, %2971
  %2995 = load ptr, ptr %2972, align 8, !tbaa !34
  %2996 = icmp eq ptr %2995, null
  br i1 %2996, label %2997, label %2971, !llvm.loop !543

2997:                                             ; preds = %2994, %2966
  %2998 = getelementptr inbounds %struct.Object, ptr %2967, i64 0, i32 3
  %2999 = load i16, ptr %2998, align 8, !tbaa !267
  %3000 = icmp eq i16 %2999, 25
  br i1 %3000, label %3001, label %3051

3001:                                             ; preds = %2997
  %3002 = getelementptr inbounds %struct.Object, ptr %2967, i64 0, i32 18
  %3003 = load ptr, ptr %3002, align 8, !tbaa !268
  %3004 = icmp eq ptr %3003, null
  br i1 %3004, label %3051, label %3005

3005:                                             ; preds = %3001
  %3006 = load ptr, ptr %3003, align 8, !tbaa !34
  %3007 = icmp eq ptr %3006, null
  br i1 %3007, label %3051, label %3011

3008:                                             ; preds = %3048, %3011
  %3009 = load ptr, ptr %3012, align 8, !tbaa !34
  %3010 = icmp eq ptr %3009, null
  br i1 %3010, label %3051, label %3011, !llvm.loop !544

3011:                                             ; preds = %3005, %3008
  %3012 = phi ptr [ %3009, %3008 ], [ %3006, %3005 ]
  %3013 = getelementptr inbounds %struct.bPoseChannel, ptr %3012, i64 0, i32 3
  %3014 = load ptr, ptr %3013, align 8, !tbaa !34
  %3015 = icmp eq ptr %3014, null
  br i1 %3015, label %3008, label %3016

3016:                                             ; preds = %3011, %3048
  %3017 = phi ptr [ %3049, %3048 ], [ %3014, %3011 ]
  %3018 = getelementptr inbounds %struct.bConstraint, ptr %3017, i64 0, i32 3
  %3019 = load i16, ptr %3018, align 8, !tbaa !265
  switch i16 %3019, label %3048 [
    i16 16, label %3020
    i16 3, label %3032
    i16 8, label %3041
  ]

3020:                                             ; preds = %3016
  %3021 = getelementptr inbounds %struct.bConstraint, ptr %3017, i64 0, i32 2
  %3022 = load ptr, ptr %3021, align 8, !tbaa !51
  %3023 = getelementptr inbounds %struct.bMinMaxConstraint, ptr %3022, i64 0, i32 4
  %3024 = load i16, ptr %3023, align 4, !tbaa !538
  %3025 = icmp eq i16 %3024, 1
  %3026 = getelementptr inbounds %struct.bMinMaxConstraint, ptr %3022, i64 0, i32 3
  %3027 = load i32, ptr %3026, align 8, !tbaa !540
  br i1 %3025, label %3028, label %3030

3028:                                             ; preds = %3020
  %3029 = or i32 %3027, 1
  store i32 %3029, ptr %3026, align 8, !tbaa !540
  br label %3048

3030:                                             ; preds = %3020
  %3031 = and i32 %3027, -2
  store i32 %3031, ptr %3026, align 8, !tbaa !540
  br label %3048

3032:                                             ; preds = %3016
  %3033 = getelementptr inbounds %struct.bConstraint, ptr %3017, i64 0, i32 2
  %3034 = load ptr, ptr %3033, align 8, !tbaa !51
  %3035 = getelementptr inbounds %struct.bKinematicConstraint, ptr %3034, i64 0, i32 2
  %3036 = load i16, ptr %3035, align 2, !tbaa !442
  %3037 = and i16 %3036, 32
  %3038 = icmp eq i16 %3037, 0
  br i1 %3038, label %3039, label %3048

3039:                                             ; preds = %3032
  %3040 = or i16 %3036, 48
  store i16 %3040, ptr %3035, align 2, !tbaa !442
  br label %3048

3041:                                             ; preds = %3016
  %3042 = getelementptr inbounds %struct.bConstraint, ptr %3017, i64 0, i32 2
  %3043 = load ptr, ptr %3042, align 8, !tbaa !51
  %3044 = getelementptr inbounds %struct.bRotateLikeConstraint, ptr %3043, i64 0, i32 1
  %3045 = load i32, ptr %3044, align 8, !tbaa !541
  %3046 = icmp eq i32 %3045, 0
  br i1 %3046, label %3047, label %3048

3047:                                             ; preds = %3041
  store i32 7, ptr %3044, align 8, !tbaa !541
  br label %3048

3048:                                             ; preds = %3041, %3047, %3032, %3039, %3028, %3030, %3016
  %3049 = load ptr, ptr %3017, align 8, !tbaa !34
  %3050 = icmp eq ptr %3049, null
  br i1 %3050, label %3008, label %3016, !llvm.loop !545

3051:                                             ; preds = %3008, %3005, %3001, %2997
  %3052 = getelementptr inbounds %struct.Object, ptr %2967, i64 0, i32 26
  %3053 = load ptr, ptr %3052, align 8, !tbaa !34
  %3054 = icmp eq ptr %3053, null
  br i1 %3054, label %2963, label %3055

3055:                                             ; preds = %3051
  %3056 = getelementptr inbounds %struct.Object, ptr %2967, i64 0, i32 57
  br label %3057

3057:                                             ; preds = %3055, %3069
  %3058 = phi ptr [ %3053, %3055 ], [ %3070, %3069 ]
  %3059 = getelementptr inbounds %struct.ModifierData, ptr %3058, i64 0, i32 2
  %3060 = load i32, ptr %3059, align 8, !tbaa !436
  %3061 = icmp eq i32 %3060, 3
  br i1 %3061, label %3062, label %3069

3062:                                             ; preds = %3057
  %3063 = getelementptr inbounds %struct.CurveModifierData, ptr %3058, i64 0, i32 3
  %3064 = load i16, ptr %3063, align 8, !tbaa !546
  %3065 = icmp eq i16 %3064, 0
  br i1 %3065, label %3066, label %3069

3066:                                             ; preds = %3062
  %3067 = load i16, ptr %3056, align 4, !tbaa !55
  %3068 = add i16 %3067, 1
  store i16 %3068, ptr %3063, align 8, !tbaa !546
  br label %3069

3069:                                             ; preds = %3062, %3066, %3057
  %3070 = load ptr, ptr %3058, align 8, !tbaa !34
  %3071 = icmp eq ptr %3070, null
  br i1 %3071, label %2963, label %3057, !llvm.loop !548

3072:                                             ; preds = %2963, %2959
  %3073 = getelementptr inbounds %struct.Main, ptr %2, i64 0, i32 17
  %3074 = load ptr, ptr %3073, align 8, !tbaa !34
  %3075 = icmp eq ptr %3074, null
  br i1 %3075, label %3090, label %3076

3076:                                             ; preds = %3072, %3087
  %3077 = phi ptr [ %3088, %3087 ], [ %3074, %3072 ]
  %3078 = getelementptr inbounds %struct.Material, ptr %3077, i64 0, i32 72
  %3079 = load float, ptr %3078, align 4, !tbaa !549
  %3080 = fcmp oeq float %3079, 0.000000e+00
  br i1 %3080, label %3081, label %3082

3081:                                             ; preds = %3076
  store float 1.000000e+00, ptr %3078, align 4, !tbaa !549
  br label %3082

3082:                                             ; preds = %3081, %3076
  %3083 = getelementptr inbounds %struct.Material, ptr %3077, i64 0, i32 103
  %3084 = load ptr, ptr %3083, align 8, !tbaa !550
  %3085 = icmp eq ptr %3084, null
  br i1 %3085, label %3087, label %3086

3086:                                             ; preds = %3082
  call fastcc void @ntree_version_242(ptr noundef nonnull %3084) #16
  br label %3087

3087:                                             ; preds = %3082, %3086
  %3088 = load ptr, ptr %3077, align 8, !tbaa !34
  %3089 = icmp eq ptr %3088, null
  br i1 %3089, label %3090, label %3076, !llvm.loop !551

3090:                                             ; preds = %3087, %3072
  %3091 = getelementptr inbounds %struct.Main, ptr %2, i64 0, i32 14
  %3092 = load ptr, ptr %3091, align 8, !tbaa !34
  %3093 = icmp eq ptr %3092, null
  br i1 %3093, label %3098, label %3094

3094:                                             ; preds = %3090, %3094
  %3095 = phi ptr [ %3096, %3094 ], [ %3092, %3090 ]
  call fastcc void @customdata_version_242(ptr noundef nonnull %3095) #16
  %3096 = load ptr, ptr %3095, align 8, !tbaa !34
  %3097 = icmp eq ptr %3096, null
  br i1 %3097, label %3098, label %3094, !llvm.loop !552

3098:                                             ; preds = %3094, %3090
  %3099 = getelementptr inbounds %struct.Main, ptr %2, i64 0, i32 32
  %3100 = load ptr, ptr %3099, align 8, !tbaa !34
  %3101 = icmp eq ptr %3100, null
  br i1 %3101, label %3111, label %3102

3102:                                             ; preds = %3098, %3108
  %3103 = phi ptr [ %3109, %3108 ], [ %3100, %3098 ]
  %3104 = getelementptr inbounds %struct.Group, ptr %3103, i64 0, i32 2
  %3105 = load i32, ptr %3104, align 8, !tbaa !553
  %3106 = icmp eq i32 %3105, 0
  br i1 %3106, label %3107, label %3108

3107:                                             ; preds = %3102
  store i32 1048575, ptr %3104, align 8, !tbaa !553
  br label %3108

3108:                                             ; preds = %3102, %3107
  %3109 = load ptr, ptr %3103, align 8, !tbaa !34
  %3110 = icmp eq ptr %3109, null
  br i1 %3110, label %3111, label %3102, !llvm.loop !555

3111:                                             ; preds = %3108, %3098
  %3112 = getelementptr inbounds %struct.Main, ptr %2, i64 0, i32 4
  %3113 = load i16, ptr %3112, align 2, !tbaa !556
  %3114 = icmp slt i16 %3113, 3
  br i1 %3114, label %3115, label %3261

3115:                                             ; preds = %3111
  %3116 = getelementptr inbounds %struct.Main, ptr %2, i64 0, i32 19
  %3117 = load ptr, ptr %3116, align 8, !tbaa !34
  %3118 = icmp eq ptr %3117, null
  br i1 %3118, label %3137, label %3119

3119:                                             ; preds = %3115, %3134
  %3120 = phi ptr [ %3135, %3134 ], [ %3117, %3115 ]
  %3121 = getelementptr inbounds %struct.Image, ptr %3120, i64 0, i32 11
  store i16 1, ptr %3121, align 8, !tbaa !557
  %3122 = getelementptr inbounds %struct.Image, ptr %3120, i64 0, i32 12
  store i16 0, ptr %3122, align 2, !tbaa !558
  %3123 = getelementptr inbounds %struct.Image, ptr %3120, i64 0, i32 28
  store i32 256, ptr %3123, align 4, !tbaa !559
  %3124 = getelementptr inbounds %struct.Image, ptr %3120, i64 0, i32 29
  store i32 256, ptr %3124, align 8, !tbaa !560
  %3125 = getelementptr inbounds %struct.Image, ptr %3120, i64 0, i32 30
  store i8 1, ptr %3125, align 4, !tbaa !561
  %3126 = getelementptr inbounds %struct.ID, ptr %3120, i64 0, i32 4, i64 2
  %3127 = call i32 @strncmp(ptr noundef nonnull dereferenceable(1) %3126, ptr noundef nonnull dereferenceable(12) @.str.10, i64 noundef 64) #17
  %3128 = icmp eq i32 %3127, 0
  br i1 %3128, label %3129, label %3130

3129:                                             ; preds = %3119
  store i16 5, ptr %3121, align 8, !tbaa !557
  store i16 5, ptr %3122, align 2, !tbaa !558
  br label %3130

3130:                                             ; preds = %3129, %3119
  %3131 = call i32 @strncmp(ptr noundef nonnull dereferenceable(1) %3126, ptr noundef nonnull dereferenceable(14) @.str.11, i64 noundef 64) #17
  %3132 = icmp eq i32 %3131, 0
  br i1 %3132, label %3133, label %3134

3133:                                             ; preds = %3130
  store i16 5, ptr %3121, align 8, !tbaa !557
  store i16 4, ptr %3122, align 2, !tbaa !558
  br label %3134

3134:                                             ; preds = %3130, %3133
  %3135 = load ptr, ptr %3120, align 8, !tbaa !34
  %3136 = icmp eq ptr %3135, null
  br i1 %3136, label %3137, label %3119, !llvm.loop !562

3137:                                             ; preds = %3134, %3115
  %3138 = getelementptr inbounds %struct.Main, ptr %2, i64 0, i32 18
  %3139 = load ptr, ptr %3138, align 8, !tbaa !34
  %3140 = icmp eq ptr %3139, null
  br i1 %3140, label %3141, label %3144

3141:                                             ; preds = %3175, %3137
  %3142 = load ptr, ptr %2865, align 8, !tbaa !34
  %3143 = icmp eq ptr %3142, null
  br i1 %3143, label %3194, label %3197

3144:                                             ; preds = %3137, %3175
  %3145 = phi ptr [ %3192, %3175 ], [ %3139, %3137 ]
  %3146 = getelementptr inbounds %struct.Tex, ptr %3145, i64 0, i32 32
  %3147 = load i16, ptr %3146, align 8, !tbaa !510
  %3148 = icmp eq i16 %3147, 8
  br i1 %3148, label %3149, label %3175

3149:                                             ; preds = %3144
  %3150 = getelementptr inbounds %struct.Tex, ptr %3145, i64 0, i32 54
  %3151 = load ptr, ptr %3150, align 8, !tbaa !563
  %3152 = icmp eq ptr %3151, null
  br i1 %3152, label %3175, label %3153

3153:                                             ; preds = %3149
  %3154 = call ptr @blo_do_versions_newlibadr(ptr noundef %0, ptr noundef %1, ptr noundef nonnull %3151) #15
  %3155 = getelementptr inbounds %struct.Tex, ptr %3145, i64 0, i32 30
  %3156 = load i16, ptr %3155, align 4, !tbaa !564
  %3157 = and i16 %3156, 128
  %3158 = icmp eq i16 %3157, 0
  br i1 %3158, label %3161, label %3159

3159:                                             ; preds = %3153
  %3160 = getelementptr inbounds %struct.Image, ptr %3154, i64 0, i32 11
  store i16 3, ptr %3160, align 8, !tbaa !557
  br label %3161

3161:                                             ; preds = %3159, %3153
  %3162 = and i16 %3156, 8
  %3163 = icmp eq i16 %3162, 0
  br i1 %3163, label %3168, label %3164

3164:                                             ; preds = %3161
  %3165 = getelementptr inbounds %struct.Image, ptr %3154, i64 0, i32 10
  %3166 = load i16, ptr %3165, align 2, !tbaa !565
  %3167 = or i16 %3166, 1
  store i16 %3167, ptr %3165, align 2, !tbaa !565
  br label %3168

3168:                                             ; preds = %3164, %3161
  %3169 = and i16 %3156, 1024
  %3170 = icmp eq i16 %3169, 0
  br i1 %3170, label %3175, label %3171

3171:                                             ; preds = %3168
  %3172 = getelementptr inbounds %struct.Image, ptr %3154, i64 0, i32 10
  %3173 = load i16, ptr %3172, align 2, !tbaa !565
  %3174 = or i16 %3173, 2
  store i16 %3174, ptr %3172, align 2, !tbaa !565
  br label %3175

3175:                                             ; preds = %3168, %3171, %3149, %3144
  %3176 = getelementptr inbounds %struct.Tex, ptr %3145, i64 0, i32 45
  %3177 = getelementptr inbounds %struct.Tex, ptr %3145, i64 0, i32 51, i32 2
  %3178 = getelementptr inbounds %struct.Tex, ptr %3145, i64 0, i32 43
  %3179 = load i16, ptr %3178, align 2, !tbaa !566
  %3180 = trunc i16 %3179 to i8
  %3181 = getelementptr inbounds %struct.Tex, ptr %3145, i64 0, i32 51, i32 5
  store i8 %3180, ptr %3181, align 8, !tbaa !567
  %3182 = load <2 x i32>, ptr %3176, align 8, !tbaa !102
  store <2 x i32> %3182, ptr %3177, align 4, !tbaa !102
  %3183 = getelementptr inbounds %struct.Tex, ptr %3145, i64 0, i32 47
  %3184 = load i32, ptr %3183, align 8, !tbaa !568
  %3185 = getelementptr inbounds %struct.Tex, ptr %3145, i64 0, i32 51, i32 4
  store i32 %3184, ptr %3185, align 4, !tbaa !569
  %3186 = getelementptr inbounds %struct.Tex, ptr %3145, i64 0, i32 30
  %3187 = load i16, ptr %3186, align 4, !tbaa !564
  %3188 = trunc i16 %3187 to i8
  %3189 = lshr i8 %3188, 6
  %3190 = and i8 %3189, 1
  %3191 = getelementptr inbounds %struct.Tex, ptr %3145, i64 0, i32 51, i32 6
  store i8 %3190, ptr %3191, align 1, !tbaa !570
  %3192 = load ptr, ptr %3145, align 8, !tbaa !34
  %3193 = icmp eq ptr %3192, null
  br i1 %3193, label %3141, label %3144, !llvm.loop !571

3194:                                             ; preds = %3203, %3141
  %3195 = load ptr, ptr %2895, align 8, !tbaa !34
  %3196 = icmp eq ptr %3195, null
  br i1 %3196, label %3206, label %3209

3197:                                             ; preds = %3141, %3203
  %3198 = phi ptr [ %3204, %3203 ], [ %3142, %3141 ]
  %3199 = getelementptr inbounds %struct.Scene, ptr %3198, i64 0, i32 18
  %3200 = load ptr, ptr %3199, align 8, !tbaa !491
  %3201 = icmp eq ptr %3200, null
  br i1 %3201, label %3203, label %3202

3202:                                             ; preds = %3197
  call fastcc void @do_version_ntree_242_2(ptr noundef nonnull %3200) #16
  br label %3203

3203:                                             ; preds = %3197, %3202
  %3204 = load ptr, ptr %3198, align 8, !tbaa !34
  %3205 = icmp eq ptr %3204, null
  br i1 %3205, label %3194, label %3197, !llvm.loop !572

3206:                                             ; preds = %3209, %3194
  %3207 = load ptr, ptr %3073, align 8, !tbaa !34
  %3208 = icmp eq ptr %3207, null
  br i1 %3208, label %3213, label %3216

3209:                                             ; preds = %3194, %3209
  %3210 = phi ptr [ %3211, %3209 ], [ %3195, %3194 ]
  call fastcc void @do_version_ntree_242_2(ptr noundef nonnull %3210) #16
  %3211 = load ptr, ptr %3210, align 8, !tbaa !34
  %3212 = icmp eq ptr %3211, null
  br i1 %3212, label %3206, label %3209, !llvm.loop !573

3213:                                             ; preds = %3222, %3206
  %3214 = load ptr, ptr %2832, align 8, !tbaa !34
  %3215 = icmp eq ptr %3214, null
  br i1 %3215, label %3259, label %3228

3216:                                             ; preds = %3206, %3222
  %3217 = phi ptr [ %3223, %3222 ], [ %3207, %3206 ]
  %3218 = getelementptr inbounds %struct.Material, ptr %3217, i64 0, i32 103
  %3219 = load ptr, ptr %3218, align 8, !tbaa !550
  %3220 = icmp eq ptr %3219, null
  br i1 %3220, label %3222, label %3221

3221:                                             ; preds = %3216
  call fastcc void @do_version_ntree_242_2(ptr noundef nonnull %3219) #16
  br label %3222

3222:                                             ; preds = %3216, %3221
  %3223 = load ptr, ptr %3217, align 8, !tbaa !34
  %3224 = icmp eq ptr %3223, null
  br i1 %3224, label %3213, label %3216, !llvm.loop !574

3225:                                             ; preds = %3233, %3228
  %3226 = load ptr, ptr %3229, align 8, !tbaa !34
  %3227 = icmp eq ptr %3226, null
  br i1 %3227, label %3259, label %3228, !llvm.loop !575

3228:                                             ; preds = %3213, %3225
  %3229 = phi ptr [ %3226, %3225 ], [ %3214, %3213 ]
  %3230 = getelementptr inbounds %struct.bScreen, ptr %3229, i64 0, i32 3
  %3231 = load ptr, ptr %3230, align 8, !tbaa !34
  %3232 = icmp eq ptr %3231, null
  br i1 %3232, label %3225, label %3236

3233:                                             ; preds = %3256, %3236
  %3234 = load ptr, ptr %3237, align 8, !tbaa !34
  %3235 = icmp eq ptr %3234, null
  br i1 %3235, label %3225, label %3236, !llvm.loop !576

3236:                                             ; preds = %3228, %3233
  %3237 = phi ptr [ %3234, %3233 ], [ %3231, %3228 ]
  %3238 = getelementptr inbounds %struct.ScrArea, ptr %3237, i64 0, i32 19
  %3239 = load ptr, ptr %3238, align 8, !tbaa !34
  %3240 = icmp eq ptr %3239, null
  br i1 %3240, label %3233, label %3241

3241:                                             ; preds = %3236, %3256
  %3242 = phi ptr [ %3257, %3256 ], [ %3239, %3236 ]
  %3243 = getelementptr inbounds %struct.SpaceLink, ptr %3242, i64 0, i32 3
  %3244 = load i32, ptr %3243, align 8, !tbaa !114
  switch i32 %3244, label %3256 [
    i32 6, label %3245
    i32 1, label %3247
  ]

3245:                                             ; preds = %3241
  %3246 = getelementptr inbounds %struct.SpaceImage, ptr %3242, i64 0, i32 6, i32 5
  store i8 2, ptr %3246, align 8, !tbaa !577
  br label %3256

3247:                                             ; preds = %3241
  %3248 = getelementptr inbounds %struct.View3D, ptr %3242, i64 0, i32 18
  %3249 = load ptr, ptr %3248, align 8, !tbaa !34
  %3250 = icmp eq ptr %3249, null
  br i1 %3250, label %3256, label %3251

3251:                                             ; preds = %3247, %3251
  %3252 = phi ptr [ %3254, %3251 ], [ %3249, %3247 ]
  %3253 = getelementptr inbounds %struct.BGpic, ptr %3252, i64 0, i32 3, i32 5
  store i8 2, ptr %3253, align 8, !tbaa !582
  %3254 = load ptr, ptr %3252, align 8, !tbaa !34
  %3255 = icmp eq ptr %3254, null
  br i1 %3255, label %3256, label %3251, !llvm.loop !585

3256:                                             ; preds = %3251, %3247, %3241, %3245
  %3257 = load ptr, ptr %3242, align 8, !tbaa !34
  %3258 = icmp eq ptr %3257, null
  br i1 %3258, label %3233, label %3241, !llvm.loop !586

3259:                                             ; preds = %3225, %3213
  %3260 = load i16, ptr %3112, align 2, !tbaa !556
  br label %3261

3261:                                             ; preds = %3259, %3111
  %3262 = phi i16 [ %3260, %3259 ], [ %3113, %3111 ]
  %3263 = icmp slt i16 %3262, 4
  br i1 %3263, label %3264, label %3272

3264:                                             ; preds = %3261
  %3265 = load ptr, ptr %2865, align 8, !tbaa !34
  %3266 = icmp eq ptr %3265, null
  br i1 %3266, label %3272, label %3267

3267:                                             ; preds = %3264, %3267
  %3268 = phi ptr [ %3270, %3267 ], [ %3265, %3264 ]
  %3269 = getelementptr inbounds %struct.Scene, ptr %3268, i64 0, i32 22, i32 72
  store <4 x i16> <i16 5, i16 16, i16 1, i16 1>, ptr %3269, align 8, !tbaa !405
  %3270 = load ptr, ptr %3268, align 8, !tbaa !34
  %3271 = icmp eq ptr %3270, null
  br i1 %3271, label %3272, label %3267, !llvm.loop !587

3272:                                             ; preds = %3267, %3264, %3261, %2828
  %3273 = load i16, ptr %7, align 8, !tbaa !59
  %3274 = icmp slt i16 %3273, 244
  br i1 %3274, label %3275, label %3392

3275:                                             ; preds = %3272
  %3276 = getelementptr inbounds %struct.Main, ptr %2, i64 0, i32 13
  %3277 = load ptr, ptr %3276, align 8, !tbaa !152
  %3278 = getelementptr inbounds %struct.Main, ptr %2, i64 0, i32 17
  %3279 = load ptr, ptr %3278, align 8, !tbaa !34
  %3280 = icmp eq ptr %3279, null
  br i1 %3280, label %3281, label %3285

3281:                                             ; preds = %3321, %3275
  %3282 = icmp eq ptr %3277, null
  br i1 %3282, label %3375, label %3283

3283:                                             ; preds = %3281
  %3284 = getelementptr inbounds %struct.Main, ptr %2, i64 0, i32 4
  br label %3324

3285:                                             ; preds = %3275, %3321
  %3286 = phi ptr [ %3322, %3321 ], [ %3279, %3275 ]
  %3287 = getelementptr inbounds %struct.Material, ptr %3286, i64 0, i32 117
  %3288 = load float, ptr %3287, align 4, !tbaa !588
  %3289 = fcmp oeq float %3288, 0.000000e+00
  br i1 %3289, label %3290, label %3295

3290:                                             ; preds = %3285
  %3291 = getelementptr inbounds %struct.Material, ptr %3286, i64 0, i32 114
  store <4 x float> <float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float 0x3FE99999A0000000>, ptr %3291, align 8, !tbaa !120
  %3292 = getelementptr inbounds %struct.Material, ptr %3286, i64 0, i32 115, i64 1
  store <4 x float> <float 0x3FE99999A0000000, float 0x3FE99999A0000000, float 0x3FA99999A0000000, float 0x3FB99999A0000000>, ptr %3292, align 4, !tbaa !120
  %3293 = getelementptr inbounds %struct.Material, ptr %3286, i64 0, i32 118
  store <2 x float> <float 0x3FF4CCCCC0000000, float 1.000000e+00>, ptr %3293, align 8, !tbaa !120
  %3294 = getelementptr inbounds %struct.Material, ptr %3286, i64 0, i32 120
  store float 0.000000e+00, ptr %3294, align 8, !tbaa !589
  br label %3295

3295:                                             ; preds = %3290, %3285
  %3296 = getelementptr inbounds %struct.Material, ptr %3286, i64 0, i32 121
  %3297 = load float, ptr %3296, align 4, !tbaa !590
  %3298 = fcmp oeq float %3297, 0.000000e+00
  br i1 %3298, label %3299, label %3304

3299:                                             ; preds = %3295
  %3300 = getelementptr inbounds %struct.Material, ptr %3286, i64 0, i32 122
  %3301 = load float, ptr %3300, align 8, !tbaa !591
  %3302 = fcmp oeq float %3301, 0.000000e+00
  br i1 %3302, label %3303, label %3304

3303:                                             ; preds = %3299
  store <2 x float> <float 1.000000e+00, float 1.000000e+00>, ptr %3296, align 4, !tbaa !120
  br label %3304

3304:                                             ; preds = %3303, %3299, %3295
  %3305 = getelementptr inbounds %struct.Material, ptr %3286, i64 0, i32 115
  %3306 = load float, ptr %3305, align 4, !tbaa !120
  %3307 = fcmp oeq float %3306, 0.000000e+00
  br i1 %3307, label %3308, label %3321

3308:                                             ; preds = %3304
  %3309 = getelementptr inbounds %struct.Material, ptr %3286, i64 0, i32 115, i64 1
  %3310 = load float, ptr %3309, align 4, !tbaa !120
  %3311 = fcmp oeq float %3310, 0.000000e+00
  br i1 %3311, label %3312, label %3321

3312:                                             ; preds = %3308
  %3313 = getelementptr inbounds %struct.Material, ptr %3286, i64 0, i32 115, i64 2
  %3314 = load float, ptr %3313, align 4, !tbaa !120
  %3315 = fcmp oeq float %3314, 0.000000e+00
  br i1 %3315, label %3316, label %3321

3316:                                             ; preds = %3312
  %3317 = getelementptr inbounds %struct.Material, ptr %3286, i64 0, i32 4
  %3318 = load <2 x float>, ptr %3317, align 4, !tbaa !120
  store <2 x float> %3318, ptr %3305, align 4, !tbaa !120
  %3319 = getelementptr inbounds %struct.Material, ptr %3286, i64 0, i32 6
  %3320 = load float, ptr %3319, align 4, !tbaa !592
  store float %3320, ptr %3313, align 4, !tbaa !120
  br label %3321

3321:                                             ; preds = %3304, %3308, %3312, %3316
  %3322 = load ptr, ptr %3286, align 8, !tbaa !34
  %3323 = icmp eq ptr %3322, null
  br i1 %3323, label %3281, label %3285, !llvm.loop !593

3324:                                             ; preds = %3283, %3372
  %3325 = phi i16 [ %3273, %3283 ], [ %3342, %3372 ]
  %3326 = phi ptr [ %3277, %3283 ], [ %3373, %3372 ]
  %3327 = getelementptr inbounds %struct.Object, ptr %3326, i64 0, i32 25
  %3328 = load ptr, ptr %3327, align 8, !tbaa !34
  %3329 = icmp eq ptr %3328, null
  br i1 %3329, label %3341, label %3330

3330:                                             ; preds = %3324, %3336
  %3331 = phi ptr [ %3337, %3336 ], [ %3328, %3324 ]
  %3332 = getelementptr inbounds %struct.bDeformGroup, ptr %3331, i64 0, i32 2
  %3333 = load i8, ptr %3332, align 8, !tbaa !135
  %3334 = icmp eq i8 %3333, 0
  br i1 %3334, label %3335, label %3336

3335:                                             ; preds = %3330
  call void @defgroup_unique_name(ptr noundef nonnull %3331, ptr noundef nonnull %3326) #15
  br label %3336

3336:                                             ; preds = %3330, %3335
  %3337 = load ptr, ptr %3331, align 8, !tbaa !34
  %3338 = icmp eq ptr %3337, null
  br i1 %3338, label %3339, label %3330, !llvm.loop !594

3339:                                             ; preds = %3336
  %3340 = load i16, ptr %7, align 8, !tbaa !59
  br label %3341

3341:                                             ; preds = %3339, %3324
  %3342 = phi i16 [ %3340, %3339 ], [ %3325, %3324 ]
  %3343 = icmp slt i16 %3342, 243
  br i1 %3343, label %3347, label %3344

3344:                                             ; preds = %3341
  %3345 = load i16, ptr %3284, align 2, !tbaa !556
  %3346 = icmp slt i16 %3345, 1
  br i1 %3346, label %3347, label %3372

3347:                                             ; preds = %3344, %3341
  %3348 = getelementptr inbounds %struct.Object, ptr %3326, i64 0, i32 26
  %3349 = load ptr, ptr %3348, align 8, !tbaa !34
  %3350 = icmp eq ptr %3349, null
  br i1 %3350, label %3372, label %3351

3351:                                             ; preds = %3347, %3369
  %3352 = phi ptr [ %3370, %3369 ], [ %3349, %3347 ]
  %3353 = getelementptr inbounds %struct.ModifierData, ptr %3352, i64 0, i32 2
  %3354 = load i32, ptr %3353, align 8, !tbaa !436
  %3355 = icmp eq i32 %3354, 5
  br i1 %3355, label %3356, label %3369

3356:                                             ; preds = %3351
  %3357 = getelementptr inbounds %struct.MirrorModifierData, ptr %3352, i64 0, i32 1
  %3358 = load i16, ptr %3357, align 8, !tbaa !595
  %3359 = icmp ult i16 %3358, 3
  br i1 %3359, label %3360, label %3368

3360:                                             ; preds = %3356
  %3361 = shl nuw nsw i16 %3358, 4
  %3362 = zext nneg i16 %3361 to i48
  %3363 = lshr i48 137440002056, %3362
  %3364 = trunc i48 %3363 to i16
  %3365 = getelementptr inbounds %struct.MirrorModifierData, ptr %3352, i64 0, i32 2
  %3366 = load i16, ptr %3365, align 2, !tbaa !597
  %3367 = or i16 %3366, %3364
  store i16 %3367, ptr %3365, align 2, !tbaa !597
  br label %3368

3368:                                             ; preds = %3356, %3360
  store i16 0, ptr %3357, align 8, !tbaa !595
  br label %3369

3369:                                             ; preds = %3351, %3368
  %3370 = load ptr, ptr %3352, align 8, !tbaa !34
  %3371 = icmp eq ptr %3370, null
  br i1 %3371, label %3372, label %3351, !llvm.loop !598

3372:                                             ; preds = %3369, %3347, %3344
  %3373 = load ptr, ptr %3326, align 8, !tbaa !155
  %3374 = icmp eq ptr %3373, null
  br i1 %3374, label %3375, label %3324, !llvm.loop !599

3375:                                             ; preds = %3372, %3281
  %3376 = phi i16 [ %3273, %3281 ], [ %3342, %3372 ]
  %3377 = icmp slt i16 %3376, 244
  br i1 %3377, label %3382, label %3378

3378:                                             ; preds = %3375
  %3379 = getelementptr inbounds %struct.Main, ptr %2, i64 0, i32 4
  %3380 = load i16, ptr %3379, align 2, !tbaa !556
  %3381 = icmp slt i16 %3380, 2
  br i1 %3381, label %3382, label %3392

3382:                                             ; preds = %3378, %3375
  %3383 = getelementptr inbounds %struct.Main, ptr %2, i64 0, i32 14
  %3384 = load ptr, ptr %3383, align 8, !tbaa !34
  %3385 = icmp eq ptr %3384, null
  br i1 %3385, label %3392, label %3386

3386:                                             ; preds = %3382, %3386
  %3387 = phi ptr [ %3388, %3386 ], [ %3384, %3382 ]
  call fastcc void @customdata_version_243(ptr noundef nonnull %3387) #16
  %3388 = load ptr, ptr %3387, align 8, !tbaa !34
  %3389 = icmp eq ptr %3388, null
  br i1 %3389, label %3390, label %3386, !llvm.loop !600

3390:                                             ; preds = %3386
  %3391 = load i16, ptr %7, align 8, !tbaa !59
  br label %3392

3392:                                             ; preds = %3378, %3382, %3390, %3272
  %3393 = phi i16 [ %3273, %3272 ], [ %3391, %3390 ], [ %3376, %3382 ], [ %3376, %3378 ]
  %3394 = icmp slt i16 %3393, 245
  br i1 %3394, label %3395, label %3479

3395:                                             ; preds = %3392
  %3396 = icmp eq i16 %3393, 244
  br i1 %3396, label %3397, label %3401

3397:                                             ; preds = %3395
  %3398 = getelementptr inbounds %struct.Main, ptr %2, i64 0, i32 4
  %3399 = load i16, ptr %3398, align 2, !tbaa !556
  %3400 = icmp slt i16 %3399, 2
  br i1 %3400, label %3401, label %3447

3401:                                             ; preds = %3397, %3395
  %3402 = getelementptr inbounds %struct.Main, ptr %2, i64 0, i32 11
  %3403 = load ptr, ptr %3402, align 8, !tbaa !34
  %3404 = icmp eq ptr %3403, null
  br i1 %3404, label %3412, label %3405

3405:                                             ; preds = %3401, %3405
  %3406 = phi ptr [ %3410, %3405 ], [ %3403, %3401 ]
  %3407 = getelementptr inbounds %struct.Scene, ptr %3406, i64 0, i32 22, i32 47
  %3408 = load i32, ptr %3407, align 8, !tbaa !108
  %3409 = or i32 %3408, 2097152
  store i32 %3409, ptr %3407, align 8, !tbaa !108
  %3410 = load ptr, ptr %3406, align 8, !tbaa !34
  %3411 = icmp eq ptr %3410, null
  br i1 %3411, label %3412, label %3405, !llvm.loop !601

3412:                                             ; preds = %3405, %3401
  %3413 = getelementptr inbounds %struct.Main, ptr %2, i64 0, i32 26
  %3414 = load ptr, ptr %3413, align 8, !tbaa !34
  %3415 = icmp eq ptr %3414, null
  br i1 %3415, label %3443, label %3419

3416:                                             ; preds = %3424, %3419
  %3417 = load ptr, ptr %3420, align 8, !tbaa !34
  %3418 = icmp eq ptr %3417, null
  br i1 %3418, label %3443, label %3419, !llvm.loop !602

3419:                                             ; preds = %3412, %3416
  %3420 = phi ptr [ %3417, %3416 ], [ %3414, %3412 ]
  %3421 = getelementptr inbounds %struct.bScreen, ptr %3420, i64 0, i32 3
  %3422 = load ptr, ptr %3421, align 8, !tbaa !34
  %3423 = icmp eq ptr %3422, null
  br i1 %3423, label %3416, label %3427

3424:                                             ; preds = %3440, %3427
  %3425 = load ptr, ptr %3428, align 8, !tbaa !34
  %3426 = icmp eq ptr %3425, null
  br i1 %3426, label %3416, label %3427, !llvm.loop !603

3427:                                             ; preds = %3419, %3424
  %3428 = phi ptr [ %3425, %3424 ], [ %3422, %3419 ]
  %3429 = getelementptr inbounds %struct.ScrArea, ptr %3428, i64 0, i32 19
  %3430 = load ptr, ptr %3429, align 8, !tbaa !34
  %3431 = icmp eq ptr %3430, null
  br i1 %3431, label %3424, label %3432

3432:                                             ; preds = %3427, %3440
  %3433 = phi ptr [ %3441, %3440 ], [ %3430, %3427 ]
  %3434 = getelementptr inbounds %struct.SpaceLink, ptr %3433, i64 0, i32 3
  %3435 = load i32, ptr %3434, align 8, !tbaa !114
  %3436 = icmp eq i32 %3435, 12
  br i1 %3436, label %3437, label %3440

3437:                                             ; preds = %3432
  %3438 = getelementptr inbounds %struct.SpaceAction, ptr %3433, i64 0, i32 6, i32 0, i32 2
  store <2 x float> <float -1.000000e+03, float 0.000000e+00>, ptr %3438, align 8, !tbaa !120
  %3439 = getelementptr inbounds %struct.SpaceAction, ptr %3433, i64 0, i32 6, i32 1, i32 2
  store <2 x float> <float -7.500000e+01, float 5.000000e+00>, ptr %3439, align 8, !tbaa !120
  br label %3440

3440:                                             ; preds = %3432, %3437
  %3441 = load ptr, ptr %3433, align 8, !tbaa !34
  %3442 = icmp eq ptr %3441, null
  br i1 %3442, label %3424, label %3432, !llvm.loop !604

3443:                                             ; preds = %3416, %3412
  br i1 %3396, label %3444, label %3450

3444:                                             ; preds = %3443
  %3445 = getelementptr inbounds %struct.Main, ptr %2, i64 0, i32 4
  %3446 = load i16, ptr %3445, align 2, !tbaa !556
  br label %3447

3447:                                             ; preds = %3444, %3397
  %3448 = phi i16 [ %3446, %3444 ], [ %3399, %3397 ]
  %3449 = icmp slt i16 %3448, 3
  br i1 %3449, label %3450, label %3486

3450:                                             ; preds = %3447, %3443
  %3451 = getelementptr inbounds %struct.Main, ptr %2, i64 0, i32 25
  %3452 = load ptr, ptr %3451, align 8, !tbaa !34
  %3453 = icmp eq ptr %3452, null
  br i1 %3453, label %3465, label %3454

3454:                                             ; preds = %3450, %3454
  %3455 = phi ptr [ %3463, %3454 ], [ %3452, %3450 ]
  %3456 = getelementptr inbounds %struct.World, ptr %3455, i64 0, i32 23
  %3457 = load i16, ptr %3456, align 2, !tbaa !605
  %3458 = lshr i16 %3457, 5
  %3459 = and i16 %3458, 2
  %3460 = xor i16 %3459, 2
  %3461 = getelementptr inbounds %struct.World, ptr %3455, i64 0, i32 63
  store i16 %3460, ptr %3461, align 8
  %3462 = getelementptr inbounds %struct.World, ptr %3455, i64 0, i32 54
  store float 0x3F747AE140000000, ptr %3462, align 8, !tbaa !606
  %3463 = load ptr, ptr %3455, align 8, !tbaa !34
  %3464 = icmp eq ptr %3463, null
  br i1 %3464, label %3465, label %3454, !llvm.loop !607

3465:                                             ; preds = %3454, %3450
  %3466 = getelementptr inbounds %struct.Main, ptr %2, i64 0, i32 21
  %3467 = load ptr, ptr %3466, align 8, !tbaa !34
  %3468 = icmp eq ptr %3467, null
  br i1 %3468, label %3479, label %3469

3469:                                             ; preds = %3465, %3469
  %3470 = phi ptr [ %3477, %3469 ], [ %3467, %3465 ]
  %3471 = getelementptr inbounds %struct.Lamp, ptr %3470, i64 0, i32 2
  %3472 = load i16, ptr %3471, align 8, !tbaa !608
  %3473 = icmp ne i16 %3472, 4
  %3474 = zext i1 %3473 to i16
  %3475 = getelementptr inbounds %struct.Lamp, ptr %3470, i64 0, i32 47
  store i16 %3474, ptr %3475, align 4
  %3476 = getelementptr inbounds %struct.Lamp, ptr %3470, i64 0, i32 46
  store float 0x3F50624DE0000000, ptr %3476, align 8, !tbaa !609
  %3477 = load ptr, ptr %3470, align 8, !tbaa !34
  %3478 = icmp eq ptr %3477, null
  br i1 %3478, label %3479, label %3469, !llvm.loop !610

3479:                                             ; preds = %3469, %3465, %3392
  %3480 = icmp slt i16 %3393, 246
  br i1 %3480, label %3481, label %3852

3481:                                             ; preds = %3479
  %3482 = icmp eq i16 %3393, 244
  br i1 %3482, label %3483, label %3489

3483:                                             ; preds = %3481
  %3484 = getelementptr inbounds %struct.Main, ptr %2, i64 0, i32 4
  %3485 = load i16, ptr %3484, align 2, !tbaa !556
  br label %3486

3486:                                             ; preds = %3483, %3447
  %3487 = phi i16 [ %3485, %3483 ], [ %3448, %3447 ]
  %3488 = icmp eq i16 %3487, 3
  br i1 %3488, label %3575, label %3494

3489:                                             ; preds = %3481
  br i1 %3394, label %3494, label %3490

3490:                                             ; preds = %3489
  %3491 = getelementptr inbounds %struct.Main, ptr %2, i64 0, i32 4
  %3492 = load i16, ptr %3491, align 2, !tbaa !556
  %3493 = icmp eq i16 %3492, 0
  br i1 %3493, label %3494, label %3575

3494:                                             ; preds = %3486, %3490, %3489
  %3495 = getelementptr inbounds %struct.Main, ptr %2, i64 0, i32 13
  %3496 = load ptr, ptr %3495, align 8, !tbaa !34
  %3497 = icmp eq ptr %3496, null
  br i1 %3497, label %3575, label %3498

3498:                                             ; preds = %3494, %3572
  %3499 = phi ptr [ %3573, %3572 ], [ %3496, %3494 ]
  %3500 = getelementptr inbounds %struct.Object, ptr %3499, i64 0, i32 106
  %3501 = load ptr, ptr %3500, align 8, !tbaa !34
  %3502 = icmp eq ptr %3501, null
  br i1 %3502, label %3527, label %3503

3503:                                             ; preds = %3498, %3524
  %3504 = phi ptr [ %3525, %3524 ], [ %3501, %3498 ]
  %3505 = getelementptr inbounds %struct.bConstraint, ptr %3504, i64 0, i32 4
  %3506 = load i16, ptr %3505, align 2, !tbaa !611
  %3507 = and i16 %3506, 32
  %3508 = icmp eq i16 %3507, 0
  br i1 %3508, label %3512, label %3509

3509:                                             ; preds = %3503
  %3510 = getelementptr inbounds %struct.bConstraint, ptr %3504, i64 0, i32 5
  store i8 1, ptr %3510, align 4, !tbaa !612
  %3511 = getelementptr inbounds %struct.bConstraint, ptr %3504, i64 0, i32 6
  store i8 1, ptr %3511, align 1, !tbaa !613
  br label %3512

3512:                                             ; preds = %3509, %3503
  %3513 = getelementptr inbounds %struct.bConstraint, ptr %3504, i64 0, i32 3
  %3514 = load i16, ptr %3513, align 8, !tbaa !265
  %3515 = icmp eq i16 %3514, 6
  br i1 %3515, label %3516, label %3524

3516:                                             ; preds = %3512
  %3517 = getelementptr inbounds %struct.bConstraint, ptr %3504, i64 0, i32 2
  %3518 = load ptr, ptr %3517, align 8, !tbaa !51
  %3519 = getelementptr inbounds %struct.bLocLimitConstraint, ptr %3518, i64 0, i32 7
  %3520 = load i16, ptr %3519, align 2, !tbaa !614
  %3521 = icmp eq i16 %3520, 0
  br i1 %3521, label %3524, label %3522

3522:                                             ; preds = %3516
  %3523 = getelementptr inbounds %struct.bConstraint, ptr %3504, i64 0, i32 5
  store i8 1, ptr %3523, align 4, !tbaa !612
  br label %3524

3524:                                             ; preds = %3516, %3522, %3512
  %3525 = load ptr, ptr %3504, align 8, !tbaa !34
  %3526 = icmp eq ptr %3525, null
  br i1 %3526, label %3527, label %3503, !llvm.loop !616

3527:                                             ; preds = %3524, %3498
  %3528 = getelementptr inbounds %struct.Object, ptr %3499, i64 0, i32 49
  call void @unit_m4(ptr noundef nonnull %3528) #15
  %3529 = getelementptr inbounds %struct.Object, ptr %3499, i64 0, i32 3
  %3530 = load i16, ptr %3529, align 8, !tbaa !267
  %3531 = icmp eq i16 %3530, 25
  br i1 %3531, label %3532, label %3572

3532:                                             ; preds = %3527
  %3533 = getelementptr inbounds %struct.Object, ptr %3499, i64 0, i32 18
  %3534 = load ptr, ptr %3533, align 8, !tbaa !268
  %3535 = icmp eq ptr %3534, null
  br i1 %3535, label %3572, label %3536

3536:                                             ; preds = %3532
  %3537 = load ptr, ptr %3534, align 8, !tbaa !34
  %3538 = icmp eq ptr %3537, null
  br i1 %3538, label %3572, label %3539

3539:                                             ; preds = %3536, %3568
  %3540 = phi ptr [ %3570, %3568 ], [ %3537, %3536 ]
  %3541 = getelementptr inbounds %struct.bPoseChannel, ptr %3540, i64 0, i32 3
  %3542 = load ptr, ptr %3541, align 8, !tbaa !34
  %3543 = icmp eq ptr %3542, null
  br i1 %3543, label %3568, label %3544

3544:                                             ; preds = %3539, %3565
  %3545 = phi ptr [ %3566, %3565 ], [ %3542, %3539 ]
  %3546 = getelementptr inbounds %struct.bConstraint, ptr %3545, i64 0, i32 4
  %3547 = load i16, ptr %3546, align 2, !tbaa !611
  %3548 = and i16 %3547, 32
  %3549 = icmp eq i16 %3548, 0
  br i1 %3549, label %3553, label %3550

3550:                                             ; preds = %3544
  %3551 = getelementptr inbounds %struct.bConstraint, ptr %3545, i64 0, i32 5
  store i8 1, ptr %3551, align 4, !tbaa !612
  %3552 = getelementptr inbounds %struct.bConstraint, ptr %3545, i64 0, i32 6
  store i8 1, ptr %3552, align 1, !tbaa !613
  br label %3553

3553:                                             ; preds = %3550, %3544
  %3554 = getelementptr inbounds %struct.bConstraint, ptr %3545, i64 0, i32 3
  %3555 = load i16, ptr %3554, align 8, !tbaa !265
  %3556 = icmp eq i16 %3555, 12
  br i1 %3556, label %3557, label %3565

3557:                                             ; preds = %3553
  %3558 = getelementptr inbounds %struct.bConstraint, ptr %3545, i64 0, i32 2
  %3559 = load ptr, ptr %3558, align 8, !tbaa !51
  %3560 = getelementptr inbounds %struct.bActionConstraint, ptr %3559, i64 0, i32 2
  %3561 = load i16, ptr %3560, align 2, !tbaa !617
  %3562 = icmp eq i16 %3561, 0
  br i1 %3562, label %3565, label %3563

3563:                                             ; preds = %3557
  %3564 = getelementptr inbounds %struct.bConstraint, ptr %3545, i64 0, i32 6
  store i8 1, ptr %3564, align 1, !tbaa !613
  br label %3565

3565:                                             ; preds = %3557, %3563, %3553
  %3566 = load ptr, ptr %3545, align 8, !tbaa !34
  %3567 = icmp eq ptr %3566, null
  br i1 %3567, label %3568, label %3544, !llvm.loop !619

3568:                                             ; preds = %3565, %3539
  %3569 = getelementptr inbounds %struct.bPoseChannel, ptr %3540, i64 0, i32 30
  call void @unit_m4(ptr noundef nonnull %3569) #15
  %3570 = load ptr, ptr %3540, align 8, !tbaa !34
  %3571 = icmp eq ptr %3570, null
  br i1 %3571, label %3572, label %3539, !llvm.loop !620

3572:                                             ; preds = %3568, %3536, %3532, %3527
  %3573 = load ptr, ptr %3499, align 8, !tbaa !34
  %3574 = icmp eq ptr %3573, null
  br i1 %3574, label %3575, label %3498, !llvm.loop !621

3575:                                             ; preds = %3572, %3494, %3490, %3486
  %3576 = load i16, ptr %7, align 8, !tbaa !59
  %3577 = icmp eq i16 %3576, 245
  br i1 %3577, label %3587, label %3578

3578:                                             ; preds = %3575
  %3579 = getelementptr inbounds %struct.Main, ptr %2, i64 0, i32 19
  %3580 = load ptr, ptr %3579, align 8, !tbaa !34
  %3581 = icmp eq ptr %3580, null
  br i1 %3581, label %3587, label %3582

3582:                                             ; preds = %3578, %3582
  %3583 = phi ptr [ %3585, %3582 ], [ %3580, %3578 ]
  %3584 = getelementptr inbounds %struct.Image, ptr %3583, i64 0, i32 23
  store ptr null, ptr %3584, align 8, !tbaa !622
  %3585 = load ptr, ptr %3583, align 8, !tbaa !34
  %3586 = icmp eq ptr %3585, null
  br i1 %3586, label %3587, label %3582, !llvm.loop !623

3587:                                             ; preds = %3582, %3578, %3575
  %3588 = getelementptr inbounds %struct.Main, ptr %2, i64 0, i32 13
  %3589 = load ptr, ptr %3588, align 8, !tbaa !34
  %3590 = icmp eq ptr %3589, null
  br i1 %3590, label %3654, label %3594

3591:                                             ; preds = %3651, %3634
  %3592 = load ptr, ptr %3595, align 8, !tbaa !34
  %3593 = icmp eq ptr %3592, null
  br i1 %3593, label %3654, label %3594, !llvm.loop !624

3594:                                             ; preds = %3587, %3591
  %3595 = phi ptr [ %3592, %3591 ], [ %3589, %3587 ]
  %3596 = getelementptr inbounds %struct.Object, ptr %3595, i64 0, i32 111
  %3597 = load ptr, ptr %3596, align 8, !tbaa !384
  %3598 = icmp eq ptr %3597, null
  br i1 %3598, label %3608, label %3599

3599:                                             ; preds = %3594
  %3600 = getelementptr inbounds %struct.SoftBody, ptr %3597, i64 0, i32 47
  %3601 = load ptr, ptr %3600, align 8, !tbaa !625
  %3602 = icmp eq ptr %3601, null
  br i1 %3602, label %3603, label %3608

3603:                                             ; preds = %3599
  %3604 = getelementptr inbounds %struct.SoftBody, ptr %3597, i64 0, i32 48
  %3605 = call ptr @BKE_ptcache_add(ptr noundef nonnull %3604) #15
  %3606 = load ptr, ptr %3596, align 8, !tbaa !384
  %3607 = getelementptr inbounds %struct.SoftBody, ptr %3606, i64 0, i32 47
  store ptr %3605, ptr %3607, align 8, !tbaa !625
  br label %3608

3608:                                             ; preds = %3603, %3599, %3594
  %3609 = getelementptr inbounds %struct.Object, ptr %3595, i64 0, i32 109
  %3610 = load ptr, ptr %3609, align 8, !tbaa !34
  %3611 = icmp eq ptr %3610, null
  br i1 %3611, label %3634, label %3612

3612:                                             ; preds = %3608, %3631
  %3613 = phi ptr [ %3632, %3631 ], [ %3610, %3608 ]
  %3614 = getelementptr inbounds %struct.ParticleSystem, ptr %3613, i64 0, i32 40
  %3615 = load ptr, ptr %3614, align 8, !tbaa !626
  %3616 = icmp eq ptr %3615, null
  br i1 %3616, label %3628, label %3617

3617:                                             ; preds = %3612
  %3618 = getelementptr inbounds %struct.PointCache, ptr %3615, i64 0, i32 2
  %3619 = load i32, ptr %3618, align 8, !tbaa !628
  %3620 = and i32 %3619, 65
  %3621 = icmp eq i32 %3620, 1
  br i1 %3621, label %3622, label %3631

3622:                                             ; preds = %3617
  %3623 = call i32 @puts(ptr nonnull dereferenceable(1) @str.29)
  %3624 = load ptr, ptr %3614, align 8, !tbaa !626
  %3625 = getelementptr inbounds %struct.PointCache, ptr %3624, i64 0, i32 2
  %3626 = load i32, ptr %3625, align 8, !tbaa !628
  %3627 = and i32 %3626, -2
  store i32 %3627, ptr %3625, align 8, !tbaa !628
  br label %3631

3628:                                             ; preds = %3612
  %3629 = getelementptr inbounds %struct.ParticleSystem, ptr %3613, i64 0, i32 41
  %3630 = call ptr @BKE_ptcache_add(ptr noundef nonnull %3629) #15
  store ptr %3630, ptr %3614, align 8, !tbaa !626
  br label %3631

3631:                                             ; preds = %3628, %3622, %3617
  %3632 = load ptr, ptr %3613, align 8, !tbaa !34
  %3633 = icmp eq ptr %3632, null
  br i1 %3633, label %3634, label %3612, !llvm.loop !630

3634:                                             ; preds = %3631, %3608
  %3635 = getelementptr inbounds %struct.Object, ptr %3595, i64 0, i32 26
  %3636 = load ptr, ptr %3635, align 8, !tbaa !34
  %3637 = icmp eq ptr %3636, null
  br i1 %3637, label %3591, label %3638

3638:                                             ; preds = %3634, %3651
  %3639 = phi ptr [ %3652, %3651 ], [ %3636, %3634 ]
  %3640 = getelementptr inbounds %struct.ModifierData, ptr %3639, i64 0, i32 2
  %3641 = load i32, ptr %3640, align 8, !tbaa !436
  %3642 = icmp eq i32 %3641, 22
  br i1 %3642, label %3643, label %3651

3643:                                             ; preds = %3638
  %3644 = getelementptr inbounds %struct.ClothModifierData, ptr %3639, i64 0, i32 5
  %3645 = load ptr, ptr %3644, align 8, !tbaa !631
  %3646 = icmp eq ptr %3645, null
  br i1 %3646, label %3647, label %3651

3647:                                             ; preds = %3643
  %3648 = getelementptr inbounds %struct.ClothModifierData, ptr %3639, i64 0, i32 6
  %3649 = call ptr @BKE_ptcache_add(ptr noundef nonnull %3648) #15
  store ptr %3649, ptr %3644, align 8, !tbaa !631
  %3650 = getelementptr inbounds %struct.PointCache, ptr %3649, i64 0, i32 3
  store i32 1, ptr %3650, align 4, !tbaa !633
  br label %3651

3651:                                             ; preds = %3643, %3647, %3638
  %3652 = load ptr, ptr %3639, align 8, !tbaa !34
  %3653 = icmp eq ptr %3652, null
  br i1 %3653, label %3591, label %3638, !llvm.loop !634

3654:                                             ; preds = %3591, %3587
  %3655 = getelementptr inbounds %struct.Main, ptr %2, i64 0, i32 14
  %3656 = load ptr, ptr %3655, align 8, !tbaa !34
  %3657 = icmp eq ptr %3656, null
  br i1 %3657, label %3688, label %3658

3658:                                             ; preds = %3654, %3685
  %3659 = phi ptr [ %3686, %3685 ], [ %3656, %3654 ]
  %3660 = getelementptr inbounds %struct.Mesh, ptr %3659, i64 0, i32 48
  %3661 = load ptr, ptr %3660, align 8, !tbaa !635
  %3662 = icmp eq ptr %3661, null
  br i1 %3662, label %3685, label %3663

3663:                                             ; preds = %3658
  %3664 = getelementptr inbounds %struct.Multires, ptr %3661, i64 0, i32 1
  %3665 = load ptr, ptr %3664, align 8, !tbaa !636
  %3666 = icmp eq ptr %3665, null
  br i1 %3666, label %3667, label %3685

3667:                                             ; preds = %3663
  %3668 = getelementptr inbounds %struct.ListBase, ptr %3661, i64 0, i32 1
  %3669 = load ptr, ptr %3668, align 8, !tbaa !638
  %3670 = icmp eq ptr %3669, null
  br i1 %3670, label %3685, label %3671

3671:                                             ; preds = %3667
  %3672 = getelementptr inbounds %struct.MultiresLevel, ptr %3669, i64 0, i32 9
  %3673 = load ptr, ptr %3672, align 8, !tbaa !639
  store ptr %3673, ptr %3664, align 8, !tbaa !636
  store ptr null, ptr %3672, align 8, !tbaa !639
  %3674 = getelementptr inbounds %struct.MultiresLevel, ptr %3669, i64 0, i32 1
  %3675 = load ptr, ptr %3674, align 8, !tbaa !641
  %3676 = icmp eq ptr %3675, null
  br i1 %3676, label %3685, label %3677

3677:                                             ; preds = %3671, %3677
  %3678 = phi ptr [ %3683, %3677 ], [ %3675, %3671 ]
  %3679 = load ptr, ptr @MEM_freeN, align 8, !tbaa !34
  %3680 = getelementptr inbounds %struct.MultiresLevel, ptr %3678, i64 0, i32 9
  %3681 = load ptr, ptr %3680, align 8, !tbaa !639
  call void %3679(ptr noundef %3681) #15
  store ptr null, ptr %3680, align 8, !tbaa !639
  %3682 = getelementptr inbounds %struct.MultiresLevel, ptr %3678, i64 0, i32 1
  %3683 = load ptr, ptr %3682, align 8, !tbaa !641
  %3684 = icmp eq ptr %3683, null
  br i1 %3684, label %3685, label %3677, !llvm.loop !642

3685:                                             ; preds = %3677, %3671, %3667, %3658, %3663
  %3686 = load ptr, ptr %3659, align 8, !tbaa !34
  %3687 = icmp eq ptr %3686, null
  br i1 %3687, label %3688, label %3658, !llvm.loop !643

3688:                                             ; preds = %3685, %3654
  %3689 = load i16, ptr %7, align 8, !tbaa !59
  %3690 = icmp eq i16 %3689, 245
  br i1 %3690, label %3691, label %3695

3691:                                             ; preds = %3688
  %3692 = getelementptr inbounds %struct.Main, ptr %2, i64 0, i32 4
  %3693 = load i16, ptr %3692, align 2, !tbaa !556
  %3694 = icmp slt i16 %3693, 1
  br i1 %3694, label %3695, label %3715

3695:                                             ; preds = %3691, %3688
  %3696 = getelementptr inbounds %struct.Main, ptr %2, i64 0, i32 21
  %3697 = load ptr, ptr %3696, align 8, !tbaa !34
  %3698 = icmp eq ptr %3697, null
  br i1 %3698, label %3715, label %3699

3699:                                             ; preds = %3695, %3712
  %3700 = phi ptr [ %3713, %3712 ], [ %3697, %3695 ]
  %3701 = getelementptr inbounds %struct.Lamp, ptr %3700, i64 0, i32 4
  %3702 = load i32, ptr %3701, align 4, !tbaa !644
  %3703 = and i32 %3702, 8
  %3704 = icmp eq i32 %3703, 0
  %3705 = select i1 %3704, i16 1, i16 4
  %3706 = getelementptr inbounds %struct.Lamp, ptr %3700, i64 0, i32 23
  store i16 %3705, ptr %3706, align 8
  %3707 = getelementptr inbounds %struct.Lamp, ptr %3700, i64 0, i32 22
  %3708 = load ptr, ptr %3707, align 8, !tbaa !645
  %3709 = icmp eq ptr %3708, null
  br i1 %3709, label %3710, label %3712

3710:                                             ; preds = %3699
  %3711 = call ptr @curvemapping_add(i32 noundef 1, float noundef 0.000000e+00, float noundef 1.000000e+00, float noundef 1.000000e+00, float noundef 0.000000e+00) #15
  store ptr %3711, ptr %3707, align 8, !tbaa !645
  call void @curvemapping_initialize(ptr noundef %3711) #15
  br label %3712

3712:                                             ; preds = %3699, %3710
  %3713 = load ptr, ptr %3700, align 8, !tbaa !34
  %3714 = icmp eq ptr %3713, null
  br i1 %3714, label %3715, label %3699, !llvm.loop !646

3715:                                             ; preds = %3712, %3695, %3691
  %3716 = getelementptr inbounds %struct.Main, ptr %2, i64 0, i32 17
  %3717 = load ptr, ptr %3716, align 8, !tbaa !34
  %3718 = icmp eq ptr %3717, null
  br i1 %3718, label %3737, label %3719

3719:                                             ; preds = %3715, %3734
  %3720 = phi ptr [ %3735, %3734 ], [ %3717, %3715 ]
  %3721 = getelementptr inbounds %struct.Material, ptr %3720, i64 0, i32 43
  %3722 = load i16, ptr %3721, align 4, !tbaa !647
  %3723 = icmp eq i16 %3722, 0
  br i1 %3723, label %3724, label %3729

3724:                                             ; preds = %3719
  %3725 = getelementptr inbounds %struct.Material, ptr %3720, i64 0, i32 41
  store <2 x float> <float 1.000000e+00, float 1.000000e+00>, ptr %3725, align 4, !tbaa !120
  %3726 = getelementptr inbounds %struct.Material, ptr %3720, i64 0, i32 44
  store i16 18, ptr %3726, align 2, !tbaa !648
  store i16 18, ptr %3721, align 4, !tbaa !647
  %3727 = getelementptr inbounds %struct.Material, ptr %3720, i64 0, i32 45
  store <4 x float> <float 0x3F747AE140000000, float 0x3F747AE140000000, float 1.000000e+00, float 0.000000e+00>, ptr %3727, align 8, !tbaa !120
  %3728 = getelementptr inbounds %struct.Material, ptr %3720, i64 0, i32 49
  store i16 0, ptr %3728, align 8, !tbaa !649
  br label %3729

3729:                                             ; preds = %3724, %3719
  %3730 = getelementptr inbounds %struct.Material, ptr %3720, i64 0, i32 67
  %3731 = load float, ptr %3730, align 4, !tbaa !650
  %3732 = fcmp oeq float %3731, 0.000000e+00
  br i1 %3732, label %3733, label %3734

3733:                                             ; preds = %3729
  store float 1.000000e+00, ptr %3730, align 4, !tbaa !650
  br label %3734

3734:                                             ; preds = %3729, %3733
  %3735 = load ptr, ptr %3720, align 8, !tbaa !34
  %3736 = icmp eq ptr %3735, null
  br i1 %3736, label %3737, label %3719, !llvm.loop !651

3737:                                             ; preds = %3734, %3715
  %3738 = getelementptr inbounds %struct.Main, ptr %2, i64 0, i32 37
  %3739 = load ptr, ptr %3738, align 8, !tbaa !34
  %3740 = icmp eq ptr %3739, null
  br i1 %3740, label %3759, label %3741

3741:                                             ; preds = %3737, %3756
  %3742 = phi ptr [ %3757, %3756 ], [ %3739, %3737 ]
  %3743 = getelementptr inbounds %struct.ParticleSettings, ptr %3742, i64 0, i32 90
  %3744 = load i32, ptr %3743, align 8, !tbaa !652
  %3745 = icmp eq i32 %3744, 0
  br i1 %3745, label %3746, label %3749

3746:                                             ; preds = %3741
  %3747 = getelementptr inbounds %struct.ParticleSettings, ptr %3742, i64 0, i32 89
  %3748 = load i32, ptr %3747, align 4, !tbaa !654
  store i32 %3748, ptr %3743, align 8, !tbaa !652
  br label %3749

3749:                                             ; preds = %3746, %3741
  %3750 = getelementptr inbounds %struct.ParticleSettings, ptr %3742, i64 0, i32 49
  %3751 = load i16, ptr %3750, align 2, !tbaa !655
  %3752 = icmp eq i16 %3751, 0
  br i1 %3752, label %3753, label %3756

3753:                                             ; preds = %3749
  store i16 1920, ptr %3750, align 2, !tbaa !655
  %3754 = getelementptr inbounds %struct.ParticleSettings, ptr %3742, i64 0, i32 50
  store <2 x float> <float 1.000000e+00, float 0x3FB99999A0000000>, ptr %3754, align 8, !tbaa !120
  %3755 = getelementptr inbounds %struct.ParticleSettings, ptr %3742, i64 0, i32 52
  store float 0x3FE99999A0000000, ptr %3755, align 8, !tbaa !656
  br label %3756

3756:                                             ; preds = %3749, %3753
  %3757 = load ptr, ptr %3742, align 8, !tbaa !34
  %3758 = icmp eq ptr %3757, null
  br i1 %3758, label %3759, label %3741, !llvm.loop !657

3759:                                             ; preds = %3756, %3737
  %3760 = getelementptr inbounds %struct.Main, ptr %2, i64 0, i32 25
  %3761 = load ptr, ptr %3760, align 8, !tbaa !34
  %3762 = icmp eq ptr %3761, null
  br i1 %3762, label %3772, label %3763

3763:                                             ; preds = %3759, %3769
  %3764 = phi ptr [ %3770, %3769 ], [ %3761, %3759 ]
  %3765 = getelementptr inbounds %struct.World, ptr %3764, i64 0, i32 56
  %3766 = load float, ptr %3765, align 8, !tbaa !658
  %3767 = fcmp oeq float %3766, 0.000000e+00
  br i1 %3767, label %3768, label %3769

3768:                                             ; preds = %3763
  store float 2.500000e-01, ptr %3765, align 8, !tbaa !658
  br label %3769

3769:                                             ; preds = %3763, %3768
  %3770 = load ptr, ptr %3764, align 8, !tbaa !34
  %3771 = icmp eq ptr %3770, null
  br i1 %3771, label %3772, label %3763, !llvm.loop !659

3772:                                             ; preds = %3769, %3759
  %3773 = getelementptr inbounds %struct.Main, ptr %2, i64 0, i32 11
  %3774 = load ptr, ptr %3773, align 8, !tbaa !34
  %3775 = icmp eq ptr %3774, null
  br i1 %3775, label %3799, label %3776

3776:                                             ; preds = %3772, %3796
  %3777 = phi ptr [ %3797, %3796 ], [ %3774, %3772 ]
  %3778 = getelementptr inbounds %struct.Scene, ptr %3777, i64 0, i32 18
  %3779 = load ptr, ptr %3778, align 8, !tbaa !491
  %3780 = icmp eq ptr %3779, null
  br i1 %3780, label %3782, label %3781

3781:                                             ; preds = %3776
  call fastcc void @ntree_version_245(ptr noundef %0, ptr noundef %1, ptr noundef nonnull %3779) #16
  br label %3782

3782:                                             ; preds = %3781, %3776
  %3783 = getelementptr inbounds %struct.Scene, ptr %3777, i64 0, i32 22, i32 97
  %3784 = load i16, ptr %3783, align 2, !tbaa !660
  %3785 = icmp eq i16 %3784, 0
  br i1 %3785, label %3786, label %3789

3786:                                             ; preds = %3782
  %3787 = getelementptr inbounds %struct.Scene, ptr %3777, i64 0, i32 22, i32 96
  store i16 6, ptr %3787, align 4, !tbaa !661
  %3788 = getelementptr inbounds %struct.Scene, ptr %3777, i64 0, i32 22, i32 98
  store i16 16, ptr %3783, align 2, !tbaa !660
  store <2 x float> <float 1.000000e+00, float 1.000000e+00>, ptr %3788, align 8, !tbaa !120
  br label %3789

3789:                                             ; preds = %3786, %3782
  %3790 = getelementptr inbounds %struct.Scene, ptr %3777, i64 0, i32 22, i32 102
  %3791 = load float, ptr %3790, align 4, !tbaa !662
  %3792 = fcmp oeq float %3791, 0.000000e+00
  br i1 %3792, label %3793, label %3796

3793:                                             ; preds = %3789
  %3794 = getelementptr inbounds %struct.Scene, ptr %3777, i64 0, i32 22, i32 101
  store i16 95, ptr %3794, align 2, !tbaa !663
  %3795 = getelementptr inbounds %struct.Scene, ptr %3777, i64 0, i32 22, i32 100
  store i16 685, ptr %3795, align 8, !tbaa !664
  store float 0x3FFB333340000000, ptr %3790, align 4, !tbaa !662
  br label %3796

3796:                                             ; preds = %3789, %3793
  %3797 = load ptr, ptr %3777, align 8, !tbaa !34
  %3798 = icmp eq ptr %3797, null
  br i1 %3798, label %3799, label %3776, !llvm.loop !665

3799:                                             ; preds = %3796, %3772
  %3800 = getelementptr inbounds %struct.Main, ptr %2, i64 0, i32 35
  %3801 = load ptr, ptr %3800, align 8, !tbaa !34
  %3802 = icmp eq ptr %3801, null
  br i1 %3802, label %3807, label %3803

3803:                                             ; preds = %3799, %3803
  %3804 = phi ptr [ %3805, %3803 ], [ %3801, %3799 ]
  call fastcc void @ntree_version_245(ptr noundef %0, ptr noundef %1, ptr noundef nonnull %3804) #16
  %3805 = load ptr, ptr %3804, align 8, !tbaa !34
  %3806 = icmp eq ptr %3805, null
  br i1 %3806, label %3807, label %3803, !llvm.loop !666

3807:                                             ; preds = %3803, %3799
  %3808 = getelementptr inbounds %struct.Main, ptr %2, i64 0, i32 19
  %3809 = load ptr, ptr %3808, align 8, !tbaa !34
  %3810 = icmp eq ptr %3809, null
  br i1 %3810, label %3823, label %3811

3811:                                             ; preds = %3807, %3820
  %3812 = phi ptr [ %3821, %3820 ], [ %3809, %3807 ]
  %3813 = getelementptr inbounds %struct.Image, ptr %3812, i64 0, i32 10
  %3814 = load i16, ptr %3813, align 2, !tbaa !565
  %3815 = and i16 %3814, 128
  %3816 = icmp eq i16 %3815, 0
  br i1 %3816, label %3820, label %3817

3817:                                             ; preds = %3811
  %3818 = and i16 %3814, -129
  store i16 %3818, ptr %3813, align 2, !tbaa !565
  %3819 = getelementptr inbounds %struct.Image, ptr %3812, i64 0, i32 37
  store i8 0, ptr %3819, align 8, !tbaa !667
  br label %3820

3820:                                             ; preds = %3811, %3817
  %3821 = load ptr, ptr %3812, align 8, !tbaa !34
  %3822 = icmp eq ptr %3821, null
  br i1 %3822, label %3823, label %3811, !llvm.loop !668

3823:                                             ; preds = %3820, %3807
  %3824 = getelementptr inbounds %struct.Main, ptr %2, i64 0, i32 18
  %3825 = load ptr, ptr %3824, align 8, !tbaa !34
  %3826 = icmp eq ptr %3825, null
  br i1 %3826, label %3852, label %3827

3827:                                             ; preds = %3823, %3849
  %3828 = phi ptr [ %3850, %3849 ], [ %3825, %3823 ]
  %3829 = getelementptr inbounds %struct.Tex, ptr %3828, i64 0, i32 51, i32 12
  %3830 = load i16, ptr %3829, align 2, !tbaa !669
  %3831 = and i16 %3830, 128
  %3832 = icmp eq i16 %3831, 0
  br i1 %3832, label %3835, label %3833

3833:                                             ; preds = %3827
  %3834 = and i16 %3830, -129
  store i16 %3834, ptr %3829, align 2, !tbaa !669
  br label %3835

3835:                                             ; preds = %3833, %3827
  %3836 = getelementptr inbounds %struct.Tex, ptr %3828, i64 0, i32 54
  %3837 = load ptr, ptr %3836, align 8, !tbaa !563
  %3838 = call ptr @blo_do_versions_newlibadr(ptr noundef %0, ptr noundef %1, ptr noundef %3837) #15
  %3839 = icmp eq ptr %3838, null
  br i1 %3839, label %3849, label %3840

3840:                                             ; preds = %3835
  %3841 = load i16, ptr %3829, align 2, !tbaa !669
  %3842 = and i16 %3841, 4
  %3843 = icmp eq i16 %3842, 0
  br i1 %3843, label %3849, label %3844

3844:                                             ; preds = %3840
  %3845 = getelementptr inbounds %struct.Image, ptr %3838, i64 0, i32 10
  %3846 = load i16, ptr %3845, align 2, !tbaa !565
  %3847 = and i16 %3846, -129
  store i16 %3847, ptr %3845, align 2, !tbaa !565
  %3848 = getelementptr inbounds %struct.Image, ptr %3838, i64 0, i32 37
  store i8 0, ptr %3848, align 8, !tbaa !667
  br label %3849

3849:                                             ; preds = %3835, %3840, %3844
  %3850 = load ptr, ptr %3828, align 8, !tbaa !34
  %3851 = icmp eq ptr %3850, null
  br i1 %3851, label %3852, label %3827, !llvm.loop !670

3852:                                             ; preds = %3849, %3823, %3479
  %3853 = getelementptr inbounds %struct.Main, ptr %2, i64 0, i32 11
  %3854 = load ptr, ptr %3853, align 8, !tbaa !34
  %3855 = icmp eq ptr %3854, null
  br i1 %3855, label %3879, label %3856

3856:                                             ; preds = %3852, %3876
  %3857 = phi ptr [ %3877, %3876 ], [ %3854, %3852 ]
  %3858 = getelementptr inbounds %struct.Scene, ptr %3857, i64 0, i32 20
  %3859 = load ptr, ptr %3858, align 8, !tbaa !418
  %3860 = getelementptr inbounds %struct.ToolSettings, ptr %3859, i64 0, i32 39
  %3861 = load i8, ptr %3860, align 4, !tbaa !135
  %3862 = getelementptr inbounds %struct.ToolSettings, ptr %3859, i64 0, i32 39, i64 1
  %3863 = load i8, ptr %3862, align 1, !tbaa !135
  %3864 = icmp eq i8 %3861, %3863
  br i1 %3864, label %3871, label %3865

3865:                                             ; preds = %3856
  %3866 = getelementptr inbounds %struct.ToolSettings, ptr %3859, i64 0, i32 39, i64 2
  %3867 = load i8, ptr %3866, align 2, !tbaa !135
  %3868 = icmp eq i8 %3861, %3867
  %3869 = icmp eq i8 %3863, %3867
  %3870 = or i1 %3868, %3869
  br i1 %3870, label %3871, label %3876

3871:                                             ; preds = %3865, %3856
  store i8 2, ptr %3860, align 4, !tbaa !135
  %3872 = load ptr, ptr %3858, align 8, !tbaa !418
  %3873 = getelementptr inbounds %struct.ToolSettings, ptr %3872, i64 0, i32 39, i64 1
  store i8 0, ptr %3873, align 1, !tbaa !135
  %3874 = load ptr, ptr %3858, align 8, !tbaa !418
  %3875 = getelementptr inbounds %struct.ToolSettings, ptr %3874, i64 0, i32 39, i64 2
  store i8 1, ptr %3875, align 2, !tbaa !135
  br label %3876

3876:                                             ; preds = %3865, %3871
  %3877 = load ptr, ptr %3857, align 8, !tbaa !34
  %3878 = icmp eq ptr %3877, null
  br i1 %3878, label %3879, label %3856, !llvm.loop !671

3879:                                             ; preds = %3876, %3852
  %3880 = load i16, ptr %7, align 8, !tbaa !59
  %3881 = icmp slt i16 %3880, 245
  br i1 %3881, label %3888, label %3882

3882:                                             ; preds = %3879
  %3883 = icmp eq i16 %3880, 245
  br i1 %3883, label %3884, label %4640

3884:                                             ; preds = %3882
  %3885 = getelementptr inbounds %struct.Main, ptr %2, i64 0, i32 4
  %3886 = load i16, ptr %3885, align 2, !tbaa !556
  %3887 = icmp slt i16 %3886, 2
  br i1 %3887, label %3888, label %3903

3888:                                             ; preds = %3884, %3879
  %3889 = getelementptr inbounds %struct.Main, ptr %2, i64 0, i32 19
  %3890 = load ptr, ptr %3889, align 8, !tbaa !34
  %3891 = icmp eq ptr %3890, null
  br i1 %3891, label %3897, label %3892

3892:                                             ; preds = %3888, %3892
  %3893 = phi ptr [ %3895, %3892 ], [ %3890, %3888 ]
  %3894 = getelementptr inbounds %struct.Image, ptr %3893, i64 0, i32 34
  store <2 x float> <float 1.000000e+00, float 1.000000e+00>, ptr %3894, align 8, !tbaa !120
  %3895 = load ptr, ptr %3893, align 8, !tbaa !34
  %3896 = icmp eq ptr %3895, null
  br i1 %3896, label %3897, label %3892, !llvm.loop !672

3897:                                             ; preds = %3892, %3888
  br i1 %3881, label %3906, label %3898

3898:                                             ; preds = %3897
  %3899 = icmp eq i16 %3880, 245
  br i1 %3899, label %3900, label %4640

3900:                                             ; preds = %3898
  %3901 = getelementptr inbounds %struct.Main, ptr %2, i64 0, i32 4
  %3902 = load i16, ptr %3901, align 2, !tbaa !556
  br label %3903

3903:                                             ; preds = %3900, %3884
  %3904 = phi i16 [ %3902, %3900 ], [ %3886, %3884 ]
  %3905 = icmp slt i16 %3904, 4
  br i1 %3905, label %3906, label %3947

3906:                                             ; preds = %3903, %3897
  %3907 = getelementptr inbounds %struct.Main, ptr %2, i64 0, i32 33
  %3908 = load ptr, ptr %3907, align 8, !tbaa !34
  %3909 = icmp eq ptr %3908, null
  br i1 %3909, label %3917, label %3910

3910:                                             ; preds = %3906, %3910
  %3911 = phi ptr [ %3915, %3910 ], [ %3908, %3906 ]
  %3912 = getelementptr inbounds %struct.bArmature, ptr %3911, i64 0, i32 12
  %3913 = load i16, ptr %3912, align 8, !tbaa !451
  %3914 = or i16 %3913, 8
  store i16 %3914, ptr %3912, align 8, !tbaa !451
  %3915 = load ptr, ptr %3911, align 8, !tbaa !34
  %3916 = icmp eq ptr %3915, null
  br i1 %3916, label %3917, label %3910, !llvm.loop !673

3917:                                             ; preds = %3910, %3906
  %3918 = getelementptr inbounds %struct.Main, ptr %2, i64 0, i32 13
  %3919 = load ptr, ptr %3918, align 8, !tbaa !34
  %3920 = icmp eq ptr %3919, null
  br i1 %3920, label %3941, label %3924

3921:                                             ; preds = %3938, %3924
  %3922 = load ptr, ptr %3925, align 8, !tbaa !34
  %3923 = icmp eq ptr %3922, null
  br i1 %3923, label %3941, label %3924, !llvm.loop !674

3924:                                             ; preds = %3917, %3921
  %3925 = phi ptr [ %3922, %3921 ], [ %3919, %3917 ]
  %3926 = getelementptr inbounds %struct.Object, ptr %3925, i64 0, i32 26
  %3927 = load ptr, ptr %3926, align 8, !tbaa !34
  %3928 = icmp eq ptr %3927, null
  br i1 %3928, label %3921, label %3929

3929:                                             ; preds = %3924, %3938
  %3930 = phi ptr [ %3939, %3938 ], [ %3927, %3924 ]
  %3931 = getelementptr inbounds %struct.ModifierData, ptr %3930, i64 0, i32 2
  %3932 = load i32, ptr %3931, align 8, !tbaa !436
  %3933 = icmp eq i32 %3932, 8
  br i1 %3933, label %3934, label %3938

3934:                                             ; preds = %3929
  %3935 = getelementptr inbounds %struct.ArmatureModifierData, ptr %3930, i64 0, i32 1
  %3936 = load i16, ptr %3935, align 8, !tbaa !464
  %3937 = or i16 %3936, 8
  store i16 %3937, ptr %3935, align 8, !tbaa !464
  br label %3938

3938:                                             ; preds = %3929, %3934
  %3939 = load ptr, ptr %3930, align 8, !tbaa !34
  %3940 = icmp eq ptr %3939, null
  br i1 %3940, label %3921, label %3929, !llvm.loop !675

3941:                                             ; preds = %3921, %3917
  br i1 %3881, label %3950, label %3942

3942:                                             ; preds = %3941
  %3943 = icmp eq i16 %3880, 245
  br i1 %3943, label %3944, label %4640

3944:                                             ; preds = %3942
  %3945 = getelementptr inbounds %struct.Main, ptr %2, i64 0, i32 4
  %3946 = load i16, ptr %3945, align 2, !tbaa !556
  br label %3947

3947:                                             ; preds = %3944, %3903
  %3948 = phi i16 [ %3946, %3944 ], [ %3904, %3903 ]
  %3949 = icmp slt i16 %3948, 5
  br i1 %3949, label %3950, label %3965

3950:                                             ; preds = %3947, %3941
  %3951 = load ptr, ptr %3853, align 8, !tbaa !34
  %3952 = icmp eq ptr %3951, null
  br i1 %3952, label %3959, label %3953

3953:                                             ; preds = %3950, %3953
  %3954 = phi ptr [ %3957, %3953 ], [ %3951, %3950 ]
  %3955 = getelementptr inbounds %struct.Scene, ptr %3954, i64 0, i32 22, i32 89
  store <4 x float> <float 0x3FE99999A0000000, float 0x3FE99999A0000000, float 0x3FE99999A0000000, float 1.000000e+00>, ptr %3955, align 8, !tbaa !120
  %3956 = getelementptr inbounds %struct.Scene, ptr %3954, i64 0, i32 22, i32 90, i64 3
  store float 2.500000e-01, ptr %3956, align 4, !tbaa !120
  %3957 = load ptr, ptr %3954, align 8, !tbaa !34
  %3958 = icmp eq ptr %3957, null
  br i1 %3958, label %3959, label %3953, !llvm.loop !676

3959:                                             ; preds = %3953, %3950
  br i1 %3881, label %3970, label %3960

3960:                                             ; preds = %3959
  %3961 = icmp eq i16 %3880, 245
  br i1 %3961, label %3962, label %4640

3962:                                             ; preds = %3960
  %3963 = getelementptr inbounds %struct.Main, ptr %2, i64 0, i32 4
  %3964 = load i16, ptr %3963, align 2, !tbaa !556
  br label %3965

3965:                                             ; preds = %3962, %3947
  %3966 = phi i16 [ %3964, %3962 ], [ %3948, %3947 ]
  %3967 = icmp slt i16 %3966, 6
  br i1 %3967, label %3968, label %3988

3968:                                             ; preds = %3965
  %3969 = load ptr, ptr %3853, align 8, !tbaa !34
  br label %3970

3970:                                             ; preds = %3968, %3959
  %3971 = phi ptr [ %3969, %3968 ], [ %3951, %3959 ]
  %3972 = icmp eq ptr %3971, null
  br i1 %3972, label %3982, label %3973

3973:                                             ; preds = %3970, %3979
  %3974 = phi ptr [ %3980, %3979 ], [ %3971, %3970 ]
  %3975 = getelementptr inbounds %struct.Scene, ptr %3974, i64 0, i32 22, i32 65
  %3976 = load float, ptr %3975, align 4, !tbaa !677
  %3977 = fcmp oeq float %3976, 0.000000e+00
  br i1 %3977, label %3978, label %3979

3978:                                             ; preds = %3973
  store float 1.000000e+00, ptr %3975, align 4, !tbaa !677
  br label %3979

3979:                                             ; preds = %3973, %3978
  %3980 = load ptr, ptr %3974, align 8, !tbaa !34
  %3981 = icmp eq ptr %3980, null
  br i1 %3981, label %3982, label %3973, !llvm.loop !678

3982:                                             ; preds = %3979, %3970
  br i1 %3881, label %3991, label %3983

3983:                                             ; preds = %3982
  %3984 = icmp eq i16 %3880, 245
  br i1 %3984, label %3985, label %4640

3985:                                             ; preds = %3983
  %3986 = getelementptr inbounds %struct.Main, ptr %2, i64 0, i32 4
  %3987 = load i16, ptr %3986, align 2, !tbaa !556
  br label %3988

3988:                                             ; preds = %3985, %3965
  %3989 = phi i16 [ %3987, %3985 ], [ %3966, %3965 ]
  %3990 = icmp slt i16 %3989, 7
  br i1 %3990, label %3991, label %4133

3991:                                             ; preds = %3988, %3982
  %3992 = getelementptr inbounds %struct.Main, ptr %2, i64 0, i32 13
  %3993 = load ptr, ptr %3992, align 8, !tbaa !34
  %3994 = icmp eq ptr %3993, null
  br i1 %3994, label %4128, label %3995

3995:                                             ; preds = %3991, %4123
  %3996 = phi ptr [ %4124, %4123 ], [ %3993, %3991 ]
  %3997 = getelementptr inbounds %struct.Object, ptr %3996, i64 0, i32 18
  %3998 = load ptr, ptr %3997, align 8, !tbaa !268
  %3999 = icmp eq ptr %3998, null
  br i1 %3999, label %4049, label %4000

4000:                                             ; preds = %3995
  %4001 = load ptr, ptr %3998, align 8, !tbaa !34
  %4002 = icmp eq ptr %4001, null
  br i1 %4002, label %4049, label %4006

4003:                                             ; preds = %4046, %4006
  %4004 = load ptr, ptr %4007, align 8, !tbaa !34
  %4005 = icmp eq ptr %4004, null
  br i1 %4005, label %4049, label %4006, !llvm.loop !679

4006:                                             ; preds = %4000, %4003
  %4007 = phi ptr [ %4004, %4003 ], [ %4001, %4000 ]
  %4008 = getelementptr inbounds %struct.bPoseChannel, ptr %4007, i64 0, i32 3
  %4009 = load ptr, ptr %4008, align 8, !tbaa !34
  %4010 = icmp eq ptr %4009, null
  br i1 %4010, label %4003, label %4011

4011:                                             ; preds = %4006, %4046
  %4012 = phi ptr [ %4047, %4046 ], [ %4009, %4006 ]
  %4013 = getelementptr inbounds %struct.bConstraint, ptr %4012, i64 0, i32 3
  %4014 = load i16, ptr %4013, align 8, !tbaa !265
  switch i16 %4014, label %4046 [
    i16 11, label %4015
    i16 9, label %4037
  ]

4015:                                             ; preds = %4011
  %4016 = getelementptr inbounds %struct.bConstraint, ptr %4012, i64 0, i32 2
  %4017 = load ptr, ptr %4016, align 8, !tbaa !51
  %4018 = getelementptr inbounds %struct.bPythonConstraint, ptr %4017, i64 0, i32 5
  %4019 = load ptr, ptr %4018, align 8, !tbaa !680
  %4020 = icmp eq ptr %4019, null
  br i1 %4020, label %4046, label %4021

4021:                                             ; preds = %4015
  %4022 = load ptr, ptr @MEM_callocN, align 8, !tbaa !34
  %4023 = call ptr %4022(i64 noundef 160, ptr noundef nonnull @.str.13) #15
  %4024 = load ptr, ptr %4018, align 8, !tbaa !680
  %4025 = getelementptr inbounds %struct.bConstraintTarget, ptr %4023, i64 0, i32 2
  store ptr %4024, ptr %4025, align 8, !tbaa !682
  %4026 = getelementptr inbounds %struct.bConstraintTarget, ptr %4023, i64 0, i32 3
  %4027 = getelementptr inbounds %struct.bPythonConstraint, ptr %4017, i64 0, i32 6
  %4028 = call ptr @BLI_strncpy(ptr noundef nonnull %4026, ptr noundef nonnull %4027, i64 noundef 64) #15
  %4029 = getelementptr inbounds %struct.bConstraint, ptr %4012, i64 0, i32 6
  %4030 = load i8, ptr %4029, align 1, !tbaa !613
  %4031 = zext i8 %4030 to i16
  %4032 = getelementptr inbounds %struct.bConstraintTarget, ptr %4023, i64 0, i32 5
  store i16 %4031, ptr %4032, align 8, !tbaa !684
  %4033 = getelementptr inbounds %struct.bPythonConstraint, ptr %4017, i64 0, i32 4
  call void @BLI_addtail(ptr noundef nonnull %4033, ptr noundef %4023) #15
  %4034 = getelementptr inbounds %struct.bPythonConstraint, ptr %4017, i64 0, i32 3
  %4035 = load i32, ptr %4034, align 4, !tbaa !685
  %4036 = add nsw i32 %4035, 1
  store i32 %4036, ptr %4034, align 4, !tbaa !685
  store ptr null, ptr %4018, align 8, !tbaa !680
  store i8 0, ptr %4027, align 8, !tbaa !135
  br label %4046

4037:                                             ; preds = %4011
  %4038 = getelementptr inbounds %struct.bConstraint, ptr %4012, i64 0, i32 2
  %4039 = load ptr, ptr %4038, align 8, !tbaa !51
  %4040 = getelementptr inbounds %struct.bLocateLikeConstraint, ptr %4039, i64 0, i32 1
  %4041 = load i32, ptr %4040, align 8, !tbaa !686
  %4042 = and i32 %4041, 8
  %4043 = icmp eq i32 %4042, 0
  br i1 %4043, label %4046, label %4044

4044:                                             ; preds = %4037
  %4045 = getelementptr inbounds %struct.bConstraint, ptr %4012, i64 0, i32 10
  store float 1.000000e+00, ptr %4045, align 4, !tbaa !688
  br label %4046

4046:                                             ; preds = %4037, %4044, %4011, %4015, %4021
  %4047 = load ptr, ptr %4012, align 8, !tbaa !34
  %4048 = icmp eq ptr %4047, null
  br i1 %4048, label %4003, label %4011, !llvm.loop !689

4049:                                             ; preds = %4003, %4000, %3995
  %4050 = getelementptr inbounds %struct.Object, ptr %3996, i64 0, i32 106
  %4051 = load ptr, ptr %4050, align 8, !tbaa !34
  %4052 = icmp eq ptr %4051, null
  br i1 %4052, label %4091, label %4053

4053:                                             ; preds = %4049, %4088
  %4054 = phi ptr [ %4089, %4088 ], [ %4051, %4049 ]
  %4055 = getelementptr inbounds %struct.bConstraint, ptr %4054, i64 0, i32 3
  %4056 = load i16, ptr %4055, align 8, !tbaa !265
  switch i16 %4056, label %4088 [
    i16 11, label %4057
    i16 9, label %4079
  ]

4057:                                             ; preds = %4053
  %4058 = getelementptr inbounds %struct.bConstraint, ptr %4054, i64 0, i32 2
  %4059 = load ptr, ptr %4058, align 8, !tbaa !51
  %4060 = getelementptr inbounds %struct.bPythonConstraint, ptr %4059, i64 0, i32 5
  %4061 = load ptr, ptr %4060, align 8, !tbaa !680
  %4062 = icmp eq ptr %4061, null
  br i1 %4062, label %4088, label %4063

4063:                                             ; preds = %4057
  %4064 = load ptr, ptr @MEM_callocN, align 8, !tbaa !34
  %4065 = call ptr %4064(i64 noundef 160, ptr noundef nonnull @.str.13) #15
  %4066 = load ptr, ptr %4060, align 8, !tbaa !680
  %4067 = getelementptr inbounds %struct.bConstraintTarget, ptr %4065, i64 0, i32 2
  store ptr %4066, ptr %4067, align 8, !tbaa !682
  %4068 = getelementptr inbounds %struct.bConstraintTarget, ptr %4065, i64 0, i32 3
  %4069 = getelementptr inbounds %struct.bPythonConstraint, ptr %4059, i64 0, i32 6
  %4070 = call ptr @BLI_strncpy(ptr noundef nonnull %4068, ptr noundef nonnull %4069, i64 noundef 64) #15
  %4071 = getelementptr inbounds %struct.bConstraint, ptr %4054, i64 0, i32 6
  %4072 = load i8, ptr %4071, align 1, !tbaa !613
  %4073 = zext i8 %4072 to i16
  %4074 = getelementptr inbounds %struct.bConstraintTarget, ptr %4065, i64 0, i32 5
  store i16 %4073, ptr %4074, align 8, !tbaa !684
  %4075 = getelementptr inbounds %struct.bPythonConstraint, ptr %4059, i64 0, i32 4
  call void @BLI_addtail(ptr noundef nonnull %4075, ptr noundef %4065) #15
  %4076 = getelementptr inbounds %struct.bPythonConstraint, ptr %4059, i64 0, i32 3
  %4077 = load i32, ptr %4076, align 4, !tbaa !685
  %4078 = add nsw i32 %4077, 1
  store i32 %4078, ptr %4076, align 4, !tbaa !685
  store ptr null, ptr %4060, align 8, !tbaa !680
  store i8 0, ptr %4069, align 8, !tbaa !135
  br label %4088

4079:                                             ; preds = %4053
  %4080 = getelementptr inbounds %struct.bConstraint, ptr %4054, i64 0, i32 2
  %4081 = load ptr, ptr %4080, align 8, !tbaa !51
  %4082 = getelementptr inbounds %struct.bLocateLikeConstraint, ptr %4081, i64 0, i32 1
  %4083 = load i32, ptr %4082, align 8, !tbaa !686
  %4084 = and i32 %4083, 8
  %4085 = icmp eq i32 %4084, 0
  br i1 %4085, label %4088, label %4086

4086:                                             ; preds = %4079
  %4087 = getelementptr inbounds %struct.bConstraint, ptr %4054, i64 0, i32 10
  store float 1.000000e+00, ptr %4087, align 4, !tbaa !688
  br label %4088

4088:                                             ; preds = %4079, %4086, %4053, %4057, %4063
  %4089 = load ptr, ptr %4054, align 8, !tbaa !34
  %4090 = icmp eq ptr %4089, null
  br i1 %4090, label %4091, label %4053, !llvm.loop !690

4091:                                             ; preds = %4088, %4049
  %4092 = getelementptr inbounds %struct.Object, ptr %3996, i64 0, i32 111
  %4093 = load ptr, ptr %4092, align 8, !tbaa !384
  %4094 = icmp eq ptr %4093, null
  br i1 %4094, label %4123, label %4095

4095:                                             ; preds = %4091
  %4096 = getelementptr inbounds %struct.SoftBody, ptr %4093, i64 0, i32 29
  %4097 = load ptr, ptr %4096, align 8, !tbaa !691
  %4098 = icmp eq ptr %4097, null
  br i1 %4098, label %4123, label %4099

4099:                                             ; preds = %4095
  %4100 = getelementptr inbounds %struct.SoftBody, ptr %4093, i64 0, i32 31
  %4101 = load i32, ptr %4100, align 4, !tbaa !692
  %4102 = icmp sgt i32 %4101, 0
  br i1 %4102, label %4103, label %4120

4103:                                             ; preds = %4099, %4113
  %4104 = phi i32 [ %4114, %4113 ], [ %4101, %4099 ]
  %4105 = phi i64 [ %4115, %4113 ], [ 0, %4099 ]
  %4106 = load ptr, ptr %4096, align 8, !tbaa !691
  %4107 = getelementptr inbounds ptr, ptr %4106, i64 %4105
  %4108 = load ptr, ptr %4107, align 8, !tbaa !34
  %4109 = icmp eq ptr %4108, null
  br i1 %4109, label %4113, label %4110

4110:                                             ; preds = %4103
  %4111 = load ptr, ptr @MEM_freeN, align 8, !tbaa !34
  call void %4111(ptr noundef nonnull %4108) #15
  %4112 = load i32, ptr %4100, align 4, !tbaa !692
  br label %4113

4113:                                             ; preds = %4103, %4110
  %4114 = phi i32 [ %4104, %4103 ], [ %4112, %4110 ]
  %4115 = add nuw nsw i64 %4105, 1
  %4116 = sext i32 %4114 to i64
  %4117 = icmp slt i64 %4115, %4116
  br i1 %4117, label %4103, label %4118, !llvm.loop !693

4118:                                             ; preds = %4113
  %4119 = load ptr, ptr %4096, align 8, !tbaa !691
  br label %4120

4120:                                             ; preds = %4118, %4099
  %4121 = phi ptr [ %4119, %4118 ], [ %4097, %4099 ]
  %4122 = load ptr, ptr @MEM_freeN, align 8, !tbaa !34
  call void %4122(ptr noundef %4121) #15
  store ptr null, ptr %4096, align 8, !tbaa !691
  store i32 0, ptr %4100, align 4, !tbaa !692
  br label %4123

4123:                                             ; preds = %4091, %4095, %4120
  %4124 = load ptr, ptr %3996, align 8, !tbaa !34
  %4125 = icmp eq ptr %4124, null
  br i1 %4125, label %4126, label %3995, !llvm.loop !694

4126:                                             ; preds = %4123
  %4127 = load i16, ptr %7, align 8, !tbaa !59
  br label %4128

4128:                                             ; preds = %4126, %3991
  %4129 = phi i16 [ %4127, %4126 ], [ %3880, %3991 ]
  %4130 = icmp slt i16 %4129, 245
  br i1 %4130, label %4137, label %4131

4131:                                             ; preds = %4128
  %4132 = icmp eq i16 %4129, 245
  br i1 %4132, label %4133, label %4640

4133:                                             ; preds = %3988, %4131
  %4134 = getelementptr inbounds %struct.Main, ptr %2, i64 0, i32 4
  %4135 = load i16, ptr %4134, align 2, !tbaa !556
  %4136 = icmp slt i16 %4135, 8
  br i1 %4136, label %4137, label %4390

4137:                                             ; preds = %4133, %4128
  %4138 = getelementptr inbounds %struct.Main, ptr %2, i64 0, i32 13
  %4139 = load ptr, ptr %4138, align 8, !tbaa !34
  %4140 = icmp eq ptr %4139, null
  br i1 %4140, label %4143, label %4141

4141:                                             ; preds = %4137
  %4142 = getelementptr inbounds %struct.FileData, ptr %0, i64 0, i32 23
  br label %4146

4143:                                             ; preds = %4365, %4137
  %4144 = load ptr, ptr %3853, align 8, !tbaa !34
  %4145 = icmp eq ptr %4144, null
  br i1 %4145, label %4390, label %4368

4146:                                             ; preds = %4141, %4365
  %4147 = phi ptr [ %4139, %4141 ], [ %4366, %4365 ]
  %4148 = getelementptr inbounds %struct.Object, ptr %4147, i64 0, i32 111
  %4149 = load ptr, ptr %4148, align 8, !tbaa !384
  %4150 = icmp eq ptr %4149, null
  br i1 %4150, label %4179, label %4151

4151:                                             ; preds = %4146
  %4152 = getelementptr inbounds %struct.SoftBody, ptr %4149, i64 0, i32 29
  %4153 = load ptr, ptr %4152, align 8, !tbaa !691
  %4154 = icmp eq ptr %4153, null
  br i1 %4154, label %4179, label %4155

4155:                                             ; preds = %4151
  %4156 = getelementptr inbounds %struct.SoftBody, ptr %4149, i64 0, i32 31
  %4157 = load i32, ptr %4156, align 4, !tbaa !692
  %4158 = icmp sgt i32 %4157, 0
  br i1 %4158, label %4159, label %4176

4159:                                             ; preds = %4155, %4169
  %4160 = phi i32 [ %4170, %4169 ], [ %4157, %4155 ]
  %4161 = phi i64 [ %4171, %4169 ], [ 0, %4155 ]
  %4162 = load ptr, ptr %4152, align 8, !tbaa !691
  %4163 = getelementptr inbounds ptr, ptr %4162, i64 %4161
  %4164 = load ptr, ptr %4163, align 8, !tbaa !34
  %4165 = icmp eq ptr %4164, null
  br i1 %4165, label %4169, label %4166

4166:                                             ; preds = %4159
  %4167 = load ptr, ptr @MEM_freeN, align 8, !tbaa !34
  call void %4167(ptr noundef nonnull %4164) #15
  %4168 = load i32, ptr %4156, align 4, !tbaa !692
  br label %4169

4169:                                             ; preds = %4159, %4166
  %4170 = phi i32 [ %4160, %4159 ], [ %4168, %4166 ]
  %4171 = add nuw nsw i64 %4161, 1
  %4172 = sext i32 %4170 to i64
  %4173 = icmp slt i64 %4171, %4172
  br i1 %4173, label %4159, label %4174, !llvm.loop !695

4174:                                             ; preds = %4169
  %4175 = load ptr, ptr %4152, align 8, !tbaa !691
  br label %4176

4176:                                             ; preds = %4174, %4155
  %4177 = phi ptr [ %4175, %4174 ], [ %4153, %4155 ]
  %4178 = load ptr, ptr @MEM_freeN, align 8, !tbaa !34
  call void %4178(ptr noundef %4177) #15
  store ptr null, ptr %4152, align 8, !tbaa !691
  store i32 0, ptr %4156, align 4, !tbaa !692
  br label %4179

4179:                                             ; preds = %4176, %4151, %4146
  %4180 = call ptr @blo_do_version_give_parteff_245(ptr noundef nonnull %4147) #16
  %4181 = icmp eq ptr %4180, null
  br i1 %4181, label %4365, label %4182

4182:                                             ; preds = %4179
  %4183 = load ptr, ptr @MEM_callocN, align 8, !tbaa !34
  %4184 = call ptr %4183(i64 noundef 656, ptr noundef nonnull @.str.14) #15
  %4185 = getelementptr inbounds %struct.ParticleSystem, ptr %4184, i64 0, i32 41
  %4186 = call ptr @BKE_ptcache_add(ptr noundef nonnull %4185) #15
  %4187 = getelementptr inbounds %struct.ParticleSystem, ptr %4184, i64 0, i32 40
  store ptr %4186, ptr %4187, align 8, !tbaa !626
  %4188 = call ptr @psys_new_settings(ptr noundef nonnull @.str.15, ptr noundef %2) #15
  %4189 = getelementptr inbounds %struct.ParticleSystem, ptr %4184, i64 0, i32 2
  store ptr %4188, ptr %4189, align 8, !tbaa !696
  %4190 = load ptr, ptr %4142, align 8, !tbaa !697
  call void @blo_do_versions_oldnewmap_insert(ptr noundef %4190, ptr noundef %4188, ptr noundef %4188, i32 noundef 0) #15
  %4191 = getelementptr inbounds %struct.ID, ptr %4147, i64 0, i32 3
  %4192 = load ptr, ptr %4191, align 8, !tbaa !700
  %4193 = getelementptr inbounds %struct.ID, ptr %4188, i64 0, i32 3
  store ptr %4192, ptr %4193, align 8, !tbaa !701
  %4194 = getelementptr inbounds %struct.ID, ptr %4188, i64 0, i32 6
  %4195 = load i32, ptr %4194, align 4, !tbaa !702
  %4196 = add nsw i32 %4195, -1
  store i32 %4196, ptr %4194, align 4, !tbaa !702
  %4197 = getelementptr inbounds %struct.ID, ptr %4147, i64 0, i32 5
  %4198 = load i16, ptr %4197, align 2, !tbaa !703
  %4199 = and i16 %4198, 32
  %4200 = getelementptr inbounds %struct.ID, ptr %4188, i64 0, i32 5
  %4201 = load i16, ptr %4200, align 2, !tbaa !704
  %4202 = or i16 %4201, %4199
  store i16 %4202, ptr %4200, align 2, !tbaa !704
  %4203 = getelementptr inbounds %struct.ParticleSystem, ptr %4184, i64 0, i32 26
  store i32 0, ptr %4203, align 8, !tbaa !705
  %4204 = getelementptr inbounds %struct.ParticleSystem, ptr %4184, i64 0, i32 25
  store i32 1, ptr %4204, align 4, !tbaa !706
  %4205 = getelementptr inbounds %struct.Object, ptr %4147, i64 0, i32 109
  call void @BLI_addtail(ptr noundef nonnull %4205, ptr noundef %4184) #15
  %4206 = call ptr @modifier_new(i32 noundef 19) #15
  %4207 = getelementptr inbounds %struct.ModifierData, ptr %4206, i64 0, i32 6
  %4208 = call i32 @BLI_countlist(ptr noundef nonnull %4205) #15
  %4209 = call i64 (ptr, i64, ptr, ...) @BLI_snprintf(ptr noundef nonnull %4207, i64 noundef 64, ptr noundef nonnull @.str.16, i32 noundef %4208) #15
  %4210 = getelementptr inbounds %struct.ParticleSystemModifierData, ptr %4206, i64 0, i32 1
  store ptr %4184, ptr %4210, align 8, !tbaa !707
  %4211 = getelementptr inbounds %struct.Object, ptr %4147, i64 0, i32 26
  call void @BLI_addtail(ptr noundef nonnull %4211, ptr noundef %4206) #15
  %4212 = getelementptr inbounds %struct.PartEff, ptr %4180, i64 0, i32 11
  %4213 = load i32, ptr %4212, align 8, !tbaa !709
  %4214 = call i32 @llvm.smin.i32(i32 %4213, i32 100000)
  %4215 = getelementptr inbounds %struct.ParticleSettings, ptr %4188, i64 0, i32 63
  store i32 %4214, ptr %4215, align 4, !tbaa !710
  %4216 = getelementptr inbounds %struct.PartEff, ptr %4180, i64 0, i32 8
  %4217 = load float, ptr %4216, align 4, !tbaa !711
  %4218 = getelementptr inbounds %struct.ParticleSettings, ptr %4188, i64 0, i32 53
  %4219 = getelementptr inbounds %struct.PartEff, ptr %4180, i64 0, i32 9
  %4220 = getelementptr inbounds %struct.PartEff, ptr %4180, i64 0, i32 10
  %4221 = load <2 x float>, ptr %4219, align 8, !tbaa !120
  %4222 = getelementptr inbounds %struct.PartEff, ptr %4180, i64 0, i32 18
  %4223 = load float, ptr %4222, align 4, !tbaa !712
  %4224 = insertelement <4 x float> poison, float %4217, i64 0
  %4225 = shufflevector <2 x float> %4221, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %4226 = shufflevector <4 x float> %4224, <4 x float> %4225, <4 x i32> <i32 0, i32 4, i32 5, i32 poison>
  %4227 = insertelement <4 x float> %4226, float %4223, i64 3
  store <4 x float> %4227, ptr %4218, align 4, !tbaa !120
  %4228 = getelementptr inbounds %struct.PartEff, ptr %4180, i64 0, i32 13
  %4229 = load i32, ptr %4228, align 8, !tbaa !713
  %4230 = getelementptr inbounds %struct.ParticleSystem, ptr %4184, i64 0, i32 23
  store i32 %4229, ptr %4230, align 4, !tbaa !714
  %4231 = getelementptr inbounds %struct.PartEff, ptr %4180, i64 0, i32 38
  %4232 = load i16, ptr %4231, align 4, !tbaa !447
  %4233 = getelementptr inbounds %struct.ParticleSettings, ptr %4188, i64 0, i32 30
  store i16 %4232, ptr %4233, align 2, !tbaa !715
  %4234 = getelementptr inbounds %struct.PartEff, ptr %4180, i64 0, i32 29
  %4235 = load i16, ptr %4234, align 4, !tbaa !405
  %4236 = getelementptr inbounds %struct.ParticleSettings, ptr %4188, i64 0, i32 31
  store i16 %4235, ptr %4236, align 4, !tbaa !716
  %4237 = getelementptr inbounds %struct.PartEff, ptr %4180, i64 0, i32 12
  %4238 = load i32, ptr %4237, align 4, !tbaa !717
  %4239 = trunc i32 %4238 to i16
  %4240 = getelementptr inbounds %struct.ParticleSettings, ptr %4188, i64 0, i32 26
  store i16 %4239, ptr %4240, align 2, !tbaa !718
  %4241 = getelementptr inbounds %struct.PartEff, ptr %4180, i64 0, i32 44
  %4242 = load ptr, ptr %4241, align 8, !tbaa !719
  %4243 = getelementptr inbounds %struct.ParticleSettings, ptr %4188, i64 0, i32 124
  store ptr %4242, ptr %4243, align 8, !tbaa !720
  %4244 = getelementptr inbounds %struct.ParticleSettings, ptr %4188, i64 0, i32 25
  store i16 0, ptr %4244, align 8, !tbaa !721
  %4245 = getelementptr inbounds %struct.ParticleSettings, ptr %4188, i64 0, i32 24
  store i16 0, ptr %4245, align 2, !tbaa !722
  %4246 = getelementptr inbounds %struct.PartEff, ptr %4180, i64 0, i32 14
  %4247 = load float, ptr %4246, align 4, !tbaa !723
  %4248 = fmul float %4247, 2.500000e+01
  %4249 = getelementptr inbounds %struct.ParticleSettings, ptr %4188, i64 0, i32 69
  store float %4248, ptr %4249, align 4, !tbaa !724
  %4250 = getelementptr inbounds %struct.PartEff, ptr %4180, i64 0, i32 15
  %4251 = load float, ptr %4250, align 8, !tbaa !725
  %4252 = getelementptr inbounds %struct.ParticleSettings, ptr %4188, i64 0, i32 70
  store float %4251, ptr %4252, align 8, !tbaa !726
  %4253 = getelementptr inbounds %struct.PartEff, ptr %4180, i64 0, i32 16
  %4254 = load float, ptr %4253, align 4, !tbaa !727
  %4255 = fmul float %4254, 2.500000e+01
  %4256 = getelementptr inbounds %struct.ParticleSettings, ptr %4188, i64 0, i32 71
  store float %4255, ptr %4256, align 4, !tbaa !728
  %4257 = getelementptr inbounds %struct.PartEff, ptr %4180, i64 0, i32 20
  %4258 = load float, ptr %4257, align 4, !tbaa !729
  %4259 = getelementptr inbounds %struct.ParticleSettings, ptr %4188, i64 0, i32 87
  store float %4258, ptr %4259, align 4, !tbaa !730
  %4260 = getelementptr inbounds %struct.ParticleSettings, ptr %4188, i64 0, i32 84
  %4261 = getelementptr inbounds %struct.PartEff, ptr %4180, i64 0, i32 19
  call fastcc void @copy_v3_v3(ptr noundef nonnull %4260, ptr noundef nonnull %4261) #16
  %4262 = getelementptr inbounds %struct.PartEff, ptr %4180, i64 0, i32 5
  %4263 = load i16, ptr %4262, align 2, !tbaa !731
  %4264 = and i16 %4263, 1
  %4265 = icmp eq i16 %4264, 0
  %4266 = getelementptr inbounds %struct.PartEff, ptr %4180, i64 0, i32 3
  %4267 = load i16, ptr %4266, align 2, !tbaa !732
  br i1 %4265, label %4289, label %4268

4268:                                             ; preds = %4182
  %4269 = and i16 %4267, 4
  %4270 = icmp eq i16 %4269, 0
  br i1 %4270, label %4283, label %4271

4271:                                             ; preds = %4268
  %4272 = load float, ptr %4220, align 4, !tbaa !733
  %4273 = fdiv float %4272, 1.000000e+02
  %4274 = getelementptr inbounds %struct.ParticleSettings, ptr %4188, i64 0, i32 17
  store i16 6, ptr %4274, align 8, !tbaa !734
  %4275 = getelementptr inbounds %struct.ParticleSettings, ptr %4188, i64 0, i32 7
  store i16 2, ptr %4275, align 8, !tbaa !735
  %4276 = getelementptr inbounds %struct.ParticleSystem, ptr %4184, i64 0, i32 31
  %4277 = load i16, ptr %4276, align 4, !tbaa !736
  %4278 = or i16 %4277, 8
  store i16 %4278, ptr %4276, align 4, !tbaa !736
  %4279 = load float, ptr %4249, align 4, !tbaa !724
  %4280 = fmul float %4273, %4279
  store float %4280, ptr %4249, align 4, !tbaa !724
  %4281 = load float, ptr %4256, align 4, !tbaa !728
  %4282 = fmul float %4273, %4281
  store float %4282, ptr %4256, align 4, !tbaa !728
  br label %4289

4283:                                             ; preds = %4268
  %4284 = getelementptr inbounds %struct.ParticleSettings, ptr %4188, i64 0, i32 17
  store i16 5, ptr %4284, align 8, !tbaa !734
  %4285 = getelementptr inbounds %struct.ParticleSettings, ptr %4188, i64 0, i32 15
  %4286 = load i32, ptr %4285, align 8, !tbaa !737
  %4287 = or i32 %4286, 4096
  store i32 %4287, ptr %4285, align 8, !tbaa !737
  %4288 = getelementptr inbounds %struct.ParticleSettings, ptr %4188, i64 0, i32 116, i64 1
  store float 0x3FA47AE140000000, ptr %4288, align 4, !tbaa !120
  br label %4289

4289:                                             ; preds = %4182, %4271, %4283
  %4290 = getelementptr inbounds %struct.ParticleSettings, ptr %4188, i64 0, i32 12
  store i16 2, ptr %4290, align 2, !tbaa !738
  %4291 = shl i16 %4267, 9
  %4292 = and i16 %4291, 1024
  %4293 = zext nneg i16 %4292 to i32
  %4294 = getelementptr inbounds %struct.ParticleSettings, ptr %4188, i64 0, i32 5
  %4295 = load i32, ptr %4294, align 8, !tbaa !739
  %4296 = or i32 %4295, %4293
  %4297 = lshr i16 %4267, 1
  %4298 = and i16 %4297, 384
  %4299 = zext nneg i16 %4298 to i32
  %4300 = or i32 %4296, %4299
  %4301 = and i16 %4267, 32
  %4302 = lshr i16 %4267, 5
  %4303 = and i16 %4302, 64
  %4304 = or disjoint i16 %4303, %4301
  %4305 = zext nneg i16 %4304 to i32
  %4306 = or i32 %4300, %4305
  store i32 %4306, ptr %4294, align 8, !tbaa !739
  %4307 = lshr i16 %4267, 3
  %4308 = and i16 %4307, 1
  %4309 = getelementptr inbounds %struct.ParticleSettings, ptr %4188, i64 0, i32 8
  %4310 = load i16, ptr %4309, align 2, !tbaa !740
  %4311 = or i16 %4310, %4308
  store i16 %4311, ptr %4309, align 2, !tbaa !740
  %4312 = lshr i16 %4267, 4
  %4313 = and i16 %4312, 8
  %4314 = zext nneg i16 %4313 to i32
  %4315 = getelementptr inbounds %struct.ParticleSettings, ptr %4188, i64 0, i32 15
  %4316 = load i32, ptr %4315, align 8, !tbaa !737
  %4317 = or i32 %4316, %4314
  store i32 %4317, ptr %4315, align 8, !tbaa !737
  %4318 = getelementptr inbounds %struct.PartEff, ptr %4180, i64 0, i32 6
  %4319 = load i16, ptr %4318, align 8, !tbaa !741
  %4320 = getelementptr inbounds %struct.ParticleSystem, ptr %4184, i64 0, i32 36
  store i16 %4319, ptr %4320, align 4, !tbaa !405
  %4321 = getelementptr inbounds %struct.PartEff, ptr %4180, i64 0, i32 39
  %4322 = load i16, ptr %4321, align 2, !tbaa !742
  %4323 = getelementptr inbounds %struct.ParticleSystem, ptr %4184, i64 0, i32 36, i64 1
  store i16 %4322, ptr %4323, align 2, !tbaa !405
  %4324 = getelementptr inbounds %struct.ParticleSystem, ptr %4184, i64 0, i32 36, i64 2
  store i16 %4322, ptr %4324, align 4, !tbaa !405
  %4325 = getelementptr inbounds %struct.Object, ptr %4147, i64 0, i32 55
  %4326 = load i16, ptr %4325, align 8, !tbaa !100
  %4327 = and i16 %4326, 16
  %4328 = icmp eq i16 %4327, 0
  br i1 %4328, label %4349, label %4329

4329:                                             ; preds = %4289
  %4330 = load ptr, ptr %4138, align 8, !tbaa !34
  %4331 = icmp eq ptr %4330, null
  br i1 %4331, label %4349, label %4332

4332:                                             ; preds = %4329
  %4333 = getelementptr inbounds %struct.ParticleSettings, ptr %4188, i64 0, i32 125
  %4334 = getelementptr inbounds %struct.ParticleSettings, ptr %4188, i64 0, i32 17
  br label %4335

4335:                                             ; preds = %4332, %4346
  %4336 = phi ptr [ %4330, %4332 ], [ %4347, %4346 ]
  %4337 = getelementptr inbounds %struct.Object, ptr %4336, i64 0, i32 9
  %4338 = load ptr, ptr %4337, align 8, !tbaa !396
  %4339 = call ptr @blo_do_versions_newlibadr(ptr noundef %0, ptr noundef %1, ptr noundef %4338) #15
  %4340 = icmp eq ptr %4147, %4339
  br i1 %4340, label %4341, label %4346

4341:                                             ; preds = %4335
  store ptr %4336, ptr %4333, align 8, !tbaa !743
  %4342 = load i16, ptr %4325, align 8, !tbaa !100
  %4343 = and i16 %4342, -2065
  %4344 = or disjoint i16 %4343, 2048
  store i16 %4344, ptr %4325, align 8, !tbaa !100
  store i16 7, ptr %4334, align 8, !tbaa !734
  %4345 = load ptr, ptr %4142, align 8, !tbaa !697
  call void @blo_do_versions_oldnewmap_insert(ptr noundef %4345, ptr noundef nonnull %4336, ptr noundef nonnull %4336, i32 noundef 0) #15
  br label %4346

4346:                                             ; preds = %4335, %4341
  %4347 = load ptr, ptr %4336, align 8, !tbaa !34
  %4348 = icmp eq ptr %4347, null
  br i1 %4348, label %4349, label %4335, !llvm.loop !744

4349:                                             ; preds = %4346, %4329, %4289
  %4350 = call ptr @modifiers_findByType(ptr noundef nonnull %4147, i32 noundef 26) #15
  %4351 = icmp eq ptr %4350, null
  br i1 %4351, label %4362, label %4352

4352:                                             ; preds = %4349
  %4353 = getelementptr inbounds %struct.FluidsimModifierData, ptr %4350, i64 0, i32 1
  %4354 = load ptr, ptr %4353, align 8, !tbaa !745
  %4355 = icmp eq ptr %4354, null
  br i1 %4355, label %4362, label %4356

4356:                                             ; preds = %4352
  %4357 = getelementptr inbounds %struct.FluidsimSettings, ptr %4354, i64 0, i32 3
  %4358 = load i16, ptr %4357, align 8, !tbaa !747
  %4359 = icmp eq i16 %4358, 64
  br i1 %4359, label %4360, label %4362

4360:                                             ; preds = %4356
  %4361 = getelementptr inbounds %struct.ParticleSettings, ptr %4188, i64 0, i32 7
  store i16 3, ptr %4361, align 8, !tbaa !735
  br label %4362

4362:                                             ; preds = %4360, %4356, %4352, %4349
  %4363 = getelementptr inbounds %struct.Object, ptr %4147, i64 0, i32 24
  call fastcc void @do_version_free_effects_245(ptr noundef nonnull %4363) #16
  %4364 = call i32 @puts(ptr nonnull dereferenceable(1) @str)
  br label %4365

4365:                                             ; preds = %4179, %4362
  %4366 = load ptr, ptr %4147, align 8, !tbaa !34
  %4367 = icmp eq ptr %4366, null
  br i1 %4367, label %4143, label %4146, !llvm.loop !749

4368:                                             ; preds = %4143, %4387
  %4369 = phi ptr [ %4388, %4387 ], [ %4144, %4143 ]
  %4370 = getelementptr inbounds %struct.Scene, ptr %4369, i64 0, i32 20
  %4371 = load ptr, ptr %4370, align 8, !tbaa !418
  %4372 = getelementptr inbounds %struct.ToolSettings, ptr %4371, i64 0, i32 18, i32 4
  %4373 = load i16, ptr %4372, align 8, !tbaa !750
  %4374 = icmp eq i16 %4373, 0
  br i1 %4374, label %4375, label %4387

4375:                                             ; preds = %4368
  %4376 = getelementptr inbounds %struct.ToolSettings, ptr %4371, i64 0, i32 18
  %4377 = getelementptr inbounds %struct.ToolSettings, ptr %4371, i64 0, i32 18, i32 6
  store float 2.500000e-01, ptr %4377, align 8, !tbaa !752
  store <4 x i16> <i16 7, i16 5, i16 5, i16 -1>, ptr %4376, align 8, !tbaa !405
  br label %4378

4378:                                             ; preds = %4375, %4378
  %4379 = phi i64 [ 0, %4375 ], [ %4383, %4378 ]
  %4380 = getelementptr inbounds %struct.ToolSettings, ptr %4371, i64 0, i32 18, i32 4, i64 %4379
  %4381 = getelementptr inbounds %struct.ToolSettings, ptr %4371, i64 0, i32 18, i32 4, i64 %4379, i32 5
  store float 5.000000e+01, ptr %4381, align 4, !tbaa !753
  store i16 50, ptr %4380, align 8, !tbaa !750
  %4382 = getelementptr inbounds %struct.ToolSettings, ptr %4371, i64 0, i32 18, i32 4, i64 %4379, i32 1
  store i16 10, ptr %4382, align 2, !tbaa !754
  %4383 = add nuw nsw i64 %4379, 1
  %4384 = icmp eq i64 %4383, 6
  br i1 %4384, label %4385, label %4378, !llvm.loop !755

4385:                                             ; preds = %4378
  %4386 = getelementptr inbounds %struct.ToolSettings, ptr %4371, i64 0, i32 18, i32 4, i64 1, i32 5
  store float 1.000000e+02, ptr %4386, align 4, !tbaa !753
  br label %4387

4387:                                             ; preds = %4385, %4368
  %4388 = load ptr, ptr %4369, align 8, !tbaa !34
  %4389 = icmp eq ptr %4388, null
  br i1 %4389, label %4390, label %4368, !llvm.loop !756

4390:                                             ; preds = %4387, %4143, %4133
  %4391 = load i16, ptr %7, align 8, !tbaa !59
  %4392 = icmp slt i16 %4391, 245
  br i1 %4392, label %4399, label %4393

4393:                                             ; preds = %4390
  %4394 = icmp eq i16 %4391, 245
  br i1 %4394, label %4395, label %4640

4395:                                             ; preds = %4393
  %4396 = getelementptr inbounds %struct.Main, ptr %2, i64 0, i32 4
  %4397 = load i16, ptr %4396, align 2, !tbaa !556
  %4398 = icmp slt i16 %4397, 9
  br i1 %4398, label %4399, label %4432

4399:                                             ; preds = %4395, %4390
  %4400 = getelementptr inbounds %struct.Main, ptr %2, i64 0, i32 17
  %4401 = load ptr, ptr %4400, align 8, !tbaa !34
  %4402 = icmp eq ptr %4401, null
  br i1 %4402, label %4426, label %4403

4403:                                             ; preds = %4399, %4423
  %4404 = phi ptr [ %4424, %4423 ], [ %4401, %4399 ]
  %4405 = getelementptr inbounds %struct.Material, ptr %4404, i64 0, i32 51
  %4406 = load i32, ptr %4405, align 4, !tbaa !153
  %4407 = and i32 %4406, 134217728
  %4408 = icmp eq i32 %4407, 0
  br i1 %4408, label %4423, label %4409

4409:                                             ; preds = %4403, %4420
  %4410 = phi i64 [ %4421, %4420 ], [ 0, %4403 ]
  %4411 = getelementptr inbounds %struct.Material, ptr %4404, i64 0, i32 102, i64 %4410
  %4412 = load ptr, ptr %4411, align 8, !tbaa !34
  %4413 = icmp eq ptr %4412, null
  br i1 %4413, label %4420, label %4414

4414:                                             ; preds = %4409
  %4415 = getelementptr inbounds %struct.MTex, ptr %4412, i64 0, i32 5
  %4416 = load ptr, ptr %4415, align 8, !tbaa !508
  %4417 = icmp eq ptr %4416, null
  br i1 %4417, label %4420, label %4418

4418:                                             ; preds = %4414
  %4419 = getelementptr inbounds %struct.MTex, ptr %4412, i64 0, i32 18
  store i16 3, ptr %4419, align 8, !tbaa !757
  br label %4420

4420:                                             ; preds = %4409, %4414, %4418
  %4421 = add nuw nsw i64 %4410, 1
  %4422 = icmp eq i64 %4421, 18
  br i1 %4422, label %4423, label %4409, !llvm.loop !758

4423:                                             ; preds = %4420, %4403
  %4424 = load ptr, ptr %4404, align 8, !tbaa !34
  %4425 = icmp eq ptr %4424, null
  br i1 %4425, label %4426, label %4403, !llvm.loop !759

4426:                                             ; preds = %4423, %4399
  br i1 %4392, label %4435, label %4427

4427:                                             ; preds = %4426
  %4428 = icmp eq i16 %4391, 245
  br i1 %4428, label %4429, label %4549

4429:                                             ; preds = %4427
  %4430 = getelementptr inbounds %struct.Main, ptr %2, i64 0, i32 4
  %4431 = load i16, ptr %4430, align 2, !tbaa !556
  br label %4432

4432:                                             ; preds = %4429, %4395
  %4433 = phi i16 [ %4431, %4429 ], [ %4397, %4395 ]
  %4434 = icmp slt i16 %4433, 10
  br i1 %4434, label %4435, label %4452

4435:                                             ; preds = %4432, %4426
  %4436 = phi i16 [ 245, %4432 ], [ %4391, %4426 ]
  %4437 = phi i1 [ false, %4432 ], [ true, %4426 ]
  %4438 = getelementptr inbounds %struct.Main, ptr %2, i64 0, i32 13
  %4439 = load ptr, ptr %4438, align 8, !tbaa !34
  %4440 = icmp eq ptr %4439, null
  br i1 %4440, label %4446, label %4441

4441:                                             ; preds = %4435, %4441
  %4442 = phi ptr [ %4444, %4441 ], [ %4439, %4435 ]
  %4443 = getelementptr inbounds %struct.Object, ptr %4442, i64 0, i32 90
  store float 1.000000e+00, ptr %4443, align 4, !tbaa !760
  %4444 = load ptr, ptr %4442, align 8, !tbaa !34
  %4445 = icmp eq ptr %4444, null
  br i1 %4445, label %4446, label %4441, !llvm.loop !761

4446:                                             ; preds = %4441, %4435
  br i1 %4437, label %4458, label %4447

4447:                                             ; preds = %4446
  %4448 = icmp eq i16 %4436, 245
  br i1 %4448, label %4449, label %4546

4449:                                             ; preds = %4447
  %4450 = getelementptr inbounds %struct.Main, ptr %2, i64 0, i32 4
  %4451 = load i16, ptr %4450, align 2, !tbaa !556
  br label %4452

4452:                                             ; preds = %4449, %4432
  %4453 = phi i16 [ %4451, %4449 ], [ %4433, %4432 ]
  %4454 = icmp slt i16 %4453, 11
  br i1 %4454, label %4455, label %4516

4455:                                             ; preds = %4452
  %4456 = getelementptr inbounds %struct.Main, ptr %2, i64 0, i32 13
  %4457 = load ptr, ptr %4456, align 8, !tbaa !34
  br label %4458

4458:                                             ; preds = %4455, %4446
  %4459 = phi ptr [ %4457, %4455 ], [ %4439, %4446 ]
  %4460 = phi i1 [ false, %4455 ], [ true, %4446 ]
  %4461 = phi i16 [ 245, %4455 ], [ %4436, %4446 ]
  %4462 = icmp eq ptr %4459, null
  br i1 %4462, label %4510, label %4463

4463:                                             ; preds = %4458, %4507
  %4464 = phi ptr [ %4508, %4507 ], [ %4459, %4458 ]
  %4465 = getelementptr inbounds %struct.Object, ptr %4464, i64 0, i32 107
  %4466 = load ptr, ptr %4465, align 8, !tbaa !34
  %4467 = icmp eq ptr %4466, null
  br i1 %4467, label %4498, label %4468

4468:                                             ; preds = %4463, %4477
  %4469 = phi ptr [ %4496, %4477 ], [ %4466, %4463 ]
  %4470 = getelementptr inbounds %struct.bActionStrip, ptr %4469, i64 0, i32 2
  %4471 = load i16, ptr %4470, align 8, !tbaa !762
  %4472 = and i16 %4471, 2
  %4473 = icmp eq i16 %4472, 0
  br i1 %4473, label %4474, label %4477

4474:                                             ; preds = %4468
  %4475 = getelementptr inbounds %struct.bActionStrip, ptr %4469, i64 0, i32 15
  %4476 = load float, ptr %4475, align 8, !tbaa !764
  br label %4477

4477:                                             ; preds = %4468, %4474
  %4478 = phi float [ %4476, %4474 ], [ 1.000000e+00, %4468 ]
  %4479 = getelementptr inbounds %struct.bActionStrip, ptr %4469, i64 0, i32 10
  %4480 = load float, ptr %4479, align 4, !tbaa !765
  %4481 = getelementptr inbounds %struct.bActionStrip, ptr %4469, i64 0, i32 9
  %4482 = load float, ptr %4481, align 8, !tbaa !766
  %4483 = fsub float %4480, %4482
  %4484 = fcmp oeq float %4483, 0.000000e+00
  %4485 = select i1 %4484, float 1.000000e+00, float %4483
  %4486 = getelementptr inbounds %struct.bActionStrip, ptr %4469, i64 0, i32 12
  %4487 = load float, ptr %4486, align 4, !tbaa !767
  %4488 = getelementptr inbounds %struct.bActionStrip, ptr %4469, i64 0, i32 11
  %4489 = load float, ptr %4488, align 8, !tbaa !768
  %4490 = fsub float %4487, %4489
  %4491 = fmul float %4478, %4490
  %4492 = fdiv float %4485, %4491
  %4493 = getelementptr inbounds %struct.bActionStrip, ptr %4469, i64 0, i32 16
  %4494 = fcmp oeq float %4492, 0.000000e+00
  %4495 = select i1 %4494, float 1.000000e+00, float %4492
  store float %4495, ptr %4493, align 4, !tbaa !769
  %4496 = load ptr, ptr %4469, align 8, !tbaa !34
  %4497 = icmp eq ptr %4496, null
  br i1 %4497, label %4498, label %4468, !llvm.loop !770

4498:                                             ; preds = %4477, %4463
  %4499 = getelementptr inbounds %struct.Object, ptr %4464, i64 0, i32 111
  %4500 = load ptr, ptr %4499, align 8, !tbaa !384
  %4501 = icmp eq ptr %4500, null
  br i1 %4501, label %4507, label %4502

4502:                                             ; preds = %4498
  %4503 = getelementptr inbounds %struct.SoftBody, ptr %4500, i64 0, i32 21
  %4504 = load float, ptr %4503, align 8, !tbaa !771
  %4505 = getelementptr inbounds %struct.SoftBody, ptr %4500, i64 0, i32 46
  store float %4504, ptr %4505, align 4, !tbaa !772
  %4506 = getelementptr inbounds %struct.SoftBody, ptr %4500, i64 0, i32 45
  store float 1.000000e+00, ptr %4506, align 8, !tbaa !773
  br label %4507

4507:                                             ; preds = %4498, %4502
  %4508 = load ptr, ptr %4464, align 8, !tbaa !34
  %4509 = icmp eq ptr %4508, null
  br i1 %4509, label %4510, label %4463, !llvm.loop !774

4510:                                             ; preds = %4507, %4458
  br i1 %4460, label %4519, label %4511

4511:                                             ; preds = %4510
  %4512 = icmp eq i16 %4461, 245
  br i1 %4512, label %4513, label %4546

4513:                                             ; preds = %4511
  %4514 = getelementptr inbounds %struct.Main, ptr %2, i64 0, i32 4
  %4515 = load i16, ptr %4514, align 2, !tbaa !556
  br label %4516

4516:                                             ; preds = %4513, %4452
  %4517 = phi i16 [ %4515, %4513 ], [ %4453, %4452 ]
  %4518 = icmp slt i16 %4517, 14
  br i1 %4518, label %4519, label %4546

4519:                                             ; preds = %4516, %4510
  %4520 = load ptr, ptr %3853, align 8, !tbaa !34
  %4521 = icmp eq ptr %4520, null
  br i1 %4521, label %4546, label %4522

4522:                                             ; preds = %4519
  %4523 = getelementptr inbounds %struct.SeqIterator, ptr %5, i64 0, i32 4
  %4524 = getelementptr inbounds %struct.SeqIterator, ptr %5, i64 0, i32 3
  br label %4525

4525:                                             ; preds = %4522, %4541
  %4526 = phi ptr [ %4520, %4522 ], [ %4542, %4541 ]
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %5) #18
  %4527 = getelementptr inbounds %struct.Scene, ptr %4526, i64 0, i32 19
  %4528 = load ptr, ptr %4527, align 8, !tbaa !363
  call void @BKE_sequence_iterator_begin(ptr noundef %4528, ptr noundef nonnull %5, i8 noundef zeroext 0) #15
  %4529 = load i32, ptr %4523, align 8, !tbaa !364
  %4530 = icmp eq i32 %4529, 0
  br i1 %4530, label %4541, label %4531

4531:                                             ; preds = %4525, %4538
  %4532 = load ptr, ptr %4524, align 8, !tbaa !366
  %4533 = getelementptr inbounds %struct.Sequence, ptr %4532, i64 0, i32 46
  %4534 = load i32, ptr %4533, align 8, !tbaa !775
  %4535 = icmp eq i32 %4534, 0
  br i1 %4535, label %4536, label %4538

4536:                                             ; preds = %4531
  %4537 = getelementptr inbounds %struct.Sequence, ptr %4532, i64 0, i32 47
  store float 1.000000e+02, ptr %4537, align 4, !tbaa !776
  br label %4538

4538:                                             ; preds = %4531, %4536
  call void @BKE_sequence_iterator_next(ptr noundef nonnull %5) #15
  %4539 = load i32, ptr %4523, align 8, !tbaa !364
  %4540 = icmp eq i32 %4539, 0
  br i1 %4540, label %4541, label %4531, !llvm.loop !777

4541:                                             ; preds = %4538, %4525
  call void @BKE_sequence_iterator_end(ptr noundef nonnull %5) #15
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %5) #18
  %4542 = load ptr, ptr %4526, align 8, !tbaa !34
  %4543 = icmp eq ptr %4542, null
  br i1 %4543, label %4544, label %4525, !llvm.loop !778

4544:                                             ; preds = %4541
  %4545 = load i16, ptr %7, align 8, !tbaa !59
  br label %4546

4546:                                             ; preds = %4544, %4519, %4447, %4516, %4511
  %4547 = phi i16 [ %4545, %4544 ], [ %4391, %4519 ], [ %4391, %4447 ], [ %4391, %4516 ], [ %4391, %4511 ]
  %4548 = icmp slt i16 %4547, 245
  br i1 %4548, label %4556, label %4549

4549:                                             ; preds = %4427, %4546
  %4550 = phi i16 [ %4547, %4546 ], [ %4391, %4427 ]
  %4551 = icmp eq i16 %4550, 245
  br i1 %4551, label %4552, label %4640

4552:                                             ; preds = %4549
  %4553 = getelementptr inbounds %struct.Main, ptr %2, i64 0, i32 4
  %4554 = load i16, ptr %4553, align 2, !tbaa !556
  %4555 = icmp slt i16 %4554, 15
  br i1 %4555, label %4556, label %4610

4556:                                             ; preds = %4546, %4552
  %4557 = load ptr, ptr %3853, align 8
  call fastcc void @idproperties_fix_group_lengths(ptr %4557) #16
  %4558 = getelementptr inbounds %struct.Main, ptr %2, i64 0, i32 12
  %4559 = load ptr, ptr %4558, align 8
  call fastcc void @idproperties_fix_group_lengths(ptr %4559) #16
  %4560 = getelementptr inbounds %struct.Main, ptr %2, i64 0, i32 13
  %4561 = load ptr, ptr %4560, align 8
  call fastcc void @idproperties_fix_group_lengths(ptr %4561) #16
  %4562 = getelementptr inbounds %struct.Main, ptr %2, i64 0, i32 14
  %4563 = load ptr, ptr %4562, align 8
  call fastcc void @idproperties_fix_group_lengths(ptr %4563) #16
  %4564 = getelementptr inbounds %struct.Main, ptr %2, i64 0, i32 15
  %4565 = load ptr, ptr %4564, align 8
  call fastcc void @idproperties_fix_group_lengths(ptr %4565) #16
  %4566 = getelementptr inbounds %struct.Main, ptr %2, i64 0, i32 16
  %4567 = load ptr, ptr %4566, align 8
  call fastcc void @idproperties_fix_group_lengths(ptr %4567) #16
  %4568 = getelementptr inbounds %struct.Main, ptr %2, i64 0, i32 17
  %4569 = load ptr, ptr %4568, align 8
  call fastcc void @idproperties_fix_group_lengths(ptr %4569) #16
  %4570 = getelementptr inbounds %struct.Main, ptr %2, i64 0, i32 18
  %4571 = load ptr, ptr %4570, align 8
  call fastcc void @idproperties_fix_group_lengths(ptr %4571) #16
  %4572 = getelementptr inbounds %struct.Main, ptr %2, i64 0, i32 19
  %4573 = load ptr, ptr %4572, align 8
  call fastcc void @idproperties_fix_group_lengths(ptr %4573) #16
  %4574 = getelementptr inbounds %struct.Main, ptr %2, i64 0, i32 20
  %4575 = load ptr, ptr %4574, align 8
  call fastcc void @idproperties_fix_group_lengths(ptr %4575) #16
  %4576 = getelementptr inbounds %struct.Main, ptr %2, i64 0, i32 21
  %4577 = load ptr, ptr %4576, align 8
  call fastcc void @idproperties_fix_group_lengths(ptr %4577) #16
  %4578 = getelementptr inbounds %struct.Main, ptr %2, i64 0, i32 22
  %4579 = load ptr, ptr %4578, align 8
  call fastcc void @idproperties_fix_group_lengths(ptr %4579) #16
  %4580 = getelementptr inbounds %struct.Main, ptr %2, i64 0, i32 23
  %4581 = load ptr, ptr %4580, align 8
  call fastcc void @idproperties_fix_group_lengths(ptr %4581) #16
  %4582 = getelementptr inbounds %struct.Main, ptr %2, i64 0, i32 24
  %4583 = load ptr, ptr %4582, align 8
  call fastcc void @idproperties_fix_group_lengths(ptr %4583) #16
  %4584 = getelementptr inbounds %struct.Main, ptr %2, i64 0, i32 25
  %4585 = load ptr, ptr %4584, align 8
  call fastcc void @idproperties_fix_group_lengths(ptr %4585) #16
  %4586 = getelementptr inbounds %struct.Main, ptr %2, i64 0, i32 26
  %4587 = load ptr, ptr %4586, align 8
  call fastcc void @idproperties_fix_group_lengths(ptr %4587) #16
  %4588 = getelementptr inbounds %struct.Main, ptr %2, i64 0, i32 27
  %4589 = load ptr, ptr %4588, align 8
  call fastcc void @idproperties_fix_group_lengths(ptr %4589) #16
  %4590 = getelementptr inbounds %struct.Main, ptr %2, i64 0, i32 28
  %4591 = load ptr, ptr %4590, align 8
  call fastcc void @idproperties_fix_group_lengths(ptr %4591) #16
  %4592 = getelementptr inbounds %struct.Main, ptr %2, i64 0, i32 29
  %4593 = load ptr, ptr %4592, align 8
  call fastcc void @idproperties_fix_group_lengths(ptr %4593) #16
  %4594 = getelementptr inbounds %struct.Main, ptr %2, i64 0, i32 31
  %4595 = load ptr, ptr %4594, align 8
  call fastcc void @idproperties_fix_group_lengths(ptr %4595) #16
  %4596 = getelementptr inbounds %struct.Main, ptr %2, i64 0, i32 32
  %4597 = load ptr, ptr %4596, align 8
  call fastcc void @idproperties_fix_group_lengths(ptr %4597) #16
  %4598 = getelementptr inbounds %struct.Main, ptr %2, i64 0, i32 33
  %4599 = load ptr, ptr %4598, align 8
  call fastcc void @idproperties_fix_group_lengths(ptr %4599) #16
  %4600 = getelementptr inbounds %struct.Main, ptr %2, i64 0, i32 34
  %4601 = load ptr, ptr %4600, align 8
  call fastcc void @idproperties_fix_group_lengths(ptr %4601) #16
  %4602 = getelementptr inbounds %struct.Main, ptr %2, i64 0, i32 35
  %4603 = load ptr, ptr %4602, align 8
  call fastcc void @idproperties_fix_group_lengths(ptr %4603) #16
  %4604 = getelementptr inbounds %struct.Main, ptr %2, i64 0, i32 36
  %4605 = load ptr, ptr %4604, align 8
  call fastcc void @idproperties_fix_group_lengths(ptr %4605) #16
  %4606 = getelementptr inbounds %struct.Main, ptr %2, i64 0, i32 37
  %4607 = load ptr, ptr %4606, align 8
  call fastcc void @idproperties_fix_group_lengths(ptr %4607) #16
  %4608 = load i16, ptr %7, align 8, !tbaa !59
  %4609 = icmp slt i16 %4608, 246
  br i1 %4609, label %4610, label %4640

4610:                                             ; preds = %4552, %4556
  %4611 = phi i16 [ %4608, %4556 ], [ 245, %4552 ]
  %4612 = getelementptr inbounds %struct.Main, ptr %2, i64 0, i32 13
  %4613 = load ptr, ptr %4612, align 8, !tbaa !34
  %4614 = icmp eq ptr %4613, null
  br i1 %4614, label %4696, label %4618

4615:                                             ; preds = %4637, %4618
  %4616 = load ptr, ptr %4619, align 8, !tbaa !34
  %4617 = icmp eq ptr %4616, null
  br i1 %4617, label %4650, label %4618, !llvm.loop !779

4618:                                             ; preds = %4610, %4615
  %4619 = phi ptr [ %4616, %4615 ], [ %4613, %4610 ]
  %4620 = getelementptr inbounds %struct.Object, ptr %4619, i64 0, i32 94
  %4621 = load ptr, ptr %4620, align 8, !tbaa !34
  %4622 = icmp eq ptr %4621, null
  br i1 %4622, label %4615, label %4623

4623:                                             ; preds = %4618, %4637
  %4624 = phi ptr [ %4638, %4637 ], [ %4621, %4618 ]
  %4625 = getelementptr inbounds %struct.bActuator, ptr %4624, i64 0, i32 3
  %4626 = load i16, ptr %4625, align 8, !tbaa !168
  %4627 = icmp eq i16 %4626, 0
  br i1 %4627, label %4628, label %4637

4628:                                             ; preds = %4623
  %4629 = getelementptr inbounds %struct.bActuator, ptr %4624, i64 0, i32 8
  %4630 = load ptr, ptr %4629, align 8, !tbaa !170
  %4631 = getelementptr inbounds %struct.bObjectActuator, ptr %4630, i64 0, i32 9
  %4632 = load <2 x float>, ptr %4631, align 4, !tbaa !120
  %4633 = fneg <2 x float> %4632
  store <2 x float> %4633, ptr %4631, align 4, !tbaa !120
  %4634 = getelementptr inbounds %struct.bObjectActuator, ptr %4630, i64 0, i32 9, i64 2
  %4635 = load float, ptr %4634, align 4, !tbaa !120
  %4636 = fneg float %4635
  store float %4636, ptr %4634, align 4, !tbaa !120
  br label %4637

4637:                                             ; preds = %4623, %4628
  %4638 = load ptr, ptr %4624, align 8, !tbaa !34
  %4639 = icmp eq ptr %4638, null
  br i1 %4639, label %4615, label %4623, !llvm.loop !780

4640:                                             ; preds = %4393, %3983, %3960, %3942, %3898, %4131, %3882, %4556, %4549
  %4641 = phi i16 [ %4550, %4549 ], [ %4608, %4556 ], [ %3880, %3882 ], [ %4129, %4131 ], [ %3880, %3898 ], [ %3880, %3942 ], [ %3880, %3960 ], [ %3880, %3983 ], [ %4391, %4393 ]
  %4642 = icmp eq i16 %4641, 246
  br i1 %4642, label %4643, label %4737

4643:                                             ; preds = %4640
  %4644 = getelementptr inbounds %struct.Main, ptr %2, i64 0, i32 4
  %4645 = load i16, ptr %4644, align 2, !tbaa !556
  %4646 = icmp slt i16 %4645, 1
  br i1 %4646, label %4647, label %4692

4647:                                             ; preds = %4643
  %4648 = getelementptr inbounds %struct.Main, ptr %2, i64 0, i32 13
  %4649 = load ptr, ptr %4648, align 8, !tbaa !34
  br label %4650

4650:                                             ; preds = %4615, %4647
  %4651 = phi i16 [ 246, %4647 ], [ %4611, %4615 ]
  %4652 = phi ptr [ %4649, %4647 ], [ %4613, %4615 ]
  %4653 = icmp eq ptr %4652, null
  br i1 %4653, label %4687, label %4654

4654:                                             ; preds = %4650, %4682
  %4655 = phi ptr [ %4683, %4682 ], [ %4652, %4650 ]
  %4656 = getelementptr inbounds %struct.Object, ptr %4655, i64 0, i32 117
  %4657 = load ptr, ptr %4656, align 8, !tbaa !781
  %4658 = icmp eq ptr %4657, null
  br i1 %4658, label %4682, label %4659

4659:                                             ; preds = %4654
  %4660 = call ptr @modifier_new(i32 noundef 26) #15
  %4661 = getelementptr inbounds %struct.Object, ptr %4655, i64 0, i32 26
  call void @BLI_addhead(ptr noundef nonnull %4661, ptr noundef %4660) #15
  %4662 = load ptr, ptr @MEM_freeN, align 8, !tbaa !34
  %4663 = getelementptr inbounds %struct.FluidsimModifierData, ptr %4660, i64 0, i32 1
  %4664 = load ptr, ptr %4663, align 8, !tbaa !745
  call void %4662(ptr noundef %4664) #15
  %4665 = load ptr, ptr @MEM_dupallocN, align 8, !tbaa !34
  %4666 = load ptr, ptr %4656, align 8, !tbaa !781
  %4667 = call ptr %4665(ptr noundef %4666) #15
  store ptr %4667, ptr %4663, align 8, !tbaa !745
  %4668 = getelementptr inbounds %struct.ID, ptr %4655, i64 0, i32 3
  %4669 = load ptr, ptr %4668, align 8, !tbaa !700
  %4670 = load ptr, ptr %4656, align 8, !tbaa !781
  %4671 = getelementptr inbounds %struct.FluidsimSettings, ptr %4670, i64 0, i32 30
  %4672 = load ptr, ptr %4671, align 8, !tbaa !782
  %4673 = call ptr @blo_do_versions_newlibadr_us(ptr noundef %0, ptr noundef %4669, ptr noundef %4672) #15
  %4674 = load ptr, ptr %4663, align 8, !tbaa !745
  %4675 = getelementptr inbounds %struct.FluidsimSettings, ptr %4674, i64 0, i32 30
  store ptr %4673, ptr %4675, align 8, !tbaa !782
  %4676 = load ptr, ptr @MEM_freeN, align 8, !tbaa !34
  %4677 = load ptr, ptr %4656, align 8, !tbaa !781
  call void %4676(ptr noundef %4677) #15
  %4678 = load ptr, ptr %4663, align 8, !tbaa !745
  %4679 = getelementptr inbounds %struct.FluidsimSettings, ptr %4678, i64 0, i32 52
  store i32 2147483647, ptr %4679, align 8, !tbaa !783
  %4680 = getelementptr inbounds %struct.FluidsimSettings, ptr %4678, i64 0, i32 39
  store i32 0, ptr %4680, align 8, !tbaa !784
  %4681 = getelementptr inbounds %struct.FluidsimSettings, ptr %4678, i64 0, i32 43
  store ptr null, ptr %4681, align 8, !tbaa !785
  br label %4682

4682:                                             ; preds = %4654, %4659
  %4683 = load ptr, ptr %4655, align 8, !tbaa !34
  %4684 = icmp eq ptr %4683, null
  br i1 %4684, label %4685, label %4654, !llvm.loop !786

4685:                                             ; preds = %4682
  %4686 = load i16, ptr %7, align 8, !tbaa !59
  br label %4687

4687:                                             ; preds = %4685, %4650
  %4688 = phi i16 [ %4686, %4685 ], [ %4651, %4650 ]
  %4689 = icmp slt i16 %4688, 246
  br i1 %4689, label %4696, label %4690

4690:                                             ; preds = %4687
  %4691 = icmp eq i16 %4688, 246
  br i1 %4691, label %4692, label %4737

4692:                                             ; preds = %4643, %4690
  %4693 = getelementptr inbounds %struct.Main, ptr %2, i64 0, i32 4
  %4694 = load i16, ptr %4693, align 2, !tbaa !556
  %4695 = icmp slt i16 %4694, 1
  br i1 %4695, label %4696, label %4712

4696:                                             ; preds = %4610, %4692, %4687
  %4697 = phi i16 [ 246, %4692 ], [ %4688, %4687 ], [ %4611, %4610 ]
  %4698 = getelementptr inbounds %struct.Main, ptr %2, i64 0, i32 14
  %4699 = load ptr, ptr %4698, align 8, !tbaa !34
  %4700 = icmp eq ptr %4699, null
  br i1 %4700, label %4707, label %4701

4701:                                             ; preds = %4696, %4701
  %4702 = phi ptr [ %4703, %4701 ], [ %4699, %4696 ]
  call fastcc void @alphasort_version_246(ptr noundef %0, ptr noundef %1, ptr noundef nonnull %4702) #16
  %4703 = load ptr, ptr %4702, align 8, !tbaa !34
  %4704 = icmp eq ptr %4703, null
  br i1 %4704, label %4705, label %4701, !llvm.loop !787

4705:                                             ; preds = %4701
  %4706 = load i16, ptr %7, align 8, !tbaa !59
  br label %4707

4707:                                             ; preds = %4705, %4696
  %4708 = phi i16 [ %4706, %4705 ], [ %4697, %4696 ]
  %4709 = icmp slt i16 %4708, 246
  br i1 %4709, label %4716, label %4710

4710:                                             ; preds = %4707
  %4711 = icmp eq i16 %4708, 246
  br i1 %4711, label %4712, label %4737

4712:                                             ; preds = %4692, %4710
  %4713 = getelementptr inbounds %struct.Main, ptr %2, i64 0, i32 4
  %4714 = load i16, ptr %4713, align 2, !tbaa !556
  %4715 = icmp slt i16 %4714, 1
  br i1 %4715, label %4716, label %4744

4716:                                             ; preds = %4712, %4707
  %4717 = phi i16 [ 246, %4712 ], [ %4708, %4707 ]
  %4718 = getelementptr inbounds %struct.Main, ptr %2, i64 0, i32 13
  %4719 = load ptr, ptr %4718, align 8, !tbaa !34
  %4720 = icmp eq ptr %4719, null
  br i1 %4720, label %4744, label %4721

4721:                                             ; preds = %4716, %4732
  %4722 = phi ptr [ %4733, %4732 ], [ %4719, %4716 ]
  %4723 = getelementptr inbounds %struct.Object, ptr %4722, i64 0, i32 110
  %4724 = load ptr, ptr %4723, align 8, !tbaa !788
  %4725 = icmp eq ptr %4724, null
  br i1 %4725, label %4732, label %4726

4726:                                             ; preds = %4721
  %4727 = getelementptr inbounds %struct.PartDeflect, ptr %4724, i64 0, i32 2
  %4728 = load i16, ptr %4727, align 2, !tbaa !789
  %4729 = icmp eq i16 %4728, 4
  br i1 %4729, label %4730, label %4732

4730:                                             ; preds = %4726
  %4731 = getelementptr inbounds %struct.PartDeflect, ptr %4724, i64 0, i32 38
  store float 0.000000e+00, ptr %4731, align 8, !tbaa !791
  br label %4732

4732:                                             ; preds = %4721, %4726, %4730
  %4733 = load ptr, ptr %4722, align 8, !tbaa !34
  %4734 = icmp eq ptr %4733, null
  br i1 %4734, label %4735, label %4721, !llvm.loop !792

4735:                                             ; preds = %4732
  %4736 = icmp slt i16 %4717, 247
  br i1 %4736, label %4744, label %4737

4737:                                             ; preds = %4640, %4690, %4710, %4735
  %4738 = phi i16 [ %4717, %4735 ], [ %4708, %4710 ], [ %4688, %4690 ], [ %4641, %4640 ]
  %4739 = icmp eq i16 %4738, 247
  br i1 %4739, label %4740, label %4961

4740:                                             ; preds = %4737
  %4741 = getelementptr inbounds %struct.Main, ptr %2, i64 0, i32 4
  %4742 = load i16, ptr %4741, align 2, !tbaa !556
  %4743 = icmp slt i16 %4742, 2
  br i1 %4743, label %4744, label %4762

4744:                                             ; preds = %4716, %4712, %4740, %4735
  %4745 = phi i16 [ %4738, %4740 ], [ %4717, %4735 ], [ 246, %4712 ], [ %4717, %4716 ]
  %4746 = phi i1 [ false, %4740 ], [ true, %4735 ], [ true, %4712 ], [ true, %4716 ]
  %4747 = phi i16 [ 247, %4740 ], [ %4717, %4735 ], [ 246, %4712 ], [ %4717, %4716 ]
  %4748 = getelementptr inbounds %struct.Main, ptr %2, i64 0, i32 13
  %4749 = load ptr, ptr %4748, align 8, !tbaa !34
  %4750 = icmp eq ptr %4749, null
  br i1 %4750, label %4759, label %4751

4751:                                             ; preds = %4744, %4751
  %4752 = phi ptr [ %4757, %4751 ], [ %4749, %4744 ]
  %4753 = getelementptr inbounds %struct.Object, ptr %4752, i64 0, i32 99
  %4754 = load i32, ptr %4753, align 8, !tbaa !164
  %4755 = or i32 %4754, 65536
  store i32 %4755, ptr %4753, align 8, !tbaa !164
  %4756 = getelementptr inbounds %struct.Object, ptr %4752, i64 0, i32 74
  store float 0x3FAEB851E0000000, ptr %4756, align 8, !tbaa !793
  %4757 = load ptr, ptr %4752, align 8, !tbaa !34
  %4758 = icmp eq ptr %4757, null
  br i1 %4758, label %4759, label %4751, !llvm.loop !794

4759:                                             ; preds = %4751, %4744
  br i1 %4746, label %4767, label %4760

4760:                                             ; preds = %4759
  %4761 = icmp eq i16 %4747, 247
  br i1 %4761, label %4762, label %4961

4762:                                             ; preds = %4740, %4760
  %4763 = phi i16 [ %4745, %4760 ], [ %4738, %4740 ]
  %4764 = getelementptr inbounds %struct.Main, ptr %2, i64 0, i32 4
  %4765 = load i16, ptr %4764, align 2, !tbaa !556
  %4766 = icmp slt i16 %4765, 3
  br i1 %4766, label %4767, label %4791

4767:                                             ; preds = %4762, %4759
  %4768 = phi i16 [ 247, %4762 ], [ %4747, %4759 ]
  %4769 = phi i1 [ false, %4762 ], [ true, %4759 ]
  %4770 = phi i16 [ %4763, %4762 ], [ %4745, %4759 ]
  %4771 = getelementptr inbounds %struct.Main, ptr %2, i64 0, i32 13
  %4772 = load ptr, ptr %4771, align 8, !tbaa !34
  %4773 = icmp eq ptr %4772, null
  br i1 %4773, label %4785, label %4774

4774:                                             ; preds = %4767, %4782
  %4775 = phi ptr [ %4783, %4782 ], [ %4772, %4767 ]
  %4776 = getelementptr inbounds %struct.Object, ptr %4775, i64 0, i32 99
  %4777 = load i32, ptr %4776, align 8, !tbaa !164
  %4778 = and i32 %4777, 4
  %4779 = icmp eq i32 %4778, 0
  br i1 %4779, label %4780, label %4782

4780:                                             ; preds = %4774
  %4781 = and i32 %4777, -136710
  store i32 %4781, ptr %4776, align 8, !tbaa !164
  br label %4782

4782:                                             ; preds = %4774, %4780
  %4783 = load ptr, ptr %4775, align 8, !tbaa !34
  %4784 = icmp eq ptr %4783, null
  br i1 %4784, label %4785, label %4774, !llvm.loop !795

4785:                                             ; preds = %4782, %4767
  br i1 %4769, label %4795, label %4786

4786:                                             ; preds = %4785
  %4787 = icmp eq i16 %4768, 247
  br i1 %4787, label %4788, label %4961

4788:                                             ; preds = %4786
  %4789 = getelementptr inbounds %struct.Main, ptr %2, i64 0, i32 4
  %4790 = load i16, ptr %4789, align 2, !tbaa !556
  br label %4791

4791:                                             ; preds = %4788, %4762
  %4792 = phi i16 [ %4770, %4788 ], [ %4763, %4762 ]
  %4793 = phi i16 [ %4790, %4788 ], [ %4765, %4762 ]
  %4794 = icmp slt i16 %4793, 5
  br i1 %4794, label %4795, label %4814

4795:                                             ; preds = %4791, %4785
  %4796 = phi i16 [ 247, %4791 ], [ %4768, %4785 ]
  %4797 = phi i1 [ false, %4791 ], [ true, %4785 ]
  %4798 = phi i16 [ %4792, %4791 ], [ %4770, %4785 ]
  %4799 = getelementptr inbounds %struct.Main, ptr %2, i64 0, i32 21
  %4800 = load ptr, ptr %4799, align 8, !tbaa !34
  %4801 = icmp eq ptr %4800, null
  br i1 %4801, label %4808, label %4802

4802:                                             ; preds = %4795, %4802
  %4803 = phi ptr [ %4806, %4802 ], [ %4800, %4795 ]
  %4804 = getelementptr inbounds %struct.Lamp, ptr %4803, i64 0, i32 52
  store i16 1, ptr %4804, align 2, !tbaa !796
  %4805 = getelementptr inbounds %struct.Lamp, ptr %4803, i64 0, i32 63
  store float 1.000000e+00, ptr %4805, align 8, !tbaa !797
  %4806 = load ptr, ptr %4803, align 8, !tbaa !34
  %4807 = icmp eq ptr %4806, null
  br i1 %4807, label %4808, label %4802, !llvm.loop !798

4808:                                             ; preds = %4802, %4795
  br i1 %4797, label %4818, label %4809

4809:                                             ; preds = %4808
  %4810 = icmp eq i16 %4796, 247
  br i1 %4810, label %4811, label %4961

4811:                                             ; preds = %4809
  %4812 = getelementptr inbounds %struct.Main, ptr %2, i64 0, i32 4
  %4813 = load i16, ptr %4812, align 2, !tbaa !556
  br label %4814

4814:                                             ; preds = %4811, %4791
  %4815 = phi i16 [ %4798, %4811 ], [ %4792, %4791 ]
  %4816 = phi i16 [ %4813, %4811 ], [ %4793, %4791 ]
  %4817 = icmp slt i16 %4816, 6
  br i1 %4817, label %4818, label %4862

4818:                                             ; preds = %4814, %4808
  %4819 = phi i16 [ 247, %4814 ], [ %4796, %4808 ]
  %4820 = phi i1 [ false, %4814 ], [ true, %4808 ]
  %4821 = phi i16 [ %4815, %4814 ], [ %4798, %4808 ]
  %4822 = getelementptr inbounds %struct.Main, ptr %2, i64 0, i32 15
  %4823 = load ptr, ptr %4822, align 8, !tbaa !34
  %4824 = icmp eq ptr %4823, null
  br i1 %4824, label %4856, label %4828

4825:                                             ; preds = %4853, %4828
  %4826 = load ptr, ptr %4829, align 8, !tbaa !34
  %4827 = icmp eq ptr %4826, null
  br i1 %4827, label %4856, label %4828, !llvm.loop !799

4828:                                             ; preds = %4818, %4825
  %4829 = phi ptr [ %4826, %4825 ], [ %4823, %4818 ]
  %4830 = getelementptr inbounds %struct.Curve, ptr %4829, i64 0, i32 3
  %4831 = load ptr, ptr %4830, align 8, !tbaa !34
  %4832 = icmp eq ptr %4831, null
  br i1 %4832, label %4825, label %4833

4833:                                             ; preds = %4828, %4853
  %4834 = phi ptr [ %4854, %4853 ], [ %4831, %4828 ]
  %4835 = getelementptr inbounds %struct.Nurb, ptr %4834, i64 0, i32 20
  store i16 3, ptr %4835, align 2, !tbaa !800
  %4836 = getelementptr inbounds %struct.Nurb, ptr %4834, i64 0, i32 7
  %4837 = load i32, ptr %4836, align 4, !tbaa !532
  %4838 = icmp sgt i32 %4837, 1
  br i1 %4838, label %4839, label %4853

4839:                                             ; preds = %4833
  %4840 = getelementptr inbounds %struct.Nurb, ptr %4834, i64 0, i32 9
  %4841 = getelementptr inbounds %struct.Nurb, ptr %4834, i64 0, i32 6
  %4842 = load i32, ptr %4841, align 8, !tbaa !527
  %4843 = load <2 x i16>, ptr %4840, align 4, !tbaa !405
  %4844 = sitofp <2 x i16> %4843 to <2 x float>
  %4845 = insertelement <2 x i32> poison, i32 %4842, i64 0
  %4846 = insertelement <2 x i32> %4845, i32 %4837, i64 1
  %4847 = sitofp <2 x i32> %4846 to <2 x float>
  %4848 = fdiv <2 x float> %4844, %4847
  %4849 = fadd <2 x float> %4848, <float 5.000000e-01, float 5.000000e-01>
  %4850 = fptosi <2 x float> %4849 to <2 x i32>
  %4851 = call <2 x i32> @llvm.smax.v2i32(<2 x i32> %4850, <2 x i32> <i32 1, i32 1>)
  %4852 = trunc <2 x i32> %4851 to <2 x i16>
  store <2 x i16> %4852, ptr %4840, align 4, !tbaa !405
  br label %4853

4853:                                             ; preds = %4839, %4833
  %4854 = load ptr, ptr %4834, align 8, !tbaa !34
  %4855 = icmp eq ptr %4854, null
  br i1 %4855, label %4825, label %4833, !llvm.loop !801

4856:                                             ; preds = %4825, %4818
  br i1 %4820, label %4866, label %4857

4857:                                             ; preds = %4856
  %4858 = icmp eq i16 %4819, 247
  br i1 %4858, label %4859, label %4961

4859:                                             ; preds = %4857
  %4860 = getelementptr inbounds %struct.Main, ptr %2, i64 0, i32 4
  %4861 = load i16, ptr %4860, align 2, !tbaa !556
  br label %4862

4862:                                             ; preds = %4859, %4814
  %4863 = phi i16 [ %4821, %4859 ], [ %4815, %4814 ]
  %4864 = phi i16 [ %4861, %4859 ], [ %4816, %4814 ]
  %4865 = icmp slt i16 %4864, 7
  br i1 %4865, label %4866, label %4904

4866:                                             ; preds = %4862, %4856
  %4867 = phi i16 [ 247, %4862 ], [ %4819, %4856 ]
  %4868 = phi i1 [ false, %4862 ], [ true, %4856 ]
  %4869 = phi i16 [ %4863, %4862 ], [ %4821, %4856 ]
  %4870 = getelementptr inbounds %struct.Main, ptr %2, i64 0, i32 13
  %4871 = load ptr, ptr %4870, align 8, !tbaa !34
  %4872 = icmp eq ptr %4871, null
  br i1 %4872, label %4898, label %4876

4873:                                             ; preds = %4895, %4876
  %4874 = load ptr, ptr %4877, align 8, !tbaa !34
  %4875 = icmp eq ptr %4874, null
  br i1 %4875, label %4898, label %4876, !llvm.loop !802

4876:                                             ; preds = %4866, %4873
  %4877 = phi ptr [ %4874, %4873 ], [ %4871, %4866 ]
  %4878 = getelementptr inbounds %struct.Object, ptr %4877, i64 0, i32 94
  %4879 = load ptr, ptr %4878, align 8, !tbaa !34
  %4880 = icmp eq ptr %4879, null
  br i1 %4880, label %4873, label %4881

4881:                                             ; preds = %4876, %4895
  %4882 = phi ptr [ %4896, %4895 ], [ %4879, %4876 ]
  %4883 = getelementptr inbounds %struct.bActuator, ptr %4882, i64 0, i32 3
  %4884 = load i16, ptr %4883, align 8, !tbaa !168
  %4885 = icmp eq i16 %4884, 9
  br i1 %4885, label %4886, label %4895

4886:                                             ; preds = %4881
  %4887 = getelementptr inbounds %struct.bActuator, ptr %4882, i64 0, i32 8
  %4888 = load ptr, ptr %4887, align 8, !tbaa !170
  %4889 = load i16, ptr %4888, align 4, !tbaa !803
  %4890 = icmp eq i16 %4889, 1
  br i1 %4890, label %4891, label %4895

4891:                                             ; preds = %4886
  %4892 = getelementptr inbounds %struct.bConstraintActuator, ptr %4888, i64 0, i32 2
  %4893 = load i16, ptr %4892, align 4, !tbaa !805
  %4894 = or i16 %4893, 1024
  store i16 %4894, ptr %4892, align 4, !tbaa !805
  br label %4895

4895:                                             ; preds = %4886, %4891, %4881
  %4896 = load ptr, ptr %4882, align 8, !tbaa !34
  %4897 = icmp eq ptr %4896, null
  br i1 %4897, label %4873, label %4881, !llvm.loop !806

4898:                                             ; preds = %4873, %4866
  br i1 %4868, label %4908, label %4899

4899:                                             ; preds = %4898
  %4900 = icmp eq i16 %4867, 247
  br i1 %4900, label %4901, label %4961

4901:                                             ; preds = %4899
  %4902 = getelementptr inbounds %struct.Main, ptr %2, i64 0, i32 4
  %4903 = load i16, ptr %4902, align 2, !tbaa !556
  br label %4904

4904:                                             ; preds = %4901, %4862
  %4905 = phi i16 [ %4869, %4901 ], [ %4863, %4862 ]
  %4906 = phi i16 [ %4903, %4901 ], [ %4864, %4862 ]
  %4907 = icmp slt i16 %4906, 9
  br i1 %4907, label %4908, label %4926

4908:                                             ; preds = %4904, %4898
  %4909 = phi i16 [ 247, %4904 ], [ %4867, %4898 ]
  %4910 = phi i1 [ false, %4904 ], [ true, %4898 ]
  %4911 = phi i16 [ %4905, %4904 ], [ %4869, %4898 ]
  %4912 = getelementptr inbounds %struct.Main, ptr %2, i64 0, i32 21
  %4913 = load ptr, ptr %4912, align 8, !tbaa !34
  %4914 = icmp eq ptr %4913, null
  br i1 %4914, label %4920, label %4915

4915:                                             ; preds = %4908, %4915
  %4916 = phi ptr [ %4918, %4915 ], [ %4913, %4908 ]
  %4917 = getelementptr inbounds %struct.Lamp, ptr %4916, i64 0, i32 64
  store float 1.000000e+00, ptr %4917, align 4, !tbaa !807
  %4918 = load ptr, ptr %4916, align 8, !tbaa !34
  %4919 = icmp eq ptr %4918, null
  br i1 %4919, label %4920, label %4915, !llvm.loop !808

4920:                                             ; preds = %4915, %4908
  br i1 %4910, label %4930, label %4921

4921:                                             ; preds = %4920
  %4922 = icmp eq i16 %4909, 247
  br i1 %4922, label %4923, label %4961

4923:                                             ; preds = %4921
  %4924 = getelementptr inbounds %struct.Main, ptr %2, i64 0, i32 4
  %4925 = load i16, ptr %4924, align 2, !tbaa !556
  br label %4926

4926:                                             ; preds = %4923, %4904
  %4927 = phi i16 [ %4911, %4923 ], [ %4905, %4904 ]
  %4928 = phi i16 [ %4925, %4923 ], [ %4906, %4904 ]
  %4929 = icmp slt i16 %4928, 10
  br i1 %4929, label %4930, label %4961

4930:                                             ; preds = %4926, %4920
  %4931 = phi i16 [ %4927, %4926 ], [ %4911, %4920 ]
  %4932 = getelementptr inbounds %struct.Main, ptr %2, i64 0, i32 13
  %4933 = load ptr, ptr %4932, align 8, !tbaa !34
  %4934 = icmp eq ptr %4933, null
  br i1 %4934, label %4961, label %4938

4935:                                             ; preds = %4956, %4938
  %4936 = load ptr, ptr %4939, align 8, !tbaa !34
  %4937 = icmp eq ptr %4936, null
  br i1 %4937, label %4959, label %4938, !llvm.loop !809

4938:                                             ; preds = %4930, %4935
  %4939 = phi ptr [ %4936, %4935 ], [ %4933, %4930 ]
  %4940 = getelementptr inbounds %struct.Object, ptr %4939, i64 0, i32 94
  %4941 = load ptr, ptr %4940, align 8, !tbaa !34
  %4942 = icmp eq ptr %4941, null
  br i1 %4942, label %4935, label %4943

4943:                                             ; preds = %4938, %4956
  %4944 = phi ptr [ %4957, %4956 ], [ %4941, %4938 ]
  %4945 = getelementptr inbounds %struct.bActuator, ptr %4944, i64 0, i32 3
  %4946 = load i16, ptr %4945, align 8, !tbaa !168
  %4947 = icmp eq i16 %4946, 14
  br i1 %4947, label %4948, label %4956

4948:                                             ; preds = %4943
  %4949 = getelementptr inbounds %struct.bActuator, ptr %4944, i64 0, i32 8
  %4950 = load ptr, ptr %4949, align 8, !tbaa !170
  %4951 = call i64 @BLI_strnlen(ptr noundef %4950, i64 noundef 3) #15
  %4952 = icmp ugt i64 %4951, 2
  br i1 %4952, label %4953, label %4955

4953:                                             ; preds = %4948
  %4954 = getelementptr inbounds i8, ptr %4950, i64 2
  call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(62) %4950, ptr noundef nonnull align 1 dereferenceable(62) %4954, i64 62, i1 false)
  br label %4956

4955:                                             ; preds = %4948
  store i8 0, ptr %4950, align 8, !tbaa !135
  br label %4956

4956:                                             ; preds = %4953, %4955, %4943
  %4957 = load ptr, ptr %4944, align 8, !tbaa !34
  %4958 = icmp eq ptr %4957, null
  br i1 %4958, label %4935, label %4943, !llvm.loop !810

4959:                                             ; preds = %4935
  %4960 = load i16, ptr %7, align 8, !tbaa !59
  br label %4961

4961:                                             ; preds = %4737, %4959, %4930, %4760, %4786, %4809, %4857, %4899, %4926, %4921
  %4962 = phi i16 [ %4960, %4959 ], [ %4931, %4930 ], [ %4745, %4760 ], [ %4770, %4786 ], [ %4798, %4809 ], [ %4821, %4857 ], [ %4869, %4899 ], [ %4927, %4926 ], [ %4911, %4921 ], [ %4738, %4737 ]
  %4963 = icmp slt i16 %4962, 248
  br i1 %4963, label %4964, label %4981

4964:                                             ; preds = %4961
  %4965 = getelementptr inbounds %struct.Main, ptr %2, i64 0, i32 21
  %4966 = load ptr, ptr %4965, align 8, !tbaa !34
  %4967 = icmp eq ptr %4966, null
  br i1 %4967, label %4987, label %4968

4968:                                             ; preds = %4964, %4978
  %4969 = phi ptr [ %4979, %4978 ], [ %4966, %4964 ]
  %4970 = getelementptr inbounds %struct.Lamp, ptr %4969, i64 0, i32 59
  %4971 = load float, ptr %4970, align 8, !tbaa !811
  %4972 = fcmp oeq float %4971, 0.000000e+00
  br i1 %4972, label %4973, label %4978

4973:                                             ; preds = %4968
  %4974 = getelementptr inbounds %struct.Lamp, ptr %4969, i64 0, i32 51
  store i16 0, ptr %4974, align 4, !tbaa !812
  %4975 = getelementptr inbounds %struct.Lamp, ptr %4969, i64 0, i32 53
  store <4 x float> <float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float 1.000000e+00>, ptr %4975, align 8, !tbaa !120
  %4976 = getelementptr inbounds %struct.Lamp, ptr %4969, i64 0, i32 57
  %4977 = getelementptr inbounds %struct.Lamp, ptr %4969, i64 0, i32 61
  store <2 x float> <float 1.000000e+00, float 1.000000e+00>, ptr %4977, align 8, !tbaa !120
  store <4 x float> <float 1.000000e+00, float 1.000000e+00, float 2.000000e+00, float 1.000000e+00>, ptr %4976, align 8, !tbaa !120
  br label %4978

4978:                                             ; preds = %4968, %4973
  %4979 = load ptr, ptr %4969, align 8, !tbaa !34
  %4980 = icmp eq ptr %4979, null
  br i1 %4980, label %4987, label %4968, !llvm.loop !813

4981:                                             ; preds = %4961
  %4982 = icmp eq i16 %4962, 248
  br i1 %4982, label %4983, label %5015

4983:                                             ; preds = %4981
  %4984 = getelementptr inbounds %struct.Main, ptr %2, i64 0, i32 4
  %4985 = load i16, ptr %4984, align 2, !tbaa !556
  %4986 = icmp slt i16 %4985, 2
  br i1 %4986, label %4987, label %5015

4987:                                             ; preds = %4978, %4964, %4983
  %4988 = load ptr, ptr %3853, align 8, !tbaa !34
  %4989 = icmp eq ptr %4988, null
  br i1 %4989, label %5015, label %4990

4990:                                             ; preds = %4987, %4990
  %4991 = phi ptr [ %5013, %4990 ], [ %4988, %4987 ]
  %4992 = getelementptr inbounds %struct.Scene, ptr %4991, i64 0, i32 20
  %4993 = load ptr, ptr %4992, align 8, !tbaa !418
  %4994 = getelementptr inbounds %struct.ToolSettings, ptr %4993, i64 0, i32 17, i32 3
  store i16 2, ptr %4994, align 4, !tbaa !814
  %4995 = getelementptr inbounds %struct.ToolSettings, ptr %4993, i64 0, i32 17, i32 4
  store i16 80, ptr %4995, align 2, !tbaa !815
  %4996 = getelementptr inbounds %struct.ToolSettings, ptr %4993, i64 0, i32 25
  store i16 250, ptr %4996, align 2, !tbaa !816
  %4997 = getelementptr inbounds %struct.ToolSettings, ptr %4993, i64 0, i32 26
  %4998 = getelementptr inbounds %struct.ToolSettings, ptr %4993, i64 0, i32 30
  store <4 x float> <float 0x3FB99999A0000000, float 0x3FB99999A0000000, float 0x3FF4CCCCC0000000, float 1.500000e+00>, ptr %4997, align 8, !tbaa !120
  store <2 x float> <float 3.000000e+01, float 0x3FEF5C2900000000>, ptr %4998, align 8, !tbaa !120
  %4999 = getelementptr inbounds %struct.ToolSettings, ptr %4993, i64 0, i32 32
  store float 0x3FB99999A0000000, ptr %4999, align 8, !tbaa !817
  %5000 = getelementptr inbounds %struct.ToolSettings, ptr %4993, i64 0, i32 37
  store i8 0, ptr %5000, align 2, !tbaa !818
  %5001 = getelementptr inbounds %struct.ToolSettings, ptr %4993, i64 0, i32 38
  store i8 3, ptr %5001, align 1, !tbaa !819
  %5002 = getelementptr inbounds %struct.ToolSettings, ptr %4993, i64 0, i32 36
  store i16 579, ptr %5002, align 8, !tbaa !820
  %5003 = getelementptr inbounds %struct.ToolSettings, ptr %4993, i64 0, i32 39
  store i8 2, ptr %5003, align 4, !tbaa !135
  %5004 = load ptr, ptr %4992, align 8, !tbaa !418
  %5005 = getelementptr inbounds %struct.ToolSettings, ptr %5004, i64 0, i32 39, i64 1
  store i8 0, ptr %5005, align 1, !tbaa !135
  %5006 = load ptr, ptr %4992, align 8, !tbaa !418
  %5007 = getelementptr inbounds %struct.ToolSettings, ptr %5006, i64 0, i32 39, i64 2
  store i8 1, ptr %5007, align 2, !tbaa !135
  %5008 = load ptr, ptr %4992, align 8, !tbaa !418
  %5009 = getelementptr inbounds %struct.ToolSettings, ptr %5008, i64 0, i32 33
  store <2 x float> <float 1.000000e+00, float 1.000000e+00>, ptr %5009, align 4, !tbaa !120
  %5010 = getelementptr inbounds %struct.ToolSettings, ptr %5008, i64 0, i32 35
  store float 1.000000e+00, ptr %5010, align 4, !tbaa !821
  %5011 = getelementptr inbounds %struct.ToolSettings, ptr %5008, i64 0, i32 42
  store i8 0, ptr %5011, align 8, !tbaa !822
  %5012 = getelementptr inbounds %struct.ToolSettings, ptr %5008, i64 0, i32 46
  store i8 1, ptr %5012, align 4, !tbaa !823
  %5013 = load ptr, ptr %4991, align 8, !tbaa !34
  %5014 = icmp eq ptr %5013, null
  br i1 %5014, label %5015, label %4990, !llvm.loop !824

5015:                                             ; preds = %4990, %4987, %4983, %4981
  %5016 = load i16, ptr %7, align 8, !tbaa !59
  %5017 = icmp slt i16 %5016, 248
  br i1 %5017, label %5024, label %5018

5018:                                             ; preds = %5015
  %5019 = icmp eq i16 %5016, 248
  br i1 %5019, label %5020, label %5234

5020:                                             ; preds = %5018
  %5021 = getelementptr inbounds %struct.Main, ptr %2, i64 0, i32 4
  %5022 = load i16, ptr %5021, align 2, !tbaa !556
  %5023 = icmp slt i16 %5022, 3
  br i1 %5023, label %5024, label %5085

5024:                                             ; preds = %5020, %5015
  %5025 = getelementptr inbounds %struct.Main, ptr %2, i64 0, i32 26
  %5026 = load ptr, ptr %5025, align 8, !tbaa !34
  %5027 = icmp eq ptr %5026, null
  br i1 %5027, label %5058, label %5031

5028:                                             ; preds = %5036, %5031
  %5029 = load ptr, ptr %5032, align 8, !tbaa !34
  %5030 = icmp eq ptr %5029, null
  br i1 %5030, label %5058, label %5031, !llvm.loop !825

5031:                                             ; preds = %5024, %5028
  %5032 = phi ptr [ %5029, %5028 ], [ %5026, %5024 ]
  %5033 = getelementptr inbounds %struct.bScreen, ptr %5032, i64 0, i32 3
  %5034 = load ptr, ptr %5033, align 8, !tbaa !34
  %5035 = icmp eq ptr %5034, null
  br i1 %5035, label %5028, label %5039

5036:                                             ; preds = %5055, %5039
  %5037 = load ptr, ptr %5040, align 8, !tbaa !34
  %5038 = icmp eq ptr %5037, null
  br i1 %5038, label %5028, label %5039, !llvm.loop !826

5039:                                             ; preds = %5031, %5036
  %5040 = phi ptr [ %5037, %5036 ], [ %5034, %5031 ]
  %5041 = getelementptr inbounds %struct.ScrArea, ptr %5040, i64 0, i32 19
  %5042 = load ptr, ptr %5041, align 8, !tbaa !34
  %5043 = icmp eq ptr %5042, null
  br i1 %5043, label %5036, label %5044

5044:                                             ; preds = %5039, %5055
  %5045 = phi ptr [ %5056, %5055 ], [ %5042, %5039 ]
  %5046 = getelementptr inbounds %struct.SpaceLink, ptr %5045, i64 0, i32 3
  %5047 = load i32, ptr %5046, align 8, !tbaa !114
  switch i32 %5047, label %5055 [
    i32 12, label %5048
    i32 2, label %5051
    i32 13, label %5053
  ]

5048:                                             ; preds = %5044
  %5049 = getelementptr inbounds %struct.SpaceAction, ptr %5045, i64 0, i32 9
  store i8 3, ptr %5049, align 8, !tbaa !827
  %5050 = getelementptr inbounds %struct.SpaceAction, ptr %5045, i64 0, i32 10
  store i8 2, ptr %5050, align 1, !tbaa !828
  br label %5055

5051:                                             ; preds = %5044
  %5052 = getelementptr inbounds %struct.SpaceIpo, ptr %5045, i64 0, i32 10
  store i16 2, ptr %5052, align 2, !tbaa !829
  br label %5055

5053:                                             ; preds = %5044
  %5054 = getelementptr inbounds %struct.SpaceNla, ptr %5045, i64 0, i32 6
  store i16 2, ptr %5054, align 8, !tbaa !831
  br label %5055

5055:                                             ; preds = %5048, %5051, %5053, %5044
  %5056 = load ptr, ptr %5045, align 8, !tbaa !34
  %5057 = icmp eq ptr %5056, null
  br i1 %5057, label %5036, label %5044, !llvm.loop !832

5058:                                             ; preds = %5028, %5024
  br i1 %5017, label %5065, label %5059

5059:                                             ; preds = %5058
  %5060 = icmp eq i16 %5016, 248
  br i1 %5060, label %5061, label %5167

5061:                                             ; preds = %5059
  %5062 = getelementptr inbounds %struct.Main, ptr %2, i64 0, i32 4
  %5063 = load i16, ptr %5062, align 2, !tbaa !556
  %5064 = icmp slt i16 %5063, 3
  br i1 %5064, label %5065, label %5085

5065:                                             ; preds = %5061, %5058
  %5066 = getelementptr inbounds %struct.Main, ptr %2, i64 0, i32 13
  %5067 = load ptr, ptr %5066, align 8, !tbaa !34
  %5068 = icmp eq ptr %5067, null
  br i1 %5068, label %5079, label %5069

5069:                                             ; preds = %5065, %5069
  %5070 = phi ptr [ %5077, %5069 ], [ %5067, %5065 ]
  %5071 = getelementptr inbounds %struct.Object, ptr %5070, i64 0, i32 70
  %5072 = load float, ptr %5071, align 8, !tbaa !833
  %5073 = fmul float %5072, 0x3FE451EB80000000
  store float %5073, ptr %5071, align 8, !tbaa !833
  %5074 = getelementptr inbounds %struct.Object, ptr %5070, i64 0, i32 73
  %5075 = load float, ptr %5074, align 4, !tbaa !158
  %5076 = call float @llvm.fmuladd.f32(float %5075, float 0x3FE99999A0000000, float 0x3FB99999A0000000)
  store float %5076, ptr %5074, align 4, !tbaa !158
  %5077 = load ptr, ptr %5070, align 8, !tbaa !34
  %5078 = icmp eq ptr %5077, null
  br i1 %5078, label %5079, label %5069, !llvm.loop !834

5079:                                             ; preds = %5069, %5065
  br i1 %5017, label %5088, label %5080

5080:                                             ; preds = %5079
  %5081 = icmp eq i16 %5016, 248
  br i1 %5081, label %5082, label %5167

5082:                                             ; preds = %5080
  %5083 = getelementptr inbounds %struct.Main, ptr %2, i64 0, i32 4
  %5084 = load i16, ptr %5083, align 2, !tbaa !556
  br label %5085

5085:                                             ; preds = %5020, %5082, %5061
  %5086 = phi i16 [ %5084, %5082 ], [ %5063, %5061 ], [ %5022, %5020 ]
  %5087 = icmp slt i16 %5086, 4
  br i1 %5087, label %5088, label %5115

5088:                                             ; preds = %5085, %5079
  %5089 = load ptr, ptr %3853, align 8, !tbaa !34
  %5090 = icmp eq ptr %5089, null
  br i1 %5090, label %5097, label %5091

5091:                                             ; preds = %5088, %5091
  %5092 = phi ptr [ %5095, %5091 ], [ %5089, %5088 ]
  %5093 = getelementptr inbounds %struct.Scene, ptr %5092, i64 0, i32 22, i32 106
  %5094 = getelementptr inbounds %struct.Scene, ptr %5092, i64 0, i32 22, i32 110
  store float 1.000000e+00, ptr %5094, align 8, !tbaa !835
  store <4 x i16> <i16 4, i16 1, i16 180, i16 0>, ptr %5093, align 8, !tbaa !405
  %5095 = load ptr, ptr %5092, align 8, !tbaa !34
  %5096 = icmp eq ptr %5095, null
  br i1 %5096, label %5097, label %5091, !llvm.loop !836

5097:                                             ; preds = %5091, %5088
  %5098 = getelementptr inbounds %struct.Main, ptr %2, i64 0, i32 25
  %5099 = load ptr, ptr %5098, align 8, !tbaa !34
  %5100 = icmp eq ptr %5099, null
  br i1 %5100, label %5109, label %5101

5101:                                             ; preds = %5097, %5101
  %5102 = phi ptr [ %5107, %5101 ], [ %5099, %5097 ]
  %5103 = getelementptr inbounds %struct.World, ptr %5102, i64 0, i32 23
  %5104 = load i16, ptr %5103, align 2, !tbaa !605
  %5105 = or i16 %5104, 32
  store i16 %5105, ptr %5103, align 2, !tbaa !605
  %5106 = getelementptr inbounds %struct.World, ptr %5102, i64 0, i32 24
  store i16 128, ptr %5106, align 4, !tbaa !837
  %5107 = load ptr, ptr %5102, align 8, !tbaa !34
  %5108 = icmp eq ptr %5107, null
  br i1 %5108, label %5109, label %5101, !llvm.loop !838

5109:                                             ; preds = %5101, %5097
  br i1 %5017, label %5118, label %5110

5110:                                             ; preds = %5109
  %5111 = icmp eq i16 %5016, 248
  br i1 %5111, label %5112, label %5167

5112:                                             ; preds = %5110
  %5113 = getelementptr inbounds %struct.Main, ptr %2, i64 0, i32 4
  %5114 = load i16, ptr %5113, align 2, !tbaa !556
  br label %5115

5115:                                             ; preds = %5112, %5085
  %5116 = phi i16 [ %5114, %5112 ], [ %5086, %5085 ]
  %5117 = icmp slt i16 %5116, 5
  br i1 %5117, label %5118, label %5167

5118:                                             ; preds = %5115, %5109
  %5119 = getelementptr inbounds %struct.Main, ptr %2, i64 0, i32 13
  %5120 = load ptr, ptr %5119, align 8, !tbaa !34
  %5121 = icmp eq ptr %5120, null
  br i1 %5121, label %5158, label %5122

5122:                                             ; preds = %5118, %5155
  %5123 = phi ptr [ %5156, %5155 ], [ %5120, %5118 ]
  %5124 = getelementptr inbounds %struct.Object, ptr %5123, i64 0, i32 9
  %5125 = load ptr, ptr %5124, align 8, !tbaa !396
  %5126 = icmp eq ptr %5125, null
  br i1 %5126, label %5155, label %5127

5127:                                             ; preds = %5122
  %5128 = call ptr @blo_do_versions_newlibadr(ptr noundef %0, ptr noundef %1, ptr noundef nonnull %5125) #15
  %5129 = icmp eq ptr %5128, null
  %5130 = icmp eq ptr %5128, %5123
  %5131 = or i1 %5129, %5130
  br i1 %5131, label %5142, label %5132

5132:                                             ; preds = %5127, %5137
  %5133 = phi ptr [ %5138, %5137 ], [ %5128, %5127 ]
  %5134 = getelementptr inbounds %struct.Object, ptr %5133, i64 0, i32 9
  %5135 = load ptr, ptr %5134, align 8, !tbaa !396
  %5136 = icmp eq ptr %5135, null
  br i1 %5136, label %5145, label %5137

5137:                                             ; preds = %5132
  %5138 = call ptr @blo_do_versions_newlibadr(ptr noundef %0, ptr noundef %1, ptr noundef nonnull %5135) #15
  %5139 = icmp eq ptr %5138, null
  %5140 = icmp eq ptr %5138, %5123
  %5141 = or i1 %5139, %5140
  br i1 %5141, label %5142, label %5132, !llvm.loop !839

5142:                                             ; preds = %5137, %5127
  %5143 = phi ptr [ %5128, %5127 ], [ %5138, %5137 ]
  %5144 = phi i1 [ %5129, %5127 ], [ %5139, %5137 ]
  br i1 %5144, label %5155, label %5145

5145:                                             ; preds = %5132, %5142
  %5146 = phi ptr [ %5143, %5142 ], [ %5133, %5132 ]
  %5147 = getelementptr inbounds %struct.Object, ptr %5146, i64 0, i32 99
  %5148 = load i32, ptr %5147, align 8, !tbaa !164
  %5149 = and i32 %5148, 2
  %5150 = icmp eq i32 %5149, 0
  br i1 %5150, label %5155, label %5151

5151:                                             ; preds = %5145
  %5152 = getelementptr inbounds %struct.Object, ptr %5123, i64 0, i32 99
  %5153 = load i32, ptr %5152, align 8, !tbaa !164
  %5154 = or i32 %5153, 2
  store i32 %5154, ptr %5152, align 8, !tbaa !164
  br label %5155

5155:                                             ; preds = %5142, %5151, %5145, %5122
  %5156 = load ptr, ptr %5123, align 8, !tbaa !34
  %5157 = icmp eq ptr %5156, null
  br i1 %5157, label %5158, label %5122, !llvm.loop !840

5158:                                             ; preds = %5155, %5118
  %5159 = getelementptr inbounds %struct.Main, ptr %2, i64 0, i32 25
  %5160 = load ptr, ptr %5159, align 8, !tbaa !34
  %5161 = icmp eq ptr %5160, null
  br i1 %5161, label %5167, label %5162

5162:                                             ; preds = %5158, %5162
  %5163 = phi ptr [ %5165, %5162 ], [ %5160, %5158 ]
  %5164 = getelementptr inbounds %struct.World, ptr %5163, i64 0, i32 26
  store <4 x i16> <i16 60, i16 5, i16 1, i16 5>, ptr %5164, align 8, !tbaa !405
  %5165 = load ptr, ptr %5163, align 8, !tbaa !34
  %5166 = icmp eq ptr %5165, null
  br i1 %5166, label %5167, label %5162, !llvm.loop !841

5167:                                             ; preds = %5162, %5158, %5059, %5080, %5115, %5110
  %5168 = load i16, ptr %7, align 8, !tbaa !59
  %5169 = icmp slt i16 %5168, 249
  br i1 %5169, label %5170, label %5234

5170:                                             ; preds = %5167
  %5171 = getelementptr inbounds %struct.Main, ptr %2, i64 0, i32 4
  %5172 = load i16, ptr %5171, align 2, !tbaa !556
  %5173 = icmp slt i16 %5172, 1
  br i1 %5173, label %5174, label %5199

5174:                                             ; preds = %5170
  %5175 = getelementptr inbounds %struct.Main, ptr %2, i64 0, i32 13
  %5176 = load ptr, ptr %5175, align 8, !tbaa !34
  %5177 = icmp eq ptr %5176, null
  br i1 %5177, label %5197, label %5178

5178:                                             ; preds = %5174, %5191
  %5179 = phi ptr [ %5192, %5191 ], [ %5176, %5174 ]
  %5180 = getelementptr inbounds %struct.Object, ptr %5179, i64 0, i32 110
  %5181 = load ptr, ptr %5180, align 8, !tbaa !788
  %5182 = icmp eq ptr %5181, null
  br i1 %5182, label %5191, label %5183

5183:                                             ; preds = %5178
  %5184 = call double @PIL_check_seconds_timer() #15
  %5185 = call double @llvm.ceil.f64(double %5184)
  %5186 = fptoui double %5185 to i32
  %5187 = add i32 %5186, 1
  %5188 = and i32 %5187, 127
  %5189 = load ptr, ptr %5180, align 8, !tbaa !788
  %5190 = getelementptr inbounds %struct.PartDeflect, ptr %5189, i64 0, i32 39
  store i32 %5188, ptr %5190, align 4, !tbaa !842
  br label %5191

5191:                                             ; preds = %5178, %5183
  %5192 = load ptr, ptr %5179, align 8, !tbaa !34
  %5193 = icmp eq ptr %5192, null
  br i1 %5193, label %5194, label %5178, !llvm.loop !843

5194:                                             ; preds = %5191
  %5195 = load i16, ptr %7, align 8, !tbaa !59
  %5196 = icmp slt i16 %5195, 249
  br i1 %5196, label %5197, label %5234

5197:                                             ; preds = %5194, %5174
  %5198 = load i16, ptr %5171, align 2, !tbaa !556
  br label %5199

5199:                                             ; preds = %5197, %5170
  %5200 = phi i16 [ %5198, %5197 ], [ %5172, %5170 ]
  %5201 = icmp slt i16 %5200, 2
  br i1 %5201, label %5202, label %5234

5202:                                             ; preds = %5199
  %5203 = load ptr, ptr %3853, align 8, !tbaa !34
  %5204 = icmp eq ptr %5203, null
  br i1 %5204, label %5234, label %5205

5205:                                             ; preds = %5202
  %5206 = getelementptr inbounds %struct.SeqIterator, ptr %6, i64 0, i32 4
  %5207 = getelementptr inbounds %struct.SeqIterator, ptr %6, i64 0, i32 3
  br label %5208

5208:                                             ; preds = %5205, %5231
  %5209 = phi ptr [ %5203, %5205 ], [ %5232, %5231 ]
  %5210 = getelementptr inbounds %struct.Scene, ptr %5209, i64 0, i32 19
  %5211 = load ptr, ptr %5210, align 8, !tbaa !363
  %5212 = icmp eq ptr %5211, null
  br i1 %5212, label %5231, label %5213

5213:                                             ; preds = %5208
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %6) #18
  call void @BKE_sequence_iterator_begin(ptr noundef nonnull %5211, ptr noundef nonnull %6, i8 noundef zeroext 1) #15
  %5214 = load i32, ptr %5206, align 8, !tbaa !364
  %5215 = icmp eq i32 %5214, 0
  br i1 %5215, label %5230, label %5216

5216:                                             ; preds = %5213, %5227
  %5217 = load ptr, ptr %5207, align 8, !tbaa !366
  %5218 = getelementptr inbounds %struct.Sequence, ptr %5217, i64 0, i32 24
  %5219 = load ptr, ptr %5218, align 8, !tbaa !844
  %5220 = icmp eq ptr %5219, null
  br i1 %5220, label %5227, label %5221

5221:                                             ; preds = %5216
  %5222 = getelementptr inbounds %struct.Strip, ptr %5219, i64 0, i32 8
  %5223 = load ptr, ptr %5222, align 8, !tbaa !845
  %5224 = icmp eq ptr %5223, null
  br i1 %5224, label %5227, label %5225

5225:                                             ; preds = %5221
  %5226 = getelementptr inbounds %struct.StripProxy, ptr %5223, i64 0, i32 4
  store i16 90, ptr %5226, align 2, !tbaa !847
  br label %5227

5227:                                             ; preds = %5216, %5221, %5225
  call void @BKE_sequence_iterator_next(ptr noundef nonnull %6) #15
  %5228 = load i32, ptr %5206, align 8, !tbaa !364
  %5229 = icmp eq i32 %5228, 0
  br i1 %5229, label %5230, label %5216, !llvm.loop !849

5230:                                             ; preds = %5227, %5213
  call void @BKE_sequence_iterator_end(ptr noundef nonnull %6) #15
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %6) #18
  br label %5231

5231:                                             ; preds = %5230, %5208
  %5232 = load ptr, ptr %5209, align 8, !tbaa !34
  %5233 = icmp eq ptr %5232, null
  br i1 %5233, label %5234, label %5208, !llvm.loop !850

5234:                                             ; preds = %5231, %5202, %5018, %5167, %5199, %5194
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @vcol_to_fcol(ptr nocapture noundef %0) unnamed_addr #2 !PGOFuncName !851 {
  %2 = getelementptr inbounds %struct.Mesh, ptr %0, i64 0, i32 28
  %3 = load i32, ptr %2, align 8, !tbaa !134
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %52, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.Mesh, ptr %0, i64 0, i32 18
  %7 = load ptr, ptr %6, align 8, !tbaa !104
  %8 = icmp eq ptr %7, null
  br i1 %8, label %52, label %9

9:                                                ; preds = %5
  %10 = load ptr, ptr @MEM_mallocN, align 8, !tbaa !34
  %11 = sext i32 %3 to i64
  %12 = shl nsw i64 %11, 4
  %13 = tail call ptr %10(i64 noundef %12, ptr noundef nonnull @.str.18) #15
  %14 = load ptr, ptr %6, align 8, !tbaa !104
  %15 = load i32, ptr %2, align 8, !tbaa !134
  %16 = icmp sgt i32 %15, 0
  br i1 %16, label %17, label %50

17:                                               ; preds = %9
  %18 = getelementptr inbounds %struct.Mesh, ptr %0, i64 0, i32 12
  %19 = load ptr, ptr %18, align 8, !tbaa !852
  br label %20

20:                                               ; preds = %17, %20
  %21 = phi i32 [ %47, %20 ], [ %15, %17 ]
  %22 = phi ptr [ %48, %20 ], [ %19, %17 ]
  %23 = phi ptr [ %46, %20 ], [ %13, %17 ]
  %24 = load i32, ptr %22, align 4, !tbaa !853
  %25 = zext i32 %24 to i64
  %26 = getelementptr inbounds i32, ptr %14, i64 %25
  %27 = load i32, ptr %26, align 4, !tbaa !102
  store i32 %27, ptr %23, align 4, !tbaa !102
  %28 = getelementptr inbounds %struct.MFace, ptr %22, i64 0, i32 1
  %29 = load i32, ptr %28, align 4, !tbaa !855
  %30 = zext i32 %29 to i64
  %31 = getelementptr inbounds i32, ptr %14, i64 %30
  %32 = load i32, ptr %31, align 4, !tbaa !102
  %33 = getelementptr inbounds i32, ptr %23, i64 1
  store i32 %32, ptr %33, align 4, !tbaa !102
  %34 = getelementptr inbounds %struct.MFace, ptr %22, i64 0, i32 2
  %35 = load i32, ptr %34, align 4, !tbaa !856
  %36 = zext i32 %35 to i64
  %37 = getelementptr inbounds i32, ptr %14, i64 %36
  %38 = load i32, ptr %37, align 4, !tbaa !102
  %39 = getelementptr inbounds i32, ptr %23, i64 2
  store i32 %38, ptr %39, align 4, !tbaa !102
  %40 = getelementptr inbounds %struct.MFace, ptr %22, i64 0, i32 3
  %41 = load i32, ptr %40, align 4, !tbaa !857
  %42 = zext i32 %41 to i64
  %43 = getelementptr inbounds i32, ptr %14, i64 %42
  %44 = load i32, ptr %43, align 4, !tbaa !102
  %45 = getelementptr inbounds i32, ptr %23, i64 3
  store i32 %44, ptr %45, align 4, !tbaa !102
  %46 = getelementptr inbounds i32, ptr %23, i64 4
  %47 = add nsw i32 %21, -1
  %48 = getelementptr inbounds %struct.MFace, ptr %22, i64 1
  %49 = icmp ugt i32 %21, 1
  br i1 %49, label %20, label %50, !llvm.loop !858

50:                                               ; preds = %20, %9
  %51 = load ptr, ptr @MEM_freeN, align 8, !tbaa !34
  tail call void %51(ptr noundef %14) #15
  store ptr %13, ptr %6, align 8, !tbaa !104
  br label %52

52:                                               ; preds = %1, %5, %50
  ret void
}

; Function Attrs: optsize
declare ptr @BKE_bproperty_object_get(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fabs.f32(float) #4

; Function Attrs: mustprogress nofree nounwind optsize willreturn memory(argmem: read)
declare i32 @strcmp(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #5

; Function Attrs: mustprogress nofree nounwind optsize willreturn memory(argmem: read)
declare i64 @strlen(ptr nocapture noundef) local_unnamed_addr #5

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define internal fastcc noundef i32 @map_223_keybd_code_to_224_keybd_code(i32 noundef %0) unnamed_addr #6 !PGOFuncName !859 {
  switch i32 %0, label %13 [
    i32 312, label %14
    i32 159, label %2
    i32 161, label %3
    i32 154, label %4
    i32 150, label %5
    i32 155, label %6
    i32 151, label %7
    i32 156, label %8
    i32 152, label %9
    i32 157, label %10
    i32 153, label %11
    i32 158, label %12
  ]

2:                                                ; preds = %1
  br label %14

3:                                                ; preds = %1
  br label %14

4:                                                ; preds = %1
  br label %14

5:                                                ; preds = %1
  br label %14

6:                                                ; preds = %1
  br label %14

7:                                                ; preds = %1
  br label %14

8:                                                ; preds = %1
  br label %14

9:                                                ; preds = %1
  br label %14

10:                                               ; preds = %1
  br label %14

11:                                               ; preds = %1
  br label %14

12:                                               ; preds = %1
  br label %14

13:                                               ; preds = %1
  br label %14

14:                                               ; preds = %1, %13, %12, %11, %10, %9, %8, %7, %6, %5, %4, %3, %2
  %15 = phi i32 [ %0, %13 ], [ 159, %12 ], [ 158, %11 ], [ 157, %10 ], [ 156, %9 ], [ 155, %8 ], [ 154, %7 ], [ 153, %6 ], [ 152, %5 ], [ 151, %4 ], [ 150, %3 ], [ 161, %2 ], [ 311, %1 ]
  ret i32 %15
}

; Function Attrs: optsize
declare void @BKE_sequence_iterator_begin(ptr noundef, ptr noundef, i8 noundef zeroext) local_unnamed_addr #3

; Function Attrs: optsize
declare void @BKE_sequence_iterator_next(ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare void @BKE_sequence_iterator_end(ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare ptr @defgroup_find_name(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare i32 @BLI_findindex(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare void @BKE_armature_where_is(ptr noundef) local_unnamed_addr #3

; Function Attrs: nofree noinline nosync nounwind optsize memory(readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @do_version_bone_head_tail_237(ptr nocapture noundef %0) unnamed_addr #7 !PGOFuncName !860 {
  %2 = alloca [3 x float], align 4
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %2) #18
  %3 = getelementptr inbounds %struct.Bone, ptr %0, i64 0, i32 11
  %4 = getelementptr inbounds %struct.Bone, ptr %0, i64 0, i32 13, i64 3
  tail call fastcc void @copy_v3_v3(ptr noundef nonnull %3, ptr noundef nonnull %4) #16
  %5 = getelementptr inbounds %struct.Bone, ptr %0, i64 0, i32 13, i64 1
  call fastcc void @copy_v3_v3(ptr noundef nonnull %2, ptr noundef nonnull %5) #16
  %6 = getelementptr inbounds %struct.Bone, ptr %0, i64 0, i32 18
  %7 = load float, ptr %6, align 4, !tbaa !861
  call fastcc void @mul_v3_fl(ptr noundef nonnull %2, float noundef %7) #16
  %8 = getelementptr inbounds %struct.Bone, ptr %0, i64 0, i32 12
  call fastcc void @add_v3_v3v3(ptr noundef nonnull %8, ptr noundef nonnull %3, ptr noundef nonnull %2) #16
  %9 = getelementptr inbounds %struct.Bone, ptr %0, i64 0, i32 4
  %10 = load ptr, ptr %9, align 8, !tbaa !34
  %11 = icmp eq ptr %10, null
  br i1 %11, label %16, label %12

12:                                               ; preds = %1, %12
  %13 = phi ptr [ %14, %12 ], [ %10, %1 ]
  tail call fastcc void @do_version_bone_head_tail_237(ptr noundef nonnull %13) #16
  %14 = load ptr, ptr %13, align 8, !tbaa !34
  %15 = icmp eq ptr %14, null
  br i1 %15, label %16, label %12, !llvm.loop !863

16:                                               ; preds = %12, %1
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %2) #18
  ret void
}

; Function Attrs: optsize
declare ptr @blo_do_versions_newlibadr(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare ptr @modifier_new(i32 noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare void @BLI_addtail(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare void @modifier_unique_name(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare void @calc_lat_fudu(i32 noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare ptr @modifiers_findByType(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare ptr @modifierType_getInfo(i32 noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare void @BLI_insertlinkbefore(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare void @BLI_addhead(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nofree noinline nosync nounwind optsize memory(readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @bone_version_238(ptr nocapture noundef readonly %0) unnamed_addr #7 !PGOFuncName !864 {
  %2 = load ptr, ptr %0, align 8, !tbaa !34
  %3 = icmp eq ptr %2, null
  br i1 %3, label %29, label %4

4:                                                ; preds = %1, %25
  %5 = phi ptr [ %27, %25 ], [ %2, %1 ]
  %6 = getelementptr inbounds %struct.Bone, ptr %5, i64 0, i32 23
  %7 = load float, ptr %6, align 8, !tbaa !865
  %8 = fcmp oeq float %7, 0.000000e+00
  br i1 %8, label %9, label %25

9:                                                ; preds = %4
  %10 = getelementptr inbounds %struct.Bone, ptr %5, i64 0, i32 22
  %11 = load float, ptr %10, align 4, !tbaa !866
  %12 = fcmp oeq float %11, 0.000000e+00
  br i1 %12, label %13, label %25

13:                                               ; preds = %9
  %14 = getelementptr inbounds %struct.Bone, ptr %5, i64 0, i32 18
  %15 = load float, ptr %14, align 4, !tbaa !861
  %16 = insertelement <2 x float> poison, float %15, i64 0
  %17 = shufflevector <2 x float> %16, <2 x float> poison, <2 x i32> zeroinitializer
  %18 = fmul <2 x float> %17, <float 2.500000e-01, float 0x3FB99999A0000000>
  store <2 x float> %18, ptr %10, align 4, !tbaa !120
  %19 = getelementptr inbounds %struct.Bone, ptr %5, i64 0, i32 15
  %20 = load float, ptr %19, align 8, !tbaa !867
  %21 = extractelement <2 x float> %18, i64 0
  %22 = fsub float %20, %21
  store float %22, ptr %19, align 8, !tbaa !867
  %23 = fcmp ugt float %22, 0.000000e+00
  br i1 %23, label %25, label %24

24:                                               ; preds = %13
  store float 0.000000e+00, ptr %19, align 8, !tbaa !867
  br label %25

25:                                               ; preds = %13, %24, %9, %4
  %26 = getelementptr inbounds %struct.Bone, ptr %5, i64 0, i32 4
  tail call fastcc void @bone_version_238(ptr noundef nonnull %26) #16
  %27 = load ptr, ptr %5, align 8, !tbaa !34
  %28 = icmp eq ptr %27, null
  br i1 %28, label %29, label %4, !llvm.loop !868

29:                                               ; preds = %25, %1
  ret void
}

; Function Attrs: optsize
declare void @BKE_mesh_calc_edges_legacy(ptr noundef, i8 noundef zeroext) local_unnamed_addr #3

; Function Attrs: optsize
declare void @BKE_mesh_strip_loose_faces(ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare i64 @BLI_snprintf(ptr noundef, i64 noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: nofree noinline nosync nounwind optsize memory(readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @bone_version_239(ptr nocapture noundef readonly %0) unnamed_addr #7 !PGOFuncName !869 {
  %2 = load ptr, ptr %0, align 8, !tbaa !34
  %3 = icmp eq ptr %2, null
  br i1 %3, label %14, label %4

4:                                                ; preds = %1, %10
  %5 = phi ptr [ %12, %10 ], [ %2, %1 ]
  %6 = getelementptr inbounds %struct.Bone, ptr %5, i64 0, i32 25
  %7 = load i32, ptr %6, align 8, !tbaa !870
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %9, label %10

9:                                                ; preds = %4
  store i32 1, ptr %6, align 8, !tbaa !870
  br label %10

10:                                               ; preds = %9, %4
  %11 = getelementptr inbounds %struct.Bone, ptr %5, i64 0, i32 4
  tail call fastcc void @bone_version_239(ptr noundef nonnull %11) #16
  %12 = load ptr, ptr %5, align 8, !tbaa !34
  %13 = icmp eq ptr %12, null
  br i1 %13, label %14, label %4, !llvm.loop !871

14:                                               ; preds = %10, %1
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc zeroext i8 @BLI_listbase_is_empty(ptr nocapture noundef readonly %0) unnamed_addr #8 !PGOFuncName !872 {
  %2 = load ptr, ptr %0, align 8, !tbaa !873
  %3 = icmp eq ptr %2, null
  %4 = zext i1 %3 to i8
  ret i8 %4
}

; Function Attrs: optsize
declare ptr @BKE_scene_add_render_layer(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @ntree_version_241(ptr nocapture noundef readonly %0) unnamed_addr #2 !PGOFuncName !874 {
  %2 = getelementptr inbounds %struct.bNodeTree, ptr %0, i64 0, i32 9
  %3 = load i32, ptr %2, align 8, !tbaa !875
  %4 = icmp eq i32 %3, 1
  br i1 %4, label %5, label %37

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.bNodeTree, ptr %0, i64 0, i32 7
  %7 = load ptr, ptr %6, align 8, !tbaa !34
  %8 = icmp eq ptr %7, null
  br i1 %8, label %37, label %9

9:                                                ; preds = %5, %34
  %10 = phi ptr [ %35, %34 ], [ %7, %5 ]
  %11 = getelementptr inbounds %struct.bNode, ptr %10, i64 0, i32 8
  %12 = load i16, ptr %11, align 4, !tbaa !878
  switch i16 %12, label %34 [
    i16 211, label %13
    i16 215, label %23
  ]

13:                                               ; preds = %9
  %14 = getelementptr inbounds %struct.bNode, ptr %10, i64 0, i32 21
  %15 = load ptr, ptr %14, align 8, !tbaa !880
  %16 = icmp eq ptr %15, null
  br i1 %16, label %17, label %34

17:                                               ; preds = %13
  %18 = load ptr, ptr @MEM_callocN, align 8, !tbaa !34
  %19 = tail call ptr %18(i64 noundef 40, ptr noundef nonnull @.str.19) #15
  %20 = getelementptr inbounds %struct.bNode, ptr %10, i64 0, i32 33
  %21 = load <2 x i16>, ptr %20, align 8, !tbaa !405
  store <2 x i16> %21, ptr %19, align 4, !tbaa !405
  %22 = getelementptr inbounds %struct.NodeBlurData, ptr %19, i64 0, i32 11
  store i16 2, ptr %22, align 4, !tbaa !881
  store ptr %19, ptr %14, align 8, !tbaa !880
  br label %34

23:                                               ; preds = %9
  %24 = getelementptr inbounds %struct.bNode, ptr %10, i64 0, i32 21
  %25 = load ptr, ptr %24, align 8, !tbaa !880
  %26 = icmp eq ptr %25, null
  br i1 %26, label %27, label %34

27:                                               ; preds = %23
  %28 = load ptr, ptr @MEM_callocN, align 8, !tbaa !34
  %29 = tail call ptr %28(i64 noundef 40, ptr noundef nonnull @.str.19) #15
  %30 = getelementptr inbounds %struct.bNode, ptr %10, i64 0, i32 33
  %31 = getelementptr inbounds %struct.NodeBlurData, ptr %29, i64 0, i32 2
  %32 = load <2 x i16>, ptr %30, align 8, !tbaa !405
  store <2 x i16> %32, ptr %31, align 4, !tbaa !405
  %33 = getelementptr inbounds %struct.NodeBlurData, ptr %29, i64 0, i32 8
  store float 1.000000e+00, ptr %33, align 4, !tbaa !883
  store ptr %29, ptr %24, align 8, !tbaa !880
  br label %34

34:                                               ; preds = %9, %17, %13, %23, %27
  %35 = load ptr, ptr %10, align 8, !tbaa !34
  %36 = icmp eq ptr %35, null
  br i1 %36, label %37, label %9, !llvm.loop !884

37:                                               ; preds = %34, %5, %1
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @ntree_version_242(ptr nocapture noundef readonly %0) unnamed_addr #2 !PGOFuncName !885 {
  %2 = getelementptr inbounds %struct.bNodeTree, ptr %0, i64 0, i32 9
  %3 = load i32, ptr %2, align 8, !tbaa !875
  switch i32 %3, label %44 [
    i32 1, label %4
    i32 0, label %25
  ]

4:                                                ; preds = %1
  %5 = getelementptr inbounds %struct.bNodeTree, ptr %0, i64 0, i32 7
  %6 = load ptr, ptr %5, align 8, !tbaa !34
  %7 = icmp eq ptr %6, null
  br i1 %7, label %44, label %8

8:                                                ; preds = %4, %22
  %9 = phi ptr [ %23, %22 ], [ %6, %4 ]
  %10 = getelementptr inbounds %struct.bNode, ptr %9, i64 0, i32 8
  %11 = load i16, ptr %10, align 4, !tbaa !878
  %12 = icmp eq i16 %11, 219
  br i1 %12, label %13, label %22

13:                                               ; preds = %8
  %14 = getelementptr inbounds %struct.bNode, ptr %9, i64 0, i32 21
  %15 = load ptr, ptr %14, align 8, !tbaa !880
  %16 = icmp eq ptr %15, null
  br i1 %16, label %22, label %17

17:                                               ; preds = %13
  %18 = getelementptr inbounds %struct.NodeHueSat, ptr %15, i64 0, i32 2
  %19 = load float, ptr %18, align 4, !tbaa !886
  %20 = fcmp oeq float %19, 0.000000e+00
  br i1 %20, label %21, label %22

21:                                               ; preds = %17
  store float 1.000000e+00, ptr %18, align 4, !tbaa !886
  br label %22

22:                                               ; preds = %17, %21, %8, %13
  %23 = load ptr, ptr %9, align 8, !tbaa !34
  %24 = icmp eq ptr %23, null
  br i1 %24, label %44, label %8, !llvm.loop !888

25:                                               ; preds = %1
  %26 = getelementptr inbounds %struct.bNodeTree, ptr %0, i64 0, i32 7
  %27 = load ptr, ptr %26, align 8, !tbaa !34
  %28 = icmp eq ptr %27, null
  br i1 %28, label %44, label %29

29:                                               ; preds = %25, %41
  %30 = phi ptr [ %42, %41 ], [ %27, %25 ]
  %31 = getelementptr inbounds %struct.bNode, ptr %30, i64 0, i32 8
  %32 = load i16, ptr %31, align 4, !tbaa !878
  %33 = icmp eq i16 %32, 108
  br i1 %33, label %34, label %41

34:                                               ; preds = %29
  %35 = getelementptr inbounds %struct.bNode, ptr %30, i64 0, i32 21
  %36 = load ptr, ptr %35, align 8, !tbaa !880
  %37 = icmp eq ptr %36, null
  br i1 %37, label %38, label %41

38:                                               ; preds = %34
  %39 = load ptr, ptr @MEM_callocN, align 8, !tbaa !34
  %40 = tail call ptr %39(i64 noundef 128, ptr noundef nonnull @.str.20) #15
  store ptr %40, ptr %35, align 8, !tbaa !880
  br label %41

41:                                               ; preds = %29, %34, %38
  %42 = load ptr, ptr %30, align 8, !tbaa !34
  %43 = icmp eq ptr %42, null
  br i1 %43, label %44, label %29, !llvm.loop !889

44:                                               ; preds = %41, %22, %25, %4, %1
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @customdata_version_242(ptr noundef %0) unnamed_addr #2 !PGOFuncName !890 {
  %2 = getelementptr inbounds %struct.Mesh, ptr %0, i64 0, i32 21
  %3 = getelementptr inbounds %struct.Mesh, ptr %0, i64 0, i32 21, i32 2
  %4 = load i32, ptr %3, align 4, !tbaa !891
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %6, label %18

6:                                                ; preds = %1
  %7 = getelementptr inbounds %struct.Mesh, ptr %0, i64 0, i32 15
  %8 = load ptr, ptr %7, align 8, !tbaa !892
  %9 = getelementptr inbounds %struct.Mesh, ptr %0, i64 0, i32 26
  %10 = load i32, ptr %9, align 8, !tbaa !893
  %11 = tail call ptr @CustomData_add_layer(ptr noundef nonnull %2, i32 noundef 0, i32 noundef 0, ptr noundef %8, i32 noundef %10) #15
  %12 = getelementptr inbounds %struct.Mesh, ptr %0, i64 0, i32 17
  %13 = load ptr, ptr %12, align 8, !tbaa !894
  %14 = icmp eq ptr %13, null
  br i1 %14, label %18, label %15

15:                                               ; preds = %6
  %16 = load i32, ptr %9, align 8, !tbaa !893
  %17 = tail call ptr @CustomData_add_layer(ptr noundef nonnull %2, i32 noundef 2, i32 noundef 0, ptr noundef nonnull %13, i32 noundef %16) #15
  br label %18

18:                                               ; preds = %6, %15, %1
  %19 = getelementptr inbounds %struct.Mesh, ptr %0, i64 0, i32 22, i32 2
  %20 = load i32, ptr %19, align 4, !tbaa !895
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %22, label %29

22:                                               ; preds = %18
  %23 = getelementptr inbounds %struct.Mesh, ptr %0, i64 0, i32 22
  %24 = getelementptr inbounds %struct.Mesh, ptr %0, i64 0, i32 16
  %25 = load ptr, ptr %24, align 8, !tbaa !453
  %26 = getelementptr inbounds %struct.Mesh, ptr %0, i64 0, i32 27
  %27 = load i32, ptr %26, align 4, !tbaa !896
  %28 = tail call ptr @CustomData_add_layer(ptr noundef nonnull %23, i32 noundef 3, i32 noundef 0, ptr noundef %25, i32 noundef %27) #15
  br label %29

29:                                               ; preds = %22, %18
  %30 = getelementptr inbounds %struct.Mesh, ptr %0, i64 0, i32 23
  %31 = getelementptr inbounds %struct.Mesh, ptr %0, i64 0, i32 23, i32 2
  %32 = load i32, ptr %31, align 4, !tbaa !897
  %33 = icmp eq i32 %32, 0
  br i1 %33, label %34, label %96

34:                                               ; preds = %29
  %35 = getelementptr inbounds %struct.Mesh, ptr %0, i64 0, i32 12
  %36 = load ptr, ptr %35, align 8, !tbaa !852
  %37 = getelementptr inbounds %struct.Mesh, ptr %0, i64 0, i32 28
  %38 = load i32, ptr %37, align 8, !tbaa !134
  %39 = tail call ptr @CustomData_add_layer(ptr noundef nonnull %30, i32 noundef 4, i32 noundef 0, ptr noundef %36, i32 noundef %38) #15
  %40 = getelementptr inbounds %struct.Mesh, ptr %0, i64 0, i32 14
  %41 = load ptr, ptr %40, align 8, !tbaa !133
  %42 = icmp eq ptr %41, null
  %43 = getelementptr inbounds %struct.Mesh, ptr %0, i64 0, i32 18
  %44 = load ptr, ptr %43, align 8, !tbaa !104
  %45 = icmp eq ptr %44, null
  br i1 %42, label %92, label %46

46:                                               ; preds = %34
  br i1 %45, label %49, label %47

47:                                               ; preds = %46
  %48 = load ptr, ptr @MEM_freeN, align 8, !tbaa !34
  tail call void %48(ptr noundef nonnull %44) #15
  br label %49

49:                                               ; preds = %47, %46
  %50 = load i32, ptr %37, align 8, !tbaa !134
  %51 = tail call ptr @CustomData_add_layer(ptr noundef nonnull %30, i32 noundef 6, i32 noundef 1, ptr noundef null, i32 noundef %50) #15
  store ptr %51, ptr %43, align 8, !tbaa !104
  %52 = load i32, ptr %37, align 8, !tbaa !134
  %53 = tail call ptr @CustomData_add_layer(ptr noundef nonnull %30, i32 noundef 5, i32 noundef 1, ptr noundef null, i32 noundef %52) #15
  %54 = getelementptr inbounds %struct.Mesh, ptr %0, i64 0, i32 13
  store ptr %53, ptr %54, align 8, !tbaa !898
  %55 = load ptr, ptr %40, align 8, !tbaa !133
  %56 = load i32, ptr %37, align 8, !tbaa !134
  %57 = icmp sgt i32 %56, 0
  br i1 %57, label %58, label %89

58:                                               ; preds = %49
  %59 = load ptr, ptr %43, align 8, !tbaa !104
  br label %60

60:                                               ; preds = %58, %60
  %61 = phi i32 [ %81, %60 ], [ 0, %58 ]
  %62 = phi ptr [ %83, %60 ], [ %55, %58 ]
  %63 = phi ptr [ %84, %60 ], [ %59, %58 ]
  %64 = phi ptr [ %82, %60 ], [ %53, %58 ]
  %65 = getelementptr inbounds %struct.TFace, ptr %62, i64 0, i32 2
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(16) %63, ptr noundef nonnull align 8 dereferenceable(16) %65, i64 16, i1 false)
  %66 = getelementptr inbounds %struct.TFace, ptr %62, i64 0, i32 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %64, ptr noundef nonnull align 8 dereferenceable(32) %66, i64 32, i1 false)
  %67 = getelementptr inbounds %struct.TFace, ptr %62, i64 0, i32 3
  %68 = load i8, ptr %67, align 8, !tbaa !899
  %69 = getelementptr inbounds %struct.MTFace, ptr %64, i64 0, i32 2
  store i8 %68, ptr %69, align 8, !tbaa !900
  %70 = getelementptr inbounds %struct.TFace, ptr %62, i64 0, i32 7
  %71 = load i16, ptr %70, align 2, !tbaa !902
  %72 = getelementptr inbounds %struct.MTFace, ptr %64, i64 0, i32 6
  store i16 %71, ptr %72, align 2, !tbaa !903
  %73 = getelementptr inbounds %struct.TFace, ptr %62, i64 0, i32 5
  %74 = getelementptr inbounds %struct.MTFace, ptr %64, i64 0, i32 4
  %75 = load <2 x i16>, ptr %73, align 2, !tbaa !405
  store <2 x i16> %75, ptr %74, align 2, !tbaa !405
  %76 = load ptr, ptr %62, align 8, !tbaa !904
  %77 = getelementptr inbounds %struct.MTFace, ptr %64, i64 0, i32 1
  store ptr %76, ptr %77, align 8, !tbaa !905
  %78 = getelementptr inbounds %struct.TFace, ptr %62, i64 0, i32 4
  %79 = load i8, ptr %78, align 1, !tbaa !906
  %80 = getelementptr inbounds %struct.MTFace, ptr %64, i64 0, i32 3
  store i8 %79, ptr %80, align 1, !tbaa !907
  %81 = add nuw nsw i32 %61, 1
  %82 = getelementptr inbounds %struct.MTFace, ptr %64, i64 1
  %83 = getelementptr inbounds %struct.TFace, ptr %62, i64 1
  %84 = getelementptr inbounds %struct.MCol, ptr %63, i64 4
  %85 = load i32, ptr %37, align 8, !tbaa !134
  %86 = icmp slt i32 %81, %85
  br i1 %86, label %60, label %87, !llvm.loop !908

87:                                               ; preds = %60
  %88 = load ptr, ptr %40, align 8, !tbaa !133
  br label %89

89:                                               ; preds = %87, %49
  %90 = phi ptr [ %88, %87 ], [ %55, %49 ]
  %91 = load ptr, ptr @MEM_freeN, align 8, !tbaa !34
  tail call void %91(ptr noundef %90) #15
  store ptr null, ptr %40, align 8, !tbaa !133
  br label %96

92:                                               ; preds = %34
  br i1 %45, label %96, label %93

93:                                               ; preds = %92
  %94 = load i32, ptr %37, align 8, !tbaa !134
  %95 = tail call ptr @CustomData_add_layer(ptr noundef nonnull %30, i32 noundef 6, i32 noundef 0, ptr noundef nonnull %44, i32 noundef %94) #15
  store ptr %95, ptr %43, align 8, !tbaa !104
  br label %96

96:                                               ; preds = %89, %93, %92, %29
  %97 = getelementptr inbounds %struct.Mesh, ptr %0, i64 0, i32 14
  %98 = load ptr, ptr %97, align 8, !tbaa !133
  %99 = icmp eq ptr %98, null
  br i1 %99, label %102, label %100

100:                                              ; preds = %96
  %101 = load ptr, ptr @MEM_freeN, align 8, !tbaa !34
  tail call void %101(ptr noundef nonnull %98) #15
  store ptr null, ptr %97, align 8, !tbaa !133
  br label %102

102:                                              ; preds = %100, %96
  %103 = load i32, ptr %31, align 4, !tbaa !897
  %104 = icmp sgt i32 %103, 0
  br i1 %104, label %105, label %141

105:                                              ; preds = %102, %134
  %106 = phi i64 [ %137, %134 ], [ 0, %102 ]
  %107 = phi i32 [ %136, %134 ], [ 0, %102 ]
  %108 = phi i32 [ %135, %134 ], [ 0, %102 ]
  %109 = load ptr, ptr %30, align 8, !tbaa !909
  %110 = getelementptr inbounds %struct.CustomDataLayer, ptr %109, i64 %106
  %111 = load i32, ptr %110, align 8, !tbaa !910
  switch i32 %111, label %134 [
    i32 5, label %112
    i32 6, label %123
  ]

112:                                              ; preds = %105
  %113 = getelementptr inbounds %struct.CustomDataLayer, ptr %109, i64 %106, i32 8
  %114 = load i8, ptr %113, align 8, !tbaa !135
  %115 = icmp eq i8 %114, 0
  br i1 %115, label %116, label %121

116:                                              ; preds = %112
  %117 = icmp eq i32 %108, 0
  br i1 %117, label %118, label %119

118:                                              ; preds = %116
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(6) %113, ptr noundef nonnull align 1 dereferenceable(6) @.str.21, i64 6, i1 false) #15
  br label %121

119:                                              ; preds = %116
  %120 = tail call i64 (ptr, i64, ptr, ...) @BLI_snprintf(ptr noundef nonnull %113, i64 noundef 64, ptr noundef nonnull @.str.22, i32 noundef %108) #15
  br label %121

121:                                              ; preds = %118, %119, %112
  %122 = add nsw i32 %108, 1
  br label %134

123:                                              ; preds = %105
  %124 = getelementptr inbounds %struct.CustomDataLayer, ptr %109, i64 %106, i32 8
  %125 = load i8, ptr %124, align 8, !tbaa !135
  %126 = icmp eq i8 %125, 0
  br i1 %126, label %127, label %132

127:                                              ; preds = %123
  %128 = icmp eq i32 %107, 0
  br i1 %128, label %129, label %130

129:                                              ; preds = %127
  store i32 7106371, ptr %124, align 1
  br label %132

130:                                              ; preds = %127
  %131 = tail call i64 (ptr, i64, ptr, ...) @BLI_snprintf(ptr noundef nonnull %124, i64 noundef 64, ptr noundef nonnull @.str.24, i32 noundef %107) #15
  br label %132

132:                                              ; preds = %129, %130, %123
  %133 = add nsw i32 %107, 1
  br label %134

134:                                              ; preds = %105, %121, %132
  %135 = phi i32 [ %122, %121 ], [ %108, %132 ], [ %108, %105 ]
  %136 = phi i32 [ %107, %121 ], [ %133, %132 ], [ %107, %105 ]
  %137 = add nuw nsw i64 %106, 1
  %138 = load i32, ptr %31, align 4, !tbaa !897
  %139 = sext i32 %138 to i64
  %140 = icmp slt i64 %137, %139
  br i1 %140, label %105, label %141, !llvm.loop !912

141:                                              ; preds = %134, %102
  tail call void @BKE_mesh_update_customdata_pointers(ptr noundef nonnull %0, i8 noundef zeroext 1) #15
  ret void
}

; Function Attrs: mustprogress nofree nounwind optsize willreturn memory(argmem: read)
declare i32 @strncmp(ptr nocapture noundef, ptr nocapture noundef, i64 noundef) local_unnamed_addr #5

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @do_version_ntree_242_2(ptr nocapture noundef readonly %0) unnamed_addr #2 !PGOFuncName !913 {
  %2 = getelementptr inbounds %struct.bNodeTree, ptr %0, i64 0, i32 9
  %3 = load i32, ptr %2, align 8, !tbaa !875
  %4 = icmp eq i32 %3, 1
  br i1 %4, label %5, label %43

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.bNodeTree, ptr %0, i64 0, i32 7
  %7 = load ptr, ptr %6, align 8, !tbaa !34
  %8 = icmp eq ptr %7, null
  br i1 %8, label %43, label %9

9:                                                ; preds = %5, %40
  %10 = phi ptr [ %41, %40 ], [ %7, %5 ]
  %11 = getelementptr inbounds %struct.bNode, ptr %10, i64 0, i32 8
  %12 = load i16, ptr %11, align 4, !tbaa !878
  switch i16 %12, label %40 [
    i16 220, label %13
    i16 201, label %13
    i16 240, label %13
  ]

13:                                               ; preds = %9, %9, %9
  %14 = getelementptr inbounds %struct.bNode, ptr %10, i64 0, i32 21
  %15 = load ptr, ptr %14, align 8, !tbaa !880
  %16 = icmp eq ptr %15, null
  %17 = load ptr, ptr @MEM_callocN, align 8, !tbaa !34
  br i1 %16, label %35, label %18

18:                                               ; preds = %13
  %19 = tail call ptr %17(i64 noundef 40, ptr noundef nonnull @.str.25) #15
  %20 = load i32, ptr %15, align 4, !tbaa !914
  %21 = getelementptr inbounds %struct.ImageUser, ptr %19, i64 0, i32 2
  store i32 %20, ptr %21, align 4, !tbaa !916
  %22 = getelementptr inbounds %struct.NodeImageAnim, ptr %15, i64 0, i32 1
  %23 = load i32, ptr %22, align 4, !tbaa !917
  %24 = getelementptr inbounds %struct.ImageUser, ptr %19, i64 0, i32 4
  store i32 %23, ptr %24, align 4, !tbaa !918
  %25 = getelementptr inbounds %struct.NodeImageAnim, ptr %15, i64 0, i32 2
  %26 = load i32, ptr %25, align 4, !tbaa !919
  %27 = add nsw i32 %26, -1
  %28 = getelementptr inbounds %struct.ImageUser, ptr %19, i64 0, i32 3
  store i32 %27, ptr %28, align 8, !tbaa !920
  %29 = getelementptr inbounds %struct.NodeImageAnim, ptr %15, i64 0, i32 3
  %30 = load i8, ptr %29, align 4, !tbaa !921
  %31 = getelementptr inbounds %struct.ImageUser, ptr %19, i64 0, i32 6
  store i8 %30, ptr %31, align 1, !tbaa !922
  %32 = getelementptr inbounds %struct.ImageUser, ptr %19, i64 0, i32 5
  store i8 2, ptr %32, align 8, !tbaa !923
  %33 = getelementptr inbounds %struct.ImageUser, ptr %19, i64 0, i32 7
  store i8 1, ptr %33, align 2, !tbaa !924
  store ptr %19, ptr %14, align 8, !tbaa !880
  %34 = load ptr, ptr @MEM_freeN, align 8, !tbaa !34
  tail call void %34(ptr noundef nonnull %15) #15
  br label %40

35:                                               ; preds = %13
  %36 = tail call ptr %17(i64 noundef 40, ptr noundef nonnull @.str.26) #15
  store ptr %36, ptr %14, align 8, !tbaa !880
  %37 = getelementptr inbounds %struct.ImageUser, ptr %36, i64 0, i32 4
  store i32 1, ptr %37, align 4, !tbaa !918
  %38 = getelementptr inbounds %struct.ImageUser, ptr %36, i64 0, i32 5
  store i8 2, ptr %38, align 8, !tbaa !923
  %39 = getelementptr inbounds %struct.ImageUser, ptr %36, i64 0, i32 7
  store i8 1, ptr %39, align 2, !tbaa !924
  br label %40

40:                                               ; preds = %9, %35, %18
  %41 = load ptr, ptr %10, align 8, !tbaa !34
  %42 = icmp eq ptr %41, null
  br i1 %42, label %43, label %9, !llvm.loop !925

43:                                               ; preds = %40, %5, %1
  ret void
}

; Function Attrs: optsize
declare void @defgroup_unique_name(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @customdata_version_243(ptr nocapture noundef readonly %0) unnamed_addr #9 !PGOFuncName !926 {
  %2 = getelementptr inbounds %struct.Mesh, ptr %0, i64 0, i32 23, i32 2
  %3 = load i32, ptr %2, align 4, !tbaa !897
  %4 = icmp sgt i32 %3, 0
  br i1 %4, label %5, label %16

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.Mesh, ptr %0, i64 0, i32 23
  %7 = load ptr, ptr %6, align 8, !tbaa !909
  %8 = zext nneg i32 %3 to i64
  br label %9

9:                                                ; preds = %5, %9
  %10 = phi i64 [ 0, %5 ], [ %14, %9 ]
  %11 = getelementptr inbounds %struct.CustomDataLayer, ptr %7, i64 %10, i32 3
  %12 = load i32, ptr %11, align 4, !tbaa !927
  %13 = getelementptr inbounds %struct.CustomDataLayer, ptr %7, i64 %10, i32 4
  store i32 %12, ptr %13, align 8, !tbaa !928
  %14 = add nuw nsw i64 %10, 1
  %15 = icmp eq i64 %14, %8
  br i1 %15, label %16, label %9, !llvm.loop !929

16:                                               ; preds = %9, %1
  ret void
}

; Function Attrs: optsize
declare void @unit_m4(ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare ptr @BKE_ptcache_add(ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare ptr @curvemapping_add(i32 noundef, float noundef, float noundef, float noundef, float noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare void @curvemapping_initialize(ptr noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @ntree_version_245(ptr noundef %0, ptr noundef %1, ptr nocapture noundef readonly %2) unnamed_addr #2 !PGOFuncName !930 {
  %4 = getelementptr inbounds %struct.bNodeTree, ptr %2, i64 0, i32 9
  %5 = load i32, ptr %4, align 8, !tbaa !875
  %6 = icmp eq i32 %5, 1
  br i1 %6, label %7, label %59

7:                                                ; preds = %3
  %8 = getelementptr inbounds %struct.bNodeTree, ptr %2, i64 0, i32 7
  %9 = load ptr, ptr %8, align 8, !tbaa !34
  %10 = icmp eq ptr %9, null
  br i1 %10, label %59, label %11

11:                                               ; preds = %7, %56
  %12 = phi ptr [ %57, %56 ], [ %9, %7 ]
  %13 = getelementptr inbounds %struct.bNode, ptr %12, i64 0, i32 8
  %14 = load i16, ptr %13, align 4, !tbaa !878
  %15 = icmp eq i16 %14, 210
  br i1 %15, label %16, label %27

16:                                               ; preds = %11
  %17 = getelementptr inbounds %struct.bNode, ptr %12, i64 0, i32 21
  %18 = load ptr, ptr %17, align 8, !tbaa !880
  %19 = icmp eq ptr %18, null
  br i1 %19, label %20, label %27

20:                                               ; preds = %16
  %21 = load ptr, ptr @MEM_callocN, align 8, !tbaa !34
  %22 = tail call ptr %21(i64 noundef 8, ptr noundef nonnull @.str.27) #15
  store ptr %22, ptr %17, align 8, !tbaa !880
  %23 = getelementptr inbounds %struct.bNode, ptr %12, i64 0, i32 33
  %24 = load i16, ptr %23, align 8, !tbaa !931
  %25 = icmp eq i16 %24, 0
  br i1 %25, label %27, label %26

26:                                               ; preds = %20
  store float 1.000000e+00, ptr %22, align 4, !tbaa !932
  br label %27

27:                                               ; preds = %16, %26, %20, %11
  %28 = getelementptr inbounds %struct.bNode, ptr %12, i64 0, i32 20
  %29 = load ptr, ptr %28, align 8, !tbaa !934
  %30 = tail call ptr @blo_do_versions_newlibadr(ptr noundef %0, ptr noundef %1, ptr noundef %29) #15
  %31 = getelementptr inbounds %struct.bNode, ptr %12, i64 0, i32 21
  %32 = load ptr, ptr %31, align 8, !tbaa !880
  %33 = icmp ne ptr %32, null
  %34 = icmp ne ptr %30, null
  %35 = select i1 %33, i1 %34, i1 false
  br i1 %35, label %36, label %56

36:                                               ; preds = %27
  %37 = getelementptr inbounds %struct.ID, ptr %30, i64 0, i32 4
  %38 = load i16, ptr %37, align 8, !tbaa !405
  %39 = icmp eq i16 %38, 19785
  br i1 %39, label %40, label %56

40:                                               ; preds = %36
  %41 = getelementptr inbounds %struct.ImageUser, ptr %32, i64 0, i32 12
  %42 = load i16, ptr %41, align 2, !tbaa !935
  %43 = and i16 %42, 128
  %44 = icmp eq i16 %43, 0
  br i1 %44, label %47, label %45

45:                                               ; preds = %40
  %46 = and i16 %42, -129
  store i16 %46, ptr %41, align 2, !tbaa !935
  br label %47

47:                                               ; preds = %45, %40
  %48 = phi i16 [ %46, %45 ], [ %42, %40 ]
  %49 = and i16 %48, 4
  %50 = icmp eq i16 %49, 0
  br i1 %50, label %56, label %51

51:                                               ; preds = %47
  %52 = getelementptr inbounds %struct.Image, ptr %30, i64 0, i32 10
  %53 = load i16, ptr %52, align 2, !tbaa !565
  %54 = and i16 %53, -129
  store i16 %54, ptr %52, align 2, !tbaa !565
  %55 = getelementptr inbounds %struct.Image, ptr %30, i64 0, i32 37
  store i8 0, ptr %55, align 8, !tbaa !667
  br label %56

56:                                               ; preds = %27, %36, %51, %47
  %57 = load ptr, ptr %12, align 8, !tbaa !34
  %58 = icmp eq ptr %57, null
  br i1 %58, label %59, label %11, !llvm.loop !936

59:                                               ; preds = %56, %7, %3
  ret void
}

; Function Attrs: optsize
declare ptr @BLI_strncpy(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare ptr @psys_new_settings(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare void @blo_do_versions_oldnewmap_insert(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare i32 @BLI_countlist(ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @copy_v3_v3(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1) unnamed_addr #10 !PGOFuncName !937 {
  %3 = load float, ptr %1, align 4, !tbaa !120
  store float %3, ptr %0, align 4, !tbaa !120
  %4 = getelementptr inbounds float, ptr %1, i64 1
  %5 = load float, ptr %4, align 4, !tbaa !120
  %6 = getelementptr inbounds float, ptr %0, i64 1
  store float %5, ptr %6, align 4, !tbaa !120
  %7 = getelementptr inbounds float, ptr %1, i64 2
  %8 = load float, ptr %7, align 4, !tbaa !120
  %9 = getelementptr inbounds float, ptr %0, i64 2
  store float %8, ptr %9, align 4, !tbaa !120
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @do_version_free_effects_245(ptr noundef %0) unnamed_addr #2 !PGOFuncName !938 {
  %2 = tail call ptr @BLI_pophead(ptr noundef %0) #15
  %3 = icmp eq ptr %2, null
  br i1 %3, label %8, label %4

4:                                                ; preds = %1, %4
  %5 = phi ptr [ %6, %4 ], [ %2, %1 ]
  tail call fastcc void @do_version_free_effect_245(ptr noundef nonnull %5) #16
  %6 = tail call ptr @BLI_pophead(ptr noundef %0) #15
  %7 = icmp eq ptr %6, null
  br i1 %7, label %8, label %4, !llvm.loop !939

8:                                                ; preds = %4, %1
  ret void
}

; Function Attrs: nofree noinline nounwind optsize uwtable
define internal fastcc void @idproperties_fix_group_lengths(ptr readonly %0) unnamed_addr #11 !PGOFuncName !940 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %12, label %3

3:                                                ; preds = %1, %9
  %4 = phi ptr [ %10, %9 ], [ %0, %1 ]
  %5 = getelementptr inbounds %struct.ID, ptr %4, i64 0, i32 9
  %6 = load ptr, ptr %5, align 8, !tbaa !941
  %7 = icmp eq ptr %6, null
  br i1 %7, label %9, label %8

8:                                                ; preds = %3
  tail call fastcc void @idproperties_fix_groups_lengths_recurse(ptr noundef nonnull %6) #16
  br label %9

9:                                                ; preds = %3, %8
  %10 = load ptr, ptr %4, align 8, !tbaa !942
  %11 = icmp eq ptr %10, null
  br i1 %11, label %12, label %3, !llvm.loop !943

12:                                               ; preds = %9, %1
  ret void
}

; Function Attrs: optsize
declare ptr @blo_do_versions_newlibadr_us(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @alphasort_version_246(ptr noundef %0, ptr noundef %1, ptr nocapture noundef readonly %2) unnamed_addr #2 !PGOFuncName !944 {
  %4 = getelementptr inbounds %struct.Mesh, ptr %2, i64 0, i32 23
  %5 = getelementptr inbounds %struct.Mesh, ptr %2, i64 0, i32 23, i32 2
  %6 = load i32, ptr %5, align 4, !tbaa !897
  %7 = icmp sgt i32 %6, 0
  br i1 %7, label %8, label %21

8:                                                ; preds = %3
  %9 = load ptr, ptr %4, align 8, !tbaa !909
  %10 = zext nneg i32 %6 to i64
  br label %11

11:                                               ; preds = %8, %16
  %12 = phi i64 [ 0, %8 ], [ %17, %16 ]
  %13 = getelementptr inbounds %struct.CustomDataLayer, ptr %9, i64 %12
  %14 = load i32, ptr %13, align 8, !tbaa !910
  %15 = icmp eq i32 %14, 5
  br i1 %15, label %19, label %16

16:                                               ; preds = %11
  %17 = add nuw nsw i64 %12, 1
  %18 = icmp eq i64 %17, %10
  br i1 %18, label %112, label %11, !llvm.loop !945

19:                                               ; preds = %11
  %20 = trunc i64 %12 to i32
  br label %21

21:                                               ; preds = %19, %3
  %22 = phi i32 [ 0, %3 ], [ %20, %19 ]
  %23 = icmp eq i32 %22, %6
  br i1 %23, label %112, label %24

24:                                               ; preds = %21
  %25 = getelementptr inbounds %struct.Mesh, ptr %2, i64 0, i32 28
  %26 = load i32, ptr %25, align 8, !tbaa !134
  %27 = icmp sgt i32 %26, 0
  br i1 %27, label %28, label %112

28:                                               ; preds = %24
  %29 = getelementptr inbounds %struct.Mesh, ptr %2, i64 0, i32 12
  %30 = load ptr, ptr %29, align 8, !tbaa !852
  %31 = getelementptr inbounds %struct.Mesh, ptr %2, i64 0, i32 47
  %32 = getelementptr inbounds %struct.Mesh, ptr %2, i64 0, i32 5
  br label %33

33:                                               ; preds = %28, %106
  %34 = phi i64 [ 0, %28 ], [ %107, %106 ]
  %35 = phi ptr [ %30, %28 ], [ %108, %106 ]
  %36 = getelementptr inbounds %struct.MFace, ptr %35, i64 0, i32 4
  %37 = load i16, ptr %36, align 4, !tbaa !946
  %38 = load i16, ptr %31, align 2, !tbaa !947
  %39 = icmp slt i16 %37, %38
  br i1 %39, label %40, label %67

40:                                               ; preds = %33
  %41 = load ptr, ptr %32, align 8, !tbaa !948
  %42 = sext i16 %37 to i64
  %43 = getelementptr inbounds ptr, ptr %41, i64 %42
  %44 = load ptr, ptr %43, align 8, !tbaa !34
  %45 = tail call ptr @blo_do_versions_newlibadr(ptr noundef %0, ptr noundef %1, ptr noundef %44) #15
  %46 = icmp eq ptr %45, null
  br i1 %46, label %67, label %47

47:                                               ; preds = %40
  %48 = getelementptr inbounds %struct.ID, ptr %45, i64 0, i32 3
  %49 = load ptr, ptr %48, align 8, !tbaa !949
  %50 = icmp eq ptr %49, null
  br i1 %50, label %51, label %67

51:                                               ; preds = %47, %63
  %52 = phi i64 [ %65, %63 ], [ 0, %47 ]
  %53 = phi i32 [ %64, %63 ], [ 0, %47 ]
  %54 = getelementptr inbounds %struct.Material, ptr %45, i64 0, i32 102, i64 %52
  %55 = load ptr, ptr %54, align 8, !tbaa !34
  %56 = icmp eq ptr %55, null
  br i1 %56, label %63, label %57

57:                                               ; preds = %51
  %58 = getelementptr inbounds %struct.MTex, ptr %55, i64 0, i32 1
  %59 = load i16, ptr %58, align 2, !tbaa !511
  %60 = and i16 %59, 128
  %61 = icmp eq i16 %60, 0
  %62 = select i1 %61, i32 %53, i32 1
  br label %63

63:                                               ; preds = %57, %51
  %64 = phi i32 [ %53, %51 ], [ %62, %57 ]
  %65 = add nuw nsw i64 %52, 1
  %66 = icmp ult i64 %52, 17
  br i1 %66, label %51, label %67, !llvm.loop !950

67:                                               ; preds = %63, %40, %47, %33
  %68 = phi ptr [ null, %33 ], [ null, %47 ], [ null, %40 ], [ %45, %63 ]
  %69 = phi i32 [ 0, %33 ], [ 0, %47 ], [ 0, %40 ], [ %64, %63 ]
  %70 = load i32, ptr %5, align 4, !tbaa !897
  %71 = icmp sgt i32 %70, 0
  br i1 %71, label %72, label %106

72:                                               ; preds = %67
  %73 = load ptr, ptr %4, align 8, !tbaa !909
  %74 = icmp eq ptr %68, null
  %75 = getelementptr inbounds %struct.Material, ptr %68, i64 0, i32 51
  %76 = icmp eq i32 %69, 0
  %77 = zext nneg i32 %70 to i64
  br label %78

78:                                               ; preds = %72, %103
  %79 = phi i64 [ 0, %72 ], [ %104, %103 ]
  %80 = getelementptr inbounds %struct.CustomDataLayer, ptr %73, i64 %79
  %81 = load i32, ptr %80, align 8, !tbaa !910
  %82 = icmp eq i32 %81, 5
  br i1 %82, label %83, label %103

83:                                               ; preds = %78
  %84 = getelementptr inbounds %struct.CustomDataLayer, ptr %73, i64 %79, i32 9
  %85 = load ptr, ptr %84, align 8, !tbaa !951
  %86 = getelementptr inbounds %struct.MTFace, ptr %85, i64 %34, i32 4
  %87 = load i16, ptr %86, align 2, !tbaa !952
  %88 = and i16 %87, -3
  store i16 %88, ptr %86, align 2, !tbaa !952
  br i1 %74, label %103, label %89

89:                                               ; preds = %83
  %90 = load i32, ptr %75, align 4, !tbaa !153
  %91 = and i32 %90, 64
  %92 = icmp eq i32 %91, 0
  br i1 %92, label %103, label %93

93:                                               ; preds = %89
  %94 = getelementptr inbounds %struct.MTFace, ptr %85, i64 %34, i32 3
  %95 = load i8, ptr %94, align 1, !tbaa !907
  %96 = add i8 %95, -3
  %97 = icmp ult i8 %96, -2
  %98 = icmp eq i8 %95, 4
  %99 = or i1 %76, %98
  %100 = select i1 %97, i1 %99, i1 false
  br i1 %100, label %103, label %101

101:                                              ; preds = %93
  %102 = or i16 %87, 2
  store i16 %102, ptr %86, align 2, !tbaa !952
  br label %103

103:                                              ; preds = %93, %78, %101, %89, %83
  %104 = add nuw nsw i64 %79, 1
  %105 = icmp eq i64 %104, %77
  br i1 %105, label %106, label %78, !llvm.loop !953

106:                                              ; preds = %103, %67
  %107 = add nuw nsw i64 %34, 1
  %108 = getelementptr inbounds %struct.MFace, ptr %35, i64 1
  %109 = load i32, ptr %25, align 8, !tbaa !134
  %110 = sext i32 %109 to i64
  %111 = icmp slt i64 %107, %110
  br i1 %111, label %33, label %112, !llvm.loop !954

112:                                              ; preds = %16, %106, %24, %21
  ret void
}

; Function Attrs: optsize
declare i64 @BLI_strnlen(ptr noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memmove.p0.p0.i64(ptr nocapture writeonly, ptr nocapture readonly, i64, i1 immarg) #12

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fmuladd.f32(float, float, float) #4

; Function Attrs: optsize
declare double @PIL_check_seconds_timer() local_unnamed_addr #3

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.ceil.f64(double) #4

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @mul_v3_fl(ptr nocapture noundef %0, float noundef %1) unnamed_addr #10 !PGOFuncName !955 {
  %3 = load <2 x float>, ptr %0, align 4, !tbaa !120
  %4 = insertelement <2 x float> poison, float %1, i64 0
  %5 = shufflevector <2 x float> %4, <2 x float> poison, <2 x i32> zeroinitializer
  %6 = fmul <2 x float> %3, %5
  store <2 x float> %6, ptr %0, align 4, !tbaa !120
  %7 = getelementptr inbounds float, ptr %0, i64 2
  %8 = load float, ptr %7, align 4, !tbaa !120
  %9 = fmul float %8, %1
  store float %9, ptr %7, align 4, !tbaa !120
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @add_v3_v3v3(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2) unnamed_addr #10 !PGOFuncName !956 {
  %4 = load float, ptr %1, align 4, !tbaa !120
  %5 = load float, ptr %2, align 4, !tbaa !120
  %6 = fadd float %4, %5
  store float %6, ptr %0, align 4, !tbaa !120
  %7 = getelementptr inbounds float, ptr %1, i64 1
  %8 = load float, ptr %7, align 4, !tbaa !120
  %9 = getelementptr inbounds float, ptr %2, i64 1
  %10 = load float, ptr %9, align 4, !tbaa !120
  %11 = fadd float %8, %10
  %12 = getelementptr inbounds float, ptr %0, i64 1
  store float %11, ptr %12, align 4, !tbaa !120
  %13 = getelementptr inbounds float, ptr %1, i64 2
  %14 = load float, ptr %13, align 4, !tbaa !120
  %15 = getelementptr inbounds float, ptr %2, i64 2
  %16 = load float, ptr %15, align 4, !tbaa !120
  %17 = fadd float %14, %16
  %18 = getelementptr inbounds float, ptr %0, i64 2
  store float %17, ptr %18, align 4, !tbaa !120
  ret void
}

; Function Attrs: optsize
declare ptr @CustomData_add_layer(ptr noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #12

; Function Attrs: optsize
declare void @BKE_mesh_update_customdata_pointers(ptr noundef, i8 noundef zeroext) local_unnamed_addr #3

; Function Attrs: optsize
declare ptr @BLI_pophead(ptr noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @do_version_free_effect_245(ptr noundef %0) unnamed_addr #2 !PGOFuncName !957 {
  %2 = getelementptr inbounds %struct.Effect, ptr %0, i64 0, i32 2
  %3 = load i16, ptr %2, align 8, !tbaa !958
  %4 = icmp eq i16 %3, 1
  br i1 %4, label %5, label %11

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.PartEff, ptr %0, i64 0, i32 43
  %7 = load ptr, ptr %6, align 8, !tbaa !960
  %8 = icmp eq ptr %7, null
  br i1 %8, label %11, label %9

9:                                                ; preds = %5
  %10 = load ptr, ptr @MEM_freeN, align 8, !tbaa !34
  tail call void %10(ptr noundef nonnull %7) #15
  br label %11

11:                                               ; preds = %5, %9, %1
  %12 = load ptr, ptr @MEM_freeN, align 8, !tbaa !34
  tail call void %12(ptr noundef nonnull %0) #15
  ret void
}

; Function Attrs: nofree noinline nounwind optsize uwtable
define internal fastcc void @idproperties_fix_groups_lengths_recurse(ptr nocapture noundef %0) unnamed_addr #11 !PGOFuncName !961 {
  %2 = getelementptr inbounds %struct.IDProperty, ptr %0, i64 0, i32 7, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !34
  %4 = icmp eq ptr %3, null
  br i1 %4, label %16, label %5

5:                                                ; preds = %1, %12
  %6 = phi ptr [ %14, %12 ], [ %3, %1 ]
  %7 = phi i32 [ %13, %12 ], [ 0, %1 ]
  %8 = getelementptr inbounds %struct.IDProperty, ptr %6, i64 0, i32 2
  %9 = load i8, ptr %8, align 8, !tbaa !962
  %10 = icmp eq i8 %9, 6
  br i1 %10, label %11, label %12

11:                                               ; preds = %5
  tail call fastcc void @idproperties_fix_groups_lengths_recurse(ptr noundef nonnull %6) #16
  br label %12

12:                                               ; preds = %5, %11
  %13 = add nuw nsw i32 %7, 1
  %14 = load ptr, ptr %6, align 8, !tbaa !34
  %15 = icmp eq ptr %14, null
  br i1 %15, label %16, label %5, !llvm.loop !965

16:                                               ; preds = %12, %1
  %17 = phi i32 [ 0, %1 ], [ %13, %12 ]
  %18 = getelementptr inbounds %struct.IDProperty, ptr %0, i64 0, i32 8
  %19 = load i32, ptr %18, align 8, !tbaa !966
  %20 = icmp eq i32 %19, %17
  br i1 %20, label %23, label %21

21:                                               ; preds = %16
  %22 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.31)
  store i32 %17, ptr %18, align 8, !tbaa !966
  br label %23

23:                                               ; preds = %21, %16
  ret void
}

; Function Attrs: nofree nounwind
declare noundef i32 @puts(ptr nocapture noundef readonly) local_unnamed_addr #13

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #14

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #14

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x i32> @llvm.smax.v2i32(<2 x i32>, <2 x i32>) #14

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x i8> @llvm.umax.v2i8(<2 x i8>, <2 x i8>) #14

attributes #0 = { nofree noinline norecurse nosync nounwind optsize memory(read, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { noinline nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #5 = { mustprogress nofree nounwind optsize willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nofree noinline nosync nounwind optsize memory(readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { nofree noinline norecurse nosync nounwind optsize memory(readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { nofree noinline nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #13 = { nofree nounwind }
attributes #14 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #15 = { nounwind optsize }
attributes #16 = { optsize }
attributes #17 = { nounwind optsize willreturn memory(read) }
attributes #18 = { nounwind }

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
!38 = !{!39, !40, i64 16}
!39 = !{!"PartEff", !35, i64 0, !35, i64 8, !40, i64 16, !40, i64 18, !40, i64 20, !40, i64 22, !40, i64 24, !40, i64 26, !41, i64 28, !41, i64 32, !41, i64 36, !42, i64 40, !42, i64 44, !42, i64 48, !41, i64 52, !41, i64 56, !41, i64 60, !41, i64 64, !41, i64 68, !36, i64 72, !41, i64 84, !41, i64 88, !41, i64 92, !41, i64 96, !41, i64 100, !36, i64 104, !36, i64 116, !36, i64 132, !36, i64 148, !36, i64 156, !40, i64 164, !40, i64 166, !40, i64 168, !40, i64 170, !40, i64 172, !40, i64 174, !40, i64 176, !40, i64 178, !40, i64 180, !40, i64 182, !36, i64 184, !36, i64 248, !36, i64 312, !35, i64 376, !35, i64 384}
!40 = !{!"short", !36, i64 0}
!41 = !{!"float", !36, i64 0}
!42 = !{!"int", !36, i64 0}
!43 = distinct !{!43, !44}
!44 = !{!"llvm.loop.mustprogress"}
!45 = !{!46, !35, i64 224}
!46 = !{!"Object", !47, i64 0, !35, i64 120, !35, i64 128, !40, i64 136, !40, i64 138, !42, i64 140, !42, i64 144, !42, i64 148, !36, i64 152, !35, i64 216, !35, i64 224, !35, i64 232, !35, i64 240, !35, i64 248, !35, i64 256, !35, i64 264, !35, i64 272, !35, i64 280, !35, i64 288, !35, i64 296, !35, i64 304, !48, i64 312, !35, i64 360, !49, i64 368, !49, i64 384, !49, i64 400, !49, i64 416, !42, i64 432, !42, i64 436, !35, i64 440, !35, i64 448, !42, i64 456, !42, i64 460, !36, i64 464, !36, i64 476, !36, i64 488, !36, i64 500, !36, i64 512, !36, i64 524, !36, i64 536, !36, i64 548, !36, i64 560, !36, i64 576, !36, i64 592, !36, i64 604, !41, i64 616, !41, i64 620, !36, i64 624, !36, i64 688, !36, i64 752, !36, i64 816, !36, i64 880, !42, i64 944, !40, i64 948, !40, i64 950, !40, i64 952, !40, i64 954, !40, i64 956, !40, i64 958, !40, i64 960, !40, i64 962, !40, i64 964, !36, i64 966, !36, i64 967, !42, i64 968, !42, i64 972, !42, i64 976, !42, i64 980, !42, i64 984, !41, i64 988, !41, i64 992, !41, i64 996, !41, i64 1000, !41, i64 1004, !41, i64 1008, !41, i64 1012, !41, i64 1016, !41, i64 1020, !41, i64 1024, !41, i64 1028, !41, i64 1032, !40, i64 1036, !40, i64 1038, !40, i64 1040, !36, i64 1042, !36, i64 1043, !40, i64 1044, !36, i64 1046, !36, i64 1047, !41, i64 1048, !41, i64 1052, !49, i64 1056, !49, i64 1072, !49, i64 1088, !49, i64 1104, !41, i64 1120, !40, i64 1124, !40, i64 1126, !36, i64 1128, !42, i64 1144, !42, i64 1148, !35, i64 1152, !36, i64 1160, !36, i64 1161, !40, i64 1162, !36, i64 1164, !49, i64 1176, !49, i64 1192, !49, i64 1208, !49, i64 1224, !35, i64 1240, !35, i64 1248, !35, i64 1256, !36, i64 1264, !36, i64 1265, !40, i64 1266, !41, i64 1268, !35, i64 1272, !35, i64 1280, !35, i64 1288, !35, i64 1296, !50, i64 1304, !50, i64 1312, !42, i64 1320, !42, i64 1324, !49, i64 1328, !49, i64 1344, !35, i64 1360, !35, i64 1368, !35, i64 1376, !36, i64 1384, !35, i64 1392, !49, i64 1400, !35, i64 1416}
!47 = !{!"ID", !35, i64 0, !35, i64 8, !35, i64 16, !35, i64 24, !36, i64 32, !40, i64 98, !42, i64 100, !42, i64 104, !42, i64 108, !35, i64 112}
!48 = !{!"bAnimVizSettings", !42, i64 0, !42, i64 4, !42, i64 8, !42, i64 12, !40, i64 16, !40, i64 18, !40, i64 20, !40, i64 22, !40, i64 24, !40, i64 26, !40, i64 28, !40, i64 30, !42, i64 32, !42, i64 36, !42, i64 40, !42, i64 44}
!49 = !{!"ListBase", !35, i64 0, !35, i64 8}
!50 = !{!"long", !36, i64 0}
!51 = !{!52, !35, i64 16}
!52 = !{!"bConstraint", !35, i64 0, !35, i64 8, !35, i64 16, !40, i64 24, !40, i64 26, !36, i64 28, !36, i64 29, !36, i64 30, !40, i64 94, !41, i64 96, !41, i64 100, !35, i64 104, !41, i64 112, !41, i64 116}
!53 = !{!54, !35, i64 0}
!54 = !{!"bTrackToConstraint", !35, i64 0, !42, i64 8, !42, i64 12, !42, i64 16, !42, i64 20, !36, i64 24}
!55 = !{!46, !40, i64 956}
!56 = !{!54, !42, i64 8}
!57 = !{!46, !40, i64 958}
!58 = !{!54, !42, i64 12}
!59 = !{!60, !40, i64 1040}
!60 = !{!"Main", !35, i64 0, !35, i64 8, !36, i64 16, !40, i64 1040, !40, i64 1042, !40, i64 1044, !40, i64 1046, !50, i64 1048, !36, i64 1056, !40, i64 1072, !35, i64 1080, !49, i64 1088, !49, i64 1104, !49, i64 1120, !49, i64 1136, !49, i64 1152, !49, i64 1168, !49, i64 1184, !49, i64 1200, !49, i64 1216, !49, i64 1232, !49, i64 1248, !49, i64 1264, !49, i64 1280, !49, i64 1296, !49, i64 1312, !49, i64 1328, !49, i64 1344, !49, i64 1360, !49, i64 1376, !49, i64 1392, !49, i64 1408, !49, i64 1424, !49, i64 1440, !49, i64 1456, !49, i64 1472, !49, i64 1488, !49, i64 1504, !49, i64 1520, !49, i64 1536, !49, i64 1552, !49, i64 1568, !49, i64 1584, !49, i64 1600, !49, i64 1616, !36, i64 1632, !35, i64 1888, !35, i64 1896}
!61 = !{!62, !40, i64 98}
!62 = !{!"Tex", !47, i64 0, !35, i64 120, !41, i64 128, !41, i64 132, !41, i64 136, !41, i64 140, !41, i64 144, !41, i64 148, !41, i64 152, !41, i64 156, !41, i64 160, !41, i64 164, !41, i64 168, !41, i64 172, !41, i64 176, !41, i64 180, !41, i64 184, !41, i64 188, !41, i64 192, !41, i64 196, !41, i64 200, !41, i64 204, !41, i64 208, !41, i64 212, !40, i64 216, !40, i64 218, !40, i64 220, !40, i64 222, !40, i64 224, !40, i64 226, !40, i64 228, !40, i64 230, !40, i64 232, !40, i64 234, !41, i64 236, !41, i64 240, !41, i64 244, !41, i64 248, !42, i64 252, !42, i64 256, !40, i64 260, !40, i64 262, !40, i64 264, !40, i64 266, !42, i64 268, !42, i64 272, !42, i64 276, !42, i64 280, !41, i64 284, !41, i64 288, !41, i64 292, !63, i64 296, !35, i64 336, !35, i64 344, !35, i64 352, !35, i64 360, !35, i64 368, !35, i64 376, !35, i64 384, !35, i64 392, !35, i64 400, !36, i64 408, !36, i64 409}
!63 = !{!"ImageUser", !35, i64 0, !42, i64 8, !42, i64 12, !42, i64 16, !42, i64 20, !36, i64 24, !36, i64 25, !36, i64 26, !36, i64 27, !40, i64 28, !40, i64 30, !40, i64 32, !40, i64 34, !42, i64 36}
!64 = !{!62, !40, i64 264}
!65 = !{!62, !40, i64 260}
!66 = !{!62, !40, i64 262}
!67 = distinct !{!67, !44}
!68 = !{!69, !42, i64 708}
!69 = !{!"Scene", !47, i64 0, !35, i64 120, !35, i64 128, !35, i64 136, !35, i64 144, !49, i64 152, !35, i64 168, !35, i64 176, !36, i64 184, !36, i64 196, !36, i64 208, !36, i64 220, !42, i64 232, !42, i64 236, !42, i64 240, !40, i64 244, !36, i64 246, !36, i64 247, !35, i64 248, !35, i64 256, !35, i64 264, !35, i64 272, !70, i64 280, !79, i64 4264, !49, i64 4296, !49, i64 4312, !35, i64 4328, !35, i64 4336, !35, i64 4344, !35, i64 4352, !35, i64 4360, !35, i64 4368, !40, i64 4376, !40, i64 4378, !42, i64 4380, !49, i64 4384, !80, i64 4400, !81, i64 4416, !84, i64 4600, !35, i64 4608, !85, i64 4616, !35, i64 4640, !50, i64 4648, !50, i64 4656, !72, i64 4664, !73, i64 4824, !86, i64 4888, !35, i64 4952}
!70 = !{!"RenderData", !71, i64 0, !35, i64 248, !35, i64 256, !74, i64 264, !75, i64 328, !42, i64 400, !42, i64 404, !42, i64 408, !41, i64 412, !42, i64 416, !42, i64 420, !42, i64 424, !42, i64 428, !40, i64 432, !40, i64 434, !41, i64 436, !41, i64 440, !41, i64 444, !41, i64 448, !41, i64 452, !40, i64 456, !40, i64 458, !40, i64 460, !40, i64 462, !40, i64 464, !40, i64 466, !42, i64 468, !40, i64 472, !40, i64 474, !40, i64 476, !40, i64 478, !40, i64 480, !40, i64 482, !42, i64 484, !42, i64 488, !40, i64 492, !40, i64 494, !42, i64 496, !42, i64 500, !40, i64 504, !40, i64 506, !40, i64 508, !40, i64 510, !40, i64 512, !36, i64 514, !36, i64 515, !42, i64 516, !42, i64 520, !42, i64 524, !40, i64 528, !40, i64 530, !40, i64 532, !40, i64 534, !40, i64 536, !40, i64 538, !40, i64 540, !40, i64 542, !76, i64 544, !76, i64 560, !77, i64 576, !49, i64 592, !40, i64 608, !40, i64 610, !41, i64 612, !41, i64 616, !41, i64 620, !41, i64 624, !42, i64 628, !41, i64 632, !41, i64 636, !41, i64 640, !41, i64 644, !40, i64 648, !40, i64 650, !40, i64 652, !40, i64 654, !40, i64 656, !40, i64 658, !41, i64 660, !41, i64 664, !40, i64 668, !40, i64 670, !41, i64 672, !41, i64 676, !36, i64 680, !42, i64 1704, !40, i64 1708, !40, i64 1710, !36, i64 1712, !36, i64 2480, !36, i64 2496, !36, i64 2512, !36, i64 2513, !36, i64 2514, !36, i64 2515, !42, i64 2520, !40, i64 2524, !40, i64 2526, !41, i64 2528, !41, i64 2532, !40, i64 2536, !40, i64 2538, !41, i64 2540, !40, i64 2544, !40, i64 2546, !42, i64 2548, !40, i64 2552, !40, i64 2554, !40, i64 2556, !40, i64 2558, !41, i64 2560, !41, i64 2564, !35, i64 2568, !42, i64 2576, !41, i64 2580, !36, i64 2584, !78, i64 2616, !42, i64 3976, !42, i64 3980}
!71 = !{!"ImageFormatData", !36, i64 0, !36, i64 1, !36, i64 2, !36, i64 3, !36, i64 4, !36, i64 5, !36, i64 6, !36, i64 7, !40, i64 8, !40, i64 10, !41, i64 12, !36, i64 16, !36, i64 17, !36, i64 18, !72, i64 24, !73, i64 184}
!72 = !{!"ColorManagedViewSettings", !42, i64 0, !42, i64 4, !36, i64 8, !36, i64 72, !41, i64 136, !41, i64 140, !35, i64 144, !35, i64 152}
!73 = !{!"ColorManagedDisplaySettings", !36, i64 0}
!74 = !{!"QuicktimeCodecSettings", !42, i64 0, !42, i64 4, !42, i64 8, !42, i64 12, !42, i64 16, !42, i64 20, !42, i64 24, !42, i64 28, !42, i64 32, !42, i64 36, !42, i64 40, !42, i64 44, !40, i64 48, !40, i64 50, !42, i64 52, !42, i64 56, !42, i64 60}
!75 = !{!"FFMpegCodecData", !42, i64 0, !42, i64 4, !42, i64 8, !42, i64 12, !42, i64 16, !42, i64 20, !42, i64 24, !42, i64 28, !41, i64 32, !42, i64 36, !42, i64 40, !42, i64 44, !42, i64 48, !42, i64 52, !42, i64 56, !42, i64 60, !35, i64 64}
!76 = !{!"rctf", !41, i64 0, !41, i64 4, !41, i64 8, !41, i64 12}
!77 = !{!"rcti", !42, i64 0, !42, i64 4, !42, i64 8, !42, i64 12}
!78 = !{!"BakeData", !71, i64 0, !36, i64 248, !40, i64 1272, !40, i64 1274, !40, i64 1276, !40, i64 1278, !41, i64 1280, !41, i64 1284, !36, i64 1288, !36, i64 1291, !36, i64 1292, !36, i64 1293, !36, i64 1296}
!79 = !{!"AudioData", !42, i64 0, !41, i64 4, !41, i64 8, !41, i64 12, !42, i64 16, !40, i64 20, !40, i64 22, !41, i64 24, !41, i64 28}
!80 = !{!"GameFraming", !36, i64 0, !36, i64 12, !36, i64 13, !36, i64 14, !36, i64 15}
!81 = !{!"GameData", !80, i64 0, !40, i64 16, !40, i64 18, !40, i64 20, !40, i64 22, !40, i64 24, !40, i64 26, !40, i64 28, !40, i64 30, !40, i64 32, !36, i64 34, !82, i64 40, !40, i64 64, !40, i64 66, !41, i64 68, !83, i64 72, !41, i64 128, !41, i64 132, !42, i64 136, !40, i64 140, !40, i64 142, !40, i64 144, !40, i64 146, !40, i64 148, !40, i64 150, !40, i64 152, !40, i64 154, !40, i64 156, !40, i64 158, !40, i64 160, !40, i64 162, !41, i64 164, !41, i64 168, !41, i64 172, !41, i64 176, !41, i64 180}
!82 = !{!"GameDome", !40, i64 0, !40, i64 2, !40, i64 4, !40, i64 6, !41, i64 8, !41, i64 12, !35, i64 16}
!83 = !{!"RecastData", !41, i64 0, !41, i64 4, !41, i64 8, !41, i64 12, !41, i64 16, !41, i64 20, !41, i64 24, !41, i64 28, !41, i64 32, !41, i64 36, !42, i64 40, !41, i64 44, !41, i64 48, !40, i64 52, !40, i64 54}
!84 = !{!"UnitSettings", !41, i64 0, !36, i64 4, !36, i64 5, !40, i64 6}
!85 = !{!"PhysicsSettings", !36, i64 0, !42, i64 12, !42, i64 16, !42, i64 20}
!86 = !{!"ColorManagedColorspaceSettings", !36, i64 0}
!87 = !{!69, !42, i64 704}
!88 = !{!69, !41, i64 716}
!89 = distinct !{!89, !44}
!90 = !{!91, !41, i64 216}
!91 = !{!"Material", !47, i64 0, !35, i64 120, !40, i64 128, !40, i64 130, !41, i64 132, !41, i64 136, !41, i64 140, !41, i64 144, !41, i64 148, !41, i64 152, !41, i64 156, !41, i64 160, !41, i64 164, !41, i64 168, !41, i64 172, !41, i64 176, !41, i64 180, !41, i64 184, !41, i64 188, !41, i64 192, !41, i64 196, !41, i64 200, !41, i64 204, !41, i64 208, !41, i64 212, !41, i64 216, !41, i64 220, !92, i64 224, !93, i64 312, !41, i64 328, !41, i64 332, !41, i64 336, !41, i64 340, !41, i64 344, !41, i64 348, !41, i64 352, !40, i64 356, !40, i64 358, !40, i64 360, !36, i64 362, !36, i64 363, !41, i64 364, !41, i64 368, !40, i64 372, !40, i64 374, !41, i64 376, !41, i64 380, !41, i64 384, !41, i64 388, !40, i64 392, !40, i64 394, !42, i64 396, !42, i64 400, !42, i64 404, !42, i64 408, !40, i64 412, !40, i64 414, !40, i64 416, !40, i64 418, !41, i64 420, !41, i64 424, !41, i64 428, !41, i64 432, !41, i64 436, !41, i64 440, !41, i64 444, !41, i64 448, !41, i64 452, !41, i64 456, !36, i64 460, !41, i64 524, !41, i64 528, !41, i64 532, !42, i64 536, !36, i64 540, !36, i64 541, !36, i64 542, !36, i64 543, !40, i64 544, !40, i64 546, !40, i64 548, !36, i64 550, !36, i64 551, !40, i64 552, !40, i64 554, !41, i64 556, !41, i64 560, !36, i64 564, !41, i64 580, !41, i64 584, !40, i64 588, !40, i64 590, !35, i64 592, !35, i64 600, !36, i64 608, !36, i64 609, !36, i64 610, !36, i64 611, !40, i64 612, !40, i64 614, !41, i64 616, !41, i64 620, !36, i64 624, !35, i64 768, !35, i64 776, !35, i64 784, !35, i64 792, !41, i64 800, !41, i64 804, !41, i64 808, !41, i64 812, !41, i64 816, !40, i64 820, !40, i64 822, !36, i64 824, !36, i64 836, !41, i64 848, !41, i64 852, !41, i64 856, !41, i64 860, !41, i64 864, !41, i64 868, !41, i64 872, !40, i64 876, !40, i64 878, !42, i64 880, !40, i64 884, !40, i64 886, !36, i64 888, !40, i64 904, !40, i64 906, !40, i64 908, !40, i64 910, !40, i64 912, !36, i64 914, !35, i64 920, !49, i64 928}
!92 = !{!"VolumeSettings", !41, i64 0, !41, i64 4, !41, i64 8, !41, i64 12, !36, i64 16, !36, i64 28, !36, i64 40, !41, i64 52, !41, i64 56, !41, i64 60, !40, i64 64, !40, i64 66, !40, i64 68, !40, i64 70, !41, i64 72, !41, i64 76, !41, i64 80, !41, i64 84}
!93 = !{!"GameSettings", !42, i64 0, !42, i64 4, !42, i64 8, !42, i64 12}
!94 = distinct !{!94, !44}
!95 = !{!46, !40, i64 950}
!96 = !{!46, !42, i64 456}
!97 = !{!46, !35, i64 440}
!98 = distinct !{!98, !44}
!99 = distinct !{!99, !44}
!100 = !{!46, !40, i64 952}
!101 = distinct !{!101, !44}
!102 = !{!42, !42, i64 0}
!103 = distinct !{!103, !44}
!104 = !{!105, !35, i64 256}
!105 = !{!"Mesh", !47, i64 0, !35, i64 120, !35, i64 128, !35, i64 136, !35, i64 144, !35, i64 152, !35, i64 160, !35, i64 168, !35, i64 176, !35, i64 184, !35, i64 192, !35, i64 200, !35, i64 208, !35, i64 216, !35, i64 224, !35, i64 232, !35, i64 240, !35, i64 248, !35, i64 256, !35, i64 264, !35, i64 272, !106, i64 280, !106, i64 480, !106, i64 680, !106, i64 880, !106, i64 1080, !42, i64 1280, !42, i64 1284, !42, i64 1288, !42, i64 1292, !42, i64 1296, !42, i64 1300, !42, i64 1304, !36, i64 1308, !36, i64 1320, !36, i64 1332, !42, i64 1344, !40, i64 1348, !40, i64 1350, !41, i64 1352, !42, i64 1356, !36, i64 1360, !36, i64 1361, !36, i64 1362, !36, i64 1363, !36, i64 1364, !36, i64 1365, !40, i64 1366, !35, i64 1368}
!106 = !{!"CustomData", !35, i64 0, !36, i64 8, !42, i64 172, !42, i64 176, !42, i64 180, !35, i64 184, !35, i64 192}
!107 = distinct !{!107, !44}
!108 = !{!69, !42, i64 800}
!109 = distinct !{!109, !44}
!110 = !{!46, !36, i64 1046}
!111 = distinct !{!111, !44}
!112 = distinct !{!112, !44}
!113 = distinct !{!113, !44}
!114 = !{!115, !42, i64 32}
!115 = !{!"SpaceLink", !35, i64 0, !35, i64 8, !49, i64 16, !42, i64 32, !41, i64 36, !36, i64 40}
!116 = !{!117, !40, i64 286}
!117 = !{!"View3D", !35, i64 0, !35, i64 8, !49, i64 16, !42, i64 32, !41, i64 36, !36, i64 40, !36, i64 56, !41, i64 72, !41, i64 76, !36, i64 80, !36, i64 81, !42, i64 84, !42, i64 88, !40, i64 92, !40, i64 94, !35, i64 96, !35, i64 104, !76, i64 112, !49, i64 128, !35, i64 144, !35, i64 152, !36, i64 160, !42, i64 224, !42, i64 228, !40, i64 232, !40, i64 234, !40, i64 236, !40, i64 238, !40, i64 240, !40, i64 242, !41, i64 244, !41, i64 248, !41, i64 252, !41, i64 256, !36, i64 260, !36, i64 272, !40, i64 284, !40, i64 286, !40, i64 288, !36, i64 290, !36, i64 291, !36, i64 292, !36, i64 293, !36, i64 294, !49, i64 296, !49, i64 312, !49, i64 328, !36, i64 344, !36, i64 345, !36, i64 346, !36, i64 347, !35, i64 352, !35, i64 360, !35, i64 368}
!118 = distinct !{!118, !44}
!119 = !{!91, !41, i64 424}
!120 = !{!41, !41, i64 0}
!121 = distinct !{!121, !44}
!122 = !{!62, !41, i64 148}
!123 = !{!62, !41, i64 152}
!124 = !{!62, !41, i64 156}
!125 = distinct !{!125, !44}
!126 = distinct !{!126, !44}
!127 = !{!69, !41, i64 720}
!128 = distinct !{!128, !44}
!129 = !{!69, !40, i64 820}
!130 = distinct !{!130, !44}
!131 = !{!105, !41, i64 1352}
!132 = distinct !{!132, !44}
!133 = !{!105, !35, i64 224}
!134 = !{!105, !42, i64 1288}
!135 = !{!36, !36, i64 0}
!136 = distinct !{!136, !44}
!137 = distinct !{!137, !44}
!138 = !{!105, !36, i64 1362}
!139 = distinct !{!139, !44}
!140 = distinct !{!140, !44}
!141 = distinct !{!141, !44}
!142 = distinct !{!142, !44}
!143 = !{!39, !40, i64 168}
!144 = distinct !{!144, !44}
!145 = distinct !{!145, !44}
!146 = distinct !{!146, !44}
!147 = !{!148, !40, i64 76}
!148 = !{!"SpaceText", !35, i64 0, !35, i64 8, !49, i64 16, !42, i64 32, !41, i64 36, !36, i64 40, !35, i64 56, !42, i64 64, !42, i64 68, !40, i64 72, !40, i64 74, !40, i64 76, !36, i64 78, !36, i64 79, !42, i64 80, !42, i64 84, !42, i64 88, !40, i64 92, !40, i64 94, !40, i64 96, !40, i64 98, !41, i64 100, !77, i64 104, !77, i64 120, !42, i64 136, !42, i64 140, !36, i64 144, !36, i64 400, !40, i64 656, !40, i64 658, !36, i64 660, !35, i64 664, !36, i64 672}
!149 = distinct !{!149, !44}
!150 = distinct !{!150, !44}
!151 = distinct !{!151, !44}
!152 = !{!60, !35, i64 1120}
!153 = !{!91, !42, i64 396}
!154 = distinct !{!154, !44}
!155 = !{!46, !35, i64 0}
!156 = distinct !{!156, !44}
!157 = !{!46, !41, i64 996}
!158 = !{!46, !41, i64 1004}
!159 = distinct !{!159, !44}
!160 = !{!161, !40, i64 58}
!161 = !{!"TFace", !35, i64 0, !36, i64 8, !36, i64 40, !36, i64 56, !36, i64 57, !40, i64 58, !40, i64 60, !40, i64 62}
!162 = distinct !{!162, !44}
!163 = distinct !{!163, !44}
!164 = !{!46, !42, i64 1144}
!165 = !{!46, !40, i64 964}
!166 = distinct !{!166, !44}
!167 = distinct !{!167, !44}
!168 = !{!169, !40, i64 24}
!169 = !{!"bActuator", !35, i64 0, !35, i64 8, !35, i64 16, !40, i64 24, !40, i64 26, !40, i64 28, !40, i64 30, !36, i64 32, !35, i64 96, !35, i64 104}
!170 = !{!169, !35, i64 96}
!171 = !{!172, !40, i64 2}
!172 = !{!"bIpoActuator", !40, i64 0, !40, i64 2, !41, i64 4, !41, i64 8, !36, i64 12, !36, i64 76, !40, i64 140, !40, i64 142, !40, i64 144, !40, i64 146}
!173 = !{!174, !40, i64 4}
!174 = !{!"bEditObjectActuator", !42, i64 0, !40, i64 4, !40, i64 6, !35, i64 8, !35, i64 16, !36, i64 24, !36, i64 88, !36, i64 100, !41, i64 112, !40, i64 116, !40, i64 118, !40, i64 120, !40, i64 122, !42, i64 124}
!175 = !{!176, !35, i64 8}
!176 = !{!"bAddObjectActuator", !42, i64 0, !42, i64 4, !35, i64 8}
!177 = !{!174, !35, i64 8}
!178 = !{!176, !42, i64 0}
!179 = !{!174, !42, i64 0}
!180 = !{!169, !40, i64 28}
!181 = distinct !{!181, !44}
!182 = distinct !{!182, !44}
!183 = !{!184, !40, i64 0}
!184 = !{!"bObjectActuator", !40, i64 0, !40, i64 2, !40, i64 4, !40, i64 6, !36, i64 8, !36, i64 20, !36, i64 32, !36, i64 44, !36, i64 56, !36, i64 68, !36, i64 80, !36, i64 92, !35, i64 104}
!185 = distinct !{!185, !44}
!186 = distinct !{!186, !44}
!187 = distinct !{!187, !44}
!188 = !{!189, !41, i64 1176}
!189 = !{!"bSound", !47, i64 0, !36, i64 120, !35, i64 1144, !35, i64 1152, !35, i64 1160, !35, i64 1168, !41, i64 1176, !41, i64 1180, !41, i64 1184, !41, i64 1188, !41, i64 1192, !41, i64 1196, !42, i64 1200, !42, i64 1204, !35, i64 1208, !35, i64 1216, !35, i64 1224}
!190 = distinct !{!190, !44}
!191 = distinct !{!191, !44}
!192 = !{!174, !40, i64 116}
!193 = distinct !{!193, !44}
!194 = !{!195, !40, i64 16}
!195 = !{!"bSensor", !35, i64 0, !35, i64 8, !40, i64 16, !40, i64 18, !40, i64 20, !40, i64 22, !40, i64 24, !40, i64 26, !40, i64 28, !40, i64 30, !36, i64 32, !35, i64 96, !35, i64 104, !35, i64 112, !40, i64 120, !40, i64 122, !40, i64 124, !40, i64 126}
!196 = !{!195, !35, i64 96}
!197 = !{!198, !41, i64 68}
!198 = !{!"bRadarSensor", !36, i64 0, !41, i64 64, !41, i64 68, !40, i64 72, !40, i64 74}
!199 = !{!195, !40, i64 22}
!200 = !{!195, !40, i64 24}
!201 = !{!195, !40, i64 120}
!202 = !{!203, !40, i64 132}
!203 = !{!"bCollisionSensor", !36, i64 0, !36, i64 64, !40, i64 128, !40, i64 130, !40, i64 132, !40, i64 134}
!204 = !{!205, !40, i64 196}
!205 = !{!"bRaySensor", !36, i64 0, !41, i64 64, !36, i64 68, !36, i64 132, !40, i64 196, !40, i64 198, !42, i64 200}
!206 = distinct !{!206, !44}
!207 = distinct !{!207, !44}
!208 = distinct !{!208, !44}
!209 = distinct !{!209, !44}
!210 = !{!189, !41, i64 1196}
!211 = !{!189, !41, i64 1180}
!212 = !{!189, !42, i64 1200}
!213 = distinct !{!213, !44}
!214 = distinct !{!214, !44}
!215 = !{!216, !40, i64 80}
!216 = !{!"bProperty", !35, i64 0, !35, i64 8, !36, i64 16, !40, i64 80, !40, i64 82, !42, i64 84, !35, i64 88}
!217 = !{!216, !42, i64 84}
!218 = distinct !{!218, !44}
!219 = !{!105, !40, i64 1350}
!220 = distinct !{!220, !44}
!221 = !{!46, !41, i64 1000}
!222 = distinct !{!222, !44}
!223 = !{!224, !36, i64 0}
!224 = !{!"MCol", !36, i64 0, !36, i64 1, !36, i64 2, !36, i64 3}
!225 = distinct !{!225, !44, !226, !227}
!226 = !{!"llvm.loop.isvectorized", i32 1}
!227 = !{!"llvm.loop.unroll.runtime.disable"}
!228 = distinct !{!228, !44}
!229 = distinct !{!229, !44}
!230 = distinct !{!230, !44}
!231 = !{!69, !40, i64 738}
!232 = !{!69, !40, i64 740}
!233 = !{!69, !40, i64 742}
!234 = distinct !{!234, !44}
!235 = !{!69, !40, i64 744}
!236 = distinct !{!236, !44}
!237 = distinct !{!237, !44}
!238 = !{!239, !40, i64 1304}
!239 = !{!"Image", !47, i64 0, !36, i64 120, !35, i64 1144, !35, i64 1152, !35, i64 1160, !35, i64 1168, !36, i64 1176, !40, i64 1240, !40, i64 1242, !40, i64 1244, !40, i64 1246, !40, i64 1248, !40, i64 1250, !42, i64 1252, !40, i64 1256, !40, i64 1258, !40, i64 1260, !40, i64 1262, !40, i64 1264, !40, i64 1266, !42, i64 1268, !35, i64 1272, !35, i64 1280, !35, i64 1288, !41, i64 1296, !42, i64 1300, !40, i64 1304, !40, i64 1306, !42, i64 1308, !42, i64 1312, !36, i64 1316, !36, i64 1317, !40, i64 1318, !36, i64 1320, !41, i64 1336, !41, i64 1340, !86, i64 1344, !36, i64 1408, !36, i64 1409, !36, i64 1416}
!240 = distinct !{!240, !44}
!241 = distinct !{!241, !44}
!242 = !{!243, !40, i64 0}
!243 = !{!"bKeyboardSensor", !40, i64 0, !40, i64 2, !40, i64 4, !40, i64 6, !36, i64 8, !36, i64 72}
!244 = !{i32 -32768, i32 32768}
!245 = !{!243, !40, i64 2}
!246 = !{!243, !40, i64 6}
!247 = distinct !{!247, !44}
!248 = !{!189, !35, i64 1144}
!249 = !{!189, !35, i64 1160}
!250 = distinct !{!250, !44}
!251 = !{!105, !36, i64 1363}
!252 = distinct !{!252, !44}
!253 = !{!69, !40, i64 752}
!254 = distinct !{!254, !44}
!255 = distinct !{!255, !44}
!256 = distinct !{!256, !44}
!257 = !{!258, !40, i64 164}
!258 = !{!"SpaceSeq", !35, i64 0, !35, i64 8, !49, i64 16, !42, i64 32, !41, i64 36, !36, i64 40, !259, i64 56, !41, i64 216, !41, i64 220, !40, i64 224, !40, i64 226, !40, i64 228, !40, i64 230, !42, i64 232, !41, i64 236, !42, i64 240, !42, i64 244, !35, i64 248, !260, i64 256}
!259 = !{!"View2D", !76, i64 0, !76, i64 16, !77, i64 32, !77, i64 48, !77, i64 64, !36, i64 80, !36, i64 88, !41, i64 96, !41, i64 100, !40, i64 104, !40, i64 106, !40, i64 108, !40, i64 110, !40, i64 112, !40, i64 114, !40, i64 116, !40, i64 118, !40, i64 120, !40, i64 122, !40, i64 124, !40, i64 126, !35, i64 128, !42, i64 136, !42, i64 140, !35, i64 144, !35, i64 152}
!260 = !{!"SequencerScopes", !35, i64 0, !35, i64 8, !35, i64 16, !35, i64 24, !35, i64 32, !35, i64 40}
!261 = distinct !{!261, !44}
!262 = !{!263, !40, i64 206}
!263 = !{!"World", !47, i64 0, !35, i64 120, !40, i64 128, !40, i64 130, !40, i64 132, !40, i64 134, !41, i64 136, !41, i64 140, !41, i64 144, !41, i64 148, !41, i64 152, !41, i64 156, !41, i64 160, !41, i64 164, !41, i64 168, !41, i64 172, !41, i64 176, !41, i64 180, !41, i64 184, !41, i64 188, !41, i64 192, !41, i64 196, !40, i64 200, !40, i64 202, !40, i64 204, !40, i64 206, !40, i64 208, !40, i64 210, !40, i64 212, !40, i64 214, !41, i64 216, !41, i64 220, !41, i64 224, !41, i64 228, !41, i64 232, !41, i64 236, !41, i64 240, !41, i64 244, !41, i64 248, !41, i64 252, !41, i64 256, !41, i64 260, !40, i64 264, !40, i64 266, !40, i64 268, !40, i64 270, !41, i64 272, !41, i64 276, !41, i64 280, !41, i64 284, !40, i64 288, !40, i64 290, !40, i64 292, !40, i64 294, !41, i64 296, !41, i64 300, !41, i64 304, !41, i64 308, !41, i64 312, !41, i64 316, !41, i64 320, !40, i64 324, !40, i64 326, !40, i64 328, !40, i64 330, !40, i64 332, !40, i64 334, !35, i64 336, !35, i64 344, !35, i64 352, !36, i64 360, !40, i64 504, !40, i64 506, !36, i64 508, !35, i64 512, !35, i64 520}
!264 = distinct !{!264, !44}
!265 = !{!52, !40, i64 24}
!266 = distinct !{!266, !44}
!267 = !{!46, !40, i64 136}
!268 = !{!46, !35, i64 288}
!269 = distinct !{!269, !44}
!270 = distinct !{!270, !44}
!271 = distinct !{!271, !44}
!272 = !{!69, !42, i64 4264}
!273 = !{!69, !40, i64 4284}
!274 = distinct !{!274, !44}
!275 = distinct !{!275, !44}
!276 = distinct !{!276, !44}
!277 = distinct !{!277, !44}
!278 = distinct !{!278, !44}
!279 = distinct !{!279, !44}
!280 = distinct !{!280, !44}
!281 = distinct !{!281, !44}
!282 = distinct !{!282, !44}
!283 = distinct !{!283, !44}
!284 = distinct !{!284, !44}
!285 = distinct !{!285, !44}
!286 = !{!287, !41, i64 156}
!287 = !{!"SpaceButs", !35, i64 0, !35, i64 8, !49, i64 16, !42, i64 32, !41, i64 36, !36, i64 40, !259, i64 56, !40, i64 216, !40, i64 218, !40, i64 220, !40, i64 222, !40, i64 224, !40, i64 226, !40, i64 228, !40, i64 230, !36, i64 232, !36, i64 233, !35, i64 240, !42, i64 248, !42, i64 252, !35, i64 256, !35, i64 264}
!288 = !{!287, !40, i64 224}
!289 = !{!287, !40, i64 216}
!290 = distinct !{!290, !44}
!291 = distinct !{!291, !44}
!292 = distinct !{!292, !44}
!293 = !{!115, !41, i64 36}
!294 = !{!295, !41, i64 156}
!295 = !{!"SpaceAction", !35, i64 0, !35, i64 8, !49, i64 16, !42, i64 32, !41, i64 36, !36, i64 40, !259, i64 56, !35, i64 216, !296, i64 224, !36, i64 336, !36, i64 337, !40, i64 338, !41, i64 340}
!296 = !{!"bDopeSheet", !35, i64 0, !49, i64 8, !35, i64 24, !36, i64 32, !42, i64 96, !42, i64 100, !42, i64 104, !42, i64 108}
!297 = distinct !{!297, !44}
!298 = distinct !{!298, !44}
!299 = distinct !{!299, !44}
!300 = !{!117, !36, i64 290}
!301 = distinct !{!301, !44}
!302 = !{!91, !41, i64 340}
!303 = !{!91, !41, i64 332}
!304 = !{!91, !41, i64 188}
!305 = !{!91, !40, i64 356}
!306 = !{!91, !40, i64 358}
!307 = !{!91, !41, i64 336}
!308 = !{!91, !41, i64 328}
!309 = distinct !{!309, !44}
!310 = !{!69, !41, i64 904}
!311 = distinct !{!311, !44}
!312 = !{!313, !41, i64 152}
!313 = !{!"Lamp", !47, i64 0, !35, i64 120, !40, i64 128, !40, i64 130, !42, i64 132, !40, i64 136, !40, i64 138, !41, i64 140, !41, i64 144, !41, i64 148, !41, i64 152, !41, i64 156, !41, i64 160, !41, i64 164, !41, i64 168, !41, i64 172, !41, i64 176, !41, i64 180, !41, i64 184, !41, i64 188, !41, i64 192, !41, i64 196, !35, i64 200, !40, i64 208, !40, i64 210, !41, i64 212, !41, i64 216, !41, i64 220, !41, i64 224, !41, i64 228, !41, i64 232, !41, i64 236, !40, i64 240, !40, i64 242, !40, i64 244, !40, i64 246, !36, i64 248, !36, i64 249, !40, i64 250, !40, i64 252, !40, i64 254, !40, i64 256, !40, i64 258, !41, i64 260, !41, i64 264, !41, i64 268, !41, i64 272, !40, i64 276, !40, i64 278, !40, i64 280, !40, i64 282, !40, i64 284, !40, i64 286, !41, i64 288, !41, i64 292, !41, i64 296, !41, i64 300, !41, i64 304, !41, i64 308, !41, i64 312, !41, i64 316, !41, i64 320, !41, i64 324, !41, i64 328, !41, i64 332, !41, i64 336, !40, i64 340, !36, i64 342, !35, i64 344, !36, i64 352, !40, i64 496, !40, i64 498, !36, i64 500, !35, i64 504, !35, i64 512}
!314 = !{!313, !40, i64 250}
!315 = !{!313, !40, i64 252}
!316 = !{!313, !40, i64 254}
!317 = !{!313, !41, i64 260}
!318 = !{!313, !41, i64 264}
!319 = !{!313, !41, i64 268}
!320 = distinct !{!320, !44}
!321 = !{!263, !41, i64 180}
!322 = !{!263, !41, i64 172}
!323 = distinct !{!323, !44}
!324 = distinct !{!324, !44}
!325 = distinct !{!325, !44}
!326 = !{!327, !35, i64 0}
!327 = !{!"bScreen", !47, i64 0, !49, i64 120, !49, i64 136, !49, i64 152, !49, i64 168, !35, i64 184, !35, i64 192, !42, i64 200, !42, i64 204, !40, i64 208, !40, i64 210, !40, i64 212, !40, i64 214, !40, i64 216, !40, i64 218, !40, i64 220, !40, i64 222, !40, i64 224, !40, i64 226, !40, i64 228, !40, i64 230, !35, i64 232, !35, i64 240}
!328 = distinct !{!328, !44}
!329 = !{!60, !35, i64 1312}
!330 = !{!62, !40, i64 230}
!331 = !{!62, !41, i64 192}
!332 = !{!62, !41, i64 212}
!333 = distinct !{!333, !44}
!334 = !{!263, !41, i64 272}
!335 = !{!263, !41, i64 284}
!336 = !{!263, !40, i64 290}
!337 = !{!263, !41, i64 280}
!338 = !{!263, !35, i64 0}
!339 = distinct !{!339, !44}
!340 = distinct !{!340, !44}
!341 = distinct !{!341, !44}
!342 = !{!343, !41, i64 172}
!343 = !{!"SpaceNla", !35, i64 0, !35, i64 8, !49, i64 16, !42, i64 32, !41, i64 36, !36, i64 40, !40, i64 56, !40, i64 58, !42, i64 60, !35, i64 64, !259, i64 72}
!344 = distinct !{!344, !44}
!345 = !{!69, !40, i64 812}
!346 = distinct !{!346, !44}
!347 = !{!91, !41, i64 616}
!348 = !{!91, !41, i64 620}
!349 = !{!91, !40, i64 544}
!350 = distinct !{!350, !44}
!351 = distinct !{!351, !44}
!352 = distinct !{!352, !44}
!353 = !{!117, !40, i64 240}
!354 = distinct !{!354, !44}
!355 = distinct !{!355, !44}
!356 = distinct !{!356, !44}
!357 = distinct !{!357, !44}
!358 = !{!148, !42, i64 88}
!359 = distinct !{!359, !44}
!360 = !{!60, !35, i64 1088}
!361 = !{!62, !41, i64 288}
!362 = distinct !{!362, !44}
!363 = !{!69, !35, i64 256}
!364 = !{!365, !42, i64 24}
!365 = !{!"SeqIterator", !35, i64 0, !42, i64 8, !42, i64 12, !35, i64 16, !42, i64 24}
!366 = !{!365, !35, i64 16}
!367 = !{!368, !42, i64 100}
!368 = !{!"Sequence", !35, i64 0, !35, i64 8, !35, i64 16, !35, i64 24, !36, i64 32, !42, i64 96, !42, i64 100, !42, i64 104, !42, i64 108, !42, i64 112, !42, i64 116, !42, i64 120, !42, i64 124, !42, i64 128, !42, i64 132, !42, i64 136, !42, i64 140, !41, i64 144, !41, i64 148, !41, i64 152, !40, i64 156, !40, i64 158, !42, i64 160, !42, i64 164, !35, i64 168, !35, i64 176, !35, i64 184, !35, i64 192, !35, i64 200, !35, i64 208, !35, i64 216, !41, i64 224, !41, i64 228, !35, i64 232, !35, i64 240, !35, i64 248, !49, i64 256, !35, i64 272, !35, i64 280, !41, i64 288, !41, i64 292, !41, i64 296, !41, i64 300, !35, i64 304, !42, i64 312, !42, i64 316, !42, i64 320, !41, i64 324, !42, i64 328, !36, i64 332, !36, i64 333, !49, i64 336}
!369 = !{!368, !36, i64 332}
!370 = distinct !{!370, !44}
!371 = !{!69, !35, i64 0}
!372 = distinct !{!372, !44}
!373 = !{!374, !41, i64 148}
!374 = !{!"Camera", !47, i64 0, !35, i64 120, !36, i64 128, !36, i64 129, !40, i64 130, !41, i64 132, !41, i64 136, !41, i64 140, !41, i64 144, !41, i64 148, !41, i64 152, !41, i64 156, !41, i64 160, !41, i64 164, !41, i64 168, !41, i64 172, !35, i64 176, !35, i64 184, !36, i64 192, !36, i64 193}
!375 = !{!374, !41, i64 144}
!376 = !{!374, !36, i64 128}
!377 = distinct !{!377, !44}
!378 = distinct !{!378, !44}
!379 = distinct !{!379, !44}
!380 = !{!117, !36, i64 291}
!381 = distinct !{!381, !44}
!382 = !{!91, !41, i64 584}
!383 = distinct !{!383, !44}
!384 = !{!46, !35, i64 1248}
!385 = !{!386, !41, i64 128}
!386 = !{!"SoftBody", !42, i64 0, !42, i64 4, !35, i64 8, !35, i64 16, !36, i64 24, !36, i64 25, !40, i64 26, !41, i64 28, !36, i64 32, !41, i64 96, !41, i64 100, !41, i64 104, !41, i64 108, !41, i64 112, !41, i64 116, !41, i64 120, !41, i64 124, !41, i64 128, !40, i64 132, !36, i64 134, !40, i64 198, !41, i64 200, !41, i64 204, !36, i64 208, !42, i64 272, !42, i64 276, !42, i64 280, !40, i64 284, !40, i64 286, !35, i64 288, !42, i64 296, !42, i64 300, !41, i64 304, !41, i64 308, !41, i64 312, !41, i64 316, !40, i64 320, !40, i64 322, !40, i64 324, !40, i64 326, !40, i64 328, !40, i64 330, !40, i64 332, !40, i64 334, !35, i64 336, !41, i64 344, !41, i64 348, !35, i64 352, !49, i64 360, !35, i64 376, !36, i64 384, !36, i64 396, !36, i64 432, !42, i64 468}
!387 = !{!386, !41, i64 108}
!388 = !{!386, !42, i64 280}
!389 = !{!386, !42, i64 272}
!390 = !{!386, !42, i64 276}
!391 = !{!386, !40, i64 132}
!392 = distinct !{!392, !44}
!393 = distinct !{!393, !44}
!394 = distinct !{!394, !44}
!395 = distinct !{!395, !44}
!396 = !{!46, !35, i64 216}
!397 = !{!46, !40, i64 138}
!398 = !{!399, !40, i64 24}
!399 = !{!"bPose", !49, i64 0, !35, i64 16, !40, i64 24, !40, i64 26, !42, i64 28, !42, i64 32, !41, i64 36, !36, i64 40, !36, i64 52, !49, i64 64, !42, i64 80, !42, i64 84, !35, i64 88, !35, i64 96, !48, i64 104, !36, i64 152}
!400 = !{!46, !36, i64 1161}
!401 = !{!46, !35, i64 296}
!402 = !{!403, !42, i64 192}
!403 = !{!"bArmature", !47, i64 0, !35, i64 120, !49, i64 128, !49, i64 144, !35, i64 160, !35, i64 168, !35, i64 176, !35, i64 184, !42, i64 192, !42, i64 196, !42, i64 200, !42, i64 204, !40, i64 208, !40, i64 210, !42, i64 212, !42, i64 216, !42, i64 220, !40, i64 224, !40, i64 226, !40, i64 228, !40, i64 230, !42, i64 232, !42, i64 236, !42, i64 240, !42, i64 244, !42, i64 248, !42, i64 252}
!404 = !{!46, !40, i64 1044}
!405 = !{!40, !40, i64 0}
!406 = !{!105, !36, i64 1364}
!407 = !{!408, !40, i64 112}
!408 = !{!"SubsurfModifierData", !409, i64 0, !40, i64 112, !40, i64 114, !40, i64 116, !40, i64 118, !35, i64 120, !35, i64 128}
!409 = !{!"ModifierData", !35, i64 0, !35, i64 8, !42, i64 16, !42, i64 20, !42, i64 24, !42, i64 28, !36, i64 32, !35, i64 96, !35, i64 104}
!410 = !{!408, !42, i64 20}
!411 = !{!408, !40, i64 118}
!412 = !{!413, !35, i64 0}
!413 = !{!"bFollowPathConstraint", !35, i64 0, !41, i64 8, !41, i64 12, !42, i64 16, !40, i64 20, !40, i64 22}
!414 = !{!415, !42, i64 268}
!415 = !{!"Curve", !47, i64 0, !35, i64 120, !35, i64 128, !49, i64 136, !35, i64 152, !35, i64 160, !35, i64 168, !35, i64 176, !35, i64 184, !35, i64 192, !35, i64 200, !36, i64 208, !36, i64 220, !36, i64 232, !40, i64 244, !40, i64 246, !40, i64 248, !40, i64 250, !41, i64 252, !41, i64 256, !42, i64 260, !40, i64 264, !40, i64 266, !42, i64 268, !41, i64 272, !41, i64 276, !41, i64 280, !40, i64 284, !40, i64 286, !40, i64 288, !40, i64 290, !42, i64 292, !42, i64 296, !36, i64 300, !40, i64 304, !36, i64 306, !36, i64 307, !41, i64 308, !41, i64 312, !41, i64 316, !41, i64 320, !41, i64 324, !41, i64 328, !41, i64 332, !41, i64 336, !41, i64 340, !41, i64 344, !42, i64 348, !42, i64 352, !42, i64 356, !42, i64 360, !42, i64 364, !35, i64 368, !35, i64 376, !36, i64 384, !35, i64 448, !35, i64 456, !35, i64 464, !35, i64 472, !35, i64 480, !42, i64 488, !42, i64 492, !35, i64 496, !416, i64 504, !41, i64 512, !41, i64 516, !41, i64 520, !36, i64 524, !36, i64 525, !36, i64 526}
!416 = !{!"CharInfo", !40, i64 0, !40, i64 2, !36, i64 4, !36, i64 5, !40, i64 6}
!417 = distinct !{!417, !44}
!418 = !{!69, !35, i64 264}
!419 = !{!420, !41, i64 36}
!420 = !{!"ToolSettings", !35, i64 0, !35, i64 8, !35, i64 16, !35, i64 24, !41, i64 32, !41, i64 36, !41, i64 40, !40, i64 44, !40, i64 46, !36, i64 48, !36, i64 49, !36, i64 50, !36, i64 51, !41, i64 52, !40, i64 56, !36, i64 58, !36, i64 59, !421, i64 64, !423, i64 168, !41, i64 336, !41, i64 340, !40, i64 344, !40, i64 346, !36, i64 348, !36, i64 349, !40, i64 350, !41, i64 352, !41, i64 356, !41, i64 360, !41, i64 364, !41, i64 368, !41, i64 372, !41, i64 376, !41, i64 380, !41, i64 384, !41, i64 388, !40, i64 392, !36, i64 394, !36, i64 395, !36, i64 396, !36, i64 399, !35, i64 400, !36, i64 408, !36, i64 409, !36, i64 410, !36, i64 411, !36, i64 412, !36, i64 413, !36, i64 421, !36, i64 429, !36, i64 430, !36, i64 431, !36, i64 432, !36, i64 433, !40, i64 434, !40, i64 436, !40, i64 438, !40, i64 440, !36, i64 442, !36, i64 443, !36, i64 444, !36, i64 445, !36, i64 446, !36, i64 447, !42, i64 448, !42, i64 452, !42, i64 456, !42, i64 460, !40, i64 464, !40, i64 466, !42, i64 468, !41, i64 472, !41, i64 476, !424, i64 480, !425, i64 608}
!421 = !{!"ImagePaintSettings", !422, i64 0, !40, i64 40, !40, i64 42, !40, i64 44, !40, i64 46, !36, i64 48, !42, i64 52, !35, i64 56, !35, i64 64, !35, i64 72, !35, i64 80, !36, i64 88, !41, i64 100}
!422 = !{!"Paint", !35, i64 0, !35, i64 8, !35, i64 16, !36, i64 24, !42, i64 28, !42, i64 32, !42, i64 36}
!423 = !{!"ParticleEditSettings", !40, i64 0, !40, i64 2, !40, i64 4, !40, i64 6, !36, i64 8, !35, i64 120, !41, i64 128, !41, i64 132, !42, i64 136, !42, i64 140, !42, i64 144, !42, i64 148, !35, i64 152, !35, i64 160}
!424 = !{!"UnifiedPaintSettings", !42, i64 0, !41, i64 4, !41, i64 8, !41, i64 12, !36, i64 16, !36, i64 28, !42, i64 40, !36, i64 44, !41, i64 52, !42, i64 56, !42, i64 60, !36, i64 64, !36, i64 65, !41, i64 72, !36, i64 76, !42, i64 84, !41, i64 88, !36, i64 92, !36, i64 100, !42, i64 108, !35, i64 112, !41, i64 120, !42, i64 124}
!425 = !{!"MeshStatVis", !36, i64 0, !36, i64 1, !36, i64 3, !41, i64 4, !41, i64 8, !41, i64 12, !41, i64 16, !36, i64 20, !36, i64 21, !41, i64 24, !41, i64 28, !41, i64 32, !41, i64 36}
!426 = distinct !{!426, !44}
!427 = !{!428, !41, i64 152}
!428 = !{!"Lattice", !47, i64 0, !35, i64 120, !40, i64 128, !40, i64 130, !40, i64 132, !40, i64 134, !40, i64 136, !40, i64 138, !40, i64 140, !40, i64 142, !36, i64 144, !36, i64 145, !36, i64 146, !36, i64 147, !42, i64 148, !41, i64 152, !41, i64 156, !41, i64 160, !41, i64 164, !41, i64 168, !41, i64 172, !35, i64 176, !35, i64 184, !35, i64 192, !35, i64 200, !36, i64 208, !35, i64 272}
!429 = !{!428, !41, i64 156}
!430 = !{!428, !41, i64 160}
!431 = !{!428, !40, i64 134}
!432 = !{!428, !40, i64 128}
!433 = !{!428, !40, i64 130}
!434 = !{!428, !40, i64 132}
!435 = distinct !{!435, !44}
!436 = !{!409, !42, i64 16}
!437 = distinct !{!437, !44}
!438 = !{!46, !40, i64 1162}
!439 = !{!440, !42, i64 68}
!440 = !{!"ModifierTypeInfo", !36, i64 0, !36, i64 32, !42, i64 64, !42, i64 68, !42, i64 72, !35, i64 80, !35, i64 88, !35, i64 96, !35, i64 104, !35, i64 112, !35, i64 120, !35, i64 128, !35, i64 136, !35, i64 144, !35, i64 152, !35, i64 160, !35, i64 168, !35, i64 176, !35, i64 184, !35, i64 192, !35, i64 200, !35, i64 208}
!441 = distinct !{!441, !44}
!442 = !{!443, !40, i64 10}
!443 = !{!"bKinematicConstraint", !35, i64 0, !40, i64 8, !40, i64 10, !40, i64 12, !40, i64 14, !36, i64 16, !35, i64 80, !36, i64 88, !41, i64 152, !41, i64 156, !41, i64 160, !36, i64 164, !40, i64 176, !40, i64 178, !41, i64 180}
!444 = !{!443, !40, i64 12}
!445 = distinct !{!445, !44}
!446 = distinct !{!446, !44}
!447 = !{!39, !40, i64 180}
!448 = !{!39, !40, i64 174}
!449 = !{!39, !40, i64 170}
!450 = distinct !{!450, !44}
!451 = !{!403, !40, i64 208}
!452 = distinct !{!452, !44}
!453 = !{!105, !35, i64 240}
!454 = distinct !{!454, !44}
!455 = distinct !{!455, !44}
!456 = !{!457, !35, i64 128}
!457 = !{!"Key", !47, i64 0, !35, i64 120, !35, i64 128, !36, i64 136, !42, i64 168, !42, i64 172, !49, i64 176, !35, i64 192, !35, i64 200, !40, i64 208, !40, i64 210, !40, i64 212, !40, i64 214, !41, i64 216, !42, i64 220}
!458 = distinct !{!458, !44}
!459 = !{!60, !35, i64 1264}
!460 = !{!60, !35, i64 1184}
!461 = distinct !{!461, !44}
!462 = !{!463, !35, i64 120}
!463 = !{!"ArmatureModifierData", !409, i64 0, !40, i64 112, !40, i64 114, !42, i64 116, !35, i64 120, !35, i64 128, !36, i64 136}
!464 = !{!463, !40, i64 112}
!465 = distinct !{!465, !44}
!466 = !{!403, !40, i64 226}
!467 = !{!403, !42, i64 216}
!468 = distinct !{!468, !44}
!469 = !{!69, !42, i64 796}
!470 = !{!69, !40, i64 756}
!471 = distinct !{!471, !44}
!472 = !{!374, !40, i64 130}
!473 = !{!374, !41, i64 132}
!474 = !{!374, !35, i64 0}
!475 = distinct !{!475, !44}
!476 = !{!91, !41, i64 436}
!477 = !{!91, !35, i64 0}
!478 = distinct !{!478, !44}
!479 = !{!263, !40, i64 288}
!480 = !{!263, !40, i64 294}
!481 = distinct !{!481, !44}
!482 = distinct !{!482, !44}
!483 = !{!69, !40, i64 772}
!484 = !{!69, !40, i64 774}
!485 = !{i8 0, i8 2}
!486 = !{!487, !42, i64 108}
!487 = !{!"SceneRenderLayer", !35, i64 0, !35, i64 8, !36, i64 16, !35, i64 80, !35, i64 88, !42, i64 96, !42, i64 100, !42, i64 104, !42, i64 108, !42, i64 112, !42, i64 116, !42, i64 120, !41, i64 124, !488, i64 128}
!488 = !{!"FreestyleConfig", !49, i64 0, !42, i64 16, !42, i64 20, !42, i64 24, !41, i64 28, !41, i64 32, !41, i64 36, !49, i64 40}
!489 = !{!487, !42, i64 112}
!490 = distinct !{!490, !44}
!491 = !{!69, !35, i64 248}
!492 = !{!420, !36, i64 48}
!493 = !{!420, !36, i64 49}
!494 = !{!69, !42, i64 764}
!495 = !{!69, !42, i64 768}
!496 = !{!69, !35, i64 128}
!497 = distinct !{!497, !44}
!498 = distinct !{!498, !44}
!499 = !{!313, !40, i64 244}
!500 = distinct !{!500, !44}
!501 = !{!62, !35, i64 368}
!502 = !{!503, !41, i64 176}
!503 = !{!"EnvMap", !35, i64 0, !35, i64 8, !36, i64 16, !36, i64 64, !36, i64 128, !40, i64 164, !40, i64 166, !41, i64 168, !41, i64 172, !41, i64 176, !42, i64 180, !40, i64 184, !40, i64 186, !42, i64 188, !42, i64 192, !40, i64 196, !40, i64 198}
!504 = distinct !{!504, !44}
!505 = !{!46, !41, i64 1048}
!506 = !{!46, !36, i64 1047}
!507 = distinct !{!507, !44}
!508 = !{!509, !35, i64 16}
!509 = !{!"MTex", !40, i64 0, !40, i64 2, !40, i64 4, !40, i64 6, !35, i64 8, !35, i64 16, !36, i64 24, !36, i64 88, !36, i64 89, !36, i64 90, !36, i64 91, !36, i64 92, !36, i64 104, !41, i64 116, !40, i64 120, !40, i64 122, !40, i64 124, !40, i64 126, !40, i64 128, !40, i64 130, !36, i64 132, !36, i64 133, !41, i64 140, !41, i64 144, !41, i64 148, !41, i64 152, !41, i64 156, !41, i64 160, !41, i64 164, !41, i64 168, !41, i64 172, !41, i64 176, !41, i64 180, !41, i64 184, !41, i64 188, !41, i64 192, !41, i64 196, !41, i64 200, !41, i64 204, !41, i64 208, !41, i64 212, !41, i64 216, !41, i64 220, !41, i64 224, !41, i64 228, !41, i64 232, !41, i64 236, !41, i64 240, !41, i64 244, !41, i64 248, !41, i64 252, !41, i64 256, !41, i64 260, !41, i64 264, !41, i64 268, !41, i64 272, !41, i64 276, !41, i64 280, !41, i64 284, !41, i64 288, !41, i64 292, !41, i64 296, !41, i64 300, !41, i64 304, !41, i64 308}
!510 = !{!62, !40, i64 232}
!511 = !{!509, !40, i64 2}
!512 = distinct !{!512, !44}
!513 = !{!91, !41, i64 352}
!514 = distinct !{!514, !44}
!515 = distinct !{!515, !44}
!516 = distinct !{!516, !44}
!517 = distinct !{!517, !44}
!518 = !{!117, !40, i64 288}
!519 = distinct !{!519, !44}
!520 = !{!420, !41, i64 340}
!521 = !{!69, !40, i64 714}
!522 = distinct !{!522, !44}
!523 = distinct !{!523, !44}
!524 = distinct !{!524, !44}
!525 = !{!526, !35, i64 72}
!526 = !{!"Nurb", !35, i64 0, !35, i64 8, !40, i64 16, !40, i64 18, !40, i64 20, !40, i64 22, !42, i64 24, !42, i64 28, !36, i64 32, !40, i64 36, !40, i64 38, !40, i64 40, !40, i64 42, !40, i64 44, !40, i64 46, !35, i64 48, !35, i64 56, !35, i64 64, !35, i64 72, !40, i64 80, !40, i64 82, !42, i64 84}
!527 = !{!526, !42, i64 24}
!528 = !{!529, !41, i64 44}
!529 = !{!"BezTriple", !36, i64 0, !41, i64 36, !41, i64 40, !41, i64 44, !36, i64 48, !36, i64 49, !36, i64 50, !36, i64 51, !36, i64 52, !36, i64 53, !36, i64 54, !36, i64 55, !41, i64 56, !41, i64 60, !41, i64 64, !36, i64 68}
!530 = distinct !{!530, !44}
!531 = !{!526, !35, i64 64}
!532 = !{!526, !42, i64 28}
!533 = !{!534, !41, i64 28}
!534 = !{!"BPoint", !36, i64 0, !41, i64 16, !41, i64 20, !40, i64 24, !40, i64 26, !41, i64 28, !41, i64 32}
!535 = distinct !{!535, !44}
!536 = distinct !{!536, !44}
!537 = distinct !{!537, !44}
!538 = !{!539, !40, i64 20}
!539 = !{!"bMinMaxConstraint", !35, i64 0, !42, i64 8, !41, i64 12, !42, i64 16, !40, i64 20, !40, i64 22, !40, i64 24, !40, i64 26, !36, i64 28, !36, i64 40}
!540 = !{!539, !42, i64 16}
!541 = !{!542, !42, i64 8}
!542 = !{!"bRotateLikeConstraint", !35, i64 0, !42, i64 8, !42, i64 12, !36, i64 16}
!543 = distinct !{!543, !44}
!544 = distinct !{!544, !44}
!545 = distinct !{!545, !44}
!546 = !{!547, !40, i64 184}
!547 = !{!"CurveModifierData", !409, i64 0, !35, i64 112, !36, i64 120, !40, i64 184, !36, i64 186}
!548 = distinct !{!548, !44}
!549 = !{!91, !41, i64 532}
!550 = !{!91, !35, i64 768}
!551 = distinct !{!551, !44}
!552 = distinct !{!552, !44}
!553 = !{!554, !42, i64 136}
!554 = !{!"Group", !47, i64 0, !49, i64 120, !42, i64 136, !36, i64 140}
!555 = distinct !{!555, !44}
!556 = !{!60, !40, i64 1042}
!557 = !{!239, !40, i64 1248}
!558 = !{!239, !40, i64 1250}
!559 = !{!239, !42, i64 1308}
!560 = !{!239, !42, i64 1312}
!561 = !{!239, !36, i64 1316}
!562 = distinct !{!562, !44}
!563 = !{!62, !35, i64 352}
!564 = !{!62, !40, i64 228}
!565 = !{!239, !40, i64 1246}
!566 = !{!62, !40, i64 266}
!567 = !{!62, !36, i64 320}
!568 = !{!62, !42, i64 280}
!569 = !{!62, !42, i64 316}
!570 = !{!62, !36, i64 321}
!571 = distinct !{!571, !44}
!572 = distinct !{!572, !44}
!573 = distinct !{!573, !44}
!574 = distinct !{!574, !44}
!575 = distinct !{!575, !44}
!576 = distinct !{!576, !44}
!577 = !{!578, !36, i64 72}
!578 = !{!"SpaceImage", !35, i64 0, !35, i64 8, !49, i64 16, !42, i64 32, !42, i64 36, !35, i64 40, !63, i64 48, !35, i64 88, !579, i64 96, !580, i64 5360, !35, i64 10520, !36, i64 10528, !41, i64 10536, !41, i64 10540, !41, i64 10544, !41, i64 10548, !41, i64 10552, !36, i64 10556, !36, i64 10557, !40, i64 10558, !40, i64 10560, !40, i64 10562, !36, i64 10564, !36, i64 10565, !36, i64 10566, !36, i64 10567, !581, i64 10568}
!579 = !{!"Scopes", !42, i64 0, !42, i64 4, !42, i64 8, !41, i64 12, !42, i64 16, !41, i64 20, !41, i64 24, !42, i64 28, !41, i64 32, !42, i64 36, !36, i64 40, !580, i64 64, !35, i64 5224, !35, i64 5232, !35, i64 5240, !35, i64 5248, !42, i64 5256, !42, i64 5260}
!580 = !{!"Histogram", !42, i64 0, !42, i64 4, !36, i64 8, !36, i64 1032, !36, i64 2056, !36, i64 3080, !36, i64 4104, !41, i64 5128, !41, i64 5132, !40, i64 5136, !40, i64 5138, !42, i64 5140, !36, i64 5144}
!581 = !{!"MaskSpaceInfo", !35, i64 0, !36, i64 8, !36, i64 9, !36, i64 10, !36, i64 11}
!582 = !{!583, !36, i64 48}
!583 = !{!"BGpic", !35, i64 0, !35, i64 8, !35, i64 16, !63, i64 24, !35, i64 64, !584, i64 72, !41, i64 80, !41, i64 84, !41, i64 88, !41, i64 92, !40, i64 96, !40, i64 98, !40, i64 100, !40, i64 102}
!584 = !{!"MovieClipUser", !42, i64 0, !40, i64 4, !40, i64 6}
!585 = distinct !{!585, !44}
!586 = distinct !{!586, !44}
!587 = distinct !{!587, !44}
!588 = !{!91, !41, i64 852}
!589 = !{!91, !41, i64 864}
!590 = !{!91, !41, i64 868}
!591 = !{!91, !41, i64 872}
!592 = !{!91, !41, i64 140}
!593 = distinct !{!593, !44}
!594 = distinct !{!594, !44}
!595 = !{!596, !40, i64 112}
!596 = !{!"MirrorModifierData", !409, i64 0, !40, i64 112, !40, i64 114, !41, i64 116, !35, i64 120}
!597 = !{!596, !40, i64 114}
!598 = distinct !{!598, !44}
!599 = distinct !{!599, !44}
!600 = distinct !{!600, !44}
!601 = distinct !{!601, !44}
!602 = distinct !{!602, !44}
!603 = distinct !{!603, !44}
!604 = distinct !{!604, !44}
!605 = !{!263, !40, i64 202}
!606 = !{!263, !41, i64 296}
!607 = distinct !{!607, !44}
!608 = !{!313, !40, i64 128}
!609 = !{!313, !41, i64 272}
!610 = distinct !{!610, !44}
!611 = !{!52, !40, i64 26}
!612 = !{!52, !36, i64 28}
!613 = !{!52, !36, i64 29}
!614 = !{!615, !40, i64 26}
!615 = !{!"bLocLimitConstraint", !41, i64 0, !41, i64 4, !41, i64 8, !41, i64 12, !41, i64 16, !41, i64 20, !40, i64 24, !40, i64 26}
!616 = distinct !{!616, !44}
!617 = !{!618, !40, i64 10}
!618 = !{!"bActionConstraint", !35, i64 0, !40, i64 8, !40, i64 10, !42, i64 12, !42, i64 16, !41, i64 20, !41, i64 24, !42, i64 28, !35, i64 32, !36, i64 40}
!619 = distinct !{!619, !44}
!620 = distinct !{!620, !44}
!621 = distinct !{!621, !44}
!622 = !{!239, !35, i64 1288}
!623 = distinct !{!623, !44}
!624 = distinct !{!624, !44}
!625 = !{!386, !35, i64 352}
!626 = !{!627, !35, i64 576}
!627 = !{!"ParticleSystem", !35, i64 0, !35, i64 8, !35, i64 16, !35, i64 24, !35, i64 32, !35, i64 40, !35, i64 48, !35, i64 56, !35, i64 64, !49, i64 72, !49, i64 88, !35, i64 104, !35, i64 112, !35, i64 120, !35, i64 128, !35, i64 136, !35, i64 144, !49, i64 152, !36, i64 168, !36, i64 232, !41, i64 296, !41, i64 300, !41, i64 304, !42, i64 308, !42, i64 312, !42, i64 316, !42, i64 320, !42, i64 324, !42, i64 328, !42, i64 332, !42, i64 336, !40, i64 340, !40, i64 342, !40, i64 344, !40, i64 346, !36, i64 348, !36, i64 540, !40, i64 564, !40, i64 566, !35, i64 568, !35, i64 576, !49, i64 584, !35, i64 600, !35, i64 608, !42, i64 616, !42, i64 620, !35, i64 624, !35, i64 632, !35, i64 640, !41, i64 648, !41, i64 652}
!628 = !{!629, !42, i64 16}
!629 = !{!"PointCache", !35, i64 0, !35, i64 8, !42, i64 16, !42, i64 20, !42, i64 24, !42, i64 28, !42, i64 32, !42, i64 36, !42, i64 40, !42, i64 44, !42, i64 48, !42, i64 52, !42, i64 56, !40, i64 60, !40, i64 62, !36, i64 64, !36, i64 128, !36, i64 192, !36, i64 256, !35, i64 1280, !49, i64 1288, !35, i64 1304, !35, i64 1312}
!630 = distinct !{!630, !44}
!631 = !{!632, !35, i64 144}
!632 = !{!"ClothModifierData", !409, i64 0, !35, i64 112, !35, i64 120, !35, i64 128, !35, i64 136, !35, i64 144, !49, i64 152}
!633 = !{!629, !42, i64 20}
!634 = distinct !{!634, !44}
!635 = !{!105, !35, i64 1368}
!636 = !{!637, !35, i64 16}
!637 = !{!"Multires", !49, i64 0, !35, i64 16, !36, i64 24, !36, i64 25, !36, i64 26, !36, i64 27, !36, i64 28, !36, i64 29, !36, i64 30, !36, i64 31, !106, i64 32, !106, i64 232, !35, i64 432, !35, i64 440}
!638 = !{!637, !35, i64 8}
!639 = !{!640, !35, i64 56}
!640 = !{!"MultiresLevel", !35, i64 0, !35, i64 8, !35, i64 16, !35, i64 24, !35, i64 32, !42, i64 40, !42, i64 44, !42, i64 48, !42, i64 52, !35, i64 56}
!641 = !{!640, !35, i64 8}
!642 = distinct !{!642, !44}
!643 = distinct !{!643, !44}
!644 = !{!313, !42, i64 132}
!645 = !{!313, !35, i64 200}
!646 = distinct !{!646, !44}
!647 = !{!91, !40, i64 372}
!648 = !{!91, !40, i64 374}
!649 = !{!91, !40, i64 392}
!650 = !{!91, !41, i64 452}
!651 = distinct !{!651, !44}
!652 = !{!653, !42, i64 448}
!653 = !{!"ParticleSettings", !47, i64 0, !35, i64 120, !35, i64 128, !35, i64 136, !35, i64 144, !42, i64 152, !42, i64 156, !40, i64 160, !40, i64 162, !40, i64 164, !40, i64 166, !40, i64 168, !40, i64 170, !40, i64 172, !40, i64 174, !42, i64 176, !42, i64 180, !40, i64 184, !40, i64 186, !40, i64 188, !40, i64 190, !40, i64 192, !40, i64 194, !40, i64 196, !40, i64 198, !40, i64 200, !40, i64 202, !40, i64 204, !40, i64 206, !40, i64 208, !40, i64 210, !40, i64 212, !40, i64 214, !40, i64 216, !40, i64 218, !40, i64 220, !40, i64 222, !40, i64 224, !40, i64 226, !40, i64 228, !40, i64 230, !41, i64 232, !41, i64 236, !36, i64 240, !36, i64 248, !41, i64 256, !41, i64 260, !41, i64 264, !40, i64 268, !40, i64 270, !41, i64 272, !41, i64 276, !41, i64 280, !41, i64 284, !41, i64 288, !41, i64 292, !41, i64 296, !41, i64 300, !41, i64 304, !41, i64 308, !41, i64 312, !41, i64 316, !36, i64 320, !42, i64 324, !42, i64 328, !42, i64 332, !42, i64 336, !40, i64 340, !36, i64 342, !41, i64 348, !41, i64 352, !41, i64 356, !41, i64 360, !41, i64 364, !41, i64 368, !41, i64 372, !36, i64 376, !41, i64 388, !41, i64 392, !41, i64 396, !41, i64 400, !41, i64 404, !41, i64 408, !41, i64 412, !36, i64 416, !41, i64 428, !41, i64 432, !41, i64 436, !41, i64 440, !42, i64 444, !42, i64 448, !41, i64 452, !41, i64 456, !41, i64 460, !41, i64 464, !41, i64 468, !41, i64 472, !41, i64 476, !41, i64 480, !41, i64 484, !41, i64 488, !41, i64 492, !41, i64 496, !41, i64 500, !41, i64 504, !41, i64 508, !41, i64 512, !41, i64 516, !41, i64 520, !41, i64 524, !41, i64 528, !41, i64 532, !41, i64 536, !41, i64 540, !41, i64 544, !41, i64 548, !36, i64 552, !41, i64 560, !41, i64 564, !42, i64 568, !42, i64 572, !36, i64 576, !35, i64 720, !49, i64 728, !35, i64 744, !35, i64 752, !35, i64 760, !35, i64 768, !35, i64 776, !35, i64 784, !40, i64 792, !36, i64 794}
!654 = !{!653, !42, i64 444}
!655 = !{!653, !40, i64 270}
!656 = !{!653, !41, i64 280}
!657 = distinct !{!657, !44}
!658 = !{!263, !41, i64 304}
!659 = distinct !{!659, !44}
!660 = !{!69, !40, i64 2806}
!661 = !{!69, !40, i64 2804}
!662 = !{!69, !41, i64 2820}
!663 = !{!69, !40, i64 2818}
!664 = !{!69, !40, i64 2816}
!665 = distinct !{!665, !44}
!666 = distinct !{!666, !44}
!667 = !{!239, !36, i64 1408}
!668 = distinct !{!668, !44}
!669 = !{!62, !40, i64 330}
!670 = distinct !{!670, !44}
!671 = distinct !{!671, !44}
!672 = distinct !{!672, !44}
!673 = distinct !{!673, !44}
!674 = distinct !{!674, !44}
!675 = distinct !{!675, !44}
!676 = distinct !{!676, !44}
!677 = !{!69, !41, i64 900}
!678 = distinct !{!678, !44}
!679 = distinct !{!679, !44}
!680 = !{!681, !35, i64 40}
!681 = !{!"bPythonConstraint", !35, i64 0, !35, i64 8, !42, i64 16, !42, i64 20, !49, i64 24, !35, i64 40, !36, i64 48}
!682 = !{!683, !35, i64 16}
!683 = !{!"bConstraintTarget", !35, i64 0, !35, i64 8, !35, i64 16, !36, i64 24, !36, i64 88, !40, i64 152, !40, i64 154, !40, i64 156, !40, i64 158}
!684 = !{!683, !40, i64 152}
!685 = !{!681, !42, i64 20}
!686 = !{!687, !42, i64 8}
!687 = !{!"bLocateLikeConstraint", !35, i64 0, !42, i64 8, !42, i64 12, !36, i64 16}
!688 = !{!52, !41, i64 100}
!689 = distinct !{!689, !44}
!690 = distinct !{!690, !44}
!691 = !{!386, !35, i64 288}
!692 = !{!386, !42, i64 300}
!693 = distinct !{!693, !44}
!694 = distinct !{!694, !44}
!695 = distinct !{!695, !44}
!696 = !{!627, !35, i64 16}
!697 = !{!698, !35, i64 1272}
!698 = !{!"FileData", !49, i64 0, !42, i64 16, !42, i64 20, !42, i64 24, !42, i64 28, !35, i64 32, !35, i64 40, !35, i64 48, !42, i64 56, !35, i64 64, !36, i64 72, !36, i64 1096, !42, i64 1100, !699, i64 1104, !35, i64 1216, !35, i64 1224, !35, i64 1232, !42, i64 1240, !42, i64 1244, !42, i64 1248, !42, i64 1252, !35, i64 1256, !35, i64 1264, !35, i64 1272, !35, i64 1280, !35, i64 1288, !35, i64 1296, !35, i64 1304, !42, i64 1312, !35, i64 1320, !35, i64 1328, !35, i64 1336}
!699 = !{!"z_stream_s", !35, i64 0, !42, i64 8, !50, i64 16, !35, i64 24, !42, i64 32, !50, i64 40, !35, i64 48, !35, i64 56, !35, i64 64, !35, i64 72, !35, i64 80, !42, i64 88, !50, i64 96, !50, i64 104}
!700 = !{!46, !35, i64 24}
!701 = !{!653, !35, i64 24}
!702 = !{!653, !42, i64 100}
!703 = !{!46, !40, i64 98}
!704 = !{!653, !40, i64 98}
!705 = !{!627, !42, i64 320}
!706 = !{!627, !42, i64 316}
!707 = !{!708, !35, i64 112}
!708 = !{!"ParticleSystemModifierData", !409, i64 0, !35, i64 112, !35, i64 120, !42, i64 128, !42, i64 132, !42, i64 136, !40, i64 140, !40, i64 142}
!709 = !{!39, !42, i64 40}
!710 = !{!653, !42, i64 324}
!711 = !{!39, !41, i64 28}
!712 = !{!39, !41, i64 68}
!713 = !{!39, !42, i64 48}
!714 = !{!627, !42, i64 308}
!715 = !{!653, !40, i64 210}
!716 = !{!653, !40, i64 212}
!717 = !{!39, !42, i64 44}
!718 = !{!653, !40, i64 202}
!719 = !{!39, !35, i64 384}
!720 = !{!653, !35, i64 744}
!721 = !{!653, !40, i64 200}
!722 = !{!653, !40, i64 198}
!723 = !{!39, !41, i64 52}
!724 = !{!653, !41, i64 348}
!725 = !{!39, !41, i64 56}
!726 = !{!653, !41, i64 352}
!727 = !{!39, !41, i64 60}
!728 = !{!653, !41, i64 356}
!729 = !{!39, !41, i64 84}
!730 = !{!653, !41, i64 436}
!731 = !{!39, !40, i64 22}
!732 = !{!39, !40, i64 18}
!733 = !{!39, !41, i64 36}
!734 = !{!653, !40, i64 184}
!735 = !{!653, !40, i64 160}
!736 = !{!627, !40, i64 340}
!737 = !{!653, !42, i64 176}
!738 = !{!653, !40, i64 170}
!739 = !{!653, !42, i64 152}
!740 = !{!653, !40, i64 162}
!741 = !{!39, !40, i64 24}
!742 = !{!39, !40, i64 182}
!743 = !{!653, !35, i64 752}
!744 = distinct !{!744, !44}
!745 = !{!746, !35, i64 112}
!746 = !{!"FluidsimModifierData", !409, i64 0, !35, i64 112, !35, i64 120}
!747 = !{!748, !40, i64 16}
!748 = !{!"FluidsimSettings", !35, i64 0, !42, i64 8, !42, i64 12, !40, i64 16, !40, i64 18, !40, i64 20, !40, i64 22, !41, i64 24, !40, i64 28, !40, i64 30, !41, i64 32, !40, i64 36, !40, i64 38, !36, i64 40, !41, i64 52, !41, i64 56, !42, i64 60, !42, i64 64, !42, i64 68, !42, i64 72, !41, i64 76, !42, i64 80, !41, i64 84, !41, i64 88, !41, i64 92, !35, i64 96, !35, i64 104, !36, i64 112, !36, i64 1136, !36, i64 1148, !35, i64 1160, !40, i64 1168, !36, i64 1170, !36, i64 1171, !41, i64 1172, !42, i64 1176, !41, i64 1180, !41, i64 1184, !42, i64 1188, !42, i64 1192, !41, i64 1196, !41, i64 1200, !41, i64 1204, !35, i64 1208, !42, i64 1216, !41, i64 1220, !41, i64 1224, !41, i64 1228, !41, i64 1232, !41, i64 1236, !41, i64 1240, !41, i64 1244, !42, i64 1248, !41, i64 1252}
!749 = distinct !{!749, !44}
!750 = !{!751, !40, i64 0}
!751 = !{!"ParticleBrushData", !40, i64 0, !40, i64 2, !40, i64 4, !40, i64 6, !42, i64 8, !41, i64 12}
!752 = !{!423, !41, i64 128}
!753 = !{!751, !41, i64 12}
!754 = !{!751, !40, i64 2}
!755 = distinct !{!755, !44}
!756 = distinct !{!756, !44}
!757 = !{!509, !40, i64 128}
!758 = distinct !{!758, !44}
!759 = distinct !{!759, !44}
!760 = !{!46, !41, i64 1052}
!761 = distinct !{!761, !44}
!762 = !{!763, !40, i64 16}
!763 = !{!"bActionStrip", !35, i64 0, !35, i64 8, !40, i64 16, !40, i64 18, !40, i64 20, !40, i64 22, !35, i64 24, !35, i64 32, !35, i64 40, !41, i64 48, !41, i64 52, !41, i64 56, !41, i64 60, !41, i64 64, !41, i64 68, !41, i64 72, !41, i64 76, !41, i64 80, !41, i64 84, !36, i64 88, !36, i64 120, !49, i64 152}
!764 = !{!763, !41, i64 72}
!765 = !{!763, !41, i64 52}
!766 = !{!763, !41, i64 48}
!767 = !{!763, !41, i64 60}
!768 = !{!763, !41, i64 56}
!769 = !{!763, !41, i64 76}
!770 = distinct !{!770, !44}
!771 = !{!386, !41, i64 200}
!772 = !{!386, !41, i64 348}
!773 = !{!386, !41, i64 344}
!774 = distinct !{!774, !44}
!775 = !{!368, !42, i64 320}
!776 = !{!368, !41, i64 324}
!777 = distinct !{!777, !44}
!778 = distinct !{!778, !44}
!779 = distinct !{!779, !44}
!780 = distinct !{!780, !44}
!781 = !{!46, !35, i64 1272}
!782 = !{!748, !35, i64 1160}
!783 = !{!748, !42, i64 1248}
!784 = !{!748, !42, i64 1192}
!785 = !{!748, !35, i64 1208}
!786 = distinct !{!786, !44}
!787 = distinct !{!787, !44}
!788 = !{!46, !35, i64 1240}
!789 = !{!790, !40, i64 6}
!790 = !{!"PartDeflect", !42, i64 0, !40, i64 4, !40, i64 6, !40, i64 8, !40, i64 10, !40, i64 12, !40, i64 14, !40, i64 16, !40, i64 18, !41, i64 20, !41, i64 24, !41, i64 28, !41, i64 32, !41, i64 36, !41, i64 40, !41, i64 44, !41, i64 48, !41, i64 52, !41, i64 56, !41, i64 60, !41, i64 64, !41, i64 68, !41, i64 72, !41, i64 76, !41, i64 80, !41, i64 84, !41, i64 88, !41, i64 92, !41, i64 96, !41, i64 100, !41, i64 104, !41, i64 108, !41, i64 112, !41, i64 116, !41, i64 120, !41, i64 124, !35, i64 128, !35, i64 136, !41, i64 144, !42, i64 148, !35, i64 152}
!791 = !{!790, !41, i64 144}
!792 = distinct !{!792, !44}
!793 = !{!46, !41, i64 1008}
!794 = distinct !{!794, !44}
!795 = distinct !{!795, !44}
!796 = !{!313, !40, i64 286}
!797 = !{!313, !41, i64 328}
!798 = distinct !{!798, !44}
!799 = distinct !{!799, !44}
!800 = !{!526, !40, i64 82}
!801 = distinct !{!801, !44}
!802 = distinct !{!802, !44}
!803 = !{!804, !40, i64 0}
!804 = !{!"bConstraintActuator", !40, i64 0, !40, i64 2, !40, i64 4, !40, i64 6, !40, i64 8, !40, i64 10, !42, i64 12, !36, i64 16, !36, i64 28, !36, i64 40, !36, i64 52, !36, i64 64}
!805 = !{!804, !40, i64 4}
!806 = distinct !{!806, !44}
!807 = !{!313, !41, i64 332}
!808 = distinct !{!808, !44}
!809 = distinct !{!809, !44}
!810 = distinct !{!810, !44}
!811 = !{!313, !41, i64 312}
!812 = !{!313, !40, i64 284}
!813 = distinct !{!813, !44}
!814 = !{!420, !40, i64 108}
!815 = !{!420, !40, i64 110}
!816 = !{!420, !40, i64 350}
!817 = !{!420, !41, i64 376}
!818 = !{!420, !36, i64 394}
!819 = !{!420, !36, i64 395}
!820 = !{!420, !40, i64 392}
!821 = !{!420, !41, i64 388}
!822 = !{!420, !36, i64 408}
!823 = !{!420, !36, i64 412}
!824 = distinct !{!824, !44}
!825 = distinct !{!825, !44}
!826 = distinct !{!826, !44}
!827 = !{!295, !36, i64 336}
!828 = !{!295, !36, i64 337}
!829 = !{!830, !40, i64 242}
!830 = !{!"SpaceIpo", !35, i64 0, !35, i64 8, !49, i64 16, !42, i64 32, !41, i64 36, !36, i64 40, !259, i64 56, !35, i64 216, !49, i64 224, !40, i64 240, !40, i64 242, !42, i64 244, !41, i64 248, !42, i64 252}
!831 = !{!343, !40, i64 56}
!832 = distinct !{!832, !44}
!833 = !{!46, !41, i64 992}
!834 = distinct !{!834, !44}
!835 = !{!69, !41, i64 2840}
!836 = distinct !{!836, !44}
!837 = !{!263, !40, i64 204}
!838 = distinct !{!838, !44}
!839 = distinct !{!839, !44}
!840 = distinct !{!840, !44}
!841 = distinct !{!841, !44}
!842 = !{!790, !42, i64 148}
!843 = distinct !{!843, !44}
!844 = !{!368, !35, i64 168}
!845 = !{!846, !35, i64 808}
!846 = !{!"Strip", !35, i64 0, !35, i64 8, !42, i64 16, !42, i64 20, !42, i64 24, !42, i64 28, !35, i64 32, !36, i64 40, !35, i64 808, !35, i64 816, !35, i64 824, !35, i64 832, !86, i64 840}
!847 = !{!848, !40, i64 1034}
!848 = !{!"StripProxy", !36, i64 0, !36, i64 768, !35, i64 1024, !40, i64 1032, !40, i64 1034, !40, i64 1036, !40, i64 1038}
!849 = distinct !{!849, !44}
!850 = distinct !{!850, !44}
!851 = !{!"versioning_legacy.c:vcol_to_fcol"}
!852 = !{!105, !35, i64 208}
!853 = !{!854, !42, i64 0}
!854 = !{!"MFace", !42, i64 0, !42, i64 4, !42, i64 8, !42, i64 12, !40, i64 16, !36, i64 18, !36, i64 19}
!855 = !{!854, !42, i64 4}
!856 = !{!854, !42, i64 8}
!857 = !{!854, !42, i64 12}
!858 = distinct !{!858, !44}
!859 = !{!"versioning_legacy.c:map_223_keybd_code_to_224_keybd_code"}
!860 = !{!"versioning_legacy.c:do_version_bone_head_tail_237"}
!861 = !{!862, !41, i64 284}
!862 = !{!"Bone", !35, i64 0, !35, i64 8, !35, i64 16, !35, i64 24, !49, i64 32, !36, i64 48, !41, i64 112, !36, i64 116, !36, i64 128, !36, i64 140, !42, i64 176, !36, i64 180, !36, i64 192, !36, i64 204, !41, i64 268, !41, i64 272, !41, i64 276, !41, i64 280, !41, i64 284, !41, i64 288, !41, i64 292, !41, i64 296, !41, i64 300, !41, i64 304, !36, i64 308, !42, i64 320, !40, i64 324, !36, i64 326}
!863 = distinct !{!863, !44}
!864 = !{!"versioning_legacy.c:bone_version_238"}
!865 = !{!862, !41, i64 304}
!866 = !{!862, !41, i64 300}
!867 = !{!862, !41, i64 272}
!868 = distinct !{!868, !44}
!869 = !{!"versioning_legacy.c:bone_version_239"}
!870 = !{!862, !42, i64 320}
!871 = distinct !{!871, !44}
!872 = !{!"versioning_legacy.c:BLI_listbase_is_empty"}
!873 = !{!49, !35, i64 0}
!874 = !{!"versioning_legacy.c:ntree_version_241"}
!875 = !{!876, !42, i64 256}
!876 = !{!"bNodeTree", !47, i64 0, !35, i64 120, !35, i64 128, !36, i64 136, !35, i64 200, !35, i64 208, !36, i64 216, !49, i64 224, !49, i64 240, !42, i64 256, !42, i64 260, !42, i64 264, !42, i64 268, !42, i64 272, !40, i64 276, !40, i64 278, !42, i64 280, !42, i64 284, !40, i64 288, !40, i64 290, !42, i64 292, !76, i64 296, !49, i64 312, !49, i64 328, !35, i64 344, !877, i64 352, !42, i64 356, !35, i64 360, !35, i64 368, !35, i64 376, !35, i64 384, !35, i64 392, !35, i64 400, !35, i64 408, !35, i64 416, !35, i64 424}
!877 = !{!"bNodeInstanceKey", !42, i64 0}
!878 = !{!879, !40, i64 172}
!879 = !{!"bNode", !35, i64 0, !35, i64 8, !35, i64 16, !35, i64 24, !35, i64 32, !36, i64 40, !36, i64 104, !42, i64 168, !40, i64 172, !40, i64 174, !40, i64 176, !40, i64 178, !40, i64 180, !40, i64 182, !40, i64 184, !40, i64 186, !36, i64 188, !49, i64 200, !49, i64 216, !35, i64 232, !35, i64 240, !35, i64 248, !35, i64 256, !49, i64 264, !41, i64 280, !41, i64 284, !41, i64 288, !41, i64 292, !41, i64 296, !41, i64 300, !41, i64 304, !42, i64 308, !36, i64 312, !40, i64 376, !40, i64 378, !41, i64 380, !41, i64 384, !40, i64 388, !40, i64 390, !35, i64 392, !76, i64 400, !76, i64 416, !76, i64 432, !40, i64 448, !40, i64 450, !42, i64 452, !35, i64 456}
!880 = !{!879, !35, i64 248}
!881 = !{!882, !40, i64 28}
!882 = !{!"NodeBlurData", !40, i64 0, !40, i64 2, !40, i64 4, !40, i64 6, !40, i64 8, !40, i64 10, !40, i64 12, !40, i64 14, !41, i64 16, !41, i64 20, !41, i64 24, !40, i64 28, !36, i64 30, !36, i64 31, !42, i64 32, !42, i64 36}
!883 = !{!882, !41, i64 16}
!884 = distinct !{!884, !44}
!885 = !{!"versioning_legacy.c:ntree_version_242"}
!886 = !{!887, !41, i64 8}
!887 = !{!"NodeHueSat", !41, i64 0, !41, i64 4, !41, i64 8}
!888 = distinct !{!888, !44}
!889 = distinct !{!889, !44}
!890 = !{!"versioning_legacy.c:customdata_version_242"}
!891 = !{!105, !42, i64 452}
!892 = !{!105, !35, i64 232}
!893 = !{!105, !42, i64 1280}
!894 = !{!105, !35, i64 248}
!895 = !{!105, !42, i64 652}
!896 = !{!105, !42, i64 1284}
!897 = !{!105, !42, i64 852}
!898 = !{!105, !35, i64 216}
!899 = !{!161, !36, i64 56}
!900 = !{!901, !36, i64 40}
!901 = !{!"MTFace", !36, i64 0, !35, i64 32, !36, i64 40, !36, i64 41, !40, i64 42, !40, i64 44, !40, i64 46}
!902 = !{!161, !40, i64 62}
!903 = !{!901, !40, i64 46}
!904 = !{!161, !35, i64 0}
!905 = !{!901, !35, i64 32}
!906 = !{!161, !36, i64 57}
!907 = !{!901, !36, i64 41}
!908 = distinct !{!908, !44}
!909 = !{!105, !35, i64 680}
!910 = !{!911, !42, i64 0}
!911 = !{!"CustomDataLayer", !42, i64 0, !42, i64 4, !42, i64 8, !42, i64 12, !42, i64 16, !42, i64 20, !42, i64 24, !42, i64 28, !36, i64 32, !35, i64 96}
!912 = distinct !{!912, !44}
!913 = !{!"versioning_legacy.c:do_version_ntree_242_2"}
!914 = !{!915, !42, i64 0}
!915 = !{!"NodeImageAnim", !42, i64 0, !42, i64 4, !42, i64 8, !36, i64 12, !36, i64 13, !40, i64 14}
!916 = !{!63, !42, i64 12}
!917 = !{!915, !42, i64 4}
!918 = !{!63, !42, i64 20}
!919 = !{!915, !42, i64 8}
!920 = !{!63, !42, i64 16}
!921 = !{!915, !36, i64 12}
!922 = !{!63, !36, i64 25}
!923 = !{!63, !36, i64 24}
!924 = !{!63, !36, i64 26}
!925 = distinct !{!925, !44}
!926 = !{!"versioning_legacy.c:customdata_version_243"}
!927 = !{!911, !42, i64 12}
!928 = !{!911, !42, i64 16}
!929 = distinct !{!929, !44}
!930 = !{!"versioning_legacy.c:ntree_version_245"}
!931 = !{!879, !40, i64 376}
!932 = !{!933, !41, i64 0}
!933 = !{!"NodeTwoFloats", !41, i64 0, !41, i64 4}
!934 = !{!879, !35, i64 240}
!935 = !{!63, !40, i64 34}
!936 = distinct !{!936, !44}
!937 = !{!"versioning_legacy.c:copy_v3_v3"}
!938 = !{!"versioning_legacy.c:do_version_free_effects_245"}
!939 = distinct !{!939, !44}
!940 = !{!"versioning_legacy.c:idproperties_fix_group_lengths"}
!941 = !{!47, !35, i64 112}
!942 = !{!47, !35, i64 0}
!943 = distinct !{!943, !44}
!944 = !{!"versioning_legacy.c:alphasort_version_246"}
!945 = distinct !{!945, !44}
!946 = !{!854, !40, i64 16}
!947 = !{!105, !40, i64 1366}
!948 = !{!105, !35, i64 152}
!949 = !{!91, !35, i64 24}
!950 = distinct !{!950, !44}
!951 = !{!911, !35, i64 96}
!952 = !{!901, !40, i64 42}
!953 = distinct !{!953, !44}
!954 = distinct !{!954, !44}
!955 = !{!"versioning_legacy.c:mul_v3_fl"}
!956 = !{!"versioning_legacy.c:add_v3_v3v3"}
!957 = !{!"versioning_legacy.c:do_version_free_effect_245"}
!958 = !{!959, !40, i64 16}
!959 = !{!"Effect", !35, i64 0, !35, i64 8, !40, i64 16, !40, i64 18, !40, i64 20, !40, i64 22}
!960 = !{!39, !35, i64 376}
!961 = !{!"versioning_legacy.c:idproperties_fix_groups_lengths_recurse"}
!962 = !{!963, !36, i64 16}
!963 = !{!"IDProperty", !35, i64 0, !35, i64 8, !36, i64 16, !36, i64 17, !40, i64 18, !36, i64 20, !42, i64 84, !964, i64 88, !42, i64 120, !42, i64 124}
!964 = !{!"IDPropertyData", !35, i64 0, !49, i64 8, !42, i64 24, !42, i64 28}
!965 = distinct !{!965, !44}
!966 = !{!963, !42, i64 120}
