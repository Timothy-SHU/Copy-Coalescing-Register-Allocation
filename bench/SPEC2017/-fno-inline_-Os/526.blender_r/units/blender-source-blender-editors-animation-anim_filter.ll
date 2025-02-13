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
%struct.Key = type { %struct.ID, ptr, ptr, [32 x i8], i32, i32, %struct.ListBase, ptr, ptr, i16, i16, i16, i16, float, i32 }
%struct.SpaceIpo = type { ptr, ptr, %struct.ListBase, i32, float, [8 x i16], %struct.View2D, ptr, %struct.ListBase, i16, i16, i32, float, i32 }
%struct.SpaceNla = type { ptr, ptr, %struct.ListBase, i32, float, [8 x i16], i16, i16, i32, ptr, %struct.View2D }
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
%struct.ScrArea = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.rcti, i8, i8, i16, i16, i16, i16, i16, i16, i8, i8, ptr, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase }
%struct.ARegion = type { ptr, ptr, %struct.View2D, %struct.rcti, %struct.rcti, i16, i16, i16, i16, i16, i16, float, i16, i16, i16, i16, i16, i16, i16, i16, ptr, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, ptr, ptr, ptr }
%struct.bAnimListElem = type { ptr, ptr, ptr, i32, i32, i32, i16, i16, ptr, ptr, ptr }
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
%struct.KeyBlock = type { ptr, ptr, float, float, i16, i16, i16, i16, i32, i32, ptr, [64 x i8], [64 x i8], float, float }
%struct.bGPDlayer = type { ptr, ptr, %struct.ListBase, ptr, i32, i16, i16, [4 x float], [128 x i8] }
%struct.MaskLayer = type { ptr, ptr, [64 x i8], %struct.ListBase, %struct.ListBase, ptr, ptr, float, i8, i8, i8, [7 x i8], i8, i8 }
%struct.NlaTrack = type { ptr, ptr, %struct.ListBase, i32, i32, [64 x i8] }
%struct.Main = type { ptr, ptr, [1024 x i8], i16, i16, i16, i16, i64, [16 x i8], i16, ptr, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, [256 x i8], ptr, ptr }
%struct.bGPdata = type { %struct.ID, %struct.ListBase, i32, i16, i16, ptr }
%struct.Mask = type { %struct.ID, ptr, %struct.ListBase, i32, i32, i32, i32, i32, i32 }
%struct.bPoseChannel = type { ptr, ptr, ptr, %struct.ListBase, [64 x i8], i16, i16, i16, i16, i8, i8, [6 x i8], ptr, ptr, ptr, %struct.ListBase, %struct.ListBase, ptr, ptr, ptr, [3 x float], [3 x float], [3 x float], [4 x float], [3 x float], float, i16, i16, [4 x [4 x float]], [4 x [4 x float]], [4 x [4 x float]], [3 x float], [3 x float], [3 x float], [3 x float], [3 x float], float, float, float, ptr }
%struct.Bone = type { ptr, ptr, ptr, ptr, %struct.ListBase, [64 x i8], float, [3 x float], [3 x float], [3 x [3 x float]], i32, [3 x float], [3 x float], [4 x [4 x float]], float, float, float, float, float, float, float, float, float, float, [3 x float], i32, i16, [1 x i16] }
%struct.Sequence = type { ptr, ptr, ptr, ptr, [64 x i8], i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, float, float, float, i16, i16, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, float, float, ptr, ptr, ptr, %struct.ListBase, ptr, ptr, float, float, float, float, ptr, i32, i32, i32, float, i32, i8, [3 x i8], %struct.ListBase }
%struct.bNode = type { ptr, ptr, ptr, ptr, ptr, [64 x i8], [64 x i8], i32, i16, i16, i16, i16, i16, i16, i16, i16, [3 x float], %struct.ListBase, %struct.ListBase, ptr, ptr, ptr, ptr, %struct.ListBase, float, float, float, float, float, float, float, i32, [64 x i8], i16, i16, float, float, i16, i16, ptr, %struct.rctf, %struct.rctf, %struct.rctf, i16, i16, i32, ptr }
%struct.bAnimChannelType = type { ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.ChannelDriver = type { %struct.ListBase, [256 x i8], ptr, float, float, i32, i32 }
%struct.DriverVar = type { ptr, ptr, [64 x i8], [8 x %struct.DriverTarget], i16, i16, float }
%struct.DriverTarget = type { ptr, ptr, [32 x i8], i16, i16, i32 }
%struct.SceneRenderLayer = type { ptr, ptr, [64 x i8], ptr, ptr, i32, i32, i32, i32, i32, i32, i32, float, %struct.FreestyleConfig }
%struct.FreestyleConfig = type { %struct.ListBase, i32, i32, i32, float, float, float, %struct.ListBase }
%struct.FreestyleLineSet = type { ptr, ptr, [64 x i8], i32, i32, i16, i16, i32, i32, i32, i32, i32, ptr, ptr }
%struct.IdAdtTemplate = type { %struct.ID, ptr }
%struct.MTex = type { i16, i16, i16, i16, ptr, ptr, [64 x i8], i8, i8, i8, i8, [3 x float], [3 x float], float, i16, i16, i16, i16, i16, i16, i8, [7 x i8], float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float }
%struct.tAnimFilterModifiersContext = type { ptr, ptr, %struct.ListBase, i64, i32 }
%struct.MetaBall = type { %struct.ID, ptr, %struct.ListBase, %struct.ListBase, ptr, ptr, ptr, i8, i8, i16, i16, i16, [3 x float], [3 x float], [3 x float], float, float, float, ptr }
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

; Function Attrs: noinline nounwind optsize uwtable
define dso_local zeroext i8 @ANIM_animdata_context_getdata(ptr nocapture noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.bAnimContext, ptr %0, i64 0, i32 6
  %3 = load ptr, ptr %2, align 8, !tbaa !34
  %4 = icmp eq ptr %3, null
  br i1 %4, label %20, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.bAnimContext, ptr %0, i64 0, i32 3
  %7 = load i16, ptr %6, align 4, !tbaa !40
  switch i16 %7, label %20 [
    i16 12, label %8
    i16 2, label %10
    i16 13, label %12
  ]

8:                                                ; preds = %5
  %9 = tail call fastcc zeroext i8 @actedit_get_context(ptr noundef nonnull %0, ptr noundef nonnull %3) #8, !range !41
  br label %13

10:                                               ; preds = %5
  %11 = tail call fastcc zeroext i8 @graphedit_get_context(ptr noundef nonnull %0, ptr noundef nonnull %3) #8, !range !41
  br label %13

12:                                               ; preds = %5
  tail call fastcc void @nlaedit_get_context(ptr noundef nonnull %0, ptr noundef nonnull %3) #8
  br label %16

13:                                               ; preds = %8, %10
  %14 = phi i8 [ %11, %10 ], [ %9, %8 ]
  %15 = icmp eq i8 %14, 0
  br i1 %15, label %20, label %16

16:                                               ; preds = %12, %13
  %17 = load ptr, ptr %0, align 8, !tbaa !42
  %18 = icmp ne ptr %17, null
  %19 = zext i1 %18 to i8
  br label %20

20:                                               ; preds = %1, %5, %16, %13
  %21 = phi i8 [ 0, %13 ], [ %19, %16 ], [ 0, %5 ], [ 0, %1 ]
  ret i8 %21
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc noundef zeroext i8 @actedit_get_context(ptr nocapture noundef %0, ptr noundef %1) unnamed_addr #0 !PGOFuncName !43 {
  %3 = getelementptr inbounds %struct.SpaceAction, ptr %1, i64 0, i32 8
  %4 = getelementptr inbounds %struct.bAnimContext, ptr %0, i64 0, i32 8
  store ptr %3, ptr %4, align 8, !tbaa !44
  %5 = getelementptr inbounds %struct.SpaceAction, ptr %1, i64 0, i32 9
  %6 = load i8, ptr %5, align 8, !tbaa !45
  switch i8 %6, label %48 [
    i8 0, label %7
    i8 1, label %21
    i8 2, label %36
    i8 4, label %40
    i8 3, label %44
  ]

7:                                                ; preds = %2
  %8 = getelementptr inbounds %struct.bAnimContext, ptr %0, i64 0, i32 10
  %9 = load ptr, ptr %8, align 8, !tbaa !54
  %10 = icmp eq ptr %9, null
  br i1 %10, label %17, label %11

11:                                               ; preds = %7
  %12 = getelementptr inbounds %struct.Object, ptr %9, i64 0, i32 1
  %13 = load ptr, ptr %12, align 8, !tbaa !55
  %14 = icmp eq ptr %13, null
  br i1 %14, label %17, label %15

15:                                               ; preds = %11
  %16 = load ptr, ptr %13, align 8, !tbaa !60
  br label %17

17:                                               ; preds = %7, %11, %15
  %18 = phi ptr [ %16, %15 ], [ null, %11 ], [ null, %7 ]
  %19 = getelementptr inbounds %struct.SpaceAction, ptr %1, i64 0, i32 7
  store ptr %18, ptr %19, align 8, !tbaa !62
  %20 = getelementptr inbounds %struct.bAnimContext, ptr %0, i64 0, i32 1
  store i16 1, ptr %20, align 8, !tbaa !63
  store ptr %18, ptr %0, align 8, !tbaa !42
  br label %50

21:                                               ; preds = %2
  %22 = getelementptr inbounds %struct.bAnimContext, ptr %0, i64 0, i32 1
  store i16 2, ptr %22, align 8, !tbaa !63
  %23 = tail call fastcc ptr @actedit_get_shapekeys(ptr noundef nonnull %0) #8
  store ptr %23, ptr %0, align 8, !tbaa !42
  %24 = icmp eq ptr %23, null
  br i1 %24, label %31, label %25

25:                                               ; preds = %21
  %26 = getelementptr inbounds %struct.Key, ptr %23, i64 0, i32 1
  %27 = load ptr, ptr %26, align 8, !tbaa !64
  %28 = icmp eq ptr %27, null
  br i1 %28, label %31, label %29

29:                                               ; preds = %25
  %30 = load ptr, ptr %27, align 8, !tbaa !60
  br label %31

31:                                               ; preds = %21, %25, %29
  %32 = phi ptr [ %30, %29 ], [ null, %25 ], [ null, %21 ]
  %33 = getelementptr inbounds %struct.SpaceAction, ptr %1, i64 0, i32 7
  store ptr %32, ptr %33, align 8, !tbaa !62
  %34 = load i8, ptr %5, align 8, !tbaa !45
  %35 = zext i8 %34 to i16
  br label %50

36:                                               ; preds = %2
  %37 = getelementptr inbounds %struct.bAnimContext, ptr %0, i64 0, i32 9
  %38 = load ptr, ptr %37, align 8, !tbaa !66
  store ptr %38, ptr %3, align 8, !tbaa !67
  %39 = getelementptr inbounds %struct.bAnimContext, ptr %0, i64 0, i32 1
  store i16 3, ptr %39, align 8, !tbaa !63
  store ptr %3, ptr %0, align 8, !tbaa !42
  br label %50

40:                                               ; preds = %2
  %41 = getelementptr inbounds %struct.bAnimContext, ptr %0, i64 0, i32 9
  %42 = load ptr, ptr %41, align 8, !tbaa !66
  store ptr %42, ptr %3, align 8, !tbaa !67
  %43 = getelementptr inbounds %struct.bAnimContext, ptr %0, i64 0, i32 1
  store i16 9, ptr %43, align 8, !tbaa !63
  store ptr %3, ptr %0, align 8, !tbaa !42
  br label %50

44:                                               ; preds = %2
  %45 = getelementptr inbounds %struct.bAnimContext, ptr %0, i64 0, i32 9
  %46 = load ptr, ptr %45, align 8, !tbaa !66
  store ptr %46, ptr %3, align 8, !tbaa !67
  %47 = getelementptr inbounds %struct.bAnimContext, ptr %0, i64 0, i32 1
  store i16 4, ptr %47, align 8, !tbaa !63
  store ptr %3, ptr %0, align 8, !tbaa !42
  br label %50

48:                                               ; preds = %2
  %49 = getelementptr inbounds %struct.bAnimContext, ptr %0, i64 0, i32 1
  store i16 0, ptr %49, align 8, !tbaa !63
  store ptr null, ptr %0, align 8, !tbaa !42
  br label %50

50:                                               ; preds = %48, %44, %40, %36, %31, %17
  %51 = phi i16 [ -1, %48 ], [ 3, %44 ], [ 4, %40 ], [ 2, %36 ], [ %35, %31 ], [ 0, %17 ]
  %52 = phi i8 [ 0, %48 ], [ 1, %44 ], [ 1, %40 ], [ 1, %36 ], [ 1, %31 ], [ 1, %17 ]
  %53 = getelementptr inbounds %struct.bAnimContext, ptr %0, i64 0, i32 2
  store i16 %51, ptr %53, align 2, !tbaa !68
  ret i8 %52
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc noundef zeroext i8 @graphedit_get_context(ptr nocapture noundef %0, ptr nocapture noundef %1) unnamed_addr #0 !PGOFuncName !69 {
  %3 = getelementptr inbounds %struct.SpaceIpo, ptr %1, i64 0, i32 7
  %4 = load ptr, ptr %3, align 8, !tbaa !70
  %5 = icmp eq ptr %4, null
  br i1 %5, label %6, label %11

6:                                                ; preds = %2
  %7 = load ptr, ptr @MEM_callocN, align 8, !tbaa !72
  %8 = tail call ptr %7(i64 noundef 112, ptr noundef nonnull @.str.1) #9
  store ptr %8, ptr %3, align 8, !tbaa !70
  %9 = getelementptr inbounds %struct.bAnimContext, ptr %0, i64 0, i32 9
  %10 = load ptr, ptr %9, align 8, !tbaa !66
  store ptr %10, ptr %8, align 8, !tbaa !73
  br label %11

11:                                               ; preds = %6, %2
  %12 = phi ptr [ %8, %6 ], [ %4, %2 ]
  %13 = getelementptr inbounds %struct.bAnimContext, ptr %0, i64 0, i32 8
  store ptr %12, ptr %13, align 8, !tbaa !44
  %14 = getelementptr inbounds %struct.SpaceIpo, ptr %1, i64 0, i32 11
  %15 = load i32, ptr %14, align 4, !tbaa !74
  %16 = getelementptr inbounds %struct.bDopeSheet, ptr %12, i64 0, i32 4
  %17 = load i32, ptr %16, align 8, !tbaa !75
  %18 = and i32 %17, -9
  %19 = lshr i32 %15, 2
  %20 = and i32 %19, 8
  %21 = or disjoint i32 %18, %20
  store i32 %21, ptr %16, align 8, !tbaa !75
  %22 = getelementptr inbounds %struct.SpaceIpo, ptr %1, i64 0, i32 9
  %23 = load i16, ptr %22, align 8, !tbaa !76
  switch i16 %23, label %34 [
    i16 0, label %24
    i16 1, label %29
  ]

24:                                               ; preds = %11
  %25 = getelementptr inbounds %struct.bAnimContext, ptr %0, i64 0, i32 9
  %26 = load ptr, ptr %25, align 8, !tbaa !66
  store ptr %26, ptr %12, align 8, !tbaa !73
  %27 = getelementptr inbounds %struct.bDopeSheet, ptr %12, i64 0, i32 4
  %28 = and i32 %21, -3
  store i32 %28, ptr %27, align 8, !tbaa !75
  br label %34

29:                                               ; preds = %11
  %30 = getelementptr inbounds %struct.bAnimContext, ptr %0, i64 0, i32 9
  %31 = load ptr, ptr %30, align 8, !tbaa !66
  store ptr %31, ptr %12, align 8, !tbaa !73
  %32 = getelementptr inbounds %struct.bDopeSheet, ptr %12, i64 0, i32 4
  %33 = or i32 %21, 2
  store i32 %33, ptr %32, align 8, !tbaa !75
  br label %34

34:                                               ; preds = %11, %29, %24
  %35 = phi ptr [ %12, %29 ], [ %12, %24 ], [ null, %11 ]
  %36 = phi i8 [ 1, %29 ], [ 1, %24 ], [ 0, %11 ]
  %37 = phi <2 x i16> [ <i16 6, i16 1>, %29 ], [ <i16 5, i16 0>, %24 ], [ <i16 0, i16 -1>, %11 ]
  %38 = getelementptr inbounds %struct.bAnimContext, ptr %0, i64 0, i32 1
  store ptr %35, ptr %0, align 8, !tbaa !42
  store <2 x i16> %37, ptr %38, align 8, !tbaa !77
  ret i8 %36
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @nlaedit_get_context(ptr nocapture noundef %0, ptr nocapture noundef %1) unnamed_addr #0 !PGOFuncName !78 {
  %3 = getelementptr inbounds %struct.SpaceNla, ptr %1, i64 0, i32 9
  %4 = load ptr, ptr %3, align 8, !tbaa !79
  %5 = icmp eq ptr %4, null
  br i1 %5, label %6, label %9

6:                                                ; preds = %2
  %7 = load ptr, ptr @MEM_callocN, align 8, !tbaa !72
  %8 = tail call ptr %7(i64 noundef 112, ptr noundef nonnull @.str.2) #9
  store ptr %8, ptr %3, align 8, !tbaa !79
  br label %9

9:                                                ; preds = %6, %2
  %10 = phi ptr [ %8, %6 ], [ %4, %2 ]
  %11 = getelementptr inbounds %struct.bAnimContext, ptr %0, i64 0, i32 8
  store ptr %10, ptr %11, align 8, !tbaa !44
  %12 = getelementptr inbounds %struct.bAnimContext, ptr %0, i64 0, i32 9
  %13 = load ptr, ptr %12, align 8, !tbaa !66
  store ptr %13, ptr %10, align 8, !tbaa !73
  %14 = getelementptr inbounds %struct.bDopeSheet, ptr %10, i64 0, i32 4
  %15 = load i32, ptr %14, align 8, !tbaa !75
  %16 = or i32 %15, 4
  store i32 %16, ptr %14, align 8, !tbaa !75
  %17 = getelementptr inbounds %struct.bAnimContext, ptr %0, i64 0, i32 1
  store i16 7, ptr %17, align 8, !tbaa !63
  store ptr %10, ptr %0, align 8, !tbaa !42
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local zeroext i8 @ANIM_animdata_get_context(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = tail call ptr @CTX_wm_area(ptr noundef %0) #9
  %4 = tail call ptr @CTX_wm_region(ptr noundef %0) #9
  %5 = tail call ptr @CTX_wm_space_data(ptr noundef %0) #9
  %6 = tail call ptr @CTX_data_scene(ptr noundef %0) #9
  %7 = icmp eq ptr %1, null
  br i1 %7, label %43, label %8

8:                                                ; preds = %2
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %1, i8 0, i64 80, i1 false)
  %9 = getelementptr inbounds %struct.bAnimContext, ptr %1, i64 0, i32 9
  store ptr %6, ptr %9, align 8, !tbaa !66
  %10 = icmp eq ptr %6, null
  br i1 %10, label %23, label %11

11:                                               ; preds = %8
  %12 = tail call ptr @ED_context_get_markers(ptr noundef %0) #9
  %13 = getelementptr inbounds %struct.bAnimContext, ptr %1, i64 0, i32 11
  store ptr %12, ptr %13, align 8, !tbaa !81
  %14 = getelementptr inbounds %struct.Scene, ptr %6, i64 0, i32 6
  %15 = load ptr, ptr %14, align 8, !tbaa !82
  %16 = icmp eq ptr %15, null
  br i1 %16, label %20, label %17

17:                                               ; preds = %11
  %18 = getelementptr inbounds %struct.Base, ptr %15, i64 0, i32 7
  %19 = load ptr, ptr %18, align 8, !tbaa !99
  br label %20

20:                                               ; preds = %11, %17
  %21 = phi ptr [ %19, %17 ], [ null, %11 ]
  %22 = getelementptr inbounds %struct.bAnimContext, ptr %1, i64 0, i32 10
  store ptr %21, ptr %22, align 8, !tbaa !54
  br label %23

23:                                               ; preds = %20, %8
  %24 = getelementptr inbounds %struct.bAnimContext, ptr %1, i64 0, i32 5
  store ptr %3, ptr %24, align 8, !tbaa !101
  %25 = getelementptr inbounds %struct.bAnimContext, ptr %1, i64 0, i32 7
  store ptr %4, ptr %25, align 8, !tbaa !102
  %26 = getelementptr inbounds %struct.bAnimContext, ptr %1, i64 0, i32 6
  store ptr %5, ptr %26, align 8, !tbaa !34
  %27 = icmp eq ptr %3, null
  br i1 %27, label %32, label %28

28:                                               ; preds = %23
  %29 = getelementptr inbounds %struct.ScrArea, ptr %3, i64 0, i32 8
  %30 = load i8, ptr %29, align 8, !tbaa !103
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
  %38 = load i16, ptr %37, align 2, !tbaa !105
  br label %39

39:                                               ; preds = %32, %36
  %40 = phi i16 [ %38, %36 ], [ 0, %32 ]
  %41 = getelementptr inbounds %struct.bAnimContext, ptr %1, i64 0, i32 4
  store i16 %40, ptr %41, align 2, !tbaa !107
  %42 = tail call zeroext i8 @ANIM_animdata_context_getdata(ptr noundef nonnull %1) #8, !range !41
  br label %43

43:                                               ; preds = %2, %39
  %44 = phi i8 [ %42, %39 ], [ 0, %2 ]
  ret i8 %44
}

; Function Attrs: optsize
declare ptr @CTX_wm_area(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @CTX_wm_region(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @CTX_wm_space_data(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @CTX_data_scene(ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #3

; Function Attrs: optsize
declare ptr @ED_context_get_markers(ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define dso_local i64 @ANIM_animdata_filter(ptr noundef %0, ptr noundef %1, i32 noundef %2, ptr noundef %3, i32 noundef %4) local_unnamed_addr #0 {
  %6 = alloca i64, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %6) #10
  store i64 0, ptr %6, align 8, !tbaa !108
  %7 = icmp ne ptr %3, null
  %8 = icmp ne ptr %1, null
  %9 = and i1 %8, %7
  br i1 %9, label %10, label %81

10:                                               ; preds = %5
  switch i32 %4, label %73 [
    i32 1, label %11
    i32 2, label %37
    i32 3, label %55
    i32 9, label %59
    i32 4, label %63
    i32 5, label %68
    i32 6, label %68
    i32 7, label %68
    i32 8, label %70
  ]

11:                                               ; preds = %10
  %12 = getelementptr inbounds %struct.bAnimContext, ptr %0, i64 0, i32 10
  %13 = load ptr, ptr %12, align 8, !tbaa !54
  %14 = getelementptr inbounds %struct.bAnimContext, ptr %0, i64 0, i32 6
  %15 = load ptr, ptr %14, align 8, !tbaa !34
  %16 = icmp eq ptr %15, null
  %17 = getelementptr inbounds %struct.SpaceAction, ptr %15, i64 0, i32 8
  %18 = select i1 %16, ptr null, ptr %17
  %19 = and i32 %2, 1024
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %32, label %21

21:                                               ; preds = %11
  %22 = getelementptr inbounds %struct.Object, ptr %13, i64 0, i32 1
  %23 = load ptr, ptr %22, align 8, !tbaa !55
  %24 = icmp eq ptr %23, null
  br i1 %24, label %75, label %25

25:                                               ; preds = %21
  %26 = and i32 %2, 1073741824
  %27 = icmp eq i32 %26, 0
  br i1 %27, label %28, label %81

28:                                               ; preds = %25
  %29 = tail call fastcc ptr @make_new_animlistelem(ptr noundef nonnull %23, i16 noundef signext 1, ptr noundef nonnull %13) #8
  %30 = icmp eq ptr %29, null
  br i1 %30, label %75, label %31

31:                                               ; preds = %28
  tail call void @BLI_addtail(ptr noundef nonnull %1, ptr noundef nonnull %29) #9
  br label %75

32:                                               ; preds = %11
  %33 = call fastcc signext i16 @animdata_filter_dopesheet_summary(ptr noundef nonnull %0, ptr noundef nonnull %1, i32 noundef %2, ptr noundef nonnull %6) #8, !range !109
  %34 = icmp eq i16 %33, 0
  br i1 %34, label %75, label %35

35:                                               ; preds = %32
  %36 = tail call fastcc i64 @animfilter_action(ptr noundef nonnull %0, ptr noundef nonnull %1, ptr noundef %18, ptr noundef nonnull %3, i32 noundef %2, ptr noundef %13) #8
  br label %75

37:                                               ; preds = %10
  %38 = and i32 %2, 1024
  %39 = icmp eq i32 %38, 0
  br i1 %39, label %51, label %40

40:                                               ; preds = %37
  %41 = getelementptr inbounds %struct.Key, ptr %3, i64 0, i32 1
  %42 = load ptr, ptr %41, align 8, !tbaa !64
  %43 = icmp eq ptr %42, null
  br i1 %43, label %75, label %44

44:                                               ; preds = %40
  %45 = and i32 %2, 1073741824
  %46 = icmp eq i32 %45, 0
  br i1 %46, label %47, label %81

47:                                               ; preds = %44
  %48 = tail call fastcc ptr @make_new_animlistelem(ptr noundef nonnull %42, i16 noundef signext 1, ptr noundef nonnull %3) #8
  %49 = icmp eq ptr %48, null
  br i1 %49, label %75, label %50

50:                                               ; preds = %47
  tail call void @BLI_addtail(ptr noundef nonnull %1, ptr noundef nonnull %48) #9
  br label %75

51:                                               ; preds = %37
  %52 = call fastcc signext i16 @animdata_filter_dopesheet_summary(ptr noundef %0, ptr noundef nonnull %1, i32 noundef %2, ptr noundef nonnull %6) #8, !range !109
  %53 = icmp eq i16 %52, 0
  br i1 %53, label %75, label %54

54:                                               ; preds = %51
  tail call fastcc void @animdata_filter_shapekey(ptr noundef %0, ptr noundef nonnull %1, ptr noundef nonnull %3, i32 noundef %2) #8
  br label %75

55:                                               ; preds = %10
  %56 = call fastcc signext i16 @animdata_filter_dopesheet_summary(ptr noundef %0, ptr noundef nonnull %1, i32 noundef %2, ptr noundef nonnull %6) #8, !range !109
  %57 = icmp eq i16 %56, 0
  br i1 %57, label %75, label %58

58:                                               ; preds = %55
  tail call fastcc void @animdata_filter_gpencil(ptr noundef nonnull %1, i32 noundef %2) #8
  br label %75

59:                                               ; preds = %10
  %60 = call fastcc signext i16 @animdata_filter_dopesheet_summary(ptr noundef %0, ptr noundef nonnull %1, i32 noundef %2, ptr noundef nonnull %6) #8, !range !109
  %61 = icmp eq i16 %60, 0
  br i1 %61, label %75, label %62

62:                                               ; preds = %59
  tail call fastcc void @animdata_filter_mask(ptr noundef nonnull %1, i32 noundef %2) #8
  br label %75

63:                                               ; preds = %10
  %64 = call fastcc signext i16 @animdata_filter_dopesheet_summary(ptr noundef %0, ptr noundef nonnull %1, i32 noundef %2, ptr noundef nonnull %6) #8, !range !109
  %65 = icmp eq i16 %64, 0
  br i1 %65, label %75, label %66

66:                                               ; preds = %63
  %67 = tail call fastcc i64 @animdata_filter_dopesheet(ptr noundef %0, ptr noundef nonnull %1, ptr noundef nonnull %3, i32 noundef %2) #8
  br label %75

68:                                               ; preds = %10, %10, %10
  %69 = tail call fastcc i64 @animdata_filter_dopesheet(ptr noundef %0, ptr noundef nonnull %1, ptr noundef nonnull %3, i32 noundef %2) #8
  br label %75

70:                                               ; preds = %10
  %71 = getelementptr inbounds %struct.bAnimContext, ptr %0, i64 0, i32 8
  %72 = load ptr, ptr %71, align 8, !tbaa !44
  tail call fastcc void @animdata_filter_animchan(ptr noundef %0, ptr noundef nonnull %1, ptr noundef %72, ptr noundef nonnull %3, i32 noundef %2) #8
  br label %75

73:                                               ; preds = %10
  %74 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str, i32 noundef %4) #8
  br label %75

75:                                               ; preds = %47, %50, %51, %54, %40, %28, %31, %32, %35, %21, %63, %66, %59, %62, %55, %58, %73, %70, %68
  %76 = tail call fastcc i64 @animdata_filter_remove_invalid(ptr noundef nonnull %1) #8
  %77 = and i32 %2, 2048
  %78 = icmp eq i32 %77, 0
  br i1 %78, label %81, label %79

79:                                               ; preds = %75
  %80 = tail call fastcc i64 @animdata_filter_remove_duplis(ptr noundef nonnull %1) #8
  br label %81

81:                                               ; preds = %5, %79, %75, %44, %25
  %82 = phi i64 [ 1, %25 ], [ 1, %44 ], [ %76, %75 ], [ %80, %79 ], [ 0, %5 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %6) #10
  ret i64 %82
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @make_new_animlistelem(ptr noundef %0, i16 noundef signext %1, ptr noundef %2) unnamed_addr #0 !PGOFuncName !110 {
  %4 = icmp eq ptr %0, null
  br i1 %4, label %333, label %5

5:                                                ; preds = %3
  %6 = load ptr, ptr @MEM_callocN, align 8, !tbaa !72
  %7 = tail call ptr %6(i64 noundef 64, ptr noundef nonnull @.str.3) #9
  %8 = getelementptr inbounds %struct.bAnimListElem, ptr %7, i64 0, i32 2
  store ptr %0, ptr %8, align 8, !tbaa !111
  %9 = zext nneg i16 %1 to i32
  %10 = getelementptr inbounds %struct.bAnimListElem, ptr %7, i64 0, i32 3
  store i32 %9, ptr %10, align 8, !tbaa !113
  %11 = getelementptr inbounds %struct.bAnimListElem, ptr %7, i64 0, i32 9
  store ptr %2, ptr %11, align 8, !tbaa !114
  %12 = tail call ptr @BKE_animdata_from_id(ptr noundef %2) #9
  %13 = getelementptr inbounds %struct.bAnimListElem, ptr %7, i64 0, i32 10
  store ptr %12, ptr %13, align 8, !tbaa !115
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
  store ptr null, ptr %15, align 8, !tbaa !116
  %16 = getelementptr inbounds %struct.bAnimListElem, ptr %7, i64 0, i32 7
  store i16 5, ptr %16, align 2, !tbaa !117
  br label %333

17:                                               ; preds = %5
  %18 = getelementptr inbounds %struct.Scene, ptr %0, i64 0, i32 15
  %19 = load i16, ptr %18, align 4, !tbaa !118
  %20 = sext i16 %19 to i32
  %21 = getelementptr inbounds %struct.bAnimListElem, ptr %7, i64 0, i32 4
  store i32 %20, ptr %21, align 4, !tbaa !119
  %22 = getelementptr inbounds %struct.bAnimListElem, ptr %7, i64 0, i32 8
  store ptr %0, ptr %22, align 8, !tbaa !116
  %23 = getelementptr inbounds %struct.bAnimListElem, ptr %7, i64 0, i32 7
  store i16 6, ptr %23, align 2, !tbaa !117
  %24 = tail call ptr @BKE_animdata_from_id(ptr noundef nonnull %0) #9
  store ptr %24, ptr %13, align 8, !tbaa !115
  br label %333

25:                                               ; preds = %5
  %26 = getelementptr inbounds %struct.Base, ptr %0, i64 0, i32 7
  %27 = load ptr, ptr %26, align 8, !tbaa !99
  %28 = getelementptr inbounds %struct.Object, ptr %27, i64 0, i32 53
  %29 = load i16, ptr %28, align 4, !tbaa !120
  %30 = sext i16 %29 to i32
  %31 = getelementptr inbounds %struct.bAnimListElem, ptr %7, i64 0, i32 4
  store i32 %30, ptr %31, align 4, !tbaa !119
  %32 = getelementptr inbounds %struct.bAnimListElem, ptr %7, i64 0, i32 8
  store ptr %27, ptr %32, align 8, !tbaa !116
  %33 = getelementptr inbounds %struct.bAnimListElem, ptr %7, i64 0, i32 7
  store i16 7, ptr %33, align 2, !tbaa !117
  %34 = tail call ptr @BKE_animdata_from_id(ptr noundef %27) #9
  store ptr %34, ptr %13, align 8, !tbaa !115
  br label %333

35:                                               ; preds = %5
  %36 = getelementptr inbounds %struct.bAction, ptr %0, i64 0, i32 5
  %37 = load i32, ptr %36, align 8, !tbaa !121
  %38 = getelementptr inbounds %struct.bAnimListElem, ptr %7, i64 0, i32 4
  store i32 %37, ptr %38, align 4, !tbaa !119
  %39 = getelementptr inbounds %struct.bAnimListElem, ptr %7, i64 0, i32 8
  store ptr %0, ptr %39, align 8, !tbaa !116
  %40 = getelementptr inbounds %struct.bAnimListElem, ptr %7, i64 0, i32 7
  store i16 8, ptr %40, align 2, !tbaa !117
  br label %333

41:                                               ; preds = %5
  %42 = getelementptr inbounds %struct.AnimData, ptr %0, i64 0, i32 7
  %43 = load i32, ptr %42, align 8, !tbaa !123
  %44 = getelementptr inbounds %struct.bAnimListElem, ptr %7, i64 0, i32 4
  store i32 %43, ptr %44, align 4, !tbaa !119
  %45 = getelementptr inbounds %struct.bAnimListElem, ptr %7, i64 0, i32 8
  store ptr null, ptr %45, align 8, !tbaa !116
  %46 = getelementptr inbounds %struct.bAnimListElem, ptr %7, i64 0, i32 7
  store i16 0, ptr %46, align 2, !tbaa !117
  br label %333

47:                                               ; preds = %5
  %48 = getelementptr inbounds %struct.Material, ptr %0, i64 0, i32 1
  %49 = load ptr, ptr %48, align 8, !tbaa !124
  %50 = getelementptr inbounds %struct.Material, ptr %0, i64 0, i32 3
  %51 = load i16, ptr %50, align 2, !tbaa !128
  %52 = and i16 %51, 2
  %53 = zext nneg i16 %52 to i32
  %54 = getelementptr inbounds %struct.bAnimListElem, ptr %7, i64 0, i32 4
  store i32 %53, ptr %54, align 4, !tbaa !119
  %55 = icmp eq ptr %49, null
  br i1 %55, label %58, label %56

56:                                               ; preds = %47
  %57 = load ptr, ptr %49, align 8, !tbaa !60
  br label %58

58:                                               ; preds = %47, %56
  %59 = phi ptr [ %57, %56 ], [ null, %47 ]
  %60 = getelementptr inbounds %struct.bAnimListElem, ptr %7, i64 0, i32 8
  store ptr %59, ptr %60, align 8, !tbaa !116
  %61 = getelementptr inbounds %struct.bAnimListElem, ptr %7, i64 0, i32 7
  store i16 8, ptr %61, align 2, !tbaa !117
  %62 = tail call ptr @BKE_animdata_from_id(ptr noundef nonnull %0) #9
  store ptr %62, ptr %13, align 8, !tbaa !115
  br label %333

63:                                               ; preds = %5
  %64 = getelementptr inbounds %struct.Lamp, ptr %0, i64 0, i32 1
  %65 = load ptr, ptr %64, align 8, !tbaa !129
  %66 = getelementptr inbounds %struct.Lamp, ptr %0, i64 0, i32 3
  %67 = load i16, ptr %66, align 2, !tbaa !131
  %68 = and i16 %67, 1
  %69 = zext nneg i16 %68 to i32
  %70 = getelementptr inbounds %struct.bAnimListElem, ptr %7, i64 0, i32 4
  store i32 %69, ptr %70, align 4, !tbaa !119
  %71 = icmp eq ptr %65, null
  br i1 %71, label %74, label %72

72:                                               ; preds = %63
  %73 = load ptr, ptr %65, align 8, !tbaa !60
  br label %74

74:                                               ; preds = %63, %72
  %75 = phi ptr [ %73, %72 ], [ null, %63 ]
  %76 = getelementptr inbounds %struct.bAnimListElem, ptr %7, i64 0, i32 8
  store ptr %75, ptr %76, align 8, !tbaa !116
  %77 = getelementptr inbounds %struct.bAnimListElem, ptr %7, i64 0, i32 7
  store i16 8, ptr %77, align 2, !tbaa !117
  %78 = tail call ptr @BKE_animdata_from_id(ptr noundef nonnull %0) #9
  store ptr %78, ptr %13, align 8, !tbaa !115
  br label %333

79:                                               ; preds = %5
  %80 = getelementptr inbounds %struct.Camera, ptr %0, i64 0, i32 1
  %81 = load ptr, ptr %80, align 8, !tbaa !132
  %82 = getelementptr inbounds %struct.Camera, ptr %0, i64 0, i32 4
  %83 = load i16, ptr %82, align 2, !tbaa !134
  %84 = and i16 %83, 64
  %85 = zext nneg i16 %84 to i32
  %86 = getelementptr inbounds %struct.bAnimListElem, ptr %7, i64 0, i32 4
  store i32 %85, ptr %86, align 4, !tbaa !119
  %87 = icmp eq ptr %81, null
  br i1 %87, label %90, label %88

88:                                               ; preds = %79
  %89 = load ptr, ptr %81, align 8, !tbaa !60
  br label %90

90:                                               ; preds = %79, %88
  %91 = phi ptr [ %89, %88 ], [ null, %79 ]
  %92 = getelementptr inbounds %struct.bAnimListElem, ptr %7, i64 0, i32 8
  store ptr %91, ptr %92, align 8, !tbaa !116
  %93 = getelementptr inbounds %struct.bAnimListElem, ptr %7, i64 0, i32 7
  store i16 8, ptr %93, align 2, !tbaa !117
  %94 = tail call ptr @BKE_animdata_from_id(ptr noundef nonnull %0) #9
  store ptr %94, ptr %13, align 8, !tbaa !115
  br label %333

95:                                               ; preds = %5
  %96 = getelementptr inbounds %struct.Curve, ptr %0, i64 0, i32 1
  %97 = load ptr, ptr %96, align 8, !tbaa !135
  %98 = getelementptr inbounds %struct.Curve, ptr %0, i64 0, i32 23
  %99 = load i32, ptr %98, align 4, !tbaa !138
  %100 = and i32 %99, 2048
  %101 = getelementptr inbounds %struct.bAnimListElem, ptr %7, i64 0, i32 4
  store i32 %100, ptr %101, align 4, !tbaa !119
  %102 = icmp eq ptr %97, null
  br i1 %102, label %105, label %103

103:                                              ; preds = %95
  %104 = load ptr, ptr %97, align 8, !tbaa !60
  br label %105

105:                                              ; preds = %95, %103
  %106 = phi ptr [ %104, %103 ], [ null, %95 ]
  %107 = getelementptr inbounds %struct.bAnimListElem, ptr %7, i64 0, i32 8
  store ptr %106, ptr %107, align 8, !tbaa !116
  %108 = getelementptr inbounds %struct.bAnimListElem, ptr %7, i64 0, i32 7
  store i16 8, ptr %108, align 2, !tbaa !117
  %109 = tail call ptr @BKE_animdata_from_id(ptr noundef nonnull %0) #9
  store ptr %109, ptr %13, align 8, !tbaa !115
  br label %333

110:                                              ; preds = %5
  %111 = getelementptr inbounds %struct.bArmature, ptr %0, i64 0, i32 1
  %112 = load ptr, ptr %111, align 8, !tbaa !139
  %113 = getelementptr inbounds %struct.bArmature, ptr %0, i64 0, i32 8
  %114 = load i32, ptr %113, align 8, !tbaa !141
  %115 = and i32 %114, 8192
  %116 = getelementptr inbounds %struct.bAnimListElem, ptr %7, i64 0, i32 4
  store i32 %115, ptr %116, align 4, !tbaa !119
  %117 = icmp eq ptr %112, null
  br i1 %117, label %120, label %118

118:                                              ; preds = %110
  %119 = load ptr, ptr %112, align 8, !tbaa !60
  br label %120

120:                                              ; preds = %110, %118
  %121 = phi ptr [ %119, %118 ], [ null, %110 ]
  %122 = getelementptr inbounds %struct.bAnimListElem, ptr %7, i64 0, i32 8
  store ptr %121, ptr %122, align 8, !tbaa !116
  %123 = getelementptr inbounds %struct.bAnimListElem, ptr %7, i64 0, i32 7
  store i16 8, ptr %123, align 2, !tbaa !117
  %124 = tail call ptr @BKE_animdata_from_id(ptr noundef nonnull %0) #9
  store ptr %124, ptr %13, align 8, !tbaa !115
  br label %333

125:                                              ; preds = %5
  %126 = getelementptr inbounds %struct.Mesh, ptr %0, i64 0, i32 1
  %127 = load ptr, ptr %126, align 8, !tbaa !142
  %128 = getelementptr inbounds %struct.Mesh, ptr %0, i64 0, i32 38
  %129 = load i16, ptr %128, align 2, !tbaa !145
  %130 = and i16 %129, 512
  %131 = zext nneg i16 %130 to i32
  %132 = getelementptr inbounds %struct.bAnimListElem, ptr %7, i64 0, i32 4
  store i32 %131, ptr %132, align 4, !tbaa !119
  %133 = icmp eq ptr %127, null
  br i1 %133, label %136, label %134

134:                                              ; preds = %125
  %135 = load ptr, ptr %127, align 8, !tbaa !60
  br label %136

136:                                              ; preds = %125, %134
  %137 = phi ptr [ %135, %134 ], [ null, %125 ]
  %138 = getelementptr inbounds %struct.bAnimListElem, ptr %7, i64 0, i32 8
  store ptr %137, ptr %138, align 8, !tbaa !116
  %139 = getelementptr inbounds %struct.bAnimListElem, ptr %7, i64 0, i32 7
  store i16 8, ptr %139, align 2, !tbaa !117
  %140 = tail call ptr @BKE_animdata_from_id(ptr noundef nonnull %0) #9
  store ptr %140, ptr %13, align 8, !tbaa !115
  br label %333

141:                                              ; preds = %5
  %142 = getelementptr inbounds %struct.Lattice, ptr %0, i64 0, i32 1
  %143 = load ptr, ptr %142, align 8, !tbaa !146
  %144 = getelementptr inbounds %struct.Lattice, ptr %0, i64 0, i32 5
  %145 = load i16, ptr %144, align 2, !tbaa !148
  %146 = and i16 %145, 4
  %147 = zext nneg i16 %146 to i32
  %148 = getelementptr inbounds %struct.bAnimListElem, ptr %7, i64 0, i32 4
  store i32 %147, ptr %148, align 4, !tbaa !119
  %149 = icmp eq ptr %143, null
  br i1 %149, label %152, label %150

150:                                              ; preds = %141
  %151 = load ptr, ptr %143, align 8, !tbaa !60
  br label %152

152:                                              ; preds = %141, %150
  %153 = phi ptr [ %151, %150 ], [ null, %141 ]
  %154 = getelementptr inbounds %struct.bAnimListElem, ptr %7, i64 0, i32 8
  store ptr %153, ptr %154, align 8, !tbaa !116
  %155 = getelementptr inbounds %struct.bAnimListElem, ptr %7, i64 0, i32 7
  store i16 8, ptr %155, align 2, !tbaa !117
  %156 = tail call ptr @BKE_animdata_from_id(ptr noundef nonnull %0) #9
  store ptr %156, ptr %13, align 8, !tbaa !115
  br label %333

157:                                              ; preds = %5
  %158 = getelementptr inbounds %struct.Speaker, ptr %0, i64 0, i32 1
  %159 = load ptr, ptr %158, align 8, !tbaa !149
  %160 = getelementptr inbounds %struct.Speaker, ptr %0, i64 0, i32 13
  %161 = load i16, ptr %160, align 8, !tbaa !151
  %162 = and i16 %161, 1
  %163 = zext nneg i16 %162 to i32
  %164 = getelementptr inbounds %struct.bAnimListElem, ptr %7, i64 0, i32 4
  store i32 %163, ptr %164, align 4, !tbaa !119
  %165 = icmp eq ptr %159, null
  br i1 %165, label %168, label %166

166:                                              ; preds = %157
  %167 = load ptr, ptr %159, align 8, !tbaa !60
  br label %168

168:                                              ; preds = %157, %166
  %169 = phi ptr [ %167, %166 ], [ null, %157 ]
  %170 = getelementptr inbounds %struct.bAnimListElem, ptr %7, i64 0, i32 8
  store ptr %169, ptr %170, align 8, !tbaa !116
  %171 = getelementptr inbounds %struct.bAnimListElem, ptr %7, i64 0, i32 7
  store i16 8, ptr %171, align 2, !tbaa !117
  %172 = tail call ptr @BKE_animdata_from_id(ptr noundef nonnull %0) #9
  store ptr %172, ptr %13, align 8, !tbaa !115
  br label %333

173:                                              ; preds = %5
  %174 = getelementptr inbounds %struct.Key, ptr %0, i64 0, i32 1
  %175 = load ptr, ptr %174, align 8, !tbaa !64
  %176 = getelementptr inbounds %struct.Key, ptr %0, i64 0, i32 12
  %177 = load i16, ptr %176, align 2, !tbaa !152
  %178 = and i16 %177, 1
  %179 = zext nneg i16 %178 to i32
  %180 = getelementptr inbounds %struct.bAnimListElem, ptr %7, i64 0, i32 4
  store i32 %179, ptr %180, align 4, !tbaa !119
  %181 = icmp eq ptr %175, null
  br i1 %181, label %184, label %182

182:                                              ; preds = %173
  %183 = load ptr, ptr %175, align 8, !tbaa !60
  br label %184

184:                                              ; preds = %173, %182
  %185 = phi ptr [ %183, %182 ], [ null, %173 ]
  %186 = getelementptr inbounds %struct.bAnimListElem, ptr %7, i64 0, i32 8
  store ptr %185, ptr %186, align 8, !tbaa !116
  %187 = getelementptr inbounds %struct.bAnimListElem, ptr %7, i64 0, i32 7
  store i16 8, ptr %187, align 2, !tbaa !117
  %188 = tail call ptr @BKE_animdata_from_id(ptr noundef nonnull %0) #9
  store ptr %188, ptr %13, align 8, !tbaa !115
  br label %333

189:                                              ; preds = %5
  %190 = getelementptr inbounds %struct.World, ptr %0, i64 0, i32 1
  %191 = load ptr, ptr %190, align 8, !tbaa !153
  %192 = getelementptr inbounds %struct.World, ptr %0, i64 0, i32 66
  %193 = load i16, ptr %192, align 2, !tbaa !155
  %194 = and i16 %193, 1
  %195 = zext nneg i16 %194 to i32
  %196 = getelementptr inbounds %struct.bAnimListElem, ptr %7, i64 0, i32 4
  store i32 %195, ptr %196, align 4, !tbaa !119
  %197 = icmp eq ptr %191, null
  br i1 %197, label %200, label %198

198:                                              ; preds = %189
  %199 = load ptr, ptr %191, align 8, !tbaa !60
  br label %200

200:                                              ; preds = %189, %198
  %201 = phi ptr [ %199, %198 ], [ null, %189 ]
  %202 = getelementptr inbounds %struct.bAnimListElem, ptr %7, i64 0, i32 8
  store ptr %201, ptr %202, align 8, !tbaa !116
  %203 = getelementptr inbounds %struct.bAnimListElem, ptr %7, i64 0, i32 7
  store i16 8, ptr %203, align 2, !tbaa !117
  %204 = tail call ptr @BKE_animdata_from_id(ptr noundef nonnull %0) #9
  store ptr %204, ptr %13, align 8, !tbaa !115
  br label %333

205:                                              ; preds = %5
  %206 = getelementptr inbounds %struct.bNodeTree, ptr %0, i64 0, i32 1
  %207 = load ptr, ptr %206, align 8, !tbaa !156
  %208 = getelementptr inbounds %struct.bNodeTree, ptr %0, i64 0, i32 12
  %209 = load i32, ptr %208, align 4, !tbaa !159
  %210 = and i32 %209, 1
  %211 = getelementptr inbounds %struct.bAnimListElem, ptr %7, i64 0, i32 4
  store i32 %210, ptr %211, align 4, !tbaa !119
  %212 = icmp eq ptr %207, null
  br i1 %212, label %215, label %213

213:                                              ; preds = %205
  %214 = load ptr, ptr %207, align 8, !tbaa !60
  br label %215

215:                                              ; preds = %205, %213
  %216 = phi ptr [ %214, %213 ], [ null, %205 ]
  %217 = getelementptr inbounds %struct.bAnimListElem, ptr %7, i64 0, i32 8
  store ptr %216, ptr %217, align 8, !tbaa !116
  %218 = getelementptr inbounds %struct.bAnimListElem, ptr %7, i64 0, i32 7
  store i16 8, ptr %218, align 2, !tbaa !117
  %219 = tail call ptr @BKE_animdata_from_id(ptr noundef nonnull %0) #9
  store ptr %219, ptr %13, align 8, !tbaa !115
  br label %333

220:                                              ; preds = %5
  %221 = getelementptr inbounds %struct.FreestyleLineStyle, ptr %0, i64 0, i32 1
  %222 = load ptr, ptr %221, align 8, !tbaa !160
  %223 = getelementptr inbounds %struct.FreestyleLineStyle, ptr %0, i64 0, i32 9
  %224 = load i32, ptr %223, align 4, !tbaa !162
  %225 = and i32 %224, 1
  %226 = getelementptr inbounds %struct.bAnimListElem, ptr %7, i64 0, i32 4
  store i32 %225, ptr %226, align 4, !tbaa !119
  %227 = icmp eq ptr %222, null
  br i1 %227, label %230, label %228

228:                                              ; preds = %220
  %229 = load ptr, ptr %222, align 8, !tbaa !60
  br label %230

230:                                              ; preds = %220, %228
  %231 = phi ptr [ %229, %228 ], [ null, %220 ]
  %232 = getelementptr inbounds %struct.bAnimListElem, ptr %7, i64 0, i32 8
  store ptr %231, ptr %232, align 8, !tbaa !116
  %233 = getelementptr inbounds %struct.bAnimListElem, ptr %7, i64 0, i32 7
  store i16 8, ptr %233, align 2, !tbaa !117
  %234 = tail call ptr @BKE_animdata_from_id(ptr noundef nonnull %0) #9
  store ptr %234, ptr %13, align 8, !tbaa !115
  br label %333

235:                                              ; preds = %5
  %236 = load ptr, ptr %8, align 8, !tbaa !111
  %237 = getelementptr inbounds %struct.ParticleSettings, ptr %236, i64 0, i32 1
  %238 = load ptr, ptr %237, align 8, !tbaa !163
  %239 = getelementptr inbounds %struct.ParticleSettings, ptr %236, i64 0, i32 5
  %240 = load i32, ptr %239, align 8, !tbaa !165
  %241 = and i32 %240, 8
  %242 = getelementptr inbounds %struct.bAnimListElem, ptr %7, i64 0, i32 4
  store i32 %241, ptr %242, align 4, !tbaa !119
  %243 = icmp eq ptr %238, null
  br i1 %243, label %246, label %244

244:                                              ; preds = %235
  %245 = load ptr, ptr %238, align 8, !tbaa !60
  br label %246

246:                                              ; preds = %235, %244
  %247 = phi ptr [ %245, %244 ], [ null, %235 ]
  %248 = getelementptr inbounds %struct.bAnimListElem, ptr %7, i64 0, i32 8
  store ptr %247, ptr %248, align 8, !tbaa !116
  %249 = getelementptr inbounds %struct.bAnimListElem, ptr %7, i64 0, i32 7
  store i16 8, ptr %249, align 2, !tbaa !117
  %250 = tail call ptr @BKE_animdata_from_id(ptr noundef nonnull %0) #9
  store ptr %250, ptr %13, align 8, !tbaa !115
  br label %333

251:                                              ; preds = %5
  %252 = getelementptr inbounds %struct.Tex, ptr %0, i64 0, i32 1
  %253 = load ptr, ptr %252, align 8, !tbaa !166
  %254 = getelementptr inbounds %struct.Tex, ptr %0, i64 0, i32 31
  %255 = load i16, ptr %254, align 2, !tbaa !169
  %256 = and i16 %255, 512
  %257 = zext nneg i16 %256 to i32
  %258 = getelementptr inbounds %struct.bAnimListElem, ptr %7, i64 0, i32 4
  store i32 %257, ptr %258, align 4, !tbaa !119
  %259 = icmp eq ptr %253, null
  br i1 %259, label %262, label %260

260:                                              ; preds = %251
  %261 = load ptr, ptr %253, align 8, !tbaa !60
  br label %262

262:                                              ; preds = %251, %260
  %263 = phi ptr [ %261, %260 ], [ null, %251 ]
  %264 = getelementptr inbounds %struct.bAnimListElem, ptr %7, i64 0, i32 8
  store ptr %263, ptr %264, align 8, !tbaa !116
  %265 = getelementptr inbounds %struct.bAnimListElem, ptr %7, i64 0, i32 7
  store i16 8, ptr %265, align 2, !tbaa !117
  %266 = tail call ptr @BKE_animdata_from_id(ptr noundef nonnull %0) #9
  store ptr %266, ptr %13, align 8, !tbaa !115
  br label %333

267:                                              ; preds = %5
  %268 = getelementptr inbounds %struct.bActionGroup, ptr %0, i64 0, i32 3
  %269 = load i32, ptr %268, align 8, !tbaa !170
  %270 = getelementptr inbounds %struct.bAnimListElem, ptr %7, i64 0, i32 4
  store i32 %269, ptr %270, align 4, !tbaa !119
  %271 = getelementptr inbounds %struct.bAnimListElem, ptr %7, i64 0, i32 8
  store ptr null, ptr %271, align 8, !tbaa !116
  %272 = getelementptr inbounds %struct.bAnimListElem, ptr %7, i64 0, i32 7
  store i16 9, ptr %272, align 2, !tbaa !117
  br label %333

273:                                              ; preds = %5
  %274 = getelementptr inbounds %struct.FCurve, ptr %0, i64 0, i32 9
  %275 = load i16, ptr %274, align 8, !tbaa !173
  %276 = sext i16 %275 to i32
  %277 = getelementptr inbounds %struct.bAnimListElem, ptr %7, i64 0, i32 4
  store i32 %276, ptr %277, align 4, !tbaa !119
  %278 = getelementptr inbounds %struct.bAnimListElem, ptr %7, i64 0, i32 8
  store ptr %0, ptr %278, align 8, !tbaa !116
  %279 = getelementptr inbounds %struct.bAnimListElem, ptr %7, i64 0, i32 7
  store i16 1, ptr %279, align 2, !tbaa !117
  br label %333

280:                                              ; preds = %5
  %281 = load ptr, ptr %11, align 8, !tbaa !114
  %282 = getelementptr inbounds %struct.KeyBlock, ptr %0, i64 0, i32 7
  %283 = load i16, ptr %282, align 2, !tbaa !175
  %284 = sext i16 %283 to i32
  %285 = getelementptr inbounds %struct.bAnimListElem, ptr %7, i64 0, i32 4
  store i32 %284, ptr %285, align 4, !tbaa !119
  %286 = icmp eq ptr %281, null
  br i1 %286, label %333, label %287

287:                                              ; preds = %280
  %288 = getelementptr inbounds %struct.Key, ptr %281, i64 0, i32 6
  %289 = tail call i32 @BLI_findindex(ptr noundef nonnull %288, ptr noundef nonnull %0) #9
  %290 = getelementptr inbounds %struct.bAnimListElem, ptr %7, i64 0, i32 5
  store i32 %289, ptr %290, align 8, !tbaa !177
  %291 = load ptr, ptr %13, align 8, !tbaa !115
  %292 = icmp eq ptr %291, null
  br i1 %292, label %304, label %293

293:                                              ; preds = %287
  %294 = load ptr, ptr %291, align 8, !tbaa !60
  %295 = icmp eq ptr %294, null
  br i1 %295, label %304, label %296

296:                                              ; preds = %293
  %297 = tail call ptr @BKE_keyblock_curval_rnapath_get(ptr noundef nonnull %281, ptr noundef nonnull %0) #9
  %298 = icmp eq ptr %297, null
  br i1 %298, label %304, label %299

299:                                              ; preds = %296
  %300 = getelementptr inbounds %struct.bAction, ptr %294, i64 0, i32 1
  %301 = tail call ptr @list_find_fcurve(ptr noundef nonnull %300, ptr noundef nonnull %297, i32 noundef 0) #9
  %302 = getelementptr inbounds %struct.bAnimListElem, ptr %7, i64 0, i32 8
  store ptr %301, ptr %302, align 8, !tbaa !116
  %303 = load ptr, ptr @MEM_freeN, align 8, !tbaa !72
  tail call void %303(ptr noundef nonnull %297) #9
  br label %304

304:                                              ; preds = %296, %299, %293, %287
  %305 = getelementptr inbounds %struct.bAnimListElem, ptr %7, i64 0, i32 8
  %306 = load ptr, ptr %305, align 8, !tbaa !116
  %307 = icmp ne ptr %306, null
  %308 = zext i1 %307 to i16
  %309 = getelementptr inbounds %struct.bAnimListElem, ptr %7, i64 0, i32 7
  store i16 %308, ptr %309, align 2, !tbaa !117
  br label %333

310:                                              ; preds = %5
  %311 = getelementptr inbounds %struct.bGPDlayer, ptr %0, i64 0, i32 4
  %312 = load i32, ptr %311, align 8, !tbaa !178
  %313 = getelementptr inbounds %struct.bAnimListElem, ptr %7, i64 0, i32 4
  store i32 %312, ptr %313, align 4, !tbaa !119
  %314 = getelementptr inbounds %struct.bAnimListElem, ptr %7, i64 0, i32 8
  store ptr null, ptr %314, align 8, !tbaa !116
  %315 = getelementptr inbounds %struct.bAnimListElem, ptr %7, i64 0, i32 7
  store i16 2, ptr %315, align 2, !tbaa !117
  br label %333

316:                                              ; preds = %5
  %317 = getelementptr inbounds %struct.MaskLayer, ptr %0, i64 0, i32 12
  %318 = load i8, ptr %317, align 2, !tbaa !180
  %319 = zext i8 %318 to i32
  %320 = getelementptr inbounds %struct.bAnimListElem, ptr %7, i64 0, i32 4
  store i32 %319, ptr %320, align 4, !tbaa !119
  %321 = getelementptr inbounds %struct.bAnimListElem, ptr %7, i64 0, i32 8
  store ptr null, ptr %321, align 8, !tbaa !116
  %322 = getelementptr inbounds %struct.bAnimListElem, ptr %7, i64 0, i32 7
  store i16 3, ptr %322, align 2, !tbaa !117
  br label %333

323:                                              ; preds = %5
  %324 = getelementptr inbounds %struct.NlaTrack, ptr %0, i64 0, i32 3
  %325 = load i32, ptr %324, align 8, !tbaa !182
  %326 = getelementptr inbounds %struct.bAnimListElem, ptr %7, i64 0, i32 4
  store i32 %325, ptr %326, align 4, !tbaa !119
  %327 = getelementptr inbounds %struct.NlaTrack, ptr %0, i64 0, i32 2
  %328 = getelementptr inbounds %struct.bAnimListElem, ptr %7, i64 0, i32 8
  store ptr %327, ptr %328, align 8, !tbaa !116
  %329 = getelementptr inbounds %struct.bAnimListElem, ptr %7, i64 0, i32 7
  store i16 4, ptr %329, align 2, !tbaa !117
  br label %333

330:                                              ; preds = %5
  %331 = getelementptr inbounds %struct.bAnimListElem, ptr %7, i64 0, i32 8
  store ptr null, ptr %331, align 8, !tbaa !116
  %332 = getelementptr inbounds %struct.bAnimListElem, ptr %7, i64 0, i32 7
  store i16 0, ptr %332, align 2, !tbaa !117
  br label %333

333:                                              ; preds = %280, %304, %14, %17, %25, %35, %41, %58, %74, %90, %105, %120, %136, %152, %168, %184, %200, %215, %230, %246, %262, %267, %273, %310, %316, %323, %330, %5, %3
  %334 = phi ptr [ %7, %5 ], [ %7, %330 ], [ %7, %323 ], [ %7, %316 ], [ %7, %310 ], [ %7, %273 ], [ %7, %267 ], [ %7, %262 ], [ %7, %246 ], [ %7, %230 ], [ %7, %215 ], [ %7, %200 ], [ %7, %184 ], [ %7, %168 ], [ %7, %152 ], [ %7, %136 ], [ %7, %120 ], [ %7, %105 ], [ %7, %90 ], [ %7, %74 ], [ %7, %58 ], [ %7, %41 ], [ %7, %35 ], [ %7, %25 ], [ %7, %17 ], [ %7, %14 ], [ null, %3 ], [ %7, %304 ], [ %7, %280 ]
  ret ptr %334
}

; Function Attrs: optsize
declare void @BLI_addtail(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc noundef signext i16 @animdata_filter_dopesheet_summary(ptr noundef %0, ptr noundef %1, i32 noundef %2, ptr nocapture noundef %3) unnamed_addr #0 !PGOFuncName !184 {
  %5 = icmp eq ptr %0, null
  br i1 %5, label %34, label %6

6:                                                ; preds = %4
  %7 = getelementptr inbounds %struct.bAnimContext, ptr %0, i64 0, i32 6
  %8 = load ptr, ptr %7, align 8, !tbaa !34
  %9 = icmp eq ptr %8, null
  br i1 %9, label %34, label %10

10:                                               ; preds = %6
  %11 = getelementptr inbounds %struct.bAnimContext, ptr %0, i64 0, i32 3
  %12 = load i16, ptr %11, align 4, !tbaa !40
  %13 = icmp eq i16 %12, 12
  br i1 %13, label %14, label %34

14:                                               ; preds = %10
  %15 = and i32 %2, 8
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %33, label %17

17:                                               ; preds = %14
  %18 = getelementptr inbounds %struct.SpaceAction, ptr %8, i64 0, i32 8, i32 4
  %19 = load i32, ptr %18, align 8, !tbaa !75
  %20 = and i32 %19, 16
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %33, label %22

22:                                               ; preds = %17
  %23 = tail call fastcc ptr @make_new_animlistelem(ptr noundef nonnull %0, i16 noundef signext 3, ptr noundef null) #8
  %24 = icmp eq ptr %23, null
  br i1 %24, label %28, label %25

25:                                               ; preds = %22
  tail call void @BLI_addtail(ptr noundef %1, ptr noundef nonnull %23) #9
  %26 = load i64, ptr %3, align 8, !tbaa !108
  %27 = add i64 %26, 1
  store i64 %27, ptr %3, align 8, !tbaa !108
  br label %28

28:                                               ; preds = %25, %22
  %29 = getelementptr inbounds %struct.SpaceAction, ptr %8, i64 0, i32 8, i32 5
  %30 = load i32, ptr %29, align 4, !tbaa !185
  %31 = and i32 %30, 1
  %32 = icmp eq i32 %31, 0
  br i1 %32, label %33, label %34

33:                                               ; preds = %28, %17, %14
  br label %34

34:                                               ; preds = %4, %6, %10, %28, %33
  %35 = phi i16 [ 1, %33 ], [ 0, %28 ], [ 1, %10 ], [ 1, %6 ], [ 1, %4 ]
  ret i16 %35
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc i64 @animfilter_action(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr nocapture noundef readonly %3, i32 noundef %4, ptr noundef %5) unnamed_addr #0 !PGOFuncName !186 {
  %7 = and i32 %4, 256
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %13, label %9

9:                                                ; preds = %6
  %10 = getelementptr inbounds %struct.ID, ptr %3, i64 0, i32 3
  %11 = load ptr, ptr %10, align 8, !tbaa !187
  %12 = icmp eq ptr %11, null
  br i1 %12, label %13, label %41

13:                                               ; preds = %9, %6
  %14 = getelementptr inbounds %struct.bAction, ptr %3, i64 0, i32 3
  %15 = load ptr, ptr %14, align 8, !tbaa !72
  %16 = icmp eq ptr %15, null
  br i1 %16, label %29, label %17

17:                                               ; preds = %13, %17
  %18 = phi ptr [ %27, %17 ], [ %15, %13 ]
  %19 = phi i64 [ %26, %17 ], [ 0, %13 ]
  %20 = phi ptr [ %24, %17 ], [ null, %13 ]
  %21 = getelementptr inbounds %struct.bActionGroup, ptr %18, i64 0, i32 2, i32 1
  %22 = load ptr, ptr %21, align 8, !tbaa !188
  %23 = icmp eq ptr %22, null
  %24 = select i1 %23, ptr %20, ptr %22
  %25 = tail call fastcc i64 @animfilter_act_group(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef nonnull %18, i32 noundef %4, ptr noundef %5) #8
  %26 = add i64 %25, %19
  %27 = load ptr, ptr %18, align 8, !tbaa !72
  %28 = icmp eq ptr %27, null
  br i1 %28, label %29, label %17, !llvm.loop !189

29:                                               ; preds = %17, %13
  %30 = phi ptr [ null, %13 ], [ %24, %17 ]
  %31 = phi i64 [ 0, %13 ], [ %26, %17 ]
  %32 = and i32 %4, 32
  %33 = icmp eq i32 %32, 0
  br i1 %33, label %34, label %41

34:                                               ; preds = %29
  %35 = icmp eq ptr %30, null
  %36 = getelementptr inbounds %struct.bAction, ptr %3, i64 0, i32 1
  %37 = select i1 %35, ptr %36, ptr %30
  %38 = load ptr, ptr %37, align 8, !tbaa !72
  %39 = tail call fastcc i64 @animfilter_fcurves(ptr noundef %1, ptr noundef %2, ptr noundef %38, ptr noundef null, i32 noundef %4, ptr noundef %5) #8
  %40 = add i64 %39, %31
  br label %41

41:                                               ; preds = %29, %34, %9
  %42 = phi i64 [ 0, %9 ], [ %31, %29 ], [ %40, %34 ]
  ret i64 %42
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @animdata_filter_shapekey(ptr noundef %0, ptr noundef %1, ptr noundef %2, i32 noundef %3) unnamed_addr #0 !PGOFuncName !191 {
  %5 = and i32 %3, 8
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %56, label %7

7:                                                ; preds = %4
  %8 = getelementptr inbounds %struct.Key, ptr %2, i64 0, i32 6
  %9 = load ptr, ptr %8, align 8, !tbaa !72
  %10 = icmp eq ptr %9, null
  br i1 %10, label %96, label %11

11:                                               ; preds = %7
  %12 = and i32 %3, 256
  %13 = icmp eq i32 %12, 0
  %14 = and i32 %3, 192
  %15 = icmp eq i32 %14, 0
  %16 = and i32 %3, 64
  %17 = icmp eq i32 %16, 0
  %18 = and i32 %3, 128
  %19 = icmp eq i32 %18, 0
  %20 = and i32 %3, 1073741824
  %21 = icmp eq i32 %20, 0
  br label %22

22:                                               ; preds = %11, %52
  %23 = phi ptr [ %9, %11 ], [ %54, %52 ]
  %24 = phi i64 [ 0, %11 ], [ %53, %52 ]
  %25 = load ptr, ptr %8, align 8, !tbaa !192
  %26 = icmp eq ptr %23, %25
  br i1 %26, label %52, label %27

27:                                               ; preds = %22
  br i1 %13, label %33, label %28

28:                                               ; preds = %27
  %29 = getelementptr inbounds %struct.KeyBlock, ptr %23, i64 0, i32 7
  %30 = load i16, ptr %29, align 2, !tbaa !175
  %31 = and i16 %30, 4
  %32 = icmp eq i16 %31, 0
  br i1 %32, label %33, label %52

33:                                               ; preds = %28, %27
  br i1 %15, label %46, label %34

34:                                               ; preds = %33
  br i1 %17, label %40, label %35

35:                                               ; preds = %34
  %36 = getelementptr inbounds %struct.KeyBlock, ptr %23, i64 0, i32 7
  %37 = load i16, ptr %36, align 2, !tbaa !175
  %38 = and i16 %37, 2
  %39 = icmp eq i16 %38, 0
  br i1 %39, label %40, label %46

40:                                               ; preds = %35, %34
  br i1 %19, label %52, label %41

41:                                               ; preds = %40
  %42 = getelementptr inbounds %struct.KeyBlock, ptr %23, i64 0, i32 7
  %43 = load i16, ptr %42, align 2, !tbaa !175
  %44 = and i16 %43, 2
  %45 = icmp eq i16 %44, 0
  br i1 %45, label %46, label %52

46:                                               ; preds = %41, %35, %33
  br i1 %21, label %47, label %96

47:                                               ; preds = %46
  %48 = tail call fastcc ptr @make_new_animlistelem(ptr noundef nonnull %23, i16 noundef signext 25, ptr noundef nonnull %2) #8
  %49 = icmp eq ptr %48, null
  br i1 %49, label %52, label %50

50:                                               ; preds = %47
  tail call void @BLI_addtail(ptr noundef %1, ptr noundef nonnull %48) #9
  %51 = add i64 %24, 1
  br label %52

52:                                               ; preds = %47, %50, %28, %41, %40, %22
  %53 = phi i64 [ %24, %22 ], [ %24, %41 ], [ %24, %40 ], [ %24, %28 ], [ %51, %50 ], [ %24, %47 ]
  %54 = load ptr, ptr %23, align 8, !tbaa !72
  %55 = icmp eq ptr %54, null
  br i1 %55, label %96, label %22, !llvm.loop !193

56:                                               ; preds = %4
  %57 = getelementptr inbounds %struct.Key, ptr %2, i64 0, i32 1
  %58 = load ptr, ptr %57, align 8, !tbaa !64
  %59 = icmp eq ptr %58, null
  br i1 %59, label %96, label %60

60:                                               ; preds = %56
  %61 = and i32 %3, 1024
  %62 = icmp eq i32 %61, 0
  br i1 %62, label %91, label %63

63:                                               ; preds = %60
  %64 = and i32 %3, 192
  %65 = icmp eq i32 %64, 0
  br i1 %65, label %84, label %66

66:                                               ; preds = %63
  %67 = and i32 %3, 64
  %68 = icmp eq i32 %67, 0
  br i1 %68, label %74, label %69

69:                                               ; preds = %66
  %70 = getelementptr inbounds %struct.AnimData, ptr %58, i64 0, i32 7
  %71 = load i32, ptr %70, align 8, !tbaa !123
  %72 = and i32 %71, 16384
  %73 = icmp eq i32 %72, 0
  br i1 %73, label %74, label %84

74:                                               ; preds = %69, %66
  %75 = and i32 %3, 128
  %76 = icmp eq i32 %75, 0
  br i1 %76, label %96, label %77

77:                                               ; preds = %74
  %78 = getelementptr inbounds %struct.AnimData, ptr %58, i64 0, i32 7
  %79 = load i32, ptr %78, align 8, !tbaa !123
  %80 = and i32 %79, 16384
  %81 = and i32 %3, 1073741824
  %82 = or disjoint i32 %80, %81
  %83 = icmp eq i32 %82, 0
  br i1 %83, label %87, label %96

84:                                               ; preds = %69, %63
  %85 = and i32 %3, 1073741824
  %86 = icmp eq i32 %85, 0
  br i1 %86, label %87, label %96

87:                                               ; preds = %77, %84
  %88 = tail call fastcc ptr @make_new_animlistelem(ptr noundef nonnull %58, i16 noundef signext 1, ptr noundef nonnull %2) #8
  %89 = icmp eq ptr %88, null
  br i1 %89, label %96, label %90

90:                                               ; preds = %87
  tail call void @BLI_addtail(ptr noundef %1, ptr noundef nonnull %88) #9
  br label %96

91:                                               ; preds = %60
  %92 = load ptr, ptr %58, align 8, !tbaa !60
  %93 = icmp eq ptr %92, null
  br i1 %93, label %96, label %94

94:                                               ; preds = %91
  %95 = tail call fastcc i64 @animfilter_action(ptr noundef %0, ptr noundef %1, ptr noundef null, ptr noundef nonnull %92, i32 noundef %3, ptr noundef nonnull %2) #8
  br label %96

96:                                               ; preds = %52, %46, %7, %77, %74, %94, %91, %56, %90, %87, %84
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @animdata_filter_gpencil(ptr noundef %0, i32 noundef %1) unnamed_addr #0 !PGOFuncName !194 {
  %3 = alloca %struct.ListBase, align 8
  %4 = load ptr, ptr @G, align 8, !tbaa !195
  %5 = getelementptr inbounds %struct.Main, ptr %4, i64 0, i32 41
  %6 = load ptr, ptr %5, align 8, !tbaa !72
  %7 = icmp eq ptr %6, null
  br i1 %7, label %54, label %8

8:                                                ; preds = %2
  %9 = and i32 %1, 2
  %10 = icmp eq i32 %9, 0
  %11 = and i32 %1, 8
  %12 = icmp eq i32 %11, 0
  %13 = or i32 %1, 1073741824
  %14 = and i32 %1, 1073741824
  %15 = icmp eq i32 %14, 0
  br label %16

16:                                               ; preds = %8, %50
  %17 = phi ptr [ %6, %8 ], [ %52, %50 ]
  %18 = phi i64 [ 0, %8 ], [ %51, %50 ]
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %3) #10
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %3, i8 0, i64 16, i1 false)
  %19 = getelementptr inbounds %struct.ID, ptr %17, i64 0, i32 6
  %20 = load i32, ptr %19, align 4, !tbaa !197
  %21 = getelementptr inbounds %struct.ID, ptr %17, i64 0, i32 5
  %22 = load i16, ptr %21, align 2, !tbaa !198
  %23 = lshr i16 %22, 9
  %24 = and i16 %23, 1
  %25 = zext nneg i16 %24 to i32
  %26 = icmp sgt i32 %20, %25
  br i1 %26, label %27, label %50

27:                                               ; preds = %16
  br i1 %10, label %35, label %28

28:                                               ; preds = %27
  %29 = getelementptr inbounds %struct.bGPdata, ptr %17, i64 0, i32 2
  %30 = load i32, ptr %29, align 8, !tbaa !199
  %31 = and i32 %30, 4
  %32 = icmp ne i32 %31, 0
  %33 = or i1 %12, %32
  %34 = select i1 %33, i32 %1, i32 %13
  br label %35

35:                                               ; preds = %28, %27
  %36 = phi i32 [ %1, %27 ], [ %34, %28 ]
  %37 = call fastcc i64 @animdata_filter_gpencil_data(ptr noundef nonnull %3, ptr noundef nonnull %17, i32 noundef %36) #8
  %38 = icmp eq i64 %37, 0
  br i1 %38, label %50, label %39

39:                                               ; preds = %35
  br i1 %12, label %46, label %40

40:                                               ; preds = %39
  br i1 %15, label %41, label %49

41:                                               ; preds = %40
  %42 = call fastcc ptr @make_new_animlistelem(ptr noundef nonnull %17, i16 noundef signext 26, ptr noundef null) #8
  %43 = icmp eq ptr %42, null
  br i1 %43, label %46, label %44

44:                                               ; preds = %41
  call void @BLI_addtail(ptr noundef %0, ptr noundef nonnull %42) #9
  %45 = add i64 %18, 1
  br label %46

46:                                               ; preds = %41, %44, %39
  %47 = phi i64 [ %18, %39 ], [ %45, %44 ], [ %18, %41 ]
  call void @BLI_movelisttolist(ptr noundef %0, ptr noundef nonnull %3) #9
  %48 = add i64 %47, %37
  br label %50

49:                                               ; preds = %40
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %3) #10
  br label %54

50:                                               ; preds = %16, %46, %35
  %51 = phi i64 [ %18, %35 ], [ %48, %46 ], [ %18, %16 ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %3) #10
  %52 = load ptr, ptr %17, align 8, !tbaa !72
  %53 = icmp eq ptr %52, null
  br i1 %53, label %54, label %16, !llvm.loop !201

54:                                               ; preds = %50, %2, %49
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @animdata_filter_mask(ptr noundef %0, i32 noundef %1) unnamed_addr #0 !PGOFuncName !202 {
  %3 = alloca %struct.ListBase, align 8
  %4 = load ptr, ptr @G, align 8, !tbaa !195
  %5 = getelementptr inbounds %struct.Main, ptr %4, i64 0, i32 43
  %6 = load ptr, ptr %5, align 8, !tbaa !72
  %7 = icmp eq ptr %6, null
  br i1 %7, label %54, label %8

8:                                                ; preds = %2
  %9 = and i32 %1, 2
  %10 = icmp eq i32 %9, 0
  %11 = and i32 %1, 8
  %12 = icmp eq i32 %11, 0
  %13 = or i32 %1, 1073741824
  %14 = and i32 %1, 1073741824
  %15 = icmp eq i32 %14, 0
  br label %16

16:                                               ; preds = %8, %50
  %17 = phi ptr [ %6, %8 ], [ %52, %50 ]
  %18 = phi i64 [ 0, %8 ], [ %51, %50 ]
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %3) #10
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %3, i8 0, i64 16, i1 false)
  %19 = getelementptr inbounds %struct.ID, ptr %17, i64 0, i32 6
  %20 = load i32, ptr %19, align 4, !tbaa !197
  %21 = getelementptr inbounds %struct.ID, ptr %17, i64 0, i32 5
  %22 = load i16, ptr %21, align 2, !tbaa !198
  %23 = lshr i16 %22, 9
  %24 = and i16 %23, 1
  %25 = zext nneg i16 %24 to i32
  %26 = icmp sgt i32 %20, %25
  br i1 %26, label %27, label %50

