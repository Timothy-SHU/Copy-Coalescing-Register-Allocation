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
  %3 = load ptr, ptr %2, align 8, !tbaa !5
  %4 = icmp eq ptr %3, null
  br i1 %4, label %20, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.bAnimContext, ptr %0, i64 0, i32 3
  %7 = load i16, ptr %6, align 4, !tbaa !11
  switch i16 %7, label %20 [
    i16 12, label %8
    i16 2, label %10
    i16 13, label %12
  ]

8:                                                ; preds = %5
  %9 = tail call fastcc zeroext i8 @actedit_get_context(ptr noundef nonnull %0, ptr noundef nonnull %3) #8, !range !12
  br label %13

10:                                               ; preds = %5
  %11 = tail call fastcc zeroext i8 @graphedit_get_context(ptr noundef nonnull %0, ptr noundef nonnull %3) #8, !range !12
  br label %13

12:                                               ; preds = %5
  tail call fastcc void @nlaedit_get_context(ptr noundef nonnull %0, ptr noundef nonnull %3) #8
  br label %16

13:                                               ; preds = %8, %10
  %14 = phi i8 [ %11, %10 ], [ %9, %8 ]
  %15 = icmp eq i8 %14, 0
  br i1 %15, label %20, label %16

16:                                               ; preds = %12, %13
  %17 = load ptr, ptr %0, align 8, !tbaa !13
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
define internal fastcc noundef zeroext i8 @actedit_get_context(ptr nocapture noundef %0, ptr noundef %1) unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.SpaceAction, ptr %1, i64 0, i32 8
  %4 = getelementptr inbounds %struct.bAnimContext, ptr %0, i64 0, i32 8
  store ptr %3, ptr %4, align 8, !tbaa !14
  %5 = getelementptr inbounds %struct.SpaceAction, ptr %1, i64 0, i32 9
  %6 = load i8, ptr %5, align 8, !tbaa !15
  switch i8 %6, label %48 [
    i8 0, label %7
    i8 1, label %21
    i8 2, label %36
    i8 4, label %40
    i8 3, label %44
  ]

7:                                                ; preds = %2
  %8 = getelementptr inbounds %struct.bAnimContext, ptr %0, i64 0, i32 10
  %9 = load ptr, ptr %8, align 8, !tbaa !24
  %10 = icmp eq ptr %9, null
  br i1 %10, label %17, label %11

11:                                               ; preds = %7
  %12 = getelementptr inbounds %struct.Object, ptr %9, i64 0, i32 1
  %13 = load ptr, ptr %12, align 8, !tbaa !25
  %14 = icmp eq ptr %13, null
  br i1 %14, label %17, label %15

15:                                               ; preds = %11
  %16 = load ptr, ptr %13, align 8, !tbaa !30
  br label %17

17:                                               ; preds = %7, %11, %15
  %18 = phi ptr [ %16, %15 ], [ null, %11 ], [ null, %7 ]
  %19 = getelementptr inbounds %struct.SpaceAction, ptr %1, i64 0, i32 7
  store ptr %18, ptr %19, align 8, !tbaa !32
  %20 = getelementptr inbounds %struct.bAnimContext, ptr %0, i64 0, i32 1
  store i16 1, ptr %20, align 8, !tbaa !33
  store ptr %18, ptr %0, align 8, !tbaa !13
  br label %50

21:                                               ; preds = %2
  %22 = getelementptr inbounds %struct.bAnimContext, ptr %0, i64 0, i32 1
  store i16 2, ptr %22, align 8, !tbaa !33
  %23 = tail call fastcc ptr @actedit_get_shapekeys(ptr noundef nonnull %0) #8
  store ptr %23, ptr %0, align 8, !tbaa !13
  %24 = icmp eq ptr %23, null
  br i1 %24, label %31, label %25

25:                                               ; preds = %21
  %26 = getelementptr inbounds %struct.Key, ptr %23, i64 0, i32 1
  %27 = load ptr, ptr %26, align 8, !tbaa !34
  %28 = icmp eq ptr %27, null
  br i1 %28, label %31, label %29

29:                                               ; preds = %25
  %30 = load ptr, ptr %27, align 8, !tbaa !30
  br label %31

31:                                               ; preds = %21, %25, %29
  %32 = phi ptr [ %30, %29 ], [ null, %25 ], [ null, %21 ]
  %33 = getelementptr inbounds %struct.SpaceAction, ptr %1, i64 0, i32 7
  store ptr %32, ptr %33, align 8, !tbaa !32
  %34 = load i8, ptr %5, align 8, !tbaa !15
  %35 = zext i8 %34 to i16
  br label %50

36:                                               ; preds = %2
  %37 = getelementptr inbounds %struct.bAnimContext, ptr %0, i64 0, i32 9
  %38 = load ptr, ptr %37, align 8, !tbaa !36
  store ptr %38, ptr %3, align 8, !tbaa !37
  %39 = getelementptr inbounds %struct.bAnimContext, ptr %0, i64 0, i32 1
  store i16 3, ptr %39, align 8, !tbaa !33
  store ptr %3, ptr %0, align 8, !tbaa !13
  br label %50

40:                                               ; preds = %2
  %41 = getelementptr inbounds %struct.bAnimContext, ptr %0, i64 0, i32 9
  %42 = load ptr, ptr %41, align 8, !tbaa !36
  store ptr %42, ptr %3, align 8, !tbaa !37
  %43 = getelementptr inbounds %struct.bAnimContext, ptr %0, i64 0, i32 1
  store i16 9, ptr %43, align 8, !tbaa !33
  store ptr %3, ptr %0, align 8, !tbaa !13
  br label %50

44:                                               ; preds = %2
  %45 = getelementptr inbounds %struct.bAnimContext, ptr %0, i64 0, i32 9
  %46 = load ptr, ptr %45, align 8, !tbaa !36
  store ptr %46, ptr %3, align 8, !tbaa !37
  %47 = getelementptr inbounds %struct.bAnimContext, ptr %0, i64 0, i32 1
  store i16 4, ptr %47, align 8, !tbaa !33
  store ptr %3, ptr %0, align 8, !tbaa !13
  br label %50

48:                                               ; preds = %2
  %49 = getelementptr inbounds %struct.bAnimContext, ptr %0, i64 0, i32 1
  store i16 0, ptr %49, align 8, !tbaa !33
  store ptr null, ptr %0, align 8, !tbaa !13
  br label %50

50:                                               ; preds = %48, %44, %40, %36, %31, %17
  %51 = phi i16 [ -1, %48 ], [ 3, %44 ], [ 4, %40 ], [ 2, %36 ], [ %35, %31 ], [ 0, %17 ]
  %52 = phi i8 [ 0, %48 ], [ 1, %44 ], [ 1, %40 ], [ 1, %36 ], [ 1, %31 ], [ 1, %17 ]
  %53 = getelementptr inbounds %struct.bAnimContext, ptr %0, i64 0, i32 2
  store i16 %51, ptr %53, align 2, !tbaa !38
  ret i8 %52
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc noundef zeroext i8 @graphedit_get_context(ptr nocapture noundef %0, ptr nocapture noundef %1) unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.SpaceIpo, ptr %1, i64 0, i32 7
  %4 = load ptr, ptr %3, align 8, !tbaa !39
  %5 = icmp eq ptr %4, null
  br i1 %5, label %6, label %11

6:                                                ; preds = %2
  %7 = load ptr, ptr @MEM_callocN, align 8, !tbaa !41
  %8 = tail call ptr %7(i64 noundef 112, ptr noundef nonnull @.str.1) #9
  store ptr %8, ptr %3, align 8, !tbaa !39
  %9 = getelementptr inbounds %struct.bAnimContext, ptr %0, i64 0, i32 9
  %10 = load ptr, ptr %9, align 8, !tbaa !36
  store ptr %10, ptr %8, align 8, !tbaa !42
  br label %11

11:                                               ; preds = %6, %2
  %12 = phi ptr [ %8, %6 ], [ %4, %2 ]
  %13 = getelementptr inbounds %struct.bAnimContext, ptr %0, i64 0, i32 8
  store ptr %12, ptr %13, align 8, !tbaa !14
  %14 = getelementptr inbounds %struct.SpaceIpo, ptr %1, i64 0, i32 11
  %15 = load i32, ptr %14, align 4, !tbaa !43
  %16 = getelementptr inbounds %struct.bDopeSheet, ptr %12, i64 0, i32 4
  %17 = load i32, ptr %16, align 8, !tbaa !44
  %18 = and i32 %17, -9
  %19 = lshr i32 %15, 2
  %20 = and i32 %19, 8
  %21 = or disjoint i32 %18, %20
  store i32 %21, ptr %16, align 8, !tbaa !44
  %22 = getelementptr inbounds %struct.SpaceIpo, ptr %1, i64 0, i32 9
  %23 = load i16, ptr %22, align 8, !tbaa !45
  switch i16 %23, label %34 [
    i16 0, label %24
    i16 1, label %29
  ]

24:                                               ; preds = %11
  %25 = getelementptr inbounds %struct.bAnimContext, ptr %0, i64 0, i32 9
  %26 = load ptr, ptr %25, align 8, !tbaa !36
  store ptr %26, ptr %12, align 8, !tbaa !42
  %27 = getelementptr inbounds %struct.bDopeSheet, ptr %12, i64 0, i32 4
  %28 = and i32 %21, -3
  store i32 %28, ptr %27, align 8, !tbaa !44
  br label %34

29:                                               ; preds = %11
  %30 = getelementptr inbounds %struct.bAnimContext, ptr %0, i64 0, i32 9
  %31 = load ptr, ptr %30, align 8, !tbaa !36
  store ptr %31, ptr %12, align 8, !tbaa !42
  %32 = getelementptr inbounds %struct.bDopeSheet, ptr %12, i64 0, i32 4
  %33 = or i32 %21, 2
  store i32 %33, ptr %32, align 8, !tbaa !44
  br label %34

34:                                               ; preds = %11, %29, %24
  %35 = phi ptr [ %12, %29 ], [ %12, %24 ], [ null, %11 ]
  %36 = phi i8 [ 1, %29 ], [ 1, %24 ], [ 0, %11 ]
  %37 = phi <2 x i16> [ <i16 6, i16 1>, %29 ], [ <i16 5, i16 0>, %24 ], [ <i16 0, i16 -1>, %11 ]
  %38 = getelementptr inbounds %struct.bAnimContext, ptr %0, i64 0, i32 1
  store ptr %35, ptr %0, align 8, !tbaa !13
  store <2 x i16> %37, ptr %38, align 8, !tbaa !46
  ret i8 %36
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @nlaedit_get_context(ptr nocapture noundef %0, ptr nocapture noundef %1) unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.SpaceNla, ptr %1, i64 0, i32 9
  %4 = load ptr, ptr %3, align 8, !tbaa !47
  %5 = icmp eq ptr %4, null
  br i1 %5, label %6, label %9

6:                                                ; preds = %2
  %7 = load ptr, ptr @MEM_callocN, align 8, !tbaa !41
  %8 = tail call ptr %7(i64 noundef 112, ptr noundef nonnull @.str.2) #9
  store ptr %8, ptr %3, align 8, !tbaa !47
  br label %9

9:                                                ; preds = %6, %2
  %10 = phi ptr [ %8, %6 ], [ %4, %2 ]
  %11 = getelementptr inbounds %struct.bAnimContext, ptr %0, i64 0, i32 8
  store ptr %10, ptr %11, align 8, !tbaa !14
  %12 = getelementptr inbounds %struct.bAnimContext, ptr %0, i64 0, i32 9
  %13 = load ptr, ptr %12, align 8, !tbaa !36
  store ptr %13, ptr %10, align 8, !tbaa !42
  %14 = getelementptr inbounds %struct.bDopeSheet, ptr %10, i64 0, i32 4
  %15 = load i32, ptr %14, align 8, !tbaa !44
  %16 = or i32 %15, 4
  store i32 %16, ptr %14, align 8, !tbaa !44
  %17 = getelementptr inbounds %struct.bAnimContext, ptr %0, i64 0, i32 1
  store i16 7, ptr %17, align 8, !tbaa !33
  store ptr %10, ptr %0, align 8, !tbaa !13
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
  store ptr %6, ptr %9, align 8, !tbaa !36
  %10 = icmp eq ptr %6, null
  br i1 %10, label %23, label %11

11:                                               ; preds = %8
  %12 = tail call ptr @ED_context_get_markers(ptr noundef %0) #9
  %13 = getelementptr inbounds %struct.bAnimContext, ptr %1, i64 0, i32 11
  store ptr %12, ptr %13, align 8, !tbaa !49
  %14 = getelementptr inbounds %struct.Scene, ptr %6, i64 0, i32 6
  %15 = load ptr, ptr %14, align 8, !tbaa !50
  %16 = icmp eq ptr %15, null
  br i1 %16, label %20, label %17

17:                                               ; preds = %11
  %18 = getelementptr inbounds %struct.Base, ptr %15, i64 0, i32 7
  %19 = load ptr, ptr %18, align 8, !tbaa !67
  br label %20

20:                                               ; preds = %11, %17
  %21 = phi ptr [ %19, %17 ], [ null, %11 ]
  %22 = getelementptr inbounds %struct.bAnimContext, ptr %1, i64 0, i32 10
  store ptr %21, ptr %22, align 8, !tbaa !24
  br label %23

23:                                               ; preds = %20, %8
  %24 = getelementptr inbounds %struct.bAnimContext, ptr %1, i64 0, i32 5
  store ptr %3, ptr %24, align 8, !tbaa !69
  %25 = getelementptr inbounds %struct.bAnimContext, ptr %1, i64 0, i32 7
  store ptr %4, ptr %25, align 8, !tbaa !70
  %26 = getelementptr inbounds %struct.bAnimContext, ptr %1, i64 0, i32 6
  store ptr %5, ptr %26, align 8, !tbaa !5
  %27 = icmp eq ptr %3, null
  br i1 %27, label %32, label %28

28:                                               ; preds = %23
  %29 = getelementptr inbounds %struct.ScrArea, ptr %3, i64 0, i32 8
  %30 = load i8, ptr %29, align 8, !tbaa !71
  %31 = zext i8 %30 to i16
  br label %32

32:                                               ; preds = %23, %28
  %33 = phi i16 [ %31, %28 ], [ 0, %23 ]
  %34 = getelementptr inbounds %struct.bAnimContext, ptr %1, i64 0, i32 3
  store i16 %33, ptr %34, align 4, !tbaa !11
  %35 = icmp eq ptr %4, null
  br i1 %35, label %39, label %36

36:                                               ; preds = %32
  %37 = getelementptr inbounds %struct.ARegion, ptr %4, i64 0, i32 8
  %38 = load i16, ptr %37, align 2, !tbaa !73
  br label %39

39:                                               ; preds = %32, %36
  %40 = phi i16 [ %38, %36 ], [ 0, %32 ]
  %41 = getelementptr inbounds %struct.bAnimContext, ptr %1, i64 0, i32 4
  store i16 %40, ptr %41, align 2, !tbaa !75
  %42 = tail call zeroext i8 @ANIM_animdata_context_getdata(ptr noundef nonnull %1) #8, !range !12
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
  store i64 0, ptr %6, align 8, !tbaa !76
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
  %13 = load ptr, ptr %12, align 8, !tbaa !24
  %14 = getelementptr inbounds %struct.bAnimContext, ptr %0, i64 0, i32 6
  %15 = load ptr, ptr %14, align 8, !tbaa !5
  %16 = icmp eq ptr %15, null
  %17 = getelementptr inbounds %struct.SpaceAction, ptr %15, i64 0, i32 8
  %18 = select i1 %16, ptr null, ptr %17
  %19 = and i32 %2, 1024
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %32, label %21

21:                                               ; preds = %11
  %22 = getelementptr inbounds %struct.Object, ptr %13, i64 0, i32 1
  %23 = load ptr, ptr %22, align 8, !tbaa !25
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
  %33 = call fastcc signext i16 @animdata_filter_dopesheet_summary(ptr noundef nonnull %0, ptr noundef nonnull %1, i32 noundef %2, ptr noundef nonnull %6) #8, !range !77
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
  %42 = load ptr, ptr %41, align 8, !tbaa !34
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
  %52 = call fastcc signext i16 @animdata_filter_dopesheet_summary(ptr noundef %0, ptr noundef nonnull %1, i32 noundef %2, ptr noundef nonnull %6) #8, !range !77
  %53 = icmp eq i16 %52, 0
  br i1 %53, label %75, label %54

54:                                               ; preds = %51
  tail call fastcc void @animdata_filter_shapekey(ptr noundef %0, ptr noundef nonnull %1, ptr noundef nonnull %3, i32 noundef %2) #8
  br label %75

55:                                               ; preds = %10
  %56 = call fastcc signext i16 @animdata_filter_dopesheet_summary(ptr noundef %0, ptr noundef nonnull %1, i32 noundef %2, ptr noundef nonnull %6) #8, !range !77
  %57 = icmp eq i16 %56, 0
  br i1 %57, label %75, label %58

58:                                               ; preds = %55
  tail call fastcc void @animdata_filter_gpencil(ptr noundef nonnull %1, i32 noundef %2) #8
  br label %75

59:                                               ; preds = %10
  %60 = call fastcc signext i16 @animdata_filter_dopesheet_summary(ptr noundef %0, ptr noundef nonnull %1, i32 noundef %2, ptr noundef nonnull %6) #8, !range !77
  %61 = icmp eq i16 %60, 0
  br i1 %61, label %75, label %62

62:                                               ; preds = %59
  tail call fastcc void @animdata_filter_mask(ptr noundef nonnull %1, i32 noundef %2) #8
  br label %75

63:                                               ; preds = %10
  %64 = call fastcc signext i16 @animdata_filter_dopesheet_summary(ptr noundef %0, ptr noundef nonnull %1, i32 noundef %2, ptr noundef nonnull %6) #8, !range !77
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
  %72 = load ptr, ptr %71, align 8, !tbaa !14
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
define internal fastcc ptr @make_new_animlistelem(ptr noundef %0, i16 noundef signext %1, ptr noundef %2) unnamed_addr #0 {
  %4 = icmp eq ptr %0, null
  br i1 %4, label %333, label %5

5:                                                ; preds = %3
  %6 = load ptr, ptr @MEM_callocN, align 8, !tbaa !41
  %7 = tail call ptr %6(i64 noundef 64, ptr noundef nonnull @.str.3) #9
  %8 = getelementptr inbounds %struct.bAnimListElem, ptr %7, i64 0, i32 2
  store ptr %0, ptr %8, align 8, !tbaa !78
  %9 = zext nneg i16 %1 to i32
  %10 = getelementptr inbounds %struct.bAnimListElem, ptr %7, i64 0, i32 3
  store i32 %9, ptr %10, align 8, !tbaa !80
  %11 = getelementptr inbounds %struct.bAnimListElem, ptr %7, i64 0, i32 9
  store ptr %2, ptr %11, align 8, !tbaa !81
  %12 = tail call ptr @BKE_animdata_from_id(ptr noundef %2) #9
  %13 = getelementptr inbounds %struct.bAnimListElem, ptr %7, i64 0, i32 10
  store ptr %12, ptr %13, align 8, !tbaa !82
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
  store ptr null, ptr %15, align 8, !tbaa !83
  %16 = getelementptr inbounds %struct.bAnimListElem, ptr %7, i64 0, i32 7
  store i16 5, ptr %16, align 2, !tbaa !84
  br label %333

17:                                               ; preds = %5
  %18 = getelementptr inbounds %struct.Scene, ptr %0, i64 0, i32 15
  %19 = load i16, ptr %18, align 4, !tbaa !85
  %20 = sext i16 %19 to i32
  %21 = getelementptr inbounds %struct.bAnimListElem, ptr %7, i64 0, i32 4
  store i32 %20, ptr %21, align 4, !tbaa !86
  %22 = getelementptr inbounds %struct.bAnimListElem, ptr %7, i64 0, i32 8
  store ptr %0, ptr %22, align 8, !tbaa !83
  %23 = getelementptr inbounds %struct.bAnimListElem, ptr %7, i64 0, i32 7
  store i16 6, ptr %23, align 2, !tbaa !84
  %24 = tail call ptr @BKE_animdata_from_id(ptr noundef nonnull %0) #9
  store ptr %24, ptr %13, align 8, !tbaa !82
  br label %333

25:                                               ; preds = %5
  %26 = getelementptr inbounds %struct.Base, ptr %0, i64 0, i32 7
  %27 = load ptr, ptr %26, align 8, !tbaa !67
  %28 = getelementptr inbounds %struct.Object, ptr %27, i64 0, i32 53
  %29 = load i16, ptr %28, align 4, !tbaa !87
  %30 = sext i16 %29 to i32
  %31 = getelementptr inbounds %struct.bAnimListElem, ptr %7, i64 0, i32 4
  store i32 %30, ptr %31, align 4, !tbaa !86
  %32 = getelementptr inbounds %struct.bAnimListElem, ptr %7, i64 0, i32 8
  store ptr %27, ptr %32, align 8, !tbaa !83
  %33 = getelementptr inbounds %struct.bAnimListElem, ptr %7, i64 0, i32 7
  store i16 7, ptr %33, align 2, !tbaa !84
  %34 = tail call ptr @BKE_animdata_from_id(ptr noundef %27) #9
  store ptr %34, ptr %13, align 8, !tbaa !82
  br label %333

35:                                               ; preds = %5
  %36 = getelementptr inbounds %struct.bAction, ptr %0, i64 0, i32 5
  %37 = load i32, ptr %36, align 8, !tbaa !88
  %38 = getelementptr inbounds %struct.bAnimListElem, ptr %7, i64 0, i32 4
  store i32 %37, ptr %38, align 4, !tbaa !86
  %39 = getelementptr inbounds %struct.bAnimListElem, ptr %7, i64 0, i32 8
  store ptr %0, ptr %39, align 8, !tbaa !83
  %40 = getelementptr inbounds %struct.bAnimListElem, ptr %7, i64 0, i32 7
  store i16 8, ptr %40, align 2, !tbaa !84
  br label %333

41:                                               ; preds = %5
  %42 = getelementptr inbounds %struct.AnimData, ptr %0, i64 0, i32 7
  %43 = load i32, ptr %42, align 8, !tbaa !90
  %44 = getelementptr inbounds %struct.bAnimListElem, ptr %7, i64 0, i32 4
  store i32 %43, ptr %44, align 4, !tbaa !86
  %45 = getelementptr inbounds %struct.bAnimListElem, ptr %7, i64 0, i32 8
  store ptr null, ptr %45, align 8, !tbaa !83
  %46 = getelementptr inbounds %struct.bAnimListElem, ptr %7, i64 0, i32 7
  store i16 0, ptr %46, align 2, !tbaa !84
  br label %333

47:                                               ; preds = %5
  %48 = getelementptr inbounds %struct.Material, ptr %0, i64 0, i32 1
  %49 = load ptr, ptr %48, align 8, !tbaa !91
  %50 = getelementptr inbounds %struct.Material, ptr %0, i64 0, i32 3
  %51 = load i16, ptr %50, align 2, !tbaa !95
  %52 = and i16 %51, 2
  %53 = zext nneg i16 %52 to i32
  %54 = getelementptr inbounds %struct.bAnimListElem, ptr %7, i64 0, i32 4
  store i32 %53, ptr %54, align 4, !tbaa !86
  %55 = icmp eq ptr %49, null
  br i1 %55, label %58, label %56

