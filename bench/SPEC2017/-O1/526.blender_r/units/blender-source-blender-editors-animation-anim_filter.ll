; ModuleID = 'blender/source/blender/editors/animation/anim_filter.c'
source_filename = "blender/source/blender/editors/animation/anim_filter.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.Global = type { ptr, [1024 x i8], [1024 x i8], i8, i8, i8, %struct.ListBase, i8, i8, i8, i16, i16, i16, i8, i16, i32, i32, i8, i32, i32, [200 x i8] }
%struct.ListBase = type { ptr, ptr }
%struct.bAnimContext = type { ptr, i16, i16, i16, i16, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.SpaceAction = type { ptr, ptr, %struct.ListBase, i32, float, [8 x i16], %struct.View2D, ptr, %struct.bDopeSheet, i8, i8, i16, float }
%struct.View2D = type { %struct.rctf, %struct.rctf, %struct.rcti, %struct.rcti, %struct.rcti, [2 x float], [2 x float], float, float, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, ptr, i32, i32, ptr, ptr }
%struct.rctf = type { float, float, float, float }
%struct.rcti = type { i32, i32, i32, i32 }
%struct.bDopeSheet = type { ptr, %struct.ListBase, ptr, [64 x i8], i32, i32, i32, i32 }
%struct.Object = type { %struct.ID, ptr, ptr, i16, i16, i32, i32, i32, [64 x i8], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.bAnimVizSettings, ptr, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, i32, i32, ptr, ptr, i32, i32, [3 x float], [3 x float], [3 x float], [3 x float], [3 x float], [3 x float], [3 x float], [3 x float], [4 x float], [4 x float], [3 x float], [3 x float], float, float, [4 x [4 x float]], [4 x [4 x float]], [4 x [4 x float]], [4 x [4 x float]], [4 x [4 x float]], i32, i16, i16, i16, i16, i16, i16, i16, i16, i16, i8, i8, i32, i32, i32, i32, i32, float, float, float, float, float, float, float, float, float, float, float, float, i16, i16, i16, i8, i8, i16, i8, i8, float, float, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, float, i16, i16, [4 x float], i32, i32, ptr, i8, i8, i16, [3 x float], %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, ptr, ptr, ptr, i8, i8, i16, float, ptr, ptr, ptr, ptr, i64, i64, i32, i32, %struct.ListBase, %struct.ListBase, ptr, ptr, ptr, [2 x float], ptr, %struct.ListBase, ptr }
%struct.ID = type { ptr, ptr, ptr, ptr, [66 x i8], i16, i32, i32, i32, ptr }
%struct.bAnimVizSettings = type { i32, i32, i32, i32, i16, i16, i16, i16, i16, i16, i16, i16, i32, i32, i32, i32 }
%struct.Scene = type { %struct.ID, ptr, ptr, ptr, ptr, %struct.ListBase, ptr, ptr, [3 x float], [3 x float], [3 x float], [3 x float], i32, i32, i32, i16, i8, [1 x i8], ptr, ptr, ptr, ptr, %struct.RenderData, %struct.AudioData, %struct.ListBase, %struct.ListBase, ptr, ptr, ptr, ptr, ptr, ptr, i16, i16, i32, %struct.ListBase, %struct.GameFraming, %struct.GameData, %struct.UnitSettings, ptr, %struct.PhysicsSettings, ptr, i64, i64, %struct.ColorManagedViewSettings, %struct.ColorManagedDisplaySettings, %struct.ColorManagedColorspaceSettings, ptr }
%struct.RenderData = type { %struct.ImageFormatData, ptr, ptr, %struct.QuicktimeCodecSettings, %struct.FFMpegCodecData, i32, i32, i32, float, i32, i32, i32, i32, i16, i16, float, float, float, float, float, i16, i16, i16, i16, i16, i16, i32, i16, i16, i16, i16, i16, i16, i32, i32, i16, i16, i32, i32, i16, i16, i16, i16, i16, i8, i8, i32, i32, i32, i16, i16, i16, i16, i16, i16, i16, i16, %struct.rctf, %struct.rctf, %struct.rcti, %struct.ListBase, i16, i16, float, float, float, float, i32, float, float, float, float, i16, i16, i16, i16, i16, i16, float, float, i16, i16, float, float, [1024 x i8], i32, i16, i16, [768 x i8], [4 x float], [4 x float], i8, i8, i8, [5 x i8], i32, i16, i16, float, float, i16, i16, float, i16, i16, i32, i16, i16, i16, i16, float, float, ptr, i32, float, [32 x i8], %struct.BakeData, i32, i32 }
%struct.ImageFormatData = type { i8, i8, i8, i8, i8, i8, i8, i8, i16, i16, float, i8, i8, [6 x i8], %struct.ColorManagedViewSettings, %struct.ColorManagedDisplaySettings }
%struct.QuicktimeCodecSettings = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i16, i16, i32, i32, i32 }
%struct.FFMpegCodecData = type { i32, i32, i32, i32, i32, i32, i32, i32, float, i32, i32, i32, i32, i32, i32, i32, ptr }
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
%struct.Base = type { ptr, ptr, i32, i32, i32, i16, i16, ptr }
%struct.Key = type { %struct.ID, ptr, ptr, [32 x i8], i32, i32, %struct.ListBase, ptr, ptr, i16, i16, i16, i16, float, i32 }
%struct.SpaceIpo = type { ptr, ptr, %struct.ListBase, i32, float, [8 x i16], %struct.View2D, ptr, %struct.ListBase, i16, i16, i32, float, i32 }
%struct.SpaceNla = type { ptr, ptr, %struct.ListBase, i32, float, [8 x i16], i16, i16, i32, ptr, %struct.View2D }
%struct.ScrArea = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.rcti, i8, i8, i16, i16, i16, i16, i16, i16, i8, i8, ptr, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase }
%struct.ARegion = type { ptr, ptr, %struct.View2D, %struct.rcti, %struct.rcti, i16, i16, i16, i16, i16, i16, float, i16, i16, i16, i16, i16, i16, i16, i16, ptr, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, ptr, ptr, ptr }
%struct.bAnimListElem = type { ptr, ptr, ptr, i32, i32, i32, i16, i16, ptr, ptr, ptr }
%struct.KeyBlock = type { ptr, ptr, float, float, i16, i16, i16, i16, i32, i32, ptr, [64 x i8], [64 x i8], float, float }
%struct.Main = type { ptr, ptr, [1024 x i8], i16, i16, i16, i16, i64, [16 x i8], i16, ptr, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, [256 x i8], ptr, ptr }
%struct.bGPdata = type { %struct.ID, %struct.ListBase, i32, i16, i16, ptr }
%struct.bGPDlayer = type { ptr, ptr, %struct.ListBase, ptr, i32, i16, i16, [4 x float], [128 x i8] }
%struct.Mask = type { %struct.ID, ptr, %struct.ListBase, i32, i32, i32, i32, i32, i32 }
%struct.MaskLayer = type { ptr, ptr, [64 x i8], %struct.ListBase, %struct.ListBase, ptr, ptr, float, i8, i8, i8, [7 x i8], i8, i8 }
%struct.bAction = type { %struct.ID, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, i32, i32, i32, i32 }
%struct.AnimData = type { ptr, ptr, ptr, %struct.ListBase, ptr, %struct.ListBase, %struct.ListBase, i32, i32, i16, i16, float }
%struct.Material = type { %struct.ID, ptr, i16, i16, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, %struct.VolumeSettings, %struct.GameSettings, float, float, float, float, float, float, float, i16, i16, i16, i8, i8, float, float, i16, i16, float, float, float, float, i16, i16, i32, i32, i32, i32, i16, i16, i16, i16, float, float, float, float, float, float, float, float, float, float, [64 x i8], float, float, float, i32, i8, i8, i8, i8, i16, i16, i16, i8, i8, i16, i16, float, float, [4 x float], float, float, i16, i16, ptr, ptr, i8, i8, i8, i8, i16, i16, float, float, [18 x ptr], ptr, ptr, ptr, ptr, float, float, float, float, float, i16, i16, [3 x float], [3 x float], float, float, float, float, float, float, float, i16, i16, i32, i16, i16, [4 x float], i16, i16, i16, i16, i16, [3 x i16], ptr, %struct.ListBase }
%struct.VolumeSettings = type { float, float, float, float, [3 x float], [3 x float], [3 x float], float, float, float, i16, i16, i16, i16, float, float, float, float }
%struct.GameSettings = type { i32, i32, i32, i32 }
%struct.Lamp = type { %struct.ID, ptr, i16, i16, i32, i16, i16, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, ptr, i16, i16, float, float, float, float, float, float, float, i16, i16, i16, i16, i8, i8, i16, i16, i16, i16, i16, float, float, float, float, i16, i16, i16, i16, i16, i16, float, float, float, float, float, float, float, float, float, float, float, float, float, i16, [2 x i8], ptr, [18 x ptr], i16, i16, [4 x i8], ptr, ptr }
%struct.Camera = type { %struct.ID, ptr, i8, i8, i16, float, float, float, float, float, float, float, float, float, float, float, ptr, ptr, i8, [7 x i8] }
%struct.Curve = type { %struct.ID, ptr, ptr, %struct.ListBase, ptr, ptr, ptr, ptr, ptr, ptr, ptr, [3 x float], [3 x float], [3 x float], i16, i16, i16, i16, float, float, i32, i16, i16, i32, float, float, float, i16, i16, i16, i16, i32, i32, [4 x i8], i16, i8, i8, float, float, float, float, float, float, float, float, float, float, i32, i32, i32, i32, i32, ptr, ptr, [64 x i8], ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, %struct.CharInfo, float, float, float, i8, i8, [2 x i8] }
%struct.CharInfo = type { i16, i16, i8, i8, i16 }
%struct.bArmature = type { %struct.ID, ptr, %struct.ListBase, %struct.ListBase, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i16, i16, i32, i32, i32, i16, i16, i16, i16, i32, i32, i32, i32, i32, i32 }
%struct.Mesh = type { %struct.ID, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.CustomData, %struct.CustomData, %struct.CustomData, %struct.CustomData, %struct.CustomData, i32, i32, i32, i32, i32, i32, i32, [3 x float], [3 x float], [3 x float], i32, i16, i16, float, i32, i8, i8, i8, i8, i8, i8, i16, ptr }
%struct.CustomData = type { ptr, [41 x i32], i32, i32, i32, ptr, ptr }
%struct.Lattice = type { %struct.ID, ptr, i16, i16, i16, i16, i16, i16, i16, i16, i8, i8, i8, i8, i32, float, float, float, float, float, float, ptr, ptr, ptr, ptr, [64 x i8], ptr }
%struct.Speaker = type { %struct.ID, ptr, ptr, float, float, float, float, float, float, float, float, float, float, i16, [3 x i16] }
%struct.World = type { %struct.ID, ptr, i16, i16, i16, i16, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, i16, i16, i16, i16, i16, i16, i16, i16, float, float, float, float, float, float, float, float, float, float, float, float, i16, i16, i16, i16, float, float, float, float, i16, i16, i16, i16, float, float, float, float, float, float, float, i16, i16, i16, i16, i16, i16, ptr, ptr, ptr, [18 x ptr], i16, i16, [2 x i16], ptr, ptr }
%struct.bNodeTree = type { %struct.ID, ptr, ptr, [64 x i8], ptr, ptr, [2 x float], %struct.ListBase, %struct.ListBase, i32, i32, i32, i32, i32, i16, i16, i32, i32, i16, i16, i32, %struct.rctf, %struct.ListBase, %struct.ListBase, ptr, %struct.bNodeInstanceKey, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.bNodeInstanceKey = type { i32 }
%struct.FreestyleLineStyle = type { %struct.ID, ptr, float, float, float, float, float, i32, float, i32, i32, i32, i32, float, float, float, float, float, i32, i16, i16, i16, i16, i16, i16, i32, i32, float, i16, i16, i16, [3 x i16], i16, i16, i16, i16, i16, i16, i32, [18 x ptr], ptr, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase }
%struct.ParticleSettings = type { %struct.ID, ptr, ptr, ptr, ptr, i32, i32, i16, i16, i16, i16, i16, i16, i16, i16, i32, i32, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, float, float, [2 x float], [2 x float], float, float, float, i16, i16, float, float, float, float, float, float, float, float, float, float, float, float, [1 x float], i32, i32, i32, i32, i16, [3 x i16], float, float, float, float, float, float, float, [3 x float], float, float, float, float, float, float, float, [3 x float], float, float, float, float, i32, i32, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, [2 x float], float, float, i32, i32, [18 x ptr], ptr, %struct.ListBase, ptr, ptr, ptr, ptr, ptr, ptr, i16, [3 x i16] }
%struct.Tex = type { %struct.ID, ptr, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, float, float, float, float, i32, i32, i16, i16, i16, i16, i32, i32, i32, i32, float, float, float, %struct.ImageUser, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8, [7 x i8] }
%struct.ImageUser = type { ptr, i32, i32, i32, i32, i8, i8, i8, i8, i16, i16, i16, i16, i32 }
%struct.bActionGroup = type { ptr, ptr, %struct.ListBase, i32, i32, [64 x i8], %struct.ThemeWireColor }
%struct.ThemeWireColor = type { [4 x i8], [4 x i8], [4 x i8], i16, i16 }
%struct.FCurve = type { ptr, ptr, ptr, ptr, %struct.ListBase, ptr, ptr, i32, float, i16, i16, i32, ptr, i32, [3 x float], float, float }
%struct.NlaTrack = type { ptr, ptr, %struct.ListBase, i32, i32, [64 x i8] }
%struct.bPoseChannel = type { ptr, ptr, ptr, %struct.ListBase, [64 x i8], i16, i16, i16, i16, i8, i8, [6 x i8], ptr, ptr, ptr, %struct.ListBase, %struct.ListBase, ptr, ptr, ptr, [3 x float], [3 x float], [3 x float], [4 x float], [3 x float], float, i16, i16, [4 x [4 x float]], [4 x [4 x float]], [4 x [4 x float]], [3 x float], [3 x float], [3 x float], [3 x float], [3 x float], float, float, float, ptr }
%struct.Bone = type { ptr, ptr, ptr, ptr, %struct.ListBase, [64 x i8], float, [3 x float], [3 x float], [3 x [3 x float]], i32, [3 x float], [3 x float], [4 x [4 x float]], float, float, float, float, float, float, float, float, float, float, [3 x float], i32, i16, [1 x i16] }
%struct.Sequence = type { ptr, ptr, ptr, ptr, [64 x i8], i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, float, float, float, i16, i16, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, float, float, ptr, ptr, ptr, %struct.ListBase, ptr, ptr, float, float, float, float, ptr, i32, i32, i32, float, i32, i8, [3 x i8], %struct.ListBase }
%struct.bNode = type { ptr, ptr, ptr, ptr, ptr, [64 x i8], [64 x i8], i32, i16, i16, i16, i16, i16, i16, i16, i16, [3 x float], %struct.ListBase, %struct.ListBase, ptr, ptr, ptr, ptr, %struct.ListBase, float, float, float, float, float, float, float, i32, [64 x i8], i16, i16, float, float, i16, i16, ptr, %struct.rctf, %struct.rctf, %struct.rctf, i16, i16, i32, ptr }
%struct.bAnimChannelType = type { ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.ChannelDriver = type { %struct.ListBase, [256 x i8], ptr, float, float, i32, i32 }
%struct.DriverVar = type { ptr, ptr, [64 x i8], [8 x %struct.DriverTarget], i16, i16, float }
%struct.DriverTarget = type { ptr, ptr, [32 x i8], i16, i16, i32 }
%struct.MTex = type { i16, i16, i16, i16, ptr, ptr, [64 x i8], i8, i8, i8, i8, [3 x float], [3 x float], float, i16, i16, i16, i16, i16, i16, i8, [7 x i8], float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float }
%struct.SceneRenderLayer = type { ptr, ptr, [64 x i8], ptr, ptr, i32, i32, i32, i32, i32, i32, i32, float, %struct.FreestyleConfig }
%struct.FreestyleConfig = type { %struct.ListBase, i32, i32, i32, float, float, float, %struct.ListBase }
%struct.FreestyleLineSet = type { ptr, ptr, [64 x i8], i32, i32, i16, i16, i32, i32, i32, i32, i32, ptr, ptr }
%struct.tAnimFilterModifiersContext = type { ptr, ptr, %struct.ListBase, i64, i32 }
%struct.MetaBall = type { %struct.ID, ptr, %struct.ListBase, %struct.ListBase, ptr, ptr, ptr, i8, i8, i16, i16, i16, [3 x float], [3 x float], [3 x float], float, float, float, ptr }
%struct.IdAdtTemplate = type { %struct.ID, ptr }
%struct.ParticleSystem = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.ListBase, %struct.ListBase, ptr, ptr, ptr, ptr, ptr, ptr, %struct.ListBase, [64 x i8], [4 x [4 x float]], float, float, float, i32, i32, i32, i32, i32, i32, i32, i32, i16, i16, i16, i16, [3 x [64 x i8]], [12 x i16], i16, i16, ptr, ptr, %struct.ListBase, ptr, ptr, i32, i32, ptr, ptr, ptr, float, float }

@.str = private unnamed_addr constant [55 x i8] c"ANIM_animdata_filter() - Invalid datatype argument %d\0A\00", align 1
@MEM_callocN = external local_unnamed_addr global ptr, align 8
@.str.1 = private unnamed_addr constant [20 x i8] c"GraphEdit DopeSheet\00", align 1
@.str.2 = private unnamed_addr constant [18 x i8] c"NlaEdit DopeSheet\00", align 1
@.str.3 = private unnamed_addr constant [14 x i8] c"bAnimListElem\00", align 1
@MEM_freeN = external local_unnamed_addr global ptr, align 8
@.str.4 = private unnamed_addr constant [11 x i8] c"pose.bones\00", align 1
@.str.5 = private unnamed_addr constant [12 x i8] c"pose.bones[\00", align 1
@.str.6 = private unnamed_addr constant [14 x i8] c"sequences_all\00", align 1
@.str.7 = private unnamed_addr constant [15 x i8] c"sequences_all[\00", align 1
@.str.8 = private unnamed_addr constant [6 x i8] c"nodes\00", align 1
@.str.9 = private unnamed_addr constant [7 x i8] c"nodes[\00", align 1
@G = external local_unnamed_addr global %struct.Global, align 8
@.str.11 = private unnamed_addr constant [28 x i8] c"\09Pointer = %p, Name = '%s'\0A\00", align 1
@.str.12 = private unnamed_addr constant [75 x i8] c"ERROR: Unsupported owner_id (i.e. texture stack) for filter textures - %s\0A\00", align 1
@.str.13 = private unnamed_addr constant [68 x i8] c"ERROR: Unsupported channel type (%d) in animdata_filter_animchan()\0A\00", align 1
@__func__.animdata_filter_remove_duplis = private unnamed_addr constant [30 x i8] c"animdata_filter_remove_duplis\00", align 1
@str = private unnamed_addr constant [28 x i8] c"Dope Sheet Error: No scene!\00", align 1

; Function Attrs: nounwind uwtable
define dso_local zeroext i8 @ANIM_animdata_context_getdata(ptr nocapture noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.bAnimContext, ptr %0, i64 0, i32 6
  %3 = load ptr, ptr %2, align 8, !tbaa !34
  %4 = icmp eq ptr %3, null
  br i1 %4, label %147, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.bAnimContext, ptr %0, i64 0, i32 3
  %7 = load i16, ptr %6, align 4, !tbaa !40
  switch i16 %7, label %147 [
    i16 12, label %8
    i16 2, label %86
    i16 13, label %127
  ]

8:                                                ; preds = %5
  %9 = getelementptr inbounds %struct.SpaceAction, ptr %3, i64 0, i32 8
  %10 = getelementptr inbounds %struct.bAnimContext, ptr %0, i64 0, i32 8
  store ptr %9, ptr %10, align 8, !tbaa !41
  %11 = getelementptr inbounds %struct.SpaceAction, ptr %3, i64 0, i32 9
  %12 = load i8, ptr %11, align 8, !tbaa !42
  switch i8 %12, label %83 [
    i8 0, label %13
    i8 1, label %29
    i8 2, label %65
    i8 4, label %71
    i8 3, label %77
  ]

13:                                               ; preds = %8
  %14 = getelementptr inbounds %struct.bAnimContext, ptr %0, i64 0, i32 10
  %15 = load ptr, ptr %14, align 8, !tbaa !51
  %16 = icmp eq ptr %15, null
  br i1 %16, label %23, label %17

17:                                               ; preds = %13
  %18 = getelementptr inbounds %struct.Object, ptr %15, i64 0, i32 1
  %19 = load ptr, ptr %18, align 8, !tbaa !52
  %20 = icmp eq ptr %19, null
  br i1 %20, label %23, label %21

21:                                               ; preds = %17
  %22 = load ptr, ptr %19, align 8, !tbaa !57
  br label %23

23:                                               ; preds = %13, %17, %21
  %24 = phi ptr [ %22, %21 ], [ null, %17 ], [ null, %13 ]
  %25 = getelementptr inbounds %struct.SpaceAction, ptr %3, i64 0, i32 7
  store ptr %24, ptr %25, align 8, !tbaa !59
  %26 = getelementptr inbounds %struct.bAnimContext, ptr %0, i64 0, i32 1
  store i16 1, ptr %26, align 8, !tbaa !60
  store ptr %24, ptr %0, align 8, !tbaa !61
  %27 = zext i8 %12 to i16
  %28 = getelementptr inbounds %struct.bAnimContext, ptr %0, i64 0, i32 2
  store i16 %27, ptr %28, align 2, !tbaa !62
  br label %143

29:                                               ; preds = %8
  %30 = getelementptr inbounds %struct.bAnimContext, ptr %0, i64 0, i32 1
  store i16 2, ptr %30, align 8, !tbaa !60
  %31 = getelementptr inbounds %struct.bAnimContext, ptr %0, i64 0, i32 9
  %32 = load ptr, ptr %31, align 8, !tbaa !63
  %33 = getelementptr inbounds %struct.Scene, ptr %32, i64 0, i32 6
  %34 = load ptr, ptr %33, align 8, !tbaa !64
  %35 = icmp eq ptr %34, null
  br i1 %35, label %39, label %36

36:                                               ; preds = %29
  %37 = getelementptr inbounds %struct.Base, ptr %34, i64 0, i32 7
  %38 = load ptr, ptr %37, align 8, !tbaa !81
  br label %39

39:                                               ; preds = %36, %29
  %40 = phi ptr [ %38, %36 ], [ null, %29 ]
  %41 = icmp eq ptr %40, null
  br i1 %41, label %50, label %42

42:                                               ; preds = %39
  %43 = tail call ptr @BKE_key_from_object(ptr noundef nonnull %40) #7
  %44 = icmp eq ptr %43, null
  br i1 %44, label %49, label %45

45:                                               ; preds = %42
  %46 = getelementptr inbounds %struct.Key, ptr %43, i64 0, i32 9
  %47 = load i16, ptr %46, align 8, !tbaa !83
  %48 = icmp eq i16 %47, 1
  br i1 %48, label %50, label %49

49:                                               ; preds = %45, %42
  br label %50

50:                                               ; preds = %49, %45, %39
  %51 = phi ptr [ null, %49 ], [ null, %39 ], [ %43, %45 ]
  store ptr %51, ptr %0, align 8, !tbaa !61
  %52 = icmp eq ptr %51, null
  br i1 %52, label %59, label %53

53:                                               ; preds = %50
  %54 = getelementptr inbounds %struct.Key, ptr %51, i64 0, i32 1
  %55 = load ptr, ptr %54, align 8, !tbaa !85
  %56 = icmp eq ptr %55, null
  br i1 %56, label %59, label %57

57:                                               ; preds = %53
  %58 = load ptr, ptr %55, align 8, !tbaa !57
  br label %59

59:                                               ; preds = %50, %53, %57
  %60 = phi ptr [ %58, %57 ], [ null, %53 ], [ null, %50 ]
  %61 = getelementptr inbounds %struct.SpaceAction, ptr %3, i64 0, i32 7
  store ptr %60, ptr %61, align 8, !tbaa !59
  %62 = load i8, ptr %11, align 8, !tbaa !42
  %63 = zext i8 %62 to i16
  %64 = getelementptr inbounds %struct.bAnimContext, ptr %0, i64 0, i32 2
  store i16 %63, ptr %64, align 2, !tbaa !62
  br label %143

65:                                               ; preds = %8
  %66 = getelementptr inbounds %struct.bAnimContext, ptr %0, i64 0, i32 9
  %67 = load ptr, ptr %66, align 8, !tbaa !63
  store ptr %67, ptr %9, align 8, !tbaa !86
  %68 = getelementptr inbounds %struct.bAnimContext, ptr %0, i64 0, i32 1
  store i16 3, ptr %68, align 8, !tbaa !60
  store ptr %9, ptr %0, align 8, !tbaa !61
  %69 = zext i8 %12 to i16
  %70 = getelementptr inbounds %struct.bAnimContext, ptr %0, i64 0, i32 2
  store i16 %69, ptr %70, align 2, !tbaa !62
  br label %143

71:                                               ; preds = %8
  %72 = getelementptr inbounds %struct.bAnimContext, ptr %0, i64 0, i32 9
  %73 = load ptr, ptr %72, align 8, !tbaa !63
  store ptr %73, ptr %9, align 8, !tbaa !86
  %74 = getelementptr inbounds %struct.bAnimContext, ptr %0, i64 0, i32 1
  store i16 9, ptr %74, align 8, !tbaa !60
  store ptr %9, ptr %0, align 8, !tbaa !61
  %75 = zext i8 %12 to i16
  %76 = getelementptr inbounds %struct.bAnimContext, ptr %0, i64 0, i32 2
  store i16 %75, ptr %76, align 2, !tbaa !62
  br label %143

77:                                               ; preds = %8
  %78 = getelementptr inbounds %struct.bAnimContext, ptr %0, i64 0, i32 9
  %79 = load ptr, ptr %78, align 8, !tbaa !63
  store ptr %79, ptr %9, align 8, !tbaa !86
  %80 = getelementptr inbounds %struct.bAnimContext, ptr %0, i64 0, i32 1
  store i16 4, ptr %80, align 8, !tbaa !60
  store ptr %9, ptr %0, align 8, !tbaa !61
  %81 = zext i8 %12 to i16
  %82 = getelementptr inbounds %struct.bAnimContext, ptr %0, i64 0, i32 2
  store i16 %81, ptr %82, align 2, !tbaa !62
  br label %143

83:                                               ; preds = %8
  %84 = getelementptr inbounds %struct.bAnimContext, ptr %0, i64 0, i32 1
  store i16 0, ptr %84, align 8, !tbaa !60
  store ptr null, ptr %0, align 8, !tbaa !61
  %85 = getelementptr inbounds %struct.bAnimContext, ptr %0, i64 0, i32 2
  store i16 -1, ptr %85, align 2, !tbaa !62
  br label %147

86:                                               ; preds = %5
  %87 = getelementptr inbounds %struct.SpaceIpo, ptr %3, i64 0, i32 7
  %88 = load ptr, ptr %87, align 8, !tbaa !87
  %89 = icmp eq ptr %88, null
  br i1 %89, label %90, label %95

90:                                               ; preds = %86
  %91 = load ptr, ptr @MEM_callocN, align 8, !tbaa !89
  %92 = tail call ptr %91(i64 noundef 112, ptr noundef nonnull @.str.1) #7
  store ptr %92, ptr %87, align 8, !tbaa !87
  %93 = getelementptr inbounds %struct.bAnimContext, ptr %0, i64 0, i32 9
  %94 = load ptr, ptr %93, align 8, !tbaa !63
  store ptr %94, ptr %92, align 8, !tbaa !90
  br label %95

95:                                               ; preds = %90, %86
  %96 = load ptr, ptr %87, align 8, !tbaa !87
  %97 = getelementptr inbounds %struct.bAnimContext, ptr %0, i64 0, i32 8
  store ptr %96, ptr %97, align 8, !tbaa !41
  %98 = getelementptr inbounds %struct.SpaceIpo, ptr %3, i64 0, i32 11
  %99 = load i32, ptr %98, align 4, !tbaa !91
  %100 = getelementptr inbounds %struct.bDopeSheet, ptr %96, i64 0, i32 4
  %101 = load i32, ptr %100, align 8, !tbaa !92
  %102 = and i32 %101, -9
  %103 = lshr i32 %99, 2
  %104 = and i32 %103, 8
  %105 = or disjoint i32 %102, %104
  store i32 %105, ptr %100, align 8, !tbaa !92
  %106 = getelementptr inbounds %struct.SpaceIpo, ptr %3, i64 0, i32 9
  %107 = load i16, ptr %106, align 8, !tbaa !93
  switch i16 %107, label %124 [
    i16 0, label %108
    i16 1, label %116
  ]

108:                                              ; preds = %95
  %109 = getelementptr inbounds %struct.bAnimContext, ptr %0, i64 0, i32 9
  %110 = load ptr, ptr %109, align 8, !tbaa !63
  store ptr %110, ptr %96, align 8, !tbaa !90
  %111 = getelementptr inbounds %struct.bDopeSheet, ptr %96, i64 0, i32 4
  %112 = load i32, ptr %111, align 8, !tbaa !92
  %113 = and i32 %112, -3
  store i32 %113, ptr %111, align 8, !tbaa !92
  %114 = getelementptr inbounds %struct.bAnimContext, ptr %0, i64 0, i32 1
  store i16 5, ptr %114, align 8, !tbaa !60
  store ptr %96, ptr %0, align 8, !tbaa !61
  %115 = getelementptr inbounds %struct.bAnimContext, ptr %0, i64 0, i32 2
  store i16 %107, ptr %115, align 2, !tbaa !62
  br label %143

116:                                              ; preds = %95
  %117 = getelementptr inbounds %struct.bAnimContext, ptr %0, i64 0, i32 9
  %118 = load ptr, ptr %117, align 8, !tbaa !63
  store ptr %118, ptr %96, align 8, !tbaa !90
  %119 = getelementptr inbounds %struct.bDopeSheet, ptr %96, i64 0, i32 4
  %120 = load i32, ptr %119, align 8, !tbaa !92
  %121 = or i32 %120, 2
  store i32 %121, ptr %119, align 8, !tbaa !92
  %122 = getelementptr inbounds %struct.bAnimContext, ptr %0, i64 0, i32 1
  store i16 6, ptr %122, align 8, !tbaa !60
  store ptr %96, ptr %0, align 8, !tbaa !61
  %123 = getelementptr inbounds %struct.bAnimContext, ptr %0, i64 0, i32 2
  store i16 %107, ptr %123, align 2, !tbaa !62
  br label %143

124:                                              ; preds = %95
  %125 = getelementptr inbounds %struct.bAnimContext, ptr %0, i64 0, i32 1
  store i16 0, ptr %125, align 8, !tbaa !60
  store ptr null, ptr %0, align 8, !tbaa !61
  %126 = getelementptr inbounds %struct.bAnimContext, ptr %0, i64 0, i32 2
  store i16 -1, ptr %126, align 2, !tbaa !62
  br label %147

127:                                              ; preds = %5
  %128 = getelementptr inbounds %struct.SpaceNla, ptr %3, i64 0, i32 9
  %129 = load ptr, ptr %128, align 8, !tbaa !94
  %130 = icmp eq ptr %129, null
  br i1 %130, label %131, label %134

131:                                              ; preds = %127
  %132 = load ptr, ptr @MEM_callocN, align 8, !tbaa !89
  %133 = tail call ptr %132(i64 noundef 112, ptr noundef nonnull @.str.2) #7
  store ptr %133, ptr %128, align 8, !tbaa !94
  br label %134

134:                                              ; preds = %127, %131
  %135 = load ptr, ptr %128, align 8, !tbaa !94
  %136 = getelementptr inbounds %struct.bAnimContext, ptr %0, i64 0, i32 8
  store ptr %135, ptr %136, align 8, !tbaa !41
  %137 = getelementptr inbounds %struct.bAnimContext, ptr %0, i64 0, i32 9
  %138 = load ptr, ptr %137, align 8, !tbaa !63
  store ptr %138, ptr %135, align 8, !tbaa !90
  %139 = getelementptr inbounds %struct.bDopeSheet, ptr %135, i64 0, i32 4
  %140 = load i32, ptr %139, align 8, !tbaa !92
  %141 = or i32 %140, 4
  store i32 %141, ptr %139, align 8, !tbaa !92
  %142 = getelementptr inbounds %struct.bAnimContext, ptr %0, i64 0, i32 1
  store i16 7, ptr %142, align 8, !tbaa !60
  store ptr %135, ptr %0, align 8, !tbaa !61
  br label %143

143:                                              ; preds = %134, %23, %59, %65, %71, %77, %108, %116
  %144 = load ptr, ptr %0, align 8, !tbaa !61
  %145 = icmp ne ptr %144, null
  %146 = zext i1 %145 to i8
  br label %147

147:                                              ; preds = %5, %1, %83, %124, %143
  %148 = phi i8 [ %146, %143 ], [ 0, %124 ], [ 0, %83 ], [ 0, %1 ], [ 0, %5 ]
  ret i8 %148
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind uwtable
define dso_local zeroext i8 @ANIM_animdata_get_context(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = tail call ptr @CTX_wm_area(ptr noundef %0) #7
  %4 = tail call ptr @CTX_wm_region(ptr noundef %0) #7
  %5 = tail call ptr @CTX_wm_space_data(ptr noundef %0) #7
  %6 = tail call ptr @CTX_data_scene(ptr noundef %0) #7
  %7 = icmp eq ptr %1, null
  br i1 %7, label %43, label %8

8:                                                ; preds = %2
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %1, i8 0, i64 80, i1 false)
  %9 = getelementptr inbounds %struct.bAnimContext, ptr %1, i64 0, i32 9
  store ptr %6, ptr %9, align 8, !tbaa !63
  %10 = icmp eq ptr %6, null
  br i1 %10, label %23, label %11

11:                                               ; preds = %8
  %12 = tail call ptr @ED_context_get_markers(ptr noundef %0) #7
  %13 = getelementptr inbounds %struct.bAnimContext, ptr %1, i64 0, i32 11
  store ptr %12, ptr %13, align 8, !tbaa !96
  %14 = getelementptr inbounds %struct.Scene, ptr %6, i64 0, i32 6
  %15 = load ptr, ptr %14, align 8, !tbaa !64
  %16 = icmp eq ptr %15, null
  br i1 %16, label %20, label %17

17:                                               ; preds = %11
  %18 = getelementptr inbounds %struct.Base, ptr %15, i64 0, i32 7
  %19 = load ptr, ptr %18, align 8, !tbaa !81
  br label %20

20:                                               ; preds = %11, %17
  %21 = phi ptr [ %19, %17 ], [ null, %11 ]
  %22 = getelementptr inbounds %struct.bAnimContext, ptr %1, i64 0, i32 10
  store ptr %21, ptr %22, align 8, !tbaa !51
  br label %23

23:                                               ; preds = %20, %8
  %24 = getelementptr inbounds %struct.bAnimContext, ptr %1, i64 0, i32 5
  store ptr %3, ptr %24, align 8, !tbaa !97
  %25 = getelementptr inbounds %struct.bAnimContext, ptr %1, i64 0, i32 7
  store ptr %4, ptr %25, align 8, !tbaa !98
  %26 = getelementptr inbounds %struct.bAnimContext, ptr %1, i64 0, i32 6
  store ptr %5, ptr %26, align 8, !tbaa !34
  %27 = icmp eq ptr %3, null
  br i1 %27, label %32, label %28

28:                                               ; preds = %23
  %29 = getelementptr inbounds %struct.ScrArea, ptr %3, i64 0, i32 8
  %30 = load i8, ptr %29, align 8, !tbaa !99
  %31 = zext i8 %30 to i16
  br label %32

32:                                               ; preds = %23, %28
  %33 = phi i16 [ %31, %28 ], [ 0, %23 ]
  %34 = getelementptr inbounds %struct.bAnimContext, ptr %1, i64 0, i32 3
  store i16 %33, ptr %34, align 4, !tbaa !40
  %35 = icmp eq ptr %4, null
  br i1 %35, label %39, label %36

36:                                               ; preds = %32
  %37 = getelementptr inbounds %struct.ARegion, ptr %4, i64 0, i32 8
  %38 = load i16, ptr %37, align 2, !tbaa !101
  br label %39

39:                                               ; preds = %32, %36
  %40 = phi i16 [ %38, %36 ], [ 0, %32 ]
  %41 = getelementptr inbounds %struct.bAnimContext, ptr %1, i64 0, i32 4
  store i16 %40, ptr %41, align 2, !tbaa !103
  %42 = tail call zeroext i8 @ANIM_animdata_context_getdata(ptr noundef nonnull %1), !range !104
  br label %43

43:                                               ; preds = %2, %39
  %44 = phi i8 [ %42, %39 ], [ 0, %2 ]
  ret i8 %44
}

declare ptr @CTX_wm_area(ptr noundef) local_unnamed_addr #2

declare ptr @CTX_wm_region(ptr noundef) local_unnamed_addr #2

declare ptr @CTX_wm_space_data(ptr noundef) local_unnamed_addr #2

declare ptr @CTX_data_scene(ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #3

declare ptr @ED_context_get_markers(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local i64 @ANIM_animdata_filter(ptr noundef %0, ptr noundef %1, i32 noundef %2, ptr noundef %3, i32 noundef %4) local_unnamed_addr #0 {
  %6 = alloca %struct.ListBase, align 8
  %7 = alloca %struct.ListBase, align 8
  %8 = icmp ne ptr %3, null
  %9 = icmp ne ptr %1, null
  %10 = and i1 %9, %8
  br i1 %10, label %11, label %597

11:                                               ; preds = %5
  switch i32 %4, label %555 [
    i32 1, label %12
    i32 2, label %73
    i32 3, label %186
    i32 9, label %341
    i32 4, label %498
    i32 5, label %534
    i32 6, label %534
    i32 7, label %534
    i32 8, label %535
  ]

12:                                               ; preds = %11
  %13 = getelementptr inbounds %struct.bAnimContext, ptr %0, i64 0, i32 10
  %14 = load ptr, ptr %13, align 8, !tbaa !51
  %15 = getelementptr inbounds %struct.bAnimContext, ptr %0, i64 0, i32 6
  %16 = load ptr, ptr %15, align 8, !tbaa !34
  %17 = icmp eq ptr %16, null
  %18 = getelementptr inbounds %struct.SpaceAction, ptr %16, i64 0, i32 8
  %19 = select i1 %17, ptr null, ptr %18
  %20 = and i32 %2, 1024
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %39, label %22

22:                                               ; preds = %12
  %23 = getelementptr inbounds %struct.Object, ptr %14, i64 0, i32 1
  %24 = load ptr, ptr %23, align 8, !tbaa !52
  %25 = icmp eq ptr %24, null
  br i1 %25, label %557, label %26

26:                                               ; preds = %22
  %27 = and i32 %2, 1073741824
  %28 = icmp eq i32 %27, 0
  br i1 %28, label %29, label %597

29:                                               ; preds = %26
  %30 = load ptr, ptr @MEM_callocN, align 8, !tbaa !89
  %31 = tail call ptr %30(i64 noundef 64, ptr noundef nonnull @.str.3) #7
  %32 = getelementptr inbounds %struct.bAnimListElem, ptr %31, i64 0, i32 2
  store ptr %24, ptr %32, align 8, !tbaa !105
  %33 = getelementptr inbounds %struct.bAnimListElem, ptr %31, i64 0, i32 3
  store i32 1, ptr %33, align 8, !tbaa !107
  %34 = getelementptr inbounds %struct.bAnimListElem, ptr %31, i64 0, i32 9
  store ptr %14, ptr %34, align 8, !tbaa !108
  %35 = tail call ptr @BKE_animdata_from_id(ptr noundef %14) #7
  %36 = getelementptr inbounds %struct.bAnimListElem, ptr %31, i64 0, i32 10
  store ptr %35, ptr %36, align 8, !tbaa !109
  %37 = icmp eq ptr %31, null
  br i1 %37, label %557, label %38

38:                                               ; preds = %29
  tail call void @BLI_addtail(ptr noundef nonnull %1, ptr noundef nonnull %31) #7
  br label %557

39:                                               ; preds = %12
  %40 = icmp eq ptr %0, null
  %41 = select i1 %40, i1 true, i1 %17
  br i1 %41, label %71, label %42

42:                                               ; preds = %39
  %43 = getelementptr inbounds %struct.bAnimContext, ptr %0, i64 0, i32 3
  %44 = load i16, ptr %43, align 4, !tbaa !40
  %45 = icmp ne i16 %44, 12
  %46 = and i32 %2, 8
  %47 = icmp eq i32 %46, 0
  %48 = or i1 %47, %45
  br i1 %48, label %71, label %49

49:                                               ; preds = %42
  %50 = getelementptr inbounds %struct.SpaceAction, ptr %16, i64 0, i32 8, i32 4
  %51 = load i32, ptr %50, align 8, !tbaa !92
  %52 = and i32 %51, 16
  %53 = icmp eq i32 %52, 0
  br i1 %53, label %71, label %54

54:                                               ; preds = %49
  %55 = load ptr, ptr @MEM_callocN, align 8, !tbaa !89
  %56 = tail call ptr %55(i64 noundef 64, ptr noundef nonnull @.str.3) #7
  %57 = getelementptr inbounds %struct.bAnimListElem, ptr %56, i64 0, i32 2
  store ptr %0, ptr %57, align 8, !tbaa !105
  %58 = getelementptr inbounds %struct.bAnimListElem, ptr %56, i64 0, i32 3
  store i32 3, ptr %58, align 8, !tbaa !107
  %59 = getelementptr inbounds %struct.bAnimListElem, ptr %56, i64 0, i32 9
  store ptr null, ptr %59, align 8, !tbaa !108
  %60 = tail call ptr @BKE_animdata_from_id(ptr noundef null) #7
  %61 = getelementptr inbounds %struct.bAnimListElem, ptr %56, i64 0, i32 10
  store ptr %60, ptr %61, align 8, !tbaa !109
  %62 = getelementptr inbounds %struct.bAnimListElem, ptr %56, i64 0, i32 8
  store ptr null, ptr %62, align 8, !tbaa !110
  %63 = getelementptr inbounds %struct.bAnimListElem, ptr %56, i64 0, i32 7
  store i16 5, ptr %63, align 2, !tbaa !111
  %64 = icmp eq ptr %56, null
  br i1 %64, label %66, label %65

65:                                               ; preds = %54
  tail call void @BLI_addtail(ptr noundef %1, ptr noundef nonnull %56) #7
  br label %66

66:                                               ; preds = %65, %54
  %67 = getelementptr inbounds %struct.SpaceAction, ptr %16, i64 0, i32 8, i32 5
  %68 = load i32, ptr %67, align 4, !tbaa !112
  %69 = and i32 %68, 1
  %70 = icmp eq i32 %69, 0
  br i1 %70, label %71, label %557

71:                                               ; preds = %42, %39, %49, %66
  %72 = tail call fastcc i64 @animfilter_action(ptr noundef %0, ptr noundef nonnull %1, ptr noundef %19, ptr noundef nonnull %3, i32 noundef %2, ptr noundef %14)
  br label %557

73:                                               ; preds = %11
  %74 = and i32 %2, 1024
  %75 = icmp eq i32 %74, 0
  br i1 %75, label %93, label %76

76:                                               ; preds = %73
  %77 = getelementptr inbounds %struct.Key, ptr %3, i64 0, i32 1
  %78 = load ptr, ptr %77, align 8, !tbaa !85
  %79 = icmp eq ptr %78, null
  br i1 %79, label %557, label %80

80:                                               ; preds = %76
  %81 = and i32 %2, 1073741824
  %82 = icmp eq i32 %81, 0
  br i1 %82, label %83, label %597

83:                                               ; preds = %80
  %84 = load ptr, ptr @MEM_callocN, align 8, !tbaa !89
  %85 = tail call ptr %84(i64 noundef 64, ptr noundef nonnull @.str.3) #7
  %86 = getelementptr inbounds %struct.bAnimListElem, ptr %85, i64 0, i32 2
  store ptr %78, ptr %86, align 8, !tbaa !105
  %87 = getelementptr inbounds %struct.bAnimListElem, ptr %85, i64 0, i32 3
  store i32 1, ptr %87, align 8, !tbaa !107
  %88 = getelementptr inbounds %struct.bAnimListElem, ptr %85, i64 0, i32 9
  store ptr %3, ptr %88, align 8, !tbaa !108
  %89 = tail call ptr @BKE_animdata_from_id(ptr noundef nonnull %3) #7
  %90 = getelementptr inbounds %struct.bAnimListElem, ptr %85, i64 0, i32 10
  store ptr %89, ptr %90, align 8, !tbaa !109
  %91 = icmp eq ptr %85, null
  br i1 %91, label %557, label %92

92:                                               ; preds = %83
  tail call void @BLI_addtail(ptr noundef nonnull %1, ptr noundef nonnull %85) #7
  br label %557

93:                                               ; preds = %73
  %94 = icmp eq ptr %0, null
  br i1 %94, label %128, label %95

95:                                               ; preds = %93
  %96 = getelementptr inbounds %struct.bAnimContext, ptr %0, i64 0, i32 6
  %97 = load ptr, ptr %96, align 8, !tbaa !34
  %98 = icmp eq ptr %97, null
  br i1 %98, label %128, label %99

99:                                               ; preds = %95
  %100 = getelementptr inbounds %struct.bAnimContext, ptr %0, i64 0, i32 3
  %101 = load i16, ptr %100, align 4, !tbaa !40
  %102 = icmp ne i16 %101, 12
  %103 = and i32 %2, 8
  %104 = icmp eq i32 %103, 0
  %105 = or i1 %104, %102
  br i1 %105, label %128, label %106

106:                                              ; preds = %99
  %107 = getelementptr inbounds %struct.SpaceAction, ptr %97, i64 0, i32 8, i32 4
  %108 = load i32, ptr %107, align 8, !tbaa !92
  %109 = and i32 %108, 16
  %110 = icmp eq i32 %109, 0
  br i1 %110, label %128, label %111

111:                                              ; preds = %106
  %112 = load ptr, ptr @MEM_callocN, align 8, !tbaa !89
  %113 = tail call ptr %112(i64 noundef 64, ptr noundef nonnull @.str.3) #7
  %114 = getelementptr inbounds %struct.bAnimListElem, ptr %113, i64 0, i32 2
  store ptr %0, ptr %114, align 8, !tbaa !105
  %115 = getelementptr inbounds %struct.bAnimListElem, ptr %113, i64 0, i32 3
  store i32 3, ptr %115, align 8, !tbaa !107
  %116 = getelementptr inbounds %struct.bAnimListElem, ptr %113, i64 0, i32 9
  store ptr null, ptr %116, align 8, !tbaa !108
  %117 = tail call ptr @BKE_animdata_from_id(ptr noundef null) #7
  %118 = getelementptr inbounds %struct.bAnimListElem, ptr %113, i64 0, i32 10
  store ptr %117, ptr %118, align 8, !tbaa !109
  %119 = getelementptr inbounds %struct.bAnimListElem, ptr %113, i64 0, i32 8
  store ptr null, ptr %119, align 8, !tbaa !110
  %120 = getelementptr inbounds %struct.bAnimListElem, ptr %113, i64 0, i32 7
  store i16 5, ptr %120, align 2, !tbaa !111
  %121 = icmp eq ptr %113, null
  br i1 %121, label %123, label %122

122:                                              ; preds = %111
  tail call void @BLI_addtail(ptr noundef %1, ptr noundef nonnull %113) #7
  br label %123

123:                                              ; preds = %122, %111
  %124 = getelementptr inbounds %struct.SpaceAction, ptr %97, i64 0, i32 8, i32 5
  %125 = load i32, ptr %124, align 4, !tbaa !112
  %126 = and i32 %125, 1
  %127 = icmp eq i32 %126, 0
  br i1 %127, label %128, label %557

128:                                              ; preds = %106, %123, %93, %95, %99
  %129 = and i32 %2, 8
  %130 = icmp eq i32 %129, 0
  br i1 %130, label %177, label %131

131:                                              ; preds = %128
  %132 = getelementptr inbounds %struct.Key, ptr %3, i64 0, i32 6
  %133 = load ptr, ptr %132, align 8, !tbaa !89
  %134 = icmp eq ptr %133, null
  br i1 %134, label %557, label %135

135:                                              ; preds = %131
  %136 = and i32 %2, 256
  %137 = icmp eq i32 %136, 0
  %138 = and i32 %2, 192
  %139 = icmp eq i32 %138, 0
  %140 = and i32 %2, 64
  %141 = icmp eq i32 %140, 0
  %142 = and i32 %2, 128
  %143 = icmp eq i32 %142, 0
  %144 = and i32 %2, 1073741824
  %145 = icmp eq i32 %144, 0
  br label %146

146:                                              ; preds = %174, %135
  %147 = phi ptr [ %133, %135 ], [ %175, %174 ]
  %148 = load ptr, ptr %132, align 8, !tbaa !113
  %149 = icmp eq ptr %147, %148
  br i1 %149, label %174, label %150

150:                                              ; preds = %146
  br i1 %137, label %156, label %151

151:                                              ; preds = %150
  %152 = getelementptr inbounds %struct.KeyBlock, ptr %147, i64 0, i32 7
  %153 = load i16, ptr %152, align 2, !tbaa !114
  %154 = and i16 %153, 4
  %155 = icmp eq i16 %154, 0
  br i1 %155, label %156, label %174

156:                                              ; preds = %151, %150
  br i1 %139, label %169, label %157

157:                                              ; preds = %156
  br i1 %141, label %163, label %158

158:                                              ; preds = %157
  %159 = getelementptr inbounds %struct.KeyBlock, ptr %147, i64 0, i32 7
  %160 = load i16, ptr %159, align 2, !tbaa !114
  %161 = and i16 %160, 2
  %162 = icmp eq i16 %161, 0
  br i1 %162, label %163, label %169

163:                                              ; preds = %158, %157
  br i1 %143, label %174, label %164

164:                                              ; preds = %163
  %165 = getelementptr inbounds %struct.KeyBlock, ptr %147, i64 0, i32 7
  %166 = load i16, ptr %165, align 2, !tbaa !114
  %167 = and i16 %166, 2
  %168 = icmp eq i16 %167, 0
  br i1 %168, label %169, label %174

169:                                              ; preds = %164, %158, %156
  br i1 %145, label %170, label %557

170:                                              ; preds = %169
  %171 = tail call fastcc ptr @make_new_animlistelem(ptr noundef nonnull %147, i16 noundef signext 25, ptr noundef nonnull %3)
  %172 = icmp eq ptr %171, null
  br i1 %172, label %174, label %173

173:                                              ; preds = %170
  tail call void @BLI_addtail(ptr noundef %1, ptr noundef nonnull %171) #7
  br label %174

174:                                              ; preds = %173, %170, %164, %163, %151, %146
  %175 = load ptr, ptr %147, align 8, !tbaa !89
  %176 = icmp eq ptr %175, null
  br i1 %176, label %557, label %146, !llvm.loop !116

177:                                              ; preds = %128
  %178 = getelementptr inbounds %struct.Key, ptr %3, i64 0, i32 1
  %179 = load ptr, ptr %178, align 8, !tbaa !85
  %180 = icmp eq ptr %179, null
  br i1 %180, label %557, label %181

181:                                              ; preds = %177
  %182 = load ptr, ptr %179, align 8, !tbaa !57
  %183 = icmp eq ptr %182, null
  br i1 %183, label %557, label %184

184:                                              ; preds = %181
  %185 = tail call fastcc i64 @animfilter_action(ptr noundef %0, ptr noundef %1, ptr noundef null, ptr noundef nonnull %182, i32 noundef %2, ptr noundef nonnull %3)
  br label %557

186:                                              ; preds = %11
  %187 = icmp eq ptr %0, null
  br i1 %187, label %221, label %188

188:                                              ; preds = %186
  %189 = getelementptr inbounds %struct.bAnimContext, ptr %0, i64 0, i32 6
  %190 = load ptr, ptr %189, align 8, !tbaa !34
  %191 = icmp eq ptr %190, null
  br i1 %191, label %221, label %192

192:                                              ; preds = %188
  %193 = getelementptr inbounds %struct.bAnimContext, ptr %0, i64 0, i32 3
  %194 = load i16, ptr %193, align 4, !tbaa !40
  %195 = icmp ne i16 %194, 12
  %196 = and i32 %2, 8
  %197 = icmp eq i32 %196, 0
  %198 = or i1 %197, %195
  br i1 %198, label %221, label %199

199:                                              ; preds = %192
  %200 = getelementptr inbounds %struct.SpaceAction, ptr %190, i64 0, i32 8, i32 4
  %201 = load i32, ptr %200, align 8, !tbaa !92
  %202 = and i32 %201, 16
  %203 = icmp eq i32 %202, 0
  br i1 %203, label %221, label %204

204:                                              ; preds = %199
  %205 = load ptr, ptr @MEM_callocN, align 8, !tbaa !89
  %206 = tail call ptr %205(i64 noundef 64, ptr noundef nonnull @.str.3) #7
  %207 = getelementptr inbounds %struct.bAnimListElem, ptr %206, i64 0, i32 2
  store ptr %0, ptr %207, align 8, !tbaa !105
  %208 = getelementptr inbounds %struct.bAnimListElem, ptr %206, i64 0, i32 3
  store i32 3, ptr %208, align 8, !tbaa !107
  %209 = getelementptr inbounds %struct.bAnimListElem, ptr %206, i64 0, i32 9
  store ptr null, ptr %209, align 8, !tbaa !108
  %210 = tail call ptr @BKE_animdata_from_id(ptr noundef null) #7
  %211 = getelementptr inbounds %struct.bAnimListElem, ptr %206, i64 0, i32 10
  store ptr %210, ptr %211, align 8, !tbaa !109
  %212 = getelementptr inbounds %struct.bAnimListElem, ptr %206, i64 0, i32 8
  store ptr null, ptr %212, align 8, !tbaa !110
  %213 = getelementptr inbounds %struct.bAnimListElem, ptr %206, i64 0, i32 7
  store i16 5, ptr %213, align 2, !tbaa !111
  %214 = icmp eq ptr %206, null
  br i1 %214, label %216, label %215

215:                                              ; preds = %204
  tail call void @BLI_addtail(ptr noundef %1, ptr noundef nonnull %206) #7
  br label %216

216:                                              ; preds = %215, %204
  %217 = getelementptr inbounds %struct.SpaceAction, ptr %190, i64 0, i32 8, i32 5
  %218 = load i32, ptr %217, align 4, !tbaa !112
  %219 = and i32 %218, 1
  %220 = icmp eq i32 %219, 0
  br i1 %220, label %221, label %557

221:                                              ; preds = %199, %216, %186, %188, %192
  %222 = load ptr, ptr @G, align 8, !tbaa !119
  %223 = getelementptr inbounds %struct.Main, ptr %222, i64 0, i32 41
  %224 = load ptr, ptr %223, align 8, !tbaa !89
  %225 = icmp eq ptr %224, null
  br i1 %225, label %557, label %226

226:                                              ; preds = %221
  %227 = and i32 %2, 2
  %228 = icmp eq i32 %227, 0
  %229 = and i32 %2, 8
  %230 = icmp eq i32 %229, 0
  %231 = or i32 %2, 1073741824
  %232 = and i32 %2, 8
  %233 = icmp eq i32 %232, 0
  %234 = and i32 %2, 1073741824
  %235 = icmp eq i32 %234, 0
  br label %236

236:                                              ; preds = %226, %338
  %237 = phi ptr [ %224, %226 ], [ %339, %338 ]
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %7) #7
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %7, i8 0, i64 16, i1 false)
  %238 = getelementptr inbounds %struct.ID, ptr %237, i64 0, i32 6
  %239 = load i32, ptr %238, align 4, !tbaa !121
  %240 = getelementptr inbounds %struct.ID, ptr %237, i64 0, i32 5
  %241 = load i16, ptr %240, align 2, !tbaa !122
  %242 = lshr i16 %241, 9
  %243 = and i16 %242, 1
  %244 = zext nneg i16 %243 to i32
  %245 = icmp sgt i32 %239, %244
  br i1 %245, label %246, label %336

246:                                              ; preds = %236
  br i1 %228, label %254, label %247

247:                                              ; preds = %246
  %248 = getelementptr inbounds %struct.bGPdata, ptr %237, i64 0, i32 2
  %249 = load i32, ptr %248, align 8, !tbaa !123
  %250 = and i32 %249, 4
  %251 = icmp ne i32 %250, 0
  %252 = or i1 %230, %251
  %253 = select i1 %252, i32 %2, i32 %231
  br label %254

254:                                              ; preds = %247, %246
  %255 = phi i32 [ %2, %246 ], [ %253, %247 ]
  %256 = getelementptr inbounds %struct.bGPdata, ptr %237, i64 0, i32 1
  %257 = load ptr, ptr %256, align 8, !tbaa !89
  %258 = icmp eq ptr %257, null
  br i1 %258, label %320, label %259

259:                                              ; preds = %254
  %260 = and i32 %255, 192
  %261 = icmp eq i32 %260, 0
  %262 = and i32 %255, 64
  %263 = icmp eq i32 %262, 0
  %264 = and i32 %255, 128
  %265 = icmp eq i32 %264, 0
  %266 = and i32 %255, 256
  %267 = icmp eq i32 %266, 0
  %268 = and i32 %255, 16
  %269 = icmp eq i32 %268, 0
  %270 = and i32 %255, 1073741824
  %271 = icmp eq i32 %270, 0
  br label %272

272:                                              ; preds = %259, %316
  %273 = phi ptr [ %257, %259 ], [ %318, %316 ]
  %274 = phi i64 [ 0, %259 ], [ %317, %316 ]
  br i1 %261, label %287, label %275

275:                                              ; preds = %272
  br i1 %263, label %281, label %276

276:                                              ; preds = %275
  %277 = getelementptr inbounds %struct.bGPDlayer, ptr %273, i64 0, i32 4
  %278 = load i32, ptr %277, align 8, !tbaa !125
  %279 = and i32 %278, 32
  %280 = icmp eq i32 %279, 0
  br i1 %280, label %281, label %287

281:                                              ; preds = %276, %275
  br i1 %265, label %316, label %282

282:                                              ; preds = %281
  %283 = getelementptr inbounds %struct.bGPDlayer, ptr %273, i64 0, i32 4
  %284 = load i32, ptr %283, align 8, !tbaa !125
  %285 = and i32 %284, 32
  %286 = icmp eq i32 %285, 0
  br i1 %286, label %287, label %316

287:                                              ; preds = %282, %276, %272
  br i1 %267, label %293, label %288

288:                                              ; preds = %287
  %289 = getelementptr inbounds %struct.bGPDlayer, ptr %273, i64 0, i32 4
  %290 = load i32, ptr %289, align 8, !tbaa !125
  %291 = and i32 %290, 2
  %292 = icmp eq i32 %291, 0
  br i1 %292, label %293, label %316

293:                                              ; preds = %288, %287
  br i1 %269, label %299, label %294

294:                                              ; preds = %293
  %295 = getelementptr inbounds %struct.bGPDlayer, ptr %273, i64 0, i32 4
  %296 = load i32, ptr %295, align 8, !tbaa !125
  %297 = and i32 %296, 4
  %298 = icmp eq i32 %297, 0
  br i1 %298, label %316, label %299

299:                                              ; preds = %294, %293
  br i1 %271, label %300, label %320

300:                                              ; preds = %299
  %301 = load ptr, ptr @MEM_callocN, align 8, !tbaa !89
  %302 = call ptr %301(i64 noundef 64, ptr noundef nonnull @.str.3) #7
  %303 = getelementptr inbounds %struct.bAnimListElem, ptr %302, i64 0, i32 2
  store ptr %273, ptr %303, align 8, !tbaa !105
  %304 = getelementptr inbounds %struct.bAnimListElem, ptr %302, i64 0, i32 3
  store i32 27, ptr %304, align 8, !tbaa !107
  %305 = getelementptr inbounds %struct.bAnimListElem, ptr %302, i64 0, i32 9
  store ptr %237, ptr %305, align 8, !tbaa !108
  %306 = call ptr @BKE_animdata_from_id(ptr noundef nonnull %237) #7
  %307 = getelementptr inbounds %struct.bAnimListElem, ptr %302, i64 0, i32 10
  store ptr %306, ptr %307, align 8, !tbaa !109
  %308 = getelementptr inbounds %struct.bGPDlayer, ptr %273, i64 0, i32 4
  %309 = load i32, ptr %308, align 8, !tbaa !125
  %310 = getelementptr inbounds %struct.bAnimListElem, ptr %302, i64 0, i32 4
  store i32 %309, ptr %310, align 4, !tbaa !127
  %311 = getelementptr inbounds %struct.bAnimListElem, ptr %302, i64 0, i32 8
  store ptr null, ptr %311, align 8, !tbaa !110
  %312 = getelementptr inbounds %struct.bAnimListElem, ptr %302, i64 0, i32 7
  store i16 2, ptr %312, align 2, !tbaa !111
  %313 = icmp eq ptr %302, null
  br i1 %313, label %316, label %314

314:                                              ; preds = %300
  call void @BLI_addtail(ptr noundef nonnull %7, ptr noundef nonnull %302) #7
  %315 = add i64 %274, 1
  br label %316

316:                                              ; preds = %314, %300, %294, %288, %282, %281
  %317 = phi i64 [ %274, %294 ], [ %274, %288 ], [ %274, %282 ], [ %274, %281 ], [ %315, %314 ], [ %274, %300 ]
  %318 = load ptr, ptr %273, align 8, !tbaa !89
  %319 = icmp eq ptr %318, null
  br i1 %319, label %320, label %272, !llvm.loop !128

320:                                              ; preds = %316, %299, %254
  %321 = phi i64 [ 0, %254 ], [ %317, %316 ], [ 1, %299 ]
  %322 = icmp eq i64 %321, 0
  br i1 %322, label %336, label %323

323:                                              ; preds = %320
  br i1 %233, label %335, label %324

324:                                              ; preds = %323
  br i1 %235, label %325, label %336

325:                                              ; preds = %324
  %326 = load ptr, ptr @MEM_callocN, align 8, !tbaa !89
  %327 = call ptr %326(i64 noundef 64, ptr noundef nonnull @.str.3) #7
  %328 = getelementptr inbounds %struct.bAnimListElem, ptr %327, i64 0, i32 2
  store ptr %237, ptr %328, align 8, !tbaa !105
  %329 = getelementptr inbounds %struct.bAnimListElem, ptr %327, i64 0, i32 3
  store i32 26, ptr %329, align 8, !tbaa !107
  %330 = getelementptr inbounds %struct.bAnimListElem, ptr %327, i64 0, i32 9
  store ptr null, ptr %330, align 8, !tbaa !108
  %331 = call ptr @BKE_animdata_from_id(ptr noundef null) #7
  %332 = getelementptr inbounds %struct.bAnimListElem, ptr %327, i64 0, i32 10
  store ptr %331, ptr %332, align 8, !tbaa !109
  %333 = icmp eq ptr %327, null
  br i1 %333, label %335, label %334

334:                                              ; preds = %325
  call void @BLI_addtail(ptr noundef %1, ptr noundef nonnull %327) #7
  br label %335

335:                                              ; preds = %334, %325, %323
  call void @BLI_movelisttolist(ptr noundef %1, ptr noundef nonnull %7) #7
  br label %336

336:                                              ; preds = %335, %324, %320, %236
  %337 = phi i32 [ 4, %236 ], [ 1, %324 ], [ 0, %335 ], [ 0, %320 ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %7) #7
  switch i32 %337, label %557 [
    i32 0, label %338
    i32 4, label %338
  ]

338:                                              ; preds = %336, %336
  %339 = load ptr, ptr %237, align 8, !tbaa !89
  %340 = icmp eq ptr %339, null
  br i1 %340, label %557, label %236, !llvm.loop !129

341:                                              ; preds = %11
  %342 = icmp eq ptr %0, null
  br i1 %342, label %376, label %343

343:                                              ; preds = %341
  %344 = getelementptr inbounds %struct.bAnimContext, ptr %0, i64 0, i32 6
  %345 = load ptr, ptr %344, align 8, !tbaa !34
  %346 = icmp eq ptr %345, null
  br i1 %346, label %376, label %347

347:                                              ; preds = %343
  %348 = getelementptr inbounds %struct.bAnimContext, ptr %0, i64 0, i32 3
  %349 = load i16, ptr %348, align 4, !tbaa !40
  %350 = icmp ne i16 %349, 12
  %351 = and i32 %2, 8
  %352 = icmp eq i32 %351, 0
  %353 = or i1 %352, %350
  br i1 %353, label %376, label %354

354:                                              ; preds = %347
  %355 = getelementptr inbounds %struct.SpaceAction, ptr %345, i64 0, i32 8, i32 4
  %356 = load i32, ptr %355, align 8, !tbaa !92
  %357 = and i32 %356, 16
  %358 = icmp eq i32 %357, 0
  br i1 %358, label %376, label %359

359:                                              ; preds = %354
  %360 = load ptr, ptr @MEM_callocN, align 8, !tbaa !89
  %361 = tail call ptr %360(i64 noundef 64, ptr noundef nonnull @.str.3) #7
  %362 = getelementptr inbounds %struct.bAnimListElem, ptr %361, i64 0, i32 2
  store ptr %0, ptr %362, align 8, !tbaa !105
  %363 = getelementptr inbounds %struct.bAnimListElem, ptr %361, i64 0, i32 3
  store i32 3, ptr %363, align 8, !tbaa !107
  %364 = getelementptr inbounds %struct.bAnimListElem, ptr %361, i64 0, i32 9
  store ptr null, ptr %364, align 8, !tbaa !108
  %365 = tail call ptr @BKE_animdata_from_id(ptr noundef null) #7
  %366 = getelementptr inbounds %struct.bAnimListElem, ptr %361, i64 0, i32 10
  store ptr %365, ptr %366, align 8, !tbaa !109
  %367 = getelementptr inbounds %struct.bAnimListElem, ptr %361, i64 0, i32 8
  store ptr null, ptr %367, align 8, !tbaa !110
  %368 = getelementptr inbounds %struct.bAnimListElem, ptr %361, i64 0, i32 7
  store i16 5, ptr %368, align 2, !tbaa !111
  %369 = icmp eq ptr %361, null
  br i1 %369, label %371, label %370

370:                                              ; preds = %359
  tail call void @BLI_addtail(ptr noundef %1, ptr noundef nonnull %361) #7
  br label %371

371:                                              ; preds = %370, %359
  %372 = getelementptr inbounds %struct.SpaceAction, ptr %345, i64 0, i32 8, i32 5
  %373 = load i32, ptr %372, align 4, !tbaa !112
  %374 = and i32 %373, 1
  %375 = icmp eq i32 %374, 0
  br i1 %375, label %376, label %557

376:                                              ; preds = %354, %371, %341, %343, %347
  %377 = load ptr, ptr @G, align 8, !tbaa !119
  %378 = getelementptr inbounds %struct.Main, ptr %377, i64 0, i32 43
  %379 = load ptr, ptr %378, align 8, !tbaa !89
  %380 = icmp eq ptr %379, null
  br i1 %380, label %557, label %381

381:                                              ; preds = %376
  %382 = and i32 %2, 2
  %383 = icmp eq i32 %382, 0
  %384 = and i32 %2, 8
  %385 = icmp eq i32 %384, 0
  %386 = or i32 %2, 1073741824
  %387 = and i32 %2, 8
  %388 = icmp eq i32 %387, 0
  %389 = and i32 %2, 1073741824
  %390 = icmp eq i32 %389, 0
  br label %391

391:                                              ; preds = %381, %495
  %392 = phi ptr [ %379, %381 ], [ %496, %495 ]
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %6) #7
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %6, i8 0, i64 16, i1 false)
  %393 = getelementptr inbounds %struct.ID, ptr %392, i64 0, i32 6
  %394 = load i32, ptr %393, align 4, !tbaa !121
  %395 = getelementptr inbounds %struct.ID, ptr %392, i64 0, i32 5
  %396 = load i16, ptr %395, align 2, !tbaa !122
  %397 = lshr i16 %396, 9
  %398 = and i16 %397, 1
  %399 = zext nneg i16 %398 to i32
  %400 = icmp sgt i32 %394, %399
  br i1 %400, label %401, label %493

401:                                              ; preds = %391
  br i1 %383, label %409, label %402

402:                                              ; preds = %401
  %403 = getelementptr inbounds %struct.Mask, ptr %392, i64 0, i32 7
  %404 = load i32, ptr %403, align 8, !tbaa !130
  %405 = and i32 %404, 16
  %406 = icmp ne i32 %405, 0
  %407 = or i1 %385, %406
  %408 = select i1 %407, i32 %2, i32 %386
  br label %409

409:                                              ; preds = %402, %401
  %410 = phi i32 [ %2, %401 ], [ %408, %402 ]
  %411 = call ptr @BKE_mask_layer_active(ptr noundef nonnull %392) #7
  %412 = getelementptr inbounds %struct.Mask, ptr %392, i64 0, i32 2
  %413 = load ptr, ptr %412, align 8, !tbaa !89
  %414 = icmp eq ptr %413, null
  br i1 %414, label %477, label %415

415:                                              ; preds = %409
  %416 = and i32 %410, 1073741824
  %417 = and i32 %410, 192
  %418 = icmp eq i32 %417, 0
  %419 = and i32 %410, 64
  %420 = icmp eq i32 %419, 0
  %421 = and i32 %410, 128
  %422 = icmp eq i32 %421, 0
  %423 = and i32 %410, 256
  %424 = icmp eq i32 %423, 0
  %425 = and i32 %410, 16
  %426 = icmp eq i32 %425, 0
  %427 = icmp eq i32 %416, 0
  br label %428

428:                                              ; preds = %415, %473
  %429 = phi ptr [ %413, %415 ], [ %475, %473 ]
  %430 = phi i64 [ 0, %415 ], [ %474, %473 ]
  br i1 %418, label %443, label %431

431:                                              ; preds = %428
  br i1 %420, label %437, label %432

432:                                              ; preds = %431
  %433 = getelementptr inbounds %struct.MaskLayer, ptr %429, i64 0, i32 12
  %434 = load i8, ptr %433, align 2, !tbaa !132
  %435 = and i8 %434, 1
  %436 = icmp eq i8 %435, 0
  br i1 %436, label %437, label %443

437:                                              ; preds = %432, %431
  br i1 %422, label %473, label %438

438:                                              ; preds = %437
  %439 = getelementptr inbounds %struct.MaskLayer, ptr %429, i64 0, i32 12
  %440 = load i8, ptr %439, align 2, !tbaa !132
  %441 = and i8 %440, 1
  %442 = icmp eq i8 %441, 0
  br i1 %442, label %443, label %473

443:                                              ; preds = %438, %432, %428
  br i1 %424, label %452, label %444

444:                                              ; preds = %443
  %445 = getelementptr inbounds %struct.MaskLayer, ptr %429, i64 0, i32 12
  %446 = load i8, ptr %445, align 2, !tbaa !132
  %447 = and i8 %446, 16
  %448 = icmp eq i8 %447, 0
  %449 = icmp eq ptr %411, %429
  %450 = select i1 %426, i1 true, i1 %449
  %451 = select i1 %448, i1 %450, i1 false
  br i1 %451, label %455, label %473

452:                                              ; preds = %443
  %453 = icmp eq ptr %411, %429
  %454 = select i1 %426, i1 true, i1 %453
  br i1 %454, label %455, label %473

455:                                              ; preds = %444, %452
  br i1 %427, label %456, label %477

456:                                              ; preds = %455
  %457 = load ptr, ptr @MEM_callocN, align 8, !tbaa !89
  %458 = call ptr %457(i64 noundef 64, ptr noundef nonnull @.str.3) #7
  %459 = getelementptr inbounds %struct.bAnimListElem, ptr %458, i64 0, i32 2
  store ptr %429, ptr %459, align 8, !tbaa !105
  %460 = getelementptr inbounds %struct.bAnimListElem, ptr %458, i64 0, i32 3
  store i32 29, ptr %460, align 8, !tbaa !107
  %461 = getelementptr inbounds %struct.bAnimListElem, ptr %458, i64 0, i32 9
  store ptr %392, ptr %461, align 8, !tbaa !108
  %462 = call ptr @BKE_animdata_from_id(ptr noundef nonnull %392) #7
  %463 = getelementptr inbounds %struct.bAnimListElem, ptr %458, i64 0, i32 10
  store ptr %462, ptr %463, align 8, !tbaa !109
  %464 = getelementptr inbounds %struct.MaskLayer, ptr %429, i64 0, i32 12
  %465 = load i8, ptr %464, align 2, !tbaa !132
  %466 = zext i8 %465 to i32
  %467 = getelementptr inbounds %struct.bAnimListElem, ptr %458, i64 0, i32 4
  store i32 %466, ptr %467, align 4, !tbaa !127
  %468 = getelementptr inbounds %struct.bAnimListElem, ptr %458, i64 0, i32 8
  store ptr null, ptr %468, align 8, !tbaa !110
  %469 = getelementptr inbounds %struct.bAnimListElem, ptr %458, i64 0, i32 7
  store i16 3, ptr %469, align 2, !tbaa !111
  %470 = icmp eq ptr %458, null
  br i1 %470, label %473, label %471

471:                                              ; preds = %456
  call void @BLI_addtail(ptr noundef nonnull %6, ptr noundef nonnull %458) #7
  %472 = add i64 %430, 1
  br label %473

473:                                              ; preds = %471, %456, %452, %444, %438, %437
  %474 = phi i64 [ %430, %444 ], [ %430, %438 ], [ %430, %437 ], [ %430, %452 ], [ %472, %471 ], [ %430, %456 ]
  %475 = load ptr, ptr %429, align 8, !tbaa !89
  %476 = icmp eq ptr %475, null
  br i1 %476, label %477, label %428, !llvm.loop !134

477:                                              ; preds = %473, %455, %409
  %478 = phi i64 [ 0, %409 ], [ %474, %473 ], [ 1, %455 ]
  %479 = icmp eq i64 %478, 0
  br i1 %479, label %493, label %480

480:                                              ; preds = %477
  br i1 %388, label %492, label %481

481:                                              ; preds = %480
  br i1 %390, label %482, label %493

482:                                              ; preds = %481
  %483 = load ptr, ptr @MEM_callocN, align 8, !tbaa !89
  %484 = call ptr %483(i64 noundef 64, ptr noundef nonnull @.str.3) #7
  %485 = getelementptr inbounds %struct.bAnimListElem, ptr %484, i64 0, i32 2
  store ptr %392, ptr %485, align 8, !tbaa !105
  %486 = getelementptr inbounds %struct.bAnimListElem, ptr %484, i64 0, i32 3
  store i32 28, ptr %486, align 8, !tbaa !107
  %487 = getelementptr inbounds %struct.bAnimListElem, ptr %484, i64 0, i32 9
  store ptr null, ptr %487, align 8, !tbaa !108
  %488 = call ptr @BKE_animdata_from_id(ptr noundef null) #7
  %489 = getelementptr inbounds %struct.bAnimListElem, ptr %484, i64 0, i32 10
  store ptr %488, ptr %489, align 8, !tbaa !109
  %490 = icmp eq ptr %484, null
  br i1 %490, label %492, label %491

491:                                              ; preds = %482
  call void @BLI_addtail(ptr noundef %1, ptr noundef nonnull %484) #7
  br label %492

492:                                              ; preds = %491, %482, %480
  call void @BLI_movelisttolist(ptr noundef %1, ptr noundef nonnull %6) #7
  br label %493

493:                                              ; preds = %492, %481, %477, %391
  %494 = phi i32 [ 4, %391 ], [ 1, %481 ], [ 0, %492 ], [ 0, %477 ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %6) #7
  switch i32 %494, label %557 [
    i32 0, label %495
    i32 4, label %495
  ]

495:                                              ; preds = %493, %493
  %496 = load ptr, ptr %392, align 8, !tbaa !89
  %497 = icmp eq ptr %496, null
  br i1 %497, label %557, label %391, !llvm.loop !135

498:                                              ; preds = %11
  %499 = icmp eq ptr %0, null
  br i1 %499, label %533, label %500

500:                                              ; preds = %498
  %501 = getelementptr inbounds %struct.bAnimContext, ptr %0, i64 0, i32 6
  %502 = load ptr, ptr %501, align 8, !tbaa !34
  %503 = icmp eq ptr %502, null
  br i1 %503, label %533, label %504

504:                                              ; preds = %500
  %505 = getelementptr inbounds %struct.bAnimContext, ptr %0, i64 0, i32 3
  %506 = load i16, ptr %505, align 4, !tbaa !40
  %507 = icmp ne i16 %506, 12
  %508 = and i32 %2, 8
  %509 = icmp eq i32 %508, 0
  %510 = or i1 %509, %507
  br i1 %510, label %533, label %511

511:                                              ; preds = %504
  %512 = getelementptr inbounds %struct.SpaceAction, ptr %502, i64 0, i32 8, i32 4
  %513 = load i32, ptr %512, align 8, !tbaa !92
  %514 = and i32 %513, 16
  %515 = icmp eq i32 %514, 0
  br i1 %515, label %533, label %516

516:                                              ; preds = %511
  %517 = load ptr, ptr @MEM_callocN, align 8, !tbaa !89
  %518 = tail call ptr %517(i64 noundef 64, ptr noundef nonnull @.str.3) #7
  %519 = getelementptr inbounds %struct.bAnimListElem, ptr %518, i64 0, i32 2
  store ptr %0, ptr %519, align 8, !tbaa !105
  %520 = getelementptr inbounds %struct.bAnimListElem, ptr %518, i64 0, i32 3
  store i32 3, ptr %520, align 8, !tbaa !107
  %521 = getelementptr inbounds %struct.bAnimListElem, ptr %518, i64 0, i32 9
  store ptr null, ptr %521, align 8, !tbaa !108
  %522 = tail call ptr @BKE_animdata_from_id(ptr noundef null) #7
  %523 = getelementptr inbounds %struct.bAnimListElem, ptr %518, i64 0, i32 10
  store ptr %522, ptr %523, align 8, !tbaa !109
  %524 = getelementptr inbounds %struct.bAnimListElem, ptr %518, i64 0, i32 8
  store ptr null, ptr %524, align 8, !tbaa !110
  %525 = getelementptr inbounds %struct.bAnimListElem, ptr %518, i64 0, i32 7
  store i16 5, ptr %525, align 2, !tbaa !111
  %526 = icmp eq ptr %518, null
  br i1 %526, label %528, label %527

527:                                              ; preds = %516
  tail call void @BLI_addtail(ptr noundef %1, ptr noundef nonnull %518) #7
  br label %528

528:                                              ; preds = %527, %516
  %529 = getelementptr inbounds %struct.SpaceAction, ptr %502, i64 0, i32 8, i32 5
  %530 = load i32, ptr %529, align 4, !tbaa !112
  %531 = and i32 %530, 1
  %532 = icmp eq i32 %531, 0
  br i1 %532, label %533, label %557

533:                                              ; preds = %504, %500, %498, %511, %528
  tail call fastcc void @animdata_filter_dopesheet(ptr noundef %0, ptr noundef nonnull %1, ptr noundef nonnull %3, i32 noundef %2)
  br label %557

534:                                              ; preds = %11, %11, %11
  tail call fastcc void @animdata_filter_dopesheet(ptr noundef %0, ptr noundef nonnull %1, ptr noundef nonnull %3, i32 noundef %2)
  br label %557

535:                                              ; preds = %11
  %536 = getelementptr inbounds %struct.bAnimContext, ptr %0, i64 0, i32 8
  %537 = load ptr, ptr %536, align 8, !tbaa !41
  %538 = getelementptr inbounds %struct.bAnimListElem, ptr %3, i64 0, i32 3
  %539 = load i32, ptr %538, align 8, !tbaa !107
  switch i32 %539, label %553 [
    i32 3, label %540
    i32 4, label %541
    i32 5, label %545
    i32 1, label %549
  ]

540:                                              ; preds = %535
  tail call fastcc void @animdata_filter_dopesheet(ptr noundef %0, ptr noundef %1, ptr noundef %537, i32 noundef %2)
  br label %557

541:                                              ; preds = %535
  %542 = getelementptr inbounds %struct.bAnimListElem, ptr %3, i64 0, i32 2
  %543 = load ptr, ptr %542, align 8, !tbaa !105
  %544 = tail call fastcc i64 @animdata_filter_dopesheet_scene(ptr noundef %0, ptr noundef %1, ptr noundef %537, ptr noundef %543, i32 noundef %2)
  br label %557

545:                                              ; preds = %535
  %546 = getelementptr inbounds %struct.bAnimListElem, ptr %3, i64 0, i32 2
  %547 = load ptr, ptr %546, align 8, !tbaa !105
  %548 = tail call fastcc i64 @animdata_filter_dopesheet_ob(ptr noundef %0, ptr noundef %1, ptr noundef %537, ptr noundef %547, i32 noundef %2)
  br label %557

549:                                              ; preds = %535
  %550 = getelementptr inbounds %struct.bAnimListElem, ptr %3, i64 0, i32 9
  %551 = load ptr, ptr %550, align 8, !tbaa !108
  %552 = tail call fastcc i64 @animfilter_block_data(ptr noundef %0, ptr noundef %1, ptr noundef %537, ptr noundef %551, i32 noundef %2)
  br label %557

553:                                              ; preds = %535
  %554 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.13, i32 noundef %539)
  br label %557

555:                                              ; preds = %11
  %556 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str, i32 noundef %4)
  br label %557

557:                                              ; preds = %495, %493, %338, %336, %174, %169, %376, %221, %371, %216, %123, %553, %549, %545, %541, %540, %184, %181, %177, %131, %83, %92, %76, %29, %38, %66, %71, %22, %528, %533, %555, %534
  %558 = load ptr, ptr %1, align 8, !tbaa !136
  %559 = icmp eq ptr %558, null
  br i1 %559, label %573, label %560

560:                                              ; preds = %557, %570
  %561 = phi i64 [ %571, %570 ], [ 0, %557 ]
  %562 = phi ptr [ %563, %570 ], [ %558, %557 ]
  %563 = load ptr, ptr %562, align 8, !tbaa !137
  %564 = getelementptr inbounds %struct.bAnimListElem, ptr %562, i64 0, i32 3
  %565 = load i32, ptr %564, align 8, !tbaa !107
  %566 = icmp eq i32 %565, 0
  br i1 %566, label %567, label %568

567:                                              ; preds = %560
  call void @BLI_freelinkN(ptr noundef nonnull %1, ptr noundef nonnull %562) #7
  br label %570

568:                                              ; preds = %560
  %569 = add i64 %561, 1
  br label %570

570:                                              ; preds = %568, %567
  %571 = phi i64 [ %561, %567 ], [ %569, %568 ]
  %572 = icmp eq ptr %563, null
  br i1 %572, label %573, label %560, !llvm.loop !138

573:                                              ; preds = %570, %557
  %574 = phi i64 [ 0, %557 ], [ %571, %570 ]
  %575 = and i32 %2, 2048
  %576 = icmp eq i32 %575, 0
  br i1 %576, label %597, label %577

577:                                              ; preds = %573
  %578 = call ptr @BLI_gset_ptr_new(ptr noundef nonnull @__func__.animdata_filter_remove_duplis) #7
  %579 = load ptr, ptr %1, align 8, !tbaa !136
  %580 = icmp eq ptr %579, null
  br i1 %580, label %595, label %581

581:                                              ; preds = %577, %592
  %582 = phi i64 [ %593, %592 ], [ 0, %577 ]
  %583 = phi ptr [ %584, %592 ], [ %579, %577 ]
  %584 = load ptr, ptr %583, align 8, !tbaa !137
  %585 = getelementptr inbounds %struct.bAnimListElem, ptr %583, i64 0, i32 2
  %586 = load ptr, ptr %585, align 8, !tbaa !105
  %587 = call zeroext i8 @BLI_gset_add(ptr noundef %578, ptr noundef %586) #7
  %588 = icmp eq i8 %587, 0
  br i1 %588, label %591, label %589

589:                                              ; preds = %581
  %590 = add i64 %582, 1
  br label %592

591:                                              ; preds = %581
  call void @BLI_freelinkN(ptr noundef nonnull %1, ptr noundef nonnull %583) #7
  br label %592

592:                                              ; preds = %591, %589
  %593 = phi i64 [ %590, %589 ], [ %582, %591 ]
  %594 = icmp eq ptr %584, null
  br i1 %594, label %595, label %581, !llvm.loop !139

595:                                              ; preds = %592, %577
  %596 = phi i64 [ 0, %577 ], [ %593, %592 ]
  call void @BLI_gset_free(ptr noundef %578, ptr noundef null) #7
  br label %597

597:                                              ; preds = %5, %595, %573, %80, %26
  %598 = phi i64 [ 1, %26 ], [ 1, %80 ], [ %574, %573 ], [ %596, %595 ], [ 0, %5 ]
  ret i64 %598
}

; Function Attrs: nounwind uwtable
define internal fastcc ptr @make_new_animlistelem(ptr noundef %0, i16 noundef signext %1, ptr noundef %2) unnamed_addr #0 {
  %4 = icmp eq ptr %0, null
  br i1 %4, label %333, label %5

5:                                                ; preds = %3
  %6 = load ptr, ptr @MEM_callocN, align 8, !tbaa !89
  %7 = tail call ptr %6(i64 noundef 64, ptr noundef nonnull @.str.3) #7
  %8 = getelementptr inbounds %struct.bAnimListElem, ptr %7, i64 0, i32 2
  store ptr %0, ptr %8, align 8, !tbaa !105
  %9 = zext nneg i16 %1 to i32
  %10 = getelementptr inbounds %struct.bAnimListElem, ptr %7, i64 0, i32 3
  store i32 %9, ptr %10, align 8, !tbaa !107
  %11 = getelementptr inbounds %struct.bAnimListElem, ptr %7, i64 0, i32 9
  store ptr %2, ptr %11, align 8, !tbaa !108
  %12 = tail call ptr @BKE_animdata_from_id(ptr noundef %2) #7
  %13 = getelementptr inbounds %struct.bAnimListElem, ptr %7, i64 0, i32 10
  store ptr %12, ptr %13, align 8, !tbaa !109
  switch i16 %1, label %333 [
    i16 3, label %14
    i16 4, label %17
    i16 5, label %25
    i16 8, label %35
    i16 9, label %41
    i16 10, label %47
    i16 11, label %63
    i16 12, label %79
    i16 13, label %95
    i16 19, label %110
    i16 20, label %125
    i16 22, label %141
    i16 24, label %157
    i16 14, label %173
    i16 15, label %189
    i16 16, label %205
    i16 23, label %220
    i16 17, label %235
    i16 21, label %251
    i16 6, label %267
    i16 7, label %273
    i16 25, label %280
    i16 27, label %310
    i16 29, label %316
    i16 30, label %323
    i16 31, label %330
  ]

14:                                               ; preds = %5
  %15 = getelementptr inbounds %struct.bAnimListElem, ptr %7, i64 0, i32 8
  store ptr null, ptr %15, align 8, !tbaa !110
  %16 = getelementptr inbounds %struct.bAnimListElem, ptr %7, i64 0, i32 7
  store i16 5, ptr %16, align 2, !tbaa !111
  br label %333

17:                                               ; preds = %5
  %18 = getelementptr inbounds %struct.Scene, ptr %0, i64 0, i32 15
  %19 = load i16, ptr %18, align 4, !tbaa !140
  %20 = sext i16 %19 to i32
  %21 = getelementptr inbounds %struct.bAnimListElem, ptr %7, i64 0, i32 4
  store i32 %20, ptr %21, align 4, !tbaa !127
  %22 = getelementptr inbounds %struct.bAnimListElem, ptr %7, i64 0, i32 8
  store ptr %0, ptr %22, align 8, !tbaa !110
  %23 = getelementptr inbounds %struct.bAnimListElem, ptr %7, i64 0, i32 7
  store i16 6, ptr %23, align 2, !tbaa !111
  %24 = tail call ptr @BKE_animdata_from_id(ptr noundef %0) #7
  store ptr %24, ptr %13, align 8, !tbaa !109
  br label %333

25:                                               ; preds = %5
  %26 = getelementptr inbounds %struct.Base, ptr %0, i64 0, i32 7
  %27 = load ptr, ptr %26, align 8, !tbaa !81
  %28 = getelementptr inbounds %struct.Object, ptr %27, i64 0, i32 53
  %29 = load i16, ptr %28, align 4, !tbaa !141
  %30 = sext i16 %29 to i32
  %31 = getelementptr inbounds %struct.bAnimListElem, ptr %7, i64 0, i32 4
  store i32 %30, ptr %31, align 4, !tbaa !127
  %32 = getelementptr inbounds %struct.bAnimListElem, ptr %7, i64 0, i32 8
  store ptr %27, ptr %32, align 8, !tbaa !110
  %33 = getelementptr inbounds %struct.bAnimListElem, ptr %7, i64 0, i32 7
  store i16 7, ptr %33, align 2, !tbaa !111
  %34 = tail call ptr @BKE_animdata_from_id(ptr noundef %27) #7
  store ptr %34, ptr %13, align 8, !tbaa !109
  br label %333

35:                                               ; preds = %5
  %36 = getelementptr inbounds %struct.bAction, ptr %0, i64 0, i32 5
  %37 = load i32, ptr %36, align 8, !tbaa !142
  %38 = getelementptr inbounds %struct.bAnimListElem, ptr %7, i64 0, i32 4
  store i32 %37, ptr %38, align 4, !tbaa !127
  %39 = getelementptr inbounds %struct.bAnimListElem, ptr %7, i64 0, i32 8
  store ptr %0, ptr %39, align 8, !tbaa !110
  %40 = getelementptr inbounds %struct.bAnimListElem, ptr %7, i64 0, i32 7
  store i16 8, ptr %40, align 2, !tbaa !111
  br label %333

41:                                               ; preds = %5
  %42 = getelementptr inbounds %struct.AnimData, ptr %0, i64 0, i32 7
  %43 = load i32, ptr %42, align 8, !tbaa !144
  %44 = getelementptr inbounds %struct.bAnimListElem, ptr %7, i64 0, i32 4
  store i32 %43, ptr %44, align 4, !tbaa !127
  %45 = getelementptr inbounds %struct.bAnimListElem, ptr %7, i64 0, i32 8
  store ptr null, ptr %45, align 8, !tbaa !110
  %46 = getelementptr inbounds %struct.bAnimListElem, ptr %7, i64 0, i32 7
  store i16 0, ptr %46, align 2, !tbaa !111
  br label %333

47:                                               ; preds = %5
  %48 = getelementptr inbounds %struct.Material, ptr %0, i64 0, i32 1
  %49 = load ptr, ptr %48, align 8, !tbaa !145
  %50 = getelementptr inbounds %struct.Material, ptr %0, i64 0, i32 3
  %51 = load i16, ptr %50, align 2, !tbaa !149
  %52 = and i16 %51, 2
  %53 = zext nneg i16 %52 to i32
  %54 = getelementptr inbounds %struct.bAnimListElem, ptr %7, i64 0, i32 4
  store i32 %53, ptr %54, align 4, !tbaa !127
  %55 = icmp eq ptr %49, null
  br i1 %55, label %58, label %56

56:                                               ; preds = %47
  %57 = load ptr, ptr %49, align 8, !tbaa !57
  br label %58

58:                                               ; preds = %47, %56
  %59 = phi ptr [ %57, %56 ], [ null, %47 ]
  %60 = getelementptr inbounds %struct.bAnimListElem, ptr %7, i64 0, i32 8
  store ptr %59, ptr %60, align 8, !tbaa !110
  %61 = getelementptr inbounds %struct.bAnimListElem, ptr %7, i64 0, i32 7
  store i16 8, ptr %61, align 2, !tbaa !111
  %62 = tail call ptr @BKE_animdata_from_id(ptr noundef %0) #7
  store ptr %62, ptr %13, align 8, !tbaa !109
  br label %333

63:                                               ; preds = %5
  %64 = getelementptr inbounds %struct.Lamp, ptr %0, i64 0, i32 1
  %65 = load ptr, ptr %64, align 8, !tbaa !150
  %66 = getelementptr inbounds %struct.Lamp, ptr %0, i64 0, i32 3
  %67 = load i16, ptr %66, align 2, !tbaa !152
  %68 = and i16 %67, 1
  %69 = zext nneg i16 %68 to i32
  %70 = getelementptr inbounds %struct.bAnimListElem, ptr %7, i64 0, i32 4
  store i32 %69, ptr %70, align 4, !tbaa !127
  %71 = icmp eq ptr %65, null
  br i1 %71, label %74, label %72

72:                                               ; preds = %63
  %73 = load ptr, ptr %65, align 8, !tbaa !57
  br label %74

74:                                               ; preds = %63, %72
  %75 = phi ptr [ %73, %72 ], [ null, %63 ]
  %76 = getelementptr inbounds %struct.bAnimListElem, ptr %7, i64 0, i32 8
  store ptr %75, ptr %76, align 8, !tbaa !110
  %77 = getelementptr inbounds %struct.bAnimListElem, ptr %7, i64 0, i32 7
  store i16 8, ptr %77, align 2, !tbaa !111
  %78 = tail call ptr @BKE_animdata_from_id(ptr noundef %0) #7
  store ptr %78, ptr %13, align 8, !tbaa !109
  br label %333

79:                                               ; preds = %5
  %80 = getelementptr inbounds %struct.Camera, ptr %0, i64 0, i32 1
  %81 = load ptr, ptr %80, align 8, !tbaa !153
  %82 = getelementptr inbounds %struct.Camera, ptr %0, i64 0, i32 4
  %83 = load i16, ptr %82, align 2, !tbaa !155
  %84 = and i16 %83, 64
  %85 = zext nneg i16 %84 to i32
  %86 = getelementptr inbounds %struct.bAnimListElem, ptr %7, i64 0, i32 4
  store i32 %85, ptr %86, align 4, !tbaa !127
  %87 = icmp eq ptr %81, null
  br i1 %87, label %90, label %88

88:                                               ; preds = %79
  %89 = load ptr, ptr %81, align 8, !tbaa !57
  br label %90

90:                                               ; preds = %79, %88
  %91 = phi ptr [ %89, %88 ], [ null, %79 ]
  %92 = getelementptr inbounds %struct.bAnimListElem, ptr %7, i64 0, i32 8
  store ptr %91, ptr %92, align 8, !tbaa !110
  %93 = getelementptr inbounds %struct.bAnimListElem, ptr %7, i64 0, i32 7
  store i16 8, ptr %93, align 2, !tbaa !111
  %94 = tail call ptr @BKE_animdata_from_id(ptr noundef %0) #7
  store ptr %94, ptr %13, align 8, !tbaa !109
  br label %333

95:                                               ; preds = %5
  %96 = getelementptr inbounds %struct.Curve, ptr %0, i64 0, i32 1
  %97 = load ptr, ptr %96, align 8, !tbaa !156
  %98 = getelementptr inbounds %struct.Curve, ptr %0, i64 0, i32 23
  %99 = load i32, ptr %98, align 4, !tbaa !159
  %100 = and i32 %99, 2048
  %101 = getelementptr inbounds %struct.bAnimListElem, ptr %7, i64 0, i32 4
  store i32 %100, ptr %101, align 4, !tbaa !127
  %102 = icmp eq ptr %97, null
  br i1 %102, label %105, label %103

103:                                              ; preds = %95
  %104 = load ptr, ptr %97, align 8, !tbaa !57
  br label %105

105:                                              ; preds = %95, %103
  %106 = phi ptr [ %104, %103 ], [ null, %95 ]
  %107 = getelementptr inbounds %struct.bAnimListElem, ptr %7, i64 0, i32 8
  store ptr %106, ptr %107, align 8, !tbaa !110
  %108 = getelementptr inbounds %struct.bAnimListElem, ptr %7, i64 0, i32 7
  store i16 8, ptr %108, align 2, !tbaa !111
  %109 = tail call ptr @BKE_animdata_from_id(ptr noundef %0) #7
  store ptr %109, ptr %13, align 8, !tbaa !109
  br label %333

110:                                              ; preds = %5
  %111 = getelementptr inbounds %struct.bArmature, ptr %0, i64 0, i32 1
  %112 = load ptr, ptr %111, align 8, !tbaa !160
  %113 = getelementptr inbounds %struct.bArmature, ptr %0, i64 0, i32 8
  %114 = load i32, ptr %113, align 8, !tbaa !162
  %115 = and i32 %114, 8192
  %116 = getelementptr inbounds %struct.bAnimListElem, ptr %7, i64 0, i32 4
  store i32 %115, ptr %116, align 4, !tbaa !127
  %117 = icmp eq ptr %112, null
  br i1 %117, label %120, label %118

118:                                              ; preds = %110
  %119 = load ptr, ptr %112, align 8, !tbaa !57
  br label %120

120:                                              ; preds = %110, %118
  %121 = phi ptr [ %119, %118 ], [ null, %110 ]
  %122 = getelementptr inbounds %struct.bAnimListElem, ptr %7, i64 0, i32 8
  store ptr %121, ptr %122, align 8, !tbaa !110
  %123 = getelementptr inbounds %struct.bAnimListElem, ptr %7, i64 0, i32 7
  store i16 8, ptr %123, align 2, !tbaa !111
  %124 = tail call ptr @BKE_animdata_from_id(ptr noundef %0) #7
  store ptr %124, ptr %13, align 8, !tbaa !109
  br label %333

125:                                              ; preds = %5
  %126 = getelementptr inbounds %struct.Mesh, ptr %0, i64 0, i32 1
  %127 = load ptr, ptr %126, align 8, !tbaa !163
  %128 = getelementptr inbounds %struct.Mesh, ptr %0, i64 0, i32 38
  %129 = load i16, ptr %128, align 2, !tbaa !166
  %130 = and i16 %129, 512
  %131 = zext nneg i16 %130 to i32
  %132 = getelementptr inbounds %struct.bAnimListElem, ptr %7, i64 0, i32 4
  store i32 %131, ptr %132, align 4, !tbaa !127
  %133 = icmp eq ptr %127, null
  br i1 %133, label %136, label %134

134:                                              ; preds = %125
  %135 = load ptr, ptr %127, align 8, !tbaa !57
  br label %136

136:                                              ; preds = %125, %134
  %137 = phi ptr [ %135, %134 ], [ null, %125 ]
  %138 = getelementptr inbounds %struct.bAnimListElem, ptr %7, i64 0, i32 8
  store ptr %137, ptr %138, align 8, !tbaa !110
  %139 = getelementptr inbounds %struct.bAnimListElem, ptr %7, i64 0, i32 7
  store i16 8, ptr %139, align 2, !tbaa !111
  %140 = tail call ptr @BKE_animdata_from_id(ptr noundef %0) #7
  store ptr %140, ptr %13, align 8, !tbaa !109
  br label %333

141:                                              ; preds = %5
  %142 = getelementptr inbounds %struct.Lattice, ptr %0, i64 0, i32 1
  %143 = load ptr, ptr %142, align 8, !tbaa !167
  %144 = getelementptr inbounds %struct.Lattice, ptr %0, i64 0, i32 5
  %145 = load i16, ptr %144, align 2, !tbaa !169
  %146 = and i16 %145, 4
  %147 = zext nneg i16 %146 to i32
  %148 = getelementptr inbounds %struct.bAnimListElem, ptr %7, i64 0, i32 4
  store i32 %147, ptr %148, align 4, !tbaa !127
  %149 = icmp eq ptr %143, null
  br i1 %149, label %152, label %150

150:                                              ; preds = %141
  %151 = load ptr, ptr %143, align 8, !tbaa !57
  br label %152

152:                                              ; preds = %141, %150
  %153 = phi ptr [ %151, %150 ], [ null, %141 ]
  %154 = getelementptr inbounds %struct.bAnimListElem, ptr %7, i64 0, i32 8
  store ptr %153, ptr %154, align 8, !tbaa !110
  %155 = getelementptr inbounds %struct.bAnimListElem, ptr %7, i64 0, i32 7
  store i16 8, ptr %155, align 2, !tbaa !111
  %156 = tail call ptr @BKE_animdata_from_id(ptr noundef %0) #7
  store ptr %156, ptr %13, align 8, !tbaa !109
  br label %333

157:                                              ; preds = %5
  %158 = getelementptr inbounds %struct.Speaker, ptr %0, i64 0, i32 1
  %159 = load ptr, ptr %158, align 8, !tbaa !170
  %160 = getelementptr inbounds %struct.Speaker, ptr %0, i64 0, i32 13
  %161 = load i16, ptr %160, align 8, !tbaa !172
  %162 = and i16 %161, 1
  %163 = zext nneg i16 %162 to i32
  %164 = getelementptr inbounds %struct.bAnimListElem, ptr %7, i64 0, i32 4
  store i32 %163, ptr %164, align 4, !tbaa !127
  %165 = icmp eq ptr %159, null
  br i1 %165, label %168, label %166

166:                                              ; preds = %157
  %167 = load ptr, ptr %159, align 8, !tbaa !57
  br label %168

168:                                              ; preds = %157, %166
  %169 = phi ptr [ %167, %166 ], [ null, %157 ]
  %170 = getelementptr inbounds %struct.bAnimListElem, ptr %7, i64 0, i32 8
  store ptr %169, ptr %170, align 8, !tbaa !110
  %171 = getelementptr inbounds %struct.bAnimListElem, ptr %7, i64 0, i32 7
  store i16 8, ptr %171, align 2, !tbaa !111
  %172 = tail call ptr @BKE_animdata_from_id(ptr noundef %0) #7
  store ptr %172, ptr %13, align 8, !tbaa !109
  br label %333

173:                                              ; preds = %5
  %174 = getelementptr inbounds %struct.Key, ptr %0, i64 0, i32 1
  %175 = load ptr, ptr %174, align 8, !tbaa !85
  %176 = getelementptr inbounds %struct.Key, ptr %0, i64 0, i32 12
  %177 = load i16, ptr %176, align 2, !tbaa !173
  %178 = and i16 %177, 1
  %179 = zext nneg i16 %178 to i32
  %180 = getelementptr inbounds %struct.bAnimListElem, ptr %7, i64 0, i32 4
  store i32 %179, ptr %180, align 4, !tbaa !127
  %181 = icmp eq ptr %175, null
  br i1 %181, label %184, label %182

182:                                              ; preds = %173
  %183 = load ptr, ptr %175, align 8, !tbaa !57
  br label %184

184:                                              ; preds = %173, %182
  %185 = phi ptr [ %183, %182 ], [ null, %173 ]
  %186 = getelementptr inbounds %struct.bAnimListElem, ptr %7, i64 0, i32 8
  store ptr %185, ptr %186, align 8, !tbaa !110
  %187 = getelementptr inbounds %struct.bAnimListElem, ptr %7, i64 0, i32 7
  store i16 8, ptr %187, align 2, !tbaa !111
  %188 = tail call ptr @BKE_animdata_from_id(ptr noundef %0) #7
  store ptr %188, ptr %13, align 8, !tbaa !109
  br label %333

189:                                              ; preds = %5
  %190 = getelementptr inbounds %struct.World, ptr %0, i64 0, i32 1
  %191 = load ptr, ptr %190, align 8, !tbaa !174
  %192 = getelementptr inbounds %struct.World, ptr %0, i64 0, i32 66
  %193 = load i16, ptr %192, align 2, !tbaa !176
  %194 = and i16 %193, 1
  %195 = zext nneg i16 %194 to i32
  %196 = getelementptr inbounds %struct.bAnimListElem, ptr %7, i64 0, i32 4
  store i32 %195, ptr %196, align 4, !tbaa !127
  %197 = icmp eq ptr %191, null
  br i1 %197, label %200, label %198

198:                                              ; preds = %189
  %199 = load ptr, ptr %191, align 8, !tbaa !57
  br label %200

200:                                              ; preds = %189, %198
  %201 = phi ptr [ %199, %198 ], [ null, %189 ]
  %202 = getelementptr inbounds %struct.bAnimListElem, ptr %7, i64 0, i32 8
  store ptr %201, ptr %202, align 8, !tbaa !110
  %203 = getelementptr inbounds %struct.bAnimListElem, ptr %7, i64 0, i32 7
  store i16 8, ptr %203, align 2, !tbaa !111
  %204 = tail call ptr @BKE_animdata_from_id(ptr noundef %0) #7
  store ptr %204, ptr %13, align 8, !tbaa !109
  br label %333

205:                                              ; preds = %5
  %206 = getelementptr inbounds %struct.bNodeTree, ptr %0, i64 0, i32 1
  %207 = load ptr, ptr %206, align 8, !tbaa !177
  %208 = getelementptr inbounds %struct.bNodeTree, ptr %0, i64 0, i32 12
  %209 = load i32, ptr %208, align 4, !tbaa !180
  %210 = and i32 %209, 1
  %211 = getelementptr inbounds %struct.bAnimListElem, ptr %7, i64 0, i32 4
  store i32 %210, ptr %211, align 4, !tbaa !127
  %212 = icmp eq ptr %207, null
  br i1 %212, label %215, label %213

213:                                              ; preds = %205
  %214 = load ptr, ptr %207, align 8, !tbaa !57
  br label %215

215:                                              ; preds = %205, %213
  %216 = phi ptr [ %214, %213 ], [ null, %205 ]
  %217 = getelementptr inbounds %struct.bAnimListElem, ptr %7, i64 0, i32 8
  store ptr %216, ptr %217, align 8, !tbaa !110
  %218 = getelementptr inbounds %struct.bAnimListElem, ptr %7, i64 0, i32 7
  store i16 8, ptr %218, align 2, !tbaa !111
  %219 = tail call ptr @BKE_animdata_from_id(ptr noundef %0) #7
  store ptr %219, ptr %13, align 8, !tbaa !109
  br label %333

220:                                              ; preds = %5
  %221 = getelementptr inbounds %struct.FreestyleLineStyle, ptr %0, i64 0, i32 1
  %222 = load ptr, ptr %221, align 8, !tbaa !181
  %223 = getelementptr inbounds %struct.FreestyleLineStyle, ptr %0, i64 0, i32 9
  %224 = load i32, ptr %223, align 4, !tbaa !183
  %225 = and i32 %224, 1
  %226 = getelementptr inbounds %struct.bAnimListElem, ptr %7, i64 0, i32 4
  store i32 %225, ptr %226, align 4, !tbaa !127
  %227 = icmp eq ptr %222, null
  br i1 %227, label %230, label %228

228:                                              ; preds = %220
  %229 = load ptr, ptr %222, align 8, !tbaa !57
  br label %230

230:                                              ; preds = %220, %228
  %231 = phi ptr [ %229, %228 ], [ null, %220 ]
  %232 = getelementptr inbounds %struct.bAnimListElem, ptr %7, i64 0, i32 8
  store ptr %231, ptr %232, align 8, !tbaa !110
  %233 = getelementptr inbounds %struct.bAnimListElem, ptr %7, i64 0, i32 7
  store i16 8, ptr %233, align 2, !tbaa !111
  %234 = tail call ptr @BKE_animdata_from_id(ptr noundef %0) #7
  store ptr %234, ptr %13, align 8, !tbaa !109
  br label %333

235:                                              ; preds = %5
  %236 = load ptr, ptr %8, align 8, !tbaa !105
  %237 = getelementptr inbounds %struct.ParticleSettings, ptr %236, i64 0, i32 1
  %238 = load ptr, ptr %237, align 8, !tbaa !184
  %239 = getelementptr inbounds %struct.ParticleSettings, ptr %236, i64 0, i32 5
  %240 = load i32, ptr %239, align 8, !tbaa !186
  %241 = and i32 %240, 8
  %242 = getelementptr inbounds %struct.bAnimListElem, ptr %7, i64 0, i32 4
  store i32 %241, ptr %242, align 4, !tbaa !127
  %243 = icmp eq ptr %238, null
  br i1 %243, label %246, label %244

244:                                              ; preds = %235
  %245 = load ptr, ptr %238, align 8, !tbaa !57
  br label %246

246:                                              ; preds = %235, %244
  %247 = phi ptr [ %245, %244 ], [ null, %235 ]
  %248 = getelementptr inbounds %struct.bAnimListElem, ptr %7, i64 0, i32 8
  store ptr %247, ptr %248, align 8, !tbaa !110
  %249 = getelementptr inbounds %struct.bAnimListElem, ptr %7, i64 0, i32 7
  store i16 8, ptr %249, align 2, !tbaa !111
  %250 = tail call ptr @BKE_animdata_from_id(ptr noundef %0) #7
  store ptr %250, ptr %13, align 8, !tbaa !109
  br label %333

251:                                              ; preds = %5
  %252 = getelementptr inbounds %struct.Tex, ptr %0, i64 0, i32 1
  %253 = load ptr, ptr %252, align 8, !tbaa !187
  %254 = getelementptr inbounds %struct.Tex, ptr %0, i64 0, i32 31
  %255 = load i16, ptr %254, align 2, !tbaa !190
  %256 = and i16 %255, 512
  %257 = zext nneg i16 %256 to i32
  %258 = getelementptr inbounds %struct.bAnimListElem, ptr %7, i64 0, i32 4
  store i32 %257, ptr %258, align 4, !tbaa !127
  %259 = icmp eq ptr %253, null
  br i1 %259, label %262, label %260

260:                                              ; preds = %251
  %261 = load ptr, ptr %253, align 8, !tbaa !57
  br label %262

262:                                              ; preds = %251, %260
  %263 = phi ptr [ %261, %260 ], [ null, %251 ]
  %264 = getelementptr inbounds %struct.bAnimListElem, ptr %7, i64 0, i32 8
  store ptr %263, ptr %264, align 8, !tbaa !110
  %265 = getelementptr inbounds %struct.bAnimListElem, ptr %7, i64 0, i32 7
  store i16 8, ptr %265, align 2, !tbaa !111
  %266 = tail call ptr @BKE_animdata_from_id(ptr noundef %0) #7
  store ptr %266, ptr %13, align 8, !tbaa !109
  br label %333

267:                                              ; preds = %5
  %268 = getelementptr inbounds %struct.bActionGroup, ptr %0, i64 0, i32 3
  %269 = load i32, ptr %268, align 8, !tbaa !191
  %270 = getelementptr inbounds %struct.bAnimListElem, ptr %7, i64 0, i32 4
  store i32 %269, ptr %270, align 4, !tbaa !127
  %271 = getelementptr inbounds %struct.bAnimListElem, ptr %7, i64 0, i32 8
  store ptr null, ptr %271, align 8, !tbaa !110
  %272 = getelementptr inbounds %struct.bAnimListElem, ptr %7, i64 0, i32 7
  store i16 9, ptr %272, align 2, !tbaa !111
  br label %333

273:                                              ; preds = %5
  %274 = getelementptr inbounds %struct.FCurve, ptr %0, i64 0, i32 9
  %275 = load i16, ptr %274, align 8, !tbaa !194
  %276 = sext i16 %275 to i32
  %277 = getelementptr inbounds %struct.bAnimListElem, ptr %7, i64 0, i32 4
  store i32 %276, ptr %277, align 4, !tbaa !127
  %278 = getelementptr inbounds %struct.bAnimListElem, ptr %7, i64 0, i32 8
  store ptr %0, ptr %278, align 8, !tbaa !110
  %279 = getelementptr inbounds %struct.bAnimListElem, ptr %7, i64 0, i32 7
  store i16 1, ptr %279, align 2, !tbaa !111
  br label %333

280:                                              ; preds = %5
  %281 = load ptr, ptr %11, align 8, !tbaa !108
  %282 = getelementptr inbounds %struct.KeyBlock, ptr %0, i64 0, i32 7
  %283 = load i16, ptr %282, align 2, !tbaa !114
  %284 = sext i16 %283 to i32
  %285 = getelementptr inbounds %struct.bAnimListElem, ptr %7, i64 0, i32 4
  store i32 %284, ptr %285, align 4, !tbaa !127
  %286 = icmp eq ptr %281, null
  br i1 %286, label %333, label %287

287:                                              ; preds = %280
  %288 = getelementptr inbounds %struct.Key, ptr %281, i64 0, i32 6
  %289 = tail call i32 @BLI_findindex(ptr noundef nonnull %288, ptr noundef %0) #7
  %290 = getelementptr inbounds %struct.bAnimListElem, ptr %7, i64 0, i32 5
  store i32 %289, ptr %290, align 8, !tbaa !196
  %291 = load ptr, ptr %13, align 8, !tbaa !109
  %292 = icmp eq ptr %291, null
  br i1 %292, label %304, label %293

293:                                              ; preds = %287
  %294 = load ptr, ptr %291, align 8, !tbaa !57
  %295 = icmp eq ptr %294, null
  br i1 %295, label %304, label %296

296:                                              ; preds = %293
  %297 = tail call ptr @BKE_keyblock_curval_rnapath_get(ptr noundef nonnull %281, ptr noundef %0) #7
  %298 = icmp eq ptr %297, null
  br i1 %298, label %304, label %299

299:                                              ; preds = %296
  %300 = getelementptr inbounds %struct.bAction, ptr %294, i64 0, i32 1
  %301 = tail call ptr @list_find_fcurve(ptr noundef nonnull %300, ptr noundef nonnull %297, i32 noundef 0) #7
  %302 = getelementptr inbounds %struct.bAnimListElem, ptr %7, i64 0, i32 8
  store ptr %301, ptr %302, align 8, !tbaa !110
  %303 = load ptr, ptr @MEM_freeN, align 8, !tbaa !89
  tail call void %303(ptr noundef nonnull %297) #7
  br label %304

304:                                              ; preds = %296, %299, %293, %287
  %305 = getelementptr inbounds %struct.bAnimListElem, ptr %7, i64 0, i32 8
  %306 = load ptr, ptr %305, align 8, !tbaa !110
  %307 = icmp ne ptr %306, null
  %308 = zext i1 %307 to i16
  %309 = getelementptr inbounds %struct.bAnimListElem, ptr %7, i64 0, i32 7
  store i16 %308, ptr %309, align 2, !tbaa !111
  br label %333

310:                                              ; preds = %5
  %311 = getelementptr inbounds %struct.bGPDlayer, ptr %0, i64 0, i32 4
  %312 = load i32, ptr %311, align 8, !tbaa !125
  %313 = getelementptr inbounds %struct.bAnimListElem, ptr %7, i64 0, i32 4
  store i32 %312, ptr %313, align 4, !tbaa !127
  %314 = getelementptr inbounds %struct.bAnimListElem, ptr %7, i64 0, i32 8
  store ptr null, ptr %314, align 8, !tbaa !110
  %315 = getelementptr inbounds %struct.bAnimListElem, ptr %7, i64 0, i32 7
  store i16 2, ptr %315, align 2, !tbaa !111
  br label %333

316:                                              ; preds = %5
  %317 = getelementptr inbounds %struct.MaskLayer, ptr %0, i64 0, i32 12
  %318 = load i8, ptr %317, align 2, !tbaa !132
  %319 = zext i8 %318 to i32
  %320 = getelementptr inbounds %struct.bAnimListElem, ptr %7, i64 0, i32 4
  store i32 %319, ptr %320, align 4, !tbaa !127
  %321 = getelementptr inbounds %struct.bAnimListElem, ptr %7, i64 0, i32 8
  store ptr null, ptr %321, align 8, !tbaa !110
  %322 = getelementptr inbounds %struct.bAnimListElem, ptr %7, i64 0, i32 7
  store i16 3, ptr %322, align 2, !tbaa !111
  br label %333

323:                                              ; preds = %5
  %324 = getelementptr inbounds %struct.NlaTrack, ptr %0, i64 0, i32 3
  %325 = load i32, ptr %324, align 8, !tbaa !197
  %326 = getelementptr inbounds %struct.bAnimListElem, ptr %7, i64 0, i32 4
  store i32 %325, ptr %326, align 4, !tbaa !127
  %327 = getelementptr inbounds %struct.NlaTrack, ptr %0, i64 0, i32 2
  %328 = getelementptr inbounds %struct.bAnimListElem, ptr %7, i64 0, i32 8
  store ptr %327, ptr %328, align 8, !tbaa !110
  %329 = getelementptr inbounds %struct.bAnimListElem, ptr %7, i64 0, i32 7
  store i16 4, ptr %329, align 2, !tbaa !111
  br label %333

330:                                              ; preds = %5
  %331 = getelementptr inbounds %struct.bAnimListElem, ptr %7, i64 0, i32 8
  store ptr null, ptr %331, align 8, !tbaa !110
  %332 = getelementptr inbounds %struct.bAnimListElem, ptr %7, i64 0, i32 7
  store i16 0, ptr %332, align 2, !tbaa !111
  br label %333

333:                                              ; preds = %280, %304, %14, %17, %25, %35, %41, %58, %74, %90, %105, %120, %136, %152, %168, %184, %200, %215, %230, %246, %262, %267, %273, %310, %316, %323, %330, %5, %3
  %334 = phi ptr [ %7, %5 ], [ %7, %330 ], [ %7, %323 ], [ %7, %316 ], [ %7, %310 ], [ %7, %273 ], [ %7, %267 ], [ %7, %262 ], [ %7, %246 ], [ %7, %230 ], [ %7, %215 ], [ %7, %200 ], [ %7, %184 ], [ %7, %168 ], [ %7, %152 ], [ %7, %136 ], [ %7, %120 ], [ %7, %105 ], [ %7, %90 ], [ %7, %74 ], [ %7, %58 ], [ %7, %41 ], [ %7, %35 ], [ %7, %25 ], [ %7, %17 ], [ %7, %14 ], [ null, %3 ], [ %7, %304 ], [ %7, %280 ]
  ret ptr %334
}

declare void @BLI_addtail(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal fastcc i64 @animfilter_action(ptr noundef readonly %0, ptr noundef %1, ptr noundef %2, ptr nocapture noundef readonly %3, i32 noundef %4, ptr noundef %5) unnamed_addr #0 {
  %7 = alloca %struct.ListBase, align 8
  %8 = and i32 %4, 256
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %14, label %10

10:                                               ; preds = %6
  %11 = getelementptr inbounds %struct.ID, ptr %3, i64 0, i32 3
  %12 = load ptr, ptr %11, align 8, !tbaa !199
  %13 = icmp eq ptr %12, null
  br i1 %13, label %14, label %201

14:                                               ; preds = %10, %6
  %15 = getelementptr inbounds %struct.bAction, ptr %3, i64 0, i32 3
  %16 = load ptr, ptr %15, align 8, !tbaa !89
  %17 = icmp eq ptr %16, null
  br i1 %17, label %189, label %18

18:                                               ; preds = %14
  %19 = and i32 %4, 2
  %20 = icmp eq i32 %19, 0
  %21 = icmp eq ptr %0, null
  %22 = getelementptr inbounds %struct.bAnimContext, ptr %0, i64 0, i32 3
  %23 = getelementptr inbounds %struct.bAnimContext, ptr %0, i64 0, i32 3
  %24 = and i32 %4, 192
  %25 = icmp eq i32 %24, 0
  %26 = and i32 %4, 192
  %27 = icmp eq i32 %26, 0
  %28 = and i32 %4, 64
  %29 = icmp eq i32 %28, 0
  %30 = and i32 %4, 128
  %31 = icmp eq i32 %30, 0
  %32 = and i32 %4, -195
  %33 = icmp eq ptr %0, null
  %34 = getelementptr inbounds %struct.bAnimContext, ptr %0, i64 0, i32 3
  %35 = getelementptr inbounds %struct.bAnimContext, ptr %0, i64 0, i32 3
  br label %36

36:                                               ; preds = %18, %184
  %37 = phi ptr [ %16, %18 ], [ %187, %184 ]
  %38 = phi i64 [ 0, %18 ], [ %186, %184 ]
  %39 = phi ptr [ null, %18 ], [ %43, %184 ]
  %40 = getelementptr inbounds %struct.bActionGroup, ptr %37, i64 0, i32 2, i32 1
  %41 = load ptr, ptr %40, align 8, !tbaa !200
  %42 = icmp eq ptr %41, null
  %43 = select i1 %42, ptr %39, ptr %41
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %7) #7
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %7, i8 0, i64 16, i1 false)
  br i1 %20, label %78, label %44

44:                                               ; preds = %36
  br i1 %21, label %48, label %45

45:                                               ; preds = %44
  %46 = load i16, ptr %22, align 4, !tbaa !40
  %47 = icmp eq i16 %46, 2
  br i1 %47, label %54, label %48

48:                                               ; preds = %45, %44
  %49 = getelementptr inbounds %struct.bActionGroup, ptr %37, i64 0, i32 3
  %50 = load i32, ptr %49, align 8, !tbaa !191
  %51 = and i32 %50, 8
  %52 = icmp ne i32 %51, 0
  %53 = or i1 %21, %52
  br i1 %53, label %62, label %54

54:                                               ; preds = %48, %45
  %55 = load i16, ptr %23, align 4, !tbaa !40
  %56 = icmp eq i16 %55, 2
  br i1 %56, label %57, label %65

57:                                               ; preds = %54
  %58 = getelementptr inbounds %struct.bActionGroup, ptr %37, i64 0, i32 3
  %59 = load i32, ptr %58, align 8, !tbaa !191
  %60 = and i32 %59, 64
  %61 = icmp ne i32 %60, 0
  br label %62

62:                                               ; preds = %57, %48
  %63 = phi i1 [ %52, %48 ], [ %61, %57 ]
  %64 = or i1 %27, %63
  br i1 %64, label %78, label %66

65:                                               ; preds = %54
  br i1 %25, label %78, label %66

66:                                               ; preds = %65, %62
  br i1 %29, label %72, label %67

67:                                               ; preds = %66
  %68 = getelementptr inbounds %struct.bActionGroup, ptr %37, i64 0, i32 3
  %69 = load i32, ptr %68, align 8, !tbaa !191
  %70 = and i32 %69, 3
  %71 = icmp eq i32 %70, 0
  br i1 %71, label %72, label %78

72:                                               ; preds = %67, %66
  br i1 %31, label %184, label %73

73:                                               ; preds = %72
  %74 = getelementptr inbounds %struct.bActionGroup, ptr %37, i64 0, i32 3
  %75 = load i32, ptr %74, align 8, !tbaa !191
  %76 = and i32 %75, 3
  %77 = icmp eq i32 %76, 0
  br i1 %77, label %78, label %184

78:                                               ; preds = %67, %73, %65, %62, %36
  %79 = phi i32 [ %4, %65 ], [ %4, %62 ], [ %4, %36 ], [ %32, %73 ], [ %32, %67 ]
  %80 = and i32 %79, 2
  %81 = icmp eq i32 %80, 0
  br i1 %81, label %108, label %82

82:                                               ; preds = %78
  br i1 %33, label %86, label %83

83:                                               ; preds = %82
  %84 = load i16, ptr %34, align 4, !tbaa !40
  %85 = icmp eq i16 %84, 2
  br i1 %85, label %91, label %86

86:                                               ; preds = %83, %82
  %87 = getelementptr inbounds %struct.bActionGroup, ptr %37, i64 0, i32 3
  %88 = load i32, ptr %87, align 8, !tbaa !191
  %89 = and i32 %88, 8
  %90 = icmp eq i32 %89, 0
  br i1 %90, label %91, label %108

91:                                               ; preds = %86, %83
  br i1 %33, label %103, label %92

92:                                               ; preds = %91
  %93 = load i16, ptr %35, align 4, !tbaa !40
  %94 = icmp eq i16 %93, 2
  br i1 %94, label %95, label %103

95:                                               ; preds = %92
  %96 = getelementptr inbounds %struct.bActionGroup, ptr %37, i64 0, i32 3
  %97 = load i32, ptr %96, align 8, !tbaa !191
  %98 = and i32 %97, 64
  %99 = icmp ne i32 %98, 0
  %100 = and i32 %79, 8
  %101 = icmp eq i32 %100, 0
  %102 = or i1 %101, %99
  br i1 %102, label %108, label %106

103:                                              ; preds = %92, %91
  %104 = and i32 %79, 8
  %105 = icmp eq i32 %104, 0
  br i1 %105, label %108, label %106

106:                                              ; preds = %103, %95
  %107 = or i32 %79, 1073741824
  br label %108

108:                                              ; preds = %106, %103, %95, %86, %78
  %109 = phi i32 [ %107, %106 ], [ %79, %95 ], [ %79, %86 ], [ %79, %78 ], [ %79, %103 ]
  %110 = and i32 %109, 32
  %111 = icmp eq i32 %110, 0
  br i1 %111, label %117, label %112

112:                                              ; preds = %108
  %113 = getelementptr inbounds %struct.bActionGroup, ptr %37, i64 0, i32 3
  %114 = load i32, ptr %113, align 8, !tbaa !191
  %115 = and i32 %114, 2
  %116 = icmp eq i32 %115, 0
  br i1 %116, label %138, label %117

117:                                              ; preds = %112, %108
  %118 = and i32 %109, 4
  %119 = icmp eq i32 %118, 0
  br i1 %119, label %125, label %120

120:                                              ; preds = %117
  %121 = getelementptr inbounds %struct.bActionGroup, ptr %37, i64 0, i32 3
  %122 = load i32, ptr %121, align 8, !tbaa !191
  %123 = and i32 %122, 32
  %124 = icmp eq i32 %123, 0
  br i1 %124, label %125, label %138

125:                                              ; preds = %120, %117
  %126 = and i32 %109, 256
  %127 = icmp eq i32 %126, 0
  br i1 %127, label %133, label %128

128:                                              ; preds = %125
  %129 = getelementptr inbounds %struct.bActionGroup, ptr %37, i64 0, i32 3
  %130 = load i32, ptr %129, align 8, !tbaa !191
  %131 = and i32 %130, 4
  %132 = icmp eq i32 %131, 0
  br i1 %132, label %133, label %138

133:                                              ; preds = %128, %125
  %134 = getelementptr inbounds %struct.bActionGroup, ptr %37, i64 0, i32 2
  %135 = load ptr, ptr %134, align 8, !tbaa !201
  %136 = call fastcc ptr @animfilter_fcurve_next(ptr noundef %2, ptr noundef %135, ptr noundef nonnull %37, i32 noundef %109, ptr noundef %5)
  %137 = call fastcc i64 @animfilter_fcurves(ptr noundef nonnull %7, ptr noundef %2, ptr noundef %136, ptr noundef nonnull %37, i32 noundef %109, ptr noundef %5)
  br label %138

138:                                              ; preds = %133, %128, %120, %112
  %139 = phi i64 [ 0, %120 ], [ %137, %133 ], [ 0, %128 ], [ 0, %112 ]
  %140 = icmp eq i64 %139, 0
  br i1 %140, label %184, label %141

141:                                              ; preds = %138
  %142 = and i32 %79, 8
  %143 = icmp eq i32 %142, 0
  br i1 %143, label %181, label %144

144:                                              ; preds = %141
  %145 = and i32 %79, 192
  %146 = icmp eq i32 %145, 0
  br i1 %146, label %163, label %147

147:                                              ; preds = %144
  %148 = and i32 %79, 64
  %149 = icmp eq i32 %148, 0
  br i1 %149, label %155, label %150

150:                                              ; preds = %147
  %151 = getelementptr inbounds %struct.bActionGroup, ptr %37, i64 0, i32 3
  %152 = load i32, ptr %151, align 8, !tbaa !191
  %153 = and i32 %152, 3
  %154 = icmp eq i32 %153, 0
  br i1 %154, label %155, label %163

155:                                              ; preds = %150, %147
  %156 = and i32 %79, 128
  %157 = icmp eq i32 %156, 0
  br i1 %157, label %181, label %158

158:                                              ; preds = %155
  %159 = getelementptr inbounds %struct.bActionGroup, ptr %37, i64 0, i32 3
  %160 = load i32, ptr %159, align 8, !tbaa !191
  %161 = and i32 %160, 3
  %162 = icmp eq i32 %161, 0
  br i1 %162, label %163, label %181

163:                                              ; preds = %158, %150, %144
  %164 = and i32 %79, 1073741824
  %165 = icmp eq i32 %164, 0
  br i1 %165, label %166, label %184

166:                                              ; preds = %163
  %167 = load ptr, ptr @MEM_callocN, align 8, !tbaa !89
  %168 = call ptr %167(i64 noundef 64, ptr noundef nonnull @.str.3) #7
  %169 = getelementptr inbounds %struct.bAnimListElem, ptr %168, i64 0, i32 2
  store ptr %37, ptr %169, align 8, !tbaa !105
  %170 = getelementptr inbounds %struct.bAnimListElem, ptr %168, i64 0, i32 3
  store i32 6, ptr %170, align 8, !tbaa !107
  %171 = getelementptr inbounds %struct.bAnimListElem, ptr %168, i64 0, i32 9
  store ptr %5, ptr %171, align 8, !tbaa !108
  %172 = call ptr @BKE_animdata_from_id(ptr noundef %5) #7
  %173 = getelementptr inbounds %struct.bAnimListElem, ptr %168, i64 0, i32 10
  store ptr %172, ptr %173, align 8, !tbaa !109
  %174 = getelementptr inbounds %struct.bActionGroup, ptr %37, i64 0, i32 3
  %175 = load i32, ptr %174, align 8, !tbaa !191
  %176 = getelementptr inbounds %struct.bAnimListElem, ptr %168, i64 0, i32 4
  store i32 %175, ptr %176, align 4, !tbaa !127
  %177 = getelementptr inbounds %struct.bAnimListElem, ptr %168, i64 0, i32 8
  store ptr null, ptr %177, align 8, !tbaa !110
  %178 = getelementptr inbounds %struct.bAnimListElem, ptr %168, i64 0, i32 7
  store i16 9, ptr %178, align 2, !tbaa !111
  %179 = icmp eq ptr %168, null
  br i1 %179, label %181, label %180

180:                                              ; preds = %166
  call void @BLI_addtail(ptr noundef %1, ptr noundef nonnull %168) #7
  br label %181

181:                                              ; preds = %180, %166, %158, %155, %141
  %182 = phi i64 [ 0, %158 ], [ 0, %155 ], [ 0, %141 ], [ 1, %180 ], [ 0, %166 ]
  call void @BLI_movelisttolist(ptr noundef %1, ptr noundef nonnull %7) #7
  %183 = add i64 %182, %139
  br label %184

184:                                              ; preds = %72, %73, %138, %163, %181
  %185 = phi i64 [ 0, %73 ], [ 1, %163 ], [ %183, %181 ], [ 0, %138 ], [ 0, %72 ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %7) #7
  %186 = add i64 %185, %38
  %187 = load ptr, ptr %37, align 8, !tbaa !89
  %188 = icmp eq ptr %187, null
  br i1 %188, label %189, label %36, !llvm.loop !202

189:                                              ; preds = %184, %14
  %190 = phi ptr [ null, %14 ], [ %43, %184 ]
  %191 = phi i64 [ 0, %14 ], [ %186, %184 ]
  %192 = and i32 %4, 32
  %193 = icmp eq i32 %192, 0
  br i1 %193, label %194, label %201

194:                                              ; preds = %189
  %195 = icmp eq ptr %190, null
  %196 = getelementptr inbounds %struct.bAction, ptr %3, i64 0, i32 1
  %197 = select i1 %195, ptr %196, ptr %190
  %198 = load ptr, ptr %197, align 8, !tbaa !89
  %199 = call fastcc i64 @animfilter_fcurves(ptr noundef %1, ptr noundef %2, ptr noundef %198, ptr noundef null, i32 noundef %4, ptr noundef %5)
  %200 = add i64 %199, %191
  br label %201

201:                                              ; preds = %189, %194, %10
  %202 = phi i64 [ 0, %10 ], [ %191, %189 ], [ %200, %194 ]
  ret i64 %202
}

; Function Attrs: nounwind uwtable
define internal fastcc void @animdata_filter_dopesheet(ptr noundef %0, ptr noundef %1, ptr noundef %2, i32 noundef %3) unnamed_addr #0 {
  %5 = load ptr, ptr %2, align 8, !tbaa !90
  %6 = icmp eq ptr %5, null
  br i1 %6, label %11, label %7

7:                                                ; preds = %4
  %8 = getelementptr inbounds %struct.ID, ptr %5, i64 0, i32 4
  %9 = load i16, ptr %8, align 8, !tbaa !203
  %10 = icmp eq i16 %9, 17235
  br i1 %10, label %22, label %11

11:                                               ; preds = %7, %4
  %12 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str)
  %13 = load i32, ptr getelementptr inbounds (%struct.Global, ptr @G, i64 0, i32 16), align 4, !tbaa !204
  %14 = and i32 %13, 1
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %97, label %16

16:                                               ; preds = %11
  %17 = load ptr, ptr %2, align 8, !tbaa !90
  %18 = icmp eq ptr %17, null
  %19 = getelementptr inbounds %struct.ID, ptr %17, i64 0, i32 4
  %20 = select i1 %18, ptr null, ptr %19
  %21 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.11, ptr noundef %17, ptr noundef %20)
  br label %97

22:                                               ; preds = %7
  %23 = getelementptr inbounds %struct.bDopeSheet, ptr %2, i64 0, i32 4
  %24 = load i32, ptr %23, align 8, !tbaa !92
  %25 = shl i32 %24, 6
  %26 = and i32 %25, 512
  %27 = or i32 %26, %3
  %28 = tail call fastcc i64 @animdata_filter_dopesheet_scene(ptr noundef %0, ptr noundef %1, ptr noundef nonnull %2, ptr noundef nonnull %5, i32 noundef %27)
  %29 = getelementptr inbounds %struct.Scene, ptr %5, i64 0, i32 5
  %30 = load ptr, ptr %29, align 8, !tbaa !89
  %31 = icmp eq ptr %30, null
  br i1 %31, label %97, label %32

32:                                               ; preds = %22
  %33 = and i32 %3, 1
  %34 = icmp eq i32 %33, 0
  %35 = getelementptr inbounds %struct.Scene, ptr %5, i64 0, i32 12
  %36 = and i32 %3, 4
  %37 = icmp eq i32 %36, 0
  %38 = getelementptr inbounds %struct.bDopeSheet, ptr %2, i64 0, i32 2
  br label %39

39:                                               ; preds = %32, %93
  %40 = phi ptr [ %30, %32 ], [ %95, %93 ]
  %41 = phi i64 [ %28, %32 ], [ %94, %93 ]
  %42 = getelementptr inbounds %struct.Base, ptr %40, i64 0, i32 7
  %43 = load ptr, ptr %42, align 8, !tbaa !81
  %44 = icmp eq ptr %43, null
  br i1 %44, label %93, label %45

45:                                               ; preds = %39
  br i1 %34, label %64, label %46

46:                                               ; preds = %45
  %47 = load i32, ptr %23, align 8, !tbaa !92
  %48 = and i32 %47, 67108864
  %49 = icmp eq i32 %48, 0
  br i1 %49, label %50, label %64

50:                                               ; preds = %46
  %51 = load i32, ptr %35, align 8, !tbaa !205
  %52 = getelementptr inbounds %struct.Object, ptr %43, i64 0, i32 52
  %53 = load i32, ptr %52, align 8, !tbaa !206
  %54 = getelementptr inbounds %struct.Base, ptr %40, i64 0, i32 2
  %55 = load i32, ptr %54, align 8, !tbaa !207
  %56 = or i32 %55, %53
  %57 = and i32 %56, %51
  %58 = icmp eq i32 %57, 0
  br i1 %58, label %93, label %59

59:                                               ; preds = %50
  %60 = getelementptr inbounds %struct.Object, ptr %43, i64 0, i32 102
  %61 = load i8, ptr %60, align 8, !tbaa !208
  %62 = and i8 %61, 1
  %63 = icmp eq i8 %62, 0
  br i1 %63, label %64, label %93

64:                                               ; preds = %59, %46, %45
  br i1 %37, label %74, label %65

65:                                               ; preds = %64
  %66 = getelementptr inbounds %struct.Object, ptr %43, i64 0, i32 1
  %67 = load ptr, ptr %66, align 8, !tbaa !52
  %68 = icmp eq ptr %67, null
  br i1 %68, label %74, label %69

69:                                               ; preds = %65
  %70 = getelementptr inbounds %struct.AnimData, ptr %67, i64 0, i32 7
  %71 = load i32, ptr %70, align 8, !tbaa !144
  %72 = and i32 %71, 65536
  %73 = icmp eq i32 %72, 0
  br i1 %73, label %74, label %93

74:                                               ; preds = %65, %69, %64
  %75 = load i32, ptr %23, align 8, !tbaa !92
  %76 = and i32 %75, 1
  %77 = icmp eq i32 %76, 0
  br i1 %77, label %83, label %78

78:                                               ; preds = %74
  %79 = getelementptr inbounds %struct.Base, ptr %40, i64 0, i32 4
  %80 = load i32, ptr %79, align 8, !tbaa !209
  %81 = and i32 %80, 1
  %82 = icmp eq i32 %81, 0
  br i1 %82, label %93, label %83

83:                                               ; preds = %78, %74
  %84 = and i32 %75, 32
  %85 = icmp eq i32 %84, 0
  br i1 %85, label %90, label %86

86:                                               ; preds = %83
  %87 = load ptr, ptr %38, align 8, !tbaa !210
  %88 = tail call zeroext i8 @BKE_group_object_exists(ptr noundef %87, ptr noundef nonnull %43) #7
  %89 = icmp eq i8 %88, 0
  br i1 %89, label %93, label %90

90:                                               ; preds = %86, %83
  %91 = tail call fastcc i64 @animdata_filter_dopesheet_ob(ptr noundef %0, ptr noundef %1, ptr noundef nonnull %2, ptr noundef nonnull %40, i32 noundef %27)
  %92 = add i64 %91, %41
  br label %93

93:                                               ; preds = %90, %50, %59, %69, %78, %86, %39
  %94 = phi i64 [ %41, %39 ], [ %92, %90 ], [ %41, %50 ], [ %41, %59 ], [ %41, %69 ], [ %41, %78 ], [ %41, %86 ]
  %95 = load ptr, ptr %40, align 8, !tbaa !89
  %96 = icmp eq ptr %95, null
  br i1 %96, label %97, label %39, !llvm.loop !211

97:                                               ; preds = %93, %22, %11, %16
  ret void
}

; Function Attrs: nofree nounwind
declare noundef i32 @printf(ptr nocapture noundef readonly, ...) local_unnamed_addr #4

declare ptr @BKE_key_from_object(ptr noundef) local_unnamed_addr #2

declare ptr @BKE_animdata_from_id(ptr noundef) local_unnamed_addr #2

declare i32 @BLI_findindex(ptr noundef, ptr noundef) local_unnamed_addr #2

declare ptr @BKE_keyblock_curval_rnapath_get(ptr noundef, ptr noundef) local_unnamed_addr #2

declare ptr @list_find_fcurve(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal fastcc i64 @animfilter_fcurves(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, i32 noundef %4, ptr noundef %5) unnamed_addr #0 {
  %7 = tail call fastcc ptr @animfilter_fcurve_next(ptr noundef %1, ptr noundef %2, ptr noundef %3, i32 noundef %4, ptr noundef %5)
  %8 = icmp eq ptr %7, null
  br i1 %8, label %36, label %9

9:                                                ; preds = %6
  %10 = and i32 %4, 1073741824
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %12, label %36

12:                                               ; preds = %9, %31
  %13 = phi ptr [ %34, %31 ], [ %7, %9 ]
  %14 = phi i64 [ %32, %31 ], [ 0, %9 ]
  %15 = load ptr, ptr @MEM_callocN, align 8, !tbaa !89
  %16 = tail call ptr %15(i64 noundef 64, ptr noundef nonnull @.str.3) #7
  %17 = getelementptr inbounds %struct.bAnimListElem, ptr %16, i64 0, i32 2
  store ptr %13, ptr %17, align 8, !tbaa !105
  %18 = getelementptr inbounds %struct.bAnimListElem, ptr %16, i64 0, i32 3
  store i32 7, ptr %18, align 8, !tbaa !107
  %19 = getelementptr inbounds %struct.bAnimListElem, ptr %16, i64 0, i32 9
  store ptr %5, ptr %19, align 8, !tbaa !108
  %20 = tail call ptr @BKE_animdata_from_id(ptr noundef %5) #7
  %21 = getelementptr inbounds %struct.bAnimListElem, ptr %16, i64 0, i32 10
  store ptr %20, ptr %21, align 8, !tbaa !109
  %22 = getelementptr inbounds %struct.FCurve, ptr %13, i64 0, i32 9
  %23 = load i16, ptr %22, align 8, !tbaa !194
  %24 = sext i16 %23 to i32
  %25 = getelementptr inbounds %struct.bAnimListElem, ptr %16, i64 0, i32 4
  store i32 %24, ptr %25, align 4, !tbaa !127
  %26 = getelementptr inbounds %struct.bAnimListElem, ptr %16, i64 0, i32 8
  store ptr %13, ptr %26, align 8, !tbaa !110
  %27 = getelementptr inbounds %struct.bAnimListElem, ptr %16, i64 0, i32 7
  store i16 1, ptr %27, align 2, !tbaa !111
  %28 = icmp eq ptr %16, null
  br i1 %28, label %31, label %29

29:                                               ; preds = %12
  tail call void @BLI_addtail(ptr noundef %0, ptr noundef nonnull %16) #7
  %30 = add i64 %14, 1
  br label %31

31:                                               ; preds = %29, %12
  %32 = phi i64 [ %30, %29 ], [ %14, %12 ]
  %33 = load ptr, ptr %13, align 8, !tbaa !212
  %34 = tail call fastcc ptr @animfilter_fcurve_next(ptr noundef %1, ptr noundef %33, ptr noundef %3, i32 noundef %4, ptr noundef %5)
  %35 = icmp eq ptr %34, null
  br i1 %35, label %36, label %12, !llvm.loop !213

36:                                               ; preds = %31, %9, %6
  %37 = phi i64 [ 0, %6 ], [ 1, %9 ], [ %32, %31 ]
  ret i64 %37
}

; Function Attrs: nounwind uwtable
define internal fastcc ptr @animfilter_fcurve_next(ptr noundef %0, ptr noundef %1, ptr noundef readnone %2, i32 noundef %3, ptr noundef %4) unnamed_addr #0 {
  %6 = alloca %struct.bAnimListElem, align 8
  %7 = alloca [256 x i8], align 16
  %8 = icmp eq ptr %1, null
  br i1 %8, label %256, label %9

9:                                                ; preds = %5
  %10 = icmp ne ptr %0, null
  %11 = icmp ne ptr %4, null
  %12 = icmp sgt i32 %3, -1
  %13 = and i1 %12, %11
  %14 = and i1 %10, %13
  %15 = getelementptr inbounds %struct.bDopeSheet, ptr %0, i64 0, i32 4
  %16 = and i32 %3, 1
  %17 = icmp ne i32 %16, 0
  %18 = getelementptr inbounds %struct.ID, ptr %4, i64 0, i32 4
  %19 = getelementptr inbounds %struct.Object, ptr %4, i64 0, i32 18
  %20 = getelementptr inbounds %struct.Object, ptr %4, i64 0, i32 19
  %21 = and i32 %3, 4
  %22 = icmp eq i32 %21, 0
  %23 = and i32 %3, 256
  %24 = icmp eq i32 %23, 0
  %25 = and i32 %3, 192
  %26 = icmp eq i32 %25, 0
  %27 = and i32 %3, 64
  %28 = icmp eq i32 %27, 0
  %29 = and i32 %3, 128
  %30 = icmp eq i32 %29, 0
  %31 = and i32 %3, 768
  %32 = icmp eq i32 %31, 768
  %33 = and i32 %3, 16
  %34 = icmp eq i32 %33, 0
  %35 = getelementptr inbounds %struct.bDopeSheet, ptr %0, i64 0, i32 4
  %36 = getelementptr inbounds %struct.bAnimListElem, ptr %6, i64 0, i32 3
  %37 = getelementptr inbounds %struct.bAnimListElem, ptr %6, i64 0, i32 9
  %38 = getelementptr inbounds %struct.bAnimListElem, ptr %6, i64 0, i32 2
  %39 = getelementptr inbounds %struct.bDopeSheet, ptr %0, i64 0, i32 3
  br label %40

40:                                               ; preds = %9, %253
  %41 = phi ptr [ %1, %9 ], [ %254, %253 ]
  %42 = getelementptr inbounds %struct.FCurve, ptr %41, i64 0, i32 2
  %43 = load ptr, ptr %42, align 8, !tbaa !214
  %44 = icmp eq ptr %43, %2
  br i1 %44, label %45, label %256

45:                                               ; preds = %40
  br i1 %14, label %46, label %152

46:                                               ; preds = %45
  %47 = load i32, ptr %15, align 8, !tbaa !92
  %48 = and i32 %47, 67108865
  %49 = icmp eq i32 %48, 67108864
  br i1 %49, label %152, label %50

50:                                               ; preds = %46
  %51 = and i32 %47, 67108864
  %52 = icmp eq i32 %51, 0
  %53 = and i1 %17, %52
  %54 = load i16, ptr %18, align 8, !tbaa !203
  switch i16 %54, label %152 [
    i16 16975, label %55
    i16 17235, label %98
    i16 21582, label %128
  ]

55:                                               ; preds = %50
  %56 = getelementptr inbounds %struct.FCurve, ptr %41, i64 0, i32 12
  %57 = load ptr, ptr %56, align 8, !tbaa !215
  %58 = icmp eq ptr %57, null
  br i1 %58, label %152, label %59

59:                                               ; preds = %55
  %60 = call ptr @strstr(ptr noundef nonnull dereferenceable(1) %57, ptr noundef nonnull dereferenceable(1) @.str.4) #8
  %61 = icmp eq ptr %60, null
  br i1 %61, label %152, label %62

62:                                               ; preds = %59
  %63 = call ptr @BLI_str_quoted_substrN(ptr noundef nonnull %57, ptr noundef nonnull @.str.5) #7
  %64 = load ptr, ptr %19, align 8, !tbaa !216
  %65 = call ptr @BKE_pose_channel_find_name(ptr noundef %64, ptr noundef %63) #7
  %66 = icmp eq ptr %63, null
  br i1 %66, label %69, label %67

67:                                               ; preds = %62
  %68 = load ptr, ptr @MEM_freeN, align 8, !tbaa !89
  call void %68(ptr noundef nonnull %63) #7
  br label %69

69:                                               ; preds = %67, %62
  %70 = icmp eq ptr %65, null
  br i1 %70, label %152, label %71

71:                                               ; preds = %69
  %72 = getelementptr inbounds %struct.bPoseChannel, ptr %65, i64 0, i32 12
  %73 = load ptr, ptr %72, align 8, !tbaa !217
  %74 = icmp eq ptr %73, null
  br i1 %74, label %152, label %75

75:                                               ; preds = %71
  br i1 %53, label %76, label %89

76:                                               ; preds = %75
  %77 = load ptr, ptr %20, align 8, !tbaa !219
  %78 = getelementptr inbounds %struct.bArmature, ptr %77, i64 0, i32 15
  %79 = load i32, ptr %78, align 8, !tbaa !220
  %80 = getelementptr inbounds %struct.Bone, ptr %73, i64 0, i32 25
  %81 = load i32, ptr %80, align 8, !tbaa !221
  %82 = and i32 %81, %79
  %83 = icmp eq i32 %82, 0
  br i1 %83, label %253, label %84

84:                                               ; preds = %76
  %85 = getelementptr inbounds %struct.Bone, ptr %73, i64 0, i32 10
  %86 = load i32, ptr %85, align 8, !tbaa !223
  %87 = and i32 %86, 64
  %88 = icmp eq i32 %87, 0
  br i1 %88, label %89, label %253

89:                                               ; preds = %84, %75
  %90 = load i32, ptr %15, align 8, !tbaa !92
  %91 = and i32 %90, 1
  %92 = icmp eq i32 %91, 0
  br i1 %92, label %152, label %93

93:                                               ; preds = %89
  %94 = getelementptr inbounds %struct.Bone, ptr %73, i64 0, i32 10
  %95 = load i32, ptr %94, align 8, !tbaa !223
  %96 = and i32 %95, 1
  %97 = icmp eq i32 %96, 0
  br i1 %97, label %253, label %152

98:                                               ; preds = %50
  %99 = getelementptr inbounds %struct.FCurve, ptr %41, i64 0, i32 12
  %100 = load ptr, ptr %99, align 8, !tbaa !215
  %101 = icmp eq ptr %100, null
  br i1 %101, label %152, label %102

102:                                              ; preds = %98
  %103 = call ptr @strstr(ptr noundef nonnull dereferenceable(1) %100, ptr noundef nonnull dereferenceable(1) @.str.6) #8
  %104 = icmp eq ptr %103, null
  br i1 %104, label %152, label %105

105:                                              ; preds = %102
  %106 = call ptr @BKE_sequencer_editing_get(ptr noundef nonnull %4, i8 noundef zeroext 0) #7
  %107 = icmp eq ptr %106, null
  br i1 %107, label %116, label %108

108:                                              ; preds = %105
  %109 = load ptr, ptr %99, align 8, !tbaa !215
  %110 = call ptr @BLI_str_quoted_substrN(ptr noundef %109, ptr noundef nonnull @.str.7) #7
  %111 = load ptr, ptr %106, align 8, !tbaa !224
  %112 = call ptr @BKE_sequence_get_by_name(ptr noundef %111, ptr noundef %110, i8 noundef zeroext 0) #7
  %113 = icmp eq ptr %110, null
  br i1 %113, label %116, label %114

114:                                              ; preds = %108
  %115 = load ptr, ptr @MEM_freeN, align 8, !tbaa !89
  call void %115(ptr noundef nonnull %110) #7
  br label %116

116:                                              ; preds = %114, %108, %105
  %117 = phi ptr [ %112, %114 ], [ %112, %108 ], [ null, %105 ]
  %118 = load i32, ptr %15, align 8, !tbaa !92
  %119 = and i32 %118, 1
  %120 = icmp eq i32 %119, 0
  br i1 %120, label %152, label %121

121:                                              ; preds = %116
  %122 = icmp eq ptr %117, null
  br i1 %122, label %253, label %123

123:                                              ; preds = %121
  %124 = getelementptr inbounds %struct.Sequence, ptr %117, i64 0, i32 5
  %125 = load i32, ptr %124, align 8, !tbaa !226
  %126 = and i32 %125, 1
  %127 = icmp eq i32 %126, 0
  br i1 %127, label %253, label %152

128:                                              ; preds = %50
  %129 = getelementptr inbounds %struct.FCurve, ptr %41, i64 0, i32 12
  %130 = load ptr, ptr %129, align 8, !tbaa !215
  %131 = icmp eq ptr %130, null
  br i1 %131, label %152, label %132

132:                                              ; preds = %128
  %133 = call ptr @strstr(ptr noundef nonnull dereferenceable(1) %130, ptr noundef nonnull dereferenceable(1) @.str.8) #8
  %134 = icmp eq ptr %133, null
  br i1 %134, label %152, label %135

135:                                              ; preds = %132
  %136 = call ptr @BLI_str_quoted_substrN(ptr noundef nonnull %130, ptr noundef nonnull @.str.9) #7
  %137 = call ptr @nodeFindNodebyName(ptr noundef nonnull %4, ptr noundef %136) #7
  %138 = icmp eq ptr %136, null
  br i1 %138, label %141, label %139

139:                                              ; preds = %135
  %140 = load ptr, ptr @MEM_freeN, align 8, !tbaa !89
  call void %140(ptr noundef nonnull %136) #7
  br label %141

141:                                              ; preds = %139, %135
  %142 = load i32, ptr %15, align 8, !tbaa !92
  %143 = and i32 %142, 1
  %144 = icmp ne i32 %143, 0
  %145 = icmp ne ptr %137, null
  %146 = select i1 %144, i1 %145, i1 false
  br i1 %146, label %147, label %152

147:                                              ; preds = %141
  %148 = getelementptr inbounds %struct.bNode, ptr %137, i64 0, i32 7
  %149 = load i32, ptr %148, align 8, !tbaa !228
  %150 = and i32 %149, 1
  %151 = icmp eq i32 %150, 0
  br i1 %151, label %253, label %152

152:                                              ; preds = %132, %128, %50, %102, %98, %59, %55, %93, %89, %71, %69, %123, %116, %147, %141, %46, %45
  br i1 %22, label %158, label %153

153:                                              ; preds = %152
  %154 = getelementptr inbounds %struct.FCurve, ptr %41, i64 0, i32 9
  %155 = load i16, ptr %154, align 8, !tbaa !194
  %156 = and i16 %155, 1
  %157 = icmp eq i16 %156, 0
  br i1 %157, label %253, label %158

158:                                              ; preds = %153, %152
  br i1 %24, label %164, label %159

159:                                              ; preds = %158
  %160 = getelementptr inbounds %struct.FCurve, ptr %41, i64 0, i32 9
  %161 = load i16, ptr %160, align 8, !tbaa !194
  %162 = and i16 %161, 8
  %163 = icmp eq i16 %162, 0
  br i1 %163, label %164, label %253

164:                                              ; preds = %159, %158
  br i1 %26, label %177, label %165

165:                                              ; preds = %164
  br i1 %28, label %171, label %166

166:                                              ; preds = %165
  %167 = getelementptr inbounds %struct.FCurve, ptr %41, i64 0, i32 9
  %168 = load i16, ptr %167, align 8, !tbaa !194
  %169 = and i16 %168, 2
  %170 = icmp eq i16 %169, 0
  br i1 %170, label %171, label %177

171:                                              ; preds = %166, %165
  br i1 %30, label %253, label %172

172:                                              ; preds = %171
  %173 = getelementptr inbounds %struct.FCurve, ptr %41, i64 0, i32 9
  %174 = load i16, ptr %173, align 8, !tbaa !194
  %175 = and i16 %174, 2
  %176 = icmp eq i16 %175, 0
  br i1 %176, label %177, label %253

177:                                              ; preds = %172, %166, %164
  br i1 %32, label %178, label %183

178:                                              ; preds = %177
  %179 = getelementptr inbounds %struct.FCurve, ptr %41, i64 0, i32 9
  %180 = load i16, ptr %179, align 8, !tbaa !194
  %181 = and i16 %180, 2
  %182 = icmp eq i16 %181, 0
  br i1 %182, label %253, label %183

183:                                              ; preds = %177, %178
  br i1 %34, label %189, label %184

184:                                              ; preds = %183
  %185 = getelementptr inbounds %struct.FCurve, ptr %41, i64 0, i32 9
  %186 = load i16, ptr %185, align 8, !tbaa !194
  %187 = and i16 %186, 4
  %188 = icmp eq i16 %187, 0
  br i1 %188, label %253, label %189

189:                                              ; preds = %184, %183
  br i1 %10, label %190, label %256

190:                                              ; preds = %189
  %191 = load i32, ptr %35, align 8, !tbaa !92
  %192 = and i32 %191, 134217728
  %193 = icmp ne i32 %192, 0
  %194 = and i1 %11, %193
  br i1 %194, label %195, label %210

195:                                              ; preds = %190
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %6) #7
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %6, i8 0, i64 64, i1 false)
  store i32 7, ptr %36, align 8, !tbaa !107
  store ptr %4, ptr %37, align 8, !tbaa !108
  store ptr %41, ptr %38, align 8, !tbaa !105
  %196 = call ptr @ANIM_channel_get_typeinfo(ptr noundef nonnull %6) #7
  %197 = icmp eq ptr %196, null
  br i1 %197, label %207, label %198

198:                                              ; preds = %195
  %199 = getelementptr inbounds %struct.bAnimChannelType, ptr %196, i64 0, i32 6
  %200 = load ptr, ptr %199, align 8, !tbaa !230
  %201 = icmp eq ptr %200, null
  br i1 %201, label %207, label %202

202:                                              ; preds = %198
  call void @llvm.lifetime.start.p0(i64 256, ptr nonnull %7) #7
  %203 = load ptr, ptr %199, align 8, !tbaa !230
  call void %203(ptr noundef nonnull %6, ptr noundef nonnull %7) #7
  %204 = call ptr @BLI_strcasestr(ptr noundef nonnull %7, ptr noundef nonnull %39) #7
  %205 = icmp eq ptr %204, null
  %206 = zext i1 %205 to i8
  call void @llvm.lifetime.end.p0(i64 256, ptr nonnull %7) #7
  br label %207

207:                                              ; preds = %195, %198, %202
  %208 = phi i8 [ %206, %202 ], [ 1, %198 ], [ 1, %195 ]
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %6) #7
  %209 = icmp eq i8 %208, 0
  br i1 %209, label %210, label %253

210:                                              ; preds = %190, %207
  %211 = load i32, ptr %35, align 8, !tbaa !92
  %212 = and i32 %211, 268435456
  %213 = icmp eq i32 %212, 0
  br i1 %213, label %256, label %214

214:                                              ; preds = %210
  %215 = getelementptr inbounds %struct.FCurve, ptr %41, i64 0, i32 9
  %216 = load i16, ptr %215, align 8, !tbaa !194
  %217 = and i16 %216, 1024
  %218 = icmp eq i16 %217, 0
  br i1 %218, label %219, label %256

219:                                              ; preds = %214
  %220 = getelementptr inbounds %struct.FCurve, ptr %41, i64 0, i32 3
  %221 = load ptr, ptr %220, align 8, !tbaa !232
  %222 = icmp eq ptr %221, null
  br i1 %222, label %253, label %223

223:                                              ; preds = %219
  %224 = getelementptr inbounds %struct.ChannelDriver, ptr %221, i64 0, i32 6
  %225 = load i32, ptr %224, align 4, !tbaa !233
  %226 = and i32 %225, 1
  %227 = icmp eq i32 %226, 0
  br i1 %227, label %228, label %256

228:                                              ; preds = %223
  %229 = load ptr, ptr %221, align 8, !tbaa !89
  %230 = icmp eq ptr %229, null
  br i1 %230, label %253, label %234

231:                                              ; preds = %249, %234
  %232 = load ptr, ptr %235, align 8, !tbaa !89
  %233 = icmp eq ptr %232, null
  br i1 %233, label %253, label %234, !llvm.loop !235

234:                                              ; preds = %228, %231
  %235 = phi ptr [ %232, %231 ], [ %229, %228 ]
  %236 = getelementptr inbounds %struct.DriverVar, ptr %235, i64 0, i32 4
  %237 = load i16, ptr %236, align 8, !tbaa !236
  %238 = sext i16 %237 to i32
  %239 = icmp sgt i16 %237, 0
  br i1 %239, label %240, label %231

240:                                              ; preds = %234
  %241 = getelementptr inbounds %struct.DriverVar, ptr %235, i64 0, i32 3
  br label %242

242:                                              ; preds = %240, %249
  %243 = phi i32 [ %250, %249 ], [ 0, %240 ]
  %244 = phi ptr [ %251, %249 ], [ %241, %240 ]
  %245 = getelementptr inbounds %struct.DriverTarget, ptr %244, i64 0, i32 4
  %246 = load i16, ptr %245, align 2, !tbaa !238
  %247 = and i16 %246, 16
  %248 = icmp eq i16 %247, 0
  br i1 %248, label %249, label %256

249:                                              ; preds = %242
  %250 = add nuw nsw i32 %243, 1
  %251 = getelementptr inbounds %struct.DriverTarget, ptr %244, i64 1
  %252 = icmp eq i32 %250, %238
  br i1 %252, label %231, label %242, !llvm.loop !240

253:                                              ; preds = %231, %228, %219, %147, %123, %121, %93, %84, %76, %153, %171, %172, %178, %184, %159, %207
  %254 = load ptr, ptr %41, align 8, !tbaa !212
  %255 = icmp eq ptr %254, null
  br i1 %255, label %256, label %40, !llvm.loop !241

256:                                              ; preds = %189, %210, %253, %40, %223, %214, %242, %5
  %257 = phi ptr [ null, %5 ], [ %41, %242 ], [ %41, %214 ], [ %41, %223 ], [ null, %40 ], [ null, %253 ], [ %41, %210 ], [ %41, %189 ]
  ret ptr %257
}

declare void @BLI_movelisttolist(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read)
declare ptr @strstr(ptr noundef, ptr nocapture noundef) local_unnamed_addr #5

declare ptr @BLI_str_quoted_substrN(ptr noundef, ptr noundef) local_unnamed_addr #2

declare ptr @BKE_pose_channel_find_name(ptr noundef, ptr noundef) local_unnamed_addr #2

declare ptr @BKE_sequencer_editing_get(ptr noundef, i8 noundef zeroext) local_unnamed_addr #2

declare ptr @BKE_sequence_get_by_name(ptr noundef, ptr noundef, i8 noundef zeroext) local_unnamed_addr #2

declare ptr @nodeFindNodebyName(ptr noundef, ptr noundef) local_unnamed_addr #2

declare ptr @ANIM_channel_get_typeinfo(ptr noundef) local_unnamed_addr #2

declare ptr @BLI_strcasestr(ptr noundef, ptr noundef) local_unnamed_addr #2

declare ptr @BKE_mask_layer_active(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal fastcc i64 @animdata_filter_dopesheet_scene(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, i32 noundef %4) unnamed_addr #0 {
  %6 = alloca %struct.ListBase, align 8
  %7 = alloca %struct.ListBase, align 8
  %8 = alloca %struct.ListBase, align 8
  %9 = alloca %struct.ListBase, align 8
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %9) #7
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %9, i8 0, i64 16, i1 false)
  %10 = and i32 %4, 2
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %22, label %12

12:                                               ; preds = %5
  %13 = getelementptr inbounds %struct.Scene, ptr %3, i64 0, i32 15
  %14 = load i16, ptr %13, align 4, !tbaa !140
  %15 = and i16 %14, 2
  %16 = icmp eq i16 %15, 0
  %17 = and i32 %4, 8
  %18 = icmp eq i32 %17, 0
  %19 = or i1 %18, %16
  %20 = or i32 %4, 1073741824
  %21 = select i1 %19, i32 %4, i32 %20
  br label %22

22:                                               ; preds = %12, %5
  %23 = phi i32 [ %4, %5 ], [ %21, %12 ]
  %24 = getelementptr inbounds %struct.Scene, ptr %3, i64 0, i32 18
  %25 = load ptr, ptr %24, align 8, !tbaa !242
  %26 = getelementptr inbounds %struct.Scene, ptr %3, i64 0, i32 3
  %27 = load ptr, ptr %26, align 8, !tbaa !243
  %28 = getelementptr inbounds %struct.bDopeSheet, ptr %2, i64 0, i32 4
  %29 = load i32, ptr %28, align 8, !tbaa !92
  %30 = and i32 %29, 32768
  %31 = icmp eq i32 %30, 0
  br i1 %31, label %32, label %102

32:                                               ; preds = %22
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %8) #7
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %8, i8 0, i64 16, i1 false)
  %33 = getelementptr inbounds %struct.Scene, ptr %3, i64 0, i32 1
  %34 = load ptr, ptr %33, align 8, !tbaa !244
  %35 = icmp eq ptr %34, null
  br i1 %35, label %73, label %36

36:                                               ; preds = %32
  %37 = and i32 %23, 4
  %38 = icmp eq i32 %37, 0
  br i1 %38, label %46, label %39

39:                                               ; preds = %36
  %40 = getelementptr inbounds %struct.AnimData, ptr %34, i64 0, i32 7
  %41 = load i32, ptr %40, align 8, !tbaa !144
  %42 = and i32 %41, 65536
  %43 = and i32 %23, 1024
  %44 = or disjoint i32 %42, %43
  %45 = icmp eq i32 %44, 0
  br i1 %45, label %49, label %73

46:                                               ; preds = %36
  %47 = and i32 %23, 1024
  %48 = icmp eq i32 %47, 0
  br i1 %48, label %49, label %73

49:                                               ; preds = %46, %39
  %50 = and i32 %29, 4
  %51 = icmp eq i32 %50, 0
  br i1 %51, label %52, label %73

52:                                               ; preds = %49
  %53 = and i32 %29, 2
  %54 = icmp eq i32 %53, 0
  br i1 %54, label %65, label %55

55:                                               ; preds = %52
  %56 = getelementptr inbounds %struct.AnimData, ptr %34, i64 0, i32 5
  %57 = load ptr, ptr %56, align 8, !tbaa !245
  %58 = icmp eq ptr %57, null
  br i1 %58, label %73, label %59

59:                                               ; preds = %55
  %60 = getelementptr inbounds %struct.AnimData, ptr %34, i64 0, i32 7
  %61 = load i32, ptr %60, align 8, !tbaa !144
  %62 = lshr i32 %61, 10
  %63 = and i32 %62, 1
  %64 = xor i32 %63, 1
  br label %73

65:                                               ; preds = %52
  %66 = load ptr, ptr %34, align 8, !tbaa !57
  %67 = icmp eq ptr %66, null
  br i1 %67, label %73, label %68

68:                                               ; preds = %65
  %69 = getelementptr inbounds %struct.bAction, ptr %66, i64 0, i32 5
  %70 = load i32, ptr %69, align 8, !tbaa !142
  %71 = and i32 %70, 1
  %72 = xor i32 %71, 1
  br label %73

73:                                               ; preds = %68, %65, %59, %55, %49, %46, %39, %32
  %74 = phi i1 [ false, %39 ], [ false, %46 ], [ false, %49 ], [ true, %59 ], [ false, %55 ], [ true, %68 ], [ false, %65 ], [ false, %32 ]
  %75 = phi i16 [ 0, %39 ], [ 0, %46 ], [ 0, %49 ], [ 9, %59 ], [ 0, %55 ], [ 8, %68 ], [ 0, %65 ], [ 0, %32 ]
  %76 = phi i32 [ 1, %39 ], [ 1, %46 ], [ 1, %49 ], [ %64, %59 ], [ 1, %55 ], [ %72, %68 ], [ 1, %65 ], [ 1, %32 ]
  %77 = phi ptr [ null, %39 ], [ null, %46 ], [ null, %49 ], [ %34, %59 ], [ null, %55 ], [ %66, %68 ], [ null, %65 ], [ null, %32 ]
  %78 = icmp ne i32 %76, 0
  %79 = and i32 %23, 10
  %80 = icmp ne i32 %79, 10
  %81 = select i1 %80, i1 true, i1 %78
  %82 = or i32 %23, 1073741824
  %83 = select i1 %81, i32 %23, i32 %82
  %84 = call fastcc i64 @animfilter_block_data(ptr noundef %0, ptr noundef nonnull %8, ptr noundef %2, ptr noundef %3, i32 noundef %83)
  %85 = icmp eq i64 %84, 0
  br i1 %85, label %100, label %86

86:                                               ; preds = %73
  %87 = and i32 %23, 8
  %88 = icmp ne i32 %87, 0
  %89 = and i1 %88, %74
  br i1 %89, label %90, label %97

90:                                               ; preds = %86
  %91 = and i32 %23, 1073741824
  %92 = icmp eq i32 %91, 0
  br i1 %92, label %93, label %100

93:                                               ; preds = %90
  %94 = call fastcc ptr @make_new_animlistelem(ptr noundef %77, i16 noundef signext %75, ptr noundef %3)
  %95 = icmp eq ptr %94, null
  br i1 %95, label %97, label %96

96:                                               ; preds = %93
  call void @BLI_addtail(ptr noundef nonnull %9, ptr noundef nonnull %94) #7
  br label %97

97:                                               ; preds = %96, %93, %86
  %98 = phi i64 [ 0, %86 ], [ 1, %96 ], [ 0, %93 ]
  call void @BLI_movelisttolist(ptr noundef nonnull %9, ptr noundef nonnull %8) #7
  %99 = add i64 %98, %84
  br label %100

100:                                              ; preds = %73, %90, %97
  %101 = phi i64 [ 1, %90 ], [ %99, %97 ], [ 0, %73 ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %8) #7
  br label %102

102:                                              ; preds = %100, %22
  %103 = phi i64 [ %101, %100 ], [ 0, %22 ]
  %104 = icmp eq ptr %27, null
  br i1 %104, label %262, label %105

105:                                              ; preds = %102
  %106 = load i32, ptr %28, align 8, !tbaa !92
  %107 = and i32 %106, 16384
  %108 = icmp eq i32 %107, 0
  br i1 %108, label %109, label %262

109:                                              ; preds = %105
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %7) #7
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %7, i8 0, i64 16, i1 false)
  %110 = and i32 %23, 2
  %111 = icmp eq i32 %110, 0
  br i1 %111, label %122, label %112

112:                                              ; preds = %109
  %113 = getelementptr inbounds %struct.World, ptr %27, i64 0, i32 66
  %114 = load i16, ptr %113, align 2, !tbaa !176
  %115 = and i16 %114, 1
  %116 = icmp ne i16 %115, 0
  %117 = and i32 %23, 8
  %118 = icmp eq i32 %117, 0
  %119 = or i1 %118, %116
  %120 = or i32 %23, 1073741824
  %121 = select i1 %119, i32 %23, i32 %120
  br label %122

122:                                              ; preds = %112, %109
  %123 = phi i32 [ %23, %109 ], [ %121, %112 ]
  %124 = call fastcc i64 @animfilter_block_data(ptr noundef %0, ptr noundef nonnull %7, ptr noundef %2, ptr noundef nonnull %27, i32 noundef %123)
  %125 = load i32, ptr %28, align 8, !tbaa !92
  %126 = and i32 %125, 1048576
  %127 = icmp eq i32 %126, 0
  br i1 %127, label %128, label %164

128:                                              ; preds = %122
  %129 = getelementptr inbounds %struct.ID, ptr %27, i64 0, i32 4
  %130 = load i16, ptr %129, align 8, !tbaa !203
  switch i16 %130, label %137 [
    i16 16717, label %131
    i16 16716, label %133
    i16 20311, label %135
  ]

131:                                              ; preds = %128
  %132 = getelementptr inbounds %struct.Material, ptr %27, i64 0, i32 102
  br label %143

133:                                              ; preds = %128
  %134 = getelementptr inbounds %struct.Lamp, ptr %27, i64 0, i32 69
  br label %143

135:                                              ; preds = %128
  %136 = getelementptr inbounds %struct.World, ptr %27, i64 0, i32 70
  br label %143

137:                                              ; preds = %128
  %138 = load i32, ptr getelementptr inbounds (%struct.Global, ptr @G, i64 0, i32 16), align 4, !tbaa !204
  %139 = and i32 %138, 1
  %140 = icmp eq i32 %139, 0
  br i1 %140, label %164, label %141

141:                                              ; preds = %137
  %142 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.12, ptr noundef nonnull %129)
  br label %164

143:                                              ; preds = %135, %133, %131
  %144 = phi ptr [ %136, %135 ], [ %134, %133 ], [ %132, %131 ]
  br label %145

145:                                              ; preds = %160, %143
  %146 = phi i64 [ 0, %143 ], [ %162, %160 ]
  %147 = phi i64 [ 0, %143 ], [ %161, %160 ]
  %148 = getelementptr inbounds ptr, ptr %144, i64 %146
  %149 = load ptr, ptr %148, align 8, !tbaa !89
  %150 = icmp eq ptr %149, null
  br i1 %150, label %154, label %151

151:                                              ; preds = %145
  %152 = getelementptr inbounds %struct.MTex, ptr %149, i64 0, i32 5
  %153 = load ptr, ptr %152, align 8, !tbaa !246
  br label %154

154:                                              ; preds = %151, %145
  %155 = phi ptr [ %153, %151 ], [ null, %145 ]
  %156 = icmp eq ptr %155, null
  br i1 %156, label %160, label %157

157:                                              ; preds = %154
  %158 = call fastcc i64 @animdata_filter_ds_texture(ptr noundef %0, ptr noundef nonnull %7, ptr noundef %2, ptr noundef nonnull %155, ptr noundef nonnull %27, i32 noundef %123)
  %159 = add i64 %158, %147
  br label %160

160:                                              ; preds = %157, %154
  %161 = phi i64 [ %159, %157 ], [ %147, %154 ]
  %162 = add nuw nsw i64 %146, 1
  %163 = icmp eq i64 %162, 18
  br i1 %163, label %164, label %145, !llvm.loop !248

164:                                              ; preds = %160, %141, %137, %122
  %165 = phi i64 [ 0, %122 ], [ 0, %141 ], [ 0, %137 ], [ %161, %160 ]
  %166 = getelementptr inbounds %struct.World, ptr %27, i64 0, i32 75
  %167 = load ptr, ptr %166, align 8, !tbaa !249
  %168 = icmp eq ptr %167, null
  br i1 %168, label %209, label %169

169:                                              ; preds = %164
  %170 = load i32, ptr %28, align 8, !tbaa !92
  %171 = and i32 %170, 524288
  %172 = icmp eq i32 %171, 0
  br i1 %172, label %173, label %209

173:                                              ; preds = %169
  %174 = call fastcc i64 @animdata_filter_ds_nodetree_group(ptr noundef %0, ptr noundef nonnull %7, ptr noundef %2, ptr noundef nonnull %27, ptr noundef nonnull %167, i32 noundef %123)
  %175 = getelementptr inbounds %struct.bNodeTree, ptr %167, i64 0, i32 7
  %176 = load ptr, ptr %175, align 8, !tbaa !89
  %177 = icmp eq ptr %176, null
  br i1 %177, label %206, label %178

178:                                              ; preds = %173
  %179 = or i32 %123, -2147483648
  br label %180

180:                                              ; preds = %202, %178
  %181 = phi ptr [ %176, %178 ], [ %204, %202 ]
  %182 = phi i64 [ %174, %178 ], [ %203, %202 ]
  %183 = getelementptr inbounds %struct.bNode, ptr %181, i64 0, i32 8
  %184 = load i16, ptr %183, align 4, !tbaa !250
  %185 = icmp eq i16 %184, 2
  br i1 %185, label %186, label %202

186:                                              ; preds = %180
  %187 = getelementptr inbounds %struct.bNode, ptr %181, i64 0, i32 20
  %188 = load ptr, ptr %187, align 8, !tbaa !251
  %189 = icmp eq ptr %188, null
  br i1 %189, label %202, label %190

190:                                              ; preds = %186
  %191 = load i32, ptr %28, align 8, !tbaa !92
  %192 = and i32 %191, 1
  %193 = icmp eq i32 %192, 0
  br i1 %193, label %199, label %194

194:                                              ; preds = %190
  %195 = getelementptr inbounds %struct.bNode, ptr %181, i64 0, i32 7
  %196 = load i32, ptr %195, align 8, !tbaa !228
  %197 = and i32 %196, 1
  %198 = icmp eq i32 %197, 0
  br i1 %198, label %202, label %199

199:                                              ; preds = %194, %190
  %200 = call fastcc i64 @animdata_filter_ds_nodetree_group(ptr noundef %0, ptr noundef nonnull %7, ptr noundef %2, ptr noundef nonnull %27, ptr noundef nonnull %188, i32 noundef %179)
  %201 = add i64 %200, %182
  br label %202

202:                                              ; preds = %199, %194, %186, %180
  %203 = phi i64 [ %182, %194 ], [ %201, %199 ], [ %182, %186 ], [ %182, %180 ]
  %204 = load ptr, ptr %181, align 8, !tbaa !89
  %205 = icmp eq ptr %204, null
  br i1 %205, label %206, label %180, !llvm.loop !252

206:                                              ; preds = %202, %173
  %207 = phi i64 [ %174, %173 ], [ %203, %202 ]
  %208 = add i64 %207, %124
  br label %209

209:                                              ; preds = %206, %169, %164
  %210 = phi i64 [ %124, %169 ], [ %208, %206 ], [ %124, %164 ]
  %211 = icmp eq i64 %210, 0
  br i1 %211, label %259, label %212

212:                                              ; preds = %209
  %213 = and i32 %23, 8
  %214 = icmp eq i32 %213, 0
  br i1 %214, label %256, label %215

215:                                              ; preds = %212
  %216 = and i32 %23, 16
  %217 = icmp eq i32 %216, 0
  br i1 %217, label %227, label %218

218:                                              ; preds = %215
  %219 = getelementptr inbounds %struct.World, ptr %27, i64 0, i32 1
  %220 = load ptr, ptr %219, align 8, !tbaa !174
  %221 = icmp eq ptr %220, null
  br i1 %221, label %227, label %222

222:                                              ; preds = %218
  %223 = getelementptr inbounds %struct.AnimData, ptr %220, i64 0, i32 7
  %224 = load i32, ptr %223, align 8, !tbaa !144
  %225 = and i32 %224, 32768
  %226 = icmp eq i32 %225, 0
  br i1 %226, label %256, label %227

227:                                              ; preds = %222, %218, %215
  %228 = and i32 %23, 1073741824
  %229 = icmp eq i32 %228, 0
  br i1 %229, label %230, label %259

230:                                              ; preds = %227
  %231 = load ptr, ptr @MEM_callocN, align 8, !tbaa !89
  %232 = call ptr %231(i64 noundef 64, ptr noundef nonnull @.str.3) #7
  %233 = getelementptr inbounds %struct.bAnimListElem, ptr %232, i64 0, i32 2
  store ptr %27, ptr %233, align 8, !tbaa !105
  %234 = getelementptr inbounds %struct.bAnimListElem, ptr %232, i64 0, i32 3
  store i32 15, ptr %234, align 8, !tbaa !107
  %235 = getelementptr inbounds %struct.bAnimListElem, ptr %232, i64 0, i32 9
  store ptr %3, ptr %235, align 8, !tbaa !108
  %236 = call ptr @BKE_animdata_from_id(ptr noundef %3) #7
  %237 = getelementptr inbounds %struct.bAnimListElem, ptr %232, i64 0, i32 10
  store ptr %236, ptr %237, align 8, !tbaa !109
  %238 = getelementptr inbounds %struct.World, ptr %27, i64 0, i32 1
  %239 = load ptr, ptr %238, align 8, !tbaa !174
  %240 = getelementptr inbounds %struct.World, ptr %27, i64 0, i32 66
  %241 = load i16, ptr %240, align 2, !tbaa !176
  %242 = and i16 %241, 1
  %243 = zext nneg i16 %242 to i32
  %244 = getelementptr inbounds %struct.bAnimListElem, ptr %232, i64 0, i32 4
  store i32 %243, ptr %244, align 4, !tbaa !127
  %245 = icmp eq ptr %239, null
  br i1 %245, label %248, label %246

246:                                              ; preds = %230
  %247 = load ptr, ptr %239, align 8, !tbaa !57
  br label %248

248:                                              ; preds = %246, %230
  %249 = phi ptr [ %247, %246 ], [ null, %230 ]
  %250 = getelementptr inbounds %struct.bAnimListElem, ptr %232, i64 0, i32 8
  store ptr %249, ptr %250, align 8, !tbaa !110
  %251 = getelementptr inbounds %struct.bAnimListElem, ptr %232, i64 0, i32 7
  store i16 8, ptr %251, align 2, !tbaa !111
  %252 = call ptr @BKE_animdata_from_id(ptr noundef nonnull %27) #7
  store ptr %252, ptr %237, align 8, !tbaa !109
  %253 = icmp eq ptr %232, null
  br i1 %253, label %256, label %254

254:                                              ; preds = %248
  call void @BLI_addtail(ptr noundef nonnull %9, ptr noundef nonnull %232) #7
  %255 = add i64 %165, 1
  br label %256

256:                                              ; preds = %254, %248, %222, %212
  %257 = phi i64 [ %165, %222 ], [ %165, %212 ], [ %255, %254 ], [ %165, %248 ]
  call void @BLI_movelisttolist(ptr noundef nonnull %9, ptr noundef nonnull %7) #7
  %258 = add i64 %257, %210
  br label %259

259:                                              ; preds = %209, %227, %256
  %260 = phi i64 [ 1, %227 ], [ %258, %256 ], [ %165, %209 ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %7) #7
  %261 = add i64 %260, %103
  br label %262

262:                                              ; preds = %259, %105, %102
  %263 = phi i64 [ %103, %105 ], [ %261, %259 ], [ %103, %102 ]
  %264 = icmp eq ptr %25, null
  br i1 %264, label %305, label %265

265:                                              ; preds = %262
  %266 = load i32, ptr %28, align 8, !tbaa !92
  %267 = and i32 %266, 524288
  %268 = icmp eq i32 %267, 0
  br i1 %268, label %269, label %305

269:                                              ; preds = %265
  %270 = call fastcc i64 @animdata_filter_ds_nodetree_group(ptr noundef %0, ptr noundef nonnull %9, ptr noundef %2, ptr noundef %3, ptr noundef nonnull %25, i32 noundef %23)
  %271 = getelementptr inbounds %struct.bNodeTree, ptr %25, i64 0, i32 7
  %272 = load ptr, ptr %271, align 8, !tbaa !89
  %273 = icmp eq ptr %272, null
  br i1 %273, label %302, label %274

274:                                              ; preds = %269
  %275 = or i32 %23, -2147483648
  br label %276

276:                                              ; preds = %298, %274
  %277 = phi ptr [ %272, %274 ], [ %300, %298 ]
  %278 = phi i64 [ %270, %274 ], [ %299, %298 ]
  %279 = getelementptr inbounds %struct.bNode, ptr %277, i64 0, i32 8
  %280 = load i16, ptr %279, align 4, !tbaa !250
  %281 = icmp eq i16 %280, 2
  br i1 %281, label %282, label %298

282:                                              ; preds = %276
  %283 = getelementptr inbounds %struct.bNode, ptr %277, i64 0, i32 20
  %284 = load ptr, ptr %283, align 8, !tbaa !251
  %285 = icmp eq ptr %284, null
  br i1 %285, label %298, label %286

286:                                              ; preds = %282
  %287 = load i32, ptr %28, align 8, !tbaa !92
  %288 = and i32 %287, 1
  %289 = icmp eq i32 %288, 0
  br i1 %289, label %295, label %290

290:                                              ; preds = %286
  %291 = getelementptr inbounds %struct.bNode, ptr %277, i64 0, i32 7
  %292 = load i32, ptr %291, align 8, !tbaa !228
  %293 = and i32 %292, 1
  %294 = icmp eq i32 %293, 0
  br i1 %294, label %298, label %295

295:                                              ; preds = %290, %286
  %296 = call fastcc i64 @animdata_filter_ds_nodetree_group(ptr noundef %0, ptr noundef nonnull %9, ptr noundef %2, ptr noundef %3, ptr noundef nonnull %284, i32 noundef %275)
  %297 = add i64 %296, %278
  br label %298

298:                                              ; preds = %295, %290, %282, %276
  %299 = phi i64 [ %278, %290 ], [ %297, %295 ], [ %278, %282 ], [ %278, %276 ]
  %300 = load ptr, ptr %277, align 8, !tbaa !89
  %301 = icmp eq ptr %300, null
  br i1 %301, label %302, label %276, !llvm.loop !252

302:                                              ; preds = %298, %269
  %303 = phi i64 [ %270, %269 ], [ %299, %298 ]
  %304 = add i64 %303, %263
  br label %305

305:                                              ; preds = %302, %265, %262
  %306 = phi i64 [ %263, %265 ], [ %304, %302 ], [ %263, %262 ]
  %307 = load i32, ptr %28, align 8, !tbaa !92
  %308 = and i32 %307, 4194304
  %309 = icmp eq i32 %308, 0
  br i1 %309, label %310, label %437

310:                                              ; preds = %305
  %311 = getelementptr inbounds %struct.Scene, ptr %3, i64 0, i32 22, i32 60
  %312 = load ptr, ptr %311, align 8, !tbaa !89
  %313 = icmp eq ptr %312, null
  br i1 %313, label %317, label %332

314:                                              ; preds = %346, %332
  %315 = load ptr, ptr %333, align 8, !tbaa !89
  %316 = icmp eq ptr %315, null
  br i1 %316, label %317, label %332, !llvm.loop !253

317:                                              ; preds = %314, %310
  %318 = load ptr, ptr %311, align 8, !tbaa !89
  %319 = icmp eq ptr %318, null
  br i1 %319, label %434, label %320

320:                                              ; preds = %317
  %321 = and i32 %23, 2
  %322 = icmp eq i32 %321, 0
  %323 = and i32 %23, 8
  %324 = icmp eq i32 %323, 0
  %325 = or i32 %23, 1073741824
  %326 = and i32 %23, 8
  %327 = icmp eq i32 %326, 0
  %328 = and i32 %23, 16
  %329 = icmp eq i32 %328, 0
  %330 = and i32 %23, 1073741824
  %331 = icmp eq i32 %330, 0
  br label %349

332:                                              ; preds = %310, %314
  %333 = phi ptr [ %315, %314 ], [ %312, %310 ]
  %334 = getelementptr inbounds %struct.SceneRenderLayer, ptr %333, i64 0, i32 13, i32 7
  %335 = load ptr, ptr %334, align 8, !tbaa !89
  %336 = icmp eq ptr %335, null
  br i1 %336, label %314, label %337

337:                                              ; preds = %332, %346
  %338 = phi ptr [ %347, %346 ], [ %335, %332 ]
  %339 = getelementptr inbounds %struct.FreestyleLineSet, ptr %338, i64 0, i32 13
  %340 = load ptr, ptr %339, align 8, !tbaa !254
  %341 = icmp eq ptr %340, null
  br i1 %341, label %346, label %342

342:                                              ; preds = %337
  %343 = getelementptr inbounds %struct.ID, ptr %340, i64 0, i32 5
  %344 = load i16, ptr %343, align 2, !tbaa !256
  %345 = or i16 %344, 1024
  store i16 %345, ptr %343, align 2, !tbaa !256
  br label %346

346:                                              ; preds = %342, %337
  %347 = load ptr, ptr %338, align 8, !tbaa !89
  %348 = icmp eq ptr %347, null
  br i1 %348, label %314, label %337, !llvm.loop !257

349:                                              ; preds = %320, %430
  %350 = phi ptr [ %318, %320 ], [ %432, %430 ]
  %351 = phi i64 [ 0, %320 ], [ %431, %430 ]
  %352 = getelementptr inbounds %struct.SceneRenderLayer, ptr %350, i64 0, i32 8
  %353 = load i32, ptr %352, align 4, !tbaa !258
  %354 = and i32 %353, 64
  %355 = icmp eq i32 %354, 0
  br i1 %355, label %430, label %356

356:                                              ; preds = %349
  %357 = getelementptr inbounds %struct.SceneRenderLayer, ptr %350, i64 0, i32 13, i32 7
  %358 = load ptr, ptr %357, align 8, !tbaa !89
  %359 = icmp eq ptr %358, null
  br i1 %359, label %430, label %360

360:                                              ; preds = %356, %427
  %361 = phi ptr [ %428, %427 ], [ %358, %356 ]
  %362 = phi i64 [ %425, %427 ], [ %351, %356 ]
  %363 = getelementptr inbounds %struct.FreestyleLineSet, ptr %361, i64 0, i32 13
  %364 = load ptr, ptr %363, align 8, !tbaa !254
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %6) #7
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %6, i8 0, i64 16, i1 false)
  %365 = icmp eq ptr %364, null
  br i1 %365, label %424, label %366

366:                                              ; preds = %360
  %367 = getelementptr inbounds %struct.ID, ptr %364, i64 0, i32 5
  %368 = load i16, ptr %367, align 2, !tbaa !256
  %369 = and i16 %368, 1024
  %370 = icmp eq i16 %369, 0
  br i1 %370, label %424, label %371

371:                                              ; preds = %366
  %372 = and i16 %368, -1025
  store i16 %372, ptr %367, align 2, !tbaa !256
  br i1 %322, label %380, label %373

373:                                              ; preds = %371
  %374 = getelementptr inbounds %struct.FreestyleLineStyle, ptr %364, i64 0, i32 9
  %375 = load i32, ptr %374, align 4, !tbaa !183
  %376 = and i32 %375, 1
  %377 = icmp ne i32 %376, 0
  %378 = or i1 %324, %377
  %379 = select i1 %378, i32 %23, i32 %325
  br label %380

380:                                              ; preds = %373, %371
  %381 = phi i32 [ %23, %371 ], [ %379, %373 ]
  %382 = call fastcc i64 @animfilter_block_data(ptr noundef %0, ptr noundef nonnull %6, ptr noundef %2, ptr noundef nonnull %364, i32 noundef %381)
  %383 = icmp eq i64 %382, 0
  br i1 %383, label %424, label %384

384:                                              ; preds = %380
  br i1 %327, label %421, label %385

385:                                              ; preds = %384
  br i1 %329, label %395, label %386

386:                                              ; preds = %385
  %387 = getelementptr inbounds %struct.FreestyleLineStyle, ptr %364, i64 0, i32 1
  %388 = load ptr, ptr %387, align 8, !tbaa !181
  %389 = icmp eq ptr %388, null
  br i1 %389, label %395, label %390

390:                                              ; preds = %386
  %391 = getelementptr inbounds %struct.AnimData, ptr %388, i64 0, i32 7
  %392 = load i32, ptr %391, align 8, !tbaa !144
  %393 = and i32 %392, 32768
  %394 = icmp eq i32 %393, 0
  br i1 %394, label %421, label %395

395:                                              ; preds = %390, %386, %385
  br i1 %331, label %396, label %424

396:                                              ; preds = %395
  %397 = load ptr, ptr @MEM_callocN, align 8, !tbaa !89
  %398 = call ptr %397(i64 noundef 64, ptr noundef nonnull @.str.3) #7
  %399 = getelementptr inbounds %struct.bAnimListElem, ptr %398, i64 0, i32 2
  store ptr %364, ptr %399, align 8, !tbaa !105
  %400 = getelementptr inbounds %struct.bAnimListElem, ptr %398, i64 0, i32 3
  store i32 23, ptr %400, align 8, !tbaa !107
  %401 = getelementptr inbounds %struct.bAnimListElem, ptr %398, i64 0, i32 9
  store ptr %3, ptr %401, align 8, !tbaa !108
  %402 = call ptr @BKE_animdata_from_id(ptr noundef %3) #7
  %403 = getelementptr inbounds %struct.bAnimListElem, ptr %398, i64 0, i32 10
  store ptr %402, ptr %403, align 8, !tbaa !109
  %404 = getelementptr inbounds %struct.FreestyleLineStyle, ptr %364, i64 0, i32 1
  %405 = load ptr, ptr %404, align 8, !tbaa !181
  %406 = getelementptr inbounds %struct.FreestyleLineStyle, ptr %364, i64 0, i32 9
  %407 = load i32, ptr %406, align 4, !tbaa !183
  %408 = and i32 %407, 1
  %409 = getelementptr inbounds %struct.bAnimListElem, ptr %398, i64 0, i32 4
  store i32 %408, ptr %409, align 4, !tbaa !127
  %410 = icmp eq ptr %405, null
  br i1 %410, label %413, label %411

411:                                              ; preds = %396
  %412 = load ptr, ptr %405, align 8, !tbaa !57
  br label %413

413:                                              ; preds = %411, %396
  %414 = phi ptr [ %412, %411 ], [ null, %396 ]
  %415 = getelementptr inbounds %struct.bAnimListElem, ptr %398, i64 0, i32 8
  store ptr %414, ptr %415, align 8, !tbaa !110
  %416 = getelementptr inbounds %struct.bAnimListElem, ptr %398, i64 0, i32 7
  store i16 8, ptr %416, align 2, !tbaa !111
  %417 = call ptr @BKE_animdata_from_id(ptr noundef nonnull %364) #7
  store ptr %417, ptr %403, align 8, !tbaa !109
  %418 = icmp eq ptr %398, null
  br i1 %418, label %421, label %419

419:                                              ; preds = %413
  call void @BLI_addtail(ptr noundef nonnull %9, ptr noundef nonnull %398) #7
  %420 = add i64 %362, 1
  br label %421

421:                                              ; preds = %419, %413, %390, %384
  %422 = phi i64 [ %362, %390 ], [ %362, %384 ], [ %420, %419 ], [ %362, %413 ]
  call void @BLI_movelisttolist(ptr noundef nonnull %9, ptr noundef nonnull %6) #7
  %423 = add i64 %422, %382
  br label %424

424:                                              ; preds = %421, %395, %380, %366, %360
  %425 = phi i64 [ %362, %366 ], [ %362, %360 ], [ %362, %395 ], [ %423, %421 ], [ %362, %380 ]
  %426 = phi i32 [ 13, %366 ], [ 13, %360 ], [ 1, %395 ], [ 0, %421 ], [ 0, %380 ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %6) #7
  switch i32 %426, label %434 [
    i32 0, label %427
    i32 13, label %427
  ]

427:                                              ; preds = %424, %424
  %428 = load ptr, ptr %361, align 8, !tbaa !89
  %429 = icmp eq ptr %428, null
  br i1 %429, label %430, label %360, !llvm.loop !261

430:                                              ; preds = %427, %356, %349
  %431 = phi i64 [ %351, %349 ], [ %351, %356 ], [ %425, %427 ]
  %432 = load ptr, ptr %350, align 8, !tbaa !89
  %433 = icmp eq ptr %432, null
  br i1 %433, label %434, label %349, !llvm.loop !262

434:                                              ; preds = %430, %424, %317
  %435 = phi i64 [ 0, %317 ], [ 1, %424 ], [ %431, %430 ]
  %436 = add i64 %435, %306
  br label %437

437:                                              ; preds = %434, %305
  %438 = phi i64 [ %436, %434 ], [ %306, %305 ]
  %439 = icmp eq i64 %438, 0
  br i1 %439, label %489, label %440

440:                                              ; preds = %437
  %441 = and i32 %4, 8
  %442 = icmp eq i32 %441, 0
  br i1 %442, label %486, label %443

443:                                              ; preds = %440
  %444 = and i32 %4, 192
  %445 = icmp eq i32 %444, 0
  br i1 %445, label %462, label %446

446:                                              ; preds = %443
  %447 = and i32 %4, 64
  %448 = icmp eq i32 %447, 0
  br i1 %448, label %454, label %449

449:                                              ; preds = %446
  %450 = getelementptr inbounds %struct.Scene, ptr %3, i64 0, i32 15
  %451 = load i16, ptr %450, align 4, !tbaa !140
  %452 = and i16 %451, 1
  %453 = icmp eq i16 %452, 0
  br i1 %453, label %454, label %462

454:                                              ; preds = %449, %446
  %455 = and i32 %4, 128
  %456 = icmp eq i32 %455, 0
  br i1 %456, label %486, label %457

457:                                              ; preds = %454
  %458 = getelementptr inbounds %struct.Scene, ptr %3, i64 0, i32 15
  %459 = load i16, ptr %458, align 4, !tbaa !140
  %460 = and i16 %459, 1
  %461 = icmp eq i16 %460, 0
  br i1 %461, label %462, label %486

462:                                              ; preds = %457, %449, %443
  %463 = and i32 %4, 1073741824
  %464 = icmp eq i32 %463, 0
  br i1 %464, label %465, label %489

465:                                              ; preds = %462
  %466 = icmp eq ptr %3, null
  br i1 %466, label %482, label %467

467:                                              ; preds = %465
  %468 = load ptr, ptr @MEM_callocN, align 8, !tbaa !89
  %469 = call ptr %468(i64 noundef 64, ptr noundef nonnull @.str.3) #7
  %470 = getelementptr inbounds %struct.bAnimListElem, ptr %469, i64 0, i32 2
  store ptr %3, ptr %470, align 8, !tbaa !105
  %471 = getelementptr inbounds %struct.bAnimListElem, ptr %469, i64 0, i32 3
  store i32 4, ptr %471, align 8, !tbaa !107
  %472 = getelementptr inbounds %struct.bAnimListElem, ptr %469, i64 0, i32 9
  store ptr %3, ptr %472, align 8, !tbaa !108
  %473 = call ptr @BKE_animdata_from_id(ptr noundef nonnull %3) #7
  %474 = getelementptr inbounds %struct.bAnimListElem, ptr %469, i64 0, i32 10
  store ptr %473, ptr %474, align 8, !tbaa !109
  %475 = getelementptr inbounds %struct.Scene, ptr %3, i64 0, i32 15
  %476 = load i16, ptr %475, align 4, !tbaa !140
  %477 = sext i16 %476 to i32
  %478 = getelementptr inbounds %struct.bAnimListElem, ptr %469, i64 0, i32 4
  store i32 %477, ptr %478, align 4, !tbaa !127
  %479 = getelementptr inbounds %struct.bAnimListElem, ptr %469, i64 0, i32 8
  store ptr %3, ptr %479, align 8, !tbaa !110
  %480 = getelementptr inbounds %struct.bAnimListElem, ptr %469, i64 0, i32 7
  store i16 6, ptr %480, align 2, !tbaa !111
  %481 = call ptr @BKE_animdata_from_id(ptr noundef nonnull %3) #7
  store ptr %481, ptr %474, align 8, !tbaa !109
  br label %482

482:                                              ; preds = %465, %467
  %483 = phi ptr [ %469, %467 ], [ null, %465 ]
  %484 = icmp eq ptr %483, null
  br i1 %484, label %486, label %485

485:                                              ; preds = %482
  call void @BLI_addtail(ptr noundef %1, ptr noundef nonnull %483) #7
  br label %486

486:                                              ; preds = %482, %485, %454, %457, %440
  %487 = phi i64 [ 0, %457 ], [ 0, %454 ], [ 0, %440 ], [ 1, %485 ], [ 0, %482 ]
  call void @BLI_movelisttolist(ptr noundef %1, ptr noundef nonnull %9) #7
  %488 = add i64 %487, %438
  br label %489

489:                                              ; preds = %437, %486, %462
  %490 = phi i64 [ 1, %462 ], [ %488, %486 ], [ 0, %437 ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %9) #7
  ret i64 %490
}

declare zeroext i8 @BKE_group_object_exists(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal fastcc i64 @animdata_filter_dopesheet_ob(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, i32 noundef %4) unnamed_addr #0 {
  %6 = alloca %struct.ListBase, align 8
  %7 = alloca %struct.ListBase, align 8
  %8 = alloca %struct.tAnimFilterModifiersContext, align 8
  %9 = alloca %struct.ListBase, align 8
  %10 = alloca %struct.ListBase, align 8
  %11 = alloca %struct.ListBase, align 8
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %11) #7
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %11, i8 0, i64 16, i1 false)
  %12 = getelementptr inbounds %struct.Base, ptr %3, i64 0, i32 7
  %13 = load ptr, ptr %12, align 8, !tbaa !81
  %14 = and i32 %4, 2
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %26, label %16

16:                                               ; preds = %5
  %17 = getelementptr inbounds %struct.Object, ptr %13, i64 0, i32 59
  %18 = load i16, ptr %17, align 8, !tbaa !263
  %19 = and i16 %18, 1024
  %20 = icmp eq i16 %19, 0
  %21 = and i32 %4, 8
  %22 = icmp eq i32 %21, 0
  %23 = or i1 %22, %20
  %24 = or i32 %4, 1073741824
  %25 = select i1 %23, i32 %4, i32 %24
  br label %26

26:                                               ; preds = %16, %5
  %27 = phi i32 [ %4, %5 ], [ %25, %16 ]
  %28 = tail call ptr @BKE_key_from_object(ptr noundef %13) #7
  %29 = getelementptr inbounds %struct.Object, ptr %13, i64 0, i32 1
  %30 = load ptr, ptr %29, align 8, !tbaa !52
  %31 = icmp eq ptr %30, null
  br i1 %31, label %103, label %32

32:                                               ; preds = %26
  %33 = getelementptr inbounds %struct.bDopeSheet, ptr %2, i64 0, i32 4
  %34 = load i32, ptr %33, align 8, !tbaa !92
  %35 = and i32 %34, 256
  %36 = icmp eq i32 %35, 0
  br i1 %36, label %37, label %103

37:                                               ; preds = %32
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %10) #7
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %10, i8 0, i64 16, i1 false)
  %38 = and i32 %27, 4
  %39 = icmp eq i32 %38, 0
  br i1 %39, label %47, label %40

40:                                               ; preds = %37
  %41 = getelementptr inbounds %struct.AnimData, ptr %30, i64 0, i32 7
  %42 = load i32, ptr %41, align 8, !tbaa !144
  %43 = and i32 %42, 65536
  %44 = and i32 %27, 1024
  %45 = or disjoint i32 %43, %44
  %46 = icmp eq i32 %45, 0
  br i1 %46, label %50, label %74

47:                                               ; preds = %37
  %48 = and i32 %27, 1024
  %49 = icmp eq i32 %48, 0
  br i1 %49, label %50, label %74

50:                                               ; preds = %47, %40
  %51 = and i32 %34, 4
  %52 = icmp eq i32 %51, 0
  br i1 %52, label %53, label %74

53:                                               ; preds = %50
  %54 = and i32 %34, 2
  %55 = icmp eq i32 %54, 0
  br i1 %55, label %66, label %56

56:                                               ; preds = %53
  %57 = getelementptr inbounds %struct.AnimData, ptr %30, i64 0, i32 5
  %58 = load ptr, ptr %57, align 8, !tbaa !245
  %59 = icmp eq ptr %58, null
  br i1 %59, label %74, label %60

60:                                               ; preds = %56
  %61 = getelementptr inbounds %struct.AnimData, ptr %30, i64 0, i32 7
  %62 = load i32, ptr %61, align 8, !tbaa !144
  %63 = lshr i32 %62, 10
  %64 = and i32 %63, 1
  %65 = xor i32 %64, 1
  br label %74

66:                                               ; preds = %53
  %67 = load ptr, ptr %30, align 8, !tbaa !57
  %68 = icmp eq ptr %67, null
  br i1 %68, label %74, label %69

69:                                               ; preds = %66
  %70 = getelementptr inbounds %struct.bAction, ptr %67, i64 0, i32 5
  %71 = load i32, ptr %70, align 8, !tbaa !142
  %72 = and i32 %71, 1
  %73 = xor i32 %72, 1
  br label %74

74:                                               ; preds = %69, %66, %60, %56, %50, %47, %40
  %75 = phi i1 [ false, %40 ], [ false, %47 ], [ false, %50 ], [ true, %60 ], [ false, %56 ], [ true, %69 ], [ false, %66 ]
  %76 = phi i16 [ 0, %40 ], [ 0, %47 ], [ 0, %50 ], [ 9, %60 ], [ 0, %56 ], [ 8, %69 ], [ 0, %66 ]
  %77 = phi i32 [ 1, %40 ], [ 1, %47 ], [ 1, %50 ], [ %65, %60 ], [ 1, %56 ], [ %73, %69 ], [ 1, %66 ]
  %78 = phi ptr [ null, %40 ], [ null, %47 ], [ null, %50 ], [ %30, %60 ], [ null, %56 ], [ %67, %69 ], [ null, %66 ]
  %79 = icmp ne i32 %77, 0
  %80 = and i32 %27, 10
  %81 = icmp ne i32 %80, 10
  %82 = select i1 %81, i1 true, i1 %79
  %83 = or i32 %27, 1073741824
  %84 = select i1 %82, i32 %27, i32 %83
  %85 = call fastcc i64 @animfilter_block_data(ptr noundef %0, ptr noundef nonnull %10, ptr noundef %2, ptr noundef %13, i32 noundef %84)
  %86 = icmp eq i64 %85, 0
  br i1 %86, label %101, label %87

87:                                               ; preds = %74
  %88 = and i32 %27, 8
  %89 = icmp ne i32 %88, 0
  %90 = and i1 %89, %75
  br i1 %90, label %91, label %98

91:                                               ; preds = %87
  %92 = and i32 %27, 1073741824
  %93 = icmp eq i32 %92, 0
  br i1 %93, label %94, label %101

94:                                               ; preds = %91
  %95 = call fastcc ptr @make_new_animlistelem(ptr noundef %78, i16 noundef signext %76, ptr noundef %13)
  %96 = icmp eq ptr %95, null
  br i1 %96, label %98, label %97

97:                                               ; preds = %94
  call void @BLI_addtail(ptr noundef nonnull %11, ptr noundef nonnull %95) #7
  br label %98

98:                                               ; preds = %97, %94, %87
  %99 = phi i64 [ 0, %87 ], [ 1, %97 ], [ 0, %94 ]
  call void @BLI_movelisttolist(ptr noundef nonnull %11, ptr noundef nonnull %10) #7
  %100 = add i64 %99, %85
  br label %101

101:                                              ; preds = %74, %91, %98
  %102 = phi i64 [ 1, %91 ], [ %100, %98 ], [ 0, %74 ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %10) #7
  br label %103

103:                                              ; preds = %101, %32, %26
  %104 = phi i64 [ 0, %32 ], [ %102, %101 ], [ 0, %26 ]
  %105 = icmp eq ptr %28, null
  br i1 %105, label %179, label %106

106:                                              ; preds = %103
  %107 = getelementptr inbounds %struct.Key, ptr %28, i64 0, i32 1
  %108 = load ptr, ptr %107, align 8, !tbaa !85
  %109 = icmp eq ptr %108, null
  br i1 %109, label %179, label %110

110:                                              ; preds = %106
  %111 = getelementptr inbounds %struct.bDopeSheet, ptr %2, i64 0, i32 4
  %112 = load i32, ptr %111, align 8, !tbaa !92
  %113 = and i32 %112, 64
  %114 = icmp eq i32 %113, 0
  br i1 %114, label %115, label %179

115:                                              ; preds = %110
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %9) #7
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %9, i8 0, i64 16, i1 false)
  %116 = and i32 %27, 2
  %117 = icmp eq i32 %116, 0
  br i1 %117, label %128, label %118

118:                                              ; preds = %115
  %119 = getelementptr inbounds %struct.Key, ptr %28, i64 0, i32 12
  %120 = load i16, ptr %119, align 2, !tbaa !173
  %121 = and i16 %120, 1
  %122 = icmp ne i16 %121, 0
  %123 = and i32 %27, 8
  %124 = icmp eq i32 %123, 0
  %125 = or i1 %124, %122
  %126 = or i32 %27, 1073741824
  %127 = select i1 %125, i32 %27, i32 %126
  br label %128

128:                                              ; preds = %118, %115
  %129 = phi i32 [ %27, %115 ], [ %127, %118 ]
  %130 = call fastcc i64 @animfilter_block_data(ptr noundef %0, ptr noundef nonnull %9, ptr noundef %2, ptr noundef nonnull %28, i32 noundef %129)
  %131 = icmp eq i64 %130, 0
  br i1 %131, label %176, label %132

132:                                              ; preds = %128
  %133 = and i32 %27, 8
  %134 = icmp eq i32 %133, 0
  br i1 %134, label %173, label %135

135:                                              ; preds = %132
  %136 = and i32 %27, 16
  %137 = icmp eq i32 %136, 0
  br i1 %137, label %146, label %138

138:                                              ; preds = %135
  %139 = load ptr, ptr %107, align 8, !tbaa !85
  %140 = icmp eq ptr %139, null
  br i1 %140, label %146, label %141

141:                                              ; preds = %138
  %142 = getelementptr inbounds %struct.AnimData, ptr %139, i64 0, i32 7
  %143 = load i32, ptr %142, align 8, !tbaa !144
  %144 = and i32 %143, 32768
  %145 = icmp eq i32 %144, 0
  br i1 %145, label %173, label %146

146:                                              ; preds = %141, %138, %135
  %147 = and i32 %27, 1073741824
  %148 = icmp eq i32 %147, 0
  br i1 %148, label %149, label %176

149:                                              ; preds = %146
  %150 = load ptr, ptr @MEM_callocN, align 8, !tbaa !89
  %151 = call ptr %150(i64 noundef 64, ptr noundef nonnull @.str.3) #7
  %152 = getelementptr inbounds %struct.bAnimListElem, ptr %151, i64 0, i32 2
  store ptr %28, ptr %152, align 8, !tbaa !105
  %153 = getelementptr inbounds %struct.bAnimListElem, ptr %151, i64 0, i32 3
  store i32 14, ptr %153, align 8, !tbaa !107
  %154 = getelementptr inbounds %struct.bAnimListElem, ptr %151, i64 0, i32 9
  store ptr %13, ptr %154, align 8, !tbaa !108
  %155 = call ptr @BKE_animdata_from_id(ptr noundef %13) #7
  %156 = getelementptr inbounds %struct.bAnimListElem, ptr %151, i64 0, i32 10
  store ptr %155, ptr %156, align 8, !tbaa !109
  %157 = load ptr, ptr %107, align 8, !tbaa !85
  %158 = getelementptr inbounds %struct.Key, ptr %28, i64 0, i32 12
  %159 = load i16, ptr %158, align 2, !tbaa !173
  %160 = and i16 %159, 1
  %161 = zext nneg i16 %160 to i32
  %162 = getelementptr inbounds %struct.bAnimListElem, ptr %151, i64 0, i32 4
  store i32 %161, ptr %162, align 4, !tbaa !127
  %163 = icmp eq ptr %157, null
  br i1 %163, label %166, label %164

164:                                              ; preds = %149
  %165 = load ptr, ptr %157, align 8, !tbaa !57
  br label %166

166:                                              ; preds = %164, %149
  %167 = phi ptr [ %165, %164 ], [ null, %149 ]
  %168 = getelementptr inbounds %struct.bAnimListElem, ptr %151, i64 0, i32 8
  store ptr %167, ptr %168, align 8, !tbaa !110
  %169 = getelementptr inbounds %struct.bAnimListElem, ptr %151, i64 0, i32 7
  store i16 8, ptr %169, align 2, !tbaa !111
  %170 = call ptr @BKE_animdata_from_id(ptr noundef nonnull %28) #7
  store ptr %170, ptr %156, align 8, !tbaa !109
  %171 = icmp eq ptr %151, null
  br i1 %171, label %173, label %172

172:                                              ; preds = %166
  call void @BLI_addtail(ptr noundef nonnull %11, ptr noundef nonnull %151) #7
  br label %173

173:                                              ; preds = %172, %166, %141, %132
  %174 = phi i64 [ 0, %141 ], [ 0, %132 ], [ 1, %172 ], [ 0, %166 ]
  call void @BLI_movelisttolist(ptr noundef nonnull %11, ptr noundef nonnull %9) #7
  %175 = add i64 %174, %130
  br label %176

176:                                              ; preds = %128, %146, %173
  %177 = phi i64 [ 1, %146 ], [ %175, %173 ], [ 0, %128 ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %9) #7
  %178 = add i64 %177, %104
  br label %179

179:                                              ; preds = %176, %110, %106, %103
  %180 = phi i64 [ %104, %110 ], [ %178, %176 ], [ %104, %106 ], [ %104, %103 ]
  %181 = getelementptr inbounds %struct.Object, ptr %13, i64 0, i32 26
  %182 = load ptr, ptr %181, align 8, !tbaa !264
  %183 = icmp eq ptr %182, null
  br i1 %183, label %201, label %184

184:                                              ; preds = %179
  %185 = getelementptr inbounds %struct.bDopeSheet, ptr %2, i64 0, i32 4
  %186 = load i32, ptr %185, align 8, !tbaa !92
  %187 = and i32 %186, 8388608
  %188 = icmp eq i32 %187, 0
  br i1 %188, label %189, label %201

189:                                              ; preds = %184
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %8) #7
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %8, i8 0, i64 48, i1 false)
  store ptr %0, ptr %8, align 8, !tbaa !265
  %190 = getelementptr inbounds %struct.tAnimFilterModifiersContext, ptr %8, i64 0, i32 1
  store ptr %2, ptr %190, align 8, !tbaa !267
  %191 = getelementptr inbounds %struct.tAnimFilterModifiersContext, ptr %8, i64 0, i32 4
  store i32 %27, ptr %191, align 8, !tbaa !268
  call void @modifiers_foreachIDLink(ptr noundef %13, ptr noundef nonnull @animfilter_modifier_idpoin_cb, ptr noundef nonnull %8) #7
  %192 = getelementptr inbounds %struct.tAnimFilterModifiersContext, ptr %8, i64 0, i32 3
  %193 = load i64, ptr %192, align 8, !tbaa !269
  %194 = icmp eq i64 %193, 0
  br i1 %194, label %198, label %195

195:                                              ; preds = %189
  %196 = getelementptr inbounds %struct.tAnimFilterModifiersContext, ptr %8, i64 0, i32 2
  call void @BLI_movelisttolist(ptr noundef nonnull %11, ptr noundef nonnull %196) #7
  %197 = load i64, ptr %192, align 8, !tbaa !269
  br label %198

198:                                              ; preds = %189, %195
  %199 = phi i64 [ %197, %195 ], [ 0, %189 ]
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %8) #7
  %200 = add i64 %199, %180
  br label %201

201:                                              ; preds = %198, %184, %179
  %202 = phi i64 [ %180, %184 ], [ %200, %198 ], [ %180, %179 ]
  %203 = getelementptr inbounds %struct.Object, ptr %13, i64 0, i32 31
  %204 = load i32, ptr %203, align 8, !tbaa !270
  %205 = icmp eq i32 %204, 0
  br i1 %205, label %262, label %206

206:                                              ; preds = %201
  %207 = getelementptr inbounds %struct.bDopeSheet, ptr %2, i64 0, i32 4
  %208 = load i32, ptr %207, align 8, !tbaa !92
  %209 = and i32 %208, 2048
  %210 = icmp eq i32 %209, 0
  br i1 %210, label %211, label %262

211:                                              ; preds = %206
  %212 = load i32, ptr %203, align 8, !tbaa !270
  %213 = icmp slt i32 %212, 1
  br i1 %213, label %235, label %214

214:                                              ; preds = %211, %229
  %215 = phi i8 [ %231, %229 ], [ 0, %211 ]
  %216 = phi i64 [ %230, %229 ], [ 0, %211 ]
  %217 = phi i32 [ %232, %229 ], [ 1, %211 ]
  %218 = trunc i32 %217 to i16
  %219 = call ptr @give_current_material(ptr noundef %13, i16 noundef signext %218) #7
  %220 = icmp eq ptr %219, null
  br i1 %220, label %229, label %221

221:                                              ; preds = %214
  %222 = call fastcc i64 @animdata_filter_ds_material(ptr noundef %0, ptr noundef nonnull %11, ptr noundef %2, ptr noundef nonnull %219, i32 noundef %27)
  %223 = add i64 %222, %216
  %224 = icmp eq i8 %215, 0
  br i1 %224, label %225, label %229

225:                                              ; preds = %221
  %226 = call ptr @give_node_material(ptr noundef nonnull %219) #7
  %227 = icmp ne ptr %226, null
  %228 = zext i1 %227 to i8
  br label %229

229:                                              ; preds = %225, %221, %214
  %230 = phi i64 [ %223, %225 ], [ %223, %221 ], [ %216, %214 ]
  %231 = phi i8 [ %228, %225 ], [ %215, %221 ], [ %215, %214 ]
  %232 = add nuw nsw i32 %217, 1
  %233 = load i32, ptr %203, align 8, !tbaa !270
  %234 = icmp slt i32 %217, %233
  br i1 %234, label %214, label %235, !llvm.loop !271

235:                                              ; preds = %229, %211
  %236 = phi i64 [ 0, %211 ], [ %230, %229 ]
  %237 = phi i8 [ 0, %211 ], [ %231, %229 ]
  %238 = icmp eq i8 %237, 0
  br i1 %238, label %259, label %239

239:                                              ; preds = %235
  %240 = load i32, ptr %203, align 8, !tbaa !270
  %241 = icmp slt i32 %240, 1
  br i1 %241, label %259, label %242

242:                                              ; preds = %239, %254
  %243 = phi i64 [ %255, %254 ], [ %236, %239 ]
  %244 = phi i32 [ %256, %254 ], [ 1, %239 ]
  %245 = trunc i32 %244 to i16
  %246 = call ptr @give_current_material(ptr noundef %13, i16 noundef signext %245) #7
  %247 = call ptr @give_node_material(ptr noundef %246) #7
  %248 = icmp eq ptr %247, null
  %249 = icmp eq ptr %247, %246
  %250 = or i1 %248, %249
  br i1 %250, label %254, label %251

251:                                              ; preds = %242
  %252 = call fastcc i64 @animdata_filter_ds_material(ptr noundef %0, ptr noundef nonnull %11, ptr noundef %2, ptr noundef nonnull %247, i32 noundef %27)
  %253 = add i64 %252, %243
  br label %254

254:                                              ; preds = %251, %242
  %255 = phi i64 [ %253, %251 ], [ %243, %242 ]
  %256 = add nuw nsw i32 %244, 1
  %257 = load i32, ptr %203, align 8, !tbaa !270
  %258 = icmp slt i32 %244, %257
  br i1 %258, label %242, label %259, !llvm.loop !272

259:                                              ; preds = %254, %239, %235
  %260 = phi i64 [ %236, %235 ], [ %236, %239 ], [ %255, %254 ]
  %261 = add i64 %260, %202
  br label %262

262:                                              ; preds = %259, %206, %201
  %263 = phi i64 [ %202, %206 ], [ %261, %259 ], [ %202, %201 ]
  %264 = getelementptr inbounds %struct.Object, ptr %13, i64 0, i32 19
  %265 = load ptr, ptr %264, align 8, !tbaa !219
  %266 = icmp eq ptr %265, null
  br i1 %266, label %497, label %267

267:                                              ; preds = %262
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %7) #7
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %7, i8 0, i64 16, i1 false)
  %268 = getelementptr inbounds %struct.Object, ptr %13, i64 0, i32 3
  %269 = load i16, ptr %268, align 8, !tbaa !273
  switch i16 %269, label %361 [
    i16 11, label %270
    i16 10, label %282
    i16 2, label %294
    i16 3, label %294
    i16 4, label %294
    i16 5, label %307
    i16 25, label %320
    i16 1, label %333
    i16 22, label %345
    i16 12, label %357
  ]

270:                                              ; preds = %267
  %271 = getelementptr inbounds %struct.bDopeSheet, ptr %2, i64 0, i32 4
  %272 = load i32, ptr %271, align 8, !tbaa !92
  %273 = and i32 %272, 1024
  %274 = icmp eq i32 %273, 0
  br i1 %274, label %275, label %279

275:                                              ; preds = %270
  %276 = getelementptr inbounds %struct.Camera, ptr %265, i64 0, i32 4
  %277 = load i16, ptr %276, align 2, !tbaa !155
  %278 = and i16 %277, 64
  br label %279

279:                                              ; preds = %275, %270
  %280 = phi i16 [ %278, %275 ], [ 0, %270 ]
  %281 = phi i16 [ 12, %275 ], [ 0, %270 ]
  br i1 %274, label %361, label %494

282:                                              ; preds = %267
  %283 = getelementptr inbounds %struct.bDopeSheet, ptr %2, i64 0, i32 4
  %284 = load i32, ptr %283, align 8, !tbaa !92
  %285 = and i32 %284, 4096
  %286 = icmp eq i32 %285, 0
  br i1 %286, label %287, label %291

287:                                              ; preds = %282
  %288 = getelementptr inbounds %struct.Lamp, ptr %265, i64 0, i32 3
  %289 = load i16, ptr %288, align 2, !tbaa !152
  %290 = and i16 %289, 1
  br label %291

291:                                              ; preds = %287, %282
  %292 = phi i16 [ %290, %287 ], [ 0, %282 ]
  %293 = phi i16 [ 11, %287 ], [ 0, %282 ]
  br i1 %286, label %361, label %494

294:                                              ; preds = %267, %267, %267
  %295 = getelementptr inbounds %struct.bDopeSheet, ptr %2, i64 0, i32 4
  %296 = load i32, ptr %295, align 8, !tbaa !92
  %297 = and i32 %296, 8192
  %298 = icmp eq i32 %297, 0
  br i1 %298, label %299, label %304

299:                                              ; preds = %294
  %300 = getelementptr inbounds %struct.Curve, ptr %265, i64 0, i32 23
  %301 = load i32, ptr %300, align 4, !tbaa !159
  %302 = trunc i32 %301 to i16
  %303 = and i16 %302, 2048
  br label %304

304:                                              ; preds = %299, %294
  %305 = phi i16 [ %303, %299 ], [ 0, %294 ]
  %306 = phi i16 [ 13, %299 ], [ 0, %294 ]
  br i1 %298, label %361, label %494

307:                                              ; preds = %267
  %308 = getelementptr inbounds %struct.bDopeSheet, ptr %2, i64 0, i32 4
  %309 = load i32, ptr %308, align 8, !tbaa !92
  %310 = and i32 %309, 131072
  %311 = icmp eq i32 %310, 0
  br i1 %311, label %312, label %317

312:                                              ; preds = %307
  %313 = getelementptr inbounds %struct.MetaBall, ptr %265, i64 0, i32 8
  %314 = load i8, ptr %313, align 1, !tbaa !274
  %315 = and i8 %314, 1
  %316 = zext nneg i8 %315 to i16
  br label %317

317:                                              ; preds = %312, %307
  %318 = phi i16 [ %316, %312 ], [ 0, %307 ]
  %319 = phi i16 [ 18, %312 ], [ 0, %307 ]
  br i1 %311, label %361, label %494

320:                                              ; preds = %267
  %321 = getelementptr inbounds %struct.bDopeSheet, ptr %2, i64 0, i32 4
  %322 = load i32, ptr %321, align 8, !tbaa !92
  %323 = and i32 %322, 262144
  %324 = icmp eq i32 %323, 0
  br i1 %324, label %325, label %330

325:                                              ; preds = %320
  %326 = getelementptr inbounds %struct.bArmature, ptr %265, i64 0, i32 8
  %327 = load i32, ptr %326, align 8, !tbaa !162
  %328 = trunc i32 %327 to i16
  %329 = and i16 %328, 8192
  br label %330

330:                                              ; preds = %325, %320
  %331 = phi i16 [ %329, %325 ], [ 0, %320 ]
  %332 = phi i16 [ 19, %325 ], [ 0, %320 ]
  br i1 %324, label %361, label %494

333:                                              ; preds = %267
  %334 = getelementptr inbounds %struct.bDopeSheet, ptr %2, i64 0, i32 4
  %335 = load i32, ptr %334, align 8, !tbaa !92
  %336 = and i32 %335, 128
  %337 = icmp eq i32 %336, 0
  br i1 %337, label %338, label %342

338:                                              ; preds = %333
  %339 = getelementptr inbounds %struct.Mesh, ptr %265, i64 0, i32 38
  %340 = load i16, ptr %339, align 2, !tbaa !166
  %341 = and i16 %340, 512
  br label %342

342:                                              ; preds = %338, %333
  %343 = phi i16 [ %341, %338 ], [ 0, %333 ]
  %344 = phi i16 [ 20, %338 ], [ 0, %333 ]
  br i1 %337, label %361, label %494

345:                                              ; preds = %267
  %346 = getelementptr inbounds %struct.bDopeSheet, ptr %2, i64 0, i32 4
  %347 = load i32, ptr %346, align 8, !tbaa !92
  %348 = and i32 %347, 512
  %349 = icmp eq i32 %348, 0
  br i1 %349, label %350, label %354

350:                                              ; preds = %345
  %351 = getelementptr inbounds %struct.Lattice, ptr %265, i64 0, i32 5
  %352 = load i16, ptr %351, align 2, !tbaa !169
  %353 = and i16 %352, 4
  br label %354

354:                                              ; preds = %350, %345
  %355 = phi i16 [ %353, %350 ], [ 0, %345 ]
  %356 = phi i16 [ 22, %350 ], [ 0, %345 ]
  br i1 %349, label %361, label %494

357:                                              ; preds = %267
  %358 = getelementptr inbounds %struct.Speaker, ptr %265, i64 0, i32 13
  %359 = load i16, ptr %358, align 8, !tbaa !172
  %360 = and i16 %359, 1
  br label %361

361:                                              ; preds = %357, %354, %342, %330, %317, %304, %291, %279, %267
  %362 = phi i16 [ 0, %267 ], [ %360, %357 ], [ %355, %354 ], [ %343, %342 ], [ %331, %330 ], [ %318, %317 ], [ %305, %304 ], [ %292, %291 ], [ %280, %279 ]
  %363 = phi i16 [ 0, %267 ], [ 24, %357 ], [ %356, %354 ], [ %344, %342 ], [ %332, %330 ], [ %319, %317 ], [ %306, %304 ], [ %293, %291 ], [ %281, %279 ]
  %364 = icmp ne i16 %362, 0
  %365 = and i32 %27, 8
  %366 = icmp eq i32 %365, 0
  %367 = and i32 %27, 10
  %368 = icmp ne i32 %367, 10
  %369 = select i1 %368, i1 true, i1 %364
  %370 = or i32 %27, 1073741824
  %371 = select i1 %369, i32 %27, i32 %370
  %372 = call fastcc i64 @animfilter_block_data(ptr noundef %0, ptr noundef nonnull %7, ptr noundef %2, ptr noundef nonnull %265, i32 noundef %371)
  %373 = load i16, ptr %268, align 8, !tbaa !273
  %374 = icmp eq i16 %373, 10
  br i1 %374, label %375, label %468

375:                                              ; preds = %361
  %376 = load ptr, ptr %264, align 8, !tbaa !219
  %377 = getelementptr inbounds %struct.Lamp, ptr %376, i64 0, i32 74
  %378 = load ptr, ptr %377, align 8, !tbaa !276
  %379 = icmp eq ptr %378, null
  br i1 %379, label %421, label %380

380:                                              ; preds = %375
  %381 = getelementptr inbounds %struct.bDopeSheet, ptr %2, i64 0, i32 4
  %382 = load i32, ptr %381, align 8, !tbaa !92
  %383 = and i32 %382, 524288
  %384 = icmp eq i32 %383, 0
  br i1 %384, label %385, label %421

385:                                              ; preds = %380
  %386 = call fastcc i64 @animdata_filter_ds_nodetree_group(ptr noundef %0, ptr noundef nonnull %7, ptr noundef %2, ptr noundef %376, ptr noundef nonnull %378, i32 noundef %371)
  %387 = getelementptr inbounds %struct.bNodeTree, ptr %378, i64 0, i32 7
  %388 = load ptr, ptr %387, align 8, !tbaa !89
  %389 = icmp eq ptr %388, null
  br i1 %389, label %418, label %390

390:                                              ; preds = %385
  %391 = or i32 %371, -2147483648
  br label %392

392:                                              ; preds = %414, %390
  %393 = phi ptr [ %388, %390 ], [ %416, %414 ]
  %394 = phi i64 [ %386, %390 ], [ %415, %414 ]
  %395 = getelementptr inbounds %struct.bNode, ptr %393, i64 0, i32 8
  %396 = load i16, ptr %395, align 4, !tbaa !250
  %397 = icmp eq i16 %396, 2
  br i1 %397, label %398, label %414

398:                                              ; preds = %392
  %399 = getelementptr inbounds %struct.bNode, ptr %393, i64 0, i32 20
  %400 = load ptr, ptr %399, align 8, !tbaa !251
  %401 = icmp eq ptr %400, null
  br i1 %401, label %414, label %402

402:                                              ; preds = %398
  %403 = load i32, ptr %381, align 8, !tbaa !92
  %404 = and i32 %403, 1
  %405 = icmp eq i32 %404, 0
  br i1 %405, label %411, label %406

406:                                              ; preds = %402
  %407 = getelementptr inbounds %struct.bNode, ptr %393, i64 0, i32 7
  %408 = load i32, ptr %407, align 8, !tbaa !228
  %409 = and i32 %408, 1
  %410 = icmp eq i32 %409, 0
  br i1 %410, label %414, label %411

411:                                              ; preds = %406, %402
  %412 = call fastcc i64 @animdata_filter_ds_nodetree_group(ptr noundef %0, ptr noundef nonnull %7, ptr noundef %2, ptr noundef %376, ptr noundef nonnull %400, i32 noundef %391)
  %413 = add i64 %412, %394
  br label %414

414:                                              ; preds = %411, %406, %398, %392
  %415 = phi i64 [ %394, %406 ], [ %413, %411 ], [ %394, %398 ], [ %394, %392 ]
  %416 = load ptr, ptr %393, align 8, !tbaa !89
  %417 = icmp eq ptr %416, null
  br i1 %417, label %418, label %392, !llvm.loop !252

418:                                              ; preds = %414, %385
  %419 = phi i64 [ %386, %385 ], [ %415, %414 ]
  %420 = add i64 %419, %372
  br label %421

421:                                              ; preds = %418, %380, %375
  %422 = phi i64 [ %372, %380 ], [ %420, %418 ], [ %372, %375 ]
  %423 = getelementptr inbounds %struct.bDopeSheet, ptr %2, i64 0, i32 4
  %424 = load i32, ptr %423, align 8, !tbaa !92
  %425 = and i32 %424, 1048576
  %426 = icmp eq i32 %425, 0
  br i1 %426, label %427, label %468

427:                                              ; preds = %421
  %428 = icmp eq ptr %376, null
  br i1 %428, label %465, label %429

429:                                              ; preds = %427
  %430 = getelementptr inbounds %struct.ID, ptr %376, i64 0, i32 4
  %431 = load i16, ptr %430, align 8, !tbaa !203
  switch i16 %431, label %438 [
    i16 16717, label %432
    i16 16716, label %434
    i16 20311, label %436
  ]

432:                                              ; preds = %429
  %433 = getelementptr inbounds %struct.Material, ptr %376, i64 0, i32 102
  br label %444

434:                                              ; preds = %429
  %435 = getelementptr inbounds %struct.Lamp, ptr %376, i64 0, i32 69
  br label %444

436:                                              ; preds = %429
  %437 = getelementptr inbounds %struct.World, ptr %376, i64 0, i32 70
  br label %444

438:                                              ; preds = %429
  %439 = load i32, ptr getelementptr inbounds (%struct.Global, ptr @G, i64 0, i32 16), align 4, !tbaa !204
  %440 = and i32 %439, 1
  %441 = icmp eq i32 %440, 0
  br i1 %441, label %465, label %442

442:                                              ; preds = %438
  %443 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.12, ptr noundef nonnull %430)
  br label %465

444:                                              ; preds = %436, %434, %432
  %445 = phi ptr [ %437, %436 ], [ %435, %434 ], [ %433, %432 ]
  br label %446

446:                                              ; preds = %461, %444
  %447 = phi i64 [ 0, %444 ], [ %463, %461 ]
  %448 = phi i64 [ 0, %444 ], [ %462, %461 ]
  %449 = getelementptr inbounds ptr, ptr %445, i64 %447
  %450 = load ptr, ptr %449, align 8, !tbaa !89
  %451 = icmp eq ptr %450, null
  br i1 %451, label %455, label %452

452:                                              ; preds = %446
  %453 = getelementptr inbounds %struct.MTex, ptr %450, i64 0, i32 5
  %454 = load ptr, ptr %453, align 8, !tbaa !246
  br label %455

455:                                              ; preds = %452, %446
  %456 = phi ptr [ %454, %452 ], [ null, %446 ]
  %457 = icmp eq ptr %456, null
  br i1 %457, label %461, label %458

458:                                              ; preds = %455
  %459 = call fastcc i64 @animdata_filter_ds_texture(ptr noundef %0, ptr noundef nonnull %7, ptr noundef %2, ptr noundef nonnull %456, ptr noundef nonnull %376, i32 noundef %371)
  %460 = add i64 %459, %448
  br label %461

461:                                              ; preds = %458, %455
  %462 = phi i64 [ %460, %458 ], [ %448, %455 ]
  %463 = add nuw nsw i64 %447, 1
  %464 = icmp eq i64 %463, 18
  br i1 %464, label %465, label %446, !llvm.loop !248

465:                                              ; preds = %461, %427, %438, %442
  %466 = phi i64 [ 0, %427 ], [ 0, %442 ], [ 0, %438 ], [ %462, %461 ]
  %467 = add i64 %466, %422
  br label %468

468:                                              ; preds = %465, %421, %361
  %469 = phi i64 [ %372, %361 ], [ %422, %421 ], [ %467, %465 ]
  %470 = icmp eq i64 %469, 0
  br i1 %470, label %494, label %471

471:                                              ; preds = %468
  br i1 %366, label %491, label %472

472:                                              ; preds = %471
  %473 = and i32 %27, 16
  %474 = icmp eq i32 %473, 0
  br i1 %474, label %484, label %475

475:                                              ; preds = %472
  %476 = getelementptr inbounds %struct.IdAdtTemplate, ptr %265, i64 0, i32 1
  %477 = load ptr, ptr %476, align 8, !tbaa !277
  %478 = icmp eq ptr %477, null
  br i1 %478, label %484, label %479

479:                                              ; preds = %475
  %480 = getelementptr inbounds %struct.AnimData, ptr %477, i64 0, i32 7
  %481 = load i32, ptr %480, align 8, !tbaa !144
  %482 = and i32 %481, 32768
  %483 = icmp eq i32 %482, 0
  br i1 %483, label %491, label %484

484:                                              ; preds = %479, %475, %472
  %485 = and i32 %27, 1073741824
  %486 = icmp eq i32 %485, 0
  br i1 %486, label %487, label %494

487:                                              ; preds = %484
  %488 = call fastcc ptr @make_new_animlistelem(ptr noundef nonnull %265, i16 noundef signext %363, ptr noundef nonnull %265)
  %489 = icmp eq ptr %488, null
  br i1 %489, label %491, label %490

490:                                              ; preds = %487
  call void @BLI_addtail(ptr noundef nonnull %11, ptr noundef nonnull %488) #7
  br label %491

491:                                              ; preds = %490, %487, %479, %471
  %492 = phi i64 [ 0, %479 ], [ 0, %471 ], [ 1, %490 ], [ 0, %487 ]
  call void @BLI_movelisttolist(ptr noundef nonnull %11, ptr noundef nonnull %7) #7
  %493 = add i64 %492, %469
  br label %494

494:                                              ; preds = %279, %291, %304, %317, %330, %342, %354, %468, %484, %491
  %495 = phi i64 [ 0, %354 ], [ 0, %342 ], [ 0, %330 ], [ 0, %317 ], [ 0, %304 ], [ 0, %291 ], [ 0, %279 ], [ 1, %484 ], [ %493, %491 ], [ 0, %468 ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %7) #7
  %496 = add i64 %495, %263
  br label %497

497:                                              ; preds = %494, %262
  %498 = phi i64 [ %496, %494 ], [ %263, %262 ]
  %499 = getelementptr inbounds %struct.Object, ptr %13, i64 0, i32 109
  %500 = load ptr, ptr %499, align 8, !tbaa !279
  %501 = icmp eq ptr %500, null
  br i1 %501, label %600, label %502

502:                                              ; preds = %497
  %503 = getelementptr inbounds %struct.bDopeSheet, ptr %2, i64 0, i32 4
  %504 = load i32, ptr %503, align 8, !tbaa !92
  %505 = and i32 %504, 65536
  %506 = icmp eq i32 %505, 0
  br i1 %506, label %507, label %600

507:                                              ; preds = %502
  %508 = load ptr, ptr %499, align 8, !tbaa !89
  %509 = icmp eq ptr %508, null
  br i1 %509, label %597, label %510

510:                                              ; preds = %507
  %511 = and i32 %27, 2
  %512 = icmp eq i32 %511, 0
  %513 = and i32 %27, 8
  %514 = icmp eq i32 %513, 0
  %515 = or i32 %27, 1073741824
  %516 = and i32 %27, 8
  %517 = icmp eq i32 %516, 0
  %518 = and i32 %27, 16
  %519 = icmp eq i32 %518, 0
  %520 = and i32 %27, 1073741824
  %521 = icmp eq i32 %520, 0
  br label %522

522:                                              ; preds = %510, %594
  %523 = phi ptr [ %508, %510 ], [ %595, %594 ]
  %524 = phi i64 [ 0, %510 ], [ %592, %594 ]
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %6) #7
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %6, i8 0, i64 16, i1 false)
  %525 = getelementptr inbounds %struct.ParticleSystem, ptr %523, i64 0, i32 2
  %526 = load ptr, ptr %525, align 8, !tbaa !280
  %527 = icmp eq ptr %526, null
  br i1 %527, label %591, label %528

528:                                              ; preds = %522
  %529 = getelementptr inbounds %struct.ParticleSettings, ptr %526, i64 0, i32 1
  %530 = load ptr, ptr %529, align 8, !tbaa !184
  %531 = icmp eq ptr %530, null
  br i1 %531, label %591, label %532

532:                                              ; preds = %528
  br i1 %512, label %540, label %533

533:                                              ; preds = %532
  %534 = getelementptr inbounds %struct.ParticleSettings, ptr %526, i64 0, i32 5
  %535 = load i32, ptr %534, align 8, !tbaa !186
  %536 = and i32 %535, 8
  %537 = icmp ne i32 %536, 0
  %538 = or i1 %514, %537
  %539 = select i1 %538, i32 %27, i32 %515
  br label %540

540:                                              ; preds = %533, %532
  %541 = phi i32 [ %27, %532 ], [ %539, %533 ]
  %542 = call fastcc i64 @animfilter_block_data(ptr noundef %0, ptr noundef nonnull %6, ptr noundef %2, ptr noundef nonnull %526, i32 noundef %541)
  %543 = icmp eq i64 %542, 0
  br i1 %543, label %591, label %544

544:                                              ; preds = %540
  br i1 %517, label %588, label %545

545:                                              ; preds = %544
  br i1 %519, label %556, label %546

546:                                              ; preds = %545
  %547 = load ptr, ptr %525, align 8, !tbaa !280
  %548 = getelementptr inbounds %struct.ParticleSettings, ptr %547, i64 0, i32 1
  %549 = load ptr, ptr %548, align 8, !tbaa !184
  %550 = icmp eq ptr %549, null
  br i1 %550, label %556, label %551

551:                                              ; preds = %546
  %552 = getelementptr inbounds %struct.AnimData, ptr %549, i64 0, i32 7
  %553 = load i32, ptr %552, align 8, !tbaa !144
  %554 = and i32 %553, 32768
  %555 = icmp eq i32 %554, 0
  br i1 %555, label %588, label %556

556:                                              ; preds = %551, %546, %545
  br i1 %521, label %557, label %591

557:                                              ; preds = %556
  %558 = load ptr, ptr %525, align 8, !tbaa !280
  %559 = icmp eq ptr %558, null
  br i1 %559, label %583, label %560

560:                                              ; preds = %557
  %561 = load ptr, ptr @MEM_callocN, align 8, !tbaa !89
  %562 = call ptr %561(i64 noundef 64, ptr noundef nonnull @.str.3) #7
  %563 = getelementptr inbounds %struct.bAnimListElem, ptr %562, i64 0, i32 2
  store ptr %558, ptr %563, align 8, !tbaa !105
  %564 = getelementptr inbounds %struct.bAnimListElem, ptr %562, i64 0, i32 3
  store i32 17, ptr %564, align 8, !tbaa !107
  %565 = getelementptr inbounds %struct.bAnimListElem, ptr %562, i64 0, i32 9
  store ptr %558, ptr %565, align 8, !tbaa !108
  %566 = call ptr @BKE_animdata_from_id(ptr noundef nonnull %558) #7
  %567 = getelementptr inbounds %struct.bAnimListElem, ptr %562, i64 0, i32 10
  store ptr %566, ptr %567, align 8, !tbaa !109
  %568 = load ptr, ptr %563, align 8, !tbaa !105
  %569 = getelementptr inbounds %struct.ParticleSettings, ptr %568, i64 0, i32 1
  %570 = load ptr, ptr %569, align 8, !tbaa !184
  %571 = getelementptr inbounds %struct.ParticleSettings, ptr %568, i64 0, i32 5
  %572 = load i32, ptr %571, align 8, !tbaa !186
  %573 = and i32 %572, 8
  %574 = getelementptr inbounds %struct.bAnimListElem, ptr %562, i64 0, i32 4
  store i32 %573, ptr %574, align 4, !tbaa !127
  %575 = icmp eq ptr %570, null
  br i1 %575, label %578, label %576

576:                                              ; preds = %560
  %577 = load ptr, ptr %570, align 8, !tbaa !57
  br label %578

578:                                              ; preds = %576, %560
  %579 = phi ptr [ %577, %576 ], [ null, %560 ]
  %580 = getelementptr inbounds %struct.bAnimListElem, ptr %562, i64 0, i32 8
  store ptr %579, ptr %580, align 8, !tbaa !110
  %581 = getelementptr inbounds %struct.bAnimListElem, ptr %562, i64 0, i32 7
  store i16 8, ptr %581, align 2, !tbaa !111
  %582 = call ptr @BKE_animdata_from_id(ptr noundef nonnull %558) #7
  store ptr %582, ptr %567, align 8, !tbaa !109
  br label %583

583:                                              ; preds = %557, %578
  %584 = phi ptr [ %562, %578 ], [ null, %557 ]
  %585 = icmp eq ptr %584, null
  br i1 %585, label %588, label %586

586:                                              ; preds = %583
  call void @BLI_addtail(ptr noundef nonnull %11, ptr noundef nonnull %584) #7
  %587 = add i64 %524, 1
  br label %588

588:                                              ; preds = %586, %583, %551, %544
  %589 = phi i64 [ %524, %551 ], [ %524, %544 ], [ %587, %586 ], [ %524, %583 ]
  call void @BLI_movelisttolist(ptr noundef nonnull %11, ptr noundef nonnull %6) #7
  %590 = add i64 %589, %542
  br label %591

591:                                              ; preds = %588, %556, %540, %528, %522
  %592 = phi i64 [ %524, %528 ], [ %524, %522 ], [ %524, %556 ], [ %590, %588 ], [ %524, %540 ]
  %593 = phi i32 [ 4, %528 ], [ 4, %522 ], [ 1, %556 ], [ 0, %588 ], [ 0, %540 ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %6) #7
  switch i32 %593, label %597 [
    i32 0, label %594
    i32 4, label %594
  ]

594:                                              ; preds = %591, %591
  %595 = load ptr, ptr %523, align 8, !tbaa !89
  %596 = icmp eq ptr %595, null
  br i1 %596, label %597, label %522, !llvm.loop !282

597:                                              ; preds = %591, %594, %507
  %598 = phi i64 [ 0, %507 ], [ 1, %591 ], [ %592, %594 ]
  %599 = add i64 %598, %498
  br label %600

600:                                              ; preds = %597, %502, %497
  %601 = phi i64 [ %498, %502 ], [ %599, %597 ], [ %498, %497 ]
  %602 = icmp eq i64 %601, 0
  br i1 %602, label %664, label %603

603:                                              ; preds = %600
  %604 = and i32 %4, 8
  %605 = icmp eq i32 %604, 0
  br i1 %605, label %661, label %606

606:                                              ; preds = %603
  %607 = and i32 %4, 192
  %608 = icmp eq i32 %607, 0
  br i1 %608, label %625, label %609

609:                                              ; preds = %606
  %610 = and i32 %4, 64
  %611 = icmp eq i32 %610, 0
  br i1 %611, label %617, label %612

612:                                              ; preds = %609
  %613 = getelementptr inbounds %struct.Base, ptr %3, i64 0, i32 4
  %614 = load i32, ptr %613, align 8, !tbaa !209
  %615 = and i32 %614, 1
  %616 = icmp eq i32 %615, 0
  br i1 %616, label %617, label %625

617:                                              ; preds = %612, %609
  %618 = and i32 %4, 128
  %619 = icmp eq i32 %618, 0
  br i1 %619, label %661, label %620

620:                                              ; preds = %617
  %621 = getelementptr inbounds %struct.Base, ptr %3, i64 0, i32 4
  %622 = load i32, ptr %621, align 8, !tbaa !209
  %623 = and i32 %622, 1
  %624 = icmp eq i32 %623, 0
  br i1 %624, label %625, label %661

625:                                              ; preds = %620, %612, %606
  %626 = and i32 %4, 16
  %627 = icmp eq i32 %626, 0
  br i1 %627, label %636, label %628

628:                                              ; preds = %625
  %629 = load ptr, ptr %29, align 8, !tbaa !52
  %630 = icmp eq ptr %629, null
  br i1 %630, label %636, label %631

631:                                              ; preds = %628
  %632 = getelementptr inbounds %struct.AnimData, ptr %629, i64 0, i32 7
  %633 = load i32, ptr %632, align 8, !tbaa !144
  %634 = and i32 %633, 32768
  %635 = icmp eq i32 %634, 0
  br i1 %635, label %661, label %636

636:                                              ; preds = %631, %628, %625
  %637 = and i32 %4, 1073741824
  %638 = icmp eq i32 %637, 0
  br i1 %638, label %639, label %664

639:                                              ; preds = %636
  %640 = icmp eq ptr %3, null
  br i1 %640, label %657, label %641

641:                                              ; preds = %639
  %642 = load ptr, ptr @MEM_callocN, align 8, !tbaa !89
  %643 = call ptr %642(i64 noundef 64, ptr noundef nonnull @.str.3) #7
  %644 = getelementptr inbounds %struct.bAnimListElem, ptr %643, i64 0, i32 2
  store ptr %3, ptr %644, align 8, !tbaa !105
  %645 = getelementptr inbounds %struct.bAnimListElem, ptr %643, i64 0, i32 3
  store i32 5, ptr %645, align 8, !tbaa !107
  %646 = getelementptr inbounds %struct.bAnimListElem, ptr %643, i64 0, i32 9
  store ptr %13, ptr %646, align 8, !tbaa !108
  %647 = call ptr @BKE_animdata_from_id(ptr noundef %13) #7
  %648 = getelementptr inbounds %struct.bAnimListElem, ptr %643, i64 0, i32 10
  store ptr %647, ptr %648, align 8, !tbaa !109
  %649 = load ptr, ptr %12, align 8, !tbaa !81
  %650 = getelementptr inbounds %struct.Object, ptr %649, i64 0, i32 53
  %651 = load i16, ptr %650, align 4, !tbaa !141
  %652 = sext i16 %651 to i32
  %653 = getelementptr inbounds %struct.bAnimListElem, ptr %643, i64 0, i32 4
  store i32 %652, ptr %653, align 4, !tbaa !127
  %654 = getelementptr inbounds %struct.bAnimListElem, ptr %643, i64 0, i32 8
  store ptr %649, ptr %654, align 8, !tbaa !110
  %655 = getelementptr inbounds %struct.bAnimListElem, ptr %643, i64 0, i32 7
  store i16 7, ptr %655, align 2, !tbaa !111
  %656 = call ptr @BKE_animdata_from_id(ptr noundef %649) #7
  store ptr %656, ptr %648, align 8, !tbaa !109
  br label %657

657:                                              ; preds = %639, %641
  %658 = phi ptr [ %643, %641 ], [ null, %639 ]
  %659 = icmp eq ptr %658, null
  br i1 %659, label %661, label %660

660:                                              ; preds = %657
  call void @BLI_addtail(ptr noundef %1, ptr noundef nonnull %658) #7
  br label %661

661:                                              ; preds = %657, %660, %617, %620, %631, %603
  %662 = phi i64 [ 0, %631 ], [ 0, %620 ], [ 0, %617 ], [ 0, %603 ], [ 1, %660 ], [ 0, %657 ]
  call void @BLI_movelisttolist(ptr noundef %1, ptr noundef nonnull %11) #7
  %663 = add i64 %662, %601
  br label %664

664:                                              ; preds = %600, %661, %636
  %665 = phi i64 [ 1, %636 ], [ %663, %661 ], [ 0, %600 ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %11) #7
  ret i64 %665
}

; Function Attrs: nounwind uwtable
define internal fastcc i64 @animfilter_block_data(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, i32 noundef %4) unnamed_addr #0 {
  %6 = tail call ptr @BKE_animdata_from_id(ptr noundef %3) #7
  %7 = icmp eq ptr %6, null
  br i1 %7, label %91, label %8

8:                                                ; preds = %5
  %9 = getelementptr inbounds %struct.IdAdtTemplate, ptr %3, i64 0, i32 1
  %10 = load ptr, ptr %9, align 8, !tbaa !277
  %11 = icmp eq ptr %10, null
  br i1 %11, label %91, label %12

12:                                               ; preds = %8
  %13 = and i32 %4, 4
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %20, label %15

15:                                               ; preds = %12
  %16 = getelementptr inbounds %struct.AnimData, ptr %10, i64 0, i32 7
  %17 = load i32, ptr %16, align 8, !tbaa !144
  %18 = and i32 %17, 65536
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %20, label %91

20:                                               ; preds = %15, %12
  %21 = and i32 %4, 1024
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %55, label %23

23:                                               ; preds = %20
  %24 = and i32 %4, 192
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %42, label %26

26:                                               ; preds = %23
  %27 = and i32 %4, 64
  %28 = icmp eq i32 %27, 0
  br i1 %28, label %34, label %29

29:                                               ; preds = %26
  %30 = getelementptr inbounds %struct.AnimData, ptr %6, i64 0, i32 7
  %31 = load i32, ptr %30, align 8, !tbaa !144
  %32 = and i32 %31, 16384
  %33 = icmp eq i32 %32, 0
  br i1 %33, label %34, label %42

34:                                               ; preds = %29, %26
  %35 = and i32 %4, 128
  %36 = icmp eq i32 %35, 0
  br i1 %36, label %91, label %37

37:                                               ; preds = %34
  %38 = getelementptr inbounds %struct.AnimData, ptr %6, i64 0, i32 7
  %39 = load i32, ptr %38, align 8, !tbaa !144
  %40 = and i32 %39, 16384
  %41 = icmp eq i32 %40, 0
  br i1 %41, label %42, label %91

42:                                               ; preds = %37, %29, %23
  %43 = and i32 %4, 1073741824
  %44 = icmp eq i32 %43, 0
  br i1 %44, label %45, label %91

45:                                               ; preds = %42
  %46 = load ptr, ptr @MEM_callocN, align 8, !tbaa !89
  %47 = tail call ptr %46(i64 noundef 64, ptr noundef nonnull @.str.3) #7
  %48 = getelementptr inbounds %struct.bAnimListElem, ptr %47, i64 0, i32 2
  store ptr %6, ptr %48, align 8, !tbaa !105
  %49 = getelementptr inbounds %struct.bAnimListElem, ptr %47, i64 0, i32 3
  store i32 1, ptr %49, align 8, !tbaa !107
  %50 = getelementptr inbounds %struct.bAnimListElem, ptr %47, i64 0, i32 9
  store ptr %3, ptr %50, align 8, !tbaa !108
  %51 = tail call ptr @BKE_animdata_from_id(ptr noundef %3) #7
  %52 = getelementptr inbounds %struct.bAnimListElem, ptr %47, i64 0, i32 10
  store ptr %51, ptr %52, align 8, !tbaa !109
  %53 = icmp eq ptr %47, null
  br i1 %53, label %91, label %54

54:                                               ; preds = %45
  tail call void @BLI_addtail(ptr noundef %1, ptr noundef nonnull %47) #7
  br label %91

55:                                               ; preds = %20
  %56 = getelementptr inbounds %struct.bDopeSheet, ptr %2, i64 0, i32 4
  %57 = load i32, ptr %56, align 8, !tbaa !92
  %58 = and i32 %57, 4
  %59 = icmp eq i32 %58, 0
  br i1 %59, label %74, label %60

60:                                               ; preds = %55
  %61 = getelementptr inbounds %struct.AnimData, ptr %10, i64 0, i32 3
  %62 = load ptr, ptr %61, align 8, !tbaa !283
  %63 = icmp eq ptr %62, null
  br i1 %63, label %66, label %64

64:                                               ; preds = %60
  %65 = tail call fastcc i64 @animfilter_nla(ptr noundef %1, ptr noundef %2, ptr noundef nonnull %6, i32 noundef %4, ptr noundef %3)
  br label %91

66:                                               ; preds = %60
  %67 = and i32 %57, 33554432
  %68 = icmp eq i32 %67, 0
  br i1 %68, label %72, label %69

69:                                               ; preds = %66
  %70 = load ptr, ptr %10, align 8, !tbaa !57
  %71 = icmp eq ptr %70, null
  br i1 %71, label %91, label %72

72:                                               ; preds = %69, %66
  %73 = tail call fastcc i64 @animfilter_nla(ptr noundef %1, ptr noundef %2, ptr noundef nonnull %6, i32 noundef %4, ptr noundef %3)
  br label %91

74:                                               ; preds = %55
  %75 = and i32 %57, 2
  %76 = icmp eq i32 %75, 0
  br i1 %76, label %85, label %77

77:                                               ; preds = %74
  %78 = getelementptr inbounds %struct.AnimData, ptr %10, i64 0, i32 5
  %79 = load ptr, ptr %78, align 8, !tbaa !245
  %80 = icmp eq ptr %79, null
  br i1 %80, label %91, label %81

81:                                               ; preds = %77
  %82 = getelementptr inbounds %struct.AnimData, ptr %6, i64 0, i32 5
  %83 = load ptr, ptr %82, align 8, !tbaa !245
  %84 = tail call fastcc i64 @animfilter_fcurves(ptr noundef %1, ptr noundef %2, ptr noundef %83, ptr noundef null, i32 noundef %4, ptr noundef %3)
  br label %91

85:                                               ; preds = %74
  %86 = load ptr, ptr %10, align 8, !tbaa !57
  %87 = icmp eq ptr %86, null
  br i1 %87, label %91, label %88

88:                                               ; preds = %85
  %89 = load ptr, ptr %6, align 8, !tbaa !57
  %90 = tail call fastcc i64 @animfilter_action(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %89, i32 noundef %4, ptr noundef %3)
  br label %91

91:                                               ; preds = %42, %45, %54, %15, %69, %72, %64, %85, %88, %77, %81, %34, %37, %8, %5
  %92 = phi i64 [ 0, %5 ], [ 1, %42 ], [ 0, %15 ], [ 0, %37 ], [ 0, %34 ], [ %65, %64 ], [ %73, %72 ], [ 0, %69 ], [ %84, %81 ], [ 0, %77 ], [ %90, %88 ], [ 0, %85 ], [ 0, %8 ], [ 1, %54 ], [ 0, %45 ]
  ret i64 %92
}

; Function Attrs: nounwind uwtable
define internal fastcc i64 @animfilter_nla(ptr noundef %0, ptr nocapture noundef readonly %1, ptr noundef %2, i32 noundef %3, ptr noundef %4) unnamed_addr #0 {
  %6 = and i32 %3, 8
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %46, label %8

8:                                                ; preds = %5
  %9 = getelementptr inbounds %struct.bDopeSheet, ptr %1, i64 0, i32 4
  %10 = load i32, ptr %9, align 8, !tbaa !92
  %11 = and i32 %10, 33554432
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %19, label %13

13:                                               ; preds = %8
  %14 = load ptr, ptr %2, align 8, !tbaa !57
  %15 = icmp ne ptr %14, null
  %16 = and i32 %3, 256
  %17 = icmp eq i32 %16, 0
  %18 = and i1 %17, %15
  br i1 %18, label %22, label %43

19:                                               ; preds = %8
  %20 = and i32 %3, 256
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %22, label %43

22:                                               ; preds = %13, %19
  %23 = and i32 %3, 1073741824
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %25, label %127

25:                                               ; preds = %22
  %26 = icmp eq ptr %2, null
  br i1 %26, label %37, label %27

27:                                               ; preds = %25
  %28 = load ptr, ptr @MEM_callocN, align 8, !tbaa !89
  %29 = tail call ptr %28(i64 noundef 64, ptr noundef nonnull @.str.3) #7
  %30 = getelementptr inbounds %struct.bAnimListElem, ptr %29, i64 0, i32 2
  store ptr %2, ptr %30, align 8, !tbaa !105
  %31 = getelementptr inbounds %struct.bAnimListElem, ptr %29, i64 0, i32 3
  store i32 31, ptr %31, align 8, !tbaa !107
  %32 = getelementptr inbounds %struct.bAnimListElem, ptr %29, i64 0, i32 9
  store ptr %4, ptr %32, align 8, !tbaa !108
  %33 = tail call ptr @BKE_animdata_from_id(ptr noundef %4) #7
  %34 = getelementptr inbounds %struct.bAnimListElem, ptr %29, i64 0, i32 10
  store ptr %33, ptr %34, align 8, !tbaa !109
  %35 = getelementptr inbounds %struct.bAnimListElem, ptr %29, i64 0, i32 8
  store ptr null, ptr %35, align 8, !tbaa !110
  %36 = getelementptr inbounds %struct.bAnimListElem, ptr %29, i64 0, i32 7
  store i16 0, ptr %36, align 2, !tbaa !111
  br label %37

37:                                               ; preds = %25, %27
  %38 = phi ptr [ %29, %27 ], [ null, %25 ]
  %39 = icmp eq ptr %38, null
  br i1 %39, label %43, label %40

40:                                               ; preds = %37
  tail call void @BLI_addtail(ptr noundef %0, ptr noundef nonnull %38) #7
  %41 = load ptr, ptr %2, align 8, !tbaa !57
  %42 = getelementptr inbounds %struct.bAnimListElem, ptr %38, i64 0, i32 2
  store ptr %41, ptr %42, align 8, !tbaa !105
  br label %43

43:                                               ; preds = %37, %40, %19, %13
  %44 = phi i64 [ 0, %19 ], [ 0, %13 ], [ 1, %40 ], [ 0, %37 ]
  %45 = getelementptr inbounds %struct.AnimData, ptr %2, i64 0, i32 3, i32 1
  br label %48

46:                                               ; preds = %5
  %47 = getelementptr inbounds %struct.AnimData, ptr %2, i64 0, i32 3
  br label %48

48:                                               ; preds = %46, %43
  %49 = phi ptr [ %45, %43 ], [ %47, %46 ]
  %50 = phi i64 [ %44, %43 ], [ 0, %46 ]
  %51 = load ptr, ptr %49, align 8, !tbaa !89
  %52 = icmp eq ptr %51, null
  br i1 %52, label %127, label %53

53:                                               ; preds = %48
  %54 = getelementptr inbounds %struct.AnimData, ptr %2, i64 0, i32 7
  %55 = and i32 %3, 256
  %56 = icmp eq i32 %55, 0
  %57 = and i32 %3, 192
  %58 = icmp eq i32 %57, 0
  %59 = and i32 %3, 64
  %60 = icmp eq i32 %59, 0
  %61 = and i32 %3, 128
  %62 = icmp eq i32 %61, 0
  %63 = and i32 %3, 16
  %64 = icmp eq i32 %63, 0
  %65 = and i32 %3, 1073741824
  %66 = icmp eq i32 %65, 0
  br label %67

67:                                               ; preds = %53, %124
  %68 = phi ptr [ %51, %53 ], [ %72, %124 ]
  %69 = phi i64 [ %50, %53 ], [ %125, %124 ]
  %70 = getelementptr inbounds %struct.NlaTrack, ptr %68, i64 0, i32 1
  %71 = select i1 %7, ptr %68, ptr %70
  %72 = load ptr, ptr %71, align 8, !tbaa !89
  %73 = load i32, ptr %54, align 8, !tbaa !144
  %74 = and i32 %73, 4
  %75 = icmp eq i32 %74, 0
  br i1 %75, label %81, label %76

76:                                               ; preds = %67
  %77 = getelementptr inbounds %struct.NlaTrack, ptr %68, i64 0, i32 3
  %78 = load i32, ptr %77, align 8, !tbaa !197
  %79 = and i32 %78, 1025
  %80 = icmp eq i32 %79, 1024
  br i1 %80, label %124, label %81

81:                                               ; preds = %76, %67
  br i1 %56, label %87, label %82

82:                                               ; preds = %81
  %83 = getelementptr inbounds %struct.NlaTrack, ptr %68, i64 0, i32 3
  %84 = load i32, ptr %83, align 8, !tbaa !197
  %85 = and i32 %84, 16
  %86 = icmp eq i32 %85, 0
  br i1 %86, label %87, label %124

87:                                               ; preds = %82, %81
  br i1 %58, label %100, label %88

88:                                               ; preds = %87
  br i1 %60, label %94, label %89

89:                                               ; preds = %88
  %90 = getelementptr inbounds %struct.NlaTrack, ptr %68, i64 0, i32 3
  %91 = load i32, ptr %90, align 8, !tbaa !197
  %92 = and i32 %91, 2
  %93 = icmp eq i32 %92, 0
  br i1 %93, label %94, label %100

94:                                               ; preds = %89, %88
  br i1 %62, label %124, label %95

95:                                               ; preds = %94
  %96 = getelementptr inbounds %struct.NlaTrack, ptr %68, i64 0, i32 3
  %97 = load i32, ptr %96, align 8, !tbaa !197
  %98 = and i32 %97, 2
  %99 = icmp eq i32 %98, 0
  br i1 %99, label %100, label %124

100:                                              ; preds = %95, %89, %87
  br i1 %64, label %106, label %101

101:                                              ; preds = %100
  %102 = getelementptr inbounds %struct.NlaTrack, ptr %68, i64 0, i32 3
  %103 = load i32, ptr %102, align 8, !tbaa !197
  %104 = and i32 %103, 1
  %105 = icmp eq i32 %104, 0
  br i1 %105, label %124, label %106

106:                                              ; preds = %101, %100
  br i1 %66, label %107, label %127

107:                                              ; preds = %106
  %108 = load ptr, ptr @MEM_callocN, align 8, !tbaa !89
  %109 = tail call ptr %108(i64 noundef 64, ptr noundef nonnull @.str.3) #7
  %110 = getelementptr inbounds %struct.bAnimListElem, ptr %109, i64 0, i32 2
  store ptr %68, ptr %110, align 8, !tbaa !105
  %111 = getelementptr inbounds %struct.bAnimListElem, ptr %109, i64 0, i32 3
  store i32 30, ptr %111, align 8, !tbaa !107
  %112 = getelementptr inbounds %struct.bAnimListElem, ptr %109, i64 0, i32 9
  store ptr %4, ptr %112, align 8, !tbaa !108
  %113 = tail call ptr @BKE_animdata_from_id(ptr noundef %4) #7
  %114 = getelementptr inbounds %struct.bAnimListElem, ptr %109, i64 0, i32 10
  store ptr %113, ptr %114, align 8, !tbaa !109
  %115 = getelementptr inbounds %struct.NlaTrack, ptr %68, i64 0, i32 3
  %116 = load i32, ptr %115, align 8, !tbaa !197
  %117 = getelementptr inbounds %struct.bAnimListElem, ptr %109, i64 0, i32 4
  store i32 %116, ptr %117, align 4, !tbaa !127
  %118 = getelementptr inbounds %struct.NlaTrack, ptr %68, i64 0, i32 2
  %119 = getelementptr inbounds %struct.bAnimListElem, ptr %109, i64 0, i32 8
  store ptr %118, ptr %119, align 8, !tbaa !110
  %120 = getelementptr inbounds %struct.bAnimListElem, ptr %109, i64 0, i32 7
  store i16 4, ptr %120, align 2, !tbaa !111
  %121 = icmp eq ptr %109, null
  br i1 %121, label %124, label %122

122:                                              ; preds = %107
  tail call void @BLI_addtail(ptr noundef %0, ptr noundef nonnull %109) #7
  %123 = add i64 %69, 1
  br label %124

124:                                              ; preds = %107, %122, %76, %82, %101, %95, %94
  %125 = phi i64 [ %69, %101 ], [ %69, %95 ], [ %69, %94 ], [ %69, %82 ], [ %69, %76 ], [ %123, %122 ], [ %69, %107 ]
  %126 = icmp eq ptr %72, null
  br i1 %126, label %127, label %67, !llvm.loop !284

127:                                              ; preds = %106, %124, %48, %22
  %128 = phi i64 [ 1, %22 ], [ %50, %48 ], [ %125, %124 ], [ 1, %106 ]
  ret i64 %128
}

; Function Attrs: nounwind uwtable
define internal fastcc i64 @animdata_filter_ds_texture(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4, i32 noundef %5) unnamed_addr #0 {
  %7 = alloca %struct.ListBase, align 8
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %7) #7
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %7, i8 0, i64 16, i1 false)
  %8 = and i32 %5, 2
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %20, label %10

10:                                               ; preds = %6
  %11 = getelementptr inbounds %struct.Tex, ptr %3, i64 0, i32 31
  %12 = load i16, ptr %11, align 2, !tbaa !190
  %13 = and i16 %12, 512
  %14 = icmp ne i16 %13, 0
  %15 = and i32 %5, 8
  %16 = icmp eq i32 %15, 0
  %17 = or i1 %16, %14
  %18 = or i32 %5, 1073741824
  %19 = select i1 %17, i32 %5, i32 %18
  br label %20

20:                                               ; preds = %10, %6
  %21 = phi i32 [ %5, %6 ], [ %19, %10 ]
  %22 = call fastcc i64 @animfilter_block_data(ptr noundef %0, ptr noundef nonnull %7, ptr noundef %2, ptr noundef %3, i32 noundef %21)
  %23 = getelementptr inbounds %struct.Tex, ptr %3, i64 0, i32 52
  %24 = load ptr, ptr %23, align 8, !tbaa !285
  %25 = icmp eq ptr %24, null
  br i1 %25, label %67, label %26

26:                                               ; preds = %20
  %27 = getelementptr inbounds %struct.bDopeSheet, ptr %2, i64 0, i32 4
  %28 = load i32, ptr %27, align 8, !tbaa !92
  %29 = and i32 %28, 524288
  %30 = icmp eq i32 %29, 0
  br i1 %30, label %31, label %67

31:                                               ; preds = %26
  %32 = call fastcc i64 @animdata_filter_ds_nodetree_group(ptr noundef %0, ptr noundef nonnull %7, ptr noundef %2, ptr noundef %3, ptr noundef nonnull %24, i32 noundef %21)
  %33 = getelementptr inbounds %struct.bNodeTree, ptr %24, i64 0, i32 7
  %34 = load ptr, ptr %33, align 8, !tbaa !89
  %35 = icmp eq ptr %34, null
  br i1 %35, label %64, label %36

36:                                               ; preds = %31
  %37 = or i32 %21, -2147483648
  br label %38

38:                                               ; preds = %60, %36
  %39 = phi ptr [ %34, %36 ], [ %62, %60 ]
  %40 = phi i64 [ %32, %36 ], [ %61, %60 ]
  %41 = getelementptr inbounds %struct.bNode, ptr %39, i64 0, i32 8
  %42 = load i16, ptr %41, align 4, !tbaa !250
  %43 = icmp eq i16 %42, 2
  br i1 %43, label %44, label %60

44:                                               ; preds = %38
  %45 = getelementptr inbounds %struct.bNode, ptr %39, i64 0, i32 20
  %46 = load ptr, ptr %45, align 8, !tbaa !251
  %47 = icmp eq ptr %46, null
  br i1 %47, label %60, label %48

48:                                               ; preds = %44
  %49 = load i32, ptr %27, align 8, !tbaa !92
  %50 = and i32 %49, 1
  %51 = icmp eq i32 %50, 0
  br i1 %51, label %57, label %52

52:                                               ; preds = %48
  %53 = getelementptr inbounds %struct.bNode, ptr %39, i64 0, i32 7
  %54 = load i32, ptr %53, align 8, !tbaa !228
  %55 = and i32 %54, 1
  %56 = icmp eq i32 %55, 0
  br i1 %56, label %60, label %57

57:                                               ; preds = %52, %48
  %58 = call fastcc i64 @animdata_filter_ds_nodetree_group(ptr noundef %0, ptr noundef nonnull %7, ptr noundef %2, ptr noundef %3, ptr noundef nonnull %46, i32 noundef %37)
  %59 = add i64 %58, %40
  br label %60

60:                                               ; preds = %57, %52, %44, %38
  %61 = phi i64 [ %40, %52 ], [ %59, %57 ], [ %40, %44 ], [ %40, %38 ]
  %62 = load ptr, ptr %39, align 8, !tbaa !89
  %63 = icmp eq ptr %62, null
  br i1 %63, label %64, label %38, !llvm.loop !252

64:                                               ; preds = %60, %31
  %65 = phi i64 [ %32, %31 ], [ %61, %60 ]
  %66 = add i64 %65, %22
  br label %67

67:                                               ; preds = %64, %26, %20
  %68 = phi i64 [ %22, %26 ], [ %66, %64 ], [ %22, %20 ]
  %69 = icmp eq i64 %68, 0
  br i1 %69, label %120, label %70

70:                                               ; preds = %67
  %71 = and i32 %5, 8
  %72 = icmp eq i32 %71, 0
  br i1 %72, label %117, label %73

73:                                               ; preds = %70
  %74 = and i32 %5, 16
  %75 = icmp eq i32 %74, 0
  br i1 %75, label %85, label %76

76:                                               ; preds = %73
  %77 = getelementptr inbounds %struct.Tex, ptr %3, i64 0, i32 1
  %78 = load ptr, ptr %77, align 8, !tbaa !187
  %79 = icmp eq ptr %78, null
  br i1 %79, label %85, label %80

80:                                               ; preds = %76
  %81 = getelementptr inbounds %struct.AnimData, ptr %78, i64 0, i32 7
  %82 = load i32, ptr %81, align 8, !tbaa !144
  %83 = and i32 %82, 32768
  %84 = icmp eq i32 %83, 0
  br i1 %84, label %117, label %85

85:                                               ; preds = %80, %76, %73
  %86 = and i32 %5, 1073741824
  %87 = icmp eq i32 %86, 0
  br i1 %87, label %88, label %120

88:                                               ; preds = %85
  %89 = icmp eq ptr %3, null
  br i1 %89, label %113, label %90

90:                                               ; preds = %88
  %91 = load ptr, ptr @MEM_callocN, align 8, !tbaa !89
  %92 = call ptr %91(i64 noundef 64, ptr noundef nonnull @.str.3) #7
  %93 = getelementptr inbounds %struct.bAnimListElem, ptr %92, i64 0, i32 2
  store ptr %3, ptr %93, align 8, !tbaa !105
  %94 = getelementptr inbounds %struct.bAnimListElem, ptr %92, i64 0, i32 3
  store i32 21, ptr %94, align 8, !tbaa !107
  %95 = getelementptr inbounds %struct.bAnimListElem, ptr %92, i64 0, i32 9
  store ptr %4, ptr %95, align 8, !tbaa !108
  %96 = call ptr @BKE_animdata_from_id(ptr noundef %4) #7
  %97 = getelementptr inbounds %struct.bAnimListElem, ptr %92, i64 0, i32 10
  store ptr %96, ptr %97, align 8, !tbaa !109
  %98 = getelementptr inbounds %struct.Tex, ptr %3, i64 0, i32 1
  %99 = load ptr, ptr %98, align 8, !tbaa !187
  %100 = getelementptr inbounds %struct.Tex, ptr %3, i64 0, i32 31
  %101 = load i16, ptr %100, align 2, !tbaa !190
  %102 = and i16 %101, 512
  %103 = zext nneg i16 %102 to i32
  %104 = getelementptr inbounds %struct.bAnimListElem, ptr %92, i64 0, i32 4
  store i32 %103, ptr %104, align 4, !tbaa !127
  %105 = icmp eq ptr %99, null
  br i1 %105, label %108, label %106

106:                                              ; preds = %90
  %107 = load ptr, ptr %99, align 8, !tbaa !57
  br label %108

108:                                              ; preds = %106, %90
  %109 = phi ptr [ %107, %106 ], [ null, %90 ]
  %110 = getelementptr inbounds %struct.bAnimListElem, ptr %92, i64 0, i32 8
  store ptr %109, ptr %110, align 8, !tbaa !110
  %111 = getelementptr inbounds %struct.bAnimListElem, ptr %92, i64 0, i32 7
  store i16 8, ptr %111, align 2, !tbaa !111
  %112 = call ptr @BKE_animdata_from_id(ptr noundef nonnull %3) #7
  store ptr %112, ptr %97, align 8, !tbaa !109
  br label %113

113:                                              ; preds = %88, %108
  %114 = phi ptr [ %92, %108 ], [ null, %88 ]
  %115 = icmp eq ptr %114, null
  br i1 %115, label %117, label %116

116:                                              ; preds = %113
  call void @BLI_addtail(ptr noundef %1, ptr noundef nonnull %114) #7
  br label %117

117:                                              ; preds = %113, %116, %80, %70
  %118 = phi i64 [ 0, %80 ], [ 0, %70 ], [ 1, %116 ], [ 0, %113 ]
  call void @BLI_movelisttolist(ptr noundef %1, ptr noundef nonnull %7) #7
  %119 = add i64 %118, %68
  br label %120

120:                                              ; preds = %67, %117, %85
  %121 = phi i64 [ 1, %85 ], [ %119, %117 ], [ 0, %67 ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %7) #7
  ret i64 %121
}

; Function Attrs: nounwind uwtable
define internal fastcc i64 @animdata_filter_ds_nodetree_group(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4, i32 noundef %5) unnamed_addr #0 {
  %7 = alloca %struct.ListBase, align 8
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %7) #7
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %7, i8 0, i64 16, i1 false)
  %8 = and i32 %5, 2
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %20, label %10

10:                                               ; preds = %6
  %11 = getelementptr inbounds %struct.bNodeTree, ptr %4, i64 0, i32 12
  %12 = load i32, ptr %11, align 4, !tbaa !180
  %13 = and i32 %12, 1
  %14 = icmp ne i32 %13, 0
  %15 = and i32 %5, 8
  %16 = icmp eq i32 %15, 0
  %17 = or i1 %16, %14
  %18 = or i32 %5, 1073741824
  %19 = select i1 %17, i32 %5, i32 %18
  br label %20

20:                                               ; preds = %10, %6
  %21 = phi i32 [ %5, %6 ], [ %19, %10 ]
  %22 = call fastcc i64 @animfilter_block_data(ptr noundef %0, ptr noundef nonnull %7, ptr noundef %2, ptr noundef %4, i32 noundef %21)
  %23 = icmp eq i64 %22, 0
  br i1 %23, label %73, label %24

24:                                               ; preds = %20
  %25 = and i32 %5, 8
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %70, label %27

27:                                               ; preds = %24
  %28 = and i32 %5, 16
  %29 = icmp eq i32 %28, 0
  br i1 %29, label %39, label %30

30:                                               ; preds = %27
  %31 = getelementptr inbounds %struct.bNodeTree, ptr %4, i64 0, i32 1
  %32 = load ptr, ptr %31, align 8, !tbaa !177
  %33 = icmp eq ptr %32, null
  br i1 %33, label %39, label %34

34:                                               ; preds = %30
  %35 = getelementptr inbounds %struct.AnimData, ptr %32, i64 0, i32 7
  %36 = load i32, ptr %35, align 8, !tbaa !144
  %37 = and i32 %36, 32768
  %38 = icmp eq i32 %37, 0
  br i1 %38, label %70, label %39

39:                                               ; preds = %34, %30, %27
  %40 = and i32 %5, 1073741824
  %41 = icmp eq i32 %40, 0
  br i1 %41, label %42, label %73

42:                                               ; preds = %39
  %43 = icmp eq ptr %4, null
  br i1 %43, label %66, label %44

44:                                               ; preds = %42
  %45 = load ptr, ptr @MEM_callocN, align 8, !tbaa !89
  %46 = call ptr %45(i64 noundef 64, ptr noundef nonnull @.str.3) #7
  %47 = getelementptr inbounds %struct.bAnimListElem, ptr %46, i64 0, i32 2
  store ptr %4, ptr %47, align 8, !tbaa !105
  %48 = getelementptr inbounds %struct.bAnimListElem, ptr %46, i64 0, i32 3
  store i32 16, ptr %48, align 8, !tbaa !107
  %49 = getelementptr inbounds %struct.bAnimListElem, ptr %46, i64 0, i32 9
  store ptr %3, ptr %49, align 8, !tbaa !108
  %50 = call ptr @BKE_animdata_from_id(ptr noundef %3) #7
  %51 = getelementptr inbounds %struct.bAnimListElem, ptr %46, i64 0, i32 10
  store ptr %50, ptr %51, align 8, !tbaa !109
  %52 = getelementptr inbounds %struct.bNodeTree, ptr %4, i64 0, i32 1
  %53 = load ptr, ptr %52, align 8, !tbaa !177
  %54 = getelementptr inbounds %struct.bNodeTree, ptr %4, i64 0, i32 12
  %55 = load i32, ptr %54, align 4, !tbaa !180
  %56 = and i32 %55, 1
  %57 = getelementptr inbounds %struct.bAnimListElem, ptr %46, i64 0, i32 4
  store i32 %56, ptr %57, align 4, !tbaa !127
  %58 = icmp eq ptr %53, null
  br i1 %58, label %61, label %59

59:                                               ; preds = %44
  %60 = load ptr, ptr %53, align 8, !tbaa !57
  br label %61

61:                                               ; preds = %59, %44
  %62 = phi ptr [ %60, %59 ], [ null, %44 ]
  %63 = getelementptr inbounds %struct.bAnimListElem, ptr %46, i64 0, i32 8
  store ptr %62, ptr %63, align 8, !tbaa !110
  %64 = getelementptr inbounds %struct.bAnimListElem, ptr %46, i64 0, i32 7
  store i16 8, ptr %64, align 2, !tbaa !111
  %65 = call ptr @BKE_animdata_from_id(ptr noundef nonnull %4) #7
  store ptr %65, ptr %51, align 8, !tbaa !109
  br label %66

66:                                               ; preds = %42, %61
  %67 = phi ptr [ %46, %61 ], [ null, %42 ]
  %68 = icmp eq ptr %67, null
  br i1 %68, label %70, label %69

69:                                               ; preds = %66
  call void @BLI_addtail(ptr noundef %1, ptr noundef nonnull %67) #7
  br label %70

70:                                               ; preds = %66, %69, %34, %24
  %71 = phi i64 [ 0, %34 ], [ 0, %24 ], [ 1, %69 ], [ 0, %66 ]
  call void @BLI_movelisttolist(ptr noundef %1, ptr noundef nonnull %7) #7
  %72 = add i64 %71, %22
  br label %73

73:                                               ; preds = %20, %70, %39
  %74 = phi i64 [ 1, %39 ], [ %72, %70 ], [ 0, %20 ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %7) #7
  ret i64 %74
}

declare void @modifiers_foreachIDLink(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal void @animfilter_modifier_idpoin_cb(ptr noundef %0, ptr noundef %1, ptr nocapture noundef readonly %2) #0 {
  %4 = load ptr, ptr %2, align 8, !tbaa !89
  %5 = icmp eq ptr %4, null
  br i1 %5, label %26, label %6

6:                                                ; preds = %3
  %7 = getelementptr inbounds %struct.ID, ptr %4, i64 0, i32 4
  %8 = load i16, ptr %7, align 8, !tbaa !203
  %9 = icmp eq i16 %8, 17748
  br i1 %9, label %10, label %26

10:                                               ; preds = %6
  %11 = getelementptr inbounds %struct.tAnimFilterModifiersContext, ptr %0, i64 0, i32 1
  %12 = load ptr, ptr %11, align 8, !tbaa !267
  %13 = getelementptr inbounds %struct.bDopeSheet, ptr %12, i64 0, i32 4
  %14 = load i32, ptr %13, align 8, !tbaa !92
  %15 = and i32 %14, 1048576
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %17, label %26

17:                                               ; preds = %10
  %18 = load ptr, ptr %0, align 8, !tbaa !265
  %19 = getelementptr inbounds %struct.tAnimFilterModifiersContext, ptr %0, i64 0, i32 2
  %20 = getelementptr inbounds %struct.tAnimFilterModifiersContext, ptr %0, i64 0, i32 4
  %21 = load i32, ptr %20, align 8, !tbaa !268
  %22 = tail call fastcc i64 @animdata_filter_ds_texture(ptr noundef %18, ptr noundef nonnull %19, ptr noundef %12, ptr noundef nonnull %4, ptr noundef %1, i32 noundef %21)
  %23 = getelementptr inbounds %struct.tAnimFilterModifiersContext, ptr %0, i64 0, i32 3
  %24 = load i64, ptr %23, align 8, !tbaa !269
  %25 = add i64 %24, %22
  store i64 %25, ptr %23, align 8, !tbaa !269
  br label %26

26:                                               ; preds = %6, %17, %10, %3
  ret void
}

declare ptr @give_current_material(ptr noundef, i16 noundef signext) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal fastcc i64 @animdata_filter_ds_material(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, i32 noundef %4) unnamed_addr #0 {
  %6 = alloca %struct.ListBase, align 8
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %6) #7
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %6, i8 0, i64 16, i1 false)
  %7 = and i32 %4, 2
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %19, label %9

9:                                                ; preds = %5
  %10 = getelementptr inbounds %struct.Material, ptr %3, i64 0, i32 3
  %11 = load i16, ptr %10, align 2, !tbaa !149
  %12 = and i16 %11, 2
  %13 = icmp ne i16 %12, 0
  %14 = and i32 %4, 8
  %15 = icmp eq i32 %14, 0
  %16 = or i1 %15, %13
  %17 = or i32 %4, 1073741824
  %18 = select i1 %16, i32 %4, i32 %17
  br label %19

19:                                               ; preds = %9, %5
  %20 = phi i32 [ %4, %5 ], [ %18, %9 ]
  %21 = call fastcc i64 @animfilter_block_data(ptr noundef %0, ptr noundef nonnull %6, ptr noundef %2, ptr noundef %3, i32 noundef %20)
  %22 = getelementptr inbounds %struct.bDopeSheet, ptr %2, i64 0, i32 4
  %23 = load i32, ptr %22, align 8, !tbaa !92
  %24 = and i32 %23, 1048576
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %26, label %67

26:                                               ; preds = %19
  %27 = icmp eq ptr %3, null
  br i1 %27, label %64, label %28

28:                                               ; preds = %26
  %29 = getelementptr inbounds %struct.ID, ptr %3, i64 0, i32 4
  %30 = load i16, ptr %29, align 8, !tbaa !203
  switch i16 %30, label %37 [
    i16 16717, label %31
    i16 16716, label %33
    i16 20311, label %35
  ]

31:                                               ; preds = %28
  %32 = getelementptr inbounds %struct.Material, ptr %3, i64 0, i32 102
  br label %43

33:                                               ; preds = %28
  %34 = getelementptr inbounds %struct.Lamp, ptr %3, i64 0, i32 69
  br label %43

35:                                               ; preds = %28
  %36 = getelementptr inbounds %struct.World, ptr %3, i64 0, i32 70
  br label %43

37:                                               ; preds = %28
  %38 = load i32, ptr getelementptr inbounds (%struct.Global, ptr @G, i64 0, i32 16), align 4, !tbaa !204
  %39 = and i32 %38, 1
  %40 = icmp eq i32 %39, 0
  br i1 %40, label %64, label %41

41:                                               ; preds = %37
  %42 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.12, ptr noundef nonnull %29)
  br label %64

43:                                               ; preds = %35, %33, %31
  %44 = phi ptr [ %36, %35 ], [ %34, %33 ], [ %32, %31 ]
  br label %45

45:                                               ; preds = %60, %43
  %46 = phi i64 [ 0, %43 ], [ %62, %60 ]
  %47 = phi i64 [ 0, %43 ], [ %61, %60 ]
  %48 = getelementptr inbounds ptr, ptr %44, i64 %46
  %49 = load ptr, ptr %48, align 8, !tbaa !89
  %50 = icmp eq ptr %49, null
  br i1 %50, label %54, label %51

51:                                               ; preds = %45
  %52 = getelementptr inbounds %struct.MTex, ptr %49, i64 0, i32 5
  %53 = load ptr, ptr %52, align 8, !tbaa !246
  br label %54

54:                                               ; preds = %51, %45
  %55 = phi ptr [ %53, %51 ], [ null, %45 ]
  %56 = icmp eq ptr %55, null
  br i1 %56, label %60, label %57

57:                                               ; preds = %54
  %58 = call fastcc i64 @animdata_filter_ds_texture(ptr noundef %0, ptr noundef nonnull %6, ptr noundef %2, ptr noundef nonnull %55, ptr noundef nonnull %3, i32 noundef %20)
  %59 = add i64 %58, %47
  br label %60

60:                                               ; preds = %57, %54
  %61 = phi i64 [ %59, %57 ], [ %47, %54 ]
  %62 = add nuw nsw i64 %46, 1
  %63 = icmp eq i64 %62, 18
  br i1 %63, label %64, label %45, !llvm.loop !248

64:                                               ; preds = %60, %26, %37, %41
  %65 = phi i64 [ 0, %26 ], [ 0, %41 ], [ 0, %37 ], [ %61, %60 ]
  %66 = add i64 %65, %21
  br label %67

67:                                               ; preds = %64, %19
  %68 = phi i64 [ %21, %19 ], [ %66, %64 ]
  %69 = getelementptr inbounds %struct.Material, ptr %3, i64 0, i32 103
  %70 = load ptr, ptr %69, align 8, !tbaa !286
  %71 = icmp eq ptr %70, null
  br i1 %71, label %112, label %72

72:                                               ; preds = %67
  %73 = load i32, ptr %22, align 8, !tbaa !92
  %74 = and i32 %73, 524288
  %75 = icmp eq i32 %74, 0
  br i1 %75, label %76, label %112

76:                                               ; preds = %72
  %77 = call fastcc i64 @animdata_filter_ds_nodetree_group(ptr noundef %0, ptr noundef nonnull %6, ptr noundef %2, ptr noundef %3, ptr noundef nonnull %70, i32 noundef %20)
  %78 = getelementptr inbounds %struct.bNodeTree, ptr %70, i64 0, i32 7
  %79 = load ptr, ptr %78, align 8, !tbaa !89
  %80 = icmp eq ptr %79, null
  br i1 %80, label %109, label %81

81:                                               ; preds = %76
  %82 = or i32 %20, -2147483648
  br label %83

83:                                               ; preds = %105, %81
  %84 = phi ptr [ %79, %81 ], [ %107, %105 ]
  %85 = phi i64 [ %77, %81 ], [ %106, %105 ]
  %86 = getelementptr inbounds %struct.bNode, ptr %84, i64 0, i32 8
  %87 = load i16, ptr %86, align 4, !tbaa !250
  %88 = icmp eq i16 %87, 2
  br i1 %88, label %89, label %105

89:                                               ; preds = %83
  %90 = getelementptr inbounds %struct.bNode, ptr %84, i64 0, i32 20
  %91 = load ptr, ptr %90, align 8, !tbaa !251
  %92 = icmp eq ptr %91, null
  br i1 %92, label %105, label %93

93:                                               ; preds = %89
  %94 = load i32, ptr %22, align 8, !tbaa !92
  %95 = and i32 %94, 1
  %96 = icmp eq i32 %95, 0
  br i1 %96, label %102, label %97

97:                                               ; preds = %93
  %98 = getelementptr inbounds %struct.bNode, ptr %84, i64 0, i32 7
  %99 = load i32, ptr %98, align 8, !tbaa !228
  %100 = and i32 %99, 1
  %101 = icmp eq i32 %100, 0
  br i1 %101, label %105, label %102

102:                                              ; preds = %97, %93
  %103 = call fastcc i64 @animdata_filter_ds_nodetree_group(ptr noundef %0, ptr noundef nonnull %6, ptr noundef %2, ptr noundef %3, ptr noundef nonnull %91, i32 noundef %82)
  %104 = add i64 %103, %85
  br label %105

105:                                              ; preds = %102, %97, %89, %83
  %106 = phi i64 [ %85, %97 ], [ %104, %102 ], [ %85, %89 ], [ %85, %83 ]
  %107 = load ptr, ptr %84, align 8, !tbaa !89
  %108 = icmp eq ptr %107, null
  br i1 %108, label %109, label %83, !llvm.loop !252

109:                                              ; preds = %105, %76
  %110 = phi i64 [ %77, %76 ], [ %106, %105 ]
  %111 = add i64 %110, %68
  br label %112

112:                                              ; preds = %109, %72, %67
  %113 = phi i64 [ %68, %72 ], [ %111, %109 ], [ %68, %67 ]
  %114 = icmp eq i64 %113, 0
  br i1 %114, label %165, label %115

115:                                              ; preds = %112
  %116 = and i32 %4, 8
  %117 = icmp eq i32 %116, 0
  br i1 %117, label %162, label %118

118:                                              ; preds = %115
  %119 = and i32 %4, 16
  %120 = icmp eq i32 %119, 0
  br i1 %120, label %130, label %121

121:                                              ; preds = %118
  %122 = getelementptr inbounds %struct.Material, ptr %3, i64 0, i32 1
  %123 = load ptr, ptr %122, align 8, !tbaa !145
  %124 = icmp eq ptr %123, null
  br i1 %124, label %130, label %125

125:                                              ; preds = %121
  %126 = getelementptr inbounds %struct.AnimData, ptr %123, i64 0, i32 7
  %127 = load i32, ptr %126, align 8, !tbaa !144
  %128 = and i32 %127, 32768
  %129 = icmp eq i32 %128, 0
  br i1 %129, label %162, label %130

130:                                              ; preds = %125, %121, %118
  %131 = and i32 %4, 1073741824
  %132 = icmp eq i32 %131, 0
  br i1 %132, label %133, label %165

133:                                              ; preds = %130
  %134 = icmp eq ptr %3, null
  br i1 %134, label %158, label %135

135:                                              ; preds = %133
  %136 = load ptr, ptr @MEM_callocN, align 8, !tbaa !89
  %137 = call ptr %136(i64 noundef 64, ptr noundef nonnull @.str.3) #7
  %138 = getelementptr inbounds %struct.bAnimListElem, ptr %137, i64 0, i32 2
  store ptr %3, ptr %138, align 8, !tbaa !105
  %139 = getelementptr inbounds %struct.bAnimListElem, ptr %137, i64 0, i32 3
  store i32 10, ptr %139, align 8, !tbaa !107
  %140 = getelementptr inbounds %struct.bAnimListElem, ptr %137, i64 0, i32 9
  store ptr %3, ptr %140, align 8, !tbaa !108
  %141 = call ptr @BKE_animdata_from_id(ptr noundef nonnull %3) #7
  %142 = getelementptr inbounds %struct.bAnimListElem, ptr %137, i64 0, i32 10
  store ptr %141, ptr %142, align 8, !tbaa !109
  %143 = getelementptr inbounds %struct.Material, ptr %3, i64 0, i32 1
  %144 = load ptr, ptr %143, align 8, !tbaa !145
  %145 = getelementptr inbounds %struct.Material, ptr %3, i64 0, i32 3
  %146 = load i16, ptr %145, align 2, !tbaa !149
  %147 = and i16 %146, 2
  %148 = zext nneg i16 %147 to i32
  %149 = getelementptr inbounds %struct.bAnimListElem, ptr %137, i64 0, i32 4
  store i32 %148, ptr %149, align 4, !tbaa !127
  %150 = icmp eq ptr %144, null
  br i1 %150, label %153, label %151

151:                                              ; preds = %135
  %152 = load ptr, ptr %144, align 8, !tbaa !57
  br label %153

153:                                              ; preds = %151, %135
  %154 = phi ptr [ %152, %151 ], [ null, %135 ]
  %155 = getelementptr inbounds %struct.bAnimListElem, ptr %137, i64 0, i32 8
  store ptr %154, ptr %155, align 8, !tbaa !110
  %156 = getelementptr inbounds %struct.bAnimListElem, ptr %137, i64 0, i32 7
  store i16 8, ptr %156, align 2, !tbaa !111
  %157 = call ptr @BKE_animdata_from_id(ptr noundef nonnull %3) #7
  store ptr %157, ptr %142, align 8, !tbaa !109
  br label %158

158:                                              ; preds = %133, %153
  %159 = phi ptr [ %137, %153 ], [ null, %133 ]
  %160 = icmp eq ptr %159, null
  br i1 %160, label %162, label %161

161:                                              ; preds = %158
  call void @BLI_addtail(ptr noundef %1, ptr noundef nonnull %159) #7
  br label %162

162:                                              ; preds = %158, %161, %125, %115
  %163 = phi i64 [ 0, %125 ], [ 0, %115 ], [ 1, %161 ], [ 0, %158 ]
  call void @BLI_movelisttolist(ptr noundef %1, ptr noundef nonnull %6) #7
  %164 = add i64 %163, %113
  br label %165

165:                                              ; preds = %112, %162, %130
  %166 = phi i64 [ 1, %130 ], [ %164, %162 ], [ 0, %112 ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %6) #7
  ret i64 %166
}

declare ptr @give_node_material(ptr noundef) local_unnamed_addr #2

declare void @BLI_freelinkN(ptr noundef, ptr noundef) local_unnamed_addr #2

declare ptr @BLI_gset_ptr_new(ptr noundef) local_unnamed_addr #2

declare zeroext i8 @BLI_gset_add(ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @BLI_gset_free(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nofree nounwind
declare noundef i32 @puts(ptr nocapture noundef readonly) local_unnamed_addr #6

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #4 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nofree nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nofree nounwind }
attributes #7 = { nounwind }
attributes #8 = { nounwind willreturn memory(read) }

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
!34 = !{!35, !36, i64 24}
!35 = !{!"bAnimContext", !36, i64 0, !39, i64 8, !39, i64 10, !39, i64 12, !39, i64 14, !36, i64 16, !36, i64 24, !36, i64 32, !36, i64 40, !36, i64 48, !36, i64 56, !36, i64 64, !36, i64 72}
!36 = !{!"any pointer", !37, i64 0}
!37 = !{!"omnipotent char", !38, i64 0}
!38 = !{!"Simple C/C++ TBAA"}
!39 = !{!"short", !37, i64 0}
!40 = !{!35, !39, i64 12}
!41 = !{!35, !36, i64 40}
!42 = !{!43, !37, i64 336}
!43 = !{!"SpaceAction", !36, i64 0, !36, i64 8, !44, i64 16, !45, i64 32, !46, i64 36, !37, i64 40, !47, i64 56, !36, i64 216, !50, i64 224, !37, i64 336, !37, i64 337, !39, i64 338, !46, i64 340}
!44 = !{!"ListBase", !36, i64 0, !36, i64 8}
!45 = !{!"int", !37, i64 0}
!46 = !{!"float", !37, i64 0}
!47 = !{!"View2D", !48, i64 0, !48, i64 16, !49, i64 32, !49, i64 48, !49, i64 64, !37, i64 80, !37, i64 88, !46, i64 96, !46, i64 100, !39, i64 104, !39, i64 106, !39, i64 108, !39, i64 110, !39, i64 112, !39, i64 114, !39, i64 116, !39, i64 118, !39, i64 120, !39, i64 122, !39, i64 124, !39, i64 126, !36, i64 128, !45, i64 136, !45, i64 140, !36, i64 144, !36, i64 152}
!48 = !{!"rctf", !46, i64 0, !46, i64 4, !46, i64 8, !46, i64 12}
!49 = !{!"rcti", !45, i64 0, !45, i64 4, !45, i64 8, !45, i64 12}
!50 = !{!"bDopeSheet", !36, i64 0, !44, i64 8, !36, i64 24, !37, i64 32, !45, i64 96, !45, i64 100, !45, i64 104, !45, i64 108}
!51 = !{!35, !36, i64 56}
!52 = !{!53, !36, i64 120}
!53 = !{!"Object", !54, i64 0, !36, i64 120, !36, i64 128, !39, i64 136, !39, i64 138, !45, i64 140, !45, i64 144, !45, i64 148, !37, i64 152, !36, i64 216, !36, i64 224, !36, i64 232, !36, i64 240, !36, i64 248, !36, i64 256, !36, i64 264, !36, i64 272, !36, i64 280, !36, i64 288, !36, i64 296, !36, i64 304, !55, i64 312, !36, i64 360, !44, i64 368, !44, i64 384, !44, i64 400, !44, i64 416, !45, i64 432, !45, i64 436, !36, i64 440, !36, i64 448, !45, i64 456, !45, i64 460, !37, i64 464, !37, i64 476, !37, i64 488, !37, i64 500, !37, i64 512, !37, i64 524, !37, i64 536, !37, i64 548, !37, i64 560, !37, i64 576, !37, i64 592, !37, i64 604, !46, i64 616, !46, i64 620, !37, i64 624, !37, i64 688, !37, i64 752, !37, i64 816, !37, i64 880, !45, i64 944, !39, i64 948, !39, i64 950, !39, i64 952, !39, i64 954, !39, i64 956, !39, i64 958, !39, i64 960, !39, i64 962, !39, i64 964, !37, i64 966, !37, i64 967, !45, i64 968, !45, i64 972, !45, i64 976, !45, i64 980, !45, i64 984, !46, i64 988, !46, i64 992, !46, i64 996, !46, i64 1000, !46, i64 1004, !46, i64 1008, !46, i64 1012, !46, i64 1016, !46, i64 1020, !46, i64 1024, !46, i64 1028, !46, i64 1032, !39, i64 1036, !39, i64 1038, !39, i64 1040, !37, i64 1042, !37, i64 1043, !39, i64 1044, !37, i64 1046, !37, i64 1047, !46, i64 1048, !46, i64 1052, !44, i64 1056, !44, i64 1072, !44, i64 1088, !44, i64 1104, !46, i64 1120, !39, i64 1124, !39, i64 1126, !37, i64 1128, !45, i64 1144, !45, i64 1148, !36, i64 1152, !37, i64 1160, !37, i64 1161, !39, i64 1162, !37, i64 1164, !44, i64 1176, !44, i64 1192, !44, i64 1208, !44, i64 1224, !36, i64 1240, !36, i64 1248, !36, i64 1256, !37, i64 1264, !37, i64 1265, !39, i64 1266, !46, i64 1268, !36, i64 1272, !36, i64 1280, !36, i64 1288, !36, i64 1296, !56, i64 1304, !56, i64 1312, !45, i64 1320, !45, i64 1324, !44, i64 1328, !44, i64 1344, !36, i64 1360, !36, i64 1368, !36, i64 1376, !37, i64 1384, !36, i64 1392, !44, i64 1400, !36, i64 1416}
!54 = !{!"ID", !36, i64 0, !36, i64 8, !36, i64 16, !36, i64 24, !37, i64 32, !39, i64 98, !45, i64 100, !45, i64 104, !45, i64 108, !36, i64 112}
!55 = !{!"bAnimVizSettings", !45, i64 0, !45, i64 4, !45, i64 8, !45, i64 12, !39, i64 16, !39, i64 18, !39, i64 20, !39, i64 22, !39, i64 24, !39, i64 26, !39, i64 28, !39, i64 30, !45, i64 32, !45, i64 36, !45, i64 40, !45, i64 44}
!56 = !{!"long", !37, i64 0}
!57 = !{!58, !36, i64 0}
!58 = !{!"AnimData", !36, i64 0, !36, i64 8, !36, i64 16, !44, i64 24, !36, i64 40, !44, i64 48, !44, i64 64, !45, i64 80, !45, i64 84, !39, i64 88, !39, i64 90, !46, i64 92}
!59 = !{!43, !36, i64 216}
!60 = !{!35, !39, i64 8}
!61 = !{!35, !36, i64 0}
!62 = !{!35, !39, i64 10}
!63 = !{!35, !36, i64 48}
!64 = !{!65, !36, i64 168}
!65 = !{!"Scene", !54, i64 0, !36, i64 120, !36, i64 128, !36, i64 136, !36, i64 144, !44, i64 152, !36, i64 168, !36, i64 176, !37, i64 184, !37, i64 196, !37, i64 208, !37, i64 220, !45, i64 232, !45, i64 236, !45, i64 240, !39, i64 244, !37, i64 246, !37, i64 247, !36, i64 248, !36, i64 256, !36, i64 264, !36, i64 272, !66, i64 280, !73, i64 4264, !44, i64 4296, !44, i64 4312, !36, i64 4328, !36, i64 4336, !36, i64 4344, !36, i64 4352, !36, i64 4360, !36, i64 4368, !39, i64 4376, !39, i64 4378, !45, i64 4380, !44, i64 4384, !74, i64 4400, !75, i64 4416, !78, i64 4600, !36, i64 4608, !79, i64 4616, !36, i64 4640, !56, i64 4648, !56, i64 4656, !68, i64 4664, !69, i64 4824, !80, i64 4888, !36, i64 4952}
!66 = !{!"RenderData", !67, i64 0, !36, i64 248, !36, i64 256, !70, i64 264, !71, i64 328, !45, i64 400, !45, i64 404, !45, i64 408, !46, i64 412, !45, i64 416, !45, i64 420, !45, i64 424, !45, i64 428, !39, i64 432, !39, i64 434, !46, i64 436, !46, i64 440, !46, i64 444, !46, i64 448, !46, i64 452, !39, i64 456, !39, i64 458, !39, i64 460, !39, i64 462, !39, i64 464, !39, i64 466, !45, i64 468, !39, i64 472, !39, i64 474, !39, i64 476, !39, i64 478, !39, i64 480, !39, i64 482, !45, i64 484, !45, i64 488, !39, i64 492, !39, i64 494, !45, i64 496, !45, i64 500, !39, i64 504, !39, i64 506, !39, i64 508, !39, i64 510, !39, i64 512, !37, i64 514, !37, i64 515, !45, i64 516, !45, i64 520, !45, i64 524, !39, i64 528, !39, i64 530, !39, i64 532, !39, i64 534, !39, i64 536, !39, i64 538, !39, i64 540, !39, i64 542, !48, i64 544, !48, i64 560, !49, i64 576, !44, i64 592, !39, i64 608, !39, i64 610, !46, i64 612, !46, i64 616, !46, i64 620, !46, i64 624, !45, i64 628, !46, i64 632, !46, i64 636, !46, i64 640, !46, i64 644, !39, i64 648, !39, i64 650, !39, i64 652, !39, i64 654, !39, i64 656, !39, i64 658, !46, i64 660, !46, i64 664, !39, i64 668, !39, i64 670, !46, i64 672, !46, i64 676, !37, i64 680, !45, i64 1704, !39, i64 1708, !39, i64 1710, !37, i64 1712, !37, i64 2480, !37, i64 2496, !37, i64 2512, !37, i64 2513, !37, i64 2514, !37, i64 2515, !45, i64 2520, !39, i64 2524, !39, i64 2526, !46, i64 2528, !46, i64 2532, !39, i64 2536, !39, i64 2538, !46, i64 2540, !39, i64 2544, !39, i64 2546, !45, i64 2548, !39, i64 2552, !39, i64 2554, !39, i64 2556, !39, i64 2558, !46, i64 2560, !46, i64 2564, !36, i64 2568, !45, i64 2576, !46, i64 2580, !37, i64 2584, !72, i64 2616, !45, i64 3976, !45, i64 3980}
!67 = !{!"ImageFormatData", !37, i64 0, !37, i64 1, !37, i64 2, !37, i64 3, !37, i64 4, !37, i64 5, !37, i64 6, !37, i64 7, !39, i64 8, !39, i64 10, !46, i64 12, !37, i64 16, !37, i64 17, !37, i64 18, !68, i64 24, !69, i64 184}
!68 = !{!"ColorManagedViewSettings", !45, i64 0, !45, i64 4, !37, i64 8, !37, i64 72, !46, i64 136, !46, i64 140, !36, i64 144, !36, i64 152}
!69 = !{!"ColorManagedDisplaySettings", !37, i64 0}
!70 = !{!"QuicktimeCodecSettings", !45, i64 0, !45, i64 4, !45, i64 8, !45, i64 12, !45, i64 16, !45, i64 20, !45, i64 24, !45, i64 28, !45, i64 32, !45, i64 36, !45, i64 40, !45, i64 44, !39, i64 48, !39, i64 50, !45, i64 52, !45, i64 56, !45, i64 60}
!71 = !{!"FFMpegCodecData", !45, i64 0, !45, i64 4, !45, i64 8, !45, i64 12, !45, i64 16, !45, i64 20, !45, i64 24, !45, i64 28, !46, i64 32, !45, i64 36, !45, i64 40, !45, i64 44, !45, i64 48, !45, i64 52, !45, i64 56, !45, i64 60, !36, i64 64}
!72 = !{!"BakeData", !67, i64 0, !37, i64 248, !39, i64 1272, !39, i64 1274, !39, i64 1276, !39, i64 1278, !46, i64 1280, !46, i64 1284, !37, i64 1288, !37, i64 1291, !37, i64 1292, !37, i64 1293, !37, i64 1296}
!73 = !{!"AudioData", !45, i64 0, !46, i64 4, !46, i64 8, !46, i64 12, !45, i64 16, !39, i64 20, !39, i64 22, !46, i64 24, !46, i64 28}
!74 = !{!"GameFraming", !37, i64 0, !37, i64 12, !37, i64 13, !37, i64 14, !37, i64 15}
!75 = !{!"GameData", !74, i64 0, !39, i64 16, !39, i64 18, !39, i64 20, !39, i64 22, !39, i64 24, !39, i64 26, !39, i64 28, !39, i64 30, !39, i64 32, !37, i64 34, !76, i64 40, !39, i64 64, !39, i64 66, !46, i64 68, !77, i64 72, !46, i64 128, !46, i64 132, !45, i64 136, !39, i64 140, !39, i64 142, !39, i64 144, !39, i64 146, !39, i64 148, !39, i64 150, !39, i64 152, !39, i64 154, !39, i64 156, !39, i64 158, !39, i64 160, !39, i64 162, !46, i64 164, !46, i64 168, !46, i64 172, !46, i64 176, !46, i64 180}
!76 = !{!"GameDome", !39, i64 0, !39, i64 2, !39, i64 4, !39, i64 6, !46, i64 8, !46, i64 12, !36, i64 16}
!77 = !{!"RecastData", !46, i64 0, !46, i64 4, !46, i64 8, !46, i64 12, !46, i64 16, !46, i64 20, !46, i64 24, !46, i64 28, !46, i64 32, !46, i64 36, !45, i64 40, !46, i64 44, !46, i64 48, !39, i64 52, !39, i64 54}
!78 = !{!"UnitSettings", !46, i64 0, !37, i64 4, !37, i64 5, !39, i64 6}
!79 = !{!"PhysicsSettings", !37, i64 0, !45, i64 12, !45, i64 16, !45, i64 20}
!80 = !{!"ColorManagedColorspaceSettings", !37, i64 0}
!81 = !{!82, !36, i64 32}
!82 = !{!"Base", !36, i64 0, !36, i64 8, !45, i64 16, !45, i64 20, !45, i64 24, !39, i64 28, !39, i64 30, !36, i64 32}
!83 = !{!84, !39, i64 208}
!84 = !{!"Key", !54, i64 0, !36, i64 120, !36, i64 128, !37, i64 136, !45, i64 168, !45, i64 172, !44, i64 176, !36, i64 192, !36, i64 200, !39, i64 208, !39, i64 210, !39, i64 212, !39, i64 214, !46, i64 216, !45, i64 220}
!85 = !{!84, !36, i64 120}
!86 = !{!43, !36, i64 224}
!87 = !{!88, !36, i64 216}
!88 = !{!"SpaceIpo", !36, i64 0, !36, i64 8, !44, i64 16, !45, i64 32, !46, i64 36, !37, i64 40, !47, i64 56, !36, i64 216, !44, i64 224, !39, i64 240, !39, i64 242, !45, i64 244, !46, i64 248, !45, i64 252}
!89 = !{!36, !36, i64 0}
!90 = !{!50, !36, i64 0}
!91 = !{!88, !45, i64 244}
!92 = !{!50, !45, i64 96}
!93 = !{!88, !39, i64 240}
!94 = !{!95, !36, i64 64}
!95 = !{!"SpaceNla", !36, i64 0, !36, i64 8, !44, i64 16, !45, i64 32, !46, i64 36, !37, i64 40, !39, i64 56, !39, i64 58, !45, i64 60, !36, i64 64, !47, i64 72}
!96 = !{!35, !36, i64 64}
!97 = !{!35, !36, i64 16}
!98 = !{!35, !36, i64 32}
!99 = !{!100, !37, i64 72}
!100 = !{!"ScrArea", !36, i64 0, !36, i64 8, !36, i64 16, !36, i64 24, !36, i64 32, !36, i64 40, !36, i64 48, !49, i64 56, !37, i64 72, !37, i64 73, !39, i64 74, !39, i64 76, !39, i64 78, !39, i64 80, !39, i64 82, !39, i64 84, !37, i64 86, !37, i64 87, !36, i64 88, !44, i64 96, !44, i64 112, !44, i64 128, !44, i64 144}
!101 = !{!102, !39, i64 214}
!102 = !{!"ARegion", !36, i64 0, !36, i64 8, !47, i64 16, !49, i64 176, !49, i64 192, !39, i64 208, !39, i64 210, !39, i64 212, !39, i64 214, !39, i64 216, !39, i64 218, !46, i64 220, !39, i64 224, !39, i64 226, !39, i64 228, !39, i64 230, !39, i64 232, !39, i64 234, !39, i64 236, !39, i64 238, !36, i64 240, !44, i64 248, !44, i64 264, !44, i64 280, !44, i64 296, !44, i64 312, !44, i64 328, !44, i64 344, !36, i64 360, !36, i64 368, !36, i64 376}
!103 = !{!35, !39, i64 14}
!104 = !{i8 0, i8 2}
!105 = !{!106, !36, i64 16}
!106 = !{!"bAnimListElem", !36, i64 0, !36, i64 8, !36, i64 16, !45, i64 24, !45, i64 28, !45, i64 32, !39, i64 36, !39, i64 38, !36, i64 40, !36, i64 48, !36, i64 56}
!107 = !{!106, !45, i64 24}
!108 = !{!106, !36, i64 48}
!109 = !{!106, !36, i64 56}
!110 = !{!106, !36, i64 40}
!111 = !{!106, !39, i64 38}
!112 = !{!50, !45, i64 100}
!113 = !{!84, !36, i64 176}
!114 = !{!115, !39, i64 30}
!115 = !{!"KeyBlock", !36, i64 0, !36, i64 8, !46, i64 16, !46, i64 20, !39, i64 24, !39, i64 26, !39, i64 28, !39, i64 30, !45, i64 32, !45, i64 36, !36, i64 40, !37, i64 48, !37, i64 112, !46, i64 176, !46, i64 180}
!116 = distinct !{!116, !117, !118}
!117 = !{!"llvm.loop.mustprogress"}
!118 = !{!"llvm.loop.unroll.disable"}
!119 = !{!120, !36, i64 0}
!120 = !{!"Global", !36, i64 0, !37, i64 8, !37, i64 1032, !37, i64 2056, !37, i64 2057, !37, i64 2058, !44, i64 2064, !37, i64 2080, !37, i64 2081, !37, i64 2082, !39, i64 2084, !39, i64 2086, !39, i64 2088, !37, i64 2090, !39, i64 2092, !45, i64 2096, !45, i64 2100, !37, i64 2104, !45, i64 2108, !45, i64 2112, !37, i64 2116}
!121 = !{!54, !45, i64 100}
!122 = !{!54, !39, i64 98}
!123 = !{!124, !45, i64 136}
!124 = !{!"bGPdata", !54, i64 0, !44, i64 120, !45, i64 136, !39, i64 140, !39, i64 142, !36, i64 144}
!125 = !{!126, !45, i64 40}
!126 = !{!"bGPDlayer", !36, i64 0, !36, i64 8, !44, i64 16, !36, i64 32, !45, i64 40, !39, i64 44, !39, i64 46, !37, i64 48, !37, i64 64}
!127 = !{!106, !45, i64 28}
!128 = distinct !{!128, !117, !118}
!129 = distinct !{!129, !117, !118}
!130 = !{!131, !45, i64 160}
!131 = !{!"Mask", !54, i64 0, !36, i64 120, !44, i64 128, !45, i64 144, !45, i64 148, !45, i64 152, !45, i64 156, !45, i64 160, !45, i64 164}
!132 = !{!133, !37, i64 142}
!133 = !{!"MaskLayer", !36, i64 0, !36, i64 8, !37, i64 16, !44, i64 80, !44, i64 96, !36, i64 112, !36, i64 120, !46, i64 128, !37, i64 132, !37, i64 133, !37, i64 134, !37, i64 135, !37, i64 142, !37, i64 143}
!134 = distinct !{!134, !117, !118}
!135 = distinct !{!135, !117, !118}
!136 = !{!44, !36, i64 0}
!137 = !{!106, !36, i64 0}
!138 = distinct !{!138, !117, !118}
!139 = distinct !{!139, !117, !118}
!140 = !{!65, !39, i64 244}
!141 = !{!53, !39, i64 948}
!142 = !{!143, !45, i64 184}
!143 = !{!"bAction", !54, i64 0, !44, i64 120, !44, i64 136, !44, i64 152, !44, i64 168, !45, i64 184, !45, i64 188, !45, i64 192, !45, i64 196}
!144 = !{!58, !45, i64 80}
!145 = !{!146, !36, i64 120}
!146 = !{!"Material", !54, i64 0, !36, i64 120, !39, i64 128, !39, i64 130, !46, i64 132, !46, i64 136, !46, i64 140, !46, i64 144, !46, i64 148, !46, i64 152, !46, i64 156, !46, i64 160, !46, i64 164, !46, i64 168, !46, i64 172, !46, i64 176, !46, i64 180, !46, i64 184, !46, i64 188, !46, i64 192, !46, i64 196, !46, i64 200, !46, i64 204, !46, i64 208, !46, i64 212, !46, i64 216, !46, i64 220, !147, i64 224, !148, i64 312, !46, i64 328, !46, i64 332, !46, i64 336, !46, i64 340, !46, i64 344, !46, i64 348, !46, i64 352, !39, i64 356, !39, i64 358, !39, i64 360, !37, i64 362, !37, i64 363, !46, i64 364, !46, i64 368, !39, i64 372, !39, i64 374, !46, i64 376, !46, i64 380, !46, i64 384, !46, i64 388, !39, i64 392, !39, i64 394, !45, i64 396, !45, i64 400, !45, i64 404, !45, i64 408, !39, i64 412, !39, i64 414, !39, i64 416, !39, i64 418, !46, i64 420, !46, i64 424, !46, i64 428, !46, i64 432, !46, i64 436, !46, i64 440, !46, i64 444, !46, i64 448, !46, i64 452, !46, i64 456, !37, i64 460, !46, i64 524, !46, i64 528, !46, i64 532, !45, i64 536, !37, i64 540, !37, i64 541, !37, i64 542, !37, i64 543, !39, i64 544, !39, i64 546, !39, i64 548, !37, i64 550, !37, i64 551, !39, i64 552, !39, i64 554, !46, i64 556, !46, i64 560, !37, i64 564, !46, i64 580, !46, i64 584, !39, i64 588, !39, i64 590, !36, i64 592, !36, i64 600, !37, i64 608, !37, i64 609, !37, i64 610, !37, i64 611, !39, i64 612, !39, i64 614, !46, i64 616, !46, i64 620, !37, i64 624, !36, i64 768, !36, i64 776, !36, i64 784, !36, i64 792, !46, i64 800, !46, i64 804, !46, i64 808, !46, i64 812, !46, i64 816, !39, i64 820, !39, i64 822, !37, i64 824, !37, i64 836, !46, i64 848, !46, i64 852, !46, i64 856, !46, i64 860, !46, i64 864, !46, i64 868, !46, i64 872, !39, i64 876, !39, i64 878, !45, i64 880, !39, i64 884, !39, i64 886, !37, i64 888, !39, i64 904, !39, i64 906, !39, i64 908, !39, i64 910, !39, i64 912, !37, i64 914, !36, i64 920, !44, i64 928}
!147 = !{!"VolumeSettings", !46, i64 0, !46, i64 4, !46, i64 8, !46, i64 12, !37, i64 16, !37, i64 28, !37, i64 40, !46, i64 52, !46, i64 56, !46, i64 60, !39, i64 64, !39, i64 66, !39, i64 68, !39, i64 70, !46, i64 72, !46, i64 76, !46, i64 80, !46, i64 84}
!148 = !{!"GameSettings", !45, i64 0, !45, i64 4, !45, i64 8, !45, i64 12}
!149 = !{!146, !39, i64 130}
!150 = !{!151, !36, i64 120}
!151 = !{!"Lamp", !54, i64 0, !36, i64 120, !39, i64 128, !39, i64 130, !45, i64 132, !39, i64 136, !39, i64 138, !46, i64 140, !46, i64 144, !46, i64 148, !46, i64 152, !46, i64 156, !46, i64 160, !46, i64 164, !46, i64 168, !46, i64 172, !46, i64 176, !46, i64 180, !46, i64 184, !46, i64 188, !46, i64 192, !46, i64 196, !36, i64 200, !39, i64 208, !39, i64 210, !46, i64 212, !46, i64 216, !46, i64 220, !46, i64 224, !46, i64 228, !46, i64 232, !46, i64 236, !39, i64 240, !39, i64 242, !39, i64 244, !39, i64 246, !37, i64 248, !37, i64 249, !39, i64 250, !39, i64 252, !39, i64 254, !39, i64 256, !39, i64 258, !46, i64 260, !46, i64 264, !46, i64 268, !46, i64 272, !39, i64 276, !39, i64 278, !39, i64 280, !39, i64 282, !39, i64 284, !39, i64 286, !46, i64 288, !46, i64 292, !46, i64 296, !46, i64 300, !46, i64 304, !46, i64 308, !46, i64 312, !46, i64 316, !46, i64 320, !46, i64 324, !46, i64 328, !46, i64 332, !46, i64 336, !39, i64 340, !37, i64 342, !36, i64 344, !37, i64 352, !39, i64 496, !39, i64 498, !37, i64 500, !36, i64 504, !36, i64 512}
!152 = !{!151, !39, i64 130}
!153 = !{!154, !36, i64 120}
!154 = !{!"Camera", !54, i64 0, !36, i64 120, !37, i64 128, !37, i64 129, !39, i64 130, !46, i64 132, !46, i64 136, !46, i64 140, !46, i64 144, !46, i64 148, !46, i64 152, !46, i64 156, !46, i64 160, !46, i64 164, !46, i64 168, !46, i64 172, !36, i64 176, !36, i64 184, !37, i64 192, !37, i64 193}
!155 = !{!154, !39, i64 130}
!156 = !{!157, !36, i64 120}
!157 = !{!"Curve", !54, i64 0, !36, i64 120, !36, i64 128, !44, i64 136, !36, i64 152, !36, i64 160, !36, i64 168, !36, i64 176, !36, i64 184, !36, i64 192, !36, i64 200, !37, i64 208, !37, i64 220, !37, i64 232, !39, i64 244, !39, i64 246, !39, i64 248, !39, i64 250, !46, i64 252, !46, i64 256, !45, i64 260, !39, i64 264, !39, i64 266, !45, i64 268, !46, i64 272, !46, i64 276, !46, i64 280, !39, i64 284, !39, i64 286, !39, i64 288, !39, i64 290, !45, i64 292, !45, i64 296, !37, i64 300, !39, i64 304, !37, i64 306, !37, i64 307, !46, i64 308, !46, i64 312, !46, i64 316, !46, i64 320, !46, i64 324, !46, i64 328, !46, i64 332, !46, i64 336, !46, i64 340, !46, i64 344, !45, i64 348, !45, i64 352, !45, i64 356, !45, i64 360, !45, i64 364, !36, i64 368, !36, i64 376, !37, i64 384, !36, i64 448, !36, i64 456, !36, i64 464, !36, i64 472, !36, i64 480, !45, i64 488, !45, i64 492, !36, i64 496, !158, i64 504, !46, i64 512, !46, i64 516, !46, i64 520, !37, i64 524, !37, i64 525, !37, i64 526}
!158 = !{!"CharInfo", !39, i64 0, !39, i64 2, !37, i64 4, !37, i64 5, !39, i64 6}
!159 = !{!157, !45, i64 268}
!160 = !{!161, !36, i64 120}
!161 = !{!"bArmature", !54, i64 0, !36, i64 120, !44, i64 128, !44, i64 144, !36, i64 160, !36, i64 168, !36, i64 176, !36, i64 184, !45, i64 192, !45, i64 196, !45, i64 200, !45, i64 204, !39, i64 208, !39, i64 210, !45, i64 212, !45, i64 216, !45, i64 220, !39, i64 224, !39, i64 226, !39, i64 228, !39, i64 230, !45, i64 232, !45, i64 236, !45, i64 240, !45, i64 244, !45, i64 248, !45, i64 252}
!162 = !{!161, !45, i64 192}
!163 = !{!164, !36, i64 120}
!164 = !{!"Mesh", !54, i64 0, !36, i64 120, !36, i64 128, !36, i64 136, !36, i64 144, !36, i64 152, !36, i64 160, !36, i64 168, !36, i64 176, !36, i64 184, !36, i64 192, !36, i64 200, !36, i64 208, !36, i64 216, !36, i64 224, !36, i64 232, !36, i64 240, !36, i64 248, !36, i64 256, !36, i64 264, !36, i64 272, !165, i64 280, !165, i64 480, !165, i64 680, !165, i64 880, !165, i64 1080, !45, i64 1280, !45, i64 1284, !45, i64 1288, !45, i64 1292, !45, i64 1296, !45, i64 1300, !45, i64 1304, !37, i64 1308, !37, i64 1320, !37, i64 1332, !45, i64 1344, !39, i64 1348, !39, i64 1350, !46, i64 1352, !45, i64 1356, !37, i64 1360, !37, i64 1361, !37, i64 1362, !37, i64 1363, !37, i64 1364, !37, i64 1365, !39, i64 1366, !36, i64 1368}
!165 = !{!"CustomData", !36, i64 0, !37, i64 8, !45, i64 172, !45, i64 176, !45, i64 180, !36, i64 184, !36, i64 192}
!166 = !{!164, !39, i64 1350}
!167 = !{!168, !36, i64 120}
!168 = !{!"Lattice", !54, i64 0, !36, i64 120, !39, i64 128, !39, i64 130, !39, i64 132, !39, i64 134, !39, i64 136, !39, i64 138, !39, i64 140, !39, i64 142, !37, i64 144, !37, i64 145, !37, i64 146, !37, i64 147, !45, i64 148, !46, i64 152, !46, i64 156, !46, i64 160, !46, i64 164, !46, i64 168, !46, i64 172, !36, i64 176, !36, i64 184, !36, i64 192, !36, i64 200, !37, i64 208, !36, i64 272}
!169 = !{!168, !39, i64 134}
!170 = !{!171, !36, i64 120}
!171 = !{!"Speaker", !54, i64 0, !36, i64 120, !36, i64 128, !46, i64 136, !46, i64 140, !46, i64 144, !46, i64 148, !46, i64 152, !46, i64 156, !46, i64 160, !46, i64 164, !46, i64 168, !46, i64 172, !39, i64 176, !37, i64 178}
!172 = !{!171, !39, i64 176}
!173 = !{!84, !39, i64 214}
!174 = !{!175, !36, i64 120}
!175 = !{!"World", !54, i64 0, !36, i64 120, !39, i64 128, !39, i64 130, !39, i64 132, !39, i64 134, !46, i64 136, !46, i64 140, !46, i64 144, !46, i64 148, !46, i64 152, !46, i64 156, !46, i64 160, !46, i64 164, !46, i64 168, !46, i64 172, !46, i64 176, !46, i64 180, !46, i64 184, !46, i64 188, !46, i64 192, !46, i64 196, !39, i64 200, !39, i64 202, !39, i64 204, !39, i64 206, !39, i64 208, !39, i64 210, !39, i64 212, !39, i64 214, !46, i64 216, !46, i64 220, !46, i64 224, !46, i64 228, !46, i64 232, !46, i64 236, !46, i64 240, !46, i64 244, !46, i64 248, !46, i64 252, !46, i64 256, !46, i64 260, !39, i64 264, !39, i64 266, !39, i64 268, !39, i64 270, !46, i64 272, !46, i64 276, !46, i64 280, !46, i64 284, !39, i64 288, !39, i64 290, !39, i64 292, !39, i64 294, !46, i64 296, !46, i64 300, !46, i64 304, !46, i64 308, !46, i64 312, !46, i64 316, !46, i64 320, !39, i64 324, !39, i64 326, !39, i64 328, !39, i64 330, !39, i64 332, !39, i64 334, !36, i64 336, !36, i64 344, !36, i64 352, !37, i64 360, !39, i64 504, !39, i64 506, !37, i64 508, !36, i64 512, !36, i64 520}
!176 = !{!175, !39, i64 334}
!177 = !{!178, !36, i64 120}
!178 = !{!"bNodeTree", !54, i64 0, !36, i64 120, !36, i64 128, !37, i64 136, !36, i64 200, !36, i64 208, !37, i64 216, !44, i64 224, !44, i64 240, !45, i64 256, !45, i64 260, !45, i64 264, !45, i64 268, !45, i64 272, !39, i64 276, !39, i64 278, !45, i64 280, !45, i64 284, !39, i64 288, !39, i64 290, !45, i64 292, !48, i64 296, !44, i64 312, !44, i64 328, !36, i64 344, !179, i64 352, !45, i64 356, !36, i64 360, !36, i64 368, !36, i64 376, !36, i64 384, !36, i64 392, !36, i64 400, !36, i64 408, !36, i64 416, !36, i64 424}
!179 = !{!"bNodeInstanceKey", !45, i64 0}
!180 = !{!178, !45, i64 268}
!181 = !{!182, !36, i64 120}
!182 = !{!"FreestyleLineStyle", !54, i64 0, !36, i64 120, !46, i64 128, !46, i64 132, !46, i64 136, !46, i64 140, !46, i64 144, !45, i64 148, !46, i64 152, !45, i64 156, !45, i64 160, !45, i64 164, !45, i64 168, !46, i64 172, !46, i64 176, !46, i64 180, !46, i64 184, !46, i64 188, !45, i64 192, !39, i64 196, !39, i64 198, !39, i64 200, !39, i64 202, !39, i64 204, !39, i64 206, !45, i64 208, !45, i64 212, !46, i64 216, !39, i64 220, !39, i64 222, !39, i64 224, !37, i64 226, !39, i64 232, !39, i64 234, !39, i64 236, !39, i64 238, !39, i64 240, !39, i64 242, !45, i64 244, !37, i64 248, !36, i64 392, !44, i64 400, !44, i64 416, !44, i64 432, !44, i64 448}
!183 = !{!182, !45, i64 156}
!184 = !{!185, !36, i64 120}
!185 = !{!"ParticleSettings", !54, i64 0, !36, i64 120, !36, i64 128, !36, i64 136, !36, i64 144, !45, i64 152, !45, i64 156, !39, i64 160, !39, i64 162, !39, i64 164, !39, i64 166, !39, i64 168, !39, i64 170, !39, i64 172, !39, i64 174, !45, i64 176, !45, i64 180, !39, i64 184, !39, i64 186, !39, i64 188, !39, i64 190, !39, i64 192, !39, i64 194, !39, i64 196, !39, i64 198, !39, i64 200, !39, i64 202, !39, i64 204, !39, i64 206, !39, i64 208, !39, i64 210, !39, i64 212, !39, i64 214, !39, i64 216, !39, i64 218, !39, i64 220, !39, i64 222, !39, i64 224, !39, i64 226, !39, i64 228, !39, i64 230, !46, i64 232, !46, i64 236, !37, i64 240, !37, i64 248, !46, i64 256, !46, i64 260, !46, i64 264, !39, i64 268, !39, i64 270, !46, i64 272, !46, i64 276, !46, i64 280, !46, i64 284, !46, i64 288, !46, i64 292, !46, i64 296, !46, i64 300, !46, i64 304, !46, i64 308, !46, i64 312, !46, i64 316, !37, i64 320, !45, i64 324, !45, i64 328, !45, i64 332, !45, i64 336, !39, i64 340, !37, i64 342, !46, i64 348, !46, i64 352, !46, i64 356, !46, i64 360, !46, i64 364, !46, i64 368, !46, i64 372, !37, i64 376, !46, i64 388, !46, i64 392, !46, i64 396, !46, i64 400, !46, i64 404, !46, i64 408, !46, i64 412, !37, i64 416, !46, i64 428, !46, i64 432, !46, i64 436, !46, i64 440, !45, i64 444, !45, i64 448, !46, i64 452, !46, i64 456, !46, i64 460, !46, i64 464, !46, i64 468, !46, i64 472, !46, i64 476, !46, i64 480, !46, i64 484, !46, i64 488, !46, i64 492, !46, i64 496, !46, i64 500, !46, i64 504, !46, i64 508, !46, i64 512, !46, i64 516, !46, i64 520, !46, i64 524, !46, i64 528, !46, i64 532, !46, i64 536, !46, i64 540, !46, i64 544, !46, i64 548, !37, i64 552, !46, i64 560, !46, i64 564, !45, i64 568, !45, i64 572, !37, i64 576, !36, i64 720, !44, i64 728, !36, i64 744, !36, i64 752, !36, i64 760, !36, i64 768, !36, i64 776, !36, i64 784, !39, i64 792, !37, i64 794}
!186 = !{!185, !45, i64 152}
!187 = !{!188, !36, i64 120}
!188 = !{!"Tex", !54, i64 0, !36, i64 120, !46, i64 128, !46, i64 132, !46, i64 136, !46, i64 140, !46, i64 144, !46, i64 148, !46, i64 152, !46, i64 156, !46, i64 160, !46, i64 164, !46, i64 168, !46, i64 172, !46, i64 176, !46, i64 180, !46, i64 184, !46, i64 188, !46, i64 192, !46, i64 196, !46, i64 200, !46, i64 204, !46, i64 208, !46, i64 212, !39, i64 216, !39, i64 218, !39, i64 220, !39, i64 222, !39, i64 224, !39, i64 226, !39, i64 228, !39, i64 230, !39, i64 232, !39, i64 234, !46, i64 236, !46, i64 240, !46, i64 244, !46, i64 248, !45, i64 252, !45, i64 256, !39, i64 260, !39, i64 262, !39, i64 264, !39, i64 266, !45, i64 268, !45, i64 272, !45, i64 276, !45, i64 280, !46, i64 284, !46, i64 288, !46, i64 292, !189, i64 296, !36, i64 336, !36, i64 344, !36, i64 352, !36, i64 360, !36, i64 368, !36, i64 376, !36, i64 384, !36, i64 392, !36, i64 400, !37, i64 408, !37, i64 409}
!189 = !{!"ImageUser", !36, i64 0, !45, i64 8, !45, i64 12, !45, i64 16, !45, i64 20, !37, i64 24, !37, i64 25, !37, i64 26, !37, i64 27, !39, i64 28, !39, i64 30, !39, i64 32, !39, i64 34, !45, i64 36}
!190 = !{!188, !39, i64 230}
!191 = !{!192, !45, i64 32}
!192 = !{!"bActionGroup", !36, i64 0, !36, i64 8, !44, i64 16, !45, i64 32, !45, i64 36, !37, i64 40, !193, i64 104}
!193 = !{!"ThemeWireColor", !37, i64 0, !37, i64 4, !37, i64 8, !39, i64 12, !39, i64 14}
!194 = !{!195, !39, i64 72}
!195 = !{!"FCurve", !36, i64 0, !36, i64 8, !36, i64 16, !36, i64 24, !44, i64 32, !36, i64 48, !36, i64 56, !45, i64 64, !46, i64 68, !39, i64 72, !39, i64 74, !45, i64 76, !36, i64 80, !45, i64 88, !37, i64 92, !46, i64 104, !46, i64 108}
!196 = !{!106, !45, i64 32}
!197 = !{!198, !45, i64 32}
!198 = !{!"NlaTrack", !36, i64 0, !36, i64 8, !44, i64 16, !45, i64 32, !45, i64 36, !37, i64 40}
!199 = !{!143, !36, i64 24}
!200 = !{!192, !36, i64 24}
!201 = !{!192, !36, i64 16}
!202 = distinct !{!202, !117, !118}
!203 = !{!39, !39, i64 0}
!204 = !{!120, !45, i64 2100}
!205 = !{!65, !45, i64 232}
!206 = !{!53, !45, i64 944}
!207 = !{!82, !45, i64 16}
!208 = !{!53, !37, i64 1160}
!209 = !{!82, !45, i64 24}
!210 = !{!50, !36, i64 24}
!211 = distinct !{!211, !117, !118}
!212 = !{!195, !36, i64 0}
!213 = distinct !{!213, !117, !118}
!214 = !{!195, !36, i64 16}
!215 = !{!195, !36, i64 80}
!216 = !{!53, !36, i64 288}
!217 = !{!218, !36, i64 120}
!218 = !{!"bPoseChannel", !36, i64 0, !36, i64 8, !36, i64 16, !44, i64 24, !37, i64 40, !39, i64 104, !39, i64 106, !39, i64 108, !39, i64 110, !37, i64 112, !37, i64 113, !37, i64 114, !36, i64 120, !36, i64 128, !36, i64 136, !44, i64 144, !44, i64 160, !36, i64 176, !36, i64 184, !36, i64 192, !37, i64 200, !37, i64 212, !37, i64 224, !37, i64 236, !37, i64 252, !46, i64 264, !39, i64 268, !39, i64 270, !37, i64 272, !37, i64 336, !37, i64 400, !37, i64 464, !37, i64 476, !37, i64 488, !37, i64 500, !37, i64 512, !46, i64 524, !46, i64 528, !46, i64 532, !36, i64 536}
!219 = !{!53, !36, i64 296}
!220 = !{!161, !45, i64 216}
!221 = !{!222, !45, i64 320}
!222 = !{!"Bone", !36, i64 0, !36, i64 8, !36, i64 16, !36, i64 24, !44, i64 32, !37, i64 48, !46, i64 112, !37, i64 116, !37, i64 128, !37, i64 140, !45, i64 176, !37, i64 180, !37, i64 192, !37, i64 204, !46, i64 268, !46, i64 272, !46, i64 276, !46, i64 280, !46, i64 284, !46, i64 288, !46, i64 292, !46, i64 296, !46, i64 300, !46, i64 304, !37, i64 308, !45, i64 320, !39, i64 324, !37, i64 326}
!223 = !{!222, !45, i64 176}
!224 = !{!225, !36, i64 0}
!225 = !{!"Editing", !36, i64 0, !44, i64 8, !44, i64 24, !36, i64 40, !37, i64 48, !37, i64 1072, !45, i64 2096, !45, i64 2100, !45, i64 2104, !45, i64 2108, !48, i64 2112}
!226 = !{!227, !45, i64 96}
!227 = !{!"Sequence", !36, i64 0, !36, i64 8, !36, i64 16, !36, i64 24, !37, i64 32, !45, i64 96, !45, i64 100, !45, i64 104, !45, i64 108, !45, i64 112, !45, i64 116, !45, i64 120, !45, i64 124, !45, i64 128, !45, i64 132, !45, i64 136, !45, i64 140, !46, i64 144, !46, i64 148, !46, i64 152, !39, i64 156, !39, i64 158, !45, i64 160, !45, i64 164, !36, i64 168, !36, i64 176, !36, i64 184, !36, i64 192, !36, i64 200, !36, i64 208, !36, i64 216, !46, i64 224, !46, i64 228, !36, i64 232, !36, i64 240, !36, i64 248, !44, i64 256, !36, i64 272, !36, i64 280, !46, i64 288, !46, i64 292, !46, i64 296, !46, i64 300, !36, i64 304, !45, i64 312, !45, i64 316, !45, i64 320, !46, i64 324, !45, i64 328, !37, i64 332, !37, i64 333, !44, i64 336}
!228 = !{!229, !45, i64 168}
!229 = !{!"bNode", !36, i64 0, !36, i64 8, !36, i64 16, !36, i64 24, !36, i64 32, !37, i64 40, !37, i64 104, !45, i64 168, !39, i64 172, !39, i64 174, !39, i64 176, !39, i64 178, !39, i64 180, !39, i64 182, !39, i64 184, !39, i64 186, !37, i64 188, !44, i64 200, !44, i64 216, !36, i64 232, !36, i64 240, !36, i64 248, !36, i64 256, !44, i64 264, !46, i64 280, !46, i64 284, !46, i64 288, !46, i64 292, !46, i64 296, !46, i64 300, !46, i64 304, !45, i64 308, !37, i64 312, !39, i64 376, !39, i64 378, !46, i64 380, !46, i64 384, !39, i64 388, !39, i64 390, !36, i64 392, !48, i64 400, !48, i64 416, !48, i64 432, !39, i64 448, !39, i64 450, !45, i64 452, !36, i64 456}
!230 = !{!231, !36, i64 48}
!231 = !{!"bAnimChannelType", !36, i64 0, !45, i64 8, !36, i64 16, !36, i64 24, !36, i64 32, !36, i64 40, !36, i64 48, !36, i64 56, !36, i64 64, !36, i64 72, !36, i64 80, !36, i64 88}
!232 = !{!195, !36, i64 24}
!233 = !{!234, !45, i64 292}
!234 = !{!"ChannelDriver", !44, i64 0, !37, i64 16, !36, i64 272, !46, i64 280, !46, i64 284, !45, i64 288, !45, i64 292}
!235 = distinct !{!235, !117, !118}
!236 = !{!237, !39, i64 528}
!237 = !{!"DriverVar", !36, i64 0, !36, i64 8, !37, i64 16, !37, i64 80, !39, i64 528, !39, i64 530, !46, i64 532}
!238 = !{!239, !39, i64 50}
!239 = !{!"DriverTarget", !36, i64 0, !36, i64 8, !37, i64 16, !39, i64 48, !39, i64 50, !45, i64 52}
!240 = distinct !{!240, !117, !118}
!241 = distinct !{!241, !117, !118}
!242 = !{!65, !36, i64 248}
!243 = !{!65, !36, i64 136}
!244 = !{!65, !36, i64 120}
!245 = !{!58, !36, i64 48}
!246 = !{!247, !36, i64 16}
!247 = !{!"MTex", !39, i64 0, !39, i64 2, !39, i64 4, !39, i64 6, !36, i64 8, !36, i64 16, !37, i64 24, !37, i64 88, !37, i64 89, !37, i64 90, !37, i64 91, !37, i64 92, !37, i64 104, !46, i64 116, !39, i64 120, !39, i64 122, !39, i64 124, !39, i64 126, !39, i64 128, !39, i64 130, !37, i64 132, !37, i64 133, !46, i64 140, !46, i64 144, !46, i64 148, !46, i64 152, !46, i64 156, !46, i64 160, !46, i64 164, !46, i64 168, !46, i64 172, !46, i64 176, !46, i64 180, !46, i64 184, !46, i64 188, !46, i64 192, !46, i64 196, !46, i64 200, !46, i64 204, !46, i64 208, !46, i64 212, !46, i64 216, !46, i64 220, !46, i64 224, !46, i64 228, !46, i64 232, !46, i64 236, !46, i64 240, !46, i64 244, !46, i64 248, !46, i64 252, !46, i64 256, !46, i64 260, !46, i64 264, !46, i64 268, !46, i64 272, !46, i64 276, !46, i64 280, !46, i64 284, !46, i64 288, !46, i64 292, !46, i64 296, !46, i64 300, !46, i64 304, !46, i64 308}
!248 = distinct !{!248, !117, !118}
!249 = !{!175, !36, i64 520}
!250 = !{!229, !39, i64 172}
!251 = !{!229, !36, i64 240}
!252 = distinct !{!252, !117, !118}
!253 = distinct !{!253, !117, !118}
!254 = !{!255, !36, i64 120}
!255 = !{!"FreestyleLineSet", !36, i64 0, !36, i64 8, !37, i64 16, !45, i64 80, !45, i64 84, !39, i64 88, !39, i64 90, !45, i64 92, !45, i64 96, !45, i64 100, !45, i64 104, !45, i64 108, !36, i64 112, !36, i64 120}
!256 = !{!182, !39, i64 98}
!257 = distinct !{!257, !117, !118}
!258 = !{!259, !45, i64 108}
!259 = !{!"SceneRenderLayer", !36, i64 0, !36, i64 8, !37, i64 16, !36, i64 80, !36, i64 88, !45, i64 96, !45, i64 100, !45, i64 104, !45, i64 108, !45, i64 112, !45, i64 116, !45, i64 120, !46, i64 124, !260, i64 128}
!260 = !{!"FreestyleConfig", !44, i64 0, !45, i64 16, !45, i64 20, !45, i64 24, !46, i64 28, !46, i64 32, !46, i64 36, !44, i64 40}
!261 = distinct !{!261, !117, !118}
!262 = distinct !{!262, !117, !118}
!263 = !{!53, !39, i64 960}
!264 = !{!53, !36, i64 416}
!265 = !{!266, !36, i64 0}
!266 = !{!"tAnimFilterModifiersContext", !36, i64 0, !36, i64 8, !44, i64 16, !56, i64 32, !45, i64 40}
!267 = !{!266, !36, i64 8}
!268 = !{!266, !45, i64 40}
!269 = !{!266, !56, i64 32}
!270 = !{!53, !45, i64 456}
!271 = distinct !{!271, !117, !118}
!272 = distinct !{!272, !117, !118}
!273 = !{!53, !39, i64 136}
!274 = !{!275, !37, i64 185}
!275 = !{!"MetaBall", !54, i64 0, !36, i64 120, !44, i64 128, !44, i64 144, !36, i64 160, !36, i64 168, !36, i64 176, !37, i64 184, !37, i64 185, !39, i64 186, !39, i64 188, !39, i64 190, !37, i64 192, !37, i64 204, !37, i64 216, !46, i64 228, !46, i64 232, !46, i64 236, !36, i64 240}
!276 = !{!151, !36, i64 512}
!277 = !{!278, !36, i64 120}
!278 = !{!"IdAdtTemplate", !54, i64 0, !36, i64 120}
!279 = !{!53, !36, i64 1224}
!280 = !{!281, !36, i64 16}
!281 = !{!"ParticleSystem", !36, i64 0, !36, i64 8, !36, i64 16, !36, i64 24, !36, i64 32, !36, i64 40, !36, i64 48, !36, i64 56, !36, i64 64, !44, i64 72, !44, i64 88, !36, i64 104, !36, i64 112, !36, i64 120, !36, i64 128, !36, i64 136, !36, i64 144, !44, i64 152, !37, i64 168, !37, i64 232, !46, i64 296, !46, i64 300, !46, i64 304, !45, i64 308, !45, i64 312, !45, i64 316, !45, i64 320, !45, i64 324, !45, i64 328, !45, i64 332, !45, i64 336, !39, i64 340, !39, i64 342, !39, i64 344, !39, i64 346, !37, i64 348, !37, i64 540, !39, i64 564, !39, i64 566, !36, i64 568, !36, i64 576, !44, i64 584, !36, i64 600, !36, i64 608, !45, i64 616, !45, i64 620, !36, i64 624, !36, i64 632, !36, i64 640, !46, i64 648, !46, i64 652}
!282 = distinct !{!282, !117, !118}
!283 = !{!58, !36, i64 24}
!284 = distinct !{!284, !117, !118}
!285 = !{!188, !36, i64 336}
!286 = !{!146, !36, i64 768}