27:                                               ; preds = %16
  br i1 %10, label %35, label %28

28:                                               ; preds = %27
  %29 = getelementptr inbounds %struct.Mask, ptr %17, i64 0, i32 7
  %30 = load i32, ptr %29, align 8, !tbaa !203
  %31 = and i32 %30, 16
  %32 = icmp ne i32 %31, 0
  %33 = or i1 %12, %32
  %34 = select i1 %33, i32 %1, i32 %13
  br label %35

35:                                               ; preds = %28, %27
  %36 = phi i32 [ %1, %27 ], [ %34, %28 ]
  %37 = call fastcc i64 @animdata_filter_mask_data(ptr noundef nonnull %3, ptr noundef nonnull %17, i32 noundef %36) #8
  %38 = icmp eq i64 %37, 0
  br i1 %38, label %50, label %39

39:                                               ; preds = %35
  br i1 %12, label %46, label %40

40:                                               ; preds = %39
  br i1 %15, label %41, label %49

41:                                               ; preds = %40
  %42 = call fastcc ptr @make_new_animlistelem(ptr noundef nonnull %17, i16 noundef signext 28, ptr noundef null) #8
  %43 = icmp eq ptr %42, null
  br i1 %43, label %46, label %44

44:                                               ; preds = %41
  call void @BLI_addtail(ptr noundef %0, ptr noundef nonnull %42) #9
  %45 = add i64 %18, 1
  br label %46