56:                                               ; preds = %47
  %57 = load ptr, ptr %49, align 8, !tbaa !30
  br label %58

58:                                               ; preds = %47, %56
  %59 = phi ptr [ %57, %56 ], [ null, %47 ]
  %60 = getelementptr inbounds %struct.bAnimListElem, ptr %7, i64 0, i32 8
  store ptr %59, ptr %60, align 8, !tbaa !83
  %61 = getelementptr inbounds %struct.bAnimListElem, ptr %7, i64 0, i32 7
  store i16 8, ptr %61, align 2, !tbaa !84
  %62 = tail call ptr @BKE_animdata_from_id(ptr noundef nonnull %0) #9
  store ptr %62, ptr %13, align 8, !tbaa !82
  br label %333

63:                                               ; preds = %5
  %64 = getelementptr inbounds %struct.Lamp, ptr %0, i64 0, i32 1
  %65 = load ptr, ptr %64, align 8, !tbaa !96
  %66 = getelementptr inbounds %struct.Lamp, ptr %0, i64 0, i32 3
  %67 = load i16, ptr %66, align 2, !tbaa !98
  %68 = and i16 %67, 1
  %69 = zext nneg i16 %68 to i32
  %70 = getelementptr inbounds %struct.bAnimListElem, ptr %7, i64 0, i32 4
  store i32 %69, ptr %70, align 4, !tbaa !86
  %71 = icmp eq ptr %65, null
  br i1 %71, label %74, label %72

72:                                               ; preds = %63
  %73 = load ptr, ptr %65, align 8, !tbaa !30
  br label %74

74:                                               ; preds = %63, %72
  %75 = phi ptr [ %73, %72 ], [ null, %63 ]
  %76 = getelementptr inbounds %struct.bAnimListElem, ptr %7, i64 0, i32 8
  store ptr %75, ptr %76, align 8, !tbaa !83
  %77 = getelementptr inbounds %struct.bAnimListElem, ptr %7, i64 0, i32 7
  store i16 8, ptr %77, align 2, !tbaa !84
  %78 = tail call ptr @BKE_animdata_from_id(ptr noundef nonnull %0) #9
  store ptr %78, ptr %13, align 8, !tbaa !82
  br label %333

79:                                               ; preds = %5
  %80 = getelementptr inbounds %struct.Camera, ptr %0, i64 0, i32 1
  %81 = load ptr, ptr %80, align 8, !tbaa !99
  %82 = getelementptr inbounds %struct.Camera, ptr %0, i64 0, i32 4
  %83 = load i16, ptr %82, align 2, !tbaa !101
  %84 = and i16 %83, 64
  %85 = zext nneg i16 %84 to i32
  %86 = getelementptr inbounds %struct.bAnimListElem, ptr %7, i64 0, i32 4
  store i32 %85, ptr %86, align 4, !tbaa !86
  %87 = icmp eq ptr %81, null
  br i1 %87, label %90, label %88

88:                                               ; preds = %79
  %89 = load ptr, ptr %81, align 8, !tbaa !30
  br label %90

90:                                               ; preds = %79, %88
  %91 = phi ptr [ %89, %88 ], [ null, %79 ]
  %92 = getelementptr inbounds %struct.bAnimListElem, ptr %7, i64 0, i32 8
  store ptr %91, ptr %92, align 8, !tbaa !83
  %93 = getelementptr inbounds %struct.bAnimListElem, ptr %7, i64 0, i32 7
  store i16 8, ptr %93, align 2, !tbaa !84
  %94 = tail call ptr @BKE_animdata_from_id(ptr noundef nonnull %0) #9
  store ptr %94, ptr %13, align 8, !tbaa !82
  br label %333

95:                                               ; preds = %5
  %96 = getelementptr inbounds %struct.Curve, ptr %0, i64 0, i32 1
  %97 = load ptr, ptr %96, align 8, !tbaa !102
  %98 = getelementptr inbounds %struct.Curve, ptr %0, i64 0, i32 23
  %99 = load i32, ptr %98, align 4, !tbaa !105
  %100 = and i32 %99, 2048
  %101 = getelementptr inbounds %struct.bAnimListElem, ptr %7, i64 0, i32 4
  store i32 %100, ptr %101, align 4, !tbaa !86
  %102 = icmp eq ptr %97, null
  br i1 %102, label %105, label %103

103:                                              ; preds = %95
  %104 = load ptr, ptr %97, align 8, !tbaa !30
  br label %105

105:                                              ; preds = %95, %103
  %106 = phi ptr [ %104, %103 ], [ null, %95 ]
  %107 = getelementptr inbounds %struct.bAnimListElem, ptr %7, i64 0, i32 8
  store ptr %106, ptr %107, align 8, !tbaa !83
  %108 = getelementptr inbounds %struct.bAnimListElem, ptr %7, i64 0, i32 7
  store i16 8, ptr %108, align 2, !tbaa !84
  %109 = tail call ptr @BKE_animdata_from_id(ptr noundef nonnull %0) #9
  store ptr %109, ptr %13, align 8, !tbaa !82
  br label %333

110:                                              ; preds = %5
  %111 = getelementptr inbounds %struct.bArmature, ptr %0, i64 0, i32 1
  %112 = load ptr, ptr %111, align 8, !tbaa !106
  %113 = getelementptr inbounds %struct.bArmature, ptr %0, i64 0, i32 8
  %114 = load i32, ptr %113, align 8, !tbaa !108
  %115 = and i32 %114, 8192
  %116 = getelementptr inbounds %struct.bAnimListElem, ptr %7, i64 0, i32 4
  store i32 %115, ptr %116, align 4, !tbaa !86
  %117 = icmp eq ptr %112, null
  br i1 %117, label %120, label %118

118:                                              ; preds = %110
  %119 = load ptr, ptr %112, align 8, !tbaa !30
  br label %120

120:                                              ; preds = %110, %118
  %121 = phi ptr [ %119, %118 ], [ null, %110 ]
  %122 = getelementptr inbounds %struct.bAnimListElem, ptr %7, i64 0, i32 8
  store ptr %121, ptr %122, align 8, !tbaa !83
  %123 = getelementptr inbounds %struct.bAnimListElem, ptr %7, i64 0, i32 7
  store i16 8, ptr %123, align 2, !tbaa !84
  %124 = tail call ptr @BKE_animdata_from_id(ptr noundef nonnull %0) #9
  store ptr %124, ptr %13, align 8, !tbaa !82
  br label %333

125:                                              ; preds = %5
  %126 = getelementptr inbounds %struct.Mesh, ptr %0, i64 0, i32 1
  %127 = load ptr, ptr %126, align 8, !tbaa !109
  %128 = getelementptr inbounds %struct.Mesh, ptr %0, i64 0, i32 38
  %129 = load i16, ptr %128, align 2, !tbaa !112
  %130 = and i16 %129, 512
  %131 = zext nneg i16 %130 to i32
  %132 = getelementptr inbounds %struct.bAnimListElem, ptr %7, i64 0, i32 4
  store i32 %131, ptr %132, align 4, !tbaa !86
  %133 = icmp eq ptr %127, null
  br i1 %133, label %136, label %134

134:                                              ; preds = %125
  %135 = load ptr, ptr %127, align 8, !tbaa !30
  br label %136

136:                                              ; preds = %125, %134
  %137 = phi ptr [ %135, %134 ], [ null, %125 ]
  %138 = getelementptr inbounds %struct.bAnimListElem, ptr %7, i64 0, i32 8
  store ptr %137, ptr %138, align 8, !tbaa !83
  %139 = getelementptr inbounds %struct.bAnimListElem, ptr %7, i64 0, i32 7
  store i16 8, ptr %139, align 2, !tbaa !84
  %140 = tail call ptr @BKE_animdata_from_id(ptr noundef nonnull %0) #9
  store ptr %140, ptr %13, align 8, !tbaa !82
  br label %333

141:                                              ; preds = %5
  %142 = getelementptr inbounds %struct.Lattice, ptr %0, i64 0, i32 1
  %143 = load ptr, ptr %142, align 8, !tbaa !113
  %144 = getelementptr inbounds %struct.Lattice, ptr %0, i64 0, i32 5
  %145 = load i16, ptr %144, align 2, !tbaa !115
  %146 = and i16 %145, 4
  %147 = zext nneg i16 %146 to i32
  %148 = getelementptr inbounds %struct.bAnimListElem, ptr %7, i64 0, i32 4
  store i32 %147, ptr %148, align 4, !tbaa !86
  %149 = icmp eq ptr %143, null
  br i1 %149, label %152, label %150

150:                                              ; preds = %141
  %151 = load ptr, ptr %143, align 8, !tbaa !30
  br label %152

152:                                              ; preds = %141, %150
  %153 = phi ptr [ %151, %150 ], [ null, %141 ]
  %154 = getelementptr inbounds %struct.bAnimListElem, ptr %7, i64 0, i32 8
  store ptr %153, ptr %154, align 8, !tbaa !83
  %155 = getelementptr inbounds %struct.bAnimListElem, ptr %7, i64 0, i32 7
  store i16 8, ptr %155, align 2, !tbaa !84
  %156 = tail call ptr @BKE_animdata_from_id(ptr noundef nonnull %0) #9
  store ptr %156, ptr %13, align 8, !tbaa !82
  br label %333

157:                                              ; preds = %5
  %158 = getelementptr inbounds %struct.Speaker, ptr %0, i64 0, i32 1
  %159 = load ptr, ptr %158, align 8, !tbaa !116
  %160 = getelementptr inbounds %struct.Speaker, ptr %0, i64 0, i32 13
  %161 = load i16, ptr %160, align 8, !tbaa !118
  %162 = and i16 %161, 1
  %163 = zext nneg i16 %162 to i32
  %164 = getelementptr inbounds %struct.bAnimListElem, ptr %7, i64 0, i32 4
  store i32 %163, ptr %164, align 4, !tbaa !86
  %165 = icmp eq ptr %159, null
  br i1 %165, label %168, label %166

166:                                              ; preds = %157
  %167 = load ptr, ptr %159, align 8, !tbaa !30
  br label %168

168:                                              ; preds = %157, %166
  %169 = phi ptr [ %167, %166 ], [ null, %157 ]
  %170 = getelementptr inbounds %struct.bAnimListElem, ptr %7, i64 0, i32 8
  store ptr %169, ptr %170, align 8, !tbaa !83
  %171 = getelementptr inbounds %struct.bAnimListElem, ptr %7, i64 0, i32 7
  store i16 8, ptr %171, align 2, !tbaa !84
  %172 = tail call ptr @BKE_animdata_from_id(ptr noundef nonnull %0) #9
  store ptr %172, ptr %13, align 8, !tbaa !82
  br label %333

173:                                              ; preds = %5
  %174 = getelementptr inbounds %struct.Key, ptr %0, i64 0, i32 1
  %175 = load ptr, ptr %174, align 8, !tbaa !34
  %176 = getelementptr inbounds %struct.Key, ptr %0, i64 0, i32 12
  %177 = load i16, ptr %176, align 2, !tbaa !119
  %178 = and i16 %177, 1
  %179 = zext nneg i16 %178 to i32
  %180 = getelementptr inbounds %struct.bAnimListElem, ptr %7, i64 0, i32 4
  store i32 %179, ptr %180, align 4, !tbaa !86
  %181 = icmp eq ptr %175, null
  br i1 %181, label %184, label %182

182:                                              ; preds = %173
  %183 = load ptr, ptr %175, align 8, !tbaa !30
  br label %184

184:                                              ; preds = %173, %182
  %185 = phi ptr [ %183, %182 ], [ null, %173 ]
  %186 = getelementptr inbounds %struct.bAnimListElem, ptr %7, i64 0, i32 8
  store ptr %185, ptr %186, align 8, !tbaa !83
  %187 = getelementptr inbounds %struct.bAnimListElem, ptr %7, i64 0, i32 7
  store i16 8, ptr %187, align 2, !tbaa !84
  %188 = tail call ptr @BKE_animdata_from_id(ptr noundef nonnull %0) #9
  store ptr %188, ptr %13, align 8, !tbaa !82
  br label %333

189:                                              ; preds = %5
  %190 = getelementptr inbounds %struct.World, ptr %0, i64 0, i32 1
  %191 = load ptr, ptr %190, align 8, !tbaa !120
  %192 = getelementptr inbounds %struct.World, ptr %0, i64 0, i32 66
  %193 = load i16, ptr %192, align 2, !tbaa !122
  %194 = and i16 %193, 1
  %195 = zext nneg i16 %194 to i32
  %196 = getelementptr inbounds %struct.bAnimListElem, ptr %7, i64 0, i32 4
  store i32 %195, ptr %196, align 4, !tbaa !86
  %197 = icmp eq ptr %191, null
  br i1 %197, label %200, label %198

198:                                              ; preds = %189
  %199 = load ptr, ptr %191, align 8, !tbaa !30
  br label %200

200:                                              ; preds = %189, %198
  %201 = phi ptr [ %199, %198 ], [ null, %189 ]
  %202 = getelementptr inbounds %struct.bAnimListElem, ptr %7, i64 0, i32 8
  store ptr %201, ptr %202, align 8, !tbaa !83
  %203 = getelementptr inbounds %struct.bAnimListElem, ptr %7, i64 0, i32 7
  store i16 8, ptr %203, align 2, !tbaa !84
  %204 = tail call ptr @BKE_animdata_from_id(ptr noundef nonnull %0) #9
  store ptr %204, ptr %13, align 8, !tbaa !82
  br label %333

205:                                              ; preds = %5
  %206 = getelementptr inbounds %struct.bNodeTree, ptr %0, i64 0, i32 1
  %207 = load ptr, ptr %206, align 8, !tbaa !123
  %208 = getelementptr inbounds %struct.bNodeTree, ptr %0, i64 0, i32 12
  %209 = load i32, ptr %208, align 4, !tbaa !126
  %210 = and i32 %209, 1
  %211 = getelementptr inbounds %struct.bAnimListElem, ptr %7, i64 0, i32 4
  store i32 %210, ptr %211, align 4, !tbaa !86
  %212 = icmp eq ptr %207, null
  br i1 %212, label %215, label %213

213:                                              ; preds = %205
  %214 = load ptr, ptr %207, align 8, !tbaa !30
  br label %215

215:                                              ; preds = %205, %213
  %216 = phi ptr [ %214, %213 ], [ null, %205 ]
  %217 = getelementptr inbounds %struct.bAnimListElem, ptr %7, i64 0, i32 8
  store ptr %216, ptr %217, align 8, !tbaa !83
  %218 = getelementptr inbounds %struct.bAnimListElem, ptr %7, i64 0, i32 7
  store i16 8, ptr %218, align 2, !tbaa !84
  %219 = tail call ptr @BKE_animdata_from_id(ptr noundef nonnull %0) #9
  store ptr %219, ptr %13, align 8, !tbaa !82
  br label %333

220:                                              ; preds = %5
  %221 = getelementptr inbounds %struct.FreestyleLineStyle, ptr %0, i64 0, i32 1
  %222 = load ptr, ptr %221, align 8, !tbaa !127
  %223 = getelementptr inbounds %struct.FreestyleLineStyle, ptr %0, i64 0, i32 9
  %224 = load i32, ptr %223, align 4, !tbaa !129
  %225 = and i32 %224, 1
  %226 = getelementptr inbounds %struct.bAnimListElem, ptr %7, i64 0, i32 4
  store i32 %225, ptr %226, align 4, !tbaa !86
  %227 = icmp eq ptr %222, null
  br i1 %227, label %230, label %228

228:                                              ; preds = %220
  %229 = load ptr, ptr %222, align 8, !tbaa !30
  br label %230

230:                                              ; preds = %220, %228
  %231 = phi ptr [ %229, %228 ], [ null, %220 ]
  %232 = getelementptr inbounds %struct.bAnimListElem, ptr %7, i64 0, i32 8
  store ptr %231, ptr %232, align 8, !tbaa !83
  %233 = getelementptr inbounds %struct.bAnimListElem, ptr %7, i64 0, i32 7
  store i16 8, ptr %233, align 2, !tbaa !84
  %234 = tail call ptr @BKE_animdata_from_id(ptr noundef nonnull %0) #9
  store ptr %234, ptr %13, align 8, !tbaa !82
  br label %333

235:                                              ; preds = %5
  %236 = load ptr, ptr %8, align 8, !tbaa !78
  %237 = getelementptr inbounds %struct.ParticleSettings, ptr %236, i64 0, i32 1
  %238 = load ptr, ptr %237, align 8, !tbaa !130
  %239 = getelementptr inbounds %struct.ParticleSettings, ptr %236, i64 0, i32 5
  %240 = load i32, ptr %239, align 8, !tbaa !132
  %241 = and i32 %240, 8
  %242 = getelementptr inbounds %struct.bAnimListElem, ptr %7, i64 0, i32 4
  store i32 %241, ptr %242, align 4, !tbaa !86
  %243 = icmp eq ptr %238, null
  br i1 %243, label %246, label %244

244:                                              ; preds = %235
  %245 = load ptr, ptr %238, align 8, !tbaa !30
  br label %246

246:                                              ; preds = %235, %244
  %247 = phi ptr [ %245, %244 ], [ null, %235 ]
  %248 = getelementptr inbounds %struct.bAnimListElem, ptr %7, i64 0, i32 8
  store ptr %247, ptr %248, align 8, !tbaa !83
  %249 = getelementptr inbounds %struct.bAnimListElem, ptr %7, i64 0, i32 7
  store i16 8, ptr %249, align 2, !tbaa !84
  %250 = tail call ptr @BKE_animdata_from_id(ptr noundef nonnull %0) #9
  store ptr %250, ptr %13, align 8, !tbaa !82
  br label %333

251:                                              ; preds = %5
  %252 = getelementptr inbounds %struct.Tex, ptr %0, i64 0, i32 1
  %253 = load ptr, ptr %252, align 8, !tbaa !133
  %254 = getelementptr inbounds %struct.Tex, ptr %0, i64 0, i32 31
  %255 = load i16, ptr %254, align 2, !tbaa !136
  %256 = and i16 %255, 512
  %257 = zext nneg i16 %256 to i32
  %258 = getelementptr inbounds %struct.bAnimListElem, ptr %7, i64 0, i32 4
  store i32 %257, ptr %258, align 4, !tbaa !86
  %259 = icmp eq ptr %253, null
  br i1 %259, label %262, label %260

260:                                              ; preds = %251
  %261 = load ptr, ptr %253, align 8, !tbaa !30
  br label %262

262:                                              ; preds = %251, %260
  %263 = phi ptr [ %261, %260 ], [ null, %251 ]
  %264 = getelementptr inbounds %struct.bAnimListElem, ptr %7, i64 0, i32 8
  store ptr %263, ptr %264, align 8, !tbaa !83
  %265 = getelementptr inbounds %struct.bAnimListElem, ptr %7, i64 0, i32 7
  store i16 8, ptr %265, align 2, !tbaa !84
  %266 = tail call ptr @BKE_animdata_from_id(ptr noundef nonnull %0) #9
  store ptr %266, ptr %13, align 8, !tbaa !82
  br label %333

267:                                              ; preds = %5
  %268 = getelementptr inbounds %struct.bActionGroup, ptr %0, i64 0, i32 3
  %269 = load i32, ptr %268, align 8, !tbaa !137
  %270 = getelementptr inbounds %struct.bAnimListElem, ptr %7, i64 0, i32 4
  store i32 %269, ptr %270, align 4, !tbaa !86
  %271 = getelementptr inbounds %struct.bAnimListElem, ptr %7, i64 0, i32 8
  store ptr null, ptr %271, align 8, !tbaa !83
  %272 = getelementptr inbounds %struct.bAnimListElem, ptr %7, i64 0, i32 7
  store i16 9, ptr %272, align 2, !tbaa !84
  br label %333

273:                                              ; preds = %5
  %274 = getelementptr inbounds %struct.FCurve, ptr %0, i64 0, i32 9
  %275 = load i16, ptr %274, align 8, !tbaa !140
  %276 = sext i16 %275 to i32
  %277 = getelementptr inbounds %struct.bAnimListElem, ptr %7, i64 0, i32 4
  store i32 %276, ptr %277, align 4, !tbaa !86
  %278 = getelementptr inbounds %struct.bAnimListElem, ptr %7, i64 0, i32 8
  store ptr %0, ptr %278, align 8, !tbaa !83
  %279 = getelementptr inbounds %struct.bAnimListElem, ptr %7, i64 0, i32 7
  store i16 1, ptr %279, align 2, !tbaa !84
  br label %333

280:                                              ; preds = %5
  %281 = load ptr, ptr %11, align 8, !tbaa !81
  %282 = getelementptr inbounds %struct.KeyBlock, ptr %0, i64 0, i32 7
  %283 = load i16, ptr %282, align 2, !tbaa !142
  %284 = sext i16 %283 to i32
  %285 = getelementptr inbounds %struct.bAnimListElem, ptr %7, i64 0, i32 4
  store i32 %284, ptr %285, align 4, !tbaa !86
  %286 = icmp eq ptr %281, null
  br i1 %286, label %333, label %287

287:                                              ; preds = %280
  %288 = getelementptr inbounds %struct.Key, ptr %281, i64 0, i32 6
  %289 = tail call i32 @BLI_findindex(ptr noundef nonnull %288, ptr noundef nonnull %0) #9
  %290 = getelementptr inbounds %struct.bAnimListElem, ptr %7, i64 0, i32 5
  store i32 %289, ptr %290, align 8, !tbaa !144
  %291 = load ptr, ptr %13, align 8, !tbaa !82
  %292 = icmp eq ptr %291, null
  br i1 %292, label %304, label %293

293:                                              ; preds = %287
  %294 = load ptr, ptr %291, align 8, !tbaa !30
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
  store ptr %301, ptr %302, align 8, !tbaa !83
  %303 = load ptr, ptr @MEM_freeN, align 8, !tbaa !41
  tail call void %303(ptr noundef nonnull %297) #9
  br label %304

304:                                              ; preds = %296, %299, %293, %287
  %305 = getelementptr inbounds %struct.bAnimListElem, ptr %7, i64 0, i32 8
  %306 = load ptr, ptr %305, align 8, !tbaa !83
  %307 = icmp ne ptr %306, null
  %308 = zext i1 %307 to i16
  %309 = getelementptr inbounds %struct.bAnimListElem, ptr %7, i64 0, i32 7
  store i16 %308, ptr %309, align 2, !tbaa !84
  br label %333

310:                                              ; preds = %5
  %311 = getelementptr inbounds %struct.bGPDlayer, ptr %0, i64 0, i32 4
  %312 = load i32, ptr %311, align 8, !tbaa !145
  %313 = getelementptr inbounds %struct.bAnimListElem, ptr %7, i64 0, i32 4
  store i32 %312, ptr %313, align 4, !tbaa !86
  %314 = getelementptr inbounds %struct.bAnimListElem, ptr %7, i64 0, i32 8
  store ptr null, ptr %314, align 8, !tbaa !83
  %315 = getelementptr inbounds %struct.bAnimListElem, ptr %7, i64 0, i32 7
  store i16 2, ptr %315, align 2, !tbaa !84
  br label %333

