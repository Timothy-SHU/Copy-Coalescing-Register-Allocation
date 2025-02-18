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
%struct.MFace = type { i32, i32, i32, i32, i16, i8, i8 }
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
%struct.bNodeTree = type { %struct.ID, ptr, ptr, [64 x i8], ptr, ptr, [2 x float], %struct.ListBase, %struct.ListBase, i32, i32, i32, i32, i32, i16, i16, i32, i32, i16, i16, i32, %struct.rctf, %struct.ListBase, %struct.ListBase, ptr, %struct.bNodeInstanceKey, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.bNodeInstanceKey = type { i32 }
%struct.bNode = type { ptr, ptr, ptr, ptr, ptr, [64 x i8], [64 x i8], i32, i16, i16, i16, i16, i16, i16, i16, i16, [3 x float], %struct.ListBase, %struct.ListBase, ptr, ptr, ptr, ptr, %struct.ListBase, float, float, float, float, float, float, float, i32, [64 x i8], i16, i16, float, float, i16, i16, ptr, %struct.rctf, %struct.rctf, %struct.rctf, i16, i16, i32, ptr }
%struct.NodeBlurData = type { i16, i16, i16, i16, i16, i16, i16, i16, float, float, float, i16, i8, i8, i32, i32 }
%struct.EnvMap = type { ptr, ptr, [6 x ptr], [4 x [4 x float]], [3 x [3 x float]], i16, i16, float, float, float, i32, i16, i16, i32, i32, i16, i16 }
%struct.MTex = type { i16, i16, i16, i16, ptr, ptr, [64 x i8], i8, i8, i8, i8, [3 x float], [3 x float], float, i16, i16, i16, i16, i16, i16, i8, [7 x i8], float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float }
%struct.NodeHueSat = type { float, float, float }
%struct.Nurb = type { ptr, ptr, i16, i16, i16, i16, i32, i32, [2 x i16], i16, i16, i16, i16, i16, i16, ptr, ptr, ptr, ptr, i16, i16, i32 }
%struct.BezTriple = type { [3 x [3 x float]], float, float, float, i8, i8, i8, i8, i8, i8, i8, i8, float, float, float, [4 x i8] }
%struct.BPoint = type { [4 x float], float, float, i16, i16, float, float }
%struct.bMinMaxConstraint = type { ptr, i32, float, i32, i16, i16, i16, i16, [3 x float], [64 x i8] }
%struct.bRotateLikeConstraint = type { ptr, i32, i32, [64 x i8] }
%struct.CurveModifierData = type { %struct.ModifierData, ptr, [64 x i8], i16, [6 x i8] }
%struct.MTFace = type { [4 x [2 x float]], ptr, i8, i8, i16, i16, i16 }
%struct.CustomDataLayer = type { i32, i32, i32, i32, i32, i32, i32, i32, [64 x i8], ptr }
%struct.Group = type { %struct.ID, %struct.ListBase, i32, [3 x float] }
%struct.NodeImageAnim = type { i32, i32, i32, i8, i8, i16 }
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
%struct.Effect = type { ptr, ptr, i16, i16, i16, i16 }
%struct.bActionStrip = type { ptr, ptr, i16, i16, i16, i16, ptr, ptr, ptr, float, float, float, float, float, float, float, float, float, float, [32 x i8], [32 x i8], %struct.ListBase }
%struct.PartDeflect = type { i32, i16, i16, i16, i16, i16, i16, i16, i16, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, ptr, ptr, float, i32, ptr }
%struct.bConstraintActuator = type { i16, i16, i16, i16, i16, i16, i32, [3 x float], [3 x float], [3 x float], [3 x float], [64 x i8] }
%struct.Strip = type { ptr, ptr, i32, i32, i32, i32, ptr, [768 x i8], ptr, ptr, ptr, ptr, %struct.ColorManagedColorspaceSettings }
%struct.StripProxy = type { [768 x i8], [256 x i8], ptr, i16, i16, i16, i16 }
%struct.Bone = type { ptr, ptr, ptr, ptr, %struct.ListBase, [64 x i8], float, [3 x float], [3 x float], [3 x [3 x float]], i32, [3 x float], [3 x float], [4 x [4 x float]], float, float, float, float, float, float, float, float, float, float, [3 x float], i32, i16, [1 x i16] }
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

; Function Attrs: nofree norecurse nosync nounwind memory(read, inaccessiblemem: none) uwtable
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
  %12 = phi ptr [ %5, %7 ], [ null, %3 ]
  ret ptr %12
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind uwtable
define dso_local void @blo_do_version_old_trackto_to_constraints(ptr noundef %0) local_unnamed_addr #2 {
  %2 = getelementptr inbounds %struct.Object, ptr %0, i64 0, i32 10
  %3 = load ptr, ptr %2, align 8, !tbaa !46
  %4 = icmp eq ptr %3, null
  br i1 %4, label %18, label %5

5:                                                ; preds = %1
  %6 = tail call ptr @BKE_constraint_add_for_object(ptr noundef %0, ptr noundef nonnull @.str, i16 noundef signext 2) #11
  %7 = getelementptr inbounds %struct.bConstraint, ptr %6, i64 0, i32 2
  %8 = load ptr, ptr %7, align 8, !tbaa !52
  %9 = load ptr, ptr %2, align 8, !tbaa !46
  store ptr %9, ptr %8, align 8, !tbaa !54
  %10 = getelementptr inbounds %struct.Object, ptr %0, i64 0, i32 57
  %11 = load i16, ptr %10, align 4, !tbaa !56
  %12 = sext i16 %11 to i32
  %13 = getelementptr inbounds %struct.bTrackToConstraint, ptr %8, i64 0, i32 1
  store i32 %12, ptr %13, align 8, !tbaa !57
  %14 = getelementptr inbounds %struct.Object, ptr %0, i64 0, i32 58
  %15 = load i16, ptr %14, align 2, !tbaa !58
  %16 = sext i16 %15 to i32
  %17 = getelementptr inbounds %struct.bTrackToConstraint, ptr %8, i64 0, i32 2
  store i32 %16, ptr %17, align 4, !tbaa !59
  br label %18

18:                                               ; preds = %5, %1
  store ptr null, ptr %2, align 8, !tbaa !46
  ret void
}

declare ptr @BKE_constraint_add_for_object(ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define dso_local void @blo_do_versions_pre250(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #2 {
  %4 = alloca %struct.SeqIterator, align 8
  %5 = alloca %struct.SeqIterator, align 8
  %6 = alloca %struct.SeqIterator, align 8
  %7 = getelementptr inbounds %struct.Main, ptr %2, i64 0, i32 3
  %8 = load i16, ptr %7, align 8, !tbaa !60
  %9 = icmp eq i16 %8, 100
  br i1 %9, label %10, label %37

10:                                               ; preds = %3
  %11 = getelementptr inbounds %struct.Main, ptr %2, i64 0, i32 18
  %12 = load ptr, ptr %11, align 8, !tbaa !34
  %13 = icmp eq ptr %12, null
  br i1 %13, label %37, label %14

14:                                               ; preds = %10, %34
  %15 = phi ptr [ %35, %34 ], [ %12, %10 ]
  %16 = getelementptr inbounds %struct.ID, ptr %15, i64 0, i32 5
  %17 = load i16, ptr %16, align 2, !tbaa !62
  %18 = and i16 %17, 32
  %19 = icmp eq i16 %18, 0
  br i1 %19, label %34, label %20

20:                                               ; preds = %14
  %21 = getelementptr inbounds %struct.Tex, ptr %15, i64 0, i32 42
  %22 = load i16, ptr %21, align 8, !tbaa !65
  %23 = icmp eq i16 %22, 0
  br i1 %23, label %24, label %34

24:                                               ; preds = %20
  %25 = getelementptr inbounds %struct.Tex, ptr %15, i64 0, i32 40
  %26 = load i16, ptr %25, align 4, !tbaa !66
  %27 = icmp eq i16 %26, 0
  br i1 %27, label %28, label %32

28:                                               ; preds = %24
  %29 = getelementptr inbounds %struct.Tex, ptr %15, i64 0, i32 41
  %30 = load i16, ptr %29, align 2, !tbaa !67
  %31 = icmp eq i16 %30, 0
  br i1 %31, label %33, label %32

32:                                               ; preds = %28, %24
  store i16 3, ptr %21, align 8, !tbaa !65
  br label %34

33:                                               ; preds = %28
  store i16 1, ptr %21, align 8, !tbaa !65
  store i16 1, ptr %29, align 2, !tbaa !67
  store i16 1, ptr %25, align 4, !tbaa !66
  br label %34

34:                                               ; preds = %20, %33, %32, %14
  %35 = load ptr, ptr %15, align 8, !tbaa !34
  %36 = icmp eq ptr %35, null
  br i1 %36, label %37, label %14, !llvm.loop !68

37:                                               ; preds = %34, %10, %3
  %38 = icmp slt i16 %8, 102
  br i1 %38, label %39, label %50

39:                                               ; preds = %37
  %40 = getelementptr inbounds %struct.Main, ptr %2, i64 0, i32 11
  %41 = load ptr, ptr %40, align 8, !tbaa !34
  %42 = icmp eq ptr %41, null
  br i1 %42, label %50, label %43

43:                                               ; preds = %39, %43
  %44 = phi ptr [ %48, %43 ], [ %41, %39 ]
  %45 = getelementptr inbounds %struct.Scene, ptr %44, i64 0, i32 22, i32 12
  store i32 100, ptr %45, align 4, !tbaa !69
  %46 = getelementptr inbounds %struct.Scene, ptr %44, i64 0, i32 22, i32 11
  store i32 100, ptr %46, align 8, !tbaa !88
  %47 = getelementptr inbounds %struct.Scene, ptr %44, i64 0, i32 22, i32 15
  store float 1.000000e+00, ptr %47, align 4, !tbaa !89
  %48 = load ptr, ptr %44, align 8, !tbaa !34
  %49 = icmp eq ptr %48, null
  br i1 %49, label %50, label %43, !llvm.loop !90

50:                                               ; preds = %43, %39, %37
  %51 = icmp slt i16 %8, 103
  br i1 %51, label %52, label %61

52:                                               ; preds = %50
  %53 = getelementptr inbounds %struct.Main, ptr %2, i64 0, i32 17
  %54 = load ptr, ptr %53, align 8, !tbaa !34
  %55 = icmp eq ptr %54, null
  br i1 %55, label %61, label %56

56:                                               ; preds = %52, %56
  %57 = phi ptr [ %59, %56 ], [ %54, %52 ]
  %58 = getelementptr inbounds %struct.Material, ptr %57, i64 0, i32 25
  store float 1.000000e+00, ptr %58, align 8, !tbaa !91
  %59 = load ptr, ptr %57, align 8, !tbaa !34
  %60 = icmp eq ptr %59, null
  br i1 %60, label %61, label %56, !llvm.loop !95

61:                                               ; preds = %56, %52, %50
  %62 = icmp slt i16 %8, 104
  br i1 %62, label %63, label %94

63:                                               ; preds = %61
  %64 = getelementptr inbounds %struct.Main, ptr %2, i64 0, i32 13
  %65 = load ptr, ptr %64, align 8, !tbaa !34
  %66 = icmp eq ptr %65, null
  br i1 %66, label %94, label %67

67:                                               ; preds = %63, %91
  %68 = phi ptr [ %92, %91 ], [ %65, %63 ]
  %69 = getelementptr inbounds %struct.Object, ptr %68, i64 0, i32 54
  store i16 0, ptr %69, align 2, !tbaa !96
  %70 = getelementptr inbounds %struct.Object, ptr %68, i64 0, i32 31
  %71 = load i32, ptr %70, align 8, !tbaa !97
  %72 = icmp sgt i32 %71, 0
  br i1 %72, label %73, label %91

73:                                               ; preds = %67
  %74 = getelementptr inbounds %struct.Object, ptr %68, i64 0, i32 29
  %75 = load ptr, ptr %74, align 8, !tbaa !98
  %76 = zext nneg i32 %71 to i64
  br label %77

77:                                               ; preds = %73, %88
  %78 = phi i64 [ 0, %73 ], [ %89, %88 ]
  %79 = getelementptr inbounds ptr, ptr %75, i64 %78
  %80 = load ptr, ptr %79, align 8, !tbaa !34
  %81 = icmp eq ptr %80, null
  br i1 %81, label %88, label %82

82:                                               ; preds = %77
  %83 = trunc i64 %78 to i32
  %84 = shl nuw i32 1, %83
  %85 = load i16, ptr %69, align 2, !tbaa !96
  %86 = trunc i32 %84 to i16
  %87 = or i16 %85, %86
  store i16 %87, ptr %69, align 2, !tbaa !96
  br label %88

88:                                               ; preds = %77, %82
  %89 = add nuw nsw i64 %78, 1
  %90 = icmp eq i64 %89, %76
  br i1 %90, label %91, label %77, !llvm.loop !99

91:                                               ; preds = %88, %67
  %92 = load ptr, ptr %68, align 8, !tbaa !34
  %93 = icmp eq ptr %92, null
  br i1 %93, label %94, label %67, !llvm.loop !100

94:                                               ; preds = %91, %63, %61
  %95 = icmp slt i16 %8, 105
  br i1 %95, label %96, label %111

96:                                               ; preds = %94
  %97 = getelementptr inbounds %struct.Main, ptr %2, i64 0, i32 13
  %98 = load ptr, ptr %97, align 8, !tbaa !34
  %99 = icmp eq ptr %98, null
  br i1 %99, label %111, label %100

100:                                              ; preds = %96, %108
  %101 = phi ptr [ %109, %108 ], [ %98, %96 ]
  %102 = getelementptr inbounds %struct.Object, ptr %101, i64 0, i32 55
  %103 = load i16, ptr %102, align 8, !tbaa !101
  %104 = and i16 %103, 1
  %105 = icmp eq i16 %104, 0
  br i1 %105, label %108, label %106

106:                                              ; preds = %100
  %107 = add nsw i16 %103, -1
  store i16 %107, ptr %102, align 8, !tbaa !101
  br label %108

108:                                              ; preds = %106, %100
  %109 = load ptr, ptr %101, align 8, !tbaa !34
  %110 = icmp eq ptr %109, null
  br i1 %110, label %111, label %100, !llvm.loop !102

111:                                              ; preds = %108, %96, %94
  %112 = icmp slt i16 %8, 106
  br i1 %112, label %113, label %125

113:                                              ; preds = %111
  %114 = getelementptr inbounds %struct.Main, ptr %2, i64 0, i32 13
  %115 = load ptr, ptr %114, align 8, !tbaa !34
  %116 = icmp eq ptr %115, null
  br i1 %116, label %125, label %117

117:                                              ; preds = %113, %117
  %118 = phi ptr [ %123, %117 ], [ %115, %113 ]
  %119 = getelementptr inbounds %struct.Object, ptr %118, i64 0, i32 64
  store i32 1, ptr %119, align 8, !tbaa !103
  %120 = getelementptr inbounds %struct.Object, ptr %118, i64 0, i32 65
  store i32 0, ptr %120, align 4, !tbaa !104
  %121 = getelementptr inbounds %struct.Object, ptr %118, i64 0, i32 66
  store i32 1, ptr %121, align 8, !tbaa !105
  %122 = getelementptr inbounds %struct.Object, ptr %118, i64 0, i32 67
  store i32 100, ptr %122, align 4, !tbaa !106
  %123 = load ptr, ptr %118, align 8, !tbaa !34
  %124 = icmp eq ptr %123, null
  br i1 %124, label %125, label %117, !llvm.loop !107

125:                                              ; preds = %117, %113, %111
  %126 = icmp slt i16 %8, 107
  br i1 %126, label %127, label %186

127:                                              ; preds = %125
  %128 = getelementptr inbounds %struct.Main, ptr %2, i64 0, i32 14
  %129 = load ptr, ptr %128, align 8, !tbaa !34
  %130 = icmp eq ptr %129, null
  br i1 %130, label %186, label %131

131:                                              ; preds = %127, %183
  %132 = phi ptr [ %184, %183 ], [ %129, %127 ]
  %133 = getelementptr inbounds %struct.Mesh, ptr %132, i64 0, i32 18
  %134 = load ptr, ptr %133, align 8, !tbaa !108
  %135 = icmp eq ptr %134, null
  br i1 %135, label %183, label %136

136:                                              ; preds = %131
  %137 = getelementptr inbounds %struct.Mesh, ptr %132, i64 0, i32 28
  %138 = load i32, ptr %137, align 8, !tbaa !111
  %139 = icmp eq i32 %138, 0
  br i1 %139, label %183, label %140

140:                                              ; preds = %136
  %141 = load ptr, ptr @MEM_mallocN, align 8, !tbaa !34
  %142 = sext i32 %138 to i64
  %143 = shl nsw i64 %142, 4
  %144 = tail call ptr %141(i64 noundef %143, ptr noundef nonnull @.str.18) #11
  %145 = load ptr, ptr %133, align 8, !tbaa !108
  %146 = load i32, ptr %137, align 8, !tbaa !111
  %147 = icmp sgt i32 %146, 0
  br i1 %147, label %148, label %181

148:                                              ; preds = %140
  %149 = getelementptr inbounds %struct.Mesh, ptr %132, i64 0, i32 12
  %150 = load ptr, ptr %149, align 8, !tbaa !112
  br label %151

151:                                              ; preds = %148, %151
  %152 = phi i32 [ %178, %151 ], [ %146, %148 ]
  %153 = phi ptr [ %179, %151 ], [ %150, %148 ]
  %154 = phi ptr [ %177, %151 ], [ %144, %148 ]
  %155 = load i32, ptr %153, align 4, !tbaa !113
  %156 = zext i32 %155 to i64
  %157 = getelementptr inbounds i32, ptr %145, i64 %156
  %158 = load i32, ptr %157, align 4, !tbaa !115
  store i32 %158, ptr %154, align 4, !tbaa !115
  %159 = getelementptr inbounds %struct.MFace, ptr %153, i64 0, i32 1
  %160 = load i32, ptr %159, align 4, !tbaa !116
  %161 = zext i32 %160 to i64
  %162 = getelementptr inbounds i32, ptr %145, i64 %161
  %163 = load i32, ptr %162, align 4, !tbaa !115
  %164 = getelementptr inbounds i32, ptr %154, i64 1
  store i32 %163, ptr %164, align 4, !tbaa !115
  %165 = getelementptr inbounds %struct.MFace, ptr %153, i64 0, i32 2
  %166 = load i32, ptr %165, align 4, !tbaa !117
  %167 = zext i32 %166 to i64
  %168 = getelementptr inbounds i32, ptr %145, i64 %167
  %169 = load i32, ptr %168, align 4, !tbaa !115
  %170 = getelementptr inbounds i32, ptr %154, i64 2
  store i32 %169, ptr %170, align 4, !tbaa !115
  %171 = getelementptr inbounds %struct.MFace, ptr %153, i64 0, i32 3
  %172 = load i32, ptr %171, align 4, !tbaa !118
  %173 = zext i32 %172 to i64
  %174 = getelementptr inbounds i32, ptr %145, i64 %173
  %175 = load i32, ptr %174, align 4, !tbaa !115
  %176 = getelementptr inbounds i32, ptr %154, i64 3
  store i32 %175, ptr %176, align 4, !tbaa !115
  %177 = getelementptr inbounds i32, ptr %154, i64 4
  %178 = add nsw i32 %152, -1
  %179 = getelementptr inbounds %struct.MFace, ptr %153, i64 1
  %180 = icmp sgt i32 %152, 1
  br i1 %180, label %151, label %181, !llvm.loop !119

181:                                              ; preds = %151, %140
  %182 = load ptr, ptr @MEM_freeN, align 8, !tbaa !34
  tail call void %182(ptr noundef %145) #11
  store ptr %144, ptr %133, align 8, !tbaa !108
  br label %183

183:                                              ; preds = %181, %136, %131
  %184 = load ptr, ptr %132, align 8, !tbaa !34
  %185 = icmp eq ptr %184, null
  br i1 %185, label %186, label %131, !llvm.loop !120

186:                                              ; preds = %183, %127, %125
  %187 = load i16, ptr %7, align 8, !tbaa !60
  %188 = icmp slt i16 %187, 108
  br i1 %188, label %189, label %213

189:                                              ; preds = %186
  %190 = getelementptr inbounds %struct.Main, ptr %2, i64 0, i32 11
  %191 = load ptr, ptr %190, align 8, !tbaa !34
  %192 = icmp eq ptr %191, null
  br i1 %192, label %200, label %193

193:                                              ; preds = %189, %193
  %194 = phi ptr [ %198, %193 ], [ %191, %189 ]
  %195 = getelementptr inbounds %struct.Scene, ptr %194, i64 0, i32 22, i32 47
  %196 = load i32, ptr %195, align 8, !tbaa !121
  %197 = or i32 %196, 4
  store i32 %197, ptr %195, align 8, !tbaa !121
  %198 = load ptr, ptr %194, align 8, !tbaa !34
  %199 = icmp eq ptr %198, null
  br i1 %199, label %200, label %193, !llvm.loop !122

200:                                              ; preds = %193, %189
  %201 = getelementptr inbounds %struct.Main, ptr %2, i64 0, i32 13
  %202 = load ptr, ptr %201, align 8, !tbaa !34
  %203 = icmp eq ptr %202, null
  br i1 %203, label %213, label %204

204:                                              ; preds = %200, %210
  %205 = phi ptr [ %211, %210 ], [ %202, %200 ]
  %206 = getelementptr inbounds %struct.Object, ptr %205, i64 0, i32 87
  %207 = load i8, ptr %206, align 2, !tbaa !123
  %208 = icmp eq i8 %207, 0
  br i1 %208, label %209, label %210

209:                                              ; preds = %204
  store i8 3, ptr %206, align 2, !tbaa !123
  br label %210

210:                                              ; preds = %209, %204
  %211 = load ptr, ptr %205, align 8, !tbaa !34
  %212 = icmp eq ptr %211, null
  br i1 %212, label %213, label %204, !llvm.loop !124

213:                                              ; preds = %210, %200, %186
  %214 = icmp slt i16 %187, 110
  br i1 %214, label %215, label %248

215:                                              ; preds = %213
  %216 = getelementptr inbounds %struct.Main, ptr %2, i64 0, i32 26
  %217 = load ptr, ptr %216, align 8, !tbaa !34
  %218 = icmp eq ptr %217, null
  br i1 %218, label %248, label %222

219:                                              ; preds = %227, %222
  %220 = load ptr, ptr %223, align 8, !tbaa !34
  %221 = icmp eq ptr %220, null
  br i1 %221, label %248, label %222, !llvm.loop !125

222:                                              ; preds = %215, %219
  %223 = phi ptr [ %220, %219 ], [ %217, %215 ]
  %224 = getelementptr inbounds %struct.bScreen, ptr %223, i64 0, i32 3
  %225 = load ptr, ptr %224, align 8, !tbaa !34
  %226 = icmp eq ptr %225, null
  br i1 %226, label %219, label %230

227:                                              ; preds = %245, %230
  %228 = load ptr, ptr %231, align 8, !tbaa !34
  %229 = icmp eq ptr %228, null
  br i1 %229, label %219, label %230, !llvm.loop !126

230:                                              ; preds = %222, %227
  %231 = phi ptr [ %228, %227 ], [ %225, %222 ]
  %232 = getelementptr inbounds %struct.ScrArea, ptr %231, i64 0, i32 19
  %233 = load ptr, ptr %232, align 8, !tbaa !34
  %234 = icmp eq ptr %233, null
  br i1 %234, label %227, label %235

235:                                              ; preds = %230, %245
  %236 = phi ptr [ %246, %245 ], [ %233, %230 ]
  %237 = getelementptr inbounds %struct.SpaceLink, ptr %236, i64 0, i32 3
  %238 = load i32, ptr %237, align 8, !tbaa !127
  %239 = icmp eq i32 %238, 1
  br i1 %239, label %240, label %245

240:                                              ; preds = %235
  %241 = getelementptr inbounds %struct.View3D, ptr %236, i64 0, i32 37
  %242 = load i16, ptr %241, align 2, !tbaa !129
  %243 = icmp eq i16 %242, 0
  br i1 %243, label %244, label %245

244:                                              ; preds = %240
  store i16 20, ptr %241, align 2, !tbaa !129
  br label %245

245:                                              ; preds = %240, %244, %235
  %246 = load ptr, ptr %236, align 8, !tbaa !34
  %247 = icmp eq ptr %246, null
  br i1 %247, label %227, label %235, !llvm.loop !131

248:                                              ; preds = %219, %215, %213
  %249 = icmp slt i16 %187, 114
  br i1 %249, label %250, label %265

250:                                              ; preds = %248
  %251 = getelementptr inbounds %struct.Main, ptr %2, i64 0, i32 17
  %252 = load ptr, ptr %251, align 8, !tbaa !34
  %253 = icmp eq ptr %252, null
  br i1 %253, label %265, label %254

254:                                              ; preds = %250, %260
  %255 = phi ptr [ %263, %260 ], [ %252, %250 ]
  %256 = getelementptr inbounds %struct.Material, ptr %255, i64 0, i32 60
  %257 = load float, ptr %256, align 8, !tbaa !132
  %258 = fcmp oeq float %257, 0.000000e+00
  br i1 %258, label %259, label %260

259:                                              ; preds = %254
  store float 1.000000e+00, ptr %256, align 8, !tbaa !132
  br label %260

260:                                              ; preds = %259, %254
  %261 = getelementptr inbounds %struct.Material, ptr %255, i64 0, i32 61
  store float 1.000000e+00, ptr %261, align 4, !tbaa !133
  %262 = getelementptr inbounds %struct.Material, ptr %255, i64 0, i32 62
  store float 1.000000e+00, ptr %262, align 8, !tbaa !134
  %263 = load ptr, ptr %255, align 8, !tbaa !34
  %264 = icmp eq ptr %263, null
  br i1 %264, label %265, label %254, !llvm.loop !135

265:                                              ; preds = %260, %250, %248
  %266 = icmp slt i16 %187, 135
  br i1 %266, label %267, label %289

267:                                              ; preds = %265
  %268 = getelementptr inbounds %struct.Main, ptr %2, i64 0, i32 18
  %269 = load ptr, ptr %268, align 8, !tbaa !34
  %270 = icmp eq ptr %269, null
  br i1 %270, label %289, label %271

271:                                              ; preds = %267, %286
  %272 = phi ptr [ %287, %286 ], [ %269, %267 ]
  %273 = getelementptr inbounds %struct.Tex, ptr %272, i64 0, i32 7
  %274 = load float, ptr %273, align 4, !tbaa !136
  %275 = fcmp oeq float %274, 0.000000e+00
  br i1 %275, label %276, label %286

276:                                              ; preds = %271
  %277 = getelementptr inbounds %struct.Tex, ptr %272, i64 0, i32 8
  %278 = load float, ptr %277, align 8, !tbaa !137
  %279 = fcmp oeq float %278, 0.000000e+00
  br i1 %279, label %280, label %286

280:                                              ; preds = %276
  %281 = getelementptr inbounds %struct.Tex, ptr %272, i64 0, i32 9
  %282 = load float, ptr %281, align 4, !tbaa !138
  %283 = fcmp oeq float %282, 0.000000e+00
  br i1 %283, label %284, label %286

284:                                              ; preds = %280
  store float 1.000000e+00, ptr %273, align 4, !tbaa !136
  store float 1.000000e+00, ptr %277, align 8, !tbaa !137
  store float 1.000000e+00, ptr %281, align 4, !tbaa !138
  %285 = getelementptr inbounds %struct.Tex, ptr %272, i64 0, i32 10
  store float 1.000000e+00, ptr %285, align 8, !tbaa !139
  br label %286

286:                                              ; preds = %284, %280, %276, %271
  %287 = load ptr, ptr %272, align 8, !tbaa !34
  %288 = icmp eq ptr %287, null
  br i1 %288, label %289, label %271, !llvm.loop !140

289:                                              ; preds = %286, %267, %265
  %290 = icmp slt i16 %187, 141
  br i1 %290, label %291, label %313

291:                                              ; preds = %289
  %292 = getelementptr inbounds %struct.Main, ptr %2, i64 0, i32 18
  %293 = load ptr, ptr %292, align 8, !tbaa !34
  %294 = icmp eq ptr %293, null
  br i1 %294, label %313, label %295

295:                                              ; preds = %291, %310
  %296 = phi ptr [ %311, %310 ], [ %293, %291 ]
  %297 = getelementptr inbounds %struct.Tex, ptr %296, i64 0, i32 7
  %298 = load float, ptr %297, align 4, !tbaa !136
  %299 = fcmp oeq float %298, 0.000000e+00
  br i1 %299, label %300, label %310

300:                                              ; preds = %295
  %301 = getelementptr inbounds %struct.Tex, ptr %296, i64 0, i32 8
  %302 = load float, ptr %301, align 8, !tbaa !137
  %303 = fcmp oeq float %302, 0.000000e+00
  br i1 %303, label %304, label %310

304:                                              ; preds = %300
  %305 = getelementptr inbounds %struct.Tex, ptr %296, i64 0, i32 9
  %306 = load float, ptr %305, align 4, !tbaa !138
  %307 = fcmp oeq float %306, 0.000000e+00
  br i1 %307, label %308, label %310

308:                                              ; preds = %304
  store float 1.000000e+00, ptr %297, align 4, !tbaa !136
  store float 1.000000e+00, ptr %301, align 8, !tbaa !137
  store float 1.000000e+00, ptr %305, align 4, !tbaa !138
  %309 = getelementptr inbounds %struct.Tex, ptr %296, i64 0, i32 10
  store float 1.000000e+00, ptr %309, align 8, !tbaa !139
  br label %310

310:                                              ; preds = %308, %304, %300, %295
  %311 = load ptr, ptr %296, align 8, !tbaa !34
  %312 = icmp eq ptr %311, null
  br i1 %312, label %313, label %295, !llvm.loop !141

313:                                              ; preds = %310, %291, %289
  %314 = icmp slt i16 %187, 154
  br i1 %314, label %315, label %328

315:                                              ; preds = %313
  %316 = getelementptr inbounds %struct.Main, ptr %2, i64 0, i32 11
  %317 = load ptr, ptr %316, align 8, !tbaa !34
  %318 = icmp eq ptr %317, null
  br i1 %318, label %328, label %319

319:                                              ; preds = %315, %325
  %320 = phi ptr [ %326, %325 ], [ %317, %315 ]
  %321 = getelementptr inbounds %struct.Scene, ptr %320, i64 0, i32 22, i32 16
  %322 = load float, ptr %321, align 8, !tbaa !142
  %323 = fcmp oeq float %322, 0.000000e+00
  br i1 %323, label %324, label %325

324:                                              ; preds = %319
  store float 1.000000e+00, ptr %321, align 8, !tbaa !142
  br label %325

325:                                              ; preds = %324, %319
  %326 = load ptr, ptr %320, align 8, !tbaa !34
  %327 = icmp eq ptr %326, null
  br i1 %327, label %328, label %319, !llvm.loop !143

328:                                              ; preds = %325, %315, %313
  %329 = icmp slt i16 %187, 164
  br i1 %329, label %330, label %343

330:                                              ; preds = %328
  %331 = getelementptr inbounds %struct.Main, ptr %2, i64 0, i32 11
  %332 = load ptr, ptr %331, align 8, !tbaa !34
  %333 = icmp eq ptr %332, null
  br i1 %333, label %343, label %334

334:                                              ; preds = %330, %340
  %335 = phi ptr [ %341, %340 ], [ %332, %330 ]
  %336 = getelementptr inbounds %struct.Scene, ptr %335, i64 0, i32 22, i32 55
  %337 = load i16, ptr %336, align 4, !tbaa !144
  %338 = icmp eq i16 %337, 0
  br i1 %338, label %339, label %340

339:                                              ; preds = %334
  store i16 25, ptr %336, align 4, !tbaa !144
  br label %340

340:                                              ; preds = %339, %334
  %341 = load ptr, ptr %335, align 8, !tbaa !34
  %342 = icmp eq ptr %341, null
  br i1 %342, label %343, label %334, !llvm.loop !145

343:                                              ; preds = %340, %330, %328
  %344 = icmp slt i16 %187, 165
  br i1 %344, label %345, label %354

345:                                              ; preds = %343
  %346 = getelementptr inbounds %struct.Main, ptr %2, i64 0, i32 14
  %347 = load ptr, ptr %346, align 8, !tbaa !34
  %348 = icmp eq ptr %347, null
  br i1 %348, label %354, label %349

349:                                              ; preds = %345, %349
  %350 = phi ptr [ %352, %349 ], [ %347, %345 ]
  %351 = getelementptr inbounds %struct.Mesh, ptr %350, i64 0, i32 39
  store float 3.000000e+01, ptr %351, align 8, !tbaa !146
  %352 = load ptr, ptr %350, align 8, !tbaa !34
  %353 = icmp eq ptr %352, null
  br i1 %353, label %354, label %349, !llvm.loop !147

354:                                              ; preds = %349, %345, %343
  %355 = icmp slt i16 %187, 166
  br i1 %355, label %356, label %438

356:                                              ; preds = %354
  %357 = getelementptr inbounds %struct.Main, ptr %2, i64 0, i32 14
  %358 = load ptr, ptr %357, align 8, !tbaa !34
  %359 = icmp eq ptr %358, null
  br i1 %359, label %438, label %360

360:                                              ; preds = %356, %435
  %361 = phi ptr [ %436, %435 ], [ %358, %356 ]
  %362 = getelementptr inbounds %struct.Mesh, ptr %361, i64 0, i32 14
  %363 = load ptr, ptr %362, align 8, !tbaa !148
  %364 = icmp eq ptr %363, null
  br i1 %364, label %435, label %365

365:                                              ; preds = %360
  %366 = getelementptr inbounds %struct.Mesh, ptr %361, i64 0, i32 28
  %367 = load i32, ptr %366, align 8, !tbaa !111
  %368 = icmp eq i32 %367, 0
  br i1 %368, label %435, label %369

369:                                              ; preds = %365, %369
  %370 = phi ptr [ %433, %369 ], [ %363, %365 ]
  %371 = phi i32 [ %372, %369 ], [ %367, %365 ]
  %372 = add nsw i32 %371, -1
  %373 = getelementptr inbounds i8, ptr %370, i64 41
  %374 = load i8, ptr %373, align 1, !tbaa !149
  %375 = icmp ugt i8 %374, 126
  %376 = shl nuw i8 %374, 1
  %377 = select i1 %375, i8 -1, i8 %376
  store i8 %377, ptr %373, align 1, !tbaa !149
  %378 = getelementptr inbounds i8, ptr %370, i64 42
  %379 = load i8, ptr %378, align 1, !tbaa !149
  %380 = icmp ugt i8 %379, 126
  %381 = shl nuw i8 %379, 1
  %382 = select i1 %380, i8 -1, i8 %381
  store i8 %382, ptr %378, align 1, !tbaa !149
  %383 = getelementptr inbounds i8, ptr %370, i64 43
  %384 = load i8, ptr %383, align 1, !tbaa !149
  %385 = icmp ugt i8 %384, 126
  %386 = shl nuw i8 %384, 1
  %387 = select i1 %385, i8 -1, i8 %386
  store i8 %387, ptr %383, align 1, !tbaa !149
  %388 = getelementptr inbounds i8, ptr %370, i64 45
  %389 = load i8, ptr %388, align 1, !tbaa !149
  %390 = icmp ugt i8 %389, 126
  %391 = shl nuw i8 %389, 1
  %392 = select i1 %390, i8 -1, i8 %391
  store i8 %392, ptr %388, align 1, !tbaa !149
  %393 = getelementptr inbounds i8, ptr %370, i64 46
  %394 = load i8, ptr %393, align 1, !tbaa !149
  %395 = icmp ugt i8 %394, 126
  %396 = shl nuw i8 %394, 1
  %397 = select i1 %395, i8 -1, i8 %396
  store i8 %397, ptr %393, align 1, !tbaa !149
  %398 = getelementptr inbounds i8, ptr %370, i64 47
  %399 = load i8, ptr %398, align 1, !tbaa !149
  %400 = icmp ugt i8 %399, 126
  %401 = shl nuw i8 %399, 1
  %402 = select i1 %400, i8 -1, i8 %401
  store i8 %402, ptr %398, align 1, !tbaa !149
  %403 = getelementptr inbounds i8, ptr %370, i64 49
  %404 = load i8, ptr %403, align 1, !tbaa !149
  %405 = icmp ugt i8 %404, 126
  %406 = shl nuw i8 %404, 1
  %407 = select i1 %405, i8 -1, i8 %406
  store i8 %407, ptr %403, align 1, !tbaa !149
  %408 = getelementptr inbounds i8, ptr %370, i64 50
  %409 = load i8, ptr %408, align 1, !tbaa !149
  %410 = icmp ugt i8 %409, 126
  %411 = shl nuw i8 %409, 1
  %412 = select i1 %410, i8 -1, i8 %411
  store i8 %412, ptr %408, align 1, !tbaa !149
  %413 = getelementptr inbounds i8, ptr %370, i64 51
  %414 = load i8, ptr %413, align 1, !tbaa !149
  %415 = icmp ugt i8 %414, 126
  %416 = shl nuw i8 %414, 1
  %417 = select i1 %415, i8 -1, i8 %416
  store i8 %417, ptr %413, align 1, !tbaa !149
  %418 = getelementptr inbounds i8, ptr %370, i64 53
  %419 = load i8, ptr %418, align 1, !tbaa !149
  %420 = icmp ugt i8 %419, 126
  %421 = shl nuw i8 %419, 1
  %422 = select i1 %420, i8 -1, i8 %421
  store i8 %422, ptr %418, align 1, !tbaa !149
  %423 = getelementptr inbounds i8, ptr %370, i64 54
  %424 = load i8, ptr %423, align 1, !tbaa !149
  %425 = icmp ugt i8 %424, 126
  %426 = shl nuw i8 %424, 1
  %427 = select i1 %425, i8 -1, i8 %426
  store i8 %427, ptr %423, align 1, !tbaa !149
  %428 = getelementptr inbounds i8, ptr %370, i64 55
  %429 = load i8, ptr %428, align 1, !tbaa !149
  %430 = icmp ugt i8 %429, 126
  %431 = shl nuw i8 %429, 1
  %432 = select i1 %430, i8 -1, i8 %431
  store i8 %432, ptr %428, align 1, !tbaa !149
  %433 = getelementptr inbounds %struct.TFace, ptr %370, i64 1
  %434 = icmp eq i32 %372, 0
  br i1 %434, label %435, label %369, !llvm.loop !150

435:                                              ; preds = %369, %365, %360
  %436 = load ptr, ptr %361, align 8, !tbaa !34
  %437 = icmp eq ptr %436, null
  br i1 %437, label %438, label %360, !llvm.loop !151

438:                                              ; preds = %435, %356, %354
  %439 = load i16, ptr %7, align 8, !tbaa !60
  %440 = icmp slt i16 %439, 170
  br i1 %440, label %441, label %485

441:                                              ; preds = %438
  %442 = getelementptr inbounds %struct.Main, ptr %2, i64 0, i32 14
  %443 = load ptr, ptr %442, align 8, !tbaa !34
  %444 = icmp eq ptr %443, null
  br i1 %444, label %454, label %445

445:                                              ; preds = %441, %451
  %446 = phi ptr [ %452, %451 ], [ %443, %441 ]
  %447 = getelementptr inbounds %struct.Mesh, ptr %446, i64 0, i32 43
  %448 = load i8, ptr %447, align 2, !tbaa !152
  %449 = icmp eq i8 %448, 0
  br i1 %449, label %450, label %451

450:                                              ; preds = %445
  store i8 1, ptr %447, align 2, !tbaa !152
  br label %451

451:                                              ; preds = %450, %445
  %452 = load ptr, ptr %446, align 8, !tbaa !34
  %453 = icmp eq ptr %452, null
  br i1 %453, label %454, label %445, !llvm.loop !153

454:                                              ; preds = %451, %441
  br i1 %440, label %455, label %485

455:                                              ; preds = %454
  %456 = getelementptr inbounds %struct.Main, ptr %2, i64 0, i32 26
  %457 = load ptr, ptr %456, align 8, !tbaa !34
  %458 = icmp eq ptr %457, null
  br i1 %458, label %485, label %462

459:                                              ; preds = %467, %462
  %460 = load ptr, ptr %463, align 8, !tbaa !34
  %461 = icmp eq ptr %460, null
  br i1 %461, label %485, label %462, !llvm.loop !154

462:                                              ; preds = %455, %459
  %463 = phi ptr [ %460, %459 ], [ %457, %455 ]
  %464 = getelementptr inbounds %struct.bScreen, ptr %463, i64 0, i32 3
  %465 = load ptr, ptr %464, align 8, !tbaa !34
  %466 = icmp eq ptr %465, null
  br i1 %466, label %459, label %470

467:                                              ; preds = %482, %470
  %468 = load ptr, ptr %471, align 8, !tbaa !34
  %469 = icmp eq ptr %468, null
  br i1 %469, label %459, label %470, !llvm.loop !155

470:                                              ; preds = %462, %467
  %471 = phi ptr [ %468, %467 ], [ %465, %462 ]
  %472 = getelementptr inbounds %struct.ScrArea, ptr %471, i64 0, i32 19
  %473 = load ptr, ptr %472, align 8, !tbaa !34
  %474 = icmp eq ptr %473, null
  br i1 %474, label %467, label %475

475:                                              ; preds = %470, %482
  %476 = phi ptr [ %483, %482 ], [ %473, %470 ]
  %477 = getelementptr inbounds %struct.SpaceLink, ptr %476, i64 0, i32 3
  %478 = load i32, ptr %477, align 8, !tbaa !127
  %479 = icmp eq i32 %478, 2
  br i1 %479, label %480, label %482

480:                                              ; preds = %475
  %481 = getelementptr inbounds %struct.SpaceIpo, ptr %476, i64 0, i32 6, i32 6
  store float 1.500000e+04, ptr %481, align 8, !tbaa !156
  br label %482

482:                                              ; preds = %480, %475
  %483 = load ptr, ptr %476, align 8, !tbaa !34
  %484 = icmp eq ptr %483, null
  br i1 %484, label %467, label %475, !llvm.loop !157

485:                                              ; preds = %459, %455, %438, %454
  %486 = icmp slt i16 %439, 171
  br i1 %486, label %487, label %513

487:                                              ; preds = %485
  %488 = getelementptr inbounds %struct.Main, ptr %2, i64 0, i32 13
  %489 = load ptr, ptr %488, align 8, !tbaa !34
  %490 = icmp eq ptr %489, null
  br i1 %490, label %513, label %491

491:                                              ; preds = %487, %510
  %492 = phi ptr [ %511, %510 ], [ %489, %487 ]
  %493 = getelementptr inbounds %struct.Object, ptr %492, i64 0, i32 24
  br label %494

494:                                              ; preds = %498, %491
  %495 = phi ptr [ %493, %491 ], [ %496, %498 ]
  %496 = load ptr, ptr %495, align 8, !tbaa !34
  %497 = icmp eq ptr %496, null
  br i1 %497, label %502, label %498

498:                                              ; preds = %494
  %499 = getelementptr inbounds %struct.PartEff, ptr %496, i64 0, i32 2
  %500 = load i16, ptr %499, align 8, !tbaa !38
  %501 = icmp eq i16 %500, 1
  br i1 %501, label %502, label %494, !llvm.loop !43

502:                                              ; preds = %494, %498
  %503 = phi ptr [ %496, %498 ], [ null, %494 ]
  %504 = icmp eq ptr %503, null
  br i1 %504, label %510, label %505

505:                                              ; preds = %502
  %506 = getelementptr inbounds %struct.PartEff, ptr %503, i64 0, i32 32
  %507 = load i16, ptr %506, align 8, !tbaa !158
  %508 = icmp eq i16 %507, 0
  br i1 %508, label %509, label %510

509:                                              ; preds = %505
  store i16 5, ptr %506, align 8, !tbaa !158
  br label %510

510:                                              ; preds = %505, %509, %502
  %511 = load ptr, ptr %492, align 8, !tbaa !34
  %512 = icmp eq ptr %511, null
  br i1 %512, label %513, label %491, !llvm.loop !159

513:                                              ; preds = %510, %487, %485
  %514 = icmp slt i16 %439, 172
  br i1 %514, label %515, label %545

515:                                              ; preds = %513
  %516 = getelementptr inbounds %struct.Main, ptr %2, i64 0, i32 26
  %517 = load ptr, ptr %516, align 8, !tbaa !34
  %518 = icmp eq ptr %517, null
  br i1 %518, label %545, label %522

519:                                              ; preds = %527, %522
  %520 = load ptr, ptr %523, align 8, !tbaa !34
  %521 = icmp eq ptr %520, null
  br i1 %521, label %545, label %522, !llvm.loop !160

522:                                              ; preds = %515, %519
  %523 = phi ptr [ %520, %519 ], [ %517, %515 ]
  %524 = getelementptr inbounds %struct.bScreen, ptr %523, i64 0, i32 3
  %525 = load ptr, ptr %524, align 8, !tbaa !34
  %526 = icmp eq ptr %525, null
  br i1 %526, label %519, label %530

527:                                              ; preds = %542, %530
  %528 = load ptr, ptr %531, align 8, !tbaa !34
  %529 = icmp eq ptr %528, null
  br i1 %529, label %519, label %530, !llvm.loop !161

530:                                              ; preds = %522, %527
  %531 = phi ptr [ %528, %527 ], [ %525, %522 ]
  %532 = getelementptr inbounds %struct.ScrArea, ptr %531, i64 0, i32 19
  %533 = load ptr, ptr %532, align 8, !tbaa !34
  %534 = icmp eq ptr %533, null
  br i1 %534, label %527, label %535

535:                                              ; preds = %530, %542
  %536 = phi ptr [ %543, %542 ], [ %533, %530 ]
  %537 = getelementptr inbounds %struct.SpaceLink, ptr %536, i64 0, i32 3
  %538 = load i32, ptr %537, align 8, !tbaa !127
  %539 = icmp eq i32 %538, 9
  br i1 %539, label %540, label %542

540:                                              ; preds = %535
  %541 = getelementptr inbounds %struct.SpaceText, ptr %536, i64 0, i32 11
  store i16 12, ptr %541, align 4, !tbaa !162
  br label %542

542:                                              ; preds = %540, %535
  %543 = load ptr, ptr %536, align 8, !tbaa !34
  %544 = icmp eq ptr %543, null
  br i1 %544, label %527, label %535, !llvm.loop !164

545:                                              ; preds = %519, %515, %513
  %546 = icmp slt i16 %439, 174
  br i1 %546, label %547, label %580

547:                                              ; preds = %545
  %548 = getelementptr inbounds %struct.Main, ptr %2, i64 0, i32 14
  %549 = load ptr, ptr %548, align 8, !tbaa !34
  %550 = icmp eq ptr %549, null
  br i1 %550, label %580, label %551

551:                                              ; preds = %547, %577
  %552 = phi ptr [ %578, %577 ], [ %549, %547 ]
  %553 = getelementptr inbounds %struct.Mesh, ptr %552, i64 0, i32 14
  %554 = load ptr, ptr %553, align 8, !tbaa !148
  %555 = icmp eq ptr %554, null
  br i1 %555, label %577, label %556

556:                                              ; preds = %551
  %557 = getelementptr inbounds %struct.Mesh, ptr %552, i64 0, i32 28
  %558 = load i32, ptr %557, align 8, !tbaa !111
  %559 = icmp sgt i32 %558, 0
  br i1 %559, label %560, label %577

560:                                              ; preds = %556, %573
  %561 = phi i32 [ %574, %573 ], [ 0, %556 ]
  %562 = phi ptr [ %575, %573 ], [ %554, %556 ]
  br label %563

563:                                              ; preds = %560, %563
  %564 = phi i64 [ 0, %560 ], [ %571, %563 ]
  %565 = getelementptr inbounds %struct.TFace, ptr %562, i64 0, i32 1, i64 %564
  %566 = load float, ptr %565, align 8, !tbaa !156
  %567 = fdiv float %566, 3.276700e+04
  store float %567, ptr %565, align 8, !tbaa !156
  %568 = getelementptr inbounds %struct.TFace, ptr %562, i64 0, i32 1, i64 %564, i64 1
  %569 = load float, ptr %568, align 4, !tbaa !156
  %570 = fdiv float %569, 3.276700e+04
  store float %570, ptr %568, align 4, !tbaa !156
  %571 = add nuw nsw i64 %564, 1
  %572 = icmp eq i64 %571, 4
  br i1 %572, label %573, label %563, !llvm.loop !165

573:                                              ; preds = %563
  %574 = add nuw nsw i32 %561, 1
  %575 = getelementptr inbounds %struct.TFace, ptr %562, i64 1
  %576 = icmp eq i32 %574, %558
  br i1 %576, label %577, label %560, !llvm.loop !166

577:                                              ; preds = %573, %556, %551
  %578 = load ptr, ptr %552, align 8, !tbaa !34
  %579 = icmp eq ptr %578, null
  br i1 %579, label %580, label %551, !llvm.loop !167

580:                                              ; preds = %577, %547, %545
  %581 = icmp slt i16 %439, 192
  br i1 %581, label %582, label %607

582:                                              ; preds = %580
  %583 = getelementptr inbounds %struct.Main, ptr %2, i64 0, i32 13
  %584 = load ptr, ptr %583, align 8, !tbaa !168
  %585 = getelementptr inbounds %struct.Main, ptr %2, i64 0, i32 17
  %586 = load ptr, ptr %585, align 8, !tbaa !34
  %587 = icmp eq ptr %586, null
  br i1 %587, label %588, label %590

588:                                              ; preds = %598, %582
  %589 = icmp eq ptr %584, null
  br i1 %589, label %607, label %601

590:                                              ; preds = %582, %598
  %591 = phi ptr [ %599, %598 ], [ %586, %582 ]
  %592 = getelementptr inbounds %struct.Material, ptr %591, i64 0, i32 51
  %593 = load i32, ptr %592, align 4, !tbaa !169
  %594 = and i32 %593, 32
  %595 = icmp eq i32 %594, 0
  br i1 %595, label %596, label %598

596:                                              ; preds = %590
  %597 = getelementptr inbounds %struct.Material, ptr %591, i64 0, i32 25
  store float 0.000000e+00, ptr %597, align 8, !tbaa !91
  br label %598

598:                                              ; preds = %596, %590
  %599 = load ptr, ptr %591, align 8, !tbaa !34
  %600 = icmp eq ptr %599, null
  br i1 %600, label %588, label %590, !llvm.loop !170

601:                                              ; preds = %588, %601
  %602 = phi ptr [ %605, %601 ], [ %584, %588 ]
  %603 = getelementptr inbounds %struct.Object, ptr %602, i64 0, i32 69
  store float 1.000000e+00, ptr %603, align 4, !tbaa !171
  %604 = getelementptr inbounds %struct.Object, ptr %602, i64 0, i32 70
  store float 0x3FB99999A0000000, ptr %604, align 8, !tbaa !172
  %605 = load ptr, ptr %602, align 8, !tbaa !173
  %606 = icmp eq ptr %605, null
  br i1 %606, label %607, label %601, !llvm.loop !174

607:                                              ; preds = %601, %588, %580
  %608 = icmp slt i16 %439, 194
  br i1 %608, label %609, label %619

609:                                              ; preds = %607
  %610 = getelementptr inbounds %struct.Main, ptr %2, i64 0, i32 13
  %611 = load ptr, ptr %610, align 8, !tbaa !34
  %612 = icmp eq ptr %611, null
  br i1 %612, label %619, label %613

613:                                              ; preds = %609, %613
  %614 = phi ptr [ %617, %613 ], [ %611, %609 ]
  %615 = getelementptr inbounds %struct.Object, ptr %614, i64 0, i32 71
  store float 1.000000e+00, ptr %615, align 4, !tbaa !175
  %616 = getelementptr inbounds %struct.Object, ptr %614, i64 0, i32 73
  store float 0x3FB99999A0000000, ptr %616, align 4, !tbaa !176
  %617 = load ptr, ptr %614, align 8, !tbaa !34
  %618 = icmp eq ptr %617, null
  br i1 %618, label %619, label %613, !llvm.loop !177

619:                                              ; preds = %613, %609, %607
  %620 = icmp slt i16 %439, 197
  br i1 %620, label %621, label %653

621:                                              ; preds = %619
  %622 = getelementptr inbounds %struct.Main, ptr %2, i64 0, i32 14
  %623 = load ptr, ptr %622, align 8, !tbaa !34
  %624 = icmp eq ptr %623, null
  br i1 %624, label %653, label %625

625:                                              ; preds = %621, %650
  %626 = phi ptr [ %651, %650 ], [ %623, %621 ]
  %627 = getelementptr inbounds %struct.Mesh, ptr %626, i64 0, i32 14
  %628 = load ptr, ptr %627, align 8, !tbaa !148
  %629 = icmp eq ptr %628, null
  br i1 %629, label %650, label %630

630:                                              ; preds = %625
  %631 = getelementptr inbounds %struct.Mesh, ptr %626, i64 0, i32 28
  %632 = load i32, ptr %631, align 8, !tbaa !111
  %633 = icmp sgt i32 %632, 0
  br i1 %633, label %634, label %650

634:                                              ; preds = %630, %646
  %635 = phi i32 [ %647, %646 ], [ 0, %630 ]
  %636 = phi ptr [ %648, %646 ], [ %628, %630 ]
  %637 = getelementptr inbounds %struct.TFace, ptr %636, i64 0, i32 5
  %638 = load i16, ptr %637, align 2, !tbaa !178
  br label %639

639:                                              ; preds = %634, %639
  %640 = phi i32 [ 0, %634 ], [ %644, %639 ]
  %641 = phi i16 [ %638, %634 ], [ %643, %639 ]
  %642 = and i16 %641, -1026
  %643 = or disjoint i16 %642, 1
  %644 = add nuw nsw i32 %640, 1
  %645 = icmp eq i32 %644, 4
  br i1 %645, label %646, label %639, !llvm.loop !180

646:                                              ; preds = %639
  store i16 %643, ptr %637, align 2, !tbaa !178
  %647 = add nuw nsw i32 %635, 1
  %648 = getelementptr inbounds %struct.TFace, ptr %636, i64 1
  %649 = icmp eq i32 %647, %632
  br i1 %649, label %650, label %634, !llvm.loop !181

650:                                              ; preds = %646, %630, %625
  %651 = load ptr, ptr %626, align 8, !tbaa !34
  %652 = icmp eq ptr %651, null
  br i1 %652, label %653, label %625, !llvm.loop !182

653:                                              ; preds = %650, %621, %619
  %654 = icmp slt i16 %439, 201
  br i1 %654, label %655, label %669

655:                                              ; preds = %653
  %656 = getelementptr inbounds %struct.Main, ptr %2, i64 0, i32 13
  %657 = load ptr, ptr %656, align 8, !tbaa !34
  %658 = icmp eq ptr %657, null
  br i1 %658, label %669, label %659

659:                                              ; preds = %655, %659
  %660 = phi ptr [ %667, %659 ], [ %657, %655 ]
  %661 = getelementptr inbounds %struct.Object, ptr %660, i64 0, i32 99
  %662 = load i32, ptr %661, align 8, !tbaa !183
  %663 = trunc i32 %662 to i16
  %664 = and i16 %663, 4032
  %665 = getelementptr inbounds %struct.Object, ptr %660, i64 0, i32 61
  store i16 %664, ptr %665, align 4, !tbaa !184
  %666 = and i32 %662, -3969
  store i32 %666, ptr %661, align 8, !tbaa !183
  %667 = load ptr, ptr %660, align 8, !tbaa !34
  %668 = icmp eq ptr %667, null
  br i1 %668, label %669, label %659, !llvm.loop !185

669:                                              ; preds = %659, %655, %653
  %670 = icmp slt i16 %439, 202
  br i1 %670, label %671, label %716

671:                                              ; preds = %669
  %672 = getelementptr inbounds %struct.Main, ptr %2, i64 0, i32 13
  %673 = load ptr, ptr %672, align 8, !tbaa !34
  %674 = icmp eq ptr %673, null
  br i1 %674, label %716, label %678

675:                                              ; preds = %713, %678
  %676 = load ptr, ptr %679, align 8, !tbaa !34
  %677 = icmp eq ptr %676, null
  br i1 %677, label %716, label %678, !llvm.loop !186

678:                                              ; preds = %671, %675
  %679 = phi ptr [ %676, %675 ], [ %673, %671 ]
  %680 = getelementptr inbounds %struct.Object, ptr %679, i64 0, i32 94
  %681 = load ptr, ptr %680, align 8, !tbaa !34
  %682 = icmp eq ptr %681, null
  br i1 %682, label %675, label %683

683:                                              ; preds = %678, %713
  %684 = phi ptr [ %714, %713 ], [ %681, %678 ]
  %685 = getelementptr inbounds %struct.bActuator, ptr %684, i64 0, i32 3
  %686 = load i16, ptr %685, align 8, !tbaa !187
  switch i16 %686, label %713 [
    i16 1, label %687
    i16 7, label %695
    i16 8, label %707
  ]

687:                                              ; preds = %683
  %688 = getelementptr inbounds %struct.bActuator, ptr %684, i64 0, i32 8
  %689 = load ptr, ptr %688, align 8, !tbaa !189
  %690 = getelementptr inbounds %struct.bIpoActuator, ptr %689, i64 0, i32 4
  %691 = tail call ptr @BKE_bproperty_object_get(ptr noundef nonnull %679, ptr noundef nonnull %690) #11
  %692 = icmp eq ptr %691, null
  br i1 %692, label %713, label %693

693:                                              ; preds = %687
  %694 = getelementptr inbounds %struct.bIpoActuator, ptr %689, i64 0, i32 1
  store i16 6, ptr %694, align 2, !tbaa !190
  br label %713

695:                                              ; preds = %683
  %696 = getelementptr inbounds %struct.bActuator, ptr %684, i64 0, i32 8
  %697 = load ptr, ptr %696, align 8, !tbaa !189
  %698 = load ptr, ptr @MEM_callocN, align 8, !tbaa !34
  %699 = tail call ptr %698(i64 noundef 128, ptr noundef nonnull @.str.1) #11
  %700 = getelementptr inbounds %struct.bEditObjectActuator, ptr %699, i64 0, i32 1
  store i16 0, ptr %700, align 4, !tbaa !192
  %701 = getelementptr inbounds %struct.bAddObjectActuator, ptr %697, i64 0, i32 2
  %702 = load ptr, ptr %701, align 8, !tbaa !194
  %703 = getelementptr inbounds %struct.bEditObjectActuator, ptr %699, i64 0, i32 3
  store ptr %702, ptr %703, align 8, !tbaa !196
  %704 = load i32, ptr %697, align 8, !tbaa !197
  store i32 %704, ptr %699, align 8, !tbaa !198
  %705 = load ptr, ptr @MEM_freeN, align 8, !tbaa !34
  tail call void %705(ptr noundef nonnull %697) #11
  store ptr %699, ptr %696, align 8, !tbaa !189
  %706 = getelementptr inbounds %struct.bActuator, ptr %684, i64 0, i32 5
  store i16 10, ptr %706, align 4, !tbaa !199
  store i16 10, ptr %685, align 8, !tbaa !187
  br label %713

707:                                              ; preds = %683
  %708 = load ptr, ptr @MEM_callocN, align 8, !tbaa !34
  %709 = tail call ptr %708(i64 noundef 128, ptr noundef nonnull @.str.1) #11
  %710 = getelementptr inbounds %struct.bEditObjectActuator, ptr %709, i64 0, i32 1
  store i16 1, ptr %710, align 4, !tbaa !192
  %711 = getelementptr inbounds %struct.bActuator, ptr %684, i64 0, i32 8
  store ptr %709, ptr %711, align 8, !tbaa !189
  %712 = getelementptr inbounds %struct.bActuator, ptr %684, i64 0, i32 5
  store i16 10, ptr %712, align 4, !tbaa !199
  store i16 10, ptr %685, align 8, !tbaa !187
  br label %713

713:                                              ; preds = %683, %695, %707, %687, %693
  %714 = load ptr, ptr %684, align 8, !tbaa !34
  %715 = icmp eq ptr %714, null
  br i1 %715, label %675, label %683, !llvm.loop !200

716:                                              ; preds = %675, %671, %669
  %717 = load i16, ptr %7, align 8, !tbaa !60
  %718 = icmp slt i16 %717, 203
  br i1 %718, label %719, label %744

719:                                              ; preds = %716
  %720 = getelementptr inbounds %struct.Main, ptr %2, i64 0, i32 13
  %721 = load ptr, ptr %720, align 8, !tbaa !34
  %722 = icmp eq ptr %721, null
  br i1 %722, label %744, label %726

723:                                              ; preds = %741, %726
  %724 = load ptr, ptr %727, align 8, !tbaa !34
  %725 = icmp eq ptr %724, null
  br i1 %725, label %744, label %726, !llvm.loop !201

726:                                              ; preds = %719, %723
  %727 = phi ptr [ %724, %723 ], [ %721, %719 ]
  %728 = getelementptr inbounds %struct.Object, ptr %727, i64 0, i32 94
  %729 = load ptr, ptr %728, align 8, !tbaa !34
  %730 = icmp eq ptr %729, null
  br i1 %730, label %723, label %731

731:                                              ; preds = %726, %741
  %732 = phi ptr [ %742, %741 ], [ %729, %726 ]
  %733 = getelementptr inbounds %struct.bActuator, ptr %732, i64 0, i32 3
  %734 = load i16, ptr %733, align 8, !tbaa !187
  %735 = icmp eq i16 %734, 0
  br i1 %735, label %736, label %741

736:                                              ; preds = %731
  %737 = getelementptr inbounds %struct.bActuator, ptr %732, i64 0, i32 8
  %738 = load ptr, ptr %737, align 8, !tbaa !189
  %739 = load i16, ptr %738, align 8, !tbaa !202
  %740 = and i16 %739, -11
  store i16 %740, ptr %738, align 8, !tbaa !202
  br label %741

741:                                              ; preds = %736, %731
  %742 = load ptr, ptr %732, align 8, !tbaa !34
  %743 = icmp eq ptr %742, null
  br i1 %743, label %723, label %731, !llvm.loop !204

744:                                              ; preds = %723, %719, %716
  %745 = icmp slt i16 %717, 205
  br i1 %745, label %746, label %800

746:                                              ; preds = %744
  %747 = getelementptr inbounds %struct.Main, ptr %2, i64 0, i32 13
  %748 = load ptr, ptr %747, align 8, !tbaa !34
  %749 = icmp eq ptr %748, null
  br i1 %749, label %787, label %753

750:                                              ; preds = %784, %753
  %751 = load ptr, ptr %754, align 8, !tbaa !34
  %752 = icmp eq ptr %751, null
  br i1 %752, label %787, label %753, !llvm.loop !205

753:                                              ; preds = %746, %750
  %754 = phi ptr [ %751, %750 ], [ %748, %746 ]
  %755 = getelementptr inbounds %struct.Object, ptr %754, i64 0, i32 94
  %756 = load ptr, ptr %755, align 8, !tbaa !34
  %757 = icmp eq ptr %756, null
  br i1 %757, label %750, label %758

758:                                              ; preds = %753, %784
  %759 = phi ptr [ %785, %784 ], [ %756, %753 ]
  %760 = getelementptr inbounds %struct.bActuator, ptr %759, i64 0, i32 3
  %761 = load i16, ptr %760, align 8, !tbaa !187
  %762 = icmp eq i16 %761, 0
  br i1 %762, label %763, label %784

763:                                              ; preds = %758
  %764 = getelementptr inbounds %struct.bActuator, ptr %759, i64 0, i32 8
  %765 = load ptr, ptr %764, align 8, !tbaa !189
  %766 = getelementptr inbounds %struct.bObjectActuator, ptr %765, i64 0, i32 4
  %767 = load float, ptr %766, align 8, !tbaa !156
  %768 = fmul float %767, 2.500000e+01
  store float %768, ptr %766, align 8, !tbaa !156
  %769 = getelementptr inbounds %struct.bObjectActuator, ptr %765, i64 0, i32 4, i64 1
  %770 = load float, ptr %769, align 4, !tbaa !156
  %771 = fmul float %770, 2.500000e+01
  store float %771, ptr %769, align 4, !tbaa !156
  %772 = getelementptr inbounds %struct.bObjectActuator, ptr %765, i64 0, i32 4, i64 2
  %773 = load float, ptr %772, align 8, !tbaa !156
  %774 = fmul float %773, 2.500000e+01
  store float %774, ptr %772, align 8, !tbaa !156
  %775 = getelementptr inbounds %struct.bObjectActuator, ptr %765, i64 0, i32 5
  %776 = load float, ptr %775, align 4, !tbaa !156
  %777 = fmul float %776, 1.000000e+01
  store float %777, ptr %775, align 4, !tbaa !156
  %778 = getelementptr inbounds %struct.bObjectActuator, ptr %765, i64 0, i32 5, i64 1
  %779 = load float, ptr %778, align 4, !tbaa !156
  %780 = fmul float %779, 1.000000e+01
  store float %780, ptr %778, align 4, !tbaa !156
  %781 = getelementptr inbounds %struct.bObjectActuator, ptr %765, i64 0, i32 5, i64 2
  %782 = load float, ptr %781, align 4, !tbaa !156
  %783 = fmul float %782, 1.000000e+01
  store float %783, ptr %781, align 4, !tbaa !156
  br label %784

784:                                              ; preds = %763, %758
  %785 = load ptr, ptr %759, align 8, !tbaa !34
  %786 = icmp eq ptr %785, null
  br i1 %786, label %750, label %758, !llvm.loop !206

787:                                              ; preds = %750, %746
  %788 = getelementptr inbounds %struct.Main, ptr %2, i64 0, i32 31
  %789 = load ptr, ptr %788, align 8, !tbaa !34
  %790 = icmp eq ptr %789, null
  br i1 %790, label %800, label %791

791:                                              ; preds = %787, %797
  %792 = phi ptr [ %798, %797 ], [ %789, %787 ]
  %793 = getelementptr inbounds %struct.bSound, ptr %792, i64 0, i32 6
  %794 = load float, ptr %793, align 8, !tbaa !207
  %795 = fcmp olt float %794, 0x3F847AE140000000
  br i1 %795, label %796, label %797

796:                                              ; preds = %791
  store float 1.000000e+00, ptr %793, align 8, !tbaa !207
  br label %797

797:                                              ; preds = %796, %791
  %798 = load ptr, ptr %792, align 8, !tbaa !34
  %799 = icmp eq ptr %798, null
  br i1 %799, label %800, label %791, !llvm.loop !209

800:                                              ; preds = %797, %787, %744
  %801 = icmp slt i16 %717, 206
  br i1 %801, label %802, label %865

802:                                              ; preds = %800
  %803 = getelementptr inbounds %struct.Main, ptr %2, i64 0, i32 13
  %804 = load ptr, ptr %803, align 8, !tbaa !34
  %805 = icmp eq ptr %804, null
  br i1 %805, label %865, label %809

806:                                              ; preds = %862, %835
  %807 = load ptr, ptr %810, align 8, !tbaa !34
  %808 = icmp eq ptr %807, null
  br i1 %808, label %865, label %809, !llvm.loop !210

809:                                              ; preds = %802, %806
  %810 = phi ptr [ %807, %806 ], [ %804, %802 ]
  %811 = getelementptr inbounds %struct.Object, ptr %810, i64 0, i32 99
  %812 = load i32, ptr %811, align 8, !tbaa !183
  %813 = and i32 %812, -257
  store i32 %813, ptr %811, align 8, !tbaa !183
  %814 = getelementptr inbounds %struct.Object, ptr %810, i64 0, i32 105
  store float 1.000000e+00, ptr %814, align 4, !tbaa !156
  %815 = getelementptr inbounds %struct.Object, ptr %810, i64 0, i32 105, i64 1
  store float 1.000000e+00, ptr %815, align 4, !tbaa !156
  %816 = getelementptr inbounds %struct.Object, ptr %810, i64 0, i32 105, i64 2
  store float 1.000000e+00, ptr %816, align 4, !tbaa !156
  %817 = getelementptr inbounds %struct.Object, ptr %810, i64 0, i32 94
  %818 = load ptr, ptr %817, align 8, !tbaa !34
  %819 = icmp eq ptr %818, null
  br i1 %819, label %835, label %820

820:                                              ; preds = %809, %832
  %821 = phi ptr [ %833, %832 ], [ %818, %809 ]
  %822 = getelementptr inbounds %struct.bActuator, ptr %821, i64 0, i32 3
  %823 = load i16, ptr %822, align 8, !tbaa !187
  %824 = icmp eq i16 %823, 10
  br i1 %824, label %825, label %832

825:                                              ; preds = %820
  %826 = getelementptr inbounds %struct.bActuator, ptr %821, i64 0, i32 8
  %827 = load ptr, ptr %826, align 8, !tbaa !189
  %828 = getelementptr inbounds %struct.bEditObjectActuator, ptr %827, i64 0, i32 6
  store float 0.000000e+00, ptr %828, align 8, !tbaa !156
  %829 = getelementptr inbounds %struct.bEditObjectActuator, ptr %827, i64 0, i32 6, i64 1
  store float 0.000000e+00, ptr %829, align 4, !tbaa !156
  %830 = getelementptr inbounds %struct.bEditObjectActuator, ptr %827, i64 0, i32 6, i64 2
  store float 0.000000e+00, ptr %830, align 8, !tbaa !156
  %831 = getelementptr inbounds %struct.bEditObjectActuator, ptr %827, i64 0, i32 9
  store i16 0, ptr %831, align 4, !tbaa !211
  br label %832

832:                                              ; preds = %825, %820
  %833 = load ptr, ptr %821, align 8, !tbaa !34
  %834 = icmp eq ptr %833, null
  br i1 %834, label %835, label %820, !llvm.loop !212

835:                                              ; preds = %832, %809
  %836 = getelementptr inbounds %struct.Object, ptr %810, i64 0, i32 92
  %837 = load ptr, ptr %836, align 8, !tbaa !34
  %838 = icmp eq ptr %837, null
  br i1 %838, label %806, label %839

839:                                              ; preds = %835, %862
  %840 = phi ptr [ %863, %862 ], [ %837, %835 ]
  %841 = getelementptr inbounds %struct.bSensor, ptr %840, i64 0, i32 2
  %842 = load i16, ptr %841, align 8, !tbaa !213
  switch i16 %842, label %847 [
    i16 7, label %843
    i16 0, label %850
  ]

843:                                              ; preds = %839
  %844 = getelementptr inbounds %struct.bSensor, ptr %840, i64 0, i32 11
  %845 = load ptr, ptr %844, align 8, !tbaa !215
  %846 = getelementptr inbounds %struct.bRadarSensor, ptr %845, i64 0, i32 2
  store float 1.000000e+04, ptr %846, align 4, !tbaa !216
  br label %847

847:                                              ; preds = %843, %839
  %848 = getelementptr inbounds %struct.bSensor, ptr %840, i64 0, i32 5
  store i16 0, ptr %848, align 2, !tbaa !218
  %849 = getelementptr inbounds %struct.bSensor, ptr %840, i64 0, i32 6
  store i16 0, ptr %849, align 8, !tbaa !219
  br label %852

850:                                              ; preds = %839
  %851 = getelementptr inbounds %struct.bSensor, ptr %840, i64 0, i32 5
  store i16 1, ptr %851, align 2, !tbaa !218
  br label %852

852:                                              ; preds = %850, %847
  %853 = getelementptr inbounds %struct.bSensor, ptr %840, i64 0, i32 14
  store i16 0, ptr %853, align 8, !tbaa !220
  switch i16 %842, label %862 [
    i16 6, label %854
    i16 9, label %858
  ]

854:                                              ; preds = %852
  %855 = getelementptr inbounds %struct.bSensor, ptr %840, i64 0, i32 11
  %856 = load ptr, ptr %855, align 8, !tbaa !215
  %857 = getelementptr inbounds %struct.bCollisionSensor, ptr %856, i64 0, i32 4
  store i16 0, ptr %857, align 2, !tbaa !221
  br label %862

858:                                              ; preds = %852
  %859 = getelementptr inbounds %struct.bSensor, ptr %840, i64 0, i32 11
  %860 = load ptr, ptr %859, align 8, !tbaa !215
  %861 = getelementptr inbounds %struct.bRaySensor, ptr %860, i64 0, i32 4
  store i16 0, ptr %861, align 4, !tbaa !223
  br label %862

862:                                              ; preds = %854, %852, %858
  %863 = load ptr, ptr %840, align 8, !tbaa !34
  %864 = icmp eq ptr %863, null
  br i1 %864, label %806, label %839, !llvm.loop !225

865:                                              ; preds = %806, %802, %800
  %866 = icmp slt i16 %717, 212
  br i1 %866, label %867, label %939

867:                                              ; preds = %865
  %868 = getelementptr inbounds %struct.Main, ptr %2, i64 0, i32 13
  %869 = load ptr, ptr %868, align 8, !tbaa !34
  %870 = icmp eq ptr %869, null
  br i1 %870, label %871, label %874

871:                                              ; preds = %874, %867
  %872 = load ptr, ptr %868, align 8, !tbaa !34
  %873 = icmp eq ptr %872, null
  br i1 %873, label %939, label %882

874:                                              ; preds = %867, %874
  %875 = phi ptr [ %877, %874 ], [ %869, %867 ]
  %876 = getelementptr inbounds %struct.Object, ptr %875, i64 0, i32 98, i64 3
  store float 1.000000e+00, ptr %876, align 4, !tbaa !156
  %877 = load ptr, ptr %875, align 8, !tbaa !34
  %878 = icmp eq ptr %877, null
  br i1 %878, label %871, label %874, !llvm.loop !226

879:                                              ; preds = %936, %882
  %880 = load ptr, ptr %883, align 8, !tbaa !34
  %881 = icmp eq ptr %880, null
  br i1 %881, label %939, label %882, !llvm.loop !227

882:                                              ; preds = %871, %879
  %883 = phi ptr [ %880, %879 ], [ %872, %871 ]
  %884 = getelementptr inbounds %struct.Object, ptr %883, i64 0, i32 94
  %885 = load ptr, ptr %884, align 8, !tbaa !34
  %886 = icmp eq ptr %885, null
  br i1 %886, label %879, label %887

887:                                              ; preds = %882, %936
  %888 = phi ptr [ %937, %936 ], [ %885, %882 ]
  %889 = getelementptr inbounds %struct.bActuator, ptr %888, i64 0, i32 3
  %890 = load i16, ptr %889, align 8, !tbaa !187
  %891 = icmp eq i16 %890, 0
  br i1 %891, label %892, label %936

892:                                              ; preds = %887
  %893 = getelementptr inbounds %struct.bActuator, ptr %888, i64 0, i32 8
  %894 = load ptr, ptr %893, align 8, !tbaa !189
  %895 = getelementptr inbounds %struct.bObjectActuator, ptr %894, i64 0, i32 10
  %896 = load float, ptr %895, align 8, !tbaa !156
  %897 = tail call float @llvm.fabs.f32(float %896)
  %898 = fcmp ult float %897, 0x3F847AE140000000
  br i1 %898, label %901, label %899

899:                                              ; preds = %892
  %900 = fmul float %896, 5.000000e+01
  store float %900, ptr %895, align 8, !tbaa !156
  br label %901

901:                                              ; preds = %899, %892
  %902 = getelementptr inbounds %struct.bObjectActuator, ptr %894, i64 0, i32 10, i64 1
  %903 = load float, ptr %902, align 4, !tbaa !156
  %904 = tail call float @llvm.fabs.f32(float %903)
  %905 = fcmp ult float %904, 0x3F847AE140000000
  br i1 %905, label %908, label %906

906:                                              ; preds = %901
  %907 = fmul float %903, 5.000000e+01
  store float %907, ptr %902, align 4, !tbaa !156
  br label %908

908:                                              ; preds = %906, %901
  %909 = getelementptr inbounds %struct.bObjectActuator, ptr %894, i64 0, i32 10, i64 2
  %910 = load float, ptr %909, align 8, !tbaa !156
  %911 = tail call float @llvm.fabs.f32(float %910)
  %912 = fcmp ult float %911, 0x3F847AE140000000
  br i1 %912, label %915, label %913

913:                                              ; preds = %908
  %914 = fmul float %910, 5.000000e+01
  store float %914, ptr %909, align 8, !tbaa !156
  br label %915

915:                                              ; preds = %913, %908
  %916 = getelementptr inbounds %struct.bObjectActuator, ptr %894, i64 0, i32 11
  %917 = load float, ptr %916, align 4, !tbaa !156
  %918 = tail call float @llvm.fabs.f32(float %917)
  %919 = fcmp ult float %918, 0x3F847AE140000000
  br i1 %919, label %922, label %920

920:                                              ; preds = %915
  %921 = fmul float %917, 5.000000e+01
  store float %921, ptr %916, align 4, !tbaa !156
  br label %922

922:                                              ; preds = %920, %915
  %923 = getelementptr inbounds %struct.bObjectActuator, ptr %894, i64 0, i32 11, i64 1
  %924 = load float, ptr %923, align 4, !tbaa !156
  %925 = tail call float @llvm.fabs.f32(float %924)
  %926 = fcmp ult float %925, 0x3F847AE140000000
  br i1 %926, label %929, label %927

927:                                              ; preds = %922
  %928 = fmul float %924, 5.000000e+01
  store float %928, ptr %923, align 4, !tbaa !156
  br label %929

929:                                              ; preds = %927, %922
  %930 = getelementptr inbounds %struct.bObjectActuator, ptr %894, i64 0, i32 11, i64 2
  %931 = load float, ptr %930, align 4, !tbaa !156
  %932 = tail call float @llvm.fabs.f32(float %931)
  %933 = fcmp ult float %932, 0x3F847AE140000000
  br i1 %933, label %936, label %934

934:                                              ; preds = %929
  %935 = fmul float %931, 5.000000e+01
  store float %935, ptr %930, align 4, !tbaa !156
  br label %936

936:                                              ; preds = %929, %934, %887
  %937 = load ptr, ptr %888, align 8, !tbaa !34
  %938 = icmp eq ptr %937, null
  br i1 %938, label %879, label %887, !llvm.loop !228

939:                                              ; preds = %879, %871, %865
  %940 = icmp slt i16 %717, 213
  br i1 %940, label %941, label %1008

941:                                              ; preds = %939
  %942 = getelementptr inbounds %struct.Main, ptr %2, i64 0, i32 31
  %943 = load ptr, ptr %942, align 8, !tbaa !34
  %944 = icmp eq ptr %943, null
  br i1 %944, label %960, label %945

945:                                              ; preds = %941, %945
  %946 = phi ptr [ %958, %945 ], [ %943, %941 ]
  %947 = getelementptr inbounds %struct.bSound, ptr %946, i64 0, i32 10
  store float 1.000000e+00, ptr %947, align 8, !tbaa !229
  %948 = getelementptr inbounds %struct.bSound, ptr %946, i64 0, i32 9
  store float 0.000000e+00, ptr %948, align 4, !tbaa !230
  %949 = getelementptr inbounds %struct.bSound, ptr %946, i64 0, i32 11
  store float 1.000000e+00, ptr %949, align 4, !tbaa !231
  %950 = getelementptr inbounds %struct.bSound, ptr %946, i64 0, i32 7
  %951 = load float, ptr %950, align 4, !tbaa !232
  %952 = fcmp ogt float %951, 0.000000e+00
  %953 = getelementptr inbounds %struct.bSound, ptr %946, i64 0, i32 12
  %954 = load i32, ptr %953, align 8, !tbaa !233
  %955 = and i32 %954, -9
  %956 = select i1 %952, i32 8, i32 0
  %957 = or disjoint i32 %955, %956
  store i32 %957, ptr %953, align 8, !tbaa !233
  %958 = load ptr, ptr %946, align 8, !tbaa !34
  %959 = icmp eq ptr %958, null
  br i1 %959, label %960, label %945, !llvm.loop !234

960:                                              ; preds = %945, %941
  %961 = getelementptr inbounds %struct.Main, ptr %2, i64 0, i32 13
  %962 = load ptr, ptr %961, align 8, !tbaa !34
  %963 = icmp eq ptr %962, null
  br i1 %963, label %984, label %967

964:                                              ; preds = %981, %967
  %965 = load ptr, ptr %968, align 8, !tbaa !34
  %966 = icmp eq ptr %965, null
  br i1 %966, label %984, label %967, !llvm.loop !235

967:                                              ; preds = %960, %964
  %968 = phi ptr [ %965, %964 ], [ %962, %960 ]
  %969 = getelementptr inbounds %struct.Object, ptr %968, i64 0, i32 91
  %970 = load ptr, ptr %969, align 8, !tbaa !34
  %971 = icmp eq ptr %970, null
  br i1 %971, label %964, label %972

972:                                              ; preds = %967, %981
  %973 = phi ptr [ %982, %981 ], [ %970, %967 ]
  %974 = getelementptr inbounds %struct.bProperty, ptr %973, i64 0, i32 3
  %975 = load i16, ptr %974, align 8, !tbaa !236
  %976 = icmp eq i16 %975, 5
  br i1 %976, label %977, label %981

977:                                              ; preds = %972
  %978 = getelementptr inbounds %struct.bProperty, ptr %973, i64 0, i32 5
  %979 = load i32, ptr %978, align 4, !tbaa !238
  %980 = sitofp i32 %979 to float
  store float %980, ptr %978, align 4, !tbaa !156
  br label %981

981:                                              ; preds = %977, %972
  %982 = load ptr, ptr %973, align 8, !tbaa !34
  %983 = icmp eq ptr %982, null
  br i1 %983, label %964, label %972, !llvm.loop !239

984:                                              ; preds = %964, %960
  %985 = getelementptr inbounds %struct.Main, ptr %2, i64 0, i32 14
  %986 = load ptr, ptr %985, align 8, !tbaa !34
  %987 = icmp eq ptr %986, null
  br i1 %987, label %1008, label %988

988:                                              ; preds = %984, %1005
  %989 = phi ptr [ %1006, %1005 ], [ %986, %984 ]
  %990 = getelementptr inbounds %struct.Mesh, ptr %989, i64 0, i32 38
  %991 = load i16, ptr %990, align 2, !tbaa !240
  %992 = and i16 %991, 64
  %993 = icmp eq i16 %992, 0
  br i1 %993, label %998, label %994

994:                                              ; preds = %988
  %995 = and i16 %991, -193
  %996 = or disjoint i16 %995, 128
  store i16 %996, ptr %990, align 2, !tbaa !240
  %997 = getelementptr inbounds %struct.Mesh, ptr %989, i64 0, i32 43
  store i8 1, ptr %997, align 2, !tbaa !152
  br label %1005

998:                                              ; preds = %988
  %999 = getelementptr inbounds %struct.Mesh, ptr %989, i64 0, i32 43
  %1000 = load i8, ptr %999, align 2, !tbaa !152
  %1001 = icmp ult i8 %1000, 2
  br i1 %1001, label %1002, label %1003

1002:                                             ; preds = %998
  store i8 1, ptr %999, align 2, !tbaa !152
  br label %1005

1003:                                             ; preds = %998
  %1004 = add i8 %1000, -1
  store i8 %1004, ptr %999, align 2, !tbaa !152
  br label %1005

1005:                                             ; preds = %994, %1003, %1002
  %1006 = load ptr, ptr %989, align 8, !tbaa !34
  %1007 = icmp eq ptr %1006, null
  br i1 %1007, label %1008, label %988, !llvm.loop !241

1008:                                             ; preds = %1005, %984, %939
  %1009 = icmp slt i16 %717, 221
  br i1 %1009, label %1010, label %1072

1010:                                             ; preds = %1008
  %1011 = getelementptr inbounds %struct.Main, ptr %2, i64 0, i32 13
  %1012 = load ptr, ptr %1011, align 8, !tbaa !34
  %1013 = icmp eq ptr %1012, null
  br i1 %1013, label %1026, label %1014

1014:                                             ; preds = %1010, %1023
  %1015 = phi ptr [ %1024, %1023 ], [ %1012, %1010 ]
  %1016 = getelementptr inbounds %struct.Object, ptr %1015, i64 0, i32 72
  store float 0x3FD99999A0000000, ptr %1016, align 8, !tbaa !242
  %1017 = getelementptr inbounds %struct.Object, ptr %1015, i64 0, i32 71
  %1018 = load float, ptr %1017, align 4, !tbaa !175
  %1019 = fcmp une float %1018, 1.000000e+00
  br i1 %1019, label %1020, label %1023

1020:                                             ; preds = %1014
  %1021 = fmul float %1018, %1018
  %1022 = fdiv float 0x3FD99999A0000000, %1021
  store float %1022, ptr %1016, align 8, !tbaa !242
  br label %1023

1023:                                             ; preds = %1020, %1014
  %1024 = load ptr, ptr %1015, align 8, !tbaa !34
  %1025 = icmp eq ptr %1024, null
  br i1 %1025, label %1026, label %1014, !llvm.loop !243

1026:                                             ; preds = %1023, %1010
  %1027 = getelementptr inbounds %struct.Main, ptr %2, i64 0, i32 14
  %1028 = load ptr, ptr %1027, align 8, !tbaa !34
  %1029 = icmp eq ptr %1028, null
  br i1 %1029, label %1072, label %1030

1030:                                             ; preds = %1026, %1069
  %1031 = phi ptr [ %1070, %1069 ], [ %1028, %1026 ]
  %1032 = getelementptr inbounds %struct.Mesh, ptr %1031, i64 0, i32 18
  %1033 = load ptr, ptr %1032, align 8, !tbaa !108
  %1034 = icmp eq ptr %1033, null
  br i1 %1034, label %1048, label %1035

1035:                                             ; preds = %1030
  %1036 = getelementptr inbounds %struct.Mesh, ptr %1031, i64 0, i32 28
  %1037 = load i32, ptr %1036, align 8, !tbaa !111
  %1038 = icmp sgt i32 %1037, 0
  br i1 %1038, label %1039, label %1048

1039:                                             ; preds = %1035
  %1040 = shl i32 %1037, 2
  %1041 = tail call i32 @llvm.smax.i32(i32 %1040, i32 1)
  %1042 = zext nneg i32 %1041 to i64
  br label %1043

1043:                                             ; preds = %1039, %1043
  %1044 = phi i64 [ 0, %1039 ], [ %1046, %1043 ]
  %1045 = getelementptr inbounds %struct.MCol, ptr %1033, i64 %1044
  store i8 -1, ptr %1045, align 1, !tbaa !244
  %1046 = add nuw nsw i64 %1044, 1
  %1047 = icmp eq i64 %1046, %1042
  br i1 %1047, label %1048, label %1043, !llvm.loop !246

1048:                                             ; preds = %1043, %1035, %1030
  %1049 = getelementptr inbounds %struct.Mesh, ptr %1031, i64 0, i32 14
  %1050 = load ptr, ptr %1049, align 8, !tbaa !148
  %1051 = icmp eq ptr %1050, null
  br i1 %1051, label %1069, label %1052

1052:                                             ; preds = %1048
  %1053 = getelementptr inbounds %struct.Mesh, ptr %1031, i64 0, i32 28
  %1054 = load i32, ptr %1053, align 8, !tbaa !111
  %1055 = icmp sgt i32 %1054, 0
  br i1 %1055, label %1056, label %1069

1056:                                             ; preds = %1052, %1064
  %1057 = phi i64 [ %1065, %1064 ], [ 0, %1052 ]
  %1058 = load ptr, ptr %1049, align 8, !tbaa !148
  br label %1059

1059:                                             ; preds = %1056, %1059
  %1060 = phi i64 [ 0, %1056 ], [ %1062, %1059 ]
  %1061 = getelementptr inbounds %struct.TFace, ptr %1058, i64 %1057, i32 2, i64 %1060
  store i8 -1, ptr %1061, align 1, !tbaa !149
  %1062 = add nuw nsw i64 %1060, 1
  %1063 = icmp eq i64 %1062, 4
  br i1 %1063, label %1064, label %1059, !llvm.loop !247

1064:                                             ; preds = %1059
  %1065 = add nuw nsw i64 %1057, 1
  %1066 = load i32, ptr %1053, align 8, !tbaa !111
  %1067 = sext i32 %1066 to i64
  %1068 = icmp slt i64 %1065, %1067
  br i1 %1068, label %1056, label %1069, !llvm.loop !248

1069:                                             ; preds = %1064, %1052, %1048
  %1070 = load ptr, ptr %1031, align 8, !tbaa !34
  %1071 = icmp eq ptr %1070, null
  br i1 %1071, label %1072, label %1030, !llvm.loop !249

1072:                                             ; preds = %1069, %1026, %1008
  %1073 = load i16, ptr %7, align 8, !tbaa !60
  %1074 = icmp slt i16 %1073, 222
  br i1 %1074, label %1075, label %1086

1075:                                             ; preds = %1072
  %1076 = getelementptr inbounds %struct.Main, ptr %2, i64 0, i32 11
  %1077 = load ptr, ptr %1076, align 8, !tbaa !34
  %1078 = icmp eq ptr %1077, null
  br i1 %1078, label %1086, label %1079

1079:                                             ; preds = %1075, %1079
  %1080 = phi ptr [ %1084, %1079 ], [ %1077, %1075 ]
  %1081 = getelementptr inbounds %struct.Scene, ptr %1080, i64 0, i32 22, i32 21
  store i16 640, ptr %1081, align 2, !tbaa !250
  %1082 = getelementptr inbounds %struct.Scene, ptr %1080, i64 0, i32 22, i32 22
  store i16 480, ptr %1082, align 4, !tbaa !251
  %1083 = getelementptr inbounds %struct.Scene, ptr %1080, i64 0, i32 22, i32 23
  store i16 60, ptr %1083, align 2, !tbaa !252
  %1084 = load ptr, ptr %1080, align 8, !tbaa !34
  %1085 = icmp eq ptr %1084, null
  br i1 %1085, label %1086, label %1079, !llvm.loop !253

1086:                                             ; preds = %1079, %1075, %1072
  %1087 = icmp slt i16 %1073, 223
  br i1 %1087, label %1088, label %1097

1088:                                             ; preds = %1086
  %1089 = getelementptr inbounds %struct.Main, ptr %2, i64 0, i32 11
  %1090 = load ptr, ptr %1089, align 8, !tbaa !34
  %1091 = icmp eq ptr %1090, null
  br i1 %1091, label %1097, label %1092

1092:                                             ; preds = %1088, %1092
  %1093 = phi ptr [ %1095, %1092 ], [ %1090, %1088 ]
  %1094 = getelementptr inbounds %struct.Scene, ptr %1093, i64 0, i32 22, i32 24
  store i16 32, ptr %1094, align 8, !tbaa !254
  %1095 = load ptr, ptr %1093, align 8, !tbaa !34
  %1096 = icmp eq ptr %1095, null
  br i1 %1096, label %1097, label %1092, !llvm.loop !255

1097:                                             ; preds = %1092, %1088, %1086
  %1098 = icmp slt i16 %1073, 224
  br i1 %1098, label %1099, label %1194

1099:                                             ; preds = %1097
  %1100 = getelementptr inbounds %struct.Main, ptr %2, i64 0, i32 28
  %1101 = load ptr, ptr %1100, align 8, !tbaa !34
  %1102 = icmp eq ptr %1101, null
  br i1 %1102, label %1115, label %1103

1103:                                             ; preds = %1099, %1112
  %1104 = phi ptr [ %1113, %1112 ], [ %1101, %1099 ]
  %1105 = getelementptr inbounds %struct.VFont, ptr %1104, i64 0, i32 1
  %1106 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %1105) #12
  %1107 = getelementptr inbounds i8, ptr %1105, i64 %1106
  %1108 = getelementptr inbounds i8, ptr %1107, i64 -6
  %1109 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %1108, ptr noundef nonnull dereferenceable(7) @.str.2) #12
  %1110 = icmp eq i32 %1109, 0
  br i1 %1110, label %1111, label %1112

1111:                                             ; preds = %1103
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(10) %1105, ptr noundef nonnull align 1 dereferenceable(10) @.str.3, i64 10, i1 false) #11
  br label %1112

1112:                                             ; preds = %1103, %1111
  %1113 = load ptr, ptr %1104, align 8, !tbaa !34
  %1114 = icmp eq ptr %1113, null
  br i1 %1114, label %1115, label %1103, !llvm.loop !256

1115:                                             ; preds = %1112, %1099
  %1116 = getelementptr inbounds %struct.Main, ptr %2, i64 0, i32 19
  %1117 = load ptr, ptr %1116, align 8, !tbaa !34
  %1118 = icmp eq ptr %1117, null
  br i1 %1118, label %1124, label %1119

1119:                                             ; preds = %1115, %1119
  %1120 = phi ptr [ %1122, %1119 ], [ %1117, %1115 ]
  %1121 = getelementptr inbounds %struct.Image, ptr %1120, i64 0, i32 26
  store i16 25, ptr %1121, align 8, !tbaa !257
  %1122 = load ptr, ptr %1120, align 8, !tbaa !34
  %1123 = icmp eq ptr %1122, null
  br i1 %1123, label %1124, label %1119, !llvm.loop !259

1124:                                             ; preds = %1119, %1115
  %1125 = getelementptr inbounds %struct.Main, ptr %2, i64 0, i32 13
  %1126 = load ptr, ptr %1125, align 8, !tbaa !34
  %1127 = icmp eq ptr %1126, null
  br i1 %1127, label %1194, label %1131

1128:                                             ; preds = %1191, %1131
  %1129 = load ptr, ptr %1132, align 8, !tbaa !34
  %1130 = icmp eq ptr %1129, null
  br i1 %1130, label %1194, label %1131, !llvm.loop !260

1131:                                             ; preds = %1124, %1128
  %1132 = phi ptr [ %1129, %1128 ], [ %1126, %1124 ]
  %1133 = getelementptr inbounds %struct.Object, ptr %1132, i64 0, i32 92
  %1134 = load ptr, ptr %1133, align 8, !tbaa !34
  %1135 = icmp eq ptr %1134, null
  br i1 %1135, label %1128, label %1136

1136:                                             ; preds = %1131, %1191
  %1137 = phi ptr [ %1192, %1191 ], [ %1134, %1131 ]
  %1138 = getelementptr inbounds %struct.bSensor, ptr %1137, i64 0, i32 2
  %1139 = load i16, ptr %1138, align 8, !tbaa !213
  %1140 = icmp eq i16 %1139, 3
  br i1 %1140, label %1141, label %1191

1141:                                             ; preds = %1136
  %1142 = getelementptr inbounds %struct.bSensor, ptr %1137, i64 0, i32 11
  %1143 = load ptr, ptr %1142, align 8, !tbaa !215
  %1144 = load i16, ptr %1143, align 2, !tbaa !261
  switch i16 %1144, label %1156 [
    i16 312, label %1157
    i16 159, label %1145
    i16 161, label %1146
    i16 154, label %1147
    i16 150, label %1148
    i16 155, label %1149
    i16 151, label %1150
    i16 156, label %1151
    i16 152, label %1152
    i16 157, label %1153
    i16 153, label %1154
    i16 158, label %1155
  ]

1145:                                             ; preds = %1141
  br label %1157

1146:                                             ; preds = %1141
  br label %1157

1147:                                             ; preds = %1141
  br label %1157

1148:                                             ; preds = %1141
  br label %1157

1149:                                             ; preds = %1141
  br label %1157

1150:                                             ; preds = %1141
  br label %1157

1151:                                             ; preds = %1141
  br label %1157

1152:                                             ; preds = %1141
  br label %1157

1153:                                             ; preds = %1141
  br label %1157

1154:                                             ; preds = %1141
  br label %1157

1155:                                             ; preds = %1141
  br label %1157

1156:                                             ; preds = %1141
  br label %1157

1157:                                             ; preds = %1141, %1145, %1146, %1147, %1148, %1149, %1150, %1151, %1152, %1153, %1154, %1155, %1156
  %1158 = phi i16 [ %1144, %1156 ], [ 159, %1155 ], [ 158, %1154 ], [ 157, %1153 ], [ 156, %1152 ], [ 155, %1151 ], [ 154, %1150 ], [ 153, %1149 ], [ 152, %1148 ], [ 151, %1147 ], [ 150, %1146 ], [ 161, %1145 ], [ 311, %1141 ]
  store i16 %1158, ptr %1143, align 2, !tbaa !261
  %1159 = getelementptr inbounds %struct.bKeyboardSensor, ptr %1143, i64 0, i32 1
  %1160 = load i16, ptr %1159, align 2, !tbaa !263
  switch i16 %1160, label %1172 [
    i16 312, label %1173
    i16 159, label %1161
    i16 161, label %1162
    i16 154, label %1163
    i16 150, label %1164
    i16 155, label %1165
    i16 151, label %1166
    i16 156, label %1167
    i16 152, label %1168
    i16 157, label %1169
    i16 153, label %1170
    i16 158, label %1171
  ]

1161:                                             ; preds = %1157
  br label %1173

1162:                                             ; preds = %1157
  br label %1173

1163:                                             ; preds = %1157
  br label %1173

1164:                                             ; preds = %1157
  br label %1173

1165:                                             ; preds = %1157
  br label %1173

1166:                                             ; preds = %1157
  br label %1173

1167:                                             ; preds = %1157
  br label %1173

1168:                                             ; preds = %1157
  br label %1173

1169:                                             ; preds = %1157
  br label %1173

1170:                                             ; preds = %1157
  br label %1173

1171:                                             ; preds = %1157
  br label %1173

1172:                                             ; preds = %1157
  br label %1173

1173:                                             ; preds = %1157, %1161, %1162, %1163, %1164, %1165, %1166, %1167, %1168, %1169, %1170, %1171, %1172
  %1174 = phi i16 [ %1160, %1172 ], [ 159, %1171 ], [ 158, %1170 ], [ 157, %1169 ], [ 156, %1168 ], [ 155, %1167 ], [ 154, %1166 ], [ 153, %1165 ], [ 152, %1164 ], [ 151, %1163 ], [ 150, %1162 ], [ 161, %1161 ], [ 311, %1157 ]
  store i16 %1174, ptr %1159, align 2, !tbaa !263
  %1175 = getelementptr inbounds %struct.bKeyboardSensor, ptr %1143, i64 0, i32 3
  %1176 = load i16, ptr %1175, align 2, !tbaa !264
  switch i16 %1176, label %1188 [
    i16 312, label %1189
    i16 159, label %1177
    i16 161, label %1178
    i16 154, label %1179
    i16 150, label %1180
    i16 155, label %1181
    i16 151, label %1182
    i16 156, label %1183
    i16 152, label %1184
    i16 157, label %1185
    i16 153, label %1186
    i16 158, label %1187
  ]

1177:                                             ; preds = %1173
  br label %1189

1178:                                             ; preds = %1173
  br label %1189

1179:                                             ; preds = %1173
  br label %1189

1180:                                             ; preds = %1173
  br label %1189

1181:                                             ; preds = %1173
  br label %1189

1182:                                             ; preds = %1173
  br label %1189

1183:                                             ; preds = %1173
  br label %1189

1184:                                             ; preds = %1173
  br label %1189

1185:                                             ; preds = %1173
  br label %1189

1186:                                             ; preds = %1173
  br label %1189

1187:                                             ; preds = %1173
  br label %1189

1188:                                             ; preds = %1173
  br label %1189

1189:                                             ; preds = %1173, %1177, %1178, %1179, %1180, %1181, %1182, %1183, %1184, %1185, %1186, %1187, %1188
  %1190 = phi i16 [ %1176, %1188 ], [ 159, %1187 ], [ 158, %1186 ], [ 157, %1185 ], [ 156, %1184 ], [ 155, %1183 ], [ 154, %1182 ], [ 153, %1181 ], [ 152, %1180 ], [ 151, %1179 ], [ 150, %1178 ], [ 161, %1177 ], [ 311, %1173 ]
  store i16 %1190, ptr %1175, align 2, !tbaa !264
  br label %1191

1191:                                             ; preds = %1136, %1189
  %1192 = load ptr, ptr %1137, align 8, !tbaa !34
  %1193 = icmp eq ptr %1192, null
  br i1 %1193, label %1128, label %1136, !llvm.loop !265

1194:                                             ; preds = %1128, %1124, %1097
  %1195 = load i16, ptr %7, align 8, !tbaa !60
  %1196 = icmp slt i16 %1195, 225
  br i1 %1196, label %1197, label %1274

1197:                                             ; preds = %1194
  %1198 = getelementptr inbounds %struct.Main, ptr %2, i64 0, i32 31
  %1199 = load ptr, ptr %1198, align 8, !tbaa !34
  %1200 = icmp eq ptr %1199, null
  br i1 %1200, label %1215, label %1201

1201:                                             ; preds = %1197, %1212
  %1202 = phi ptr [ %1213, %1212 ], [ %1199, %1197 ]
  %1203 = getelementptr inbounds %struct.bSound, ptr %1202, i64 0, i32 2
  %1204 = load ptr, ptr %1203, align 8, !tbaa !266
  %1205 = icmp eq ptr %1204, null
  br i1 %1205, label %1212, label %1206

1206:                                             ; preds = %1201
  %1207 = getelementptr inbounds %struct.bSound, ptr %1202, i64 0, i32 4
  %1208 = load ptr, ptr %1207, align 8, !tbaa !267
  %1209 = icmp eq ptr %1208, null
  br i1 %1209, label %1210, label %1211

1210:                                             ; preds = %1206
  store ptr %1204, ptr %1207, align 8, !tbaa !267
  br label %1211

1211:                                             ; preds = %1210, %1206
  store ptr null, ptr %1203, align 8, !tbaa !266
  br label %1212

1212:                                             ; preds = %1201, %1211
  %1213 = load ptr, ptr %1202, align 8, !tbaa !34
  %1214 = icmp eq ptr %1213, null
  br i1 %1214, label %1215, label %1201, !llvm.loop !268

1215:                                             ; preds = %1212, %1197
  %1216 = getelementptr inbounds %struct.Main, ptr %2, i64 0, i32 14
  %1217 = load ptr, ptr %1216, align 8, !tbaa !34
  %1218 = icmp eq ptr %1217, null
  br i1 %1218, label %1235, label %1219

1219:                                             ; preds = %1215, %1232
  %1220 = phi ptr [ %1233, %1232 ], [ %1217, %1215 ]
  %1221 = getelementptr inbounds %struct.Mesh, ptr %1220, i64 0, i32 38
  %1222 = load i16, ptr %1221, align 2, !tbaa !240
  %1223 = and i16 %1222, 128
  %1224 = icmp eq i16 %1223, 0
  br i1 %1224, label %1232, label %1225

1225:                                             ; preds = %1219
  %1226 = getelementptr inbounds %struct.Mesh, ptr %1220, i64 0, i32 44
  %1227 = load i8, ptr %1226, align 1, !tbaa !269
  %1228 = icmp eq i8 %1227, 0
  br i1 %1228, label %1229, label %1232

1229:                                             ; preds = %1225
  %1230 = getelementptr inbounds %struct.Mesh, ptr %1220, i64 0, i32 43
  %1231 = load i8, ptr %1230, align 2, !tbaa !152
  store i8 %1231, ptr %1226, align 1, !tbaa !269
  br label %1232

1232:                                             ; preds = %1219, %1225, %1229
  %1233 = load ptr, ptr %1220, align 8, !tbaa !34
  %1234 = icmp eq ptr %1233, null
  br i1 %1234, label %1235, label %1219, !llvm.loop !270

1235:                                             ; preds = %1232, %1215
  %1236 = getelementptr inbounds %struct.Main, ptr %2, i64 0, i32 11
  %1237 = load ptr, ptr %1236, align 8, !tbaa !34
  %1238 = icmp eq ptr %1237, null
  br i1 %1238, label %1244, label %1239

1239:                                             ; preds = %1235, %1239
  %1240 = phi ptr [ %1242, %1239 ], [ %1237, %1235 ]
  %1241 = getelementptr inbounds %struct.Scene, ptr %1240, i64 0, i32 22, i32 27
  store i16 1, ptr %1241, align 8, !tbaa !271
  %1242 = load ptr, ptr %1240, align 8, !tbaa !34
  %1243 = icmp eq ptr %1242, null
  br i1 %1243, label %1244, label %1239, !llvm.loop !272

1244:                                             ; preds = %1239, %1235
  %1245 = getelementptr inbounds %struct.Main, ptr %2, i64 0, i32 26
  %1246 = load ptr, ptr %1245, align 8, !tbaa !34
  %1247 = icmp eq ptr %1246, null
  br i1 %1247, label %1274, label %1251

1248:                                             ; preds = %1256, %1251
  %1249 = load ptr, ptr %1252, align 8, !tbaa !34
  %1250 = icmp eq ptr %1249, null
  br i1 %1250, label %1274, label %1251, !llvm.loop !273

1251:                                             ; preds = %1244, %1248
  %1252 = phi ptr [ %1249, %1248 ], [ %1246, %1244 ]
  %1253 = getelementptr inbounds %struct.bScreen, ptr %1252, i64 0, i32 3
  %1254 = load ptr, ptr %1253, align 8, !tbaa !34
  %1255 = icmp eq ptr %1254, null
  br i1 %1255, label %1248, label %1259

1256:                                             ; preds = %1271, %1259
  %1257 = load ptr, ptr %1260, align 8, !tbaa !34
  %1258 = icmp eq ptr %1257, null
  br i1 %1258, label %1248, label %1259, !llvm.loop !274

1259:                                             ; preds = %1251, %1256
  %1260 = phi ptr [ %1257, %1256 ], [ %1254, %1251 ]
  %1261 = getelementptr inbounds %struct.ScrArea, ptr %1260, i64 0, i32 19
  %1262 = load ptr, ptr %1261, align 8, !tbaa !34
  %1263 = icmp eq ptr %1262, null
  br i1 %1263, label %1256, label %1264

1264:                                             ; preds = %1259, %1271
  %1265 = phi ptr [ %1272, %1271 ], [ %1262, %1259 ]
  %1266 = getelementptr inbounds %struct.SpaceLink, ptr %1265, i64 0, i32 3
  %1267 = load i32, ptr %1266, align 8, !tbaa !127
  %1268 = icmp eq i32 %1267, 2
  br i1 %1268, label %1269, label %1271

1269:                                             ; preds = %1264
  %1270 = getelementptr inbounds %struct.SpaceSeq, ptr %1265, i64 0, i32 6, i32 11
  store i16 0, ptr %1270, align 4, !tbaa !275
  br label %1271

1271:                                             ; preds = %1264, %1269
  %1272 = load ptr, ptr %1265, align 8, !tbaa !34
  %1273 = icmp eq ptr %1272, null
  br i1 %1273, label %1256, label %1264, !llvm.loop !279

1274:                                             ; preds = %1248, %1244, %1194
  %1275 = icmp slt i16 %1195, 226
  br i1 %1275, label %1276, label %1285

1276:                                             ; preds = %1274
  %1277 = getelementptr inbounds %struct.Main, ptr %2, i64 0, i32 25
  %1278 = load ptr, ptr %1277, align 8, !tbaa !34
  %1279 = icmp eq ptr %1278, null
  br i1 %1279, label %1285, label %1280

1280:                                             ; preds = %1276, %1280
  %1281 = phi ptr [ %1283, %1280 ], [ %1278, %1276 ]
  %1282 = getelementptr inbounds %struct.World, ptr %1281, i64 0, i32 25
  store i16 2, ptr %1282, align 2, !tbaa !280
  %1283 = load ptr, ptr %1281, align 8, !tbaa !34
  %1284 = icmp eq ptr %1283, null
  br i1 %1284, label %1285, label %1280, !llvm.loop !282

1285:                                             ; preds = %1280, %1276, %1274
  %1286 = icmp slt i16 %1195, 228
  br i1 %1286, label %1287, label %1437

1287:                                             ; preds = %1285
  %1288 = getelementptr inbounds %struct.Main, ptr %2, i64 0, i32 13
  %1289 = load ptr, ptr %1288, align 8, !tbaa !34
  %1290 = icmp eq ptr %1289, null
  br i1 %1290, label %1375, label %1291

1291:                                             ; preds = %1287, %1372
  %1292 = phi ptr [ %1373, %1372 ], [ %1289, %1287 ]
  %1293 = getelementptr inbounds %struct.Object, ptr %1292, i64 0, i32 106
  %1294 = load ptr, ptr %1293, align 8, !tbaa !34
  %1295 = icmp eq ptr %1294, null
  br i1 %1295, label %1316, label %1296

1296:                                             ; preds = %1291
  %1297 = getelementptr inbounds %struct.Object, ptr %1292, i64 0, i32 57
  %1298 = getelementptr inbounds %struct.Object, ptr %1292, i64 0, i32 58
  br label %1299

1299:                                             ; preds = %1296, %1313
  %1300 = phi ptr [ %1294, %1296 ], [ %1314, %1313 ]
  %1301 = getelementptr inbounds %struct.bConstraint, ptr %1300, i64 0, i32 3
  %1302 = load i16, ptr %1301, align 8, !tbaa !283
  %1303 = icmp eq i16 %1302, 2
  br i1 %1303, label %1304, label %1313

1304:                                             ; preds = %1299
  %1305 = getelementptr inbounds %struct.bConstraint, ptr %1300, i64 0, i32 2
  %1306 = load ptr, ptr %1305, align 8, !tbaa !52
  %1307 = load i16, ptr %1297, align 4, !tbaa !56
  %1308 = sext i16 %1307 to i32
  %1309 = getelementptr inbounds %struct.bTrackToConstraint, ptr %1306, i64 0, i32 1
  store i32 %1308, ptr %1309, align 8, !tbaa !57
  %1310 = load i16, ptr %1298, align 2, !tbaa !58
  %1311 = sext i16 %1310 to i32
  %1312 = getelementptr inbounds %struct.bTrackToConstraint, ptr %1306, i64 0, i32 2
  store i32 %1311, ptr %1312, align 4, !tbaa !59
  br label %1313

1313:                                             ; preds = %1299, %1304
  %1314 = load ptr, ptr %1300, align 8, !tbaa !34
  %1315 = icmp eq ptr %1314, null
  br i1 %1315, label %1316, label %1299, !llvm.loop !284

1316:                                             ; preds = %1313, %1291
  %1317 = getelementptr inbounds %struct.Object, ptr %1292, i64 0, i32 3
  %1318 = load i16, ptr %1317, align 8, !tbaa !285
  %1319 = icmp eq i16 %1318, 25
  br i1 %1319, label %1320, label %1355

1320:                                             ; preds = %1316
  %1321 = getelementptr inbounds %struct.Object, ptr %1292, i64 0, i32 18
  %1322 = load ptr, ptr %1321, align 8, !tbaa !286
  %1323 = icmp eq ptr %1322, null
  br i1 %1323, label %1355, label %1324

1324:                                             ; preds = %1320
  %1325 = load ptr, ptr %1322, align 8, !tbaa !34
  %1326 = icmp eq ptr %1325, null
  br i1 %1326, label %1355, label %1327

1327:                                             ; preds = %1324
  %1328 = getelementptr inbounds %struct.Object, ptr %1292, i64 0, i32 57
  %1329 = getelementptr inbounds %struct.Object, ptr %1292, i64 0, i32 58
  br label %1333

1330:                                             ; preds = %1352, %1333
  %1331 = load ptr, ptr %1334, align 8, !tbaa !34
  %1332 = icmp eq ptr %1331, null
  br i1 %1332, label %1355, label %1333, !llvm.loop !287

1333:                                             ; preds = %1327, %1330
  %1334 = phi ptr [ %1325, %1327 ], [ %1331, %1330 ]
  %1335 = getelementptr inbounds %struct.bPoseChannel, ptr %1334, i64 0, i32 3
  %1336 = load ptr, ptr %1335, align 8, !tbaa !34
  %1337 = icmp eq ptr %1336, null
  br i1 %1337, label %1330, label %1338

1338:                                             ; preds = %1333, %1352
  %1339 = phi ptr [ %1353, %1352 ], [ %1336, %1333 ]
  %1340 = getelementptr inbounds %struct.bConstraint, ptr %1339, i64 0, i32 3
  %1341 = load i16, ptr %1340, align 8, !tbaa !283
  %1342 = icmp eq i16 %1341, 2
  br i1 %1342, label %1343, label %1352

1343:                                             ; preds = %1338
  %1344 = getelementptr inbounds %struct.bConstraint, ptr %1339, i64 0, i32 2
  %1345 = load ptr, ptr %1344, align 8, !tbaa !52
  %1346 = load i16, ptr %1328, align 4, !tbaa !56
  %1347 = sext i16 %1346 to i32
  %1348 = getelementptr inbounds %struct.bTrackToConstraint, ptr %1345, i64 0, i32 1
  store i32 %1347, ptr %1348, align 8, !tbaa !57
  %1349 = load i16, ptr %1329, align 2, !tbaa !58
  %1350 = sext i16 %1349 to i32
  %1351 = getelementptr inbounds %struct.bTrackToConstraint, ptr %1345, i64 0, i32 2
  store i32 %1350, ptr %1351, align 4, !tbaa !59
  br label %1352

1352:                                             ; preds = %1338, %1343
  %1353 = load ptr, ptr %1339, align 8, !tbaa !34
  %1354 = icmp eq ptr %1353, null
  br i1 %1354, label %1330, label %1338, !llvm.loop !288

1355:                                             ; preds = %1330, %1324, %1320, %1316
  %1356 = getelementptr inbounds %struct.Object, ptr %1292, i64 0, i32 10
  %1357 = load ptr, ptr %1356, align 8, !tbaa !46
  %1358 = icmp eq ptr %1357, null
  br i1 %1358, label %1372, label %1359

1359:                                             ; preds = %1355
  %1360 = tail call ptr @BKE_constraint_add_for_object(ptr noundef nonnull %1292, ptr noundef nonnull @.str, i16 noundef signext 2) #11
  %1361 = getelementptr inbounds %struct.bConstraint, ptr %1360, i64 0, i32 2
  %1362 = load ptr, ptr %1361, align 8, !tbaa !52
  %1363 = load ptr, ptr %1356, align 8, !tbaa !46
  store ptr %1363, ptr %1362, align 8, !tbaa !54
  %1364 = getelementptr inbounds %struct.Object, ptr %1292, i64 0, i32 57
  %1365 = load i16, ptr %1364, align 4, !tbaa !56
  %1366 = sext i16 %1365 to i32
  %1367 = getelementptr inbounds %struct.bTrackToConstraint, ptr %1362, i64 0, i32 1
  store i32 %1366, ptr %1367, align 8, !tbaa !57
  %1368 = getelementptr inbounds %struct.Object, ptr %1292, i64 0, i32 58
  %1369 = load i16, ptr %1368, align 2, !tbaa !58
  %1370 = sext i16 %1369 to i32
  %1371 = getelementptr inbounds %struct.bTrackToConstraint, ptr %1362, i64 0, i32 2
  store i32 %1370, ptr %1371, align 4, !tbaa !59
  br label %1372

1372:                                             ; preds = %1355, %1359
  store ptr null, ptr %1356, align 8, !tbaa !46
  %1373 = load ptr, ptr %1292, align 8, !tbaa !34
  %1374 = icmp eq ptr %1373, null
  br i1 %1374, label %1375, label %1291, !llvm.loop !289

1375:                                             ; preds = %1372, %1287
  %1376 = getelementptr inbounds %struct.Main, ptr %2, i64 0, i32 11
  %1377 = load ptr, ptr %1376, align 8, !tbaa !34
  %1378 = icmp eq ptr %1377, null
  br i1 %1378, label %1390, label %1379

1379:                                             ; preds = %1375, %1379
  %1380 = phi ptr [ %1388, %1379 ], [ %1377, %1375 ]
  %1381 = getelementptr inbounds %struct.Scene, ptr %1380, i64 0, i32 23
  store i32 44100, ptr %1381, align 8, !tbaa !290
  %1382 = getelementptr inbounds %struct.Scene, ptr %1380, i64 0, i32 23, i32 5
  %1383 = load i16, ptr %1382, align 4, !tbaa !291
  %1384 = or i16 %1383, 4
  store i16 %1384, ptr %1382, align 4, !tbaa !291
  %1385 = getelementptr inbounds %struct.Scene, ptr %1380, i64 0, i32 22, i32 47
  %1386 = load i32, ptr %1385, align 8, !tbaa !121
  %1387 = or i32 %1386, 16
  store i32 %1387, ptr %1385, align 8, !tbaa !121
  %1388 = load ptr, ptr %1380, align 8, !tbaa !34
  %1389 = icmp eq ptr %1388, null
  br i1 %1389, label %1390, label %1379, !llvm.loop !292

1390:                                             ; preds = %1379, %1375
  %1391 = getelementptr inbounds %struct.Main, ptr %2, i64 0, i32 17
  %1392 = load ptr, ptr %1391, align 8, !tbaa !34
  %1393 = icmp eq ptr %1392, null
  br i1 %1393, label %1404, label %1394

1394:                                             ; preds = %1390, %1394
  %1395 = phi ptr [ %1402, %1394 ], [ %1392, %1390 ]
  %1396 = getelementptr inbounds %struct.Material, ptr %1395, i64 0, i32 86
  store float 4.000000e+00, ptr %1396, align 8, !tbaa !293
  %1397 = getelementptr inbounds %struct.Material, ptr %1395, i64 0, i32 85
  store float 5.000000e-01, ptr %1397, align 4, !tbaa !294
  %1398 = getelementptr inbounds %struct.Material, ptr %1395, i64 0, i32 87
  store float 5.000000e-01, ptr %1398, align 4, !tbaa !156
  %1399 = getelementptr inbounds %struct.Material, ptr %1395, i64 0, i32 87, i64 1
  store float 0x3FB99999A0000000, ptr %1399, align 4, !tbaa !156
  %1400 = getelementptr inbounds %struct.Material, ptr %1395, i64 0, i32 87, i64 2
  store float 0x3FB99999A0000000, ptr %1400, align 4, !tbaa !156
  %1401 = getelementptr inbounds %struct.Material, ptr %1395, i64 0, i32 87, i64 3
  store float 0x3FA99999A0000000, ptr %1401, align 4, !tbaa !156
  %1402 = load ptr, ptr %1395, align 8, !tbaa !34
  %1403 = icmp eq ptr %1402, null
  br i1 %1403, label %1404, label %1394, !llvm.loop !295

1404:                                             ; preds = %1394, %1390
  %1405 = getelementptr inbounds %struct.Main, ptr %2, i64 0, i32 26
  %1406 = load ptr, ptr %1405, align 8, !tbaa !34
  %1407 = icmp eq ptr %1406, null
  br i1 %1407, label %1437, label %1411

1408:                                             ; preds = %1416, %1411
  %1409 = load ptr, ptr %1412, align 8, !tbaa !34
  %1410 = icmp eq ptr %1409, null
  br i1 %1410, label %1437, label %1411, !llvm.loop !296

1411:                                             ; preds = %1404, %1408
  %1412 = phi ptr [ %1409, %1408 ], [ %1406, %1404 ]
  %1413 = getelementptr inbounds %struct.bScreen, ptr %1412, i64 0, i32 3
  %1414 = load ptr, ptr %1413, align 8, !tbaa !34
  %1415 = icmp eq ptr %1414, null
  br i1 %1415, label %1408, label %1419

1416:                                             ; preds = %1434, %1419
  %1417 = load ptr, ptr %1420, align 8, !tbaa !34
  %1418 = icmp eq ptr %1417, null
  br i1 %1418, label %1408, label %1419, !llvm.loop !297

1419:                                             ; preds = %1411, %1416
  %1420 = phi ptr [ %1417, %1416 ], [ %1414, %1411 ]
  %1421 = getelementptr inbounds %struct.ScrArea, ptr %1420, i64 0, i32 19
  %1422 = load ptr, ptr %1421, align 8, !tbaa !34
  %1423 = icmp eq ptr %1422, null
  br i1 %1423, label %1416, label %1424

1424:                                             ; preds = %1419, %1434
  %1425 = phi ptr [ %1435, %1434 ], [ %1422, %1419 ]
  %1426 = getelementptr inbounds %struct.SpaceLink, ptr %1425, i64 0, i32 3
  %1427 = load i32, ptr %1426, align 8, !tbaa !127
  switch i32 %1427, label %1434 [
    i32 12, label %1428
    i32 13, label %1430
  ]

1428:                                             ; preds = %1424
  %1429 = getelementptr inbounds %struct.SpaceAction, ptr %1425, i64 0, i32 6, i32 6
  br label %1432

1430:                                             ; preds = %1424
  %1431 = getelementptr inbounds %struct.SpaceNla, ptr %1425, i64 0, i32 10, i32 6
  br label %1432

1432:                                             ; preds = %1430, %1428
  %1433 = phi ptr [ %1429, %1428 ], [ %1431, %1430 ]
  store float 3.200000e+04, ptr %1433, align 8, !tbaa !156
  br label %1434

1434:                                             ; preds = %1432, %1424
  %1435 = load ptr, ptr %1425, align 8, !tbaa !34
  %1436 = icmp eq ptr %1435, null
  br i1 %1436, label %1416, label %1424, !llvm.loop !298

1437:                                             ; preds = %1408, %1404, %1285
  %1438 = load i16, ptr %7, align 8, !tbaa !60
  %1439 = icmp slt i16 %1438, 229
  br i1 %1439, label %1440, label %1563

1440:                                             ; preds = %1437
  %1441 = getelementptr inbounds %struct.Main, ptr %2, i64 0, i32 13
  %1442 = load ptr, ptr %1441, align 8, !tbaa !34
  %1443 = icmp eq ptr %1442, null
  br i1 %1443, label %1511, label %1444

1444:                                             ; preds = %1440, %1508
  %1445 = phi ptr [ %1509, %1508 ], [ %1442, %1440 ]
  %1446 = getelementptr inbounds %struct.Object, ptr %1445, i64 0, i32 106
  %1447 = load ptr, ptr %1446, align 8, !tbaa !34
  %1448 = icmp eq ptr %1447, null
  br i1 %1448, label %1469, label %1449

1449:                                             ; preds = %1444
  %1450 = getelementptr inbounds %struct.Object, ptr %1445, i64 0, i32 57
  %1451 = getelementptr inbounds %struct.Object, ptr %1445, i64 0, i32 58
  br label %1452

1452:                                             ; preds = %1449, %1466
  %1453 = phi ptr [ %1447, %1449 ], [ %1467, %1466 ]
  %1454 = getelementptr inbounds %struct.bConstraint, ptr %1453, i64 0, i32 3
  %1455 = load i16, ptr %1454, align 8, !tbaa !283
  %1456 = icmp eq i16 %1455, 2
  br i1 %1456, label %1457, label %1466

1457:                                             ; preds = %1452
  %1458 = getelementptr inbounds %struct.bConstraint, ptr %1453, i64 0, i32 2
  %1459 = load ptr, ptr %1458, align 8, !tbaa !52
  %1460 = load i16, ptr %1450, align 4, !tbaa !56
  %1461 = sext i16 %1460 to i32
  %1462 = getelementptr inbounds %struct.bTrackToConstraint, ptr %1459, i64 0, i32 1
  store i32 %1461, ptr %1462, align 8, !tbaa !57
  %1463 = load i16, ptr %1451, align 2, !tbaa !58
  %1464 = sext i16 %1463 to i32
  %1465 = getelementptr inbounds %struct.bTrackToConstraint, ptr %1459, i64 0, i32 2
  store i32 %1464, ptr %1465, align 4, !tbaa !59
  br label %1466

1466:                                             ; preds = %1452, %1457
  %1467 = load ptr, ptr %1453, align 8, !tbaa !34
  %1468 = icmp eq ptr %1467, null
  br i1 %1468, label %1469, label %1452, !llvm.loop !299

1469:                                             ; preds = %1466, %1444
  %1470 = getelementptr inbounds %struct.Object, ptr %1445, i64 0, i32 3
  %1471 = load i16, ptr %1470, align 8, !tbaa !285
  %1472 = icmp eq i16 %1471, 25
  br i1 %1472, label %1473, label %1508

1473:                                             ; preds = %1469
  %1474 = getelementptr inbounds %struct.Object, ptr %1445, i64 0, i32 18
  %1475 = load ptr, ptr %1474, align 8, !tbaa !286
  %1476 = icmp eq ptr %1475, null
  br i1 %1476, label %1508, label %1477

1477:                                             ; preds = %1473
  %1478 = load ptr, ptr %1475, align 8, !tbaa !34
  %1479 = icmp eq ptr %1478, null
  br i1 %1479, label %1508, label %1480

1480:                                             ; preds = %1477
  %1481 = getelementptr inbounds %struct.Object, ptr %1445, i64 0, i32 57
  %1482 = getelementptr inbounds %struct.Object, ptr %1445, i64 0, i32 58
  br label %1486

1483:                                             ; preds = %1505, %1486
  %1484 = load ptr, ptr %1487, align 8, !tbaa !34
  %1485 = icmp eq ptr %1484, null
  br i1 %1485, label %1508, label %1486, !llvm.loop !300

1486:                                             ; preds = %1480, %1483
  %1487 = phi ptr [ %1478, %1480 ], [ %1484, %1483 ]
  %1488 = getelementptr inbounds %struct.bPoseChannel, ptr %1487, i64 0, i32 3
  %1489 = load ptr, ptr %1488, align 8, !tbaa !34
  %1490 = icmp eq ptr %1489, null
  br i1 %1490, label %1483, label %1491

1491:                                             ; preds = %1486, %1505
  %1492 = phi ptr [ %1506, %1505 ], [ %1489, %1486 ]
  %1493 = getelementptr inbounds %struct.bConstraint, ptr %1492, i64 0, i32 3
  %1494 = load i16, ptr %1493, align 8, !tbaa !283
  %1495 = icmp eq i16 %1494, 2
  br i1 %1495, label %1496, label %1505

1496:                                             ; preds = %1491
  %1497 = getelementptr inbounds %struct.bConstraint, ptr %1492, i64 0, i32 2
  %1498 = load ptr, ptr %1497, align 8, !tbaa !52
  %1499 = load i16, ptr %1481, align 4, !tbaa !56
  %1500 = sext i16 %1499 to i32
  %1501 = getelementptr inbounds %struct.bTrackToConstraint, ptr %1498, i64 0, i32 1
  store i32 %1500, ptr %1501, align 8, !tbaa !57
  %1502 = load i16, ptr %1482, align 2, !tbaa !58
  %1503 = sext i16 %1502 to i32
  %1504 = getelementptr inbounds %struct.bTrackToConstraint, ptr %1498, i64 0, i32 2
  store i32 %1503, ptr %1504, align 4, !tbaa !59
  br label %1505

1505:                                             ; preds = %1491, %1496
  %1506 = load ptr, ptr %1492, align 8, !tbaa !34
  %1507 = icmp eq ptr %1506, null
  br i1 %1507, label %1483, label %1491, !llvm.loop !301

1508:                                             ; preds = %1483, %1477, %1473, %1469
  %1509 = load ptr, ptr %1445, align 8, !tbaa !34
  %1510 = icmp eq ptr %1509, null
  br i1 %1510, label %1511, label %1444, !llvm.loop !302

1511:                                             ; preds = %1508, %1440
  %1512 = getelementptr inbounds %struct.Main, ptr %2, i64 0, i32 11
  %1513 = load ptr, ptr %1512, align 8, !tbaa !34
  %1514 = icmp eq ptr %1513, null
  br i1 %1514, label %1522, label %1515

1515:                                             ; preds = %1511, %1515
  %1516 = phi ptr [ %1520, %1515 ], [ %1513, %1511 ]
  %1517 = getelementptr inbounds %struct.Scene, ptr %1516, i64 0, i32 22, i32 47
  %1518 = load i32, ptr %1517, align 8, !tbaa !121
  %1519 = or i32 %1518, 16
  store i32 %1519, ptr %1517, align 8, !tbaa !121
  %1520 = load ptr, ptr %1516, align 8, !tbaa !34
  %1521 = icmp eq ptr %1520, null
  br i1 %1521, label %1522, label %1515, !llvm.loop !303

1522:                                             ; preds = %1515, %1511
  %1523 = getelementptr inbounds %struct.Main, ptr %2, i64 0, i32 26
  %1524 = load ptr, ptr %1523, align 8, !tbaa !34
  %1525 = icmp eq ptr %1524, null
  br i1 %1525, label %1563, label %1529

1526:                                             ; preds = %1534, %1529
  %1527 = load ptr, ptr %1530, align 8, !tbaa !34
  %1528 = icmp eq ptr %1527, null
  br i1 %1528, label %1563, label %1529, !llvm.loop !304

1529:                                             ; preds = %1522, %1526
  %1530 = phi ptr [ %1527, %1526 ], [ %1524, %1522 ]
  %1531 = getelementptr inbounds %struct.bScreen, ptr %1530, i64 0, i32 3
  %1532 = load ptr, ptr %1531, align 8, !tbaa !34
  %1533 = icmp eq ptr %1532, null
  br i1 %1533, label %1526, label %1537

1534:                                             ; preds = %1560, %1537
  %1535 = load ptr, ptr %1538, align 8, !tbaa !34
  %1536 = icmp eq ptr %1535, null
  br i1 %1536, label %1526, label %1537, !llvm.loop !305

1537:                                             ; preds = %1529, %1534
  %1538 = phi ptr [ %1535, %1534 ], [ %1532, %1529 ]
  %1539 = getelementptr inbounds %struct.ScrArea, ptr %1538, i64 0, i32 19
  %1540 = load ptr, ptr %1539, align 8, !tbaa !34
  %1541 = icmp eq ptr %1540, null
  br i1 %1541, label %1534, label %1542

1542:                                             ; preds = %1537, %1560
  %1543 = phi ptr [ %1561, %1560 ], [ %1540, %1537 ]
  %1544 = getelementptr inbounds %struct.SpaceLink, ptr %1543, i64 0, i32 3
  %1545 = load i32, ptr %1544, align 8, !tbaa !127
  %1546 = icmp eq i32 %1545, 4
  br i1 %1546, label %1547, label %1560

1547:                                             ; preds = %1542
  %1548 = getelementptr inbounds %struct.SpaceButs, ptr %1543, i64 0, i32 6, i32 8
  store float 0x3FF3333340000000, ptr %1548, align 4, !tbaa !306
  %1549 = getelementptr inbounds %struct.SpaceButs, ptr %1543, i64 0, i32 11
  store i16 1, ptr %1549, align 8, !tbaa !308
  %1550 = getelementptr inbounds %struct.SpaceButs, ptr %1543, i64 0, i32 7
  %1551 = load i16, ptr %1550, align 8, !tbaa !309
  %1552 = add i16 %1551, -1
  %1553 = icmp ult i16 %1552, 13
  br i1 %1553, label %1554, label %1558

1554:                                             ; preds = %1547
  %1555 = zext nneg i16 %1552 to i64
  %1556 = getelementptr inbounds [13 x i16], ptr @switch.table.blo_do_versions_pre250, i64 0, i64 %1555
  %1557 = load i16, ptr %1556, align 2
  br label %1558

1558:                                             ; preds = %1547, %1554
  %1559 = phi i16 [ %1557, %1554 ], [ 0, %1547 ]
  store i16 %1559, ptr %1550, align 8, !tbaa !309
  br label %1560

1560:                                             ; preds = %1558, %1542
  %1561 = load ptr, ptr %1543, align 8, !tbaa !34
  %1562 = icmp eq ptr %1561, null
  br i1 %1562, label %1534, label %1542, !llvm.loop !310

1563:                                             ; preds = %1526, %1522, %1437
  %1564 = icmp slt i16 %1438, 231
  br i1 %1564, label %1565, label %1600

1565:                                             ; preds = %1563
  %1566 = getelementptr inbounds %struct.Main, ptr %2, i64 0, i32 26
  %1567 = load ptr, ptr %1566, align 8, !tbaa !34
  %1568 = icmp eq ptr %1567, null
  br i1 %1568, label %1600, label %1572

1569:                                             ; preds = %1577, %1572
  %1570 = load ptr, ptr %1573, align 8, !tbaa !34
  %1571 = icmp eq ptr %1570, null
  br i1 %1571, label %1600, label %1572, !llvm.loop !311

1572:                                             ; preds = %1565, %1569
  %1573 = phi ptr [ %1570, %1569 ], [ %1567, %1565 ]
  %1574 = getelementptr inbounds %struct.bScreen, ptr %1573, i64 0, i32 3
  %1575 = load ptr, ptr %1574, align 8, !tbaa !34
  %1576 = icmp eq ptr %1575, null
  br i1 %1576, label %1569, label %1580

1577:                                             ; preds = %1597, %1580
  %1578 = load ptr, ptr %1581, align 8, !tbaa !34
  %1579 = icmp eq ptr %1578, null
  br i1 %1579, label %1569, label %1580, !llvm.loop !312

1580:                                             ; preds = %1572, %1577
  %1581 = phi ptr [ %1578, %1577 ], [ %1575, %1572 ]
  %1582 = getelementptr inbounds %struct.ScrArea, ptr %1581, i64 0, i32 19
  %1583 = load ptr, ptr %1582, align 8, !tbaa !34
  %1584 = icmp eq ptr %1583, null
  br i1 %1584, label %1577, label %1585

1585:                                             ; preds = %1580, %1597
  %1586 = phi ptr [ %1598, %1597 ], [ %1583, %1580 ]
  %1587 = getelementptr inbounds %struct.SpaceLink, ptr %1586, i64 0, i32 4
  %1588 = load float, ptr %1587, align 4, !tbaa !313
  %1589 = fcmp oeq float %1588, 0.000000e+00
  br i1 %1589, label %1590, label %1591

1590:                                             ; preds = %1585
  store float 0x3FE6666660000000, ptr %1587, align 4, !tbaa !313
  br label %1591

1591:                                             ; preds = %1590, %1585
  %1592 = getelementptr inbounds %struct.SpaceLink, ptr %1586, i64 0, i32 3
  %1593 = load i32, ptr %1592, align 8, !tbaa !127
  %1594 = icmp eq i32 %1593, 12
  br i1 %1594, label %1595, label %1597

1595:                                             ; preds = %1591
  %1596 = getelementptr inbounds %struct.SpaceAction, ptr %1586, i64 0, i32 6, i32 8
  store float 5.000000e+01, ptr %1596, align 4, !tbaa !314
  br label %1597

1597:                                             ; preds = %1591, %1595
  %1598 = load ptr, ptr %1586, align 8, !tbaa !34
  %1599 = icmp eq ptr %1598, null
  br i1 %1599, label %1577, label %1585, !llvm.loop !317

1600:                                             ; preds = %1569, %1565, %1563
  %1601 = icmp slt i16 %1438, 232
  br i1 %1601, label %1602, label %1764

1602:                                             ; preds = %1600
  %1603 = getelementptr inbounds %struct.Main, ptr %2, i64 0, i32 26
  %1604 = load ptr, ptr %1603, align 8, !tbaa !34
  %1605 = icmp eq ptr %1604, null
  br i1 %1605, label %1635, label %1609

1606:                                             ; preds = %1614, %1609
  %1607 = load ptr, ptr %1610, align 8, !tbaa !34
  %1608 = icmp eq ptr %1607, null
  br i1 %1608, label %1635, label %1609, !llvm.loop !318

1609:                                             ; preds = %1602, %1606
  %1610 = phi ptr [ %1607, %1606 ], [ %1604, %1602 ]
  %1611 = getelementptr inbounds %struct.bScreen, ptr %1610, i64 0, i32 3
  %1612 = load ptr, ptr %1611, align 8, !tbaa !34
  %1613 = icmp eq ptr %1612, null
  br i1 %1613, label %1606, label %1617

1614:                                             ; preds = %1632, %1617
  %1615 = load ptr, ptr %1618, align 8, !tbaa !34
  %1616 = icmp eq ptr %1615, null
  br i1 %1616, label %1606, label %1617, !llvm.loop !319

1617:                                             ; preds = %1609, %1614
  %1618 = phi ptr [ %1615, %1614 ], [ %1612, %1609 ]
  %1619 = getelementptr inbounds %struct.ScrArea, ptr %1618, i64 0, i32 19
  %1620 = load ptr, ptr %1619, align 8, !tbaa !34
  %1621 = icmp eq ptr %1620, null
  br i1 %1621, label %1614, label %1622

1622:                                             ; preds = %1617, %1632
  %1623 = phi ptr [ %1633, %1632 ], [ %1620, %1617 ]
  %1624 = getelementptr inbounds %struct.SpaceLink, ptr %1623, i64 0, i32 3
  %1625 = load i32, ptr %1624, align 8, !tbaa !127
  %1626 = icmp eq i32 %1625, 1
  br i1 %1626, label %1627, label %1632

1627:                                             ; preds = %1622
  %1628 = getelementptr inbounds %struct.View3D, ptr %1623, i64 0, i32 39
  %1629 = load i8, ptr %1628, align 2, !tbaa !320
  %1630 = icmp eq i8 %1629, 0
  br i1 %1630, label %1631, label %1632

1631:                                             ; preds = %1627
  store i8 7, ptr %1628, align 2, !tbaa !320
  br label %1632

1632:                                             ; preds = %1627, %1631, %1622
  %1633 = load ptr, ptr %1623, align 8, !tbaa !34
  %1634 = icmp eq ptr %1633, null
  br i1 %1634, label %1614, label %1622, !llvm.loop !321

1635:                                             ; preds = %1606, %1602
  br i1 %1601, label %1636, label %1764

1636:                                             ; preds = %1635
  %1637 = getelementptr inbounds %struct.Main, ptr %2, i64 0, i32 17
  %1638 = getelementptr inbounds %struct.Main, ptr %2, i64 0, i32 26
  %1639 = load ptr, ptr %1638, align 8, !tbaa !322
  %1640 = load ptr, ptr %1637, align 8, !tbaa !34
  %1641 = icmp eq ptr %1640, null
  br i1 %1641, label %1661, label %1642

1642:                                             ; preds = %1636, %1653
  %1643 = phi ptr [ %1659, %1653 ], [ %1640, %1636 ]
  %1644 = getelementptr inbounds %struct.Material, ptr %1643, i64 0, i32 32
  %1645 = load float, ptr %1644, align 4, !tbaa !323
  %1646 = fcmp oeq float %1645, 0.000000e+00
  br i1 %1646, label %1647, label %1648

1647:                                             ; preds = %1642
  store float 1.250000e+00, ptr %1644, align 4, !tbaa !323
  br label %1648

1648:                                             ; preds = %1647, %1642
  %1649 = getelementptr inbounds %struct.Material, ptr %1643, i64 0, i32 30
  %1650 = load float, ptr %1649, align 4, !tbaa !324
  %1651 = fcmp oeq float %1650, 0.000000e+00
  br i1 %1651, label %1652, label %1653

1652:                                             ; preds = %1648
  store float 1.250000e+00, ptr %1649, align 4, !tbaa !324
  br label %1653

1653:                                             ; preds = %1652, %1648
  %1654 = getelementptr inbounds %struct.Material, ptr %1643, i64 0, i32 18
  store float 1.000000e+00, ptr %1654, align 4, !tbaa !325
  %1655 = getelementptr inbounds %struct.Material, ptr %1643, i64 0, i32 36
  store i16 2, ptr %1655, align 4, !tbaa !326
  %1656 = getelementptr inbounds %struct.Material, ptr %1643, i64 0, i32 37
  store i16 2, ptr %1656, align 2, !tbaa !327
  %1657 = getelementptr inbounds %struct.Material, ptr %1643, i64 0, i32 31
  store float 0.000000e+00, ptr %1657, align 8, !tbaa !328
  %1658 = getelementptr inbounds %struct.Material, ptr %1643, i64 0, i32 29
  store float 0.000000e+00, ptr %1658, align 8, !tbaa !329
  %1659 = load ptr, ptr %1643, align 8, !tbaa !34
  %1660 = icmp eq ptr %1659, null
  br i1 %1660, label %1661, label %1642, !llvm.loop !330

1661:                                             ; preds = %1653, %1636
  %1662 = getelementptr inbounds %struct.Main, ptr %2, i64 0, i32 11
  %1663 = load ptr, ptr %1662, align 8, !tbaa !34
  %1664 = icmp eq ptr %1663, null
  br i1 %1664, label %1674, label %1665

1665:                                             ; preds = %1661, %1671
  %1666 = phi ptr [ %1672, %1671 ], [ %1663, %1661 ]
  %1667 = getelementptr inbounds %struct.Scene, ptr %1666, i64 0, i32 22, i32 66
  %1668 = load float, ptr %1667, align 8, !tbaa !331
  %1669 = fcmp oeq float %1668, 0.000000e+00
  br i1 %1669, label %1670, label %1671

1670:                                             ; preds = %1665
  store float 1.000000e+00, ptr %1667, align 8, !tbaa !331
  br label %1671

1671:                                             ; preds = %1670, %1665
  %1672 = load ptr, ptr %1666, align 8, !tbaa !34
  %1673 = icmp eq ptr %1672, null
  br i1 %1673, label %1674, label %1665, !llvm.loop !332

1674:                                             ; preds = %1671, %1661
  %1675 = getelementptr inbounds %struct.Main, ptr %2, i64 0, i32 21
  %1676 = load ptr, ptr %1675, align 8, !tbaa !34
  %1677 = icmp eq ptr %1676, null
  br i1 %1677, label %1717, label %1678

1678:                                             ; preds = %1674, %1714
  %1679 = phi ptr [ %1715, %1714 ], [ %1676, %1674 ]
  %1680 = getelementptr inbounds %struct.Lamp, ptr %1679, i64 0, i32 10
  %1681 = load float, ptr %1680, align 8, !tbaa !333
  %1682 = fcmp oeq float %1681, 0.000000e+00
  br i1 %1682, label %1683, label %1684

1683:                                             ; preds = %1678
  store float 1.000000e+00, ptr %1680, align 8, !tbaa !333
  br label %1684

1684:                                             ; preds = %1683, %1678
  %1685 = getelementptr inbounds %struct.Lamp, ptr %1679, i64 0, i32 38
  %1686 = load i16, ptr %1685, align 2, !tbaa !335
  %1687 = icmp eq i16 %1686, 0
  br i1 %1687, label %1688, label %1689

1688:                                             ; preds = %1684
  store i16 1, ptr %1685, align 2, !tbaa !335
  br label %1689

1689:                                             ; preds = %1688, %1684
  %1690 = getelementptr inbounds %struct.Lamp, ptr %1679, i64 0, i32 39
  %1691 = load i16, ptr %1690, align 4, !tbaa !336
  %1692 = icmp eq i16 %1691, 0
  br i1 %1692, label %1693, label %1694

1693:                                             ; preds = %1689
  store i16 1, ptr %1690, align 4, !tbaa !336
  br label %1694

1694:                                             ; preds = %1693, %1689
  %1695 = getelementptr inbounds %struct.Lamp, ptr %1679, i64 0, i32 40
  %1696 = load i16, ptr %1695, align 2, !tbaa !337
  %1697 = icmp eq i16 %1696, 0
  br i1 %1697, label %1698, label %1699

1698:                                             ; preds = %1694
  store i16 1, ptr %1695, align 2, !tbaa !337
  br label %1699

1699:                                             ; preds = %1698, %1694
  %1700 = getelementptr inbounds %struct.Lamp, ptr %1679, i64 0, i32 43
  %1701 = load float, ptr %1700, align 4, !tbaa !338
  %1702 = fcmp oeq float %1701, 0.000000e+00
  br i1 %1702, label %1703, label %1704

1703:                                             ; preds = %1699
  store float 1.000000e+00, ptr %1700, align 4, !tbaa !338
  br label %1704

1704:                                             ; preds = %1703, %1699
  %1705 = getelementptr inbounds %struct.Lamp, ptr %1679, i64 0, i32 44
  %1706 = load float, ptr %1705, align 8, !tbaa !339
  %1707 = fcmp oeq float %1706, 0.000000e+00
  br i1 %1707, label %1708, label %1709

1708:                                             ; preds = %1704
  store float 1.000000e+00, ptr %1705, align 8, !tbaa !339
  br label %1709

1709:                                             ; preds = %1708, %1704
  %1710 = getelementptr inbounds %struct.Lamp, ptr %1679, i64 0, i32 45
  %1711 = load float, ptr %1710, align 4, !tbaa !340
  %1712 = fcmp oeq float %1711, 0.000000e+00
  br i1 %1712, label %1713, label %1714

1713:                                             ; preds = %1709
  store float 1.000000e+00, ptr %1710, align 4, !tbaa !340
  br label %1714

1714:                                             ; preds = %1713, %1709
  %1715 = load ptr, ptr %1679, align 8, !tbaa !34
  %1716 = icmp eq ptr %1715, null
  br i1 %1716, label %1717, label %1678, !llvm.loop !341

1717:                                             ; preds = %1714, %1674
  %1718 = getelementptr inbounds %struct.Main, ptr %2, i64 0, i32 25
  %1719 = load ptr, ptr %1718, align 8, !tbaa !34
  %1720 = icmp eq ptr %1719, null
  br i1 %1720, label %1721, label %1723

1721:                                             ; preds = %1732, %1717
  %1722 = icmp eq ptr %1639, null
  br i1 %1722, label %1764, label %1735

1723:                                             ; preds = %1717, %1732
  %1724 = phi ptr [ %1733, %1732 ], [ %1719, %1717 ]
  %1725 = getelementptr inbounds %struct.World, ptr %1724, i64 0, i32 17
  %1726 = load float, ptr %1725, align 4, !tbaa !342
  %1727 = fcmp oeq float %1726, 0.000000e+00
  br i1 %1727, label %1728, label %1732

1728:                                             ; preds = %1723
  %1729 = getelementptr inbounds %struct.World, ptr %1724, i64 0, i32 15
  %1730 = load float, ptr %1729, align 4, !tbaa !343
  %1731 = fdiv float 1.000000e+00, %1730
  store float %1731, ptr %1725, align 4, !tbaa !342
  br label %1732

1732:                                             ; preds = %1728, %1723
  %1733 = load ptr, ptr %1724, align 8, !tbaa !34
  %1734 = icmp eq ptr %1733, null
  br i1 %1734, label %1721, label %1723, !llvm.loop !344

1735:                                             ; preds = %1721, %1761
  %1736 = phi ptr [ %1762, %1761 ], [ %1639, %1721 ]
  %1737 = getelementptr inbounds %struct.bScreen, ptr %1736, i64 0, i32 3
  %1738 = load ptr, ptr %1737, align 8, !tbaa !34
  %1739 = icmp eq ptr %1738, null
  br i1 %1739, label %1761, label %1743

1740:                                             ; preds = %1758, %1743
  %1741 = load ptr, ptr %1744, align 8, !tbaa !34
  %1742 = icmp eq ptr %1741, null
  br i1 %1742, label %1761, label %1743, !llvm.loop !345

1743:                                             ; preds = %1735, %1740
  %1744 = phi ptr [ %1741, %1740 ], [ %1738, %1735 ]
  %1745 = getelementptr inbounds %struct.ScrArea, ptr %1744, i64 0, i32 19
  %1746 = load ptr, ptr %1745, align 8, !tbaa !34
  %1747 = icmp eq ptr %1746, null
  br i1 %1747, label %1740, label %1748

1748:                                             ; preds = %1743, %1758
  %1749 = phi ptr [ %1759, %1758 ], [ %1746, %1743 ]
  %1750 = getelementptr inbounds %struct.SpaceLink, ptr %1749, i64 0, i32 3
  %1751 = load i32, ptr %1750, align 8, !tbaa !127
  %1752 = icmp eq i32 %1751, 1
  br i1 %1752, label %1753, label %1758

1753:                                             ; preds = %1748
  %1754 = getelementptr inbounds %struct.View3D, ptr %1749, i64 0, i32 39
  %1755 = load i8, ptr %1754, align 2, !tbaa !320
  %1756 = icmp eq i8 %1755, 0
  br i1 %1756, label %1757, label %1758

1757:                                             ; preds = %1753
  store i8 7, ptr %1754, align 2, !tbaa !320
  br label %1758

1758:                                             ; preds = %1753, %1757, %1748
  %1759 = load ptr, ptr %1749, align 8, !tbaa !34
  %1760 = icmp eq ptr %1759, null
  br i1 %1760, label %1740, label %1748, !llvm.loop !346

1761:                                             ; preds = %1740, %1735
  %1762 = load ptr, ptr %1736, align 8, !tbaa !347
  %1763 = icmp eq ptr %1762, null
  br i1 %1763, label %1764, label %1735, !llvm.loop !349

1764:                                             ; preds = %1761, %1721, %1600, %1635
  %1765 = icmp slt i16 %1438, 233
  br i1 %1765, label %1766, label %1866

1766:                                             ; preds = %1764
  %1767 = getelementptr inbounds %struct.Main, ptr %2, i64 0, i32 18
  %1768 = getelementptr inbounds %struct.Main, ptr %2, i64 0, i32 25
  %1769 = load ptr, ptr %1768, align 8, !tbaa !350
  %1770 = load ptr, ptr %1767, align 8, !tbaa !34
  %1771 = icmp eq ptr %1770, null
  br i1 %1771, label %1772, label %1774

1772:                                             ; preds = %1795, %1766
  %1773 = icmp eq ptr %1769, null
  br i1 %1773, label %1818, label %1798

1774:                                             ; preds = %1766, %1795
  %1775 = phi ptr [ %1796, %1795 ], [ %1770, %1766 ]
  %1776 = getelementptr inbounds %struct.Tex, ptr %1775, i64 0, i32 31
  %1777 = load i16, ptr %1776, align 2, !tbaa !351
  %1778 = and i16 %1777, 24
  %1779 = icmp eq i16 %1778, 0
  br i1 %1779, label %1780, label %1782

1780:                                             ; preds = %1774
  %1781 = or disjoint i16 %1777, 8
  store i16 %1781, ptr %1776, align 2, !tbaa !351
  br label %1782

1782:                                             ; preds = %1780, %1774
  %1783 = getelementptr inbounds %struct.Tex, ptr %1775, i64 0, i32 18
  %1784 = load float, ptr %1783, align 8, !tbaa !352
  %1785 = fcmp oeq float %1784, 0.000000e+00
  br i1 %1785, label %1786, label %1795

1786:                                             ; preds = %1782
  %1787 = getelementptr inbounds %struct.Tex, ptr %1775, i64 0, i32 12
  store float 1.000000e+00, ptr %1787, align 8, !tbaa !353
  %1788 = getelementptr inbounds %struct.Tex, ptr %1775, i64 0, i32 13
  store float 2.000000e+00, ptr %1788, align 4, !tbaa !354
  %1789 = getelementptr inbounds %struct.Tex, ptr %1775, i64 0, i32 14
  store float 2.000000e+00, ptr %1789, align 8, !tbaa !355
  %1790 = getelementptr inbounds %struct.Tex, ptr %1775, i64 0, i32 15
  store float 1.000000e+00, ptr %1790, align 4, !tbaa !356
  %1791 = getelementptr inbounds %struct.Tex, ptr %1775, i64 0, i32 16
  store float 1.000000e+00, ptr %1791, align 8, !tbaa !357
  store float 1.000000e+00, ptr %1783, align 8, !tbaa !352
  %1792 = getelementptr inbounds %struct.Tex, ptr %1775, i64 0, i32 17
  store float 1.000000e+00, ptr %1792, align 4, !tbaa !358
  %1793 = getelementptr inbounds %struct.Tex, ptr %1775, i64 0, i32 19
  store float 1.000000e+00, ptr %1793, align 4, !tbaa !359
  %1794 = getelementptr inbounds %struct.Tex, ptr %1775, i64 0, i32 23
  store float 2.500000e+00, ptr %1794, align 4, !tbaa !360
  br label %1795

1795:                                             ; preds = %1786, %1782
  %1796 = load ptr, ptr %1775, align 8, !tbaa !34
  %1797 = icmp eq ptr %1796, null
  br i1 %1797, label %1772, label %1774, !llvm.loop !361

1798:                                             ; preds = %1772, %1815
  %1799 = phi ptr [ %1816, %1815 ], [ %1769, %1772 ]
  %1800 = getelementptr inbounds %struct.World, ptr %1799, i64 0, i32 46
  %1801 = load float, ptr %1800, align 8, !tbaa !362
  %1802 = fcmp oeq float %1801, 0.000000e+00
  br i1 %1802, label %1803, label %1805

1803:                                             ; preds = %1798
  store float 1.000000e+01, ptr %1800, align 8, !tbaa !362
  %1804 = getelementptr inbounds %struct.World, ptr %1799, i64 0, i32 49
  store float 0x3FA99999A0000000, ptr %1804, align 4, !tbaa !363
  br label %1805

1805:                                             ; preds = %1803, %1798
  %1806 = getelementptr inbounds %struct.World, ptr %1799, i64 0, i32 51
  %1807 = load i16, ptr %1806, align 2, !tbaa !364
  %1808 = icmp eq i16 %1807, 0
  br i1 %1808, label %1809, label %1810

1809:                                             ; preds = %1805
  store i16 5, ptr %1806, align 2, !tbaa !364
  br label %1810

1810:                                             ; preds = %1809, %1805
  %1811 = getelementptr inbounds %struct.World, ptr %1799, i64 0, i32 48
  %1812 = load float, ptr %1811, align 8, !tbaa !365
  %1813 = fcmp oeq float %1812, 0.000000e+00
  br i1 %1813, label %1814, label %1815

1814:                                             ; preds = %1810
  store float 1.000000e+00, ptr %1811, align 8, !tbaa !365
  br label %1815

1815:                                             ; preds = %1814, %1810
  %1816 = load ptr, ptr %1799, align 8, !tbaa !366
  %1817 = icmp eq ptr %1816, null
  br i1 %1817, label %1818, label %1798, !llvm.loop !367

1818:                                             ; preds = %1815, %1772
  %1819 = getelementptr inbounds %struct.Main, ptr %2, i64 0, i32 26
  %1820 = load ptr, ptr %1819, align 8, !tbaa !34
  %1821 = icmp eq ptr %1820, null
  br i1 %1821, label %1853, label %1825

1822:                                             ; preds = %1830, %1825
  %1823 = load ptr, ptr %1826, align 8, !tbaa !34
  %1824 = icmp eq ptr %1823, null
  br i1 %1824, label %1853, label %1825, !llvm.loop !368

1825:                                             ; preds = %1818, %1822
  %1826 = phi ptr [ %1823, %1822 ], [ %1820, %1818 ]
  %1827 = getelementptr inbounds %struct.bScreen, ptr %1826, i64 0, i32 3
  %1828 = load ptr, ptr %1827, align 8, !tbaa !34
  %1829 = icmp eq ptr %1828, null
  br i1 %1829, label %1822, label %1833

1830:                                             ; preds = %1850, %1833
  %1831 = load ptr, ptr %1834, align 8, !tbaa !34
  %1832 = icmp eq ptr %1831, null
  br i1 %1832, label %1822, label %1833, !llvm.loop !369

1833:                                             ; preds = %1825, %1830
  %1834 = phi ptr [ %1831, %1830 ], [ %1828, %1825 ]
  %1835 = getelementptr inbounds %struct.ScrArea, ptr %1834, i64 0, i32 19
  %1836 = load ptr, ptr %1835, align 8, !tbaa !34
  %1837 = icmp eq ptr %1836, null
  br i1 %1837, label %1830, label %1838

1838:                                             ; preds = %1833, %1850
  %1839 = phi ptr [ %1851, %1850 ], [ %1836, %1833 ]
  %1840 = getelementptr inbounds %struct.SpaceLink, ptr %1839, i64 0, i32 4
  %1841 = load float, ptr %1840, align 4, !tbaa !313
  %1842 = fcmp oeq float %1841, 0.000000e+00
  br i1 %1842, label %1843, label %1844

1843:                                             ; preds = %1838
  store float 0x3FE6666660000000, ptr %1840, align 4, !tbaa !313
  br label %1844

1844:                                             ; preds = %1843, %1838
  %1845 = getelementptr inbounds %struct.SpaceLink, ptr %1839, i64 0, i32 3
  %1846 = load i32, ptr %1845, align 8, !tbaa !127
  %1847 = icmp eq i32 %1846, 13
  br i1 %1847, label %1848, label %1850

1848:                                             ; preds = %1844
  %1849 = getelementptr inbounds %struct.SpaceNla, ptr %1839, i64 0, i32 10, i32 8
  store float 5.000000e+01, ptr %1849, align 4, !tbaa !370
  br label %1850

1850:                                             ; preds = %1844, %1848
  %1851 = load ptr, ptr %1839, align 8, !tbaa !34
  %1852 = icmp eq ptr %1851, null
  br i1 %1852, label %1830, label %1838, !llvm.loop !372

1853:                                             ; preds = %1822, %1818
  %1854 = getelementptr inbounds %struct.Main, ptr %2, i64 0, i32 11
  %1855 = load ptr, ptr %1854, align 8, !tbaa !34
  %1856 = icmp eq ptr %1855, null
  br i1 %1856, label %1866, label %1857

1857:                                             ; preds = %1853, %1863
  %1858 = phi ptr [ %1864, %1863 ], [ %1855, %1853 ]
  %1859 = getelementptr inbounds %struct.Scene, ptr %1858, i64 0, i32 22, i32 51
  %1860 = load i16, ptr %1859, align 4, !tbaa !373
  %1861 = icmp eq i16 %1860, 0
  br i1 %1861, label %1862, label %1863

1862:                                             ; preds = %1857
  store i16 64, ptr %1859, align 4, !tbaa !373
  br label %1863

1863:                                             ; preds = %1862, %1857
  %1864 = load ptr, ptr %1858, align 8, !tbaa !34
  %1865 = icmp eq ptr %1864, null
  br i1 %1865, label %1866, label %1857, !llvm.loop !374

1866:                                             ; preds = %1863, %1853, %1764
  %1867 = icmp slt i16 %1438, 234
  br i1 %1867, label %1868, label %1923

1868:                                             ; preds = %1866
  %1869 = getelementptr inbounds %struct.Main, ptr %2, i64 0, i32 17
  %1870 = load ptr, ptr %1869, align 8, !tbaa !34
  %1871 = icmp eq ptr %1870, null
  br i1 %1871, label %1891, label %1872

1872:                                             ; preds = %1868, %1888
  %1873 = phi ptr [ %1889, %1888 ], [ %1870, %1868 ]
  %1874 = getelementptr inbounds %struct.Material, ptr %1873, i64 0, i32 100
  %1875 = load float, ptr %1874, align 8, !tbaa !375
  %1876 = fcmp oeq float %1875, 0.000000e+00
  br i1 %1876, label %1877, label %1878

1877:                                             ; preds = %1872
  store float 1.000000e+00, ptr %1874, align 8, !tbaa !375
  br label %1878

1878:                                             ; preds = %1877, %1872
  %1879 = getelementptr inbounds %struct.Material, ptr %1873, i64 0, i32 101
  %1880 = load float, ptr %1879, align 4, !tbaa !376
  %1881 = fcmp oeq float %1880, 0.000000e+00
  br i1 %1881, label %1882, label %1883

1882:                                             ; preds = %1878
  store float 1.000000e+00, ptr %1879, align 4, !tbaa !376
  br label %1883

1883:                                             ; preds = %1882, %1878
  %1884 = getelementptr inbounds %struct.Material, ptr %1873, i64 0, i32 78
  %1885 = load i16, ptr %1884, align 8, !tbaa !377
  %1886 = icmp eq i16 %1885, 0
  br i1 %1886, label %1887, label %1888

1887:                                             ; preds = %1883
  store i16 3, ptr %1884, align 8, !tbaa !377
  br label %1888

1888:                                             ; preds = %1887, %1883
  %1889 = load ptr, ptr %1873, align 8, !tbaa !34
  %1890 = icmp eq ptr %1889, null
  br i1 %1890, label %1891, label %1872, !llvm.loop !378

1891:                                             ; preds = %1888, %1868
  %1892 = getelementptr inbounds %struct.Main, ptr %2, i64 0, i32 26
  %1893 = load ptr, ptr %1892, align 8, !tbaa !34
  %1894 = icmp eq ptr %1893, null
  br i1 %1894, label %1923, label %1898

1895:                                             ; preds = %1903, %1898
  %1896 = load ptr, ptr %1899, align 8, !tbaa !34
  %1897 = icmp eq ptr %1896, null
  br i1 %1897, label %1923, label %1898, !llvm.loop !379

1898:                                             ; preds = %1891, %1895
  %1899 = phi ptr [ %1896, %1895 ], [ %1893, %1891 ]
  %1900 = getelementptr inbounds %struct.bScreen, ptr %1899, i64 0, i32 3
  %1901 = load ptr, ptr %1900, align 8, !tbaa !34
  %1902 = icmp eq ptr %1901, null
  br i1 %1902, label %1895, label %1906

1903:                                             ; preds = %1920, %1906
  %1904 = load ptr, ptr %1907, align 8, !tbaa !34
  %1905 = icmp eq ptr %1904, null
  br i1 %1905, label %1895, label %1906, !llvm.loop !380

1906:                                             ; preds = %1898, %1903
  %1907 = phi ptr [ %1904, %1903 ], [ %1901, %1898 ]
  %1908 = getelementptr inbounds %struct.ScrArea, ptr %1907, i64 0, i32 19
  %1909 = load ptr, ptr %1908, align 8, !tbaa !34
  %1910 = icmp eq ptr %1909, null
  br i1 %1910, label %1903, label %1911

1911:                                             ; preds = %1906, %1920
  %1912 = phi ptr [ %1921, %1920 ], [ %1909, %1906 ]
  %1913 = getelementptr inbounds %struct.SpaceLink, ptr %1912, i64 0, i32 3
  %1914 = load i32, ptr %1913, align 8, !tbaa !127
  %1915 = icmp eq i32 %1914, 1
  br i1 %1915, label %1916, label %1920

1916:                                             ; preds = %1911
  %1917 = getelementptr inbounds %struct.View3D, ptr %1912, i64 0, i32 28
  %1918 = load i16, ptr %1917, align 8, !tbaa !381
  %1919 = or i16 %1918, 2048
  store i16 %1919, ptr %1917, align 8, !tbaa !381
  br label %1920

1920:                                             ; preds = %1911, %1916
  %1921 = load ptr, ptr %1912, align 8, !tbaa !34
  %1922 = icmp eq ptr %1921, null
  br i1 %1922, label %1903, label %1911, !llvm.loop !382

1923:                                             ; preds = %1895, %1891, %1866
  %1924 = icmp slt i16 %1438, 235
  br i1 %1924, label %1925, label %1974

1925:                                             ; preds = %1923
  %1926 = getelementptr inbounds %struct.Main, ptr %2, i64 0, i32 25
  %1927 = load ptr, ptr %1926, align 8, !tbaa !34
  %1928 = icmp eq ptr %1927, null
  br i1 %1928, label %1938, label %1929

1929:                                             ; preds = %1925, %1935
  %1930 = phi ptr [ %1936, %1935 ], [ %1927, %1925 ]
  %1931 = getelementptr inbounds %struct.World, ptr %1930, i64 0, i32 25
  %1932 = load i16, ptr %1931, align 2, !tbaa !280
  %1933 = icmp eq i16 %1932, 0
  br i1 %1933, label %1934, label %1935

1934:                                             ; preds = %1929
  store i16 2, ptr %1931, align 2, !tbaa !280
  br label %1935

1935:                                             ; preds = %1929, %1934
  %1936 = load ptr, ptr %1930, align 8, !tbaa !34
  %1937 = icmp eq ptr %1936, null
  br i1 %1937, label %1938, label %1929, !llvm.loop !383

1938:                                             ; preds = %1935, %1925
  %1939 = getelementptr inbounds %struct.Main, ptr %2, i64 0, i32 26
  %1940 = load ptr, ptr %1939, align 8, !tbaa !34
  %1941 = icmp eq ptr %1940, null
  br i1 %1941, label %1974, label %1945

1942:                                             ; preds = %1950, %1945
  %1943 = load ptr, ptr %1946, align 8, !tbaa !34
  %1944 = icmp eq ptr %1943, null
  br i1 %1944, label %1974, label %1945, !llvm.loop !384

1945:                                             ; preds = %1938, %1942
  %1946 = phi ptr [ %1943, %1942 ], [ %1940, %1938 ]
  %1947 = getelementptr inbounds %struct.bScreen, ptr %1946, i64 0, i32 3
  %1948 = load ptr, ptr %1947, align 8, !tbaa !34
  %1949 = icmp eq ptr %1948, null
  br i1 %1949, label %1942, label %1953

1950:                                             ; preds = %1971, %1953
  %1951 = load ptr, ptr %1954, align 8, !tbaa !34
  %1952 = icmp eq ptr %1951, null
  br i1 %1952, label %1942, label %1953, !llvm.loop !385

1953:                                             ; preds = %1945, %1950
  %1954 = phi ptr [ %1951, %1950 ], [ %1948, %1945 ]
  %1955 = getelementptr inbounds %struct.ScrArea, ptr %1954, i64 0, i32 19
  %1956 = load ptr, ptr %1955, align 8, !tbaa !34
  %1957 = icmp eq ptr %1956, null
  br i1 %1957, label %1950, label %1958

1958:                                             ; preds = %1953, %1971
  %1959 = phi ptr [ %1972, %1971 ], [ %1956, %1953 ]
  %1960 = getelementptr inbounds %struct.SpaceLink, ptr %1959, i64 0, i32 3
  %1961 = load i32, ptr %1960, align 8, !tbaa !127
  switch i32 %1961, label %1971 [
    i32 1, label %1962
    i32 9, label %1966
  ]

1962:                                             ; preds = %1958
  %1963 = getelementptr inbounds %struct.View3D, ptr %1959, i64 0, i32 28
  %1964 = load i16, ptr %1963, align 8, !tbaa !381
  %1965 = or i16 %1964, 4096
  store i16 %1965, ptr %1963, align 8, !tbaa !381
  br label %1971

1966:                                             ; preds = %1958
  %1967 = getelementptr inbounds %struct.SpaceText, ptr %1959, i64 0, i32 16
  %1968 = load i32, ptr %1967, align 8, !tbaa !386
  %1969 = icmp eq i32 %1968, 0
  br i1 %1969, label %1970, label %1971

1970:                                             ; preds = %1966
  store i32 2, ptr %1967, align 8, !tbaa !386
  br label %1971

1971:                                             ; preds = %1966, %1970, %1958, %1962
  %1972 = load ptr, ptr %1959, align 8, !tbaa !34
  %1973 = icmp eq ptr %1972, null
  br i1 %1973, label %1950, label %1958, !llvm.loop !387

1974:                                             ; preds = %1942, %1938, %1923
  %1975 = icmp slt i16 %1438, 236
  br i1 %1975, label %1976, label %2017

1976:                                             ; preds = %1974
  %1977 = getelementptr inbounds %struct.Main, ptr %2, i64 0, i32 18
  %1978 = getelementptr inbounds %struct.Main, ptr %2, i64 0, i32 11
  %1979 = load ptr, ptr %1978, align 8, !tbaa !388
  %1980 = load ptr, ptr %1977, align 8, !tbaa !34
  %1981 = icmp eq ptr %1980, null
  br i1 %1981, label %1982, label %1987

1982:                                             ; preds = %1993, %1976
  %1983 = icmp eq ptr %1979, null
  br i1 %1983, label %2017, label %1984

1984:                                             ; preds = %1982
  %1985 = getelementptr inbounds %struct.SeqIterator, ptr %4, i64 0, i32 4
  %1986 = getelementptr inbounds %struct.SeqIterator, ptr %4, i64 0, i32 3
  br label %1996

1987:                                             ; preds = %1976, %1993
  %1988 = phi ptr [ %1994, %1993 ], [ %1980, %1976 ]
  %1989 = getelementptr inbounds %struct.Tex, ptr %1988, i64 0, i32 49
  %1990 = load float, ptr %1989, align 8, !tbaa !389
  %1991 = fcmp oeq float %1990, 0.000000e+00
  br i1 %1991, label %1992, label %1993

1992:                                             ; preds = %1987
  store float 0x3F999999A0000000, ptr %1989, align 8, !tbaa !389
  br label %1993

1993:                                             ; preds = %1992, %1987
  %1994 = load ptr, ptr %1988, align 8, !tbaa !34
  %1995 = icmp eq ptr %1994, null
  br i1 %1995, label %1982, label %1987, !llvm.loop !390

1996:                                             ; preds = %1984, %2014
  %1997 = phi ptr [ %1979, %1984 ], [ %2015, %2014 ]
  %1998 = getelementptr inbounds %struct.Scene, ptr %1997, i64 0, i32 19
  %1999 = load ptr, ptr %1998, align 8, !tbaa !391
  %2000 = icmp eq ptr %1999, null
  br i1 %2000, label %2014, label %2001

2001:                                             ; preds = %1996
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %4) #11
  call void @BKE_sequence_iterator_begin(ptr noundef nonnull %1999, ptr noundef nonnull %4, i8 noundef zeroext 0) #11
  %2002 = load i32, ptr %1985, align 8, !tbaa !392
  %2003 = icmp eq i32 %2002, 0
  br i1 %2003, label %2013, label %2004

2004:                                             ; preds = %2001, %2010
  %2005 = load ptr, ptr %1986, align 8, !tbaa !394
  %2006 = getelementptr inbounds %struct.Sequence, ptr %2005, i64 0, i32 6
  %2007 = load i32, ptr %2006, align 4, !tbaa !395
  switch i32 %2007, label %2010 [
    i32 0, label %2008
    i32 3, label %2008
  ]

2008:                                             ; preds = %2004, %2004
  %2009 = getelementptr inbounds %struct.Sequence, ptr %2005, i64 0, i32 49
  store i8 0, ptr %2009, align 4, !tbaa !397
  br label %2010

2010:                                             ; preds = %2004, %2008
  call void @BKE_sequence_iterator_next(ptr noundef nonnull %4) #11
  %2011 = load i32, ptr %1985, align 8, !tbaa !392
  %2012 = icmp eq i32 %2011, 0
  br i1 %2012, label %2013, label %2004, !llvm.loop !398

2013:                                             ; preds = %2010, %2001
  call void @BKE_sequence_iterator_end(ptr noundef nonnull %4) #11
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %4) #11
  br label %2014

2014:                                             ; preds = %2013, %1996
  %2015 = load ptr, ptr %1997, align 8, !tbaa !399
  %2016 = icmp eq ptr %2015, null
  br i1 %2016, label %2017, label %1996, !llvm.loop !400

2017:                                             ; preds = %2014, %1982, %1974
  %2018 = load i16, ptr %7, align 8, !tbaa !60
  %2019 = icmp slt i16 %2018, 237
  br i1 %2019, label %2020, label %2132

2020:                                             ; preds = %2017
  %2021 = getelementptr inbounds %struct.Main, ptr %2, i64 0, i32 22
  %2022 = load ptr, ptr %2021, align 8, !tbaa !34
  %2023 = icmp eq ptr %2022, null
  br i1 %2023, label %2041, label %2024

2024:                                             ; preds = %2020, %2038
  %2025 = phi ptr [ %2039, %2038 ], [ %2022, %2020 ]
  %2026 = getelementptr inbounds %struct.Camera, ptr %2025, i64 0, i32 9
  %2027 = load float, ptr %2026, align 4, !tbaa !401
  %2028 = fcmp oeq float %2027, 0.000000e+00
  br i1 %2028, label %2029, label %2038

2029:                                             ; preds = %2024
  %2030 = getelementptr inbounds %struct.Camera, ptr %2025, i64 0, i32 8
  %2031 = load float, ptr %2030, align 8, !tbaa !403
  %2032 = fdiv float 2.560000e+02, %2031
  store float %2032, ptr %2026, align 4, !tbaa !401
  %2033 = getelementptr inbounds %struct.Camera, ptr %2025, i64 0, i32 2
  %2034 = load i8, ptr %2033, align 8, !tbaa !404
  %2035 = icmp eq i8 %2034, 1
  br i1 %2035, label %2036, label %2038

2036:                                             ; preds = %2029
  %2037 = call i32 @puts(ptr nonnull dereferenceable(1) @str.30)
  br label %2038

2038:                                             ; preds = %2029, %2036, %2024
  %2039 = load ptr, ptr %2025, align 8, !tbaa !34
  %2040 = icmp eq ptr %2039, null
  br i1 %2040, label %2041, label %2024, !llvm.loop !405

2041:                                             ; preds = %2038, %2020
  %2042 = getelementptr inbounds %struct.Main, ptr %2, i64 0, i32 26
  %2043 = load ptr, ptr %2042, align 8, !tbaa !34
  %2044 = icmp eq ptr %2043, null
  br i1 %2044, label %2074, label %2048

2045:                                             ; preds = %2053, %2048
  %2046 = load ptr, ptr %2049, align 8, !tbaa !34
  %2047 = icmp eq ptr %2046, null
  br i1 %2047, label %2074, label %2048, !llvm.loop !406

2048:                                             ; preds = %2041, %2045
  %2049 = phi ptr [ %2046, %2045 ], [ %2043, %2041 ]
  %2050 = getelementptr inbounds %struct.bScreen, ptr %2049, i64 0, i32 3
  %2051 = load ptr, ptr %2050, align 8, !tbaa !34
  %2052 = icmp eq ptr %2051, null
  br i1 %2052, label %2045, label %2056

2053:                                             ; preds = %2071, %2056
  %2054 = load ptr, ptr %2057, align 8, !tbaa !34
  %2055 = icmp eq ptr %2054, null
  br i1 %2055, label %2045, label %2056, !llvm.loop !407

2056:                                             ; preds = %2048, %2053
  %2057 = phi ptr [ %2054, %2053 ], [ %2051, %2048 ]
  %2058 = getelementptr inbounds %struct.ScrArea, ptr %2057, i64 0, i32 19
  %2059 = load ptr, ptr %2058, align 8, !tbaa !34
  %2060 = icmp eq ptr %2059, null
  br i1 %2060, label %2053, label %2061

2061:                                             ; preds = %2056, %2071
  %2062 = phi ptr [ %2072, %2071 ], [ %2059, %2056 ]
  %2063 = getelementptr inbounds %struct.SpaceLink, ptr %2062, i64 0, i32 3
  %2064 = load i32, ptr %2063, align 8, !tbaa !127
  %2065 = icmp eq i32 %2064, 1
  br i1 %2065, label %2066, label %2071

2066:                                             ; preds = %2061
  %2067 = getelementptr inbounds %struct.View3D, ptr %2062, i64 0, i32 40
  %2068 = load i8, ptr %2067, align 1, !tbaa !408
  %2069 = icmp eq i8 %2068, 0
  br i1 %2069, label %2070, label %2071

2070:                                             ; preds = %2066
  store i8 1, ptr %2067, align 1, !tbaa !408
  br label %2071

2071:                                             ; preds = %2066, %2070, %2061
  %2072 = load ptr, ptr %2062, align 8, !tbaa !34
  %2073 = icmp eq ptr %2072, null
  br i1 %2073, label %2053, label %2061, !llvm.loop !409

2074:                                             ; preds = %2045, %2041
  %2075 = getelementptr inbounds %struct.Main, ptr %2, i64 0, i32 17
  %2076 = load ptr, ptr %2075, align 8, !tbaa !34
  %2077 = icmp eq ptr %2076, null
  br i1 %2077, label %2088, label %2078

2078:                                             ; preds = %2074, %2085
  %2079 = phi ptr [ %2086, %2085 ], [ %2076, %2074 ]
  %2080 = getelementptr inbounds %struct.Material, ptr %2079, i64 0, i32 89
  %2081 = load float, ptr %2080, align 8, !tbaa !410
  %2082 = fcmp oeq float %2081, 0.000000e+00
  br i1 %2082, label %2083, label %2085

2083:                                             ; preds = %2078
  %2084 = getelementptr inbounds %struct.Material, ptr %2079, i64 0, i32 88
  store float 0x3FB99999A0000000, ptr %2084, align 4, !tbaa !411
  store float 1.000000e+00, ptr %2080, align 8, !tbaa !410
  br label %2085

2085:                                             ; preds = %2078, %2083
  %2086 = load ptr, ptr %2079, align 8, !tbaa !34
  %2087 = icmp eq ptr %2086, null
  br i1 %2087, label %2088, label %2078, !llvm.loop !412

2088:                                             ; preds = %2085, %2074
  %2089 = getelementptr inbounds %struct.Main, ptr %2, i64 0, i32 13
  %2090 = load ptr, ptr %2089, align 8, !tbaa !34
  %2091 = icmp eq ptr %2090, null
  br i1 %2091, label %2132, label %2092

2092:                                             ; preds = %2088, %2129
  %2093 = phi ptr [ %2130, %2129 ], [ %2090, %2088 ]
  %2094 = getelementptr inbounds %struct.Object, ptr %2093, i64 0, i32 111
  %2095 = load ptr, ptr %2094, align 8, !tbaa !413
  %2096 = icmp eq ptr %2095, null
  br i1 %2096, label %2129, label %2097

2097:                                             ; preds = %2092
  %2098 = getelementptr inbounds %struct.SoftBody, ptr %2095, i64 0, i32 17
  %2099 = load float, ptr %2098, align 8, !tbaa !414
  %2100 = fcmp oeq float %2099, 0.000000e+00
  br i1 %2100, label %2101, label %2102

2101:                                             ; preds = %2097
  store float 0x3FE6666660000000, ptr %2098, align 8, !tbaa !414
  br label %2102

2102:                                             ; preds = %2101, %2097
  %2103 = getelementptr inbounds %struct.SoftBody, ptr %2095, i64 0, i32 12
  %2104 = load float, ptr %2103, align 4, !tbaa !416
  %2105 = fcmp oeq float %2104, 0.000000e+00
  br i1 %2105, label %2106, label %2107

2106:                                             ; preds = %2102
  store float 1.000000e+00, ptr %2103, align 4, !tbaa !416
  br label %2107

2107:                                             ; preds = %2106, %2102
  %2108 = getelementptr inbounds %struct.SoftBody, ptr %2095, i64 0, i32 26
  %2109 = load i32, ptr %2108, align 8, !tbaa !417
  %2110 = icmp eq i32 %2109, 0
  br i1 %2110, label %2111, label %2114

2111:                                             ; preds = %2107
  store i32 2, ptr %2108, align 8, !tbaa !417
  %2112 = getelementptr inbounds %struct.SoftBody, ptr %2095, i64 0, i32 24
  store i32 1, ptr %2112, align 8, !tbaa !418
  %2113 = getelementptr inbounds %struct.SoftBody, ptr %2095, i64 0, i32 25
  store i32 100, ptr %2113, align 4, !tbaa !419
  br label %2114

2114:                                             ; preds = %2107, %2111
  br i1 %2096, label %2129, label %2115

2115:                                             ; preds = %2114
  %2116 = getelementptr inbounds %struct.SoftBody, ptr %2095, i64 0, i32 18
  %2117 = load i16, ptr %2116, align 4, !tbaa !420
  %2118 = icmp eq i16 %2117, 0
  br i1 %2118, label %2119, label %2129

2119:                                             ; preds = %2115
  %2120 = call ptr @defgroup_find_name(ptr noundef nonnull %2093, ptr noundef nonnull @.str.5) #11
  %2121 = icmp eq ptr %2120, null
  br i1 %2121, label %2129, label %2122

2122:                                             ; preds = %2119
  %2123 = getelementptr inbounds %struct.Object, ptr %2093, i64 0, i32 25
  %2124 = call i32 @BLI_findindex(ptr noundef nonnull %2123, ptr noundef nonnull %2120) #11
  %2125 = trunc i32 %2124 to i16
  %2126 = add i16 %2125, 1
  %2127 = load ptr, ptr %2094, align 8, !tbaa !413
  %2128 = getelementptr inbounds %struct.SoftBody, ptr %2127, i64 0, i32 18
  store i16 %2126, ptr %2128, align 4, !tbaa !420
  br label %2129

2129:                                             ; preds = %2092, %2119, %2122, %2114, %2115
  %2130 = load ptr, ptr %2093, align 8, !tbaa !34
  %2131 = icmp eq ptr %2130, null
  br i1 %2131, label %2132, label %2092, !llvm.loop !421

2132:                                             ; preds = %2129, %2088, %2017
  %2133 = load i16, ptr %7, align 8, !tbaa !60
  %2134 = icmp slt i16 %2133, 238
  br i1 %2134, label %2135, label %2270

2135:                                             ; preds = %2132
  %2136 = getelementptr inbounds %struct.Main, ptr %2, i64 0, i32 33
  %2137 = load ptr, ptr %2136, align 8, !tbaa !34
  %2138 = icmp eq ptr %2137, null
  br i1 %2138, label %2151, label %2142

2139:                                             ; preds = %2147, %2142
  %2140 = load ptr, ptr %2143, align 8, !tbaa !34
  %2141 = icmp eq ptr %2140, null
  br i1 %2141, label %2151, label %2142, !llvm.loop !422

2142:                                             ; preds = %2135, %2139
  %2143 = phi ptr [ %2140, %2139 ], [ %2137, %2135 ]
  call void @BKE_armature_where_is(ptr noundef nonnull %2143) #11
  %2144 = getelementptr inbounds %struct.bArmature, ptr %2143, i64 0, i32 2
  %2145 = load ptr, ptr %2144, align 8, !tbaa !34
  %2146 = icmp eq ptr %2145, null
  br i1 %2146, label %2139, label %2147

2147:                                             ; preds = %2142, %2147
  %2148 = phi ptr [ %2149, %2147 ], [ %2145, %2142 ]
  call fastcc void @do_version_bone_head_tail_237(ptr noundef nonnull %2148)
  %2149 = load ptr, ptr %2148, align 8, !tbaa !34
  %2150 = icmp eq ptr %2149, null
  br i1 %2150, label %2139, label %2147, !llvm.loop !423

2151:                                             ; preds = %2139, %2135
  %2152 = getelementptr inbounds %struct.Main, ptr %2, i64 0, i32 13
  %2153 = load ptr, ptr %2152, align 8, !tbaa !34
  %2154 = icmp eq ptr %2153, null
  br i1 %2154, label %2270, label %2158

2155:                                             ; preds = %2267, %2239
  %2156 = load ptr, ptr %2159, align 8, !tbaa !34
  %2157 = icmp eq ptr %2156, null
  br i1 %2157, label %2270, label %2158, !llvm.loop !424

2158:                                             ; preds = %2151, %2155
  %2159 = phi ptr [ %2156, %2155 ], [ %2153, %2151 ]
  %2160 = getelementptr inbounds %struct.Object, ptr %2159, i64 0, i32 9
  %2161 = load ptr, ptr %2160, align 8, !tbaa !425
  %2162 = icmp eq ptr %2161, null
  br i1 %2162, label %2172, label %2163

2163:                                             ; preds = %2158
  %2164 = call ptr @blo_do_versions_newlibadr(ptr noundef %0, ptr noundef %1, ptr noundef nonnull %2161) #11
  %2165 = icmp eq ptr %2164, null
  br i1 %2165, label %2172, label %2166

2166:                                             ; preds = %2163
  %2167 = getelementptr inbounds %struct.Object, ptr %2164, i64 0, i32 3
  %2168 = load i16, ptr %2167, align 8, !tbaa !285
  %2169 = icmp eq i16 %2168, 22
  br i1 %2169, label %2170, label %2172

2170:                                             ; preds = %2166
  %2171 = getelementptr inbounds %struct.Object, ptr %2159, i64 0, i32 4
  store i16 4, ptr %2171, align 2, !tbaa !426
  br label %2172

2172:                                             ; preds = %2163, %2166, %2170, %2158
  %2173 = getelementptr inbounds %struct.Object, ptr %2159, i64 0, i32 3
  %2174 = load i16, ptr %2173, align 8, !tbaa !285
  switch i16 %2174, label %2239 [
    i16 25, label %2175
    i16 1, label %2198
  ]

2175:                                             ; preds = %2172
  %2176 = getelementptr inbounds %struct.Object, ptr %2159, i64 0, i32 18
  %2177 = load ptr, ptr %2176, align 8, !tbaa !286
  %2178 = icmp eq ptr %2177, null
  br i1 %2178, label %2183, label %2179

2179:                                             ; preds = %2175
  %2180 = getelementptr inbounds %struct.bPose, ptr %2177, i64 0, i32 2
  %2181 = load i16, ptr %2180, align 8, !tbaa !427
  %2182 = or i16 %2181, 1
  store i16 %2182, ptr %2180, align 8, !tbaa !427
  br label %2183

2183:                                             ; preds = %2179, %2175
  %2184 = getelementptr inbounds %struct.Object, ptr %2159, i64 0, i32 103
  %2185 = load i8, ptr %2184, align 1, !tbaa !429
  %2186 = or i8 %2185, 7
  store i8 %2186, ptr %2184, align 1, !tbaa !429
  %2187 = getelementptr inbounds %struct.Object, ptr %2159, i64 0, i32 19
  %2188 = load ptr, ptr %2187, align 8, !tbaa !430
  %2189 = call ptr @blo_do_versions_newlibadr(ptr noundef %0, ptr noundef %1, ptr noundef %2188) #11
  %2190 = getelementptr inbounds %struct.bArmature, ptr %2189, i64 0, i32 8
  %2191 = load i32, ptr %2190, align 8, !tbaa !431
  %2192 = and i32 %2191, 2
  %2193 = icmp eq i32 %2192, 0
  br i1 %2193, label %2239, label %2194

2194:                                             ; preds = %2183
  %2195 = getelementptr inbounds %struct.Object, ptr %2159, i64 0, i32 86
  %2196 = load i16, ptr %2195, align 4, !tbaa !433
  %2197 = or i16 %2196, 64
  store i16 %2197, ptr %2195, align 4, !tbaa !433
  br label %2239

2198:                                             ; preds = %2172
  %2199 = getelementptr inbounds %struct.Object, ptr %2159, i64 0, i32 19
  %2200 = load ptr, ptr %2199, align 8, !tbaa !430
  %2201 = call ptr @blo_do_versions_newlibadr(ptr noundef %0, ptr noundef %1, ptr noundef %2200) #11
  %2202 = getelementptr inbounds %struct.Mesh, ptr %2201, i64 0, i32 38
  %2203 = load i16, ptr %2202, align 2, !tbaa !240
  %2204 = and i16 %2203, 128
  %2205 = icmp eq i16 %2204, 0
  br i1 %2205, label %2239, label %2206

2206:                                             ; preds = %2198
  %2207 = call ptr @modifier_new(i32 noundef 1) #11
  %2208 = getelementptr inbounds %struct.Mesh, ptr %2201, i64 0, i32 43
  %2209 = load i8, ptr %2208, align 2, !tbaa !152
  %2210 = call i8 @llvm.umax.i8(i8 %2209, i8 1)
  %2211 = zext i8 %2210 to i16
  %2212 = getelementptr inbounds %struct.SubsurfModifierData, ptr %2207, i64 0, i32 2
  store i16 %2211, ptr %2212, align 2, !tbaa !434
  %2213 = getelementptr inbounds %struct.Mesh, ptr %2201, i64 0, i32 44
  %2214 = load i8, ptr %2213, align 1, !tbaa !269
  %2215 = call i8 @llvm.umax.i8(i8 %2214, i8 1)
  %2216 = zext i8 %2215 to i16
  %2217 = getelementptr inbounds %struct.SubsurfModifierData, ptr %2207, i64 0, i32 3
  store i16 %2216, ptr %2217, align 4, !tbaa !437
  %2218 = getelementptr inbounds %struct.Mesh, ptr %2201, i64 0, i32 45
  %2219 = load i8, ptr %2218, align 4, !tbaa !438
  %2220 = zext i8 %2219 to i16
  %2221 = getelementptr inbounds %struct.SubsurfModifierData, ptr %2207, i64 0, i32 1
  store i16 %2220, ptr %2221, align 8, !tbaa !439
  %2222 = getelementptr inbounds %struct.ModifierData, ptr %2207, i64 0, i32 3
  %2223 = icmp ne i8 %2209, 0
  %2224 = zext i1 %2223 to i32
  store i32 %2224, ptr %2222, align 4
  %2225 = load i8, ptr %2213, align 1, !tbaa !269
  %2226 = icmp eq i8 %2225, 0
  br i1 %2226, label %2229, label %2227

2227:                                             ; preds = %2206
  %2228 = or disjoint i32 %2224, 2
  store i32 %2228, ptr %2222, align 4, !tbaa !440
  br label %2229

2229:                                             ; preds = %2227, %2206
  %2230 = load i16, ptr %2202, align 2, !tbaa !240
  %2231 = and i16 %2230, 256
  %2232 = icmp eq i16 %2231, 0
  br i1 %2232, label %2237, label %2233

2233:                                             ; preds = %2229
  %2234 = getelementptr inbounds %struct.SubsurfModifierData, ptr %2207, i64 0, i32 4
  %2235 = load i16, ptr %2234, align 2, !tbaa !441
  %2236 = or i16 %2235, 4
  store i16 %2236, ptr %2234, align 2, !tbaa !441
  br label %2237

2237:                                             ; preds = %2233, %2229
  %2238 = getelementptr inbounds %struct.Object, ptr %2159, i64 0, i32 26
  call void @BLI_addtail(ptr noundef nonnull %2238, ptr noundef %2207) #11
  call void @modifier_unique_name(ptr noundef nonnull %2238, ptr noundef %2207) #11
  br label %2239

2239:                                             ; preds = %2198, %2237, %2172, %2183, %2194
  %2240 = getelementptr inbounds %struct.Object, ptr %2159, i64 0, i32 106
  %2241 = load ptr, ptr %2240, align 8, !tbaa !34
  %2242 = icmp eq ptr %2241, null
  br i1 %2242, label %2155, label %2243

2243:                                             ; preds = %2239, %2267
  %2244 = phi ptr [ %2268, %2267 ], [ %2241, %2239 ]
  %2245 = getelementptr inbounds %struct.bConstraint, ptr %2244, i64 0, i32 3
  %2246 = load i16, ptr %2245, align 8, !tbaa !283
  %2247 = icmp eq i16 %2246, 4
  br i1 %2247, label %2248, label %2267

2248:                                             ; preds = %2243
  %2249 = getelementptr inbounds %struct.bConstraint, ptr %2244, i64 0, i32 2
  %2250 = load ptr, ptr %2249, align 8, !tbaa !52
  %2251 = load ptr, ptr %2250, align 8, !tbaa !442
  %2252 = call ptr @blo_do_versions_newlibadr(ptr noundef %0, ptr noundef %1, ptr noundef %2251) #11
  %2253 = icmp eq ptr %2252, null
  br i1 %2253, label %2267, label %2254

2254:                                             ; preds = %2248
  %2255 = getelementptr inbounds %struct.Object, ptr %2252, i64 0, i32 3
  %2256 = load i16, ptr %2255, align 8, !tbaa !285
  %2257 = icmp eq i16 %2256, 2
  br i1 %2257, label %2258, label %2267

2258:                                             ; preds = %2254
  %2259 = getelementptr inbounds %struct.Object, ptr %2252, i64 0, i32 19
  %2260 = load ptr, ptr %2259, align 8, !tbaa !430
  %2261 = call ptr @blo_do_versions_newlibadr(ptr noundef %0, ptr noundef %1, ptr noundef %2260) #11
  %2262 = icmp eq ptr %2261, null
  br i1 %2262, label %2267, label %2263

2263:                                             ; preds = %2258
  %2264 = getelementptr inbounds %struct.Curve, ptr %2261, i64 0, i32 23
  %2265 = load i32, ptr %2264, align 4, !tbaa !444
  %2266 = or i32 %2265, 8
  store i32 %2266, ptr %2264, align 4, !tbaa !444
  br label %2267

2267:                                             ; preds = %2248, %2254, %2263, %2258, %2243
  %2268 = load ptr, ptr %2244, align 8, !tbaa !34
  %2269 = icmp eq ptr %2268, null
  br i1 %2269, label %2155, label %2243, !llvm.loop !447

2270:                                             ; preds = %2155, %2151, %2132
  %2271 = load i16, ptr %7, align 8, !tbaa !60
  %2272 = icmp slt i16 %2271, 239
  br i1 %2272, label %2273, label %2518

2273:                                             ; preds = %2270
  %2274 = getelementptr inbounds %struct.Main, ptr %2, i64 0, i32 11
  %2275 = load ptr, ptr %2274, align 8, !tbaa !34
  %2276 = icmp eq ptr %2275, null
  br i1 %2276, label %2289, label %2277

2277:                                             ; preds = %2273, %2286
  %2278 = phi ptr [ %2287, %2286 ], [ %2275, %2273 ]
  %2279 = getelementptr inbounds %struct.Scene, ptr %2278, i64 0, i32 20
  %2280 = load ptr, ptr %2279, align 8, !tbaa !448
  %2281 = icmp eq ptr %2280, null
  br i1 %2281, label %2282, label %2286

2282:                                             ; preds = %2277
  %2283 = load ptr, ptr @MEM_callocN, align 8, !tbaa !34
  %2284 = call ptr %2283(i64 noundef 648, ptr noundef nonnull @.str.6) #11
  store ptr %2284, ptr %2279, align 8, !tbaa !448
  %2285 = getelementptr inbounds %struct.ToolSettings, ptr %2284, i64 0, i32 5
  store float 0x3F50624DE0000000, ptr %2285, align 4, !tbaa !449
  br label %2286

2286:                                             ; preds = %2282, %2277
  %2287 = load ptr, ptr %2278, align 8, !tbaa !34
  %2288 = icmp eq ptr %2287, null
  br i1 %2288, label %2289, label %2277, !llvm.loop !456

2289:                                             ; preds = %2286, %2273
  %2290 = getelementptr inbounds %struct.Main, ptr %2, i64 0, i32 20
  %2291 = load ptr, ptr %2290, align 8, !tbaa !34
  %2292 = icmp eq ptr %2291, null
  br i1 %2292, label %2329, label %2293

2293:                                             ; preds = %2289, %2326
  %2294 = phi ptr [ %2327, %2326 ], [ %2291, %2289 ]
  %2295 = getelementptr inbounds %struct.Lattice, ptr %2294, i64 0, i32 15
  %2296 = load float, ptr %2295, align 8, !tbaa !457
  %2297 = fcmp oeq float %2296, 0.000000e+00
  br i1 %2297, label %2298, label %2326

2298:                                             ; preds = %2293
  %2299 = getelementptr inbounds %struct.Lattice, ptr %2294, i64 0, i32 16
  %2300 = load float, ptr %2299, align 4, !tbaa !459
  %2301 = fcmp oeq float %2300, 0.000000e+00
  br i1 %2301, label %2302, label %2326

2302:                                             ; preds = %2298
  %2303 = getelementptr inbounds %struct.Lattice, ptr %2294, i64 0, i32 17
  %2304 = load float, ptr %2303, align 8, !tbaa !460
  %2305 = fcmp oeq float %2304, 0.000000e+00
  br i1 %2305, label %2306, label %2326

2306:                                             ; preds = %2302
  %2307 = getelementptr inbounds %struct.Lattice, ptr %2294, i64 0, i32 5
  %2308 = load i16, ptr %2307, align 2, !tbaa !461
  %2309 = sext i16 %2308 to i32
  %2310 = getelementptr inbounds %struct.Lattice, ptr %2294, i64 0, i32 2
  %2311 = load i16, ptr %2310, align 8, !tbaa !462
  %2312 = sext i16 %2311 to i32
  %2313 = getelementptr inbounds %struct.Lattice, ptr %2294, i64 0, i32 18
  call void @calc_lat_fudu(i32 noundef %2309, i32 noundef %2312, ptr noundef nonnull %2295, ptr noundef nonnull %2313) #11
  %2314 = load i16, ptr %2307, align 2, !tbaa !461
  %2315 = sext i16 %2314 to i32
  %2316 = getelementptr inbounds %struct.Lattice, ptr %2294, i64 0, i32 3
  %2317 = load i16, ptr %2316, align 2, !tbaa !463
  %2318 = sext i16 %2317 to i32
  %2319 = getelementptr inbounds %struct.Lattice, ptr %2294, i64 0, i32 19
  call void @calc_lat_fudu(i32 noundef %2315, i32 noundef %2318, ptr noundef nonnull %2299, ptr noundef nonnull %2319) #11
  %2320 = load i16, ptr %2307, align 2, !tbaa !461
  %2321 = sext i16 %2320 to i32
  %2322 = getelementptr inbounds %struct.Lattice, ptr %2294, i64 0, i32 4
  %2323 = load i16, ptr %2322, align 4, !tbaa !464
  %2324 = sext i16 %2323 to i32
  %2325 = getelementptr inbounds %struct.Lattice, ptr %2294, i64 0, i32 20
  call void @calc_lat_fudu(i32 noundef %2321, i32 noundef %2324, ptr noundef nonnull %2303, ptr noundef nonnull %2325) #11
  br label %2326

2326:                                             ; preds = %2293, %2298, %2302, %2306
  %2327 = load ptr, ptr %2294, align 8, !tbaa !34
  %2328 = icmp eq ptr %2327, null
  br i1 %2328, label %2329, label %2293, !llvm.loop !465

2329:                                             ; preds = %2326, %2289
  %2330 = getelementptr inbounds %struct.Main, ptr %2, i64 0, i32 13
  %2331 = load ptr, ptr %2330, align 8, !tbaa !34
  %2332 = icmp eq ptr %2331, null
  br i1 %2332, label %2459, label %2333

2333:                                             ; preds = %2329, %2456
  %2334 = phi ptr [ %2457, %2456 ], [ %2331, %2329 ]
  %2335 = getelementptr inbounds %struct.Object, ptr %2334, i64 0, i32 26
  %2336 = load ptr, ptr %2335, align 8, !tbaa !34
  %2337 = icmp eq ptr %2336, null
  br i1 %2337, label %2350, label %2338

2338:                                             ; preds = %2333, %2347
  %2339 = phi ptr [ %2348, %2347 ], [ %2336, %2333 ]
  %2340 = getelementptr inbounds %struct.ModifierData, ptr %2339, i64 0, i32 2
  %2341 = load i32, ptr %2340, align 8, !tbaa !466
  %2342 = icmp eq i32 %2341, 1
  br i1 %2342, label %2343, label %2347

2343:                                             ; preds = %2338
  %2344 = getelementptr inbounds %struct.SubsurfModifierData, ptr %2339, i64 0, i32 4
  %2345 = load i16, ptr %2344, align 2, !tbaa !441
  %2346 = and i16 %2345, -4
  store i16 %2346, ptr %2344, align 2, !tbaa !441
  br label %2347

2347:                                             ; preds = %2338, %2343
  %2348 = load ptr, ptr %2339, align 8, !tbaa !34
  %2349 = icmp eq ptr %2348, null
  br i1 %2349, label %2350, label %2338, !llvm.loop !467

2350:                                             ; preds = %2347, %2333
  %2351 = getelementptr inbounds %struct.Object, ptr %2334, i64 0, i32 104
  %2352 = load i16, ptr %2351, align 2, !tbaa !468
  %2353 = and i16 %2352, 1
  %2354 = icmp eq i16 %2353, 0
  br i1 %2354, label %2380, label %2355

2355:                                             ; preds = %2350
  %2356 = call ptr @modifiers_findByType(ptr noundef nonnull %2334, i32 noundef 10) #11
  %2357 = icmp eq ptr %2356, null
  br i1 %2357, label %2358, label %2380

2358:                                             ; preds = %2355
  %2359 = load i16, ptr %2351, align 2, !tbaa !468
  %2360 = and i16 %2359, 16
  %2361 = icmp eq i16 %2360, 0
  br i1 %2361, label %2375, label %2362

2362:                                             ; preds = %2358, %2366
  %2363 = phi ptr [ %2364, %2366 ], [ %2335, %2358 ]
  %2364 = load ptr, ptr %2363, align 8, !tbaa !34
  %2365 = icmp eq ptr %2364, null
  br i1 %2365, label %2373, label %2366

2366:                                             ; preds = %2362
  %2367 = getelementptr inbounds %struct.ModifierData, ptr %2364, i64 0, i32 2
  %2368 = load i32, ptr %2367, align 8, !tbaa !466
  %2369 = call ptr @modifierType_getInfo(i32 noundef %2368) #11
  %2370 = getelementptr inbounds %struct.ModifierTypeInfo, ptr %2369, i64 0, i32 3
  %2371 = load i32, ptr %2370, align 4, !tbaa !469
  %2372 = icmp eq i32 %2371, 1
  br i1 %2372, label %2362, label %2373, !llvm.loop !471

2373:                                             ; preds = %2362, %2366
  %2374 = call ptr @modifier_new(i32 noundef 10) #11
  call void @BLI_insertlinkbefore(ptr noundef nonnull %2335, ptr noundef %2364, ptr noundef %2374) #11
  br label %2377

2375:                                             ; preds = %2358
  %2376 = call ptr @modifier_new(i32 noundef 10) #11
  call void @BLI_addhead(ptr noundef nonnull %2335, ptr noundef %2376) #11
  br label %2377

2377:                                             ; preds = %2375, %2373
  %2378 = load i16, ptr %2351, align 2, !tbaa !468
  %2379 = and i16 %2378, -2
  store i16 %2379, ptr %2351, align 2, !tbaa !468
  br label %2380

2380:                                             ; preds = %2377, %2355, %2350
  %2381 = getelementptr inbounds %struct.Object, ptr %2334, i64 0, i32 18
  %2382 = load ptr, ptr %2381, align 8, !tbaa !286
  %2383 = icmp eq ptr %2382, null
  br i1 %2383, label %2428, label %2384

2384:                                             ; preds = %2380
  %2385 = load ptr, ptr %2382, align 8, !tbaa !34
  %2386 = icmp eq ptr %2385, null
  br i1 %2386, label %2428, label %2387

2387:                                             ; preds = %2384
  %2388 = getelementptr inbounds %struct.bPose, ptr %2382, i64 0, i32 2
  br label %2389

2389:                                             ; preds = %2387, %2425
  %2390 = phi ptr [ %2385, %2387 ], [ %2426, %2425 ]
  %2391 = getelementptr inbounds %struct.bPoseChannel, ptr %2390, i64 0, i32 33
  %2392 = load float, ptr %2391, align 8, !tbaa !156
  %2393 = fcmp oeq float %2392, 0.000000e+00
  br i1 %2393, label %2394, label %2425

2394:                                             ; preds = %2389
  %2395 = getelementptr inbounds %struct.bPoseChannel, ptr %2390, i64 0, i32 34
  %2396 = load float, ptr %2395, align 4, !tbaa !156
  %2397 = fcmp oeq float %2396, 0.000000e+00
  br i1 %2397, label %2398, label %2425

2398:                                             ; preds = %2394
  %2399 = getelementptr inbounds %struct.bPoseChannel, ptr %2390, i64 0, i32 33, i64 2
  store float -1.800000e+02, ptr %2399, align 8, !tbaa !156
  %2400 = getelementptr inbounds %struct.bPoseChannel, ptr %2390, i64 0, i32 33, i64 1
  store float -1.800000e+02, ptr %2400, align 4, !tbaa !156
  store float -1.800000e+02, ptr %2391, align 8, !tbaa !156
  %2401 = getelementptr inbounds %struct.bPoseChannel, ptr %2390, i64 0, i32 34, i64 2
  store float 1.800000e+02, ptr %2401, align 4, !tbaa !156
  %2402 = getelementptr inbounds %struct.bPoseChannel, ptr %2390, i64 0, i32 34, i64 1
  store float 1.800000e+02, ptr %2402, align 4, !tbaa !156
  store float 1.800000e+02, ptr %2395, align 4, !tbaa !156
  %2403 = getelementptr inbounds %struct.bPoseChannel, ptr %2390, i64 0, i32 3
  %2404 = load ptr, ptr %2403, align 8, !tbaa !34
  %2405 = icmp eq ptr %2404, null
  br i1 %2405, label %2425, label %2406

2406:                                             ; preds = %2398, %2422
  %2407 = phi ptr [ %2423, %2422 ], [ %2404, %2398 ]
  %2408 = getelementptr inbounds %struct.bConstraint, ptr %2407, i64 0, i32 3
  %2409 = load i16, ptr %2408, align 8, !tbaa !283
  %2410 = icmp eq i16 %2409, 3
  br i1 %2410, label %2411, label %2422

2411:                                             ; preds = %2406
  %2412 = getelementptr inbounds %struct.bConstraint, ptr %2407, i64 0, i32 2
  %2413 = load ptr, ptr %2412, align 8, !tbaa !52
  %2414 = getelementptr inbounds %struct.bKinematicConstraint, ptr %2413, i64 0, i32 9
  store float 1.000000e+00, ptr %2414, align 4, !tbaa !472
  %2415 = getelementptr inbounds %struct.bKinematicConstraint, ptr %2413, i64 0, i32 10
  store float 1.000000e+00, ptr %2415, align 8, !tbaa !474
  %2416 = getelementptr inbounds %struct.bKinematicConstraint, ptr %2413, i64 0, i32 2
  %2417 = load i16, ptr %2416, align 2, !tbaa !475
  %2418 = and i16 %2417, -3
  store i16 %2418, ptr %2416, align 2, !tbaa !475
  %2419 = getelementptr inbounds %struct.bKinematicConstraint, ptr %2413, i64 0, i32 3
  store i16 -1, ptr %2419, align 4, !tbaa !476
  %2420 = load i16, ptr %2388, align 8, !tbaa !427
  %2421 = or i16 %2420, 1
  store i16 %2421, ptr %2388, align 8, !tbaa !427
  br label %2422

2422:                                             ; preds = %2406, %2411
  %2423 = load ptr, ptr %2407, align 8, !tbaa !34
  %2424 = icmp eq ptr %2423, null
  br i1 %2424, label %2425, label %2406, !llvm.loop !477

2425:                                             ; preds = %2422, %2398, %2389, %2394
  %2426 = load ptr, ptr %2390, align 8, !tbaa !34
  %2427 = icmp eq ptr %2426, null
  br i1 %2427, label %2428, label %2389, !llvm.loop !478

2428:                                             ; preds = %2425, %2384, %2380
  %2429 = getelementptr inbounds %struct.Object, ptr %2334, i64 0, i32 24
  br label %2430

2430:                                             ; preds = %2434, %2428
  %2431 = phi ptr [ %2429, %2428 ], [ %2432, %2434 ]
  %2432 = load ptr, ptr %2431, align 8, !tbaa !34
  %2433 = icmp eq ptr %2432, null
  br i1 %2433, label %2438, label %2434

2434:                                             ; preds = %2430
  %2435 = getelementptr inbounds %struct.PartEff, ptr %2432, i64 0, i32 2
  %2436 = load i16, ptr %2435, align 8, !tbaa !38
  %2437 = icmp eq i16 %2436, 1
  br i1 %2437, label %2438, label %2430, !llvm.loop !43

2438:                                             ; preds = %2430, %2434
  %2439 = phi ptr [ %2432, %2434 ], [ null, %2430 ]
  %2440 = icmp eq ptr %2439, null
  br i1 %2440, label %2456, label %2441

2441:                                             ; preds = %2438
  %2442 = getelementptr inbounds %struct.PartEff, ptr %2439, i64 0, i32 38
  %2443 = load i16, ptr %2442, align 4, !tbaa !479
  %2444 = icmp eq i16 %2443, 0
  br i1 %2444, label %2445, label %2446

2445:                                             ; preds = %2441
  store i16 100, ptr %2442, align 4, !tbaa !479
  br label %2446

2446:                                             ; preds = %2445, %2441
  %2447 = getelementptr inbounds %struct.PartEff, ptr %2439, i64 0, i32 35
  %2448 = load i16, ptr %2447, align 2, !tbaa !480
  %2449 = icmp eq i16 %2448, 0
  br i1 %2449, label %2450, label %2451

2450:                                             ; preds = %2446
  store i16 8, ptr %2447, align 2, !tbaa !480
  br label %2451

2451:                                             ; preds = %2450, %2446
  %2452 = getelementptr inbounds %struct.PartEff, ptr %2439, i64 0, i32 33
  %2453 = load i16, ptr %2452, align 2, !tbaa !481
  %2454 = icmp eq i16 %2453, 0
  br i1 %2454, label %2455, label %2456

2455:                                             ; preds = %2451
  store i16 1, ptr %2452, align 2, !tbaa !481
  br label %2456

2456:                                             ; preds = %2451, %2455, %2438
  %2457 = load ptr, ptr %2334, align 8, !tbaa !34
  %2458 = icmp eq ptr %2457, null
  br i1 %2458, label %2459, label %2333, !llvm.loop !482

2459:                                             ; preds = %2456, %2329
  %2460 = getelementptr inbounds %struct.Main, ptr %2, i64 0, i32 33
  %2461 = load ptr, ptr %2460, align 8, !tbaa !34
  %2462 = icmp eq ptr %2461, null
  br i1 %2462, label %2471, label %2463

2463:                                             ; preds = %2459, %2463
  %2464 = phi ptr [ %2469, %2463 ], [ %2461, %2459 ]
  %2465 = getelementptr inbounds %struct.bArmature, ptr %2464, i64 0, i32 2
  call fastcc void @bone_version_238(ptr noundef nonnull %2465)
  %2466 = getelementptr inbounds %struct.bArmature, ptr %2464, i64 0, i32 12
  %2467 = load i16, ptr %2466, align 8, !tbaa !483
  %2468 = or i16 %2467, 1
  store i16 %2468, ptr %2466, align 8, !tbaa !483
  %2469 = load ptr, ptr %2464, align 8, !tbaa !34
  %2470 = icmp eq ptr %2469, null
  br i1 %2470, label %2471, label %2463, !llvm.loop !484

2471:                                             ; preds = %2463, %2459
  %2472 = getelementptr inbounds %struct.Main, ptr %2, i64 0, i32 14
  %2473 = load ptr, ptr %2472, align 8, !tbaa !34
  %2474 = icmp eq ptr %2473, null
  br i1 %2474, label %2485, label %2475

2475:                                             ; preds = %2471, %2482
  %2476 = phi ptr [ %2483, %2482 ], [ %2473, %2471 ]
  %2477 = getelementptr inbounds %struct.Mesh, ptr %2476, i64 0, i32 16
  %2478 = load ptr, ptr %2477, align 8, !tbaa !485
  %2479 = icmp eq ptr %2478, null
  br i1 %2479, label %2480, label %2481

2480:                                             ; preds = %2475
  call void @BKE_mesh_calc_edges_legacy(ptr noundef nonnull %2476, i8 noundef zeroext 1) #11
  br label %2482

2481:                                             ; preds = %2475
  call void @BKE_mesh_strip_loose_faces(ptr noundef nonnull %2476) #11
  br label %2482

2482:                                             ; preds = %2480, %2481
  %2483 = load ptr, ptr %2476, align 8, !tbaa !34
  %2484 = icmp eq ptr %2483, null
  br i1 %2484, label %2485, label %2475, !llvm.loop !486

2485:                                             ; preds = %2482, %2471
  %2486 = getelementptr inbounds %struct.Main, ptr %2, i64 0, i32 24
  %2487 = load ptr, ptr %2486, align 8, !tbaa !34
  %2488 = icmp eq ptr %2487, null
  br i1 %2488, label %2518, label %2492

2489:                                             ; preds = %2514, %2492
  %2490 = load ptr, ptr %2493, align 8, !tbaa !34
  %2491 = icmp eq ptr %2490, null
  br i1 %2491, label %2518, label %2492, !llvm.loop !487

2492:                                             ; preds = %2485, %2489
  %2493 = phi ptr [ %2490, %2489 ], [ %2487, %2485 ]
  %2494 = getelementptr inbounds %struct.Key, ptr %2493, i64 0, i32 6
  %2495 = load ptr, ptr %2494, align 8, !tbaa !34
  %2496 = icmp eq ptr %2495, null
  br i1 %2496, label %2489, label %2497

2497:                                             ; preds = %2492
  %2498 = getelementptr inbounds %struct.Key, ptr %2493, i64 0, i32 2
  br label %2499

2499:                                             ; preds = %2497, %2514
  %2500 = phi ptr [ %2495, %2497 ], [ %2516, %2514 ]
  %2501 = phi i32 [ 1, %2497 ], [ %2515, %2514 ]
  %2502 = load ptr, ptr %2498, align 8, !tbaa !488
  %2503 = icmp eq ptr %2500, %2502
  %2504 = getelementptr inbounds %struct.KeyBlock, ptr %2500, i64 0, i32 11
  %2505 = load i8, ptr %2504, align 8, !tbaa !149
  %2506 = icmp eq i8 %2505, 0
  br i1 %2503, label %2507, label %2509

2507:                                             ; preds = %2499
  br i1 %2506, label %2508, label %2514

2508:                                             ; preds = %2507
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(6) %2504, ptr noundef nonnull align 1 dereferenceable(6) @.str.7, i64 6, i1 false) #11
  br label %2514

2509:                                             ; preds = %2499
  br i1 %2506, label %2510, label %2512

2510:                                             ; preds = %2509
  %2511 = call i64 (ptr, i64, ptr, ...) @BLI_snprintf(ptr noundef nonnull %2504, i64 noundef 64, ptr noundef nonnull @.str.8, i32 noundef %2501) #11
  br label %2512

2512:                                             ; preds = %2510, %2509
  %2513 = add nsw i32 %2501, 1
  br label %2514

2514:                                             ; preds = %2512, %2508, %2507
  %2515 = phi i32 [ %2501, %2508 ], [ %2501, %2507 ], [ %2513, %2512 ]
  %2516 = load ptr, ptr %2500, align 8, !tbaa !34
  %2517 = icmp eq ptr %2516, null
  br i1 %2517, label %2489, label %2499, !llvm.loop !490

2518:                                             ; preds = %2489, %2485, %2270
  %2519 = load i16, ptr %7, align 8, !tbaa !60
  %2520 = icmp slt i16 %2519, 240
  br i1 %2520, label %2521, label %2652

2521:                                             ; preds = %2518
  %2522 = getelementptr inbounds %struct.Main, ptr %2, i64 0, i32 11
  %2523 = load ptr, ptr %2522, align 8, !tbaa !388
  %2524 = getelementptr inbounds %struct.Main, ptr %2, i64 0, i32 22
  %2525 = load ptr, ptr %2524, align 8, !tbaa !491
  %2526 = getelementptr inbounds %struct.Main, ptr %2, i64 0, i32 17
  %2527 = load ptr, ptr %2526, align 8, !tbaa !492
  %2528 = getelementptr inbounds %struct.Main, ptr %2, i64 0, i32 13
  %2529 = load ptr, ptr %2528, align 8, !tbaa !34
  %2530 = icmp eq ptr %2529, null
  br i1 %2530, label %2562, label %2534

2531:                                             ; preds = %2559, %2534
  %2532 = load ptr, ptr %2535, align 8, !tbaa !34
  %2533 = icmp eq ptr %2532, null
  br i1 %2533, label %2562, label %2534, !llvm.loop !493

2534:                                             ; preds = %2521, %2531
  %2535 = phi ptr [ %2532, %2531 ], [ %2529, %2521 ]
  %2536 = getelementptr inbounds %struct.Object, ptr %2535, i64 0, i32 26
  %2537 = load ptr, ptr %2536, align 8, !tbaa !34
  %2538 = icmp eq ptr %2537, null
  br i1 %2538, label %2531, label %2539

2539:                                             ; preds = %2534, %2559
  %2540 = phi ptr [ %2560, %2559 ], [ %2537, %2534 ]
  %2541 = getelementptr inbounds %struct.ModifierData, ptr %2540, i64 0, i32 2
  %2542 = load i32, ptr %2541, align 8, !tbaa !466
  %2543 = icmp eq i32 %2542, 8
  br i1 %2543, label %2544, label %2559

2544:                                             ; preds = %2539
  %2545 = getelementptr inbounds %struct.ArmatureModifierData, ptr %2540, i64 0, i32 4
  %2546 = load ptr, ptr %2545, align 8, !tbaa !494
  %2547 = icmp eq ptr %2546, null
  br i1 %2547, label %2559, label %2548

2548:                                             ; preds = %2544
  %2549 = getelementptr inbounds %struct.ArmatureModifierData, ptr %2540, i64 0, i32 1
  %2550 = load i16, ptr %2549, align 8, !tbaa !496
  %2551 = icmp eq i16 %2550, 0
  br i1 %2551, label %2552, label %2559

2552:                                             ; preds = %2548
  %2553 = call ptr @blo_do_versions_newlibadr(ptr noundef %0, ptr noundef %1, ptr noundef nonnull %2546) #11
  %2554 = getelementptr inbounds %struct.Object, ptr %2553, i64 0, i32 19
  %2555 = load ptr, ptr %2554, align 8, !tbaa !430
  %2556 = call ptr @blo_do_versions_newlibadr(ptr noundef %0, ptr noundef %1, ptr noundef %2555) #11
  %2557 = getelementptr inbounds %struct.bArmature, ptr %2556, i64 0, i32 12
  %2558 = load i16, ptr %2557, align 8, !tbaa !483
  store i16 %2558, ptr %2549, align 8, !tbaa !496
  br label %2559

2559:                                             ; preds = %2544, %2548, %2552, %2539
  %2560 = load ptr, ptr %2540, align 8, !tbaa !34
  %2561 = icmp eq ptr %2560, null
  br i1 %2561, label %2531, label %2539, !llvm.loop !497

2562:                                             ; preds = %2531, %2521
  %2563 = getelementptr inbounds %struct.Main, ptr %2, i64 0, i32 33
  %2564 = load ptr, ptr %2563, align 8, !tbaa !34
  %2565 = icmp eq ptr %2564, null
  br i1 %2565, label %2566, label %2568

2566:                                             ; preds = %2580, %2562
  %2567 = icmp eq ptr %2523, null
  br i1 %2567, label %2583, label %2588

2568:                                             ; preds = %2562, %2580
  %2569 = phi ptr [ %2581, %2580 ], [ %2564, %2562 ]
  %2570 = getelementptr inbounds %struct.bArmature, ptr %2569, i64 0, i32 18
  %2571 = load i16, ptr %2570, align 2, !tbaa !498
  %2572 = icmp eq i16 %2571, 0
  br i1 %2572, label %2573, label %2574

2573:                                             ; preds = %2568
  store i16 1, ptr %2570, align 2, !tbaa !498
  br label %2574

2574:                                             ; preds = %2573, %2568
  %2575 = getelementptr inbounds %struct.bArmature, ptr %2569, i64 0, i32 2
  call fastcc void @bone_version_239(ptr noundef nonnull %2575)
  %2576 = getelementptr inbounds %struct.bArmature, ptr %2569, i64 0, i32 15
  %2577 = load i32, ptr %2576, align 8, !tbaa !499
  %2578 = icmp eq i32 %2577, 0
  br i1 %2578, label %2579, label %2580

2579:                                             ; preds = %2574
  store i32 1, ptr %2576, align 8, !tbaa !499
  br label %2580

2580:                                             ; preds = %2574, %2579
  %2581 = load ptr, ptr %2569, align 8, !tbaa !34
  %2582 = icmp eq ptr %2581, null
  br i1 %2582, label %2566, label %2568, !llvm.loop !500

2583:                                             ; preds = %2606, %2566
  %2584 = phi i32 [ 0, %2566 ], [ %2598, %2606 ]
  %2585 = icmp eq ptr %2525, null
  br i1 %2585, label %2609, label %2586

2586:                                             ; preds = %2583
  %2587 = icmp eq i32 %2584, 0
  br label %2611

2588:                                             ; preds = %2566, %2606
  %2589 = phi i32 [ %2598, %2606 ], [ 0, %2566 ]
  %2590 = phi ptr [ %2607, %2606 ], [ %2523, %2566 ]
  %2591 = getelementptr inbounds %struct.Scene, ptr %2590, i64 0, i32 22, i32 46
  %2592 = load i32, ptr %2591, align 4, !tbaa !501
  %2593 = and i32 %2592, 4
  %2594 = icmp eq i32 %2593, 0
  br i1 %2594, label %2597, label %2595

2595:                                             ; preds = %2588
  %2596 = and i32 %2592, -5
  store i32 %2596, ptr %2591, align 4, !tbaa !501
  br label %2597

2597:                                             ; preds = %2595, %2588
  %2598 = phi i32 [ 1, %2595 ], [ %2589, %2588 ]
  %2599 = getelementptr inbounds %struct.Scene, ptr %2590, i64 0, i32 22, i32 47
  %2600 = load i32, ptr %2599, align 8, !tbaa !121
  %2601 = and i32 %2600, 131072
  %2602 = icmp eq i32 %2601, 0
  br i1 %2602, label %2606, label %2603

2603:                                             ; preds = %2597
  %2604 = getelementptr inbounds %struct.Scene, ptr %2590, i64 0, i32 22, i32 29
  store i16 5, ptr %2604, align 4, !tbaa !502
  %2605 = and i32 %2600, -131073
  store i32 %2605, ptr %2599, align 8, !tbaa !121
  br label %2606

2606:                                             ; preds = %2597, %2603
  %2607 = load ptr, ptr %2590, align 8, !tbaa !399
  %2608 = icmp eq ptr %2607, null
  br i1 %2608, label %2583, label %2588, !llvm.loop !503

2609:                                             ; preds = %2629, %2583
  %2610 = icmp eq ptr %2527, null
  br i1 %2610, label %2652, label %2632

2611:                                             ; preds = %2586, %2629
  %2612 = phi ptr [ %2525, %2586 ], [ %2630, %2629 ]
  br i1 %2587, label %2617, label %2613

2613:                                             ; preds = %2611
  %2614 = getelementptr inbounds %struct.Camera, ptr %2612, i64 0, i32 4
  %2615 = load i16, ptr %2614, align 2, !tbaa !504
  %2616 = or i16 %2615, 4
  store i16 %2616, ptr %2614, align 2, !tbaa !504
  br label %2617

2617:                                             ; preds = %2613, %2611
  %2618 = getelementptr inbounds %struct.Camera, ptr %2612, i64 0, i32 4
  %2619 = load i16, ptr %2618, align 2, !tbaa !504
  %2620 = and i16 %2619, 8
  %2621 = icmp eq i16 %2620, 0
  br i1 %2621, label %2622, label %2624

2622:                                             ; preds = %2617
  %2623 = or disjoint i16 %2619, 8
  store i16 %2623, ptr %2618, align 2, !tbaa !504
  br label %2624

2624:                                             ; preds = %2622, %2617
  %2625 = getelementptr inbounds %struct.Camera, ptr %2612, i64 0, i32 5
  %2626 = load float, ptr %2625, align 4, !tbaa !505
  %2627 = fcmp une float %2626, 0.000000e+00
  br i1 %2627, label %2629, label %2628

2628:                                             ; preds = %2624
  store float 0x3FC99999A0000000, ptr %2625, align 4, !tbaa !505
  br label %2629

2629:                                             ; preds = %2624, %2628
  %2630 = load ptr, ptr %2612, align 8, !tbaa !506
  %2631 = icmp eq ptr %2630, null
  br i1 %2631, label %2609, label %2611, !llvm.loop !507

2632:                                             ; preds = %2609, %2649
  %2633 = phi ptr [ %2650, %2649 ], [ %2527, %2609 ]
  %2634 = getelementptr inbounds %struct.Material, ptr %2633, i64 0, i32 63
  %2635 = load float, ptr %2634, align 4, !tbaa !508
  %2636 = fcmp oeq float %2635, 0.000000e+00
  br i1 %2636, label %2637, label %2642

2637:                                             ; preds = %2632
  %2638 = getelementptr inbounds %struct.Material, ptr %2633, i64 0, i32 64
  store float 1.000000e+00, ptr %2638, align 8, !tbaa !509
  store float 1.000000e+00, ptr %2634, align 4, !tbaa !508
  %2639 = getelementptr inbounds %struct.Material, ptr %2633, i64 0, i32 51
  %2640 = load i32, ptr %2639, align 4, !tbaa !169
  %2641 = or i32 %2640, 16777216
  store i32 %2641, ptr %2639, align 4, !tbaa !169
  br label %2642

2642:                                             ; preds = %2637, %2632
  %2643 = getelementptr inbounds %struct.Material, ptr %2633, i64 0, i32 51
  %2644 = load i32, ptr %2643, align 4, !tbaa !169
  %2645 = and i32 %2644, 1
  %2646 = icmp eq i32 %2645, 0
  br i1 %2646, label %2649, label %2647

2647:                                             ; preds = %2642
  %2648 = or i32 %2644, 33554432
  store i32 %2648, ptr %2643, align 4, !tbaa !169
  br label %2649

2649:                                             ; preds = %2642, %2647
  %2650 = load ptr, ptr %2633, align 8, !tbaa !510
  %2651 = icmp eq ptr %2650, null
  br i1 %2651, label %2652, label %2632, !llvm.loop !511

2652:                                             ; preds = %2649, %2609, %2518
  %2653 = load i16, ptr %7, align 8, !tbaa !60
  %2654 = icmp slt i16 %2653, 242
  br i1 %2654, label %2655, label %2974

2655:                                             ; preds = %2652
  %2656 = getelementptr inbounds %struct.Main, ptr %2, i64 0, i32 25
  %2657 = load ptr, ptr %2656, align 8, !tbaa !34
  %2658 = icmp eq ptr %2657, null
  br i1 %2658, label %2674, label %2659

2659:                                             ; preds = %2655
  %2660 = icmp sgt i16 %2653, 225
  br label %2661

2661:                                             ; preds = %2659, %2671
  %2662 = phi ptr [ %2657, %2659 ], [ %2672, %2671 ]
  br i1 %2660, label %2663, label %2665

2663:                                             ; preds = %2661
  %2664 = getelementptr inbounds %struct.World, ptr %2662, i64 0, i32 25
  store i16 5, ptr %2664, align 2, !tbaa !280
  br label %2665

2665:                                             ; preds = %2663, %2661
  %2666 = getelementptr inbounds %struct.World, ptr %2662, i64 0, i32 50
  %2667 = load i16, ptr %2666, align 8, !tbaa !512
  %2668 = icmp eq i16 %2667, 1
  br i1 %2668, label %2669, label %2671

2669:                                             ; preds = %2665
  %2670 = getelementptr inbounds %struct.World, ptr %2662, i64 0, i32 53
  store i16 0, ptr %2670, align 2, !tbaa !513
  br label %2671

2671:                                             ; preds = %2665, %2669
  %2672 = load ptr, ptr %2662, align 8, !tbaa !34
  %2673 = icmp eq ptr %2672, null
  br i1 %2673, label %2674, label %2661, !llvm.loop !514

2674:                                             ; preds = %2671, %2655
  %2675 = getelementptr inbounds %struct.Main, ptr %2, i64 0, i32 33
  %2676 = load ptr, ptr %2675, align 8, !tbaa !34
  %2677 = icmp eq ptr %2676, null
  br i1 %2677, label %2688, label %2678

2678:                                             ; preds = %2674, %2685
  %2679 = phi ptr [ %2686, %2685 ], [ %2676, %2674 ]
  %2680 = getelementptr inbounds %struct.bArmature, ptr %2679, i64 0, i32 2
  call fastcc void @bone_version_239(ptr noundef nonnull %2680)
  %2681 = getelementptr inbounds %struct.bArmature, ptr %2679, i64 0, i32 15
  %2682 = load i32, ptr %2681, align 8, !tbaa !499
  %2683 = icmp eq i32 %2682, 0
  br i1 %2683, label %2684, label %2685

2684:                                             ; preds = %2678
  store i32 1, ptr %2681, align 8, !tbaa !499
  br label %2685

2685:                                             ; preds = %2678, %2684
  %2686 = load ptr, ptr %2679, align 8, !tbaa !34
  %2687 = icmp eq ptr %2686, null
  br i1 %2687, label %2688, label %2678, !llvm.loop !515

2688:                                             ; preds = %2685, %2674
  %2689 = getelementptr inbounds %struct.Main, ptr %2, i64 0, i32 11
  %2690 = load ptr, ptr %2689, align 8, !tbaa !34
  %2691 = icmp eq ptr %2690, null
  br i1 %2691, label %2825, label %2692

2692:                                             ; preds = %2688, %2822
  %2693 = phi ptr [ %2823, %2822 ], [ %2690, %2688 ]
  %2694 = getelementptr inbounds %struct.Scene, ptr %2693, i64 0, i32 23
  %2695 = load i32, ptr %2694, align 8, !tbaa !290
  %2696 = icmp eq i32 %2695, 0
  br i1 %2696, label %2697, label %2698

2697:                                             ; preds = %2692
  store i32 44100, ptr %2694, align 8, !tbaa !290
  br label %2698

2698:                                             ; preds = %2697, %2692
  %2699 = getelementptr inbounds %struct.Scene, ptr %2693, i64 0, i32 22, i32 35
  %2700 = load i16, ptr %2699, align 4, !tbaa !516
  %2701 = icmp slt i16 %2700, 2
  br i1 %2701, label %2702, label %2703

2702:                                             ; preds = %2698
  store i16 4, ptr %2699, align 4, !tbaa !516
  br label %2703

2703:                                             ; preds = %2702, %2698
  %2704 = getelementptr inbounds %struct.Scene, ptr %2693, i64 0, i32 22, i32 36
  %2705 = load i16, ptr %2704, align 2, !tbaa !517
  %2706 = icmp slt i16 %2705, 2
  br i1 %2706, label %2707, label %2708

2707:                                             ; preds = %2703
  store i16 4, ptr %2704, align 2, !tbaa !517
  br label %2708

2708:                                             ; preds = %2707, %2703
  %2709 = getelementptr inbounds %struct.Scene, ptr %2693, i64 0, i32 22, i32 60
  %2710 = load ptr, ptr %2709, align 8, !tbaa !518
  %2711 = icmp eq ptr %2710, null
  br i1 %2711, label %2715, label %2712

2712:                                             ; preds = %2708
  %2713 = load ptr, ptr %2709, align 8, !tbaa !34
  %2714 = icmp eq ptr %2713, null
  br i1 %2714, label %2731, label %2717

2715:                                             ; preds = %2708
  %2716 = call ptr @BKE_scene_add_render_layer(ptr noundef nonnull %2693, ptr noundef null) #11
  br label %2731

2717:                                             ; preds = %2712, %2725
  %2718 = phi ptr [ %2729, %2725 ], [ %2713, %2712 ]
  %2719 = getelementptr inbounds %struct.SceneRenderLayer, ptr %2718, i64 0, i32 8
  %2720 = load i32, ptr %2719, align 4, !tbaa !519
  %2721 = and i32 %2720, 1
  %2722 = icmp eq i32 %2721, 0
  br i1 %2722, label %2725, label %2723

2723:                                             ; preds = %2717
  %2724 = or i32 %2720, 16
  store i32 %2724, ptr %2719, align 4, !tbaa !519
  br label %2725

2725:                                             ; preds = %2723, %2717
  %2726 = getelementptr inbounds %struct.SceneRenderLayer, ptr %2718, i64 0, i32 9
  %2727 = load i32, ptr %2726, align 8, !tbaa !522
  %2728 = and i32 %2727, 771
  store i32 %2728, ptr %2726, align 8, !tbaa !522
  %2729 = load ptr, ptr %2718, align 8, !tbaa !34
  %2730 = icmp eq ptr %2729, null
  br i1 %2730, label %2731, label %2717, !llvm.loop !523

2731:                                             ; preds = %2725, %2712, %2715
  %2732 = getelementptr inbounds %struct.Scene, ptr %2693, i64 0, i32 18
  %2733 = load ptr, ptr %2732, align 8, !tbaa !524
  %2734 = icmp eq ptr %2733, null
  br i1 %2734, label %2777, label %2735

2735:                                             ; preds = %2731
  %2736 = getelementptr inbounds %struct.bNodeTree, ptr %2733, i64 0, i32 9
  %2737 = load i32, ptr %2736, align 8, !tbaa !525
  %2738 = icmp eq i32 %2737, 1
  br i1 %2738, label %2739, label %2777

2739:                                             ; preds = %2735
  %2740 = getelementptr inbounds %struct.bNodeTree, ptr %2733, i64 0, i32 7
  %2741 = load ptr, ptr %2740, align 8, !tbaa !34
  %2742 = icmp eq ptr %2741, null
  br i1 %2742, label %2777, label %2743

2743:                                             ; preds = %2739, %2774
  %2744 = phi ptr [ %2775, %2774 ], [ %2741, %2739 ]
  %2745 = getelementptr inbounds %struct.bNode, ptr %2744, i64 0, i32 8
  %2746 = load i16, ptr %2745, align 4, !tbaa !528
  switch i16 %2746, label %2774 [
    i16 211, label %2747
    i16 215, label %2760
  ]

2747:                                             ; preds = %2743
  %2748 = getelementptr inbounds %struct.bNode, ptr %2744, i64 0, i32 21
  %2749 = load ptr, ptr %2748, align 8, !tbaa !530
  %2750 = icmp eq ptr %2749, null
  br i1 %2750, label %2751, label %2774

2751:                                             ; preds = %2747
  %2752 = load ptr, ptr @MEM_callocN, align 8, !tbaa !34
  %2753 = call ptr %2752(i64 noundef 40, ptr noundef nonnull @.str.19) #11
  %2754 = getelementptr inbounds %struct.bNode, ptr %2744, i64 0, i32 33
  %2755 = load i16, ptr %2754, align 8, !tbaa !531
  store i16 %2755, ptr %2753, align 4, !tbaa !532
  %2756 = getelementptr inbounds %struct.bNode, ptr %2744, i64 0, i32 34
  %2757 = load i16, ptr %2756, align 2, !tbaa !534
  %2758 = getelementptr inbounds %struct.NodeBlurData, ptr %2753, i64 0, i32 1
  store i16 %2757, ptr %2758, align 2, !tbaa !535
  %2759 = getelementptr inbounds %struct.NodeBlurData, ptr %2753, i64 0, i32 11
  store i16 2, ptr %2759, align 4, !tbaa !536
  store ptr %2753, ptr %2748, align 8, !tbaa !530
  br label %2774

2760:                                             ; preds = %2743
  %2761 = getelementptr inbounds %struct.bNode, ptr %2744, i64 0, i32 21
  %2762 = load ptr, ptr %2761, align 8, !tbaa !530
  %2763 = icmp eq ptr %2762, null
  br i1 %2763, label %2764, label %2774

2764:                                             ; preds = %2760
  %2765 = load ptr, ptr @MEM_callocN, align 8, !tbaa !34
  %2766 = call ptr %2765(i64 noundef 40, ptr noundef nonnull @.str.19) #11
  %2767 = getelementptr inbounds %struct.bNode, ptr %2744, i64 0, i32 33
  %2768 = load i16, ptr %2767, align 8, !tbaa !531
  %2769 = getelementptr inbounds %struct.NodeBlurData, ptr %2766, i64 0, i32 2
  store i16 %2768, ptr %2769, align 4, !tbaa !537
  %2770 = getelementptr inbounds %struct.bNode, ptr %2744, i64 0, i32 34
  %2771 = load i16, ptr %2770, align 2, !tbaa !534
  %2772 = getelementptr inbounds %struct.NodeBlurData, ptr %2766, i64 0, i32 3
  store i16 %2771, ptr %2772, align 2, !tbaa !538
  %2773 = getelementptr inbounds %struct.NodeBlurData, ptr %2766, i64 0, i32 8
  store float 1.000000e+00, ptr %2773, align 4, !tbaa !539
  store ptr %2766, ptr %2761, align 8, !tbaa !530
  br label %2774

2774:                                             ; preds = %2764, %2760, %2751, %2747, %2743
  %2775 = load ptr, ptr %2744, align 8, !tbaa !34
  %2776 = icmp eq ptr %2775, null
  br i1 %2776, label %2777, label %2743, !llvm.loop !540

2777:                                             ; preds = %2774, %2739, %2735, %2731
  %2778 = getelementptr inbounds %struct.Scene, ptr %2693, i64 0, i32 20
  %2779 = load ptr, ptr %2778, align 8, !tbaa !448
  %2780 = getelementptr inbounds %struct.ToolSettings, ptr %2779, i64 0, i32 9
  %2781 = load i8, ptr %2780, align 8, !tbaa !541
  %2782 = icmp eq i8 %2781, 0
  br i1 %2782, label %2783, label %2785

2783:                                             ; preds = %2777
  %2784 = getelementptr inbounds %struct.ToolSettings, ptr %2779, i64 0, i32 10
  store i8 1, ptr %2784, align 1, !tbaa !542
  store i8 1, ptr %2780, align 8, !tbaa !541
  br label %2785

2785:                                             ; preds = %2783, %2777
  %2786 = getelementptr inbounds %struct.Scene, ptr %2693, i64 0, i32 22, i32 47
  %2787 = load i32, ptr %2786, align 8, !tbaa !121
  %2788 = and i32 %2787, 1024
  %2789 = icmp eq i32 %2788, 0
  br i1 %2789, label %2822, label %2790

2790:                                             ; preds = %2785
  %2791 = getelementptr inbounds %struct.Scene, ptr %2693, i64 0, i32 22, i32 33
  %2792 = load i32, ptr %2791, align 4, !tbaa !543
  %2793 = getelementptr inbounds %struct.Scene, ptr %2693, i64 0, i32 22, i32 34
  %2794 = load i32, ptr %2793, align 8, !tbaa !544
  %2795 = icmp slt i32 %2792, %2794
  br i1 %2795, label %2796, label %2822

2796:                                             ; preds = %2790
  %2797 = getelementptr inbounds %struct.Scene, ptr %2693, i64 0, i32 2
  %2798 = load ptr, ptr %2797, align 8, !tbaa !545
  %2799 = call ptr @blo_do_versions_newlibadr(ptr noundef %0, ptr noundef %1, ptr noundef %2798) #11
  %2800 = icmp eq ptr %2799, null
  br i1 %2800, label %2822, label %2801

2801:                                             ; preds = %2796
  %2802 = getelementptr inbounds %struct.Object, ptr %2799, i64 0, i32 3
  %2803 = load i16, ptr %2802, align 8, !tbaa !285
  %2804 = icmp eq i16 %2803, 11
  br i1 %2804, label %2805, label %2822

2805:                                             ; preds = %2801
  %2806 = getelementptr inbounds %struct.Object, ptr %2799, i64 0, i32 19
  %2807 = load ptr, ptr %2806, align 8, !tbaa !430
  %2808 = call ptr @blo_do_versions_newlibadr(ptr noundef %0, ptr noundef %1, ptr noundef %2807) #11
  %2809 = getelementptr inbounds %struct.Camera, ptr %2808, i64 0, i32 8
  %2810 = load float, ptr %2809, align 8, !tbaa !403
  %2811 = fcmp ult float %2810, 1.000000e+01
  br i1 %2811, label %2822, label %2812

2812:                                             ; preds = %2805
  %2813 = load i16, ptr %2699, align 4, !tbaa !516
  %2814 = sext i16 %2813 to i32
  %2815 = load i32, ptr %2791, align 4, !tbaa !543
  %2816 = mul nsw i32 %2815, %2814
  store i32 %2816, ptr %2791, align 4, !tbaa !543
  %2817 = load i32, ptr %2793, align 8, !tbaa !544
  %2818 = sitofp i32 %2817 to float
  %2819 = sitofp i32 %2816 to float
  %2820 = fdiv float %2818, %2819
  %2821 = fmul float %2810, %2820
  store float %2821, ptr %2809, align 8, !tbaa !403
  br label %2822

2822:                                             ; preds = %2796, %2801, %2812, %2805, %2785, %2790
  %2823 = load ptr, ptr %2693, align 8, !tbaa !34
  %2824 = icmp eq ptr %2823, null
  br i1 %2824, label %2825, label %2692, !llvm.loop !546

2825:                                             ; preds = %2822, %2688
  %2826 = getelementptr inbounds %struct.Main, ptr %2, i64 0, i32 35
  %2827 = load ptr, ptr %2826, align 8, !tbaa !34
  %2828 = icmp eq ptr %2827, null
  br i1 %2828, label %2875, label %2829

2829:                                             ; preds = %2825, %2872
  %2830 = phi ptr [ %2873, %2872 ], [ %2827, %2825 ]
  %2831 = getelementptr inbounds %struct.bNodeTree, ptr %2830, i64 0, i32 9
  %2832 = load i32, ptr %2831, align 8, !tbaa !525
  %2833 = icmp eq i32 %2832, 1
  br i1 %2833, label %2834, label %2872

2834:                                             ; preds = %2829
  %2835 = getelementptr inbounds %struct.bNodeTree, ptr %2830, i64 0, i32 7
  %2836 = load ptr, ptr %2835, align 8, !tbaa !34
  %2837 = icmp eq ptr %2836, null
  br i1 %2837, label %2872, label %2838

2838:                                             ; preds = %2834, %2869
  %2839 = phi ptr [ %2870, %2869 ], [ %2836, %2834 ]
  %2840 = getelementptr inbounds %struct.bNode, ptr %2839, i64 0, i32 8
  %2841 = load i16, ptr %2840, align 4, !tbaa !528
  switch i16 %2841, label %2869 [
    i16 211, label %2842
    i16 215, label %2855
  ]

2842:                                             ; preds = %2838
  %2843 = getelementptr inbounds %struct.bNode, ptr %2839, i64 0, i32 21
  %2844 = load ptr, ptr %2843, align 8, !tbaa !530
  %2845 = icmp eq ptr %2844, null
  br i1 %2845, label %2846, label %2869

2846:                                             ; preds = %2842
  %2847 = load ptr, ptr @MEM_callocN, align 8, !tbaa !34
  %2848 = call ptr %2847(i64 noundef 40, ptr noundef nonnull @.str.19) #11
  %2849 = getelementptr inbounds %struct.bNode, ptr %2839, i64 0, i32 33
  %2850 = load i16, ptr %2849, align 8, !tbaa !531
  store i16 %2850, ptr %2848, align 4, !tbaa !532
  %2851 = getelementptr inbounds %struct.bNode, ptr %2839, i64 0, i32 34
  %2852 = load i16, ptr %2851, align 2, !tbaa !534
  %2853 = getelementptr inbounds %struct.NodeBlurData, ptr %2848, i64 0, i32 1
  store i16 %2852, ptr %2853, align 2, !tbaa !535
  %2854 = getelementptr inbounds %struct.NodeBlurData, ptr %2848, i64 0, i32 11
  store i16 2, ptr %2854, align 4, !tbaa !536
  store ptr %2848, ptr %2843, align 8, !tbaa !530
  br label %2869

2855:                                             ; preds = %2838
  %2856 = getelementptr inbounds %struct.bNode, ptr %2839, i64 0, i32 21
  %2857 = load ptr, ptr %2856, align 8, !tbaa !530
  %2858 = icmp eq ptr %2857, null
  br i1 %2858, label %2859, label %2869

2859:                                             ; preds = %2855
  %2860 = load ptr, ptr @MEM_callocN, align 8, !tbaa !34
  %2861 = call ptr %2860(i64 noundef 40, ptr noundef nonnull @.str.19) #11
  %2862 = getelementptr inbounds %struct.bNode, ptr %2839, i64 0, i32 33
  %2863 = load i16, ptr %2862, align 8, !tbaa !531
  %2864 = getelementptr inbounds %struct.NodeBlurData, ptr %2861, i64 0, i32 2
  store i16 %2863, ptr %2864, align 4, !tbaa !537
  %2865 = getelementptr inbounds %struct.bNode, ptr %2839, i64 0, i32 34
  %2866 = load i16, ptr %2865, align 2, !tbaa !534
  %2867 = getelementptr inbounds %struct.NodeBlurData, ptr %2861, i64 0, i32 3
  store i16 %2866, ptr %2867, align 2, !tbaa !538
  %2868 = getelementptr inbounds %struct.NodeBlurData, ptr %2861, i64 0, i32 8
  store float 1.000000e+00, ptr %2868, align 4, !tbaa !539
  store ptr %2861, ptr %2856, align 8, !tbaa !530
  br label %2869

2869:                                             ; preds = %2859, %2855, %2846, %2842, %2838
  %2870 = load ptr, ptr %2839, align 8, !tbaa !34
  %2871 = icmp eq ptr %2870, null
  br i1 %2871, label %2872, label %2838, !llvm.loop !540

2872:                                             ; preds = %2869, %2829, %2834
  %2873 = load ptr, ptr %2830, align 8, !tbaa !34
  %2874 = icmp eq ptr %2873, null
  br i1 %2874, label %2875, label %2829, !llvm.loop !547

2875:                                             ; preds = %2872, %2825
  %2876 = getelementptr inbounds %struct.Main, ptr %2, i64 0, i32 21
  %2877 = load ptr, ptr %2876, align 8, !tbaa !34
  %2878 = icmp eq ptr %2877, null
  br i1 %2878, label %2888, label %2879

2879:                                             ; preds = %2875, %2885
  %2880 = phi ptr [ %2886, %2885 ], [ %2877, %2875 ]
  %2881 = getelementptr inbounds %struct.Lamp, ptr %2880, i64 0, i32 34
  %2882 = load i16, ptr %2881, align 4, !tbaa !548
  %2883 = icmp eq i16 %2882, 0
  br i1 %2883, label %2884, label %2885

2884:                                             ; preds = %2879
  store i16 1, ptr %2881, align 4, !tbaa !548
  br label %2885

2885:                                             ; preds = %2879, %2884
  %2886 = load ptr, ptr %2880, align 8, !tbaa !34
  %2887 = icmp eq ptr %2886, null
  br i1 %2887, label %2888, label %2879, !llvm.loop !549

2888:                                             ; preds = %2885, %2875
  %2889 = getelementptr inbounds %struct.Main, ptr %2, i64 0, i32 18
  %2890 = load ptr, ptr %2889, align 8, !tbaa !34
  %2891 = icmp eq ptr %2890, null
  br i1 %2891, label %2905, label %2892

2892:                                             ; preds = %2888, %2902
  %2893 = phi ptr [ %2903, %2902 ], [ %2890, %2888 ]
  %2894 = getelementptr inbounds %struct.Tex, ptr %2893, i64 0, i32 56
  %2895 = load ptr, ptr %2894, align 8, !tbaa !550
  %2896 = icmp eq ptr %2895, null
  br i1 %2896, label %2902, label %2897

2897:                                             ; preds = %2892
  %2898 = getelementptr inbounds %struct.EnvMap, ptr %2895, i64 0, i32 9
  %2899 = load float, ptr %2898, align 8, !tbaa !551
  %2900 = fcmp oeq float %2899, 0.000000e+00
  br i1 %2900, label %2901, label %2902

2901:                                             ; preds = %2897
  store float 1.000000e+00, ptr %2898, align 8, !tbaa !551
  br label %2902

2902:                                             ; preds = %2892, %2897, %2901
  %2903 = load ptr, ptr %2893, align 8, !tbaa !34
  %2904 = icmp eq ptr %2903, null
  br i1 %2904, label %2905, label %2892, !llvm.loop !553

2905:                                             ; preds = %2902, %2888
  %2906 = getelementptr inbounds %struct.Main, ptr %2, i64 0, i32 13
  %2907 = load ptr, ptr %2906, align 8, !tbaa !34
  %2908 = icmp eq ptr %2907, null
  br i1 %2908, label %2919, label %2909

2909:                                             ; preds = %2905, %2916
  %2910 = phi ptr [ %2917, %2916 ], [ %2907, %2905 ]
  %2911 = getelementptr inbounds %struct.Object, ptr %2910, i64 0, i32 89
  %2912 = load float, ptr %2911, align 8, !tbaa !554
  %2913 = fcmp oeq float %2912, 0.000000e+00
  br i1 %2913, label %2914, label %2916

2914:                                             ; preds = %2909
  %2915 = getelementptr inbounds %struct.Object, ptr %2910, i64 0, i32 88
  store i8 1, ptr %2915, align 1, !tbaa !555
  store float 1.000000e+00, ptr %2911, align 8, !tbaa !554
  br label %2916

2916:                                             ; preds = %2909, %2914
  %2917 = load ptr, ptr %2910, align 8, !tbaa !34
  %2918 = icmp eq ptr %2917, null
  br i1 %2918, label %2919, label %2909, !llvm.loop !556

2919:                                             ; preds = %2916, %2905
  %2920 = getelementptr inbounds %struct.Main, ptr %2, i64 0, i32 17
  %2921 = load ptr, ptr %2920, align 8, !tbaa !34
  %2922 = icmp eq ptr %2921, null
  br i1 %2922, label %2957, label %2923

2923:                                             ; preds = %2919, %2954
  %2924 = phi ptr [ %2955, %2954 ], [ %2921, %2919 ]
  br label %2925

2925:                                             ; preds = %2923, %2946
  %2926 = phi i64 [ 0, %2923 ], [ %2947, %2946 ]
  %2927 = getelementptr inbounds %struct.Material, ptr %2924, i64 0, i32 102, i64 %2926
  %2928 = load ptr, ptr %2927, align 8, !tbaa !34
  %2929 = icmp eq ptr %2928, null
  br i1 %2929, label %2946, label %2930

2930:                                             ; preds = %2925
  %2931 = getelementptr inbounds %struct.MTex, ptr %2928, i64 0, i32 5
  %2932 = load ptr, ptr %2931, align 8, !tbaa !557
  %2933 = icmp eq ptr %2932, null
  br i1 %2933, label %2946, label %2934

2934:                                             ; preds = %2930
  %2935 = call ptr @blo_do_versions_newlibadr(ptr noundef %0, ptr noundef %1, ptr noundef nonnull %2932) #11
  %2936 = icmp eq ptr %2935, null
  br i1 %2936, label %2946, label %2937

2937:                                             ; preds = %2934
  %2938 = getelementptr inbounds %struct.Tex, ptr %2935, i64 0, i32 32
  %2939 = load i16, ptr %2938, align 8, !tbaa !559
  %2940 = icmp eq i16 %2939, 6
  br i1 %2940, label %2941, label %2946

2941:                                             ; preds = %2937
  %2942 = load ptr, ptr %2927, align 8, !tbaa !34
  %2943 = getelementptr inbounds %struct.MTex, ptr %2942, i64 0, i32 1
  %2944 = load i16, ptr %2943, align 2, !tbaa !560
  %2945 = and i16 %2944, -50
  store i16 %2945, ptr %2943, align 2, !tbaa !560
  br label %2946

2946:                                             ; preds = %2925, %2930, %2941, %2937, %2934
  %2947 = add nuw nsw i64 %2926, 1
  %2948 = icmp eq i64 %2947, 18
  br i1 %2948, label %2949, label %2925, !llvm.loop !561

2949:                                             ; preds = %2946
  %2950 = getelementptr inbounds %struct.Material, ptr %2924, i64 0, i32 35
  %2951 = load float, ptr %2950, align 8, !tbaa !562
  %2952 = fcmp oeq float %2951, 0.000000e+00
  br i1 %2952, label %2953, label %2954

2953:                                             ; preds = %2949
  store float 1.000000e+00, ptr %2950, align 8, !tbaa !562
  br label %2954

2954:                                             ; preds = %2953, %2949
  %2955 = load ptr, ptr %2924, align 8, !tbaa !34
  %2956 = icmp eq ptr %2955, null
  br i1 %2956, label %2957, label %2923, !llvm.loop !563

2957:                                             ; preds = %2954, %2919
  %2958 = load i16, ptr %7, align 8, !tbaa !60
  %2959 = icmp eq i16 %2958, 241
  br i1 %2959, label %2960, label %2974

2960:                                             ; preds = %2957
  %2961 = getelementptr inbounds %struct.Main, ptr %2, i64 0, i32 19
  %2962 = load ptr, ptr %2961, align 8, !tbaa !34
  %2963 = icmp eq ptr %2962, null
  br i1 %2963, label %2974, label %2964

2964:                                             ; preds = %2960, %2971
  %2965 = phi ptr [ %2972, %2971 ], [ %2962, %2960 ]
  %2966 = getelementptr inbounds %struct.Image, ptr %2965, i64 0, i32 1
  %2967 = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %2966, ptr noundef nonnull dereferenceable(11) @.str.9) #12
  %2968 = icmp eq i32 %2967, 0
  br i1 %2968, label %2969, label %2971

2969:                                             ; preds = %2964
  %2970 = getelementptr inbounds %struct.ID, ptr %2965, i64 0, i32 4, i64 2
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(12) %2970, ptr noundef nonnull align 1 dereferenceable(12) @.str.10, i64 12, i1 false) #11
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(12) %2966, ptr noundef nonnull align 1 dereferenceable(12) @.str.10, i64 12, i1 false) #11
  br label %2971

2971:                                             ; preds = %2964, %2969
  %2972 = load ptr, ptr %2965, align 8, !tbaa !34
  %2973 = icmp eq ptr %2972, null
  br i1 %2973, label %2974, label %2964, !llvm.loop !564

2974:                                             ; preds = %2971, %2960, %2957, %2652
  %2975 = load i16, ptr %7, align 8, !tbaa !60
  %2976 = icmp slt i16 %2975, 243
  br i1 %2976, label %2977, label %3814

2977:                                             ; preds = %2974
  %2978 = getelementptr inbounds %struct.Main, ptr %2, i64 0, i32 26
  %2979 = load ptr, ptr %2978, align 8, !tbaa !34
  %2980 = icmp eq ptr %2979, null
  br i1 %2980, label %3010, label %2984

2981:                                             ; preds = %2989, %2984
  %2982 = load ptr, ptr %2985, align 8, !tbaa !34
  %2983 = icmp eq ptr %2982, null
  br i1 %2983, label %3010, label %2984, !llvm.loop !565

2984:                                             ; preds = %2977, %2981
  %2985 = phi ptr [ %2982, %2981 ], [ %2979, %2977 ]
  %2986 = getelementptr inbounds %struct.bScreen, ptr %2985, i64 0, i32 3
  %2987 = load ptr, ptr %2986, align 8, !tbaa !34
  %2988 = icmp eq ptr %2987, null
  br i1 %2988, label %2981, label %2992

2989:                                             ; preds = %3007, %2992
  %2990 = load ptr, ptr %2993, align 8, !tbaa !34
  %2991 = icmp eq ptr %2990, null
  br i1 %2991, label %2981, label %2992, !llvm.loop !566

2992:                                             ; preds = %2984, %2989
  %2993 = phi ptr [ %2990, %2989 ], [ %2987, %2984 ]
  %2994 = getelementptr inbounds %struct.ScrArea, ptr %2993, i64 0, i32 19
  %2995 = load ptr, ptr %2994, align 8, !tbaa !34
  %2996 = icmp eq ptr %2995, null
  br i1 %2996, label %2989, label %2997

2997:                                             ; preds = %2992, %3007
  %2998 = phi ptr [ %3008, %3007 ], [ %2995, %2992 ]
  %2999 = getelementptr inbounds %struct.SpaceLink, ptr %2998, i64 0, i32 3
  %3000 = load i32, ptr %2999, align 8, !tbaa !127
  %3001 = icmp eq i32 %3000, 1
  br i1 %3001, label %3002, label %3007

3002:                                             ; preds = %2997
  %3003 = getelementptr inbounds %struct.View3D, ptr %2998, i64 0, i32 38
  %3004 = load i16, ptr %3003, align 8, !tbaa !567
  %3005 = icmp eq i16 %3004, 0
  br i1 %3005, label %3006, label %3007

3006:                                             ; preds = %3002
  store i16 10, ptr %3003, align 8, !tbaa !567
  br label %3007

3007:                                             ; preds = %3002, %3006, %2997
  %3008 = load ptr, ptr %2998, align 8, !tbaa !34
  %3009 = icmp eq ptr %3008, null
  br i1 %3009, label %2989, label %2997, !llvm.loop !568

3010:                                             ; preds = %2981, %2977
  %3011 = getelementptr inbounds %struct.Main, ptr %2, i64 0, i32 11
  %3012 = load ptr, ptr %3011, align 8, !tbaa !34
  %3013 = icmp eq ptr %3012, null
  br i1 %3013, label %3082, label %3014

3014:                                             ; preds = %3010, %3079
  %3015 = phi ptr [ %3080, %3079 ], [ %3012, %3010 ]
  %3016 = getelementptr inbounds %struct.Scene, ptr %3015, i64 0, i32 20
  %3017 = load ptr, ptr %3016, align 8, !tbaa !448
  %3018 = getelementptr inbounds %struct.ToolSettings, ptr %3017, i64 0, i32 20
  %3019 = load float, ptr %3018, align 4, !tbaa !569
  %3020 = fcmp oeq float %3019, 0.000000e+00
  br i1 %3020, label %3021, label %3022

3021:                                             ; preds = %3014
  store float 0x3F847AE140000000, ptr %3018, align 4, !tbaa !569
  br label %3022

3022:                                             ; preds = %3021, %3014
  %3023 = getelementptr inbounds %struct.Scene, ptr %3015, i64 0, i32 22, i32 14
  %3024 = load i16, ptr %3023, align 2, !tbaa !570
  %3025 = icmp eq i16 %3024, 0
  br i1 %3025, label %3026, label %3032

3026:                                             ; preds = %3022
  %3027 = getelementptr inbounds %struct.Scene, ptr %3015, i64 0, i32 22, i32 47
  %3028 = load i32, ptr %3027, align 8, !tbaa !121
  %3029 = and i32 %3028, 524288
  %3030 = icmp eq i32 %3029, 0
  %3031 = select i1 %3030, i16 1, i16 2
  store i16 %3031, ptr %3023, align 2, !tbaa !570
  br label %3032

3032:                                             ; preds = %3026, %3022
  %3033 = getelementptr inbounds %struct.Scene, ptr %3015, i64 0, i32 18
  %3034 = load ptr, ptr %3033, align 8, !tbaa !524
  %3035 = icmp eq ptr %3034, null
  br i1 %3035, label %3079, label %3036

3036:                                             ; preds = %3032
  %3037 = getelementptr inbounds %struct.bNodeTree, ptr %3034, i64 0, i32 9
  %3038 = load i32, ptr %3037, align 8, !tbaa !525
  switch i32 %3038, label %3079 [
    i32 1, label %3039
    i32 0, label %3060
  ]

3039:                                             ; preds = %3036
  %3040 = getelementptr inbounds %struct.bNodeTree, ptr %3034, i64 0, i32 7
  %3041 = load ptr, ptr %3040, align 8, !tbaa !34
  %3042 = icmp eq ptr %3041, null
  br i1 %3042, label %3079, label %3043

3043:                                             ; preds = %3039, %3057
  %3044 = phi ptr [ %3058, %3057 ], [ %3041, %3039 ]
  %3045 = getelementptr inbounds %struct.bNode, ptr %3044, i64 0, i32 8
  %3046 = load i16, ptr %3045, align 4, !tbaa !528
  %3047 = icmp eq i16 %3046, 219
  br i1 %3047, label %3048, label %3057

3048:                                             ; preds = %3043
  %3049 = getelementptr inbounds %struct.bNode, ptr %3044, i64 0, i32 21
  %3050 = load ptr, ptr %3049, align 8, !tbaa !530
  %3051 = icmp eq ptr %3050, null
  br i1 %3051, label %3057, label %3052

3052:                                             ; preds = %3048
  %3053 = getelementptr inbounds %struct.NodeHueSat, ptr %3050, i64 0, i32 2
  %3054 = load float, ptr %3053, align 4, !tbaa !571
  %3055 = fcmp oeq float %3054, 0.000000e+00
  br i1 %3055, label %3056, label %3057

3056:                                             ; preds = %3052
  store float 1.000000e+00, ptr %3053, align 4, !tbaa !571
  br label %3057

3057:                                             ; preds = %3056, %3052, %3048, %3043
  %3058 = load ptr, ptr %3044, align 8, !tbaa !34
  %3059 = icmp eq ptr %3058, null
  br i1 %3059, label %3079, label %3043, !llvm.loop !573

3060:                                             ; preds = %3036
  %3061 = getelementptr inbounds %struct.bNodeTree, ptr %3034, i64 0, i32 7
  %3062 = load ptr, ptr %3061, align 8, !tbaa !34
  %3063 = icmp eq ptr %3062, null
  br i1 %3063, label %3079, label %3064

3064:                                             ; preds = %3060, %3076
  %3065 = phi ptr [ %3077, %3076 ], [ %3062, %3060 ]
  %3066 = getelementptr inbounds %struct.bNode, ptr %3065, i64 0, i32 8
  %3067 = load i16, ptr %3066, align 4, !tbaa !528
  %3068 = icmp eq i16 %3067, 108
  br i1 %3068, label %3069, label %3076

3069:                                             ; preds = %3064
  %3070 = getelementptr inbounds %struct.bNode, ptr %3065, i64 0, i32 21
  %3071 = load ptr, ptr %3070, align 8, !tbaa !530
  %3072 = icmp eq ptr %3071, null
  br i1 %3072, label %3073, label %3076

3073:                                             ; preds = %3069
  %3074 = load ptr, ptr @MEM_callocN, align 8, !tbaa !34
  %3075 = call ptr %3074(i64 noundef 128, ptr noundef nonnull @.str.20) #11
  store ptr %3075, ptr %3070, align 8, !tbaa !530
  br label %3076

3076:                                             ; preds = %3073, %3069, %3064
  %3077 = load ptr, ptr %3065, align 8, !tbaa !34
  %3078 = icmp eq ptr %3077, null
  br i1 %3078, label %3079, label %3064, !llvm.loop !574

3079:                                             ; preds = %3076, %3057, %3060, %3039, %3036, %3032
  %3080 = load ptr, ptr %3015, align 8, !tbaa !34
  %3081 = icmp eq ptr %3080, null
  br i1 %3081, label %3082, label %3014, !llvm.loop !575

3082:                                             ; preds = %3079, %3010
  %3083 = getelementptr inbounds %struct.Main, ptr %2, i64 0, i32 35
  %3084 = load ptr, ptr %3083, align 8, !tbaa !34
  %3085 = icmp eq ptr %3084, null
  br i1 %3085, label %3133, label %3086

3086:                                             ; preds = %3082, %3130
  %3087 = phi ptr [ %3131, %3130 ], [ %3084, %3082 ]
  %3088 = getelementptr inbounds %struct.bNodeTree, ptr %3087, i64 0, i32 9
  %3089 = load i32, ptr %3088, align 8, !tbaa !525
  switch i32 %3089, label %3130 [
    i32 1, label %3090
    i32 0, label %3111
  ]

3090:                                             ; preds = %3086
  %3091 = getelementptr inbounds %struct.bNodeTree, ptr %3087, i64 0, i32 7
  %3092 = load ptr, ptr %3091, align 8, !tbaa !34
  %3093 = icmp eq ptr %3092, null
  br i1 %3093, label %3130, label %3094

3094:                                             ; preds = %3090, %3108
  %3095 = phi ptr [ %3109, %3108 ], [ %3092, %3090 ]
  %3096 = getelementptr inbounds %struct.bNode, ptr %3095, i64 0, i32 8
  %3097 = load i16, ptr %3096, align 4, !tbaa !528
  %3098 = icmp eq i16 %3097, 219
  br i1 %3098, label %3099, label %3108

3099:                                             ; preds = %3094
  %3100 = getelementptr inbounds %struct.bNode, ptr %3095, i64 0, i32 21
  %3101 = load ptr, ptr %3100, align 8, !tbaa !530
  %3102 = icmp eq ptr %3101, null
  br i1 %3102, label %3108, label %3103

3103:                                             ; preds = %3099
  %3104 = getelementptr inbounds %struct.NodeHueSat, ptr %3101, i64 0, i32 2
  %3105 = load float, ptr %3104, align 4, !tbaa !571
  %3106 = fcmp oeq float %3105, 0.000000e+00
  br i1 %3106, label %3107, label %3108

3107:                                             ; preds = %3103
  store float 1.000000e+00, ptr %3104, align 4, !tbaa !571
  br label %3108

3108:                                             ; preds = %3107, %3103, %3099, %3094
  %3109 = load ptr, ptr %3095, align 8, !tbaa !34
  %3110 = icmp eq ptr %3109, null
  br i1 %3110, label %3130, label %3094, !llvm.loop !573

3111:                                             ; preds = %3086
  %3112 = getelementptr inbounds %struct.bNodeTree, ptr %3087, i64 0, i32 7
  %3113 = load ptr, ptr %3112, align 8, !tbaa !34
  %3114 = icmp eq ptr %3113, null
  br i1 %3114, label %3130, label %3115

3115:                                             ; preds = %3111, %3127
  %3116 = phi ptr [ %3128, %3127 ], [ %3113, %3111 ]
  %3117 = getelementptr inbounds %struct.bNode, ptr %3116, i64 0, i32 8
  %3118 = load i16, ptr %3117, align 4, !tbaa !528
  %3119 = icmp eq i16 %3118, 108
  br i1 %3119, label %3120, label %3127

3120:                                             ; preds = %3115
  %3121 = getelementptr inbounds %struct.bNode, ptr %3116, i64 0, i32 21
  %3122 = load ptr, ptr %3121, align 8, !tbaa !530
  %3123 = icmp eq ptr %3122, null
  br i1 %3123, label %3124, label %3127

3124:                                             ; preds = %3120
  %3125 = load ptr, ptr @MEM_callocN, align 8, !tbaa !34
  %3126 = call ptr %3125(i64 noundef 128, ptr noundef nonnull @.str.20) #11
  store ptr %3126, ptr %3121, align 8, !tbaa !530
  br label %3127

3127:                                             ; preds = %3124, %3120, %3115
  %3128 = load ptr, ptr %3116, align 8, !tbaa !34
  %3129 = icmp eq ptr %3128, null
  br i1 %3129, label %3130, label %3115, !llvm.loop !574

3130:                                             ; preds = %3127, %3108, %3086, %3090, %3111
  %3131 = load ptr, ptr %3087, align 8, !tbaa !34
  %3132 = icmp eq ptr %3131, null
  br i1 %3132, label %3133, label %3086, !llvm.loop !576

3133:                                             ; preds = %3130, %3082
  %3134 = getelementptr inbounds %struct.Main, ptr %2, i64 0, i32 15
  %3135 = load ptr, ptr %3134, align 8, !tbaa !34
  %3136 = icmp eq ptr %3135, null
  br i1 %3136, label %3190, label %3140

3137:                                             ; preds = %3187, %3140
  %3138 = load ptr, ptr %3141, align 8, !tbaa !34
  %3139 = icmp eq ptr %3138, null
  br i1 %3139, label %3190, label %3140, !llvm.loop !577

3140:                                             ; preds = %3133, %3137
  %3141 = phi ptr [ %3138, %3137 ], [ %3135, %3133 ]
  %3142 = getelementptr inbounds %struct.Curve, ptr %3141, i64 0, i32 3
  %3143 = load ptr, ptr %3142, align 8, !tbaa !34
  %3144 = icmp eq ptr %3143, null
  br i1 %3144, label %3137, label %3145

3145:                                             ; preds = %3140, %3187
  %3146 = phi ptr [ %3188, %3187 ], [ %3143, %3140 ]
  %3147 = getelementptr inbounds %struct.Nurb, ptr %3146, i64 0, i32 18
  %3148 = load ptr, ptr %3147, align 8, !tbaa !578
  %3149 = icmp eq ptr %3148, null
  br i1 %3149, label %3165, label %3150

3150:                                             ; preds = %3145
  %3151 = getelementptr inbounds %struct.Nurb, ptr %3146, i64 0, i32 6
  %3152 = load i32, ptr %3151, align 8, !tbaa !580
  %3153 = icmp sgt i32 %3152, 0
  br i1 %3153, label %3154, label %3187

3154:                                             ; preds = %3150, %3161
  %3155 = phi i32 [ %3162, %3161 ], [ 0, %3150 ]
  %3156 = phi ptr [ %3163, %3161 ], [ %3148, %3150 ]
  %3157 = getelementptr inbounds %struct.BezTriple, ptr %3156, i64 0, i32 3
  %3158 = load float, ptr %3157, align 4, !tbaa !581
  %3159 = fcmp une float %3158, 0.000000e+00
  br i1 %3159, label %3161, label %3160

3160:                                             ; preds = %3154
  store float 1.000000e+00, ptr %3157, align 4, !tbaa !581
  br label %3161

3161:                                             ; preds = %3154, %3160
  %3162 = add nuw nsw i32 %3155, 1
  %3163 = getelementptr inbounds %struct.BezTriple, ptr %3156, i64 1
  %3164 = icmp eq i32 %3162, %3152
  br i1 %3164, label %3187, label %3154, !llvm.loop !583

3165:                                             ; preds = %3145
  %3166 = getelementptr inbounds %struct.Nurb, ptr %3146, i64 0, i32 17
  %3167 = load ptr, ptr %3166, align 8, !tbaa !584
  %3168 = icmp eq ptr %3167, null
  br i1 %3168, label %3187, label %3169

3169:                                             ; preds = %3165
  %3170 = getelementptr inbounds %struct.Nurb, ptr %3146, i64 0, i32 6
  %3171 = load i32, ptr %3170, align 8, !tbaa !580
  %3172 = getelementptr inbounds %struct.Nurb, ptr %3146, i64 0, i32 7
  %3173 = load i32, ptr %3172, align 4, !tbaa !585
  %3174 = mul nsw i32 %3173, %3171
  %3175 = icmp sgt i32 %3174, 0
  br i1 %3175, label %3176, label %3187

3176:                                             ; preds = %3169, %3183
  %3177 = phi i32 [ %3184, %3183 ], [ 0, %3169 ]
  %3178 = phi ptr [ %3185, %3183 ], [ %3167, %3169 ]
  %3179 = getelementptr inbounds %struct.BPoint, ptr %3178, i64 0, i32 5
  %3180 = load float, ptr %3179, align 4, !tbaa !586
  %3181 = fcmp une float %3180, 0.000000e+00
  br i1 %3181, label %3183, label %3182

3182:                                             ; preds = %3176
  store float 1.000000e+00, ptr %3179, align 4, !tbaa !586
  br label %3183

3183:                                             ; preds = %3176, %3182
  %3184 = add nuw nsw i32 %3177, 1
  %3185 = getelementptr inbounds %struct.BPoint, ptr %3178, i64 1
  %3186 = icmp eq i32 %3184, %3174
  br i1 %3186, label %3187, label %3176, !llvm.loop !588

3187:                                             ; preds = %3161, %3183, %3150, %3169, %3165
  %3188 = load ptr, ptr %3146, align 8, !tbaa !34
  %3189 = icmp eq ptr %3188, null
  br i1 %3189, label %3137, label %3145, !llvm.loop !589

3190:                                             ; preds = %3137, %3133
  %3191 = getelementptr inbounds %struct.Main, ptr %2, i64 0, i32 13
  %3192 = load ptr, ptr %3191, align 8, !tbaa !34
  %3193 = icmp eq ptr %3192, null
  br i1 %3193, label %3303, label %3197

3194:                                             ; preds = %3300, %3282
  %3195 = load ptr, ptr %3198, align 8, !tbaa !34
  %3196 = icmp eq ptr %3195, null
  br i1 %3196, label %3303, label %3197, !llvm.loop !590

3197:                                             ; preds = %3190, %3194
  %3198 = phi ptr [ %3195, %3194 ], [ %3192, %3190 ]
  %3199 = getelementptr inbounds %struct.Object, ptr %3198, i64 0, i32 106
  %3200 = load ptr, ptr %3199, align 8, !tbaa !34
  %3201 = icmp eq ptr %3200, null
  br i1 %3201, label %3228, label %3202

3202:                                             ; preds = %3197, %3225
  %3203 = phi ptr [ %3226, %3225 ], [ %3200, %3197 ]
  %3204 = getelementptr inbounds %struct.bConstraint, ptr %3203, i64 0, i32 3
  %3205 = load i16, ptr %3204, align 8, !tbaa !283
  switch i16 %3205, label %3225 [
    i16 16, label %3206
    i16 8, label %3218
  ]

3206:                                             ; preds = %3202
  %3207 = getelementptr inbounds %struct.bConstraint, ptr %3203, i64 0, i32 2
  %3208 = load ptr, ptr %3207, align 8, !tbaa !52
  %3209 = getelementptr inbounds %struct.bMinMaxConstraint, ptr %3208, i64 0, i32 4
  %3210 = load i16, ptr %3209, align 4, !tbaa !591
  %3211 = icmp eq i16 %3210, 1
  %3212 = getelementptr inbounds %struct.bMinMaxConstraint, ptr %3208, i64 0, i32 3
  %3213 = load i32, ptr %3212, align 8, !tbaa !593
  br i1 %3211, label %3214, label %3216

3214:                                             ; preds = %3206
  %3215 = or i32 %3213, 1
  store i32 %3215, ptr %3212, align 8, !tbaa !593
  br label %3225

3216:                                             ; preds = %3206
  %3217 = and i32 %3213, -2
  store i32 %3217, ptr %3212, align 8, !tbaa !593
  br label %3225

3218:                                             ; preds = %3202
  %3219 = getelementptr inbounds %struct.bConstraint, ptr %3203, i64 0, i32 2
  %3220 = load ptr, ptr %3219, align 8, !tbaa !52
  %3221 = getelementptr inbounds %struct.bRotateLikeConstraint, ptr %3220, i64 0, i32 1
  %3222 = load i32, ptr %3221, align 8, !tbaa !594
  %3223 = icmp eq i32 %3222, 0
  br i1 %3223, label %3224, label %3225

3224:                                             ; preds = %3218
  store i32 7, ptr %3221, align 8, !tbaa !594
  br label %3225

3225:                                             ; preds = %3218, %3224, %3214, %3216, %3202
  %3226 = load ptr, ptr %3203, align 8, !tbaa !34
  %3227 = icmp eq ptr %3226, null
  br i1 %3227, label %3228, label %3202, !llvm.loop !596

3228:                                             ; preds = %3225, %3197
  %3229 = getelementptr inbounds %struct.Object, ptr %3198, i64 0, i32 3
  %3230 = load i16, ptr %3229, align 8, !tbaa !285
  %3231 = icmp eq i16 %3230, 25
  br i1 %3231, label %3232, label %3282

3232:                                             ; preds = %3228
  %3233 = getelementptr inbounds %struct.Object, ptr %3198, i64 0, i32 18
  %3234 = load ptr, ptr %3233, align 8, !tbaa !286
  %3235 = icmp eq ptr %3234, null
  br i1 %3235, label %3282, label %3236

3236:                                             ; preds = %3232
  %3237 = load ptr, ptr %3234, align 8, !tbaa !34
  %3238 = icmp eq ptr %3237, null
  br i1 %3238, label %3282, label %3242

3239:                                             ; preds = %3279, %3242
  %3240 = load ptr, ptr %3243, align 8, !tbaa !34
  %3241 = icmp eq ptr %3240, null
  br i1 %3241, label %3282, label %3242, !llvm.loop !597

3242:                                             ; preds = %3236, %3239
  %3243 = phi ptr [ %3240, %3239 ], [ %3237, %3236 ]
  %3244 = getelementptr inbounds %struct.bPoseChannel, ptr %3243, i64 0, i32 3
  %3245 = load ptr, ptr %3244, align 8, !tbaa !34
  %3246 = icmp eq ptr %3245, null
  br i1 %3246, label %3239, label %3247

3247:                                             ; preds = %3242, %3279
  %3248 = phi ptr [ %3280, %3279 ], [ %3245, %3242 ]
  %3249 = getelementptr inbounds %struct.bConstraint, ptr %3248, i64 0, i32 3
  %3250 = load i16, ptr %3249, align 8, !tbaa !283
  switch i16 %3250, label %3279 [
    i16 16, label %3251
    i16 3, label %3263
    i16 8, label %3272
  ]

3251:                                             ; preds = %3247
  %3252 = getelementptr inbounds %struct.bConstraint, ptr %3248, i64 0, i32 2
  %3253 = load ptr, ptr %3252, align 8, !tbaa !52
  %3254 = getelementptr inbounds %struct.bMinMaxConstraint, ptr %3253, i64 0, i32 4
  %3255 = load i16, ptr %3254, align 4, !tbaa !591
  %3256 = icmp eq i16 %3255, 1
  %3257 = getelementptr inbounds %struct.bMinMaxConstraint, ptr %3253, i64 0, i32 3
  %3258 = load i32, ptr %3257, align 8, !tbaa !593
  br i1 %3256, label %3259, label %3261

3259:                                             ; preds = %3251
  %3260 = or i32 %3258, 1
  store i32 %3260, ptr %3257, align 8, !tbaa !593
  br label %3279

3261:                                             ; preds = %3251
  %3262 = and i32 %3258, -2
  store i32 %3262, ptr %3257, align 8, !tbaa !593
  br label %3279

3263:                                             ; preds = %3247
  %3264 = getelementptr inbounds %struct.bConstraint, ptr %3248, i64 0, i32 2
  %3265 = load ptr, ptr %3264, align 8, !tbaa !52
  %3266 = getelementptr inbounds %struct.bKinematicConstraint, ptr %3265, i64 0, i32 2
  %3267 = load i16, ptr %3266, align 2, !tbaa !475
  %3268 = and i16 %3267, 32
  %3269 = icmp eq i16 %3268, 0
  br i1 %3269, label %3270, label %3279

3270:                                             ; preds = %3263
  %3271 = or i16 %3267, 48
  store i16 %3271, ptr %3266, align 2, !tbaa !475
  br label %3279

3272:                                             ; preds = %3247
  %3273 = getelementptr inbounds %struct.bConstraint, ptr %3248, i64 0, i32 2
  %3274 = load ptr, ptr %3273, align 8, !tbaa !52
  %3275 = getelementptr inbounds %struct.bRotateLikeConstraint, ptr %3274, i64 0, i32 1
  %3276 = load i32, ptr %3275, align 8, !tbaa !594
  %3277 = icmp eq i32 %3276, 0
  br i1 %3277, label %3278, label %3279

3278:                                             ; preds = %3272
  store i32 7, ptr %3275, align 8, !tbaa !594
  br label %3279

3279:                                             ; preds = %3272, %3278, %3263, %3270, %3259, %3261, %3247
  %3280 = load ptr, ptr %3248, align 8, !tbaa !34
  %3281 = icmp eq ptr %3280, null
  br i1 %3281, label %3239, label %3247, !llvm.loop !598

3282:                                             ; preds = %3239, %3236, %3232, %3228
  %3283 = getelementptr inbounds %struct.Object, ptr %3198, i64 0, i32 26
  %3284 = load ptr, ptr %3283, align 8, !tbaa !34
  %3285 = icmp eq ptr %3284, null
  br i1 %3285, label %3194, label %3286

3286:                                             ; preds = %3282
  %3287 = getelementptr inbounds %struct.Object, ptr %3198, i64 0, i32 57
  br label %3288

3288:                                             ; preds = %3286, %3300
  %3289 = phi ptr [ %3284, %3286 ], [ %3301, %3300 ]
  %3290 = getelementptr inbounds %struct.ModifierData, ptr %3289, i64 0, i32 2
  %3291 = load i32, ptr %3290, align 8, !tbaa !466
  %3292 = icmp eq i32 %3291, 3
  br i1 %3292, label %3293, label %3300

3293:                                             ; preds = %3288
  %3294 = getelementptr inbounds %struct.CurveModifierData, ptr %3289, i64 0, i32 3
  %3295 = load i16, ptr %3294, align 8, !tbaa !599
  %3296 = icmp eq i16 %3295, 0
  br i1 %3296, label %3297, label %3300

3297:                                             ; preds = %3293
  %3298 = load i16, ptr %3287, align 4, !tbaa !56
  %3299 = add i16 %3298, 1
  store i16 %3299, ptr %3294, align 8, !tbaa !599
  br label %3300

3300:                                             ; preds = %3293, %3297, %3288
  %3301 = load ptr, ptr %3289, align 8, !tbaa !34
  %3302 = icmp eq ptr %3301, null
  br i1 %3302, label %3194, label %3288, !llvm.loop !601

3303:                                             ; preds = %3194, %3190
  %3304 = getelementptr inbounds %struct.Main, ptr %2, i64 0, i32 17
  %3305 = load ptr, ptr %3304, align 8, !tbaa !34
  %3306 = icmp eq ptr %3305, null
  br i1 %3306, label %3363, label %3307

3307:                                             ; preds = %3303, %3360
  %3308 = phi ptr [ %3361, %3360 ], [ %3305, %3303 ]
  %3309 = getelementptr inbounds %struct.Material, ptr %3308, i64 0, i32 72
  %3310 = load float, ptr %3309, align 4, !tbaa !602
  %3311 = fcmp oeq float %3310, 0.000000e+00
  br i1 %3311, label %3312, label %3313

3312:                                             ; preds = %3307
  store float 1.000000e+00, ptr %3309, align 4, !tbaa !602
  br label %3313

3313:                                             ; preds = %3312, %3307
  %3314 = getelementptr inbounds %struct.Material, ptr %3308, i64 0, i32 103
  %3315 = load ptr, ptr %3314, align 8, !tbaa !603
  %3316 = icmp eq ptr %3315, null
  br i1 %3316, label %3360, label %3317

3317:                                             ; preds = %3313
  %3318 = getelementptr inbounds %struct.bNodeTree, ptr %3315, i64 0, i32 9
  %3319 = load i32, ptr %3318, align 8, !tbaa !525
  switch i32 %3319, label %3360 [
    i32 1, label %3320
    i32 0, label %3341
  ]

3320:                                             ; preds = %3317
  %3321 = getelementptr inbounds %struct.bNodeTree, ptr %3315, i64 0, i32 7
  %3322 = load ptr, ptr %3321, align 8, !tbaa !34
  %3323 = icmp eq ptr %3322, null
  br i1 %3323, label %3360, label %3324

3324:                                             ; preds = %3320, %3338
  %3325 = phi ptr [ %3339, %3338 ], [ %3322, %3320 ]
  %3326 = getelementptr inbounds %struct.bNode, ptr %3325, i64 0, i32 8
  %3327 = load i16, ptr %3326, align 4, !tbaa !528
  %3328 = icmp eq i16 %3327, 219
  br i1 %3328, label %3329, label %3338

3329:                                             ; preds = %3324
  %3330 = getelementptr inbounds %struct.bNode, ptr %3325, i64 0, i32 21
  %3331 = load ptr, ptr %3330, align 8, !tbaa !530
  %3332 = icmp eq ptr %3331, null
  br i1 %3332, label %3338, label %3333

3333:                                             ; preds = %3329
  %3334 = getelementptr inbounds %struct.NodeHueSat, ptr %3331, i64 0, i32 2
  %3335 = load float, ptr %3334, align 4, !tbaa !571
  %3336 = fcmp oeq float %3335, 0.000000e+00
  br i1 %3336, label %3337, label %3338

3337:                                             ; preds = %3333
  store float 1.000000e+00, ptr %3334, align 4, !tbaa !571
  br label %3338

3338:                                             ; preds = %3337, %3333, %3329, %3324
  %3339 = load ptr, ptr %3325, align 8, !tbaa !34
  %3340 = icmp eq ptr %3339, null
  br i1 %3340, label %3360, label %3324, !llvm.loop !573

3341:                                             ; preds = %3317
  %3342 = getelementptr inbounds %struct.bNodeTree, ptr %3315, i64 0, i32 7
  %3343 = load ptr, ptr %3342, align 8, !tbaa !34
  %3344 = icmp eq ptr %3343, null
  br i1 %3344, label %3360, label %3345

3345:                                             ; preds = %3341, %3357
  %3346 = phi ptr [ %3358, %3357 ], [ %3343, %3341 ]
  %3347 = getelementptr inbounds %struct.bNode, ptr %3346, i64 0, i32 8
  %3348 = load i16, ptr %3347, align 4, !tbaa !528
  %3349 = icmp eq i16 %3348, 108
  br i1 %3349, label %3350, label %3357

3350:                                             ; preds = %3345
  %3351 = getelementptr inbounds %struct.bNode, ptr %3346, i64 0, i32 21
  %3352 = load ptr, ptr %3351, align 8, !tbaa !530
  %3353 = icmp eq ptr %3352, null
  br i1 %3353, label %3354, label %3357

3354:                                             ; preds = %3350
  %3355 = load ptr, ptr @MEM_callocN, align 8, !tbaa !34
  %3356 = call ptr %3355(i64 noundef 128, ptr noundef nonnull @.str.20) #11
  store ptr %3356, ptr %3351, align 8, !tbaa !530
  br label %3357

3357:                                             ; preds = %3354, %3350, %3345
  %3358 = load ptr, ptr %3346, align 8, !tbaa !34
  %3359 = icmp eq ptr %3358, null
  br i1 %3359, label %3360, label %3345, !llvm.loop !574

3360:                                             ; preds = %3357, %3338, %3341, %3320, %3317, %3313
  %3361 = load ptr, ptr %3308, align 8, !tbaa !34
  %3362 = icmp eq ptr %3361, null
  br i1 %3362, label %3363, label %3307, !llvm.loop !604

3363:                                             ; preds = %3360, %3303
  %3364 = getelementptr inbounds %struct.Main, ptr %2, i64 0, i32 14
  %3365 = load ptr, ptr %3364, align 8, !tbaa !34
  %3366 = icmp eq ptr %3365, null
  br i1 %3366, label %3512, label %3367

3367:                                             ; preds = %3363, %3509
  %3368 = phi ptr [ %3510, %3509 ], [ %3365, %3363 ]
  %3369 = getelementptr inbounds %struct.Mesh, ptr %3368, i64 0, i32 21
  %3370 = getelementptr inbounds %struct.Mesh, ptr %3368, i64 0, i32 21, i32 2
  %3371 = load i32, ptr %3370, align 4, !tbaa !605
  %3372 = icmp eq i32 %3371, 0
  br i1 %3372, label %3373, label %3385

3373:                                             ; preds = %3367
  %3374 = getelementptr inbounds %struct.Mesh, ptr %3368, i64 0, i32 15
  %3375 = load ptr, ptr %3374, align 8, !tbaa !606
  %3376 = getelementptr inbounds %struct.Mesh, ptr %3368, i64 0, i32 26
  %3377 = load i32, ptr %3376, align 8, !tbaa !607
  %3378 = call ptr @CustomData_add_layer(ptr noundef nonnull %3369, i32 noundef 0, i32 noundef 0, ptr noundef %3375, i32 noundef %3377) #11
  %3379 = getelementptr inbounds %struct.Mesh, ptr %3368, i64 0, i32 17
  %3380 = load ptr, ptr %3379, align 8, !tbaa !608
  %3381 = icmp eq ptr %3380, null
  br i1 %3381, label %3385, label %3382

3382:                                             ; preds = %3373
  %3383 = load i32, ptr %3376, align 8, !tbaa !607
  %3384 = call ptr @CustomData_add_layer(ptr noundef nonnull %3369, i32 noundef 2, i32 noundef 0, ptr noundef nonnull %3380, i32 noundef %3383) #11
  br label %3385

3385:                                             ; preds = %3382, %3373, %3367
  %3386 = getelementptr inbounds %struct.Mesh, ptr %3368, i64 0, i32 22, i32 2
  %3387 = load i32, ptr %3386, align 4, !tbaa !609
  %3388 = icmp eq i32 %3387, 0
  br i1 %3388, label %3389, label %3396

3389:                                             ; preds = %3385
  %3390 = getelementptr inbounds %struct.Mesh, ptr %3368, i64 0, i32 22
  %3391 = getelementptr inbounds %struct.Mesh, ptr %3368, i64 0, i32 16
  %3392 = load ptr, ptr %3391, align 8, !tbaa !485
  %3393 = getelementptr inbounds %struct.Mesh, ptr %3368, i64 0, i32 27
  %3394 = load i32, ptr %3393, align 4, !tbaa !610
  %3395 = call ptr @CustomData_add_layer(ptr noundef nonnull %3390, i32 noundef 3, i32 noundef 0, ptr noundef %3392, i32 noundef %3394) #11
  br label %3396

3396:                                             ; preds = %3389, %3385
  %3397 = getelementptr inbounds %struct.Mesh, ptr %3368, i64 0, i32 23
  %3398 = getelementptr inbounds %struct.Mesh, ptr %3368, i64 0, i32 23, i32 2
  %3399 = load i32, ptr %3398, align 4, !tbaa !611
  %3400 = icmp eq i32 %3399, 0
  br i1 %3400, label %3401, label %3464

3401:                                             ; preds = %3396
  %3402 = getelementptr inbounds %struct.Mesh, ptr %3368, i64 0, i32 12
  %3403 = load ptr, ptr %3402, align 8, !tbaa !112
  %3404 = getelementptr inbounds %struct.Mesh, ptr %3368, i64 0, i32 28
  %3405 = load i32, ptr %3404, align 8, !tbaa !111
  %3406 = call ptr @CustomData_add_layer(ptr noundef nonnull %3397, i32 noundef 4, i32 noundef 0, ptr noundef %3403, i32 noundef %3405) #11
  %3407 = getelementptr inbounds %struct.Mesh, ptr %3368, i64 0, i32 14
  %3408 = load ptr, ptr %3407, align 8, !tbaa !148
  %3409 = icmp eq ptr %3408, null
  %3410 = getelementptr inbounds %struct.Mesh, ptr %3368, i64 0, i32 18
  %3411 = load ptr, ptr %3410, align 8, !tbaa !108
  %3412 = icmp eq ptr %3411, null
  br i1 %3409, label %3460, label %3413

3413:                                             ; preds = %3401
  br i1 %3412, label %3416, label %3414

3414:                                             ; preds = %3413
  %3415 = load ptr, ptr @MEM_freeN, align 8, !tbaa !34
  call void %3415(ptr noundef nonnull %3411) #11
  br label %3416

3416:                                             ; preds = %3414, %3413
  %3417 = load i32, ptr %3404, align 8, !tbaa !111
  %3418 = call ptr @CustomData_add_layer(ptr noundef nonnull %3397, i32 noundef 6, i32 noundef 1, ptr noundef null, i32 noundef %3417) #11
  store ptr %3418, ptr %3410, align 8, !tbaa !108
  %3419 = load i32, ptr %3404, align 8, !tbaa !111
  %3420 = call ptr @CustomData_add_layer(ptr noundef nonnull %3397, i32 noundef 5, i32 noundef 1, ptr noundef null, i32 noundef %3419) #11
  %3421 = getelementptr inbounds %struct.Mesh, ptr %3368, i64 0, i32 13
  store ptr %3420, ptr %3421, align 8, !tbaa !612
  %3422 = load i32, ptr %3404, align 8, !tbaa !111
  %3423 = icmp sgt i32 %3422, 0
  br i1 %3423, label %3424, label %3457

3424:                                             ; preds = %3416
  %3425 = load ptr, ptr %3407, align 8, !tbaa !148
  %3426 = load ptr, ptr %3410, align 8, !tbaa !108
  br label %3427

3427:                                             ; preds = %3424, %3427
  %3428 = phi i32 [ %3451, %3427 ], [ 0, %3424 ]
  %3429 = phi ptr [ %3453, %3427 ], [ %3425, %3424 ]
  %3430 = phi ptr [ %3454, %3427 ], [ %3426, %3424 ]
  %3431 = phi ptr [ %3452, %3427 ], [ %3420, %3424 ]
  %3432 = getelementptr inbounds %struct.TFace, ptr %3429, i64 0, i32 2
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(16) %3430, ptr noundef nonnull align 8 dereferenceable(16) %3432, i64 16, i1 false)
  %3433 = getelementptr inbounds %struct.TFace, ptr %3429, i64 0, i32 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %3431, ptr noundef nonnull align 8 dereferenceable(32) %3433, i64 32, i1 false)
  %3434 = getelementptr inbounds %struct.TFace, ptr %3429, i64 0, i32 3
  %3435 = load i8, ptr %3434, align 8, !tbaa !613
  %3436 = getelementptr inbounds %struct.MTFace, ptr %3431, i64 0, i32 2
  store i8 %3435, ptr %3436, align 8, !tbaa !614
  %3437 = getelementptr inbounds %struct.TFace, ptr %3429, i64 0, i32 7
  %3438 = load i16, ptr %3437, align 2, !tbaa !616
  %3439 = getelementptr inbounds %struct.MTFace, ptr %3431, i64 0, i32 6
  store i16 %3438, ptr %3439, align 2, !tbaa !617
  %3440 = getelementptr inbounds %struct.TFace, ptr %3429, i64 0, i32 5
  %3441 = load i16, ptr %3440, align 2, !tbaa !178
  %3442 = getelementptr inbounds %struct.MTFace, ptr %3431, i64 0, i32 4
  store i16 %3441, ptr %3442, align 2, !tbaa !618
  %3443 = getelementptr inbounds %struct.TFace, ptr %3429, i64 0, i32 6
  %3444 = load i16, ptr %3443, align 4, !tbaa !619
  %3445 = getelementptr inbounds %struct.MTFace, ptr %3431, i64 0, i32 5
  store i16 %3444, ptr %3445, align 4, !tbaa !620
  %3446 = load ptr, ptr %3429, align 8, !tbaa !621
  %3447 = getelementptr inbounds %struct.MTFace, ptr %3431, i64 0, i32 1
  store ptr %3446, ptr %3447, align 8, !tbaa !622
  %3448 = getelementptr inbounds %struct.TFace, ptr %3429, i64 0, i32 4
  %3449 = load i8, ptr %3448, align 1, !tbaa !623
  %3450 = getelementptr inbounds %struct.MTFace, ptr %3431, i64 0, i32 3
  store i8 %3449, ptr %3450, align 1, !tbaa !624
  %3451 = add nuw nsw i32 %3428, 1
  %3452 = getelementptr inbounds %struct.MTFace, ptr %3431, i64 1
  %3453 = getelementptr inbounds %struct.TFace, ptr %3429, i64 1
  %3454 = getelementptr inbounds %struct.MCol, ptr %3430, i64 4
  %3455 = load i32, ptr %3404, align 8, !tbaa !111
  %3456 = icmp slt i32 %3451, %3455
  br i1 %3456, label %3427, label %3457, !llvm.loop !625

3457:                                             ; preds = %3427, %3416
  %3458 = load ptr, ptr @MEM_freeN, align 8, !tbaa !34
  %3459 = load ptr, ptr %3407, align 8, !tbaa !148
  call void %3458(ptr noundef %3459) #11
  store ptr null, ptr %3407, align 8, !tbaa !148
  br label %3464

3460:                                             ; preds = %3401
  br i1 %3412, label %3464, label %3461

3461:                                             ; preds = %3460
  %3462 = load i32, ptr %3404, align 8, !tbaa !111
  %3463 = call ptr @CustomData_add_layer(ptr noundef nonnull %3397, i32 noundef 6, i32 noundef 0, ptr noundef nonnull %3411, i32 noundef %3462) #11
  store ptr %3463, ptr %3410, align 8, !tbaa !108
  br label %3464

3464:                                             ; preds = %3461, %3460, %3457, %3396
  %3465 = getelementptr inbounds %struct.Mesh, ptr %3368, i64 0, i32 14
  %3466 = load ptr, ptr %3465, align 8, !tbaa !148
  %3467 = icmp eq ptr %3466, null
  br i1 %3467, label %3470, label %3468

3468:                                             ; preds = %3464
  %3469 = load ptr, ptr @MEM_freeN, align 8, !tbaa !34
  call void %3469(ptr noundef nonnull %3466) #11
  store ptr null, ptr %3465, align 8, !tbaa !148
  br label %3470

3470:                                             ; preds = %3468, %3464
  %3471 = load i32, ptr %3398, align 4, !tbaa !611
  %3472 = icmp sgt i32 %3471, 0
  br i1 %3472, label %3473, label %3509

3473:                                             ; preds = %3470, %3502
  %3474 = phi i64 [ %3505, %3502 ], [ 0, %3470 ]
  %3475 = phi i32 [ %3504, %3502 ], [ 0, %3470 ]
  %3476 = phi i32 [ %3503, %3502 ], [ 0, %3470 ]
  %3477 = load ptr, ptr %3397, align 8, !tbaa !626
  %3478 = getelementptr inbounds %struct.CustomDataLayer, ptr %3477, i64 %3474
  %3479 = load i32, ptr %3478, align 8, !tbaa !627
  switch i32 %3479, label %3502 [
    i32 5, label %3480
    i32 6, label %3491
  ]

3480:                                             ; preds = %3473
  %3481 = getelementptr inbounds %struct.CustomDataLayer, ptr %3477, i64 %3474, i32 8
  %3482 = load i8, ptr %3481, align 8, !tbaa !149
  %3483 = icmp eq i8 %3482, 0
  br i1 %3483, label %3484, label %3489

3484:                                             ; preds = %3480
  %3485 = icmp eq i32 %3476, 0
  br i1 %3485, label %3486, label %3487

3486:                                             ; preds = %3484
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(6) %3481, ptr noundef nonnull align 1 dereferenceable(6) @.str.21, i64 6, i1 false) #11
  br label %3489

3487:                                             ; preds = %3484
  %3488 = call i64 (ptr, i64, ptr, ...) @BLI_snprintf(ptr noundef nonnull %3481, i64 noundef 64, ptr noundef nonnull @.str.22, i32 noundef %3476) #11
  br label %3489

3489:                                             ; preds = %3487, %3486, %3480
  %3490 = add nsw i32 %3476, 1
  br label %3502

3491:                                             ; preds = %3473
  %3492 = getelementptr inbounds %struct.CustomDataLayer, ptr %3477, i64 %3474, i32 8
  %3493 = load i8, ptr %3492, align 8, !tbaa !149
  %3494 = icmp eq i8 %3493, 0
  br i1 %3494, label %3495, label %3500

3495:                                             ; preds = %3491
  %3496 = icmp eq i32 %3475, 0
  br i1 %3496, label %3497, label %3498

3497:                                             ; preds = %3495
  store i32 7106371, ptr %3492, align 1
  br label %3500

3498:                                             ; preds = %3495
  %3499 = call i64 (ptr, i64, ptr, ...) @BLI_snprintf(ptr noundef nonnull %3492, i64 noundef 64, ptr noundef nonnull @.str.24, i32 noundef %3475) #11
  br label %3500

3500:                                             ; preds = %3498, %3497, %3491
  %3501 = add nsw i32 %3475, 1
  br label %3502

3502:                                             ; preds = %3500, %3489, %3473
  %3503 = phi i32 [ %3490, %3489 ], [ %3476, %3500 ], [ %3476, %3473 ]
  %3504 = phi i32 [ %3475, %3489 ], [ %3501, %3500 ], [ %3475, %3473 ]
  %3505 = add nuw nsw i64 %3474, 1
  %3506 = load i32, ptr %3398, align 4, !tbaa !611
  %3507 = sext i32 %3506 to i64
  %3508 = icmp slt i64 %3505, %3507
  br i1 %3508, label %3473, label %3509, !llvm.loop !629

3509:                                             ; preds = %3502, %3470
  call void @BKE_mesh_update_customdata_pointers(ptr noundef nonnull %3368, i8 noundef zeroext 1) #11
  %3510 = load ptr, ptr %3368, align 8, !tbaa !34
  %3511 = icmp eq ptr %3510, null
  br i1 %3511, label %3512, label %3367, !llvm.loop !630

3512:                                             ; preds = %3509, %3363
  %3513 = getelementptr inbounds %struct.Main, ptr %2, i64 0, i32 32
  %3514 = load ptr, ptr %3513, align 8, !tbaa !34
  %3515 = icmp eq ptr %3514, null
  br i1 %3515, label %3525, label %3516

3516:                                             ; preds = %3512, %3522
  %3517 = phi ptr [ %3523, %3522 ], [ %3514, %3512 ]
  %3518 = getelementptr inbounds %struct.Group, ptr %3517, i64 0, i32 2
  %3519 = load i32, ptr %3518, align 8, !tbaa !631
  %3520 = icmp eq i32 %3519, 0
  br i1 %3520, label %3521, label %3522

3521:                                             ; preds = %3516
  store i32 1048575, ptr %3518, align 8, !tbaa !631
  br label %3522

3522:                                             ; preds = %3516, %3521
  %3523 = load ptr, ptr %3517, align 8, !tbaa !34
  %3524 = icmp eq ptr %3523, null
  br i1 %3524, label %3525, label %3516, !llvm.loop !633

3525:                                             ; preds = %3522, %3512
  %3526 = getelementptr inbounds %struct.Main, ptr %2, i64 0, i32 4
  %3527 = load i16, ptr %3526, align 2, !tbaa !634
  %3528 = icmp slt i16 %3527, 3
  br i1 %3528, label %3529, label %3800

3529:                                             ; preds = %3525
  %3530 = getelementptr inbounds %struct.Main, ptr %2, i64 0, i32 19
  %3531 = load ptr, ptr %3530, align 8, !tbaa !34
  %3532 = icmp eq ptr %3531, null
  br i1 %3532, label %3551, label %3533

3533:                                             ; preds = %3529, %3548
  %3534 = phi ptr [ %3549, %3548 ], [ %3531, %3529 ]
  %3535 = getelementptr inbounds %struct.Image, ptr %3534, i64 0, i32 11
  store i16 1, ptr %3535, align 8, !tbaa !635
  %3536 = getelementptr inbounds %struct.Image, ptr %3534, i64 0, i32 12
  store i16 0, ptr %3536, align 2, !tbaa !636
  %3537 = getelementptr inbounds %struct.Image, ptr %3534, i64 0, i32 28
  store i32 256, ptr %3537, align 4, !tbaa !637
  %3538 = getelementptr inbounds %struct.Image, ptr %3534, i64 0, i32 29
  store i32 256, ptr %3538, align 8, !tbaa !638
  %3539 = getelementptr inbounds %struct.Image, ptr %3534, i64 0, i32 30
  store i8 1, ptr %3539, align 4, !tbaa !639
  %3540 = getelementptr inbounds %struct.ID, ptr %3534, i64 0, i32 4, i64 2
  %3541 = call i32 @strncmp(ptr noundef nonnull dereferenceable(1) %3540, ptr noundef nonnull dereferenceable(12) @.str.10, i64 noundef 64) #12
  %3542 = icmp eq i32 %3541, 0
  br i1 %3542, label %3543, label %3544

3543:                                             ; preds = %3533
  store i16 5, ptr %3535, align 8, !tbaa !635
  store i16 5, ptr %3536, align 2, !tbaa !636
  br label %3544

3544:                                             ; preds = %3543, %3533
  %3545 = call i32 @strncmp(ptr noundef nonnull dereferenceable(1) %3540, ptr noundef nonnull dereferenceable(14) @.str.11, i64 noundef 64) #12
  %3546 = icmp eq i32 %3545, 0
  br i1 %3546, label %3547, label %3548

3547:                                             ; preds = %3544
  store i16 5, ptr %3535, align 8, !tbaa !635
  store i16 4, ptr %3536, align 2, !tbaa !636
  br label %3548

3548:                                             ; preds = %3544, %3547
  %3549 = load ptr, ptr %3534, align 8, !tbaa !34
  %3550 = icmp eq ptr %3549, null
  br i1 %3550, label %3551, label %3533, !llvm.loop !640

3551:                                             ; preds = %3548, %3529
  %3552 = getelementptr inbounds %struct.Main, ptr %2, i64 0, i32 18
  %3553 = load ptr, ptr %3552, align 8, !tbaa !34
  %3554 = icmp eq ptr %3553, null
  br i1 %3554, label %3555, label %3558

3555:                                             ; preds = %3589, %3551
  %3556 = load ptr, ptr %3011, align 8, !tbaa !34
  %3557 = icmp eq ptr %3556, null
  br i1 %3557, label %3611, label %3614

3558:                                             ; preds = %3551, %3589
  %3559 = phi ptr [ %3609, %3589 ], [ %3553, %3551 ]
  %3560 = getelementptr inbounds %struct.Tex, ptr %3559, i64 0, i32 32
  %3561 = load i16, ptr %3560, align 8, !tbaa !559
  %3562 = icmp eq i16 %3561, 8
  br i1 %3562, label %3563, label %3589

3563:                                             ; preds = %3558
  %3564 = getelementptr inbounds %struct.Tex, ptr %3559, i64 0, i32 54
  %3565 = load ptr, ptr %3564, align 8, !tbaa !641
  %3566 = icmp eq ptr %3565, null
  br i1 %3566, label %3589, label %3567

3567:                                             ; preds = %3563
  %3568 = call ptr @blo_do_versions_newlibadr(ptr noundef %0, ptr noundef %1, ptr noundef nonnull %3565) #11
  %3569 = getelementptr inbounds %struct.Tex, ptr %3559, i64 0, i32 30
  %3570 = load i16, ptr %3569, align 4, !tbaa !642
  %3571 = and i16 %3570, 128
  %3572 = icmp eq i16 %3571, 0
  br i1 %3572, label %3575, label %3573

3573:                                             ; preds = %3567
  %3574 = getelementptr inbounds %struct.Image, ptr %3568, i64 0, i32 11
  store i16 3, ptr %3574, align 8, !tbaa !635
  br label %3575

3575:                                             ; preds = %3573, %3567
  %3576 = and i16 %3570, 8
  %3577 = icmp eq i16 %3576, 0
  br i1 %3577, label %3582, label %3578

3578:                                             ; preds = %3575
  %3579 = getelementptr inbounds %struct.Image, ptr %3568, i64 0, i32 10
  %3580 = load i16, ptr %3579, align 2, !tbaa !643
  %3581 = or i16 %3580, 1
  store i16 %3581, ptr %3579, align 2, !tbaa !643
  br label %3582

3582:                                             ; preds = %3578, %3575
  %3583 = and i16 %3570, 1024
  %3584 = icmp eq i16 %3583, 0
  br i1 %3584, label %3589, label %3585

3585:                                             ; preds = %3582
  %3586 = getelementptr inbounds %struct.Image, ptr %3568, i64 0, i32 10
  %3587 = load i16, ptr %3586, align 2, !tbaa !643
  %3588 = or i16 %3587, 2
  store i16 %3588, ptr %3586, align 2, !tbaa !643
  br label %3589

3589:                                             ; preds = %3582, %3585, %3563, %3558
  %3590 = getelementptr inbounds %struct.Tex, ptr %3559, i64 0, i32 45
  %3591 = load i32, ptr %3590, align 8, !tbaa !644
  %3592 = getelementptr inbounds %struct.Tex, ptr %3559, i64 0, i32 51, i32 2
  store i32 %3591, ptr %3592, align 4, !tbaa !645
  %3593 = getelementptr inbounds %struct.Tex, ptr %3559, i64 0, i32 43
  %3594 = load i16, ptr %3593, align 2, !tbaa !646
  %3595 = trunc i16 %3594 to i8
  %3596 = getelementptr inbounds %struct.Tex, ptr %3559, i64 0, i32 51, i32 5
  store i8 %3595, ptr %3596, align 8, !tbaa !647
  %3597 = getelementptr inbounds %struct.Tex, ptr %3559, i64 0, i32 46
  %3598 = load i32, ptr %3597, align 4, !tbaa !648
  %3599 = getelementptr inbounds %struct.Tex, ptr %3559, i64 0, i32 51, i32 3
  store i32 %3598, ptr %3599, align 8, !tbaa !649
  %3600 = getelementptr inbounds %struct.Tex, ptr %3559, i64 0, i32 47
  %3601 = load i32, ptr %3600, align 8, !tbaa !650
  %3602 = getelementptr inbounds %struct.Tex, ptr %3559, i64 0, i32 51, i32 4
  store i32 %3601, ptr %3602, align 4, !tbaa !651
  %3603 = getelementptr inbounds %struct.Tex, ptr %3559, i64 0, i32 30
  %3604 = load i16, ptr %3603, align 4, !tbaa !642
  %3605 = trunc i16 %3604 to i8
  %3606 = lshr i8 %3605, 6
  %3607 = and i8 %3606, 1
  %3608 = getelementptr inbounds %struct.Tex, ptr %3559, i64 0, i32 51, i32 6
  store i8 %3607, ptr %3608, align 1, !tbaa !652
  %3609 = load ptr, ptr %3559, align 8, !tbaa !34
  %3610 = icmp eq ptr %3609, null
  br i1 %3610, label %3555, label %3558, !llvm.loop !653

3611:                                             ; preds = %3661, %3555
  %3612 = load ptr, ptr %3083, align 8, !tbaa !34
  %3613 = icmp eq ptr %3612, null
  br i1 %3613, label %3664, label %3667

3614:                                             ; preds = %3555, %3661
  %3615 = phi ptr [ %3662, %3661 ], [ %3556, %3555 ]
  %3616 = getelementptr inbounds %struct.Scene, ptr %3615, i64 0, i32 18
  %3617 = load ptr, ptr %3616, align 8, !tbaa !524
  %3618 = icmp eq ptr %3617, null
  br i1 %3618, label %3661, label %3619

3619:                                             ; preds = %3614
  %3620 = getelementptr inbounds %struct.bNodeTree, ptr %3617, i64 0, i32 9
  %3621 = load i32, ptr %3620, align 8, !tbaa !525
  %3622 = icmp eq i32 %3621, 1
  br i1 %3622, label %3623, label %3661

3623:                                             ; preds = %3619
  %3624 = getelementptr inbounds %struct.bNodeTree, ptr %3617, i64 0, i32 7
  %3625 = load ptr, ptr %3624, align 8, !tbaa !34
  %3626 = icmp eq ptr %3625, null
  br i1 %3626, label %3661, label %3627

3627:                                             ; preds = %3623, %3658
  %3628 = phi ptr [ %3659, %3658 ], [ %3625, %3623 ]
  %3629 = getelementptr inbounds %struct.bNode, ptr %3628, i64 0, i32 8
  %3630 = load i16, ptr %3629, align 4, !tbaa !528
  switch i16 %3630, label %3658 [
    i16 220, label %3631
    i16 201, label %3631
    i16 240, label %3631
  ]

3631:                                             ; preds = %3627, %3627, %3627
  %3632 = getelementptr inbounds %struct.bNode, ptr %3628, i64 0, i32 21
  %3633 = load ptr, ptr %3632, align 8, !tbaa !530
  %3634 = icmp eq ptr %3633, null
  %3635 = load ptr, ptr @MEM_callocN, align 8, !tbaa !34
  br i1 %3634, label %3653, label %3636

3636:                                             ; preds = %3631
  %3637 = call ptr %3635(i64 noundef 40, ptr noundef nonnull @.str.25) #11
  %3638 = load i32, ptr %3633, align 4, !tbaa !654
  %3639 = getelementptr inbounds %struct.ImageUser, ptr %3637, i64 0, i32 2
  store i32 %3638, ptr %3639, align 4, !tbaa !656
  %3640 = getelementptr inbounds %struct.NodeImageAnim, ptr %3633, i64 0, i32 1
  %3641 = load i32, ptr %3640, align 4, !tbaa !657
  %3642 = getelementptr inbounds %struct.ImageUser, ptr %3637, i64 0, i32 4
  store i32 %3641, ptr %3642, align 4, !tbaa !658
  %3643 = getelementptr inbounds %struct.NodeImageAnim, ptr %3633, i64 0, i32 2
  %3644 = load i32, ptr %3643, align 4, !tbaa !659
  %3645 = add nsw i32 %3644, -1
  %3646 = getelementptr inbounds %struct.ImageUser, ptr %3637, i64 0, i32 3
  store i32 %3645, ptr %3646, align 8, !tbaa !660
  %3647 = getelementptr inbounds %struct.NodeImageAnim, ptr %3633, i64 0, i32 3
  %3648 = load i8, ptr %3647, align 4, !tbaa !661
  %3649 = getelementptr inbounds %struct.ImageUser, ptr %3637, i64 0, i32 6
  store i8 %3648, ptr %3649, align 1, !tbaa !662
  %3650 = getelementptr inbounds %struct.ImageUser, ptr %3637, i64 0, i32 5
  store i8 2, ptr %3650, align 8, !tbaa !663
  %3651 = getelementptr inbounds %struct.ImageUser, ptr %3637, i64 0, i32 7
  store i8 1, ptr %3651, align 2, !tbaa !664
  store ptr %3637, ptr %3632, align 8, !tbaa !530
  %3652 = load ptr, ptr @MEM_freeN, align 8, !tbaa !34
  call void %3652(ptr noundef nonnull %3633) #11
  br label %3658

3653:                                             ; preds = %3631
  %3654 = call ptr %3635(i64 noundef 40, ptr noundef nonnull @.str.26) #11
  store ptr %3654, ptr %3632, align 8, !tbaa !530
  %3655 = getelementptr inbounds %struct.ImageUser, ptr %3654, i64 0, i32 4
  store i32 1, ptr %3655, align 4, !tbaa !658
  %3656 = getelementptr inbounds %struct.ImageUser, ptr %3654, i64 0, i32 5
  store i8 2, ptr %3656, align 8, !tbaa !663
  %3657 = getelementptr inbounds %struct.ImageUser, ptr %3654, i64 0, i32 7
  store i8 1, ptr %3657, align 2, !tbaa !664
  br label %3658

3658:                                             ; preds = %3653, %3636, %3627
  %3659 = load ptr, ptr %3628, align 8, !tbaa !34
  %3660 = icmp eq ptr %3659, null
  br i1 %3660, label %3661, label %3627, !llvm.loop !665

3661:                                             ; preds = %3658, %3623, %3619, %3614
  %3662 = load ptr, ptr %3615, align 8, !tbaa !34
  %3663 = icmp eq ptr %3662, null
  br i1 %3663, label %3611, label %3614, !llvm.loop !666

3664:                                             ; preds = %3710, %3611
  %3665 = load ptr, ptr %3304, align 8, !tbaa !34
  %3666 = icmp eq ptr %3665, null
  br i1 %3666, label %3713, label %3716

3667:                                             ; preds = %3611, %3710
  %3668 = phi ptr [ %3711, %3710 ], [ %3612, %3611 ]
  %3669 = getelementptr inbounds %struct.bNodeTree, ptr %3668, i64 0, i32 9
  %3670 = load i32, ptr %3669, align 8, !tbaa !525
  %3671 = icmp eq i32 %3670, 1
  br i1 %3671, label %3672, label %3710

3672:                                             ; preds = %3667
  %3673 = getelementptr inbounds %struct.bNodeTree, ptr %3668, i64 0, i32 7
  %3674 = load ptr, ptr %3673, align 8, !tbaa !34
  %3675 = icmp eq ptr %3674, null
  br i1 %3675, label %3710, label %3676

3676:                                             ; preds = %3672, %3707
  %3677 = phi ptr [ %3708, %3707 ], [ %3674, %3672 ]
  %3678 = getelementptr inbounds %struct.bNode, ptr %3677, i64 0, i32 8
  %3679 = load i16, ptr %3678, align 4, !tbaa !528
  switch i16 %3679, label %3707 [
    i16 220, label %3680
    i16 201, label %3680
    i16 240, label %3680
  ]

3680:                                             ; preds = %3676, %3676, %3676
  %3681 = getelementptr inbounds %struct.bNode, ptr %3677, i64 0, i32 21
  %3682 = load ptr, ptr %3681, align 8, !tbaa !530
  %3683 = icmp eq ptr %3682, null
  %3684 = load ptr, ptr @MEM_callocN, align 8, !tbaa !34
  br i1 %3683, label %3702, label %3685

3685:                                             ; preds = %3680
  %3686 = call ptr %3684(i64 noundef 40, ptr noundef nonnull @.str.25) #11
  %3687 = load i32, ptr %3682, align 4, !tbaa !654
  %3688 = getelementptr inbounds %struct.ImageUser, ptr %3686, i64 0, i32 2
  store i32 %3687, ptr %3688, align 4, !tbaa !656
  %3689 = getelementptr inbounds %struct.NodeImageAnim, ptr %3682, i64 0, i32 1
  %3690 = load i32, ptr %3689, align 4, !tbaa !657
  %3691 = getelementptr inbounds %struct.ImageUser, ptr %3686, i64 0, i32 4
  store i32 %3690, ptr %3691, align 4, !tbaa !658
  %3692 = getelementptr inbounds %struct.NodeImageAnim, ptr %3682, i64 0, i32 2
  %3693 = load i32, ptr %3692, align 4, !tbaa !659
  %3694 = add nsw i32 %3693, -1
  %3695 = getelementptr inbounds %struct.ImageUser, ptr %3686, i64 0, i32 3
  store i32 %3694, ptr %3695, align 8, !tbaa !660
  %3696 = getelementptr inbounds %struct.NodeImageAnim, ptr %3682, i64 0, i32 3
  %3697 = load i8, ptr %3696, align 4, !tbaa !661
  %3698 = getelementptr inbounds %struct.ImageUser, ptr %3686, i64 0, i32 6
  store i8 %3697, ptr %3698, align 1, !tbaa !662
  %3699 = getelementptr inbounds %struct.ImageUser, ptr %3686, i64 0, i32 5
  store i8 2, ptr %3699, align 8, !tbaa !663
  %3700 = getelementptr inbounds %struct.ImageUser, ptr %3686, i64 0, i32 7
  store i8 1, ptr %3700, align 2, !tbaa !664
  store ptr %3686, ptr %3681, align 8, !tbaa !530
  %3701 = load ptr, ptr @MEM_freeN, align 8, !tbaa !34
  call void %3701(ptr noundef nonnull %3682) #11
  br label %3707

3702:                                             ; preds = %3680
  %3703 = call ptr %3684(i64 noundef 40, ptr noundef nonnull @.str.26) #11
  store ptr %3703, ptr %3681, align 8, !tbaa !530
  %3704 = getelementptr inbounds %struct.ImageUser, ptr %3703, i64 0, i32 4
  store i32 1, ptr %3704, align 4, !tbaa !658
  %3705 = getelementptr inbounds %struct.ImageUser, ptr %3703, i64 0, i32 5
  store i8 2, ptr %3705, align 8, !tbaa !663
  %3706 = getelementptr inbounds %struct.ImageUser, ptr %3703, i64 0, i32 7
  store i8 1, ptr %3706, align 2, !tbaa !664
  br label %3707

3707:                                             ; preds = %3702, %3685, %3676
  %3708 = load ptr, ptr %3677, align 8, !tbaa !34
  %3709 = icmp eq ptr %3708, null
  br i1 %3709, label %3710, label %3676, !llvm.loop !665

3710:                                             ; preds = %3707, %3667, %3672
  %3711 = load ptr, ptr %3668, align 8, !tbaa !34
  %3712 = icmp eq ptr %3711, null
  br i1 %3712, label %3664, label %3667, !llvm.loop !667

3713:                                             ; preds = %3763, %3664
  %3714 = load ptr, ptr %2978, align 8, !tbaa !34
  %3715 = icmp eq ptr %3714, null
  br i1 %3715, label %3800, label %3769

3716:                                             ; preds = %3664, %3763
  %3717 = phi ptr [ %3764, %3763 ], [ %3665, %3664 ]
  %3718 = getelementptr inbounds %struct.Material, ptr %3717, i64 0, i32 103
  %3719 = load ptr, ptr %3718, align 8, !tbaa !603
  %3720 = icmp eq ptr %3719, null
  br i1 %3720, label %3763, label %3721

3721:                                             ; preds = %3716
  %3722 = getelementptr inbounds %struct.bNodeTree, ptr %3719, i64 0, i32 9
  %3723 = load i32, ptr %3722, align 8, !tbaa !525
  %3724 = icmp eq i32 %3723, 1
  br i1 %3724, label %3725, label %3763

3725:                                             ; preds = %3721
  %3726 = getelementptr inbounds %struct.bNodeTree, ptr %3719, i64 0, i32 7
  %3727 = load ptr, ptr %3726, align 8, !tbaa !34
  %3728 = icmp eq ptr %3727, null
  br i1 %3728, label %3763, label %3729

3729:                                             ; preds = %3725, %3760
  %3730 = phi ptr [ %3761, %3760 ], [ %3727, %3725 ]
  %3731 = getelementptr inbounds %struct.bNode, ptr %3730, i64 0, i32 8
  %3732 = load i16, ptr %3731, align 4, !tbaa !528
  switch i16 %3732, label %3760 [
    i16 220, label %3733
    i16 201, label %3733
    i16 240, label %3733
  ]

3733:                                             ; preds = %3729, %3729, %3729
  %3734 = getelementptr inbounds %struct.bNode, ptr %3730, i64 0, i32 21
  %3735 = load ptr, ptr %3734, align 8, !tbaa !530
  %3736 = icmp eq ptr %3735, null
  %3737 = load ptr, ptr @MEM_callocN, align 8, !tbaa !34
  br i1 %3736, label %3755, label %3738

3738:                                             ; preds = %3733
  %3739 = call ptr %3737(i64 noundef 40, ptr noundef nonnull @.str.25) #11
  %3740 = load i32, ptr %3735, align 4, !tbaa !654
  %3741 = getelementptr inbounds %struct.ImageUser, ptr %3739, i64 0, i32 2
  store i32 %3740, ptr %3741, align 4, !tbaa !656
  %3742 = getelementptr inbounds %struct.NodeImageAnim, ptr %3735, i64 0, i32 1
  %3743 = load i32, ptr %3742, align 4, !tbaa !657
  %3744 = getelementptr inbounds %struct.ImageUser, ptr %3739, i64 0, i32 4
  store i32 %3743, ptr %3744, align 4, !tbaa !658
  %3745 = getelementptr inbounds %struct.NodeImageAnim, ptr %3735, i64 0, i32 2
  %3746 = load i32, ptr %3745, align 4, !tbaa !659
  %3747 = add nsw i32 %3746, -1
  %3748 = getelementptr inbounds %struct.ImageUser, ptr %3739, i64 0, i32 3
  store i32 %3747, ptr %3748, align 8, !tbaa !660
  %3749 = getelementptr inbounds %struct.NodeImageAnim, ptr %3735, i64 0, i32 3
  %3750 = load i8, ptr %3749, align 4, !tbaa !661
  %3751 = getelementptr inbounds %struct.ImageUser, ptr %3739, i64 0, i32 6
  store i8 %3750, ptr %3751, align 1, !tbaa !662
  %3752 = getelementptr inbounds %struct.ImageUser, ptr %3739, i64 0, i32 5
  store i8 2, ptr %3752, align 8, !tbaa !663
  %3753 = getelementptr inbounds %struct.ImageUser, ptr %3739, i64 0, i32 7
  store i8 1, ptr %3753, align 2, !tbaa !664
  store ptr %3739, ptr %3734, align 8, !tbaa !530
  %3754 = load ptr, ptr @MEM_freeN, align 8, !tbaa !34
  call void %3754(ptr noundef nonnull %3735) #11
  br label %3760

3755:                                             ; preds = %3733
  %3756 = call ptr %3737(i64 noundef 40, ptr noundef nonnull @.str.26) #11
  store ptr %3756, ptr %3734, align 8, !tbaa !530
  %3757 = getelementptr inbounds %struct.ImageUser, ptr %3756, i64 0, i32 4
  store i32 1, ptr %3757, align 4, !tbaa !658
  %3758 = getelementptr inbounds %struct.ImageUser, ptr %3756, i64 0, i32 5
  store i8 2, ptr %3758, align 8, !tbaa !663
  %3759 = getelementptr inbounds %struct.ImageUser, ptr %3756, i64 0, i32 7
  store i8 1, ptr %3759, align 2, !tbaa !664
  br label %3760

3760:                                             ; preds = %3755, %3738, %3729
  %3761 = load ptr, ptr %3730, align 8, !tbaa !34
  %3762 = icmp eq ptr %3761, null
  br i1 %3762, label %3763, label %3729, !llvm.loop !665

3763:                                             ; preds = %3760, %3725, %3721, %3716
  %3764 = load ptr, ptr %3717, align 8, !tbaa !34
  %3765 = icmp eq ptr %3764, null
  br i1 %3765, label %3713, label %3716, !llvm.loop !668

3766:                                             ; preds = %3774, %3769
  %3767 = load ptr, ptr %3770, align 8, !tbaa !34
  %3768 = icmp eq ptr %3767, null
  br i1 %3768, label %3800, label %3769, !llvm.loop !669

3769:                                             ; preds = %3713, %3766
  %3770 = phi ptr [ %3767, %3766 ], [ %3714, %3713 ]
  %3771 = getelementptr inbounds %struct.bScreen, ptr %3770, i64 0, i32 3
  %3772 = load ptr, ptr %3771, align 8, !tbaa !34
  %3773 = icmp eq ptr %3772, null
  br i1 %3773, label %3766, label %3777

3774:                                             ; preds = %3797, %3777
  %3775 = load ptr, ptr %3778, align 8, !tbaa !34
  %3776 = icmp eq ptr %3775, null
  br i1 %3776, label %3766, label %3777, !llvm.loop !670

3777:                                             ; preds = %3769, %3774
  %3778 = phi ptr [ %3775, %3774 ], [ %3772, %3769 ]
  %3779 = getelementptr inbounds %struct.ScrArea, ptr %3778, i64 0, i32 19
  %3780 = load ptr, ptr %3779, align 8, !tbaa !34
  %3781 = icmp eq ptr %3780, null
  br i1 %3781, label %3774, label %3782

3782:                                             ; preds = %3777, %3797
  %3783 = phi ptr [ %3798, %3797 ], [ %3780, %3777 ]
  %3784 = getelementptr inbounds %struct.SpaceLink, ptr %3783, i64 0, i32 3
  %3785 = load i32, ptr %3784, align 8, !tbaa !127
  switch i32 %3785, label %3797 [
    i32 6, label %3786
    i32 1, label %3788
  ]

3786:                                             ; preds = %3782
  %3787 = getelementptr inbounds %struct.SpaceImage, ptr %3783, i64 0, i32 6, i32 5
  store i8 2, ptr %3787, align 8, !tbaa !671
  br label %3797

3788:                                             ; preds = %3782
  %3789 = getelementptr inbounds %struct.View3D, ptr %3783, i64 0, i32 18
  %3790 = load ptr, ptr %3789, align 8, !tbaa !34
  %3791 = icmp eq ptr %3790, null
  br i1 %3791, label %3797, label %3792

3792:                                             ; preds = %3788, %3792
  %3793 = phi ptr [ %3795, %3792 ], [ %3790, %3788 ]
  %3794 = getelementptr inbounds %struct.BGpic, ptr %3793, i64 0, i32 3, i32 5
  store i8 2, ptr %3794, align 8, !tbaa !676
  %3795 = load ptr, ptr %3793, align 8, !tbaa !34
  %3796 = icmp eq ptr %3795, null
  br i1 %3796, label %3797, label %3792, !llvm.loop !679

3797:                                             ; preds = %3792, %3788, %3782, %3786
  %3798 = load ptr, ptr %3783, align 8, !tbaa !34
  %3799 = icmp eq ptr %3798, null
  br i1 %3799, label %3774, label %3782, !llvm.loop !680

3800:                                             ; preds = %3766, %3713, %3525
  %3801 = load i16, ptr %3526, align 2, !tbaa !634
  %3802 = icmp slt i16 %3801, 4
  br i1 %3802, label %3803, label %3814

3803:                                             ; preds = %3800
  %3804 = load ptr, ptr %3011, align 8, !tbaa !34
  %3805 = icmp eq ptr %3804, null
  br i1 %3805, label %3814, label %3806

3806:                                             ; preds = %3803, %3806
  %3807 = phi ptr [ %3812, %3806 ], [ %3804, %3803 ]
  %3808 = getelementptr inbounds %struct.Scene, ptr %3807, i64 0, i32 22, i32 74
  store i16 1, ptr %3808, align 4, !tbaa !681
  %3809 = getelementptr inbounds %struct.Scene, ptr %3807, i64 0, i32 22, i32 73
  store i16 16, ptr %3809, align 2, !tbaa !682
  %3810 = getelementptr inbounds %struct.Scene, ptr %3807, i64 0, i32 22, i32 72
  store i16 5, ptr %3810, align 8, !tbaa !683
  %3811 = getelementptr inbounds %struct.Scene, ptr %3807, i64 0, i32 22, i32 75
  store i16 1, ptr %3811, align 2, !tbaa !684
  %3812 = load ptr, ptr %3807, align 8, !tbaa !34
  %3813 = icmp eq ptr %3812, null
  br i1 %3813, label %3814, label %3806, !llvm.loop !685

3814:                                             ; preds = %3806, %3803, %3800, %2974
  %3815 = load i16, ptr %7, align 8, !tbaa !60
  %3816 = icmp slt i16 %3815, 244
  br i1 %3816, label %3817, label %3952

3817:                                             ; preds = %3814
  %3818 = getelementptr inbounds %struct.Main, ptr %2, i64 0, i32 13
  %3819 = load ptr, ptr %3818, align 8, !tbaa !168
  %3820 = getelementptr inbounds %struct.Main, ptr %2, i64 0, i32 17
  %3821 = load ptr, ptr %3820, align 8, !tbaa !34
  %3822 = icmp eq ptr %3821, null
  br i1 %3822, label %3823, label %3827

3823:                                             ; preds = %3871, %3817
  %3824 = icmp eq ptr %3819, null
  br i1 %3824, label %3922, label %3825

3825:                                             ; preds = %3823
  %3826 = getelementptr inbounds %struct.Main, ptr %2, i64 0, i32 4
  br label %3874

3827:                                             ; preds = %3817, %3871
  %3828 = phi ptr [ %3872, %3871 ], [ %3821, %3817 ]
  %3829 = getelementptr inbounds %struct.Material, ptr %3828, i64 0, i32 117
  %3830 = load float, ptr %3829, align 4, !tbaa !686
  %3831 = fcmp oeq float %3830, 0.000000e+00
  br i1 %3831, label %3832, label %3843

3832:                                             ; preds = %3827
  %3833 = getelementptr inbounds %struct.Material, ptr %3828, i64 0, i32 114
  store float 1.000000e+00, ptr %3833, align 8, !tbaa !156
  %3834 = getelementptr inbounds %struct.Material, ptr %3828, i64 0, i32 114, i64 1
  store float 1.000000e+00, ptr %3834, align 4, !tbaa !156
  %3835 = getelementptr inbounds %struct.Material, ptr %3828, i64 0, i32 114, i64 2
  store float 1.000000e+00, ptr %3835, align 8, !tbaa !156
  %3836 = getelementptr inbounds %struct.Material, ptr %3828, i64 0, i32 115
  store float 0x3FE99999A0000000, ptr %3836, align 4, !tbaa !156
  %3837 = getelementptr inbounds %struct.Material, ptr %3828, i64 0, i32 115, i64 1
  store float 0x3FE99999A0000000, ptr %3837, align 4, !tbaa !156
  %3838 = getelementptr inbounds %struct.Material, ptr %3828, i64 0, i32 115, i64 2
  store float 0x3FE99999A0000000, ptr %3838, align 4, !tbaa !156
  %3839 = getelementptr inbounds %struct.Material, ptr %3828, i64 0, i32 116
  store float 0x3FA99999A0000000, ptr %3839, align 8, !tbaa !687
  store float 0x3FB99999A0000000, ptr %3829, align 4, !tbaa !686
  %3840 = getelementptr inbounds %struct.Material, ptr %3828, i64 0, i32 118
  store float 0x3FF4CCCCC0000000, ptr %3840, align 8, !tbaa !688
  %3841 = getelementptr inbounds %struct.Material, ptr %3828, i64 0, i32 119
  store float 1.000000e+00, ptr %3841, align 4, !tbaa !689
  %3842 = getelementptr inbounds %struct.Material, ptr %3828, i64 0, i32 120
  store float 0.000000e+00, ptr %3842, align 8, !tbaa !690
  br label %3843

3843:                                             ; preds = %3832, %3827
  %3844 = getelementptr inbounds %struct.Material, ptr %3828, i64 0, i32 121
  %3845 = load float, ptr %3844, align 4, !tbaa !691
  %3846 = fcmp oeq float %3845, 0.000000e+00
  br i1 %3846, label %3847, label %3852

3847:                                             ; preds = %3843
  %3848 = getelementptr inbounds %struct.Material, ptr %3828, i64 0, i32 122
  %3849 = load float, ptr %3848, align 8, !tbaa !692
  %3850 = fcmp oeq float %3849, 0.000000e+00
  br i1 %3850, label %3851, label %3852

3851:                                             ; preds = %3847
  store float 1.000000e+00, ptr %3844, align 4, !tbaa !691
  store float 1.000000e+00, ptr %3848, align 8, !tbaa !692
  br label %3852

3852:                                             ; preds = %3851, %3847, %3843
  %3853 = getelementptr inbounds %struct.Material, ptr %3828, i64 0, i32 115
  %3854 = load float, ptr %3853, align 4, !tbaa !156
  %3855 = fcmp oeq float %3854, 0.000000e+00
  br i1 %3855, label %3856, label %3871

3856:                                             ; preds = %3852
  %3857 = getelementptr inbounds %struct.Material, ptr %3828, i64 0, i32 115, i64 1
  %3858 = load float, ptr %3857, align 4, !tbaa !156
  %3859 = fcmp oeq float %3858, 0.000000e+00
  br i1 %3859, label %3860, label %3871

3860:                                             ; preds = %3856
  %3861 = getelementptr inbounds %struct.Material, ptr %3828, i64 0, i32 115, i64 2
  %3862 = load float, ptr %3861, align 4, !tbaa !156
  %3863 = fcmp oeq float %3862, 0.000000e+00
  br i1 %3863, label %3864, label %3871

3864:                                             ; preds = %3860
  %3865 = getelementptr inbounds %struct.Material, ptr %3828, i64 0, i32 4
  %3866 = load float, ptr %3865, align 4, !tbaa !693
  store float %3866, ptr %3853, align 4, !tbaa !156
  %3867 = getelementptr inbounds %struct.Material, ptr %3828, i64 0, i32 5
  %3868 = load float, ptr %3867, align 8, !tbaa !694
  store float %3868, ptr %3857, align 4, !tbaa !156
  %3869 = getelementptr inbounds %struct.Material, ptr %3828, i64 0, i32 6
  %3870 = load float, ptr %3869, align 4, !tbaa !695
  store float %3870, ptr %3861, align 4, !tbaa !156
  br label %3871

3871:                                             ; preds = %3852, %3856, %3860, %3864
  %3872 = load ptr, ptr %3828, align 8, !tbaa !34
  %3873 = icmp eq ptr %3872, null
  br i1 %3873, label %3823, label %3827, !llvm.loop !696

3874:                                             ; preds = %3825, %3919
  %3875 = phi ptr [ %3819, %3825 ], [ %3920, %3919 ]
  %3876 = getelementptr inbounds %struct.Object, ptr %3875, i64 0, i32 25
  %3877 = load ptr, ptr %3876, align 8, !tbaa !34
  %3878 = icmp eq ptr %3877, null
  br i1 %3878, label %3888, label %3879

3879:                                             ; preds = %3874, %3885
  %3880 = phi ptr [ %3886, %3885 ], [ %3877, %3874 ]
  %3881 = getelementptr inbounds %struct.bDeformGroup, ptr %3880, i64 0, i32 2
  %3882 = load i8, ptr %3881, align 8, !tbaa !149
  %3883 = icmp eq i8 %3882, 0
  br i1 %3883, label %3884, label %3885

3884:                                             ; preds = %3879
  call void @defgroup_unique_name(ptr noundef nonnull %3880, ptr noundef nonnull %3875) #11
  br label %3885

3885:                                             ; preds = %3879, %3884
  %3886 = load ptr, ptr %3880, align 8, !tbaa !34
  %3887 = icmp eq ptr %3886, null
  br i1 %3887, label %3888, label %3879, !llvm.loop !697

3888:                                             ; preds = %3885, %3874
  %3889 = load i16, ptr %7, align 8, !tbaa !60
  %3890 = icmp slt i16 %3889, 243
  br i1 %3890, label %3894, label %3891

3891:                                             ; preds = %3888
  %3892 = load i16, ptr %3826, align 2, !tbaa !634
  %3893 = icmp slt i16 %3892, 1
  br i1 %3893, label %3894, label %3919

3894:                                             ; preds = %3891, %3888
  %3895 = getelementptr inbounds %struct.Object, ptr %3875, i64 0, i32 26
  %3896 = load ptr, ptr %3895, align 8, !tbaa !34
  %3897 = icmp eq ptr %3896, null
  br i1 %3897, label %3919, label %3898

3898:                                             ; preds = %3894, %3916
  %3899 = phi ptr [ %3917, %3916 ], [ %3896, %3894 ]
  %3900 = getelementptr inbounds %struct.ModifierData, ptr %3899, i64 0, i32 2
  %3901 = load i32, ptr %3900, align 8, !tbaa !466
  %3902 = icmp eq i32 %3901, 5
  br i1 %3902, label %3903, label %3916

3903:                                             ; preds = %3898
  %3904 = getelementptr inbounds %struct.MirrorModifierData, ptr %3899, i64 0, i32 1
  %3905 = load i16, ptr %3904, align 8, !tbaa !698
  %3906 = icmp ult i16 %3905, 3
  br i1 %3906, label %3907, label %3915

3907:                                             ; preds = %3903
  %3908 = shl nuw nsw i16 %3905, 4
  %3909 = zext nneg i16 %3908 to i48
  %3910 = lshr i48 137440002056, %3909
  %3911 = trunc i48 %3910 to i16
  %3912 = getelementptr inbounds %struct.MirrorModifierData, ptr %3899, i64 0, i32 2
  %3913 = load i16, ptr %3912, align 2, !tbaa !700
  %3914 = or i16 %3913, %3911
  store i16 %3914, ptr %3912, align 2, !tbaa !700
  br label %3915

3915:                                             ; preds = %3903, %3907
  store i16 0, ptr %3904, align 8, !tbaa !698
  br label %3916

3916:                                             ; preds = %3898, %3915
  %3917 = load ptr, ptr %3899, align 8, !tbaa !34
  %3918 = icmp eq ptr %3917, null
  br i1 %3918, label %3919, label %3898, !llvm.loop !701

3919:                                             ; preds = %3916, %3894, %3891
  %3920 = load ptr, ptr %3875, align 8, !tbaa !173
  %3921 = icmp eq ptr %3920, null
  br i1 %3921, label %3922, label %3874, !llvm.loop !702

3922:                                             ; preds = %3919, %3823
  %3923 = load i16, ptr %7, align 8, !tbaa !60
  %3924 = icmp slt i16 %3923, 244
  br i1 %3924, label %3929, label %3925

3925:                                             ; preds = %3922
  %3926 = getelementptr inbounds %struct.Main, ptr %2, i64 0, i32 4
  %3927 = load i16, ptr %3926, align 2, !tbaa !634
  %3928 = icmp slt i16 %3927, 2
  br i1 %3928, label %3929, label %3952

3929:                                             ; preds = %3925, %3922
  %3930 = getelementptr inbounds %struct.Main, ptr %2, i64 0, i32 14
  %3931 = load ptr, ptr %3930, align 8, !tbaa !34
  %3932 = icmp eq ptr %3931, null
  br i1 %3932, label %3952, label %3936

3933:                                             ; preds = %3945, %3936
  %3934 = load ptr, ptr %3937, align 8, !tbaa !34
  %3935 = icmp eq ptr %3934, null
  br i1 %3935, label %3952, label %3936, !llvm.loop !703

3936:                                             ; preds = %3929, %3933
  %3937 = phi ptr [ %3934, %3933 ], [ %3931, %3929 ]
  %3938 = getelementptr inbounds %struct.Mesh, ptr %3937, i64 0, i32 23, i32 2
  %3939 = load i32, ptr %3938, align 4, !tbaa !611
  %3940 = icmp sgt i32 %3939, 0
  br i1 %3940, label %3941, label %3933

3941:                                             ; preds = %3936
  %3942 = getelementptr inbounds %struct.Mesh, ptr %3937, i64 0, i32 23
  %3943 = load ptr, ptr %3942, align 8, !tbaa !626
  %3944 = zext nneg i32 %3939 to i64
  br label %3945

3945:                                             ; preds = %3941, %3945
  %3946 = phi i64 [ 0, %3941 ], [ %3950, %3945 ]
  %3947 = getelementptr inbounds %struct.CustomDataLayer, ptr %3943, i64 %3946, i32 3
  %3948 = load i32, ptr %3947, align 4, !tbaa !704
  %3949 = getelementptr inbounds %struct.CustomDataLayer, ptr %3943, i64 %3946, i32 4
  store i32 %3948, ptr %3949, align 8, !tbaa !705
  %3950 = add nuw nsw i64 %3946, 1
  %3951 = icmp eq i64 %3950, %3944
  br i1 %3951, label %3933, label %3945, !llvm.loop !706

3952:                                             ; preds = %3933, %3929, %3925, %3814
  %3953 = load i16, ptr %7, align 8, !tbaa !60
  %3954 = icmp slt i16 %3953, 245
  br i1 %3954, label %3955, label %4039

3955:                                             ; preds = %3952
  %3956 = icmp eq i16 %3953, 244
  br i1 %3956, label %3957, label %3961

3957:                                             ; preds = %3955
  %3958 = getelementptr inbounds %struct.Main, ptr %2, i64 0, i32 4
  %3959 = load i16, ptr %3958, align 2, !tbaa !634
  %3960 = icmp slt i16 %3959, 2
  br i1 %3960, label %3961, label %4005

3961:                                             ; preds = %3957, %3955
  %3962 = getelementptr inbounds %struct.Main, ptr %2, i64 0, i32 11
  %3963 = load ptr, ptr %3962, align 8, !tbaa !34
  %3964 = icmp eq ptr %3963, null
  br i1 %3964, label %3972, label %3965

3965:                                             ; preds = %3961, %3965
  %3966 = phi ptr [ %3970, %3965 ], [ %3963, %3961 ]
  %3967 = getelementptr inbounds %struct.Scene, ptr %3966, i64 0, i32 22, i32 47
  %3968 = load i32, ptr %3967, align 8, !tbaa !121
  %3969 = or i32 %3968, 2097152
  store i32 %3969, ptr %3967, align 8, !tbaa !121
  %3970 = load ptr, ptr %3966, align 8, !tbaa !34
  %3971 = icmp eq ptr %3970, null
  br i1 %3971, label %3972, label %3965, !llvm.loop !707

3972:                                             ; preds = %3965, %3961
  %3973 = getelementptr inbounds %struct.Main, ptr %2, i64 0, i32 26
  %3974 = load ptr, ptr %3973, align 8, !tbaa !34
  %3975 = icmp eq ptr %3974, null
  br i1 %3975, label %4005, label %3979

3976:                                             ; preds = %3984, %3979
  %3977 = load ptr, ptr %3980, align 8, !tbaa !34
  %3978 = icmp eq ptr %3977, null
  br i1 %3978, label %4005, label %3979, !llvm.loop !708

3979:                                             ; preds = %3972, %3976
  %3980 = phi ptr [ %3977, %3976 ], [ %3974, %3972 ]
  %3981 = getelementptr inbounds %struct.bScreen, ptr %3980, i64 0, i32 3
  %3982 = load ptr, ptr %3981, align 8, !tbaa !34
  %3983 = icmp eq ptr %3982, null
  br i1 %3983, label %3976, label %3987

3984:                                             ; preds = %4002, %3987
  %3985 = load ptr, ptr %3988, align 8, !tbaa !34
  %3986 = icmp eq ptr %3985, null
  br i1 %3986, label %3976, label %3987, !llvm.loop !709

3987:                                             ; preds = %3979, %3984
  %3988 = phi ptr [ %3985, %3984 ], [ %3982, %3979 ]
  %3989 = getelementptr inbounds %struct.ScrArea, ptr %3988, i64 0, i32 19
  %3990 = load ptr, ptr %3989, align 8, !tbaa !34
  %3991 = icmp eq ptr %3990, null
  br i1 %3991, label %3984, label %3992

3992:                                             ; preds = %3987, %4002
  %3993 = phi ptr [ %4003, %4002 ], [ %3990, %3987 ]
  %3994 = getelementptr inbounds %struct.SpaceLink, ptr %3993, i64 0, i32 3
  %3995 = load i32, ptr %3994, align 8, !tbaa !127
  %3996 = icmp eq i32 %3995, 12
  br i1 %3996, label %3997, label %4002

3997:                                             ; preds = %3992
  %3998 = getelementptr inbounds %struct.SpaceAction, ptr %3993, i64 0, i32 6, i32 0, i32 2
  store float -1.000000e+03, ptr %3998, align 8, !tbaa !710
  %3999 = getelementptr inbounds %struct.SpaceAction, ptr %3993, i64 0, i32 6, i32 0, i32 3
  store float 0.000000e+00, ptr %3999, align 4, !tbaa !711
  %4000 = getelementptr inbounds %struct.SpaceAction, ptr %3993, i64 0, i32 6, i32 1, i32 2
  store float -7.500000e+01, ptr %4000, align 8, !tbaa !712
  %4001 = getelementptr inbounds %struct.SpaceAction, ptr %3993, i64 0, i32 6, i32 1, i32 3
  store float 5.000000e+00, ptr %4001, align 4, !tbaa !713
  br label %4002

4002:                                             ; preds = %3992, %3997
  %4003 = load ptr, ptr %3993, align 8, !tbaa !34
  %4004 = icmp eq ptr %4003, null
  br i1 %4004, label %3984, label %3992, !llvm.loop !714

4005:                                             ; preds = %3976, %3972, %3957
  br i1 %3956, label %4006, label %4010

4006:                                             ; preds = %4005
  %4007 = getelementptr inbounds %struct.Main, ptr %2, i64 0, i32 4
  %4008 = load i16, ptr %4007, align 2, !tbaa !634
  %4009 = icmp slt i16 %4008, 3
  br i1 %4009, label %4010, label %4039

4010:                                             ; preds = %4006, %4005
  %4011 = getelementptr inbounds %struct.Main, ptr %2, i64 0, i32 25
  %4012 = load ptr, ptr %4011, align 8, !tbaa !34
  %4013 = icmp eq ptr %4012, null
  br i1 %4013, label %4025, label %4014

4014:                                             ; preds = %4010, %4014
  %4015 = phi ptr [ %4023, %4014 ], [ %4012, %4010 ]
  %4016 = getelementptr inbounds %struct.World, ptr %4015, i64 0, i32 23
  %4017 = load i16, ptr %4016, align 2, !tbaa !715
  %4018 = getelementptr inbounds %struct.World, ptr %4015, i64 0, i32 63
  %4019 = lshr i16 %4017, 5
  %4020 = and i16 %4019, 2
  %4021 = xor i16 %4020, 2
  store i16 %4021, ptr %4018, align 8, !tbaa !716
  %4022 = getelementptr inbounds %struct.World, ptr %4015, i64 0, i32 54
  store float 0x3F747AE140000000, ptr %4022, align 8, !tbaa !717
  %4023 = load ptr, ptr %4015, align 8, !tbaa !34
  %4024 = icmp eq ptr %4023, null
  br i1 %4024, label %4025, label %4014, !llvm.loop !718

4025:                                             ; preds = %4014, %4010
  %4026 = getelementptr inbounds %struct.Main, ptr %2, i64 0, i32 21
  %4027 = load ptr, ptr %4026, align 8, !tbaa !34
  %4028 = icmp eq ptr %4027, null
  br i1 %4028, label %4039, label %4029

4029:                                             ; preds = %4025, %4029
  %4030 = phi ptr [ %4037, %4029 ], [ %4027, %4025 ]
  %4031 = getelementptr inbounds %struct.Lamp, ptr %4030, i64 0, i32 2
  %4032 = load i16, ptr %4031, align 8, !tbaa !719
  %4033 = icmp ne i16 %4032, 4
  %4034 = getelementptr inbounds %struct.Lamp, ptr %4030, i64 0, i32 47
  %4035 = zext i1 %4033 to i16
  store i16 %4035, ptr %4034, align 4, !tbaa !720
  %4036 = getelementptr inbounds %struct.Lamp, ptr %4030, i64 0, i32 46
  store float 0x3F50624DE0000000, ptr %4036, align 8, !tbaa !721
  %4037 = load ptr, ptr %4030, align 8, !tbaa !34
  %4038 = icmp eq ptr %4037, null
  br i1 %4038, label %4039, label %4029, !llvm.loop !722

4039:                                             ; preds = %4029, %4025, %4006, %3952
  %4040 = icmp slt i16 %3953, 246
  br i1 %4040, label %4041, label %4418

4041:                                             ; preds = %4039
  %4042 = icmp eq i16 %3953, 244
  br i1 %4042, label %4043, label %4047

4043:                                             ; preds = %4041
  %4044 = getelementptr inbounds %struct.Main, ptr %2, i64 0, i32 4
  %4045 = load i16, ptr %4044, align 2, !tbaa !634
  %4046 = icmp eq i16 %4045, 3
  br i1 %4046, label %4135, label %4047

4047:                                             ; preds = %4043, %4041
  br i1 %3954, label %4054, label %4048

4048:                                             ; preds = %4047
  %4049 = icmp eq i16 %3953, 245
  br i1 %4049, label %4050, label %4135

4050:                                             ; preds = %4048
  %4051 = getelementptr inbounds %struct.Main, ptr %2, i64 0, i32 4
  %4052 = load i16, ptr %4051, align 2, !tbaa !634
  %4053 = icmp eq i16 %4052, 0
  br i1 %4053, label %4054, label %4135

4054:                                             ; preds = %4050, %4047
  %4055 = getelementptr inbounds %struct.Main, ptr %2, i64 0, i32 13
  %4056 = load ptr, ptr %4055, align 8, !tbaa !34
  %4057 = icmp eq ptr %4056, null
  br i1 %4057, label %4135, label %4058

4058:                                             ; preds = %4054, %4132
  %4059 = phi ptr [ %4133, %4132 ], [ %4056, %4054 ]
  %4060 = getelementptr inbounds %struct.Object, ptr %4059, i64 0, i32 106
  %4061 = load ptr, ptr %4060, align 8, !tbaa !34
  %4062 = icmp eq ptr %4061, null
  br i1 %4062, label %4087, label %4063

4063:                                             ; preds = %4058, %4084
  %4064 = phi ptr [ %4085, %4084 ], [ %4061, %4058 ]
  %4065 = getelementptr inbounds %struct.bConstraint, ptr %4064, i64 0, i32 4
  %4066 = load i16, ptr %4065, align 2, !tbaa !723
  %4067 = and i16 %4066, 32
  %4068 = icmp eq i16 %4067, 0
  br i1 %4068, label %4072, label %4069

4069:                                             ; preds = %4063
  %4070 = getelementptr inbounds %struct.bConstraint, ptr %4064, i64 0, i32 5
  store i8 1, ptr %4070, align 4, !tbaa !724
  %4071 = getelementptr inbounds %struct.bConstraint, ptr %4064, i64 0, i32 6
  store i8 1, ptr %4071, align 1, !tbaa !725
  br label %4072

4072:                                             ; preds = %4069, %4063
  %4073 = getelementptr inbounds %struct.bConstraint, ptr %4064, i64 0, i32 3
  %4074 = load i16, ptr %4073, align 8, !tbaa !283
  %4075 = icmp eq i16 %4074, 6
  br i1 %4075, label %4076, label %4084

4076:                                             ; preds = %4072
  %4077 = getelementptr inbounds %struct.bConstraint, ptr %4064, i64 0, i32 2
  %4078 = load ptr, ptr %4077, align 8, !tbaa !52
  %4079 = getelementptr inbounds %struct.bLocLimitConstraint, ptr %4078, i64 0, i32 7
  %4080 = load i16, ptr %4079, align 2, !tbaa !726
  %4081 = icmp eq i16 %4080, 0
  br i1 %4081, label %4084, label %4082

4082:                                             ; preds = %4076
  %4083 = getelementptr inbounds %struct.bConstraint, ptr %4064, i64 0, i32 5
  store i8 1, ptr %4083, align 4, !tbaa !724
  br label %4084

4084:                                             ; preds = %4076, %4082, %4072
  %4085 = load ptr, ptr %4064, align 8, !tbaa !34
  %4086 = icmp eq ptr %4085, null
  br i1 %4086, label %4087, label %4063, !llvm.loop !728

4087:                                             ; preds = %4084, %4058
  %4088 = getelementptr inbounds %struct.Object, ptr %4059, i64 0, i32 49
  call void @unit_m4(ptr noundef nonnull %4088) #11
  %4089 = getelementptr inbounds %struct.Object, ptr %4059, i64 0, i32 3
  %4090 = load i16, ptr %4089, align 8, !tbaa !285
  %4091 = icmp eq i16 %4090, 25
  br i1 %4091, label %4092, label %4132

4092:                                             ; preds = %4087
  %4093 = getelementptr inbounds %struct.Object, ptr %4059, i64 0, i32 18
  %4094 = load ptr, ptr %4093, align 8, !tbaa !286
  %4095 = icmp eq ptr %4094, null
  br i1 %4095, label %4132, label %4096

4096:                                             ; preds = %4092
  %4097 = load ptr, ptr %4094, align 8, !tbaa !34
  %4098 = icmp eq ptr %4097, null
  br i1 %4098, label %4132, label %4099

4099:                                             ; preds = %4096, %4128
  %4100 = phi ptr [ %4130, %4128 ], [ %4097, %4096 ]
  %4101 = getelementptr inbounds %struct.bPoseChannel, ptr %4100, i64 0, i32 3
  %4102 = load ptr, ptr %4101, align 8, !tbaa !34
  %4103 = icmp eq ptr %4102, null
  br i1 %4103, label %4128, label %4104

4104:                                             ; preds = %4099, %4125
  %4105 = phi ptr [ %4126, %4125 ], [ %4102, %4099 ]
  %4106 = getelementptr inbounds %struct.bConstraint, ptr %4105, i64 0, i32 4
  %4107 = load i16, ptr %4106, align 2, !tbaa !723
  %4108 = and i16 %4107, 32
  %4109 = icmp eq i16 %4108, 0
  br i1 %4109, label %4113, label %4110

4110:                                             ; preds = %4104
  %4111 = getelementptr inbounds %struct.bConstraint, ptr %4105, i64 0, i32 5
  store i8 1, ptr %4111, align 4, !tbaa !724
  %4112 = getelementptr inbounds %struct.bConstraint, ptr %4105, i64 0, i32 6
  store i8 1, ptr %4112, align 1, !tbaa !725
  br label %4113

4113:                                             ; preds = %4110, %4104
  %4114 = getelementptr inbounds %struct.bConstraint, ptr %4105, i64 0, i32 3
  %4115 = load i16, ptr %4114, align 8, !tbaa !283
  %4116 = icmp eq i16 %4115, 12
  br i1 %4116, label %4117, label %4125

4117:                                             ; preds = %4113
  %4118 = getelementptr inbounds %struct.bConstraint, ptr %4105, i64 0, i32 2
  %4119 = load ptr, ptr %4118, align 8, !tbaa !52
  %4120 = getelementptr inbounds %struct.bActionConstraint, ptr %4119, i64 0, i32 2
  %4121 = load i16, ptr %4120, align 2, !tbaa !729
  %4122 = icmp eq i16 %4121, 0
  br i1 %4122, label %4125, label %4123

4123:                                             ; preds = %4117
  %4124 = getelementptr inbounds %struct.bConstraint, ptr %4105, i64 0, i32 6
  store i8 1, ptr %4124, align 1, !tbaa !725
  br label %4125

4125:                                             ; preds = %4117, %4123, %4113
  %4126 = load ptr, ptr %4105, align 8, !tbaa !34
  %4127 = icmp eq ptr %4126, null
  br i1 %4127, label %4128, label %4104, !llvm.loop !731

4128:                                             ; preds = %4125, %4099
  %4129 = getelementptr inbounds %struct.bPoseChannel, ptr %4100, i64 0, i32 30
  call void @unit_m4(ptr noundef nonnull %4129) #11
  %4130 = load ptr, ptr %4100, align 8, !tbaa !34
  %4131 = icmp eq ptr %4130, null
  br i1 %4131, label %4132, label %4099, !llvm.loop !732

4132:                                             ; preds = %4128, %4096, %4092, %4087
  %4133 = load ptr, ptr %4059, align 8, !tbaa !34
  %4134 = icmp eq ptr %4133, null
  br i1 %4134, label %4135, label %4058, !llvm.loop !733

4135:                                             ; preds = %4132, %4054, %4050, %4048, %4043
  %4136 = load i16, ptr %7, align 8, !tbaa !60
  %4137 = icmp eq i16 %4136, 245
  br i1 %4137, label %4147, label %4138

4138:                                             ; preds = %4135
  %4139 = getelementptr inbounds %struct.Main, ptr %2, i64 0, i32 19
  %4140 = load ptr, ptr %4139, align 8, !tbaa !34
  %4141 = icmp eq ptr %4140, null
  br i1 %4141, label %4147, label %4142

4142:                                             ; preds = %4138, %4142
  %4143 = phi ptr [ %4145, %4142 ], [ %4140, %4138 ]
  %4144 = getelementptr inbounds %struct.Image, ptr %4143, i64 0, i32 23
  store ptr null, ptr %4144, align 8, !tbaa !734
  %4145 = load ptr, ptr %4143, align 8, !tbaa !34
  %4146 = icmp eq ptr %4145, null
  br i1 %4146, label %4147, label %4142, !llvm.loop !735

4147:                                             ; preds = %4142, %4138, %4135
  %4148 = getelementptr inbounds %struct.Main, ptr %2, i64 0, i32 13
  %4149 = load ptr, ptr %4148, align 8, !tbaa !34
  %4150 = icmp eq ptr %4149, null
  br i1 %4150, label %4214, label %4154

4151:                                             ; preds = %4211, %4194
  %4152 = load ptr, ptr %4155, align 8, !tbaa !34
  %4153 = icmp eq ptr %4152, null
  br i1 %4153, label %4214, label %4154, !llvm.loop !736

4154:                                             ; preds = %4147, %4151
  %4155 = phi ptr [ %4152, %4151 ], [ %4149, %4147 ]
  %4156 = getelementptr inbounds %struct.Object, ptr %4155, i64 0, i32 111
  %4157 = load ptr, ptr %4156, align 8, !tbaa !413
  %4158 = icmp eq ptr %4157, null
  br i1 %4158, label %4168, label %4159

4159:                                             ; preds = %4154
  %4160 = getelementptr inbounds %struct.SoftBody, ptr %4157, i64 0, i32 47
  %4161 = load ptr, ptr %4160, align 8, !tbaa !737
  %4162 = icmp eq ptr %4161, null
  br i1 %4162, label %4163, label %4168

4163:                                             ; preds = %4159
  %4164 = getelementptr inbounds %struct.SoftBody, ptr %4157, i64 0, i32 48
  %4165 = call ptr @BKE_ptcache_add(ptr noundef nonnull %4164) #11
  %4166 = load ptr, ptr %4156, align 8, !tbaa !413
  %4167 = getelementptr inbounds %struct.SoftBody, ptr %4166, i64 0, i32 47
  store ptr %4165, ptr %4167, align 8, !tbaa !737
  br label %4168

4168:                                             ; preds = %4163, %4159, %4154
  %4169 = getelementptr inbounds %struct.Object, ptr %4155, i64 0, i32 109
  %4170 = load ptr, ptr %4169, align 8, !tbaa !34
  %4171 = icmp eq ptr %4170, null
  br i1 %4171, label %4194, label %4172

4172:                                             ; preds = %4168, %4191
  %4173 = phi ptr [ %4192, %4191 ], [ %4170, %4168 ]
  %4174 = getelementptr inbounds %struct.ParticleSystem, ptr %4173, i64 0, i32 40
  %4175 = load ptr, ptr %4174, align 8, !tbaa !738
  %4176 = icmp eq ptr %4175, null
  br i1 %4176, label %4188, label %4177

4177:                                             ; preds = %4172
  %4178 = getelementptr inbounds %struct.PointCache, ptr %4175, i64 0, i32 2
  %4179 = load i32, ptr %4178, align 8, !tbaa !740
  %4180 = and i32 %4179, 65
  %4181 = icmp eq i32 %4180, 1
  br i1 %4181, label %4182, label %4191

4182:                                             ; preds = %4177
  %4183 = call i32 @puts(ptr nonnull dereferenceable(1) @str.29)
  %4184 = load ptr, ptr %4174, align 8, !tbaa !738
  %4185 = getelementptr inbounds %struct.PointCache, ptr %4184, i64 0, i32 2
  %4186 = load i32, ptr %4185, align 8, !tbaa !740
  %4187 = and i32 %4186, -2
  store i32 %4187, ptr %4185, align 8, !tbaa !740
  br label %4191

4188:                                             ; preds = %4172
  %4189 = getelementptr inbounds %struct.ParticleSystem, ptr %4173, i64 0, i32 41
  %4190 = call ptr @BKE_ptcache_add(ptr noundef nonnull %4189) #11
  store ptr %4190, ptr %4174, align 8, !tbaa !738
  br label %4191

4191:                                             ; preds = %4188, %4182, %4177
  %4192 = load ptr, ptr %4173, align 8, !tbaa !34
  %4193 = icmp eq ptr %4192, null
  br i1 %4193, label %4194, label %4172, !llvm.loop !742

4194:                                             ; preds = %4191, %4168
  %4195 = getelementptr inbounds %struct.Object, ptr %4155, i64 0, i32 26
  %4196 = load ptr, ptr %4195, align 8, !tbaa !34
  %4197 = icmp eq ptr %4196, null
  br i1 %4197, label %4151, label %4198

4198:                                             ; preds = %4194, %4211
  %4199 = phi ptr [ %4212, %4211 ], [ %4196, %4194 ]
  %4200 = getelementptr inbounds %struct.ModifierData, ptr %4199, i64 0, i32 2
  %4201 = load i32, ptr %4200, align 8, !tbaa !466
  %4202 = icmp eq i32 %4201, 22
  br i1 %4202, label %4203, label %4211

4203:                                             ; preds = %4198
  %4204 = getelementptr inbounds %struct.ClothModifierData, ptr %4199, i64 0, i32 5
  %4205 = load ptr, ptr %4204, align 8, !tbaa !743
  %4206 = icmp eq ptr %4205, null
  br i1 %4206, label %4207, label %4211

4207:                                             ; preds = %4203
  %4208 = getelementptr inbounds %struct.ClothModifierData, ptr %4199, i64 0, i32 6
  %4209 = call ptr @BKE_ptcache_add(ptr noundef nonnull %4208) #11
  store ptr %4209, ptr %4204, align 8, !tbaa !743
  %4210 = getelementptr inbounds %struct.PointCache, ptr %4209, i64 0, i32 3
  store i32 1, ptr %4210, align 4, !tbaa !745
  br label %4211

4211:                                             ; preds = %4203, %4207, %4198
  %4212 = load ptr, ptr %4199, align 8, !tbaa !34
  %4213 = icmp eq ptr %4212, null
  br i1 %4213, label %4151, label %4198, !llvm.loop !746

4214:                                             ; preds = %4151, %4147
  %4215 = getelementptr inbounds %struct.Main, ptr %2, i64 0, i32 14
  %4216 = load ptr, ptr %4215, align 8, !tbaa !34
  %4217 = icmp eq ptr %4216, null
  br i1 %4217, label %4248, label %4218

4218:                                             ; preds = %4214, %4245
  %4219 = phi ptr [ %4246, %4245 ], [ %4216, %4214 ]
  %4220 = getelementptr inbounds %struct.Mesh, ptr %4219, i64 0, i32 48
  %4221 = load ptr, ptr %4220, align 8, !tbaa !747
  %4222 = icmp eq ptr %4221, null
  br i1 %4222, label %4245, label %4223

4223:                                             ; preds = %4218
  %4224 = getelementptr inbounds %struct.Multires, ptr %4221, i64 0, i32 1
  %4225 = load ptr, ptr %4224, align 8, !tbaa !748
  %4226 = icmp eq ptr %4225, null
  br i1 %4226, label %4227, label %4245

4227:                                             ; preds = %4223
  %4228 = getelementptr inbounds %struct.ListBase, ptr %4221, i64 0, i32 1
  %4229 = load ptr, ptr %4228, align 8, !tbaa !750
  %4230 = icmp eq ptr %4229, null
  br i1 %4230, label %4245, label %4231

4231:                                             ; preds = %4227
  %4232 = getelementptr inbounds %struct.MultiresLevel, ptr %4229, i64 0, i32 9
  %4233 = load ptr, ptr %4232, align 8, !tbaa !751
  store ptr %4233, ptr %4224, align 8, !tbaa !748
  store ptr null, ptr %4232, align 8, !tbaa !751
  %4234 = getelementptr inbounds %struct.MultiresLevel, ptr %4229, i64 0, i32 1
  %4235 = load ptr, ptr %4234, align 8, !tbaa !753
  %4236 = icmp eq ptr %4235, null
  br i1 %4236, label %4245, label %4237

4237:                                             ; preds = %4231, %4237
  %4238 = phi ptr [ %4243, %4237 ], [ %4235, %4231 ]
  %4239 = load ptr, ptr @MEM_freeN, align 8, !tbaa !34
  %4240 = getelementptr inbounds %struct.MultiresLevel, ptr %4238, i64 0, i32 9
  %4241 = load ptr, ptr %4240, align 8, !tbaa !751
  call void %4239(ptr noundef %4241) #11
  store ptr null, ptr %4240, align 8, !tbaa !751
  %4242 = getelementptr inbounds %struct.MultiresLevel, ptr %4238, i64 0, i32 1
  %4243 = load ptr, ptr %4242, align 8, !tbaa !753
  %4244 = icmp eq ptr %4243, null
  br i1 %4244, label %4245, label %4237, !llvm.loop !754

4245:                                             ; preds = %4237, %4231, %4227, %4218, %4223
  %4246 = load ptr, ptr %4219, align 8, !tbaa !34
  %4247 = icmp eq ptr %4246, null
  br i1 %4247, label %4248, label %4218, !llvm.loop !755

4248:                                             ; preds = %4245, %4214
  %4249 = load i16, ptr %7, align 8, !tbaa !60
  %4250 = icmp eq i16 %4249, 245
  br i1 %4250, label %4251, label %4255

4251:                                             ; preds = %4248
  %4252 = getelementptr inbounds %struct.Main, ptr %2, i64 0, i32 4
  %4253 = load i16, ptr %4252, align 2, !tbaa !634
  %4254 = icmp slt i16 %4253, 1
  br i1 %4254, label %4255, label %4275

4255:                                             ; preds = %4251, %4248
  %4256 = getelementptr inbounds %struct.Main, ptr %2, i64 0, i32 21
  %4257 = load ptr, ptr %4256, align 8, !tbaa !34
  %4258 = icmp eq ptr %4257, null
  br i1 %4258, label %4275, label %4259

4259:                                             ; preds = %4255, %4272
  %4260 = phi ptr [ %4273, %4272 ], [ %4257, %4255 ]
  %4261 = getelementptr inbounds %struct.Lamp, ptr %4260, i64 0, i32 4
  %4262 = load i32, ptr %4261, align 4, !tbaa !756
  %4263 = and i32 %4262, 8
  %4264 = icmp eq i32 %4263, 0
  %4265 = getelementptr inbounds %struct.Lamp, ptr %4260, i64 0, i32 23
  %4266 = select i1 %4264, i16 1, i16 4
  store i16 %4266, ptr %4265, align 8, !tbaa !757
  %4267 = getelementptr inbounds %struct.Lamp, ptr %4260, i64 0, i32 22
  %4268 = load ptr, ptr %4267, align 8, !tbaa !758
  %4269 = icmp eq ptr %4268, null
  br i1 %4269, label %4270, label %4272

4270:                                             ; preds = %4259
  %4271 = call ptr @curvemapping_add(i32 noundef 1, float noundef 0.000000e+00, float noundef 1.000000e+00, float noundef 1.000000e+00, float noundef 0.000000e+00) #11
  store ptr %4271, ptr %4267, align 8, !tbaa !758
  call void @curvemapping_initialize(ptr noundef %4271) #11
  br label %4272

4272:                                             ; preds = %4259, %4270
  %4273 = load ptr, ptr %4260, align 8, !tbaa !34
  %4274 = icmp eq ptr %4273, null
  br i1 %4274, label %4275, label %4259, !llvm.loop !759

4275:                                             ; preds = %4272, %4255, %4251
  %4276 = getelementptr inbounds %struct.Main, ptr %2, i64 0, i32 17
  %4277 = load ptr, ptr %4276, align 8, !tbaa !34
  %4278 = icmp eq ptr %4277, null
  br i1 %4278, label %4301, label %4279

4279:                                             ; preds = %4275, %4298
  %4280 = phi ptr [ %4299, %4298 ], [ %4277, %4275 ]
  %4281 = getelementptr inbounds %struct.Material, ptr %4280, i64 0, i32 43
  %4282 = load i16, ptr %4281, align 4, !tbaa !760
  %4283 = icmp eq i16 %4282, 0
  br i1 %4283, label %4284, label %4293

4284:                                             ; preds = %4279
  %4285 = getelementptr inbounds %struct.Material, ptr %4280, i64 0, i32 42
  store float 1.000000e+00, ptr %4285, align 8, !tbaa !761
  %4286 = getelementptr inbounds %struct.Material, ptr %4280, i64 0, i32 41
  store float 1.000000e+00, ptr %4286, align 4, !tbaa !762
  %4287 = getelementptr inbounds %struct.Material, ptr %4280, i64 0, i32 47
  store float 1.000000e+00, ptr %4287, align 8, !tbaa !763
  %4288 = getelementptr inbounds %struct.Material, ptr %4280, i64 0, i32 44
  store i16 18, ptr %4288, align 2, !tbaa !764
  store i16 18, ptr %4281, align 4, !tbaa !760
  %4289 = getelementptr inbounds %struct.Material, ptr %4280, i64 0, i32 46
  store float 0x3F747AE140000000, ptr %4289, align 4, !tbaa !765
  %4290 = getelementptr inbounds %struct.Material, ptr %4280, i64 0, i32 45
  store float 0x3F747AE140000000, ptr %4290, align 8, !tbaa !766
  %4291 = getelementptr inbounds %struct.Material, ptr %4280, i64 0, i32 48
  store float 0.000000e+00, ptr %4291, align 4, !tbaa !767
  %4292 = getelementptr inbounds %struct.Material, ptr %4280, i64 0, i32 49
  store i16 0, ptr %4292, align 8, !tbaa !768
  br label %4293

4293:                                             ; preds = %4284, %4279
  %4294 = getelementptr inbounds %struct.Material, ptr %4280, i64 0, i32 67
  %4295 = load float, ptr %4294, align 4, !tbaa !769
  %4296 = fcmp oeq float %4295, 0.000000e+00
  br i1 %4296, label %4297, label %4298

4297:                                             ; preds = %4293
  store float 1.000000e+00, ptr %4294, align 4, !tbaa !769
  br label %4298

4298:                                             ; preds = %4293, %4297
  %4299 = load ptr, ptr %4280, align 8, !tbaa !34
  %4300 = icmp eq ptr %4299, null
  br i1 %4300, label %4301, label %4279, !llvm.loop !770

4301:                                             ; preds = %4298, %4275
  %4302 = getelementptr inbounds %struct.Main, ptr %2, i64 0, i32 37
  %4303 = load ptr, ptr %4302, align 8, !tbaa !34
  %4304 = icmp eq ptr %4303, null
  br i1 %4304, label %4324, label %4305

4305:                                             ; preds = %4301, %4321
  %4306 = phi ptr [ %4322, %4321 ], [ %4303, %4301 ]
  %4307 = getelementptr inbounds %struct.ParticleSettings, ptr %4306, i64 0, i32 90
  %4308 = load i32, ptr %4307, align 8, !tbaa !771
  %4309 = icmp eq i32 %4308, 0
  br i1 %4309, label %4310, label %4313

4310:                                             ; preds = %4305
  %4311 = getelementptr inbounds %struct.ParticleSettings, ptr %4306, i64 0, i32 89
  %4312 = load i32, ptr %4311, align 4, !tbaa !773
  store i32 %4312, ptr %4307, align 8, !tbaa !771
  br label %4313

4313:                                             ; preds = %4310, %4305
  %4314 = getelementptr inbounds %struct.ParticleSettings, ptr %4306, i64 0, i32 49
  %4315 = load i16, ptr %4314, align 2, !tbaa !774
  %4316 = icmp eq i16 %4315, 0
  br i1 %4316, label %4317, label %4321

4317:                                             ; preds = %4313
  store i16 1920, ptr %4314, align 2, !tbaa !774
  %4318 = getelementptr inbounds %struct.ParticleSettings, ptr %4306, i64 0, i32 50
  store float 1.000000e+00, ptr %4318, align 8, !tbaa !775
  %4319 = getelementptr inbounds %struct.ParticleSettings, ptr %4306, i64 0, i32 51
  store float 0x3FB99999A0000000, ptr %4319, align 4, !tbaa !776
  %4320 = getelementptr inbounds %struct.ParticleSettings, ptr %4306, i64 0, i32 52
  store float 0x3FE99999A0000000, ptr %4320, align 8, !tbaa !777
  br label %4321

4321:                                             ; preds = %4313, %4317
  %4322 = load ptr, ptr %4306, align 8, !tbaa !34
  %4323 = icmp eq ptr %4322, null
  br i1 %4323, label %4324, label %4305, !llvm.loop !778

4324:                                             ; preds = %4321, %4301
  %4325 = getelementptr inbounds %struct.Main, ptr %2, i64 0, i32 25
  %4326 = load ptr, ptr %4325, align 8, !tbaa !34
  %4327 = icmp eq ptr %4326, null
  br i1 %4327, label %4337, label %4328

4328:                                             ; preds = %4324, %4334
  %4329 = phi ptr [ %4335, %4334 ], [ %4326, %4324 ]
  %4330 = getelementptr inbounds %struct.World, ptr %4329, i64 0, i32 56
  %4331 = load float, ptr %4330, align 8, !tbaa !779
  %4332 = fcmp oeq float %4331, 0.000000e+00
  br i1 %4332, label %4333, label %4334

4333:                                             ; preds = %4328
  store float 2.500000e-01, ptr %4330, align 8, !tbaa !779
  br label %4334

4334:                                             ; preds = %4328, %4333
  %4335 = load ptr, ptr %4329, align 8, !tbaa !34
  %4336 = icmp eq ptr %4335, null
  br i1 %4336, label %4337, label %4328, !llvm.loop !780

4337:                                             ; preds = %4334, %4324
  %4338 = getelementptr inbounds %struct.Main, ptr %2, i64 0, i32 11
  %4339 = load ptr, ptr %4338, align 8, !tbaa !34
  %4340 = icmp eq ptr %4339, null
  br i1 %4340, label %4365, label %4341

4341:                                             ; preds = %4337, %4362
  %4342 = phi ptr [ %4363, %4362 ], [ %4339, %4337 ]
  %4343 = getelementptr inbounds %struct.Scene, ptr %4342, i64 0, i32 18
  %4344 = load ptr, ptr %4343, align 8, !tbaa !524
  %4345 = icmp eq ptr %4344, null
  br i1 %4345, label %4347, label %4346

4346:                                             ; preds = %4341
  call fastcc void @ntree_version_245(ptr noundef %0, ptr noundef %1, ptr noundef nonnull %4344)
  br label %4347

4347:                                             ; preds = %4346, %4341
  %4348 = getelementptr inbounds %struct.Scene, ptr %4342, i64 0, i32 22, i32 97
  %4349 = load i16, ptr %4348, align 2, !tbaa !781
  %4350 = icmp eq i16 %4349, 0
  br i1 %4350, label %4351, label %4355

4351:                                             ; preds = %4347
  %4352 = getelementptr inbounds %struct.Scene, ptr %4342, i64 0, i32 22, i32 96
  store i16 6, ptr %4352, align 4, !tbaa !782
  %4353 = getelementptr inbounds %struct.Scene, ptr %4342, i64 0, i32 22, i32 98
  store float 1.000000e+00, ptr %4353, align 8, !tbaa !783
  store i16 16, ptr %4348, align 2, !tbaa !781
  %4354 = getelementptr inbounds %struct.Scene, ptr %4342, i64 0, i32 22, i32 99
  store float 1.000000e+00, ptr %4354, align 4, !tbaa !784
  br label %4355

4355:                                             ; preds = %4351, %4347
  %4356 = getelementptr inbounds %struct.Scene, ptr %4342, i64 0, i32 22, i32 102
  %4357 = load float, ptr %4356, align 4, !tbaa !785
  %4358 = fcmp oeq float %4357, 0.000000e+00
  br i1 %4358, label %4359, label %4362

4359:                                             ; preds = %4355
  %4360 = getelementptr inbounds %struct.Scene, ptr %4342, i64 0, i32 22, i32 101
  store i16 95, ptr %4360, align 2, !tbaa !786
  %4361 = getelementptr inbounds %struct.Scene, ptr %4342, i64 0, i32 22, i32 100
  store i16 685, ptr %4361, align 8, !tbaa !787
  store float 0x3FFB333340000000, ptr %4356, align 4, !tbaa !785
  br label %4362

4362:                                             ; preds = %4355, %4359
  %4363 = load ptr, ptr %4342, align 8, !tbaa !34
  %4364 = icmp eq ptr %4363, null
  br i1 %4364, label %4365, label %4341, !llvm.loop !788

4365:                                             ; preds = %4362, %4337
  %4366 = getelementptr inbounds %struct.Main, ptr %2, i64 0, i32 35
  %4367 = load ptr, ptr %4366, align 8, !tbaa !34
  %4368 = icmp eq ptr %4367, null
  br i1 %4368, label %4373, label %4369

4369:                                             ; preds = %4365, %4369
  %4370 = phi ptr [ %4371, %4369 ], [ %4367, %4365 ]
  call fastcc void @ntree_version_245(ptr noundef %0, ptr noundef %1, ptr noundef nonnull %4370)
  %4371 = load ptr, ptr %4370, align 8, !tbaa !34
  %4372 = icmp eq ptr %4371, null
  br i1 %4372, label %4373, label %4369, !llvm.loop !789

4373:                                             ; preds = %4369, %4365
  %4374 = getelementptr inbounds %struct.Main, ptr %2, i64 0, i32 19
  %4375 = load ptr, ptr %4374, align 8, !tbaa !34
  %4376 = icmp eq ptr %4375, null
  br i1 %4376, label %4389, label %4377

4377:                                             ; preds = %4373, %4386
  %4378 = phi ptr [ %4387, %4386 ], [ %4375, %4373 ]
  %4379 = getelementptr inbounds %struct.Image, ptr %4378, i64 0, i32 10
  %4380 = load i16, ptr %4379, align 2, !tbaa !643
  %4381 = and i16 %4380, 128
  %4382 = icmp eq i16 %4381, 0
  br i1 %4382, label %4386, label %4383

4383:                                             ; preds = %4377
  %4384 = and i16 %4380, -129
  store i16 %4384, ptr %4379, align 2, !tbaa !643
  %4385 = getelementptr inbounds %struct.Image, ptr %4378, i64 0, i32 37
  store i8 0, ptr %4385, align 8, !tbaa !790
  br label %4386

4386:                                             ; preds = %4377, %4383
  %4387 = load ptr, ptr %4378, align 8, !tbaa !34
  %4388 = icmp eq ptr %4387, null
  br i1 %4388, label %4389, label %4377, !llvm.loop !791

4389:                                             ; preds = %4386, %4373
  %4390 = getelementptr inbounds %struct.Main, ptr %2, i64 0, i32 18
  %4391 = load ptr, ptr %4390, align 8, !tbaa !34
  %4392 = icmp eq ptr %4391, null
  br i1 %4392, label %4418, label %4393

4393:                                             ; preds = %4389, %4415
  %4394 = phi ptr [ %4416, %4415 ], [ %4391, %4389 ]
  %4395 = getelementptr inbounds %struct.Tex, ptr %4394, i64 0, i32 51, i32 12
  %4396 = load i16, ptr %4395, align 2, !tbaa !792
  %4397 = and i16 %4396, 128
  %4398 = icmp eq i16 %4397, 0
  br i1 %4398, label %4401, label %4399

4399:                                             ; preds = %4393
  %4400 = and i16 %4396, -129
  store i16 %4400, ptr %4395, align 2, !tbaa !792
  br label %4401

4401:                                             ; preds = %4399, %4393
  %4402 = getelementptr inbounds %struct.Tex, ptr %4394, i64 0, i32 54
  %4403 = load ptr, ptr %4402, align 8, !tbaa !641
  %4404 = call ptr @blo_do_versions_newlibadr(ptr noundef %0, ptr noundef %1, ptr noundef %4403) #11
  %4405 = icmp eq ptr %4404, null
  br i1 %4405, label %4415, label %4406

4406:                                             ; preds = %4401
  %4407 = load i16, ptr %4395, align 2, !tbaa !792
  %4408 = and i16 %4407, 4
  %4409 = icmp eq i16 %4408, 0
  br i1 %4409, label %4415, label %4410

4410:                                             ; preds = %4406
  %4411 = getelementptr inbounds %struct.Image, ptr %4404, i64 0, i32 10
  %4412 = load i16, ptr %4411, align 2, !tbaa !643
  %4413 = and i16 %4412, -129
  store i16 %4413, ptr %4411, align 2, !tbaa !643
  %4414 = getelementptr inbounds %struct.Image, ptr %4404, i64 0, i32 37
  store i8 0, ptr %4414, align 8, !tbaa !790
  br label %4415

4415:                                             ; preds = %4401, %4406, %4410
  %4416 = load ptr, ptr %4394, align 8, !tbaa !34
  %4417 = icmp eq ptr %4416, null
  br i1 %4417, label %4418, label %4393, !llvm.loop !793

4418:                                             ; preds = %4415, %4389, %4039
  %4419 = getelementptr inbounds %struct.Main, ptr %2, i64 0, i32 11
  %4420 = load ptr, ptr %4419, align 8, !tbaa !34
  %4421 = icmp eq ptr %4420, null
  br i1 %4421, label %4445, label %4422

4422:                                             ; preds = %4418, %4442
  %4423 = phi ptr [ %4443, %4442 ], [ %4420, %4418 ]
  %4424 = getelementptr inbounds %struct.Scene, ptr %4423, i64 0, i32 20
  %4425 = load ptr, ptr %4424, align 8, !tbaa !448
  %4426 = getelementptr inbounds %struct.ToolSettings, ptr %4425, i64 0, i32 39
  %4427 = load i8, ptr %4426, align 4, !tbaa !149
  %4428 = getelementptr inbounds %struct.ToolSettings, ptr %4425, i64 0, i32 39, i64 1
  %4429 = load i8, ptr %4428, align 1, !tbaa !149
  %4430 = icmp eq i8 %4427, %4429
  br i1 %4430, label %4437, label %4431

4431:                                             ; preds = %4422
  %4432 = getelementptr inbounds %struct.ToolSettings, ptr %4425, i64 0, i32 39, i64 2
  %4433 = load i8, ptr %4432, align 2, !tbaa !149
  %4434 = icmp eq i8 %4427, %4433
  %4435 = icmp eq i8 %4429, %4433
  %4436 = or i1 %4434, %4435
  br i1 %4436, label %4437, label %4442

4437:                                             ; preds = %4431, %4422
  store i8 2, ptr %4426, align 4, !tbaa !149
  %4438 = load ptr, ptr %4424, align 8, !tbaa !448
  %4439 = getelementptr inbounds %struct.ToolSettings, ptr %4438, i64 0, i32 39, i64 1
  store i8 0, ptr %4439, align 1, !tbaa !149
  %4440 = load ptr, ptr %4424, align 8, !tbaa !448
  %4441 = getelementptr inbounds %struct.ToolSettings, ptr %4440, i64 0, i32 39, i64 2
  store i8 1, ptr %4441, align 2, !tbaa !149
  br label %4442

4442:                                             ; preds = %4431, %4437
  %4443 = load ptr, ptr %4423, align 8, !tbaa !34
  %4444 = icmp eq ptr %4443, null
  br i1 %4444, label %4445, label %4422, !llvm.loop !794

4445:                                             ; preds = %4442, %4418
  %4446 = load i16, ptr %7, align 8, !tbaa !60
  %4447 = icmp slt i16 %4446, 245
  br i1 %4447, label %4454, label %4448

4448:                                             ; preds = %4445
  %4449 = icmp eq i16 %4446, 245
  br i1 %4449, label %4450, label %4464

4450:                                             ; preds = %4448
  %4451 = getelementptr inbounds %struct.Main, ptr %2, i64 0, i32 4
  %4452 = load i16, ptr %4451, align 2, !tbaa !634
  %4453 = icmp slt i16 %4452, 2
  br i1 %4453, label %4454, label %4464

4454:                                             ; preds = %4450, %4445
  %4455 = getelementptr inbounds %struct.Main, ptr %2, i64 0, i32 19
  %4456 = load ptr, ptr %4455, align 8, !tbaa !34
  %4457 = icmp eq ptr %4456, null
  br i1 %4457, label %4464, label %4458

4458:                                             ; preds = %4454, %4458
  %4459 = phi ptr [ %4462, %4458 ], [ %4456, %4454 ]
  %4460 = getelementptr inbounds %struct.Image, ptr %4459, i64 0, i32 35
  store float 1.000000e+00, ptr %4460, align 4, !tbaa !795
  %4461 = getelementptr inbounds %struct.Image, ptr %4459, i64 0, i32 34
  store float 1.000000e+00, ptr %4461, align 8, !tbaa !796
  %4462 = load ptr, ptr %4459, align 8, !tbaa !34
  %4463 = icmp eq ptr %4462, null
  br i1 %4463, label %4464, label %4458, !llvm.loop !797

4464:                                             ; preds = %4458, %4454, %4450, %4448
  br i1 %4447, label %4471, label %4465

4465:                                             ; preds = %4464
  %4466 = icmp eq i16 %4446, 245
  br i1 %4466, label %4467, label %4506

4467:                                             ; preds = %4465
  %4468 = getelementptr inbounds %struct.Main, ptr %2, i64 0, i32 4
  %4469 = load i16, ptr %4468, align 2, !tbaa !634
  %4470 = icmp slt i16 %4469, 4
  br i1 %4470, label %4471, label %4506

4471:                                             ; preds = %4467, %4464
  %4472 = getelementptr inbounds %struct.Main, ptr %2, i64 0, i32 33
  %4473 = load ptr, ptr %4472, align 8, !tbaa !34
  %4474 = icmp eq ptr %4473, null
  br i1 %4474, label %4482, label %4475

4475:                                             ; preds = %4471, %4475
  %4476 = phi ptr [ %4480, %4475 ], [ %4473, %4471 ]
  %4477 = getelementptr inbounds %struct.bArmature, ptr %4476, i64 0, i32 12
  %4478 = load i16, ptr %4477, align 8, !tbaa !483
  %4479 = or i16 %4478, 8
  store i16 %4479, ptr %4477, align 8, !tbaa !483
  %4480 = load ptr, ptr %4476, align 8, !tbaa !34
  %4481 = icmp eq ptr %4480, null
  br i1 %4481, label %4482, label %4475, !llvm.loop !798

4482:                                             ; preds = %4475, %4471
  %4483 = getelementptr inbounds %struct.Main, ptr %2, i64 0, i32 13
  %4484 = load ptr, ptr %4483, align 8, !tbaa !34
  %4485 = icmp eq ptr %4484, null
  br i1 %4485, label %4506, label %4489

4486:                                             ; preds = %4503, %4489
  %4487 = load ptr, ptr %4490, align 8, !tbaa !34
  %4488 = icmp eq ptr %4487, null
  br i1 %4488, label %4506, label %4489, !llvm.loop !799

4489:                                             ; preds = %4482, %4486
  %4490 = phi ptr [ %4487, %4486 ], [ %4484, %4482 ]
  %4491 = getelementptr inbounds %struct.Object, ptr %4490, i64 0, i32 26
  %4492 = load ptr, ptr %4491, align 8, !tbaa !34
  %4493 = icmp eq ptr %4492, null
  br i1 %4493, label %4486, label %4494

4494:                                             ; preds = %4489, %4503
  %4495 = phi ptr [ %4504, %4503 ], [ %4492, %4489 ]
  %4496 = getelementptr inbounds %struct.ModifierData, ptr %4495, i64 0, i32 2
  %4497 = load i32, ptr %4496, align 8, !tbaa !466
  %4498 = icmp eq i32 %4497, 8
  br i1 %4498, label %4499, label %4503

4499:                                             ; preds = %4494
  %4500 = getelementptr inbounds %struct.ArmatureModifierData, ptr %4495, i64 0, i32 1
  %4501 = load i16, ptr %4500, align 8, !tbaa !496
  %4502 = or i16 %4501, 8
  store i16 %4502, ptr %4500, align 8, !tbaa !496
  br label %4503

4503:                                             ; preds = %4494, %4499
  %4504 = load ptr, ptr %4495, align 8, !tbaa !34
  %4505 = icmp eq ptr %4504, null
  br i1 %4505, label %4486, label %4494, !llvm.loop !800

4506:                                             ; preds = %4486, %4482, %4467, %4465
  br i1 %4447, label %4513, label %4507

4507:                                             ; preds = %4506
  %4508 = icmp eq i16 %4446, 245
  br i1 %4508, label %4509, label %4525

4509:                                             ; preds = %4507
  %4510 = getelementptr inbounds %struct.Main, ptr %2, i64 0, i32 4
  %4511 = load i16, ptr %4510, align 2, !tbaa !634
  %4512 = icmp slt i16 %4511, 5
  br i1 %4512, label %4513, label %4525

4513:                                             ; preds = %4509, %4506
  %4514 = load ptr, ptr %4419, align 8, !tbaa !34
  %4515 = icmp eq ptr %4514, null
  br i1 %4515, label %4525, label %4516

4516:                                             ; preds = %4513, %4516
  %4517 = phi ptr [ %4523, %4516 ], [ %4514, %4513 ]
  %4518 = getelementptr inbounds %struct.Scene, ptr %4517, i64 0, i32 22, i32 89
  %4519 = getelementptr inbounds %struct.Scene, ptr %4517, i64 0, i32 22, i32 89, i64 2
  store float 0x3FE99999A0000000, ptr %4519, align 8, !tbaa !156
  %4520 = getelementptr inbounds %struct.Scene, ptr %4517, i64 0, i32 22, i32 89, i64 1
  store float 0x3FE99999A0000000, ptr %4520, align 4, !tbaa !156
  store float 0x3FE99999A0000000, ptr %4518, align 8, !tbaa !156
  %4521 = getelementptr inbounds %struct.Scene, ptr %4517, i64 0, i32 22, i32 89, i64 3
  store float 1.000000e+00, ptr %4521, align 4, !tbaa !156
  %4522 = getelementptr inbounds %struct.Scene, ptr %4517, i64 0, i32 22, i32 90, i64 3
  store float 2.500000e-01, ptr %4522, align 4, !tbaa !156
  %4523 = load ptr, ptr %4517, align 8, !tbaa !34
  %4524 = icmp eq ptr %4523, null
  br i1 %4524, label %4525, label %4516, !llvm.loop !801

4525:                                             ; preds = %4516, %4513, %4509, %4507
  br i1 %4447, label %4532, label %4526

4526:                                             ; preds = %4525
  %4527 = icmp eq i16 %4446, 245
  br i1 %4527, label %4528, label %4544

4528:                                             ; preds = %4526
  %4529 = getelementptr inbounds %struct.Main, ptr %2, i64 0, i32 4
  %4530 = load i16, ptr %4529, align 2, !tbaa !634
  %4531 = icmp slt i16 %4530, 6
  br i1 %4531, label %4532, label %4544

4532:                                             ; preds = %4528, %4525
  %4533 = load ptr, ptr %4419, align 8, !tbaa !34
  %4534 = icmp eq ptr %4533, null
  br i1 %4534, label %4544, label %4535

4535:                                             ; preds = %4532, %4541
  %4536 = phi ptr [ %4542, %4541 ], [ %4533, %4532 ]
  %4537 = getelementptr inbounds %struct.Scene, ptr %4536, i64 0, i32 22, i32 65
  %4538 = load float, ptr %4537, align 4, !tbaa !802
  %4539 = fcmp oeq float %4538, 0.000000e+00
  br i1 %4539, label %4540, label %4541

4540:                                             ; preds = %4535
  store float 1.000000e+00, ptr %4537, align 4, !tbaa !802
  br label %4541

4541:                                             ; preds = %4535, %4540
  %4542 = load ptr, ptr %4536, align 8, !tbaa !34
  %4543 = icmp eq ptr %4542, null
  br i1 %4543, label %4544, label %4535, !llvm.loop !803

4544:                                             ; preds = %4541, %4532, %4528, %4526
  br i1 %4447, label %4551, label %4545

4545:                                             ; preds = %4544
  %4546 = icmp eq i16 %4446, 245
  br i1 %4546, label %4547, label %4683

4547:                                             ; preds = %4545
  %4548 = getelementptr inbounds %struct.Main, ptr %2, i64 0, i32 4
  %4549 = load i16, ptr %4548, align 2, !tbaa !634
  %4550 = icmp slt i16 %4549, 7
  br i1 %4550, label %4551, label %4683

4551:                                             ; preds = %4547, %4544
  %4552 = getelementptr inbounds %struct.Main, ptr %2, i64 0, i32 13
  %4553 = load ptr, ptr %4552, align 8, !tbaa !34
  %4554 = icmp eq ptr %4553, null
  br i1 %4554, label %4683, label %4555

4555:                                             ; preds = %4551, %4680
  %4556 = phi ptr [ %4681, %4680 ], [ %4553, %4551 ]
  %4557 = getelementptr inbounds %struct.Object, ptr %4556, i64 0, i32 18
  %4558 = load ptr, ptr %4557, align 8, !tbaa !286
  %4559 = icmp eq ptr %4558, null
  br i1 %4559, label %4609, label %4560

4560:                                             ; preds = %4555
  %4561 = load ptr, ptr %4558, align 8, !tbaa !34
  %4562 = icmp eq ptr %4561, null
  br i1 %4562, label %4609, label %4566

4563:                                             ; preds = %4606, %4566
  %4564 = load ptr, ptr %4567, align 8, !tbaa !34
  %4565 = icmp eq ptr %4564, null
  br i1 %4565, label %4609, label %4566, !llvm.loop !804

4566:                                             ; preds = %4560, %4563
  %4567 = phi ptr [ %4564, %4563 ], [ %4561, %4560 ]
  %4568 = getelementptr inbounds %struct.bPoseChannel, ptr %4567, i64 0, i32 3
  %4569 = load ptr, ptr %4568, align 8, !tbaa !34
  %4570 = icmp eq ptr %4569, null
  br i1 %4570, label %4563, label %4571

4571:                                             ; preds = %4566, %4606
  %4572 = phi ptr [ %4607, %4606 ], [ %4569, %4566 ]
  %4573 = getelementptr inbounds %struct.bConstraint, ptr %4572, i64 0, i32 3
  %4574 = load i16, ptr %4573, align 8, !tbaa !283
  switch i16 %4574, label %4606 [
    i16 11, label %4575
    i16 9, label %4597
  ]

4575:                                             ; preds = %4571
  %4576 = getelementptr inbounds %struct.bConstraint, ptr %4572, i64 0, i32 2
  %4577 = load ptr, ptr %4576, align 8, !tbaa !52
  %4578 = getelementptr inbounds %struct.bPythonConstraint, ptr %4577, i64 0, i32 5
  %4579 = load ptr, ptr %4578, align 8, !tbaa !805
  %4580 = icmp eq ptr %4579, null
  br i1 %4580, label %4606, label %4581

4581:                                             ; preds = %4575
  %4582 = load ptr, ptr @MEM_callocN, align 8, !tbaa !34
  %4583 = call ptr %4582(i64 noundef 160, ptr noundef nonnull @.str.13) #11
  %4584 = load ptr, ptr %4578, align 8, !tbaa !805
  %4585 = getelementptr inbounds %struct.bConstraintTarget, ptr %4583, i64 0, i32 2
  store ptr %4584, ptr %4585, align 8, !tbaa !807
  %4586 = getelementptr inbounds %struct.bConstraintTarget, ptr %4583, i64 0, i32 3
  %4587 = getelementptr inbounds %struct.bPythonConstraint, ptr %4577, i64 0, i32 6
  %4588 = call ptr @BLI_strncpy(ptr noundef nonnull %4586, ptr noundef nonnull %4587, i64 noundef 64) #11
  %4589 = getelementptr inbounds %struct.bConstraint, ptr %4572, i64 0, i32 6
  %4590 = load i8, ptr %4589, align 1, !tbaa !725
  %4591 = zext i8 %4590 to i16
  %4592 = getelementptr inbounds %struct.bConstraintTarget, ptr %4583, i64 0, i32 5
  store i16 %4591, ptr %4592, align 8, !tbaa !809
  %4593 = getelementptr inbounds %struct.bPythonConstraint, ptr %4577, i64 0, i32 4
  call void @BLI_addtail(ptr noundef nonnull %4593, ptr noundef %4583) #11
  %4594 = getelementptr inbounds %struct.bPythonConstraint, ptr %4577, i64 0, i32 3
  %4595 = load i32, ptr %4594, align 4, !tbaa !810
  %4596 = add nsw i32 %4595, 1
  store i32 %4596, ptr %4594, align 4, !tbaa !810
  store ptr null, ptr %4578, align 8, !tbaa !805
  store i8 0, ptr %4587, align 8, !tbaa !149
  br label %4606

4597:                                             ; preds = %4571
  %4598 = getelementptr inbounds %struct.bConstraint, ptr %4572, i64 0, i32 2
  %4599 = load ptr, ptr %4598, align 8, !tbaa !52
  %4600 = getelementptr inbounds %struct.bLocateLikeConstraint, ptr %4599, i64 0, i32 1
  %4601 = load i32, ptr %4600, align 8, !tbaa !811
  %4602 = and i32 %4601, 8
  %4603 = icmp eq i32 %4602, 0
  br i1 %4603, label %4606, label %4604

4604:                                             ; preds = %4597
  %4605 = getelementptr inbounds %struct.bConstraint, ptr %4572, i64 0, i32 10
  store float 1.000000e+00, ptr %4605, align 4, !tbaa !813
  br label %4606

4606:                                             ; preds = %4597, %4604, %4571, %4575, %4581
  %4607 = load ptr, ptr %4572, align 8, !tbaa !34
  %4608 = icmp eq ptr %4607, null
  br i1 %4608, label %4563, label %4571, !llvm.loop !814

4609:                                             ; preds = %4563, %4560, %4555
  %4610 = getelementptr inbounds %struct.Object, ptr %4556, i64 0, i32 106
  %4611 = load ptr, ptr %4610, align 8, !tbaa !34
  %4612 = icmp eq ptr %4611, null
  br i1 %4612, label %4651, label %4613

4613:                                             ; preds = %4609, %4648
  %4614 = phi ptr [ %4649, %4648 ], [ %4611, %4609 ]
  %4615 = getelementptr inbounds %struct.bConstraint, ptr %4614, i64 0, i32 3
  %4616 = load i16, ptr %4615, align 8, !tbaa !283
  switch i16 %4616, label %4648 [
    i16 11, label %4617
    i16 9, label %4639
  ]

4617:                                             ; preds = %4613
  %4618 = getelementptr inbounds %struct.bConstraint, ptr %4614, i64 0, i32 2
  %4619 = load ptr, ptr %4618, align 8, !tbaa !52
  %4620 = getelementptr inbounds %struct.bPythonConstraint, ptr %4619, i64 0, i32 5
  %4621 = load ptr, ptr %4620, align 8, !tbaa !805
  %4622 = icmp eq ptr %4621, null
  br i1 %4622, label %4648, label %4623

4623:                                             ; preds = %4617
  %4624 = load ptr, ptr @MEM_callocN, align 8, !tbaa !34
  %4625 = call ptr %4624(i64 noundef 160, ptr noundef nonnull @.str.13) #11
  %4626 = load ptr, ptr %4620, align 8, !tbaa !805
  %4627 = getelementptr inbounds %struct.bConstraintTarget, ptr %4625, i64 0, i32 2
  store ptr %4626, ptr %4627, align 8, !tbaa !807
  %4628 = getelementptr inbounds %struct.bConstraintTarget, ptr %4625, i64 0, i32 3
  %4629 = getelementptr inbounds %struct.bPythonConstraint, ptr %4619, i64 0, i32 6
  %4630 = call ptr @BLI_strncpy(ptr noundef nonnull %4628, ptr noundef nonnull %4629, i64 noundef 64) #11
  %4631 = getelementptr inbounds %struct.bConstraint, ptr %4614, i64 0, i32 6
  %4632 = load i8, ptr %4631, align 1, !tbaa !725
  %4633 = zext i8 %4632 to i16
  %4634 = getelementptr inbounds %struct.bConstraintTarget, ptr %4625, i64 0, i32 5
  store i16 %4633, ptr %4634, align 8, !tbaa !809
  %4635 = getelementptr inbounds %struct.bPythonConstraint, ptr %4619, i64 0, i32 4
  call void @BLI_addtail(ptr noundef nonnull %4635, ptr noundef %4625) #11
  %4636 = getelementptr inbounds %struct.bPythonConstraint, ptr %4619, i64 0, i32 3
  %4637 = load i32, ptr %4636, align 4, !tbaa !810
  %4638 = add nsw i32 %4637, 1
  store i32 %4638, ptr %4636, align 4, !tbaa !810
  store ptr null, ptr %4620, align 8, !tbaa !805
  store i8 0, ptr %4629, align 8, !tbaa !149
  br label %4648

4639:                                             ; preds = %4613
  %4640 = getelementptr inbounds %struct.bConstraint, ptr %4614, i64 0, i32 2
  %4641 = load ptr, ptr %4640, align 8, !tbaa !52
  %4642 = getelementptr inbounds %struct.bLocateLikeConstraint, ptr %4641, i64 0, i32 1
  %4643 = load i32, ptr %4642, align 8, !tbaa !811
  %4644 = and i32 %4643, 8
  %4645 = icmp eq i32 %4644, 0
  br i1 %4645, label %4648, label %4646

4646:                                             ; preds = %4639
  %4647 = getelementptr inbounds %struct.bConstraint, ptr %4614, i64 0, i32 10
  store float 1.000000e+00, ptr %4647, align 4, !tbaa !813
  br label %4648

4648:                                             ; preds = %4639, %4646, %4613, %4617, %4623
  %4649 = load ptr, ptr %4614, align 8, !tbaa !34
  %4650 = icmp eq ptr %4649, null
  br i1 %4650, label %4651, label %4613, !llvm.loop !815

4651:                                             ; preds = %4648, %4609
  %4652 = getelementptr inbounds %struct.Object, ptr %4556, i64 0, i32 111
  %4653 = load ptr, ptr %4652, align 8, !tbaa !413
  %4654 = icmp eq ptr %4653, null
  br i1 %4654, label %4680, label %4655

4655:                                             ; preds = %4651
  %4656 = getelementptr inbounds %struct.SoftBody, ptr %4653, i64 0, i32 29
  %4657 = load ptr, ptr %4656, align 8, !tbaa !816
  %4658 = icmp eq ptr %4657, null
  br i1 %4658, label %4680, label %4659

4659:                                             ; preds = %4655
  %4660 = getelementptr inbounds %struct.SoftBody, ptr %4653, i64 0, i32 31
  %4661 = load i32, ptr %4660, align 4, !tbaa !817
  %4662 = icmp sgt i32 %4661, 0
  br i1 %4662, label %4663, label %4676

4663:                                             ; preds = %4659, %4671
  %4664 = phi i64 [ %4672, %4671 ], [ 0, %4659 ]
  %4665 = load ptr, ptr %4656, align 8, !tbaa !816
  %4666 = getelementptr inbounds ptr, ptr %4665, i64 %4664
  %4667 = load ptr, ptr %4666, align 8, !tbaa !34
  %4668 = icmp eq ptr %4667, null
  br i1 %4668, label %4671, label %4669

4669:                                             ; preds = %4663
  %4670 = load ptr, ptr @MEM_freeN, align 8, !tbaa !34
  call void %4670(ptr noundef nonnull %4667) #11
  br label %4671

4671:                                             ; preds = %4663, %4669
  %4672 = add nuw nsw i64 %4664, 1
  %4673 = load i32, ptr %4660, align 4, !tbaa !817
  %4674 = sext i32 %4673 to i64
  %4675 = icmp slt i64 %4672, %4674
  br i1 %4675, label %4663, label %4676, !llvm.loop !818

4676:                                             ; preds = %4671, %4659
  %4677 = getelementptr inbounds %struct.SoftBody, ptr %4653, i64 0, i32 31
  %4678 = load ptr, ptr @MEM_freeN, align 8, !tbaa !34
  %4679 = load ptr, ptr %4656, align 8, !tbaa !816
  call void %4678(ptr noundef %4679) #11
  store ptr null, ptr %4656, align 8, !tbaa !816
  store i32 0, ptr %4677, align 4, !tbaa !817
  br label %4680

4680:                                             ; preds = %4651, %4655, %4676
  %4681 = load ptr, ptr %4556, align 8, !tbaa !34
  %4682 = icmp eq ptr %4681, null
  br i1 %4682, label %4683, label %4555, !llvm.loop !819

4683:                                             ; preds = %4680, %4551, %4547, %4545
  %4684 = load i16, ptr %7, align 8, !tbaa !60
  %4685 = icmp slt i16 %4684, 245
  br i1 %4685, label %4692, label %4686

4686:                                             ; preds = %4683
  %4687 = icmp eq i16 %4684, 245
  br i1 %4687, label %4688, label %4980

4688:                                             ; preds = %4686
  %4689 = getelementptr inbounds %struct.Main, ptr %2, i64 0, i32 4
  %4690 = load i16, ptr %4689, align 2, !tbaa !634
  %4691 = icmp slt i16 %4690, 8
  br i1 %4691, label %4692, label %4980

4692:                                             ; preds = %4688, %4683
  %4693 = getelementptr inbounds %struct.Main, ptr %2, i64 0, i32 13
  %4694 = load ptr, ptr %4693, align 8, !tbaa !34
  %4695 = icmp eq ptr %4694, null
  br i1 %4695, label %4698, label %4696

4696:                                             ; preds = %4692
  %4697 = getelementptr inbounds %struct.FileData, ptr %0, i64 0, i32 23
  br label %4701

4698:                                             ; preds = %4952, %4692
  %4699 = load ptr, ptr %4419, align 8, !tbaa !34
  %4700 = icmp eq ptr %4699, null
  br i1 %4700, label %4980, label %4955

4701:                                             ; preds = %4696, %4952
  %4702 = phi ptr [ %4694, %4696 ], [ %4953, %4952 ]
  %4703 = getelementptr inbounds %struct.Object, ptr %4702, i64 0, i32 111
  %4704 = load ptr, ptr %4703, align 8, !tbaa !413
  %4705 = icmp eq ptr %4704, null
  br i1 %4705, label %4731, label %4706

4706:                                             ; preds = %4701
  %4707 = getelementptr inbounds %struct.SoftBody, ptr %4704, i64 0, i32 29
  %4708 = load ptr, ptr %4707, align 8, !tbaa !816
  %4709 = icmp eq ptr %4708, null
  br i1 %4709, label %4731, label %4710

4710:                                             ; preds = %4706
  %4711 = getelementptr inbounds %struct.SoftBody, ptr %4704, i64 0, i32 31
  %4712 = load i32, ptr %4711, align 4, !tbaa !817
  %4713 = icmp sgt i32 %4712, 0
  br i1 %4713, label %4714, label %4727

4714:                                             ; preds = %4710, %4722
  %4715 = phi i64 [ %4723, %4722 ], [ 0, %4710 ]
  %4716 = load ptr, ptr %4707, align 8, !tbaa !816
  %4717 = getelementptr inbounds ptr, ptr %4716, i64 %4715
  %4718 = load ptr, ptr %4717, align 8, !tbaa !34
  %4719 = icmp eq ptr %4718, null
  br i1 %4719, label %4722, label %4720

4720:                                             ; preds = %4714
  %4721 = load ptr, ptr @MEM_freeN, align 8, !tbaa !34
  call void %4721(ptr noundef nonnull %4718) #11
  br label %4722

4722:                                             ; preds = %4714, %4720
  %4723 = add nuw nsw i64 %4715, 1
  %4724 = load i32, ptr %4711, align 4, !tbaa !817
  %4725 = sext i32 %4724 to i64
  %4726 = icmp slt i64 %4723, %4725
  br i1 %4726, label %4714, label %4727, !llvm.loop !820

4727:                                             ; preds = %4722, %4710
  %4728 = getelementptr inbounds %struct.SoftBody, ptr %4704, i64 0, i32 31
  %4729 = load ptr, ptr @MEM_freeN, align 8, !tbaa !34
  %4730 = load ptr, ptr %4707, align 8, !tbaa !816
  call void %4729(ptr noundef %4730) #11
  store ptr null, ptr %4707, align 8, !tbaa !816
  store i32 0, ptr %4728, align 4, !tbaa !817
  br label %4731

4731:                                             ; preds = %4727, %4706, %4701
  %4732 = getelementptr inbounds %struct.Object, ptr %4702, i64 0, i32 24
  br label %4733

4733:                                             ; preds = %4737, %4731
  %4734 = phi ptr [ %4732, %4731 ], [ %4735, %4737 ]
  %4735 = load ptr, ptr %4734, align 8, !tbaa !34
  %4736 = icmp eq ptr %4735, null
  br i1 %4736, label %4741, label %4737

4737:                                             ; preds = %4733
  %4738 = getelementptr inbounds %struct.PartEff, ptr %4735, i64 0, i32 2
  %4739 = load i16, ptr %4738, align 8, !tbaa !38
  %4740 = icmp eq i16 %4739, 1
  br i1 %4740, label %4741, label %4733, !llvm.loop !43

4741:                                             ; preds = %4733, %4737
  %4742 = phi ptr [ %4735, %4737 ], [ null, %4733 ]
  %4743 = icmp eq ptr %4742, null
  br i1 %4743, label %4952, label %4744

4744:                                             ; preds = %4741
  %4745 = load ptr, ptr @MEM_callocN, align 8, !tbaa !34
  %4746 = call ptr %4745(i64 noundef 656, ptr noundef nonnull @.str.14) #11
  %4747 = getelementptr inbounds %struct.ParticleSystem, ptr %4746, i64 0, i32 41
  %4748 = call ptr @BKE_ptcache_add(ptr noundef nonnull %4747) #11
  %4749 = getelementptr inbounds %struct.ParticleSystem, ptr %4746, i64 0, i32 40
  store ptr %4748, ptr %4749, align 8, !tbaa !738
  %4750 = call ptr @psys_new_settings(ptr noundef nonnull @.str.15, ptr noundef %2) #11
  %4751 = getelementptr inbounds %struct.ParticleSystem, ptr %4746, i64 0, i32 2
  store ptr %4750, ptr %4751, align 8, !tbaa !821
  %4752 = load ptr, ptr %4697, align 8, !tbaa !822
  call void @blo_do_versions_oldnewmap_insert(ptr noundef %4752, ptr noundef %4750, ptr noundef %4750, i32 noundef 0) #11
  %4753 = getelementptr inbounds %struct.ID, ptr %4702, i64 0, i32 3
  %4754 = load ptr, ptr %4753, align 8, !tbaa !825
  %4755 = getelementptr inbounds %struct.ID, ptr %4750, i64 0, i32 3
  store ptr %4754, ptr %4755, align 8, !tbaa !826
  %4756 = getelementptr inbounds %struct.ID, ptr %4750, i64 0, i32 6
  %4757 = load i32, ptr %4756, align 4, !tbaa !827
  %4758 = add nsw i32 %4757, -1
  store i32 %4758, ptr %4756, align 4, !tbaa !827
  %4759 = getelementptr inbounds %struct.ID, ptr %4702, i64 0, i32 5
  %4760 = load i16, ptr %4759, align 2, !tbaa !828
  %4761 = and i16 %4760, 32
  %4762 = getelementptr inbounds %struct.ID, ptr %4750, i64 0, i32 5
  %4763 = load i16, ptr %4762, align 2, !tbaa !829
  %4764 = or i16 %4763, %4761
  store i16 %4764, ptr %4762, align 2, !tbaa !829
  %4765 = getelementptr inbounds %struct.ParticleSystem, ptr %4746, i64 0, i32 26
  store i32 0, ptr %4765, align 8, !tbaa !830
  %4766 = getelementptr inbounds %struct.ParticleSystem, ptr %4746, i64 0, i32 25
  store i32 1, ptr %4766, align 4, !tbaa !831
  %4767 = getelementptr inbounds %struct.Object, ptr %4702, i64 0, i32 109
  call void @BLI_addtail(ptr noundef nonnull %4767, ptr noundef %4746) #11
  %4768 = call ptr @modifier_new(i32 noundef 19) #11
  %4769 = getelementptr inbounds %struct.ModifierData, ptr %4768, i64 0, i32 6
  %4770 = call i32 @BLI_countlist(ptr noundef nonnull %4767) #11
  %4771 = call i64 (ptr, i64, ptr, ...) @BLI_snprintf(ptr noundef nonnull %4769, i64 noundef 64, ptr noundef nonnull @.str.16, i32 noundef %4770) #11
  %4772 = getelementptr inbounds %struct.ParticleSystemModifierData, ptr %4768, i64 0, i32 1
  store ptr %4746, ptr %4772, align 8, !tbaa !832
  %4773 = getelementptr inbounds %struct.Object, ptr %4702, i64 0, i32 26
  call void @BLI_addtail(ptr noundef nonnull %4773, ptr noundef %4768) #11
  %4774 = getelementptr inbounds %struct.PartEff, ptr %4742, i64 0, i32 11
  %4775 = load i32, ptr %4774, align 8, !tbaa !834
  %4776 = call i32 @llvm.smin.i32(i32 %4775, i32 100000)
  %4777 = getelementptr inbounds %struct.ParticleSettings, ptr %4750, i64 0, i32 63
  store i32 %4776, ptr %4777, align 4, !tbaa !835
  %4778 = getelementptr inbounds %struct.PartEff, ptr %4742, i64 0, i32 8
  %4779 = load float, ptr %4778, align 4, !tbaa !836
  %4780 = getelementptr inbounds %struct.ParticleSettings, ptr %4750, i64 0, i32 53
  store float %4779, ptr %4780, align 4, !tbaa !837
  %4781 = getelementptr inbounds %struct.PartEff, ptr %4742, i64 0, i32 9
  %4782 = load float, ptr %4781, align 8, !tbaa !838
  %4783 = getelementptr inbounds %struct.ParticleSettings, ptr %4750, i64 0, i32 54
  store float %4782, ptr %4783, align 8, !tbaa !839
  %4784 = getelementptr inbounds %struct.PartEff, ptr %4742, i64 0, i32 10
  %4785 = load float, ptr %4784, align 4, !tbaa !840
  %4786 = getelementptr inbounds %struct.ParticleSettings, ptr %4750, i64 0, i32 55
  store float %4785, ptr %4786, align 4, !tbaa !841
  %4787 = getelementptr inbounds %struct.PartEff, ptr %4742, i64 0, i32 18
  %4788 = load float, ptr %4787, align 4, !tbaa !842
  %4789 = getelementptr inbounds %struct.ParticleSettings, ptr %4750, i64 0, i32 56
  store float %4788, ptr %4789, align 8, !tbaa !843
  %4790 = getelementptr inbounds %struct.PartEff, ptr %4742, i64 0, i32 13
  %4791 = load i32, ptr %4790, align 8, !tbaa !844
  %4792 = getelementptr inbounds %struct.ParticleSystem, ptr %4746, i64 0, i32 23
  store i32 %4791, ptr %4792, align 4, !tbaa !845
  %4793 = getelementptr inbounds %struct.PartEff, ptr %4742, i64 0, i32 38
  %4794 = load i16, ptr %4793, align 4, !tbaa !479
  %4795 = getelementptr inbounds %struct.ParticleSettings, ptr %4750, i64 0, i32 30
  store i16 %4794, ptr %4795, align 2, !tbaa !846
  %4796 = getelementptr inbounds %struct.PartEff, ptr %4742, i64 0, i32 29
  %4797 = load i16, ptr %4796, align 4, !tbaa !847
  %4798 = getelementptr inbounds %struct.ParticleSettings, ptr %4750, i64 0, i32 31
  store i16 %4797, ptr %4798, align 4, !tbaa !848
  %4799 = getelementptr inbounds %struct.PartEff, ptr %4742, i64 0, i32 12
  %4800 = load i32, ptr %4799, align 4, !tbaa !849
  %4801 = trunc i32 %4800 to i16
  %4802 = getelementptr inbounds %struct.ParticleSettings, ptr %4750, i64 0, i32 26
  store i16 %4801, ptr %4802, align 2, !tbaa !850
  %4803 = getelementptr inbounds %struct.PartEff, ptr %4742, i64 0, i32 44
  %4804 = load ptr, ptr %4803, align 8, !tbaa !851
  %4805 = getelementptr inbounds %struct.ParticleSettings, ptr %4750, i64 0, i32 124
  store ptr %4804, ptr %4805, align 8, !tbaa !852
  %4806 = getelementptr inbounds %struct.ParticleSettings, ptr %4750, i64 0, i32 25
  store i16 0, ptr %4806, align 8, !tbaa !853
  %4807 = getelementptr inbounds %struct.ParticleSettings, ptr %4750, i64 0, i32 24
  store i16 0, ptr %4807, align 2, !tbaa !854
  %4808 = getelementptr inbounds %struct.PartEff, ptr %4742, i64 0, i32 14
  %4809 = load float, ptr %4808, align 4, !tbaa !855
  %4810 = fmul float %4809, 2.500000e+01
  %4811 = getelementptr inbounds %struct.ParticleSettings, ptr %4750, i64 0, i32 69
  store float %4810, ptr %4811, align 4, !tbaa !856
  %4812 = getelementptr inbounds %struct.PartEff, ptr %4742, i64 0, i32 15
  %4813 = load float, ptr %4812, align 8, !tbaa !857
  %4814 = getelementptr inbounds %struct.ParticleSettings, ptr %4750, i64 0, i32 70
  store float %4813, ptr %4814, align 8, !tbaa !858
  %4815 = getelementptr inbounds %struct.PartEff, ptr %4742, i64 0, i32 16
  %4816 = load float, ptr %4815, align 4, !tbaa !859
  %4817 = fmul float %4816, 2.500000e+01
  %4818 = getelementptr inbounds %struct.ParticleSettings, ptr %4750, i64 0, i32 71
  store float %4817, ptr %4818, align 4, !tbaa !860
  %4819 = getelementptr inbounds %struct.PartEff, ptr %4742, i64 0, i32 20
  %4820 = load float, ptr %4819, align 4, !tbaa !861
  %4821 = getelementptr inbounds %struct.ParticleSettings, ptr %4750, i64 0, i32 87
  store float %4820, ptr %4821, align 4, !tbaa !862
  %4822 = getelementptr inbounds %struct.ParticleSettings, ptr %4750, i64 0, i32 84
  %4823 = getelementptr inbounds %struct.PartEff, ptr %4742, i64 0, i32 19
  %4824 = load float, ptr %4823, align 4, !tbaa !156
  store float %4824, ptr %4822, align 4, !tbaa !156
  %4825 = getelementptr inbounds %struct.PartEff, ptr %4742, i64 0, i32 19, i64 1
  %4826 = load float, ptr %4825, align 4, !tbaa !156
  %4827 = getelementptr inbounds %struct.ParticleSettings, ptr %4750, i64 0, i32 84, i64 1
  store float %4826, ptr %4827, align 4, !tbaa !156
  %4828 = getelementptr inbounds %struct.PartEff, ptr %4742, i64 0, i32 19, i64 2
  %4829 = load float, ptr %4828, align 4, !tbaa !156
  %4830 = getelementptr inbounds %struct.ParticleSettings, ptr %4750, i64 0, i32 84, i64 2
  store float %4829, ptr %4830, align 4, !tbaa !156
  %4831 = getelementptr inbounds %struct.PartEff, ptr %4742, i64 0, i32 5
  %4832 = load i16, ptr %4831, align 2, !tbaa !863
  %4833 = and i16 %4832, 1
  %4834 = icmp eq i16 %4833, 0
  br i1 %4834, label %4856, label %4835

4835:                                             ; preds = %4744
  %4836 = getelementptr inbounds %struct.PartEff, ptr %4742, i64 0, i32 3
  %4837 = load i16, ptr %4836, align 2, !tbaa !864
  %4838 = and i16 %4837, 4
  %4839 = icmp eq i16 %4838, 0
  br i1 %4839, label %4850, label %4840

4840:                                             ; preds = %4835
  %4841 = load float, ptr %4784, align 4, !tbaa !840
  %4842 = fdiv float %4841, 1.000000e+02
  %4843 = getelementptr inbounds %struct.ParticleSettings, ptr %4750, i64 0, i32 17
  store i16 6, ptr %4843, align 8, !tbaa !865
  %4844 = getelementptr inbounds %struct.ParticleSettings, ptr %4750, i64 0, i32 7
  store i16 2, ptr %4844, align 8, !tbaa !866
  %4845 = getelementptr inbounds %struct.ParticleSystem, ptr %4746, i64 0, i32 31
  %4846 = load i16, ptr %4845, align 4, !tbaa !867
  %4847 = or i16 %4846, 8
  store i16 %4847, ptr %4845, align 4, !tbaa !867
  %4848 = fmul float %4810, %4842
  store float %4848, ptr %4811, align 4, !tbaa !856
  %4849 = fmul float %4817, %4842
  store float %4849, ptr %4818, align 4, !tbaa !860
  br label %4856

4850:                                             ; preds = %4835
  %4851 = getelementptr inbounds %struct.ParticleSettings, ptr %4750, i64 0, i32 17
  store i16 5, ptr %4851, align 8, !tbaa !865
  %4852 = getelementptr inbounds %struct.ParticleSettings, ptr %4750, i64 0, i32 15
  %4853 = load i32, ptr %4852, align 8, !tbaa !868
  %4854 = or i32 %4853, 4096
  store i32 %4854, ptr %4852, align 8, !tbaa !868
  %4855 = getelementptr inbounds %struct.ParticleSettings, ptr %4750, i64 0, i32 116, i64 1
  store float 0x3FA47AE140000000, ptr %4855, align 4, !tbaa !156
  br label %4856

4856:                                             ; preds = %4840, %4850, %4744
  %4857 = getelementptr inbounds %struct.ParticleSettings, ptr %4750, i64 0, i32 12
  store i16 2, ptr %4857, align 2, !tbaa !869
  %4858 = getelementptr inbounds %struct.PartEff, ptr %4742, i64 0, i32 3
  %4859 = load i16, ptr %4858, align 2, !tbaa !864
  %4860 = shl i16 %4859, 9
  %4861 = and i16 %4860, 1024
  %4862 = zext nneg i16 %4861 to i32
  %4863 = getelementptr inbounds %struct.ParticleSettings, ptr %4750, i64 0, i32 5
  %4864 = load i32, ptr %4863, align 8, !tbaa !870
  %4865 = or i32 %4864, %4862
  %4866 = lshr i16 %4859, 1
  %4867 = and i16 %4866, 384
  %4868 = zext nneg i16 %4867 to i32
  %4869 = or i32 %4865, %4868
  %4870 = and i16 %4859, 32
  %4871 = lshr i16 %4859, 5
  %4872 = and i16 %4871, 64
  %4873 = or disjoint i16 %4872, %4870
  %4874 = zext nneg i16 %4873 to i32
  %4875 = or i32 %4869, %4874
  store i32 %4875, ptr %4863, align 8, !tbaa !870
  %4876 = lshr i16 %4859, 3
  %4877 = and i16 %4876, 1
  %4878 = getelementptr inbounds %struct.ParticleSettings, ptr %4750, i64 0, i32 8
  %4879 = load i16, ptr %4878, align 2, !tbaa !871
  %4880 = or i16 %4879, %4877
  store i16 %4880, ptr %4878, align 2, !tbaa !871
  %4881 = lshr i16 %4859, 4
  %4882 = and i16 %4881, 8
  %4883 = zext nneg i16 %4882 to i32
  %4884 = getelementptr inbounds %struct.ParticleSettings, ptr %4750, i64 0, i32 15
  %4885 = load i32, ptr %4884, align 8, !tbaa !868
  %4886 = or i32 %4885, %4883
  store i32 %4886, ptr %4884, align 8, !tbaa !868
  %4887 = getelementptr inbounds %struct.PartEff, ptr %4742, i64 0, i32 6
  %4888 = load i16, ptr %4887, align 8, !tbaa !872
  %4889 = getelementptr inbounds %struct.ParticleSystem, ptr %4746, i64 0, i32 36
  store i16 %4888, ptr %4889, align 4, !tbaa !847
  %4890 = getelementptr inbounds %struct.PartEff, ptr %4742, i64 0, i32 39
  %4891 = load i16, ptr %4890, align 2, !tbaa !873
  %4892 = getelementptr inbounds %struct.ParticleSystem, ptr %4746, i64 0, i32 36, i64 1
  store i16 %4891, ptr %4892, align 2, !tbaa !847
  %4893 = load i16, ptr %4890, align 2, !tbaa !873
  %4894 = getelementptr inbounds %struct.ParticleSystem, ptr %4746, i64 0, i32 36, i64 2
  store i16 %4893, ptr %4894, align 4, !tbaa !847
  %4895 = getelementptr inbounds %struct.Object, ptr %4702, i64 0, i32 55
  %4896 = load i16, ptr %4895, align 8, !tbaa !101
  %4897 = and i16 %4896, 16
  %4898 = icmp eq i16 %4897, 0
  br i1 %4898, label %4919, label %4899

4899:                                             ; preds = %4856
  %4900 = load ptr, ptr %4693, align 8, !tbaa !34
  %4901 = icmp eq ptr %4900, null
  br i1 %4901, label %4919, label %4902

4902:                                             ; preds = %4899
  %4903 = getelementptr inbounds %struct.ParticleSettings, ptr %4750, i64 0, i32 125
  %4904 = getelementptr inbounds %struct.ParticleSettings, ptr %4750, i64 0, i32 17
  br label %4905

4905:                                             ; preds = %4902, %4916
  %4906 = phi ptr [ %4900, %4902 ], [ %4917, %4916 ]
  %4907 = getelementptr inbounds %struct.Object, ptr %4906, i64 0, i32 9
  %4908 = load ptr, ptr %4907, align 8, !tbaa !425
  %4909 = call ptr @blo_do_versions_newlibadr(ptr noundef %0, ptr noundef %1, ptr noundef %4908) #11
  %4910 = icmp eq ptr %4702, %4909
  br i1 %4910, label %4911, label %4916

4911:                                             ; preds = %4905
  store ptr %4906, ptr %4903, align 8, !tbaa !874
  %4912 = load i16, ptr %4895, align 8, !tbaa !101
  %4913 = and i16 %4912, -2065
  %4914 = or disjoint i16 %4913, 2048
  store i16 %4914, ptr %4895, align 8, !tbaa !101
  store i16 7, ptr %4904, align 8, !tbaa !865
  %4915 = load ptr, ptr %4697, align 8, !tbaa !822
  call void @blo_do_versions_oldnewmap_insert(ptr noundef %4915, ptr noundef nonnull %4906, ptr noundef nonnull %4906, i32 noundef 0) #11
  br label %4916

4916:                                             ; preds = %4905, %4911
  %4917 = load ptr, ptr %4906, align 8, !tbaa !34
  %4918 = icmp eq ptr %4917, null
  br i1 %4918, label %4919, label %4905, !llvm.loop !875

4919:                                             ; preds = %4916, %4899, %4856
  %4920 = call ptr @modifiers_findByType(ptr noundef nonnull %4702, i32 noundef 26) #11
  %4921 = icmp eq ptr %4920, null
  br i1 %4921, label %4932, label %4922

4922:                                             ; preds = %4919
  %4923 = getelementptr inbounds %struct.FluidsimModifierData, ptr %4920, i64 0, i32 1
  %4924 = load ptr, ptr %4923, align 8, !tbaa !876
  %4925 = icmp eq ptr %4924, null
  br i1 %4925, label %4932, label %4926

4926:                                             ; preds = %4922
  %4927 = getelementptr inbounds %struct.FluidsimSettings, ptr %4924, i64 0, i32 3
  %4928 = load i16, ptr %4927, align 8, !tbaa !878
  %4929 = icmp eq i16 %4928, 64
  br i1 %4929, label %4930, label %4932

4930:                                             ; preds = %4926
  %4931 = getelementptr inbounds %struct.ParticleSettings, ptr %4750, i64 0, i32 7
  store i16 3, ptr %4931, align 8, !tbaa !866
  br label %4932

4932:                                             ; preds = %4930, %4926, %4922, %4919
  %4933 = call ptr @BLI_pophead(ptr noundef nonnull %4732) #11
  %4934 = icmp eq ptr %4933, null
  br i1 %4934, label %4950, label %4935

4935:                                             ; preds = %4932, %4946
  %4936 = phi ptr [ %4948, %4946 ], [ %4933, %4932 ]
  %4937 = getelementptr inbounds %struct.Effect, ptr %4936, i64 0, i32 2
  %4938 = load i16, ptr %4937, align 8, !tbaa !880
  %4939 = icmp eq i16 %4938, 1
  br i1 %4939, label %4940, label %4946

4940:                                             ; preds = %4935
  %4941 = getelementptr inbounds %struct.PartEff, ptr %4936, i64 0, i32 43
  %4942 = load ptr, ptr %4941, align 8, !tbaa !882
  %4943 = icmp eq ptr %4942, null
  br i1 %4943, label %4946, label %4944

4944:                                             ; preds = %4940
  %4945 = load ptr, ptr @MEM_freeN, align 8, !tbaa !34
  call void %4945(ptr noundef nonnull %4942) #11
  br label %4946

4946:                                             ; preds = %4944, %4940, %4935
  %4947 = load ptr, ptr @MEM_freeN, align 8, !tbaa !34
  call void %4947(ptr noundef nonnull %4936) #11
  %4948 = call ptr @BLI_pophead(ptr noundef nonnull %4732) #11
  %4949 = icmp eq ptr %4948, null
  br i1 %4949, label %4950, label %4935, !llvm.loop !883

4950:                                             ; preds = %4946, %4932
  %4951 = call i32 @puts(ptr nonnull dereferenceable(1) @str)
  br label %4952

4952:                                             ; preds = %4741, %4950
  %4953 = load ptr, ptr %4702, align 8, !tbaa !34
  %4954 = icmp eq ptr %4953, null
  br i1 %4954, label %4698, label %4701, !llvm.loop !884

4955:                                             ; preds = %4698, %4977
  %4956 = phi ptr [ %4978, %4977 ], [ %4699, %4698 ]
  %4957 = getelementptr inbounds %struct.Scene, ptr %4956, i64 0, i32 20
  %4958 = load ptr, ptr %4957, align 8, !tbaa !448
  %4959 = getelementptr inbounds %struct.ToolSettings, ptr %4958, i64 0, i32 18, i32 4
  %4960 = load i16, ptr %4959, align 8, !tbaa !885
  %4961 = icmp eq i16 %4960, 0
  br i1 %4961, label %4962, label %4977

4962:                                             ; preds = %4955
  %4963 = getelementptr inbounds %struct.ToolSettings, ptr %4958, i64 0, i32 18
  store i16 7, ptr %4963, align 8, !tbaa !887
  %4964 = getelementptr inbounds %struct.ToolSettings, ptr %4958, i64 0, i32 18, i32 6
  store float 2.500000e-01, ptr %4964, align 8, !tbaa !888
  %4965 = getelementptr inbounds %struct.ToolSettings, ptr %4958, i64 0, i32 18, i32 1
  store i16 5, ptr %4965, align 2, !tbaa !889
  %4966 = getelementptr inbounds %struct.ToolSettings, ptr %4958, i64 0, i32 18, i32 2
  store i16 5, ptr %4966, align 4, !tbaa !890
  %4967 = getelementptr inbounds %struct.ToolSettings, ptr %4958, i64 0, i32 18, i32 3
  store i16 -1, ptr %4967, align 2, !tbaa !891
  br label %4968

4968:                                             ; preds = %4962, %4968
  %4969 = phi i64 [ 0, %4962 ], [ %4973, %4968 ]
  %4970 = getelementptr inbounds %struct.ToolSettings, ptr %4958, i64 0, i32 18, i32 4, i64 %4969
  %4971 = getelementptr inbounds %struct.ToolSettings, ptr %4958, i64 0, i32 18, i32 4, i64 %4969, i32 5
  store float 5.000000e+01, ptr %4971, align 4, !tbaa !892
  store i16 50, ptr %4970, align 8, !tbaa !885
  %4972 = getelementptr inbounds %struct.ToolSettings, ptr %4958, i64 0, i32 18, i32 4, i64 %4969, i32 1
  store i16 10, ptr %4972, align 2, !tbaa !893
  %4973 = add nuw nsw i64 %4969, 1
  %4974 = icmp eq i64 %4973, 6
  br i1 %4974, label %4975, label %4968, !llvm.loop !894

4975:                                             ; preds = %4968
  %4976 = getelementptr inbounds %struct.ToolSettings, ptr %4958, i64 0, i32 18, i32 4, i64 1, i32 5
  store float 1.000000e+02, ptr %4976, align 4, !tbaa !892
  br label %4977

4977:                                             ; preds = %4975, %4955
  %4978 = load ptr, ptr %4956, align 8, !tbaa !34
  %4979 = icmp eq ptr %4978, null
  br i1 %4979, label %4980, label %4955, !llvm.loop !895

4980:                                             ; preds = %4977, %4698, %4688, %4686
  %4981 = load i16, ptr %7, align 8, !tbaa !60
  %4982 = icmp slt i16 %4981, 245
  br i1 %4982, label %4989, label %4983

4983:                                             ; preds = %4980
  %4984 = icmp eq i16 %4981, 245
  br i1 %4984, label %4985, label %5016

4985:                                             ; preds = %4983
  %4986 = getelementptr inbounds %struct.Main, ptr %2, i64 0, i32 4
  %4987 = load i16, ptr %4986, align 2, !tbaa !634
  %4988 = icmp slt i16 %4987, 9
  br i1 %4988, label %4989, label %5016

4989:                                             ; preds = %4985, %4980
  %4990 = getelementptr inbounds %struct.Main, ptr %2, i64 0, i32 17
  %4991 = load ptr, ptr %4990, align 8, !tbaa !34
  %4992 = icmp eq ptr %4991, null
  br i1 %4992, label %5016, label %4993

4993:                                             ; preds = %4989, %5013
  %4994 = phi ptr [ %5014, %5013 ], [ %4991, %4989 ]
  %4995 = getelementptr inbounds %struct.Material, ptr %4994, i64 0, i32 51
  %4996 = load i32, ptr %4995, align 4, !tbaa !169
  %4997 = and i32 %4996, 134217728
  %4998 = icmp eq i32 %4997, 0
  br i1 %4998, label %5013, label %4999

4999:                                             ; preds = %4993, %5010
  %5000 = phi i64 [ %5011, %5010 ], [ 0, %4993 ]
  %5001 = getelementptr inbounds %struct.Material, ptr %4994, i64 0, i32 102, i64 %5000
  %5002 = load ptr, ptr %5001, align 8, !tbaa !34
  %5003 = icmp eq ptr %5002, null
  br i1 %5003, label %5010, label %5004

5004:                                             ; preds = %4999
  %5005 = getelementptr inbounds %struct.MTex, ptr %5002, i64 0, i32 5
  %5006 = load ptr, ptr %5005, align 8, !tbaa !557
  %5007 = icmp eq ptr %5006, null
  br i1 %5007, label %5010, label %5008

5008:                                             ; preds = %5004
  %5009 = getelementptr inbounds %struct.MTex, ptr %5002, i64 0, i32 18
  store i16 3, ptr %5009, align 8, !tbaa !896
  br label %5010

5010:                                             ; preds = %4999, %5004, %5008
  %5011 = add nuw nsw i64 %5000, 1
  %5012 = icmp eq i64 %5011, 18
  br i1 %5012, label %5013, label %4999, !llvm.loop !897

5013:                                             ; preds = %5010, %4993
  %5014 = load ptr, ptr %4994, align 8, !tbaa !34
  %5015 = icmp eq ptr %5014, null
  br i1 %5015, label %5016, label %4993, !llvm.loop !898

5016:                                             ; preds = %5013, %4989, %4985, %4983
  br i1 %4982, label %5023, label %5017

5017:                                             ; preds = %5016
  %5018 = icmp eq i16 %4981, 245
  br i1 %5018, label %5019, label %5032

5019:                                             ; preds = %5017
  %5020 = getelementptr inbounds %struct.Main, ptr %2, i64 0, i32 4
  %5021 = load i16, ptr %5020, align 2, !tbaa !634
  %5022 = icmp slt i16 %5021, 10
  br i1 %5022, label %5023, label %5032

5023:                                             ; preds = %5019, %5016
  %5024 = getelementptr inbounds %struct.Main, ptr %2, i64 0, i32 13
  %5025 = load ptr, ptr %5024, align 8, !tbaa !34
  %5026 = icmp eq ptr %5025, null
  br i1 %5026, label %5032, label %5027

5027:                                             ; preds = %5023, %5027
  %5028 = phi ptr [ %5030, %5027 ], [ %5025, %5023 ]
  %5029 = getelementptr inbounds %struct.Object, ptr %5028, i64 0, i32 90
  store float 1.000000e+00, ptr %5029, align 4, !tbaa !899
  %5030 = load ptr, ptr %5028, align 8, !tbaa !34
  %5031 = icmp eq ptr %5030, null
  br i1 %5031, label %5032, label %5027, !llvm.loop !900

5032:                                             ; preds = %5027, %5023, %5019, %5017
  br i1 %4982, label %5039, label %5033

5033:                                             ; preds = %5032
  %5034 = icmp eq i16 %4981, 245
  br i1 %5034, label %5035, label %5090

5035:                                             ; preds = %5033
  %5036 = getelementptr inbounds %struct.Main, ptr %2, i64 0, i32 4
  %5037 = load i16, ptr %5036, align 2, !tbaa !634
  %5038 = icmp slt i16 %5037, 11
  br i1 %5038, label %5039, label %5090

5039:                                             ; preds = %5035, %5032
  %5040 = getelementptr inbounds %struct.Main, ptr %2, i64 0, i32 13
  %5041 = load ptr, ptr %5040, align 8, !tbaa !34
  %5042 = icmp eq ptr %5041, null
  br i1 %5042, label %5090, label %5043

5043:                                             ; preds = %5039, %5087
  %5044 = phi ptr [ %5088, %5087 ], [ %5041, %5039 ]
  %5045 = getelementptr inbounds %struct.Object, ptr %5044, i64 0, i32 107
  %5046 = load ptr, ptr %5045, align 8, !tbaa !34
  %5047 = icmp eq ptr %5046, null
  br i1 %5047, label %5078, label %5048

5048:                                             ; preds = %5043, %5057
  %5049 = phi ptr [ %5076, %5057 ], [ %5046, %5043 ]
  %5050 = getelementptr inbounds %struct.bActionStrip, ptr %5049, i64 0, i32 2
  %5051 = load i16, ptr %5050, align 8, !tbaa !901
  %5052 = and i16 %5051, 2
  %5053 = icmp eq i16 %5052, 0
  br i1 %5053, label %5054, label %5057

5054:                                             ; preds = %5048
  %5055 = getelementptr inbounds %struct.bActionStrip, ptr %5049, i64 0, i32 15
  %5056 = load float, ptr %5055, align 8, !tbaa !903
  br label %5057

5057:                                             ; preds = %5048, %5054
  %5058 = phi float [ %5056, %5054 ], [ 1.000000e+00, %5048 ]
  %5059 = getelementptr inbounds %struct.bActionStrip, ptr %5049, i64 0, i32 10
  %5060 = load float, ptr %5059, align 4, !tbaa !904
  %5061 = getelementptr inbounds %struct.bActionStrip, ptr %5049, i64 0, i32 9
  %5062 = load float, ptr %5061, align 8, !tbaa !905
  %5063 = fsub float %5060, %5062
  %5064 = fcmp oeq float %5063, 0.000000e+00
  %5065 = select i1 %5064, float 1.000000e+00, float %5063
  %5066 = getelementptr inbounds %struct.bActionStrip, ptr %5049, i64 0, i32 12
  %5067 = load float, ptr %5066, align 4, !tbaa !906
  %5068 = getelementptr inbounds %struct.bActionStrip, ptr %5049, i64 0, i32 11
  %5069 = load float, ptr %5068, align 8, !tbaa !907
  %5070 = fsub float %5067, %5069
  %5071 = fmul float %5058, %5070
  %5072 = fdiv float %5065, %5071
  %5073 = getelementptr inbounds %struct.bActionStrip, ptr %5049, i64 0, i32 16
  %5074 = fcmp oeq float %5072, 0.000000e+00
  %5075 = select i1 %5074, float 1.000000e+00, float %5072
  store float %5075, ptr %5073, align 4, !tbaa !908
  %5076 = load ptr, ptr %5049, align 8, !tbaa !34
  %5077 = icmp eq ptr %5076, null
  br i1 %5077, label %5078, label %5048, !llvm.loop !909

5078:                                             ; preds = %5057, %5043
  %5079 = getelementptr inbounds %struct.Object, ptr %5044, i64 0, i32 111
  %5080 = load ptr, ptr %5079, align 8, !tbaa !413
  %5081 = icmp eq ptr %5080, null
  br i1 %5081, label %5087, label %5082

5082:                                             ; preds = %5078
  %5083 = getelementptr inbounds %struct.SoftBody, ptr %5080, i64 0, i32 21
  %5084 = load float, ptr %5083, align 8, !tbaa !910
  %5085 = getelementptr inbounds %struct.SoftBody, ptr %5080, i64 0, i32 46
  store float %5084, ptr %5085, align 4, !tbaa !911
  %5086 = getelementptr inbounds %struct.SoftBody, ptr %5080, i64 0, i32 45
  store float 1.000000e+00, ptr %5086, align 8, !tbaa !912
  br label %5087

5087:                                             ; preds = %5078, %5082
  %5088 = load ptr, ptr %5044, align 8, !tbaa !34
  %5089 = icmp eq ptr %5088, null
  br i1 %5089, label %5090, label %5043, !llvm.loop !913

5090:                                             ; preds = %5087, %5039, %5035, %5033
  br i1 %4982, label %5097, label %5091

5091:                                             ; preds = %5090
  %5092 = icmp eq i16 %4981, 245
  br i1 %5092, label %5093, label %5122

5093:                                             ; preds = %5091
  %5094 = getelementptr inbounds %struct.Main, ptr %2, i64 0, i32 4
  %5095 = load i16, ptr %5094, align 2, !tbaa !634
  %5096 = icmp slt i16 %5095, 14
  br i1 %5096, label %5097, label %5122

5097:                                             ; preds = %5093, %5090
  %5098 = load ptr, ptr %4419, align 8, !tbaa !34
  %5099 = icmp eq ptr %5098, null
  br i1 %5099, label %5122, label %5100

5100:                                             ; preds = %5097
  %5101 = getelementptr inbounds %struct.SeqIterator, ptr %5, i64 0, i32 4
  %5102 = getelementptr inbounds %struct.SeqIterator, ptr %5, i64 0, i32 3
  br label %5103

5103:                                             ; preds = %5100, %5119
  %5104 = phi ptr [ %5098, %5100 ], [ %5120, %5119 ]
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %5) #11
  %5105 = getelementptr inbounds %struct.Scene, ptr %5104, i64 0, i32 19
  %5106 = load ptr, ptr %5105, align 8, !tbaa !391
  call void @BKE_sequence_iterator_begin(ptr noundef %5106, ptr noundef nonnull %5, i8 noundef zeroext 0) #11
  %5107 = load i32, ptr %5101, align 8, !tbaa !392
  %5108 = icmp eq i32 %5107, 0
  br i1 %5108, label %5119, label %5109

5109:                                             ; preds = %5103, %5116
  %5110 = load ptr, ptr %5102, align 8, !tbaa !394
  %5111 = getelementptr inbounds %struct.Sequence, ptr %5110, i64 0, i32 46
  %5112 = load i32, ptr %5111, align 8, !tbaa !914
  %5113 = icmp eq i32 %5112, 0
  br i1 %5113, label %5114, label %5116

5114:                                             ; preds = %5109
  %5115 = getelementptr inbounds %struct.Sequence, ptr %5110, i64 0, i32 47
  store float 1.000000e+02, ptr %5115, align 4, !tbaa !915
  br label %5116

5116:                                             ; preds = %5109, %5114
  call void @BKE_sequence_iterator_next(ptr noundef nonnull %5) #11
  %5117 = load i32, ptr %5101, align 8, !tbaa !392
  %5118 = icmp eq i32 %5117, 0
  br i1 %5118, label %5119, label %5109, !llvm.loop !916

5119:                                             ; preds = %5116, %5103
  call void @BKE_sequence_iterator_end(ptr noundef nonnull %5) #11
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %5) #11
  %5120 = load ptr, ptr %5104, align 8, !tbaa !34
  %5121 = icmp eq ptr %5120, null
  br i1 %5121, label %5122, label %5103, !llvm.loop !917

5122:                                             ; preds = %5119, %5097, %5093, %5091
  %5123 = load i16, ptr %7, align 8, !tbaa !60
  %5124 = icmp slt i16 %5123, 245
  br i1 %5124, label %5131, label %5125

5125:                                             ; preds = %5122
  %5126 = icmp eq i16 %5123, 245
  br i1 %5126, label %5127, label %5468

5127:                                             ; preds = %5125
  %5128 = getelementptr inbounds %struct.Main, ptr %2, i64 0, i32 4
  %5129 = load i16, ptr %5128, align 2, !tbaa !634
  %5130 = icmp slt i16 %5129, 15
  br i1 %5130, label %5131, label %5468

5131:                                             ; preds = %5127, %5122
  %5132 = load ptr, ptr %4419, align 8
  %5133 = icmp eq ptr %5132, null
  br i1 %5133, label %5143, label %5134

5134:                                             ; preds = %5131, %5140
  %5135 = phi ptr [ %5141, %5140 ], [ %5132, %5131 ]
  %5136 = getelementptr inbounds %struct.ID, ptr %5135, i64 0, i32 9
  %5137 = load ptr, ptr %5136, align 8, !tbaa !918
  %5138 = icmp eq ptr %5137, null
  br i1 %5138, label %5140, label %5139

5139:                                             ; preds = %5134
  call fastcc void @idproperties_fix_groups_lengths_recurse(ptr noundef nonnull %5137)
  br label %5140

5140:                                             ; preds = %5139, %5134
  %5141 = load ptr, ptr %5135, align 8
  %5142 = icmp eq ptr %5141, null
  br i1 %5142, label %5143, label %5134, !llvm.loop !919

5143:                                             ; preds = %5140, %5131
  %5144 = getelementptr inbounds %struct.Main, ptr %2, i64 0, i32 12
  %5145 = load ptr, ptr %5144, align 8
  %5146 = icmp eq ptr %5145, null
  br i1 %5146, label %5156, label %5147

5147:                                             ; preds = %5143, %5153
  %5148 = phi ptr [ %5154, %5153 ], [ %5145, %5143 ]
  %5149 = getelementptr inbounds %struct.ID, ptr %5148, i64 0, i32 9
  %5150 = load ptr, ptr %5149, align 8, !tbaa !918
  %5151 = icmp eq ptr %5150, null
  br i1 %5151, label %5153, label %5152

5152:                                             ; preds = %5147
  call fastcc void @idproperties_fix_groups_lengths_recurse(ptr noundef nonnull %5150)
  br label %5153

5153:                                             ; preds = %5152, %5147
  %5154 = load ptr, ptr %5148, align 8
  %5155 = icmp eq ptr %5154, null
  br i1 %5155, label %5156, label %5147, !llvm.loop !919

5156:                                             ; preds = %5153, %5143
  %5157 = getelementptr inbounds %struct.Main, ptr %2, i64 0, i32 13
  %5158 = load ptr, ptr %5157, align 8
  %5159 = icmp eq ptr %5158, null
  br i1 %5159, label %5169, label %5160

5160:                                             ; preds = %5156, %5166
  %5161 = phi ptr [ %5167, %5166 ], [ %5158, %5156 ]
  %5162 = getelementptr inbounds %struct.ID, ptr %5161, i64 0, i32 9
  %5163 = load ptr, ptr %5162, align 8, !tbaa !918
  %5164 = icmp eq ptr %5163, null
  br i1 %5164, label %5166, label %5165

5165:                                             ; preds = %5160
  call fastcc void @idproperties_fix_groups_lengths_recurse(ptr noundef nonnull %5163)
  br label %5166

5166:                                             ; preds = %5165, %5160
  %5167 = load ptr, ptr %5161, align 8
  %5168 = icmp eq ptr %5167, null
  br i1 %5168, label %5169, label %5160, !llvm.loop !919

5169:                                             ; preds = %5166, %5156
  %5170 = getelementptr inbounds %struct.Main, ptr %2, i64 0, i32 14
  %5171 = load ptr, ptr %5170, align 8
  %5172 = icmp eq ptr %5171, null
  br i1 %5172, label %5182, label %5173

5173:                                             ; preds = %5169, %5179
  %5174 = phi ptr [ %5180, %5179 ], [ %5171, %5169 ]
  %5175 = getelementptr inbounds %struct.ID, ptr %5174, i64 0, i32 9
  %5176 = load ptr, ptr %5175, align 8, !tbaa !918
  %5177 = icmp eq ptr %5176, null
  br i1 %5177, label %5179, label %5178

5178:                                             ; preds = %5173
  call fastcc void @idproperties_fix_groups_lengths_recurse(ptr noundef nonnull %5176)
  br label %5179

5179:                                             ; preds = %5178, %5173
  %5180 = load ptr, ptr %5174, align 8
  %5181 = icmp eq ptr %5180, null
  br i1 %5181, label %5182, label %5173, !llvm.loop !919

5182:                                             ; preds = %5179, %5169
  %5183 = getelementptr inbounds %struct.Main, ptr %2, i64 0, i32 15
  %5184 = load ptr, ptr %5183, align 8
  %5185 = icmp eq ptr %5184, null
  br i1 %5185, label %5195, label %5186

5186:                                             ; preds = %5182, %5192
  %5187 = phi ptr [ %5193, %5192 ], [ %5184, %5182 ]
  %5188 = getelementptr inbounds %struct.ID, ptr %5187, i64 0, i32 9
  %5189 = load ptr, ptr %5188, align 8, !tbaa !918
  %5190 = icmp eq ptr %5189, null
  br i1 %5190, label %5192, label %5191

5191:                                             ; preds = %5186
  call fastcc void @idproperties_fix_groups_lengths_recurse(ptr noundef nonnull %5189)
  br label %5192

5192:                                             ; preds = %5191, %5186
  %5193 = load ptr, ptr %5187, align 8
  %5194 = icmp eq ptr %5193, null
  br i1 %5194, label %5195, label %5186, !llvm.loop !919

5195:                                             ; preds = %5192, %5182
  %5196 = getelementptr inbounds %struct.Main, ptr %2, i64 0, i32 16
  %5197 = load ptr, ptr %5196, align 8
  %5198 = icmp eq ptr %5197, null
  br i1 %5198, label %5208, label %5199

5199:                                             ; preds = %5195, %5205
  %5200 = phi ptr [ %5206, %5205 ], [ %5197, %5195 ]
  %5201 = getelementptr inbounds %struct.ID, ptr %5200, i64 0, i32 9
  %5202 = load ptr, ptr %5201, align 8, !tbaa !918
  %5203 = icmp eq ptr %5202, null
  br i1 %5203, label %5205, label %5204

5204:                                             ; preds = %5199
  call fastcc void @idproperties_fix_groups_lengths_recurse(ptr noundef nonnull %5202)
  br label %5205

5205:                                             ; preds = %5204, %5199
  %5206 = load ptr, ptr %5200, align 8
  %5207 = icmp eq ptr %5206, null
  br i1 %5207, label %5208, label %5199, !llvm.loop !919

5208:                                             ; preds = %5205, %5195
  %5209 = getelementptr inbounds %struct.Main, ptr %2, i64 0, i32 17
  %5210 = load ptr, ptr %5209, align 8
  %5211 = icmp eq ptr %5210, null
  br i1 %5211, label %5221, label %5212

5212:                                             ; preds = %5208, %5218
  %5213 = phi ptr [ %5219, %5218 ], [ %5210, %5208 ]
  %5214 = getelementptr inbounds %struct.ID, ptr %5213, i64 0, i32 9
  %5215 = load ptr, ptr %5214, align 8, !tbaa !918
  %5216 = icmp eq ptr %5215, null
  br i1 %5216, label %5218, label %5217

5217:                                             ; preds = %5212
  call fastcc void @idproperties_fix_groups_lengths_recurse(ptr noundef nonnull %5215)
  br label %5218

5218:                                             ; preds = %5217, %5212
  %5219 = load ptr, ptr %5213, align 8
  %5220 = icmp eq ptr %5219, null
  br i1 %5220, label %5221, label %5212, !llvm.loop !919

5221:                                             ; preds = %5218, %5208
  %5222 = getelementptr inbounds %struct.Main, ptr %2, i64 0, i32 18
  %5223 = load ptr, ptr %5222, align 8
  %5224 = icmp eq ptr %5223, null
  br i1 %5224, label %5234, label %5225

5225:                                             ; preds = %5221, %5231
  %5226 = phi ptr [ %5232, %5231 ], [ %5223, %5221 ]
  %5227 = getelementptr inbounds %struct.ID, ptr %5226, i64 0, i32 9
  %5228 = load ptr, ptr %5227, align 8, !tbaa !918
  %5229 = icmp eq ptr %5228, null
  br i1 %5229, label %5231, label %5230

5230:                                             ; preds = %5225
  call fastcc void @idproperties_fix_groups_lengths_recurse(ptr noundef nonnull %5228)
  br label %5231

5231:                                             ; preds = %5230, %5225
  %5232 = load ptr, ptr %5226, align 8
  %5233 = icmp eq ptr %5232, null
  br i1 %5233, label %5234, label %5225, !llvm.loop !919

5234:                                             ; preds = %5231, %5221
  %5235 = getelementptr inbounds %struct.Main, ptr %2, i64 0, i32 19
  %5236 = load ptr, ptr %5235, align 8
  %5237 = icmp eq ptr %5236, null
  br i1 %5237, label %5247, label %5238

5238:                                             ; preds = %5234, %5244
  %5239 = phi ptr [ %5245, %5244 ], [ %5236, %5234 ]
  %5240 = getelementptr inbounds %struct.ID, ptr %5239, i64 0, i32 9
  %5241 = load ptr, ptr %5240, align 8, !tbaa !918
  %5242 = icmp eq ptr %5241, null
  br i1 %5242, label %5244, label %5243

5243:                                             ; preds = %5238
  call fastcc void @idproperties_fix_groups_lengths_recurse(ptr noundef nonnull %5241)
  br label %5244

5244:                                             ; preds = %5243, %5238
  %5245 = load ptr, ptr %5239, align 8
  %5246 = icmp eq ptr %5245, null
  br i1 %5246, label %5247, label %5238, !llvm.loop !919

5247:                                             ; preds = %5244, %5234
  %5248 = getelementptr inbounds %struct.Main, ptr %2, i64 0, i32 20
  %5249 = load ptr, ptr %5248, align 8
  %5250 = icmp eq ptr %5249, null
  br i1 %5250, label %5260, label %5251

5251:                                             ; preds = %5247, %5257
  %5252 = phi ptr [ %5258, %5257 ], [ %5249, %5247 ]
  %5253 = getelementptr inbounds %struct.ID, ptr %5252, i64 0, i32 9
  %5254 = load ptr, ptr %5253, align 8, !tbaa !918
  %5255 = icmp eq ptr %5254, null
  br i1 %5255, label %5257, label %5256

5256:                                             ; preds = %5251
  call fastcc void @idproperties_fix_groups_lengths_recurse(ptr noundef nonnull %5254)
  br label %5257

5257:                                             ; preds = %5256, %5251
  %5258 = load ptr, ptr %5252, align 8
  %5259 = icmp eq ptr %5258, null
  br i1 %5259, label %5260, label %5251, !llvm.loop !919

5260:                                             ; preds = %5257, %5247
  %5261 = getelementptr inbounds %struct.Main, ptr %2, i64 0, i32 21
  %5262 = load ptr, ptr %5261, align 8
  %5263 = icmp eq ptr %5262, null
  br i1 %5263, label %5273, label %5264

5264:                                             ; preds = %5260, %5270
  %5265 = phi ptr [ %5271, %5270 ], [ %5262, %5260 ]
  %5266 = getelementptr inbounds %struct.ID, ptr %5265, i64 0, i32 9
  %5267 = load ptr, ptr %5266, align 8, !tbaa !918
  %5268 = icmp eq ptr %5267, null
  br i1 %5268, label %5270, label %5269

5269:                                             ; preds = %5264
  call fastcc void @idproperties_fix_groups_lengths_recurse(ptr noundef nonnull %5267)
  br label %5270

5270:                                             ; preds = %5269, %5264
  %5271 = load ptr, ptr %5265, align 8
  %5272 = icmp eq ptr %5271, null
  br i1 %5272, label %5273, label %5264, !llvm.loop !919

5273:                                             ; preds = %5270, %5260
  %5274 = getelementptr inbounds %struct.Main, ptr %2, i64 0, i32 22
  %5275 = load ptr, ptr %5274, align 8
  %5276 = icmp eq ptr %5275, null
  br i1 %5276, label %5286, label %5277

5277:                                             ; preds = %5273, %5283
  %5278 = phi ptr [ %5284, %5283 ], [ %5275, %5273 ]
  %5279 = getelementptr inbounds %struct.ID, ptr %5278, i64 0, i32 9
  %5280 = load ptr, ptr %5279, align 8, !tbaa !918
  %5281 = icmp eq ptr %5280, null
  br i1 %5281, label %5283, label %5282

5282:                                             ; preds = %5277
  call fastcc void @idproperties_fix_groups_lengths_recurse(ptr noundef nonnull %5280)
  br label %5283

5283:                                             ; preds = %5282, %5277
  %5284 = load ptr, ptr %5278, align 8
  %5285 = icmp eq ptr %5284, null
  br i1 %5285, label %5286, label %5277, !llvm.loop !919

5286:                                             ; preds = %5283, %5273
  %5287 = getelementptr inbounds %struct.Main, ptr %2, i64 0, i32 23
  %5288 = load ptr, ptr %5287, align 8
  %5289 = icmp eq ptr %5288, null
  br i1 %5289, label %5299, label %5290

5290:                                             ; preds = %5286, %5296
  %5291 = phi ptr [ %5297, %5296 ], [ %5288, %5286 ]
  %5292 = getelementptr inbounds %struct.ID, ptr %5291, i64 0, i32 9
  %5293 = load ptr, ptr %5292, align 8, !tbaa !918
  %5294 = icmp eq ptr %5293, null
  br i1 %5294, label %5296, label %5295

5295:                                             ; preds = %5290
  call fastcc void @idproperties_fix_groups_lengths_recurse(ptr noundef nonnull %5293)
  br label %5296

5296:                                             ; preds = %5295, %5290
  %5297 = load ptr, ptr %5291, align 8
  %5298 = icmp eq ptr %5297, null
  br i1 %5298, label %5299, label %5290, !llvm.loop !919

5299:                                             ; preds = %5296, %5286
  %5300 = getelementptr inbounds %struct.Main, ptr %2, i64 0, i32 24
  %5301 = load ptr, ptr %5300, align 8
  %5302 = icmp eq ptr %5301, null
  br i1 %5302, label %5312, label %5303

5303:                                             ; preds = %5299, %5309
  %5304 = phi ptr [ %5310, %5309 ], [ %5301, %5299 ]
  %5305 = getelementptr inbounds %struct.ID, ptr %5304, i64 0, i32 9
  %5306 = load ptr, ptr %5305, align 8, !tbaa !918
  %5307 = icmp eq ptr %5306, null
  br i1 %5307, label %5309, label %5308

5308:                                             ; preds = %5303
  call fastcc void @idproperties_fix_groups_lengths_recurse(ptr noundef nonnull %5306)
  br label %5309

5309:                                             ; preds = %5308, %5303
  %5310 = load ptr, ptr %5304, align 8
  %5311 = icmp eq ptr %5310, null
  br i1 %5311, label %5312, label %5303, !llvm.loop !919

5312:                                             ; preds = %5309, %5299
  %5313 = getelementptr inbounds %struct.Main, ptr %2, i64 0, i32 25
  %5314 = load ptr, ptr %5313, align 8
  %5315 = icmp eq ptr %5314, null
  br i1 %5315, label %5325, label %5316

5316:                                             ; preds = %5312, %5322
  %5317 = phi ptr [ %5323, %5322 ], [ %5314, %5312 ]
  %5318 = getelementptr inbounds %struct.ID, ptr %5317, i64 0, i32 9
  %5319 = load ptr, ptr %5318, align 8, !tbaa !918
  %5320 = icmp eq ptr %5319, null
  br i1 %5320, label %5322, label %5321

5321:                                             ; preds = %5316
  call fastcc void @idproperties_fix_groups_lengths_recurse(ptr noundef nonnull %5319)
  br label %5322

5322:                                             ; preds = %5321, %5316
  %5323 = load ptr, ptr %5317, align 8
  %5324 = icmp eq ptr %5323, null
  br i1 %5324, label %5325, label %5316, !llvm.loop !919

5325:                                             ; preds = %5322, %5312
  %5326 = getelementptr inbounds %struct.Main, ptr %2, i64 0, i32 26
  %5327 = load ptr, ptr %5326, align 8
  %5328 = icmp eq ptr %5327, null
  br i1 %5328, label %5338, label %5329

5329:                                             ; preds = %5325, %5335
  %5330 = phi ptr [ %5336, %5335 ], [ %5327, %5325 ]
  %5331 = getelementptr inbounds %struct.ID, ptr %5330, i64 0, i32 9
  %5332 = load ptr, ptr %5331, align 8, !tbaa !918
  %5333 = icmp eq ptr %5332, null
  br i1 %5333, label %5335, label %5334

5334:                                             ; preds = %5329
  call fastcc void @idproperties_fix_groups_lengths_recurse(ptr noundef nonnull %5332)
  br label %5335

5335:                                             ; preds = %5334, %5329
  %5336 = load ptr, ptr %5330, align 8
  %5337 = icmp eq ptr %5336, null
  br i1 %5337, label %5338, label %5329, !llvm.loop !919

5338:                                             ; preds = %5335, %5325
  %5339 = getelementptr inbounds %struct.Main, ptr %2, i64 0, i32 27
  %5340 = load ptr, ptr %5339, align 8
  %5341 = icmp eq ptr %5340, null
  br i1 %5341, label %5351, label %5342

5342:                                             ; preds = %5338, %5348
  %5343 = phi ptr [ %5349, %5348 ], [ %5340, %5338 ]
  %5344 = getelementptr inbounds %struct.ID, ptr %5343, i64 0, i32 9
  %5345 = load ptr, ptr %5344, align 8, !tbaa !918
  %5346 = icmp eq ptr %5345, null
  br i1 %5346, label %5348, label %5347

5347:                                             ; preds = %5342
  call fastcc void @idproperties_fix_groups_lengths_recurse(ptr noundef nonnull %5345)
  br label %5348

5348:                                             ; preds = %5347, %5342
  %5349 = load ptr, ptr %5343, align 8
  %5350 = icmp eq ptr %5349, null
  br i1 %5350, label %5351, label %5342, !llvm.loop !919

5351:                                             ; preds = %5348, %5338
  %5352 = getelementptr inbounds %struct.Main, ptr %2, i64 0, i32 28
  %5353 = load ptr, ptr %5352, align 8
  %5354 = icmp eq ptr %5353, null
  br i1 %5354, label %5364, label %5355

5355:                                             ; preds = %5351, %5361
  %5356 = phi ptr [ %5362, %5361 ], [ %5353, %5351 ]
  %5357 = getelementptr inbounds %struct.ID, ptr %5356, i64 0, i32 9
  %5358 = load ptr, ptr %5357, align 8, !tbaa !918
  %5359 = icmp eq ptr %5358, null
  br i1 %5359, label %5361, label %5360

5360:                                             ; preds = %5355
  call fastcc void @idproperties_fix_groups_lengths_recurse(ptr noundef nonnull %5358)
  br label %5361

5361:                                             ; preds = %5360, %5355
  %5362 = load ptr, ptr %5356, align 8
  %5363 = icmp eq ptr %5362, null
  br i1 %5363, label %5364, label %5355, !llvm.loop !919

5364:                                             ; preds = %5361, %5351
  %5365 = getelementptr inbounds %struct.Main, ptr %2, i64 0, i32 29
  %5366 = load ptr, ptr %5365, align 8
  %5367 = icmp eq ptr %5366, null
  br i1 %5367, label %5377, label %5368

5368:                                             ; preds = %5364, %5374
  %5369 = phi ptr [ %5375, %5374 ], [ %5366, %5364 ]
  %5370 = getelementptr inbounds %struct.ID, ptr %5369, i64 0, i32 9
  %5371 = load ptr, ptr %5370, align 8, !tbaa !918
  %5372 = icmp eq ptr %5371, null
  br i1 %5372, label %5374, label %5373

5373:                                             ; preds = %5368
  call fastcc void @idproperties_fix_groups_lengths_recurse(ptr noundef nonnull %5371)
  br label %5374

5374:                                             ; preds = %5373, %5368
  %5375 = load ptr, ptr %5369, align 8
  %5376 = icmp eq ptr %5375, null
  br i1 %5376, label %5377, label %5368, !llvm.loop !919

5377:                                             ; preds = %5374, %5364
  %5378 = getelementptr inbounds %struct.Main, ptr %2, i64 0, i32 31
  %5379 = load ptr, ptr %5378, align 8
  %5380 = icmp eq ptr %5379, null
  br i1 %5380, label %5390, label %5381

5381:                                             ; preds = %5377, %5387
  %5382 = phi ptr [ %5388, %5387 ], [ %5379, %5377 ]
  %5383 = getelementptr inbounds %struct.ID, ptr %5382, i64 0, i32 9
  %5384 = load ptr, ptr %5383, align 8, !tbaa !918
  %5385 = icmp eq ptr %5384, null
  br i1 %5385, label %5387, label %5386

5386:                                             ; preds = %5381
  call fastcc void @idproperties_fix_groups_lengths_recurse(ptr noundef nonnull %5384)
  br label %5387

5387:                                             ; preds = %5386, %5381
  %5388 = load ptr, ptr %5382, align 8
  %5389 = icmp eq ptr %5388, null
  br i1 %5389, label %5390, label %5381, !llvm.loop !919

5390:                                             ; preds = %5387, %5377
  %5391 = getelementptr inbounds %struct.Main, ptr %2, i64 0, i32 32
  %5392 = load ptr, ptr %5391, align 8
  %5393 = icmp eq ptr %5392, null
  br i1 %5393, label %5403, label %5394

5394:                                             ; preds = %5390, %5400
  %5395 = phi ptr [ %5401, %5400 ], [ %5392, %5390 ]
  %5396 = getelementptr inbounds %struct.ID, ptr %5395, i64 0, i32 9
  %5397 = load ptr, ptr %5396, align 8, !tbaa !918
  %5398 = icmp eq ptr %5397, null
  br i1 %5398, label %5400, label %5399

5399:                                             ; preds = %5394
  call fastcc void @idproperties_fix_groups_lengths_recurse(ptr noundef nonnull %5397)
  br label %5400

5400:                                             ; preds = %5399, %5394
  %5401 = load ptr, ptr %5395, align 8
  %5402 = icmp eq ptr %5401, null
  br i1 %5402, label %5403, label %5394, !llvm.loop !919

5403:                                             ; preds = %5400, %5390
  %5404 = getelementptr inbounds %struct.Main, ptr %2, i64 0, i32 33
  %5405 = load ptr, ptr %5404, align 8
  %5406 = icmp eq ptr %5405, null
  br i1 %5406, label %5416, label %5407

5407:                                             ; preds = %5403, %5413
  %5408 = phi ptr [ %5414, %5413 ], [ %5405, %5403 ]
  %5409 = getelementptr inbounds %struct.ID, ptr %5408, i64 0, i32 9
  %5410 = load ptr, ptr %5409, align 8, !tbaa !918
  %5411 = icmp eq ptr %5410, null
  br i1 %5411, label %5413, label %5412

5412:                                             ; preds = %5407
  call fastcc void @idproperties_fix_groups_lengths_recurse(ptr noundef nonnull %5410)
  br label %5413

5413:                                             ; preds = %5412, %5407
  %5414 = load ptr, ptr %5408, align 8
  %5415 = icmp eq ptr %5414, null
  br i1 %5415, label %5416, label %5407, !llvm.loop !919

5416:                                             ; preds = %5413, %5403
  %5417 = getelementptr inbounds %struct.Main, ptr %2, i64 0, i32 34
  %5418 = load ptr, ptr %5417, align 8
  %5419 = icmp eq ptr %5418, null
  br i1 %5419, label %5429, label %5420

5420:                                             ; preds = %5416, %5426
  %5421 = phi ptr [ %5427, %5426 ], [ %5418, %5416 ]
  %5422 = getelementptr inbounds %struct.ID, ptr %5421, i64 0, i32 9
  %5423 = load ptr, ptr %5422, align 8, !tbaa !918
  %5424 = icmp eq ptr %5423, null
  br i1 %5424, label %5426, label %5425

5425:                                             ; preds = %5420
  call fastcc void @idproperties_fix_groups_lengths_recurse(ptr noundef nonnull %5423)
  br label %5426

5426:                                             ; preds = %5425, %5420
  %5427 = load ptr, ptr %5421, align 8
  %5428 = icmp eq ptr %5427, null
  br i1 %5428, label %5429, label %5420, !llvm.loop !919

5429:                                             ; preds = %5426, %5416
  %5430 = getelementptr inbounds %struct.Main, ptr %2, i64 0, i32 35
  %5431 = load ptr, ptr %5430, align 8
  %5432 = icmp eq ptr %5431, null
  br i1 %5432, label %5442, label %5433

5433:                                             ; preds = %5429, %5439
  %5434 = phi ptr [ %5440, %5439 ], [ %5431, %5429 ]
  %5435 = getelementptr inbounds %struct.ID, ptr %5434, i64 0, i32 9
  %5436 = load ptr, ptr %5435, align 8, !tbaa !918
  %5437 = icmp eq ptr %5436, null
  br i1 %5437, label %5439, label %5438

5438:                                             ; preds = %5433
  call fastcc void @idproperties_fix_groups_lengths_recurse(ptr noundef nonnull %5436)
  br label %5439

5439:                                             ; preds = %5438, %5433
  %5440 = load ptr, ptr %5434, align 8
  %5441 = icmp eq ptr %5440, null
  br i1 %5441, label %5442, label %5433, !llvm.loop !919

5442:                                             ; preds = %5439, %5429
  %5443 = getelementptr inbounds %struct.Main, ptr %2, i64 0, i32 36
  %5444 = load ptr, ptr %5443, align 8
  %5445 = icmp eq ptr %5444, null
  br i1 %5445, label %5455, label %5446

5446:                                             ; preds = %5442, %5452
  %5447 = phi ptr [ %5453, %5452 ], [ %5444, %5442 ]
  %5448 = getelementptr inbounds %struct.ID, ptr %5447, i64 0, i32 9
  %5449 = load ptr, ptr %5448, align 8, !tbaa !918
  %5450 = icmp eq ptr %5449, null
  br i1 %5450, label %5452, label %5451

5451:                                             ; preds = %5446
  call fastcc void @idproperties_fix_groups_lengths_recurse(ptr noundef nonnull %5449)
  br label %5452

5452:                                             ; preds = %5451, %5446
  %5453 = load ptr, ptr %5447, align 8
  %5454 = icmp eq ptr %5453, null
  br i1 %5454, label %5455, label %5446, !llvm.loop !919

5455:                                             ; preds = %5452, %5442
  %5456 = getelementptr inbounds %struct.Main, ptr %2, i64 0, i32 37
  %5457 = load ptr, ptr %5456, align 8
  %5458 = icmp eq ptr %5457, null
  br i1 %5458, label %5468, label %5459

5459:                                             ; preds = %5455, %5465
  %5460 = phi ptr [ %5466, %5465 ], [ %5457, %5455 ]
  %5461 = getelementptr inbounds %struct.ID, ptr %5460, i64 0, i32 9
  %5462 = load ptr, ptr %5461, align 8, !tbaa !918
  %5463 = icmp eq ptr %5462, null
  br i1 %5463, label %5465, label %5464

5464:                                             ; preds = %5459
  call fastcc void @idproperties_fix_groups_lengths_recurse(ptr noundef nonnull %5462)
  br label %5465

5465:                                             ; preds = %5464, %5459
  %5466 = load ptr, ptr %5460, align 8
  %5467 = icmp eq ptr %5466, null
  br i1 %5467, label %5468, label %5459, !llvm.loop !919

5468:                                             ; preds = %5465, %5455, %5127, %5125
  %5469 = load i16, ptr %7, align 8, !tbaa !60
  %5470 = icmp slt i16 %5469, 246
  br i1 %5470, label %5471, label %5504

5471:                                             ; preds = %5468
  %5472 = getelementptr inbounds %struct.Main, ptr %2, i64 0, i32 13
  %5473 = load ptr, ptr %5472, align 8, !tbaa !34
  %5474 = icmp eq ptr %5473, null
  br i1 %5474, label %5503, label %5478

5475:                                             ; preds = %5500, %5478
  %5476 = load ptr, ptr %5479, align 8, !tbaa !34
  %5477 = icmp eq ptr %5476, null
  br i1 %5477, label %5503, label %5478, !llvm.loop !920

5478:                                             ; preds = %5471, %5475
  %5479 = phi ptr [ %5476, %5475 ], [ %5473, %5471 ]
  %5480 = getelementptr inbounds %struct.Object, ptr %5479, i64 0, i32 94
  %5481 = load ptr, ptr %5480, align 8, !tbaa !34
  %5482 = icmp eq ptr %5481, null
  br i1 %5482, label %5475, label %5483

5483:                                             ; preds = %5478, %5500
  %5484 = phi ptr [ %5501, %5500 ], [ %5481, %5478 ]
  %5485 = getelementptr inbounds %struct.bActuator, ptr %5484, i64 0, i32 3
  %5486 = load i16, ptr %5485, align 8, !tbaa !187
  %5487 = icmp eq i16 %5486, 0
  br i1 %5487, label %5488, label %5500

5488:                                             ; preds = %5483
  %5489 = getelementptr inbounds %struct.bActuator, ptr %5484, i64 0, i32 8
  %5490 = load ptr, ptr %5489, align 8, !tbaa !189
  %5491 = getelementptr inbounds %struct.bObjectActuator, ptr %5490, i64 0, i32 9
  %5492 = load float, ptr %5491, align 4, !tbaa !156
  %5493 = fneg float %5492
  store float %5493, ptr %5491, align 4, !tbaa !156
  %5494 = getelementptr inbounds %struct.bObjectActuator, ptr %5490, i64 0, i32 9, i64 1
  %5495 = load float, ptr %5494, align 4, !tbaa !156
  %5496 = fneg float %5495
  store float %5496, ptr %5494, align 4, !tbaa !156
  %5497 = getelementptr inbounds %struct.bObjectActuator, ptr %5490, i64 0, i32 9, i64 2
  %5498 = load float, ptr %5497, align 4, !tbaa !156
  %5499 = fneg float %5498
  store float %5499, ptr %5497, align 4, !tbaa !156
  br label %5500

5500:                                             ; preds = %5483, %5488
  %5501 = load ptr, ptr %5484, align 8, !tbaa !34
  %5502 = icmp eq ptr %5501, null
  br i1 %5502, label %5475, label %5483, !llvm.loop !921

5503:                                             ; preds = %5475, %5471
  br i1 %5470, label %5510, label %5504

5504:                                             ; preds = %5468, %5503
  %5505 = icmp eq i16 %5469, 246
  br i1 %5505, label %5506, label %5545

5506:                                             ; preds = %5504
  %5507 = getelementptr inbounds %struct.Main, ptr %2, i64 0, i32 4
  %5508 = load i16, ptr %5507, align 2, !tbaa !634
  %5509 = icmp slt i16 %5508, 1
  br i1 %5509, label %5510, label %5545

5510:                                             ; preds = %5506, %5503
  %5511 = getelementptr inbounds %struct.Main, ptr %2, i64 0, i32 13
  %5512 = load ptr, ptr %5511, align 8, !tbaa !34
  %5513 = icmp eq ptr %5512, null
  br i1 %5513, label %5545, label %5514

5514:                                             ; preds = %5510, %5542
  %5515 = phi ptr [ %5543, %5542 ], [ %5512, %5510 ]
  %5516 = getelementptr inbounds %struct.Object, ptr %5515, i64 0, i32 117
  %5517 = load ptr, ptr %5516, align 8, !tbaa !922
  %5518 = icmp eq ptr %5517, null
  br i1 %5518, label %5542, label %5519

5519:                                             ; preds = %5514
  %5520 = call ptr @modifier_new(i32 noundef 26) #11
  %5521 = getelementptr inbounds %struct.Object, ptr %5515, i64 0, i32 26
  call void @BLI_addhead(ptr noundef nonnull %5521, ptr noundef %5520) #11
  %5522 = load ptr, ptr @MEM_freeN, align 8, !tbaa !34
  %5523 = getelementptr inbounds %struct.FluidsimModifierData, ptr %5520, i64 0, i32 1
  %5524 = load ptr, ptr %5523, align 8, !tbaa !876
  call void %5522(ptr noundef %5524) #11
  %5525 = load ptr, ptr @MEM_dupallocN, align 8, !tbaa !34
  %5526 = load ptr, ptr %5516, align 8, !tbaa !922
  %5527 = call ptr %5525(ptr noundef %5526) #11
  store ptr %5527, ptr %5523, align 8, !tbaa !876
  %5528 = getelementptr inbounds %struct.ID, ptr %5515, i64 0, i32 3
  %5529 = load ptr, ptr %5528, align 8, !tbaa !825
  %5530 = load ptr, ptr %5516, align 8, !tbaa !922
  %5531 = getelementptr inbounds %struct.FluidsimSettings, ptr %5530, i64 0, i32 30
  %5532 = load ptr, ptr %5531, align 8, !tbaa !923
  %5533 = call ptr @blo_do_versions_newlibadr_us(ptr noundef %0, ptr noundef %5529, ptr noundef %5532) #11
  %5534 = load ptr, ptr %5523, align 8, !tbaa !876
  %5535 = getelementptr inbounds %struct.FluidsimSettings, ptr %5534, i64 0, i32 30
  store ptr %5533, ptr %5535, align 8, !tbaa !923
  %5536 = load ptr, ptr @MEM_freeN, align 8, !tbaa !34
  %5537 = load ptr, ptr %5516, align 8, !tbaa !922
  call void %5536(ptr noundef %5537) #11
  %5538 = load ptr, ptr %5523, align 8, !tbaa !876
  %5539 = getelementptr inbounds %struct.FluidsimSettings, ptr %5538, i64 0, i32 52
  store i32 2147483647, ptr %5539, align 8, !tbaa !924
  %5540 = getelementptr inbounds %struct.FluidsimSettings, ptr %5538, i64 0, i32 39
  store i32 0, ptr %5540, align 8, !tbaa !925
  %5541 = getelementptr inbounds %struct.FluidsimSettings, ptr %5538, i64 0, i32 43
  store ptr null, ptr %5541, align 8, !tbaa !926
  br label %5542

5542:                                             ; preds = %5514, %5519
  %5543 = load ptr, ptr %5515, align 8, !tbaa !34
  %5544 = icmp eq ptr %5543, null
  br i1 %5544, label %5545, label %5514, !llvm.loop !927

5545:                                             ; preds = %5542, %5510, %5506, %5504
  %5546 = load i16, ptr %7, align 8, !tbaa !60
  %5547 = icmp slt i16 %5546, 246
  br i1 %5547, label %5554, label %5548

5548:                                             ; preds = %5545
  %5549 = icmp eq i16 %5546, 246
  br i1 %5549, label %5550, label %5677

5550:                                             ; preds = %5548
  %5551 = getelementptr inbounds %struct.Main, ptr %2, i64 0, i32 4
  %5552 = load i16, ptr %5551, align 2, !tbaa !634
  %5553 = icmp slt i16 %5552, 1
  br i1 %5553, label %5554, label %5677

5554:                                             ; preds = %5550, %5545
  %5555 = getelementptr inbounds %struct.Main, ptr %2, i64 0, i32 14
  %5556 = load ptr, ptr %5555, align 8, !tbaa !34
  %5557 = icmp eq ptr %5556, null
  br i1 %5557, label %5677, label %5558

5558:                                             ; preds = %5554, %5674
  %5559 = phi ptr [ %5675, %5674 ], [ %5556, %5554 ]
  %5560 = getelementptr inbounds %struct.Mesh, ptr %5559, i64 0, i32 23
  %5561 = getelementptr inbounds %struct.Mesh, ptr %5559, i64 0, i32 23, i32 2
  %5562 = load i32, ptr %5561, align 4, !tbaa !611
  %5563 = icmp sgt i32 %5562, 0
  br i1 %5563, label %5564, label %5577

5564:                                             ; preds = %5558
  %5565 = load ptr, ptr %5560, align 8, !tbaa !626
  %5566 = zext nneg i32 %5562 to i64
  br label %5567

5567:                                             ; preds = %5564, %5572
  %5568 = phi i64 [ 0, %5564 ], [ %5573, %5572 ]
  %5569 = getelementptr inbounds %struct.CustomDataLayer, ptr %5565, i64 %5568
  %5570 = load i32, ptr %5569, align 8, !tbaa !627
  %5571 = icmp eq i32 %5570, 5
  br i1 %5571, label %5575, label %5572

5572:                                             ; preds = %5567
  %5573 = add nuw nsw i64 %5568, 1
  %5574 = icmp eq i64 %5573, %5566
  br i1 %5574, label %5577, label %5567, !llvm.loop !928

5575:                                             ; preds = %5567
  %5576 = trunc i64 %5568 to i32
  br label %5577

5577:                                             ; preds = %5575, %5572, %5558
  %5578 = phi i32 [ 0, %5558 ], [ %5576, %5575 ], [ %5562, %5572 ]
  %5579 = getelementptr inbounds %struct.Mesh, ptr %5559, i64 0, i32 23, i32 2
  %5580 = icmp eq i32 %5578, %5562
  br i1 %5580, label %5674, label %5581

5581:                                             ; preds = %5577
  %5582 = getelementptr inbounds %struct.Mesh, ptr %5559, i64 0, i32 28
  %5583 = load i32, ptr %5582, align 8, !tbaa !111
  %5584 = icmp sgt i32 %5583, 0
  br i1 %5584, label %5585, label %5674

5585:                                             ; preds = %5581
  %5586 = getelementptr inbounds %struct.Mesh, ptr %5559, i64 0, i32 12
  %5587 = load ptr, ptr %5586, align 8, !tbaa !112
  %5588 = getelementptr inbounds %struct.Mesh, ptr %5559, i64 0, i32 47
  %5589 = getelementptr inbounds %struct.Mesh, ptr %5559, i64 0, i32 5
  br label %5590

5590:                                             ; preds = %5585, %5668
  %5591 = phi i64 [ 0, %5585 ], [ %5669, %5668 ]
  %5592 = phi ptr [ %5587, %5585 ], [ %5670, %5668 ]
  %5593 = getelementptr inbounds %struct.MFace, ptr %5592, i64 0, i32 4
  %5594 = load i16, ptr %5593, align 4, !tbaa !929
  %5595 = load i16, ptr %5588, align 2, !tbaa !930
  %5596 = icmp slt i16 %5594, %5595
  br i1 %5596, label %5597, label %5629

5597:                                             ; preds = %5590
  %5598 = load ptr, ptr %5589, align 8, !tbaa !931
  %5599 = sext i16 %5594 to i64
  %5600 = getelementptr inbounds ptr, ptr %5598, i64 %5599
  %5601 = load ptr, ptr %5600, align 8, !tbaa !34
  %5602 = call ptr @blo_do_versions_newlibadr(ptr noundef %0, ptr noundef %1, ptr noundef %5601) #11
  %5603 = icmp eq ptr %5602, null
  br i1 %5603, label %5609, label %5604

5604:                                             ; preds = %5597
  %5605 = getelementptr inbounds %struct.ID, ptr %5602, i64 0, i32 3
  %5606 = load ptr, ptr %5605, align 8, !tbaa !932
  %5607 = icmp eq ptr %5606, null
  %5608 = select i1 %5607, ptr %5602, ptr null
  br label %5609

5609:                                             ; preds = %5604, %5597
  %5610 = phi ptr [ %5608, %5604 ], [ null, %5597 ]
  %5611 = icmp ne ptr %5610, null
  br i1 %5611, label %5612, label %5629

5612:                                             ; preds = %5609, %5624
  %5613 = phi i64 [ %5626, %5624 ], [ 0, %5609 ]
  %5614 = phi i32 [ %5625, %5624 ], [ 0, %5609 ]
  %5615 = getelementptr inbounds %struct.Material, ptr %5610, i64 0, i32 102, i64 %5613
  %5616 = load ptr, ptr %5615, align 8, !tbaa !34
  %5617 = icmp eq ptr %5616, null
  br i1 %5617, label %5624, label %5618

5618:                                             ; preds = %5612
  %5619 = getelementptr inbounds %struct.MTex, ptr %5616, i64 0, i32 1
  %5620 = load i16, ptr %5619, align 2, !tbaa !560
  %5621 = and i16 %5620, 128
  %5622 = icmp eq i16 %5621, 0
  %5623 = select i1 %5622, i32 %5614, i32 1
  br label %5624

5624:                                             ; preds = %5618, %5612
  %5625 = phi i32 [ %5614, %5612 ], [ %5623, %5618 ]
  %5626 = add nuw nsw i64 %5613, 1
  %5627 = icmp ult i64 %5613, 17
  %5628 = and i1 %5611, %5627
  br i1 %5628, label %5612, label %5629, !llvm.loop !933

5629:                                             ; preds = %5624, %5609, %5590
  %5630 = phi ptr [ null, %5590 ], [ %5610, %5609 ], [ %5610, %5624 ]
  %5631 = phi i32 [ 0, %5590 ], [ 0, %5609 ], [ %5625, %5624 ]
  %5632 = load i32, ptr %5579, align 4, !tbaa !611
  %5633 = icmp sgt i32 %5632, 0
  br i1 %5633, label %5634, label %5668

5634:                                             ; preds = %5629
  %5635 = load ptr, ptr %5560, align 8, !tbaa !626
  %5636 = icmp eq ptr %5630, null
  %5637 = getelementptr inbounds %struct.Material, ptr %5630, i64 0, i32 51
  %5638 = icmp eq i32 %5631, 0
  %5639 = zext nneg i32 %5632 to i64
  br label %5640

5640:                                             ; preds = %5634, %5665
  %5641 = phi i64 [ 0, %5634 ], [ %5666, %5665 ]
  %5642 = getelementptr inbounds %struct.CustomDataLayer, ptr %5635, i64 %5641
  %5643 = load i32, ptr %5642, align 8, !tbaa !627
  %5644 = icmp eq i32 %5643, 5
  br i1 %5644, label %5645, label %5665

5645:                                             ; preds = %5640
  %5646 = getelementptr inbounds %struct.CustomDataLayer, ptr %5635, i64 %5641, i32 9
  %5647 = load ptr, ptr %5646, align 8, !tbaa !934
  %5648 = getelementptr inbounds %struct.MTFace, ptr %5647, i64 %5591, i32 4
  %5649 = load i16, ptr %5648, align 2, !tbaa !618
  %5650 = and i16 %5649, -3
  store i16 %5650, ptr %5648, align 2, !tbaa !618
  br i1 %5636, label %5665, label %5651

5651:                                             ; preds = %5645
  %5652 = load i32, ptr %5637, align 4, !tbaa !169
  %5653 = and i32 %5652, 64
  %5654 = icmp eq i32 %5653, 0
  br i1 %5654, label %5665, label %5655

5655:                                             ; preds = %5651
  %5656 = getelementptr inbounds %struct.MTFace, ptr %5647, i64 %5591, i32 3
  %5657 = load i8, ptr %5656, align 1, !tbaa !624
  %5658 = add i8 %5657, -3
  %5659 = icmp ult i8 %5658, -2
  %5660 = icmp eq i8 %5657, 4
  %5661 = or i1 %5638, %5660
  %5662 = select i1 %5659, i1 %5661, i1 false
  br i1 %5662, label %5665, label %5663

5663:                                             ; preds = %5655
  %5664 = or i16 %5649, 2
  store i16 %5664, ptr %5648, align 2, !tbaa !618
  br label %5665

5665:                                             ; preds = %5655, %5663, %5651, %5645, %5640
  %5666 = add nuw nsw i64 %5641, 1
  %5667 = icmp eq i64 %5666, %5639
  br i1 %5667, label %5668, label %5640, !llvm.loop !935

5668:                                             ; preds = %5665, %5629
  %5669 = add nuw nsw i64 %5591, 1
  %5670 = getelementptr inbounds %struct.MFace, ptr %5592, i64 1
  %5671 = load i32, ptr %5582, align 8, !tbaa !111
  %5672 = sext i32 %5671 to i64
  %5673 = icmp slt i64 %5669, %5672
  br i1 %5673, label %5590, label %5674, !llvm.loop !936

5674:                                             ; preds = %5668, %5581, %5577
  %5675 = load ptr, ptr %5559, align 8, !tbaa !34
  %5676 = icmp eq ptr %5675, null
  br i1 %5676, label %5677, label %5558, !llvm.loop !937

5677:                                             ; preds = %5674, %5554, %5550, %5548
  %5678 = load i16, ptr %7, align 8, !tbaa !60
  %5679 = icmp slt i16 %5678, 246
  br i1 %5679, label %5686, label %5680

5680:                                             ; preds = %5677
  %5681 = icmp eq i16 %5678, 246
  br i1 %5681, label %5682, label %5704

5682:                                             ; preds = %5680
  %5683 = getelementptr inbounds %struct.Main, ptr %2, i64 0, i32 4
  %5684 = load i16, ptr %5683, align 2, !tbaa !634
  %5685 = icmp slt i16 %5684, 1
  br i1 %5685, label %5686, label %5704

5686:                                             ; preds = %5682, %5677
  %5687 = getelementptr inbounds %struct.Main, ptr %2, i64 0, i32 13
  %5688 = load ptr, ptr %5687, align 8, !tbaa !34
  %5689 = icmp eq ptr %5688, null
  br i1 %5689, label %5704, label %5690

5690:                                             ; preds = %5686, %5701
  %5691 = phi ptr [ %5702, %5701 ], [ %5688, %5686 ]
  %5692 = getelementptr inbounds %struct.Object, ptr %5691, i64 0, i32 110
  %5693 = load ptr, ptr %5692, align 8, !tbaa !938
  %5694 = icmp eq ptr %5693, null
  br i1 %5694, label %5701, label %5695

5695:                                             ; preds = %5690
  %5696 = getelementptr inbounds %struct.PartDeflect, ptr %5693, i64 0, i32 2
  %5697 = load i16, ptr %5696, align 2, !tbaa !939
  %5698 = icmp eq i16 %5697, 4
  br i1 %5698, label %5699, label %5701

5699:                                             ; preds = %5695
  %5700 = getelementptr inbounds %struct.PartDeflect, ptr %5693, i64 0, i32 38
  store float 0.000000e+00, ptr %5700, align 8, !tbaa !941
  br label %5701

5701:                                             ; preds = %5690, %5695, %5699
  %5702 = load ptr, ptr %5691, align 8, !tbaa !34
  %5703 = icmp eq ptr %5702, null
  br i1 %5703, label %5704, label %5690, !llvm.loop !942

5704:                                             ; preds = %5701, %5686, %5682, %5680
  %5705 = icmp slt i16 %5678, 247
  br i1 %5705, label %5712, label %5706

5706:                                             ; preds = %5704
  %5707 = icmp eq i16 %5678, 247
  br i1 %5707, label %5708, label %5724

5708:                                             ; preds = %5706
  %5709 = getelementptr inbounds %struct.Main, ptr %2, i64 0, i32 4
  %5710 = load i16, ptr %5709, align 2, !tbaa !634
  %5711 = icmp slt i16 %5710, 2
  br i1 %5711, label %5712, label %5724

5712:                                             ; preds = %5708, %5704
  %5713 = getelementptr inbounds %struct.Main, ptr %2, i64 0, i32 13
  %5714 = load ptr, ptr %5713, align 8, !tbaa !34
  %5715 = icmp eq ptr %5714, null
  br i1 %5715, label %5724, label %5716

5716:                                             ; preds = %5712, %5716
  %5717 = phi ptr [ %5722, %5716 ], [ %5714, %5712 ]
  %5718 = getelementptr inbounds %struct.Object, ptr %5717, i64 0, i32 99
  %5719 = load i32, ptr %5718, align 8, !tbaa !183
  %5720 = or i32 %5719, 65536
  store i32 %5720, ptr %5718, align 8, !tbaa !183
  %5721 = getelementptr inbounds %struct.Object, ptr %5717, i64 0, i32 74
  store float 0x3FAEB851E0000000, ptr %5721, align 8, !tbaa !943
  %5722 = load ptr, ptr %5717, align 8, !tbaa !34
  %5723 = icmp eq ptr %5722, null
  br i1 %5723, label %5724, label %5716, !llvm.loop !944

5724:                                             ; preds = %5716, %5712, %5708, %5706
  br i1 %5705, label %5731, label %5725

5725:                                             ; preds = %5724
  %5726 = icmp eq i16 %5678, 247
  br i1 %5726, label %5727, label %5746

5727:                                             ; preds = %5725
  %5728 = getelementptr inbounds %struct.Main, ptr %2, i64 0, i32 4
  %5729 = load i16, ptr %5728, align 2, !tbaa !634
  %5730 = icmp slt i16 %5729, 3
  br i1 %5730, label %5731, label %5746

5731:                                             ; preds = %5727, %5724
  %5732 = getelementptr inbounds %struct.Main, ptr %2, i64 0, i32 13
  %5733 = load ptr, ptr %5732, align 8, !tbaa !34
  %5734 = icmp eq ptr %5733, null
  br i1 %5734, label %5746, label %5735

5735:                                             ; preds = %5731, %5743
  %5736 = phi ptr [ %5744, %5743 ], [ %5733, %5731 ]
  %5737 = getelementptr inbounds %struct.Object, ptr %5736, i64 0, i32 99
  %5738 = load i32, ptr %5737, align 8, !tbaa !183
  %5739 = and i32 %5738, 4
  %5740 = icmp eq i32 %5739, 0
  br i1 %5740, label %5741, label %5743

5741:                                             ; preds = %5735
  %5742 = and i32 %5738, -136710
  store i32 %5742, ptr %5737, align 8, !tbaa !183
  br label %5743

5743:                                             ; preds = %5735, %5741
  %5744 = load ptr, ptr %5736, align 8, !tbaa !34
  %5745 = icmp eq ptr %5744, null
  br i1 %5745, label %5746, label %5735, !llvm.loop !945

5746:                                             ; preds = %5743, %5731, %5727, %5725
  br i1 %5705, label %5753, label %5747

5747:                                             ; preds = %5746
  %5748 = icmp eq i16 %5678, 247
  br i1 %5748, label %5749, label %5763

5749:                                             ; preds = %5747
  %5750 = getelementptr inbounds %struct.Main, ptr %2, i64 0, i32 4
  %5751 = load i16, ptr %5750, align 2, !tbaa !634
  %5752 = icmp slt i16 %5751, 5
  br i1 %5752, label %5753, label %5763

5753:                                             ; preds = %5749, %5746
  %5754 = getelementptr inbounds %struct.Main, ptr %2, i64 0, i32 21
  %5755 = load ptr, ptr %5754, align 8, !tbaa !34
  %5756 = icmp eq ptr %5755, null
  br i1 %5756, label %5763, label %5757

5757:                                             ; preds = %5753, %5757
  %5758 = phi ptr [ %5761, %5757 ], [ %5755, %5753 ]
  %5759 = getelementptr inbounds %struct.Lamp, ptr %5758, i64 0, i32 52
  store i16 1, ptr %5759, align 2, !tbaa !946
  %5760 = getelementptr inbounds %struct.Lamp, ptr %5758, i64 0, i32 63
  store float 1.000000e+00, ptr %5760, align 8, !tbaa !947
  %5761 = load ptr, ptr %5758, align 8, !tbaa !34
  %5762 = icmp eq ptr %5761, null
  br i1 %5762, label %5763, label %5757, !llvm.loop !948

5763:                                             ; preds = %5757, %5753, %5749, %5747
  br i1 %5705, label %5770, label %5764

5764:                                             ; preds = %5763
  %5765 = icmp eq i16 %5678, 247
  br i1 %5765, label %5766, label %5812

5766:                                             ; preds = %5764
  %5767 = getelementptr inbounds %struct.Main, ptr %2, i64 0, i32 4
  %5768 = load i16, ptr %5767, align 2, !tbaa !634
  %5769 = icmp slt i16 %5768, 6
  br i1 %5769, label %5770, label %5812

5770:                                             ; preds = %5766, %5763
  %5771 = getelementptr inbounds %struct.Main, ptr %2, i64 0, i32 15
  %5772 = load ptr, ptr %5771, align 8, !tbaa !34
  %5773 = icmp eq ptr %5772, null
  br i1 %5773, label %5812, label %5777

5774:                                             ; preds = %5809, %5777
  %5775 = load ptr, ptr %5778, align 8, !tbaa !34
  %5776 = icmp eq ptr %5775, null
  br i1 %5776, label %5812, label %5777, !llvm.loop !949

5777:                                             ; preds = %5770, %5774
  %5778 = phi ptr [ %5775, %5774 ], [ %5772, %5770 ]
  %5779 = getelementptr inbounds %struct.Curve, ptr %5778, i64 0, i32 3
  %5780 = load ptr, ptr %5779, align 8, !tbaa !34
  %5781 = icmp eq ptr %5780, null
  br i1 %5781, label %5774, label %5782

5782:                                             ; preds = %5777, %5809
  %5783 = phi ptr [ %5810, %5809 ], [ %5780, %5777 ]
  %5784 = getelementptr inbounds %struct.Nurb, ptr %5783, i64 0, i32 20
  store i16 3, ptr %5784, align 2, !tbaa !950
  %5785 = getelementptr inbounds %struct.Nurb, ptr %5783, i64 0, i32 7
  %5786 = load i32, ptr %5785, align 4, !tbaa !585
  %5787 = icmp sgt i32 %5786, 1
  br i1 %5787, label %5788, label %5809

5788:                                             ; preds = %5782
  %5789 = getelementptr inbounds %struct.Nurb, ptr %5783, i64 0, i32 9
  %5790 = load i16, ptr %5789, align 4, !tbaa !951
  %5791 = sitofp i16 %5790 to float
  %5792 = getelementptr inbounds %struct.Nurb, ptr %5783, i64 0, i32 6
  %5793 = load i32, ptr %5792, align 8, !tbaa !580
  %5794 = sitofp i32 %5793 to float
  %5795 = fdiv float %5791, %5794
  %5796 = fadd float %5795, 5.000000e-01
  %5797 = fptosi float %5796 to i32
  %5798 = call i32 @llvm.smax.i32(i32 %5797, i32 1)
  %5799 = trunc i32 %5798 to i16
  store i16 %5799, ptr %5789, align 4, !tbaa !951
  %5800 = getelementptr inbounds %struct.Nurb, ptr %5783, i64 0, i32 10
  %5801 = load i16, ptr %5800, align 2, !tbaa !952
  %5802 = sitofp i16 %5801 to float
  %5803 = sitofp i32 %5786 to float
  %5804 = fdiv float %5802, %5803
  %5805 = fadd float %5804, 5.000000e-01
  %5806 = fptosi float %5805 to i32
  %5807 = call i32 @llvm.smax.i32(i32 %5806, i32 1)
  %5808 = trunc i32 %5807 to i16
  store i16 %5808, ptr %5800, align 2, !tbaa !952
  br label %5809

5809:                                             ; preds = %5788, %5782
  %5810 = load ptr, ptr %5783, align 8, !tbaa !34
  %5811 = icmp eq ptr %5810, null
  br i1 %5811, label %5774, label %5782, !llvm.loop !953

5812:                                             ; preds = %5774, %5770, %5766, %5764
  br i1 %5705, label %5819, label %5813

5813:                                             ; preds = %5812
  %5814 = icmp eq i16 %5678, 247
  br i1 %5814, label %5815, label %5848

5815:                                             ; preds = %5813
  %5816 = getelementptr inbounds %struct.Main, ptr %2, i64 0, i32 4
  %5817 = load i16, ptr %5816, align 2, !tbaa !634
  %5818 = icmp slt i16 %5817, 7
  br i1 %5818, label %5819, label %5848

5819:                                             ; preds = %5815, %5812
  %5820 = getelementptr inbounds %struct.Main, ptr %2, i64 0, i32 13
  %5821 = load ptr, ptr %5820, align 8, !tbaa !34
  %5822 = icmp eq ptr %5821, null
  br i1 %5822, label %5848, label %5826

5823:                                             ; preds = %5845, %5826
  %5824 = load ptr, ptr %5827, align 8, !tbaa !34
  %5825 = icmp eq ptr %5824, null
  br i1 %5825, label %5848, label %5826, !llvm.loop !954

5826:                                             ; preds = %5819, %5823
  %5827 = phi ptr [ %5824, %5823 ], [ %5821, %5819 ]
  %5828 = getelementptr inbounds %struct.Object, ptr %5827, i64 0, i32 94
  %5829 = load ptr, ptr %5828, align 8, !tbaa !34
  %5830 = icmp eq ptr %5829, null
  br i1 %5830, label %5823, label %5831

5831:                                             ; preds = %5826, %5845
  %5832 = phi ptr [ %5846, %5845 ], [ %5829, %5826 ]
  %5833 = getelementptr inbounds %struct.bActuator, ptr %5832, i64 0, i32 3
  %5834 = load i16, ptr %5833, align 8, !tbaa !187
  %5835 = icmp eq i16 %5834, 9
  br i1 %5835, label %5836, label %5845

5836:                                             ; preds = %5831
  %5837 = getelementptr inbounds %struct.bActuator, ptr %5832, i64 0, i32 8
  %5838 = load ptr, ptr %5837, align 8, !tbaa !189
  %5839 = load i16, ptr %5838, align 4, !tbaa !955
  %5840 = icmp eq i16 %5839, 1
  br i1 %5840, label %5841, label %5845

5841:                                             ; preds = %5836
  %5842 = getelementptr inbounds %struct.bConstraintActuator, ptr %5838, i64 0, i32 2
  %5843 = load i16, ptr %5842, align 4, !tbaa !957
  %5844 = or i16 %5843, 1024
  store i16 %5844, ptr %5842, align 4, !tbaa !957
  br label %5845

5845:                                             ; preds = %5836, %5841, %5831
  %5846 = load ptr, ptr %5832, align 8, !tbaa !34
  %5847 = icmp eq ptr %5846, null
  br i1 %5847, label %5823, label %5831, !llvm.loop !958

5848:                                             ; preds = %5823, %5819, %5815, %5813
  br i1 %5705, label %5855, label %5849

5849:                                             ; preds = %5848
  %5850 = icmp eq i16 %5678, 247
  br i1 %5850, label %5851, label %5864

5851:                                             ; preds = %5849
  %5852 = getelementptr inbounds %struct.Main, ptr %2, i64 0, i32 4
  %5853 = load i16, ptr %5852, align 2, !tbaa !634
  %5854 = icmp slt i16 %5853, 9
  br i1 %5854, label %5855, label %5864

5855:                                             ; preds = %5851, %5848
  %5856 = getelementptr inbounds %struct.Main, ptr %2, i64 0, i32 21
  %5857 = load ptr, ptr %5856, align 8, !tbaa !34
  %5858 = icmp eq ptr %5857, null
  br i1 %5858, label %5864, label %5859

5859:                                             ; preds = %5855, %5859
  %5860 = phi ptr [ %5862, %5859 ], [ %5857, %5855 ]
  %5861 = getelementptr inbounds %struct.Lamp, ptr %5860, i64 0, i32 64
  store float 1.000000e+00, ptr %5861, align 4, !tbaa !959
  %5862 = load ptr, ptr %5860, align 8, !tbaa !34
  %5863 = icmp eq ptr %5862, null
  br i1 %5863, label %5864, label %5859, !llvm.loop !960

5864:                                             ; preds = %5859, %5855, %5851, %5849
  br i1 %5705, label %5871, label %5865

5865:                                             ; preds = %5864
  %5866 = icmp eq i16 %5678, 247
  br i1 %5866, label %5867, label %5899

5867:                                             ; preds = %5865
  %5868 = getelementptr inbounds %struct.Main, ptr %2, i64 0, i32 4
  %5869 = load i16, ptr %5868, align 2, !tbaa !634
  %5870 = icmp slt i16 %5869, 10
  br i1 %5870, label %5871, label %5899

5871:                                             ; preds = %5867, %5864
  %5872 = getelementptr inbounds %struct.Main, ptr %2, i64 0, i32 13
  %5873 = load ptr, ptr %5872, align 8, !tbaa !34
  %5874 = icmp eq ptr %5873, null
  br i1 %5874, label %5899, label %5878

5875:                                             ; preds = %5896, %5878
  %5876 = load ptr, ptr %5879, align 8, !tbaa !34
  %5877 = icmp eq ptr %5876, null
  br i1 %5877, label %5899, label %5878, !llvm.loop !961

5878:                                             ; preds = %5871, %5875
  %5879 = phi ptr [ %5876, %5875 ], [ %5873, %5871 ]
  %5880 = getelementptr inbounds %struct.Object, ptr %5879, i64 0, i32 94
  %5881 = load ptr, ptr %5880, align 8, !tbaa !34
  %5882 = icmp eq ptr %5881, null
  br i1 %5882, label %5875, label %5883

5883:                                             ; preds = %5878, %5896
  %5884 = phi ptr [ %5897, %5896 ], [ %5881, %5878 ]
  %5885 = getelementptr inbounds %struct.bActuator, ptr %5884, i64 0, i32 3
  %5886 = load i16, ptr %5885, align 8, !tbaa !187
  %5887 = icmp eq i16 %5886, 14
  br i1 %5887, label %5888, label %5896

5888:                                             ; preds = %5883
  %5889 = getelementptr inbounds %struct.bActuator, ptr %5884, i64 0, i32 8
  %5890 = load ptr, ptr %5889, align 8, !tbaa !189
  %5891 = call i64 @BLI_strnlen(ptr noundef %5890, i64 noundef 3) #11
  %5892 = icmp ugt i64 %5891, 2
  br i1 %5892, label %5893, label %5895

5893:                                             ; preds = %5888
  %5894 = getelementptr inbounds i8, ptr %5890, i64 2
  call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(62) %5890, ptr noundef nonnull align 1 dereferenceable(62) %5894, i64 62, i1 false)
  br label %5896

5895:                                             ; preds = %5888
  store i8 0, ptr %5890, align 8, !tbaa !149
  br label %5896

5896:                                             ; preds = %5893, %5895, %5883
  %5897 = load ptr, ptr %5884, align 8, !tbaa !34
  %5898 = icmp eq ptr %5897, null
  br i1 %5898, label %5875, label %5883, !llvm.loop !962

5899:                                             ; preds = %5875, %5871, %5867, %5865
  %5900 = load i16, ptr %7, align 8, !tbaa !60
  %5901 = icmp slt i16 %5900, 248
  br i1 %5901, label %5902, label %5926

5902:                                             ; preds = %5899
  %5903 = getelementptr inbounds %struct.Main, ptr %2, i64 0, i32 21
  %5904 = load ptr, ptr %5903, align 8, !tbaa !34
  %5905 = icmp eq ptr %5904, null
  br i1 %5905, label %5925, label %5906

5906:                                             ; preds = %5902, %5922
  %5907 = phi ptr [ %5923, %5922 ], [ %5904, %5902 ]
  %5908 = getelementptr inbounds %struct.Lamp, ptr %5907, i64 0, i32 59
  %5909 = load float, ptr %5908, align 8, !tbaa !963
  %5910 = fcmp oeq float %5909, 0.000000e+00
  br i1 %5910, label %5911, label %5922

5911:                                             ; preds = %5906
  %5912 = getelementptr inbounds %struct.Lamp, ptr %5907, i64 0, i32 51
  store i16 0, ptr %5912, align 4, !tbaa !964
  %5913 = getelementptr inbounds %struct.Lamp, ptr %5907, i64 0, i32 53
  store float 1.000000e+00, ptr %5913, align 8, !tbaa !965
  %5914 = getelementptr inbounds %struct.Lamp, ptr %5907, i64 0, i32 54
  store float 1.000000e+00, ptr %5914, align 4, !tbaa !966
  %5915 = getelementptr inbounds %struct.Lamp, ptr %5907, i64 0, i32 55
  store float 1.000000e+00, ptr %5915, align 8, !tbaa !967
  %5916 = getelementptr inbounds %struct.Lamp, ptr %5907, i64 0, i32 56
  store float 1.000000e+00, ptr %5916, align 4, !tbaa !968
  %5917 = getelementptr inbounds %struct.Lamp, ptr %5907, i64 0, i32 57
  store float 1.000000e+00, ptr %5917, align 8, !tbaa !969
  store float 2.000000e+00, ptr %5908, align 8, !tbaa !963
  %5918 = getelementptr inbounds %struct.Lamp, ptr %5907, i64 0, i32 60
  store float 1.000000e+00, ptr %5918, align 4, !tbaa !970
  %5919 = getelementptr inbounds %struct.Lamp, ptr %5907, i64 0, i32 61
  store float 1.000000e+00, ptr %5919, align 8, !tbaa !971
  %5920 = getelementptr inbounds %struct.Lamp, ptr %5907, i64 0, i32 62
  store float 1.000000e+00, ptr %5920, align 4, !tbaa !972
  %5921 = getelementptr inbounds %struct.Lamp, ptr %5907, i64 0, i32 58
  store float 1.000000e+00, ptr %5921, align 4, !tbaa !973
  br label %5922

5922:                                             ; preds = %5906, %5911
  %5923 = load ptr, ptr %5907, align 8, !tbaa !34
  %5924 = icmp eq ptr %5923, null
  br i1 %5924, label %5925, label %5906, !llvm.loop !974

5925:                                             ; preds = %5922, %5902
  br i1 %5901, label %5932, label %5926

5926:                                             ; preds = %5899, %5925
  %5927 = icmp eq i16 %5900, 248
  br i1 %5927, label %5928, label %5965

5928:                                             ; preds = %5926
  %5929 = getelementptr inbounds %struct.Main, ptr %2, i64 0, i32 4
  %5930 = load i16, ptr %5929, align 2, !tbaa !634
  %5931 = icmp slt i16 %5930, 2
  br i1 %5931, label %5932, label %5965

5932:                                             ; preds = %5928, %5925
  %5933 = load ptr, ptr %4419, align 8, !tbaa !34
  %5934 = icmp eq ptr %5933, null
  br i1 %5934, label %5965, label %5935

5935:                                             ; preds = %5932, %5935
  %5936 = phi ptr [ %5963, %5935 ], [ %5933, %5932 ]
  %5937 = getelementptr inbounds %struct.Scene, ptr %5936, i64 0, i32 20
  %5938 = load ptr, ptr %5937, align 8, !tbaa !448
  %5939 = getelementptr inbounds %struct.ToolSettings, ptr %5938, i64 0, i32 17, i32 3
  store i16 2, ptr %5939, align 4, !tbaa !975
  %5940 = getelementptr inbounds %struct.ToolSettings, ptr %5938, i64 0, i32 17, i32 4
  store i16 80, ptr %5940, align 2, !tbaa !976
  %5941 = getelementptr inbounds %struct.ToolSettings, ptr %5938, i64 0, i32 25
  store i16 250, ptr %5941, align 2, !tbaa !977
  %5942 = getelementptr inbounds %struct.ToolSettings, ptr %5938, i64 0, i32 26
  store float 0x3FB99999A0000000, ptr %5942, align 8, !tbaa !978
  %5943 = getelementptr inbounds %struct.ToolSettings, ptr %5938, i64 0, i32 27
  store float 0x3FB99999A0000000, ptr %5943, align 4, !tbaa !979
  %5944 = getelementptr inbounds %struct.ToolSettings, ptr %5938, i64 0, i32 30
  store float 3.000000e+01, ptr %5944, align 8, !tbaa !980
  %5945 = getelementptr inbounds %struct.ToolSettings, ptr %5938, i64 0, i32 28
  store float 0x3FF4CCCCC0000000, ptr %5945, align 8, !tbaa !981
  %5946 = getelementptr inbounds %struct.ToolSettings, ptr %5938, i64 0, i32 29
  store float 1.500000e+00, ptr %5946, align 4, !tbaa !982
  %5947 = getelementptr inbounds %struct.ToolSettings, ptr %5938, i64 0, i32 31
  store float 0x3FEF5C2900000000, ptr %5947, align 4, !tbaa !983
  %5948 = getelementptr inbounds %struct.ToolSettings, ptr %5938, i64 0, i32 32
  store float 0x3FB99999A0000000, ptr %5948, align 8, !tbaa !984
  %5949 = getelementptr inbounds %struct.ToolSettings, ptr %5938, i64 0, i32 37
  store i8 0, ptr %5949, align 2, !tbaa !985
  %5950 = getelementptr inbounds %struct.ToolSettings, ptr %5938, i64 0, i32 38
  store i8 3, ptr %5950, align 1, !tbaa !986
  %5951 = getelementptr inbounds %struct.ToolSettings, ptr %5938, i64 0, i32 36
  store i16 579, ptr %5951, align 8, !tbaa !987
  %5952 = getelementptr inbounds %struct.ToolSettings, ptr %5938, i64 0, i32 39
  store i8 2, ptr %5952, align 4, !tbaa !149
  %5953 = load ptr, ptr %5937, align 8, !tbaa !448
  %5954 = getelementptr inbounds %struct.ToolSettings, ptr %5953, i64 0, i32 39, i64 1
  store i8 0, ptr %5954, align 1, !tbaa !149
  %5955 = load ptr, ptr %5937, align 8, !tbaa !448
  %5956 = getelementptr inbounds %struct.ToolSettings, ptr %5955, i64 0, i32 39, i64 2
  store i8 1, ptr %5956, align 2, !tbaa !149
  %5957 = load ptr, ptr %5937, align 8, !tbaa !448
  %5958 = getelementptr inbounds %struct.ToolSettings, ptr %5957, i64 0, i32 33
  store float 1.000000e+00, ptr %5958, align 4, !tbaa !988
  %5959 = getelementptr inbounds %struct.ToolSettings, ptr %5957, i64 0, i32 34
  store float 1.000000e+00, ptr %5959, align 8, !tbaa !989
  %5960 = getelementptr inbounds %struct.ToolSettings, ptr %5957, i64 0, i32 35
  store float 1.000000e+00, ptr %5960, align 4, !tbaa !990
  %5961 = getelementptr inbounds %struct.ToolSettings, ptr %5957, i64 0, i32 42
  store i8 0, ptr %5961, align 8, !tbaa !991
  %5962 = getelementptr inbounds %struct.ToolSettings, ptr %5957, i64 0, i32 46
  store i8 1, ptr %5962, align 4, !tbaa !992
  %5963 = load ptr, ptr %5936, align 8, !tbaa !34
  %5964 = icmp eq ptr %5963, null
  br i1 %5964, label %5965, label %5935, !llvm.loop !993

5965:                                             ; preds = %5935, %5932, %5928, %5926
  %5966 = load i16, ptr %7, align 8, !tbaa !60
  %5967 = icmp slt i16 %5966, 248
  br i1 %5967, label %5974, label %5968

5968:                                             ; preds = %5965
  %5969 = icmp eq i16 %5966, 248
  br i1 %5969, label %5970, label %6008

5970:                                             ; preds = %5968
  %5971 = getelementptr inbounds %struct.Main, ptr %2, i64 0, i32 4
  %5972 = load i16, ptr %5971, align 2, !tbaa !634
  %5973 = icmp slt i16 %5972, 3
  br i1 %5973, label %5974, label %6008

5974:                                             ; preds = %5970, %5965
  %5975 = getelementptr inbounds %struct.Main, ptr %2, i64 0, i32 26
  %5976 = load ptr, ptr %5975, align 8, !tbaa !34
  %5977 = icmp eq ptr %5976, null
  br i1 %5977, label %6008, label %5981

5978:                                             ; preds = %5986, %5981
  %5979 = load ptr, ptr %5982, align 8, !tbaa !34
  %5980 = icmp eq ptr %5979, null
  br i1 %5980, label %6008, label %5981, !llvm.loop !994

5981:                                             ; preds = %5974, %5978
  %5982 = phi ptr [ %5979, %5978 ], [ %5976, %5974 ]
  %5983 = getelementptr inbounds %struct.bScreen, ptr %5982, i64 0, i32 3
  %5984 = load ptr, ptr %5983, align 8, !tbaa !34
  %5985 = icmp eq ptr %5984, null
  br i1 %5985, label %5978, label %5989

5986:                                             ; preds = %6005, %5989
  %5987 = load ptr, ptr %5990, align 8, !tbaa !34
  %5988 = icmp eq ptr %5987, null
  br i1 %5988, label %5978, label %5989, !llvm.loop !995

5989:                                             ; preds = %5981, %5986
  %5990 = phi ptr [ %5987, %5986 ], [ %5984, %5981 ]
  %5991 = getelementptr inbounds %struct.ScrArea, ptr %5990, i64 0, i32 19
  %5992 = load ptr, ptr %5991, align 8, !tbaa !34
  %5993 = icmp eq ptr %5992, null
  br i1 %5993, label %5986, label %5994

5994:                                             ; preds = %5989, %6005
  %5995 = phi ptr [ %6006, %6005 ], [ %5992, %5989 ]
  %5996 = getelementptr inbounds %struct.SpaceLink, ptr %5995, i64 0, i32 3
  %5997 = load i32, ptr %5996, align 8, !tbaa !127
  switch i32 %5997, label %6005 [
    i32 12, label %5998
    i32 2, label %6001
    i32 13, label %6003
  ]

5998:                                             ; preds = %5994
  %5999 = getelementptr inbounds %struct.SpaceAction, ptr %5995, i64 0, i32 9
  store i8 3, ptr %5999, align 8, !tbaa !996
  %6000 = getelementptr inbounds %struct.SpaceAction, ptr %5995, i64 0, i32 10
  store i8 2, ptr %6000, align 1, !tbaa !997
  br label %6005

6001:                                             ; preds = %5994
  %6002 = getelementptr inbounds %struct.SpaceIpo, ptr %5995, i64 0, i32 10
  store i16 2, ptr %6002, align 2, !tbaa !998
  br label %6005

6003:                                             ; preds = %5994
  %6004 = getelementptr inbounds %struct.SpaceNla, ptr %5995, i64 0, i32 6
  store i16 2, ptr %6004, align 8, !tbaa !1000
  br label %6005

6005:                                             ; preds = %5998, %6001, %6003, %5994
  %6006 = load ptr, ptr %5995, align 8, !tbaa !34
  %6007 = icmp eq ptr %6006, null
  br i1 %6007, label %5986, label %5994, !llvm.loop !1001

6008:                                             ; preds = %5978, %5974, %5970, %5968
  br i1 %5967, label %6015, label %6009

6009:                                             ; preds = %6008
  %6010 = icmp eq i16 %5966, 248
  br i1 %6010, label %6011, label %6029

6011:                                             ; preds = %6009
  %6012 = getelementptr inbounds %struct.Main, ptr %2, i64 0, i32 4
  %6013 = load i16, ptr %6012, align 2, !tbaa !634
  %6014 = icmp slt i16 %6013, 3
  br i1 %6014, label %6015, label %6029

6015:                                             ; preds = %6011, %6008
  %6016 = getelementptr inbounds %struct.Main, ptr %2, i64 0, i32 13
  %6017 = load ptr, ptr %6016, align 8, !tbaa !34
  %6018 = icmp eq ptr %6017, null
  br i1 %6018, label %6029, label %6019

6019:                                             ; preds = %6015, %6019
  %6020 = phi ptr [ %6027, %6019 ], [ %6017, %6015 ]
  %6021 = getelementptr inbounds %struct.Object, ptr %6020, i64 0, i32 70
  %6022 = load float, ptr %6021, align 8, !tbaa !172
  %6023 = fmul float %6022, 0x3FE451EB80000000
  store float %6023, ptr %6021, align 8, !tbaa !172
  %6024 = getelementptr inbounds %struct.Object, ptr %6020, i64 0, i32 73
  %6025 = load float, ptr %6024, align 4, !tbaa !176
  %6026 = call float @llvm.fmuladd.f32(float %6025, float 0x3FE99999A0000000, float 0x3FB99999A0000000)
  store float %6026, ptr %6024, align 4, !tbaa !176
  %6027 = load ptr, ptr %6020, align 8, !tbaa !34
  %6028 = icmp eq ptr %6027, null
  br i1 %6028, label %6029, label %6019, !llvm.loop !1002

6029:                                             ; preds = %6019, %6015, %6011, %6009
  br i1 %5967, label %6036, label %6030

6030:                                             ; preds = %6029
  %6031 = icmp eq i16 %5966, 248
  br i1 %6031, label %6032, label %6060

6032:                                             ; preds = %6030
  %6033 = getelementptr inbounds %struct.Main, ptr %2, i64 0, i32 4
  %6034 = load i16, ptr %6033, align 2, !tbaa !634
  %6035 = icmp slt i16 %6034, 4
  br i1 %6035, label %6036, label %6060

6036:                                             ; preds = %6032, %6029
  %6037 = load ptr, ptr %4419, align 8, !tbaa !34
  %6038 = icmp eq ptr %6037, null
  br i1 %6038, label %6048, label %6039

6039:                                             ; preds = %6036, %6039
  %6040 = phi ptr [ %6046, %6039 ], [ %6037, %6036 ]
  %6041 = getelementptr inbounds %struct.Scene, ptr %6040, i64 0, i32 22, i32 108
  store i16 180, ptr %6041, align 4, !tbaa !1003
  %6042 = getelementptr inbounds %struct.Scene, ptr %6040, i64 0, i32 22, i32 107
  store i16 1, ptr %6042, align 2, !tbaa !1004
  %6043 = getelementptr inbounds %struct.Scene, ptr %6040, i64 0, i32 22, i32 106
  store i16 4, ptr %6043, align 8, !tbaa !1005
  %6044 = getelementptr inbounds %struct.Scene, ptr %6040, i64 0, i32 22, i32 110
  store float 1.000000e+00, ptr %6044, align 8, !tbaa !1006
  %6045 = getelementptr inbounds %struct.Scene, ptr %6040, i64 0, i32 22, i32 109
  store i16 0, ptr %6045, align 2, !tbaa !1007
  %6046 = load ptr, ptr %6040, align 8, !tbaa !34
  %6047 = icmp eq ptr %6046, null
  br i1 %6047, label %6048, label %6039, !llvm.loop !1008

6048:                                             ; preds = %6039, %6036
  %6049 = getelementptr inbounds %struct.Main, ptr %2, i64 0, i32 25
  %6050 = load ptr, ptr %6049, align 8, !tbaa !34
  %6051 = icmp eq ptr %6050, null
  br i1 %6051, label %6060, label %6052

6052:                                             ; preds = %6048, %6052
  %6053 = phi ptr [ %6058, %6052 ], [ %6050, %6048 ]
  %6054 = getelementptr inbounds %struct.World, ptr %6053, i64 0, i32 23
  %6055 = load i16, ptr %6054, align 2, !tbaa !715
  %6056 = or i16 %6055, 32
  store i16 %6056, ptr %6054, align 2, !tbaa !715
  %6057 = getelementptr inbounds %struct.World, ptr %6053, i64 0, i32 24
  store i16 128, ptr %6057, align 4, !tbaa !1009
  %6058 = load ptr, ptr %6053, align 8, !tbaa !34
  %6059 = icmp eq ptr %6058, null
  br i1 %6059, label %6060, label %6052, !llvm.loop !1010

6060:                                             ; preds = %6052, %6048, %6032, %6030
  br i1 %5967, label %6067, label %6061

6061:                                             ; preds = %6060
  %6062 = icmp eq i16 %5966, 248
  br i1 %6062, label %6063, label %6122

6063:                                             ; preds = %6061
  %6064 = getelementptr inbounds %struct.Main, ptr %2, i64 0, i32 4
  %6065 = load i16, ptr %6064, align 2, !tbaa !634
  %6066 = icmp slt i16 %6065, 5
  br i1 %6066, label %6067, label %6122

6067:                                             ; preds = %6063, %6060
  %6068 = getelementptr inbounds %struct.Main, ptr %2, i64 0, i32 13
  %6069 = load ptr, ptr %6068, align 8, !tbaa !34
  %6070 = icmp eq ptr %6069, null
  br i1 %6070, label %6110, label %6071

6071:                                             ; preds = %6067, %6107
  %6072 = phi ptr [ %6108, %6107 ], [ %6069, %6067 ]
  %6073 = getelementptr inbounds %struct.Object, ptr %6072, i64 0, i32 9
  %6074 = load ptr, ptr %6073, align 8, !tbaa !425
  %6075 = icmp eq ptr %6074, null
  br i1 %6075, label %6107, label %6076

6076:                                             ; preds = %6071
  %6077 = call ptr @blo_do_versions_newlibadr(ptr noundef %0, ptr noundef %1, ptr noundef nonnull %6074) #11
  %6078 = icmp eq ptr %6077, null
  %6079 = icmp eq ptr %6077, %6072
  %6080 = or i1 %6078, %6079
  br i1 %6080, label %6095, label %6081

6081:                                             ; preds = %6076
  %6082 = getelementptr inbounds %struct.Object, ptr %6077, i64 0, i32 9
  %6083 = load ptr, ptr %6082, align 8, !tbaa !425
  %6084 = icmp eq ptr %6083, null
  br i1 %6084, label %6095, label %6089

6085:                                             ; preds = %6089
  %6086 = getelementptr inbounds %struct.Object, ptr %6091, i64 0, i32 9
  %6087 = load ptr, ptr %6086, align 8, !tbaa !425
  %6088 = icmp eq ptr %6087, null
  br i1 %6088, label %6095, label %6089, !llvm.loop !1011

6089:                                             ; preds = %6081, %6085
  %6090 = phi ptr [ %6087, %6085 ], [ %6083, %6081 ]
  %6091 = call ptr @blo_do_versions_newlibadr(ptr noundef %0, ptr noundef %1, ptr noundef nonnull %6090) #11
  %6092 = icmp eq ptr %6091, null
  %6093 = icmp eq ptr %6091, %6072
  %6094 = or i1 %6092, %6093
  br i1 %6094, label %6095, label %6085, !llvm.loop !1011

6095:                                             ; preds = %6089, %6085, %6081, %6076
  %6096 = phi ptr [ %6077, %6076 ], [ %6077, %6081 ], [ %6091, %6085 ], [ %6091, %6089 ]
  %6097 = phi i1 [ %6078, %6076 ], [ %6078, %6081 ], [ %6092, %6085 ], [ %6092, %6089 ]
  br i1 %6097, label %6107, label %6098

6098:                                             ; preds = %6095
  %6099 = getelementptr inbounds %struct.Object, ptr %6096, i64 0, i32 99
  %6100 = load i32, ptr %6099, align 8, !tbaa !183
  %6101 = and i32 %6100, 2
  %6102 = icmp eq i32 %6101, 0
  br i1 %6102, label %6107, label %6103

6103:                                             ; preds = %6098
  %6104 = getelementptr inbounds %struct.Object, ptr %6072, i64 0, i32 99
  %6105 = load i32, ptr %6104, align 8, !tbaa !183
  %6106 = or i32 %6105, 2
  store i32 %6106, ptr %6104, align 8, !tbaa !183
  br label %6107

6107:                                             ; preds = %6095, %6103, %6098, %6071
  %6108 = load ptr, ptr %6072, align 8, !tbaa !34
  %6109 = icmp eq ptr %6108, null
  br i1 %6109, label %6110, label %6071, !llvm.loop !1012

6110:                                             ; preds = %6107, %6067
  %6111 = getelementptr inbounds %struct.Main, ptr %2, i64 0, i32 25
  %6112 = load ptr, ptr %6111, align 8, !tbaa !34
  %6113 = icmp eq ptr %6112, null
  br i1 %6113, label %6122, label %6114

6114:                                             ; preds = %6110, %6114
  %6115 = phi ptr [ %6120, %6114 ], [ %6112, %6110 ]
  %6116 = getelementptr inbounds %struct.World, ptr %6115, i64 0, i32 26
  store i16 60, ptr %6116, align 8, !tbaa !1013
  %6117 = getelementptr inbounds %struct.World, ptr %6115, i64 0, i32 27
  store i16 5, ptr %6117, align 2, !tbaa !1014
  %6118 = getelementptr inbounds %struct.World, ptr %6115, i64 0, i32 28
  store i16 1, ptr %6118, align 4, !tbaa !1015
  %6119 = getelementptr inbounds %struct.World, ptr %6115, i64 0, i32 29
  store i16 5, ptr %6119, align 2, !tbaa !1016
  %6120 = load ptr, ptr %6115, align 8, !tbaa !34
  %6121 = icmp eq ptr %6120, null
  br i1 %6121, label %6122, label %6114, !llvm.loop !1017

6122:                                             ; preds = %6114, %6110, %6063, %6061
  %6123 = load i16, ptr %7, align 8, !tbaa !60
  %6124 = icmp slt i16 %6123, 249
  br i1 %6124, label %6125, label %6149

6125:                                             ; preds = %6122
  %6126 = getelementptr inbounds %struct.Main, ptr %2, i64 0, i32 4
  %6127 = load i16, ptr %6126, align 2, !tbaa !634
  %6128 = icmp slt i16 %6127, 1
  br i1 %6128, label %6129, label %6149

6129:                                             ; preds = %6125
  %6130 = getelementptr inbounds %struct.Main, ptr %2, i64 0, i32 13
  %6131 = load ptr, ptr %6130, align 8, !tbaa !34
  %6132 = icmp eq ptr %6131, null
  br i1 %6132, label %6149, label %6133

6133:                                             ; preds = %6129, %6146
  %6134 = phi ptr [ %6147, %6146 ], [ %6131, %6129 ]
  %6135 = getelementptr inbounds %struct.Object, ptr %6134, i64 0, i32 110
  %6136 = load ptr, ptr %6135, align 8, !tbaa !938
  %6137 = icmp eq ptr %6136, null
  br i1 %6137, label %6146, label %6138

6138:                                             ; preds = %6133
  %6139 = call double @PIL_check_seconds_timer() #11
  %6140 = call double @llvm.ceil.f64(double %6139)
  %6141 = fptoui double %6140 to i32
  %6142 = add i32 %6141, 1
  %6143 = and i32 %6142, 127
  %6144 = load ptr, ptr %6135, align 8, !tbaa !938
  %6145 = getelementptr inbounds %struct.PartDeflect, ptr %6144, i64 0, i32 39
  store i32 %6143, ptr %6145, align 4, !tbaa !1018
  br label %6146

6146:                                             ; preds = %6133, %6138
  %6147 = load ptr, ptr %6134, align 8, !tbaa !34
  %6148 = icmp eq ptr %6147, null
  br i1 %6148, label %6149, label %6133, !llvm.loop !1019

6149:                                             ; preds = %6146, %6129, %6125, %6122
  %6150 = load i16, ptr %7, align 8, !tbaa !60
  %6151 = icmp slt i16 %6150, 249
  br i1 %6151, label %6152, label %6188

6152:                                             ; preds = %6149
  %6153 = getelementptr inbounds %struct.Main, ptr %2, i64 0, i32 4
  %6154 = load i16, ptr %6153, align 2, !tbaa !634
  %6155 = icmp slt i16 %6154, 2
  br i1 %6155, label %6156, label %6188

6156:                                             ; preds = %6152
  %6157 = load ptr, ptr %4419, align 8, !tbaa !34
  %6158 = icmp eq ptr %6157, null
  br i1 %6158, label %6188, label %6159

6159:                                             ; preds = %6156
  %6160 = getelementptr inbounds %struct.SeqIterator, ptr %6, i64 0, i32 4
  %6161 = getelementptr inbounds %struct.SeqIterator, ptr %6, i64 0, i32 3
  br label %6162

6162:                                             ; preds = %6159, %6185
  %6163 = phi ptr [ %6157, %6159 ], [ %6186, %6185 ]
  %6164 = getelementptr inbounds %struct.Scene, ptr %6163, i64 0, i32 19
  %6165 = load ptr, ptr %6164, align 8, !tbaa !391
  %6166 = icmp eq ptr %6165, null
  br i1 %6166, label %6185, label %6167

6167:                                             ; preds = %6162
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %6) #11
  call void @BKE_sequence_iterator_begin(ptr noundef nonnull %6165, ptr noundef nonnull %6, i8 noundef zeroext 1) #11
  %6168 = load i32, ptr %6160, align 8, !tbaa !392
  %6169 = icmp eq i32 %6168, 0
  br i1 %6169, label %6184, label %6170

6170:                                             ; preds = %6167, %6181
  %6171 = load ptr, ptr %6161, align 8, !tbaa !394
  %6172 = getelementptr inbounds %struct.Sequence, ptr %6171, i64 0, i32 24
  %6173 = load ptr, ptr %6172, align 8, !tbaa !1020
  %6174 = icmp eq ptr %6173, null
  br i1 %6174, label %6181, label %6175

6175:                                             ; preds = %6170
  %6176 = getelementptr inbounds %struct.Strip, ptr %6173, i64 0, i32 8
  %6177 = load ptr, ptr %6176, align 8, !tbaa !1021
  %6178 = icmp eq ptr %6177, null
  br i1 %6178, label %6181, label %6179

6179:                                             ; preds = %6175
  %6180 = getelementptr inbounds %struct.StripProxy, ptr %6177, i64 0, i32 4
  store i16 90, ptr %6180, align 2, !tbaa !1023
  br label %6181

6181:                                             ; preds = %6170, %6175, %6179
  call void @BKE_sequence_iterator_next(ptr noundef nonnull %6) #11
  %6182 = load i32, ptr %6160, align 8, !tbaa !392
  %6183 = icmp eq i32 %6182, 0
  br i1 %6183, label %6184, label %6170, !llvm.loop !1025

6184:                                             ; preds = %6181, %6167
  call void @BKE_sequence_iterator_end(ptr noundef nonnull %6) #11
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %6) #11
  br label %6185

6185:                                             ; preds = %6184, %6162
  %6186 = load ptr, ptr %6163, align 8, !tbaa !34
  %6187 = icmp eq ptr %6186, null
  br i1 %6187, label %6188, label %6162, !llvm.loop !1026

6188:                                             ; preds = %6185, %6156, %6152, %6149
  ret void
}

declare ptr @BKE_bproperty_object_get(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fabs.f32(float) #4

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read)
declare i32 @strcmp(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #5

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read)
declare i64 @strlen(ptr nocapture noundef) local_unnamed_addr #5

declare void @BKE_sequence_iterator_begin(ptr noundef, ptr noundef, i8 noundef zeroext) local_unnamed_addr #3

declare void @BKE_sequence_iterator_next(ptr noundef) local_unnamed_addr #3

declare void @BKE_sequence_iterator_end(ptr noundef) local_unnamed_addr #3

declare ptr @defgroup_find_name(ptr noundef, ptr noundef) local_unnamed_addr #3

declare i32 @BLI_findindex(ptr noundef, ptr noundef) local_unnamed_addr #3

declare void @BKE_armature_where_is(ptr noundef) local_unnamed_addr #3

; Function Attrs: nofree nosync nounwind memory(readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @do_version_bone_head_tail_237(ptr nocapture noundef %0) unnamed_addr #6 {
  %2 = getelementptr inbounds %struct.Bone, ptr %0, i64 0, i32 11
  %3 = getelementptr inbounds %struct.Bone, ptr %0, i64 0, i32 13, i64 3
  %4 = load float, ptr %3, align 4, !tbaa !156
  store float %4, ptr %2, align 4, !tbaa !156
  %5 = getelementptr inbounds %struct.Bone, ptr %0, i64 0, i32 13, i64 3, i64 1
  %6 = load float, ptr %5, align 4, !tbaa !156
  %7 = getelementptr inbounds %struct.Bone, ptr %0, i64 0, i32 11, i64 1
  store float %6, ptr %7, align 4, !tbaa !156
  %8 = getelementptr inbounds %struct.Bone, ptr %0, i64 0, i32 13, i64 3, i64 2
  %9 = load float, ptr %8, align 4, !tbaa !156
  %10 = getelementptr inbounds %struct.Bone, ptr %0, i64 0, i32 11, i64 2
  store float %9, ptr %10, align 4, !tbaa !156
  %11 = getelementptr inbounds %struct.Bone, ptr %0, i64 0, i32 13, i64 1
  %12 = load float, ptr %11, align 4, !tbaa !156
  %13 = getelementptr inbounds %struct.Bone, ptr %0, i64 0, i32 13, i64 1, i64 1
  %14 = load float, ptr %13, align 4, !tbaa !156
  %15 = getelementptr inbounds %struct.Bone, ptr %0, i64 0, i32 13, i64 1, i64 2
  %16 = load float, ptr %15, align 4, !tbaa !156
  %17 = getelementptr inbounds %struct.Bone, ptr %0, i64 0, i32 18
  %18 = load float, ptr %17, align 4, !tbaa !1027
  %19 = fmul float %12, %18
  %20 = fmul float %14, %18
  %21 = fmul float %16, %18
  %22 = getelementptr inbounds %struct.Bone, ptr %0, i64 0, i32 12
  %23 = fadd float %4, %19
  store float %23, ptr %22, align 4, !tbaa !156
  %24 = fadd float %6, %20
  %25 = getelementptr inbounds %struct.Bone, ptr %0, i64 0, i32 12, i64 1
  store float %24, ptr %25, align 4, !tbaa !156
  %26 = fadd float %9, %21
  %27 = getelementptr inbounds %struct.Bone, ptr %0, i64 0, i32 12, i64 2
  store float %26, ptr %27, align 4, !tbaa !156
  %28 = getelementptr inbounds %struct.Bone, ptr %0, i64 0, i32 4
  %29 = load ptr, ptr %28, align 8, !tbaa !34
  %30 = icmp eq ptr %29, null
  br i1 %30, label %35, label %31

31:                                               ; preds = %1, %31
  %32 = phi ptr [ %33, %31 ], [ %29, %1 ]
  tail call fastcc void @do_version_bone_head_tail_237(ptr noundef nonnull %32)
  %33 = load ptr, ptr %32, align 8, !tbaa !34
  %34 = icmp eq ptr %33, null
  br i1 %34, label %35, label %31, !llvm.loop !1029

35:                                               ; preds = %31, %1
  ret void
}

declare ptr @blo_do_versions_newlibadr(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

declare ptr @modifier_new(i32 noundef) local_unnamed_addr #3

declare void @BLI_addtail(ptr noundef, ptr noundef) local_unnamed_addr #3

declare void @modifier_unique_name(ptr noundef, ptr noundef) local_unnamed_addr #3

declare void @calc_lat_fudu(i32 noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

declare ptr @modifiers_findByType(ptr noundef, i32 noundef) local_unnamed_addr #3

declare ptr @modifierType_getInfo(i32 noundef) local_unnamed_addr #3

declare void @BLI_insertlinkbefore(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

declare void @BLI_addhead(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nofree nosync nounwind memory(readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @bone_version_238(ptr nocapture noundef readonly %0) unnamed_addr #6 {
  %2 = load ptr, ptr %0, align 8, !tbaa !34
  %3 = icmp eq ptr %2, null
  br i1 %3, label %27, label %4

4:                                                ; preds = %1, %23
  %5 = phi ptr [ %25, %23 ], [ %2, %1 ]
  %6 = getelementptr inbounds %struct.Bone, ptr %5, i64 0, i32 23
  %7 = load float, ptr %6, align 8, !tbaa !1030
  %8 = fcmp oeq float %7, 0.000000e+00
  br i1 %8, label %9, label %23

9:                                                ; preds = %4
  %10 = getelementptr inbounds %struct.Bone, ptr %5, i64 0, i32 22
  %11 = load float, ptr %10, align 4, !tbaa !1031
  %12 = fcmp oeq float %11, 0.000000e+00
  br i1 %12, label %13, label %23

13:                                               ; preds = %9
  %14 = getelementptr inbounds %struct.Bone, ptr %5, i64 0, i32 18
  %15 = load float, ptr %14, align 4, !tbaa !1027
  %16 = fmul float %15, 2.500000e-01
  store float %16, ptr %10, align 4, !tbaa !1031
  %17 = fmul float %15, 0x3FB99999A0000000
  store float %17, ptr %6, align 8, !tbaa !1030
  %18 = getelementptr inbounds %struct.Bone, ptr %5, i64 0, i32 15
  %19 = load float, ptr %18, align 8, !tbaa !1032
  %20 = fsub float %19, %16
  store float %20, ptr %18, align 8, !tbaa !1032
  %21 = fcmp ugt float %20, 0.000000e+00
  br i1 %21, label %23, label %22

22:                                               ; preds = %13
  store float 0.000000e+00, ptr %18, align 8, !tbaa !1032
  br label %23

23:                                               ; preds = %13, %22, %9, %4
  %24 = getelementptr inbounds %struct.Bone, ptr %5, i64 0, i32 4
  tail call fastcc void @bone_version_238(ptr noundef nonnull %24)
  %25 = load ptr, ptr %5, align 8, !tbaa !34
  %26 = icmp eq ptr %25, null
  br i1 %26, label %27, label %4, !llvm.loop !1033

27:                                               ; preds = %23, %1
  ret void
}

declare void @BKE_mesh_calc_edges_legacy(ptr noundef, i8 noundef zeroext) local_unnamed_addr #3

declare void @BKE_mesh_strip_loose_faces(ptr noundef) local_unnamed_addr #3

declare i64 @BLI_snprintf(ptr noundef, i64 noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: nofree nosync nounwind memory(readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @bone_version_239(ptr nocapture noundef readonly %0) unnamed_addr #6 {
  %2 = load ptr, ptr %0, align 8, !tbaa !34
  %3 = icmp eq ptr %2, null
  br i1 %3, label %14, label %4

4:                                                ; preds = %1, %10
  %5 = phi ptr [ %12, %10 ], [ %2, %1 ]
  %6 = getelementptr inbounds %struct.Bone, ptr %5, i64 0, i32 25
  %7 = load i32, ptr %6, align 8, !tbaa !1034
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %9, label %10

9:                                                ; preds = %4
  store i32 1, ptr %6, align 8, !tbaa !1034
  br label %10

10:                                               ; preds = %9, %4
  %11 = getelementptr inbounds %struct.Bone, ptr %5, i64 0, i32 4
  tail call fastcc void @bone_version_239(ptr noundef nonnull %11)
  %12 = load ptr, ptr %5, align 8, !tbaa !34
  %13 = icmp eq ptr %12, null
  br i1 %13, label %14, label %4, !llvm.loop !1035

14:                                               ; preds = %10, %1
  ret void
}

declare ptr @BKE_scene_add_render_layer(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read)
declare i32 @strncmp(ptr nocapture noundef, ptr nocapture noundef, i64 noundef) local_unnamed_addr #5

declare void @defgroup_unique_name(ptr noundef, ptr noundef) local_unnamed_addr #3

declare void @unit_m4(ptr noundef) local_unnamed_addr #3

declare ptr @BKE_ptcache_add(ptr noundef) local_unnamed_addr #3

declare ptr @curvemapping_add(i32 noundef, float noundef, float noundef, float noundef, float noundef) local_unnamed_addr #3

declare void @curvemapping_initialize(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define internal fastcc void @ntree_version_245(ptr noundef %0, ptr noundef %1, ptr nocapture noundef readonly %2) unnamed_addr #2 {
  %4 = getelementptr inbounds %struct.bNodeTree, ptr %2, i64 0, i32 9
  %5 = load i32, ptr %4, align 8, !tbaa !525
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
  %14 = load i16, ptr %13, align 4, !tbaa !528
  %15 = icmp eq i16 %14, 210
  br i1 %15, label %16, label %27

16:                                               ; preds = %11
  %17 = getelementptr inbounds %struct.bNode, ptr %12, i64 0, i32 21
  %18 = load ptr, ptr %17, align 8, !tbaa !530
  %19 = icmp eq ptr %18, null
  br i1 %19, label %20, label %27

20:                                               ; preds = %16
  %21 = load ptr, ptr @MEM_callocN, align 8, !tbaa !34
  %22 = tail call ptr %21(i64 noundef 8, ptr noundef nonnull @.str.27) #11
  store ptr %22, ptr %17, align 8, !tbaa !530
  %23 = getelementptr inbounds %struct.bNode, ptr %12, i64 0, i32 33
  %24 = load i16, ptr %23, align 8, !tbaa !531
  %25 = icmp eq i16 %24, 0
  br i1 %25, label %27, label %26

26:                                               ; preds = %20
  store float 1.000000e+00, ptr %22, align 4, !tbaa !1036
  br label %27

27:                                               ; preds = %16, %26, %20, %11
  %28 = getelementptr inbounds %struct.bNode, ptr %12, i64 0, i32 20
  %29 = load ptr, ptr %28, align 8, !tbaa !1038
  %30 = tail call ptr @blo_do_versions_newlibadr(ptr noundef %0, ptr noundef %1, ptr noundef %29) #11
  %31 = getelementptr inbounds %struct.bNode, ptr %12, i64 0, i32 21
  %32 = load ptr, ptr %31, align 8, !tbaa !530
  %33 = icmp ne ptr %32, null
  %34 = icmp ne ptr %30, null
  %35 = select i1 %33, i1 %34, i1 false
  br i1 %35, label %36, label %56

36:                                               ; preds = %27
  %37 = getelementptr inbounds %struct.ID, ptr %30, i64 0, i32 4
  %38 = load i16, ptr %37, align 8, !tbaa !847
  %39 = icmp eq i16 %38, 19785
  br i1 %39, label %40, label %56

40:                                               ; preds = %36
  %41 = getelementptr inbounds %struct.ImageUser, ptr %32, i64 0, i32 12
  %42 = load i16, ptr %41, align 2, !tbaa !1039
  %43 = and i16 %42, 128
  %44 = icmp eq i16 %43, 0
  br i1 %44, label %47, label %45

45:                                               ; preds = %40
  %46 = and i16 %42, -129
  store i16 %46, ptr %41, align 2, !tbaa !1039
  br label %47

47:                                               ; preds = %45, %40
  %48 = load i16, ptr %41, align 2, !tbaa !1039
  %49 = and i16 %48, 4
  %50 = icmp eq i16 %49, 0
  br i1 %50, label %56, label %51

51:                                               ; preds = %47
  %52 = getelementptr inbounds %struct.Image, ptr %30, i64 0, i32 10
  %53 = load i16, ptr %52, align 2, !tbaa !643
  %54 = and i16 %53, -129
  store i16 %54, ptr %52, align 2, !tbaa !643
  %55 = getelementptr inbounds %struct.Image, ptr %30, i64 0, i32 37
  store i8 0, ptr %55, align 8, !tbaa !790
  br label %56

56:                                               ; preds = %27, %36, %51, %47
  %57 = load ptr, ptr %12, align 8, !tbaa !34
  %58 = icmp eq ptr %57, null
  br i1 %58, label %59, label %11, !llvm.loop !1040

59:                                               ; preds = %56, %7, %3
  ret void
}

declare ptr @BLI_strncpy(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #3

declare ptr @psys_new_settings(ptr noundef, ptr noundef) local_unnamed_addr #3

declare void @blo_do_versions_oldnewmap_insert(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

declare i32 @BLI_countlist(ptr noundef) local_unnamed_addr #3

declare ptr @blo_do_versions_newlibadr_us(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

declare i64 @BLI_strnlen(ptr noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memmove.p0.p0.i64(ptr nocapture writeonly, ptr nocapture readonly, i64, i1 immarg) #7

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fmuladd.f32(float, float, float) #4

declare double @PIL_check_seconds_timer() local_unnamed_addr #3

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.ceil.f64(double) #4

declare ptr @CustomData_add_layer(ptr noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #7

declare void @BKE_mesh_update_customdata_pointers(ptr noundef, i8 noundef zeroext) local_unnamed_addr #3

declare ptr @BLI_pophead(ptr noundef) local_unnamed_addr #3

; Function Attrs: nofree nounwind uwtable
define internal fastcc void @idproperties_fix_groups_lengths_recurse(ptr nocapture noundef %0) unnamed_addr #8 {
  %2 = getelementptr inbounds %struct.IDProperty, ptr %0, i64 0, i32 7, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !34
  %4 = icmp eq ptr %3, null
  br i1 %4, label %16, label %5

5:                                                ; preds = %1, %12
  %6 = phi ptr [ %14, %12 ], [ %3, %1 ]
  %7 = phi i32 [ %13, %12 ], [ 0, %1 ]
  %8 = getelementptr inbounds %struct.IDProperty, ptr %6, i64 0, i32 2
  %9 = load i8, ptr %8, align 8, !tbaa !1041
  %10 = icmp eq i8 %9, 6
  br i1 %10, label %11, label %12

11:                                               ; preds = %5
  tail call fastcc void @idproperties_fix_groups_lengths_recurse(ptr noundef nonnull %6)
  br label %12

12:                                               ; preds = %5, %11
  %13 = add nuw nsw i32 %7, 1
  %14 = load ptr, ptr %6, align 8, !tbaa !34
  %15 = icmp eq ptr %14, null
  br i1 %15, label %16, label %5, !llvm.loop !1044

16:                                               ; preds = %12, %1
  %17 = phi i32 [ 0, %1 ], [ %13, %12 ]
  %18 = getelementptr inbounds %struct.IDProperty, ptr %0, i64 0, i32 8
  %19 = load i32, ptr %18, align 8, !tbaa !1045
  %20 = icmp eq i32 %19, %17
  br i1 %20, label %23, label %21

21:                                               ; preds = %16
  %22 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.31)
  store i32 %17, ptr %18, align 8, !tbaa !1045
  br label %23

23:                                               ; preds = %21, %16
  ret void
}

; Function Attrs: nofree nounwind
declare noundef i32 @puts(ptr nocapture noundef readonly) local_unnamed_addr #9

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i8 @llvm.umax.i8(i8, i8) #10

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #10

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #10

attributes #0 = { nofree norecurse nosync nounwind memory(read, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #5 = { mustprogress nofree nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nofree nosync nounwind memory(readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #8 = { nofree nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { nofree nounwind }
attributes #10 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #11 = { nounwind }
attributes #12 = { nounwind willreturn memory(read) }

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
!38 = !{!39, !40, i64 16}
!39 = !{!"PartEff", !35, i64 0, !35, i64 8, !40, i64 16, !40, i64 18, !40, i64 20, !40, i64 22, !40, i64 24, !40, i64 26, !41, i64 28, !41, i64 32, !41, i64 36, !42, i64 40, !42, i64 44, !42, i64 48, !41, i64 52, !41, i64 56, !41, i64 60, !41, i64 64, !41, i64 68, !36, i64 72, !41, i64 84, !41, i64 88, !41, i64 92, !41, i64 96, !41, i64 100, !36, i64 104, !36, i64 116, !36, i64 132, !36, i64 148, !36, i64 156, !40, i64 164, !40, i64 166, !40, i64 168, !40, i64 170, !40, i64 172, !40, i64 174, !40, i64 176, !40, i64 178, !40, i64 180, !40, i64 182, !36, i64 184, !36, i64 248, !36, i64 312, !35, i64 376, !35, i64 384}
!40 = !{!"short", !36, i64 0}
!41 = !{!"float", !36, i64 0}
!42 = !{!"int", !36, i64 0}
!43 = distinct !{!43, !44, !45}
!44 = !{!"llvm.loop.mustprogress"}
!45 = !{!"llvm.loop.unroll.disable"}
!46 = !{!47, !35, i64 224}
!47 = !{!"Object", !48, i64 0, !35, i64 120, !35, i64 128, !40, i64 136, !40, i64 138, !42, i64 140, !42, i64 144, !42, i64 148, !36, i64 152, !35, i64 216, !35, i64 224, !35, i64 232, !35, i64 240, !35, i64 248, !35, i64 256, !35, i64 264, !35, i64 272, !35, i64 280, !35, i64 288, !35, i64 296, !35, i64 304, !49, i64 312, !35, i64 360, !50, i64 368, !50, i64 384, !50, i64 400, !50, i64 416, !42, i64 432, !42, i64 436, !35, i64 440, !35, i64 448, !42, i64 456, !42, i64 460, !36, i64 464, !36, i64 476, !36, i64 488, !36, i64 500, !36, i64 512, !36, i64 524, !36, i64 536, !36, i64 548, !36, i64 560, !36, i64 576, !36, i64 592, !36, i64 604, !41, i64 616, !41, i64 620, !36, i64 624, !36, i64 688, !36, i64 752, !36, i64 816, !36, i64 880, !42, i64 944, !40, i64 948, !40, i64 950, !40, i64 952, !40, i64 954, !40, i64 956, !40, i64 958, !40, i64 960, !40, i64 962, !40, i64 964, !36, i64 966, !36, i64 967, !42, i64 968, !42, i64 972, !42, i64 976, !42, i64 980, !42, i64 984, !41, i64 988, !41, i64 992, !41, i64 996, !41, i64 1000, !41, i64 1004, !41, i64 1008, !41, i64 1012, !41, i64 1016, !41, i64 1020, !41, i64 1024, !41, i64 1028, !41, i64 1032, !40, i64 1036, !40, i64 1038, !40, i64 1040, !36, i64 1042, !36, i64 1043, !40, i64 1044, !36, i64 1046, !36, i64 1047, !41, i64 1048, !41, i64 1052, !50, i64 1056, !50, i64 1072, !50, i64 1088, !50, i64 1104, !41, i64 1120, !40, i64 1124, !40, i64 1126, !36, i64 1128, !42, i64 1144, !42, i64 1148, !35, i64 1152, !36, i64 1160, !36, i64 1161, !40, i64 1162, !36, i64 1164, !50, i64 1176, !50, i64 1192, !50, i64 1208, !50, i64 1224, !35, i64 1240, !35, i64 1248, !35, i64 1256, !36, i64 1264, !36, i64 1265, !40, i64 1266, !41, i64 1268, !35, i64 1272, !35, i64 1280, !35, i64 1288, !35, i64 1296, !51, i64 1304, !51, i64 1312, !42, i64 1320, !42, i64 1324, !50, i64 1328, !50, i64 1344, !35, i64 1360, !35, i64 1368, !35, i64 1376, !36, i64 1384, !35, i64 1392, !50, i64 1400, !35, i64 1416}
!48 = !{!"ID", !35, i64 0, !35, i64 8, !35, i64 16, !35, i64 24, !36, i64 32, !40, i64 98, !42, i64 100, !42, i64 104, !42, i64 108, !35, i64 112}
!49 = !{!"bAnimVizSettings", !42, i64 0, !42, i64 4, !42, i64 8, !42, i64 12, !40, i64 16, !40, i64 18, !40, i64 20, !40, i64 22, !40, i64 24, !40, i64 26, !40, i64 28, !40, i64 30, !42, i64 32, !42, i64 36, !42, i64 40, !42, i64 44}
!50 = !{!"ListBase", !35, i64 0, !35, i64 8}
!51 = !{!"long", !36, i64 0}
!52 = !{!53, !35, i64 16}
!53 = !{!"bConstraint", !35, i64 0, !35, i64 8, !35, i64 16, !40, i64 24, !40, i64 26, !36, i64 28, !36, i64 29, !36, i64 30, !40, i64 94, !41, i64 96, !41, i64 100, !35, i64 104, !41, i64 112, !41, i64 116}
!54 = !{!55, !35, i64 0}
!55 = !{!"bTrackToConstraint", !35, i64 0, !42, i64 8, !42, i64 12, !42, i64 16, !42, i64 20, !36, i64 24}
!56 = !{!47, !40, i64 956}
!57 = !{!55, !42, i64 8}
!58 = !{!47, !40, i64 958}
!59 = !{!55, !42, i64 12}
!60 = !{!61, !40, i64 1040}
!61 = !{!"Main", !35, i64 0, !35, i64 8, !36, i64 16, !40, i64 1040, !40, i64 1042, !40, i64 1044, !40, i64 1046, !51, i64 1048, !36, i64 1056, !40, i64 1072, !35, i64 1080, !50, i64 1088, !50, i64 1104, !50, i64 1120, !50, i64 1136, !50, i64 1152, !50, i64 1168, !50, i64 1184, !50, i64 1200, !50, i64 1216, !50, i64 1232, !50, i64 1248, !50, i64 1264, !50, i64 1280, !50, i64 1296, !50, i64 1312, !50, i64 1328, !50, i64 1344, !50, i64 1360, !50, i64 1376, !50, i64 1392, !50, i64 1408, !50, i64 1424, !50, i64 1440, !50, i64 1456, !50, i64 1472, !50, i64 1488, !50, i64 1504, !50, i64 1520, !50, i64 1536, !50, i64 1552, !50, i64 1568, !50, i64 1584, !50, i64 1600, !50, i64 1616, !36, i64 1632, !35, i64 1888, !35, i64 1896}
!62 = !{!63, !40, i64 98}
!63 = !{!"Tex", !48, i64 0, !35, i64 120, !41, i64 128, !41, i64 132, !41, i64 136, !41, i64 140, !41, i64 144, !41, i64 148, !41, i64 152, !41, i64 156, !41, i64 160, !41, i64 164, !41, i64 168, !41, i64 172, !41, i64 176, !41, i64 180, !41, i64 184, !41, i64 188, !41, i64 192, !41, i64 196, !41, i64 200, !41, i64 204, !41, i64 208, !41, i64 212, !40, i64 216, !40, i64 218, !40, i64 220, !40, i64 222, !40, i64 224, !40, i64 226, !40, i64 228, !40, i64 230, !40, i64 232, !40, i64 234, !41, i64 236, !41, i64 240, !41, i64 244, !41, i64 248, !42, i64 252, !42, i64 256, !40, i64 260, !40, i64 262, !40, i64 264, !40, i64 266, !42, i64 268, !42, i64 272, !42, i64 276, !42, i64 280, !41, i64 284, !41, i64 288, !41, i64 292, !64, i64 296, !35, i64 336, !35, i64 344, !35, i64 352, !35, i64 360, !35, i64 368, !35, i64 376, !35, i64 384, !35, i64 392, !35, i64 400, !36, i64 408, !36, i64 409}
!64 = !{!"ImageUser", !35, i64 0, !42, i64 8, !42, i64 12, !42, i64 16, !42, i64 20, !36, i64 24, !36, i64 25, !36, i64 26, !36, i64 27, !40, i64 28, !40, i64 30, !40, i64 32, !40, i64 34, !42, i64 36}
!65 = !{!63, !40, i64 264}
!66 = !{!63, !40, i64 260}
!67 = !{!63, !40, i64 262}
!68 = distinct !{!68, !44, !45}
!69 = !{!70, !42, i64 708}
!70 = !{!"Scene", !48, i64 0, !35, i64 120, !35, i64 128, !35, i64 136, !35, i64 144, !50, i64 152, !35, i64 168, !35, i64 176, !36, i64 184, !36, i64 196, !36, i64 208, !36, i64 220, !42, i64 232, !42, i64 236, !42, i64 240, !40, i64 244, !36, i64 246, !36, i64 247, !35, i64 248, !35, i64 256, !35, i64 264, !35, i64 272, !71, i64 280, !80, i64 4264, !50, i64 4296, !50, i64 4312, !35, i64 4328, !35, i64 4336, !35, i64 4344, !35, i64 4352, !35, i64 4360, !35, i64 4368, !40, i64 4376, !40, i64 4378, !42, i64 4380, !50, i64 4384, !81, i64 4400, !82, i64 4416, !85, i64 4600, !35, i64 4608, !86, i64 4616, !35, i64 4640, !51, i64 4648, !51, i64 4656, !73, i64 4664, !74, i64 4824, !87, i64 4888, !35, i64 4952}
!71 = !{!"RenderData", !72, i64 0, !35, i64 248, !35, i64 256, !75, i64 264, !76, i64 328, !42, i64 400, !42, i64 404, !42, i64 408, !41, i64 412, !42, i64 416, !42, i64 420, !42, i64 424, !42, i64 428, !40, i64 432, !40, i64 434, !41, i64 436, !41, i64 440, !41, i64 444, !41, i64 448, !41, i64 452, !40, i64 456, !40, i64 458, !40, i64 460, !40, i64 462, !40, i64 464, !40, i64 466, !42, i64 468, !40, i64 472, !40, i64 474, !40, i64 476, !40, i64 478, !40, i64 480, !40, i64 482, !42, i64 484, !42, i64 488, !40, i64 492, !40, i64 494, !42, i64 496, !42, i64 500, !40, i64 504, !40, i64 506, !40, i64 508, !40, i64 510, !40, i64 512, !36, i64 514, !36, i64 515, !42, i64 516, !42, i64 520, !42, i64 524, !40, i64 528, !40, i64 530, !40, i64 532, !40, i64 534, !40, i64 536, !40, i64 538, !40, i64 540, !40, i64 542, !77, i64 544, !77, i64 560, !78, i64 576, !50, i64 592, !40, i64 608, !40, i64 610, !41, i64 612, !41, i64 616, !41, i64 620, !41, i64 624, !42, i64 628, !41, i64 632, !41, i64 636, !41, i64 640, !41, i64 644, !40, i64 648, !40, i64 650, !40, i64 652, !40, i64 654, !40, i64 656, !40, i64 658, !41, i64 660, !41, i64 664, !40, i64 668, !40, i64 670, !41, i64 672, !41, i64 676, !36, i64 680, !42, i64 1704, !40, i64 1708, !40, i64 1710, !36, i64 1712, !36, i64 2480, !36, i64 2496, !36, i64 2512, !36, i64 2513, !36, i64 2514, !36, i64 2515, !42, i64 2520, !40, i64 2524, !40, i64 2526, !41, i64 2528, !41, i64 2532, !40, i64 2536, !40, i64 2538, !41, i64 2540, !40, i64 2544, !40, i64 2546, !42, i64 2548, !40, i64 2552, !40, i64 2554, !40, i64 2556, !40, i64 2558, !41, i64 2560, !41, i64 2564, !35, i64 2568, !42, i64 2576, !41, i64 2580, !36, i64 2584, !79, i64 2616, !42, i64 3976, !42, i64 3980}
!72 = !{!"ImageFormatData", !36, i64 0, !36, i64 1, !36, i64 2, !36, i64 3, !36, i64 4, !36, i64 5, !36, i64 6, !36, i64 7, !40, i64 8, !40, i64 10, !41, i64 12, !36, i64 16, !36, i64 17, !36, i64 18, !73, i64 24, !74, i64 184}
!73 = !{!"ColorManagedViewSettings", !42, i64 0, !42, i64 4, !36, i64 8, !36, i64 72, !41, i64 136, !41, i64 140, !35, i64 144, !35, i64 152}
!74 = !{!"ColorManagedDisplaySettings", !36, i64 0}
!75 = !{!"QuicktimeCodecSettings", !42, i64 0, !42, i64 4, !42, i64 8, !42, i64 12, !42, i64 16, !42, i64 20, !42, i64 24, !42, i64 28, !42, i64 32, !42, i64 36, !42, i64 40, !42, i64 44, !40, i64 48, !40, i64 50, !42, i64 52, !42, i64 56, !42, i64 60}
!76 = !{!"FFMpegCodecData", !42, i64 0, !42, i64 4, !42, i64 8, !42, i64 12, !42, i64 16, !42, i64 20, !42, i64 24, !42, i64 28, !41, i64 32, !42, i64 36, !42, i64 40, !42, i64 44, !42, i64 48, !42, i64 52, !42, i64 56, !42, i64 60, !35, i64 64}
!77 = !{!"rctf", !41, i64 0, !41, i64 4, !41, i64 8, !41, i64 12}
!78 = !{!"rcti", !42, i64 0, !42, i64 4, !42, i64 8, !42, i64 12}
!79 = !{!"BakeData", !72, i64 0, !36, i64 248, !40, i64 1272, !40, i64 1274, !40, i64 1276, !40, i64 1278, !41, i64 1280, !41, i64 1284, !36, i64 1288, !36, i64 1291, !36, i64 1292, !36, i64 1293, !36, i64 1296}
!80 = !{!"AudioData", !42, i64 0, !41, i64 4, !41, i64 8, !41, i64 12, !42, i64 16, !40, i64 20, !40, i64 22, !41, i64 24, !41, i64 28}
!81 = !{!"GameFraming", !36, i64 0, !36, i64 12, !36, i64 13, !36, i64 14, !36, i64 15}
!82 = !{!"GameData", !81, i64 0, !40, i64 16, !40, i64 18, !40, i64 20, !40, i64 22, !40, i64 24, !40, i64 26, !40, i64 28, !40, i64 30, !40, i64 32, !36, i64 34, !83, i64 40, !40, i64 64, !40, i64 66, !41, i64 68, !84, i64 72, !41, i64 128, !41, i64 132, !42, i64 136, !40, i64 140, !40, i64 142, !40, i64 144, !40, i64 146, !40, i64 148, !40, i64 150, !40, i64 152, !40, i64 154, !40, i64 156, !40, i64 158, !40, i64 160, !40, i64 162, !41, i64 164, !41, i64 168, !41, i64 172, !41, i64 176, !41, i64 180}
!83 = !{!"GameDome", !40, i64 0, !40, i64 2, !40, i64 4, !40, i64 6, !41, i64 8, !41, i64 12, !35, i64 16}
!84 = !{!"RecastData", !41, i64 0, !41, i64 4, !41, i64 8, !41, i64 12, !41, i64 16, !41, i64 20, !41, i64 24, !41, i64 28, !41, i64 32, !41, i64 36, !42, i64 40, !41, i64 44, !41, i64 48, !40, i64 52, !40, i64 54}
!85 = !{!"UnitSettings", !41, i64 0, !36, i64 4, !36, i64 5, !40, i64 6}
!86 = !{!"PhysicsSettings", !36, i64 0, !42, i64 12, !42, i64 16, !42, i64 20}
!87 = !{!"ColorManagedColorspaceSettings", !36, i64 0}
!88 = !{!70, !42, i64 704}
!89 = !{!70, !41, i64 716}
!90 = distinct !{!90, !44, !45}
!91 = !{!92, !41, i64 216}
!92 = !{!"Material", !48, i64 0, !35, i64 120, !40, i64 128, !40, i64 130, !41, i64 132, !41, i64 136, !41, i64 140, !41, i64 144, !41, i64 148, !41, i64 152, !41, i64 156, !41, i64 160, !41, i64 164, !41, i64 168, !41, i64 172, !41, i64 176, !41, i64 180, !41, i64 184, !41, i64 188, !41, i64 192, !41, i64 196, !41, i64 200, !41, i64 204, !41, i64 208, !41, i64 212, !41, i64 216, !41, i64 220, !93, i64 224, !94, i64 312, !41, i64 328, !41, i64 332, !41, i64 336, !41, i64 340, !41, i64 344, !41, i64 348, !41, i64 352, !40, i64 356, !40, i64 358, !40, i64 360, !36, i64 362, !36, i64 363, !41, i64 364, !41, i64 368, !40, i64 372, !40, i64 374, !41, i64 376, !41, i64 380, !41, i64 384, !41, i64 388, !40, i64 392, !40, i64 394, !42, i64 396, !42, i64 400, !42, i64 404, !42, i64 408, !40, i64 412, !40, i64 414, !40, i64 416, !40, i64 418, !41, i64 420, !41, i64 424, !41, i64 428, !41, i64 432, !41, i64 436, !41, i64 440, !41, i64 444, !41, i64 448, !41, i64 452, !41, i64 456, !36, i64 460, !41, i64 524, !41, i64 528, !41, i64 532, !42, i64 536, !36, i64 540, !36, i64 541, !36, i64 542, !36, i64 543, !40, i64 544, !40, i64 546, !40, i64 548, !36, i64 550, !36, i64 551, !40, i64 552, !40, i64 554, !41, i64 556, !41, i64 560, !36, i64 564, !41, i64 580, !41, i64 584, !40, i64 588, !40, i64 590, !35, i64 592, !35, i64 600, !36, i64 608, !36, i64 609, !36, i64 610, !36, i64 611, !40, i64 612, !40, i64 614, !41, i64 616, !41, i64 620, !36, i64 624, !35, i64 768, !35, i64 776, !35, i64 784, !35, i64 792, !41, i64 800, !41, i64 804, !41, i64 808, !41, i64 812, !41, i64 816, !40, i64 820, !40, i64 822, !36, i64 824, !36, i64 836, !41, i64 848, !41, i64 852, !41, i64 856, !41, i64 860, !41, i64 864, !41, i64 868, !41, i64 872, !40, i64 876, !40, i64 878, !42, i64 880, !40, i64 884, !40, i64 886, !36, i64 888, !40, i64 904, !40, i64 906, !40, i64 908, !40, i64 910, !40, i64 912, !36, i64 914, !35, i64 920, !50, i64 928}
!93 = !{!"VolumeSettings", !41, i64 0, !41, i64 4, !41, i64 8, !41, i64 12, !36, i64 16, !36, i64 28, !36, i64 40, !41, i64 52, !41, i64 56, !41, i64 60, !40, i64 64, !40, i64 66, !40, i64 68, !40, i64 70, !41, i64 72, !41, i64 76, !41, i64 80, !41, i64 84}
!94 = !{!"GameSettings", !42, i64 0, !42, i64 4, !42, i64 8, !42, i64 12}
!95 = distinct !{!95, !44, !45}
!96 = !{!47, !40, i64 950}
!97 = !{!47, !42, i64 456}
!98 = !{!47, !35, i64 440}
!99 = distinct !{!99, !44, !45}
!100 = distinct !{!100, !44, !45}
!101 = !{!47, !40, i64 952}
!102 = distinct !{!102, !44, !45}
!103 = !{!47, !42, i64 968}
!104 = !{!47, !42, i64 972}
!105 = !{!47, !42, i64 976}
!106 = !{!47, !42, i64 980}
!107 = distinct !{!107, !44, !45}
!108 = !{!109, !35, i64 256}
!109 = !{!"Mesh", !48, i64 0, !35, i64 120, !35, i64 128, !35, i64 136, !35, i64 144, !35, i64 152, !35, i64 160, !35, i64 168, !35, i64 176, !35, i64 184, !35, i64 192, !35, i64 200, !35, i64 208, !35, i64 216, !35, i64 224, !35, i64 232, !35, i64 240, !35, i64 248, !35, i64 256, !35, i64 264, !35, i64 272, !110, i64 280, !110, i64 480, !110, i64 680, !110, i64 880, !110, i64 1080, !42, i64 1280, !42, i64 1284, !42, i64 1288, !42, i64 1292, !42, i64 1296, !42, i64 1300, !42, i64 1304, !36, i64 1308, !36, i64 1320, !36, i64 1332, !42, i64 1344, !40, i64 1348, !40, i64 1350, !41, i64 1352, !42, i64 1356, !36, i64 1360, !36, i64 1361, !36, i64 1362, !36, i64 1363, !36, i64 1364, !36, i64 1365, !40, i64 1366, !35, i64 1368}
!110 = !{!"CustomData", !35, i64 0, !36, i64 8, !42, i64 172, !42, i64 176, !42, i64 180, !35, i64 184, !35, i64 192}
!111 = !{!109, !42, i64 1288}
!112 = !{!109, !35, i64 208}
!113 = !{!114, !42, i64 0}
!114 = !{!"MFace", !42, i64 0, !42, i64 4, !42, i64 8, !42, i64 12, !40, i64 16, !36, i64 18, !36, i64 19}
!115 = !{!42, !42, i64 0}
!116 = !{!114, !42, i64 4}
!117 = !{!114, !42, i64 8}
!118 = !{!114, !42, i64 12}
!119 = distinct !{!119, !44, !45}
!120 = distinct !{!120, !44, !45}
!121 = !{!70, !42, i64 800}
!122 = distinct !{!122, !44, !45}
!123 = !{!47, !36, i64 1046}
!124 = distinct !{!124, !44, !45}
!125 = distinct !{!125, !44, !45}
!126 = distinct !{!126, !44, !45}
!127 = !{!128, !42, i64 32}
!128 = !{!"SpaceLink", !35, i64 0, !35, i64 8, !50, i64 16, !42, i64 32, !41, i64 36, !36, i64 40}
!129 = !{!130, !40, i64 286}
!130 = !{!"View3D", !35, i64 0, !35, i64 8, !50, i64 16, !42, i64 32, !41, i64 36, !36, i64 40, !36, i64 56, !41, i64 72, !41, i64 76, !36, i64 80, !36, i64 81, !42, i64 84, !42, i64 88, !40, i64 92, !40, i64 94, !35, i64 96, !35, i64 104, !77, i64 112, !50, i64 128, !35, i64 144, !35, i64 152, !36, i64 160, !42, i64 224, !42, i64 228, !40, i64 232, !40, i64 234, !40, i64 236, !40, i64 238, !40, i64 240, !40, i64 242, !41, i64 244, !41, i64 248, !41, i64 252, !41, i64 256, !36, i64 260, !36, i64 272, !40, i64 284, !40, i64 286, !40, i64 288, !36, i64 290, !36, i64 291, !36, i64 292, !36, i64 293, !36, i64 294, !50, i64 296, !50, i64 312, !50, i64 328, !36, i64 344, !36, i64 345, !36, i64 346, !36, i64 347, !35, i64 352, !35, i64 360, !35, i64 368}
!131 = distinct !{!131, !44, !45}
!132 = !{!92, !41, i64 424}
!133 = !{!92, !41, i64 428}
!134 = !{!92, !41, i64 432}
!135 = distinct !{!135, !44, !45}
!136 = !{!63, !41, i64 148}
!137 = !{!63, !41, i64 152}
!138 = !{!63, !41, i64 156}
!139 = !{!63, !41, i64 160}
!140 = distinct !{!140, !44, !45}
!141 = distinct !{!141, !44, !45}
!142 = !{!70, !41, i64 720}
!143 = distinct !{!143, !44, !45}
!144 = !{!70, !40, i64 820}
!145 = distinct !{!145, !44, !45}
!146 = !{!109, !41, i64 1352}
!147 = distinct !{!147, !44, !45}
!148 = !{!109, !35, i64 224}
!149 = !{!36, !36, i64 0}
!150 = distinct !{!150, !44, !45}
!151 = distinct !{!151, !44, !45}
!152 = !{!109, !36, i64 1362}
!153 = distinct !{!153, !44, !45}
!154 = distinct !{!154, !44, !45}
!155 = distinct !{!155, !44, !45}
!156 = !{!41, !41, i64 0}
!157 = distinct !{!157, !44, !45}
!158 = !{!39, !40, i64 168}
!159 = distinct !{!159, !44, !45}
!160 = distinct !{!160, !44, !45}
!161 = distinct !{!161, !44, !45}
!162 = !{!163, !40, i64 76}
!163 = !{!"SpaceText", !35, i64 0, !35, i64 8, !50, i64 16, !42, i64 32, !41, i64 36, !36, i64 40, !35, i64 56, !42, i64 64, !42, i64 68, !40, i64 72, !40, i64 74, !40, i64 76, !36, i64 78, !36, i64 79, !42, i64 80, !42, i64 84, !42, i64 88, !40, i64 92, !40, i64 94, !40, i64 96, !40, i64 98, !41, i64 100, !78, i64 104, !78, i64 120, !42, i64 136, !42, i64 140, !36, i64 144, !36, i64 400, !40, i64 656, !40, i64 658, !36, i64 660, !35, i64 664, !36, i64 672}
!164 = distinct !{!164, !44, !45}
!165 = distinct !{!165, !44, !45}
!166 = distinct !{!166, !44, !45}
!167 = distinct !{!167, !44, !45}
!168 = !{!61, !35, i64 1120}
!169 = !{!92, !42, i64 396}
!170 = distinct !{!170, !44, !45}
!171 = !{!47, !41, i64 988}
!172 = !{!47, !41, i64 992}
!173 = !{!47, !35, i64 0}
!174 = distinct !{!174, !44, !45}
!175 = !{!47, !41, i64 996}
!176 = !{!47, !41, i64 1004}
!177 = distinct !{!177, !44, !45}
!178 = !{!179, !40, i64 58}
!179 = !{!"TFace", !35, i64 0, !36, i64 8, !36, i64 40, !36, i64 56, !36, i64 57, !40, i64 58, !40, i64 60, !40, i64 62}
!180 = distinct !{!180, !44, !45}
!181 = distinct !{!181, !44, !45}
!182 = distinct !{!182, !44, !45}
!183 = !{!47, !42, i64 1144}
!184 = !{!47, !40, i64 964}
!185 = distinct !{!185, !44, !45}
!186 = distinct !{!186, !44, !45}
!187 = !{!188, !40, i64 24}
!188 = !{!"bActuator", !35, i64 0, !35, i64 8, !35, i64 16, !40, i64 24, !40, i64 26, !40, i64 28, !40, i64 30, !36, i64 32, !35, i64 96, !35, i64 104}
!189 = !{!188, !35, i64 96}
!190 = !{!191, !40, i64 2}
!191 = !{!"bIpoActuator", !40, i64 0, !40, i64 2, !41, i64 4, !41, i64 8, !36, i64 12, !36, i64 76, !40, i64 140, !40, i64 142, !40, i64 144, !40, i64 146}
!192 = !{!193, !40, i64 4}
!193 = !{!"bEditObjectActuator", !42, i64 0, !40, i64 4, !40, i64 6, !35, i64 8, !35, i64 16, !36, i64 24, !36, i64 88, !36, i64 100, !41, i64 112, !40, i64 116, !40, i64 118, !40, i64 120, !40, i64 122, !42, i64 124}
!194 = !{!195, !35, i64 8}
!195 = !{!"bAddObjectActuator", !42, i64 0, !42, i64 4, !35, i64 8}
!196 = !{!193, !35, i64 8}
!197 = !{!195, !42, i64 0}
!198 = !{!193, !42, i64 0}
!199 = !{!188, !40, i64 28}
!200 = distinct !{!200, !44, !45}
!201 = distinct !{!201, !44, !45}
!202 = !{!203, !40, i64 0}
!203 = !{!"bObjectActuator", !40, i64 0, !40, i64 2, !40, i64 4, !40, i64 6, !36, i64 8, !36, i64 20, !36, i64 32, !36, i64 44, !36, i64 56, !36, i64 68, !36, i64 80, !36, i64 92, !35, i64 104}
!204 = distinct !{!204, !44, !45}
!205 = distinct !{!205, !44, !45}
!206 = distinct !{!206, !44, !45}
!207 = !{!208, !41, i64 1176}
!208 = !{!"bSound", !48, i64 0, !36, i64 120, !35, i64 1144, !35, i64 1152, !35, i64 1160, !35, i64 1168, !41, i64 1176, !41, i64 1180, !41, i64 1184, !41, i64 1188, !41, i64 1192, !41, i64 1196, !42, i64 1200, !42, i64 1204, !35, i64 1208, !35, i64 1216, !35, i64 1224}
!209 = distinct !{!209, !44, !45}
!210 = distinct !{!210, !44, !45}
!211 = !{!193, !40, i64 116}
!212 = distinct !{!212, !44, !45}
!213 = !{!214, !40, i64 16}
!214 = !{!"bSensor", !35, i64 0, !35, i64 8, !40, i64 16, !40, i64 18, !40, i64 20, !40, i64 22, !40, i64 24, !40, i64 26, !40, i64 28, !40, i64 30, !36, i64 32, !35, i64 96, !35, i64 104, !35, i64 112, !40, i64 120, !40, i64 122, !40, i64 124, !40, i64 126}
!215 = !{!214, !35, i64 96}
!216 = !{!217, !41, i64 68}
!217 = !{!"bRadarSensor", !36, i64 0, !41, i64 64, !41, i64 68, !40, i64 72, !40, i64 74}
!218 = !{!214, !40, i64 22}
!219 = !{!214, !40, i64 24}
!220 = !{!214, !40, i64 120}
!221 = !{!222, !40, i64 132}
!222 = !{!"bCollisionSensor", !36, i64 0, !36, i64 64, !40, i64 128, !40, i64 130, !40, i64 132, !40, i64 134}
!223 = !{!224, !40, i64 196}
!224 = !{!"bRaySensor", !36, i64 0, !41, i64 64, !36, i64 68, !36, i64 132, !40, i64 196, !40, i64 198, !42, i64 200}
!225 = distinct !{!225, !44, !45}
!226 = distinct !{!226, !44, !45}
!227 = distinct !{!227, !44, !45}
!228 = distinct !{!228, !44, !45}
!229 = !{!208, !41, i64 1192}
!230 = !{!208, !41, i64 1188}
!231 = !{!208, !41, i64 1196}
!232 = !{!208, !41, i64 1180}
!233 = !{!208, !42, i64 1200}
!234 = distinct !{!234, !44, !45}
!235 = distinct !{!235, !44, !45}
!236 = !{!237, !40, i64 80}
!237 = !{!"bProperty", !35, i64 0, !35, i64 8, !36, i64 16, !40, i64 80, !40, i64 82, !42, i64 84, !35, i64 88}
!238 = !{!237, !42, i64 84}
!239 = distinct !{!239, !44, !45}
!240 = !{!109, !40, i64 1350}
!241 = distinct !{!241, !44, !45}
!242 = !{!47, !41, i64 1000}
!243 = distinct !{!243, !44, !45}
!244 = !{!245, !36, i64 0}
!245 = !{!"MCol", !36, i64 0, !36, i64 1, !36, i64 2, !36, i64 3}
!246 = distinct !{!246, !44, !45}
!247 = distinct !{!247, !44, !45}
!248 = distinct !{!248, !44, !45}
!249 = distinct !{!249, !44, !45}
!250 = !{!70, !40, i64 738}
!251 = !{!70, !40, i64 740}
!252 = !{!70, !40, i64 742}
!253 = distinct !{!253, !44, !45}
!254 = !{!70, !40, i64 744}
!255 = distinct !{!255, !44, !45}
!256 = distinct !{!256, !44, !45}
!257 = !{!258, !40, i64 1304}
!258 = !{!"Image", !48, i64 0, !36, i64 120, !35, i64 1144, !35, i64 1152, !35, i64 1160, !35, i64 1168, !36, i64 1176, !40, i64 1240, !40, i64 1242, !40, i64 1244, !40, i64 1246, !40, i64 1248, !40, i64 1250, !42, i64 1252, !40, i64 1256, !40, i64 1258, !40, i64 1260, !40, i64 1262, !40, i64 1264, !40, i64 1266, !42, i64 1268, !35, i64 1272, !35, i64 1280, !35, i64 1288, !41, i64 1296, !42, i64 1300, !40, i64 1304, !40, i64 1306, !42, i64 1308, !42, i64 1312, !36, i64 1316, !36, i64 1317, !40, i64 1318, !36, i64 1320, !41, i64 1336, !41, i64 1340, !87, i64 1344, !36, i64 1408, !36, i64 1409, !36, i64 1416}
!259 = distinct !{!259, !44, !45}
!260 = distinct !{!260, !44, !45}
!261 = !{!262, !40, i64 0}
!262 = !{!"bKeyboardSensor", !40, i64 0, !40, i64 2, !40, i64 4, !40, i64 6, !36, i64 8, !36, i64 72}
!263 = !{!262, !40, i64 2}
!264 = !{!262, !40, i64 6}
!265 = distinct !{!265, !44, !45}
!266 = !{!208, !35, i64 1144}
!267 = !{!208, !35, i64 1160}
!268 = distinct !{!268, !44, !45}
!269 = !{!109, !36, i64 1363}
!270 = distinct !{!270, !44, !45}
!271 = !{!70, !40, i64 752}
!272 = distinct !{!272, !44, !45}
!273 = distinct !{!273, !44, !45}
!274 = distinct !{!274, !44, !45}
!275 = !{!276, !40, i64 164}
!276 = !{!"SpaceSeq", !35, i64 0, !35, i64 8, !50, i64 16, !42, i64 32, !41, i64 36, !36, i64 40, !277, i64 56, !41, i64 216, !41, i64 220, !40, i64 224, !40, i64 226, !40, i64 228, !40, i64 230, !42, i64 232, !41, i64 236, !42, i64 240, !42, i64 244, !35, i64 248, !278, i64 256}
!277 = !{!"View2D", !77, i64 0, !77, i64 16, !78, i64 32, !78, i64 48, !78, i64 64, !36, i64 80, !36, i64 88, !41, i64 96, !41, i64 100, !40, i64 104, !40, i64 106, !40, i64 108, !40, i64 110, !40, i64 112, !40, i64 114, !40, i64 116, !40, i64 118, !40, i64 120, !40, i64 122, !40, i64 124, !40, i64 126, !35, i64 128, !42, i64 136, !42, i64 140, !35, i64 144, !35, i64 152}
!278 = !{!"SequencerScopes", !35, i64 0, !35, i64 8, !35, i64 16, !35, i64 24, !35, i64 32, !35, i64 40}
!279 = distinct !{!279, !44, !45}
!280 = !{!281, !40, i64 206}
!281 = !{!"World", !48, i64 0, !35, i64 120, !40, i64 128, !40, i64 130, !40, i64 132, !40, i64 134, !41, i64 136, !41, i64 140, !41, i64 144, !41, i64 148, !41, i64 152, !41, i64 156, !41, i64 160, !41, i64 164, !41, i64 168, !41, i64 172, !41, i64 176, !41, i64 180, !41, i64 184, !41, i64 188, !41, i64 192, !41, i64 196, !40, i64 200, !40, i64 202, !40, i64 204, !40, i64 206, !40, i64 208, !40, i64 210, !40, i64 212, !40, i64 214, !41, i64 216, !41, i64 220, !41, i64 224, !41, i64 228, !41, i64 232, !41, i64 236, !41, i64 240, !41, i64 244, !41, i64 248, !41, i64 252, !41, i64 256, !41, i64 260, !40, i64 264, !40, i64 266, !40, i64 268, !40, i64 270, !41, i64 272, !41, i64 276, !41, i64 280, !41, i64 284, !40, i64 288, !40, i64 290, !40, i64 292, !40, i64 294, !41, i64 296, !41, i64 300, !41, i64 304, !41, i64 308, !41, i64 312, !41, i64 316, !41, i64 320, !40, i64 324, !40, i64 326, !40, i64 328, !40, i64 330, !40, i64 332, !40, i64 334, !35, i64 336, !35, i64 344, !35, i64 352, !36, i64 360, !40, i64 504, !40, i64 506, !36, i64 508, !35, i64 512, !35, i64 520}
!282 = distinct !{!282, !44, !45}
!283 = !{!53, !40, i64 24}
!284 = distinct !{!284, !44, !45}
!285 = !{!47, !40, i64 136}
!286 = !{!47, !35, i64 288}
!287 = distinct !{!287, !44, !45}
!288 = distinct !{!288, !44, !45}
!289 = distinct !{!289, !44, !45}
!290 = !{!70, !42, i64 4264}
!291 = !{!70, !40, i64 4284}
!292 = distinct !{!292, !44, !45}
!293 = !{!92, !41, i64 560}
!294 = !{!92, !41, i64 556}
!295 = distinct !{!295, !44, !45}
!296 = distinct !{!296, !44, !45}
!297 = distinct !{!297, !44, !45}
!298 = distinct !{!298, !44, !45}
!299 = distinct !{!299, !44, !45}
!300 = distinct !{!300, !44, !45}
!301 = distinct !{!301, !44, !45}
!302 = distinct !{!302, !44, !45}
!303 = distinct !{!303, !44, !45}
!304 = distinct !{!304, !44, !45}
!305 = distinct !{!305, !44, !45}
!306 = !{!307, !41, i64 156}
!307 = !{!"SpaceButs", !35, i64 0, !35, i64 8, !50, i64 16, !42, i64 32, !41, i64 36, !36, i64 40, !277, i64 56, !40, i64 216, !40, i64 218, !40, i64 220, !40, i64 222, !40, i64 224, !40, i64 226, !40, i64 228, !40, i64 230, !36, i64 232, !36, i64 233, !35, i64 240, !42, i64 248, !42, i64 252, !35, i64 256, !35, i64 264}
!308 = !{!307, !40, i64 224}
!309 = !{!307, !40, i64 216}
!310 = distinct !{!310, !44, !45}
!311 = distinct !{!311, !44, !45}
!312 = distinct !{!312, !44, !45}
!313 = !{!128, !41, i64 36}
!314 = !{!315, !41, i64 156}
!315 = !{!"SpaceAction", !35, i64 0, !35, i64 8, !50, i64 16, !42, i64 32, !41, i64 36, !36, i64 40, !277, i64 56, !35, i64 216, !316, i64 224, !36, i64 336, !36, i64 337, !40, i64 338, !41, i64 340}
!316 = !{!"bDopeSheet", !35, i64 0, !50, i64 8, !35, i64 24, !36, i64 32, !42, i64 96, !42, i64 100, !42, i64 104, !42, i64 108}
!317 = distinct !{!317, !44, !45}
!318 = distinct !{!318, !44, !45}
!319 = distinct !{!319, !44, !45}
!320 = !{!130, !36, i64 290}
!321 = distinct !{!321, !44, !45}
!322 = !{!61, !35, i64 1328}
!323 = !{!92, !41, i64 340}
!324 = !{!92, !41, i64 332}
!325 = !{!92, !41, i64 188}
!326 = !{!92, !40, i64 356}
!327 = !{!92, !40, i64 358}
!328 = !{!92, !41, i64 336}
!329 = !{!92, !41, i64 328}
!330 = distinct !{!330, !44, !45}
!331 = !{!70, !41, i64 904}
!332 = distinct !{!332, !44, !45}
!333 = !{!334, !41, i64 152}
!334 = !{!"Lamp", !48, i64 0, !35, i64 120, !40, i64 128, !40, i64 130, !42, i64 132, !40, i64 136, !40, i64 138, !41, i64 140, !41, i64 144, !41, i64 148, !41, i64 152, !41, i64 156, !41, i64 160, !41, i64 164, !41, i64 168, !41, i64 172, !41, i64 176, !41, i64 180, !41, i64 184, !41, i64 188, !41, i64 192, !41, i64 196, !35, i64 200, !40, i64 208, !40, i64 210, !41, i64 212, !41, i64 216, !41, i64 220, !41, i64 224, !41, i64 228, !41, i64 232, !41, i64 236, !40, i64 240, !40, i64 242, !40, i64 244, !40, i64 246, !36, i64 248, !36, i64 249, !40, i64 250, !40, i64 252, !40, i64 254, !40, i64 256, !40, i64 258, !41, i64 260, !41, i64 264, !41, i64 268, !41, i64 272, !40, i64 276, !40, i64 278, !40, i64 280, !40, i64 282, !40, i64 284, !40, i64 286, !41, i64 288, !41, i64 292, !41, i64 296, !41, i64 300, !41, i64 304, !41, i64 308, !41, i64 312, !41, i64 316, !41, i64 320, !41, i64 324, !41, i64 328, !41, i64 332, !41, i64 336, !40, i64 340, !36, i64 342, !35, i64 344, !36, i64 352, !40, i64 496, !40, i64 498, !36, i64 500, !35, i64 504, !35, i64 512}
!335 = !{!334, !40, i64 250}
!336 = !{!334, !40, i64 252}
!337 = !{!334, !40, i64 254}
!338 = !{!334, !41, i64 260}
!339 = !{!334, !41, i64 264}
!340 = !{!334, !41, i64 268}
!341 = distinct !{!341, !44, !45}
!342 = !{!281, !41, i64 180}
!343 = !{!281, !41, i64 172}
!344 = distinct !{!344, !44, !45}
!345 = distinct !{!345, !44, !45}
!346 = distinct !{!346, !44, !45}
!347 = !{!348, !35, i64 0}
!348 = !{!"bScreen", !48, i64 0, !50, i64 120, !50, i64 136, !50, i64 152, !50, i64 168, !35, i64 184, !35, i64 192, !42, i64 200, !42, i64 204, !40, i64 208, !40, i64 210, !40, i64 212, !40, i64 214, !40, i64 216, !40, i64 218, !40, i64 220, !40, i64 222, !40, i64 224, !40, i64 226, !40, i64 228, !40, i64 230, !35, i64 232, !35, i64 240}
!349 = distinct !{!349, !44, !45}
!350 = !{!61, !35, i64 1312}
!351 = !{!63, !40, i64 230}
!352 = !{!63, !41, i64 192}
!353 = !{!63, !41, i64 168}
!354 = !{!63, !41, i64 172}
!355 = !{!63, !41, i64 176}
!356 = !{!63, !41, i64 180}
!357 = !{!63, !41, i64 184}
!358 = !{!63, !41, i64 188}
!359 = !{!63, !41, i64 196}
!360 = !{!63, !41, i64 212}
!361 = distinct !{!361, !44, !45}
!362 = !{!281, !41, i64 272}
!363 = !{!281, !41, i64 284}
!364 = !{!281, !40, i64 290}
!365 = !{!281, !41, i64 280}
!366 = !{!281, !35, i64 0}
!367 = distinct !{!367, !44, !45}
!368 = distinct !{!368, !44, !45}
!369 = distinct !{!369, !44, !45}
!370 = !{!371, !41, i64 172}
!371 = !{!"SpaceNla", !35, i64 0, !35, i64 8, !50, i64 16, !42, i64 32, !41, i64 36, !36, i64 40, !40, i64 56, !40, i64 58, !42, i64 60, !35, i64 64, !277, i64 72}
!372 = distinct !{!372, !44, !45}
!373 = !{!70, !40, i64 812}
!374 = distinct !{!374, !44, !45}
!375 = !{!92, !41, i64 616}
!376 = !{!92, !41, i64 620}
!377 = !{!92, !40, i64 544}
!378 = distinct !{!378, !44, !45}
!379 = distinct !{!379, !44, !45}
!380 = distinct !{!380, !44, !45}
!381 = !{!130, !40, i64 240}
!382 = distinct !{!382, !44, !45}
!383 = distinct !{!383, !44, !45}
!384 = distinct !{!384, !44, !45}
!385 = distinct !{!385, !44, !45}
!386 = !{!163, !42, i64 88}
!387 = distinct !{!387, !44, !45}
!388 = !{!61, !35, i64 1088}
!389 = !{!63, !41, i64 288}
!390 = distinct !{!390, !44, !45}
!391 = !{!70, !35, i64 256}
!392 = !{!393, !42, i64 24}
!393 = !{!"SeqIterator", !35, i64 0, !42, i64 8, !42, i64 12, !35, i64 16, !42, i64 24}
!394 = !{!393, !35, i64 16}
!395 = !{!396, !42, i64 100}
!396 = !{!"Sequence", !35, i64 0, !35, i64 8, !35, i64 16, !35, i64 24, !36, i64 32, !42, i64 96, !42, i64 100, !42, i64 104, !42, i64 108, !42, i64 112, !42, i64 116, !42, i64 120, !42, i64 124, !42, i64 128, !42, i64 132, !42, i64 136, !42, i64 140, !41, i64 144, !41, i64 148, !41, i64 152, !40, i64 156, !40, i64 158, !42, i64 160, !42, i64 164, !35, i64 168, !35, i64 176, !35, i64 184, !35, i64 192, !35, i64 200, !35, i64 208, !35, i64 216, !41, i64 224, !41, i64 228, !35, i64 232, !35, i64 240, !35, i64 248, !50, i64 256, !35, i64 272, !35, i64 280, !41, i64 288, !41, i64 292, !41, i64 296, !41, i64 300, !35, i64 304, !42, i64 312, !42, i64 316, !42, i64 320, !41, i64 324, !42, i64 328, !36, i64 332, !36, i64 333, !50, i64 336}
!397 = !{!396, !36, i64 332}
!398 = distinct !{!398, !44, !45}
!399 = !{!70, !35, i64 0}
!400 = distinct !{!400, !44, !45}
!401 = !{!402, !41, i64 148}
!402 = !{!"Camera", !48, i64 0, !35, i64 120, !36, i64 128, !36, i64 129, !40, i64 130, !41, i64 132, !41, i64 136, !41, i64 140, !41, i64 144, !41, i64 148, !41, i64 152, !41, i64 156, !41, i64 160, !41, i64 164, !41, i64 168, !41, i64 172, !35, i64 176, !35, i64 184, !36, i64 192, !36, i64 193}
!403 = !{!402, !41, i64 144}
!404 = !{!402, !36, i64 128}
!405 = distinct !{!405, !44, !45}
!406 = distinct !{!406, !44, !45}
!407 = distinct !{!407, !44, !45}
!408 = !{!130, !36, i64 291}
!409 = distinct !{!409, !44, !45}
!410 = !{!92, !41, i64 584}
!411 = !{!92, !41, i64 580}
!412 = distinct !{!412, !44, !45}
!413 = !{!47, !35, i64 1248}
!414 = !{!415, !41, i64 128}
!415 = !{!"SoftBody", !42, i64 0, !42, i64 4, !35, i64 8, !35, i64 16, !36, i64 24, !36, i64 25, !40, i64 26, !41, i64 28, !36, i64 32, !41, i64 96, !41, i64 100, !41, i64 104, !41, i64 108, !41, i64 112, !41, i64 116, !41, i64 120, !41, i64 124, !41, i64 128, !40, i64 132, !36, i64 134, !40, i64 198, !41, i64 200, !41, i64 204, !36, i64 208, !42, i64 272, !42, i64 276, !42, i64 280, !40, i64 284, !40, i64 286, !35, i64 288, !42, i64 296, !42, i64 300, !41, i64 304, !41, i64 308, !41, i64 312, !41, i64 316, !40, i64 320, !40, i64 322, !40, i64 324, !40, i64 326, !40, i64 328, !40, i64 330, !40, i64 332, !40, i64 334, !35, i64 336, !41, i64 344, !41, i64 348, !35, i64 352, !50, i64 360, !35, i64 376, !36, i64 384, !36, i64 396, !36, i64 432, !42, i64 468}
!416 = !{!415, !41, i64 108}
!417 = !{!415, !42, i64 280}
!418 = !{!415, !42, i64 272}
!419 = !{!415, !42, i64 276}
!420 = !{!415, !40, i64 132}
!421 = distinct !{!421, !44, !45}
!422 = distinct !{!422, !44, !45}
!423 = distinct !{!423, !44, !45}
!424 = distinct !{!424, !44, !45}
!425 = !{!47, !35, i64 216}
!426 = !{!47, !40, i64 138}
!427 = !{!428, !40, i64 24}
!428 = !{!"bPose", !50, i64 0, !35, i64 16, !40, i64 24, !40, i64 26, !42, i64 28, !42, i64 32, !41, i64 36, !36, i64 40, !36, i64 52, !50, i64 64, !42, i64 80, !42, i64 84, !35, i64 88, !35, i64 96, !49, i64 104, !36, i64 152}
!429 = !{!47, !36, i64 1161}
!430 = !{!47, !35, i64 296}
!431 = !{!432, !42, i64 192}
!432 = !{!"bArmature", !48, i64 0, !35, i64 120, !50, i64 128, !50, i64 144, !35, i64 160, !35, i64 168, !35, i64 176, !35, i64 184, !42, i64 192, !42, i64 196, !42, i64 200, !42, i64 204, !40, i64 208, !40, i64 210, !42, i64 212, !42, i64 216, !42, i64 220, !40, i64 224, !40, i64 226, !40, i64 228, !40, i64 230, !42, i64 232, !42, i64 236, !42, i64 240, !42, i64 244, !42, i64 248, !42, i64 252}
!433 = !{!47, !40, i64 1044}
!434 = !{!435, !40, i64 114}
!435 = !{!"SubsurfModifierData", !436, i64 0, !40, i64 112, !40, i64 114, !40, i64 116, !40, i64 118, !35, i64 120, !35, i64 128}
!436 = !{!"ModifierData", !35, i64 0, !35, i64 8, !42, i64 16, !42, i64 20, !42, i64 24, !42, i64 28, !36, i64 32, !35, i64 96, !35, i64 104}
!437 = !{!435, !40, i64 116}
!438 = !{!109, !36, i64 1364}
!439 = !{!435, !40, i64 112}
!440 = !{!435, !42, i64 20}
!441 = !{!435, !40, i64 118}
!442 = !{!443, !35, i64 0}
!443 = !{!"bFollowPathConstraint", !35, i64 0, !41, i64 8, !41, i64 12, !42, i64 16, !40, i64 20, !40, i64 22}
!444 = !{!445, !42, i64 268}
!445 = !{!"Curve", !48, i64 0, !35, i64 120, !35, i64 128, !50, i64 136, !35, i64 152, !35, i64 160, !35, i64 168, !35, i64 176, !35, i64 184, !35, i64 192, !35, i64 200, !36, i64 208, !36, i64 220, !36, i64 232, !40, i64 244, !40, i64 246, !40, i64 248, !40, i64 250, !41, i64 252, !41, i64 256, !42, i64 260, !40, i64 264, !40, i64 266, !42, i64 268, !41, i64 272, !41, i64 276, !41, i64 280, !40, i64 284, !40, i64 286, !40, i64 288, !40, i64 290, !42, i64 292, !42, i64 296, !36, i64 300, !40, i64 304, !36, i64 306, !36, i64 307, !41, i64 308, !41, i64 312, !41, i64 316, !41, i64 320, !41, i64 324, !41, i64 328, !41, i64 332, !41, i64 336, !41, i64 340, !41, i64 344, !42, i64 348, !42, i64 352, !42, i64 356, !42, i64 360, !42, i64 364, !35, i64 368, !35, i64 376, !36, i64 384, !35, i64 448, !35, i64 456, !35, i64 464, !35, i64 472, !35, i64 480, !42, i64 488, !42, i64 492, !35, i64 496, !446, i64 504, !41, i64 512, !41, i64 516, !41, i64 520, !36, i64 524, !36, i64 525, !36, i64 526}
!446 = !{!"CharInfo", !40, i64 0, !40, i64 2, !36, i64 4, !36, i64 5, !40, i64 6}
!447 = distinct !{!447, !44, !45}
!448 = !{!70, !35, i64 264}
!449 = !{!450, !41, i64 36}
!450 = !{!"ToolSettings", !35, i64 0, !35, i64 8, !35, i64 16, !35, i64 24, !41, i64 32, !41, i64 36, !41, i64 40, !40, i64 44, !40, i64 46, !36, i64 48, !36, i64 49, !36, i64 50, !36, i64 51, !41, i64 52, !40, i64 56, !36, i64 58, !36, i64 59, !451, i64 64, !453, i64 168, !41, i64 336, !41, i64 340, !40, i64 344, !40, i64 346, !36, i64 348, !36, i64 349, !40, i64 350, !41, i64 352, !41, i64 356, !41, i64 360, !41, i64 364, !41, i64 368, !41, i64 372, !41, i64 376, !41, i64 380, !41, i64 384, !41, i64 388, !40, i64 392, !36, i64 394, !36, i64 395, !36, i64 396, !36, i64 399, !35, i64 400, !36, i64 408, !36, i64 409, !36, i64 410, !36, i64 411, !36, i64 412, !36, i64 413, !36, i64 421, !36, i64 429, !36, i64 430, !36, i64 431, !36, i64 432, !36, i64 433, !40, i64 434, !40, i64 436, !40, i64 438, !40, i64 440, !36, i64 442, !36, i64 443, !36, i64 444, !36, i64 445, !36, i64 446, !36, i64 447, !42, i64 448, !42, i64 452, !42, i64 456, !42, i64 460, !40, i64 464, !40, i64 466, !42, i64 468, !41, i64 472, !41, i64 476, !454, i64 480, !455, i64 608}
!451 = !{!"ImagePaintSettings", !452, i64 0, !40, i64 40, !40, i64 42, !40, i64 44, !40, i64 46, !36, i64 48, !42, i64 52, !35, i64 56, !35, i64 64, !35, i64 72, !35, i64 80, !36, i64 88, !41, i64 100}
!452 = !{!"Paint", !35, i64 0, !35, i64 8, !35, i64 16, !36, i64 24, !42, i64 28, !42, i64 32, !42, i64 36}
!453 = !{!"ParticleEditSettings", !40, i64 0, !40, i64 2, !40, i64 4, !40, i64 6, !36, i64 8, !35, i64 120, !41, i64 128, !41, i64 132, !42, i64 136, !42, i64 140, !42, i64 144, !42, i64 148, !35, i64 152, !35, i64 160}
!454 = !{!"UnifiedPaintSettings", !42, i64 0, !41, i64 4, !41, i64 8, !41, i64 12, !36, i64 16, !36, i64 28, !42, i64 40, !36, i64 44, !41, i64 52, !42, i64 56, !42, i64 60, !36, i64 64, !36, i64 65, !41, i64 72, !36, i64 76, !42, i64 84, !41, i64 88, !36, i64 92, !36, i64 100, !42, i64 108, !35, i64 112, !41, i64 120, !42, i64 124}
!455 = !{!"MeshStatVis", !36, i64 0, !36, i64 1, !36, i64 3, !41, i64 4, !41, i64 8, !41, i64 12, !41, i64 16, !36, i64 20, !36, i64 21, !41, i64 24, !41, i64 28, !41, i64 32, !41, i64 36}
!456 = distinct !{!456, !44, !45}
!457 = !{!458, !41, i64 152}
!458 = !{!"Lattice", !48, i64 0, !35, i64 120, !40, i64 128, !40, i64 130, !40, i64 132, !40, i64 134, !40, i64 136, !40, i64 138, !40, i64 140, !40, i64 142, !36, i64 144, !36, i64 145, !36, i64 146, !36, i64 147, !42, i64 148, !41, i64 152, !41, i64 156, !41, i64 160, !41, i64 164, !41, i64 168, !41, i64 172, !35, i64 176, !35, i64 184, !35, i64 192, !35, i64 200, !36, i64 208, !35, i64 272}
!459 = !{!458, !41, i64 156}
!460 = !{!458, !41, i64 160}
!461 = !{!458, !40, i64 134}
!462 = !{!458, !40, i64 128}
!463 = !{!458, !40, i64 130}
!464 = !{!458, !40, i64 132}
!465 = distinct !{!465, !44, !45}
!466 = !{!436, !42, i64 16}
!467 = distinct !{!467, !44, !45}
!468 = !{!47, !40, i64 1162}
!469 = !{!470, !42, i64 68}
!470 = !{!"ModifierTypeInfo", !36, i64 0, !36, i64 32, !42, i64 64, !42, i64 68, !42, i64 72, !35, i64 80, !35, i64 88, !35, i64 96, !35, i64 104, !35, i64 112, !35, i64 120, !35, i64 128, !35, i64 136, !35, i64 144, !35, i64 152, !35, i64 160, !35, i64 168, !35, i64 176, !35, i64 184, !35, i64 192, !35, i64 200, !35, i64 208}
!471 = distinct !{!471, !44, !45}
!472 = !{!473, !41, i64 156}
!473 = !{!"bKinematicConstraint", !35, i64 0, !40, i64 8, !40, i64 10, !40, i64 12, !40, i64 14, !36, i64 16, !35, i64 80, !36, i64 88, !41, i64 152, !41, i64 156, !41, i64 160, !36, i64 164, !40, i64 176, !40, i64 178, !41, i64 180}
!474 = !{!473, !41, i64 160}
!475 = !{!473, !40, i64 10}
!476 = !{!473, !40, i64 12}
!477 = distinct !{!477, !44, !45}
!478 = distinct !{!478, !44, !45}
!479 = !{!39, !40, i64 180}
!480 = !{!39, !40, i64 174}
!481 = !{!39, !40, i64 170}
!482 = distinct !{!482, !44, !45}
!483 = !{!432, !40, i64 208}
!484 = distinct !{!484, !44, !45}
!485 = !{!109, !35, i64 240}
!486 = distinct !{!486, !44, !45}
!487 = distinct !{!487, !44, !45}
!488 = !{!489, !35, i64 128}
!489 = !{!"Key", !48, i64 0, !35, i64 120, !35, i64 128, !36, i64 136, !42, i64 168, !42, i64 172, !50, i64 176, !35, i64 192, !35, i64 200, !40, i64 208, !40, i64 210, !40, i64 212, !40, i64 214, !41, i64 216, !42, i64 220}
!490 = distinct !{!490, !44, !45}
!491 = !{!61, !35, i64 1264}
!492 = !{!61, !35, i64 1184}
!493 = distinct !{!493, !44, !45}
!494 = !{!495, !35, i64 120}
!495 = !{!"ArmatureModifierData", !436, i64 0, !40, i64 112, !40, i64 114, !42, i64 116, !35, i64 120, !35, i64 128, !36, i64 136}
!496 = !{!495, !40, i64 112}
!497 = distinct !{!497, !44, !45}
!498 = !{!432, !40, i64 226}
!499 = !{!432, !42, i64 216}
!500 = distinct !{!500, !44, !45}
!501 = !{!70, !42, i64 796}
!502 = !{!70, !40, i64 756}
!503 = distinct !{!503, !44, !45}
!504 = !{!402, !40, i64 130}
!505 = !{!402, !41, i64 132}
!506 = !{!402, !35, i64 0}
!507 = distinct !{!507, !44, !45}
!508 = !{!92, !41, i64 436}
!509 = !{!92, !41, i64 440}
!510 = !{!92, !35, i64 0}
!511 = distinct !{!511, !44, !45}
!512 = !{!281, !40, i64 288}
!513 = !{!281, !40, i64 294}
!514 = distinct !{!514, !44, !45}
!515 = distinct !{!515, !44, !45}
!516 = !{!70, !40, i64 772}
!517 = !{!70, !40, i64 774}
!518 = !{!50, !35, i64 0}
!519 = !{!520, !42, i64 108}
!520 = !{!"SceneRenderLayer", !35, i64 0, !35, i64 8, !36, i64 16, !35, i64 80, !35, i64 88, !42, i64 96, !42, i64 100, !42, i64 104, !42, i64 108, !42, i64 112, !42, i64 116, !42, i64 120, !41, i64 124, !521, i64 128}
!521 = !{!"FreestyleConfig", !50, i64 0, !42, i64 16, !42, i64 20, !42, i64 24, !41, i64 28, !41, i64 32, !41, i64 36, !50, i64 40}
!522 = !{!520, !42, i64 112}
!523 = distinct !{!523, !44, !45}
!524 = !{!70, !35, i64 248}
!525 = !{!526, !42, i64 256}
!526 = !{!"bNodeTree", !48, i64 0, !35, i64 120, !35, i64 128, !36, i64 136, !35, i64 200, !35, i64 208, !36, i64 216, !50, i64 224, !50, i64 240, !42, i64 256, !42, i64 260, !42, i64 264, !42, i64 268, !42, i64 272, !40, i64 276, !40, i64 278, !42, i64 280, !42, i64 284, !40, i64 288, !40, i64 290, !42, i64 292, !77, i64 296, !50, i64 312, !50, i64 328, !35, i64 344, !527, i64 352, !42, i64 356, !35, i64 360, !35, i64 368, !35, i64 376, !35, i64 384, !35, i64 392, !35, i64 400, !35, i64 408, !35, i64 416, !35, i64 424}
!527 = !{!"bNodeInstanceKey", !42, i64 0}
!528 = !{!529, !40, i64 172}
!529 = !{!"bNode", !35, i64 0, !35, i64 8, !35, i64 16, !35, i64 24, !35, i64 32, !36, i64 40, !36, i64 104, !42, i64 168, !40, i64 172, !40, i64 174, !40, i64 176, !40, i64 178, !40, i64 180, !40, i64 182, !40, i64 184, !40, i64 186, !36, i64 188, !50, i64 200, !50, i64 216, !35, i64 232, !35, i64 240, !35, i64 248, !35, i64 256, !50, i64 264, !41, i64 280, !41, i64 284, !41, i64 288, !41, i64 292, !41, i64 296, !41, i64 300, !41, i64 304, !42, i64 308, !36, i64 312, !40, i64 376, !40, i64 378, !41, i64 380, !41, i64 384, !40, i64 388, !40, i64 390, !35, i64 392, !77, i64 400, !77, i64 416, !77, i64 432, !40, i64 448, !40, i64 450, !42, i64 452, !35, i64 456}
!530 = !{!529, !35, i64 248}
!531 = !{!529, !40, i64 376}
!532 = !{!533, !40, i64 0}
!533 = !{!"NodeBlurData", !40, i64 0, !40, i64 2, !40, i64 4, !40, i64 6, !40, i64 8, !40, i64 10, !40, i64 12, !40, i64 14, !41, i64 16, !41, i64 20, !41, i64 24, !40, i64 28, !36, i64 30, !36, i64 31, !42, i64 32, !42, i64 36}
!534 = !{!529, !40, i64 378}
!535 = !{!533, !40, i64 2}
!536 = !{!533, !40, i64 28}
!537 = !{!533, !40, i64 4}
!538 = !{!533, !40, i64 6}
!539 = !{!533, !41, i64 16}
!540 = distinct !{!540, !44, !45}
!541 = !{!450, !36, i64 48}
!542 = !{!450, !36, i64 49}
!543 = !{!70, !42, i64 764}
!544 = !{!70, !42, i64 768}
!545 = !{!70, !35, i64 128}
!546 = distinct !{!546, !44, !45}
!547 = distinct !{!547, !44, !45}
!548 = !{!334, !40, i64 244}
!549 = distinct !{!549, !44, !45}
!550 = !{!63, !35, i64 368}
!551 = !{!552, !41, i64 176}
!552 = !{!"EnvMap", !35, i64 0, !35, i64 8, !36, i64 16, !36, i64 64, !36, i64 128, !40, i64 164, !40, i64 166, !41, i64 168, !41, i64 172, !41, i64 176, !42, i64 180, !40, i64 184, !40, i64 186, !42, i64 188, !42, i64 192, !40, i64 196, !40, i64 198}
!553 = distinct !{!553, !44, !45}
!554 = !{!47, !41, i64 1048}
!555 = !{!47, !36, i64 1047}
!556 = distinct !{!556, !44, !45}
!557 = !{!558, !35, i64 16}
!558 = !{!"MTex", !40, i64 0, !40, i64 2, !40, i64 4, !40, i64 6, !35, i64 8, !35, i64 16, !36, i64 24, !36, i64 88, !36, i64 89, !36, i64 90, !36, i64 91, !36, i64 92, !36, i64 104, !41, i64 116, !40, i64 120, !40, i64 122, !40, i64 124, !40, i64 126, !40, i64 128, !40, i64 130, !36, i64 132, !36, i64 133, !41, i64 140, !41, i64 144, !41, i64 148, !41, i64 152, !41, i64 156, !41, i64 160, !41, i64 164, !41, i64 168, !41, i64 172, !41, i64 176, !41, i64 180, !41, i64 184, !41, i64 188, !41, i64 192, !41, i64 196, !41, i64 200, !41, i64 204, !41, i64 208, !41, i64 212, !41, i64 216, !41, i64 220, !41, i64 224, !41, i64 228, !41, i64 232, !41, i64 236, !41, i64 240, !41, i64 244, !41, i64 248, !41, i64 252, !41, i64 256, !41, i64 260, !41, i64 264, !41, i64 268, !41, i64 272, !41, i64 276, !41, i64 280, !41, i64 284, !41, i64 288, !41, i64 292, !41, i64 296, !41, i64 300, !41, i64 304, !41, i64 308}
!559 = !{!63, !40, i64 232}
!560 = !{!558, !40, i64 2}
!561 = distinct !{!561, !44, !45}
!562 = !{!92, !41, i64 352}
!563 = distinct !{!563, !44, !45}
!564 = distinct !{!564, !44, !45}
!565 = distinct !{!565, !44, !45}
!566 = distinct !{!566, !44, !45}
!567 = !{!130, !40, i64 288}
!568 = distinct !{!568, !44, !45}
!569 = !{!450, !41, i64 340}
!570 = !{!70, !40, i64 714}
!571 = !{!572, !41, i64 8}
!572 = !{!"NodeHueSat", !41, i64 0, !41, i64 4, !41, i64 8}
!573 = distinct !{!573, !44, !45}
!574 = distinct !{!574, !44, !45}
!575 = distinct !{!575, !44, !45}
!576 = distinct !{!576, !44, !45}
!577 = distinct !{!577, !44, !45}
!578 = !{!579, !35, i64 72}
!579 = !{!"Nurb", !35, i64 0, !35, i64 8, !40, i64 16, !40, i64 18, !40, i64 20, !40, i64 22, !42, i64 24, !42, i64 28, !36, i64 32, !40, i64 36, !40, i64 38, !40, i64 40, !40, i64 42, !40, i64 44, !40, i64 46, !35, i64 48, !35, i64 56, !35, i64 64, !35, i64 72, !40, i64 80, !40, i64 82, !42, i64 84}
!580 = !{!579, !42, i64 24}
!581 = !{!582, !41, i64 44}
!582 = !{!"BezTriple", !36, i64 0, !41, i64 36, !41, i64 40, !41, i64 44, !36, i64 48, !36, i64 49, !36, i64 50, !36, i64 51, !36, i64 52, !36, i64 53, !36, i64 54, !36, i64 55, !41, i64 56, !41, i64 60, !41, i64 64, !36, i64 68}
!583 = distinct !{!583, !44, !45}
!584 = !{!579, !35, i64 64}
!585 = !{!579, !42, i64 28}
!586 = !{!587, !41, i64 28}
!587 = !{!"BPoint", !36, i64 0, !41, i64 16, !41, i64 20, !40, i64 24, !40, i64 26, !41, i64 28, !41, i64 32}
!588 = distinct !{!588, !44, !45}
!589 = distinct !{!589, !44, !45}
!590 = distinct !{!590, !44, !45}
!591 = !{!592, !40, i64 20}
!592 = !{!"bMinMaxConstraint", !35, i64 0, !42, i64 8, !41, i64 12, !42, i64 16, !40, i64 20, !40, i64 22, !40, i64 24, !40, i64 26, !36, i64 28, !36, i64 40}
!593 = !{!592, !42, i64 16}
!594 = !{!595, !42, i64 8}
!595 = !{!"bRotateLikeConstraint", !35, i64 0, !42, i64 8, !42, i64 12, !36, i64 16}
!596 = distinct !{!596, !44, !45}
!597 = distinct !{!597, !44, !45}
!598 = distinct !{!598, !44, !45}
!599 = !{!600, !40, i64 184}
!600 = !{!"CurveModifierData", !436, i64 0, !35, i64 112, !36, i64 120, !40, i64 184, !36, i64 186}
!601 = distinct !{!601, !44, !45}
!602 = !{!92, !41, i64 532}
!603 = !{!92, !35, i64 768}
!604 = distinct !{!604, !44, !45}
!605 = !{!109, !42, i64 452}
!606 = !{!109, !35, i64 232}
!607 = !{!109, !42, i64 1280}
!608 = !{!109, !35, i64 248}
!609 = !{!109, !42, i64 652}
!610 = !{!109, !42, i64 1284}
!611 = !{!109, !42, i64 852}
!612 = !{!109, !35, i64 216}
!613 = !{!179, !36, i64 56}
!614 = !{!615, !36, i64 40}
!615 = !{!"MTFace", !36, i64 0, !35, i64 32, !36, i64 40, !36, i64 41, !40, i64 42, !40, i64 44, !40, i64 46}
!616 = !{!179, !40, i64 62}
!617 = !{!615, !40, i64 46}
!618 = !{!615, !40, i64 42}
!619 = !{!179, !40, i64 60}
!620 = !{!615, !40, i64 44}
!621 = !{!179, !35, i64 0}
!622 = !{!615, !35, i64 32}
!623 = !{!179, !36, i64 57}
!624 = !{!615, !36, i64 41}
!625 = distinct !{!625, !44, !45}
!626 = !{!109, !35, i64 680}
!627 = !{!628, !42, i64 0}
!628 = !{!"CustomDataLayer", !42, i64 0, !42, i64 4, !42, i64 8, !42, i64 12, !42, i64 16, !42, i64 20, !42, i64 24, !42, i64 28, !36, i64 32, !35, i64 96}
!629 = distinct !{!629, !44, !45}
!630 = distinct !{!630, !44, !45}
!631 = !{!632, !42, i64 136}
!632 = !{!"Group", !48, i64 0, !50, i64 120, !42, i64 136, !36, i64 140}
!633 = distinct !{!633, !44, !45}
!634 = !{!61, !40, i64 1042}
!635 = !{!258, !40, i64 1248}
!636 = !{!258, !40, i64 1250}
!637 = !{!258, !42, i64 1308}
!638 = !{!258, !42, i64 1312}
!639 = !{!258, !36, i64 1316}
!640 = distinct !{!640, !44, !45}
!641 = !{!63, !35, i64 352}
!642 = !{!63, !40, i64 228}
!643 = !{!258, !40, i64 1246}
!644 = !{!63, !42, i64 272}
!645 = !{!63, !42, i64 308}
!646 = !{!63, !40, i64 266}
!647 = !{!63, !36, i64 320}
!648 = !{!63, !42, i64 276}
!649 = !{!63, !42, i64 312}
!650 = !{!63, !42, i64 280}
!651 = !{!63, !42, i64 316}
!652 = !{!63, !36, i64 321}
!653 = distinct !{!653, !44, !45}
!654 = !{!655, !42, i64 0}
!655 = !{!"NodeImageAnim", !42, i64 0, !42, i64 4, !42, i64 8, !36, i64 12, !36, i64 13, !40, i64 14}
!656 = !{!64, !42, i64 12}
!657 = !{!655, !42, i64 4}
!658 = !{!64, !42, i64 20}
!659 = !{!655, !42, i64 8}
!660 = !{!64, !42, i64 16}
!661 = !{!655, !36, i64 12}
!662 = !{!64, !36, i64 25}
!663 = !{!64, !36, i64 24}
!664 = !{!64, !36, i64 26}
!665 = distinct !{!665, !44, !45}
!666 = distinct !{!666, !44, !45}
!667 = distinct !{!667, !44, !45}
!668 = distinct !{!668, !44, !45}
!669 = distinct !{!669, !44, !45}
!670 = distinct !{!670, !44, !45}
!671 = !{!672, !36, i64 72}
!672 = !{!"SpaceImage", !35, i64 0, !35, i64 8, !50, i64 16, !42, i64 32, !42, i64 36, !35, i64 40, !64, i64 48, !35, i64 88, !673, i64 96, !674, i64 5360, !35, i64 10520, !36, i64 10528, !41, i64 10536, !41, i64 10540, !41, i64 10544, !41, i64 10548, !41, i64 10552, !36, i64 10556, !36, i64 10557, !40, i64 10558, !40, i64 10560, !40, i64 10562, !36, i64 10564, !36, i64 10565, !36, i64 10566, !36, i64 10567, !675, i64 10568}
!673 = !{!"Scopes", !42, i64 0, !42, i64 4, !42, i64 8, !41, i64 12, !42, i64 16, !41, i64 20, !41, i64 24, !42, i64 28, !41, i64 32, !42, i64 36, !36, i64 40, !674, i64 64, !35, i64 5224, !35, i64 5232, !35, i64 5240, !35, i64 5248, !42, i64 5256, !42, i64 5260}
!674 = !{!"Histogram", !42, i64 0, !42, i64 4, !36, i64 8, !36, i64 1032, !36, i64 2056, !36, i64 3080, !36, i64 4104, !41, i64 5128, !41, i64 5132, !40, i64 5136, !40, i64 5138, !42, i64 5140, !36, i64 5144}
!675 = !{!"MaskSpaceInfo", !35, i64 0, !36, i64 8, !36, i64 9, !36, i64 10, !36, i64 11}
!676 = !{!677, !36, i64 48}
!677 = !{!"BGpic", !35, i64 0, !35, i64 8, !35, i64 16, !64, i64 24, !35, i64 64, !678, i64 72, !41, i64 80, !41, i64 84, !41, i64 88, !41, i64 92, !40, i64 96, !40, i64 98, !40, i64 100, !40, i64 102}
!678 = !{!"MovieClipUser", !42, i64 0, !40, i64 4, !40, i64 6}
!679 = distinct !{!679, !44, !45}
!680 = distinct !{!680, !44, !45}
!681 = !{!70, !40, i64 932}
!682 = !{!70, !40, i64 930}
!683 = !{!70, !40, i64 928}
!684 = !{!70, !40, i64 934}
!685 = distinct !{!685, !44, !45}
!686 = !{!92, !41, i64 852}
!687 = !{!92, !41, i64 848}
!688 = !{!92, !41, i64 856}
!689 = !{!92, !41, i64 860}
!690 = !{!92, !41, i64 864}
!691 = !{!92, !41, i64 868}
!692 = !{!92, !41, i64 872}
!693 = !{!92, !41, i64 132}
!694 = !{!92, !41, i64 136}
!695 = !{!92, !41, i64 140}
!696 = distinct !{!696, !44, !45}
!697 = distinct !{!697, !44, !45}
!698 = !{!699, !40, i64 112}
!699 = !{!"MirrorModifierData", !436, i64 0, !40, i64 112, !40, i64 114, !41, i64 116, !35, i64 120}
!700 = !{!699, !40, i64 114}
!701 = distinct !{!701, !44, !45}
!702 = distinct !{!702, !44, !45}
!703 = distinct !{!703, !44, !45}
!704 = !{!628, !42, i64 12}
!705 = !{!628, !42, i64 16}
!706 = distinct !{!706, !44, !45}
!707 = distinct !{!707, !44, !45}
!708 = distinct !{!708, !44, !45}
!709 = distinct !{!709, !44, !45}
!710 = !{!315, !41, i64 64}
!711 = !{!315, !41, i64 68}
!712 = !{!315, !41, i64 80}
!713 = !{!315, !41, i64 84}
!714 = distinct !{!714, !44, !45}
!715 = !{!281, !40, i64 202}
!716 = !{!281, !40, i64 328}
!717 = !{!281, !41, i64 296}
!718 = distinct !{!718, !44, !45}
!719 = !{!334, !40, i64 128}
!720 = !{!334, !40, i64 276}
!721 = !{!334, !41, i64 272}
!722 = distinct !{!722, !44, !45}
!723 = !{!53, !40, i64 26}
!724 = !{!53, !36, i64 28}
!725 = !{!53, !36, i64 29}
!726 = !{!727, !40, i64 26}
!727 = !{!"bLocLimitConstraint", !41, i64 0, !41, i64 4, !41, i64 8, !41, i64 12, !41, i64 16, !41, i64 20, !40, i64 24, !40, i64 26}
!728 = distinct !{!728, !44, !45}
!729 = !{!730, !40, i64 10}
!730 = !{!"bActionConstraint", !35, i64 0, !40, i64 8, !40, i64 10, !42, i64 12, !42, i64 16, !41, i64 20, !41, i64 24, !42, i64 28, !35, i64 32, !36, i64 40}
!731 = distinct !{!731, !44, !45}
!732 = distinct !{!732, !44, !45}
!733 = distinct !{!733, !44, !45}
!734 = !{!258, !35, i64 1288}
!735 = distinct !{!735, !44, !45}
!736 = distinct !{!736, !44, !45}
!737 = !{!415, !35, i64 352}
!738 = !{!739, !35, i64 576}
!739 = !{!"ParticleSystem", !35, i64 0, !35, i64 8, !35, i64 16, !35, i64 24, !35, i64 32, !35, i64 40, !35, i64 48, !35, i64 56, !35, i64 64, !50, i64 72, !50, i64 88, !35, i64 104, !35, i64 112, !35, i64 120, !35, i64 128, !35, i64 136, !35, i64 144, !50, i64 152, !36, i64 168, !36, i64 232, !41, i64 296, !41, i64 300, !41, i64 304, !42, i64 308, !42, i64 312, !42, i64 316, !42, i64 320, !42, i64 324, !42, i64 328, !42, i64 332, !42, i64 336, !40, i64 340, !40, i64 342, !40, i64 344, !40, i64 346, !36, i64 348, !36, i64 540, !40, i64 564, !40, i64 566, !35, i64 568, !35, i64 576, !50, i64 584, !35, i64 600, !35, i64 608, !42, i64 616, !42, i64 620, !35, i64 624, !35, i64 632, !35, i64 640, !41, i64 648, !41, i64 652}
!740 = !{!741, !42, i64 16}
!741 = !{!"PointCache", !35, i64 0, !35, i64 8, !42, i64 16, !42, i64 20, !42, i64 24, !42, i64 28, !42, i64 32, !42, i64 36, !42, i64 40, !42, i64 44, !42, i64 48, !42, i64 52, !42, i64 56, !40, i64 60, !40, i64 62, !36, i64 64, !36, i64 128, !36, i64 192, !36, i64 256, !35, i64 1280, !50, i64 1288, !35, i64 1304, !35, i64 1312}
!742 = distinct !{!742, !44, !45}
!743 = !{!744, !35, i64 144}
!744 = !{!"ClothModifierData", !436, i64 0, !35, i64 112, !35, i64 120, !35, i64 128, !35, i64 136, !35, i64 144, !50, i64 152}
!745 = !{!741, !42, i64 20}
!746 = distinct !{!746, !44, !45}
!747 = !{!109, !35, i64 1368}
!748 = !{!749, !35, i64 16}
!749 = !{!"Multires", !50, i64 0, !35, i64 16, !36, i64 24, !36, i64 25, !36, i64 26, !36, i64 27, !36, i64 28, !36, i64 29, !36, i64 30, !36, i64 31, !110, i64 32, !110, i64 232, !35, i64 432, !35, i64 440}
!750 = !{!749, !35, i64 8}
!751 = !{!752, !35, i64 56}
!752 = !{!"MultiresLevel", !35, i64 0, !35, i64 8, !35, i64 16, !35, i64 24, !35, i64 32, !42, i64 40, !42, i64 44, !42, i64 48, !42, i64 52, !35, i64 56}
!753 = !{!752, !35, i64 8}
!754 = distinct !{!754, !44, !45}
!755 = distinct !{!755, !44, !45}
!756 = !{!334, !42, i64 132}
!757 = !{!334, !40, i64 208}
!758 = !{!334, !35, i64 200}
!759 = distinct !{!759, !44, !45}
!760 = !{!92, !40, i64 372}
!761 = !{!92, !41, i64 368}
!762 = !{!92, !41, i64 364}
!763 = !{!92, !41, i64 384}
!764 = !{!92, !40, i64 374}
!765 = !{!92, !41, i64 380}
!766 = !{!92, !41, i64 376}
!767 = !{!92, !41, i64 388}
!768 = !{!92, !40, i64 392}
!769 = !{!92, !41, i64 452}
!770 = distinct !{!770, !44, !45}
!771 = !{!772, !42, i64 448}
!772 = !{!"ParticleSettings", !48, i64 0, !35, i64 120, !35, i64 128, !35, i64 136, !35, i64 144, !42, i64 152, !42, i64 156, !40, i64 160, !40, i64 162, !40, i64 164, !40, i64 166, !40, i64 168, !40, i64 170, !40, i64 172, !40, i64 174, !42, i64 176, !42, i64 180, !40, i64 184, !40, i64 186, !40, i64 188, !40, i64 190, !40, i64 192, !40, i64 194, !40, i64 196, !40, i64 198, !40, i64 200, !40, i64 202, !40, i64 204, !40, i64 206, !40, i64 208, !40, i64 210, !40, i64 212, !40, i64 214, !40, i64 216, !40, i64 218, !40, i64 220, !40, i64 222, !40, i64 224, !40, i64 226, !40, i64 228, !40, i64 230, !41, i64 232, !41, i64 236, !36, i64 240, !36, i64 248, !41, i64 256, !41, i64 260, !41, i64 264, !40, i64 268, !40, i64 270, !41, i64 272, !41, i64 276, !41, i64 280, !41, i64 284, !41, i64 288, !41, i64 292, !41, i64 296, !41, i64 300, !41, i64 304, !41, i64 308, !41, i64 312, !41, i64 316, !36, i64 320, !42, i64 324, !42, i64 328, !42, i64 332, !42, i64 336, !40, i64 340, !36, i64 342, !41, i64 348, !41, i64 352, !41, i64 356, !41, i64 360, !41, i64 364, !41, i64 368, !41, i64 372, !36, i64 376, !41, i64 388, !41, i64 392, !41, i64 396, !41, i64 400, !41, i64 404, !41, i64 408, !41, i64 412, !36, i64 416, !41, i64 428, !41, i64 432, !41, i64 436, !41, i64 440, !42, i64 444, !42, i64 448, !41, i64 452, !41, i64 456, !41, i64 460, !41, i64 464, !41, i64 468, !41, i64 472, !41, i64 476, !41, i64 480, !41, i64 484, !41, i64 488, !41, i64 492, !41, i64 496, !41, i64 500, !41, i64 504, !41, i64 508, !41, i64 512, !41, i64 516, !41, i64 520, !41, i64 524, !41, i64 528, !41, i64 532, !41, i64 536, !41, i64 540, !41, i64 544, !41, i64 548, !36, i64 552, !41, i64 560, !41, i64 564, !42, i64 568, !42, i64 572, !36, i64 576, !35, i64 720, !50, i64 728, !35, i64 744, !35, i64 752, !35, i64 760, !35, i64 768, !35, i64 776, !35, i64 784, !40, i64 792, !36, i64 794}
!773 = !{!772, !42, i64 444}
!774 = !{!772, !40, i64 270}
!775 = !{!772, !41, i64 272}
!776 = !{!772, !41, i64 276}
!777 = !{!772, !41, i64 280}
!778 = distinct !{!778, !44, !45}
!779 = !{!281, !41, i64 304}
!780 = distinct !{!780, !44, !45}
!781 = !{!70, !40, i64 2806}
!782 = !{!70, !40, i64 2804}
!783 = !{!70, !41, i64 2808}
!784 = !{!70, !41, i64 2812}
!785 = !{!70, !41, i64 2820}
!786 = !{!70, !40, i64 2818}
!787 = !{!70, !40, i64 2816}
!788 = distinct !{!788, !44, !45}
!789 = distinct !{!789, !44, !45}
!790 = !{!258, !36, i64 1408}
!791 = distinct !{!791, !44, !45}
!792 = !{!63, !40, i64 330}
!793 = distinct !{!793, !44, !45}
!794 = distinct !{!794, !44, !45}
!795 = !{!258, !41, i64 1340}
!796 = !{!258, !41, i64 1336}
!797 = distinct !{!797, !44, !45}
!798 = distinct !{!798, !44, !45}
!799 = distinct !{!799, !44, !45}
!800 = distinct !{!800, !44, !45}
!801 = distinct !{!801, !44, !45}
!802 = !{!70, !41, i64 900}
!803 = distinct !{!803, !44, !45}
!804 = distinct !{!804, !44, !45}
!805 = !{!806, !35, i64 40}
!806 = !{!"bPythonConstraint", !35, i64 0, !35, i64 8, !42, i64 16, !42, i64 20, !50, i64 24, !35, i64 40, !36, i64 48}
!807 = !{!808, !35, i64 16}
!808 = !{!"bConstraintTarget", !35, i64 0, !35, i64 8, !35, i64 16, !36, i64 24, !36, i64 88, !40, i64 152, !40, i64 154, !40, i64 156, !40, i64 158}
!809 = !{!808, !40, i64 152}
!810 = !{!806, !42, i64 20}
!811 = !{!812, !42, i64 8}
!812 = !{!"bLocateLikeConstraint", !35, i64 0, !42, i64 8, !42, i64 12, !36, i64 16}
!813 = !{!53, !41, i64 100}
!814 = distinct !{!814, !44, !45}
!815 = distinct !{!815, !44, !45}
!816 = !{!415, !35, i64 288}
!817 = !{!415, !42, i64 300}
!818 = distinct !{!818, !44, !45}
!819 = distinct !{!819, !44, !45}
!820 = distinct !{!820, !44, !45}
!821 = !{!739, !35, i64 16}
!822 = !{!823, !35, i64 1272}
!823 = !{!"FileData", !50, i64 0, !42, i64 16, !42, i64 20, !42, i64 24, !42, i64 28, !35, i64 32, !35, i64 40, !35, i64 48, !42, i64 56, !35, i64 64, !36, i64 72, !36, i64 1096, !42, i64 1100, !824, i64 1104, !35, i64 1216, !35, i64 1224, !35, i64 1232, !42, i64 1240, !42, i64 1244, !42, i64 1248, !42, i64 1252, !35, i64 1256, !35, i64 1264, !35, i64 1272, !35, i64 1280, !35, i64 1288, !35, i64 1296, !35, i64 1304, !42, i64 1312, !35, i64 1320, !35, i64 1328, !35, i64 1336}
!824 = !{!"z_stream_s", !35, i64 0, !42, i64 8, !51, i64 16, !35, i64 24, !42, i64 32, !51, i64 40, !35, i64 48, !35, i64 56, !35, i64 64, !35, i64 72, !35, i64 80, !42, i64 88, !51, i64 96, !51, i64 104}
!825 = !{!47, !35, i64 24}
!826 = !{!772, !35, i64 24}
!827 = !{!772, !42, i64 100}
!828 = !{!47, !40, i64 98}
!829 = !{!772, !40, i64 98}
!830 = !{!739, !42, i64 320}
!831 = !{!739, !42, i64 316}
!832 = !{!833, !35, i64 112}
!833 = !{!"ParticleSystemModifierData", !436, i64 0, !35, i64 112, !35, i64 120, !42, i64 128, !42, i64 132, !42, i64 136, !40, i64 140, !40, i64 142}
!834 = !{!39, !42, i64 40}
!835 = !{!772, !42, i64 324}
!836 = !{!39, !41, i64 28}
!837 = !{!772, !41, i64 284}
!838 = !{!39, !41, i64 32}
!839 = !{!772, !41, i64 288}
!840 = !{!39, !41, i64 36}
!841 = !{!772, !41, i64 292}
!842 = !{!39, !41, i64 68}
!843 = !{!772, !41, i64 296}
!844 = !{!39, !42, i64 48}
!845 = !{!739, !42, i64 308}
!846 = !{!772, !40, i64 210}
!847 = !{!40, !40, i64 0}
!848 = !{!772, !40, i64 212}
!849 = !{!39, !42, i64 44}
!850 = !{!772, !40, i64 202}
!851 = !{!39, !35, i64 384}
!852 = !{!772, !35, i64 744}
!853 = !{!772, !40, i64 200}
!854 = !{!772, !40, i64 198}
!855 = !{!39, !41, i64 52}
!856 = !{!772, !41, i64 348}
!857 = !{!39, !41, i64 56}
!858 = !{!772, !41, i64 352}
!859 = !{!39, !41, i64 60}
!860 = !{!772, !41, i64 356}
!861 = !{!39, !41, i64 84}
!862 = !{!772, !41, i64 436}
!863 = !{!39, !40, i64 22}
!864 = !{!39, !40, i64 18}
!865 = !{!772, !40, i64 184}
!866 = !{!772, !40, i64 160}
!867 = !{!739, !40, i64 340}
!868 = !{!772, !42, i64 176}
!869 = !{!772, !40, i64 170}
!870 = !{!772, !42, i64 152}
!871 = !{!772, !40, i64 162}
!872 = !{!39, !40, i64 24}
!873 = !{!39, !40, i64 182}
!874 = !{!772, !35, i64 752}
!875 = distinct !{!875, !44, !45}
!876 = !{!877, !35, i64 112}
!877 = !{!"FluidsimModifierData", !436, i64 0, !35, i64 112, !35, i64 120}
!878 = !{!879, !40, i64 16}
!879 = !{!"FluidsimSettings", !35, i64 0, !42, i64 8, !42, i64 12, !40, i64 16, !40, i64 18, !40, i64 20, !40, i64 22, !41, i64 24, !40, i64 28, !40, i64 30, !41, i64 32, !40, i64 36, !40, i64 38, !36, i64 40, !41, i64 52, !41, i64 56, !42, i64 60, !42, i64 64, !42, i64 68, !42, i64 72, !41, i64 76, !42, i64 80, !41, i64 84, !41, i64 88, !41, i64 92, !35, i64 96, !35, i64 104, !36, i64 112, !36, i64 1136, !36, i64 1148, !35, i64 1160, !40, i64 1168, !36, i64 1170, !36, i64 1171, !41, i64 1172, !42, i64 1176, !41, i64 1180, !41, i64 1184, !42, i64 1188, !42, i64 1192, !41, i64 1196, !41, i64 1200, !41, i64 1204, !35, i64 1208, !42, i64 1216, !41, i64 1220, !41, i64 1224, !41, i64 1228, !41, i64 1232, !41, i64 1236, !41, i64 1240, !41, i64 1244, !42, i64 1248, !41, i64 1252}
!880 = !{!881, !40, i64 16}
!881 = !{!"Effect", !35, i64 0, !35, i64 8, !40, i64 16, !40, i64 18, !40, i64 20, !40, i64 22}
!882 = !{!39, !35, i64 376}
!883 = distinct !{!883, !44, !45}
!884 = distinct !{!884, !44, !45}
!885 = !{!886, !40, i64 0}
!886 = !{!"ParticleBrushData", !40, i64 0, !40, i64 2, !40, i64 4, !40, i64 6, !42, i64 8, !41, i64 12}
!887 = !{!453, !40, i64 0}
!888 = !{!453, !41, i64 128}
!889 = !{!453, !40, i64 2}
!890 = !{!453, !40, i64 4}
!891 = !{!453, !40, i64 6}
!892 = !{!886, !41, i64 12}
!893 = !{!886, !40, i64 2}
!894 = distinct !{!894, !44, !45}
!895 = distinct !{!895, !44, !45}
!896 = !{!558, !40, i64 128}
!897 = distinct !{!897, !44, !45}
!898 = distinct !{!898, !44, !45}
!899 = !{!47, !41, i64 1052}
!900 = distinct !{!900, !44, !45}
!901 = !{!902, !40, i64 16}
!902 = !{!"bActionStrip", !35, i64 0, !35, i64 8, !40, i64 16, !40, i64 18, !40, i64 20, !40, i64 22, !35, i64 24, !35, i64 32, !35, i64 40, !41, i64 48, !41, i64 52, !41, i64 56, !41, i64 60, !41, i64 64, !41, i64 68, !41, i64 72, !41, i64 76, !41, i64 80, !41, i64 84, !36, i64 88, !36, i64 120, !50, i64 152}
!903 = !{!902, !41, i64 72}
!904 = !{!902, !41, i64 52}
!905 = !{!902, !41, i64 48}
!906 = !{!902, !41, i64 60}
!907 = !{!902, !41, i64 56}
!908 = !{!902, !41, i64 76}
!909 = distinct !{!909, !44, !45}
!910 = !{!415, !41, i64 200}
!911 = !{!415, !41, i64 348}
!912 = !{!415, !41, i64 344}
!913 = distinct !{!913, !44, !45}
!914 = !{!396, !42, i64 320}
!915 = !{!396, !41, i64 324}
!916 = distinct !{!916, !44, !45}
!917 = distinct !{!917, !44, !45}
!918 = !{!48, !35, i64 112}
!919 = distinct !{!919, !44, !45}
!920 = distinct !{!920, !44, !45}
!921 = distinct !{!921, !44, !45}
!922 = !{!47, !35, i64 1272}
!923 = !{!879, !35, i64 1160}
!924 = !{!879, !42, i64 1248}
!925 = !{!879, !42, i64 1192}
!926 = !{!879, !35, i64 1208}
!927 = distinct !{!927, !44, !45}
!928 = distinct !{!928, !44, !45}
!929 = !{!114, !40, i64 16}
!930 = !{!109, !40, i64 1366}
!931 = !{!109, !35, i64 152}
!932 = !{!92, !35, i64 24}
!933 = distinct !{!933, !44, !45}
!934 = !{!628, !35, i64 96}
!935 = distinct !{!935, !44, !45}
!936 = distinct !{!936, !44, !45}
!937 = distinct !{!937, !44, !45}
!938 = !{!47, !35, i64 1240}
!939 = !{!940, !40, i64 6}
!940 = !{!"PartDeflect", !42, i64 0, !40, i64 4, !40, i64 6, !40, i64 8, !40, i64 10, !40, i64 12, !40, i64 14, !40, i64 16, !40, i64 18, !41, i64 20, !41, i64 24, !41, i64 28, !41, i64 32, !41, i64 36, !41, i64 40, !41, i64 44, !41, i64 48, !41, i64 52, !41, i64 56, !41, i64 60, !41, i64 64, !41, i64 68, !41, i64 72, !41, i64 76, !41, i64 80, !41, i64 84, !41, i64 88, !41, i64 92, !41, i64 96, !41, i64 100, !41, i64 104, !41, i64 108, !41, i64 112, !41, i64 116, !41, i64 120, !41, i64 124, !35, i64 128, !35, i64 136, !41, i64 144, !42, i64 148, !35, i64 152}
!941 = !{!940, !41, i64 144}
!942 = distinct !{!942, !44, !45}
!943 = !{!47, !41, i64 1008}
!944 = distinct !{!944, !44, !45}
!945 = distinct !{!945, !44, !45}
!946 = !{!334, !40, i64 286}
!947 = !{!334, !41, i64 328}
!948 = distinct !{!948, !44, !45}
!949 = distinct !{!949, !44, !45}
!950 = !{!579, !40, i64 82}
!951 = !{!579, !40, i64 36}
!952 = !{!579, !40, i64 38}
!953 = distinct !{!953, !44, !45}
!954 = distinct !{!954, !44, !45}
!955 = !{!956, !40, i64 0}
!956 = !{!"bConstraintActuator", !40, i64 0, !40, i64 2, !40, i64 4, !40, i64 6, !40, i64 8, !40, i64 10, !42, i64 12, !36, i64 16, !36, i64 28, !36, i64 40, !36, i64 52, !36, i64 64}
!957 = !{!956, !40, i64 4}
!958 = distinct !{!958, !44, !45}
!959 = !{!334, !41, i64 332}
!960 = distinct !{!960, !44, !45}
!961 = distinct !{!961, !44, !45}
!962 = distinct !{!962, !44, !45}
!963 = !{!334, !41, i64 312}
!964 = !{!334, !40, i64 284}
!965 = !{!334, !41, i64 288}
!966 = !{!334, !41, i64 292}
!967 = !{!334, !41, i64 296}
!968 = !{!334, !41, i64 300}
!969 = !{!334, !41, i64 304}
!970 = !{!334, !41, i64 316}
!971 = !{!334, !41, i64 320}
!972 = !{!334, !41, i64 324}
!973 = !{!334, !41, i64 308}
!974 = distinct !{!974, !44, !45}
!975 = !{!450, !40, i64 108}
!976 = !{!450, !40, i64 110}
!977 = !{!450, !40, i64 350}
!978 = !{!450, !41, i64 352}
!979 = !{!450, !41, i64 356}
!980 = !{!450, !41, i64 368}
!981 = !{!450, !41, i64 360}
!982 = !{!450, !41, i64 364}
!983 = !{!450, !41, i64 372}
!984 = !{!450, !41, i64 376}
!985 = !{!450, !36, i64 394}
!986 = !{!450, !36, i64 395}
!987 = !{!450, !40, i64 392}
!988 = !{!450, !41, i64 380}
!989 = !{!450, !41, i64 384}
!990 = !{!450, !41, i64 388}
!991 = !{!450, !36, i64 408}
!992 = !{!450, !36, i64 412}
!993 = distinct !{!993, !44, !45}
!994 = distinct !{!994, !44, !45}
!995 = distinct !{!995, !44, !45}
!996 = !{!315, !36, i64 336}
!997 = !{!315, !36, i64 337}
!998 = !{!999, !40, i64 242}
!999 = !{!"SpaceIpo", !35, i64 0, !35, i64 8, !50, i64 16, !42, i64 32, !41, i64 36, !36, i64 40, !277, i64 56, !35, i64 216, !50, i64 224, !40, i64 240, !40, i64 242, !42, i64 244, !41, i64 248, !42, i64 252}
!1000 = !{!371, !40, i64 56}
!1001 = distinct !{!1001, !44, !45}
!1002 = distinct !{!1002, !44, !45}
!1003 = !{!70, !40, i64 2836}
!1004 = !{!70, !40, i64 2834}
!1005 = !{!70, !40, i64 2832}
!1006 = !{!70, !41, i64 2840}
!1007 = !{!70, !40, i64 2838}
!1008 = distinct !{!1008, !44, !45}
!1009 = !{!281, !40, i64 204}
!1010 = distinct !{!1010, !44, !45}
!1011 = distinct !{!1011, !44, !45}
!1012 = distinct !{!1012, !44, !45}
!1013 = !{!281, !40, i64 208}
!1014 = !{!281, !40, i64 210}
!1015 = !{!281, !40, i64 212}
!1016 = !{!281, !40, i64 214}
!1017 = distinct !{!1017, !44, !45}
!1018 = !{!940, !42, i64 148}
!1019 = distinct !{!1019, !44, !45}
!1020 = !{!396, !35, i64 168}
!1021 = !{!1022, !35, i64 808}
!1022 = !{!"Strip", !35, i64 0, !35, i64 8, !42, i64 16, !42, i64 20, !42, i64 24, !42, i64 28, !35, i64 32, !36, i64 40, !35, i64 808, !35, i64 816, !35, i64 824, !35, i64 832, !87, i64 840}
!1023 = !{!1024, !40, i64 1034}
!1024 = !{!"StripProxy", !36, i64 0, !36, i64 768, !35, i64 1024, !40, i64 1032, !40, i64 1034, !40, i64 1036, !40, i64 1038}
!1025 = distinct !{!1025, !44, !45}
!1026 = distinct !{!1026, !44, !45}
!1027 = !{!1028, !41, i64 284}
!1028 = !{!"Bone", !35, i64 0, !35, i64 8, !35, i64 16, !35, i64 24, !50, i64 32, !36, i64 48, !41, i64 112, !36, i64 116, !36, i64 128, !36, i64 140, !42, i64 176, !36, i64 180, !36, i64 192, !36, i64 204, !41, i64 268, !41, i64 272, !41, i64 276, !41, i64 280, !41, i64 284, !41, i64 288, !41, i64 292, !41, i64 296, !41, i64 300, !41, i64 304, !36, i64 308, !42, i64 320, !40, i64 324, !36, i64 326}
!1029 = distinct !{!1029, !44, !45}
!1030 = !{!1028, !41, i64 304}
!1031 = !{!1028, !41, i64 300}
!1032 = !{!1028, !41, i64 272}
!1033 = distinct !{!1033, !44, !45}
!1034 = !{!1028, !42, i64 320}
!1035 = distinct !{!1035, !44, !45}
!1036 = !{!1037, !41, i64 0}
!1037 = !{!"NodeTwoFloats", !41, i64 0, !41, i64 4}
!1038 = !{!529, !35, i64 240}
!1039 = !{!64, !40, i64 34}
!1040 = distinct !{!1040, !44, !45}
!1041 = !{!1042, !36, i64 16}
!1042 = !{!"IDProperty", !35, i64 0, !35, i64 8, !36, i64 16, !36, i64 17, !40, i64 18, !36, i64 20, !42, i64 84, !1043, i64 88, !42, i64 120, !42, i64 124}
!1043 = !{!"IDPropertyData", !35, i64 0, !50, i64 8, !42, i64 24, !42, i64 28}
!1044 = distinct !{!1044, !44, !45}
!1045 = !{!1042, !42, i64 120}