46:                                               ; preds = %41, %44, %39
  %47 = phi i64 [ %18, %39 ], [ %45, %44 ], [ %18, %41 ]
  call void @BLI_movelisttolist(ptr noundef %0, ptr noundef nonnull %3) #9
  %48 = add i64 %47, %37
  br label %50

49:                                               ; preds = %40
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %3) #10
  br label %54

50:                                               ; preds = %16, %46, %35
  %51 = phi i64 [ %18, %35 ], [ %48, %46 ], [ %18, %16 ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %3) #10
  %52 = load ptr, ptr %17, align 8, !tbaa !72
  %53 = icmp eq ptr %52, null
  br i1 %53, label %54, label %16, !llvm.loop !205

54:                                               ; preds = %50, %2, %49
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc i64 @animdata_filter_dopesheet(ptr noundef %0, ptr noundef %1, ptr noundef %2, i32 noundef %3) unnamed_addr #0 !PGOFuncName !206 {
  %5 = load ptr, ptr %2, align 8, !tbaa !73
  %6 = icmp eq ptr %5, null
  br i1 %6, label %11, label %7

7:                                                ; preds = %4
  %8 = getelementptr inbounds %struct.ID, ptr %5, i64 0, i32 4
  %9 = load i16, ptr %8, align 8, !tbaa !77
  %10 = icmp eq i16 %9, 17235
  br i1 %10, label %22, label %11

11:                                               ; preds = %7, %4
  %12 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str)
  %13 = load i32, ptr getelementptr inbounds (%struct.Global, ptr @G, i64 0, i32 16), align 4, !tbaa !207
  %14 = and i32 %13, 1
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %97, label %16

16:                                               ; preds = %11
  %17 = load ptr, ptr %2, align 8, !tbaa !73
  %18 = icmp eq ptr %17, null
  %19 = getelementptr inbounds %struct.ID, ptr %17, i64 0, i32 4
  %20 = select i1 %18, ptr null, ptr %19
  %21 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.11, ptr noundef %17, ptr noundef %20) #8
  br label %97

22:                                               ; preds = %7
  %23 = getelementptr inbounds %struct.bDopeSheet, ptr %2, i64 0, i32 4
  %24 = load i32, ptr %23, align 8, !tbaa !75
  %25 = shl i32 %24, 6
  %26 = and i32 %25, 512
  %27 = or i32 %26, %3
  %28 = tail call fastcc i64 @animdata_filter_dopesheet_scene(ptr noundef %0, ptr noundef %1, ptr noundef nonnull %2, ptr noundef nonnull %5, i32 noundef %27) #8
  %29 = getelementptr inbounds %struct.Scene, ptr %5, i64 0, i32 5
  %30 = load ptr, ptr %29, align 8, !tbaa !72
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
  %43 = load ptr, ptr %42, align 8, !tbaa !99
  %44 = icmp eq ptr %43, null
  br i1 %44, label %93, label %45

45:                                               ; preds = %39
  br i1 %34, label %64, label %46

46:                                               ; preds = %45
  %47 = load i32, ptr %23, align 8, !tbaa !75
  %48 = and i32 %47, 67108864
  %49 = icmp eq i32 %48, 0
  br i1 %49, label %50, label %64

50:                                               ; preds = %46
  %51 = load i32, ptr %35, align 8, !tbaa !208
  %52 = getelementptr inbounds %struct.Object, ptr %43, i64 0, i32 52
  %53 = load i32, ptr %52, align 8, !tbaa !209
  %54 = getelementptr inbounds %struct.Base, ptr %40, i64 0, i32 2
  %55 = load i32, ptr %54, align 8, !tbaa !210
  %56 = or i32 %55, %53
  %57 = and i32 %56, %51
  %58 = icmp eq i32 %57, 0
  br i1 %58, label %93, label %59

59:                                               ; preds = %50
  %60 = getelementptr inbounds %struct.Object, ptr %43, i64 0, i32 102
  %61 = load i8, ptr %60, align 8, !tbaa !211
  %62 = and i8 %61, 1
  %63 = icmp eq i8 %62, 0
  br i1 %63, label %64, label %93

64:                                               ; preds = %59, %46, %45
  br i1 %37, label %74, label %65

65:                                               ; preds = %64
  %66 = getelementptr inbounds %struct.Object, ptr %43, i64 0, i32 1
  %67 = load ptr, ptr %66, align 8, !tbaa !55
  %68 = icmp eq ptr %67, null
  br i1 %68, label %74, label %69

69:                                               ; preds = %65
  %70 = getelementptr inbounds %struct.AnimData, ptr %67, i64 0, i32 7
  %71 = load i32, ptr %70, align 8, !tbaa !123
  %72 = and i32 %71, 65536
  %73 = icmp eq i32 %72, 0
  br i1 %73, label %74, label %93

74:                                               ; preds = %65, %69, %64
  %75 = load i32, ptr %23, align 8, !tbaa !75
  %76 = and i32 %75, 1
  %77 = icmp eq i32 %76, 0
  br i1 %77, label %83, label %78

78:                                               ; preds = %74
  %79 = getelementptr inbounds %struct.Base, ptr %40, i64 0, i32 4
  %80 = load i32, ptr %79, align 8, !tbaa !212
  %81 = and i32 %80, 1
  %82 = icmp eq i32 %81, 0
  br i1 %82, label %93, label %83

83:                                               ; preds = %78, %74
  %84 = and i32 %75, 32
  %85 = icmp eq i32 %84, 0
  br i1 %85, label %90, label %86

86:                                               ; preds = %83
  %87 = load ptr, ptr %38, align 8, !tbaa !213
  %88 = tail call zeroext i8 @BKE_group_object_exists(ptr noundef %87, ptr noundef nonnull %43) #9
  %89 = icmp eq i8 %88, 0
  br i1 %89, label %93, label %90

90:                                               ; preds = %86, %83
  %91 = tail call fastcc i64 @animdata_filter_dopesheet_ob(ptr noundef %0, ptr noundef %1, ptr noundef nonnull %2, ptr noundef nonnull %40, i32 noundef %27) #8
  %92 = add i64 %91, %41
  br label %93

93:                                               ; preds = %90, %50, %59, %69, %78, %86, %39
  %94 = phi i64 [ %41, %39 ], [ %92, %90 ], [ %41, %50 ], [ %41, %59 ], [ %41, %69 ], [ %41, %78 ], [ %41, %86 ]
  %95 = load ptr, ptr %40, align 8, !tbaa !72
  %96 = icmp eq ptr %95, null
  br i1 %96, label %97, label %39, !llvm.loop !214

97:                                               ; preds = %93, %22, %11, %16
  %98 = phi i64 [ 0, %16 ], [ 0, %11 ], [ %28, %22 ], [ %94, %93 ]
  ret i64 %98
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @animdata_filter_animchan(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr nocapture noundef readonly %3, i32 noundef %4) unnamed_addr #0 !PGOFuncName !215 {
  %6 = getelementptr inbounds %struct.bAnimListElem, ptr %3, i64 0, i32 3
  %7 = load i32, ptr %6, align 8, !tbaa !113
  switch i32 %7, label %22 [
    i32 3, label %8
    i32 4, label %10
    i32 5, label %14
    i32 1, label %18
  ]

8:                                                ; preds = %5
  %9 = tail call fastcc i64 @animdata_filter_dopesheet(ptr noundef %0, ptr noundef %1, ptr noundef %2, i32 noundef %4) #8
  br label %24

10:                                               ; preds = %5
  %11 = getelementptr inbounds %struct.bAnimListElem, ptr %3, i64 0, i32 2
  %12 = load ptr, ptr %11, align 8, !tbaa !111
  %13 = tail call fastcc i64 @animdata_filter_dopesheet_scene(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %12, i32 noundef %4) #8
  br label %24

14:                                               ; preds = %5
  %15 = getelementptr inbounds %struct.bAnimListElem, ptr %3, i64 0, i32 2
  %16 = load ptr, ptr %15, align 8, !tbaa !111
  %17 = tail call fastcc i64 @animdata_filter_dopesheet_ob(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %16, i32 noundef %4) #8
  br label %24

18:                                               ; preds = %5
  %19 = getelementptr inbounds %struct.bAnimListElem, ptr %3, i64 0, i32 9
  %20 = load ptr, ptr %19, align 8, !tbaa !114
  %21 = tail call fastcc i64 @animfilter_block_data(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %20, i32 noundef %4) #8
  br label %24

22:                                               ; preds = %5
  %23 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.13, i32 noundef %7) #8
  br label %24

24:                                               ; preds = %22, %18, %14, %10, %8
  ret void
}

; Function Attrs: nofree nounwind optsize
declare noundef i32 @printf(ptr nocapture noundef readonly, ...) local_unnamed_addr #4

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc i64 @animdata_filter_remove_invalid(ptr noundef %0) unnamed_addr #0 !PGOFuncName !216 {
  %2 = load ptr, ptr %0, align 8, !tbaa !217
  %3 = icmp eq ptr %2, null
  br i1 %3, label %17, label %4

4:                                                ; preds = %1, %14
  %5 = phi i64 [ %15, %14 ], [ 0, %1 ]
  %6 = phi ptr [ %7, %14 ], [ %2, %1 ]
  %7 = load ptr, ptr %6, align 8, !tbaa !218
  %8 = getelementptr inbounds %struct.bAnimListElem, ptr %6, i64 0, i32 3
  %9 = load i32, ptr %8, align 8, !tbaa !113
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %11, label %12

11:                                               ; preds = %4
  tail call void @BLI_freelinkN(ptr noundef nonnull %0, ptr noundef nonnull %6) #9
  br label %14

12:                                               ; preds = %4
  %13 = add i64 %5, 1
  br label %14

14:                                               ; preds = %11, %12
  %15 = phi i64 [ %5, %11 ], [ %13, %12 ]
  %16 = icmp eq ptr %7, null
  br i1 %16, label %17, label %4, !llvm.loop !219

17:                                               ; preds = %14, %1
  %18 = phi i64 [ 0, %1 ], [ %15, %14 ]
  ret i64 %18
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc i64 @animdata_filter_remove_duplis(ptr noundef %0) unnamed_addr #0 !PGOFuncName !220 {
  %2 = tail call ptr @BLI_gset_ptr_new(ptr noundef nonnull @__func__.animdata_filter_remove_duplis) #9
  %3 = load ptr, ptr %0, align 8, !tbaa !217
  %4 = icmp eq ptr %3, null
  br i1 %4, label %19, label %5

5:                                                ; preds = %1, %16
  %6 = phi i64 [ %17, %16 ], [ 0, %1 ]
  %7 = phi ptr [ %8, %16 ], [ %3, %1 ]
  %8 = load ptr, ptr %7, align 8, !tbaa !218
  %9 = getelementptr inbounds %struct.bAnimListElem, ptr %7, i64 0, i32 2
  %10 = load ptr, ptr %9, align 8, !tbaa !111
  %11 = tail call zeroext i8 @BLI_gset_add(ptr noundef %2, ptr noundef %10) #9
  %12 = icmp eq i8 %11, 0
  br i1 %12, label %15, label %13

13:                                               ; preds = %5
  %14 = add i64 %6, 1
  br label %16

15:                                               ; preds = %5
  tail call void @BLI_freelinkN(ptr noundef nonnull %0, ptr noundef nonnull %7) #9
  br label %16

16:                                               ; preds = %13, %15
  %17 = phi i64 [ %14, %13 ], [ %6, %15 ]
  %18 = icmp eq ptr %8, null
  br i1 %18, label %19, label %5, !llvm.loop !221

19:                                               ; preds = %16, %1
  %20 = phi i64 [ 0, %1 ], [ %17, %16 ]
  tail call void @BLI_gset_free(ptr noundef %2, ptr noundef null) #9
  ret i64 %20
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @actedit_get_shapekeys(ptr nocapture noundef readonly %0) unnamed_addr #0 !PGOFuncName !222 {
  %2 = getelementptr inbounds %struct.bAnimContext, ptr %0, i64 0, i32 9
  %3 = load ptr, ptr %2, align 8, !tbaa !66
  %4 = getelementptr inbounds %struct.Scene, ptr %3, i64 0, i32 6
  %5 = load ptr, ptr %4, align 8, !tbaa !82
  %6 = icmp eq ptr %5, null
  br i1 %6, label %19, label %7

7:                                                ; preds = %1
  %8 = getelementptr inbounds %struct.Base, ptr %5, i64 0, i32 7
  %9 = load ptr, ptr %8, align 8, !tbaa !99
  %10 = icmp eq ptr %9, null
  br i1 %10, label %19, label %11

11:                                               ; preds = %7
  %12 = tail call ptr @BKE_key_from_object(ptr noundef nonnull %9) #9
  %13 = icmp eq ptr %12, null
  br i1 %13, label %18, label %14

14:                                               ; preds = %11
  %15 = getelementptr inbounds %struct.Key, ptr %12, i64 0, i32 9
  %16 = load i16, ptr %15, align 8, !tbaa !223
  %17 = icmp eq i16 %16, 1
  br i1 %17, label %19, label %18

18:                                               ; preds = %14, %11
  br label %19

19:                                               ; preds = %1, %14, %7, %18
  %20 = phi ptr [ null, %18 ], [ null, %7 ], [ %12, %14 ], [ null, %1 ]
  ret ptr %20
}