316:                                              ; preds = %5
  %317 = getelementptr inbounds %struct.MaskLayer, ptr %0, i64 0, i32 12
  %318 = load i8, ptr %317, align 2, !tbaa !147
  %319 = zext i8 %318 to i32
  %320 = getelementptr inbounds %struct.bAnimListElem, ptr %7, i64 0, i32 4
  store i32 %319, ptr %320, align 4, !tbaa !86
  %321 = getelementptr inbounds %struct.bAnimListElem, ptr %7, i64 0, i32 8
  store ptr null, ptr %321, align 8, !tbaa !83
  %322 = getelementptr inbounds %struct.bAnimListElem, ptr %7, i64 0, i32 7
  store i16 3, ptr %322, align 2, !tbaa !84
  br label %333

323:                                              ; preds = %5
  %324 = getelementptr inbounds %struct.NlaTrack, ptr %0, i64 0, i32 3
  %325 = load i32, ptr %324, align 8, !tbaa !149
  %326 = getelementptr inbounds %struct.bAnimListElem, ptr %7, i64 0, i32 4
  store i32 %325, ptr %326, align 4, !tbaa !86
  %327 = getelementptr inbounds %struct.NlaTrack, ptr %0, i64 0, i32 2
  %328 = getelementptr inbounds %struct.bAnimListElem, ptr %7, i64 0, i32 8
  store ptr %327, ptr %328, align 8, !tbaa !83
  %329 = getelementptr inbounds %struct.bAnimListElem, ptr %7, i64 0, i32 7
  store i16 4, ptr %329, align 2, !tbaa !84
  br label %333

330:                                              ; preds = %5
  %331 = getelementptr inbounds %struct.bAnimListElem, ptr %7, i64 0, i32 8
  store ptr null, ptr %331, align 8, !tbaa !83
  %332 = getelementptr inbounds %struct.bAnimListElem, ptr %7, i64 0, i32 7
  store i16 0, ptr %332, align 2, !tbaa !84
  br label %333

333:                                              ; preds = %280, %304, %14, %17, %25, %35, %41, %58, %74, %90, %105, %120, %136, %152, %168, %184, %200, %215, %230, %246, %262, %267, %273, %310, %316, %323, %330, %5, %3
  %334 = phi ptr [ %7, %5 ], [ %7, %330 ], [ %7, %323 ], [ %7, %316 ], [ %7, %310 ], [ %7, %273 ], [ %7, %267 ], [ %7, %262 ], [ %7, %246 ], [ %7, %230 ], [ %7, %215 ], [ %7, %200 ], [ %7, %184 ], [ %7, %168 ], [ %7, %152 ], [ %7, %136 ], [ %7, %120 ], [ %7, %105 ], [ %7, %90 ], [ %7, %74 ], [ %7, %58 ], [ %7, %41 ], [ %7, %35 ], [ %7, %25 ], [ %7, %17 ], [ %7, %14 ], [ null, %3 ], [ %7, %304 ], [ %7, %280 ]
  ret ptr %334
}

; Function Attrs: optsize
declare void @BLI_addtail(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc noundef signext i16 @animdata_filter_dopesheet_summary(ptr noundef %0, ptr noundef %1, i32 noundef %2, ptr nocapture noundef %3) unnamed_addr #0 {
  %5 = icmp eq ptr %0, null
  br i1 %5, label %34, label %6

6:                                                ; preds = %4
  %7 = getelementptr inbounds %struct.bAnimContext, ptr %0, i64 0, i32 6
  %8 = load ptr, ptr %7, align 8, !tbaa !5
  %9 = icmp eq ptr %8, null
  br i1 %9, label %34, label %10

10:                                               ; preds = %6
  %11 = getelementptr inbounds %struct.bAnimContext, ptr %0, i64 0, i32 3
  %12 = load i16, ptr %11, align 4, !tbaa !11
  %13 = icmp eq i16 %12, 12
  br i1 %13, label %14, label %34

14:                                               ; preds = %10
  %15 = and i32 %2, 8
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %33, label %17

17:                                               ; preds = %14
  %18 = getelementptr inbounds %struct.SpaceAction, ptr %8, i64 0, i32 8, i32 4
  %19 = load i32, ptr %18, align 8, !tbaa !44
  %20 = and i32 %19, 16
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %33, label %22

22:                                               ; preds = %17
  %23 = tail call fastcc ptr @make_new_animlistelem(ptr noundef nonnull %0, i16 noundef signext 3, ptr noundef null) #8
  %24 = icmp eq ptr %23, null
  br i1 %24, label %28, label %25

25:                                               ; preds = %22
  tail call void @BLI_addtail(ptr noundef %1, ptr noundef nonnull %23) #9
  %26 = load i64, ptr %3, align 8, !tbaa !76
  %27 = add i64 %26, 1
  store i64 %27, ptr %3, align 8, !tbaa !76
  br label %28

28:                                               ; preds = %25, %22
  %29 = getelementptr inbounds %struct.SpaceAction, ptr %8, i64 0, i32 8, i32 5
  %30 = load i32, ptr %29, align 4, !tbaa !151
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
define internal fastcc i64 @animfilter_action(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr nocapture noundef readonly %3, i32 noundef %4, ptr noundef %5) unnamed_addr #0 {
  %7 = and i32 %4, 256
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %13, label %9

9:                                                ; preds = %6
  %10 = getelementptr inbounds %struct.ID, ptr %3, i64 0, i32 3
  %11 = load ptr, ptr %10, align 8, !tbaa !152
  %12 = icmp eq ptr %11, null
  br i1 %12, label %13, label %41

13:                                               ; preds = %9, %6
  %14 = getelementptr inbounds %struct.bAction, ptr %3, i64 0, i32 3
  %15 = load ptr, ptr %14, align 8, !tbaa !41
  %16 = icmp eq ptr %15, null
  br i1 %16, label %29, label %17

17:                                               ; preds = %13, %17
  %18 = phi ptr [ %27, %17 ], [ %15, %13 ]
  %19 = phi i64 [ %26, %17 ], [ 0, %13 ]
  %20 = phi ptr [ %24, %17 ], [ null, %13 ]
  %21 = getelementptr inbounds %struct.bActionGroup, ptr %18, i64 0, i32 2, i32 1
  %22 = load ptr, ptr %21, align 8, !tbaa !153
  %23 = icmp eq ptr %22, null
  %24 = select i1 %23, ptr %20, ptr %22
  %25 = tail call fastcc i64 @animfilter_act_group(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef nonnull %18, i32 noundef %4, ptr noundef %5) #8
  %26 = add i64 %25, %19
  %27 = load ptr, ptr %18, align 8, !tbaa !41
  %28 = icmp eq ptr %27, null
  br i1 %28, label %29, label %17, !llvm.loop !154

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
  %38 = load ptr, ptr %37, align 8, !tbaa !41
  %39 = tail call fastcc i64 @animfilter_fcurves(ptr noundef %1, ptr noundef %2, ptr noundef %38, ptr noundef null, i32 noundef %4, ptr noundef %5) #8
  %40 = add i64 %39, %31
  br label %41

41:                                               ; preds = %29, %34, %9
  %42 = phi i64 [ 0, %9 ], [ %31, %29 ], [ %40, %34 ]
  ret i64 %42
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @animdata_filter_shapekey(ptr noundef %0, ptr noundef %1, ptr noundef %2, i32 noundef %3) unnamed_addr #0 {
  %5 = and i32 %3, 8
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %56, label %7

7:                                                ; preds = %4
  %8 = getelementptr inbounds %struct.Key, ptr %2, i64 0, i32 6
  %9 = load ptr, ptr %8, align 8, !tbaa !41
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
  %25 = load ptr, ptr %8, align 8, !tbaa !156
  %26 = icmp eq ptr %23, %25
  br i1 %26, label %52, label %27

27:                                               ; preds = %22
  br i1 %13, label %33, label %28

28:                                               ; preds = %27
  %29 = getelementptr inbounds %struct.KeyBlock, ptr %23, i64 0, i32 7
  %30 = load i16, ptr %29, align 2, !tbaa !142
  %31 = and i16 %30, 4
  %32 = icmp eq i16 %31, 0
  br i1 %32, label %33, label %52

33:                                               ; preds = %28, %27
  br i1 %15, label %46, label %34

34:                                               ; preds = %33
  br i1 %17, label %40, label %35

35:                                               ; preds = %34
  %36 = getelementptr inbounds %struct.KeyBlock, ptr %23, i64 0, i32 7
  %37 = load i16, ptr %36, align 2, !tbaa !142
  %38 = and i16 %37, 2
  %39 = icmp eq i16 %38, 0
  br i1 %39, label %40, label %46

40:                                               ; preds = %35, %34
  br i1 %19, label %52, label %41

41:                                               ; preds = %40
  %42 = getelementptr inbounds %struct.KeyBlock, ptr %23, i64 0, i32 7
  %43 = load i16, ptr %42, align 2, !tbaa !142
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
  %54 = load ptr, ptr %23, align 8, !tbaa !41
  %55 = icmp eq ptr %54, null
  br i1 %55, label %96, label %22, !llvm.loop !157

56:                                               ; preds = %4
  %57 = getelementptr inbounds %struct.Key, ptr %2, i64 0, i32 1
  %58 = load ptr, ptr %57, align 8, !tbaa !34
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
  %71 = load i32, ptr %70, align 8, !tbaa !90
  %72 = and i32 %71, 16384
  %73 = icmp eq i32 %72, 0
  br i1 %73, label %74, label %84

74:                                               ; preds = %69, %66
  %75 = and i32 %3, 128
  %76 = icmp eq i32 %75, 0
  br i1 %76, label %96, label %77

77:                                               ; preds = %74
  %78 = getelementptr inbounds %struct.AnimData, ptr %58, i64 0, i32 7
  %79 = load i32, ptr %78, align 8, !tbaa !90
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
  %92 = load ptr, ptr %58, align 8, !tbaa !30
  %93 = icmp eq ptr %92, null
  br i1 %93, label %96, label %94

94:                                               ; preds = %91
  %95 = tail call fastcc i64 @animfilter_action(ptr noundef %0, ptr noundef %1, ptr noundef null, ptr noundef nonnull %92, i32 noundef %3, ptr noundef nonnull %2) #8
  br label %96

96:                                               ; preds = %52, %46, %7, %77, %74, %94, %91, %56, %90, %87, %84
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @animdata_filter_gpencil(ptr noundef %0, i32 noundef %1) unnamed_addr #0 {
  %3 = alloca %struct.ListBase, align 8
  %4 = load ptr, ptr @G, align 8, !tbaa !158
  %5 = getelementptr inbounds %struct.Main, ptr %4, i64 0, i32 41
  %6 = load ptr, ptr %5, align 8, !tbaa !41
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
  %20 = load i32, ptr %19, align 4, !tbaa !160
  %21 = getelementptr inbounds %struct.ID, ptr %17, i64 0, i32 5
  %22 = load i16, ptr %21, align 2, !tbaa !161
  %23 = lshr i16 %22, 9
  %24 = and i16 %23, 1
  %25 = zext nneg i16 %24 to i32
  %26 = icmp sgt i32 %20, %25
  br i1 %26, label %27, label %50

27:                                               ; preds = %16
  br i1 %10, label %35, label %28

28:                                               ; preds = %27
  %29 = getelementptr inbounds %struct.bGPdata, ptr %17, i64 0, i32 2
  %30 = load i32, ptr %29, align 8, !tbaa !162
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
  %52 = load ptr, ptr %17, align 8, !tbaa !41
  %53 = icmp eq ptr %52, null
  br i1 %53, label %54, label %16, !llvm.loop !164

54:                                               ; preds = %50, %2, %49
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @animdata_filter_mask(ptr noundef %0, i32 noundef %1) unnamed_addr #0 {
  %3 = alloca %struct.ListBase, align 8
  %4 = load ptr, ptr @G, align 8, !tbaa !158
  %5 = getelementptr inbounds %struct.Main, ptr %4, i64 0, i32 43
  %6 = load ptr, ptr %5, align 8, !tbaa !41
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
  %20 = load i32, ptr %19, align 4, !tbaa !160
  %21 = getelementptr inbounds %struct.ID, ptr %17, i64 0, i32 5
  %22 = load i16, ptr %21, align 2, !tbaa !161
  %23 = lshr i16 %22, 9
  %24 = and i16 %23, 1
  %25 = zext nneg i16 %24 to i32
  %26 = icmp sgt i32 %20, %25
  br i1 %26, label %27, label %50

27:                                               ; preds = %16
  br i1 %10, label %35, label %28

28:                                               ; preds = %27
  %29 = getelementptr inbounds %struct.Mask, ptr %17, i64 0, i32 7
  %30 = load i32, ptr %29, align 8, !tbaa !165
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
  %52 = load ptr, ptr %17, align 8, !tbaa !41
  %53 = icmp eq ptr %52, null
  br i1 %53, label %54, label %16, !llvm.loop !167

54:                                               ; preds = %50, %2, %49
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc i64 @animdata_filter_dopesheet(ptr noundef %0, ptr noundef %1, ptr noundef %2, i32 noundef %3) unnamed_addr #0 {
  %5 = load ptr, ptr %2, align 8, !tbaa !42
  %6 = icmp eq ptr %5, null
  br i1 %6, label %11, label %7

7:                                                ; preds = %4
  %8 = getelementptr inbounds %struct.ID, ptr %5, i64 0, i32 4
  %9 = load i16, ptr %8, align 8, !tbaa !46
  %10 = icmp eq i16 %9, 17235
  br i1 %10, label %22, label %11

11:                                               ; preds = %7, %4
  %12 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str)
  %13 = load i32, ptr getelementptr inbounds (%struct.Global, ptr @G, i64 0, i32 16), align 4, !tbaa !168
  %14 = and i32 %13, 1
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %97, label %16

16:                                               ; preds = %11
  %17 = load ptr, ptr %2, align 8, !tbaa !42
  %18 = icmp eq ptr %17, null
  %19 = getelementptr inbounds %struct.ID, ptr %17, i64 0, i32 4
  %20 = select i1 %18, ptr null, ptr %19
  %21 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.11, ptr noundef %17, ptr noundef %20) #8
  br label %97

22:                                               ; preds = %7
  %23 = getelementptr inbounds %struct.bDopeSheet, ptr %2, i64 0, i32 4
  %24 = load i32, ptr %23, align 8, !tbaa !44
  %25 = shl i32 %24, 6
  %26 = and i32 %25, 512
  %27 = or i32 %26, %3
  %28 = tail call fastcc i64 @animdata_filter_dopesheet_scene(ptr noundef %0, ptr noundef %1, ptr noundef nonnull %2, ptr noundef nonnull %5, i32 noundef %27) #8
  %29 = getelementptr inbounds %struct.Scene, ptr %5, i64 0, i32 5
  %30 = load ptr, ptr %29, align 8, !tbaa !41
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
  %43 = load ptr, ptr %42, align 8, !tbaa !67
  %44 = icmp eq ptr %43, null
  br i1 %44, label %93, label %45

45:                                               ; preds = %39
  br i1 %34, label %64, label %46

46:                                               ; preds = %45
  %47 = load i32, ptr %23, align 8, !tbaa !44
  %48 = and i32 %47, 67108864
  %49 = icmp eq i32 %48, 0
  br i1 %49, label %50, label %64

50:                                               ; preds = %46
  %51 = load i32, ptr %35, align 8, !tbaa !169
  %52 = getelementptr inbounds %struct.Object, ptr %43, i64 0, i32 52
  %53 = load i32, ptr %52, align 8, !tbaa !170
  %54 = getelementptr inbounds %struct.Base, ptr %40, i64 0, i32 2
  %55 = load i32, ptr %54, align 8, !tbaa !171
  %56 = or i32 %55, %53
  %57 = and i32 %56, %51
  %58 = icmp eq i32 %57, 0
  br i1 %58, label %93, label %59

59:                                               ; preds = %50
  %60 = getelementptr inbounds %struct.Object, ptr %43, i64 0, i32 102
  %61 = load i8, ptr %60, align 8, !tbaa !172
  %62 = and i8 %61, 1
  %63 = icmp eq i8 %62, 0
  br i1 %63, label %64, label %93

64:                                               ; preds = %59, %46, %45
  br i1 %37, label %74, label %65

65:                                               ; preds = %64
  %66 = getelementptr inbounds %struct.Object, ptr %43, i64 0, i32 1
  %67 = load ptr, ptr %66, align 8, !tbaa !25
  %68 = icmp eq ptr %67, null
  br i1 %68, label %74, label %69

69:                                               ; preds = %65
  %70 = getelementptr inbounds %struct.AnimData, ptr %67, i64 0, i32 7
  %71 = load i32, ptr %70, align 8, !tbaa !90
  %72 = and i32 %71, 65536
  %73 = icmp eq i32 %72, 0
  br i1 %73, label %74, label %93

74:                                               ; preds = %65, %69, %64
  %75 = load i32, ptr %23, align 8, !tbaa !44
  %76 = and i32 %75, 1
  %77 = icmp eq i32 %76, 0
  br i1 %77, label %83, label %78

78:                                               ; preds = %74
  %79 = getelementptr inbounds %struct.Base, ptr %40, i64 0, i32 4
  %80 = load i32, ptr %79, align 8, !tbaa !173
  %81 = and i32 %80, 1
  %82 = icmp eq i32 %81, 0
  br i1 %82, label %93, label %83

83:                                               ; preds = %78, %74
  %84 = and i32 %75, 32
  %85 = icmp eq i32 %84, 0
  br i1 %85, label %90, label %86

86:                                               ; preds = %83
  %87 = load ptr, ptr %38, align 8, !tbaa !174
  %88 = tail call zeroext i8 @BKE_group_object_exists(ptr noundef %87, ptr noundef nonnull %43) #9
  %89 = icmp eq i8 %88, 0
  br i1 %89, label %93, label %90

90:                                               ; preds = %86, %83
  %91 = tail call fastcc i64 @animdata_filter_dopesheet_ob(ptr noundef %0, ptr noundef %1, ptr noundef nonnull %2, ptr noundef nonnull %40, i32 noundef %27) #8
  %92 = add i64 %91, %41
  br label %93

93:                                               ; preds = %90, %50, %59, %69, %78, %86, %39
  %94 = phi i64 [ %41, %39 ], [ %92, %90 ], [ %41, %50 ], [ %41, %59 ], [ %41, %69 ], [ %41, %78 ], [ %41, %86 ]
  %95 = load ptr, ptr %40, align 8, !tbaa !41
  %96 = icmp eq ptr %95, null
  br i1 %96, label %97, label %39, !llvm.loop !175

97:                                               ; preds = %93, %22, %11, %16
  %98 = phi i64 [ 0, %16 ], [ 0, %11 ], [ %28, %22 ], [ %94, %93 ]
  ret i64 %98
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @animdata_filter_animchan(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr nocapture noundef readonly %3, i32 noundef %4) unnamed_addr #0 {
  %6 = getelementptr inbounds %struct.bAnimListElem, ptr %3, i64 0, i32 3
  %7 = load i32, ptr %6, align 8, !tbaa !80
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
  %12 = load ptr, ptr %11, align 8, !tbaa !78
  %13 = tail call fastcc i64 @animdata_filter_dopesheet_scene(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %12, i32 noundef %4) #8
  br label %24

14:                                               ; preds = %5
  %15 = getelementptr inbounds %struct.bAnimListElem, ptr %3, i64 0, i32 2
  %16 = load ptr, ptr %15, align 8, !tbaa !78
  %17 = tail call fastcc i64 @animdata_filter_dopesheet_ob(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %16, i32 noundef %4) #8
  br label %24

18:                                               ; preds = %5
  %19 = getelementptr inbounds %struct.bAnimListElem, ptr %3, i64 0, i32 9
  %20 = load ptr, ptr %19, align 8, !tbaa !81
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
define internal fastcc i64 @animdata_filter_remove_invalid(ptr noundef %0) unnamed_addr #0 {
  %2 = load ptr, ptr %0, align 8, !tbaa !176
  %3 = icmp eq ptr %2, null
  br i1 %3, label %17, label %4

4:                                                ; preds = %1, %14
  %5 = phi i64 [ %15, %14 ], [ 0, %1 ]
  %6 = phi ptr [ %7, %14 ], [ %2, %1 ]
  %7 = load ptr, ptr %6, align 8, !tbaa !177
  %8 = getelementptr inbounds %struct.bAnimListElem, ptr %6, i64 0, i32 3
  %9 = load i32, ptr %8, align 8, !tbaa !80
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
  br i1 %16, label %17, label %4, !llvm.loop !178

17:                                               ; preds = %14, %1
  %18 = phi i64 [ 0, %1 ], [ %15, %14 ]
  ret i64 %18
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc i64 @animdata_filter_remove_duplis(ptr noundef %0) unnamed_addr #0 {
  %2 = tail call ptr @BLI_gset_ptr_new(ptr noundef nonnull @__func__.animdata_filter_remove_duplis) #9
  %3 = load ptr, ptr %0, align 8, !tbaa !176
  %4 = icmp eq ptr %3, null
  br i1 %4, label %19, label %5

5:                                                ; preds = %1, %16
  %6 = phi i64 [ %17, %16 ], [ 0, %1 ]
  %7 = phi ptr [ %8, %16 ], [ %3, %1 ]
  %8 = load ptr, ptr %7, align 8, !tbaa !177
  %9 = getelementptr inbounds %struct.bAnimListElem, ptr %7, i64 0, i32 2
  %10 = load ptr, ptr %9, align 8, !tbaa !78
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
  br i1 %18, label %19, label %5, !llvm.loop !179

19:                                               ; preds = %16, %1
  %20 = phi i64 [ 0, %1 ], [ %17, %16 ]
  tail call void @BLI_gset_free(ptr noundef %2, ptr noundef null) #9
  ret i64 %20
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @actedit_get_shapekeys(ptr nocapture noundef readonly %0) unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.bAnimContext, ptr %0, i64 0, i32 9
  %3 = load ptr, ptr %2, align 8, !tbaa !36
  %4 = getelementptr inbounds %struct.Scene, ptr %3, i64 0, i32 6
  %5 = load ptr, ptr %4, align 8, !tbaa !50
  %6 = icmp eq ptr %5, null
  br i1 %6, label %19, label %7

7:                                                ; preds = %1
  %8 = getelementptr inbounds %struct.Base, ptr %5, i64 0, i32 7
  %9 = load ptr, ptr %8, align 8, !tbaa !67
  %10 = icmp eq ptr %9, null
  br i1 %10, label %19, label %11

11:                                               ; preds = %7
  %12 = tail call ptr @BKE_key_from_object(ptr noundef nonnull %9) #9
  %13 = icmp eq ptr %12, null
  br i1 %13, label %18, label %14

14:                                               ; preds = %11
  %15 = getelementptr inbounds %struct.Key, ptr %12, i64 0, i32 9
  %16 = load i16, ptr %15, align 8, !tbaa !180
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
define internal fastcc i64 @animfilter_act_group(ptr noundef readonly %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, i32 noundef %4, ptr noundef %5) unnamed_addr #0 {
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
  %14 = load i16, ptr %13, align 4, !tbaa !11
  %15 = icmp eq i16 %14, 2
  %16 = getelementptr inbounds %struct.bActionGroup, ptr %3, i64 0, i32 3
  %17 = load i32, ptr %16, align 8, !tbaa !137
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
  %30 = load i32, ptr %29, align 8, !tbaa !137
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
  %41 = load i32, ptr %40, align 8, !tbaa !137
  %42 = and i32 %41, 3
  %43 = icmp eq i32 %42, 0
  br i1 %43, label %44, label %52