; Function Attrs: optsize
declare ptr @BKE_key_from_object(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @BKE_animdata_from_id(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare i32 @BLI_findindex(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @BKE_keyblock_curval_rnapath_get(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @list_find_fcurve(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc i64 @animfilter_act_group(ptr noundef readonly %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, i32 noundef %4, ptr noundef %5) unnamed_addr #0 !PGOFuncName !224 {
  %7 = alloca %struct.ListBase, align 8
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %7) #10
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %7, i8 0, i64 16, i1 false)
  %8 = and i32 %4, 2
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %80, label %10

10:                                               ; preds = %6
  %11 = icmp eq ptr %0, null
  br i1 %11, label %28, label %12

12:                                               ; preds = %10
  %13 = getelementptr inbounds %struct.bAnimContext, ptr %0, i64 0, i32 3
  %14 = load i16, ptr %13, align 4, !tbaa !40
  %15 = icmp eq i16 %14, 2
  %16 = getelementptr inbounds %struct.bActionGroup, ptr %3, i64 0, i32 3
  %17 = load i32, ptr %16, align 8, !tbaa !170
  %18 = and i32 %4, 192
  %19 = icmp eq i32 %18, 0
  br i1 %15, label %24, label %20

20:                                               ; preds = %12
  %21 = and i32 %17, 8
  %22 = icmp ne i32 %21, 0
  %23 = or i1 %22, %19
  br i1 %23, label %54, label %36

24:                                               ; preds = %12
  %25 = and i32 %17, 64
  %26 = icmp ne i32 %25, 0
  %27 = or i1 %19, %26
  br i1 %27, label %54, label %36

28:                                               ; preds = %10
  %29 = getelementptr inbounds %struct.bActionGroup, ptr %3, i64 0, i32 3
  %30 = load i32, ptr %29, align 8, !tbaa !170
  %31 = and i32 %30, 8
  %32 = icmp ne i32 %31, 0
  %33 = and i32 %4, 192
  %34 = icmp eq i32 %33, 0
  %35 = or i1 %34, %32
  br i1 %35, label %62, label %36

36:                                               ; preds = %20, %28, %24
  %37 = and i32 %4, 64
  %38 = icmp eq i32 %37, 0
  br i1 %38, label %44, label %39

39:                                               ; preds = %36
  %40 = getelementptr inbounds %struct.bActionGroup, ptr %3, i64 0, i32 3
  %41 = load i32, ptr %40, align 8, !tbaa !170
  %42 = and i32 %41, 3
  %43 = icmp eq i32 %42, 0
  br i1 %43, label %44, label %52

44:                                               ; preds = %39, %36
  %45 = and i32 %4, 128
  %46 = icmp eq i32 %45, 0
  br i1 %46, label %144, label %47

47:                                               ; preds = %44
  %48 = getelementptr inbounds %struct.bActionGroup, ptr %3, i64 0, i32 3
  %49 = load i32, ptr %48, align 8, !tbaa !170
  %50 = and i32 %49, 3
  %51 = icmp eq i32 %50, 0
  br i1 %51, label %52, label %144

52:                                               ; preds = %39, %47
  %53 = and i32 %4, -195
  br label %80

54:                                               ; preds = %24, %20
  %55 = getelementptr inbounds %struct.bAnimContext, ptr %0, i64 0, i32 3
  %56 = load i16, ptr %55, align 4, !tbaa !40
  %57 = icmp eq i16 %56, 2
  %58 = getelementptr inbounds %struct.bActionGroup, ptr %3, i64 0, i32 3
  %59 = load i32, ptr %58, align 8, !tbaa !170
  %60 = and i32 %4, 8
  %61 = icmp eq i32 %60, 0
  br i1 %57, label %74, label %70

62:                                               ; preds = %28
  %63 = getelementptr inbounds %struct.bActionGroup, ptr %3, i64 0, i32 3
  %64 = load i32, ptr %63, align 8, !tbaa !170
  %65 = and i32 %64, 8
  %66 = icmp ne i32 %65, 0
  %67 = and i32 %4, 8
  %68 = icmp eq i32 %67, 0
  %69 = or i1 %68, %66
  br i1 %69, label %80, label %78

70:                                               ; preds = %54
  %71 = and i32 %59, 8
  %72 = icmp ne i32 %71, 0
  %73 = or i1 %72, %61
  br i1 %73, label %80, label %78

74:                                               ; preds = %54
  %75 = and i32 %59, 64
  %76 = icmp ne i32 %75, 0
  %77 = or i1 %61, %76
  br i1 %77, label %80, label %78

78:                                               ; preds = %70, %62, %74
  %79 = or i32 %4, 1073741824
  br label %80

80:                                               ; preds = %6, %52, %70, %62, %74, %78
  %81 = phi i32 [ %4, %78 ], [ %4, %74 ], [ %4, %62 ], [ %4, %70 ], [ %53, %52 ], [ %4, %6 ]
  %82 = phi i32 [ %79, %78 ], [ %4, %74 ], [ %4, %62 ], [ %4, %70 ], [ %53, %52 ], [ %4, %6 ]
  %83 = and i32 %82, 32
  %84 = icmp eq i32 %83, 0
  br i1 %84, label %90, label %85

85:                                               ; preds = %80
  %86 = getelementptr inbounds %struct.bActionGroup, ptr %3, i64 0, i32 3
  %87 = load i32, ptr %86, align 8, !tbaa !170
  %88 = and i32 %87, 2
  %89 = icmp eq i32 %88, 0
  br i1 %89, label %144, label %90

90:                                               ; preds = %85, %80
  %91 = and i32 %82, 4
  %92 = icmp eq i32 %91, 0
  br i1 %92, label %98, label %93

93:                                               ; preds = %90
  %94 = getelementptr inbounds %struct.bActionGroup, ptr %3, i64 0, i32 3
  %95 = load i32, ptr %94, align 8, !tbaa !170
  %96 = and i32 %95, 32
  %97 = icmp eq i32 %96, 0
  br i1 %97, label %98, label %144

98:                                               ; preds = %93, %90
  %99 = and i32 %82, 256
  %100 = icmp eq i32 %99, 0
  br i1 %100, label %106, label %101

101:                                              ; preds = %98
  %102 = getelementptr inbounds %struct.bActionGroup, ptr %3, i64 0, i32 3
  %103 = load i32, ptr %102, align 8, !tbaa !170
  %104 = and i32 %103, 4
  %105 = icmp eq i32 %104, 0
  br i1 %105, label %106, label %144

106:                                              ; preds = %98, %101
  %107 = getelementptr inbounds %struct.bActionGroup, ptr %3, i64 0, i32 2
  %108 = load ptr, ptr %107, align 8, !tbaa !225
  %109 = tail call fastcc ptr @animfilter_fcurve_next(ptr noundef %2, ptr noundef %108, ptr noundef %3, i32 noundef %82, ptr noundef %5) #8
  %110 = call fastcc i64 @animfilter_fcurves(ptr noundef nonnull %7, ptr noundef %2, ptr noundef %109, ptr noundef %3, i32 noundef %82, ptr noundef %5) #8
  %111 = icmp eq i64 %110, 0
  br i1 %111, label %144, label %112

112:                                              ; preds = %106
  %113 = and i32 %81, 8
  %114 = icmp eq i32 %113, 0
  br i1 %114, label %141, label %115

115:                                              ; preds = %112
  %116 = and i32 %81, 192
  %117 = icmp eq i32 %116, 0
  br i1 %117, label %134, label %118

118:                                              ; preds = %115
  %119 = and i32 %81, 64
  %120 = icmp eq i32 %119, 0
  br i1 %120, label %126, label %121

121:                                              ; preds = %118
  %122 = getelementptr inbounds %struct.bActionGroup, ptr %3, i64 0, i32 3
  %123 = load i32, ptr %122, align 8, !tbaa !170
  %124 = and i32 %123, 3
  %125 = icmp eq i32 %124, 0
  br i1 %125, label %126, label %134

126:                                              ; preds = %121, %118
  %127 = and i32 %81, 128
  %128 = icmp eq i32 %127, 0
  br i1 %128, label %141, label %129

129:                                              ; preds = %126
  %130 = getelementptr inbounds %struct.bActionGroup, ptr %3, i64 0, i32 3
  %131 = load i32, ptr %130, align 8, !tbaa !170
  %132 = and i32 %131, 3
  %133 = icmp eq i32 %132, 0
  br i1 %133, label %134, label %141

134:                                              ; preds = %129, %121, %115
  %135 = and i32 %81, 1073741824
  %136 = icmp eq i32 %135, 0
  br i1 %136, label %137, label %144

137:                                              ; preds = %134
  %138 = call fastcc ptr @make_new_animlistelem(ptr noundef nonnull %3, i16 noundef signext 6, ptr noundef %5) #8
  %139 = icmp eq ptr %138, null
  br i1 %139, label %141, label %140

140:                                              ; preds = %137
  call void @BLI_addtail(ptr noundef %1, ptr noundef nonnull %138) #9
  br label %141

141:                                              ; preds = %137, %140, %126, %129, %112
  %142 = phi i64 [ 0, %129 ], [ 0, %126 ], [ 0, %112 ], [ 1, %140 ], [ 0, %137 ]
  call void @BLI_movelisttolist(ptr noundef %1, ptr noundef nonnull %7) #9
  %143 = add i64 %142, %110
  br label %144

144:                                              ; preds = %85, %101, %93, %44, %106, %141, %134, %47
  %145 = phi i64 [ 0, %47 ], [ 1, %134 ], [ %143, %141 ], [ 0, %106 ], [ 0, %44 ], [ 0, %93 ], [ 0, %101 ], [ 0, %85 ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %7) #10
  ret i64 %145
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc i64 @animfilter_fcurves(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, i32 noundef %4, ptr noundef %5) unnamed_addr #0 !PGOFuncName !226 {
  %7 = tail call fastcc ptr @animfilter_fcurve_next(ptr noundef %1, ptr noundef %2, ptr noundef %3, i32 noundef %4, ptr noundef %5) #8
  %8 = icmp eq ptr %7, null
  br i1 %8, label %24, label %9

9:                                                ; preds = %6
  %10 = and i32 %4, 1073741824
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %12, label %24

12:                                               ; preds = %9, %19
  %13 = phi ptr [ %22, %19 ], [ %7, %9 ]
  %14 = phi i64 [ %20, %19 ], [ 0, %9 ]
  %15 = tail call fastcc ptr @make_new_animlistelem(ptr noundef nonnull %13, i16 noundef signext 7, ptr noundef %5) #8
  %16 = icmp eq ptr %15, null
  br i1 %16, label %19, label %17

17:                                               ; preds = %12
  tail call void @BLI_addtail(ptr noundef %0, ptr noundef nonnull %15) #9
  %18 = add i64 %14, 1
  br label %19

19:                                               ; preds = %17, %12
  %20 = phi i64 [ %18, %17 ], [ %14, %12 ]
  %21 = load ptr, ptr %13, align 8, !tbaa !227
  %22 = tail call fastcc ptr @animfilter_fcurve_next(ptr noundef %1, ptr noundef %21, ptr noundef %3, i32 noundef %4, ptr noundef %5) #8
  %23 = icmp eq ptr %22, null
  br i1 %23, label %24, label %12, !llvm.loop !228

24:                                               ; preds = %19, %9, %6
  %25 = phi i64 [ 0, %6 ], [ 1, %9 ], [ %20, %19 ]
  ret i64 %25
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @animfilter_fcurve_next(ptr noundef %0, ptr noundef %1, ptr noundef readnone %2, i32 noundef %3, ptr noundef %4) unnamed_addr #0 !PGOFuncName !229 {
  %6 = icmp eq ptr %1, null
  br i1 %6, label %99, label %7

7:                                                ; preds = %5
  %8 = icmp ne ptr %0, null
  %9 = icmp ne ptr %4, null
  %10 = icmp sgt i32 %3, -1
  %11 = and i1 %10, %9
  %12 = and i1 %8, %11
  %13 = getelementptr inbounds %struct.bDopeSheet, ptr %0, i64 0, i32 4
  %14 = and i32 %3, 4
  %15 = icmp eq i32 %14, 0
  %16 = and i32 %3, 256
  %17 = icmp eq i32 %16, 0
  %18 = and i32 %3, 192
  %19 = icmp eq i32 %18, 0
  %20 = and i32 %3, 64
  %21 = icmp eq i32 %20, 0
  %22 = and i32 %3, 128
  %23 = icmp eq i32 %22, 0
  %24 = and i32 %3, 768
  %25 = icmp eq i32 %24, 768
  %26 = and i32 %3, 16
  %27 = icmp eq i32 %26, 0
  br label %28

28:                                               ; preds = %7, %96
  %29 = phi ptr [ %1, %7 ], [ %97, %96 ]
  %30 = getelementptr inbounds %struct.FCurve, ptr %29, i64 0, i32 2
  %31 = load ptr, ptr %30, align 8, !tbaa !230
  %32 = icmp eq ptr %31, %2
  br i1 %32, label %33, label %99

33:                                               ; preds = %28
  br i1 %12, label %34, label %41

34:                                               ; preds = %33
  %35 = load i32, ptr %13, align 8, !tbaa !75
  %36 = and i32 %35, 67108865
  %37 = icmp eq i32 %36, 67108864
  br i1 %37, label %41, label %38

38:                                               ; preds = %34
  %39 = tail call fastcc zeroext i8 @skip_fcurve_selected_data(ptr noundef nonnull %0, ptr noundef nonnull %29, ptr noundef nonnull %4, i32 noundef %3) #8, !range !41
  %40 = icmp eq i8 %39, 0
  br i1 %40, label %41, label %96

41:                                               ; preds = %34, %38, %33
  br i1 %15, label %47, label %42

42:                                               ; preds = %41
  %43 = getelementptr inbounds %struct.FCurve, ptr %29, i64 0, i32 9
  %44 = load i16, ptr %43, align 8, !tbaa !173
  %45 = and i16 %44, 1
  %46 = icmp eq i16 %45, 0
  br i1 %46, label %96, label %47

47:                                               ; preds = %42, %41
  br i1 %17, label %53, label %48

48:                                               ; preds = %47
  %49 = getelementptr inbounds %struct.FCurve, ptr %29, i64 0, i32 9
  %50 = load i16, ptr %49, align 8, !tbaa !173
  %51 = and i16 %50, 8
  %52 = icmp eq i16 %51, 0
  br i1 %52, label %53, label %96

53:                                               ; preds = %48, %47
  br i1 %19, label %66, label %54

54:                                               ; preds = %53
  br i1 %21, label %60, label %55

55:                                               ; preds = %54
  %56 = getelementptr inbounds %struct.FCurve, ptr %29, i64 0, i32 9
  %57 = load i16, ptr %56, align 8, !tbaa !173
  %58 = and i16 %57, 2
  %59 = icmp eq i16 %58, 0
  br i1 %59, label %60, label %66

60:                                               ; preds = %55, %54
  br i1 %23, label %96, label %61

61:                                               ; preds = %60
  %62 = getelementptr inbounds %struct.FCurve, ptr %29, i64 0, i32 9
  %63 = load i16, ptr %62, align 8, !tbaa !173
  %64 = and i16 %63, 2
  %65 = icmp eq i16 %64, 0
  br i1 %65, label %66, label %96

66:                                               ; preds = %61, %55, %53
  br i1 %25, label %67, label %72

67:                                               ; preds = %66
  %68 = getelementptr inbounds %struct.FCurve, ptr %29, i64 0, i32 9
  %69 = load i16, ptr %68, align 8, !tbaa !173
  %70 = and i16 %69, 2
  %71 = icmp eq i16 %70, 0
  br i1 %71, label %96, label %72

72:                                               ; preds = %66, %67
  br i1 %27, label %78, label %73

73:                                               ; preds = %72
  %74 = getelementptr inbounds %struct.FCurve, ptr %29, i64 0, i32 9
  %75 = load i16, ptr %74, align 8, !tbaa !173
  %76 = and i16 %75, 4
  %77 = icmp eq i16 %76, 0
  br i1 %77, label %96, label %78

78:                                               ; preds = %73, %72
  br i1 %8, label %79, label %99

79:                                               ; preds = %78
  %80 = load i32, ptr %13, align 8, !tbaa !75
  %81 = and i32 %80, 134217728
  %82 = icmp ne i32 %81, 0
  %83 = and i1 %9, %82
  br i1 %83, label %84, label %89

84:                                               ; preds = %79
  %85 = tail call fastcc zeroext i8 @skip_fcurve_with_name(ptr noundef nonnull %0, ptr noundef nonnull %29, ptr noundef nonnull %4) #8, !range !41
  %86 = icmp eq i8 %85, 0
  br i1 %86, label %87, label %96

87:                                               ; preds = %84
  %88 = load i32, ptr %13, align 8, !tbaa !75
  br label %89

89:                                               ; preds = %87, %79
  %90 = phi i32 [ %88, %87 ], [ %80, %79 ]
  %91 = and i32 %90, 268435456
  %92 = icmp eq i32 %91, 0
  br i1 %92, label %99, label %93

93:                                               ; preds = %89
  %94 = tail call fastcc zeroext i8 @fcurve_has_errors(ptr noundef nonnull %29) #8
  %95 = icmp eq i8 %94, 0
  br i1 %95, label %96, label %99

96:                                               ; preds = %42, %60, %61, %67, %73, %48, %93, %84, %38
  %97 = load ptr, ptr %29, align 8, !tbaa !227
  %98 = icmp eq ptr %97, null
  br i1 %98, label %99, label %28, !llvm.loop !231

99:                                               ; preds = %78, %93, %89, %96, %28, %5
  %100 = phi ptr [ null, %5 ], [ null, %28 ], [ null, %96 ], [ %29, %89 ], [ %29, %93 ], [ %29, %78 ]
  ret ptr %100
}

; Function Attrs: optsize
declare void @BLI_movelisttolist(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc noundef zeroext i8 @skip_fcurve_selected_data(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, ptr noundef %2, i32 noundef %3) unnamed_addr #0 !PGOFuncName !232 {
  %5 = and i32 %3, 1
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %12, label %7

7:                                                ; preds = %4
  %8 = getelementptr inbounds %struct.bDopeSheet, ptr %0, i64 0, i32 4
  %9 = load i32, ptr %8, align 8, !tbaa !75
  %10 = and i32 %9, 67108864
  %11 = icmp eq i32 %10, 0
  br label %12

12:                                               ; preds = %7, %4
  %13 = phi i1 [ false, %4 ], [ %11, %7 ]
  %14 = getelementptr inbounds %struct.ID, ptr %2, i64 0, i32 4
  %15 = load i16, ptr %14, align 8, !tbaa !77
  switch i16 %15, label %125 [
    i16 16975, label %16
    i16 17235, label %63
    i16 21582, label %99
  ]

16:                                               ; preds = %12
  %17 = getelementptr inbounds %struct.FCurve, ptr %1, i64 0, i32 12
  %18 = load ptr, ptr %17, align 8, !tbaa !233
  %19 = icmp eq ptr %18, null
  br i1 %19, label %125, label %20

20:                                               ; preds = %16
  %21 = tail call ptr @strstr(ptr noundef nonnull dereferenceable(1) %18, ptr noundef nonnull dereferenceable(1) @.str.4) #11
  %22 = icmp eq ptr %21, null
  br i1 %22, label %125, label %23

23:                                               ; preds = %20
  %24 = tail call ptr @BLI_str_quoted_substrN(ptr noundef nonnull %18, ptr noundef nonnull @.str.5) #9
  %25 = getelementptr inbounds %struct.Object, ptr %2, i64 0, i32 18
  %26 = load ptr, ptr %25, align 8, !tbaa !234
  %27 = tail call ptr @BKE_pose_channel_find_name(ptr noundef %26, ptr noundef %24) #9
  %28 = icmp eq ptr %24, null
  br i1 %28, label %31, label %29

29:                                               ; preds = %23
  %30 = load ptr, ptr @MEM_freeN, align 8, !tbaa !72
  tail call void %30(ptr noundef nonnull %24) #9
  br label %31

31:                                               ; preds = %29, %23
  %32 = icmp eq ptr %27, null
  br i1 %32, label %62, label %33

33:                                               ; preds = %31
  %34 = getelementptr inbounds %struct.bPoseChannel, ptr %27, i64 0, i32 12
  %35 = load ptr, ptr %34, align 8, !tbaa !235
  %36 = icmp eq ptr %35, null
  br i1 %36, label %62, label %37

37:                                               ; preds = %33
  br i1 %13, label %38, label %52

38:                                               ; preds = %37
  %39 = getelementptr inbounds %struct.Object, ptr %2, i64 0, i32 19
  %40 = load ptr, ptr %39, align 8, !tbaa !237
  %41 = getelementptr inbounds %struct.bArmature, ptr %40, i64 0, i32 15
  %42 = load i32, ptr %41, align 8, !tbaa !238
  %43 = getelementptr inbounds %struct.Bone, ptr %35, i64 0, i32 25
  %44 = load i32, ptr %43, align 8, !tbaa !239
  %45 = and i32 %44, %42
  %46 = icmp eq i32 %45, 0
  br i1 %46, label %125, label %47

47:                                               ; preds = %38
  %48 = getelementptr inbounds %struct.Bone, ptr %35, i64 0, i32 10
  %49 = load i32, ptr %48, align 8, !tbaa !241
  %50 = and i32 %49, 64
  %51 = icmp eq i32 %50, 0
  br i1 %51, label %52, label %125

52:                                               ; preds = %47, %37
  %53 = getelementptr inbounds %struct.bDopeSheet, ptr %0, i64 0, i32 4
  %54 = load i32, ptr %53, align 8, !tbaa !75
  %55 = and i32 %54, 1
  %56 = icmp eq i32 %55, 0
  br i1 %56, label %62, label %57

57:                                               ; preds = %52
  %58 = getelementptr inbounds %struct.Bone, ptr %35, i64 0, i32 10
  %59 = load i32, ptr %58, align 8, !tbaa !241
  %60 = and i32 %59, 1
  %61 = icmp eq i32 %60, 0
  br i1 %61, label %125, label %62

62:                                               ; preds = %52, %57, %33, %31
  br label %125

63:                                               ; preds = %12
  %64 = getelementptr inbounds %struct.FCurve, ptr %1, i64 0, i32 12
  %65 = load ptr, ptr %64, align 8, !tbaa !233
  %66 = icmp eq ptr %65, null
  br i1 %66, label %125, label %67

67:                                               ; preds = %63
  %68 = tail call ptr @strstr(ptr noundef nonnull dereferenceable(1) %65, ptr noundef nonnull dereferenceable(1) @.str.6) #11
  %69 = icmp eq ptr %68, null
  br i1 %69, label %125, label %70

70:                                               ; preds = %67
  %71 = tail call ptr @BKE_sequencer_editing_get(ptr noundef nonnull %2, i8 noundef zeroext 0) #9
  %72 = icmp eq ptr %71, null
  br i1 %72, label %86, label %73

73:                                               ; preds = %70
  %74 = load ptr, ptr %64, align 8, !tbaa !233
  %75 = tail call ptr @BLI_str_quoted_substrN(ptr noundef %74, ptr noundef nonnull @.str.7) #9
  %76 = load ptr, ptr %71, align 8, !tbaa !242
  %77 = tail call ptr @BKE_sequence_get_by_name(ptr noundef %76, ptr noundef %75, i8 noundef zeroext 0) #9
  %78 = icmp eq ptr %75, null
  br i1 %78, label %81, label %79

79:                                               ; preds = %73
  %80 = load ptr, ptr @MEM_freeN, align 8, !tbaa !72
  tail call void %80(ptr noundef nonnull %75) #9
  br label %81

81:                                               ; preds = %73, %79
  %82 = getelementptr inbounds %struct.bDopeSheet, ptr %0, i64 0, i32 4
  %83 = load i32, ptr %82, align 8, !tbaa !75
  %84 = and i32 %83, 1
  %85 = icmp eq i32 %84, 0
  br i1 %85, label %98, label %91

86:                                               ; preds = %70
  %87 = getelementptr inbounds %struct.bDopeSheet, ptr %0, i64 0, i32 4
  %88 = load i32, ptr %87, align 8, !tbaa !75
  %89 = and i32 %88, 1
  %90 = icmp eq i32 %89, 0
  br i1 %90, label %98, label %125

91:                                               ; preds = %81
  %92 = icmp eq ptr %77, null
  br i1 %92, label %125, label %93

93:                                               ; preds = %91
  %94 = getelementptr inbounds %struct.Sequence, ptr %77, i64 0, i32 5
  %95 = load i32, ptr %94, align 8, !tbaa !244
  %96 = and i32 %95, 1
  %97 = icmp eq i32 %96, 0
  br i1 %97, label %125, label %98

98:                                               ; preds = %86, %93, %81
  br label %125

99:                                               ; preds = %12
  %100 = getelementptr inbounds %struct.FCurve, ptr %1, i64 0, i32 12
  %101 = load ptr, ptr %100, align 8, !tbaa !233
  %102 = icmp eq ptr %101, null
  br i1 %102, label %125, label %103

103:                                              ; preds = %99
  %104 = tail call ptr @strstr(ptr noundef nonnull dereferenceable(1) %101, ptr noundef nonnull dereferenceable(1) @.str.8) #11
  %105 = icmp eq ptr %104, null
  br i1 %105, label %125, label %106

106:                                              ; preds = %103
  %107 = tail call ptr @BLI_str_quoted_substrN(ptr noundef nonnull %101, ptr noundef nonnull @.str.9) #9
  %108 = tail call ptr @nodeFindNodebyName(ptr noundef nonnull %2, ptr noundef %107) #9
  %109 = icmp eq ptr %107, null
  br i1 %109, label %112, label %110

110:                                              ; preds = %106
  %111 = load ptr, ptr @MEM_freeN, align 8, !tbaa !72
  tail call void %111(ptr noundef nonnull %107) #9
  br label %112

112:                                              ; preds = %110, %106
  %113 = getelementptr inbounds %struct.bDopeSheet, ptr %0, i64 0, i32 4
  %114 = load i32, ptr %113, align 8, !tbaa !75
  %115 = and i32 %114, 1
  %116 = icmp ne i32 %115, 0
  %117 = icmp ne ptr %108, null
  %118 = select i1 %116, i1 %117, i1 false
  br i1 %118, label %119, label %124

119:                                              ; preds = %112
  %120 = getelementptr inbounds %struct.bNode, ptr %108, i64 0, i32 7
  %121 = load i32, ptr %120, align 8, !tbaa !246
  %122 = and i32 %121, 1
  %123 = icmp eq i32 %122, 0
  br i1 %123, label %125, label %124

124:                                              ; preds = %119, %112
  br label %125

125:                                              ; preds = %86, %119, %91, %93, %38, %57, %47, %16, %20, %62, %63, %67, %98, %12, %99, %103, %124
  %126 = phi i8 [ 0, %124 ], [ 0, %103 ], [ 0, %99 ], [ 0, %12 ], [ 0, %98 ], [ 0, %67 ], [ 0, %63 ], [ 0, %62 ], [ 0, %20 ], [ 0, %16 ], [ 1, %47 ], [ 1, %57 ], [ 1, %38 ], [ 1, %93 ], [ 1, %91 ], [ 1, %119 ], [ 1, %86 ]
  ret i8 %126
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc zeroext i8 @skip_fcurve_with_name(ptr noundef %0, ptr noundef %1, ptr noundef %2) unnamed_addr #0 !PGOFuncName !248 {
  %4 = alloca %struct.bAnimListElem, align 8
  %5 = alloca [256 x i8], align 16
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %4) #10
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %4, i8 0, i64 64, i1 false)
  %6 = getelementptr inbounds %struct.bAnimListElem, ptr %4, i64 0, i32 3
  store i32 7, ptr %6, align 8, !tbaa !113
  %7 = getelementptr inbounds %struct.bAnimListElem, ptr %4, i64 0, i32 9
  store ptr %2, ptr %7, align 8, !tbaa !114
  %8 = getelementptr inbounds %struct.bAnimListElem, ptr %4, i64 0, i32 2
  store ptr %1, ptr %8, align 8, !tbaa !111
  %9 = call ptr @ANIM_channel_get_typeinfo(ptr noundef nonnull %4) #9
  %10 = icmp eq ptr %9, null
  br i1 %10, label %20, label %11

11:                                               ; preds = %3
  %12 = getelementptr inbounds %struct.bAnimChannelType, ptr %9, i64 0, i32 6
  %13 = load ptr, ptr %12, align 8, !tbaa !249
  %14 = icmp eq ptr %13, null
  br i1 %14, label %20, label %15

15:                                               ; preds = %11
  call void @llvm.lifetime.start.p0(i64 256, ptr nonnull %5) #10
  call void %13(ptr noundef nonnull %4, ptr noundef nonnull %5) #9
  %16 = getelementptr inbounds %struct.bDopeSheet, ptr %0, i64 0, i32 3
  %17 = call ptr @BLI_strcasestr(ptr noundef nonnull %5, ptr noundef nonnull %16) #9
  %18 = icmp eq ptr %17, null
  %19 = zext i1 %18 to i8
  call void @llvm.lifetime.end.p0(i64 256, ptr nonnull %5) #10
  br label %20

20:                                               ; preds = %3, %11, %15
  %21 = phi i8 [ %19, %15 ], [ 1, %11 ], [ 1, %3 ]
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %4) #10
  ret i8 %21
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(read, inaccessiblemem: none) uwtable
define internal fastcc noundef zeroext i8 @fcurve_has_errors(ptr nocapture noundef readonly %0) unnamed_addr #5 !PGOFuncName !251 {
  %2 = getelementptr inbounds %struct.FCurve, ptr %0, i64 0, i32 9
  %3 = load i16, ptr %2, align 8, !tbaa !173
  %4 = and i16 %3, 1024
  %5 = icmp eq i16 %4, 0
  br i1 %5, label %6, label %40

6:                                                ; preds = %1
  %7 = getelementptr inbounds %struct.FCurve, ptr %0, i64 0, i32 3
  %8 = load ptr, ptr %7, align 8, !tbaa !252
  %9 = icmp eq ptr %8, null
  br i1 %9, label %40, label %10

10:                                               ; preds = %6
  %11 = getelementptr inbounds %struct.ChannelDriver, ptr %8, i64 0, i32 6
  %12 = load i32, ptr %11, align 4, !tbaa !253
  %13 = and i32 %12, 1
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %15, label %40

15:                                               ; preds = %10
  %16 = load ptr, ptr %8, align 8, !tbaa !72
  %17 = icmp eq ptr %16, null
  br i1 %17, label %40, label %21

18:                                               ; preds = %36, %21
  %19 = load ptr, ptr %22, align 8, !tbaa !72
  %20 = icmp eq ptr %19, null
  br i1 %20, label %40, label %21, !llvm.loop !255

21:                                               ; preds = %15, %18
  %22 = phi ptr [ %19, %18 ], [ %16, %15 ]
  %23 = getelementptr inbounds %struct.DriverVar, ptr %22, i64 0, i32 4
  %24 = load i16, ptr %23, align 8, !tbaa !256
  %25 = sext i16 %24 to i32
  %26 = icmp sgt i16 %24, 0
  br i1 %26, label %27, label %18

27:                                               ; preds = %21
  %28 = getelementptr inbounds %struct.DriverVar, ptr %22, i64 0, i32 3
  br label %29

29:                                               ; preds = %27, %36
  %30 = phi i32 [ %37, %36 ], [ 0, %27 ]
  %31 = phi ptr [ %38, %36 ], [ %28, %27 ]
  %32 = getelementptr inbounds %struct.DriverTarget, ptr %31, i64 0, i32 4
  %33 = load i16, ptr %32, align 2, !tbaa !258
  %34 = and i16 %33, 16
  %35 = icmp eq i16 %34, 0
  br i1 %35, label %36, label %40

36:                                               ; preds = %29
  %37 = add nuw nsw i32 %30, 1
  %38 = getelementptr inbounds %struct.DriverTarget, ptr %31, i64 1
  %39 = icmp eq i32 %37, %25
  br i1 %39, label %18, label %29, !llvm.loop !260

40:                                               ; preds = %18, %29, %15, %10, %6, %1
  %41 = phi i8 [ 1, %1 ], [ 0, %6 ], [ 1, %10 ], [ 0, %15 ], [ 1, %29 ], [ 0, %18 ]
  ret i8 %41
}

; Function Attrs: mustprogress nofree nounwind optsize willreturn memory(argmem: read)
declare ptr @strstr(ptr noundef, ptr nocapture noundef) local_unnamed_addr #6

; Function Attrs: optsize
declare ptr @BLI_str_quoted_substrN(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @BKE_pose_channel_find_name(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @BKE_sequencer_editing_get(ptr noundef, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @BKE_sequence_get_by_name(ptr noundef, ptr noundef, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @nodeFindNodebyName(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @ANIM_channel_get_typeinfo(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @BLI_strcasestr(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc i64 @animdata_filter_gpencil_data(ptr noundef %0, ptr noundef %1, i32 noundef %2) unnamed_addr #0 !PGOFuncName !261 {
  %4 = getelementptr inbounds %struct.bGPdata, ptr %1, i64 0, i32 1
  %5 = load ptr, ptr %4, align 8, !tbaa !72
  %6 = icmp eq ptr %5, null
  br i1 %6, label %57, label %7

7:                                                ; preds = %3
  %8 = and i32 %2, 192
  %9 = icmp eq i32 %8, 0
  %10 = and i32 %2, 64
  %11 = icmp eq i32 %10, 0
  %12 = and i32 %2, 128
  %13 = icmp eq i32 %12, 0
  %14 = and i32 %2, 256
  %15 = icmp eq i32 %14, 0
  %16 = and i32 %2, 16
  %17 = icmp eq i32 %16, 0
  %18 = and i32 %2, 1073741824
  %19 = icmp eq i32 %18, 0
  br label %20

20:                                               ; preds = %7, %53
  %21 = phi ptr [ %5, %7 ], [ %55, %53 ]
  %22 = phi i64 [ 0, %7 ], [ %54, %53 ]
  br i1 %9, label %35, label %23

23:                                               ; preds = %20
  br i1 %11, label %29, label %24

24:                                               ; preds = %23
  %25 = getelementptr inbounds %struct.bGPDlayer, ptr %21, i64 0, i32 4
  %26 = load i32, ptr %25, align 8, !tbaa !178
  %27 = and i32 %26, 32
  %28 = icmp eq i32 %27, 0
  br i1 %28, label %29, label %35

29:                                               ; preds = %24, %23
  br i1 %13, label %53, label %30

30:                                               ; preds = %29
  %31 = getelementptr inbounds %struct.bGPDlayer, ptr %21, i64 0, i32 4
  %32 = load i32, ptr %31, align 8, !tbaa !178
  %33 = and i32 %32, 32
  %34 = icmp eq i32 %33, 0
  br i1 %34, label %35, label %53

35:                                               ; preds = %30, %24, %20
  br i1 %15, label %41, label %36

36:                                               ; preds = %35
  %37 = getelementptr inbounds %struct.bGPDlayer, ptr %21, i64 0, i32 4
  %38 = load i32, ptr %37, align 8, !tbaa !178
  %39 = and i32 %38, 2
  %40 = icmp eq i32 %39, 0
  br i1 %40, label %41, label %53

41:                                               ; preds = %36, %35
  br i1 %17, label %47, label %42

42:                                               ; preds = %41
  %43 = getelementptr inbounds %struct.bGPDlayer, ptr %21, i64 0, i32 4
  %44 = load i32, ptr %43, align 8, !tbaa !178
  %45 = and i32 %44, 4
  %46 = icmp eq i32 %45, 0
  br i1 %46, label %53, label %47

47:                                               ; preds = %42, %41
  br i1 %19, label %48, label %57

48:                                               ; preds = %47
  %49 = tail call fastcc ptr @make_new_animlistelem(ptr noundef nonnull %21, i16 noundef signext 27, ptr noundef %1) #8
  %50 = icmp eq ptr %49, null
  br i1 %50, label %53, label %51

51:                                               ; preds = %48
  tail call void @BLI_addtail(ptr noundef %0, ptr noundef nonnull %49) #9
  %52 = add i64 %22, 1
  br label %53

53:                                               ; preds = %48, %51, %29, %30, %42, %36
  %54 = phi i64 [ %22, %42 ], [ %22, %36 ], [ %22, %30 ], [ %22, %29 ], [ %52, %51 ], [ %22, %48 ]
  %55 = load ptr, ptr %21, align 8, !tbaa !72
  %56 = icmp eq ptr %55, null
  br i1 %56, label %57, label %20, !llvm.loop !262

57:                                               ; preds = %47, %53, %3
  %58 = phi i64 [ 0, %3 ], [ %54, %53 ], [ 1, %47 ]
  ret i64 %58
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc i64 @animdata_filter_mask_data(ptr noundef %0, ptr noundef %1, i32 noundef %2) unnamed_addr #0 !PGOFuncName !263 {
  %4 = tail call ptr @BKE_mask_layer_active(ptr noundef %1) #9
  %5 = getelementptr inbounds %struct.Mask, ptr %1, i64 0, i32 2
  %6 = load ptr, ptr %5, align 8, !tbaa !72
  %7 = icmp eq ptr %6, null
  br i1 %7, label %58, label %8

8:                                                ; preds = %3
  %9 = and i32 %2, 1073741824
  %10 = and i32 %2, 192
  %11 = icmp eq i32 %10, 0
  %12 = and i32 %2, 64
  %13 = icmp eq i32 %12, 0
  %14 = and i32 %2, 128
  %15 = icmp eq i32 %14, 0
  %16 = and i32 %2, 256
  %17 = icmp eq i32 %16, 0
  %18 = and i32 %2, 16
  %19 = icmp eq i32 %18, 0
  %20 = icmp eq i32 %9, 0
  br label %21

21:                                               ; preds = %8, %54
  %22 = phi ptr [ %6, %8 ], [ %56, %54 ]
  %23 = phi i64 [ 0, %8 ], [ %55, %54 ]
  br i1 %11, label %36, label %24

24:                                               ; preds = %21
  br i1 %13, label %30, label %25

25:                                               ; preds = %24
  %26 = getelementptr inbounds %struct.MaskLayer, ptr %22, i64 0, i32 12
  %27 = load i8, ptr %26, align 2, !tbaa !180
  %28 = and i8 %27, 1
  %29 = icmp eq i8 %28, 0
  br i1 %29, label %30, label %36

30:                                               ; preds = %25, %24
  br i1 %15, label %54, label %31

31:                                               ; preds = %30
  %32 = getelementptr inbounds %struct.MaskLayer, ptr %22, i64 0, i32 12
  %33 = load i8, ptr %32, align 2, !tbaa !180
  %34 = and i8 %33, 1
  %35 = icmp eq i8 %34, 0
  br i1 %35, label %36, label %54

36:                                               ; preds = %31, %25, %21
  br i1 %17, label %45, label %37

37:                                               ; preds = %36
  %38 = getelementptr inbounds %struct.MaskLayer, ptr %22, i64 0, i32 12
  %39 = load i8, ptr %38, align 2, !tbaa !180
  %40 = and i8 %39, 16
  %41 = icmp eq i8 %40, 0
  %42 = icmp eq ptr %4, %22
  %43 = select i1 %19, i1 true, i1 %42
  %44 = select i1 %41, i1 %43, i1 false
  br i1 %44, label %48, label %54

45:                                               ; preds = %36
  %46 = icmp eq ptr %4, %22
  %47 = select i1 %19, i1 true, i1 %46
  br i1 %47, label %48, label %54

48:                                               ; preds = %37, %45
  br i1 %20, label %49, label %58

49:                                               ; preds = %48
  %50 = tail call fastcc ptr @make_new_animlistelem(ptr noundef nonnull %22, i16 noundef signext 29, ptr noundef %1) #8
  %51 = icmp eq ptr %50, null
  br i1 %51, label %54, label %52

52:                                               ; preds = %49
  tail call void @BLI_addtail(ptr noundef %0, ptr noundef nonnull %50) #9
  %53 = add i64 %23, 1
  br label %54

54:                                               ; preds = %49, %52, %45, %30, %31, %37
  %55 = phi i64 [ %23, %37 ], [ %23, %31 ], [ %23, %30 ], [ %23, %45 ], [ %53, %52 ], [ %23, %49 ]
  %56 = load ptr, ptr %22, align 8, !tbaa !72
  %57 = icmp eq ptr %56, null
  br i1 %57, label %58, label %21, !llvm.loop !264

58:                                               ; preds = %48, %54, %3
  %59 = phi i64 [ 0, %3 ], [ %55, %54 ], [ 1, %48 ]
  ret i64 %59
}

; Function Attrs: optsize
declare ptr @BKE_mask_layer_active(ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc i64 @animdata_filter_dopesheet_scene(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, i32 noundef %4) unnamed_addr #0 !PGOFuncName !265 {
  %6 = alloca %struct.ListBase, align 8
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %6) #10
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %6, i8 0, i64 16, i1 false)
  %7 = and i32 %4, 2
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %19, label %9

9:                                                ; preds = %5
  %10 = getelementptr inbounds %struct.Scene, ptr %3, i64 0, i32 15
  %11 = load i16, ptr %10, align 4, !tbaa !118
  %12 = and i16 %11, 2
  %13 = icmp eq i16 %12, 0
  %14 = and i32 %4, 8
  %15 = icmp eq i32 %14, 0
  %16 = or i1 %15, %13
  %17 = or i32 %4, 1073741824
  %18 = select i1 %16, i32 %4, i32 %17
  br label %19

19:                                               ; preds = %9, %5
  %20 = phi i32 [ %4, %5 ], [ %18, %9 ]
  %21 = getelementptr inbounds %struct.Scene, ptr %3, i64 0, i32 18
  %22 = load ptr, ptr %21, align 8, !tbaa !266
  %23 = getelementptr inbounds %struct.Scene, ptr %3, i64 0, i32 3
  %24 = load ptr, ptr %23, align 8, !tbaa !267
  %25 = getelementptr inbounds %struct.bDopeSheet, ptr %2, i64 0, i32 4
  %26 = load i32, ptr %25, align 8, !tbaa !75
  %27 = and i32 %26, 32768
  %28 = icmp eq i32 %27, 0
  br i1 %28, label %29, label %32

29:                                               ; preds = %19
  %30 = call fastcc i64 @animdata_filter_ds_scene(ptr noundef %0, ptr noundef nonnull %6, ptr noundef nonnull %2, ptr noundef nonnull %3, i32 noundef %20) #8
  %31 = load i32, ptr %25, align 8, !tbaa !75
  br label %32

32:                                               ; preds = %29, %19
  %33 = phi i32 [ %31, %29 ], [ %26, %19 ]
  %34 = phi i64 [ %30, %29 ], [ 0, %19 ]
  %35 = icmp ne ptr %24, null
  %36 = and i32 %33, 16384
  %37 = icmp eq i32 %36, 0
  %38 = select i1 %35, i1 %37, i1 false
  br i1 %38, label %39, label %43

39:                                               ; preds = %32
  %40 = call fastcc i64 @animdata_filter_ds_world(ptr noundef %0, ptr noundef nonnull %6, ptr noundef nonnull %2, ptr noundef nonnull %3, ptr noundef nonnull %24, i32 noundef %20) #8
  %41 = add i64 %40, %34
  %42 = load i32, ptr %25, align 8, !tbaa !75
  br label %43

43:                                               ; preds = %39, %32
  %44 = phi i32 [ %42, %39 ], [ %33, %32 ]
  %45 = phi i64 [ %41, %39 ], [ %34, %32 ]
  %46 = icmp ne ptr %22, null
  %47 = and i32 %44, 524288
  %48 = icmp eq i32 %47, 0
  %49 = select i1 %46, i1 %48, i1 false
  br i1 %49, label %50, label %54

50:                                               ; preds = %43
  %51 = call fastcc i64 @animdata_filter_ds_nodetree(ptr noundef %0, ptr noundef nonnull %6, ptr noundef nonnull %2, ptr noundef nonnull %3, ptr noundef nonnull %22, i32 noundef %20) #8
  %52 = add i64 %51, %45
  %53 = load i32, ptr %25, align 8, !tbaa !75
  br label %54

54:                                               ; preds = %50, %43
  %55 = phi i32 [ %53, %50 ], [ %44, %43 ]
  %56 = phi i64 [ %52, %50 ], [ %45, %43 ]
  %57 = and i32 %55, 4194304
  %58 = icmp eq i32 %57, 0
  br i1 %58, label %59, label %62

59:                                               ; preds = %54
  %60 = call fastcc i64 @animdata_filter_ds_linestyle(ptr noundef %0, ptr noundef nonnull %6, ptr noundef nonnull %2, ptr noundef nonnull %3, i32 noundef %20) #8
  %61 = add i64 %60, %56
  br label %62

62:                                               ; preds = %59, %54
  %63 = phi i64 [ %61, %59 ], [ %56, %54 ]
  %64 = icmp eq i64 %63, 0
  br i1 %64, label %97, label %65

65:                                               ; preds = %62
  %66 = and i32 %4, 8
  %67 = icmp eq i32 %66, 0
  br i1 %67, label %94, label %68

68:                                               ; preds = %65
  %69 = and i32 %4, 192
  %70 = icmp eq i32 %69, 0
  br i1 %70, label %87, label %71

71:                                               ; preds = %68
  %72 = and i32 %4, 64
  %73 = icmp eq i32 %72, 0
  br i1 %73, label %79, label %74

74:                                               ; preds = %71
  %75 = getelementptr inbounds %struct.Scene, ptr %3, i64 0, i32 15
  %76 = load i16, ptr %75, align 4, !tbaa !118
  %77 = and i16 %76, 1
  %78 = icmp eq i16 %77, 0
  br i1 %78, label %79, label %87

79:                                               ; preds = %74, %71
  %80 = and i32 %4, 128
  %81 = icmp eq i32 %80, 0
  br i1 %81, label %94, label %82

82:                                               ; preds = %79
  %83 = getelementptr inbounds %struct.Scene, ptr %3, i64 0, i32 15
  %84 = load i16, ptr %83, align 4, !tbaa !118
  %85 = and i16 %84, 1
  %86 = icmp eq i16 %85, 0
  br i1 %86, label %87, label %94

87:                                               ; preds = %82, %74, %68
  %88 = and i32 %4, 1073741824
  %89 = icmp eq i32 %88, 0
  br i1 %89, label %90, label %97

90:                                               ; preds = %87
  %91 = call fastcc ptr @make_new_animlistelem(ptr noundef nonnull %3, i16 noundef signext 4, ptr noundef nonnull %3) #8
  %92 = icmp eq ptr %91, null
  br i1 %92, label %94, label %93

93:                                               ; preds = %90
  call void @BLI_addtail(ptr noundef %1, ptr noundef nonnull %91) #9
  br label %94

94:                                               ; preds = %90, %93, %79, %82, %65
  %95 = phi i64 [ 0, %82 ], [ 0, %79 ], [ 0, %65 ], [ 1, %93 ], [ 0, %90 ]
  call void @BLI_movelisttolist(ptr noundef %1, ptr noundef nonnull %6) #9
  %96 = add i64 %95, %63
  br label %97

97:                                               ; preds = %62, %94, %87
  %98 = phi i64 [ 1, %87 ], [ %96, %94 ], [ 0, %62 ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %6) #10
  ret i64 %98
}

; Function Attrs: optsize
declare zeroext i8 @BKE_group_object_exists(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc i64 @animdata_filter_dopesheet_ob(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, i32 noundef %4) unnamed_addr #0 !PGOFuncName !268 {
  %6 = alloca %struct.ListBase, align 8
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %6) #10
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %6, i8 0, i64 16, i1 false)
  %7 = getelementptr inbounds %struct.Base, ptr %3, i64 0, i32 7
  %8 = load ptr, ptr %7, align 8, !tbaa !99
  %9 = and i32 %4, 2
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %21, label %11

11:                                               ; preds = %5
  %12 = getelementptr inbounds %struct.Object, ptr %8, i64 0, i32 59
  %13 = load i16, ptr %12, align 8, !tbaa !269
  %14 = and i16 %13, 1024
  %15 = icmp eq i16 %14, 0
  %16 = and i32 %4, 8
  %17 = icmp eq i32 %16, 0
  %18 = or i1 %17, %15
  %19 = or i32 %4, 1073741824
  %20 = select i1 %18, i32 %4, i32 %19
  br label %21

21:                                               ; preds = %11, %5
  %22 = phi i32 [ %4, %5 ], [ %20, %11 ]
  %23 = tail call ptr @BKE_key_from_object(ptr noundef %8) #9
  %24 = getelementptr inbounds %struct.Object, ptr %8, i64 0, i32 1
  %25 = load ptr, ptr %24, align 8, !tbaa !55
  %26 = icmp eq ptr %25, null
  br i1 %26, label %34, label %27

27:                                               ; preds = %21
  %28 = getelementptr inbounds %struct.bDopeSheet, ptr %2, i64 0, i32 4
  %29 = load i32, ptr %28, align 8, !tbaa !75
  %30 = and i32 %29, 256
  %31 = icmp eq i32 %30, 0
  br i1 %31, label %32, label %34

32:                                               ; preds = %27
  %33 = call fastcc i64 @animdata_filter_ds_obanim(ptr noundef %0, ptr noundef nonnull %6, ptr noundef nonnull %2, ptr noundef nonnull %8, i32 noundef %22) #8
  br label %34

34:                                               ; preds = %32, %27, %21
  %35 = phi i64 [ 0, %27 ], [ %33, %32 ], [ 0, %21 ]
  %36 = icmp eq ptr %23, null
  br i1 %36, label %49, label %37

37:                                               ; preds = %34
  %38 = getelementptr inbounds %struct.Key, ptr %23, i64 0, i32 1
  %39 = load ptr, ptr %38, align 8, !tbaa !64
  %40 = icmp eq ptr %39, null
  br i1 %40, label %49, label %41

41:                                               ; preds = %37
  %42 = getelementptr inbounds %struct.bDopeSheet, ptr %2, i64 0, i32 4
  %43 = load i32, ptr %42, align 8, !tbaa !75
  %44 = and i32 %43, 64
  %45 = icmp eq i32 %44, 0
  br i1 %45, label %46, label %49

46:                                               ; preds = %41
  %47 = call fastcc i64 @animdata_filter_ds_keyanim(ptr noundef %0, ptr noundef nonnull %6, ptr noundef nonnull %2, ptr noundef nonnull %8, ptr noundef nonnull %23, i32 noundef %22) #8
  %48 = add i64 %47, %35
  br label %49

49:                                               ; preds = %46, %41, %37, %34
  %50 = phi i64 [ %35, %41 ], [ %48, %46 ], [ %35, %37 ], [ %35, %34 ]
  %51 = getelementptr inbounds %struct.Object, ptr %8, i64 0, i32 26
  %52 = load ptr, ptr %51, align 8, !tbaa !270
  %53 = icmp eq ptr %52, null
  br i1 %53, label %62, label %54

54:                                               ; preds = %49
  %55 = getelementptr inbounds %struct.bDopeSheet, ptr %2, i64 0, i32 4
  %56 = load i32, ptr %55, align 8, !tbaa !75
  %57 = and i32 %56, 8388608
  %58 = icmp eq i32 %57, 0
  br i1 %58, label %59, label %62

59:                                               ; preds = %54
  %60 = call fastcc i64 @animdata_filter_ds_modifiers(ptr noundef %0, ptr noundef nonnull %6, ptr noundef nonnull %2, ptr noundef nonnull %8, i32 noundef %22) #8
  %61 = add i64 %60, %50
  br label %62

62:                                               ; preds = %59, %54, %49
  %63 = phi i64 [ %50, %54 ], [ %61, %59 ], [ %50, %49 ]
  %64 = getelementptr inbounds %struct.Object, ptr %8, i64 0, i32 31
  %65 = load i32, ptr %64, align 8, !tbaa !271
  %66 = icmp eq i32 %65, 0
  br i1 %66, label %75, label %67

67:                                               ; preds = %62
  %68 = getelementptr inbounds %struct.bDopeSheet, ptr %2, i64 0, i32 4
  %69 = load i32, ptr %68, align 8, !tbaa !75
  %70 = and i32 %69, 2048
  %71 = icmp eq i32 %70, 0
  br i1 %71, label %72, label %75

72:                                               ; preds = %67
  %73 = call fastcc i64 @animdata_filter_ds_materials(ptr noundef %0, ptr noundef nonnull %6, ptr noundef nonnull %2, ptr noundef nonnull %8, i32 noundef %22) #8
  %74 = add i64 %73, %63
  br label %75

75:                                               ; preds = %72, %67, %62
  %76 = phi i64 [ %63, %67 ], [ %74, %72 ], [ %63, %62 ]
  %77 = getelementptr inbounds %struct.Object, ptr %8, i64 0, i32 19
  %78 = load ptr, ptr %77, align 8, !tbaa !237
  %79 = icmp eq ptr %78, null
  br i1 %79, label %83, label %80

80:                                               ; preds = %75
  %81 = call fastcc i64 @animdata_filter_ds_obdata(ptr noundef %0, ptr noundef nonnull %6, ptr noundef %2, ptr noundef nonnull %8, i32 noundef %22) #8
  %82 = add i64 %81, %76
  br label %83

83:                                               ; preds = %80, %75
  %84 = phi i64 [ %82, %80 ], [ %76, %75 ]
  %85 = getelementptr inbounds %struct.Object, ptr %8, i64 0, i32 109
  %86 = load ptr, ptr %85, align 8, !tbaa !272
  %87 = icmp eq ptr %86, null
  br i1 %87, label %96, label %88

88:                                               ; preds = %83
  %89 = getelementptr inbounds %struct.bDopeSheet, ptr %2, i64 0, i32 4
  %90 = load i32, ptr %89, align 8, !tbaa !75
  %91 = and i32 %90, 65536
  %92 = icmp eq i32 %91, 0
  br i1 %92, label %93, label %96

93:                                               ; preds = %88
  %94 = call fastcc i64 @animdata_filter_ds_particles(ptr noundef %0, ptr noundef nonnull %6, ptr noundef nonnull %2, ptr noundef nonnull %8, i32 noundef %22) #8
  %95 = add i64 %94, %84
  br label %96

96:                                               ; preds = %93, %88, %83
  %97 = phi i64 [ %84, %88 ], [ %95, %93 ], [ %84, %83 ]
  %98 = icmp eq i64 %97, 0
  br i1 %98, label %142, label %99

99:                                               ; preds = %96
  %100 = and i32 %4, 8
  %101 = icmp eq i32 %100, 0
  br i1 %101, label %139, label %102

102:                                              ; preds = %99
  %103 = and i32 %4, 192
  %104 = icmp eq i32 %103, 0
  br i1 %104, label %121, label %105

105:                                              ; preds = %102
  %106 = and i32 %4, 64
  %107 = icmp eq i32 %106, 0
  br i1 %107, label %113, label %108

108:                                              ; preds = %105
  %109 = getelementptr inbounds %struct.Base, ptr %3, i64 0, i32 4
  %110 = load i32, ptr %109, align 8, !tbaa !212
  %111 = and i32 %110, 1
  %112 = icmp eq i32 %111, 0
  br i1 %112, label %113, label %121

113:                                              ; preds = %108, %105
  %114 = and i32 %4, 128
  %115 = icmp eq i32 %114, 0
  br i1 %115, label %139, label %116

116:                                              ; preds = %113
  %117 = getelementptr inbounds %struct.Base, ptr %3, i64 0, i32 4
  %118 = load i32, ptr %117, align 8, !tbaa !212
  %119 = and i32 %118, 1
  %120 = icmp eq i32 %119, 0
  br i1 %120, label %121, label %139

121:                                              ; preds = %116, %108, %102
  %122 = and i32 %4, 16
  %123 = icmp eq i32 %122, 0
  br i1 %123, label %132, label %124

124:                                              ; preds = %121
  %125 = load ptr, ptr %24, align 8, !tbaa !55
  %126 = icmp eq ptr %125, null
  br i1 %126, label %132, label %127

127:                                              ; preds = %124
  %128 = getelementptr inbounds %struct.AnimData, ptr %125, i64 0, i32 7
  %129 = load i32, ptr %128, align 8, !tbaa !123
  %130 = and i32 %129, 32768
  %131 = icmp eq i32 %130, 0
  br i1 %131, label %139, label %132

132:                                              ; preds = %127, %124, %121
  %133 = and i32 %4, 1073741824
  %134 = icmp eq i32 %133, 0
  br i1 %134, label %135, label %142

135:                                              ; preds = %132
  %136 = call fastcc ptr @make_new_animlistelem(ptr noundef nonnull %3, i16 noundef signext 5, ptr noundef nonnull %8) #8
  %137 = icmp eq ptr %136, null
  br i1 %137, label %139, label %138

138:                                              ; preds = %135
  call void @BLI_addtail(ptr noundef %1, ptr noundef nonnull %136) #9
  br label %139

139:                                              ; preds = %135, %138, %113, %116, %127, %99
  %140 = phi i64 [ 0, %127 ], [ 0, %116 ], [ 0, %113 ], [ 0, %99 ], [ 1, %138 ], [ 0, %135 ]
  call void @BLI_movelisttolist(ptr noundef %1, ptr noundef nonnull %6) #9
  %141 = add i64 %140, %97
  br label %142

142:                                              ; preds = %96, %139, %132
  %143 = phi i64 [ 1, %132 ], [ %141, %139 ], [ 0, %96 ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %6) #10
  ret i64 %143
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc i64 @animdata_filter_ds_scene(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, i32 noundef %4) unnamed_addr #0 !PGOFuncName !273 {
  %6 = alloca %struct.ListBase, align 8
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %6) #10
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %6, i8 0, i64 16, i1 false)
  %7 = getelementptr inbounds %struct.Scene, ptr %3, i64 0, i32 1
  %8 = load ptr, ptr %7, align 8, !tbaa !274
  %9 = icmp eq ptr %8, null
  br i1 %9, label %49, label %10

10:                                               ; preds = %5
  %11 = and i32 %4, 4
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %20, label %13

13:                                               ; preds = %10
  %14 = getelementptr inbounds %struct.AnimData, ptr %8, i64 0, i32 7
  %15 = load i32, ptr %14, align 8, !tbaa !123
  %16 = and i32 %15, 65536
  %17 = and i32 %4, 1024
  %18 = or disjoint i32 %16, %17
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %23, label %49

20:                                               ; preds = %10
  %21 = and i32 %4, 1024
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %23, label %49

23:                                               ; preds = %13, %20
  %24 = getelementptr inbounds %struct.bDopeSheet, ptr %2, i64 0, i32 4
  %25 = load i32, ptr %24, align 8, !tbaa !75
  %26 = and i32 %25, 4
  %27 = icmp eq i32 %26, 0
  br i1 %27, label %28, label %49

28:                                               ; preds = %23
  %29 = and i32 %25, 2
  %30 = icmp eq i32 %29, 0
  br i1 %30, label %41, label %31

31:                                               ; preds = %28
  %32 = getelementptr inbounds %struct.AnimData, ptr %8, i64 0, i32 5
  %33 = load ptr, ptr %32, align 8, !tbaa !275
  %34 = icmp eq ptr %33, null
  br i1 %34, label %49, label %35

35:                                               ; preds = %31
  %36 = getelementptr inbounds %struct.AnimData, ptr %8, i64 0, i32 7
  %37 = load i32, ptr %36, align 8, !tbaa !123
  %38 = lshr i32 %37, 10
  %39 = and i32 %38, 1
  %40 = xor i32 %39, 1
  br label %49

41:                                               ; preds = %28
  %42 = load ptr, ptr %8, align 8, !tbaa !60
  %43 = icmp eq ptr %42, null
  br i1 %43, label %49, label %44

44:                                               ; preds = %41
  %45 = getelementptr inbounds %struct.bAction, ptr %42, i64 0, i32 5
  %46 = load i32, ptr %45, align 8, !tbaa !121
  %47 = and i32 %46, 1
  %48 = xor i32 %47, 1
  br label %49

49:                                               ; preds = %23, %13, %41, %44, %31, %35, %20, %5
  %50 = phi i1 [ false, %13 ], [ false, %20 ], [ false, %23 ], [ true, %35 ], [ false, %31 ], [ true, %44 ], [ false, %41 ], [ false, %5 ]
  %51 = phi i16 [ 0, %13 ], [ 0, %20 ], [ 0, %23 ], [ 9, %35 ], [ 0, %31 ], [ 8, %44 ], [ 0, %41 ], [ 0, %5 ]
  %52 = phi i32 [ 1, %13 ], [ 1, %20 ], [ 1, %23 ], [ %40, %35 ], [ 1, %31 ], [ %48, %44 ], [ 1, %41 ], [ 1, %5 ]
  %53 = phi ptr [ null, %13 ], [ null, %20 ], [ null, %23 ], [ %8, %35 ], [ null, %31 ], [ %42, %44 ], [ null, %41 ], [ null, %5 ]
  %54 = icmp ne i32 %52, 0
  %55 = and i32 %4, 10
  %56 = icmp ne i32 %55, 10
  %57 = select i1 %56, i1 true, i1 %54
  %58 = or i32 %4, 1073741824
  %59 = select i1 %57, i32 %4, i32 %58
  %60 = call fastcc i64 @animfilter_block_data(ptr noundef %0, ptr noundef nonnull %6, ptr noundef %2, ptr noundef nonnull %3, i32 noundef %59) #8
  %61 = icmp eq i64 %60, 0
  br i1 %61, label %76, label %62

62:                                               ; preds = %49
  %63 = and i32 %4, 8
  %64 = icmp ne i32 %63, 0
  %65 = and i1 %64, %50
  br i1 %65, label %66, label %73

66:                                               ; preds = %62
  %67 = and i32 %4, 1073741824
  %68 = icmp eq i32 %67, 0
  br i1 %68, label %69, label %76

69:                                               ; preds = %66
  %70 = call fastcc ptr @make_new_animlistelem(ptr noundef %53, i16 noundef signext %51, ptr noundef nonnull %3) #8
  %71 = icmp eq ptr %70, null
  br i1 %71, label %73, label %72

72:                                               ; preds = %69
  call void @BLI_addtail(ptr noundef %1, ptr noundef nonnull %70) #9
  br label %73

73:                                               ; preds = %69, %72, %62
  %74 = phi i64 [ 0, %62 ], [ 1, %72 ], [ 0, %69 ]
  call void @BLI_movelisttolist(ptr noundef %1, ptr noundef nonnull %6) #9
  %75 = add i64 %74, %60
  br label %76

76:                                               ; preds = %49, %73, %66
  %77 = phi i64 [ 1, %66 ], [ %75, %73 ], [ 0, %49 ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %6) #10
  ret i64 %77
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc i64 @animdata_filter_ds_world(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4, i32 noundef %5) unnamed_addr #0 !PGOFuncName !276 {
  %7 = alloca %struct.ListBase, align 8
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %7) #10
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %7, i8 0, i64 16, i1 false)
  %8 = and i32 %5, 2
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %20, label %10

10:                                               ; preds = %6
  %11 = getelementptr inbounds %struct.World, ptr %4, i64 0, i32 66
  %12 = load i16, ptr %11, align 2, !tbaa !155
  %13 = and i16 %12, 1
  %14 = icmp ne i16 %13, 0
  %15 = and i32 %5, 8
  %16 = icmp eq i32 %15, 0
  %17 = or i1 %16, %14
  %18 = or i32 %5, 1073741824
  %19 = select i1 %17, i32 %5, i32 %18
  br label %20

20:                                               ; preds = %10, %6
  %21 = phi i32 [ %5, %6 ], [ %19, %10 ]
  %22 = call fastcc i64 @animfilter_block_data(ptr noundef %0, ptr noundef nonnull %7, ptr noundef %2, ptr noundef %4, i32 noundef %21) #8
  %23 = getelementptr inbounds %struct.bDopeSheet, ptr %2, i64 0, i32 4
  %24 = load i32, ptr %23, align 8, !tbaa !75
  %25 = and i32 %24, 1048576
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %27, label %29

27:                                               ; preds = %20
  %28 = call fastcc i64 @animdata_filter_ds_textures(ptr noundef %0, ptr noundef nonnull %7, ptr noundef nonnull %2, ptr noundef %4, i32 noundef %21) #8
  br label %29

29:                                               ; preds = %27, %20
  %30 = phi i64 [ 0, %20 ], [ %28, %27 ]
  %31 = getelementptr inbounds %struct.World, ptr %4, i64 0, i32 75
  %32 = load ptr, ptr %31, align 8, !tbaa !277
  %33 = icmp eq ptr %32, null
  br i1 %33, label %41, label %34

34:                                               ; preds = %29
  %35 = load i32, ptr %23, align 8, !tbaa !75
  %36 = and i32 %35, 524288
  %37 = icmp eq i32 %36, 0
  br i1 %37, label %38, label %41

38:                                               ; preds = %34
  %39 = call fastcc i64 @animdata_filter_ds_nodetree(ptr noundef %0, ptr noundef nonnull %7, ptr noundef nonnull %2, ptr noundef nonnull %4, ptr noundef nonnull %32, i32 noundef %21) #8
  %40 = add i64 %39, %22
  br label %41

41:                                               ; preds = %38, %34, %29
  %42 = phi i64 [ %22, %34 ], [ %40, %38 ], [ %22, %29 ]
  %43 = icmp eq i64 %42, 0
  br i1 %43, label %70, label %44

44:                                               ; preds = %41
  %45 = and i32 %5, 8
  %46 = icmp eq i32 %45, 0
  br i1 %46, label %67, label %47

47:                                               ; preds = %44
  %48 = and i32 %5, 16
  %49 = icmp eq i32 %48, 0
  br i1 %49, label %59, label %50

50:                                               ; preds = %47
  %51 = getelementptr inbounds %struct.World, ptr %4, i64 0, i32 1
  %52 = load ptr, ptr %51, align 8, !tbaa !153
  %53 = icmp eq ptr %52, null
  br i1 %53, label %59, label %54

54:                                               ; preds = %50
  %55 = getelementptr inbounds %struct.AnimData, ptr %52, i64 0, i32 7
  %56 = load i32, ptr %55, align 8, !tbaa !123
  %57 = and i32 %56, 32768
  %58 = icmp eq i32 %57, 0
  br i1 %58, label %67, label %59

59:                                               ; preds = %54, %50, %47
  %60 = and i32 %5, 1073741824
  %61 = icmp eq i32 %60, 0
  br i1 %61, label %62, label %70

62:                                               ; preds = %59
  %63 = call fastcc ptr @make_new_animlistelem(ptr noundef nonnull %4, i16 noundef signext 15, ptr noundef %3) #8
  %64 = icmp eq ptr %63, null
  br i1 %64, label %67, label %65

65:                                               ; preds = %62
  call void @BLI_addtail(ptr noundef %1, ptr noundef nonnull %63) #9
  %66 = add i64 %30, 1
  br label %67

67:                                               ; preds = %62, %65, %54, %44
  %68 = phi i64 [ %30, %54 ], [ %30, %44 ], [ %66, %65 ], [ %30, %62 ]
  call void @BLI_movelisttolist(ptr noundef %1, ptr noundef nonnull %7) #9
  %69 = add i64 %68, %42
  br label %70

70:                                               ; preds = %41, %67, %59
  %71 = phi i64 [ 1, %59 ], [ %69, %67 ], [ %30, %41 ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %7) #10
  ret i64 %71
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc i64 @animdata_filter_ds_nodetree(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4, i32 noundef %5) unnamed_addr #0 !PGOFuncName !278 {
  %7 = tail call fastcc i64 @animdata_filter_ds_nodetree_group(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4, i32 noundef %5) #8
  %8 = getelementptr inbounds %struct.bNodeTree, ptr %4, i64 0, i32 7
  %9 = load ptr, ptr %8, align 8, !tbaa !72
  %10 = icmp eq ptr %9, null
  br i1 %10, label %40, label %11

11:                                               ; preds = %6
  %12 = getelementptr inbounds %struct.bDopeSheet, ptr %2, i64 0, i32 4
  %13 = or i32 %5, -2147483648
  br label %14

14:                                               ; preds = %11, %36
  %15 = phi ptr [ %9, %11 ], [ %38, %36 ]
  %16 = phi i64 [ %7, %11 ], [ %37, %36 ]
  %17 = getelementptr inbounds %struct.bNode, ptr %15, i64 0, i32 8
  %18 = load i16, ptr %17, align 4, !tbaa !279
  %19 = icmp eq i16 %18, 2
  br i1 %19, label %20, label %36

20:                                               ; preds = %14
  %21 = getelementptr inbounds %struct.bNode, ptr %15, i64 0, i32 20
  %22 = load ptr, ptr %21, align 8, !tbaa !280
  %23 = icmp eq ptr %22, null
  br i1 %23, label %36, label %24

24:                                               ; preds = %20
  %25 = load i32, ptr %12, align 8, !tbaa !75
  %26 = and i32 %25, 1
  %27 = icmp eq i32 %26, 0
  br i1 %27, label %33, label %28

28:                                               ; preds = %24
  %29 = getelementptr inbounds %struct.bNode, ptr %15, i64 0, i32 7
  %30 = load i32, ptr %29, align 8, !tbaa !246
  %31 = and i32 %30, 1
  %32 = icmp eq i32 %31, 0
  br i1 %32, label %36, label %33

33:                                               ; preds = %28, %24
  %34 = tail call fastcc i64 @animdata_filter_ds_nodetree_group(ptr noundef %0, ptr noundef %1, ptr noundef nonnull %2, ptr noundef %3, ptr noundef nonnull %22, i32 noundef %13) #8
  %35 = add i64 %34, %16
  br label %36

36:                                               ; preds = %14, %33, %20, %28
  %37 = phi i64 [ %16, %28 ], [ %35, %33 ], [ %16, %20 ], [ %16, %14 ]
  %38 = load ptr, ptr %15, align 8, !tbaa !72
  %39 = icmp eq ptr %38, null
  br i1 %39, label %40, label %14, !llvm.loop !281

40:                                               ; preds = %36, %6
  %41 = phi i64 [ %7, %6 ], [ %37, %36 ]
  ret i64 %41
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc i64 @animdata_filter_ds_linestyle(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, i32 noundef %4) unnamed_addr #0 !PGOFuncName !282 {
  %6 = alloca %struct.ListBase, align 8
  %7 = getelementptr inbounds %struct.Scene, ptr %3, i64 0, i32 22, i32 60
  %8 = load ptr, ptr %7, align 8, !tbaa !72
  %9 = icmp eq ptr %8, null
  br i1 %9, label %105, label %24

10:                                               ; preds = %38, %24
  %11 = load ptr, ptr %25, align 8, !tbaa !72
  %12 = icmp eq ptr %11, null
  br i1 %12, label %13, label %24, !llvm.loop !283

13:                                               ; preds = %10
  br i1 %9, label %105, label %14

14:                                               ; preds = %13
  %15 = and i32 %4, 2
  %16 = icmp eq i32 %15, 0
  %17 = and i32 %4, 8
  %18 = icmp eq i32 %17, 0
  %19 = or i32 %4, 1073741824
  %20 = and i32 %4, 16
  %21 = icmp eq i32 %20, 0
  %22 = and i32 %4, 1073741824
  %23 = icmp eq i32 %22, 0
  br label %41

24:                                               ; preds = %5, %10
  %25 = phi ptr [ %11, %10 ], [ %8, %5 ]
  %26 = getelementptr inbounds %struct.SceneRenderLayer, ptr %25, i64 0, i32 13, i32 7
  %27 = load ptr, ptr %26, align 8, !tbaa !72
  %28 = icmp eq ptr %27, null
  br i1 %28, label %10, label %29

29:                                               ; preds = %24, %38
  %30 = phi ptr [ %39, %38 ], [ %27, %24 ]
  %31 = getelementptr inbounds %struct.FreestyleLineSet, ptr %30, i64 0, i32 13
  %32 = load ptr, ptr %31, align 8, !tbaa !284
  %33 = icmp eq ptr %32, null
  br i1 %33, label %38, label %34

34:                                               ; preds = %29
  %35 = getelementptr inbounds %struct.ID, ptr %32, i64 0, i32 5
  %36 = load i16, ptr %35, align 2, !tbaa !286
  %37 = or i16 %36, 1024
  store i16 %37, ptr %35, align 2, !tbaa !286
  br label %38

38:                                               ; preds = %29, %34
  %39 = load ptr, ptr %30, align 8, !tbaa !72
  %40 = icmp eq ptr %39, null
  br i1 %40, label %10, label %29, !llvm.loop !287

41:                                               ; preds = %14, %101
  %42 = phi ptr [ %8, %14 ], [ %103, %101 ]
  %43 = phi i64 [ 0, %14 ], [ %102, %101 ]
  %44 = getelementptr inbounds %struct.SceneRenderLayer, ptr %42, i64 0, i32 8
  %45 = load i32, ptr %44, align 4, !tbaa !288
  %46 = and i32 %45, 64
  %47 = icmp eq i32 %46, 0
  br i1 %47, label %101, label %48

48:                                               ; preds = %41
  %49 = getelementptr inbounds %struct.SceneRenderLayer, ptr %42, i64 0, i32 13, i32 7
  %50 = load ptr, ptr %49, align 8, !tbaa !72
  %51 = icmp eq ptr %50, null
  br i1 %51, label %101, label %52

52:                                               ; preds = %48, %97
  %53 = phi ptr [ %99, %97 ], [ %50, %48 ]
  %54 = phi i64 [ %98, %97 ], [ %43, %48 ]
  %55 = getelementptr inbounds %struct.FreestyleLineSet, ptr %53, i64 0, i32 13
  %56 = load ptr, ptr %55, align 8, !tbaa !284
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %6) #10
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %6, i8 0, i64 16, i1 false)
  %57 = icmp eq ptr %56, null
  br i1 %57, label %97, label %58

58:                                               ; preds = %52
  %59 = getelementptr inbounds %struct.ID, ptr %56, i64 0, i32 5
  %60 = load i16, ptr %59, align 2, !tbaa !286
  %61 = and i16 %60, 1024
  %62 = icmp eq i16 %61, 0
  br i1 %62, label %97, label %63

63:                                               ; preds = %58
  %64 = and i16 %60, -1025
  store i16 %64, ptr %59, align 2, !tbaa !286
  br i1 %16, label %72, label %65

65:                                               ; preds = %63
  %66 = getelementptr inbounds %struct.FreestyleLineStyle, ptr %56, i64 0, i32 9
  %67 = load i32, ptr %66, align 4, !tbaa !162
  %68 = and i32 %67, 1
  %69 = icmp ne i32 %68, 0
  %70 = or i1 %18, %69
  %71 = select i1 %70, i32 %4, i32 %19
  br label %72

72:                                               ; preds = %65, %63
  %73 = phi i32 [ %4, %63 ], [ %71, %65 ]
  %74 = call fastcc i64 @animfilter_block_data(ptr noundef %0, ptr noundef nonnull %6, ptr noundef %2, ptr noundef nonnull %56, i32 noundef %73) #8
  %75 = icmp eq i64 %74, 0
  br i1 %75, label %97, label %76

76:                                               ; preds = %72
  br i1 %18, label %93, label %77

77:                                               ; preds = %76
  br i1 %21, label %87, label %78

78:                                               ; preds = %77
  %79 = getelementptr inbounds %struct.FreestyleLineStyle, ptr %56, i64 0, i32 1
  %80 = load ptr, ptr %79, align 8, !tbaa !160
  %81 = icmp eq ptr %80, null
  br i1 %81, label %87, label %82

82:                                               ; preds = %78
  %83 = getelementptr inbounds %struct.AnimData, ptr %80, i64 0, i32 7
  %84 = load i32, ptr %83, align 8, !tbaa !123
  %85 = and i32 %84, 32768
  %86 = icmp eq i32 %85, 0
  br i1 %86, label %93, label %87

87:                                               ; preds = %82, %78, %77
  br i1 %23, label %88, label %96

88:                                               ; preds = %87
  %89 = call fastcc ptr @make_new_animlistelem(ptr noundef nonnull %56, i16 noundef signext 23, ptr noundef %3) #8
  %90 = icmp eq ptr %89, null
  br i1 %90, label %93, label %91

91:                                               ; preds = %88
  call void @BLI_addtail(ptr noundef %1, ptr noundef nonnull %89) #9
  %92 = add i64 %54, 1
  br label %93

93:                                               ; preds = %88, %91, %82, %76
  %94 = phi i64 [ %54, %82 ], [ %54, %76 ], [ %92, %91 ], [ %54, %88 ]
  call void @BLI_movelisttolist(ptr noundef %1, ptr noundef nonnull %6) #9
  %95 = add i64 %94, %74
  br label %97

96:                                               ; preds = %87
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %6) #10
  br label %105

97:                                               ; preds = %58, %52, %93, %72
  %98 = phi i64 [ %54, %72 ], [ %95, %93 ], [ %54, %52 ], [ %54, %58 ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %6) #10
  %99 = load ptr, ptr %53, align 8, !tbaa !72
  %100 = icmp eq ptr %99, null
  br i1 %100, label %101, label %52, !llvm.loop !291

101:                                              ; preds = %97, %48, %41
  %102 = phi i64 [ %43, %41 ], [ %43, %48 ], [ %98, %97 ]
  %103 = load ptr, ptr %42, align 8, !tbaa !72
  %104 = icmp eq ptr %103, null
  br i1 %104, label %105, label %41, !llvm.loop !292

105:                                              ; preds = %101, %5, %13, %96
  %106 = phi i64 [ 1, %96 ], [ 0, %13 ], [ 0, %5 ], [ %102, %101 ]
  ret i64 %106
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc i64 @animfilter_block_data(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, i32 noundef %4) unnamed_addr #0 !PGOFuncName !293 {
  %6 = tail call ptr @BKE_animdata_from_id(ptr noundef %3) #9
  %7 = icmp eq ptr %6, null
  br i1 %7, label %85, label %8

8:                                                ; preds = %5
  %9 = getelementptr inbounds %struct.IdAdtTemplate, ptr %3, i64 0, i32 1
  %10 = load ptr, ptr %9, align 8, !tbaa !294
  %11 = icmp eq ptr %10, null
  br i1 %11, label %85, label %12

12:                                               ; preds = %8
  %13 = and i32 %4, 4
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %20, label %15

15:                                               ; preds = %12
  %16 = getelementptr inbounds %struct.AnimData, ptr %10, i64 0, i32 7
  %17 = load i32, ptr %16, align 8, !tbaa !123
  %18 = and i32 %17, 65536
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %20, label %85

20:                                               ; preds = %15, %12
  %21 = and i32 %4, 1024
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %49, label %23

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
  %31 = load i32, ptr %30, align 8, !tbaa !123
  %32 = and i32 %31, 16384
  %33 = icmp eq i32 %32, 0
  br i1 %33, label %34, label %42

34:                                               ; preds = %29, %26
  %35 = and i32 %4, 128
  %36 = icmp eq i32 %35, 0
  br i1 %36, label %85, label %37

37:                                               ; preds = %34
  %38 = getelementptr inbounds %struct.AnimData, ptr %6, i64 0, i32 7
  %39 = load i32, ptr %38, align 8, !tbaa !123
  %40 = and i32 %39, 16384
  %41 = icmp eq i32 %40, 0
  br i1 %41, label %42, label %85

42:                                               ; preds = %37, %29, %23
  %43 = and i32 %4, 1073741824
  %44 = icmp eq i32 %43, 0
  br i1 %44, label %45, label %85

45:                                               ; preds = %42
  %46 = tail call fastcc ptr @make_new_animlistelem(ptr noundef nonnull %6, i16 noundef signext 1, ptr noundef nonnull %3) #8
  %47 = icmp eq ptr %46, null
  br i1 %47, label %85, label %48

48:                                               ; preds = %45
  tail call void @BLI_addtail(ptr noundef %1, ptr noundef nonnull %46) #9
  br label %85

49:                                               ; preds = %20
  %50 = getelementptr inbounds %struct.bDopeSheet, ptr %2, i64 0, i32 4
  %51 = load i32, ptr %50, align 8, !tbaa !75
  %52 = and i32 %51, 4
  %53 = icmp eq i32 %52, 0
  br i1 %53, label %68, label %54

54:                                               ; preds = %49
  %55 = getelementptr inbounds %struct.AnimData, ptr %10, i64 0, i32 3
  %56 = load ptr, ptr %55, align 8, !tbaa !296
  %57 = icmp eq ptr %56, null
  br i1 %57, label %60, label %58

58:                                               ; preds = %54
  %59 = tail call fastcc i64 @animfilter_nla(ptr noundef %1, ptr noundef nonnull %2, ptr noundef nonnull %6, i32 noundef %4, ptr noundef nonnull %3) #8
  br label %85

60:                                               ; preds = %54
  %61 = and i32 %51, 33554432
  %62 = icmp eq i32 %61, 0
  br i1 %62, label %66, label %63

63:                                               ; preds = %60
  %64 = load ptr, ptr %10, align 8, !tbaa !60
  %65 = icmp eq ptr %64, null
  br i1 %65, label %85, label %66

66:                                               ; preds = %63, %60
  %67 = tail call fastcc i64 @animfilter_nla(ptr noundef %1, ptr noundef nonnull %2, ptr noundef nonnull %6, i32 noundef %4, ptr noundef nonnull %3) #8
  br label %85

68:                                               ; preds = %49
  %69 = and i32 %51, 2
  %70 = icmp eq i32 %69, 0
  br i1 %70, label %79, label %71

71:                                               ; preds = %68
  %72 = getelementptr inbounds %struct.AnimData, ptr %10, i64 0, i32 5
  %73 = load ptr, ptr %72, align 8, !tbaa !275
  %74 = icmp eq ptr %73, null
  br i1 %74, label %85, label %75

75:                                               ; preds = %71
  %76 = getelementptr inbounds %struct.AnimData, ptr %6, i64 0, i32 5
  %77 = load ptr, ptr %76, align 8, !tbaa !275
  %78 = tail call fastcc i64 @animfilter_fcurves(ptr noundef %1, ptr noundef nonnull %2, ptr noundef %77, ptr noundef null, i32 noundef %4, ptr noundef nonnull %3) #8
  br label %85

79:                                               ; preds = %68
  %80 = load ptr, ptr %10, align 8, !tbaa !60
  %81 = icmp eq ptr %80, null
  br i1 %81, label %85, label %82

82:                                               ; preds = %79
  %83 = load ptr, ptr %6, align 8, !tbaa !60
  %84 = tail call fastcc i64 @animfilter_action(ptr noundef %0, ptr noundef %1, ptr noundef nonnull %2, ptr noundef %83, i32 noundef %4, ptr noundef nonnull %3) #8
  br label %85