44:                                               ; preds = %39, %36
  %45 = and i32 %4, 128
  %46 = icmp eq i32 %45, 0
  br i1 %46, label %144, label %47

47:                                               ; preds = %44
  %48 = getelementptr inbounds %struct.bActionGroup, ptr %3, i64 0, i32 3
  %49 = load i32, ptr %48, align 8, !tbaa !137
  %50 = and i32 %49, 3
  %51 = icmp eq i32 %50, 0
  br i1 %51, label %52, label %144

52:                                               ; preds = %39, %47
  %53 = and i32 %4, -195
  br label %80

54:                                               ; preds = %24, %20
  %55 = getelementptr inbounds %struct.bAnimContext, ptr %0, i64 0, i32 3
  %56 = load i16, ptr %55, align 4, !tbaa !11
  %57 = icmp eq i16 %56, 2
  %58 = getelementptr inbounds %struct.bActionGroup, ptr %3, i64 0, i32 3
  %59 = load i32, ptr %58, align 8, !tbaa !137
  %60 = and i32 %4, 8
  %61 = icmp eq i32 %60, 0
  br i1 %57, label %74, label %70

62:                                               ; preds = %28
  %63 = getelementptr inbounds %struct.bActionGroup, ptr %3, i64 0, i32 3
  %64 = load i32, ptr %63, align 8, !tbaa !137
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
  %87 = load i32, ptr %86, align 8, !tbaa !137
  %88 = and i32 %87, 2
  %89 = icmp eq i32 %88, 0
  br i1 %89, label %144, label %90

90:                                               ; preds = %85, %80
  %91 = and i32 %82, 4
  %92 = icmp eq i32 %91, 0
  br i1 %92, label %98, label %93

93:                                               ; preds = %90
  %94 = getelementptr inbounds %struct.bActionGroup, ptr %3, i64 0, i32 3
  %95 = load i32, ptr %94, align 8, !tbaa !137
  %96 = and i32 %95, 32
  %97 = icmp eq i32 %96, 0
  br i1 %97, label %98, label %144

98:                                               ; preds = %93, %90
  %99 = and i32 %82, 256
  %100 = icmp eq i32 %99, 0
  br i1 %100, label %106, label %101

101:                                              ; preds = %98
  %102 = getelementptr inbounds %struct.bActionGroup, ptr %3, i64 0, i32 3
  %103 = load i32, ptr %102, align 8, !tbaa !137
  %104 = and i32 %103, 4
  %105 = icmp eq i32 %104, 0
  br i1 %105, label %106, label %144

106:                                              ; preds = %98, %101
  %107 = getelementptr inbounds %struct.bActionGroup, ptr %3, i64 0, i32 2
  %108 = load ptr, ptr %107, align 8, !tbaa !181
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
  %123 = load i32, ptr %122, align 8, !tbaa !137
  %124 = and i32 %123, 3
  %125 = icmp eq i32 %124, 0
  br i1 %125, label %126, label %134

126:                                              ; preds = %121, %118
  %127 = and i32 %81, 128
  %128 = icmp eq i32 %127, 0
  br i1 %128, label %141, label %129

129:                                              ; preds = %126
  %130 = getelementptr inbounds %struct.bActionGroup, ptr %3, i64 0, i32 3
  %131 = load i32, ptr %130, align 8, !tbaa !137
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
define internal fastcc i64 @animfilter_fcurves(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, i32 noundef %4, ptr noundef %5) unnamed_addr #0 {
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
  %21 = load ptr, ptr %13, align 8, !tbaa !182
  %22 = tail call fastcc ptr @animfilter_fcurve_next(ptr noundef %1, ptr noundef %21, ptr noundef %3, i32 noundef %4, ptr noundef %5) #8
  %23 = icmp eq ptr %22, null
  br i1 %23, label %24, label %12, !llvm.loop !183

24:                                               ; preds = %19, %9, %6
  %25 = phi i64 [ 0, %6 ], [ 1, %9 ], [ %20, %19 ]
  ret i64 %25
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @animfilter_fcurve_next(ptr noundef %0, ptr noundef %1, ptr noundef readnone %2, i32 noundef %3, ptr noundef %4) unnamed_addr #0 {
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
  %31 = load ptr, ptr %30, align 8, !tbaa !184
  %32 = icmp eq ptr %31, %2
  br i1 %32, label %33, label %99

33:                                               ; preds = %28
  br i1 %12, label %34, label %41

34:                                               ; preds = %33
  %35 = load i32, ptr %13, align 8, !tbaa !44
  %36 = and i32 %35, 67108865
  %37 = icmp eq i32 %36, 67108864
  br i1 %37, label %41, label %38

38:                                               ; preds = %34
  %39 = tail call fastcc zeroext i8 @skip_fcurve_selected_data(ptr noundef nonnull %0, ptr noundef nonnull %29, ptr noundef nonnull %4, i32 noundef %3) #8, !range !12
  %40 = icmp eq i8 %39, 0
  br i1 %40, label %41, label %96

41:                                               ; preds = %34, %38, %33
  br i1 %15, label %47, label %42

42:                                               ; preds = %41
  %43 = getelementptr inbounds %struct.FCurve, ptr %29, i64 0, i32 9
  %44 = load i16, ptr %43, align 8, !tbaa !140
  %45 = and i16 %44, 1
  %46 = icmp eq i16 %45, 0
  br i1 %46, label %96, label %47

47:                                               ; preds = %42, %41
  br i1 %17, label %53, label %48

48:                                               ; preds = %47
  %49 = getelementptr inbounds %struct.FCurve, ptr %29, i64 0, i32 9
  %50 = load i16, ptr %49, align 8, !tbaa !140
  %51 = and i16 %50, 8
  %52 = icmp eq i16 %51, 0
  br i1 %52, label %53, label %96

53:                                               ; preds = %48, %47
  br i1 %19, label %66, label %54

54:                                               ; preds = %53
  br i1 %21, label %60, label %55

55:                                               ; preds = %54
  %56 = getelementptr inbounds %struct.FCurve, ptr %29, i64 0, i32 9
  %57 = load i16, ptr %56, align 8, !tbaa !140
  %58 = and i16 %57, 2
  %59 = icmp eq i16 %58, 0
  br i1 %59, label %60, label %66

60:                                               ; preds = %55, %54
  br i1 %23, label %96, label %61

61:                                               ; preds = %60
  %62 = getelementptr inbounds %struct.FCurve, ptr %29, i64 0, i32 9
  %63 = load i16, ptr %62, align 8, !tbaa !140
  %64 = and i16 %63, 2
  %65 = icmp eq i16 %64, 0
  br i1 %65, label %66, label %96

66:                                               ; preds = %61, %55, %53
  br i1 %25, label %67, label %72

67:                                               ; preds = %66
  %68 = getelementptr inbounds %struct.FCurve, ptr %29, i64 0, i32 9
  %69 = load i16, ptr %68, align 8, !tbaa !140
  %70 = and i16 %69, 2
  %71 = icmp eq i16 %70, 0
  br i1 %71, label %96, label %72

72:                                               ; preds = %66, %67
  br i1 %27, label %78, label %73

73:                                               ; preds = %72
  %74 = getelementptr inbounds %struct.FCurve, ptr %29, i64 0, i32 9
  %75 = load i16, ptr %74, align 8, !tbaa !140
  %76 = and i16 %75, 4
  %77 = icmp eq i16 %76, 0
  br i1 %77, label %96, label %78

78:                                               ; preds = %73, %72
  br i1 %8, label %79, label %99

79:                                               ; preds = %78
  %80 = load i32, ptr %13, align 8, !tbaa !44
  %81 = and i32 %80, 134217728
  %82 = icmp ne i32 %81, 0
  %83 = and i1 %9, %82
  br i1 %83, label %84, label %89

84:                                               ; preds = %79
  %85 = tail call fastcc zeroext i8 @skip_fcurve_with_name(ptr noundef nonnull %0, ptr noundef nonnull %29, ptr noundef nonnull %4) #8, !range !12
  %86 = icmp eq i8 %85, 0
  br i1 %86, label %87, label %96

87:                                               ; preds = %84
  %88 = load i32, ptr %13, align 8, !tbaa !44
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
  %97 = load ptr, ptr %29, align 8, !tbaa !182
  %98 = icmp eq ptr %97, null
  br i1 %98, label %99, label %28, !llvm.loop !185

99:                                               ; preds = %78, %93, %89, %96, %28, %5
  %100 = phi ptr [ null, %5 ], [ null, %28 ], [ null, %96 ], [ %29, %89 ], [ %29, %93 ], [ %29, %78 ]
  ret ptr %100
}

; Function Attrs: optsize
declare void @BLI_movelisttolist(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc noundef zeroext i8 @skip_fcurve_selected_data(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, ptr noundef %2, i32 noundef %3) unnamed_addr #0 {
  %5 = and i32 %3, 1
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %12, label %7

7:                                                ; preds = %4
  %8 = getelementptr inbounds %struct.bDopeSheet, ptr %0, i64 0, i32 4
  %9 = load i32, ptr %8, align 8, !tbaa !44
  %10 = and i32 %9, 67108864
  %11 = icmp eq i32 %10, 0
  br label %12

12:                                               ; preds = %7, %4
  %13 = phi i1 [ false, %4 ], [ %11, %7 ]
  %14 = getelementptr inbounds %struct.ID, ptr %2, i64 0, i32 4
  %15 = load i16, ptr %14, align 8, !tbaa !46
  switch i16 %15, label %125 [
    i16 16975, label %16
    i16 17235, label %63
    i16 21582, label %99
  ]

16:                                               ; preds = %12
  %17 = getelementptr inbounds %struct.FCurve, ptr %1, i64 0, i32 12
  %18 = load ptr, ptr %17, align 8, !tbaa !186
  %19 = icmp eq ptr %18, null
  br i1 %19, label %125, label %20

20:                                               ; preds = %16
  %21 = tail call ptr @strstr(ptr noundef nonnull dereferenceable(1) %18, ptr noundef nonnull dereferenceable(1) @.str.4) #11
  %22 = icmp eq ptr %21, null
  br i1 %22, label %125, label %23

23:                                               ; preds = %20
  %24 = tail call ptr @BLI_str_quoted_substrN(ptr noundef nonnull %18, ptr noundef nonnull @.str.5) #9
  %25 = getelementptr inbounds %struct.Object, ptr %2, i64 0, i32 18
  %26 = load ptr, ptr %25, align 8, !tbaa !187
  %27 = tail call ptr @BKE_pose_channel_find_name(ptr noundef %26, ptr noundef %24) #9
  %28 = icmp eq ptr %24, null
  br i1 %28, label %31, label %29

29:                                               ; preds = %23
  %30 = load ptr, ptr @MEM_freeN, align 8, !tbaa !41
  tail call void %30(ptr noundef nonnull %24) #9
  br label %31

31:                                               ; preds = %29, %23
  %32 = icmp eq ptr %27, null
  br i1 %32, label %62, label %33

33:                                               ; preds = %31
  %34 = getelementptr inbounds %struct.bPoseChannel, ptr %27, i64 0, i32 12
  %35 = load ptr, ptr %34, align 8, !tbaa !188
  %36 = icmp eq ptr %35, null
  br i1 %36, label %62, label %37

37:                                               ; preds = %33
  br i1 %13, label %38, label %52

38:                                               ; preds = %37
  %39 = getelementptr inbounds %struct.Object, ptr %2, i64 0, i32 19
  %40 = load ptr, ptr %39, align 8, !tbaa !190
  %41 = getelementptr inbounds %struct.bArmature, ptr %40, i64 0, i32 15
  %42 = load i32, ptr %41, align 8, !tbaa !191
  %43 = getelementptr inbounds %struct.Bone, ptr %35, i64 0, i32 25
  %44 = load i32, ptr %43, align 8, !tbaa !192
  %45 = and i32 %44, %42
  %46 = icmp eq i32 %45, 0
  br i1 %46, label %125, label %47

47:                                               ; preds = %38
  %48 = getelementptr inbounds %struct.Bone, ptr %35, i64 0, i32 10
  %49 = load i32, ptr %48, align 8, !tbaa !194
  %50 = and i32 %49, 64
  %51 = icmp eq i32 %50, 0
  br i1 %51, label %52, label %125

52:                                               ; preds = %47, %37
  %53 = getelementptr inbounds %struct.bDopeSheet, ptr %0, i64 0, i32 4
  %54 = load i32, ptr %53, align 8, !tbaa !44
  %55 = and i32 %54, 1
  %56 = icmp eq i32 %55, 0
  br i1 %56, label %62, label %57

57:                                               ; preds = %52
  %58 = getelementptr inbounds %struct.Bone, ptr %35, i64 0, i32 10
  %59 = load i32, ptr %58, align 8, !tbaa !194
  %60 = and i32 %59, 1
  %61 = icmp eq i32 %60, 0
  br i1 %61, label %125, label %62

62:                                               ; preds = %52, %57, %33, %31
  br label %125

63:                                               ; preds = %12
  %64 = getelementptr inbounds %struct.FCurve, ptr %1, i64 0, i32 12
  %65 = load ptr, ptr %64, align 8, !tbaa !186
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
  %74 = load ptr, ptr %64, align 8, !tbaa !186
  %75 = tail call ptr @BLI_str_quoted_substrN(ptr noundef %74, ptr noundef nonnull @.str.7) #9
  %76 = load ptr, ptr %71, align 8, !tbaa !195
  %77 = tail call ptr @BKE_sequence_get_by_name(ptr noundef %76, ptr noundef %75, i8 noundef zeroext 0) #9
  %78 = icmp eq ptr %75, null
  br i1 %78, label %81, label %79

79:                                               ; preds = %73
  %80 = load ptr, ptr @MEM_freeN, align 8, !tbaa !41
  tail call void %80(ptr noundef nonnull %75) #9
  br label %81

81:                                               ; preds = %73, %79
  %82 = getelementptr inbounds %struct.bDopeSheet, ptr %0, i64 0, i32 4
  %83 = load i32, ptr %82, align 8, !tbaa !44
  %84 = and i32 %83, 1
  %85 = icmp eq i32 %84, 0
  br i1 %85, label %98, label %91

86:                                               ; preds = %70
  %87 = getelementptr inbounds %struct.bDopeSheet, ptr %0, i64 0, i32 4
  %88 = load i32, ptr %87, align 8, !tbaa !44
  %89 = and i32 %88, 1
  %90 = icmp eq i32 %89, 0
  br i1 %90, label %98, label %125

91:                                               ; preds = %81
  %92 = icmp eq ptr %77, null
  br i1 %92, label %125, label %93

93:                                               ; preds = %91
  %94 = getelementptr inbounds %struct.Sequence, ptr %77, i64 0, i32 5
  %95 = load i32, ptr %94, align 8, !tbaa !197
  %96 = and i32 %95, 1
  %97 = icmp eq i32 %96, 0
  br i1 %97, label %125, label %98

98:                                               ; preds = %86, %93, %81
  br label %125

99:                                               ; preds = %12
  %100 = getelementptr inbounds %struct.FCurve, ptr %1, i64 0, i32 12
  %101 = load ptr, ptr %100, align 8, !tbaa !186
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
  %111 = load ptr, ptr @MEM_freeN, align 8, !tbaa !41
  tail call void %111(ptr noundef nonnull %107) #9
  br label %112

112:                                              ; preds = %110, %106
  %113 = getelementptr inbounds %struct.bDopeSheet, ptr %0, i64 0, i32 4
  %114 = load i32, ptr %113, align 8, !tbaa !44
  %115 = and i32 %114, 1
  %116 = icmp ne i32 %115, 0
  %117 = icmp ne ptr %108, null
  %118 = select i1 %116, i1 %117, i1 false
  br i1 %118, label %119, label %124

119:                                              ; preds = %112
  %120 = getelementptr inbounds %struct.bNode, ptr %108, i64 0, i32 7
  %121 = load i32, ptr %120, align 8, !tbaa !199
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
define internal fastcc zeroext i8 @skip_fcurve_with_name(ptr noundef %0, ptr noundef %1, ptr noundef %2) unnamed_addr #0 {
  %4 = alloca %struct.bAnimListElem, align 8
  %5 = alloca [256 x i8], align 16
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %4) #10
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %4, i8 0, i64 64, i1 false)
  %6 = getelementptr inbounds %struct.bAnimListElem, ptr %4, i64 0, i32 3
  store i32 7, ptr %6, align 8, !tbaa !80
  %7 = getelementptr inbounds %struct.bAnimListElem, ptr %4, i64 0, i32 9
  store ptr %2, ptr %7, align 8, !tbaa !81
  %8 = getelementptr inbounds %struct.bAnimListElem, ptr %4, i64 0, i32 2
  store ptr %1, ptr %8, align 8, !tbaa !78
  %9 = call ptr @ANIM_channel_get_typeinfo(ptr noundef nonnull %4) #9
  %10 = icmp eq ptr %9, null
  br i1 %10, label %20, label %11

11:                                               ; preds = %3
  %12 = getelementptr inbounds %struct.bAnimChannelType, ptr %9, i64 0, i32 6
  %13 = load ptr, ptr %12, align 8, !tbaa !201
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
define internal fastcc noundef zeroext i8 @fcurve_has_errors(ptr nocapture noundef readonly %0) unnamed_addr #5 {
  %2 = getelementptr inbounds %struct.FCurve, ptr %0, i64 0, i32 9
  %3 = load i16, ptr %2, align 8, !tbaa !140
  %4 = and i16 %3, 1024
  %5 = icmp eq i16 %4, 0
  br i1 %5, label %6, label %40

6:                                                ; preds = %1
  %7 = getelementptr inbounds %struct.FCurve, ptr %0, i64 0, i32 3
  %8 = load ptr, ptr %7, align 8, !tbaa !203
  %9 = icmp eq ptr %8, null
  br i1 %9, label %40, label %10

10:                                               ; preds = %6
  %11 = getelementptr inbounds %struct.ChannelDriver, ptr %8, i64 0, i32 6
  %12 = load i32, ptr %11, align 4, !tbaa !204
  %13 = and i32 %12, 1
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %15, label %40

15:                                               ; preds = %10
  %16 = load ptr, ptr %8, align 8, !tbaa !41
  %17 = icmp eq ptr %16, null
  br i1 %17, label %40, label %21

18:                                               ; preds = %36, %21
  %19 = load ptr, ptr %22, align 8, !tbaa !41
  %20 = icmp eq ptr %19, null
  br i1 %20, label %40, label %21, !llvm.loop !206

21:                                               ; preds = %15, %18
  %22 = phi ptr [ %19, %18 ], [ %16, %15 ]
  %23 = getelementptr inbounds %struct.DriverVar, ptr %22, i64 0, i32 4
  %24 = load i16, ptr %23, align 8, !tbaa !207
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
  %33 = load i16, ptr %32, align 2, !tbaa !209
  %34 = and i16 %33, 16
  %35 = icmp eq i16 %34, 0
  br i1 %35, label %36, label %40

36:                                               ; preds = %29
  %37 = add nuw nsw i32 %30, 1
  %38 = getelementptr inbounds %struct.DriverTarget, ptr %31, i64 1
  %39 = icmp eq i32 %37, %25
  br i1 %39, label %18, label %29, !llvm.loop !211

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
define internal fastcc i64 @animdata_filter_gpencil_data(ptr noundef %0, ptr noundef %1, i32 noundef %2) unnamed_addr #0 {
  %4 = getelementptr inbounds %struct.bGPdata, ptr %1, i64 0, i32 1
  %5 = load ptr, ptr %4, align 8, !tbaa !41
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
  %26 = load i32, ptr %25, align 8, !tbaa !145
  %27 = and i32 %26, 32
  %28 = icmp eq i32 %27, 0
  br i1 %28, label %29, label %35

29:                                               ; preds = %24, %23
  br i1 %13, label %53, label %30

30:                                               ; preds = %29
  %31 = getelementptr inbounds %struct.bGPDlayer, ptr %21, i64 0, i32 4
  %32 = load i32, ptr %31, align 8, !tbaa !145
  %33 = and i32 %32, 32
  %34 = icmp eq i32 %33, 0
  br i1 %34, label %35, label %53

35:                                               ; preds = %30, %24, %20
  br i1 %15, label %41, label %36

36:                                               ; preds = %35
  %37 = getelementptr inbounds %struct.bGPDlayer, ptr %21, i64 0, i32 4
  %38 = load i32, ptr %37, align 8, !tbaa !145
  %39 = and i32 %38, 2
  %40 = icmp eq i32 %39, 0
  br i1 %40, label %41, label %53

41:                                               ; preds = %36, %35
  br i1 %17, label %47, label %42

42:                                               ; preds = %41
  %43 = getelementptr inbounds %struct.bGPDlayer, ptr %21, i64 0, i32 4
  %44 = load i32, ptr %43, align 8, !tbaa !145
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
  %55 = load ptr, ptr %21, align 8, !tbaa !41
  %56 = icmp eq ptr %55, null
  br i1 %56, label %57, label %20, !llvm.loop !212

57:                                               ; preds = %47, %53, %3
  %58 = phi i64 [ 0, %3 ], [ %54, %53 ], [ 1, %47 ]
  ret i64 %58
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc i64 @animdata_filter_mask_data(ptr noundef %0, ptr noundef %1, i32 noundef %2) unnamed_addr #0 {
  %4 = tail call ptr @BKE_mask_layer_active(ptr noundef %1) #9
  %5 = getelementptr inbounds %struct.Mask, ptr %1, i64 0, i32 2
  %6 = load ptr, ptr %5, align 8, !tbaa !41
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
  %27 = load i8, ptr %26, align 2, !tbaa !147
  %28 = and i8 %27, 1
  %29 = icmp eq i8 %28, 0
  br i1 %29, label %30, label %36

30:                                               ; preds = %25, %24
  br i1 %15, label %54, label %31

31:                                               ; preds = %30
  %32 = getelementptr inbounds %struct.MaskLayer, ptr %22, i64 0, i32 12
  %33 = load i8, ptr %32, align 2, !tbaa !147
  %34 = and i8 %33, 1
  %35 = icmp eq i8 %34, 0
  br i1 %35, label %36, label %54

36:                                               ; preds = %31, %25, %21
  br i1 %17, label %45, label %37

37:                                               ; preds = %36
  %38 = getelementptr inbounds %struct.MaskLayer, ptr %22, i64 0, i32 12
  %39 = load i8, ptr %38, align 2, !tbaa !147
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
  %56 = load ptr, ptr %22, align 8, !tbaa !41
  %57 = icmp eq ptr %56, null
  br i1 %57, label %58, label %21, !llvm.loop !213

58:                                               ; preds = %48, %54, %3
  %59 = phi i64 [ 0, %3 ], [ %55, %54 ], [ 1, %48 ]
  ret i64 %59
}

; Function Attrs: optsize
declare ptr @BKE_mask_layer_active(ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc i64 @animdata_filter_dopesheet_scene(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, i32 noundef %4) unnamed_addr #0 {
  %6 = alloca %struct.ListBase, align 8
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %6) #10
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %6, i8 0, i64 16, i1 false)
  %7 = and i32 %4, 2
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %19, label %9