85:                                               ; preds = %42, %45, %48, %15, %63, %66, %58, %79, %82, %71, %75, %34, %37, %8, %5
  %86 = phi i64 [ 0, %5 ], [ 1, %42 ], [ 0, %45 ], [ 1, %48 ], [ 0, %8 ], [ 0, %79 ], [ %84, %82 ], [ 0, %71 ], [ %78, %75 ], [ 0, %63 ], [ %67, %66 ], [ %59, %58 ], [ 0, %34 ], [ 0, %37 ], [ 0, %15 ]
  ret i64 %86
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc i64 @animfilter_nla(ptr noundef %0, ptr nocapture noundef readonly %1, ptr noundef %2, i32 noundef %3, ptr noundef %4) unnamed_addr #0 !PGOFuncName !297 {
  %6 = and i32 %3, 8
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %34, label %8

8:                                                ; preds = %5
  %9 = getelementptr inbounds %struct.bDopeSheet, ptr %1, i64 0, i32 4
  %10 = load i32, ptr %9, align 8, !tbaa !75
  %11 = and i32 %10, 33554432
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %19, label %13

13:                                               ; preds = %8
  %14 = load ptr, ptr %2, align 8, !tbaa !60
  %15 = icmp ne ptr %14, null
  %16 = and i32 %3, 256
  %17 = icmp eq i32 %16, 0
  %18 = and i1 %17, %15
  br i1 %18, label %22, label %31

19:                                               ; preds = %8
  %20 = and i32 %3, 256
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %22, label %31

22:                                               ; preds = %13, %19
  %23 = and i32 %3, 1073741824
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %25, label %103

25:                                               ; preds = %22
  %26 = tail call fastcc ptr @make_new_animlistelem(ptr noundef %2, i16 noundef signext 31, ptr noundef %4) #8
  %27 = icmp eq ptr %26, null
  br i1 %27, label %31, label %28

28:                                               ; preds = %25
  tail call void @BLI_addtail(ptr noundef %0, ptr noundef nonnull %26) #9
  %29 = load ptr, ptr %2, align 8, !tbaa !60
  %30 = getelementptr inbounds %struct.bAnimListElem, ptr %26, i64 0, i32 2
  store ptr %29, ptr %30, align 8, !tbaa !111
  br label %31

31:                                               ; preds = %25, %28, %19, %13
  %32 = phi i64 [ 0, %19 ], [ 0, %13 ], [ 1, %28 ], [ 0, %25 ]
  %33 = getelementptr inbounds %struct.AnimData, ptr %2, i64 0, i32 3, i32 1
  br label %36

34:                                               ; preds = %5
  %35 = getelementptr inbounds %struct.AnimData, ptr %2, i64 0, i32 3
  br label %36

36:                                               ; preds = %34, %31
  %37 = phi ptr [ %33, %31 ], [ %35, %34 ]
  %38 = phi i64 [ %32, %31 ], [ 0, %34 ]
  %39 = load ptr, ptr %37, align 8, !tbaa !72
  %40 = icmp eq ptr %39, null
  br i1 %40, label %103, label %41

41:                                               ; preds = %36
  %42 = getelementptr inbounds %struct.AnimData, ptr %2, i64 0, i32 7
  %43 = and i32 %3, 256
  %44 = icmp eq i32 %43, 0
  %45 = and i32 %3, 192
  %46 = icmp eq i32 %45, 0
  %47 = and i32 %3, 64
  %48 = icmp eq i32 %47, 0
  %49 = and i32 %3, 128
  %50 = icmp eq i32 %49, 0
  %51 = and i32 %3, 16
  %52 = icmp eq i32 %51, 0
  %53 = and i32 %3, 1073741824
  %54 = icmp eq i32 %53, 0
  br label %55

55:                                               ; preds = %41, %100
  %56 = phi ptr [ %39, %41 ], [ %60, %100 ]
  %57 = phi i64 [ %38, %41 ], [ %101, %100 ]
  %58 = getelementptr inbounds %struct.NlaTrack, ptr %56, i64 0, i32 1
  %59 = select i1 %7, ptr %56, ptr %58
  %60 = load ptr, ptr %59, align 8, !tbaa !72
  %61 = load i32, ptr %42, align 8, !tbaa !123
  %62 = and i32 %61, 4
  %63 = icmp eq i32 %62, 0
  br i1 %63, label %69, label %64

64:                                               ; preds = %55
  %65 = getelementptr inbounds %struct.NlaTrack, ptr %56, i64 0, i32 3
  %66 = load i32, ptr %65, align 8, !tbaa !182
  %67 = and i32 %66, 1025
  %68 = icmp eq i32 %67, 1024
  br i1 %68, label %100, label %69

69:                                               ; preds = %64, %55
  br i1 %44, label %75, label %70

70:                                               ; preds = %69
  %71 = getelementptr inbounds %struct.NlaTrack, ptr %56, i64 0, i32 3
  %72 = load i32, ptr %71, align 8, !tbaa !182
  %73 = and i32 %72, 16
  %74 = icmp eq i32 %73, 0
  br i1 %74, label %75, label %100

75:                                               ; preds = %70, %69
  br i1 %46, label %88, label %76

76:                                               ; preds = %75
  br i1 %48, label %82, label %77

77:                                               ; preds = %76
  %78 = getelementptr inbounds %struct.NlaTrack, ptr %56, i64 0, i32 3
  %79 = load i32, ptr %78, align 8, !tbaa !182
  %80 = and i32 %79, 2
  %81 = icmp eq i32 %80, 0
  br i1 %81, label %82, label %88

82:                                               ; preds = %77, %76
  br i1 %50, label %100, label %83

83:                                               ; preds = %82
  %84 = getelementptr inbounds %struct.NlaTrack, ptr %56, i64 0, i32 3
  %85 = load i32, ptr %84, align 8, !tbaa !182
  %86 = and i32 %85, 2
  %87 = icmp eq i32 %86, 0
  br i1 %87, label %88, label %100

88:                                               ; preds = %83, %77, %75
  br i1 %52, label %94, label %89

89:                                               ; preds = %88
  %90 = getelementptr inbounds %struct.NlaTrack, ptr %56, i64 0, i32 3
  %91 = load i32, ptr %90, align 8, !tbaa !182
  %92 = and i32 %91, 1
  %93 = icmp eq i32 %92, 0
  br i1 %93, label %100, label %94

94:                                               ; preds = %89, %88
  br i1 %54, label %95, label %103

95:                                               ; preds = %94
  %96 = tail call fastcc ptr @make_new_animlistelem(ptr noundef nonnull %56, i16 noundef signext 30, ptr noundef %4) #8
  %97 = icmp eq ptr %96, null
  br i1 %97, label %100, label %98

98:                                               ; preds = %95
  tail call void @BLI_addtail(ptr noundef %0, ptr noundef nonnull %96) #9
  %99 = add i64 %57, 1
  br label %100

100:                                              ; preds = %95, %98, %64, %70, %89, %83, %82
  %101 = phi i64 [ %57, %89 ], [ %57, %83 ], [ %57, %82 ], [ %57, %70 ], [ %57, %64 ], [ %99, %98 ], [ %57, %95 ]
  %102 = icmp eq ptr %60, null
  br i1 %102, label %103, label %55, !llvm.loop !298

103:                                              ; preds = %94, %100, %36, %22
  %104 = phi i64 [ 1, %22 ], [ %38, %36 ], [ 1, %94 ], [ %101, %100 ]
  ret i64 %104
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc i64 @animdata_filter_ds_textures(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, i32 noundef %4) unnamed_addr #0 !PGOFuncName !299 {
  %6 = icmp eq ptr %3, null
  br i1 %6, label %41, label %7

7:                                                ; preds = %5
  %8 = getelementptr inbounds %struct.ID, ptr %3, i64 0, i32 4
  %9 = load i16, ptr %8, align 8, !tbaa !77
  switch i16 %9, label %16 [
    i16 16717, label %10
    i16 16716, label %12
    i16 20311, label %14
  ]

10:                                               ; preds = %7
  %11 = getelementptr inbounds %struct.Material, ptr %3, i64 0, i32 102
  br label %22

12:                                               ; preds = %7
  %13 = getelementptr inbounds %struct.Lamp, ptr %3, i64 0, i32 69
  br label %22

14:                                               ; preds = %7
  %15 = getelementptr inbounds %struct.World, ptr %3, i64 0, i32 70
  br label %22

16:                                               ; preds = %7
  %17 = load i32, ptr getelementptr inbounds (%struct.Global, ptr @G, i64 0, i32 16), align 4, !tbaa !207
  %18 = and i32 %17, 1
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %41, label %20

20:                                               ; preds = %16
  %21 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.12, ptr noundef nonnull %8) #8
  br label %41

22:                                               ; preds = %14, %12, %10
  %23 = phi ptr [ %15, %14 ], [ %13, %12 ], [ %11, %10 ]
  br label %24

24:                                               ; preds = %22, %37
  %25 = phi i64 [ 0, %22 ], [ %39, %37 ]
  %26 = phi i64 [ 0, %22 ], [ %38, %37 ]
  %27 = getelementptr inbounds ptr, ptr %23, i64 %25
  %28 = load ptr, ptr %27, align 8, !tbaa !72
  %29 = icmp eq ptr %28, null
  br i1 %29, label %37, label %30

30:                                               ; preds = %24
  %31 = getelementptr inbounds %struct.MTex, ptr %28, i64 0, i32 5
  %32 = load ptr, ptr %31, align 8, !tbaa !300
  %33 = icmp eq ptr %32, null
  br i1 %33, label %37, label %34

34:                                               ; preds = %30
  %35 = tail call fastcc i64 @animdata_filter_ds_texture(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef nonnull %32, ptr noundef nonnull %3, i32 noundef %4) #8
  %36 = add i64 %35, %26
  br label %37

37:                                               ; preds = %24, %30, %34
  %38 = phi i64 [ %36, %34 ], [ %26, %30 ], [ %26, %24 ]
  %39 = add nuw nsw i64 %25, 1
  %40 = icmp eq i64 %39, 18
  br i1 %40, label %41, label %24, !llvm.loop !302

41:                                               ; preds = %37, %16, %20, %5
  %42 = phi i64 [ 0, %5 ], [ 0, %20 ], [ 0, %16 ], [ %38, %37 ]
  ret i64 %42
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc i64 @animdata_filter_ds_texture(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4, i32 noundef %5) unnamed_addr #0 !PGOFuncName !303 {
  %7 = alloca %struct.ListBase, align 8
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %7) #10
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %7, i8 0, i64 16, i1 false)
  %8 = and i32 %5, 2
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %20, label %10

10:                                               ; preds = %6
  %11 = getelementptr inbounds %struct.Tex, ptr %3, i64 0, i32 31
  %12 = load i16, ptr %11, align 2, !tbaa !169
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
  %22 = call fastcc i64 @animfilter_block_data(ptr noundef %0, ptr noundef nonnull %7, ptr noundef %2, ptr noundef %3, i32 noundef %21) #8
  %23 = getelementptr inbounds %struct.Tex, ptr %3, i64 0, i32 52
  %24 = load ptr, ptr %23, align 8, !tbaa !304
  %25 = icmp eq ptr %24, null
  br i1 %25, label %34, label %26

26:                                               ; preds = %20
  %27 = getelementptr inbounds %struct.bDopeSheet, ptr %2, i64 0, i32 4
  %28 = load i32, ptr %27, align 8, !tbaa !75
  %29 = and i32 %28, 524288
  %30 = icmp eq i32 %29, 0
  br i1 %30, label %31, label %34

31:                                               ; preds = %26
  %32 = call fastcc i64 @animdata_filter_ds_nodetree(ptr noundef %0, ptr noundef nonnull %7, ptr noundef nonnull %2, ptr noundef nonnull %3, ptr noundef nonnull %24, i32 noundef %21) #8
  %33 = add i64 %32, %22
  br label %34

34:                                               ; preds = %31, %26, %20
  %35 = phi i64 [ %22, %26 ], [ %33, %31 ], [ %22, %20 ]
  %36 = icmp eq i64 %35, 0
  br i1 %36, label %62, label %37

37:                                               ; preds = %34
  %38 = and i32 %5, 8
  %39 = icmp eq i32 %38, 0
  br i1 %39, label %59, label %40

40:                                               ; preds = %37
  %41 = and i32 %5, 16
  %42 = icmp eq i32 %41, 0
  br i1 %42, label %52, label %43

43:                                               ; preds = %40
  %44 = getelementptr inbounds %struct.Tex, ptr %3, i64 0, i32 1
  %45 = load ptr, ptr %44, align 8, !tbaa !166
  %46 = icmp eq ptr %45, null
  br i1 %46, label %52, label %47

47:                                               ; preds = %43
  %48 = getelementptr inbounds %struct.AnimData, ptr %45, i64 0, i32 7
  %49 = load i32, ptr %48, align 8, !tbaa !123
  %50 = and i32 %49, 32768
  %51 = icmp eq i32 %50, 0
  br i1 %51, label %59, label %52

52:                                               ; preds = %47, %43, %40
  %53 = and i32 %5, 1073741824
  %54 = icmp eq i32 %53, 0
  br i1 %54, label %55, label %62

55:                                               ; preds = %52
  %56 = call fastcc ptr @make_new_animlistelem(ptr noundef nonnull %3, i16 noundef signext 21, ptr noundef %4) #8
  %57 = icmp eq ptr %56, null
  br i1 %57, label %59, label %58

58:                                               ; preds = %55
  call void @BLI_addtail(ptr noundef %1, ptr noundef nonnull %56) #9
  br label %59

59:                                               ; preds = %55, %58, %47, %37
  %60 = phi i64 [ 0, %47 ], [ 0, %37 ], [ 1, %58 ], [ 0, %55 ]
  call void @BLI_movelisttolist(ptr noundef %1, ptr noundef nonnull %7) #9
  %61 = add i64 %60, %35
  br label %62

62:                                               ; preds = %34, %59, %52
  %63 = phi i64 [ 1, %52 ], [ %61, %59 ], [ 0, %34 ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %7) #10
  ret i64 %63
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc i64 @animdata_filter_ds_nodetree_group(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4, i32 noundef %5) unnamed_addr #0 !PGOFuncName !305 {
  %7 = alloca %struct.ListBase, align 8
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %7) #10
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %7, i8 0, i64 16, i1 false)
  %8 = and i32 %5, 2
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %20, label %10

10:                                               ; preds = %6
  %11 = getelementptr inbounds %struct.bNodeTree, ptr %4, i64 0, i32 12
  %12 = load i32, ptr %11, align 4, !tbaa !159
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
  %22 = call fastcc i64 @animfilter_block_data(ptr noundef %0, ptr noundef nonnull %7, ptr noundef %2, ptr noundef %4, i32 noundef %21) #8
  %23 = icmp eq i64 %22, 0
  br i1 %23, label %49, label %24

24:                                               ; preds = %20
  %25 = and i32 %5, 8
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %46, label %27

27:                                               ; preds = %24
  %28 = and i32 %5, 16
  %29 = icmp eq i32 %28, 0
  br i1 %29, label %39, label %30

30:                                               ; preds = %27
  %31 = getelementptr inbounds %struct.bNodeTree, ptr %4, i64 0, i32 1
  %32 = load ptr, ptr %31, align 8, !tbaa !156
  %33 = icmp eq ptr %32, null
  br i1 %33, label %39, label %34

34:                                               ; preds = %30
  %35 = getelementptr inbounds %struct.AnimData, ptr %32, i64 0, i32 7
  %36 = load i32, ptr %35, align 8, !tbaa !123
  %37 = and i32 %36, 32768
  %38 = icmp eq i32 %37, 0
  br i1 %38, label %46, label %39

39:                                               ; preds = %34, %30, %27
  %40 = and i32 %5, 1073741824
  %41 = icmp eq i32 %40, 0
  br i1 %41, label %42, label %49

42:                                               ; preds = %39
  %43 = call fastcc ptr @make_new_animlistelem(ptr noundef %4, i16 noundef signext 16, ptr noundef %3) #8
  %44 = icmp eq ptr %43, null
  br i1 %44, label %46, label %45

45:                                               ; preds = %42
  call void @BLI_addtail(ptr noundef %1, ptr noundef nonnull %43) #9
  br label %46

46:                                               ; preds = %42, %45, %34, %24
  %47 = phi i64 [ 0, %34 ], [ 0, %24 ], [ 1, %45 ], [ 0, %42 ]
  call void @BLI_movelisttolist(ptr noundef %1, ptr noundef nonnull %7) #9
  %48 = add i64 %47, %22
  br label %49

49:                                               ; preds = %20, %46, %39
  %50 = phi i64 [ 1, %39 ], [ %48, %46 ], [ 0, %20 ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %7) #10
  ret i64 %50
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc i64 @animdata_filter_ds_obanim(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, i32 noundef %4) unnamed_addr #0 !PGOFuncName !306 {
  %6 = alloca %struct.ListBase, align 8
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %6) #10
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %6, i8 0, i64 16, i1 false)
  %7 = getelementptr inbounds %struct.Object, ptr %3, i64 0, i32 1
  %8 = load ptr, ptr %7, align 8, !tbaa !55
  %9 = icmp eq ptr %8, null
  br i1 %9, label %49, label %10

10:                                               ; preds = %5
  %11 = and i32 %4, 4
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %20, label %13

13:                                               ; preds = %10
  %14 = getelementptr inbounds %struct.AnimData, ptr %8, i64 0, i32 7
  %15 = load i32, ptr %14, align 8, !tbaa !123
  %16 = and i32 %15, 65536
  %17 = and i32 %4, 1024
  %18 = or disjoint i32 %16, %17
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %23, label %49

20:                                               ; preds = %10
  %21 = and i32 %4, 1024
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %23, label %49

23:                                               ; preds = %13, %20
  %24 = getelementptr inbounds %struct.bDopeSheet, ptr %2, i64 0, i32 4
  %25 = load i32, ptr %24, align 8, !tbaa !75
  %26 = and i32 %25, 4
  %27 = icmp eq i32 %26, 0
  br i1 %27, label %28, label %49

28:                                               ; preds = %23
  %29 = and i32 %25, 2
  %30 = icmp eq i32 %29, 0
  br i1 %30, label %41, label %31

31:                                               ; preds = %28
  %32 = getelementptr inbounds %struct.AnimData, ptr %8, i64 0, i32 5
  %33 = load ptr, ptr %32, align 8, !tbaa !275
  %34 = icmp eq ptr %33, null
  br i1 %34, label %49, label %35

35:                                               ; preds = %31
  %36 = getelementptr inbounds %struct.AnimData, ptr %8, i64 0, i32 7
  %37 = load i32, ptr %36, align 8, !tbaa !123
  %38 = lshr i32 %37, 10
  %39 = and i32 %38, 1
  %40 = xor i32 %39, 1
  br label %49

41:                                               ; preds = %28
  %42 = load ptr, ptr %8, align 8, !tbaa !60
  %43 = icmp eq ptr %42, null
  br i1 %43, label %49, label %44

44:                                               ; preds = %41
  %45 = getelementptr inbounds %struct.bAction, ptr %42, i64 0, i32 5
  %46 = load i32, ptr %45, align 8, !tbaa !121
  %47 = and i32 %46, 1
  %48 = xor i32 %47, 1
  br label %49

49:                                               ; preds = %23, %13, %41, %44, %31, %35, %20, %5
  %50 = phi i1 [ false, %13 ], [ false, %20 ], [ false, %23 ], [ true, %35 ], [ false, %31 ], [ true, %44 ], [ false, %41 ], [ false, %5 ]
  %51 = phi i16 [ 0, %13 ], [ 0, %20 ], [ 0, %23 ], [ 9, %35 ], [ 0, %31 ], [ 8, %44 ], [ 0, %41 ], [ 0, %5 ]
  %52 = phi i32 [ 1, %13 ], [ 1, %20 ], [ 1, %23 ], [ %40, %35 ], [ 1, %31 ], [ %48, %44 ], [ 1, %41 ], [ 1, %5 ]
  %53 = phi ptr [ null, %13 ], [ null, %20 ], [ null, %23 ], [ %8, %35 ], [ null, %31 ], [ %42, %44 ], [ null, %41 ], [ null, %5 ]
  %54 = icmp ne i32 %52, 0
  %55 = and i32 %4, 10
  %56 = icmp ne i32 %55, 10
  %57 = select i1 %56, i1 true, i1 %54
  %58 = or i32 %4, 1073741824
  %59 = select i1 %57, i32 %4, i32 %58
  %60 = call fastcc i64 @animfilter_block_data(ptr noundef %0, ptr noundef nonnull %6, ptr noundef %2, ptr noundef nonnull %3, i32 noundef %59) #8
  %61 = icmp eq i64 %60, 0
  br i1 %61, label %76, label %62

62:                                               ; preds = %49
  %63 = and i32 %4, 8
  %64 = icmp ne i32 %63, 0
  %65 = and i1 %64, %50
  br i1 %65, label %66, label %73

66:                                               ; preds = %62
  %67 = and i32 %4, 1073741824
  %68 = icmp eq i32 %67, 0
  br i1 %68, label %69, label %76

69:                                               ; preds = %66
  %70 = call fastcc ptr @make_new_animlistelem(ptr noundef %53, i16 noundef signext %51, ptr noundef nonnull %3) #8
  %71 = icmp eq ptr %70, null
  br i1 %71, label %73, label %72

72:                                               ; preds = %69
  call void @BLI_addtail(ptr noundef %1, ptr noundef nonnull %70) #9
  br label %73

73:                                               ; preds = %69, %72, %62
  %74 = phi i64 [ 0, %62 ], [ 1, %72 ], [ 0, %69 ]
  call void @BLI_movelisttolist(ptr noundef %1, ptr noundef nonnull %6) #9
  %75 = add i64 %74, %60
  br label %76

76:                                               ; preds = %49, %73, %66
  %77 = phi i64 [ 1, %66 ], [ %75, %73 ], [ 0, %49 ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %6) #10
  ret i64 %77
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc i64 @animdata_filter_ds_keyanim(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4, i32 noundef %5) unnamed_addr #0 !PGOFuncName !307 {
  %7 = alloca %struct.ListBase, align 8
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %7) #10
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %7, i8 0, i64 16, i1 false)
  %8 = and i32 %5, 2
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %20, label %10

10:                                               ; preds = %6
  %11 = getelementptr inbounds %struct.Key, ptr %4, i64 0, i32 12
  %12 = load i16, ptr %11, align 2, !tbaa !152
  %13 = and i16 %12, 1
  %14 = icmp ne i16 %13, 0
  %15 = and i32 %5, 8
  %16 = icmp eq i32 %15, 0
  %17 = or i1 %16, %14
  %18 = or i32 %5, 1073741824
  %19 = select i1 %17, i32 %5, i32 %18
  br label %20

20:                                               ; preds = %10, %6
  %21 = phi i32 [ %5, %6 ], [ %19, %10 ]
  %22 = call fastcc i64 @animfilter_block_data(ptr noundef %0, ptr noundef nonnull %7, ptr noundef %2, ptr noundef %4, i32 noundef %21) #8
  %23 = icmp eq i64 %22, 0
  br i1 %23, label %49, label %24

24:                                               ; preds = %20
  %25 = and i32 %5, 8
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %46, label %27

27:                                               ; preds = %24
  %28 = and i32 %5, 16
  %29 = icmp eq i32 %28, 0
  br i1 %29, label %39, label %30

30:                                               ; preds = %27
  %31 = getelementptr inbounds %struct.Key, ptr %4, i64 0, i32 1
  %32 = load ptr, ptr %31, align 8, !tbaa !64
  %33 = icmp eq ptr %32, null
  br i1 %33, label %39, label %34

34:                                               ; preds = %30
  %35 = getelementptr inbounds %struct.AnimData, ptr %32, i64 0, i32 7
  %36 = load i32, ptr %35, align 8, !tbaa !123
  %37 = and i32 %36, 32768
  %38 = icmp eq i32 %37, 0
  br i1 %38, label %46, label %39

39:                                               ; preds = %34, %30, %27
  %40 = and i32 %5, 1073741824
  %41 = icmp eq i32 %40, 0
  br i1 %41, label %42, label %49

42:                                               ; preds = %39
  %43 = call fastcc ptr @make_new_animlistelem(ptr noundef %4, i16 noundef signext 14, ptr noundef %3) #8
  %44 = icmp eq ptr %43, null
  br i1 %44, label %46, label %45

45:                                               ; preds = %42
  call void @BLI_addtail(ptr noundef %1, ptr noundef nonnull %43) #9
  br label %46

46:                                               ; preds = %42, %45, %34, %24
  %47 = phi i64 [ 0, %34 ], [ 0, %24 ], [ 1, %45 ], [ 0, %42 ]
  call void @BLI_movelisttolist(ptr noundef %1, ptr noundef nonnull %7) #9
  %48 = add i64 %47, %22
  br label %49

49:                                               ; preds = %20, %46, %39
  %50 = phi i64 [ 1, %39 ], [ %48, %46 ], [ 0, %20 ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %7) #10
  ret i64 %50
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc i64 @animdata_filter_ds_modifiers(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, i32 noundef %4) unnamed_addr #0 !PGOFuncName !308 {
  %6 = alloca %struct.tAnimFilterModifiersContext, align 8
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %6) #10
  %7 = getelementptr inbounds i8, ptr %6, i64 16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %7, i8 0, i64 32, i1 false)
  store ptr %0, ptr %6, align 8, !tbaa !309
  %8 = getelementptr inbounds %struct.tAnimFilterModifiersContext, ptr %6, i64 0, i32 1
  store ptr %2, ptr %8, align 8, !tbaa !311
  %9 = getelementptr inbounds %struct.tAnimFilterModifiersContext, ptr %6, i64 0, i32 4
  store i32 %4, ptr %9, align 8, !tbaa !312
  call void @modifiers_foreachIDLink(ptr noundef %3, ptr noundef nonnull @animfilter_modifier_idpoin_cb, ptr noundef nonnull %6) #9
  %10 = getelementptr inbounds %struct.tAnimFilterModifiersContext, ptr %6, i64 0, i32 3
  %11 = load i64, ptr %10, align 8, !tbaa !313
  %12 = icmp eq i64 %11, 0
  br i1 %12, label %16, label %13

13:                                               ; preds = %5
  %14 = getelementptr inbounds %struct.tAnimFilterModifiersContext, ptr %6, i64 0, i32 2
  call void @BLI_movelisttolist(ptr noundef %1, ptr noundef nonnull %14) #9
  %15 = load i64, ptr %10, align 8, !tbaa !313
  br label %16

16:                                               ; preds = %13, %5
  %17 = phi i64 [ %15, %13 ], [ 0, %5 ]
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %6) #10
  ret i64 %17
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc i64 @animdata_filter_ds_materials(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, i32 noundef %4) unnamed_addr #0 !PGOFuncName !314 {
  %6 = getelementptr inbounds %struct.Object, ptr %3, i64 0, i32 31
  %7 = load i32, ptr %6, align 8, !tbaa !271
  %8 = icmp slt i32 %7, 1
  br i1 %8, label %51, label %9

9:                                                ; preds = %5, %24
  %10 = phi i8 [ %26, %24 ], [ 0, %5 ]
  %11 = phi i64 [ %25, %24 ], [ 0, %5 ]
  %12 = phi i32 [ %27, %24 ], [ 1, %5 ]
  %13 = trunc i32 %12 to i16
  %14 = tail call ptr @give_current_material(ptr noundef nonnull %3, i16 noundef signext %13) #9
  %15 = icmp eq ptr %14, null
  br i1 %15, label %24, label %16

16:                                               ; preds = %9
  %17 = tail call fastcc i64 @animdata_filter_ds_material(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef nonnull %14, i32 noundef %4) #8
  %18 = add i64 %17, %11
  %19 = icmp eq i8 %10, 0
  br i1 %19, label %20, label %24

20:                                               ; preds = %16
  %21 = tail call ptr @give_node_material(ptr noundef nonnull %14) #9
  %22 = icmp ne ptr %21, null
  %23 = zext i1 %22 to i8
  br label %24

24:                                               ; preds = %16, %20, %9
  %25 = phi i64 [ %18, %20 ], [ %18, %16 ], [ %11, %9 ]
  %26 = phi i8 [ %23, %20 ], [ %10, %16 ], [ %10, %9 ]
  %27 = add nuw nsw i32 %12, 1
  %28 = load i32, ptr %6, align 8, !tbaa !271
  %29 = icmp slt i32 %12, %28
  br i1 %29, label %9, label %30, !llvm.loop !315

30:                                               ; preds = %24
  %31 = icmp eq i8 %26, 0
  %32 = icmp slt i32 %28, 1
  %33 = or i1 %31, %32
  br i1 %33, label %51, label %34

34:                                               ; preds = %30, %46
  %35 = phi i64 [ %47, %46 ], [ %25, %30 ]
  %36 = phi i32 [ %48, %46 ], [ 1, %30 ]
  %37 = trunc i32 %36 to i16
  %38 = tail call ptr @give_current_material(ptr noundef nonnull %3, i16 noundef signext %37) #9
  %39 = tail call ptr @give_node_material(ptr noundef %38) #9
  %40 = icmp eq ptr %39, null
  %41 = icmp eq ptr %39, %38
  %42 = or i1 %40, %41
  br i1 %42, label %46, label %43

43:                                               ; preds = %34
  %44 = tail call fastcc i64 @animdata_filter_ds_material(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef nonnull %39, i32 noundef %4) #8
  %45 = add i64 %44, %35
  br label %46

46:                                               ; preds = %43, %34
  %47 = phi i64 [ %45, %43 ], [ %35, %34 ]
  %48 = add nuw nsw i32 %36, 1
  %49 = load i32, ptr %6, align 8, !tbaa !271
  %50 = icmp slt i32 %36, %49
  br i1 %50, label %34, label %51, !llvm.loop !316

51:                                               ; preds = %46, %30, %5
  %52 = phi i64 [ %25, %30 ], [ 0, %5 ], [ %47, %46 ]
  ret i64 %52
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc i64 @animdata_filter_ds_obdata(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr nocapture noundef readonly %3, i32 noundef %4) unnamed_addr #0 !PGOFuncName !317 {
  %6 = alloca %struct.ListBase, align 8
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %6) #10
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %6, i8 0, i64 16, i1 false)
  %7 = getelementptr inbounds %struct.Object, ptr %3, i64 0, i32 19
  %8 = load ptr, ptr %7, align 8, !tbaa !237
  %9 = getelementptr inbounds %struct.Object, ptr %3, i64 0, i32 3
  %10 = load i16, ptr %9, align 8, !tbaa !318
  switch i16 %10, label %81 [
    i16 11, label %11
    i16 10, label %20
    i16 2, label %29
    i16 3, label %29
    i16 4, label %29
    i16 5, label %39
    i16 25, label %49
    i16 1, label %59
    i16 22, label %68
    i16 12, label %77
  ]

11:                                               ; preds = %5
  %12 = getelementptr inbounds %struct.bDopeSheet, ptr %2, i64 0, i32 4
  %13 = load i32, ptr %12, align 8, !tbaa !75
  %14 = and i32 %13, 1024
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %16, label %143

16:                                               ; preds = %11
  %17 = getelementptr inbounds %struct.Camera, ptr %8, i64 0, i32 4
  %18 = load i16, ptr %17, align 2, !tbaa !134
  %19 = and i16 %18, 64
  br label %81

20:                                               ; preds = %5
  %21 = getelementptr inbounds %struct.bDopeSheet, ptr %2, i64 0, i32 4
  %22 = load i32, ptr %21, align 8, !tbaa !75
  %23 = and i32 %22, 4096
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %25, label %143

25:                                               ; preds = %20
  %26 = getelementptr inbounds %struct.Lamp, ptr %8, i64 0, i32 3
  %27 = load i16, ptr %26, align 2, !tbaa !131
  %28 = and i16 %27, 1
  br label %81

29:                                               ; preds = %5, %5, %5
  %30 = getelementptr inbounds %struct.bDopeSheet, ptr %2, i64 0, i32 4
  %31 = load i32, ptr %30, align 8, !tbaa !75
  %32 = and i32 %31, 8192
  %33 = icmp eq i32 %32, 0
  br i1 %33, label %34, label %143

34:                                               ; preds = %29
  %35 = getelementptr inbounds %struct.Curve, ptr %8, i64 0, i32 23
  %36 = load i32, ptr %35, align 4, !tbaa !138
  %37 = trunc i32 %36 to i16
  %38 = and i16 %37, 2048
  br label %81

39:                                               ; preds = %5
  %40 = getelementptr inbounds %struct.bDopeSheet, ptr %2, i64 0, i32 4
  %41 = load i32, ptr %40, align 8, !tbaa !75
  %42 = and i32 %41, 131072
  %43 = icmp eq i32 %42, 0
  br i1 %43, label %44, label %143

44:                                               ; preds = %39
  %45 = getelementptr inbounds %struct.MetaBall, ptr %8, i64 0, i32 8
  %46 = load i8, ptr %45, align 1, !tbaa !319
  %47 = and i8 %46, 1
  %48 = zext nneg i8 %47 to i16
  br label %81

49:                                               ; preds = %5
  %50 = getelementptr inbounds %struct.bDopeSheet, ptr %2, i64 0, i32 4
  %51 = load i32, ptr %50, align 8, !tbaa !75
  %52 = and i32 %51, 262144
  %53 = icmp eq i32 %52, 0
  br i1 %53, label %54, label %143

54:                                               ; preds = %49
  %55 = getelementptr inbounds %struct.bArmature, ptr %8, i64 0, i32 8
  %56 = load i32, ptr %55, align 8, !tbaa !141
  %57 = trunc i32 %56 to i16
  %58 = and i16 %57, 8192
  br label %81

59:                                               ; preds = %5
  %60 = getelementptr inbounds %struct.bDopeSheet, ptr %2, i64 0, i32 4
  %61 = load i32, ptr %60, align 8, !tbaa !75
  %62 = and i32 %61, 128
  %63 = icmp eq i32 %62, 0
  br i1 %63, label %64, label %143

64:                                               ; preds = %59
  %65 = getelementptr inbounds %struct.Mesh, ptr %8, i64 0, i32 38
  %66 = load i16, ptr %65, align 2, !tbaa !145
  %67 = and i16 %66, 512
  br label %81

68:                                               ; preds = %5
  %69 = getelementptr inbounds %struct.bDopeSheet, ptr %2, i64 0, i32 4
  %70 = load i32, ptr %69, align 8, !tbaa !75
  %71 = and i32 %70, 512
  %72 = icmp eq i32 %71, 0
  br i1 %72, label %73, label %143

73:                                               ; preds = %68
  %74 = getelementptr inbounds %struct.Lattice, ptr %8, i64 0, i32 5
  %75 = load i16, ptr %74, align 2, !tbaa !148
  %76 = and i16 %75, 4
  br label %81

77:                                               ; preds = %5
  %78 = getelementptr inbounds %struct.Speaker, ptr %8, i64 0, i32 13
  %79 = load i16, ptr %78, align 8, !tbaa !151
  %80 = and i16 %79, 1
  br label %81

81:                                               ; preds = %73, %64, %54, %44, %34, %25, %16, %5, %77
  %82 = phi i16 [ 0, %5 ], [ %80, %77 ], [ %19, %16 ], [ %28, %25 ], [ %38, %34 ], [ %48, %44 ], [ %58, %54 ], [ %67, %64 ], [ %76, %73 ]
  %83 = phi i16 [ 0, %5 ], [ 24, %77 ], [ 12, %16 ], [ 11, %25 ], [ 13, %34 ], [ 18, %44 ], [ 19, %54 ], [ 20, %64 ], [ 22, %73 ]
  %84 = icmp ne i16 %82, 0
  %85 = and i32 %4, 8
  %86 = icmp eq i32 %85, 0
  %87 = and i32 %4, 10
  %88 = icmp ne i32 %87, 10
  %89 = select i1 %88, i1 true, i1 %84
  %90 = or i32 %4, 1073741824
  %91 = select i1 %89, i32 %4, i32 %90
  %92 = call fastcc i64 @animfilter_block_data(ptr noundef %0, ptr noundef nonnull %6, ptr noundef %2, ptr noundef %8, i32 noundef %91) #8
  %93 = load i16, ptr %9, align 8, !tbaa !318
  %94 = icmp eq i16 %93, 10
  br i1 %94, label %95, label %117

95:                                               ; preds = %81
  %96 = load ptr, ptr %7, align 8, !tbaa !237
  %97 = getelementptr inbounds %struct.Lamp, ptr %96, i64 0, i32 74
  %98 = load ptr, ptr %97, align 8, !tbaa !321
  %99 = icmp eq ptr %98, null
  br i1 %99, label %108, label %100

100:                                              ; preds = %95
  %101 = getelementptr inbounds %struct.bDopeSheet, ptr %2, i64 0, i32 4
  %102 = load i32, ptr %101, align 8, !tbaa !75
  %103 = and i32 %102, 524288
  %104 = icmp eq i32 %103, 0
  br i1 %104, label %105, label %108

105:                                              ; preds = %100
  %106 = call fastcc i64 @animdata_filter_ds_nodetree(ptr noundef %0, ptr noundef nonnull %6, ptr noundef nonnull %2, ptr noundef nonnull %96, ptr noundef nonnull %98, i32 noundef %91) #8
  %107 = add i64 %106, %92
  br label %108

108:                                              ; preds = %105, %100, %95
  %109 = phi i64 [ %92, %100 ], [ %107, %105 ], [ %92, %95 ]
  %110 = getelementptr inbounds %struct.bDopeSheet, ptr %2, i64 0, i32 4
  %111 = load i32, ptr %110, align 8, !tbaa !75
  %112 = and i32 %111, 1048576
  %113 = icmp eq i32 %112, 0
  br i1 %113, label %114, label %117

114:                                              ; preds = %108
  %115 = call fastcc i64 @animdata_filter_ds_textures(ptr noundef %0, ptr noundef nonnull %6, ptr noundef nonnull %2, ptr noundef nonnull %96, i32 noundef %91) #8
  %116 = add i64 %115, %109
  br label %117

117:                                              ; preds = %108, %114, %81
  %118 = phi i64 [ %92, %81 ], [ %109, %108 ], [ %116, %114 ]
  %119 = icmp eq i64 %118, 0
  br i1 %119, label %143, label %120

120:                                              ; preds = %117
  br i1 %86, label %140, label %121

121:                                              ; preds = %120
  %122 = and i32 %4, 16
  %123 = icmp eq i32 %122, 0
  br i1 %123, label %133, label %124

124:                                              ; preds = %121
  %125 = getelementptr inbounds %struct.IdAdtTemplate, ptr %8, i64 0, i32 1
  %126 = load ptr, ptr %125, align 8, !tbaa !294
  %127 = icmp eq ptr %126, null
  br i1 %127, label %133, label %128

128:                                              ; preds = %124
  %129 = getelementptr inbounds %struct.AnimData, ptr %126, i64 0, i32 7
  %130 = load i32, ptr %129, align 8, !tbaa !123
  %131 = and i32 %130, 32768
  %132 = icmp eq i32 %131, 0
  br i1 %132, label %140, label %133

133:                                              ; preds = %128, %124, %121
  %134 = and i32 %4, 1073741824
  %135 = icmp eq i32 %134, 0
  br i1 %135, label %136, label %143

136:                                              ; preds = %133
  %137 = call fastcc ptr @make_new_animlistelem(ptr noundef %8, i16 noundef signext %83, ptr noundef %8) #8
  %138 = icmp eq ptr %137, null
  br i1 %138, label %140, label %139

139:                                              ; preds = %136
  call void @BLI_addtail(ptr noundef %1, ptr noundef nonnull %137) #9
  br label %140

140:                                              ; preds = %136, %139, %128, %120
  %141 = phi i64 [ 0, %128 ], [ 0, %120 ], [ 1, %139 ], [ 0, %136 ]
  call void @BLI_movelisttolist(ptr noundef %1, ptr noundef nonnull %6) #9
  %142 = add i64 %141, %118
  br label %143

143:                                              ; preds = %68, %59, %49, %39, %29, %20, %11, %117, %140, %133
  %144 = phi i64 [ 1, %133 ], [ %142, %140 ], [ 0, %117 ], [ 0, %11 ], [ 0, %20 ], [ 0, %29 ], [ 0, %39 ], [ 0, %49 ], [ 0, %59 ], [ 0, %68 ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %6) #10
  ret i64 %144
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc i64 @animdata_filter_ds_particles(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr nocapture noundef readonly %3, i32 noundef %4) unnamed_addr #0 !PGOFuncName !322 {
  %6 = alloca %struct.ListBase, align 8
  %7 = getelementptr inbounds %struct.Object, ptr %3, i64 0, i32 109
  %8 = load ptr, ptr %7, align 8, !tbaa !72
  %9 = icmp eq ptr %8, null
  br i1 %9, label %69, label %10

10:                                               ; preds = %5
  %11 = and i32 %4, 2
  %12 = icmp eq i32 %11, 0
  %13 = and i32 %4, 8
  %14 = icmp eq i32 %13, 0
  %15 = or i32 %4, 1073741824
  %16 = and i32 %4, 16
  %17 = icmp eq i32 %16, 0
  %18 = and i32 %4, 1073741824
  %19 = icmp eq i32 %18, 0
  br label %20

20:                                               ; preds = %10, %65
  %21 = phi ptr [ %8, %10 ], [ %67, %65 ]
  %22 = phi i64 [ 0, %10 ], [ %66, %65 ]
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %6) #10
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %6, i8 0, i64 16, i1 false)
  %23 = getelementptr inbounds %struct.ParticleSystem, ptr %21, i64 0, i32 2
  %24 = load ptr, ptr %23, align 8, !tbaa !323
  %25 = icmp eq ptr %24, null
  br i1 %25, label %65, label %26

26:                                               ; preds = %20
  %27 = getelementptr inbounds %struct.ParticleSettings, ptr %24, i64 0, i32 1
  %28 = load ptr, ptr %27, align 8, !tbaa !163
  %29 = icmp eq ptr %28, null
  br i1 %29, label %65, label %30

30:                                               ; preds = %26
  br i1 %12, label %38, label %31

31:                                               ; preds = %30
  %32 = getelementptr inbounds %struct.ParticleSettings, ptr %24, i64 0, i32 5
  %33 = load i32, ptr %32, align 8, !tbaa !165
  %34 = and i32 %33, 8
  %35 = icmp ne i32 %34, 0
  %36 = or i1 %14, %35
  %37 = select i1 %36, i32 %4, i32 %15
  br label %38

38:                                               ; preds = %31, %30
  %39 = phi i32 [ %4, %30 ], [ %37, %31 ]
  %40 = call fastcc i64 @animfilter_block_data(ptr noundef %0, ptr noundef nonnull %6, ptr noundef %2, ptr noundef nonnull %24, i32 noundef %39) #8
  %41 = icmp eq i64 %40, 0
  br i1 %41, label %65, label %42

42:                                               ; preds = %38
  br i1 %14, label %61, label %43

43:                                               ; preds = %42
  br i1 %17, label %54, label %44

44:                                               ; preds = %43
  %45 = load ptr, ptr %23, align 8, !tbaa !323
  %46 = getelementptr inbounds %struct.ParticleSettings, ptr %45, i64 0, i32 1
  %47 = load ptr, ptr %46, align 8, !tbaa !163
  %48 = icmp eq ptr %47, null
  br i1 %48, label %54, label %49

49:                                               ; preds = %44
  %50 = getelementptr inbounds %struct.AnimData, ptr %47, i64 0, i32 7
  %51 = load i32, ptr %50, align 8, !tbaa !123
  %52 = and i32 %51, 32768
  %53 = icmp eq i32 %52, 0
  br i1 %53, label %61, label %54

54:                                               ; preds = %49, %44, %43
  br i1 %19, label %55, label %64

55:                                               ; preds = %54
  %56 = load ptr, ptr %23, align 8, !tbaa !323
  %57 = call fastcc ptr @make_new_animlistelem(ptr noundef %56, i16 noundef signext 17, ptr noundef %56) #8
  %58 = icmp eq ptr %57, null
  br i1 %58, label %61, label %59

59:                                               ; preds = %55
  call void @BLI_addtail(ptr noundef %1, ptr noundef nonnull %57) #9
  %60 = add i64 %22, 1
  br label %61

61:                                               ; preds = %55, %59, %49, %42
  %62 = phi i64 [ %22, %49 ], [ %22, %42 ], [ %60, %59 ], [ %22, %55 ]
  call void @BLI_movelisttolist(ptr noundef %1, ptr noundef nonnull %6) #9
  %63 = add i64 %62, %40
  br label %65

64:                                               ; preds = %54
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %6) #10
  br label %69

65:                                               ; preds = %26, %20, %61, %38
  %66 = phi i64 [ %22, %38 ], [ %63, %61 ], [ %22, %20 ], [ %22, %26 ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %6) #10
  %67 = load ptr, ptr %21, align 8, !tbaa !72
  %68 = icmp eq ptr %67, null
  br i1 %68, label %69, label %20, !llvm.loop !325

69:                                               ; preds = %65, %5, %64
  %70 = phi i64 [ 1, %64 ], [ 0, %5 ], [ %66, %65 ]
  ret i64 %70
}

; Function Attrs: optsize
declare void @modifiers_foreachIDLink(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal void @animfilter_modifier_idpoin_cb(ptr noundef %0, ptr noundef %1, ptr nocapture noundef readonly %2) #0 !PGOFuncName !326 {
  %4 = load ptr, ptr %2, align 8, !tbaa !72
  %5 = icmp eq ptr %4, null
  br i1 %5, label %26, label %6

6:                                                ; preds = %3
  %7 = getelementptr inbounds %struct.ID, ptr %4, i64 0, i32 4
  %8 = load i16, ptr %7, align 8, !tbaa !77
  %9 = icmp eq i16 %8, 17748
  br i1 %9, label %10, label %26

10:                                               ; preds = %6
  %11 = getelementptr inbounds %struct.tAnimFilterModifiersContext, ptr %0, i64 0, i32 1
  %12 = load ptr, ptr %11, align 8, !tbaa !311
  %13 = getelementptr inbounds %struct.bDopeSheet, ptr %12, i64 0, i32 4
  %14 = load i32, ptr %13, align 8, !tbaa !75
  %15 = and i32 %14, 1048576
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %17, label %26

17:                                               ; preds = %10
  %18 = load ptr, ptr %0, align 8, !tbaa !309
  %19 = getelementptr inbounds %struct.tAnimFilterModifiersContext, ptr %0, i64 0, i32 2
  %20 = getelementptr inbounds %struct.tAnimFilterModifiersContext, ptr %0, i64 0, i32 4
  %21 = load i32, ptr %20, align 8, !tbaa !312
  %22 = tail call fastcc i64 @animdata_filter_ds_texture(ptr noundef %18, ptr noundef nonnull %19, ptr noundef nonnull %12, ptr noundef nonnull %4, ptr noundef %1, i32 noundef %21) #8
  %23 = getelementptr inbounds %struct.tAnimFilterModifiersContext, ptr %0, i64 0, i32 3
  %24 = load i64, ptr %23, align 8, !tbaa !313
  %25 = add i64 %24, %22
  store i64 %25, ptr %23, align 8, !tbaa !313
  br label %26

26:                                               ; preds = %6, %17, %10, %3
  ret void
}

; Function Attrs: optsize
declare ptr @give_current_material(ptr noundef, i16 noundef signext) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc i64 @animdata_filter_ds_material(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, i32 noundef %4) unnamed_addr #0 !PGOFuncName !327 {
  %6 = alloca %struct.ListBase, align 8
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %6) #10
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %6, i8 0, i64 16, i1 false)
  %7 = and i32 %4, 2
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %19, label %9

9:                                                ; preds = %5
  %10 = getelementptr inbounds %struct.Material, ptr %3, i64 0, i32 3
  %11 = load i16, ptr %10, align 2, !tbaa !128
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
  %21 = call fastcc i64 @animfilter_block_data(ptr noundef %0, ptr noundef nonnull %6, ptr noundef %2, ptr noundef %3, i32 noundef %20) #8
  %22 = getelementptr inbounds %struct.bDopeSheet, ptr %2, i64 0, i32 4
  %23 = load i32, ptr %22, align 8, !tbaa !75
  %24 = and i32 %23, 1048576
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %26, label %29

26:                                               ; preds = %19
  %27 = call fastcc i64 @animdata_filter_ds_textures(ptr noundef %0, ptr noundef nonnull %6, ptr noundef nonnull %2, ptr noundef %3, i32 noundef %20) #8
  %28 = add i64 %27, %21
  br label %29

29:                                               ; preds = %26, %19
  %30 = phi i64 [ %21, %19 ], [ %28, %26 ]
  %31 = getelementptr inbounds %struct.Material, ptr %3, i64 0, i32 103
  %32 = load ptr, ptr %31, align 8, !tbaa !328
  %33 = icmp eq ptr %32, null
  br i1 %33, label %41, label %34

34:                                               ; preds = %29
  %35 = load i32, ptr %22, align 8, !tbaa !75
  %36 = and i32 %35, 524288
  %37 = icmp eq i32 %36, 0
  br i1 %37, label %38, label %41

38:                                               ; preds = %34
  %39 = call fastcc i64 @animdata_filter_ds_nodetree(ptr noundef %0, ptr noundef nonnull %6, ptr noundef nonnull %2, ptr noundef nonnull %3, ptr noundef nonnull %32, i32 noundef %20) #8
  %40 = add i64 %39, %30
  br label %41

41:                                               ; preds = %38, %34, %29
  %42 = phi i64 [ %30, %34 ], [ %40, %38 ], [ %30, %29 ]
  %43 = icmp eq i64 %42, 0
  br i1 %43, label %69, label %44

44:                                               ; preds = %41
  %45 = and i32 %4, 8
  %46 = icmp eq i32 %45, 0
  br i1 %46, label %66, label %47

47:                                               ; preds = %44
  %48 = and i32 %4, 16
  %49 = icmp eq i32 %48, 0
  br i1 %49, label %59, label %50

50:                                               ; preds = %47
  %51 = getelementptr inbounds %struct.Material, ptr %3, i64 0, i32 1
  %52 = load ptr, ptr %51, align 8, !tbaa !124
  %53 = icmp eq ptr %52, null
  br i1 %53, label %59, label %54

54:                                               ; preds = %50
  %55 = getelementptr inbounds %struct.AnimData, ptr %52, i64 0, i32 7
  %56 = load i32, ptr %55, align 8, !tbaa !123
  %57 = and i32 %56, 32768
  %58 = icmp eq i32 %57, 0
  br i1 %58, label %66, label %59

59:                                               ; preds = %54, %50, %47
  %60 = and i32 %4, 1073741824
  %61 = icmp eq i32 %60, 0
  br i1 %61, label %62, label %69

62:                                               ; preds = %59
  %63 = call fastcc ptr @make_new_animlistelem(ptr noundef nonnull %3, i16 noundef signext 10, ptr noundef nonnull %3) #8
  %64 = icmp eq ptr %63, null
  br i1 %64, label %66, label %65

65:                                               ; preds = %62
  call void @BLI_addtail(ptr noundef %1, ptr noundef nonnull %63) #9
  br label %66

66:                                               ; preds = %62, %65, %54, %44
  %67 = phi i64 [ 0, %54 ], [ 0, %44 ], [ 1, %65 ], [ 0, %62 ]
  call void @BLI_movelisttolist(ptr noundef %1, ptr noundef nonnull %6) #9
  %68 = add i64 %67, %42
  br label %69

69:                                               ; preds = %41, %66, %59
  %70 = phi i64 [ 1, %59 ], [ %68, %66 ], [ 0, %41 ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %6) #10
  ret i64 %70
}