9:                                                ; preds = %5
  %10 = getelementptr inbounds %struct.Scene, ptr %3, i64 0, i32 15
  %11 = load i16, ptr %10, align 4, !tbaa !85
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
  %22 = load ptr, ptr %21, align 8, !tbaa !214
  %23 = getelementptr inbounds %struct.Scene, ptr %3, i64 0, i32 3
  %24 = load ptr, ptr %23, align 8, !tbaa !215
  %25 = getelementptr inbounds %struct.bDopeSheet, ptr %2, i64 0, i32 4
  %26 = load i32, ptr %25, align 8, !tbaa !44
  %27 = and i32 %26, 32768
  %28 = icmp eq i32 %27, 0
  br i1 %28, label %29, label %32

29:                                               ; preds = %19
  %30 = call fastcc i64 @animdata_filter_ds_scene(ptr noundef %0, ptr noundef nonnull %6, ptr noundef nonnull %2, ptr noundef nonnull %3, i32 noundef %20) #8
  %31 = load i32, ptr %25, align 8, !tbaa !44
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
  %42 = load i32, ptr %25, align 8, !tbaa !44
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
  %53 = load i32, ptr %25, align 8, !tbaa !44
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
  %76 = load i16, ptr %75, align 4, !tbaa !85
  %77 = and i16 %76, 1
  %78 = icmp eq i16 %77, 0
  br i1 %78, label %79, label %87

79:                                               ; preds = %74, %71
  %80 = and i32 %4, 128
  %81 = icmp eq i32 %80, 0
  br i1 %81, label %94, label %82

82:                                               ; preds = %79
  %83 = getelementptr inbounds %struct.Scene, ptr %3, i64 0, i32 15
  %84 = load i16, ptr %83, align 4, !tbaa !85
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
define internal fastcc i64 @animdata_filter_dopesheet_ob(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, i32 noundef %4) unnamed_addr #0 {
  %6 = alloca %struct.ListBase, align 8
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %6) #10
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %6, i8 0, i64 16, i1 false)
  %7 = getelementptr inbounds %struct.Base, ptr %3, i64 0, i32 7
  %8 = load ptr, ptr %7, align 8, !tbaa !67
  %9 = and i32 %4, 2
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %21, label %11

11:                                               ; preds = %5
  %12 = getelementptr inbounds %struct.Object, ptr %8, i64 0, i32 59
  %13 = load i16, ptr %12, align 8, !tbaa !216
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
  %25 = load ptr, ptr %24, align 8, !tbaa !25
  %26 = icmp eq ptr %25, null
  br i1 %26, label %34, label %27

27:                                               ; preds = %21
  %28 = getelementptr inbounds %struct.bDopeSheet, ptr %2, i64 0, i32 4
  %29 = load i32, ptr %28, align 8, !tbaa !44
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
  %39 = load ptr, ptr %38, align 8, !tbaa !34
  %40 = icmp eq ptr %39, null
  br i1 %40, label %49, label %41

41:                                               ; preds = %37
  %42 = getelementptr inbounds %struct.bDopeSheet, ptr %2, i64 0, i32 4
  %43 = load i32, ptr %42, align 8, !tbaa !44
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
  %52 = load ptr, ptr %51, align 8, !tbaa !217
  %53 = icmp eq ptr %52, null
  br i1 %53, label %62, label %54

54:                                               ; preds = %49
  %55 = getelementptr inbounds %struct.bDopeSheet, ptr %2, i64 0, i32 4
  %56 = load i32, ptr %55, align 8, !tbaa !44
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
  %65 = load i32, ptr %64, align 8, !tbaa !218
  %66 = icmp eq i32 %65, 0
  br i1 %66, label %75, label %67

67:                                               ; preds = %62
  %68 = getelementptr inbounds %struct.bDopeSheet, ptr %2, i64 0, i32 4
  %69 = load i32, ptr %68, align 8, !tbaa !44
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
  %78 = load ptr, ptr %77, align 8, !tbaa !190
  %79 = icmp eq ptr %78, null
  br i1 %79, label %83, label %80

80:                                               ; preds = %75
  %81 = call fastcc i64 @animdata_filter_ds_obdata(ptr noundef %0, ptr noundef nonnull %6, ptr noundef %2, ptr noundef nonnull %8, i32 noundef %22) #8
  %82 = add i64 %81, %76
  br label %83

83:                                               ; preds = %80, %75
  %84 = phi i64 [ %82, %80 ], [ %76, %75 ]
  %85 = getelementptr inbounds %struct.Object, ptr %8, i64 0, i32 109
  %86 = load ptr, ptr %85, align 8, !tbaa !219
  %87 = icmp eq ptr %86, null
  br i1 %87, label %96, label %88

88:                                               ; preds = %83
  %89 = getelementptr inbounds %struct.bDopeSheet, ptr %2, i64 0, i32 4
  %90 = load i32, ptr %89, align 8, !tbaa !44
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
  %110 = load i32, ptr %109, align 8, !tbaa !173
  %111 = and i32 %110, 1
  %112 = icmp eq i32 %111, 0
  br i1 %112, label %113, label %121

113:                                              ; preds = %108, %105
  %114 = and i32 %4, 128
  %115 = icmp eq i32 %114, 0
  br i1 %115, label %139, label %116

116:                                              ; preds = %113
  %117 = getelementptr inbounds %struct.Base, ptr %3, i64 0, i32 4
  %118 = load i32, ptr %117, align 8, !tbaa !173
  %119 = and i32 %118, 1
  %120 = icmp eq i32 %119, 0
  br i1 %120, label %121, label %139

121:                                              ; preds = %116, %108, %102
  %122 = and i32 %4, 16
  %123 = icmp eq i32 %122, 0
  br i1 %123, label %132, label %124

124:                                              ; preds = %121
  %125 = load ptr, ptr %24, align 8, !tbaa !25
  %126 = icmp eq ptr %125, null
  br i1 %126, label %132, label %127

127:                                              ; preds = %124
  %128 = getelementptr inbounds %struct.AnimData, ptr %125, i64 0, i32 7
  %129 = load i32, ptr %128, align 8, !tbaa !90
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
define internal fastcc i64 @animdata_filter_ds_scene(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, i32 noundef %4) unnamed_addr #0 {
  %6 = alloca %struct.ListBase, align 8
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %6) #10
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %6, i8 0, i64 16, i1 false)
  %7 = getelementptr inbounds %struct.Scene, ptr %3, i64 0, i32 1
  %8 = load ptr, ptr %7, align 8, !tbaa !220
  %9 = icmp eq ptr %8, null
  br i1 %9, label %49, label %10

10:                                               ; preds = %5
  %11 = and i32 %4, 4
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %20, label %13

13:                                               ; preds = %10
  %14 = getelementptr inbounds %struct.AnimData, ptr %8, i64 0, i32 7
  %15 = load i32, ptr %14, align 8, !tbaa !90
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
  %25 = load i32, ptr %24, align 8, !tbaa !44
  %26 = and i32 %25, 4
  %27 = icmp eq i32 %26, 0
  br i1 %27, label %28, label %49

28:                                               ; preds = %23
  %29 = and i32 %25, 2
  %30 = icmp eq i32 %29, 0
  br i1 %30, label %41, label %31

31:                                               ; preds = %28
  %32 = getelementptr inbounds %struct.AnimData, ptr %8, i64 0, i32 5
  %33 = load ptr, ptr %32, align 8, !tbaa !221
  %34 = icmp eq ptr %33, null
  br i1 %34, label %49, label %35

35:                                               ; preds = %31
  %36 = getelementptr inbounds %struct.AnimData, ptr %8, i64 0, i32 7
  %37 = load i32, ptr %36, align 8, !tbaa !90
  %38 = lshr i32 %37, 10
  %39 = and i32 %38, 1
  %40 = xor i32 %39, 1
  br label %49

41:                                               ; preds = %28
  %42 = load ptr, ptr %8, align 8, !tbaa !30
  %43 = icmp eq ptr %42, null
  br i1 %43, label %49, label %44

44:                                               ; preds = %41
  %45 = getelementptr inbounds %struct.bAction, ptr %42, i64 0, i32 5
  %46 = load i32, ptr %45, align 8, !tbaa !88
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
define internal fastcc i64 @animdata_filter_ds_world(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4, i32 noundef %5) unnamed_addr #0 {
  %7 = alloca %struct.ListBase, align 8
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %7) #10
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %7, i8 0, i64 16, i1 false)
  %8 = and i32 %5, 2
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %20, label %10

10:                                               ; preds = %6
  %11 = getelementptr inbounds %struct.World, ptr %4, i64 0, i32 66
  %12 = load i16, ptr %11, align 2, !tbaa !122
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
  %24 = load i32, ptr %23, align 8, !tbaa !44
  %25 = and i32 %24, 1048576
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %27, label %29

27:                                               ; preds = %20
  %28 = call fastcc i64 @animdata_filter_ds_textures(ptr noundef %0, ptr noundef nonnull %7, ptr noundef nonnull %2, ptr noundef %4, i32 noundef %21) #8
  br label %29

29:                                               ; preds = %27, %20
  %30 = phi i64 [ 0, %20 ], [ %28, %27 ]
  %31 = getelementptr inbounds %struct.World, ptr %4, i64 0, i32 75
  %32 = load ptr, ptr %31, align 8, !tbaa !222
  %33 = icmp eq ptr %32, null
  br i1 %33, label %41, label %34

34:                                               ; preds = %29
  %35 = load i32, ptr %23, align 8, !tbaa !44
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
  %52 = load ptr, ptr %51, align 8, !tbaa !120
  %53 = icmp eq ptr %52, null
  br i1 %53, label %59, label %54

54:                                               ; preds = %50
  %55 = getelementptr inbounds %struct.AnimData, ptr %52, i64 0, i32 7
  %56 = load i32, ptr %55, align 8, !tbaa !90
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
define internal fastcc i64 @animdata_filter_ds_nodetree(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4, i32 noundef %5) unnamed_addr #0 {
  %7 = tail call fastcc i64 @animdata_filter_ds_nodetree_group(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4, i32 noundef %5) #8
  %8 = getelementptr inbounds %struct.bNodeTree, ptr %4, i64 0, i32 7
  %9 = load ptr, ptr %8, align 8, !tbaa !41
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
  %18 = load i16, ptr %17, align 4, !tbaa !223
  %19 = icmp eq i16 %18, 2
  br i1 %19, label %20, label %36

20:                                               ; preds = %14
  %21 = getelementptr inbounds %struct.bNode, ptr %15, i64 0, i32 20
  %22 = load ptr, ptr %21, align 8, !tbaa !224
  %23 = icmp eq ptr %22, null
  br i1 %23, label %36, label %24

24:                                               ; preds = %20
  %25 = load i32, ptr %12, align 8, !tbaa !44
  %26 = and i32 %25, 1
  %27 = icmp eq i32 %26, 0
  br i1 %27, label %33, label %28

28:                                               ; preds = %24
  %29 = getelementptr inbounds %struct.bNode, ptr %15, i64 0, i32 7
  %30 = load i32, ptr %29, align 8, !tbaa !199
  %31 = and i32 %30, 1
  %32 = icmp eq i32 %31, 0
  br i1 %32, label %36, label %33

33:                                               ; preds = %28, %24
  %34 = tail call fastcc i64 @animdata_filter_ds_nodetree_group(ptr noundef %0, ptr noundef %1, ptr noundef nonnull %2, ptr noundef %3, ptr noundef nonnull %22, i32 noundef %13) #8
  %35 = add i64 %34, %16
  br label %36

36:                                               ; preds = %14, %33, %20, %28
  %37 = phi i64 [ %16, %28 ], [ %35, %33 ], [ %16, %20 ], [ %16, %14 ]
  %38 = load ptr, ptr %15, align 8, !tbaa !41
  %39 = icmp eq ptr %38, null
  br i1 %39, label %40, label %14, !llvm.loop !225

40:                                               ; preds = %36, %6
  %41 = phi i64 [ %7, %6 ], [ %37, %36 ]
  ret i64 %41
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc i64 @animdata_filter_ds_linestyle(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, i32 noundef %4) unnamed_addr #0 {
  %6 = alloca %struct.ListBase, align 8
  %7 = getelementptr inbounds %struct.Scene, ptr %3, i64 0, i32 22, i32 60
  %8 = load ptr, ptr %7, align 8, !tbaa !41
  %9 = icmp eq ptr %8, null
  br i1 %9, label %105, label %24

10:                                               ; preds = %38, %24
  %11 = load ptr, ptr %25, align 8, !tbaa !41
  %12 = icmp eq ptr %11, null
  br i1 %12, label %13, label %24, !llvm.loop !226

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
  %27 = load ptr, ptr %26, align 8, !tbaa !41
  %28 = icmp eq ptr %27, null
  br i1 %28, label %10, label %29

29:                                               ; preds = %24, %38
  %30 = phi ptr [ %39, %38 ], [ %27, %24 ]
  %31 = getelementptr inbounds %struct.FreestyleLineSet, ptr %30, i64 0, i32 13
  %32 = load ptr, ptr %31, align 8, !tbaa !227
  %33 = icmp eq ptr %32, null
  br i1 %33, label %38, label %34

34:                                               ; preds = %29
  %35 = getelementptr inbounds %struct.ID, ptr %32, i64 0, i32 5
  %36 = load i16, ptr %35, align 2, !tbaa !229
  %37 = or i16 %36, 1024
  store i16 %37, ptr %35, align 2, !tbaa !229
  br label %38

38:                                               ; preds = %29, %34
  %39 = load ptr, ptr %30, align 8, !tbaa !41
  %40 = icmp eq ptr %39, null
  br i1 %40, label %10, label %29, !llvm.loop !230

41:                                               ; preds = %14, %101
  %42 = phi ptr [ %8, %14 ], [ %103, %101 ]
  %43 = phi i64 [ 0, %14 ], [ %102, %101 ]
  %44 = getelementptr inbounds %struct.SceneRenderLayer, ptr %42, i64 0, i32 8
  %45 = load i32, ptr %44, align 4, !tbaa !231
  %46 = and i32 %45, 64
  %47 = icmp eq i32 %46, 0
  br i1 %47, label %101, label %48

48:                                               ; preds = %41
  %49 = getelementptr inbounds %struct.SceneRenderLayer, ptr %42, i64 0, i32 13, i32 7
  %50 = load ptr, ptr %49, align 8, !tbaa !41
  %51 = icmp eq ptr %50, null
  br i1 %51, label %101, label %52

52:                                               ; preds = %48, %97
  %53 = phi ptr [ %99, %97 ], [ %50, %48 ]
  %54 = phi i64 [ %98, %97 ], [ %43, %48 ]
  %55 = getelementptr inbounds %struct.FreestyleLineSet, ptr %53, i64 0, i32 13
  %56 = load ptr, ptr %55, align 8, !tbaa !227
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %6) #10
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %6, i8 0, i64 16, i1 false)
  %57 = icmp eq ptr %56, null
  br i1 %57, label %97, label %58

58:                                               ; preds = %52
  %59 = getelementptr inbounds %struct.ID, ptr %56, i64 0, i32 5
  %60 = load i16, ptr %59, align 2, !tbaa !229
  %61 = and i16 %60, 1024
  %62 = icmp eq i16 %61, 0
  br i1 %62, label %97, label %63

63:                                               ; preds = %58
  %64 = and i16 %60, -1025
  store i16 %64, ptr %59, align 2, !tbaa !229
  br i1 %16, label %72, label %65

65:                                               ; preds = %63
  %66 = getelementptr inbounds %struct.FreestyleLineStyle, ptr %56, i64 0, i32 9
  %67 = load i32, ptr %66, align 4, !tbaa !129
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
  %80 = load ptr, ptr %79, align 8, !tbaa !127
  %81 = icmp eq ptr %80, null
  br i1 %81, label %87, label %82

82:                                               ; preds = %78
  %83 = getelementptr inbounds %struct.AnimData, ptr %80, i64 0, i32 7
  %84 = load i32, ptr %83, align 8, !tbaa !90
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
  %99 = load ptr, ptr %53, align 8, !tbaa !41
  %100 = icmp eq ptr %99, null
  br i1 %100, label %101, label %52, !llvm.loop !234

101:                                              ; preds = %97, %48, %41
  %102 = phi i64 [ %43, %41 ], [ %43, %48 ], [ %98, %97 ]
  %103 = load ptr, ptr %42, align 8, !tbaa !41
  %104 = icmp eq ptr %103, null
  br i1 %104, label %105, label %41, !llvm.loop !235

105:                                              ; preds = %101, %5, %13, %96
  %106 = phi i64 [ 1, %96 ], [ 0, %13 ], [ 0, %5 ], [ %102, %101 ]
  ret i64 %106
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc i64 @animfilter_block_data(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, i32 noundef %4) unnamed_addr #0 {
  %6 = tail call ptr @BKE_animdata_from_id(ptr noundef %3) #9
  %7 = icmp eq ptr %6, null
  br i1 %7, label %85, label %8

8:                                                ; preds = %5
  %9 = getelementptr inbounds %struct.IdAdtTemplate, ptr %3, i64 0, i32 1
  %10 = load ptr, ptr %9, align 8, !tbaa !236
  %11 = icmp eq ptr %10, null
  br i1 %11, label %85, label %12

12:                                               ; preds = %8
  %13 = and i32 %4, 4
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %20, label %15

15:                                               ; preds = %12
  %16 = getelementptr inbounds %struct.AnimData, ptr %10, i64 0, i32 7
  %17 = load i32, ptr %16, align 8, !tbaa !90
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
  %31 = load i32, ptr %30, align 8, !tbaa !90
  %32 = and i32 %31, 16384
  %33 = icmp eq i32 %32, 0
  br i1 %33, label %34, label %42

34:                                               ; preds = %29, %26
  %35 = and i32 %4, 128
  %36 = icmp eq i32 %35, 0
  br i1 %36, label %85, label %37

37:                                               ; preds = %34
  %38 = getelementptr inbounds %struct.AnimData, ptr %6, i64 0, i32 7
  %39 = load i32, ptr %38, align 8, !tbaa !90
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
  %51 = load i32, ptr %50, align 8, !tbaa !44
  %52 = and i32 %51, 4
  %53 = icmp eq i32 %52, 0
  br i1 %53, label %68, label %54

54:                                               ; preds = %49
  %55 = getelementptr inbounds %struct.AnimData, ptr %10, i64 0, i32 3
  %56 = load ptr, ptr %55, align 8, !tbaa !238
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
  %64 = load ptr, ptr %10, align 8, !tbaa !30
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
  %73 = load ptr, ptr %72, align 8, !tbaa !221
  %74 = icmp eq ptr %73, null
  br i1 %74, label %85, label %75

75:                                               ; preds = %71
  %76 = getelementptr inbounds %struct.AnimData, ptr %6, i64 0, i32 5
  %77 = load ptr, ptr %76, align 8, !tbaa !221
  %78 = tail call fastcc i64 @animfilter_fcurves(ptr noundef %1, ptr noundef nonnull %2, ptr noundef %77, ptr noundef null, i32 noundef %4, ptr noundef nonnull %3) #8
  br label %85

79:                                               ; preds = %68
  %80 = load ptr, ptr %10, align 8, !tbaa !30
  %81 = icmp eq ptr %80, null
  br i1 %81, label %85, label %82

82:                                               ; preds = %79
  %83 = load ptr, ptr %6, align 8, !tbaa !30
  %84 = tail call fastcc i64 @animfilter_action(ptr noundef %0, ptr noundef %1, ptr noundef nonnull %2, ptr noundef %83, i32 noundef %4, ptr noundef nonnull %3) #8
  br label %85

85:                                               ; preds = %42, %45, %48, %15, %63, %66, %58, %79, %82, %71, %75, %34, %37, %8, %5
  %86 = phi i64 [ 0, %5 ], [ 1, %42 ], [ 0, %45 ], [ 1, %48 ], [ 0, %8 ], [ 0, %79 ], [ %84, %82 ], [ 0, %71 ], [ %78, %75 ], [ 0, %63 ], [ %67, %66 ], [ %59, %58 ], [ 0, %34 ], [ 0, %37 ], [ 0, %15 ]
  ret i64 %86
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc i64 @animfilter_nla(ptr noundef %0, ptr nocapture noundef readonly %1, ptr noundef %2, i32 noundef %3, ptr noundef %4) unnamed_addr #0 {
  %6 = and i32 %3, 8
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %34, label %8

8:                                                ; preds = %5
  %9 = getelementptr inbounds %struct.bDopeSheet, ptr %1, i64 0, i32 4
  %10 = load i32, ptr %9, align 8, !tbaa !44
  %11 = and i32 %10, 33554432
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %19, label %13

13:                                               ; preds = %8
  %14 = load ptr, ptr %2, align 8, !tbaa !30
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
  %29 = load ptr, ptr %2, align 8, !tbaa !30
  %30 = getelementptr inbounds %struct.bAnimListElem, ptr %26, i64 0, i32 2
  store ptr %29, ptr %30, align 8, !tbaa !78
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
  %39 = load ptr, ptr %37, align 8, !tbaa !41
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
  %60 = load ptr, ptr %59, align 8, !tbaa !41
  %61 = load i32, ptr %42, align 8, !tbaa !90
  %62 = and i32 %61, 4
  %63 = icmp eq i32 %62, 0
  br i1 %63, label %69, label %64

64:                                               ; preds = %55
  %65 = getelementptr inbounds %struct.NlaTrack, ptr %56, i64 0, i32 3
  %66 = load i32, ptr %65, align 8, !tbaa !149
  %67 = and i32 %66, 1025
  %68 = icmp eq i32 %67, 1024
  br i1 %68, label %100, label %69

69:                                               ; preds = %64, %55
  br i1 %44, label %75, label %70

70:                                               ; preds = %69
  %71 = getelementptr inbounds %struct.NlaTrack, ptr %56, i64 0, i32 3
  %72 = load i32, ptr %71, align 8, !tbaa !149
  %73 = and i32 %72, 16
  %74 = icmp eq i32 %73, 0
  br i1 %74, label %75, label %100

75:                                               ; preds = %70, %69
  br i1 %46, label %88, label %76

76:                                               ; preds = %75
  br i1 %48, label %82, label %77

77:                                               ; preds = %76
  %78 = getelementptr inbounds %struct.NlaTrack, ptr %56, i64 0, i32 3
  %79 = load i32, ptr %78, align 8, !tbaa !149
  %80 = and i32 %79, 2
  %81 = icmp eq i32 %80, 0
  br i1 %81, label %82, label %88

82:                                               ; preds = %77, %76
  br i1 %50, label %100, label %83

83:                                               ; preds = %82
  %84 = getelementptr inbounds %struct.NlaTrack, ptr %56, i64 0, i32 3
  %85 = load i32, ptr %84, align 8, !tbaa !149
  %86 = and i32 %85, 2
  %87 = icmp eq i32 %86, 0
  br i1 %87, label %88, label %100

88:                                               ; preds = %83, %77, %75
  br i1 %52, label %94, label %89

89:                                               ; preds = %88
  %90 = getelementptr inbounds %struct.NlaTrack, ptr %56, i64 0, i32 3
  %91 = load i32, ptr %90, align 8, !tbaa !149
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
  br i1 %102, label %103, label %55, !llvm.loop !239

103:                                              ; preds = %94, %100, %36, %22
  %104 = phi i64 [ 1, %22 ], [ %38, %36 ], [ 1, %94 ], [ %101, %100 ]
  ret i64 %104
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc i64 @animdata_filter_ds_textures(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, i32 noundef %4) unnamed_addr #0 {
  %6 = icmp eq ptr %3, null
  br i1 %6, label %41, label %7

7:                                                ; preds = %5
  %8 = getelementptr inbounds %struct.ID, ptr %3, i64 0, i32 4
  %9 = load i16, ptr %8, align 8, !tbaa !46
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
  %17 = load i32, ptr getelementptr inbounds (%struct.Global, ptr @G, i64 0, i32 16), align 4, !tbaa !168
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
  %28 = load ptr, ptr %27, align 8, !tbaa !41
  %29 = icmp eq ptr %28, null
  br i1 %29, label %37, label %30

30:                                               ; preds = %24
  %31 = getelementptr inbounds %struct.MTex, ptr %28, i64 0, i32 5
  %32 = load ptr, ptr %31, align 8, !tbaa !240
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
  br i1 %40, label %41, label %24, !llvm.loop !242

41:                                               ; preds = %37, %16, %20, %5
  %42 = phi i64 [ 0, %5 ], [ 0, %20 ], [ 0, %16 ], [ %38, %37 ]
  ret i64 %42
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc i64 @animdata_filter_ds_texture(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4, i32 noundef %5) unnamed_addr #0 {
  %7 = alloca %struct.ListBase, align 8
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %7) #10
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %7, i8 0, i64 16, i1 false)
  %8 = and i32 %5, 2
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %20, label %10

10:                                               ; preds = %6
  %11 = getelementptr inbounds %struct.Tex, ptr %3, i64 0, i32 31
  %12 = load i16, ptr %11, align 2, !tbaa !136
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
  %24 = load ptr, ptr %23, align 8, !tbaa !243
  %25 = icmp eq ptr %24, null
  br i1 %25, label %34, label %26

26:                                               ; preds = %20
  %27 = getelementptr inbounds %struct.bDopeSheet, ptr %2, i64 0, i32 4
  %28 = load i32, ptr %27, align 8, !tbaa !44
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
  %45 = load ptr, ptr %44, align 8, !tbaa !133
  %46 = icmp eq ptr %45, null
  br i1 %46, label %52, label %47

47:                                               ; preds = %43
  %48 = getelementptr inbounds %struct.AnimData, ptr %45, i64 0, i32 7
  %49 = load i32, ptr %48, align 8, !tbaa !90
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
define internal fastcc i64 @animdata_filter_ds_nodetree_group(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4, i32 noundef %5) unnamed_addr #0 {
  %7 = alloca %struct.ListBase, align 8
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %7) #10
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %7, i8 0, i64 16, i1 false)
  %8 = and i32 %5, 2
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %20, label %10

10:                                               ; preds = %6
  %11 = getelementptr inbounds %struct.bNodeTree, ptr %4, i64 0, i32 12
  %12 = load i32, ptr %11, align 4, !tbaa !126
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
  %32 = load ptr, ptr %31, align 8, !tbaa !123
  %33 = icmp eq ptr %32, null
  br i1 %33, label %39, label %34

34:                                               ; preds = %30
  %35 = getelementptr inbounds %struct.AnimData, ptr %32, i64 0, i32 7
  %36 = load i32, ptr %35, align 8, !tbaa !90
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
define internal fastcc i64 @animdata_filter_ds_obanim(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, i32 noundef %4) unnamed_addr #0 {
  %6 = alloca %struct.ListBase, align 8
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %6) #10
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %6, i8 0, i64 16, i1 false)
  %7 = getelementptr inbounds %struct.Object, ptr %3, i64 0, i32 1
  %8 = load ptr, ptr %7, align 8, !tbaa !25
  %9 = icmp eq ptr %8, null
  br i1 %9, label %49, label %10

10:                                               ; preds = %5
  %11 = and i32 %4, 4
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %20, label %13

13:                                               ; preds = %10
  %14 = getelementptr inbounds %struct.AnimData, ptr %8, i64 0, i32 7
  %15 = load i32, ptr %14, align 8, !tbaa !90
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
  %25 = load i32, ptr %24, align 8, !tbaa !44
  %26 = and i32 %25, 4
  %27 = icmp eq i32 %26, 0
  br i1 %27, label %28, label %49

28:                                               ; preds = %23
  %29 = and i32 %25, 2
  %30 = icmp eq i32 %29, 0
  br i1 %30, label %41, label %31

31:                                               ; preds = %28
  %32 = getelementptr inbounds %struct.AnimData, ptr %8, i64 0, i32 5
  %33 = load ptr, ptr %32, align 8, !tbaa !221
  %34 = icmp eq ptr %33, null
  br i1 %34, label %49, label %35

35:                                               ; preds = %31
  %36 = getelementptr inbounds %struct.AnimData, ptr %8, i64 0, i32 7
  %37 = load i32, ptr %36, align 8, !tbaa !90
  %38 = lshr i32 %37, 10
  %39 = and i32 %38, 1
  %40 = xor i32 %39, 1
  br label %49

41:                                               ; preds = %28
  %42 = load ptr, ptr %8, align 8, !tbaa !30
  %43 = icmp eq ptr %42, null
  br i1 %43, label %49, label %44

44:                                               ; preds = %41
  %45 = getelementptr inbounds %struct.bAction, ptr %42, i64 0, i32 5
  %46 = load i32, ptr %45, align 8, !tbaa !88
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
define internal fastcc i64 @animdata_filter_ds_keyanim(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4, i32 noundef %5) unnamed_addr #0 {
  %7 = alloca %struct.ListBase, align 8
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %7) #10
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %7, i8 0, i64 16, i1 false)
  %8 = and i32 %5, 2
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %20, label %10

10:                                               ; preds = %6
  %11 = getelementptr inbounds %struct.Key, ptr %4, i64 0, i32 12
  %12 = load i16, ptr %11, align 2, !tbaa !119
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
  %32 = load ptr, ptr %31, align 8, !tbaa !34
  %33 = icmp eq ptr %32, null
  br i1 %33, label %39, label %34

34:                                               ; preds = %30
  %35 = getelementptr inbounds %struct.AnimData, ptr %32, i64 0, i32 7
  %36 = load i32, ptr %35, align 8, !tbaa !90
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
define internal fastcc i64 @animdata_filter_ds_modifiers(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, i32 noundef %4) unnamed_addr #0 {
  %6 = alloca %struct.tAnimFilterModifiersContext, align 8
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %6) #10
  %7 = getelementptr inbounds i8, ptr %6, i64 16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %7, i8 0, i64 32, i1 false)
  store ptr %0, ptr %6, align 8, !tbaa !244
  %8 = getelementptr inbounds %struct.tAnimFilterModifiersContext, ptr %6, i64 0, i32 1
  store ptr %2, ptr %8, align 8, !tbaa !246
  %9 = getelementptr inbounds %struct.tAnimFilterModifiersContext, ptr %6, i64 0, i32 4
  store i32 %4, ptr %9, align 8, !tbaa !247
  call void @modifiers_foreachIDLink(ptr noundef %3, ptr noundef nonnull @animfilter_modifier_idpoin_cb, ptr noundef nonnull %6) #9
  %10 = getelementptr inbounds %struct.tAnimFilterModifiersContext, ptr %6, i64 0, i32 3
  %11 = load i64, ptr %10, align 8, !tbaa !248
  %12 = icmp eq i64 %11, 0
  br i1 %12, label %16, label %13

13:                                               ; preds = %5
  %14 = getelementptr inbounds %struct.tAnimFilterModifiersContext, ptr %6, i64 0, i32 2
  call void @BLI_movelisttolist(ptr noundef %1, ptr noundef nonnull %14) #9
  %15 = load i64, ptr %10, align 8, !tbaa !248
  br label %16

16:                                               ; preds = %13, %5
  %17 = phi i64 [ %15, %13 ], [ 0, %5 ]
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %6) #10
  ret i64 %17
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc i64 @animdata_filter_ds_materials(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, i32 noundef %4) unnamed_addr #0 {
  %6 = getelementptr inbounds %struct.Object, ptr %3, i64 0, i32 31
  %7 = load i32, ptr %6, align 8, !tbaa !218
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
  %28 = load i32, ptr %6, align 8, !tbaa !218
  %29 = icmp slt i32 %12, %28
  br i1 %29, label %9, label %30, !llvm.loop !249

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
  %49 = load i32, ptr %6, align 8, !tbaa !218
  %50 = icmp slt i32 %36, %49
  br i1 %50, label %34, label %51, !llvm.loop !250

51:                                               ; preds = %46, %30, %5
  %52 = phi i64 [ %25, %30 ], [ 0, %5 ], [ %47, %46 ]
  ret i64 %52
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc i64 @animdata_filter_ds_obdata(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr nocapture noundef readonly %3, i32 noundef %4) unnamed_addr #0 {
  %6 = alloca %struct.ListBase, align 8
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %6) #10
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %6, i8 0, i64 16, i1 false)
  %7 = getelementptr inbounds %struct.Object, ptr %3, i64 0, i32 19
  %8 = load ptr, ptr %7, align 8, !tbaa !190
  %9 = getelementptr inbounds %struct.Object, ptr %3, i64 0, i32 3
  %10 = load i16, ptr %9, align 8, !tbaa !251
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
  %13 = load i32, ptr %12, align 8, !tbaa !44
  %14 = and i32 %13, 1024
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %16, label %143

16:                                               ; preds = %11
  %17 = getelementptr inbounds %struct.Camera, ptr %8, i64 0, i32 4
  %18 = load i16, ptr %17, align 2, !tbaa !101
  %19 = and i16 %18, 64
  br label %81

20:                                               ; preds = %5
  %21 = getelementptr inbounds %struct.bDopeSheet, ptr %2, i64 0, i32 4
  %22 = load i32, ptr %21, align 8, !tbaa !44
  %23 = and i32 %22, 4096
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %25, label %143

25:                                               ; preds = %20
  %26 = getelementptr inbounds %struct.Lamp, ptr %8, i64 0, i32 3
  %27 = load i16, ptr %26, align 2, !tbaa !98
  %28 = and i16 %27, 1
  br label %81

29:                                               ; preds = %5, %5, %5
  %30 = getelementptr inbounds %struct.bDopeSheet, ptr %2, i64 0, i32 4
  %31 = load i32, ptr %30, align 8, !tbaa !44
  %32 = and i32 %31, 8192
  %33 = icmp eq i32 %32, 0
  br i1 %33, label %34, label %143

34:                                               ; preds = %29
  %35 = getelementptr inbounds %struct.Curve, ptr %8, i64 0, i32 23
  %36 = load i32, ptr %35, align 4, !tbaa !105
  %37 = trunc i32 %36 to i16
  %38 = and i16 %37, 2048
  br label %81

39:                                               ; preds = %5
  %40 = getelementptr inbounds %struct.bDopeSheet, ptr %2, i64 0, i32 4
  %41 = load i32, ptr %40, align 8, !tbaa !44
  %42 = and i32 %41, 131072
  %43 = icmp eq i32 %42, 0
  br i1 %43, label %44, label %143

44:                                               ; preds = %39
  %45 = getelementptr inbounds %struct.MetaBall, ptr %8, i64 0, i32 8
  %46 = load i8, ptr %45, align 1, !tbaa !252
  %47 = and i8 %46, 1
  %48 = zext nneg i8 %47 to i16
  br label %81

49:                                               ; preds = %5
  %50 = getelementptr inbounds %struct.bDopeSheet, ptr %2, i64 0, i32 4
  %51 = load i32, ptr %50, align 8, !tbaa !44
  %52 = and i32 %51, 262144
  %53 = icmp eq i32 %52, 0
  br i1 %53, label %54, label %143

54:                                               ; preds = %49
  %55 = getelementptr inbounds %struct.bArmature, ptr %8, i64 0, i32 8
  %56 = load i32, ptr %55, align 8, !tbaa !108
  %57 = trunc i32 %56 to i16
  %58 = and i16 %57, 8192
  br label %81

59:                                               ; preds = %5
  %60 = getelementptr inbounds %struct.bDopeSheet, ptr %2, i64 0, i32 4
  %61 = load i32, ptr %60, align 8, !tbaa !44
  %62 = and i32 %61, 128
  %63 = icmp eq i32 %62, 0
  br i1 %63, label %64, label %143

64:                                               ; preds = %59
  %65 = getelementptr inbounds %struct.Mesh, ptr %8, i64 0, i32 38
  %66 = load i16, ptr %65, align 2, !tbaa !112
  %67 = and i16 %66, 512
  br label %81

68:                                               ; preds = %5
  %69 = getelementptr inbounds %struct.bDopeSheet, ptr %2, i64 0, i32 4
  %70 = load i32, ptr %69, align 8, !tbaa !44
  %71 = and i32 %70, 512
  %72 = icmp eq i32 %71, 0
  br i1 %72, label %73, label %143

73:                                               ; preds = %68
  %74 = getelementptr inbounds %struct.Lattice, ptr %8, i64 0, i32 5
  %75 = load i16, ptr %74, align 2, !tbaa !115
  %76 = and i16 %75, 4
  br label %81

77:                                               ; preds = %5
  %78 = getelementptr inbounds %struct.Speaker, ptr %8, i64 0, i32 13
  %79 = load i16, ptr %78, align 8, !tbaa !118
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
  %93 = load i16, ptr %9, align 8, !tbaa !251
  %94 = icmp eq i16 %93, 10
  br i1 %94, label %95, label %117

95:                                               ; preds = %81
  %96 = load ptr, ptr %7, align 8, !tbaa !190
  %97 = getelementptr inbounds %struct.Lamp, ptr %96, i64 0, i32 74
  %98 = load ptr, ptr %97, align 8, !tbaa !254
  %99 = icmp eq ptr %98, null
  br i1 %99, label %108, label %100

100:                                              ; preds = %95
  %101 = getelementptr inbounds %struct.bDopeSheet, ptr %2, i64 0, i32 4
  %102 = load i32, ptr %101, align 8, !tbaa !44
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
  %111 = load i32, ptr %110, align 8, !tbaa !44
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
  %126 = load ptr, ptr %125, align 8, !tbaa !236
  %127 = icmp eq ptr %126, null
  br i1 %127, label %133, label %128

128:                                              ; preds = %124
  %129 = getelementptr inbounds %struct.AnimData, ptr %126, i64 0, i32 7
  %130 = load i32, ptr %129, align 8, !tbaa !90
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
define internal fastcc i64 @animdata_filter_ds_particles(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr nocapture noundef readonly %3, i32 noundef %4) unnamed_addr #0 {
  %6 = alloca %struct.ListBase, align 8
  %7 = getelementptr inbounds %struct.Object, ptr %3, i64 0, i32 109
  %8 = load ptr, ptr %7, align 8, !tbaa !41
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
  %24 = load ptr, ptr %23, align 8, !tbaa !255
  %25 = icmp eq ptr %24, null
  br i1 %25, label %65, label %26

26:                                               ; preds = %20
  %27 = getelementptr inbounds %struct.ParticleSettings, ptr %24, i64 0, i32 1
  %28 = load ptr, ptr %27, align 8, !tbaa !130
  %29 = icmp eq ptr %28, null
  br i1 %29, label %65, label %30

30:                                               ; preds = %26
  br i1 %12, label %38, label %31

31:                                               ; preds = %30
  %32 = getelementptr inbounds %struct.ParticleSettings, ptr %24, i64 0, i32 5
  %33 = load i32, ptr %32, align 8, !tbaa !132
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
  %45 = load ptr, ptr %23, align 8, !tbaa !255
  %46 = getelementptr inbounds %struct.ParticleSettings, ptr %45, i64 0, i32 1
  %47 = load ptr, ptr %46, align 8, !tbaa !130
  %48 = icmp eq ptr %47, null
  br i1 %48, label %54, label %49

49:                                               ; preds = %44
  %50 = getelementptr inbounds %struct.AnimData, ptr %47, i64 0, i32 7
  %51 = load i32, ptr %50, align 8, !tbaa !90
  %52 = and i32 %51, 32768
  %53 = icmp eq i32 %52, 0
  br i1 %53, label %61, label %54

54:                                               ; preds = %49, %44, %43
  br i1 %19, label %55, label %64

55:                                               ; preds = %54
  %56 = load ptr, ptr %23, align 8, !tbaa !255
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
  %67 = load ptr, ptr %21, align 8, !tbaa !41
  %68 = icmp eq ptr %67, null
  br i1 %68, label %69, label %20, !llvm.loop !257

69:                                               ; preds = %65, %5, %64
  %70 = phi i64 [ 1, %64 ], [ 0, %5 ], [ %66, %65 ]
  ret i64 %70
}

; Function Attrs: optsize
declare void @modifiers_foreachIDLink(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal void @animfilter_modifier_idpoin_cb(ptr noundef %0, ptr noundef %1, ptr nocapture noundef readonly %2) #0 {
  %4 = load ptr, ptr %2, align 8, !tbaa !41
  %5 = icmp eq ptr %4, null
  br i1 %5, label %26, label %6

6:                                                ; preds = %3
  %7 = getelementptr inbounds %struct.ID, ptr %4, i64 0, i32 4
  %8 = load i16, ptr %7, align 8, !tbaa !46
  %9 = icmp eq i16 %8, 17748
  br i1 %9, label %10, label %26

10:                                               ; preds = %6
  %11 = getelementptr inbounds %struct.tAnimFilterModifiersContext, ptr %0, i64 0, i32 1
  %12 = load ptr, ptr %11, align 8, !tbaa !246
  %13 = getelementptr inbounds %struct.bDopeSheet, ptr %12, i64 0, i32 4
  %14 = load i32, ptr %13, align 8, !tbaa !44
  %15 = and i32 %14, 1048576
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %17, label %26

17:                                               ; preds = %10
  %18 = load ptr, ptr %0, align 8, !tbaa !244
  %19 = getelementptr inbounds %struct.tAnimFilterModifiersContext, ptr %0, i64 0, i32 2
  %20 = getelementptr inbounds %struct.tAnimFilterModifiersContext, ptr %0, i64 0, i32 4
  %21 = load i32, ptr %20, align 8, !tbaa !247
  %22 = tail call fastcc i64 @animdata_filter_ds_texture(ptr noundef %18, ptr noundef nonnull %19, ptr noundef nonnull %12, ptr noundef nonnull %4, ptr noundef %1, i32 noundef %21) #8
  %23 = getelementptr inbounds %struct.tAnimFilterModifiersContext, ptr %0, i64 0, i32 3
  %24 = load i64, ptr %23, align 8, !tbaa !248
  %25 = add i64 %24, %22
  store i64 %25, ptr %23, align 8, !tbaa !248
  br label %26

26:                                               ; preds = %6, %17, %10, %3
  ret void
}

; Function Attrs: optsize
declare ptr @give_current_material(ptr noundef, i16 noundef signext) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc i64 @animdata_filter_ds_material(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, i32 noundef %4) unnamed_addr #0 {
  %6 = alloca %struct.ListBase, align 8
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %6) #10
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %6, i8 0, i64 16, i1 false)
  %7 = and i32 %4, 2
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %19, label %9

9:                                                ; preds = %5
  %10 = getelementptr inbounds %struct.Material, ptr %3, i64 0, i32 3
  %11 = load i16, ptr %10, align 2, !tbaa !95
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
  %23 = load i32, ptr %22, align 8, !tbaa !44
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
  %32 = load ptr, ptr %31, align 8, !tbaa !258
  %33 = icmp eq ptr %32, null
  br i1 %33, label %41, label %34

34:                                               ; preds = %29
  %35 = load i32, ptr %22, align 8, !tbaa !44
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
  %52 = load ptr, ptr %51, align 8, !tbaa !91
  %53 = icmp eq ptr %52, null
  br i1 %53, label %59, label %54