; Function Attrs: optsize
declare ptr @give_node_material(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @BLI_freelinkN(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @BLI_gset_ptr_new(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare zeroext i8 @BLI_gset_add(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @BLI_gset_free(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nofree nounwind
declare noundef i32 @puts(ptr nocapture noundef readonly) local_unnamed_addr #7

attributes #0 = { noinline nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #4 = { nofree nounwind optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nofree noinline norecurse nosync nounwind optsize memory(read, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nofree nounwind optsize willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nofree nounwind }
attributes #8 = { optsize }
attributes #9 = { nounwind optsize }
attributes #10 = { nounwind }
attributes #11 = { nounwind optsize willreturn memory(read) }

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
!34 = !{!35, !36, i64 24}
!35 = !{!"bAnimContext", !36, i64 0, !39, i64 8, !39, i64 10, !39, i64 12, !39, i64 14, !36, i64 16, !36, i64 24, !36, i64 32, !36, i64 40, !36, i64 48, !36, i64 56, !36, i64 64, !36, i64 72}
!36 = !{!"any pointer", !37, i64 0}
!37 = !{!"omnipotent char", !38, i64 0}
!38 = !{!"Simple C/C++ TBAA"}
!39 = !{!"short", !37, i64 0}
!40 = !{!35, !39, i64 12}
!41 = !{i8 0, i8 2}
!42 = !{!35, !36, i64 0}
!43 = !{!"anim_filter.c:actedit_get_context"}
!44 = !{!35, !36, i64 40}
!45 = !{!46, !37, i64 336}
!46 = !{!"SpaceAction", !36, i64 0, !36, i64 8, !47, i64 16, !48, i64 32, !49, i64 36, !37, i64 40, !50, i64 56, !36, i64 216, !53, i64 224, !37, i64 336, !37, i64 337, !39, i64 338, !49, i64 340}
!47 = !{!"ListBase", !36, i64 0, !36, i64 8}
!48 = !{!"int", !37, i64 0}
!49 = !{!"float", !37, i64 0}
!50 = !{!"View2D", !51, i64 0, !51, i64 16, !52, i64 32, !52, i64 48, !52, i64 64, !37, i64 80, !37, i64 88, !49, i64 96, !49, i64 100, !39, i64 104, !39, i64 106, !39, i64 108, !39, i64 110, !39, i64 112, !39, i64 114, !39, i64 116, !39, i64 118, !39, i64 120, !39, i64 122, !39, i64 124, !39, i64 126, !36, i64 128, !48, i64 136, !48, i64 140, !36, i64 144, !36, i64 152}
!51 = !{!"rctf", !49, i64 0, !49, i64 4, !49, i64 8, !49, i64 12}
!52 = !{!"rcti", !48, i64 0, !48, i64 4, !48, i64 8, !48, i64 12}
!53 = !{!"bDopeSheet", !36, i64 0, !47, i64 8, !36, i64 24, !37, i64 32, !48, i64 96, !48, i64 100, !48, i64 104, !48, i64 108}
!54 = !{!35, !36, i64 56}
!55 = !{!56, !36, i64 120}
!56 = !{!"Object", !57, i64 0, !36, i64 120, !36, i64 128, !39, i64 136, !39, i64 138, !48, i64 140, !48, i64 144, !48, i64 148, !37, i64 152, !36, i64 216, !36, i64 224, !36, i64 232, !36, i64 240, !36, i64 248, !36, i64 256, !36, i64 264, !36, i64 272, !36, i64 280, !36, i64 288, !36, i64 296, !36, i64 304, !58, i64 312, !36, i64 360, !47, i64 368, !47, i64 384, !47, i64 400, !47, i64 416, !48, i64 432, !48, i64 436, !36, i64 440, !36, i64 448, !48, i64 456, !48, i64 460, !37, i64 464, !37, i64 476, !37, i64 488, !37, i64 500, !37, i64 512, !37, i64 524, !37, i64 536, !37, i64 548, !37, i64 560, !37, i64 576, !37, i64 592, !37, i64 604, !49, i64 616, !49, i64 620, !37, i64 624, !37, i64 688, !37, i64 752, !37, i64 816, !37, i64 880, !48, i64 944, !39, i64 948, !39, i64 950, !39, i64 952, !39, i64 954, !39, i64 956, !39, i64 958, !39, i64 960, !39, i64 962, !39, i64 964, !37, i64 966, !37, i64 967, !48, i64 968, !48, i64 972, !48, i64 976, !48, i64 980, !48, i64 984, !49, i64 988, !49, i64 992, !49, i64 996, !49, i64 1000, !49, i64 1004, !49, i64 1008, !49, i64 1012, !49, i64 1016, !49, i64 1020, !49, i64 1024, !49, i64 1028, !49, i64 1032, !39, i64 1036, !39, i64 1038, !39, i64 1040, !37, i64 1042, !37, i64 1043, !39, i64 1044, !37, i64 1046, !37, i64 1047, !49, i64 1048, !49, i64 1052, !47, i64 1056, !47, i64 1072, !47, i64 1088, !47, i64 1104, !49, i64 1120, !39, i64 1124, !39, i64 1126, !37, i64 1128, !48, i64 1144, !48, i64 1148, !36, i64 1152, !37, i64 1160, !37, i64 1161, !39, i64 1162, !37, i64 1164, !47, i64 1176, !47, i64 1192, !47, i64 1208, !47, i64 1224, !36, i64 1240, !36, i64 1248, !36, i64 1256, !37, i64 1264, !37, i64 1265, !39, i64 1266, !49, i64 1268, !36, i64 1272, !36, i64 1280, !36, i64 1288, !36, i64 1296, !59, i64 1304, !59, i64 1312, !48, i64 1320, !48, i64 1324, !47, i64 1328, !47, i64 1344, !36, i64 1360, !36, i64 1368, !36, i64 1376, !37, i64 1384, !36, i64 1392, !47, i64 1400, !36, i64 1416}
!57 = !{!"ID", !36, i64 0, !36, i64 8, !36, i64 16, !36, i64 24, !37, i64 32, !39, i64 98, !48, i64 100, !48, i64 104, !48, i64 108, !36, i64 112}
!58 = !{!"bAnimVizSettings", !48, i64 0, !48, i64 4, !48, i64 8, !48, i64 12, !39, i64 16, !39, i64 18, !39, i64 20, !39, i64 22, !39, i64 24, !39, i64 26, !39, i64 28, !39, i64 30, !48, i64 32, !48, i64 36, !48, i64 40, !48, i64 44}
!59 = !{!"long", !37, i64 0}
!60 = !{!61, !36, i64 0}
!61 = !{!"AnimData", !36, i64 0, !36, i64 8, !36, i64 16, !47, i64 24, !36, i64 40, !47, i64 48, !47, i64 64, !48, i64 80, !48, i64 84, !39, i64 88, !39, i64 90, !49, i64 92}
!62 = !{!46, !36, i64 216}
!63 = !{!35, !39, i64 8}
!64 = !{!65, !36, i64 120}
!65 = !{!"Key", !57, i64 0, !36, i64 120, !36, i64 128, !37, i64 136, !48, i64 168, !48, i64 172, !47, i64 176, !36, i64 192, !36, i64 200, !39, i64 208, !39, i64 210, !39, i64 212, !39, i64 214, !49, i64 216, !48, i64 220}
!66 = !{!35, !36, i64 48}
!67 = !{!46, !36, i64 224}
!68 = !{!35, !39, i64 10}
!69 = !{!"anim_filter.c:graphedit_get_context"}
!70 = !{!71, !36, i64 216}
!71 = !{!"SpaceIpo", !36, i64 0, !36, i64 8, !47, i64 16, !48, i64 32, !49, i64 36, !37, i64 40, !50, i64 56, !36, i64 216, !47, i64 224, !39, i64 240, !39, i64 242, !48, i64 244, !49, i64 248, !48, i64 252}
!72 = !{!36, !36, i64 0}
!73 = !{!53, !36, i64 0}
!74 = !{!71, !48, i64 244}
!75 = !{!53, !48, i64 96}
!76 = !{!71, !39, i64 240}
!77 = !{!39, !39, i64 0}
!78 = !{!"anim_filter.c:nlaedit_get_context"}
!79 = !{!80, !36, i64 64}
!80 = !{!"SpaceNla", !36, i64 0, !36, i64 8, !47, i64 16, !48, i64 32, !49, i64 36, !37, i64 40, !39, i64 56, !39, i64 58, !48, i64 60, !36, i64 64, !50, i64 72}
!81 = !{!35, !36, i64 64}
!82 = !{!83, !36, i64 168}
!83 = !{!"Scene", !57, i64 0, !36, i64 120, !36, i64 128, !36, i64 136, !36, i64 144, !47, i64 152, !36, i64 168, !36, i64 176, !37, i64 184, !37, i64 196, !37, i64 208, !37, i64 220, !48, i64 232, !48, i64 236, !48, i64 240, !39, i64 244, !37, i64 246, !37, i64 247, !36, i64 248, !36, i64 256, !36, i64 264, !36, i64 272, !84, i64 280, !91, i64 4264, !47, i64 4296, !47, i64 4312, !36, i64 4328, !36, i64 4336, !36, i64 4344, !36, i64 4352, !36, i64 4360, !36, i64 4368, !39, i64 4376, !39, i64 4378, !48, i64 4380, !47, i64 4384, !92, i64 4400, !93, i64 4416, !96, i64 4600, !36, i64 4608, !97, i64 4616, !36, i64 4640, !59, i64 4648, !59, i64 4656, !86, i64 4664, !87, i64 4824, !98, i64 4888, !36, i64 4952}
!84 = !{!"RenderData", !85, i64 0, !36, i64 248, !36, i64 256, !88, i64 264, !89, i64 328, !48, i64 400, !48, i64 404, !48, i64 408, !49, i64 412, !48, i64 416, !48, i64 420, !48, i64 424, !48, i64 428, !39, i64 432, !39, i64 434, !49, i64 436, !49, i64 440, !49, i64 444, !49, i64 448, !49, i64 452, !39, i64 456, !39, i64 458, !39, i64 460, !39, i64 462, !39, i64 464, !39, i64 466, !48, i64 468, !39, i64 472, !39, i64 474, !39, i64 476, !39, i64 478, !39, i64 480, !39, i64 482, !48, i64 484, !48, i64 488, !39, i64 492, !39, i64 494, !48, i64 496, !48, i64 500, !39, i64 504, !39, i64 506, !39, i64 508, !39, i64 510, !39, i64 512, !37, i64 514, !37, i64 515, !48, i64 516, !48, i64 520, !48, i64 524, !39, i64 528, !39, i64 530, !39, i64 532, !39, i64 534, !39, i64 536, !39, i64 538, !39, i64 540, !39, i64 542, !51, i64 544, !51, i64 560, !52, i64 576, !47, i64 592, !39, i64 608, !39, i64 610, !49, i64 612, !49, i64 616, !49, i64 620, !49, i64 624, !48, i64 628, !49, i64 632, !49, i64 636, !49, i64 640, !49, i64 644, !39, i64 648, !39, i64 650, !39, i64 652, !39, i64 654, !39, i64 656, !39, i64 658, !49, i64 660, !49, i64 664, !39, i64 668, !39, i64 670, !49, i64 672, !49, i64 676, !37, i64 680, !48, i64 1704, !39, i64 1708, !39, i64 1710, !37, i64 1712, !37, i64 2480, !37, i64 2496, !37, i64 2512, !37, i64 2513, !37, i64 2514, !37, i64 2515, !48, i64 2520, !39, i64 2524, !39, i64 2526, !49, i64 2528, !49, i64 2532, !39, i64 2536, !39, i64 2538, !49, i64 2540, !39, i64 2544, !39, i64 2546, !48, i64 2548, !39, i64 2552, !39, i64 2554, !39, i64 2556, !39, i64 2558, !49, i64 2560, !49, i64 2564, !36, i64 2568, !48, i64 2576, !49, i64 2580, !37, i64 2584, !90, i64 2616, !48, i64 3976, !48, i64 3980}
!85 = !{!"ImageFormatData", !37, i64 0, !37, i64 1, !37, i64 2, !37, i64 3, !37, i64 4, !37, i64 5, !37, i64 6, !37, i64 7, !39, i64 8, !39, i64 10, !49, i64 12, !37, i64 16, !37, i64 17, !37, i64 18, !86, i64 24, !87, i64 184}
!86 = !{!"ColorManagedViewSettings", !48, i64 0, !48, i64 4, !37, i64 8, !37, i64 72, !49, i64 136, !49, i64 140, !36, i64 144, !36, i64 152}
!87 = !{!"ColorManagedDisplaySettings", !37, i64 0}
!88 = !{!"QuicktimeCodecSettings", !48, i64 0, !48, i64 4, !48, i64 8, !48, i64 12, !48, i64 16, !48, i64 20, !48, i64 24, !48, i64 28, !48, i64 32, !48, i64 36, !48, i64 40, !48, i64 44, !39, i64 48, !39, i64 50, !48, i64 52, !48, i64 56, !48, i64 60}
!89 = !{!"FFMpegCodecData", !48, i64 0, !48, i64 4, !48, i64 8, !48, i64 12, !48, i64 16, !48, i64 20, !48, i64 24, !48, i64 28, !49, i64 32, !48, i64 36, !48, i64 40, !48, i64 44, !48, i64 48, !48, i64 52, !48, i64 56, !48, i64 60, !36, i64 64}
!90 = !{!"BakeData", !85, i64 0, !37, i64 248, !39, i64 1272, !39, i64 1274, !39, i64 1276, !39, i64 1278, !49, i64 1280, !49, i64 1284, !37, i64 1288, !37, i64 1291, !37, i64 1292, !37, i64 1293, !37, i64 1296}
!91 = !{!"AudioData", !48, i64 0, !49, i64 4, !49, i64 8, !49, i64 12, !48, i64 16, !39, i64 20, !39, i64 22, !49, i64 24, !49, i64 28}
!92 = !{!"GameFraming", !37, i64 0, !37, i64 12, !37, i64 13, !37, i64 14, !37, i64 15}
!93 = !{!"GameData", !92, i64 0, !39, i64 16, !39, i64 18, !39, i64 20, !39, i64 22, !39, i64 24, !39, i64 26, !39, i64 28, !39, i64 30, !39, i64 32, !37, i64 34, !94, i64 40, !39, i64 64, !39, i64 66, !49, i64 68, !95, i64 72, !49, i64 128, !49, i64 132, !48, i64 136, !39, i64 140, !39, i64 142, !39, i64 144, !39, i64 146, !39, i64 148, !39, i64 150, !39, i64 152, !39, i64 154, !39, i64 156, !39, i64 158, !39, i64 160, !39, i64 162, !49, i64 164, !49, i64 168, !49, i64 172, !49, i64 176, !49, i64 180}
!94 = !{!"GameDome", !39, i64 0, !39, i64 2, !39, i64 4, !39, i64 6, !49, i64 8, !49, i64 12, !36, i64 16}
!95 = !{!"RecastData", !49, i64 0, !49, i64 4, !49, i64 8, !49, i64 12, !49, i64 16, !49, i64 20, !49, i64 24, !49, i64 28, !49, i64 32, !49, i64 36, !48, i64 40, !49, i64 44, !49, i64 48, !39, i64 52, !39, i64 54}
!96 = !{!"UnitSettings", !49, i64 0, !37, i64 4, !37, i64 5, !39, i64 6}
!97 = !{!"PhysicsSettings", !37, i64 0, !48, i64 12, !48, i64 16, !48, i64 20}
!98 = !{!"ColorManagedColorspaceSettings", !37, i64 0}
!99 = !{!100, !36, i64 32}
!100 = !{!"Base", !36, i64 0, !36, i64 8, !48, i64 16, !48, i64 20, !48, i64 24, !39, i64 28, !39, i64 30, !36, i64 32}
!101 = !{!35, !36, i64 16}
!102 = !{!35, !36, i64 32}
!103 = !{!104, !37, i64 72}
!104 = !{!"ScrArea", !36, i64 0, !36, i64 8, !36, i64 16, !36, i64 24, !36, i64 32, !36, i64 40, !36, i64 48, !52, i64 56, !37, i64 72, !37, i64 73, !39, i64 74, !39, i64 76, !39, i64 78, !39, i64 80, !39, i64 82, !39, i64 84, !37, i64 86, !37, i64 87, !36, i64 88, !47, i64 96, !47, i64 112, !47, i64 128, !47, i64 144}
!105 = !{!106, !39, i64 214}
!106 = !{!"ARegion", !36, i64 0, !36, i64 8, !50, i64 16, !52, i64 176, !52, i64 192, !39, i64 208, !39, i64 210, !39, i64 212, !39, i64 214, !39, i64 216, !39, i64 218, !49, i64 220, !39, i64 224, !39, i64 226, !39, i64 228, !39, i64 230, !39, i64 232, !39, i64 234, !39, i64 236, !39, i64 238, !36, i64 240, !47, i64 248, !47, i64 264, !47, i64 280, !47, i64 296, !47, i64 312, !47, i64 328, !47, i64 344, !36, i64 360, !36, i64 368, !36, i64 376}
!107 = !{!35, !39, i64 14}
!108 = !{!59, !59, i64 0}
!109 = !{i16 0, i16 2}
!110 = !{!"anim_filter.c:make_new_animlistelem"}
!111 = !{!112, !36, i64 16}
!112 = !{!"bAnimListElem", !36, i64 0, !36, i64 8, !36, i64 16, !48, i64 24, !48, i64 28, !48, i64 32, !39, i64 36, !39, i64 38, !36, i64 40, !36, i64 48, !36, i64 56}
!113 = !{!112, !48, i64 24}
!114 = !{!112, !36, i64 48}
!115 = !{!112, !36, i64 56}
!116 = !{!112, !36, i64 40}
!117 = !{!112, !39, i64 38}
!118 = !{!83, !39, i64 244}
!119 = !{!112, !48, i64 28}
!120 = !{!56, !39, i64 948}
!121 = !{!122, !48, i64 184}
!122 = !{!"bAction", !57, i64 0, !47, i64 120, !47, i64 136, !47, i64 152, !47, i64 168, !48, i64 184, !48, i64 188, !48, i64 192, !48, i64 196}
!123 = !{!61, !48, i64 80}
!124 = !{!125, !36, i64 120}
!125 = !{!"Material", !57, i64 0, !36, i64 120, !39, i64 128, !39, i64 130, !49, i64 132, !49, i64 136, !49, i64 140, !49, i64 144, !49, i64 148, !49, i64 152, !49, i64 156, !49, i64 160, !49, i64 164, !49, i64 168, !49, i64 172, !49, i64 176, !49, i64 180, !49, i64 184, !49, i64 188, !49, i64 192, !49, i64 196, !49, i64 200, !49, i64 204, !49, i64 208, !49, i64 212, !49, i64 216, !49, i64 220, !126, i64 224, !127, i64 312, !49, i64 328, !49, i64 332, !49, i64 336, !49, i64 340, !49, i64 344, !49, i64 348, !49, i64 352, !39, i64 356, !39, i64 358, !39, i64 360, !37, i64 362, !37, i64 363, !49, i64 364, !49, i64 368, !39, i64 372, !39, i64 374, !49, i64 376, !49, i64 380, !49, i64 384, !49, i64 388, !39, i64 392, !39, i64 394, !48, i64 396, !48, i64 400, !48, i64 404, !48, i64 408, !39, i64 412, !39, i64 414, !39, i64 416, !39, i64 418, !49, i64 420, !49, i64 424, !49, i64 428, !49, i64 432, !49, i64 436, !49, i64 440, !49, i64 444, !49, i64 448, !49, i64 452, !49, i64 456, !37, i64 460, !49, i64 524, !49, i64 528, !49, i64 532, !48, i64 536, !37, i64 540, !37, i64 541, !37, i64 542, !37, i64 543, !39, i64 544, !39, i64 546, !39, i64 548, !37, i64 550, !37, i64 551, !39, i64 552, !39, i64 554, !49, i64 556, !49, i64 560, !37, i64 564, !49, i64 580, !49, i64 584, !39, i64 588, !39, i64 590, !36, i64 592, !36, i64 600, !37, i64 608, !37, i64 609, !37, i64 610, !37, i64 611, !39, i64 612, !39, i64 614, !49, i64 616, !49, i64 620, !37, i64 624, !36, i64 768, !36, i64 776, !36, i64 784, !36, i64 792, !49, i64 800, !49, i64 804, !49, i64 808, !49, i64 812, !49, i64 816, !39, i64 820, !39, i64 822, !37, i64 824, !37, i64 836, !49, i64 848, !49, i64 852, !49, i64 856, !49, i64 860, !49, i64 864, !49, i64 868, !49, i64 872, !39, i64 876, !39, i64 878, !48, i64 880, !39, i64 884, !39, i64 886, !37, i64 888, !39, i64 904, !39, i64 906, !39, i64 908, !39, i64 910, !39, i64 912, !37, i64 914, !36, i64 920, !47, i64 928}
!126 = !{!"VolumeSettings", !49, i64 0, !49, i64 4, !49, i64 8, !49, i64 12, !37, i64 16, !37, i64 28, !37, i64 40, !49, i64 52, !49, i64 56, !49, i64 60, !39, i64 64, !39, i64 66, !39, i64 68, !39, i64 70, !49, i64 72, !49, i64 76, !49, i64 80, !49, i64 84}
!127 = !{!"GameSettings", !48, i64 0, !48, i64 4, !48, i64 8, !48, i64 12}
!128 = !{!125, !39, i64 130}
!129 = !{!130, !36, i64 120}
!130 = !{!"Lamp", !57, i64 0, !36, i64 120, !39, i64 128, !39, i64 130, !48, i64 132, !39, i64 136, !39, i64 138, !49, i64 140, !49, i64 144, !49, i64 148, !49, i64 152, !49, i64 156, !49, i64 160, !49, i64 164, !49, i64 168, !49, i64 172, !49, i64 176, !49, i64 180, !49, i64 184, !49, i64 188, !49, i64 192, !49, i64 196, !36, i64 200, !39, i64 208, !39, i64 210, !49, i64 212, !49, i64 216, !49, i64 220, !49, i64 224, !49, i64 228, !49, i64 232, !49, i64 236, !39, i64 240, !39, i64 242, !39, i64 244, !39, i64 246, !37, i64 248, !37, i64 249, !39, i64 250, !39, i64 252, !39, i64 254, !39, i64 256, !39, i64 258, !49, i64 260, !49, i64 264, !49, i64 268, !49, i64 272, !39, i64 276, !39, i64 278, !39, i64 280, !39, i64 282, !39, i64 284, !39, i64 286, !49, i64 288, !49, i64 292, !49, i64 296, !49, i64 300, !49, i64 304, !49, i64 308, !49, i64 312, !49, i64 316, !49, i64 320, !49, i64 324, !49, i64 328, !49, i64 332, !49, i64 336, !39, i64 340, !37, i64 342, !36, i64 344, !37, i64 352, !39, i64 496, !39, i64 498, !37, i64 500, !36, i64 504, !36, i64 512}
!131 = !{!130, !39, i64 130}
!132 = !{!133, !36, i64 120}
!133 = !{!"Camera", !57, i64 0, !36, i64 120, !37, i64 128, !37, i64 129, !39, i64 130, !49, i64 132, !49, i64 136, !49, i64 140, !49, i64 144, !49, i64 148, !49, i64 152, !49, i64 156, !49, i64 160, !49, i64 164, !49, i64 168, !49, i64 172, !36, i64 176, !36, i64 184, !37, i64 192, !37, i64 193}
!134 = !{!133, !39, i64 130}
!135 = !{!136, !36, i64 120}
!136 = !{!"Curve", !57, i64 0, !36, i64 120, !36, i64 128, !47, i64 136, !36, i64 152, !36, i64 160, !36, i64 168, !36, i64 176, !36, i64 184, !36, i64 192, !36, i64 200, !37, i64 208, !37, i64 220, !37, i64 232, !39, i64 244, !39, i64 246, !39, i64 248, !39, i64 250, !49, i64 252, !49, i64 256, !48, i64 260, !39, i64 264, !39, i64 266, !48, i64 268, !49, i64 272, !49, i64 276, !49, i64 280, !39, i64 284, !39, i64 286, !39, i64 288, !39, i64 290, !48, i64 292, !48, i64 296, !37, i64 300, !39, i64 304, !37, i64 306, !37, i64 307, !49, i64 308, !49, i64 312, !49, i64 316, !49, i64 320, !49, i64 324, !49, i64 328, !49, i64 332, !49, i64 336, !49, i64 340, !49, i64 344, !48, i64 348, !48, i64 352, !48, i64 356, !48, i64 360, !48, i64 364, !36, i64 368, !36, i64 376, !37, i64 384, !36, i64 448, !36, i64 456, !36, i64 464, !36, i64 472, !36, i64 480, !48, i64 488, !48, i64 492, !36, i64 496, !137, i64 504, !49, i64 512, !49, i64 516, !49, i64 520, !37, i64 524, !37, i64 525, !37, i64 526}
!137 = !{!"CharInfo", !39, i64 0, !39, i64 2, !37, i64 4, !37, i64 5, !39, i64 6}
!138 = !{!136, !48, i64 268}
!139 = !{!140, !36, i64 120}
!140 = !{!"bArmature", !57, i64 0, !36, i64 120, !47, i64 128, !47, i64 144, !36, i64 160, !36, i64 168, !36, i64 176, !36, i64 184, !48, i64 192, !48, i64 196, !48, i64 200, !48, i64 204, !39, i64 208, !39, i64 210, !48, i64 212, !48, i64 216, !48, i64 220, !39, i64 224, !39, i64 226, !39, i64 228, !39, i64 230, !48, i64 232, !48, i64 236, !48, i64 240, !48, i64 244, !48, i64 248, !48, i64 252}
!141 = !{!140, !48, i64 192}
!142 = !{!143, !36, i64 120}
!143 = !{!"Mesh", !57, i64 0, !36, i64 120, !36, i64 128, !36, i64 136, !36, i64 144, !36, i64 152, !36, i64 160, !36, i64 168, !36, i64 176, !36, i64 184, !36, i64 192, !36, i64 200, !36, i64 208, !36, i64 216, !36, i64 224, !36, i64 232, !36, i64 240, !36, i64 248, !36, i64 256, !36, i64 264, !36, i64 272, !144, i64 280, !144, i64 480, !144, i64 680, !144, i64 880, !144, i64 1080, !48, i64 1280, !48, i64 1284, !48, i64 1288, !48, i64 1292, !48, i64 1296, !48, i64 1300, !48, i64 1304, !37, i64 1308, !37, i64 1320, !37, i64 1332, !48, i64 1344, !39, i64 1348, !39, i64 1350, !49, i64 1352, !48, i64 1356, !37, i64 1360, !37, i64 1361, !37, i64 1362, !37, i64 1363, !37, i64 1364, !37, i64 1365, !39, i64 1366, !36, i64 1368}
!144 = !{!"CustomData", !36, i64 0, !37, i64 8, !48, i64 172, !48, i64 176, !48, i64 180, !36, i64 184, !36, i64 192}
!145 = !{!143, !39, i64 1350}
!146 = !{!147, !36, i64 120}
!147 = !{!"Lattice", !57, i64 0, !36, i64 120, !39, i64 128, !39, i64 130, !39, i64 132, !39, i64 134, !39, i64 136, !39, i64 138, !39, i64 140, !39, i64 142, !37, i64 144, !37, i64 145, !37, i64 146, !37, i64 147, !48, i64 148, !49, i64 152, !49, i64 156, !49, i64 160, !49, i64 164, !49, i64 168, !49, i64 172, !36, i64 176, !36, i64 184, !36, i64 192, !36, i64 200, !37, i64 208, !36, i64 272}
!148 = !{!147, !39, i64 134}
!149 = !{!150, !36, i64 120}
!150 = !{!"Speaker", !57, i64 0, !36, i64 120, !36, i64 128, !49, i64 136, !49, i64 140, !49, i64 144, !49, i64 148, !49, i64 152, !49, i64 156, !49, i64 160, !49, i64 164, !49, i64 168, !49, i64 172, !39, i64 176, !37, i64 178}
!151 = !{!150, !39, i64 176}
!152 = !{!65, !39, i64 214}
!153 = !{!154, !36, i64 120}
!154 = !{!"World", !57, i64 0, !36, i64 120, !39, i64 128, !39, i64 130, !39, i64 132, !39, i64 134, !49, i64 136, !49, i64 140, !49, i64 144, !49, i64 148, !49, i64 152, !49, i64 156, !49, i64 160, !49, i64 164, !49, i64 168, !49, i64 172, !49, i64 176, !49, i64 180, !49, i64 184, !49, i64 188, !49, i64 192, !49, i64 196, !39, i64 200, !39, i64 202, !39, i64 204, !39, i64 206, !39, i64 208, !39, i64 210, !39, i64 212, !39, i64 214, !49, i64 216, !49, i64 220, !49, i64 224, !49, i64 228, !49, i64 232, !49, i64 236, !49, i64 240, !49, i64 244, !49, i64 248, !49, i64 252, !49, i64 256, !49, i64 260, !39, i64 264, !39, i64 266, !39, i64 268, !39, i64 270, !49, i64 272, !49, i64 276, !49, i64 280, !49, i64 284, !39, i64 288, !39, i64 290, !39, i64 292, !39, i64 294, !49, i64 296, !49, i64 300, !49, i64 304, !49, i64 308, !49, i64 312, !49, i64 316, !49, i64 320, !39, i64 324, !39, i64 326, !39, i64 328, !39, i64 330, !39, i64 332, !39, i64 334, !36, i64 336, !36, i64 344, !36, i64 352, !37, i64 360, !39, i64 504, !39, i64 506, !37, i64 508, !36, i64 512, !36, i64 520}
!155 = !{!154, !39, i64 334}
!156 = !{!157, !36, i64 120}
!157 = !{!"bNodeTree", !57, i64 0, !36, i64 120, !36, i64 128, !37, i64 136, !36, i64 200, !36, i64 208, !37, i64 216, !47, i64 224, !47, i64 240, !48, i64 256, !48, i64 260, !48, i64 264, !48, i64 268, !48, i64 272, !39, i64 276, !39, i64 278, !48, i64 280, !48, i64 284, !39, i64 288, !39, i64 290, !48, i64 292, !51, i64 296, !47, i64 312, !47, i64 328, !36, i64 344, !158, i64 352, !48, i64 356, !36, i64 360, !36, i64 368, !36, i64 376, !36, i64 384, !36, i64 392, !36, i64 400, !36, i64 408, !36, i64 416, !36, i64 424}
!158 = !{!"bNodeInstanceKey", !48, i64 0}
!159 = !{!157, !48, i64 268}
!160 = !{!161, !36, i64 120}
!161 = !{!"FreestyleLineStyle", !57, i64 0, !36, i64 120, !49, i64 128, !49, i64 132, !49, i64 136, !49, i64 140, !49, i64 144, !48, i64 148, !49, i64 152, !48, i64 156, !48, i64 160, !48, i64 164, !48, i64 168, !49, i64 172, !49, i64 176, !49, i64 180, !49, i64 184, !49, i64 188, !48, i64 192, !39, i64 196, !39, i64 198, !39, i64 200, !39, i64 202, !39, i64 204, !39, i64 206, !48, i64 208, !48, i64 212, !49, i64 216, !39, i64 220, !39, i64 222, !39, i64 224, !37, i64 226, !39, i64 232, !39, i64 234, !39, i64 236, !39, i64 238, !39, i64 240, !39, i64 242, !48, i64 244, !37, i64 248, !36, i64 392, !47, i64 400, !47, i64 416, !47, i64 432, !47, i64 448}
!162 = !{!161, !48, i64 156}
!163 = !{!164, !36, i64 120}
!164 = !{!"ParticleSettings", !57, i64 0, !36, i64 120, !36, i64 128, !36, i64 136, !36, i64 144, !48, i64 152, !48, i64 156, !39, i64 160, !39, i64 162, !39, i64 164, !39, i64 166, !39, i64 168, !39, i64 170, !39, i64 172, !39, i64 174, !48, i64 176, !48, i64 180, !39, i64 184, !39, i64 186, !39, i64 188, !39, i64 190, !39, i64 192, !39, i64 194, !39, i64 196, !39, i64 198, !39, i64 200, !39, i64 202, !39, i64 204, !39, i64 206, !39, i64 208, !39, i64 210, !39, i64 212, !39, i64 214, !39, i64 216, !39, i64 218, !39, i64 220, !39, i64 222, !39, i64 224, !39, i64 226, !39, i64 228, !39, i64 230, !49, i64 232, !49, i64 236, !37, i64 240, !37, i64 248, !49, i64 256, !49, i64 260, !49, i64 264, !39, i64 268, !39, i64 270, !49, i64 272, !49, i64 276, !49, i64 280, !49, i64 284, !49, i64 288, !49, i64 292, !49, i64 296, !49, i64 300, !49, i64 304, !49, i64 308, !49, i64 312, !49, i64 316, !37, i64 320, !48, i64 324, !48, i64 328, !48, i64 332, !48, i64 336, !39, i64 340, !37, i64 342, !49, i64 348, !49, i64 352, !49, i64 356, !49, i64 360, !49, i64 364, !49, i64 368, !49, i64 372, !37, i64 376, !49, i64 388, !49, i64 392, !49, i64 396, !49, i64 400, !49, i64 404, !49, i64 408, !49, i64 412, !37, i64 416, !49, i64 428, !49, i64 432, !49, i64 436, !49, i64 440, !48, i64 444, !48, i64 448, !49, i64 452, !49, i64 456, !49, i64 460, !49, i64 464, !49, i64 468, !49, i64 472, !49, i64 476, !49, i64 480, !49, i64 484, !49, i64 488, !49, i64 492, !49, i64 496, !49, i64 500, !49, i64 504, !49, i64 508, !49, i64 512, !49, i64 516, !49, i64 520, !49, i64 524, !49, i64 528, !49, i64 532, !49, i64 536, !49, i64 540, !49, i64 544, !49, i64 548, !37, i64 552, !49, i64 560, !49, i64 564, !48, i64 568, !48, i64 572, !37, i64 576, !36, i64 720, !47, i64 728, !36, i64 744, !36, i64 752, !36, i64 760, !36, i64 768, !36, i64 776, !36, i64 784, !39, i64 792, !37, i64 794}
!165 = !{!164, !48, i64 152}
!166 = !{!167, !36, i64 120}
!167 = !{!"Tex", !57, i64 0, !36, i64 120, !49, i64 128, !49, i64 132, !49, i64 136, !49, i64 140, !49, i64 144, !49, i64 148, !49, i64 152, !49, i64 156, !49, i64 160, !49, i64 164, !49, i64 168, !49, i64 172, !49, i64 176, !49, i64 180, !49, i64 184, !49, i64 188, !49, i64 192, !49, i64 196, !49, i64 200, !49, i64 204, !49, i64 208, !49, i64 212, !39, i64 216, !39, i64 218, !39, i64 220, !39, i64 222, !39, i64 224, !39, i64 226, !39, i64 228, !39, i64 230, !39, i64 232, !39, i64 234, !49, i64 236, !49, i64 240, !49, i64 244, !49, i64 248, !48, i64 252, !48, i64 256, !39, i64 260, !39, i64 262, !39, i64 264, !39, i64 266, !48, i64 268, !48, i64 272, !48, i64 276, !48, i64 280, !49, i64 284, !49, i64 288, !49, i64 292, !168, i64 296, !36, i64 336, !36, i64 344, !36, i64 352, !36, i64 360, !36, i64 368, !36, i64 376, !36, i64 384, !36, i64 392, !36, i64 400, !37, i64 408, !37, i64 409}
!168 = !{!"ImageUser", !36, i64 0, !48, i64 8, !48, i64 12, !48, i64 16, !48, i64 20, !37, i64 24, !37, i64 25, !37, i64 26, !37, i64 27, !39, i64 28, !39, i64 30, !39, i64 32, !39, i64 34, !48, i64 36}
!169 = !{!167, !39, i64 230}
!170 = !{!171, !48, i64 32}
!171 = !{!"bActionGroup", !36, i64 0, !36, i64 8, !47, i64 16, !48, i64 32, !48, i64 36, !37, i64 40, !172, i64 104}
!172 = !{!"ThemeWireColor", !37, i64 0, !37, i64 4, !37, i64 8, !39, i64 12, !39, i64 14}
!173 = !{!174, !39, i64 72}
!174 = !{!"FCurve", !36, i64 0, !36, i64 8, !36, i64 16, !36, i64 24, !47, i64 32, !36, i64 48, !36, i64 56, !48, i64 64, !49, i64 68, !39, i64 72, !39, i64 74, !48, i64 76, !36, i64 80, !48, i64 88, !37, i64 92, !49, i64 104, !49, i64 108}
!175 = !{!176, !39, i64 30}
!176 = !{!"KeyBlock", !36, i64 0, !36, i64 8, !49, i64 16, !49, i64 20, !39, i64 24, !39, i64 26, !39, i64 28, !39, i64 30, !48, i64 32, !48, i64 36, !36, i64 40, !37, i64 48, !37, i64 112, !49, i64 176, !49, i64 180}
!177 = !{!112, !48, i64 32}
!178 = !{!179, !48, i64 40}
!179 = !{!"bGPDlayer", !36, i64 0, !36, i64 8, !47, i64 16, !36, i64 32, !48, i64 40, !39, i64 44, !39, i64 46, !37, i64 48, !37, i64 64}
!180 = !{!181, !37, i64 142}
!181 = !{!"MaskLayer", !36, i64 0, !36, i64 8, !37, i64 16, !47, i64 80, !47, i64 96, !36, i64 112, !36, i64 120, !49, i64 128, !37, i64 132, !37, i64 133, !37, i64 134, !37, i64 135, !37, i64 142, !37, i64 143}
!182 = !{!183, !48, i64 32}
!183 = !{!"NlaTrack", !36, i64 0, !36, i64 8, !47, i64 16, !48, i64 32, !48, i64 36, !37, i64 40}
!184 = !{!"anim_filter.c:animdata_filter_dopesheet_summary"}
!185 = !{!53, !48, i64 100}
!186 = !{!"anim_filter.c:animfilter_action"}
!187 = !{!122, !36, i64 24}
!188 = !{!171, !36, i64 24}
!189 = distinct !{!189, !190}
!190 = !{!"llvm.loop.mustprogress"}
!191 = !{!"anim_filter.c:animdata_filter_shapekey"}
!192 = !{!65, !36, i64 176}
!193 = distinct !{!193, !190}
!194 = !{!"anim_filter.c:animdata_filter_gpencil"}
!195 = !{!196, !36, i64 0}
!196 = !{!"Global", !36, i64 0, !37, i64 8, !37, i64 1032, !37, i64 2056, !37, i64 2057, !37, i64 2058, !47, i64 2064, !37, i64 2080, !37, i64 2081, !37, i64 2082, !39, i64 2084, !39, i64 2086, !39, i64 2088, !37, i64 2090, !39, i64 2092, !48, i64 2096, !48, i64 2100, !37, i64 2104, !48, i64 2108, !48, i64 2112, !37, i64 2116}
!197 = !{!57, !48, i64 100}
!198 = !{!57, !39, i64 98}
!199 = !{!200, !48, i64 136}
!200 = !{!"bGPdata", !57, i64 0, !47, i64 120, !48, i64 136, !39, i64 140, !39, i64 142, !36, i64 144}
!201 = distinct !{!201, !190}
!202 = !{!"anim_filter.c:animdata_filter_mask"}
!203 = !{!204, !48, i64 160}
!204 = !{!"Mask", !57, i64 0, !36, i64 120, !47, i64 128, !48, i64 144, !48, i64 148, !48, i64 152, !48, i64 156, !48, i64 160, !48, i64 164}
!205 = distinct !{!205, !190}
!206 = !{!"anim_filter.c:animdata_filter_dopesheet"}
!207 = !{!196, !48, i64 2100}
!208 = !{!83, !48, i64 232}
!209 = !{!56, !48, i64 944}
!210 = !{!100, !48, i64 16}
!211 = !{!56, !37, i64 1160}
!212 = !{!100, !48, i64 24}
!213 = !{!53, !36, i64 24}
!214 = distinct !{!214, !190}
!215 = !{!"anim_filter.c:animdata_filter_animchan"}
!216 = !{!"anim_filter.c:animdata_filter_remove_invalid"}
!217 = !{!47, !36, i64 0}
!218 = !{!112, !36, i64 0}
!219 = distinct !{!219, !190}
!220 = !{!"anim_filter.c:animdata_filter_remove_duplis"}
!221 = distinct !{!221, !190}
!222 = !{!"anim_filter.c:actedit_get_shapekeys"}
!223 = !{!65, !39, i64 208}
!224 = !{!"anim_filter.c:animfilter_act_group"}
!225 = !{!171, !36, i64 16}
!226 = !{!"anim_filter.c:animfilter_fcurves"}
!227 = !{!174, !36, i64 0}
!228 = distinct !{!228, !190}
!229 = !{!"anim_filter.c:animfilter_fcurve_next"}
!230 = !{!174, !36, i64 16}
!231 = distinct !{!231, !190}
!232 = !{!"anim_filter.c:skip_fcurve_selected_data"}
!233 = !{!174, !36, i64 80}
!234 = !{!56, !36, i64 288}
!235 = !{!236, !36, i64 120}
!236 = !{!"bPoseChannel", !36, i64 0, !36, i64 8, !36, i64 16, !47, i64 24, !37, i64 40, !39, i64 104, !39, i64 106, !39, i64 108, !39, i64 110, !37, i64 112, !37, i64 113, !37, i64 114, !36, i64 120, !36, i64 128, !36, i64 136, !47, i64 144, !47, i64 160, !36, i64 176, !36, i64 184, !36, i64 192, !37, i64 200, !37, i64 212, !37, i64 224, !37, i64 236, !37, i64 252, !49, i64 264, !39, i64 268, !39, i64 270, !37, i64 272, !37, i64 336, !37, i64 400, !37, i64 464, !37, i64 476, !37, i64 488, !37, i64 500, !37, i64 512, !49, i64 524, !49, i64 528, !49, i64 532, !36, i64 536}
!237 = !{!56, !36, i64 296}
!238 = !{!140, !48, i64 216}
!239 = !{!240, !48, i64 320}
!240 = !{!"Bone", !36, i64 0, !36, i64 8, !36, i64 16, !36, i64 24, !47, i64 32, !37, i64 48, !49, i64 112, !37, i64 116, !37, i64 128, !37, i64 140, !48, i64 176, !37, i64 180, !37, i64 192, !37, i64 204, !49, i64 268, !49, i64 272, !49, i64 276, !49, i64 280, !49, i64 284, !49, i64 288, !49, i64 292, !49, i64 296, !49, i64 300, !49, i64 304, !37, i64 308, !48, i64 320, !39, i64 324, !37, i64 326}
!241 = !{!240, !48, i64 176}
!242 = !{!243, !36, i64 0}
!243 = !{!"Editing", !36, i64 0, !47, i64 8, !47, i64 24, !36, i64 40, !37, i64 48, !37, i64 1072, !48, i64 2096, !48, i64 2100, !48, i64 2104, !48, i64 2108, !51, i64 2112}
!244 = !{!245, !48, i64 96}
!245 = !{!"Sequence", !36, i64 0, !36, i64 8, !36, i64 16, !36, i64 24, !37, i64 32, !48, i64 96, !48, i64 100, !48, i64 104, !48, i64 108, !48, i64 112, !48, i64 116, !48, i64 120, !48, i64 124, !48, i64 128, !48, i64 132, !48, i64 136, !48, i64 140, !49, i64 144, !49, i64 148, !49, i64 152, !39, i64 156, !39, i64 158, !48, i64 160, !48, i64 164, !36, i64 168, !36, i64 176, !36, i64 184, !36, i64 192, !36, i64 200, !36, i64 208, !36, i64 216, !49, i64 224, !49, i64 228, !36, i64 232, !36, i64 240, !36, i64 248, !47, i64 256, !36, i64 272, !36, i64 280, !49, i64 288, !49, i64 292, !49, i64 296, !49, i64 300, !36, i64 304, !48, i64 312, !48, i64 316, !48, i64 320, !49, i64 324, !48, i64 328, !37, i64 332, !37, i64 333, !47, i64 336}
!246 = !{!247, !48, i64 168}
!247 = !{!"bNode", !36, i64 0, !36, i64 8, !36, i64 16, !36, i64 24, !36, i64 32, !37, i64 40, !37, i64 104, !48, i64 168, !39, i64 172, !39, i64 174, !39, i64 176, !39, i64 178, !39, i64 180, !39, i64 182, !39, i64 184, !39, i64 186, !37, i64 188, !47, i64 200, !47, i64 216, !36, i64 232, !36, i64 240, !36, i64 248, !36, i64 256, !47, i64 264, !49, i64 280, !49, i64 284, !49, i64 288, !49, i64 292, !49, i64 296, !49, i64 300, !49, i64 304, !48, i64 308, !37, i64 312, !39, i64 376, !39, i64 378, !49, i64 380, !49, i64 384, !39, i64 388, !39, i64 390, !36, i64 392, !51, i64 400, !51, i64 416, !51, i64 432, !39, i64 448, !39, i64 450, !48, i64 452, !36, i64 456}
!248 = !{!"anim_filter.c:skip_fcurve_with_name"}
!249 = !{!250, !36, i64 48}
!250 = !{!"bAnimChannelType", !36, i64 0, !48, i64 8, !36, i64 16, !36, i64 24, !36, i64 32, !36, i64 40, !36, i64 48, !36, i64 56, !36, i64 64, !36, i64 72, !36, i64 80, !36, i64 88}
!251 = !{!"anim_filter.c:fcurve_has_errors"}
!252 = !{!174, !36, i64 24}
!253 = !{!254, !48, i64 292}
!254 = !{!"ChannelDriver", !47, i64 0, !37, i64 16, !36, i64 272, !49, i64 280, !49, i64 284, !48, i64 288, !48, i64 292}
!255 = distinct !{!255, !190}
!256 = !{!257, !39, i64 528}
!257 = !{!"DriverVar", !36, i64 0, !36, i64 8, !37, i64 16, !37, i64 80, !39, i64 528, !39, i64 530, !49, i64 532}
!258 = !{!259, !39, i64 50}
!259 = !{!"DriverTarget", !36, i64 0, !36, i64 8, !37, i64 16, !39, i64 48, !39, i64 50, !48, i64 52}
!260 = distinct !{!260, !190}
!261 = !{!"anim_filter.c:animdata_filter_gpencil_data"}
!262 = distinct !{!262, !190}
!263 = !{!"anim_filter.c:animdata_filter_mask_data"}
!264 = distinct !{!264, !190}
!265 = !{!"anim_filter.c:animdata_filter_dopesheet_scene"}
!266 = !{!83, !36, i64 248}
!267 = !{!83, !36, i64 136}
!268 = !{!"anim_filter.c:animdata_filter_dopesheet_ob"}
!269 = !{!56, !39, i64 960}
!270 = !{!56, !36, i64 416}
!271 = !{!56, !48, i64 456}
!272 = !{!56, !36, i64 1224}
!273 = !{!"anim_filter.c:animdata_filter_ds_scene"}
!274 = !{!83, !36, i64 120}
!275 = !{!61, !36, i64 48}
!276 = !{!"anim_filter.c:animdata_filter_ds_world"}
!277 = !{!154, !36, i64 520}
!278 = !{!"anim_filter.c:animdata_filter_ds_nodetree"}
!279 = !{!247, !39, i64 172}
!280 = !{!247, !36, i64 240}
!281 = distinct !{!281, !190}
!282 = !{!"anim_filter.c:animdata_filter_ds_linestyle"}
!283 = distinct !{!283, !190}
!284 = !{!285, !36, i64 120}
!285 = !{!"FreestyleLineSet", !36, i64 0, !36, i64 8, !37, i64 16, !48, i64 80, !48, i64 84, !39, i64 88, !39, i64 90, !48, i64 92, !48, i64 96, !48, i64 100, !48, i64 104, !48, i64 108, !36, i64 112, !36, i64 120}
!286 = !{!161, !39, i64 98}
!287 = distinct !{!287, !190}
!288 = !{!289, !48, i64 108}
!289 = !{!"SceneRenderLayer", !36, i64 0, !36, i64 8, !37, i64 16, !36, i64 80, !36, i64 88, !48, i64 96, !48, i64 100, !48, i64 104, !48, i64 108, !48, i64 112, !48, i64 116, !48, i64 120, !49, i64 124, !290, i64 128}
!290 = !{!"FreestyleConfig", !47, i64 0, !48, i64 16, !48, i64 20, !48, i64 24, !49, i64 28, !49, i64 32, !49, i64 36, !47, i64 40}
!291 = distinct !{!291, !190}
!292 = distinct !{!292, !190}
!293 = !{!"anim_filter.c:animfilter_block_data"}
!294 = !{!295, !36, i64 120}
!295 = !{!"IdAdtTemplate", !57, i64 0, !36, i64 120}
!296 = !{!61, !36, i64 24}
!297 = !{!"anim_filter.c:animfilter_nla"}
!298 = distinct !{!298, !190}
!299 = !{!"anim_filter.c:animdata_filter_ds_textures"}
!300 = !{!301, !36, i64 16}
!301 = !{!"MTex", !39, i64 0, !39, i64 2, !39, i64 4, !39, i64 6, !36, i64 8, !36, i64 16, !37, i64 24, !37, i64 88, !37, i64 89, !37, i64 90, !37, i64 91, !37, i64 92, !37, i64 104, !49, i64 116, !39, i64 120, !39, i64 122, !39, i64 124, !39, i64 126, !39, i64 128, !39, i64 130, !37, i64 132, !37, i64 133, !49, i64 140, !49, i64 144, !49, i64 148, !49, i64 152, !49, i64 156, !49, i64 160, !49, i64 164, !49, i64 168, !49, i64 172, !49, i64 176, !49, i64 180, !49, i64 184, !49, i64 188, !49, i64 192, !49, i64 196, !49, i64 200, !49, i64 204, !49, i64 208, !49, i64 212, !49, i64 216, !49, i64 220, !49, i64 224, !49, i64 228, !49, i64 232, !49, i64 236, !49, i64 240, !49, i64 244, !49, i64 248, !49, i64 252, !49, i64 256, !49, i64 260, !49, i64 264, !49, i64 268, !49, i64 272, !49, i64 276, !49, i64 280, !49, i64 284, !49, i64 288, !49, i64 292, !49, i64 296, !49, i64 300, !49, i64 304, !49, i64 308}
!302 = distinct !{!302, !190}
!303 = !{!"anim_filter.c:animdata_filter_ds_texture"}
!304 = !{!167, !36, i64 336}
!305 = !{!"anim_filter.c:animdata_filter_ds_nodetree_group"}
!306 = !{!"anim_filter.c:animdata_filter_ds_obanim"}
!307 = !{!"anim_filter.c:animdata_filter_ds_keyanim"}
!308 = !{!"anim_filter.c:animdata_filter_ds_modifiers"}
!309 = !{!310, !36, i64 0}
!310 = !{!"tAnimFilterModifiersContext", !36, i64 0, !36, i64 8, !47, i64 16, !59, i64 32, !48, i64 40}
!311 = !{!310, !36, i64 8}
!312 = !{!310, !48, i64 40}
!313 = !{!310, !59, i64 32}
!314 = !{!"anim_filter.c:animdata_filter_ds_materials"}
!315 = distinct !{!315, !190}
!316 = distinct !{!316, !190}
!317 = !{!"anim_filter.c:animdata_filter_ds_obdata"}
!318 = !{!56, !39, i64 136}
!319 = !{!320, !37, i64 185}
!320 = !{!"MetaBall", !57, i64 0, !36, i64 120, !47, i64 128, !47, i64 144, !36, i64 160, !36, i64 168, !36, i64 176, !37, i64 184, !37, i64 185, !39, i64 186, !39, i64 188, !39, i64 190, !37, i64 192, !37, i64 204, !37, i64 216, !49, i64 228, !49, i64 232, !49, i64 236, !36, i64 240}
!321 = !{!130, !36, i64 512}
!322 = !{!"anim_filter.c:animdata_filter_ds_particles"}
!323 = !{!324, !36, i64 16}
!324 = !{!"ParticleSystem", !36, i64 0, !36, i64 8, !36, i64 16, !36, i64 24, !36, i64 32, !36, i64 40, !36, i64 48, !36, i64 56, !36, i64 64, !47, i64 72, !47, i64 88, !36, i64 104, !36, i64 112, !36, i64 120, !36, i64 128, !36, i64 136, !36, i64 144, !47, i64 152, !37, i64 168, !37, i64 232, !49, i64 296, !49, i64 300, !49, i64 304, !48, i64 308, !48, i64 312, !48, i64 316, !48, i64 320, !48, i64 324, !48, i64 328, !48, i64 332, !48, i64 336, !39, i64 340, !39, i64 342, !39, i64 344, !39, i64 346, !37, i64 348, !37, i64 540, !39, i64 564, !39, i64 566, !36, i64 568, !36, i64 576, !47, i64 584, !36, i64 600, !36, i64 608, !48, i64 616, !48, i64 620, !36, i64 624, !36, i64 632, !36, i64 640, !49, i64 648, !49, i64 652}
!325 = distinct !{!325, !190}
!326 = !{!"anim_filter.c:animfilter_modifier_idpoin_cb"}
!327 = !{!"anim_filter.c:animdata_filter_ds_material"}
!328 = !{!125, !36, i64 768}