54:                                               ; preds = %50
  %55 = getelementptr inbounds %struct.AnimData, ptr %52, i64 0, i32 7
  %56 = load i32, ptr %55, align 8, !tbaa !90
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

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!5 = !{!6, !7, i64 24}
!6 = !{!"bAnimContext", !7, i64 0, !10, i64 8, !10, i64 10, !10, i64 12, !10, i64 14, !7, i64 16, !7, i64 24, !7, i64 32, !7, i64 40, !7, i64 48, !7, i64 56, !7, i64 64, !7, i64 72}
!7 = !{!"any pointer", !8, i64 0}
!8 = !{!"omnipotent char", !9, i64 0}
!9 = !{!"Simple C/C++ TBAA"}
!10 = !{!"short", !8, i64 0}
!11 = !{!6, !10, i64 12}
!12 = !{i8 0, i8 2}
!13 = !{!6, !7, i64 0}
!14 = !{!6, !7, i64 40}
!15 = !{!16, !8, i64 336}
!16 = !{!"SpaceAction", !7, i64 0, !7, i64 8, !17, i64 16, !18, i64 32, !19, i64 36, !8, i64 40, !20, i64 56, !7, i64 216, !23, i64 224, !8, i64 336, !8, i64 337, !10, i64 338, !19, i64 340}
!17 = !{!"ListBase", !7, i64 0, !7, i64 8}
!18 = !{!"int", !8, i64 0}
!19 = !{!"float", !8, i64 0}
!20 = !{!"View2D", !21, i64 0, !21, i64 16, !22, i64 32, !22, i64 48, !22, i64 64, !8, i64 80, !8, i64 88, !19, i64 96, !19, i64 100, !10, i64 104, !10, i64 106, !10, i64 108, !10, i64 110, !10, i64 112, !10, i64 114, !10, i64 116, !10, i64 118, !10, i64 120, !10, i64 122, !10, i64 124, !10, i64 126, !7, i64 128, !18, i64 136, !18, i64 140, !7, i64 144, !7, i64 152}
!21 = !{!"rctf", !19, i64 0, !19, i64 4, !19, i64 8, !19, i64 12}
!22 = !{!"rcti", !18, i64 0, !18, i64 4, !18, i64 8, !18, i64 12}
!23 = !{!"bDopeSheet", !7, i64 0, !17, i64 8, !7, i64 24, !8, i64 32, !18, i64 96, !18, i64 100, !18, i64 104, !18, i64 108}
!24 = !{!6, !7, i64 56}
!25 = !{!26, !7, i64 120}
!26 = !{!"Object", !27, i64 0, !7, i64 120, !7, i64 128, !10, i64 136, !10, i64 138, !18, i64 140, !18, i64 144, !18, i64 148, !8, i64 152, !7, i64 216, !7, i64 224, !7, i64 232, !7, i64 240, !7, i64 248, !7, i64 256, !7, i64 264, !7, i64 272, !7, i64 280, !7, i64 288, !7, i64 296, !7, i64 304, !28, i64 312, !7, i64 360, !17, i64 368, !17, i64 384, !17, i64 400, !17, i64 416, !18, i64 432, !18, i64 436, !7, i64 440, !7, i64 448, !18, i64 456, !18, i64 460, !8, i64 464, !8, i64 476, !8, i64 488, !8, i64 500, !8, i64 512, !8, i64 524, !8, i64 536, !8, i64 548, !8, i64 560, !8, i64 576, !8, i64 592, !8, i64 604, !19, i64 616, !19, i64 620, !8, i64 624, !8, i64 688, !8, i64 752, !8, i64 816, !8, i64 880, !18, i64 944, !10, i64 948, !10, i64 950, !10, i64 952, !10, i64 954, !10, i64 956, !10, i64 958, !10, i64 960, !10, i64 962, !10, i64 964, !8, i64 966, !8, i64 967, !18, i64 968, !18, i64 972, !18, i64 976, !18, i64 980, !18, i64 984, !19, i64 988, !19, i64 992, !19, i64 996, !19, i64 1000, !19, i64 1004, !19, i64 1008, !19, i64 1012, !19, i64 1016, !19, i64 1020, !19, i64 1024, !19, i64 1028, !19, i64 1032, !10, i64 1036, !10, i64 1038, !10, i64 1040, !8, i64 1042, !8, i64 1043, !10, i64 1044, !8, i64 1046, !8, i64 1047, !19, i64 1048, !19, i64 1052, !17, i64 1056, !17, i64 1072, !17, i64 1088, !17, i64 1104, !19, i64 1120, !10, i64 1124, !10, i64 1126, !8, i64 1128, !18, i64 1144, !18, i64 1148, !7, i64 1152, !8, i64 1160, !8, i64 1161, !10, i64 1162, !8, i64 1164, !17, i64 1176, !17, i64 1192, !17, i64 1208, !17, i64 1224, !7, i64 1240, !7, i64 1248, !7, i64 1256, !8, i64 1264, !8, i64 1265, !10, i64 1266, !19, i64 1268, !7, i64 1272, !7, i64 1280, !7, i64 1288, !7, i64 1296, !29, i64 1304, !29, i64 1312, !18, i64 1320, !18, i64 1324, !17, i64 1328, !17, i64 1344, !7, i64 1360, !7, i64 1368, !7, i64 1376, !8, i64 1384, !7, i64 1392, !17, i64 1400, !7, i64 1416}
!27 = !{!"ID", !7, i64 0, !7, i64 8, !7, i64 16, !7, i64 24, !8, i64 32, !10, i64 98, !18, i64 100, !18, i64 104, !18, i64 108, !7, i64 112}
!28 = !{!"bAnimVizSettings", !18, i64 0, !18, i64 4, !18, i64 8, !18, i64 12, !10, i64 16, !10, i64 18, !10, i64 20, !10, i64 22, !10, i64 24, !10, i64 26, !10, i64 28, !10, i64 30, !18, i64 32, !18, i64 36, !18, i64 40, !18, i64 44}
!29 = !{!"long", !8, i64 0}
!30 = !{!31, !7, i64 0}
!31 = !{!"AnimData", !7, i64 0, !7, i64 8, !7, i64 16, !17, i64 24, !7, i64 40, !17, i64 48, !17, i64 64, !18, i64 80, !18, i64 84, !10, i64 88, !10, i64 90, !19, i64 92}
!32 = !{!16, !7, i64 216}
!33 = !{!6, !10, i64 8}
!34 = !{!35, !7, i64 120}
!35 = !{!"Key", !27, i64 0, !7, i64 120, !7, i64 128, !8, i64 136, !18, i64 168, !18, i64 172, !17, i64 176, !7, i64 192, !7, i64 200, !10, i64 208, !10, i64 210, !10, i64 212, !10, i64 214, !19, i64 216, !18, i64 220}
!36 = !{!6, !7, i64 48}
!37 = !{!16, !7, i64 224}
!38 = !{!6, !10, i64 10}
!39 = !{!40, !7, i64 216}
!40 = !{!"SpaceIpo", !7, i64 0, !7, i64 8, !17, i64 16, !18, i64 32, !19, i64 36, !8, i64 40, !20, i64 56, !7, i64 216, !17, i64 224, !10, i64 240, !10, i64 242, !18, i64 244, !19, i64 248, !18, i64 252}
!41 = !{!7, !7, i64 0}
!42 = !{!23, !7, i64 0}
!43 = !{!40, !18, i64 244}
!44 = !{!23, !18, i64 96}
!45 = !{!40, !10, i64 240}
!46 = !{!10, !10, i64 0}
!47 = !{!48, !7, i64 64}
!48 = !{!"SpaceNla", !7, i64 0, !7, i64 8, !17, i64 16, !18, i64 32, !19, i64 36, !8, i64 40, !10, i64 56, !10, i64 58, !18, i64 60, !7, i64 64, !20, i64 72}
!49 = !{!6, !7, i64 64}
!50 = !{!51, !7, i64 168}
!51 = !{!"Scene", !27, i64 0, !7, i64 120, !7, i64 128, !7, i64 136, !7, i64 144, !17, i64 152, !7, i64 168, !7, i64 176, !8, i64 184, !8, i64 196, !8, i64 208, !8, i64 220, !18, i64 232, !18, i64 236, !18, i64 240, !10, i64 244, !8, i64 246, !8, i64 247, !7, i64 248, !7, i64 256, !7, i64 264, !7, i64 272, !52, i64 280, !59, i64 4264, !17, i64 4296, !17, i64 4312, !7, i64 4328, !7, i64 4336, !7, i64 4344, !7, i64 4352, !7, i64 4360, !7, i64 4368, !10, i64 4376, !10, i64 4378, !18, i64 4380, !17, i64 4384, !60, i64 4400, !61, i64 4416, !64, i64 4600, !7, i64 4608, !65, i64 4616, !7, i64 4640, !29, i64 4648, !29, i64 4656, !54, i64 4664, !55, i64 4824, !66, i64 4888, !7, i64 4952}
!52 = !{!"RenderData", !53, i64 0, !7, i64 248, !7, i64 256, !56, i64 264, !57, i64 328, !18, i64 400, !18, i64 404, !18, i64 408, !19, i64 412, !18, i64 416, !18, i64 420, !18, i64 424, !18, i64 428, !10, i64 432, !10, i64 434, !19, i64 436, !19, i64 440, !19, i64 444, !19, i64 448, !19, i64 452, !10, i64 456, !10, i64 458, !10, i64 460, !10, i64 462, !10, i64 464, !10, i64 466, !18, i64 468, !10, i64 472, !10, i64 474, !10, i64 476, !10, i64 478, !10, i64 480, !10, i64 482, !18, i64 484, !18, i64 488, !10, i64 492, !10, i64 494, !18, i64 496, !18, i64 500, !10, i64 504, !10, i64 506, !10, i64 508, !10, i64 510, !10, i64 512, !8, i64 514, !8, i64 515, !18, i64 516, !18, i64 520, !18, i64 524, !10, i64 528, !10, i64 530, !10, i64 532, !10, i64 534, !10, i64 536, !10, i64 538, !10, i64 540, !10, i64 542, !21, i64 544, !21, i64 560, !22, i64 576, !17, i64 592, !10, i64 608, !10, i64 610, !19, i64 612, !19, i64 616, !19, i64 620, !19, i64 624, !18, i64 628, !19, i64 632, !19, i64 636, !19, i64 640, !19, i64 644, !10, i64 648, !10, i64 650, !10, i64 652, !10, i64 654, !10, i64 656, !10, i64 658, !19, i64 660, !19, i64 664, !10, i64 668, !10, i64 670, !19, i64 672, !19, i64 676, !8, i64 680, !18, i64 1704, !10, i64 1708, !10, i64 1710, !8, i64 1712, !8, i64 2480, !8, i64 2496, !8, i64 2512, !8, i64 2513, !8, i64 2514, !8, i64 2515, !18, i64 2520, !10, i64 2524, !10, i64 2526, !19, i64 2528, !19, i64 2532, !10, i64 2536, !10, i64 2538, !19, i64 2540, !10, i64 2544, !10, i64 2546, !18, i64 2548, !10, i64 2552, !10, i64 2554, !10, i64 2556, !10, i64 2558, !19, i64 2560, !19, i64 2564, !7, i64 2568, !18, i64 2576, !19, i64 2580, !8, i64 2584, !58, i64 2616, !18, i64 3976, !18, i64 3980}
!53 = !{!"ImageFormatData", !8, i64 0, !8, i64 1, !8, i64 2, !8, i64 3, !8, i64 4, !8, i64 5, !8, i64 6, !8, i64 7, !10, i64 8, !10, i64 10, !19, i64 12, !8, i64 16, !8, i64 17, !8, i64 18, !54, i64 24, !55, i64 184}
!54 = !{!"ColorManagedViewSettings", !18, i64 0, !18, i64 4, !8, i64 8, !8, i64 72, !19, i64 136, !19, i64 140, !7, i64 144, !7, i64 152}
!55 = !{!"ColorManagedDisplaySettings", !8, i64 0}
!56 = !{!"QuicktimeCodecSettings", !18, i64 0, !18, i64 4, !18, i64 8, !18, i64 12, !18, i64 16, !18, i64 20, !18, i64 24, !18, i64 28, !18, i64 32, !18, i64 36, !18, i64 40, !18, i64 44, !10, i64 48, !10, i64 50, !18, i64 52, !18, i64 56, !18, i64 60}
!57 = !{!"FFMpegCodecData", !18, i64 0, !18, i64 4, !18, i64 8, !18, i64 12, !18, i64 16, !18, i64 20, !18, i64 24, !18, i64 28, !19, i64 32, !18, i64 36, !18, i64 40, !18, i64 44, !18, i64 48, !18, i64 52, !18, i64 56, !18, i64 60, !7, i64 64}
!58 = !{!"BakeData", !53, i64 0, !8, i64 248, !10, i64 1272, !10, i64 1274, !10, i64 1276, !10, i64 1278, !19, i64 1280, !19, i64 1284, !8, i64 1288, !8, i64 1291, !8, i64 1292, !8, i64 1293, !8, i64 1296}
!59 = !{!"AudioData", !18, i64 0, !19, i64 4, !19, i64 8, !19, i64 12, !18, i64 16, !10, i64 20, !10, i64 22, !19, i64 24, !19, i64 28}
!60 = !{!"GameFraming", !8, i64 0, !8, i64 12, !8, i64 13, !8, i64 14, !8, i64 15}
!61 = !{!"GameData", !60, i64 0, !10, i64 16, !10, i64 18, !10, i64 20, !10, i64 22, !10, i64 24, !10, i64 26, !10, i64 28, !10, i64 30, !10, i64 32, !8, i64 34, !62, i64 40, !10, i64 64, !10, i64 66, !19, i64 68, !63, i64 72, !19, i64 128, !19, i64 132, !18, i64 136, !10, i64 140, !10, i64 142, !10, i64 144, !10, i64 146, !10, i64 148, !10, i64 150, !10, i64 152, !10, i64 154, !10, i64 156, !10, i64 158, !10, i64 160, !10, i64 162, !19, i64 164, !19, i64 168, !19, i64 172, !19, i64 176, !19, i64 180}
!62 = !{!"GameDome", !10, i64 0, !10, i64 2, !10, i64 4, !10, i64 6, !19, i64 8, !19, i64 12, !7, i64 16}
!63 = !{!"RecastData", !19, i64 0, !19, i64 4, !19, i64 8, !19, i64 12, !19, i64 16, !19, i64 20, !19, i64 24, !19, i64 28, !19, i64 32, !19, i64 36, !18, i64 40, !19, i64 44, !19, i64 48, !10, i64 52, !10, i64 54}
!64 = !{!"UnitSettings", !19, i64 0, !8, i64 4, !8, i64 5, !10, i64 6}
!65 = !{!"PhysicsSettings", !8, i64 0, !18, i64 12, !18, i64 16, !18, i64 20}
!66 = !{!"ColorManagedColorspaceSettings", !8, i64 0}
!67 = !{!68, !7, i64 32}
!68 = !{!"Base", !7, i64 0, !7, i64 8, !18, i64 16, !18, i64 20, !18, i64 24, !10, i64 28, !10, i64 30, !7, i64 32}
!69 = !{!6, !7, i64 16}
!70 = !{!6, !7, i64 32}
!71 = !{!72, !8, i64 72}
!72 = !{!"ScrArea", !7, i64 0, !7, i64 8, !7, i64 16, !7, i64 24, !7, i64 32, !7, i64 40, !7, i64 48, !22, i64 56, !8, i64 72, !8, i64 73, !10, i64 74, !10, i64 76, !10, i64 78, !10, i64 80, !10, i64 82, !10, i64 84, !8, i64 86, !8, i64 87, !7, i64 88, !17, i64 96, !17, i64 112, !17, i64 128, !17, i64 144}
!73 = !{!74, !10, i64 214}
!74 = !{!"ARegion", !7, i64 0, !7, i64 8, !20, i64 16, !22, i64 176, !22, i64 192, !10, i64 208, !10, i64 210, !10, i64 212, !10, i64 214, !10, i64 216, !10, i64 218, !19, i64 220, !10, i64 224, !10, i64 226, !10, i64 228, !10, i64 230, !10, i64 232, !10, i64 234, !10, i64 236, !10, i64 238, !7, i64 240, !17, i64 248, !17, i64 264, !17, i64 280, !17, i64 296, !17, i64 312, !17, i64 328, !17, i64 344, !7, i64 360, !7, i64 368, !7, i64 376}
!75 = !{!6, !10, i64 14}
!76 = !{!29, !29, i64 0}
!77 = !{i16 0, i16 2}
!78 = !{!79, !7, i64 16}
!79 = !{!"bAnimListElem", !7, i64 0, !7, i64 8, !7, i64 16, !18, i64 24, !18, i64 28, !18, i64 32, !10, i64 36, !10, i64 38, !7, i64 40, !7, i64 48, !7, i64 56}
!80 = !{!79, !18, i64 24}
!81 = !{!79, !7, i64 48}
!82 = !{!79, !7, i64 56}
!83 = !{!79, !7, i64 40}
!84 = !{!79, !10, i64 38}
!85 = !{!51, !10, i64 244}
!86 = !{!79, !18, i64 28}
!87 = !{!26, !10, i64 948}
!88 = !{!89, !18, i64 184}
!89 = !{!"bAction", !27, i64 0, !17, i64 120, !17, i64 136, !17, i64 152, !17, i64 168, !18, i64 184, !18, i64 188, !18, i64 192, !18, i64 196}
!90 = !{!31, !18, i64 80}
!91 = !{!92, !7, i64 120}
!92 = !{!"Material", !27, i64 0, !7, i64 120, !10, i64 128, !10, i64 130, !19, i64 132, !19, i64 136, !19, i64 140, !19, i64 144, !19, i64 148, !19, i64 152, !19, i64 156, !19, i64 160, !19, i64 164, !19, i64 168, !19, i64 172, !19, i64 176, !19, i64 180, !19, i64 184, !19, i64 188, !19, i64 192, !19, i64 196, !19, i64 200, !19, i64 204, !19, i64 208, !19, i64 212, !19, i64 216, !19, i64 220, !93, i64 224, !94, i64 312, !19, i64 328, !19, i64 332, !19, i64 336, !19, i64 340, !19, i64 344, !19, i64 348, !19, i64 352, !10, i64 356, !10, i64 358, !10, i64 360, !8, i64 362, !8, i64 363, !19, i64 364, !19, i64 368, !10, i64 372, !10, i64 374, !19, i64 376, !19, i64 380, !19, i64 384, !19, i64 388, !10, i64 392, !10, i64 394, !18, i64 396, !18, i64 400, !18, i64 404, !18, i64 408, !10, i64 412, !10, i64 414, !10, i64 416, !10, i64 418, !19, i64 420, !19, i64 424, !19, i64 428, !19, i64 432, !19, i64 436, !19, i64 440, !19, i64 444, !19, i64 448, !19, i64 452, !19, i64 456, !8, i64 460, !19, i64 524, !19, i64 528, !19, i64 532, !18, i64 536, !8, i64 540, !8, i64 541, !8, i64 542, !8, i64 543, !10, i64 544, !10, i64 546, !10, i64 548, !8, i64 550, !8, i64 551, !10, i64 552, !10, i64 554, !19, i64 556, !19, i64 560, !8, i64 564, !19, i64 580, !19, i64 584, !10, i64 588, !10, i64 590, !7, i64 592, !7, i64 600, !8, i64 608, !8, i64 609, !8, i64 610, !8, i64 611, !10, i64 612, !10, i64 614, !19, i64 616, !19, i64 620, !8, i64 624, !7, i64 768, !7, i64 776, !7, i64 784, !7, i64 792, !19, i64 800, !19, i64 804, !19, i64 808, !19, i64 812, !19, i64 816, !10, i64 820, !10, i64 822, !8, i64 824, !8, i64 836, !19, i64 848, !19, i64 852, !19, i64 856, !19, i64 860, !19, i64 864, !19, i64 868, !19, i64 872, !10, i64 876, !10, i64 878, !18, i64 880, !10, i64 884, !10, i64 886, !8, i64 888, !10, i64 904, !10, i64 906, !10, i64 908, !10, i64 910, !10, i64 912, !8, i64 914, !7, i64 920, !17, i64 928}
!93 = !{!"VolumeSettings", !19, i64 0, !19, i64 4, !19, i64 8, !19, i64 12, !8, i64 16, !8, i64 28, !8, i64 40, !19, i64 52, !19, i64 56, !19, i64 60, !10, i64 64, !10, i64 66, !10, i64 68, !10, i64 70, !19, i64 72, !19, i64 76, !19, i64 80, !19, i64 84}
!94 = !{!"GameSettings", !18, i64 0, !18, i64 4, !18, i64 8, !18, i64 12}
!95 = !{!92, !10, i64 130}
!96 = !{!97, !7, i64 120}
!97 = !{!"Lamp", !27, i64 0, !7, i64 120, !10, i64 128, !10, i64 130, !18, i64 132, !10, i64 136, !10, i64 138, !19, i64 140, !19, i64 144, !19, i64 148, !19, i64 152, !19, i64 156, !19, i64 160, !19, i64 164, !19, i64 168, !19, i64 172, !19, i64 176, !19, i64 180, !19, i64 184, !19, i64 188, !19, i64 192, !19, i64 196, !7, i64 200, !10, i64 208, !10, i64 210, !19, i64 212, !19, i64 216, !19, i64 220, !19, i64 224, !19, i64 228, !19, i64 232, !19, i64 236, !10, i64 240, !10, i64 242, !10, i64 244, !10, i64 246, !8, i64 248, !8, i64 249, !10, i64 250, !10, i64 252, !10, i64 254, !10, i64 256, !10, i64 258, !19, i64 260, !19, i64 264, !19, i64 268, !19, i64 272, !10, i64 276, !10, i64 278, !10, i64 280, !10, i64 282, !10, i64 284, !10, i64 286, !19, i64 288, !19, i64 292, !19, i64 296, !19, i64 300, !19, i64 304, !19, i64 308, !19, i64 312, !19, i64 316, !19, i64 320, !19, i64 324, !19, i64 328, !19, i64 332, !19, i64 336, !10, i64 340, !8, i64 342, !7, i64 344, !8, i64 352, !10, i64 496, !10, i64 498, !8, i64 500, !7, i64 504, !7, i64 512}
!98 = !{!97, !10, i64 130}
!99 = !{!100, !7, i64 120}
!100 = !{!"Camera", !27, i64 0, !7, i64 120, !8, i64 128, !8, i64 129, !10, i64 130, !19, i64 132, !19, i64 136, !19, i64 140, !19, i64 144, !19, i64 148, !19, i64 152, !19, i64 156, !19, i64 160, !19, i64 164, !19, i64 168, !19, i64 172, !7, i64 176, !7, i64 184, !8, i64 192, !8, i64 193}
!101 = !{!100, !10, i64 130}
!102 = !{!103, !7, i64 120}
!103 = !{!"Curve", !27, i64 0, !7, i64 120, !7, i64 128, !17, i64 136, !7, i64 152, !7, i64 160, !7, i64 168, !7, i64 176, !7, i64 184, !7, i64 192, !7, i64 200, !8, i64 208, !8, i64 220, !8, i64 232, !10, i64 244, !10, i64 246, !10, i64 248, !10, i64 250, !19, i64 252, !19, i64 256, !18, i64 260, !10, i64 264, !10, i64 266, !18, i64 268, !19, i64 272, !19, i64 276, !19, i64 280, !10, i64 284, !10, i64 286, !10, i64 288, !10, i64 290, !18, i64 292, !18, i64 296, !8, i64 300, !10, i64 304, !8, i64 306, !8, i64 307, !19, i64 308, !19, i64 312, !19, i64 316, !19, i64 320, !19, i64 324, !19, i64 328, !19, i64 332, !19, i64 336, !19, i64 340, !19, i64 344, !18, i64 348, !18, i64 352, !18, i64 356, !18, i64 360, !18, i64 364, !7, i64 368, !7, i64 376, !8, i64 384, !7, i64 448, !7, i64 456, !7, i64 464, !7, i64 472, !7, i64 480, !18, i64 488, !18, i64 492, !7, i64 496, !104, i64 504, !19, i64 512, !19, i64 516, !19, i64 520, !8, i64 524, !8, i64 525, !8, i64 526}
!104 = !{!"CharInfo", !10, i64 0, !10, i64 2, !8, i64 4, !8, i64 5, !10, i64 6}
!105 = !{!103, !18, i64 268}
!106 = !{!107, !7, i64 120}
!107 = !{!"bArmature", !27, i64 0, !7, i64 120, !17, i64 128, !17, i64 144, !7, i64 160, !7, i64 168, !7, i64 176, !7, i64 184, !18, i64 192, !18, i64 196, !18, i64 200, !18, i64 204, !10, i64 208, !10, i64 210, !18, i64 212, !18, i64 216, !18, i64 220, !10, i64 224, !10, i64 226, !10, i64 228, !10, i64 230, !18, i64 232, !18, i64 236, !18, i64 240, !18, i64 244, !18, i64 248, !18, i64 252}
!108 = !{!107, !18, i64 192}
!109 = !{!110, !7, i64 120}
!110 = !{!"Mesh", !27, i64 0, !7, i64 120, !7, i64 128, !7, i64 136, !7, i64 144, !7, i64 152, !7, i64 160, !7, i64 168, !7, i64 176, !7, i64 184, !7, i64 192, !7, i64 200, !7, i64 208, !7, i64 216, !7, i64 224, !7, i64 232, !7, i64 240, !7, i64 248, !7, i64 256, !7, i64 264, !7, i64 272, !111, i64 280, !111, i64 480, !111, i64 680, !111, i64 880, !111, i64 1080, !18, i64 1280, !18, i64 1284, !18, i64 1288, !18, i64 1292, !18, i64 1296, !18, i64 1300, !18, i64 1304, !8, i64 1308, !8, i64 1320, !8, i64 1332, !18, i64 1344, !10, i64 1348, !10, i64 1350, !19, i64 1352, !18, i64 1356, !8, i64 1360, !8, i64 1361, !8, i64 1362, !8, i64 1363, !8, i64 1364, !8, i64 1365, !10, i64 1366, !7, i64 1368}
!111 = !{!"CustomData", !7, i64 0, !8, i64 8, !18, i64 172, !18, i64 176, !18, i64 180, !7, i64 184, !7, i64 192}
!112 = !{!110, !10, i64 1350}
!113 = !{!114, !7, i64 120}
!114 = !{!"Lattice", !27, i64 0, !7, i64 120, !10, i64 128, !10, i64 130, !10, i64 132, !10, i64 134, !10, i64 136, !10, i64 138, !10, i64 140, !10, i64 142, !8, i64 144, !8, i64 145, !8, i64 146, !8, i64 147, !18, i64 148, !19, i64 152, !19, i64 156, !19, i64 160, !19, i64 164, !19, i64 168, !19, i64 172, !7, i64 176, !7, i64 184, !7, i64 192, !7, i64 200, !8, i64 208, !7, i64 272}
!115 = !{!114, !10, i64 134}
!116 = !{!117, !7, i64 120}
!117 = !{!"Speaker", !27, i64 0, !7, i64 120, !7, i64 128, !19, i64 136, !19, i64 140, !19, i64 144, !19, i64 148, !19, i64 152, !19, i64 156, !19, i64 160, !19, i64 164, !19, i64 168, !19, i64 172, !10, i64 176, !8, i64 178}
!118 = !{!117, !10, i64 176}
!119 = !{!35, !10, i64 214}
!120 = !{!121, !7, i64 120}
!121 = !{!"World", !27, i64 0, !7, i64 120, !10, i64 128, !10, i64 130, !10, i64 132, !10, i64 134, !19, i64 136, !19, i64 140, !19, i64 144, !19, i64 148, !19, i64 152, !19, i64 156, !19, i64 160, !19, i64 164, !19, i64 168, !19, i64 172, !19, i64 176, !19, i64 180, !19, i64 184, !19, i64 188, !19, i64 192, !19, i64 196, !10, i64 200, !10, i64 202, !10, i64 204, !10, i64 206, !10, i64 208, !10, i64 210, !10, i64 212, !10, i64 214, !19, i64 216, !19, i64 220, !19, i64 224, !19, i64 228, !19, i64 232, !19, i64 236, !19, i64 240, !19, i64 244, !19, i64 248, !19, i64 252, !19, i64 256, !19, i64 260, !10, i64 264, !10, i64 266, !10, i64 268, !10, i64 270, !19, i64 272, !19, i64 276, !19, i64 280, !19, i64 284, !10, i64 288, !10, i64 290, !10, i64 292, !10, i64 294, !19, i64 296, !19, i64 300, !19, i64 304, !19, i64 308, !19, i64 312, !19, i64 316, !19, i64 320, !10, i64 324, !10, i64 326, !10, i64 328, !10, i64 330, !10, i64 332, !10, i64 334, !7, i64 336, !7, i64 344, !7, i64 352, !8, i64 360, !10, i64 504, !10, i64 506, !8, i64 508, !7, i64 512, !7, i64 520}
!122 = !{!121, !10, i64 334}
!123 = !{!124, !7, i64 120}
!124 = !{!"bNodeTree", !27, i64 0, !7, i64 120, !7, i64 128, !8, i64 136, !7, i64 200, !7, i64 208, !8, i64 216, !17, i64 224, !17, i64 240, !18, i64 256, !18, i64 260, !18, i64 264, !18, i64 268, !18, i64 272, !10, i64 276, !10, i64 278, !18, i64 280, !18, i64 284, !10, i64 288, !10, i64 290, !18, i64 292, !21, i64 296, !17, i64 312, !17, i64 328, !7, i64 344, !125, i64 352, !18, i64 356, !7, i64 360, !7, i64 368, !7, i64 376, !7, i64 384, !7, i64 392, !7, i64 400, !7, i64 408, !7, i64 416, !7, i64 424}
!125 = !{!"bNodeInstanceKey", !18, i64 0}
!126 = !{!124, !18, i64 268}
!127 = !{!128, !7, i64 120}
!128 = !{!"FreestyleLineStyle", !27, i64 0, !7, i64 120, !19, i64 128, !19, i64 132, !19, i64 136, !19, i64 140, !19, i64 144, !18, i64 148, !19, i64 152, !18, i64 156, !18, i64 160, !18, i64 164, !18, i64 168, !19, i64 172, !19, i64 176, !19, i64 180, !19, i64 184, !19, i64 188, !18, i64 192, !10, i64 196, !10, i64 198, !10, i64 200, !10, i64 202, !10, i64 204, !10, i64 206, !18, i64 208, !18, i64 212, !19, i64 216, !10, i64 220, !10, i64 222, !10, i64 224, !8, i64 226, !10, i64 232, !10, i64 234, !10, i64 236, !10, i64 238, !10, i64 240, !10, i64 242, !18, i64 244, !8, i64 248, !7, i64 392, !17, i64 400, !17, i64 416, !17, i64 432, !17, i64 448}
!129 = !{!128, !18, i64 156}
!130 = !{!131, !7, i64 120}
!131 = !{!"ParticleSettings", !27, i64 0, !7, i64 120, !7, i64 128, !7, i64 136, !7, i64 144, !18, i64 152, !18, i64 156, !10, i64 160, !10, i64 162, !10, i64 164, !10, i64 166, !10, i64 168, !10, i64 170, !10, i64 172, !10, i64 174, !18, i64 176, !18, i64 180, !10, i64 184, !10, i64 186, !10, i64 188, !10, i64 190, !10, i64 192, !10, i64 194, !10, i64 196, !10, i64 198, !10, i64 200, !10, i64 202, !10, i64 204, !10, i64 206, !10, i64 208, !10, i64 210, !10, i64 212, !10, i64 214, !10, i64 216, !10, i64 218, !10, i64 220, !10, i64 222, !10, i64 224, !10, i64 226, !10, i64 228, !10, i64 230, !19, i64 232, !19, i64 236, !8, i64 240, !8, i64 248, !19, i64 256, !19, i64 260, !19, i64 264, !10, i64 268, !10, i64 270, !19, i64 272, !19, i64 276, !19, i64 280, !19, i64 284, !19, i64 288, !19, i64 292, !19, i64 296, !19, i64 300, !19, i64 304, !19, i64 308, !19, i64 312, !19, i64 316, !8, i64 320, !18, i64 324, !18, i64 328, !18, i64 332, !18, i64 336, !10, i64 340, !8, i64 342, !19, i64 348, !19, i64 352, !19, i64 356, !19, i64 360, !19, i64 364, !19, i64 368, !19, i64 372, !8, i64 376, !19, i64 388, !19, i64 392, !19, i64 396, !19, i64 400, !19, i64 404, !19, i64 408, !19, i64 412, !8, i64 416, !19, i64 428, !19, i64 432, !19, i64 436, !19, i64 440, !18, i64 444, !18, i64 448, !19, i64 452, !19, i64 456, !19, i64 460, !19, i64 464, !19, i64 468, !19, i64 472, !19, i64 476, !19, i64 480, !19, i64 484, !19, i64 488, !19, i64 492, !19, i64 496, !19, i64 500, !19, i64 504, !19, i64 508, !19, i64 512, !19, i64 516, !19, i64 520, !19, i64 524, !19, i64 528, !19, i64 532, !19, i64 536, !19, i64 540, !19, i64 544, !19, i64 548, !8, i64 552, !19, i64 560, !19, i64 564, !18, i64 568, !18, i64 572, !8, i64 576, !7, i64 720, !17, i64 728, !7, i64 744, !7, i64 752, !7, i64 760, !7, i64 768, !7, i64 776, !7, i64 784, !10, i64 792, !8, i64 794}
!132 = !{!131, !18, i64 152}
!133 = !{!134, !7, i64 120}
!134 = !{!"Tex", !27, i64 0, !7, i64 120, !19, i64 128, !19, i64 132, !19, i64 136, !19, i64 140, !19, i64 144, !19, i64 148, !19, i64 152, !19, i64 156, !19, i64 160, !19, i64 164, !19, i64 168, !19, i64 172, !19, i64 176, !19, i64 180, !19, i64 184, !19, i64 188, !19, i64 192, !19, i64 196, !19, i64 200, !19, i64 204, !19, i64 208, !19, i64 212, !10, i64 216, !10, i64 218, !10, i64 220, !10, i64 222, !10, i64 224, !10, i64 226, !10, i64 228, !10, i64 230, !10, i64 232, !10, i64 234, !19, i64 236, !19, i64 240, !19, i64 244, !19, i64 248, !18, i64 252, !18, i64 256, !10, i64 260, !10, i64 262, !10, i64 264, !10, i64 266, !18, i64 268, !18, i64 272, !18, i64 276, !18, i64 280, !19, i64 284, !19, i64 288, !19, i64 292, !135, i64 296, !7, i64 336, !7, i64 344, !7, i64 352, !7, i64 360, !7, i64 368, !7, i64 376, !7, i64 384, !7, i64 392, !7, i64 400, !8, i64 408, !8, i64 409}
!135 = !{!"ImageUser", !7, i64 0, !18, i64 8, !18, i64 12, !18, i64 16, !18, i64 20, !8, i64 24, !8, i64 25, !8, i64 26, !8, i64 27, !10, i64 28, !10, i64 30, !10, i64 32, !10, i64 34, !18, i64 36}
!136 = !{!134, !10, i64 230}
!137 = !{!138, !18, i64 32}
!138 = !{!"bActionGroup", !7, i64 0, !7, i64 8, !17, i64 16, !18, i64 32, !18, i64 36, !8, i64 40, !139, i64 104}
!139 = !{!"ThemeWireColor", !8, i64 0, !8, i64 4, !8, i64 8, !10, i64 12, !10, i64 14}
!140 = !{!141, !10, i64 72}
!141 = !{!"FCurve", !7, i64 0, !7, i64 8, !7, i64 16, !7, i64 24, !17, i64 32, !7, i64 48, !7, i64 56, !18, i64 64, !19, i64 68, !10, i64 72, !10, i64 74, !18, i64 76, !7, i64 80, !18, i64 88, !8, i64 92, !19, i64 104, !19, i64 108}
!142 = !{!143, !10, i64 30}
!143 = !{!"KeyBlock", !7, i64 0, !7, i64 8, !19, i64 16, !19, i64 20, !10, i64 24, !10, i64 26, !10, i64 28, !10, i64 30, !18, i64 32, !18, i64 36, !7, i64 40, !8, i64 48, !8, i64 112, !19, i64 176, !19, i64 180}
!144 = !{!79, !18, i64 32}
!145 = !{!146, !18, i64 40}
!146 = !{!"bGPDlayer", !7, i64 0, !7, i64 8, !17, i64 16, !7, i64 32, !18, i64 40, !10, i64 44, !10, i64 46, !8, i64 48, !8, i64 64}
!147 = !{!148, !8, i64 142}
!148 = !{!"MaskLayer", !7, i64 0, !7, i64 8, !8, i64 16, !17, i64 80, !17, i64 96, !7, i64 112, !7, i64 120, !19, i64 128, !8, i64 132, !8, i64 133, !8, i64 134, !8, i64 135, !8, i64 142, !8, i64 143}
!149 = !{!150, !18, i64 32}
!150 = !{!"NlaTrack", !7, i64 0, !7, i64 8, !17, i64 16, !18, i64 32, !18, i64 36, !8, i64 40}
!151 = !{!23, !18, i64 100}
!152 = !{!89, !7, i64 24}
!153 = !{!138, !7, i64 24}
!154 = distinct !{!154, !155}
!155 = !{!"llvm.loop.mustprogress"}
!156 = !{!35, !7, i64 176}
!157 = distinct !{!157, !155}
!158 = !{!159, !7, i64 0}
!159 = !{!"Global", !7, i64 0, !8, i64 8, !8, i64 1032, !8, i64 2056, !8, i64 2057, !8, i64 2058, !17, i64 2064, !8, i64 2080, !8, i64 2081, !8, i64 2082, !10, i64 2084, !10, i64 2086, !10, i64 2088, !8, i64 2090, !10, i64 2092, !18, i64 2096, !18, i64 2100, !8, i64 2104, !18, i64 2108, !18, i64 2112, !8, i64 2116}
!160 = !{!27, !18, i64 100}
!161 = !{!27, !10, i64 98}
!162 = !{!163, !18, i64 136}
!163 = !{!"bGPdata", !27, i64 0, !17, i64 120, !18, i64 136, !10, i64 140, !10, i64 142, !7, i64 144}
!164 = distinct !{!164, !155}
!165 = !{!166, !18, i64 160}
!166 = !{!"Mask", !27, i64 0, !7, i64 120, !17, i64 128, !18, i64 144, !18, i64 148, !18, i64 152, !18, i64 156, !18, i64 160, !18, i64 164}
!167 = distinct !{!167, !155}
!168 = !{!159, !18, i64 2100}
!169 = !{!51, !18, i64 232}
!170 = !{!26, !18, i64 944}
!171 = !{!68, !18, i64 16}
!172 = !{!26, !8, i64 1160}
!173 = !{!68, !18, i64 24}
!174 = !{!23, !7, i64 24}
!175 = distinct !{!175, !155}
!176 = !{!17, !7, i64 0}
!177 = !{!79, !7, i64 0}
!178 = distinct !{!178, !155}
!179 = distinct !{!179, !155}
!180 = !{!35, !10, i64 208}
!181 = !{!138, !7, i64 16}
!182 = !{!141, !7, i64 0}
!183 = distinct !{!183, !155}
!184 = !{!141, !7, i64 16}
!185 = distinct !{!185, !155}
!186 = !{!141, !7, i64 80}
!187 = !{!26, !7, i64 288}
!188 = !{!189, !7, i64 120}
!189 = !{!"bPoseChannel", !7, i64 0, !7, i64 8, !7, i64 16, !17, i64 24, !8, i64 40, !10, i64 104, !10, i64 106, !10, i64 108, !10, i64 110, !8, i64 112, !8, i64 113, !8, i64 114, !7, i64 120, !7, i64 128, !7, i64 136, !17, i64 144, !17, i64 160, !7, i64 176, !7, i64 184, !7, i64 192, !8, i64 200, !8, i64 212, !8, i64 224, !8, i64 236, !8, i64 252, !19, i64 264, !10, i64 268, !10, i64 270, !8, i64 272, !8, i64 336, !8, i64 400, !8, i64 464, !8, i64 476, !8, i64 488, !8, i64 500, !8, i64 512, !19, i64 524, !19, i64 528, !19, i64 532, !7, i64 536}
!190 = !{!26, !7, i64 296}
!191 = !{!107, !18, i64 216}
!192 = !{!193, !18, i64 320}
!193 = !{!"Bone", !7, i64 0, !7, i64 8, !7, i64 16, !7, i64 24, !17, i64 32, !8, i64 48, !19, i64 112, !8, i64 116, !8, i64 128, !8, i64 140, !18, i64 176, !8, i64 180, !8, i64 192, !8, i64 204, !19, i64 268, !19, i64 272, !19, i64 276, !19, i64 280, !19, i64 284, !19, i64 288, !19, i64 292, !19, i64 296, !19, i64 300, !19, i64 304, !8, i64 308, !18, i64 320, !10, i64 324, !8, i64 326}
!194 = !{!193, !18, i64 176}
!195 = !{!196, !7, i64 0}
!196 = !{!"Editing", !7, i64 0, !17, i64 8, !17, i64 24, !7, i64 40, !8, i64 48, !8, i64 1072, !18, i64 2096, !18, i64 2100, !18, i64 2104, !18, i64 2108, !21, i64 2112}
!197 = !{!198, !18, i64 96}
!198 = !{!"Sequence", !7, i64 0, !7, i64 8, !7, i64 16, !7, i64 24, !8, i64 32, !18, i64 96, !18, i64 100, !18, i64 104, !18, i64 108, !18, i64 112, !18, i64 116, !18, i64 120, !18, i64 124, !18, i64 128, !18, i64 132, !18, i64 136, !18, i64 140, !19, i64 144, !19, i64 148, !19, i64 152, !10, i64 156, !10, i64 158, !18, i64 160, !18, i64 164, !7, i64 168, !7, i64 176, !7, i64 184, !7, i64 192, !7, i64 200, !7, i64 208, !7, i64 216, !19, i64 224, !19, i64 228, !7, i64 232, !7, i64 240, !7, i64 248, !17, i64 256, !7, i64 272, !7, i64 280, !19, i64 288, !19, i64 292, !19, i64 296, !19, i64 300, !7, i64 304, !18, i64 312, !18, i64 316, !18, i64 320, !19, i64 324, !18, i64 328, !8, i64 332, !8, i64 333, !17, i64 336}
!199 = !{!200, !18, i64 168}
!200 = !{!"bNode", !7, i64 0, !7, i64 8, !7, i64 16, !7, i64 24, !7, i64 32, !8, i64 40, !8, i64 104, !18, i64 168, !10, i64 172, !10, i64 174, !10, i64 176, !10, i64 178, !10, i64 180, !10, i64 182, !10, i64 184, !10, i64 186, !8, i64 188, !17, i64 200, !17, i64 216, !7, i64 232, !7, i64 240, !7, i64 248, !7, i64 256, !17, i64 264, !19, i64 280, !19, i64 284, !19, i64 288, !19, i64 292, !19, i64 296, !19, i64 300, !19, i64 304, !18, i64 308, !8, i64 312, !10, i64 376, !10, i64 378, !19, i64 380, !19, i64 384, !10, i64 388, !10, i64 390, !7, i64 392, !21, i64 400, !21, i64 416, !21, i64 432, !10, i64 448, !10, i64 450, !18, i64 452, !7, i64 456}
!201 = !{!202, !7, i64 48}
!202 = !{!"bAnimChannelType", !7, i64 0, !18, i64 8, !7, i64 16, !7, i64 24, !7, i64 32, !7, i64 40, !7, i64 48, !7, i64 56, !7, i64 64, !7, i64 72, !7, i64 80, !7, i64 88}
!203 = !{!141, !7, i64 24}
!204 = !{!205, !18, i64 292}
!205 = !{!"ChannelDriver", !17, i64 0, !8, i64 16, !7, i64 272, !19, i64 280, !19, i64 284, !18, i64 288, !18, i64 292}
!206 = distinct !{!206, !155}
!207 = !{!208, !10, i64 528}
!208 = !{!"DriverVar", !7, i64 0, !7, i64 8, !8, i64 16, !8, i64 80, !10, i64 528, !10, i64 530, !19, i64 532}
!209 = !{!210, !10, i64 50}
!210 = !{!"DriverTarget", !7, i64 0, !7, i64 8, !8, i64 16, !10, i64 48, !10, i64 50, !18, i64 52}
!211 = distinct !{!211, !155}
!212 = distinct !{!212, !155}
!213 = distinct !{!213, !155}
!214 = !{!51, !7, i64 248}
!215 = !{!51, !7, i64 136}
!216 = !{!26, !10, i64 960}
!217 = !{!26, !7, i64 416}
!218 = !{!26, !18, i64 456}
!219 = !{!26, !7, i64 1224}
!220 = !{!51, !7, i64 120}
!221 = !{!31, !7, i64 48}
!222 = !{!121, !7, i64 520}
!223 = !{!200, !10, i64 172}
!224 = !{!200, !7, i64 240}
!225 = distinct !{!225, !155}
!226 = distinct !{!226, !155}
!227 = !{!228, !7, i64 120}
!228 = !{!"FreestyleLineSet", !7, i64 0, !7, i64 8, !8, i64 16, !18, i64 80, !18, i64 84, !10, i64 88, !10, i64 90, !18, i64 92, !18, i64 96, !18, i64 100, !18, i64 104, !18, i64 108, !7, i64 112, !7, i64 120}
!229 = !{!128, !10, i64 98}
!230 = distinct !{!230, !155}
!231 = !{!232, !18, i64 108}
!232 = !{!"SceneRenderLayer", !7, i64 0, !7, i64 8, !8, i64 16, !7, i64 80, !7, i64 88, !18, i64 96, !18, i64 100, !18, i64 104, !18, i64 108, !18, i64 112, !18, i64 116, !18, i64 120, !19, i64 124, !233, i64 128}
!233 = !{!"FreestyleConfig", !17, i64 0, !18, i64 16, !18, i64 20, !18, i64 24, !19, i64 28, !19, i64 32, !19, i64 36, !17, i64 40}
!234 = distinct !{!234, !155}
!235 = distinct !{!235, !155}
!236 = !{!237, !7, i64 120}
!237 = !{!"IdAdtTemplate", !27, i64 0, !7, i64 120}
!238 = !{!31, !7, i64 24}
!239 = distinct !{!239, !155}
!240 = !{!241, !7, i64 16}
!241 = !{!"MTex", !10, i64 0, !10, i64 2, !10, i64 4, !10, i64 6, !7, i64 8, !7, i64 16, !8, i64 24, !8, i64 88, !8, i64 89, !8, i64 90, !8, i64 91, !8, i64 92, !8, i64 104, !19, i64 116, !10, i64 120, !10, i64 122, !10, i64 124, !10, i64 126, !10, i64 128, !10, i64 130, !8, i64 132, !8, i64 133, !19, i64 140, !19, i64 144, !19, i64 148, !19, i64 152, !19, i64 156, !19, i64 160, !19, i64 164, !19, i64 168, !19, i64 172, !19, i64 176, !19, i64 180, !19, i64 184, !19, i64 188, !19, i64 192, !19, i64 196, !19, i64 200, !19, i64 204, !19, i64 208, !19, i64 212, !19, i64 216, !19, i64 220, !19, i64 224, !19, i64 228, !19, i64 232, !19, i64 236, !19, i64 240, !19, i64 244, !19, i64 248, !19, i64 252, !19, i64 256, !19, i64 260, !19, i64 264, !19, i64 268, !19, i64 272, !19, i64 276, !19, i64 280, !19, i64 284, !19, i64 288, !19, i64 292, !19, i64 296, !19, i64 300, !19, i64 304, !19, i64 308}
!242 = distinct !{!242, !155}
!243 = !{!134, !7, i64 336}
!244 = !{!245, !7, i64 0}
!245 = !{!"tAnimFilterModifiersContext", !7, i64 0, !7, i64 8, !17, i64 16, !29, i64 32, !18, i64 40}
!246 = !{!245, !7, i64 8}
!247 = !{!245, !18, i64 40}
!248 = !{!245, !29, i64 32}
!249 = distinct !{!249, !155}
!250 = distinct !{!250, !155}
!251 = !{!26, !10, i64 136}
!252 = !{!253, !8, i64 185}
!253 = !{!"MetaBall", !27, i64 0, !7, i64 120, !17, i64 128, !17, i64 144, !7, i64 160, !7, i64 168, !7, i64 176, !8, i64 184, !8, i64 185, !10, i64 186, !10, i64 188, !10, i64 190, !8, i64 192, !8, i64 204, !8, i64 216, !19, i64 228, !19, i64 232, !19, i64 236, !7, i64 240}
!254 = !{!97, !7, i64 512}
!255 = !{!256, !7, i64 16}
!256 = !{!"ParticleSystem", !7, i64 0, !7, i64 8, !7, i64 16, !7, i64 24, !7, i64 32, !7, i64 40, !7, i64 48, !7, i64 56, !7, i64 64, !17, i64 72, !17, i64 88, !7, i64 104, !7, i64 112, !7, i64 120, !7, i64 128, !7, i64 136, !7, i64 144, !17, i64 152, !8, i64 168, !8, i64 232, !19, i64 296, !19, i64 300, !19, i64 304, !18, i64 308, !18, i64 312, !18, i64 316, !18, i64 320, !18, i64 324, !18, i64 328, !18, i64 332, !18, i64 336, !10, i64 340, !10, i64 342, !10, i64 344, !10, i64 346, !8, i64 348, !8, i64 540, !10, i64 564, !10, i64 566, !7, i64 568, !7, i64 576, !17, i64 584, !7, i64 600, !7, i64 608, !18, i64 616, !18, i64 620, !7, i64 624, !7, i64 632, !7, i64 640, !19, i64 648, !19, i64 652}
!257 = distinct !{!257, !155}
!258 = !{!92, !7, i64 768}
